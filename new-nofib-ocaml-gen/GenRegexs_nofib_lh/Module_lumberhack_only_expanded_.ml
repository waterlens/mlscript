

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d1 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_8, t_9) -> 
      (`LH_C(h_8, ((mappend_lh__d1 t_9) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_9, t_1_0) -> 
      ((mappend_lh__d1 h_9) (concat_lh__d1 t_1_0))
    | `LH_N -> 
      (`LH_N));;
let rec span_lh__d2 _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_0 = ((span_lh__d2 _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_0, _lh_span_LH_P2_0_0)), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec span_lh__d1 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_1 = ((span_lh__d1 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_P2_0_1)), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1 f_1 i_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_3, t_3) -> 
      (((foldl_lh__d1 f_1) ((f_1 i_1) h_3)) t_3)
    | `LH_N -> 
      i_1);;
let rec mknum_lh__d1 _lh_mknum_arg1_1 =
  (((foldl_lh__d1 (fun u_1 c_1 -> 
    ((u_1 * 10) + ((int_of_char c_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1);;
let rec enumFromThenTo_lh__d1 a_3 t_8 b_2 =
  (if (a_3 <= b_2) then
    (`LH_C(a_3, (((enumFromThenTo_lh__d1 t_8) ((2 * t_8) - a_3)) b_2)))
  else
    (`LH_N));;
let rec mappend_lh__d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d3 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec enumFromTo_lh__d4 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d4 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec length_lh__d3 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh__d3 t_0))
    | `LH_N -> 
      0);;
let rec pad_lh__d1 _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend_lh__d3 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (`LH_C('0', (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 ((enumFromTo_lh__d4 1) (_lh_pad_arg2_0 - (length_lh__d3 _lh_pad_arg1_0)))))) _lh_pad_arg1_0);;
let rec length_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_7, t_7) -> 
      (1 + (length_lh__d1 t_7))
    | `LH_N -> 
      0);;
let rec enumFromTo_lh__d3 a_2 b_1 =
  (if (a_2 <= b_1) then
    (`LH_C(a_2, ((enumFromTo_lh__d3 (a_2 + 1)) b_1)))
  else
    (`LH_N));;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec length_lh__d2 ls_4 =
  (match ls_4 with
    | `LH_C(h_6, t_6) -> 
      (1 + (length_lh__d2 t_6))
    | `LH_N -> 
      0);;
let rec mappend_lh__d2 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d2 t_5) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec foldl_lh__d2 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (((foldl_lh__d2 f_0) ((f_0 i_0) h_2)) t_2)
    | `LH_N -> 
      i_0);;
let rec mknum_lh__d2 _lh_mknum_arg1_0 =
  (((foldl_lh__d2 (fun u_0 c_0 -> 
    ((u_0 * 10) + ((int_of_char c_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0);;
let rec enumFromTo_lh__d2 a_4 b_3 =
  (if (a_4 <= b_3) then
    (`LH_C(a_4, ((enumFromTo_lh__d2 (a_4 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo_lh__d1 a_5 b_4 =
  (if (a_5 <= b_4) then
    (`LH_C(a_5, ((enumFromTo_lh__d1 (a_5 + 1)) b_4)))
  else
    (`LH_N));;
let rec reverse_helper_lh__d1 ls_3 a_1 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      ((reverse_helper_lh__d1 t_4) (`LH_C(h_4, a_1)))
    | `LH_N -> 
      a_1);;
let rec reverse_lh__d1 ls_6 =
  ((reverse_helper_lh__d1 ls_6) (`LH_N));;
let rec alphabeticRule_lh__d1 _lh_alphabeticRule_arg1_0 =
  (match _lh_alphabeticRule_arg1_0 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_0, _lh_alphabeticRule_LH_C_1_0) -> 
      (match _lh_alphabeticRule_LH_C_1_0 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1, _lh_alphabeticRule_LH_C_1_1) -> 
          (match _lh_alphabeticRule_LH_C_0_1 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_1 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2, _lh_alphabeticRule_LH_C_1_2) -> 
                  (match _lh_alphabeticRule_LH_C_1_2 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3, _lh_alphabeticRule_LH_C_1_3) -> 
                      (match _lh_alphabeticRule_LH_C_0_3 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_0) <= (int_of_char _lh_alphabeticRule_LH_C_0_2)) then
                            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                              (match _lh_listcomp_fun_para_3 with
                                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                                  (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                                    (match _lh_listcomp_fun_para_4 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_3), _lh_listcomp_fun_ls_h_4)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
                                    (_lh_listcomp_fun_4 (expand_lh__d1 _lh_alphabeticRule_LH_C_1_3)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_3 ((enumFromTo_lh__d1 (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                              (match _lh_listcomp_fun_para_5 with
                                | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                                  (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
                                    (match _lh_listcomp_fun_para_6 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_5), _lh_listcomp_fun_ls_h_6)), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))) in
                                    (_lh_listcomp_fun_6 (expand_lh__d1 _lh_alphabeticRule_LH_C_1_3)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_5 (reverse_lh__d1 ((enumFromTo_lh__d2 (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
constantRule_lh__d1 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_8)), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8 (expand_lh__d1 _lh_constantRule_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and
constantRule_lh__d2 _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
        (match _lh_listcomp_fun_para_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_0, _lh_listcomp_fun_ls_h_7)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_7 (expand_lh__d1 _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and
expand_lh__d1 _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule_lh__d1 _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule_lh__d1 _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule_lh__d1 _lh_expand_arg1_0))
    | _ -> 
      (constantRule_lh__d2 _lh_expand_arg1_0))
and
numericRule_lh__d1 _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_2 = ((span_lh__d2 (fun c_2 -> 
    (c_2 <> '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_2 with
      | `LH_P2(_lh_numericRule_LH_P2_0_0, _lh_numericRule_LH_P2_1_0) -> 
        (match _lh_numericRule_LH_P2_1_0 with
          | `LH_C(_lh_numericRule_LH_C_0_0, _lh_numericRule_LH_C_1_0) -> 
            (let rec _lh_matchIdent_3 = ((span_lh__d1 (fun c_3 -> 
              (c_3 <> '>'))) _lh_numericRule_LH_C_1_0) in
              (match _lh_matchIdent_3 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1, _lh_numericRule_LH_P2_1_1) -> 
                  (match _lh_numericRule_LH_P2_1_1 with
                    | `LH_C(_lh_numericRule_LH_C_0_1, _lh_numericRule_LH_C_1_1) -> 
                      (let rec _lh_matchIdent_4 = (`LH_P2((mknum_lh__d1 _lh_numericRule_LH_P2_0_0), (mknum_lh__d2 _lh_numericRule_LH_P2_0_1))) in
                        (match _lh_matchIdent_4 with
                          | `LH_P2(_lh_numericRule_LH_P2_0_2, _lh_numericRule_LH_P2_1_2) -> 
                            (let rec width_0 = ((max_lh__d1 (length_lh__d1 (string_of_int _lh_numericRule_LH_P2_0_2))) (length_lh__d2 (string_of_int _lh_numericRule_LH_P2_1_2))) in
                              (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                                (match _lh_listcomp_fun_para_1 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                                    (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                                      (match _lh_listcomp_fun_para_2 with
                                        | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                                          (`LH_C(((mappend_lh__d2 ((pad_lh__d1 (string_of_int _lh_listcomp_fun_ls_h_1)) width_0)) _lh_listcomp_fun_ls_h_2), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                                        | `LH_N -> 
                                          (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
                                      (_lh_listcomp_fun_2 (expand_lh__d1 _lh_numericRule_LH_C_1_1)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_1 (if (_lh_numericRule_LH_P2_0_2 < _lh_numericRule_LH_P2_1_2) then
                                  ((enumFromTo_lh__d3 _lh_numericRule_LH_P2_0_2) _lh_numericRule_LH_P2_1_2)
                                else
                                  (((enumFromThenTo_lh__d1 _lh_numericRule_LH_P2_0_2) (_lh_numericRule_LH_P2_0_2 - 1)) _lh_numericRule_LH_P2_1_2)))))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec testGenRegexs_nofib_lh__d1 _lh_testGenRegexs_nofib_arg1_0 =
  (concat_lh__d1 (expand_lh__d1 _lh_testGenRegexs_nofib_arg1_0));;
let run () = 1 + (Obj.magic ((testGenRegexs_nofib_lh__d1 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
end;;

