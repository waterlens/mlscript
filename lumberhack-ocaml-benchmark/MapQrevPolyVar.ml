(*
ocamlfind ocamlopt -rectypes -thread -O3 ./MapQrevPolyVar.ml -o "./MapQrevPolyVar.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapQrevPolyVar.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec _lhManualMapQrev f_1 xs_1 a_2 =
  (match xs_1 with
    | `C(h_2, t_2) -> 
      (((_lhManualMapQrev f_1) t_2) (`C((f_1 h_2), a_2)))
    | `N -> 
      a_2)
and fromEnumTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((fromEnumTo (a_0 + 1)) b_0)))
  else
    (`N))
and map f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N))
and qrev a_1 ys_0 =
  (match ys_0 with
    | `C(h_1, t_1) -> 
      ((qrev (`C(h_1, a_1))) t_1)
    | `N -> 
      a_1)
and testManual ls_1 =
  (((_lhManualMapQrev (fun x_1 -> 
    (x_1 + 1))) ls_1) (`N))
and testMapQrevPolyVar ls_0 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((qrev (`N)) ls_0));;

(* lumberhack *)
let rec fromEnumTo_d0 a_3 b_1 =
  (if (a_3 <= b_1) then
    (`C(a_3, ((fromEnumTo_d0 (a_3 + 1)) b_1)))
  else
    (`N))
and fromEnumTo_d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((fromEnumTo_d1 (a_0 + 1)) b_0)))
  else
    (`N))
and map_d0 f_3 xs_1 =
  (xs_1 f_3)
and qrev_d0 a_1 ys_0 =
  (match ys_0 with
    | `C(h_0, t_0) -> 
      ((qrev_d0 (let rec h_1 = h_0 in
        (let rec t_1 = a_1 in
          (fun f_0 -> 
            (`C((f_0 h_1), ((map_d0 f_0) t_1))))))) t_0)
    | `N -> 
      a_1)
and testMapQrevPolyVar_d0 ls_1 =
  ((map_d0 (fun x_1 -> 
    (x_1 + 1))) ((qrev_d0 (fun f_2 -> 
    (`N))) ls_1));;

(* lumberhack_pop_out *)
let rec fromEnumTo_d0_d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`C(a_5, ((fromEnumTo_d0_d0 (a_5 + 1)) b_2)))
  else
    (`N))
and fromEnumTo_d1_d0 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`C(a_6, ((fromEnumTo_d1_d0 (a_6 + 1)) b_3)))
  else
    (`N))
and map_d0_d0 f_6 xs_2 =
  (xs_2 f_6)
and map_d0_d1 f_7 xs_3 =
  (xs_3 f_7)
and qrev_d0_d0 a_4 ys_1 =
  (match ys_1 with
    | `C(h_3, t_3) -> 
      ((qrev_d0_d0 (let rec h_4 = h_3 in
        (let rec t_4 = a_4 in
          (fun f_4 -> 
            (`C((f_4 h_4), ((map_d0_d1 f_4) t_4))))))) t_3)
    | `N -> 
      a_4)
and testMapQrevPolyVar_d0_d0 ls_2 =
  ((map_d0_d0 (fun x_2 -> 
    (x_2 + 1))) ((qrev_d0_d0 (fun f_5 -> 
    (`N))) ls_2));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapQrevPolyVar" (fun () -> ignore ((testMapQrevPolyVar ((fromEnumTo 1) 10000))));
  Bench.Test.create ~name:"manual_MapQrevPolyVar" (fun () -> ignore ((testManual ((fromEnumTo 1) 10000))));
  Bench.Test.create ~name:"lumberhack_MapQrevPolyVar" (fun () -> ignore ((testMapQrevPolyVar_d0 ((fromEnumTo_d1 1) 10000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapQrevPolyVar" (fun () -> ignore ((testMapQrevPolyVar_d0_d0 ((fromEnumTo_d1_d0 1) 10000))));
])
