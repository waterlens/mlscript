

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec foldr_lh__d1 f_7 i_1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_2_2, t_2_2) -> 
      ((f_7 h_2_2) (((foldr_lh__d1 f_7) i_1) t_2_2))
    | `LH_N -> 
      i_1);;
let rec inList_lh__d1 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList_lh__d1 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d2 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec dropWhile_lh__d1 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile_lh__d1 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec inList_lh__d2 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh__d2 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec trim_lh__d1 _lh_trim_arg1_0 =
  (let rec cons_2 = (fun _lh_cons_arg1_1 _lh_cons_arg2_1 -> 
    (if (((inList_lh__d2 _lh_cons_arg1_1) (`LH_C(' ', (`LH_C('.', (`LH_C('!', (`LH_C('?', (`LH_C(',', (`LH_N)))))))))))) && (null_lh__d2 _lh_cons_arg2_1)) then
      (`LH_N)
    else
      (`LH_C(_lh_cons_arg1_1, _lh_cons_arg2_1)))) in
    ((fun _lh_funcomp_x_7 -> 
      (((foldr_lh__d1 cons_2) (`LH_N)) ((dropWhile_lh__d1 (fun x_1 -> 
        ((inList_lh__d1 x_1) (`LH_C(' ', (`LH_C('.', (`LH_C('!', (`LH_C('?', (`LH_C(',', (`LH_N)))))))))))))) _lh_funcomp_x_7))) _lh_trim_arg1_0));;
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
let rec isSpace_lh__d1 _lh_isSpace_arg1_3 =
  (_lh_isSpace_arg1_3 = ' ');;
let rec isSpace_lh__d2 _lh_isSpace_arg1_2 =
  (_lh_isSpace_arg1_2 = ' ');;
let rec break_lh__d1 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_4 = ((break_lh__d1 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec words_lh__d1 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_9 = ((dropWhile_lh__d2 isSpace_lh__d2) _lh_words_arg1_1) in
    (match _lh_matchIdent_9 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1) -> 
        (let rec _lh_matchIdent_1_0 = ((break_lh__d1 isSpace_lh__d1) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
          (match _lh_matchIdent_1_0 with
            | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
              (`LH_C(_lh_words_LH_P2_0_1, (words_lh__d1 _lh_words_LH_P2_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lh__d1 f_1_0 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C((f_1_0 h_2_9), ((map_lh__d1 f_1_0) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec length_lh__d1 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_2_6, t_2_6) -> 
      (1 + (length_lh__d1 t_2_6))
    | `LH_N -> 
      0);;
let rec filter_lh__d1 f_8 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_5, t_2_5) -> 
      (if (f_8 h_2_5) then
        (`LH_C(h_2_5, ((filter_lh__d1 f_8) t_2_5)))
      else
        ((filter_lh__d1 f_8) t_2_5))
    | `LH_N -> 
      (`LH_N));;
let rec null_lh__d1 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1 xs_1_2 ys_1_1 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C(h_2_4, ((mappend_lh__d1 t_2_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
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
let rec mappend_lh__d3 xs_1_0 ys_9 =
  (match xs_1_0 with
    | `LH_C(h_2_0, t_2_0) -> 
      (`LH_C(h_2_0, ((mappend_lh__d3 t_2_0) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_lh__d8 xs_5 ys_4 =
  (match xs_5 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d8 t_1_5) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d7 xs_6 ys_5 =
  (match xs_6 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d7 t_1_6) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_lh__d5 xs_8 ys_7 =
  (match xs_8 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_lh__d5 t_1_8) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_lh__d6 xs_7 ys_6 =
  (match xs_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend_lh__d6 t_1_7) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend_lh__d4 xs_9 ys_8 =
  (match xs_9 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C(h_1_9, ((mappend_lh__d4 t_1_9) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec makeResponse_lh__d1 _lh_makeResponse_arg1_0 _lh_makeResponse_arg2_0 =
  (match _lh_makeResponse_arg1_0 with
    | `LH_C(_lh_makeResponse_LH_C_0_0, _lh_makeResponse_LH_C_1_0) -> 
      (match _lh_makeResponse_LH_C_0_0 with
        | '?' -> 
          ((mappend_lh__d8 ((mappend_lh__d3 ((mappend_lh__d5 _lh_makeResponse_LH_C_1_0) (`LH_C(' ', (`LH_N))))) _lh_makeResponse_arg2_0)) (`LH_C('?', (`LH_N))))
        | '.' -> 
          ((mappend_lh__d6 ((mappend_lh__d4 ((mappend_lh__d7 _lh_makeResponse_LH_C_1_0) (`LH_C(' ', (`LH_N))))) _lh_makeResponse_arg2_0)) (`LH_C('.', (`LH_N))))
        | _ -> 
          _lh_makeResponse_arg1_0)
    | _ -> 
      _lh_makeResponse_arg1_0);;
