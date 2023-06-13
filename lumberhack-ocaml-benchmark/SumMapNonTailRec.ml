(*
ocamlfind ocamlopt -rectypes -thread -O3 ./SumMapNonTailRec.ml -o "./SumMapNonTailRec.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapNonTailRec.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N))
and sum ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (h_1 + (sum t_1))
    | `N -> 
      0)
and testSumMapNonTailRec n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((upto 1) n_0)))
and upto a_0 b_0 =
  (if (a_0 > b_0) then
    (`N)
  else
    (`C(a_0, ((upto (a_0 + 1)) b_0))));;

(* lumberhack *)
let rec map_d0 f_0 ls_0 =
  (ls_0 f_0)
and sum_d0 ls_1 =
  ls_1
and testSumMapNonTailRec_d0 n_0 =
  (sum_d0 ((map_d0 (fun x_0 -> 
    (x_0 * x_0))) ((upto_d0 1) n_0)))
and upto_d0 a_0 b_0 =
  (if (a_0 > b_0) then
    (fun f_1 -> 
      0)
  else
    (let rec h_0 = a_0 in
      (let rec t_0 = ((upto_d0 (a_0 + 1)) b_0) in
        (fun f_2 -> 
          (let rec h_1 = (f_2 h_0) in
            (let rec t_1 = ((map_d0 f_2) t_0) in
              (h_1 + (sum_d0 t_1))))))));;

(* lumberhack_pop_out *)
let rec map_d0_d0 f_5 ls_2 =
  (ls_2 f_5)
and map_d0_d1 f_6 ls_3 =
  (ls_3 f_6)
and sum_d0_d0 ls_5 =
  ls_5
and sum_d0_d1 ls_4 =
  ls_4
and testSumMapNonTailRec_d0_d0 n_1 =
  (sum_d0_d0 ((map_d0_d0 (fun x_1 -> 
    (x_1 * x_1))) ((upto_d0_d0 1) n_1)))
and upto_d0_d0 a_1 b_1 _lh_popOutId_0_0 =
  (if (a_1 > b_1) then
    0
  else
    (let rec h_2 = a_1 in
      (let rec t_2 = ((upto_d0_d0 (a_1 + 1)) b_1) in
        (let rec h_3 = (_lh_popOutId_0_0 h_2) in
          (let rec t_3 = ((map_d0_d1 _lh_popOutId_0_0) t_2) in
            (h_3 + (sum_d0_d1 t_3)))))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapNonTailRec" (fun () -> ignore ((testSumMapNonTailRec 300000)));
  Bench.Test.create ~name:"lumberhack_SumMapNonTailRec" (fun () -> ignore ((testSumMapNonTailRec_d0 300000)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapNonTailRec" (fun () -> ignore ((testSumMapNonTailRec_d0_d0 300000)));
])
