(*
ocamlfind ocamlopt -rectypes -thread -O3 ./SumMapEnum.ml -o "./SumMapEnum.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapEnum.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec enumFromTo a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec sum ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (h_1 + (sum t_1))
    | `N -> 
      0);;
let rec testSumMapEnum n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;

(* lumberhack *)
let rec map_d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec sum_d0 ls_1 =
  ls_1;;
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_0 = a_0 in
      (let rec t_0 = ((enumFromTo_d0 (a_0 + 1)) b_0) in
        (fun f_1 -> 
          (let rec h_1 = (f_1 h_0) in
            (let rec t_1 = ((map_d0 f_1) t_0) in
              (h_1 + (sum_d0 t_1)))))))
  else
    (fun f_2 -> 
      0))
and testSumMapEnum_d0 n_0 =
  (sum_d0 ((map_d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_d0 1) n_0)));;

(* lumberhack_pop_out *)
let rec map_d0_d0 f_4 ls_3 =
  (ls_3 f_4);;
let rec map_d0_d1 f_3 ls_2 =
  (ls_2 f_3);;
let rec sum_d0_d0 ls_5 =
  ls_5;;
let rec sum_d0_d1 ls_4 =
  ls_4;;
let rec enumFromTo_d0_d0 a_1 b_1 _lh_popOutId_0_0 =
  (if (a_1 <= b_1) then
    (let rec h_2 = a_1 in
      (let rec t_2 = ((enumFromTo_d0_d0 (a_1 + 1)) b_1) in
        (let rec h_3 = (_lh_popOutId_0_0 h_2) in
          (let rec t_3 = ((map_d0_d0 _lh_popOutId_0_0) t_2) in
            (h_3 + (sum_d0_d0 t_3))))))
  else
    0)
and testSumMapEnum_d0_d0 n_1 =
  (sum_d0_d1 ((map_d0_d1 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo_d0_d0 1) n_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapEnum" (fun () -> ignore ((testSumMapEnum 300000)));
  Bench.Test.create ~name:"lumberhack_SumMapEnum" (fun () -> ignore ((testSumMapEnum_d0 300000)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapEnum" (fun () -> ignore ((testSumMapEnum_d0_d0 300000)));
])
