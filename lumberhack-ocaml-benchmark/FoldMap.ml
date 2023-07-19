(*
ocamlfind ocamlopt -rectypes -thread -O3 ./FoldMap.ml -o "./FoldMap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./FoldMap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec foldl f_1 s_0 ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (((foldl f_1) ((f_1 s_0) h_1)) t_1)
    | `N -> 
      s_0);;
let rec map f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec testFoldMap n_0 =
  (((foldl (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo 1) n_0)));;

(* lumberhack *)
let rec enumFromTo_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo_d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec foldl_d0 f_0 s_0 ls_0 =
  ((ls_0 s_0) f_0);;
let rec map_d0 f_1 ls_1 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (let rec h_1 = (f_1 h_0) in
        (let rec t_1 = ((map_d0 f_1) t_0) in
          (fun s_1 f_2 -> 
            (((foldl_d0 f_2) ((f_2 s_1) h_1)) t_1))))
    | `N -> 
      (fun s_2 f_3 -> 
        s_2))
and testFoldMap_d0 n_0 =
  (((foldl_d0 (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map_d0 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo_d0 1) n_0)));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`C(a_1, ((enumFromTo_d0_d0 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec foldl_d0_d0 f_5 s_4 ls_3 =
  ((ls_3 s_4) f_5);;
let rec foldl_d0_d1 f_4 s_3 ls_2 =
  ((ls_2 s_3) f_4);;
let rec map_d0_d0 f_6 ls_4 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_4 with
    | `C(h_2, t_2) -> 
      (let rec h_3 = (f_6 h_2) in
        (let rec t_3 = ((map_d0_d0 f_6) t_2) in
          (((foldl_d0_d1 _lh_popOutId_1_0) ((_lh_popOutId_1_0 _lh_popOutId_0_0) h_3)) t_3)))
    | `N -> 
      _lh_popOutId_0_0)
and testFoldMap_d0_d0 n_1 =
  (((foldl_d0_d0 (fun i_1 x_2 -> 
    (i_1 + x_2))) 0) ((map_d0_d0 (fun x_3 -> 
    (x_3 * x_3))) ((enumFromTo_d0_d0 1) n_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_FoldMap" (fun () -> ignore ((testFoldMap 300000)));
  Bench.Test.create ~name:"lumberhack_FoldMap" (fun () -> ignore ((testFoldMap_d0 300000)));
  Bench.Test.create ~name:"lumberhack_pop_out_FoldMap" (fun () -> ignore ((testFoldMap_d0_d0 300000)));
])
