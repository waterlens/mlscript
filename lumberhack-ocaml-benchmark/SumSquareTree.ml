(*
ocamlfind ocamlopt -rectypes -thread -O3 ./SumSquareTree.ml -o "./SumSquareTree.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumSquareTree.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec genTree n_0 =
  (if (n_0 > 0) then
    (`T(n_0, (genTree (n_0 - 1)), (genTree (n_0 - 1))))
  else
    (`L));;
let rec sqTree t_0 =
  (match t_0 with
    | `T(v_0, l_0, r_0) -> 
      (`T((v_0 * v_0), (sqTree l_0), (sqTree r_0)))
    | `L -> 
      (`L));;
let rec sumTree t_1 =
  (match t_1 with
    | `T(v_1, l_1, r_1) -> 
      ((v_1 + (sumTree l_1)) + (sumTree r_1))
    | `L -> 
      0);;
let rec testSumSquareTree n_1 =
  (sumTree (sqTree (genTree n_1)));;

(* lumberhack *)
let rec genTree_d0 n_1 =
  (if (n_1 > 0) then
    (`T(n_1, (genTree_d0 (n_1 - 1)), (genTree_d0 (n_1 - 1))))
  else
    (`L));;
let rec sumTree_d0 t_0 =
  t_0;;
let rec sqTree_d0 t_1 =
  (match t_1 with
    | `T(v_0, l_0, r_0) -> 
      (let rec v_1 = (v_0 * v_0) in
        (let rec l_1 = (sqTree_d0 l_0) in
          (let rec r_1 = (sqTree_d0 r_0) in
            ((v_1 + (sumTree_d0 l_1)) + (sumTree_d0 r_1)))))
    | `L -> 
      0)
and testSumSquareTree_d0 n_0 =
  (sumTree_d0 (sqTree_d0 (genTree_d0 n_0)));;

(* lumberhack_pop_out *)
let rec genTree_d0_d0 n_2 =
  (if (n_2 > 0) then
    (`T(n_2, (genTree_d0_d0 (n_2 - 1)), (genTree_d0_d0 (n_2 - 1))))
  else
    (`L));;
let rec sumTree_d0_d0 t_3 =
  t_3;;
let rec sumTree_d0_d1 t_4 =
  t_4;;
let rec sumTree_d0_d2 t_5 =
  t_5;;
let rec sqTree_d0_d0 t_2 =
  (match t_2 with
    | `T(v_2, l_2, r_2) -> 
      (let rec v_3 = (v_2 * v_2) in
        (let rec l_3 = (sqTree_d0_d0 l_2) in
          (let rec r_3 = (sqTree_d0_d0 r_2) in
            ((v_3 + (sumTree_d0_d0 l_3)) + (sumTree_d0_d1 r_3)))))
    | `L -> 
      0)
and testSumSquareTree_d0_d0 n_3 =
  (sumTree_d0_d2 (sqTree_d0_d0 (genTree_d0_d0 n_3)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumSquareTree" (fun () -> ignore ((testSumSquareTree 18)));
  Bench.Test.create ~name:"lumberhack_SumSquareTree" (fun () -> ignore ((testSumSquareTree_d0 18)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumSquareTree" (fun () -> ignore ((testSumSquareTree_d0_d0 18)));
])
