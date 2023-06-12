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
and testMapmapPolyVar ls_1 =
  ((map ((map ls_1) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

(* optimized *)
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 < b_0) then
    (`C(a_0, ((enumFromTo_d0 (a_0 + 1)) b_0)))
  else
    (`N))
and map_d0 ls_1 f_0 =
  (ls_1 f_0)
and map_d1 ls_2 f_1 =
  (match ls_2 with
    | `C(h_0, t_0) -> 
      (let rec h_1 = (f_1 h_0) in
        (let rec t_1 = ((map_d1 t_0) f_1) in
          (fun f_2 -> 
            (`C((f_2 h_1), ((map_d0 t_1) f_2))))))
    | `N -> 
      (fun f_3 -> 
        (`N)))
and testMapmapPolyVar_d0 ls_0 =
  ((map_d0 ((map_d1 ls_0) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"lumberhack_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar_d0 ((enumFromTo_d0 1) 100000))));
  Bench.Test.create ~name:"original_MapmapPolyVar" (fun () -> ignore ((testMapmapPolyVar ((enumFromTo 1) 100000))));
])
