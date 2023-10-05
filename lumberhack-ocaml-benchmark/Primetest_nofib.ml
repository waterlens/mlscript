(*
touch ./Primetest_nofib.mli && ocamlc ./Primetest_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Primetest_nofib.ml -o "./Primetest_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Primetest_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec break__d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_6 = ((break__d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec divmod__d0 _lh_divmod_arg1_2 _lh_divmod_arg2_2 =
  (`LH_P2((_lh_divmod_arg1_2 / _lh_divmod_arg2_2), (_lh_divmod_arg1_2 mod _lh_divmod_arg2_2)));;
let rec divmod__d1 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (`LH_P2((_lh_divmod_arg1_1 / _lh_divmod_arg2_1), (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1)));;
let rec drop_lz__d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (let rec _lh_matchIdent_2_1 = (Lazy.force _lh_drop_lz_arg2_1) in
    (match _lh_matchIdent_2_1 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
        (if (_lh_drop_lz_arg1_1 > 0) then
          ((drop_lz__d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1)
        else
          _lh_drop_lz_LH_C_1_1)
      | _ -> 
        (failwith "error")));;
let rec even__d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec even__d1 _lh_even_arg1_2 =
  ((_lh_even_arg1_2 mod 2) = 0);;
let rec foldl__d0 f_2_0 i_3 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_4, t_2_9) -> 
      (((foldl__d0 f_2_0) ((f_2_0 i_3) h_2_4)) t_2_9)
    | `LH_N -> 
      i_3);;
let rec int_val_of_char__d0 _lh_int_val_of_char_arg1_1 =
  ((int_of_char _lh_int_val_of_char_arg1_1) - 48);;
let rec iterate__d0 f_1_6 x_9 =
  (lazy (`LH_C(x_9, ((iterate__d0 f_1_6) (f_1_6 x_9)))));;
