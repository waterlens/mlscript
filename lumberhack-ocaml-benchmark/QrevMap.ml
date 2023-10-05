(*
touch ./QrevMap.mli && ocamlc ./QrevMap.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./QrevMap.ml -o "./QrevMap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./QrevMap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec _lhManualQrevMap f_1 xs_1 a_2 =
  (match xs_1 with
    | `C(h_2, t_2) -> 
      (((_lhManualQrevMap f_1) t_2) (`C((f_1 h_2), a_2)))
    | `N -> 
      a_2);;
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec qrev a_1 ys_0 =
  (match ys_0 with
    | `C(h_1, t_1) -> 
      ((qrev (`C(h_1, a_1))) t_1)
    | `N -> 
      a_1);;
let rec testManual ls_1 =
  (((_lhManualQrevMap (fun x_1 -> 
    (x_1 + 1))) ls_1) (`N))
and testQrevMap ls_0 =
  ((qrev (`N)) ((map (fun x_0 -> 
    (x_0 + 1))) ls_0));;

(* lumberhack *)
let rec enumFromTo__d0 a_3 b_1 =
  (if (a_3 <= b_1) then
    (`C(a_3, ((enumFromTo__d0 (a_3 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo__d1 (a_2 + 1)) b_0)))
  else
    (`N));;
let rec qrev__d0 a_5 ys_0 =
  (ys_0 a_5);;
let rec map__d0 f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d0 f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun a_0 -> 
            ((qrev__d0 (`C(h_1, a_0))) t_1))))
    | `N -> 
      (fun a_1 -> 
        a_1))
and testQrevMap__d0 ls_0 =
  ((qrev__d0 (`N)) ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ls_0));;

(* lumberhack_pop_out *)
let rec enumFromTo__d0__d0 a_1_1 b_3 =
  (if (a_1_1 <= b_3) then
    (`C(a_1_1, ((enumFromTo__d0__d0 (a_1_1 + 1)) b_3)))
  else
    (`N));;
let rec enumFromTo__d1__d0 a_1_0 b_2 =
  (if (a_1_0 <= b_2) then
    (`C(a_1_0, ((enumFromTo__d1__d0 (a_1_0 + 1)) b_2)))
  else
    (`N));;
let rec qrev__d0__d0 a_6 ys_1 =
  (ys_1 a_6);;
let rec qrev__d0__d1 a_9 ys_2 =
  (ys_2 a_9);;
let rec map__d0__d0 f_2 xs_2 _lh_popOutId_0_0 =
  (match xs_2 with
    | `C(h_3, t_3) -> 
      (let rec t_4 = ((map__d0__d0 f_2) t_3) in
        (let rec h_4 = (f_2 h_3) in
          ((qrev__d0__d0 (`C(h_4, _lh_popOutId_0_0))) t_4)))
    | `N -> 
      _lh_popOutId_0_0)
and testQrevMap__d0__d0 ls_2 =
  ((qrev__d0__d1 (`N)) ((map__d0__d0 (fun x_2 -> 
    (x_2 + 1))) ls_2));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_QrevMap" (fun () -> ignore ((testQrevMap ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"manual_QrevMap" (fun () -> ignore ((testManual ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"lumberhack_QrevMap" (fun () -> ignore ((testQrevMap__d0 ((enumFromTo__d1 1) 10000))));
  Bench.Test.create ~name:"lumberhack_pop_out_QrevMap" (fun () -> ignore ((testQrevMap__d0__d0 ((enumFromTo__d1__d0 1) 10000))));
])