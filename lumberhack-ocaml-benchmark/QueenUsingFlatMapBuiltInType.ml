(*
touch ./QueenUsingFlatMapBuiltInType.mli && ocamlc ./QueenUsingFlatMapBuiltInType.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./QueenUsingFlatMapBuiltInType.ml -o "./QueenUsingFlatMapBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./QueenUsingFlatMapBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec append__d0 _lh_append_arg1_2 _lh_append_arg2_2 =
  (match _lh_append_arg1_2 with
    | `LH_N -> 
      _lh_append_arg2_2
    | `LH_C(_lh_append_LH_C_0_2, _lh_append_LH_C_1_2) -> 
      (`LH_C(_lh_append_LH_C_0_2, ((append__d0 _lh_append_LH_C_1_2) _lh_append_arg2_2)))
    | _ -> 
      (failwith "error"));;
let rec append__d1 _lh_append_arg1_1 _lh_append_arg2_1 =
  (match _lh_append_arg1_1 with
    | `LH_N -> 
      _lh_append_arg2_1
    | `LH_C(_lh_append_LH_C_0_1, _lh_append_LH_C_1_1) -> 
      (`LH_C(_lh_append_LH_C_0_1, ((append__d1 _lh_append_LH_C_1_1) _lh_append_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_5 b_3 =
  (if (a_5 <= b_3) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_3)))
  else
    (`LH_N));;
let rec length__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d0 t_2_2))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_1, _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 <> _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe__d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec flatMap__d0 _lh_flatMap_arg1_2 _lh_flatMap_arg2_2 =
  (match _lh_flatMap_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_2, _lh_flatMap_LH_C_1_2) -> 
      ((append__d0 (_lh_flatMap_arg1_2 _lh_flatMap_LH_C_0_2)) ((flatMap__d0 _lh_flatMap_arg1_2) _lh_flatMap_LH_C_1_2))
    | _ -> 
      (failwith "error"))
and flatMap__d1 _lh_flatMap_arg1_1 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((append__d1 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap__d1 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and gen__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      ((flatMap__d0 (fun b_4 -> 
        ((flatMap__d1 (fun q_1 -> 
          (if (((safe__d0 q_1) 1) b_4) then
            (`LH_C((`LH_C(q_1, b_4)), (`LH_N)))
          else
            (`LH_N)))) ((enumFromTo__d0 1) _lh_gen_arg2_1)))) ((gen__d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1)))
and nsoln__d0 _lh_nsoln_arg1_1 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueenUsingFlatMapBuiltInType__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1 =
  (nsoln__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1);;

(* lumberhack *)
let rec append__d0__d0 _lh_append_arg1_1 _lh_append_arg2_6 =
  (_lh_append_arg1_1 _lh_append_arg2_6);;
let rec append__d1__d0 _lh_append_arg1_0 _lh_append_arg2_0 =
  (_lh_append_arg1_0 _lh_append_arg2_0);;
let rec flatMap__d1__d0 _lh_flatMap_arg1_2 _lh_flatMap_arg2_0 =
  (_lh_flatMap_arg2_0 _lh_flatMap_arg1_2);;
let rec length__d0__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d0__d0 t_0))
    | `LH_N -> 
      0);;
let rec safe__d0__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe__d0__d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0__d0 a_0 b_1 =
  (if (a_0 <= b_1) then
    (let rec _lh_flatMap_LH_C_1_0 = ((enumFromTo__d0__d0 (a_0 + 1)) b_1) in
      (let rec _lh_flatMap_LH_C_0_0 = a_0 in
        (fun _lh_flatMap_arg1_0 -> 
          ((append__d1__d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap__d1__d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0)))))
  else
    (fun _lh_flatMap_arg1_1 _lh_append_arg2_5 -> 
      _lh_append_arg2_5))
and flatMap__d0__d0 _lh_flatMap_arg1_3 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_1, _lh_flatMap_LH_C_1_1) -> 
      ((append__d0__d0 (_lh_flatMap_arg1_3 _lh_flatMap_LH_C_0_1)) ((flatMap__d0__d0 _lh_flatMap_arg1_3) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "error"))
and gen__d0__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      ((flatMap__d0__d0 (fun b_0 -> 
        ((flatMap__d1__d0 (fun q_0 -> 
          (if (((safe__d0__d0 q_0) 1) b_0) then
            (let rec _lh_append_LH_C_1_0 = (fun _lh_append_arg2_1 -> 
              _lh_append_arg2_1) in
              (let rec _lh_append_LH_C_0_0 = (`LH_C(q_0, b_0)) in
                (fun _lh_append_arg2_2 -> 
                  (let rec _lh_append_LH_C_1_1 = ((append__d1__d0 _lh_append_LH_C_1_0) _lh_append_arg2_2) in
                    (let rec _lh_append_LH_C_0_1 = _lh_append_LH_C_0_0 in
                      (fun _lh_append_arg2_3 -> 
                        (`LH_C(_lh_append_LH_C_0_1, ((append__d0__d0 _lh_append_LH_C_1_1) _lh_append_arg2_3)))))))))
          else
            (fun _lh_append_arg2_4 -> 
              _lh_append_arg2_4)))) ((enumFromTo__d0__d0 1) _lh_gen_arg2_0)))) ((gen__d0__d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0)))