let rec length__d0 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_2, t_2_7) -> 
      (1 + (length__d0 t_2_7))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_9 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_2_8) -> 
      (`LH_C((f_1_9 h_2_3), ((map__d0 f_1_9) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec rands__d0 _lh_rands_arg1_1 _lh_rands_arg2_1 =
  (let rec k_2 = (_lh_rands_arg1_1 / 53668) in
    (let rec s1'_1 = ((40014 * (_lh_rands_arg1_1 - (k_2 * 53668))) - (k_2 * 12211)) in
      (let rec s1''_1 = (if (s1'_1 < 0) then
        (s1'_1 + 2147483563)
      else
        s1'_1) in
        (let rec k'_1 = (_lh_rands_arg2_1 / 52774) in
          (let rec s2'_1 = ((40692 * (_lh_rands_arg2_1 - (k'_1 * 52774))) - (k'_1 * 3791)) in
            (let rec s2''_1 = (if (s2'_1 < 0) then
              (s2'_1 + 2147483399)
            else
              s2'_1) in
              (let rec z_1 = (s1''_1 - s2''_1) in
                (if (z_1 < 1) then
                  (lazy (`LH_C((z_1 + 2147483562), ((rands__d0 s1''_1) s2''_1))))
                else
                  (lazy (`LH_C(z_1, ((rands__d0 s1''_1) s2''_1))))))))))));;
let rec take_lz__d0 n_7 ls_2_1 =
  (if (n_7 > 0) then
    (match (Lazy.force ls_2_1) with
      | `LH_C(h_2_1, t_2_6) -> 
        (`LH_C(h_2_1, ((take_lz__d0 (n_7 - 1)) t_2_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz__d1 n_6 ls_2_0 =
  (if (n_6 > 0) then
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_0, t_2_5) -> 
        (`LH_C(h_2_0, ((take_lz__d1 (n_6 - 1)) t_2_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec chop__d0 _lh_chop_arg1_1 =
  (let rec chop'_1 = (fun a_9 n_9 -> 
    (let rec _lh_matchIdent_2_0 = ((divmod__d1 n_9) _lh_chop_arg1_1) in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_chop_LH_P2_0_1, _lh_chop_LH_P2_1_1) -> 
          (if (n_9 = 0) then
            a_9
          else
            ((chop'_1 (`LH_C(_lh_chop_LH_P2_1_1, a_9))) _lh_chop_LH_P2_0_1))
        | _ -> 
          (failwith "error")))) in
    (chop'_1 (`LH_N)))
and doInput__d0 _lh_doInput_arg1_1 _lh_doInput_arg2_1 =
  (match _lh_doInput_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_doInput_LH_C_0_1, _lh_doInput_LH_C_1_1) -> 
      (((doLine__d0 _lh_doInput_LH_C_0_1) (fun state_1 -> 
        ((doInput__d0 state_1) _lh_doInput_LH_C_1_1))) _lh_doInput_arg1_1)
    | _ -> 
      (failwith "error"))
and doLine__d0 _lh_doLine_arg1_1 _lh_doLine_arg2_1 _lh_doLine_arg3_1 =
  (let rec n_8 = (int_val_of_string__d0 _lh_doLine_arg1_1) in
    (let rec _lh_matchIdent_1_5 = (((multiTest__d0 100) _lh_doLine_arg3_1) n_8) in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_doLine_LH_P2_0_1, _lh_doLine_LH_P2_1_1) -> 
          (if _lh_doLine_LH_P2_0_1 then
            (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))
          else
            (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1))))
        | _ -> 
          (failwith "error"))))
and findKQ__d0 _lh_findKQ_arg1_1 =
  (let rec f_1_5 = (fun _lh_f_arg1_2 -> 
    (match _lh_f_arg1_2 with
      | `LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2) -> 
        (let rec _lh_matchIdent_1_9 = ((divmod__d0 _lh_f_LH_P2_1_2) 2) in
          (match _lh_matchIdent_1_9 with
            | `LH_P2(_lh_f_LH_P2_0_3, _lh_f_LH_P2_1_3) -> 
              (if (_lh_f_LH_P2_1_3 = 0) then
                (f_1_5 (`LH_P2((_lh_f_LH_P2_0_2 + 1), _lh_f_LH_P2_0_3)))
              else
                (`LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))) in
    (f_1_5 (`LH_P2(0, (_lh_findKQ_arg1_1 - 1)))))
and int_val_of_string__d0 _lh_int_val_of_string_arg1_1 =
  (let rec f_1_8 = (fun _lh_f_arg1_3 _lh_f_arg2_1 -> 
    (match _lh_f_arg1_3 with
      | `LH_N -> 
        _lh_f_arg2_1
      | `LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1) -> 
        ((f_1_8 _lh_f_LH_C_1_1) ((10 * _lh_f_arg2_1) + (int_val_of_char__d0 _lh_f_LH_C_0_1)))
      | _ -> 
        (failwith "error"))) in
    ((f_1_8 _lh_int_val_of_string_arg1_1) 0))
and lines__d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_7 = ((break__d0 (fun x_8 -> 
    (x_8 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_7 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_8 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_1_8 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines__d0 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and makeNumber__d0 _lh_makeNumber_arg1_1 =
  ((foldl__d0 (fun a_1_2 x_1_4 -> 
    ((a_1_2 * _lh_makeNumber_arg1_1) + x_1_4))) 0)
and multiTest__d0 _lh_multiTest_arg1_1 _lh_multiTest_arg2_1 _lh_multiTest_arg3_1 =
  (let rec mTest_1 = (fun k_3 rs_1 -> 
    (if (k_3 = 0) then
      (`LH_P2(true, rs_1))
    else
      (let rec _lh_matchIdent_1_4 = (((singleTest__d0 _lh_multiTest_arg3_1) (findKQ__d0 _lh_multiTest_arg3_1)) rs_1) in
        (match _lh_matchIdent_1_4 with
          | `LH_P2(_lh_multiTest_LH_P2_0_1, _lh_multiTest_LH_P2_1_1) -> 
            (if _lh_multiTest_LH_P2_0_1 then
              ((mTest_1 (k_3 - 1)) _lh_multiTest_LH_P2_1_1)
            else
              (`LH_P2(false, _lh_multiTest_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))) in
    (if ((_lh_multiTest_arg3_1 <= 1) || (even__d0 _lh_multiTest_arg3_1)) then
      (`LH_P2((_lh_multiTest_arg3_1 = 2), _lh_multiTest_arg2_1))
    else
      ((mTest_1 _lh_multiTest_arg1_1) _lh_multiTest_arg2_1)))
and powerMod__d0 _lh_powerMod_arg1_1 _lh_powerMod_arg2_1 _lh_powerMod_arg3_1 =
  (match _lh_powerMod_arg2_1 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_1 = (_lh_powerMod_arg1_1 mod _lh_powerMod_arg3_1) in
        (let rec f_1_7 = (fun a_1_0 b_4 c_1 -> 
          (let rec g_1 = (fun a_1_1 b_5 -> 
            (if (even__d1 b_5) then
              ((g_1 ((a_1_1 * a_1_1) mod _lh_powerMod_arg3_1)) (b_5 / 2))
            else
              (((f_1_7 a_1_1) (b_5 - 1)) ((a_1_1 * c_1) mod _lh_powerMod_arg3_1)))) in
            (if (b_4 = 0) then
              c_1
            else
              ((g_1 a_1_0) b_4)))) in
          (((f_1_7 a'_1) (_lh_powerMod_arg2_1 - 1)) a'_1))))
and process__d0 _lh_process_arg1_1 =
  ((doInput__d0 ((randomInts__d0 111) 47)) _lh_process_arg1_1)
and randomInts__d0 _lh_randomInts_arg1_1 _lh_randomInts_arg2_1 =
  (if ((1 <= _lh_randomInts_arg1_1) && (_lh_randomInts_arg1_1 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_1) && (_lh_randomInts_arg2_1 <= 2147483398)) then
      ((rands__d0 _lh_randomInts_arg1_1) _lh_randomInts_arg2_1)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and random__d0 _lh_random_arg1_1 _lh_random_arg2_1 =
  (let rec ns_1 = ((chop__d0 65536) _lh_random_arg1_1) in
    (let rec _lh_matchIdent_1_3 = ((splitAt_lz__d0 (length__d0 ns_1)) _lh_random_arg2_1) in
      (match _lh_matchIdent_1_3 with
        | `LH_P2(_lh_random_LH_P2_0_1, _lh_random_LH_P2_1_1) -> 
          (`LH_P2(((makeNumber__d0 65536) ((uniform__d0 ns_1) _lh_random_LH_P2_0_1)), _lh_random_LH_P2_1_1))
        | _ -> 
          (failwith "error"))))
and singleTestX__d0 _lh_singleTestX_arg1_1 _lh_singleTestX_arg2_1 _lh_singleTestX_arg3_1 =
  (match _lh_singleTestX_arg2_1 with
    | `LH_P2(_lh_singleTestX_LH_P2_0_1, _lh_singleTestX_LH_P2_1_1) -> 
      (let rec square_1 = (fun x_1_0 -> 
        ((x_1_0 * x_1_0) mod _lh_singleTestX_arg1_1)) in
        (let rec witness_1 = (fun ls_2_3 -> 
          (let rec _lh_matchIdent_2_2 = ls_2_3 in
            (match _lh_matchIdent_2_2 with
              | `LH_N -> 
                false
              | `LH_C(_lh_singleTestX_LH_C_0_2, _lh_singleTestX_LH_C_1_2) -> 
                (if (_lh_singleTestX_LH_C_0_2 = (_lh_singleTestX_arg1_1 - 1)) then
                  true
                else
                  (if (_lh_singleTestX_LH_C_0_2 = 1) then
                    false
                  else
                    (witness_1 _lh_singleTestX_LH_C_1_2)))
              | _ -> 
                (failwith "error")))) in
          (let rec _lh_matchIdent_2_3 = ((take_lz__d1 _lh_singleTestX_LH_P2_0_1) ((iterate__d0 square_1) (((powerMod__d0 _lh_singleTestX_arg3_1) _lh_singleTestX_LH_P2_1_1) _lh_singleTestX_arg1_1))) in
            (match _lh_matchIdent_2_3 with
              | `LH_C(_lh_singleTestX_LH_C_0_3, _lh_singleTestX_LH_C_1_3) -> 
                (((_lh_singleTestX_LH_C_0_3 = 1) || (_lh_singleTestX_LH_C_0_3 = (_lh_singleTestX_arg1_1 - 1))) || (witness_1 _lh_singleTestX_LH_C_1_3))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and singleTest__d0 _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 _lh_singleTest_arg3_1 =
  (let rec _lh_matchIdent_1_2 = ((random__d0 (_lh_singleTest_arg1_1 - 2)) _lh_singleTest_arg3_1) in
    (match _lh_matchIdent_1_2 with
      | `LH_P2(_lh_singleTest_LH_P2_0_1, _lh_singleTest_LH_P2_1_1) -> 
        (`LH_P2((((singleTestX__d0 _lh_singleTest_arg1_1) _lh_singleTest_arg2_1) (2 + _lh_singleTest_LH_P2_0_1)), _lh_singleTest_LH_P2_1_1))
      | _ -> 
        (failwith "error")))
and splitAt_lz__d0 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 =
  (`LH_P2(((take_lz__d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1), ((drop_lz__d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1)))
and testPrimetest_nofib__d0 _lh_testPrimetest_nofib_arg1_1 =
  (let rec cts_1 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process__d0 (lines__d0 cts_1)))
and uniform__d0 _lh_uniform_arg1_1 _lh_uniform_arg2_1 =
  (match _lh_uniform_arg1_1 with
    | `LH_C(_lh_uniform_LH_C_0_5, _lh_uniform_LH_C_1_5) -> 
      (match _lh_uniform_LH_C_1_5 with
        | `LH_N -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_6, _lh_uniform_LH_C_1_6) -> 
              (match _lh_uniform_LH_C_1_6 with
                | `LH_N -> 
                  (`LH_C((_lh_uniform_LH_C_0_6 mod _lh_uniform_LH_C_0_5), (`LH_N)))
                | _ -> 
                  (match _lh_uniform_arg2_1 with
                    | `LH_C(_lh_uniform_LH_C_0_7, _lh_uniform_LH_C_1_7) -> 
                      (let rec t_3_0 = (_lh_uniform_LH_C_0_7 mod (_lh_uniform_LH_C_0_5 + 1)) in
                        (if (t_3_0 = _lh_uniform_LH_C_0_5) then
                          (`LH_C(t_3_0, ((uniform__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_7)))
                        else
                          (`LH_C(t_3_0, ((map__d0 (fun x_1_1 -> 
                            (x_1_1 mod 65536))) _lh_uniform_LH_C_1_7)))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_1 with
                | `LH_C(_lh_uniform_LH_C_0_8, _lh_uniform_LH_C_1_8) -> 
                  (let rec t_3_1 = (_lh_uniform_LH_C_0_8 mod (_lh_uniform_LH_C_0_5 + 1)) in
                    (if (t_3_1 = _lh_uniform_LH_C_0_5) then
                      (`LH_C(t_3_1, ((uniform__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_8)))
                    else
                      (`LH_C(t_3_1, ((map__d0 (fun x_1_2 -> 
                        (x_1_2 mod 65536))) _lh_uniform_LH_C_1_8)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_9, _lh_uniform_LH_C_1_9) -> 
              (let rec t_3_2 = (_lh_uniform_LH_C_0_9 mod (_lh_uniform_LH_C_0_5 + 1)) in
                (if (t_3_2 = _lh_uniform_LH_C_0_5) then
                  (`LH_C(t_3_2, ((uniform__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_9)))
                else
                  (`LH_C(t_3_2, ((map__d0 (fun x_1_3 -> 
                    (x_1_3 mod 65536))) _lh_uniform_LH_C_1_9)))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;

(* lumberhack *)
let rec divmod__d1__d0__d0 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (let rec _lh_chop_LH_P2_1_0 = (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1) in
    (let rec _lh_chop_LH_P2_0_0 = (_lh_divmod_arg1_1 / _lh_divmod_arg2_1) in
      (fun a_4 chop'_1 n_6 -> 
        (if (n_6 = 0) then
          a_4
        else
          ((chop'_1 (`LH_C(_lh_chop_LH_P2_1_0, a_4))) _lh_chop_LH_P2_0_0)))));;
let rec doInput__d0__d0__d0 _lh_doInput_arg1_0 _lh_doInput_arg2_0 =
  (_lh_doInput_arg2_0 _lh_doInput_arg1_0);;
let rec doInput__d0__d0__d1 _lh_doInput_arg1_1 _lh_doInput_arg2_1 =
  (_lh_doInput_arg2_1 _lh_doInput_arg1_1);;
let rec drop_lz__d0__d0__d0 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (let rec _lh_matchIdent_5 = (Lazy.force _lh_drop_lz_arg2_0) in
    (match _lh_matchIdent_5 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
        (if (_lh_drop_lz_arg1_0 > 0) then
          ((drop_lz__d0__d0__d0 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0)
        else
          _lh_drop_lz_LH_C_1_0)
      | _ -> 
        (failwith "error")));;
let rec even__d0__d0__d0 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec even__d1__d0__d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl__d0__d0__d0 f_1_6 i_1_2 ls_1_0 =
  ((ls_1_0 f_1_6) i_1_2);;
let rec foldl__d0__d0__d1 f_2_3 i_1_3 ls_1_3 =
  ((ls_1_3 f_2_3) i_1_3);;
let rec foldl__d0__d0__d1_d0 f_9 i_7 ls_7 =
  ((ls_7 f_9) i_7);;
let rec foldl__d0__d0__d2 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec foldl__d0__d0__d3 f_2_8 i_1_5 ls_1_7 =
  ((ls_1_7 f_2_8) i_1_5);;
let rec foldl__d0__d0__d4 f_7 i_5 ls_5 =
  ((ls_5 f_7) i_5);;
let rec foldl__d0__d0__d5 f_6 i_4 ls_4 =
  ((ls_4 f_6) i_4);;
let rec foldl__d0__d0__d6 f_2_5 i_1_4 ls_1_4 =
  ((ls_1_4 f_2_5) i_1_4);;
let rec foldl__d0__d0__d7 f_8 i_6 ls_6 =
  ((ls_6 f_8) i_6);;
let rec foldl__d0__d0__d8 f_2 i_1 ls_1 =
  ((ls_1 f_2) i_1);;
let rec foldl__d0__d0__d9 f_2_9 i_1_6 ls_1_8 =
  ((ls_1_8 f_2_9) i_1_6);;
let rec int_val_of_char__d0__d0__d0 _lh_int_val_of_char_arg1_0 =
  ((int_of_char _lh_int_val_of_char_arg1_0) - 48);;
let rec int_val_of_string__d0__d0__d0 _lh_int_val_of_string_arg1_0 =
  (let rec f_1 = (fun _lh_f_arg1_0 _lh_f_arg2_0 -> 
    ((_lh_f_arg1_0 _lh_f_arg2_0) f_1)) in
    ((f_1 _lh_int_val_of_string_arg1_0) 0));;
let rec length__d0__d0__d0 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_7, t_7) -> 
      (1 + (length__d0__d0__d0 t_7))
    | `LH_N -> 
      0);;
let rec rands__d0__d0__d0 _lh_rands_arg1_0 _lh_rands_arg2_0 =
  (let rec k_1 = (_lh_rands_arg1_0 / 53668) in
    (let rec s1'_0 = ((40014 * (_lh_rands_arg1_0 - (k_1 * 53668))) - (k_1 * 12211)) in
      (let rec s1''_0 = (if (s1'_0 < 0) then
        (s1'_0 + 2147483563)
      else
        s1'_0) in
        (let rec k'_0 = (_lh_rands_arg2_0 / 52774) in
          (let rec s2'_0 = ((40692 * (_lh_rands_arg2_0 - (k'_0 * 52774))) - (k'_0 * 3791)) in
            (let rec s2''_0 = (if (s2'_0 < 0) then
              (s2'_0 + 2147483399)
            else
              s2'_0) in
              (let rec z_0 = (s1''_0 - s2''_0) in
                (if (z_0 < 1) then
                  (lazy (`LH_C((z_0 + 2147483562), ((rands__d0__d0__d0 s1''_0) s2''_0))))
                else
                  (lazy (`LH_C(z_0, ((rands__d0__d0__d0 s1''_0) s2''_0))))))))))));;
let rec singleTestX__d0__d0__d0 _lh_singleTestX_arg1_0 _lh_singleTestX_arg2_0 _lh_singleTestX_arg3_0 =
  ((_lh_singleTestX_arg2_0 _lh_singleTestX_arg1_0) _lh_singleTestX_arg3_0);;
let rec take_lz__d0__d0__d0 n_2 ls_1_2 =
  (if (n_2 > 0) then
    (match (Lazy.force ls_1_2) with
      | `LH_C(h_8, t_8) -> 
        (`LH_C(h_8, ((take_lz__d0__d0__d0 (n_2 - 1)) t_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz__d1__d0__d0 n_4 ls_1_6 =
  (if (n_4 > 0) then
    ((Lazy.force ls_1_6) n_4)
  else
    (`LH_N));;
let rec take_lz__d1__d0__d1 n_0 ls_3 =
  (if (n_0 > 0) then
    ((Lazy.force ls_3) n_0)
  else
    (`LH_N));;
let rec break__d0__d0__d0 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_1 f_1_8 -> 
        _lh_f_arg2_1), (fun _lh_dummy_0 _lh_doInput_arg1_2 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((fun _lh_f_arg2_2 f_1_9 -> 
          _lh_f_arg2_2), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (fun _lh_dummy_1 -> 
            (lines__d0__d0__d0 _lh_lines_LH_C_1_0)))))
      else
        (let rec _lh_matchIdent_1 = ((break__d0__d0__d0 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((let rec _lh_f_LH_C_1_0 = _lh_break_LH_P2_0_0 in
                (let rec _lh_f_LH_C_0_0 = _lh_break_LH_C_0_0 in
                  (fun _lh_f_arg2_3 f_2_0 -> 
                    ((f_2_0 _lh_f_LH_C_1_0) ((10 * _lh_f_arg2_3) + (int_val_of_char__d0__d0__d0 _lh_f_LH_C_0_0)))))), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and chop__d0__d0__d0 _lh_chop_arg1_0 =
  (let rec chop'_0 = (fun a_3 n_5 -> 
    (let rec _lh_matchIdent_1_2 = ((divmod__d1__d0__d0 n_5) _lh_chop_arg1_0) in
      (((_lh_matchIdent_1_2 a_3) chop'_0) n_5))) in
    (chop'_0 (`LH_N)))
and divmod__d0__d0__d0 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (let rec _lh_f_LH_P2_1_1 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_f_LH_P2_0_1 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (fun _lh_f_LH_P2_0_2 _lh_f_LH_P2_1_2 f_2_6 -> 
        (if (_lh_f_LH_P2_1_1 = 0) then
          (f_2_6 (let rec _lh_f_LH_P2_1_3 = _lh_f_LH_P2_0_1 in
            (let rec _lh_f_LH_P2_0_3 = (_lh_f_LH_P2_0_2 + 1) in
              (fun f_2_7 -> 
                (let rec _lh_matchIdent_7 = ((divmod__d0__d0__d0 _lh_f_LH_P2_1_3) 2) in
                  (((_lh_matchIdent_7 _lh_f_LH_P2_0_3) _lh_f_LH_P2_1_3) f_2_7))))))
        else
          (let rec _lh_singleTestX_LH_P2_1_0 = _lh_f_LH_P2_1_2 in
            (let rec _lh_singleTestX_LH_P2_0_0 = _lh_f_LH_P2_0_2 in
              (fun _lh_singleTestX_arg1_1 _lh_singleTestX_arg3_1 -> 
                (let rec square_0 = (fun x_3 -> 
                  ((x_3 * x_3) mod _lh_singleTestX_arg1_1)) in
                  (let rec witness_0 = (fun ls_1_5 -> 
                    (let rec _lh_matchIdent_8 = ls_1_5 in
                      (match _lh_matchIdent_8 with
                        | `LH_N -> 
                          false
                        | `LH_C(_lh_singleTestX_LH_C_0_0, _lh_singleTestX_LH_C_1_0) -> 
                          (if (_lh_singleTestX_LH_C_0_0 = (_lh_singleTestX_arg1_1 - 1)) then
                            true
                          else
                            (if (_lh_singleTestX_LH_C_0_0 = 1) then
                              false
                            else
                              (witness_0 _lh_singleTestX_LH_C_1_0)))
                        | _ -> 
                          (failwith "error")))) in
                    (let rec _lh_matchIdent_9 = ((take_lz__d1__d0__d1 _lh_singleTestX_LH_P2_0_0) ((iterate__d0__d0__d0 square_0) (((powerMod__d0__d0__d0 _lh_singleTestX_arg3_1) _lh_singleTestX_LH_P2_1_0) _lh_singleTestX_arg1_1))) in
                      (match _lh_matchIdent_9 with
                        | `LH_C(_lh_singleTestX_LH_C_0_1, _lh_singleTestX_LH_C_1_1) -> 
                          (((_lh_singleTestX_LH_C_0_1 = 1) || (_lh_singleTestX_LH_C_0_1 = (_lh_singleTestX_arg1_1 - 1))) || (witness_0 _lh_singleTestX_LH_C_1_1))
                        | _ -> 
                          (failwith "error"))))))))))))
and doLine__d0__d0__d0 _lh_doLine_arg1_0 _lh_doLine_arg2_1 _lh_doLine_arg3_0 =
  (let rec n_3 = (int_val_of_string__d0__d0__d0 _lh_doLine_arg1_0) in
    (let rec _lh_matchIdent_6 = (((multiTest__d0__d0__d0 100) _lh_doLine_arg3_0) n_3) in
      (_lh_matchIdent_6 _lh_doLine_arg2_1)))
and findKQ__d0__d0__d0 _lh_findKQ_arg1_0 =
  (let rec f_2_1 = (fun _lh_f_arg1_1 -> 
    (_lh_f_arg1_1 f_2_1)) in
    (f_2_1 (let rec _lh_f_LH_P2_1_0 = (_lh_findKQ_arg1_0 - 1) in
      (let rec _lh_f_LH_P2_0_0 = 0 in
        (fun f_2_2 -> 
          (let rec _lh_matchIdent_2 = ((divmod__d0__d0__d0 _lh_f_LH_P2_1_0) 2) in
            (((_lh_matchIdent_2 _lh_f_LH_P2_0_0) _lh_f_LH_P2_1_0) f_2_2)))))))
and iterate__d0__d0__d0 f_1_7 x_1 =
  (lazy (let rec t_6 = ((iterate__d0__d0__d0 f_1_7) (f_1_7 x_1)) in
    (let rec h_6 = x_1 in
      (fun n_1 -> 
        (`LH_C(h_6, ((take_lz__d1__d0__d0 (n_1 - 1)) t_6)))))))
and lines__d0__d0__d0 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_3 = ((break__d0__d0__d0 (fun x_2 -> 
    (x_2 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_3 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec _lh_doInput_LH_C_1_0 = (let rec _lh_matchIdent_4 = _lh_lines_LH_P2_1_0 in
          (_lh_matchIdent_4 99)) in
          (let rec _lh_doInput_LH_C_0_0 = _lh_lines_LH_P2_0_0 in
            (fun _lh_doInput_arg1_3 -> 
              (((doLine__d0__d0__d0 _lh_doInput_LH_C_0_0) (fun state_0 -> 
                ((doInput__d0__d0__d0 state_0) _lh_doInput_LH_C_1_0))) _lh_doInput_arg1_3))))
      | _ -> 
        (failwith "error")))
and makeNumber__d0__d0__d0 _lh_makeNumber_arg1_0 =
  ((foldl__d0__d0__d0 (fun a_0 x_0 -> 
    ((a_0 * _lh_makeNumber_arg1_0) + x_0))) 0)
and map__d0__d0__d0 f_1_3 ls_9 =
  (match ls_9 with
    | `LH_C(h_4, t_4) -> 
      (let rec t_5 = ((map__d0__d0__d0 f_1_3) t_4) in
        (let rec h_5 = (f_1_3 h_4) in
          (fun f_1_4 i_1_0 -> 
            (((foldl__d0__d0__d8 f_1_4) ((f_1_4 i_1_0) h_5)) t_5))))
    | `LH_N -> 
      (fun f_1_5 i_1_1 -> 
        i_1_1))
and map__d0__d1__d0 f_3 ls_2 =
  (match ls_2 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map__d0__d1__d0 f_3) t_0) in
        (let rec h_1 = (f_3 h_0) in
          (fun f_4 i_2 -> 
            (((foldl__d0__d0__d9 f_4) ((f_4 i_2) h_1)) t_1))))
    | `LH_N -> 
      (fun f_5 i_3 -> 
        i_3))
and map__d0__d2__d0 f_1_0 ls_8 =
  (match ls_8 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map__d0__d2__d0 f_1_0) t_2) in
        (let rec h_3 = (f_1_0 h_2) in
          (fun f_1_1 i_8 -> 
            (((foldl__d0__d0__d1_d0 f_1_1) ((f_1_1 i_8) h_3)) t_3))))
    | `LH_N -> 
      (fun f_1_2 i_9 -> 
        i_9))
and multiTest__d0__d0__d0 _lh_multiTest_arg1_0 _lh_multiTest_arg2_0 _lh_multiTest_arg3_0 =
  (let rec mTest_1 = (fun k_2 rs_0 -> 
    (if (k_2 = 0) then
      (let rec _lh_doLine_LH_P2_1_1 = rs_0 in
        (let rec _lh_doLine_LH_P2_0_1 = true in
          (fun _lh_doLine_arg2_2 -> 
            (if _lh_doLine_LH_P2_0_1 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_1)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_1)))))))
    else
      (let rec _lh_matchIdent_1_1 = (((singleTest__d0__d0__d0 _lh_multiTest_arg3_0) (findKQ__d0__d0__d0 _lh_multiTest_arg3_0)) rs_0) in
        ((_lh_matchIdent_1_1 k_2) mTest_1)))) in
    (if ((_lh_multiTest_arg3_0 <= 1) || (even__d0__d0__d0 _lh_multiTest_arg3_0)) then
      (let rec _lh_doLine_LH_P2_1_2 = _lh_multiTest_arg2_0 in
        (let rec _lh_doLine_LH_P2_0_2 = (_lh_multiTest_arg3_0 = 2) in
          (fun _lh_doLine_arg2_3 -> 
            (if _lh_doLine_LH_P2_0_2 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_3 _lh_doLine_LH_P2_1_2)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_3 _lh_doLine_LH_P2_1_2)))))))
    else
      ((mTest_1 _lh_multiTest_arg1_0) _lh_multiTest_arg2_0)))
and powerMod__d0__d0__d0 _lh_powerMod_arg1_0 _lh_powerMod_arg2_0 _lh_powerMod_arg3_0 =
  (match _lh_powerMod_arg2_0 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_0 = (_lh_powerMod_arg1_0 mod _lh_powerMod_arg3_0) in
        (let rec f_2_4 = (fun a_1 b_0 c_0 -> 
          (let rec g_0 = (fun a_2 b_1 -> 
            (if (even__d1__d0__d0 b_1) then
              ((g_0 ((a_2 * a_2) mod _lh_powerMod_arg3_0)) (b_1 / 2))
            else
              (((f_2_4 a_2) (b_1 - 1)) ((a_2 * c_0) mod _lh_powerMod_arg3_0)))) in
            (if (b_0 = 0) then
              c_0
            else
              ((g_0 a_1) b_0)))) in
          (((f_2_4 a'_0) (_lh_powerMod_arg2_0 - 1)) a'_0))))
and process__d0__d0__d0 _lh_process_arg1_0 =
  ((doInput__d0__d0__d1 ((randomInts__d0__d0__d0 111) 47)) _lh_process_arg1_0)
and randomInts__d0__d0__d0 _lh_randomInts_arg1_0 _lh_randomInts_arg2_0 =
  (if ((1 <= _lh_randomInts_arg1_0) && (_lh_randomInts_arg1_0 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_0) && (_lh_randomInts_arg2_0 <= 2147483398)) then
      ((rands__d0__d0__d0 _lh_randomInts_arg1_0) _lh_randomInts_arg2_0)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and random__d0__d0__d0 _lh_random_arg1_0 _lh_random_arg2_0 =
  (let rec ns_0 = ((chop__d0__d0__d0 65536) _lh_random_arg1_0) in
    (let rec _lh_matchIdent_0 = ((splitAt_lz__d0__d0__d0 (length__d0__d0__d0 ns_0)) _lh_random_arg2_0) in
      (_lh_matchIdent_0 ns_0)))
and singleTest__d0__d0__d0 _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 _lh_singleTest_arg3_0 =
  (let rec _lh_matchIdent_1_0 = ((random__d0__d0__d0 (_lh_singleTest_arg1_1 - 2)) _lh_singleTest_arg3_0) in
    ((_lh_matchIdent_1_0 _lh_singleTest_arg1_1) _lh_singleTest_arg2_1))
and splitAt_lz__d0__d0__d0 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_random_LH_P2_1_0 = ((drop_lz__d0__d0__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_random_LH_P2_0_0 = ((take_lz__d0__d0__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun ns_1 -> 
        (let rec _lh_singleTest_LH_P2_1_0 = _lh_random_LH_P2_1_0 in
          (let rec _lh_singleTest_LH_P2_0_0 = ((makeNumber__d0__d0__d0 65536) ((uniform__d0__d0__d0 ns_1) _lh_random_LH_P2_0_0)) in
            (fun _lh_singleTest_arg1_0 _lh_singleTest_arg2_0 -> 
              (let rec _lh_multiTest_LH_P2_1_0 = _lh_singleTest_LH_P2_1_0 in
                (let rec _lh_multiTest_LH_P2_0_0 = (((singleTestX__d0__d0__d0 _lh_singleTest_arg1_0) _lh_singleTest_arg2_0) (2 + _lh_singleTest_LH_P2_0_0)) in
                  (fun k_0 mTest_0 -> 
                    (if _lh_multiTest_LH_P2_0_0 then
                      ((mTest_0 (k_0 - 1)) _lh_multiTest_LH_P2_1_0)
                    else
                      (let rec _lh_doLine_LH_P2_1_0 = _lh_multiTest_LH_P2_1_0 in
                        (let rec _lh_doLine_LH_P2_0_0 = false in
                          (fun _lh_doLine_arg2_0 -> 
                            (if _lh_doLine_LH_P2_0_0 then
                              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))
                            else
                              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))))))))))))))))
and testPrimetest_nofib__d0__d0__d0 _lh_testPrimetest_nofib_arg1_0 =
  (let rec cts_0 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process__d0__d0__d0 (lines__d0__d0__d0 cts_0)))
and uniform__d0__d0__d0 _lh_uniform_arg1_0 _lh_uniform_arg2_0 =
  (match _lh_uniform_arg1_0 with
    | `LH_C(_lh_uniform_LH_C_0_0, _lh_uniform_LH_C_1_0) -> 
      (match _lh_uniform_LH_C_1_0 with
        | `LH_N -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_1, _lh_uniform_LH_C_1_1) -> 
              (match _lh_uniform_LH_C_1_1 with
                | `LH_N -> 
                  (let rec t_9 = (fun f_3_0 i_1_7 -> 
                    i_1_7) in
                    (let rec h_9 = (_lh_uniform_LH_C_0_1 mod _lh_uniform_LH_C_0_0) in
                      (fun f_3_1 i_1_8 -> 
                        (((foldl__d0__d0__d7 f_3_1) ((f_3_1 i_1_8) h_9)) t_9))))
                | _ -> 
                  (match _lh_uniform_arg2_0 with
                    | `LH_C(_lh_uniform_LH_C_0_2, _lh_uniform_LH_C_1_2) -> 
                      (let rec t_1_0 = (_lh_uniform_LH_C_0_2 mod (_lh_uniform_LH_C_0_0 + 1)) in
                        (if (t_1_0 = _lh_uniform_LH_C_0_0) then
                          (let rec t_1_1 = ((uniform__d0__d0__d0 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_2) in
                            (let rec h_1_0 = t_1_0 in
                              (fun f_3_2 i_1_9 -> 
                                (((foldl__d0__d0__d1 f_3_2) ((f_3_2 i_1_9) h_1_0)) t_1_1))))
                        else
                          (let rec t_1_2 = ((map__d0__d0__d0 (fun x_4 -> 
                            (x_4 mod 65536))) _lh_uniform_LH_C_1_2) in
                            (let rec h_1_1 = t_1_0 in
                              (fun f_3_3 i_2_0 -> 
                                (((foldl__d0__d0__d2 f_3_3) ((f_3_3 i_2_0) h_1_1)) t_1_2))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_0 with
                | `LH_C(_lh_uniform_LH_C_0_3, _lh_uniform_LH_C_1_3) -> 
                  (let rec t_1_3 = (_lh_uniform_LH_C_0_3 mod (_lh_uniform_LH_C_0_0 + 1)) in
                    (if (t_1_3 = _lh_uniform_LH_C_0_0) then
                      (let rec t_1_4 = ((uniform__d0__d0__d0 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_3) in
                        (let rec h_1_2 = t_1_3 in
                          (fun f_3_4 i_2_1 -> 
                            (((foldl__d0__d0__d3 f_3_4) ((f_3_4 i_2_1) h_1_2)) t_1_4))))
                    else
                      (let rec t_1_5 = ((map__d0__d1__d0 (fun x_5 -> 
                        (x_5 mod 65536))) _lh_uniform_LH_C_1_3) in
                        (let rec h_1_3 = t_1_3 in
                          (fun f_3_5 i_2_2 -> 
                            (((foldl__d0__d0__d4 f_3_5) ((f_3_5 i_2_2) h_1_3)) t_1_5))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_4, _lh_uniform_LH_C_1_4) -> 
              (let rec t_1_6 = (_lh_uniform_LH_C_0_4 mod (_lh_uniform_LH_C_0_0 + 1)) in
                (if (t_1_6 = _lh_uniform_LH_C_0_0) then
                  (let rec t_1_7 = ((uniform__d0__d0__d0 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_4 = t_1_6 in
                      (fun f_3_6 i_2_3 -> 
                        (((foldl__d0__d0__d5 f_3_6) ((f_3_6 i_2_3) h_1_4)) t_1_7))))
                else
                  (let rec t_1_8 = ((map__d0__d2__d0 (fun x_6 -> 
                    (x_6 mod 65536))) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_5 = t_1_6 in
                      (fun f_3_7 i_2_4 -> 
                        (((foldl__d0__d0__d6 f_3_7) ((f_3_7 i_2_4) h_1_5)) t_1_8))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;

(* lumberhack_pop_out *)
let rec divmod__d1__d0__d0__d0 _lh_divmod_arg1_2 _lh_divmod_arg2_2 a_8 chop'_2 n_1_2 =
  (let rec _lh_chop_LH_P2_1_1 = (_lh_divmod_arg1_2 mod _lh_divmod_arg2_2) in
    (let rec _lh_chop_LH_P2_0_1 = (_lh_divmod_arg1_2 / _lh_divmod_arg2_2) in
      (if (n_1_2 = 0) then
        a_8
      else
        ((chop'_2 (`LH_C(_lh_chop_LH_P2_1_1, a_8))) _lh_chop_LH_P2_0_1))));;
let rec doInput__d0__d0__d0__d0 _lh_doInput_arg1_5 _lh_doInput_arg2_2 =
  (_lh_doInput_arg2_2 _lh_doInput_arg1_5);;
let rec doInput__d0__d0__d1__d0 _lh_doInput_arg1_6 _lh_doInput_arg2_3 =
  (_lh_doInput_arg2_3 _lh_doInput_arg1_6);;
let rec drop_lz__d0__d0__d0__d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (let rec _lh_matchIdent_1_6 = (Lazy.force _lh_drop_lz_arg2_1) in
    (match _lh_matchIdent_1_6 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
        (if (_lh_drop_lz_arg1_1 > 0) then
          ((drop_lz__d0__d0__d0__d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1)
        else
          _lh_drop_lz_LH_C_1_1)
      | _ -> 
        (failwith "error")));;
let rec even__d0__d0__d0__d0 _lh_even_arg1_2 =
  ((_lh_even_arg1_2 mod 2) = 0);;
let rec even__d1__d0__d0__d0 _lh_even_arg1_3 =
  ((_lh_even_arg1_3 mod 2) = 0);;
let rec foldl__d0__d0__d0__d0 f_6_4 i_4_0 ls_3_5 =
  ((ls_3_5 f_6_4) i_4_0);;
let rec foldl__d0__d0__d1__d0 f_5_0 i_2_9 ls_2_2 =
  ((ls_2_2 f_5_0) i_2_9);;
let rec foldl__d0__d0__d1_d0__d0 f_5_2 i_3_1 ls_2_4 =
  ((ls_2_4 f_5_2) i_3_1);;
let rec foldl__d0__d0__d2__d0 f_5_4 i_3_3 ls_2_7 =
  ((ls_2_7 f_5_4) i_3_3);;
let rec foldl__d0__d0__d3__d0 f_6_2 i_3_9 ls_3_4 =
  ((ls_3_4 f_6_2) i_3_9);;
let rec foldl__d0__d0__d4__d0 f_7_3 i_4_9 ls_3_6 =
  ((ls_3_6 f_7_3) i_4_9);;
let rec foldl__d0__d0__d5__d0 f_5_8 i_3_6 ls_2_9 =
  ((ls_2_9 f_5_8) i_3_6);;
let rec foldl__d0__d0__d6__d0 f_6_1 i_3_8 ls_3_3 =
  ((ls_3_3 f_6_1) i_3_8);;
let rec foldl__d0__d0__d7__d0 f_6_0 i_3_7 ls_3_0 =
  ((ls_3_0 f_6_0) i_3_7);;
let rec foldl__d0__d0__d8__d0 f_5_1 i_3_0 ls_2_3 =
  ((ls_2_3 f_5_1) i_3_0);;
let rec foldl__d0__d0__d9__d0 f_5_3 i_3_2 ls_2_5 =
  ((ls_2_5 f_5_3) i_3_2);;
let rec int_val_of_char__d0__d0__d0__d0 _lh_int_val_of_char_arg1_1 =
  ((int_of_char _lh_int_val_of_char_arg1_1) - 48);;
let rec int_val_of_string__d0__d0__d0__d0 _lh_int_val_of_string_arg1_1 =
  (let rec f_4_9 = (fun _lh_f_arg1_3 _lh_f_arg2_7 -> 
    ((_lh_f_arg1_3 _lh_f_arg2_7) f_4_9)) in
    ((f_4_9 _lh_int_val_of_string_arg1_1) 0));;
let rec length__d0__d0__d0__d0 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_0, t_2_3) -> 
      (1 + (length__d0__d0__d0__d0 t_2_3))
    | `LH_N -> 
      0);;
let rec rands__d0__d0__d0__d0 _lh_rands_arg1_1 _lh_rands_arg2_1 =
  (let rec k_5 = (_lh_rands_arg1_1 / 53668) in
    (let rec s1'_1 = ((40014 * (_lh_rands_arg1_1 - (k_5 * 53668))) - (k_5 * 12211)) in
      (let rec s1''_1 = (if (s1'_1 < 0) then
        (s1'_1 + 2147483563)
      else
        s1'_1) in
        (let rec k'_1 = (_lh_rands_arg2_1 / 52774) in
          (let rec s2'_1 = ((40692 * (_lh_rands_arg2_1 - (k'_1 * 52774))) - (k'_1 * 3791)) in
            (let rec s2''_1 = (if (s2'_1 < 0) then
              (s2'_1 + 2147483399)
            else
              s2'_1) in
              (let rec z_1 = (s1''_1 - s2''_1) in
                (if (z_1 < 1) then
                  (lazy (`LH_C((z_1 + 2147483562), ((rands__d0__d0__d0__d0 s1''_1) s2''_1))))
                else
                  (lazy (`LH_C(z_1, ((rands__d0__d0__d0__d0 s1''_1) s2''_1))))))))))));;
let rec singleTestX__d0__d0__d0__d0 _lh_singleTestX_arg1_2 _lh_singleTestX_arg2_1 _lh_singleTestX_arg3_2 =
  ((_lh_singleTestX_arg2_1 _lh_singleTestX_arg1_2) _lh_singleTestX_arg3_2);;
let rec take_lz__d0__d0__d0__d0 n_7 ls_2_6 =
  (if (n_7 > 0) then
    (match (Lazy.force ls_2_6) with
      | `LH_C(h_2_1, t_2_4) -> 
        (`LH_C(h_2_1, ((take_lz__d0__d0__d0__d0 (n_7 - 1)) t_2_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz__d1__d0__d0__d0 n_9 ls_3_2 =
  (if (n_9 > 0) then
    ((Lazy.force ls_3_2) n_9)
  else
    (`LH_N));;
let rec take_lz__d1__d0__d1__d0 n_8 ls_3_1 =
  (if (n_8 > 0) then
    ((Lazy.force ls_3_1) n_8)
  else
    (`LH_N));;
let rec break__d0__d0__d0__d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_4 f_4_3 -> 
        _lh_f_arg2_4), (fun _lh_dummy_2 _lh_doInput_arg1_4 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((fun _lh_f_arg2_5 f_4_4 -> 
          _lh_f_arg2_5), (let rec _lh_lines_LH_C_1_1 = _lh_break_LH_C_1_1 in
          (fun _lh_dummy_3 -> 
            (lines__d0__d0__d0__d0 _lh_lines_LH_C_1_1)))))
      else
        (let rec _lh_matchIdent_1_4 = ((break__d0__d0__d0__d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_4 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((let rec _lh_f_LH_C_1_1 = _lh_break_LH_P2_0_1 in
                (let rec _lh_f_LH_C_0_1 = _lh_break_LH_C_0_1 in
                  (fun _lh_f_arg2_6 f_4_5 -> 
                    ((f_4_5 _lh_f_LH_C_1_1) ((10 * _lh_f_arg2_6) + (int_val_of_char__d0__d0__d0__d0 _lh_f_LH_C_0_1)))))), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and chop__d0__d0__d0__d0 _lh_chop_arg1_1 =
  (let rec chop'_3 = (fun a_9 n_1_3 -> 
    (let rec _lh_matchIdent_2_2 = ((divmod__d1__d0__d0__d0 n_1_3) _lh_chop_arg1_1) in
      (((_lh_matchIdent_2_2 a_9) chop'_3) n_1_3))) in
    (chop'_3 (`LH_N)))
and divmod__d0__d0__d0__d0 _lh_divmod_arg1_3 _lh_divmod_arg2_3 _lh_f_LH_P2_0_6 _lh_f_LH_P2_1_6 f_7_4 =
  (let rec _lh_f_LH_P2_1_5 = (_lh_divmod_arg1_3 mod _lh_divmod_arg2_3) in
    (let rec _lh_f_LH_P2_0_5 = (_lh_divmod_arg1_3 / _lh_divmod_arg2_3) in
      (if (_lh_f_LH_P2_1_5 = 0) then
        (f_7_4 (let rec _lh_f_LH_P2_1_7 = _lh_f_LH_P2_0_5 in
          (let rec _lh_f_LH_P2_0_7 = (_lh_f_LH_P2_0_6 + 1) in
            (fun f_7_5 -> 
              (let rec _lh_matchIdent_2_3 = ((divmod__d0__d0__d0__d0 _lh_f_LH_P2_1_7) 2) in
                (((_lh_matchIdent_2_3 _lh_f_LH_P2_0_7) _lh_f_LH_P2_1_7) f_7_5))))))
      else
        (fun _lh_singleTestX_arg1_3 _lh_singleTestX_arg3_3 -> 
          (let rec _lh_singleTestX_LH_P2_1_1 = _lh_f_LH_P2_1_6 in
            (let rec _lh_singleTestX_LH_P2_0_1 = _lh_f_LH_P2_0_6 in
              (let rec square_1 = (fun x_1_3 -> 
                ((x_1_3 * x_1_3) mod _lh_singleTestX_arg1_3)) in
                (let rec witness_1 = (fun ls_3_7 -> 
                  (let rec _lh_matchIdent_2_4 = ls_3_7 in
                    (match _lh_matchIdent_2_4 with
                      | `LH_N -> 
                        false
                      | `LH_C(_lh_singleTestX_LH_C_0_2, _lh_singleTestX_LH_C_1_2) -> 
                        (if (_lh_singleTestX_LH_C_0_2 = (_lh_singleTestX_arg1_3 - 1)) then
                          true
                        else
                          (if (_lh_singleTestX_LH_C_0_2 = 1) then
                            false
                          else
                            (witness_1 _lh_singleTestX_LH_C_1_2)))
                      | _ -> 
                        (failwith "error")))) in
                  (let rec _lh_matchIdent_2_5 = ((take_lz__d1__d0__d1__d0 _lh_singleTestX_LH_P2_0_1) ((iterate__d0__d0__d0__d0 square_1) (((powerMod__d0__d0__d0__d0 _lh_singleTestX_arg3_3) _lh_singleTestX_LH_P2_1_1) _lh_singleTestX_arg1_3))) in
                    (match _lh_matchIdent_2_5 with
                      | `LH_C(_lh_singleTestX_LH_C_0_3, _lh_singleTestX_LH_C_1_3) -> 
                        (((_lh_singleTestX_LH_C_0_3 = 1) || (_lh_singleTestX_LH_C_0_3 = (_lh_singleTestX_arg1_3 - 1))) || (witness_1 _lh_singleTestX_LH_C_1_3))
                      | _ -> 
                        (failwith "error")))))))))))
and doLine__d0__d0__d0__d0 _lh_doLine_arg1_1 _lh_doLine_arg2_7 _lh_doLine_arg3_1 =
  (let rec n_1_1 = (int_val_of_string__d0__d0__d0__d0 _lh_doLine_arg1_1) in
    (let rec _lh_matchIdent_1_8 = (((multiTest__d0__d0__d0__d0 100) _lh_doLine_arg3_1) n_1_1) in
      (_lh_matchIdent_1_8 _lh_doLine_arg2_7)))
and findKQ__d0__d0__d0__d0 _lh_findKQ_arg1_1 =
  (let rec f_3_8 = (fun _lh_f_arg1_2 -> 
    (_lh_f_arg1_2 f_3_8)) in
    (f_3_8 (let rec _lh_f_LH_P2_1_4 = (_lh_findKQ_arg1_1 - 1) in
      (let rec _lh_f_LH_P2_0_4 = 0 in
        (fun f_3_9 -> 
          (let rec _lh_matchIdent_1_3 = ((divmod__d0__d0__d0__d0 _lh_f_LH_P2_1_4) 2) in
            (((_lh_matchIdent_1_3 _lh_f_LH_P2_0_4) _lh_f_LH_P2_1_4) f_3_9)))))))
and iterate__d0__d0__d0__d0 f_6_3 x_8 =
  (lazy (let rec t_2_7 = ((iterate__d0__d0__d0__d0 f_6_3) (f_6_3 x_8)) in
    (let rec h_2_4 = x_8 in
      (fun n_1_0 -> 
        (`LH_C(h_2_4, ((take_lz__d1__d0__d0__d0 (n_1_0 - 1)) t_2_7)))))))
and lines__d0__d0__d0__d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_2_0 = ((break__d0__d0__d0__d0 (fun x_1_2 -> 
    (x_1_2 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_2_0 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (let rec _lh_doInput_LH_C_1_1 = (let rec _lh_matchIdent_2_1 = _lh_lines_LH_P2_1_1 in
          (_lh_matchIdent_2_1 99)) in
          (let rec _lh_doInput_LH_C_0_1 = _lh_lines_LH_P2_0_1 in
            (fun _lh_doInput_arg1_7 -> 
              (((doLine__d0__d0__d0__d0 _lh_doInput_LH_C_0_1) (fun state_1 -> 
                ((doInput__d0__d0__d0__d0 state_1) _lh_doInput_LH_C_1_1))) _lh_doInput_arg1_7))))
      | _ -> 
        (failwith "error")))
and makeNumber__d0__d0__d0__d0 _lh_makeNumber_arg1_1 =
  ((foldl__d0__d0__d0__d0 (fun a_5 x_7 -> 
    ((a_5 * _lh_makeNumber_arg1_1) + x_7))) 0)
and map__d0__d0__d0__d0 f_4_0 ls_1_9 _lh_popOutId_0_5 _lh_popOutId_1_5 =
  (match ls_1_9 with
    | `LH_C(h_1_6, t_1_9) -> 
      (let rec t_2_0 = ((map__d0__d0__d0__d0 f_4_0) t_1_9) in
        (let rec h_1_7 = (f_4_0 h_1_6) in
          (((foldl__d0__d0__d8__d0 _lh_popOutId_0_5) ((_lh_popOutId_0_5 _lh_popOutId_1_5) h_1_7)) t_2_0)))
    | `LH_N -> 
      _lh_popOutId_1_5)
and map__d0__d1__d0__d0 f_5_5 ls_2_8 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (match ls_2_8 with
    | `LH_C(h_2_2, t_2_5) -> 
      (let rec t_2_6 = ((map__d0__d1__d0__d0 f_5_5) t_2_5) in
        (let rec h_2_3 = (f_5_5 h_2_2) in
          (((foldl__d0__d0__d9__d0 _lh_popOutId_0_4) ((_lh_popOutId_0_4 _lh_popOutId_1_4) h_2_3)) t_2_6)))
    | `LH_N -> 
      _lh_popOutId_1_4)
and map__d0__d2__d0__d0 f_4_6 ls_2_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_2_0 with
    | `LH_C(h_1_8, t_2_1) -> 
      (let rec t_2_2 = ((map__d0__d2__d0__d0 f_4_6) t_2_1) in
        (let rec h_1_9 = (f_4_6 h_1_8) in
          (((foldl__d0__d0__d1_d0__d0 _lh_popOutId_0_0) ((_lh_popOutId_0_0 _lh_popOutId_1_0) h_1_9)) t_2_2)))
    | `LH_N -> 
      _lh_popOutId_1_0)
and multiTest__d0__d0__d0__d0 _lh_multiTest_arg1_1 _lh_multiTest_arg2_1 _lh_multiTest_arg3_1 =
  (let rec mTest_2 = (fun k_3 rs_1 -> 
    (if (k_3 = 0) then
      (let rec _lh_doLine_LH_P2_1_3 = rs_1 in
        (let rec _lh_doLine_LH_P2_0_3 = true in
          (fun _lh_doLine_arg2_4 -> 
            (if _lh_doLine_LH_P2_0_3 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_4 _lh_doLine_LH_P2_1_3)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_4 _lh_doLine_LH_P2_1_3)))))))
    else
      (let rec _lh_matchIdent_1_5 = (((singleTest__d0__d0__d0__d0 _lh_multiTest_arg3_1) (findKQ__d0__d0__d0__d0 _lh_multiTest_arg3_1)) rs_1) in
        ((_lh_matchIdent_1_5 k_3) mTest_2)))) in
    (if ((_lh_multiTest_arg3_1 <= 1) || (even__d0__d0__d0__d0 _lh_multiTest_arg3_1)) then
      (let rec _lh_doLine_LH_P2_1_4 = _lh_multiTest_arg2_1 in
        (let rec _lh_doLine_LH_P2_0_4 = (_lh_multiTest_arg3_1 = 2) in
          (fun _lh_doLine_arg2_5 -> 
            (if _lh_doLine_LH_P2_0_4 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_5 _lh_doLine_LH_P2_1_4)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_5 _lh_doLine_LH_P2_1_4)))))))
    else
      ((mTest_2 _lh_multiTest_arg1_1) _lh_multiTest_arg2_1)))
