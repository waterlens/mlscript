(*
touch ./Banner_nofib.mli && ocamlc ./Banner_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Banner_nofib.ml -o "./Banner_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Banner_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec alphas__d0 _lh_alphas_arg1_2 =
  (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec alphas__d1 _lh_alphas_arg1_1 =
  (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec atIndex__d0 n_9 ls_2_2 =
  (if (n_9 < 0) then
    (failwith "error")
  else
    (match ls_2_2 with
      | `LH_C(h_2_3, t_2_5) -> 
        (if (n_9 = 0) then
          h_2_3
        else
          ((atIndex__d0 (n_9 - 1)) t_2_5))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1 n_1_2 ls_2_8 =
  (if (n_1_2 < 0) then
    (failwith "error")
  else
    (match ls_2_8 with
      | `LH_C(h_3_1, t_3_3) -> 
        (if (n_1_2 = 0) then
          h_3_1
        else
          ((atIndex__d1 (n_1_2 - 1)) t_3_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2 n_1_1 ls_2_7 =
  (if (n_1_1 < 0) then
    (failwith "error")
  else
    (match ls_2_7 with
      | `LH_C(h_3_0, t_3_2) -> 
        (if (n_1_1 = 0) then
          h_3_0
        else
          ((atIndex__d2 (n_1_1 - 1)) t_3_2))
      | `LH_N -> 
        (failwith "error")));;
let rec blank__d0 _lh_blank_arg1_1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec digits__d0 _lh_digits_arg1_1 =
  (`LH_C((`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_N)))))))))))))))))))));;
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
let rec foldr__d0 f_1_5 i_3 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_9, t_3_1) -> 
      ((f_1_5 h_2_9) (((foldr__d0 f_1_5) i_3) t_3_1))
    | `LH_N -> 
      i_3);;
let rec head__d0 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      h_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec isDigit__d0 _lh_isDigit_arg1_1 =
  (let rec n_1_0 = (int_of_char _lh_isDigit_arg1_1) in
    ((n_1_0 >= 48) && (n_1_0 <= 57)));;
let rec isLower__d0 _lh_isLower_arg1_1 =
  (let rec n_1_3 = (int_of_char _lh_isLower_arg1_1) in
    ((n_1_3 >= 97) && (n_1_3 <= 122)));;
let rec isSpace__d0 _lh_isSpace_arg1_1 =
  (let rec n_8 = (int_of_char _lh_isSpace_arg1_1) in
    (n_8 = 32));;
let rec isUpper__d0 _lh_isUpper_arg1_1 =
  (let rec n_1_4 = (int_of_char _lh_isUpper_arg1_1) in
    ((n_1_4 >= 65) && (n_1_4 <= 90)));;
let rec map__d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_3 h_2_4), ((map__d1 f_1_3) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_4 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_4 h_2_5), ((map__d2 f_1_4) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend__d0 t_3_7) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend__d1 t_3_5) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d2 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend__d2 t_3_8) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d3 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d3 t_2_9) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d4 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d4 t_3_0) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d5 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d5 t_3_4) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec punct__d0 _lh_punct_arg1_1 =
  (`LH_C((`LH_P2('.', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('?', (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('!', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('-', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('+', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2(':', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2(';', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_N)))))))))))))));;
let rec replicate__d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 =
  (if (_lh_replicate_arg1_1 = 0) then
    (`LH_N)
  else
    (`LH_C(_lh_replicate_arg2_1, ((replicate__d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1))));;
let rec reverse_helper__d0 ls_2_0 a_5 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      ((reverse_helper__d0 t_2_3) (`LH_C(h_2_1, a_5)))
    | `LH_N -> 
      a_5);;
let rec slant__d0 _lh_slant_arg1_1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec slant__d1 _lh_slant_arg1_2 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec combine__d0 _lh_combine_arg1_1 _lh_combine_arg2_1 _lh_combine_arg3_1 _lh_combine_arg4_1 =
  (`LH_C((`LH_C(_lh_combine_arg1_1, _lh_combine_arg2_1)), (transpose__d0 (`LH_C(_lh_combine_arg3_1, _lh_combine_arg4_1)))))
and concat__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_3_4, t_3_6) -> 
      ((mappend__d0 h_3_4) (concat__d0 t_3_6))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((mappend__d4 h_2_6) (concat__d1 t_2_8))
    | `LH_N -> 
      (`LH_N))
