

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end) = struct
let rec even_lh__d1 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec divmod_lh__d2 _lh_divmod_arg1_1 _lh_divmod_arg2_1 a_4 chop'_1 n_4 =
  (let rec _lh_chop_LH_P2_1_0 = (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1) in
    (let rec _lh_chop_LH_P2_0_0 = (_lh_divmod_arg1_1 / _lh_divmod_arg2_1) in
      (if (n_4 = 0) then
        a_4
      else
        ((chop'_1 (`LH_C(_lh_chop_LH_P2_1_0, a_4))) _lh_chop_LH_P2_0_0))));;
let rec chop_lh__d1 _lh_chop_arg1_0 =
  (let rec chop'_0 = (fun a_2 n_0 -> 
    (let rec _lh_matchIdent_0 = ((divmod_lh__d2 n_0) _lh_chop_arg1_0) in
      (((_lh_matchIdent_0 a_2) chop'_0) n_0))) in
    (chop'_0 (`LH_N)));;
let rec length_lh__d1 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_2, t_1_5) -> 
      (1 + (length_lh__d1 t_1_5))
    | `LH_N -> 
      0);;
let rec drop_lz_lh__d1 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (let rec _lh_matchIdent_2 = (Lazy.force _lh_drop_lz_arg2_0) in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
        (if (_lh_drop_lz_arg1_0 > 0) then
          ((drop_lz_lh__d1 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0)
        else
          _lh_drop_lz_LH_C_1_0)
      | _ -> 
        (failwith "error")));;
let rec foldl_lh__d1 f_1 i_0 ls_0 =
  ((ls_0 f_1) i_0);;
let rec makeNumber_lh__d1 _lh_makeNumber_arg1_0 =
  ((foldl_lh__d1 (fun a_3 x_0 -> 
    ((a_3 * _lh_makeNumber_arg1_0) + x_0))) 0);;
let rec map_lh__d2 f_2 ls_1 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map_lh__d2 f_2) t_0) in
        (let rec h_1 = (f_2 h_0) in
          (((foldl_lh__d1 _lh_popOutId_0_0) ((_lh_popOutId_0_0 _lh_popOutId_1_0) h_1)) t_1)))
    | `LH_N -> 
      _lh_popOutId_1_0);;
let rec map_lh__d1 f_5 ls_2 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lh__d1 f_5) t_2) in
        (let rec h_3 = (f_5 h_2) in
          (((foldl_lh__d1 _lh_popOutId_0_1) ((_lh_popOutId_0_1 _lh_popOutId_1_1) h_3)) t_3)))
    | `LH_N -> 
      _lh_popOutId_1_1);;
let rec map_lh__d3 f_2_3 ls_5 _lh_popOutId_0_5 _lh_popOutId_1_5 =
  (match ls_5 with
    | `LH_C(h_1_4, t_1_7) -> 
      (let rec t_1_8 = ((map_lh__d3 f_2_3) t_1_7) in
        (let rec h_1_5 = (f_2_3 h_1_4) in
          (((foldl_lh__d1 _lh_popOutId_0_5) ((_lh_popOutId_0_5 _lh_popOutId_1_5) h_1_5)) t_1_8)))
    | `LH_N -> 
      _lh_popOutId_1_5);;
let rec uniform_lh__d1 _lh_uniform_arg1_0 _lh_uniform_arg2_0 =
  (match _lh_uniform_arg1_0 with
    | `LH_C(_lh_uniform_LH_C_0_0, _lh_uniform_LH_C_1_0) -> 
      (match _lh_uniform_LH_C_1_0 with
        | `LH_N -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_1, _lh_uniform_LH_C_1_1) -> 
              (match _lh_uniform_LH_C_1_1 with
                | `LH_N -> 
                  (let rec t_5 = (fun f_1_0 i_5 -> 
                    i_5) in
                    (let rec h_5 = (_lh_uniform_LH_C_0_1 mod _lh_uniform_LH_C_0_0) in
                      (fun f_1_1 i_6 -> 
                        (((foldl_lh__d1 f_1_1) ((f_1_1 i_6) h_5)) t_5))))
                | _ -> 
                  (match _lh_uniform_arg2_0 with
                    | `LH_C(_lh_uniform_LH_C_0_2, _lh_uniform_LH_C_1_2) -> 
                      (let rec t_6 = (_lh_uniform_LH_C_0_2 mod (_lh_uniform_LH_C_0_0 + 1)) in
                        (if (t_6 = _lh_uniform_LH_C_0_0) then
                          (let rec t_7 = ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_2) in
                            (let rec h_6 = t_6 in
                              (fun f_1_2 i_7 -> 
                                (((foldl_lh__d1 f_1_2) ((f_1_2 i_7) h_6)) t_7))))
                        else
                          (let rec t_8 = ((map_lh__d1 (fun x_2 -> 
                            (x_2 mod 65536))) _lh_uniform_LH_C_1_2) in
                            (let rec h_7 = t_6 in
                              (fun f_1_3 i_8 -> 
                                (((foldl_lh__d1 f_1_3) ((f_1_3 i_8) h_7)) t_8))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_0 with
                | `LH_C(_lh_uniform_LH_C_0_3, _lh_uniform_LH_C_1_3) -> 
                  (let rec t_9 = (_lh_uniform_LH_C_0_3 mod (_lh_uniform_LH_C_0_0 + 1)) in
                    (if (t_9 = _lh_uniform_LH_C_0_0) then
                      (let rec t_1_0 = ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_3) in
                        (let rec h_8 = t_9 in
                          (fun f_1_4 i_9 -> 
                            (((foldl_lh__d1 f_1_4) ((f_1_4 i_9) h_8)) t_1_0))))
                    else
                      (let rec t_1_1 = ((map_lh__d2 (fun x_3 -> 
                        (x_3 mod 65536))) _lh_uniform_LH_C_1_3) in
                        (let rec h_9 = t_9 in
                          (fun f_1_5 i_1_0 -> 
                            (((foldl_lh__d1 f_1_5) ((f_1_5 i_1_0) h_9)) t_1_1))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_4, _lh_uniform_LH_C_1_4) -> 
              (let rec t_1_2 = (_lh_uniform_LH_C_0_4 mod (_lh_uniform_LH_C_0_0 + 1)) in
                (if (t_1_2 = _lh_uniform_LH_C_0_0) then
                  (let rec t_1_3 = ((uniform_lh__d1 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_0 = t_1_2 in
                      (fun f_1_6 i_1_1 -> 
                        (((foldl_lh__d1 f_1_6) ((f_1_6 i_1_1) h_1_0)) t_1_3))))
                else
                  (let rec t_1_4 = ((map_lh__d3 (fun x_4 -> 
                    (x_4 mod 65536))) _lh_uniform_LH_C_1_4) in
                    (let rec h_1_1 = t_1_2 in
                      (fun f_1_7 i_1_2 -> 
                        (((foldl_lh__d1 f_1_7) ((f_1_7 i_1_2) h_1_1)) t_1_4))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;
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
let rec take_lz_lh__d1 n_3 ls_6 =
  (if (n_3 > 0) then
    ((Lazy.force ls_6) n_3)
  else
    (`LH_N));;
let rec iterate_lh__d1 f_2_2 x_5 =
  (lazy (let rec t_1_6 = ((iterate_lh__d1 f_2_2) (f_2_2 x_5)) in
    (let rec h_1_3 = x_5 in
      (fun n_2 -> 
        (`LH_C(h_1_3, ((take_lz_lh__d1 (n_2 - 1)) t_1_6)))))));;
let rec singleTestX_lh__d1 _lh_singleTestX_arg1_0 _lh_singleTestX_arg2_0 _lh_singleTestX_arg3_0 =
  (match _lh_singleTestX_arg2_0 with
    | `LH_P2(_lh_singleTestX_LH_P2_0_0, _lh_singleTestX_LH_P2_1_0) -> 
      (let rec square_0 = (fun x_6 -> 
        ((x_6 * x_6) mod _lh_singleTestX_arg1_0)) in
        (let rec witness_0 = (fun ls_7 -> 
          (let rec _lh_matchIdent_1_0 = ls_7 in
            (match _lh_matchIdent_1_0 with
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
          (let rec _lh_matchIdent_1_1 = ((take_lz_lh__d1 _lh_singleTestX_LH_P2_0_0) ((iterate_lh__d1 square_0) (((powerMod_lh__d1 _lh_singleTestX_arg3_0) _lh_singleTestX_LH_P2_1_0) _lh_singleTestX_arg1_0))) in
            (match _lh_matchIdent_1_1 with
              | `LH_C(_lh_singleTestX_LH_C_0_1, _lh_singleTestX_LH_C_1_1) -> 
                (((_lh_singleTestX_LH_C_0_1 = 1) || (_lh_singleTestX_LH_C_0_1 = (_lh_singleTestX_arg1_0 - 1))) || (witness_0 _lh_singleTestX_LH_C_1_1))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec take_lz_lh__d2 n_1 ls_3 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_3) with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lz_lh__d2 (n_1 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec splitAt_lz_lh__d1 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 ns_0 _lh_singleTest_arg1_0 _lh_singleTest_arg2_0 k_0 mTest_0 =
  (let rec _lh_random_LH_P2_1_0 = ((drop_lz_lh__d1 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_random_LH_P2_0_0 = ((take_lz_lh__d2 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (let rec _lh_singleTest_LH_P2_1_0 = _lh_random_LH_P2_1_0 in
        (let rec _lh_singleTest_LH_P2_0_0 = ((makeNumber_lh__d1 65536) ((uniform_lh__d1 ns_0) _lh_random_LH_P2_0_0)) in
          (let rec _lh_multiTest_LH_P2_1_0 = _lh_singleTest_LH_P2_1_0 in
            (let rec _lh_multiTest_LH_P2_0_0 = (((singleTestX_lh__d1 _lh_singleTest_arg1_0) _lh_singleTest_arg2_0) (2 + _lh_singleTest_LH_P2_0_0)) in
              (if _lh_multiTest_LH_P2_0_0 then
                ((mTest_0 (k_0 - 1)) _lh_multiTest_LH_P2_1_0)
              else
                (fun _lh_doLine_arg2_0 -> 
                  (let rec _lh_doLine_LH_P2_1_0 = _lh_multiTest_LH_P2_1_0 in
                    (let rec _lh_doLine_LH_P2_0_0 = false in
                      (if _lh_doLine_LH_P2_0_0 then
                        (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))
                      else
                        (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0))))))))))))));;
let rec random_lh__d1 _lh_random_arg1_0 _lh_random_arg2_0 =
  (let rec ns_1 = ((chop_lh__d1 65536) _lh_random_arg1_0) in
    (let rec _lh_matchIdent_4 = ((splitAt_lz_lh__d1 (length_lh__d1 ns_1)) _lh_random_arg2_0) in
      (_lh_matchIdent_4 ns_1)));;
let rec singleTest_lh__d1 _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 _lh_singleTest_arg3_0 =
  (let rec _lh_matchIdent_3 = ((random_lh__d1 (_lh_singleTest_arg1_1 - 2)) _lh_singleTest_arg3_0) in
    ((_lh_matchIdent_3 _lh_singleTest_arg1_1) _lh_singleTest_arg2_1));;
let rec divmod_lh__d1 _lh_divmod_arg1_0 _lh_divmod_arg2_0 _lh_f_LH_P2_0_1 _lh_f_LH_P2_1_1 f_8 =
  (let rec _lh_f_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_f_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (if (_lh_f_LH_P2_1_0 = 0) then
        (f_8 (`LH_P2((_lh_f_LH_P2_0_1 + 1), _lh_f_LH_P2_0_0)))
      else
        (`LH_P2(_lh_f_LH_P2_0_1, _lh_f_LH_P2_1_1)))));;
let rec findKQ_lh__d1 _lh_findKQ_arg1_0 =
  (let rec f_2_1 = (fun _lh_f_arg1_1 -> 
    (match _lh_f_arg1_1 with
      | `LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2) -> 
        (let rec _lh_matchIdent_8 = ((divmod_lh__d1 _lh_f_LH_P2_1_2) 2) in
          (((_lh_matchIdent_8 _lh_f_LH_P2_0_2) _lh_f_LH_P2_1_2) f_2_1))
      | _ -> 
        (failwith "error"))) in
    (f_2_1 (`LH_P2(0, (_lh_findKQ_arg1_0 - 1)))));;
let rec multiTest_lh__d1 _lh_multiTest_arg1_0 _lh_multiTest_arg2_0 _lh_multiTest_arg3_0 =
  (let rec mTest_1 = (fun k_1 rs_0 -> 
    (if (k_1 = 0) then
      (let rec _lh_doLine_LH_P2_1_1 = rs_0 in
        (let rec _lh_doLine_LH_P2_0_1 = true in
          (fun _lh_doLine_arg2_1 -> 
            (if _lh_doLine_LH_P2_0_1 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))))))
    else
      (let rec _lh_matchIdent_1 = (((singleTest_lh__d1 _lh_multiTest_arg3_0) (findKQ_lh__d1 _lh_multiTest_arg3_0)) rs_0) in
        ((_lh_matchIdent_1 k_1) mTest_1)))) in
    (if ((_lh_multiTest_arg3_0 <= 1) || (even_lh__d1 _lh_multiTest_arg3_0)) then
      (let rec _lh_doLine_LH_P2_1_2 = _lh_multiTest_arg2_0 in
        (let rec _lh_doLine_LH_P2_0_2 = (_lh_multiTest_arg3_0 = 2) in
          (fun _lh_doLine_arg2_2 -> 
            (if _lh_doLine_LH_P2_0_2 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_2)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_2)))))))
    else
      ((mTest_1 _lh_multiTest_arg1_0) _lh_multiTest_arg2_0)));;
let rec int_val_of_string_lh__d1 _lh_int_val_of_string_arg1_0 =
  (let rec f_9 = (fun _lh_f_arg1_0 _lh_f_arg2_0 -> 
    ((_lh_f_arg1_0 _lh_f_arg2_0) f_9)) in
    ((f_9 _lh_int_val_of_string_arg1_0) 0));;
let rec doLine_lh__d1 _lh_doLine_arg1_0 _lh_doLine_arg2_3 _lh_doLine_arg3_0 =
  (let rec n_5 = (int_val_of_string_lh__d1 _lh_doLine_arg1_0) in
    (let rec _lh_matchIdent_9 = (((multiTest_lh__d1 100) _lh_doLine_arg3_0) n_5) in
      (_lh_matchIdent_9 _lh_doLine_arg2_3)));;
let rec int_val_of_char_lh__d1 _lh_int_val_of_char_arg1_0 =
  ((int_of_char _lh_int_val_of_char_arg1_0) - 48);;
let rec doInput_lh__d1 _lh_doInput_arg1_2 _lh_doInput_arg2_0 =
  (_lh_doInput_arg2_0 _lh_doInput_arg1_2);;
let rec break_lh__d1 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_1 f_1_8 -> 
        _lh_f_arg2_1), (fun _lh_dummy_0 _lh_doInput_arg1_1 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((fun _lh_f_arg2_2 f_1_9 -> 
          _lh_f_arg2_2), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (let rec _lh_lines_LH_C_0_0 = _lh_break_LH_C_0_0 in
            (fun _lh_dummy_1 -> 
              (lines_lh__d1 _lh_lines_LH_C_1_0))))))
      else
        (let rec _lh_matchIdent_7 = ((break_lh__d1 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_7 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((let rec _lh_f_LH_C_1_0 = _lh_break_LH_P2_0_0 in
                (let rec _lh_f_LH_C_0_0 = _lh_break_LH_C_0_0 in
                  (fun _lh_f_arg2_3 f_2_0 -> 
                    ((f_2_0 _lh_f_LH_C_1_0) ((10 * _lh_f_arg2_3) + (int_val_of_char_lh__d1 _lh_f_LH_C_0_0)))))), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and
lines_lh__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_5 = ((break_lh__d1 (fun x_1 -> 
    (x_1 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_5 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec _lh_doInput_LH_C_1_0 = (let rec _lh_matchIdent_6 = _lh_lines_LH_P2_1_0 in
          (_lh_matchIdent_6 99)) in
          (let rec _lh_doInput_LH_C_0_0 = _lh_lines_LH_P2_0_0 in
            (fun _lh_doInput_arg1_0 -> 
              (((doLine_lh__d1 _lh_doInput_LH_C_0_0) (fun state_0 -> 
                ((doInput_lh__d1 state_0) _lh_doInput_LH_C_1_0))) _lh_doInput_arg1_0))))
      | _ -> 
        (failwith "error")));;
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
  ((doInput_lh__d1 ((randomInts_lh__d1 111) 47)) _lh_process_arg1_0);;
let rec testPrimetest_nofib_lh__d1 _lh_testPrimetest_nofib_arg1_0 =
  (let rec cts_0 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_lh__d1 (lines_lh__d1 cts_0)));;
end;;

