

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______ = struct
let rec rands_lh__d1 _lh_rands_arg1_0 _lh_rands_arg2_0 =
  (let rec k_2 = (_lh_rands_arg1_0 / 53668) in
    (let rec s1'_0 = ((40014 * (_lh_rands_arg1_0 - (k_2 * 53668))) - (k_2 * 12211)) in
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
  (_lh_process_arg1_0 ((randomInts_lh__d1 111) 47));;
let rec drop_lz_lh__d1 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (let rec _lh_matchIdent_6 = (Lazy.force _lh_drop_lz_arg2_0) in
    (match _lh_matchIdent_6 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
        (if (_lh_drop_lz_arg1_0 > 0) then
          ((drop_lz_lh__d1 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0)
        else
          _lh_drop_lz_LH_C_1_0)
      | _ -> 
        (failwith "error")));;
let rec makeNumber_lh__d1 _lh_makeNumber_arg1_0 ls_4 =
  ((ls_4 (fun a_4 x_0 -> 
    ((a_4 * _lh_makeNumber_arg1_0) + x_0))) 0);;
let rec map_lh__d2 f_2 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map_lh__d2 f_2) t_0) in
        (let rec h_1 = (f_2 h_0) in
          (fun f_3 i_1 -> 
            ((t_1 f_3) ((f_3 i_1) h_1)))))
    | `LH_N -> 
      (fun f_4 i_2 -> 
        i_2));;
let rec map_lh__d1 f_5 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lh__d1 f_5) t_2) in
        (let rec h_3 = (f_5 h_2) in
          (fun f_6 i_3 -> 
            ((t_3 f_6) ((f_6 i_3) h_3)))))
    | `LH_N -> 
      (fun f_7 i_4 -> 
        i_4));;
