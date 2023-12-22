

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec newKeyTab_lh _lh_newKeyTab_arg1_0 _lh_newKeyTab_arg2_0 =
  (match _lh_newKeyTab_arg2_0 with
    | `LH_P2(_lh_newKeyTab_LH_P2_0_0, _lh_newKeyTab_LH_P2_1_0) -> 
      (`LH_P2(_lh_newKeyTab_arg1_0, _lh_newKeyTab_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec tail_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_8, t_8) -> 
      (1 + (length_lh t_8))
    | `LH_N -> 
      0);;
let rec prefix_lh _lh_prefix_arg1_0 _lh_prefix_arg2_0 =
  (match _lh_prefix_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_prefix_LH_C_0_0, _lh_prefix_LH_C_1_0) -> 
      (match _lh_prefix_arg2_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_prefix_LH_C_0_1, _lh_prefix_LH_C_1_1) -> 
          ((_lh_prefix_LH_C_0_0 = _lh_prefix_LH_C_0_1) && ((prefix_lh _lh_prefix_LH_C_1_0) _lh_prefix_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_1 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C((f_1 h_1_1), ((map_lh f_1) t_1_1)))
    | `LH_N -> 
      (`LH_N));;
let rec toUpper_lh _lh_toUpper_arg1_0 =
  (let rec _lh_matchIdent_3 = _lh_toUpper_arg1_0 in
    (match _lh_matchIdent_3 with
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
        _lh_matchIdent_3));;
let rec concat_lh lss_0 =
  (lss_0 99);;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh t_1_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec head_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_9, t_9) -> 
      h_9
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec foldr_lh f_2 i_1 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_2, t_1_2) -> 
      ((f_2 h_1_2) (((foldr_lh f_2) i_1) t_1_2))
    | `LH_N -> 
      i_1);;
let rec filter_lh f_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_7, t_7) -> 
      (if (f_0 h_7) then
        (`LH_C(h_7, ((filter_lh f_0) t_7)))
      else
        ((filter_lh f_0) t_7))
    | `LH_N -> 
      (`LH_N));;
let rec keyTabOf_lh _lh_keyTabOf_arg1_0 =
  (match _lh_keyTabOf_arg1_0 with
    | `LH_P2(_lh_keyTabOf_LH_P2_0_0, _lh_keyTabOf_LH_P2_1_0) -> 
      _lh_keyTabOf_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec take_lh n_0 ls_6 =
  (if (n_0 > 0) then
    (match ls_6 with
      | `LH_C(h_1_3, t_1_3) -> 
        (`LH_C(h_1_3, ((take_lh (n_0 - 1)) t_1_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec dropWhile_lh _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec break_lh _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_7 = ((break_lh _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_7 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec inList_lh _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (_lh_inList_arg2_0 _lh_inList_arg1_0);;
let rec cycle_lh _lh_cycle_arg1_0 =
  _lh_cycle_arg1_0;;
let rec tails_lh _lh_tails_arg1_0 =
  (match _lh_tails_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_tails_arg1_0, (tails_lh (tail_lh _lh_tails_arg1_0)))));;
let rec ucase_lh _lh_ucase_arg1_0 =
  ((map_lh toUpper_lh) _lh_ucase_arg1_0);;
let rec unwords_lh _lh_unwords_arg1_0 =
  (match _lh_unwords_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_unwords_LH_C_0_0, _lh_unwords_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 -> 
        (match _lh_go_arg1_0 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            (`LH_C(' ', ((mappend_lh _lh_go_LH_C_0_0) (go_0 _lh_go_LH_C_1_0))))
          | _ -> 
            (failwith "error"))) in
        ((mappend_lh _lh_unwords_LH_C_0_0) (go_0 _lh_unwords_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec makeResponse_lh _lh_makeResponse_arg1_0 _lh_makeResponse_arg2_0 =
  (match _lh_makeResponse_arg1_0 with
    | `LH_C(_lh_makeResponse_LH_C_0_0, _lh_makeResponse_LH_C_1_0) -> 
      (match _lh_makeResponse_LH_C_0_0 with
        | '?' -> 
          ((mappend_lh ((mappend_lh ((mappend_lh _lh_makeResponse_LH_C_1_0) (`LH_C(' ', (`LH_N))))) _lh_makeResponse_arg2_0)) (`LH_C('?', (`LH_N))))
        | '.' -> 
          ((mappend_lh ((mappend_lh ((mappend_lh _lh_makeResponse_LH_C_1_0) (`LH_C(' ', (`LH_N))))) _lh_makeResponse_arg2_0)) (`LH_C('.', (`LH_N))))
        | _ -> 
          _lh_makeResponse_arg1_0)
    | _ -> 
      _lh_makeResponse_arg1_0);;
let rec words_lh _lh_words_arg1_0 =
  (let rec _lh_matchIdent_5 = ((dropWhile_lh isSpace_lh) _lh_words_arg1_0) in
    (match _lh_matchIdent_5 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0) -> 
        (let rec _lh_matchIdent_6 = ((break_lh isSpace_lh) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
          (match _lh_matchIdent_6 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec trim_lh _lh_trim_arg1_0 =
  (let rec cons_1 = (fun _lh_cons_arg1_1 _lh_cons_arg2_1 -> 
    (if (((inList_lh _lh_cons_arg1_1) (let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_1_1 = (let rec _lh_inList_LH_C_1_2 = (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_1_4 = (fun _lh_inList_arg1_1 -> 
      false) in
      (let rec _lh_inList_LH_C_0_0 = ',' in
        (fun _lh_inList_arg1_2 -> 
          (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_0) then
            true
          else
            ((inList_lh _lh_inList_arg1_2) _lh_inList_LH_C_1_4))))) in
      (let rec _lh_inList_LH_C_0_1 = '?' in
        (fun _lh_inList_arg1_3 -> 
          (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_1) then
            true
          else
            ((inList_lh _lh_inList_arg1_3) _lh_inList_LH_C_1_3))))) in
      (let rec _lh_inList_LH_C_0_2 = '!' in
        (fun _lh_inList_arg1_4 -> 
          (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_2) then
            true
          else
            ((inList_lh _lh_inList_arg1_4) _lh_inList_LH_C_1_2))))) in
      (let rec _lh_inList_LH_C_0_3 = '.' in
        (fun _lh_inList_arg1_5 -> 
          (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_3) then
            true
          else
            ((inList_lh _lh_inList_arg1_5) _lh_inList_LH_C_1_1))))) in
      (let rec _lh_inList_LH_C_0_4 = ' ' in
        (fun _lh_inList_arg1_6 -> 
          (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_4) then
            true
          else
            ((inList_lh _lh_inList_arg1_6) _lh_inList_LH_C_1_0)))))) && (null_lh _lh_cons_arg2_1)) then
      (`LH_N)
    else
      (`LH_C(_lh_cons_arg1_1, _lh_cons_arg2_1)))) in
    ((fun _lh_funcomp_x_1_0 -> 
      (((foldr_lh cons_1) (`LH_N)) ((dropWhile_lh (fun x_0 -> 
        ((inList_lh x_0) (let rec _lh_inList_LH_C_1_5 = (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_1_7 = (let rec _lh_inList_LH_C_1_8 = (let rec _lh_inList_LH_C_1_9 = (fun _lh_inList_arg1_7 -> 
          false) in
          (let rec _lh_inList_LH_C_0_5 = ',' in
            (fun _lh_inList_arg1_8 -> 
              (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_5) then
                true
              else
                ((inList_lh _lh_inList_arg1_8) _lh_inList_LH_C_1_9))))) in
          (let rec _lh_inList_LH_C_0_6 = '?' in
            (fun _lh_inList_arg1_9 -> 
              (if (_lh_inList_arg1_9 = _lh_inList_LH_C_0_6) then
                true
              else
                ((inList_lh _lh_inList_arg1_9) _lh_inList_LH_C_1_8))))) in
          (let rec _lh_inList_LH_C_0_7 = '!' in
            (fun _lh_inList_arg1_1_0 -> 
              (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_7) then
                true
              else
                ((inList_lh _lh_inList_arg1_1_0) _lh_inList_LH_C_1_7))))) in
          (let rec _lh_inList_LH_C_0_8 = '.' in
            (fun _lh_inList_arg1_1_1 -> 
              (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_8) then
                true
              else
                ((inList_lh _lh_inList_arg1_1_1) _lh_inList_LH_C_1_6))))) in
          (let rec _lh_inList_LH_C_0_9 = ' ' in
            (fun _lh_inList_arg1_1_2 -> 
              (if (_lh_inList_arg1_1_2 = _lh_inList_LH_C_0_9) then
                true
              else
                ((inList_lh _lh_inList_arg1_1_2) _lh_inList_LH_C_1_5)))))))) _lh_funcomp_x_1_0))) _lh_trim_arg1_0));;
let rec conjugates_lh _lh_conjugates_arg1_0 =
  (let rec prepare_0 = (fun _lh_prepare_arg1_0 -> 
    ((map_lh (fun wr_0 -> 
      (let rec _lh_matchIdent_4 = wr_0 in
        (match _lh_matchIdent_4 with
          | `LH_P2(_lh_prepare_LH_P2_0_0, _lh_prepare_LH_P2_1_0) -> 
            (`LH_P2((ucase_lh _lh_prepare_LH_P2_0_0), _lh_prepare_LH_P2_1_0))
          | _ -> 
            (failwith "error"))))) _lh_prepare_arg1_0)) in
    (let rec oneways_0 = (`LH_C((`LH_P2((`LH_C('m', (`LH_C('e', (`LH_N))))), (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))), (`LH_N))) in
      (let rec bothways_0 = (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (fun _lh_listcomp_fun_0 _lh_dummy_0 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_conjugates_LH_P2_1_0 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))))) in
          (let rec _lh_conjugates_LH_P2_0_0 = (`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_N))))))) in
            (fun _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1 -> 
              (let rec t_1 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_6) in
                (let rec h_1 = (`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_0, _lh_conjugates_LH_P2_1_0)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_0, _lh_conjugates_LH_P2_0_0)), (`LH_N))))) in
                  (fun _lh_dummy_1 -> 
                    ((mappend_lh h_1) (concat_lh t_1)))))))) in
          (fun _lh_listcomp_fun_2 -> 
            ((_lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_2)))) in
        (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_conjugates_LH_P2_1_1 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))) in
          (let rec _lh_conjugates_LH_P2_0_1 = (`LH_C('I', (`LH_C('_', (`LH_C('v', (`LH_C('e', (`LH_N))))))))) in
            (fun _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_3 -> 
              (let rec t_2 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_7) in
                (let rec h_2 = (`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_1, _lh_conjugates_LH_P2_1_1)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_1, _lh_conjugates_LH_P2_0_1)), (`LH_N))))) in
                  (fun _lh_dummy_2 -> 
                    ((mappend_lh h_2) (concat_lh t_2)))))))) in
          (fun _lh_listcomp_fun_4 -> 
            ((_lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_4)))) in
        (let rec _lh_listcomp_fun_ls_h_2 = (let rec _lh_conjugates_LH_P2_1_2 = (`LH_C('m', (`LH_C('y', (`LH_N))))) in
          (let rec _lh_conjugates_LH_P2_0_2 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_N))))))))) in
            (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_5 -> 
              (let rec t_3 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_8) in
                (let rec h_3 = (`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_2, _lh_conjugates_LH_P2_1_2)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_2, _lh_conjugates_LH_P2_0_2)), (`LH_N))))) in
                  (fun _lh_dummy_3 -> 
                    ((mappend_lh h_3) (concat_lh t_3)))))))) in
          (fun _lh_listcomp_fun_6 -> 
            ((_lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_6)))) in
        (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_conjugates_LH_P2_1_3 = (`LH_C('I', (`LH_N))) in
          (let rec _lh_conjugates_LH_P2_0_3 = (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))) in
            (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_7 -> 
              (let rec t_4 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_9) in
                (let rec h_4 = (`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_3, _lh_conjugates_LH_P2_1_3)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_3, _lh_conjugates_LH_P2_0_3)), (`LH_N))))) in
                  (fun _lh_dummy_4 -> 
                    ((mappend_lh h_4) (concat_lh t_4)))))))) in
          (fun _lh_listcomp_fun_8 -> 
            ((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_8)))) in
        (let rec _lh_listcomp_fun_ls_h_4 = (let rec _lh_conjugates_LH_P2_1_4 = (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_N))))))) in
          (let rec _lh_conjugates_LH_P2_0_4 = (`LH_C('w', (`LH_C('e', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))) in
            (fun _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_9 -> 
              (let rec t_5 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_1_0) in
                (let rec h_5 = (`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_4, _lh_conjugates_LH_P2_1_4)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_4, _lh_conjugates_LH_P2_0_4)), (`LH_N))))) in
                  (fun _lh_dummy_5 -> 
                    ((mappend_lh h_5) (concat_lh t_5)))))))) in
          (fun _lh_listcomp_fun_1_0 -> 
            ((_lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_1_0)))) in
        (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_conjugates_LH_P2_1_5 = (`LH_C('a', (`LH_C('m', (`LH_N))))) in
          (let rec _lh_conjugates_LH_P2_0_5 = (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_N))))))) in
            (fun _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_1_1 -> 
              (let rec t_6 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1) in
                (let rec h_6 = (`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_5, _lh_conjugates_LH_P2_1_5)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_5, _lh_conjugates_LH_P2_0_5)), (`LH_N))))) in
                  (fun _lh_dummy_6 -> 
                    ((mappend_lh h_6) (concat_lh t_6)))))))) in
          (fun _lh_listcomp_fun_1_2 -> 
            ((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_1_2)))) in
        (prepare_0 ((mappend_lh oneways_0) (concat_lh (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_0 -> 
          (_lh_listcomp_fun_para_0 _lh_listcomp_fun_1_3)) in
          (_lh_listcomp_fun_1_3 bothways_0))))))));;
let rec initial_lh _lh_initial_arg1_0 =
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
                                              (let rec maybe_1 = (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C('r', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('Y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C('n', (`LH_C('_', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))), (`LH_N))))))))))) in
                                                (let rec your_0 = (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C('r', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('y', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))))), (`LH_N))))) in
                                                  (let rec always_0 = (`LH_C((`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('i', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('R', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('w', (`LH_C('a', (`LH_C('y', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))), (`LH_N))))))))) in
                                                    (let rec think_0 = (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('n', (`LH_C('k', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('B', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('?', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))), (`LH_N))))))) in
                                                      (let rec alike_0 = (`LH_C((`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('y', (`LH_C('?', (`LH_N))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('l', (`LH_C('a', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('g', (`LH_C('g', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('n', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('C', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('n', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('?', (`LH_N))))))))), (`LH_N))))))))))))) in
                                                        (let rec friend_0 = (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('b', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('u', (`LH_C('p', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('p', (`LH_C('i', (`LH_C('c', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('i', (`LH_C('c', (`LH_C('k', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('P', (`LH_C('e', (`LH_C('r', (`LH_C('h', (`LH_C('a', (`LH_C('p', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('l', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C('o', (`LH_C('r', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))))) in
                                                          (let rec nokeyMsgs_0 = (`LH_C((`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('W', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('u', (`LH_C('g', (`LH_C('g', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_N))))))))))))), (`LH_C((`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('l', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('S', (`LH_C('a', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('s', (`LH_C('y', (`LH_C('c', (`LH_C('h', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('s', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N))))))))))) in
                                                            (let rec _lh_listcomp_fun_ls_t_1_3 = (let rec _lh_listcomp_fun_ls_t_1_4 = (let rec _lh_listcomp_fun_ls_t_1_5 = (let rec _lh_listcomp_fun_ls_t_1_6 = (let rec _lh_listcomp_fun_ls_t_1_7 = (let rec _lh_listcomp_fun_ls_t_1_8 = (let rec _lh_listcomp_fun_ls_t_1_9 = (let rec _lh_listcomp_fun_ls_t_2_0 = (let rec _lh_listcomp_fun_ls_t_2_1 = (let rec _lh_listcomp_fun_ls_t_2_2 = (let rec _lh_listcomp_fun_ls_t_2_3 = (let rec _lh_listcomp_fun_ls_t_2_4 = (let rec _lh_listcomp_fun_ls_t_2_5 = (let rec _lh_listcomp_fun_ls_t_2_6 = (let rec _lh_listcomp_fun_ls_t_2_7 = (let rec _lh_listcomp_fun_ls_t_2_8 = (let rec _lh_listcomp_fun_ls_t_2_9 = (let rec _lh_listcomp_fun_ls_t_3_0 = (let rec _lh_listcomp_fun_ls_t_3_1 = (let rec _lh_listcomp_fun_ls_t_3_2 = (let rec _lh_listcomp_fun_ls_t_3_3 = (let rec _lh_listcomp_fun_ls_t_3_4 = (let rec _lh_listcomp_fun_ls_t_3_5 = (let rec _lh_listcomp_fun_ls_t_3_6 = (let rec _lh_listcomp_fun_ls_t_3_7 = (let rec _lh_listcomp_fun_ls_t_3_8 = (let rec _lh_listcomp_fun_ls_t_3_9 = (let rec _lh_listcomp_fun_ls_t_4_0 = (let rec _lh_listcomp_fun_ls_t_4_1 = (let rec _lh_listcomp_fun_ls_t_4_2 = (let rec _lh_listcomp_fun_ls_t_4_3 = (let rec _lh_listcomp_fun_ls_t_4_4 = (let rec _lh_listcomp_fun_ls_t_4_5 = (let rec _lh_listcomp_fun_ls_t_4_6 = (let rec _lh_listcomp_fun_ls_t_4_7 = (let rec _lh_listcomp_fun_ls_t_4_8 = (let rec _lh_listcomp_fun_ls_t_4_9 = (let rec _lh_listcomp_fun_ls_t_5_0 = (let rec _lh_listcomp_fun_ls_t_5_1 = (let rec _lh_listcomp_fun_ls_t_5_2 = (fun _lh_listcomp_fun_1_5 -> 
                                                              (`LH_N)) in
                                                              (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_initial_LH_P2_1_0 = nokeyMsgs_0 in
                                                                (let rec _lh_initial_LH_P2_0_0 = (`LH_N) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_3 _lh_listcomp_fun_1_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_0), (cycle_lh _lh_initial_LH_P2_1_0))), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_5_3)))))) in
                                                                (fun _lh_listcomp_fun_1_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_5_2) _lh_listcomp_fun_1_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_8 = (let rec _lh_initial_LH_P2_1_1 = friend_0 in
                                                                (let rec _lh_initial_LH_P2_0_1 = (`LH_C('F', (`LH_C('R', (`LH_C('I', (`LH_C('E', (`LH_C('N', (`LH_C('D', (`LH_C('S', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_4 _lh_listcomp_fun_1_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1), (cycle_lh _lh_initial_LH_P2_1_1))), (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_5_4)))))) in
                                                                (fun _lh_listcomp_fun_1_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_ls_t_5_1) _lh_listcomp_fun_1_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_9 = (let rec _lh_initial_LH_P2_1_2 = friend_0 in
                                                                (let rec _lh_initial_LH_P2_0_2 = (`LH_C('F', (`LH_C('R', (`LH_C('I', (`LH_C('E', (`LH_C('N', (`LH_C('D', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_5 _lh_listcomp_fun_2_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2), (cycle_lh _lh_initial_LH_P2_1_2))), (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_5_5)))))) in
                                                                (fun _lh_listcomp_fun_2_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_ls_t_5_0) _lh_listcomp_fun_2_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_0 = (let rec _lh_initial_LH_P2_1_3 = alike_0 in
                                                                (let rec _lh_initial_LH_P2_0_3 = (`LH_C('A', (`LH_C('L', (`LH_C('I', (`LH_C('K', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_6 _lh_listcomp_fun_2_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3), (cycle_lh _lh_initial_LH_P2_1_3))), (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_5_6)))))) in
                                                                (fun _lh_listcomp_fun_2_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_0 _lh_listcomp_fun_ls_t_4_9) _lh_listcomp_fun_2_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_1 = (let rec _lh_initial_LH_P2_1_4 = think_0 in
                                                                (let rec _lh_initial_LH_P2_0_4 = (`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('N', (`LH_C('K', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_7 _lh_listcomp_fun_2_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_4), (cycle_lh _lh_initial_LH_P2_1_4))), (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_5_7)))))) in
                                                                (fun _lh_listcomp_fun_2_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_ls_t_4_8) _lh_listcomp_fun_2_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_2 = (let rec _lh_initial_LH_P2_1_5 = always_0 in
                                                                (let rec _lh_initial_LH_P2_0_5 = (`LH_C('A', (`LH_C('L', (`LH_C('W', (`LH_C('A', (`LH_C('Y', (`LH_C('S', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_8 _lh_listcomp_fun_2_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_5), (cycle_lh _lh_initial_LH_P2_1_5))), (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_5_8)))))) in
                                                                (fun _lh_listcomp_fun_2_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_2 _lh_listcomp_fun_ls_t_4_7) _lh_listcomp_fun_2_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_3 = (let rec _lh_initial_LH_P2_1_6 = your_0 in
                                                                (let rec _lh_initial_LH_P2_0_6 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C('R', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_5_9 _lh_listcomp_fun_2_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_6), (cycle_lh _lh_initial_LH_P2_1_6))), (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_5_9)))))) in
                                                                (fun _lh_listcomp_fun_2_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_3 _lh_listcomp_fun_ls_t_4_6) _lh_listcomp_fun_2_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_4 = (let rec _lh_initial_LH_P2_1_7 = maybe_1 in
                                                                (let rec _lh_initial_LH_P2_0_7 = (`LH_C('M', (`LH_C('A', (`LH_C('Y', (`LH_C('B', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_0 _lh_listcomp_fun_3_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_7), (cycle_lh _lh_initial_LH_P2_1_7))), (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_6_0)))))) in
                                                                (fun _lh_listcomp_fun_3_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_4 _lh_listcomp_fun_ls_t_4_5) _lh_listcomp_fun_3_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_5 = (let rec _lh_initial_LH_P2_1_8 = hello_0 in
                                                                (let rec _lh_initial_LH_P2_0_8 = (`LH_C('H', (`LH_C('E', (`LH_C('L', (`LH_C('L', (`LH_C('O', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_1 _lh_listcomp_fun_3_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_8), (cycle_lh _lh_initial_LH_P2_1_8))), (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_6_1)))))) in
                                                                (fun _lh_listcomp_fun_3_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_5 _lh_listcomp_fun_ls_t_4_4) _lh_listcomp_fun_3_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_6 = (let rec _lh_initial_LH_P2_1_9 = hello_0 in
                                                                (let rec _lh_initial_LH_P2_0_9 = (`LH_C('H', (`LH_C('I', (`LH_N))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_2 _lh_listcomp_fun_3_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_9), (cycle_lh _lh_initial_LH_P2_1_9))), (_lh_listcomp_fun_3_4 _lh_listcomp_fun_ls_t_6_2)))))) in
                                                                (fun _lh_listcomp_fun_3_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_6 _lh_listcomp_fun_ls_t_4_3) _lh_listcomp_fun_3_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_7 = (let rec _lh_initial_LH_P2_1_1_0 = dream_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_0 = (`LH_C('D', (`LH_C('R', (`LH_C('E', (`LH_C('A', (`LH_C('M', (`LH_C('S', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_3 _lh_listcomp_fun_3_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_0), (cycle_lh _lh_initial_LH_P2_1_1_0))), (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_6_3)))))) in
                                                                (fun _lh_listcomp_fun_3_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_7 _lh_listcomp_fun_ls_t_4_2) _lh_listcomp_fun_3_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_8 = (let rec _lh_initial_LH_P2_1_1_1 = dream_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_1 = (`LH_C('D', (`LH_C('R', (`LH_C('E', (`LH_C('A', (`LH_C('M', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_4 _lh_listcomp_fun_3_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_1), (cycle_lh _lh_initial_LH_P2_1_1_1))), (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_6_4)))))) in
                                                                (fun _lh_listcomp_fun_3_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_8 _lh_listcomp_fun_ls_t_4_1) _lh_listcomp_fun_3_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_1_9 = (let rec _lh_initial_LH_P2_1_1_2 = sorry_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_2 = (`LH_C('S', (`LH_C('O', (`LH_C('R', (`LH_C('R', (`LH_C('Y', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_5 _lh_listcomp_fun_4_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_2), (cycle_lh _lh_initial_LH_P2_1_1_2))), (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_6_5)))))) in
                                                                (fun _lh_listcomp_fun_4_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_1_9 _lh_listcomp_fun_ls_t_4_0) _lh_listcomp_fun_4_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_0 = (let rec _lh_initial_LH_P2_1_1_3 = because_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_3 = (`LH_C('C', (`LH_C('A', (`LH_C('U', (`LH_C('S', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_6 _lh_listcomp_fun_4_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_3), (cycle_lh _lh_initial_LH_P2_1_1_3))), (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_6_6)))))) in
                                                                (fun _lh_listcomp_fun_4_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_0 _lh_listcomp_fun_ls_t_3_9) _lh_listcomp_fun_4_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_1 = (let rec _lh_initial_LH_P2_1_1_4 = because_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_4 = (`LH_C('B', (`LH_C('E', (`LH_C('C', (`LH_C('A', (`LH_C('U', (`LH_C('S', (`LH_C('E', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_7 _lh_listcomp_fun_4_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_4), (cycle_lh _lh_initial_LH_P2_1_1_4))), (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_6_7)))))) in
                                                                (fun _lh_listcomp_fun_4_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_1 _lh_listcomp_fun_ls_t_3_8) _lh_listcomp_fun_4_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_2 = (let rec _lh_initial_LH_P2_1_1_5 = name_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_5 = (`LH_C('N', (`LH_C('A', (`LH_C('M', (`LH_C('E', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_8 _lh_listcomp_fun_4_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_5), (cycle_lh _lh_initial_LH_P2_1_1_5))), (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_6_8)))))) in
                                                                (fun _lh_listcomp_fun_4_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_2 _lh_listcomp_fun_ls_t_3_7) _lh_listcomp_fun_4_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_3 = (let rec _lh_initial_LH_P2_1_1_6 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_6 = (`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_6_9 _lh_listcomp_fun_4_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_6), (cycle_lh _lh_initial_LH_P2_1_1_6))), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_6_9)))))) in
                                                                (fun _lh_listcomp_fun_4_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_3 _lh_listcomp_fun_ls_t_3_6) _lh_listcomp_fun_4_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_4 = (let rec _lh_initial_LH_P2_1_1_7 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_7 = (`LH_C('W', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_0 _lh_listcomp_fun_5_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_7), (cycle_lh _lh_initial_LH_P2_1_1_7))), (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_7_0)))))) in
                                                                (fun _lh_listcomp_fun_5_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_4 _lh_listcomp_fun_ls_t_3_5) _lh_listcomp_fun_5_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_5 = (let rec _lh_initial_LH_P2_1_1_8 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_8 = (`LH_C('W', (`LH_C('H', (`LH_C('E', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_1 _lh_listcomp_fun_5_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_8), (cycle_lh _lh_initial_LH_P2_1_1_8))), (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_7_1)))))) in
                                                                (fun _lh_listcomp_fun_5_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_5 _lh_listcomp_fun_ls_t_3_4) _lh_listcomp_fun_5_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_6 = (let rec _lh_initial_LH_P2_1_1_9 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_1_9 = (`LH_C('W', (`LH_C('H', (`LH_C('O', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_2 _lh_listcomp_fun_5_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_1_9), (cycle_lh _lh_initial_LH_P2_1_1_9))), (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_7_2)))))) in
                                                                (fun _lh_listcomp_fun_5_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_6 _lh_listcomp_fun_ls_t_3_3) _lh_listcomp_fun_5_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_7 = (let rec _lh_initial_LH_P2_1_2_0 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_0 = (`LH_C('H', (`LH_C('O', (`LH_C('W', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_3 _lh_listcomp_fun_5_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_0), (cycle_lh _lh_initial_LH_P2_1_2_0))), (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_7_3)))))) in
                                                                (fun _lh_listcomp_fun_5_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_7 _lh_listcomp_fun_ls_t_3_2) _lh_listcomp_fun_5_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_8 = (let rec _lh_initial_LH_P2_1_2_1 = question_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_1 = (`LH_C('W', (`LH_C('H', (`LH_C('A', (`LH_C('T', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_4 _lh_listcomp_fun_5_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_1), (cycle_lh _lh_initial_LH_P2_1_2_1))), (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_7_4)))))) in
                                                                (fun _lh_listcomp_fun_5_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_8 _lh_listcomp_fun_ls_t_3_1) _lh_listcomp_fun_5_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_2_9 = (let rec _lh_initial_LH_P2_1_2_2 = iWant_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_2 = (`LH_C('I', (`LH_C(' ', (`LH_C('W', (`LH_C('A', (`LH_C('N', (`LH_C('T', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_5 _lh_listcomp_fun_6_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_2), (cycle_lh _lh_initial_LH_P2_1_2_2))), (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_7_5)))))) in
                                                                (fun _lh_listcomp_fun_6_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_2_9 _lh_listcomp_fun_ls_t_3_0) _lh_listcomp_fun_6_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_0 = (let rec _lh_initial_LH_P2_1_2_3 = computer_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_3 = (`LH_C('C', (`LH_C('O', (`LH_C('M', (`LH_C('P', (`LH_C('U', (`LH_C('T', (`LH_C('E', (`LH_C('R', (`LH_C('S', (`LH_N))))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_6 _lh_listcomp_fun_6_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_3), (cycle_lh _lh_initial_LH_P2_1_2_3))), (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_7_6)))))) in
                                                                (fun _lh_listcomp_fun_6_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_0 _lh_listcomp_fun_ls_t_2_9) _lh_listcomp_fun_6_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_1 = (let rec _lh_initial_LH_P2_1_2_4 = computer_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_4 = (`LH_C('C', (`LH_C('O', (`LH_C('M', (`LH_C('P', (`LH_C('U', (`LH_C('T', (`LH_C('E', (`LH_C('R', (`LH_N))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_7 _lh_listcomp_fun_6_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_4), (cycle_lh _lh_initial_LH_P2_1_2_4))), (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_7_7)))))) in
                                                                (fun _lh_listcomp_fun_6_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_1 _lh_listcomp_fun_ls_t_2_8) _lh_listcomp_fun_6_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_2 = (let rec _lh_initial_LH_P2_1_2_5 = no_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_5 = (`LH_C('N', (`LH_C('O', (`LH_N))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_8 _lh_listcomp_fun_6_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_5), (cycle_lh _lh_initial_LH_P2_1_2_5))), (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_7_8)))))) in
                                                                (fun _lh_listcomp_fun_6_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_2 _lh_listcomp_fun_ls_t_2_7) _lh_listcomp_fun_6_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_3 = (let rec _lh_initial_LH_P2_1_2_6 = yes_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_6 = (`LH_C('Y', (`LH_C('E', (`LH_C('S', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_7_9 _lh_listcomp_fun_6_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_6), (cycle_lh _lh_initial_LH_P2_1_2_6))), (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_7_9)))))) in
                                                                (fun _lh_listcomp_fun_6_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_3 _lh_listcomp_fun_ls_t_2_6) _lh_listcomp_fun_6_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_4 = (let rec _lh_initial_LH_P2_1_2_7 = you_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_7 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_0 _lh_listcomp_fun_7_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_7), (cycle_lh _lh_initial_LH_P2_1_2_7))), (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_8_0)))))) in
                                                                (fun _lh_listcomp_fun_7_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_4 _lh_listcomp_fun_ls_t_2_5) _lh_listcomp_fun_7_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_5 = (let rec _lh_initial_LH_P2_1_2_8 = iAm_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_8 = (`LH_C('I', (`LH_C('_', (`LH_C('M', (`LH_N))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_1 _lh_listcomp_fun_7_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_8), (cycle_lh _lh_initial_LH_P2_1_2_8))), (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_8_1)))))) in
                                                                (fun _lh_listcomp_fun_7_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_5 _lh_listcomp_fun_ls_t_2_4) _lh_listcomp_fun_7_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_6 = (let rec _lh_initial_LH_P2_1_2_9 = iAm_0 in
                                                                (let rec _lh_initial_LH_P2_0_2_9 = (`LH_C('I', (`LH_C(' ', (`LH_C('A', (`LH_C('M', (`LH_N))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_2 _lh_listcomp_fun_7_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_2_9), (cycle_lh _lh_initial_LH_P2_1_2_9))), (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_8_2)))))) in
                                                                (fun _lh_listcomp_fun_7_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_6 _lh_listcomp_fun_ls_t_2_3) _lh_listcomp_fun_7_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_7 = (let rec _lh_initial_LH_P2_1_3_0 = iCant_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_0 = (`LH_C('I', (`LH_C(' ', (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_3 _lh_listcomp_fun_7_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_0), (cycle_lh _lh_initial_LH_P2_1_3_0))), (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_8_3)))))) in
                                                                (fun _lh_listcomp_fun_7_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_7 _lh_listcomp_fun_ls_t_2_2) _lh_listcomp_fun_7_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_8 = (let rec _lh_initial_LH_P2_1_3_1 = areYou_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_1 = (`LH_C('A', (`LH_C('R', (`LH_C('E', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_4 _lh_listcomp_fun_7_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_1), (cycle_lh _lh_initial_LH_P2_1_3_1))), (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_8_4)))))) in
                                                                (fun _lh_listcomp_fun_7_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_8 _lh_listcomp_fun_ls_t_2_1) _lh_listcomp_fun_7_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_3_9 = (let rec _lh_initial_LH_P2_1_3_2 = whyCant_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_2 = (`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_C(' ', (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_C(' ', (`LH_C('I', (`LH_N))))))))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_5 _lh_listcomp_fun_8_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_2), (cycle_lh _lh_initial_LH_P2_1_3_2))), (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_8_5)))))) in
                                                                (fun _lh_listcomp_fun_8_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_3_9 _lh_listcomp_fun_ls_t_2_0) _lh_listcomp_fun_8_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_0 = (let rec _lh_initial_LH_P2_1_3_3 = whyDont_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_3 = (`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_C(' ', (`LH_C('D', (`LH_C('O', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_6 _lh_listcomp_fun_8_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_3), (cycle_lh _lh_initial_LH_P2_1_3_3))), (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_8_6)))))) in
                                                                (fun _lh_listcomp_fun_8_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_0 _lh_listcomp_fun_ls_t_1_9) _lh_listcomp_fun_8_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_1 = (let rec _lh_initial_LH_P2_1_3_4 = iFeel_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_4 = (`LH_C('I', (`LH_C(' ', (`LH_C('F', (`LH_C('E', (`LH_C('E', (`LH_C('L', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_7 _lh_listcomp_fun_8_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_4), (cycle_lh _lh_initial_LH_P2_1_3_4))), (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_8_7)))))) in
                                                                (fun _lh_listcomp_fun_8_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_1 _lh_listcomp_fun_ls_t_1_8) _lh_listcomp_fun_8_5)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_2 = (let rec _lh_initial_LH_P2_1_3_5 = iDont_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_5 = (`LH_C('I', (`LH_C(' ', (`LH_C('D', (`LH_C('O', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_8 _lh_listcomp_fun_8_6 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_5), (cycle_lh _lh_initial_LH_P2_1_3_5))), (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_8_8)))))) in
                                                                (fun _lh_listcomp_fun_8_7 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_2 _lh_listcomp_fun_ls_t_1_7) _lh_listcomp_fun_8_7)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_3 = (let rec _lh_initial_LH_P2_1_3_6 = youAre_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_6 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C('_', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_8_9 _lh_listcomp_fun_8_8 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_6), (cycle_lh _lh_initial_LH_P2_1_3_6))), (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_8_9)))))) in
                                                                (fun _lh_listcomp_fun_8_9 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_3 _lh_listcomp_fun_ls_t_1_6) _lh_listcomp_fun_8_9)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_4 = (let rec _lh_initial_LH_P2_1_3_7 = youAre_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_7 = (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C(' ', (`LH_C('A', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_0 _lh_listcomp_fun_9_0 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_7), (cycle_lh _lh_initial_LH_P2_1_3_7))), (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_9_0)))))) in
                                                                (fun _lh_listcomp_fun_9_1 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_4 _lh_listcomp_fun_ls_t_1_5) _lh_listcomp_fun_9_1)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_5 = (let rec _lh_initial_LH_P2_1_3_8 = canI_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_8 = (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C(' ', (`LH_C('I', (`LH_N))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_1 _lh_listcomp_fun_9_2 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_8), (cycle_lh _lh_initial_LH_P2_1_3_8))), (_lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_9_1)))))) in
                                                                (fun _lh_listcomp_fun_9_3 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_5 _lh_listcomp_fun_ls_t_1_4) _lh_listcomp_fun_9_3)))) in
                                                              (let rec _lh_listcomp_fun_ls_h_4_6 = (let rec _lh_initial_LH_P2_1_3_9 = canYou_0 in
                                                                (let rec _lh_initial_LH_P2_0_3_9 = (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))) in
                                                                  (fun _lh_listcomp_fun_ls_t_9_2 _lh_listcomp_fun_9_4 -> 
                                                                    (`LH_C((`LH_P2((words_lh _lh_initial_LH_P2_0_3_9), (cycle_lh _lh_initial_LH_P2_1_3_9))), (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_9_2)))))) in
                                                                (fun _lh_listcomp_fun_9_5 -> 
                                                                  ((_lh_listcomp_fun_ls_h_4_6 _lh_listcomp_fun_ls_t_1_3) _lh_listcomp_fun_9_5)))))))))))))))))))))))))))))))) in
      (`LH_P2((let rec _lh_listcomp_fun_9_6 = (fun _lh_listcomp_fun_para_2 -> 
        (_lh_listcomp_fun_para_2 _lh_listcomp_fun_9_6)) in
        (_lh_listcomp_fun_9_6 respMsgs_0)), (cycle_lh repeatMsgs_0)))));;
let rec conjug_lh _lh_conjug_arg1_0 _lh_conjug_arg2_0 =
  let rec conj_0 = (fun _lh_conj_arg1_0 -> 
    (head_lh ((mappend_lh (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1 -> 
      (match _lh_listcomp_fun_para_1 with
        | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_1_2) -> 
          (match _lh_listcomp_fun_ls_h_6 with
            | `LH_P2(_lh_conj_LH_P2_0_0, _lh_conj_LH_P2_1_0) -> 
              (if ((ucase_lh _lh_conj_arg1_0) = _lh_conj_LH_P2_0_0) then
                (`LH_C(_lh_conj_LH_P2_1_0, (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2)))
              else
                (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2))
            | _ -> 
              (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1_4 (conjugates_lh 0)))) (`LH_C(_lh_conj_arg1_0, (`LH_N))))))
  and trailingI_0 = (fun _lh_trailingI_arg1_0 -> 
    (let rec cons_2 = (fun x_1 xs_1 -> 
      (if ((x_1 = (`LH_C('I', (`LH_N)))) && (null_lh xs_1)) then
        (`LH_C((`LH_C('m', (`LH_C('e', (`LH_N))))), (`LH_N)))
      else
        (`LH_C(x_1, xs_1)))) in
      (((foldr_lh cons_2) (`LH_N)) _lh_trailingI_arg1_0)))
  and maybe_0 = (fun _lh_maybe_arg1_0 _lh_maybe_arg2_0 -> 
    (if (null_lh _lh_maybe_arg2_0) then
      _lh_maybe_arg1_0
    else
      _lh_maybe_arg2_0))
  in ((fun _lh_funcomp_x_1_1 -> 
    ((fun _lh_funcomp_x_1_2 -> 
      ((fun _lh_funcomp_x_1_3 -> 
        (unwords_lh (trailingI_0 _lh_funcomp_x_1_3))) ((map_lh conj_0) _lh_funcomp_x_1_2))) ((maybe_0 _lh_conjug_arg1_0) _lh_funcomp_x_1_1))) _lh_conjug_arg2_0);;
let rec replies_lh _lh_replies_arg1_0 _lh_replies_arg2_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((map_lh (fun _lh_funcomp_x_2 -> 
        ((conjug_lh _lh_replies_arg2_0) ((drop_lh (length_lh _lh_replies_arg1_0)) _lh_funcomp_x_2)))) ((filter_lh (fun _lh_funcomp_x_3 -> 
        ((prefix_lh _lh_replies_arg1_0) ((map_lh ucase_lh) _lh_funcomp_x_3)))) _lh_funcomp_x_1))) (tails_lh _lh_funcomp_x_0))) _lh_replies_arg2_0);;
let rec answer_lh _lh_answer_arg1_0 _lh_answer_arg2_0 =
  let rec ans_0 = (fun _lh_ans_arg1_0 _lh_ans_arg2_0 -> 
    (match _lh_ans_arg1_0 with
      | `LH_C(_lh_ans_LH_C_0_0, _lh_ans_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1 = _lh_ans_LH_C_0_0 in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_ans_LH_P2_0_0, _lh_ans_LH_P2_1_0) -> 
              (match _lh_ans_LH_P2_1_0 with
                | `LH_C(_lh_ans_LH_C_0_1, _lh_ans_LH_C_1_1) -> 
                  (let rec rs_0 = ((replies_lh _lh_ans_LH_P2_0_0) _lh_ans_arg2_0) in
                    (if (null_lh rs_0) then
                      ((cons_0 _lh_ans_LH_C_0_0) ((ans_0 _lh_ans_LH_C_1_0) _lh_ans_arg2_0))
                    else
                      (`LH_P2(((makeResponse_lh _lh_ans_LH_C_0_1) (head_lh rs_0)), (`LH_C((`LH_P2(_lh_ans_LH_P2_0_0, _lh_ans_LH_C_1_1)), _lh_ans_LH_C_1_0))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
  and cons_0 = (fun _lh_cons_arg1_0 _lh_cons_arg2_0 -> 
    (match _lh_cons_arg2_0 with
      | `LH_P2(_lh_cons_LH_P2_0_0, _lh_cons_LH_P2_1_0) -> 
        (`LH_P2(_lh_cons_LH_P2_0_0, (`LH_C(_lh_cons_arg1_0, _lh_cons_LH_P2_1_0))))
      | _ -> 
        (failwith "error")))
  in (let rec _lh_matchIdent_2 = ((ans_0 (keyTabOf_lh _lh_answer_arg1_0)) _lh_answer_arg2_0) in
    (match _lh_matchIdent_2 with
      | `LH_P2(_lh_answer_LH_P2_0_0, _lh_answer_LH_P2_1_0) -> 
        (let rec _lh_session_LH_P2_1_0 = ((newKeyTab_lh _lh_answer_LH_P2_1_0) _lh_answer_arg1_0) in
          (let rec _lh_session_LH_P2_0_0 = _lh_answer_LH_P2_0_0 in
            (fun _lh_session_LH_C_0_1 _lh_session_LH_C_1_1 -> 
              ((mappend_lh ((mappend_lh _lh_session_LH_P2_0_0) (`LH_C('n', (`LH_C('n', (`LH_N))))))) (((session_lh _lh_session_LH_P2_1_0) _lh_session_LH_C_0_1) _lh_session_LH_C_1_1)))))
      | _ -> 
        (failwith "error")))
and
repeated_lh _lh_repeated_arg1_0 =
  (match _lh_repeated_arg1_0 with
    | `LH_P2(_lh_repeated_LH_P2_0_0, _lh_repeated_LH_P2_1_0) -> 
      (match _lh_repeated_LH_P2_1_0 with
        | `LH_C(_lh_repeated_LH_C_0_0, _lh_repeated_LH_C_1_0) -> 
          (let rec _lh_session_LH_P2_1_1 = (`LH_P2(_lh_repeated_LH_P2_0_0, _lh_repeated_LH_C_1_0)) in
            (let rec _lh_session_LH_P2_0_1 = _lh_repeated_LH_C_0_0 in
              (fun _lh_session_LH_C_0_2 _lh_session_LH_C_1_2 -> 
                ((mappend_lh ((mappend_lh _lh_session_LH_P2_0_1) (`LH_C('n', (`LH_C('n', (`LH_N))))))) (((session_lh _lh_session_LH_P2_1_1) _lh_session_LH_C_0_2) _lh_session_LH_C_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
session_lh _lh_session_arg1_0 _lh_session_arg2_0 _lh_session_arg3_0 =
  (match _lh_session_arg3_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_session_LH_C_0_0, _lh_session_LH_C_1_0) -> 
      (let rec _lh_matchIdent_0 = (if (_lh_session_arg2_0 = _lh_session_LH_C_0_0) then
        (repeated_lh _lh_session_arg1_0)
      else
        ((answer_lh _lh_session_arg1_0) _lh_session_LH_C_0_0)) in
        ((_lh_matchIdent_0 _lh_session_LH_C_0_0) _lh_session_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec testEliza_nofib_lh _lh_testEliza_nofib_arg1_0 =
  (let rec input_0 = (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))), (`LH_C((`LH_C('T', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('R', (`LH_C('o', (`LH_C('s', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('.', (`LH_C(' ', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('B', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('l', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C(',', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('r', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C('p', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('c', (`LH_C('a', (`LH_C('u', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))), (`LH_C((`LH_C('O', (`LH_C('h', (`LH_C(',', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('o', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('e', (`LH_C('h', (`LH_C('h', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('T', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('*', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C('*', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('k', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('y', (`LH_C('e', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('b', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))), (`LH_N))))))))))))))))))))))))))))) in
    ((map_lh (fun i_0 -> 
      ((fun _lh_funcomp_x_4 -> 
        ((fun _lh_funcomp_x_5 -> 
          ((fun _lh_funcomp_x_6 -> 
            ((fun _lh_funcomp_x_7 -> 
              (length_lh (((session_lh (initial_lh 0)) (`LH_N)) _lh_funcomp_x_7))) ((filter_lh (fun _lh_funcomp_x_8 -> 
              (not (null_lh _lh_funcomp_x_8)))) _lh_funcomp_x_6))) ((map_lh (fun _lh_funcomp_x_9 -> 
            (words_lh (trim_lh _lh_funcomp_x_9)))) _lh_funcomp_x_5))) ((take_lh (i_0 mod 20)) _lh_funcomp_x_4))) input_0))) ((enumFromTo_lh 1) _lh_testEliza_nofib_arg1_0)));;
end;;

