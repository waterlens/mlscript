(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumMapEnumSumAcc.ml -o "./SumMapEnumSumAcc.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapEnumSumAcc.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

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
let rec summ acc_0 ls_2 =
  (match ls_2 with
    | `N -> 
      acc_0
    | `C(h_1, t_1) -> 
      ((summ (acc_0 + h_1)) t_1));;
let rec sum ls_1 =
  ((summ 0) ls_1)
and testSumMapEnumSumAcc n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;

(* lumberhack *)
let rec map_d0 f_2 ls_2 =
  (ls_2 f_2);;
let rec summ_d0 acc_2 ls_1 =
  (ls_1 acc_2);;
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_0 = (lazy a_0) in
      (let rec t_0 = (lazy ((enumFromTo_d0 (a_0 + 1)) b_0)) in
        (fun f_0 -> 
          (let rec h_1 = (lazy (f_0 (Lazy.force h_0))) in
            (let rec t_1 = (lazy ((map_d0 f_0) (Lazy.force t_0))) in
              (fun acc_0 -> 
                ((summ_d0 (acc_0 + (Lazy.force h_1))) (Lazy.force t_1))))))))
  else
    (fun f_1 acc_1 -> 
      acc_1))
and sum_d0 ls_0 =
  ((summ_d0 0) ls_0)
and testSumMapEnumSumAcc_d0 n_0 =
  (sum_d0 ((map_d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo_d0 1) n_0)));;

(* lumberhack_pop_out *)
let rec map_d0_d0 f_6 ls_5 =
  (ls_5 f_6);;
let rec map_d0_d1 f_3 ls_3 =
  (ls_3 f_3);;
let rec summ_d0_d0 acc_6 ls_6 =
  (ls_6 acc_6);;
let rec summ_d0_d1 acc_3 ls_4 =
  (ls_4 acc_3);;
let rec enumFromTo_d0_d0 a_1 b_1 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_1 <= b_1) then
    (let rec h_2 = (lazy a_1) in
      (let rec t_2 = (lazy ((enumFromTo_d0_d0 (a_1 + 1)) b_1)) in
        (let rec h_3 = (lazy (_lh_popOutId_0_0 (Lazy.force h_2))) in
          (let rec t_3 = (lazy ((map_d0_d0 _lh_popOutId_0_0) (Lazy.force t_2))) in
            ((summ_d0_d0 (_lh_popOutId_1_0 + (Lazy.force h_3))) (Lazy.force t_3))))))
  else
    _lh_popOutId_1_0)
and sum_d0_d0 ls_7 =
  ((summ_d0_d1 0) ls_7)
and testSumMapEnumSumAcc_d0_d0 n_1 =
  (sum_d0_d0 ((map_d0_d1 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo_d0_d0 1) n_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapEnumSumAcc" (fun () -> ignore ((testSumMapEnumSumAcc 300000)));
  Bench.Test.create ~name:"lumberhack_SumMapEnumSumAcc" (fun () -> ignore ((testSumMapEnumSumAcc_d0 300000)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapEnumSumAcc" (fun () -> ignore ((testSumMapEnumSumAcc_d0_d0 300000)));
])
