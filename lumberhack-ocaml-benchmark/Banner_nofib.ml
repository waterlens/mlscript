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

(* lumberhack *)
let rec atIndex__d0__d0 n_1 ls_0 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (ls_0 n_1));;
let rec atIndex__d1__d0 n_4_3 ls_5 =
  (if (n_4_3 < 0) then
    (failwith "error")
  else
    (ls_5 n_4_3));;
let rec atIndex__d2__d0 n_2 ls_1 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (ls_1 n_2));;
let rec blank__d0__d0 _lh_blank_arg1_0 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec concat__d0__d0 lss_2 =
  (lss_2 99);;
let rec foldr1__d0__d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1__d0__d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0__d0 f_3 i_0 ls_2 =
  ((ls_2 f_3) i_0);;
let rec head__d0__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_4_9, t_4_9) -> 
      h_4_9
    | `LH_N -> 
      (failwith "error"));;
let rec isDigit__d0__d0 _lh_isDigit_arg1_0 =
  (let rec n_4_4 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_4_4 >= 48) && (n_4_4 <= 57)));;
let rec isLower__d0__d0 _lh_isLower_arg1_0 =
  (let rec n_0 = (int_of_char _lh_isLower_arg1_0) in
    ((n_0 >= 97) && (n_0 <= 122)));;
let rec isSpace__d0__d0 _lh_isSpace_arg1_0 =
  (let rec n_4_2 = (int_of_char _lh_isSpace_arg1_0) in
    (n_4_2 = 32));;
let rec isUpper__d0__d0 _lh_isUpper_arg1_0 =
  (let rec n_3_0 = (int_of_char _lh_isUpper_arg1_0) in
    ((n_3_0 >= 65) && (n_3_0 <= 90)));;
let rec map__d0__d0 f_1_0 ls_8 =
  (ls_8 f_1_0);;
let rec map__d1__d0 f_8 ls_3 =
  (ls_3 f_8);;
let rec map__d2__d0 f_9 ls_6 =
  (ls_6 f_9);;
let rec mappend__d0__d0 xs_5 ys_9 =
  (xs_5 ys_9);;
let rec mappend__d1__d0 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec mappend__d3__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d4__d0 xs_4 ys_8 =
  (match xs_4 with
    | `LH_C(h_5_2, t_5_2) -> 
      (`LH_C(h_5_2, ((mappend__d4__d0 t_5_2) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend__d4__d1 xs_7 ys_1_9 =
  (match xs_7 with
    | `LH_C(h_8_7, t_8_7) -> 
      (`LH_C(h_8_7, ((mappend__d4__d1 t_8_7) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d5__d0 xs_6 ys_1_0 =
  (match xs_6 with
    | `LH_C(h_5_3, t_5_3) -> 
      (`LH_C(h_5_3, ((mappend__d5__d0 t_5_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec reverse_helper__d0__d0 ls_9 a_6 =
  (ls_9 a_6);;
let rec slant__d0__d0 _lh_slant_arg1_1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec alphas__d0__d0 _lh_alphas_arg1_1 =
  (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (let rec t_7_9 = (fun n_4_5 -> 
    (failwith "error")) in
    (let rec h_5_4 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_6 -> 
        (if (n_4_6 = 0) then
          h_5_4
        else
          ((atIndex__d0__d0 (n_4_6 - 1)) t_7_9))))) in
    (let rec h_5_5 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_7 -> 
        (if (n_4_7 = 0) then
          h_5_5
        else
          ((atIndex__d0__d0 (n_4_7 - 1)) t_7_8))))) in
    (let rec h_5_6 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_8 -> 
        (if (n_4_8 = 0) then
          h_5_6
        else
          ((atIndex__d0__d0 (n_4_8 - 1)) t_7_7))))) in
    (let rec h_5_7 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_9 -> 
        (if (n_4_9 = 0) then
          h_5_7
        else
          ((atIndex__d0__d0 (n_4_9 - 1)) t_7_6))))) in
    (let rec h_5_8 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_0 -> 
        (if (n_5_0 = 0) then
          h_5_8
        else
          ((atIndex__d0__d0 (n_5_0 - 1)) t_7_5))))) in
    (let rec h_5_9 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_1 -> 
        (if (n_5_1 = 0) then
          h_5_9
        else
          ((atIndex__d0__d0 (n_5_1 - 1)) t_7_4))))) in
    (let rec h_6_0 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_2 -> 
        (if (n_5_2 = 0) then
          h_6_0
        else
          ((atIndex__d0__d0 (n_5_2 - 1)) t_7_3))))) in
    (let rec h_6_1 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_3 -> 
        (if (n_5_3 = 0) then
          h_6_1
        else
          ((atIndex__d0__d0 (n_5_3 - 1)) t_7_2))))) in
    (let rec h_6_2 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_4 -> 
        (if (n_5_4 = 0) then
          h_6_2
        else
          ((atIndex__d0__d0 (n_5_4 - 1)) t_7_1))))) in
    (let rec h_6_3 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_5 -> 
        (if (n_5_5 = 0) then
          h_6_3
        else
          ((atIndex__d0__d0 (n_5_5 - 1)) t_7_0))))) in
    (let rec h_6_4 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_6 -> 
        (if (n_5_6 = 0) then
          h_6_4
        else
          ((atIndex__d0__d0 (n_5_6 - 1)) t_6_9))))) in
    (let rec h_6_5 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_7 -> 
        (if (n_5_7 = 0) then
          h_6_5
        else
          ((atIndex__d0__d0 (n_5_7 - 1)) t_6_8))))) in
    (let rec h_6_6 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_8 -> 
        (if (n_5_8 = 0) then
          h_6_6
        else
          ((atIndex__d0__d0 (n_5_8 - 1)) t_6_7))))) in
    (let rec h_6_7 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5_9 -> 
        (if (n_5_9 = 0) then
          h_6_7
        else
          ((atIndex__d0__d0 (n_5_9 - 1)) t_6_6))))) in
    (let rec h_6_8 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_0 -> 
        (if (n_6_0 = 0) then
          h_6_8
        else
          ((atIndex__d0__d0 (n_6_0 - 1)) t_6_5))))) in
    (let rec h_6_9 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_1 -> 
        (if (n_6_1 = 0) then
          h_6_9
        else
          ((atIndex__d0__d0 (n_6_1 - 1)) t_6_4))))) in
    (let rec h_7_0 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_2 -> 
        (if (n_6_2 = 0) then
          h_7_0
        else
          ((atIndex__d0__d0 (n_6_2 - 1)) t_6_3))))) in
    (let rec h_7_1 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_3 -> 
        (if (n_6_3 = 0) then
          h_7_1
        else
          ((atIndex__d0__d0 (n_6_3 - 1)) t_6_2))))) in
    (let rec h_7_2 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_4 -> 
        (if (n_6_4 = 0) then
          h_7_2
        else
          ((atIndex__d0__d0 (n_6_4 - 1)) t_6_1))))) in
    (let rec h_7_3 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_5 -> 
        (if (n_6_5 = 0) then
          h_7_3
        else
          ((atIndex__d0__d0 (n_6_5 - 1)) t_6_0))))) in
    (let rec h_7_4 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_6 -> 
        (if (n_6_6 = 0) then
          h_7_4
        else
          ((atIndex__d0__d0 (n_6_6 - 1)) t_5_9))))) in
    (let rec h_7_5 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_7 -> 
        (if (n_6_7 = 0) then
          h_7_5
        else
          ((atIndex__d0__d0 (n_6_7 - 1)) t_5_8))))) in
    (let rec h_7_6 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_8 -> 
        (if (n_6_8 = 0) then
          h_7_6
        else
          ((atIndex__d0__d0 (n_6_8 - 1)) t_5_7))))) in
    (let rec h_7_7 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6_9 -> 
        (if (n_6_9 = 0) then
          h_7_7
        else
          ((atIndex__d0__d0 (n_6_9 - 1)) t_5_6))))) in
    (let rec h_7_8 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_0 -> 
        (if (n_7_0 = 0) then
          h_7_8
        else
          ((atIndex__d0__d0 (n_7_0 - 1)) t_5_5))))) in
    (let rec h_7_9 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7_1 -> 
        (if (n_7_1 = 0) then
          h_7_9
        else
          ((atIndex__d0__d0 (n_7_1 - 1)) t_5_4)))))
and alphas__d1__d0 _lh_alphas_arg1_0 =
  (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (fun n_3 -> 
    (failwith "error")) in
    (let rec h_1_0 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4 -> 
        (if (n_4 = 0) then
          h_1_0
        else
          ((atIndex__d1__d0 (n_4 - 1)) t_3_5))))) in
    (let rec h_1_1 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_5 -> 
        (if (n_5 = 0) then
          h_1_1
        else
          ((atIndex__d1__d0 (n_5 - 1)) t_3_4))))) in
    (let rec h_1_2 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_6 -> 
        (if (n_6 = 0) then
          h_1_2
        else
          ((atIndex__d1__d0 (n_6 - 1)) t_3_3))))) in
    (let rec h_1_3 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_7 -> 
        (if (n_7 = 0) then
          h_1_3
        else
          ((atIndex__d1__d0 (n_7 - 1)) t_3_2))))) in
    (let rec h_1_4 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_8 -> 
        (if (n_8 = 0) then
          h_1_4
        else
          ((atIndex__d1__d0 (n_8 - 1)) t_3_1))))) in
    (let rec h_1_5 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9 -> 
        (if (n_9 = 0) then
          h_1_5
        else
          ((atIndex__d1__d0 (n_9 - 1)) t_3_0))))) in
    (let rec h_1_6 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0 -> 
        (if (n_1_0 = 0) then
          h_1_6
        else
          ((atIndex__d1__d0 (n_1_0 - 1)) t_2_9))))) in
    (let rec h_1_7 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1 -> 
        (if (n_1_1 = 0) then
          h_1_7
        else
          ((atIndex__d1__d0 (n_1_1 - 1)) t_2_8))))) in
    (let rec h_1_8 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_2 -> 
        (if (n_1_2 = 0) then
          h_1_8
        else
          ((atIndex__d1__d0 (n_1_2 - 1)) t_2_7))))) in
    (let rec h_1_9 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_3 -> 
        (if (n_1_3 = 0) then
          h_1_9
        else
          ((atIndex__d1__d0 (n_1_3 - 1)) t_2_6))))) in
    (let rec h_2_0 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_4 -> 
        (if (n_1_4 = 0) then
          h_2_0
        else
          ((atIndex__d1__d0 (n_1_4 - 1)) t_2_5))))) in
    (let rec h_2_1 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5 -> 
        (if (n_1_5 = 0) then
          h_2_1
        else
          ((atIndex__d1__d0 (n_1_5 - 1)) t_2_4))))) in
    (let rec h_2_2 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6 -> 
        (if (n_1_6 = 0) then
          h_2_2
        else
          ((atIndex__d1__d0 (n_1_6 - 1)) t_2_3))))) in
    (let rec h_2_3 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7 -> 
        (if (n_1_7 = 0) then
          h_2_3
        else
          ((atIndex__d1__d0 (n_1_7 - 1)) t_2_2))))) in
    (let rec h_2_4 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_8 -> 
        (if (n_1_8 = 0) then
          h_2_4
        else
          ((atIndex__d1__d0 (n_1_8 - 1)) t_2_1))))) in
    (let rec h_2_5 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9 -> 
        (if (n_1_9 = 0) then
          h_2_5
        else
          ((atIndex__d1__d0 (n_1_9 - 1)) t_2_0))))) in
    (let rec h_2_6 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_0 -> 
        (if (n_2_0 = 0) then
          h_2_6
        else
          ((atIndex__d1__d0 (n_2_0 - 1)) t_1_9))))) in
    (let rec h_2_7 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_1 -> 
        (if (n_2_1 = 0) then
          h_2_7
        else
          ((atIndex__d1__d0 (n_2_1 - 1)) t_1_8))))) in
    (let rec h_2_8 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_2 -> 
        (if (n_2_2 = 0) then
          h_2_8
        else
          ((atIndex__d1__d0 (n_2_2 - 1)) t_1_7))))) in
    (let rec h_2_9 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_3 -> 
        (if (n_2_3 = 0) then
          h_2_9
        else
          ((atIndex__d1__d0 (n_2_3 - 1)) t_1_6))))) in
    (let rec h_3_0 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_4 -> 
        (if (n_2_4 = 0) then
          h_3_0
        else
          ((atIndex__d1__d0 (n_2_4 - 1)) t_1_5))))) in
    (let rec h_3_1 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_5 -> 
        (if (n_2_5 = 0) then
          h_3_1
        else
          ((atIndex__d1__d0 (n_2_5 - 1)) t_1_4))))) in
    (let rec h_3_2 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_6 -> 
        (if (n_2_6 = 0) then
          h_3_2
        else
          ((atIndex__d1__d0 (n_2_6 - 1)) t_1_3))))) in
    (let rec h_3_3 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_7 -> 
        (if (n_2_7 = 0) then
          h_3_3
        else
          ((atIndex__d1__d0 (n_2_7 - 1)) t_1_2))))) in
    (let rec h_3_4 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_8 -> 
        (if (n_2_8 = 0) then
          h_3_4
        else
          ((atIndex__d1__d0 (n_2_8 - 1)) t_1_1))))) in
    (let rec h_3_5 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_9 -> 
        (if (n_2_9 = 0) then
          h_3_5
        else
          ((atIndex__d1__d0 (n_2_9 - 1)) t_1_0)))))
and combine__d0__d0 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (let rec t_0 = (transpose__d0__d0 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0))) in
    (let rec h_0 = (`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)) in
      (fun f_0 -> 
        (let rec t_1 = ((map__d0__d0 f_0) t_0) in
          (let rec h_1 = (f_0 h_0) in
            (fun f_1 -> 
              (`LH_C((f_1 h_1), ((map__d2__d0 f_1) t_1)))))))))
and concat__d1__d0 lss_0 =
  (match lss_0 with
    | `LH_C(h_3_7, t_3_7) -> 
      ((mappend__d4__d1 h_3_7) (concat__d1__d1 t_3_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_8, t_3_8) -> 
      ((mappend__d4__d0 h_3_8) (concat__d1__d1 t_3_8))
    | `LH_N -> 
      (`LH_N))
and digits__d0__d0 _lh_digits_arg1_0 =
  (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (fun n_3_1 -> 
    (failwith "error")) in
    (let rec h_3_9 = (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_2 -> 
        (if (n_3_2 = 0) then
          h_3_9
        else
          ((atIndex__d2__d0 (n_3_2 - 1)) t_4_8))))) in
    (let rec h_4_0 = (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_3 -> 
        (if (n_3_3 = 0) then
          h_4_0
        else
          ((atIndex__d2__d0 (n_3_3 - 1)) t_4_7))))) in
    (let rec h_4_1 = (`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_4 -> 
        (if (n_3_4 = 0) then
          h_4_1
        else
          ((atIndex__d2__d0 (n_3_4 - 1)) t_4_6))))) in
    (let rec h_4_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_5 -> 
        (if (n_3_5 = 0) then
          h_4_2
        else
          ((atIndex__d2__d0 (n_3_5 - 1)) t_4_5))))) in
    (let rec h_4_3 = (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_6 -> 
        (if (n_3_6 = 0) then
          h_4_3
        else
          ((atIndex__d2__d0 (n_3_6 - 1)) t_4_4))))) in
    (let rec h_4_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_7 -> 
        (if (n_3_7 = 0) then
          h_4_4
        else
          ((atIndex__d2__d0 (n_3_7 - 1)) t_4_3))))) in
    (let rec h_4_5 = (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_8 -> 
        (if (n_3_8 = 0) then
          h_4_5
        else
          ((atIndex__d2__d0 (n_3_8 - 1)) t_4_2))))) in
    (let rec h_4_6 = (`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_3_9 -> 
        (if (n_3_9 = 0) then
          h_4_6
        else
          ((atIndex__d2__d0 (n_3_9 - 1)) t_4_1))))) in
    (let rec h_4_7 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_0 -> 
        (if (n_4_0 = 0) then
          h_4_7
        else
          ((atIndex__d2__d0 (n_4_0 - 1)) t_4_0))))) in
    (let rec h_4_8 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_4_1 -> 
        (if (n_4_1 = 0) then
          h_4_8
        else
          ((atIndex__d2__d0 (n_4_1 - 1)) t_3_9)))))
