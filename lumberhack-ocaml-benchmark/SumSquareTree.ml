(*
touch ./SumSquareTree.mli && ocamlc ./SumSquareTree.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumSquareTree.ml -o "./SumSquareTree.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumSquareTree.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec genTree__d0 n_1 =
  (if (n_1 > 0) then
    (`T(n_1, (genTree__d0 (n_1 - 1)), (genTree__d0 (n_1 - 1))))
  else
    (`L));;
let rec sumTree__d0 t_0 =
  (t_0 99);;
let rec sqTree__d0 t_1 =
  (match t_1 with
    | `T(v_0, l_0, r_0) -> 
      (let rec r_1 = (sqTree__d0 r_0) in
        (let rec l_1 = (sqTree__d0 l_0) in
          (let rec v_1 = (v_0 * v_0) in
            (fun _lh_dummy_0 -> 
              ((v_1 + (sumTree__d0 l_1)) + (sumTree__d0 r_1))))))
    | `L -> 
      (fun _lh_dummy_1 -> 
        0))
and testSumSquareTree__d0 n_0 =
  (sumTree__d0 (sqTree__d0 (genTree__d0 n_0)));;

(* lumberhack_pop_out *)
let rec genTree__d0__d0 n_3 =
  (if (n_3 > 0) then
    (`T(n_3, (genTree__d0__d0 (n_3 - 1)), (genTree__d0__d0 (n_3 - 1))))
  else
    (`L));;
let rec sumTree__d0__d0 t_2 =
  (t_2 99);;
let rec sumTree__d0__d1 t_3 =
  (t_3 99);;
let rec sumTree__d0__d2 t_4 =
  (t_4 99);;
let rec sqTree__d0__d0 t_5 _lh_popOutId_0_0 =
  (match t_5 with
    | `T(v_2, l_2, r_2) -> 
      (let rec r_3 = (sqTree__d0__d0 r_2) in
        (let rec l_3 = (sqTree__d0__d0 l_2) in
          (let rec v_3 = (v_2 * v_2) in
            ((v_3 + (sumTree__d0__d0 l_3)) + (sumTree__d0__d1 r_3)))))
    | `L -> 
      0)
and testSumSquareTree__d0__d0 n_2 =
  (sumTree__d0__d2 (sqTree__d0__d0 (genTree__d0__d0 n_2)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumSquareTree" (fun () -> ignore ((testSumSquareTree 18)));
  Bench.Test.create ~name:"lumberhack_SumSquareTree" (fun () -> ignore ((testSumSquareTree__d0 18)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumSquareTree" (fun () -> ignore ((testSumSquareTree__d0__d0 18)));
])