let rec null_lh__d3 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec prefix_lh__d1 _lh_prefix_arg1_0 _lh_prefix_arg2_0 =
  (match _lh_prefix_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_prefix_LH_C_0_0, _lh_prefix_LH_C_1_0) -> 
      (match _lh_prefix_arg2_0 with
        | `LH_N -> 
          false
        | `LH_C(_lh_prefix_LH_C_0_1, _lh_prefix_LH_C_1_1) -> 
          ((_lh_prefix_LH_C_0_0 = _lh_prefix_LH_C_0_1) && ((prefix_lh__d1 _lh_prefix_LH_C_1_0) _lh_prefix_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d6 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_1 h_5), ((map_lh__d6 f_1) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec toUpper_lh__d1 _lh_toUpper_arg1_1 =
  (let rec _lh_matchIdent_1 = _lh_toUpper_arg1_1 in
    (match _lh_matchIdent_1 with
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
        _lh_matchIdent_1));;
let rec ucase_lh__d1 _lh_ucase_arg1_2 =
  ((map_lh__d6 toUpper_lh__d1) _lh_ucase_arg1_2);;
let rec tail_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_0, t_1_0) -> 
      t_1_0
    | `LH_N -> 
      (failwith "error"));;
let rec tails_lh__d1 _lh_tails_arg1_0 =
  (match _lh_tails_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_tails_arg1_0, (tails_lh__d1 (tail_lh__d1 _lh_tails_arg1_0)))));;
let rec map_lh__d3 f_5 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C((f_5 h_1_2), ((map_lh__d3 f_5) t_1_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d4 f_4 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C((f_4 h_1_1), ((map_lh__d4 f_4) t_1_1)))
    | `LH_N -> 
      (`LH_N));;
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
let rec length_lh__d2 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_4, t_1_4) -> 
      (1 + (length_lh__d2 t_1_4))
    | `LH_N -> 
      0);;
let rec mappend_lh__d1_d0 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d1_d0 t_3) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend_lh__d1_d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d1_d1 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
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
let rec null_lh__d4 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d2 f_3 i_0 ls_4 =
  (match ls_4 with
    | `LH_C(h_8, t_8) -> 
      ((f_3 h_8) (((foldr_lh__d2 f_3) i_0) t_8))
    | `LH_N -> 
      i_0);;
let rec toUpper_lh__d2 _lh_toUpper_arg1_0 =
  (let rec _lh_matchIdent_0 = _lh_toUpper_arg1_0 in
    (match _lh_matchIdent_0 with
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
        _lh_matchIdent_0));;
let rec map_lh__d7 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_0 h_4), ((map_lh__d7 f_0) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec ucase_lh__d2 _lh_ucase_arg1_1 =
  ((map_lh__d7 toUpper_lh__d2) _lh_ucase_arg1_1);;
let rec mappend_lh__d9 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d9 t_9) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec null_lh__d5 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec map_lh__d5 f_2 ls_3 =
  (match ls_3 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C((f_2 h_7), ((map_lh__d5 f_2) t_7)))
    | `LH_N -> 
      (`LH_N));;