and powerMod__d0__d0__d0__d0 _lh_powerMod_arg1_1 _lh_powerMod_arg2_1 _lh_powerMod_arg3_1 =
  (match _lh_powerMod_arg2_1 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_1 = (_lh_powerMod_arg1_1 mod _lh_powerMod_arg3_1) in
        (let rec f_5_9 = (fun a_6 b_2 c_1 -> 
          (let rec g_1 = (fun a_7 b_3 -> 
            (if (even__d1__d0__d0__d0 b_3) then
              ((g_1 ((a_7 * a_7) mod _lh_powerMod_arg3_1)) (b_3 / 2))
            else
              (((f_5_9 a_7) (b_3 - 1)) ((a_7 * c_1) mod _lh_powerMod_arg3_1)))) in
            (if (b_2 = 0) then
              c_1
            else
              ((g_1 a_6) b_2)))) in
          (((f_5_9 a'_1) (_lh_powerMod_arg2_1 - 1)) a'_1))))
and process__d0__d0__d0__d0 _lh_process_arg1_1 =
  ((doInput__d0__d0__d1__d0 ((randomInts__d0__d0__d0__d0 111) 47)) _lh_process_arg1_1)
and randomInts__d0__d0__d0__d0 _lh_randomInts_arg1_1 _lh_randomInts_arg2_1 =
  (if ((1 <= _lh_randomInts_arg1_1) && (_lh_randomInts_arg1_1 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_1) && (_lh_randomInts_arg2_1 <= 2147483398)) then
      ((rands__d0__d0__d0__d0 _lh_randomInts_arg1_1) _lh_randomInts_arg2_1)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and random__d0__d0__d0__d0 _lh_random_arg1_1 _lh_random_arg2_1 =
  (let rec ns_3 = ((chop__d0__d0__d0__d0 65536) _lh_random_arg1_1) in
    (let rec _lh_matchIdent_1_9 = ((splitAt_lz__d0__d0__d0__d0 (length__d0__d0__d0__d0 ns_3)) _lh_random_arg2_1) in
      (_lh_matchIdent_1_9 ns_3)))
and singleTest__d0__d0__d0__d0 _lh_singleTest_arg1_3 _lh_singleTest_arg2_3 _lh_singleTest_arg3_1 =
  (let rec _lh_matchIdent_1_7 = ((random__d0__d0__d0__d0 (_lh_singleTest_arg1_3 - 2)) _lh_singleTest_arg3_1) in
    ((_lh_matchIdent_1_7 _lh_singleTest_arg1_3) _lh_singleTest_arg2_3))
and splitAt_lz__d0__d0__d0__d0 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 ns_2 _lh_singleTest_arg1_2 _lh_singleTest_arg2_2 k_4 mTest_3 =
  (let rec _lh_random_LH_P2_1_1 = ((drop_lz__d0__d0__d0__d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1) in
    (let rec _lh_random_LH_P2_0_1 = ((take_lz__d0__d0__d0__d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1) in
      (let rec _lh_singleTest_LH_P2_1_1 = _lh_random_LH_P2_1_1 in
        (let rec _lh_singleTest_LH_P2_0_1 = ((makeNumber__d0__d0__d0__d0 65536) ((uniform__d0__d0__d0__d0 ns_2) _lh_random_LH_P2_0_1)) in
          (let rec _lh_multiTest_LH_P2_1_1 = _lh_singleTest_LH_P2_1_1 in
            (let rec _lh_multiTest_LH_P2_0_1 = (((singleTestX__d0__d0__d0__d0 _lh_singleTest_arg1_2) _lh_singleTest_arg2_2) (2 + _lh_singleTest_LH_P2_0_1)) in
              (if _lh_multiTest_LH_P2_0_1 then
                ((mTest_3 (k_4 - 1)) _lh_multiTest_LH_P2_1_1)
              else
                (fun _lh_doLine_arg2_6 -> 
                  (let rec _lh_doLine_LH_P2_1_5 = _lh_multiTest_LH_P2_1_1 in
                    (let rec _lh_doLine_LH_P2_0_5 = false in
                      (if _lh_doLine_LH_P2_0_5 then
                        (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_6 _lh_doLine_LH_P2_1_5)))
                      else
                        (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_6 _lh_doLine_LH_P2_1_5))))))))))))))
