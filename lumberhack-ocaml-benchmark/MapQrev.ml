(*
ocamlfind ocamlopt -rectypes -thread -O3 ./MapQrev.ml -o "./MapQrev.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapQrev.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

type ('t0, 't1) lh_bigadt = C of 't0 * 't1 | N ;;

(* original *)
let rec _lhManualMapQrev f_1 xs_1 a_2 =
  (match xs_1 with
    | C(h_2, t_2) -> 
      (((_lhManualMapQrev f_1) t_2) (C((f_1 h_2), a_2)))
    | N -> 
      a_2)
and enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (N))
and map f_0 xs_0 =
  (match xs_0 with
    | C(h_0, t_0) -> 
      (C((f_0 h_0), ((map f_0) t_0)))
    | N -> 
      (N))
and qrev a_1 ys_0 =
  (match ys_0 with
    | C(h_1, t_1) -> 
      ((qrev (C(h_1, a_1))) t_1)
    | N -> 
      a_1)
and testManual ls_1 =
  (((_lhManualMapQrev (fun x_1 -> 
    (x_1 + 1))) ls_1) (N))
and testMapQrev ls_0 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((qrev (N)) ls_0));;

(* lumberhack *)
let rec enumFromTo_d0 a_3 b_1 =
  (if (a_3 <= b_1) then
    (C(a_3, ((enumFromTo_d0 (a_3 + 1)) b_1)))
  else
    (N))
and enumFromTo_d1 a_1 b_0 =
  (if (a_1 <= b_0) then
    (C(a_1, ((enumFromTo_d1 (a_1 + 1)) b_0)))
  else
    (N))
and map_d0 f_3 xs_1 =
  (xs_1 f_3)
and qrev_d0 a_0 ys_0 =
  (match ys_0 with
    | C(h_0, t_0) -> 
      ((qrev_d0 (let rec h_1 = h_0 in
        (let rec t_1 = a_0 in
          (fun f_0 -> 
            (C((f_0 h_1), ((map_d0 f_0) t_1))))))) t_0)
    | N -> 
      a_0)
and testMapQrev_d0 ls_0 =
  ((map_d0 (fun x_0 -> 
    (x_0 + 1))) ((qrev_d0 (fun f_1 -> 
    (N))) ls_0));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_4 b_2 =
  (if (a_4 <= b_2) then
    (C(a_4, ((enumFromTo_d0_d0 (a_4 + 1)) b_2)))
  else
    (N))
and enumFromTo_d1_d0 a_5 b_3 =
  (if (a_5 <= b_3) then
    (C(a_5, ((enumFromTo_d1_d0 (a_5 + 1)) b_3)))
  else
    (N))
and map_d0_d0 f_4 xs_2 =
  (xs_2 f_4)
and map_d0_d1 f_6 xs_3 =
  (xs_3 f_6)
and qrev_d0_d0 a_7 ys_1 =
  (match ys_1 with
    | C(h_4, t_4) -> 
      ((qrev_d0_d0 (let rec h_5 = h_4 in
        (let rec t_5 = a_7 in
          (fun f_8 -> 
            (C((f_8 h_5), ((map_d0_d1 f_8) t_5))))))) t_4)
    | N -> 
      a_7)
and testMapQrev_d0_d0 ls_3 =
  ((map_d0_d0 (fun x_3 -> 
    (x_3 + 1))) ((qrev_d0_d0 (fun f_5 -> 
    (N))) ls_3));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapQrev" (fun () -> ignore ((testMapQrev ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"manual_MapQrev" (fun () -> ignore ((testManual ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"lumberhack_MapQrev" (fun () -> ignore ((testMapQrev_d0 ((enumFromTo_d1 1) 10000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapQrev" (fun () -> ignore ((testMapQrev_d0_d0 ((enumFromTo_d1_d0 1) 10000))));
])