let rec head_lh__d2 ls_2 =
  (match ls_2 with
    | `LH_C(h_6, t_6) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec mappend_lh__d1_d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d1_d2 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_0, t_0) -> 
      ((mappend_lh__d1_d2 h_0) (concat_lh__d1 t_0))
    | `LH_N -> 
      (`LH_N));;
let rec ucase_lh__d3 _lh_ucase_arg1_0 =
  ((map_lh__d7 toUpper_lh__d2) _lh_ucase_arg1_0);;
let rec conjugates_lh__d1 _lh_conjugates_arg1_0 =
  (let rec prepare_0 = (fun _lh_prepare_arg1_0 -> 
    ((map_lh__d7 (fun wr_0 -> 
      (let rec _lh_matchIdent_2 = wr_0 in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_prepare_LH_P2_0_0, _lh_prepare_LH_P2_1_0) -> 
            (`LH_P2((ucase_lh__d3 _lh_prepare_LH_P2_0_0), _lh_prepare_LH_P2_1_0))
          | _ -> 
            (failwith "error"))))) _lh_prepare_arg1_0)) in
    (let rec oneways_0 = (`LH_C((`LH_P2((`LH_C('m', (`LH_C('e', (`LH_N))))), (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))), (`LH_N))) in
      (let rec bothways_0 = (`LH_C((`LH_P2((`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_N))))))), (`LH_C('a', (`LH_C('m', (`LH_N))))))), (`LH_C((`LH_P2((`LH_C('w', (`LH_C('e', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))), (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_N))))))))), (`LH_C((`LH_P2((`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))), (`LH_C('I', (`LH_N))))), (`LH_C((`LH_P2((`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_N))))))))), (`LH_C('m', (`LH_C('y', (`LH_N))))))), (`LH_C((`LH_P2((`LH_C('I', (`LH_C('_', (`LH_C('v', (`LH_C('e', (`LH_N))))))))), (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))), (`LH_C((`LH_P2((`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_N))))))), (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('_', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))))))), (`LH_N))))))))))))) in
        (prepare_0 ((mappend_lh__d1_d2 oneways_0) (concat_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
          (match _lh_listcomp_fun_para_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
              (match _lh_listcomp_fun_ls_h_0 with
                | `LH_P2(_lh_conjugates_LH_P2_0_0, _lh_conjugates_LH_P2_1_0) -> 
                  (`LH_C((`LH_C((`LH_P2(_lh_conjugates_LH_P2_0_0, _lh_conjugates_LH_P2_1_0)), (`LH_C((`LH_P2(_lh_conjugates_LH_P2_1_0, _lh_conjugates_LH_P2_0_0)), (`LH_N))))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                | _ -> 
                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_0 bothways_0))))))));;
let rec conjug_lh__d1 _lh_conjug_arg1_0 _lh_conjug_arg2_0 =
  let rec conj_0 = (fun _lh_conj_arg1_0 -> 
    (head_lh__d2 ((mappend_lh__d9 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
      (match _lh_listcomp_fun_para_1 with
        | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
          (match _lh_listcomp_fun_ls_h_1 with
            | `LH_P2(_lh_conj_LH_P2_0_0, _lh_conj_LH_P2_1_0) -> 
              (if ((ucase_lh__d2 _lh_conj_arg1_0) = _lh_conj_LH_P2_0_0) then
                (`LH_C(_lh_conj_LH_P2_1_0, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
              else
                (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
            | _ -> 
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1 (conjugates_lh__d1 0)))) (`LH_C(_lh_conj_arg1_0, (`LH_N))))))
  and trailingI_0 = (fun _lh_trailingI_arg1_0 -> 
    (let rec cons_0 = (fun x_0 xs_4 -> 
      (if ((x_0 = (`LH_C('I', (`LH_N)))) && (null_lh__d4 xs_4)) then
        (`LH_C((`LH_C('m', (`LH_C('e', (`LH_N))))), (`LH_N)))
      else
        (`LH_C(x_0, xs_4)))) in
      (((foldr_lh__d2 cons_0) (`LH_N)) _lh_trailingI_arg1_0)))
  and maybe_0 = (fun _lh_maybe_arg1_0 _lh_maybe_arg2_0 -> 
    (if (null_lh__d5 _lh_maybe_arg2_0) then
      _lh_maybe_arg1_0
    else
      _lh_maybe_arg2_0))
  in ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        (unwords_lh__d1 (trailingI_0 _lh_funcomp_x_2))) ((map_lh__d5 conj_0) _lh_funcomp_x_1))) ((maybe_0 _lh_conjug_arg1_0) _lh_funcomp_x_0))) _lh_conjug_arg2_0);;
let rec filter_lh__d2 f_6 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_3, t_1_3) -> 
      (if (f_6 h_1_3) then
        (`LH_C(h_1_3, ((filter_lh__d2 f_6) t_1_3)))
      else
        ((filter_lh__d2 f_6) t_1_3))
    | `LH_N -> 
      (`LH_N));;
let rec replies_lh__d1 _lh_replies_arg1_0 _lh_replies_arg2_0 =
  ((fun _lh_funcomp_x_3 -> 
    ((fun _lh_funcomp_x_4 -> 
      ((map_lh__d3 (fun _lh_funcomp_x_5 -> 
        ((conjug_lh__d1 _lh_replies_arg2_0) ((drop_lh__d1 (length_lh__d2 _lh_replies_arg1_0)) _lh_funcomp_x_5)))) ((filter_lh__d2 (fun _lh_funcomp_x_6 -> 
        ((prefix_lh__d1 _lh_replies_arg1_0) ((map_lh__d4 ucase_lh__d1) _lh_funcomp_x_6)))) _lh_funcomp_x_4))) (tails_lh__d1 _lh_funcomp_x_3))) _lh_replies_arg2_0);;
let rec head_lh__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_2_1, t_2_1) -> 
      h_2_1
    | `LH_N -> 
      (failwith "error"));;
let rec answer_lh__d1 _lh_answer_arg1_0 _lh_answer_arg2_0 =
  let rec cons_1 = (fun _lh_cons_arg1_0 _lh_cons_arg2_0 -> 
    (match _lh_cons_arg2_0 with
      | `LH_P2(_lh_cons_LH_P2_0_0, _lh_cons_LH_P2_1_0) -> 
        (`LH_P2(_lh_cons_LH_P2_0_0, (`LH_C(_lh_cons_arg1_0, _lh_cons_LH_P2_1_0))))
      | _ -> 
        (failwith "error")))
  and ans_0 = (fun _lh_ans_arg1_0 _lh_ans_arg2_0 -> 
    (match _lh_ans_arg1_0 with
      | `LH_C(_lh_ans_LH_C_0_0, _lh_ans_LH_C_1_0) -> 
        (let rec _lh_matchIdent_7 = _lh_ans_LH_C_0_0 in
          (match _lh_matchIdent_7 with
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
  in (let rec _lh_matchIdent_8 = ((ans_0 (keyTabOf_lh__d1 _lh_answer_arg1_0)) _lh_answer_arg2_0) in
    (match _lh_matchIdent_8 with
      | `LH_P2(_lh_answer_LH_P2_0_0, _lh_answer_LH_P2_1_0) -> 
        (`LH_P2(_lh_answer_LH_P2_0_0, ((newKeyTab_lh__d1 _lh_answer_LH_P2_1_0) _lh_answer_arg1_0)))
      | _ -> 
        (failwith "error")));;
let rec mappend_lh__d2 xs_1_1 ys_1_0 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_3) -> 
      (`LH_C(h_2_3, ((mappend_lh__d2 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec repeated_lh__d1 _lh_repeated_arg1_0 =
  (match _lh_repeated_arg1_0 with
    | `LH_P2(_lh_repeated_LH_P2_0_0, _lh_repeated_LH_P2_1_0) -> 
      (match _lh_repeated_LH_P2_1_0 with
        | `LH_C(_lh_repeated_LH_C_0_0, _lh_repeated_LH_C_1_0) -> 
          (`LH_P2(_lh_repeated_LH_C_0_0, (`LH_P2(_lh_repeated_LH_P2_0_0, _lh_repeated_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec session_lh__d1 _lh_session_arg1_0 _lh_session_arg2_0 _lh_session_arg3_0 =
  (match _lh_session_arg3_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_session_LH_C_0_0, _lh_session_LH_C_1_0) -> 
      (let rec _lh_matchIdent_1_1 = (if (_lh_session_arg2_0 = _lh_session_LH_C_0_0) then
        (repeated_lh__d1 _lh_session_arg1_0)
      else
        ((answer_lh__d1 _lh_session_arg1_0) _lh_session_LH_C_0_0)) in
        (match _lh_matchIdent_1_1 with
          | `LH_P2(_lh_session_LH_P2_0_0, _lh_session_LH_P2_1_0) -> 
            ((mappend_lh__d1 ((mappend_lh__d2 _lh_session_LH_P2_0_0) (`LH_C('n', (`LH_C('n', (`LH_N))))))) (((session_lh__d1 _lh_session_LH_P2_1_0) _lh_session_LH_C_0_0) _lh_session_LH_C_1_0))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh__d3 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec break_lh__d2 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_3 = ((break_lh__d2 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh__d4 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec dropWhile_lh__d3 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh__d3 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec words_lh__d2 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_5 = ((dropWhile_lh__d3 isSpace_lh__d4) _lh_words_arg1_0) in
    (match _lh_matchIdent_5 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0) -> 
        (let rec _lh_matchIdent_6 = ((break_lh__d2 isSpace_lh__d3) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
          (match _lh_matchIdent_6 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh__d2 _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec cycle_lh__d2 _lh_cycle_arg1_0 =
  _lh_cycle_arg1_0;;
let rec cycle_lh__d1 _lh_cycle_arg1_1 =
  _lh_cycle_arg1_1;;
let rec initial_lh__d1 _lh_initial_arg1_0 =
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
                                                            (`LH_C((`LH_P2((`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))), canYou_0)), (`LH_C((`LH_P2((`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C(' ', (`LH_C('I', (`LH_N))))))))))), canI_0)), (`LH_C((`LH_P2((`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C(' ', (`LH_C('A', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))))))), youAre_0)), (`LH_C((`LH_P2((`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C('_', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))))), youAre_0)), (`LH_C((`LH_P2((`LH_C('I', (`LH_C(' ', (`LH_C('D', (`LH_C('O', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_N))))))))))))))), iDont_0)), (`LH_C((`LH_P2((`LH_C('I', (`LH_C(' ', (`LH_C('F', (`LH_C('E', (`LH_C('E', (`LH_C('L', (`LH_N))))))))))))), iFeel_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_C(' ', (`LH_C('D', (`LH_C('O', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))))))))))))))), whyDont_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_C(' ', (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_C(' ', (`LH_C('I', (`LH_N))))))))))))))))))))))), whyCant_0)), (`LH_C((`LH_P2((`LH_C('A', (`LH_C('R', (`LH_C('E', (`LH_C(' ', (`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))))))))))), areYou_0)), (`LH_C((`LH_P2((`LH_C('I', (`LH_C(' ', (`LH_C('C', (`LH_C('A', (`LH_C('N', (`LH_C('_', (`LH_C('T', (`LH_N))))))))))))))), iCant_0)), (`LH_C((`LH_P2((`LH_C('I', (`LH_C(' ', (`LH_C('A', (`LH_C('M', (`LH_N))))))))), iAm_0)), (`LH_C((`LH_P2((`LH_C('I', (`LH_C('_', (`LH_C('M', (`LH_N))))))), iAm_0)), (`LH_C((`LH_P2((`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_N))))))), you_0)), (`LH_C((`LH_P2((`LH_C('Y', (`LH_C('E', (`LH_C('S', (`LH_N))))))), yes_0)), (`LH_C((`LH_P2((`LH_C('N', (`LH_C('O', (`LH_N))))), no_0)), (`LH_C((`LH_P2((`LH_C('C', (`LH_C('O', (`LH_C('M', (`LH_C('P', (`LH_C('U', (`LH_C('T', (`LH_C('E', (`LH_C('R', (`LH_N))))))))))))))))), computer_0)), (`LH_C((`LH_P2((`LH_C('C', (`LH_C('O', (`LH_C('M', (`LH_C('P', (`LH_C('U', (`LH_C('T', (`LH_C('E', (`LH_C('R', (`LH_C('S', (`LH_N))))))))))))))))))), computer_0)), (`LH_C((`LH_P2((`LH_C('I', (`LH_C(' ', (`LH_C('W', (`LH_C('A', (`LH_C('N', (`LH_C('T', (`LH_N))))))))))))), iWant_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('A', (`LH_C('T', (`LH_N))))))))), question_0)), (`LH_C((`LH_P2((`LH_C('H', (`LH_C('O', (`LH_C('W', (`LH_N))))))), question_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('O', (`LH_N))))))), question_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('E', (`LH_C('R', (`LH_C('E', (`LH_N))))))))))), question_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_N))))))))), question_0)), (`LH_C((`LH_P2((`LH_C('W', (`LH_C('H', (`LH_C('Y', (`LH_N))))))), question_0)), (`LH_C((`LH_P2((`LH_C('N', (`LH_C('A', (`LH_C('M', (`LH_C('E', (`LH_N))))))))), name_0)), (`LH_C((`LH_P2((`LH_C('B', (`LH_C('E', (`LH_C('C', (`LH_C('A', (`LH_C('U', (`LH_C('S', (`LH_C('E', (`LH_N))))))))))))))), because_0)), (`LH_C((`LH_P2((`LH_C('C', (`LH_C('A', (`LH_C('U', (`LH_C('S', (`LH_C('E', (`LH_N))))))))))), because_0)), (`LH_C((`LH_P2((`LH_C('S', (`LH_C('O', (`LH_C('R', (`LH_C('R', (`LH_C('Y', (`LH_N))))))))))), sorry_0)), (`LH_C((`LH_P2((`LH_C('D', (`LH_C('R', (`LH_C('E', (`LH_C('A', (`LH_C('M', (`LH_N))))))))))), dream_0)), (`LH_C((`LH_P2((`LH_C('D', (`LH_C('R', (`LH_C('E', (`LH_C('A', (`LH_C('M', (`LH_C('S', (`LH_N))))))))))))), dream_0)), (`LH_C((`LH_P2((`LH_C('H', (`LH_C('I', (`LH_N))))), hello_0)), (`LH_C((`LH_P2((`LH_C('H', (`LH_C('E', (`LH_C('L', (`LH_C('L', (`LH_C('O', (`LH_N))))))))))), hello_0)), (`LH_C((`LH_P2((`LH_C('M', (`LH_C('A', (`LH_C('Y', (`LH_C('B', (`LH_C('E', (`LH_N))))))))))), maybe_1)), (`LH_C((`LH_P2((`LH_C('Y', (`LH_C('O', (`LH_C('U', (`LH_C('R', (`LH_N))))))))), your_0)), (`LH_C((`LH_P2((`LH_C('A', (`LH_C('L', (`LH_C('W', (`LH_C('A', (`LH_C('Y', (`LH_C('S', (`LH_N))))))))))))), always_0)), (`LH_C((`LH_P2((`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('N', (`LH_C('K', (`LH_N))))))))))), think_0)), (`LH_C((`LH_P2((`LH_C('A', (`LH_C('L', (`LH_C('I', (`LH_C('K', (`LH_C('E', (`LH_N))))))))))), alike_0)), (`LH_C((`LH_P2((`LH_C('F', (`LH_C('R', (`LH_C('I', (`LH_C('E', (`LH_C('N', (`LH_C('D', (`LH_N))))))))))))), friend_0)), (`LH_C((`LH_P2((`LH_C('F', (`LH_C('R', (`LH_C('I', (`LH_C('E', (`LH_C('N', (`LH_C('D', (`LH_C('S', (`LH_N))))))))))))))), friend_0)), (`LH_C((`LH_P2((`LH_N), nokeyMsgs_0)), (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_P2((let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (match _lh_listcomp_fun_ls_h_2 with
              | `LH_P2(_lh_initial_LH_P2_0_0, _lh_initial_LH_P2_1_0) -> 
                (`LH_C((`LH_P2((words_lh__d2 _lh_initial_LH_P2_0_0), (cycle_lh__d2 _lh_initial_LH_P2_1_0))), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
              | _ -> 
                (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 respMsgs_0)), (cycle_lh__d1 repeatMsgs_0)))));;
