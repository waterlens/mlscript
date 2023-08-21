(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./GenRegexs_nofib.ml -o "./GenRegexs_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./GenRegexs_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec enumFromThenTo_d0 a_1_0 t_3_2 b_6 =
  (if (a_1_0 <= b_6) then
    (`LH_C(a_1_0, (((enumFromThenTo_d0 t_3_2) ((2 * t_3_2) - a_1_0)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo_d0 a_8 b_4 =
  (if (a_8 <= b_4) then
    (`LH_C(a_8, ((enumFromTo_d0 (a_8 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo_d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo_d2 a_9 b_5 =
  (if (a_9 <= b_5) then
    (`LH_C(a_9, ((enumFromTo_d2 (a_9 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo_d3 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo_d3 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec foldl_d0 f_1_2 i_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (((foldl_d0 f_1_2) ((f_1_2 i_3) h_2_4)) t_2_6)
    | `LH_N -> 
      i_3);;
let rec foldl_d1 f_1_3 i_4 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_8, t_3_0) -> 
      (((foldl_d1 f_1_3) ((f_1_3 i_4) h_2_8)) t_3_0)
    | `LH_N -> 
      i_4);;
let rec length_d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length_d0 t_2_9))
    | `LH_N -> 
      0);;
let rec length_d1 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (1 + (length_d1 t_2_4))
    | `LH_N -> 
      0);;
let rec length_d2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length_d2 t_2_2))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend_d0 t_3_1) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend_d1 t_2_5) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d2 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend_d2 t_2_7) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec max_d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec reverse_helper_d0 ls_2_3 a_7 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((reverse_helper_d0 t_2_8) (`LH_C(h_2_6, a_7)))
    | `LH_N -> 
      a_7);;
let rec span_d0 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_4 = ((span_d0 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_P2_0_1)), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec span_d1 _lh_span_arg1_2 _lh_span_arg2_2 =
  (match _lh_span_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2) -> 
      (if (_lh_span_arg1_2 _lh_span_LH_C_0_2) then
        (let rec _lh_matchIdent_8 = ((span_d1 _lh_span_arg1_2) _lh_span_LH_C_1_2) in
          (match _lh_matchIdent_8 with
            | `LH_P2(_lh_span_LH_P2_0_2, _lh_span_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_span_LH_C_0_2, _lh_span_LH_P2_0_2)), _lh_span_LH_P2_1_2))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((`LH_N), (`LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec alphabeticRule_d0 _lh_alphabeticRule_arg1_1 =
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
                            (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
                              (match _lh_listcomp_fun_para_1_0 with
                                | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
                                  (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
                                    (match _lh_listcomp_fun_para_1_1 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_0), _lh_listcomp_fun_ls_h_1_1)), (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))) in
                                    (_lh_listcomp_fun_1_1 (expand_d0 _lh_alphabeticRule_LH_C_1_7)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_1_0 ((enumFromTo_d0 (int_of_char _lh_alphabeticRule_LH_C_0_4)) (int_of_char _lh_alphabeticRule_LH_C_0_6))))
                          else
                            (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
                              (match _lh_listcomp_fun_para_1_2 with
                                | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
                                  (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
                                    (match _lh_listcomp_fun_para_1_3 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_2), _lh_listcomp_fun_ls_h_1_3)), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))) in
                                    (_lh_listcomp_fun_1_3 (expand_d0 _lh_alphabeticRule_LH_C_1_7)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_1_2 (reverse_d0 ((enumFromTo_d1 (int_of_char _lh_alphabeticRule_LH_C_0_6)) (int_of_char _lh_alphabeticRule_LH_C_0_4))))))
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
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_1, t_2_3) -> 
      ((mappend_d0 h_2_1) (concat_d0 t_2_3))
    | `LH_N -> 
      (`LH_N))
and constantRule_d0 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9 (expand_d0 _lh_constantRule_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and expand_d0 _lh_expand_arg1_1 =
  (match _lh_expand_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_1, _lh_expand_LH_C_1_1) -> 
      (match _lh_expand_LH_C_0_1 with
        | '<' -> 
          (numericRule_d0 _lh_expand_LH_C_1_1)
        | '[' -> 
          (alphabeticRule_d0 _lh_expand_LH_C_1_1)
        | _ -> 
          (constantRule_d0 _lh_expand_arg1_1))
    | _ -> 
      (constantRule_d0 _lh_expand_arg1_1))
and mknum_d0 _lh_mknum_arg1_2 =
  (((foldl_d0 (fun u_2 c_6 -> 
    ((u_2 * 10) + ((int_of_char c_6) - (int_of_char '0'))))) 0) _lh_mknum_arg1_2)
and mknum_d1 _lh_mknum_arg1_1 =
  (((foldl_d1 (fun u_1 c_5 -> 
    ((u_1 * 10) + ((int_of_char c_5) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1)
and numericRule_d0 _lh_numericRule_arg1_1 =
  (let rec _lh_matchIdent_5 = ((span_d0 (fun c_3 -> 
    (c_3 != '-'))) _lh_numericRule_arg1_1) in
    (match _lh_matchIdent_5 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3, _lh_numericRule_LH_P2_1_3) -> 
        (match _lh_numericRule_LH_P2_1_3 with
          | `LH_C(_lh_numericRule_LH_C_0_2, _lh_numericRule_LH_C_1_2) -> 
            (let rec _lh_matchIdent_6 = ((span_d1 (fun c_4 -> 
              (c_4 != '>'))) _lh_numericRule_LH_C_1_2) in
              (match _lh_matchIdent_6 with
                | `LH_P2(_lh_numericRule_LH_P2_0_4, _lh_numericRule_LH_P2_1_4) -> 
                  (match _lh_numericRule_LH_P2_1_4 with
                    | `LH_C(_lh_numericRule_LH_C_0_3, _lh_numericRule_LH_C_1_3) -> 
                      (let rec _lh_matchIdent_7 = (`LH_P2((mknum_d0 _lh_numericRule_LH_P2_0_3), (mknum_d1 _lh_numericRule_LH_P2_0_4))) in
                        (match _lh_matchIdent_7 with
                          | `LH_P2(_lh_numericRule_LH_P2_0_5, _lh_numericRule_LH_P2_1_5) -> 
                            (let rec width_1 = ((max_d0 (length_d0 (string_of_int _lh_numericRule_LH_P2_0_5))) (length_d1 (string_of_int _lh_numericRule_LH_P2_1_5))) in
                              (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
                                (match _lh_listcomp_fun_para_1_4 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
                                    (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
                                      (match _lh_listcomp_fun_para_1_5 with
                                        | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
                                          (`LH_C(((mappend_d1 ((pad_d0 (string_of_int _lh_listcomp_fun_ls_h_1_4)) width_1)) _lh_listcomp_fun_ls_h_1_5), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5)))
                                        | `LH_N -> 
                                          (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))) in
                                      (_lh_listcomp_fun_1_5 (expand_d0 _lh_numericRule_LH_C_1_3)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_1_4 (if (_lh_numericRule_LH_P2_0_5 < _lh_numericRule_LH_P2_1_5) then
                                  ((enumFromTo_d2 _lh_numericRule_LH_P2_0_5) _lh_numericRule_LH_P2_1_5)
                                else
                                  (((enumFromThenTo_d0 _lh_numericRule_LH_P2_0_5) (_lh_numericRule_LH_P2_0_5 - 1)) _lh_numericRule_LH_P2_1_5)))))
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
and pad_d0 _lh_pad_arg1_1 _lh_pad_arg2_1 =
  ((mappend_d2 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
        (`LH_C('0', (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_8 ((enumFromTo_d3 1) (_lh_pad_arg2_1 - (length_d2 _lh_pad_arg1_1)))))) _lh_pad_arg1_1)
and reverse_d0 ls_2_1 =
  ((reverse_helper_d0 ls_2_1) (`LH_N))
and testGenRegexs_nofib_d0 _lh_testGenRegexs_nofib_arg1_1 =
  (concat_d0 (expand_d0 _lh_testGenRegexs_nofib_arg1_1));;

(* lumberhack *)
let rec foldl_d0_d0 f_2_0 i_2_0 ls_1_4 =
  ((ls_1_4 f_2_0) i_2_0);;
let rec foldl_d0_d1 f_3_1 i_3_1 ls_2_4 =
  ((ls_2_4 f_3_1) i_3_1);;
let rec foldl_d0_d2 f_3_0 i_3_0 ls_2_2 =
  ((ls_2_2 f_3_0) i_3_0);;
let rec foldl_d0_d3 f_2_1 i_2_1 ls_1_6 =
  ((ls_1_6 f_2_1) i_2_1);;
let rec foldl_d1_d0 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec foldl_d1_d1 f_2_9 i_2_9 ls_2_1 =
  ((ls_2_1 f_2_9) i_2_9);;
let rec foldl_d1_d2 f_4 i_4 ls_5 =
  ((ls_5 f_4) i_4);;
let rec foldl_d1_d3 f_2_2 i_2_2 ls_1_8 =
  ((ls_1_8 f_2_2) i_2_2);;
let rec length_d0_d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_4) -> 
      (1 + (length_d0_d0 t_4))
    | `LH_N -> 
      0);;
let rec length_d0_d1 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_2_6, t_3_0) -> 
      (1 + (length_d0_d1 t_3_0))
    | `LH_N -> 
      0);;
let rec length_d0_d2 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_5, t_1_8) -> 
      (1 + (length_d0_d2 t_1_8))
    | `LH_N -> 
      0);;
let rec length_d0_d3 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_2, t_2_6) -> 
      (1 + (length_d0_d3 t_2_6))
    | `LH_N -> 
      0);;
let rec length_d1_d0 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_2_1, t_2_5) -> 
      (1 + (length_d1_d0 t_2_5))
    | `LH_N -> 
      0);;
let rec length_d1_d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_2, t_3_6) -> 
      (1 + (length_d1_d1 t_3_6))
    | `LH_N -> 
      0);;
let rec length_d1_d2 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_3, t_3_7) -> 
      (1 + (length_d1_d2 t_3_7))
    | `LH_N -> 
      0);;
let rec length_d1_d3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_5, t_3_9) -> 
      (1 + (length_d1_d3 t_3_9))
    | `LH_N -> 
      0);;
let rec length_d2_d0 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_8, t_2_2) -> 
      (1 + (length_d2_d0 t_2_2))
    | `LH_N -> 
      0);;
let rec length_d2_d1 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_2_4, t_2_8) -> 
      (1 + (length_d2_d1 t_2_8))
    | `LH_N -> 
      0);;
let rec length_d2_d2 ls_4 =
  (match ls_4 with
    | `LH_C(h_6, t_8) -> 
      (1 + (length_d2_d2 t_8))
    | `LH_N -> 
      0);;
let rec length_d2_d3 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_7, t_2_1) -> 
      (1 + (length_d2_d3 t_2_1))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0 xs_7 ys_1_5 =
  (match xs_7 with
    | `LH_C(h_3_1, t_3_5) -> 
      (`LH_C(h_3_1, ((mappend_d0_d0 t_3_5) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_d0_d1 xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_7, t_9) -> 
      (`LH_C(h_7, ((mappend_d0_d1 t_9) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_d1_d0 xs_3 ys_7 =
  (match xs_3 with
    | `LH_C(h_1_1, t_1_4) -> 
      (`LH_C(h_1_1, ((mappend_d1_d0 t_1_4) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_d1_d1 xs_6 ys_1_4 =
  (match xs_6 with
    | `LH_C(h_2_7, t_3_1) -> 
      (`LH_C(h_2_7, ((mappend_d1_d1 t_3_1) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d1_d2 xs_5 ys_1_1 =
  (match xs_5 with
    | `LH_C(h_1_9, t_2_3) -> 
      (`LH_C(h_1_9, ((mappend_d1_d2 t_2_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d1_d3 xs_4 ys_1_0 =
  (match xs_4 with
    | `LH_C(h_1_6, t_1_9) -> 
      (`LH_C(h_1_6, ((mappend_d1_d3 t_1_9) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d2_d0 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec mappend_d2_d1 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec mappend_d2_d2 xs_8 ys_1_6 =
  (xs_8 ys_1_6);;
let rec mappend_d2_d3 xs_9 ys_1_7 =
  (xs_9 ys_1_7);;
let rec max_d0_d0 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 > _lh_max_arg2_2) then
    _lh_max_arg1_2
  else
    _lh_max_arg2_2);;
let rec max_d0_d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec max_d0_d2 _lh_max_arg1_3 _lh_max_arg2_3 =
  (if (_lh_max_arg1_3 > _lh_max_arg2_3) then
    _lh_max_arg1_3
  else
    _lh_max_arg2_3);;
let rec max_d0_d3 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec reverse_helper_d0_d0 ls_1_5 a_2_1 =
  (ls_1_5 a_2_1);;
let rec reverse_helper_d0_d1 ls_2_0 a_2_8 =
  (ls_2_0 a_2_8);;
let rec reverse_helper_d0_d2 ls_2_6 a_3_0 =
  (ls_2_6 a_3_0);;
let rec reverse_helper_d0_d3 ls_2 a_7 =
  (ls_2 a_7);;
let rec alphabeticRule_d0_d0 _lh_alphabeticRule_arg1_0 =
  (match _lh_alphabeticRule_arg1_0 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_0, _lh_alphabeticRule_LH_C_1_3) -> 
      (match _lh_alphabeticRule_LH_C_1_3 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1, _lh_alphabeticRule_LH_C_1_4) -> 
          (match _lh_alphabeticRule_LH_C_0_1 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_4 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2, _lh_alphabeticRule_LH_C_1_5) -> 
                  (match _lh_alphabeticRule_LH_C_1_5 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3, _lh_alphabeticRule_LH_C_1_6) -> 
                      (match _lh_alphabeticRule_LH_C_0_3 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_0) <= (int_of_char _lh_alphabeticRule_LH_C_0_2)) then
                            (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_6 -> 
                              ((_lh_listcomp_fun_para_6 _lh_alphabeticRule_LH_C_1_6) _lh_listcomp_fun_1_5)) in
                              (_lh_listcomp_fun_1_5 ((enumFromTo_d0_d0 (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_7 -> 
                              ((_lh_listcomp_fun_para_7 _lh_alphabeticRule_LH_C_1_6) _lh_listcomp_fun_1_6)) in
                              (_lh_listcomp_fun_1_6 (reverse_d0_d1 ((enumFromTo_d1_d0 (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
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
and alphabeticRule_d0_d1 _lh_alphabeticRule_arg1_3 =
  (match _lh_alphabeticRule_arg1_3 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_1_2, _lh_alphabeticRule_LH_C_1_2_8) -> 
      (match _lh_alphabeticRule_LH_C_1_2_8 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1_3, _lh_alphabeticRule_LH_C_1_2_9) -> 
          (match _lh_alphabeticRule_LH_C_0_1_3 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_2_9 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_1_4, _lh_alphabeticRule_LH_C_1_3_0) -> 
                  (match _lh_alphabeticRule_LH_C_1_3_0 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_1_5, _lh_alphabeticRule_LH_C_1_3_1) -> 
                      (match _lh_alphabeticRule_LH_C_0_1_5 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_1_2) <= (int_of_char _lh_alphabeticRule_LH_C_0_1_4)) then
                            (let rec _lh_listcomp_fun_7_1 = (fun _lh_listcomp_fun_para_3_3 -> 
                              ((_lh_listcomp_fun_para_3_3 _lh_alphabeticRule_LH_C_1_3_1) _lh_listcomp_fun_7_1)) in
                              (_lh_listcomp_fun_7_1 ((enumFromTo_d0_d1 (int_of_char _lh_alphabeticRule_LH_C_0_1_2)) (int_of_char _lh_alphabeticRule_LH_C_0_1_4))))
                          else
                            (let rec _lh_listcomp_fun_7_2 = (fun _lh_listcomp_fun_para_3_4 -> 
                              ((_lh_listcomp_fun_para_3_4 _lh_alphabeticRule_LH_C_1_3_1) _lh_listcomp_fun_7_2)) in
                              (_lh_listcomp_fun_7_2 (reverse_d0_d0 ((enumFromTo_d1_d1 (int_of_char _lh_alphabeticRule_LH_C_0_1_4)) (int_of_char _lh_alphabeticRule_LH_C_0_1_2))))))
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
and alphabeticRule_d0_d2 _lh_alphabeticRule_arg1_2 =
  (match _lh_alphabeticRule_arg1_2 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_8, _lh_alphabeticRule_LH_C_1_2_4) -> 
      (match _lh_alphabeticRule_LH_C_1_2_4 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_9, _lh_alphabeticRule_LH_C_1_2_5) -> 
          (match _lh_alphabeticRule_LH_C_0_9 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_2_5 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_1_0, _lh_alphabeticRule_LH_C_1_2_6) -> 
                  (match _lh_alphabeticRule_LH_C_1_2_6 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_1_1, _lh_alphabeticRule_LH_C_1_2_7) -> 
                      (match _lh_alphabeticRule_LH_C_0_1_1 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_8) <= (int_of_char _lh_alphabeticRule_LH_C_0_1_0)) then
                            (let rec _lh_listcomp_fun_6_9 = (fun _lh_listcomp_fun_para_3_1 -> 
                              ((_lh_listcomp_fun_para_3_1 _lh_alphabeticRule_LH_C_1_2_7) _lh_listcomp_fun_6_9)) in
                              (_lh_listcomp_fun_6_9 ((enumFromTo_d0_d2 (int_of_char _lh_alphabeticRule_LH_C_0_8)) (int_of_char _lh_alphabeticRule_LH_C_0_1_0))))
                          else
                            (let rec _lh_listcomp_fun_7_0 = (fun _lh_listcomp_fun_para_3_2 -> 
                              ((_lh_listcomp_fun_para_3_2 _lh_alphabeticRule_LH_C_1_2_7) _lh_listcomp_fun_7_0)) in
                              (_lh_listcomp_fun_7_0 (reverse_d0_d2 ((enumFromTo_d1_d2 (int_of_char _lh_alphabeticRule_LH_C_0_1_0)) (int_of_char _lh_alphabeticRule_LH_C_0_8))))))
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
and alphabeticRule_d0_d3 _lh_alphabeticRule_arg1_1 =
  (match _lh_alphabeticRule_arg1_1 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_4, _lh_alphabeticRule_LH_C_1_1_3) -> 
      (match _lh_alphabeticRule_LH_C_1_1_3 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_5, _lh_alphabeticRule_LH_C_1_1_4) -> 
          (match _lh_alphabeticRule_LH_C_0_5 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_1_4 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_6, _lh_alphabeticRule_LH_C_1_1_5) -> 
                  (match _lh_alphabeticRule_LH_C_1_1_5 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_7, _lh_alphabeticRule_LH_C_1_1_6) -> 
                      (match _lh_alphabeticRule_LH_C_0_7 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_4) <= (int_of_char _lh_alphabeticRule_LH_C_0_6)) then
                            (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_1_5 -> 
                              ((_lh_listcomp_fun_para_1_5 _lh_alphabeticRule_LH_C_1_1_6) _lh_listcomp_fun_3_2)) in
                              (_lh_listcomp_fun_3_2 ((enumFromTo_d0_d3 (int_of_char _lh_alphabeticRule_LH_C_0_4)) (int_of_char _lh_alphabeticRule_LH_C_0_6))))
                          else
                            (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_1_6 -> 
                              ((_lh_listcomp_fun_para_1_6 _lh_alphabeticRule_LH_C_1_1_6) _lh_listcomp_fun_3_3)) in
                              (_lh_listcomp_fun_3_3 (reverse_d0_d3 ((enumFromTo_d1_d3 (int_of_char _lh_alphabeticRule_LH_C_0_6)) (int_of_char _lh_alphabeticRule_LH_C_0_4))))))
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
and concat_d0_d0 lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_5) -> 
      ((mappend_d0_d1 h_3) (concat_d0_d1 t_5))
    | `LH_N -> 
      (`LH_N))
and concat_d0_d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_4, t_3_8) -> 
      ((mappend_d0_d0 h_3_4) (concat_d0_d1 t_3_8))
    | `LH_N -> 
      (`LH_N))
and constantRule_d0_d0 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_1_4 -> 
        (match _lh_listcomp_fun_para_1_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_8) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_1_7)), (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_1_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3_0 (expand_d0_d1 _lh_constantRule_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d1 _lh_constantRule_arg1_2 =
  (match _lh_constantRule_arg1_2 with
    | `LH_C(_lh_constantRule_LH_C_0_2, _lh_constantRule_LH_C_1_2) -> 
      (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_1_9 -> 
        (match _lh_listcomp_fun_para_1_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_2) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_2, _lh_listcomp_fun_ls_h_2_0)), (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_2_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_1 (expand_d0_d1 _lh_constantRule_LH_C_1_2)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d2 _lh_constantRule_arg1_5 =
  (match _lh_constantRule_arg1_5 with
    | `LH_C(_lh_constantRule_LH_C_0_5, _lh_constantRule_LH_C_1_5) -> 
      (let rec _lh_listcomp_fun_6_4 = (fun _lh_listcomp_fun_para_2_8 -> 
        (match _lh_listcomp_fun_para_2_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_7) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_5, _lh_listcomp_fun_ls_h_3_3)), (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_3_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6_4 (expand_d0_d0 _lh_constantRule_LH_C_1_5)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d3 _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_0, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 (expand_d0_d2 _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d4 _lh_constantRule_arg1_4 =
  (match _lh_constantRule_arg1_4 with
    | `LH_C(_lh_constantRule_LH_C_0_4, _lh_constantRule_LH_C_1_4) -> 
      (let rec _lh_listcomp_fun_4_5 = (fun _lh_listcomp_fun_para_2_1 -> 
        (match _lh_listcomp_fun_para_2_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_5) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_4, _lh_listcomp_fun_ls_h_2_2)), (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_2_5)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_5 (expand_d0_d3 _lh_constantRule_LH_C_1_4)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d5 _lh_constantRule_arg1_3 =
  (match _lh_constantRule_arg1_3 with
    | `LH_C(_lh_constantRule_LH_C_0_3, _lh_constantRule_LH_C_1_3) -> 
      (let rec _lh_listcomp_fun_4_4 = (fun _lh_listcomp_fun_para_2_0 -> 
        (match _lh_listcomp_fun_para_2_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_4) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_3, _lh_listcomp_fun_ls_h_2_1)), (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_2_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_4 (expand_d0_d3 _lh_constantRule_LH_C_1_3)))
    | _ -> 
      (failwith "error"))
and enumFromThenTo_d0_d0 a_3 t_1 b_1 =
  (if (a_3 <= b_1) then
    (let rec _lh_listcomp_fun_ls_h_3 = (lazy a_3) in
      (let rec _lh_listcomp_fun_ls_t_3 = (lazy (((enumFromThenTo_d0_d0 t_1) ((2 * t_1) - a_3)) b_1)) in
        (fun _lh_listcomp_fun_3 _lh_numericRule_LH_C_1_0 width_0 -> 
          (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
            (match _lh_listcomp_fun_para_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                (`LH_C(((mappend_d1_d0 ((pad_d0_d0 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_3))) width_0)) _lh_listcomp_fun_ls_h_4), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
              | `LH_N -> 
                (_lh_listcomp_fun_3 (Lazy.force _lh_listcomp_fun_ls_t_3)))) in
            (_lh_listcomp_fun_4 (expand_d0_d1 _lh_numericRule_LH_C_1_0))))))
  else
    (fun _lh_listcomp_fun_5 _lh_numericRule_LH_C_1_1 width_1 -> 
      (`LH_N)))
and enumFromThenTo_d0_d1 a_4 t_2 b_2 =
  (if (a_4 <= b_2) then
    (let rec _lh_listcomp_fun_ls_h_5 = (lazy a_4) in
      (let rec _lh_listcomp_fun_ls_t_5 = (lazy (((enumFromThenTo_d0_d1 t_2) ((2 * t_2) - a_4)) b_2)) in
        (fun _lh_listcomp_fun_6 _lh_numericRule_LH_C_1_2 width_2 -> 
          (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_3 -> 
            (match _lh_listcomp_fun_para_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                (`LH_C(((mappend_d1_d1 ((pad_d0_d1 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_5))) width_2)) _lh_listcomp_fun_ls_h_6), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_6)))
              | `LH_N -> 
                (_lh_listcomp_fun_6 (Lazy.force _lh_listcomp_fun_ls_t_5)))) in
            (_lh_listcomp_fun_7 (expand_d0_d2 _lh_numericRule_LH_C_1_2))))))
  else
    (fun _lh_listcomp_fun_8 _lh_numericRule_LH_C_1_3 width_3 -> 
      (`LH_N)))
and enumFromThenTo_d0_d2 a_1_4 t_1_0 b_9 =
  (if (a_1_4 <= b_9) then
    (let rec _lh_listcomp_fun_ls_h_1_8 = (lazy a_1_4) in
      (let rec _lh_listcomp_fun_ls_t_1_9 = (lazy (((enumFromThenTo_d0_d2 t_1_0) ((2 * t_1_0) - a_1_4)) b_9)) in
        (fun _lh_listcomp_fun_3_6 _lh_numericRule_LH_C_1_1_2 width_8 -> 
          (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_1_8 -> 
            (match _lh_listcomp_fun_para_1_8 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_2_0) -> 
                (`LH_C(((mappend_d1_d3 ((pad_d0_d3 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_1_8))) width_8)) _lh_listcomp_fun_ls_h_1_9), (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_0)))
              | `LH_N -> 
                (_lh_listcomp_fun_3_6 (Lazy.force _lh_listcomp_fun_ls_t_1_9)))) in
            (_lh_listcomp_fun_3_7 (expand_d0_d3 _lh_numericRule_LH_C_1_1_2))))))
  else
    (fun _lh_listcomp_fun_3_8 _lh_numericRule_LH_C_1_1_3 width_9 -> 
      (`LH_N)))
and enumFromThenTo_d0_d3 a_1_9 t_2_0 b_1_4 =
  (if (a_1_9 <= b_1_4) then
    (let rec _lh_listcomp_fun_ls_h_2_7 = (lazy a_1_9) in
      (let rec _lh_listcomp_fun_ls_t_3_0 = (lazy (((enumFromThenTo_d0_d3 t_2_0) ((2 * t_2_0) - a_1_9)) b_1_4)) in
        (fun _lh_listcomp_fun_5_3 _lh_numericRule_LH_C_1_1_8 width_1_4 -> 
          (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_2_4 -> 
            (match _lh_listcomp_fun_para_2_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_3_1) -> 
                (`LH_C(((mappend_d1_d2 ((pad_d0_d2 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_2_7))) width_1_4)) _lh_listcomp_fun_ls_h_2_8), (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_3_1)))
              | `LH_N -> 
                (_lh_listcomp_fun_5_3 (Lazy.force _lh_listcomp_fun_ls_t_3_0)))) in
            (_lh_listcomp_fun_5_4 (expand_d0_d3 _lh_numericRule_LH_C_1_1_8))))))
  else
    (fun _lh_listcomp_fun_5_5 _lh_numericRule_LH_C_1_1_9 width_1_5 -> 
      (`LH_N)))
and enumFromTo_d0_d0 a_1_2 b_7 =
  (if (a_1_2 <= b_7) then
    (let rec _lh_listcomp_fun_ls_h_1_3 = (lazy a_1_2) in
      (let rec _lh_listcomp_fun_ls_t_1_4 = (lazy ((enumFromTo_d0_d0 (a_1_2 + 1)) b_7)) in
        (fun _lh_alphabeticRule_LH_C_1_1_0 _lh_listcomp_fun_2_4 -> 
          (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_1_2 -> 
            (match _lh_listcomp_fun_para_1_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_5) -> 
                (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_1_3)), _lh_listcomp_fun_ls_h_1_4)), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_5)))
              | `LH_N -> 
                (_lh_listcomp_fun_2_4 (Lazy.force _lh_listcomp_fun_ls_t_1_4)))) in
            (_lh_listcomp_fun_2_5 (expand_d0_d0 _lh_alphabeticRule_LH_C_1_1_0))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_1_1 _lh_listcomp_fun_2_6 -> 
      (`LH_N)))
