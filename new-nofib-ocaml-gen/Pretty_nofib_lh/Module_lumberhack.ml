

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec length_lh__d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_4_2, t_4_2) -> 
      (1 + (length_lh__d0 t_4_2))
    | `LH_N -> 
      0);;
let rec cStr_lh__d0 _lh_cStr_arg1_1 =
  (`CStr(_lh_cStr_arg1_1));;
let rec length_lh__d1 ls_4 =
  (match ls_4 with
    | `LH_C(h_4_0, t_4_0) -> 
      (1 + (length_lh__d1 t_4_0))
    | `LH_N -> 
      0);;
let rec cStr_lh__d1 _lh_cStr_arg1_4 =
  (`CStr(_lh_cStr_arg1_4));;
let rec mappend_lh__d0 xs_2 ys_2_0 =
  (xs_2 ys_2_0);;
let rec cStr_lh__d2 _lh_cStr_arg1_2 =
  (`CStr(_lh_cStr_arg1_2));;
let rec length_lh__d2 ls_9 =
  (match ls_9 with
    | `LH_C(h_4_9, t_4_9) -> 
      (1 + (length_lh__d2 t_4_9))
    | `LH_N -> 
      0);;
let rec copy_lh__d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh__d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec cAppend_lh__d8 _lh_cAppend_arg1_4 _lh_cAppend_arg2_4 =
  (`CAppend(_lh_cAppend_arg1_4, _lh_cAppend_arg2_4));;
let rec cNL_lh__d1 =
  (`CNewline);;
let rec cAppend_lh__d7 _lh_cAppend_arg1_5 _lh_cAppend_arg2_5 =
  (`CAppend(_lh_cAppend_arg1_5, _lh_cAppend_arg2_5));;
let rec cStr_lh__d4 _lh_cStr_arg1_0 =
  (`CStr(_lh_cStr_arg1_0));;
let rec cAppend_lh__d6 _lh_cAppend_arg1_6 _lh_cAppend_arg2_6 =
  (`CAppend(_lh_cAppend_arg1_6, _lh_cAppend_arg2_6));;
let rec length_lh__d4 ls_3 =
  (match ls_3 with
    | `LH_C(h_3_7, t_3_7) -> 
      (1 + (length_lh__d4 t_3_7))
    | `LH_N -> 
      0);;
let rec cIndent_lh__d3 _lh_cIndent_arg1_2 _lh_cIndent_arg2_2 =
  (`CIndent(_lh_cIndent_arg1_2, _lh_cIndent_arg2_2));;
let rec cIndent_lh__d2 _lh_cIndent_arg1_3 _lh_cIndent_arg2_3 =
  (`CIndent(_lh_cIndent_arg1_3, _lh_cIndent_arg2_3));;
let rec orL_lh__d2 _lh_orL_arg1_0 _lh_orL_arg2_0 =
  (match _lh_orL_arg1_0 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec andL_lh__d7 _lh_andL_arg1_1 _lh_andL_arg2_1 =
  (match _lh_andL_arg1_1 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec cCh_lh__d2 _lh_cCh_arg1_1 =
  (`CCh(_lh_cCh_arg1_1));;
let rec cAppend_lh__d5 _lh_cAppend_arg1_1 _lh_cAppend_arg2_1 =
  (`CAppend(_lh_cAppend_arg1_1, _lh_cAppend_arg2_1));;
let rec foldr1_lh__d1 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (match _lh_foldr1_LH_C_1_2 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_2
        | _ -> 
          ((_lh_foldr1_arg1_2 _lh_foldr1_LH_C_0_2) ((foldr1_lh__d1 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec andL_lh__d3 _lh_andL_arg1_0 _lh_andL_arg2_0 =
  (match _lh_andL_arg1_0 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec cAppend_lh__d2 _lh_cAppend_arg1_0 _lh_cAppend_arg2_0 =
  (`CAppend(_lh_cAppend_arg1_0, _lh_cAppend_arg2_0));;
