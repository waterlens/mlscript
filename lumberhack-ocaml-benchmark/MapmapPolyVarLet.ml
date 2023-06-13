(*
ocamlfind ocamlopt -rectypes -thread -O3 ./MapmapPolyVarLet.ml -o "./MapmapPolyVarLet.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapPolyVarLet.out
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
      (let rec r_0 = (f_0 h_0) in
        (`C(r_0, ((map t_0) f_0))))
    | `N -> 
      (`N))
and testMapmapPolyVarLet ls_1 =
  ((map ((map ls_1) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

(* lumberhack *)
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 < b_0) then
    (`C(a_0, ((enumFromTo_d0 (a_0 + 1)) b_0)))
  else
    (`N))
and map_d0 ls_0 f_0 =
  (ls_0 f_0)
and map_d1 ls_2 f_1 =
  (match ls_2 with
    | `C(h_0, t_0) -> 
      (let rec r_0 = (f_1 h_0) in
        (let rec h_1 = r_0 in
          (let rec t_1 = ((map_d1 t_0) f_1) in
            (fun f_2 -> 
              (let rec r_1 = (f_2 h_1) in
                (`C(r_1, ((map_d0 t_1) f_2))))))))
    | `N -> 
      (fun f_3 -> 
        (`N)))
and testMapmapPolyVarLet_d0 ls_1 =
  ((map_d0 ((map_d1 ls_1) (fun x_0 -> 
    (x_0 + 1)))) (fun x_1 -> 
    (x_1 * x_1)));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_1 b_1 =
  (if (a_1 < b_1) then
    (`C(a_1, ((enumFromTo_d0_d0 (a_1 + 1)) b_1)))
  else
    (`N))
and map_d0_d0 ls_3 f_4 =
  (ls_3 f_4)
and map_d0_d1 ls_4 f_5 =
  (ls_4 f_5)
and map_d1_d0 ls_5 f_6 _lh_popOutId_0_0 =
  (match ls_5 with
    | `C(h_2, t_2) -> 
      (let rec r_2 = (f_6 h_2) in
        (let rec h_3 = r_2 in
          (let rec t_3 = ((map_d1_d0 t_2) f_6) in
            (let rec r_3 = (_lh_popOutId_0_0 h_3) in
              (`C(r_3, ((map_d0_d1 t_3) _lh_popOutId_0_0)))))))
    | `N -> 
      (`N))
and testMapmapPolyVarLet_d0_d0 ls_6 =
  ((map_d0_d0 ((map_d1_d0 ls_6) (fun x_2 -> 
    (x_2 + 1)))) (fun x_3 -> 
    (x_3 * x_3)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapPolyVarLet" (fun () -> ignore ((testMapmapPolyVarLet ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"lumberhack_MapmapPolyVarLet" (fun () -> ignore ((testMapmapPolyVarLet_d0 ((enumFromTo_d0 1) 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapPolyVarLet" (fun () -> ignore ((testMapmapPolyVarLet_d0_d0 ((enumFromTo_d0_d0 1) 100000))));
])
