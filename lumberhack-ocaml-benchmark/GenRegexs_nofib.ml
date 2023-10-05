(*
touch ./GenRegexs_nofib.mli && ocamlc ./GenRegexs_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./GenRegexs_nofib.ml -o "./GenRegexs_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./GenRegexs_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec enumFromThenTo__d0 a_1_0 t_3_2 b_6 =
  (if (a_1_0 <= b_6) then
    (`LH_C(a_1_0, (((enumFromThenTo__d0 t_3_2) ((2 * t_3_2) - a_1_0)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo__d0 a_8 b_4 =
  (if (a_8 <= b_4) then
    (`LH_C(a_8, ((enumFromTo__d0 (a_8 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_9 b_5 =
  (if (a_9 <= b_5) then
    (`LH_C(a_9, ((enumFromTo__d2 (a_9 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d3 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec foldl__d0 f_1_2 i_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (((foldl__d0 f_1_2) ((f_1_2 i_3) h_2_4)) t_2_6)
    | `LH_N -> 
      i_3);;
let rec foldl__d1 f_1_3 i_4 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_8, t_3_0) -> 
      (((foldl__d1 f_1_3) ((f_1_3 i_4) h_2_8)) t_3_0)
    | `LH_N -> 
      i_4);;
let rec length__d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d0 t_2_9))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (1 + (length__d1 t_2_4))
    | `LH_N -> 
      0);;
let rec length__d2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d2 t_2_2))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d0 t_3_1) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d1 t_2_5) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d2 t_2_7) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec max__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec reverse_helper__d0 ls_2_3 a_7 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((reverse_helper__d0 t_2_8) (`LH_C(h_2_6, a_7)))
    | `LH_N -> 
      a_7);;
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
                            (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
                              (match _lh_listcomp_fun_para_1_0 with
                                | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
                                  (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
                                    (match _lh_listcomp_fun_para_1_1 with
                                      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
                                        (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_0), _lh_listcomp_fun_ls_h_1_1)), (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))) in
                                    (_lh_listcomp_fun_1_1 (expand__d0 _lh_alphabeticRule_LH_C_1_7)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_1_0 ((enumFromTo__d0 (int_of_char _lh_alphabeticRule_LH_C_0_4)) (int_of_char _lh_alphabeticRule_LH_C_0_6))))
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
                                    (_lh_listcomp_fun_1_3 (expand__d0 _lh_alphabeticRule_LH_C_1_7)))
                                | `LH_N -> 
                                  (`LH_N))) in
                              (_lh_listcomp_fun_1_2 (reverse__d0 ((enumFromTo__d1 (int_of_char _lh_alphabeticRule_LH_C_0_6)) (int_of_char _lh_alphabeticRule_LH_C_0_4))))))
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
    | `LH_C(h_2_1, t_2_3) -> 
      ((mappend__d0 h_2_1) (concat__d0 t_2_3))
    | `LH_N -> 
      (`LH_N))
and constantRule__d0 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9 (expand__d0 _lh_constantRule_LH_C_1_1)))
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
                              (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
                                (match _lh_listcomp_fun_para_1_4 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
                                    (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
                                      (match _lh_listcomp_fun_para_1_5 with
                                        | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
                                          (`LH_C(((mappend__d1 ((pad__d0 (string_of_int _lh_listcomp_fun_ls_h_1_4)) width_1)) _lh_listcomp_fun_ls_h_1_5), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5)))
                                        | `LH_N -> 
                                          (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))) in
                                      (_lh_listcomp_fun_1_5 (expand__d0 _lh_numericRule_LH_C_1_3)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_1_4 (if (_lh_numericRule_LH_P2_0_5 < _lh_numericRule_LH_P2_1_5) then
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

(* lumberhack *)
let rec foldl__d0__d0 f_1_0 i_1_0 ls_1_1 =
  ((ls_1_1 f_1_0) i_1_0);;
let rec foldl__d0__d1 f_5 i_5 ls_6 =
  ((ls_6 f_5) i_5);;
let rec foldl__d0__d2 f_4 i_4 ls_4 =
  ((ls_4 f_4) i_4);;
let rec foldl__d0__d3 f_9 i_9 ls_9 =
  ((ls_9 f_9) i_9);;
let rec foldl__d1__d0 f_2_0 i_2_0 ls_1_5 =
  ((ls_1_5 f_2_0) i_2_0);;
let rec foldl__d1__d1 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec foldl__d1__d2 f_2_4 i_2_4 ls_2_0 =
  ((ls_2_0 f_2_4) i_2_4);;
let rec foldl__d1__d3 f_3_1 i_3_1 ls_2_7 =
  ((ls_2_7 f_3_1) i_3_1);;
let rec length__d0__d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_5) -> 
      (1 + (length__d0__d0 t_5))
    | `LH_N -> 
      0);;
let rec length__d0__d1 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_4, t_3_7) -> 
      (1 + (length__d0__d1 t_3_7))
    | `LH_N -> 
      0);;
let rec length__d0__d2 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_9, t_2_0) -> 
      (1 + (length__d0__d2 t_2_0))
    | `LH_N -> 
      0);;
let rec length__d0__d3 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length__d0__d3 t_2))
    | `LH_N -> 
      0);;
let rec length__d1__d0 ls_7 =
  (match ls_7 with
    | `LH_C(h_7, t_8) -> 
      (1 + (length__d1__d0 t_8))
    | `LH_N -> 
      0);;
let rec length__d1__d1 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_2_4, t_2_6) -> 
      (1 + (length__d1__d1 t_2_6))
    | `LH_N -> 
      0);;
let rec length__d1__d2 ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_6) -> 
      (1 + (length__d1__d2 t_6))
    | `LH_N -> 
      0);;
let rec length__d1__d3 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d1__d3 t_0))
    | `LH_N -> 
      0);;
let rec length__d2__d0 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_3, t_1_4) -> 
      (1 + (length__d2__d0 t_1_4))
    | `LH_N -> 
      0);;
let rec length__d2__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_2, t_1_3) -> 
      (1 + (length__d2__d1 t_1_3))
    | `LH_N -> 
      0);;
let rec length__d2__d2 ls_8 =
  (match ls_8 with
    | `LH_C(h_8, t_9) -> 
      (1 + (length__d2__d2 t_9))
    | `LH_N -> 
      0);;
let rec length__d2__d3 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_2_5, t_2_7) -> 
      (1 + (length__d2__d3 t_2_7))
    | `LH_N -> 
      0);;
let rec mappend__d0__d0 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_1_0, t_1_1) -> 
      (`LH_C(h_1_0, ((mappend__d0__d0 t_1_1) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend__d0__d1 xs_9 ys_1_5 =
  (match xs_9 with
    | `LH_C(h_3_1, t_3_4) -> 
      (`LH_C(h_3_1, ((mappend__d0__d1 t_3_4) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1__d0 xs_8 ys_1_2 =
  (match xs_8 with
    | `LH_C(h_2_9, t_3_2) -> 
      (`LH_C(h_2_9, ((mappend__d1__d0 t_3_2) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d1__d1 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1__d1 t_2_3) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend__d1__d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend__d1__d2 t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend__d1__d3 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1_7, t_1_8) -> 
      (`LH_C(h_1_7, ((mappend__d1__d3 t_1_8) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend__d2__d0 xs_6 ys_6 =
  (xs_6 ys_6);;
let rec mappend__d2__d1 xs_5 ys_5 =
  (xs_5 ys_5);;
let rec mappend__d2__d2 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d2__d3 xs_7 ys_7 =
  (xs_7 ys_7);;
let rec max__d0__d0 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 > _lh_max_arg2_2) then
    _lh_max_arg1_2
  else
    _lh_max_arg2_2);;
let rec max__d0__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec max__d0__d2 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec max__d0__d3 _lh_max_arg1_3 _lh_max_arg2_3 =
  (if (_lh_max_arg1_3 > _lh_max_arg2_3) then
    _lh_max_arg1_3
  else
    _lh_max_arg2_3);;
let rec reverse_helper__d0__d0 ls_2_4 a_2_5 =
  (ls_2_4 a_2_5);;
let rec reverse_helper__d0__d1 ls_2_2 a_2_3 =
  (ls_2_2 a_2_3);;
let rec reverse_helper__d0__d2 ls_2_6 a_2_8 =
  (ls_2_6 a_2_8);;
let rec reverse_helper__d0__d3 ls_1_9 a_1_7 =
  (ls_1_9 a_1_7);;
let rec alphabeticRule__d0__d0 _lh_alphabeticRule_arg1_3 =
  (match _lh_alphabeticRule_arg1_3 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_1_2, _lh_alphabeticRule_LH_C_1_2_6) -> 
      (match _lh_alphabeticRule_LH_C_1_2_6 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1_3, _lh_alphabeticRule_LH_C_1_2_7) -> 
          (match _lh_alphabeticRule_LH_C_0_1_3 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_2_7 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_1_4, _lh_alphabeticRule_LH_C_1_2_8) -> 
                  (match _lh_alphabeticRule_LH_C_1_2_8 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_1_5, _lh_alphabeticRule_LH_C_1_2_9) -> 
                      (match _lh_alphabeticRule_LH_C_0_1_5 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_1_2) <= (int_of_char _lh_alphabeticRule_LH_C_0_1_4)) then
                            (let rec _lh_listcomp_fun_6_1 = (fun _lh_listcomp_fun_para_2_9 -> 
                              ((_lh_listcomp_fun_para_2_9 _lh_alphabeticRule_LH_C_1_2_9) _lh_listcomp_fun_6_1)) in
                              (_lh_listcomp_fun_6_1 ((enumFromTo__d0__d0 (int_of_char _lh_alphabeticRule_LH_C_0_1_2)) (int_of_char _lh_alphabeticRule_LH_C_0_1_4))))
                          else
                            (let rec _lh_listcomp_fun_6_2 = (fun _lh_listcomp_fun_para_3_0 -> 
                              ((_lh_listcomp_fun_para_3_0 _lh_alphabeticRule_LH_C_1_2_9) _lh_listcomp_fun_6_2)) in
                              (_lh_listcomp_fun_6_2 (reverse__d0__d1 ((enumFromTo__d1__d0 (int_of_char _lh_alphabeticRule_LH_C_0_1_4)) (int_of_char _lh_alphabeticRule_LH_C_0_1_2))))))
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
and alphabeticRule__d0__d1 _lh_alphabeticRule_arg1_2 =
  (match _lh_alphabeticRule_arg1_2 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_8, _lh_alphabeticRule_LH_C_1_1_2) -> 
      (match _lh_alphabeticRule_LH_C_1_1_2 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_9, _lh_alphabeticRule_LH_C_1_1_3) -> 
          (match _lh_alphabeticRule_LH_C_0_9 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_1_3 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_1_0, _lh_alphabeticRule_LH_C_1_1_4) -> 
                  (match _lh_alphabeticRule_LH_C_1_1_4 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_1_1, _lh_alphabeticRule_LH_C_1_1_5) -> 
                      (match _lh_alphabeticRule_LH_C_0_1_1 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_8) <= (int_of_char _lh_alphabeticRule_LH_C_0_1_0)) then
                            (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_2 -> 
                              ((_lh_listcomp_fun_para_1_2 _lh_alphabeticRule_LH_C_1_1_5) _lh_listcomp_fun_2_0)) in
                              (_lh_listcomp_fun_2_0 ((enumFromTo__d0__d1 (int_of_char _lh_alphabeticRule_LH_C_0_8)) (int_of_char _lh_alphabeticRule_LH_C_0_1_0))))
                          else
                            (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_3 -> 
                              ((_lh_listcomp_fun_para_1_3 _lh_alphabeticRule_LH_C_1_1_5) _lh_listcomp_fun_2_1)) in
                              (_lh_listcomp_fun_2_1 (reverse__d0__d0 ((enumFromTo__d1__d1 (int_of_char _lh_alphabeticRule_LH_C_0_1_0)) (int_of_char _lh_alphabeticRule_LH_C_0_8))))))
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
and alphabeticRule__d0__d2 _lh_alphabeticRule_arg1_0 =
  (match _lh_alphabeticRule_arg1_0 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_0, _lh_alphabeticRule_LH_C_1_2) -> 
      (match _lh_alphabeticRule_LH_C_1_2 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1, _lh_alphabeticRule_LH_C_1_3) -> 
          (match _lh_alphabeticRule_LH_C_0_1 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_3 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2, _lh_alphabeticRule_LH_C_1_4) -> 
                  (match _lh_alphabeticRule_LH_C_1_4 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3, _lh_alphabeticRule_LH_C_1_5) -> 
                      (match _lh_alphabeticRule_LH_C_0_3 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_0) <= (int_of_char _lh_alphabeticRule_LH_C_0_2)) then
                            (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
                              ((_lh_listcomp_fun_para_2 _lh_alphabeticRule_LH_C_1_5) _lh_listcomp_fun_4)) in
                              (_lh_listcomp_fun_4 ((enumFromTo__d0__d2 (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_3 -> 
                              ((_lh_listcomp_fun_para_3 _lh_alphabeticRule_LH_C_1_5) _lh_listcomp_fun_5)) in
                              (_lh_listcomp_fun_5 (reverse__d0__d2 ((enumFromTo__d1__d2 (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
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
and alphabeticRule__d0__d3 _lh_alphabeticRule_arg1_1 =
  (match _lh_alphabeticRule_arg1_1 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_4, _lh_alphabeticRule_LH_C_1_6) -> 
      (match _lh_alphabeticRule_LH_C_1_6 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_5, _lh_alphabeticRule_LH_C_1_7) -> 
          (match _lh_alphabeticRule_LH_C_0_5 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_7 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_6, _lh_alphabeticRule_LH_C_1_8) -> 
                  (match _lh_alphabeticRule_LH_C_1_8 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_7, _lh_alphabeticRule_LH_C_1_9) -> 
                      (match _lh_alphabeticRule_LH_C_0_7 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_4) <= (int_of_char _lh_alphabeticRule_LH_C_0_6)) then
                            (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_9 -> 
                              ((_lh_listcomp_fun_para_9 _lh_alphabeticRule_LH_C_1_9) _lh_listcomp_fun_1_5)) in
                              (_lh_listcomp_fun_1_5 ((enumFromTo__d0__d3 (int_of_char _lh_alphabeticRule_LH_C_0_4)) (int_of_char _lh_alphabeticRule_LH_C_0_6))))
                          else
                            (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_0 -> 
                              ((_lh_listcomp_fun_para_1_0 _lh_alphabeticRule_LH_C_1_9) _lh_listcomp_fun_1_6)) in
                              (_lh_listcomp_fun_1_6 (reverse__d0__d3 ((enumFromTo__d1__d3 (int_of_char _lh_alphabeticRule_LH_C_0_6)) (int_of_char _lh_alphabeticRule_LH_C_0_4))))))
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
and concat__d0__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_1_1, t_1_2) -> 
      ((mappend__d0__d1 h_1_1) (concat__d0__d1 t_1_2))
    | `LH_N -> 
      (`LH_N))
and concat__d0__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_6, t_7) -> 
      ((mappend__d0__d0 h_6) (concat__d0__d1 t_7))
    | `LH_N -> 
      (`LH_N))
and constantRule__d0__d0 _lh_constantRule_arg1_1 =
  (match _lh_constantRule_arg1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1, _lh_constantRule_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_2_7 = (fun _lh_listcomp_fun_para_1_6 -> 
        (match _lh_listcomp_fun_para_1_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1, _lh_listcomp_fun_ls_h_1_3)), (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_7 (expand__d0__d1 _lh_constantRule_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d1 _lh_constantRule_arg1_2 =
  (match _lh_constantRule_arg1_2 with
    | `LH_C(_lh_constantRule_LH_C_0_2, _lh_constantRule_LH_C_1_2) -> 
      (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_2_1 -> 
        (match _lh_listcomp_fun_para_2_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_2) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_2, _lh_listcomp_fun_ls_h_2_2)), (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3_9 (expand__d0__d1 _lh_constantRule_LH_C_1_2)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d2 _lh_constantRule_arg1_4 =
  (match _lh_constantRule_arg1_4 with
    | `LH_C(_lh_constantRule_LH_C_0_4, _lh_constantRule_LH_C_1_4) -> 
      (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_2_7 -> 
        (match _lh_listcomp_fun_para_2_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_4, _lh_listcomp_fun_ls_h_3_0)), (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_3_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_5_9 (expand__d0__d0 _lh_constantRule_LH_C_1_4)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d3 _lh_constantRule_arg1_3 =
  (match _lh_constantRule_arg1_3 with
    | `LH_C(_lh_constantRule_LH_C_0_3, _lh_constantRule_LH_C_1_3) -> 
      (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_2_2 -> 
        (match _lh_listcomp_fun_para_2_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_3, _lh_listcomp_fun_ls_h_2_3)), (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_2_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_1 (expand__d0__d2 _lh_constantRule_LH_C_1_3)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d4 _lh_constantRule_arg1_5 =
  (match _lh_constantRule_arg1_5 with
    | `LH_C(_lh_constantRule_LH_C_0_5, _lh_constantRule_LH_C_1_5) -> 
      (let rec _lh_listcomp_fun_7_7 = (fun _lh_listcomp_fun_para_3_7 -> 
        (match _lh_listcomp_fun_para_3_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_4_1) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_5, _lh_listcomp_fun_ls_h_3_7)), (_lh_listcomp_fun_7_7 _lh_listcomp_fun_ls_t_4_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_7_7 (expand__d0__d3 _lh_constantRule_LH_C_1_5)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d5 _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_0, _lh_listcomp_fun_ls_h_6)), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_4 (expand__d0__d3 _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and enumFromThenTo__d0__d0 a_2_7 t_3_8 b_1_8 =
  (if (a_2_7 <= b_1_8) then
    (let rec _lh_listcomp_fun_ls_t_3_7 = (((enumFromThenTo__d0__d0 t_3_8) ((2 * t_3_8) - a_2_7)) b_1_8) in
      (let rec _lh_listcomp_fun_ls_h_3_3 = a_2_7 in
        (fun _lh_listcomp_fun_7_2 _lh_numericRule_LH_C_1_2_6 width_1_8 -> 
          (let rec _lh_listcomp_fun_7_3 = (fun _lh_listcomp_fun_para_3_5 -> 
            (match _lh_listcomp_fun_para_3_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_4, _lh_listcomp_fun_ls_t_3_8) -> 
                (`LH_C(((mappend__d1__d0 ((pad__d0__d0 (string_of_int _lh_listcomp_fun_ls_h_3_3)) width_1_8)) _lh_listcomp_fun_ls_h_3_4), (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_3_8)))
              | `LH_N -> 
                (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_3_7))) in
            (_lh_listcomp_fun_7_3 (expand__d0__d1 _lh_numericRule_LH_C_1_2_6))))))
  else
    (fun _lh_listcomp_fun_7_4 _lh_numericRule_LH_C_1_2_7 width_1_9 -> 
      (`LH_N)))
and enumFromThenTo__d0__d1 a_1 t_4 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2 = (((enumFromThenTo__d0__d1 t_4) ((2 * t_4) - a_1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_1 in
        (fun _lh_listcomp_fun_6 _lh_numericRule_LH_C_1_2 width_1 -> 
          (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_4 -> 
            (match _lh_listcomp_fun_para_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                (`LH_C(((mappend__d1__d1 ((pad__d0__d1 (string_of_int _lh_listcomp_fun_ls_h_2)) width_1)) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)))
              | `LH_N -> 
                (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2))) in
            (_lh_listcomp_fun_7 (expand__d0__d2 _lh_numericRule_LH_C_1_2))))))
  else
    (fun _lh_listcomp_fun_8 _lh_numericRule_LH_C_1_3 width_2 -> 
      (`LH_N)))
and enumFromThenTo__d0__d2 a_2_0 t_2_9 b_1_3 =
  (if (a_2_0 <= b_1_3) then
    (let rec _lh_listcomp_fun_ls_t_2_9 = (((enumFromThenTo__d0__d2 t_2_9) ((2 * t_2_9) - a_2_0)) b_1_3) in
      (let rec _lh_listcomp_fun_ls_h_2_8 = a_2_0 in
        (fun _lh_listcomp_fun_5_0 _lh_numericRule_LH_C_1_1_8 width_1_2 -> 
          (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_2_5 -> 
            (match _lh_listcomp_fun_para_2_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_3_0) -> 
                (`LH_C(((mappend__d1__d3 ((pad__d0__d3 (string_of_int _lh_listcomp_fun_ls_h_2_8)) width_1_2)) _lh_listcomp_fun_ls_h_2_9), (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_3_0)))
              | `LH_N -> 
                (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_2_9))) in
            (_lh_listcomp_fun_5_1 (expand__d0__d3 _lh_numericRule_LH_C_1_1_8))))))
  else
    (fun _lh_listcomp_fun_5_2 _lh_numericRule_LH_C_1_1_9 width_1_3 -> 
      (`LH_N)))
and enumFromThenTo__d0__d3 a_9 t_2_1 b_7 =
  (if (a_9 <= b_7) then
    (let rec _lh_listcomp_fun_ls_t_1_6 = (((enumFromThenTo__d0__d3 t_2_1) ((2 * t_2_1) - a_9)) b_7) in
      (let rec _lh_listcomp_fun_ls_h_1_6 = a_9 in
        (fun _lh_listcomp_fun_3_2 _lh_numericRule_LH_C_1_1_5 width_1_0 -> 
          (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_1_8 -> 
            (match _lh_listcomp_fun_para_1_8 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
                (`LH_C(((mappend__d1__d2 ((pad__d0__d2 (string_of_int _lh_listcomp_fun_ls_h_1_6)) width_1_0)) _lh_listcomp_fun_ls_h_1_7), (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_1_7)))
              | `LH_N -> 
                (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_1_6))) in
            (_lh_listcomp_fun_3_3 (expand__d0__d3 _lh_numericRule_LH_C_1_1_5))))))
  else
    (fun _lh_listcomp_fun_3_4 _lh_numericRule_LH_C_1_1_6 width_1_1 -> 
      (`LH_N)))
and enumFromTo__d0__d0 a_1_6 b_1_0 =
  (if (a_1_6 <= b_1_0) then
    (let rec _lh_listcomp_fun_ls_t_2_4 = ((enumFromTo__d0__d0 (a_1_6 + 1)) b_1_0) in
      (let rec _lh_listcomp_fun_ls_h_2_4 = a_1_6 in
        (fun _lh_alphabeticRule_LH_C_1_2_1 _lh_listcomp_fun_4_2 -> 
          (let rec _lh_listcomp_fun_4_3 = (fun _lh_listcomp_fun_para_2_3 -> 
            (match _lh_listcomp_fun_para_2_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_5) -> 
                (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_2_4), _lh_listcomp_fun_ls_h_2_5)), (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_2_5)))
              | `LH_N -> 
                (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_2_4))) in
            (_lh_listcomp_fun_4_3 (expand__d0__d0 _lh_alphabeticRule_LH_C_1_2_1))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_2_2 _lh_listcomp_fun_4_4 -> 
      (`LH_N)))
and enumFromTo__d0__d1 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo__d0__d1 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_3 in
        (fun _lh_alphabeticRule_LH_C_1_1_0 _lh_listcomp_fun_1_7 -> 
          (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_1 -> 
            (match _lh_listcomp_fun_para_1_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_7), _lh_listcomp_fun_ls_h_8)), (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_8)))
              | `LH_N -> 
                (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_7))) in
            (_lh_listcomp_fun_1_8 (expand__d0__d1 _lh_alphabeticRule_LH_C_1_1_0))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_1_1 _lh_listcomp_fun_1_9 -> 
      (`LH_N)))
and enumFromTo__d0__d2 a_1_8 b_1_1 =
  (if (a_1_8 <= b_1_1) then
    (let rec _lh_listcomp_fun_ls_t_2_6 = ((enumFromTo__d0__d2 (a_1_8 + 1)) b_1_1) in
      (let rec _lh_listcomp_fun_ls_h_2_6 = a_1_8 in
        (fun _lh_alphabeticRule_LH_C_1_2_3 _lh_listcomp_fun_4_5 -> 
          (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_2_4 -> 
            (match _lh_listcomp_fun_para_2_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_t_2_7) -> 
                (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_2_6), _lh_listcomp_fun_ls_h_2_7)), (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_2_7)))
              | `LH_N -> 
                (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_2_6))) in
            (_lh_listcomp_fun_4_6 (expand__d0__d2 _lh_alphabeticRule_LH_C_1_2_3))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_2_4 _lh_listcomp_fun_4_7 -> 
      (`LH_N)))
and enumFromTo__d0__d3 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d0__d3 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_alphabeticRule_LH_C_1_0 _lh_listcomp_fun_1 -> 
          (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
            (match _lh_listcomp_fun_para_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_0), _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1)))
              | `LH_N -> 
                (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_0))) in
            (_lh_listcomp_fun_2 (expand__d0__d3 _lh_alphabeticRule_LH_C_1_0))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_1 _lh_listcomp_fun_3 -> 
      (`LH_N)))
and enumFromTo__d1__d0 a_1_3 b_9 =
  (if (a_1_3 <= b_9) then
    (let rec t_2_5 = ((enumFromTo__d1__d0 (a_1_3 + 1)) b_9) in
      (let rec h_2_3 = a_1_3 in
        (fun a_1_4 -> 
          ((reverse_helper__d0__d1 t_2_5) (let rec _lh_listcomp_fun_ls_t_2_0 = a_1_4 in
            (let rec _lh_listcomp_fun_ls_h_2_0 = h_2_3 in
              (fun _lh_alphabeticRule_LH_C_1_1_9 _lh_listcomp_fun_3_7 -> 
                (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_2_0 -> 
                  (match _lh_listcomp_fun_para_2_0 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
                      (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_2_0), _lh_listcomp_fun_ls_h_2_1)), (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_1)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_0))) in
                  (_lh_listcomp_fun_3_8 (expand__d0__d1 _lh_alphabeticRule_LH_C_1_1_9))))))))))
  else
    (fun a_1_5 -> 
      a_1_5))
and enumFromTo__d1__d1 a_5 b_5 =
  (if (a_5 <= b_5) then
    (let rec t_1_9 = ((enumFromTo__d1__d1 (a_5 + 1)) b_5) in
      (let rec h_1_8 = a_5 in
        (fun a_6 -> 
          ((reverse_helper__d0__d0 t_1_9) (let rec _lh_listcomp_fun_ls_t_1_1 = a_6 in
            (let rec _lh_listcomp_fun_ls_h_1_1 = h_1_8 in
              (fun _lh_alphabeticRule_LH_C_1_1_6 _lh_listcomp_fun_2_5 -> 
                (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_5 -> 
                  (match _lh_listcomp_fun_para_1_5 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
                      (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_1), _lh_listcomp_fun_ls_h_1_2)), (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_2)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_1))) in
                  (_lh_listcomp_fun_2_6 (expand__d0__d1 _lh_alphabeticRule_LH_C_1_1_6))))))))))
  else
    (fun a_7 -> 
      a_7))
and enumFromTo__d1__d2 a_2_9 b_1_9 =
  (if (a_2_9 <= b_1_9) then
    (let rec t_3_9 = ((enumFromTo__d1__d2 (a_2_9 + 1)) b_1_9) in
      (let rec h_3_5 = a_2_9 in
        (fun a_3_0 -> 
          ((reverse_helper__d0__d2 t_3_9) (let rec _lh_listcomp_fun_ls_t_3_9 = a_3_0 in
            (let rec _lh_listcomp_fun_ls_h_3_5 = h_3_5 in
              (fun _lh_alphabeticRule_LH_C_1_3_1 _lh_listcomp_fun_7_5 -> 
                (let rec _lh_listcomp_fun_7_6 = (fun _lh_listcomp_fun_para_3_6 -> 
                  (match _lh_listcomp_fun_para_3_6 with
                    | `LH_C(_lh_listcomp_fun_ls_h_3_6, _lh_listcomp_fun_ls_t_4_0) -> 
                      (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_3_5), _lh_listcomp_fun_ls_h_3_6)), (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_4_0)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_7_5 _lh_listcomp_fun_ls_t_3_9))) in
                  (_lh_listcomp_fun_7_6 (expand__d0__d2 _lh_alphabeticRule_LH_C_1_3_1))))))))))
  else
    (fun a_3_1 -> 
      a_3_1))