and join__d0__d0 _lh_join_arg1_0 =
  ((foldr1__d0__d0 (fun xs_3 ys_4 -> 
    ((mappend__d1__d0 ((mappend__d2__d0 xs_3) (let rec t_5_0 = (let rec t_5_1 = (fun ys_5 -> 
      ys_5) in
      (let rec h_5_0 = ' ' in
        (fun ys_6 -> 
          (`LH_C(h_5_0, ((mappend__d1__d0 t_5_1) ys_6)))))) in
      (let rec h_5_1 = ' ' in
        (fun ys_7 -> 
          (`LH_C(h_5_1, ((mappend__d1__d0 t_5_0) ys_7)))))))) ys_4))) _lh_join_arg1_0)
and mappend__d2__d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_8, t_8) -> 
      (let rec t_9 = ((mappend__d2__d0 t_8) ys_1) in
        (let rec h_9 = h_8 in
          (fun ys_2 -> 
            (`LH_C(h_9, ((mappend__d1__d0 t_9) ys_2))))))
    | `LH_N -> 
      ys_1)
and picChar__d0__d0 _lh_picChar_arg1_0 =
  (if (isUpper__d0__d0 _lh_picChar_arg1_0) then
    ((atIndex__d0__d0 ((int_of_char _lh_picChar_arg1_0) - (int_of_char 'A'))) (alphas__d0__d0 0))
  else
    (if (isLower__d0__d0 _lh_picChar_arg1_0) then
      ((atIndex__d1__d0 ((int_of_char _lh_picChar_arg1_0) - (int_of_char 'a'))) (alphas__d1__d0 0))
    else
      (if (isSpace__d0__d0 _lh_picChar_arg1_0) then
        (blank__d0__d0 0)
      else
        (if (isDigit__d0__d0 _lh_picChar_arg1_0) then
          ((atIndex__d2__d0 ((int_of_char _lh_picChar_arg1_0) - (int_of_char '0'))) (digits__d0__d0 0))
        else
          (if (_lh_picChar_arg1_0 = '/') then
            (slant__d0__d0 0)
          else
            (if (_lh_picChar_arg1_0 = '=') then
              (reverse__d0__d0 (slant__d1__d0 0))
            else
              (head__d0__d0 ((mappend__d3__d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1) _lh_picChar_arg1_0)) in
                (_lh_listcomp_fun_1 (punct__d0__d0 0)))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))))
and punct__d0__d0 _lh_punct_arg1_0 =
  (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_2 _lh_picChar_arg1_1 ys_1_1 -> 
    ys_1_1) in
    (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_picChar_LH_P2_1_0 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_0 = ';' in
        (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_3 _lh_picChar_arg1_2 -> 
          (if (_lh_picChar_LH_P2_0_0 = _lh_picChar_arg1_2) then
            (let rec t_8_0 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_8) in
              (let rec h_8_0 = _lh_picChar_LH_P2_1_0 in
                (fun ys_1_2 -> 
                  (`LH_C(h_8_0, ((mappend__d3__d0 t_8_0) ys_1_2))))))
          else
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_8))))) in
      (fun _lh_listcomp_fun_4 _lh_picChar_arg1_3 -> 
        (((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_7) _lh_listcomp_fun_4) _lh_picChar_arg1_3)))) in
    (let rec _lh_listcomp_fun_ls_h_2 = (let rec _lh_picChar_LH_P2_1_1 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1 = ':' in
        (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_5 _lh_picChar_arg1_4 -> 
          (if (_lh_picChar_LH_P2_0_1 = _lh_picChar_arg1_4) then
            (let rec t_8_1 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9) in
              (let rec h_8_1 = _lh_picChar_LH_P2_1_1 in
                (fun ys_1_3 -> 
                  (`LH_C(h_8_1, ((mappend__d3__d0 t_8_1) ys_1_3))))))
          else
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9))))) in
      (fun _lh_listcomp_fun_6 _lh_picChar_arg1_5 -> 
        (((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_6) _lh_picChar_arg1_5)))) in
    (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_picChar_LH_P2_1_2 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_2 = '+' in
        (fun _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_7 _lh_picChar_arg1_6 -> 
          (if (_lh_picChar_LH_P2_0_2 = _lh_picChar_arg1_6) then
            (let rec t_8_2 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_0) in
              (let rec h_8_2 = _lh_picChar_LH_P2_1_2 in
                (fun ys_1_4 -> 
                  (`LH_C(h_8_2, ((mappend__d3__d0 t_8_2) ys_1_4))))))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_0))))) in
      (fun _lh_listcomp_fun_8 _lh_picChar_arg1_7 -> 
        (((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_8) _lh_picChar_arg1_7)))) in
    (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_picChar_LH_P2_1_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_3 = '-' in
        (fun _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_9 _lh_picChar_arg1_8 -> 
          (if (_lh_picChar_LH_P2_0_3 = _lh_picChar_arg1_8) then
            (let rec t_8_3 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_1) in
              (let rec h_8_3 = _lh_picChar_LH_P2_1_3 in
                (fun ys_1_5 -> 
                  (`LH_C(h_8_3, ((mappend__d3__d0 t_8_3) ys_1_5))))))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_1))))) in
      (fun _lh_listcomp_fun_1_0 _lh_picChar_arg1_9 -> 
        (((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_1_0) _lh_picChar_arg1_9)))) in
    (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_picChar_LH_P2_1_4 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_4 = '!' in
        (fun _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_1_1 _lh_picChar_arg1_1_0 -> 
          (if (_lh_picChar_LH_P2_0_4 = _lh_picChar_arg1_1_0) then
            (let rec t_8_4 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_2) in
              (let rec h_8_4 = _lh_picChar_LH_P2_1_4 in
                (fun ys_1_6 -> 
                  (`LH_C(h_8_4, ((mappend__d3__d0 t_8_4) ys_1_6))))))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_2))))) in
      (fun _lh_listcomp_fun_1_2 _lh_picChar_arg1_1_1 -> 
        (((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_1_2) _lh_picChar_arg1_1_1)))) in
    (let rec _lh_listcomp_fun_ls_h_6 = (let rec _lh_picChar_LH_P2_1_5 = (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_5 = '?' in
        (fun _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_1_3 _lh_picChar_arg1_1_2 -> 
          (if (_lh_picChar_LH_P2_0_5 = _lh_picChar_arg1_1_2) then
            (let rec t_8_5 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3) in
              (let rec h_8_5 = _lh_picChar_LH_P2_1_5 in
                (fun ys_1_7 -> 
                  (`LH_C(h_8_5, ((mappend__d3__d0 t_8_5) ys_1_7))))))
          else
            (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))))) in
      (fun _lh_listcomp_fun_1_4 _lh_picChar_arg1_1_3 -> 
        (((_lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_1_4) _lh_picChar_arg1_1_3)))) in
    (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_picChar_LH_P2_1_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_6 = '.' in
        (fun _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_1_5 _lh_picChar_arg1_1_4 -> 
          (if (_lh_picChar_LH_P2_0_6 = _lh_picChar_arg1_1_4) then
            (let rec t_8_6 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_4) in
              (let rec h_8_6 = _lh_picChar_LH_P2_1_6 in
                (fun ys_1_8 -> 
                  (`LH_C(h_8_6, ((mappend__d3__d0 t_8_6) ys_1_8))))))
          else
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_4))))) in
      (fun _lh_listcomp_fun_1_6 _lh_picChar_arg1_1_5 -> 
        (((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1_6) _lh_picChar_arg1_1_5))))
and replicate__d0__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (fun _lh_dummy_0 f_2 -> 
      (`LH_N))
  else
    (let rec t_2 = ((replicate__d0__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_2 = _lh_replicate_arg2_0 in
        (fun _lh_dummy_1 -> 
          ((mappend__d0__d0 h_2) (concat__d0__d0 t_2))))))
and reverse__d0__d0 ls_7 =
  ((reverse_helper__d0__d0 ls_7) (`LH_N))
and say__d0__d0 _lh_say_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun x_0 -> 
            (`LH_C('n', x_0))) (unlines__d0__d0 _lh_funcomp_x_3))) ((map__d0__d0 join__d0__d0) _lh_funcomp_x_2))) (transpose__d0__d0 _lh_funcomp_x_1))) ((map__d1__d0 picChar__d0__d0) _lh_funcomp_x_0))) _lh_say_arg1_0)
