

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______(LH_Dum: sig end) = struct
let rec check_lh__d1 _lh_check_arg1_0 =
  ((_lh_check_arg1_0 0) true);;
let rec make_lh__d1 _lh_make_arg1_0 _lh_make_arg2_0 =
  (match _lh_make_arg2_0 with
    | 0 -> 
      (let rec _lh_check'_Node_2_0 = (fun _lh_check'_arg2_1 _lh_check'_arg1_1 -> 
        _lh_check'_arg2_1) in
        (let rec _lh_check'_Node_1_0 = (fun _lh_check'_arg2_2 _lh_check'_arg1_2 -> 
          _lh_check'_arg2_2) in
          (let rec _lh_check'_Node_0_0 = _lh_make_arg1_0 in
            (fun _lh_check'_arg2_3 _lh_check'_arg1_3 -> 
              ((_lh_check'_Node_2_0 ((_lh_check'_Node_1_0 (if _lh_check'_arg1_3 then
                (_lh_check'_arg2_3 + _lh_check'_Node_0_0)
              else
                (_lh_check'_arg2_3 - _lh_check'_Node_0_0))) _lh_check'_arg1_3)) (not _lh_check'_arg1_3))))))
    | _ -> 
      (let rec i2_0 = (2 * _lh_make_arg1_0) in
        (let rec d2_0 = (_lh_make_arg2_0 - 1) in
          (let rec _lh_check'_Node_2_1 = ((make_lh__d1 i2_0) d2_0) in
            (let rec _lh_check'_Node_1_1 = ((make_lh__d1 (i2_0 - 1)) d2_0) in
              (let rec _lh_check'_Node_0_1 = _lh_make_arg1_0 in
                (fun _lh_check'_arg2_4 _lh_check'_arg1_4 -> 
                  ((_lh_check'_Node_2_1 ((_lh_check'_Node_1_1 (if _lh_check'_arg1_4 then
                    (_lh_check'_arg2_4 + _lh_check'_Node_0_1)
                  else
                    (_lh_check'_arg2_4 - _lh_check'_Node_0_1))) _lh_check'_arg1_4)) (not _lh_check'_arg1_4)))))))));;
let rec testBinaryTrees_nofib_lh__d1 _lh_testBinaryTrees_nofib_arg1_0 =
  (check_lh__d1 ((make_lh__d1 0) _lh_testBinaryTrees_nofib_arg1_0));;
end;;