let rec andL_lh__d2 _lh_andL_arg1_3 _lh_andL_arg2_3 =
  (match _lh_andL_arg1_3 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec cIndent_lh__d0 _lh_cIndent_arg1_0 _lh_cIndent_arg2_0 =
  (`CIndent(_lh_cIndent_arg1_0, _lh_cIndent_arg2_0));;
let rec andL_lh__d1 _lh_andL_arg1_6 _lh_andL_arg2_6 =
  (match _lh_andL_arg1_6 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_6
    | _ -> 
      (failwith "error"));;
let rec cNil_lh__d2 =
  (`CNil);;
let rec cStr_lh__d3 _lh_cStr_arg1_3 =
  (`CStr(_lh_cStr_arg1_3));;
let rec length_lh__d3 ls_5 =
  (match ls_5 with
    | `LH_C(h_4_1, t_4_1) -> 
      (1 + (length_lh__d3 t_4_1))
    | `LH_N -> 
      0);;
let rec flattenS_lh__d7 _lh_flattenS_arg1_3 _lh_flattenS_arg2_1 =
  (_lh_flattenS_arg2_1 _lh_flattenS_arg1_3);;
let rec flattenS_lh__d6 _lh_flattenS_arg1_9 _lh_flattenS_arg2_6 =
  (_lh_flattenS_arg2_6 _lh_flattenS_arg1_9);;
let rec flattenS_lh__d1_d1 _lh_flattenS_arg1_1_7 _lh_flattenS_arg2_1_4 =
  (_lh_flattenS_arg2_1_4 _lh_flattenS_arg1_1_7);;
let rec flattenS_lh__d1_d0 _lh_flattenS_arg1_2 _lh_flattenS_arg2_0 =
  (_lh_flattenS_arg2_0 _lh_flattenS_arg1_2);;
let rec flattenS_lh__d0 _lh_flattenS_arg1_4 _lh_flattenS_arg2_2 =
  (_lh_flattenS_arg2_2 _lh_flattenS_arg1_4);;
let rec flattenS_lh__d1_d4 _lh_flattenS_arg1_5 _lh_flattenS_arg2_3 =
  (_lh_flattenS_arg2_3 _lh_flattenS_arg1_5);;
let rec flattenS_lh__d1_d3 _lh_flattenS_arg1_6 _lh_flattenS_arg2_4 =
  (_lh_flattenS_arg2_4 _lh_flattenS_arg1_6);;
let rec flattenS_lh__d4 _lh_flattenS_arg1_7 _lh_flattenS_arg2_5 =
  (_lh_flattenS_arg2_5 _lh_flattenS_arg1_7);;
let rec flattenS_lh__d9 _lh_flattenS_arg1_1_0 _lh_flattenS_arg2_7 =
  (_lh_flattenS_arg2_7 _lh_flattenS_arg1_1_0);;
let rec flattenS_lh__d1 _lh_flattenS_arg1_1_1 _lh_flattenS_arg2_8 =
  (_lh_flattenS_arg2_8 _lh_flattenS_arg1_1_1);;
let rec flattenS_lh__d1_d6 _lh_flattenS_arg1_1_2 _lh_flattenS_arg2_9 =
  (_lh_flattenS_arg2_9 _lh_flattenS_arg1_1_2);;
let rec flattenS_lh__d3 _lh_flattenS_arg1_1_3 _lh_flattenS_arg2_1_0 =
  (_lh_flattenS_arg2_1_0 _lh_flattenS_arg1_1_3);;
let rec flattenS_lh__d2 _lh_flattenS_arg1_1_4 _lh_flattenS_arg2_1_1 =
  (_lh_flattenS_arg2_1_1 _lh_flattenS_arg1_1_4);;
let rec flattenS_lh__d5 _lh_flattenS_arg1_1_5 _lh_flattenS_arg2_1_2 =
  (_lh_flattenS_arg2_1_2 _lh_flattenS_arg1_1_5);;
let rec flattenS_lh__d1_d5 _lh_flattenS_arg1_1_6 _lh_flattenS_arg2_1_3 =
  (_lh_flattenS_arg2_1_3 _lh_flattenS_arg1_1_6);;
let rec flattenS_lh__d8 _lh_flattenS_arg1_1_8 _lh_flattenS_arg2_1_5 =
  (_lh_flattenS_arg2_1_5 _lh_flattenS_arg1_1_8);;
let rec flattenS_lh__d1_d2 _lh_flattenS_arg1_1_9 _lh_flattenS_arg2_1_6 =
  (_lh_flattenS_arg2_1_6 _lh_flattenS_arg1_1_9);;
let rec cCh_lh__d0 _lh_cCh_arg1_0 =
  (`CCh(_lh_cCh_arg1_0));;
let rec andL_lh__d6 _lh_andL_arg1_4 _lh_andL_arg2_4 =
  (match _lh_andL_arg1_4 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_4
    | _ -> 
      (failwith "error"));;
let rec cIndent_lh__d1 _lh_cIndent_arg1_1 _lh_cIndent_arg2_1 =
  (`CIndent(_lh_cIndent_arg1_1, _lh_cIndent_arg2_1));;
let rec orL_lh__d1 _lh_orL_arg1_1 _lh_orL_arg2_1 =
  (match _lh_orL_arg1_1 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec cNil_lh__d3 =
  (`CNil);;
let rec cAppend_lh__d4 _lh_cAppend_arg1_7 _lh_cAppend_arg2_7 =
  (`CAppend(_lh_cAppend_arg1_7, _lh_cAppend_arg2_7));;
let rec andL_lh__d5 _lh_andL_arg1_7 _lh_andL_arg2_7 =
  (match _lh_andL_arg1_7 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_7
    | _ -> 
      (failwith "error"));;
let rec cAppend_lh__d3 _lh_cAppend_arg1_3 _lh_cAppend_arg2_3 =
  (`CAppend(_lh_cAppend_arg1_3, _lh_cAppend_arg2_3));;
let rec andL_lh__d4 _lh_andL_arg1_5 _lh_andL_arg2_5 =
  (match _lh_andL_arg1_5 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_5
    | _ -> 
      (failwith "error"));;
let rec foldr1_lh__d2 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh__d2 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec cNil_lh__d4 =
  (`CNil);;
let rec cCh_lh__d1 _lh_cCh_arg1_2 =
  (`CCh(_lh_cCh_arg1_2));;
let rec cNil_lh__d1 =
  (`CNil);;
let rec cNil_lh__d0 =
  (`CNil);;
let rec cAppend_lh__d0 _lh_cAppend_arg1_2 _lh_cAppend_arg2_2 =
  (`CAppend(_lh_cAppend_arg1_2, _lh_cAppend_arg2_2));;
let rec orL_lh__d0 _lh_orL_arg1_2 _lh_orL_arg2_2 =
  (match _lh_orL_arg1_2 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec cAppend_lh__d1 _lh_cAppend_arg1_8 _lh_cAppend_arg2_8 =
  (`CAppend(_lh_cAppend_arg1_8, _lh_cAppend_arg2_8));;
let rec cNL_lh__d0 =
  (`CNewline);;
let rec andL_lh__d0 _lh_andL_arg1_2 _lh_andL_arg2_2 =
  (match _lh_andL_arg1_2 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec foldr1_lh__d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1_lh__d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec ppHang_lh__d0 _lh_ppHang_arg1_0 _lh_ppHang_arg2_0 _lh_ppHang_arg3_0 _lh_ppHang_arg4_0 _lh_ppHang_arg5_0 =
  (let rec _lh_matchIdent_1 = ((_lh_ppHang_arg1_0 _lh_ppHang_arg4_0) false) in
    ((((_lh_matchIdent_1 _lh_ppHang_arg2_0) _lh_ppHang_arg3_0) _lh_ppHang_arg4_0) _lh_ppHang_arg5_0));;
let rec ppStr_lh__d0 _lh_ppStr_arg1_3 _lh_ppStr_arg2_3 _lh_ppStr_arg3_3 =
  (let rec ls_7 = (length_lh__d0 _lh_ppStr_arg1_3) in
    (`MkPrettyRep((cStr_lh__d0 _lh_ppStr_arg1_3), ls_7, false, (_lh_ppStr_arg2_3 >= ls_7))));;
