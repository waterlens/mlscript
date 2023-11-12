(*
touch ./FlipFlip.mli && ocamlc ./FlipFlip.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./FlipFlip.ml -o "./FlipFlip.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./FlipFlip.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec flip t_0 =
  (match t_0 with
    | `T(l_0, r_0) -> 
      (`T((flip r_0), (flip l_0)))
    | `N(v_0) -> 
      (`N(v_0)));;
let rec genTree n_0 i_0 =
  (if (n_0 <= 0) then
    (`N(i_0))
  else
    (`T(((genTree (n_0 - 1)) i_0), ((genTree (n_0 - 1)) (i_0 + 1)))));;
let rec ff t_1 =
  (flip (flip t_1))
and testFlipFlip t_2 =
  (ff t_2);;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec flip__d0 t_0 =
  (t_0 99);;
let rec genTree__d0 n_0 i_0 =
  (if (n_0 <= 0) then
    (`N(i_0))
  else
    (`T(((genTree__d0 (n_0 - 1)) i_0), ((genTree__d0 (n_0 - 1)) (i_0 + 1)))));;
let rec ff__d0 t_2 =
  (flip__d0 (flip__d1 t_2))
and flip__d1 t_1 =
  (match t_1 with
    | `T(l_0, r_0) -> 
      (let rec r_1 = (flip__d1 l_0) in
        (let rec l_1 = (flip__d1 r_0) in
          (fun _lh_dummy_0 -> 
            (`T((flip__d0 r_1), (flip__d0 l_1))))))
    | `N(v_0) -> 
      (let rec v_1 = v_0 in
        (fun _lh_dummy_1 -> 
          (`N(v_1)))))
and testFlipFlip__d0 t_3 =
  (ff__d0 t_3);;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec flip__d0 t_0 =
  (t_0 99);;
let rec genTree__d0 n_0 i_0 =
  (if (n_0 <= 0) then
    (`N(i_0))
  else
    (`T(((genTree__d0 (n_0 - 1)) i_0), ((genTree__d0 (n_0 - 1)) (i_0 + 1)))));;
let rec ff__d0 t_2 =
  (flip__d0 (flip__d1 t_2))
and flip__d1 t_1 _lh_popOutId_0_0 =
  (match t_1 with
    | `T(l_0, r_0) -> 
      (let rec r_1 = (flip__d1 l_0) in
        (let rec l_1 = (flip__d1 r_0) in
          (`T((flip__d0 r_1), (flip__d0 l_1)))))
    | `N(v_0) -> 
      (let rec v_1 = v_0 in
        (`N(v_1))))
and testFlipFlip__d0 t_3 =
  (ff__d0 t_3);;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_FlipFlip" (fun () -> ignore (let open Module_original in ((testFlipFlip ((genTree 17) 0)))));
  Bench.Test.create ~name:"lumberhack_FlipFlip" (fun () -> ignore (let open Module_lumberhack in ((testFlipFlip__d0 ((genTree__d0 17) 0)))));
  Bench.Test.create ~name:"lumberhack_pop_out_FlipFlip" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testFlipFlip__d0 ((genTree__d0 17) 0)))));
])
