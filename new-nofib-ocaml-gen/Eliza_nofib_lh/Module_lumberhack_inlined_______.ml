

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______(LH_Dum: sig end) = struct
let rec newKeyTab_lh__d1 _lh_newKeyTab_arg1_0 _lh_newKeyTab_arg2_0 =
  (match _lh_newKeyTab_arg2_0 with
    | `LH_P2(_lh_newKeyTab_LH_P2_0_0, _lh_newKeyTab_LH_P2_1_0) -> 
      (`LH_P2(_lh_newKeyTab_arg1_0, _lh_newKeyTab_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec keyTabOf_lh__d1 _lh_keyTabOf_arg1_0 =
  (match _lh_keyTabOf_arg1_0 with
    | `LH_P2(_lh_keyTabOf_LH_P2_0_0, _lh_keyTabOf_LH_P2_1_0) -> 
      _lh_keyTabOf_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2 xs_5 ys_2_9 =
  (match xs_5 with
    | `LH_C(h_8_5, t_8_5) -> 
      (let rec t_8_6 = ((mappend_lh__d2 t_8_5) ys_2_9) in
        (let rec h_8_6 = h_8_5 in
          (fun ys_3_0 -> 
            (let rec t_8_7 = (t_8_6 ys_3_0) in
              (let rec h_8_7 = h_8_6 in
                (fun _lh_dummy_3_8 -> 
                  (1 + (t_8_7 99))))))))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_lh__d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4_4, t_4_4) -> 
      (`LH_C(h_4_4, ((mappend_lh__d3 t_4_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_lh__d5 xs_6 ys_3_1 =
  (match xs_6 with
    | `LH_C(h_8_8, t_8_8) -> 
      (let rec t_8_9 = ((mappend_lh__d5 t_8_8) ys_3_1) in
        (let rec h_8_9 = h_8_8 in
          (fun ys_3_2 -> 
            (`LH_C(h_8_9, (t_8_9 ys_3_2))))))
    | `LH_N -> 
      ys_3_1);;
let rec mappend_lh__d7 xs_4 ys_2_7 =
  (match xs_4 with
    | `LH_C(h_8_3, t_8_3) -> 
      (let rec t_8_4 = ((mappend_lh__d7 t_8_3) ys_2_7) in
        (let rec h_8_4 = h_8_3 in
          (fun ys_2_8 -> 
            (`LH_C(h_8_4, (t_8_4 ys_2_8))))))
    | `LH_N -> 
      ys_2_7);;
let rec mappend_lh__d4 xs_9 ys_3_5 =
  (match xs_9 with
    | `LH_C(h_9_1, t_9_1) -> 
      (`LH_C(h_9_1, ((mappend_lh__d4 t_9_1) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec makeResponse_lh__d1 _lh_makeResponse_arg1_0 _lh_makeResponse_arg2_0 =
  (match _lh_makeResponse_arg1_0 with
    | `LH_C(_lh_makeResponse_LH_C_0_0, _lh_makeResponse_LH_C_1_0) -> 
      (match _lh_makeResponse_LH_C_0_0 with
        | '?' -> 
          ((mappend_lh__d3 (((mappend_lh__d7 _lh_makeResponse_LH_C_1_0) (let rec t_9_5 = (fun ys_3_8 -> 
            ys_3_8) in
            (let rec h_9_5 = ' ' in
              (fun ys_3_9 -> 
                (`LH_C(h_9_5, (t_9_5 ys_3_9))))))) _lh_makeResponse_arg2_0)) (`LH_C('?', (`LH_N))))
        | '.' -> 
          ((mappend_lh__d4 (((mappend_lh__d5 _lh_makeResponse_LH_C_1_0) (let rec t_9_6 = (fun ys_4_0 -> 
            ys_4_0) in
            (let rec h_9_6 = ' ' in
              (fun ys_4_1 -> 
                (`LH_C(h_9_6, (t_9_6 ys_4_1))))))) _lh_makeResponse_arg2_0)) (`LH_C('.', (`LH_N))))
        | _ -> 
          _lh_makeResponse_arg1_0)
    | _ -> 
      _lh_makeResponse_arg1_0);;
let rec null_lh__d3 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d1 xs_8 ys_3_4 =
  (match xs_8 with
    | `LH_C(h_9_0, t_9_0) -> 
      (`LH_C(h_9_0, ((mappend_lh__d1_d1 t_9_0) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend_lh__d1_d0 xs_3 ys_2_6 =
  (match xs_3 with
    | `LH_C(h_8_2, t_8_2) -> 
      (`LH_C(h_8_2, ((mappend_lh__d1_d0 t_8_2) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec unwords_lh__d1 _lh_unwords_arg1_0 =
  (match _lh_unwords_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_unwords_LH_C_0_0, _lh_unwords_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 -> 
        (match _lh_go_arg1_0 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            (`LH_C(' ', ((mappend_lh__d1_d1 _lh_go_LH_C_0_0) (go_0 _lh_go_LH_C_1_0))))
          | _ -> 
            (failwith "error"))) in
        ((mappend_lh__d1_d0 _lh_unwords_LH_C_0_0) (go_0 _lh_unwords_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d4 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec lz_map_lh__d1 _lh_lz_map_arg1_0 _lh_lz_map_arg2_0 =
  (let rec _lh_matchIdent_1_8 = _lh_lz_map_arg2_0 in
    (match _lh_matchIdent_1_8 with
      | `LH_N -> 
        (lazy (fun _lh_prefix_LH_C_0_0 _lh_prefix_LH_C_1_0 -> 
          false))
      | `LH_C(_lh_lz_map_LH_C_0_0, _lh_lz_map_LH_C_1_0) -> 
        (lazy (let rec _lh_prefix_LH_C_1_1 = ((lz_map_lh__d1 _lh_lz_map_arg1_0) _lh_lz_map_LH_C_1_0) in
          (let rec _lh_prefix_LH_C_0_1 = (_lh_lz_map_arg1_0 _lh_lz_map_LH_C_0_0) in
            (fun _lh_prefix_LH_C_0_2 _lh_prefix_LH_C_1_2 -> 
              ((_lh_prefix_LH_C_0_2 = _lh_prefix_LH_C_0_1) && (let rec _lh_matchIdent_1_9 = _lh_prefix_LH_C_1_2 in
                (match _lh_matchIdent_1_9 with
                  | `LH_N -> 
                    true
                  | `LH_C(_lh_prefix_LH_C_0_3, _lh_prefix_LH_C_1_3) -> 
                    (let rec _lh_matchIdent_2_0 = (Lazy.force _lh_prefix_LH_C_1_1) in
                      ((_lh_matchIdent_2_0 _lh_prefix_LH_C_0_3) _lh_prefix_LH_C_1_3))
                  | _ -> 
                    (failwith "error"))))))))
      | _ -> 
        (failwith "error")));;
let rec tail_lh__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_9_3, t_9_3) -> 
      t_9_3
    | `LH_N -> 
      (failwith "error"));;
let rec tails_lh__d1 _lh_tails_arg1_0 =
  (match _lh_tails_arg1_0 with
    | `LH_N -> 
      (fun f_8_4 f_8_5 -> 
        (`LH_N))
    | _ -> 
      (let rec t_9_7 = (tails_lh__d1 (tail_lh__d1 _lh_tails_arg1_0)) in
        (let rec h_9_7 = _lh_tails_arg1_0 in
          (fun f_8_6 -> 
            (if (f_8_6 h_9_7) then
              (let rec t_9_8 = (t_9_7 f_8_6) in
                (let rec h_9_8 = h_9_7 in
                  (fun f_8_7 -> 
                    (`LH_C((f_8_7 h_9_8), (t_9_8 f_8_7))))))
            else
              (t_9_7 f_8_6))))));;
let rec null_lh__d5 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec map_lh__d5 f_8_8 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_9_9, t_9_9) -> 
      (let rec t_1_0_0 = ((map_lh__d5 f_8_8) t_9_9) in
        (let rec h_1_0_0 = (f_8_8 h_9_9) in
          (fun f_8_9 i_3 -> 
            ((f_8_9 h_1_0_0) ((t_1_0_0 f_8_9) i_3)))))
    | `LH_N -> 
      (fun f_9_0 i_4 -> 
        i_4));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec length_lh__d2 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_0_7, t_1_0_7) -> 
      (1 + (length_lh__d2 t_1_0_7))
    | `LH_N -> 
      0);;
let rec head_lh__d2 ls_4 =
  (match ls_4 with
    | `LH_C(h_4_5, t_4_5) -> 
      h_4_5
    | `LH_N -> 
      (failwith "error"));;
let rec toUpper_lh__d2 _lh_toUpper_arg1_1 =
  (let rec _lh_matchIdent_2_9 = _lh_toUpper_arg1_1 in
    (match _lh_matchIdent_2_9 with
      | 'a' -> 
        'A'
      | 'b' -> 
        'B'
      | 'c' -> 
        'C'
      | 'd' -> 
        'D'
      | 'e' -> 
        'E'
      | 'f' -> 
        'F'
      | 'g' -> 
        'G'
      | 'h' -> 
        'H'
      | 'i' -> 
        'I'
      | 'j' -> 
        'J'
      | 'k' -> 
        'K'
      | 'l' -> 
        'L'
      | 'm' -> 
        'M'
      | 'n' -> 
        'N'
      | 'o' -> 
        'O'
      | 'p' -> 
        'P'
      | 'q' -> 
        'Q'
      | 'r' -> 
        'R'
      | 's' -> 
        'S'
      | 't' -> 
        'T'
      | 'u' -> 
        'U'
      | 'v' -> 
        'V'
      | 'w' -> 
        'W'
      | 'x' -> 
        'X'
      | 'y' -> 
        'Y'
      | 'z' -> 
        'Z'
      | _ -> 
        _lh_matchIdent_2_9));;
let rec map_lh__d7 f_6_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_4_2, t_4_2) -> 
      (`LH_C((f_6_0 h_4_2), ((map_lh__d7 f_6_0) t_4_2)))
    | `LH_N -> 
      (`LH_N));;
let rec ucase_lh__d3 _lh_ucase_arg1_0 =
  ((map_lh__d7 toUpper_lh__d2) _lh_ucase_arg1_0);;
let rec ucase_lh__d2 _lh_ucase_arg1_1 =
  ((map_lh__d7 toUpper_lh__d2) _lh_ucase_arg1_1);;
let rec conjugates_lh__d1 =
  (let rec prepare_0 = (fun _lh_prepare_arg1_0 -> 
    (_lh_prepare_arg1_0 (fun wr_0 -> 
      (let rec _lh_matchIdent_1_5 = wr_0 in
        (_lh_matchIdent_1_5 99))))) in
    (let rec oneways_0 = (let rec t_4_6 = (fun ys_2 -> 
      ys_2) in
      (let rec h_4_6 = (let rec _lh_prepare_LH_P2_1_0 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))) in
        (let rec _lh_prepare_LH_P2_0_0 = (`LH_C('m', (`LH_C('e', (`LH_N))))) in
          (fun _lh_dummy_1_6 -> 
            (let rec _lh_conj_LH_P2_1_0 = _lh_prepare_LH_P2_1_0 in
              (let rec _lh_conj_LH_P2_0_0 = (ucase_lh__d3 _lh_prepare_LH_P2_0_0) in
                (fun _lh_conj_arg1_0 _lh_listcomp_fun_ls_t_0 _lh_listcomp_fun_0 -> 
                  (if ((ucase_lh__d2 _lh_conj_arg1_0) = _lh_conj_LH_P2_0_0) then
                    (`LH_C(_lh_conj_LH_P2_1_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                  else
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))))))) in
        (fun ys_3 -> 
          (let rec t_4_7 = (t_4_6 ys_3) in
            (let rec h_4_7 = h_4_6 in
              (fun f_6_4 -> 
                (let rec _lh_listcomp_fun_ls_t_1 = (t_4_7 f_6_4) in
                  (let rec _lh_listcomp_fun_ls_h_0 = (f_6_4 h_4_7) in
                    (fun _lh_conj_arg1_1 _lh_listcomp_fun_1 -> 
                      (((_lh_listcomp_fun_ls_h_0 _lh_conj_arg1_1) _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1)))))))))) in
      (let rec bothways_0 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_2 _lh_dummy_1_7 f_6_5 _lh_conj_arg1_2 _lh_listcomp_fun_3 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_conjugates_LH_P2_1_0 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))))) in
          (let rec _lh_conjugates_LH_P2_0_0 = (`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_N))))))) in
            (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_4 -> 
              (let rec t_4_8 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_8) in
                (let rec h_4_8 = (let rec t_4_9 = (let rec t_5_0 = (fun ys_4 -> 
                  ys_4) in
                  (let rec h_4_9 = (let rec _lh_prepare_LH_P2_1_1 = _lh_conjugates_LH_P2_0_0 in
                    (let rec _lh_prepare_LH_P2_0_1 = _lh_conjugates_LH_P2_1_0 in
                      (fun _lh_dummy_1_8 -> 
                        (let rec _lh_conj_LH_P2_1_1 = _lh_prepare_LH_P2_1_1 in
                          (let rec _lh_conj_LH_P2_0_1 = (ucase_lh__d3 _lh_prepare_LH_P2_0_1) in
                            (fun _lh_conj_arg1_3 _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_5 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_3) = _lh_conj_LH_P2_0_1) then
                                (`LH_C(_lh_conj_LH_P2_1_1, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9)))
                              else
                                (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_9)))))))) in
                    (fun ys_5 -> 
                      (let rec t_5_1 = (t_5_0 ys_5) in
                        (let rec h_5_0 = h_4_9 in
                          (fun f_6_6 -> 
                            (let rec _lh_listcomp_fun_ls_t_1_0 = (t_5_1 f_6_6) in
                              (let rec _lh_listcomp_fun_ls_h_2 = (f_6_6 h_5_0) in
                                (fun _lh_conj_arg1_4 _lh_listcomp_fun_6 -> 
                                  (((_lh_listcomp_fun_ls_h_2 _lh_conj_arg1_4) _lh_listcomp_fun_ls_t_1_0) _lh_listcomp_fun_6)))))))))) in
                  (let rec h_5_1 = (let rec _lh_prepare_LH_P2_1_2 = _lh_conjugates_LH_P2_1_0 in
                    (let rec _lh_prepare_LH_P2_0_2 = _lh_conjugates_LH_P2_0_0 in
                      (fun _lh_dummy_1_9 -> 
                        (let rec _lh_conj_LH_P2_1_2 = _lh_prepare_LH_P2_1_2 in
                          (let rec _lh_conj_LH_P2_0_2 = (ucase_lh__d3 _lh_prepare_LH_P2_0_2) in
                            (fun _lh_conj_arg1_5 _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_7 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_5) = _lh_conj_LH_P2_0_2) then
                                (`LH_C(_lh_conj_LH_P2_1_2, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_1)))
                              else
                                (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1_1)))))))) in
                    (fun ys_6 -> 
                      (let rec t_5_2 = (t_4_9 ys_6) in
                        (let rec h_5_2 = h_5_1 in
                          (fun f_6_7 -> 
                            (let rec _lh_listcomp_fun_ls_t_1_2 = (t_5_2 f_6_7) in
                              (let rec _lh_listcomp_fun_ls_h_3 = (f_6_7 h_5_2) in
                                (fun _lh_conj_arg1_6 _lh_listcomp_fun_8 -> 
                                  (((_lh_listcomp_fun_ls_h_3 _lh_conj_arg1_6) _lh_listcomp_fun_ls_t_1_2) _lh_listcomp_fun_8)))))))))) in
                  (fun _lh_dummy_2_0 -> 
                    (h_4_8 (t_4_8 99)))))))) in
          (fun _lh_listcomp_fun_9 -> 
            ((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_7) _lh_listcomp_fun_9)))) in
        (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_conjugates_LH_P2_1_1 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))) in
          (let rec _lh_conjugates_LH_P2_0_1 = (`LH_C('I', (`LH_C('_', (`LH_C('v', (`LH_C('e', (`LH_N))))))))) in
            (fun _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_1_0 -> 
              (let rec t_5_3 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_3) in
                (let rec h_5_3 = (let rec t_5_4 = (let rec t_5_5 = (fun ys_7 -> 
                  ys_7) in
                  (let rec h_5_4 = (let rec _lh_prepare_LH_P2_1_3 = _lh_conjugates_LH_P2_0_1 in
                    (let rec _lh_prepare_LH_P2_0_3 = _lh_conjugates_LH_P2_1_1 in
                      (fun _lh_dummy_2_1 -> 
                        (let rec _lh_conj_LH_P2_1_3 = _lh_prepare_LH_P2_1_3 in
                          (let rec _lh_conj_LH_P2_0_3 = (ucase_lh__d3 _lh_prepare_LH_P2_0_3) in
                            (fun _lh_conj_arg1_7 _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_1_1 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_7) = _lh_conj_LH_P2_0_3) then
                                (`LH_C(_lh_conj_LH_P2_1_3, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_4)))
                              else
                                (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_4)))))))) in
                    (fun ys_8 -> 
                      (let rec t_5_6 = (t_5_5 ys_8) in
                        (let rec h_5_5 = h_5_4 in
                          (fun f_6_8 -> 
                            (let rec _lh_listcomp_fun_ls_t_1_5 = (t_5_6 f_6_8) in
                              (let rec _lh_listcomp_fun_ls_h_5 = (f_6_8 h_5_5) in
                                (fun _lh_conj_arg1_8 _lh_listcomp_fun_1_2 -> 
                                  (((_lh_listcomp_fun_ls_h_5 _lh_conj_arg1_8) _lh_listcomp_fun_ls_t_1_5) _lh_listcomp_fun_1_2)))))))))) in
                  (let rec h_5_6 = (let rec _lh_prepare_LH_P2_1_4 = _lh_conjugates_LH_P2_1_1 in
                    (let rec _lh_prepare_LH_P2_0_4 = _lh_conjugates_LH_P2_0_1 in
                      (fun _lh_dummy_2_2 -> 
                        (let rec _lh_conj_LH_P2_1_4 = _lh_prepare_LH_P2_1_4 in
                          (let rec _lh_conj_LH_P2_0_4 = (ucase_lh__d3 _lh_prepare_LH_P2_0_4) in
                            (fun _lh_conj_arg1_9 _lh_listcomp_fun_ls_t_1_6 _lh_listcomp_fun_1_3 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_9) = _lh_conj_LH_P2_0_4) then
                                (`LH_C(_lh_conj_LH_P2_1_4, (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_6)))
                              else
                                (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_6)))))))) in
                    (fun ys_9 -> 
                      (let rec t_5_7 = (t_5_4 ys_9) in
                        (let rec h_5_7 = h_5_6 in
                          (fun f_6_9 -> 
                            (let rec _lh_listcomp_fun_ls_t_1_7 = (t_5_7 f_6_9) in
                              (let rec _lh_listcomp_fun_ls_h_6 = (f_6_9 h_5_7) in
                                (fun _lh_conj_arg1_1_0 _lh_listcomp_fun_1_4 -> 
                                  (((_lh_listcomp_fun_ls_h_6 _lh_conj_arg1_1_0) _lh_listcomp_fun_ls_t_1_7) _lh_listcomp_fun_1_4)))))))))) in
                  (fun _lh_dummy_2_3 -> 
                    (h_5_3 (t_5_3 99)))))))) in
          (fun _lh_listcomp_fun_1_5 -> 
            ((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_1_5)))) in
        (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_conjugates_LH_P2_1_2 = (`LH_C('m', (`LH_C('y', (`LH_N))))) in
          (let rec _lh_conjugates_LH_P2_0_2 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_N))))))))) in
            (fun _lh_listcomp_fun_ls_t_1_8 _lh_listcomp_fun_1_6 -> 
              (let rec t_5_8 = (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_8) in
                (let rec h_5_8 = (let rec t_5_9 = (let rec t_6_0 = (fun ys_1_0 -> 
                  ys_1_0) in
                  (let rec h_5_9 = (let rec _lh_prepare_LH_P2_1_5 = _lh_conjugates_LH_P2_0_2 in
                    (let rec _lh_prepare_LH_P2_0_5 = _lh_conjugates_LH_P2_1_2 in
                      (fun _lh_dummy_2_4 -> 
                        (let rec _lh_conj_LH_P2_1_5 = _lh_prepare_LH_P2_1_5 in
                          (let rec _lh_conj_LH_P2_0_5 = (ucase_lh__d3 _lh_prepare_LH_P2_0_5) in
                            (fun _lh_conj_arg1_1_1 _lh_listcomp_fun_ls_t_1_9 _lh_listcomp_fun_1_7 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_1_1) = _lh_conj_LH_P2_0_5) then
                                (`LH_C(_lh_conj_LH_P2_1_5, (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_9)))
                              else
                                (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_9)))))))) in
                    (fun ys_1_1 -> 
                      (let rec t_6_1 = (t_6_0 ys_1_1) in
                        (let rec h_6_0 = h_5_9 in
                          (fun f_7_0 -> 
                            (let rec _lh_listcomp_fun_ls_t_2_0 = (t_6_1 f_7_0) in
                              (let rec _lh_listcomp_fun_ls_h_8 = (f_7_0 h_6_0) in
                                (fun _lh_conj_arg1_1_2 _lh_listcomp_fun_1_8 -> 
                                  (((_lh_listcomp_fun_ls_h_8 _lh_conj_arg1_1_2) _lh_listcomp_fun_ls_t_2_0) _lh_listcomp_fun_1_8)))))))))) in
                  (let rec h_6_1 = (let rec _lh_prepare_LH_P2_1_6 = _lh_conjugates_LH_P2_1_2 in
                    (let rec _lh_prepare_LH_P2_0_6 = _lh_conjugates_LH_P2_0_2 in
                      (fun _lh_dummy_2_5 -> 
                        (let rec _lh_conj_LH_P2_1_6 = _lh_prepare_LH_P2_1_6 in
                          (let rec _lh_conj_LH_P2_0_6 = (ucase_lh__d3 _lh_prepare_LH_P2_0_6) in
                            (fun _lh_conj_arg1_1_3 _lh_listcomp_fun_ls_t_2_1 _lh_listcomp_fun_1_9 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_1_3) = _lh_conj_LH_P2_0_6) then
                                (`LH_C(_lh_conj_LH_P2_1_6, (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_2_1)))
                              else
                                (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_2_1)))))))) in
                    (fun ys_1_2 -> 
                      (let rec t_6_2 = (t_5_9 ys_1_2) in
                        (let rec h_6_2 = h_6_1 in
                          (fun f_7_1 -> 
                            (let rec _lh_listcomp_fun_ls_t_2_2 = (t_6_2 f_7_1) in
                              (let rec _lh_listcomp_fun_ls_h_9 = (f_7_1 h_6_2) in
                                (fun _lh_conj_arg1_1_4 _lh_listcomp_fun_2_0 -> 
                                  (((_lh_listcomp_fun_ls_h_9 _lh_conj_arg1_1_4) _lh_listcomp_fun_ls_t_2_2) _lh_listcomp_fun_2_0)))))))))) in
                  (fun _lh_dummy_2_6 -> 
                    (h_5_8 (t_5_8 99)))))))) in
          (fun _lh_listcomp_fun_2_1 -> 
            ((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_2_1)))) in
        (let rec _lh_listcomp_fun_ls_h_1_0 = (let rec _lh_conjugates_LH_P2_1_3 = (`LH_C('I', (`LH_N))) in
          (let rec _lh_conjugates_LH_P2_0_3 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))) in
            (fun _lh_listcomp_fun_ls_t_2_3 _lh_listcomp_fun_2_2 -> 
              (let rec t_6_3 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_3) in
                (let rec h_6_3 = (let rec t_6_4 = (let rec t_6_5 = (fun ys_1_3 -> 
                  ys_1_3) in
                  (let rec h_6_4 = (let rec _lh_prepare_LH_P2_1_7 = _lh_conjugates_LH_P2_0_3 in
                    (let rec _lh_prepare_LH_P2_0_7 = _lh_conjugates_LH_P2_1_3 in
                      (fun _lh_dummy_2_7 -> 
                        (let rec _lh_conj_LH_P2_1_7 = _lh_prepare_LH_P2_1_7 in
                          (let rec _lh_conj_LH_P2_0_7 = (ucase_lh__d3 _lh_prepare_LH_P2_0_7) in
                            (fun _lh_conj_arg1_1_5 _lh_listcomp_fun_ls_t_2_4 _lh_listcomp_fun_2_3 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_1_5) = _lh_conj_LH_P2_0_7) then
                                (`LH_C(_lh_conj_LH_P2_1_7, (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_4)))
                              else
                                (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_4)))))))) in
                    (fun ys_1_4 -> 
                      (let rec t_6_6 = (t_6_5 ys_1_4) in
                        (let rec h_6_5 = h_6_4 in
                          (fun f_7_2 -> 
                            (let rec _lh_listcomp_fun_ls_t_2_5 = (t_6_6 f_7_2) in
                              (let rec _lh_listcomp_fun_ls_h_1_1 = (f_7_2 h_6_5) in
                                (fun _lh_conj_arg1_1_6 _lh_listcomp_fun_2_4 -> 
                                  (((_lh_listcomp_fun_ls_h_1_1 _lh_conj_arg1_1_6) _lh_listcomp_fun_ls_t_2_5) _lh_listcomp_fun_2_4)))))))))) in
                  (let rec h_6_6 = (let rec _lh_prepare_LH_P2_1_8 = _lh_conjugates_LH_P2_1_3 in
                    (let rec _lh_prepare_LH_P2_0_8 = _lh_conjugates_LH_P2_0_3 in
                      (fun _lh_dummy_2_8 -> 
                        (let rec _lh_conj_LH_P2_1_8 = _lh_prepare_LH_P2_1_8 in
                          (let rec _lh_conj_LH_P2_0_8 = (ucase_lh__d3 _lh_prepare_LH_P2_0_8) in
                            (fun _lh_conj_arg1_1_7 _lh_listcomp_fun_ls_t_2_6 _lh_listcomp_fun_2_5 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_1_7) = _lh_conj_LH_P2_0_8) then
                                (`LH_C(_lh_conj_LH_P2_1_8, (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_2_6)))
                              else
                                (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_2_6)))))))) in
                    (fun ys_1_5 -> 
                      (let rec t_6_7 = (t_6_4 ys_1_5) in
                        (let rec h_6_7 = h_6_6 in
                          (fun f_7_3 -> 
                            (let rec _lh_listcomp_fun_ls_t_2_7 = (t_6_7 f_7_3) in
                              (let rec _lh_listcomp_fun_ls_h_1_2 = (f_7_3 h_6_7) in
                                (fun _lh_conj_arg1_1_8 _lh_listcomp_fun_2_6 -> 
                                  (((_lh_listcomp_fun_ls_h_1_2 _lh_conj_arg1_1_8) _lh_listcomp_fun_ls_t_2_7) _lh_listcomp_fun_2_6)))))))))) in
                  (fun _lh_dummy_2_9 -> 
                    (h_6_3 (t_6_3 99)))))))) in
          (fun _lh_listcomp_fun_2_7 -> 
            ((_lh_listcomp_fun_ls_h_1_0 _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_2_7)))) in
        (let rec _lh_listcomp_fun_ls_h_1_3 = (let rec _lh_conjugates_LH_P2_1_4 = (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
          (let rec _lh_conjugates_LH_P2_0_4 = (`LH_C('w', (`LH_C('e', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))) in
            (fun _lh_listcomp_fun_ls_t_2_8 _lh_listcomp_fun_2_8 -> 
              (let rec t_6_8 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_8) in
                (let rec h_6_8 = (let rec t_6_9 = (let rec t_7_0 = (fun ys_1_6 -> 
                  ys_1_6) in
                  (let rec h_6_9 = (let rec _lh_prepare_LH_P2_1_9 = _lh_conjugates_LH_P2_0_4 in
                    (let rec _lh_prepare_LH_P2_0_9 = _lh_conjugates_LH_P2_1_4 in
                      (fun _lh_dummy_3_0 -> 
                        (let rec _lh_conj_LH_P2_1_9 = _lh_prepare_LH_P2_1_9 in
                          (let rec _lh_conj_LH_P2_0_9 = (ucase_lh__d3 _lh_prepare_LH_P2_0_9) in
                            (fun _lh_conj_arg1_1_9 _lh_listcomp_fun_ls_t_2_9 _lh_listcomp_fun_2_9 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_1_9) = _lh_conj_LH_P2_0_9) then
                                (`LH_C(_lh_conj_LH_P2_1_9, (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_9)))
                              else
                                (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_9)))))))) in
                    (fun ys_1_7 -> 
                      (let rec t_7_1 = (t_7_0 ys_1_7) in
                        (let rec h_7_0 = h_6_9 in
                          (fun f_7_4 -> 
                            (let rec _lh_listcomp_fun_ls_t_3_0 = (t_7_1 f_7_4) in
                              (let rec _lh_listcomp_fun_ls_h_1_4 = (f_7_4 h_7_0) in
                                (fun _lh_conj_arg1_2_0 _lh_listcomp_fun_3_0 -> 
                                  (((_lh_listcomp_fun_ls_h_1_4 _lh_conj_arg1_2_0) _lh_listcomp_fun_ls_t_3_0) _lh_listcomp_fun_3_0)))))))))) in
                  (let rec h_7_1 = (let rec _lh_prepare_LH_P2_1_1_0 = _lh_conjugates_LH_P2_1_4 in
                    (let rec _lh_prepare_LH_P2_0_1_0 = _lh_conjugates_LH_P2_0_4 in
                      (fun _lh_dummy_3_1 -> 
                        (let rec _lh_conj_LH_P2_1_1_0 = _lh_prepare_LH_P2_1_1_0 in
                          (let rec _lh_conj_LH_P2_0_1_0 = (ucase_lh__d3 _lh_prepare_LH_P2_0_1_0) in
                            (fun _lh_conj_arg1_2_1 _lh_listcomp_fun_ls_t_3_1 _lh_listcomp_fun_3_1 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_2_1) = _lh_conj_LH_P2_0_1_0) then
                                (`LH_C(_lh_conj_LH_P2_1_1_0, (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_3_1)))
                              else
                                (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_3_1)))))))) in
                    (fun ys_1_8 -> 
                      (let rec t_7_2 = (t_6_9 ys_1_8) in
                        (let rec h_7_2 = h_7_1 in
                          (fun f_7_5 -> 
                            (let rec _lh_listcomp_fun_ls_t_3_2 = (t_7_2 f_7_5) in
                              (let rec _lh_listcomp_fun_ls_h_1_5 = (f_7_5 h_7_2) in
                                (fun _lh_conj_arg1_2_2 _lh_listcomp_fun_3_2 -> 
                                  (((_lh_listcomp_fun_ls_h_1_5 _lh_conj_arg1_2_2) _lh_listcomp_fun_ls_t_3_2) _lh_listcomp_fun_3_2)))))))))) in
                  (fun _lh_dummy_3_2 -> 
                    (h_6_8 (t_6_8 99)))))))) in
          (fun _lh_listcomp_fun_3_3 -> 
            ((_lh_listcomp_fun_ls_h_1_3 _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_3_3)))) in
        (let rec _lh_listcomp_fun_ls_h_1_6 = (let rec _lh_conjugates_LH_P2_1_5 = (`LH_C('a', (`LH_C('m', (`LH_N))))) in
          (let rec _lh_conjugates_LH_P2_0_5 = (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_N))))))) in
            (fun _lh_listcomp_fun_ls_t_3_3 _lh_listcomp_fun_3_4 -> 
              (let rec t_7_3 = (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_3_3) in
                (let rec h_7_3 = (let rec t_7_4 = (let rec t_7_5 = (fun ys_1_9 -> 
                  ys_1_9) in
                  (let rec h_7_4 = (let rec _lh_prepare_LH_P2_1_1_1 = _lh_conjugates_LH_P2_0_5 in
                    (let rec _lh_prepare_LH_P2_0_1_1 = _lh_conjugates_LH_P2_1_5 in
                      (fun _lh_dummy_3_3 -> 
                        (let rec _lh_conj_LH_P2_1_1_1 = _lh_prepare_LH_P2_1_1_1 in
                          (let rec _lh_conj_LH_P2_0_1_1 = (ucase_lh__d3 _lh_prepare_LH_P2_0_1_1) in
                            (fun _lh_conj_arg1_2_3 _lh_listcomp_fun_ls_t_3_4 _lh_listcomp_fun_3_5 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_2_3) = _lh_conj_LH_P2_0_1_1) then
                                (`LH_C(_lh_conj_LH_P2_1_1_1, (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_3_4)))
                              else
                                (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_3_4)))))))) in
                    (fun ys_2_0 -> 
                      (let rec t_7_6 = (t_7_5 ys_2_0) in
                        (let rec h_7_5 = h_7_4 in
                          (fun f_7_6 -> 
                            (let rec _lh_listcomp_fun_ls_t_3_5 = (t_7_6 f_7_6) in
                              (let rec _lh_listcomp_fun_ls_h_1_7 = (f_7_6 h_7_5) in
                                (fun _lh_conj_arg1_2_4 _lh_listcomp_fun_3_6 -> 
                                  (((_lh_listcomp_fun_ls_h_1_7 _lh_conj_arg1_2_4) _lh_listcomp_fun_ls_t_3_5) _lh_listcomp_fun_3_6)))))))))) in
                  (let rec h_7_6 = (let rec _lh_prepare_LH_P2_1_1_2 = _lh_conjugates_LH_P2_1_5 in
                    (let rec _lh_prepare_LH_P2_0_1_2 = _lh_conjugates_LH_P2_0_5 in
                      (fun _lh_dummy_3_4 -> 
                        (let rec _lh_conj_LH_P2_1_1_2 = _lh_prepare_LH_P2_1_1_2 in
                          (let rec _lh_conj_LH_P2_0_1_2 = (ucase_lh__d3 _lh_prepare_LH_P2_0_1_2) in
                            (fun _lh_conj_arg1_2_5 _lh_listcomp_fun_ls_t_3_6 _lh_listcomp_fun_3_7 -> 
                              (if ((ucase_lh__d2 _lh_conj_arg1_2_5) = _lh_conj_LH_P2_0_1_2) then
                                (`LH_C(_lh_conj_LH_P2_1_1_2, (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_3_6)))
                              else
                                (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_3_6)))))))) in
                    (fun ys_2_1 -> 
                      (let rec t_7_7 = (t_7_4 ys_2_1) in
                        (let rec h_7_7 = h_7_6 in
                          (fun f_7_7 -> 
                            (let rec _lh_listcomp_fun_ls_t_3_7 = (t_7_7 f_7_7) in
                              (let rec _lh_listcomp_fun_ls_h_1_8 = (f_7_7 h_7_7) in
                                (fun _lh_conj_arg1_2_6 _lh_listcomp_fun_3_8 -> 
                                  (((_lh_listcomp_fun_ls_h_1_8 _lh_conj_arg1_2_6) _lh_listcomp_fun_ls_t_3_7) _lh_listcomp_fun_3_8)))))))))) in
                  (fun _lh_dummy_3_5 -> 
                    (h_7_3 (t_7_3 99)))))))) in
          (fun _lh_listcomp_fun_3_9 -> 
            ((_lh_listcomp_fun_ls_h_1_6 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_3_9)))) in
        (prepare_0 (oneways_0 ((let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_0 -> 
          (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4_0)) in
          (_lh_listcomp_fun_4_0 bothways_0)) 99))))));;