and join__d0 _lh_join_arg1_1 =
  ((foldr1__d0 (fun xs_1_2 ys_1_2 -> 
    ((mappend__d1 ((mappend__d2 xs_1_2) (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) ys_1_2))) _lh_join_arg1_1)
and picChar__d0 _lh_picChar_arg1_1 =
  (if (isUpper__d0 _lh_picChar_arg1_1) then
    ((atIndex__d0 ((int_of_char _lh_picChar_arg1_1) - (int_of_char 'A'))) (alphas__d0 0))
  else
    (if (isLower__d0 _lh_picChar_arg1_1) then
      ((atIndex__d1 ((int_of_char _lh_picChar_arg1_1) - (int_of_char 'a'))) (alphas__d1 0))
    else
      (if (isSpace__d0 _lh_picChar_arg1_1) then
        (blank__d0 0)
      else
        (if (isDigit__d0 _lh_picChar_arg1_1) then
          ((atIndex__d2 ((int_of_char _lh_picChar_arg1_1) - (int_of_char '0'))) (digits__d0 0))
        else
          (if (_lh_picChar_arg1_1 = '/') then
            (slant__d0 0)
          else
            (if (_lh_picChar_arg1_1 = '=') then
              (reverse__d0 (slant__d1 0))
            else
              (head__d0 ((mappend__d3 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                (match _lh_listcomp_fun_para_3 with
                  | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                    (match _lh_listcomp_fun_ls_h_3 with
                      | `LH_P2(_lh_picChar_LH_P2_0_1, _lh_picChar_LH_P2_1_1) -> 
                        (if (_lh_picChar_LH_P2_0_1 = _lh_picChar_arg1_1) then
                          (`LH_C(_lh_picChar_LH_P2_1_1, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                        else
                          (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                      | _ -> 
                        (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_3 (punct__d0 0)))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))))
and reverse__d0 ls_2_4 =
  ((reverse_helper__d0 ls_2_4) (`LH_N))
and say__d0 _lh_say_arg1_1 =
  ((fun _lh_funcomp_x_4 -> 
    ((fun _lh_funcomp_x_5 -> 
      ((fun _lh_funcomp_x_6 -> 
        ((fun _lh_funcomp_x_7 -> 
          ((fun x_3 -> 
            (`LH_C('n', x_3))) (unlines__d0 _lh_funcomp_x_7))) ((map__d0 join__d0) _lh_funcomp_x_6))) (transpose__d0 _lh_funcomp_x_5))) ((map__d1 picChar__d0) _lh_funcomp_x_4))) _lh_say_arg1_1)
and testBanner_nofib__d0 _lh_testBanner_nofib_arg1_1 =
  (say__d0 (concat__d0 ((replicate__d0 _lh_testBanner_nofib_arg1_1) (`LH_C('I', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and transpose__d0 _lh_transpose_arg1_1 =
  (match _lh_transpose_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_3, _lh_transpose_LH_C_1_3) -> 
      (match _lh_transpose_LH_C_0_3 with
        | `LH_N -> 
          (transpose__d0 _lh_transpose_LH_C_1_3)
        | `LH_C(_lh_transpose_LH_C_0_4, _lh_transpose_LH_C_1_4) -> 
          (let rec _lh_matchIdent_3 = (unzip__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
            (match _lh_listcomp_fun_para_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                (match _lh_listcomp_fun_ls_h_2 with
                  | `LH_C(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                  | _ -> 
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2 _lh_transpose_LH_C_1_3))) in
            (match _lh_matchIdent_3 with
              | `LH_P2(_lh_transpose_LH_P2_0_1, _lh_transpose_LH_P2_1_1) -> 
                ((((combine__d0 _lh_transpose_LH_C_0_4) _lh_transpose_LH_P2_0_1) _lh_transpose_LH_C_1_4) _lh_transpose_LH_P2_1_1)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d1 ((map__d2 (fun l_1 -> 
    ((mappend__d5 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1))
and unzip__d0 _lh_unzip_arg1_1 =
  (((foldr__d0 (fun ab_1 asbs_1 -> 
    (let rec _lh_matchIdent_4 = ab_1 in
      (match _lh_matchIdent_4 with
        | `LH_P2(_lh_unzip_LH_P2_0_2, _lh_unzip_LH_P2_1_2) -> 
          (let rec _lh_matchIdent_5 = asbs_1 in
            (match _lh_matchIdent_5 with
              | `LH_P2(_lh_unzip_LH_P2_0_3, _lh_unzip_LH_P2_1_3) -> 
                (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_2, _lh_unzip_LH_P2_0_3)), (`LH_C(_lh_unzip_LH_P2_1_2, _lh_unzip_LH_P2_1_3))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_1);;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec atIndex__d0 n_7_1 ls_9 =
  (if (n_7_1 < 0) then
    (failwith "error")
  else
    (ls_9 n_7_1));;
let rec atIndex__d1 n_7_0 ls_8 =
  (if (n_7_0 < 0) then
    (failwith "error")
  else
    (ls_8 n_7_0));;
let rec atIndex__d2 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (ls_0 n_0));;
let rec blank__d0 _lh_blank_arg1_0 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
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
let rec foldr__d0 f_6 i_2 ls_4 =
  ((ls_4 f_6) i_2);;
let rec head__d0 ls_7 =
  (match ls_7 with
    | `LH_C(h_8_0, t_8_0) -> 
      h_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec isDigit__d0 _lh_isDigit_arg1_0 =
  (let rec n_2_8 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_2_8 >= 48) && (n_2_8 <= 57)));;
let rec isLower__d0 _lh_isLower_arg1_0 =
  (let rec n_6_8 = (int_of_char _lh_isLower_arg1_0) in
    ((n_6_8 >= 97) && (n_6_8 <= 122)));;
let rec isSpace__d0 _lh_isSpace_arg1_0 =
  (let rec n_6_9 = (int_of_char _lh_isSpace_arg1_0) in
    (n_6_9 = 32));;
let rec isUpper__d0 _lh_isUpper_arg1_0 =
  (let rec n_2_9 = (int_of_char _lh_isUpper_arg1_0) in
    ((n_2_9 >= 65) && (n_2_9 <= 90)));;
let rec map__d0 f_7 ls_5 =
  (ls_5 f_7);;
let rec map__d1 f_5 ls_3 =
  (ls_3 f_5);;
let rec map__d2 f_0 ls_1 =
  (ls_1 f_0);;
let rec mappend__d0 xs_4 ys_1_9 =
  (xs_4 ys_1_9);;
let rec mappend__d1 xs_5 ys_2_0 =
  (xs_5 ys_2_0);;
let rec mappend__d3 xs_6 ys_4_9 =
  (xs_6 ys_4_9);;
let rec mappend__d4 xs_2 ys_1_6 =
  (xs_2 ys_1_6);;
let rec reverse_helper__d0 ls_2 a_0 =
  (ls_2 a_0);;
let rec slant__d0 _lh_slant_arg1_0 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec alphas__d0 _lh_alphas_arg1_0 =
  (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (fun n_1 -> 
    (failwith "error")) in
    (let rec h_9 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2 -> 
        (if (n_2 = 0) then
          h_9
        else
          ((atIndex__d0 (n_2 - 1)) t_3_4))))) in
    (let rec h_1_0 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3 -> 
        (if (n_3 = 0) then
          h_1_0
        else
          ((atIndex__d0 (n_3 - 1)) t_3_3))))) in
    (let rec h_1_1 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4 -> 
        (if (n_4 = 0) then
          h_1_1
        else
          ((atIndex__d0 (n_4 - 1)) t_3_2))))) in
    (let rec h_1_2 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5 -> 
        (if (n_5 = 0) then
          h_1_2
        else
          ((atIndex__d0 (n_5 - 1)) t_3_1))))) in
    (let rec h_1_3 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6 -> 
        (if (n_6 = 0) then
          h_1_3
        else
          ((atIndex__d0 (n_6 - 1)) t_3_0))))) in
    (let rec h_1_4 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7 -> 
        (if (n_7 = 0) then
          h_1_4
        else
          ((atIndex__d0 (n_7 - 1)) t_2_9))))) in
    (let rec h_1_5 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8 -> 
        (if (n_8 = 0) then
          h_1_5
        else
          ((atIndex__d0 (n_8 - 1)) t_2_8))))) in
    (let rec h_1_6 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9 -> 
        (if (n_9 = 0) then
          h_1_6
        else
          ((atIndex__d0 (n_9 - 1)) t_2_7))))) in
    (let rec h_1_7 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0 -> 
        (if (n_1_0 = 0) then
          h_1_7
        else
          ((atIndex__d0 (n_1_0 - 1)) t_2_6))))) in
    (let rec h_1_8 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1 -> 
        (if (n_1_1 = 0) then
          h_1_8
        else
          ((atIndex__d0 (n_1_1 - 1)) t_2_5))))) in
    (let rec h_1_9 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_2 -> 
        (if (n_1_2 = 0) then
          h_1_9
        else
          ((atIndex__d0 (n_1_2 - 1)) t_2_4))))) in
    (let rec h_2_0 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_3 -> 
        (if (n_1_3 = 0) then
          h_2_0
        else
          ((atIndex__d0 (n_1_3 - 1)) t_2_3))))) in
    (let rec h_2_1 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_4 -> 
        (if (n_1_4 = 0) then
          h_2_1
        else
          ((atIndex__d0 (n_1_4 - 1)) t_2_2))))) in
    (let rec h_2_2 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5 -> 
        (if (n_1_5 = 0) then
          h_2_2
        else
          ((atIndex__d0 (n_1_5 - 1)) t_2_1))))) in
    (let rec h_2_3 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6 -> 
        (if (n_1_6 = 0) then
          h_2_3
        else
          ((atIndex__d0 (n_1_6 - 1)) t_2_0))))) in
    (let rec h_2_4 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7 -> 
        (if (n_1_7 = 0) then
          h_2_4
        else
          ((atIndex__d0 (n_1_7 - 1)) t_1_9))))) in
    (let rec h_2_5 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_8 -> 
        (if (n_1_8 = 0) then
          h_2_5
        else
          ((atIndex__d0 (n_1_8 - 1)) t_1_8))))) in
    (let rec h_2_6 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9 -> 
        (if (n_1_9 = 0) then
          h_2_6
        else
          ((atIndex__d0 (n_1_9 - 1)) t_1_7))))) in
    (let rec h_2_7 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_0 -> 
        (if (n_2_0 = 0) then
          h_2_7
        else
          ((atIndex__d0 (n_2_0 - 1)) t_1_6))))) in
    (let rec h_2_8 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_1 -> 
        (if (n_2_1 = 0) then
          h_2_8
        else
          ((atIndex__d0 (n_2_1 - 1)) t_1_5))))) in
    (let rec h_2_9 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_2 -> 
        (if (n_2_2 = 0) then
          h_2_9
        else
          ((atIndex__d0 (n_2_2 - 1)) t_1_4))))) in
    (let rec h_3_0 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_3 -> 
        (if (n_2_3 = 0) then
          h_3_0
        else
          ((atIndex__d0 (n_2_3 - 1)) t_1_3))))) in
    (let rec h_3_1 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_4 -> 
        (if (n_2_4 = 0) then
          h_3_1
        else
          ((atIndex__d0 (n_2_4 - 1)) t_1_2))))) in
    (let rec h_3_2 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_5 -> 
        (if (n_2_5 = 0) then
          h_3_2
        else
          ((atIndex__d0 (n_2_5 - 1)) t_1_1))))) in
    (let rec h_3_3 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_6 -> 
        (if (n_2_6 = 0) then
          h_3_3
        else
          ((atIndex__d0 (n_2_6 - 1)) t_1_0))))) in
    (let rec h_3_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_7 -> 
        (if (n_2_7 = 0) then
          h_3_4
        else
          ((atIndex__d0 (n_2_7 - 1)) t_9)))))
and alphas__d1 _lh_alphas_arg1_1 =
  (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (fun n_4_1 -> 
    (failwith "error")) in
    (let rec h_5_1 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_2 -> 
        (if (n_4_2 = 0) then
          h_5_1
        else
          ((atIndex__d1 (n_4_2 - 1)) t_7_6))))) in
    (let rec h_5_2 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_3 -> 
        (if (n_4_3 = 0) then
          h_5_2
        else
          ((atIndex__d1 (n_4_3 - 1)) t_7_5))))) in
    (let rec h_5_3 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_4 -> 
        (if (n_4_4 = 0) then
          h_5_3
        else
          ((atIndex__d1 (n_4_4 - 1)) t_7_4))))) in
    (let rec h_5_4 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_5 -> 
        (if (n_4_5 = 0) then
          h_5_4
        else
          ((atIndex__d1 (n_4_5 - 1)) t_7_3))))) in
    (let rec h_5_5 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_6 -> 
        (if (n_4_6 = 0) then
          h_5_5
        else
          ((atIndex__d1 (n_4_6 - 1)) t_7_2))))) in
    (let rec h_5_6 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_7 -> 
        (if (n_4_7 = 0) then
          h_5_6
        else
          ((atIndex__d1 (n_4_7 - 1)) t_7_1))))) in
    (let rec h_5_7 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_8 -> 
        (if (n_4_8 = 0) then
          h_5_7
        else
          ((atIndex__d1 (n_4_8 - 1)) t_7_0))))) in
    (let rec h_5_8 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_9 -> 
        (if (n_4_9 = 0) then
          h_5_8
        else
          ((atIndex__d1 (n_4_9 - 1)) t_6_9))))) in
    (let rec h_5_9 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_0 -> 
        (if (n_5_0 = 0) then
          h_5_9
        else
          ((atIndex__d1 (n_5_0 - 1)) t_6_8))))) in
    (let rec h_6_0 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_1 -> 
        (if (n_5_1 = 0) then
          h_6_0
        else
          ((atIndex__d1 (n_5_1 - 1)) t_6_7))))) in
    (let rec h_6_1 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_2 -> 
        (if (n_5_2 = 0) then
          h_6_1
        else
          ((atIndex__d1 (n_5_2 - 1)) t_6_6))))) in
    (let rec h_6_2 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_3 -> 
        (if (n_5_3 = 0) then
          h_6_2
        else
          ((atIndex__d1 (n_5_3 - 1)) t_6_5))))) in
    (let rec h_6_3 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_4 -> 
        (if (n_5_4 = 0) then
          h_6_3
        else
          ((atIndex__d1 (n_5_4 - 1)) t_6_4))))) in
    (let rec h_6_4 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_5 -> 
        (if (n_5_5 = 0) then
          h_6_4
        else
          ((atIndex__d1 (n_5_5 - 1)) t_6_3))))) in
    (let rec h_6_5 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_6 -> 
        (if (n_5_6 = 0) then
          h_6_5
        else
          ((atIndex__d1 (n_5_6 - 1)) t_6_2))))) in
    (let rec h_6_6 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_7 -> 
        (if (n_5_7 = 0) then
          h_6_6
        else
          ((atIndex__d1 (n_5_7 - 1)) t_6_1))))) in
    (let rec h_6_7 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_8 -> 
        (if (n_5_8 = 0) then
          h_6_7
        else
          ((atIndex__d1 (n_5_8 - 1)) t_6_0))))) in
    (let rec h_6_8 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_9 -> 
        (if (n_5_9 = 0) then
          h_6_8
        else
          ((atIndex__d1 (n_5_9 - 1)) t_5_9))))) in
    (let rec h_6_9 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_0 -> 
        (if (n_6_0 = 0) then
          h_6_9
        else
          ((atIndex__d1 (n_6_0 - 1)) t_5_8))))) in
    (let rec h_7_0 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_1 -> 
        (if (n_6_1 = 0) then
          h_7_0
        else
          ((atIndex__d1 (n_6_1 - 1)) t_5_7))))) in
    (let rec h_7_1 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_2 -> 
        (if (n_6_2 = 0) then
          h_7_1
        else
          ((atIndex__d1 (n_6_2 - 1)) t_5_6))))) in
    (let rec h_7_2 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_3 -> 
        (if (n_6_3 = 0) then
          h_7_2
        else
          ((atIndex__d1 (n_6_3 - 1)) t_5_5))))) in
    (let rec h_7_3 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_4 -> 
        (if (n_6_4 = 0) then
          h_7_3
        else
          ((atIndex__d1 (n_6_4 - 1)) t_5_4))))) in
    (let rec h_7_4 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_5 -> 
        (if (n_6_5 = 0) then
          h_7_4
        else
          ((atIndex__d1 (n_6_5 - 1)) t_5_3))))) in
    (let rec h_7_5 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_6 -> 
        (if (n_6_6 = 0) then
          h_7_5
        else
          ((atIndex__d1 (n_6_6 - 1)) t_5_2))))) in
    (let rec h_7_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_7 -> 
        (if (n_6_7 = 0) then
          h_7_6
        else
          ((atIndex__d1 (n_6_7 - 1)) t_5_1)))))
and combine__d0 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (let rec t_7_7 = (transpose__d0 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0))) in
    (let rec h_7_7 = (`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)) in
      (fun f_8 -> 
        (let rec t_7_8 = ((map__d0 f_8) t_7_7) in
          (let rec h_7_8 = (f_8 h_7_7) in
            (fun f_9 -> 
              (let rec t_7_9 = ((map__d2 f_9) t_7_8) in
                (let rec h_7_9 = (f_9 h_7_8) in
                  (fun _lh_dummy_1 -> 
                    ((mappend__d4 h_7_9) (concat__d1 t_7_9)))))))))))
