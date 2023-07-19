(*
ocamlfind ocamlopt -rectypes -thread -O3 ./SumFlatmapEnum.ml -o "./SumFlatmapEnum.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumFlatmapEnum.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec enumFromTo_d0 a_7 b_2 =
  (if (a_7 <= b_2) then
    (`LH_C(a_7, ((enumFromTo_d0 (a_7 + 1)) b_2)))
  else
    (`LH_N));;
let rec mappend_d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_9, t_2_1) -> 
      (`LH_C(h_1_9, ((mappend_d0 t_2_1) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec sum_d0 _lh_sum_arg1_1 _lh_sum_arg2_1 =
  (match _lh_sum_arg2_1 with
    | `LH_N -> 
      _lh_sum_arg1_1
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      ((sum_d0 (_lh_sum_arg1_1 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec flatMap_d0 _lh_flatMap_arg1_1 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((mappend_d0 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap_d0 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and testSumFlatmapEnum_d0 _lh_testSumFlatmapEnum_arg1_1 =
  ((sum_d0 0) ((flatMap_d0 (fun a_6 -> 
    (`LH_C(a_6, (`LH_C(a_6, (`LH_N))))))) ((enumFromTo_d0 1) _lh_testSumFlatmapEnum_arg1_1)));;

(* lumberhack *)
let rec flatMap_d0_d0 _lh_flatMap_arg1_2 _lh_flatMap_arg2_0 =
  (_lh_flatMap_arg2_0 _lh_flatMap_arg1_2);;
let rec mappend_d0_d0 xs_0 ys_3 =
  (xs_0 ys_3);;
let rec sum_d0_d0 _lh_sum_arg1_3 _lh_sum_arg2_0 =
  (_lh_sum_arg2_0 _lh_sum_arg1_3);;
let rec enumFromTo_d0_d0 a_1 b_0 =
  (if (a_1 <= b_0) then
    (let rec _lh_flatMap_LH_C_0_0 = a_1 in
      (let rec _lh_flatMap_LH_C_1_0 = ((enumFromTo_d0_d0 (a_1 + 1)) b_0) in
        (fun _lh_flatMap_arg1_0 -> 
          ((mappend_d0_d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_d0_d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0)))))
  else
    (fun _lh_flatMap_arg1_1 _lh_sum_arg1_2 -> 
      _lh_sum_arg1_2))
and testSumFlatmapEnum_d0_d0 _lh_testSumFlatmapEnum_arg1_0 =
  ((sum_d0_d0 0) ((flatMap_d0_d0 (fun a_0 -> 
    (let rec h_0 = a_0 in
      (let rec t_0 = (let rec h_1 = a_0 in
        (let rec t_1 = (fun ys_0 -> 
          ys_0) in
          (fun ys_1 -> 
            (let rec _lh_sum_LH_C_0_0 = h_1 in
              (let rec _lh_sum_LH_C_1_0 = ((mappend_d0_d0 t_1) ys_1) in
                (fun _lh_sum_arg1_0 -> 
                  ((sum_d0_d0 (_lh_sum_arg1_0 + _lh_sum_LH_C_0_0)) _lh_sum_LH_C_1_0))))))) in
        (fun ys_2 -> 
          (let rec _lh_sum_LH_C_0_1 = h_0 in
            (let rec _lh_sum_LH_C_1_1 = ((mappend_d0_d0 t_0) ys_2) in
              (fun _lh_sum_arg1_1 -> 
                ((sum_d0_d0 (_lh_sum_arg1_1 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1))))))))) ((enumFromTo_d0_d0 1) _lh_testSumFlatmapEnum_arg1_0)));;

(* lumberhack_pop_out *)
let rec flatMap_d0_d0_d0 _lh_flatMap_arg1_5 _lh_flatMap_arg2_1 =
  (_lh_flatMap_arg2_1 _lh_flatMap_arg1_5);;
let rec flatMap_d0_d0_d1 _lh_flatMap_arg1_6 _lh_flatMap_arg2_2 =
  (_lh_flatMap_arg2_2 _lh_flatMap_arg1_6);;
let rec mappend_d0_d0_d0 xs_1 ys_7 =
  (xs_1 ys_7);;
let rec mappend_d0_d0_d1 xs_3 ys_9 =
  (xs_3 ys_9);;
let rec mappend_d0_d0_d2 xs_2 ys_8 =
  (xs_2 ys_8);;
let rec sum_d0_d0_d0 _lh_sum_arg1_9 _lh_sum_arg2_3 =
  (_lh_sum_arg2_3 _lh_sum_arg1_9);;
let rec sum_d0_d0_d1 _lh_sum_arg1_8 _lh_sum_arg2_2 =
  (_lh_sum_arg2_2 _lh_sum_arg1_8);;
let rec sum_d0_d0_d2 _lh_sum_arg1_4 _lh_sum_arg2_1 =
  (_lh_sum_arg2_1 _lh_sum_arg1_4);;
let rec enumFromTo_d0_d0_d0 a_3 b_1 _lh_popOutId_0_0 =
  (if (a_3 <= b_1) then
    (let rec _lh_flatMap_LH_C_0_1 = a_3 in
      (let rec _lh_flatMap_LH_C_1_1 = ((enumFromTo_d0_d0_d0 (a_3 + 1)) b_1) in
        ((mappend_d0_d0_d0 (_lh_popOutId_0_0 _lh_flatMap_LH_C_0_1)) ((flatMap_d0_d0_d0 _lh_popOutId_0_0) _lh_flatMap_LH_C_1_1))))
  else
    (fun _lh_sum_arg1_7 -> 
      _lh_sum_arg1_7))
and testSumFlatmapEnum_d0_d0_d0 _lh_testSumFlatmapEnum_arg1_1 =
  ((sum_d0_d0_d2 0) ((flatMap_d0_d0_d1 (fun a_2 -> 
    (let rec h_2 = a_2 in
      (let rec t_2 = (let rec h_3 = a_2 in
        (let rec t_3 = (fun ys_4 -> 
          ys_4) in
          (fun ys_5 -> 
            (let rec _lh_sum_LH_C_0_2 = h_3 in
              (let rec _lh_sum_LH_C_1_2 = ((mappend_d0_d0_d1 t_3) ys_5) in
                (fun _lh_sum_arg1_5 -> 
                  ((sum_d0_d0_d0 (_lh_sum_arg1_5 + _lh_sum_LH_C_0_2)) _lh_sum_LH_C_1_2))))))) in
        (fun ys_6 -> 
          (let rec _lh_sum_LH_C_0_3 = h_2 in
            (let rec _lh_sum_LH_C_1_3 = ((mappend_d0_d0_d2 t_2) ys_6) in
              (fun _lh_sum_arg1_6 -> 
                ((sum_d0_d0_d1 (_lh_sum_arg1_6 + _lh_sum_LH_C_0_3)) _lh_sum_LH_C_1_3))))))))) ((enumFromTo_d0_d0_d0 1) _lh_testSumFlatmapEnum_arg1_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumFlatmapEnum" (fun () -> ignore ((testSumFlatmapEnum_d0 100000)));
  Bench.Test.create ~name:"lumberhack_SumFlatmapEnum" (fun () -> ignore ((testSumFlatmapEnum_d0_d0 100000)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumFlatmapEnum" (fun () -> ignore ((testSumFlatmapEnum_d0_d0_d0 100000)));
])