and slant__d1__d0 _lh_slant_arg1_0 =
  (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (fun a_0 -> 
    a_0) in
    (let rec h_3 = (`LH_N) in
      (fun a_1 -> 
        ((reverse_helper__d0__d0 t_7) (`LH_C(h_3, a_1)))))) in
    (let rec h_4 = (`LH_C(' ', (`LH_N))) in
      (fun a_2 -> 
        ((reverse_helper__d0__d0 t_6) (`LH_C(h_4, a_2)))))) in
    (let rec h_5 = (`LH_C(' ', (`LH_C(' ', (`LH_N))))) in
      (fun a_3 -> 
        ((reverse_helper__d0__d0 t_5) (`LH_C(h_5, a_3)))))) in
    (let rec h_6 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) in
      (fun a_4 -> 
        ((reverse_helper__d0__d0 t_4) (`LH_C(h_6, a_4)))))) in
    (let rec h_7 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))) in
      (fun a_5 -> 
        ((reverse_helper__d0__d0 t_3) (`LH_C(h_7, a_5))))))
and testBanner_nofib__d0__d0 _lh_testBanner_nofib_arg1_0 =
  (say__d0__d0 (concat__d0__d0 ((replicate__d0__d0 _lh_testBanner_nofib_arg1_0) (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (fun ys_2_0 -> 
    ys_2_0) in
    (let rec h_8_8 = '?' in
      (fun ys_2_1 -> 
        (let rec t_1_1_5 = ((mappend__d0__d0 t_1_1_4) ys_2_1) in
          (let rec h_8_9 = h_8_8 in
            (fun f_1_1 -> 
              (`LH_C((f_1_1 h_8_9), ((map__d1__d0 f_1_1) t_1_1_5))))))))) in
    (let rec h_9_0 = 'r' in
      (fun ys_2_2 -> 
        (let rec t_1_1_6 = ((mappend__d0__d0 t_1_1_3) ys_2_2) in
          (let rec h_9_1 = h_9_0 in
            (fun f_1_2 -> 
              (`LH_C((f_1_2 h_9_1), ((map__d1__d0 f_1_2) t_1_1_6))))))))) in
    (let rec h_9_2 = 'e' in
      (fun ys_2_3 -> 
        (let rec t_1_1_7 = ((mappend__d0__d0 t_1_1_2) ys_2_3) in
          (let rec h_9_3 = h_9_2 in
            (fun f_1_3 -> 
              (`LH_C((f_1_3 h_9_3), ((map__d1__d0 f_1_3) t_1_1_7))))))))) in
    (let rec h_9_4 = 'n' in
      (fun ys_2_4 -> 
        (let rec t_1_1_8 = ((mappend__d0__d0 t_1_1_1) ys_2_4) in
          (let rec h_9_5 = h_9_4 in
            (fun f_1_4 -> 
              (`LH_C((f_1_4 h_9_5), ((map__d1__d0 f_1_4) t_1_1_8))))))))) in
    (let rec h_9_6 = 'n' in
      (fun ys_2_5 -> 
        (let rec t_1_1_9 = ((mappend__d0__d0 t_1_1_0) ys_2_5) in
          (let rec h_9_7 = h_9_6 in
            (fun f_1_5 -> 
              (`LH_C((f_1_5 h_9_7), ((map__d1__d0 f_1_5) t_1_1_9))))))))) in
    (let rec h_9_8 = 'a' in
      (fun ys_2_6 -> 
        (let rec t_1_2_0 = ((mappend__d0__d0 t_1_0_9) ys_2_6) in
          (let rec h_9_9 = h_9_8 in
            (fun f_1_6 -> 
              (`LH_C((f_1_6 h_9_9), ((map__d1__d0 f_1_6) t_1_2_0))))))))) in
    (let rec h_1_0_0 = 'b' in
      (fun ys_2_7 -> 
        (let rec t_1_2_1 = ((mappend__d0__d0 t_1_0_8) ys_2_7) in
          (let rec h_1_0_1 = h_1_0_0 in
            (fun f_1_7 -> 
              (`LH_C((f_1_7 h_1_0_1), ((map__d1__d0 f_1_7) t_1_2_1))))))))) in
    (let rec h_1_0_2 = ' ' in
      (fun ys_2_8 -> 
        (let rec t_1_2_2 = ((mappend__d0__d0 t_1_0_7) ys_2_8) in
          (let rec h_1_0_3 = h_1_0_2 in
            (fun f_1_8 -> 
              (`LH_C((f_1_8 h_1_0_3), ((map__d1__d0 f_1_8) t_1_2_2))))))))) in
    (let rec h_1_0_4 = 't' in
      (fun ys_2_9 -> 
        (let rec t_1_2_3 = ((mappend__d0__d0 t_1_0_6) ys_2_9) in
          (let rec h_1_0_5 = h_1_0_4 in
            (fun f_1_9 -> 
              (`LH_C((f_1_9 h_1_0_5), ((map__d1__d0 f_1_9) t_1_2_3))))))))) in
    (let rec h_1_0_6 = 'a' in
      (fun ys_3_0 -> 
        (let rec t_1_2_4 = ((mappend__d0__d0 t_1_0_5) ys_3_0) in
          (let rec h_1_0_7 = h_1_0_6 in
            (fun f_2_0 -> 
              (`LH_C((f_2_0 h_1_0_7), ((map__d1__d0 f_2_0) t_1_2_4))))))))) in
    (let rec h_1_0_8 = 'e' in
      (fun ys_3_1 -> 
        (let rec t_1_2_5 = ((mappend__d0__d0 t_1_0_4) ys_3_1) in
          (let rec h_1_0_9 = h_1_0_8 in
            (fun f_2_1 -> 
              (`LH_C((f_2_1 h_1_0_9), ((map__d1__d0 f_2_1) t_1_2_5))))))))) in
    (let rec h_1_1_0 = 'r' in
      (fun ys_3_2 -> 
        (let rec t_1_2_6 = ((mappend__d0__d0 t_1_0_3) ys_3_2) in
          (let rec h_1_1_1 = h_1_1_0 in
            (fun f_2_2 -> 
              (`LH_C((f_2_2 h_1_1_1), ((map__d1__d0 f_2_2) t_1_2_6))))))))) in
    (let rec h_1_1_2 = 'g' in
      (fun ys_3_3 -> 
        (let rec t_1_2_7 = ((mappend__d0__d0 t_1_0_2) ys_3_3) in
          (let rec h_1_1_3 = h_1_1_2 in
            (fun f_2_3 -> 
              (`LH_C((f_2_3 h_1_1_3), ((map__d1__d0 f_2_3) t_1_2_7))))))))) in
    (let rec h_1_1_4 = ' ' in
      (fun ys_3_4 -> 
        (let rec t_1_2_8 = ((mappend__d0__d0 t_1_0_1) ys_3_4) in
          (let rec h_1_1_5 = h_1_1_4 in
            (fun f_2_4 -> 
              (`LH_C((f_2_4 h_1_1_5), ((map__d1__d0 f_2_4) t_1_2_8))))))))) in
    (let rec h_1_1_6 = 'a' in
      (fun ys_3_5 -> 
        (let rec t_1_2_9 = ((mappend__d0__d0 t_1_0_0) ys_3_5) in
          (let rec h_1_1_7 = h_1_1_6 in
            (fun f_2_5 -> 
              (`LH_C((f_2_5 h_1_1_7), ((map__d1__d0 f_2_5) t_1_2_9))))))))) in
    (let rec h_1_1_8 = ' ' in
      (fun ys_3_6 -> 
        (let rec t_1_3_0 = ((mappend__d0__d0 t_9_9) ys_3_6) in
          (let rec h_1_1_9 = h_1_1_8 in
            (fun f_2_6 -> 
              (`LH_C((f_2_6 h_1_1_9), ((map__d1__d0 f_2_6) t_1_3_0))))))))) in
    (let rec h_1_2_0 = 't' in
      (fun ys_3_7 -> 
        (let rec t_1_3_1 = ((mappend__d0__d0 t_9_8) ys_3_7) in
          (let rec h_1_2_1 = h_1_2_0 in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_1_2_1), ((map__d1__d0 f_2_7) t_1_3_1))))))))) in
    (let rec h_1_2_2 = 'o' in
      (fun ys_3_8 -> 
        (let rec t_1_3_2 = ((mappend__d0__d0 t_9_7) ys_3_8) in
          (let rec h_1_2_3 = h_1_2_2 in
            (fun f_2_8 -> 
              (`LH_C((f_2_8 h_1_2_3), ((map__d1__d0 f_2_8) t_1_3_2))))))))) in
    (let rec h_1_2_4 = 'n' in
      (fun ys_3_9 -> 
        (let rec t_1_3_3 = ((mappend__d0__d0 t_9_6) ys_3_9) in
          (let rec h_1_2_5 = h_1_2_4 in
            (fun f_2_9 -> 
              (`LH_C((f_2_9 h_1_2_5), ((map__d1__d0 f_2_9) t_1_3_3))))))))) in
    (let rec h_1_2_6 = ' ' in
      (fun ys_4_0 -> 
        (let rec t_1_3_4 = ((mappend__d0__d0 t_9_5) ys_4_0) in
          (let rec h_1_2_7 = h_1_2_6 in
            (fun f_3_0 -> 
              (`LH_C((f_3_0 h_1_2_7), ((map__d1__d0 f_3_0) t_1_3_4))))))))) in
    (let rec h_1_2_8 = 's' in
      (fun ys_4_1 -> 
        (let rec t_1_3_5 = ((mappend__d0__d0 t_9_4) ys_4_1) in
          (let rec h_1_2_9 = h_1_2_8 in
            (fun f_3_1 -> 
              (`LH_C((f_3_1 h_1_2_9), ((map__d1__d0 f_3_1) t_1_3_5))))))))) in
    (let rec h_1_3_0 = 'i' in
      (fun ys_4_2 -> 
        (let rec t_1_3_6 = ((mappend__d0__d0 t_9_3) ys_4_2) in
          (let rec h_1_3_1 = h_1_3_0 in
            (fun f_3_2 -> 
              (`LH_C((f_3_2 h_1_3_1), ((map__d1__d0 f_3_2) t_1_3_6))))))))) in
    (let rec h_1_3_2 = 'h' in
      (fun ys_4_3 -> 
        (let rec t_1_3_7 = ((mappend__d0__d0 t_9_2) ys_4_3) in
          (let rec h_1_3_3 = h_1_3_2 in
            (fun f_3_3 -> 
              (`LH_C((f_3_3 h_1_3_3), ((map__d1__d0 f_3_3) t_1_3_7))))))))) in
    (let rec h_1_3_4 = 't' in
      (fun ys_4_4 -> 
        (let rec t_1_3_8 = ((mappend__d0__d0 t_9_1) ys_4_4) in
          (let rec h_1_3_5 = h_1_3_4 in
            (fun f_3_4 -> 
              (`LH_C((f_3_4 h_1_3_5), ((map__d1__d0 f_3_4) t_1_3_8))))))))) in
    (let rec h_1_3_6 = ' ' in
      (fun ys_4_5 -> 
        (let rec t_1_3_9 = ((mappend__d0__d0 t_9_0) ys_4_5) in
          (let rec h_1_3_7 = h_1_3_6 in
            (fun f_3_5 -> 
              (`LH_C((f_3_5 h_1_3_7), ((map__d1__d0 f_3_5) t_1_3_9))))))))) in
    (let rec h_1_3_8 = 's' in
      (fun ys_4_6 -> 
        (let rec t_1_4_0 = ((mappend__d0__d0 t_8_9) ys_4_6) in
          (let rec h_1_3_9 = h_1_3_8 in
            (fun f_3_6 -> 
              (`LH_C((f_3_6 h_1_3_9), ((map__d1__d0 f_3_6) t_1_4_0))))))))) in
    (let rec h_1_4_0 = 'I' in
      (fun ys_4_7 -> 
        (let rec t_1_4_1 = ((mappend__d0__d0 t_8_8) ys_4_7) in
          (let rec h_1_4_1 = h_1_4_0 in
            (fun f_3_7 -> 
              (`LH_C((f_3_7 h_1_4_1), ((map__d1__d0 f_3_7) t_1_4_1))))))))))))
and transpose__d0__d0 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (fun f_4 f_5 -> 
        (`LH_N))
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose__d0__d0 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_0 = (unzip__d0__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (let rec t_3_6 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
                      (let rec h_3_6 = (let rec _lh_unzip_LH_P2_1_0 = _lh_transpose_LH_C_1_2 in
                        (let rec _lh_unzip_LH_P2_0_0 = _lh_transpose_LH_C_0_2 in
                          (fun asbs_0 -> 
                            (let rec _lh_matchIdent_1 = asbs_0 in
                              (match _lh_matchIdent_1 with
                                | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_6 i_1 -> 
                          ((f_6 h_3_6) (((foldr__d0__d0 f_6) i_1) t_3_6)))))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (fun f_7 i_2 -> 
                  i_2))) in
            (_lh_listcomp_fun_0 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine__d0__d0 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0__d0 _lh_unlines_arg1_0 =
  (concat__d1__d0 ((map__d2__d0 (fun l_0 -> 
    ((mappend__d5__d0 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0))
and unzip__d0__d0 _lh_unzip_arg1_0 =
  (((foldr__d0__d0 (fun ab_0 asbs_1 -> 
    (let rec _lh_matchIdent_2 = ab_0 in
      (_lh_matchIdent_2 asbs_1)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;

(* lumberhack_pop_out *)
let rec atIndex__d0__d0__d0 n_7_2 ls_1_1 =
  (if (n_7_2 < 0) then
    (failwith "error")
  else
    (ls_1_1 n_7_2));;
let rec atIndex__d0__d0__d1 n_1_4_9 ls_8_7 =
  (if (n_1_4_9 < 0) then
    (failwith "error")
  else
    (ls_8_7 n_1_4_9));;
let rec atIndex__d0__d0__d1_d0 n_8_5 ls_2_7 =
  (if (n_8_5 < 0) then
    (failwith "error")
  else
    (ls_2_7 n_8_5));;
let rec atIndex__d0__d0__d1_d1 n_1_3_9 ls_7_0 =
  (if (n_1_3_9 < 0) then
    (failwith "error")
  else
    (ls_7_0 n_1_3_9));;
let rec atIndex__d0__d0__d1_d2 n_1_7_9 ls_9_4 =
  (if (n_1_7_9 < 0) then
    (failwith "error")
  else
    (ls_9_4 n_1_7_9));;
let rec atIndex__d0__d0__d1_d3 n_1_3_1 ls_5_6 =
  (if (n_1_3_1 < 0) then
    (failwith "error")
  else
    (ls_5_6 n_1_3_1));;
let rec atIndex__d0__d0__d1_d4 n_7_6 ls_1_5 =
  (if (n_7_6 < 0) then
    (failwith "error")
  else
    (ls_1_5 n_7_6));;
let rec atIndex__d0__d0__d1_d5 n_1_8_5 ls_1_0_4 =
  (if (n_1_8_5 < 0) then
    (failwith "error")
  else
    (ls_1_0_4 n_1_8_5));;
let rec atIndex__d0__d0__d1_d6 n_7_7 ls_1_6 =
  (if (n_7_7 < 0) then
    (failwith "error")
  else
    (ls_1_6 n_7_7));;
let rec atIndex__d0__d0__d1_d7 n_1_8_0 ls_9_5 =
  (if (n_1_8_0 < 0) then
    (failwith "error")
  else
    (ls_9_5 n_1_8_0));;
let rec atIndex__d0__d0__d1_d8 n_1_8_7 ls_1_0_6 =
  (if (n_1_8_7 < 0) then
    (failwith "error")
  else
    (ls_1_0_6 n_1_8_7));;
let rec atIndex__d0__d0__d1_d9 n_1_3_6 ls_6_5 =
  (if (n_1_3_6 < 0) then
    (failwith "error")
  else
    (ls_6_5 n_1_3_6));;
let rec atIndex__d0__d0__d2 n_1_7_7 ls_8_8 =
  (if (n_1_7_7 < 0) then
    (failwith "error")
  else
    (ls_8_8 n_1_7_7));;
let rec atIndex__d0__d0__d2_d0 n_8_7 ls_3_0 =
  (if (n_8_7 < 0) then
    (failwith "error")
  else
    (ls_3_0 n_8_7));;
let rec atIndex__d0__d0__d2_d1 n_2_0_5 ls_1_1_6 =
  (if (n_2_0_5 < 0) then
    (failwith "error")
  else
    (ls_1_1_6 n_2_0_5));;
let rec atIndex__d0__d0__d2_d2 n_8_2 ls_2_4 =
  (if (n_8_2 < 0) then
    (failwith "error")
  else
    (ls_2_4 n_8_2));;
let rec atIndex__d0__d0__d2_d3 n_1_8_4 ls_1_0_3 =
  (if (n_1_8_4 < 0) then
    (failwith "error")
  else
    (ls_1_0_3 n_1_8_4));;
let rec atIndex__d0__d0__d2_d4 n_1_4_5 ls_8_3 =
  (if (n_1_4_5 < 0) then
    (failwith "error")
  else
    (ls_8_3 n_1_4_5));;
let rec atIndex__d0__d0__d2_d5 n_1_2_5 ls_4_5 =
  (if (n_1_2_5 < 0) then
    (failwith "error")
  else
    (ls_4_5 n_1_2_5));;
let rec atIndex__d0__d0__d2_d6 n_9_2 ls_3_7 =
  (if (n_9_2 < 0) then
    (failwith "error")
  else
    (ls_3_7 n_9_2));;
let rec atIndex__d0__d0__d3 n_1_4_0 ls_7_1 =
  (if (n_1_4_0 < 0) then
    (failwith "error")
  else
    (ls_7_1 n_1_4_0));;
let rec atIndex__d0__d0__d4 n_2_0_3 ls_1_1_4 =
  (if (n_2_0_3 < 0) then
    (failwith "error")
  else
    (ls_1_1_4 n_2_0_3));;
let rec atIndex__d0__d0__d5 n_1_3_4 ls_6_3 =
  (if (n_1_3_4 < 0) then
    (failwith "error")
  else
    (ls_6_3 n_1_3_4));;
let rec atIndex__d0__d0__d6 n_1_3_5 ls_6_4 =
  (if (n_1_3_5 < 0) then
    (failwith "error")
  else
    (ls_6_4 n_1_3_5));;
let rec atIndex__d0__d0__d7 n_1_4_7 ls_8_4 =
  (if (n_1_4_7 < 0) then
    (failwith "error")
  else
    (ls_8_4 n_1_4_7));;
let rec atIndex__d0__d0__d8 n_7_9 ls_1_8 =
  (if (n_7_9 < 0) then
    (failwith "error")
  else
    (ls_1_8 n_7_9));;
let rec atIndex__d0__d0__d9 n_8_9 ls_3_2 =
  (if (n_8_9 < 0) then
    (failwith "error")
  else
    (ls_3_2 n_8_9));;
let rec atIndex__d1__d0__d0 n_1_2_7 ls_4_9 =
  (if (n_1_2_7 < 0) then
    (failwith "error")
  else
    (ls_4_9 n_1_2_7));;
let rec atIndex__d1__d0__d1 n_1_2_9 ls_5_1 =
  (if (n_1_2_9 < 0) then
    (failwith "error")
  else
    (ls_5_1 n_1_2_9));;
let rec atIndex__d1__d0__d1_d0 n_1_2_4 ls_4_4 =
  (if (n_1_2_4 < 0) then
    (failwith "error")
  else
    (ls_4_4 n_1_2_4));;
let rec atIndex__d1__d0__d1_d1 n_8_3 ls_2_5 =
  (if (n_8_3 < 0) then
    (failwith "error")
  else
    (ls_2_5 n_8_3));;
let rec atIndex__d1__d0__d1_d2 n_9_0 ls_3_3 =
  (if (n_9_0 < 0) then
    (failwith "error")
  else
    (ls_3_3 n_9_0));;
let rec atIndex__d1__d0__d1_d3 n_1_2_1 ls_3_9 =
  (if (n_1_2_1 < 0) then
    (failwith "error")
  else
    (ls_3_9 n_1_2_1));;
let rec atIndex__d1__d0__d1_d4 n_7_8 ls_1_7 =
  (if (n_7_8 < 0) then
    (failwith "error")
  else
    (ls_1_7 n_7_8));;
let rec atIndex__d1__d0__d1_d5 n_2_0_2 ls_1_1_3 =
  (if (n_2_0_2 < 0) then
    (failwith "error")
  else
    (ls_1_1_3 n_2_0_2));;
let rec atIndex__d1__d0__d1_d6 n_1_8_1 ls_9_6 =
  (if (n_1_8_1 < 0) then
    (failwith "error")
  else
    (ls_9_6 n_1_8_1));;
let rec atIndex__d1__d0__d1_d7 n_8_1 ls_2_2 =
  (if (n_8_1 < 0) then
    (failwith "error")
  else
    (ls_2_2 n_8_1));;
let rec atIndex__d1__d0__d1_d8 n_1_7_8 ls_9_3 =
  (if (n_1_7_8 < 0) then
    (failwith "error")
  else
    (ls_9_3 n_1_7_8));;
let rec atIndex__d1__d0__d1_d9 n_1_8_8 ls_1_0_7 =
  (if (n_1_8_8 < 0) then
    (failwith "error")
  else
    (ls_1_0_7 n_1_8_8));;
let rec atIndex__d1__d0__d2 n_7_3 ls_1_2 =
  (if (n_7_3 < 0) then
    (failwith "error")
  else
    (ls_1_2 n_7_3));;
let rec atIndex__d1__d0__d2_d0 n_1_3_2 ls_6_0 =
  (if (n_1_3_2 < 0) then
    (failwith "error")
  else
    (ls_6_0 n_1_3_2));;
let rec atIndex__d1__d0__d2_d1 n_1_2_8 ls_5_0 =
  (if (n_1_2_8 < 0) then
    (failwith "error")
  else
    (ls_5_0 n_1_2_8));;
let rec atIndex__d1__d0__d2_d2 n_1_9_0 ls_1_0_8 =
  (if (n_1_9_0 < 0) then
    (failwith "error")
  else
    (ls_1_0_8 n_1_9_0));;
let rec atIndex__d1__d0__d2_d3 n_8_4 ls_2_6 =
  (if (n_8_4 < 0) then
    (failwith "error")
  else
    (ls_2_6 n_8_4));;
let rec atIndex__d1__d0__d2_d4 n_1_2_3 ls_4_2 =
  (if (n_1_2_3 < 0) then
    (failwith "error")
  else
    (ls_4_2 n_1_2_3));;
let rec atIndex__d1__d0__d2_d5 n_8_0 ls_2_0 =
  (if (n_8_0 < 0) then
    (failwith "error")
  else
    (ls_2_0 n_8_0));;
let rec atIndex__d1__d0__d2_d6 n_1_3_3 ls_6_1 =
  (if (n_1_3_3 < 0) then
    (failwith "error")
  else
    (ls_6_1 n_1_3_3));;
let rec atIndex__d1__d0__d3 n_7_4 ls_1_3 =
  (if (n_7_4 < 0) then
    (failwith "error")
  else
    (ls_1_3 n_7_4));;
let rec atIndex__d1__d0__d4 n_9_1 ls_3_4 =
  (if (n_9_1 < 0) then
    (failwith "error")
  else
    (ls_3_4 n_9_1));;
let rec atIndex__d1__d0__d5 n_1_3_0 ls_5_4 =
  (if (n_1_3_0 < 0) then
    (failwith "error")
  else
    (ls_5_4 n_1_3_0));;
let rec atIndex__d1__d0__d6 n_8_6 ls_2_9 =
  (if (n_8_6 < 0) then
    (failwith "error")
  else
    (ls_2_9 n_8_6));;
let rec atIndex__d1__d0__d7 n_1_2_2 ls_4_1 =
  (if (n_1_2_2 < 0) then
    (failwith "error")
  else
    (ls_4_1 n_1_2_2));;
let rec atIndex__d1__d0__d8 n_1_8_6 ls_1_0_5 =
  (if (n_1_8_6 < 0) then
    (failwith "error")
  else
    (ls_1_0_5 n_1_8_6));;
let rec atIndex__d1__d0__d9 n_1_8_3 ls_1_0_0 =
  (if (n_1_8_3 < 0) then
    (failwith "error")
  else
    (ls_1_0_0 n_1_8_3));;
let rec atIndex__d2__d0__d0 n_2_0_4 ls_1_1_5 =
  (if (n_2_0_4 < 0) then
    (failwith "error")
  else
    (ls_1_1_5 n_2_0_4));;
let rec atIndex__d2__d0__d1 n_8_8 ls_3_1 =
  (if (n_8_8 < 0) then
    (failwith "error")
  else
    (ls_3_1 n_8_8));;
let rec atIndex__d2__d0__d1_d0 n_1_4_3 ls_7_8 =
  (if (n_1_4_3 < 0) then
    (failwith "error")
  else
    (ls_7_8 n_1_4_3));;
let rec atIndex__d2__d0__d2 n_1_4_1 ls_7_4 =
  (if (n_1_4_1 < 0) then
    (failwith "error")
  else
    (ls_7_4 n_1_4_1));;
let rec atIndex__d2__d0__d3 n_1_3_8 ls_6_9 =
  (if (n_1_3_8 < 0) then
    (failwith "error")
  else
    (ls_6_9 n_1_3_8));;
let rec atIndex__d2__d0__d4 n_1_2_0 ls_3_8 =
  (if (n_1_2_0 < 0) then
    (failwith "error")
  else
    (ls_3_8 n_1_2_0));;
let rec atIndex__d2__d0__d5 n_1_8_2 ls_9_7 =
  (if (n_1_8_2 < 0) then
    (failwith "error")
  else
    (ls_9_7 n_1_8_2));;
let rec atIndex__d2__d0__d6 n_1_3_7 ls_6_8 =
  (if (n_1_3_7 < 0) then
    (failwith "error")
  else
    (ls_6_8 n_1_3_7));;
let rec atIndex__d2__d0__d7 n_7_5 ls_1_4 =
  (if (n_7_5 < 0) then
    (failwith "error")
  else
    (ls_1_4 n_7_5));;
let rec atIndex__d2__d0__d8 n_1_4_4 ls_8_0 =
  (if (n_1_4_4 < 0) then
    (failwith "error")
  else
    (ls_8_0 n_1_4_4));;
let rec atIndex__d2__d0__d9 n_1_4_8 ls_8_5 =
  (if (n_1_4_8 < 0) then
    (failwith "error")
  else
    (ls_8_5 n_1_4_8));;
let rec blank__d0__d0__d0 _lh_blank_arg1_1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec concat__d0__d0__d0 lss_4 =
  (lss_4 99);;
let rec concat__d0__d0__d1 lss_6 =
  (lss_6 99);;
let rec foldr1__d0__d0__d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1__d0__d0__d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0__d0__d0 f_8_3 i_5 ls_5_5 =
  ((ls_5_5 f_8_3) i_5);;
let rec foldr__d0__d0__d1 f_9_2 i_6 ls_8_2 =
  ((ls_8_2 f_9_2) i_6);;
let rec head__d0__d0__d0 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_1_9_6, t_1_9_6) -> 
      h_1_9_6
    | `LH_N -> 
      (failwith "error"));;
let rec isDigit__d0__d0__d0 _lh_isDigit_arg1_1 =
  (let rec n_1_4_6 = (int_of_char _lh_isDigit_arg1_1) in
    ((n_1_4_6 >= 48) && (n_1_4_6 <= 57)));;
let rec isLower__d0__d0__d0 _lh_isLower_arg1_1 =
  (let rec n_1_8_9 = (int_of_char _lh_isLower_arg1_1) in
    ((n_1_8_9 >= 97) && (n_1_8_9 <= 122)));;
let rec isSpace__d0__d0__d0 _lh_isSpace_arg1_1 =
  (let rec n_1_2_6 = (int_of_char _lh_isSpace_arg1_1) in
    (n_1_2_6 = 32));;
let rec isUpper__d0__d0__d0 _lh_isUpper_arg1_1 =
  (let rec n_1_4_2 = (int_of_char _lh_isUpper_arg1_1) in
    ((n_1_4_2 >= 65) && (n_1_4_2 <= 90)));;
let rec map__d0__d0__d0 f_9_7 ls_9_1 =
  (ls_9_1 f_9_7);;
let rec map__d0__d0__d1 f_8_4 ls_5_8 =
  (ls_5_8 f_8_4);;
let rec map__d1__d0__d0 f_8_9 ls_7_7 =
  (ls_7_7 f_8_9);;
let rec map__d1__d0__d1 f_7_2 ls_4_0 =
  (ls_4_0 f_7_2);;
let rec map__d1__d0__d1_d0 f_6_7 ls_2_1 =
  (ls_2_1 f_6_7);;
let rec map__d1__d0__d1_d1 f_7_0 ls_3_6 =
  (ls_3_6 f_7_0);;
let rec map__d1__d0__d1_d2 f_7_3 ls_4_3 =
  (ls_4_3 f_7_3);;
let rec map__d1__d0__d1_d3 f_8_7 ls_7_3 =
  (ls_7_3 f_8_7);;
let rec map__d1__d0__d1_d4 f_8_2 ls_5_3 =
  (ls_5_3 f_8_2);;
let rec map__d1__d0__d1_d5 f_1_0_3 ls_1_0_9 =
  (ls_1_0_9 f_1_0_3);;
let rec map__d1__d0__d1_d6 f_8_6 ls_6_2 =
  (ls_6_2 f_8_6);;
let rec map__d1__d0__d1_d7 f_8_8 ls_7_5 =
  (ls_7_5 f_8_8);;
let rec map__d1__d0__d1_d8 f_9_5 ls_8_9 =
  (ls_8_9 f_9_5);;
let rec map__d1__d0__d1_d9 f_1_0_1 ls_1_0_1 =
  (ls_1_0_1 f_1_0_1);;
let rec map__d1__d0__d2 f_6_8 ls_2_3 =
  (ls_2_3 f_6_8);;
let rec map__d1__d0__d2_d0 f_9_6 ls_9_0 =
  (ls_9_0 f_9_6);;
let rec map__d1__d0__d2_d1 f_3_8 ls_1_0 =
  (ls_1_0 f_3_8);;
let rec map__d1__d0__d2_d2 f_1_0_0 ls_9_9 =
  (ls_9_9 f_1_0_0);;
let rec map__d1__d0__d2_d3 f_1_0_2 ls_1_0_2 =
  (ls_1_0_2 f_1_0_2);;
let rec map__d1__d0__d2_d4 f_7_8 ls_4_6 =
  (ls_4_6 f_7_8);;
let rec map__d1__d0__d2_d5 f_7_9 ls_4_7 =
  (ls_4_7 f_7_9);;
let rec map__d1__d0__d2_d6 f_9_8 ls_9_2 =
  (ls_9_2 f_9_8);;
let rec map__d1__d0__d2_d7 f_1_0_4 ls_1_1_1 =
  (ls_1_1_1 f_1_0_4);;
let rec map__d1__d0__d3 f_6_6 ls_1_9 =
  (ls_1_9 f_6_6);;
let rec map__d1__d0__d4 f_9_1 ls_8_1 =
  (ls_8_1 f_9_1);;
let rec map__d1__d0__d5 f_9_9 ls_9_8 =
  (ls_9_8 f_9_9);;
let rec map__d1__d0__d6 f_8_5 ls_5_9 =
  (ls_5_9 f_8_5);;
let rec map__d1__d0__d7 f_6_9 ls_3_5 =
  (ls_3_5 f_6_9);;
let rec map__d1__d0__d8 f_1_0_5 ls_1_1_2 =
  (ls_1_1_2 f_1_0_5);;
let rec map__d1__d0__d9 f_9_0 ls_7_9 =
  (ls_7_9 f_9_0);;
let rec map__d2__d0__d0 f_8_0 ls_4_8 =
  (ls_4_8 f_8_0);;
let rec map__d2__d0__d1 f_8_1 ls_5_2 =
  (ls_5_2 f_8_1);;
let rec mappend__d0__d0__d0 xs_1_5 ys_8_3 =
  (xs_1_5 ys_8_3);;
let rec mappend__d0__d0__d1 xs_1_9 ys_8_7 =
  (xs_1_9 ys_8_7);;
let rec mappend__d0__d0__d1_d0 xs_1_2 ys_8_0 =
  (xs_1_2 ys_8_0);;
let rec mappend__d0__d0__d1_d1 xs_2_2 ys_9_0 =
  (xs_2_2 ys_9_0);;
let rec mappend__d0__d0__d1_d2 xs_2_8 ys_9_6 =
  (xs_2_8 ys_9_6);;
let rec mappend__d0__d0__d1_d3 xs_3_4 ys_1_0_2 =
  (xs_3_4 ys_1_0_2);;
let rec mappend__d0__d0__d1_d4 xs_8 ys_4_8 =
  (xs_8 ys_4_8);;
let rec mappend__d0__d0__d1_d5 xs_5_1 ys_1_3_1 =
  (xs_5_1 ys_1_3_1);;
let rec mappend__d0__d0__d1_d6 xs_2_9 ys_9_7 =
  (xs_2_9 ys_9_7);;
let rec mappend__d0__d0__d1_d7 xs_3_6 ys_1_1_2 =
  (xs_3_6 ys_1_1_2);;
let rec mappend__d0__d0__d1_d8 xs_2_6 ys_9_4 =
  (xs_2_6 ys_9_4);;
let rec mappend__d0__d0__d1_d9 xs_2_4 ys_9_2 =
  (xs_2_4 ys_9_2);;
let rec mappend__d0__d0__d2 xs_4_7 ys_1_2_4 =
  (xs_4_7 ys_1_2_4);;
let rec mappend__d0__d0__d2_d0 xs_1_8 ys_8_6 =
  (xs_1_8 ys_8_6);;
let rec mappend__d0__d0__d2_d1 xs_1_1 ys_7_9 =
  (xs_1_1 ys_7_9);;
let rec mappend__d0__d0__d2_d2 xs_1_4 ys_8_2 =
  (xs_1_4 ys_8_2);;
let rec mappend__d0__d0__d2_d3 xs_4_5 ys_1_2_2 =
  (xs_4_5 ys_1_2_2);;
let rec mappend__d0__d0__d2_d4 xs_4_8 ys_1_2_5 =
  (xs_4_8 ys_1_2_5);;
let rec mappend__d0__d0__d2_d5 xs_4_6 ys_1_2_3 =
  (xs_4_6 ys_1_2_3);;
let rec mappend__d0__d0__d2_d6 xs_3_0 ys_9_8 =
  (xs_3_0 ys_9_8);;
let rec mappend__d0__d0__d2_d7 xs_4_0 ys_1_1_6 =
  (xs_4_0 ys_1_1_6);;
let rec mappend__d0__d0__d3 xs_3_7 ys_1_1_3 =
  (xs_3_7 ys_1_1_3);;
let rec mappend__d0__d0__d4 xs_9 ys_4_9 =
  (xs_9 ys_4_9);;
let rec mappend__d0__d0__d5 xs_2_5 ys_9_3 =
  (xs_2_5 ys_9_3);;
let rec mappend__d0__d0__d6 xs_3_5 ys_1_0_3 =
  (xs_3_5 ys_1_0_3);;
let rec mappend__d0__d0__d7 xs_2_0 ys_8_8 =
  (xs_2_0 ys_8_8);;
let rec mappend__d0__d0__d8 xs_2_3 ys_9_1 =
  (xs_2_3 ys_9_1);;
let rec mappend__d0__d0__d9 xs_4_3 ys_1_2_0 =
  (xs_4_3 ys_1_2_0);;
let rec mappend__d1__d0__d0 xs_1_7 ys_8_5 =
  (xs_1_7 ys_8_5);;
let rec mappend__d1__d0__d1 xs_3_1 ys_9_9 =
  (xs_3_1 ys_9_9);;
let rec mappend__d1__d0__d2 xs_1_6 ys_8_4 =
  (xs_1_6 ys_8_4);;
let rec mappend__d1__d0__d3 xs_3_2 ys_1_0_0 =
  (xs_3_2 ys_1_0_0);;
let rec mappend__d3__d0__d0 xs_3_9 ys_1_1_5 =
  (xs_3_9 ys_1_1_5);;
let rec mappend__d3__d0__d1 xs_2_7 ys_9_5 =
  (xs_2_7 ys_9_5);;
let rec mappend__d3__d0__d2 xs_3_8 ys_1_1_4 =
  (xs_3_8 ys_1_1_4);;
let rec mappend__d3__d0__d3 xs_3_3 ys_1_0_1 =
  (xs_3_3 ys_1_0_1);;
let rec mappend__d3__d0__d4 xs_4_2 ys_1_1_9 =
  (xs_4_2 ys_1_1_9);;
let rec mappend__d3__d0__d5 xs_1_0 ys_5_0 =
  (xs_1_0 ys_5_0);;
let rec mappend__d3__d0__d6 xs_4_4 ys_1_2_1 =
  (xs_4_4 ys_1_2_1);;
let rec mappend__d3__d0__d7 xs_1_3 ys_8_1 =
  (xs_1_3 ys_8_1);;
let rec mappend__d4__d0__d0 xs_2_1 ys_8_9 =
  (match xs_2_1 with
    | `LH_C(h_2_2_5, t_2_2_5) -> 
      (`LH_C(h_2_2_5, ((mappend__d4__d0__d0 t_2_2_5) ys_8_9)))
    | `LH_N -> 
      ys_8_9);;
let rec mappend__d4__d1__d0 xs_4_9 ys_1_2_6 =
  (match xs_4_9 with
    | `LH_C(h_2_7_0, t_2_7_0) -> 
      (`LH_C(h_2_7_0, ((mappend__d4__d1__d0 t_2_7_0) ys_1_2_6)))
    | `LH_N -> 
      ys_1_2_6);;
let rec mappend__d5__d0__d0 xs_5_2 ys_1_3_2 =
  (match xs_5_2 with
    | `LH_C(h_2_8_3, t_2_8_3) -> 
      (`LH_C(h_2_8_3, ((mappend__d5__d0__d0 t_2_8_3) ys_1_3_2)))
    | `LH_N -> 
      ys_1_3_2);;
let rec reverse_helper__d0__d0__d0 ls_6_7 a_1_4 =
  (ls_6_7 a_1_4);;
let rec reverse_helper__d0__d0__d1 ls_6_6 a_1_3 =
  (ls_6_6 a_1_3);;
let rec reverse_helper__d0__d0__d2 ls_8_6 a_1_7 =
  (ls_8_6 a_1_7);;
let rec reverse_helper__d0__d0__d3 ls_7_2 a_1_5 =
  (ls_7_2 a_1_5);;
let rec reverse_helper__d0__d0__d4 ls_7_6 a_1_6 =
  (ls_7_6 a_1_6);;
let rec reverse_helper__d0__d0__d5 ls_1_1_0 a_1_8 =
  (ls_1_1_0 a_1_8);;
let rec slant__d0__d0__d0 _lh_slant_arg1_3 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec alphas__d0__d0__d0 _lh_alphas_arg1_3 n_1_7_6 =
  (let rec t_2_4_4 = (let rec t_2_4_5 = (let rec t_2_4_6 = (let rec t_2_4_7 = (let rec t_2_4_8 = (let rec t_2_4_9 = (let rec t_2_5_0 = (let rec t_2_5_1 = (let rec t_2_5_2 = (let rec t_2_5_3 = (let rec t_2_5_4 = (let rec t_2_5_5 = (let rec t_2_5_6 = (let rec t_2_5_7 = (let rec t_2_5_8 = (let rec t_2_5_9 = (let rec t_2_6_0 = (let rec t_2_6_1 = (let rec t_2_6_2 = (let rec t_2_6_3 = (let rec t_2_6_4 = (let rec t_2_6_5 = (let rec t_2_6_6 = (let rec t_2_6_7 = (let rec t_2_6_8 = (let rec t_2_6_9 = (fun n_1_5_0 -> 
    (failwith "error")) in
    (let rec h_2_4_4 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_1 -> 
        (if (n_1_5_1 = 0) then
          h_2_4_4
        else
          ((atIndex__d0__d0__d0 (n_1_5_1 - 1)) t_2_6_9))))) in
    (let rec h_2_4_5 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_2 -> 
        (if (n_1_5_2 = 0) then
          h_2_4_5
        else
          ((atIndex__d0__d0__d1 (n_1_5_2 - 1)) t_2_6_8))))) in
    (let rec h_2_4_6 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_3 -> 
        (if (n_1_5_3 = 0) then
          h_2_4_6
        else
          ((atIndex__d0__d0__d2 (n_1_5_3 - 1)) t_2_6_7))))) in
    (let rec h_2_4_7 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_4 -> 
        (if (n_1_5_4 = 0) then
          h_2_4_7
        else
          ((atIndex__d0__d0__d3 (n_1_5_4 - 1)) t_2_6_6))))) in
    (let rec h_2_4_8 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_5 -> 
        (if (n_1_5_5 = 0) then
          h_2_4_8
        else
          ((atIndex__d0__d0__d4 (n_1_5_5 - 1)) t_2_6_5))))) in
    (let rec h_2_4_9 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_6 -> 
        (if (n_1_5_6 = 0) then
          h_2_4_9
        else
          ((atIndex__d0__d0__d5 (n_1_5_6 - 1)) t_2_6_4))))) in
    (let rec h_2_5_0 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_7 -> 
        (if (n_1_5_7 = 0) then
          h_2_5_0
        else
          ((atIndex__d0__d0__d6 (n_1_5_7 - 1)) t_2_6_3))))) in
    (let rec h_2_5_1 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_8 -> 
        (if (n_1_5_8 = 0) then
          h_2_5_1
        else
          ((atIndex__d0__d0__d7 (n_1_5_8 - 1)) t_2_6_2))))) in
    (let rec h_2_5_2 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_5_9 -> 
        (if (n_1_5_9 = 0) then
          h_2_5_2
        else
          ((atIndex__d0__d0__d8 (n_1_5_9 - 1)) t_2_6_1))))) in
    (let rec h_2_5_3 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_0 -> 
        (if (n_1_6_0 = 0) then
          h_2_5_3
        else
          ((atIndex__d0__d0__d9 (n_1_6_0 - 1)) t_2_6_0))))) in
    (let rec h_2_5_4 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_1 -> 
        (if (n_1_6_1 = 0) then
          h_2_5_4
        else
          ((atIndex__d0__d0__d1_d0 (n_1_6_1 - 1)) t_2_5_9))))) in
    (let rec h_2_5_5 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_2 -> 
        (if (n_1_6_2 = 0) then
          h_2_5_5
        else
          ((atIndex__d0__d0__d1_d1 (n_1_6_2 - 1)) t_2_5_8))))) in
    (let rec h_2_5_6 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_3 -> 
        (if (n_1_6_3 = 0) then
          h_2_5_6
        else
          ((atIndex__d0__d0__d1_d2 (n_1_6_3 - 1)) t_2_5_7))))) in
    (let rec h_2_5_7 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_4 -> 
        (if (n_1_6_4 = 0) then
          h_2_5_7
        else
          ((atIndex__d0__d0__d1_d3 (n_1_6_4 - 1)) t_2_5_6))))) in
    (let rec h_2_5_8 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_5 -> 
        (if (n_1_6_5 = 0) then
          h_2_5_8
        else
          ((atIndex__d0__d0__d1_d4 (n_1_6_5 - 1)) t_2_5_5))))) in
    (let rec h_2_5_9 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_6 -> 
        (if (n_1_6_6 = 0) then
          h_2_5_9
        else
          ((atIndex__d0__d0__d1_d5 (n_1_6_6 - 1)) t_2_5_4))))) in
    (let rec h_2_6_0 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_7 -> 
        (if (n_1_6_7 = 0) then
          h_2_6_0
        else
          ((atIndex__d0__d0__d1_d6 (n_1_6_7 - 1)) t_2_5_3))))) in
    (let rec h_2_6_1 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_8 -> 
        (if (n_1_6_8 = 0) then
          h_2_6_1
        else
          ((atIndex__d0__d0__d1_d7 (n_1_6_8 - 1)) t_2_5_2))))) in
    (let rec h_2_6_2 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_6_9 -> 
        (if (n_1_6_9 = 0) then
          h_2_6_2
        else
          ((atIndex__d0__d0__d1_d8 (n_1_6_9 - 1)) t_2_5_1))))) in
    (let rec h_2_6_3 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7_0 -> 
        (if (n_1_7_0 = 0) then
          h_2_6_3
        else
          ((atIndex__d0__d0__d1_d9 (n_1_7_0 - 1)) t_2_5_0))))) in
    (let rec h_2_6_4 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7_1 -> 
        (if (n_1_7_1 = 0) then
          h_2_6_4
        else
          ((atIndex__d0__d0__d2_d0 (n_1_7_1 - 1)) t_2_4_9))))) in
    (let rec h_2_6_5 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7_2 -> 
        (if (n_1_7_2 = 0) then
          h_2_6_5
        else
          ((atIndex__d0__d0__d2_d1 (n_1_7_2 - 1)) t_2_4_8))))) in
    (let rec h_2_6_6 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7_3 -> 
        (if (n_1_7_3 = 0) then
          h_2_6_6
        else
          ((atIndex__d0__d0__d2_d2 (n_1_7_3 - 1)) t_2_4_7))))) in
    (let rec h_2_6_7 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7_4 -> 
        (if (n_1_7_4 = 0) then
          h_2_6_7
        else
          ((atIndex__d0__d0__d2_d3 (n_1_7_4 - 1)) t_2_4_6))))) in
    (let rec h_2_6_8 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_7_5 -> 
        (if (n_1_7_5 = 0) then
          h_2_6_8
        else
          ((atIndex__d0__d0__d2_d4 (n_1_7_5 - 1)) t_2_4_5))))) in
    (let rec h_2_6_9 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (if (n_1_7_6 = 0) then
        h_2_6_9
      else
        ((atIndex__d0__d0__d2_d5 (n_1_7_6 - 1)) t_2_4_4))))
