(*
ocamlfind ocamlopt -rectypes -thread -O3 ./MapmapLet.ml -o "./MapmapLet.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapLet.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
      (let rec r_0 = (f_0 h_0) in
        (`C(r_0, ((map f_0) t_0))))
    | `N -> 
      (`N));;
let rec testMapmapLet ls_1 =
  ((map (fun x_0 -> 
    (x_0 + 1))) ((map (fun x_1 -> 
    (x_1 * x_1))) ls_1));;

(* lumberhack *)
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo_d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map_d0 f_3 ls_2 =
  (ls_2 f_3);;
let rec map_d1 f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec r_0 = (f_0 h_0) in
        (let rec h_1 = r_0 in
          (let rec t_1 = ((map_d1 f_0) t_0) in
            (fun f_1 -> 
              (let rec r_1 = (f_1 h_1) in
                (`C(r_1, ((map_d0 f_1) t_1))))))))
    | `N -> 
      (fun f_2 -> 
        (`N)))
and testMapmapLet_d0 ls_1 =
  ((map_d0 (fun x_0 -> 
    (x_0 + 1))) ((map_d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`C(a_1, ((enumFromTo_d0_d0 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec map_d0_d0 f_4 ls_3 =
  (ls_3 f_4);;
let rec map_d0_d1 f_8 ls_5 =
  (ls_5 f_8);;
let rec map_d1_d0 f_5 ls_4 _lh_popOutId_0_0 =
  (match ls_4 with
    | `C(h_2, t_2) -> 
      (let rec r_2 = (f_5 h_2) in
        (let rec h_3 = r_2 in
          (let rec t_3 = ((map_d1_d0 f_5) t_2) in
            (let rec r_3 = (_lh_popOutId_0_0 h_3) in
              (`C(r_3, ((map_d0_d1 _lh_popOutId_0_0) t_3)))))))
    | `N -> 
      (`N))
and testMapmapLet_d0_d0 ls_6 =
  ((map_d0_d0 (fun x_2 -> 
    (x_2 + 1))) ((map_d1_d0 (fun x_3 -> 
    (x_3 * x_3))) ls_6));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapLet" (fun () -> ignore ((testMapmapLet ((enumFromTo 1) 100000))));
  Bench.Test.create ~name:"lumberhack_MapmapLet" (fun () -> ignore ((testMapmapLet_d0 ((enumFromTo_d0 1) 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapLet" (fun () -> ignore ((testMapmapLet_d0_d0 ((enumFromTo_d0_d0 1) 100000))));
])
