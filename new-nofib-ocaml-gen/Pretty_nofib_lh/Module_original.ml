
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec andL_lh _lh_andL_arg1_0 _lh_andL_arg2_0 =
  (match _lh_andL_arg1_0 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec cAppend_lh _lh_cAppend_arg1_0 _lh_cAppend_arg2_0 =
  (`CAppend(_lh_cAppend_arg1_0, _lh_cAppend_arg2_0));;
let rec cCh_lh _lh_cCh_arg1_0 =
  (`CCh(_lh_cCh_arg1_0));;
let rec cIndent_lh _lh_cIndent_arg1_0 _lh_cIndent_arg2_0 =
  (`CIndent(_lh_cIndent_arg1_0, _lh_cIndent_arg2_0));;
let rec cNL_lh =
  (`CNewline);;
let rec cNil_lh =
  (`CNil);;
let rec cStr_lh _lh_cStr_arg1_0 =
  (`CStr(_lh_cStr_arg1_0));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec foldr1_lh _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec length_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh t_0))
    | `LH_N -> 
      0);;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mkIndent_lh _lh_mkIndent_arg1_0 _lh_mkIndent_arg2_0 =
  (match _lh_mkIndent_arg1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_0
    | _ -> 
      (if (_lh_mkIndent_arg1_0 >= 8) then
        (`LH_C('|', ((mkIndent_lh (_lh_mkIndent_arg1_0 - 8)) _lh_mkIndent_arg2_0)))
      else
        (`LH_C(' ', ((mkIndent_lh (_lh_mkIndent_arg1_0 - 1)) _lh_mkIndent_arg2_0)))));;
let rec orL_lh _lh_orL_arg1_0 _lh_orL_arg2_0 =
  (match _lh_orL_arg1_0 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec cShow_lh _lh_cShow_arg1_0 =
  ((((flatten_lh 0) true) _lh_cShow_arg1_0) (`LH_N))
and flattenS_lh _lh_flattenS_arg1_0 _lh_flattenS_arg2_0 =
  (match _lh_flattenS_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_0, _lh_flattenS_LH_C_1_0) -> 
      (match _lh_flattenS_LH_C_0_0 with
        | `LH_P2(_lh_flattenS_LH_P2_0_0, _lh_flattenS_LH_P2_1_0) -> 
          ((((flatten_lh _lh_flattenS_LH_P2_0_0) _lh_flattenS_arg1_0) _lh_flattenS_LH_P2_1_0) _lh_flattenS_LH_C_1_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flatten_lh _lh_flatten_arg1_0 _lh_flatten_arg2_0 _lh_flatten_arg3_0 _lh_flatten_arg4_0 =
  (match _lh_flatten_arg3_0 with
    | `CNil -> 
      ((flattenS_lh _lh_flatten_arg2_0) _lh_flatten_arg4_0)
    | `CAppend(_lh_flatten_CAppend_0_0, _lh_flatten_CAppend_1_0) -> 
      ((((flatten_lh _lh_flatten_arg1_0) _lh_flatten_arg2_0) _lh_flatten_CAppend_0_0) (`LH_C((`LH_P2(_lh_flatten_arg1_0, _lh_flatten_CAppend_1_0)), _lh_flatten_arg4_0)))
    | `CIndent(_lh_flatten_CIndent_0_0, _lh_flatten_CIndent_1_0) -> 
      ((((flatten_lh (_lh_flatten_CIndent_0_0 + _lh_flatten_arg1_0)) _lh_flatten_arg2_0) _lh_flatten_CIndent_1_0) _lh_flatten_arg4_0)
    | `CNewline -> 
      (`LH_C('|', ((flattenS_lh true) _lh_flatten_arg4_0)))
    | _ -> 
      (match _lh_flatten_arg2_0 with
        | false -> 
          (match _lh_flatten_arg3_0 with
            | `CStr(_lh_flatten_CStr_0_0) -> 
              ((mappend_lh _lh_flatten_CStr_0_0) ((flattenS_lh false) _lh_flatten_arg4_0))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | false -> 
                  (match _lh_flatten_arg3_0 with
                    | `CCh(_lh_flatten_CCh_0_0) -> 
                      (`LH_C(_lh_flatten_CCh_0_0, ((flattenS_lh false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CStr(_lh_flatten_CStr_0_1) -> 
                              ((mkIndent_lh _lh_flatten_arg1_0) ((mappend_lh _lh_flatten_CStr_0_1) ((flattenS_lh false) _lh_flatten_arg4_0)))
                            | _ -> 
                              (match _lh_flatten_arg2_0 with
                                | true -> 
                                  (match _lh_flatten_arg3_0 with
                                    | `CCh(_lh_flatten_CCh_0_1) -> 
                                      ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_1, ((flattenS_lh false) _lh_flatten_arg4_0))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_2) -> 
                                  ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_2, ((flattenS_lh false) _lh_flatten_arg4_0))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_2) -> 
                          ((mkIndent_lh _lh_flatten_arg1_0) ((mappend_lh _lh_flatten_CStr_0_2) ((flattenS_lh false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_3) -> 
                                  ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_3, ((flattenS_lh false) _lh_flatten_arg4_0))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_4) -> 
                              ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_4, ((flattenS_lh false) _lh_flatten_arg4_0))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_0 with
            | false -> 
              (match _lh_flatten_arg3_0 with
                | `CCh(_lh_flatten_CCh_0_5) -> 
                  (`LH_C(_lh_flatten_CCh_0_5, ((flattenS_lh false) _lh_flatten_arg4_0)))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_3) -> 
                          ((mkIndent_lh _lh_flatten_arg1_0) ((mappend_lh _lh_flatten_CStr_0_3) ((flattenS_lh false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_6) -> 
                                  ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_6, ((flattenS_lh false) _lh_flatten_arg4_0))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_7) -> 
                              ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_7, ((flattenS_lh false) _lh_flatten_arg4_0))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | true -> 
                  (match _lh_flatten_arg3_0 with
                    | `CStr(_lh_flatten_CStr_0_4) -> 
                      ((mkIndent_lh _lh_flatten_arg1_0) ((mappend_lh _lh_flatten_CStr_0_4) ((flattenS_lh false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_8) -> 
                              ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_8, ((flattenS_lh false) _lh_flatten_arg4_0))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CCh(_lh_flatten_CCh_0_9) -> 
                          ((mkIndent_lh _lh_flatten_arg1_0) (`LH_C(_lh_flatten_CCh_0_9, ((flattenS_lh false) _lh_flatten_arg4_0))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))))