and digits__d0 _lh_digits_arg1_0 =
  (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (fun n_3_0 -> 
    (failwith "error")) in
    (let rec h_3_9 = (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_1 -> 
        (if (n_3_1 = 0) then
          h_3_9
        else
          ((atIndex__d2 (n_3_1 - 1)) t_4_8))))) in
    (let rec h_4_0 = (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_2 -> 
        (if (n_3_2 = 0) then
          h_4_0
        else
          ((atIndex__d2 (n_3_2 - 1)) t_4_7))))) in
    (let rec h_4_1 = (`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_3 -> 
        (if (n_3_3 = 0) then
          h_4_1
        else
          ((atIndex__d2 (n_3_3 - 1)) t_4_6))))) in
    (let rec h_4_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_4 -> 
        (if (n_3_4 = 0) then
          h_4_2
        else
          ((atIndex__d2 (n_3_4 - 1)) t_4_5))))) in
    (let rec h_4_3 = (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_5 -> 
        (if (n_3_5 = 0) then
          h_4_3
        else
          ((atIndex__d2 (n_3_5 - 1)) t_4_4))))) in
    (let rec h_4_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_6 -> 
        (if (n_3_6 = 0) then
          h_4_4
        else
          ((atIndex__d2 (n_3_6 - 1)) t_4_3))))) in
    (let rec h_4_5 = (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_7 -> 
        (if (n_3_7 = 0) then
          h_4_5
        else
          ((atIndex__d2 (n_3_7 - 1)) t_4_2))))) in
    (let rec h_4_6 = (`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_8 -> 
        (if (n_3_8 = 0) then
          h_4_6
        else
          ((atIndex__d2 (n_3_8 - 1)) t_4_1))))) in
    (let rec h_4_7 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_9 -> 
        (if (n_3_9 = 0) then
          h_4_7
        else
          ((atIndex__d2 (n_3_9 - 1)) t_4_0))))) in
    (let rec h_4_8 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_0 -> 
        (if (n_4_0 = 0) then
          h_4_8
        else
          ((atIndex__d2 (n_4_0 - 1)) t_3_9)))))
and join__d0 _lh_join_arg1_0 =
  ((foldr1__d0 (fun xs_0 ys_8 -> 
    ((mappend__d1 ((mappend__d2 xs_0) (let rec t_7 = (let rec t_8 = (fun ys_9 -> 
      ys_9) in
      (let rec h_7 = ' ' in
        (fun ys_1_0 -> 
          (`LH_C(h_7, ((mappend__d1 t_8) ys_1_0)))))) in
      (let rec h_8 = ' ' in
        (fun ys_1_1 -> 
          (`LH_C(h_8, ((mappend__d1 t_7) ys_1_1)))))))) ys_8))) _lh_join_arg1_0)
and mappend__d2 xs_1 ys_1_2 =
  (match xs_1 with
    | `LH_C(h_3_6, t_3_6) -> 
      (let rec t_3_7 = ((mappend__d2 t_3_6) ys_1_2) in
        (let rec h_3_7 = h_3_6 in
          (fun ys_1_3 -> 
            (`LH_C(h_3_7, ((mappend__d1 t_3_7) ys_1_3))))))
    | `LH_N -> 
      ys_1_2)
and mappend__d5 xs_3 ys_1_7 =
  (match xs_3 with
    | `LH_C(h_4_9, t_4_9) -> 
      (let rec t_5_0 = ((mappend__d5 t_4_9) ys_1_7) in
        (let rec h_5_0 = h_4_9 in
          (fun ys_1_8 -> 
            (`LH_C(h_5_0, ((mappend__d4 t_5_0) ys_1_8))))))
    | `LH_N -> 
      ys_1_7)
and picChar__d0 _lh_picChar_arg1_1_5 =
  (if (isUpper__d0 _lh_picChar_arg1_1_5) then
    ((atIndex__d0 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char 'A'))) (alphas__d0 0))
  else
    (if (isLower__d0 _lh_picChar_arg1_1_5) then
      ((atIndex__d1 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char 'a'))) (alphas__d1 0))
    else
      (if (isSpace__d0 _lh_picChar_arg1_1_5) then
        (blank__d0 0)
      else
        (if (isDigit__d0 _lh_picChar_arg1_1_5) then
          ((atIndex__d2 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char '0'))) (digits__d0 0))
        else
          (if (_lh_picChar_arg1_1_5 = '/') then
            (slant__d0 0)
          else
            (if (_lh_picChar_arg1_1_5 = '=') then
              (reverse__d0 (slant__d1 0))
            else
              (head__d0 ((mappend__d3 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1_6) _lh_picChar_arg1_1_5)) in
                (_lh_listcomp_fun_1_6 (punct__d0 0)))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))))
and punct__d0 _lh_punct_arg1_0 =
  (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (fun _lh_listcomp_fun_0 _lh_picChar_arg1_0 ys_0 -> 
    ys_0) in
    (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_picChar_LH_P2_1_0 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_0 = ';' in
        (fun _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_1 _lh_picChar_arg1_1 -> 
          (if (_lh_picChar_LH_P2_0_0 = _lh_picChar_arg1_1) then
            (let rec t_0 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_7) in
              (let rec h_0 = _lh_picChar_LH_P2_1_0 in
                (fun ys_1 -> 
                  (`LH_C(h_0, ((mappend__d3 t_0) ys_1))))))
          else
            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_7))))) in
      (fun _lh_listcomp_fun_2 _lh_picChar_arg1_2 -> 
        (((_lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_2) _lh_picChar_arg1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_picChar_LH_P2_1_1 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1 = ':' in
        (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_3 _lh_picChar_arg1_3 -> 
          (if (_lh_picChar_LH_P2_0_1 = _lh_picChar_arg1_3) then
            (let rec t_1 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_8) in
              (let rec h_1 = _lh_picChar_LH_P2_1_1 in
                (fun ys_2 -> 
                  (`LH_C(h_1, ((mappend__d3 t_1) ys_2))))))
          else
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_8))))) in
      (fun _lh_listcomp_fun_4 _lh_picChar_arg1_4 -> 
        (((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_4) _lh_picChar_arg1_4)))) in
    (let rec _lh_listcomp_fun_ls_h_2 = (let rec _lh_picChar_LH_P2_1_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_2 = '+' in
        (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_5 _lh_picChar_arg1_5 -> 
          (if (_lh_picChar_LH_P2_0_2 = _lh_picChar_arg1_5) then
            (let rec t_2 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9) in
              (let rec h_2 = _lh_picChar_LH_P2_1_2 in
                (fun ys_3 -> 
                  (`LH_C(h_2, ((mappend__d3 t_2) ys_3))))))
          else
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9))))) in
      (fun _lh_listcomp_fun_6 _lh_picChar_arg1_6 -> 
        (((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_6) _lh_picChar_arg1_6)))) in
    (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_picChar_LH_P2_1_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_3 = '-' in
        (fun _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_7 _lh_picChar_arg1_7 -> 
          (if (_lh_picChar_LH_P2_0_3 = _lh_picChar_arg1_7) then
            (let rec t_3 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_0) in
              (let rec h_3 = _lh_picChar_LH_P2_1_3 in
                (fun ys_4 -> 
                  (`LH_C(h_3, ((mappend__d3 t_3) ys_4))))))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_0))))) in
      (fun _lh_listcomp_fun_8 _lh_picChar_arg1_8 -> 
        (((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_8) _lh_picChar_arg1_8)))) in
    (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_picChar_LH_P2_1_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_4 = '!' in
        (fun _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_9 _lh_picChar_arg1_9 -> 
          (if (_lh_picChar_LH_P2_0_4 = _lh_picChar_arg1_9) then
            (let rec t_4 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_1) in
              (let rec h_4 = _lh_picChar_LH_P2_1_4 in
                (fun ys_5 -> 
                  (`LH_C(h_4, ((mappend__d3 t_4) ys_5))))))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_1))))) in
      (fun _lh_listcomp_fun_1_0 _lh_picChar_arg1_1_0 -> 
        (((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_1_0) _lh_picChar_arg1_1_0)))) in
    (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_picChar_LH_P2_1_5 = (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_5 = '?' in
        (fun _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_1_1 _lh_picChar_arg1_1_1 -> 
          (if (_lh_picChar_LH_P2_0_5 = _lh_picChar_arg1_1_1) then
            (let rec t_5 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_2) in
              (let rec h_5 = _lh_picChar_LH_P2_1_5 in
                (fun ys_6 -> 
                  (`LH_C(h_5, ((mappend__d3 t_5) ys_6))))))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_2))))) in
      (fun _lh_listcomp_fun_1_2 _lh_picChar_arg1_1_2 -> 
        (((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1_2) _lh_picChar_arg1_1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_6 = (let rec _lh_picChar_LH_P2_1_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_6 = '.' in
        (fun _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_1_3 _lh_picChar_arg1_1_3 -> 
          (if (_lh_picChar_LH_P2_0_6 = _lh_picChar_arg1_1_3) then
            (let rec t_6 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3) in
              (let rec h_6 = _lh_picChar_LH_P2_1_6 in
                (fun ys_7 -> 
                  (`LH_C(h_6, ((mappend__d3 t_6) ys_7))))))
          else
            (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))))) in
      (fun _lh_listcomp_fun_1_4 _lh_picChar_arg1_1_4 -> 
        (((_lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_1_4) _lh_picChar_arg1_1_4))))
and replicate__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (fun _lh_dummy_2 f_3_7 -> 
      (`LH_N))
  else
    (let rec t_1_4_0 = ((replicate__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_1_4_0 = _lh_replicate_arg2_0 in
        (fun _lh_dummy_3 -> 
          ((mappend__d0 h_1_4_0) (concat__d0 t_1_4_0))))))
and reverse__d0 ls_6 =
  ((reverse_helper__d0 ls_6) (`LH_N))
and say__d0 _lh_say_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun x_0 -> 
            (`LH_C('n', x_0))) (unlines__d0 _lh_funcomp_x_3))) ((map__d0 join__d0) _lh_funcomp_x_2))) (transpose__d0 _lh_funcomp_x_1))) ((map__d1 picChar__d0) _lh_funcomp_x_0))) _lh_say_arg1_0)
