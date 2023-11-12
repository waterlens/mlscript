(*
touch ./FoldMap.mli && ocamlc ./FoldMap.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./FoldMap.ml -o "./FoldMap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./FoldMap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec foldl__d0 f_0 s_0 ls_0 =
  ((ls_0 f_0) s_0);;
let rec map__d0 f_1 ls_1 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d0 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (fun f_2 s_1 -> 
            (((foldl__d0 f_2) ((f_2 s_1) h_1)) t_1))))
    | `N -> 
      (fun f_3 s_2 -> 
        s_2))
and testFoldMap__d0 n_0 =
  (((foldl__d0 (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map__d0 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo__d0 1) n_0)));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`N));;
let rec foldl__d0 f_0 s_0 ls_0 =
  ((ls_0 f_0) s_0);;
let rec map__d0 f_1 ls_1 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_1 with
    | `C(h_0, t_0) -> 
      (let rec t_1 = ((map__d0 f_1) t_0) in
        (let rec h_1 = (f_1 h_0) in
          (((foldl__d0 _lh_popOutId_0_0) ((_lh_popOutId_0_0 _lh_popOutId_1_0) h_1)) t_1)))
    | `N -> 
      _lh_popOutId_1_0)
and testFoldMap__d0 n_0 =
  (((foldl__d0 (fun i_0 x_0 -> 
    (i_0 + x_0))) 0) ((map__d0 (fun x_1 -> 
    (x_1 * x_1))) ((enumFromTo__d0 1) n_0)));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_FoldMap" (fun () -> ignore (let open Module_original in ((testFoldMap 300000))));
  Bench.Test.create ~name:"lumberhack_FoldMap" (fun () -> ignore (let open Module_lumberhack in ((testFoldMap__d0 300000))));
  Bench.Test.create ~name:"lumberhack_pop_out_FoldMap" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testFoldMap__d0 300000))));
])
