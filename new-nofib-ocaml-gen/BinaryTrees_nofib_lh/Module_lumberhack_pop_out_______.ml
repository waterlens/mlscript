

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec check'_lh _lh_check'_arg1_0 _lh_check'_arg2_0 _lh_check'_arg3_0 =
  ((_lh_check'_arg3_0 _lh_check'_arg2_0) _lh_check'_arg1_0);;
let rec check_lh _lh_check_arg1_0 =
  (((check'_lh true) 0) _lh_check_arg1_0);;
let rec make_lh _lh_make_arg1_0 _lh_make_arg2_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match _lh_make_arg2_0 with
    | 0 -> 
      (let rec _lh_check'_Node_2_0 = (fun _lh_check'_arg2_1 _lh_check'_arg1_1 -> 
        _lh_check'_arg2_1) in
        (let rec _lh_check'_Node_1_0 = (fun _lh_check'_arg2_2 _lh_check'_arg1_2 -> 
          _lh_check'_arg2_2) in
          (let rec _lh_check'_Node_0_0 = _lh_make_arg1_0 in
            (((check'_lh (not _lh_popOutId_1_0)) (((check'_lh _lh_popOutId_1_0) (if _lh_popOutId_1_0 then
              (_lh_popOutId_0_0 + _lh_check'_Node_0_0)
            else
              (_lh_popOutId_0_0 - _lh_check'_Node_0_0))) _lh_check'_Node_1_0)) _lh_check'_Node_2_0))))
    | _ -> 
      (let rec i2_0 = (2 * _lh_make_arg1_0) in
        (let rec d2_0 = (_lh_make_arg2_0 - 1) in
          (let rec _lh_check'_Node_2_1 = ((make_lh i2_0) d2_0) in
            (let rec _lh_check'_Node_1_1 = ((make_lh (i2_0 - 1)) d2_0) in
              (let rec _lh_check'_Node_0_1 = _lh_make_arg1_0 in
                (((check'_lh (not _lh_popOutId_1_0)) (((check'_lh _lh_popOutId_1_0) (if _lh_popOutId_1_0 then
                  (_lh_popOutId_0_0 + _lh_check'_Node_0_1)
                else
                  (_lh_popOutId_0_0 - _lh_check'_Node_0_1))) _lh_check'_Node_1_1)) _lh_check'_Node_2_1)))))));;
let rec testBinaryTrees_nofib_lh _lh_testBinaryTrees_nofib_arg1_0 =
  (check_lh ((make_lh 0) _lh_testBinaryTrees_nofib_arg1_0));;
end;;