and alphas__d1__d0__d0 _lh_alphas_arg1_2 n_1_1_9 =
  (let rec t_1_9_8 = (let rec t_1_9_9 = (let rec t_2_0_0 = (let rec t_2_0_1 = (let rec t_2_0_2 = (let rec t_2_0_3 = (let rec t_2_0_4 = (let rec t_2_0_5 = (let rec t_2_0_6 = (let rec t_2_0_7 = (let rec t_2_0_8 = (let rec t_2_0_9 = (let rec t_2_1_0 = (let rec t_2_1_1 = (let rec t_2_1_2 = (let rec t_2_1_3 = (let rec t_2_1_4 = (let rec t_2_1_5 = (let rec t_2_1_6 = (let rec t_2_1_7 = (let rec t_2_1_8 = (let rec t_2_1_9 = (let rec t_2_2_0 = (let rec t_2_2_1 = (let rec t_2_2_2 = (let rec t_2_2_3 = (fun n_9_3 -> 
    (failwith "error")) in
    (let rec h_1_9_8 = (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_4 -> 
        (if (n_9_4 = 0) then
          h_1_9_8
        else
          ((atIndex__d1__d0__d1_d7 (n_9_4 - 1)) t_2_2_3))))) in
    (let rec h_1_9_9 = (`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_5 -> 
        (if (n_9_5 = 0) then
          h_1_9_9
        else
          ((atIndex__d1__d0__d1_d8 (n_9_5 - 1)) t_2_2_2))))) in
    (let rec h_2_0_0 = (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_6 -> 
        (if (n_9_6 = 0) then
          h_2_0_0
        else
          ((atIndex__d1__d0__d1_d9 (n_9_6 - 1)) t_2_2_1))))) in
    (let rec h_2_0_1 = (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_7 -> 
        (if (n_9_7 = 0) then
          h_2_0_1
        else
          ((atIndex__d1__d0__d2_d0 (n_9_7 - 1)) t_2_2_0))))) in
    (let rec h_2_0_2 = (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_8 -> 
        (if (n_9_8 = 0) then
          h_2_0_2
        else
          ((atIndex__d1__d0__d2_d1 (n_9_8 - 1)) t_2_1_9))))) in
    (let rec h_2_0_3 = (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_9_9 -> 
        (if (n_9_9 = 0) then
          h_2_0_3
        else
          ((atIndex__d1__d0__d2_d2 (n_9_9 - 1)) t_2_1_8))))) in
    (let rec h_2_0_4 = (`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_0 -> 
        (if (n_1_0_0 = 0) then
          h_2_0_4
        else
          ((atIndex__d1__d0__d2_d3 (n_1_0_0 - 1)) t_2_1_7))))) in
    (let rec h_2_0_5 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_1 -> 
        (if (n_1_0_1 = 0) then
          h_2_0_5
        else
          ((atIndex__d1__d0__d2_d4 (n_1_0_1 - 1)) t_2_1_6))))) in
    (let rec h_2_0_6 = (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_2 -> 
        (if (n_1_0_2 = 0) then
          h_2_0_6
        else
          ((atIndex__d1__d0__d2_d5 (n_1_0_2 - 1)) t_2_1_5))))) in
    (let rec h_2_0_7 = (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_3 -> 
        (if (n_1_0_3 = 0) then
          h_2_0_7
        else
          ((atIndex__d1__d0__d0 (n_1_0_3 - 1)) t_2_1_4))))) in
    (let rec h_2_0_8 = (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_4 -> 
        (if (n_1_0_4 = 0) then
          h_2_0_8
        else
          ((atIndex__d1__d0__d1 (n_1_0_4 - 1)) t_2_1_3))))) in
    (let rec h_2_0_9 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_5 -> 
        (if (n_1_0_5 = 0) then
          h_2_0_9
        else
          ((atIndex__d1__d0__d2 (n_1_0_5 - 1)) t_2_1_2))))) in
    (let rec h_2_1_0 = (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_6 -> 
        (if (n_1_0_6 = 0) then
          h_2_1_0
        else
          ((atIndex__d1__d0__d3 (n_1_0_6 - 1)) t_2_1_1))))) in
    (let rec h_2_1_1 = (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_7 -> 
        (if (n_1_0_7 = 0) then
          h_2_1_1
        else
          ((atIndex__d1__d0__d4 (n_1_0_7 - 1)) t_2_1_0))))) in
    (let rec h_2_1_2 = (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_8 -> 
        (if (n_1_0_8 = 0) then
          h_2_1_2
        else
          ((atIndex__d1__d0__d5 (n_1_0_8 - 1)) t_2_0_9))))) in
    (let rec h_2_1_3 = (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_0_9 -> 
        (if (n_1_0_9 = 0) then
          h_2_1_3
        else
          ((atIndex__d1__d0__d6 (n_1_0_9 - 1)) t_2_0_8))))) in
    (let rec h_2_1_4 = (`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_0 -> 
        (if (n_1_1_0 = 0) then
          h_2_1_4
        else
          ((atIndex__d1__d0__d7 (n_1_1_0 - 1)) t_2_0_7))))) in
    (let rec h_2_1_5 = (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_1 -> 
        (if (n_1_1_1 = 0) then
          h_2_1_5
        else
          ((atIndex__d1__d0__d8 (n_1_1_1 - 1)) t_2_0_6))))) in
    (let rec h_2_1_6 = (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_2 -> 
        (if (n_1_1_2 = 0) then
          h_2_1_6
        else
          ((atIndex__d1__d0__d9 (n_1_1_2 - 1)) t_2_0_5))))) in
    (let rec h_2_1_7 = (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_3 -> 
        (if (n_1_1_3 = 0) then
          h_2_1_7
        else
          ((atIndex__d1__d0__d1_d0 (n_1_1_3 - 1)) t_2_0_4))))) in
    (let rec h_2_1_8 = (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_4 -> 
        (if (n_1_1_4 = 0) then
          h_2_1_8
        else
          ((atIndex__d1__d0__d1_d1 (n_1_1_4 - 1)) t_2_0_3))))) in
    (let rec h_2_1_9 = (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_5 -> 
        (if (n_1_1_5 = 0) then
          h_2_1_9
        else
          ((atIndex__d1__d0__d1_d2 (n_1_1_5 - 1)) t_2_0_2))))) in
    (let rec h_2_2_0 = (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_6 -> 
        (if (n_1_1_6 = 0) then
          h_2_2_0
        else
          ((atIndex__d1__d0__d1_d3 (n_1_1_6 - 1)) t_2_0_1))))) in
    (let rec h_2_2_1 = (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_7 -> 
        (if (n_1_1_7 = 0) then
          h_2_2_1
        else
          ((atIndex__d1__d0__d1_d4 (n_1_1_7 - 1)) t_2_0_0))))) in
    (let rec h_2_2_2 = (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_1_8 -> 
        (if (n_1_1_8 = 0) then
          h_2_2_2
        else
          ((atIndex__d1__d0__d1_d5 (n_1_1_8 - 1)) t_1_9_9))))) in
    (let rec h_2_2_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))) in
      (if (n_1_1_9 = 0) then
        h_2_2_3
      else
        ((atIndex__d1__d0__d1_d6 (n_1_1_9 - 1)) t_1_9_8))))
and combine__d0__d0__d0 _lh_combine_arg1_1 _lh_combine_arg2_1 _lh_combine_arg3_1 _lh_combine_arg4_1 f_9_3 f_9_4 =
  (let rec t_2_4_2 = (transpose__d0__d0__d0 (`LH_C(_lh_combine_arg3_1, _lh_combine_arg4_1))) in
    (let rec h_2_4_2 = (`LH_C(_lh_combine_arg1_1, _lh_combine_arg2_1)) in
      (let rec t_2_4_3 = ((map__d0__d0__d1 f_9_3) t_2_4_2) in
        (let rec h_2_4_3 = (f_9_3 h_2_4_2) in
          (`LH_C((f_9_4 h_2_4_3), ((map__d2__d0__d0 f_9_4) t_2_4_3)))))))
and concat__d1__d0__d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_9_7, t_1_9_7) -> 
      ((mappend__d4__d1__d0 h_1_9_7) (concat__d1__d1__d0 t_1_9_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1__d1__d0 lss_5 =
  (match lss_5 with
    | `LH_C(h_2_3_2, t_2_3_2) -> 
      ((mappend__d4__d0__d0 h_2_3_2) (concat__d1__d1__d0 t_2_3_2))
    | `LH_N -> 
      (`LH_N))
and digits__d0__d0__d0 _lh_digits_arg1_1 n_2_0_1 =
  (let rec t_2_7_3 = (let rec t_2_7_4 = (let rec t_2_7_5 = (let rec t_2_7_6 = (let rec t_2_7_7 = (let rec t_2_7_8 = (let rec t_2_7_9 = (let rec t_2_8_0 = (let rec t_2_8_1 = (let rec t_2_8_2 = (fun n_1_9_1 -> 
    (failwith "error")) in
    (let rec h_2_7_3 = (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_2 -> 
        (if (n_1_9_2 = 0) then
          h_2_7_3
        else
          ((atIndex__d2__d0__d1 (n_1_9_2 - 1)) t_2_8_2))))) in
    (let rec h_2_7_4 = (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_3 -> 
        (if (n_1_9_3 = 0) then
          h_2_7_4
        else
          ((atIndex__d2__d0__d2 (n_1_9_3 - 1)) t_2_8_1))))) in
    (let rec h_2_7_5 = (`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_4 -> 
        (if (n_1_9_4 = 0) then
          h_2_7_5
        else
          ((atIndex__d2__d0__d3 (n_1_9_4 - 1)) t_2_8_0))))) in
    (let rec h_2_7_6 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_5 -> 
        (if (n_1_9_5 = 0) then
          h_2_7_6
        else
          ((atIndex__d2__d0__d4 (n_1_9_5 - 1)) t_2_7_9))))) in
    (let rec h_2_7_7 = (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_6 -> 
        (if (n_1_9_6 = 0) then
          h_2_7_7
        else
          ((atIndex__d2__d0__d5 (n_1_9_6 - 1)) t_2_7_8))))) in
    (let rec h_2_7_8 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_7 -> 
        (if (n_1_9_7 = 0) then
          h_2_7_8
        else
          ((atIndex__d2__d0__d6 (n_1_9_7 - 1)) t_2_7_7))))) in
    (let rec h_2_7_9 = (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_8 -> 
        (if (n_1_9_8 = 0) then
          h_2_7_9
        else
          ((atIndex__d2__d0__d7 (n_1_9_8 - 1)) t_2_7_6))))) in
    (let rec h_2_8_0 = (`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_1_9_9 -> 
        (if (n_1_9_9 = 0) then
          h_2_8_0
        else
          ((atIndex__d2__d0__d8 (n_1_9_9 - 1)) t_2_7_5))))) in
    (let rec h_2_8_1 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))) in
      (fun n_2_0_0 -> 
        (if (n_2_0_0 = 0) then
          h_2_8_1
        else
          ((atIndex__d2__d0__d9 (n_2_0_0 - 1)) t_2_7_4))))) in
    (let rec h_2_8_2 = (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (if (n_2_0_1 = 0) then
        h_2_8_2
      else
        ((atIndex__d2__d0__d1_d0 (n_2_0_1 - 1)) t_2_7_3))))
and join__d0__d0__d0 _lh_join_arg1_1 =
  ((foldr1__d0__d0__d0 (fun xs_5_0 ys_1_2_7 -> 
    ((mappend__d1__d0__d0 ((mappend__d2__d0__d0 xs_5_0) (let rec t_2_7_1 = (let rec t_2_7_2 = (fun ys_1_2_8 -> 
      ys_1_2_8) in
      (let rec h_2_7_1 = ' ' in
        (fun ys_1_2_9 -> 
          (`LH_C(h_2_7_1, ((mappend__d1__d0__d1 t_2_7_2) ys_1_2_9)))))) in
      (let rec h_2_7_2 = ' ' in
        (fun ys_1_3_0 -> 
          (`LH_C(h_2_7_2, ((mappend__d1__d0__d2 t_2_7_1) ys_1_3_0)))))))) ys_1_2_7))) _lh_join_arg1_1)
and mappend__d2__d0__d0 xs_4_1 ys_1_1_7 =
  (match xs_4_1 with
    | `LH_C(h_2_4_0, t_2_4_0) -> 
      (let rec t_2_4_1 = ((mappend__d2__d0__d0 t_2_4_0) ys_1_1_7) in
        (let rec h_2_4_1 = h_2_4_0 in
          (fun ys_1_1_8 -> 
            (`LH_C(h_2_4_1, ((mappend__d1__d0__d3 t_2_4_1) ys_1_1_8))))))
    | `LH_N -> 
      ys_1_1_7)
and picChar__d0__d0__d0 _lh_picChar_arg1_1_6 =
  (if (isUpper__d0__d0__d0 _lh_picChar_arg1_1_6) then
    ((atIndex__d0__d0__d2_d6 ((int_of_char _lh_picChar_arg1_1_6) - (int_of_char 'A'))) (alphas__d0__d0__d0 0))
  else
    (if (isLower__d0__d0__d0 _lh_picChar_arg1_1_6) then
      ((atIndex__d1__d0__d2_d6 ((int_of_char _lh_picChar_arg1_1_6) - (int_of_char 'a'))) (alphas__d1__d0__d0 0))
    else
      (if (isSpace__d0__d0__d0 _lh_picChar_arg1_1_6) then
        (blank__d0__d0__d0 0)
      else
        (if (isDigit__d0__d0__d0 _lh_picChar_arg1_1_6) then
          ((atIndex__d2__d0__d0 ((int_of_char _lh_picChar_arg1_1_6) - (int_of_char '0'))) (digits__d0__d0__d0 0))
        else
          (if (_lh_picChar_arg1_1_6 = '/') then
            (slant__d0__d0__d0 0)
          else
            (if (_lh_picChar_arg1_1_6 = '=') then
              (reverse__d0__d0__d0 (slant__d1__d0__d0 0))
            else
              (head__d0__d0__d0 ((mappend__d3__d0__d0 (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_3 -> 
                ((_lh_listcomp_fun_para_3 _lh_listcomp_fun_1_8) _lh_picChar_arg1_1_6)) in
                (_lh_listcomp_fun_1_8 (punct__d0__d0__d0 0)))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))))
and punct__d0__d0__d0 _lh_punct_arg1_1 _lh_listcomp_fun_3_3 _lh_picChar_arg1_3_1 =
  (let rec _lh_listcomp_fun_ls_t_1_6 = (let rec _lh_listcomp_fun_ls_t_1_7 = (let rec _lh_listcomp_fun_ls_t_1_8 = (let rec _lh_listcomp_fun_ls_t_1_9 = (let rec _lh_listcomp_fun_ls_t_2_0 = (let rec _lh_listcomp_fun_ls_t_2_1 = (let rec _lh_listcomp_fun_ls_t_2_2 = (fun _lh_listcomp_fun_1_9 _lh_picChar_arg1_1_7 ys_1_0_4 -> 
    ys_1_0_4) in
    (let rec _lh_listcomp_fun_ls_h_9 = (let rec _lh_picChar_LH_P2_1_7 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_7 = ';' in
        (fun _lh_listcomp_fun_ls_t_2_3 _lh_listcomp_fun_2_0 _lh_picChar_arg1_1_8 -> 
          (if (_lh_picChar_LH_P2_0_7 = _lh_picChar_arg1_1_8) then
            (let rec t_2_3_3 = (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_3) in
              (let rec h_2_3_3 = _lh_picChar_LH_P2_1_7 in
                (fun ys_1_0_5 -> 
                  (`LH_C(h_2_3_3, ((mappend__d3__d0__d1 t_2_3_3) ys_1_0_5))))))
          else
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_3))))) in
      (fun _lh_listcomp_fun_2_1 _lh_picChar_arg1_1_9 -> 
        (((_lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_ls_t_2_2) _lh_listcomp_fun_2_1) _lh_picChar_arg1_1_9)))) in
    (let rec _lh_listcomp_fun_ls_h_1_0 = (let rec _lh_picChar_LH_P2_1_8 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_8 = ':' in
        (fun _lh_listcomp_fun_ls_t_2_4 _lh_listcomp_fun_2_2 _lh_picChar_arg1_2_0 -> 
          (if (_lh_picChar_LH_P2_0_8 = _lh_picChar_arg1_2_0) then
            (let rec t_2_3_4 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_4) in
              (let rec h_2_3_4 = _lh_picChar_LH_P2_1_8 in
                (fun ys_1_0_6 -> 
                  (`LH_C(h_2_3_4, ((mappend__d3__d0__d2 t_2_3_4) ys_1_0_6))))))
          else
            (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_4))))) in
      (fun _lh_listcomp_fun_2_3 _lh_picChar_arg1_2_1 -> 
        (((_lh_listcomp_fun_ls_h_1_0 _lh_listcomp_fun_ls_t_2_1) _lh_listcomp_fun_2_3) _lh_picChar_arg1_2_1)))) in
    (let rec _lh_listcomp_fun_ls_h_1_1 = (let rec _lh_picChar_LH_P2_1_9 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_9 = '+' in
        (fun _lh_listcomp_fun_ls_t_2_5 _lh_listcomp_fun_2_4 _lh_picChar_arg1_2_2 -> 
          (if (_lh_picChar_LH_P2_0_9 = _lh_picChar_arg1_2_2) then
            (let rec t_2_3_5 = (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_2_5) in
              (let rec h_2_3_5 = _lh_picChar_LH_P2_1_9 in
                (fun ys_1_0_7 -> 
                  (`LH_C(h_2_3_5, ((mappend__d3__d0__d3 t_2_3_5) ys_1_0_7))))))
          else
            (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_2_5))))) in
      (fun _lh_listcomp_fun_2_5 _lh_picChar_arg1_2_3 -> 
        (((_lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_ls_t_2_0) _lh_listcomp_fun_2_5) _lh_picChar_arg1_2_3)))) in
    (let rec _lh_listcomp_fun_ls_h_1_2 = (let rec _lh_picChar_LH_P2_1_1_0 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1_0 = '-' in
        (fun _lh_listcomp_fun_ls_t_2_6 _lh_listcomp_fun_2_6 _lh_picChar_arg1_2_4 -> 
          (if (_lh_picChar_LH_P2_0_1_0 = _lh_picChar_arg1_2_4) then
            (let rec t_2_3_6 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_6) in
              (let rec h_2_3_6 = _lh_picChar_LH_P2_1_1_0 in
                (fun ys_1_0_8 -> 
                  (`LH_C(h_2_3_6, ((mappend__d3__d0__d4 t_2_3_6) ys_1_0_8))))))
          else
            (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_6))))) in
      (fun _lh_listcomp_fun_2_7 _lh_picChar_arg1_2_5 -> 
        (((_lh_listcomp_fun_ls_h_1_2 _lh_listcomp_fun_ls_t_1_9) _lh_listcomp_fun_2_7) _lh_picChar_arg1_2_5)))) in
    (let rec _lh_listcomp_fun_ls_h_1_3 = (let rec _lh_picChar_LH_P2_1_1_1 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1_1 = '!' in
        (fun _lh_listcomp_fun_ls_t_2_7 _lh_listcomp_fun_2_8 _lh_picChar_arg1_2_6 -> 
          (if (_lh_picChar_LH_P2_0_1_1 = _lh_picChar_arg1_2_6) then
            (let rec t_2_3_7 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_7) in
              (let rec h_2_3_7 = _lh_picChar_LH_P2_1_1_1 in
                (fun ys_1_0_9 -> 
                  (`LH_C(h_2_3_7, ((mappend__d3__d0__d5 t_2_3_7) ys_1_0_9))))))
          else
            (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_7))))) in
      (fun _lh_listcomp_fun_2_9 _lh_picChar_arg1_2_7 -> 
        (((_lh_listcomp_fun_ls_h_1_3 _lh_listcomp_fun_ls_t_1_8) _lh_listcomp_fun_2_9) _lh_picChar_arg1_2_7)))) in
    (let rec _lh_listcomp_fun_ls_h_1_4 = (let rec _lh_picChar_LH_P2_1_1_2 = (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1_2 = '?' in
        (fun _lh_listcomp_fun_ls_t_2_8 _lh_listcomp_fun_3_0 _lh_picChar_arg1_2_8 -> 
          (if (_lh_picChar_LH_P2_0_1_2 = _lh_picChar_arg1_2_8) then
            (let rec t_2_3_8 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_8) in
              (let rec h_2_3_8 = _lh_picChar_LH_P2_1_1_2 in
                (fun ys_1_1_0 -> 
                  (`LH_C(h_2_3_8, ((mappend__d3__d0__d6 t_2_3_8) ys_1_1_0))))))
          else
            (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_8))))) in
      (fun _lh_listcomp_fun_3_1 _lh_picChar_arg1_2_9 -> 
        (((_lh_listcomp_fun_ls_h_1_4 _lh_listcomp_fun_ls_t_1_7) _lh_listcomp_fun_3_1) _lh_picChar_arg1_2_9)))) in
    (let rec _lh_listcomp_fun_ls_h_1_5 = (let rec _lh_picChar_LH_P2_1_1_3 = (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))) in
      (let rec _lh_picChar_LH_P2_0_1_3 = '.' in
        (fun _lh_listcomp_fun_ls_t_2_9 _lh_listcomp_fun_3_2 _lh_picChar_arg1_3_0 -> 
          (if (_lh_picChar_LH_P2_0_1_3 = _lh_picChar_arg1_3_0) then
            (let rec t_2_3_9 = (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_9) in
              (let rec h_2_3_9 = _lh_picChar_LH_P2_1_1_3 in
                (fun ys_1_1_1 -> 
                  (`LH_C(h_2_3_9, ((mappend__d3__d0__d7 t_2_3_9) ys_1_1_1))))))
          else
            (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_9))))) in
      (((_lh_listcomp_fun_ls_h_1_5 _lh_listcomp_fun_ls_t_1_6) _lh_listcomp_fun_3_3) _lh_picChar_arg1_3_1)))
and replicate__d0__d0__d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 _lh_popOutId_0_0 =
  (if (_lh_replicate_arg1_1 = 0) then
    (fun f_7_1 -> 
      (`LH_N))
  else
    (let rec t_2_2_4 = ((replicate__d0__d0__d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1) in
      (let rec h_2_2_4 = _lh_replicate_arg2_1 in
        ((mappend__d0__d0__d2_d7 h_2_2_4) (concat__d0__d0__d1 t_2_2_4)))))
and reverse__d0__d0__d0 ls_5_7 =
  ((reverse_helper__d0__d0__d0 ls_5_7) (`LH_N))
and say__d0__d0__d0 _lh_say_arg1_1 =
  ((fun _lh_funcomp_x_4 -> 
    ((fun _lh_funcomp_x_5 -> 
      ((fun _lh_funcomp_x_6 -> 
        ((fun _lh_funcomp_x_7 -> 
          ((fun x_1 -> 
            (`LH_C('n', x_1))) (unlines__d0__d0__d0 _lh_funcomp_x_7))) ((map__d0__d0__d0 join__d0__d0__d0) _lh_funcomp_x_6))) (transpose__d0__d0__d0 _lh_funcomp_x_5))) ((map__d1__d0__d2_d7 picChar__d0__d0__d0) _lh_funcomp_x_4))) _lh_say_arg1_1)
and slant__d1__d0__d0 _lh_slant_arg1_2 a_1_2 =
  (let rec t_2_2_7 = (let rec t_2_2_8 = (let rec t_2_2_9 = (let rec t_2_3_0 = (let rec t_2_3_1 = (fun a_7 -> 
    a_7) in
    (let rec h_2_2_7 = (`LH_N) in
      (fun a_8 -> 
        ((reverse_helper__d0__d0__d5 t_2_3_1) (`LH_C(h_2_2_7, a_8)))))) in
    (let rec h_2_2_8 = (`LH_C(' ', (`LH_N))) in
      (fun a_9 -> 
        ((reverse_helper__d0__d0__d1 t_2_3_0) (`LH_C(h_2_2_8, a_9)))))) in
    (let rec h_2_2_9 = (`LH_C(' ', (`LH_C(' ', (`LH_N))))) in
      (fun a_1_0 -> 
        ((reverse_helper__d0__d0__d2 t_2_2_9) (`LH_C(h_2_2_9, a_1_0)))))) in
    (let rec h_2_3_0 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) in
      (fun a_1_1 -> 
        ((reverse_helper__d0__d0__d3 t_2_2_8) (`LH_C(h_2_3_0, a_1_1)))))) in
    (let rec h_2_3_1 = (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))) in
      ((reverse_helper__d0__d0__d4 t_2_2_7) (`LH_C(h_2_3_1, a_1_2)))))
and testBanner_nofib__d0__d0__d0 _lh_testBanner_nofib_arg1_1 =
  (say__d0__d0__d0 (concat__d0__d0__d0 ((replicate__d0__d0__d0 _lh_testBanner_nofib_arg1_1) (let rec t_1_4_2 = (let rec t_1_4_3 = (let rec t_1_4_4 = (let rec t_1_4_5 = (let rec t_1_4_6 = (let rec t_1_4_7 = (let rec t_1_4_8 = (let rec t_1_4_9 = (let rec t_1_5_0 = (let rec t_1_5_1 = (let rec t_1_5_2 = (let rec t_1_5_3 = (let rec t_1_5_4 = (let rec t_1_5_5 = (let rec t_1_5_6 = (let rec t_1_5_7 = (let rec t_1_5_8 = (let rec t_1_5_9 = (let rec t_1_6_0 = (let rec t_1_6_1 = (let rec t_1_6_2 = (let rec t_1_6_3 = (let rec t_1_6_4 = (let rec t_1_6_5 = (let rec t_1_6_6 = (let rec t_1_6_7 = (let rec t_1_6_8 = (fun ys_5_1 -> 
    ys_5_1) in
    (let rec h_1_4_2 = '?' in
      (fun ys_5_2 -> 
        (let rec t_1_6_9 = ((mappend__d0__d0__d0 t_1_6_8) ys_5_2) in
          (let rec h_1_4_3 = h_1_4_2 in
            (fun f_3_9 -> 
              (`LH_C((f_3_9 h_1_4_3), ((map__d1__d0__d0 f_3_9) t_1_6_9))))))))) in
    (let rec h_1_4_4 = 'r' in
      (fun ys_5_3 -> 
        (let rec t_1_7_0 = ((mappend__d0__d0__d1 t_1_6_7) ys_5_3) in
          (let rec h_1_4_5 = h_1_4_4 in
            (fun f_4_0 -> 
              (`LH_C((f_4_0 h_1_4_5), ((map__d1__d0__d1 f_4_0) t_1_7_0))))))))) in
    (let rec h_1_4_6 = 'e' in
      (fun ys_5_4 -> 
        (let rec t_1_7_1 = ((mappend__d0__d0__d2 t_1_6_6) ys_5_4) in
          (let rec h_1_4_7 = h_1_4_6 in
            (fun f_4_1 -> 
              (`LH_C((f_4_1 h_1_4_7), ((map__d1__d0__d2 f_4_1) t_1_7_1))))))))) in
    (let rec h_1_4_8 = 'n' in
      (fun ys_5_5 -> 
        (let rec t_1_7_2 = ((mappend__d0__d0__d3 t_1_6_5) ys_5_5) in
          (let rec h_1_4_9 = h_1_4_8 in
            (fun f_4_2 -> 
              (`LH_C((f_4_2 h_1_4_9), ((map__d1__d0__d3 f_4_2) t_1_7_2))))))))) in
    (let rec h_1_5_0 = 'n' in
      (fun ys_5_6 -> 
        (let rec t_1_7_3 = ((mappend__d0__d0__d4 t_1_6_4) ys_5_6) in
          (let rec h_1_5_1 = h_1_5_0 in
            (fun f_4_3 -> 
              (`LH_C((f_4_3 h_1_5_1), ((map__d1__d0__d4 f_4_3) t_1_7_3))))))))) in
    (let rec h_1_5_2 = 'a' in
      (fun ys_5_7 -> 
        (let rec t_1_7_4 = ((mappend__d0__d0__d5 t_1_6_3) ys_5_7) in
          (let rec h_1_5_3 = h_1_5_2 in
            (fun f_4_4 -> 
              (`LH_C((f_4_4 h_1_5_3), ((map__d1__d0__d5 f_4_4) t_1_7_4))))))))) in
    (let rec h_1_5_4 = 'b' in
      (fun ys_5_8 -> 
        (let rec t_1_7_5 = ((mappend__d0__d0__d6 t_1_6_2) ys_5_8) in
          (let rec h_1_5_5 = h_1_5_4 in
            (fun f_4_5 -> 
              (`LH_C((f_4_5 h_1_5_5), ((map__d1__d0__d6 f_4_5) t_1_7_5))))))))) in
    (let rec h_1_5_6 = ' ' in
      (fun ys_5_9 -> 
        (let rec t_1_7_6 = ((mappend__d0__d0__d7 t_1_6_1) ys_5_9) in
          (let rec h_1_5_7 = h_1_5_6 in
            (fun f_4_6 -> 
              (`LH_C((f_4_6 h_1_5_7), ((map__d1__d0__d7 f_4_6) t_1_7_6))))))))) in
    (let rec h_1_5_8 = 't' in
      (fun ys_6_0 -> 
        (let rec t_1_7_7 = ((mappend__d0__d0__d8 t_1_6_0) ys_6_0) in
          (let rec h_1_5_9 = h_1_5_8 in
            (fun f_4_7 -> 
              (`LH_C((f_4_7 h_1_5_9), ((map__d1__d0__d8 f_4_7) t_1_7_7))))))))) in
    (let rec h_1_6_0 = 'a' in
      (fun ys_6_1 -> 
        (let rec t_1_7_8 = ((mappend__d0__d0__d9 t_1_5_9) ys_6_1) in
          (let rec h_1_6_1 = h_1_6_0 in
            (fun f_4_8 -> 
              (`LH_C((f_4_8 h_1_6_1), ((map__d1__d0__d9 f_4_8) t_1_7_8))))))))) in
    (let rec h_1_6_2 = 'e' in
      (fun ys_6_2 -> 
        (let rec t_1_7_9 = ((mappend__d0__d0__d1_d0 t_1_5_8) ys_6_2) in
          (let rec h_1_6_3 = h_1_6_2 in
            (fun f_4_9 -> 
              (`LH_C((f_4_9 h_1_6_3), ((map__d1__d0__d1_d0 f_4_9) t_1_7_9))))))))) in
    (let rec h_1_6_4 = 'r' in
      (fun ys_6_3 -> 
        (let rec t_1_8_0 = ((mappend__d0__d0__d1_d1 t_1_5_7) ys_6_3) in
          (let rec h_1_6_5 = h_1_6_4 in
            (fun f_5_0 -> 
              (`LH_C((f_5_0 h_1_6_5), ((map__d1__d0__d1_d1 f_5_0) t_1_8_0))))))))) in
    (let rec h_1_6_6 = 'g' in
      (fun ys_6_4 -> 
        (let rec t_1_8_1 = ((mappend__d0__d0__d1_d2 t_1_5_6) ys_6_4) in
          (let rec h_1_6_7 = h_1_6_6 in
            (fun f_5_1 -> 
              (`LH_C((f_5_1 h_1_6_7), ((map__d1__d0__d1_d2 f_5_1) t_1_8_1))))))))) in
    (let rec h_1_6_8 = ' ' in
      (fun ys_6_5 -> 
        (let rec t_1_8_2 = ((mappend__d0__d0__d1_d3 t_1_5_5) ys_6_5) in
          (let rec h_1_6_9 = h_1_6_8 in
            (fun f_5_2 -> 
              (`LH_C((f_5_2 h_1_6_9), ((map__d1__d0__d1_d3 f_5_2) t_1_8_2))))))))) in
    (let rec h_1_7_0 = 'a' in
      (fun ys_6_6 -> 
        (let rec t_1_8_3 = ((mappend__d0__d0__d1_d4 t_1_5_4) ys_6_6) in
          (let rec h_1_7_1 = h_1_7_0 in
            (fun f_5_3 -> 
              (`LH_C((f_5_3 h_1_7_1), ((map__d1__d0__d1_d4 f_5_3) t_1_8_3))))))))) in
    (let rec h_1_7_2 = ' ' in
      (fun ys_6_7 -> 
        (let rec t_1_8_4 = ((mappend__d0__d0__d1_d5 t_1_5_3) ys_6_7) in
          (let rec h_1_7_3 = h_1_7_2 in
            (fun f_5_4 -> 
              (`LH_C((f_5_4 h_1_7_3), ((map__d1__d0__d1_d5 f_5_4) t_1_8_4))))))))) in
    (let rec h_1_7_4 = 't' in
      (fun ys_6_8 -> 
        (let rec t_1_8_5 = ((mappend__d0__d0__d1_d6 t_1_5_2) ys_6_8) in
          (let rec h_1_7_5 = h_1_7_4 in
            (fun f_5_5 -> 
              (`LH_C((f_5_5 h_1_7_5), ((map__d1__d0__d1_d6 f_5_5) t_1_8_5))))))))) in
    (let rec h_1_7_6 = 'o' in
      (fun ys_6_9 -> 
        (let rec t_1_8_6 = ((mappend__d0__d0__d1_d7 t_1_5_1) ys_6_9) in
          (let rec h_1_7_7 = h_1_7_6 in
            (fun f_5_6 -> 
              (`LH_C((f_5_6 h_1_7_7), ((map__d1__d0__d1_d7 f_5_6) t_1_8_6))))))))) in
    (let rec h_1_7_8 = 'n' in
      (fun ys_7_0 -> 
        (let rec t_1_8_7 = ((mappend__d0__d0__d1_d8 t_1_5_0) ys_7_0) in
          (let rec h_1_7_9 = h_1_7_8 in
            (fun f_5_7 -> 
              (`LH_C((f_5_7 h_1_7_9), ((map__d1__d0__d1_d8 f_5_7) t_1_8_7))))))))) in
    (let rec h_1_8_0 = ' ' in
      (fun ys_7_1 -> 
        (let rec t_1_8_8 = ((mappend__d0__d0__d1_d9 t_1_4_9) ys_7_1) in
          (let rec h_1_8_1 = h_1_8_0 in
            (fun f_5_8 -> 
              (`LH_C((f_5_8 h_1_8_1), ((map__d1__d0__d1_d9 f_5_8) t_1_8_8))))))))) in
    (let rec h_1_8_2 = 's' in
      (fun ys_7_2 -> 
        (let rec t_1_8_9 = ((mappend__d0__d0__d2_d0 t_1_4_8) ys_7_2) in
          (let rec h_1_8_3 = h_1_8_2 in
            (fun f_5_9 -> 
              (`LH_C((f_5_9 h_1_8_3), ((map__d1__d0__d2_d0 f_5_9) t_1_8_9))))))))) in
    (let rec h_1_8_4 = 'i' in
      (fun ys_7_3 -> 
        (let rec t_1_9_0 = ((mappend__d0__d0__d2_d1 t_1_4_7) ys_7_3) in
          (let rec h_1_8_5 = h_1_8_4 in
            (fun f_6_0 -> 
              (`LH_C((f_6_0 h_1_8_5), ((map__d1__d0__d2_d1 f_6_0) t_1_9_0))))))))) in
    (let rec h_1_8_6 = 'h' in
      (fun ys_7_4 -> 
        (let rec t_1_9_1 = ((mappend__d0__d0__d2_d2 t_1_4_6) ys_7_4) in
          (let rec h_1_8_7 = h_1_8_6 in
            (fun f_6_1 -> 
              (`LH_C((f_6_1 h_1_8_7), ((map__d1__d0__d2_d2 f_6_1) t_1_9_1))))))))) in
    (let rec h_1_8_8 = 't' in
      (fun ys_7_5 -> 
        (let rec t_1_9_2 = ((mappend__d0__d0__d2_d3 t_1_4_5) ys_7_5) in
          (let rec h_1_8_9 = h_1_8_8 in
            (fun f_6_2 -> 
              (`LH_C((f_6_2 h_1_8_9), ((map__d1__d0__d2_d3 f_6_2) t_1_9_2))))))))) in
    (let rec h_1_9_0 = ' ' in
      (fun ys_7_6 -> 
        (let rec t_1_9_3 = ((mappend__d0__d0__d2_d4 t_1_4_4) ys_7_6) in
          (let rec h_1_9_1 = h_1_9_0 in
            (fun f_6_3 -> 
              (`LH_C((f_6_3 h_1_9_1), ((map__d1__d0__d2_d4 f_6_3) t_1_9_3))))))))) in
    (let rec h_1_9_2 = 's' in
      (fun ys_7_7 -> 
        (let rec t_1_9_4 = ((mappend__d0__d0__d2_d5 t_1_4_3) ys_7_7) in
          (let rec h_1_9_3 = h_1_9_2 in
            (fun f_6_4 -> 
              (`LH_C((f_6_4 h_1_9_3), ((map__d1__d0__d2_d5 f_6_4) t_1_9_4))))))))) in
    (let rec h_1_9_4 = 'I' in
      (fun ys_7_8 -> 
        (let rec t_1_9_5 = ((mappend__d0__d0__d2_d6 t_1_4_2) ys_7_8) in
          (let rec h_1_9_5 = h_1_9_4 in
            (fun f_6_5 -> 
              (`LH_C((f_6_5 h_1_9_5), ((map__d1__d0__d2_d6 f_6_5) t_1_9_5))))))))))))
