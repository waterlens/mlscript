(*
ocamlfind ocamlopt -rectypes -thread -O3 ./MapmapPolyVar.ml -o "./MapmapPolyVar.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapPolyVar.out
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec enumFromTo a_0 b_0 =
  (if (a_0 < b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N))
and map ls_0 f_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map t_0) f_0)))
    | `N -> 
      (`N))
and testManual ls_2 =
  ((map ls_2) (fun x_2 -> 
    ((x_2 + 1) * (x_2 + 1))))
and testMapmapPolyVar ls_1 =
  ((map ((map ls_1) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

(* optimized *)
let rec enumFromTo_d0 a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo_d0 (a_1 + 1)) b_1)))
  else
    (`N))
and enumFromTo_d1 a_0 b_0 =
  (if (a_0 < b_0) then
    (`C(a_0, ((enumFromTo_d1 (a_0 + 1)) b_0)))
  else
    (`N))
and map_d0 ls_2 f_3 =
  (match ls_2 with
    | `C(h_2, t_2) -> 
      (`C((f_3 h_2), ((map_d0 t_2) f_3)))
    | `N -> 
      (`N))
and map_d1 ls_3 f_4 =
  (ls_3 f_4)
and map_d2 ls_1 f_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (let rec h_1 = (f_0 h_0) in
        (let rec t_1 = ((map_d2 t_0) f_0) in
          (fun f_1 -> 
            (`C((f_1 h_1), ((map_d1 t_1) f_1))))))
    | `N -> 
      (fun f_2 -> 
        (`N)))
and testMapmapPolyVar_d0 ls_0 =
  ((map_d1 ((map_d2 ls_0) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"manual_MapmapPolyVar" (fun () -> ignore ((testManual ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"lumberhack_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar_d0 ((enumFromTo_d0 1) 100000))));
])
