(*
touch ./MapmapBuiltInType.mli && ocamlc ./MapmapBuiltInType.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./MapmapBuiltInType.ml -o "./MapmapBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec map__d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_3 h_2_1), ((map__d1 f_1_3) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec testMapmapBuiltInType__d0 _lh_testMapmapBuiltInType_arg1_1 =
  ((map__d0 (fun x_4 -> 
    (x_4 + 1))) ((map__d1 (fun x_5 -> 
    (x_5 * x_5))) _lh_testMapmapBuiltInType_arg1_1));;

(* lumberhack *)
let rec enumFromTo__d0__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map__d0__d0 f_3 ls_1 =
  (ls_1 f_3);;
let rec map__d1__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1__d0 f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (fun f_1 -> 
            (`LH_C((f_1 h_1), ((map__d0__d0 f_1) t_1))))))
    | `LH_N -> 
      (fun f_2 -> 
        (`LH_N)))
and testMapmapBuiltInType__d0__d0 _lh_testMapmapBuiltInType_arg1_0 =
  ((map__d0__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1__d0 (fun x_1 -> 
    (x_1 * x_1))) _lh_testMapmapBuiltInType_arg1_0));;

(* lumberhack_pop_out *)
let rec enumFromTo__d0__d0__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo__d0__d0__d0 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec map__d0__d0__d0 f_7 ls_3 =
  (ls_3 f_7);;
let rec map__d0__d0__d1 f_8 ls_4 =
  (ls_4 f_8);;
let rec map__d1__d0__d0 f_4 ls_2 _lh_popOutId_0_0 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map__d1__d0__d0 f_4) t_2) in
        (let rec h_3 = (f_4 h_2) in
          (`LH_C((_lh_popOutId_0_0 h_3), ((map__d0__d0__d1 _lh_popOutId_0_0) t_3)))))
    | `LH_N -> 
      (`LH_N))
and testMapmapBuiltInType__d0__d0__d0 _lh_testMapmapBuiltInType_arg1_1 =
  ((map__d0__d0__d0 (fun x_2 -> 
    (x_2 + 1))) ((map__d1__d0__d0 (fun x_3 -> 
    (x_3 * x_3))) _lh_testMapmapBuiltInType_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapBuiltInType" (fun () -> ignore ((testMapmapBuiltInType__d0 ((enumFromTo__d0 1) 100000))));
  Bench.Test.create ~name:"lumberhack_MapmapBuiltInType" (fun () -> ignore ((testMapmapBuiltInType__d0__d0 ((enumFromTo__d0__d0 1) 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapBuiltInType" (fun () -> ignore ((testMapmapBuiltInType__d0__d0__d0 ((enumFromTo__d0__d0__d0 1) 100000))));
])
