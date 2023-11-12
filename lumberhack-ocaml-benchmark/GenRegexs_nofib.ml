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
module Module_original = struct
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
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec foldl__d0 f_3 i_3 ls_0 =
  ((ls_0 f_3) i_3);;
let rec foldl__d1 f_7 i_7 ls_6 =
  ((ls_6 f_7) i_7);;
let rec length__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      (1 + (length__d0 t_4))
    | `LH_N -> 
      0);;
let rec length__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length__d1 t_3))
    | `LH_N -> 
      0);;
let rec length__d2 ls_5 =
  (match ls_5 with
    | `LH_C(h_7, t_8) -> 
      (1 + (length__d2 t_8))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_1 ys_4 =
  (xs_1 ys_4);;
let rec mappend__d2 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec max__d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec reverse_helper__d0 ls_2 a_3 =
  (ls_2 a_3);;
let rec alphabeticRule__d0 _lh_alphabeticRule_arg1_0 =
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
                            (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                              ((_lh_listcomp_fun_para_0 _lh_alphabeticRule_LH_C_1_3) _lh_listcomp_fun_0)) in
                              (_lh_listcomp_fun_0 ((enumFromTo__d0 (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                              ((_lh_listcomp_fun_para_1 _lh_alphabeticRule_LH_C_1_3) _lh_listcomp_fun_1)) in
                              (_lh_listcomp_fun_1 (reverse__d0 ((enumFromTo__d1 (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
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
and concat__d0 lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_9) -> 
      ((mappend__d0 h_8) (concat__d0 t_9))
    | `LH_N -> 
      (`LH_N))
and constantRule__d0 _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
            (`LH_C((let rec t_5 = _lh_listcomp_fun_ls_h_4 in
              (let rec h_5 = _lh_constantRule_LH_C_0_0 in
                (fun ys_3 -> 
                  (`LH_C(h_5, ((mappend__d0 t_5) ys_3)))))), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8 (expand__d0 _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and enumFromThenTo__d0 a_5 t_6 b_2 =
  (if (a_5 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_5 = (((enumFromThenTo__d0 t_6) ((2 * t_6) - a_5)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_5 in
        (fun _lh_listcomp_fun_9 _lh_numericRule_LH_C_1_3 width_2 -> 
          (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_5 -> 
            (match _lh_listcomp_fun_para_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                (`LH_C(((mappend__d1 ((pad__d0 (string_of_int _lh_listcomp_fun_ls_h_5)) width_2)) _lh_listcomp_fun_ls_h_6), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_6)))
              | `LH_N -> 
                (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_5))) in
            (_lh_listcomp_fun_1_0 (expand__d0 _lh_numericRule_LH_C_1_3))))))
  else
    (fun _lh_listcomp_fun_1_1 _lh_numericRule_LH_C_1_4 width_3 -> 
      (`LH_N)))
and enumFromTo__d0 a_6 b_3 =
  (if (a_6 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo__d0 (a_6 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_6 in
        (fun _lh_alphabeticRule_LH_C_1_6 _lh_listcomp_fun_1_3 -> 
          (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
            (match _lh_listcomp_fun_para_7 with
              | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                (`LH_C((let rec t_1_2 = _lh_listcomp_fun_ls_h_8 in
                  (let rec h_1_1 = (char_of_int _lh_listcomp_fun_ls_h_7) in
                    (fun ys_7 -> 
                      (`LH_C(h_1_1, ((mappend__d0 t_1_2) ys_7)))))), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_8)))
              | `LH_N -> 
                (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_7))) in
            (_lh_listcomp_fun_1_4 (expand__d0 _lh_alphabeticRule_LH_C_1_6))))))
  else
    (fun _lh_alphabeticRule_LH_C_1_7 _lh_listcomp_fun_1_5 -> 
      (`LH_N)))
and enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_1 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec h_1 = a_0 in
        (fun a_1 -> 
          ((reverse_helper__d0 t_1) (let rec _lh_listcomp_fun_ls_t_0 = a_1 in
            (let rec _lh_listcomp_fun_ls_h_0 = h_1 in
              (fun _lh_alphabeticRule_LH_C_1_4 _lh_listcomp_fun_2 -> 
                (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_2 -> 
                  (match _lh_listcomp_fun_para_2 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                      (`LH_C((let rec t_2 = _lh_listcomp_fun_ls_h_1 in
                        (let rec h_2 = (char_of_int _lh_listcomp_fun_ls_h_0) in
                          (fun ys_1 -> 
                            (`LH_C(h_2, ((mappend__d0 t_2) ys_1)))))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1)))
                    | `LH_N -> 
                      (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0))) in
                  (_lh_listcomp_fun_3 (expand__d0 _lh_alphabeticRule_LH_C_1_4))))))))))
  else
    (fun a_2 -> 
      a_2))
and enumFromTo__d2 a_4 b_1 =
  (if (a_4 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo__d2 (a_4 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_4 in
        (fun _lh_listcomp_fun_5 _lh_numericRule_LH_C_1_1 width_0 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_3 -> 
            (match _lh_listcomp_fun_para_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                (`LH_C(((mappend__d1 ((pad__d0 (string_of_int _lh_listcomp_fun_ls_h_2)) width_0)) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3)))
              | `LH_N -> 
                (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_2))) in
            (_lh_listcomp_fun_6 (expand__d0 _lh_numericRule_LH_C_1_1))))))
  else
    (fun _lh_listcomp_fun_7 _lh_numericRule_LH_C_1_2 width_1 -> 
      (`LH_N)))
