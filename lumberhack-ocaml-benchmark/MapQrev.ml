(*
touch ./MapQrev.mli && ocamlc ./MapQrev.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./MapQrev.ml -o "./MapQrev.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapQrev.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec map f_0 xs_0 =
  (match xs_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec qrev a_1 ys_0 =
  (match ys_0 with
    | `C(h_1, t_1) -> 
      ((qrev (`C(h_1, a_1))) t_1)
    | `N -> 
      a_1);;
let rec testMapQrev ls_0 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((qrev (`N)) ls_0));;

(* lumberhack *)
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo_d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map_d0 f_2 xs_0 =
  (xs_0 f_2);;
let rec qrev_d0 a_1 ys_0 =
  (match ys_0 with
    | `C(h_0, t_0) -> 
      ((qrev_d0 (let rec h_1 = h_0 in
        (let rec t_1 = a_1 in
          (fun f_1 -> 
            (`C((f_1 h_1), ((map_d0 f_1) t_1))))))) t_0)
    | `N -> 
      a_1)
and testMapQrev_d0 ls_0 =
  ((map_d0 (fun x_0 -> 
    (x_0 + 1))) ((qrev_d0 (fun f_0 -> 
    (`N))) ls_0));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_3 b_1 =
  (if (a_3 <= b_1) then
    (`C(a_3, ((enumFromTo_d0_d0 (a_3 + 1)) b_1)))
  else
    (`N));;
let rec map_d0_d0 f_3 xs_1 =
  (xs_1 f_3);;
let rec map_d0_d1 f_6 xs_2 =
  (xs_2 f_6);;
let rec qrev_d0_d0 a_2 ys_1 =
  (match ys_1 with
    | `C(h_2, t_2) -> 
      ((qrev_d0_d0 (let rec h_3 = h_2 in
        (let rec t_3 = a_2 in
          (fun f_5 -> 
            (`C((f_5 h_3), ((map_d0_d1 f_5) t_3))))))) t_2)
    | `N -> 
      a_2)
and testMapQrev_d0_d0 ls_1 =
  ((map_d0_d0 (fun x_1 -> 
    (x_1 + 1))) ((qrev_d0_d0 (fun f_4 -> 
    (`N))) ls_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapQrev" (fun () -> ignore ((testMapQrev ((enumFromTo 1) 10000))));
  Bench.Test.create ~name:"lumberhack_MapQrev" (fun () -> ignore ((testMapQrev_d0 ((enumFromTo_d0 1) 10000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapQrev" (fun () -> ignore ((testMapQrev_d0_d0 ((enumFromTo_d0_d0 1) 10000))));
])