let rec toUpper_lh__d1 _lh_toUpper_arg1_0 =
  (let rec _lh_matchIdent_2_6 = _lh_toUpper_arg1_0 in
    (match _lh_matchIdent_2_6 with
      | 'a' -> 
        'A'
      | 'b' -> 
        'B'
      | 'c' -> 
        'C'
      | 'd' -> 
        'D'
      | 'e' -> 
        'E'
      | 'f' -> 
        'F'
      | 'g' -> 
        'G'
      | 'h' -> 
        'H'
      | 'i' -> 
        'I'
      | 'j' -> 
        'J'
      | 'k' -> 
        'K'
      | 'l' -> 
        'L'
      | 'm' -> 
        'M'
      | 'n' -> 
        'N'
      | 'o' -> 
        'O'
      | 'p' -> 
        'P'
      | 'q' -> 
        'Q'
      | 'r' -> 
        'R'
      | 's' -> 
        'S'
      | 't' -> 
        'T'
      | 'u' -> 
        'U'
      | 'v' -> 
        'V'
      | 'w' -> 
        'W'
      | 'x' -> 
        'X'
      | 'y' -> 
        'Y'
      | 'z' -> 
        'Z'
      | _ -> 
        _lh_matchIdent_2_6));;
let rec map_lh__d4 f_9_1 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_0_1, t_1_0_1) -> 
      (`LH_C((f_9_1 h_1_0_1), ((map_lh__d4 f_9_1) t_1_0_1)))
    | `LH_N -> 
      (`LH_N));;
let rec ucase_lh__d1 _lh_ucase_arg1_2 =
  ((map_lh__d4 toUpper_lh__d1) _lh_ucase_arg1_2);;
let rec mappend_lh__d9 xs_1_1 ys_3_7 =
  (match xs_1_1 with
    | `LH_C(h_9_4, t_9_4) -> 
      (`LH_C(h_9_4, ((mappend_lh__d9 t_9_4) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec replies_lh__d1 _lh_replies_arg1_0 _lh_replies_arg2_0 =
  ((fun _lh_funcomp_x_7 -> 
    ((fun _lh_funcomp_x_8 -> 
      ((_lh_funcomp_x_8 (fun ls_1_4 -> 
        (let rec _lh_matchIdent_3_1 = _lh_replies_arg1_0 in
          (match _lh_matchIdent_3_1 with
            | `LH_N -> 
              true
            | `LH_C(_lh_prefix_LH_C_0_5, _lh_prefix_LH_C_1_5) -> 
              (let rec _lh_matchIdent_3_2 = (Lazy.force ((lz_map_lh__d1 ucase_lh__d1) ls_1_4)) in
                ((_lh_matchIdent_3_2 _lh_prefix_LH_C_0_5) _lh_prefix_LH_C_1_5))
            | _ -> 
              (failwith "error"))))) (fun _lh_funcomp_x_9 -> 
        let rec conj_0 = (fun _lh_conj_arg1_2_7 -> 
          (head_lh__d2 ((mappend_lh__d9 (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_1 -> 
            ((_lh_listcomp_fun_para_1 _lh_conj_arg1_2_7) _lh_listcomp_fun_4_1)) in
            (_lh_listcomp_fun_4_1 conjugates_lh__d1))) (`LH_C(_lh_conj_arg1_2_7, (`LH_N))))))
        and trailingI_0 = (fun _lh_trailingI_arg1_0 -> 
          (let rec cons_2 = (fun x_1 xs_1_2 -> 
            (if ((x_1 = (`LH_C('I', (`LH_N)))) && (null_lh__d4 xs_1_2)) then
              (`LH_C((`LH_C('m', (`LH_C('e', (`LH_N))))), (`LH_N)))
            else
              (`LH_C(x_1, xs_1_2)))) in
            ((_lh_trailingI_arg1_0 cons_2) (`LH_N))))
        and maybe_0 = (fun _lh_maybe_arg1_0 _lh_maybe_arg2_0 -> 
          (if (null_lh__d5 _lh_maybe_arg2_0) then
            _lh_maybe_arg1_0
          else
            _lh_maybe_arg2_0))
        in ((fun _lh_funcomp_x_1_0 -> 
          ((fun _lh_funcomp_x_1_1 -> 
            ((fun _lh_funcomp_x_1_2 -> 
              (unwords_lh__d1 (trailingI_0 _lh_funcomp_x_1_2))) ((map_lh__d5 conj_0) _lh_funcomp_x_1_1))) ((maybe_0 _lh_replies_arg2_0) _lh_funcomp_x_1_0))) ((drop_lh__d1 (length_lh__d2 _lh_replies_arg1_0)) _lh_funcomp_x_9))))) (tails_lh__d1 _lh_funcomp_x_7))) _lh_replies_arg2_0);;
