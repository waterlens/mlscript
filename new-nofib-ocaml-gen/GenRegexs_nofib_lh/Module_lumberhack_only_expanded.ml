

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec enumFromThenTo__d0 a_1_0 t_3_0 b_6 =
  (if (a_1_0 <= b_6) then
    (`LH_C(a_1_0, (((enumFromThenTo__d0 t_3_0) ((2 * t_3_0) - a_1_0)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo__d0 a_8 b_4 =
  (if (a_8 <= b_4) then
    (`LH_C(a_8, ((enumFromTo__d0 (a_8 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_7 b_3 =
  (if (a_7 <= b_3) then
    (`LH_C(a_7, ((enumFromTo__d1 (a_7 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_6 b_2 =
  (if (a_6 <= b_2) then
    (`LH_C(a_6, ((enumFromTo__d2 (a_6 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_9 b_5 =
  (if (a_9 <= b_5) then
    (`LH_C(a_9, ((enumFromTo__d3 (a_9 + 1)) b_5)))
  else
    (`LH_N));;
let rec foldl__d0 f_1_2 i_3 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_5, t_2_7) -> 
      (((foldl__d0 f_1_2) ((f_1_2 i_3) h_2_5)) t_2_7)
    | `LH_N -> 
      i_3);;
let rec foldl__d1 f_1_3 i_4 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_6, t_2_8) -> 
      (((foldl__d1 f_1_3) ((f_1_3 i_4) h_2_6)) t_2_8)
    | `LH_N -> 
      i_4);;
let rec length__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (1 + (length__d0 t_2_3))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_2, t_2_4) -> 
      (1 + (length__d1 t_2_4))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_3, t_2_5) -> 
      (1 + (length__d2 t_2_5))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_8, t_3_1) -> 
      (`LH_C(h_2_8, ((mappend__d0 t_3_1) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_9, t_3_2) -> 
      (`LH_C(h_2_9, ((mappend__d1 t_3_2) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d2 t_2_6) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec max__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec reverse_helper__d0 ls_1_9 a_5 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      ((reverse_helper__d0 t_2_2) (`LH_C(h_2_0, a_5)))
    | `LH_N -> 
      a_5);;
let rec span__d0 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_4 = ((span__d0 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_P2_0_1)), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec span__d1 _lh_span_arg1_2 _lh_span_arg2_2 =
  (match _lh_span_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2) -> 
      (if (_lh_span_arg1_2 _lh_span_LH_C_0_2) then
        (let rec _lh_matchIdent_8 = ((span__d1 _lh_span_arg1_2) _lh_span_LH_C_1_2) in
          (match _lh_matchIdent_8 with
            | `LH_P2(_lh_span_LH_P2_0_2, _lh_span_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_2, _lh_span_LH_P2_0_2)), _lh_span_LH_P2_1_2))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec alphabeticRule__d0 _lh_alphabeticRule_arg1_1 =
  (match _lh_alphabeticRule_arg1_1 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_4, _lh_alphabeticRule_LH_C_1_4) -> 
      (match _lh_alphabeticRule_LH_C_1_4 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_5, _lh_alphabeticRule_LH_C_1_5) -> 
          (match _lh_alphabeticRule_LH_C_0_5 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_5 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_6, _lh_alphabeticRule_LH_C_1_6) -> 
                  (match _lh_alphabeticRule_LH_C_1_6 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_7, _lh_alphabeticRule_LH_C_1_7) -> 
                      (match _lh_alphabeticRule_LH_C_0_7 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_4) <= (int_of_char _lh_alphabeticRule_LH_C_0_6)) then
                            (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
                              (match _lh_listcomp_fun_para_1_2 with
                                | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
                                  (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
                                    (match _lh_listcomp_fun_para_1_3 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_2), _lh_listcomp_fun_ls_h_1_3)), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))) in
                                    (_lh_listcomp_fun_1_3 (expand__d0 _lh_alphabeticRule_LH_C_1_7)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_1_2 ((enumFromTo__d0 (int_of_char _lh_alphabeticRule_LH_C_0_4)) (int_of_char _lh_alphabeticRule_LH_C_0_6))))
                          else
                            (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
                              (match _lh_listcomp_fun_para_1_4 with
                                | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
                                  (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
                                    (match _lh_listcomp_fun_para_1_5 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_4), _lh_listcomp_fun_ls_h_1_5)), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))) in
                                    (_lh_listcomp_fun_1_5 (expand__d0 _lh_alphabeticRule_LH_C_1_7)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_1_4 (reverse__d0 ((enumFromTo__d1 (int_of_char _lh_alphabeticRule_LH_C_0_6)) (int_of_char _lh_alphabeticRule_LH_C_0_4))))))
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
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_7, t_2_9) -> 
      ((mappend__d0 h_2_7) (concat__d0 t_2_9))
    | `LH_N -> 
      (`LH_N))
and constantRule__d0 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
        (match _lh_listcomp_fun_para_1_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_1_1)), (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_1 (expand__d0 _lh_constantRule_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and expand__d0 _lh_expand_arg1_1 =
  (match _lh_expand_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_1, _lh_expand_LH_C_1_1) -> 
      (match _lh_expand_LH_C_0_1 with
        | '<' -> 
          (numericRule__d0 _lh_expand_LH_C_1_1)
        | '[' -> 
          (alphabeticRule__d0 _lh_expand_LH_C_1_1)
        | _ -> 
          (constantRule__d0 _lh_expand_arg1_1))
    | _ -> 
      (constantRule__d0 _lh_expand_arg1_1))
and mknum__d0 _lh_mknum_arg1_2 =
  (((foldl__d0 (fun u_2 c_6 -> 
    ((u_2 * 10) + ((int_of_char c_6) - (int_of_char '0'))))) 0) _lh_mknum_arg1_2)
and mknum__d1 _lh_mknum_arg1_1 =
  (((foldl__d1 (fun u_1 c_5 -> 
    ((u_1 * 10) + ((int_of_char c_5) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1)
and numericRule__d0 _lh_numericRule_arg1_1 =
  (let rec _lh_matchIdent_5 = ((span__d0 (fun c_3 -> 
    (c_3 <> '-'))) _lh_numericRule_arg1_1) in
    (match _lh_matchIdent_5 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3, _lh_numericRule_LH_P2_1_3) -> 
        (match _lh_numericRule_LH_P2_1_3 with
          | `LH_C(_lh_numericRule_LH_C_0_2, _lh_numericRule_LH_C_1_2) -> 
            (let rec _lh_matchIdent_6 = ((span__d1 (fun c_4 -> 
              (c_4 <> '>'))) _lh_numericRule_LH_C_1_2) in
              (match _lh_matchIdent_6 with
                | `LH_P2(_lh_numericRule_LH_P2_0_4, _lh_numericRule_LH_P2_1_4) -> 
                  (match _lh_numericRule_LH_P2_1_4 with
                    | `LH_C(_lh_numericRule_LH_C_0_3, _lh_numericRule_LH_C_1_3) -> 
                      (let rec _lh_matchIdent_7 = (`LH_P2((mknum__d0 _lh_numericRule_LH_P2_0_3), (mknum__d1 _lh_numericRule_LH_P2_0_4))) in
                        (match _lh_matchIdent_7 with
                          | `LH_P2(_lh_numericRule_LH_P2_0_5, _lh_numericRule_LH_P2_1_5) -> 
                            (let rec width_1 = ((max__d0 (length__d0 (string_of_int _lh_numericRule_LH_P2_0_5))) (length__d1 (string_of_int _lh_numericRule_LH_P2_1_5))) in
                              (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
                                (match _lh_listcomp_fun_para_9 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
                                    (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
                                      (match _lh_listcomp_fun_para_1_0 with
                                        | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
                                          (`LH_C(((mappend__d1 ((pad__d0 (string_of_int _lh_listcomp_fun_ls_h_9)) width_1)) _lh_listcomp_fun_ls_h_1_0), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0)))
                                        | `LH_N -> 
                                          (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))) in
                                      (_lh_listcomp_fun_1_0 (expand__d0 _lh_numericRule_LH_C_1_3)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_9 (if (_lh_numericRule_LH_P2_0_5 < _lh_numericRule_LH_P2_1_5) then
                                  ((enumFromTo__d2 _lh_numericRule_LH_P2_0_5) _lh_numericRule_LH_P2_1_5)
                                else
                                  (((enumFromThenTo__d0 _lh_numericRule_LH_P2_0_5) (_lh_numericRule_LH_P2_0_5 - 1)) _lh_numericRule_LH_P2_1_5)))))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and pad__d0 _lh_pad_arg1_1 _lh_pad_arg2_1 =
  ((mappend__d2 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
        (`LH_C('0', (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_8 ((enumFromTo__d3 1) (_lh_pad_arg2_1 - (length__d2 _lh_pad_arg1_1)))))) _lh_pad_arg1_1)
and reverse__d0 ls_2_1 =
  ((reverse_helper__d0 ls_2_1) (`LH_N))
and testGenRegexs_nofib__d0 _lh_testGenRegexs_nofib_arg1_1 =
  (concat__d0 (expand__d0 _lh_testGenRegexs_nofib_arg1_1));;
end;;

