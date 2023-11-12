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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (fun f_2 -> 
            (`LH_C((f_2 h_1), ((map__d0 f_2) t_1))))))
    | `LH_N -> 
      (fun f_3 -> 
        (`LH_N)))
and testMapmapBuiltInType__d0 _lh_testMapmapBuiltInType_arg1_0 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) _lh_testMapmapBuiltInType_arg1_0));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1 ls_1 _lh_popOutId_0_0 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map__d1 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (`LH_C((_lh_popOutId_0_0 h_1), ((map__d0 _lh_popOutId_0_0) t_1)))))
    | `LH_N -> 
      (`LH_N))
and testMapmapBuiltInType__d0 _lh_testMapmapBuiltInType_arg1_0 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) _lh_testMapmapBuiltInType_arg1_0));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapBuiltInType" (fun () -> ignore (let open Module_original in ((testMapmapBuiltInType__d0 ((enumFromTo__d0 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_MapmapBuiltInType" (fun () -> ignore (let open Module_lumberhack in ((testMapmapBuiltInType__d0 ((enumFromTo__d0 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapBuiltInType" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testMapmapBuiltInType__d0 ((enumFromTo__d0 1) 100000)))));
])