and pp'SP_lh _lh_pp'SP_arg1_0 =
  ((ppStr_lh (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_0)
and ppAbove_lh _lh_ppAbove_arg1_0 _lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0 _lh_ppAbove_arg4_0 =
  (let rec _lh_matchIdent_7 = ((_lh_ppAbove_arg1_0 _lh_ppAbove_arg3_0) true) in
    (match _lh_matchIdent_7 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_0, _lh_ppAbove_MkPrettyRep_1_0, _lh_ppAbove_MkPrettyRep_2_0, _lh_ppAbove_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_8 = ((_lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0) true) in
          (match _lh_matchIdent_8 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_1, _lh_ppAbove_MkPrettyRep_1_1, _lh_ppAbove_MkPrettyRep_2_1, _lh_ppAbove_MkPrettyRep_3_1) -> 
              (let rec nl_0 = (if ((orL_lh _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1) then
                cNil_lh
              else
                cNL_lh) in
                (`MkPrettyRep(((cAppend_lh _lh_ppAbove_MkPrettyRep_0_0) ((cAppend_lh nl_0) _lh_ppAbove_MkPrettyRep_0_1)), _lh_ppAbove_MkPrettyRep_1_1, ((andL_lh _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppAboves_lh _lh_ppAboves_arg1_0 =
  (match _lh_ppAboves_arg1_0 with
    | `LH_N -> 
      ppNil_lh
    | _ -> 
      ((foldr1_lh ppAbove_lh) _lh_ppAboves_arg1_0))
and ppBesideSP_lh _lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg2_0 _lh_ppBesideSP_arg3_0 _lh_ppBesideSP_arg4_0 =
  (let rec _lh_matchIdent_3 = ((_lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg3_0) false) in
    (match _lh_matchIdent_3 with
      | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_0, _lh_ppBesideSP_MkPrettyRep_1_0, _lh_ppBesideSP_MkPrettyRep_2_0, _lh_ppBesideSP_MkPrettyRep_3_0) -> 
        (let rec li_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
          0
        else
          (_lh_ppBesideSP_MkPrettyRep_1_0 + 1)) in
          (let rec _lh_matchIdent_4 = ((_lh_ppBesideSP_arg2_0 (_lh_ppBesideSP_arg3_0 - li_0)) false) in
            (match _lh_matchIdent_4 with
              | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_1, _lh_ppBesideSP_MkPrettyRep_1_1, _lh_ppBesideSP_MkPrettyRep_2_1, _lh_ppBesideSP_MkPrettyRep_3_1) -> 
                (let rec wi_0 = (if _lh_ppBesideSP_MkPrettyRep_2_0 then
                  0
                else
                  1) in
                  (let rec sp_0 = (if ((orL_lh _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1) then
                    cNil_lh
                  else
                    (cCh_lh ' ')) in
                    (`MkPrettyRep(((cAppend_lh _lh_ppBesideSP_MkPrettyRep_0_0) ((cAppend_lh sp_0) ((cIndent_lh li_0) _lh_ppBesideSP_MkPrettyRep_0_1))), (li_0 + _lh_ppBesideSP_MkPrettyRep_1_1), ((andL_lh _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1), ((andL_lh (_lh_ppBesideSP_arg3_0 >= wi_0)) ((andL_lh _lh_ppBesideSP_MkPrettyRep_3_0) _lh_ppBesideSP_MkPrettyRep_3_1))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")))
and ppBeside_lh _lh_ppBeside_arg1_0 _lh_ppBeside_arg2_0 _lh_ppBeside_arg3_0 _lh_ppBeside_arg4_0 =
  (let rec _lh_matchIdent_5 = ((_lh_ppBeside_arg1_0 _lh_ppBeside_arg3_0) false) in
    (match _lh_matchIdent_5 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_0, _lh_ppBeside_MkPrettyRep_1_0, _lh_ppBeside_MkPrettyRep_2_0, _lh_ppBeside_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_6 = ((_lh_ppBeside_arg2_0 (_lh_ppBeside_arg3_0 - _lh_ppBeside_MkPrettyRep_1_0)) false) in
          (match _lh_matchIdent_6 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_1, _lh_ppBeside_MkPrettyRep_1_1, _lh_ppBeside_MkPrettyRep_2_1, _lh_ppBeside_MkPrettyRep_3_1) -> 
              (`MkPrettyRep(((cAppend_lh _lh_ppBeside_MkPrettyRep_0_0) ((cIndent_lh _lh_ppBeside_MkPrettyRep_1_0) _lh_ppBeside_MkPrettyRep_0_1)), (_lh_ppBeside_MkPrettyRep_1_0 + _lh_ppBeside_MkPrettyRep_1_1), ((andL_lh _lh_ppBeside_MkPrettyRep_2_0) _lh_ppBeside_MkPrettyRep_2_1), ((andL_lh (_lh_ppBeside_arg3_0 >= 0)) ((andL_lh _lh_ppBeside_MkPrettyRep_3_0) _lh_ppBeside_MkPrettyRep_3_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppBesides_lh _lh_ppBesides_arg1_0 =
  (match _lh_ppBesides_arg1_0 with
    | `LH_N -> 
      ppNil_lh
    | _ -> 
      ((foldr1_lh ppBeside_lh) _lh_ppBesides_arg1_0))
and ppCat_lh _lh_ppCat_arg1_0 =
  (match _lh_ppCat_arg1_0 with
    | `LH_N -> 
      ppNil_lh
    | _ -> 
      ((foldr1_lh ppBesideSP_lh) _lh_ppCat_arg1_0))
and ppChar_lh _lh_ppChar_arg1_0 _lh_ppChar_arg2_0 _lh_ppChar_arg3_0 =
  (`MkPrettyRep((cCh_lh _lh_ppChar_arg1_0), 1, false, (_lh_ppChar_arg2_0 >= 1)))
and ppHang_lh _lh_ppHang_arg1_0 _lh_ppHang_arg2_0 _lh_ppHang_arg3_0 _lh_ppHang_arg4_0 _lh_ppHang_arg5_0 =
  (let rec _lh_matchIdent_0 = ((_lh_ppHang_arg1_0 _lh_ppHang_arg4_0) false) in
    (match _lh_matchIdent_0 with
      | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_0, _lh_ppHang_MkPrettyRep_1_0, _lh_ppHang_MkPrettyRep_2_0, _lh_ppHang_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_1 = ((_lh_ppHang_arg3_0 (_lh_ppHang_arg4_0 - (_lh_ppHang_MkPrettyRep_1_0 + 1))) false) in
          (match _lh_matchIdent_1 with
            | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_1, _lh_ppHang_MkPrettyRep_1_1, _lh_ppHang_MkPrettyRep_2_1, _lh_ppHang_MkPrettyRep_3_1) -> 
              (let rec _lh_matchIdent_2 = ((_lh_ppHang_arg3_0 (_lh_ppHang_arg4_0 - _lh_ppHang_arg2_0)) false) in
                (match _lh_matchIdent_2 with
                  | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_2, _lh_ppHang_MkPrettyRep_1_2, _lh_ppHang_MkPrettyRep_2_2, _lh_ppHang_MkPrettyRep_3_2) -> 
                    (if _lh_ppHang_MkPrettyRep_2_0 then
                      ((_lh_ppHang_arg3_0 _lh_ppHang_arg4_0) _lh_ppHang_arg5_0)
                    else
                      (if ((orL_lh (_lh_ppHang_MkPrettyRep_1_0 <= _lh_ppHang_arg2_0)) _lh_ppHang_MkPrettyRep_3_1) then
                        (`MkPrettyRep(((cAppend_lh ((cAppend_lh _lh_ppHang_MkPrettyRep_0_0) (cCh_lh ' '))) ((cIndent_lh (_lh_ppHang_MkPrettyRep_1_0 + 1)) _lh_ppHang_MkPrettyRep_0_1)), ((_lh_ppHang_MkPrettyRep_1_0 + 1) + _lh_ppHang_MkPrettyRep_1_1), false, ((andL_lh _lh_ppHang_MkPrettyRep_3_0) _lh_ppHang_MkPrettyRep_3_1)))
                      else
                        (`MkPrettyRep(((cAppend_lh _lh_ppHang_MkPrettyRep_0_0) ((cAppend_lh cNL_lh) ((cIndent_lh _lh_ppHang_arg2_0) _lh_ppHang_MkPrettyRep_0_2))), _lh_ppHang_MkPrettyRep_1_2, false, false))))
                  | _ -> 
                    (failwith "error")))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppInt_lh _lh_ppInt_arg1_0 =
  (ppStr_lh (string_of_int _lh_ppInt_arg1_0))
and ppNil_lh _lh_ppNil_arg1_0 _lh_ppNil_arg2_0 =
  (`MkPrettyRep(cNil_lh, 0, true, (_lh_ppNil_arg1_0 >= 0)))
and ppShow_lh _lh_ppShow_arg1_0 _lh_ppShow_arg2_0 =
  (let rec _lh_matchIdent_9 = ((_lh_ppShow_arg2_0 _lh_ppShow_arg1_0) false) in
    (match _lh_matchIdent_9 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_0, _lh_ppShow_MkPrettyRep_1_0, _lh_ppShow_MkPrettyRep_2_0, _lh_ppShow_MkPrettyRep_3_0) -> 
        (cShow_lh _lh_ppShow_MkPrettyRep_0_0)
      | _ -> 
        (failwith "error")))
and ppStr_lh _lh_ppStr_arg1_0 _lh_ppStr_arg2_0 _lh_ppStr_arg3_0 =
  (let rec ls_1 = (length_lh _lh_ppStr_arg1_0) in
    (`MkPrettyRep((cStr_lh _lh_ppStr_arg1_0), ls_1, false, (_lh_ppStr_arg2_0 >= ls_1))))
and testPretty_nofib_lh _lh_testPretty_nofib_arg1_0 =
  (let rec pretty_stuff_0 = (ppAboves_lh (`LH_C((ppBesides_lh (`LH_C((ppInt_lh (0 - 42)), (`LH_C((ppChar_lh '@'), (`LH_C((ppStr_lh (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP_lh, (`LH_C((((ppHang_lh (ppStr_lh (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat_lh ((copy_lh 50) (ppStr_lh (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend_lh ((ppShow_lh 80) pretty_stuff_0)) (`LH_C('|', (`LH_N)))));;
end;;

