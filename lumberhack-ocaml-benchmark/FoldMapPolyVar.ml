(*
ocamlfind ocamlopt -rectypes -thread -O3 ./FoldMapPolyVar.ml -o "./FoldMapPolyVar.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./FoldMapPolyVar.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec foldl f_1 s_0 ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (((foldl f_1) ((f_1 s_0) h_1)) t_1)
    | `N -> 
      s_0)
and fromEnumTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((fromEnumTo (a_0 + 1)) b_0)))
  else
    (`N))
and map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N))
and testFoldMapPolyVar n_0 =
  (((foldl (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map (fun x_1 -> 
    (x_1 * x_1))) ((fromEnumTo 1) n_0)));;

(* lumberhack *)
let rec foldl_d0 f_0 s_0 ls_0 =
  ((ls_0 s_0) f_0)
and fromEnumTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((fromEnumTo_d0 (a_0 + 1)) b_0)))
  else
    (`N))
and map_d0 f_1 ls_1 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (let rec h_1 = (f_1 h_0) in
        (let rec t_1 = ((map_d0 f_1) t_0) in
          (fun s_1 f_2 -> 
            (((foldl_d0 f_2) ((f_2 s_1) h_1)) t_1))))
    | `N -> 
      (fun s_2 f_3 -> 
        s_2))
and testFoldMapPolyVar_d0 n_0 =
  (((foldl_d0 (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map_d0 (fun x_1 -> 
    (x_1 * x_1))) ((fromEnumTo_d0 1) n_0)));;

(* lumberhack_pop_out *)
let rec foldl_d0_d0 f_7 s_5 ls_3 =
  ((ls_3 s_5) f_7)
and foldl_d0_d1 f_8 s_6 ls_4 =
  ((ls_4 s_6) f_8)
and fromEnumTo_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`C(a_1, ((fromEnumTo_d0_d0 (a_1 + 1)) b_1)))
  else
    (`N))
and map_d0_d0 f_4 ls_2 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_2 with
    | `C(h_2, t_2) -> 
      (let rec h_3 = (f_4 h_2) in
        (let rec t_3 = ((map_d0_d0 f_4) t_2) in
          (((foldl_d0_d1 _lh_popOutId_1_0) ((_lh_popOutId_1_0 _lh_popOutId_0_0) h_3)) t_3)))
    | `N -> 
      _lh_popOutId_0_0)
and testFoldMapPolyVar_d0_d0 n_1 =
  (((foldl_d0_d0 (fun i_1 x_2 -> 
    (i_1 + x_2))) 0) ((map_d0_d0 (fun x_3 -> 
    (x_3 * x_3))) ((fromEnumTo_d0_d0 1) n_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_FoldMapPolyVar" (fun () -> ignore ((testFoldMapPolyVar 300000)));
  Bench.Test.create ~name:"lumberhack_FoldMapPolyVar" (fun () -> ignore ((testFoldMapPolyVar_d0 300000)));
  Bench.Test.create ~name:"lumberhack_pop_out_FoldMapPolyVar" (fun () -> ignore ((testFoldMapPolyVar_d0_d0 300000)));
])