and enumFromTo__d3 a_7 b_4 =
  (if (a_7 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo__d3 (a_7 + 1)) b_4) in
      (fun _lh_listcomp_fun_1_7 -> 
        (let rec t_1_3 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_9) in
          (let rec h_1_2 = '0' in
            (fun ys_8 -> 
              (`LH_C(h_1_2, ((mappend__d2 t_1_3) ys_8))))))))
  else
    (fun _lh_listcomp_fun_1_8 ys_9 -> 
      ys_9))
and expand__d0 _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((fun ys_0 -> 
        ys_0), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule__d0 _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule__d0 _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule__d0 _lh_expand_arg1_0))
    | _ -> 
      (constantRule__d0 _lh_expand_arg1_0))
and mappend__d1 xs_2 ys_5 =
  (match xs_2 with
    | `LH_C(h_9, t_1_0) -> 
      (let rec t_1_1 = ((mappend__d1 t_1_0) ys_5) in
        (let rec h_1_0 = h_9 in
          (fun ys_6 -> 
            (`LH_C(h_1_0, ((mappend__d0 t_1_1) ys_6))))))
    | `LH_N -> 
      ys_5)
and mknum__d0 _lh_mknum_arg1_0 =
  (((foldl__d0 (fun u_0 c_2 -> 
    ((u_0 * 10) + ((int_of_char c_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0)
and mknum__d1 _lh_mknum_arg1_1 =
  (((foldl__d1 (fun u_1 c_3 -> 
    ((u_1 * 10) + ((int_of_char c_3) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1)
and numericRule__d0 _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_2 = ((span__d0 (fun c_1 -> 
    (c_1 <> '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_2 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3, _lh_numericRule_LH_P2_1_1) -> 
        (_lh_numericRule_LH_P2_1_1 _lh_numericRule_LH_P2_0_3)
      | _ -> 
        (failwith "error")))
and pad__d0 _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend__d2 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_8 -> 
    (_lh_listcomp_fun_para_8 _lh_listcomp_fun_1_6)) in
    (_lh_listcomp_fun_1_6 ((enumFromTo__d3 1) (_lh_pad_arg2_0 - (length__d2 _lh_pad_arg1_0)))))) _lh_pad_arg1_0)
and reverse__d0 ls_1 =
  ((reverse_helper__d0 ls_1) (fun _lh_alphabeticRule_LH_C_1_5 _lh_listcomp_fun_4 -> 
    (`LH_N)))
and span__d0 _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun f_0 i_0 -> 
        i_0), (fun _lh_numericRule_LH_P2_0_0 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_0 = ((span__d0 _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((let rec t_0 = _lh_span_LH_P2_0_0 in
                (let rec h_0 = _lh_span_LH_C_0_0 in
                  (fun f_1 i_1 -> 
                    (((foldl__d0 f_1) ((f_1 i_1) h_0)) t_0)))), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_2 i_2 -> 
          i_2), (let rec _lh_numericRule_LH_C_1_0 = _lh_span_LH_C_1_0 in
          (fun _lh_numericRule_LH_P2_0_1 -> 
            (let rec _lh_matchIdent_1 = ((span__d1 (fun c_0 -> 
              (c_0 <> '>'))) _lh_numericRule_LH_C_1_0) in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_numericRule_LH_P2_0_2, _lh_numericRule_LH_P2_1_0) -> 
                  ((_lh_numericRule_LH_P2_1_0 _lh_numericRule_LH_P2_0_1) _lh_numericRule_LH_P2_0_2)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d1 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun f_4 i_4 -> 
        i_4), (fun _lh_numericRule_LH_P2_0_4 _lh_numericRule_LH_P2_0_5 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_3 = ((span__d1 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((let rec t_7 = _lh_span_LH_P2_0_1 in
                (let rec h_6 = _lh_span_LH_C_0_1 in
                  (fun f_5 i_5 -> 
                    (((foldl__d1 f_5) ((f_5 i_5) h_6)) t_7)))), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_6 i_6 -> 
          i_6), (let rec _lh_numericRule_LH_C_1_5 = _lh_span_LH_C_1_1 in
          (fun _lh_numericRule_LH_P2_0_6 _lh_numericRule_LH_P2_0_7 -> 
            (let rec _lh_matchIdent_4 = (let rec _lh_numericRule_LH_P2_1_2 = (mknum__d1 _lh_numericRule_LH_P2_0_7) in
              (let rec _lh_numericRule_LH_P2_0_8 = (mknum__d0 _lh_numericRule_LH_P2_0_6) in
                (fun _lh_numericRule_LH_C_1_6 -> 
                  (let rec width_4 = ((max__d0 (length__d0 (string_of_int _lh_numericRule_LH_P2_0_8))) (length__d1 (string_of_int _lh_numericRule_LH_P2_1_2))) in
                    (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_6 -> 
                      (((_lh_listcomp_fun_para_6 _lh_listcomp_fun_1_2) _lh_numericRule_LH_C_1_6) width_4)) in
                      (_lh_listcomp_fun_1_2 (if (_lh_numericRule_LH_P2_0_8 < _lh_numericRule_LH_P2_1_2) then
                        ((enumFromTo__d2 _lh_numericRule_LH_P2_0_8) _lh_numericRule_LH_P2_1_2)
                      else
                        (((enumFromThenTo__d0 _lh_numericRule_LH_P2_0_8) (_lh_numericRule_LH_P2_0_8 - 1)) _lh_numericRule_LH_P2_1_2)))))))) in
              (_lh_matchIdent_4 _lh_numericRule_LH_C_1_5)))))))
    | _ -> 
      (failwith "error"))
and testGenRegexs_nofib__d0 _lh_testGenRegexs_nofib_arg1_0 =
  (concat__d0 (expand__d0 _lh_testGenRegexs_nofib_arg1_0));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec foldl__d0 f_3 i_3 ls_0 =
  ((ls_0 f_3) i_3);;
let rec foldl__d1 f_7 i_7 ls_6 =
  ((ls_6 f_7) i_7);;
let rec length__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      (1 + (length__d0 t_4))
    | `LH_N -> 
      0);;
let rec length__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length__d1 t_3))
    | `LH_N -> 
      0);;
let rec length__d2 ls_5 =
  (match ls_5 with
    | `LH_C(h_7, t_8) -> 
      (1 + (length__d2 t_8))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_1 ys_4 =
  (xs_1 ys_4);;
let rec mappend__d2 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec max__d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec reverse_helper__d0 ls_2 a_3 =
  (ls_2 a_3);;
let rec alphabeticRule__d0 _lh_alphabeticRule_arg1_0 =
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
                            (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                              ((_lh_listcomp_fun_para_0 _lh_alphabeticRule_LH_C_1_3) _lh_listcomp_fun_0)) in
                              (_lh_listcomp_fun_0 ((enumFromTo__d0 (int_of_char _lh_alphabeticRule_LH_C_0_0)) (int_of_char _lh_alphabeticRule_LH_C_0_2))))
                          else
                            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                              ((_lh_listcomp_fun_para_1 _lh_alphabeticRule_LH_C_1_3) _lh_listcomp_fun_1)) in
                              (_lh_listcomp_fun_1 (reverse__d0 ((enumFromTo__d1 (int_of_char _lh_alphabeticRule_LH_C_0_2)) (int_of_char _lh_alphabeticRule_LH_C_0_0))))))
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
and concat__d0 lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_9) -> 
      ((mappend__d0 h_8) (concat__d0 t_9))
    | `LH_N -> 
      (`LH_N))
and constantRule__d0 _lh_constantRule_arg1_0 =
  (match _lh_constantRule_arg1_0 with
    | `LH_C(_lh_constantRule_LH_C_0_0, _lh_constantRule_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
            (`LH_C((let rec t_5 = _lh_listcomp_fun_ls_h_4 in
              (let rec h_5 = _lh_constantRule_LH_C_0_0 in
                (fun ys_3 -> 
                  (`LH_C(h_5, ((mappend__d0 t_5) ys_3)))))), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8 (expand__d0 _lh_constantRule_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and enumFromThenTo__d0 a_5 t_6 b_2 _lh_popOutId_0_2 _lh_popOutId_1_1 _lh_popOutId_2_1 =
  (if (a_5 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_5 = (((enumFromThenTo__d0 t_6) ((2 * t_6) - a_5)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_5 in
        (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_5 -> 
          (match _lh_listcomp_fun_para_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
              (`LH_C(((mappend__d1 ((pad__d0 (string_of_int _lh_listcomp_fun_ls_h_5)) _lh_popOutId_2_1)) _lh_listcomp_fun_ls_h_6), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_6)))
            | `LH_N -> 
              (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_5))) in
          (_lh_listcomp_fun_1_0 (expand__d0 _lh_popOutId_1_1)))))
  else
    (`LH_N))
and enumFromTo__d0 a_6 b_3 _lh_popOutId_0_3 _lh_popOutId_1_2 =
  (if (a_6 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo__d0 (a_6 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_6 in
        (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
          (match _lh_listcomp_fun_para_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
              (`LH_C((let rec t_1_2 = _lh_listcomp_fun_ls_h_8 in
                (let rec h_1_1 = (char_of_int _lh_listcomp_fun_ls_h_7) in
                  (fun ys_7 -> 
                    (`LH_C(h_1_1, ((mappend__d0 t_1_2) ys_7)))))), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_8)))
            | `LH_N -> 
              (_lh_popOutId_1_2 _lh_listcomp_fun_ls_t_7))) in
          (_lh_listcomp_fun_1_4 (expand__d0 _lh_popOutId_0_3)))))
  else
    (`LH_N))
and enumFromTo__d1 a_0 b_0 _lh_popOutId_0_0 =
  (if (a_0 <= b_0) then
    (let rec t_1 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec h_1 = a_0 in
        ((reverse_helper__d0 t_1) (let rec _lh_listcomp_fun_ls_t_0 = _lh_popOutId_0_0 in
          (let rec _lh_listcomp_fun_ls_h_0 = h_1 in
            (fun _lh_alphabeticRule_LH_C_1_4 _lh_listcomp_fun_2 -> 
              (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_2 -> 
                (match _lh_listcomp_fun_para_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                    (`LH_C((let rec t_2 = _lh_listcomp_fun_ls_h_1 in
                      (let rec h_2 = (char_of_int _lh_listcomp_fun_ls_h_0) in
                        (fun ys_1 -> 
                          (`LH_C(h_2, ((mappend__d0 t_2) ys_1)))))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0))) in
                (_lh_listcomp_fun_3 (expand__d0 _lh_alphabeticRule_LH_C_1_4)))))))))
  else
    _lh_popOutId_0_0)
and enumFromTo__d2 a_4 b_1 _lh_popOutId_0_1 _lh_popOutId_1_0 _lh_popOutId_2_0 =
  (if (a_4 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo__d2 (a_4 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_4 in
        (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C(((mappend__d1 ((pad__d0 (string_of_int _lh_listcomp_fun_ls_h_2)) _lh_popOutId_2_0)) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_2))) in
          (_lh_listcomp_fun_6 (expand__d0 _lh_popOutId_1_0)))))
  else
    (`LH_N))
and enumFromTo__d3 a_7 b_4 _lh_popOutId_0_4 _lh_popOutId_1_3 =
  (if (a_7 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo__d3 (a_7 + 1)) b_4) in
      (let rec t_1_3 = (_lh_popOutId_0_4 _lh_listcomp_fun_ls_t_9) in
        (let rec h_1_2 = '0' in
          (`LH_C(h_1_2, ((mappend__d2 t_1_3) _lh_popOutId_1_3))))))
  else
    _lh_popOutId_1_3)