let rec map_lh__d3 f_2_8 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_4, t_1_7) -> 
      (let rec t_1_8 = ((map_lh__d3 f_2_8) t_1_7) in
        (let rec h_1_5 = (f_2_8 h_1_4) in
          (fun f_2_9 i_1_3 -> 
            ((t_1_8 f_2_9) ((f_2_9 i_1_3) h_1_5)))))
    | `LH_N -> 
      (fun f_3_0 i_1_4 -> 
        i_1_4));;
let rec uniform_lh__d1 _lh_uniform_arg1_0 _lh_uniform_arg2_0 =
  (match _lh_uniform_arg1_0 with
    | `LH_C(_lh_uniform_LH_C_0_0, _lh_uniform_LH_C_1_0) -> 
      (match _lh_uniform_LH_C_1_0 with
        | `LH_N -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_1, _lh_uniform_LH_C_1_1) -> 
              (match _lh_uniform_LH_C_1_1 with
                | `LH_N -> 
                  (let rec t_5 = (fun f_1_3 i_5 -> 
                    i_5) in
                    (let rec h_5 = (_lh_uniform_LH_C_0_1 mod _lh_uniform_LH_C_0_0) in
                      (fun f_1_4 i_6 -> 
                        ((t_5 f_1_4) ((f_1_4 i_6) h_5)))))
                | _ -> 
                  (match _lh_uniform_arg2_0 with
                    | `LH_C(_lh_uniform_LH_C_0_2, _lh_uniform_LH_C_1_2) -> 
                      (let rec t_6 = (_lh_uniform_LH_C_0_2 mod (_lh_uniform_LH_C_0_0 + 1)) in
                        (if (t_6 = _lh_uniform_LH_C_0_0) then
                          (let rec t_7 = ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_2) in
                            (let rec h_6 = t_6 in
                              (fun f_1_5 i_7 -> 
                                ((t_7 f_1_5) ((f_1_5 i_7) h_6)))))
                        else
                          (let rec t_8 = ((map_lh__d1 (fun x_2 -> 
                            (x_2 mod 65536))) _lh_uniform_LH_C_1_2) in
                            (let rec h_7 = t_6 in
                              (fun f_1_6 i_8 -> 
                                ((t_8 f_1_6) ((f_1_6 i_8) h_7)))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_0 with
                | `LH_C(_lh_uniform_LH_C_0_3, _lh_uniform_LH_C_1_3) -> 
                  (let rec t_9 = (_lh_uniform_LH_C_0_3 mod (_lh_uniform_LH_C_0_0 + 1)) in
                    (if (t_9 = _lh_uniform_LH_C_0_0) then
                      (let rec t_1_0 = ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_3) in
                        (let rec h_8 = t_9 in
                          (fun f_1_7 i_9 -> 
                            ((t_1_0 f_1_7) ((f_1_7 i_9) h_8)))))
                    else
                      (let rec t_1_1 = ((map_lh__d2 (fun x_3 -> 
                        (x_3 mod 65536))) _lh_uniform_LH_C_1_3) in
                        (let rec h_9 = t_9 in
                          (fun f_1_8 i_1_0 -> 
                            ((t_1_1 f_1_8) ((f_1_8 i_1_0) h_9)))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_4, _lh_uniform_LH_C_1_4) -> 
              (let rec t_1_2 = (_lh_uniform_LH_C_0_4 mod (_lh_uniform_LH_C_0_0 + 1)) in
                (if (t_1_2 = _lh_uniform_LH_C_0_0) then
                  (let rec t_1_3 = ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_0 = t_1_2 in
                      (fun f_1_9 i_1_1 -> 
                        ((t_1_3 f_1_9) ((f_1_9 i_1_1) h_1_0)))))
                else
                  (let rec t_1_4 = ((map_lh__d3 (fun x_4 -> 
                    (x_4 mod 65536))) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_1 = t_1_2 in
                      (fun f_2_0 i_1_2 -> 
                        ((t_1_4 f_2_0) ((f_2_0 i_1_2) h_1_1)))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec iterate_lh__d1 f_2_7 x_6 =
  (lazy (let rec t_1_6 = ((iterate_lh__d1 f_2_7) (f_2_7 x_6)) in
    (let rec h_1_3 = x_6 in
      (fun n_9 -> 
        (`LH_C(h_1_3, (if ((n_9 - 1) > 0) then
          ((Lazy.force t_1_6) (n_9 - 1))
        else
          (`LH_N))))))));;
let rec even_lh__d2 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec powerMod_lh__d1 _lh_powerMod_arg1_0 _lh_powerMod_arg2_0 _lh_powerMod_arg3_0 =
  (match _lh_powerMod_arg2_0 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_0 = (_lh_powerMod_arg1_0 mod _lh_powerMod_arg3_0) in
        (let rec f_0 = (fun a_0 b_0 c_0 -> 
          (let rec g_0 = (fun a_1 b_1 -> 
            (if (even_lh__d2 b_1) then
              ((g_0 ((a_1 * a_1) mod _lh_powerMod_arg3_0)) (b_1 / 2))
            else
              (((f_0 a_1) (b_1 - 1)) ((a_1 * c_0) mod _lh_powerMod_arg3_0)))) in
            (if (b_0 = 0) then
              c_0
            else
              ((g_0 a_0) b_0)))) in
          (((f_0 a'_0) (_lh_powerMod_arg2_0 - 1)) a'_0))));;
let rec singleTestX_lh__d1 _lh_singleTestX_arg1_0 _lh_singleTestX_arg2_0 _lh_singleTestX_arg3_0 =
  (match _lh_singleTestX_arg2_0 with
    | `LH_P2(_lh_singleTestX_LH_P2_0_0, _lh_singleTestX_LH_P2_1_0) -> 
      (let rec square_0 = (fun x_8 -> 
        ((x_8 * x_8) mod _lh_singleTestX_arg1_0)) in
        (let rec witness_0 = (fun ls_8 -> 
          (let rec _lh_matchIdent_4_4 = ls_8 in
            (match _lh_matchIdent_4_4 with
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
          (let rec _lh_matchIdent_4_5 = (if (_lh_singleTestX_LH_P2_0_0 > 0) then
            ((Lazy.force ((iterate_lh__d1 square_0) (((powerMod_lh__d1 _lh_singleTestX_arg3_0) _lh_singleTestX_LH_P2_1_0) _lh_singleTestX_arg1_0))) _lh_singleTestX_LH_P2_0_0)
          else
            (`LH_N)) in
            (match _lh_matchIdent_4_5 with
              | `LH_C(_lh_singleTestX_LH_C_0_1, _lh_singleTestX_LH_C_1_1) -> 
                (((_lh_singleTestX_LH_C_0_1 = 1) || (_lh_singleTestX_LH_C_0_1 = (_lh_singleTestX_arg1_0 - 1))) || (witness_0 _lh_singleTestX_LH_C_1_1))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec take_lz_lh__d2 n_2 ls_3 =
  (if (n_2 > 0) then
    (match (Lazy.force ls_3) with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lz_lh__d2 (n_2 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec splitAt_lz_lh__d1 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_random_LH_P2_1_0 = ((drop_lz_lh__d1 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_random_LH_P2_0_0 = ((take_lz_lh__d2 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun ns_0 -> 
        (let rec _lh_singleTest_LH_P2_1_0 = _lh_random_LH_P2_1_0 in
          (let rec _lh_singleTest_LH_P2_0_0 = ((makeNumber_lh__d1 65536) ((uniform_lh__d1 ns_0) _lh_random_LH_P2_0_0)) in
            (fun _lh_singleTest_arg1_0 _lh_singleTest_arg2_0 -> 
              (let rec _lh_multiTest_LH_P2_1_0 = _lh_singleTest_LH_P2_1_0 in
                (let rec _lh_multiTest_LH_P2_0_0 = (((singleTestX_lh__d1 _lh_singleTest_arg1_0) _lh_singleTest_arg2_0) (2 + _lh_singleTest_LH_P2_0_0)) in
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
                              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))))))))))))))));;
let rec divmod_lh__d1 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (let rec _lh_f_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_f_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (fun _lh_f_LH_P2_0_1 _lh_f_LH_P2_1_1 f_8 -> 
        (if (_lh_f_LH_P2_1_0 = 0) then
          (f_8 (`LH_P2((_lh_f_LH_P2_0_1 + 1), _lh_f_LH_P2_0_0)))
        else
          (`LH_P2(_lh_f_LH_P2_0_1, _lh_f_LH_P2_1_1))))));;
let rec even_lh__d1 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec divmod_lh__d2 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (let rec _lh_chop_LH_P2_1_0 = (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1) in
    (let rec _lh_chop_LH_P2_0_0 = (_lh_divmod_arg1_1 / _lh_divmod_arg2_1) in
      (fun a_1_0 chop'_7 n_1_3 -> 
        (if (n_1_3 = 0) then
          a_1_0
        else
          ((chop'_7 (`LH_C(_lh_chop_LH_P2_1_0, a_1_0))) _lh_chop_LH_P2_0_0)))));;
