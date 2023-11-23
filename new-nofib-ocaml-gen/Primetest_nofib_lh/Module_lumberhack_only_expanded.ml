

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec break__d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_5 = ((break__d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_5 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec divmod__d0 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (`LH_P2((_lh_divmod_arg1_1 / _lh_divmod_arg2_1), (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1)));;
let rec divmod__d1 _lh_divmod_arg1_2 _lh_divmod_arg2_2 =
  (`LH_P2((_lh_divmod_arg1_2 / _lh_divmod_arg2_2), (_lh_divmod_arg1_2 mod _lh_divmod_arg2_2)));;
let rec drop_lz__d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (let rec _lh_matchIdent_2_2 = (Lazy.force _lh_drop_lz_arg2_1) in
    (match _lh_matchIdent_2_2 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
        (if (_lh_drop_lz_arg1_1 > 0) then
          ((drop_lz__d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1)
        else
          _lh_drop_lz_LH_C_1_1)
      | _ -> 
        (failwith "error")));;
let rec even__d0 _lh_even_arg1_2 =
  ((_lh_even_arg1_2 mod 2) = 0);;
let rec even__d1 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl__d0 f_1_7 i_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_1, t_2_6) -> 
      (((foldl__d0 f_1_7) ((f_1_7 i_3) h_2_1)) t_2_6)
    | `LH_N -> 
      i_3);;
let rec int_val_of_char__d0 _lh_int_val_of_char_arg1_1 =
  ((int_of_char _lh_int_val_of_char_arg1_1) - 48);;
let rec iterate__d0 f_1_8 x_1_2 =
  (lazy (`LH_C(x_1_2, ((iterate__d0 f_1_8) (f_1_8 x_1_2)))));;
