(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./BinaryTrees_nofib.ml -o "./BinaryTrees_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./BinaryTrees_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec check'_d0 _lh_check'_arg1_1 _lh_check'_arg2_1 _lh_check'_arg3_1 =
  (match _lh_check'_arg3_1 with
    | `Nil -> 
      _lh_check'_arg2_1
    | `Node(_lh_check'_Node_0_1, _lh_check'_Node_1_1, _lh_check'_Node_2_1) -> 
      (((check'_d0 (not _lh_check'_arg1_1)) (((check'_d0 _lh_check'_arg1_1) (if _lh_check'_arg1_1 then
        (_lh_check'_arg2_1 + _lh_check'_Node_0_1)
      else
        (_lh_check'_arg2_1 - _lh_check'_Node_0_1))) _lh_check'_Node_1_1)) _lh_check'_Node_2_1)
    | _ -> 
      (failwith "error"));;
let rec make_d0 _lh_make_arg1_1 _lh_make_arg2_1 =
  (match _lh_make_arg2_1 with
    | 0 -> 
      (`Node(_lh_make_arg1_1, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_1 = (2 * _lh_make_arg1_1) in
        (let rec d2_1 = (_lh_make_arg2_1 - 1) in
          (`Node(_lh_make_arg1_1, ((make_d0 (i2_1 - 1)) d2_1), ((make_d0 i2_1) d2_1))))));;
let rec check_d0 _lh_check_arg1_1 =
  (((check'_d0 true) 0) _lh_check_arg1_1)
and testBinaryTrees_nofib_d0 _lh_testBinaryTrees_nofib_arg1_1 =
  (check_d0 ((make_d0 0) _lh_testBinaryTrees_nofib_arg1_1));;

(* lumberhack *)
let rec check'_d0_d0 _lh_check'_arg1_0 _lh_check'_arg2_0 _lh_check'_arg3_0 =
  ((_lh_check'_arg3_0 _lh_check'_arg2_0) _lh_check'_arg1_0);;
let rec check_d0_d0 _lh_check_arg1_0 =
  (((check'_d0_d0 true) 0) _lh_check_arg1_0)
and make_d0_d0 _lh_make_arg1_0 _lh_make_arg2_0 =
  (match _lh_make_arg2_0 with
    | 0 -> 
      (let rec _lh_check'_Node_0_0 = _lh_make_arg1_0 in
        (let rec _lh_check'_Node_1_0 = (fun _lh_check'_arg2_1 _lh_check'_arg1_1 -> 
          _lh_check'_arg2_1) in
          (let rec _lh_check'_Node_2_0 = (fun _lh_check'_arg2_2 _lh_check'_arg1_2 -> 
            _lh_check'_arg2_2) in
            (fun _lh_check'_arg2_3 _lh_check'_arg1_3 -> 
              (((check'_d0_d0 (not _lh_check'_arg1_3)) (((check'_d0_d0 _lh_check'_arg1_3) (if _lh_check'_arg1_3 then
                (_lh_check'_arg2_3 + _lh_check'_Node_0_0)
              else
                (_lh_check'_arg2_3 - _lh_check'_Node_0_0))) _lh_check'_Node_1_0)) _lh_check'_Node_2_0)))))
    | _ -> 
      (let rec i2_0 = (2 * _lh_make_arg1_0) in
        (let rec d2_0 = (_lh_make_arg2_0 - 1) in
          (let rec _lh_check'_Node_0_1 = _lh_make_arg1_0 in
            (let rec _lh_check'_Node_1_1 = ((make_d0_d0 (i2_0 - 1)) d2_0) in
              (let rec _lh_check'_Node_2_1 = ((make_d0_d0 i2_0) d2_0) in
                (fun _lh_check'_arg2_4 _lh_check'_arg1_4 -> 
                  (((check'_d0_d0 (not _lh_check'_arg1_4)) (((check'_d0_d0 _lh_check'_arg1_4) (if _lh_check'_arg1_4 then
                    (_lh_check'_arg2_4 + _lh_check'_Node_0_1)
                  else
                    (_lh_check'_arg2_4 - _lh_check'_Node_0_1))) _lh_check'_Node_1_1)) _lh_check'_Node_2_1))))))))
and testBinaryTrees_nofib_d0_d0 _lh_testBinaryTrees_nofib_arg1_0 =
  (check_d0_d0 ((make_d0_d0 0) _lh_testBinaryTrees_nofib_arg1_0));;

(* lumberhack_pop_out *)
let rec check'_d0_d0_d0 _lh_check'_arg1_5 _lh_check'_arg2_5 _lh_check'_arg3_1 =
  ((_lh_check'_arg3_1 _lh_check'_arg2_5) _lh_check'_arg1_5);;
let rec check'_d0_d0_d1 _lh_check'_arg1_9 _lh_check'_arg2_9 _lh_check'_arg3_5 =
  ((_lh_check'_arg3_5 _lh_check'_arg2_9) _lh_check'_arg1_9);;
let rec check'_d0_d0_d2 _lh_check'_arg1_8 _lh_check'_arg2_8 _lh_check'_arg3_4 =
  ((_lh_check'_arg3_4 _lh_check'_arg2_8) _lh_check'_arg1_8);;
let rec check'_d0_d0_d3 _lh_check'_arg1_6 _lh_check'_arg2_6 _lh_check'_arg3_2 =
  ((_lh_check'_arg3_2 _lh_check'_arg2_6) _lh_check'_arg1_6);;
let rec check'_d0_d0_d4 _lh_check'_arg1_7 _lh_check'_arg2_7 _lh_check'_arg3_3 =
  ((_lh_check'_arg3_3 _lh_check'_arg2_7) _lh_check'_arg1_7);;
let rec check_d0_d0_d0 _lh_check_arg1_1 =
  (((check'_d0_d0_d0 true) 0) _lh_check_arg1_1)
and make_d0_d0_d0 _lh_make_arg1_1 _lh_make_arg2_1 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match _lh_make_arg2_1 with
    | 0 -> 
      (let rec _lh_check'_Node_0_2 = _lh_make_arg1_1 in
        (let rec _lh_check'_Node_1_2 = (fun _lh_check'_arg2_1_0 _lh_check'_arg1_1_0 -> 
          _lh_check'_arg2_1_0) in
          (let rec _lh_check'_Node_2_2 = (fun _lh_check'_arg2_1_1 _lh_check'_arg1_1_1 -> 
            _lh_check'_arg2_1_1) in
            (((check'_d0_d0_d1 (not _lh_popOutId_1_0)) (((check'_d0_d0_d2 _lh_popOutId_1_0) (if _lh_popOutId_1_0 then
              (_lh_popOutId_0_0 + _lh_check'_Node_0_2)
            else
              (_lh_popOutId_0_0 - _lh_check'_Node_0_2))) _lh_check'_Node_1_2)) _lh_check'_Node_2_2))))
    | _ -> 
      (let rec i2_1 = (2 * _lh_make_arg1_1) in
        (let rec d2_1 = (_lh_make_arg2_1 - 1) in
          (let rec _lh_check'_Node_0_3 = _lh_make_arg1_1 in
            (let rec _lh_check'_Node_1_3 = ((make_d0_d0_d0 (i2_1 - 1)) d2_1) in
              (let rec _lh_check'_Node_2_3 = ((make_d0_d0_d0 i2_1) d2_1) in
                (((check'_d0_d0_d3 (not _lh_popOutId_1_0)) (((check'_d0_d0_d4 _lh_popOutId_1_0) (if _lh_popOutId_1_0 then
                  (_lh_popOutId_0_0 + _lh_check'_Node_0_3)
                else
                  (_lh_popOutId_0_0 - _lh_check'_Node_0_3))) _lh_check'_Node_1_3)) _lh_check'_Node_2_3)))))))
and testBinaryTrees_nofib_d0_d0_d0 _lh_testBinaryTrees_nofib_arg1_1 =
  (check_d0_d0_d0 ((make_d0_d0_d0 0) _lh_testBinaryTrees_nofib_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_BinaryTrees_nofib" (fun () -> ignore ((testBinaryTrees_nofib_d0 17)));
  Bench.Test.create ~name:"lumberhack_BinaryTrees_nofib" (fun () -> ignore ((testBinaryTrees_nofib_d0_d0 17)));
  Bench.Test.create ~name:"lumberhack_pop_out_BinaryTrees_nofib" (fun () -> ignore ((testBinaryTrees_nofib_d0_d0_d0 17)));
])
