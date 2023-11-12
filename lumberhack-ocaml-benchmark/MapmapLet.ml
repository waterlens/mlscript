(*
touch ./MapmapLet.mli && ocamlc ./MapmapLet.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./MapmapLet.ml -o "./MapmapLet.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./MapmapLet.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map__d0 f_3 ls_2 =
  (ls_2 f_3);;
let rec map__d1 f_0 ls_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec r_0 = (f_0 h_0) in
        (let rec t_1 = ((map__d1 f_0) t_0) in
          (let rec h_1 = r_0 in
            (fun f_1 -> 
              (let rec r_1 = (f_1 h_1) in
                (`C(r_1, ((map__d0 f_1) t_1))))))))
    | `N -> 
      (fun f_2 -> 
        (`N)))
and testMapmapLet__d0 ls_1 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec map__d0 f_3 ls_2 =
  (ls_2 f_3);;
let rec map__d1 f_0 ls_0 _lh_popOutId_0_0 =
  (match ls_0 with
    | `C(h_0, t_0) -> 
      (let rec r_0 = (f_0 h_0) in
        (let rec t_1 = ((map__d1 f_0) t_0) in
          (let rec h_1 = r_0 in
            (let rec r_1 = (_lh_popOutId_0_0 h_1) in
              (`C(r_1, ((map__d0 _lh_popOutId_0_0) t_1)))))))
    | `N -> 
      (`N))
and testMapmapLet__d0 ls_1 =
  ((map__d0 (fun x_0 -> 
    (x_0 + 1))) ((map__d1 (fun x_1 -> 
    (x_1 * x_1))) ls_1));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_MapmapLet" (fun () -> ignore (let open Module_original in ((testMapmapLet ((enumFromTo 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_MapmapLet" (fun () -> ignore (let open Module_lumberhack in ((testMapmapLet__d0 ((enumFromTo__d0 1) 100000)))));
  Bench.Test.create ~name:"lumberhack_pop_out_MapmapLet" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testMapmapLet__d0 ((enumFromTo__d0 1) 100000)))));
])