and expand__d0 _lh_expand_arg1_0 =
  (match _lh_expand_arg1_0 with
    | `LH_N -> 
      (`LH_C((fun ys_0 -> 
        ys_0), (`LH_N)))
    | `LH_C(_lh_expand_LH_C_0_0, _lh_expand_LH_C_1_0) -> 
      (match _lh_expand_LH_C_0_0 with
        | '<' -> 
          (numericRule__d0 _lh_expand_LH_C_1_0)
        | '[' -> 
          (alphabeticRule__d0 _lh_expand_LH_C_1_0)
        | _ -> 
          (constantRule__d0 _lh_expand_arg1_0))
    | _ -> 
      (constantRule__d0 _lh_expand_arg1_0))
and mappend__d1 xs_2 ys_5 =
  (match xs_2 with
    | `LH_C(h_9, t_1_0) -> 
      (let rec t_1_1 = ((mappend__d1 t_1_0) ys_5) in
        (let rec h_1_0 = h_9 in
          (fun ys_6 -> 
            (`LH_C(h_1_0, ((mappend__d0 t_1_1) ys_6))))))
    | `LH_N -> 
      ys_5)
and mknum__d0 _lh_mknum_arg1_0 =
  (((foldl__d0 (fun u_0 c_2 -> 
    ((u_0 * 10) + ((int_of_char c_2) - (int_of_char '0'))))) 0) _lh_mknum_arg1_0)
and mknum__d1 _lh_mknum_arg1_1 =
  (((foldl__d1 (fun u_1 c_3 -> 
    ((u_1 * 10) + ((int_of_char c_3) - (int_of_char '0'))))) 0) _lh_mknum_arg1_1)
and numericRule__d0 _lh_numericRule_arg1_0 =
  (let rec _lh_matchIdent_2 = ((span__d0 (fun c_1 -> 
    (c_1 <> '-'))) _lh_numericRule_arg1_0) in
    (match _lh_matchIdent_2 with
      | `LH_P2(_lh_numericRule_LH_P2_0_3, _lh_numericRule_LH_P2_1_1) -> 
        (_lh_numericRule_LH_P2_1_1 _lh_numericRule_LH_P2_0_3)
      | _ -> 
        (failwith "error")))
