

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec cAppend_lh__d2 _lh_cAppend_arg1_0 _lh_cAppend_arg2_0 =
  (`CAppend(_lh_cAppend_arg1_0, _lh_cAppend_arg2_0));;
let rec cCh_lh__d2 _lh_cCh_arg1_0 =
  (`CCh(_lh_cCh_arg1_0));;
let rec cAppend_lh__d3 _lh_cAppend_arg1_2 _lh_cAppend_arg2_2 =
  (`CAppend(_lh_cAppend_arg1_2, _lh_cAppend_arg2_2));;
let rec cIndent_lh__d1 _lh_cIndent_arg1_0 _lh_cIndent_arg2_0 =
  (`CIndent(_lh_cIndent_arg1_0, _lh_cIndent_arg2_0));;
let rec cNL_lh__d1 =
  (`CNewline);;
let rec orL_lh__d1 _lh_orL_arg1_1 _lh_orL_arg2_1 =
  (match _lh_orL_arg1_1 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec cStr_lh__d3 _lh_cStr_arg1_3 =
  (`CStr(_lh_cStr_arg1_3));;
let rec cAppend_lh__d4 _lh_cAppend_arg1_5 _lh_cAppend_arg2_5 =
  (`CAppend(_lh_cAppend_arg1_5, _lh_cAppend_arg2_5));;
let rec length_lh__d3 ls_6 =
  (match ls_6 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_lh__d3 t_3))
    | `LH_N -> 
      0);;
