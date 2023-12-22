

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec mappend_lh__d0 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_6, t_7) -> 
      (`LH_C(h_6, ((mappend_lh__d0 t_7) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec foldl_lh__d1 f_6 i_6 ls_5 =
  ((ls_5 f_6) i_6);;
let rec mappend_lh__d1 xs_0 ys_2 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d1 t_4) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend_lh__d2 xs_2 ys_4 =
  (xs_2 ys_4);;
let rec length_lh__d2 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh__d2 t_2))
    | `LH_N -> 
      0);;
let rec max_lh__d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec foldl_lh__d0 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec foldl_lh__d3 f_1 i_1 ls_1 =
  ((ls_1 f_1) i_1);;
let rec length_lh__d1 ls_6 =
  (match ls_6 with
    | `LH_C(h_8, t_9) -> 
      (1 + (length_lh__d1 t_9))
    | `LH_N -> 
      0);;
let rec length_lh__d0 ls_8 =
  (match ls_8 with
    | `LH_C(h_9, t_1_0) -> 
      (1 + (length_lh__d0 t_1_0))
    | `LH_N -> 
      0);;
let rec foldl_lh__d2 f_2 i_2 ls_3 =
  ((ls_3 f_2) i_2);;
let rec reverse_helper_lh__d0 ls_4 a_4 =
  (ls_4 a_4);;
let rec concat_lh__d0 lss_0 =
  (match lss_0 with
    | `LH_C(h_7, t_8) -> 
      ((mappend_lh__d0 h_7) (concat_lh__d0 t_8))
    | `LH_N -> 
      (`LH_N));;
let rec mknum_lh__d1 _lh_mknum_arg1_0 =
  (((foldl_lh__d1 (fun u_0 c_0 -> 
    ((u_0 * 10) + ((int_of_char c_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0);;
let rec enumFromTo_lh__d3 a_3 b_1 _lh_popOutId_0_1 _lh_popOutId_1_0 =
  (if (a_3 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo_lh__d3 (a_3 + 1)) b_1) in
      (let rec t_1 = (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_2) in
        (let rec h_1 = '0' in
          (`LH_C(h_1, ((mappend_lh__d2 t_1) _lh_popOutId_1_0))))))
  else
    _lh_popOutId_1_0);;
