(*
touch ./SumMapEnumBuiltInType.mli && ocamlc ./SumMapEnumBuiltInType.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumMapEnumBuiltInType.ml -o "./SumMapEnumBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumMapEnumBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec map__d0 f_1_2 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_1_9, t_2_1) -> 
      (`LH_C((f_1_2 h_1_9), ((map__d0 f_1_2) t_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec sum__d0 _lh_sum_arg1_1 =
  (match _lh_sum_arg1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      (_lh_sum_LH_C_0_1 + (sum__d0 _lh_sum_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec testSumMapEnumBuiltInType__d0 _lh_testSumMapEnumBuiltInType_arg1_1 =
  (sum__d0 ((map__d0 (fun x_3 -> 
    (x_3 * x_3))) ((enumFromTo__d0 1) _lh_testSumMapEnumBuiltInType_arg1_1)));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec map__d0 f_2 ls_0 =
  (ls_0 f_2);;
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun f_0 -> 
          (let rec _lh_sum_LH_C_1_0 = ((map__d0 f_0) t_0) in
            (let rec _lh_sum_LH_C_0_0 = (f_0 h_0) in
              (fun _lh_dummy_0 -> 
                (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0))))))))
  else
    (fun f_1 _lh_dummy_1 -> 
      0))
and testSumMapEnumBuiltInType__d0 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec map__d0 f_2 ls_0 =
  (ls_0 f_2);;
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (let rec _lh_sum_LH_C_1_0 = ((map__d0 _lh_popOutId_0_0) t_0) in
          (let rec _lh_sum_LH_C_0_0 = (_lh_popOutId_0_0 h_0) in
            (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0))))))
  else
    0)
and testSumMapEnumBuiltInType__d0 _lh_testSumMapEnumBuiltInType_arg1_0 =
  (sum__d0 ((map__d0 (fun x_0 -> 
    (x_0 * x_0))) ((enumFromTo__d0 1) _lh_testSumMapEnumBuiltInType_arg1_0)));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumMapEnumBuiltInType" (fun () -> ignore (let open Module_original in ((testSumMapEnumBuiltInType__d0 300000))));
  Bench.Test.create ~name:"lumberhack_SumMapEnumBuiltInType" (fun () -> ignore (let open Module_lumberhack in ((testSumMapEnumBuiltInType__d0 300000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumMapEnumBuiltInType" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testSumMapEnumBuiltInType__d0 300000))));
])