and slant__d1 _lh_slant_arg1_1 =
  (let rec t_1_3_5 = (let rec t_1_3_6 = (let rec t_1_3_7 = (let rec t_1_3_8 = (let rec t_1_3_9 = (fun a_1 -> 
    a_1) in
    (let rec h_1_3_5 = (`LH_N) in
      (fun a_2 -> 
        ((reverse_helper__d0 t_1_3_9) (`LH_C(h_1_3_5, a_2)))))) in
    (let rec h_1_3_6 = (`LH_C(' ', (`LH_N))) in
      (fun a_3 -> 
        ((reverse_helper__d0 t_1_3_8) (`LH_C(h_1_3_6, a_3)))))) in
    (let rec h_1_3_7 = (`LH_C(' ', (`LH_C(' ', (`LH_N))))) in
      (fun a_4 -> 
        ((reverse_helper__d0 t_1_3_7) (`LH_C(h_1_3_7, a_4)))))) in
    (let rec h_1_3_8 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) in
      (fun a_5 -> 
        ((reverse_helper__d0 t_1_3_6) (`LH_C(h_1_3_8, a_5)))))) in
    (let rec h_1_3_9 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))) in
      (fun a_6 -> 
        ((reverse_helper__d0 t_1_3_5) (`LH_C(h_1_3_9, a_6))))))
and testBanner_nofib__d0 _lh_testBanner_nofib_arg1_0 =
  (say__d0 (concat__d0 ((replicate__d0 _lh_testBanner_nofib_arg1_0) (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (let rec t_8_5 = (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (fun ys_2_1 -> 
    ys_2_1) in
    (let rec h_8_1 = '?' in
      (fun ys_2_2 -> 
        (let rec t_1_0_8 = ((mappend__d0 t_1_0_7) ys_2_2) in
          (let rec h_8_2 = h_8_1 in
            (fun f_1_0 -> 
              (`LH_C((f_1_0 h_8_2), ((map__d1 f_1_0) t_1_0_8))))))))) in
    (let rec h_8_3 = 'r' in
      (fun ys_2_3 -> 
        (let rec t_1_0_9 = ((mappend__d0 t_1_0_6) ys_2_3) in
          (let rec h_8_4 = h_8_3 in
            (fun f_1_1 -> 
              (`LH_C((f_1_1 h_8_4), ((map__d1 f_1_1) t_1_0_9))))))))) in
    (let rec h_8_5 = 'e' in
      (fun ys_2_4 -> 
        (let rec t_1_1_0 = ((mappend__d0 t_1_0_5) ys_2_4) in
          (let rec h_8_6 = h_8_5 in
            (fun f_1_2 -> 
              (`LH_C((f_1_2 h_8_6), ((map__d1 f_1_2) t_1_1_0))))))))) in
    (let rec h_8_7 = 'n' in
      (fun ys_2_5 -> 
        (let rec t_1_1_1 = ((mappend__d0 t_1_0_4) ys_2_5) in
          (let rec h_8_8 = h_8_7 in
            (fun f_1_3 -> 
              (`LH_C((f_1_3 h_8_8), ((map__d1 f_1_3) t_1_1_1))))))))) in
    (let rec h_8_9 = 'n' in
      (fun ys_2_6 -> 
        (let rec t_1_1_2 = ((mappend__d0 t_1_0_3) ys_2_6) in
          (let rec h_9_0 = h_8_9 in
            (fun f_1_4 -> 
              (`LH_C((f_1_4 h_9_0), ((map__d1 f_1_4) t_1_1_2))))))))) in
    (let rec h_9_1 = 'a' in
      (fun ys_2_7 -> 
        (let rec t_1_1_3 = ((mappend__d0 t_1_0_2) ys_2_7) in
          (let rec h_9_2 = h_9_1 in
            (fun f_1_5 -> 
              (`LH_C((f_1_5 h_9_2), ((map__d1 f_1_5) t_1_1_3))))))))) in
    (let rec h_9_3 = 'b' in
      (fun ys_2_8 -> 
        (let rec t_1_1_4 = ((mappend__d0 t_1_0_1) ys_2_8) in
          (let rec h_9_4 = h_9_3 in
            (fun f_1_6 -> 
              (`LH_C((f_1_6 h_9_4), ((map__d1 f_1_6) t_1_1_4))))))))) in
    (let rec h_9_5 = ' ' in
      (fun ys_2_9 -> 
        (let rec t_1_1_5 = ((mappend__d0 t_1_0_0) ys_2_9) in
          (let rec h_9_6 = h_9_5 in
            (fun f_1_7 -> 
              (`LH_C((f_1_7 h_9_6), ((map__d1 f_1_7) t_1_1_5))))))))) in
    (let rec h_9_7 = 't' in
      (fun ys_3_0 -> 
        (let rec t_1_1_6 = ((mappend__d0 t_9_9) ys_3_0) in
          (let rec h_9_8 = h_9_7 in
            (fun f_1_8 -> 
              (`LH_C((f_1_8 h_9_8), ((map__d1 f_1_8) t_1_1_6))))))))) in
    (let rec h_9_9 = 'a' in
      (fun ys_3_1 -> 
        (let rec t_1_1_7 = ((mappend__d0 t_9_8) ys_3_1) in
          (let rec h_1_0_0 = h_9_9 in
            (fun f_1_9 -> 
              (`LH_C((f_1_9 h_1_0_0), ((map__d1 f_1_9) t_1_1_7))))))))) in
    (let rec h_1_0_1 = 'e' in
      (fun ys_3_2 -> 
        (let rec t_1_1_8 = ((mappend__d0 t_9_7) ys_3_2) in
          (let rec h_1_0_2 = h_1_0_1 in
            (fun f_2_0 -> 
              (`LH_C((f_2_0 h_1_0_2), ((map__d1 f_2_0) t_1_1_8))))))))) in
    (let rec h_1_0_3 = 'r' in
      (fun ys_3_3 -> 
        (let rec t_1_1_9 = ((mappend__d0 t_9_6) ys_3_3) in
          (let rec h_1_0_4 = h_1_0_3 in
            (fun f_2_1 -> 
              (`LH_C((f_2_1 h_1_0_4), ((map__d1 f_2_1) t_1_1_9))))))))) in
    (let rec h_1_0_5 = 'g' in
      (fun ys_3_4 -> 
        (let rec t_1_2_0 = ((mappend__d0 t_9_5) ys_3_4) in
          (let rec h_1_0_6 = h_1_0_5 in
            (fun f_2_2 -> 
              (`LH_C((f_2_2 h_1_0_6), ((map__d1 f_2_2) t_1_2_0))))))))) in
    (let rec h_1_0_7 = ' ' in
      (fun ys_3_5 -> 
        (let rec t_1_2_1 = ((mappend__d0 t_9_4) ys_3_5) in
          (let rec h_1_0_8 = h_1_0_7 in
            (fun f_2_3 -> 
              (`LH_C((f_2_3 h_1_0_8), ((map__d1 f_2_3) t_1_2_1))))))))) in
    (let rec h_1_0_9 = 'a' in
      (fun ys_3_6 -> 
        (let rec t_1_2_2 = ((mappend__d0 t_9_3) ys_3_6) in
          (let rec h_1_1_0 = h_1_0_9 in
            (fun f_2_4 -> 
              (`LH_C((f_2_4 h_1_1_0), ((map__d1 f_2_4) t_1_2_2))))))))) in
    (let rec h_1_1_1 = ' ' in
      (fun ys_3_7 -> 
        (let rec t_1_2_3 = ((mappend__d0 t_9_2) ys_3_7) in
          (let rec h_1_1_2 = h_1_1_1 in
            (fun f_2_5 -> 
              (`LH_C((f_2_5 h_1_1_2), ((map__d1 f_2_5) t_1_2_3))))))))) in
    (let rec h_1_1_3 = 't' in
      (fun ys_3_8 -> 
        (let rec t_1_2_4 = ((mappend__d0 t_9_1) ys_3_8) in
          (let rec h_1_1_4 = h_1_1_3 in
            (fun f_2_6 -> 
              (`LH_C((f_2_6 h_1_1_4), ((map__d1 f_2_6) t_1_2_4))))))))) in
    (let rec h_1_1_5 = 'o' in
      (fun ys_3_9 -> 
        (let rec t_1_2_5 = ((mappend__d0 t_9_0) ys_3_9) in
          (let rec h_1_1_6 = h_1_1_5 in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_1_1_6), ((map__d1 f_2_7) t_1_2_5))))))))) in
    (let rec h_1_1_7 = 'n' in
      (fun ys_4_0 -> 
        (let rec t_1_2_6 = ((mappend__d0 t_8_9) ys_4_0) in
          (let rec h_1_1_8 = h_1_1_7 in
            (fun f_2_8 -> 
              (`LH_C((f_2_8 h_1_1_8), ((map__d1 f_2_8) t_1_2_6))))))))) in
    (let rec h_1_1_9 = ' ' in
      (fun ys_4_1 -> 
        (let rec t_1_2_7 = ((mappend__d0 t_8_8) ys_4_1) in
          (let rec h_1_2_0 = h_1_1_9 in
            (fun f_2_9 -> 
              (`LH_C((f_2_9 h_1_2_0), ((map__d1 f_2_9) t_1_2_7))))))))) in
    (let rec h_1_2_1 = 's' in
      (fun ys_4_2 -> 
        (let rec t_1_2_8 = ((mappend__d0 t_8_7) ys_4_2) in
          (let rec h_1_2_2 = h_1_2_1 in
            (fun f_3_0 -> 
              (`LH_C((f_3_0 h_1_2_2), ((map__d1 f_3_0) t_1_2_8))))))))) in
    (let rec h_1_2_3 = 'i' in
      (fun ys_4_3 -> 
        (let rec t_1_2_9 = ((mappend__d0 t_8_6) ys_4_3) in
          (let rec h_1_2_4 = h_1_2_3 in
            (fun f_3_1 -> 
              (`LH_C((f_3_1 h_1_2_4), ((map__d1 f_3_1) t_1_2_9))))))))) in
    (let rec h_1_2_5 = 'h' in
      (fun ys_4_4 -> 
        (let rec t_1_3_0 = ((mappend__d0 t_8_5) ys_4_4) in
          (let rec h_1_2_6 = h_1_2_5 in
            (fun f_3_2 -> 
              (`LH_C((f_3_2 h_1_2_6), ((map__d1 f_3_2) t_1_3_0))))))))) in
    (let rec h_1_2_7 = 't' in
      (fun ys_4_5 -> 
        (let rec t_1_3_1 = ((mappend__d0 t_8_4) ys_4_5) in
          (let rec h_1_2_8 = h_1_2_7 in
            (fun f_3_3 -> 
              (`LH_C((f_3_3 h_1_2_8), ((map__d1 f_3_3) t_1_3_1))))))))) in
    (let rec h_1_2_9 = ' ' in
      (fun ys_4_6 -> 
        (let rec t_1_3_2 = ((mappend__d0 t_8_3) ys_4_6) in
          (let rec h_1_3_0 = h_1_2_9 in
            (fun f_3_4 -> 
              (`LH_C((f_3_4 h_1_3_0), ((map__d1 f_3_4) t_1_3_2))))))))) in
    (let rec h_1_3_1 = 's' in
      (fun ys_4_7 -> 
        (let rec t_1_3_3 = ((mappend__d0 t_8_2) ys_4_7) in
          (let rec h_1_3_2 = h_1_3_1 in
            (fun f_3_5 -> 
              (`LH_C((f_3_5 h_1_3_2), ((map__d1 f_3_5) t_1_3_3))))))))) in
    (let rec h_1_3_3 = 'I' in
      (fun ys_4_8 -> 
        (let rec t_1_3_4 = ((mappend__d0 t_8_1) ys_4_8) in
          (let rec h_1_3_4 = h_1_3_3 in
            (fun f_3_6 -> 
              (`LH_C((f_3_6 h_1_3_4), ((map__d1 f_3_6) t_1_3_4))))))))))))
and transpose__d0 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (fun f_1 f_2 _lh_dummy_0 -> 
        (`LH_N))
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose__d0 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_1 = (unzip__d0 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_1_4) -> 
                (match _lh_listcomp_fun_ls_h_7 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (let rec t_3_5 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_4) in
                      (let rec h_3_5 = (let rec _lh_unzip_LH_P2_1_0 = _lh_transpose_LH_C_1_2 in
                        (let rec _lh_unzip_LH_P2_0_0 = _lh_transpose_LH_C_0_2 in
                          (fun asbs_1 -> 
                            (let rec _lh_matchIdent_2 = asbs_1 in
                              (match _lh_matchIdent_2 with
                                | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_3 i_0 -> 
                          ((f_3 h_3_5) (((foldr__d0 f_3) i_0) t_3_5)))))
                  | _ -> 
                    (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_4))
              | `LH_N -> 
                (fun f_4 i_1 -> 
                  i_1))) in
            (_lh_listcomp_fun_1_5 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_1 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine__d0 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0 _lh_unlines_arg1_0 =
  (concat__d1 ((map__d2 (fun l_0 -> 
    ((mappend__d5 l_0) (let rec t_3_8 = (fun ys_1_4 -> 
      ys_1_4) in
      (let rec h_3_8 = 'n' in
        (fun ys_1_5 -> 
          (`LH_C(h_3_8, ((mappend__d4 t_3_8) ys_1_5))))))))) _lh_unlines_arg1_0))
