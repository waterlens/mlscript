(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Mapmap.ml -o "./Mapmap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mapmap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec enumFromTo_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (a_2::((enumFromTo_d0 (a_2 + 1)) b_2))
  else
    [])
and map_d0 f_4 ls_7 =
  (match ls_7 with
    | (h_7 :: t_8) -> 
      ((f_4 h_7)::((map_d0 f_4) t_8))
    | [] -> 
      [])
and map_d1 f_5 ls_8 =
  (match ls_8 with
    | (h_8 :: t_9) -> 
      ((f_5 h_8)::((map_d1 f_5) t_9))
    | [] -> 
      [])
and testMapmap_d0 _lh_testMapmap_arg1_1 =
  ((map_d0 (fun x_2 -> 
    (x_2 + 1))) ((map_d1 (fun x_3 -> 
    (x_3 + x_3))) _lh_testMapmap_arg1_1));;

(* lumberhack *)
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (a_0::((enumFromTo_d0_d0 (a_0 + 1)) b_0))
  else
    [])
and map_d0_d0 f_0 ls_0 =
  (ls_0 f_0)
and map_d1_d0 f_1 ls_1 =
  (match ls_1 with
    | (h_0 :: t_0) -> 
      (let rec h_1 = (f_1 h_0) in
        (let rec t_1 = ((map_d1_d0 f_1) t_0) in
          (fun f_2 -> 
            ((f_2 h_1)::((map_d0_d0 f_2) t_1)))))
    | [] -> 
      (fun f_3 -> 
        []))
and testMapmap_d0_d0 _lh_testMapmap_arg1_0 =
  ((map_d0_d0 (fun x_0 -> 
    (x_0 + 1))) ((map_d1_d0 (fun x_1 -> 
    (x_1 + x_1))) _lh_testMapmap_arg1_0));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (a_1::((enumFromTo_d0_d0_d0 (a_1 + 1)) b_1))
  else
    [])
and map_d0_d0_d0 f_4 ls_2 =
  (ls_2 f_4)
and map_d0_d0_d1 f_5 ls_3 =
  (ls_3 f_5)
and map_d1_d0_d0 f_6 ls_4 _lh_popOutId_0_0 =
  (match ls_4 with
    | (h_2 :: t_2) -> 
      (let rec h_3 = (f_6 h_2) in
        (let rec t_3 = ((map_d1_d0_d0 f_6) t_2) in
          ((_lh_popOutId_0_0 h_3)::((map_d0_d0_d1 _lh_popOutId_0_0) t_3))))
    | [] -> 
      [])
and testMapmap_d0_d0_d0 _lh_testMapmap_arg1_1 =
  ((map_d0_d0_d0 (fun x_2 -> 
    (x_2 + 1))) ((map_d1_d0_d0 (fun x_3 -> 
    (x_3 + x_3))) _lh_testMapmap_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mapmap" (fun () -> ignore ((testMapmap_d0 ((enumFromTo_d0 1) 500000))));
  Bench.Test.create ~name:"lumberhack_Mapmap" (fun () -> ignore ((testMapmap_d0_d0 ((enumFromTo_d0_d0 1) 500000))));
  Bench.Test.create ~name:"lumberhack_pop_out_Mapmap" (fun () -> ignore ((testMapmap_d0_d0_d0 ((enumFromTo_d0_d0_d0 1) 500000))));
])
