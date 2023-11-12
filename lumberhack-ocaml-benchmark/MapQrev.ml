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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map__d0 f_2 xs_0 =
  (xs_0 f_2);;
let rec qrev__d0 a_1 ys_0 =
  (match ys_0 with
    | `C(h_0, t_0) -> 
      ((qrev__d0 (let rec t_1 = a_1 in
        (let rec h_1 = h_0 in
          (fun f_1 -> 
            (`C((f_1 h_1), ((map__d0 f_1) t_1))))))) t_0)
    | `N -> 
      a_1)
and testMapQrev__d0 ls_0 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((qrev__d0 (fun f_0 -> 
    (`N))) ls_0));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map__d0 f_2 xs_0 =
  (xs_0 f_2);;
let rec qrev__d0 a_1 ys_0 =
  (match ys_0 with
    | `C(h_0, t_0) -> 
      ((qrev__d0 (let rec t_1 = a_1 in
        (let rec h_1 = h_0 in
          (fun f_1 -> 
            (`C((f_1 h_1), ((map__d0 f_1) t_1))))))) t_0)
    | `N -> 
      a_1)
and testMapQrev__d0 ls_0 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((qrev__d0 (fun f_0 -> 
    (`N))) ls_0));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapQrev" (fun () -> ignore (let open Module_original in ((testMapQrev ((enumFromTo 1) 10000)))));
  Bench.Test.create ~name:"lumberhack_MapQrev" (fun () -> ignore (let open Module_lumberhack in ((testMapQrev__d0 ((enumFromTo__d0 1) 10000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapQrev" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testMapQrev__d0 ((enumFromTo__d0 1) 10000)))));
])