and enumFromTo_d0_d1 a_8 b_5 =
  (if (a_8 <= b_5) then
    (let rec _lh_listcomp_fun_ls_h_9 = (lazy a_8) in
      (let rec _lh_listcomp_fun_ls_t_1_0 = (lazy ((enumFromTo_d0_d1 (a_8 + 1)) b_5)) in
        (fun _lh_alphabeticRule_LH_C_1_7 _lh_listcomp_fun_1_8 -> 
          (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_9 -> 
            (match _lh_listcomp_fun_para_9 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_1) -> 
                (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_9)), _lh_listcomp_fun_ls_h_1_0)), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_1)))
              | `LH_N -> 
                (_lh_listcomp_fun_1_8 (Lazy.force _lh_listcomp_fun_ls_t_1_0)))) in
            (_lh_listcomp_fun_1_9 (expand_d0_d1 _lh_alphabeticRule_LH_C_1_7))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_8 _lh_listcomp_fun_2_0 -> 
      (`LH_N)))
and enumFromTo_d0_d2 a_6 b_4 =
  (if (a_6 <= b_4) then
    (let rec _lh_listcomp_fun_ls_h_7 = (lazy a_6) in
      (let rec _lh_listcomp_fun_ls_t_8 = (lazy ((enumFromTo_d0_d2 (a_6 + 1)) b_4)) in
        (fun _lh_alphabeticRule_LH_C_1_1 _lh_listcomp_fun_1_2 -> 
          (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_5 -> 
            (match _lh_listcomp_fun_para_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_9) -> 
                (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_7)), _lh_listcomp_fun_ls_h_8)), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_9)))
              | `LH_N -> 
                (_lh_listcomp_fun_1_2 (Lazy.force _lh_listcomp_fun_ls_t_8)))) in
            (_lh_listcomp_fun_1_3 (expand_d0_d2 _lh_alphabeticRule_LH_C_1_1))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_2 _lh_listcomp_fun_1_4 -> 
      (`LH_N)))
and enumFromTo_d0_d3 a_2_9 b_1_8 =
  (if (a_2_9 <= b_1_8) then
    (let rec _lh_listcomp_fun_ls_h_3_4 = (lazy a_2_9) in
      (let rec _lh_listcomp_fun_ls_t_3_8 = (lazy ((enumFromTo_d0_d3 (a_2_9 + 1)) b_1_8)) in
        (fun _lh_alphabeticRule_LH_C_1_2_2 _lh_listcomp_fun_6_6 -> 
          (let rec _lh_listcomp_fun_6_7 = (fun _lh_listcomp_fun_para_3_0 -> 
            (match _lh_listcomp_fun_para_3_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_5, _lh_listcomp_fun_ls_t_3_9) -> 
                (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_3_4)), _lh_listcomp_fun_ls_h_3_5)), (_lh_listcomp_fun_6_7 _lh_listcomp_fun_ls_t_3_9)))
              | `LH_N -> 
                (_lh_listcomp_fun_6_6 (Lazy.force _lh_listcomp_fun_ls_t_3_8)))) in
            (_lh_listcomp_fun_6_7 (expand_d0_d3 _lh_alphabeticRule_LH_C_1_2_2))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_2_3 _lh_listcomp_fun_6_8 -> 
      (`LH_N)))
and enumFromTo_d1_d0 a_2_5 b_1_7 =
  (if (a_2_5 <= b_1_7) then
    (let rec h_2_8 = (lazy a_2_5) in
      (let rec t_3_2 = (lazy ((enumFromTo_d1_d0 (a_2_5 + 1)) b_1_7)) in
        (fun a_2_6 -> 
          ((reverse_helper_d0_d1 (Lazy.force t_3_2)) (let rec _lh_listcomp_fun_ls_h_3_1 = (lazy (Lazy.force h_2_8)) in
            (let rec _lh_listcomp_fun_ls_t_3_5 = (lazy a_2_6) in
              (fun _lh_alphabeticRule_LH_C_1_2_1 _lh_listcomp_fun_6_2 -> 
                (let rec _lh_listcomp_fun_6_3 = (fun _lh_listcomp_fun_para_2_7 -> 
                  (match _lh_listcomp_fun_para_2_7 with
                    | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_3_6) -> 
                      (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_3_1)), _lh_listcomp_fun_ls_h_3_2)), (_lh_listcomp_fun_6_3 _lh_listcomp_fun_ls_t_3_6)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_6_2 (Lazy.force _lh_listcomp_fun_ls_t_3_5)))) in
                  (_lh_listcomp_fun_6_3 (expand_d0_d1 _lh_alphabeticRule_LH_C_1_2_1))))))))))
  else
    (fun a_2_7 -> 
      a_2_7))
and enumFromTo_d1_d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_0 = (lazy a_0) in
      (let rec t_0 = (lazy ((enumFromTo_d1_d1 (a_0 + 1)) b_0)) in
        (fun a_1 -> 
          ((reverse_helper_d0_d0 (Lazy.force t_0)) (let rec _lh_listcomp_fun_ls_h_0 = (lazy (Lazy.force h_0)) in
            (let rec _lh_listcomp_fun_ls_t_0 = (lazy a_1) in
              (fun _lh_alphabeticRule_LH_C_1_0 _lh_listcomp_fun_0 -> 
                (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
                  (match _lh_listcomp_fun_para_0 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                      (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_0)), _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_0 (Lazy.force _lh_listcomp_fun_ls_t_0)))) in
                  (_lh_listcomp_fun_1 (expand_d0_d1 _lh_alphabeticRule_LH_C_1_0))))))))))
  else
    (fun a_2 -> 
      a_2))
and enumFromTo_d1_d2 a_2_2 b_1_6 =
  (if (a_2_2 <= b_1_6) then
    (let rec h_2_5 = (lazy a_2_2) in
      (let rec t_2_9 = (lazy ((enumFromTo_d1_d2 (a_2_2 + 1)) b_1_6)) in
        (fun a_2_3 -> 
          ((reverse_helper_d0_d2 (Lazy.force t_2_9)) (let rec _lh_listcomp_fun_ls_h_2_9 = (lazy (Lazy.force h_2_5)) in
            (let rec _lh_listcomp_fun_ls_t_3_3 = (lazy a_2_3) in
              (fun _lh_alphabeticRule_LH_C_1_1_9 _lh_listcomp_fun_5_8 -> 
                (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_2_5 -> 
                  (match _lh_listcomp_fun_para_2_5 with
                    | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_4) -> 
                      (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_2_9)), _lh_listcomp_fun_ls_h_3_0)), (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_3_4)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_5_8 (Lazy.force _lh_listcomp_fun_ls_t_3_3)))) in
                  (_lh_listcomp_fun_5_9 (expand_d0_d2 _lh_alphabeticRule_LH_C_1_1_9))))))))))
  else
    (fun a_2_4 -> 
      a_2_4))
and enumFromTo_d1_d3 a_9 b_6 =
  (if (a_9 <= b_6) then
    (let rec h_5 = (lazy a_9) in
      (let rec t_7 = (lazy ((enumFromTo_d1_d3 (a_9 + 1)) b_6)) in
        (fun a_1_0 -> 
          ((reverse_helper_d0_d3 (Lazy.force t_7)) (let rec _lh_listcomp_fun_ls_h_1_1 = (lazy (Lazy.force h_5)) in
            (let rec _lh_listcomp_fun_ls_t_1_2 = (lazy a_1_0) in
              (fun _lh_alphabeticRule_LH_C_1_9 _lh_listcomp_fun_2_1 -> 
                (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_0 -> 
                  (match _lh_listcomp_fun_para_1_0 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_3) -> 
                      (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_1_1)), _lh_listcomp_fun_ls_h_1_2)), (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_3)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_2_1 (Lazy.force _lh_listcomp_fun_ls_t_1_2)))) in
                  (_lh_listcomp_fun_2_2 (expand_d0_d3 _lh_alphabeticRule_LH_C_1_9))))))))))
  else
    (fun a_1_1 -> 
      a_1_1))
and enumFromTo_d2_d0 a_3_1 b_1_9 =
  (if (a_3_1 <= b_1_9) then
    (let rec _lh_listcomp_fun_ls_h_3_6 = (lazy a_3_1) in
      (let rec _lh_listcomp_fun_ls_t_4_0 = (lazy ((enumFromTo_d2_d0 (a_3_1 + 1)) b_1_9)) in
        (fun _lh_listcomp_fun_7_5 _lh_numericRule_LH_C_1_2_6 width_1_8 -> 
          (let rec _lh_listcomp_fun_7_6 = (fun _lh_listcomp_fun_para_3_7 -> 
            (match _lh_listcomp_fun_para_3_7 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_4_1) -> 
                (`LH_C(((mappend_d1_d0 ((pad_d0_d0 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_3_6))) width_1_8)) _lh_listcomp_fun_ls_h_3_7), (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_4_1)))
              | `LH_N -> 
                (_lh_listcomp_fun_7_5 (Lazy.force _lh_listcomp_fun_ls_t_4_0)))) in
            (_lh_listcomp_fun_7_6 (expand_d0_d1 _lh_numericRule_LH_C_1_2_6))))))
  else
    (fun _lh_listcomp_fun_7_7 _lh_numericRule_LH_C_1_2_7 width_1_9 -> 
      (`LH_N)))
and enumFromTo_d2_d1 a_1_3 b_8 =
  (if (a_1_3 <= b_8) then
    (let rec _lh_listcomp_fun_ls_h_1_5 = (lazy a_1_3) in
      (let rec _lh_listcomp_fun_ls_t_1_6 = (lazy ((enumFromTo_d2_d1 (a_1_3 + 1)) b_8)) in
        (fun _lh_listcomp_fun_2_7 _lh_numericRule_LH_C_1_7 width_5 -> 
          (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_1_3 -> 
            (match _lh_listcomp_fun_para_1_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_7) -> 
                (`LH_C(((mappend_d1_d1 ((pad_d0_d1 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_1_5))) width_5)) _lh_listcomp_fun_ls_h_1_6), (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_1_7)))
              | `LH_N -> 
                (_lh_listcomp_fun_2_7 (Lazy.force _lh_listcomp_fun_ls_t_1_6)))) in
            (_lh_listcomp_fun_2_8 (expand_d0_d2 _lh_numericRule_LH_C_1_7))))))
  else
    (fun _lh_listcomp_fun_2_9 _lh_numericRule_LH_C_1_8 width_6 -> 
      (`LH_N)))
and enumFromTo_d2_d2 a_1_7 b_1_2 =
  (if (a_1_7 <= b_1_2) then
    (let rec _lh_listcomp_fun_ls_h_2_3 = (lazy a_1_7) in
      (let rec _lh_listcomp_fun_ls_t_2_6 = (lazy ((enumFromTo_d2_d2 (a_1_7 + 1)) b_1_2)) in
        (fun _lh_listcomp_fun_4_7 _lh_numericRule_LH_C_1_1_4 width_1_0 -> 
          (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_2_2 -> 
            (match _lh_listcomp_fun_para_2_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_7) -> 
                (`LH_C(((mappend_d1_d3 ((pad_d0_d3 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_2_3))) width_1_0)) _lh_listcomp_fun_ls_h_2_4), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_2_7)))
              | `LH_N -> 
                (_lh_listcomp_fun_4_7 (Lazy.force _lh_listcomp_fun_ls_t_2_6)))) in
            (_lh_listcomp_fun_4_8 (expand_d0_d3 _lh_numericRule_LH_C_1_1_4))))))
  else
    (fun _lh_listcomp_fun_4_9 _lh_numericRule_LH_C_1_1_5 width_1_1 -> 
      (`LH_N)))
and enumFromTo_d2_d3 a_1_8 b_1_3 =
  (if (a_1_8 <= b_1_3) then
    (let rec _lh_listcomp_fun_ls_h_2_5 = (lazy a_1_8) in
      (let rec _lh_listcomp_fun_ls_t_2_8 = (lazy ((enumFromTo_d2_d3 (a_1_8 + 1)) b_1_3)) in
        (fun _lh_listcomp_fun_5_0 _lh_numericRule_LH_C_1_1_6 width_1_2 -> 
          (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_2_3 -> 
            (match _lh_listcomp_fun_para_2_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_9) -> 
                (`LH_C(((mappend_d1_d2 ((pad_d0_d2 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_2_5))) width_1_2)) _lh_listcomp_fun_ls_h_2_6), (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_2_9)))
              | `LH_N -> 
                (_lh_listcomp_fun_5_0 (Lazy.force _lh_listcomp_fun_ls_t_2_8)))) in
            (_lh_listcomp_fun_5_1 (expand_d0_d3 _lh_numericRule_LH_C_1_1_6))))))
  else
    (fun _lh_listcomp_fun_5_2 _lh_numericRule_LH_C_1_1_7 width_1_3 -> 
      (`LH_N)))
and enumFromTo_d3_d0 a_2_0 b_1_5 =
  (if (a_2_0 <= b_1_5) then
    (let rec _lh_listcomp_fun_ls_t_3_2 = (lazy ((enumFromTo_d3_d0 (a_2_0 + 1)) b_1_5)) in
      (fun _lh_listcomp_fun_5_6 -> 
        (let rec h_2_0 = (lazy '0') in
          (let rec t_2_4 = (lazy (_lh_listcomp_fun_5_6 (Lazy.force _lh_listcomp_fun_ls_t_3_2))) in
            (fun ys_1_2 -> 
              (`LH_C((Lazy.force h_2_0), ((mappend_d2_d0 (Lazy.force t_2_4)) ys_1_2))))))))
  else
    (fun _lh_listcomp_fun_5_7 ys_1_3 -> 
      ys_1_3))
and enumFromTo_d3_d1 a_1_5 b_1_0 =
  (if (a_1_5 <= b_1_0) then
    (let rec _lh_listcomp_fun_ls_t_2_1 = (lazy ((enumFromTo_d3_d1 (a_1_5 + 1)) b_1_0)) in
      (fun _lh_listcomp_fun_3_9 -> 
        (let rec h_8 = (lazy '0') in
          (let rec t_1_1 = (lazy (_lh_listcomp_fun_3_9 (Lazy.force _lh_listcomp_fun_ls_t_2_1))) in
            (fun ys_5 -> 
              (`LH_C((Lazy.force h_8), ((mappend_d2_d1 (Lazy.force t_1_1)) ys_5))))))))
  else
    (fun _lh_listcomp_fun_4_0 ys_6 -> 
      ys_6))
and enumFromTo_d3_d2 a_1_6 b_1_1 =
  (if (a_1_6 <= b_1_1) then
    (let rec _lh_listcomp_fun_ls_t_2_3 = (lazy ((enumFromTo_d3_d2 (a_1_6 + 1)) b_1_1)) in
      (fun _lh_listcomp_fun_4_2 -> 
        (let rec h_1_4 = (lazy '0') in
          (let rec t_1_7 = (lazy (_lh_listcomp_fun_4_2 (Lazy.force _lh_listcomp_fun_ls_t_2_3))) in
            (fun ys_8 -> 
              (`LH_C((Lazy.force h_1_4), ((mappend_d2_d2 (Lazy.force t_1_7)) ys_8))))))))
  else
    (fun _lh_listcomp_fun_4_3 ys_9 -> 
      ys_9))
and enumFromTo_d3_d3 a_5 b_3 =
  (if (a_5 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_7 = (lazy ((enumFromTo_d3_d3 (a_5 + 1)) b_3)) in
      (fun _lh_listcomp_fun_9 -> 
        (let rec h_1 = (lazy '0') in
          (let rec t_3 = (lazy (_lh_listcomp_fun_9 (Lazy.force _lh_listcomp_fun_ls_t_7))) in
            (fun ys_0 -> 
              (`LH_C((Lazy.force h_1), ((mappend_d2_d3 (Lazy.force t_3)) ys_0))))))))
  else
    (fun _lh_listcomp_fun_1_0 ys_1 -> 
      ys_1))