and unzip__d0 _lh_unzip_arg1_0 =
  (((foldr__d0 (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_0 = ab_0 in
      (_lh_matchIdent_0 asbs_0)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec atIndex__d0 n_7_1 ls_9 =
  (if (n_7_1 < 0) then
    (failwith "error")
  else
    (ls_9 n_7_1));;
let rec atIndex__d1 n_7_0 ls_8 =
  (if (n_7_0 < 0) then
    (failwith "error")
  else
    (ls_8 n_7_0));;
let rec atIndex__d2 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (ls_0 n_0));;
let rec blank__d0 _lh_blank_arg1_0 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
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
let rec foldr__d0 f_6 i_2 ls_4 =
  ((ls_4 f_6) i_2);;
let rec head__d0 ls_7 =
  (match ls_7 with
    | `LH_C(h_8_0, t_8_0) -> 
      h_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec isDigit__d0 _lh_isDigit_arg1_0 =
  (let rec n_2_8 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_2_8 >= 48) && (n_2_8 <= 57)));;
let rec isLower__d0 _lh_isLower_arg1_0 =
  (let rec n_6_8 = (int_of_char _lh_isLower_arg1_0) in
    ((n_6_8 >= 97) && (n_6_8 <= 122)));;
let rec isSpace__d0 _lh_isSpace_arg1_0 =
  (let rec n_6_9 = (int_of_char _lh_isSpace_arg1_0) in
    (n_6_9 = 32));;
let rec isUpper__d0 _lh_isUpper_arg1_0 =
  (let rec n_2_9 = (int_of_char _lh_isUpper_arg1_0) in
    ((n_2_9 >= 65) && (n_2_9 <= 90)));;
let rec map__d0 f_7 ls_5 =
  (ls_5 f_7);;
let rec map__d1 f_5 ls_3 =
  (ls_3 f_5);;
let rec map__d2 f_0 ls_1 =
  (ls_1 f_0);;
let rec mappend__d0 xs_4 ys_1_9 =
  (xs_4 ys_1_9);;
let rec mappend__d1 xs_5 ys_2_0 =
  (xs_5 ys_2_0);;
let rec mappend__d3 xs_6 ys_4_9 =
  (xs_6 ys_4_9);;
let rec mappend__d4 xs_2 ys_1_6 =
  (xs_2 ys_1_6);;
let rec reverse_helper__d0 ls_2 a_0 =
  (ls_2 a_0);;
let rec slant__d0 _lh_slant_arg1_0 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec alphas__d0 _lh_alphas_arg1_0 n_2_7 =
  (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (fun n_1 -> 
    (failwith "error")) in
    (let rec h_9 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2 -> 
        (if (n_2 = 0) then
          h_9
        else
          ((atIndex__d0 (n_2 - 1)) t_3_4))))) in
    (let rec h_1_0 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3 -> 
        (if (n_3 = 0) then
          h_1_0
        else
          ((atIndex__d0 (n_3 - 1)) t_3_3))))) in
    (let rec h_1_1 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4 -> 
        (if (n_4 = 0) then
          h_1_1
        else
          ((atIndex__d0 (n_4 - 1)) t_3_2))))) in
    (let rec h_1_2 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5 -> 
        (if (n_5 = 0) then
          h_1_2
        else
          ((atIndex__d0 (n_5 - 1)) t_3_1))))) in
    (let rec h_1_3 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6 -> 
        (if (n_6 = 0) then
          h_1_3
        else
          ((atIndex__d0 (n_6 - 1)) t_3_0))))) in
    (let rec h_1_4 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7 -> 
        (if (n_7 = 0) then
          h_1_4
        else
          ((atIndex__d0 (n_7 - 1)) t_2_9))))) in
    (let rec h_1_5 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8 -> 
        (if (n_8 = 0) then
          h_1_5
        else
          ((atIndex__d0 (n_8 - 1)) t_2_8))))) in
    (let rec h_1_6 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9 -> 
        (if (n_9 = 0) then
          h_1_6
        else
          ((atIndex__d0 (n_9 - 1)) t_2_7))))) in
    (let rec h_1_7 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0 -> 
        (if (n_1_0 = 0) then
          h_1_7
        else
          ((atIndex__d0 (n_1_0 - 1)) t_2_6))))) in
    (let rec h_1_8 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1 -> 
        (if (n_1_1 = 0) then
          h_1_8
        else
          ((atIndex__d0 (n_1_1 - 1)) t_2_5))))) in
    (let rec h_1_9 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_2 -> 
        (if (n_1_2 = 0) then
          h_1_9
        else
          ((atIndex__d0 (n_1_2 - 1)) t_2_4))))) in
    (let rec h_2_0 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_3 -> 
        (if (n_1_3 = 0) then
          h_2_0
        else
          ((atIndex__d0 (n_1_3 - 1)) t_2_3))))) in
    (let rec h_2_1 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_4 -> 
        (if (n_1_4 = 0) then
          h_2_1
        else
          ((atIndex__d0 (n_1_4 - 1)) t_2_2))))) in
    (let rec h_2_2 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5 -> 
        (if (n_1_5 = 0) then
          h_2_2
        else
          ((atIndex__d0 (n_1_5 - 1)) t_2_1))))) in
    (let rec h_2_3 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6 -> 
        (if (n_1_6 = 0) then
          h_2_3
        else
          ((atIndex__d0 (n_1_6 - 1)) t_2_0))))) in
    (let rec h_2_4 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7 -> 
        (if (n_1_7 = 0) then
          h_2_4
        else
          ((atIndex__d0 (n_1_7 - 1)) t_1_9))))) in
    (let rec h_2_5 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_8 -> 
        (if (n_1_8 = 0) then
          h_2_5
        else
          ((atIndex__d0 (n_1_8 - 1)) t_1_8))))) in
    (let rec h_2_6 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9 -> 
        (if (n_1_9 = 0) then
          h_2_6
        else
          ((atIndex__d0 (n_1_9 - 1)) t_1_7))))) in
    (let rec h_2_7 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_0 -> 
        (if (n_2_0 = 0) then
          h_2_7
        else
          ((atIndex__d0 (n_2_0 - 1)) t_1_6))))) in
    (let rec h_2_8 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_1 -> 
        (if (n_2_1 = 0) then
          h_2_8
        else
          ((atIndex__d0 (n_2_1 - 1)) t_1_5))))) in
    (let rec h_2_9 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_2 -> 
        (if (n_2_2 = 0) then
          h_2_9
        else
          ((atIndex__d0 (n_2_2 - 1)) t_1_4))))) in
    (let rec h_3_0 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_3 -> 
        (if (n_2_3 = 0) then
          h_3_0
        else
          ((atIndex__d0 (n_2_3 - 1)) t_1_3))))) in
    (let rec h_3_1 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_4 -> 
        (if (n_2_4 = 0) then
          h_3_1
        else
          ((atIndex__d0 (n_2_4 - 1)) t_1_2))))) in
    (let rec h_3_2 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_5 -> 
        (if (n_2_5 = 0) then
          h_3_2
        else
          ((atIndex__d0 (n_2_5 - 1)) t_1_1))))) in
    (let rec h_3_3 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_6 -> 
        (if (n_2_6 = 0) then
          h_3_3
        else
          ((atIndex__d0 (n_2_6 - 1)) t_1_0))))) in
    (let rec h_3_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (if (n_2_7 = 0) then
        h_3_4
      else
        ((atIndex__d0 (n_2_7 - 1)) t_9))))
and alphas__d1 _lh_alphas_arg1_1 n_6_7 =
  (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (fun n_4_1 -> 
    (failwith "error")) in
    (let rec h_5_1 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_2 -> 
        (if (n_4_2 = 0) then
          h_5_1
        else
          ((atIndex__d1 (n_4_2 - 1)) t_7_6))))) in
    (let rec h_5_2 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_3 -> 
        (if (n_4_3 = 0) then
          h_5_2
        else
          ((atIndex__d1 (n_4_3 - 1)) t_7_5))))) in
    (let rec h_5_3 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_4 -> 
        (if (n_4_4 = 0) then
          h_5_3
        else
          ((atIndex__d1 (n_4_4 - 1)) t_7_4))))) in
    (let rec h_5_4 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_5 -> 
        (if (n_4_5 = 0) then
          h_5_4
        else
          ((atIndex__d1 (n_4_5 - 1)) t_7_3))))) in
    (let rec h_5_5 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_6 -> 
        (if (n_4_6 = 0) then
          h_5_5
        else
          ((atIndex__d1 (n_4_6 - 1)) t_7_2))))) in
    (let rec h_5_6 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_7 -> 
        (if (n_4_7 = 0) then
          h_5_6
        else
          ((atIndex__d1 (n_4_7 - 1)) t_7_1))))) in
    (let rec h_5_7 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_8 -> 
        (if (n_4_8 = 0) then
          h_5_7
        else
          ((atIndex__d1 (n_4_8 - 1)) t_7_0))))) in
    (let rec h_5_8 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_9 -> 
        (if (n_4_9 = 0) then
          h_5_8
        else
          ((atIndex__d1 (n_4_9 - 1)) t_6_9))))) in
    (let rec h_5_9 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_0 -> 
        (if (n_5_0 = 0) then
          h_5_9
        else
          ((atIndex__d1 (n_5_0 - 1)) t_6_8))))) in
    (let rec h_6_0 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_1 -> 
        (if (n_5_1 = 0) then
          h_6_0
        else
          ((atIndex__d1 (n_5_1 - 1)) t_6_7))))) in
    (let rec h_6_1 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_2 -> 
        (if (n_5_2 = 0) then
          h_6_1
        else
          ((atIndex__d1 (n_5_2 - 1)) t_6_6))))) in
    (let rec h_6_2 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_3 -> 
        (if (n_5_3 = 0) then
          h_6_2
        else
          ((atIndex__d1 (n_5_3 - 1)) t_6_5))))) in
    (let rec h_6_3 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_4 -> 
        (if (n_5_4 = 0) then
          h_6_3
        else
          ((atIndex__d1 (n_5_4 - 1)) t_6_4))))) in
    (let rec h_6_4 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_5 -> 
        (if (n_5_5 = 0) then
          h_6_4
        else
          ((atIndex__d1 (n_5_5 - 1)) t_6_3))))) in
    (let rec h_6_5 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_6 -> 
        (if (n_5_6 = 0) then
          h_6_5
        else
          ((atIndex__d1 (n_5_6 - 1)) t_6_2))))) in
    (let rec h_6_6 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_7 -> 
        (if (n_5_7 = 0) then
          h_6_6
        else
          ((atIndex__d1 (n_5_7 - 1)) t_6_1))))) in
    (let rec h_6_7 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_8 -> 
        (if (n_5_8 = 0) then
          h_6_7
        else
          ((atIndex__d1 (n_5_8 - 1)) t_6_0))))) in
    (let rec h_6_8 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_9 -> 
        (if (n_5_9 = 0) then
          h_6_8
        else
          ((atIndex__d1 (n_5_9 - 1)) t_5_9))))) in
    (let rec h_6_9 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_0 -> 
        (if (n_6_0 = 0) then
          h_6_9
        else
          ((atIndex__d1 (n_6_0 - 1)) t_5_8))))) in
    (let rec h_7_0 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_1 -> 
        (if (n_6_1 = 0) then
          h_7_0
        else
          ((atIndex__d1 (n_6_1 - 1)) t_5_7))))) in
    (let rec h_7_1 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_2 -> 
        (if (n_6_2 = 0) then
          h_7_1
        else
          ((atIndex__d1 (n_6_2 - 1)) t_5_6))))) in
    (let rec h_7_2 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_3 -> 
        (if (n_6_3 = 0) then
          h_7_2
        else
          ((atIndex__d1 (n_6_3 - 1)) t_5_5))))) in
    (let rec h_7_3 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_4 -> 
        (if (n_6_4 = 0) then
          h_7_3
        else
          ((atIndex__d1 (n_6_4 - 1)) t_5_4))))) in
    (let rec h_7_4 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_5 -> 
        (if (n_6_5 = 0) then
          h_7_4
        else
          ((atIndex__d1 (n_6_5 - 1)) t_5_3))))) in
    (let rec h_7_5 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_6 -> 
        (if (n_6_6 = 0) then
          h_7_5
        else
          ((atIndex__d1 (n_6_6 - 1)) t_5_2))))) in
    (let rec h_7_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (if (n_6_7 = 0) then
        h_7_6
      else
        ((atIndex__d1 (n_6_7 - 1)) t_5_1))))
and combine__d0 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 f_8 f_9 _lh_dummy_1 =
  (let rec t_7_7 = (transpose__d0 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0))) in
    (let rec h_7_7 = (`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)) in
      (let rec t_7_8 = ((map__d0 f_8) t_7_7) in
        (let rec h_7_8 = (f_8 h_7_7) in
          (let rec t_7_9 = ((map__d2 f_9) t_7_8) in
            (let rec h_7_9 = (f_9 h_7_8) in
              ((mappend__d4 h_7_9) (concat__d1 t_7_9))))))))
