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
let rec break_d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_6 = ((break_d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec divmod_d0 _lh_divmod_arg1_2 _lh_divmod_arg2_2 =
  (`LH_P2((_lh_divmod_arg1_2 / _lh_divmod_arg2_2), (_lh_divmod_arg1_2 mod _lh_divmod_arg2_2)));;
let rec divmod_d1 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (`LH_P2((_lh_divmod_arg1_1 / _lh_divmod_arg2_1), (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1)));;
let rec drop_lz_d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (let rec _lh_matchIdent_2_1 = (Lazy.force _lh_drop_lz_arg2_1) in
    (match _lh_matchIdent_2_1 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
        (if (_lh_drop_lz_arg1_1 > 0) then
          ((drop_lz_d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1)
        else
          _lh_drop_lz_LH_C_1_1)
      | _ -> 
        (failwith "error")));;
let rec even_d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec even_d1 _lh_even_arg1_2 =
  ((_lh_even_arg1_2 mod 2) = 0);;
let rec foldl_d0 f_2_0 i_3 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_4, t_2_9) -> 
      (((foldl_d0 f_2_0) ((f_2_0 i_3) h_2_4)) t_2_9)
    | `LH_N -> 
      i_3);;
let rec int_val_of_char_d0 _lh_int_val_of_char_arg1_1 =
  ((int_of_char _lh_int_val_of_char_arg1_1) - 48);;
let rec iterate_d0 f_1_6 x_9 =
  (lazy (`LH_C(x_9, ((iterate_d0 f_1_6) (f_1_6 x_9)))));;
let rec length_d0 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_2, t_2_7) -> 
      (1 + (length_d0 t_2_7))
    | `LH_N -> 
      0);;
let rec map_d0 f_1_9 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_2_8) -> 
      (`LH_C((f_1_9 h_2_3), ((map_d0 f_1_9) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec rands_d0 _lh_rands_arg1_1 _lh_rands_arg2_1 =
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
                  (lazy (`LH_C((z_1 + 2147483562), ((rands_d0 s1''_1) s2''_1))))
                else
                  (lazy (`LH_C(z_1, ((rands_d0 s1''_1) s2''_1))))))))))));;
let rec take_lz_d0 n_7 ls_2_1 =
  (if (n_7 > 0) then
    (match (Lazy.force ls_2_1) with
      | `LH_C(h_2_1, t_2_6) -> 
        (`LH_C(h_2_1, ((take_lz_d0 (n_7 - 1)) t_2_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz_d1 n_6 ls_2_0 =
  (if (n_6 > 0) then
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_0, t_2_5) -> 
        (`LH_C(h_2_0, ((take_lz_d1 (n_6 - 1)) t_2_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec chop_d0 _lh_chop_arg1_1 =
  (let rec chop'_1 = (fun a_9 n_9 -> 
    (let rec _lh_matchIdent_2_0 = ((divmod_d1 n_9) _lh_chop_arg1_1) in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_chop_LH_P2_0_1, _lh_chop_LH_P2_1_1) -> 
          (if (n_9 = 0) then
            a_9
          else
            ((chop'_1 (`LH_C(_lh_chop_LH_P2_1_1, a_9))) _lh_chop_LH_P2_0_1))
        | _ -> 
          (failwith "error")))) in
    (chop'_1 (`LH_N)))
and doInput_d0 _lh_doInput_arg1_1 _lh_doInput_arg2_1 =
  (match _lh_doInput_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_doInput_LH_C_0_1, _lh_doInput_LH_C_1_1) -> 
      (((doLine_d0 _lh_doInput_LH_C_0_1) (fun state_1 -> 
        ((doInput_d0 state_1) _lh_doInput_LH_C_1_1))) _lh_doInput_arg1_1)
    | _ -> 
      (failwith "error"))
and doLine_d0 _lh_doLine_arg1_1 _lh_doLine_arg2_1 _lh_doLine_arg3_1 =
  (let rec n_8 = (int_val_of_string_d0 _lh_doLine_arg1_1) in
    (let rec _lh_matchIdent_1_5 = (((multiTest_d0 100) _lh_doLine_arg3_1) n_8) in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_doLine_LH_P2_0_1, _lh_doLine_LH_P2_1_1) -> 
          (if _lh_doLine_LH_P2_0_1 then
            (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1)))
          else
            (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_1 _lh_doLine_LH_P2_1_1))))
        | _ -> 
          (failwith "error"))))