and expand_d0_d0 _lh_expand_arg1_2 =
  (match _lh_expand_arg1_2 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_2, _lh_expand_LH_C_1_2) -> 
      (match _lh_expand_LH_C_0_2 with
        | '<' -> 
          (numericRule_d0_d2 _lh_expand_LH_C_1_2)
        | '[' -> 
          (alphabeticRule_d0_d0 _lh_expand_LH_C_1_2)
        | _ -> 
          (constantRule_d0_d2 _lh_expand_arg1_2))
    | _ -> 
      (constantRule_d0_d3 _lh_expand_arg1_2))
and expand_d0_d1 _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule_d0_d0 _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule_d0_d1 _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule_d0_d0 _lh_expand_arg1_0))
    | _ -> 
      (constantRule_d0_d1 _lh_expand_arg1_0))
and expand_d0_d2 _lh_expand_arg1_1 =
  (match _lh_expand_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_1, _lh_expand_LH_C_1_1) -> 
      (match _lh_expand_LH_C_0_1 with
        | '<' -> 
          (numericRule_d0_d1 _lh_expand_LH_C_1_1)
        | '[' -> 
          (alphabeticRule_d0_d2 _lh_expand_LH_C_1_1)
        | _ -> 
          (constantRule_d0_d3 _lh_expand_arg1_1))
    | _ -> 
      (constantRule_d0_d3 _lh_expand_arg1_1))
and expand_d0_d3 _lh_expand_arg1_3 =
  (match _lh_expand_arg1_3 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_3, _lh_expand_LH_C_1_3) -> 
      (match _lh_expand_LH_C_0_3 with
        | '<' -> 
          (numericRule_d0_d3 _lh_expand_LH_C_1_3)
        | '[' -> 
          (alphabeticRule_d0_d3 _lh_expand_LH_C_1_3)
        | _ -> 
          (constantRule_d0_d4 _lh_expand_arg1_3))
    | _ -> 
      (constantRule_d0_d5 _lh_expand_arg1_3))
