

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec rands_lh _lh_rands_arg1_0 _lh_rands_arg2_0 =
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
                  (lazy (`LH_C((z_0 + 2147483562), ((rands_lh s1''_0) s2''_0))))
                else
                  (lazy (`LH_C(z_0, ((rands_lh s1''_0) s2''_0))))))))))));;
let rec doInput_lh _lh_doInput_arg1_2 _lh_doInput_arg2_0 =
  (_lh_doInput_arg2_0 _lh_doInput_arg1_2);;
let rec even_lh _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec divmod_lh _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (`LH_P2((_lh_divmod_arg1_0 / _lh_divmod_arg2_0), (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0)));;
let rec take_lz_lh n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (`LH_C(h_0, ((take_lz_lh (n_0 - 1)) t_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec iterate_lh f_5 x_3 =
  (lazy (`LH_C(x_3, ((iterate_lh f_5) (f_5 x_3)))));;
let rec foldl_lh f_7 i_0 ls_3 =
  ((ls_3 f_7) i_0);;
let rec drop_lz_lh _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (let rec _lh_matchIdent_6 = (Lazy.force _lh_drop_lz_arg2_0) in
    (match _lh_matchIdent_6 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
        (if (_lh_drop_lz_arg1_0 > 0) then
          ((drop_lz_lh (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0)
        else
          _lh_drop_lz_LH_C_1_0)
      | _ -> 
        (failwith "error")));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh t_1))
    | `LH_N -> 
      0);;
let rec int_val_of_string_lh _lh_int_val_of_string_arg1_0 =
  (let rec f_6 = (fun _lh_f_arg1_1 _lh_f_arg2_3 -> 
    ((_lh_f_arg1_1 _lh_f_arg2_3) f_6)) in
    ((f_6 _lh_int_val_of_string_arg1_0) 0));;
let rec int_val_of_char_lh _lh_int_val_of_char_arg1_0 =
  ((int_of_char _lh_int_val_of_char_arg1_0) - 48);;
let rec randomInts_lh _lh_randomInts_arg1_0 _lh_randomInts_arg2_0 =
  (if ((1 <= _lh_randomInts_arg1_0) && (_lh_randomInts_arg1_0 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_0) && (_lh_randomInts_arg2_0 <= 2147483398)) then
      ((rands_lh _lh_randomInts_arg1_0) _lh_randomInts_arg2_0)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec findKQ_lh _lh_findKQ_arg1_0 =
  (let rec f_1 = (fun _lh_f_arg1_0 -> 
    (match _lh_f_arg1_0 with
      | `LH_P2(_lh_f_LH_P2_0_0, _lh_f_LH_P2_1_0) -> 
        (let rec _lh_matchIdent_4 = ((divmod_lh _lh_f_LH_P2_1_0) 2) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_f_LH_P2_0_1, _lh_f_LH_P2_1_1) -> 
              (if (_lh_f_LH_P2_1_1 = 0) then
                (f_1 (`LH_P2((_lh_f_LH_P2_0_0 + 1), _lh_f_LH_P2_0_1)))
              else
                (`LH_P2(_lh_f_LH_P2_0_0, _lh_f_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))) in
    (f_1 (`LH_P2(0, (_lh_findKQ_arg1_0 - 1)))));;
let rec powerMod_lh _lh_powerMod_arg1_0 _lh_powerMod_arg2_0 _lh_powerMod_arg3_0 =
  (match _lh_powerMod_arg2_0 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_0 = (_lh_powerMod_arg1_0 mod _lh_powerMod_arg3_0) in
        (let rec f_0 = (fun a_0 b_0 c_0 -> 
          (let rec g_0 = (fun a_1 b_1 -> 
            (if (even_lh b_1) then
              ((g_0 ((a_1 * a_1) mod _lh_powerMod_arg3_0)) (b_1 / 2))
            else
              (((f_0 a_1) (b_1 - 1)) ((a_1 * c_0) mod _lh_powerMod_arg3_0)))) in
            (if (b_0 = 0) then
              c_0
            else
              ((g_0 a_0) b_0)))) in
          (((f_0 a'_0) (_lh_powerMod_arg2_0 - 1)) a'_0))));;
let rec makeNumber_lh _lh_makeNumber_arg1_0 =
  ((foldl_lh (fun a_3 x_2 -> 
    ((a_3 * _lh_makeNumber_arg1_0) + x_2))) 0);;
let rec map_lh f_8 ls_4 =
  (match ls_4 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lh f_8) t_2) in
        (let rec h_3 = (f_8 h_2) in
          (fun f_9 i_1 -> 
            (((foldl_lh f_9) ((f_9 i_1) h_3)) t_3))))
    | `LH_N -> 
      (fun f_1_0 i_2 -> 
        i_2));;
let rec chop_lh _lh_chop_arg1_0 =
  (let rec chop'_0 = (fun a_2 n_2 -> 
    (let rec _lh_matchIdent_8 = ((divmod_lh n_2) _lh_chop_arg1_0) in
      (match _lh_matchIdent_8 with
        | `LH_P2(_lh_chop_LH_P2_0_0, _lh_chop_LH_P2_1_0) -> 
          (if (n_2 = 0) then
            a_2
          else
            ((chop'_0 (`LH_C(_lh_chop_LH_P2_1_0, a_2))) _lh_chop_LH_P2_0_0))
        | _ -> 
          (failwith "error")))) in
    (chop'_0 (`LH_N)));;
let rec process_lh _lh_process_arg1_0 =
  ((doInput_lh ((randomInts_lh 111) 47)) _lh_process_arg1_0);;
let rec singleTestX_lh _lh_singleTestX_arg1_0 _lh_singleTestX_arg2_0 _lh_singleTestX_arg3_0 =
  (match _lh_singleTestX_arg2_0 with
    | `LH_P2(_lh_singleTestX_LH_P2_0_0, _lh_singleTestX_LH_P2_1_0) -> 
      (let rec square_0 = (fun x_1 -> 
        ((x_1 * x_1) mod _lh_singleTestX_arg1_0)) in
        (let rec witness_0 = (fun ls_1 -> 
          (let rec _lh_matchIdent_9 = ls_1 in
            (match _lh_matchIdent_9 with
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
          (let rec _lh_matchIdent_1_0 = ((take_lz_lh _lh_singleTestX_LH_P2_0_0) ((iterate_lh square_0) (((powerMod_lh _lh_singleTestX_arg3_0) _lh_singleTestX_LH_P2_1_0) _lh_singleTestX_arg1_0))) in
            (match _lh_matchIdent_1_0 with
              | `LH_C(_lh_singleTestX_LH_C_0_1, _lh_singleTestX_LH_C_1_1) -> 
                (((_lh_singleTestX_LH_C_0_1 = 1) || (_lh_singleTestX_LH_C_0_1 = (_lh_singleTestX_arg1_0 - 1))) || (witness_0 _lh_singleTestX_LH_C_1_1))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec uniform_lh _lh_uniform_arg1_0 _lh_uniform_arg2_0 =
  (match _lh_uniform_arg1_0 with
    | `LH_C(_lh_uniform_LH_C_0_0, _lh_uniform_LH_C_1_0) -> 
      (match _lh_uniform_LH_C_1_0 with
        | `LH_N -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_1, _lh_uniform_LH_C_1_1) -> 
              (match _lh_uniform_LH_C_1_1 with
                | `LH_N -> 
                  (let rec t_4 = (fun f_1_1 i_3 -> 
                    i_3) in
                    (let rec h_4 = (_lh_uniform_LH_C_0_1 mod _lh_uniform_LH_C_0_0) in
                      (fun f_1_2 i_4 -> 
                        (((foldl_lh f_1_2) ((f_1_2 i_4) h_4)) t_4))))
                | _ -> 
                  (match _lh_uniform_arg2_0 with
                    | `LH_C(_lh_uniform_LH_C_0_2, _lh_uniform_LH_C_1_2) -> 
                      (let rec t_5 = (_lh_uniform_LH_C_0_2 mod (_lh_uniform_LH_C_0_0 + 1)) in
                        (if (t_5 = _lh_uniform_LH_C_0_0) then
                          (let rec t_6 = ((uniform_lh _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_2) in
                            (let rec h_5 = t_5 in
                              (fun f_1_3 i_5 -> 
                                (((foldl_lh f_1_3) ((f_1_3 i_5) h_5)) t_6))))
                        else
                          (let rec t_7 = ((map_lh (fun x_4 -> 
                            (x_4 mod 65536))) _lh_uniform_LH_C_1_2) in
                            (let rec h_6 = t_5 in
                              (fun f_1_4 i_6 -> 
                                (((foldl_lh f_1_4) ((f_1_4 i_6) h_6)) t_7))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_0 with
                | `LH_C(_lh_uniform_LH_C_0_3, _lh_uniform_LH_C_1_3) -> 
                  (let rec t_8 = (_lh_uniform_LH_C_0_3 mod (_lh_uniform_LH_C_0_0 + 1)) in
                    (if (t_8 = _lh_uniform_LH_C_0_0) then
                      (let rec t_9 = ((uniform_lh _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_3) in
                        (let rec h_7 = t_8 in
                          (fun f_1_5 i_7 -> 
                            (((foldl_lh f_1_5) ((f_1_5 i_7) h_7)) t_9))))
                    else
                      (let rec t_1_0 = ((map_lh (fun x_5 -> 
                        (x_5 mod 65536))) _lh_uniform_LH_C_1_3) in
                        (let rec h_8 = t_8 in
                          (fun f_1_6 i_8 -> 
                            (((foldl_lh f_1_6) ((f_1_6 i_8) h_8)) t_1_0))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_4, _lh_uniform_LH_C_1_4) -> 
              (let rec t_1_1 = (_lh_uniform_LH_C_0_4 mod (_lh_uniform_LH_C_0_0 + 1)) in
                (if (t_1_1 = _lh_uniform_LH_C_0_0) then
                  (let rec t_1_2 = ((uniform_lh _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_4) in
                    (let rec h_9 = t_1_1 in
                      (fun f_1_7 i_9 -> 
                        (((foldl_lh f_1_7) ((f_1_7 i_9) h_9)) t_1_2))))
                else
                  (let rec t_1_3 = ((map_lh (fun x_6 -> 
                    (x_6 mod 65536))) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_0 = t_1_1 in
                      (fun f_1_8 i_1_0 -> 
                        (((foldl_lh f_1_8) ((f_1_8 i_1_0) h_1_0)) t_1_3))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec splitAt_lz_lh _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_random_LH_P2_1_0 = ((drop_lz_lh _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_random_LH_P2_0_0 = ((take_lz_lh _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun ns_1 -> 
        (let rec _lh_singleTest_LH_P2_1_0 = _lh_random_LH_P2_1_0 in
          (let rec _lh_singleTest_LH_P2_0_0 = ((makeNumber_lh 65536) ((uniform_lh ns_1) _lh_random_LH_P2_0_0)) in
            (fun _lh_singleTest_arg1_0 _lh_singleTest_arg2_0 -> 
              (let rec _lh_multiTest_LH_P2_1_0 = _lh_singleTest_LH_P2_1_0 in
                (let rec _lh_multiTest_LH_P2_0_0 = (((singleTestX_lh _lh_singleTest_arg1_0) _lh_singleTest_arg2_0) (2 + _lh_singleTest_LH_P2_0_0)) in
                  (fun k_1 mTest_1 -> 
                    (if _lh_multiTest_LH_P2_0_0 then
                      ((mTest_1 (k_1 - 1)) _lh_multiTest_LH_P2_1_0)
                    else
                      (let rec _lh_doLine_LH_P2_1_2 = _lh_multiTest_LH_P2_1_0 in
                        (let rec _lh_doLine_LH_P2_0_2 = false in
                          (fun _lh_doLine_arg2_2 -> 
                            (if _lh_doLine_LH_P2_0_2 then
                              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_2)))
                            else
                              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_2)))))))))))))))));;
let rec random_lh _lh_random_arg1_0 _lh_random_arg2_0 =
  (let rec ns_0 = ((chop_lh 65536) _lh_random_arg1_0) in
    (let rec _lh_matchIdent_0 = ((splitAt_lz_lh (length_lh ns_0)) _lh_random_arg2_0) in
      (_lh_matchIdent_0 ns_0)));;
let rec singleTest_lh _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 _lh_singleTest_arg3_0 =
  (let rec _lh_matchIdent_1_1 = ((random_lh (_lh_singleTest_arg1_1 - 2)) _lh_singleTest_arg3_0) in
    ((_lh_matchIdent_1_1 _lh_singleTest_arg1_1) _lh_singleTest_arg2_1));;
let rec multiTest_lh _lh_multiTest_arg1_0 _lh_multiTest_arg2_0 _lh_multiTest_arg3_0 =
  (let rec mTest_0 = (fun k_0 rs_0 -> 
    (if (k_0 = 0) then
      (let rec _lh_doLine_LH_P2_1_0 = rs_0 in
        (let rec _lh_doLine_LH_P2_0_0 = true in
          (fun _lh_doLine_arg2_0 -> 
            (if _lh_doLine_LH_P2_0_0 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))))))
    else
      (let rec _lh_matchIdent_1 = (((singleTest_lh _lh_multiTest_arg3_0) (findKQ_lh _lh_multiTest_arg3_0)) rs_0) in
        ((_lh_matchIdent_1 k_0) mTest_0)))) in
    (if ((_lh_multiTest_arg3_0 <= 1) || (even_lh _lh_multiTest_arg3_0)) then
      (let rec _lh_doLine_LH_P2_1_1 = _lh_multiTest_arg2_0 in
        (let rec _lh_doLine_LH_P2_0_1 = (_lh_multiTest_arg3_0 = 2) in
          (fun _lh_doLine_arg2_1 -> 
            (if _lh_doLine_LH_P2_0_1 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))))))
    else
      ((mTest_0 _lh_multiTest_arg1_0) _lh_multiTest_arg2_0)));;
let rec doLine_lh _lh_doLine_arg1_0 _lh_doLine_arg2_3 _lh_doLine_arg3_0 =
  (let rec n_1 = (int_val_of_string_lh _lh_doLine_arg1_0) in
    (let rec _lh_matchIdent_7 = (((multiTest_lh 100) _lh_doLine_arg3_0) n_1) in
      (_lh_matchIdent_7 _lh_doLine_arg2_3)));;
let rec break_lh _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_0 f_2 -> 
        _lh_f_arg2_0), (fun _lh_dummy_0 _lh_doInput_arg1_1 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((fun _lh_f_arg2_1 f_3 -> 
          _lh_f_arg2_1), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (fun _lh_dummy_1 -> 
            (lines_lh _lh_lines_LH_C_1_0)))))
      else
        (let rec _lh_matchIdent_5 = ((break_lh _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((let rec _lh_f_LH_C_1_0 = _lh_break_LH_P2_0_0 in
                (let rec _lh_f_LH_C_0_0 = _lh_break_LH_C_0_0 in
                  (fun _lh_f_arg2_2 f_4 -> 
                    ((f_4 _lh_f_LH_C_1_0) ((10 * _lh_f_arg2_2) + (int_val_of_char_lh _lh_f_LH_C_0_0)))))), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and
lines_lh _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_2 = ((break_lh (fun x_0 -> 
    (x_0 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_2 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec _lh_doInput_LH_C_1_0 = (let rec _lh_matchIdent_3 = _lh_lines_LH_P2_1_0 in
          (_lh_matchIdent_3 99)) in
          (let rec _lh_doInput_LH_C_0_0 = _lh_lines_LH_P2_0_0 in
            (fun _lh_doInput_arg1_0 -> 
              (((doLine_lh _lh_doInput_LH_C_0_0) (fun state_0 -> 
                ((doInput_lh state_0) _lh_doInput_LH_C_1_0))) _lh_doInput_arg1_0))))
      | _ -> 
        (failwith "error")));;
let rec testPrimetest_nofib_lh _lh_testPrimetest_nofib_arg1_0 =
  (let rec cts_0 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_lh (lines_lh cts_0)));;
end;;