let rec head_lh__d1 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_1_0_2, t_1_0_2) -> 
      h_1_0_2
    | `LH_N -> 
      (failwith "error"));;
let rec answer_lh__d1 _lh_answer_arg1_0 _lh_answer_arg2_0 =
  let rec cons_1 = (fun _lh_cons_arg1_1 _lh_cons_arg2_1 -> 
    (match _lh_cons_arg2_1 with
      | `LH_P2(_lh_cons_LH_P2_0_0, _lh_cons_LH_P2_1_0) -> 
        (`LH_P2(_lh_cons_LH_P2_0_0, (`LH_C(_lh_cons_arg1_1, _lh_cons_LH_P2_1_0))))
      | _ -> 
        (failwith "error")))
  and ans_0 = (fun _lh_ans_arg1_0 _lh_ans_arg2_0 -> 
    (match _lh_ans_arg1_0 with
      | `LH_C(_lh_ans_LH_C_0_0, _lh_ans_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1_6 = _lh_ans_LH_C_0_0 in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_ans_LH_P2_0_0, _lh_ans_LH_P2_1_0) -> 
              (match _lh_ans_LH_P2_1_0 with
                | `LH_C(_lh_ans_LH_C_0_1, _lh_ans_LH_C_1_1) -> 
                  (let rec rs_0 = ((replies_lh__d1 _lh_ans_LH_P2_0_0) _lh_ans_arg2_0) in
                    (if (null_lh__d3 rs_0) then
                      ((cons_1 _lh_ans_LH_C_0_0) ((ans_0 _lh_ans_LH_C_1_0) _lh_ans_arg2_0))
                    else
                      (`LH_P2(((makeResponse_lh__d1 _lh_ans_LH_C_0_1) (head_lh__d1 rs_0)), (`LH_C((`LH_P2(_lh_ans_LH_P2_0_0, _lh_ans_LH_C_1_1)), _lh_ans_LH_C_1_0))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
  in (let rec _lh_matchIdent_1_7 = ((ans_0 (keyTabOf_lh__d1 _lh_answer_arg1_0)) _lh_answer_arg2_0) in
    (match _lh_matchIdent_1_7 with
      | `LH_P2(_lh_answer_LH_P2_0_0, _lh_answer_LH_P2_1_0) -> 
        (let rec _lh_session_LH_P2_1_0 = ((newKeyTab_lh__d1 _lh_answer_LH_P2_1_0) _lh_answer_arg1_0) in
          (let rec _lh_session_LH_P2_0_0 = _lh_answer_LH_P2_0_0 in
            (fun _lh_session_LH_C_0_1_4 _lh_session_LH_C_1_1_4 -> 
              (((mappend_lh__d2 _lh_session_LH_P2_0_0) (let rec t_7_8 = (let rec t_7_9 = (fun ys_2_2 -> 
                ys_2_2) in
                (let rec h_7_8 = 'n' in
                  (fun ys_2_3 -> 
                    (let rec t_8_0 = (t_7_9 ys_2_3) in
                      (let rec h_7_9 = h_7_8 in
                        (fun _lh_dummy_3_6 -> 
                          (1 + (t_8_0 99)))))))) in
                (let rec h_8_0 = 'n' in
                  (fun ys_2_4 -> 
                    (let rec t_8_1 = (t_7_8 ys_2_4) in
                      (let rec h_8_1 = h_8_0 in
                        (fun _lh_dummy_3_7 -> 
                          (1 + (t_8_1 99))))))))) ((_lh_session_LH_C_1_1_4 _lh_session_LH_P2_1_0) _lh_session_LH_C_0_1_4)))))
      | _ -> 
        (failwith "error")));;
let rec foldr_lh__d1 f_6_1 i_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_4_3, t_4_3) -> 
      ((f_6_1 h_4_3) (((foldr_lh__d1 f_6_1) i_1) t_4_3))
    | `LH_N -> 
      i_1);;
let rec dropWhile_lh__d2 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_lh__d2 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d2 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec trim_lh__d1 _lh_trim_arg1_0 =
  (let rec cons_0 = (fun _lh_cons_arg1_0 _lh_cons_arg2_0 -> 
    (if (((let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_1_1 = (let rec _lh_inList_LH_C_1_2 = (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_1_4 = (fun _lh_inList_arg1_0 -> 
      false) in
      (let rec _lh_inList_LH_C_0_0 = ',' in
        (fun _lh_inList_arg1_1 -> 
          (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_0) then
            true
          else
            (_lh_inList_LH_C_1_4 _lh_inList_arg1_1))))) in
      (let rec _lh_inList_LH_C_0_1 = '?' in
        (fun _lh_inList_arg1_2 -> 
          (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_1) then
            true
          else
            (_lh_inList_LH_C_1_3 _lh_inList_arg1_2))))) in
      (let rec _lh_inList_LH_C_0_2 = '!' in
        (fun _lh_inList_arg1_3 -> 
          (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_2) then
            true
          else
            (_lh_inList_LH_C_1_2 _lh_inList_arg1_3))))) in
      (let rec _lh_inList_LH_C_0_3 = '.' in
        (fun _lh_inList_arg1_4 -> 
          (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_3) then
            true
          else
            (_lh_inList_LH_C_1_1 _lh_inList_arg1_4))))) in
      (let rec _lh_inList_LH_C_0_4 = ' ' in
        (fun _lh_inList_arg1_5 -> 
          (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_4) then
            true
          else
            (_lh_inList_LH_C_1_0 _lh_inList_arg1_5))))) _lh_cons_arg1_0) && (null_lh__d2 _lh_cons_arg2_0)) then
      (`LH_N)
    else
      (`LH_C(_lh_cons_arg1_0, _lh_cons_arg2_0)))) in
    ((fun _lh_funcomp_x_6 -> 
      (((foldr_lh__d1 cons_0) (`LH_N)) ((dropWhile_lh__d2 (fun x_0 -> 
        ((let rec _lh_inList_LH_C_1_5 = (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_1_7 = (let rec _lh_inList_LH_C_1_8 = (let rec _lh_inList_LH_C_1_9 = (fun _lh_inList_arg1_6 -> 
          false) in
          (let rec _lh_inList_LH_C_0_5 = ',' in
            (fun _lh_inList_arg1_7 -> 
              (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_5) then
                true
              else
                (_lh_inList_LH_C_1_9 _lh_inList_arg1_7))))) in
          (let rec _lh_inList_LH_C_0_6 = '?' in
            (fun _lh_inList_arg1_8 -> 
              (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_6) then
                true
              else
                (_lh_inList_LH_C_1_8 _lh_inList_arg1_8))))) in
          (let rec _lh_inList_LH_C_0_7 = '!' in
            (fun _lh_inList_arg1_9 -> 
              (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_7) then
                true
              else
                (_lh_inList_LH_C_1_7 _lh_inList_arg1_9))))) in
          (let rec _lh_inList_LH_C_0_8 = '.' in
            (fun _lh_inList_arg1_1_0 -> 
              (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_8) then
                true
              else
                (_lh_inList_LH_C_1_6 _lh_inList_arg1_1_0))))) in
          (let rec _lh_inList_LH_C_0_9 = ' ' in
            (fun _lh_inList_arg1_1_1 -> 
              (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_9) then
                true
              else
                (_lh_inList_LH_C_1_5 _lh_inList_arg1_1_1))))) x_0))) _lh_funcomp_x_6))) _lh_trim_arg1_0));;