let rec ppStr_lh__d1 _lh_ppStr_arg1_0 _lh_ppStr_arg2_0 _lh_ppStr_arg3_0 =
  (let rec ls_0 = (length_lh__d1 _lh_ppStr_arg1_0) in
    (`MkPrettyRep((cStr_lh__d1 _lh_ppStr_arg1_0), ls_0, false, (_lh_ppStr_arg2_0 >= ls_0))));;
let rec ppStr_lh__d2 _lh_ppStr_arg1_2 _lh_ppStr_arg2_2 _lh_ppStr_arg3_2 =
  (let rec ls_2 = (length_lh__d2 _lh_ppStr_arg1_2) in
    (`MkPrettyRep((cStr_lh__d2 _lh_ppStr_arg1_2), ls_2, false, (_lh_ppStr_arg2_2 >= ls_2))));;
let rec ppStr_lh__d4 _lh_ppStr_arg1_4 _lh_ppStr_arg2_4 _lh_ppStr_arg3_4 =
  (let rec ls_8 = (length_lh__d4 _lh_ppStr_arg1_4) in
    (let rec _lh_ppHang_MkPrettyRep_3_0 = (_lh_ppStr_arg2_4 >= ls_8) in
      (let rec _lh_ppHang_MkPrettyRep_2_0 = false in
        (let rec _lh_ppHang_MkPrettyRep_1_0 = ls_8 in
          (let rec _lh_ppHang_MkPrettyRep_0_0 = (cStr_lh__d4 _lh_ppStr_arg1_4) in
            (fun _lh_ppHang_arg2_1 _lh_ppHang_arg3_1 _lh_ppHang_arg4_1 _lh_ppHang_arg5_1 -> 
              (let rec _lh_matchIdent_8 = ((_lh_ppHang_arg3_1 (_lh_ppHang_arg4_1 - (_lh_ppHang_MkPrettyRep_1_0 + 1))) false) in
                (match _lh_matchIdent_8 with
                  | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_1, _lh_ppHang_MkPrettyRep_1_1, _lh_ppHang_MkPrettyRep_2_1, _lh_ppHang_MkPrettyRep_3_1) -> 
                    (let rec _lh_matchIdent_9 = ((_lh_ppHang_arg3_1 (_lh_ppHang_arg4_1 - _lh_ppHang_arg2_1)) false) in
                      (match _lh_matchIdent_9 with
                        | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_2, _lh_ppHang_MkPrettyRep_1_2, _lh_ppHang_MkPrettyRep_2_2, _lh_ppHang_MkPrettyRep_3_2) -> 
                          (if _lh_ppHang_MkPrettyRep_2_0 then
                            ((_lh_ppHang_arg3_1 _lh_ppHang_arg4_1) _lh_ppHang_arg5_1)
                          else
                            (if ((orL_lh__d2 (_lh_ppHang_MkPrettyRep_1_0 <= _lh_ppHang_arg2_1)) _lh_ppHang_MkPrettyRep_3_1) then
                              (`MkPrettyRep(((cAppend_lh__d5 ((cAppend_lh__d6 _lh_ppHang_MkPrettyRep_0_0) (cCh_lh__d2 ' '))) ((cIndent_lh__d2 (_lh_ppHang_MkPrettyRep_1_0 + 1)) _lh_ppHang_MkPrettyRep_0_1)), ((_lh_ppHang_MkPrettyRep_1_0 + 1) + _lh_ppHang_MkPrettyRep_1_1), false, ((andL_lh__d7 _lh_ppHang_MkPrettyRep_3_0) _lh_ppHang_MkPrettyRep_3_1)))
                            else
                              (`MkPrettyRep(((cAppend_lh__d7 _lh_ppHang_MkPrettyRep_0_0) ((cAppend_lh__d8 cNL_lh__d1) ((cIndent_lh__d3 _lh_ppHang_arg2_1) _lh_ppHang_MkPrettyRep_0_2))), _lh_ppHang_MkPrettyRep_1_2, false, false))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error")))))))));;
let rec ppBeside_lh__d0 _lh_ppBeside_arg1_0 _lh_ppBeside_arg2_0 _lh_ppBeside_arg3_0 _lh_ppBeside_arg4_0 =
  (let rec _lh_matchIdent_2 = ((_lh_ppBeside_arg1_0 _lh_ppBeside_arg3_0) false) in
    (match _lh_matchIdent_2 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_0, _lh_ppBeside_MkPrettyRep_1_0, _lh_ppBeside_MkPrettyRep_2_0, _lh_ppBeside_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_3 = ((_lh_ppBeside_arg2_0 (_lh_ppBeside_arg3_0 - _lh_ppBeside_MkPrettyRep_1_0)) false) in
          (match _lh_matchIdent_3 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_1, _lh_ppBeside_MkPrettyRep_1_1, _lh_ppBeside_MkPrettyRep_2_1, _lh_ppBeside_MkPrettyRep_3_1) -> 
              (`MkPrettyRep(((cAppend_lh__d2 _lh_ppBeside_MkPrettyRep_0_0) ((cIndent_lh__d0 _lh_ppBeside_MkPrettyRep_1_0) _lh_ppBeside_MkPrettyRep_0_1)), (_lh_ppBeside_MkPrettyRep_1_0 + _lh_ppBeside_MkPrettyRep_1_1), ((andL_lh__d1 _lh_ppBeside_MkPrettyRep_2_0) _lh_ppBeside_MkPrettyRep_2_1), ((andL_lh__d2 (_lh_ppBeside_arg3_0 >= 0)) ((andL_lh__d3 _lh_ppBeside_MkPrettyRep_3_0) _lh_ppBeside_MkPrettyRep_3_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec ppNil_lh__d1 _lh_ppNil_arg1_2 _lh_ppNil_arg2_2 =
  (`MkPrettyRep(cNil_lh__d2, 0, true, (_lh_ppNil_arg1_2 >= 0)));;
let rec ppStr_lh__d3 _lh_ppStr_arg1_1 _lh_ppStr_arg2_1 _lh_ppStr_arg3_1 =
  (let rec ls_1 = (length_lh__d3 _lh_ppStr_arg1_1) in
    (`MkPrettyRep((cStr_lh__d3 _lh_ppStr_arg1_1), ls_1, false, (_lh_ppStr_arg2_1 >= ls_1))));;
let rec mkIndent_lh__d8 _lh_mkIndent_arg1_0 _lh_mkIndent_arg2_0 =
  (match _lh_mkIndent_arg1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_0
    | _ -> 
      (if (_lh_mkIndent_arg1_0 >= 8) then
        (let rec t_1_1 = ((mkIndent_lh__d8 (_lh_mkIndent_arg1_0 - 8)) _lh_mkIndent_arg2_0) in
          (let rec h_1_1 = '|' in
            (fun ys_1_1 -> 
              (`LH_C(h_1_1, ((mappend_lh__d0 t_1_1) ys_1_1))))))
      else
        (let rec t_1_2 = ((mkIndent_lh__d8 (_lh_mkIndent_arg1_0 - 1)) _lh_mkIndent_arg2_0) in
          (let rec h_1_2 = ' ' in
            (fun ys_1_2 -> 
              (`LH_C(h_1_2, ((mappend_lh__d0 t_1_2) ys_1_2))))))));;
let rec mappend_lh__d3 xs_0 ys_1_3 =
  (match xs_0 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec t_1_4 = ((mappend_lh__d3 t_1_3) ys_1_3) in
        (let rec h_1_4 = h_1_3 in
          (fun ys_1_4 -> 
            (`LH_C(h_1_4, ((mappend_lh__d0 t_1_4) ys_1_4))))))
    | `LH_N -> 
      ys_1_3);;
let rec mkIndent_lh__d7 _lh_mkIndent_arg1_1 _lh_mkIndent_arg2_1 =
  (match _lh_mkIndent_arg1_1 with
    | 0 -> 
      _lh_mkIndent_arg2_1
    | _ -> 
      (if (_lh_mkIndent_arg1_1 >= 8) then
        (let rec t_1_7 = ((mkIndent_lh__d7 (_lh_mkIndent_arg1_1 - 8)) _lh_mkIndent_arg2_1) in
          (let rec h_1_7 = '|' in
            (fun ys_1_7 -> 
              (`LH_C(h_1_7, ((mappend_lh__d0 t_1_7) ys_1_7))))))
      else
        (let rec t_1_8 = ((mkIndent_lh__d7 (_lh_mkIndent_arg1_1 - 1)) _lh_mkIndent_arg2_1) in
          (let rec h_1_8 = ' ' in
            (fun ys_1_8 -> 
              (`LH_C(h_1_8, ((mappend_lh__d0 t_1_8) ys_1_8))))))));;
let rec mappend_lh__d2 xs_3 ys_2_1 =
  (match xs_3 with
    | `LH_C(h_1_9, t_1_9) -> 
      (let rec t_2_0 = ((mappend_lh__d2 t_1_9) ys_2_1) in
        (let rec h_2_0 = h_1_9 in
          (fun ys_2_2 -> 
            (`LH_C(h_2_0, ((mappend_lh__d0 t_2_0) ys_2_2))))))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_lh__d4 xs_5 ys_3_1 =
  (match xs_5 with
    | `LH_C(h_2_9, t_2_9) -> 
      (let rec t_3_0 = ((mappend_lh__d4 t_2_9) ys_3_1) in
        (let rec h_3_0 = h_2_9 in
          (fun ys_3_2 -> 
            (`LH_C(h_3_0, ((mappend_lh__d0 t_3_0) ys_3_2))))))
    | `LH_N -> 
      ys_3_1);;
let rec mkIndent_lh__d6 _lh_mkIndent_arg1_6 _lh_mkIndent_arg2_6 =
  (match _lh_mkIndent_arg1_6 with
    | 0 -> 
      _lh_mkIndent_arg2_6
    | _ -> 
      (if (_lh_mkIndent_arg1_6 >= 8) then
        (let rec t_3_3 = ((mkIndent_lh__d6 (_lh_mkIndent_arg1_6 - 8)) _lh_mkIndent_arg2_6) in
          (let rec h_3_3 = '|' in
            (fun ys_3_5 -> 
              (`LH_C(h_3_3, ((mappend_lh__d0 t_3_3) ys_3_5))))))
      else
        (let rec t_3_4 = ((mkIndent_lh__d6 (_lh_mkIndent_arg1_6 - 1)) _lh_mkIndent_arg2_6) in
          (let rec h_3_4 = ' ' in
            (fun ys_3_6 -> 
              (`LH_C(h_3_4, ((mappend_lh__d0 t_3_4) ys_3_6))))))));;
let rec mappend_lh__d1 xs_1 ys_1_5 =
  (match xs_1 with
    | `LH_C(h_1_5, t_1_5) -> 
      (let rec t_1_6 = ((mappend_lh__d1 t_1_5) ys_1_5) in
        (let rec h_1_6 = h_1_5 in
          (fun ys_1_6 -> 
            (`LH_C(h_1_6, ((mappend_lh__d0 t_1_6) ys_1_6))))))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_lh__d5 xs_4 ys_2_3 =
  (match xs_4 with
    | `LH_C(h_2_1, t_2_1) -> 
      (let rec t_2_2 = ((mappend_lh__d5 t_2_1) ys_2_3) in
        (let rec h_2_2 = h_2_1 in
          (fun ys_2_4 -> 
            (`LH_C(h_2_2, ((mappend_lh__d0 t_2_2) ys_2_4))))))
    | `LH_N -> 
      ys_2_3);;
let rec mkIndent_lh__d9 _lh_mkIndent_arg1_2 _lh_mkIndent_arg2_2 =
  (match _lh_mkIndent_arg1_2 with
    | 0 -> 
      _lh_mkIndent_arg2_2
    | _ -> 
      (if (_lh_mkIndent_arg1_2 >= 8) then
        (let rec t_2_3 = ((mkIndent_lh__d9 (_lh_mkIndent_arg1_2 - 8)) _lh_mkIndent_arg2_2) in
          (let rec h_2_3 = '|' in
            (fun ys_2_5 -> 
              (`LH_C(h_2_3, ((mappend_lh__d0 t_2_3) ys_2_5))))))
      else
        (let rec t_2_4 = ((mkIndent_lh__d9 (_lh_mkIndent_arg1_2 - 1)) _lh_mkIndent_arg2_2) in
          (let rec h_2_4 = ' ' in
            (fun ys_2_6 -> 
              (`LH_C(h_2_4, ((mappend_lh__d0 t_2_4) ys_2_6))))))));;
let rec mkIndent_lh__d3 _lh_mkIndent_arg1_3 _lh_mkIndent_arg2_3 =
  (match _lh_mkIndent_arg1_3 with
    | 0 -> 
      _lh_mkIndent_arg2_3
    | _ -> 
      (if (_lh_mkIndent_arg1_3 >= 8) then
        (let rec t_2_5 = ((mkIndent_lh__d3 (_lh_mkIndent_arg1_3 - 8)) _lh_mkIndent_arg2_3) in
          (let rec h_2_5 = '|' in
            (fun ys_2_7 -> 
              (`LH_C(h_2_5, ((mappend_lh__d0 t_2_5) ys_2_7))))))
      else
        (let rec t_2_6 = ((mkIndent_lh__d3 (_lh_mkIndent_arg1_3 - 1)) _lh_mkIndent_arg2_3) in
          (let rec h_2_6 = ' ' in
            (fun ys_2_8 -> 
              (`LH_C(h_2_6, ((mappend_lh__d0 t_2_6) ys_2_8))))))));;
let rec mkIndent_lh__d4 _lh_mkIndent_arg1_4 _lh_mkIndent_arg2_4 =
  (match _lh_mkIndent_arg1_4 with
    | 0 -> 
      _lh_mkIndent_arg2_4
    | _ -> 
      (if (_lh_mkIndent_arg1_4 >= 8) then
        (let rec t_2_7 = ((mkIndent_lh__d4 (_lh_mkIndent_arg1_4 - 8)) _lh_mkIndent_arg2_4) in
          (let rec h_2_7 = '|' in
            (fun ys_2_9 -> 
              (`LH_C(h_2_7, ((mappend_lh__d0 t_2_7) ys_2_9))))))
      else
        (let rec t_2_8 = ((mkIndent_lh__d4 (_lh_mkIndent_arg1_4 - 1)) _lh_mkIndent_arg2_4) in
          (let rec h_2_8 = ' ' in
            (fun ys_3_0 -> 
              (`LH_C(h_2_8, ((mappend_lh__d0 t_2_8) ys_3_0))))))));;
let rec mkIndent_lh__d1_d1 _lh_mkIndent_arg1_5 _lh_mkIndent_arg2_5 =
  (match _lh_mkIndent_arg1_5 with
    | 0 -> 
      _lh_mkIndent_arg2_5
    | _ -> 
      (if (_lh_mkIndent_arg1_5 >= 8) then
        (let rec t_3_1 = ((mkIndent_lh__d1_d1 (_lh_mkIndent_arg1_5 - 8)) _lh_mkIndent_arg2_5) in
          (let rec h_3_1 = '|' in
            (fun ys_3_3 -> 
              (`LH_C(h_3_1, ((mappend_lh__d0 t_3_1) ys_3_3))))))
      else
        (let rec t_3_2 = ((mkIndent_lh__d1_d1 (_lh_mkIndent_arg1_5 - 1)) _lh_mkIndent_arg2_5) in
          (let rec h_3_2 = ' ' in
            (fun ys_3_4 -> 
              (`LH_C(h_3_2, ((mappend_lh__d0 t_3_2) ys_3_4))))))));;
let rec mkIndent_lh__d5 _lh_mkIndent_arg1_7 _lh_mkIndent_arg2_7 =
  (match _lh_mkIndent_arg1_7 with
    | 0 -> 
      _lh_mkIndent_arg2_7
    | _ -> 
      (if (_lh_mkIndent_arg1_7 >= 8) then
        (let rec t_3_5 = ((mkIndent_lh__d5 (_lh_mkIndent_arg1_7 - 8)) _lh_mkIndent_arg2_7) in
          (let rec h_3_5 = '|' in
            (fun ys_3_7 -> 
              (`LH_C(h_3_5, ((mappend_lh__d0 t_3_5) ys_3_7))))))
      else
        (let rec t_3_6 = ((mkIndent_lh__d5 (_lh_mkIndent_arg1_7 - 1)) _lh_mkIndent_arg2_7) in
          (let rec h_3_6 = ' ' in
            (fun ys_3_8 -> 
              (`LH_C(h_3_6, ((mappend_lh__d0 t_3_6) ys_3_8))))))));;
let rec mkIndent_lh__d1 _lh_mkIndent_arg1_8 _lh_mkIndent_arg2_8 =
  (match _lh_mkIndent_arg1_8 with
    | 0 -> 
      _lh_mkIndent_arg2_8
    | _ -> 
      (if (_lh_mkIndent_arg1_8 >= 8) then
        (let rec t_3_8 = ((mkIndent_lh__d1 (_lh_mkIndent_arg1_8 - 8)) _lh_mkIndent_arg2_8) in
          (let rec h_3_8 = '|' in
            (fun ys_3_9 -> 
              (`LH_C(h_3_8, ((mappend_lh__d0 t_3_8) ys_3_9))))))
      else
        (let rec t_3_9 = ((mkIndent_lh__d1 (_lh_mkIndent_arg1_8 - 1)) _lh_mkIndent_arg2_8) in
          (let rec h_3_9 = ' ' in
            (fun ys_4_0 -> 
              (`LH_C(h_3_9, ((mappend_lh__d0 t_3_9) ys_4_0))))))));;
let rec mkIndent_lh__d1_d0 _lh_mkIndent_arg1_9 _lh_mkIndent_arg2_9 =
  (match _lh_mkIndent_arg1_9 with
    | 0 -> 
      _lh_mkIndent_arg2_9
    | _ -> 
      (if (_lh_mkIndent_arg1_9 >= 8) then
        (let rec t_4_3 = ((mkIndent_lh__d1_d0 (_lh_mkIndent_arg1_9 - 8)) _lh_mkIndent_arg2_9) in
          (let rec h_4_3 = '|' in
            (fun ys_4_1 -> 
              (`LH_C(h_4_3, ((mappend_lh__d0 t_4_3) ys_4_1))))))
      else
        (let rec t_4_4 = ((mkIndent_lh__d1_d0 (_lh_mkIndent_arg1_9 - 1)) _lh_mkIndent_arg2_9) in
          (let rec h_4_4 = ' ' in
            (fun ys_4_2 -> 
              (`LH_C(h_4_4, ((mappend_lh__d0 t_4_4) ys_4_2))))))));;
let rec mkIndent_lh__d2 _lh_mkIndent_arg1_1_0 _lh_mkIndent_arg2_1_0 =
  (match _lh_mkIndent_arg1_1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_1_0
    | _ -> 
      (if (_lh_mkIndent_arg1_1_0 >= 8) then
        (let rec t_4_5 = ((mkIndent_lh__d2 (_lh_mkIndent_arg1_1_0 - 8)) _lh_mkIndent_arg2_1_0) in
          (let rec h_4_5 = '|' in
            (fun ys_4_3 -> 
              (`LH_C(h_4_5, ((mappend_lh__d0 t_4_5) ys_4_3))))))
      else
        (let rec t_4_6 = ((mkIndent_lh__d2 (_lh_mkIndent_arg1_1_0 - 1)) _lh_mkIndent_arg2_1_0) in
          (let rec h_4_6 = ' ' in
            (fun ys_4_4 -> 
              (`LH_C(h_4_6, ((mappend_lh__d0 t_4_6) ys_4_4))))))));;
let rec mkIndent_lh__d0 _lh_mkIndent_arg1_1_1 _lh_mkIndent_arg2_1_1 =
  (match _lh_mkIndent_arg1_1_1 with
    | 0 -> 
      _lh_mkIndent_arg2_1_1
    | _ -> 
      (if (_lh_mkIndent_arg1_1_1 >= 8) then
        (let rec t_4_7 = ((mkIndent_lh__d0 (_lh_mkIndent_arg1_1_1 - 8)) _lh_mkIndent_arg2_1_1) in
          (let rec h_4_7 = '|' in
            (fun ys_4_5 -> 
              (`LH_C(h_4_7, ((mappend_lh__d0 t_4_7) ys_4_5))))))
      else
        (let rec t_4_8 = ((mkIndent_lh__d0 (_lh_mkIndent_arg1_1_1 - 1)) _lh_mkIndent_arg2_1_1) in
          (let rec h_4_8 = ' ' in
            (fun ys_4_6 -> 
              (`LH_C(h_4_8, ((mappend_lh__d0 t_4_8) ys_4_6))))))));;
let rec ppBesideSP_lh__d0 _lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg2_0 _lh_ppBesideSP_arg3_0 _lh_ppBesideSP_arg4_0 =
  (let rec _lh_matchIdent_6 = ((_lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg3_0) false) in
    (match _lh_matchIdent_6 with
      | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_0, _lh_ppBesideSP_MkPrettyRep_1_0, _lh_ppBesideSP_MkPrettyRep_2_0, _lh_ppBesideSP_MkPrettyRep_3_0) -> 
        (let rec li_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
          0
        else
          (_lh_ppBesideSP_MkPrettyRep_1_0 + 1)) in
          (let rec _lh_matchIdent_7 = ((_lh_ppBesideSP_arg2_0 (_lh_ppBesideSP_arg3_0 - li_0)) false) in
            (match _lh_matchIdent_7 with
              | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_1, _lh_ppBesideSP_MkPrettyRep_1_1, _lh_ppBesideSP_MkPrettyRep_2_1, _lh_ppBesideSP_MkPrettyRep_3_1) -> 
                (let rec wi_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
                  0
                else
                  1) in
                  (let rec sp_0 = (if ((orL_lh__d1 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1) then
                    cNil_lh__d3
                  else
                    (cCh_lh__d0 ' ')) in
                    (`MkPrettyRep(((cAppend_lh__d3 _lh_ppBesideSP_MkPrettyRep_0_0) ((cAppend_lh__d4 sp_0) ((cIndent_lh__d1 li_0) _lh_ppBesideSP_MkPrettyRep_0_1))), (li_0 + _lh_ppBesideSP_MkPrettyRep_1_1), ((andL_lh__d4 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1), ((andL_lh__d5 (_lh_ppBesideSP_arg3_0 >= wi_0)) ((andL_lh__d6 _lh_ppBesideSP_MkPrettyRep_3_0) _lh_ppBesideSP_MkPrettyRep_3_1))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec ppNil_lh__d2 _lh_ppNil_arg1_1 _lh_ppNil_arg2_1 =
  (`MkPrettyRep(cNil_lh__d4, 0, true, (_lh_ppNil_arg1_1 >= 0)));;
let rec ppChar_lh__d0 _lh_ppChar_arg1_0 _lh_ppChar_arg2_0 _lh_ppChar_arg3_0 =
  (`MkPrettyRep((cCh_lh__d1 _lh_ppChar_arg1_0), 1, false, (_lh_ppChar_arg2_0 >= 1)));;
let rec ppNil_lh__d0 _lh_ppNil_arg1_0 _lh_ppNil_arg2_0 =
  (`MkPrettyRep(cNil_lh__d1, 0, true, (_lh_ppNil_arg1_0 >= 0)));;
let rec ppAbove_lh__d0 _lh_ppAbove_arg1_0 _lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0 _lh_ppAbove_arg4_0 =
  (let rec _lh_matchIdent_4 = ((_lh_ppAbove_arg1_0 _lh_ppAbove_arg3_0) true) in
    (match _lh_matchIdent_4 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_0, _lh_ppAbove_MkPrettyRep_1_0, _lh_ppAbove_MkPrettyRep_2_0, _lh_ppAbove_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_5 = ((_lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0) true) in
          (match _lh_matchIdent_5 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_1, _lh_ppAbove_MkPrettyRep_1_1, _lh_ppAbove_MkPrettyRep_2_1, _lh_ppAbove_MkPrettyRep_3_1) -> 
              (let rec nl_0 = (if ((orL_lh__d0 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1) then
                cNil_lh__d0
              else
                cNL_lh__d0) in
                (`MkPrettyRep(((cAppend_lh__d0 _lh_ppAbove_MkPrettyRep_0_0) ((cAppend_lh__d1 nl_0) _lh_ppAbove_MkPrettyRep_0_1)), _lh_ppAbove_MkPrettyRep_1_1, ((andL_lh__d0 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec pp'SP_lh__d0 _lh_pp'SP_arg1_0 =
  ((ppStr_lh__d0 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_0);;
let rec ppInt_lh__d0 _lh_ppInt_arg1_0 =
  (ppStr_lh__d1 (string_of_int _lh_ppInt_arg1_0));;
let rec ppBesides_lh__d0 _lh_ppBesides_arg1_0 =
  (match _lh_ppBesides_arg1_0 with
    | `LH_N -> 
      ppNil_lh__d1
    | _ -> 
      ((foldr1_lh__d1 ppBeside_lh__d0) _lh_ppBesides_arg1_0));;
let rec flatten_lh__d0 _lh_flatten_arg1_0 _lh_flatten_arg2_0 _lh_flatten_arg3_0 _lh_flatten_arg4_0 =
  (match _lh_flatten_arg3_0 with
    | `CNil -> 
      ((flattenS_lh__d0 _lh_flatten_arg2_0) _lh_flatten_arg4_0)
    | `CAppend(_lh_flatten_CAppend_0_0, _lh_flatten_CAppend_1_0) -> 
      ((((flatten_lh__d0 _lh_flatten_arg1_0) _lh_flatten_arg2_0) _lh_flatten_CAppend_0_0) (let rec _lh_flattenS_LH_C_1_0 = _lh_flatten_arg4_0 in
        (let rec _lh_flattenS_LH_C_0_0 = (let rec _lh_flattenS_LH_P2_1_0 = _lh_flatten_CAppend_1_0 in
          (let rec _lh_flattenS_LH_P2_0_0 = _lh_flatten_arg1_0 in
            (fun _lh_flattenS_LH_C_1_1 _lh_flattenS_arg1_0 -> 
              ((((flatten_lh__d0 _lh_flattenS_LH_P2_0_0) _lh_flattenS_arg1_0) _lh_flattenS_LH_P2_1_0) _lh_flattenS_LH_C_1_1)))) in
          (fun _lh_flattenS_arg1_1 -> 
            ((_lh_flattenS_LH_C_0_0 _lh_flattenS_LH_C_1_0) _lh_flattenS_arg1_1)))))
    | `CIndent(_lh_flatten_CIndent_0_0, _lh_flatten_CIndent_1_0) -> 
      ((((flatten_lh__d0 (_lh_flatten_CIndent_0_0 + _lh_flatten_arg1_0)) _lh_flatten_arg2_0) _lh_flatten_CIndent_1_0) _lh_flatten_arg4_0)
    | `CNewline -> 
      (let rec t_0 = ((flattenS_lh__d1 true) _lh_flatten_arg4_0) in
        (let rec h_0 = '|' in
          (fun ys_0 -> 
            (`LH_C(h_0, ((mappend_lh__d0 t_0) ys_0))))))
    | _ -> 
      (match _lh_flatten_arg2_0 with
        | false -> 
          (match _lh_flatten_arg3_0 with
            | `CStr(_lh_flatten_CStr_0_0) -> 
              ((mappend_lh__d1 _lh_flatten_CStr_0_0) ((flattenS_lh__d2 false) _lh_flatten_arg4_0))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | false -> 
                  (match _lh_flatten_arg3_0 with
                    | `CCh(_lh_flatten_CCh_0_0) -> 
                      (let rec t_1 = ((flattenS_lh__d3 false) _lh_flatten_arg4_0) in
                        (let rec h_1 = _lh_flatten_CCh_0_0 in
                          (fun ys_1 -> 
                            (`LH_C(h_1, ((mappend_lh__d0 t_1) ys_1))))))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CStr(_lh_flatten_CStr_0_1) -> 
                              ((mkIndent_lh__d0 _lh_flatten_arg1_0) ((mappend_lh__d2 _lh_flatten_CStr_0_1) ((flattenS_lh__d4 false) _lh_flatten_arg4_0)))
                            | _ -> 
                              (match _lh_flatten_arg2_0 with
                                | true -> 
                                  (match _lh_flatten_arg3_0 with
                                    | `CCh(_lh_flatten_CCh_0_1) -> 
                                      ((mkIndent_lh__d1 _lh_flatten_arg1_0) (let rec t_2 = ((flattenS_lh__d5 false) _lh_flatten_arg4_0) in
                                        (let rec h_2 = _lh_flatten_CCh_0_1 in
                                          (fun ys_2 -> 
                                            (`LH_C(h_2, ((mappend_lh__d0 t_2) ys_2)))))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_2) -> 
                                  ((mkIndent_lh__d2 _lh_flatten_arg1_0) (let rec t_3 = ((flattenS_lh__d6 false) _lh_flatten_arg4_0) in
                                    (let rec h_3 = _lh_flatten_CCh_0_2 in
                                      (fun ys_3 -> 
                                        (`LH_C(h_3, ((mappend_lh__d0 t_3) ys_3)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_2) -> 
                          ((mkIndent_lh__d3 _lh_flatten_arg1_0) ((mappend_lh__d3 _lh_flatten_CStr_0_2) ((flattenS_lh__d7 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_3) -> 
                                  ((mkIndent_lh__d4 _lh_flatten_arg1_0) (let rec t_4 = ((flattenS_lh__d8 false) _lh_flatten_arg4_0) in
                                    (let rec h_4 = _lh_flatten_CCh_0_3 in
                                      (fun ys_4 -> 
                                        (`LH_C(h_4, ((mappend_lh__d0 t_4) ys_4)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_4) -> 
                              ((mkIndent_lh__d5 _lh_flatten_arg1_0) (let rec t_5 = ((flattenS_lh__d9 false) _lh_flatten_arg4_0) in
                                (let rec h_5 = _lh_flatten_CCh_0_4 in
                                  (fun ys_5 -> 
                                    (`LH_C(h_5, ((mappend_lh__d0 t_5) ys_5)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_0 with
            | false -> 
              (match _lh_flatten_arg3_0 with
                | `CCh(_lh_flatten_CCh_0_5) -> 
                  (let rec t_6 = ((flattenS_lh__d1_d0 false) _lh_flatten_arg4_0) in
                    (let rec h_6 = _lh_flatten_CCh_0_5 in
                      (fun ys_6 -> 
                        (`LH_C(h_6, ((mappend_lh__d0 t_6) ys_6))))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_3) -> 
                          ((mkIndent_lh__d6 _lh_flatten_arg1_0) ((mappend_lh__d4 _lh_flatten_CStr_0_3) ((flattenS_lh__d1_d1 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_6) -> 
                                  ((mkIndent_lh__d7 _lh_flatten_arg1_0) (let rec t_7 = ((flattenS_lh__d1_d2 false) _lh_flatten_arg4_0) in
                                    (let rec h_7 = _lh_flatten_CCh_0_6 in
                                      (fun ys_7 -> 
                                        (`LH_C(h_7, ((mappend_lh__d0 t_7) ys_7)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_7) -> 
                              ((mkIndent_lh__d8 _lh_flatten_arg1_0) (let rec t_8 = ((flattenS_lh__d1_d3 false) _lh_flatten_arg4_0) in
                                (let rec h_8 = _lh_flatten_CCh_0_7 in
                                  (fun ys_8 -> 
                                    (`LH_C(h_8, ((mappend_lh__d0 t_8) ys_8)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | true -> 
                  (match _lh_flatten_arg3_0 with
                    | `CStr(_lh_flatten_CStr_0_4) -> 
                      ((mkIndent_lh__d9 _lh_flatten_arg1_0) ((mappend_lh__d5 _lh_flatten_CStr_0_4) ((flattenS_lh__d1_d4 false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_8) -> 
                              ((mkIndent_lh__d1_d0 _lh_flatten_arg1_0) (let rec t_9 = ((flattenS_lh__d1_d5 false) _lh_flatten_arg4_0) in
                                (let rec h_9 = _lh_flatten_CCh_0_8 in
                                  (fun ys_9 -> 
                                    (`LH_C(h_9, ((mappend_lh__d0 t_9) ys_9)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CCh(_lh_flatten_CCh_0_9) -> 
                          ((mkIndent_lh__d1_d1 _lh_flatten_arg1_0) (let rec t_1_0 = ((flattenS_lh__d1_d6 false) _lh_flatten_arg4_0) in
                            (let rec h_1_0 = _lh_flatten_CCh_0_9 in
                              (fun ys_1_0 -> 
                                (`LH_C(h_1_0, ((mappend_lh__d0 t_1_0) ys_1_0)))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec ppCat_lh__d0 _lh_ppCat_arg1_0 =
  (match _lh_ppCat_arg1_0 with
    | `LH_N -> 
      ppNil_lh__d2
    | _ -> 
      ((foldr1_lh__d2 ppBesideSP_lh__d0) _lh_ppCat_arg1_0));;
let rec ppAboves_lh__d0 _lh_ppAboves_arg1_0 =
  (match _lh_ppAboves_arg1_0 with
    | `LH_N -> 
      ppNil_lh__d0
    | _ -> 
      ((foldr1_lh__d0 ppAbove_lh__d0) _lh_ppAboves_arg1_0));;
let rec cShow_lh__d0 _lh_cShow_arg1_0 =
  ((((flatten_lh__d0 0) true) _lh_cShow_arg1_0) (fun _lh_flattenS_arg1_8 ys_1_9 -> 
    ys_1_9));;
let rec ppShow_lh__d0 _lh_ppShow_arg1_0 _lh_ppShow_arg2_0 =
  (let rec _lh_matchIdent_0 = ((_lh_ppShow_arg2_0 _lh_ppShow_arg1_0) false) in
    (match _lh_matchIdent_0 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_0, _lh_ppShow_MkPrettyRep_1_0, _lh_ppShow_MkPrettyRep_2_0, _lh_ppShow_MkPrettyRep_3_0) -> 
        (cShow_lh__d0 _lh_ppShow_MkPrettyRep_0_0)
      | _ -> 
        (failwith "error")));;
let rec testPretty_nofib_lh__d0 _lh_testPretty_nofib_arg1_0 =
  (let rec pretty_stuff_0 = (ppAboves_lh__d0 (`LH_C((ppBesides_lh__d0 (`LH_C((ppInt_lh__d0 (0 - 42)), (`LH_C((ppChar_lh__d0 '@'), (`LH_C((ppStr_lh__d3 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP_lh__d0, (`LH_C((((ppHang_lh__d0 (ppStr_lh__d4 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat_lh__d0 ((copy_lh__d0 50) (ppStr_lh__d2 (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend_lh__d0 ((ppShow_lh__d0 80) pretty_stuff_0)) (`LH_C('|', (`LH_N)))));;
end;;