let rec take_lh__d1 n_0 ls_1_4 =
  (if (n_0 > 0) then
    (match ls_1_4 with
      | `LH_C(h_2_7, t_2_7) -> 
        (`LH_C(h_2_7, ((take_lh__d1 (n_0 - 1)) t_2_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh__d2 f_9 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C((f_9 h_2_8), ((map_lh__d2 f_9) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec testEliza_nofib_lh__d1 _lh_testEliza_nofib_arg1_0 =
  (let rec input_0 = (`LH_C((`LH_C('A', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))), (`LH_C((`LH_C('T', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('R', (`LH_C('o', (`LH_C('s', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('.', (`LH_C(' ', (`LH_C('D', (`LH_C('o', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('a', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('d', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('B', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('y', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('l', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('.', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C(',', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('o', (`LH_C(' ', (`LH_C('r', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C('p', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('c', (`LH_C('a', (`LH_C('u', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))), (`LH_C((`LH_C('O', (`LH_C('h', (`LH_C(',', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('n', (`LH_C('o', (`LH_C('i', (`LH_C('d', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('u', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('e', (`LH_C('h', (`LH_C('h', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('T', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('*', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C('*', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('s', (`LH_C(' ', (`LH_C('s', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('k', (`LH_C('e', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('s', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('q', (`LH_C('u', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('n', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('y', (`LH_C('e', (`LH_C('s', (`LH_N))))))), (`LH_C((`LH_C('b', (`LH_C('u', (`LH_C('t', (`LH_C(' ', (`LH_C('I', (`LH_C('_', (`LH_C('m', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))))))))))), (`LH_N))))))))))))))))))))))))))))) in
    ((map_lh__d1 (fun i_2 -> 
      ((fun _lh_funcomp_x_8 -> 
        ((fun _lh_funcomp_x_9 -> 
          ((fun _lh_funcomp_x_1_0 -> 
            ((fun _lh_funcomp_x_1_1 -> 
              (length_lh__d1 (((session_lh__d1 (initial_lh__d1 0)) (`LH_N)) _lh_funcomp_x_1_1))) ((filter_lh__d1 (fun _lh_funcomp_x_1_2 -> 
              (not (null_lh__d1 _lh_funcomp_x_1_2)))) _lh_funcomp_x_1_0))) ((map_lh__d2 (fun _lh_funcomp_x_1_3 -> 
            (words_lh__d1 (trim_lh__d1 _lh_funcomp_x_1_3)))) _lh_funcomp_x_9))) ((take_lh__d1 (i_2 mod 20)) _lh_funcomp_x_8))) input_0))) ((enumFromTo_lh__d1 1) _lh_testEliza_nofib_arg1_0)));;
end;;