let rec length__d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_3_1) -> 
      (1 + (length__d0 t_3_1))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_5 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_0, t_2_5) -> 
      (`LH_C((f_1_5 h_2_0), ((map__d0 f_1_5) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec rands__d0 _lh_rands_arg1_1 _lh_rands_arg2_1 =
  (let rec k_3 = (_lh_rands_arg1_1 / 53668) in
    (let rec s1'_1 = ((40014 * (_lh_rands_arg1_1 - (k_3 * 53668))) - (k_3 * 12211)) in
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
let rec take_lz__d0 n_8 ls_2_5 =
  (if (n_8 > 0) then
    (match (Lazy.force ls_2_5) with
      | `LH_C(h_2_4, t_3_2) -> 
        (`LH_C(h_2_4, ((take_lz__d0 (n_8 - 1)) t_3_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz__d1 n_7 ls_2_3 =
  (if (n_7 > 0) then
    (match (Lazy.force ls_2_3) with
      | `LH_C(h_2_2, t_3_0) -> 
        (`LH_C(h_2_2, ((take_lz__d1 (n_7 - 1)) t_3_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec chop__d0 _lh_chop_arg1_1 =
  (let rec chop'_1 = (fun a_1_2 n_9 -> 
    (let rec _lh_matchIdent_2_3 = ((divmod__d1 n_9) _lh_chop_arg1_1) in
      (match _lh_matchIdent_2_3 with
        | `LH_P2(_lh_chop_LH_P2_0_1, _lh_chop_LH_P2_1_1) -> 
          (if (n_9 = 0) then
            a_1_2
          else
            ((chop'_1 (`LH_C(_lh_chop_LH_P2_1_1, a_1_2))) _lh_chop_LH_P2_0_1))
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
  (let rec n_6 = (int_val_of_string__d0 _lh_doLine_arg1_1) in
    (let rec _lh_matchIdent_1_7 = (((multiTest__d0 100) _lh_doLine_arg3_1) n_6) in
      (match _lh_matchIdent_1_7 with
        | `LH_P2(_lh_doLine_LH_P2_0_1, _lh_doLine_LH_P2_1_1) -> 
          (if _lh_doLine_LH_P2_0_1 then
            (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))
          else
            (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1))))
        | _ -> 
          (failwith "error"))))
and findKQ__d0 _lh_findKQ_arg1_1 =
  (let rec f_1_6 = (fun _lh_f_arg1_2 -> 
    (match _lh_f_arg1_2 with
      | `LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2) -> 
        (let rec _lh_matchIdent_1_2 = ((divmod__d0 _lh_f_LH_P2_1_2) 2) in
          (match _lh_matchIdent_1_2 with
            | `LH_P2(_lh_f_LH_P2_0_3, _lh_f_LH_P2_1_3) -> 
              (if (_lh_f_LH_P2_1_3 = 0) then
                (f_1_6 (`LH_P2((_lh_f_LH_P2_0_2 + 1), _lh_f_LH_P2_0_3)))
              else
                (`LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))) in
    (f_1_6 (`LH_P2(0, (_lh_findKQ_arg1_1 - 1)))))
and int_val_of_string__d0 _lh_int_val_of_string_arg1_1 =
  (let rec f_1_9 = (fun _lh_f_arg1_3 _lh_f_arg2_1 -> 
    (match _lh_f_arg1_3 with
      | `LH_N -> 
        _lh_f_arg2_1
      | `LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1) -> 
        ((f_1_9 _lh_f_LH_C_1_1) ((10 * _lh_f_arg2_1) + (int_val_of_char__d0 _lh_f_LH_C_0_1)))
      | _ -> 
        (failwith "error"))) in
    ((f_1_9 _lh_int_val_of_string_arg1_1) 0))
and lines__d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_9 = ((break__d0 (fun x_1_3 -> 
    (x_1_3 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_9 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_2_0 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_2_0 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines__d0 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and makeNumber__d0 _lh_makeNumber_arg1_1 =
  ((foldl__d0 (fun a_1_1 x_1_4 -> 
    ((a_1_1 * _lh_makeNumber_arg1_1) + x_1_4))) 0)
and multiTest__d0 _lh_multiTest_arg1_1 _lh_multiTest_arg2_1 _lh_multiTest_arg3_1 =
  (let rec mTest_1 = (fun k_2 rs_1 -> 
    (if (k_2 = 0) then
      (`LH_P2(true, rs_1))
    else
      (let rec _lh_matchIdent_1_8 = (((singleTest__d0 _lh_multiTest_arg3_1) (findKQ__d0 _lh_multiTest_arg3_1)) rs_1) in
        (match _lh_matchIdent_1_8 with
          | `LH_P2(_lh_multiTest_LH_P2_0_1, _lh_multiTest_LH_P2_1_1) -> 
            (if _lh_multiTest_LH_P2_0_1 then
              ((mTest_1 (k_2 - 1)) _lh_multiTest_LH_P2_1_1)
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
        (let rec f_2_0 = (fun a_9 b_4 c_1 -> 
          (let rec g_1 = (fun a_1_0 b_5 -> 
            (if (even__d1 b_5) then
              ((g_1 ((a_1_0 * a_1_0) mod _lh_powerMod_arg3_1)) (b_5 / 2))
            else
              (((f_2_0 a_1_0) (b_5 - 1)) ((a_1_0 * c_1) mod _lh_powerMod_arg3_1)))) in
            (if (b_4 = 0) then
              c_1
            else
              ((g_1 a_9) b_4)))) in
          (((f_2_0 a'_1) (_lh_powerMod_arg2_1 - 1)) a'_1))))
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
    (let rec _lh_matchIdent_2_1 = ((splitAt_lz__d0 (length__d0 ns_1)) _lh_random_arg2_1) in
      (match _lh_matchIdent_2_1 with
        | `LH_P2(_lh_random_LH_P2_0_1, _lh_random_LH_P2_1_1) -> 
          (`LH_P2(((makeNumber__d0 65536) ((uniform__d0 ns_1) _lh_random_LH_P2_0_1)), _lh_random_LH_P2_1_1))
        | _ -> 
          (failwith "error"))))
and singleTestX__d0 _lh_singleTestX_arg1_1 _lh_singleTestX_arg2_1 _lh_singleTestX_arg3_1 =
  (match _lh_singleTestX_arg2_1 with
    | `LH_P2(_lh_singleTestX_LH_P2_0_1, _lh_singleTestX_LH_P2_1_1) -> 
      (let rec square_1 = (fun x_8 -> 
        ((x_8 * x_8) mod _lh_singleTestX_arg1_1)) in
        (let rec witness_1 = (fun ls_2_2 -> 
          (let rec _lh_matchIdent_1_3 = ls_2_2 in
            (match _lh_matchIdent_1_3 with
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
          (let rec _lh_matchIdent_1_4 = ((take_lz__d1 _lh_singleTestX_LH_P2_0_1) ((iterate__d0 square_1) (((powerMod__d0 _lh_singleTestX_arg3_1) _lh_singleTestX_LH_P2_1_1) _lh_singleTestX_arg1_1))) in
            (match _lh_matchIdent_1_4 with
              | `LH_C(_lh_singleTestX_LH_C_0_3, _lh_singleTestX_LH_C_1_3) -> 
                (((_lh_singleTestX_LH_C_0_3 = 1) || (_lh_singleTestX_LH_C_0_3 = (_lh_singleTestX_arg1_1 - 1))) || (witness_1 _lh_singleTestX_LH_C_1_3))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and singleTest__d0 _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 _lh_singleTest_arg3_1 =
  (let rec _lh_matchIdent_1_6 = ((random__d0 (_lh_singleTest_arg1_1 - 2)) _lh_singleTest_arg3_1) in
    (match _lh_matchIdent_1_6 with
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
                      (let rec t_2_7 = (_lh_uniform_LH_C_0_7 mod (_lh_uniform_LH_C_0_5 + 1)) in
                        (if (t_2_7 = _lh_uniform_LH_C_0_5) then
                          (`LH_C(t_2_7, ((uniform__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_7)))
                        else
                          (`LH_C(t_2_7, ((map__d0 (fun x_9 -> 
                            (x_9 mod 65536))) _lh_uniform_LH_C_1_7)))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_1 with
                | `LH_C(_lh_uniform_LH_C_0_8, _lh_uniform_LH_C_1_8) -> 
                  (let rec t_2_8 = (_lh_uniform_LH_C_0_8 mod (_lh_uniform_LH_C_0_5 + 1)) in
                    (if (t_2_8 = _lh_uniform_LH_C_0_5) then
                      (`LH_C(t_2_8, ((uniform__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_8)))
                    else
                      (`LH_C(t_2_8, ((map__d0 (fun x_1_0 -> 
                        (x_1_0 mod 65536))) _lh_uniform_LH_C_1_8)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_9, _lh_uniform_LH_C_1_9) -> 
              (let rec t_2_9 = (_lh_uniform_LH_C_0_9 mod (_lh_uniform_LH_C_0_5 + 1)) in
                (if (t_2_9 = _lh_uniform_LH_C_0_5) then
                  (`LH_C(t_2_9, ((uniform__d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_9)))
                else
                  (`LH_C(t_2_9, ((map__d0 (fun x_1_1 -> 
                    (x_1_1 mod 65536))) _lh_uniform_LH_C_1_9)))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;
end;;

