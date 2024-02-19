

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec break_lh__d1 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_9 = ((break_lh__d1 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec lines_lh__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_1_0 = ((break_lh__d1 (fun x_6 -> 
    (x_6 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_1_0 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_1_1 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_1_1 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh__d1 _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec divmod_lh__d1 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (`LH_P2((_lh_divmod_arg1_1 / _lh_divmod_arg2_1), (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1)));;
let rec findKQ_lh__d1 _lh_findKQ_arg1_0 =
  (let rec f_6 = (fun _lh_f_arg1_0 -> 
    (match _lh_f_arg1_0 with
      | `LH_P2(_lh_f_LH_P2_0_0, _lh_f_LH_P2_1_0) -> 
        (let rec _lh_matchIdent_5 = ((divmod_lh__d1 _lh_f_LH_P2_1_0) 2) in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_f_LH_P2_0_1, _lh_f_LH_P2_1_1) -> 
              (if (_lh_f_LH_P2_1_1 = 0) then
                (f_6 (`LH_P2((_lh_f_LH_P2_0_0 + 1), _lh_f_LH_P2_0_1)))
              else
                (`LH_P2(_lh_f_LH_P2_0_0, _lh_f_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))) in
    (f_6 (`LH_P2(0, (_lh_findKQ_arg1_0 - 1)))));;
let rec foldl_lh__d1 f_3 i_0 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (((foldl_lh__d1 f_3) ((f_3 i_0) h_3)) t_3)
    | `LH_N -> 
      i_0);;
let rec makeNumber_lh__d1 _lh_makeNumber_arg1_0 =
  ((foldl_lh__d1 (fun a_1 x_3 -> 
    ((a_1 * _lh_makeNumber_arg1_0) + x_3))) 0);;
let rec drop_lz_lh__d1 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (let rec _lh_matchIdent_0 = (Lazy.force _lh_drop_lz_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
        (if (_lh_drop_lz_arg1_0 > 0) then
          ((drop_lz_lh__d1 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0)
        else
          _lh_drop_lz_LH_C_1_0)
      | _ -> 
        (failwith "error")));;
let rec take_lz_lh__d2 n_0 ls_4 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_4) with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lz_lh__d2 (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec splitAt_lz_lh__d1 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (`LH_P2(((take_lz_lh__d2 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0), ((drop_lz_lh__d1 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0)));;
let rec map_lh__d2 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lh__d2 f_1) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d1 f_2 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_2 h_2), ((map_lh__d1 f_2) t_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d3 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d3 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec uniform_lh__d1 _lh_uniform_arg1_0 _lh_uniform_arg2_0 =
  (match _lh_uniform_arg1_0 with
    | `LH_C(_lh_uniform_LH_C_0_0, _lh_uniform_LH_C_1_0) -> 
      (match _lh_uniform_LH_C_1_0 with
        | `LH_N -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_1, _lh_uniform_LH_C_1_1) -> 
              (match _lh_uniform_LH_C_1_1 with
                | `LH_N -> 
                  (`LH_C((_lh_uniform_LH_C_0_1 mod _lh_uniform_LH_C_0_0), (`LH_N)))
                | _ -> 
                  (match _lh_uniform_arg2_0 with
                    | `LH_C(_lh_uniform_LH_C_0_2, _lh_uniform_LH_C_1_2) -> 
                      (let rec t_5 = (_lh_uniform_LH_C_0_2 mod (_lh_uniform_LH_C_0_0 + 1)) in
                        (if (t_5 = _lh_uniform_LH_C_0_0) then
                          (`LH_C(t_5, ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_2)))
                        else
                          (`LH_C(t_5, ((map_lh__d1 (fun x_0 -> 
                            (x_0 mod 65536))) _lh_uniform_LH_C_1_2)))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_0 with
                | `LH_C(_lh_uniform_LH_C_0_3, _lh_uniform_LH_C_1_3) -> 
                  (let rec t_6 = (_lh_uniform_LH_C_0_3 mod (_lh_uniform_LH_C_0_0 + 1)) in
                    (if (t_6 = _lh_uniform_LH_C_0_0) then
                      (`LH_C(t_6, ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_3)))
                    else
                      (`LH_C(t_6, ((map_lh__d2 (fun x_1 -> 
                        (x_1 mod 65536))) _lh_uniform_LH_C_1_3)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_4, _lh_uniform_LH_C_1_4) -> 
              (let rec t_7 = (_lh_uniform_LH_C_0_4 mod (_lh_uniform_LH_C_0_0 + 1)) in
                (if (t_7 = _lh_uniform_LH_C_0_0) then
                  (`LH_C(t_7, ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_4)))
                else
                  (`LH_C(t_7, ((map_lh__d3 (fun x_2 -> 
                    (x_2 mod 65536))) _lh_uniform_LH_C_1_4)))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec divmod_lh__d2 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (`LH_P2((_lh_divmod_arg1_0 / _lh_divmod_arg2_0), (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0)));;
let rec chop_lh__d1 _lh_chop_arg1_0 =
  (let rec chop'_0 = (fun a_0 n_1 -> 
    (let rec _lh_matchIdent_1 = ((divmod_lh__d2 n_1) _lh_chop_arg1_0) in
      (match _lh_matchIdent_1 with
        | `LH_P2(_lh_chop_LH_P2_0_0, _lh_chop_LH_P2_1_0) -> 
          (if (n_1 = 0) then
            a_0
          else
            ((chop'_0 (`LH_C(_lh_chop_LH_P2_1_0, a_0))) _lh_chop_LH_P2_0_0))
        | _ -> 
          (failwith "error")))) in
    (chop'_0 (`LH_N)));;
let rec length_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_8) -> 
      (1 + (length_lh__d1 t_8))
    | `LH_N -> 
      0);;
let rec random_lh__d1 _lh_random_arg1_0 _lh_random_arg2_0 =
  (let rec ns_0 = ((chop_lh__d1 65536) _lh_random_arg1_0) in
    (let rec _lh_matchIdent_2 = ((splitAt_lz_lh__d1 (length_lh__d1 ns_0)) _lh_random_arg2_0) in
      (match _lh_matchIdent_2 with
        | `LH_P2(_lh_random_LH_P2_0_0, _lh_random_LH_P2_1_0) -> 
          (`LH_P2(((makeNumber_lh__d1 65536) ((uniform_lh__d1 ns_0) _lh_random_LH_P2_0_0)), _lh_random_LH_P2_1_0))
        | _ -> 
          (failwith "error"))));;
let rec iterate_lh__d1 f_4 x_4 =
  (lazy (`LH_C(x_4, ((iterate_lh__d1 f_4) (f_4 x_4)))));;
let rec take_lz_lh__d1 n_2 ls_6 =
  (if (n_2 > 0) then
    (match (Lazy.force ls_6) with
      | `LH_C(h_6, t_9) -> 
        (`LH_C(h_6, ((take_lz_lh__d1 (n_2 - 1)) t_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec even_lh__d2 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec powerMod_lh__d1 _lh_powerMod_arg1_0 _lh_powerMod_arg2_0 _lh_powerMod_arg3_0 =
  (match _lh_powerMod_arg2_0 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_0 = (_lh_powerMod_arg1_0 mod _lh_powerMod_arg3_0) in
        (let rec f_5 = (fun a_2 b_0 c_0 -> 
          (let rec g_0 = (fun a_3 b_1 -> 
            (if (even_lh__d2 b_1) then
              ((g_0 ((a_3 * a_3) mod _lh_powerMod_arg3_0)) (b_1 / 2))
            else
              (((f_5 a_3) (b_1 - 1)) ((a_3 * c_0) mod _lh_powerMod_arg3_0)))) in
            (if (b_0 = 0) then
              c_0
            else
              ((g_0 a_2) b_0)))) in
          (((f_5 a'_0) (_lh_powerMod_arg2_0 - 1)) a'_0))));;
let rec singleTestX_lh__d1 _lh_singleTestX_arg1_0 _lh_singleTestX_arg2_0 _lh_singleTestX_arg3_0 =
  (match _lh_singleTestX_arg2_0 with
    | `LH_P2(_lh_singleTestX_LH_P2_0_0, _lh_singleTestX_LH_P2_1_0) -> 
      (let rec square_0 = (fun x_5 -> 
        ((x_5 * x_5) mod _lh_singleTestX_arg1_0)) in
        (let rec witness_0 = (fun ls_7 -> 
          (let rec _lh_matchIdent_3 = ls_7 in
            (match _lh_matchIdent_3 with
              | `LH_N -> 
                false
              | `LH_C(_lh_singleTestX_LH_C_0_0, _lh_singleTestX_LH_C_1_0) -> 
                (if (_lh_singleTestX_LH_C_0_0 = (_lh_singleTestX_arg1_0 - 1)) then
                  true
                else
                  (if (_lh_singleTestX_LH_C_0_0 = 1) then
                    false
                  else
                    (witness_0 _lh_singleTestX_LH_C_1_0)))
              | _ -> 
                (failwith "error")))) in
          (let rec _lh_matchIdent_4 = ((take_lz_lh__d1 _lh_singleTestX_LH_P2_0_0) ((iterate_lh__d1 square_0) (((powerMod_lh__d1 _lh_singleTestX_arg3_0) _lh_singleTestX_LH_P2_1_0) _lh_singleTestX_arg1_0))) in
            (match _lh_matchIdent_4 with
              | `LH_C(_lh_singleTestX_LH_C_0_1, _lh_singleTestX_LH_C_1_1) -> 
                (((_lh_singleTestX_LH_C_0_1 = 1) || (_lh_singleTestX_LH_C_0_1 = (_lh_singleTestX_arg1_0 - 1))) || (witness_0 _lh_singleTestX_LH_C_1_1))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec singleTest_lh__d1 _lh_singleTest_arg1_0 _lh_singleTest_arg2_0 _lh_singleTest_arg3_0 =
  (let rec _lh_matchIdent_6 = ((random_lh__d1 (_lh_singleTest_arg1_0 - 2)) _lh_singleTest_arg3_0) in
    (match _lh_matchIdent_6 with
      | `LH_P2(_lh_singleTest_LH_P2_0_0, _lh_singleTest_LH_P2_1_0) -> 
        (`LH_P2((((singleTestX_lh__d1 _lh_singleTest_arg1_0) _lh_singleTest_arg2_0) (2 + _lh_singleTest_LH_P2_0_0)), _lh_singleTest_LH_P2_1_0))
      | _ -> 
        (failwith "error")));;
let rec even_lh__d1 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec multiTest_lh__d1 _lh_multiTest_arg1_0 _lh_multiTest_arg2_0 _lh_multiTest_arg3_0 =
  (let rec mTest_0 = (fun k_0 rs_0 -> 
    (if (k_0 = 0) then
      (`LH_P2(true, rs_0))
    else
      (let rec _lh_matchIdent_7 = (((singleTest_lh__d1 _lh_multiTest_arg3_0) (findKQ_lh__d1 _lh_multiTest_arg3_0)) rs_0) in
        (match _lh_matchIdent_7 with
          | `LH_P2(_lh_multiTest_LH_P2_0_0, _lh_multiTest_LH_P2_1_0) -> 
            (if _lh_multiTest_LH_P2_0_0 then
              ((mTest_0 (k_0 - 1)) _lh_multiTest_LH_P2_1_0)
            else
              (`LH_P2(false, _lh_multiTest_LH_P2_1_0)))
          | _ -> 
            (failwith "error"))))) in
    (if ((_lh_multiTest_arg3_0 <= 1) || (even_lh__d1 _lh_multiTest_arg3_0)) then
      (`LH_P2((_lh_multiTest_arg3_0 = 2), _lh_multiTest_arg2_0))
    else
      ((mTest_0 _lh_multiTest_arg1_0) _lh_multiTest_arg2_0)));;
let rec int_val_of_char_lh__d1 _lh_int_val_of_char_arg1_0 =
  ((int_of_char _lh_int_val_of_char_arg1_0) - 48);;
let rec int_val_of_string_lh__d1 _lh_int_val_of_string_arg1_0 =
  (let rec f_7 = (fun _lh_f_arg1_1 _lh_f_arg2_0 -> 
    (match _lh_f_arg1_1 with
      | `LH_N -> 
        _lh_f_arg2_0
      | `LH_C(_lh_f_LH_C_0_0, _lh_f_LH_C_1_0) -> 
        ((f_7 _lh_f_LH_C_1_0) ((10 * _lh_f_arg2_0) + (int_val_of_char_lh__d1 _lh_f_LH_C_0_0)))
      | _ -> 
        (failwith "error"))) in
    ((f_7 _lh_int_val_of_string_arg1_0) 0));;
let rec doLine_lh__d1 _lh_doLine_arg1_0 _lh_doLine_arg2_0 _lh_doLine_arg3_0 =
  (let rec n_3 = (int_val_of_string_lh__d1 _lh_doLine_arg1_0) in
    (let rec _lh_matchIdent_8 = (((multiTest_lh__d1 100) _lh_doLine_arg3_0) n_3) in
      (match _lh_matchIdent_8 with
        | `LH_P2(_lh_doLine_LH_P2_0_0, _lh_doLine_LH_P2_1_0) -> 
          (if _lh_doLine_LH_P2_0_0 then
            (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))
          else
            (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0))))
        | _ -> 
          (failwith "error"))));;
let rec doInput_lh__d1 _lh_doInput_arg1_0 _lh_doInput_arg2_0 =
  (match _lh_doInput_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_doInput_LH_C_0_0, _lh_doInput_LH_C_1_0) -> 
      (((doLine_lh__d1 _lh_doInput_LH_C_0_0) (fun state_0 -> 
        ((doInput_lh__d1 state_0) _lh_doInput_LH_C_1_0))) _lh_doInput_arg1_0)
    | _ -> 
      (failwith "error"));;
let rec rands_lh__d1 _lh_rands_arg1_0 _lh_rands_arg2_0 =
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
                  (lazy (`LH_C((z_0 + 2147483562), ((rands_lh__d1 s1''_0) s2''_0))))
                else
                  (lazy (`LH_C(z_0, ((rands_lh__d1 s1''_0) s2''_0))))))))))));;
let rec randomInts_lh__d1 _lh_randomInts_arg1_0 _lh_randomInts_arg2_0 =
  (if ((1 <= _lh_randomInts_arg1_0) && (_lh_randomInts_arg1_0 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_0) && (_lh_randomInts_arg2_0 <= 2147483398)) then
      ((rands_lh__d1 _lh_randomInts_arg1_0) _lh_randomInts_arg2_0)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec process_lh__d1 _lh_process_arg1_0 =
  ((doInput_lh__d1 ((randomInts_lh__d1 111) 47)) _lh_process_arg1_0);;
let rec testPrimetest_nofib_lh__d1 _lh_testPrimetest_nofib_arg1_0 =
  (let rec cts_0 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_lh__d1 (lines_lh__d1 cts_0)));;
end;;