and nsoln__d0__d0 _lh_nsoln_arg1_0 =
  (length__d0__d0 ((gen__d0__d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and testQueenUsingFlatMapBuiltInType__d0__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_0 =
  (nsoln__d0__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_0);;

(* lumberhack_pop_out *)
let rec append__d0__d0__d0 _lh_append_arg1_5 _lh_append_arg2_1_4 =
  (_lh_append_arg1_5 _lh_append_arg2_1_4);;
let rec append__d0__d0__d1 _lh_append_arg1_3 _lh_append_arg2_8 =
  (_lh_append_arg1_3 _lh_append_arg2_8);;
let rec append__d1__d0__d0 _lh_append_arg1_2 _lh_append_arg2_7 =
  (_lh_append_arg1_2 _lh_append_arg2_7);;
let rec append__d1__d0__d1 _lh_append_arg1_4 _lh_append_arg2_9 =
  (_lh_append_arg1_4 _lh_append_arg2_9);;
let rec flatMap__d1__d0__d0 _lh_flatMap_arg1_5 _lh_flatMap_arg2_3 =
  (_lh_flatMap_arg2_3 _lh_flatMap_arg1_5);;
let rec flatMap__d1__d0__d1 _lh_flatMap_arg1_4 _lh_flatMap_arg2_2 =
  (_lh_flatMap_arg2_2 _lh_flatMap_arg1_4);;
let rec length__d0__d0__d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length__d0__d0__d0 t_1))
    | `LH_N -> 
      0);;
let rec safe__d0__d0__d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_1, _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 <> _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe__d0__d0__d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0__d0__d0 a_1 b_3 _lh_popOutId_0_0 =
  (if (a_1 <= b_3) then
    (let rec _lh_flatMap_LH_C_1_3 = ((enumFromTo__d0__d0__d0 (a_1 + 1)) b_3) in
      (let rec _lh_flatMap_LH_C_0_3 = a_1 in
        ((append__d1__d0__d1 (_lh_popOutId_0_0 _lh_flatMap_LH_C_0_3)) ((flatMap__d1__d0__d0 _lh_popOutId_0_0) _lh_flatMap_LH_C_1_3))))
  else
    (fun _lh_append_arg2_1_5 -> 
      _lh_append_arg2_1_5))
and flatMap__d0__d0__d0 _lh_flatMap_arg1_6 _lh_flatMap_arg2_4 =
  (match _lh_flatMap_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_2, _lh_flatMap_LH_C_1_2) -> 
      ((append__d0__d0__d1 (_lh_flatMap_arg1_6 _lh_flatMap_LH_C_0_2)) ((flatMap__d0__d0__d0 _lh_flatMap_arg1_6) _lh_flatMap_LH_C_1_2))
    | _ -> 
      (failwith "error"))
and gen__d0__d0__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      ((flatMap__d0__d0__d0 (fun b_2 -> 
        ((flatMap__d1__d0__d1 (fun q_1 -> 
          (if (((safe__d0__d0__d0 q_1) 1) b_2) then
            (let rec _lh_append_LH_C_1_2 = (fun _lh_append_arg2_1_0 -> 
              _lh_append_arg2_1_0) in
              (let rec _lh_append_LH_C_0_2 = (`LH_C(q_1, b_2)) in
                (fun _lh_append_arg2_1_1 -> 
                  (let rec _lh_append_LH_C_1_3 = ((append__d1__d0__d0 _lh_append_LH_C_1_2) _lh_append_arg2_1_1) in
                    (let rec _lh_append_LH_C_0_3 = _lh_append_LH_C_0_2 in
                      (fun _lh_append_arg2_1_2 -> 
                        (`LH_C(_lh_append_LH_C_0_3, ((append__d0__d0__d0 _lh_append_LH_C_1_3) _lh_append_arg2_1_2)))))))))
          else
            (fun _lh_append_arg2_1_3 -> 
              _lh_append_arg2_1_3)))) ((enumFromTo__d0__d0__d0 1) _lh_gen_arg2_1)))) ((gen__d0__d0__d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1)))
and nsoln__d0__d0__d0 _lh_nsoln_arg1_1 =
  (length__d0__d0__d0 ((gen__d0__d0__d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueenUsingFlatMapBuiltInType__d0__d0__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1 =
  (nsoln__d0__d0__d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_QueenUsingFlatMapBuiltInType" (fun () -> ignore ((testQueenUsingFlatMapBuiltInType__d0 11)));
  Bench.Test.create ~name:"lumberhack_QueenUsingFlatMapBuiltInType" (fun () -> ignore ((testQueenUsingFlatMapBuiltInType__d0__d0 11)));
  Bench.Test.create ~name:"lumberhack_pop_out_QueenUsingFlatMapBuiltInType" (fun () -> ignore ((testQueenUsingFlatMapBuiltInType__d0__d0__d0 11)));
])
