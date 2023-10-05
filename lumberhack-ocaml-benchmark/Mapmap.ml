(*
touch ./Mapmap.mli && ocamlc ./Mapmap.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Mapmap.ml -o "./Mapmap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mapmap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec _lhManual ls_2 f1_0 f2_0 =
  (match ls_2 with
    | `C(h_1, t_1) -> 
      (`C((f2_0 (f1_0 h_1)), (((_lhManual t_1) f1_0) f2_0)))
    | `N -> 
      (`N));;
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
let rec testManual ls_3 =
  (((_lhManual ls_3) (fun x_2 -> 
    (x_2 * x_2))) (fun x_3 -> 
    (x_3 + 1)))
and testMapmap ls_1 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((map (fun x_1 -> 
    (x_1 * x_1))) ls_1));;

(* lumberhack *)
let rec enumFromTo__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`C(a_1, ((enumFromTo__d0 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d1 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1 ls_2 =
  (match ls_2 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (fun f_2 -> 
            (`C((f_2 h_1), ((map__d0 f_2) t_1))))))
    | `N -> 
      (fun f_3 -> 
        (`N)))
and testMapmap__d0 ls_1 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;

(* lumberhack_pop_out *)
let rec enumFromTo__d0__d0 a_3 b_3 =
  (if (a_3 <= b_3) then
    (`C(a_3, ((enumFromTo__d0__d0 (a_3 + 1)) b_3)))
  else
    (`N));;
let rec enumFromTo__d1__d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`C(a_2, ((enumFromTo__d1__d0 (a_2 + 1)) b_2)))
  else
    (`N));;
let rec map__d0__d0 f_8 ls_9 =
  (ls_9 f_8);;
let rec map__d0__d1 f_7 ls_8 =
  (ls_8 f_7);;
let rec map__d1__d0 f_4 ls_5 _lh_popOutId_0_0 =
  (match ls_5 with
    | `C(h_3, t_3) -> 
      (let rec t_4 = ((map__d1__d0 f_4) t_3) in
        (let rec h_4 = (f_4 h_3) in
          (`C((_lh_popOutId_0_0 h_4), ((map__d0__d1 _lh_popOutId_0_0) t_4)))))
    | `N -> 
      (`N))
and testMapmap__d0__d0 ls_1_0 =
  ((map__d0__d0 (fun x_6 -> 
    (x_6 + 1))) ((map__d1__d0 (fun x_7 -> 
    (x_7 * x_7))) ls_1_0));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mapmap" (fun () -> ignore ((testMapmap ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"manual_Mapmap" (fun () -> ignore ((testManual ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"lumberhack_Mapmap" (fun () -> ignore ((testMapmap__d0 ((enumFromTo__d1 1) 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_Mapmap" (fun () -> ignore ((testMapmap__d0__d0 ((enumFromTo__d1__d0 1) 100000))));
])