and mknum_d0_d0 _lh_mknum_arg1_1 =
  (((foldl_d0_d0 (fun u_1 c_1 -> 
    ((u_1 * 10) + ((int_of_char c_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1)
and mknum_d0_d1 _lh_mknum_arg1_7 =
  (((foldl_d0_d1 (fun u_7 c_1_3 -> 
    ((u_7 * 10) + ((int_of_char c_1_3) - (int_of_char '0'))))) 0) _lh_mknum_arg1_7)
and mknum_d0_d2 _lh_mknum_arg1_3 =
  (((foldl_d0_d2 (fun u_3 c_5 -> 
    ((u_3 * 10) + ((int_of_char c_5) - (int_of_char '0'))))) 0) _lh_mknum_arg1_3)
and mknum_d0_d3 _lh_mknum_arg1_0 =
  (((foldl_d0_d3 (fun u_0 c_0 -> 
    ((u_0 * 10) + ((int_of_char c_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0)
and mknum_d1_d0 _lh_mknum_arg1_2 =
  (((foldl_d1_d0 (fun u_2 c_4 -> 
    ((u_2 * 10) + ((int_of_char c_4) - (int_of_char '0'))))) 0) _lh_mknum_arg1_2)
and mknum_d1_d1 _lh_mknum_arg1_4 =
  (((foldl_d1_d1 (fun u_4 c_8 -> 
    ((u_4 * 10) + ((int_of_char c_8) - (int_of_char '0'))))) 0) _lh_mknum_arg1_4)
and mknum_d1_d2 _lh_mknum_arg1_6 =
  (((foldl_d1_d2 (fun u_6 c_1_2 -> 
    ((u_6 * 10) + ((int_of_char c_1_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_6)
and mknum_d1_d3 _lh_mknum_arg1_5 =
  (((foldl_d1_d3 (fun u_5 c_9 -> 
    ((u_5 * 10) + ((int_of_char c_9) - (int_of_char '0'))))) 0) _lh_mknum_arg1_5)
and numericRule_d0_d0 _lh_numericRule_arg1_1 =
  (let rec _lh_matchIdent_4 = ((span_d0_d0 (fun c_6 -> 
    (c_6 != '-'))) _lh_numericRule_arg1_1) in
    (match _lh_matchIdent_4 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3, _lh_numericRule_LH_P2_1_3) -> 
        (match _lh_numericRule_LH_P2_1_3 with
          | `LH_C(_lh_numericRule_LH_C_0_2, _lh_numericRule_LH_C_1_9) -> 
            (let rec _lh_matchIdent_5 = ((span_d1_d0 (fun c_7 -> 
              (c_7 != '>'))) _lh_numericRule_LH_C_1_9) in
              (match _lh_matchIdent_5 with
                | `LH_P2(_lh_numericRule_LH_P2_0_4, _lh_numericRule_LH_P2_1_4) -> 
                  (match _lh_numericRule_LH_P2_1_4 with
                    | `LH_C(_lh_numericRule_LH_C_0_3, _lh_numericRule_LH_C_1_1_0) -> 
                      (let rec _lh_matchIdent_6 = (let rec _lh_numericRule_LH_P2_0_5 = (lazy (mknum_d0_d0 _lh_numericRule_LH_P2_0_3)) in
                        (let rec _lh_numericRule_LH_P2_1_5 = (lazy (mknum_d1_d0 _lh_numericRule_LH_P2_0_4)) in
                          (fun _lh_numericRule_LH_C_1_1_1 -> 
                            (let rec width_7 = ((max_d0_d0 (length_d0_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_5)))) (length_d1_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_5)))) in
                              (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_1_7 -> 
                                (((_lh_listcomp_fun_para_1_7 _lh_listcomp_fun_3_5) _lh_numericRule_LH_C_1_1_1) width_7)) in
                                (_lh_listcomp_fun_3_5 (if ((Lazy.force _lh_numericRule_LH_P2_0_5) < (Lazy.force _lh_numericRule_LH_P2_1_5)) then
                                  ((enumFromTo_d2_d0 (Lazy.force _lh_numericRule_LH_P2_0_5)) (Lazy.force _lh_numericRule_LH_P2_1_5))
                                else
                                  (((enumFromThenTo_d0_d0 (Lazy.force _lh_numericRule_LH_P2_0_5)) ((Lazy.force _lh_numericRule_LH_P2_0_5) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_5))))))))) in
                        (_lh_matchIdent_6 _lh_numericRule_LH_C_1_1_0))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d1 _lh_numericRule_arg1_2 =
  (let rec _lh_matchIdent_1_2 = ((span_d0_d1 (fun c_1_0 -> 
    (c_1_0 != '-'))) _lh_numericRule_arg1_2) in
    (match _lh_matchIdent_1_2 with
      | `LH_P2(_lh_numericRule_LH_P2_0_6, _lh_numericRule_LH_P2_1_6) -> 
        (match _lh_numericRule_LH_P2_1_6 with
          | `LH_C(_lh_numericRule_LH_C_0_4, _lh_numericRule_LH_C_1_2_0) -> 
            (let rec _lh_matchIdent_1_3 = ((span_d1_d1 (fun c_1_1 -> 
              (c_1_1 != '>'))) _lh_numericRule_LH_C_1_2_0) in
              (match _lh_matchIdent_1_3 with
                | `LH_P2(_lh_numericRule_LH_P2_0_7, _lh_numericRule_LH_P2_1_7) -> 
                  (match _lh_numericRule_LH_P2_1_7 with
                    | `LH_C(_lh_numericRule_LH_C_0_5, _lh_numericRule_LH_C_1_2_1) -> 
                      (let rec _lh_matchIdent_1_4 = (let rec _lh_numericRule_LH_P2_0_8 = (lazy (mknum_d0_d1 _lh_numericRule_LH_P2_0_6)) in
                        (let rec _lh_numericRule_LH_P2_1_8 = (lazy (mknum_d1_d1 _lh_numericRule_LH_P2_0_7)) in
                          (fun _lh_numericRule_LH_C_1_2_2 -> 
                            (let rec width_1_6 = ((max_d0_d1 (length_d0_d1 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_8)))) (length_d1_d1 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_8)))) in
                              (let rec _lh_listcomp_fun_6_0 = (fun _lh_listcomp_fun_para_2_6 -> 
                                (((_lh_listcomp_fun_para_2_6 _lh_listcomp_fun_6_0) _lh_numericRule_LH_C_1_2_2) width_1_6)) in
                                (_lh_listcomp_fun_6_0 (if ((Lazy.force _lh_numericRule_LH_P2_0_8) < (Lazy.force _lh_numericRule_LH_P2_1_8)) then
                                  ((enumFromTo_d2_d1 (Lazy.force _lh_numericRule_LH_P2_0_8)) (Lazy.force _lh_numericRule_LH_P2_1_8))
                                else
                                  (((enumFromThenTo_d0_d1 (Lazy.force _lh_numericRule_LH_P2_0_8)) ((Lazy.force _lh_numericRule_LH_P2_0_8) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_8))))))))) in
                        (_lh_matchIdent_1_4 _lh_numericRule_LH_C_1_2_1))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d2 _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_0 = ((span_d0_d3 (fun c_2 -> 
    (c_2 != '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_P2(_lh_numericRule_LH_P2_0_0, _lh_numericRule_LH_P2_1_0) -> 
        (match _lh_numericRule_LH_P2_1_0 with
          | `LH_C(_lh_numericRule_LH_C_0_0, _lh_numericRule_LH_C_1_4) -> 
            (let rec _lh_matchIdent_1 = ((span_d1_d3 (fun c_3 -> 
              (c_3 != '>'))) _lh_numericRule_LH_C_1_4) in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1, _lh_numericRule_LH_P2_1_1) -> 
                  (match _lh_numericRule_LH_P2_1_1 with
                    | `LH_C(_lh_numericRule_LH_C_0_1, _lh_numericRule_LH_C_1_5) -> 
                      (let rec _lh_matchIdent_2 = (let rec _lh_numericRule_LH_P2_0_2 = (lazy (mknum_d0_d3 _lh_numericRule_LH_P2_0_0)) in
                        (let rec _lh_numericRule_LH_P2_1_2 = (lazy (mknum_d1_d3 _lh_numericRule_LH_P2_0_1)) in
                          (fun _lh_numericRule_LH_C_1_6 -> 
                            (let rec width_4 = ((max_d0_d3 (length_d0_d3 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_2)))) (length_d1_d3 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_2)))) in
                              (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_8 -> 
                                (((_lh_listcomp_fun_para_8 _lh_listcomp_fun_1_7) _lh_numericRule_LH_C_1_6) width_4)) in
                                (_lh_listcomp_fun_1_7 (if ((Lazy.force _lh_numericRule_LH_P2_0_2) < (Lazy.force _lh_numericRule_LH_P2_1_2)) then
                                  ((enumFromTo_d2_d2 (Lazy.force _lh_numericRule_LH_P2_0_2)) (Lazy.force _lh_numericRule_LH_P2_1_2))
                                else
                                  (((enumFromThenTo_d0_d2 (Lazy.force _lh_numericRule_LH_P2_0_2)) ((Lazy.force _lh_numericRule_LH_P2_0_2) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_2))))))))) in
                        (_lh_matchIdent_2 _lh_numericRule_LH_C_1_5))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d3 _lh_numericRule_arg1_3 =
  (let rec _lh_matchIdent_1_7 = ((span_d0_d2 (fun c_1_4 -> 
    (c_1_4 != '-'))) _lh_numericRule_arg1_3) in
    (match _lh_matchIdent_1_7 with
      | `LH_P2(_lh_numericRule_LH_P2_0_9, _lh_numericRule_LH_P2_1_9) -> 
        (match _lh_numericRule_LH_P2_1_9 with
          | `LH_C(_lh_numericRule_LH_C_0_6, _lh_numericRule_LH_C_1_2_3) -> 
            (let rec _lh_matchIdent_1_8 = ((span_d1_d2 (fun c_1_5 -> 
              (c_1_5 != '>'))) _lh_numericRule_LH_C_1_2_3) in
              (match _lh_matchIdent_1_8 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_0, _lh_numericRule_LH_P2_1_1_0) -> 
                  (match _lh_numericRule_LH_P2_1_1_0 with
                    | `LH_C(_lh_numericRule_LH_C_0_7, _lh_numericRule_LH_C_1_2_4) -> 
                      (let rec _lh_matchIdent_1_9 = (let rec _lh_numericRule_LH_P2_0_1_1 = (lazy (mknum_d0_d2 _lh_numericRule_LH_P2_0_9)) in
                        (let rec _lh_numericRule_LH_P2_1_1_1 = (lazy (mknum_d1_d2 _lh_numericRule_LH_P2_0_1_0)) in
                          (fun _lh_numericRule_LH_C_1_2_5 -> 
                            (let rec width_1_7 = ((max_d0_d2 (length_d0_d2 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_1_1)))) (length_d1_d2 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_1_1)))) in
                              (let rec _lh_listcomp_fun_7_3 = (fun _lh_listcomp_fun_para_3_5 -> 
                                (((_lh_listcomp_fun_para_3_5 _lh_listcomp_fun_7_3) _lh_numericRule_LH_C_1_2_5) width_1_7)) in
                                (_lh_listcomp_fun_7_3 (if ((Lazy.force _lh_numericRule_LH_P2_0_1_1) < (Lazy.force _lh_numericRule_LH_P2_1_1_1)) then
                                  ((enumFromTo_d2_d3 (Lazy.force _lh_numericRule_LH_P2_0_1_1)) (Lazy.force _lh_numericRule_LH_P2_1_1_1))
                                else
                                  (((enumFromThenTo_d0_d3 (Lazy.force _lh_numericRule_LH_P2_0_1_1)) ((Lazy.force _lh_numericRule_LH_P2_0_1_1) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_1_1))))))))) in
                        (_lh_matchIdent_1_9 _lh_numericRule_LH_C_1_2_4))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and pad_d0_d0 _lh_pad_arg1_1 _lh_pad_arg2_1 =
  ((mappend_d2_d0 (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_1 -> 
    (_lh_listcomp_fun_para_1_1 _lh_listcomp_fun_2_3)) in
    (_lh_listcomp_fun_2_3 ((enumFromTo_d3_d0 1) (_lh_pad_arg2_1 - (length_d2_d0 _lh_pad_arg1_1)))))) _lh_pad_arg1_1)
and pad_d0_d1 _lh_pad_arg1_2 _lh_pad_arg2_2 =
  ((mappend_d2_d1 (let rec _lh_listcomp_fun_6_5 = (fun _lh_listcomp_fun_para_2_9 -> 
    (_lh_listcomp_fun_para_2_9 _lh_listcomp_fun_6_5)) in
    (_lh_listcomp_fun_6_5 ((enumFromTo_d3_d1 1) (_lh_pad_arg2_2 - (length_d2_d1 _lh_pad_arg1_2)))))) _lh_pad_arg1_2)
and pad_d0_d2 _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend_d2_d2 (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_4 -> 
    (_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_1)) in
    (_lh_listcomp_fun_1_1 ((enumFromTo_d3_d2 1) (_lh_pad_arg2_0 - (length_d2_d2 _lh_pad_arg1_0)))))) _lh_pad_arg1_0)
and pad_d0_d3 _lh_pad_arg1_3 _lh_pad_arg2_3 =
  ((mappend_d2_d3 (let rec _lh_listcomp_fun_7_4 = (fun _lh_listcomp_fun_para_3_6 -> 
    (_lh_listcomp_fun_para_3_6 _lh_listcomp_fun_7_4)) in
    (_lh_listcomp_fun_7_4 ((enumFromTo_d3_d3 1) (_lh_pad_arg2_3 - (length_d2_d3 _lh_pad_arg1_3)))))) _lh_pad_arg1_3)
and reverse_d0_d0 ls_6 =
  ((reverse_helper_d0_d0 ls_6) (fun _lh_alphabeticRule_LH_C_1_1_7 _lh_listcomp_fun_3_4 -> 
    (`LH_N)))
and reverse_d0_d1 ls_1_9 =
  ((reverse_helper_d0_d1 ls_1_9) (fun _lh_alphabeticRule_LH_C_1_2_0 _lh_listcomp_fun_6_1 -> 
    (`LH_N)))
and reverse_d0_d2 ls_3 =
  ((reverse_helper_d0_d2 ls_3) (fun _lh_alphabeticRule_LH_C_1_1_2 _lh_listcomp_fun_3_1 -> 
    (`LH_N)))
and reverse_d0_d3 ls_8 =
  ((reverse_helper_d0_d3 ls_8) (fun _lh_alphabeticRule_LH_C_1_1_8 _lh_listcomp_fun_4_6 -> 
    (`LH_N)))
and span_d0_d0 _lh_span_arg1_2 _lh_span_arg2_2 =
  (match _lh_span_arg2_2 with
    | `LH_N -> 
      (`LH_P2((fun f_8 i_8 -> 
        i_8), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2) -> 
      (if (_lh_span_arg1_2 _lh_span_LH_C_0_2) then
        (let rec _lh_matchIdent_8 = ((span_d0_d0 _lh_span_arg1_2) _lh_span_LH_C_1_2) in
          (match _lh_matchIdent_8 with
            | `LH_P2(_lh_span_LH_P2_0_2, _lh_span_LH_P2_1_2) -> 
              (`LH_P2((let rec h_1_0 = (lazy _lh_span_LH_C_0_2) in
                (let rec t_1_3 = (lazy _lh_span_LH_P2_0_2) in
                  (fun f_9 i_9 -> 
                    (((foldl_d0_d0 f_9) ((f_9 i_9) (Lazy.force h_1_0))) (Lazy.force t_1_3))))), _lh_span_LH_P2_1_2))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_0 i_1_0 -> 
          i_1_0), (`LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2)))))
    | _ -> 
      (failwith "error"))
and span_d0_d1 _lh_span_arg1_3 _lh_span_arg2_3 =
  (match _lh_span_arg2_3 with
    | `LH_N -> 
      (`LH_P2((fun f_1_1 i_1_1 -> 
        i_1_1), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_3, _lh_span_LH_C_1_3) -> 
      (if (_lh_span_arg1_3 _lh_span_LH_C_0_3) then
        (let rec _lh_matchIdent_9 = ((span_d0_d1 _lh_span_arg1_3) _lh_span_LH_C_1_3) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_span_LH_P2_0_3, _lh_span_LH_P2_1_3) -> 
              (`LH_P2((let rec h_1_2 = (lazy _lh_span_LH_C_0_3) in
                (let rec t_1_5 = (lazy _lh_span_LH_P2_0_3) in
                  (fun f_1_2 i_1_2 -> 
                    (((foldl_d0_d1 f_1_2) ((f_1_2 i_1_2) (Lazy.force h_1_2))) (Lazy.force t_1_5))))), _lh_span_LH_P2_1_3))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_3 i_1_3 -> 
          i_1_3), (`LH_C(_lh_span_LH_C_0_3, _lh_span_LH_C_1_3)))))
    | _ -> 
      (failwith "error"))
and span_d0_d2 _lh_span_arg1_5 _lh_span_arg2_5 =
  (match _lh_span_arg2_5 with
    | `LH_N -> 
      (`LH_P2((fun f_1_7 i_1_7 -> 
        i_1_7), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_5, _lh_span_LH_C_1_5) -> 
      (if (_lh_span_arg1_5 _lh_span_LH_C_0_5) then
        (let rec _lh_matchIdent_1_1 = ((span_d0_d2 _lh_span_arg1_5) _lh_span_LH_C_1_5) in
          (match _lh_matchIdent_1_1 with
            | `LH_P2(_lh_span_LH_P2_0_5, _lh_span_LH_P2_1_5) -> 
              (`LH_P2((let rec h_2_3 = (lazy _lh_span_LH_C_0_5) in
                (let rec t_2_7 = (lazy _lh_span_LH_P2_0_5) in
                  (fun f_1_8 i_1_8 -> 
                    (((foldl_d0_d2 f_1_8) ((f_1_8 i_1_8) (Lazy.force h_2_3))) (Lazy.force t_2_7))))), _lh_span_LH_P2_1_5))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_9 i_1_9 -> 
          i_1_9), (`LH_C(_lh_span_LH_C_0_5, _lh_span_LH_C_1_5)))))
    | _ -> 
      (failwith "error"))
and span_d0_d3 _lh_span_arg1_4 _lh_span_arg2_4 =
  (match _lh_span_arg2_4 with
    | `LH_N -> 
      (`LH_P2((fun f_1_4 i_1_4 -> 
        i_1_4), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_4, _lh_span_LH_C_1_4) -> 
      (if (_lh_span_arg1_4 _lh_span_LH_C_0_4) then
        (let rec _lh_matchIdent_1_0 = ((span_d0_d3 _lh_span_arg1_4) _lh_span_LH_C_1_4) in
          (match _lh_matchIdent_1_0 with
            | `LH_P2(_lh_span_LH_P2_0_4, _lh_span_LH_P2_1_4) -> 
              (`LH_P2((let rec h_1_3 = (lazy _lh_span_LH_C_0_4) in
                (let rec t_1_6 = (lazy _lh_span_LH_P2_0_4) in
                  (fun f_1_5 i_1_5 -> 
                    (((foldl_d0_d3 f_1_5) ((f_1_5 i_1_5) (Lazy.force h_1_3))) (Lazy.force t_1_6))))), _lh_span_LH_P2_1_4))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_6 i_1_6 -> 
          i_1_6), (`LH_C(_lh_span_LH_C_0_4, _lh_span_LH_C_1_4)))))
    | _ -> 
      (failwith "error"))
and span_d1_d0 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun f_5 i_5 -> 
        i_5), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_7 = ((span_d1_d0 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_7 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((let rec h_9 = (lazy _lh_span_LH_C_0_1) in
                (let rec t_1_2 = (lazy _lh_span_LH_P2_0_1) in
                  (fun f_6 i_6 -> 
                    (((foldl_d1_d0 f_6) ((f_6 i_6) (Lazy.force h_9))) (Lazy.force t_1_2))))), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_7 i_7 -> 
          i_7), (`LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1)))))
    | _ -> 
      (failwith "error"))
and span_d1_d1 _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun f_1 i_1 -> 
        i_1), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_3 = ((span_d1_d1 _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((let rec h_4 = (lazy _lh_span_LH_C_0_0) in
                (let rec t_6 = (lazy _lh_span_LH_P2_0_0) in
                  (fun f_2 i_2 -> 
                    (((foldl_d1_d1 f_2) ((f_2 i_2) (Lazy.force h_4))) (Lazy.force t_6))))), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_3 i_3 -> 
          i_3), (`LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0)))))
    | _ -> 
      (failwith "error"))
and span_d1_d2 _lh_span_arg1_7 _lh_span_arg2_7 =
  (match _lh_span_arg2_7 with
    | `LH_N -> 
      (`LH_P2((fun f_2_6 i_2_6 -> 
        i_2_6), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_7, _lh_span_LH_C_1_7) -> 
      (if (_lh_span_arg1_7 _lh_span_LH_C_0_7) then
        (let rec _lh_matchIdent_1_6 = ((span_d1_d2 _lh_span_arg1_7) _lh_span_LH_C_1_7) in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_span_LH_P2_0_7, _lh_span_LH_P2_1_7) -> 
              (`LH_P2((let rec h_3_0 = (lazy _lh_span_LH_C_0_7) in
                (let rec t_3_4 = (lazy _lh_span_LH_P2_0_7) in
                  (fun f_2_7 i_2_7 -> 
                    (((foldl_d1_d2 f_2_7) ((f_2_7 i_2_7) (Lazy.force h_3_0))) (Lazy.force t_3_4))))), _lh_span_LH_P2_1_7))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_2_8 i_2_8 -> 
          i_2_8), (`LH_C(_lh_span_LH_C_0_7, _lh_span_LH_C_1_7)))))
    | _ -> 
      (failwith "error"))
and span_d1_d3 _lh_span_arg1_6 _lh_span_arg2_6 =
  (match _lh_span_arg2_6 with
    | `LH_N -> 
      (`LH_P2((fun f_2_3 i_2_3 -> 
        i_2_3), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_6, _lh_span_LH_C_1_6) -> 
      (if (_lh_span_arg1_6 _lh_span_LH_C_0_6) then
        (let rec _lh_matchIdent_1_5 = ((span_d1_d3 _lh_span_arg1_6) _lh_span_LH_C_1_6) in
          (match _lh_matchIdent_1_5 with
            | `LH_P2(_lh_span_LH_P2_0_6, _lh_span_LH_P2_1_6) -> 
              (`LH_P2((let rec h_2_9 = (lazy _lh_span_LH_C_0_6) in
                (let rec t_3_3 = (lazy _lh_span_LH_P2_0_6) in
                  (fun f_2_4 i_2_4 -> 
                    (((foldl_d1_d3 f_2_4) ((f_2_4 i_2_4) (Lazy.force h_2_9))) (Lazy.force t_3_3))))), _lh_span_LH_P2_1_6))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_2_5 i_2_5 -> 
          i_2_5), (`LH_C(_lh_span_LH_C_0_6, _lh_span_LH_C_1_6)))))
    | _ -> 
      (failwith "error"))
and testGenRegexs_nofib_d0_d0 _lh_testGenRegexs_nofib_arg1_0 =
  (concat_d0_d0 (expand_d0_d0 _lh_testGenRegexs_nofib_arg1_0));;

(* lumberhack_pop_out *)
let rec foldl_d0_d0_d0 f_4_9 i_4_9 ls_4_4 =
  ((ls_4_4 f_4_9) i_4_9);;
let rec foldl_d0_d0_d1 f_3_5 i_3_5 ls_2_8 =
  ((ls_2_8 f_3_5) i_3_5);;
let rec foldl_d0_d1_d0 f_6_8 i_6_8 ls_7_2 =
  ((ls_7_2 f_6_8) i_6_8);;
let rec foldl_d0_d1_d1 f_4_7 i_4_7 ls_4_1 =
  ((ls_4_1 f_4_7) i_4_7);;
let rec foldl_d0_d2_d0 f_6_6 i_6_6 ls_6_2 =
  ((ls_6_2 f_6_6) i_6_6);;
let rec foldl_d0_d2_d1 f_7_5 i_7_5 ls_7_6 =
  ((ls_7_6 f_7_5) i_7_5);;
let rec foldl_d0_d2_d2 f_7_6 i_7_6 ls_7_7 =
  ((ls_7_7 f_7_6) i_7_6);;
let rec foldl_d0_d2_d3 f_6_0 i_6_0 ls_5_3 =
  ((ls_5_3 f_6_0) i_6_0);;
let rec foldl_d0_d3_d0 f_4_4 i_4_4 ls_3_6 =
  ((ls_3_6 f_4_4) i_4_4);;
let rec foldl_d0_d3_d1 f_6_1 i_6_1 ls_5_5 =
  ((ls_5_5 f_6_1) i_6_1);;
let rec foldl_d1_d0_d0 f_6_7 i_6_7 ls_6_3 =
  ((ls_6_3 f_6_7) i_6_7);;
let rec foldl_d1_d0_d1 f_3_7 i_3_7 ls_3_2 =
  ((ls_3_2 f_3_7) i_3_7);;
let rec foldl_d1_d1_d0 f_3_6 i_3_6 ls_2_9 =
  ((ls_2_9 f_3_6) i_3_6);;
let rec foldl_d1_d1_d1 f_4_6 i_4_6 ls_3_9 =
  ((ls_3_9 f_4_6) i_4_6);;
let rec foldl_d1_d2_d0 f_6_2 i_6_2 ls_5_7 =
  ((ls_5_7 f_6_2) i_6_2);;
let rec foldl_d1_d2_d1 f_5_9 i_5_9 ls_5_2 =
  ((ls_5_2 f_5_9) i_5_9);;
let rec foldl_d1_d2_d2 f_8_0 i_8_0 ls_8_1 =
  ((ls_8_1 f_8_0) i_8_0);;
let rec foldl_d1_d2_d3 f_4_5 i_4_5 ls_3_7 =
  ((ls_3_7 f_4_5) i_4_5);;
let rec foldl_d1_d3_d0 f_8_1 i_8_1 ls_8_2 =
  ((ls_8_2 f_8_1) i_8_1);;
let rec foldl_d1_d3_d1 f_4_8 i_4_8 ls_4_2 =
  ((ls_4_2 f_4_8) i_4_8);;
let rec length_d0_d0_d0 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_8_0, t_8_7) -> 
      (1 + (length_d0_d0_d0 t_8_7))
    | `LH_N -> 
      0);;
let rec length_d0_d1_d0 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_5_9, t_6_6) -> 
      (1 + (length_d0_d1_d0 t_6_6))
    | `LH_N -> 
      0);;
let rec length_d0_d2_d0 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_5_1, t_5_6) -> 
      (1 + (length_d0_d2_d0 t_5_6))
    | `LH_N -> 
      0);;
let rec length_d0_d2_d1 ls_8_0 =
  (match ls_8_0 with
    | `LH_C(h_9_3, t_1_0_0) -> 
      (1 + (length_d0_d2_d1 t_1_0_0))
    | `LH_N -> 
      0);;
let rec length_d0_d3_d0 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_6_5, t_7_2) -> 
      (1 + (length_d0_d3_d0 t_7_2))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0 ls_7_3 =
  (match ls_7_3 with
    | `LH_C(h_8_5, t_9_2) -> 
      (1 + (length_d1_d0_d0 t_9_2))
    | `LH_N -> 
      0);;
let rec length_d1_d1_d0 ls_7_9 =
  (match ls_7_9 with
    | `LH_C(h_9_1, t_9_8) -> 
      (1 + (length_d1_d1_d0 t_9_8))
    | `LH_N -> 
      0);;
let rec length_d1_d2_d0 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_6_0, t_6_7) -> 
      (1 + (length_d1_d2_d0 t_6_7))
    | `LH_N -> 
      0);;
let rec length_d1_d2_d1 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_8_1, t_8_8) -> 
      (1 + (length_d1_d2_d1 t_8_8))
    | `LH_N -> 
      0);;
let rec length_d1_d3_d0 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_7_7, t_8_4) -> 
      (1 + (length_d1_d3_d0 t_8_4))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d0 ls_7_5 =
  (match ls_7_5 with
    | `LH_C(h_8_8, t_9_5) -> 
      (1 + (length_d2_d0_d0 t_9_5))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d1 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_6_8, t_7_5) -> 
      (1 + (length_d2_d0_d1 t_7_5))
    | `LH_N -> 
      0);;
let rec length_d2_d1_d0 ls_6_8 =
  (match ls_6_8 with
    | `LH_C(h_7_8, t_8_5) -> 
      (1 + (length_d2_d1_d0 t_8_5))
    | `LH_N -> 
      0);;
let rec length_d2_d1_d1 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_7_0, t_7_7) -> 
      (1 + (length_d2_d1_d1 t_7_7))
    | `LH_N -> 
      0);;
let rec length_d2_d2_d0 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_7_1, t_7_8) -> 
      (1 + (length_d2_d2_d0 t_7_8))
    | `LH_N -> 
      0);;
let rec length_d2_d2_d1 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_6_7, t_7_4) -> 
      (1 + (length_d2_d2_d1 t_7_4))
    | `LH_N -> 
      0);;
let rec length_d2_d2_d2 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_5_6, t_6_3) -> 
      (1 + (length_d2_d2_d2 t_6_3))
    | `LH_N -> 
      0);;
let rec length_d2_d2_d3 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_9, t_4_3) -> 
      (1 + (length_d2_d2_d3 t_4_3))
    | `LH_N -> 
      0);;
let rec length_d2_d3_d0 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_8_6, t_9_3) -> 
      (1 + (length_d2_d3_d0 t_9_3))
    | `LH_N -> 
      0);;
let rec length_d2_d3_d1 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_5_5, t_6_2) -> 
      (1 + (length_d2_d3_d1 t_6_2))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0 xs_1_0 ys_1_8 =
  (match xs_1_0 with
    | `LH_C(h_3_6, t_4_0) -> 
      (`LH_C(h_3_6, ((mappend_d0_d0_d0 t_4_0) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_d0_d1_d0 xs_1_5 ys_2_7 =
  (match xs_1_5 with
    | `LH_C(h_4_2, t_4_7) -> 
      (`LH_C(h_4_2, ((mappend_d0_d1_d0 t_4_7) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend_d1_d0_d0 xs_3_0 ys_5_0 =
  (match xs_3_0 with
    | `LH_C(h_6_4, t_7_1) -> 
      (`LH_C(h_6_4, ((mappend_d1_d0_d0 t_7_1) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec mappend_d1_d0_d1 xs_3_5 ys_5_9 =
  (match xs_3_5 with
    | `LH_C(h_8_2, t_8_9) -> 
      (`LH_C(h_8_2, ((mappend_d1_d0_d1 t_8_9) ys_5_9)))
    | `LH_N -> 
      ys_5_9);;
let rec mappend_d1_d1_d0 xs_1_9 ys_3_7 =
  (match xs_1_9 with
    | `LH_C(h_5_3, t_5_9) -> 
      (`LH_C(h_5_3, ((mappend_d1_d1_d0 t_5_9) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend_d1_d1_d1 xs_3_2 ys_5_6 =
  (match xs_3_2 with
    | `LH_C(h_7_4, t_8_1) -> 
      (`LH_C(h_7_4, ((mappend_d1_d1_d1 t_8_1) ys_5_6)))
    | `LH_N -> 
      ys_5_6);;
let rec mappend_d1_d2_d0 xs_2_3 ys_4_1 =
  (match xs_2_3 with
    | `LH_C(h_5_4, t_6_0) -> 
      (`LH_C(h_5_4, ((mappend_d1_d2_d0 t_6_0) ys_4_1)))
    | `LH_N -> 
      ys_4_1);;
let rec mappend_d1_d2_d1 xs_3_3 ys_5_7 =
  (match xs_3_3 with
    | `LH_C(h_7_6, t_8_3) -> 
      (`LH_C(h_7_6, ((mappend_d1_d2_d1 t_8_3) ys_5_7)))
    | `LH_N -> 
      ys_5_7);;
let rec mappend_d1_d2_d2 xs_2_8 ys_4_6 =
  (match xs_2_8 with
    | `LH_C(h_5_8, t_6_5) -> 
      (`LH_C(h_5_8, ((mappend_d1_d2_d2 t_6_5) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend_d1_d2_d3 xs_4_0 ys_6_8 =
  (match xs_4_0 with
    | `LH_C(h_9_2, t_9_9) -> 
      (`LH_C(h_9_2, ((mappend_d1_d2_d3 t_9_9) ys_6_8)))
    | `LH_N -> 
      ys_6_8);;
let rec mappend_d1_d3_d0 xs_1_3 ys_2_3 =
  (match xs_1_3 with
    | `LH_C(h_4_0, t_4_5) -> 
      (`LH_C(h_4_0, ((mappend_d1_d3_d0 t_4_5) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend_d1_d3_d1 xs_3_6 ys_6_0 =
  (match xs_3_6 with
    | `LH_C(h_8_3, t_9_0) -> 
      (`LH_C(h_8_3, ((mappend_d1_d3_d1 t_9_0) ys_6_0)))
    | `LH_N -> 
      ys_6_0);;
let rec mappend_d2_d0_d0 xs_3_9 ys_6_5 =
  (xs_3_9 ys_6_5);;
let rec mappend_d2_d0_d1 xs_1_2 ys_2_2 =
  (xs_1_2 ys_2_2);;
let rec mappend_d2_d0_d2 xs_2_9 ys_4_7 =
  (xs_2_9 ys_4_7);;
let rec mappend_d2_d0_d3 xs_1_7 ys_2_9 =
  (xs_1_7 ys_2_9);;
let rec mappend_d2_d1_d0 xs_3_7 ys_6_3 =
  (xs_3_7 ys_6_3);;
let rec mappend_d2_d1_d1 xs_2_6 ys_4_4 =
  (xs_2_6 ys_4_4);;
let rec mappend_d2_d1_d2 xs_1_6 ys_2_8 =
  (xs_1_6 ys_2_8);;
let rec mappend_d2_d1_d3 xs_2_5 ys_4_3 =
  (xs_2_5 ys_4_3);;
let rec mappend_d2_d2_d0 xs_3_1 ys_5_3 =
  (xs_3_1 ys_5_3);;
let rec mappend_d2_d2_d1 xs_2_1 ys_3_9 =
  (xs_2_1 ys_3_9);;
let rec mappend_d2_d2_d2 xs_4_1 ys_6_9 =
  (xs_4_1 ys_6_9);;
let rec mappend_d2_d2_d3 xs_2_4 ys_4_2 =
  (xs_2_4 ys_4_2);;
let rec mappend_d2_d2_d4 xs_1_1 ys_1_9 =
  (xs_1_1 ys_1_9);;
let rec mappend_d2_d2_d5 xs_1_8 ys_3_4 =
  (xs_1_8 ys_3_4);;
let rec mappend_d2_d2_d6 xs_3_8 ys_6_4 =
  (xs_3_8 ys_6_4);;
let rec mappend_d2_d2_d7 xs_2_7 ys_4_5 =
  (xs_2_7 ys_4_5);;
let rec mappend_d2_d3_d0 xs_2_2 ys_4_0 =
  (xs_2_2 ys_4_0);;
let rec mappend_d2_d3_d1 xs_1_4 ys_2_6 =
  (xs_1_4 ys_2_6);;
let rec mappend_d2_d3_d2 xs_3_4 ys_5_8 =
  (xs_3_4 ys_5_8);;
let rec mappend_d2_d3_d3 xs_2_0 ys_3_8 =
  (xs_2_0 ys_3_8);;
let rec max_d0_d0_d0 _lh_max_arg1_7 _lh_max_arg2_7 =
  (if (_lh_max_arg1_7 > _lh_max_arg2_7) then
    _lh_max_arg1_7
  else
    _lh_max_arg2_7);;
let rec max_d0_d1_d0 _lh_max_arg1_5 _lh_max_arg2_5 =
  (if (_lh_max_arg1_5 > _lh_max_arg2_5) then
    _lh_max_arg1_5
  else
    _lh_max_arg2_5);;
let rec max_d0_d2_d0 _lh_max_arg1_4 _lh_max_arg2_4 =
  (if (_lh_max_arg1_4 > _lh_max_arg2_4) then
    _lh_max_arg1_4
  else
    _lh_max_arg2_4);;
let rec max_d0_d2_d1 _lh_max_arg1_6 _lh_max_arg2_6 =
  (if (_lh_max_arg1_6 > _lh_max_arg2_6) then
    _lh_max_arg1_6
  else
    _lh_max_arg2_6);;
let rec max_d0_d3_d0 _lh_max_arg1_8 _lh_max_arg2_8 =
  (if (_lh_max_arg1_8 > _lh_max_arg2_8) then
    _lh_max_arg1_8
  else
    _lh_max_arg2_8);;
let rec reverse_helper_d0_d0_d0 ls_7_1 a_7_2 =
  (ls_7_1 a_7_2);;
let rec reverse_helper_d0_d0_d1 ls_3_3 a_3_7 =
  (ls_3_3 a_3_7);;
let rec reverse_helper_d0_d1_d0 ls_6_7 a_6_8 =
  (ls_6_7 a_6_8);;
let rec reverse_helper_d0_d1_d1 ls_5_1 a_5_5 =
  (ls_5_1 a_5_5);;
let rec reverse_helper_d0_d2_d0 ls_6_5 a_6_7 =
  (ls_6_5 a_6_7);;
let rec reverse_helper_d0_d2_d1 ls_4_9 a_5_4 =
  (ls_4_9 a_5_4);;
let rec reverse_helper_d0_d3_d0 ls_3_5 a_4_3 =
  (ls_3_5 a_4_3);;
let rec reverse_helper_d0_d3_d1 ls_7_8 a_7_7 =
  (ls_7_8 a_7_7);;
let rec reverse_helper_d0_d3_d2 ls_5_4 a_5_6 =
  (ls_5_4 a_5_6);;
let rec reverse_helper_d0_d3_d3 ls_4_0 a_5_1 =
  (ls_4_0 a_5_1);;
let rec alphabeticRule_d0_d0_d0 _lh_alphabeticRule_arg1_8 =
  (match _lh_alphabeticRule_arg1_8 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_3_2, _lh_alphabeticRule_LH_C_1_6_6) -> 
      (match _lh_alphabeticRule_LH_C_1_6_6 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_3_3, _lh_alphabeticRule_LH_C_1_6_7) -> 
          (match _lh_alphabeticRule_LH_C_0_3_3 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_6_7 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_3_4, _lh_alphabeticRule_LH_C_1_6_8) -> 
                  (match _lh_alphabeticRule_LH_C_1_6_8 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3_5, _lh_alphabeticRule_LH_C_1_6_9) -> 
                      (match _lh_alphabeticRule_LH_C_0_3_5 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_3_2) <= (int_of_char _lh_alphabeticRule_LH_C_0_3_4)) then
                            (let rec _lh_listcomp_fun_1_7_6 = (fun _lh_listcomp_fun_para_8_4 -> 
                              ((_lh_listcomp_fun_para_8_4 _lh_alphabeticRule_LH_C_1_6_9) _lh_listcomp_fun_1_7_6)) in
                              (_lh_listcomp_fun_1_7_6 ((enumFromTo_d0_d0_d0 (int_of_char _lh_alphabeticRule_LH_C_0_3_2)) (int_of_char _lh_alphabeticRule_LH_C_0_3_4))))
                          else
                            (let rec _lh_listcomp_fun_1_7_7 = (fun _lh_listcomp_fun_para_8_5 -> 
                              ((_lh_listcomp_fun_para_8_5 _lh_alphabeticRule_LH_C_1_6_9) _lh_listcomp_fun_1_7_7)) in
                              (_lh_listcomp_fun_1_7_7 (reverse_d0_d1_d0 ((enumFromTo_d1_d0_d0 (int_of_char _lh_alphabeticRule_LH_C_0_3_4)) (int_of_char _lh_alphabeticRule_LH_C_0_3_2))))))
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
and alphabeticRule_d0_d1_d0 _lh_alphabeticRule_arg1_6 =
  (match _lh_alphabeticRule_arg1_6 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_2_4, _lh_alphabeticRule_LH_C_1_4_9) -> 
      (match _lh_alphabeticRule_LH_C_1_4_9 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_2_5, _lh_alphabeticRule_LH_C_1_5_0) -> 
          (match _lh_alphabeticRule_LH_C_0_2_5 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_5_0 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2_6, _lh_alphabeticRule_LH_C_1_5_1) -> 
                  (match _lh_alphabeticRule_LH_C_1_5_1 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_2_7, _lh_alphabeticRule_LH_C_1_5_2) -> 
                      (match _lh_alphabeticRule_LH_C_0_2_7 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_2_4) <= (int_of_char _lh_alphabeticRule_LH_C_0_2_6)) then
                            (let rec _lh_listcomp_fun_1_3_9 = (fun _lh_listcomp_fun_para_6_6 -> 
                              ((_lh_listcomp_fun_para_6_6 _lh_alphabeticRule_LH_C_1_5_2) _lh_listcomp_fun_1_3_9)) in
                              (_lh_listcomp_fun_1_3_9 ((enumFromTo_d0_d1_d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_4)) (int_of_char _lh_alphabeticRule_LH_C_0_2_6))))
                          else
                            (let rec _lh_listcomp_fun_1_4_0 = (fun _lh_listcomp_fun_para_6_7 -> 
                              ((_lh_listcomp_fun_para_6_7 _lh_alphabeticRule_LH_C_1_5_2) _lh_listcomp_fun_1_4_0)) in
                              (_lh_listcomp_fun_1_4_0 (reverse_d0_d0_d0 ((enumFromTo_d1_d1_d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_6)) (int_of_char _lh_alphabeticRule_LH_C_0_2_4))))))
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
and alphabeticRule_d0_d2_d0 _lh_alphabeticRule_arg1_4 =
  (match _lh_alphabeticRule_arg1_4 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_1_6, _lh_alphabeticRule_LH_C_1_4_1) -> 
      (match _lh_alphabeticRule_LH_C_1_4_1 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1_7, _lh_alphabeticRule_LH_C_1_4_2) -> 
          (match _lh_alphabeticRule_LH_C_0_1_7 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_4_2 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_1_8, _lh_alphabeticRule_LH_C_1_4_3) -> 
                  (match _lh_alphabeticRule_LH_C_1_4_3 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_1_9, _lh_alphabeticRule_LH_C_1_4_4) -> 
                      (match _lh_alphabeticRule_LH_C_0_1_9 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_1_6) <= (int_of_char _lh_alphabeticRule_LH_C_0_1_8)) then
                            (let rec _lh_listcomp_fun_1_2_5 = (fun _lh_listcomp_fun_para_5_6 -> 
                              ((_lh_listcomp_fun_para_5_6 _lh_alphabeticRule_LH_C_1_4_4) _lh_listcomp_fun_1_2_5)) in
                              (_lh_listcomp_fun_1_2_5 ((enumFromTo_d0_d2_d0 (int_of_char _lh_alphabeticRule_LH_C_0_1_6)) (int_of_char _lh_alphabeticRule_LH_C_0_1_8))))
                          else
                            (let rec _lh_listcomp_fun_1_2_6 = (fun _lh_listcomp_fun_para_5_7 -> 
                              ((_lh_listcomp_fun_para_5_7 _lh_alphabeticRule_LH_C_1_4_4) _lh_listcomp_fun_1_2_6)) in
                              (_lh_listcomp_fun_1_2_6 (reverse_d0_d2_d0 ((enumFromTo_d1_d2_d0 (int_of_char _lh_alphabeticRule_LH_C_0_1_8)) (int_of_char _lh_alphabeticRule_LH_C_0_1_6))))))
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
and alphabeticRule_d0_d3_d0 _lh_alphabeticRule_arg1_5 =
  (match _lh_alphabeticRule_arg1_5 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_2_0, _lh_alphabeticRule_LH_C_1_4_5) -> 
      (match _lh_alphabeticRule_LH_C_1_4_5 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_2_1, _lh_alphabeticRule_LH_C_1_4_6) -> 
          (match _lh_alphabeticRule_LH_C_0_2_1 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_4_6 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2_2, _lh_alphabeticRule_LH_C_1_4_7) -> 
                  (match _lh_alphabeticRule_LH_C_1_4_7 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_2_3, _lh_alphabeticRule_LH_C_1_4_8) -> 
                      (match _lh_alphabeticRule_LH_C_0_2_3 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_2_0) <= (int_of_char _lh_alphabeticRule_LH_C_0_2_2)) then
                            (let rec _lh_listcomp_fun_1_2_8 = (fun _lh_listcomp_fun_para_5_9 -> 
                              ((_lh_listcomp_fun_para_5_9 _lh_alphabeticRule_LH_C_1_4_8) _lh_listcomp_fun_1_2_8)) in
                              (_lh_listcomp_fun_1_2_8 ((enumFromTo_d0_d3_d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2_2))))
                          else
                            (let rec _lh_listcomp_fun_1_2_9 = (fun _lh_listcomp_fun_para_6_0 -> 
                              ((_lh_listcomp_fun_para_6_0 _lh_alphabeticRule_LH_C_1_4_8) _lh_listcomp_fun_1_2_9)) in
                              (_lh_listcomp_fun_1_2_9 (reverse_d0_d3_d0 ((enumFromTo_d1_d3_d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_2)) (int_of_char _lh_alphabeticRule_LH_C_0_2_0))))))
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
and alphabeticRule_d0_d3_d1 _lh_alphabeticRule_arg1_7 =
  (match _lh_alphabeticRule_arg1_7 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_2_8, _lh_alphabeticRule_LH_C_1_6_2) -> 
      (match _lh_alphabeticRule_LH_C_1_6_2 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_2_9, _lh_alphabeticRule_LH_C_1_6_3) -> 
          (match _lh_alphabeticRule_LH_C_0_2_9 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_6_3 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_3_0, _lh_alphabeticRule_LH_C_1_6_4) -> 
                  (match _lh_alphabeticRule_LH_C_1_6_4 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3_1, _lh_alphabeticRule_LH_C_1_6_5) -> 
                      (match _lh_alphabeticRule_LH_C_0_3_1 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_2_8) <= (int_of_char _lh_alphabeticRule_LH_C_0_3_0)) then
                            (let rec _lh_listcomp_fun_1_7_4 = (fun _lh_listcomp_fun_para_8_2 -> 
                              ((_lh_listcomp_fun_para_8_2 _lh_alphabeticRule_LH_C_1_6_5) _lh_listcomp_fun_1_7_4)) in
                              (_lh_listcomp_fun_1_7_4 ((enumFromTo_d0_d3_d1 (int_of_char _lh_alphabeticRule_LH_C_0_2_8)) (int_of_char _lh_alphabeticRule_LH_C_0_3_0))))
                          else
                            (let rec _lh_listcomp_fun_1_7_5 = (fun _lh_listcomp_fun_para_8_3 -> 
                              ((_lh_listcomp_fun_para_8_3 _lh_alphabeticRule_LH_C_1_6_5) _lh_listcomp_fun_1_7_5)) in
                              (_lh_listcomp_fun_1_7_5 (reverse_d0_d3_d1 ((enumFromTo_d1_d3_d1 (int_of_char _lh_alphabeticRule_LH_C_0_3_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2_8))))))
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
and concat_d0_d0_d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_4_8, t_5_3) -> 
      ((mappend_d0_d1_d0 h_4_8) (concat_d0_d1_d0 t_5_3))
    | `LH_N -> 
      (`LH_N))
and concat_d0_d1_d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_4_4, t_4_9) -> 
      ((mappend_d0_d0_d0 h_4_4) (concat_d0_d1_d0 t_4_9))
    | `LH_N -> 
      (`LH_N))
and constantRule_d0_d0_d0 _lh_constantRule_arg1_9 =
  (match _lh_constantRule_arg1_9 with
    | `LH_C(_lh_constantRule_LH_C_0_9, _lh_constantRule_LH_C_1_9) -> 
      (let rec _lh_listcomp_fun_1_2_7 = (fun _lh_listcomp_fun_para_5_8 -> 
        (match _lh_listcomp_fun_para_5_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_5_9, _lh_listcomp_fun_ls_t_6_8) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_9, _lh_listcomp_fun_ls_h_5_9)), (_lh_listcomp_fun_1_2_7 _lh_listcomp_fun_ls_t_6_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2_7 (expand_d0_d1_d0 _lh_constantRule_LH_C_1_9)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d1_d0 _lh_constantRule_arg1_1_1 =
  (match _lh_constantRule_arg1_1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1_1, _lh_constantRule_LH_C_1_1_1) -> 
      (let rec _lh_listcomp_fun_1_3_4 = (fun _lh_listcomp_fun_para_6_3 -> 
        (match _lh_listcomp_fun_para_6_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_1, _lh_listcomp_fun_ls_t_7_1) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_1, _lh_listcomp_fun_ls_h_6_1)), (_lh_listcomp_fun_1_3_4 _lh_listcomp_fun_ls_t_7_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_3_4 (expand_d0_d1_d0 _lh_constantRule_LH_C_1_1_1)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d2_d0 _lh_constantRule_arg1_1_2 =
  (match _lh_constantRule_arg1_1_2 with
    | `LH_C(_lh_constantRule_LH_C_0_1_2, _lh_constantRule_LH_C_1_1_2) -> 
      (let rec _lh_listcomp_fun_1_4_7 = (fun _lh_listcomp_fun_para_7_0 -> 
        (match _lh_listcomp_fun_para_7_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_4, _lh_listcomp_fun_ls_t_7_6) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_2, _lh_listcomp_fun_ls_h_6_4)), (_lh_listcomp_fun_1_4_7 _lh_listcomp_fun_ls_t_7_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_4_7 (expand_d0_d0_d0 _lh_constantRule_LH_C_1_1_2)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d3_d0 _lh_constantRule_arg1_7 =
  (match _lh_constantRule_arg1_7 with
    | `LH_C(_lh_constantRule_LH_C_0_7, _lh_constantRule_LH_C_1_7) -> 
      (let rec _lh_listcomp_fun_9_3 = (fun _lh_listcomp_fun_para_4_5 -> 
        (match _lh_listcomp_fun_para_4_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_5, _lh_listcomp_fun_ls_t_5_0) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_7, _lh_listcomp_fun_ls_h_4_5)), (_lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_5_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9_3 (expand_d0_d2_d0 _lh_constantRule_LH_C_1_7)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d4_d0 _lh_constantRule_arg1_1_0 =
  (match _lh_constantRule_arg1_1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_1_0, _lh_constantRule_LH_C_1_1_0) -> 
      (let rec _lh_listcomp_fun_1_3_3 = (fun _lh_listcomp_fun_para_6_2 -> 
        (match _lh_listcomp_fun_para_6_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_t_7_0) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_0, _lh_listcomp_fun_ls_h_6_0)), (_lh_listcomp_fun_1_3_3 _lh_listcomp_fun_ls_t_7_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_3_3 (expand_d0_d3_d0 _lh_constantRule_LH_C_1_1_0)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d4_d1 _lh_constantRule_arg1_8 =
  (match _lh_constantRule_arg1_8 with
    | `LH_C(_lh_constantRule_LH_C_0_8, _lh_constantRule_LH_C_1_8) -> 
      (let rec _lh_listcomp_fun_1_1_0 = (fun _lh_listcomp_fun_para_4_9 -> 
        (match _lh_listcomp_fun_para_4_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_5_0, _lh_listcomp_fun_ls_t_5_9) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_8, _lh_listcomp_fun_ls_h_5_0)), (_lh_listcomp_fun_1_1_0 _lh_listcomp_fun_ls_t_5_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_1_0 (expand_d0_d3_d1 _lh_constantRule_LH_C_1_8)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d5_d0 _lh_constantRule_arg1_6 =
  (match _lh_constantRule_arg1_6 with
    | `LH_C(_lh_constantRule_LH_C_0_6, _lh_constantRule_LH_C_1_6) -> 
      (let rec _lh_listcomp_fun_8_2 = (fun _lh_listcomp_fun_para_4_0 -> 
        (match _lh_listcomp_fun_para_4_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_8, _lh_listcomp_fun_ls_t_4_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_6, _lh_listcomp_fun_ls_h_3_8)), (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_4_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_2 (expand_d0_d3_d0 _lh_constantRule_LH_C_1_6)))
    | _ -> 
      (failwith "error"))
and constantRule_d0_d5_d1 _lh_constantRule_arg1_1_3 =
  (match _lh_constantRule_arg1_1_3 with
    | `LH_C(_lh_constantRule_LH_C_0_1_3, _lh_constantRule_LH_C_1_1_3) -> 
      (let rec _lh_listcomp_fun_1_6_0 = (fun _lh_listcomp_fun_para_7_7 -> 
        (match _lh_listcomp_fun_para_7_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_7_1, _lh_listcomp_fun_ls_t_8_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_3, _lh_listcomp_fun_ls_h_7_1)), (_lh_listcomp_fun_1_6_0 _lh_listcomp_fun_ls_t_8_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_6_0 (expand_d0_d3_d1 _lh_constantRule_LH_C_1_1_3)))
    | _ -> 
      (failwith "error"))
and enumFromThenTo_d0_d0_d0 a_3_4 t_4_4 b_2_2 _lh_popOutId_0_3 _lh_popOutId_1_2 _lh_popOutId_2_0 =
  (if (a_3_4 <= b_2_2) then
    (let rec _lh_listcomp_fun_ls_h_4_1 = (lazy a_3_4) in
      (let rec _lh_listcomp_fun_ls_t_4_6 = (lazy (((enumFromThenTo_d0_d0_d0 t_4_4) ((2 * t_4_4) - a_3_4)) b_2_2)) in
        (let rec _lh_listcomp_fun_8_7 = (fun _lh_listcomp_fun_para_4_2 -> 
          (match _lh_listcomp_fun_para_4_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_2, _lh_listcomp_fun_ls_t_4_7) -> 
              (`LH_C(((mappend_d1_d0_d0 ((pad_d0_d0_d0 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_4_1))) _lh_popOutId_2_0)) _lh_listcomp_fun_ls_h_4_2), (_lh_listcomp_fun_8_7 _lh_listcomp_fun_ls_t_4_7)))
            | `LH_N -> 
              (_lh_popOutId_0_3 (Lazy.force _lh_listcomp_fun_ls_t_4_6)))) in
          (_lh_listcomp_fun_8_7 (expand_d0_d1_d0 _lh_popOutId_1_2)))))
  else
    (`LH_N))
and enumFromThenTo_d0_d1_d0 a_5_2 t_6_1 b_3_3 _lh_popOutId_0_4 _lh_popOutId_1_3 _lh_popOutId_2_1 =
  (if (a_5_2 <= b_3_3) then
    (let rec _lh_listcomp_fun_ls_h_5_7 = (lazy a_5_2) in
      (let rec _lh_listcomp_fun_ls_t_6_6 = (lazy (((enumFromThenTo_d0_d1_d0 t_6_1) ((2 * t_6_1) - a_5_2)) b_3_3)) in
        (let rec _lh_listcomp_fun_1_2_2 = (fun _lh_listcomp_fun_para_5_4 -> 
          (match _lh_listcomp_fun_para_5_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_t_6_7) -> 
              (`LH_C(((mappend_d1_d1_d0 ((pad_d0_d1_d0 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_5_7))) _lh_popOutId_2_1)) _lh_listcomp_fun_ls_h_5_8), (_lh_listcomp_fun_1_2_2 _lh_listcomp_fun_ls_t_6_7)))
            | `LH_N -> 
              (_lh_popOutId_0_4 (Lazy.force _lh_listcomp_fun_ls_t_6_6)))) in
          (_lh_listcomp_fun_1_2_2 (expand_d0_d2_d0 _lh_popOutId_1_3)))))
  else
    (`LH_N))
and enumFromThenTo_d0_d2_d0 a_7_9 t_1_0_2 b_4_7 _lh_popOutId_0_1_2 _lh_popOutId_1_1_0 _lh_popOutId_2_4 =
  (if (a_7_9 <= b_4_7) then
    (let rec _lh_listcomp_fun_ls_h_8_0 = (lazy a_7_9) in
      (let rec _lh_listcomp_fun_ls_t_9_4 = (lazy (((enumFromThenTo_d0_d2_d0 t_1_0_2) ((2 * t_1_0_2) - a_7_9)) b_4_7)) in
        (let rec _lh_listcomp_fun_1_8_3 = (fun _lh_listcomp_fun_para_8_8 -> 
          (match _lh_listcomp_fun_para_8_8 with
            | `LH_C(_lh_listcomp_fun_ls_h_8_1, _lh_listcomp_fun_ls_t_9_5) -> 
              (`LH_C(((mappend_d1_d3_d0 ((pad_d0_d3_d0 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_8_0))) _lh_popOutId_2_4)) _lh_listcomp_fun_ls_h_8_1), (_lh_listcomp_fun_1_8_3 _lh_listcomp_fun_ls_t_9_5)))
            | `LH_N -> 
              (_lh_popOutId_0_1_2 (Lazy.force _lh_listcomp_fun_ls_t_9_4)))) in
          (_lh_listcomp_fun_1_8_3 (expand_d0_d3_d0 _lh_popOutId_1_1_0)))))
  else
    (`LH_N))
and enumFromThenTo_d0_d3_d0 a_4_6 t_5_7 b_3_0 _lh_popOutId_0_1_9 _lh_popOutId_1_1_6 _lh_popOutId_2_7 =
  (if (a_4_6 <= b_3_0) then
    (let rec _lh_listcomp_fun_ls_h_5_1 = (lazy a_4_6) in
      (let rec _lh_listcomp_fun_ls_t_6_0 = (lazy (((enumFromThenTo_d0_d3_d0 t_5_7) ((2 * t_5_7) - a_4_6)) b_3_0)) in
        (let rec _lh_listcomp_fun_1_1_2 = (fun _lh_listcomp_fun_para_5_0 -> 
          (match _lh_listcomp_fun_para_5_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_2, _lh_listcomp_fun_ls_t_6_1) -> 
              (`LH_C(((mappend_d1_d2_d0 ((pad_d0_d2_d0 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_5_1))) _lh_popOutId_2_7)) _lh_listcomp_fun_ls_h_5_2), (_lh_listcomp_fun_1_1_2 _lh_listcomp_fun_ls_t_6_1)))
            | `LH_N -> 
              (_lh_popOutId_0_1_9 (Lazy.force _lh_listcomp_fun_ls_t_6_0)))) in
          (_lh_listcomp_fun_1_1_2 (expand_d0_d3_d0 _lh_popOutId_1_1_6)))))
  else
    (`LH_N))
and enumFromThenTo_d0_d3_d1 a_8_1 t_1_0_3 b_4_9 _lh_popOutId_0_2_3 _lh_popOutId_1_2_0 _lh_popOutId_2_9 =
  (if (a_8_1 <= b_4_9) then
    (let rec _lh_listcomp_fun_ls_h_8_4 = (lazy a_8_1) in
      (let rec _lh_listcomp_fun_ls_t_9_8 = (lazy (((enumFromThenTo_d0_d3_d1 t_1_0_3) ((2 * t_1_0_3) - a_8_1)) b_4_9)) in
        (let rec _lh_listcomp_fun_1_8_9 = (fun _lh_listcomp_fun_para_9_0 -> 
          (match _lh_listcomp_fun_para_9_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_8_5, _lh_listcomp_fun_ls_t_9_9) -> 
              (`LH_C(((mappend_d1_d2_d2 ((pad_d0_d2_d2 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_8_4))) _lh_popOutId_2_9)) _lh_listcomp_fun_ls_h_8_5), (_lh_listcomp_fun_1_8_9 _lh_listcomp_fun_ls_t_9_9)))
            | `LH_N -> 
              (_lh_popOutId_0_2_3 (Lazy.force _lh_listcomp_fun_ls_t_9_8)))) in
          (_lh_listcomp_fun_1_8_9 (expand_d0_d3_d1 _lh_popOutId_1_2_0)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d0 a_7_8 b_4_6 _lh_popOutId_0_7 _lh_popOutId_1_5 =
  (if (a_7_8 <= b_4_6) then
    (let rec _lh_listcomp_fun_ls_h_7_8 = (lazy a_7_8) in
      (let rec _lh_listcomp_fun_ls_t_9_2 = (lazy ((enumFromTo_d0_d0_d0 (a_7_8 + 1)) b_4_6)) in
        (let rec _lh_listcomp_fun_1_8_0 = (fun _lh_listcomp_fun_para_8_7 -> 
          (match _lh_listcomp_fun_para_8_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_9, _lh_listcomp_fun_ls_t_9_3) -> 
              (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_7_8)), _lh_listcomp_fun_ls_h_7_9)), (_lh_listcomp_fun_1_8_0 _lh_listcomp_fun_ls_t_9_3)))
            | `LH_N -> 
              (_lh_popOutId_1_5 (Lazy.force _lh_listcomp_fun_ls_t_9_2)))) in
          (_lh_listcomp_fun_1_8_0 (expand_d0_d0_d0 _lh_popOutId_0_7)))))
  else
    (`LH_N))
and enumFromTo_d0_d1_d0 a_3_5 b_2_3 _lh_popOutId_0_1_4 _lh_popOutId_1_1_2 =
  (if (a_3_5 <= b_2_3) then
    (let rec _lh_listcomp_fun_ls_h_4_3 = (lazy a_3_5) in
      (let rec _lh_listcomp_fun_ls_t_4_8 = (lazy ((enumFromTo_d0_d1_d0 (a_3_5 + 1)) b_2_3)) in
        (let rec _lh_listcomp_fun_9_0 = (fun _lh_listcomp_fun_para_4_3 -> 
          (match _lh_listcomp_fun_para_4_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_4, _lh_listcomp_fun_ls_t_4_9) -> 
              (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_4_3)), _lh_listcomp_fun_ls_h_4_4)), (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_4_9)))
            | `LH_N -> 
              (_lh_popOutId_1_1_2 (Lazy.force _lh_listcomp_fun_ls_t_4_8)))) in
          (_lh_listcomp_fun_9_0 (expand_d0_d1_d0 _lh_popOutId_0_1_4)))))
  else
    (`LH_N))
and enumFromTo_d0_d2_d0 a_7_3 b_4_2 _lh_popOutId_0_2_9 _lh_popOutId_1_2_4 =
  (if (a_7_3 <= b_4_2) then
    (let rec _lh_listcomp_fun_ls_h_7_4 = (lazy a_7_3) in
      (let rec _lh_listcomp_fun_ls_t_8_6 = (lazy ((enumFromTo_d0_d2_d0 (a_7_3 + 1)) b_4_2)) in
        (let rec _lh_listcomp_fun_1_6_5 = (fun _lh_listcomp_fun_para_8_0 -> 
          (match _lh_listcomp_fun_para_8_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_5, _lh_listcomp_fun_ls_t_8_7) -> 
              (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_7_4)), _lh_listcomp_fun_ls_h_7_5)), (_lh_listcomp_fun_1_6_5 _lh_listcomp_fun_ls_t_8_7)))
            | `LH_N -> 
              (_lh_popOutId_1_2_4 (Lazy.force _lh_listcomp_fun_ls_t_8_6)))) in
          (_lh_listcomp_fun_1_6_5 (expand_d0_d2_d0 _lh_popOutId_0_2_9)))))
  else
    (`LH_N))
and enumFromTo_d0_d3_d0 a_7_5 b_4_4 _lh_popOutId_0_1_7 _lh_popOutId_1_1_4 =
  (if (a_7_5 <= b_4_4) then
    (let rec _lh_listcomp_fun_ls_h_7_6 = (lazy a_7_5) in
      (let rec _lh_listcomp_fun_ls_t_8_9 = (lazy ((enumFromTo_d0_d3_d0 (a_7_5 + 1)) b_4_4)) in
        (let rec _lh_listcomp_fun_1_7_0 = (fun _lh_listcomp_fun_para_8_1 -> 
          (match _lh_listcomp_fun_para_8_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_7, _lh_listcomp_fun_ls_t_9_0) -> 
              (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_7_6)), _lh_listcomp_fun_ls_h_7_7)), (_lh_listcomp_fun_1_7_0 _lh_listcomp_fun_ls_t_9_0)))
            | `LH_N -> 
              (_lh_popOutId_1_1_4 (Lazy.force _lh_listcomp_fun_ls_t_8_9)))) in
          (_lh_listcomp_fun_1_7_0 (expand_d0_d3_d0 _lh_popOutId_0_1_7)))))
  else
    (`LH_N))
and enumFromTo_d0_d3_d1 a_4_7 b_3_1 _lh_popOutId_0_1 _lh_popOutId_1_0 =
  (if (a_4_7 <= b_3_1) then
    (let rec _lh_listcomp_fun_ls_h_5_3 = (lazy a_4_7) in
      (let rec _lh_listcomp_fun_ls_t_6_2 = (lazy ((enumFromTo_d0_d3_d1 (a_4_7 + 1)) b_3_1)) in
        (let rec _lh_listcomp_fun_1_1_5 = (fun _lh_listcomp_fun_para_5_1 -> 
          (match _lh_listcomp_fun_para_5_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_4, _lh_listcomp_fun_ls_t_6_3) -> 
              (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_5_3)), _lh_listcomp_fun_ls_h_5_4)), (_lh_listcomp_fun_1_1_5 _lh_listcomp_fun_ls_t_6_3)))
            | `LH_N -> 
              (_lh_popOutId_1_0 (Lazy.force _lh_listcomp_fun_ls_t_6_2)))) in
          (_lh_listcomp_fun_1_1_5 (expand_d0_d3_d1 _lh_popOutId_0_1)))))
  else
    (`LH_N))
and enumFromTo_d1_d0_d0 a_6_4 b_4_0 _lh_popOutId_0_1_6 =
  (if (a_6_4 <= b_4_0) then
    (let rec h_7_5 = (lazy a_6_4) in
      (let rec t_8_2 = (lazy ((enumFromTo_d1_d0_d0 (a_6_4 + 1)) b_4_0)) in
        ((reverse_helper_d0_d1_d0 (Lazy.force t_8_2)) (let rec _lh_listcomp_fun_ls_h_6_9 = (lazy (Lazy.force h_7_5)) in
          (let rec _lh_listcomp_fun_ls_t_8_1 = (lazy _lh_popOutId_0_1_6) in
            (fun _lh_alphabeticRule_LH_C_1_5_5 _lh_listcomp_fun_1_5_4 -> 
              (let rec _lh_listcomp_fun_1_5_5 = (fun _lh_listcomp_fun_para_7_3 -> 
                (match _lh_listcomp_fun_para_7_3 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_0, _lh_listcomp_fun_ls_t_8_2) -> 
                    (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_6_9)), _lh_listcomp_fun_ls_h_7_0)), (_lh_listcomp_fun_1_5_5 _lh_listcomp_fun_ls_t_8_2)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_5_4 (Lazy.force _lh_listcomp_fun_ls_t_8_1)))) in
                (_lh_listcomp_fun_1_5_5 (expand_d0_d1_d0 _lh_alphabeticRule_LH_C_1_5_5)))))))))
  else
    _lh_popOutId_0_1_6)