and pad__d0 _lh_pad_arg1_0 _lh_pad_arg2_0 =
  ((mappend__d2 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_8 -> 
    (_lh_listcomp_fun_para_8 _lh_listcomp_fun_1_6)) in
    (_lh_listcomp_fun_1_6 ((enumFromTo__d3 1) (_lh_pad_arg2_0 - (length__d2 _lh_pad_arg1_0)))))) _lh_pad_arg1_0)
and reverse__d0 ls_1 =
  ((reverse_helper__d0 ls_1) (fun _lh_alphabeticRule_LH_C_1_5 _lh_listcomp_fun_4 -> 
    (`LH_N)))
and span__d0 _lh_span_arg1_0 _lh_span_arg2_0 =
  (match _lh_span_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun f_0 i_0 -> 
        i_0), (fun _lh_numericRule_LH_P2_0_0 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_0, _lh_span_LH_C_1_0) -> 
      (if (_lh_span_arg1_0 _lh_span_LH_C_0_0) then
        (let rec _lh_matchIdent_0 = ((span__d0 _lh_span_arg1_0) _lh_span_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_span_LH_P2_0_0, _lh_span_LH_P2_1_0) -> 
              (`LH_P2((let rec t_0 = _lh_span_LH_P2_0_0 in
                (let rec h_0 = _lh_span_LH_C_0_0 in
                  (fun f_1 i_1 -> 
                    (((foldl__d0 f_1) ((f_1 i_1) h_0)) t_0)))), _lh_span_LH_P2_1_0))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_2 i_2 -> 
          i_2), (let rec _lh_numericRule_LH_C_1_0 = _lh_span_LH_C_1_0 in
          (fun _lh_numericRule_LH_P2_0_1 -> 
            (let rec _lh_matchIdent_1 = ((span__d1 (fun c_0 -> 
              (c_0 <> '>'))) _lh_numericRule_LH_C_1_0) in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_numericRule_LH_P2_0_2, _lh_numericRule_LH_P2_1_0) -> 
                  ((_lh_numericRule_LH_P2_1_0 _lh_numericRule_LH_P2_0_1) _lh_numericRule_LH_P2_0_2)
                | _ -> 
                  (failwith "error"))))))))
    | _ -> 
      (failwith "error"))