let rec andL_lh__d1 _lh_andL_arg1_1 _lh_andL_arg2_1 =
  (match _lh_andL_arg1_1 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec cIndent_lh__d2 _lh_cIndent_arg1_3 _lh_cIndent_arg2_3 =
  (`CIndent(_lh_cIndent_arg1_3, _lh_cIndent_arg2_3));;
let rec cAppend_lh__d1 _lh_cAppend_arg1_6 _lh_cAppend_arg2_6 =
  (`CAppend(_lh_cAppend_arg1_6, _lh_cAppend_arg2_6));;
let rec ppStr_lh__d3 _lh_ppStr_arg1_2 _lh_ppStr_arg2_2 _lh_ppStr_arg3_2 =
  (let rec ls_2 = (length_lh__d3 _lh_ppStr_arg1_2) in
    (let rec _lh_ppHang_MkPrettyRep_3_0 = (_lh_ppStr_arg2_2 >= ls_2) in
      (let rec _lh_ppHang_MkPrettyRep_2_0 = false in
        (let rec _lh_ppHang_MkPrettyRep_1_0 = ls_2 in
          (let rec _lh_ppHang_MkPrettyRep_0_0 = (cStr_lh__d3 _lh_ppStr_arg1_2) in
            (fun _lh_ppHang_arg2_0 _lh_ppHang_arg3_0 _lh_ppHang_arg4_0 _lh_ppHang_arg5_0 -> 
              (let rec _lh_matchIdent_0 = ((_lh_ppHang_arg3_0 (_lh_ppHang_arg4_0 - (_lh_ppHang_MkPrettyRep_1_0 + 1))) false) in
                (match _lh_matchIdent_0 with
                  | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_1, _lh_ppHang_MkPrettyRep_1_1, _lh_ppHang_MkPrettyRep_2_1, _lh_ppHang_MkPrettyRep_3_1) -> 
                    (let rec _lh_matchIdent_1 = ((_lh_ppHang_arg3_0 (_lh_ppHang_arg4_0 - _lh_ppHang_arg2_0)) false) in
                      (match _lh_matchIdent_1 with
                        | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_2, _lh_ppHang_MkPrettyRep_1_2, _lh_ppHang_MkPrettyRep_2_2, _lh_ppHang_MkPrettyRep_3_2) -> 
                          (if _lh_ppHang_MkPrettyRep_2_0 then
                            ((_lh_ppHang_arg3_0 _lh_ppHang_arg4_0) _lh_ppHang_arg5_0)
                          else
                            (if ((orL_lh__d1 (_lh_ppHang_MkPrettyRep_1_0 <= _lh_ppHang_arg2_0)) _lh_ppHang_MkPrettyRep_3_1) then
                              (`MkPrettyRep(((cAppend_lh__d3 ((cAppend_lh__d1 _lh_ppHang_MkPrettyRep_0_0) (cCh_lh__d2 ' '))) ((cIndent_lh__d2 (_lh_ppHang_MkPrettyRep_1_0 + 1)) _lh_ppHang_MkPrettyRep_0_1)), ((_lh_ppHang_MkPrettyRep_1_0 + 1) + _lh_ppHang_MkPrettyRep_1_1), false, ((andL_lh__d1 _lh_ppHang_MkPrettyRep_3_0) _lh_ppHang_MkPrettyRep_3_1)))
                            else
                              (`MkPrettyRep(((cAppend_lh__d2 _lh_ppHang_MkPrettyRep_0_0) ((cAppend_lh__d4 cNL_lh__d1) ((cIndent_lh__d1 _lh_ppHang_arg2_0) _lh_ppHang_MkPrettyRep_0_2))), _lh_ppHang_MkPrettyRep_1_2, false, false))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error")))))))));;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d1 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec cAppend_lh__d7 _lh_cAppend_arg1_3 _lh_cAppend_arg2_3 =
  (`CAppend(_lh_cAppend_arg1_3, _lh_cAppend_arg2_3));;
let rec cNil_lh__d3 =
  (`CNil);;
let rec orL_lh__d2 _lh_orL_arg1_0 _lh_orL_arg2_0 =
  (match _lh_orL_arg1_0 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec andL_lh__d7 _lh_andL_arg1_4 _lh_andL_arg2_4 =
  (match _lh_andL_arg1_4 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_4
    | _ -> 
      (failwith "error"));;
let rec ppAbove_lh__d1 _lh_ppAbove_arg1_0 _lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0 _lh_ppAbove_arg4_0 =
  (let rec _lh_matchIdent_2 = ((_lh_ppAbove_arg1_0 _lh_ppAbove_arg3_0) true) in
    (match _lh_matchIdent_2 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_0, _lh_ppAbove_MkPrettyRep_1_0, _lh_ppAbove_MkPrettyRep_2_0, _lh_ppAbove_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_3 = ((_lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0) true) in
          (match _lh_matchIdent_3 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_1, _lh_ppAbove_MkPrettyRep_1_1, _lh_ppAbove_MkPrettyRep_2_1, _lh_ppAbove_MkPrettyRep_3_1) -> 
              (let rec nl_0 = (if ((orL_lh__d2 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1) then
                cNil_lh__d3
              else
                cNL_lh__d1) in
                (`MkPrettyRep(((cAppend_lh__d7 _lh_ppAbove_MkPrettyRep_0_0) ((cAppend_lh__d7 nl_0) _lh_ppAbove_MkPrettyRep_0_1)), _lh_ppAbove_MkPrettyRep_1_1, ((andL_lh__d7 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec ppNil_lh__d3 _lh_ppNil_arg1_2 _lh_ppNil_arg2_2 =
  (`MkPrettyRep(cNil_lh__d3, 0, true, (_lh_ppNil_arg1_2 >= 0)));;
let rec foldr1_lh__d3 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh__d3 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec ppAboves_lh__d1 _lh_ppAboves_arg1_0 =
  (match _lh_ppAboves_arg1_0 with
    | `LH_N -> 
      ppNil_lh__d3
    | _ -> 
      ((foldr1_lh__d3 ppAbove_lh__d1) _lh_ppAboves_arg1_0));;
let rec length_lh__d4 ls_4 =
  (match ls_4 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh__d4 t_1))
    | `LH_N -> 
      0);;
let rec cStr_lh__d4 _lh_cStr_arg1_0 =
  (`CStr(_lh_cStr_arg1_0));;
let rec ppStr_lh__d4 _lh_ppStr_arg1_4 _lh_ppStr_arg2_4 _lh_ppStr_arg3_4 =
  (let rec ls_7 = (length_lh__d4 _lh_ppStr_arg1_4) in
    (`MkPrettyRep((cStr_lh__d4 _lh_ppStr_arg1_4), ls_7, false, (_lh_ppStr_arg2_4 >= ls_7))));;
let rec pp'SP_lh__d1 _lh_pp'SP_arg1_0 =
  ((ppStr_lh__d4 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_0);;
let rec copy_lh__d1 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh__d1 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec length_lh__d2 ls_8 =
  (match ls_8 with
    | `LH_C(h_4, t_4) -> 
      (1 + (length_lh__d2 t_4))
    | `LH_N -> 
      0);;
let rec cStr_lh__d2 _lh_cStr_arg1_2 =
  (`CStr(_lh_cStr_arg1_2));;
let rec ppStr_lh__d2 _lh_ppStr_arg1_3 _lh_ppStr_arg2_3 _lh_ppStr_arg3_3 =
  (let rec ls_3 = (length_lh__d2 _lh_ppStr_arg1_3) in
    (`MkPrettyRep((cStr_lh__d2 _lh_ppStr_arg1_3), ls_3, false, (_lh_ppStr_arg2_3 >= ls_3))));;
let rec length_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh__d1 t_2))
    | `LH_N -> 
      0);;
let rec cStr_lh__d1 _lh_cStr_arg1_1 =
  (`CStr(_lh_cStr_arg1_1));;
let rec ppStr_lh__d1 _lh_ppStr_arg1_1 _lh_ppStr_arg2_1 _lh_ppStr_arg3_1 =
  (let rec ls_1 = (length_lh__d1 _lh_ppStr_arg1_1) in
    (`MkPrettyRep((cStr_lh__d1 _lh_ppStr_arg1_1), ls_1, false, (_lh_ppStr_arg2_1 >= ls_1))));;
let rec cCh_lh__d1 _lh_cCh_arg1_1 =
  (`CCh(_lh_cCh_arg1_1));;
let rec ppChar_lh__d1 _lh_ppChar_arg1_0 _lh_ppChar_arg2_0 _lh_ppChar_arg3_0 =
  (`MkPrettyRep((cCh_lh__d1 _lh_ppChar_arg1_0), 1, false, (_lh_ppChar_arg2_0 >= 1)));;
let rec ppStr_lh__d5 _lh_ppStr_arg1_0 _lh_ppStr_arg2_0 _lh_ppStr_arg3_0 =
  (let rec ls_0 = (length_lh__d4 _lh_ppStr_arg1_0) in
    (`MkPrettyRep((cStr_lh__d4 _lh_ppStr_arg1_0), ls_0, false, (_lh_ppStr_arg2_0 >= ls_0))));;
let rec ppInt_lh__d1 _lh_ppInt_arg1_0 =
  (ppStr_lh__d5 (string_of_int _lh_ppInt_arg1_0));;
let rec andL_lh__d6 _lh_andL_arg1_0 _lh_andL_arg2_0 =
  (match _lh_andL_arg1_0 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec cCh_lh__d3 _lh_cCh_arg1_2 =
  (`CCh(_lh_cCh_arg1_2));;
let rec cIndent_lh__d4 _lh_cIndent_arg1_1 _lh_cIndent_arg2_1 =
  (`CIndent(_lh_cIndent_arg1_1, _lh_cIndent_arg2_1));;
let rec cAppend_lh__d6 _lh_cAppend_arg1_4 _lh_cAppend_arg2_4 =
  (`CAppend(_lh_cAppend_arg1_4, _lh_cAppend_arg2_4));;
let rec andL_lh__d5 _lh_andL_arg1_2 _lh_andL_arg2_2 =
  (match _lh_andL_arg1_2 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec ppBesideSP_lh__d1 _lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg2_0 _lh_ppBesideSP_arg3_0 _lh_ppBesideSP_arg4_0 =
  (let rec _lh_matchIdent_7 = ((_lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg3_0) false) in
    (match _lh_matchIdent_7 with
      | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_0, _lh_ppBesideSP_MkPrettyRep_1_0, _lh_ppBesideSP_MkPrettyRep_2_0, _lh_ppBesideSP_MkPrettyRep_3_0) -> 
        (let rec li_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
          0
        else
          (_lh_ppBesideSP_MkPrettyRep_1_0 + 1)) in
          (let rec _lh_matchIdent_8 = ((_lh_ppBesideSP_arg2_0 (_lh_ppBesideSP_arg3_0 - li_0)) false) in
            (match _lh_matchIdent_8 with
              | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_1, _lh_ppBesideSP_MkPrettyRep_1_1, _lh_ppBesideSP_MkPrettyRep_2_1, _lh_ppBesideSP_MkPrettyRep_3_1) -> 
                (let rec wi_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
                  0
                else
                  1) in
                  (let rec sp_0 = (if ((orL_lh__d2 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1) then
                    cNil_lh__d3
                  else
                    (cCh_lh__d3 ' ')) in
                    (`MkPrettyRep(((cAppend_lh__d6 _lh_ppBesideSP_MkPrettyRep_0_0) ((cAppend_lh__d7 sp_0) ((cIndent_lh__d4 li_0) _lh_ppBesideSP_MkPrettyRep_0_1))), (li_0 + _lh_ppBesideSP_MkPrettyRep_1_1), ((andL_lh__d7 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1), ((andL_lh__d5 (_lh_ppBesideSP_arg3_0 >= wi_0)) ((andL_lh__d6 _lh_ppBesideSP_MkPrettyRep_3_0) _lh_ppBesideSP_MkPrettyRep_3_1))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec cNil_lh__d2 =
  (`CNil);;
let rec ppNil_lh__d2 _lh_ppNil_arg1_0 _lh_ppNil_arg2_0 =
  (`MkPrettyRep(cNil_lh__d2, 0, true, (_lh_ppNil_arg1_0 >= 0)));;
let rec foldr1_lh__d2 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (match _lh_foldr1_LH_C_1_2 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_2
        | _ -> 
          ((_lh_foldr1_arg1_2 _lh_foldr1_LH_C_0_2) ((foldr1_lh__d2 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec ppCat_lh__d1 _lh_ppCat_arg1_0 =
  (match _lh_ppCat_arg1_0 with
    | `LH_N -> 
      ppNil_lh__d2
    | _ -> 
      ((foldr1_lh__d2 ppBesideSP_lh__d1) _lh_ppCat_arg1_0));;
let rec ppHang_lh__d1 _lh_ppHang_arg1_0 _lh_ppHang_arg2_1 _lh_ppHang_arg3_1 _lh_ppHang_arg4_1 _lh_ppHang_arg5_1 =
  (let rec _lh_matchIdent_4 = ((_lh_ppHang_arg1_0 _lh_ppHang_arg4_1) false) in
    ((((_lh_matchIdent_4 _lh_ppHang_arg2_1) _lh_ppHang_arg3_1) _lh_ppHang_arg4_1) _lh_ppHang_arg5_1));;
let rec andL_lh__d3 _lh_andL_arg1_3 _lh_andL_arg2_3 =
  (match _lh_andL_arg1_3 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec andL_lh__d2 _lh_andL_arg1_5 _lh_andL_arg2_5 =
  (match _lh_andL_arg1_5 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_5
    | _ -> 
      (failwith "error"));;
let rec cAppend_lh__d5 _lh_cAppend_arg1_1 _lh_cAppend_arg2_1 =
  (`CAppend(_lh_cAppend_arg1_1, _lh_cAppend_arg2_1));;
let rec andL_lh__d4 _lh_andL_arg1_6 _lh_andL_arg2_6 =
  (match _lh_andL_arg1_6 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_6
    | _ -> 
      (failwith "error"));;
let rec cIndent_lh__d3 _lh_cIndent_arg1_2 _lh_cIndent_arg2_2 =
  (`CIndent(_lh_cIndent_arg1_2, _lh_cIndent_arg2_2));;
let rec ppBeside_lh__d1 _lh_ppBeside_arg1_0 _lh_ppBeside_arg2_0 _lh_ppBeside_arg3_0 _lh_ppBeside_arg4_0 =
  (let rec _lh_matchIdent_5 = ((_lh_ppBeside_arg1_0 _lh_ppBeside_arg3_0) false) in
    (match _lh_matchIdent_5 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_0, _lh_ppBeside_MkPrettyRep_1_0, _lh_ppBeside_MkPrettyRep_2_0, _lh_ppBeside_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_6 = ((_lh_ppBeside_arg2_0 (_lh_ppBeside_arg3_0 - _lh_ppBeside_MkPrettyRep_1_0)) false) in
          (match _lh_matchIdent_6 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_1, _lh_ppBeside_MkPrettyRep_1_1, _lh_ppBeside_MkPrettyRep_2_1, _lh_ppBeside_MkPrettyRep_3_1) -> 
              (`MkPrettyRep(((cAppend_lh__d5 _lh_ppBeside_MkPrettyRep_0_0) ((cIndent_lh__d3 _lh_ppBeside_MkPrettyRep_1_0) _lh_ppBeside_MkPrettyRep_0_1)), (_lh_ppBeside_MkPrettyRep_1_0 + _lh_ppBeside_MkPrettyRep_1_1), ((andL_lh__d2 _lh_ppBeside_MkPrettyRep_2_0) _lh_ppBeside_MkPrettyRep_2_1), ((andL_lh__d3 (_lh_ppBeside_arg3_0 >= 0)) ((andL_lh__d4 _lh_ppBeside_MkPrettyRep_3_0) _lh_ppBeside_MkPrettyRep_3_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec cNil_lh__d1 =
  (`CNil);;
let rec ppNil_lh__d1 _lh_ppNil_arg1_1 _lh_ppNil_arg2_1 =
  (`MkPrettyRep(cNil_lh__d1, 0, true, (_lh_ppNil_arg1_1 >= 0)));;
let rec foldr1_lh__d1 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1_lh__d1 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec ppBesides_lh__d1 _lh_ppBesides_arg1_0 =
  (match _lh_ppBesides_arg1_0 with
    | `LH_N -> 
      ppNil_lh__d1
    | _ -> 
      ((foldr1_lh__d1 ppBeside_lh__d1) _lh_ppBesides_arg1_0));;
let rec flattenS_lh__d1 _lh_flattenS_arg1_0 _lh_flattenS_arg2_0 =
  (_lh_flattenS_arg2_0 _lh_flattenS_arg1_0);;
let rec mkIndent_lh__d1 _lh_mkIndent_arg1_0 _lh_mkIndent_arg2_0 =
  (match _lh_mkIndent_arg1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_0
    | _ -> 
      (if (_lh_mkIndent_arg1_0 >= 8) then
        (`LH_C('|', ((mkIndent_lh__d1 (_lh_mkIndent_arg1_0 - 8)) _lh_mkIndent_arg2_0)))
      else
        (`LH_C(' ', ((mkIndent_lh__d1 (_lh_mkIndent_arg1_0 - 1)) _lh_mkIndent_arg2_0)))));;
let rec flatten_lh__d1 _lh_flatten_arg1_0 _lh_flatten_arg2_0 _lh_flatten_arg3_0 _lh_flatten_arg4_0 =
  (match _lh_flatten_arg3_0 with
    | `CNil -> 
      ((flattenS_lh__d1 _lh_flatten_arg2_0) _lh_flatten_arg4_0)
    | `CAppend(_lh_flatten_CAppend_0_0, _lh_flatten_CAppend_1_0) -> 
      ((((flatten_lh__d1 _lh_flatten_arg1_0) _lh_flatten_arg2_0) _lh_flatten_CAppend_0_0) (let rec _lh_flattenS_LH_C_1_0 = _lh_flatten_arg4_0 in
        (let rec _lh_flattenS_LH_C_0_0 = (let rec _lh_flattenS_LH_P2_1_0 = _lh_flatten_CAppend_1_0 in
          (let rec _lh_flattenS_LH_P2_0_0 = _lh_flatten_arg1_0 in
            (fun _lh_flattenS_LH_C_1_1 _lh_flattenS_arg1_2 -> 
              ((((flatten_lh__d1 _lh_flattenS_LH_P2_0_0) _lh_flattenS_arg1_2) _lh_flattenS_LH_P2_1_0) _lh_flattenS_LH_C_1_1)))) in
          (fun _lh_flattenS_arg1_3 -> 
            ((_lh_flattenS_LH_C_0_0 _lh_flattenS_LH_C_1_0) _lh_flattenS_arg1_3)))))
    | `CIndent(_lh_flatten_CIndent_0_0, _lh_flatten_CIndent_1_0) -> 
      ((((flatten_lh__d1 (_lh_flatten_CIndent_0_0 + _lh_flatten_arg1_0)) _lh_flatten_arg2_0) _lh_flatten_CIndent_1_0) _lh_flatten_arg4_0)
    | `CNewline -> 
      (`LH_C('|', ((flattenS_lh__d1 true) _lh_flatten_arg4_0)))
    | _ -> 
      (match _lh_flatten_arg2_0 with
        | false -> 
          (match _lh_flatten_arg3_0 with
            | `CStr(_lh_flatten_CStr_0_0) -> 
              ((mappend_lh__d1 _lh_flatten_CStr_0_0) ((flattenS_lh__d1 false) _lh_flatten_arg4_0))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | false -> 
                  (match _lh_flatten_arg3_0 with
                    | `CCh(_lh_flatten_CCh_0_0) -> 
                      (`LH_C(_lh_flatten_CCh_0_0, ((flattenS_lh__d1 false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CStr(_lh_flatten_CStr_0_1) -> 
                              ((mkIndent_lh__d1 _lh_flatten_arg1_0) ((mappend_lh__d1 _lh_flatten_CStr_0_1) ((flattenS_lh__d1 false) _lh_flatten_arg4_0)))
                            | _ -> 
                              (match _lh_flatten_arg2_0 with
                                | true -> 
                                  (match _lh_flatten_arg3_0 with
                                    | `CCh(_lh_flatten_CCh_0_1) -> 
                                      ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_1, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_2) -> 
                                  ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_2, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_2) -> 
                          ((mkIndent_lh__d1 _lh_flatten_arg1_0) ((mappend_lh__d1 _lh_flatten_CStr_0_2) ((flattenS_lh__d1 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_3) -> 
                                  ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_3, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_4) -> 
                              ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_4, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_0 with
            | false -> 
              (match _lh_flatten_arg3_0 with
                | `CCh(_lh_flatten_CCh_0_5) -> 
                  (`LH_C(_lh_flatten_CCh_0_5, ((flattenS_lh__d1 false) _lh_flatten_arg4_0)))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_3) -> 
                          ((mkIndent_lh__d1 _lh_flatten_arg1_0) ((mappend_lh__d1 _lh_flatten_CStr_0_3) ((flattenS_lh__d1 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_6) -> 
                                  ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_6, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_7) -> 
                              ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_7, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | true -> 
                  (match _lh_flatten_arg3_0 with
                    | `CStr(_lh_flatten_CStr_0_4) -> 
                      ((mkIndent_lh__d1 _lh_flatten_arg1_0) ((mappend_lh__d1 _lh_flatten_CStr_0_4) ((flattenS_lh__d1 false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_8) -> 
                              ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_8, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CCh(_lh_flatten_CCh_0_9) -> 
                          ((mkIndent_lh__d1 _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_9, ((flattenS_lh__d1 false) _lh_flatten_arg4_0))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec cShow_lh__d1 _lh_cShow_arg1_0 =
  ((((flatten_lh__d1 0) true) _lh_cShow_arg1_0) (fun _lh_flattenS_arg1_1 -> 
    (`LH_N)));;
let rec ppShow_lh__d1 _lh_ppShow_arg1_0 _lh_ppShow_arg2_0 =
  (let rec _lh_matchIdent_9 = ((_lh_ppShow_arg2_0 _lh_ppShow_arg1_0) false) in
    (match _lh_matchIdent_9 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_0, _lh_ppShow_MkPrettyRep_1_0, _lh_ppShow_MkPrettyRep_2_0, _lh_ppShow_MkPrettyRep_3_0) -> 
        (cShow_lh__d1 _lh_ppShow_MkPrettyRep_0_0)
      | _ -> 
        (failwith "error")));;
let rec testPretty_nofib_lh__d1 _lh_testPretty_nofib_arg1_0 =
  (let rec pretty_stuff_0 = (ppAboves_lh__d1 (`LH_C((ppBesides_lh__d1 (`LH_C((ppInt_lh__d1 (0 - 42)), (`LH_C((ppChar_lh__d1 '@'), (`LH_C((ppStr_lh__d2 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP_lh__d1, (`LH_C((((ppHang_lh__d1 (ppStr_lh__d3 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat_lh__d1 ((copy_lh__d1 50) (ppStr_lh__d1 (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend_lh__d1 ((ppShow_lh__d1 80) pretty_stuff_0)) (`LH_C('|', (`LH_N)))));;
end;;