and digits__d0 _lh_digits_arg1_0 n_4_0 =
  (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (fun n_3_0 -> 
    (failwith "error")) in
    (let rec h_3_9 = (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_1 -> 
        (if (n_3_1 = 0) then
          h_3_9
        else
          ((atIndex__d2 (n_3_1 - 1)) t_4_8))))) in
    (let rec h_4_0 = (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_2 -> 
        (if (n_3_2 = 0) then
          h_4_0
        else
          ((atIndex__d2 (n_3_2 - 1)) t_4_7))))) in
    (let rec h_4_1 = (`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_3 -> 
        (if (n_3_3 = 0) then
          h_4_1
        else
          ((atIndex__d2 (n_3_3 - 1)) t_4_6))))) in
    (let rec h_4_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_4 -> 
        (if (n_3_4 = 0) then
          h_4_2
        else
          ((atIndex__d2 (n_3_4 - 1)) t_4_5))))) in
    (let rec h_4_3 = (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_5 -> 
        (if (n_3_5 = 0) then
          h_4_3
        else
          ((atIndex__d2 (n_3_5 - 1)) t_4_4))))) in
    (let rec h_4_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_6 -> 
        (if (n_3_6 = 0) then
          h_4_4
        else
          ((atIndex__d2 (n_3_6 - 1)) t_4_3))))) in
    (let rec h_4_5 = (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_7 -> 
        (if (n_3_7 = 0) then
          h_4_5
        else
          ((atIndex__d2 (n_3_7 - 1)) t_4_2))))) in
    (let rec h_4_6 = (`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_8 -> 
        (if (n_3_8 = 0) then
          h_4_6
        else
          ((atIndex__d2 (n_3_8 - 1)) t_4_1))))) in
    (let rec h_4_7 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_9 -> 
        (if (n_3_9 = 0) then
          h_4_7
        else
          ((atIndex__d2 (n_3_9 - 1)) t_4_0))))) in
    (let rec h_4_8 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (if (n_4_0 = 0) then
        h_4_8
      else
        ((atIndex__d2 (n_4_0 - 1)) t_3_9))))
and join__d0 _lh_join_arg1_0 =
  ((foldr1__d0 (fun xs_0 ys_8 -> 
    ((mappend__d1 ((mappend__d2 xs_0) (let rec t_7 = (let rec t_8 = (fun ys_9 -> 
      ys_9) in
      (let rec h_7 = ' ' in
        (fun ys_1_0 -> 
          (`LH_C(h_7, ((mappend__d1 t_8) ys_1_0)))))) in
      (let rec h_8 = ' ' in
        (fun ys_1_1 -> 
          (`LH_C(h_8, ((mappend__d1 t_7) ys_1_1)))))))) ys_8))) _lh_join_arg1_0)
and mappend__d2 xs_1 ys_1_2 =
  (match xs_1 with
    | `LH_C(h_3_6, t_3_6) -> 
      (let rec t_3_7 = ((mappend__d2 t_3_6) ys_1_2) in
        (let rec h_3_7 = h_3_6 in
          (fun ys_1_3 -> 
            (`LH_C(h_3_7, ((mappend__d1 t_3_7) ys_1_3))))))
    | `LH_N -> 
      ys_1_2)
and mappend__d5 xs_3 ys_1_7 =
  (match xs_3 with
    | `LH_C(h_4_9, t_4_9) -> 
      (let rec t_5_0 = ((mappend__d5 t_4_9) ys_1_7) in
        (let rec h_5_0 = h_4_9 in
          (fun ys_1_8 -> 
            (`LH_C(h_5_0, ((mappend__d4 t_5_0) ys_1_8))))))
    | `LH_N -> 
      ys_1_7)
and picChar__d0 _lh_picChar_arg1_1_5 =
  (if (isUpper__d0 _lh_picChar_arg1_1_5) then
    ((atIndex__d0 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char 'A'))) (alphas__d0 0))
  else
    (if (isLower__d0 _lh_picChar_arg1_1_5) then
      ((atIndex__d1 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char 'a'))) (alphas__d1 0))
    else
      (if (isSpace__d0 _lh_picChar_arg1_1_5) then
        (blank__d0 0)
      else
        (if (isDigit__d0 _lh_picChar_arg1_1_5) then
          ((atIndex__d2 ((int_of_char _lh_picChar_arg1_1_5) - (int_of_char '0'))) (digits__d0 0))
        else
          (if (_lh_picChar_arg1_1_5 = '/') then
            (slant__d0 0)
          else
            (if (_lh_picChar_arg1_1_5 = '=') then
              (reverse__d0 (slant__d1 0))
            else
              (head__d0 ((mappend__d3 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1_6) _lh_picChar_arg1_1_5)) in
                (_lh_listcomp_fun_1_6 (punct__d0 0)))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))))