and enumFromTo_d1_d1_d0 a_5_8 b_3_6 _lh_popOutId_0_6 =
  (if (a_5_8 <= b_3_6) then
    (let rec h_6_9 = (lazy a_5_8) in
      (let rec t_7_6 = (lazy ((enumFromTo_d1_d1_d0 (a_5_8 + 1)) b_3_6)) in
        ((reverse_helper_d0_d0_d0 (Lazy.force t_7_6)) (let rec _lh_listcomp_fun_ls_h_6_2 = (lazy (Lazy.force h_6_9)) in
          (let rec _lh_listcomp_fun_ls_t_7_3 = (lazy _lh_popOutId_0_6) in
            (fun _lh_alphabeticRule_LH_C_1_5_4 _lh_listcomp_fun_1_4_3 -> 
              (let rec _lh_listcomp_fun_1_4_4 = (fun _lh_listcomp_fun_para_6_9 -> 
                (match _lh_listcomp_fun_para_6_9 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_t_7_4) -> 
                    (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_6_2)), _lh_listcomp_fun_ls_h_6_3)), (_lh_listcomp_fun_1_4_4 _lh_listcomp_fun_ls_t_7_4)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_4_3 (Lazy.force _lh_listcomp_fun_ls_t_7_3)))) in
                (_lh_listcomp_fun_1_4_4 (expand_d0_d1_d0 _lh_alphabeticRule_LH_C_1_5_4)))))))))
  else
    _lh_popOutId_0_6)