and enumFromTo__d1__d3 a_1_0 b_8 =
  (if (a_1_0 <= b_8) then
    (let rec t_2_2 = ((enumFromTo__d1__d3 (a_1_0 + 1)) b_8) in
      (let rec h_2_0 = a_1_0 in
        (fun a_1_1 -> 
          ((reverse_helper__d0__d3 t_2_2) (let rec _lh_listcomp_fun_ls_t_1_8 = a_1_1 in
            (let rec _lh_listcomp_fun_ls_h_1_8 = h_2_0 in
              (fun _lh_alphabeticRule_LH_C_1_1_8 _lh_listcomp_fun_3_5 -> 
                (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_1_9 -> 
                  (match _lh_listcomp_fun_para_1_9 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
                      (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_1_8), _lh_listcomp_fun_ls_h_1_9)), (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_1_9)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_1_8))) in
                  (_lh_listcomp_fun_3_6 (expand__d0__d3 _lh_alphabeticRule_LH_C_1_1_8))))))))))
  else
    (fun a_1_2 -> 
      a_1_2))
and enumFromTo__d2__d0 a_8 b_6 =
  (if (a_8 <= b_6) then
    (let rec _lh_listcomp_fun_ls_t_1_4 = ((enumFromTo__d2__d0 (a_8 + 1)) b_6) in
      (let rec _lh_listcomp_fun_ls_h_1_4 = a_8 in
        (fun _lh_listcomp_fun_2_9 _lh_numericRule_LH_C_1_1_3 width_8 -> 
          (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_1_7 -> 
            (match _lh_listcomp_fun_para_1_7 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
                (`LH_C(((mappend__d1__d0 ((pad__d0__d0 (string_of_int _lh_listcomp_fun_ls_h_1_4)) width_8)) _lh_listcomp_fun_ls_h_1_5), (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_1_5)))
              | `LH_N -> 
                (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_1_4))) in
            (_lh_listcomp_fun_3_0 (expand__d0__d1 _lh_numericRule_LH_C_1_1_3))))))
  else
    (fun _lh_listcomp_fun_3_1 _lh_numericRule_LH_C_1_1_4 width_9 -> 
      (`LH_N)))
and enumFromTo__d2__d1 a_4 b_4 =
  (if (a_4 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo__d2__d1 (a_4 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_9 = a_4 in
        (fun _lh_listcomp_fun_2_2 _lh_numericRule_LH_C_1_9 width_6 -> 
          (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_4 -> 
            (match _lh_listcomp_fun_para_1_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
                (`LH_C(((mappend__d1__d1 ((pad__d0__d1 (string_of_int _lh_listcomp_fun_ls_h_9)) width_6)) _lh_listcomp_fun_ls_h_1_0), (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_0)))
              | `LH_N -> 
                (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_9))) in
            (_lh_listcomp_fun_2_3 (expand__d0__d2 _lh_numericRule_LH_C_1_9))))))
  else
    (fun _lh_listcomp_fun_2_4 _lh_numericRule_LH_C_1_1_0 width_7 -> 
      (`LH_N)))
and enumFromTo__d2__d2 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo__d2__d2 (a_2 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_4 = a_2 in
        (fun _lh_listcomp_fun_1_0 _lh_numericRule_LH_C_1_4 width_3 -> 
          (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_6 -> 
            (match _lh_listcomp_fun_para_6 with
              | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                (`LH_C(((mappend__d1__d3 ((pad__d0__d3 (string_of_int _lh_listcomp_fun_ls_h_4)) width_3)) _lh_listcomp_fun_ls_h_5), (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_5)))
              | `LH_N -> 
                (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_4))) in
            (_lh_listcomp_fun_1_1 (expand__d0__d3 _lh_numericRule_LH_C_1_4))))))
  else
    (fun _lh_listcomp_fun_1_2 _lh_numericRule_LH_C_1_5 width_4 -> 
      (`LH_N)))
and enumFromTo__d2__d3 a_2_6 b_1_7 =
  (if (a_2_6 <= b_1_7) then
    (let rec _lh_listcomp_fun_ls_t_3_5 = ((enumFromTo__d2__d3 (a_2_6 + 1)) b_1_7) in
      (let rec _lh_listcomp_fun_ls_h_3_1 = a_2_6 in
        (fun _lh_listcomp_fun_6_9 _lh_numericRule_LH_C_1_2_4 width_1_6 -> 
          (let rec _lh_listcomp_fun_7_0 = (fun _lh_listcomp_fun_para_3_4 -> 
            (match _lh_listcomp_fun_para_3_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_3_6) -> 
                (`LH_C(((mappend__d1__d2 ((pad__d0__d2 (string_of_int _lh_listcomp_fun_ls_h_3_1)) width_1_6)) _lh_listcomp_fun_ls_h_3_2), (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_3_6)))
              | `LH_N -> 
                (_lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_3_5))) in
            (_lh_listcomp_fun_7_0 (expand__d0__d3 _lh_numericRule_LH_C_1_2_4))))))
  else
    (fun _lh_listcomp_fun_7_1 _lh_numericRule_LH_C_1_2_5 width_1_7 -> 
      (`LH_N)))
and enumFromTo__d3__d0 a_1_9 b_1_2 =
  (if (a_1_9 <= b_1_2) then
    (let rec _lh_listcomp_fun_ls_t_2_8 = ((enumFromTo__d3__d0 (a_1_9 + 1)) b_1_2) in
      (fun _lh_listcomp_fun_4_8 -> 
        (let rec t_2_8 = (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_2_8) in
          (let rec h_2_6 = '0' in
            (fun ys_8 -> 
              (`LH_C(h_2_6, ((mappend__d2__d0 t_2_8) ys_8))))))))
  else
    (fun _lh_listcomp_fun_4_9 ys_9 -> 
      ys_9))
and enumFromTo__d3__d1 a_2_2 b_1_5 =
  (if (a_2_2 <= b_1_5) then
    (let rec _lh_listcomp_fun_ls_t_3_2 = ((enumFromTo__d3__d1 (a_2_2 + 1)) b_1_5) in
      (fun _lh_listcomp_fun_5_7 -> 
        (let rec t_3_3 = (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_3_2) in
          (let rec h_3_0 = '0' in
            (fun ys_1_3 -> 
              (`LH_C(h_3_0, ((mappend__d2__d1 t_3_3) ys_1_3))))))))
  else
    (fun _lh_listcomp_fun_5_8 ys_1_4 -> 
      ys_1_4))
and enumFromTo__d3__d2 a_2_4 b_1_6 =
  (if (a_2_4 <= b_1_6) then
    (let rec _lh_listcomp_fun_ls_t_3_4 = ((enumFromTo__d3__d2 (a_2_4 + 1)) b_1_6) in
      (fun _lh_listcomp_fun_6_5 -> 
        (let rec t_3_5 = (_lh_listcomp_fun_6_5 _lh_listcomp_fun_ls_t_3_4) in
          (let rec h_3_2 = '0' in
            (fun ys_1_6 -> 
              (`LH_C(h_3_2, ((mappend__d2__d2 t_3_5) ys_1_6))))))))
  else
    (fun _lh_listcomp_fun_6_6 ys_1_7 -> 
      ys_1_7))
and enumFromTo__d3__d3 a_2_1 b_1_4 =
  (if (a_2_1 <= b_1_4) then
    (let rec _lh_listcomp_fun_ls_t_3_1 = ((enumFromTo__d3__d3 (a_2_1 + 1)) b_1_4) in
      (fun _lh_listcomp_fun_5_3 -> 
        (let rec t_3_0 = (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_3_1) in
          (let rec h_2_7 = '0' in
            (fun ys_1_0 -> 
              (`LH_C(h_2_7, ((mappend__d2__d3 t_3_0) ys_1_0))))))))
  else
    (fun _lh_listcomp_fun_5_4 ys_1_1 -> 
      ys_1_1))
and expand__d0__d0 _lh_expand_arg1_2 =
  (match _lh_expand_arg1_2 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_2, _lh_expand_LH_C_1_2) -> 
      (match _lh_expand_LH_C_0_2 with
        | '<' -> 
          (numericRule__d0__d2 _lh_expand_LH_C_1_2)
        | '[' -> 
          (alphabeticRule__d0__d0 _lh_expand_LH_C_1_2)
        | _ -> 
          (constantRule__d0__d2 _lh_expand_arg1_2))
    | _ -> 
      (constantRule__d0__d3 _lh_expand_arg1_2))
and expand__d0__d1 _lh_expand_arg1_3 =
  (match _lh_expand_arg1_3 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_3, _lh_expand_LH_C_1_3) -> 
      (match _lh_expand_LH_C_0_3 with
        | '<' -> 
          (numericRule__d0__d0 _lh_expand_LH_C_1_3)
        | '[' -> 
          (alphabeticRule__d0__d1 _lh_expand_LH_C_1_3)
        | _ -> 
          (constantRule__d0__d0 _lh_expand_arg1_3))
    | _ -> 
      (constantRule__d0__d1 _lh_expand_arg1_3))
and expand__d0__d2 _lh_expand_arg1_1 =
  (match _lh_expand_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_1, _lh_expand_LH_C_1_1) -> 
      (match _lh_expand_LH_C_0_1 with
        | '<' -> 
          (numericRule__d0__d1 _lh_expand_LH_C_1_1)
        | '[' -> 
          (alphabeticRule__d0__d2 _lh_expand_LH_C_1_1)
        | _ -> 
          (constantRule__d0__d3 _lh_expand_arg1_1))
    | _ -> 
      (constantRule__d0__d3 _lh_expand_arg1_1))
and expand__d0__d3 _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule__d0__d3 _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule__d0__d3 _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule__d0__d4 _lh_expand_arg1_0))
    | _ -> 
      (constantRule__d0__d5 _lh_expand_arg1_0))
and mknum__d0__d0 _lh_mknum_arg1_4 =
  (((foldl__d0__d0 (fun u_4 c_8 -> 
    ((u_4 * 10) + ((int_of_char c_8) - (int_of_char '0'))))) 0) _lh_mknum_arg1_4)