and findKQ_d0 _lh_findKQ_arg1_1 =
  (let rec f_1_5 = (fun _lh_f_arg1_2 -> 
    (match _lh_f_arg1_2 with
      | `LH_P2(_lh_f_LH_P2_0_2, _lh_f_LH_P2_1_2) -> 
        (let rec _lh_matchIdent_1_9 = ((divmod_d0 _lh_f_LH_P2_1_2) 2) in
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
and int_val_of_string_d0 _lh_int_val_of_string_arg1_1 =
  (let rec f_1_8 = (fun _lh_f_arg1_3 _lh_f_arg2_1 -> 
    (match _lh_f_arg1_3 with
      | `LH_N -> 
        _lh_f_arg2_1
      | `LH_C(_lh_f_LH_C_0_1, _lh_f_LH_C_1_1) -> 
        ((f_1_8 _lh_f_LH_C_1_1) ((10 * _lh_f_arg2_1) + (int_val_of_char_d0 _lh_f_LH_C_0_1)))
      | _ -> 
        (failwith "error"))) in
    ((f_1_8 _lh_int_val_of_string_arg1_1) 0))
and lines_d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_7 = ((break_d0 (fun x_8 -> 
    (x_8 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_7 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_8 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_1_8 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines_d0 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and makeNumber_d0 _lh_makeNumber_arg1_1 =
  ((foldl_d0 (fun a_1_2 x_1_4 -> 
    ((a_1_2 * _lh_makeNumber_arg1_1) + x_1_4))) 0)
and multiTest_d0 _lh_multiTest_arg1_1 _lh_multiTest_arg2_1 _lh_multiTest_arg3_1 =
  (let rec mTest_1 = (fun k_3 rs_1 -> 
    (if (k_3 = 0) then
      (`LH_P2(true, rs_1))
    else
      (let rec _lh_matchIdent_1_4 = (((singleTest_d0 _lh_multiTest_arg3_1) (findKQ_d0 _lh_multiTest_arg3_1)) rs_1) in
        (match _lh_matchIdent_1_4 with
          | `LH_P2(_lh_multiTest_LH_P2_0_1, _lh_multiTest_LH_P2_1_1) -> 
            (if _lh_multiTest_LH_P2_0_1 then
              ((mTest_1 (k_3 - 1)) _lh_multiTest_LH_P2_1_1)
            else
              (`LH_P2(false, _lh_multiTest_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))) in
    (if ((_lh_multiTest_arg3_1 <= 1) || (even_d0 _lh_multiTest_arg3_1)) then
      (`LH_P2((_lh_multiTest_arg3_1 = 2), _lh_multiTest_arg2_1))
    else
      ((mTest_1 _lh_multiTest_arg1_1) _lh_multiTest_arg2_1)))
and powerMod_d0 _lh_powerMod_arg1_1 _lh_powerMod_arg2_1 _lh_powerMod_arg3_1 =
  (match _lh_powerMod_arg2_1 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_1 = (_lh_powerMod_arg1_1 mod _lh_powerMod_arg3_1) in
        (let rec f_1_7 = (fun a_1_0 b_4 c_1 -> 
          (let rec g_1 = (fun a_1_1 b_5 -> 
            (if (even_d1 b_5) then
              ((g_1 ((a_1_1 * a_1_1) mod _lh_powerMod_arg3_1)) (b_5 / 2))
            else
              (((f_1_7 a_1_1) (b_5 - 1)) ((a_1_1 * c_1) mod _lh_powerMod_arg3_1)))) in
            (if (b_4 = 0) then
              c_1
            else
              ((g_1 a_1_0) b_4)))) in
          (((f_1_7 a'_1) (_lh_powerMod_arg2_1 - 1)) a'_1))))
and process_d0 _lh_process_arg1_1 =
  ((doInput_d0 ((randomInts_d0 111) 47)) _lh_process_arg1_1)
and randomInts_d0 _lh_randomInts_arg1_1 _lh_randomInts_arg2_1 =
  (if ((1 <= _lh_randomInts_arg1_1) && (_lh_randomInts_arg1_1 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_1) && (_lh_randomInts_arg2_1 <= 2147483398)) then
      ((rands_d0 _lh_randomInts_arg1_1) _lh_randomInts_arg2_1)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and random_d0 _lh_random_arg1_1 _lh_random_arg2_1 =
  (let rec ns_1 = ((chop_d0 65536) _lh_random_arg1_1) in
    (let rec _lh_matchIdent_1_3 = ((splitAt_lz_d0 (length_d0 ns_1)) _lh_random_arg2_1) in
      (match _lh_matchIdent_1_3 with
        | `LH_P2(_lh_random_LH_P2_0_1, _lh_random_LH_P2_1_1) -> 
          (`LH_P2(((makeNumber_d0 65536) ((uniform_d0 ns_1) _lh_random_LH_P2_0_1)), _lh_random_LH_P2_1_1))
        | _ -> 
          (failwith "error"))))
and singleTestX_d0 _lh_singleTestX_arg1_1 _lh_singleTestX_arg2_1 _lh_singleTestX_arg3_1 =
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
          (let rec _lh_matchIdent_2_3 = ((take_lz_d1 _lh_singleTestX_LH_P2_0_1) ((iterate_d0 square_1) (((powerMod_d0 _lh_singleTestX_arg3_1) _lh_singleTestX_LH_P2_1_1) _lh_singleTestX_arg1_1))) in
            (match _lh_matchIdent_2_3 with
              | `LH_C(_lh_singleTestX_LH_C_0_3, _lh_singleTestX_LH_C_1_3) -> 
                (((_lh_singleTestX_LH_C_0_3 = 1) || (_lh_singleTestX_LH_C_0_3 = (_lh_singleTestX_arg1_1 - 1))) || (witness_1 _lh_singleTestX_LH_C_1_3))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and singleTest_d0 _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 _lh_singleTest_arg3_1 =
  (let rec _lh_matchIdent_1_2 = ((random_d0 (_lh_singleTest_arg1_1 - 2)) _lh_singleTest_arg3_1) in
    (match _lh_matchIdent_1_2 with
      | `LH_P2(_lh_singleTest_LH_P2_0_1, _lh_singleTest_LH_P2_1_1) -> 
        (`LH_P2((((singleTestX_d0 _lh_singleTest_arg1_1) _lh_singleTest_arg2_1) (2 + _lh_singleTest_LH_P2_0_1)), _lh_singleTest_LH_P2_1_1))
      | _ -> 
        (failwith "error")))
and splitAt_lz_d0 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 =
  (`LH_P2(((take_lz_d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1), ((drop_lz_d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1)))
and testPrimetest_nofib_d0 _lh_testPrimetest_nofib_arg1_1 =
  (let rec cts_1 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_d0 (lines_d0 cts_1)))
and uniform_d0 _lh_uniform_arg1_1 _lh_uniform_arg2_1 =
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
                          (`LH_C(t_3_0, ((uniform_d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_7)))
                        else
                          (`LH_C(t_3_0, ((map_d0 (fun x_1_1 -> 
                            (x_1_1 mod 65536))) _lh_uniform_LH_C_1_7)))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_1 with
                | `LH_C(_lh_uniform_LH_C_0_8, _lh_uniform_LH_C_1_8) -> 
                  (let rec t_3_1 = (_lh_uniform_LH_C_0_8 mod (_lh_uniform_LH_C_0_5 + 1)) in
                    (if (t_3_1 = _lh_uniform_LH_C_0_5) then
                      (`LH_C(t_3_1, ((uniform_d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_8)))
                    else
                      (`LH_C(t_3_1, ((map_d0 (fun x_1_2 -> 
                        (x_1_2 mod 65536))) _lh_uniform_LH_C_1_8)))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_9, _lh_uniform_LH_C_1_9) -> 
              (let rec t_3_2 = (_lh_uniform_LH_C_0_9 mod (_lh_uniform_LH_C_0_5 + 1)) in
                (if (t_3_2 = _lh_uniform_LH_C_0_5) then
                  (`LH_C(t_3_2, ((uniform_d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_9)))
                else
                  (`LH_C(t_3_2, ((map_d0 (fun x_1_3 -> 
                    (x_1_3 mod 65536))) _lh_uniform_LH_C_1_9)))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;

(* lumberhack *)
let rec divmod_d1_d0_d0 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (let rec _lh_chop_LH_P2_0_0 = (_lh_divmod_arg1_1 / _lh_divmod_arg2_1) in
    (let rec _lh_chop_LH_P2_1_0 = (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1) in
      (fun a_4 chop'_1 n_6 -> 
        (if (n_6 = 0) then
          a_4
        else
          ((chop'_1 (`LH_C(_lh_chop_LH_P2_1_0, a_4))) _lh_chop_LH_P2_0_0)))));;
let rec doInput_d0_d0_d0 _lh_doInput_arg1_1 _lh_doInput_arg2_0 =
  (_lh_doInput_arg2_0 _lh_doInput_arg1_1);;
let rec doInput_d0_d0_d1 _lh_doInput_arg1_2 _lh_doInput_arg2_1 =
  (_lh_doInput_arg2_1 _lh_doInput_arg1_2);;
let rec drop_lz_d0_d0_d0 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (let rec _lh_matchIdent_2 = (Lazy.force _lh_drop_lz_arg2_0) in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
        (if (_lh_drop_lz_arg1_0 > 0) then
          ((drop_lz_d0_d0_d0 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0)
        else
          _lh_drop_lz_LH_C_1_0)
      | _ -> 
        (failwith "error")));;
let rec even_d0_d0_d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec even_d1_d0_d0 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec foldl_d0_d0_d0 f_7 i_5 ls_8 =
  ((ls_8 f_7) i_5);;
let rec foldl_d0_d0_d1 f_1_7 i_1_5 ls_1_1 =
  ((ls_1_1 f_1_7) i_1_5);;
let rec foldl_d0_d0_d1_d0 f_6 i_4 ls_7 =
  ((ls_7 f_6) i_4);;
let rec foldl_d0_d0_d2 f_0 i_0 ls_1 =
  ((ls_1 f_0) i_0);;
let rec foldl_d0_d0_d3 f_1_6 i_1_4 ls_1_0 =
  ((ls_1_0 f_1_6) i_1_4);;
let rec foldl_d0_d0_d4 f_1_8 i_1_6 ls_1_2 =
  ((ls_1_2 f_1_8) i_1_6);;
let rec foldl_d0_d0_d5 f_3 i_2 ls_3 =
  ((ls_3 f_3) i_2);;
let rec foldl_d0_d0_d6 f_1 i_1 ls_2 =
  ((ls_2 f_1) i_1);;
let rec foldl_d0_d0_d7 f_5 i_3 ls_5 =
  ((ls_5 f_5) i_3);;
let rec foldl_d0_d0_d8 f_3_7 i_2_4 ls_1_8 =
  ((ls_1_8 f_3_7) i_2_4);;
let rec foldl_d0_d0_d9 f_2_8 i_1_9 ls_1_5 =
  ((ls_1_5 f_2_8) i_1_9);;
let rec int_val_of_char_d0_d0_d0 _lh_int_val_of_char_arg1_0 =
  ((int_of_char _lh_int_val_of_char_arg1_0) - 48);;
let rec int_val_of_string_d0_d0_d0 _lh_int_val_of_string_arg1_0 =
  (let rec f_2 = (fun _lh_f_arg1_0 _lh_f_arg2_0 -> 
    ((_lh_f_arg1_0 _lh_f_arg2_0) f_2)) in
    ((f_2 _lh_int_val_of_string_arg1_0) 0));;
let rec length_d0_d0_d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_d0_d0_d0 t_0))
    | `LH_N -> 
      0);;
let rec rands_d0_d0_d0 _lh_rands_arg1_0 _lh_rands_arg2_0 =
  (let rec k_0 = (_lh_rands_arg1_0 / 53668) in
    (let rec s1'_0 = ((40014 * (_lh_rands_arg1_0 - (k_0 * 53668))) - (k_0 * 12211)) in
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
                  (lazy (`LH_C((z_0 + 2147483562), ((rands_d0_d0_d0 s1''_0) s2''_0))))
                else
                  (lazy (`LH_C(z_0, ((rands_d0_d0_d0 s1''_0) s2''_0))))))))))));;
let rec singleTestX_d0_d0_d0 _lh_singleTestX_arg1_0 _lh_singleTestX_arg2_0 _lh_singleTestX_arg3_0 =
  ((_lh_singleTestX_arg2_0 _lh_singleTestX_arg1_0) _lh_singleTestX_arg3_0);;
let rec take_lz_d0_d0_d0 n_1 ls_6 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_6) with
      | `LH_C(h_1, t_1) -> 
        (`LH_C(h_1, ((take_lz_d0_d0_d0 (n_1 - 1)) t_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz_d1_d0_d0 n_2 ls_9 =
  (if (n_2 > 0) then
    ((Lazy.force ls_9) n_2)
  else
    (`LH_N));;
let rec take_lz_d1_d0_d1 n_0 ls_4 =
  (if (n_0 > 0) then
    ((Lazy.force ls_4) n_0)
  else
    (`LH_N));;
let rec break_d0_d0_d0 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_1 f_2_1 -> 
        _lh_f_arg2_1), (fun _lh_dummy_0 _lh_doInput_arg1_0 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((fun _lh_f_arg2_2 f_2_2 -> 
          _lh_f_arg2_2), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_0 in
          (fun _lh_dummy_1 -> 
            (lines_d0_d0_d0 _lh_lines_LH_C_1_0)))))
      else
        (let rec _lh_matchIdent_6 = ((break_d0_d0_d0 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_6 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((let rec _lh_f_LH_C_0_0 = _lh_break_LH_C_0_0 in
                (let rec _lh_f_LH_C_1_0 = _lh_break_LH_P2_0_0 in
                  (fun _lh_f_arg2_3 f_2_3 -> 
                    ((f_2_3 _lh_f_LH_C_1_0) ((10 * _lh_f_arg2_3) + (int_val_of_char_d0_d0_d0 _lh_f_LH_C_0_0)))))), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and chop_d0_d0_d0 _lh_chop_arg1_0 =
  (let rec chop'_0 = (fun a_3 n_3 -> 
    (let rec _lh_matchIdent_7 = ((divmod_d1_d0_d0 n_3) _lh_chop_arg1_0) in
      (((_lh_matchIdent_7 a_3) chop'_0) n_3))) in
    (chop'_0 (`LH_N)))
and divmod_d0_d0_d0 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (let rec _lh_f_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
    (let rec _lh_f_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
      (fun _lh_f_LH_P2_0_1 _lh_f_LH_P2_1_1 f_1_9 -> 
        (if (_lh_f_LH_P2_1_0 = 0) then
          (f_1_9 (let rec _lh_f_LH_P2_0_2 = (_lh_f_LH_P2_0_1 + 1) in
            (let rec _lh_f_LH_P2_1_2 = _lh_f_LH_P2_0_0 in
              (fun f_2_0 -> 
                (let rec _lh_matchIdent_3 = ((divmod_d0_d0_d0 _lh_f_LH_P2_1_2) 2) in
                  (((_lh_matchIdent_3 _lh_f_LH_P2_0_2) _lh_f_LH_P2_1_2) f_2_0))))))
        else
          (let rec _lh_singleTestX_LH_P2_0_0 = _lh_f_LH_P2_0_1 in
            (let rec _lh_singleTestX_LH_P2_1_0 = _lh_f_LH_P2_1_1 in
              (fun _lh_singleTestX_arg1_1 _lh_singleTestX_arg3_1 -> 
                (let rec square_0 = (fun x_4 -> 
                  ((x_4 * x_4) mod _lh_singleTestX_arg1_1)) in
                  (let rec witness_0 = (fun ls_1_3 -> 
                    (let rec _lh_matchIdent_4 = ls_1_3 in
                      (match _lh_matchIdent_4 with
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
                    (let rec _lh_matchIdent_5 = ((take_lz_d1_d0_d1 _lh_singleTestX_LH_P2_0_0) ((iterate_d0_d0_d0 square_0) (((powerMod_d0_d0_d0 _lh_singleTestX_arg3_1) _lh_singleTestX_LH_P2_1_0) _lh_singleTestX_arg1_1))) in
                      (match _lh_matchIdent_5 with
                        | `LH_C(_lh_singleTestX_LH_C_0_1, _lh_singleTestX_LH_C_1_1) -> 
                          (((_lh_singleTestX_LH_C_0_1 = 1) || (_lh_singleTestX_LH_C_0_1 = (_lh_singleTestX_arg1_1 - 1))) || (witness_0 _lh_singleTestX_LH_C_1_1))
                        | _ -> 
                          (failwith "error"))))))))))))
and doLine_d0_d0_d0 _lh_doLine_arg1_0 _lh_doLine_arg2_1 _lh_doLine_arg3_0 =
  (let rec n_5 = (int_val_of_string_d0_d0_d0 _lh_doLine_arg1_0) in
    (let rec _lh_matchIdent_9 = (((multiTest_d0_d0_d0 100) _lh_doLine_arg3_0) n_5) in
      (_lh_matchIdent_9 _lh_doLine_arg2_1)))
and findKQ_d0_d0_d0 _lh_findKQ_arg1_0 =
  (let rec f_2_9 = (fun _lh_f_arg1_1 -> 
    (_lh_f_arg1_1 f_2_9)) in
    (f_2_9 (let rec _lh_f_LH_P2_0_3 = 0 in
      (let rec _lh_f_LH_P2_1_3 = (_lh_findKQ_arg1_0 - 1) in
        (fun f_3_0 -> 
          (let rec _lh_matchIdent_8 = ((divmod_d0_d0_d0 _lh_f_LH_P2_1_3) 2) in
            (((_lh_matchIdent_8 _lh_f_LH_P2_0_3) _lh_f_LH_P2_1_3) f_3_0)))))))
and iterate_d0_d0_d0 f_2_7 x_5 =
  (lazy (let rec h_1_1 = x_5 in
    (let rec t_1_4 = ((iterate_d0_d0_d0 f_2_7) (f_2_7 x_5)) in
      (fun n_4 -> 
        (`LH_C(h_1_1, ((take_lz_d1_d0_d0 (n_4 - 1)) t_1_4)))))))
and lines_d0_d0_d0 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_1_1 = ((break_d0_d0_d0 (fun x_6 -> 
    (x_6 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_1_1 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (let rec _lh_doInput_LH_C_0_0 = _lh_lines_LH_P2_0_0 in
          (let rec _lh_doInput_LH_C_1_0 = (let rec _lh_matchIdent_1_2 = _lh_lines_LH_P2_1_0 in
            (_lh_matchIdent_1_2 99)) in
            (fun _lh_doInput_arg1_3 -> 
              (((doLine_d0_d0_d0 _lh_doInput_LH_C_0_0) (fun state_0 -> 
                ((doInput_d0_d0_d0 state_0) _lh_doInput_LH_C_1_0))) _lh_doInput_arg1_3))))
      | _ -> 
        (failwith "error")))
and makeNumber_d0_d0_d0 _lh_makeNumber_arg1_0 =
  ((foldl_d0_d0_d0 (fun a_2 x_3 -> 
    ((a_2 * _lh_makeNumber_arg1_0) + x_3))) 0)
and map_d0_d0_d0 f_3_1 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_1_2, t_1_5) -> 
      (let rec h_1_3 = (f_3_1 h_1_2) in
        (let rec t_1_6 = ((map_d0_d0_d0 f_3_1) t_1_5) in
          (fun f_3_2 i_2_0 -> 
            (((foldl_d0_d0_d8 f_3_2) ((f_3_2 i_2_0) h_1_3)) t_1_6))))
    | `LH_N -> 
      (fun f_3_3 i_2_1 -> 
        i_2_1))
and map_d0_d1_d0 f_2_4 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_9, t_1_2) -> 
      (let rec h_1_0 = (f_2_4 h_9) in
        (let rec t_1_3 = ((map_d0_d1_d0 f_2_4) t_1_2) in
          (fun f_2_5 i_1_7 -> 
            (((foldl_d0_d0_d9 f_2_5) ((f_2_5 i_1_7) h_1_0)) t_1_3))))
    | `LH_N -> 
      (fun f_2_6 i_1_8 -> 
        i_1_8))
and map_d0_d2_d0 f_3_4 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_4, t_1_7) -> 
      (let rec h_1_5 = (f_3_4 h_1_4) in
        (let rec t_1_8 = ((map_d0_d2_d0 f_3_4) t_1_7) in
          (fun f_3_5 i_2_2 -> 
            (((foldl_d0_d0_d1_d0 f_3_5) ((f_3_5 i_2_2) h_1_5)) t_1_8))))
    | `LH_N -> 
      (fun f_3_6 i_2_3 -> 
        i_2_3))
and multiTest_d0_d0_d0 _lh_multiTest_arg1_0 _lh_multiTest_arg2_0 _lh_multiTest_arg3_0 =
  (let rec mTest_1 = (fun k_2 rs_0 -> 
    (if (k_2 = 0) then
      (let rec _lh_doLine_LH_P2_0_1 = true in
        (let rec _lh_doLine_LH_P2_1_1 = rs_0 in
          (fun _lh_doLine_arg2_2 -> 
            (if _lh_doLine_LH_P2_0_1 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_1)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_2 _lh_doLine_LH_P2_1_1)))))))
    else
      (let rec _lh_matchIdent_1_0 = (((singleTest_d0_d0_d0 _lh_multiTest_arg3_0) (findKQ_d0_d0_d0 _lh_multiTest_arg3_0)) rs_0) in
        ((_lh_matchIdent_1_0 k_2) mTest_1)))) in
    (if ((_lh_multiTest_arg3_0 <= 1) || (even_d0_d0_d0 _lh_multiTest_arg3_0)) then
      (let rec _lh_doLine_LH_P2_0_2 = (_lh_multiTest_arg3_0 = 2) in
        (let rec _lh_doLine_LH_P2_1_2 = _lh_multiTest_arg2_0 in
          (fun _lh_doLine_arg2_3 -> 
            (if _lh_doLine_LH_P2_0_2 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_3 _lh_doLine_LH_P2_1_2)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_3 _lh_doLine_LH_P2_1_2)))))))
    else
      ((mTest_1 _lh_multiTest_arg1_0) _lh_multiTest_arg2_0)))
and powerMod_d0_d0_d0 _lh_powerMod_arg1_0 _lh_powerMod_arg2_0 _lh_powerMod_arg3_0 =
  (match _lh_powerMod_arg2_0 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_0 = (_lh_powerMod_arg1_0 mod _lh_powerMod_arg3_0) in
        (let rec f_4 = (fun a_0 b_0 c_0 -> 
          (let rec g_0 = (fun a_1 b_1 -> 
            (if (even_d1_d0_d0 b_1) then
              ((g_0 ((a_1 * a_1) mod _lh_powerMod_arg3_0)) (b_1 / 2))
            else
              (((f_4 a_1) (b_1 - 1)) ((a_1 * c_0) mod _lh_powerMod_arg3_0)))) in
            (if (b_0 = 0) then
              c_0
            else
              ((g_0 a_0) b_0)))) in
          (((f_4 a'_0) (_lh_powerMod_arg2_0 - 1)) a'_0))))
and process_d0_d0_d0 _lh_process_arg1_0 =
  ((doInput_d0_d0_d1 ((randomInts_d0_d0_d0 111) 47)) _lh_process_arg1_0)
and randomInts_d0_d0_d0 _lh_randomInts_arg1_0 _lh_randomInts_arg2_0 =
  (if ((1 <= _lh_randomInts_arg1_0) && (_lh_randomInts_arg1_0 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_0) && (_lh_randomInts_arg2_0 <= 2147483398)) then
      ((rands_d0_d0_d0 _lh_randomInts_arg1_0) _lh_randomInts_arg2_0)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and random_d0_d0_d0 _lh_random_arg1_0 _lh_random_arg2_0 =
  (let rec ns_0 = ((chop_d0_d0_d0 65536) _lh_random_arg1_0) in
    (let rec _lh_matchIdent_1 = ((splitAt_lz_d0_d0_d0 (length_d0_d0_d0 ns_0)) _lh_random_arg2_0) in
      (_lh_matchIdent_1 ns_0)))
and singleTest_d0_d0_d0 _lh_singleTest_arg1_0 _lh_singleTest_arg2_0 _lh_singleTest_arg3_0 =
  (let rec _lh_matchIdent_0 = ((random_d0_d0_d0 (_lh_singleTest_arg1_0 - 2)) _lh_singleTest_arg3_0) in
    ((_lh_matchIdent_0 _lh_singleTest_arg1_0) _lh_singleTest_arg2_0))
and splitAt_lz_d0_d0_d0 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_random_LH_P2_0_0 = ((take_lz_d0_d0_d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_random_LH_P2_1_0 = ((drop_lz_d0_d0_d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun ns_1 -> 
        (let rec _lh_singleTest_LH_P2_0_0 = ((makeNumber_d0_d0_d0 65536) ((uniform_d0_d0_d0 ns_1) _lh_random_LH_P2_0_0)) in
          (let rec _lh_singleTest_LH_P2_1_0 = _lh_random_LH_P2_1_0 in
            (fun _lh_singleTest_arg1_1 _lh_singleTest_arg2_1 -> 
              (let rec _lh_multiTest_LH_P2_0_0 = (((singleTestX_d0_d0_d0 _lh_singleTest_arg1_1) _lh_singleTest_arg2_1) (2 + _lh_singleTest_LH_P2_0_0)) in
                (let rec _lh_multiTest_LH_P2_1_0 = _lh_singleTest_LH_P2_1_0 in
                  (fun k_1 mTest_0 -> 
                    (if _lh_multiTest_LH_P2_0_0 then
                      ((mTest_0 (k_1 - 1)) _lh_multiTest_LH_P2_1_0)
                    else
                      (let rec _lh_doLine_LH_P2_0_0 = false in
                        (let rec _lh_doLine_LH_P2_1_0 = _lh_multiTest_LH_P2_1_0 in
                          (fun _lh_doLine_arg2_0 -> 
                            (if _lh_doLine_LH_P2_0_0 then
                              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))
                            else
                              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_0 _lh_doLine_LH_P2_1_0)))))))))))))))))
and testPrimetest_nofib_d0_d0_d0 _lh_testPrimetest_nofib_arg1_0 =
  (let rec cts_0 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_d0_d0_d0 (lines_d0_d0_d0 cts_0)))
and uniform_d0_d0_d0 _lh_uniform_arg1_0 _lh_uniform_arg2_0 =
  (match _lh_uniform_arg1_0 with
    | `LH_C(_lh_uniform_LH_C_0_0, _lh_uniform_LH_C_1_0) -> 
      (match _lh_uniform_LH_C_1_0 with
        | `LH_N -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_1, _lh_uniform_LH_C_1_1) -> 
              (match _lh_uniform_LH_C_1_1 with
                | `LH_N -> 
                  (let rec h_2 = (_lh_uniform_LH_C_0_1 mod _lh_uniform_LH_C_0_0) in
                    (let rec t_2 = (fun f_8 i_6 -> 
                      i_6) in
                      (fun f_9 i_7 -> 
                        (((foldl_d0_d0_d1 f_9) ((f_9 i_7) h_2)) t_2))))
                | _ -> 
                  (match _lh_uniform_arg2_0 with
                    | `LH_C(_lh_uniform_LH_C_0_2, _lh_uniform_LH_C_1_2) -> 
                      (let rec t_3 = (_lh_uniform_LH_C_0_2 mod (_lh_uniform_LH_C_0_0 + 1)) in
                        (if (t_3 = _lh_uniform_LH_C_0_0) then
                          (let rec h_3 = t_3 in
                            (let rec t_4 = ((uniform_d0_d0_d0 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_2) in
                              (fun f_1_0 i_8 -> 
                                (((foldl_d0_d0_d2 f_1_0) ((f_1_0 i_8) h_3)) t_4))))
                        else
                          (let rec h_4 = t_3 in
                            (let rec t_5 = ((map_d0_d0_d0 (fun x_0 -> 
                              (x_0 mod 65536))) _lh_uniform_LH_C_1_2) in
                              (fun f_1_1 i_9 -> 
                                (((foldl_d0_d0_d3 f_1_1) ((f_1_1 i_9) h_4)) t_5))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_0 with
                | `LH_C(_lh_uniform_LH_C_0_3, _lh_uniform_LH_C_1_3) -> 
                  (let rec t_6 = (_lh_uniform_LH_C_0_3 mod (_lh_uniform_LH_C_0_0 + 1)) in
                    (if (t_6 = _lh_uniform_LH_C_0_0) then
                      (let rec h_5 = t_6 in
                        (let rec t_7 = ((uniform_d0_d0_d0 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_3) in
                          (fun f_1_2 i_1_0 -> 
                            (((foldl_d0_d0_d4 f_1_2) ((f_1_2 i_1_0) h_5)) t_7))))
                    else
                      (let rec h_6 = t_6 in
                        (let rec t_8 = ((map_d0_d1_d0 (fun x_1 -> 
                          (x_1 mod 65536))) _lh_uniform_LH_C_1_3) in
                          (fun f_1_3 i_1_1 -> 
                            (((foldl_d0_d0_d5 f_1_3) ((f_1_3 i_1_1) h_6)) t_8))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_0 with
            | `LH_C(_lh_uniform_LH_C_0_4, _lh_uniform_LH_C_1_4) -> 
              (let rec t_9 = (_lh_uniform_LH_C_0_4 mod (_lh_uniform_LH_C_0_0 + 1)) in
                (if (t_9 = _lh_uniform_LH_C_0_0) then
                  (let rec h_7 = t_9 in
                    (let rec t_1_0 = ((uniform_d0_d0_d0 _lh_uniform_LH_C_1_0) _lh_uniform_LH_C_1_4) in
                      (fun f_1_4 i_1_2 -> 
                        (((foldl_d0_d0_d6 f_1_4) ((f_1_4 i_1_2) h_7)) t_1_0))))
                else
                  (let rec h_8 = t_9 in
                    (let rec t_1_1 = ((map_d0_d2_d0 (fun x_2 -> 
                      (x_2 mod 65536))) _lh_uniform_LH_C_1_4) in
                      (fun f_1_5 i_1_3 -> 
                        (((foldl_d0_d0_d7 f_1_5) ((f_1_5 i_1_3) h_8)) t_1_1))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;

(* lumberhack_pop_out *)
let rec divmod_d1_d0_d0_d0 _lh_divmod_arg1_2 _lh_divmod_arg2_2 a_6 chop'_3 n_1_0 =
  (let rec _lh_chop_LH_P2_0_1 = (_lh_divmod_arg1_2 / _lh_divmod_arg2_2) in
    (let rec _lh_chop_LH_P2_1_1 = (_lh_divmod_arg1_2 mod _lh_divmod_arg2_2) in
      (if (n_1_0 = 0) then
        a_6
      else
        ((chop'_3 (`LH_C(_lh_chop_LH_P2_1_1, a_6))) _lh_chop_LH_P2_0_1))));;
let rec doInput_d0_d0_d0_d0 _lh_doInput_arg1_4 _lh_doInput_arg2_2 =
  (_lh_doInput_arg2_2 _lh_doInput_arg1_4);;
let rec doInput_d0_d0_d1_d0 _lh_doInput_arg1_5 _lh_doInput_arg2_3 =
  (_lh_doInput_arg2_3 _lh_doInput_arg1_5);;
let rec drop_lz_d0_d0_d0_d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (let rec _lh_matchIdent_1_6 = (Lazy.force _lh_drop_lz_arg2_1) in
    (match _lh_matchIdent_1_6 with
      | `LH_N -> 
        (lazy (`LH_N))
      | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
        (if (_lh_drop_lz_arg1_1 > 0) then
          ((drop_lz_d0_d0_d0_d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1)
        else
          _lh_drop_lz_LH_C_1_1)
      | _ -> 
        (failwith "error")));;
let rec even_d0_d0_d0_d0 _lh_even_arg1_3 =
  ((_lh_even_arg1_3 mod 2) = 0);;
let rec even_d1_d0_d0_d0 _lh_even_arg1_2 =
  ((_lh_even_arg1_2 mod 2) = 0);;
let rec foldl_d0_d0_d0_d0 f_6_4 i_4_4 ls_3_2 =
  ((ls_3_2 f_6_4) i_4_4);;
let rec foldl_d0_d0_d1_d0 f_5_9 i_4_0 ls_2_5 =
  ((ls_2_5 f_5_9) i_4_0);;
let rec foldl_d0_d0_d1_d0_d0 f_6_0 i_4_1 ls_2_6 =
  ((ls_2_6 f_6_0) i_4_1);;
let rec foldl_d0_d0_d2_d0 f_6_1 i_4_2 ls_2_7 =
  ((ls_2_7 f_6_1) i_4_2);;
let rec foldl_d0_d0_d3_d0 f_6_9 i_4_8 ls_3_5 =
  ((ls_3_5 f_6_9) i_4_8);;
let rec foldl_d0_d0_d4_d0 f_6_3 i_4_3 ls_3_1 =
  ((ls_3_1 f_6_3) i_4_3);;
let rec foldl_d0_d0_d5_d0 f_3_8 i_2_5 ls_1_9 =
  ((ls_1_9 f_3_8) i_2_5);;
let rec foldl_d0_d0_d6_d0 f_5_3 i_3_6 ls_2_2 =
  ((ls_2_2 f_5_3) i_3_6);;
let rec foldl_d0_d0_d7_d0 f_6_5 i_4_5 ls_3_3 =
  ((ls_3_3 f_6_5) i_4_5);;
let rec foldl_d0_d0_d8_d0 f_7_5 i_4_9 ls_3_7 =
  ((ls_3_7 f_7_5) i_4_9);;
let rec foldl_d0_d0_d9_d0 f_5_7 i_3_9 ls_2_4 =
  ((ls_2_4 f_5_7) i_3_9);;
let rec int_val_of_char_d0_d0_d0_d0 _lh_int_val_of_char_arg1_1 =
  ((int_of_char _lh_int_val_of_char_arg1_1) - 48);;
let rec int_val_of_string_d0_d0_d0_d0 _lh_int_val_of_string_arg1_1 =
  (let rec f_6_2 = (fun _lh_f_arg1_3 _lh_f_arg2_4 -> 
    ((_lh_f_arg1_3 _lh_f_arg2_4) f_6_2)) in
    ((f_6_2 _lh_int_val_of_string_arg1_1) 0));;
let rec length_d0_d0_d0_d0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_9, t_3_5) -> 
      (1 + (length_d0_d0_d0_d0 t_3_5))
    | `LH_N -> 
      0);;
let rec rands_d0_d0_d0_d0 _lh_rands_arg1_1 _lh_rands_arg2_1 =
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
                  (lazy (`LH_C((z_1 + 2147483562), ((rands_d0_d0_d0_d0 s1''_1) s2''_1))))
                else
                  (lazy (`LH_C(z_1, ((rands_d0_d0_d0_d0 s1''_1) s2''_1))))))))))));;
let rec singleTestX_d0_d0_d0_d0 _lh_singleTestX_arg1_2 _lh_singleTestX_arg2_1 _lh_singleTestX_arg3_2 =
  ((_lh_singleTestX_arg2_1 _lh_singleTestX_arg1_2) _lh_singleTestX_arg3_2);;
let rec take_lz_d0_d0_d0_d0 n_1_1 ls_2_8 =
  (if (n_1_1 > 0) then
    (match (Lazy.force ls_2_8) with
      | `LH_C(h_2_8, t_3_4) -> 
        (`LH_C(h_2_8, ((take_lz_d0_d0_d0_d0 (n_1_1 - 1)) t_3_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz_d1_d0_d0_d0 n_1_2 ls_3_0 =
  (if (n_1_2 > 0) then
    ((Lazy.force ls_3_0) n_1_2)
  else
    (`LH_N));;
let rec take_lz_d1_d0_d1_d0 n_9 ls_2_0 =
  (if (n_9 > 0) then
    ((Lazy.force ls_2_0) n_9)
  else
    (`LH_N));;
let rec break_d0_d0_d0_d0 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((fun _lh_f_arg2_5 f_7_2 -> 
        _lh_f_arg2_5), (fun _lh_dummy_2 _lh_doInput_arg1_7 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((fun _lh_f_arg2_6 f_7_3 -> 
          _lh_f_arg2_6), (let rec _lh_lines_LH_C_1_1 = _lh_break_LH_C_1_1 in
          (fun _lh_dummy_3 -> 
            (lines_d0_d0_d0_d0 _lh_lines_LH_C_1_1)))))
      else
        (let rec _lh_matchIdent_2_4 = ((break_d0_d0_d0_d0 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_2_4 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((let rec _lh_f_LH_C_0_1 = _lh_break_LH_C_0_1 in
                (let rec _lh_f_LH_C_1_1 = _lh_break_LH_P2_0_1 in
                  (fun _lh_f_arg2_7 f_7_4 -> 
                    ((f_7_4 _lh_f_LH_C_1_1) ((10 * _lh_f_arg2_7) + (int_val_of_char_d0_d0_d0_d0 _lh_f_LH_C_0_1)))))), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and chop_d0_d0_d0_d0 _lh_chop_arg1_1 =
  (let rec chop'_2 = (fun a_5 n_7 -> 
    (let rec _lh_matchIdent_1_3 = ((divmod_d1_d0_d0_d0 n_7) _lh_chop_arg1_1) in
      (((_lh_matchIdent_1_3 a_5) chop'_2) n_7))) in
    (chop'_2 (`LH_N)))
and divmod_d0_d0_d0_d0 _lh_divmod_arg1_3 _lh_divmod_arg2_3 _lh_f_LH_P2_0_6 _lh_f_LH_P2_1_6 f_7_0 =
  (let rec _lh_f_LH_P2_0_5 = (_lh_divmod_arg1_3 / _lh_divmod_arg2_3) in
    (let rec _lh_f_LH_P2_1_5 = (_lh_divmod_arg1_3 mod _lh_divmod_arg2_3) in
      (if (_lh_f_LH_P2_1_5 = 0) then
        (f_7_0 (let rec _lh_f_LH_P2_0_7 = (_lh_f_LH_P2_0_6 + 1) in
          (let rec _lh_f_LH_P2_1_7 = _lh_f_LH_P2_0_5 in
            (fun f_7_1 -> 
              (let rec _lh_matchIdent_1_9 = ((divmod_d0_d0_d0_d0 _lh_f_LH_P2_1_7) 2) in
                (((_lh_matchIdent_1_9 _lh_f_LH_P2_0_7) _lh_f_LH_P2_1_7) f_7_1))))))
      else
        (fun _lh_singleTestX_arg1_3 _lh_singleTestX_arg3_3 -> 
          (let rec _lh_singleTestX_LH_P2_0_1 = _lh_f_LH_P2_0_6 in
            (let rec _lh_singleTestX_LH_P2_1_1 = _lh_f_LH_P2_1_6 in
              (let rec square_1 = (fun x_1_2 -> 
                ((x_1_2 * x_1_2) mod _lh_singleTestX_arg1_3)) in
                (let rec witness_1 = (fun ls_3_6 -> 
                  (let rec _lh_matchIdent_2_0 = ls_3_6 in
                    (match _lh_matchIdent_2_0 with
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
                  (let rec _lh_matchIdent_2_1 = ((take_lz_d1_d0_d1_d0 _lh_singleTestX_LH_P2_0_1) ((iterate_d0_d0_d0_d0 square_1) (((powerMod_d0_d0_d0_d0 _lh_singleTestX_arg3_3) _lh_singleTestX_LH_P2_1_1) _lh_singleTestX_arg1_3))) in
                    (match _lh_matchIdent_2_1 with
                      | `LH_C(_lh_singleTestX_LH_C_0_3, _lh_singleTestX_LH_C_1_3) -> 
                        (((_lh_singleTestX_LH_C_0_3 = 1) || (_lh_singleTestX_LH_C_0_3 = (_lh_singleTestX_arg1_3 - 1))) || (witness_1 _lh_singleTestX_LH_C_1_3))
                      | _ -> 
                        (failwith "error")))))))))))
and doLine_d0_d0_d0_d0 _lh_doLine_arg1_1 _lh_doLine_arg2_7 _lh_doLine_arg3_1 =
  (let rec n_1_3 = (int_val_of_string_d0_d0_d0_d0 _lh_doLine_arg1_1) in
    (let rec _lh_matchIdent_2_5 = (((multiTest_d0_d0_d0_d0 100) _lh_doLine_arg3_1) n_1_3) in
      (_lh_matchIdent_2_5 _lh_doLine_arg2_7)))
and findKQ_d0_d0_d0_d0 _lh_findKQ_arg1_1 =
  (let rec f_3_9 = (fun _lh_f_arg1_2 -> 
    (_lh_f_arg1_2 f_3_9)) in
    (f_3_9 (let rec _lh_f_LH_P2_0_4 = 0 in
      (let rec _lh_f_LH_P2_1_4 = (_lh_findKQ_arg1_1 - 1) in
        (fun f_4_0 -> 
          (let rec _lh_matchIdent_1_4 = ((divmod_d0_d0_d0_d0 _lh_f_LH_P2_1_4) 2) in
            (((_lh_matchIdent_1_4 _lh_f_LH_P2_0_4) _lh_f_LH_P2_1_4) f_4_0)))))))
and iterate_d0_d0_d0_d0 f_4_1 x_7 =
  (lazy (let rec h_1_6 = x_7 in
    (let rec t_1_9 = ((iterate_d0_d0_d0_d0 f_4_1) (f_4_1 x_7)) in
      (fun n_8 -> 
        (`LH_C(h_1_6, ((take_lz_d1_d0_d0_d0 (n_8 - 1)) t_1_9)))))))
and lines_d0_d0_d0_d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_2_2 = ((break_d0_d0_d0_d0 (fun x_1_3 -> 
    (x_1_3 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_2_2 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (let rec _lh_doInput_LH_C_0_1 = _lh_lines_LH_P2_0_1 in
          (let rec _lh_doInput_LH_C_1_1 = (let rec _lh_matchIdent_2_3 = _lh_lines_LH_P2_1_1 in
            (_lh_matchIdent_2_3 99)) in
            (fun _lh_doInput_arg1_6 -> 
              (((doLine_d0_d0_d0_d0 _lh_doInput_LH_C_0_1) (fun state_1 -> 
                ((doInput_d0_d0_d0_d0 state_1) _lh_doInput_LH_C_1_1))) _lh_doInput_arg1_6))))
      | _ -> 
        (failwith "error")))
and makeNumber_d0_d0_d0_d0 _lh_makeNumber_arg1_1 =
  ((foldl_d0_d0_d0_d0 (fun a_9 x_1_1 -> 
    ((a_9 * _lh_makeNumber_arg1_1) + x_1_1))) 0)
and map_d0_d0_d0_d0 f_6_6 ls_3_4 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (match ls_3_4 with
    | `LH_C(h_3_0, t_3_6) -> 
      (let rec h_3_1 = (f_6_6 h_3_0) in
        (let rec t_3_7 = ((map_d0_d0_d0_d0 f_6_6) t_3_6) in
          (((foldl_d0_d0_d8_d0 _lh_popOutId_0_3) ((_lh_popOutId_0_3 _lh_popOutId_1_3) h_3_1)) t_3_7)))
    | `LH_N -> 
      _lh_popOutId_1_3)
and map_d0_d1_d0_d0 f_5_4 ls_2_3 _lh_popOutId_0_5 _lh_popOutId_1_5 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_3_2) -> 
      (let rec h_2_7 = (f_5_4 h_2_6) in
        (let rec t_3_3 = ((map_d0_d1_d0_d0 f_5_4) t_3_2) in
          (((foldl_d0_d0_d9_d0 _lh_popOutId_0_5) ((_lh_popOutId_0_5 _lh_popOutId_1_5) h_2_7)) t_3_3)))
    | `LH_N -> 
      _lh_popOutId_1_5)
and map_d0_d2_d0_d0 f_5_0 ls_2_1 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (match ls_2_1 with
    | `LH_C(h_2_4, t_3_0) -> 
      (let rec h_2_5 = (f_5_0 h_2_4) in
        (let rec t_3_1 = ((map_d0_d2_d0_d0 f_5_0) t_3_0) in
          (((foldl_d0_d0_d1_d0_d0 _lh_popOutId_0_4) ((_lh_popOutId_0_4 _lh_popOutId_1_4) h_2_5)) t_3_1)))
    | `LH_N -> 
      _lh_popOutId_1_4)
and multiTest_d0_d0_d0_d0 _lh_multiTest_arg1_1 _lh_multiTest_arg2_1 _lh_multiTest_arg3_1 =
  (let rec mTest_2 = (fun k_4 rs_1 -> 
    (if (k_4 = 0) then
      (let rec _lh_doLine_LH_P2_0_3 = true in
        (let rec _lh_doLine_LH_P2_1_3 = rs_1 in
          (fun _lh_doLine_arg2_4 -> 
            (if _lh_doLine_LH_P2_0_3 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_4 _lh_doLine_LH_P2_1_3)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_4 _lh_doLine_LH_P2_1_3)))))))
    else
      (let rec _lh_matchIdent_1_8 = (((singleTest_d0_d0_d0_d0 _lh_multiTest_arg3_1) (findKQ_d0_d0_d0_d0 _lh_multiTest_arg3_1)) rs_1) in
        ((_lh_matchIdent_1_8 k_4) mTest_2)))) in
    (if ((_lh_multiTest_arg3_1 <= 1) || (even_d0_d0_d0_d0 _lh_multiTest_arg3_1)) then
      (let rec _lh_doLine_LH_P2_0_4 = (_lh_multiTest_arg3_1 = 2) in
        (let rec _lh_doLine_LH_P2_1_4 = _lh_multiTest_arg2_1 in
          (fun _lh_doLine_arg2_5 -> 
            (if _lh_doLine_LH_P2_0_4 then
              (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_5 _lh_doLine_LH_P2_1_4)))
            else
              (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_5 _lh_doLine_LH_P2_1_4)))))))
    else
      ((mTest_2 _lh_multiTest_arg1_1) _lh_multiTest_arg2_1)))
and powerMod_d0_d0_d0_d0 _lh_powerMod_arg1_1 _lh_powerMod_arg2_1 _lh_powerMod_arg3_1 =
  (match _lh_powerMod_arg2_1 with
    | 0 -> 
      1
    | _ -> 
      (let rec a'_1 = (_lh_powerMod_arg1_1 mod _lh_powerMod_arg3_1) in
        (let rec f_5_8 = (fun a_7 b_2 c_1 -> 
          (let rec g_1 = (fun a_8 b_3 -> 
            (if (even_d1_d0_d0_d0 b_3) then
              ((g_1 ((a_8 * a_8) mod _lh_powerMod_arg3_1)) (b_3 / 2))
            else
              (((f_5_8 a_8) (b_3 - 1)) ((a_8 * c_1) mod _lh_powerMod_arg3_1)))) in
            (if (b_2 = 0) then
              c_1
            else
              ((g_1 a_7) b_2)))) in
          (((f_5_8 a'_1) (_lh_powerMod_arg2_1 - 1)) a'_1))))
and process_d0_d0_d0_d0 _lh_process_arg1_1 =
  ((doInput_d0_d0_d1_d0 ((randomInts_d0_d0_d0_d0 111) 47)) _lh_process_arg1_1)
and randomInts_d0_d0_d0_d0 _lh_randomInts_arg1_1 _lh_randomInts_arg2_1 =
  (if ((1 <= _lh_randomInts_arg1_1) && (_lh_randomInts_arg1_1 <= 2147483562)) then
    (if ((1 <= _lh_randomInts_arg2_1) && (_lh_randomInts_arg2_1 <= 2147483398)) then
      ((rands_d0_d0_d0_d0 _lh_randomInts_arg1_1) _lh_randomInts_arg2_1)
    else
      ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    ((failwith "error") (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('o', (`LH_C('m', (`LH_C('I', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('B', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and random_d0_d0_d0_d0 _lh_random_arg1_1 _lh_random_arg2_1 =
  (let rec ns_2 = ((chop_d0_d0_d0_d0 65536) _lh_random_arg1_1) in
    (let rec _lh_matchIdent_1_7 = ((splitAt_lz_d0_d0_d0_d0 (length_d0_d0_d0_d0 ns_2)) _lh_random_arg2_1) in
      (_lh_matchIdent_1_7 ns_2)))
and singleTest_d0_d0_d0_d0 _lh_singleTest_arg1_2 _lh_singleTest_arg2_2 _lh_singleTest_arg3_1 =
  (let rec _lh_matchIdent_1_5 = ((random_d0_d0_d0_d0 (_lh_singleTest_arg1_2 - 2)) _lh_singleTest_arg3_1) in
    ((_lh_matchIdent_1_5 _lh_singleTest_arg1_2) _lh_singleTest_arg2_2))
and splitAt_lz_d0_d0_d0_d0 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 ns_3 _lh_singleTest_arg1_3 _lh_singleTest_arg2_3 k_5 mTest_3 =
  (let rec _lh_random_LH_P2_0_1 = ((take_lz_d0_d0_d0_d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1) in
    (let rec _lh_random_LH_P2_1_1 = ((drop_lz_d0_d0_d0_d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1) in
      (let rec _lh_singleTest_LH_P2_0_1 = ((makeNumber_d0_d0_d0_d0 65536) ((uniform_d0_d0_d0_d0 ns_3) _lh_random_LH_P2_0_1)) in
        (let rec _lh_singleTest_LH_P2_1_1 = _lh_random_LH_P2_1_1 in
          (let rec _lh_multiTest_LH_P2_0_1 = (((singleTestX_d0_d0_d0_d0 _lh_singleTest_arg1_3) _lh_singleTest_arg2_3) (2 + _lh_singleTest_LH_P2_0_1)) in
            (let rec _lh_multiTest_LH_P2_1_1 = _lh_singleTest_LH_P2_1_1 in
              (if _lh_multiTest_LH_P2_0_1 then
                ((mTest_3 (k_5 - 1)) _lh_multiTest_LH_P2_1_1)
              else
                (fun _lh_doLine_arg2_6 -> 
                  (let rec _lh_doLine_LH_P2_0_5 = false in
                    (let rec _lh_doLine_LH_P2_1_5 = _lh_multiTest_LH_P2_1_1 in
                      (if _lh_doLine_LH_P2_0_5 then
                        (`LH_C((`LH_C('P', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))), (_lh_doLine_arg2_6 _lh_doLine_LH_P2_1_5)))
                      else
                        (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N))))))))))))))))))), (_lh_doLine_arg2_6 _lh_doLine_LH_P2_1_5))))))))))))))
and testPrimetest_nofib_d0_d0_d0_d0 _lh_testPrimetest_nofib_arg1_1 =
  (let rec cts_1 = (`LH_C('2', (`LH_C('4', (`LH_C('|', (`LH_C('4', (`LH_C('8', (`LH_C('|', (`LH_C('4', (`LH_C('7', (`LH_C('|', (`LH_C('1', (`LH_C('3', (`LH_C('1', (`LH_C('7', (`LH_C('|', (`LH_C('8', (`LH_C('9', (`LH_C('0', (`LH_C('1', (`LH_N))))))))))))))))))))))))))))))))))))) in
    (process_d0_d0_d0_d0 (lines_d0_d0_d0_d0 cts_1)))
and uniform_d0_d0_d0_d0 _lh_uniform_arg1_1 _lh_uniform_arg2_1 =
  (match _lh_uniform_arg1_1 with
    | `LH_C(_lh_uniform_LH_C_0_5, _lh_uniform_LH_C_1_5) -> 
      (match _lh_uniform_LH_C_1_5 with
        | `LH_N -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_6, _lh_uniform_LH_C_1_6) -> 
              (match _lh_uniform_LH_C_1_6 with
                | `LH_N -> 
                  (let rec h_1_7 = (_lh_uniform_LH_C_0_6 mod _lh_uniform_LH_C_0_5) in
                    (let rec t_2_0 = (fun f_4_2 i_2_6 -> 
                      i_2_6) in
                      (fun f_4_3 i_2_7 -> 
                        (((foldl_d0_d0_d1_d0 f_4_3) ((f_4_3 i_2_7) h_1_7)) t_2_0))))
                | _ -> 
                  (match _lh_uniform_arg2_1 with
                    | `LH_C(_lh_uniform_LH_C_0_7, _lh_uniform_LH_C_1_7) -> 
                      (let rec t_2_1 = (_lh_uniform_LH_C_0_7 mod (_lh_uniform_LH_C_0_5 + 1)) in
                        (if (t_2_1 = _lh_uniform_LH_C_0_5) then
                          (let rec h_1_8 = t_2_1 in
                            (let rec t_2_2 = ((uniform_d0_d0_d0_d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_7) in
                              (fun f_4_4 i_2_8 -> 
                                (((foldl_d0_d0_d2_d0 f_4_4) ((f_4_4 i_2_8) h_1_8)) t_2_2))))
                        else
                          (let rec h_1_9 = t_2_1 in
                            (let rec t_2_3 = ((map_d0_d0_d0_d0 (fun x_8 -> 
                              (x_8 mod 65536))) _lh_uniform_LH_C_1_7) in
                              (fun f_4_5 i_2_9 -> 
                                (((foldl_d0_d0_d3_d0 f_4_5) ((f_4_5 i_2_9) h_1_9)) t_2_3))))))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_uniform_arg2_1 with
                | `LH_C(_lh_uniform_LH_C_0_8, _lh_uniform_LH_C_1_8) -> 
                  (let rec t_2_4 = (_lh_uniform_LH_C_0_8 mod (_lh_uniform_LH_C_0_5 + 1)) in
                    (if (t_2_4 = _lh_uniform_LH_C_0_5) then
                      (let rec h_2_0 = t_2_4 in
                        (let rec t_2_5 = ((uniform_d0_d0_d0_d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_8) in
                          (fun f_4_6 i_3_0 -> 
                            (((foldl_d0_d0_d4_d0 f_4_6) ((f_4_6 i_3_0) h_2_0)) t_2_5))))
                    else
                      (let rec h_2_1 = t_2_4 in
                        (let rec t_2_6 = ((map_d0_d1_d0_d0 (fun x_9 -> 
                          (x_9 mod 65536))) _lh_uniform_LH_C_1_8) in
                          (fun f_4_7 i_3_1 -> 
                            (((foldl_d0_d0_d5_d0 f_4_7) ((f_4_7 i_3_1) h_2_1)) t_2_6))))))
                | _ -> 
                  (failwith "error")))
        | _ -> 
          (match _lh_uniform_arg2_1 with
            | `LH_C(_lh_uniform_LH_C_0_9, _lh_uniform_LH_C_1_9) -> 
              (let rec t_2_7 = (_lh_uniform_LH_C_0_9 mod (_lh_uniform_LH_C_0_5 + 1)) in
                (if (t_2_7 = _lh_uniform_LH_C_0_5) then
                  (let rec h_2_2 = t_2_7 in
                    (let rec t_2_8 = ((uniform_d0_d0_d0_d0 _lh_uniform_LH_C_1_5) _lh_uniform_LH_C_1_9) in
                      (fun f_4_8 i_3_2 -> 
                        (((foldl_d0_d0_d6_d0 f_4_8) ((f_4_8 i_3_2) h_2_2)) t_2_8))))
                else
                  (let rec h_2_3 = t_2_7 in
                    (let rec t_2_9 = ((map_d0_d2_d0_d0 (fun x_1_0 -> 
                      (x_1_0 mod 65536))) _lh_uniform_LH_C_1_9) in
                      (fun f_4_9 i_3_3 -> 
                        (((foldl_d0_d0_d7_d0 f_4_9) ((f_4_9 i_3_3) h_2_3)) t_2_9))))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (failwith "error"));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Primetest_nofib" (fun () -> ignore ((testPrimetest_nofib_d0 0)));
  Bench.Test.create ~name:"lumberhack_Primetest_nofib" (fun () -> ignore ((testPrimetest_nofib_d0_d0_d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Primetest_nofib" (fun () -> ignore ((testPrimetest_nofib_d0_d0_d0_d0 0)));
])
