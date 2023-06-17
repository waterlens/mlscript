(*
ocamlfind ocamlopt -rectypes -thread -O3 ./QueenUsingFlatMapBuiltInType.ml -o "./QueenUsingFlatMapBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./QueenUsingFlatMapBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec append_d0 _lh_append_arg1_2 _lh_append_arg2_2 =
  (match _lh_append_arg1_2 with
    | [] -> 
      _lh_append_arg2_2
    | (_lh_append_LH_C_0_2 :: _lh_append_LH_C_1_2) -> 
      (_lh_append_LH_C_0_2::((append_d0 _lh_append_LH_C_1_2) _lh_append_arg2_2))
    | _ -> 
      (failwith "match error"));;
let rec append_d1 _lh_append_arg1_1 _lh_append_arg2_1 =
  (match _lh_append_arg1_1 with
    | [] -> 
      _lh_append_arg2_1
    | (_lh_append_LH_C_0_1 :: _lh_append_LH_C_1_1) -> 
      (_lh_append_LH_C_0_1::((append_d1 _lh_append_LH_C_1_1) _lh_append_arg2_1))
    | _ -> 
      (failwith "match error"));;
let rec enumFromTo_d0 a_2 b_4 =
  (if (a_2 <= b_4) then
    (a_2::((enumFromTo_d0 (a_2 + 1)) b_4))
  else
    []);;
let rec length_d0 ls_7 =
  (match ls_7 with
    | (h_7 :: t_8) -> 
      (1 + (length_d0 t_8))
    | [] -> 
      0);;
let rec safe_d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | [] -> 
      true
    | (_lh_safe_LH_C_0_1 :: _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 != _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 != (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 != (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe_d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "match error"));;
let rec flatMap_d0 _lh_flatMap_arg1_1 _lh_flatMap_arg2_1 =
  (match _lh_flatMap_arg2_1 with
    | [] -> 
      []
    | (_lh_flatMap_LH_C_0_1 :: _lh_flatMap_LH_C_1_1) -> 
      ((append_d0 (_lh_flatMap_arg1_1 _lh_flatMap_LH_C_0_1)) ((flatMap_d0 _lh_flatMap_arg1_1) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "match error"))
and flatMap_d1 _lh_flatMap_arg1_2 _lh_flatMap_arg2_2 =
  (match _lh_flatMap_arg2_2 with
    | [] -> 
      []
    | (_lh_flatMap_LH_C_0_2 :: _lh_flatMap_LH_C_1_2) -> 
      ((append_d1 (_lh_flatMap_arg1_2 _lh_flatMap_LH_C_0_2)) ((flatMap_d1 _lh_flatMap_arg1_2) _lh_flatMap_LH_C_1_2))
    | _ -> 
      (failwith "match error"))
and gen_d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      ([]::[])
    | _ -> 
      ((flatMap_d0 (fun b_3 -> 
        ((flatMap_d1 (fun q_1 -> 
          (if (((safe_d0 q_1) 1) b_3) then
            ((q_1::b_3)::[])
          else
            []))) ((enumFromTo_d0 1) _lh_gen_arg2_1)))) ((gen_d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1)))
and nsoln_d0 _lh_nsoln_arg1_1 =
  (length_d0 ((gen_d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueenUsingFlatMapBuiltInType_d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1 =
  (nsoln_d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1);;

(* lumberhack *)
let rec append_d0_d0 _lh_append_arg1_1 _lh_append_arg2_2 =
  (_lh_append_arg1_1 _lh_append_arg2_2);;
let rec append_d1_d0 _lh_append_arg1_0 _lh_append_arg2_0 =
  (_lh_append_arg1_0 _lh_append_arg2_0);;
let rec flatMap_d1_d0 _lh_flatMap_arg1_3 _lh_flatMap_arg2_1 =
  (_lh_flatMap_arg2_1 _lh_flatMap_arg1_3);;
let rec length_d0_d0 ls_0 =
  (match ls_0 with
    | (h_0 :: t_0) -> 
      (1 + (length_d0_d0 t_0))
    | [] -> 
      0);;
let rec safe_d0_d0 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  ((_lh_safe_arg3_0 _lh_safe_arg1_0) _lh_safe_arg2_0);;
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_flatMap_LH_C_0_0 = a_0 in
      (let rec _lh_flatMap_LH_C_1_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
        (fun _lh_flatMap_arg1_0 -> 
          ((append_d1_d0 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_d1_d0 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0)))))
  else
    (fun _lh_flatMap_arg1_1 _lh_append_arg2_1 -> 
      _lh_append_arg2_1))
and flatMap_d0_d0 _lh_flatMap_arg1_2 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | [] -> 
      []
    | (_lh_flatMap_LH_C_0_1 :: _lh_flatMap_LH_C_1_1) -> 
      ((append_d0_d0 (_lh_flatMap_arg1_2 _lh_flatMap_LH_C_0_1)) ((flatMap_d0_d0 _lh_flatMap_arg1_2) _lh_flatMap_LH_C_1_1))
    | _ -> 
      (failwith "match error"))
and gen_d0_d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      ((fun _lh_safe_arg1_1 _lh_safe_arg2_1 -> 
        true)::[])
    | _ -> 
      ((flatMap_d0_d0 (fun b_1 -> 
        ((flatMap_d1_d0 (fun q_0 -> 
          (if (((safe_d0_d0 q_0) 1) b_1) then
            (let rec _lh_append_LH_C_0_0 = (let rec _lh_safe_LH_C_0_0 = q_0 in
              (let rec _lh_safe_LH_C_1_0 = b_1 in
                (fun _lh_safe_arg1_2 _lh_safe_arg2_2 -> 
                  ((((_lh_safe_arg1_2 != _lh_safe_LH_C_0_0) && (_lh_safe_arg1_2 != (_lh_safe_LH_C_0_0 + _lh_safe_arg2_2))) && (_lh_safe_arg1_2 != (_lh_safe_LH_C_0_0 - _lh_safe_arg2_2))) && (((safe_d0_d0 _lh_safe_arg1_2) (_lh_safe_arg2_2 + 1)) _lh_safe_LH_C_1_0))))) in
              (let rec _lh_append_LH_C_1_0 = (fun _lh_append_arg2_3 -> 
                _lh_append_arg2_3) in
                (fun _lh_append_arg2_4 -> 
                  (let rec _lh_append_LH_C_0_1 = _lh_append_LH_C_0_0 in
                    (let rec _lh_append_LH_C_1_1 = ((append_d1_d0 _lh_append_LH_C_1_0) _lh_append_arg2_4) in
                      (fun _lh_append_arg2_5 -> 
                        (_lh_append_LH_C_0_1::((append_d0_d0 _lh_append_LH_C_1_1) _lh_append_arg2_5))))))))
          else
            (fun _lh_append_arg2_6 -> 
              _lh_append_arg2_6)))) ((enumFromTo_d0_d0 1) _lh_gen_arg2_0)))) ((gen_d0_d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0)))
and nsoln_d0_d0 _lh_nsoln_arg1_0 =
  (length_d0_d0 ((gen_d0_d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and testQueenUsingFlatMapBuiltInType_d0_d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_0 =
  (nsoln_d0_d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_0);;

(* lumberhack_pop_out *)
let rec append_d0_d0_d0 _lh_append_arg1_2 _lh_append_arg2_7 =
  (_lh_append_arg1_2 _lh_append_arg2_7);;
let rec append_d0_d0_d1 _lh_append_arg1_4 _lh_append_arg2_9 =
  (_lh_append_arg1_4 _lh_append_arg2_9);;
let rec append_d1_d0_d0 _lh_append_arg1_3 _lh_append_arg2_8 =
  (_lh_append_arg1_3 _lh_append_arg2_8);;
let rec append_d1_d0_d1 _lh_append_arg1_5 _lh_append_arg2_1_0 =
  (_lh_append_arg1_5 _lh_append_arg2_1_0);;
let rec flatMap_d1_d0_d0 _lh_flatMap_arg1_8 _lh_flatMap_arg2_4 =
  (_lh_flatMap_arg2_4 _lh_flatMap_arg1_8);;
let rec flatMap_d1_d0_d1 _lh_flatMap_arg1_7 _lh_flatMap_arg2_3 =
  (_lh_flatMap_arg2_3 _lh_flatMap_arg1_7);;
let rec length_d0_d0_d0 ls_1 =
  (match ls_1 with
    | (h_1 :: t_1) -> 
      (1 + (length_d0_d0_d0 t_1))
    | [] -> 
      0);;
let rec safe_d0_d0_d0 _lh_safe_arg1_6 _lh_safe_arg2_6 _lh_safe_arg3_2 =
  ((_lh_safe_arg3_2 _lh_safe_arg1_6) _lh_safe_arg2_6);;
let rec safe_d0_d0_d1 _lh_safe_arg1_3 _lh_safe_arg2_3 _lh_safe_arg3_1 =
  ((_lh_safe_arg3_1 _lh_safe_arg1_3) _lh_safe_arg2_3);;
let rec enumFromTo_d0_d0_d0 a_1 b_3 _lh_popOutId_0_0 =
  (if (a_1 <= b_3) then
    (let rec _lh_flatMap_LH_C_0_3 = a_1 in
      (let rec _lh_flatMap_LH_C_1_3 = ((enumFromTo_d0_d0_d0 (a_1 + 1)) b_3) in
        ((append_d1_d0_d1 (_lh_popOutId_0_0 _lh_flatMap_LH_C_0_3)) ((flatMap_d1_d0_d0 _lh_popOutId_0_0) _lh_flatMap_LH_C_1_3))))
  else
    (fun _lh_append_arg2_1_5 -> 
      _lh_append_arg2_1_5))
and flatMap_d0_d0_d0 _lh_flatMap_arg1_4 _lh_flatMap_arg2_2 =
  (match _lh_flatMap_arg2_2 with
    | [] -> 
      []
    | (_lh_flatMap_LH_C_0_2 :: _lh_flatMap_LH_C_1_2) -> 
      ((append_d0_d0_d1 (_lh_flatMap_arg1_4 _lh_flatMap_LH_C_0_2)) ((flatMap_d0_d0_d0 _lh_flatMap_arg1_4) _lh_flatMap_LH_C_1_2))
    | _ -> 
      (failwith "match error"))
and gen_d0_d0_d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      ((fun _lh_safe_arg1_4 _lh_safe_arg2_4 -> 
        true)::[])
    | _ -> 
      ((flatMap_d0_d0_d0 (fun b_2 -> 
        ((flatMap_d1_d0_d1 (fun q_1 -> 
          (if (((safe_d0_d0_d1 q_1) 1) b_2) then
            (let rec _lh_append_LH_C_0_2 = (let rec _lh_safe_LH_C_0_1 = q_1 in
              (let rec _lh_safe_LH_C_1_1 = b_2 in
                (fun _lh_safe_arg1_5 _lh_safe_arg2_5 -> 
                  ((((_lh_safe_arg1_5 != _lh_safe_LH_C_0_1) && (_lh_safe_arg1_5 != (_lh_safe_LH_C_0_1 + _lh_safe_arg2_5))) && (_lh_safe_arg1_5 != (_lh_safe_LH_C_0_1 - _lh_safe_arg2_5))) && (((safe_d0_d0_d0 _lh_safe_arg1_5) (_lh_safe_arg2_5 + 1)) _lh_safe_LH_C_1_1))))) in
              (let rec _lh_append_LH_C_1_2 = (fun _lh_append_arg2_1_1 -> 
                _lh_append_arg2_1_1) in
                (fun _lh_append_arg2_1_2 -> 
                  (let rec _lh_append_LH_C_0_3 = _lh_append_LH_C_0_2 in
                    (let rec _lh_append_LH_C_1_3 = ((append_d1_d0_d0 _lh_append_LH_C_1_2) _lh_append_arg2_1_2) in
                      (fun _lh_append_arg2_1_3 -> 
                        (_lh_append_LH_C_0_3::((append_d0_d0_d0 _lh_append_LH_C_1_3) _lh_append_arg2_1_3))))))))
          else
            (fun _lh_append_arg2_1_4 -> 
              _lh_append_arg2_1_4)))) ((enumFromTo_d0_d0_d0 1) _lh_gen_arg2_1)))) ((gen_d0_d0_d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1)))
and nsoln_d0_d0_d0 _lh_nsoln_arg1_1 =
  (length_d0_d0_d0 ((gen_d0_d0_d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueenUsingFlatMapBuiltInType_d0_d0_d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1 =
  (nsoln_d0_d0_d0 _lh_testQueenUsingFlatMapBuiltInType_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_QueenUsingFlatMapBuiltInType" (fun () -> ignore ((testQueenUsingFlatMapBuiltInType_d0 11)));
  Bench.Test.create ~name:"lumberhack_QueenUsingFlatMapBuiltInType" (fun () -> ignore ((testQueenUsingFlatMapBuiltInType_d0_d0 11)));
  Bench.Test.create ~name:"lumberhack_pop_out_QueenUsingFlatMapBuiltInType" (fun () -> ignore ((testQueenUsingFlatMapBuiltInType_d0_d0_d0 11)));
])
