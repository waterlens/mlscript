(*
touch ./SumMapEnumSumAcc.mli && ocamlc ./SumMapEnumSumAcc.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumMapEnumSumAcc.ml -o "./SumMapEnumSumAcc.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapEnumSumAcc.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec summ acc_0 ls_2 =
  (match ls_2 with
    | `N -> 
      acc_0
    | `C(h_1, t_1) -> 
      ((summ (acc_0 + h_1)) t_1));;
let rec sum ls_1 =
  ((summ 0) ls_1)
and testSumMapEnumSumAcc n_0 =
  (sum ((map (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo 1) n_0)));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec summ__d0 acc_2 ls_2 =
  (ls_2 acc_2);;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_1 -> 
          (let rec t_1 = ((map__d0 f_1) t_0) in
            (let rec h_1 = (f_1 h_0) in
              (fun acc_0 -> 
                ((summ__d0 (acc_0 + h_1)) t_1)))))))
  else
    (fun f_2 acc_1 -> 
      acc_1))
and sum__d0 ls_1 =
  ((summ__d0 0) ls_1)
and testSumMapEnumSumAcc__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec summ__d0 acc_2 ls_2 =
  (ls_2 acc_2);;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec t_1 = ((map__d0 _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            ((summ__d0 (_lh_popOutId_1_0 + h_1)) t_1)))))
  else
    _lh_popOutId_1_0)
and sum__d0 ls_1 =
  ((summ__d0 0) ls_1)
and testSumMapEnumSumAcc__d0 n_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) n_0)));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapEnumSumAcc" (fun () -> ignore (let open Module_original in ((testSumMapEnumSumAcc 300000))));
  Bench.Test.create ~name:"lumberhack_SumMapEnumSumAcc" (fun () -> ignore (let open Module_lumberhack in ((testSumMapEnumSumAcc__d0 300000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapEnumSumAcc" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testSumMapEnumSumAcc__d0 300000))));
])