and punct__d0 _lh_punct_arg1_0 _lh_listcomp_fun_1_4 _lh_picChar_arg1_1_4 =
  (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (fun _lh_listcomp_fun_0 _lh_picChar_arg1_0 ys_0 -> 
    ys_0) in
    (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_picChar_LH_P2_1_0 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_0 = ';' in
        (fun _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_1 _lh_picChar_arg1_1 -> 
          (if (_lh_picChar_LH_P2_0_0 = _lh_picChar_arg1_1) then
            (let rec t_0 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_7) in
              (let rec h_0 = _lh_picChar_LH_P2_1_0 in
                (fun ys_1 -> 
                  (`LH_C(h_0, ((mappend__d3 t_0) ys_1))))))
          else
            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_7))))) in
      (fun _lh_listcomp_fun_2 _lh_picChar_arg1_2 -> 
        (((_lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_2) _lh_picChar_arg1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_picChar_LH_P2_1_1 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1 = ':' in
        (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_3 _lh_picChar_arg1_3 -> 
          (if (_lh_picChar_LH_P2_0_1 = _lh_picChar_arg1_3) then
            (let rec t_1 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_8) in
              (let rec h_1 = _lh_picChar_LH_P2_1_1 in
                (fun ys_2 -> 
                  (`LH_C(h_1, ((mappend__d3 t_1) ys_2))))))
          else
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_8))))) in
      (fun _lh_listcomp_fun_4 _lh_picChar_arg1_4 -> 
        (((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_4) _lh_picChar_arg1_4)))) in
    (let rec _lh_listcomp_fun_ls_h_2 = (let rec _lh_picChar_LH_P2_1_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_2 = '+' in
        (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_5 _lh_picChar_arg1_5 -> 
          (if (_lh_picChar_LH_P2_0_2 = _lh_picChar_arg1_5) then
            (let rec t_2 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9) in
              (let rec h_2 = _lh_picChar_LH_P2_1_2 in
                (fun ys_3 -> 
                  (`LH_C(h_2, ((mappend__d3 t_2) ys_3))))))
          else
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9))))) in
      (fun _lh_listcomp_fun_6 _lh_picChar_arg1_6 -> 
        (((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_6) _lh_picChar_arg1_6)))) in
    (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_picChar_LH_P2_1_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_3 = '-' in
        (fun _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_7 _lh_picChar_arg1_7 -> 
          (if (_lh_picChar_LH_P2_0_3 = _lh_picChar_arg1_7) then
            (let rec t_3 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_0) in
              (let rec h_3 = _lh_picChar_LH_P2_1_3 in
                (fun ys_4 -> 
                  (`LH_C(h_3, ((mappend__d3 t_3) ys_4))))))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_0))))) in
      (fun _lh_listcomp_fun_8 _lh_picChar_arg1_8 -> 
        (((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_8) _lh_picChar_arg1_8)))) in
    (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_picChar_LH_P2_1_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_4 = '!' in
        (fun _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_9 _lh_picChar_arg1_9 -> 
          (if (_lh_picChar_LH_P2_0_4 = _lh_picChar_arg1_9) then
            (let rec t_4 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_1) in
              (let rec h_4 = _lh_picChar_LH_P2_1_4 in
                (fun ys_5 -> 
                  (`LH_C(h_4, ((mappend__d3 t_4) ys_5))))))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_1))))) in
      (fun _lh_listcomp_fun_1_0 _lh_picChar_arg1_1_0 -> 
        (((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_1_0) _lh_picChar_arg1_1_0)))) in
    (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_picChar_LH_P2_1_5 = (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_5 = '?' in
        (fun _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_1_1 _lh_picChar_arg1_1_1 -> 
          (if (_lh_picChar_LH_P2_0_5 = _lh_picChar_arg1_1_1) then
            (let rec t_5 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_2) in
              (let rec h_5 = _lh_picChar_LH_P2_1_5 in
                (fun ys_6 -> 
                  (`LH_C(h_5, ((mappend__d3 t_5) ys_6))))))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_2))))) in
      (fun _lh_listcomp_fun_1_2 _lh_picChar_arg1_1_2 -> 
        (((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1_2) _lh_picChar_arg1_1_2)))) in
    (let rec _lh_listcomp_fun_ls_h_6 = (let rec _lh_picChar_LH_P2_1_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_6 = '.' in
        (fun _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_1_3 _lh_picChar_arg1_1_3 -> 
          (if (_lh_picChar_LH_P2_0_6 = _lh_picChar_arg1_1_3) then
            (let rec t_6 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3) in
              (let rec h_6 = _lh_picChar_LH_P2_1_6 in
                (fun ys_7 -> 
                  (`LH_C(h_6, ((mappend__d3 t_6) ys_7))))))
          else
            (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))))) in
      (((_lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_1_4) _lh_picChar_arg1_1_4)))
and replicate__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 _lh_popOutId_0_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (fun f_3_7 -> 
      (`LH_N))
  else
    (let rec t_1_4_0 = ((replicate__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_1_4_0 = _lh_replicate_arg2_0 in
        ((mappend__d0 h_1_4_0) (concat__d0 t_1_4_0)))))
and reverse__d0 ls_6 =
  ((reverse_helper__d0 ls_6) (`LH_N))
and say__d0 _lh_say_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun x_0 -> 
            (`LH_C('n', x_0))) (unlines__d0 _lh_funcomp_x_3))) ((map__d0 join__d0) _lh_funcomp_x_2))) (transpose__d0 _lh_funcomp_x_1))) ((map__d1 picChar__d0) _lh_funcomp_x_0))) _lh_say_arg1_0)