and enumFromTo_d1_d2_d0 a_4_8 b_3_2 _lh_popOutId_0_2_8 =
  (if (a_4_8 <= b_3_2) then
    (let rec h_5_2 = (lazy a_4_8) in
      (let rec t_5_8 = (lazy ((enumFromTo_d1_d2_d0 (a_4_8 + 1)) b_3_2)) in
        ((reverse_helper_d0_d2_d0 (Lazy.force t_5_8)) (let rec _lh_listcomp_fun_ls_h_5_5 = (lazy (Lazy.force h_5_2)) in
          (let rec _lh_listcomp_fun_ls_t_6_4 = (lazy _lh_popOutId_0_2_8) in
            (fun _lh_alphabeticRule_LH_C_1_3_9 _lh_listcomp_fun_1_1_7 -> 
              (let rec _lh_listcomp_fun_1_1_8 = (fun _lh_listcomp_fun_para_5_2 -> 
                (match _lh_listcomp_fun_para_5_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_5_6, _lh_listcomp_fun_ls_t_6_5) -> 
                    (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_5_5)), _lh_listcomp_fun_ls_h_5_6)), (_lh_listcomp_fun_1_1_8 _lh_listcomp_fun_ls_t_6_5)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_1_7 (Lazy.force _lh_listcomp_fun_ls_t_6_4)))) in
                (_lh_listcomp_fun_1_1_8 (expand_d0_d2_d0 _lh_alphabeticRule_LH_C_1_3_9)))))))))
  else
    _lh_popOutId_0_2_8)
