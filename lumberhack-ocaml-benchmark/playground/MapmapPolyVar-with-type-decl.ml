(*
ocamlfind ocamlopt -rectypes -thread -O3 ./MapmapPolyVar-with-type-decl.ml -o "./MapmapPolyVar-with-type-decl.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapPolyVar-with-type-decl.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

type l = N | C of int * l;;
(* type ('a, 'b) l = N | C of 'a * 'b;; *)

(* original *)
let rec _lhManual ls_2 f1_0 f2_0 =
  (match ls_2 with
    | C(h_1, t_1) -> 
      (C((f2_0 (f1_0 h_1)), (((_lhManual t_1) f1_0) f2_0)))
    | N -> 
      (N))
and enumFromTo a_0 b_0 =
  (if (a_0 < b_0) then
    (C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (N))
and map ls_0 f_0 =
  (match ls_0 with
    | C(h_0, t_0) -> 
      (C((f_0 h_0), ((map t_0) f_0)))
    | N -> 
      (N))
and testManual ls_3 =
  (((_lhManual ls_3) (fun x_2 -> 
    (x_2 + 1))) (fun x_3 -> 
    (x_3 * x_3)))
and testMapmapPolyVar ls_1 =
  ((map ((map ls_1) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

(* lumberhack *)
let rec enumFromTo_d0 a_1 b_1 =
  (if (a_1 < b_1) then
    (C(a_1, ((enumFromTo_d0 (a_1 + 1)) b_1)))
  else
    (N))
and enumFromTo_d1 a_0 b_0 =
  (if (a_0 < b_0) then
    (C(a_0, ((enumFromTo_d1 (a_0 + 1)) b_0)))
  else
    (N))
and map_d0 ls_2 f_0 =
  (ls_2 f_0)
and map_d1 ls_3 f_1 =
  (match ls_3 with
    | C(h_1, t_1) -> 
      (let rec h_2 = (f_1 h_1) in
        (let rec t_2 = ((map_d1 t_1) f_1) in
          (fun f_2 -> 
            (C((f_2 h_2), ((map_d0 t_2) f_2))))))
    | N -> 
      (fun f_3 -> 
        (N)))
and testMapmapPolyVar_d0 ls_1 =
  ((map_d0 ((map_d1 ls_1) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_3 b_3 =
  (if (a_3 < b_3) then
    (C(a_3, ((enumFromTo_d0_d0 (a_3 + 1)) b_3)))
  else
    (N))
and enumFromTo_d1_d0 a_2 b_2 =
  (if (a_2 < b_2) then
    (C(a_2, ((enumFromTo_d1_d0 (a_2 + 1)) b_2)))
  else
    (N))
and map_d0_d0 ls_9 f_8 =
  (ls_9 f_8)
and map_d0_d1 ls_6 f_4 =
  (ls_6 f_4)
and map_d1_d0 ls_7 f_5 _lh_popOutId_0_0 =
  (match ls_7 with
    | C(h_4, t_4) -> 
      (let rec h_5 = (f_5 h_4) in
        (let rec t_5 = ((map_d1_d0 t_4) f_5) in
          (C((_lh_popOutId_0_0 h_5), ((map_d0_d1 t_5) _lh_popOutId_0_0)))))
    | N -> 
      (N))
and testMapmapPolyVar_d0_d0 ls_1_0 =
  ((map_d0_d0 ((map_d1_d0 ls_1_0) (fun x_6 -> 
    (x_6 + 1)))) (fun x_7 -> 
    (x_7 * x_7)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar ((enumFromTo 1) 500000))));
  Bench.Test.create ~name:"manual_MapmapPolyVar" (fun () -> ignore ((testManual ((enumFromTo 1) 500000))));
  Bench.Test.create ~name:"lumberhack_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar_d0 ((enumFromTo_d1 1) 500000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar_d0_d0 ((enumFromTo_d1_d0 1) 500000))));
])
