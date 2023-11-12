(*
touch ./SumFlatmap.mli && ocamlc ./SumFlatmap.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./SumFlatmap.ml -o "./SumFlatmap.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumFlatmap.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec enumFromTo__d0 a_7 b_2 =
  (if (a_7 <= b_2) then
    (`LH_C(a_7, ((enumFromTo__d0 (a_7 + 1)) b_2)))
  else
    (`LH_N));;
let rec mappend__d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_9, t_2_1) -> 
      (`LH_C(h_1_9, ((mappend__d0 t_2_1) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec sum__d0 _lh_sum_arg1_1 _lh_sum_arg2_1 =
  (match _lh_sum_arg2_1 with
    | `LH_N -> 
      _lh_sum_arg1_1
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      ((sum__d0 (_lh_sum_arg1_1 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec flatMap__d0 _lh_flatMap_arg1_1 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((mappend__d0 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap__d0 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and testSumFlatmap__d0 _lh_testSumFlatmap_arg1_1 =
  ((sum__d0 0) ((flatMap__d0 (fun a_6 -> 
    (`LH_C(a_6, (`LH_C(a_6, (`LH_N))))))) ((enumFromTo__d0 1) _lh_testSumFlatmap_arg1_1)));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec sum__d0 _lh_sum_arg1_1 _lh_sum_arg2_0 =
  (_lh_sum_arg2_0 _lh_sum_arg1_1);;
let rec flatMap__d0 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (fun _lh_sum_arg1_0 -> 
        _lh_sum_arg1_0)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend__d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap__d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"))
and testSumFlatmap__d0 _lh_testSumFlatmap_arg1_0 =
  ((sum__d0 0) ((flatMap__d0 (fun a_1 -> 
    (let rec t_0 = (let rec t_1 = (fun ys_1 -> 
      ys_1) in
      (let rec h_0 = a_1 in
        (fun ys_2 -> 
          (let rec _lh_sum_LH_C_1_0 = ((mappend__d0 t_1) ys_2) in
            (let rec _lh_sum_LH_C_0_0 = h_0 in
              (fun _lh_sum_arg1_2 -> 
                ((sum__d0 (_lh_sum_arg1_2 + _lh_sum_LH_C_0_0)) _lh_sum_LH_C_1_0))))))) in
      (let rec h_1 = a_1 in
        (fun ys_3 -> 
          (let rec _lh_sum_LH_C_1_1 = ((mappend__d0 t_0) ys_3) in
            (let rec _lh_sum_LH_C_0_1 = h_1 in
              (fun _lh_sum_arg1_3 -> 
                ((sum__d0 (_lh_sum_arg1_3 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1))))))))) ((enumFromTo__d0 1) _lh_testSumFlatmap_arg1_0)));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo__d0 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec sum__d0 _lh_sum_arg1_1 _lh_sum_arg2_0 =
  (_lh_sum_arg2_0 _lh_sum_arg1_1);;
let rec flatMap__d0 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (fun _lh_sum_arg1_0 -> 
        _lh_sum_arg1_0)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend__d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap__d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"))
and testSumFlatmap__d0 _lh_testSumFlatmap_arg1_0 =
  ((sum__d0 0) ((flatMap__d0 (fun a_1 -> 
    (let rec t_0 = (let rec t_1 = (fun ys_1 -> 
      ys_1) in
      (let rec h_0 = a_1 in
        (fun ys_2 -> 
          (let rec _lh_sum_LH_C_1_0 = ((mappend__d0 t_1) ys_2) in
            (let rec _lh_sum_LH_C_0_0 = h_0 in
              (fun _lh_sum_arg1_2 -> 
                ((sum__d0 (_lh_sum_arg1_2 + _lh_sum_LH_C_0_0)) _lh_sum_LH_C_1_0))))))) in
      (let rec h_1 = a_1 in
        (fun ys_3 -> 
          (let rec _lh_sum_LH_C_1_1 = ((mappend__d0 t_0) ys_3) in
            (let rec _lh_sum_LH_C_0_1 = h_1 in
              (fun _lh_sum_arg1_3 -> 
                ((sum__d0 (_lh_sum_arg1_3 + _lh_sum_LH_C_0_1)) _lh_sum_LH_C_1_1))))))))) ((enumFromTo__d0 1) _lh_testSumFlatmap_arg1_0)));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumFlatmap" (fun () -> ignore (let open Module_original in ((testSumFlatmap__d0 100000))));
  Bench.Test.create ~name:"lumberhack_SumFlatmap" (fun () -> ignore (let open Module_lumberhack in ((testSumFlatmap__d0 100000))));
  Bench.Test.create ~name:"lumberhack_pop_out_SumFlatmap" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testSumFlatmap__d0 100000))));
])