let rec mknum_lh__d0 _lh_mknum_arg1_1 =
  (((foldl_lh__d0 (fun u_1 c_1 -> 
    ((u_1 * 10) + ((int_of_char c_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1);;
let rec reverse_lh__d0 ls_7 =
  ((reverse_helper_lh__d0 ls_7) (fun _lh_alphabeticRule_LH_C_1_7 _lh_listcomp_fun_1_8 -> 
    (`LH_N)));;
let rec pad_lh__d0 _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend_lh__d2 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_2 -> 
    (_lh_listcomp_fun_para_2 _lh_listcomp_fun_5)) in
    (_lh_listcomp_fun_5 ((enumFromTo_lh__d3 1) (_lh_pad_arg2_0 - (length_lh__d2 _lh_pad_arg1_0)))))) _lh_pad_arg1_0);;
let rec alphabeticRule_lh__d0 _lh_alphabeticRule_arg1_0 =
  (match _lh_alphabeticRule_arg1_0 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_0, _lh_alphabeticRule_LH_C_1_1) -> 
      (match _lh_alphabeticRule_LH_C_1_1 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1, _lh_alphabeticRule_LH_C_1_2) -> 
          (match _lh_alphabeticRule_LH_C_0_1 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_2 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2, _lh_alphabeticRule_LH_C_1_3) -> 
                  (match _lh_alphabeticRule_LH_C_1_3 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3, _lh_alphabeticRule_LH_C_1_4) -> 
                      (match _lh_alphabeticRule_LH_C_0_3 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_0) <= (int_of_char _lh_alphabeticRule_LH_C_0_2)) then
                            (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_5 -> 
                              ((_lh_listcomp_fun_para_5 _lh_alphabeticRule_LH_C_1_4) _lh_listcomp_fun_1_0)) in
                              (_lh_listcomp_fun_1_0 ((enumFromTo_lh__d0 (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_6 -> 
                              ((_lh_listcomp_fun_para_6 _lh_alphabeticRule_LH_C_1_4) _lh_listcomp_fun_1_1)) in
                              (_lh_listcomp_fun_1_1 (reverse_lh__d0 ((enumFromTo_lh__d1 (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
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
constantRule_lh__d0 _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_0, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4 (expand_lh__d0 _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and
constantRule_lh__d1 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_0) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_9 (expand_lh__d0 _lh_constantRule_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and
enumFromThenTo_lh__d0 a_5 t_6 b_2 _lh_popOutId_0_2 _lh_popOutId_1_1 _lh_popOutId_2_0 =
  (if (a_5 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_4 = (((enumFromThenTo_lh__d0 t_6) ((2 * t_6) - a_5)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_5 in
        (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
          (match _lh_listcomp_fun_para_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_5) -> 
              (`LH_C(((mappend_lh__d1 ((pad_lh__d0 (string_of_int _lh_listcomp_fun_ls_h_3)) _lh_popOutId_2_0)) _lh_listcomp_fun_ls_h_4), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_5)))
            | `LH_N -> 
              (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_4))) in
          (_lh_listcomp_fun_8 (expand_lh__d0 _lh_popOutId_1_1)))))
  else
    (`LH_N))
and
enumFromTo_lh__d0 a_7 b_4 _lh_popOutId_0_4 _lh_popOutId_1_3 =
  (if (a_7 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo_lh__d0 (a_7 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_7 in
        (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_8 -> 
          (match _lh_listcomp_fun_para_8 with
            | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_9) -> 
              (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_7), _lh_listcomp_fun_ls_h_8)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_9)))
            | `LH_N -> 
              (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_8))) in
          (_lh_listcomp_fun_1_6 (expand_lh__d0 _lh_popOutId_0_4)))))
  else
    (`LH_N))
and
enumFromTo_lh__d1 a_0 b_0 _lh_popOutId_0_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        ((reverse_helper_lh__d0 t_0) (let rec _lh_listcomp_fun_ls_t_0 = _lh_popOutId_0_0 in
          (let rec _lh_listcomp_fun_ls_h_0 = h_0 in
            (fun _lh_alphabeticRule_LH_C_1_0 _lh_listcomp_fun_0 -> 
              (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
                (match _lh_listcomp_fun_para_0 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                    (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_0), _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                (_lh_listcomp_fun_1 (expand_lh__d0 _lh_alphabeticRule_LH_C_1_0)))))))))
  else
    _lh_popOutId_0_0)
and
enumFromTo_lh__d2 a_6 b_3 _lh_popOutId_0_3 _lh_popOutId_1_2 _lh_popOutId_2_1 =
  (if (a_6 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_6 = ((enumFromTo_lh__d2 (a_6 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_6 in
        (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_7 -> 
          (match _lh_listcomp_fun_para_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_7) -> 
              (`LH_C(((mappend_lh__d1 ((pad_lh__d0 (string_of_int _lh_listcomp_fun_ls_h_5)) _lh_popOutId_2_1)) _lh_listcomp_fun_ls_h_6), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_7)))
            | `LH_N -> 
              (_lh_popOutId_0_3 _lh_listcomp_fun_ls_t_6))) in
          (_lh_listcomp_fun_1_3 (expand_lh__d0 _lh_popOutId_1_2)))))
  else
    (`LH_N))
and
expand_lh__d0 _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule_lh__d0 _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule_lh__d0 _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule_lh__d0 _lh_expand_arg1_0))
    | _ -> 
      (constantRule_lh__d1 _lh_expand_arg1_0))
and
numericRule_lh__d0 _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_4 = ((span_lh__d0 (fun c_3 -> 
    (c_3 <> '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_4 with
      | `LH_P2(_lh_numericRule_LH_P2_0_8, _lh_numericRule_LH_P2_1_2) -> 
        (_lh_numericRule_LH_P2_1_2 _lh_numericRule_LH_P2_0_8)
      | _ -> 
        (failwith "error")))
and
span_lh__d0 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun f_7 i_7 -> 
        i_7), (fun _lh_numericRule_LH_P2_0_5 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_2 = ((span_lh__d0 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((let rec t_5 = _lh_span_LH_P2_0_1 in
                (let rec h_5 = _lh_span_LH_C_0_1 in
                  (fun f_8 i_8 -> 
                    (((foldl_lh__d2 f_8) ((f_8 i_8) h_5)) t_5)))), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_9 i_9 -> 
          i_9), (let rec _lh_numericRule_LH_C_1_2 = _lh_span_LH_C_1_1 in
          (fun _lh_numericRule_LH_P2_0_6 -> 
            (let rec _lh_matchIdent_3 = ((span_lh__d1 (fun c_2 -> 
              (c_2 <> '>'))) _lh_numericRule_LH_C_1_2) in
              (match _lh_matchIdent_3 with
                | `LH_P2(_lh_numericRule_LH_P2_0_7, _lh_numericRule_LH_P2_1_1) -> 
                  ((_lh_numericRule_LH_P2_1_1 _lh_numericRule_LH_P2_0_6) _lh_numericRule_LH_P2_0_7)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and
span_lh__d1 _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun f_3 i_3 -> 
        i_3), (fun _lh_numericRule_LH_P2_0_0 _lh_numericRule_LH_P2_0_1 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_0 = ((span_lh__d1 _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((let rec t_3 = _lh_span_LH_P2_0_0 in
                (let rec h_3 = _lh_span_LH_C_0_0 in
                  (fun f_4 i_4 -> 
                    (((foldl_lh__d3 f_4) ((f_4 i_4) h_3)) t_3)))), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_5 i_5 -> 
          i_5), (let rec _lh_numericRule_LH_C_1_0 = _lh_span_LH_C_1_0 in
          (fun _lh_numericRule_LH_P2_0_2 _lh_numericRule_LH_P2_0_3 -> 
            (let rec _lh_matchIdent_1 = (let rec _lh_numericRule_LH_P2_1_0 = (mknum_lh__d0 _lh_numericRule_LH_P2_0_3) in
              (let rec _lh_numericRule_LH_P2_0_4 = (mknum_lh__d1 _lh_numericRule_LH_P2_0_2) in
                (fun _lh_numericRule_LH_C_1_1 -> 
                  (let rec width_0 = ((max_lh__d0 (length_lh__d0 (string_of_int _lh_numericRule_LH_P2_0_4))) (length_lh__d1 (string_of_int _lh_numericRule_LH_P2_1_0))) in
                    (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_3 -> 
                      (((_lh_listcomp_fun_para_3 _lh_listcomp_fun_6) _lh_numericRule_LH_C_1_1) width_0)) in
                      (_lh_listcomp_fun_6 (if (_lh_numericRule_LH_P2_0_4 < _lh_numericRule_LH_P2_1_0) then
                        ((enumFromTo_lh__d2 _lh_numericRule_LH_P2_0_4) _lh_numericRule_LH_P2_1_0)
                      else
                        (((enumFromThenTo_lh__d0 _lh_numericRule_LH_P2_0_4) (_lh_numericRule_LH_P2_0_4 - 1)) _lh_numericRule_LH_P2_1_0)))))))) in
              (_lh_matchIdent_1 _lh_numericRule_LH_C_1_0)))))))
    | _ -> 
      (failwith "error"));;
let rec testGenRegexs_nofib_lh__d0 _lh_testGenRegexs_nofib_arg1_0 =
  (concat_lh__d0 (expand_lh__d0 _lh_testGenRegexs_nofib_arg1_0));;
end;;