and transpose__d0__d0__d0 _lh_transpose_arg1_1 =
  (match _lh_transpose_arg1_1 with
    | `LH_N -> 
      (fun f_7_4 f_7_5 -> 
        (`LH_N))
    | `LH_C(_lh_transpose_LH_C_0_3, _lh_transpose_LH_C_1_3) -> 
      (match _lh_transpose_LH_C_0_3 with
        | `LH_N -> 
          (transpose__d0__d0__d0 _lh_transpose_LH_C_1_3)
        | `LH_C(_lh_transpose_LH_C_0_4, _lh_transpose_LH_C_1_4) -> 
          (let rec _lh_matchIdent_3 = (unzip__d0__d0__d0 (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_2 -> 
            (match _lh_listcomp_fun_para_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_1_5) -> 
                (match _lh_listcomp_fun_ls_h_8 with
                  | `LH_C(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5) -> 
                    (let rec t_2_2_6 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5) in
                      (let rec h_2_2_6 = (let rec _lh_unzip_LH_P2_1_2 = _lh_transpose_LH_C_1_5 in
                        (let rec _lh_unzip_LH_P2_0_2 = _lh_transpose_LH_C_0_5 in
                          (fun asbs_2 -> 
                            (let rec _lh_matchIdent_4 = asbs_2 in
                              (match _lh_matchIdent_4 with
                                | `LH_P2(_lh_unzip_LH_P2_0_3, _lh_unzip_LH_P2_1_3) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_2, _lh_unzip_LH_P2_0_3)), (`LH_C(_lh_unzip_LH_P2_1_2, _lh_unzip_LH_P2_1_3))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_7_6 i_3 -> 
                          ((f_7_6 h_2_2_6) (((foldr__d0__d0__d0 f_7_6) i_3) t_2_2_6)))))
                  | _ -> 
                    (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5))
              | `LH_N -> 
                (fun f_7_7 i_4 -> 
                  i_4))) in
            (_lh_listcomp_fun_1_7 _lh_transpose_LH_C_1_3))) in
            (match _lh_matchIdent_3 with
              | `LH_P2(_lh_transpose_LH_P2_0_1, _lh_transpose_LH_P2_1_1) -> 
                ((((combine__d0__d0__d0 _lh_transpose_LH_C_0_4) _lh_transpose_LH_P2_0_1) _lh_transpose_LH_C_1_4) _lh_transpose_LH_P2_1_1)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0__d0__d0 _lh_unlines_arg1_1 =
  (concat__d1__d0__d0 ((map__d2__d0__d1 (fun l_1 -> 
    ((mappend__d5__d0__d0 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1))
and unzip__d0__d0__d0 _lh_unzip_arg1_1 =
  (((foldr__d0__d0__d1 (fun ab_1 asbs_3 -> 
    (let rec _lh_matchIdent_5 = ab_1 in
      (_lh_matchIdent_5 asbs_3)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Banner_nofib" (fun () -> ignore ((testBanner_nofib__d0 100)));
  Bench.Test.create ~name:"lumberhack_Banner_nofib" (fun () -> ignore ((testBanner_nofib__d0__d0 100)));
  Bench.Test.create ~name:"lumberhack_pop_out_Banner_nofib" (fun () -> ignore ((testBanner_nofib__d0__d0__d0 100)));
])