and span__d1 _lh_span_arg1_1 _lh_span_arg2_1 =
  (match _lh_span_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun f_4 i_4 -> 
        i_4), (fun _lh_numericRule_LH_P2_0_4 _lh_numericRule_LH_P2_0_5 -> 
        (failwith "error"))))
    | `LH_C(_lh_span_LH_C_0_1, _lh_span_LH_C_1_1) -> 
      (if (_lh_span_arg1_1 _lh_span_LH_C_0_1) then
        (let rec _lh_matchIdent_3 = ((span__d1 _lh_span_arg1_1) _lh_span_LH_C_1_1) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_span_LH_P2_0_1, _lh_span_LH_P2_1_1) -> 
              (`LH_P2((let rec t_7 = _lh_span_LH_P2_0_1 in
                (let rec h_6 = _lh_span_LH_C_0_1 in
                  (fun f_5 i_5 -> 
                    (((foldl__d1 f_5) ((f_5 i_5) h_6)) t_7)))), _lh_span_LH_P2_1_1))
            | _ -> 
              (failwith "error")))
      else
        (`LH_P2((fun f_6 i_6 -> 
          i_6), (let rec _lh_numericRule_LH_C_1_5 = _lh_span_LH_C_1_1 in
          (fun _lh_numericRule_LH_P2_0_6 _lh_numericRule_LH_P2_0_7 -> 
            (let rec _lh_matchIdent_4 = (let rec _lh_numericRule_LH_P2_1_2 = (mknum__d1 _lh_numericRule_LH_P2_0_7) in
              (let rec _lh_numericRule_LH_P2_0_8 = (mknum__d0 _lh_numericRule_LH_P2_0_6) in
                (fun _lh_numericRule_LH_C_1_6 -> 
                  (let rec width_4 = ((max__d0 (length__d0 (string_of_int _lh_numericRule_LH_P2_0_8))) (length__d1 (string_of_int _lh_numericRule_LH_P2_1_2))) in
                    (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_6 -> 
                      (((_lh_listcomp_fun_para_6 _lh_listcomp_fun_1_2) _lh_numericRule_LH_C_1_6) width_4)) in
                      (_lh_listcomp_fun_1_2 (if (_lh_numericRule_LH_P2_0_8 < _lh_numericRule_LH_P2_1_2) then
                        ((enumFromTo__d2 _lh_numericRule_LH_P2_0_8) _lh_numericRule_LH_P2_1_2)
                      else
                        (((enumFromThenTo__d0 _lh_numericRule_LH_P2_0_8) (_lh_numericRule_LH_P2_0_8 - 1)) _lh_numericRule_LH_P2_1_2)))))))) in
              (_lh_matchIdent_4 _lh_numericRule_LH_C_1_5)))))))
    | _ -> 
      (failwith "error"))
and testGenRegexs_nofib__d0 _lh_testGenRegexs_nofib_arg1_0 =
  (concat__d0 (expand__d0 _lh_testGenRegexs_nofib_arg1_0));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_GenRegexs_nofib" (fun () -> ignore (let open Module_original in ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N)))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_GenRegexs_nofib" (fun () -> ignore (let open Module_lumberhack in ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N)))))))))))))))))))))))))))))))))))))))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_GenRegexs_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testGenRegexs_nofib__d0 (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('a', (`LH_C('-', (`LH_C('j', (`LH_C(']', (`LH_C('[', (`LH_C('0', (`LH_C('-', (`LH_C('9', (`LH_C(']', (`LH_N)))))))))))))))))))))))))))))))))))))))))))));
])