let rec int_val_of_char_lh__d1 _lh_int_val_of_char_arg1_0 =
  ((int_of_char _lh_int_val_of_char_arg1_0) - 48);;
let rec length_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_2, t_1_5) -> 
      (1 + (length_lh__d1 t_1_5))
    | `LH_N -> 
      0);;
let rec break_lh__d1 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_2 f_2_1 -> 
        _lh_f_arg2_2), (fun _lh_dummy_0 _lh_doInput_arg1_1 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((fun _lh_f_arg2_3 f_2_2 -> 
          _lh_f_arg2_3), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (fun _lh_dummy_1 -> 
            (let rec _lh_matchIdent_2_0 = ((break_lh__d1 (fun x_5 -> 
              (x_5 = '|'))) _lh_lines_LH_C_1_0) in
              (match _lh_matchIdent_2_0 with
                | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
                  (let rec _lh_doInput_LH_C_1_1 = (let rec _lh_matchIdent_2_1 = _lh_lines_LH_P2_1_1 in
                    (_lh_matchIdent_2_1 99)) in
                    (let rec _lh_doInput_LH_C_0_1 = _lh_lines_LH_P2_0_1 in
                      (fun _lh_doInput_arg1_2 -> 
                        (let rec n_7 = (let rec f_2_3 = (fun _lh_f_arg1_4 _lh_f_arg2_4 -> 
                          ((_lh_f_arg1_4 _lh_f_arg2_4) f_2_3)) in
                          ((f_2_3 _lh_doInput_LH_C_0_1) 0)) in
                          (let rec _lh_matchIdent_2_2 = (let rec mTest_3 = (fun k_4 rs_2 -> 
                            (if (k_4 = 0) then
                              (let rec _lh_doLine_LH_P2_1_5 = rs_2 in
                                (let rec _lh_doLine_LH_P2_0_5 = true in
                                  (fun _lh_doLine_arg2_5 -> 
                                    (if _lh_doLine_LH_P2_0_5 then
                                      (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_5 _lh_doLine_LH_P2_1_5)))
                                    else
                                      (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_5 _lh_doLine_LH_P2_1_5)))))))
                            else
                              (let rec _lh_matchIdent_2_3 = (let rec _lh_matchIdent_2_4 = (let rec ns_5 = (let rec chop'_5 = (fun a_8 n_8 -> 
                                (let rec _lh_matchIdent_2_5 = ((divmod_lh__d2 n_8) 65536) in
                                  (((_lh_matchIdent_2_5 a_8) chop'_5) n_8))) in
                                ((chop'_5 (`LH_N)) (n_7 - 2))) in
                                (let rec _lh_matchIdent_2_6 = ((splitAt_lz_lh__d1 (length_lh__d1 ns_5)) rs_2) in
                                  (_lh_matchIdent_2_6 ns_5))) in
                                ((_lh_matchIdent_2_4 n_7) (let rec f_2_4 = (fun _lh_f_arg1_5 -> 
                                  (match _lh_f_arg1_5 with
                                    | `LH_P2(_lh_f_LH_P2_0_4, _lh_f_LH_P2_1_4) -> 
                                      (let rec _lh_matchIdent_2_7 = ((divmod_lh__d1 _lh_f_LH_P2_1_4) 2) in
                                        (((_lh_matchIdent_2_7 _lh_f_LH_P2_0_4) _lh_f_LH_P2_1_4) f_2_4))
                                    | _ -> 
                                      (failwith "error"))) in
                                  (f_2_4 (`LH_P2(0, (n_7 - 1))))))) in
                                ((_lh_matchIdent_2_3 k_4) mTest_3)))) in
                            (if ((n_7 <= 1) || (even_lh__d1 n_7)) then
                              (let rec _lh_doLine_LH_P2_1_6 = _lh_doInput_arg1_2 in
                                (let rec _lh_doLine_LH_P2_0_6 = (n_7 = 2) in
                                  (fun _lh_doLine_arg2_6 -> 
                                    (if _lh_doLine_LH_P2_0_6 then
                                      (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_6 _lh_doLine_LH_P2_1_6)))
                                    else
                                      (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_6 _lh_doLine_LH_P2_1_6)))))))
                            else
                              ((mTest_3 100) _lh_doInput_arg1_2))) in
                            (_lh_matchIdent_2_2 (fun state_1 -> 
                              (_lh_doInput_LH_C_1_1 state_1))))))))
                | _ -> 
                  (failwith "error")))))))
      else
        (let rec _lh_matchIdent_2_8 = ((break_lh__d1 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_2_8 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((let rec _lh_f_LH_C_1_0 = _lh_break_LH_P2_0_0 in
                (let rec _lh_f_LH_C_0_0 = _lh_break_LH_C_0_0 in
                  (fun _lh_f_arg2_5 f_2_5 -> 
                    ((f_2_5 _lh_f_LH_C_1_0) ((10 * _lh_f_arg2_5) + (int_val_of_char_lh__d1 _lh_f_LH_C_0_0)))))), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec testPrimetest_nofib_lh__d1 _lh_testPrimetest_nofib_arg1_0 =
  (let rec cts_0 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_lh__d1 (let rec _lh_matchIdent_3_0 = ((break_lh__d1 (fun x_7 -> 
      (x_7 = '|'))) cts_0) in
      (match _lh_matchIdent_3_0 with
        | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
          (let rec _lh_doInput_LH_C_1_2 = (let rec _lh_matchIdent_3_1 = _lh_lines_LH_P2_1_2 in
            (_lh_matchIdent_3_1 99)) in
            (let rec _lh_doInput_LH_C_0_2 = _lh_lines_LH_P2_0_2 in
              (fun _lh_doInput_arg1_3 -> 
                (let rec n_1_0 = (let rec f_3_1 = (fun _lh_f_arg1_7 _lh_f_arg2_6 -> 
                  ((_lh_f_arg1_7 _lh_f_arg2_6) f_3_1)) in
                  ((f_3_1 _lh_doInput_LH_C_0_2) 0)) in
                  (let rec _lh_matchIdent_3_2 = (let rec mTest_4 = (fun k_5 rs_3 -> 
                    (if (k_5 = 0) then
                      (let rec _lh_doLine_LH_P2_1_7 = rs_3 in
                        (let rec _lh_doLine_LH_P2_0_7 = true in
                          (fun _lh_doLine_arg2_7 -> 
                            (if _lh_doLine_LH_P2_0_7 then
                              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_7 _lh_doLine_LH_P2_1_7)))
                            else
                              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_7 _lh_doLine_LH_P2_1_7)))))))
                    else
                      (let rec _lh_matchIdent_3_3 = (let rec _lh_matchIdent_3_4 = (let rec ns_6 = (let rec chop'_6 = (fun a_9 n_1_1 -> 
                        (let rec _lh_matchIdent_3_5 = ((divmod_lh__d2 n_1_1) 65536) in
                          (((_lh_matchIdent_3_5 a_9) chop'_6) n_1_1))) in
                        ((chop'_6 (`LH_N)) (n_1_0 - 2))) in
                        (let rec _lh_matchIdent_3_6 = ((splitAt_lz_lh__d1 (length_lh__d1 ns_6)) rs_3) in
                          (_lh_matchIdent_3_6 ns_6))) in
                        ((_lh_matchIdent_3_4 n_1_0) (let rec f_3_2 = (fun _lh_f_arg1_8 -> 
                          (match _lh_f_arg1_8 with
                            | `LH_P2(_lh_f_LH_P2_0_6, _lh_f_LH_P2_1_6) -> 
                              (let rec _lh_matchIdent_3_7 = ((divmod_lh__d1 _lh_f_LH_P2_1_6) 2) in
                                (((_lh_matchIdent_3_7 _lh_f_LH_P2_0_6) _lh_f_LH_P2_1_6) f_3_2))
                            | _ -> 
                              (failwith "error"))) in
                          (f_3_2 (`LH_P2(0, (n_1_0 - 1))))))) in
                        ((_lh_matchIdent_3_3 k_5) mTest_4)))) in
                    (if ((n_1_0 <= 1) || (even_lh__d1 n_1_0)) then
                      (let rec _lh_doLine_LH_P2_1_8 = _lh_doInput_arg1_3 in
                        (let rec _lh_doLine_LH_P2_0_8 = (n_1_0 = 2) in
                          (fun _lh_doLine_arg2_8 -> 
                            (if _lh_doLine_LH_P2_0_8 then
                              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_8 _lh_doLine_LH_P2_1_8)))
                            else
                              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_8 _lh_doLine_LH_P2_1_8)))))))
                    else
                      ((mTest_4 100) _lh_doInput_arg1_3))) in
                    (_lh_matchIdent_3_2 (fun state_2 -> 
                      (_lh_doInput_LH_C_1_2 state_2))))))))
        | _ -> 
          (failwith "error")))));;
end;;