and testPrimetest_nofib__d0__d0__d0__d0 _lh_testPrimetest_nofib_arg1_1 =
  (let rec cts_1 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process__d0__d0__d0__d0 (lines__d0__d0__d0__d0 cts_1)))
and uniform__d0__d0__d0__d0 _lh_uniform_arg1_1 _lh_uniform_arg2_1 =
  (match _lh_uniform_arg1_1 with
    | `LH_C(_lh_uniform_LH_C_0_5, _lh_uniform_LH_C_1_5) -> 
      (match _lh_uniform_LH_C_1_5 with
        | `LH_N -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_6, _lh_uniform_LH_C_1_6) -> 
              (match _lh_uniform_LH_C_1_6 with
                | `LH_N -> 
                  (let rec t_2_8 = (fun f_6_5 i_4_1 -> 
                    i_4_1) in
                    (let rec h_2_5 = (_lh_uniform_LH_C_0_6 mod _lh_uniform_LH_C_0_5) in
                      (fun f_6_6 i_4_2 -> 
                        (((foldl__d0__d0__d7__d0 f_6_6) ((f_6_6 i_4_2) h_2_5)) t_2_8))))
                | _ -> 
                  (match _lh_uniform_arg2_1 with
                    | `LH_C(_lh_uniform_LH_C_0_7, _lh_uniform_LH_C_1_7) -> 
                      (let rec t_2_9 = (_lh_uniform_LH_C_0_7 mod (_lh_uniform_LH_C_0_5 + 1)) in
                        (if (t_2_9 = _lh_uniform_LH_C_0_5) then
                          (let rec t_3_0 = ((uniform__d0__d0__d0__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_7) in
                            (let rec h_2_6 = t_2_9 in
                              (fun f_6_7 i_4_3 -> 
                                (((foldl__d0__d0__d1__d0 f_6_7) ((f_6_7 i_4_3) h_2_6)) t_3_0))))
                        else
                          (let rec t_3_1 = ((map__d0__d0__d0__d0 (fun x_9 -> 
                            (x_9 mod 65536))) _lh_uniform_LH_C_1_7) in
                            (let rec h_2_7 = t_2_9 in
                              (fun f_6_8 i_4_4 -> 
                                (((foldl__d0__d0__d2__d0 f_6_8) ((f_6_8 i_4_4) h_2_7)) t_3_1))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_1 with
                | `LH_C(_lh_uniform_LH_C_0_8, _lh_uniform_LH_C_1_8) -> 
                  (let rec t_3_2 = (_lh_uniform_LH_C_0_8 mod (_lh_uniform_LH_C_0_5 + 1)) in
                    (if (t_3_2 = _lh_uniform_LH_C_0_5) then
                      (let rec t_3_3 = ((uniform__d0__d0__d0__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_8) in
                        (let rec h_2_8 = t_3_2 in
                          (fun f_6_9 i_4_5 -> 
                            (((foldl__d0__d0__d3__d0 f_6_9) ((f_6_9 i_4_5) h_2_8)) t_3_3))))
                    else
                      (let rec t_3_4 = ((map__d0__d1__d0__d0 (fun x_1_0 -> 
                        (x_1_0 mod 65536))) _lh_uniform_LH_C_1_8) in
                        (let rec h_2_9 = t_3_2 in
                          (fun f_7_0 i_4_6 -> 
                            (((foldl__d0__d0__d4__d0 f_7_0) ((f_7_0 i_4_6) h_2_9)) t_3_4))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_9, _lh_uniform_LH_C_1_9) -> 
              (let rec t_3_5 = (_lh_uniform_LH_C_0_9 mod (_lh_uniform_LH_C_0_5 + 1)) in
                (if (t_3_5 = _lh_uniform_LH_C_0_5) then
                  (let rec t_3_6 = ((uniform__d0__d0__d0__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_9) in
                    (let rec h_3_0 = t_3_5 in
                      (fun f_7_1 i_4_7 -> 
                        (((foldl__d0__d0__d5__d0 f_7_1) ((f_7_1 i_4_7) h_3_0)) t_3_6))))
                else
                  (let rec t_3_7 = ((map__d0__d2__d0__d0 (fun x_1_1 -> 
                    (x_1_1 mod 65536))) _lh_uniform_LH_C_1_9) in
                    (let rec h_3_1 = t_3_5 in
                      (fun f_7_2 i_4_8 -> 
                        (((foldl__d0__d0__d6__d0 f_7_2) ((f_7_2 i_4_8) h_3_1)) t_3_7))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Primetest_nofib" (fun () -> ignore ((testPrimetest_nofib__d0 0)));
  Bench.Test.create ~name:"lumberhack_Primetest_nofib" (fun () -> ignore ((testPrimetest_nofib__d0__d0__d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Primetest_nofib" (fun () -> ignore ((testPrimetest_nofib__d0__d0__d0__d0 0)));
])
