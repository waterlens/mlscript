(*
touch ./Mapmap_side_effect_2.mli && ocamlc ./Mapmap_side_effect_2.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Mapmap_side_effect_2.ml -o "./Mapmap_side_effect_2.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mapmap_side_effect_2.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
(* let string_of_int i = listToTaggedList (explode_string (string_of_int i));; *)
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

let manGlob = ref 0;;
let origGlob = ref 0;;
let lumGlob = ref 0;;
let popGlob = ref 0;;

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
    (let f = x_2 * x_2 in manGlob := 10 * (!manGlob) + f; f))) (fun x_3 -> 
    (let f = x_3 + 1 in manGlob := 10 * (!manGlob) + f; f)))
and testMapmap ls_1 =
  ((map (fun x_3 -> 
    (let f = x_3 + 1 in origGlob := 10 * (!origGlob) + f; f))) ((map (fun x_2 -> 
      (let f = x_2 * x_2 in origGlob := 10 * (!origGlob) + f; f))) ls_1));;

(* lumberhack *)
let rec enumFromTo_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`C(a_1, ((enumFromTo_d0 (a_1 + 1)) b_1)))
  else
    (`N));;
let rec enumFromTo_d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo_d1 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map_d0 f_0 ls_2 =
  (ls_2 f_0);;
let rec map_d1 f_1 ls_3 =
  (match ls_3 with
    | `C(h_1, t_1) -> 
      (let t_2 = ((map_d1 f_1) t_1) in
      (let h_2 = (f_1 h_1) in
          (fun f_2 -> 
            (`C((f_2 h_2), ((map_d0 f_2) t_2))))))
    | `N -> 
      (fun f_3 -> 
        (`N)))
and testMapmap_d0 ls_1 =
  ((map_d0 (fun x_3 -> 
    (let f = x_3 + 1 in lumGlob := 10 * (!lumGlob) + f; f))) ((map_d1 (fun x_2 -> 
      (let f = x_2 * x_2 in lumGlob := 10 * (!lumGlob) + f; f))) ls_1));;

(* lumberhack_pop_out *)
let rec enumFromTo_d0_d0 a_3 b_3 =
  (if (a_3 <= b_3) then
    (`C(a_3, ((enumFromTo_d0_d0 (a_3 + 1)) b_3)))
  else
    (`N));;
let rec enumFromTo_d1_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`C(a_2, ((enumFromTo_d1_d0 (a_2 + 1)) b_2)))
  else
    (`N));;
let rec map_d0_d0 f_7 ls_7 =
  (ls_7 f_7);;
let rec map_d0_d1 f_8 ls_1_0 =
  (ls_1_0 f_8);;
let rec map_d1_d0 f_4 ls_5 _lh_popOutId_0_0 =
  (match ls_5 with
    | `C(h_3, t_3) -> 
      (let rec t_4 = ((map_d1_d0 f_4) t_3) in
      (let rec h_4 = (f_4 h_3) in
          (`C((_lh_popOutId_0_0 h_4), ((map_d0_d1 _lh_popOutId_0_0) t_4)))))
    | `N -> 
      (`N))
and testMapmap_d0_d0 ls_9 =
  ((map_d0_d0 (fun x_3 -> 
    (let f = x_3 + 1 in popGlob := 10 * (!popGlob) + f; f))) ((map_d1_d0 (fun x_2 -> 
      (let f = x_2 * x_2 in popGlob := 10 * (!popGlob) + f; f))) ls_9));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mapmap" (fun () -> ignore (let res = (testMapmap ((enumFromTo 1) 1000)) in (* print_int !origGlob; *) origGlob := 0; res));
  Bench.Test.create ~name:"manual_Mapmap" (fun () -> ignore (let res = (testManual ((enumFromTo 1) 1000)) in (* print_int !manGlob; *) manGlob := 0; res));
  Bench.Test.create ~name:"lumberhack_Mapmap" (fun () -> ignore (let res = (testMapmap_d0 ((enumFromTo_d1 1) 1000)) in (* print_int !lumGlob; *) lumGlob := 0; res));
  Bench.Test.create ~name:"lumberhack_pop_out_Mapmap" (fun () -> ignore (let res = (testMapmap_d0_d0 ((enumFromTo_d1_d0 1) 1000)) in (* print_int !popGlob; *) popGlob := 0; res));
])