and mknum__d0__d1 _lh_mknum_arg1_2 =
  (((foldl__d0__d1 (fun u_2 c_2 -> 
    ((u_2 * 10) + ((int_of_char c_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_2)
and mknum__d0__d2 _lh_mknum_arg1_6 =
  (((foldl__d0__d2 (fun u_6 c_1_1 -> 
    ((u_6 * 10) + ((int_of_char c_1_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_6)
and mknum__d0__d3 _lh_mknum_arg1_7 =
  (((foldl__d0__d3 (fun u_7 c_1_2 -> 
    ((u_7 * 10) + ((int_of_char c_1_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_7)
and mknum__d1__d0 _lh_mknum_arg1_1 =
  (((foldl__d1__d0 (fun u_1 c_1 -> 
    ((u_1 * 10) + ((int_of_char c_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1)
and mknum__d1__d1 _lh_mknum_arg1_5 =
  (((foldl__d1__d1 (fun u_5 c_1_0 -> 
    ((u_5 * 10) + ((int_of_char c_1_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_5)
and mknum__d1__d2 _lh_mknum_arg1_3 =
  (((foldl__d1__d2 (fun u_3 c_3 -> 
    ((u_3 * 10) + ((int_of_char c_3) - (int_of_char '0'))))) 0) _lh_mknum_arg1_3)
and mknum__d1__d3 _lh_mknum_arg1_0 =
  (((foldl__d1__d3 (fun u_0 c_0 -> 
    ((u_0 * 10) + ((int_of_char c_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0)
and numericRule__d0__d0 _lh_numericRule_arg1_2 =
  (let rec _lh_matchIdent_1_8 = ((span__d0__d0 (fun c_1_4 -> 
    (c_1_4 <> '-'))) _lh_numericRule_arg1_2) in
    (match _lh_matchIdent_1_8 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3_4, _lh_numericRule_LH_P2_1_1_0) -> 
        (_lh_numericRule_LH_P2_1_1_0 _lh_numericRule_LH_P2_0_3_4)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d1 _lh_numericRule_arg1_1 =
  (let rec _lh_matchIdent_1_5 = ((span__d0__d1 (fun c_1_3 -> 
    (c_1_3 <> '-'))) _lh_numericRule_arg1_1) in
    (match _lh_matchIdent_1_5 with
      | `LH_P2(_lh_numericRule_LH_P2_0_2_8, _lh_numericRule_LH_P2_1_8) -> 
        (_lh_numericRule_LH_P2_1_8 _lh_numericRule_LH_P2_0_2_8)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d2 _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_4 = ((span__d0__d3 (fun c_4 -> 
    (c_4 <> '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_4 with
      | `LH_P2(_lh_numericRule_LH_P2_0_1_0, _lh_numericRule_LH_P2_1_2) -> 
        (_lh_numericRule_LH_P2_1_2 _lh_numericRule_LH_P2_0_1_0)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d3 _lh_numericRule_arg1_3 =
  (let rec _lh_matchIdent_1_9 = ((span__d0__d2 (fun c_1_5 -> 
    (c_1_5 <> '-'))) _lh_numericRule_arg1_3) in
    (match _lh_matchIdent_1_9 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3_5, _lh_numericRule_LH_P2_1_1_1) -> 
        (_lh_numericRule_LH_P2_1_1_1 _lh_numericRule_LH_P2_0_3_5)
      | _ -> 
        (failwith "error")))
and pad__d0__d0 _lh_pad_arg1_2 _lh_pad_arg2_2 =
  ((mappend__d2__d0 (let rec _lh_listcomp_fun_6_3 = (fun _lh_listcomp_fun_para_3_1 -> 
    (_lh_listcomp_fun_para_3_1 _lh_listcomp_fun_6_3)) in
    (_lh_listcomp_fun_6_3 ((enumFromTo__d3__d0 1) (_lh_pad_arg2_2 - (length__d2__d0 _lh_pad_arg1_2)))))) _lh_pad_arg1_2)
and pad__d0__d1 _lh_pad_arg1_1 _lh_pad_arg2_1 =
  ((mappend__d2__d1 (let rec _lh_listcomp_fun_6_0 = (fun _lh_listcomp_fun_para_2_8 -> 
    (_lh_listcomp_fun_para_2_8 _lh_listcomp_fun_6_0)) in
    (_lh_listcomp_fun_6_0 ((enumFromTo__d3__d1 1) (_lh_pad_arg2_1 - (length__d2__d1 _lh_pad_arg1_1)))))) _lh_pad_arg1_1)
and pad__d0__d2 _lh_pad_arg1_3 _lh_pad_arg2_3 =
  ((mappend__d2__d2 (let rec _lh_listcomp_fun_6_7 = (fun _lh_listcomp_fun_para_3_2 -> 
    (_lh_listcomp_fun_para_3_2 _lh_listcomp_fun_6_7)) in
    (_lh_listcomp_fun_6_7 ((enumFromTo__d3__d2 1) (_lh_pad_arg2_3 - (length__d2__d2 _lh_pad_arg1_3)))))) _lh_pad_arg1_3)
and pad__d0__d3 _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend__d2__d3 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_5 -> 
    (_lh_listcomp_fun_para_5 _lh_listcomp_fun_9)) in
    (_lh_listcomp_fun_9 ((enumFromTo__d3__d3 1) (_lh_pad_arg2_0 - (length__d2__d3 _lh_pad_arg1_0)))))) _lh_pad_arg1_0)
and reverse__d0__d0 ls_1_4 =
  ((reverse_helper__d0__d0 ls_1_4) (fun _lh_alphabeticRule_LH_C_1_1_7 _lh_listcomp_fun_2_8 -> 
    (`LH_N)))
and reverse__d0__d1 ls_2_3 =
  ((reverse_helper__d0__d1 ls_2_3) (fun _lh_alphabeticRule_LH_C_1_3_0 _lh_listcomp_fun_6_4 -> 
    (`LH_N)))
and reverse__d0__d2 ls_1_6 =
  ((reverse_helper__d0__d2 ls_1_6) (fun _lh_alphabeticRule_LH_C_1_2_0 _lh_listcomp_fun_4_0 -> 
    (`LH_N)))
and reverse__d0__d3 ls_2_1 =
  ((reverse_helper__d0__d3 ls_2_1) (fun _lh_alphabeticRule_LH_C_1_2_5 _lh_listcomp_fun_5_6 -> 
    (`LH_N)))
and span__d0__d0 _lh_span_arg1_3 _lh_span_arg2_3 =
  (match _lh_span_arg2_3 with
    | `LH_N -> 
      (`LH_P2((fun f_1_4 i_1_4 -> 
        i_1_4), (fun _lh_numericRule_LH_P2_0_1_4 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_3, _lh_span_LH_C_1_3) -> 
      (if (_lh_span_arg1_3 _lh_span_LH_C_0_3) then
        (let rec _lh_matchIdent_7 = ((span__d0__d0 _lh_span_arg1_3) _lh_span_LH_C_1_3) in
          (match _lh_matchIdent_7 with
            | `LH_P2(_lh_span_LH_P2_0_3, _lh_span_LH_P2_1_3) -> 
              (`LH_P2((let rec t_1_6 = _lh_span_LH_P2_0_3 in
                (let rec h_1_5 = _lh_span_LH_C_0_3 in
                  (fun f_1_5 i_1_5 -> 
                    (((foldl__d0__d0 f_1_5) ((f_1_5 i_1_5) h_1_5)) t_1_6)))), _lh_span_LH_P2_1_3))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_6 i_1_6 -> 
          i_1_6), (let rec _lh_numericRule_LH_C_1_1_1 = _lh_span_LH_C_1_3 in
          (fun _lh_numericRule_LH_P2_0_1_5 -> 
            (let rec _lh_matchIdent_8 = ((span__d1__d0 (fun c_6 -> 
              (c_6 <> '>'))) _lh_numericRule_LH_C_1_1_1) in
              (match _lh_matchIdent_8 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_6, _lh_numericRule_LH_P2_1_4) -> 
                  ((_lh_numericRule_LH_P2_1_4 _lh_numericRule_LH_P2_0_1_5) _lh_numericRule_LH_P2_0_1_6)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d1 _lh_span_arg1_4 _lh_span_arg2_4 =
  (match _lh_span_arg2_4 with
    | `LH_N -> 
      (`LH_P2((fun f_1_7 i_1_7 -> 
        i_1_7), (fun _lh_numericRule_LH_P2_0_1_7 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_4, _lh_span_LH_C_1_4) -> 
      (if (_lh_span_arg1_4 _lh_span_LH_C_0_4) then
        (let rec _lh_matchIdent_9 = ((span__d0__d1 _lh_span_arg1_4) _lh_span_LH_C_1_4) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_span_LH_P2_0_4, _lh_span_LH_P2_1_4) -> 
              (`LH_P2((let rec t_1_7 = _lh_span_LH_P2_0_4 in
                (let rec h_1_6 = _lh_span_LH_C_0_4 in
                  (fun f_1_8 i_1_8 -> 
                    (((foldl__d0__d1 f_1_8) ((f_1_8 i_1_8) h_1_6)) t_1_7)))), _lh_span_LH_P2_1_4))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_9 i_1_9 -> 
          i_1_9), (let rec _lh_numericRule_LH_C_1_1_2 = _lh_span_LH_C_1_4 in
          (fun _lh_numericRule_LH_P2_0_1_8 -> 
            (let rec _lh_matchIdent_1_0 = ((span__d1__d1 (fun c_7 -> 
              (c_7 <> '>'))) _lh_numericRule_LH_C_1_1_2) in
              (match _lh_matchIdent_1_0 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_9, _lh_numericRule_LH_P2_1_5) -> 
                  ((_lh_numericRule_LH_P2_1_5 _lh_numericRule_LH_P2_0_1_8) _lh_numericRule_LH_P2_0_1_9)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d2 _lh_span_arg1_5 _lh_span_arg2_5 =
  (match _lh_span_arg2_5 with
    | `LH_N -> 
      (`LH_P2((fun f_2_1 i_2_1 -> 
        i_2_1), (fun _lh_numericRule_LH_P2_0_2_0 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_5, _lh_span_LH_C_1_5) -> 
      (if (_lh_span_arg1_5 _lh_span_LH_C_0_5) then
        (let rec _lh_matchIdent_1_1 = ((span__d0__d2 _lh_span_arg1_5) _lh_span_LH_C_1_5) in
          (match _lh_matchIdent_1_1 with
            | `LH_P2(_lh_span_LH_P2_0_5, _lh_span_LH_P2_1_5) -> 
              (`LH_P2((let rec t_2_4 = _lh_span_LH_P2_0_5 in
                (let rec h_2_2 = _lh_span_LH_C_0_5 in
                  (fun f_2_2 i_2_2 -> 
                    (((foldl__d0__d2 f_2_2) ((f_2_2 i_2_2) h_2_2)) t_2_4)))), _lh_span_LH_P2_1_5))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_2_3 i_2_3 -> 
          i_2_3), (let rec _lh_numericRule_LH_C_1_1_7 = _lh_span_LH_C_1_5 in
          (fun _lh_numericRule_LH_P2_0_2_1 -> 
            (let rec _lh_matchIdent_1_2 = ((span__d1__d2 (fun c_9 -> 
              (c_9 <> '>'))) _lh_numericRule_LH_C_1_1_7) in
              (match _lh_matchIdent_1_2 with
                | `LH_P2(_lh_numericRule_LH_P2_0_2_2, _lh_numericRule_LH_P2_1_6) -> 
                  ((_lh_numericRule_LH_P2_1_6 _lh_numericRule_LH_P2_0_2_1) _lh_numericRule_LH_P2_0_2_2)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d3 _lh_span_arg1_2 _lh_span_arg2_2 =
  (match _lh_span_arg2_2 with
    | `LH_N -> 
      (`LH_P2((fun f_1_1 i_1_1 -> 
        i_1_1), (fun _lh_numericRule_LH_P2_0_1_1 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_2, _lh_span_LH_C_1_2) -> 
      (if (_lh_span_arg1_2 _lh_span_LH_C_0_2) then
        (let rec _lh_matchIdent_5 = ((span__d0__d3 _lh_span_arg1_2) _lh_span_LH_C_1_2) in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_span_LH_P2_0_2, _lh_span_LH_P2_1_2) -> 
              (`LH_P2((let rec t_1_5 = _lh_span_LH_P2_0_2 in
                (let rec h_1_4 = _lh_span_LH_C_0_2 in
                  (fun f_1_2 i_1_2 -> 
                    (((foldl__d0__d3 f_1_2) ((f_1_2 i_1_2) h_1_4)) t_1_5)))), _lh_span_LH_P2_1_2))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_1_3 i_1_3 -> 
          i_1_3), (let rec _lh_numericRule_LH_C_1_8 = _lh_span_LH_C_1_2 in
          (fun _lh_numericRule_LH_P2_0_1_2 -> 
            (let rec _lh_matchIdent_6 = ((span__d1__d3 (fun c_5 -> 
              (c_5 <> '>'))) _lh_numericRule_LH_C_1_8) in
              (match _lh_matchIdent_6 with
                | `LH_P2(_lh_numericRule_LH_P2_0_1_3, _lh_numericRule_LH_P2_1_3) -> 
                  ((_lh_numericRule_LH_P2_1_3 _lh_numericRule_LH_P2_0_1_3) _lh_numericRule_LH_P2_0_1_2)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d1__d0 _lh_span_arg1_7 _lh_span_arg2_7 =
  (match _lh_span_arg2_7 with
    | `LH_N -> 
      (`LH_P2((fun f_2_8 i_2_8 -> 
        i_2_8), (fun _lh_numericRule_LH_P2_0_2_9 _lh_numericRule_LH_P2_0_3_0 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_7, _lh_span_LH_C_1_7) -> 
      (if (_lh_span_arg1_7 _lh_span_LH_C_0_7) then
        (let rec _lh_matchIdent_1_6 = ((span__d1__d0 _lh_span_arg1_7) _lh_span_LH_C_1_7) in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_span_LH_P2_0_7, _lh_span_LH_P2_1_7) -> 
              (`LH_P2((let rec t_3_6 = _lh_span_LH_P2_0_7 in
                (let rec h_3_3 = _lh_span_LH_C_0_7 in
                  (fun f_2_9 i_2_9 -> 
                    (((foldl__d1__d0 f_2_9) ((f_2_9 i_2_9) h_3_3)) t_3_6)))), _lh_span_LH_P2_1_7))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_3_0 i_3_0 -> 
          i_3_0), (let rec _lh_numericRule_LH_C_1_2_2 = _lh_span_LH_C_1_7 in
          (fun _lh_numericRule_LH_P2_0_3_1 _lh_numericRule_LH_P2_0_3_2 -> 
            (let rec _lh_matchIdent_1_7 = (let rec _lh_numericRule_LH_P2_1_9 = (mknum__d1__d0 _lh_numericRule_LH_P2_0_3_2) in
              (let rec _lh_numericRule_LH_P2_0_3_3 = (mknum__d0__d0 _lh_numericRule_LH_P2_0_3_1) in
                (fun _lh_numericRule_LH_C_1_2_3 -> 
                  (let rec width_1_5 = ((max__d0__d0 (length__d0__d0 (string_of_int _lh_numericRule_LH_P2_0_3_3))) (length__d1__d0 (string_of_int _lh_numericRule_LH_P2_1_9))) in
                    (let rec _lh_listcomp_fun_6_8 = (fun _lh_listcomp_fun_para_3_3 -> 
                      (((_lh_listcomp_fun_para_3_3 _lh_listcomp_fun_6_8) _lh_numericRule_LH_C_1_2_3) width_1_5)) in
                      (_lh_listcomp_fun_6_8 (if (_lh_numericRule_LH_P2_0_3_3 < _lh_numericRule_LH_P2_1_9) then
                        ((enumFromTo__d2__d0 _lh_numericRule_LH_P2_0_3_3) _lh_numericRule_LH_P2_1_9)
                      else
                        (((enumFromThenTo__d0__d0 _lh_numericRule_LH_P2_0_3_3) (_lh_numericRule_LH_P2_0_3_3 - 1)) _lh_numericRule_LH_P2_1_9)))))))) in
              (_lh_matchIdent_1_7 _lh_numericRule_LH_C_1_2_2)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d1 _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun f_1 i_1 -> 
        i_1), (fun _lh_numericRule_LH_P2_0_0 _lh_numericRule_LH_P2_0_1 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_0 = ((span__d1__d1 _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((let rec t_1 = _lh_span_LH_P2_0_0 in
                (let rec h_1 = _lh_span_LH_C_0_0 in
                  (fun f_2 i_2 -> 
                    (((foldl__d1__d1 f_2) ((f_2 i_2) h_1)) t_1)))), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_3 i_3 -> 
          i_3), (let rec _lh_numericRule_LH_C_1_0 = _lh_span_LH_C_1_0 in
          (fun _lh_numericRule_LH_P2_0_2 _lh_numericRule_LH_P2_0_3 -> 
            (let rec _lh_matchIdent_1 = (let rec _lh_numericRule_LH_P2_1_0 = (mknum__d1__d1 _lh_numericRule_LH_P2_0_3) in
              (let rec _lh_numericRule_LH_P2_0_4 = (mknum__d0__d1 _lh_numericRule_LH_P2_0_2) in
                (fun _lh_numericRule_LH_C_1_1 -> 
                  (let rec width_0 = ((max__d0__d1 (length__d0__d1 (string_of_int _lh_numericRule_LH_P2_0_4))) (length__d1__d1 (string_of_int _lh_numericRule_LH_P2_1_0))) in
                    (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                      (((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_numericRule_LH_C_1_1) width_0)) in
                      (_lh_listcomp_fun_0 (if (_lh_numericRule_LH_P2_0_4 < _lh_numericRule_LH_P2_1_0) then
                        ((enumFromTo__d2__d1 _lh_numericRule_LH_P2_0_4) _lh_numericRule_LH_P2_1_0)
                      else
                        (((enumFromThenTo__d0__d1 _lh_numericRule_LH_P2_0_4) (_lh_numericRule_LH_P2_0_4 - 1)) _lh_numericRule_LH_P2_1_0)))))))) in
              (_lh_matchIdent_1 _lh_numericRule_LH_C_1_0)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d2 _lh_span_arg1_6 _lh_span_arg2_6 =
  (match _lh_span_arg2_6 with
    | `LH_N -> 
      (`LH_P2((fun f_2_5 i_2_5 -> 
        i_2_5), (fun _lh_numericRule_LH_P2_0_2_3 _lh_numericRule_LH_P2_0_2_4 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_6, _lh_span_LH_C_1_6) -> 
      (if (_lh_span_arg1_6 _lh_span_LH_C_0_6) then
        (let rec _lh_matchIdent_1_3 = ((span__d1__d2 _lh_span_arg1_6) _lh_span_LH_C_1_6) in
          (match _lh_matchIdent_1_3 with
            | `LH_P2(_lh_span_LH_P2_0_6, _lh_span_LH_P2_1_6) -> 
              (`LH_P2((let rec t_3_1 = _lh_span_LH_P2_0_6 in
                (let rec h_2_8 = _lh_span_LH_C_0_6 in
                  (fun f_2_6 i_2_6 -> 
                    (((foldl__d1__d2 f_2_6) ((f_2_6 i_2_6) h_2_8)) t_3_1)))), _lh_span_LH_P2_1_6))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_2_7 i_2_7 -> 
          i_2_7), (let rec _lh_numericRule_LH_C_1_2_0 = _lh_span_LH_C_1_6 in
          (fun _lh_numericRule_LH_P2_0_2_5 _lh_numericRule_LH_P2_0_2_6 -> 
            (let rec _lh_matchIdent_1_4 = (let rec _lh_numericRule_LH_P2_1_7 = (mknum__d1__d2 _lh_numericRule_LH_P2_0_2_6) in
              (let rec _lh_numericRule_LH_P2_0_2_7 = (mknum__d0__d2 _lh_numericRule_LH_P2_0_2_5) in
                (fun _lh_numericRule_LH_C_1_2_1 -> 
                  (let rec width_1_4 = ((max__d0__d2 (length__d0__d2 (string_of_int _lh_numericRule_LH_P2_0_2_7))) (length__d1__d2 (string_of_int _lh_numericRule_LH_P2_1_7))) in
                    (let rec _lh_listcomp_fun_5_5 = (fun _lh_listcomp_fun_para_2_6 -> 
                      (((_lh_listcomp_fun_para_2_6 _lh_listcomp_fun_5_5) _lh_numericRule_LH_C_1_2_1) width_1_4)) in
                      (_lh_listcomp_fun_5_5 (if (_lh_numericRule_LH_P2_0_2_7 < _lh_numericRule_LH_P2_1_7) then
                        ((enumFromTo__d2__d3 _lh_numericRule_LH_P2_0_2_7) _lh_numericRule_LH_P2_1_7)
                      else
                        (((enumFromThenTo__d0__d3 _lh_numericRule_LH_P2_0_2_7) (_lh_numericRule_LH_P2_0_2_7 - 1)) _lh_numericRule_LH_P2_1_7)))))))) in
              (_lh_matchIdent_1_4 _lh_numericRule_LH_C_1_2_0)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d3 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun f_6 i_6 -> 
        i_6), (fun _lh_numericRule_LH_P2_0_5 _lh_numericRule_LH_P2_0_6 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_2 = ((span__d1__d3 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((let rec t_1_0 = _lh_span_LH_P2_0_1 in
                (let rec h_9 = _lh_span_LH_C_0_1 in
                  (fun f_7 i_7 -> 
                    (((foldl__d1__d3 f_7) ((f_7 i_7) h_9)) t_1_0)))), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_8 i_8 -> 
          i_8), (let rec _lh_numericRule_LH_C_1_6 = _lh_span_LH_C_1_1 in
          (fun _lh_numericRule_LH_P2_0_7 _lh_numericRule_LH_P2_0_8 -> 
            (let rec _lh_matchIdent_3 = (let rec _lh_numericRule_LH_P2_1_1 = (mknum__d1__d3 _lh_numericRule_LH_P2_0_7) in
              (let rec _lh_numericRule_LH_P2_0_9 = (mknum__d0__d3 _lh_numericRule_LH_P2_0_8) in
                (fun _lh_numericRule_LH_C_1_7 -> 
                  (let rec width_5 = ((max__d0__d3 (length__d0__d3 (string_of_int _lh_numericRule_LH_P2_0_9))) (length__d1__d3 (string_of_int _lh_numericRule_LH_P2_1_1))) in
                    (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_7 -> 
                      (((_lh_listcomp_fun_para_7 _lh_listcomp_fun_1_3) _lh_numericRule_LH_C_1_7) width_5)) in
                      (_lh_listcomp_fun_1_3 (if (_lh_numericRule_LH_P2_0_9 < _lh_numericRule_LH_P2_1_1) then
                        ((enumFromTo__d2__d2 _lh_numericRule_LH_P2_0_9) _lh_numericRule_LH_P2_1_1)
                      else
                        (((enumFromThenTo__d0__d2 _lh_numericRule_LH_P2_0_9) (_lh_numericRule_LH_P2_0_9 - 1)) _lh_numericRule_LH_P2_1_1)))))))) in
              (_lh_matchIdent_3 _lh_numericRule_LH_C_1_6)))))))
    | _ -> 
      (failwith "error"))
and testGenRegexs_nofib__d0__d0 _lh_testGenRegexs_nofib_arg1_0 =
  (concat__d0__d0 (expand__d0__d0 _lh_testGenRegexs_nofib_arg1_0));;

(* lumberhack_pop_out *)
let rec foldl__d0__d0__d0 f_3_6 i_3_6 ls_4_3 =
  ((ls_4_3 f_3_6) i_3_6);;
let rec foldl__d0__d0__d1 f_5_0 i_5_0 ls_5_2 =
  ((ls_5_2 f_5_0) i_5_0);;
let rec foldl__d0__d1__d0 f_3_2 i_3_2 ls_3_6 =
  ((ls_3_6 f_3_2) i_3_2);;
let rec foldl__d0__d1__d1 f_5_1 i_5_1 ls_5_3 =
  ((ls_5_3 f_5_1) i_5_1);;
let rec foldl__d0__d2__d0 f_7_8 i_7_8 ls_7_3 =
  ((ls_7_3 f_7_8) i_7_8);;
let rec foldl__d0__d2__d1 f_5_4 i_5_4 ls_5_7 =
  ((ls_5_7 f_5_4) i_5_4);;
let rec foldl__d0__d2__d2 f_3_5 i_3_5 ls_4_1 =
  ((ls_4_1 f_3_5) i_3_5);;
let rec foldl__d0__d2__d3 f_6_2 i_6_2 ls_6_1 =
  ((ls_6_1 f_6_2) i_6_2);;
let rec foldl__d0__d3__d0 f_4_5 i_4_5 ls_4_9 =
  ((ls_4_9 f_4_5) i_4_5);;
let rec foldl__d0__d3__d1 f_6_1 i_6_1 ls_6_0 =
  ((ls_6_0 f_6_1) i_6_1);;
let rec foldl__d1__d0__d0 f_3_4 i_3_4 ls_4_0 =
  ((ls_4_0 f_3_4) i_3_4);;
let rec foldl__d1__d0__d1 f_7_6 i_7_6 ls_7_1 =
  ((ls_7_1 f_7_6) i_7_6);;
let rec foldl__d1__d1__d0 f_5_2 i_5_2 ls_5_4 =
  ((ls_5_4 f_5_2) i_5_2);;
let rec foldl__d1__d1__d1 f_6_9 i_6_9 ls_6_7 =
  ((ls_6_7 f_6_9) i_6_9);;
let rec foldl__d1__d2__d0 f_4_9 i_4_9 ls_5_1 =
  ((ls_5_1 f_4_9) i_4_9);;
let rec foldl__d1__d2__d1 f_7_7 i_7_7 ls_7_2 =
  ((ls_7_2 f_7_7) i_7_7);;
let rec foldl__d1__d2__d2 f_5_3 i_5_3 ls_5_5 =
  ((ls_5_5 f_5_3) i_5_3);;
let rec foldl__d1__d2__d3 f_4_1 i_4_1 ls_4_5 =
  ((ls_4_5 f_4_1) i_4_1);;
let rec foldl__d1__d3__d0 f_3_3 i_3_3 ls_3_7 =
  ((ls_3_7 f_3_3) i_3_3);;
let rec foldl__d1__d3__d1 f_4_0 i_4_0 ls_4_4 =
  ((ls_4_4 f_4_0) i_4_0);;
let rec length__d0__d0__d0 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_4_2, t_4_6) -> 
      (1 + (length__d0__d0__d0 t_4_6))
    | `LH_N -> 
      0);;
let rec length__d0__d1__d0 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_4_4, t_4_8) -> 
      (1 + (length__d0__d1__d0 t_4_8))
    | `LH_N -> 
      0);;
let rec length__d0__d2__d0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_7, t_4_1) -> 
      (1 + (length__d0__d2__d0 t_4_1))
    | `LH_N -> 
      0);;
let rec length__d0__d2__d1 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_8_6, t_9_5) -> 
      (1 + (length__d0__d2__d1 t_9_5))
    | `LH_N -> 
      0);;
let rec length__d0__d3__d0 ls_6_5 =
  (match ls_6_5 with
    | `LH_C(h_7_1, t_7_9) -> 
      (1 + (length__d0__d3__d0 t_7_9))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d0 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_4_3, t_4_7) -> 
      (1 + (length__d1__d0__d0 t_4_7))
    | `LH_N -> 
      0);;
let rec length__d1__d1__d0 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_7_2, t_8_0) -> 
      (1 + (length__d1__d1__d0 t_8_0))
    | `LH_N -> 
      0);;
let rec length__d1__d2__d0 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_9, t_4_3) -> 
      (1 + (length__d1__d2__d0 t_4_3))
    | `LH_N -> 
      0);;
let rec length__d1__d2__d1 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_6_3, t_6_9) -> 
      (1 + (length__d1__d2__d1 t_6_9))
    | `LH_N -> 
      0);;
let rec length__d1__d3__d0 ls_7_7 =
  (match ls_7_7 with
    | `LH_C(h_8_8, t_9_7) -> 
      (1 + (length__d1__d3__d0 t_9_7))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d0 ls_7_9 =
  (match ls_7_9 with
    | `LH_C(h_9_2, t_1_0_1) -> 
      (1 + (length__d2__d0__d0 t_1_0_1))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d1 ls_8_2 =
  (match ls_8_2 with
    | `LH_C(h_9_3, t_1_0_2) -> 
      (1 + (length__d2__d0__d1 t_1_0_2))
    | `LH_N -> 
      0);;
let rec length__d2__d1__d0 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_5_6, t_6_2) -> 
      (1 + (length__d2__d1__d0 t_6_2))
    | `LH_N -> 
      0);;
let rec length__d2__d1__d1 ls_6_4 =
  (match ls_6_4 with
    | `LH_C(h_6_9, t_7_7) -> 
      (1 + (length__d2__d1__d1 t_7_7))
    | `LH_N -> 
      0);;
let rec length__d2__d2__d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_8, t_4_2) -> 
      (1 + (length__d2__d2__d0 t_4_2))
    | `LH_N -> 
      0);;
let rec length__d2__d2__d1 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_5_0, t_5_6) -> 
      (1 + (length__d2__d2__d1 t_5_6))
    | `LH_N -> 
      0);;
let rec length__d2__d2__d2 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_4_9, t_5_5) -> 
      (1 + (length__d2__d2__d2 t_5_5))
    | `LH_N -> 
      0);;
let rec length__d2__d2__d3 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_6, t_4_0) -> 
      (1 + (length__d2__d2__d3 t_4_0))
    | `LH_N -> 
      0);;
let rec length__d2__d3__d0 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_4_0, t_4_4) -> 
      (1 + (length__d2__d3__d0 t_4_4))
    | `LH_N -> 
      0);;
let rec length__d2__d3__d1 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_5_1, t_5_7) -> 
      (1 + (length__d2__d3__d1 t_5_7))
    | `LH_N -> 
      0);;
let rec mappend__d0__d0__d0 xs_2_2 ys_3_6 =
  (match xs_2_2 with
    | `LH_C(h_5_9, t_6_5) -> 
      (`LH_C(h_5_9, ((mappend__d0__d0__d0 t_6_5) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend__d0__d1__d0 xs_1_0 ys_1_8 =
  (match xs_1_0 with
    | `LH_C(h_4_1, t_4_5) -> 
      (`LH_C(h_4_1, ((mappend__d0__d1__d0 t_4_5) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1__d0__d0 xs_1_2 ys_2_2 =
  (match xs_1_2 with
    | `LH_C(h_4_6, t_5_2) -> 
      (`LH_C(h_4_6, ((mappend__d1__d0__d0 t_5_2) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d1__d0__d1 xs_2_6 ys_4_2 =
  (match xs_2_6 with
    | `LH_C(h_6_2, t_6_8) -> 
      (`LH_C(h_6_2, ((mappend__d1__d0__d1 t_6_8) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend__d1__d1__d0 xs_3_7 ys_6_3 =
  (match xs_3_7 with
    | `LH_C(h_8_5, t_9_4) -> 
      (`LH_C(h_8_5, ((mappend__d1__d1__d0 t_9_4) ys_6_3)))
    | `LH_N -> 
      ys_6_3);;
let rec mappend__d1__d1__d1 xs_1_6 ys_2_8 =
  (match xs_1_6 with
    | `LH_C(h_5_3, t_5_9) -> 
      (`LH_C(h_5_3, ((mappend__d1__d1__d1 t_5_9) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d1__d2__d0 xs_4_0 ys_6_8 =
  (match xs_4_0 with
    | `LH_C(h_9_1, t_1_0_0) -> 
      (`LH_C(h_9_1, ((mappend__d1__d2__d0 t_1_0_0) ys_6_8)))
    | `LH_N -> 
      ys_6_8);;
let rec mappend__d1__d2__d1 xs_3_4 ys_5_6 =
  (match xs_3_4 with
    | `LH_C(h_7_9, t_8_7) -> 
      (`LH_C(h_7_9, ((mappend__d1__d2__d1 t_8_7) ys_5_6)))
    | `LH_N -> 
      ys_5_6);;
let rec mappend__d1__d2__d2 xs_2_1 ys_3_5 =
  (match xs_2_1 with
    | `LH_C(h_5_8, t_6_4) -> 
      (`LH_C(h_5_8, ((mappend__d1__d2__d2 t_6_4) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d1__d2__d3 xs_3_0 ys_5_0 =
  (match xs_3_0 with
    | `LH_C(h_7_3, t_8_1) -> 
      (`LH_C(h_7_3, ((mappend__d1__d2__d3 t_8_1) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec mappend__d1__d3__d0 xs_3_2 ys_5_4 =
  (match xs_3_2 with
    | `LH_C(h_7_6, t_8_4) -> 
      (`LH_C(h_7_6, ((mappend__d1__d3__d0 t_8_4) ys_5_4)))
    | `LH_N -> 
      ys_5_4);;
let rec mappend__d1__d3__d1 xs_2_4 ys_3_8 =
  (match xs_2_4 with
    | `LH_C(h_6_0, t_6_6) -> 
      (`LH_C(h_6_0, ((mappend__d1__d3__d1 t_6_6) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend__d2__d0__d0 xs_4_1 ys_6_9 =
  (xs_4_1 ys_6_9);;
let rec mappend__d2__d0__d1 xs_3_1 ys_5_1 =
  (xs_3_1 ys_5_1);;
let rec mappend__d2__d0__d2 xs_1_9 ys_3_3 =
  (xs_1_9 ys_3_3);;
let rec mappend__d2__d0__d3 xs_2_9 ys_4_5 =
  (xs_2_9 ys_4_5);;
let rec mappend__d2__d1__d0 xs_3_6 ys_6_2 =
  (xs_3_6 ys_6_2);;
let rec mappend__d2__d1__d1 xs_2_7 ys_4_3 =
  (xs_2_7 ys_4_3);;
let rec mappend__d2__d1__d2 xs_1_1 ys_1_9 =
  (xs_1_1 ys_1_9);;
let rec mappend__d2__d1__d3 xs_1_7 ys_2_9 =
  (xs_1_7 ys_2_9);;
let rec mappend__d2__d2__d0 xs_2_3 ys_3_7 =
  (xs_2_3 ys_3_7);;
let rec mappend__d2__d2__d1 xs_2_0 ys_3_4 =
  (xs_2_0 ys_3_4);;
let rec mappend__d2__d2__d2 xs_3_9 ys_6_5 =
  (xs_3_9 ys_6_5);;
let rec mappend__d2__d2__d3 xs_2_5 ys_3_9 =
  (xs_2_5 ys_3_9);;
let rec mappend__d2__d2__d4 xs_1_3 ys_2_5 =
  (xs_1_3 ys_2_5);;
let rec mappend__d2__d2__d5 xs_1_8 ys_3_2 =
  (xs_1_8 ys_3_2);;
let rec mappend__d2__d2__d6 xs_1_5 ys_2_7 =
  (xs_1_5 ys_2_7);;
let rec mappend__d2__d2__d7 xs_1_4 ys_2_6 =
  (xs_1_4 ys_2_6);;
let rec mappend__d2__d3__d0 xs_2_8 ys_4_4 =
  (xs_2_8 ys_4_4);;
let rec mappend__d2__d3__d1 xs_3_5 ys_6_1 =
  (xs_3_5 ys_6_1);;
let rec mappend__d2__d3__d2 xs_3_3 ys_5_5 =
  (xs_3_3 ys_5_5);;
let rec mappend__d2__d3__d3 xs_3_8 ys_6_4 =
  (xs_3_8 ys_6_4);;
let rec max__d0__d0__d0 _lh_max_arg1_5 _lh_max_arg2_5 =
  (if (_lh_max_arg1_5 > _lh_max_arg2_5) then
    _lh_max_arg1_5
  else
    _lh_max_arg2_5);;
let rec max__d0__d1__d0 _lh_max_arg1_6 _lh_max_arg2_6 =
  (if (_lh_max_arg1_6 > _lh_max_arg2_6) then
    _lh_max_arg1_6
  else
    _lh_max_arg2_6);;
let rec max__d0__d2__d0 _lh_max_arg1_8 _lh_max_arg2_8 =
  (if (_lh_max_arg1_8 > _lh_max_arg2_8) then
    _lh_max_arg1_8
  else
    _lh_max_arg2_8);;
let rec max__d0__d2__d1 _lh_max_arg1_4 _lh_max_arg2_4 =
  (if (_lh_max_arg1_4 > _lh_max_arg2_4) then
    _lh_max_arg1_4
  else
    _lh_max_arg2_4);;
let rec max__d0__d3__d0 _lh_max_arg1_7 _lh_max_arg2_7 =
  (if (_lh_max_arg1_7 > _lh_max_arg2_7) then
    _lh_max_arg1_7
  else
    _lh_max_arg2_7);;
let rec reverse_helper__d0__d0__d0 ls_3_0 a_3_2 =
  (ls_3_0 a_3_2);;
let rec reverse_helper__d0__d0__d1 ls_5_0 a_4_1 =
  (ls_5_0 a_4_1);;
let rec reverse_helper__d0__d1__d0 ls_6_2 a_4_8 =
  (ls_6_2 a_4_8);;
let rec reverse_helper__d0__d1__d1 ls_8_1 a_8_0 =
  (ls_8_1 a_8_0);;
let rec reverse_helper__d0__d2__d0 ls_4_2 a_3_7 =
  (ls_4_2 a_3_7);;
let rec reverse_helper__d0__d2__d1 ls_6_3 a_5_2 =
  (ls_6_3 a_5_2);;
let rec reverse_helper__d0__d3__d0 ls_5_8 a_4_3 =
  (ls_5_8 a_4_3);;
let rec reverse_helper__d0__d3__d1 ls_6_8 a_6_6 =
  (ls_6_8 a_6_6);;
let rec reverse_helper__d0__d3__d2 ls_6_9 a_7_2 =
  (ls_6_9 a_7_2);;
let rec reverse_helper__d0__d3__d3 ls_7_6 a_7_7 =
  (ls_7_6 a_7_7);;
let rec alphabeticRule__d0__d0__d0 _lh_alphabeticRule_arg1_4 =
  (match _lh_alphabeticRule_arg1_4 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_1_6, _lh_alphabeticRule_LH_C_1_3_3) -> 
      (match _lh_alphabeticRule_LH_C_1_3_3 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_1_7, _lh_alphabeticRule_LH_C_1_3_4) -> 
          (match _lh_alphabeticRule_LH_C_0_1_7 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_3_4 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_1_8, _lh_alphabeticRule_LH_C_1_3_5) -> 
                  (match _lh_alphabeticRule_LH_C_1_3_5 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_1_9, _lh_alphabeticRule_LH_C_1_3_6) -> 
                      (match _lh_alphabeticRule_LH_C_0_1_9 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_1_6) <= (int_of_char _lh_alphabeticRule_LH_C_0_1_8)) then
                            (let rec _lh_listcomp_fun_8_0 = (fun _lh_listcomp_fun_para_3_9 -> 
                              ((_lh_listcomp_fun_para_3_9 _lh_alphabeticRule_LH_C_1_3_6) _lh_listcomp_fun_8_0)) in
                              (_lh_listcomp_fun_8_0 ((enumFromTo__d0__d0__d0 (int_of_char _lh_alphabeticRule_LH_C_0_1_6)) (int_of_char _lh_alphabeticRule_LH_C_0_1_8))))
                          else
                            (let rec _lh_listcomp_fun_8_1 = (fun _lh_listcomp_fun_para_4_0 -> 
                              ((_lh_listcomp_fun_para_4_0 _lh_alphabeticRule_LH_C_1_3_6) _lh_listcomp_fun_8_1)) in
                              (_lh_listcomp_fun_8_1 (reverse__d0__d1__d0 ((enumFromTo__d1__d0__d0 (int_of_char _lh_alphabeticRule_LH_C_0_1_8)) (int_of_char _lh_alphabeticRule_LH_C_0_1_6))))))
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
and alphabeticRule__d0__d1__d0 _lh_alphabeticRule_arg1_7 =
  (match _lh_alphabeticRule_arg1_7 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_2_8, _lh_alphabeticRule_LH_C_1_5_1) -> 
      (match _lh_alphabeticRule_LH_C_1_5_1 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_2_9, _lh_alphabeticRule_LH_C_1_5_2) -> 
          (match _lh_alphabeticRule_LH_C_0_2_9 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_5_2 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_3_0, _lh_alphabeticRule_LH_C_1_5_3) -> 
                  (match _lh_alphabeticRule_LH_C_1_5_3 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3_1, _lh_alphabeticRule_LH_C_1_5_4) -> 
                      (match _lh_alphabeticRule_LH_C_0_3_1 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_2_8) <= (int_of_char _lh_alphabeticRule_LH_C_0_3_0)) then
                            (let rec _lh_listcomp_fun_1_3_6 = (fun _lh_listcomp_fun_para_6_5 -> 
                              ((_lh_listcomp_fun_para_6_5 _lh_alphabeticRule_LH_C_1_5_4) _lh_listcomp_fun_1_3_6)) in
                              (_lh_listcomp_fun_1_3_6 ((enumFromTo__d0__d1__d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_8)) (int_of_char _lh_alphabeticRule_LH_C_0_3_0))))
                          else
                            (let rec _lh_listcomp_fun_1_3_7 = (fun _lh_listcomp_fun_para_6_6 -> 
                              ((_lh_listcomp_fun_para_6_6 _lh_alphabeticRule_LH_C_1_5_4) _lh_listcomp_fun_1_3_7)) in
                              (_lh_listcomp_fun_1_3_7 (reverse__d0__d0__d0 ((enumFromTo__d1__d1__d0 (int_of_char _lh_alphabeticRule_LH_C_0_3_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2_8))))))
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
and alphabeticRule__d0__d2__d0 _lh_alphabeticRule_arg1_5 =
  (match _lh_alphabeticRule_arg1_5 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_2_0, _lh_alphabeticRule_LH_C_1_3_9) -> 
      (match _lh_alphabeticRule_LH_C_1_3_9 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_2_1, _lh_alphabeticRule_LH_C_1_4_0) -> 
          (match _lh_alphabeticRule_LH_C_0_2_1 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_4_0 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2_2, _lh_alphabeticRule_LH_C_1_4_1) -> 
                  (match _lh_alphabeticRule_LH_C_1_4_1 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_2_3, _lh_alphabeticRule_LH_C_1_4_2) -> 
                      (match _lh_alphabeticRule_LH_C_0_2_3 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_2_0) <= (int_of_char _lh_alphabeticRule_LH_C_0_2_2)) then
                            (let rec _lh_listcomp_fun_1_1_4 = (fun _lh_listcomp_fun_para_5_5 -> 
                              ((_lh_listcomp_fun_para_5_5 _lh_alphabeticRule_LH_C_1_4_2) _lh_listcomp_fun_1_1_4)) in
                              (_lh_listcomp_fun_1_1_4 ((enumFromTo__d0__d2__d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2_2))))
                          else
                            (let rec _lh_listcomp_fun_1_1_5 = (fun _lh_listcomp_fun_para_5_6 -> 
                              ((_lh_listcomp_fun_para_5_6 _lh_alphabeticRule_LH_C_1_4_2) _lh_listcomp_fun_1_1_5)) in
                              (_lh_listcomp_fun_1_1_5 (reverse__d0__d2__d0 ((enumFromTo__d1__d2__d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_2)) (int_of_char _lh_alphabeticRule_LH_C_0_2_0))))))
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
and alphabeticRule__d0__d3__d0 _lh_alphabeticRule_arg1_6 =
  (match _lh_alphabeticRule_arg1_6 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_2_4, _lh_alphabeticRule_LH_C_1_4_7) -> 
      (match _lh_alphabeticRule_LH_C_1_4_7 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_2_5, _lh_alphabeticRule_LH_C_1_4_8) -> 
          (match _lh_alphabeticRule_LH_C_0_2_5 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_4_8 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_2_6, _lh_alphabeticRule_LH_C_1_4_9) -> 
                  (match _lh_alphabeticRule_LH_C_1_4_9 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_2_7, _lh_alphabeticRule_LH_C_1_5_0) -> 
                      (match _lh_alphabeticRule_LH_C_0_2_7 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_2_4) <= (int_of_char _lh_alphabeticRule_LH_C_0_2_6)) then
                            (let rec _lh_listcomp_fun_1_3_0 = (fun _lh_listcomp_fun_para_6_3 -> 
                              ((_lh_listcomp_fun_para_6_3 _lh_alphabeticRule_LH_C_1_5_0) _lh_listcomp_fun_1_3_0)) in
                              (_lh_listcomp_fun_1_3_0 ((enumFromTo__d0__d3__d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_4)) (int_of_char _lh_alphabeticRule_LH_C_0_2_6))))
                          else
                            (let rec _lh_listcomp_fun_1_3_1 = (fun _lh_listcomp_fun_para_6_4 -> 
                              ((_lh_listcomp_fun_para_6_4 _lh_alphabeticRule_LH_C_1_5_0) _lh_listcomp_fun_1_3_1)) in
                              (_lh_listcomp_fun_1_3_1 (reverse__d0__d3__d0 ((enumFromTo__d1__d3__d0 (int_of_char _lh_alphabeticRule_LH_C_0_2_6)) (int_of_char _lh_alphabeticRule_LH_C_0_2_4))))))
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
and alphabeticRule__d0__d3__d1 _lh_alphabeticRule_arg1_8 =
  (match _lh_alphabeticRule_arg1_8 with
    | `LH_C(_lh_alphabeticRule_LH_C_0_3_2, _lh_alphabeticRule_LH_C_1_6_3) -> 
      (match _lh_alphabeticRule_LH_C_1_6_3 with
        | `LH_C(_lh_alphabeticRule_LH_C_0_3_3, _lh_alphabeticRule_LH_C_1_6_4) -> 
          (match _lh_alphabeticRule_LH_C_0_3_3 with
            | '-' -> 
              (match _lh_alphabeticRule_LH_C_1_6_4 with
                | `LH_C(_lh_alphabeticRule_LH_C_0_3_4, _lh_alphabeticRule_LH_C_1_6_5) -> 
                  (match _lh_alphabeticRule_LH_C_1_6_5 with
                    | `LH_C(_lh_alphabeticRule_LH_C_0_3_5, _lh_alphabeticRule_LH_C_1_6_6) -> 
                      (match _lh_alphabeticRule_LH_C_0_3_5 with
                        | ']' -> 
                          (if ((int_of_char _lh_alphabeticRule_LH_C_0_3_2) <= (int_of_char _lh_alphabeticRule_LH_C_0_3_4)) then
                            (let rec _lh_listcomp_fun_1_6_7 = (fun _lh_listcomp_fun_para_8_0 -> 
                              ((_lh_listcomp_fun_para_8_0 _lh_alphabeticRule_LH_C_1_6_6) _lh_listcomp_fun_1_6_7)) in
                              (_lh_listcomp_fun_1_6_7 ((enumFromTo__d0__d3__d1 (int_of_char _lh_alphabeticRule_LH_C_0_3_2)) (int_of_char _lh_alphabeticRule_LH_C_0_3_4))))
                          else
                            (let rec _lh_listcomp_fun_1_6_8 = (fun _lh_listcomp_fun_para_8_1 -> 
                              ((_lh_listcomp_fun_para_8_1 _lh_alphabeticRule_LH_C_1_6_6) _lh_listcomp_fun_1_6_8)) in
                              (_lh_listcomp_fun_1_6_8 (reverse__d0__d3__d1 ((enumFromTo__d1__d3__d1 (int_of_char _lh_alphabeticRule_LH_C_0_3_4)) (int_of_char _lh_alphabeticRule_LH_C_0_3_2))))))
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
and concat__d0__d0__d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_8_9, t_9_8) -> 
      ((mappend__d0__d1__d0 h_8_9) (concat__d0__d1__d0 t_9_8))
    | `LH_N -> 
      (`LH_N))
and concat__d0__d1__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_5_7, t_6_3) -> 
      ((mappend__d0__d0__d0 h_5_7) (concat__d0__d1__d0 t_6_3))
    | `LH_N -> 
      (`LH_N))
and constantRule__d0__d0__d0 _lh_constantRule_arg1_1_0 =
  (match _lh_constantRule_arg1_1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_1_0, _lh_constantRule_LH_C_1_1_0) -> 
      (let rec _lh_listcomp_fun_1_5_0 = (fun _lh_listcomp_fun_para_7_3 -> 
        (match _lh_listcomp_fun_para_7_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_6, _lh_listcomp_fun_ls_t_7_7) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_0, _lh_listcomp_fun_ls_h_6_6)), (_lh_listcomp_fun_1_5_0 _lh_listcomp_fun_ls_t_7_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_5_0 (expand__d0__d1__d0 _lh_constantRule_LH_C_1_1_0)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d1__d0 _lh_constantRule_arg1_1_1 =
  (match _lh_constantRule_arg1_1_1 with
    | `LH_C(_lh_constantRule_LH_C_0_1_1, _lh_constantRule_LH_C_1_1_1) -> 
      (let rec _lh_listcomp_fun_1_6_3 = (fun _lh_listcomp_fun_para_7_8 -> 
        (match _lh_listcomp_fun_para_7_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_7_3, _lh_listcomp_fun_ls_t_8_6) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_1, _lh_listcomp_fun_ls_h_7_3)), (_lh_listcomp_fun_1_6_3 _lh_listcomp_fun_ls_t_8_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_6_3 (expand__d0__d1__d0 _lh_constantRule_LH_C_1_1_1)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d2__d0 _lh_constantRule_arg1_7 =
  (match _lh_constantRule_arg1_7 with
    | `LH_C(_lh_constantRule_LH_C_0_7, _lh_constantRule_LH_C_1_7) -> 
      (let rec _lh_listcomp_fun_1_1_1 = (fun _lh_listcomp_fun_para_5_4 -> 
        (match _lh_listcomp_fun_para_5_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_9, _lh_listcomp_fun_ls_t_5_6) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_7, _lh_listcomp_fun_ls_h_4_9)), (_lh_listcomp_fun_1_1_1 _lh_listcomp_fun_ls_t_5_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_1_1 (expand__d0__d0__d0 _lh_constantRule_LH_C_1_7)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d3__d0 _lh_constantRule_arg1_8 =
  (match _lh_constantRule_arg1_8 with
    | `LH_C(_lh_constantRule_LH_C_0_8, _lh_constantRule_LH_C_1_8) -> 
      (let rec _lh_listcomp_fun_1_2_0 = (fun _lh_listcomp_fun_para_5_9 -> 
        (match _lh_listcomp_fun_para_5_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_5_2, _lh_listcomp_fun_ls_t_6_0) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_8, _lh_listcomp_fun_ls_h_5_2)), (_lh_listcomp_fun_1_2_0 _lh_listcomp_fun_ls_t_6_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2_0 (expand__d0__d2__d0 _lh_constantRule_LH_C_1_8)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d4__d0 _lh_constantRule_arg1_1_2 =
  (match _lh_constantRule_arg1_1_2 with
    | `LH_C(_lh_constantRule_LH_C_0_1_2, _lh_constantRule_LH_C_1_1_2) -> 
      (let rec _lh_listcomp_fun_1_7_7 = (fun _lh_listcomp_fun_para_8_5 -> 
        (match _lh_listcomp_fun_para_8_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_8_0, _lh_listcomp_fun_ls_t_9_3) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_2, _lh_listcomp_fun_ls_h_8_0)), (_lh_listcomp_fun_1_7_7 _lh_listcomp_fun_ls_t_9_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_7_7 (expand__d0__d3__d0 _lh_constantRule_LH_C_1_1_2)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d4__d1 _lh_constantRule_arg1_6 =
  (match _lh_constantRule_arg1_6 with
    | `LH_C(_lh_constantRule_LH_C_0_6, _lh_constantRule_LH_C_1_6) -> 
      (let rec _lh_listcomp_fun_9_8 = (fun _lh_listcomp_fun_para_4_7 -> 
        (match _lh_listcomp_fun_para_4_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_6, _lh_listcomp_fun_ls_t_5_1) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_6, _lh_listcomp_fun_ls_h_4_6)), (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_5_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9_8 (expand__d0__d3__d1 _lh_constantRule_LH_C_1_6)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d5__d0 _lh_constantRule_arg1_1_3 =
  (match _lh_constantRule_arg1_1_3 with
    | `LH_C(_lh_constantRule_LH_C_0_1_3, _lh_constantRule_LH_C_1_1_3) -> 
      (let rec _lh_listcomp_fun_1_8_5 = (fun _lh_listcomp_fun_para_8_8 -> 
        (match _lh_listcomp_fun_para_8_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_8_3, _lh_listcomp_fun_ls_t_9_7) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_1_3, _lh_listcomp_fun_ls_h_8_3)), (_lh_listcomp_fun_1_8_5 _lh_listcomp_fun_ls_t_9_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_8_5 (expand__d0__d3__d0 _lh_constantRule_LH_C_1_1_3)))
    | _ -> 
      (failwith "error"))
and constantRule__d0__d5__d1 _lh_constantRule_arg1_9 =
  (match _lh_constantRule_arg1_9 with
    | `LH_C(_lh_constantRule_LH_C_0_9, _lh_constantRule_LH_C_1_9) -> 
      (let rec _lh_listcomp_fun_1_4_5 = (fun _lh_listcomp_fun_para_6_9 -> 
        (match _lh_listcomp_fun_para_6_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_t_7_4) -> 
            (`LH_C((`LH_C(_lh_constantRule_LH_C_0_9, _lh_listcomp_fun_ls_h_6_3)), (_lh_listcomp_fun_1_4_5 _lh_listcomp_fun_ls_t_7_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_4_5 (expand__d0__d3__d1 _lh_constantRule_LH_C_1_9)))
    | _ -> 
      (failwith "error"))
and enumFromThenTo__d0__d0__d0 a_4_7 t_7_3 b_3_1 _lh_popOutId_0_1_5 _lh_popOutId_1_1_4 _lh_popOutId_2_4 =
  (if (a_4_7 <= b_3_1) then
    (let rec _lh_listcomp_fun_ls_t_6_3 = (((enumFromThenTo__d0__d0__d0 t_7_3) ((2 * t_7_3) - a_4_7)) b_3_1) in
      (let rec _lh_listcomp_fun_ls_h_5_5 = a_4_7 in
        (let rec _lh_listcomp_fun_1_2_5 = (fun _lh_listcomp_fun_para_6_1 -> 
          (match _lh_listcomp_fun_para_6_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_6, _lh_listcomp_fun_ls_t_6_4) -> 
              (`LH_C(((mappend__d1__d0__d0 ((pad__d0__d0__d0 (string_of_int _lh_listcomp_fun_ls_h_5_5)) _lh_popOutId_2_4)) _lh_listcomp_fun_ls_h_5_6), (_lh_listcomp_fun_1_2_5 _lh_listcomp_fun_ls_t_6_4)))
            | `LH_N -> 
              (_lh_popOutId_0_1_5 _lh_listcomp_fun_ls_t_6_3))) in
          (_lh_listcomp_fun_1_2_5 (expand__d0__d1__d0 _lh_popOutId_1_1_4)))))
  else
    (`LH_N))
and enumFromThenTo__d0__d1__d0 a_3_4 t_4_9 b_2_1 _lh_popOutId_0_6 _lh_popOutId_1_6 _lh_popOutId_2_1 =
  (if (a_3_4 <= b_2_1) then
    (let rec _lh_listcomp_fun_ls_t_4_4 = (((enumFromThenTo__d0__d1__d0 t_4_9) ((2 * t_4_9) - a_3_4)) b_2_1) in
      (let rec _lh_listcomp_fun_ls_h_4_0 = a_3_4 in
        (let rec _lh_listcomp_fun_8_8 = (fun _lh_listcomp_fun_para_4_4 -> 
          (match _lh_listcomp_fun_para_4_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_t_4_5) -> 
              (`LH_C(((mappend__d1__d1__d0 ((pad__d0__d1__d0 (string_of_int _lh_listcomp_fun_ls_h_4_0)) _lh_popOutId_2_1)) _lh_listcomp_fun_ls_h_4_1), (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_4_5)))
            | `LH_N -> 
              (_lh_popOutId_0_6 _lh_listcomp_fun_ls_t_4_4))) in
          (_lh_listcomp_fun_8_8 (expand__d0__d2__d0 _lh_popOutId_1_6)))))
  else
    (`LH_N))
and enumFromThenTo__d0__d2__d0 a_4_6 t_7_2 b_3_0 _lh_popOutId_0_1_8 _lh_popOutId_1_1_6 _lh_popOutId_2_5 =
  (if (a_4_6 <= b_3_0) then
    (let rec _lh_listcomp_fun_ls_t_6_1 = (((enumFromThenTo__d0__d2__d0 t_7_2) ((2 * t_7_2) - a_4_6)) b_3_0) in
      (let rec _lh_listcomp_fun_ls_h_5_3 = a_4_6 in
        (let rec _lh_listcomp_fun_1_2_2 = (fun _lh_listcomp_fun_para_6_0 -> 
          (match _lh_listcomp_fun_para_6_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_4, _lh_listcomp_fun_ls_t_6_2) -> 
              (`LH_C(((mappend__d1__d3__d0 ((pad__d0__d3__d0 (string_of_int _lh_listcomp_fun_ls_h_5_3)) _lh_popOutId_2_5)) _lh_listcomp_fun_ls_h_5_4), (_lh_listcomp_fun_1_2_2 _lh_listcomp_fun_ls_t_6_2)))
            | `LH_N -> 
              (_lh_popOutId_0_1_8 _lh_listcomp_fun_ls_t_6_1))) in
          (_lh_listcomp_fun_1_2_2 (expand__d0__d3__d0 _lh_popOutId_1_1_6)))))
  else
    (`LH_N))
and enumFromThenTo__d0__d3__d0 a_3_8 t_5_1 b_2_4 _lh_popOutId_0_2_7 _lh_popOutId_1_2_2 _lh_popOutId_2_8 =
  (if (a_3_8 <= b_2_4) then
    (let rec _lh_listcomp_fun_ls_t_4_9 = (((enumFromThenTo__d0__d3__d0 t_5_1) ((2 * t_5_1) - a_3_8)) b_2_4) in
      (let rec _lh_listcomp_fun_ls_h_4_4 = a_3_8 in
        (let rec _lh_listcomp_fun_9_6 = (fun _lh_listcomp_fun_para_4_6 -> 
          (match _lh_listcomp_fun_para_4_6 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_5, _lh_listcomp_fun_ls_t_5_0) -> 
              (`LH_C(((mappend__d1__d2__d0 ((pad__d0__d2__d0 (string_of_int _lh_listcomp_fun_ls_h_4_4)) _lh_popOutId_2_8)) _lh_listcomp_fun_ls_h_4_5), (_lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_5_0)))
            | `LH_N -> 
              (_lh_popOutId_0_2_7 _lh_listcomp_fun_ls_t_4_9))) in
          (_lh_listcomp_fun_9_6 (expand__d0__d3__d0 _lh_popOutId_1_2_2)))))
  else
    (`LH_N))
and enumFromThenTo__d0__d3__d1 a_7_0 t_9_2 b_4_3 _lh_popOutId_0_8 _lh_popOutId_1_8 _lh_popOutId_2_3 =
  (if (a_7_0 <= b_4_3) then
    (let rec _lh_listcomp_fun_ls_t_8_4 = (((enumFromThenTo__d0__d3__d1 t_9_2) ((2 * t_9_2) - a_7_0)) b_4_3) in
      (let rec _lh_listcomp_fun_ls_h_7_1 = a_7_0 in
        (let rec _lh_listcomp_fun_1_6_1 = (fun _lh_listcomp_fun_para_7_7 -> 
          (match _lh_listcomp_fun_para_7_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_2, _lh_listcomp_fun_ls_t_8_5) -> 
              (`LH_C(((mappend__d1__d2__d2 ((pad__d0__d2__d2 (string_of_int _lh_listcomp_fun_ls_h_7_1)) _lh_popOutId_2_3)) _lh_listcomp_fun_ls_h_7_2), (_lh_listcomp_fun_1_6_1 _lh_listcomp_fun_ls_t_8_5)))
            | `LH_N -> 
              (_lh_popOutId_0_8 _lh_listcomp_fun_ls_t_8_4))) in
          (_lh_listcomp_fun_1_6_1 (expand__d0__d3__d1 _lh_popOutId_1_8)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d0 a_4_9 b_3_2 _lh_popOutId_0_2_5 _lh_popOutId_1_2_0 =
  (if (a_4_9 <= b_3_2) then
    (let rec _lh_listcomp_fun_ls_t_6_5 = ((enumFromTo__d0__d0__d0 (a_4_9 + 1)) b_3_2) in
      (let rec _lh_listcomp_fun_ls_h_5_7 = a_4_9 in
        (let rec _lh_listcomp_fun_1_2_8 = (fun _lh_listcomp_fun_para_6_2 -> 
          (match _lh_listcomp_fun_para_6_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_t_6_6) -> 
              (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_5_7), _lh_listcomp_fun_ls_h_5_8)), (_lh_listcomp_fun_1_2_8 _lh_listcomp_fun_ls_t_6_6)))
            | `LH_N -> 
              (_lh_popOutId_1_2_0 _lh_listcomp_fun_ls_t_6_5))) in
          (_lh_listcomp_fun_1_2_8 (expand__d0__d0__d0 _lh_popOutId_0_2_5)))))
  else
    (`LH_N))
and enumFromTo__d0__d1__d0 a_4_5 b_2_9 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (a_4_5 <= b_2_9) then
    (let rec _lh_listcomp_fun_ls_t_5_8 = ((enumFromTo__d0__d1__d0 (a_4_5 + 1)) b_2_9) in
      (let rec _lh_listcomp_fun_ls_h_5_0 = a_4_5 in
        (let rec _lh_listcomp_fun_1_1_8 = (fun _lh_listcomp_fun_para_5_8 -> 
          (match _lh_listcomp_fun_para_5_8 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_1, _lh_listcomp_fun_ls_t_5_9) -> 
              (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_5_0), _lh_listcomp_fun_ls_h_5_1)), (_lh_listcomp_fun_1_1_8 _lh_listcomp_fun_ls_t_5_9)))
            | `LH_N -> 
              (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_5_8))) in
          (_lh_listcomp_fun_1_1_8 (expand__d0__d1__d0 _lh_popOutId_0_3)))))
  else
    (`LH_N))
and enumFromTo__d0__d2__d0 a_5_3 b_3_5 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (if (a_5_3 <= b_3_5) then
    (let rec _lh_listcomp_fun_ls_t_6_9 = ((enumFromTo__d0__d2__d0 (a_5_3 + 1)) b_3_5) in
      (let rec _lh_listcomp_fun_ls_h_5_9 = a_5_3 in
        (let rec _lh_listcomp_fun_1_3_9 = (fun _lh_listcomp_fun_para_6_7 -> 
          (match _lh_listcomp_fun_para_6_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_t_7_0) -> 
              (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_5_9), _lh_listcomp_fun_ls_h_6_0)), (_lh_listcomp_fun_1_3_9 _lh_listcomp_fun_ls_t_7_0)))
            | `LH_N -> 
              (_lh_popOutId_1_4 _lh_listcomp_fun_ls_t_6_9))) in
          (_lh_listcomp_fun_1_3_9 (expand__d0__d2__d0 _lh_popOutId_0_4)))))
  else
    (`LH_N))
and enumFromTo__d0__d3__d0 a_3_3 b_2_0 _lh_popOutId_0_5 _lh_popOutId_1_5 =
  (if (a_3_3 <= b_2_0) then
    (let rec _lh_listcomp_fun_ls_t_4_2 = ((enumFromTo__d0__d3__d0 (a_3_3 + 1)) b_2_0) in
      (let rec _lh_listcomp_fun_ls_h_3_8 = a_3_3 in
        (let rec _lh_listcomp_fun_8_3 = (fun _lh_listcomp_fun_para_4_1 -> 
          (match _lh_listcomp_fun_para_4_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_4_3) -> 
              (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_3_8), _lh_listcomp_fun_ls_h_3_9)), (_lh_listcomp_fun_8_3 _lh_listcomp_fun_ls_t_4_3)))
            | `LH_N -> 
              (_lh_popOutId_1_5 _lh_listcomp_fun_ls_t_4_2))) in
          (_lh_listcomp_fun_8_3 (expand__d0__d3__d0 _lh_popOutId_0_5)))))
  else
    (`LH_N))
and enumFromTo__d0__d3__d1 a_7_1 b_4_4 _lh_popOutId_0_2_0 _lh_popOutId_1_1_7 =
  (if (a_7_1 <= b_4_4) then
    (let rec _lh_listcomp_fun_ls_t_8_7 = ((enumFromTo__d0__d3__d1 (a_7_1 + 1)) b_4_4) in
      (let rec _lh_listcomp_fun_ls_h_7_4 = a_7_1 in
        (let rec _lh_listcomp_fun_1_6_5 = (fun _lh_listcomp_fun_para_7_9 -> 
          (match _lh_listcomp_fun_para_7_9 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_5, _lh_listcomp_fun_ls_t_8_8) -> 
              (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_7_4), _lh_listcomp_fun_ls_h_7_5)), (_lh_listcomp_fun_1_6_5 _lh_listcomp_fun_ls_t_8_8)))
            | `LH_N -> 
              (_lh_popOutId_1_1_7 _lh_listcomp_fun_ls_t_8_7))) in
          (_lh_listcomp_fun_1_6_5 (expand__d0__d3__d1 _lh_popOutId_0_2_0)))))
  else
    (`LH_N))
and enumFromTo__d1__d0__d0 a_6_7 b_4_2 _lh_popOutId_0_1_6 =
  (if (a_6_7 <= b_4_2) then
    (let rec t_9_1 = ((enumFromTo__d1__d0__d0 (a_6_7 + 1)) b_4_2) in
      (let rec h_8_3 = a_6_7 in
        ((reverse_helper__d0__d1__d0 t_9_1) (let rec _lh_listcomp_fun_ls_t_8_2 = _lh_popOutId_0_1_6 in
          (let rec _lh_listcomp_fun_ls_h_6_9 = h_8_3 in
            (fun _lh_alphabeticRule_LH_C_1_6_0 _lh_listcomp_fun_1_5_7 -> 
              (let rec _lh_listcomp_fun_1_5_8 = (fun _lh_listcomp_fun_para_7_5 -> 
                (match _lh_listcomp_fun_para_7_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_0, _lh_listcomp_fun_ls_t_8_3) -> 
                    (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_6_9), _lh_listcomp_fun_ls_h_7_0)), (_lh_listcomp_fun_1_5_8 _lh_listcomp_fun_ls_t_8_3)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_5_7 _lh_listcomp_fun_ls_t_8_2))) in
                (_lh_listcomp_fun_1_5_8 (expand__d0__d1__d0 _lh_alphabeticRule_LH_C_1_6_0)))))))))
  else
    _lh_popOutId_0_1_6)
and enumFromTo__d1__d1__d0 a_5_8 b_3_8 _lh_popOutId_0_9 =
  (if (a_5_8 <= b_3_8) then
    (let rec t_8_5 = ((enumFromTo__d1__d1__d0 (a_5_8 + 1)) b_3_8) in
      (let rec h_7_7 = a_5_8 in
        ((reverse_helper__d0__d0__d0 t_8_5) (let rec _lh_listcomp_fun_ls_t_7_5 = _lh_popOutId_0_9 in
          (let rec _lh_listcomp_fun_ls_h_6_4 = h_7_7 in
            (fun _lh_alphabeticRule_LH_C_1_5_8 _lh_listcomp_fun_1_4_6 -> 
              (let rec _lh_listcomp_fun_1_4_7 = (fun _lh_listcomp_fun_para_7_0 -> 
                (match _lh_listcomp_fun_para_7_0 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_5, _lh_listcomp_fun_ls_t_7_6) -> 
                    (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_6_4), _lh_listcomp_fun_ls_h_6_5)), (_lh_listcomp_fun_1_4_7 _lh_listcomp_fun_ls_t_7_6)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_4_6 _lh_listcomp_fun_ls_t_7_5))) in
                (_lh_listcomp_fun_1_4_7 (expand__d0__d1__d0 _lh_alphabeticRule_LH_C_1_5_8)))))))))
  else
    _lh_popOutId_0_9)
and enumFromTo__d1__d2__d0 a_7_4 b_4_6 _lh_popOutId_0_2_3 =
  (if (a_7_4 <= b_4_6) then
    (let rec t_9_6 = ((enumFromTo__d1__d2__d0 (a_7_4 + 1)) b_4_6) in
      (let rec h_8_7 = a_7_4 in
        ((reverse_helper__d0__d2__d0 t_9_6) (let rec _lh_listcomp_fun_ls_t_9_1 = _lh_popOutId_0_2_3 in
          (let rec _lh_listcomp_fun_ls_h_7_8 = h_8_7 in
            (fun _lh_alphabeticRule_LH_C_1_6_8 _lh_listcomp_fun_1_7_4 -> 
              (let rec _lh_listcomp_fun_1_7_5 = (fun _lh_listcomp_fun_para_8_4 -> 
                (match _lh_listcomp_fun_para_8_4 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7_9, _lh_listcomp_fun_ls_t_9_2) -> 
                    (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_7_8), _lh_listcomp_fun_ls_h_7_9)), (_lh_listcomp_fun_1_7_5 _lh_listcomp_fun_ls_t_9_2)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_7_4 _lh_listcomp_fun_ls_t_9_1))) in
                (_lh_listcomp_fun_1_7_5 (expand__d0__d2__d0 _lh_alphabeticRule_LH_C_1_6_8)))))))))
  else
    _lh_popOutId_0_2_3)
and enumFromTo__d1__d3__d0 a_6_1 b_3_9 _lh_popOutId_0_2_2 =
  (if (a_6_1 <= b_3_9) then
    (let rec t_8_8 = ((enumFromTo__d1__d3__d0 (a_6_1 + 1)) b_3_9) in
      (let rec h_8_0 = a_6_1 in
        ((reverse_helper__d0__d3__d0 t_8_8) (let rec _lh_listcomp_fun_ls_t_7_8 = _lh_popOutId_0_2_2 in
          (let rec _lh_listcomp_fun_ls_h_6_7 = h_8_0 in
            (fun _lh_alphabeticRule_LH_C_1_5_9 _lh_listcomp_fun_1_5_1 -> 
              (let rec _lh_listcomp_fun_1_5_2 = (fun _lh_listcomp_fun_para_7_4 -> 
                (match _lh_listcomp_fun_para_7_4 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_8, _lh_listcomp_fun_ls_t_7_9) -> 
                    (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_6_7), _lh_listcomp_fun_ls_h_6_8)), (_lh_listcomp_fun_1_5_2 _lh_listcomp_fun_ls_t_7_9)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_5_1 _lh_listcomp_fun_ls_t_7_8))) in
                (_lh_listcomp_fun_1_5_2 (expand__d0__d3__d0 _lh_alphabeticRule_LH_C_1_5_9)))))))))
  else
    _lh_popOutId_0_2_2)
and enumFromTo__d1__d3__d1 a_5_5 b_3_7 _lh_popOutId_0_1_9 =
  (if (a_5_5 <= b_3_7) then
    (let rec t_8_3 = ((enumFromTo__d1__d3__d1 (a_5_5 + 1)) b_3_7) in
      (let rec h_7_5 = a_5_5 in
        ((reverse_helper__d0__d3__d2 t_8_3) (let rec _lh_listcomp_fun_ls_t_7_2 = _lh_popOutId_0_1_9 in
          (let rec _lh_listcomp_fun_ls_h_6_1 = h_7_5 in
            (fun _lh_alphabeticRule_LH_C_1_5_7 _lh_listcomp_fun_1_4_3 -> 
              (let rec _lh_listcomp_fun_1_4_4 = (fun _lh_listcomp_fun_para_6_8 -> 
                (match _lh_listcomp_fun_para_6_8 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6_2, _lh_listcomp_fun_ls_t_7_3) -> 
                    (`LH_C((`LH_C((char_of_int _lh_listcomp_fun_ls_h_6_1), _lh_listcomp_fun_ls_h_6_2)), (_lh_listcomp_fun_1_4_4 _lh_listcomp_fun_ls_t_7_3)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_4_3 _lh_listcomp_fun_ls_t_7_2))) in
                (_lh_listcomp_fun_1_4_4 (expand__d0__d3__d1 _lh_alphabeticRule_LH_C_1_5_7)))))))))
  else
    _lh_popOutId_0_1_9)
and enumFromTo__d2__d0__d0 a_7_3 b_4_5 _lh_popOutId_0_2_9 _lh_popOutId_1_2_4 _lh_popOutId_2_9 =
  (if (a_7_3 <= b_4_5) then
    (let rec _lh_listcomp_fun_ls_t_8_9 = ((enumFromTo__d2__d0__d0 (a_7_3 + 1)) b_4_5) in
      (let rec _lh_listcomp_fun_ls_h_7_6 = a_7_3 in
        (let rec _lh_listcomp_fun_1_7_0 = (fun _lh_listcomp_fun_para_8_2 -> 
          (match _lh_listcomp_fun_para_8_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_7_7, _lh_listcomp_fun_ls_t_9_0) -> 
              (`LH_C(((mappend__d1__d0__d1 ((pad__d0__d0__d1 (string_of_int _lh_listcomp_fun_ls_h_7_6)) _lh_popOutId_2_9)) _lh_listcomp_fun_ls_h_7_7), (_lh_listcomp_fun_1_7_0 _lh_listcomp_fun_ls_t_9_0)))
            | `LH_N -> 
              (_lh_popOutId_0_2_9 _lh_listcomp_fun_ls_t_8_9))) in
          (_lh_listcomp_fun_1_7_0 (expand__d0__d1__d0 _lh_popOutId_1_2_4)))))
  else
    (`LH_N))
and enumFromTo__d2__d1__d0 a_3_5 b_2_2 _lh_popOutId_0_2_1 _lh_popOutId_1_1_8 _lh_popOutId_2_6 =
  (if (a_3_5 <= b_2_2) then
    (let rec _lh_listcomp_fun_ls_t_4_6 = ((enumFromTo__d2__d1__d0 (a_3_5 + 1)) b_2_2) in
      (let rec _lh_listcomp_fun_ls_h_4_2 = a_3_5 in
        (let rec _lh_listcomp_fun_9_1 = (fun _lh_listcomp_fun_para_4_5 -> 
          (match _lh_listcomp_fun_para_4_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_3, _lh_listcomp_fun_ls_t_4_7) -> 
              (`LH_C(((mappend__d1__d1__d1 ((pad__d0__d1__d1 (string_of_int _lh_listcomp_fun_ls_h_4_2)) _lh_popOutId_2_6)) _lh_listcomp_fun_ls_h_4_3), (_lh_listcomp_fun_9_1 _lh_listcomp_fun_ls_t_4_7)))
            | `LH_N -> 
              (_lh_popOutId_0_2_1 _lh_listcomp_fun_ls_t_4_6))) in
          (_lh_listcomp_fun_9_1 (expand__d0__d2__d0 _lh_popOutId_1_1_8)))))
  else
    (`LH_N))
and enumFromTo__d2__d2__d0 a_7_8 b_4_7 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 =
  (if (a_7_8 <= b_4_7) then
    (let rec _lh_listcomp_fun_ls_t_9_4 = ((enumFromTo__d2__d2__d0 (a_7_8 + 1)) b_4_7) in
      (let rec _lh_listcomp_fun_ls_h_8_1 = a_7_8 in
        (let rec _lh_listcomp_fun_1_8_0 = (fun _lh_listcomp_fun_para_8_7 -> 
          (match _lh_listcomp_fun_para_8_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_8_2, _lh_listcomp_fun_ls_t_9_5) -> 
              (`LH_C(((mappend__d1__d3__d1 ((pad__d0__d3__d1 (string_of_int _lh_listcomp_fun_ls_h_8_1)) _lh_popOutId_2_0)) _lh_listcomp_fun_ls_h_8_2), (_lh_listcomp_fun_1_8_0 _lh_listcomp_fun_ls_t_9_5)))
            | `LH_N -> 
              (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_9_4))) in
          (_lh_listcomp_fun_1_8_0 (expand__d0__d3__d1 _lh_popOutId_1_1)))))
  else
    (`LH_N))
and enumFromTo__d2__d3__d0 a_4_0 b_2_6 _lh_popOutId_0_7 _lh_popOutId_1_7 _lh_popOutId_2_2 =
  (if (a_4_0 <= b_2_6) then
    (let rec _lh_listcomp_fun_ls_t_5_3 = ((enumFromTo__d2__d3__d0 (a_4_0 + 1)) b_2_6) in
      (let rec _lh_listcomp_fun_ls_h_4_7 = a_4_0 in
        (let rec _lh_listcomp_fun_1_0_3 = (fun _lh_listcomp_fun_para_4_9 -> 
          (match _lh_listcomp_fun_para_4_9 with
            | `LH_C(_lh_listcomp_fun_ls_h_4_8, _lh_listcomp_fun_ls_t_5_4) -> 
              (`LH_C(((mappend__d1__d2__d1 ((pad__d0__d2__d1 (string_of_int _lh_listcomp_fun_ls_h_4_7)) _lh_popOutId_2_2)) _lh_listcomp_fun_ls_h_4_8), (_lh_listcomp_fun_1_0_3 _lh_listcomp_fun_ls_t_5_4)))
            | `LH_N -> 
              (_lh_popOutId_0_7 _lh_listcomp_fun_ls_t_5_3))) in
          (_lh_listcomp_fun_1_0_3 (expand__d0__d3__d0 _lh_popOutId_1_7)))))
  else
    (`LH_N))
and enumFromTo__d2__d3__d1 a_8_1 b_4_9 _lh_popOutId_0_2_6 _lh_popOutId_1_2_1 _lh_popOutId_2_7 =
  (if (a_8_1 <= b_4_9) then
    (let rec _lh_listcomp_fun_ls_t_9_8 = ((enumFromTo__d2__d3__d1 (a_8_1 + 1)) b_4_9) in
      (let rec _lh_listcomp_fun_ls_h_8_4 = a_8_1 in
        (let rec _lh_listcomp_fun_1_8_9 = (fun _lh_listcomp_fun_para_9_0 -> 
          (match _lh_listcomp_fun_para_9_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_8_5, _lh_listcomp_fun_ls_t_9_9) -> 
              (`LH_C(((mappend__d1__d2__d3 ((pad__d0__d2__d3 (string_of_int _lh_listcomp_fun_ls_h_8_4)) _lh_popOutId_2_7)) _lh_listcomp_fun_ls_h_8_5), (_lh_listcomp_fun_1_8_9 _lh_listcomp_fun_ls_t_9_9)))
            | `LH_N -> 
              (_lh_popOutId_0_2_6 _lh_listcomp_fun_ls_t_9_8))) in
          (_lh_listcomp_fun_1_8_9 (expand__d0__d3__d1 _lh_popOutId_1_2_1)))))
  else
    (`LH_N))
and enumFromTo__d3__d0__d0 a_4_2 b_2_7 _lh_popOutId_0_2_4 _lh_popOutId_1_1_9 =
  (if (a_4_2 <= b_2_7) then
    (let rec _lh_listcomp_fun_ls_t_5_5 = ((enumFromTo__d3__d0__d0 (a_4_2 + 1)) b_2_7) in
      (let rec t_6_1 = (_lh_popOutId_0_2_4 _lh_listcomp_fun_ls_t_5_5) in
        (let rec h_5_5 = '0' in
          (`LH_C(h_5_5, ((mappend__d2__d0__d0 t_6_1) _lh_popOutId_1_1_9))))))
  else
    _lh_popOutId_1_1_9)
and enumFromTo__d3__d0__d1 a_5_1 b_3_4 _lh_popOutId_0_1_4 _lh_popOutId_1_1_3 =
  (if (a_5_1 <= b_3_4) then
    (let rec _lh_listcomp_fun_ls_t_6_8 = ((enumFromTo__d3__d0__d1 (a_5_1 + 1)) b_3_4) in
      (let rec t_7_5 = (_lh_popOutId_0_1_4 _lh_listcomp_fun_ls_t_6_8) in
        (let rec h_6_7 = '0' in
          (`LH_C(h_6_7, ((mappend__d2__d0__d2 t_7_5) _lh_popOutId_1_1_3))))))
  else
    _lh_popOutId_1_1_3)
and enumFromTo__d3__d1__d0 a_7_9 b_4_8 _lh_popOutId_0_1_1 _lh_popOutId_1_1_0 =
  (if (a_7_9 <= b_4_8) then
    (let rec _lh_listcomp_fun_ls_t_9_6 = ((enumFromTo__d3__d1__d0 (a_7_9 + 1)) b_4_8) in
      (let rec t_9_9 = (_lh_popOutId_0_1_1 _lh_listcomp_fun_ls_t_9_6) in
        (let rec h_9_0 = '0' in
          (`LH_C(h_9_0, ((mappend__d2__d1__d0 t_9_9) _lh_popOutId_1_1_0))))))
  else
    _lh_popOutId_1_1_0)
and enumFromTo__d3__d1__d1 a_3_6 b_2_3 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (if (a_3_6 <= b_2_3) then
    (let rec _lh_listcomp_fun_ls_t_4_8 = ((enumFromTo__d3__d1__d1 (a_3_6 + 1)) b_2_3) in
      (let rec t_5_0 = (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_4_8) in
        (let rec h_4_5 = '0' in
          (`LH_C(h_4_5, ((mappend__d2__d1__d2 t_5_0) _lh_popOutId_1_2))))))
  else
    _lh_popOutId_1_2)
and enumFromTo__d3__d2__d0 a_6_5 b_4_1 _lh_popOutId_0_1_7 _lh_popOutId_1_1_5 =
  (if (a_6_5 <= b_4_1) then
    (let rec _lh_listcomp_fun_ls_t_8_1 = ((enumFromTo__d3__d2__d0 (a_6_5 + 1)) b_4_1) in
      (let rec t_9_0 = (_lh_popOutId_0_1_7 _lh_listcomp_fun_ls_t_8_1) in
        (let rec h_8_2 = '0' in
          (`LH_C(h_8_2, ((mappend__d2__d2__d0 t_9_0) _lh_popOutId_1_1_5))))))
  else
    _lh_popOutId_1_1_5)
and enumFromTo__d3__d2__d1 a_5_0 b_3_3 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_5_0 <= b_3_3) then
    (let rec _lh_listcomp_fun_ls_t_6_7 = ((enumFromTo__d3__d2__d1 (a_5_0 + 1)) b_3_3) in
      (let rec t_7_4 = (_lh_popOutId_0_0 _lh_listcomp_fun_ls_t_6_7) in
        (let rec h_6_6 = '0' in
          (`LH_C(h_6_6, ((mappend__d2__d2__d2 t_7_4) _lh_popOutId_1_0))))))
  else
    _lh_popOutId_1_0)
and enumFromTo__d3__d2__d2 a_3_9 b_2_5 _lh_popOutId_0_1_3 _lh_popOutId_1_1_2 =
  (if (a_3_9 <= b_2_5) then
    (let rec _lh_listcomp_fun_ls_t_5_2 = ((enumFromTo__d3__d2__d2 (a_3_9 + 1)) b_2_5) in
      (let rec t_5_3 = (_lh_popOutId_0_1_3 _lh_listcomp_fun_ls_t_5_2) in
        (let rec h_4_7 = '0' in
          (`LH_C(h_4_7, ((mappend__d2__d2__d4 t_5_3) _lh_popOutId_1_1_2))))))
  else
    _lh_popOutId_1_1_2)
and enumFromTo__d3__d2__d3 a_4_4 b_2_8 _lh_popOutId_0_1_0 _lh_popOutId_1_9 =
  (if (a_4_4 <= b_2_8) then
    (let rec _lh_listcomp_fun_ls_t_5_7 = ((enumFromTo__d3__d2__d3 (a_4_4 + 1)) b_2_8) in
      (let rec t_6_7 = (_lh_popOutId_0_1_0 _lh_listcomp_fun_ls_t_5_7) in
        (let rec h_6_1 = '0' in
          (`LH_C(h_6_1, ((mappend__d2__d2__d6 t_6_7) _lh_popOutId_1_9))))))
  else
    _lh_popOutId_1_9)
and enumFromTo__d3__d3__d0 a_5_4 b_3_6 _lh_popOutId_0_2_8 _lh_popOutId_1_2_3 =
  (if (a_5_4 <= b_3_6) then
    (let rec _lh_listcomp_fun_ls_t_7_1 = ((enumFromTo__d3__d3__d0 (a_5_4 + 1)) b_3_6) in
      (let rec t_8_2 = (_lh_popOutId_0_2_8 _lh_listcomp_fun_ls_t_7_1) in
        (let rec h_7_4 = '0' in
          (`LH_C(h_7_4, ((mappend__d2__d3__d0 t_8_2) _lh_popOutId_1_2_3))))))
  else
    _lh_popOutId_1_2_3)
and enumFromTo__d3__d3__d1 a_6_4 b_4_0 _lh_popOutId_0_1_2 _lh_popOutId_1_1_1 =
  (if (a_6_4 <= b_4_0) then
    (let rec _lh_listcomp_fun_ls_t_8_0 = ((enumFromTo__d3__d3__d1 (a_6_4 + 1)) b_4_0) in
      (let rec t_8_9 = (_lh_popOutId_0_1_2 _lh_listcomp_fun_ls_t_8_0) in
        (let rec h_8_1 = '0' in
          (`LH_C(h_8_1, ((mappend__d2__d3__d2 t_8_9) _lh_popOutId_1_1_1))))))
  else
    _lh_popOutId_1_1_1)
and expand__d0__d0__d0 _lh_expand_arg1_8 =
  (match _lh_expand_arg1_8 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_8, _lh_expand_LH_C_1_8) -> 
      (match _lh_expand_LH_C_0_8 with
        | '<' -> 
          (numericRule__d0__d2__d0 _lh_expand_LH_C_1_8)
        | '[' -> 
          (alphabeticRule__d0__d0__d0 _lh_expand_LH_C_1_8)
        | _ -> 
          (constantRule__d0__d2__d0 _lh_expand_arg1_8))
    | _ -> 
      (constantRule__d0__d3__d0 _lh_expand_arg1_8))
and expand__d0__d1__d0 _lh_expand_arg1_5 =
  (match _lh_expand_arg1_5 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_5, _lh_expand_LH_C_1_5) -> 
      (match _lh_expand_LH_C_0_5 with
        | '<' -> 
          (numericRule__d0__d0__d0 _lh_expand_LH_C_1_5)
        | '[' -> 
          (alphabeticRule__d0__d1__d0 _lh_expand_LH_C_1_5)
        | _ -> 
          (constantRule__d0__d0__d0 _lh_expand_arg1_5))
    | _ -> 
      (constantRule__d0__d1__d0 _lh_expand_arg1_5))
and expand__d0__d2__d0 _lh_expand_arg1_7 =
  (match _lh_expand_arg1_7 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_7, _lh_expand_LH_C_1_7) -> 
      (match _lh_expand_LH_C_0_7 with
        | '<' -> 
          (numericRule__d0__d1__d0 _lh_expand_LH_C_1_7)
        | '[' -> 
          (alphabeticRule__d0__d2__d0 _lh_expand_LH_C_1_7)
        | _ -> 
          (constantRule__d0__d3__d0 _lh_expand_arg1_7))
    | _ -> 
      (constantRule__d0__d3__d0 _lh_expand_arg1_7))
and expand__d0__d3__d0 _lh_expand_arg1_4 =
  (match _lh_expand_arg1_4 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_4, _lh_expand_LH_C_1_4) -> 
      (match _lh_expand_LH_C_0_4 with
        | '<' -> 
          (numericRule__d0__d3__d0 _lh_expand_LH_C_1_4)
        | '[' -> 
          (alphabeticRule__d0__d3__d0 _lh_expand_LH_C_1_4)
        | _ -> 
          (constantRule__d0__d4__d0 _lh_expand_arg1_4))
    | _ -> 
      (constantRule__d0__d5__d0 _lh_expand_arg1_4))
and expand__d0__d3__d1 _lh_expand_arg1_6 =
  (match _lh_expand_arg1_6 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_6, _lh_expand_LH_C_1_6) -> 
      (match _lh_expand_LH_C_0_6 with
        | '<' -> 
          (numericRule__d0__d3__d1 _lh_expand_LH_C_1_6)
        | '[' -> 
          (alphabeticRule__d0__d3__d1 _lh_expand_LH_C_1_6)
        | _ -> 
          (constantRule__d0__d4__d1 _lh_expand_arg1_6))
    | _ -> 
      (constantRule__d0__d5__d1 _lh_expand_arg1_6))
and mknum__d0__d0__d0 _lh_mknum_arg1_9 =
  (((foldl__d0__d0__d1 (fun u_9 c_1_7 -> 
    ((u_9 * 10) + ((int_of_char c_1_7) - (int_of_char '0'))))) 0) _lh_mknum_arg1_9)
and mknum__d0__d1__d0 _lh_mknum_arg1_1_7 =
  (((foldl__d0__d1__d1 (fun u_1_7 c_3_4 -> 
    ((u_1_7 * 10) + ((int_of_char c_3_4) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_7)
and mknum__d0__d2__d0 _lh_mknum_arg1_1_2 =
  (((foldl__d0__d2__d1 (fun u_1_2 c_2_1 -> 
    ((u_1_2 * 10) + ((int_of_char c_2_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_2)
and mknum__d0__d2__d1 _lh_mknum_arg1_8 =
  (((foldl__d0__d2__d3 (fun u_8 c_1_6 -> 
    ((u_8 * 10) + ((int_of_char c_1_6) - (int_of_char '0'))))) 0) _lh_mknum_arg1_8)
and mknum__d0__d3__d0 _lh_mknum_arg1_1_5 =
  (((foldl__d0__d3__d1 (fun u_1_5 c_3_1 -> 
    ((u_1_5 * 10) + ((int_of_char c_3_1) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_5)
and mknum__d1__d0__d0 _lh_mknum_arg1_1_1 =
  (((foldl__d1__d0__d1 (fun u_1_1 c_2_0 -> 
    ((u_1_1 * 10) + ((int_of_char c_2_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_1)
and mknum__d1__d1__d0 _lh_mknum_arg1_1_0 =
  (((foldl__d1__d1__d1 (fun u_1_0 c_1_8 -> 
    ((u_1_0 * 10) + ((int_of_char c_1_8) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_0)
and mknum__d1__d2__d0 _lh_mknum_arg1_1_4 =
  (((foldl__d1__d2__d1 (fun u_1_4 c_3_0 -> 
    ((u_1_4 * 10) + ((int_of_char c_3_0) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_4)
and mknum__d1__d2__d1 _lh_mknum_arg1_1_3 =
  (((foldl__d1__d2__d3 (fun u_1_3 c_2_4 -> 
    ((u_1_3 * 10) + ((int_of_char c_2_4) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_3)
and mknum__d1__d3__d0 _lh_mknum_arg1_1_6 =
  (((foldl__d1__d3__d1 (fun u_1_6 c_3_2 -> 
    ((u_1_6 * 10) + ((int_of_char c_3_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1_6)
and numericRule__d0__d0__d0 _lh_numericRule_arg1_7 =
  (let rec _lh_matchIdent_3_9 = ((span__d0__d0__d0 (fun c_2_8 -> 
    (c_2_8 <> '-'))) _lh_numericRule_arg1_7) in
    (match _lh_matchIdent_3_9 with
      | `LH_P2(_lh_numericRule_LH_P2_0_7_3, _lh_numericRule_LH_P2_1_2_3) -> 
        (_lh_numericRule_LH_P2_1_2_3 _lh_numericRule_LH_P2_0_7_3)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d1__d0 _lh_numericRule_arg1_4 =
  (let rec _lh_matchIdent_2_0 = ((span__d0__d1__d0 (fun c_1_9 -> 
    (c_1_9 <> '-'))) _lh_numericRule_arg1_4) in
    (match _lh_matchIdent_2_0 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3_6, _lh_numericRule_LH_P2_1_1_2) -> 
        (_lh_numericRule_LH_P2_1_1_2 _lh_numericRule_LH_P2_0_3_6)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d2__d0 _lh_numericRule_arg1_8 =
  (let rec _lh_matchIdent_4_2 = ((span__d0__d3__d0 (fun c_3_3 -> 
    (c_3_3 <> '-'))) _lh_numericRule_arg1_8) in
    (match _lh_matchIdent_4_2 with
      | `LH_P2(_lh_numericRule_LH_P2_0_7_7, _lh_numericRule_LH_P2_1_2_5) -> 
        (_lh_numericRule_LH_P2_1_2_5 _lh_numericRule_LH_P2_0_7_7)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d3__d0 _lh_numericRule_arg1_5 =
  (let rec _lh_matchIdent_2_7 = ((span__d0__d2__d0 (fun c_2_2 -> 
    (c_2_2 <> '-'))) _lh_numericRule_arg1_5) in
    (match _lh_matchIdent_2_7 with
      | `LH_P2(_lh_numericRule_LH_P2_0_5_2, _lh_numericRule_LH_P2_1_1_6) -> 
        (_lh_numericRule_LH_P2_1_1_6 _lh_numericRule_LH_P2_0_5_2)
      | _ -> 
        (failwith "error")))
and numericRule__d0__d3__d1 _lh_numericRule_arg1_6 =
  (let rec _lh_matchIdent_3_6 = ((span__d0__d2__d1 (fun c_2_7 -> 
    (c_2_7 <> '-'))) _lh_numericRule_arg1_6) in
    (match _lh_matchIdent_3_6 with
      | `LH_P2(_lh_numericRule_LH_P2_0_6_7, _lh_numericRule_LH_P2_1_2_1) -> 
        (_lh_numericRule_LH_P2_1_2_1 _lh_numericRule_LH_P2_0_6_7)
      | _ -> 
        (failwith "error")))
and pad__d0__d0__d0 _lh_pad_arg1_6 _lh_pad_arg2_6 =
  ((mappend__d2__d0__d1 (let rec _lh_listcomp_fun_8_6 = (fun _lh_listcomp_fun_para_4_3 -> 
    (_lh_listcomp_fun_para_4_3 _lh_listcomp_fun_8_6)) in
    (_lh_listcomp_fun_8_6 ((enumFromTo__d3__d0__d0 1) (_lh_pad_arg2_6 - (length__d2__d0__d0 _lh_pad_arg1_6)))))) _lh_pad_arg1_6)
and pad__d0__d0__d1 _lh_pad_arg1_1_1 _lh_pad_arg2_1_1 =
  ((mappend__d2__d0__d3 (let rec _lh_listcomp_fun_1_7_3 = (fun _lh_listcomp_fun_para_8_3 -> 
    (_lh_listcomp_fun_para_8_3 _lh_listcomp_fun_1_7_3)) in
    (_lh_listcomp_fun_1_7_3 ((enumFromTo__d3__d0__d1 1) (_lh_pad_arg2_1_1 - (length__d2__d0__d1 _lh_pad_arg1_1_1)))))) _lh_pad_arg1_1_1)
and pad__d0__d1__d0 _lh_pad_arg1_7 _lh_pad_arg2_7 =
  ((mappend__d2__d1__d1 (let rec _lh_listcomp_fun_1_0_6 = (fun _lh_listcomp_fun_para_5_1 -> 
    (_lh_listcomp_fun_para_5_1 _lh_listcomp_fun_1_0_6)) in
    (_lh_listcomp_fun_1_0_6 ((enumFromTo__d3__d1__d0 1) (_lh_pad_arg2_7 - (length__d2__d1__d0 _lh_pad_arg1_7)))))) _lh_pad_arg1_7)
and pad__d0__d1__d1 _lh_pad_arg1_9 _lh_pad_arg2_9 =
  ((mappend__d2__d1__d3 (let rec _lh_listcomp_fun_1_4_9 = (fun _lh_listcomp_fun_para_7_2 -> 
    (_lh_listcomp_fun_para_7_2 _lh_listcomp_fun_1_4_9)) in
    (_lh_listcomp_fun_1_4_9 ((enumFromTo__d3__d1__d1 1) (_lh_pad_arg2_9 - (length__d2__d1__d1 _lh_pad_arg1_9)))))) _lh_pad_arg1_9)
and pad__d0__d2__d0 _lh_pad_arg1_5 _lh_pad_arg2_5 =
  ((mappend__d2__d2__d1 (let rec _lh_listcomp_fun_8_5 = (fun _lh_listcomp_fun_para_4_2 -> 
    (_lh_listcomp_fun_para_4_2 _lh_listcomp_fun_8_5)) in
    (_lh_listcomp_fun_8_5 ((enumFromTo__d3__d2__d0 1) (_lh_pad_arg2_5 - (length__d2__d2__d0 _lh_pad_arg1_5)))))) _lh_pad_arg1_5)
and pad__d0__d2__d1 _lh_pad_arg1_4 _lh_pad_arg2_4 =
  ((mappend__d2__d2__d3 (let rec _lh_listcomp_fun_7_9 = (fun _lh_listcomp_fun_para_3_8 -> 
    (_lh_listcomp_fun_para_3_8 _lh_listcomp_fun_7_9)) in
    (_lh_listcomp_fun_7_9 ((enumFromTo__d3__d2__d1 1) (_lh_pad_arg2_4 - (length__d2__d2__d1 _lh_pad_arg1_4)))))) _lh_pad_arg1_4)
and pad__d0__d2__d2 _lh_pad_arg1_8 _lh_pad_arg2_8 =
  ((mappend__d2__d2__d5 (let rec _lh_listcomp_fun_1_1_0 = (fun _lh_listcomp_fun_para_5_3 -> 
    (_lh_listcomp_fun_para_5_3 _lh_listcomp_fun_1_1_0)) in
    (_lh_listcomp_fun_1_1_0 ((enumFromTo__d3__d2__d2 1) (_lh_pad_arg2_8 - (length__d2__d2__d2 _lh_pad_arg1_8)))))) _lh_pad_arg1_8)
and pad__d0__d2__d3 _lh_pad_arg1_1_2 _lh_pad_arg2_1_2 =
  ((mappend__d2__d2__d7 (let rec _lh_listcomp_fun_1_7_8 = (fun _lh_listcomp_fun_para_8_6 -> 
    (_lh_listcomp_fun_para_8_6 _lh_listcomp_fun_1_7_8)) in
    (_lh_listcomp_fun_1_7_8 ((enumFromTo__d3__d2__d3 1) (_lh_pad_arg2_1_2 - (length__d2__d2__d3 _lh_pad_arg1_1_2)))))) _lh_pad_arg1_1_2)
and pad__d0__d3__d0 _lh_pad_arg1_1_3 _lh_pad_arg2_1_3 =
  ((mappend__d2__d3__d1 (let rec _lh_listcomp_fun_1_8_7 = (fun _lh_listcomp_fun_para_8_9 -> 
    (_lh_listcomp_fun_para_8_9 _lh_listcomp_fun_1_8_7)) in
    (_lh_listcomp_fun_1_8_7 ((enumFromTo__d3__d3__d0 1) (_lh_pad_arg2_1_3 - (length__d2__d3__d0 _lh_pad_arg1_1_3)))))) _lh_pad_arg1_1_3)
and pad__d0__d3__d1 _lh_pad_arg1_1_0 _lh_pad_arg2_1_0 =
  ((mappend__d2__d3__d3 (let rec _lh_listcomp_fun_1_5_9 = (fun _lh_listcomp_fun_para_7_6 -> 
    (_lh_listcomp_fun_para_7_6 _lh_listcomp_fun_1_5_9)) in
    (_lh_listcomp_fun_1_5_9 ((enumFromTo__d3__d3__d1 1) (_lh_pad_arg2_1_0 - (length__d2__d3__d1 _lh_pad_arg1_1_0)))))) _lh_pad_arg1_1_0)
and reverse__d0__d0__d0 ls_8_0 =
  ((reverse_helper__d0__d0__d1 ls_8_0) (fun _lh_alphabeticRule_LH_C_1_7_1 _lh_listcomp_fun_1_8_6 -> 
    (`LH_N)))
and reverse__d0__d1__d0 ls_7_5 =
  ((reverse_helper__d0__d1__d1 ls_7_5) (fun _lh_alphabeticRule_LH_C_1_6_9 _lh_listcomp_fun_1_7_6 -> 
    (`LH_N)))
and reverse__d0__d2__d0 ls_7_0 =
  ((reverse_helper__d0__d2__d1 ls_7_0) (fun _lh_alphabeticRule_LH_C_1_6_7 _lh_listcomp_fun_1_7_2 -> 
    (`LH_N)))
and reverse__d0__d3__d0 ls_3_4 =
  ((reverse_helper__d0__d3__d1 ls_3_4) (fun _lh_alphabeticRule_LH_C_1_3_2 _lh_listcomp_fun_7_8 -> 
    (`LH_N)))
and reverse__d0__d3__d1 ls_7_8 =
  ((reverse_helper__d0__d3__d3 ls_7_8) (fun _lh_alphabeticRule_LH_C_1_7_0 _lh_listcomp_fun_1_8_2 -> 
    (`LH_N)))
and span__d0__d0__d0 _lh_span_arg1_1_3 _lh_span_arg2_1_3 =
  (match _lh_span_arg2_1_3 with
    | `LH_N -> 
      (`LH_P2((fun f_6_3 i_6_3 -> 
        i_6_3), (fun _lh_numericRule_LH_P2_0_6_1 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_3, _lh_span_LH_C_1_1_3) -> 
      (if (_lh_span_arg1_1_3 _lh_span_LH_C_0_1_3) then
        (let rec _lh_matchIdent_3_2 = ((span__d0__d0__d0 _lh_span_arg1_1_3) _lh_span_LH_C_1_1_3) in
          (match _lh_matchIdent_3_2 with
            | `LH_P2(_lh_span_LH_P2_0_1_3, _lh_span_LH_P2_1_1_3) -> 
              (`LH_P2((let rec t_7_6 = _lh_span_LH_P2_0_1_3 in
                (let rec h_6_8 = _lh_span_LH_C_0_1_3 in
                  (fun f_6_4 i_6_4 -> 
                    (((foldl__d0__d0__d0 f_6_4) ((f_6_4 i_6_4) h_6_8)) t_7_6)))), _lh_span_LH_P2_1_1_3))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_6_5 i_6_5 -> 
          i_6_5), (let rec _lh_numericRule_LH_C_1_4_9 = _lh_span_LH_C_1_1_3 in
          (fun _lh_numericRule_LH_P2_0_6_2 -> 
            (let rec _lh_matchIdent_3_3 = ((span__d1__d0__d0 (fun c_2_5 -> 
              (c_2_5 <> '>'))) _lh_numericRule_LH_C_1_4_9) in
              (match _lh_matchIdent_3_3 with
                | `LH_P2(_lh_numericRule_LH_P2_0_6_3, _lh_numericRule_LH_P2_1_1_9) -> 
                  ((_lh_numericRule_LH_P2_1_1_9 _lh_numericRule_LH_P2_0_6_2) _lh_numericRule_LH_P2_0_6_3)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d1__d0 _lh_span_arg1_1_6 _lh_span_arg2_1_6 =
  (match _lh_span_arg2_1_6 with
    | `LH_N -> 
      (`LH_P2((fun f_7_3 i_7_3 -> 
        i_7_3), (fun _lh_numericRule_LH_P2_0_7_4 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_6, _lh_span_LH_C_1_1_6) -> 
      (if (_lh_span_arg1_1_6 _lh_span_LH_C_0_1_6) then
        (let rec _lh_matchIdent_4_0 = ((span__d0__d1__d0 _lh_span_arg1_1_6) _lh_span_LH_C_1_1_6) in
          (match _lh_matchIdent_4_0 with
            | `LH_P2(_lh_span_LH_P2_0_1_6, _lh_span_LH_P2_1_1_6) -> 
              (`LH_P2((let rec t_9_3 = _lh_span_LH_P2_0_1_6 in
                (let rec h_8_4 = _lh_span_LH_C_0_1_6 in
                  (fun f_7_4 i_7_4 -> 
                    (((foldl__d0__d1__d0 f_7_4) ((f_7_4 i_7_4) h_8_4)) t_9_3)))), _lh_span_LH_P2_1_1_6))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_7_5 i_7_5 -> 
          i_7_5), (let rec _lh_numericRule_LH_C_1_5_7 = _lh_span_LH_C_1_1_6 in
          (fun _lh_numericRule_LH_P2_0_7_5 -> 
            (let rec _lh_matchIdent_4_1 = ((span__d1__d1__d0 (fun c_2_9 -> 
              (c_2_9 <> '>'))) _lh_numericRule_LH_C_1_5_7) in
              (match _lh_matchIdent_4_1 with
                | `LH_P2(_lh_numericRule_LH_P2_0_7_6, _lh_numericRule_LH_P2_1_2_4) -> 
                  ((_lh_numericRule_LH_P2_1_2_4 _lh_numericRule_LH_P2_0_7_5) _lh_numericRule_LH_P2_0_7_6)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d2__d0 _lh_span_arg1_1_7 _lh_span_arg2_1_7 =
  (match _lh_span_arg2_1_7 with
    | `LH_N -> 
      (`LH_P2((fun f_7_9 i_7_9 -> 
        i_7_9), (fun _lh_numericRule_LH_P2_0_7_8 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_7, _lh_span_LH_C_1_1_7) -> 
      (if (_lh_span_arg1_1_7 _lh_span_LH_C_0_1_7) then
        (let rec _lh_matchIdent_4_3 = ((span__d0__d2__d0 _lh_span_arg1_1_7) _lh_span_LH_C_1_1_7) in
          (match _lh_matchIdent_4_3 with
            | `LH_P2(_lh_span_LH_P2_0_1_7, _lh_span_LH_P2_1_1_7) -> 
              (`LH_P2((let rec t_1_0_3 = _lh_span_LH_P2_0_1_7 in
                (let rec h_9_4 = _lh_span_LH_C_0_1_7 in
                  (fun f_8_0 i_8_0 -> 
                    (((foldl__d0__d2__d0 f_8_0) ((f_8_0 i_8_0) h_9_4)) t_1_0_3)))), _lh_span_LH_P2_1_1_7))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_8_1 i_8_1 -> 
          i_8_1), (let rec _lh_numericRule_LH_C_1_6_0 = _lh_span_LH_C_1_1_7 in
          (fun _lh_numericRule_LH_P2_0_7_9 -> 
            (let rec _lh_matchIdent_4_4 = ((span__d1__d2__d0 (fun c_3_5 -> 
              (c_3_5 <> '>'))) _lh_numericRule_LH_C_1_6_0) in
              (match _lh_matchIdent_4_4 with
                | `LH_P2(_lh_numericRule_LH_P2_0_8_0, _lh_numericRule_LH_P2_1_2_6) -> 
                  ((_lh_numericRule_LH_P2_1_2_6 _lh_numericRule_LH_P2_0_7_9) _lh_numericRule_LH_P2_0_8_0)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d2__d1 _lh_span_arg1_1_4 _lh_span_arg2_1_4 =
  (match _lh_span_arg2_1_4 with
    | `LH_N -> 
      (`LH_P2((fun f_6_6 i_6_6 -> 
        i_6_6), (fun _lh_numericRule_LH_P2_0_6_4 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_4, _lh_span_LH_C_1_1_4) -> 
      (if (_lh_span_arg1_1_4 _lh_span_LH_C_0_1_4) then
        (let rec _lh_matchIdent_3_4 = ((span__d0__d2__d1 _lh_span_arg1_1_4) _lh_span_LH_C_1_1_4) in
          (match _lh_matchIdent_3_4 with
            | `LH_P2(_lh_span_LH_P2_0_1_4, _lh_span_LH_P2_1_1_4) -> 
              (`LH_P2((let rec t_7_8 = _lh_span_LH_P2_0_1_4 in
                (let rec h_7_0 = _lh_span_LH_C_0_1_4 in
                  (fun f_6_7 i_6_7 -> 
                    (((foldl__d0__d2__d2 f_6_7) ((f_6_7 i_6_7) h_7_0)) t_7_8)))), _lh_span_LH_P2_1_1_4))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_6_8 i_6_8 -> 
          i_6_8), (let rec _lh_numericRule_LH_C_1_5_0 = _lh_span_LH_C_1_1_4 in
          (fun _lh_numericRule_LH_P2_0_6_5 -> 
            (let rec _lh_matchIdent_3_5 = ((span__d1__d2__d1 (fun c_2_6 -> 
              (c_2_6 <> '>'))) _lh_numericRule_LH_C_1_5_0) in
              (match _lh_matchIdent_3_5 with
                | `LH_P2(_lh_numericRule_LH_P2_0_6_6, _lh_numericRule_LH_P2_1_2_0) -> 
                  ((_lh_numericRule_LH_P2_1_2_0 _lh_numericRule_LH_P2_0_6_5) _lh_numericRule_LH_P2_0_6_6)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d0__d3__d0 _lh_span_arg1_1_1 _lh_span_arg2_1_1 =
  (match _lh_span_arg2_1_1 with
    | `LH_N -> 
      (`LH_P2((fun f_5_5 i_5_5 -> 
        i_5_5), (fun _lh_numericRule_LH_P2_0_5_3 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_1, _lh_span_LH_C_1_1_1) -> 
      (if (_lh_span_arg1_1_1 _lh_span_LH_C_0_1_1) then
        (let rec _lh_matchIdent_2_8 = ((span__d0__d3__d0 _lh_span_arg1_1_1) _lh_span_LH_C_1_1_1) in
          (match _lh_matchIdent_2_8 with
            | `LH_P2(_lh_span_LH_P2_0_1_1, _lh_span_LH_P2_1_1_1) -> 
              (`LH_P2((let rec t_7_0 = _lh_span_LH_P2_0_1_1 in
                (let rec h_6_4 = _lh_span_LH_C_0_1_1 in
                  (fun f_5_6 i_5_6 -> 
                    (((foldl__d0__d3__d0 f_5_6) ((f_5_6 i_5_6) h_6_4)) t_7_0)))), _lh_span_LH_P2_1_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_5_7 i_5_7 -> 
          i_5_7), (let rec _lh_numericRule_LH_C_1_4_2 = _lh_span_LH_C_1_1_1 in
          (fun _lh_numericRule_LH_P2_0_5_4 -> 
            (let rec _lh_matchIdent_2_9 = ((span__d1__d3__d0 (fun c_2_3 -> 
              (c_2_3 <> '>'))) _lh_numericRule_LH_C_1_4_2) in
              (match _lh_matchIdent_2_9 with
                | `LH_P2(_lh_numericRule_LH_P2_0_5_5, _lh_numericRule_LH_P2_1_1_7) -> 
                  ((_lh_numericRule_LH_P2_1_1_7 _lh_numericRule_LH_P2_0_5_5) _lh_numericRule_LH_P2_0_5_4)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d1__d0__d0 _lh_span_arg1_1_0 _lh_span_arg2_1_0 =
  (match _lh_span_arg2_1_0 with
    | `LH_N -> 
      (`LH_P2((fun f_4_6 i_4_6 -> 
        i_4_6), (fun _lh_numericRule_LH_P2_0_4_7 _lh_numericRule_LH_P2_0_4_8 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_0, _lh_span_LH_C_1_1_0) -> 
      (if (_lh_span_arg1_1_0 _lh_span_LH_C_0_1_0) then
        (let rec _lh_matchIdent_2_5 = ((span__d1__d0__d0 _lh_span_arg1_1_0) _lh_span_LH_C_1_1_0) in
          (match _lh_matchIdent_2_5 with
            | `LH_P2(_lh_span_LH_P2_0_1_0, _lh_span_LH_P2_1_1_0) -> 
              (`LH_P2((let rec t_6_0 = _lh_span_LH_P2_0_1_0 in
                (let rec h_5_4 = _lh_span_LH_C_0_1_0 in
                  (fun f_4_7 i_4_7 -> 
                    (((foldl__d1__d0__d0 f_4_7) ((f_4_7 i_4_7) h_5_4)) t_6_0)))), _lh_span_LH_P2_1_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_4_8 i_4_8 -> 
          i_4_8), (let rec _lh_numericRule_LH_C_1_4_0 = _lh_span_LH_C_1_1_0 in
          (fun _lh_numericRule_LH_P2_0_4_9 _lh_numericRule_LH_P2_0_5_0 -> 
            (let rec _lh_matchIdent_2_6 = (let rec _lh_numericRule_LH_P2_1_1_5 = (mknum__d1__d0__d0 _lh_numericRule_LH_P2_0_5_0) in
              (let rec _lh_numericRule_LH_P2_0_5_1 = (mknum__d0__d0__d0 _lh_numericRule_LH_P2_0_4_9) in
                (fun _lh_numericRule_LH_C_1_4_1 -> 
                  (let rec width_3_0 = ((max__d0__d0__d0 (length__d0__d0__d0 (string_of_int _lh_numericRule_LH_P2_0_5_1))) (length__d1__d0__d0 (string_of_int _lh_numericRule_LH_P2_1_1_5))) in
                    (let rec _lh_listcomp_fun_1_0_7 = (fun _lh_listcomp_fun_para_5_2 -> 
                      (((_lh_listcomp_fun_para_5_2 _lh_listcomp_fun_1_0_7) _lh_numericRule_LH_C_1_4_1) width_3_0)) in
                      (_lh_listcomp_fun_1_0_7 (if (_lh_numericRule_LH_P2_0_5_1 < _lh_numericRule_LH_P2_1_1_5) then
                        ((enumFromTo__d2__d0__d0 _lh_numericRule_LH_P2_0_5_1) _lh_numericRule_LH_P2_1_1_5)
                      else
                        (((enumFromThenTo__d0__d0__d0 _lh_numericRule_LH_P2_0_5_1) (_lh_numericRule_LH_P2_0_5_1 - 1)) _lh_numericRule_LH_P2_1_1_5)))))))) in
              (_lh_matchIdent_2_6 _lh_numericRule_LH_C_1_4_0)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d1__d0 _lh_span_arg1_1_5 _lh_span_arg2_1_5 =
  (match _lh_span_arg2_1_5 with
    | `LH_N -> 
      (`LH_P2((fun f_7_0 i_7_0 -> 
        i_7_0), (fun _lh_numericRule_LH_P2_0_6_8 _lh_numericRule_LH_P2_0_6_9 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_5, _lh_span_LH_C_1_1_5) -> 
      (if (_lh_span_arg1_1_5 _lh_span_LH_C_0_1_5) then
        (let rec _lh_matchIdent_3_7 = ((span__d1__d1__d0 _lh_span_arg1_1_5) _lh_span_LH_C_1_1_5) in
          (match _lh_matchIdent_3_7 with
            | `LH_P2(_lh_span_LH_P2_0_1_5, _lh_span_LH_P2_1_1_5) -> 
              (`LH_P2((let rec t_8_6 = _lh_span_LH_P2_0_1_5 in
                (let rec h_7_8 = _lh_span_LH_C_0_1_5 in
                  (fun f_7_1 i_7_1 -> 
                    (((foldl__d1__d1__d0 f_7_1) ((f_7_1 i_7_1) h_7_8)) t_8_6)))), _lh_span_LH_P2_1_1_5))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_7_2 i_7_2 -> 
          i_7_2), (let rec _lh_numericRule_LH_C_1_5_1 = _lh_span_LH_C_1_1_5 in
          (fun _lh_numericRule_LH_P2_0_7_0 _lh_numericRule_LH_P2_0_7_1 -> 
            (let rec _lh_matchIdent_3_8 = (let rec _lh_numericRule_LH_P2_1_2_2 = (mknum__d1__d1__d0 _lh_numericRule_LH_P2_0_7_1) in
              (let rec _lh_numericRule_LH_P2_0_7_2 = (mknum__d0__d1__d0 _lh_numericRule_LH_P2_0_7_0) in
                (fun _lh_numericRule_LH_C_1_5_2 -> 
                  (let rec width_3_6 = ((max__d0__d1__d0 (length__d0__d1__d0 (string_of_int _lh_numericRule_LH_P2_0_7_2))) (length__d1__d1__d0 (string_of_int _lh_numericRule_LH_P2_1_2_2))) in
                    (let rec _lh_listcomp_fun_1_4_8 = (fun _lh_listcomp_fun_para_7_1 -> 
                      (((_lh_listcomp_fun_para_7_1 _lh_listcomp_fun_1_4_8) _lh_numericRule_LH_C_1_5_2) width_3_6)) in
                      (_lh_listcomp_fun_1_4_8 (if (_lh_numericRule_LH_P2_0_7_2 < _lh_numericRule_LH_P2_1_2_2) then
                        ((enumFromTo__d2__d1__d0 _lh_numericRule_LH_P2_0_7_2) _lh_numericRule_LH_P2_1_2_2)
                      else
                        (((enumFromThenTo__d0__d1__d0 _lh_numericRule_LH_P2_0_7_2) (_lh_numericRule_LH_P2_0_7_2 - 1)) _lh_numericRule_LH_P2_1_2_2)))))))) in
              (_lh_matchIdent_3_8 _lh_numericRule_LH_C_1_5_1)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d2__d0 _lh_span_arg1_8 _lh_span_arg2_8 =
  (match _lh_span_arg2_8 with
    | `LH_N -> 
      (`LH_P2((fun f_3_7 i_3_7 -> 
        i_3_7), (fun _lh_numericRule_LH_P2_0_3_7 _lh_numericRule_LH_P2_0_3_8 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_8, _lh_span_LH_C_1_8) -> 
      (if (_lh_span_arg1_8 _lh_span_LH_C_0_8) then
        (let rec _lh_matchIdent_2_1 = ((span__d1__d2__d0 _lh_span_arg1_8) _lh_span_LH_C_1_8) in
          (match _lh_matchIdent_2_1 with
            | `LH_P2(_lh_span_LH_P2_0_8, _lh_span_LH_P2_1_8) -> 
              (`LH_P2((let rec t_5_4 = _lh_span_LH_P2_0_8 in
                (let rec h_4_8 = _lh_span_LH_C_0_8 in
                  (fun f_3_8 i_3_8 -> 
                    (((foldl__d1__d2__d0 f_3_8) ((f_3_8 i_3_8) h_4_8)) t_5_4)))), _lh_span_LH_P2_1_8))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_3_9 i_3_9 -> 
          i_3_9), (let rec _lh_numericRule_LH_C_1_3_4 = _lh_span_LH_C_1_8 in
          (fun _lh_numericRule_LH_P2_0_3_9 _lh_numericRule_LH_P2_0_4_0 -> 
            (let rec _lh_matchIdent_2_2 = (let rec _lh_numericRule_LH_P2_1_1_3 = (mknum__d1__d2__d0 _lh_numericRule_LH_P2_0_4_0) in
              (let rec _lh_numericRule_LH_P2_0_4_1 = (mknum__d0__d2__d0 _lh_numericRule_LH_P2_0_3_9) in
                (fun _lh_numericRule_LH_C_1_3_5 -> 
                  (let rec width_2_6 = ((max__d0__d2__d0 (length__d0__d2__d0 (string_of_int _lh_numericRule_LH_P2_0_4_1))) (length__d1__d2__d0 (string_of_int _lh_numericRule_LH_P2_1_1_3))) in
                    (let rec _lh_listcomp_fun_1_0_1 = (fun _lh_listcomp_fun_para_4_8 -> 
                      (((_lh_listcomp_fun_para_4_8 _lh_listcomp_fun_1_0_1) _lh_numericRule_LH_C_1_3_5) width_2_6)) in
                      (_lh_listcomp_fun_1_0_1 (if (_lh_numericRule_LH_P2_0_4_1 < _lh_numericRule_LH_P2_1_1_3) then
                        ((enumFromTo__d2__d3__d0 _lh_numericRule_LH_P2_0_4_1) _lh_numericRule_LH_P2_1_1_3)
                      else
                        (((enumFromThenTo__d0__d3__d0 _lh_numericRule_LH_P2_0_4_1) (_lh_numericRule_LH_P2_0_4_1 - 1)) _lh_numericRule_LH_P2_1_1_3)))))))) in
              (_lh_matchIdent_2_2 _lh_numericRule_LH_C_1_3_4)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d2__d1 _lh_span_arg1_1_2 _lh_span_arg2_1_2 =
  (match _lh_span_arg2_1_2 with
    | `LH_N -> 
      (`LH_P2((fun f_5_8 i_5_8 -> 
        i_5_8), (fun _lh_numericRule_LH_P2_0_5_6 _lh_numericRule_LH_P2_0_5_7 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1_2, _lh_span_LH_C_1_1_2) -> 
      (if (_lh_span_arg1_1_2 _lh_span_LH_C_0_1_2) then
        (let rec _lh_matchIdent_3_0 = ((span__d1__d2__d1 _lh_span_arg1_1_2) _lh_span_LH_C_1_1_2) in
          (match _lh_matchIdent_3_0 with
            | `LH_P2(_lh_span_LH_P2_0_1_2, _lh_span_LH_P2_1_1_2) -> 
              (`LH_P2((let rec t_7_1 = _lh_span_LH_P2_0_1_2 in
                (let rec h_6_5 = _lh_span_LH_C_0_1_2 in
                  (fun f_5_9 i_5_9 -> 
                    (((foldl__d1__d2__d2 f_5_9) ((f_5_9 i_5_9) h_6_5)) t_7_1)))), _lh_span_LH_P2_1_1_2))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_6_0 i_6_0 -> 
          i_6_0), (let rec _lh_numericRule_LH_C_1_4_3 = _lh_span_LH_C_1_1_2 in
          (fun _lh_numericRule_LH_P2_0_5_8 _lh_numericRule_LH_P2_0_5_9 -> 
            (let rec _lh_matchIdent_3_1 = (let rec _lh_numericRule_LH_P2_1_1_8 = (mknum__d1__d2__d1 _lh_numericRule_LH_P2_0_5_9) in
              (let rec _lh_numericRule_LH_P2_0_6_0 = (mknum__d0__d2__d1 _lh_numericRule_LH_P2_0_5_8) in
                (fun _lh_numericRule_LH_C_1_4_4 -> 
                  (let rec width_3_1 = ((max__d0__d2__d1 (length__d0__d2__d1 (string_of_int _lh_numericRule_LH_P2_0_6_0))) (length__d1__d2__d1 (string_of_int _lh_numericRule_LH_P2_1_1_8))) in
                    (let rec _lh_listcomp_fun_1_1_6 = (fun _lh_listcomp_fun_para_5_7 -> 
                      (((_lh_listcomp_fun_para_5_7 _lh_listcomp_fun_1_1_6) _lh_numericRule_LH_C_1_4_4) width_3_1)) in
                      (_lh_listcomp_fun_1_1_6 (if (_lh_numericRule_LH_P2_0_6_0 < _lh_numericRule_LH_P2_1_1_8) then
                        ((enumFromTo__d2__d3__d1 _lh_numericRule_LH_P2_0_6_0) _lh_numericRule_LH_P2_1_1_8)
                      else
                        (((enumFromThenTo__d0__d3__d1 _lh_numericRule_LH_P2_0_6_0) (_lh_numericRule_LH_P2_0_6_0 - 1)) _lh_numericRule_LH_P2_1_1_8)))))))) in
              (_lh_matchIdent_3_1 _lh_numericRule_LH_C_1_4_3)))))))
    | _ -> 
      (failwith "error"))
and span__d1__d3__d0 _lh_span_arg1_9 _lh_span_arg2_9 =
  (match _lh_span_arg2_9 with
    | `LH_N -> 
      (`LH_P2((fun f_4_2 i_4_2 -> 
        i_4_2), (fun _lh_numericRule_LH_P2_0_4_2 _lh_numericRule_LH_P2_0_4_3 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_9, _lh_span_LH_C_1_9) -> 
      (if (_lh_span_arg1_9 _lh_span_LH_C_0_9) then
        (let rec _lh_matchIdent_2_3 = ((span__d1__d3__d0 _lh_span_arg1_9) _lh_span_LH_C_1_9) in
          (match _lh_matchIdent_2_3 with
            | `LH_P2(_lh_span_LH_P2_0_9, _lh_span_LH_P2_1_9) -> 
              (`LH_P2((let rec t_5_8 = _lh_span_LH_P2_0_9 in
                (let rec h_5_2 = _lh_span_LH_C_0_9 in
                  (fun f_4_3 i_4_3 -> 
                    (((foldl__d1__d3__d0 f_4_3) ((f_4_3 i_4_3) h_5_2)) t_5_8)))), _lh_span_LH_P2_1_9))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_4_4 i_4_4 -> 
          i_4_4), (let rec _lh_numericRule_LH_C_1_3_8 = _lh_span_LH_C_1_9 in
          (fun _lh_numericRule_LH_P2_0_4_4 _lh_numericRule_LH_P2_0_4_5 -> 
            (let rec _lh_matchIdent_2_4 = (let rec _lh_numericRule_LH_P2_1_1_4 = (mknum__d1__d3__d0 _lh_numericRule_LH_P2_0_4_4) in
              (let rec _lh_numericRule_LH_P2_0_4_6 = (mknum__d0__d3__d0 _lh_numericRule_LH_P2_0_4_5) in
                (fun _lh_numericRule_LH_C_1_3_9 -> 
                  (let rec width_2_9 = ((max__d0__d3__d0 (length__d0__d3__d0 (string_of_int _lh_numericRule_LH_P2_0_4_6))) (length__d1__d3__d0 (string_of_int _lh_numericRule_LH_P2_1_1_4))) in
                    (let rec _lh_listcomp_fun_1_0_5 = (fun _lh_listcomp_fun_para_5_0 -> 
                      (((_lh_listcomp_fun_para_5_0 _lh_listcomp_fun_1_0_5) _lh_numericRule_LH_C_1_3_9) width_2_9)) in
                      (_lh_listcomp_fun_1_0_5 (if (_lh_numericRule_LH_P2_0_4_6 < _lh_numericRule_LH_P2_1_1_4) then
                        ((enumFromTo__d2__d2__d0 _lh_numericRule_LH_P2_0_4_6) _lh_numericRule_LH_P2_1_1_4)
                      else
                        (((enumFromThenTo__d0__d2__d0 _lh_numericRule_LH_P2_0_4_6) (_lh_numericRule_LH_P2_0_4_6 - 1)) _lh_numericRule_LH_P2_1_1_4)))))))) in
              (_lh_matchIdent_2_4 _lh_numericRule_LH_C_1_3_8)))))))
    | _ -> 
      (failwith "error"))
and testGenRegexs_nofib__d0__d0__d0 _lh_testGenRegexs_nofib_arg1_1 =
  (concat__d0__d0__d0 (expand__d0__d0__d0 _lh_testGenRegexs_nofib_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_GenRegexs_nofib" (fun () -> ignore ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_GenRegexs_nofib" (fun () -> ignore ((testGenRegexs_nofib__d0__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_GenRegexs_nofib" (fun () -> ignore ((testGenRegexs_nofib__d0__d0__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N))))))))))))))))))))))))))))))))))))))))))));
])