and enumFromTo_d1_d3_d0 a_3_8 b_2_5 _lh_popOutId_0_2_6 =
  (if (a_3_8 <= b_2_5) then
    (let rec h_4_3 = (lazy a_3_8) in
      (let rec t_4_8 = (lazy ((enumFromTo_d1_d3_d0 (a_3_8 + 1)) b_2_5)) in
        ((reverse_helper_d0_d3_d0 (Lazy.force t_4_8)) (let rec _lh_listcomp_fun_ls_h_4_6 = (lazy (Lazy.force h_4_3)) in
          (let rec _lh_listcomp_fun_ls_t_5_2 = (lazy _lh_popOutId_0_2_6) in
            (fun _lh_alphabeticRule_LH_C_1_3_5 _lh_listcomp_fun_9_7 -> 
              (let rec _lh_listcomp_fun_9_8 = (fun _lh_listcomp_fun_para_4_6 -> 
                (match _lh_listcomp_fun_para_4_6 with
                  | `LH_C(_lh_listcomp_fun_ls_h_4_7, _lh_listcomp_fun_ls_t_5_3) -> 
                    (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_4_6)), _lh_listcomp_fun_ls_h_4_7)), (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_5_3)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_9_7 (Lazy.force _lh_listcomp_fun_ls_t_5_2)))) in
                (_lh_listcomp_fun_9_8 (expand_d0_d3_d0 _lh_alphabeticRule_LH_C_1_3_5)))))))))
  else
    _lh_popOutId_0_2_6)
and enumFromTo_d1_d3_d1 a_6_9 b_4_1 _lh_popOutId_0_0 =
  (if (a_6_9 <= b_4_1) then
    (let rec h_7_9 = (lazy a_6_9) in
      (let rec t_8_6 = (lazy ((enumFromTo_d1_d3_d1 (a_6_9 + 1)) b_4_1)) in
        ((reverse_helper_d0_d3_d2 (Lazy.force t_8_6)) (let rec _lh_listcomp_fun_ls_h_7_2 = (lazy (Lazy.force h_7_9)) in
          (let rec _lh_listcomp_fun_ls_t_8_4 = (lazy _lh_popOutId_0_0) in
            (fun _lh_alphabeticRule_LH_C_1_5_7 _lh_listcomp_fun_1_6_1 -> 
              (let rec _lh_listcomp_fun_1_6_2 = (fun _lh_listcomp_fun_para_7_8 -> 
                (match _lh_listcomp_fun_para_7_8 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_3, _lh_listcomp_fun_ls_t_8_5) -> 
                    (`LH_C((`LH_C((char_of_int (Lazy.force _lh_listcomp_fun_ls_h_7_2)), _lh_listcomp_fun_ls_h_7_3)), (_lh_listcomp_fun_1_6_2 _lh_listcomp_fun_ls_t_8_5)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_6_1 (Lazy.force _lh_listcomp_fun_ls_t_8_4)))) in
                (_lh_listcomp_fun_1_6_2 (expand_d0_d3_d1 _lh_alphabeticRule_LH_C_1_5_7)))))))))
  else
    _lh_popOutId_0_0)
and enumFromTo_d2_d0_d0 a_3_3 b_2_1 _lh_popOutId_0_5 _lh_popOutId_1_4 _lh_popOutId_2_2 =
  (if (a_3_3 <= b_2_1) then
    (let rec _lh_listcomp_fun_ls_h_3_9 = (lazy a_3_3) in
      (let rec _lh_listcomp_fun_ls_t_4_4 = (lazy ((enumFromTo_d2_d0_d0 (a_3_3 + 1)) b_2_1)) in
        (let rec _lh_listcomp_fun_8_4 = (fun _lh_listcomp_fun_para_4_1 -> 
          (match _lh_listcomp_fun_para_4_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_0, _lh_listcomp_fun_ls_t_4_5) -> 
              (`LH_C(((mappend_d1_d0_d1 ((pad_d0_d0_d1 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_3_9))) _lh_popOutId_2_2)) _lh_listcomp_fun_ls_h_4_0), (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_4_5)))
            | `LH_N -> 
              (_lh_popOutId_0_5 (Lazy.force _lh_listcomp_fun_ls_t_4_4)))) in
          (_lh_listcomp_fun_8_4 (expand_d0_d1_d0 _lh_popOutId_1_4)))))
  else
    (`LH_N))
and enumFromTo_d2_d1_d0 a_8_0 b_4_8 _lh_popOutId_0_1_1 _lh_popOutId_1_9 _lh_popOutId_2_3 =
  (if (a_8_0 <= b_4_8) then
    (let rec _lh_listcomp_fun_ls_h_8_2 = (lazy a_8_0) in
      (let rec _lh_listcomp_fun_ls_t_9_6 = (lazy ((enumFromTo_d2_d1_d0 (a_8_0 + 1)) b_4_8)) in
        (let rec _lh_listcomp_fun_1_8_6 = (fun _lh_listcomp_fun_para_8_9 -> 
          (match _lh_listcomp_fun_para_8_9 with
            | `LH_C(_lh_listcomp_fun_ls_h_8_3, _lh_listcomp_fun_ls_t_9_7) -> 
              (`LH_C(((mappend_d1_d1_d1 ((pad_d0_d1_d1 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_8_2))) _lh_popOutId_2_3)) _lh_listcomp_fun_ls_h_8_3), (_lh_listcomp_fun_1_8_6 _lh_listcomp_fun_ls_t_9_7)))
            | `LH_N -> 
              (_lh_popOutId_0_1_1 (Lazy.force _lh_listcomp_fun_ls_t_9_6)))) in
          (_lh_listcomp_fun_1_8_6 (expand_d0_d2_d0 _lh_popOutId_1_9)))))
  else
    (`LH_N))
and enumFromTo_d2_d2_d0 a_6_2 b_3_8 _lh_popOutId_0_1_8 _lh_popOutId_1_1_5 _lh_popOutId_2_6 =
  (if (a_6_2 <= b_3_8) then
    (let rec _lh_listcomp_fun_ls_h_6_5 = (lazy a_6_2) in
      (let rec _lh_listcomp_fun_ls_t_7_7 = (lazy ((enumFromTo_d2_d2_d0 (a_6_2 + 1)) b_3_8)) in
        (let rec _lh_listcomp_fun_1_4_9 = (fun _lh_listcomp_fun_para_7_1 -> 
          (match _lh_listcomp_fun_para_7_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_6_6, _lh_listcomp_fun_ls_t_7_8) -> 
              (`LH_C(((mappend_d1_d3_d1 ((pad_d0_d3_d1 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_6_5))) _lh_popOutId_2_6)) _lh_listcomp_fun_ls_h_6_6), (_lh_listcomp_fun_1_4_9 _lh_listcomp_fun_ls_t_7_8)))
            | `LH_N -> 
              (_lh_popOutId_0_1_8 (Lazy.force _lh_listcomp_fun_ls_t_7_7)))) in
          (_lh_listcomp_fun_1_4_9 (expand_d0_d3_d1 _lh_popOutId_1_1_5)))))
  else
    (`LH_N))
and enumFromTo_d2_d3_d0 a_4_5 b_2_9 _lh_popOutId_0_1_3 _lh_popOutId_1_1_1 _lh_popOutId_2_5 =
  (if (a_4_5 <= b_2_9) then
    (let rec _lh_listcomp_fun_ls_h_4_8 = (lazy a_4_5) in
      (let rec _lh_listcomp_fun_ls_t_5_7 = (lazy ((enumFromTo_d2_d3_d0 (a_4_5 + 1)) b_2_9)) in
        (let rec _lh_listcomp_fun_1_0_8 = (fun _lh_listcomp_fun_para_4_8 -> 
          (match _lh_listcomp_fun_para_4_8 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_9, _lh_listcomp_fun_ls_t_5_8) -> 
              (`LH_C(((mappend_d1_d2_d1 ((pad_d0_d2_d1 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_4_8))) _lh_popOutId_2_5)) _lh_listcomp_fun_ls_h_4_9), (_lh_listcomp_fun_1_0_8 _lh_listcomp_fun_ls_t_5_8)))
            | `LH_N -> 
              (_lh_popOutId_0_1_3 (Lazy.force _lh_listcomp_fun_ls_t_5_7)))) in
          (_lh_listcomp_fun_1_0_8 (expand_d0_d3_d0 _lh_popOutId_1_1_1)))))
  else
    (`LH_N))
and enumFromTo_d2_d3_d1 a_6_3 b_3_9 _lh_popOutId_0_2_1 _lh_popOutId_1_1_8 _lh_popOutId_2_8 =
  (if (a_6_3 <= b_3_9) then
    (let rec _lh_listcomp_fun_ls_h_6_7 = (lazy a_6_3) in
      (let rec _lh_listcomp_fun_ls_t_7_9 = (lazy ((enumFromTo_d2_d3_d1 (a_6_3 + 1)) b_3_9)) in
        (let rec _lh_listcomp_fun_1_5_2 = (fun _lh_listcomp_fun_para_7_2 -> 
          (match _lh_listcomp_fun_para_7_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_6_8, _lh_listcomp_fun_ls_t_8_0) -> 
              (`LH_C(((mappend_d1_d2_d3 ((pad_d0_d2_d3 (string_of_int (Lazy.force _lh_listcomp_fun_ls_h_6_7))) _lh_popOutId_2_8)) _lh_listcomp_fun_ls_h_6_8), (_lh_listcomp_fun_1_5_2 _lh_listcomp_fun_ls_t_8_0)))
            | `LH_N -> 
              (_lh_popOutId_0_2_1 (Lazy.force _lh_listcomp_fun_ls_t_7_9)))) in
          (_lh_listcomp_fun_1_5_2 (expand_d0_d3_d1 _lh_popOutId_1_1_8)))))
  else
    (`LH_N))
and enumFromTo_d3_d0_d0 a_5_7 b_3_5 _lh_popOutId_0_2_0 _lh_popOutId_1_1_7 =
  (if (a_5_7 <= b_3_5) then
    (let rec _lh_listcomp_fun_ls_t_7_2 = (lazy ((enumFromTo_d3_d0_d0 (a_5_7 + 1)) b_3_5)) in
      (let rec h_6_6 = (lazy '0') in
        (let rec t_7_3 = (lazy (_lh_popOutId_0_2_0 (Lazy.force _lh_listcomp_fun_ls_t_7_2))) in
          (`LH_C((Lazy.force h_6_6), ((mappend_d2_d0_d0 (Lazy.force t_7_3)) _lh_popOutId_1_1_7))))))
  else
    _lh_popOutId_1_1_7)
and enumFromTo_d3_d0_d1 a_3_6 b_2_4 _lh_popOutId_0_2_7 _lh_popOutId_1_2_3 =
  (if (a_3_6 <= b_2_4) then
    (let rec _lh_listcomp_fun_ls_t_5_1 = (lazy ((enumFromTo_d3_d0_d1 (a_3_6 + 1)) b_2_4)) in
      (let rec h_4_1 = (lazy '0') in
        (let rec t_4_6 = (lazy (_lh_popOutId_0_2_7 (Lazy.force _lh_listcomp_fun_ls_t_5_1))) in
          (`LH_C((Lazy.force h_4_1), ((mappend_d2_d0_d2 (Lazy.force t_4_6)) _lh_popOutId_1_2_3))))))
  else
    _lh_popOutId_1_2_3)
and enumFromTo_d3_d1_d0 a_7_4 b_4_3 _lh_popOutId_0_2_5 _lh_popOutId_1_2_2 =
  (if (a_7_4 <= b_4_3) then
    (let rec _lh_listcomp_fun_ls_t_8_8 = (lazy ((enumFromTo_d3_d1_d0 (a_7_4 + 1)) b_4_3)) in
      (let rec h_8_4 = (lazy '0') in
        (let rec t_9_1 = (lazy (_lh_popOutId_0_2_5 (Lazy.force _lh_listcomp_fun_ls_t_8_8))) in
          (`LH_C((Lazy.force h_8_4), ((mappend_d2_d1_d0 (Lazy.force t_9_1)) _lh_popOutId_1_2_2))))))
  else
    _lh_popOutId_1_2_2)
and enumFromTo_d3_d1_d1 a_5_3 b_3_4 _lh_popOutId_0_2 _lh_popOutId_1_1 =
  (if (a_5_3 <= b_3_4) then
    (let rec _lh_listcomp_fun_ls_t_6_9 = (lazy ((enumFromTo_d3_d1_d1 (a_5_3 + 1)) b_3_4)) in
      (let rec h_6_1 = (lazy '0') in
        (let rec t_6_8 = (lazy (_lh_popOutId_0_2 (Lazy.force _lh_listcomp_fun_ls_t_6_9))) in
          (`LH_C((Lazy.force h_6_1), ((mappend_d2_d1_d2 (Lazy.force t_6_8)) _lh_popOutId_1_1))))))
  else
    _lh_popOutId_1_1)
and enumFromTo_d3_d2_d0 a_4_4 b_2_8 _lh_popOutId_0_1_0 _lh_popOutId_1_8 =
  (if (a_4_4 <= b_2_8) then
    (let rec _lh_listcomp_fun_ls_t_5_6 = (lazy ((enumFromTo_d3_d2_d0 (a_4_4 + 1)) b_2_8)) in
      (let rec h_5_0 = (lazy '0') in
        (let rec t_5_5 = (lazy (_lh_popOutId_0_1_0 (Lazy.force _lh_listcomp_fun_ls_t_5_6))) in
          (`LH_C((Lazy.force h_5_0), ((mappend_d2_d2_d0 (Lazy.force t_5_5)) _lh_popOutId_1_8))))))
  else
    _lh_popOutId_1_8)
and enumFromTo_d3_d2_d1 a_4_2 b_2_7 _lh_popOutId_0_2_2 _lh_popOutId_1_1_9 =
  (if (a_4_2 <= b_2_7) then
    (let rec _lh_listcomp_fun_ls_t_5_5 = (lazy ((enumFromTo_d3_d2_d1 (a_4_2 + 1)) b_2_7)) in
      (let rec h_4_9 = (lazy '0') in
        (let rec t_5_4 = (lazy (_lh_popOutId_0_2_2 (Lazy.force _lh_listcomp_fun_ls_t_5_5))) in
          (`LH_C((Lazy.force h_4_9), ((mappend_d2_d2_d2 (Lazy.force t_5_4)) _lh_popOutId_1_1_9))))))
  else
    _lh_popOutId_1_1_9)
and enumFromTo_d3_d2_d2 a_4_1 b_2_6 _lh_popOutId_0_8 _lh_popOutId_1_6 =
  (if (a_4_1 <= b_2_6) then
    (let rec _lh_listcomp_fun_ls_t_5_4 = (lazy ((enumFromTo_d3_d2_d2 (a_4_1 + 1)) b_2_6)) in
      (let rec h_4_6 = (lazy '0') in
        (let rec t_5_1 = (lazy (_lh_popOutId_0_8 (Lazy.force _lh_listcomp_fun_ls_t_5_4))) in
          (`LH_C((Lazy.force h_4_6), ((mappend_d2_d2_d4 (Lazy.force t_5_1)) _lh_popOutId_1_6))))))
  else
    _lh_popOutId_1_6)
and enumFromTo_d3_d2_d3 a_6_1 b_3_7 _lh_popOutId_0_1_5 _lh_popOutId_1_1_3 =
  (if (a_6_1 <= b_3_7) then
    (let rec _lh_listcomp_fun_ls_t_7_5 = (lazy ((enumFromTo_d3_d2_d3 (a_6_1 + 1)) b_3_7)) in
      (let rec h_7_2 = (lazy '0') in
        (let rec t_7_9 = (lazy (_lh_popOutId_0_1_5 (Lazy.force _lh_listcomp_fun_ls_t_7_5))) in
          (`LH_C((Lazy.force h_7_2), ((mappend_d2_d2_d6 (Lazy.force t_7_9)) _lh_popOutId_1_1_3))))))
  else
    _lh_popOutId_1_1_3)
and enumFromTo_d3_d3_d0 a_3_2 b_2_0 _lh_popOutId_0_2_4 _lh_popOutId_1_2_1 =
  (if (a_3_2 <= b_2_0) then
    (let rec _lh_listcomp_fun_ls_t_4_2 = (lazy ((enumFromTo_d3_d3_d0 (a_3_2 + 1)) b_2_0)) in
      (let rec h_3_8 = (lazy '0') in
        (let rec t_4_2 = (lazy (_lh_popOutId_0_2_4 (Lazy.force _lh_listcomp_fun_ls_t_4_2))) in
          (`LH_C((Lazy.force h_3_8), ((mappend_d2_d3_d0 (Lazy.force t_4_2)) _lh_popOutId_1_2_1))))))
  else
    _lh_popOutId_1_2_1)
and enumFromTo_d3_d3_d1 a_7_6 b_4_5 _lh_popOutId_0_9 _lh_popOutId_1_7 =
  (if (a_7_6 <= b_4_5) then
    (let rec _lh_listcomp_fun_ls_t_9_1 = (lazy ((enumFromTo_d3_d3_d1 (a_7_6 + 1)) b_4_5)) in
      (let rec h_9_0 = (lazy '0') in
        (let rec t_9_7 = (lazy (_lh_popOutId_0_9 (Lazy.force _lh_listcomp_fun_ls_t_9_1))) in
          (`LH_C((Lazy.force h_9_0), ((mappend_d2_d3_d2 (Lazy.force t_9_7)) _lh_popOutId_1_7))))))
  else
    _lh_popOutId_1_7)
and expand_d0_d0_d0 _lh_expand_arg1_4 =
  (match _lh_expand_arg1_4 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_4, _lh_expand_LH_C_1_4) -> 
      (match _lh_expand_LH_C_0_4 with
        | '<' -> 
          (numericRule_d0_d2_d0 _lh_expand_LH_C_1_4)
        | '[' -> 
          (alphabeticRule_d0_d0_d0 _lh_expand_LH_C_1_4)
        | _ -> 
          (constantRule_d0_d2_d0 _lh_expand_arg1_4))
    | _ -> 
      (constantRule_d0_d3_d0 _lh_expand_arg1_4))
and expand_d0_d1_d0 _lh_expand_arg1_7 =
  (match _lh_expand_arg1_7 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_7, _lh_expand_LH_C_1_7) -> 
      (match _lh_expand_LH_C_0_7 with
        | '<' -> 
          (numericRule_d0_d0_d0 _lh_expand_LH_C_1_7)
        | '[' -> 
          (alphabeticRule_d0_d1_d0 _lh_expand_LH_C_1_7)
        | _ -> 
          (constantRule_d0_d0_d0 _lh_expand_arg1_7))
    | _ -> 
      (constantRule_d0_d1_d0 _lh_expand_arg1_7))
and expand_d0_d2_d0 _lh_expand_arg1_8 =
  (match _lh_expand_arg1_8 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_8, _lh_expand_LH_C_1_8) -> 
      (match _lh_expand_LH_C_0_8 with
        | '<' -> 
          (numericRule_d0_d1_d0 _lh_expand_LH_C_1_8)
        | '[' -> 
          (alphabeticRule_d0_d2_d0 _lh_expand_LH_C_1_8)
        | _ -> 
          (constantRule_d0_d3_d0 _lh_expand_arg1_8))
    | _ -> 
      (constantRule_d0_d3_d0 _lh_expand_arg1_8))
and expand_d0_d3_d0 _lh_expand_arg1_6 =
  (match _lh_expand_arg1_6 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_6, _lh_expand_LH_C_1_6) -> 
      (match _lh_expand_LH_C_0_6 with
        | '<' -> 
          (numericRule_d0_d3_d0 _lh_expand_LH_C_1_6)
        | '[' -> 
          (alphabeticRule_d0_d3_d0 _lh_expand_LH_C_1_6)
        | _ -> 
          (constantRule_d0_d4_d0 _lh_expand_arg1_6))
    | _ -> 
      (constantRule_d0_d5_d0 _lh_expand_arg1_6))
and expand_d0_d3_d1 _lh_expand_arg1_5 =
  (match _lh_expand_arg1_5 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_5, _lh_expand_LH_C_1_5) -> 
      (match _lh_expand_LH_C_0_5 with
        | '<' -> 
          (numericRule_d0_d3_d1 _lh_expand_LH_C_1_5)
        | '[' -> 
          (alphabeticRule_d0_d3_d1 _lh_expand_LH_C_1_5)
        | _ -> 
          (constantRule_d0_d4_d1 _lh_expand_arg1_5))
    | _ -> 
      (constantRule_d0_d5_d1 _lh_expand_arg1_5))
and mknum_d0_d0_d0 _lh_mknum_arg1_1_1 =
  (((foldl_d0_d0_d0 (fun u_1_1 c_2_3 -> 
    ((u_1_1 * 10) + ((int_of_char c_2_3) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_1)
and mknum_d0_d1_d0 _lh_mknum_arg1_1_7 =
  (((foldl_d0_d1_d0 (fun u_1_7 c_3_3 -> 
    ((u_1_7 * 10) + ((int_of_char c_3_3) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_7)
and mknum_d0_d2_d0 _lh_mknum_arg1_1_2 =
  (((foldl_d0_d2_d0 (fun u_1_2 c_2_6 -> 
    ((u_1_2 * 10) + ((int_of_char c_2_6) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_2)
and mknum_d0_d2_d1 _lh_mknum_arg1_1_0 =
  (((foldl_d0_d2_d2 (fun u_1_0 c_2_0 -> 
    ((u_1_0 * 10) + ((int_of_char c_2_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_0)
and mknum_d0_d3_d0 _lh_mknum_arg1_1_4 =
  (((foldl_d0_d3_d0 (fun u_1_4 c_2_8 -> 
    ((u_1_4 * 10) + ((int_of_char c_2_8) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_4)
and mknum_d1_d0_d0 _lh_mknum_arg1_1_6 =
  (((foldl_d1_d0_d0 (fun u_1_6 c_3_2 -> 
    ((u_1_6 * 10) + ((int_of_char c_3_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_6)
and mknum_d1_d1_d0 _lh_mknum_arg1_8 =
  (((foldl_d1_d1_d0 (fun u_8 c_1_8 -> 
    ((u_8 * 10) + ((int_of_char c_1_8) - (int_of_char '0'))))) 0) _lh_mknum_arg1_8)
and mknum_d1_d2_d0 _lh_mknum_arg1_1_3 =
  (((foldl_d1_d2_d0 (fun u_1_3 c_2_7 -> 
    ((u_1_3 * 10) + ((int_of_char c_2_7) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_3)
and mknum_d1_d2_d1 _lh_mknum_arg1_1_5 =
  (((foldl_d1_d2_d2 (fun u_1_5 c_2_9 -> 
    ((u_1_5 * 10) + ((int_of_char c_2_9) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_5)
and mknum_d1_d3_d0 _lh_mknum_arg1_9 =
  (((foldl_d1_d3_d0 (fun u_9 c_1_9 -> 
    ((u_9 * 10) + ((int_of_char c_1_9) - (int_of_char '0'))))) 0) _lh_mknum_arg1_9)
and numericRule_d0_d0_d0 _lh_numericRule_arg1_5 =
  (let rec _lh_matchIdent_2_4 = ((span_d0_d0_d0 (fun c_2_1 -> 
    (c_2_1 != '-'))) _lh_numericRule_arg1_5) in
    (match _lh_matchIdent_2_4 with
      | `LH_P2(_lh_numericRule_LH_P2_0_1_5, _lh_numericRule_LH_P2_1_1_5) -> 
        (match _lh_numericRule_LH_P2_1_1_5 with
          | `LH_C(_lh_numericRule_LH_C_0_1_0, _lh_numericRule_LH_C_1_3_5) -> 
            (let rec _lh_matchIdent_2_5 = ((span_d1_d0_d0 (fun c_2_2 -> 
              (c_2_2 != '>'))) _lh_numericRule_LH_C_1_3_5) in
              (match _lh_matchIdent_2_5 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_6, _lh_numericRule_LH_P2_1_1_6) -> 
                  (match _lh_numericRule_LH_P2_1_1_6 with
                    | `LH_C(_lh_numericRule_LH_C_0_1_1, _lh_numericRule_LH_C_1_3_6) -> 
                      (let rec _lh_matchIdent_2_6 = (let rec _lh_numericRule_LH_P2_0_1_7 = (lazy (mknum_d0_d0_d0 _lh_numericRule_LH_P2_0_1_5)) in
                        (let rec _lh_numericRule_LH_P2_1_1_7 = (lazy (mknum_d1_d0_d0 _lh_numericRule_LH_P2_0_1_6)) in
                          (fun _lh_numericRule_LH_C_1_3_7 -> 
                            (let rec width_2_5 = ((max_d0_d0_d0 (length_d0_d0_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_1_7)))) (length_d1_d0_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_1_7)))) in
                              (let rec _lh_listcomp_fun_9_9 = (fun _lh_listcomp_fun_para_4_7 -> 
                                (((_lh_listcomp_fun_para_4_7 _lh_listcomp_fun_9_9) _lh_numericRule_LH_C_1_3_7) width_2_5)) in
                                (_lh_listcomp_fun_9_9 (if ((Lazy.force _lh_numericRule_LH_P2_0_1_7) < (Lazy.force _lh_numericRule_LH_P2_1_1_7)) then
                                  ((enumFromTo_d2_d0_d0 (Lazy.force _lh_numericRule_LH_P2_0_1_7)) (Lazy.force _lh_numericRule_LH_P2_1_1_7))
                                else
                                  (((enumFromThenTo_d0_d0_d0 (Lazy.force _lh_numericRule_LH_P2_0_1_7)) ((Lazy.force _lh_numericRule_LH_P2_0_1_7) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_1_7))))))))) in
                        (_lh_matchIdent_2_6 _lh_numericRule_LH_C_1_3_6))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d1_d0 _lh_numericRule_arg1_8 =
  (let rec _lh_matchIdent_4_1 = ((span_d0_d1_d0 (fun c_3_4 -> 
    (c_3_4 != '-'))) _lh_numericRule_arg1_8) in
    (match _lh_matchIdent_4_1 with
      | `LH_P2(_lh_numericRule_LH_P2_0_2_4, _lh_numericRule_LH_P2_1_2_4) -> 
        (match _lh_numericRule_LH_P2_1_2_4 with
          | `LH_C(_lh_numericRule_LH_C_0_1_6, _lh_numericRule_LH_C_1_5_4) -> 
            (let rec _lh_matchIdent_4_2 = ((span_d1_d1_d0 (fun c_3_5 -> 
              (c_3_5 != '>'))) _lh_numericRule_LH_C_1_5_4) in
              (match _lh_matchIdent_4_2 with
                | `LH_P2(_lh_numericRule_LH_P2_0_2_5, _lh_numericRule_LH_P2_1_2_5) -> 
                  (match _lh_numericRule_LH_P2_1_2_5 with
                    | `LH_C(_lh_numericRule_LH_C_0_1_7, _lh_numericRule_LH_C_1_5_5) -> 
                      (let rec _lh_matchIdent_4_3 = (let rec _lh_numericRule_LH_P2_0_2_6 = (lazy (mknum_d0_d1_d0 _lh_numericRule_LH_P2_0_2_4)) in
                        (let rec _lh_numericRule_LH_P2_1_2_6 = (lazy (mknum_d1_d1_d0 _lh_numericRule_LH_P2_0_2_5)) in
                          (fun _lh_numericRule_LH_C_1_5_6 -> 
                            (let rec width_3_8 = ((max_d0_d1_d0 (length_d0_d1_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_2_6)))) (length_d1_d1_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_2_6)))) in
                              (let rec _lh_listcomp_fun_1_7_8 = (fun _lh_listcomp_fun_para_8_6 -> 
                                (((_lh_listcomp_fun_para_8_6 _lh_listcomp_fun_1_7_8) _lh_numericRule_LH_C_1_5_6) width_3_8)) in
                                (_lh_listcomp_fun_1_7_8 (if ((Lazy.force _lh_numericRule_LH_P2_0_2_6) < (Lazy.force _lh_numericRule_LH_P2_1_2_6)) then
                                  ((enumFromTo_d2_d1_d0 (Lazy.force _lh_numericRule_LH_P2_0_2_6)) (Lazy.force _lh_numericRule_LH_P2_1_2_6))
                                else
                                  (((enumFromThenTo_d0_d1_d0 (Lazy.force _lh_numericRule_LH_P2_0_2_6)) ((Lazy.force _lh_numericRule_LH_P2_0_2_6) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_2_6))))))))) in
                        (_lh_matchIdent_4_3 _lh_numericRule_LH_C_1_5_5))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d2_d0 _lh_numericRule_arg1_6 =
  (let rec _lh_matchIdent_3_2 = ((span_d0_d3_d0 (fun c_2_4 -> 
    (c_2_4 != '-'))) _lh_numericRule_arg1_6) in
    (match _lh_matchIdent_3_2 with
      | `LH_P2(_lh_numericRule_LH_P2_0_1_8, _lh_numericRule_LH_P2_1_1_8) -> 
        (match _lh_numericRule_LH_P2_1_1_8 with
          | `LH_C(_lh_numericRule_LH_C_0_1_2, _lh_numericRule_LH_C_1_4_4) -> 
            (let rec _lh_matchIdent_3_3 = ((span_d1_d3_d0 (fun c_2_5 -> 
              (c_2_5 != '>'))) _lh_numericRule_LH_C_1_4_4) in
              (match _lh_matchIdent_3_3 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_9, _lh_numericRule_LH_P2_1_1_9) -> 
                  (match _lh_numericRule_LH_P2_1_1_9 with
                    | `LH_C(_lh_numericRule_LH_C_0_1_3, _lh_numericRule_LH_C_1_4_5) -> 
                      (let rec _lh_matchIdent_3_4 = (let rec _lh_numericRule_LH_P2_0_2_0 = (lazy (mknum_d0_d3_d0 _lh_numericRule_LH_P2_0_1_8)) in
                        (let rec _lh_numericRule_LH_P2_1_2_0 = (lazy (mknum_d1_d3_d0 _lh_numericRule_LH_P2_0_1_9)) in
                          (fun _lh_numericRule_LH_C_1_4_6 -> 
                            (let rec width_3_2 = ((max_d0_d3_d0 (length_d0_d3_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_2_0)))) (length_d1_d3_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_2_0)))) in
                              (let rec _lh_listcomp_fun_1_3_5 = (fun _lh_listcomp_fun_para_6_4 -> 
                                (((_lh_listcomp_fun_para_6_4 _lh_listcomp_fun_1_3_5) _lh_numericRule_LH_C_1_4_6) width_3_2)) in
                                (_lh_listcomp_fun_1_3_5 (if ((Lazy.force _lh_numericRule_LH_P2_0_2_0) < (Lazy.force _lh_numericRule_LH_P2_1_2_0)) then
                                  ((enumFromTo_d2_d2_d0 (Lazy.force _lh_numericRule_LH_P2_0_2_0)) (Lazy.force _lh_numericRule_LH_P2_1_2_0))
                                else
                                  (((enumFromThenTo_d0_d2_d0 (Lazy.force _lh_numericRule_LH_P2_0_2_0)) ((Lazy.force _lh_numericRule_LH_P2_0_2_0) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_2_0))))))))) in
                        (_lh_matchIdent_3_4 _lh_numericRule_LH_C_1_4_5))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d3_d0 _lh_numericRule_arg1_7 =
  (let rec _lh_matchIdent_3_6 = ((span_d0_d2_d0 (fun c_3_0 -> 
    (c_3_0 != '-'))) _lh_numericRule_arg1_7) in
    (match _lh_matchIdent_3_6 with
      | `LH_P2(_lh_numericRule_LH_P2_0_2_1, _lh_numericRule_LH_P2_1_2_1) -> 
        (match _lh_numericRule_LH_P2_1_2_1 with
          | `LH_C(_lh_numericRule_LH_C_0_1_4, _lh_numericRule_LH_C_1_5_1) -> 
            (let rec _lh_matchIdent_3_7 = ((span_d1_d2_d0 (fun c_3_1 -> 
              (c_3_1 != '>'))) _lh_numericRule_LH_C_1_5_1) in
              (match _lh_matchIdent_3_7 with
                | `LH_P2(_lh_numericRule_LH_P2_0_2_2, _lh_numericRule_LH_P2_1_2_2) -> 
                  (match _lh_numericRule_LH_P2_1_2_2 with
                    | `LH_C(_lh_numericRule_LH_C_0_1_5, _lh_numericRule_LH_C_1_5_2) -> 
                      (let rec _lh_matchIdent_3_8 = (let rec _lh_numericRule_LH_P2_0_2_3 = (lazy (mknum_d0_d2_d0 _lh_numericRule_LH_P2_0_2_1)) in
                        (let rec _lh_numericRule_LH_P2_1_2_3 = (lazy (mknum_d1_d2_d0 _lh_numericRule_LH_P2_0_2_2)) in
                          (fun _lh_numericRule_LH_C_1_5_3 -> 
                            (let rec width_3_7 = ((max_d0_d2_d0 (length_d0_d2_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_2_3)))) (length_d1_d2_d0 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_2_3)))) in
                              (let rec _lh_listcomp_fun_1_6_3 = (fun _lh_listcomp_fun_para_7_9 -> 
                                (((_lh_listcomp_fun_para_7_9 _lh_listcomp_fun_1_6_3) _lh_numericRule_LH_C_1_5_3) width_3_7)) in
                                (_lh_listcomp_fun_1_6_3 (if ((Lazy.force _lh_numericRule_LH_P2_0_2_3) < (Lazy.force _lh_numericRule_LH_P2_1_2_3)) then
                                  ((enumFromTo_d2_d3_d0 (Lazy.force _lh_numericRule_LH_P2_0_2_3)) (Lazy.force _lh_numericRule_LH_P2_1_2_3))
                                else
                                  (((enumFromThenTo_d0_d3_d0 (Lazy.force _lh_numericRule_LH_P2_0_2_3)) ((Lazy.force _lh_numericRule_LH_P2_0_2_3) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_2_3))))))))) in
                        (_lh_matchIdent_3_8 _lh_numericRule_LH_C_1_5_2))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and numericRule_d0_d3_d1 _lh_numericRule_arg1_4 =
  (let rec _lh_matchIdent_2_0 = ((span_d0_d2_d1 (fun c_1_6 -> 
    (c_1_6 != '-'))) _lh_numericRule_arg1_4) in
    (match _lh_matchIdent_2_0 with
      | `LH_P2(_lh_numericRule_LH_P2_0_1_2, _lh_numericRule_LH_P2_1_1_2) -> 
        (match _lh_numericRule_LH_P2_1_1_2 with
          | `LH_C(_lh_numericRule_LH_C_0_8, _lh_numericRule_LH_C_1_2_8) -> 
            (let rec _lh_matchIdent_2_1 = ((span_d1_d2_d1 (fun c_1_7 -> 
              (c_1_7 != '>'))) _lh_numericRule_LH_C_1_2_8) in
              (match _lh_matchIdent_2_1 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_3, _lh_numericRule_LH_P2_1_1_3) -> 
                  (match _lh_numericRule_LH_P2_1_1_3 with
                    | `LH_C(_lh_numericRule_LH_C_0_9, _lh_numericRule_LH_C_1_2_9) -> 
                      (let rec _lh_matchIdent_2_2 = (let rec _lh_numericRule_LH_P2_0_1_4 = (lazy (mknum_d0_d2_d1 _lh_numericRule_LH_P2_0_1_2)) in
                        (let rec _lh_numericRule_LH_P2_1_1_4 = (lazy (mknum_d1_d2_d1 _lh_numericRule_LH_P2_0_1_3)) in
                          (fun _lh_numericRule_LH_C_1_3_0 -> 
                            (let rec width_2_0 = ((max_d0_d2_d1 (length_d0_d2_d1 (string_of_int (Lazy.force _lh_numericRule_LH_P2_0_1_4)))) (length_d1_d2_d1 (string_of_int (Lazy.force _lh_numericRule_LH_P2_1_1_4)))) in
                              (let rec _lh_listcomp_fun_7_8 = (fun _lh_listcomp_fun_para_3_8 -> 
                                (((_lh_listcomp_fun_para_3_8 _lh_listcomp_fun_7_8) _lh_numericRule_LH_C_1_3_0) width_2_0)) in
                                (_lh_listcomp_fun_7_8 (if ((Lazy.force _lh_numericRule_LH_P2_0_1_4) < (Lazy.force _lh_numericRule_LH_P2_1_1_4)) then
                                  ((enumFromTo_d2_d3_d1 (Lazy.force _lh_numericRule_LH_P2_0_1_4)) (Lazy.force _lh_numericRule_LH_P2_1_1_4))
                                else
                                  (((enumFromThenTo_d0_d3_d1 (Lazy.force _lh_numericRule_LH_P2_0_1_4)) ((Lazy.force _lh_numericRule_LH_P2_0_1_4) - 1)) (Lazy.force _lh_numericRule_LH_P2_1_1_4))))))))) in
                        (_lh_matchIdent_2_2 _lh_numericRule_LH_C_1_2_9))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and pad_d0_d0_d0 _lh_pad_arg1_6 _lh_pad_arg2_6 =
  ((mappend_d2_d0_d1 (let rec _lh_listcomp_fun_1_1_9 = (fun _lh_listcomp_fun_para_5_3 -> 
    (_lh_listcomp_fun_para_5_3 _lh_listcomp_fun_1_1_9)) in
    (_lh_listcomp_fun_1_1_9 ((enumFromTo_d3_d0_d0 1) (_lh_pad_arg2_6 - (length_d2_d0_d0 _lh_pad_arg1_6)))))) _lh_pad_arg1_6)
and pad_d0_d0_d1 _lh_pad_arg1_1_0 _lh_pad_arg2_1_0 =
  ((mappend_d2_d0_d3 (let rec _lh_listcomp_fun_1_4_2 = (fun _lh_listcomp_fun_para_6_8 -> 
    (_lh_listcomp_fun_para_6_8 _lh_listcomp_fun_1_4_2)) in
    (_lh_listcomp_fun_1_4_2 ((enumFromTo_d3_d0_d1 1) (_lh_pad_arg2_1_0 - (length_d2_d0_d1 _lh_pad_arg1_1_0)))))) _lh_pad_arg1_1_0)
and pad_d0_d1_d0 _lh_pad_arg1_8 _lh_pad_arg2_8 =
  ((mappend_d2_d1_d1 (let rec _lh_listcomp_fun_1_3_0 = (fun _lh_listcomp_fun_para_6_1 -> 
    (_lh_listcomp_fun_para_6_1 _lh_listcomp_fun_1_3_0)) in
    (_lh_listcomp_fun_1_3_0 ((enumFromTo_d3_d1_d0 1) (_lh_pad_arg2_8 - (length_d2_d1_d0 _lh_pad_arg1_8)))))) _lh_pad_arg1_8)
and pad_d0_d1_d1 _lh_pad_arg1_7 _lh_pad_arg2_7 =
  ((mappend_d2_d1_d3 (let rec _lh_listcomp_fun_1_2_4 = (fun _lh_listcomp_fun_para_5_5 -> 
    (_lh_listcomp_fun_para_5_5 _lh_listcomp_fun_1_2_4)) in
    (_lh_listcomp_fun_1_2_4 ((enumFromTo_d3_d1_d1 1) (_lh_pad_arg2_7 - (length_d2_d1_d1 _lh_pad_arg1_7)))))) _lh_pad_arg1_7)
and pad_d0_d2_d0 _lh_pad_arg1_1_3 _lh_pad_arg2_1_3 =
  ((mappend_d2_d2_d1 (let rec _lh_listcomp_fun_1_5_9 = (fun _lh_listcomp_fun_para_7_6 -> 
    (_lh_listcomp_fun_para_7_6 _lh_listcomp_fun_1_5_9)) in
    (_lh_listcomp_fun_1_5_9 ((enumFromTo_d3_d2_d0 1) (_lh_pad_arg2_1_3 - (length_d2_d2_d0 _lh_pad_arg1_1_3)))))) _lh_pad_arg1_1_3)
and pad_d0_d2_d1 _lh_pad_arg1_1_1 _lh_pad_arg2_1_1 =
  ((mappend_d2_d2_d3 (let rec _lh_listcomp_fun_1_5_7 = (fun _lh_listcomp_fun_para_7_4 -> 
    (_lh_listcomp_fun_para_7_4 _lh_listcomp_fun_1_5_7)) in
    (_lh_listcomp_fun_1_5_7 ((enumFromTo_d3_d2_d1 1) (_lh_pad_arg2_1_1 - (length_d2_d2_d1 _lh_pad_arg1_1_1)))))) _lh_pad_arg1_1_1)
and pad_d0_d2_d2 _lh_pad_arg1_4 _lh_pad_arg2_4 =
  ((mappend_d2_d2_d5 (let rec _lh_listcomp_fun_7_9 = (fun _lh_listcomp_fun_para_3_9 -> 
    (_lh_listcomp_fun_para_3_9 _lh_listcomp_fun_7_9)) in
    (_lh_listcomp_fun_7_9 ((enumFromTo_d3_d2_d2 1) (_lh_pad_arg2_4 - (length_d2_d2_d2 _lh_pad_arg1_4)))))) _lh_pad_arg1_4)
and pad_d0_d2_d3 _lh_pad_arg1_5 _lh_pad_arg2_5 =
  ((mappend_d2_d2_d7 (let rec _lh_listcomp_fun_9_2 = (fun _lh_listcomp_fun_para_4_4 -> 
    (_lh_listcomp_fun_para_4_4 _lh_listcomp_fun_9_2)) in
    (_lh_listcomp_fun_9_2 ((enumFromTo_d3_d2_d3 1) (_lh_pad_arg2_5 - (length_d2_d2_d3 _lh_pad_arg1_5)))))) _lh_pad_arg1_5)
and pad_d0_d3_d0 _lh_pad_arg1_9 _lh_pad_arg2_9 =
  ((mappend_d2_d3_d1 (let rec _lh_listcomp_fun_1_3_8 = (fun _lh_listcomp_fun_para_6_5 -> 
    (_lh_listcomp_fun_para_6_5 _lh_listcomp_fun_1_3_8)) in
    (_lh_listcomp_fun_1_3_8 ((enumFromTo_d3_d3_d0 1) (_lh_pad_arg2_9 - (length_d2_d3_d0 _lh_pad_arg1_9)))))) _lh_pad_arg1_9)
and pad_d0_d3_d1 _lh_pad_arg1_1_2 _lh_pad_arg2_1_2 =
  ((mappend_d2_d3_d3 (let rec _lh_listcomp_fun_1_5_8 = (fun _lh_listcomp_fun_para_7_5 -> 
    (_lh_listcomp_fun_para_7_5 _lh_listcomp_fun_1_5_8)) in
    (_lh_listcomp_fun_1_5_8 ((enumFromTo_d3_d3_d1 1) (_lh_pad_arg2_1_2 - (length_d2_d3_d1 _lh_pad_arg1_1_2)))))) _lh_pad_arg1_1_2)
and reverse_d0_d0_d0 ls_4_3 =
  ((reverse_helper_d0_d0_d1 ls_4_3) (fun _lh_alphabeticRule_LH_C_1_4_0 _lh_listcomp_fun_1_2_0 -> 
    (`LH_N)))
and reverse_d0_d1_d0 ls_3_1 =
  ((reverse_helper_d0_d1_d1 ls_3_1) (fun _lh_alphabeticRule_LH_C_1_3_4 _lh_listcomp_fun_9_6 -> 
    (`LH_N)))
and reverse_d0_d2_d0 ls_6_4 =
  ((reverse_helper_d0_d2_d1 ls_6_4) (fun _lh_alphabeticRule_LH_C_1_5_6 _lh_listcomp_fun_1_5_6 -> 
    (`LH_N)))
and reverse_d0_d3_d0 ls_5_8 =
  ((reverse_helper_d0_d3_d1 ls_5_8) (fun _lh_alphabeticRule_LH_C_1_5_3 _lh_listcomp_fun_1_4_1 -> 
    (`LH_N)))
and reverse_d0_d3_d1 ls_3_4 =
  ((reverse_helper_d0_d3_d3 ls_3_4) (fun _lh_alphabeticRule_LH_C_1_3_6 _lh_listcomp_fun_1_0_2 -> 
    (`LH_N)))
and span_d0_d0_d0 _lh_span_arg1_9 _lh_span_arg2_9 =
  (match _lh_span_arg2_9 with
    | `LH_N -> 
      (`LH_P2((fun f_3_8 i_3_8 -> 
        i_3_8), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_9, _lh_span_LH_C_1_9) -> 
      (if (_lh_span_arg1_9 _lh_span_LH_C_0_9) then
        (let rec _lh_matchIdent_2_7 = ((span_d0_d0_d0 _lh_span_arg1_9) _lh_span_LH_C_1_9) in
          (match _lh_matchIdent_2_7 with
            | `LH_P2(_lh_span_LH_P2_0_9, _lh_span_LH_P2_1_9) -> 
              (`LH_P2((let rec h_4_5 = (lazy _lh_span_LH_C_0_9) in
                (let rec t_5_0 = (lazy _lh_span_LH_P2_0_9) in
                  (fun f_3_9 i_3_9 -> 
                    (((foldl_d0_d0_d1 f_3_9) ((f_3_9 i_3_9) (Lazy.force h_4_5))) (Lazy.force t_5_0))))), _lh_span_LH_P2_1_9))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_4_0 i_4_0 -> 
          i_4_0), (`LH_C(_lh_span_LH_C_0_9, _lh_span_LH_C_1_9)))))
    | _ -> 
      (failwith "error"))
and span_d0_d1_d0 _lh_span_arg1_1_2 _lh_span_arg2_1_2 =
  (match _lh_span_arg2_1_2 with
    | `LH_N -> 
      (`LH_P2((fun f_5_3 i_5_3 -> 
        i_5_3), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_2, _lh_span_LH_C_1_1_2) -> 
      (if (_lh_span_arg1_1_2 _lh_span_LH_C_0_1_2) then
        (let rec _lh_matchIdent_3_0 = ((span_d0_d1_d0 _lh_span_arg1_1_2) _lh_span_LH_C_1_1_2) in
          (match _lh_matchIdent_3_0 with
            | `LH_P2(_lh_span_LH_P2_0_1_2, _lh_span_LH_P2_1_1_2) -> 
              (`LH_P2((let rec h_6_2 = (lazy _lh_span_LH_C_0_1_2) in
                (let rec t_6_9 = (lazy _lh_span_LH_P2_0_1_2) in
                  (fun f_5_4 i_5_4 -> 
                    (((foldl_d0_d1_d1 f_5_4) ((f_5_4 i_5_4) (Lazy.force h_6_2))) (Lazy.force t_6_9))))), _lh_span_LH_P2_1_1_2))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_5_5 i_5_5 -> 
          i_5_5), (`LH_C(_lh_span_LH_C_0_1_2, _lh_span_LH_C_1_1_2)))))
    | _ -> 
      (failwith "error"))
and span_d0_d2_d0 _lh_span_arg1_1_3 _lh_span_arg2_1_3 =
  (match _lh_span_arg2_1_3 with
    | `LH_N -> 
      (`LH_P2((fun f_5_6 i_5_6 -> 
        i_5_6), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_3, _lh_span_LH_C_1_1_3) -> 
      (if (_lh_span_arg1_1_3 _lh_span_LH_C_0_1_3) then
        (let rec _lh_matchIdent_3_1 = ((span_d0_d2_d0 _lh_span_arg1_1_3) _lh_span_LH_C_1_1_3) in
          (match _lh_matchIdent_3_1 with
            | `LH_P2(_lh_span_LH_P2_0_1_3, _lh_span_LH_P2_1_1_3) -> 
              (`LH_P2((let rec h_6_3 = (lazy _lh_span_LH_C_0_1_3) in
                (let rec t_7_0 = (lazy _lh_span_LH_P2_0_1_3) in
                  (fun f_5_7 i_5_7 -> 
                    (((foldl_d0_d2_d1 f_5_7) ((f_5_7 i_5_7) (Lazy.force h_6_3))) (Lazy.force t_7_0))))), _lh_span_LH_P2_1_1_3))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_5_8 i_5_8 -> 
          i_5_8), (`LH_C(_lh_span_LH_C_0_1_3, _lh_span_LH_C_1_1_3)))))
    | _ -> 
      (failwith "error"))
and span_d0_d2_d1 _lh_span_arg1_1_0 _lh_span_arg2_1_0 =
  (match _lh_span_arg2_1_0 with
    | `LH_N -> 
      (`LH_P2((fun f_4_1 i_4_1 -> 
        i_4_1), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_0, _lh_span_LH_C_1_1_0) -> 
      (if (_lh_span_arg1_1_0 _lh_span_LH_C_0_1_0) then
        (let rec _lh_matchIdent_2_8 = ((span_d0_d2_d1 _lh_span_arg1_1_0) _lh_span_LH_C_1_1_0) in
          (match _lh_matchIdent_2_8 with
            | `LH_P2(_lh_span_LH_P2_0_1_0, _lh_span_LH_P2_1_1_0) -> 
              (`LH_P2((let rec h_4_7 = (lazy _lh_span_LH_C_0_1_0) in
                (let rec t_5_2 = (lazy _lh_span_LH_P2_0_1_0) in
                  (fun f_4_2 i_4_2 -> 
                    (((foldl_d0_d2_d3 f_4_2) ((f_4_2 i_4_2) (Lazy.force h_4_7))) (Lazy.force t_5_2))))), _lh_span_LH_P2_1_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_4_3 i_4_3 -> 
          i_4_3), (`LH_C(_lh_span_LH_C_0_1_0, _lh_span_LH_C_1_1_0)))))
    | _ -> 
      (failwith "error"))
and span_d0_d3_d0 _lh_span_arg1_1_4 _lh_span_arg2_1_4 =
  (match _lh_span_arg2_1_4 with
    | `LH_N -> 
      (`LH_P2((fun f_6_3 i_6_3 -> 
        i_6_3), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_4, _lh_span_LH_C_1_1_4) -> 
      (if (_lh_span_arg1_1_4 _lh_span_LH_C_0_1_4) then
        (let rec _lh_matchIdent_3_5 = ((span_d0_d3_d0 _lh_span_arg1_1_4) _lh_span_LH_C_1_1_4) in
          (match _lh_matchIdent_3_5 with
            | `LH_P2(_lh_span_LH_P2_0_1_4, _lh_span_LH_P2_1_1_4) -> 
              (`LH_P2((let rec h_7_3 = (lazy _lh_span_LH_C_0_1_4) in
                (let rec t_8_0 = (lazy _lh_span_LH_P2_0_1_4) in
                  (fun f_6_4 i_6_4 -> 
                    (((foldl_d0_d3_d1 f_6_4) ((f_6_4 i_6_4) (Lazy.force h_7_3))) (Lazy.force t_8_0))))), _lh_span_LH_P2_1_1_4))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_6_5 i_6_5 -> 
          i_6_5), (`LH_C(_lh_span_LH_C_0_1_4, _lh_span_LH_C_1_1_4)))))
    | _ -> 
      (failwith "error"))
and span_d1_d0_d0 _lh_span_arg1_1_1 _lh_span_arg2_1_1 =
  (match _lh_span_arg2_1_1 with
    | `LH_N -> 
      (`LH_P2((fun f_5_0 i_5_0 -> 
        i_5_0), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_1, _lh_span_LH_C_1_1_1) -> 
      (if (_lh_span_arg1_1_1 _lh_span_LH_C_0_1_1) then
        (let rec _lh_matchIdent_2_9 = ((span_d1_d0_d0 _lh_span_arg1_1_1) _lh_span_LH_C_1_1_1) in
          (match _lh_matchIdent_2_9 with
            | `LH_P2(_lh_span_LH_P2_0_1_1, _lh_span_LH_P2_1_1_1) -> 
              (`LH_P2((let rec h_5_7 = (lazy _lh_span_LH_C_0_1_1) in
                (let rec t_6_4 = (lazy _lh_span_LH_P2_0_1_1) in
                  (fun f_5_1 i_5_1 -> 
                    (((foldl_d1_d0_d1 f_5_1) ((f_5_1 i_5_1) (Lazy.force h_5_7))) (Lazy.force t_6_4))))), _lh_span_LH_P2_1_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_5_2 i_5_2 -> 
          i_5_2), (`LH_C(_lh_span_LH_C_0_1_1, _lh_span_LH_C_1_1_1)))))
    | _ -> 
      (failwith "error"))
and span_d1_d1_d0 _lh_span_arg1_1_5 _lh_span_arg2_1_5 =
  (match _lh_span_arg2_1_5 with
    | `LH_N -> 
      (`LH_P2((fun f_6_9 i_6_9 -> 
        i_6_9), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_5, _lh_span_LH_C_1_1_5) -> 
      (if (_lh_span_arg1_1_5 _lh_span_LH_C_0_1_5) then
        (let rec _lh_matchIdent_3_9 = ((span_d1_d1_d0 _lh_span_arg1_1_5) _lh_span_LH_C_1_1_5) in
          (match _lh_matchIdent_3_9 with
            | `LH_P2(_lh_span_LH_P2_0_1_5, _lh_span_LH_P2_1_1_5) -> 
              (`LH_P2((let rec h_8_7 = (lazy _lh_span_LH_C_0_1_5) in
                (let rec t_9_4 = (lazy _lh_span_LH_P2_0_1_5) in
                  (fun f_7_0 i_7_0 -> 
                    (((foldl_d1_d1_d1 f_7_0) ((f_7_0 i_7_0) (Lazy.force h_8_7))) (Lazy.force t_9_4))))), _lh_span_LH_P2_1_1_5))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_7_1 i_7_1 -> 
          i_7_1), (`LH_C(_lh_span_LH_C_0_1_5, _lh_span_LH_C_1_1_5)))))
    | _ -> 
      (failwith "error"))
and span_d1_d2_d0 _lh_span_arg1_1_7 _lh_span_arg2_1_7 =
  (match _lh_span_arg2_1_7 with
    | `LH_N -> 
      (`LH_P2((fun f_7_7 i_7_7 -> 
        i_7_7), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_7, _lh_span_LH_C_1_1_7) -> 
      (if (_lh_span_arg1_1_7 _lh_span_LH_C_0_1_7) then
        (let rec _lh_matchIdent_4_4 = ((span_d1_d2_d0 _lh_span_arg1_1_7) _lh_span_LH_C_1_1_7) in
          (match _lh_matchIdent_4_4 with
            | `LH_P2(_lh_span_LH_P2_0_1_7, _lh_span_LH_P2_1_1_7) -> 
              (`LH_P2((let rec h_9_4 = (lazy _lh_span_LH_C_0_1_7) in
                (let rec t_1_0_1 = (lazy _lh_span_LH_P2_0_1_7) in
                  (fun f_7_8 i_7_8 -> 
                    (((foldl_d1_d2_d1 f_7_8) ((f_7_8 i_7_8) (Lazy.force h_9_4))) (Lazy.force t_1_0_1))))), _lh_span_LH_P2_1_1_7))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_7_9 i_7_9 -> 
          i_7_9), (`LH_C(_lh_span_LH_C_0_1_7, _lh_span_LH_C_1_1_7)))))
    | _ -> 
      (failwith "error"))
and span_d1_d2_d1 _lh_span_arg1_8 _lh_span_arg2_8 =
  (match _lh_span_arg2_8 with
    | `LH_N -> 
      (`LH_P2((fun f_3_2 i_3_2 -> 
        i_3_2), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_8, _lh_span_LH_C_1_8) -> 
      (if (_lh_span_arg1_8 _lh_span_LH_C_0_8) then
        (let rec _lh_matchIdent_2_3 = ((span_d1_d2_d1 _lh_span_arg1_8) _lh_span_LH_C_1_8) in
          (match _lh_matchIdent_2_3 with
            | `LH_P2(_lh_span_LH_P2_0_8, _lh_span_LH_P2_1_8) -> 
              (`LH_P2((let rec h_3_7 = (lazy _lh_span_LH_C_0_8) in
                (let rec t_4_1 = (lazy _lh_span_LH_P2_0_8) in
                  (fun f_3_3 i_3_3 -> 
                    (((foldl_d1_d2_d3 f_3_3) ((f_3_3 i_3_3) (Lazy.force h_3_7))) (Lazy.force t_4_1))))), _lh_span_LH_P2_1_8))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_3_4 i_3_4 -> 
          i_3_4), (`LH_C(_lh_span_LH_C_0_8, _lh_span_LH_C_1_8)))))
    | _ -> 
      (failwith "error"))
and span_d1_d3_d0 _lh_span_arg1_1_6 _lh_span_arg2_1_6 =
  (match _lh_span_arg2_1_6 with
    | `LH_N -> 
      (`LH_P2((fun f_7_2 i_7_2 -> 
        i_7_2), (`LH_N)))
    | `LH_C(_lh_span_LH_C_0_1_6, _lh_span_LH_C_1_1_6) -> 
      (if (_lh_span_arg1_1_6 _lh_span_LH_C_0_1_6) then
        (let rec _lh_matchIdent_4_0 = ((span_d1_d3_d0 _lh_span_arg1_1_6) _lh_span_LH_C_1_1_6) in
          (match _lh_matchIdent_4_0 with
            | `LH_P2(_lh_span_LH_P2_0_1_6, _lh_span_LH_P2_1_1_6) -> 
              (`LH_P2((let rec h_8_9 = (lazy _lh_span_LH_C_0_1_6) in
                (let rec t_9_6 = (lazy _lh_span_LH_P2_0_1_6) in
                  (fun f_7_3 i_7_3 -> 
                    (((foldl_d1_d3_d1 f_7_3) ((f_7_3 i_7_3) (Lazy.force h_8_9))) (Lazy.force t_9_6))))), _lh_span_LH_P2_1_1_6))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_7_4 i_7_4 -> 
          i_7_4), (`LH_C(_lh_span_LH_C_0_1_6, _lh_span_LH_C_1_1_6)))))
    | _ -> 
      (failwith "error"))
and testGenRegexs_nofib_d0_d0_d0 _lh_testGenRegexs_nofib_arg1_1 =
  (concat_d0_d0_d0 (expand_d0_d0_d0 _lh_testGenRegexs_nofib_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_GenRegexs_nofib" (fun () -> ignore ((testGenRegexs_nofib_d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_GenRegexs_nofib" (fun () -> ignore ((testGenRegexs_nofib_d0_d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_GenRegexs_nofib" (fun () -> ignore ((testGenRegexs_nofib_d0_d0_d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
])
