(*
touch ./Pretty_nofib.mli && ocamlc ./Pretty_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Pretty_nofib.ml -o "./Pretty_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Pretty_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec andL_d0 _lh_andL_arg1_7 _lh_andL_arg2_7 =
  (match _lh_andL_arg1_7 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_7
    | _ -> 
      (failwith "error"));;
let rec andL_d1 _lh_andL_arg1_2 _lh_andL_arg2_2 =
  (match _lh_andL_arg1_2 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec andL_d2 _lh_andL_arg1_8 _lh_andL_arg2_8 =
  (match _lh_andL_arg1_8 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_8
    | _ -> 
      (failwith "error"));;
let rec andL_d3 _lh_andL_arg1_4 _lh_andL_arg2_4 =
  (match _lh_andL_arg1_4 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_4
    | _ -> 
      (failwith "error"));;
let rec andL_d4 _lh_andL_arg1_5 _lh_andL_arg2_5 =
  (match _lh_andL_arg1_5 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_5
    | _ -> 
      (failwith "error"));;
let rec andL_d5 _lh_andL_arg1_1 _lh_andL_arg2_1 =
  (match _lh_andL_arg1_1 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec andL_d6 _lh_andL_arg1_6 _lh_andL_arg2_6 =
  (match _lh_andL_arg1_6 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_6
    | _ -> 
      (failwith "error"));;
let rec andL_d7 _lh_andL_arg1_3 _lh_andL_arg2_3 =
  (match _lh_andL_arg1_3 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec cAppend_d0 _lh_cAppend_arg1_5 _lh_cAppend_arg2_5 =
  (`CAppend(_lh_cAppend_arg1_5, _lh_cAppend_arg2_5));;
let rec cAppend_d1 _lh_cAppend_arg1_8 _lh_cAppend_arg2_8 =
  (`CAppend(_lh_cAppend_arg1_8, _lh_cAppend_arg2_8));;
let rec cAppend_d2 _lh_cAppend_arg1_3 _lh_cAppend_arg2_3 =
  (`CAppend(_lh_cAppend_arg1_3, _lh_cAppend_arg2_3));;
let rec cAppend_d3 _lh_cAppend_arg1_7 _lh_cAppend_arg2_7 =
  (`CAppend(_lh_cAppend_arg1_7, _lh_cAppend_arg2_7));;
let rec cAppend_d4 _lh_cAppend_arg1_6 _lh_cAppend_arg2_6 =
  (`CAppend(_lh_cAppend_arg1_6, _lh_cAppend_arg2_6));;
let rec cAppend_d5 _lh_cAppend_arg1_2 _lh_cAppend_arg2_2 =
  (`CAppend(_lh_cAppend_arg1_2, _lh_cAppend_arg2_2));;
let rec cAppend_d6 _lh_cAppend_arg1_9 _lh_cAppend_arg2_9 =
  (`CAppend(_lh_cAppend_arg1_9, _lh_cAppend_arg2_9));;
let rec cAppend_d7 _lh_cAppend_arg1_4 _lh_cAppend_arg2_4 =
  (`CAppend(_lh_cAppend_arg1_4, _lh_cAppend_arg2_4));;
let rec cAppend_d8 _lh_cAppend_arg1_1 _lh_cAppend_arg2_1 =
  (`CAppend(_lh_cAppend_arg1_1, _lh_cAppend_arg2_1));;
let rec cCh_d0 _lh_cCh_arg1_2 =
  (`CCh(_lh_cCh_arg1_2));;
let rec cCh_d1 _lh_cCh_arg1_1 =
  (`CCh(_lh_cCh_arg1_1));;
let rec cCh_d2 _lh_cCh_arg1_3 =
  (`CCh(_lh_cCh_arg1_3));;
let rec cIndent_d0 _lh_cIndent_arg1_1 _lh_cIndent_arg2_1 =
  (`CIndent(_lh_cIndent_arg1_1, _lh_cIndent_arg2_1));;
let rec cIndent_d1 _lh_cIndent_arg1_4 _lh_cIndent_arg2_4 =
  (`CIndent(_lh_cIndent_arg1_4, _lh_cIndent_arg2_4));;
let rec cIndent_d2 _lh_cIndent_arg1_3 _lh_cIndent_arg2_3 =
  (`CIndent(_lh_cIndent_arg1_3, _lh_cIndent_arg2_3));;
let rec cIndent_d3 _lh_cIndent_arg1_2 _lh_cIndent_arg2_2 =
  (`CIndent(_lh_cIndent_arg1_2, _lh_cIndent_arg2_2));;
let rec cNL_d0 =
  (`CNewline);;
let rec cNL_d1 =
  (`CNewline);;
let rec cNil_d0 =
  (`CNil);;
let rec cNil_d1 =
  (`CNil);;
let rec cNil_d2 =
  (`CNil);;
let rec cNil_d3 =
  (`CNil);;
let rec cNil_d4 =
  (`CNil);;
let rec cStr_d0 _lh_cStr_arg1_4 =
  (`CStr(_lh_cStr_arg1_4));;
let rec cStr_d1 _lh_cStr_arg1_5 =
  (`CStr(_lh_cStr_arg1_5));;
let rec cStr_d2 _lh_cStr_arg1_2 =
  (`CStr(_lh_cStr_arg1_2));;
let rec cStr_d3 _lh_cStr_arg1_3 =
  (`CStr(_lh_cStr_arg1_3));;
let rec cStr_d4 _lh_cStr_arg1_1 =
  (`CStr(_lh_cStr_arg1_1));;
let rec copy_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec foldr1_d0 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (match _lh_foldr1_LH_C_1_3 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_3
        | _ -> 
          ((_lh_foldr1_arg1_3 _lh_foldr1_LH_C_0_3) ((foldr1_d0 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec foldr1_d1 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (match _lh_foldr1_LH_C_1_2 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_2
        | _ -> 
          ((_lh_foldr1_arg1_2 _lh_foldr1_LH_C_0_2) ((foldr1_d1 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec foldr1_d2 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1_d2 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec length_d0 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length_d0 t_2_2))
    | `LH_N -> 
      0);;
let rec length_d1 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_1, t_2_3) -> 
      (1 + (length_d1 t_2_3))
    | `LH_N -> 
      0);;
let rec length_d2 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_3, t_2_5) -> 
      (1 + (length_d2 t_2_5))
    | `LH_N -> 
      0);;
let rec length_d3 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length_d3 t_2_9))
    | `LH_N -> 
      0);;
let rec length_d4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_2, t_2_4) -> 
      (1 + (length_d4 t_2_4))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend_d0 t_2_7) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d1 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend_d1 t_2_8) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend_d2 t_2_6) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mkIndent_d0 _lh_mkIndent_arg1_2 _lh_mkIndent_arg2_2 =
  (match _lh_mkIndent_arg1_2 with
    | 0 -> 
      _lh_mkIndent_arg2_2
    | _ -> 
      (if (_lh_mkIndent_arg1_2 >= 8) then
        (`LH_C('|', ((mkIndent_d0 (_lh_mkIndent_arg1_2 - 8)) _lh_mkIndent_arg2_2)))
      else
        (`LH_C(' ', ((mkIndent_d0 (_lh_mkIndent_arg1_2 - 1)) _lh_mkIndent_arg2_2)))));;
let rec mkIndent_d1 _lh_mkIndent_arg1_1 _lh_mkIndent_arg2_1 =
  (match _lh_mkIndent_arg1_1 with
    | 0 -> 
      _lh_mkIndent_arg2_1
    | _ -> 
      (if (_lh_mkIndent_arg1_1 >= 8) then
        (`LH_C('|', ((mkIndent_d1 (_lh_mkIndent_arg1_1 - 8)) _lh_mkIndent_arg2_1)))
      else
        (`LH_C(' ', ((mkIndent_d1 (_lh_mkIndent_arg1_1 - 1)) _lh_mkIndent_arg2_1)))));;
let rec orL_d0 _lh_orL_arg1_2 _lh_orL_arg2_2 =
  (match _lh_orL_arg1_2 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec orL_d1 _lh_orL_arg1_3 _lh_orL_arg2_3 =
  (match _lh_orL_arg1_3 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec orL_d2 _lh_orL_arg1_1 _lh_orL_arg2_1 =
  (match _lh_orL_arg1_1 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec cShow_d0 _lh_cShow_arg1_1 =
  ((((flatten_d0 0) true) _lh_cShow_arg1_1) (`LH_N))
and flattenS_d0 _lh_flattenS_arg1_1 _lh_flattenS_arg2_1 =
  (match _lh_flattenS_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_1, _lh_flattenS_LH_C_1_1) -> 
      (match _lh_flattenS_LH_C_0_1 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1, _lh_flattenS_LH_P2_1_1) -> 
          ((((flatten_d0 _lh_flattenS_LH_P2_0_1) _lh_flattenS_arg1_1) _lh_flattenS_LH_P2_1_1) _lh_flattenS_LH_C_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1 _lh_flattenS_arg1_3 _lh_flattenS_arg2_3 =
  (match _lh_flattenS_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_3, _lh_flattenS_LH_C_1_3) -> 
      (match _lh_flattenS_LH_C_0_3 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3, _lh_flattenS_LH_P2_1_3) -> 
          ((((flatten_d0 _lh_flattenS_LH_P2_0_3) _lh_flattenS_arg1_3) _lh_flattenS_LH_P2_1_3) _lh_flattenS_LH_C_1_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d2 _lh_flattenS_arg1_2 _lh_flattenS_arg2_2 =
  (match _lh_flattenS_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_2, _lh_flattenS_LH_C_1_2) -> 
      (match _lh_flattenS_LH_C_0_2 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2, _lh_flattenS_LH_P2_1_2) -> 
          ((((flatten_d0 _lh_flattenS_LH_P2_0_2) _lh_flattenS_arg1_2) _lh_flattenS_LH_P2_1_2) _lh_flattenS_LH_C_1_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d3 _lh_flattenS_arg1_6 _lh_flattenS_arg2_6 =
  (match _lh_flattenS_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_6, _lh_flattenS_LH_C_1_6) -> 
      (match _lh_flattenS_LH_C_0_6 with
        | `LH_P2(_lh_flattenS_LH_P2_0_6, _lh_flattenS_LH_P2_1_6) -> 
          ((((flatten_d0 _lh_flattenS_LH_P2_0_6) _lh_flattenS_arg1_6) _lh_flattenS_LH_P2_1_6) _lh_flattenS_LH_C_1_6)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d4 _lh_flattenS_arg1_4 _lh_flattenS_arg2_4 =
  (match _lh_flattenS_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_4, _lh_flattenS_LH_C_1_4) -> 
      (match _lh_flattenS_LH_C_0_4 with
        | `LH_P2(_lh_flattenS_LH_P2_0_4, _lh_flattenS_LH_P2_1_4) -> 
          ((((flatten_d0 _lh_flattenS_LH_P2_0_4) _lh_flattenS_arg1_4) _lh_flattenS_LH_P2_1_4) _lh_flattenS_LH_C_1_4)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d5 _lh_flattenS_arg1_5 _lh_flattenS_arg2_5 =
  (match _lh_flattenS_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flattenS_LH_C_0_5, _lh_flattenS_LH_C_1_5) -> 
      (match _lh_flattenS_LH_C_0_5 with
        | `LH_P2(_lh_flattenS_LH_P2_0_5, _lh_flattenS_LH_P2_1_5) -> 
          ((((flatten_d0 _lh_flattenS_LH_P2_0_5) _lh_flattenS_arg1_5) _lh_flattenS_LH_P2_1_5) _lh_flattenS_LH_C_1_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flatten_d0 _lh_flatten_arg1_1 _lh_flatten_arg2_1 _lh_flatten_arg3_1 _lh_flatten_arg4_1 =
  (match _lh_flatten_arg3_1 with
    | `CNil -> 
      ((flattenS_d4 _lh_flatten_arg2_1) _lh_flatten_arg4_1)
    | `CAppend(_lh_flatten_CAppend_0_1, _lh_flatten_CAppend_1_1) -> 
      ((((flatten_d0 _lh_flatten_arg1_1) _lh_flatten_arg2_1) _lh_flatten_CAppend_0_1) (`LH_C((`LH_P2(_lh_flatten_arg1_1, _lh_flatten_CAppend_1_1)), _lh_flatten_arg4_1)))
    | `CIndent(_lh_flatten_CIndent_0_1, _lh_flatten_CIndent_1_1) -> 
      ((((flatten_d0 (_lh_flatten_CIndent_0_1 + _lh_flatten_arg1_1)) _lh_flatten_arg2_1) _lh_flatten_CIndent_1_1) _lh_flatten_arg4_1)
    | `CNewline -> 
      (`LH_C('|', ((flattenS_d5 true) _lh_flatten_arg4_1)))
    | _ -> 
      (match _lh_flatten_arg2_1 with
        | false -> 
          (match _lh_flatten_arg3_1 with
            | `CStr(_lh_flatten_CStr_0_5) -> 
              ((mappend_d2 _lh_flatten_CStr_0_5) ((flattenS_d3 false) _lh_flatten_arg4_1))
            | _ -> 
              (match _lh_flatten_arg2_1 with
                | false -> 
                  (match _lh_flatten_arg3_1 with
                    | `CCh(_lh_flatten_CCh_0_1_0) -> 
                      (`LH_C(_lh_flatten_CCh_0_1_0, ((flattenS_d2 false) _lh_flatten_arg4_1)))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CStr(_lh_flatten_CStr_0_6) -> 
                              ((mkIndent_d1 _lh_flatten_arg1_1) ((mappend_d1 _lh_flatten_CStr_0_6) ((flattenS_d1 false) _lh_flatten_arg4_1)))
                            | _ -> 
                              (match _lh_flatten_arg2_1 with
                                | true -> 
                                  (match _lh_flatten_arg3_1 with
                                    | `CCh(_lh_flatten_CCh_0_1_1) -> 
                                      ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_1, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_1 with
                            | true -> 
                              (match _lh_flatten_arg3_1 with
                                | `CCh(_lh_flatten_CCh_0_1_2) -> 
                                  ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_2, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_1 with
                    | true -> 
                      (match _lh_flatten_arg3_1 with
                        | `CStr(_lh_flatten_CStr_0_7) -> 
                          ((mkIndent_d1 _lh_flatten_arg1_1) ((mappend_d1 _lh_flatten_CStr_0_7) ((flattenS_d1 false) _lh_flatten_arg4_1)))
                        | _ -> 
                          (match _lh_flatten_arg2_1 with
                            | true -> 
                              (match _lh_flatten_arg3_1 with
                                | `CCh(_lh_flatten_CCh_0_1_3) -> 
                                  ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_3, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CCh(_lh_flatten_CCh_0_1_4) -> 
                              ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_4, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_1 with
            | false -> 
              (match _lh_flatten_arg3_1 with
                | `CCh(_lh_flatten_CCh_0_1_5) -> 
                  (`LH_C(_lh_flatten_CCh_0_1_5, ((flattenS_d2 false) _lh_flatten_arg4_1)))
                | _ -> 
                  (match _lh_flatten_arg2_1 with
                    | true -> 
                      (match _lh_flatten_arg3_1 with
                        | `CStr(_lh_flatten_CStr_0_8) -> 
                          ((mkIndent_d1 _lh_flatten_arg1_1) ((mappend_d1 _lh_flatten_CStr_0_8) ((flattenS_d1 false) _lh_flatten_arg4_1)))
                        | _ -> 
                          (match _lh_flatten_arg2_1 with
                            | true -> 
                              (match _lh_flatten_arg3_1 with
                                | `CCh(_lh_flatten_CCh_0_1_6) -> 
                                  ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_6, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CCh(_lh_flatten_CCh_0_1_7) -> 
                              ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_7, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_1 with
                | true -> 
                  (match _lh_flatten_arg3_1 with
                    | `CStr(_lh_flatten_CStr_0_9) -> 
                      ((mkIndent_d1 _lh_flatten_arg1_1) ((mappend_d1 _lh_flatten_CStr_0_9) ((flattenS_d1 false) _lh_flatten_arg4_1)))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CCh(_lh_flatten_CCh_0_1_8) -> 
                              ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_8, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_1 with
                    | true -> 
                      (match _lh_flatten_arg3_1 with
                        | `CCh(_lh_flatten_CCh_0_1_9) -> 
                          ((mkIndent_d0 _lh_flatten_arg1_1) (`LH_C(_lh_flatten_CCh_0_1_9, ((flattenS_d0 false) _lh_flatten_arg4_1))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))))
and pp'SP_d0 _lh_pp'SP_arg1_1 =
  ((ppStr_d0 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_1)
and ppAboves_d0 _lh_ppAboves_arg1_1 =
  (match _lh_ppAboves_arg1_1 with
    | `LH_N -> 
      ppNil_d0
    | _ -> 
      ((foldr1_d0 ppAbove_d0) _lh_ppAboves_arg1_1))
and ppAbove_d0 _lh_ppAbove_arg1_1 _lh_ppAbove_arg2_1 _lh_ppAbove_arg3_1 _lh_ppAbove_arg4_1 =
  (let rec _lh_matchIdent_1_7 = ((_lh_ppAbove_arg1_1 _lh_ppAbove_arg3_1) true) in
    (match _lh_matchIdent_1_7 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_2, _lh_ppAbove_MkPrettyRep_1_2, _lh_ppAbove_MkPrettyRep_2_2, _lh_ppAbove_MkPrettyRep_3_2) -> 
        (let rec _lh_matchIdent_1_8 = ((_lh_ppAbove_arg2_1 _lh_ppAbove_arg3_1) true) in
          (match _lh_matchIdent_1_8 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_3, _lh_ppAbove_MkPrettyRep_1_3, _lh_ppAbove_MkPrettyRep_2_3, _lh_ppAbove_MkPrettyRep_3_3) -> 
              (let rec nl_1 = (if ((orL_d0 _lh_ppAbove_MkPrettyRep_2_2) _lh_ppAbove_MkPrettyRep_2_3) then
                cNil_d0
              else
                cNL_d0) in
                (`MkPrettyRep(((cAppend_d0 _lh_ppAbove_MkPrettyRep_0_2) ((cAppend_d1 nl_1) _lh_ppAbove_MkPrettyRep_0_3)), _lh_ppAbove_MkPrettyRep_1_3, ((andL_d0 _lh_ppAbove_MkPrettyRep_2_2) _lh_ppAbove_MkPrettyRep_2_3), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppBesideSP_d0 _lh_ppBesideSP_arg1_1 _lh_ppBesideSP_arg2_1 _lh_ppBesideSP_arg3_1 _lh_ppBesideSP_arg4_1 =
  (let rec _lh_matchIdent_1_5 = ((_lh_ppBesideSP_arg1_1 _lh_ppBesideSP_arg3_1) false) in
    (match _lh_matchIdent_1_5 with
      | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_2, _lh_ppBesideSP_MkPrettyRep_1_2, _lh_ppBesideSP_MkPrettyRep_2_2, _lh_ppBesideSP_MkPrettyRep_3_2) -> 
        (let rec li_1 = (if _lh_ppBesideSP_MkPrettyRep_2_2 then
          0
        else
          (_lh_ppBesideSP_MkPrettyRep_1_2 + 1)) in
          (let rec _lh_matchIdent_1_6 = ((_lh_ppBesideSP_arg2_1 (_lh_ppBesideSP_arg3_1 - li_1)) false) in
            (match _lh_matchIdent_1_6 with
              | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_3, _lh_ppBesideSP_MkPrettyRep_1_3, _lh_ppBesideSP_MkPrettyRep_2_3, _lh_ppBesideSP_MkPrettyRep_3_3) -> 
                (let rec wi_1 = (if _lh_ppBesideSP_MkPrettyRep_2_2 then
                  0
                else
                  1) in
                  (let rec sp_1 = (if ((orL_d1 _lh_ppBesideSP_MkPrettyRep_2_2) _lh_ppBesideSP_MkPrettyRep_2_3) then
                    cNil_d3
                  else
                    (cCh_d0 ' ')) in
                    (`MkPrettyRep(((cAppend_d3 _lh_ppBesideSP_MkPrettyRep_0_2) ((cAppend_d4 sp_1) ((cIndent_d1 li_1) _lh_ppBesideSP_MkPrettyRep_0_3))), (li_1 + _lh_ppBesideSP_MkPrettyRep_1_3), ((andL_d4 _lh_ppBesideSP_MkPrettyRep_2_2) _lh_ppBesideSP_MkPrettyRep_2_3), ((andL_d5 (_lh_ppBesideSP_arg3_1 >= wi_1)) ((andL_d6 _lh_ppBesideSP_MkPrettyRep_3_2) _lh_ppBesideSP_MkPrettyRep_3_3))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")))
and ppBesides_d0 _lh_ppBesides_arg1_1 =
  (match _lh_ppBesides_arg1_1 with
    | `LH_N -> 
      ppNil_d1
    | _ -> 
      ((foldr1_d1 ppBeside_d0) _lh_ppBesides_arg1_1))
and ppBeside_d0 _lh_ppBeside_arg1_1 _lh_ppBeside_arg2_1 _lh_ppBeside_arg3_1 _lh_ppBeside_arg4_1 =
  (let rec _lh_matchIdent_2_0 = ((_lh_ppBeside_arg1_1 _lh_ppBeside_arg3_1) false) in
    (match _lh_matchIdent_2_0 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_2, _lh_ppBeside_MkPrettyRep_1_2, _lh_ppBeside_MkPrettyRep_2_2, _lh_ppBeside_MkPrettyRep_3_2) -> 
        (let rec _lh_matchIdent_2_1 = ((_lh_ppBeside_arg2_1 (_lh_ppBeside_arg3_1 - _lh_ppBeside_MkPrettyRep_1_2)) false) in
          (match _lh_matchIdent_2_1 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_3, _lh_ppBeside_MkPrettyRep_1_3, _lh_ppBeside_MkPrettyRep_2_3, _lh_ppBeside_MkPrettyRep_3_3) -> 
              (`MkPrettyRep(((cAppend_d2 _lh_ppBeside_MkPrettyRep_0_2) ((cIndent_d0 _lh_ppBeside_MkPrettyRep_1_2) _lh_ppBeside_MkPrettyRep_0_3)), (_lh_ppBeside_MkPrettyRep_1_2 + _lh_ppBeside_MkPrettyRep_1_3), ((andL_d1 _lh_ppBeside_MkPrettyRep_2_2) _lh_ppBeside_MkPrettyRep_2_3), ((andL_d2 (_lh_ppBeside_arg3_1 >= 0)) ((andL_d3 _lh_ppBeside_MkPrettyRep_3_2) _lh_ppBeside_MkPrettyRep_3_3))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppCat_d0 _lh_ppCat_arg1_1 =
  (match _lh_ppCat_arg1_1 with
    | `LH_N -> 
      ppNil_d2
    | _ -> 
      ((foldr1_d2 ppBesideSP_d0) _lh_ppCat_arg1_1))
and ppChar_d0 _lh_ppChar_arg1_1 _lh_ppChar_arg2_1 _lh_ppChar_arg3_1 =
  (`MkPrettyRep((cCh_d1 _lh_ppChar_arg1_1), 1, false, (_lh_ppChar_arg2_1 >= 1)))
and ppHang_d0 _lh_ppHang_arg1_1 _lh_ppHang_arg2_1 _lh_ppHang_arg3_1 _lh_ppHang_arg4_1 _lh_ppHang_arg5_1 =
  (let rec _lh_matchIdent_2_2 = ((_lh_ppHang_arg1_1 _lh_ppHang_arg4_1) false) in
    (match _lh_matchIdent_2_2 with
      | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_3, _lh_ppHang_MkPrettyRep_1_3, _lh_ppHang_MkPrettyRep_2_3, _lh_ppHang_MkPrettyRep_3_3) -> 
        (let rec _lh_matchIdent_2_3 = ((_lh_ppHang_arg3_1 (_lh_ppHang_arg4_1 - (_lh_ppHang_MkPrettyRep_1_3 + 1))) false) in
          (match _lh_matchIdent_2_3 with
            | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_4, _lh_ppHang_MkPrettyRep_1_4, _lh_ppHang_MkPrettyRep_2_4, _lh_ppHang_MkPrettyRep_3_4) -> 
              (let rec _lh_matchIdent_2_4 = ((_lh_ppHang_arg3_1 (_lh_ppHang_arg4_1 - _lh_ppHang_arg2_1)) false) in
                (match _lh_matchIdent_2_4 with
                  | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_5, _lh_ppHang_MkPrettyRep_1_5, _lh_ppHang_MkPrettyRep_2_5, _lh_ppHang_MkPrettyRep_3_5) -> 
                    (if _lh_ppHang_MkPrettyRep_2_3 then
                      ((_lh_ppHang_arg3_1 _lh_ppHang_arg4_1) _lh_ppHang_arg5_1)
                    else
                      (if ((orL_d2 (_lh_ppHang_MkPrettyRep_1_3 <= _lh_ppHang_arg2_1)) _lh_ppHang_MkPrettyRep_3_4) then
                        (`MkPrettyRep(((cAppend_d5 ((cAppend_d6 _lh_ppHang_MkPrettyRep_0_3) (cCh_d2 ' '))) ((cIndent_d2 (_lh_ppHang_MkPrettyRep_1_3 + 1)) _lh_ppHang_MkPrettyRep_0_4)), ((_lh_ppHang_MkPrettyRep_1_3 + 1) + _lh_ppHang_MkPrettyRep_1_4), false, ((andL_d7 _lh_ppHang_MkPrettyRep_3_3) _lh_ppHang_MkPrettyRep_3_4)))
                      else
                        (`MkPrettyRep(((cAppend_d7 _lh_ppHang_MkPrettyRep_0_3) ((cAppend_d8 cNL_d1) ((cIndent_d3 _lh_ppHang_arg2_1) _lh_ppHang_MkPrettyRep_0_5))), _lh_ppHang_MkPrettyRep_1_5, false, false))))
                  | _ -> 
                    (failwith "error")))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppInt_d0 _lh_ppInt_arg1_1 =
  (ppStr_d1 (string_of_int _lh_ppInt_arg1_1))
and ppNil_d0 _lh_ppNil_arg1_1 _lh_ppNil_arg2_1 =
  (`MkPrettyRep(cNil_d1, 0, true, (_lh_ppNil_arg1_1 >= 0)))
and ppNil_d1 _lh_ppNil_arg1_2 _lh_ppNil_arg2_2 =
  (`MkPrettyRep(cNil_d2, 0, true, (_lh_ppNil_arg1_2 >= 0)))
and ppNil_d2 _lh_ppNil_arg1_3 _lh_ppNil_arg2_3 =
  (`MkPrettyRep(cNil_d4, 0, true, (_lh_ppNil_arg1_3 >= 0)))
and ppShow_d0 _lh_ppShow_arg1_1 _lh_ppShow_arg2_1 =
  (let rec _lh_matchIdent_1_9 = ((_lh_ppShow_arg2_1 _lh_ppShow_arg1_1) false) in
    (match _lh_matchIdent_1_9 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_1, _lh_ppShow_MkPrettyRep_1_1, _lh_ppShow_MkPrettyRep_2_1, _lh_ppShow_MkPrettyRep_3_1) -> 
        (cShow_d0 _lh_ppShow_MkPrettyRep_0_1)
      | _ -> 
        (failwith "error")))
and ppStr_d0 _lh_ppStr_arg1_3 _lh_ppStr_arg2_3 _lh_ppStr_arg3_3 =
  (let rec ls_2_7 = (length_d0 _lh_ppStr_arg1_3) in
    (`MkPrettyRep((cStr_d0 _lh_ppStr_arg1_3), ls_2_7, false, (_lh_ppStr_arg2_3 >= ls_2_7))))
and ppStr_d1 _lh_ppStr_arg1_2 _lh_ppStr_arg2_2 _lh_ppStr_arg3_2 =
  (let rec ls_2_6 = (length_d1 _lh_ppStr_arg1_2) in
    (`MkPrettyRep((cStr_d1 _lh_ppStr_arg1_2), ls_2_6, false, (_lh_ppStr_arg2_2 >= ls_2_6))))
and ppStr_d2 _lh_ppStr_arg1_5 _lh_ppStr_arg2_5 _lh_ppStr_arg3_5 =
  (let rec ls_2_9 = (length_d2 _lh_ppStr_arg1_5) in
    (`MkPrettyRep((cStr_d2 _lh_ppStr_arg1_5), ls_2_9, false, (_lh_ppStr_arg2_5 >= ls_2_9))))
and ppStr_d3 _lh_ppStr_arg1_4 _lh_ppStr_arg2_4 _lh_ppStr_arg3_4 =
  (let rec ls_2_8 = (length_d3 _lh_ppStr_arg1_4) in
    (`MkPrettyRep((cStr_d3 _lh_ppStr_arg1_4), ls_2_8, false, (_lh_ppStr_arg2_4 >= ls_2_8))))
and ppStr_d4 _lh_ppStr_arg1_1 _lh_ppStr_arg2_1 _lh_ppStr_arg3_1 =
  (let rec ls_2_3 = (length_d4 _lh_ppStr_arg1_1) in
    (`MkPrettyRep((cStr_d4 _lh_ppStr_arg1_1), ls_2_3, false, (_lh_ppStr_arg2_1 >= ls_2_3))))
and testPretty_nofib_d0 _lh_testPretty_nofib_arg1_1 =
  (let rec pretty_stuff_1 = (ppAboves_d0 (`LH_C((ppBesides_d0 (`LH_C((ppInt_d0 (0 - 42)), (`LH_C((ppChar_d0 '@'), (`LH_C((ppStr_d4 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP_d0, (`LH_C((((ppHang_d0 (ppStr_d2 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat_d0 ((copy_d0 50) (ppStr_d3 (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend_d0 ((ppShow_d0 80) pretty_stuff_1)) (`LH_C('|', (`LH_N)))));;

(* lumberhack *)
let rec andL_d0_d0 _lh_andL_arg1_0 _lh_andL_arg2_0 =
  (match _lh_andL_arg1_0 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec andL_d1_d0 _lh_andL_arg1_6 _lh_andL_arg2_6 =
  (match _lh_andL_arg1_6 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_6
    | _ -> 
      (failwith "error"));;
let rec andL_d2_d0 _lh_andL_arg1_2 _lh_andL_arg2_2 =
  (match _lh_andL_arg1_2 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec andL_d3_d0 _lh_andL_arg1_3 _lh_andL_arg2_3 =
  (match _lh_andL_arg1_3 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec andL_d4_d0 _lh_andL_arg1_4 _lh_andL_arg2_4 =
  (match _lh_andL_arg1_4 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_4
    | _ -> 
      (failwith "error"));;
let rec andL_d5_d0 _lh_andL_arg1_5 _lh_andL_arg2_5 =
  (match _lh_andL_arg1_5 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_5
    | _ -> 
      (failwith "error"));;
let rec andL_d6_d0 _lh_andL_arg1_7 _lh_andL_arg2_7 =
  (match _lh_andL_arg1_7 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_7
    | _ -> 
      (failwith "error"));;
let rec andL_d7_d0 _lh_andL_arg1_1 _lh_andL_arg2_1 =
  (match _lh_andL_arg1_1 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec cAppend_d0_d0 _lh_cAppend_arg1_2 _lh_cAppend_arg2_2 =
  (`CAppend(_lh_cAppend_arg1_2, _lh_cAppend_arg2_2));;
let rec cAppend_d1_d0 _lh_cAppend_arg1_1 _lh_cAppend_arg2_1 =
  (`CAppend(_lh_cAppend_arg1_1, _lh_cAppend_arg2_1));;
let rec cAppend_d2_d0 _lh_cAppend_arg1_3 _lh_cAppend_arg2_3 =
  (`CAppend(_lh_cAppend_arg1_3, _lh_cAppend_arg2_3));;
let rec cAppend_d3_d0 _lh_cAppend_arg1_6 _lh_cAppend_arg2_6 =
  (`CAppend(_lh_cAppend_arg1_6, _lh_cAppend_arg2_6));;
let rec cAppend_d4_d0 _lh_cAppend_arg1_7 _lh_cAppend_arg2_7 =
  (`CAppend(_lh_cAppend_arg1_7, _lh_cAppend_arg2_7));;
let rec cAppend_d5_d0 _lh_cAppend_arg1_0 _lh_cAppend_arg2_0 =
  (`CAppend(_lh_cAppend_arg1_0, _lh_cAppend_arg2_0));;
let rec cAppend_d6_d0 _lh_cAppend_arg1_4 _lh_cAppend_arg2_4 =
  (`CAppend(_lh_cAppend_arg1_4, _lh_cAppend_arg2_4));;
let rec cAppend_d7_d0 _lh_cAppend_arg1_5 _lh_cAppend_arg2_5 =
  (`CAppend(_lh_cAppend_arg1_5, _lh_cAppend_arg2_5));;
let rec cAppend_d8_d0 _lh_cAppend_arg1_8 _lh_cAppend_arg2_8 =
  (`CAppend(_lh_cAppend_arg1_8, _lh_cAppend_arg2_8));;
let rec cCh_d0_d0 _lh_cCh_arg1_2 =
  (`CCh(_lh_cCh_arg1_2));;
let rec cCh_d1_d0 _lh_cCh_arg1_1 =
  (`CCh(_lh_cCh_arg1_1));;
let rec cCh_d2_d0 _lh_cCh_arg1_0 =
  (`CCh(_lh_cCh_arg1_0));;
let rec cIndent_d0_d0 _lh_cIndent_arg1_3 _lh_cIndent_arg2_3 =
  (`CIndent(_lh_cIndent_arg1_3, _lh_cIndent_arg2_3));;
let rec cIndent_d1_d0 _lh_cIndent_arg1_0 _lh_cIndent_arg2_0 =
  (`CIndent(_lh_cIndent_arg1_0, _lh_cIndent_arg2_0));;
let rec cIndent_d2_d0 _lh_cIndent_arg1_1 _lh_cIndent_arg2_1 =
  (`CIndent(_lh_cIndent_arg1_1, _lh_cIndent_arg2_1));;
let rec cIndent_d3_d0 _lh_cIndent_arg1_2 _lh_cIndent_arg2_2 =
  (`CIndent(_lh_cIndent_arg1_2, _lh_cIndent_arg2_2));;
let rec cNL_d0_d0 =
  (`CNewline);;
let rec cNL_d1_d0 =
  (`CNewline);;
let rec cNil_d0_d0 =
  (`CNil);;
let rec cNil_d1_d0 =
  (`CNil);;
let rec cNil_d2_d0 =
  (`CNil);;
let rec cNil_d3_d0 =
  (`CNil);;
let rec cNil_d4_d0 =
  (`CNil);;
let rec cStr_d0_d0 _lh_cStr_arg1_1 =
  (`CStr(_lh_cStr_arg1_1));;
let rec cStr_d1_d0 _lh_cStr_arg1_4 =
  (`CStr(_lh_cStr_arg1_4));;
let rec cStr_d2_d0 _lh_cStr_arg1_0 =
  (`CStr(_lh_cStr_arg1_0));;
let rec cStr_d3_d0 _lh_cStr_arg1_3 =
  (`CStr(_lh_cStr_arg1_3));;
let rec cStr_d4_d0 _lh_cStr_arg1_2 =
  (`CStr(_lh_cStr_arg1_2));;
let rec copy_d0_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_d0_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec foldr1_d0_d0 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (match _lh_foldr1_LH_C_1_2 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_2
        | _ -> 
          ((_lh_foldr1_arg1_2 _lh_foldr1_LH_C_0_2) ((foldr1_d0_d0 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec foldr1_d1_d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (match _lh_foldr1_LH_C_1_1 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_1
        | _ -> 
          ((_lh_foldr1_arg1_1 _lh_foldr1_LH_C_0_1) ((foldr1_d1_d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec foldr1_d2_d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_d2_d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec length_d0_d0 ls_2 =
  (match ls_2 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_d0_d0 t_3))
    | `LH_N -> 
      0);;
let rec length_d1_d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_3_7, t_3_7) -> 
      (1 + (length_d1_d0 t_3_7))
    | `LH_N -> 
      0);;
let rec length_d2_d0 ls_5 =
  (match ls_5 with
    | `LH_C(h_2_8, t_2_8) -> 
      (1 + (length_d2_d0 t_2_8))
    | `LH_N -> 
      0);;
let rec length_d3_d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_d3_d0 t_0))
    | `LH_N -> 
      0);;
let rec length_d4_d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_6, t_6) -> 
      (1 + (length_d4_d0 t_6))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0 xs_5 ys_5_7 =
  (xs_5 ys_5_7);;
let rec orL_d0_d0 _lh_orL_arg1_2 _lh_orL_arg2_2 =
  (match _lh_orL_arg1_2 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_2
    | _ -> 
      (failwith "error"));;
let rec orL_d1_d0 _lh_orL_arg1_0 _lh_orL_arg2_0 =
  (match _lh_orL_arg1_0 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_0
    | _ -> 
      (failwith "error"));;
let rec orL_d2_d0 _lh_orL_arg1_1 _lh_orL_arg2_1 =
  (match _lh_orL_arg1_1 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_1
    | _ -> 
      (failwith "error"));;
let rec ppHang_d0_d0 _lh_ppHang_arg1_0 _lh_ppHang_arg2_1 _lh_ppHang_arg3_1 _lh_ppHang_arg4_1 _lh_ppHang_arg5_1 =
  (let rec _lh_matchIdent_5 = ((_lh_ppHang_arg1_0 _lh_ppHang_arg4_1) false) in
    ((((_lh_matchIdent_5 _lh_ppHang_arg2_1) _lh_ppHang_arg3_1) _lh_ppHang_arg4_1) _lh_ppHang_arg5_1));;
let rec cShow_d0_d0 _lh_cShow_arg1_0 =
  ((((flatten_d0_d0 0) true) _lh_cShow_arg1_0) (`LH_N))
and flattenS_d0_d0 _lh_flattenS_arg1_1 _lh_flattenS_arg2_1 =
  (match _lh_flattenS_arg2_1 with
    | `LH_N -> 
      (fun ys_3 -> 
        ys_3)
    | `LH_C(_lh_flattenS_LH_C_0_1, _lh_flattenS_LH_C_1_1) -> 
      (match _lh_flattenS_LH_C_0_1 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1, _lh_flattenS_LH_P2_1_1) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1) _lh_flattenS_arg1_1) _lh_flattenS_LH_P2_1_1) _lh_flattenS_LH_C_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d1 _lh_flattenS_arg1_1_2 _lh_flattenS_arg2_1_2 =
  (match _lh_flattenS_arg2_1_2 with
    | `LH_N -> 
      (fun ys_5_3 -> 
        ys_5_3)
    | `LH_C(_lh_flattenS_LH_C_0_1_2, _lh_flattenS_LH_C_1_1_2) -> 
      (match _lh_flattenS_LH_C_0_1_2 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_2, _lh_flattenS_LH_P2_1_1_2) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_2) _lh_flattenS_arg1_1_2) _lh_flattenS_LH_P2_1_1_2) _lh_flattenS_LH_C_1_1_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d2 _lh_flattenS_arg1_1_0 _lh_flattenS_arg2_1_0 =
  (match _lh_flattenS_arg2_1_0 with
    | `LH_N -> 
      (fun ys_4_5 -> 
        ys_4_5)
    | `LH_C(_lh_flattenS_LH_C_0_1_0, _lh_flattenS_LH_C_1_1_0) -> 
      (match _lh_flattenS_LH_C_0_1_0 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_0, _lh_flattenS_LH_P2_1_1_0) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_0) _lh_flattenS_arg1_1_0) _lh_flattenS_LH_P2_1_1_0) _lh_flattenS_LH_C_1_1_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d3 _lh_flattenS_arg1_9 _lh_flattenS_arg2_9 =
  (match _lh_flattenS_arg2_9 with
    | `LH_N -> 
      (fun ys_4_2 -> 
        ys_4_2)
    | `LH_C(_lh_flattenS_LH_C_0_9, _lh_flattenS_LH_C_1_9) -> 
      (match _lh_flattenS_LH_C_0_9 with
        | `LH_P2(_lh_flattenS_LH_P2_0_9, _lh_flattenS_LH_P2_1_9) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_9) _lh_flattenS_arg1_9) _lh_flattenS_LH_P2_1_9) _lh_flattenS_LH_C_1_9)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d4 _lh_flattenS_arg1_7 _lh_flattenS_arg2_7 =
  (match _lh_flattenS_arg2_7 with
    | `LH_N -> 
      (fun ys_3_4 -> 
        ys_3_4)
    | `LH_C(_lh_flattenS_LH_C_0_7, _lh_flattenS_LH_C_1_7) -> 
      (match _lh_flattenS_LH_C_0_7 with
        | `LH_P2(_lh_flattenS_LH_P2_0_7, _lh_flattenS_LH_P2_1_7) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_7) _lh_flattenS_arg1_7) _lh_flattenS_LH_P2_1_7) _lh_flattenS_LH_C_1_7)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d5 _lh_flattenS_arg1_8 _lh_flattenS_arg2_8 =
  (match _lh_flattenS_arg2_8 with
    | `LH_N -> 
      (fun ys_3_7 -> 
        ys_3_7)
    | `LH_C(_lh_flattenS_LH_C_0_8, _lh_flattenS_LH_C_1_8) -> 
      (match _lh_flattenS_LH_C_0_8 with
        | `LH_P2(_lh_flattenS_LH_P2_0_8, _lh_flattenS_LH_P2_1_8) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_8) _lh_flattenS_arg1_8) _lh_flattenS_LH_P2_1_8) _lh_flattenS_LH_C_1_8)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d6 _lh_flattenS_arg1_1_5 _lh_flattenS_arg2_1_5 =
  (match _lh_flattenS_arg2_1_5 with
    | `LH_N -> 
      (fun ys_5_6 -> 
        ys_5_6)
    | `LH_C(_lh_flattenS_LH_C_0_1_5, _lh_flattenS_LH_C_1_1_5) -> 
      (match _lh_flattenS_LH_C_0_1_5 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_5, _lh_flattenS_LH_P2_1_1_5) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_5) _lh_flattenS_arg1_1_5) _lh_flattenS_LH_P2_1_1_5) _lh_flattenS_LH_C_1_1_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d7 _lh_flattenS_arg1_6 _lh_flattenS_arg2_6 =
  (match _lh_flattenS_arg2_6 with
    | `LH_N -> 
      (fun ys_1_4 -> 
        ys_1_4)
    | `LH_C(_lh_flattenS_LH_C_0_6, _lh_flattenS_LH_C_1_6) -> 
      (match _lh_flattenS_LH_C_0_6 with
        | `LH_P2(_lh_flattenS_LH_P2_0_6, _lh_flattenS_LH_P2_1_6) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_6) _lh_flattenS_arg1_6) _lh_flattenS_LH_P2_1_6) _lh_flattenS_LH_C_1_6)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d0 _lh_flattenS_arg1_1_3 _lh_flattenS_arg2_1_3 =
  (match _lh_flattenS_arg2_1_3 with
    | `LH_N -> 
      (fun ys_5_4 -> 
        ys_5_4)
    | `LH_C(_lh_flattenS_LH_C_0_1_3, _lh_flattenS_LH_C_1_1_3) -> 
      (match _lh_flattenS_LH_C_0_1_3 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_3, _lh_flattenS_LH_P2_1_1_3) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_3) _lh_flattenS_arg1_1_3) _lh_flattenS_LH_P2_1_1_3) _lh_flattenS_LH_C_1_1_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d1 _lh_flattenS_arg1_1_1 _lh_flattenS_arg2_1_1 =
  (match _lh_flattenS_arg2_1_1 with
    | `LH_N -> 
      (fun ys_5_0 -> 
        ys_5_0)
    | `LH_C(_lh_flattenS_LH_C_0_1_1, _lh_flattenS_LH_C_1_1_1) -> 
      (match _lh_flattenS_LH_C_0_1_1 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_1, _lh_flattenS_LH_P2_1_1_1) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_1) _lh_flattenS_arg1_1_1) _lh_flattenS_LH_P2_1_1_1) _lh_flattenS_LH_C_1_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d2 _lh_flattenS_arg1_1_4 _lh_flattenS_arg2_1_4 =
  (match _lh_flattenS_arg2_1_4 with
    | `LH_N -> 
      (fun ys_5_5 -> 
        ys_5_5)
    | `LH_C(_lh_flattenS_LH_C_0_1_4, _lh_flattenS_LH_C_1_1_4) -> 
      (match _lh_flattenS_LH_C_0_1_4 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_4, _lh_flattenS_LH_P2_1_1_4) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_4) _lh_flattenS_arg1_1_4) _lh_flattenS_LH_P2_1_1_4) _lh_flattenS_LH_C_1_1_4)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d3 _lh_flattenS_arg1_3 _lh_flattenS_arg2_3 =
  (match _lh_flattenS_arg2_3 with
    | `LH_N -> 
      (fun ys_7 -> 
        ys_7)
    | `LH_C(_lh_flattenS_LH_C_0_3, _lh_flattenS_LH_C_1_3) -> 
      (match _lh_flattenS_LH_C_0_3 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3, _lh_flattenS_LH_P2_1_3) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_3) _lh_flattenS_arg1_3) _lh_flattenS_LH_P2_1_3) _lh_flattenS_LH_C_1_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d2_d0 _lh_flattenS_arg1_0 _lh_flattenS_arg2_0 =
  (match _lh_flattenS_arg2_0 with
    | `LH_N -> 
      (fun ys_2 -> 
        ys_2)
    | `LH_C(_lh_flattenS_LH_C_0_0, _lh_flattenS_LH_C_1_0) -> 
      (match _lh_flattenS_LH_C_0_0 with
        | `LH_P2(_lh_flattenS_LH_P2_0_0, _lh_flattenS_LH_P2_1_0) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_0) _lh_flattenS_arg1_0) _lh_flattenS_LH_P2_1_0) _lh_flattenS_LH_C_1_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d2_d1 _lh_flattenS_arg1_1_6 _lh_flattenS_arg2_1_6 =
  (match _lh_flattenS_arg2_1_6 with
    | `LH_N -> 
      (fun ys_6_0 -> 
        ys_6_0)
    | `LH_C(_lh_flattenS_LH_C_0_1_6, _lh_flattenS_LH_C_1_1_6) -> 
      (match _lh_flattenS_LH_C_0_1_6 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_6, _lh_flattenS_LH_P2_1_1_6) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_1_6) _lh_flattenS_arg1_1_6) _lh_flattenS_LH_P2_1_1_6) _lh_flattenS_LH_C_1_1_6)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d3_d0 _lh_flattenS_arg1_5 _lh_flattenS_arg2_5 =
  (match _lh_flattenS_arg2_5 with
    | `LH_N -> 
      (fun ys_1_3 -> 
        ys_1_3)
    | `LH_C(_lh_flattenS_LH_C_0_5, _lh_flattenS_LH_C_1_5) -> 
      (match _lh_flattenS_LH_C_0_5 with
        | `LH_P2(_lh_flattenS_LH_P2_0_5, _lh_flattenS_LH_P2_1_5) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_5) _lh_flattenS_arg1_5) _lh_flattenS_LH_P2_1_5) _lh_flattenS_LH_C_1_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d4_d0 _lh_flattenS_arg1_2 _lh_flattenS_arg2_2 =
  (match _lh_flattenS_arg2_2 with
    | `LH_N -> 
      (fun ys_6 -> 
        ys_6)
    | `LH_C(_lh_flattenS_LH_C_0_2, _lh_flattenS_LH_C_1_2) -> 
      (match _lh_flattenS_LH_C_0_2 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2, _lh_flattenS_LH_P2_1_2) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_2) _lh_flattenS_arg1_2) _lh_flattenS_LH_P2_1_2) _lh_flattenS_LH_C_1_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d5_d0 _lh_flattenS_arg1_4 _lh_flattenS_arg2_4 =
  (match _lh_flattenS_arg2_4 with
    | `LH_N -> 
      (fun ys_8 -> 
        ys_8)
    | `LH_C(_lh_flattenS_LH_C_0_4, _lh_flattenS_LH_C_1_4) -> 
      (match _lh_flattenS_LH_C_0_4 with
        | `LH_P2(_lh_flattenS_LH_P2_0_4, _lh_flattenS_LH_P2_1_4) -> 
          ((((flatten_d0_d0 _lh_flattenS_LH_P2_0_4) _lh_flattenS_arg1_4) _lh_flattenS_LH_P2_1_4) _lh_flattenS_LH_C_1_4)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flatten_d0_d0 _lh_flatten_arg1_0 _lh_flatten_arg2_0 _lh_flatten_arg3_0 _lh_flatten_arg4_0 =
  (match _lh_flatten_arg3_0 with
    | `CNil -> 
      ((flattenS_d4_d0 _lh_flatten_arg2_0) _lh_flatten_arg4_0)
    | `CAppend(_lh_flatten_CAppend_0_0, _lh_flatten_CAppend_1_0) -> 
      ((((flatten_d0_d0 _lh_flatten_arg1_0) _lh_flatten_arg2_0) _lh_flatten_CAppend_0_0) (`LH_C((`LH_P2(_lh_flatten_arg1_0, _lh_flatten_CAppend_1_0)), _lh_flatten_arg4_0)))
    | `CIndent(_lh_flatten_CIndent_0_0, _lh_flatten_CIndent_1_0) -> 
      ((((flatten_d0_d0 (_lh_flatten_CIndent_0_0 + _lh_flatten_arg1_0)) _lh_flatten_arg2_0) _lh_flatten_CIndent_1_0) _lh_flatten_arg4_0)
    | `CNewline -> 
      (let rec h_1_7 = '|' in
        (let rec t_1_7 = ((flattenS_d5_d0 true) _lh_flatten_arg4_0) in
          (fun ys_2_1 -> 
            (`LH_C(h_1_7, ((mappend_d0_d0 t_1_7) ys_2_1))))))
    | _ -> 
      (match _lh_flatten_arg2_0 with
        | false -> 
          (match _lh_flatten_arg3_0 with
            | `CStr(_lh_flatten_CStr_0_0) -> 
              ((mappend_d2_d0 _lh_flatten_CStr_0_0) ((flattenS_d3_d0 false) _lh_flatten_arg4_0))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | false -> 
                  (match _lh_flatten_arg3_0 with
                    | `CCh(_lh_flatten_CCh_0_0) -> 
                      (let rec h_1_8 = _lh_flatten_CCh_0_0 in
                        (let rec t_1_8 = ((flattenS_d2_d0 false) _lh_flatten_arg4_0) in
                          (fun ys_2_2 -> 
                            (`LH_C(h_1_8, ((mappend_d0_d0 t_1_8) ys_2_2))))))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CStr(_lh_flatten_CStr_0_1) -> 
                              ((mkIndent_d1_d0 _lh_flatten_arg1_0) ((mappend_d1_d0 _lh_flatten_CStr_0_1) ((flattenS_d1_d0 false) _lh_flatten_arg4_0)))
                            | _ -> 
                              (match _lh_flatten_arg2_0 with
                                | true -> 
                                  (match _lh_flatten_arg3_0 with
                                    | `CCh(_lh_flatten_CCh_0_1) -> 
                                      ((mkIndent_d0_d0 _lh_flatten_arg1_0) (let rec h_1_9 = _lh_flatten_CCh_0_1 in
                                        (let rec t_1_9 = ((flattenS_d0_d0 false) _lh_flatten_arg4_0) in
                                          (fun ys_2_3 -> 
                                            (`LH_C(h_1_9, ((mappend_d0_d0 t_1_9) ys_2_3)))))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_2) -> 
                                  ((mkIndent_d0_d1 _lh_flatten_arg1_0) (let rec h_2_0 = _lh_flatten_CCh_0_2 in
                                    (let rec t_2_0 = ((flattenS_d0_d1 false) _lh_flatten_arg4_0) in
                                      (fun ys_2_4 -> 
                                        (`LH_C(h_2_0, ((mappend_d0_d0 t_2_0) ys_2_4)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_2) -> 
                          ((mkIndent_d1_d1 _lh_flatten_arg1_0) ((mappend_d1_d1 _lh_flatten_CStr_0_2) ((flattenS_d1_d1 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_3) -> 
                                  ((mkIndent_d0_d2 _lh_flatten_arg1_0) (let rec h_2_1 = _lh_flatten_CCh_0_3 in
                                    (let rec t_2_1 = ((flattenS_d0_d2 false) _lh_flatten_arg4_0) in
                                      (fun ys_2_5 -> 
                                        (`LH_C(h_2_1, ((mappend_d0_d0 t_2_1) ys_2_5)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_4) -> 
                              ((mkIndent_d0_d3 _lh_flatten_arg1_0) (let rec h_2_2 = _lh_flatten_CCh_0_4 in
                                (let rec t_2_2 = ((flattenS_d0_d3 false) _lh_flatten_arg4_0) in
                                  (fun ys_2_6 -> 
                                    (`LH_C(h_2_2, ((mappend_d0_d0 t_2_2) ys_2_6)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_0 with
            | false -> 
              (match _lh_flatten_arg3_0 with
                | `CCh(_lh_flatten_CCh_0_5) -> 
                  (let rec h_2_3 = _lh_flatten_CCh_0_5 in
                    (let rec t_2_3 = ((flattenS_d2_d1 false) _lh_flatten_arg4_0) in
                      (fun ys_2_7 -> 
                        (`LH_C(h_2_3, ((mappend_d0_d0 t_2_3) ys_2_7))))))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CStr(_lh_flatten_CStr_0_3) -> 
                          ((mkIndent_d1_d2 _lh_flatten_arg1_0) ((mappend_d1_d2 _lh_flatten_CStr_0_3) ((flattenS_d1_d2 false) _lh_flatten_arg4_0)))
                        | _ -> 
                          (match _lh_flatten_arg2_0 with
                            | true -> 
                              (match _lh_flatten_arg3_0 with
                                | `CCh(_lh_flatten_CCh_0_6) -> 
                                  ((mkIndent_d0_d4 _lh_flatten_arg1_0) (let rec h_2_4 = _lh_flatten_CCh_0_6 in
                                    (let rec t_2_4 = ((flattenS_d0_d4 false) _lh_flatten_arg4_0) in
                                      (fun ys_2_8 -> 
                                        (`LH_C(h_2_4, ((mappend_d0_d0 t_2_4) ys_2_8)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_7) -> 
                              ((mkIndent_d0_d5 _lh_flatten_arg1_0) (let rec h_2_5 = _lh_flatten_CCh_0_7 in
                                (let rec t_2_5 = ((flattenS_d0_d5 false) _lh_flatten_arg4_0) in
                                  (fun ys_2_9 -> 
                                    (`LH_C(h_2_5, ((mappend_d0_d0 t_2_5) ys_2_9)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_0 with
                | true -> 
                  (match _lh_flatten_arg3_0 with
                    | `CStr(_lh_flatten_CStr_0_4) -> 
                      ((mkIndent_d1_d3 _lh_flatten_arg1_0) ((mappend_d1_d3 _lh_flatten_CStr_0_4) ((flattenS_d1_d3 false) _lh_flatten_arg4_0)))
                    | _ -> 
                      (match _lh_flatten_arg2_0 with
                        | true -> 
                          (match _lh_flatten_arg3_0 with
                            | `CCh(_lh_flatten_CCh_0_8) -> 
                              ((mkIndent_d0_d6 _lh_flatten_arg1_0) (let rec h_2_6 = _lh_flatten_CCh_0_8 in
                                (let rec t_2_6 = ((flattenS_d0_d6 false) _lh_flatten_arg4_0) in
                                  (fun ys_3_0 -> 
                                    (`LH_C(h_2_6, ((mappend_d0_d0 t_2_6) ys_3_0)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_0 with
                    | true -> 
                      (match _lh_flatten_arg3_0 with
                        | `CCh(_lh_flatten_CCh_0_9) -> 
                          ((mkIndent_d0_d7 _lh_flatten_arg1_0) (let rec h_2_7 = _lh_flatten_CCh_0_9 in
                            (let rec t_2_7 = ((flattenS_d0_d7 false) _lh_flatten_arg4_0) in
                              (fun ys_3_1 -> 
                                (`LH_C(h_2_7, ((mappend_d0_d0 t_2_7) ys_3_1)))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))))
and mappend_d1_d0 xs_1 ys_1_5 =
  (match xs_1 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec h_1_2 = h_1_1 in
        (let rec t_1_2 = ((mappend_d1_d0 t_1_1) ys_1_5) in
          (fun ys_1_6 -> 
            (`LH_C(h_1_2, ((mappend_d0_d0 t_1_2) ys_1_6))))))
    | `LH_N -> 
      ys_1_5)
and mappend_d1_d1 xs_4 ys_4_6 =
  (match xs_4 with
    | `LH_C(h_4_0, t_4_0) -> 
      (let rec h_4_1 = h_4_0 in
        (let rec t_4_1 = ((mappend_d1_d1 t_4_0) ys_4_6) in
          (fun ys_4_7 -> 
            (`LH_C(h_4_1, ((mappend_d0_d0 t_4_1) ys_4_7))))))
    | `LH_N -> 
      ys_4_6)
and mappend_d1_d2 xs_3 ys_3_2 =
  (match xs_3 with
    | `LH_C(h_2_9, t_2_9) -> 
      (let rec h_3_0 = h_2_9 in
        (let rec t_3_0 = ((mappend_d1_d2 t_2_9) ys_3_2) in
          (fun ys_3_3 -> 
            (`LH_C(h_3_0, ((mappend_d0_d0 t_3_0) ys_3_3))))))
    | `LH_N -> 
      ys_3_2)
and mappend_d1_d3 xs_2 ys_1_7 =
  (match xs_2 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec h_1_4 = h_1_3 in
        (let rec t_1_4 = ((mappend_d1_d3 t_1_3) ys_1_7) in
          (fun ys_1_8 -> 
            (`LH_C(h_1_4, ((mappend_d0_d0 t_1_4) ys_1_8))))))
    | `LH_N -> 
      ys_1_7)
and mappend_d2_d0 xs_0 ys_9 =
  (match xs_0 with
    | `LH_C(h_7, t_7) -> 
      (let rec h_8 = h_7 in
        (let rec t_8 = ((mappend_d2_d0 t_7) ys_9) in
          (fun ys_1_0 -> 
            (`LH_C(h_8, ((mappend_d0_d0 t_8) ys_1_0))))))
    | `LH_N -> 
      ys_9)
and mkIndent_d0_d0 _lh_mkIndent_arg1_4 _lh_mkIndent_arg2_4 =
  (match _lh_mkIndent_arg1_4 with
    | 0 -> 
      _lh_mkIndent_arg2_4
    | _ -> 
      (if (_lh_mkIndent_arg1_4 >= 8) then
        (let rec h_3_1 = '|' in
          (let rec t_3_1 = ((mkIndent_d0_d0 (_lh_mkIndent_arg1_4 - 8)) _lh_mkIndent_arg2_4) in
            (fun ys_3_5 -> 
              (`LH_C(h_3_1, ((mappend_d0_d0 t_3_1) ys_3_5))))))
      else
        (let rec h_3_2 = ' ' in
          (let rec t_3_2 = ((mkIndent_d0_d0 (_lh_mkIndent_arg1_4 - 1)) _lh_mkIndent_arg2_4) in
            (fun ys_3_6 -> 
              (`LH_C(h_3_2, ((mappend_d0_d0 t_3_2) ys_3_6))))))))
and mkIndent_d0_d1 _lh_mkIndent_arg1_5 _lh_mkIndent_arg2_5 =
  (match _lh_mkIndent_arg1_5 with
    | 0 -> 
      _lh_mkIndent_arg2_5
    | _ -> 
      (if (_lh_mkIndent_arg1_5 >= 8) then
        (let rec h_3_3 = '|' in
          (let rec t_3_3 = ((mkIndent_d0_d1 (_lh_mkIndent_arg1_5 - 8)) _lh_mkIndent_arg2_5) in
            (fun ys_3_8 -> 
              (`LH_C(h_3_3, ((mappend_d0_d0 t_3_3) ys_3_8))))))
      else
        (let rec h_3_4 = ' ' in
          (let rec t_3_4 = ((mkIndent_d0_d1 (_lh_mkIndent_arg1_5 - 1)) _lh_mkIndent_arg2_5) in
            (fun ys_3_9 -> 
              (`LH_C(h_3_4, ((mappend_d0_d0 t_3_4) ys_3_9))))))))
and mkIndent_d0_d2 _lh_mkIndent_arg1_3 _lh_mkIndent_arg2_3 =
  (match _lh_mkIndent_arg1_3 with
    | 0 -> 
      _lh_mkIndent_arg2_3
    | _ -> 
      (if (_lh_mkIndent_arg1_3 >= 8) then
        (let rec h_1_5 = '|' in
          (let rec t_1_5 = ((mkIndent_d0_d2 (_lh_mkIndent_arg1_3 - 8)) _lh_mkIndent_arg2_3) in
            (fun ys_1_9 -> 
              (`LH_C(h_1_5, ((mappend_d0_d0 t_1_5) ys_1_9))))))
      else
        (let rec h_1_6 = ' ' in
          (let rec t_1_6 = ((mkIndent_d0_d2 (_lh_mkIndent_arg1_3 - 1)) _lh_mkIndent_arg2_3) in
            (fun ys_2_0 -> 
              (`LH_C(h_1_6, ((mappend_d0_d0 t_1_6) ys_2_0))))))))
and mkIndent_d0_d3 _lh_mkIndent_arg1_9 _lh_mkIndent_arg2_9 =
  (match _lh_mkIndent_arg1_9 with
    | 0 -> 
      _lh_mkIndent_arg2_9
    | _ -> 
      (if (_lh_mkIndent_arg1_9 >= 8) then
        (let rec h_4_4 = '|' in
          (let rec t_4_4 = ((mkIndent_d0_d3 (_lh_mkIndent_arg1_9 - 8)) _lh_mkIndent_arg2_9) in
            (fun ys_5_1 -> 
              (`LH_C(h_4_4, ((mappend_d0_d0 t_4_4) ys_5_1))))))
      else
        (let rec h_4_5 = ' ' in
          (let rec t_4_5 = ((mkIndent_d0_d3 (_lh_mkIndent_arg1_9 - 1)) _lh_mkIndent_arg2_9) in
            (fun ys_5_2 -> 
              (`LH_C(h_4_5, ((mappend_d0_d0 t_4_5) ys_5_2))))))))
and mkIndent_d0_d4 _lh_mkIndent_arg1_2 _lh_mkIndent_arg2_2 =
  (match _lh_mkIndent_arg1_2 with
    | 0 -> 
      _lh_mkIndent_arg2_2
    | _ -> 
      (if (_lh_mkIndent_arg1_2 >= 8) then
        (let rec h_9 = '|' in
          (let rec t_9 = ((mkIndent_d0_d4 (_lh_mkIndent_arg1_2 - 8)) _lh_mkIndent_arg2_2) in
            (fun ys_1_1 -> 
              (`LH_C(h_9, ((mappend_d0_d0 t_9) ys_1_1))))))
      else
        (let rec h_1_0 = ' ' in
          (let rec t_1_0 = ((mkIndent_d0_d4 (_lh_mkIndent_arg1_2 - 1)) _lh_mkIndent_arg2_2) in
            (fun ys_1_2 -> 
              (`LH_C(h_1_0, ((mappend_d0_d0 t_1_0) ys_1_2))))))))
and mkIndent_d0_d5 _lh_mkIndent_arg1_1 _lh_mkIndent_arg2_1 =
  (match _lh_mkIndent_arg1_1 with
    | 0 -> 
      _lh_mkIndent_arg2_1
    | _ -> 
      (if (_lh_mkIndent_arg1_1 >= 8) then
        (let rec h_4 = '|' in
          (let rec t_4 = ((mkIndent_d0_d5 (_lh_mkIndent_arg1_1 - 8)) _lh_mkIndent_arg2_1) in
            (fun ys_4 -> 
              (`LH_C(h_4, ((mappend_d0_d0 t_4) ys_4))))))
      else
        (let rec h_5 = ' ' in
          (let rec t_5 = ((mkIndent_d0_d5 (_lh_mkIndent_arg1_1 - 1)) _lh_mkIndent_arg2_1) in
            (fun ys_5 -> 
              (`LH_C(h_5, ((mappend_d0_d0 t_5) ys_5))))))))
and mkIndent_d0_d6 _lh_mkIndent_arg1_1_1 _lh_mkIndent_arg2_1_1 =
  (match _lh_mkIndent_arg1_1_1 with
    | 0 -> 
      _lh_mkIndent_arg2_1_1
    | _ -> 
      (if (_lh_mkIndent_arg1_1_1 >= 8) then
        (let rec h_4_8 = '|' in
          (let rec t_4_8 = ((mkIndent_d0_d6 (_lh_mkIndent_arg1_1_1 - 8)) _lh_mkIndent_arg2_1_1) in
            (fun ys_6_1 -> 
              (`LH_C(h_4_8, ((mappend_d0_d0 t_4_8) ys_6_1))))))
      else
        (let rec h_4_9 = ' ' in
          (let rec t_4_9 = ((mkIndent_d0_d6 (_lh_mkIndent_arg1_1_1 - 1)) _lh_mkIndent_arg2_1_1) in
            (fun ys_6_2 -> 
              (`LH_C(h_4_9, ((mappend_d0_d0 t_4_9) ys_6_2))))))))
and mkIndent_d0_d7 _lh_mkIndent_arg1_0 _lh_mkIndent_arg2_0 =
  (match _lh_mkIndent_arg1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_0
    | _ -> 
      (if (_lh_mkIndent_arg1_0 >= 8) then
        (let rec h_1 = '|' in
          (let rec t_1 = ((mkIndent_d0_d7 (_lh_mkIndent_arg1_0 - 8)) _lh_mkIndent_arg2_0) in
            (fun ys_0 -> 
              (`LH_C(h_1, ((mappend_d0_d0 t_1) ys_0))))))
      else
        (let rec h_2 = ' ' in
          (let rec t_2 = ((mkIndent_d0_d7 (_lh_mkIndent_arg1_0 - 1)) _lh_mkIndent_arg2_0) in
            (fun ys_1 -> 
              (`LH_C(h_2, ((mappend_d0_d0 t_2) ys_1))))))))
and mkIndent_d1_d0 _lh_mkIndent_arg1_1_0 _lh_mkIndent_arg2_1_0 =
  (match _lh_mkIndent_arg1_1_0 with
    | 0 -> 
      _lh_mkIndent_arg2_1_0
    | _ -> 
      (if (_lh_mkIndent_arg1_1_0 >= 8) then
        (let rec h_4_6 = '|' in
          (let rec t_4_6 = ((mkIndent_d1_d0 (_lh_mkIndent_arg1_1_0 - 8)) _lh_mkIndent_arg2_1_0) in
            (fun ys_5_8 -> 
              (`LH_C(h_4_6, ((mappend_d0_d0 t_4_6) ys_5_8))))))
      else
        (let rec h_4_7 = ' ' in
          (let rec t_4_7 = ((mkIndent_d1_d0 (_lh_mkIndent_arg1_1_0 - 1)) _lh_mkIndent_arg2_1_0) in
            (fun ys_5_9 -> 
              (`LH_C(h_4_7, ((mappend_d0_d0 t_4_7) ys_5_9))))))))
and mkIndent_d1_d1 _lh_mkIndent_arg1_6 _lh_mkIndent_arg2_6 =
  (match _lh_mkIndent_arg1_6 with
    | 0 -> 
      _lh_mkIndent_arg2_6
    | _ -> 
      (if (_lh_mkIndent_arg1_6 >= 8) then
        (let rec h_3_5 = '|' in
          (let rec t_3_5 = ((mkIndent_d1_d1 (_lh_mkIndent_arg1_6 - 8)) _lh_mkIndent_arg2_6) in
            (fun ys_4_0 -> 
              (`LH_C(h_3_5, ((mappend_d0_d0 t_3_5) ys_4_0))))))
      else
        (let rec h_3_6 = ' ' in
          (let rec t_3_6 = ((mkIndent_d1_d1 (_lh_mkIndent_arg1_6 - 1)) _lh_mkIndent_arg2_6) in
            (fun ys_4_1 -> 
              (`LH_C(h_3_6, ((mappend_d0_d0 t_3_6) ys_4_1))))))))
and mkIndent_d1_d2 _lh_mkIndent_arg1_8 _lh_mkIndent_arg2_8 =
  (match _lh_mkIndent_arg1_8 with
    | 0 -> 
      _lh_mkIndent_arg2_8
    | _ -> 
      (if (_lh_mkIndent_arg1_8 >= 8) then
        (let rec h_4_2 = '|' in
          (let rec t_4_2 = ((mkIndent_d1_d2 (_lh_mkIndent_arg1_8 - 8)) _lh_mkIndent_arg2_8) in
            (fun ys_4_8 -> 
              (`LH_C(h_4_2, ((mappend_d0_d0 t_4_2) ys_4_8))))))
      else
        (let rec h_4_3 = ' ' in
          (let rec t_4_3 = ((mkIndent_d1_d2 (_lh_mkIndent_arg1_8 - 1)) _lh_mkIndent_arg2_8) in
            (fun ys_4_9 -> 
              (`LH_C(h_4_3, ((mappend_d0_d0 t_4_3) ys_4_9))))))))
and mkIndent_d1_d3 _lh_mkIndent_arg1_7 _lh_mkIndent_arg2_7 =
  (match _lh_mkIndent_arg1_7 with
    | 0 -> 
      _lh_mkIndent_arg2_7
    | _ -> 
      (if (_lh_mkIndent_arg1_7 >= 8) then
        (let rec h_3_8 = '|' in
          (let rec t_3_8 = ((mkIndent_d1_d3 (_lh_mkIndent_arg1_7 - 8)) _lh_mkIndent_arg2_7) in
            (fun ys_4_3 -> 
              (`LH_C(h_3_8, ((mappend_d0_d0 t_3_8) ys_4_3))))))
      else
        (let rec h_3_9 = ' ' in
          (let rec t_3_9 = ((mkIndent_d1_d3 (_lh_mkIndent_arg1_7 - 1)) _lh_mkIndent_arg2_7) in
            (fun ys_4_4 -> 
              (`LH_C(h_3_9, ((mappend_d0_d0 t_3_9) ys_4_4))))))))
and pp'SP_d0_d0 _lh_pp'SP_arg1_0 =
  ((ppStr_d0_d0 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_0)
and ppAboves_d0_d0 _lh_ppAboves_arg1_0 =
  (match _lh_ppAboves_arg1_0 with
    | `LH_N -> 
      ppNil_d0_d0
    | _ -> 
      ((foldr1_d0_d0 ppAbove_d0_d0) _lh_ppAboves_arg1_0))
and ppAbove_d0_d0 _lh_ppAbove_arg1_0 _lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0 _lh_ppAbove_arg4_0 =
  (let rec _lh_matchIdent_6 = ((_lh_ppAbove_arg1_0 _lh_ppAbove_arg3_0) true) in
    (match _lh_matchIdent_6 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_0, _lh_ppAbove_MkPrettyRep_1_0, _lh_ppAbove_MkPrettyRep_2_0, _lh_ppAbove_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_7 = ((_lh_ppAbove_arg2_0 _lh_ppAbove_arg3_0) true) in
          (match _lh_matchIdent_7 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_1, _lh_ppAbove_MkPrettyRep_1_1, _lh_ppAbove_MkPrettyRep_2_1, _lh_ppAbove_MkPrettyRep_3_1) -> 
              (let rec nl_0 = (if ((orL_d0_d0 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1) then
                cNil_d0_d0
              else
                cNL_d0_d0) in
                (`MkPrettyRep(((cAppend_d0_d0 _lh_ppAbove_MkPrettyRep_0_0) ((cAppend_d1_d0 nl_0) _lh_ppAbove_MkPrettyRep_0_1)), _lh_ppAbove_MkPrettyRep_1_1, ((andL_d0_d0 _lh_ppAbove_MkPrettyRep_2_0) _lh_ppAbove_MkPrettyRep_2_1), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppBesideSP_d0_d0 _lh_ppBesideSP_arg1_0 _lh_ppBesideSP_arg2_0 _lh_ppBesideSP_arg3_0 _lh_ppBesideSP_arg4_0 =
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
                  (let rec sp_0 = (if ((orL_d1_d0 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1) then
                    cNil_d3_d0
                  else
                    (cCh_d0_d0 ' ')) in
                    (`MkPrettyRep(((cAppend_d3_d0 _lh_ppBesideSP_MkPrettyRep_0_0) ((cAppend_d4_d0 sp_0) ((cIndent_d1_d0 li_0) _lh_ppBesideSP_MkPrettyRep_0_1))), (li_0 + _lh_ppBesideSP_MkPrettyRep_1_1), ((andL_d4_d0 _lh_ppBesideSP_MkPrettyRep_2_0) _lh_ppBesideSP_MkPrettyRep_2_1), ((andL_d5_d0 (_lh_ppBesideSP_arg3_0 >= wi_0)) ((andL_d6_d0 _lh_ppBesideSP_MkPrettyRep_3_0) _lh_ppBesideSP_MkPrettyRep_3_1))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")))
and ppBesides_d0_d0 _lh_ppBesides_arg1_0 =
  (match _lh_ppBesides_arg1_0 with
    | `LH_N -> 
      ppNil_d1_d0
    | _ -> 
      ((foldr1_d1_d0 ppBeside_d0_d0) _lh_ppBesides_arg1_0))
and ppBeside_d0_d0 _lh_ppBeside_arg1_0 _lh_ppBeside_arg2_0 _lh_ppBeside_arg3_0 _lh_ppBeside_arg4_0 =
  (let rec _lh_matchIdent_8 = ((_lh_ppBeside_arg1_0 _lh_ppBeside_arg3_0) false) in
    (match _lh_matchIdent_8 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_0, _lh_ppBeside_MkPrettyRep_1_0, _lh_ppBeside_MkPrettyRep_2_0, _lh_ppBeside_MkPrettyRep_3_0) -> 
        (let rec _lh_matchIdent_9 = ((_lh_ppBeside_arg2_0 (_lh_ppBeside_arg3_0 - _lh_ppBeside_MkPrettyRep_1_0)) false) in
          (match _lh_matchIdent_9 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_1, _lh_ppBeside_MkPrettyRep_1_1, _lh_ppBeside_MkPrettyRep_2_1, _lh_ppBeside_MkPrettyRep_3_1) -> 
              (`MkPrettyRep(((cAppend_d2_d0 _lh_ppBeside_MkPrettyRep_0_0) ((cIndent_d0_d0 _lh_ppBeside_MkPrettyRep_1_0) _lh_ppBeside_MkPrettyRep_0_1)), (_lh_ppBeside_MkPrettyRep_1_0 + _lh_ppBeside_MkPrettyRep_1_1), ((andL_d1_d0 _lh_ppBeside_MkPrettyRep_2_0) _lh_ppBeside_MkPrettyRep_2_1), ((andL_d2_d0 (_lh_ppBeside_arg3_0 >= 0)) ((andL_d3_d0 _lh_ppBeside_MkPrettyRep_3_0) _lh_ppBeside_MkPrettyRep_3_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppCat_d0_d0 _lh_ppCat_arg1_0 =
  (match _lh_ppCat_arg1_0 with
    | `LH_N -> 
      ppNil_d2_d0
    | _ -> 
      ((foldr1_d2_d0 ppBesideSP_d0_d0) _lh_ppCat_arg1_0))
and ppChar_d0_d0 _lh_ppChar_arg1_0 _lh_ppChar_arg2_0 _lh_ppChar_arg3_0 =
  (`MkPrettyRep((cCh_d1_d0 _lh_ppChar_arg1_0), 1, false, (_lh_ppChar_arg2_0 >= 1)))
and ppInt_d0_d0 _lh_ppInt_arg1_0 =
  (ppStr_d1_d0 (string_of_int _lh_ppInt_arg1_0))
and ppNil_d0_d0 _lh_ppNil_arg1_1 _lh_ppNil_arg2_1 =
  (`MkPrettyRep(cNil_d1_d0, 0, true, (_lh_ppNil_arg1_1 >= 0)))
and ppNil_d1_d0 _lh_ppNil_arg1_0 _lh_ppNil_arg2_0 =
  (`MkPrettyRep(cNil_d2_d0, 0, true, (_lh_ppNil_arg1_0 >= 0)))
and ppNil_d2_d0 _lh_ppNil_arg1_2 _lh_ppNil_arg2_2 =
  (`MkPrettyRep(cNil_d4_d0, 0, true, (_lh_ppNil_arg1_2 >= 0)))
and ppShow_d0_d0 _lh_ppShow_arg1_0 _lh_ppShow_arg2_0 =
  (let rec _lh_matchIdent_2 = ((_lh_ppShow_arg2_0 _lh_ppShow_arg1_0) false) in
    (match _lh_matchIdent_2 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_0, _lh_ppShow_MkPrettyRep_1_0, _lh_ppShow_MkPrettyRep_2_0, _lh_ppShow_MkPrettyRep_3_0) -> 
        (cShow_d0_d0 _lh_ppShow_MkPrettyRep_0_0)
      | _ -> 
        (failwith "error")))
and ppStr_d0_d0 _lh_ppStr_arg1_1 _lh_ppStr_arg2_1 _lh_ppStr_arg3_1 =
  (let rec ls_4 = (length_d0_d0 _lh_ppStr_arg1_1) in
    (`MkPrettyRep((cStr_d0_d0 _lh_ppStr_arg1_1), ls_4, false, (_lh_ppStr_arg2_1 >= ls_4))))
and ppStr_d1_d0 _lh_ppStr_arg1_2 _lh_ppStr_arg2_2 _lh_ppStr_arg3_2 =
  (let rec ls_7 = (length_d1_d0 _lh_ppStr_arg1_2) in
    (`MkPrettyRep((cStr_d1_d0 _lh_ppStr_arg1_2), ls_7, false, (_lh_ppStr_arg2_2 >= ls_7))))
and ppStr_d2_d0 _lh_ppStr_arg1_0 _lh_ppStr_arg2_0 _lh_ppStr_arg3_0 =
  (let rec ls_1 = (length_d2_d0 _lh_ppStr_arg1_0) in
    (let rec _lh_ppHang_MkPrettyRep_0_0 = (cStr_d2_d0 _lh_ppStr_arg1_0) in
      (let rec _lh_ppHang_MkPrettyRep_1_0 = ls_1 in
        (let rec _lh_ppHang_MkPrettyRep_2_0 = false in
          (let rec _lh_ppHang_MkPrettyRep_3_0 = (_lh_ppStr_arg2_0 >= ls_1) in
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
                            (if ((orL_d2_d0 (_lh_ppHang_MkPrettyRep_1_0 <= _lh_ppHang_arg2_0)) _lh_ppHang_MkPrettyRep_3_1) then
                              (`MkPrettyRep(((cAppend_d5_d0 ((cAppend_d6_d0 _lh_ppHang_MkPrettyRep_0_0) (cCh_d2_d0 ' '))) ((cIndent_d2_d0 (_lh_ppHang_MkPrettyRep_1_0 + 1)) _lh_ppHang_MkPrettyRep_0_1)), ((_lh_ppHang_MkPrettyRep_1_0 + 1) + _lh_ppHang_MkPrettyRep_1_1), false, ((andL_d7_d0 _lh_ppHang_MkPrettyRep_3_0) _lh_ppHang_MkPrettyRep_3_1)))
                            else
                              (`MkPrettyRep(((cAppend_d7_d0 _lh_ppHang_MkPrettyRep_0_0) ((cAppend_d8_d0 cNL_d1_d0) ((cIndent_d3_d0 _lh_ppHang_arg2_0) _lh_ppHang_MkPrettyRep_0_2))), _lh_ppHang_MkPrettyRep_1_2, false, false))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error")))))))))
and ppStr_d3_d0 _lh_ppStr_arg1_3 _lh_ppStr_arg2_3 _lh_ppStr_arg3_3 =
  (let rec ls_8 = (length_d3_d0 _lh_ppStr_arg1_3) in
    (`MkPrettyRep((cStr_d3_d0 _lh_ppStr_arg1_3), ls_8, false, (_lh_ppStr_arg2_3 >= ls_8))))
and ppStr_d4_d0 _lh_ppStr_arg1_4 _lh_ppStr_arg2_4 _lh_ppStr_arg3_4 =
  (let rec ls_9 = (length_d4_d0 _lh_ppStr_arg1_4) in
    (`MkPrettyRep((cStr_d4_d0 _lh_ppStr_arg1_4), ls_9, false, (_lh_ppStr_arg2_4 >= ls_9))))
and testPretty_nofib_d0_d0 _lh_testPretty_nofib_arg1_0 =
  (let rec pretty_stuff_0 = (ppAboves_d0_d0 (`LH_C((ppBesides_d0_d0 (`LH_C((ppInt_d0_d0 (0 - 42)), (`LH_C((ppChar_d0_d0 '@'), (`LH_C((ppStr_d4_d0 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP_d0_d0, (`LH_C((((ppHang_d0_d0 (ppStr_d2_d0 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat_d0_d0 ((copy_d0_d0 50) (ppStr_d3_d0 (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend_d0_d0 ((ppShow_d0_d0 80) pretty_stuff_0)) (`LH_C('|', (`LH_N)))));;

(* lumberhack_pop_out *)
let rec andL_d0_d0_d0 _lh_andL_arg1_1_5 _lh_andL_arg2_1_5 =
  (match _lh_andL_arg1_1_5 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1_5
    | _ -> 
      (failwith "error"));;
let rec andL_d1_d0_d0 _lh_andL_arg1_1_1 _lh_andL_arg2_1_1 =
  (match _lh_andL_arg1_1_1 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1_1
    | _ -> 
      (failwith "error"));;
let rec andL_d2_d0_d0 _lh_andL_arg1_1_2 _lh_andL_arg2_1_2 =
  (match _lh_andL_arg1_1_2 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1_2
    | _ -> 
      (failwith "error"));;
let rec andL_d3_d0_d0 _lh_andL_arg1_1_4 _lh_andL_arg2_1_4 =
  (match _lh_andL_arg1_1_4 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1_4
    | _ -> 
      (failwith "error"));;
let rec andL_d4_d0_d0 _lh_andL_arg1_1_3 _lh_andL_arg2_1_3 =
  (match _lh_andL_arg1_1_3 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1_3
    | _ -> 
      (failwith "error"));;
let rec andL_d5_d0_d0 _lh_andL_arg1_9 _lh_andL_arg2_9 =
  (match _lh_andL_arg1_9 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_9
    | _ -> 
      (failwith "error"));;
let rec andL_d6_d0_d0 _lh_andL_arg1_1_0 _lh_andL_arg2_1_0 =
  (match _lh_andL_arg1_1_0 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_1_0
    | _ -> 
      (failwith "error"));;
let rec andL_d7_d0_d0 _lh_andL_arg1_8 _lh_andL_arg2_8 =
  (match _lh_andL_arg1_8 with
    | false -> 
      false
    | true -> 
      _lh_andL_arg2_8
    | _ -> 
      (failwith "error"));;
let rec cAppend_d0_d0_d0 _lh_cAppend_arg1_1_6 _lh_cAppend_arg2_1_6 =
  (`CAppend(_lh_cAppend_arg1_1_6, _lh_cAppend_arg2_1_6));;
let rec cAppend_d1_d0_d0 _lh_cAppend_arg1_1_7 _lh_cAppend_arg2_1_7 =
  (`CAppend(_lh_cAppend_arg1_1_7, _lh_cAppend_arg2_1_7));;
let rec cAppend_d2_d0_d0 _lh_cAppend_arg1_1_2 _lh_cAppend_arg2_1_2 =
  (`CAppend(_lh_cAppend_arg1_1_2, _lh_cAppend_arg2_1_2));;
let rec cAppend_d3_d0_d0 _lh_cAppend_arg1_1_1 _lh_cAppend_arg2_1_1 =
  (`CAppend(_lh_cAppend_arg1_1_1, _lh_cAppend_arg2_1_1));;
let rec cAppend_d4_d0_d0 _lh_cAppend_arg1_1_4 _lh_cAppend_arg2_1_4 =
  (`CAppend(_lh_cAppend_arg1_1_4, _lh_cAppend_arg2_1_4));;
let rec cAppend_d5_d0_d0 _lh_cAppend_arg1_9 _lh_cAppend_arg2_9 =
  (`CAppend(_lh_cAppend_arg1_9, _lh_cAppend_arg2_9));;
let rec cAppend_d6_d0_d0 _lh_cAppend_arg1_1_3 _lh_cAppend_arg2_1_3 =
  (`CAppend(_lh_cAppend_arg1_1_3, _lh_cAppend_arg2_1_3));;
let rec cAppend_d7_d0_d0 _lh_cAppend_arg1_1_5 _lh_cAppend_arg2_1_5 =
  (`CAppend(_lh_cAppend_arg1_1_5, _lh_cAppend_arg2_1_5));;
let rec cAppend_d8_d0_d0 _lh_cAppend_arg1_1_0 _lh_cAppend_arg2_1_0 =
  (`CAppend(_lh_cAppend_arg1_1_0, _lh_cAppend_arg2_1_0));;
let rec cCh_d0_d0_d0 _lh_cCh_arg1_3 =
  (`CCh(_lh_cCh_arg1_3));;
let rec cCh_d1_d0_d0 _lh_cCh_arg1_5 =
  (`CCh(_lh_cCh_arg1_5));;
let rec cCh_d2_d0_d0 _lh_cCh_arg1_4 =
  (`CCh(_lh_cCh_arg1_4));;
let rec cIndent_d0_d0_d0 _lh_cIndent_arg1_4 _lh_cIndent_arg2_4 =
  (`CIndent(_lh_cIndent_arg1_4, _lh_cIndent_arg2_4));;
let rec cIndent_d1_d0_d0 _lh_cIndent_arg1_6 _lh_cIndent_arg2_6 =
  (`CIndent(_lh_cIndent_arg1_6, _lh_cIndent_arg2_6));;
let rec cIndent_d2_d0_d0 _lh_cIndent_arg1_7 _lh_cIndent_arg2_7 =
  (`CIndent(_lh_cIndent_arg1_7, _lh_cIndent_arg2_7));;
let rec cIndent_d3_d0_d0 _lh_cIndent_arg1_5 _lh_cIndent_arg2_5 =
  (`CIndent(_lh_cIndent_arg1_5, _lh_cIndent_arg2_5));;
let rec cNL_d0_d0_d0 =
  (`CNewline);;
let rec cNL_d1_d0_d0 =
  (`CNewline);;
let rec cNil_d0_d0_d0 =
  (`CNil);;
let rec cNil_d1_d0_d0 =
  (`CNil);;
let rec cNil_d2_d0_d0 =
  (`CNil);;
let rec cNil_d3_d0_d0 =
  (`CNil);;
let rec cNil_d4_d0_d0 =
  (`CNil);;
let rec cStr_d0_d0_d0 _lh_cStr_arg1_9 =
  (`CStr(_lh_cStr_arg1_9));;
let rec cStr_d1_d0_d0 _lh_cStr_arg1_6 =
  (`CStr(_lh_cStr_arg1_6));;
let rec cStr_d2_d0_d0 _lh_cStr_arg1_5 =
  (`CStr(_lh_cStr_arg1_5));;
let rec cStr_d3_d0_d0 _lh_cStr_arg1_8 =
  (`CStr(_lh_cStr_arg1_8));;
let rec cStr_d4_d0_d0 _lh_cStr_arg1_7 =
  (`CStr(_lh_cStr_arg1_7));;
let rec copy_d0_d0_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy_d0_d0_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec foldr1_d0_d0_d0 _lh_foldr1_arg1_5 _lh_foldr1_arg2_5 =
  (match _lh_foldr1_arg2_5 with
    | `LH_C(_lh_foldr1_LH_C_0_5, _lh_foldr1_LH_C_1_5) -> 
      (match _lh_foldr1_LH_C_1_5 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_5
        | _ -> 
          ((_lh_foldr1_arg1_5 _lh_foldr1_LH_C_0_5) ((foldr1_d0_d0_d0 _lh_foldr1_arg1_5) _lh_foldr1_LH_C_1_5)))
    | _ -> 
      (failwith "error"));;
let rec foldr1_d1_d0_d0 _lh_foldr1_arg1_4 _lh_foldr1_arg2_4 =
  (match _lh_foldr1_arg2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_4, _lh_foldr1_LH_C_1_4) -> 
      (match _lh_foldr1_LH_C_1_4 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_4
        | _ -> 
          ((_lh_foldr1_arg1_4 _lh_foldr1_LH_C_0_4) ((foldr1_d1_d0_d0 _lh_foldr1_arg1_4) _lh_foldr1_LH_C_1_4)))
    | _ -> 
      (failwith "error"));;
let rec foldr1_d2_d0_d0 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (match _lh_foldr1_LH_C_1_3 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_3
        | _ -> 
          ((_lh_foldr1_arg1_3 _lh_foldr1_LH_C_0_3) ((foldr1_d2_d0_d0 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec length_d0_d0_d0 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_8_3, t_8_3) -> 
      (1 + (length_d0_d0_d0 t_8_3))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_5_4, t_5_4) -> 
      (1 + (length_d1_d0_d0 t_5_4))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d0 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_9_6, t_9_6) -> 
      (1 + (length_d2_d0_d0 t_9_6))
    | `LH_N -> 
      0);;
let rec length_d3_d0_d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_9_7, t_9_7) -> 
      (1 + (length_d3_d0_d0 t_9_7))
    | `LH_N -> 
      0);;
let rec length_d4_d0_d0 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_5_7, t_5_7) -> 
      (1 + (length_d4_d0_d0 t_5_7))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0 xs_2_9 ys_1_1_9 =
  (xs_2_9 ys_1_1_9);;
let rec mappend_d0_d0_d1 xs_4_8 ys_1_6_0 =
  (xs_4_8 ys_1_6_0);;
let rec mappend_d0_d0_d1_d0 xs_3_9 ys_1_3_5 =
  (xs_3_9 ys_1_3_5);;
let rec mappend_d0_d0_d1_d1 xs_1_9 ys_8_9 =
  (xs_1_9 ys_8_9);;
let rec mappend_d0_d0_d1_d2 xs_8 ys_7_0 =
  (xs_8 ys_7_0);;
let rec mappend_d0_d0_d1_d3 xs_3_7 ys_1_3_3 =
  (xs_3_7 ys_1_3_3);;
let rec mappend_d0_d0_d1_d4 xs_4_0 ys_1_3_7 =
  (xs_4_0 ys_1_3_7);;
let rec mappend_d0_d0_d1_d5 xs_3_6 ys_1_3_2 =
  (xs_3_6 ys_1_3_2);;
let rec mappend_d0_d0_d1_d6 xs_1_5 ys_8_3 =
  (xs_1_5 ys_8_3);;
let rec mappend_d0_d0_d1_d7 xs_3_2 ys_1_2_2 =
  (xs_3_2 ys_1_2_2);;
let rec mappend_d0_d0_d1_d8 xs_2_1 ys_9_5 =
  (xs_2_1 ys_9_5);;
let rec mappend_d0_d0_d1_d9 xs_5_1 ys_1_6_3 =
  (xs_5_1 ys_1_6_3);;
let rec mappend_d0_d0_d2 xs_2_5 ys_1_1_4 =
  (xs_2_5 ys_1_1_4);;
let rec mappend_d0_d0_d2_d0 xs_7 ys_6_6 =
  (xs_7 ys_6_6);;
let rec mappend_d0_d0_d2_d1 xs_4_6 ys_1_5_5 =
  (xs_4_6 ys_1_5_5);;
let rec mappend_d0_d0_d2_d2 xs_3_5 ys_1_3_1 =
  (xs_3_5 ys_1_3_1);;
let rec mappend_d0_d0_d2_d3 xs_4_9 ys_1_6_1 =
  (xs_4_9 ys_1_6_1);;
let rec mappend_d0_d0_d2_d4 xs_3_3 ys_1_2_3 =
  (xs_3_3 ys_1_2_3);;
let rec mappend_d0_d0_d2_d5 xs_3_0 ys_1_2_0 =
  (xs_3_0 ys_1_2_0);;
let rec mappend_d0_d0_d2_d6 xs_4_1 ys_1_4_5 =
  (xs_4_1 ys_1_4_5);;
let rec mappend_d0_d0_d2_d7 xs_4_4 ys_1_5_1 =
  (xs_4_4 ys_1_5_1);;
let rec mappend_d0_d0_d2_d8 xs_5_0 ys_1_6_2 =
  (xs_5_0 ys_1_6_2);;
let rec mappend_d0_d0_d2_d9 xs_2_0 ys_9_0 =
  (xs_2_0 ys_9_0);;
let rec mappend_d0_d0_d3 xs_3_4 ys_1_2_9 =
  (xs_3_4 ys_1_2_9);;
let rec mappend_d0_d0_d3_d0 xs_2_7 ys_1_1_7 =
  (xs_2_7 ys_1_1_7);;
let rec mappend_d0_d0_d3_d1 xs_2_4 ys_1_1_3 =
  (xs_2_4 ys_1_1_3);;
let rec mappend_d0_d0_d3_d2 xs_1_7 ys_8_6 =
  (xs_1_7 ys_8_6);;
let rec mappend_d0_d0_d3_d3 xs_1_8 ys_8_7 =
  (xs_1_8 ys_8_7);;
let rec mappend_d0_d0_d3_d4 xs_9 ys_7_1 =
  (xs_9 ys_7_1);;
let rec mappend_d0_d0_d3_d5 xs_2_6 ys_1_1_6 =
  (xs_2_6 ys_1_1_6);;
let rec mappend_d0_d0_d3_d6 xs_4_7 ys_1_5_9 =
  (xs_4_7 ys_1_5_9);;
let rec mappend_d0_d0_d3_d7 xs_1_2 ys_7_7 =
  (xs_1_2 ys_7_7);;
let rec mappend_d0_d0_d3_d8 xs_2_8 ys_1_1_8 =
  (xs_2_8 ys_1_1_8);;
let rec mappend_d0_d0_d3_d9 xs_1_1 ys_7_3 =
  (xs_1_1 ys_7_3);;
let rec mappend_d0_d0_d4 xs_4_5 ys_1_5_4 =
  (xs_4_5 ys_1_5_4);;
let rec mappend_d0_d0_d4_d0 xs_1_0 ys_7_2 =
  (xs_1_0 ys_7_2);;
let rec mappend_d0_d0_d5 xs_2_3 ys_1_1_1 =
  (xs_2_3 ys_1_1_1);;
let rec mappend_d0_d0_d6 xs_4_2 ys_1_4_6 =
  (xs_4_2 ys_1_4_6);;
let rec mappend_d0_d0_d7 xs_3_8 ys_1_3_4 =
  (xs_3_8 ys_1_3_4);;
let rec mappend_d0_d0_d8 xs_1_4 ys_8_2 =
  (xs_1_4 ys_8_2);;
let rec mappend_d0_d0_d9 xs_3_1 ys_1_2_1 =
  (xs_3_1 ys_1_2_1);;
let rec orL_d0_d0_d0 _lh_orL_arg1_5 _lh_orL_arg2_5 =
  (match _lh_orL_arg1_5 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_5
    | _ -> 
      (failwith "error"));;
let rec orL_d1_d0_d0 _lh_orL_arg1_4 _lh_orL_arg2_4 =
  (match _lh_orL_arg1_4 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_4
    | _ -> 
      (failwith "error"));;
let rec orL_d2_d0_d0 _lh_orL_arg1_3 _lh_orL_arg2_3 =
  (match _lh_orL_arg1_3 with
    | true -> 
      true
    | false -> 
      _lh_orL_arg2_3
    | _ -> 
      (failwith "error"));;
let rec ppHang_d0_d0_d0 _lh_ppHang_arg1_1 _lh_ppHang_arg2_2 _lh_ppHang_arg3_2 _lh_ppHang_arg4_2 _lh_ppHang_arg5_2 =
  (let rec _lh_matchIdent_1_7 = ((_lh_ppHang_arg1_1 _lh_ppHang_arg4_2) false) in
    ((((_lh_matchIdent_1_7 _lh_ppHang_arg2_2) _lh_ppHang_arg3_2) _lh_ppHang_arg4_2) _lh_ppHang_arg5_2));;
let rec cShow_d0_d0_d0 _lh_cShow_arg1_1 =
  ((((flatten_d0_d0_d0 0) true) _lh_cShow_arg1_1) (`LH_N))
and flattenS_d0_d0_d0 _lh_flattenS_arg1_2_7 _lh_flattenS_arg2_2_7 =
  (match _lh_flattenS_arg2_2_7 with
    | `LH_N -> 
      (fun ys_1_4_3 -> 
        ys_1_4_3)
    | `LH_C(_lh_flattenS_LH_C_0_2_7, _lh_flattenS_LH_C_1_2_7) -> 
      (match _lh_flattenS_LH_C_0_2_7 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_7, _lh_flattenS_LH_P2_1_2_7) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_7) _lh_flattenS_arg1_2_7) _lh_flattenS_LH_P2_1_2_7) _lh_flattenS_LH_C_1_2_7)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d1_d0 _lh_flattenS_arg1_2_8 _lh_flattenS_arg2_2_8 =
  (match _lh_flattenS_arg2_2_8 with
    | `LH_N -> 
      (fun ys_1_4_4 -> 
        ys_1_4_4)
    | `LH_C(_lh_flattenS_LH_C_0_2_8, _lh_flattenS_LH_C_1_2_8) -> 
      (match _lh_flattenS_LH_C_0_2_8 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_8, _lh_flattenS_LH_P2_1_2_8) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_8) _lh_flattenS_arg1_2_8) _lh_flattenS_LH_P2_1_2_8) _lh_flattenS_LH_C_1_2_8)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d2_d0 _lh_flattenS_arg1_2_5 _lh_flattenS_arg2_2_5 =
  (match _lh_flattenS_arg2_2_5 with
    | `LH_N -> 
      (fun ys_1_3_6 -> 
        ys_1_3_6)
    | `LH_C(_lh_flattenS_LH_C_0_2_5, _lh_flattenS_LH_C_1_2_5) -> 
      (match _lh_flattenS_LH_C_0_2_5 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_5, _lh_flattenS_LH_P2_1_2_5) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_5) _lh_flattenS_arg1_2_5) _lh_flattenS_LH_P2_1_2_5) _lh_flattenS_LH_C_1_2_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d3_d0 _lh_flattenS_arg1_2_9 _lh_flattenS_arg2_2_9 =
  (match _lh_flattenS_arg2_2_9 with
    | `LH_N -> 
      (fun ys_1_4_7 -> 
        ys_1_4_7)
    | `LH_C(_lh_flattenS_LH_C_0_2_9, _lh_flattenS_LH_C_1_2_9) -> 
      (match _lh_flattenS_LH_C_0_2_9 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_9, _lh_flattenS_LH_P2_1_2_9) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_9) _lh_flattenS_arg1_2_9) _lh_flattenS_LH_P2_1_2_9) _lh_flattenS_LH_C_1_2_9)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d4_d0 _lh_flattenS_arg1_2_6 _lh_flattenS_arg2_2_6 =
  (match _lh_flattenS_arg2_2_6 with
    | `LH_N -> 
      (fun ys_1_4_2 -> 
        ys_1_4_2)
    | `LH_C(_lh_flattenS_LH_C_0_2_6, _lh_flattenS_LH_C_1_2_6) -> 
      (match _lh_flattenS_LH_C_0_2_6 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_6, _lh_flattenS_LH_P2_1_2_6) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_6) _lh_flattenS_arg1_2_6) _lh_flattenS_LH_P2_1_2_6) _lh_flattenS_LH_C_1_2_6)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d5_d0 _lh_flattenS_arg1_3_1 _lh_flattenS_arg2_3_1 =
  (match _lh_flattenS_arg2_3_1 with
    | `LH_N -> 
      (fun ys_1_5_2 -> 
        ys_1_5_2)
    | `LH_C(_lh_flattenS_LH_C_0_3_1, _lh_flattenS_LH_C_1_3_1) -> 
      (match _lh_flattenS_LH_C_0_3_1 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3_1, _lh_flattenS_LH_P2_1_3_1) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_3_1) _lh_flattenS_arg1_3_1) _lh_flattenS_LH_P2_1_3_1) _lh_flattenS_LH_C_1_3_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d6_d0 _lh_flattenS_arg1_1_9 _lh_flattenS_arg2_1_9 =
  (match _lh_flattenS_arg2_1_9 with
    | `LH_N -> 
      (fun ys_7_6 -> 
        ys_7_6)
    | `LH_C(_lh_flattenS_LH_C_0_1_9, _lh_flattenS_LH_C_1_1_9) -> 
      (match _lh_flattenS_LH_C_0_1_9 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_9, _lh_flattenS_LH_P2_1_1_9) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_1_9) _lh_flattenS_arg1_1_9) _lh_flattenS_LH_P2_1_1_9) _lh_flattenS_LH_C_1_1_9)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d0_d7_d0 _lh_flattenS_arg1_2_2 _lh_flattenS_arg2_2_2 =
  (match _lh_flattenS_arg2_2_2 with
    | `LH_N -> 
      (fun ys_1_1_5 -> 
        ys_1_1_5)
    | `LH_C(_lh_flattenS_LH_C_0_2_2, _lh_flattenS_LH_C_1_2_2) -> 
      (match _lh_flattenS_LH_C_0_2_2 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_2, _lh_flattenS_LH_P2_1_2_2) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_2) _lh_flattenS_arg1_2_2) _lh_flattenS_LH_P2_1_2_2) _lh_flattenS_LH_C_1_2_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d0_d0 _lh_flattenS_arg1_3_3 _lh_flattenS_arg2_3_3 =
  (match _lh_flattenS_arg2_3_3 with
    | `LH_N -> 
      (fun ys_1_5_8 -> 
        ys_1_5_8)
    | `LH_C(_lh_flattenS_LH_C_0_3_3, _lh_flattenS_LH_C_1_3_3) -> 
      (match _lh_flattenS_LH_C_0_3_3 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3_3, _lh_flattenS_LH_P2_1_3_3) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_3_3) _lh_flattenS_arg1_3_3) _lh_flattenS_LH_P2_1_3_3) _lh_flattenS_LH_C_1_3_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d1_d0 _lh_flattenS_arg1_2_4 _lh_flattenS_arg2_2_4 =
  (match _lh_flattenS_arg2_2_4 with
    | `LH_N -> 
      (fun ys_1_3_0 -> 
        ys_1_3_0)
    | `LH_C(_lh_flattenS_LH_C_0_2_4, _lh_flattenS_LH_C_1_2_4) -> 
      (match _lh_flattenS_LH_C_0_2_4 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_4, _lh_flattenS_LH_P2_1_2_4) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_4) _lh_flattenS_arg1_2_4) _lh_flattenS_LH_P2_1_2_4) _lh_flattenS_LH_C_1_2_4)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d2_d0 _lh_flattenS_arg1_2_1 _lh_flattenS_arg2_2_1 =
  (match _lh_flattenS_arg2_2_1 with
    | `LH_N -> 
      (fun ys_1_1_2 -> 
        ys_1_1_2)
    | `LH_C(_lh_flattenS_LH_C_0_2_1, _lh_flattenS_LH_C_1_2_1) -> 
      (match _lh_flattenS_LH_C_0_2_1 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_1, _lh_flattenS_LH_P2_1_2_1) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_1) _lh_flattenS_arg1_2_1) _lh_flattenS_LH_P2_1_2_1) _lh_flattenS_LH_C_1_2_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d1_d3_d0 _lh_flattenS_arg1_2_3 _lh_flattenS_arg2_2_3 =
  (match _lh_flattenS_arg2_2_3 with
    | `LH_N -> 
      (fun ys_1_2_4 -> 
        ys_1_2_4)
    | `LH_C(_lh_flattenS_LH_C_0_2_3, _lh_flattenS_LH_C_1_2_3) -> 
      (match _lh_flattenS_LH_C_0_2_3 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_3, _lh_flattenS_LH_P2_1_2_3) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_3) _lh_flattenS_arg1_2_3) _lh_flattenS_LH_P2_1_2_3) _lh_flattenS_LH_C_1_2_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d2_d0_d0 _lh_flattenS_arg1_3_2 _lh_flattenS_arg2_3_2 =
  (match _lh_flattenS_arg2_3_2 with
    | `LH_N -> 
      (fun ys_1_5_3 -> 
        ys_1_5_3)
    | `LH_C(_lh_flattenS_LH_C_0_3_2, _lh_flattenS_LH_C_1_3_2) -> 
      (match _lh_flattenS_LH_C_0_3_2 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3_2, _lh_flattenS_LH_P2_1_3_2) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_3_2) _lh_flattenS_arg1_3_2) _lh_flattenS_LH_P2_1_3_2) _lh_flattenS_LH_C_1_3_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d2_d1_d0 _lh_flattenS_arg1_1_8 _lh_flattenS_arg2_1_8 =
  (match _lh_flattenS_arg2_1_8 with
    | `LH_N -> 
      (fun ys_6_7 -> 
        ys_6_7)
    | `LH_C(_lh_flattenS_LH_C_0_1_8, _lh_flattenS_LH_C_1_1_8) -> 
      (match _lh_flattenS_LH_C_0_1_8 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_8, _lh_flattenS_LH_P2_1_1_8) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_1_8) _lh_flattenS_arg1_1_8) _lh_flattenS_LH_P2_1_1_8) _lh_flattenS_LH_C_1_1_8)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d3_d0_d0 _lh_flattenS_arg1_3_0 _lh_flattenS_arg2_3_0 =
  (match _lh_flattenS_arg2_3_0 with
    | `LH_N -> 
      (fun ys_1_4_8 -> 
        ys_1_4_8)
    | `LH_C(_lh_flattenS_LH_C_0_3_0, _lh_flattenS_LH_C_1_3_0) -> 
      (match _lh_flattenS_LH_C_0_3_0 with
        | `LH_P2(_lh_flattenS_LH_P2_0_3_0, _lh_flattenS_LH_P2_1_3_0) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_3_0) _lh_flattenS_arg1_3_0) _lh_flattenS_LH_P2_1_3_0) _lh_flattenS_LH_C_1_3_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d4_d0_d0 _lh_flattenS_arg1_1_7 _lh_flattenS_arg2_1_7 =
  (match _lh_flattenS_arg2_1_7 with
    | `LH_N -> 
      (fun ys_6_5 -> 
        ys_6_5)
    | `LH_C(_lh_flattenS_LH_C_0_1_7, _lh_flattenS_LH_C_1_1_7) -> 
      (match _lh_flattenS_LH_C_0_1_7 with
        | `LH_P2(_lh_flattenS_LH_P2_0_1_7, _lh_flattenS_LH_P2_1_1_7) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_1_7) _lh_flattenS_arg1_1_7) _lh_flattenS_LH_P2_1_1_7) _lh_flattenS_LH_C_1_1_7)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flattenS_d5_d0_d0 _lh_flattenS_arg1_2_0 _lh_flattenS_arg2_2_0 =
  (match _lh_flattenS_arg2_2_0 with
    | `LH_N -> 
      (fun ys_8_8 -> 
        ys_8_8)
    | `LH_C(_lh_flattenS_LH_C_0_2_0, _lh_flattenS_LH_C_1_2_0) -> 
      (match _lh_flattenS_LH_C_0_2_0 with
        | `LH_P2(_lh_flattenS_LH_P2_0_2_0, _lh_flattenS_LH_P2_1_2_0) -> 
          ((((flatten_d0_d0_d0 _lh_flattenS_LH_P2_0_2_0) _lh_flattenS_arg1_2_0) _lh_flattenS_LH_P2_1_2_0) _lh_flattenS_LH_C_1_2_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and flatten_d0_d0_d0 _lh_flatten_arg1_1 _lh_flatten_arg2_1 _lh_flatten_arg3_1 _lh_flatten_arg4_1 =
  (match _lh_flatten_arg3_1 with
    | `CNil -> 
      ((flattenS_d4_d0_d0 _lh_flatten_arg2_1) _lh_flatten_arg4_1)
    | `CAppend(_lh_flatten_CAppend_0_1, _lh_flatten_CAppend_1_1) -> 
      ((((flatten_d0_d0_d0 _lh_flatten_arg1_1) _lh_flatten_arg2_1) _lh_flatten_CAppend_0_1) (`LH_C((`LH_P2(_lh_flatten_arg1_1, _lh_flatten_CAppend_1_1)), _lh_flatten_arg4_1)))
    | `CIndent(_lh_flatten_CIndent_0_1, _lh_flatten_CIndent_1_1) -> 
      ((((flatten_d0_d0_d0 (_lh_flatten_CIndent_0_1 + _lh_flatten_arg1_1)) _lh_flatten_arg2_1) _lh_flatten_CIndent_1_1) _lh_flatten_arg4_1)
    | `CNewline -> 
      (let rec h_7_0 = '|' in
        (let rec t_7_0 = ((flattenS_d5_d0_d0 true) _lh_flatten_arg4_1) in
          (fun ys_9_8 -> 
            (`LH_C(h_7_0, ((mappend_d0_d0_d1_d1 t_7_0) ys_9_8))))))
    | _ -> 
      (match _lh_flatten_arg2_1 with
        | false -> 
          (match _lh_flatten_arg3_1 with
            | `CStr(_lh_flatten_CStr_0_5) -> 
              ((mappend_d2_d0_d0 _lh_flatten_CStr_0_5) ((flattenS_d3_d0_d0 false) _lh_flatten_arg4_1))
            | _ -> 
              (match _lh_flatten_arg2_1 with
                | false -> 
                  (match _lh_flatten_arg3_1 with
                    | `CCh(_lh_flatten_CCh_0_1_0) -> 
                      (let rec h_7_1 = _lh_flatten_CCh_0_1_0 in
                        (let rec t_7_1 = ((flattenS_d2_d0_d0 false) _lh_flatten_arg4_1) in
                          (fun ys_9_9 -> 
                            (`LH_C(h_7_1, ((mappend_d0_d0_d1 t_7_1) ys_9_9))))))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CStr(_lh_flatten_CStr_0_6) -> 
                              ((mkIndent_d1_d0_d0 _lh_flatten_arg1_1) ((mappend_d1_d0_d0 _lh_flatten_CStr_0_6) ((flattenS_d1_d0_d0 false) _lh_flatten_arg4_1)))
                            | _ -> 
                              (match _lh_flatten_arg2_1 with
                                | true -> 
                                  (match _lh_flatten_arg3_1 with
                                    | `CCh(_lh_flatten_CCh_0_1_1) -> 
                                      ((mkIndent_d0_d0_d0 _lh_flatten_arg1_1) (let rec h_7_2 = _lh_flatten_CCh_0_1_1 in
                                        (let rec t_7_2 = ((flattenS_d0_d0_d0 false) _lh_flatten_arg4_1) in
                                          (fun ys_1_0_0 -> 
                                            (`LH_C(h_7_2, ((mappend_d0_d0_d2 t_7_2) ys_1_0_0)))))))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error")))
                        | _ -> 
                          (match _lh_flatten_arg2_1 with
                            | true -> 
                              (match _lh_flatten_arg3_1 with
                                | `CCh(_lh_flatten_CCh_0_1_2) -> 
                                  ((mkIndent_d0_d1_d0 _lh_flatten_arg1_1) (let rec h_7_3 = _lh_flatten_CCh_0_1_2 in
                                    (let rec t_7_3 = ((flattenS_d0_d1_d0 false) _lh_flatten_arg4_1) in
                                      (fun ys_1_0_1 -> 
                                        (`LH_C(h_7_3, ((mappend_d0_d0_d3 t_7_3) ys_1_0_1)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))))
                | _ -> 
                  (match _lh_flatten_arg2_1 with
                    | true -> 
                      (match _lh_flatten_arg3_1 with
                        | `CStr(_lh_flatten_CStr_0_7) -> 
                          ((mkIndent_d1_d1_d0 _lh_flatten_arg1_1) ((mappend_d1_d1_d0 _lh_flatten_CStr_0_7) ((flattenS_d1_d1_d0 false) _lh_flatten_arg4_1)))
                        | _ -> 
                          (match _lh_flatten_arg2_1 with
                            | true -> 
                              (match _lh_flatten_arg3_1 with
                                | `CCh(_lh_flatten_CCh_0_1_3) -> 
                                  ((mkIndent_d0_d2_d0 _lh_flatten_arg1_1) (let rec h_7_4 = _lh_flatten_CCh_0_1_3 in
                                    (let rec t_7_4 = ((flattenS_d0_d2_d0 false) _lh_flatten_arg4_1) in
                                      (fun ys_1_0_2 -> 
                                        (`LH_C(h_7_4, ((mappend_d0_d0_d4 t_7_4) ys_1_0_2)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CCh(_lh_flatten_CCh_0_1_4) -> 
                              ((mkIndent_d0_d3_d0 _lh_flatten_arg1_1) (let rec h_7_5 = _lh_flatten_CCh_0_1_4 in
                                (let rec t_7_5 = ((flattenS_d0_d3_d0 false) _lh_flatten_arg4_1) in
                                  (fun ys_1_0_3 -> 
                                    (`LH_C(h_7_5, ((mappend_d0_d0_d5 t_7_5) ys_1_0_3)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))))
        | _ -> 
          (match _lh_flatten_arg2_1 with
            | false -> 
              (match _lh_flatten_arg3_1 with
                | `CCh(_lh_flatten_CCh_0_1_5) -> 
                  (let rec h_7_6 = _lh_flatten_CCh_0_1_5 in
                    (let rec t_7_6 = ((flattenS_d2_d1_d0 false) _lh_flatten_arg4_1) in
                      (fun ys_1_0_4 -> 
                        (`LH_C(h_7_6, ((mappend_d0_d0_d6 t_7_6) ys_1_0_4))))))
                | _ -> 
                  (match _lh_flatten_arg2_1 with
                    | true -> 
                      (match _lh_flatten_arg3_1 with
                        | `CStr(_lh_flatten_CStr_0_8) -> 
                          ((mkIndent_d1_d2_d0 _lh_flatten_arg1_1) ((mappend_d1_d2_d0 _lh_flatten_CStr_0_8) ((flattenS_d1_d2_d0 false) _lh_flatten_arg4_1)))
                        | _ -> 
                          (match _lh_flatten_arg2_1 with
                            | true -> 
                              (match _lh_flatten_arg3_1 with
                                | `CCh(_lh_flatten_CCh_0_1_6) -> 
                                  ((mkIndent_d0_d4_d0 _lh_flatten_arg1_1) (let rec h_7_7 = _lh_flatten_CCh_0_1_6 in
                                    (let rec t_7_7 = ((flattenS_d0_d4_d0 false) _lh_flatten_arg4_1) in
                                      (fun ys_1_0_5 -> 
                                        (`LH_C(h_7_7, ((mappend_d0_d0_d7 t_7_7) ys_1_0_5)))))))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error")))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CCh(_lh_flatten_CCh_0_1_7) -> 
                              ((mkIndent_d0_d5_d0 _lh_flatten_arg1_1) (let rec h_7_8 = _lh_flatten_CCh_0_1_7 in
                                (let rec t_7_8 = ((flattenS_d0_d5_d0 false) _lh_flatten_arg4_1) in
                                  (fun ys_1_0_6 -> 
                                    (`LH_C(h_7_8, ((mappend_d0_d0_d8 t_7_8) ys_1_0_6)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))))
            | _ -> 
              (match _lh_flatten_arg2_1 with
                | true -> 
                  (match _lh_flatten_arg3_1 with
                    | `CStr(_lh_flatten_CStr_0_9) -> 
                      ((mkIndent_d1_d3_d0 _lh_flatten_arg1_1) ((mappend_d1_d3_d0 _lh_flatten_CStr_0_9) ((flattenS_d1_d3_d0 false) _lh_flatten_arg4_1)))
                    | _ -> 
                      (match _lh_flatten_arg2_1 with
                        | true -> 
                          (match _lh_flatten_arg3_1 with
                            | `CCh(_lh_flatten_CCh_0_1_8) -> 
                              ((mkIndent_d0_d6_d0 _lh_flatten_arg1_1) (let rec h_7_9 = _lh_flatten_CCh_0_1_8 in
                                (let rec t_7_9 = ((flattenS_d0_d6_d0 false) _lh_flatten_arg4_1) in
                                  (fun ys_1_0_7 -> 
                                    (`LH_C(h_7_9, ((mappend_d0_d0_d9 t_7_9) ys_1_0_7)))))))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error")))
                | _ -> 
                  (match _lh_flatten_arg2_1 with
                    | true -> 
                      (match _lh_flatten_arg3_1 with
                        | `CCh(_lh_flatten_CCh_0_1_9) -> 
                          ((mkIndent_d0_d7_d0 _lh_flatten_arg1_1) (let rec h_8_0 = _lh_flatten_CCh_0_1_9 in
                            (let rec t_8_0 = ((flattenS_d0_d7_d0 false) _lh_flatten_arg4_1) in
                              (fun ys_1_0_8 -> 
                                (`LH_C(h_8_0, ((mappend_d0_d0_d1_d0 t_8_0) ys_1_0_8)))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))))
and mappend_d1_d0_d0 xs_2_2 ys_9_6 =
  (match xs_2_2 with
    | `LH_C(h_6_8, t_6_8) -> 
      (let rec h_6_9 = h_6_8 in
        (let rec t_6_9 = ((mappend_d1_d0_d0 t_6_8) ys_9_6) in
          (fun ys_9_7 -> 
            (`LH_C(h_6_9, ((mappend_d0_d0_d1_d2 t_6_9) ys_9_7))))))
    | `LH_N -> 
      ys_9_6)
and mappend_d1_d1_d0 xs_1_6 ys_8_4 =
  (match xs_1_6 with
    | `LH_C(h_6_2, t_6_2) -> 
      (let rec h_6_3 = h_6_2 in
        (let rec t_6_3 = ((mappend_d1_d1_d0 t_6_2) ys_8_4) in
          (fun ys_8_5 -> 
            (`LH_C(h_6_3, ((mappend_d0_d0_d1_d3 t_6_3) ys_8_5))))))
    | `LH_N -> 
      ys_8_4)
and mappend_d1_d2_d0 xs_1_3 ys_8_0 =
  (match xs_1_3 with
    | `LH_C(h_6_0, t_6_0) -> 
      (let rec h_6_1 = h_6_0 in
        (let rec t_6_1 = ((mappend_d1_d2_d0 t_6_0) ys_8_0) in
          (fun ys_8_1 -> 
            (`LH_C(h_6_1, ((mappend_d0_d0_d1_d4 t_6_1) ys_8_1))))))
    | `LH_N -> 
      ys_8_0)
and mappend_d1_d3_d0 xs_4_3 ys_1_4_9 =
  (match xs_4_3 with
    | `LH_C(h_9_2, t_9_2) -> 
      (let rec h_9_3 = h_9_2 in
        (let rec t_9_3 = ((mappend_d1_d3_d0 t_9_2) ys_1_4_9) in
          (fun ys_1_5_0 -> 
            (`LH_C(h_9_3, ((mappend_d0_d0_d1_d5 t_9_3) ys_1_5_0))))))
    | `LH_N -> 
      ys_1_4_9)
and mappend_d2_d0_d0 xs_6 ys_6_3 =
  (match xs_6 with
    | `LH_C(h_5_0, t_5_0) -> 
      (let rec h_5_1 = h_5_0 in
        (let rec t_5_1 = ((mappend_d2_d0_d0 t_5_0) ys_6_3) in
          (fun ys_6_4 -> 
            (`LH_C(h_5_1, ((mappend_d0_d0_d1_d6 t_5_1) ys_6_4))))))
    | `LH_N -> 
      ys_6_3)
and mkIndent_d0_d0_d0 _lh_mkIndent_arg1_1_8 _lh_mkIndent_arg2_1_8 =
  (match _lh_mkIndent_arg1_1_8 with
    | 0 -> 
      _lh_mkIndent_arg2_1_8
    | _ -> 
      (if (_lh_mkIndent_arg1_1_8 >= 8) then
        (let rec h_8_4 = '|' in
          (let rec t_8_4 = ((mkIndent_d0_d0_d0 (_lh_mkIndent_arg1_1_8 - 8)) _lh_mkIndent_arg2_1_8) in
            (fun ys_1_2_5 -> 
              (`LH_C(h_8_4, ((mappend_d0_d0_d1_d7 t_8_4) ys_1_2_5))))))
      else
        (let rec h_8_5 = ' ' in
          (let rec t_8_5 = ((mkIndent_d0_d0_d0 (_lh_mkIndent_arg1_1_8 - 1)) _lh_mkIndent_arg2_1_8) in
            (fun ys_1_2_6 -> 
              (`LH_C(h_8_5, ((mappend_d0_d0_d1_d8 t_8_5) ys_1_2_6))))))))
and mkIndent_d0_d1_d0 _lh_mkIndent_arg1_1_5 _lh_mkIndent_arg2_1_5 =
  (match _lh_mkIndent_arg1_1_5 with
    | 0 -> 
      _lh_mkIndent_arg2_1_5
    | _ -> 
      (if (_lh_mkIndent_arg1_1_5 >= 8) then
        (let rec h_6_4 = '|' in
          (let rec t_6_4 = ((mkIndent_d0_d1_d0 (_lh_mkIndent_arg1_1_5 - 8)) _lh_mkIndent_arg2_1_5) in
            (fun ys_9_1 -> 
              (`LH_C(h_6_4, ((mappend_d0_d0_d1_d9 t_6_4) ys_9_1))))))
      else
        (let rec h_6_5 = ' ' in
          (let rec t_6_5 = ((mkIndent_d0_d1_d0 (_lh_mkIndent_arg1_1_5 - 1)) _lh_mkIndent_arg2_1_5) in
            (fun ys_9_2 -> 
              (`LH_C(h_6_5, ((mappend_d0_d0_d2_d0 t_6_5) ys_9_2))))))))
and mkIndent_d0_d2_d0 _lh_mkIndent_arg1_2_0 _lh_mkIndent_arg2_2_0 =
  (match _lh_mkIndent_arg1_2_0 with
    | 0 -> 
      _lh_mkIndent_arg2_2_0
    | _ -> 
      (if (_lh_mkIndent_arg1_2_0 >= 8) then
        (let rec h_8_8 = '|' in
          (let rec t_8_8 = ((mkIndent_d0_d2_d0 (_lh_mkIndent_arg1_2_0 - 8)) _lh_mkIndent_arg2_2_0) in
            (fun ys_1_3_8 -> 
              (`LH_C(h_8_8, ((mappend_d0_d0_d2_d1 t_8_8) ys_1_3_8))))))
      else
        (let rec h_8_9 = ' ' in
          (let rec t_8_9 = ((mkIndent_d0_d2_d0 (_lh_mkIndent_arg1_2_0 - 1)) _lh_mkIndent_arg2_2_0) in
            (fun ys_1_3_9 -> 
              (`LH_C(h_8_9, ((mappend_d0_d0_d2_d2 t_8_9) ys_1_3_9))))))))
and mkIndent_d0_d3_d0 _lh_mkIndent_arg1_2_2 _lh_mkIndent_arg2_2_2 =
  (match _lh_mkIndent_arg1_2_2 with
    | 0 -> 
      _lh_mkIndent_arg2_2_2
    | _ -> 
      (if (_lh_mkIndent_arg1_2_2 >= 8) then
        (let rec h_9_4 = '|' in
          (let rec t_9_4 = ((mkIndent_d0_d3_d0 (_lh_mkIndent_arg1_2_2 - 8)) _lh_mkIndent_arg2_2_2) in
            (fun ys_1_5_6 -> 
              (`LH_C(h_9_4, ((mappend_d0_d0_d2_d3 t_9_4) ys_1_5_6))))))
      else
        (let rec h_9_5 = ' ' in
          (let rec t_9_5 = ((mkIndent_d0_d3_d0 (_lh_mkIndent_arg1_2_2 - 1)) _lh_mkIndent_arg2_2_2) in
            (fun ys_1_5_7 -> 
              (`LH_C(h_9_5, ((mappend_d0_d0_d2_d4 t_9_5) ys_1_5_7))))))))
and mkIndent_d0_d4_d0 _lh_mkIndent_arg1_1_4 _lh_mkIndent_arg2_1_4 =
  (match _lh_mkIndent_arg1_1_4 with
    | 0 -> 
      _lh_mkIndent_arg2_1_4
    | _ -> 
      (if (_lh_mkIndent_arg1_1_4 >= 8) then
        (let rec h_5_8 = '|' in
          (let rec t_5_8 = ((mkIndent_d0_d4_d0 (_lh_mkIndent_arg1_1_4 - 8)) _lh_mkIndent_arg2_1_4) in
            (fun ys_7_8 -> 
              (`LH_C(h_5_8, ((mappend_d0_d0_d2_d5 t_5_8) ys_7_8))))))
      else
        (let rec h_5_9 = ' ' in
          (let rec t_5_9 = ((mkIndent_d0_d4_d0 (_lh_mkIndent_arg1_1_4 - 1)) _lh_mkIndent_arg2_1_4) in
            (fun ys_7_9 -> 
              (`LH_C(h_5_9, ((mappend_d0_d0_d2_d6 t_5_9) ys_7_9))))))))
and mkIndent_d0_d5_d0 _lh_mkIndent_arg1_1_9 _lh_mkIndent_arg2_1_9 =
  (match _lh_mkIndent_arg1_1_9 with
    | 0 -> 
      _lh_mkIndent_arg2_1_9
    | _ -> 
      (if (_lh_mkIndent_arg1_1_9 >= 8) then
        (let rec h_8_6 = '|' in
          (let rec t_8_6 = ((mkIndent_d0_d5_d0 (_lh_mkIndent_arg1_1_9 - 8)) _lh_mkIndent_arg2_1_9) in
            (fun ys_1_2_7 -> 
              (`LH_C(h_8_6, ((mappend_d0_d0_d2_d7 t_8_6) ys_1_2_7))))))
      else
        (let rec h_8_7 = ' ' in
          (let rec t_8_7 = ((mkIndent_d0_d5_d0 (_lh_mkIndent_arg1_1_9 - 1)) _lh_mkIndent_arg2_1_9) in
            (fun ys_1_2_8 -> 
              (`LH_C(h_8_7, ((mappend_d0_d0_d2_d8 t_8_7) ys_1_2_8))))))))
and mkIndent_d0_d6_d0 _lh_mkIndent_arg1_1_7 _lh_mkIndent_arg2_1_7 =
  (match _lh_mkIndent_arg1_1_7 with
    | 0 -> 
      _lh_mkIndent_arg2_1_7
    | _ -> 
      (if (_lh_mkIndent_arg1_1_7 >= 8) then
        (let rec h_8_1 = '|' in
          (let rec t_8_1 = ((mkIndent_d0_d6_d0 (_lh_mkIndent_arg1_1_7 - 8)) _lh_mkIndent_arg2_1_7) in
            (fun ys_1_0_9 -> 
              (`LH_C(h_8_1, ((mappend_d0_d0_d2_d9 t_8_1) ys_1_0_9))))))
      else
        (let rec h_8_2 = ' ' in
          (let rec t_8_2 = ((mkIndent_d0_d6_d0 (_lh_mkIndent_arg1_1_7 - 1)) _lh_mkIndent_arg2_1_7) in
            (fun ys_1_1_0 -> 
              (`LH_C(h_8_2, ((mappend_d0_d0_d3_d0 t_8_2) ys_1_1_0))))))))
and mkIndent_d0_d7_d0 _lh_mkIndent_arg1_1_3 _lh_mkIndent_arg2_1_3 =
  (match _lh_mkIndent_arg1_1_3 with
    | 0 -> 
      _lh_mkIndent_arg2_1_3
    | _ -> 
      (if (_lh_mkIndent_arg1_1_3 >= 8) then
        (let rec h_5_5 = '|' in
          (let rec t_5_5 = ((mkIndent_d0_d7_d0 (_lh_mkIndent_arg1_1_3 - 8)) _lh_mkIndent_arg2_1_3) in
            (fun ys_7_4 -> 
              (`LH_C(h_5_5, ((mappend_d0_d0_d3_d1 t_5_5) ys_7_4))))))
      else
        (let rec h_5_6 = ' ' in
          (let rec t_5_6 = ((mkIndent_d0_d7_d0 (_lh_mkIndent_arg1_1_3 - 1)) _lh_mkIndent_arg2_1_3) in
            (fun ys_7_5 -> 
              (`LH_C(h_5_6, ((mappend_d0_d0_d3_d2 t_5_6) ys_7_5))))))))
and mkIndent_d1_d0_d0 _lh_mkIndent_arg1_1_6 _lh_mkIndent_arg2_1_6 =
  (match _lh_mkIndent_arg1_1_6 with
    | 0 -> 
      _lh_mkIndent_arg2_1_6
    | _ -> 
      (if (_lh_mkIndent_arg1_1_6 >= 8) then
        (let rec h_6_6 = '|' in
          (let rec t_6_6 = ((mkIndent_d1_d0_d0 (_lh_mkIndent_arg1_1_6 - 8)) _lh_mkIndent_arg2_1_6) in
            (fun ys_9_3 -> 
              (`LH_C(h_6_6, ((mappend_d0_d0_d3_d3 t_6_6) ys_9_3))))))
      else
        (let rec h_6_7 = ' ' in
          (let rec t_6_7 = ((mkIndent_d1_d0_d0 (_lh_mkIndent_arg1_1_6 - 1)) _lh_mkIndent_arg2_1_6) in
            (fun ys_9_4 -> 
              (`LH_C(h_6_7, ((mappend_d0_d0_d3_d4 t_6_7) ys_9_4))))))))
and mkIndent_d1_d1_d0 _lh_mkIndent_arg1_2_3 _lh_mkIndent_arg2_2_3 =
  (match _lh_mkIndent_arg1_2_3 with
    | 0 -> 
      _lh_mkIndent_arg2_2_3
    | _ -> 
      (if (_lh_mkIndent_arg1_2_3 >= 8) then
        (let rec h_9_8 = '|' in
          (let rec t_9_8 = ((mkIndent_d1_d1_d0 (_lh_mkIndent_arg1_2_3 - 8)) _lh_mkIndent_arg2_2_3) in
            (fun ys_1_6_4 -> 
              (`LH_C(h_9_8, ((mappend_d0_d0_d3_d5 t_9_8) ys_1_6_4))))))
      else
        (let rec h_9_9 = ' ' in
          (let rec t_9_9 = ((mkIndent_d1_d1_d0 (_lh_mkIndent_arg1_2_3 - 1)) _lh_mkIndent_arg2_2_3) in
            (fun ys_1_6_5 -> 
              (`LH_C(h_9_9, ((mappend_d0_d0_d3_d6 t_9_9) ys_1_6_5))))))))
and mkIndent_d1_d2_d0 _lh_mkIndent_arg1_1_2 _lh_mkIndent_arg2_1_2 =
  (match _lh_mkIndent_arg1_1_2 with
    | 0 -> 
      _lh_mkIndent_arg2_1_2
    | _ -> 
      (if (_lh_mkIndent_arg1_1_2 >= 8) then
        (let rec h_5_2 = '|' in
          (let rec t_5_2 = ((mkIndent_d1_d2_d0 (_lh_mkIndent_arg1_1_2 - 8)) _lh_mkIndent_arg2_1_2) in
            (fun ys_6_8 -> 
              (`LH_C(h_5_2, ((mappend_d0_d0_d3_d7 t_5_2) ys_6_8))))))
      else
        (let rec h_5_3 = ' ' in
          (let rec t_5_3 = ((mkIndent_d1_d2_d0 (_lh_mkIndent_arg1_1_2 - 1)) _lh_mkIndent_arg2_1_2) in
            (fun ys_6_9 -> 
              (`LH_C(h_5_3, ((mappend_d0_d0_d3_d8 t_5_3) ys_6_9))))))))
and mkIndent_d1_d3_d0 _lh_mkIndent_arg1_2_1 _lh_mkIndent_arg2_2_1 =
  (match _lh_mkIndent_arg1_2_1 with
    | 0 -> 
      _lh_mkIndent_arg2_2_1
    | _ -> 
      (if (_lh_mkIndent_arg1_2_1 >= 8) then
        (let rec h_9_0 = '|' in
          (let rec t_9_0 = ((mkIndent_d1_d3_d0 (_lh_mkIndent_arg1_2_1 - 8)) _lh_mkIndent_arg2_2_1) in
            (fun ys_1_4_0 -> 
              (`LH_C(h_9_0, ((mappend_d0_d0_d3_d9 t_9_0) ys_1_4_0))))))
      else
        (let rec h_9_1 = ' ' in
          (let rec t_9_1 = ((mkIndent_d1_d3_d0 (_lh_mkIndent_arg1_2_1 - 1)) _lh_mkIndent_arg2_2_1) in
            (fun ys_1_4_1 -> 
              (`LH_C(h_9_1, ((mappend_d0_d0_d4_d0 t_9_1) ys_1_4_1))))))))
and pp'SP_d0_d0_d0 _lh_pp'SP_arg1_1 =
  ((ppStr_d0_d0_d0 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) _lh_pp'SP_arg1_1)
and ppAboves_d0_d0_d0 _lh_ppAboves_arg1_1 =
  (match _lh_ppAboves_arg1_1 with
    | `LH_N -> 
      ppNil_d0_d0_d0
    | _ -> 
      ((foldr1_d0_d0_d0 ppAbove_d0_d0_d0) _lh_ppAboves_arg1_1))
and ppAbove_d0_d0_d0 _lh_ppAbove_arg1_1 _lh_ppAbove_arg2_1 _lh_ppAbove_arg3_1 _lh_ppAbove_arg4_1 =
  (let rec _lh_matchIdent_1_5 = ((_lh_ppAbove_arg1_1 _lh_ppAbove_arg3_1) true) in
    (match _lh_matchIdent_1_5 with
      | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_2, _lh_ppAbove_MkPrettyRep_1_2, _lh_ppAbove_MkPrettyRep_2_2, _lh_ppAbove_MkPrettyRep_3_2) -> 
        (let rec _lh_matchIdent_1_6 = ((_lh_ppAbove_arg2_1 _lh_ppAbove_arg3_1) true) in
          (match _lh_matchIdent_1_6 with
            | `MkPrettyRep(_lh_ppAbove_MkPrettyRep_0_3, _lh_ppAbove_MkPrettyRep_1_3, _lh_ppAbove_MkPrettyRep_2_3, _lh_ppAbove_MkPrettyRep_3_3) -> 
              (let rec nl_1 = (if ((orL_d0_d0_d0 _lh_ppAbove_MkPrettyRep_2_2) _lh_ppAbove_MkPrettyRep_2_3) then
                cNil_d0_d0_d0
              else
                cNL_d0_d0_d0) in
                (`MkPrettyRep(((cAppend_d0_d0_d0 _lh_ppAbove_MkPrettyRep_0_2) ((cAppend_d1_d0_d0 nl_1) _lh_ppAbove_MkPrettyRep_0_3)), _lh_ppAbove_MkPrettyRep_1_3, ((andL_d0_d0_d0 _lh_ppAbove_MkPrettyRep_2_2) _lh_ppAbove_MkPrettyRep_2_3), false)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppBesideSP_d0_d0_d0 _lh_ppBesideSP_arg1_1 _lh_ppBesideSP_arg2_1 _lh_ppBesideSP_arg3_1 _lh_ppBesideSP_arg4_1 =
  (let rec _lh_matchIdent_1_3 = ((_lh_ppBesideSP_arg1_1 _lh_ppBesideSP_arg3_1) false) in
    (match _lh_matchIdent_1_3 with
      | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_2, _lh_ppBesideSP_MkPrettyRep_1_2, _lh_ppBesideSP_MkPrettyRep_2_2, _lh_ppBesideSP_MkPrettyRep_3_2) -> 
        (let rec li_1 = (if _lh_ppBesideSP_MkPrettyRep_2_2 then
          0
        else
          (_lh_ppBesideSP_MkPrettyRep_1_2 + 1)) in
          (let rec _lh_matchIdent_1_4 = ((_lh_ppBesideSP_arg2_1 (_lh_ppBesideSP_arg3_1 - li_1)) false) in
            (match _lh_matchIdent_1_4 with
              | `MkPrettyRep(_lh_ppBesideSP_MkPrettyRep_0_3, _lh_ppBesideSP_MkPrettyRep_1_3, _lh_ppBesideSP_MkPrettyRep_2_3, _lh_ppBesideSP_MkPrettyRep_3_3) -> 
                (let rec wi_1 = (if _lh_ppBesideSP_MkPrettyRep_2_2 then
                  0
                else
                  1) in
                  (let rec sp_1 = (if ((orL_d1_d0_d0 _lh_ppBesideSP_MkPrettyRep_2_2) _lh_ppBesideSP_MkPrettyRep_2_3) then
                    cNil_d3_d0_d0
                  else
                    (cCh_d0_d0_d0 ' ')) in
                    (`MkPrettyRep(((cAppend_d3_d0_d0 _lh_ppBesideSP_MkPrettyRep_0_2) ((cAppend_d4_d0_d0 sp_1) ((cIndent_d1_d0_d0 li_1) _lh_ppBesideSP_MkPrettyRep_0_3))), (li_1 + _lh_ppBesideSP_MkPrettyRep_1_3), ((andL_d4_d0_d0 _lh_ppBesideSP_MkPrettyRep_2_2) _lh_ppBesideSP_MkPrettyRep_2_3), ((andL_d5_d0_d0 (_lh_ppBesideSP_arg3_1 >= wi_1)) ((andL_d6_d0_d0 _lh_ppBesideSP_MkPrettyRep_3_2) _lh_ppBesideSP_MkPrettyRep_3_3))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")))
and ppBesides_d0_d0_d0 _lh_ppBesides_arg1_1 =
  (match _lh_ppBesides_arg1_1 with
    | `LH_N -> 
      ppNil_d1_d0_d0
    | _ -> 
      ((foldr1_d1_d0_d0 ppBeside_d0_d0_d0) _lh_ppBesides_arg1_1))
and ppBeside_d0_d0_d0 _lh_ppBeside_arg1_1 _lh_ppBeside_arg2_1 _lh_ppBeside_arg3_1 _lh_ppBeside_arg4_1 =
  (let rec _lh_matchIdent_1_1 = ((_lh_ppBeside_arg1_1 _lh_ppBeside_arg3_1) false) in
    (match _lh_matchIdent_1_1 with
      | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_2, _lh_ppBeside_MkPrettyRep_1_2, _lh_ppBeside_MkPrettyRep_2_2, _lh_ppBeside_MkPrettyRep_3_2) -> 
        (let rec _lh_matchIdent_1_2 = ((_lh_ppBeside_arg2_1 (_lh_ppBeside_arg3_1 - _lh_ppBeside_MkPrettyRep_1_2)) false) in
          (match _lh_matchIdent_1_2 with
            | `MkPrettyRep(_lh_ppBeside_MkPrettyRep_0_3, _lh_ppBeside_MkPrettyRep_1_3, _lh_ppBeside_MkPrettyRep_2_3, _lh_ppBeside_MkPrettyRep_3_3) -> 
              (`MkPrettyRep(((cAppend_d2_d0_d0 _lh_ppBeside_MkPrettyRep_0_2) ((cIndent_d0_d0_d0 _lh_ppBeside_MkPrettyRep_1_2) _lh_ppBeside_MkPrettyRep_0_3)), (_lh_ppBeside_MkPrettyRep_1_2 + _lh_ppBeside_MkPrettyRep_1_3), ((andL_d1_d0_d0 _lh_ppBeside_MkPrettyRep_2_2) _lh_ppBeside_MkPrettyRep_2_3), ((andL_d2_d0_d0 (_lh_ppBeside_arg3_1 >= 0)) ((andL_d3_d0_d0 _lh_ppBeside_MkPrettyRep_3_2) _lh_ppBeside_MkPrettyRep_3_3))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and ppCat_d0_d0_d0 _lh_ppCat_arg1_1 =
  (match _lh_ppCat_arg1_1 with
    | `LH_N -> 
      ppNil_d2_d0_d0
    | _ -> 
      ((foldr1_d2_d0_d0 ppBesideSP_d0_d0_d0) _lh_ppCat_arg1_1))
and ppChar_d0_d0_d0 _lh_ppChar_arg1_1 _lh_ppChar_arg2_1 _lh_ppChar_arg3_1 =
  (`MkPrettyRep((cCh_d1_d0_d0 _lh_ppChar_arg1_1), 1, false, (_lh_ppChar_arg2_1 >= 1)))
and ppInt_d0_d0_d0 _lh_ppInt_arg1_1 =
  (ppStr_d1_d0_d0 (string_of_int _lh_ppInt_arg1_1))
and ppNil_d0_d0_d0 _lh_ppNil_arg1_5 _lh_ppNil_arg2_5 =
  (`MkPrettyRep(cNil_d1_d0_d0, 0, true, (_lh_ppNil_arg1_5 >= 0)))
and ppNil_d1_d0_d0 _lh_ppNil_arg1_3 _lh_ppNil_arg2_3 =
  (`MkPrettyRep(cNil_d2_d0_d0, 0, true, (_lh_ppNil_arg1_3 >= 0)))
and ppNil_d2_d0_d0 _lh_ppNil_arg1_4 _lh_ppNil_arg2_4 =
  (`MkPrettyRep(cNil_d4_d0_d0, 0, true, (_lh_ppNil_arg1_4 >= 0)))
and ppShow_d0_d0_d0 _lh_ppShow_arg1_1 _lh_ppShow_arg2_1 =
  (let rec _lh_matchIdent_1_0 = ((_lh_ppShow_arg2_1 _lh_ppShow_arg1_1) false) in
    (match _lh_matchIdent_1_0 with
      | `MkPrettyRep(_lh_ppShow_MkPrettyRep_0_1, _lh_ppShow_MkPrettyRep_1_1, _lh_ppShow_MkPrettyRep_2_1, _lh_ppShow_MkPrettyRep_3_1) -> 
        (cShow_d0_d0_d0 _lh_ppShow_MkPrettyRep_0_1)
      | _ -> 
        (failwith "error")))
and ppStr_d0_d0_d0 _lh_ppStr_arg1_8 _lh_ppStr_arg2_8 _lh_ppStr_arg3_8 =
  (let rec ls_1_6 = (length_d0_d0_d0 _lh_ppStr_arg1_8) in
    (`MkPrettyRep((cStr_d0_d0_d0 _lh_ppStr_arg1_8), ls_1_6, false, (_lh_ppStr_arg2_8 >= ls_1_6))))
and ppStr_d1_d0_d0 _lh_ppStr_arg1_7 _lh_ppStr_arg2_7 _lh_ppStr_arg3_7 =
  (let rec ls_1_5 = (length_d1_d0_d0 _lh_ppStr_arg1_7) in
    (`MkPrettyRep((cStr_d1_d0_d0 _lh_ppStr_arg1_7), ls_1_5, false, (_lh_ppStr_arg2_7 >= ls_1_5))))
and ppStr_d2_d0_d0 _lh_ppStr_arg1_9 _lh_ppStr_arg2_9 _lh_ppStr_arg3_9 _lh_ppHang_arg2_3 _lh_ppHang_arg3_3 _lh_ppHang_arg4_3 _lh_ppHang_arg5_3 =
  (let rec ls_1_7 = (length_d2_d0_d0 _lh_ppStr_arg1_9) in
    (let rec _lh_ppHang_MkPrettyRep_0_3 = (cStr_d2_d0_d0 _lh_ppStr_arg1_9) in
      (let rec _lh_ppHang_MkPrettyRep_1_3 = ls_1_7 in
        (let rec _lh_ppHang_MkPrettyRep_2_3 = false in
          (let rec _lh_ppHang_MkPrettyRep_3_3 = (_lh_ppStr_arg2_9 >= ls_1_7) in
            (let rec _lh_matchIdent_1_8 = ((_lh_ppHang_arg3_3 (_lh_ppHang_arg4_3 - (_lh_ppHang_MkPrettyRep_1_3 + 1))) false) in
              (match _lh_matchIdent_1_8 with
                | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_4, _lh_ppHang_MkPrettyRep_1_4, _lh_ppHang_MkPrettyRep_2_4, _lh_ppHang_MkPrettyRep_3_4) -> 
                  (let rec _lh_matchIdent_1_9 = ((_lh_ppHang_arg3_3 (_lh_ppHang_arg4_3 - _lh_ppHang_arg2_3)) false) in
                    (match _lh_matchIdent_1_9 with
                      | `MkPrettyRep(_lh_ppHang_MkPrettyRep_0_5, _lh_ppHang_MkPrettyRep_1_5, _lh_ppHang_MkPrettyRep_2_5, _lh_ppHang_MkPrettyRep_3_5) -> 
                        (if _lh_ppHang_MkPrettyRep_2_3 then
                          ((_lh_ppHang_arg3_3 _lh_ppHang_arg4_3) _lh_ppHang_arg5_3)
                        else
                          (if ((orL_d2_d0_d0 (_lh_ppHang_MkPrettyRep_1_3 <= _lh_ppHang_arg2_3)) _lh_ppHang_MkPrettyRep_3_4) then
                            (`MkPrettyRep(((cAppend_d5_d0_d0 ((cAppend_d6_d0_d0 _lh_ppHang_MkPrettyRep_0_3) (cCh_d2_d0_d0 ' '))) ((cIndent_d2_d0_d0 (_lh_ppHang_MkPrettyRep_1_3 + 1)) _lh_ppHang_MkPrettyRep_0_4)), ((_lh_ppHang_MkPrettyRep_1_3 + 1) + _lh_ppHang_MkPrettyRep_1_4), false, ((andL_d7_d0_d0 _lh_ppHang_MkPrettyRep_3_3) _lh_ppHang_MkPrettyRep_3_4)))
                          else
                            (`MkPrettyRep(((cAppend_d7_d0_d0 _lh_ppHang_MkPrettyRep_0_3) ((cAppend_d8_d0_d0 cNL_d1_d0_d0) ((cIndent_d3_d0_d0 _lh_ppHang_arg2_3) _lh_ppHang_MkPrettyRep_0_5))), _lh_ppHang_MkPrettyRep_1_5, false, false))))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error"))))))))
and ppStr_d3_d0_d0 _lh_ppStr_arg1_6 _lh_ppStr_arg2_6 _lh_ppStr_arg3_6 =
  (let rec ls_1_4 = (length_d3_d0_d0 _lh_ppStr_arg1_6) in
    (`MkPrettyRep((cStr_d3_d0_d0 _lh_ppStr_arg1_6), ls_1_4, false, (_lh_ppStr_arg2_6 >= ls_1_4))))
and ppStr_d4_d0_d0 _lh_ppStr_arg1_5 _lh_ppStr_arg2_5 _lh_ppStr_arg3_5 =
  (let rec ls_1_1 = (length_d4_d0_d0 _lh_ppStr_arg1_5) in
    (`MkPrettyRep((cStr_d4_d0_d0 _lh_ppStr_arg1_5), ls_1_1, false, (_lh_ppStr_arg2_5 >= ls_1_1))))
and testPretty_nofib_d0_d0_d0 _lh_testPretty_nofib_arg1_1 =
  (let rec pretty_stuff_1 = (ppAboves_d0_d0_d0 (`LH_C((ppBesides_d0_d0_d0 (`LH_C((ppInt_d0_d0_d0 (0 - 42)), (`LH_C((ppChar_d0_d0_d0 '@'), (`LH_C((ppStr_d4_d0_d0 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))), (`LH_N)))))))), (`LH_C(pp'SP_d0_d0_d0, (`LH_C((((ppHang_d0_d0_d0 (ppStr_d2_d0_d0 (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))) 8) (ppCat_d0_d0_d0 ((copy_d0_d0_d0 50) (ppStr_d3_d0_d0 (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_C('x', (`LH_N))))))))))))))), (`LH_N)))))))) in
    ((mappend_d0_d0_d0 ((ppShow_d0_d0_d0 80) pretty_stuff_1)) (`LH_C('|', (`LH_N)))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Pretty_nofib" (fun () -> ignore ((testPretty_nofib_d0 0)));
  Bench.Test.create ~name:"lumberhack_Pretty_nofib" (fun () -> ignore ((testPretty_nofib_d0_d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Pretty_nofib" (fun () -> ignore ((testPretty_nofib_d0_d0_d0 0)));
])
