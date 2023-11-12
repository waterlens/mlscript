
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec check'__d0 _lh_check'_arg1_1 _lh_check'_arg2_1 _lh_check'_arg3_1 =
  (match _lh_check'_arg3_1 with
    | `Nil -> 
      _lh_check'_arg2_1
    | `Node(_lh_check'_Node_0_1, _lh_check'_Node_1_1, _lh_check'_Node_2_1) -> 
      (((check'__d0 (not _lh_check'_arg1_1)) (((check'__d0 _lh_check'_arg1_1) (if _lh_check'_arg1_1 then
        (_lh_check'_arg2_1 + _lh_check'_Node_0_1)
      else
        (_lh_check'_arg2_1 - _lh_check'_Node_0_1))) _lh_check'_Node_1_1)) _lh_check'_Node_2_1)
    | _ -> 
      (failwith "error"));;
let rec make__d0 _lh_make_arg1_1 _lh_make_arg2_1 =
  (match _lh_make_arg2_1 with
    | 0 -> 
      (`Node(_lh_make_arg1_1, (`Nil), (`Nil)))
    | _ -> 
      (let rec i2_1 = (2 * _lh_make_arg1_1) in
        (let rec d2_1 = (_lh_make_arg2_1 - 1) in
          (`Node(_lh_make_arg1_1, ((make__d0 (i2_1 - 1)) d2_1), ((make__d0 i2_1) d2_1))))));;
let rec check__d0 _lh_check_arg1_1 =
  (((check'__d0 true) 0) _lh_check_arg1_1)
and testBinaryTrees_nofib__d0 _lh_testBinaryTrees_nofib_arg1_1 =
  (check__d0 ((make__d0 0) _lh_testBinaryTrees_nofib_arg1_1));;
end;;

