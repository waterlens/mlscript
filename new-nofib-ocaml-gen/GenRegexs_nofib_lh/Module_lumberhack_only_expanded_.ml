

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec reverse_helper_lh ls_3 a_2 =
  (match ls_3 with
    | `LH_C(h_4, t_5) -> 
      ((reverse_helper_lh t_5) (`LH_C(h_4, a_2)))
    | `LH_N -> 
      a_2);;
let rec reverse_lh ls_2 =
  ((reverse_helper_lh ls_2) (`LH_N));;
let rec enumFromThenTo_lh a_1 t_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, (((enumFromThenTo_lh t_1) ((2 * t_1) - a_1)) b_1)))
  else
    (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_3) -> 
      (`LH_C(h_2, ((mappend_lh t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec length_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_2) -> 
      (1 + (length_lh t_2))
    | `LH_N -> 
      0);;
let rec pad_lh _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend_lh (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (`LH_C('0', (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 ((enumFromTo_lh 1) (_lh_pad_arg2_0 - (length_lh _lh_pad_arg1_0)))))) _lh_pad_arg1_0);;
let rec foldl_lh f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (((foldl_lh f_0) ((f_0 i_0) h_0)) t_0)
    | `LH_N -> 
      i_0);;
let rec mknum_lh _lh_mknum_arg1_0 =
  (((foldl_lh (fun u_0 c_2 -> 
    ((u_0 * 10) + ((int_of_char c_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0);;
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec span_lh _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_0 = ((span_lh _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_0, _lh_span_LH_P2_0_0)), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec alphabeticRule_lh _lh_alphabeticRule_arg1_0 =
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
                            (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                              (match _lh_listcomp_fun_para_2 with
                                | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                                  (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                                    (match _lh_listcomp_fun_para_3 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_2), _lh_listcomp_fun_ls_h_3)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
                                    (_lh_listcomp_fun_3 (expand_lh _lh_alphabeticRule_LH_C_1_3)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_2 ((enumFromTo_lh (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                              (match _lh_listcomp_fun_para_4 with
                                | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                                  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                                    (match _lh_listcomp_fun_para_5 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_4), _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
                                    (_lh_listcomp_fun_5 (expand_lh _lh_alphabeticRule_LH_C_1_3)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_4 (reverse_lh ((enumFromTo_lh (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
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
constantRule_lh _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
        (match _lh_listcomp_fun_para_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_0, _lh_listcomp_fun_ls_h_7)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_7 (expand_lh _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and
expand_lh _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule_lh _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule_lh _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule_lh _lh_expand_arg1_0))
    | _ -> 
      (constantRule_lh _lh_expand_arg1_0))
and
numericRule_lh _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_1 = ((span_lh (fun c_0 -> 
    (c_0 <> '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_1 with
      | `LH_P2(_lh_numericRule_LH_P2_0_0, _lh_numericRule_LH_P2_1_0) -> 
        (match _lh_numericRule_LH_P2_1_0 with
          | `LH_C(_lh_numericRule_LH_C_0_0, _lh_numericRule_LH_C_1_0) -> 
            (let rec _lh_matchIdent_2 = ((span_lh (fun c_1 -> 
              (c_1 <> '>'))) _lh_numericRule_LH_C_1_0) in
              (match _lh_matchIdent_2 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1, _lh_numericRule_LH_P2_1_1) -> 
                  (match _lh_numericRule_LH_P2_1_1 with
                    | `LH_C(_lh_numericRule_LH_C_0_1, _lh_numericRule_LH_C_1_1) -> 
                      (let rec _lh_matchIdent_3 = (`LH_P2((mknum_lh _lh_numericRule_LH_P2_0_0), (mknum_lh _lh_numericRule_LH_P2_0_1))) in
                        (match _lh_matchIdent_3 with
                          | `LH_P2(_lh_numericRule_LH_P2_0_2, _lh_numericRule_LH_P2_1_2) -> 
                            (let rec width_0 = ((max_lh (length_lh (string_of_int _lh_numericRule_LH_P2_0_2))) (length_lh (string_of_int _lh_numericRule_LH_P2_1_2))) in
                              (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                                (match _lh_listcomp_fun_para_0 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                                    (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                                      (match _lh_listcomp_fun_para_1 with
                                        | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                                          (`LH_C(((mappend_lh ((pad_lh (string_of_int _lh_listcomp_fun_ls_h_0)) width_0)) _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                                        | `LH_N -> 
                                          (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                                      (_lh_listcomp_fun_1 (expand_lh _lh_numericRule_LH_C_1_1)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_0 (if (_lh_numericRule_LH_P2_0_2 < _lh_numericRule_LH_P2_1_2) then
                                  ((enumFromTo_lh _lh_numericRule_LH_P2_0_2) _lh_numericRule_LH_P2_1_2)
                                else
                                  (((enumFromThenTo_lh _lh_numericRule_LH_P2_0_2) (_lh_numericRule_LH_P2_0_2 - 1)) _lh_numericRule_LH_P2_1_2)))))
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
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_4) -> 
      ((mappend_lh h_3) (concat_lh t_4))
    | `LH_N -> 
      (`LH_N));;
let rec testGenRegexs_nofib_lh _lh_testGenRegexs_nofib_arg1_0 =
  (concat_lh (expand_lh _lh_testGenRegexs_nofib_arg1_0));;
end;;