and slant__d1 _lh_slant_arg1_1 a_6 =
  (let rec t_1_3_5 = (let rec t_1_3_6 = (let rec t_1_3_7 = (let rec t_1_3_8 = (let rec t_1_3_9 = (fun a_1 -> 
    a_1) in
    (let rec h_1_3_5 = (`LH_N) in
      (fun a_2 -> 
        ((reverse_helper__d0 t_1_3_9) (`LH_C(h_1_3_5, a_2)))))) in
    (let rec h_1_3_6 = (`LH_C(' ', (`LH_N))) in
      (fun a_3 -> 
        ((reverse_helper__d0 t_1_3_8) (`LH_C(h_1_3_6, a_3)))))) in
    (let rec h_1_3_7 = (`LH_C(' ', (`LH_C(' ', (`LH_N))))) in
      (fun a_4 -> 
        ((reverse_helper__d0 t_1_3_7) (`LH_C(h_1_3_7, a_4)))))) in
    (let rec h_1_3_8 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) in
      (fun a_5 -> 
        ((reverse_helper__d0 t_1_3_6) (`LH_C(h_1_3_8, a_5)))))) in
    (let rec h_1_3_9 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))) in
      ((reverse_helper__d0 t_1_3_5) (`LH_C(h_1_3_9, a_6)))))
and testBanner_nofib__d0 _lh_testBanner_nofib_arg1_0 =
  (say__d0 (concat__d0 ((replicate__d0 _lh_testBanner_nofib_arg1_0) (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (let rec t_8_5 = (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (fun ys_2_1 -> 
    ys_2_1) in
    (let rec h_8_1 = '?' in
      (fun ys_2_2 -> 
        (let rec t_1_0_8 = ((mappend__d0 t_1_0_7) ys_2_2) in
          (let rec h_8_2 = h_8_1 in
            (fun f_1_0 -> 
              (`LH_C((f_1_0 h_8_2), ((map__d1 f_1_0) t_1_0_8))))))))) in
    (let rec h_8_3 = 'r' in
      (fun ys_2_3 -> 
        (let rec t_1_0_9 = ((mappend__d0 t_1_0_6) ys_2_3) in
          (let rec h_8_4 = h_8_3 in
            (fun f_1_1 -> 
              (`LH_C((f_1_1 h_8_4), ((map__d1 f_1_1) t_1_0_9))))))))) in
    (let rec h_8_5 = 'e' in
      (fun ys_2_4 -> 
        (let rec t_1_1_0 = ((mappend__d0 t_1_0_5) ys_2_4) in
          (let rec h_8_6 = h_8_5 in
            (fun f_1_2 -> 
              (`LH_C((f_1_2 h_8_6), ((map__d1 f_1_2) t_1_1_0))))))))) in
    (let rec h_8_7 = 'n' in
      (fun ys_2_5 -> 
        (let rec t_1_1_1 = ((mappend__d0 t_1_0_4) ys_2_5) in
          (let rec h_8_8 = h_8_7 in
            (fun f_1_3 -> 
              (`LH_C((f_1_3 h_8_8), ((map__d1 f_1_3) t_1_1_1))))))))) in
    (let rec h_8_9 = 'n' in
      (fun ys_2_6 -> 
        (let rec t_1_1_2 = ((mappend__d0 t_1_0_3) ys_2_6) in
          (let rec h_9_0 = h_8_9 in
            (fun f_1_4 -> 
              (`LH_C((f_1_4 h_9_0), ((map__d1 f_1_4) t_1_1_2))))))))) in
    (let rec h_9_1 = 'a' in
      (fun ys_2_7 -> 
        (let rec t_1_1_3 = ((mappend__d0 t_1_0_2) ys_2_7) in
          (let rec h_9_2 = h_9_1 in
            (fun f_1_5 -> 
              (`LH_C((f_1_5 h_9_2), ((map__d1 f_1_5) t_1_1_3))))))))) in
    (let rec h_9_3 = 'b' in
      (fun ys_2_8 -> 
        (let rec t_1_1_4 = ((mappend__d0 t_1_0_1) ys_2_8) in
          (let rec h_9_4 = h_9_3 in
            (fun f_1_6 -> 
              (`LH_C((f_1_6 h_9_4), ((map__d1 f_1_6) t_1_1_4))))))))) in
    (let rec h_9_5 = ' ' in
      (fun ys_2_9 -> 
        (let rec t_1_1_5 = ((mappend__d0 t_1_0_0) ys_2_9) in
          (let rec h_9_6 = h_9_5 in
            (fun f_1_7 -> 
              (`LH_C((f_1_7 h_9_6), ((map__d1 f_1_7) t_1_1_5))))))))) in
    (let rec h_9_7 = 't' in
      (fun ys_3_0 -> 
        (let rec t_1_1_6 = ((mappend__d0 t_9_9) ys_3_0) in
          (let rec h_9_8 = h_9_7 in
            (fun f_1_8 -> 
              (`LH_C((f_1_8 h_9_8), ((map__d1 f_1_8) t_1_1_6))))))))) in
    (let rec h_9_9 = 'a' in
      (fun ys_3_1 -> 
        (let rec t_1_1_7 = ((mappend__d0 t_9_8) ys_3_1) in
          (let rec h_1_0_0 = h_9_9 in
            (fun f_1_9 -> 
              (`LH_C((f_1_9 h_1_0_0), ((map__d1 f_1_9) t_1_1_7))))))))) in
    (let rec h_1_0_1 = 'e' in
      (fun ys_3_2 -> 
        (let rec t_1_1_8 = ((mappend__d0 t_9_7) ys_3_2) in
          (let rec h_1_0_2 = h_1_0_1 in
            (fun f_2_0 -> 
              (`LH_C((f_2_0 h_1_0_2), ((map__d1 f_2_0) t_1_1_8))))))))) in
    (let rec h_1_0_3 = 'r' in
      (fun ys_3_3 -> 
        (let rec t_1_1_9 = ((mappend__d0 t_9_6) ys_3_3) in
          (let rec h_1_0_4 = h_1_0_3 in
            (fun f_2_1 -> 
              (`LH_C((f_2_1 h_1_0_4), ((map__d1 f_2_1) t_1_1_9))))))))) in
    (let rec h_1_0_5 = 'g' in
      (fun ys_3_4 -> 
        (let rec t_1_2_0 = ((mappend__d0 t_9_5) ys_3_4) in
          (let rec h_1_0_6 = h_1_0_5 in
            (fun f_2_2 -> 
              (`LH_C((f_2_2 h_1_0_6), ((map__d1 f_2_2) t_1_2_0))))))))) in
    (let rec h_1_0_7 = ' ' in
      (fun ys_3_5 -> 
        (let rec t_1_2_1 = ((mappend__d0 t_9_4) ys_3_5) in
          (let rec h_1_0_8 = h_1_0_7 in
            (fun f_2_3 -> 
              (`LH_C((f_2_3 h_1_0_8), ((map__d1 f_2_3) t_1_2_1))))))))) in
    (let rec h_1_0_9 = 'a' in
      (fun ys_3_6 -> 
        (let rec t_1_2_2 = ((mappend__d0 t_9_3) ys_3_6) in
          (let rec h_1_1_0 = h_1_0_9 in
            (fun f_2_4 -> 
              (`LH_C((f_2_4 h_1_1_0), ((map__d1 f_2_4) t_1_2_2))))))))) in
    (let rec h_1_1_1 = ' ' in
      (fun ys_3_7 -> 
        (let rec t_1_2_3 = ((mappend__d0 t_9_2) ys_3_7) in
          (let rec h_1_1_2 = h_1_1_1 in
            (fun f_2_5 -> 
              (`LH_C((f_2_5 h_1_1_2), ((map__d1 f_2_5) t_1_2_3))))))))) in
    (let rec h_1_1_3 = 't' in
      (fun ys_3_8 -> 
        (let rec t_1_2_4 = ((mappend__d0 t_9_1) ys_3_8) in
          (let rec h_1_1_4 = h_1_1_3 in
            (fun f_2_6 -> 
              (`LH_C((f_2_6 h_1_1_4), ((map__d1 f_2_6) t_1_2_4))))))))) in
    (let rec h_1_1_5 = 'o' in
      (fun ys_3_9 -> 
        (let rec t_1_2_5 = ((mappend__d0 t_9_0) ys_3_9) in
          (let rec h_1_1_6 = h_1_1_5 in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_1_1_6), ((map__d1 f_2_7) t_1_2_5))))))))) in
    (let rec h_1_1_7 = 'n' in
      (fun ys_4_0 -> 
        (let rec t_1_2_6 = ((mappend__d0 t_8_9) ys_4_0) in
          (let rec h_1_1_8 = h_1_1_7 in
            (fun f_2_8 -> 
              (`LH_C((f_2_8 h_1_1_8), ((map__d1 f_2_8) t_1_2_6))))))))) in
    (let rec h_1_1_9 = ' ' in
      (fun ys_4_1 -> 
        (let rec t_1_2_7 = ((mappend__d0 t_8_8) ys_4_1) in
          (let rec h_1_2_0 = h_1_1_9 in
            (fun f_2_9 -> 
              (`LH_C((f_2_9 h_1_2_0), ((map__d1 f_2_9) t_1_2_7))))))))) in
    (let rec h_1_2_1 = 's' in
      (fun ys_4_2 -> 
        (let rec t_1_2_8 = ((mappend__d0 t_8_7) ys_4_2) in
          (let rec h_1_2_2 = h_1_2_1 in
            (fun f_3_0 -> 
              (`LH_C((f_3_0 h_1_2_2), ((map__d1 f_3_0) t_1_2_8))))))))) in
    (let rec h_1_2_3 = 'i' in
      (fun ys_4_3 -> 
        (let rec t_1_2_9 = ((mappend__d0 t_8_6) ys_4_3) in
          (let rec h_1_2_4 = h_1_2_3 in
            (fun f_3_1 -> 
              (`LH_C((f_3_1 h_1_2_4), ((map__d1 f_3_1) t_1_2_9))))))))) in
    (let rec h_1_2_5 = 'h' in
      (fun ys_4_4 -> 
        (let rec t_1_3_0 = ((mappend__d0 t_8_5) ys_4_4) in
          (let rec h_1_2_6 = h_1_2_5 in
            (fun f_3_2 -> 
              (`LH_C((f_3_2 h_1_2_6), ((map__d1 f_3_2) t_1_3_0))))))))) in
    (let rec h_1_2_7 = 't' in
      (fun ys_4_5 -> 
        (let rec t_1_3_1 = ((mappend__d0 t_8_4) ys_4_5) in
          (let rec h_1_2_8 = h_1_2_7 in
            (fun f_3_3 -> 
              (`LH_C((f_3_3 h_1_2_8), ((map__d1 f_3_3) t_1_3_1))))))))) in
    (let rec h_1_2_9 = ' ' in
      (fun ys_4_6 -> 
        (let rec t_1_3_2 = ((mappend__d0 t_8_3) ys_4_6) in
          (let rec h_1_3_0 = h_1_2_9 in
            (fun f_3_4 -> 
              (`LH_C((f_3_4 h_1_3_0), ((map__d1 f_3_4) t_1_3_2))))))))) in
    (let rec h_1_3_1 = 's' in
      (fun ys_4_7 -> 
        (let rec t_1_3_3 = ((mappend__d0 t_8_2) ys_4_7) in
          (let rec h_1_3_2 = h_1_3_1 in
            (fun f_3_5 -> 
              (`LH_C((f_3_5 h_1_3_2), ((map__d1 f_3_5) t_1_3_3))))))))) in
    (let rec h_1_3_3 = 'I' in
      (fun ys_4_8 -> 
        (let rec t_1_3_4 = ((mappend__d0 t_8_1) ys_4_8) in
          (let rec h_1_3_4 = h_1_3_3 in
            (fun f_3_6 -> 
              (`LH_C((f_3_6 h_1_3_4), ((map__d1 f_3_6) t_1_3_4))))))))))))
and transpose__d0 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (fun f_1 f_2 _lh_dummy_0 -> 
        (`LH_N))
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose__d0 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_1 = (unzip__d0 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_1_4) -> 
                (match _lh_listcomp_fun_ls_h_7 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (let rec t_3_5 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_4) in
                      (let rec h_3_5 = (let rec _lh_unzip_LH_P2_1_0 = _lh_transpose_LH_C_1_2 in
                        (let rec _lh_unzip_LH_P2_0_0 = _lh_transpose_LH_C_0_2 in
                          (fun asbs_1 -> 
                            (let rec _lh_matchIdent_2 = asbs_1 in
                              (match _lh_matchIdent_2 with
                                | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_3 i_0 -> 
                          ((f_3 h_3_5) (((foldr__d0 f_3) i_0) t_3_5)))))
                  | _ -> 
                    (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_4))
              | `LH_N -> 
                (fun f_4 i_1 -> 
                  i_1))) in
            (_lh_listcomp_fun_1_5 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_1 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine__d0 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0 _lh_unlines_arg1_0 =
  (concat__d1 ((map__d2 (fun l_0 -> 
    ((mappend__d5 l_0) (let rec t_3_8 = (fun ys_1_4 -> 
      ys_1_4) in
      (let rec h_3_8 = 'n' in
        (fun ys_1_5 -> 
          (`LH_C(h_3_8, ((mappend__d4 t_3_8) ys_1_5))))))))) _lh_unlines_arg1_0))
and unzip__d0 _lh_unzip_arg1_0 =
  (((foldr__d0 (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_0 = ab_0 in
      (_lh_matchIdent_0 asbs_0)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Banner_nofib" (fun () -> ignore (let open Module_original in ((testBanner_nofib__d0 100))));
  Bench.Test.create ~name:"lumberhack_Banner_nofib" (fun () -> ignore (let open Module_lumberhack in ((testBanner_nofib__d0 100))));
  Bench.Test.create ~name:"lumberhack_pop_out_Banner_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testBanner_nofib__d0 100))));
])
