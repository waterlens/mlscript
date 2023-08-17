(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./QrevMap.ml -o "./QrevMap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./QrevMap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec enumFromTo_d0 a_5 b_1 =
  (if (a_5 <= b_1) then
    (`C(a_5, ((enumFromTo_d0 (a_5 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo_d1 a_2 b_0 =
  (if (a_2 <= b_0) then
    (`C(a_2, ((enumFromTo_d1 (a_2 + 1)) b_0)))
  else
    (`N));;
let rec qrev_d0 a_1 ys_0 =
  (ys_0 a_1);;
let rec map_d0 f_1 xs_1 =
  (match xs_1 with
    | `C(h_1, t_1) -> 
      (let rec h_2 = (f_1 h_1) in
        (let rec t_2 = ((map_d0 f_1) t_1) in
          (fun a_3 -> 
            ((qrev_d0 (`C(h_2, a_3))) t_2))))
    | `N -> 
      (fun a_4 -> 
        a_4))
and testQrevMap_d0 ls_0 =
  ((qrev_d0 (`N)) ((map_d0 (fun x_0 -> 
    (x_0 + 1))) ls_0));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_8 b_3 =
  (if (a_8 <= b_3) then
    (`C(a_8, ((enumFromTo_d0_d0 (a_8 + 1)) b_3)))
  else
    (`N));;
let rec enumFromTo_d1_d0 a_6 b_2 =
  (if (a_6 <= b_2) then
    (`C(a_6, ((enumFromTo_d1_d0 (a_6 + 1)) b_2)))
  else
    (`N));;
let rec qrev_d0_d0 a_9 ys_2 =
  (ys_2 a_9);;
let rec qrev_d0_d1 a_7 ys_1 =
  (ys_1 a_7);;
let rec map_d0_d0 f_3 xs_3 _lh_popOutId_0_0 =
  (match xs_3 with
    | `C(h_4, t_4) -> 
      (let rec h_5 = (f_3 h_4) in
        (let rec t_5 = ((map_d0_d0 f_3) t_4) in
          ((qrev_d0_d0 (`C(h_5, _lh_popOutId_0_0))) t_5)))
    | `N -> 
      _lh_popOutId_0_0)
and testQrevMap_d0_d0 ls_3 =
  ((qrev_d0_d1 (`N)) ((map_d0_d0 (fun x_3 -> 
    (x_3 + 1))) ls_3));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_QrevMap" (fun () -> ignore ((testQrevMap ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"manual_QrevMap" (fun () -> ignore ((testManual ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"lumberhack_QrevMap" (fun () -> ignore ((testQrevMap_d0 ((enumFromTo_d1 1) 10000))));
  Bench.Test.create ~name:"lumberhack_pop_out_QrevMap" (fun () -> ignore ((testQrevMap_d0_d0 ((enumFromTo_d1_d0 1) 10000))));
])