let rec isSpace_lh__d1 _lh_isSpace_arg1_2 =
  (_lh_isSpace_arg1_2 = ' ');;
let rec isSpace_lh__d2 _lh_isSpace_arg1_3 =
  (_lh_isSpace_arg1_3 = ' ');;
let rec break_lh__d1 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_3_0 = ((break_lh__d1 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_3_0 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec dropWhile_lh__d1 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_3_9 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh__d1 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (let rec _lh_words_LH_C_1_0 = _lh_dropWhile_LH_C_1_0 in
          (let rec _lh_words_LH_C_0_0 = _lh_dropWhile_LH_C_0_0 in
            (fun _lh_dummy_4_0 -> 
              (let rec _lh_matchIdent_2_7 = ((break_lh__d1 isSpace_lh__d1) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
                (match _lh_matchIdent_2_7 with
                  | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
                    (`LH_C(_lh_words_LH_P2_0_0, (let rec _lh_matchIdent_2_8 = ((dropWhile_lh__d1 isSpace_lh__d2) _lh_words_LH_P2_1_0) in
                      (_lh_matchIdent_2_8 99))))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d2 f_8_2 ls_8 =
  (match ls_8 with
    | `LH_C(h_9_2, t_9_2) -> 
      (`LH_C((f_8_2 h_9_2), ((map_lh__d2 f_8_2) t_9_2)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec null_lh__d1 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec repeated_lh__d1 _lh_repeated_arg1_0 =
  (match _lh_repeated_arg1_0 with
    | `LH_P2(_lh_repeated_LH_P2_0_0, _lh_repeated_LH_P2_1_0) -> 
      (match _lh_repeated_LH_P2_1_0 with
        | `LH_C(_lh_repeated_LH_C_0_0, _lh_repeated_LH_C_1_0) -> 
          (let rec _lh_session_LH_P2_1_1 = (`LH_P2(_lh_repeated_LH_P2_0_0, _lh_repeated_LH_C_1_0)) in
            (let rec _lh_session_LH_P2_0_1 = _lh_repeated_LH_C_0_0 in
              (fun _lh_session_LH_C_0_1_5 _lh_session_LH_C_1_1_5 -> 
                (((mappend_lh__d2 _lh_session_LH_P2_0_1) (let rec t_1_0_3 = (let rec t_1_0_4 = (fun ys_4_2 -> 
                  ys_4_2) in
                  (let rec h_1_0_3 = 'n' in
                    (fun ys_4_3 -> 
                      (let rec t_1_0_5 = (t_1_0_4 ys_4_3) in
                        (let rec h_1_0_4 = h_1_0_3 in
                          (fun _lh_dummy_4_2 -> 
                            (1 + (t_1_0_5 99)))))))) in
                  (let rec h_1_0_5 = 'n' in
                    (fun ys_4_4 -> 
                      (let rec t_1_0_6 = (t_1_0_3 ys_4_4) in
                        (let rec h_1_0_6 = h_1_0_5 in
                          (fun _lh_dummy_4_3 -> 
                            (1 + (t_1_0_6 99))))))))) ((_lh_session_LH_C_1_1_5 _lh_session_LH_P2_1_1) _lh_session_LH_C_0_1_5)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh__d3 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec cycle_lh__d2 _lh_cycle_arg1_0 =
  _lh_cycle_arg1_0;;
let rec cycle_lh__d1 _lh_cycle_arg1_1 =
  _lh_cycle_arg1_1;;
let rec break_lh__d2 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_2_2 = ((break_lh__d2 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_2_2 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh__d4 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec dropWhile_lh__d3 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (fun _lh_dummy_4_4 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile_lh__d3 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (let rec _lh_words_LH_C_1_1 = _lh_dropWhile_LH_C_1_2 in
          (let rec _lh_words_LH_C_0_1 = _lh_dropWhile_LH_C_0_2 in
            (fun _lh_dummy_4_5 -> 
              (let rec _lh_matchIdent_3_3 = ((break_lh__d2 isSpace_lh__d4) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
                (match _lh_matchIdent_3_3 with
                  | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
                    (`LH_C(_lh_words_LH_P2_0_1, (let rec _lh_matchIdent_3_4 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_words_LH_P2_1_1) in
                      (_lh_matchIdent_3_4 99))))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"));;
let rec initial_lh__d1 =
  (let rec repeatMsgs_0 = (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('l', (`LH_C('f', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('b', (`LH_C('y', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('l', (`LH_C('f', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(',', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(',', (`LH_C(' ', (`LH_C('e', (`LH_C('l', (`LH_C('u', (`LH_C('c', (`LH_C('i', (`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('o', (`LH_C('u', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('l', (`LH_C('f', (`LH_C('!', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
    (let rec respMsgs_0 = (let rec canYou_0 = (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('u', (`LH_C('l', (`LH_C('d', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('k', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
      (let rec canI_0 = (`LH_C((`LH_C('?', (`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))) in
        (let rec youAre_0 = (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('k', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('u', (`LH_C('l', (`LH_C('d', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('k', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
          (let rec iDont_0 = (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_N))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('s', (`LH_C('h', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
            (let rec iFeel_0 = (`LH_C((`LH_C('T', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('s', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('e', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('j', (`LH_C('o', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
              (let rec whyDont_0 = (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('.', (`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('g', (`LH_C('o', (`LH_C('o', (`LH_C('d', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
                (let rec whyCant_0 = (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('h', (`LH_C('o', (`LH_C('u', (`LH_C('l', (`LH_C('d', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))), (`LH_N))))) in
                  (let rec areYou_0 = (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('o', (`LH_C('u', (`LH_C('l', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('s', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
                    (let rec iCant_0 = (`LH_C((`LH_C('?', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('H', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('d', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_N))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
                      (let rec iAm_0 = (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('c', (`LH_C('a', (`LH_C('u', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('o', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('j', (`LH_C('o', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
                        (let rec you_0 = (`LH_C((`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('c', (`LH_C('u', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('-', (`LH_C('-', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('O', (`LH_C('h', (`LH_C(',', (`LH_N))))))))), (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('l', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(',', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
                          (let rec yes_0 = (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('.', (`LH_N))))))))))))))))))))))))))), (`LH_N))))))))) in
                            (let rec no_0 = (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('a', (`LH_C('y', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('j', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('n', (`LH_C('e', (`LH_C('g', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('n', (`LH_C('e', (`LH_C('g', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C('?', (`LH_N))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('?', (`LH_N))))))))))))))), (`LH_N))))))))))) in
                              (let rec computer_0 = (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('l', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('t', (`LH_C('i', (`LH_C('c', (`LH_C('u', (`LH_C('l', (`LH_C('a', (`LH_C('r', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('b', (`LH_C('y', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('h', (`LH_C('e', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('p', (`LH_C('e', (`LH_C('o', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('r', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))))))) in
                                (let rec iWant_0 = (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('u', (`LH_C('l', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('g', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('S', (`LH_C('u', (`LH_C('p', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('g', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('n', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('g', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('.', (`LH_C('I', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('o', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))) in
                                  (let rec question_0 = (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('u', (`LH_C('l', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('s', (`LH_C('t', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('H', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('H', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))))))))))) in
                                    (let rec name_0 = (`LH_C((`LH_C('N', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('-', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('g', (`LH_C('o', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))) in
                                      (let rec because_0 = (`LH_C((`LH_C('I', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
                                        (let rec sorry_0 = (`LH_C((`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('i', (`LH_C('s', (`LH_C('e', (`LH_C('!', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('p', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('n', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('e', (`LH_C('e', (`LH_C('l', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('i', (`LH_C('s', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('e', (`LH_C('n', (`LH_C('s', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C('!', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
                                          (let rec dream_0 = (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('g', (`LH_C('g', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('u', (`LH_C('r', (`LH_C('b', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('b', (`LH_C('y', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))) in
                                            (let rec hello_0 = (`LH_C((`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))) in
                                              (let rec maybe_2 = (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))), (`LH_N))))))))))) in
                                                (let rec your_0 = (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C('r', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('y', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))), (`LH_N))))) in
                                                  (let rec always_0 = (`LH_C((`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('i', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('R', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('w', (`LH_C('a', (`LH_C('y', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))), (`LH_N))))))))) in
                                                    (let rec think_0 = (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('B', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
                                                      (let rec alike_0 = (`LH_C((`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('y', (`LH_C('?', (`LH_N))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('g', (`LH_C('g', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('n', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('n', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('?', (`LH_N))))))))), (`LH_N))))))))))))) in
                                                        (let rec friend_0 = (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('u', (`LH_C('p', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('p', (`LH_C('i', (`LH_C('c', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('l', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('r', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))))) in
                                                          (let rec nokeyMsgs_0 = (`LH_C((`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('g', (`LH_C('g', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))), (`LH_C((`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('S', (`LH_C('a', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('s', (`LH_C('y', (`LH_C('c', (`LH_C('h', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))) in
                                                            (let rec _lh_listcomp_fun_ls_t_3_8 = (let rec _lh_listcomp_fun_ls_t_3_9 = (let rec _lh_listcomp_fun_ls_t_4_0 = (let rec _lh_listcomp_fun_ls_t_4_1 = (let rec _lh_listcomp_fun_ls_t_4_2 = (let rec _lh_listcomp_fun_ls_t_4_3 = (let rec _lh_listcomp_fun_ls_t_4_4 = (let rec _lh_listcomp_fun_ls_t_4_5 = (let rec _lh_listcomp_fun_ls_t_4_6 = (let rec _lh_listcomp_fun_ls_t_4_7 = (let rec _lh_listcomp_fun_ls_t_4_8 = (let rec _lh_listcomp_fun_ls_t_4_9 = (let rec _lh_listcomp_fun_ls_t_5_0 = (let rec _lh_listcomp_fun_ls_t_5_1 = (let rec _lh_listcomp_fun_ls_t_5_2 = (let rec _lh_listcomp_fun_ls_t_5_3 = (let rec _lh_listcomp_fun_ls_t_5_4 = (let rec _lh_listcomp_fun_ls_t_5_5 = (let rec _lh_listcomp_fun_ls_t_5_6 = (let rec _lh_listcomp_fun_ls_t_5_7 = (let rec _lh_listcomp_fun_ls_t_5_8 = (let rec _lh_listcomp_fun_ls_t_5_9 = (let rec _lh_listcomp_fun_ls_t_6_0 = (let rec _lh_listcomp_fun_ls_t_6_1 = (let rec _lh_listcomp_fun_ls_t_6_2 = (let rec _lh_listcomp_fun_ls_t_6_3 = (let rec _lh_listcomp_fun_ls_t_6_4 = (let rec _lh_listcomp_fun_ls_t_6_5 = (let rec _lh_listcomp_fun_ls_t_6_6 = (let rec _lh_listcomp_fun_ls_t_6_7 = (let rec _lh_listcomp_fun_ls_t_6_8 = (let rec _lh_listcomp_fun_ls_t_6_9 = (let rec _lh_listcomp_fun_ls_t_7_0 = (let rec _lh_listcomp_fun_ls_t_7_1 = (let rec _lh_listcomp_fun_ls_t_7_2 = (let rec _lh_listcomp_fun_ls_t_7_3 = (let rec _lh_listcomp_fun_ls_t_7_4 = (let rec _lh_listcomp_fun_ls_t_7_5 = (let rec _lh_listcomp_fun_ls_t_7_6 = (let rec _lh_listcomp_fun_ls_t_7_7 = (fun _lh_listcomp_fun_4_3 -> 
                                                              (`LH_N)) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_9 = (let rec _lh_initial_LH_P2_1_0 = nokeyMsgs_0 in
                                                                (let rec _lh_initial_LH_P2_0_0 = (`LH_N) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_8 _lh_listcomp_fun_4_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_3_5 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_0) in
                                                                      (_lh_matchIdent_3_5 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_0))), (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_7_8)))))) in
                                                                (fun _lh_listcomp_fun_4_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_9 _lh_listcomp_fun_ls_t_7_7) _lh_listcomp_fun_4_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_0 = (let rec _lh_initial_LH_P2_1_1 = friend_0 in
                                                                (let rec _lh_initial_LH_P2_0_1 = (`LH_C('F', (`LH_C('R', (`LH_C('I', (`LH_C('E', (`LH_C('N', (`LH_C('D', (`LH_C('S', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_9 _lh_listcomp_fun_4_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_3_6 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1) in
                                                                      (_lh_matchIdent_3_6 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1))), (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_7_9)))))) in
                                                                (fun _lh_listcomp_fun_4_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_0 _lh_listcomp_fun_ls_t_7_6) _lh_listcomp_fun_4_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_1 = (let rec _lh_initial_LH_P2_1_2 = friend_0 in
                                                                (let rec _lh_initial_LH_P2_0_2 = (`LH_C('F', (`LH_C('R', (`LH_C('I', (`LH_C('E', (`LH_C('N', (`LH_C('D', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_0 _lh_listcomp_fun_4_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_3_7 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2) in
                                                                      (_lh_matchIdent_3_7 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2))), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_8_0)))))) in
                                                                (fun _lh_listcomp_fun_4_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_1 _lh_listcomp_fun_ls_t_7_5) _lh_listcomp_fun_4_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_2 = (let rec _lh_initial_LH_P2_1_3 = alike_0 in
                                                                (let rec _lh_initial_LH_P2_0_3 = (`LH_C('A', (`LH_C('L', (`LH_C('I', (`LH_C('K', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_1 _lh_listcomp_fun_5_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_3_8 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3) in
                                                                      (_lh_matchIdent_3_8 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3))), (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_8_1)))))) in
                                                                (fun _lh_listcomp_fun_5_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_2 _lh_listcomp_fun_ls_t_7_4) _lh_listcomp_fun_5_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_3 = (let rec _lh_initial_LH_P2_1_4 = think_0 in
                                                                (let rec _lh_initial_LH_P2_0_4 = (`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('N', (`LH_C('K', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_2 _lh_listcomp_fun_5_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_3_9 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_4) in
                                                                      (_lh_matchIdent_3_9 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_4))), (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_8_2)))))) in
                                                                (fun _lh_listcomp_fun_5_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_3 _lh_listcomp_fun_ls_t_7_3) _lh_listcomp_fun_5_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_4 = (let rec _lh_initial_LH_P2_1_5 = always_0 in
                                                                (let rec _lh_initial_LH_P2_0_5 = (`LH_C('A', (`LH_C('L', (`LH_C('W', (`LH_C('A', (`LH_C('Y', (`LH_C('S', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_3 _lh_listcomp_fun_5_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_0 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_5) in
                                                                      (_lh_matchIdent_4_0 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_5))), (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_8_3)))))) in
                                                                (fun _lh_listcomp_fun_5_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_4 _lh_listcomp_fun_ls_t_7_2) _lh_listcomp_fun_5_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_5 = (let rec _lh_initial_LH_P2_1_6 = your_0 in
                                                                (let rec _lh_initial_LH_P2_0_6 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C('R', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_4 _lh_listcomp_fun_5_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_1 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_6) in
                                                                      (_lh_matchIdent_4_1 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_6))), (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_8_4)))))) in
                                                                (fun _lh_listcomp_fun_5_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_5 _lh_listcomp_fun_ls_t_7_1) _lh_listcomp_fun_5_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_6 = (let rec _lh_initial_LH_P2_1_7 = maybe_2 in
                                                                (let rec _lh_initial_LH_P2_0_7 = (`LH_C('M', (`LH_C('A', (`LH_C('Y', (`LH_C('B', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_5 _lh_listcomp_fun_5_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_2 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_7) in
                                                                      (_lh_matchIdent_4_2 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_7))), (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_8_5)))))) in
                                                                (fun _lh_listcomp_fun_5_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_6 _lh_listcomp_fun_ls_t_7_0) _lh_listcomp_fun_5_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_7 = (let rec _lh_initial_LH_P2_1_8 = hello_0 in
                                                                (let rec _lh_initial_LH_P2_0_8 = (`LH_C('H', (`LH_C('E', (`LH_C('L', (`LH_C('L', (`LH_C('O', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_6 _lh_listcomp_fun_6_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_3 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_8) in
                                                                      (_lh_matchIdent_4_3 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_8))), (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_8_6)))))) in
                                                                (fun _lh_listcomp_fun_6_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_7 _lh_listcomp_fun_ls_t_6_9) _lh_listcomp_fun_6_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_8 = (let rec _lh_initial_LH_P2_1_9 = hello_0 in
                                                                (let rec _lh_initial_LH_P2_0_9 = (`LH_C('H', (`LH_C('I', (`LH_N))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_7 _lh_listcomp_fun_6_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_4 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_9) in
                                                                      (_lh_matchIdent_4_4 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_9))), (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_8_7)))))) in
                                                                (fun _lh_listcomp_fun_6_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_8 _lh_listcomp_fun_ls_t_6_8) _lh_listcomp_fun_6_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_9 = (let rec _lh_initial_LH_P2_1_1_0 = dream_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_0 = (`LH_C('D', (`LH_C('R', (`LH_C('E', (`LH_C('A', (`LH_C('M', (`LH_C('S', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_8 _lh_listcomp_fun_6_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_5 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_0) in
                                                                      (_lh_matchIdent_4_5 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_0))), (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_8_8)))))) in
                                                                (fun _lh_listcomp_fun_6_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_9 _lh_listcomp_fun_ls_t_6_7) _lh_listcomp_fun_6_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_0 = (let rec _lh_initial_LH_P2_1_1_1 = dream_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_1 = (`LH_C('D', (`LH_C('R', (`LH_C('E', (`LH_C('A', (`LH_C('M', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_9 _lh_listcomp_fun_6_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_6 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_1) in
                                                                      (_lh_matchIdent_4_6 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_1))), (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_8_9)))))) in
                                                                (fun _lh_listcomp_fun_6_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_0 _lh_listcomp_fun_ls_t_6_6) _lh_listcomp_fun_6_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_1 = (let rec _lh_initial_LH_P2_1_1_2 = sorry_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_2 = (`LH_C('S', (`LH_C('O', (`LH_C('R', (`LH_C('R', (`LH_C('Y', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_0 _lh_listcomp_fun_6_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_7 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_2) in
                                                                      (_lh_matchIdent_4_7 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_2))), (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_9_0)))))) in
                                                                (fun _lh_listcomp_fun_6_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_1 _lh_listcomp_fun_ls_t_6_5) _lh_listcomp_fun_6_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_2 = (let rec _lh_initial_LH_P2_1_1_3 = because_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_3 = (`LH_C('C', (`LH_C('A', (`LH_C('U', (`LH_C('S', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_1 _lh_listcomp_fun_7_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_8 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_3) in
                                                                      (_lh_matchIdent_4_8 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_3))), (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_9_1)))))) in
                                                                (fun _lh_listcomp_fun_7_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_2 _lh_listcomp_fun_ls_t_6_4) _lh_listcomp_fun_7_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_3 = (let rec _lh_initial_LH_P2_1_1_4 = because_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_4 = (`LH_C('B', (`LH_C('E', (`LH_C('C', (`LH_C('A', (`LH_C('U', (`LH_C('S', (`LH_C('E', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_2 _lh_listcomp_fun_7_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_4_9 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_4) in
                                                                      (_lh_matchIdent_4_9 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_4))), (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_9_2)))))) in
                                                                (fun _lh_listcomp_fun_7_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_3 _lh_listcomp_fun_ls_t_6_3) _lh_listcomp_fun_7_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_4 = (let rec _lh_initial_LH_P2_1_1_5 = name_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_5 = (`LH_C('N', (`LH_C('A', (`LH_C('M', (`LH_C('E', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_3 _lh_listcomp_fun_7_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_0 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_5) in
                                                                      (_lh_matchIdent_5_0 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_5))), (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_9_3)))))) in
                                                                (fun _lh_listcomp_fun_7_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_4 _lh_listcomp_fun_ls_t_6_2) _lh_listcomp_fun_7_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_5 = (let rec _lh_initial_LH_P2_1_1_6 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_6 = (`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_4 _lh_listcomp_fun_7_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_1 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_6) in
                                                                      (_lh_matchIdent_5_1 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_6))), (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_9_4)))))) in
                                                                (fun _lh_listcomp_fun_7_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_5 _lh_listcomp_fun_ls_t_6_1) _lh_listcomp_fun_7_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_6 = (let rec _lh_initial_LH_P2_1_1_7 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_7 = (`LH_C('W', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_5 _lh_listcomp_fun_7_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_2 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_7) in
                                                                      (_lh_matchIdent_5_2 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_7))), (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_9_5)))))) in
                                                                (fun _lh_listcomp_fun_7_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_6 _lh_listcomp_fun_ls_t_6_0) _lh_listcomp_fun_7_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_7 = (let rec _lh_initial_LH_P2_1_1_8 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_8 = (`LH_C('W', (`LH_C('H', (`LH_C('E', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_6 _lh_listcomp_fun_8_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_3 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_8) in
                                                                      (_lh_matchIdent_5_3 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_8))), (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_9_6)))))) in
                                                                (fun _lh_listcomp_fun_8_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_7 _lh_listcomp_fun_ls_t_5_9) _lh_listcomp_fun_8_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_8 = (let rec _lh_initial_LH_P2_1_1_9 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_9 = (`LH_C('W', (`LH_C('H', (`LH_C('O', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_7 _lh_listcomp_fun_8_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_4 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_1_9) in
                                                                      (_lh_matchIdent_5_4 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_1_9))), (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_9_7)))))) in
                                                                (fun _lh_listcomp_fun_8_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_8 _lh_listcomp_fun_ls_t_5_8) _lh_listcomp_fun_8_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_9 = (let rec _lh_initial_LH_P2_1_2_0 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_0 = (`LH_C('H', (`LH_C('O', (`LH_C('W', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_8 _lh_listcomp_fun_8_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_5 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_0) in
                                                                      (_lh_matchIdent_5_5 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_0))), (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_9_8)))))) in
                                                                (fun _lh_listcomp_fun_8_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_9 _lh_listcomp_fun_ls_t_5_7) _lh_listcomp_fun_8_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_0 = (let rec _lh_initial_LH_P2_1_2_1 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_1 = (`LH_C('W', (`LH_C('H', (`LH_C('A', (`LH_C('T', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_9 _lh_listcomp_fun_8_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_6 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_1) in
                                                                      (_lh_matchIdent_5_6 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_1))), (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_9_9)))))) in
                                                                (fun _lh_listcomp_fun_8_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_0 _lh_listcomp_fun_ls_t_5_6) _lh_listcomp_fun_8_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_1 = (let rec _lh_initial_LH_P2_1_2_2 = iWant_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_2 = (`LH_C('I', (`LH_C(' ', (`LH_C('W', (`LH_C('A', (`LH_C('N', (`LH_C('T', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_0 _lh_listcomp_fun_8_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_7 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_2) in
                                                                      (_lh_matchIdent_5_7 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_2))), (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_1_0_0)))))) in
                                                                (fun _lh_listcomp_fun_8_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_1 _lh_listcomp_fun_ls_t_5_5) _lh_listcomp_fun_8_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_2 = (let rec _lh_initial_LH_P2_1_2_3 = computer_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_3 = (`LH_C('C', (`LH_C('O', (`LH_C('M', (`LH_C('P', (`LH_C('U', (`LH_C('T', (`LH_C('E', (`LH_C('R', (`LH_C('S', (`LH_N))))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_1 _lh_listcomp_fun_9_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_8 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_3) in
                                                                      (_lh_matchIdent_5_8 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_3))), (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_1_0_1)))))) in
                                                                (fun _lh_listcomp_fun_9_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_2 _lh_listcomp_fun_ls_t_5_4) _lh_listcomp_fun_9_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_3 = (let rec _lh_initial_LH_P2_1_2_4 = computer_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_4 = (`LH_C('C', (`LH_C('O', (`LH_C('M', (`LH_C('P', (`LH_C('U', (`LH_C('T', (`LH_C('E', (`LH_C('R', (`LH_N))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_2 _lh_listcomp_fun_9_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_5_9 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_4) in
                                                                      (_lh_matchIdent_5_9 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_4))), (_lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_1_0_2)))))) in
                                                                (fun _lh_listcomp_fun_9_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_3 _lh_listcomp_fun_ls_t_5_3) _lh_listcomp_fun_9_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_4 = (let rec _lh_initial_LH_P2_1_2_5 = no_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_5 = (`LH_C('N', (`LH_C('O', (`LH_N))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_3 _lh_listcomp_fun_9_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_0 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_5) in
                                                                      (_lh_matchIdent_6_0 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_5))), (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_1_0_3)))))) in
                                                                (fun _lh_listcomp_fun_9_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_4 _lh_listcomp_fun_ls_t_5_2) _lh_listcomp_fun_9_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_5 = (let rec _lh_initial_LH_P2_1_2_6 = yes_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_6 = (`LH_C('Y', (`LH_C('E', (`LH_C('S', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_4 _lh_listcomp_fun_9_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_1 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_6) in
                                                                      (_lh_matchIdent_6_1 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_6))), (_lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_1_0_4)))))) in
                                                                (fun _lh_listcomp_fun_9_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_5 _lh_listcomp_fun_ls_t_5_1) _lh_listcomp_fun_9_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_6 = (let rec _lh_initial_LH_P2_1_2_7 = you_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_7 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_5 _lh_listcomp_fun_9_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_2 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_7) in
                                                                      (_lh_matchIdent_6_2 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_7))), (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_1_0_5)))))) in
                                                                (fun _lh_listcomp_fun_9_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_6 _lh_listcomp_fun_ls_t_5_0) _lh_listcomp_fun_9_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_7 = (let rec _lh_initial_LH_P2_1_2_8 = iAm_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_8 = (`LH_C('I', (`LH_C('_', (`LH_C('M', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_6 _lh_listcomp_fun_1_0_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_3 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_8) in
                                                                      (_lh_matchIdent_6_3 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_8))), (_lh_listcomp_fun_1_0_0 _lh_listcomp_fun_ls_t_1_0_6)))))) in
                                                                (fun _lh_listcomp_fun_1_0_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_7 _lh_listcomp_fun_ls_t_4_9) _lh_listcomp_fun_1_0_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_8 = (let rec _lh_initial_LH_P2_1_2_9 = iAm_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_9 = (`LH_C('I', (`LH_C(' ', (`LH_C('A', (`LH_C('M', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_7 _lh_listcomp_fun_1_0_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_4 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_2_9) in
                                                                      (_lh_matchIdent_6_4 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_2_9))), (_lh_listcomp_fun_1_0_2 _lh_listcomp_fun_ls_t_1_0_7)))))) in
                                                                (fun _lh_listcomp_fun_1_0_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_8 _lh_listcomp_fun_ls_t_4_8) _lh_listcomp_fun_1_0_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_9 = (let rec _lh_initial_LH_P2_1_3_0 = iCant_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_0 = (`LH_C('I', (`LH_C(' ', (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_8 _lh_listcomp_fun_1_0_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_5 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_0) in
                                                                      (_lh_matchIdent_6_5 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_0))), (_lh_listcomp_fun_1_0_4 _lh_listcomp_fun_ls_t_1_0_8)))))) in
                                                                (fun _lh_listcomp_fun_1_0_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_9 _lh_listcomp_fun_ls_t_4_7) _lh_listcomp_fun_1_0_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_0 = (let rec _lh_initial_LH_P2_1_3_1 = areYou_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_1 = (`LH_C('A', (`LH_C('R', (`LH_C('E', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_0_9 _lh_listcomp_fun_1_0_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_6 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_1) in
                                                                      (_lh_matchIdent_6_6 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_1))), (_lh_listcomp_fun_1_0_6 _lh_listcomp_fun_ls_t_1_0_9)))))) in
                                                                (fun _lh_listcomp_fun_1_0_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_0 _lh_listcomp_fun_ls_t_4_6) _lh_listcomp_fun_1_0_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_1 = (let rec _lh_initial_LH_P2_1_3_2 = whyCant_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_2 = (`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_C(' ', (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_C(' ', (`LH_C('I', (`LH_N))))))))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_0 _lh_listcomp_fun_1_0_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_7 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_2) in
                                                                      (_lh_matchIdent_6_7 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_2))), (_lh_listcomp_fun_1_0_8 _lh_listcomp_fun_ls_t_1_1_0)))))) in
                                                                (fun _lh_listcomp_fun_1_0_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_1 _lh_listcomp_fun_ls_t_4_5) _lh_listcomp_fun_1_0_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_2 = (let rec _lh_initial_LH_P2_1_3_3 = whyDont_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_3 = (`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_C(' ', (`LH_C('D', (`LH_C('O', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_1 _lh_listcomp_fun_1_1_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_8 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_3) in
                                                                      (_lh_matchIdent_6_8 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_3))), (_lh_listcomp_fun_1_1_0 _lh_listcomp_fun_ls_t_1_1_1)))))) in
                                                                (fun _lh_listcomp_fun_1_1_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_2 _lh_listcomp_fun_ls_t_4_4) _lh_listcomp_fun_1_1_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_3 = (let rec _lh_initial_LH_P2_1_3_4 = iFeel_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_4 = (`LH_C('I', (`LH_C(' ', (`LH_C('F', (`LH_C('E', (`LH_C('E', (`LH_C('L', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_2 _lh_listcomp_fun_1_1_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_6_9 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_4) in
                                                                      (_lh_matchIdent_6_9 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_4))), (_lh_listcomp_fun_1_1_2 _lh_listcomp_fun_ls_t_1_1_2)))))) in
                                                                (fun _lh_listcomp_fun_1_1_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_3 _lh_listcomp_fun_ls_t_4_3) _lh_listcomp_fun_1_1_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_4 = (let rec _lh_initial_LH_P2_1_3_5 = iDont_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_5 = (`LH_C('I', (`LH_C(' ', (`LH_C('D', (`LH_C('O', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_3 _lh_listcomp_fun_1_1_4 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_7_0 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_5) in
                                                                      (_lh_matchIdent_7_0 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_5))), (_lh_listcomp_fun_1_1_4 _lh_listcomp_fun_ls_t_1_1_3)))))) in
                                                                (fun _lh_listcomp_fun_1_1_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_4 _lh_listcomp_fun_ls_t_4_2) _lh_listcomp_fun_1_1_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_5 = (let rec _lh_initial_LH_P2_1_3_6 = youAre_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_6 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C('_', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_4 _lh_listcomp_fun_1_1_6 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_7_1 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_6) in
                                                                      (_lh_matchIdent_7_1 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_6))), (_lh_listcomp_fun_1_1_6 _lh_listcomp_fun_ls_t_1_1_4)))))) in
                                                                (fun _lh_listcomp_fun_1_1_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_5 _lh_listcomp_fun_ls_t_4_1) _lh_listcomp_fun_1_1_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_6 = (let rec _lh_initial_LH_P2_1_3_7 = youAre_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_7 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C(' ', (`LH_C('A', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_5 _lh_listcomp_fun_1_1_8 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_7_2 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_7) in
                                                                      (_lh_matchIdent_7_2 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_7))), (_lh_listcomp_fun_1_1_8 _lh_listcomp_fun_ls_t_1_1_5)))))) in
                                                                (fun _lh_listcomp_fun_1_1_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_6 _lh_listcomp_fun_ls_t_4_0) _lh_listcomp_fun_1_1_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_7 = (let rec _lh_initial_LH_P2_1_3_8 = canI_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_8 = (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C(' ', (`LH_C('I', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_6 _lh_listcomp_fun_1_2_0 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_7_3 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_8) in
                                                                      (_lh_matchIdent_7_3 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_8))), (_lh_listcomp_fun_1_2_0 _lh_listcomp_fun_ls_t_1_1_6)))))) in
                                                                (fun _lh_listcomp_fun_1_2_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_7 _lh_listcomp_fun_ls_t_3_9) _lh_listcomp_fun_1_2_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_5_8 = (let rec _lh_initial_LH_P2_1_3_9 = canYou_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_9 = (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_1_1_7 _lh_listcomp_fun_1_2_2 -> 
                                                                    (`LH_C((`LH_P2((let rec _lh_matchIdent_7_4 = ((dropWhile_lh__d3 isSpace_lh__d3) _lh_initial_LH_P2_0_3_9) in
                                                                      (_lh_matchIdent_7_4 99)), (cycle_lh__d2 _lh_initial_LH_P2_1_3_9))), (_lh_listcomp_fun_1_2_2 _lh_listcomp_fun_ls_t_1_1_7)))))) in
                                                                (fun _lh_listcomp_fun_1_2_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_5_8 _lh_listcomp_fun_ls_t_3_8) _lh_listcomp_fun_1_2_3)))))))))))))))))))))))))))))))) in
      (`LH_P2((let rec _lh_listcomp_fun_1_2_4 = (fun _lh_listcomp_fun_para_3 -> 
        (_lh_listcomp_fun_para_3 _lh_listcomp_fun_1_2_4)) in
        (_lh_listcomp_fun_1_2_4 respMsgs_0)), (cycle_lh__d1 repeatMsgs_0)))));;
let rec testEliza_nofib_lh__d1 _lh_testEliza_nofib_arg1_0 =
  (let rec input_0 = (let rec t_0 = (let rec t_1 = (let rec t_2 = (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (fun n_0 f_0 f_1 _lh_session_arg1_0 _lh_session_arg2_0 _lh_dummy_0 -> 
    0) in
    (let rec h_0 = (`LH_C('b', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))) in
      (fun n_1 -> 
        (let rec t_1_4 = (if ((n_1 - 1) > 0) then
          (t_1_3 (n_1 - 1))
        else
          (fun f_2 f_3 _lh_session_arg1_1 _lh_session_arg2_1 _lh_dummy_1 -> 
            0)) in
          (let rec h_1 = h_0 in
            (fun f_4 -> 
              (let rec t_1_5 = (t_1_4 f_4) in
                (let rec h_2 = (f_4 h_1) in
                  (fun f_5 -> 
                    (if (f_5 h_2) then
                      (let rec _lh_session_LH_C_1_0 = (t_1_5 f_5) in
                        (let rec _lh_session_LH_C_0_0 = h_2 in
                          (fun _lh_session_arg1_2 _lh_session_arg2_2 -> 
                            (let rec _lh_matchIdent_0 = (if (_lh_session_arg2_2 = _lh_session_LH_C_0_0) then
                              (repeated_lh__d1 _lh_session_arg1_2)
                            else
                              ((answer_lh__d1 _lh_session_arg1_2) _lh_session_LH_C_0_0)) in
                              ((_lh_matchIdent_0 _lh_session_LH_C_0_0) _lh_session_LH_C_1_0)))))
                    else
                      (t_1_5 f_5))))))))))) in
    (let rec h_3 = (`LH_C('y', (`LH_C('e', (`LH_C('s', (`LH_N))))))) in
      (fun n_2 -> 
        (let rec t_1_6 = (if ((n_2 - 1) > 0) then
          (t_1_2 (n_2 - 1))
        else
          (fun f_6 f_7 _lh_session_arg1_3 _lh_session_arg2_3 _lh_dummy_2 -> 
            0)) in
          (let rec h_4 = h_3 in
            (fun f_8 -> 
              (let rec t_1_7 = (t_1_6 f_8) in
                (let rec h_5 = (f_8 h_4) in
                  (fun f_9 -> 
                    (if (f_9 h_5) then
                      (let rec _lh_session_LH_C_1_1 = (t_1_7 f_9) in
                        (let rec _lh_session_LH_C_0_1 = h_5 in
                          (fun _lh_session_arg1_4 _lh_session_arg2_4 -> 
                            (let rec _lh_matchIdent_1 = (if (_lh_session_arg2_4 = _lh_session_LH_C_0_1) then
                              (repeated_lh__d1 _lh_session_arg1_4)
                            else
                              ((answer_lh__d1 _lh_session_arg1_4) _lh_session_LH_C_0_1)) in
                              ((_lh_matchIdent_1 _lh_session_LH_C_0_1) _lh_session_LH_C_1_1)))))
                    else
                      (t_1_7 f_9))))))))))) in
    (let rec h_6 = (`LH_C('n', (`LH_C('o', (`LH_N))))) in
      (fun n_3 -> 
        (let rec t_1_8 = (if ((n_3 - 1) > 0) then
          (t_1_1 (n_3 - 1))
        else
          (fun f_1_0 f_1_1 _lh_session_arg1_5 _lh_session_arg2_5 _lh_dummy_3 -> 
            0)) in
          (let rec h_7 = h_6 in
            (fun f_1_2 -> 
              (let rec t_1_9 = (t_1_8 f_1_2) in
                (let rec h_8 = (f_1_2 h_7) in
                  (fun f_1_3 -> 
                    (if (f_1_3 h_8) then
                      (let rec _lh_session_LH_C_1_2 = (t_1_9 f_1_3) in
                        (let rec _lh_session_LH_C_0_2 = h_8 in
                          (fun _lh_session_arg1_6 _lh_session_arg2_6 -> 
                            (let rec _lh_matchIdent_2 = (if (_lh_session_arg2_6 = _lh_session_LH_C_0_2) then
                              (repeated_lh__d1 _lh_session_arg1_6)
                            else
                              ((answer_lh__d1 _lh_session_arg1_6) _lh_session_LH_C_0_2)) in
                              ((_lh_matchIdent_2 _lh_session_LH_C_0_2) _lh_session_LH_C_1_2)))))
                    else
                      (t_1_9 f_1_3))))))))))) in
    (let rec h_9 = (`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_4 -> 
        (let rec t_2_0 = (if ((n_4 - 1) > 0) then
          (t_1_0 (n_4 - 1))
        else
          (fun f_1_4 f_1_5 _lh_session_arg1_7 _lh_session_arg2_7 _lh_dummy_4 -> 
            0)) in
          (let rec h_1_0 = h_9 in
            (fun f_1_6 -> 
              (let rec t_2_1 = (t_2_0 f_1_6) in
                (let rec h_1_1 = (f_1_6 h_1_0) in
                  (fun f_1_7 -> 
                    (if (f_1_7 h_1_1) then
                      (let rec _lh_session_LH_C_1_3 = (t_2_1 f_1_7) in
                        (let rec _lh_session_LH_C_0_3 = h_1_1 in
                          (fun _lh_session_arg1_8 _lh_session_arg2_8 -> 
                            (let rec _lh_matchIdent_3 = (if (_lh_session_arg2_8 = _lh_session_LH_C_0_3) then
                              (repeated_lh__d1 _lh_session_arg1_8)
                            else
                              ((answer_lh__d1 _lh_session_arg1_8) _lh_session_LH_C_0_3)) in
                              ((_lh_matchIdent_3 _lh_session_LH_C_0_3) _lh_session_LH_C_1_3)))))
                    else
                      (t_2_1 f_1_7))))))))))) in
    (let rec h_1_2 = (`LH_C('N', (`LH_C('o', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('k', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_5 -> 
        (let rec t_2_2 = (if ((n_5 - 1) > 0) then
          (t_9 (n_5 - 1))
        else
          (fun f_1_8 f_1_9 _lh_session_arg1_9 _lh_session_arg2_9 _lh_dummy_5 -> 
            0)) in
          (let rec h_1_3 = h_1_2 in
            (fun f_2_0 -> 
              (let rec t_2_3 = (t_2_2 f_2_0) in
                (let rec h_1_4 = (f_2_0 h_1_3) in
                  (fun f_2_1 -> 
                    (if (f_2_1 h_1_4) then
                      (let rec _lh_session_LH_C_1_4 = (t_2_3 f_2_1) in
                        (let rec _lh_session_LH_C_0_4 = h_1_4 in
                          (fun _lh_session_arg1_1_0 _lh_session_arg2_1_0 -> 
                            (let rec _lh_matchIdent_4 = (if (_lh_session_arg2_1_0 = _lh_session_LH_C_0_4) then
                              (repeated_lh__d1 _lh_session_arg1_1_0)
                            else
                              ((answer_lh__d1 _lh_session_arg1_1_0) _lh_session_LH_C_0_4)) in
                              ((_lh_matchIdent_4 _lh_session_LH_C_0_4) _lh_session_LH_C_1_4)))))
                    else
                      (t_2_3 f_2_1))))))))))) in
    (let rec h_1_5 = (`LH_C('T', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('*', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C('*', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_6 -> 
        (let rec t_2_4 = (if ((n_6 - 1) > 0) then
          (t_8 (n_6 - 1))
        else
          (fun f_2_2 f_2_3 _lh_session_arg1_1_1 _lh_session_arg2_1_1 _lh_dummy_6 -> 
            0)) in
          (let rec h_1_6 = h_1_5 in
            (fun f_2_4 -> 
              (let rec t_2_5 = (t_2_4 f_2_4) in
                (let rec h_1_7 = (f_2_4 h_1_6) in
                  (fun f_2_5 -> 
                    (if (f_2_5 h_1_7) then
                      (let rec _lh_session_LH_C_1_5 = (t_2_5 f_2_5) in
                        (let rec _lh_session_LH_C_0_5 = h_1_7 in
                          (fun _lh_session_arg1_1_2 _lh_session_arg2_1_2 -> 
                            (let rec _lh_matchIdent_5 = (if (_lh_session_arg2_1_2 = _lh_session_LH_C_0_5) then
                              (repeated_lh__d1 _lh_session_arg1_1_2)
                            else
                              ((answer_lh__d1 _lh_session_arg1_1_2) _lh_session_LH_C_0_5)) in
                              ((_lh_matchIdent_5 _lh_session_LH_C_0_5) _lh_session_LH_C_1_5)))))
                    else
                      (t_2_5 f_2_5))))))))))) in
    (let rec h_1_8 = (`LH_C('O', (`LH_C('h', (`LH_C(',', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('o', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('e', (`LH_C('h', (`LH_C('h', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_7 -> 
        (let rec t_2_6 = (if ((n_7 - 1) > 0) then
          (t_7 (n_7 - 1))
        else
          (fun f_2_6 f_2_7 _lh_session_arg1_1_3 _lh_session_arg2_1_3 _lh_dummy_7 -> 
            0)) in
          (let rec h_1_9 = h_1_8 in
            (fun f_2_8 -> 
              (let rec t_2_7 = (t_2_6 f_2_8) in
                (let rec h_2_0 = (f_2_8 h_1_9) in
                  (fun f_2_9 -> 
                    (if (f_2_9 h_2_0) then
                      (let rec _lh_session_LH_C_1_6 = (t_2_7 f_2_9) in
                        (let rec _lh_session_LH_C_0_6 = h_2_0 in
                          (fun _lh_session_arg1_1_4 _lh_session_arg2_1_4 -> 
                            (let rec _lh_matchIdent_6 = (if (_lh_session_arg2_1_4 = _lh_session_LH_C_0_6) then
                              (repeated_lh__d1 _lh_session_arg1_1_4)
                            else
                              ((answer_lh__d1 _lh_session_arg1_1_4) _lh_session_LH_C_0_6)) in
                              ((_lh_matchIdent_6 _lh_session_LH_C_0_6) _lh_session_LH_C_1_6)))))
                    else
                      (t_2_7 f_2_9))))))))))) in
    (let rec h_2_1 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))) in
      (fun n_8 -> 
        (let rec t_2_8 = (if ((n_8 - 1) > 0) then
          (t_6 (n_8 - 1))
        else
          (fun f_3_0 f_3_1 _lh_session_arg1_1_5 _lh_session_arg2_1_5 _lh_dummy_8 -> 
            0)) in
          (let rec h_2_2 = h_2_1 in
            (fun f_3_2 -> 
              (let rec t_2_9 = (t_2_8 f_3_2) in
                (let rec h_2_3 = (f_3_2 h_2_2) in
                  (fun f_3_3 -> 
                    (if (f_3_3 h_2_3) then
                      (let rec _lh_session_LH_C_1_7 = (t_2_9 f_3_3) in
                        (let rec _lh_session_LH_C_0_7 = h_2_3 in
                          (fun _lh_session_arg1_1_6 _lh_session_arg2_1_6 -> 
                            (let rec _lh_matchIdent_7 = (if (_lh_session_arg2_1_6 = _lh_session_LH_C_0_7) then
                              (repeated_lh__d1 _lh_session_arg1_1_6)
                            else
                              ((answer_lh__d1 _lh_session_arg1_1_6) _lh_session_LH_C_0_7)) in
                              ((_lh_matchIdent_7 _lh_session_LH_C_0_7) _lh_session_LH_C_1_7)))))
                    else
                      (t_2_9 f_3_3))))))))))) in
    (let rec h_2_4 = (`LH_C('N', (`LH_C('o', (`LH_C('p', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('c', (`LH_C('a', (`LH_C('u', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_9 -> 
        (let rec t_3_0 = (if ((n_9 - 1) > 0) then
          (t_5 (n_9 - 1))
        else
          (fun f_3_4 f_3_5 _lh_session_arg1_1_7 _lh_session_arg2_1_7 _lh_dummy_9 -> 
            0)) in
          (let rec h_2_5 = h_2_4 in
            (fun f_3_6 -> 
              (let rec t_3_1 = (t_3_0 f_3_6) in
                (let rec h_2_6 = (f_3_6 h_2_5) in
                  (fun f_3_7 -> 
                    (if (f_3_7 h_2_6) then
                      (let rec _lh_session_LH_C_1_8 = (t_3_1 f_3_7) in
                        (let rec _lh_session_LH_C_0_8 = h_2_6 in
                          (fun _lh_session_arg1_1_8 _lh_session_arg2_1_8 -> 
                            (let rec _lh_matchIdent_8 = (if (_lh_session_arg2_1_8 = _lh_session_LH_C_0_8) then
                              (repeated_lh__d1 _lh_session_arg1_1_8)
                            else
                              ((answer_lh__d1 _lh_session_arg1_1_8) _lh_session_LH_C_0_8)) in
                              ((_lh_matchIdent_8 _lh_session_LH_C_0_8) _lh_session_LH_C_1_8)))))
                    else
                      (t_3_1 f_3_7))))))))))) in
    (let rec h_2_7 = (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('r', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))) in
      (fun n_1_0 -> 
        (let rec t_3_2 = (if ((n_1_0 - 1) > 0) then
          (t_4 (n_1_0 - 1))
        else
          (fun f_3_8 f_3_9 _lh_session_arg1_1_9 _lh_session_arg2_1_9 _lh_dummy_1_0 -> 
            0)) in
          (let rec h_2_8 = h_2_7 in
            (fun f_4_0 -> 
              (let rec t_3_3 = (t_3_2 f_4_0) in
                (let rec h_2_9 = (f_4_0 h_2_8) in
                  (fun f_4_1 -> 
                    (if (f_4_1 h_2_9) then
                      (let rec _lh_session_LH_C_1_9 = (t_3_3 f_4_1) in
                        (let rec _lh_session_LH_C_0_9 = h_2_9 in
                          (fun _lh_session_arg1_2_0 _lh_session_arg2_2_0 -> 
                            (let rec _lh_matchIdent_9 = (if (_lh_session_arg2_2_0 = _lh_session_LH_C_0_9) then
                              (repeated_lh__d1 _lh_session_arg1_2_0)
                            else
                              ((answer_lh__d1 _lh_session_arg1_2_0) _lh_session_LH_C_0_9)) in
                              ((_lh_matchIdent_9 _lh_session_LH_C_0_9) _lh_session_LH_C_1_9)))))
                    else
                      (t_3_3 f_4_1))))))))))) in
    (let rec h_3_0 = (`LH_C('I', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C(',', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))) in
      (fun n_1_1 -> 
        (let rec t_3_4 = (if ((n_1_1 - 1) > 0) then
          (t_3 (n_1_1 - 1))
        else
          (fun f_4_2 f_4_3 _lh_session_arg1_2_1 _lh_session_arg2_2_1 _lh_dummy_1_1 -> 
            0)) in
          (let rec h_3_1 = h_3_0 in
            (fun f_4_4 -> 
              (let rec t_3_5 = (t_3_4 f_4_4) in
                (let rec h_3_2 = (f_4_4 h_3_1) in
                  (fun f_4_5 -> 
                    (if (f_4_5 h_3_2) then
                      (let rec _lh_session_LH_C_1_1_0 = (t_3_5 f_4_5) in
                        (let rec _lh_session_LH_C_0_1_0 = h_3_2 in
                          (fun _lh_session_arg1_2_2 _lh_session_arg2_2_2 -> 
                            (let rec _lh_matchIdent_1_0 = (if (_lh_session_arg2_2_2 = _lh_session_LH_C_0_1_0) then
                              (repeated_lh__d1 _lh_session_arg1_2_2)
                            else
                              ((answer_lh__d1 _lh_session_arg1_2_2) _lh_session_LH_C_0_1_0)) in
                              ((_lh_matchIdent_1_0 _lh_session_LH_C_0_1_0) _lh_session_LH_C_1_1_0)))))
                    else
                      (t_3_5 f_4_5))))))))))) in
    (let rec h_3_3 = (`LH_C('B', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('l', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_1_2 -> 
        (let rec t_3_6 = (if ((n_1_2 - 1) > 0) then
          (t_2 (n_1_2 - 1))
        else
          (fun f_4_6 f_4_7 _lh_session_arg1_2_3 _lh_session_arg2_2_3 _lh_dummy_1_2 -> 
            0)) in
          (let rec h_3_4 = h_3_3 in
            (fun f_4_8 -> 
              (let rec t_3_7 = (t_3_6 f_4_8) in
                (let rec h_3_5 = (f_4_8 h_3_4) in
                  (fun f_4_9 -> 
                    (if (f_4_9 h_3_5) then
                      (let rec _lh_session_LH_C_1_1_1 = (t_3_7 f_4_9) in
                        (let rec _lh_session_LH_C_0_1_1 = h_3_5 in
                          (fun _lh_session_arg1_2_4 _lh_session_arg2_2_4 -> 
                            (let rec _lh_matchIdent_1_1 = (if (_lh_session_arg2_2_4 = _lh_session_LH_C_0_1_1) then
                              (repeated_lh__d1 _lh_session_arg1_2_4)
                            else
                              ((answer_lh__d1 _lh_session_arg1_2_4) _lh_session_LH_C_0_1_1)) in
                              ((_lh_matchIdent_1_1 _lh_session_LH_C_0_1_1) _lh_session_LH_C_1_1_1)))))
                    else
                      (t_3_7 f_4_9))))))))))) in
    (let rec h_3_6 = (`LH_C('T', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('R', (`LH_C('o', (`LH_C('s', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('.', (`LH_C(' ', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun n_1_3 -> 
        (let rec t_3_8 = (if ((n_1_3 - 1) > 0) then
          (t_1 (n_1_3 - 1))
        else
          (fun f_5_0 f_5_1 _lh_session_arg1_2_5 _lh_session_arg2_2_5 _lh_dummy_1_3 -> 
            0)) in
          (let rec h_3_7 = h_3_6 in
            (fun f_5_2 -> 
              (let rec t_3_9 = (t_3_8 f_5_2) in
                (let rec h_3_8 = (f_5_2 h_3_7) in
                  (fun f_5_3 -> 
                    (if (f_5_3 h_3_8) then
                      (let rec _lh_session_LH_C_1_1_2 = (t_3_9 f_5_3) in
                        (let rec _lh_session_LH_C_0_1_2 = h_3_8 in
                          (fun _lh_session_arg1_2_6 _lh_session_arg2_2_6 -> 
                            (let rec _lh_matchIdent_1_2 = (if (_lh_session_arg2_2_6 = _lh_session_LH_C_0_1_2) then
                              (repeated_lh__d1 _lh_session_arg1_2_6)
                            else
                              ((answer_lh__d1 _lh_session_arg1_2_6) _lh_session_LH_C_0_1_2)) in
                              ((_lh_matchIdent_1_2 _lh_session_LH_C_0_1_2) _lh_session_LH_C_1_1_2)))))
                    else
                      (t_3_9 f_5_3))))))))))) in
    (let rec h_3_9 = (`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))) in
      (fun n_1_4 -> 
        (let rec t_4_0 = (if ((n_1_4 - 1) > 0) then
          (t_0 (n_1_4 - 1))
        else
          (fun f_5_4 f_5_5 _lh_session_arg1_2_7 _lh_session_arg2_2_7 _lh_dummy_1_4 -> 
            0)) in
          (let rec h_4_0 = h_3_9 in
            (fun f_5_6 -> 
              (let rec t_4_1 = (t_4_0 f_5_6) in
                (let rec h_4_1 = (f_5_6 h_4_0) in
                  (fun f_5_7 -> 
                    (if (f_5_7 h_4_1) then
                      (let rec _lh_session_LH_C_1_1_3 = (t_4_1 f_5_7) in
                        (let rec _lh_session_LH_C_0_1_3 = h_4_1 in
                          (fun _lh_session_arg1_2_8 _lh_session_arg2_2_8 -> 
                            (let rec _lh_matchIdent_1_3 = (if (_lh_session_arg2_2_8 = _lh_session_LH_C_0_1_3) then
                              (repeated_lh__d1 _lh_session_arg1_2_8)
                            else
                              ((answer_lh__d1 _lh_session_arg1_2_8) _lh_session_LH_C_0_1_3)) in
                              ((_lh_matchIdent_1_3 _lh_session_LH_C_0_1_3) _lh_session_LH_C_1_1_3)))))
                    else
                      (t_4_1 f_5_7))))))))))) in
    ((map_lh__d2 (fun i_0 -> 
      ((fun _lh_funcomp_x_0 -> 
        ((fun _lh_funcomp_x_1 -> 
          ((fun _lh_funcomp_x_2 -> 
            ((fun _lh_funcomp_x_3 -> 
              (((_lh_funcomp_x_3 initial_lh__d1) (`LH_N)) 99)) (_lh_funcomp_x_2 (fun _lh_funcomp_x_4 -> 
              (not (null_lh__d1 _lh_funcomp_x_4)))))) (_lh_funcomp_x_1 (fun _lh_funcomp_x_5 -> 
            (let rec _lh_matchIdent_1_4 = ((dropWhile_lh__d1 isSpace_lh__d2) (trim_lh__d1 _lh_funcomp_x_5)) in
              (_lh_matchIdent_1_4 99)))))) (if ((i_0 mod 20) > 0) then
          (_lh_funcomp_x_0 (i_0 mod 20))
        else
          (fun f_5_8 f_5_9 _lh_session_arg1_2_9 _lh_session_arg2_2_9 _lh_dummy_1_5 -> 
            0)))) input_0))) ((enumFromTo_lh__d1 1) _lh_testEliza_nofib_arg1_0)));;
end;;

