(*
touch ./SumMapEnum.mli && ocamlc ./SumMapEnum.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumMapEnum.ml -o "./SumMapEnum.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapEnum.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
      (`C((f_0 h_0), ((map f_0) t_0)))
    | `N -> 
      (`N));;
let rec sum ls_1 =
  (match ls_1 with
    | `C(h_1, t_1) -> 
      (h_1 + (sum t_1))
    | `N -> 
      0);;
let rec testSumMapEnum n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec sum__d0 ls_1 =
  (ls_1 99);;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = ((map__d0 f_1) t_0) in
            (let rec h_1 = (f_1 h_0) in
              (fun _lh_dummy_0 -> 
                (h_1 + (sum__d0 t_1))))))))
  else
    (fun f_2 _lh_dummy_1 -> 
      0))
and testSumMapEnum__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec sum__d0 ls_1 =
  (ls_1 99);;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = ((map__d0 _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            (h_1 + (sum__d0 t_1))))))
  else
    0)
and testSumMapEnum__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapEnum" (fun () -> ignore (let open Module_original in ((testSumMapEnum 300000))));
  Bench.Test.create ~name:"lumberhack_SumMapEnum" (fun () -> ignore (let open Module_lumberhack in ((testSumMapEnum__d0 300000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapEnum" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testSumMapEnum__d0 300000))));
])
