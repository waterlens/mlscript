

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______ = struct
let rec showColour_lh__d1 _lh_showColour_arg1_0 =
  (match _lh_showColour_arg1_0 with
    | `Black -> 
      (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (fun ys_8 -> 
        ys_8) in
        (let rec h_6 = 'k' in
          (fun ys_9 -> 
            (let rec t_1_1 = (t_1_0 ys_9) in
              (let rec h_7 = h_6 in
                (fun ys_1_0 -> 
                  (`LH_C(h_7, (t_1_1 ys_1_0))))))))) in
        (let rec h_8 = 'c' in
          (fun ys_1_1 -> 
            (let rec t_1_2 = (t_9 ys_1_1) in
              (let rec h_9 = h_8 in
                (fun ys_1_2 -> 
                  (`LH_C(h_9, (t_1_2 ys_1_2))))))))) in
        (let rec h_1_0 = 'a' in
          (fun ys_1_3 -> 
            (let rec t_1_3 = (t_8 ys_1_3) in
              (let rec h_1_1 = h_1_0 in
                (fun ys_1_4 -> 
                  (`LH_C(h_1_1, (t_1_3 ys_1_4))))))))) in
        (let rec h_1_2 = 'l' in
          (fun ys_1_5 -> 
            (let rec t_1_4 = (t_7 ys_1_5) in
              (let rec h_1_3 = h_1_2 in
                (fun ys_1_6 -> 
                  (`LH_C(h_1_3, (t_1_4 ys_1_6))))))))) in
        (let rec h_1_4 = 'B' in
          (fun ys_1_7 -> 
            (let rec t_1_5 = (t_6 ys_1_7) in
              (let rec h_1_5 = h_1_4 in
                (fun ys_1_8 -> 
                  (`LH_C(h_1_5, (t_1_5 ys_1_8)))))))))
    | `White -> 
      (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (fun ys_1_9 -> 
        ys_1_9) in
        (let rec h_1_6 = 'e' in
          (fun ys_2_0 -> 
            (let rec t_2_1 = (t_2_0 ys_2_0) in
              (let rec h_1_7 = h_1_6 in
                (fun ys_2_1 -> 
                  (`LH_C(h_1_7, (t_2_1 ys_2_1))))))))) in
        (let rec h_1_8 = 't' in
          (fun ys_2_2 -> 
            (let rec t_2_2 = (t_1_9 ys_2_2) in
              (let rec h_1_9 = h_1_8 in
                (fun ys_2_3 -> 
                  (`LH_C(h_1_9, (t_2_2 ys_2_3))))))))) in
        (let rec h_2_0 = 'i' in
          (fun ys_2_4 -> 
            (let rec t_2_3 = (t_1_8 ys_2_4) in
              (let rec h_2_1 = h_2_0 in
                (fun ys_2_5 -> 
                  (`LH_C(h_2_1, (t_2_3 ys_2_5))))))))) in
        (let rec h_2_2 = 'h' in
          (fun ys_2_6 -> 
            (let rec t_2_4 = (t_1_7 ys_2_6) in
              (let rec h_2_3 = h_2_2 in
                (fun ys_2_7 -> 
                  (`LH_C(h_2_3, (t_2_4 ys_2_7))))))))) in
        (let rec h_2_4 = 'W' in
          (fun ys_2_8 -> 
            (let rec t_2_5 = (t_1_6 ys_2_8) in
              (let rec h_2_5 = h_2_4 in
                (fun ys_2_9 -> 
                  (`LH_C(h_2_5, (t_2_5 ys_2_9)))))))))
    | _ -> 
      (failwith "error"));;
let rec pieceAt_lh__d1 _lh_pieceAt_arg1_0 _lh_pieceAt_arg2_0 =
  (match _lh_pieceAt_arg1_0 with
    | `Board(_lh_pieceAt_Board_0_0, _lh_pieceAt_Board_1_0) -> 
      (let rec pieceAtWith_0 = (fun c_0 n_0 ls_1 -> 
        (let rec _lh_matchIdent_1_1 = ls_1 in
          (match _lh_matchIdent_1_1 with
            | `LH_N -> 
              n_0
            | `LH_C(_lh_pieceAt_LH_C_0_0, _lh_pieceAt_LH_C_1_0) -> 
              (match _lh_pieceAt_LH_C_0_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_0, _lh_pieceAt_LH_P2_1_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_0 = _lh_pieceAt_arg2_0) then
                    (`Just((`LH_P2(c_0, _lh_pieceAt_LH_P2_0_0))))
                  else
                    (((pieceAtWith_0 c_0) n_0) _lh_pieceAt_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_0 (`White)) (((pieceAtWith_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_0)) _lh_pieceAt_Board_0_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d2 a_4 b_3 =
  (if (a_4 <= b_3) then
    (let rec t_2_8 = ((enumFromTo_lh__d2 (a_4 + 1)) b_3) in
      (let rec h_2_8 = a_4 in
        (fun a_5 -> 
          (t_2_8 (let rec t_2_9 = a_5 in
            (let rec h_2_9 = h_2_8 in
              (fun f_7 -> 
                (let rec t_3_0 = (t_2_9 f_7) in
                  (let rec h_3_0 = (f_7 h_2_9) in
                    (fun f_8 -> 
                      (`LH_C((f_8 h_3_0), (t_3_0 f_8)))))))))))))
  else
    (fun a_6 -> 
      a_6));;
let rec enumFromTo_lh__d1 a_8 b_7 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_8 <= b_7) then
    (let rec t_7_9 = ((enumFromTo_lh__d1 (a_8 + 1)) b_7) in
      (let rec h_7_9 = a_8 in
        ((_lh_popOutId_0_0 h_7_9) ((t_7_9 _lh_popOutId_0_0) _lh_popOutId_1_0))))
  else
    _lh_popOutId_1_0);;
let rec reverse_lh__d1 ls_2_6 =
  (ls_2_6 (fun f_3_7 f_3_8 -> 
    (`LH_N)));;
let rec kindToChar_lh__d1 _lh_kindToChar_arg1_1 =
  (let rec _lh_matchIdent_5_4 = _lh_kindToChar_arg1_1 in
    (match _lh_matchIdent_5_4 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec kindToChar_lh__d2 _lh_kindToChar_arg1_0 =
  (let rec _lh_matchIdent_3_9 = _lh_kindToChar_arg1_0 in
    (match _lh_matchIdent_3_9 with
      | `King -> 
        'K'
      | `Queen -> 
        'Q'
      | `Rook -> 
        'R'
      | `Bishop -> 
        'B'
      | `Knight -> 
        'N'
      | `Pawn -> 
        'P'
      | _ -> 
        (failwith "error")));;
let rec toLower_lh__d1 _lh_toLower_arg1_0 =
  (let rec _lh_matchIdent_6_3 = _lh_toLower_arg1_0 in
    (match _lh_matchIdent_6_3 with
      | 'A' -> 
        'a'
      | 'B' -> 
        'b'
      | 'C' -> 
        'c'
      | 'D' -> 
        'd'
      | 'E' -> 
        'e'
      | 'F' -> 
        'f'
      | 'G' -> 
        'g'
      | 'H' -> 
        'h'
      | 'I' -> 
        'i'
      | 'J' -> 
        'j'
      | 'K' -> 
        'k'
      | 'L' -> 
        'l'
      | 'M' -> 
        'm'
      | 'N' -> 
        'n'
      | 'O' -> 
        'o'
      | 'P' -> 
        'p'
      | 'Q' -> 
        'q'
      | 'R' -> 
        'r'
      | 'S' -> 
        's'
      | 'T' -> 
        't'
      | 'U' -> 
        'u'
      | 'V' -> 
        'v'
      | 'W' -> 
        'w'
      | 'X' -> 
        'x'
      | 'Y' -> 
        'y'
      | 'Z' -> 
        'z'
      | _ -> 
        _lh_matchIdent_6_3));;
let rec pieceToChar_lh__d1 _lh_pieceToChar_arg1_0 =
  (match _lh_pieceToChar_arg1_0 with
    | `LH_P2(_lh_pieceToChar_LH_P2_0_0, _lh_pieceToChar_LH_P2_1_0) -> 
      (match _lh_pieceToChar_LH_P2_0_0 with
        | `Black -> 
          (kindToChar_lh__d1 _lh_pieceToChar_LH_P2_1_0)
        | `White -> 
          (toLower_lh__d1 (kindToChar_lh__d2 _lh_pieceToChar_LH_P2_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d9 xs_2_1 ys_8_2 =
  (match xs_2_1 with
    | `LH_C(h_7_4, t_7_4) -> 
      (`LH_C(h_7_4, ((mappend_lh__d9 t_7_4) ys_8_2)))
    | `LH_N -> 
      ys_8_2);;
let rec mappend_lh__d1_d0 xs_7 ys_3_1 =
  (match xs_7 with
    | `LH_C(h_3_1, t_3_1) -> 
      (let rec t_3_2 = ((mappend_lh__d1_d0 t_3_1) ys_3_1) in
        (let rec h_3_2 = h_3_1 in
          (fun ys_3_2 -> 
            (let rec t_3_3 = (t_3_2 ys_3_2) in
              (let rec h_3_3 = h_3_2 in
                (fun ys_3_3 -> 
                  (let rec t_3_4 = (t_3_3 ys_3_3) in
                    (let rec h_3_4 = h_3_3 in
                      (fun ys_3_4 -> 
                        (let rec t_3_5 = (t_3_4 ys_3_4) in
                          (let rec h_3_5 = h_3_4 in
                            (fun ys_3_5 -> 
                              (`LH_C(h_3_5, (t_3_5 ys_3_5)))))))))))))))
    | `LH_N -> 
      ys_3_1);;
let rec concat_lh__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_1_2_4, t_1_2_4) -> 
      ((mappend_lh__d1_d0 h_1_2_4) (concat_lh__d1 t_1_2_4))
    | `LH_N -> 
      (fun ys_1_3_5 -> 
        ys_1_3_5));;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d1 (_lh_unlines_arg1_0 (fun l_0 -> 
    ((mappend_lh__d9 l_0) (`LH_C('|', (`LH_N)))))));;
let rec showBoard_lh__d1 _lh_showBoard_arg1_0 =
  (let rec showRank_0 = (fun r_0 -> 
    (let rec consFile_0 = (fun f_1_5 s_0 -> 
      (let rec _lh_matchIdent_4_6 = ((pieceAt_lh__d1 _lh_showBoard_arg1_0) (`LH_P2(f_1_5, r_0))) in
        (match _lh_matchIdent_4_6 with
          | `Nothing -> 
            ((let rec t_5_6 = (let rec t_5_7 = (fun ys_6_5 -> 
              ys_6_5) in
              (let rec h_5_6 = '-' in
                (fun ys_6_6 -> 
                  (`LH_C(h_5_6, (t_5_7 ys_6_6)))))) in
              (let rec h_5_7 = ' ' in
                (fun ys_6_7 -> 
                  (`LH_C(h_5_7, (t_5_6 ys_6_7)))))) s_0)
          | `Just(_lh_showBoard_Just_0_0) -> 
            (`LH_C(' ', (`LH_C((pieceToChar_lh__d1 _lh_showBoard_Just_0_0), s_0))))
          | _ -> 
            (failwith "error")))) in
      ((((enumFromTo_lh__d1 1) 8) consFile_0) (`LH_N)))) in
    (unlines_lh__d1 ((reverse_lh__d1 ((enumFromTo_lh__d2 1) 8)) showRank_0)));;
let rec mappend_lh__d4 xs_1_7 ys_6_8 =
  (match xs_1_7 with
    | `LH_C(h_6_1, t_6_1) -> 
      (let rec t_6_2 = ((mappend_lh__d4 t_6_1) ys_6_8) in
        (let rec h_6_2 = h_6_1 in
          (fun ys_6_9 -> 
            (let rec t_6_3 = (t_6_2 ys_6_9) in
              (let rec h_6_3 = h_6_2 in
                (fun ys_7_0 -> 
                  (`LH_C(h_6_3, (t_6_3 ys_7_0)))))))))
    | `LH_N -> 
      ys_6_8);;
let rec dropWhile_lh__d1 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh__d1 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec break_lh__d2 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_2_9 = ((break_lh__d2 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_2_9 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec words_lh__d1 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_2_6 = ((dropWhile_lh__d1 (fun x_3 -> 
    (x_3 = ' '))) _lh_words_arg1_0) in
    (match _lh_matchIdent_2_6 with
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (let rec _lh_matchIdent_2_7 = ((break_lh__d2 (fun x_4 -> 
          (x_4 = ' '))) _lh_matchIdent_2_6) in
          (match _lh_matchIdent_2_7 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh__d1 _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))));;
let rec mappend_lh__d1_d6 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d1_d6 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec length_lh__d4 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_8_1, t_8_1) -> 
      (1 + (length_lh__d4 t_8_1))
    | `LH_N -> 
      0);;
let rec qpart_lh__d1 _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_arg2_0, (((rqsort_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
qsort_lh__d1 _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_arg3_0))
        | _ -> 
          ((((((qpart_lh__d1 _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d1 _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort_lh__d1 _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_arg2_0, (((qsort_lh__d1 _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart_lh__d1 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart_lh__d1 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d1 _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_arg3_0))
        | _ -> 
          ((((((rqpart_lh__d1 _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"));;
let rec sort_lh__d1 _lh_sort_arg1_0 =
  (((qsort_lh__d1 (fun a_0 b_1 -> 
    (let rec _lh_matchIdent_2_4 = a_0 in
      (match _lh_matchIdent_2_4 with
        | `LH_P2(_lh_sort_LH_P2_0_0, _lh_sort_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_2_5 = b_1 in
            (match _lh_matchIdent_2_5 with
              | `LH_P2(_lh_sort_LH_P2_0_1, _lh_sort_LH_P2_1_1) -> 
                ((length_lh__d4 _lh_sort_LH_P2_0_0) <= (length_lh__d4 _lh_sort_LH_P2_0_1))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_0) (`LH_N));;
let rec sort_lh__d2 _lh_sort_arg1_1 =
  (((qsort_lh__d1 (fun a_7 b_5 -> 
    (let rec _lh_matchIdent_3_2 = a_7 in
      (match _lh_matchIdent_3_2 with
        | `LH_P2(_lh_sort_LH_P2_0_2, _lh_sort_LH_P2_1_2) -> 
          (let rec _lh_matchIdent_3_3 = b_5 in
            (match _lh_matchIdent_3_3 with
              | `LH_P2(_lh_sort_LH_P2_0_3, _lh_sort_LH_P2_1_3) -> 
                ((length_lh__d4 _lh_sort_LH_P2_0_2) <= (length_lh__d4 _lh_sort_LH_P2_0_3))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_1) (`LH_N));;
let rec mappend_lh__d1_d3 xs_2_0 ys_7_3 =
  (match xs_2_0 with
    | `LH_C(h_6_7, t_6_7) -> 
      (let rec t_6_8 = ((mappend_lh__d1_d3 t_6_7) ys_7_3) in
        (let rec h_6_8 = h_6_7 in
          (fun ys_7_4 -> 
            (`LH_C(h_6_8, (t_6_8 ys_7_4))))))
    | `LH_N -> 
      ys_7_3);;
let rec mappend_lh__d3_d4 xs_2_4 ys_9_3 =
  (match xs_2_4 with
    | `LH_C(h_9_0, t_9_0) -> 
      (`LH_C(h_9_0, ((mappend_lh__d3_d4 t_9_0) ys_9_3)))
    | `LH_N -> 
      ys_9_3);;
let rec showPiece_lh__d1 _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_0, _lh_showPiece_LH_P2_1_0) -> 
      (`LH_C((kindToChar_lh__d2 _lh_showPiece_LH_P2_1_0), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showSquare_lh__d1 _lh_showSquare_arg1_0 _lh_showSquare_arg2_0 =
  (match _lh_showSquare_arg2_0 with
    | `LH_P2(_lh_showSquare_LH_P2_0_0, _lh_showSquare_LH_P2_1_0) -> 
      ((mappend_lh__d3_d4 (if ((_lh_showSquare_LH_P2_0_0 - 1) < 0) then
        (failwith "error")
      else
        ((let rec t_1_2_9 = (let rec t_1_3_0 = (let rec t_1_3_1 = (let rec t_1_3_2 = (let rec t_1_3_3 = (let rec t_1_3_4 = (let rec t_1_3_5 = (let rec t_1_3_6 = (fun n_4 -> 
          (failwith "error")) in
          (let rec h_1_2_9 = (`LH_C('K', (`LH_C('R', (`LH_N))))) in
            (fun n_5 -> 
              (if (n_5 = 0) then
                h_1_2_9
              else
                (if ((n_5 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_6 (n_5 - 1))))))) in
          (let rec h_1_3_0 = (`LH_C('K', (`LH_C('N', (`LH_N))))) in
            (fun n_6 -> 
              (if (n_6 = 0) then
                h_1_3_0
              else
                (if ((n_6 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_5 (n_6 - 1))))))) in
          (let rec h_1_3_1 = (`LH_C('K', (`LH_C('B', (`LH_N))))) in
            (fun n_7 -> 
              (if (n_7 = 0) then
                h_1_3_1
              else
                (if ((n_7 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_4 (n_7 - 1))))))) in
          (let rec h_1_3_2 = (`LH_C('K', (`LH_N))) in
            (fun n_8 -> 
              (if (n_8 = 0) then
                h_1_3_2
              else
                (if ((n_8 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_3 (n_8 - 1))))))) in
          (let rec h_1_3_3 = (`LH_C('Q', (`LH_N))) in
            (fun n_9 -> 
              (if (n_9 = 0) then
                h_1_3_3
              else
                (if ((n_9 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_2 (n_9 - 1))))))) in
          (let rec h_1_3_4 = (`LH_C('Q', (`LH_C('B', (`LH_N))))) in
            (fun n_1_0 -> 
              (if (n_1_0 = 0) then
                h_1_3_4
              else
                (if ((n_1_0 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_1 (n_1_0 - 1))))))) in
          (let rec h_1_3_5 = (`LH_C('Q', (`LH_C('N', (`LH_N))))) in
            (fun n_1_1 -> 
              (if (n_1_1 = 0) then
                h_1_3_5
              else
                (if ((n_1_1 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_3_0 (n_1_1 - 1))))))) in
          (let rec h_1_3_6 = (`LH_C('Q', (`LH_C('R', (`LH_N))))) in
            (fun n_1_2 -> 
              (if (n_1_2 = 0) then
                h_1_3_6
              else
                (if ((n_1_2 - 1) < 0) then
                  (failwith "error")
                else
                  (t_1_2_9 (n_1_2 - 1))))))) (_lh_showSquare_LH_P2_0_0 - 1)))) (string_of_int (let rec _lh_matchIdent_8_0 = _lh_showSquare_arg1_0 in
        (match _lh_matchIdent_8_0 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_0)
          | `White -> 
            _lh_showSquare_LH_P2_1_0
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec maybe_lh__d4 _lh_maybe_arg1_5 _lh_maybe_arg2_5 _lh_maybe_arg3_3 =
  (match _lh_maybe_arg3_3 with
    | `Nothing -> 
      _lh_maybe_arg1_5
    | `Just(_lh_maybe_Just_0_3) -> 
      (_lh_maybe_arg2_5 _lh_maybe_Just_0_3)
    | _ -> 
      (failwith "error"));;
let rec showMove_lh__d1 _lh_showMove_arg1_0 _lh_showMove_arg2_0 =
  (match _lh_showMove_arg2_0 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_0, _lh_showMove_MoveInFull_1_0, _lh_showMove_MoveInFull_2_0) -> 
      (match _lh_showMove_MoveInFull_0_0 with
        | `LH_P2(_lh_showMove_LH_P2_0_0, _lh_showMove_LH_P2_1_0) -> 
          (match _lh_showMove_MoveInFull_2_0 with
            | `Move(_lh_showMove_Move_0_0, _lh_showMove_Move_1_0, _lh_showMove_Move_2_0) -> 
              (let rec capt_0 = (_lh_showMove_Move_1_0 <> (`Nothing)) in
                (let rec prom_0 = (_lh_showMove_Move_2_0 <> (`Nothing)) in
                  ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (if _lh_showMove_arg1_0 then
                    ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (showPiece_lh__d1 (`LH_P2(_lh_showMove_LH_P2_0_0, _lh_showMove_LH_P2_1_0)))) (if ((_lh_showMove_LH_P2_1_0 = (`King)) || ((_lh_showMove_LH_P2_1_0 = (`Pawn)) && (not (capt_0 || prom_0)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare_lh__d1 _lh_showMove_LH_P2_0_0) _lh_showMove_MoveInFull_1_0))
                  else
                    (`LH_N))) (((maybe_lh__d4 (`LH_C('-', (`LH_N)))) (fun cp_0 -> 
                    ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (`LH_C('x', (`LH_N)))) (showPiece_lh__d1 cp_0))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_0))) ((showSquare_lh__d1 _lh_showMove_LH_P2_0_0) _lh_showMove_Move_0_0))) (((maybe_lh__d4 (`LH_N)) (fun pp_0 -> 
                    ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (`LH_C('(', (`LH_N)))) (showPiece_lh__d1 pp_0))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec showMovesAfter_lh__d1 _lh_showMovesAfter_arg1_0 _lh_showMovesAfter_arg2_0 =
  (match _lh_showMovesAfter_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_showMovesAfter_arg1_0 with
        | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_0, _lh_showMovesAfter_MoveInFull_1_0, _lh_showMovesAfter_MoveInFull_2_0) -> 
          (match _lh_showMovesAfter_arg2_0 with
            | `LH_C(_lh_showMovesAfter_LH_C_0_0, _lh_showMovesAfter_LH_C_1_0) -> 
              (match _lh_showMovesAfter_LH_C_0_0 with
                | `MoveInFull(_lh_showMovesAfter_MoveInFull_0_1, _lh_showMovesAfter_MoveInFull_1_1, _lh_showMovesAfter_MoveInFull_2_1) -> 
                  ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove_lh__d1 ((_lh_showMovesAfter_MoveInFull_0_1 <> _lh_showMovesAfter_MoveInFull_0_0) || (_lh_showMovesAfter_MoveInFull_1_1 <> _lh_showMovesAfter_MoveInFull_1_0))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1, _lh_showMovesAfter_MoveInFull_1_1, _lh_showMovesAfter_MoveInFull_2_1))))) ((showMovesAfter_lh__d1 (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1, _lh_showMovesAfter_MoveInFull_1_1, _lh_showMovesAfter_MoveInFull_2_1))) _lh_showMovesAfter_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")));;
let rec showMoveInFull_lh__d1 _lh_showMoveInFull_arg1_0 =
  ((showMove_lh__d1 true) _lh_showMoveInFull_arg1_0);;
let rec showMoves_lh__d3 _lh_showMoves_arg1_1 =
  (match _lh_showMoves_arg1_1 with
    | `LH_C(_lh_showMoves_LH_C_0_1, _lh_showMoves_LH_C_1_1) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_1)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_1) _lh_showMoves_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d3 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec length_lh__d3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_8_4, t_8_4) -> 
      (1 + (length_lh__d3 t_8_4))
    | `LH_N -> 
      0);;
let rec mappend_lh__d2_d6 xs_3_1 ys_1_3_6 =
  (match xs_3_1 with
    | `LH_C(h_1_2_5, t_1_2_5) -> 
      (let rec t_1_2_6 = ((mappend_lh__d2_d6 t_1_2_5) ys_1_3_6) in
        (let rec h_1_2_6 = h_1_2_5 in
          (fun ys_1_3_7 -> 
            (`LH_C(h_1_2_6, (t_1_2_6 ys_1_3_7))))))
    | `LH_N -> 
      ys_1_3_6);;
let rec mappend_lh__d3_d0 xs_3_3 ys_1_4_0 =
  (match xs_3_3 with
    | `LH_C(h_1_2_8, t_1_2_8) -> 
      (`LH_C(h_1_2_8, ((mappend_lh__d3_d0 t_1_2_8) ys_1_4_0)))
    | `LH_N -> 
      ys_1_4_0);;
let rec mappend_lh__d2_d7 xs_3_5 ys_1_4_3 =
  (match xs_3_5 with
    | `LH_C(h_1_4_0, t_1_4_0) -> 
      (let rec t_1_4_1 = ((mappend_lh__d2_d7 t_1_4_0) ys_1_4_3) in
        (let rec h_1_4_1 = h_1_4_0 in
          (fun ys_1_4_4 -> 
            (`LH_C(h_1_4_1, (t_1_4_1 ys_1_4_4))))))
    | `LH_N -> 
      ys_1_4_3);;
let rec tab_lh__d2 _lh_tab_arg1_0 =
  (if (_lh_tab_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab_lh__d2 (_lh_tab_arg1_0 - 1)))));;
let rec length_lh__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_8_2, t_8_2) -> 
      (1 + (length_lh__d1 t_8_2))
    | `LH_N -> 
      0);;
let rec showMoves_lh__d4 _lh_showMoves_arg1_0 =
  (match _lh_showMoves_arg1_0 with
    | `LH_C(_lh_showMoves_LH_C_0_0, _lh_showMoves_LH_C_1_0) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_0)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_0) _lh_showMoves_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3_d3 xs_1_0 ys_3_8 =
  (match xs_1_0 with
    | `LH_C(h_3_6, t_3_6) -> 
      (`LH_C(h_3_6, ((mappend_lh__d3_d3 t_3_6) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend_lh__d3_d1 xs_2_7 ys_9_9 =
  (match xs_2_7 with
    | `LH_C(h_9_3, t_9_3) -> 
      (let rec t_9_4 = ((mappend_lh__d3_d1 t_9_3) ys_9_9) in
        (let rec h_9_4 = h_9_3 in
          (fun ys_1_0_0 -> 
            (`LH_C(h_9_4, (t_9_4 ys_1_0_0))))))
    | `LH_N -> 
      ys_9_9);;
let rec showMoves_lh__d1 _lh_showMoves_arg1_3 =
  (match _lh_showMoves_arg1_3 with
    | `LH_C(_lh_showMoves_LH_C_0_3, _lh_showMoves_LH_C_1_3) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_3)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_3) _lh_showMoves_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d4 xs_1_4 ys_4_3 =
  (match xs_1_4 with
    | `LH_C(h_4_0, t_4_0) -> 
      (let rec t_4_1 = ((mappend_lh__d1_d4 t_4_0) ys_4_3) in
        (let rec h_4_1 = h_4_0 in
          (fun ys_4_4 -> 
            (`LH_C(h_4_1, (t_4_1 ys_4_4))))))
    | `LH_N -> 
      ys_4_3);;
let rec showMoves_lh__d2 _lh_showMoves_arg1_2 =
  (match _lh_showMoves_arg1_2 with
    | `LH_C(_lh_showMoves_LH_C_0_2, _lh_showMoves_LH_C_1_2) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_2)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_2) _lh_showMoves_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d3 xs_1_1 ys_3_9 =
  (match xs_1_1 with
    | `LH_C(h_3_7, t_3_7) -> 
      (let rec t_3_8 = ((mappend_lh__d2_d3 t_3_7) ys_3_9) in
        (let rec h_3_8 = h_3_7 in
          (fun ys_4_0 -> 
            (`LH_C(h_3_8, (t_3_8 ys_4_0))))))
    | `LH_N -> 
      ys_3_9);;
let rec null_lh__d2 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec length_lh__d2 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_1_4_2, t_1_4_2) -> 
      (1 + (length_lh__d2 t_1_4_2))
    | `LH_N -> 
      0);;
let rec mappend_lh__d2_d2 xs_3_4 ys_1_4_2 =
  (match xs_3_4 with
    | `LH_C(h_1_3_9, t_1_3_9) -> 
      (`LH_C(h_1_3_9, ((mappend_lh__d2_d2 t_1_3_9) ys_1_4_2)))
    | `LH_N -> 
      ys_1_4_2);;
let rec tab_lh__d1 _lh_tab_arg1_1 _lh_popOutId_0_1 =
  (if (_lh_tab_arg1_1 <= 0) then
    _lh_popOutId_0_1
  else
    (fun ys_1_4_1 -> 
      (let rec t_1_3_7 = (tab_lh__d1 (_lh_tab_arg1_1 - 1)) in
        (let rec h_1_3_7 = ' ' in
          (let rec t_1_3_8 = (t_1_3_7 _lh_popOutId_0_1) in
            (let rec h_1_3_8 = h_1_3_7 in
              (`LH_C(h_1_3_8, (t_1_3_8 ys_1_4_1)))))))));;
let rec sort_lh__d3 _lh_sort_arg1_2 =
  (((qsort_lh__d1 (fun a_1_2 b_9 -> 
    (let rec _lh_matchIdent_6_8 = a_1_2 in
      (match _lh_matchIdent_6_8 with
        | `LH_P2(_lh_sort_LH_P2_0_4, _lh_sort_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_6_9 = b_9 in
            (match _lh_matchIdent_6_9 with
              | `LH_P2(_lh_sort_LH_P2_0_5, _lh_sort_LH_P2_1_5) -> 
                ((length_lh__d4 _lh_sort_LH_P2_0_4) <= (length_lh__d4 _lh_sort_LH_P2_0_5))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_2) (`LH_N));;
let rec showReplies_lh__d1 _lh_showReplies_arg1_1 _lh_showReplies_arg2_1 =
  (match _lh_showReplies_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_1, _lh_showReplies_LH_C_1_1) -> 
      (match _lh_showReplies_LH_C_0_1 with
        | `LH_P2(_lh_showReplies_LH_P2_0_1, _lh_showReplies_LH_P2_1_1) -> 
          ((mappend_lh__d2_d2 (((mappend_lh__d2_d3 (((tab_lh__d1 _lh_showReplies_arg2_1) (let rec t_8_5 = (let rec t_8_6 = (let rec t_8_7 = (fun ys_8_6 -> 
            ys_8_6) in
            (let rec h_8_5 = ' ' in
              (fun ys_8_7 -> 
                (`LH_C(h_8_5, (t_8_7 ys_8_7)))))) in
            (let rec h_8_6 = 'f' in
              (fun ys_8_8 -> 
                (`LH_C(h_8_6, (t_8_6 ys_8_8)))))) in
            (let rec h_8_7 = 'i' in
              (fun ys_8_9 -> 
                (`LH_C(h_8_7, (t_8_5 ys_8_9))))))) (if ((null_lh__d2 _lh_showReplies_LH_C_1_1) && ((length_lh__d2 _lh_showReplies_LH_P2_0_1) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh__d2 _lh_showReplies_LH_P2_0_1)))) (let rec t_8_8 = (let rec t_8_9 = (fun ys_9_0 -> 
            ys_9_0) in
            (let rec h_8_8 = ' ' in
              (fun ys_9_1 -> 
                (`LH_C(h_8_8, (t_8_9 ys_9_1)))))) in
            (let rec h_8_9 = ';' in
              (fun ys_9_2 -> 
                (`LH_C(h_8_9, (t_8_8 ys_9_2))))))) ((showSoln_lh__d1 _lh_showReplies_LH_P2_1_1) (_lh_showReplies_arg2_1 + 1)))) ((showReplies_lh__d1 _lh_showReplies_LH_C_1_1) _lh_showReplies_arg2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showReplies_lh__d2 _lh_showReplies_arg1_0 _lh_showReplies_arg2_0 =
  (match _lh_showReplies_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_0, _lh_showReplies_LH_C_1_0) -> 
      (match _lh_showReplies_LH_C_0_0 with
        | `LH_P2(_lh_showReplies_LH_P2_0_0, _lh_showReplies_LH_P2_1_0) -> 
          ((mappend_lh__d3_d0 (((mappend_lh__d2_d7 (((mappend_lh__d2_d6 (tab_lh__d2 _lh_showReplies_arg2_0)) (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (fun ys_7_5 -> 
            ys_7_5) in
            (let rec h_6_9 = ' ' in
              (fun ys_7_6 -> 
                (`LH_C(h_6_9, (t_7_1 ys_7_6)))))) in
            (let rec h_7_0 = 'f' in
              (fun ys_7_7 -> 
                (`LH_C(h_7_0, (t_7_0 ys_7_7)))))) in
            (let rec h_7_1 = 'i' in
              (fun ys_7_8 -> 
                (`LH_C(h_7_1, (t_6_9 ys_7_8))))))) (if ((null_lh__d3 _lh_showReplies_LH_C_1_0) && ((length_lh__d3 _lh_showReplies_LH_P2_0_0) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh__d3 _lh_showReplies_LH_P2_0_0)))) (let rec t_7_2 = (let rec t_7_3 = (fun ys_7_9 -> 
            ys_7_9) in
            (let rec h_7_2 = ' ' in
              (fun ys_8_0 -> 
                (`LH_C(h_7_2, (t_7_3 ys_8_0)))))) in
            (let rec h_7_3 = ';' in
              (fun ys_8_1 -> 
                (`LH_C(h_7_3, (t_7_2 ys_8_1))))))) ((showSoln_lh__d1 _lh_showReplies_LH_P2_1_0) (_lh_showReplies_arg2_0 + 1)))) ((showReplies_lh__d2 _lh_showReplies_LH_C_1_0) _lh_showReplies_arg2_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showReplies_lh__d3 _lh_showReplies_arg1_2 _lh_showReplies_arg2_2 =
  (match _lh_showReplies_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_2, _lh_showReplies_LH_C_1_2) -> 
      (match _lh_showReplies_LH_C_0_2 with
        | `LH_P2(_lh_showReplies_LH_P2_0_2, _lh_showReplies_LH_P2_1_2) -> 
          ((mappend_lh__d3_d4 (((mappend_lh__d3_d1 ((mappend_lh__d3_d4 ((mappend_lh__d3_d3 (tab_lh__d2 _lh_showReplies_arg2_2)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null_lh__d3 _lh_showReplies_LH_C_1_2) && ((length_lh__d4 _lh_showReplies_LH_P2_0_2) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh__d4 _lh_showReplies_LH_P2_0_2)))) (let rec t_9_1 = (let rec t_9_2 = (fun ys_9_4 -> 
            ys_9_4) in
            (let rec h_9_1 = ' ' in
              (fun ys_9_5 -> 
                (`LH_C(h_9_1, (t_9_2 ys_9_5)))))) in
            (let rec h_9_2 = ';' in
              (fun ys_9_6 -> 
                (`LH_C(h_9_2, (t_9_1 ys_9_6))))))) ((showSoln_lh__d1 _lh_showReplies_LH_P2_1_2) (_lh_showReplies_arg2_2 + 1)))) ((showReplies_lh__d3 _lh_showReplies_LH_C_1_2) _lh_showReplies_arg2_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showSoln_lh__d1 _lh_showSoln_arg1_2 _lh_showSoln_arg2_2 =
  (match _lh_showSoln_arg1_2 with
    | `Soln(_lh_showSoln_Soln_0_2, _lh_showSoln_Soln_1_2) -> 
      ((mappend_lh__d1_d6 (((mappend_lh__d1_d3 (string_of_int _lh_showSoln_arg2_2)) (let rec t_4_4 = (let rec t_4_5 = (fun ys_4_6 -> 
        ys_4_6) in
        (let rec h_4_4 = ' ' in
          (fun ys_4_7 -> 
            (`LH_C(h_4_4, (t_4_5 ys_4_7)))))) in
        (let rec h_4_5 = '.' in
          (fun ys_4_8 -> 
            (`LH_C(h_4_5, (t_4_4 ys_4_8))))))) (showMoveInFull_lh__d1 _lh_showSoln_Soln_0_2))) (let rec _lh_matchIdent_4_0 = _lh_showSoln_Soln_1_2 in
        (match _lh_matchIdent_4_0 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_2, _lh_showSoln_LH_C_1_2) -> 
            (match _lh_showSoln_LH_C_0_2 with
              | `LH_P2(_lh_showSoln_LH_P2_0_2, _lh_showSoln_LH_P2_1_2) -> 
                (match _lh_showSoln_LH_C_1_2 with
                  | `LH_N -> 
                    (((mappend_lh__d1_d4 ((let rec t_4_6 = (let rec t_4_7 = (fun ys_4_9 -> 
                      ys_4_9) in
                      (let rec h_4_6 = ' ' in
                        (fun ys_5_0 -> 
                          (`LH_C(h_4_6, (t_4_7 ys_5_0)))))) in
                      (let rec h_4_7 = ',' in
                        (fun ys_5_1 -> 
                          (`LH_C(h_4_7, (t_4_6 ys_5_1)))))) (if ((length_lh__d1 _lh_showSoln_LH_P2_0_2) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves_lh__d1 _lh_showSoln_LH_P2_0_2)))) (let rec t_4_8 = (let rec t_4_9 = (fun ys_5_2 -> 
                      ys_5_2) in
                      (let rec h_4_8 = ' ' in
                        (fun ys_5_3 -> 
                          (`LH_C(h_4_8, (t_4_9 ys_5_3)))))) in
                      (let rec h_4_9 = ';' in
                        (fun ys_5_4 -> 
                          (`LH_C(h_4_9, (t_4_8 ys_5_4))))))) ((showSoln_lh__d1 _lh_showSoln_LH_P2_1_2) (_lh_showSoln_arg2_2 + 1)))
                  | _ -> 
                    ((let rec t_5_0 = (let rec t_5_1 = (fun ys_5_5 -> 
                      ys_5_5) in
                      (let rec h_5_0 = '|' in
                        (fun ys_5_6 -> 
                          (`LH_C(h_5_0, (t_5_1 ys_5_6)))))) in
                      (let rec h_5_1 = ',' in
                        (fun ys_5_7 -> 
                          (`LH_C(h_5_1, (t_5_0 ys_5_7)))))) ((showReplies_lh__d2 (sort_lh__d3 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))
              | _ -> 
                ((let rec t_5_2 = (let rec t_5_3 = (fun ys_5_8 -> 
                  ys_5_8) in
                  (let rec h_5_2 = '|' in
                    (fun ys_5_9 -> 
                      (`LH_C(h_5_2, (t_5_3 ys_5_9)))))) in
                  (let rec h_5_3 = ',' in
                    (fun ys_6_0 -> 
                      (`LH_C(h_5_3, (t_5_2 ys_6_0)))))) ((showReplies_lh__d3 (sort_lh__d2 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))
          | _ -> 
            ((let rec t_5_4 = (let rec t_5_5 = (fun ys_6_1 -> 
              ys_6_1) in
              (let rec h_5_4 = '|' in
                (fun ys_6_2 -> 
                  (`LH_C(h_5_4, (t_5_5 ys_6_2)))))) in
              (let rec h_5_5 = ',' in
                (fun ys_6_3 -> 
                  (`LH_C(h_5_5, (t_5_4 ys_6_3)))))) ((showReplies_lh__d1 (sort_lh__d1 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))))
    | _ -> 
      (failwith "error"));;
let rec showResult_lh__d1 _lh_showResult_arg1_0 =
  (match _lh_showResult_arg1_0 with
    | `Nothing -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('!', (`LH_N)))))))))))))))))))))))))
    | `Just(_lh_showResult_Just_0_0) -> 
      ((showSoln_lh__d1 (_lh_showResult_Just_0_0 99)) 1)
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d5 f_1 i_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      ((f_1 h_3) (((foldr_lh__d5 f_1) i_1) t_3))
    | `LH_N -> 
      i_1);;
let rec forcesColoured_lh__d2 _lh_forcesColoured_arg1_2 _lh_forcesColoured_arg2_2 =
  (match _lh_forcesColoured_arg1_2 with
    | `White -> 
      (match _lh_forcesColoured_arg2_2 with
        | `Board(_lh_forcesColoured_Board_0_2, _lh_forcesColoured_Board_1_2) -> 
          _lh_forcesColoured_Board_0_2
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_2 with
        | `Board(_lh_forcesColoured_Board_0_3, _lh_forcesColoured_Board_1_3) -> 
          _lh_forcesColoured_Board_1_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll_lh__d4 _lh_emptyAtAll_arg1_0 _lh_emptyAtAll_arg2_0 =
  (match _lh_emptyAtAll_arg1_0 with
    | `Board(_lh_emptyAtAll_Board_0_0, _lh_emptyAtAll_Board_1_0) -> 
      (let rec emptyAtAllAnd_0 = (fun b_0 ls_0 -> 
        (let rec _lh_matchIdent_1 = ls_0 in
          (match _lh_matchIdent_1 with
            | `LH_N -> 
              b_0
            | `LH_C(_lh_emptyAtAll_LH_C_0_0, _lh_emptyAtAll_LH_C_1_0) -> 
              (match _lh_emptyAtAll_LH_C_0_0 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_0, _lh_emptyAtAll_LH_P2_1_0) -> 
                  ((not (_lh_emptyAtAll_arg2_0 _lh_emptyAtAll_LH_P2_1_0)) && ((emptyAtAllAnd_0 b_0) _lh_emptyAtAll_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_0 ((emptyAtAllAnd_0 true) _lh_emptyAtAll_Board_1_0)) _lh_emptyAtAll_Board_0_0))
    | _ -> 
      (failwith "error"));;
let rec opponent_lh__d5 _lh_opponent_arg1_0 =
  (match _lh_opponent_arg1_0 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec max_lh__d4 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 < _lh_max_arg2_1) then
    _lh_max_arg2_1
  else
    _lh_max_arg1_1);;
let rec any_lh__d1 _lh_any_arg1_0 _lh_any_arg2_0 =
  (match _lh_any_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_0, _lh_any_LH_C_1_0) -> 
      (if (_lh_any_arg1_0 _lh_any_LH_C_0_0) then
        true
      else
        ((any_lh__d1 _lh_any_arg1_0) _lh_any_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kSq_lh__d2 _lh_kSq_arg1_1 =
  (match _lh_kSq_arg1_1 with
    | `LH_C(_lh_kSq_LH_C_0_1, _lh_kSq_LH_C_1_1) -> 
      (match _lh_kSq_LH_C_0_1 with
        | `LH_P2(_lh_kSq_LH_P2_0_1, _lh_kSq_LH_P2_1_1) -> 
          (match _lh_kSq_LH_P2_0_1 with
            | `King -> 
              _lh_kSq_LH_P2_1_1
            | _ -> 
              (kSq_lh__d2 _lh_kSq_LH_C_1_1))
        | _ -> 
          (kSq_lh__d2 _lh_kSq_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec kSq_lh__d1 _lh_kSq_arg1_0 =
  (match _lh_kSq_arg1_0 with
    | `LH_C(_lh_kSq_LH_C_0_0, _lh_kSq_LH_C_1_0) -> 
      (match _lh_kSq_LH_C_0_0 with
        | `LH_P2(_lh_kSq_LH_P2_0_0, _lh_kSq_LH_P2_1_0) -> 
          (match _lh_kSq_LH_P2_0_0 with
            | `King -> 
              _lh_kSq_LH_P2_1_0
            | _ -> 
              (kSq_lh__d1 _lh_kSq_LH_C_1_0))
        | _ -> 
          (kSq_lh__d1 _lh_kSq_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kingSquare_lh__d1 _lh_kingSquare_arg1_0 _lh_kingSquare_arg2_0 =
  (match _lh_kingSquare_arg1_0 with
    | `White -> 
      (match _lh_kingSquare_arg2_0 with
        | `Board(_lh_kingSquare_Board_0_0, _lh_kingSquare_Board_1_0) -> 
          (kSq_lh__d2 _lh_kingSquare_Board_0_0)
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_kingSquare_arg2_0 with
        | `Board(_lh_kingSquare_Board_0_1, _lh_kingSquare_Board_1_1) -> 
          (kSq_lh__d1 _lh_kingSquare_Board_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec min_lh__d4 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec abs_lh__d7 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec forcesColoured_lh__d3 _lh_forcesColoured_arg1_0 _lh_forcesColoured_arg2_0 =
  (match _lh_forcesColoured_arg1_0 with
    | `White -> 
      (match _lh_forcesColoured_arg2_0 with
        | `Board(_lh_forcesColoured_Board_0_0, _lh_forcesColoured_Board_1_0) -> 
          _lh_forcesColoured_Board_0_0
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_0 with
        | `Board(_lh_forcesColoured_Board_0_1, _lh_forcesColoured_Board_1_1) -> 
          _lh_forcesColoured_Board_1_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec kingincheck_lh__d2 _lh_kingincheck_arg1_0 _lh_kingincheck_arg2_0 =
  (let rec givesCheck_0 = (fun kxy_0 -> 
    (let rec _lh_matchIdent_3 = kxy_0 in
      (match _lh_matchIdent_3 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_0, _lh_kingincheck_LH_P2_1_0) -> 
          (match _lh_kingincheck_LH_P2_1_0 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_1, _lh_kingincheck_LH_P2_1_1) -> 
              (let rec kthreat_0 = (fun param_0 -> 
                (let rec xkyk_0 = ((kingSquare_lh__d1 _lh_kingincheck_arg1_0) _lh_kingincheck_arg2_0) in
                  (let rec _lh_matchIdent_4 = xkyk_0 in
                    (match _lh_matchIdent_4 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_2, _lh_kingincheck_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_5 = param_0 in
                          (match _lh_matchIdent_5 with
                            | `King -> 
                              (((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) <= 1) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) <= 1))
                            | `Queen -> 
                              ((kthreat_0 (`Rook)) || (kthreat_0 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_1 = _lh_kingincheck_LH_P2_0_2) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_0 -> 
                                (let rec _lh_matchIdent_6 = xeye_0 in
                                  (match _lh_matchIdent_6 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_3, _lh_kingincheck_LH_P2_1_3) -> 
                                      (((_lh_kingincheck_LH_P2_0_3 = _lh_kingincheck_LH_P2_0_2) && (((min_lh__d4 _lh_kingincheck_LH_P2_1_1) _lh_kingincheck_LH_P2_1_2) < _lh_kingincheck_LH_P2_1_3)) && (_lh_kingincheck_LH_P2_1_3 < ((max_lh__d4 _lh_kingincheck_LH_P2_1_1) _lh_kingincheck_LH_P2_1_2)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_1 = _lh_kingincheck_LH_P2_1_2) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_1 -> 
                                (let rec _lh_matchIdent_7 = xeye_1 in
                                  (match _lh_matchIdent_7 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_4, _lh_kingincheck_LH_P2_1_4) -> 
                                      (((_lh_kingincheck_LH_P2_1_4 = _lh_kingincheck_LH_P2_1_2) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_4)) && (_lh_kingincheck_LH_P2_0_4 < ((max_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_1 + _lh_kingincheck_LH_P2_1_1) = (_lh_kingincheck_LH_P2_0_2 + _lh_kingincheck_LH_P2_1_2)) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_2 -> 
                                (let rec _lh_matchIdent_8 = xeye_2 in
                                  (match _lh_matchIdent_8 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_5, _lh_kingincheck_LH_P2_1_5) -> 
                                      ((((_lh_kingincheck_LH_P2_0_5 + _lh_kingincheck_LH_P2_1_5) = (_lh_kingincheck_LH_P2_0_2 + _lh_kingincheck_LH_P2_1_2)) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_5)) && (_lh_kingincheck_LH_P2_0_5 < ((max_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_1_1) = (_lh_kingincheck_LH_P2_0_2 - _lh_kingincheck_LH_P2_1_2)) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_3 -> 
                                (let rec _lh_matchIdent_9 = xeye_3 in
                                  (match _lh_matchIdent_9 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_6, _lh_kingincheck_LH_P2_1_6) -> 
                                      ((((_lh_kingincheck_LH_P2_0_6 - _lh_kingincheck_LH_P2_1_6) = (_lh_kingincheck_LH_P2_0_2 - _lh_kingincheck_LH_P2_1_2)) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_6)) && (_lh_kingincheck_LH_P2_0_6 < ((max_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 2) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) = 1)) || (((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 1) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) = 2)))
                            | `Pawn -> 
                              (((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 1) && (let rec _lh_matchIdent_1_0 = _lh_kingincheck_arg1_0 in
                                (match _lh_matchIdent_1_0 with
                                  | `Black -> 
                                    (_lh_kingincheck_LH_P2_1_2 = (_lh_kingincheck_LH_P2_1_1 + 1))
                                  | `White -> 
                                    (_lh_kingincheck_LH_P2_1_2 = (_lh_kingincheck_LH_P2_1_1 - 1))
                                  | _ -> 
                                    (failwith "error"))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error"))))) in
                (kthreat_0 _lh_kingincheck_LH_P2_0_0))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    ((any_lh__d1 givesCheck_0) ((forcesColoured_lh__d3 (opponent_lh__d5 _lh_kingincheck_arg1_0)) _lh_kingincheck_arg2_0)));;
let rec maybe_lh__d3 _lh_maybe_arg1_0 _lh_maybe_arg2_0 _lh_maybe_arg3_0 =
  (match _lh_maybe_arg3_0 with
    | `Nothing -> 
      _lh_maybe_arg1_0
    | `Just(_lh_maybe_Just_0_0) -> 
      (_lh_maybe_arg2_0 _lh_maybe_Just_0_0)
    | _ -> 
      (failwith "error"));;
let rec maybe_lh__d2 _lh_maybe_arg1_3 _lh_maybe_arg2_3 _lh_maybe_arg3_1 =
  (match _lh_maybe_arg3_1 with
    | `Nothing -> 
      _lh_maybe_arg1_3
    | `Just(_lh_maybe_Just_0_2) -> 
      (_lh_maybe_arg2_3 _lh_maybe_Just_0_2)
    | _ -> 
      (failwith "error"));;
let rec insertCompact_lh__d1 _lh_insertCompact_arg1_0 _lh_insertCompact_arg2_0 =
  (_lh_insertCompact_arg1_0 _lh_insertCompact_arg2_0);;
let rec opponent_lh__d2 _lh_opponent_arg1_2 =
  (match _lh_opponent_arg1_2 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec max_lh__d3 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 < _lh_max_arg2_0) then
    _lh_max_arg2_0
  else
    _lh_max_arg1_0);;
let rec abs_lh__d5 _lh_abs_arg1_2 =
  (if (_lh_abs_arg1_2 < 0) then
    (0 - _lh_abs_arg1_2)
  else
    _lh_abs_arg1_2);;
let rec emptyAtAll_lh__d1 _lh_emptyAtAll_arg1_1 _lh_emptyAtAll_arg2_1 =
  (match _lh_emptyAtAll_arg1_1 with
    | `Board(_lh_emptyAtAll_Board_0_1, _lh_emptyAtAll_Board_1_1) -> 
      (let rec emptyAtAllAnd_1 = (fun b_4 ls_8 -> 
        (let rec _lh_matchIdent_3_1 = ls_8 in
          (match _lh_matchIdent_3_1 with
            | `LH_N -> 
              b_4
            | `LH_C(_lh_emptyAtAll_LH_C_0_1, _lh_emptyAtAll_LH_C_1_1) -> 
              (match _lh_emptyAtAll_LH_C_0_1 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_1, _lh_emptyAtAll_LH_P2_1_1) -> 
                  ((not (_lh_emptyAtAll_arg2_1 _lh_emptyAtAll_LH_P2_1_1)) && ((emptyAtAllAnd_1 b_4) _lh_emptyAtAll_LH_C_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_1 ((emptyAtAllAnd_1 true) _lh_emptyAtAll_Board_1_1)) _lh_emptyAtAll_Board_0_1))
    | _ -> 
      (failwith "error"));;
let rec abs_lh__d2 _lh_abs_arg1_3 =
  (if (_lh_abs_arg1_3 < 0) then
    (0 - _lh_abs_arg1_3)
  else
    _lh_abs_arg1_3);;
let rec min_lh__d2 _lh_min_arg1_3 _lh_min_arg2_3 =
  (if (_lh_min_arg1_3 < _lh_min_arg2_3) then
    _lh_min_arg1_3
  else
    _lh_min_arg2_3);;
let rec abs_lh__d1 _lh_abs_arg1_6 =
  (if (_lh_abs_arg1_6 < 0) then
    (0 - _lh_abs_arg1_6)
  else
    _lh_abs_arg1_6);;
let rec emptyAtAll_lh__d3 _lh_emptyAtAll_arg1_3 _lh_emptyAtAll_arg2_3 =
  (match _lh_emptyAtAll_arg1_3 with
    | `Board(_lh_emptyAtAll_Board_0_3, _lh_emptyAtAll_Board_1_3) -> 
      (let rec emptyAtAllAnd_3 = (fun b_1_1 ls_2_4 -> 
        (let rec _lh_matchIdent_7_5 = ls_2_4 in
          (match _lh_matchIdent_7_5 with
            | `LH_N -> 
              b_1_1
            | `LH_C(_lh_emptyAtAll_LH_C_0_3, _lh_emptyAtAll_LH_C_1_3) -> 
              (match _lh_emptyAtAll_LH_C_0_3 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_3, _lh_emptyAtAll_LH_P2_1_3) -> 
                  ((not (_lh_emptyAtAll_arg2_3 _lh_emptyAtAll_LH_P2_1_3)) && ((emptyAtAllAnd_3 b_1_1) _lh_emptyAtAll_LH_C_1_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_3 ((emptyAtAllAnd_3 true) _lh_emptyAtAll_Board_1_3)) _lh_emptyAtAll_Board_0_3))
    | _ -> 
      (failwith "error"));;
let rec min_lh__d3 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec abs_lh__d6 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 < 0) then
    (0 - _lh_abs_arg1_1)
  else
    _lh_abs_arg1_1);;
let rec max_lh__d2 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 < _lh_max_arg2_2) then
    _lh_max_arg2_2
  else
    _lh_max_arg1_2);;
let rec emptyAtAll_lh__d2 _lh_emptyAtAll_arg1_2 _lh_emptyAtAll_arg2_2 =
  (match _lh_emptyAtAll_arg1_2 with
    | `Board(_lh_emptyAtAll_Board_0_2, _lh_emptyAtAll_Board_1_2) -> 
      (let rec emptyAtAllAnd_2 = (fun b_6 ls_1_7 -> 
        (let rec _lh_matchIdent_5_0 = ls_1_7 in
          (match _lh_matchIdent_5_0 with
            | `LH_N -> 
              b_6
            | `LH_C(_lh_emptyAtAll_LH_C_0_2, _lh_emptyAtAll_LH_C_1_2) -> 
              (match _lh_emptyAtAll_LH_C_0_2 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_2, _lh_emptyAtAll_LH_P2_1_2) -> 
                  ((not (_lh_emptyAtAll_arg2_2 _lh_emptyAtAll_LH_P2_1_2)) && ((emptyAtAllAnd_2 b_6) _lh_emptyAtAll_LH_C_1_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_2 ((emptyAtAllAnd_2 true) _lh_emptyAtAll_Board_1_2)) _lh_emptyAtAll_Board_0_2))
    | _ -> 
      (failwith "error"));;
let rec abs_lh__d3 _lh_abs_arg1_4 =
  (if (_lh_abs_arg1_4 < 0) then
    (0 - _lh_abs_arg1_4)
  else
    _lh_abs_arg1_4);;
let rec abs_lh__d4 _lh_abs_arg1_5 =
  (if (_lh_abs_arg1_5 < 0) then
    (0 - _lh_abs_arg1_5)
  else
    _lh_abs_arg1_5);;
let rec min_lh__d1 _lh_min_arg1_2 _lh_min_arg2_2 =
  (if (_lh_min_arg1_2 < _lh_min_arg2_2) then
    _lh_min_arg1_2
  else
    _lh_min_arg2_2);;
let rec opponent_lh__d3 _lh_opponent_arg1_4 =
  (match _lh_opponent_arg1_4 with
    | `Black -> 
      (fun _lh_forcesColoured_arg2_3 -> 
        (match _lh_forcesColoured_arg2_3 with
          | `Board(_lh_forcesColoured_Board_0_4, _lh_forcesColoured_Board_1_4) -> 
            _lh_forcesColoured_Board_0_4
          | _ -> 
            (failwith "error")))
    | `White -> 
      (fun _lh_forcesColoured_arg2_4 -> 
        (match _lh_forcesColoured_arg2_4 with
          | `Board(_lh_forcesColoured_Board_0_5, _lh_forcesColoured_Board_1_5) -> 
            _lh_forcesColoured_Board_1_5
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1 _lh_max_arg1_3 _lh_max_arg2_3 =
  (if (_lh_max_arg1_3 < _lh_max_arg2_3) then
    _lh_max_arg2_3
  else
    _lh_max_arg1_3);;
let rec kingincheck_lh__d1 _lh_kingincheck_arg1_1 _lh_kingincheck_arg2_1 =
  (let rec givesCheck_1 = (fun kxy_1 -> 
    (let rec _lh_matchIdent_8_1 = kxy_1 in
      (match _lh_matchIdent_8_1 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_7, _lh_kingincheck_LH_P2_1_7) -> 
          (match _lh_kingincheck_LH_P2_1_7 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_8, _lh_kingincheck_LH_P2_1_8) -> 
              (let rec kthreat_1 = (fun param_2 -> 
                (let rec xkyk_1 = ((kingSquare_lh__d1 _lh_kingincheck_arg1_1) _lh_kingincheck_arg2_1) in
                  (let rec _lh_matchIdent_8_2 = xkyk_1 in
                    (match _lh_matchIdent_8_2 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_9, _lh_kingincheck_LH_P2_1_9) -> 
                        (let rec _lh_matchIdent_8_3 = param_2 in
                          (match _lh_matchIdent_8_3 with
                            | `King -> 
                              (((abs_lh__d2 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) <= 1) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) <= 1))
                            | `Queen -> 
                              ((kthreat_1 (`Rook)) || (kthreat_1 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_8 = _lh_kingincheck_LH_P2_0_9) && ((emptyAtAll_lh__d2 _lh_kingincheck_arg2_1) (fun xeye_4 -> 
                                (let rec _lh_matchIdent_8_4 = xeye_4 in
                                  (match _lh_matchIdent_8_4 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_0, _lh_kingincheck_LH_P2_1_1_0) -> 
                                      (((_lh_kingincheck_LH_P2_0_1_0 = _lh_kingincheck_LH_P2_0_9) && (((min_lh__d1 _lh_kingincheck_LH_P2_1_8) _lh_kingincheck_LH_P2_1_9) < _lh_kingincheck_LH_P2_1_1_0)) && (_lh_kingincheck_LH_P2_1_1_0 < ((max_lh__d4 _lh_kingincheck_LH_P2_1_8) _lh_kingincheck_LH_P2_1_9)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_8 = _lh_kingincheck_LH_P2_1_9) && ((emptyAtAll_lh__d1 _lh_kingincheck_arg2_1) (fun xeye_5 -> 
                                (let rec _lh_matchIdent_8_5 = xeye_5 in
                                  (match _lh_matchIdent_8_5 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_1, _lh_kingincheck_LH_P2_1_1_1) -> 
                                      (((_lh_kingincheck_LH_P2_1_1_1 = _lh_kingincheck_LH_P2_1_9) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_1)) && (_lh_kingincheck_LH_P2_0_1_1 < ((max_lh__d2 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_8 + _lh_kingincheck_LH_P2_1_8) = (_lh_kingincheck_LH_P2_0_9 + _lh_kingincheck_LH_P2_1_9)) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_1) (fun xeye_6 -> 
                                (let rec _lh_matchIdent_8_6 = xeye_6 in
                                  (match _lh_matchIdent_8_6 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_2, _lh_kingincheck_LH_P2_1_1_2) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_2 + _lh_kingincheck_LH_P2_1_1_2) = (_lh_kingincheck_LH_P2_0_9 + _lh_kingincheck_LH_P2_1_9)) && (((min_lh__d3 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_2)) && (_lh_kingincheck_LH_P2_0_1_2 < ((max_lh__d1 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_1_8) = (_lh_kingincheck_LH_P2_0_9 - _lh_kingincheck_LH_P2_1_9)) && ((emptyAtAll_lh__d3 _lh_kingincheck_arg2_1) (fun xeye_7 -> 
                                (let rec _lh_matchIdent_8_7 = xeye_7 in
                                  (match _lh_matchIdent_8_7 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_3, _lh_kingincheck_LH_P2_1_1_3) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_3 - _lh_kingincheck_LH_P2_1_1_3) = (_lh_kingincheck_LH_P2_0_9 - _lh_kingincheck_LH_P2_1_9)) && (((min_lh__d2 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_3)) && (_lh_kingincheck_LH_P2_0_1_3 < ((max_lh__d3 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs_lh__d4 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 2) && ((abs_lh__d5 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) = 1)) || (((abs_lh__d6 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 1) && ((abs_lh__d3 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) = 2)))
                            | `Pawn -> 
                              (((abs_lh__d1 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 1) && (let rec _lh_matchIdent_8_8 = _lh_kingincheck_arg1_1 in
                                (match _lh_matchIdent_8_8 with
                                  | `Black -> 
                                    (_lh_kingincheck_LH_P2_1_9 = (_lh_kingincheck_LH_P2_1_8 + 1))
                                  | `White -> 
                                    (_lh_kingincheck_LH_P2_1_9 = (_lh_kingincheck_LH_P2_1_8 - 1))
                                  | _ -> 
                                    (failwith "error"))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error"))))) in
                (kthreat_1 _lh_kingincheck_LH_P2_0_7))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    ((any_lh__d1 givesCheck_1) ((opponent_lh__d3 _lh_kingincheck_arg1_1) _lh_kingincheck_arg2_1)));;
let rec putPieceAt_lh__d2 _lh_putPieceAt_arg1_0 _lh_putPieceAt_arg2_0 _lh_putPieceAt_arg3_0 =
  (match _lh_putPieceAt_arg2_0 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_0, _lh_putPieceAt_LH_P2_1_0) -> 
      (match _lh_putPieceAt_LH_P2_0_0 with
        | `White -> 
          (match _lh_putPieceAt_arg3_0 with
            | `Board(_lh_putPieceAt_Board_0_0, _lh_putPieceAt_Board_1_0) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_0, _lh_putPieceAt_arg1_0)), _lh_putPieceAt_Board_0_0)), _lh_putPieceAt_Board_1_0))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_0 with
            | `Board(_lh_putPieceAt_Board_0_1, _lh_putPieceAt_Board_1_1) -> 
              (`Board(_lh_putPieceAt_Board_0_1, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_0, _lh_putPieceAt_arg1_0)), _lh_putPieceAt_Board_1_1))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec opponent_lh__d1 _lh_opponent_arg1_3 =
  (match _lh_opponent_arg1_3 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec putPieceAt_lh__d3 _lh_putPieceAt_arg1_2 _lh_putPieceAt_arg2_2 _lh_putPieceAt_arg3_2 =
  (match _lh_putPieceAt_arg2_2 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_2, _lh_putPieceAt_LH_P2_1_2) -> 
      (match _lh_putPieceAt_LH_P2_0_2 with
        | `White -> 
          (match _lh_putPieceAt_arg3_2 with
            | `Board(_lh_putPieceAt_Board_0_4, _lh_putPieceAt_Board_1_4) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_2, _lh_putPieceAt_arg1_2)), _lh_putPieceAt_Board_0_4)), _lh_putPieceAt_Board_1_4))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_2 with
            | `Board(_lh_putPieceAt_Board_0_5, _lh_putPieceAt_Board_1_5) -> 
              (`Board(_lh_putPieceAt_Board_0_5, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_2, _lh_putPieceAt_arg1_2)), _lh_putPieceAt_Board_1_5))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec showSoln_lh__d2 _lh_showSoln_arg1_0 _lh_showSoln_arg2_0 =
  (match _lh_showSoln_arg1_0 with
    | `Soln(_lh_showSoln_Soln_0_0, _lh_showSoln_Soln_1_0) -> 
      ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (string_of_int _lh_showSoln_arg2_0)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull_lh__d1 _lh_showSoln_Soln_0_0))) (let rec _lh_matchIdent_2_3 = _lh_showSoln_Soln_1_0 in
        (match _lh_matchIdent_2_3 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_0, _lh_showSoln_LH_C_1_0) -> 
            (match _lh_showSoln_LH_C_0_0 with
              | `LH_P2(_lh_showSoln_LH_P2_0_0, _lh_showSoln_LH_P2_1_0) -> 
                (match _lh_showSoln_LH_C_1_0 with
                  | `LH_N -> 
                    ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length_lh__d4 _lh_showSoln_LH_P2_0_0) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves_lh__d4 _lh_showSoln_LH_P2_0_0)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d2 _lh_showSoln_LH_P2_1_0) (_lh_showSoln_arg2_0 + 1)))
                  | _ -> 
                    ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))
              | _ -> 
                ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))
          | _ -> 
            ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))))
    | _ -> 
      (failwith "error"));;
let rec showSoln_lh__d3 _lh_showSoln_arg1_1 _lh_showSoln_arg2_1 =
  (match _lh_showSoln_arg1_1 with
    | `Soln(_lh_showSoln_Soln_0_1, _lh_showSoln_Soln_1_1) -> 
      ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (string_of_int _lh_showSoln_arg2_1)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull_lh__d1 _lh_showSoln_Soln_0_1))) (let rec _lh_matchIdent_3_8 = _lh_showSoln_Soln_1_1 in
        (match _lh_matchIdent_3_8 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_1, _lh_showSoln_LH_C_1_1) -> 
            (match _lh_showSoln_LH_C_0_1 with
              | `LH_P2(_lh_showSoln_LH_P2_0_1, _lh_showSoln_LH_P2_1_1) -> 
                (match _lh_showSoln_LH_C_1_1 with
                  | `LH_N -> 
                    ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length_lh__d4 _lh_showSoln_LH_P2_0_1) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves_lh__d4 _lh_showSoln_LH_P2_0_1)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d3 _lh_showSoln_LH_P2_1_1) (_lh_showSoln_arg2_1 + 1)))
                  | _ -> 
                    ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))
              | _ -> 
                ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))
          | _ -> 
            ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))))
    | _ -> 
      (failwith "error"));;
let rec opponent_lh__d4 _lh_opponent_arg1_1 =
  (match _lh_opponent_arg1_1 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d8 f_0 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((f_0 h_2) (((foldr_lh__d8 f_0) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec onboard_lh__d1 _lh_onboard_arg1_0 =
  (match _lh_onboard_arg1_0 with
    | `LH_P2(_lh_onboard_LH_P2_0_0, _lh_onboard_LH_P2_1_0) -> 
      ((((1 <= _lh_onboard_LH_P2_0_0) && (_lh_onboard_LH_P2_0_0 <= 8)) && (1 <= _lh_onboard_LH_P2_1_0)) && (_lh_onboard_LH_P2_1_0 <= 8))
    | _ -> 
      (failwith "error"));;
let rec colourOf_lh__d1 _lh_colourOf_arg1_0 =
  (match _lh_colourOf_arg1_0 with
    | `LH_P2(_lh_colourOf_LH_P2_0_0, _lh_colourOf_LH_P2_1_0) -> 
      _lh_colourOf_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec kingmoves_lh__d1 _lh_kingmoves_arg1_0 _lh_kingmoves_arg2_0 _lh_kingmoves_arg3_0 =
  (match _lh_kingmoves_arg2_0 with
    | `LH_P2(_lh_kingmoves_LH_P2_0_0, _lh_kingmoves_LH_P2_1_0) -> 
      ((((let rec _lh_sift_LH_C_1_0 = (let rec _lh_sift_LH_C_1_1 = (let rec _lh_sift_LH_C_1_2 = (let rec _lh_sift_LH_C_1_3 = (let rec _lh_sift_LH_C_1_4 = (let rec _lh_sift_LH_C_1_5 = (let rec _lh_sift_LH_C_1_6 = (let rec _lh_sift_LH_C_1_7 = (fun _lh_sift_arg3_0 _lh_sift_arg1_0 _lh_sift_arg2_0 -> 
        _lh_sift_arg3_0) in
        (let rec _lh_sift_LH_C_0_0 = (`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), (_lh_kingmoves_LH_P2_1_0 - 1))) in
          (fun _lh_sift_arg3_1 _lh_sift_arg1_1 _lh_sift_arg2_1 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_0) then
              (let rec _lh_matchIdent_1_5 = ((pieceAt_lh__d1 _lh_sift_arg2_1) _lh_sift_LH_C_0_0) in
                (match _lh_matchIdent_1_5 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_7 (`LH_C((`Move(_lh_sift_LH_C_0_0, (`Nothing), (`Nothing))), _lh_sift_arg3_1))) _lh_sift_arg1_1) _lh_sift_arg2_1)
                  | `Just(_lh_sift_Just_0_0) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_0) = _lh_sift_arg1_1) then
                      (((_lh_sift_LH_C_1_7 _lh_sift_arg3_1) _lh_sift_arg1_1) _lh_sift_arg2_1)
                    else
                      (((_lh_sift_LH_C_1_7 (`LH_C((`Move(_lh_sift_LH_C_0_0, (`Just(_lh_sift_Just_0_0)), (`Nothing))), _lh_sift_arg3_1))) _lh_sift_arg1_1) _lh_sift_arg2_1))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_7 _lh_sift_arg3_1) _lh_sift_arg1_1) _lh_sift_arg2_1))))) in
        (let rec _lh_sift_LH_C_0_1 = (`LH_P2(_lh_kingmoves_LH_P2_0_0, (_lh_kingmoves_LH_P2_1_0 - 1))) in
          (fun _lh_sift_arg3_2 _lh_sift_arg1_2 _lh_sift_arg2_2 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1) then
              (let rec _lh_matchIdent_1_6 = ((pieceAt_lh__d1 _lh_sift_arg2_2) _lh_sift_LH_C_0_1) in
                (match _lh_matchIdent_1_6 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_6 (`LH_C((`Move(_lh_sift_LH_C_0_1, (`Nothing), (`Nothing))), _lh_sift_arg3_2))) _lh_sift_arg1_2) _lh_sift_arg2_2)
                  | `Just(_lh_sift_Just_0_1) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1) = _lh_sift_arg1_2) then
                      (((_lh_sift_LH_C_1_6 _lh_sift_arg3_2) _lh_sift_arg1_2) _lh_sift_arg2_2)
                    else
                      (((_lh_sift_LH_C_1_6 (`LH_C((`Move(_lh_sift_LH_C_0_1, (`Just(_lh_sift_Just_0_1)), (`Nothing))), _lh_sift_arg3_2))) _lh_sift_arg1_2) _lh_sift_arg2_2))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_6 _lh_sift_arg3_2) _lh_sift_arg1_2) _lh_sift_arg2_2))))) in
        (let rec _lh_sift_LH_C_0_2 = (`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), (_lh_kingmoves_LH_P2_1_0 - 1))) in
          (fun _lh_sift_arg3_3 _lh_sift_arg1_3 _lh_sift_arg2_3 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_2) then
              (let rec _lh_matchIdent_1_7 = ((pieceAt_lh__d1 _lh_sift_arg2_3) _lh_sift_LH_C_0_2) in
                (match _lh_matchIdent_1_7 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_5 (`LH_C((`Move(_lh_sift_LH_C_0_2, (`Nothing), (`Nothing))), _lh_sift_arg3_3))) _lh_sift_arg1_3) _lh_sift_arg2_3)
                  | `Just(_lh_sift_Just_0_2) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_2) = _lh_sift_arg1_3) then
                      (((_lh_sift_LH_C_1_5 _lh_sift_arg3_3) _lh_sift_arg1_3) _lh_sift_arg2_3)
                    else
                      (((_lh_sift_LH_C_1_5 (`LH_C((`Move(_lh_sift_LH_C_0_2, (`Just(_lh_sift_Just_0_2)), (`Nothing))), _lh_sift_arg3_3))) _lh_sift_arg1_3) _lh_sift_arg2_3))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_5 _lh_sift_arg3_3) _lh_sift_arg1_3) _lh_sift_arg2_3))))) in
        (let rec _lh_sift_LH_C_0_3 = (`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), _lh_kingmoves_LH_P2_1_0)) in
          (fun _lh_sift_arg3_4 _lh_sift_arg1_4 _lh_sift_arg2_4 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_3) then
              (let rec _lh_matchIdent_1_8 = ((pieceAt_lh__d1 _lh_sift_arg2_4) _lh_sift_LH_C_0_3) in
                (match _lh_matchIdent_1_8 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_4 (`LH_C((`Move(_lh_sift_LH_C_0_3, (`Nothing), (`Nothing))), _lh_sift_arg3_4))) _lh_sift_arg1_4) _lh_sift_arg2_4)
                  | `Just(_lh_sift_Just_0_3) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_3) = _lh_sift_arg1_4) then
                      (((_lh_sift_LH_C_1_4 _lh_sift_arg3_4) _lh_sift_arg1_4) _lh_sift_arg2_4)
                    else
                      (((_lh_sift_LH_C_1_4 (`LH_C((`Move(_lh_sift_LH_C_0_3, (`Just(_lh_sift_Just_0_3)), (`Nothing))), _lh_sift_arg3_4))) _lh_sift_arg1_4) _lh_sift_arg2_4))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_4 _lh_sift_arg3_4) _lh_sift_arg1_4) _lh_sift_arg2_4))))) in
        (let rec _lh_sift_LH_C_0_4 = (`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), _lh_kingmoves_LH_P2_1_0)) in
          (fun _lh_sift_arg3_5 _lh_sift_arg1_5 _lh_sift_arg2_5 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_4) then
              (let rec _lh_matchIdent_1_9 = ((pieceAt_lh__d1 _lh_sift_arg2_5) _lh_sift_LH_C_0_4) in
                (match _lh_matchIdent_1_9 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_3 (`LH_C((`Move(_lh_sift_LH_C_0_4, (`Nothing), (`Nothing))), _lh_sift_arg3_5))) _lh_sift_arg1_5) _lh_sift_arg2_5)
                  | `Just(_lh_sift_Just_0_4) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_4) = _lh_sift_arg1_5) then
                      (((_lh_sift_LH_C_1_3 _lh_sift_arg3_5) _lh_sift_arg1_5) _lh_sift_arg2_5)
                    else
                      (((_lh_sift_LH_C_1_3 (`LH_C((`Move(_lh_sift_LH_C_0_4, (`Just(_lh_sift_Just_0_4)), (`Nothing))), _lh_sift_arg3_5))) _lh_sift_arg1_5) _lh_sift_arg2_5))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_3 _lh_sift_arg3_5) _lh_sift_arg1_5) _lh_sift_arg2_5))))) in
        (let rec _lh_sift_LH_C_0_5 = (`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), (_lh_kingmoves_LH_P2_1_0 + 1))) in
          (fun _lh_sift_arg3_6 _lh_sift_arg1_6 _lh_sift_arg2_6 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_5) then
              (let rec _lh_matchIdent_2_0 = ((pieceAt_lh__d1 _lh_sift_arg2_6) _lh_sift_LH_C_0_5) in
                (match _lh_matchIdent_2_0 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_2 (`LH_C((`Move(_lh_sift_LH_C_0_5, (`Nothing), (`Nothing))), _lh_sift_arg3_6))) _lh_sift_arg1_6) _lh_sift_arg2_6)
                  | `Just(_lh_sift_Just_0_5) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_5) = _lh_sift_arg1_6) then
                      (((_lh_sift_LH_C_1_2 _lh_sift_arg3_6) _lh_sift_arg1_6) _lh_sift_arg2_6)
                    else
                      (((_lh_sift_LH_C_1_2 (`LH_C((`Move(_lh_sift_LH_C_0_5, (`Just(_lh_sift_Just_0_5)), (`Nothing))), _lh_sift_arg3_6))) _lh_sift_arg1_6) _lh_sift_arg2_6))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_2 _lh_sift_arg3_6) _lh_sift_arg1_6) _lh_sift_arg2_6))))) in
        (let rec _lh_sift_LH_C_0_6 = (`LH_P2(_lh_kingmoves_LH_P2_0_0, (_lh_kingmoves_LH_P2_1_0 + 1))) in
          (fun _lh_sift_arg3_7 _lh_sift_arg1_7 _lh_sift_arg2_7 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_6) then
              (let rec _lh_matchIdent_2_1 = ((pieceAt_lh__d1 _lh_sift_arg2_7) _lh_sift_LH_C_0_6) in
                (match _lh_matchIdent_2_1 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1 (`LH_C((`Move(_lh_sift_LH_C_0_6, (`Nothing), (`Nothing))), _lh_sift_arg3_7))) _lh_sift_arg1_7) _lh_sift_arg2_7)
                  | `Just(_lh_sift_Just_0_6) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_6) = _lh_sift_arg1_7) then
                      (((_lh_sift_LH_C_1_1 _lh_sift_arg3_7) _lh_sift_arg1_7) _lh_sift_arg2_7)
                    else
                      (((_lh_sift_LH_C_1_1 (`LH_C((`Move(_lh_sift_LH_C_0_6, (`Just(_lh_sift_Just_0_6)), (`Nothing))), _lh_sift_arg3_7))) _lh_sift_arg1_7) _lh_sift_arg2_7))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1 _lh_sift_arg3_7) _lh_sift_arg1_7) _lh_sift_arg2_7))))) in
        (let rec _lh_sift_LH_C_0_7 = (`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), (_lh_kingmoves_LH_P2_1_0 + 1))) in
          (fun _lh_sift_arg3_8 _lh_sift_arg1_8 _lh_sift_arg2_8 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_7) then
              (let rec _lh_matchIdent_2_2 = ((pieceAt_lh__d1 _lh_sift_arg2_8) _lh_sift_LH_C_0_7) in
                (match _lh_matchIdent_2_2 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_0 (`LH_C((`Move(_lh_sift_LH_C_0_7, (`Nothing), (`Nothing))), _lh_sift_arg3_8))) _lh_sift_arg1_8) _lh_sift_arg2_8)
                  | `Just(_lh_sift_Just_0_7) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_7) = _lh_sift_arg1_8) then
                      (((_lh_sift_LH_C_1_0 _lh_sift_arg3_8) _lh_sift_arg1_8) _lh_sift_arg2_8)
                    else
                      (((_lh_sift_LH_C_1_0 (`LH_C((`Move(_lh_sift_LH_C_0_7, (`Just(_lh_sift_Just_0_7)), (`Nothing))), _lh_sift_arg3_8))) _lh_sift_arg1_8) _lh_sift_arg2_8))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_0 _lh_sift_arg3_8) _lh_sift_arg1_8) _lh_sift_arg2_8))))) (`LH_N)) _lh_kingmoves_arg1_0) _lh_kingmoves_arg3_0)
    | _ -> 
      (failwith "error"));;
let rec moveLine_lh__d1 _lh_moveLine_arg1_0 _lh_moveLine_arg2_0 _lh_moveLine_arg3_0 _lh_moveLine_arg4_0 _lh_moveLine_arg5_0 =
  (let rec ml_0 = (fun sq_0 ms_0 -> 
    (let rec sq'_0 = (_lh_moveLine_arg4_0 sq_0) in
      (if (onboard_lh__d1 sq'_0) then
        (let rec _lh_matchIdent_1_4 = ((pieceAt_lh__d1 _lh_moveLine_arg1_0) sq'_0) in
          (match _lh_matchIdent_1_4 with
            | `Nothing -> 
              ((ml_0 sq'_0) (`LH_C((`Move(sq'_0, (`Nothing), (`Nothing))), ms_0)))
            | `Just(_lh_moveLine_Just_0_0) -> 
              (if ((colourOf_lh__d1 _lh_moveLine_Just_0_0) <> _lh_moveLine_arg2_0) then
                (_lh_moveLine_arg5_0 (`LH_C((`Move(sq'_0, (`Just(_lh_moveLine_Just_0_0)), (`Nothing))), ms_0)))
              else
                (_lh_moveLine_arg5_0 ms_0))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_0 ms_0)))) in
    (ml_0 _lh_moveLine_arg3_0));;
let rec bishopmoves_lh__d1 _lh_bishopmoves_arg1_0 _lh_bishopmoves_arg2_0 _lh_bishopmoves_arg3_0 =
  ((((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_0 -> 
    (let rec _lh_matchIdent_4_2 = xy_0 in
      (match _lh_matchIdent_4_2 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_0, _lh_bishopmoves_LH_P2_1_0) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_0 - 1), (_lh_bishopmoves_LH_P2_1_0 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_1 -> 
    (let rec _lh_matchIdent_4_3 = xy_1 in
      (match _lh_matchIdent_4_3 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1, _lh_bishopmoves_LH_P2_1_1) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1 + 1), (_lh_bishopmoves_LH_P2_1_1 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_2 -> 
    (let rec _lh_matchIdent_4_4 = xy_2 in
      (match _lh_matchIdent_4_4 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_2, _lh_bishopmoves_LH_P2_1_2) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_2 - 1), (_lh_bishopmoves_LH_P2_1_2 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_3 -> 
    (let rec _lh_matchIdent_4_5 = xy_3 in
      (match _lh_matchIdent_4_5 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_3, _lh_bishopmoves_LH_P2_1_3) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_3 + 1), (_lh_bishopmoves_LH_P2_1_3 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_7 -> 
    x_7))))) (`LH_N));;
let rec concat_lh__d3 lss_0 =
  (match lss_0 with
    | `LH_C(h_1, t_1) -> 
      ((mappend_lh__d3_d4 h_1) (concat_lh__d3 t_1))
    | `LH_N -> 
      (`LH_N));;
let rec pawnmoves_lh__d1 _lh_pawnmoves_arg1_0 _lh_pawnmoves_arg2_0 _lh_pawnmoves_arg3_0 =
  (match _lh_pawnmoves_arg2_0 with
    | `LH_P2(_lh_pawnmoves_LH_P2_0_0, _lh_pawnmoves_LH_P2_1_0) -> 
      (let rec fwd_0 = (let rec _lh_matchIdent_5_1 = _lh_pawnmoves_arg1_0 in
        (match _lh_matchIdent_5_1 with
          | `White -> 
            1
          | `Black -> 
            (0 - 1)
          | _ -> 
            (failwith "error"))) in
        (let rec promote_0 = (fun xy_4 mcp_0 -> 
          (let rec _lh_matchIdent_5_2 = xy_4 in
            (match _lh_matchIdent_5_2 with
              | `LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1) -> 
                (if (((_lh_pawnmoves_arg1_0 = (`Black)) && (_lh_pawnmoves_LH_P2_1_1 = 1)) || ((_lh_pawnmoves_arg1_0 = (`White)) && (_lh_pawnmoves_LH_P2_1_1 = 8))) then
                  ((let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (fun f_2_6 -> 
                    (`LH_N)) in
                    (let rec h_7_5 = (`LH_P2(_lh_pawnmoves_arg1_0, (`Knight))) in
                      (fun f_2_7 -> 
                        (`LH_C((f_2_7 h_7_5), (t_7_8 f_2_7)))))) in
                    (let rec h_7_6 = (`LH_P2(_lh_pawnmoves_arg1_0, (`Bishop))) in
                      (fun f_2_8 -> 
                        (`LH_C((f_2_8 h_7_6), (t_7_7 f_2_8)))))) in
                    (let rec h_7_7 = (`LH_P2(_lh_pawnmoves_arg1_0, (`Rook))) in
                      (fun f_2_9 -> 
                        (`LH_C((f_2_9 h_7_7), (t_7_6 f_2_9)))))) in
                    (let rec h_7_8 = (`LH_P2(_lh_pawnmoves_arg1_0, (`Queen))) in
                      (fun f_3_0 -> 
                        (`LH_C((f_3_0 h_7_8), (t_7_5 f_3_0)))))) (fun param_1 -> 
                    (`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1)), mcp_0, (`Just(param_1))))))
                else
                  (`LH_C((`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1)), mcp_0, (`Nothing))), (`LH_N))))
              | _ -> 
                (failwith "error")))) in
          (let rec movs_0 = (let rec on1_0 = (`LH_P2(_lh_pawnmoves_LH_P2_0_0, (_lh_pawnmoves_LH_P2_1_0 + fwd_0))) in
            (let rec on2_0 = (`LH_P2(_lh_pawnmoves_LH_P2_0_0, ((_lh_pawnmoves_LH_P2_1_0 + 2) * fwd_0))) in
              (if (((pieceAt_lh__d1 _lh_pawnmoves_arg3_0) on1_0) = (`Nothing)) then
                ((mappend_lh__d3_d4 ((promote_0 on1_0) (`Nothing))) (if ((((_lh_pawnmoves_LH_P2_1_0 = 2) && (_lh_pawnmoves_arg1_0 = (`White))) || ((_lh_pawnmoves_LH_P2_1_0 = 7) && (_lh_pawnmoves_arg1_0 = (`Black)))) && (((pieceAt_lh__d1 _lh_pawnmoves_arg3_0) on2_0) = (`Nothing))) then
                  (`LH_C((`Move(on2_0, (`Nothing), (`Nothing))), (`LH_N)))
                else
                  (`LH_N)))
              else
                (`LH_N)))) in
            (let rec caps_0 = (concat_lh__d3 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
              ((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_pawnmoves_arg1_0) _lh_pawnmoves_arg3_0) promote_0)) in
              (_lh_listcomp_fun_0 (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (fun _lh_listcomp_fun_1 _lh_pawnmoves_arg1_1 _lh_pawnmoves_arg3_1 promote_1 -> 
                (`LH_N)) in
                (let rec _lh_listcomp_fun_ls_h_0 = (`LH_P2((_lh_pawnmoves_LH_P2_0_0 - 1), (_lh_pawnmoves_LH_P2_1_0 + fwd_0))) in
                  (fun _lh_listcomp_fun_2 _lh_pawnmoves_arg1_2 _lh_pawnmoves_arg3_2 promote_2 -> 
                    (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
                      ((((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_3) _lh_pawnmoves_arg1_2) promote_2) _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_2)) in
                      (_lh_listcomp_fun_3 (let rec _lh_listcomp_fun_ls_t_2 = (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_4 _lh_pawnmoves_arg1_3 promote_3 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_5 -> 
                        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3)) in
                        (let rec _lh_listcomp_fun_ls_h_2 = ((pieceAt_lh__d1 _lh_pawnmoves_arg3_2) _lh_listcomp_fun_ls_h_0) in
                          (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_6 _lh_pawnmoves_arg1_4 promote_4 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_7 -> 
                            (match _lh_listcomp_fun_ls_h_2 with
                              | `Just(_lh_pawnmoves_Just_0_0) -> 
                                (if (not ((colourOf_lh__d1 _lh_pawnmoves_Just_0_0) = _lh_pawnmoves_arg1_4)) then
                                  (`LH_C(((promote_4 _lh_listcomp_fun_ls_h_3) (`Just(_lh_pawnmoves_Just_0_0))), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2)))
                                else
                                  (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2))
                              | _ -> 
                                (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2)))))))))) in
                (let rec _lh_listcomp_fun_ls_h_4 = (`LH_P2((_lh_pawnmoves_LH_P2_0_0 + 1), (_lh_pawnmoves_LH_P2_1_0 + fwd_0))) in
                  (fun _lh_listcomp_fun_8 _lh_pawnmoves_arg1_5 _lh_pawnmoves_arg3_3 promote_5 -> 
                    (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_2 -> 
                      ((((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_4) _lh_listcomp_fun_9) _lh_pawnmoves_arg1_5) promote_5) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_8)) in
                      (_lh_listcomp_fun_9 (let rec _lh_listcomp_fun_ls_t_5 = (fun _lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_1_0 _lh_pawnmoves_arg1_6 promote_6 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_1 -> 
                        (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_6)) in
                        (let rec _lh_listcomp_fun_ls_h_6 = ((pieceAt_lh__d1 _lh_pawnmoves_arg3_3) _lh_listcomp_fun_ls_h_4) in
                          (fun _lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_1_2 _lh_pawnmoves_arg1_7 promote_7 _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_1_3 -> 
                            (match _lh_listcomp_fun_ls_h_6 with
                              | `Just(_lh_pawnmoves_Just_0_1) -> 
                                (if (not ((colourOf_lh__d1 _lh_pawnmoves_Just_0_1) = _lh_pawnmoves_arg1_7)) then
                                  (`LH_C(((promote_7 _lh_listcomp_fun_ls_h_7) (`Just(_lh_pawnmoves_Just_0_1))), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_5)))
                                else
                                  (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_5))
                              | _ -> 
                                (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_5))))))))))))) in
              ((mappend_lh__d3_d4 movs_0) caps_0)))))
    | _ -> 
      (failwith "error"));;
let rec knightmoves_lh__d1 _lh_knightmoves_arg1_0 _lh_knightmoves_arg2_0 _lh_knightmoves_arg3_0 =
  (match _lh_knightmoves_arg2_0 with
    | `LH_P2(_lh_knightmoves_LH_P2_0_0, _lh_knightmoves_LH_P2_1_0) -> 
      ((((let rec _lh_sift_LH_C_1_8 = (let rec _lh_sift_LH_C_1_9 = (let rec _lh_sift_LH_C_1_1_0 = (let rec _lh_sift_LH_C_1_1_1 = (let rec _lh_sift_LH_C_1_1_2 = (let rec _lh_sift_LH_C_1_1_3 = (let rec _lh_sift_LH_C_1_1_4 = (let rec _lh_sift_LH_C_1_1_5 = (fun _lh_sift_arg3_9 _lh_sift_arg1_9 _lh_sift_arg2_9 -> 
        _lh_sift_arg3_9) in
        (let rec _lh_sift_LH_C_0_8 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 + 1), (_lh_knightmoves_LH_P2_1_0 - 2))) in
          (fun _lh_sift_arg3_1_0 _lh_sift_arg1_1_0 _lh_sift_arg2_1_0 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_8) then
              (let rec _lh_matchIdent_5_5 = ((pieceAt_lh__d1 _lh_sift_arg2_1_0) _lh_sift_LH_C_0_8) in
                (match _lh_matchIdent_5_5 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1_5 (`LH_C((`Move(_lh_sift_LH_C_0_8, (`Nothing), (`Nothing))), _lh_sift_arg3_1_0))) _lh_sift_arg1_1_0) _lh_sift_arg2_1_0)
                  | `Just(_lh_sift_Just_0_8) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_8) = _lh_sift_arg1_1_0) then
                      (((_lh_sift_LH_C_1_1_5 _lh_sift_arg3_1_0) _lh_sift_arg1_1_0) _lh_sift_arg2_1_0)
                    else
                      (((_lh_sift_LH_C_1_1_5 (`LH_C((`Move(_lh_sift_LH_C_0_8, (`Just(_lh_sift_Just_0_8)), (`Nothing))), _lh_sift_arg3_1_0))) _lh_sift_arg1_1_0) _lh_sift_arg2_1_0))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1_5 _lh_sift_arg3_1_0) _lh_sift_arg1_1_0) _lh_sift_arg2_1_0))))) in
        (let rec _lh_sift_LH_C_0_9 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 - 1), (_lh_knightmoves_LH_P2_1_0 - 2))) in
          (fun _lh_sift_arg3_1_1 _lh_sift_arg1_1_1 _lh_sift_arg2_1_1 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_9) then
              (let rec _lh_matchIdent_5_6 = ((pieceAt_lh__d1 _lh_sift_arg2_1_1) _lh_sift_LH_C_0_9) in
                (match _lh_matchIdent_5_6 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1_4 (`LH_C((`Move(_lh_sift_LH_C_0_9, (`Nothing), (`Nothing))), _lh_sift_arg3_1_1))) _lh_sift_arg1_1_1) _lh_sift_arg2_1_1)
                  | `Just(_lh_sift_Just_0_9) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_9) = _lh_sift_arg1_1_1) then
                      (((_lh_sift_LH_C_1_1_4 _lh_sift_arg3_1_1) _lh_sift_arg1_1_1) _lh_sift_arg2_1_1)
                    else
                      (((_lh_sift_LH_C_1_1_4 (`LH_C((`Move(_lh_sift_LH_C_0_9, (`Just(_lh_sift_Just_0_9)), (`Nothing))), _lh_sift_arg3_1_1))) _lh_sift_arg1_1_1) _lh_sift_arg2_1_1))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1_4 _lh_sift_arg3_1_1) _lh_sift_arg1_1_1) _lh_sift_arg2_1_1))))) in
        (let rec _lh_sift_LH_C_0_1_0 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 + 2), (_lh_knightmoves_LH_P2_1_0 - 1))) in
          (fun _lh_sift_arg3_1_2 _lh_sift_arg1_1_2 _lh_sift_arg2_1_2 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1_0) then
              (let rec _lh_matchIdent_5_7 = ((pieceAt_lh__d1 _lh_sift_arg2_1_2) _lh_sift_LH_C_0_1_0) in
                (match _lh_matchIdent_5_7 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1_3 (`LH_C((`Move(_lh_sift_LH_C_0_1_0, (`Nothing), (`Nothing))), _lh_sift_arg3_1_2))) _lh_sift_arg1_1_2) _lh_sift_arg2_1_2)
                  | `Just(_lh_sift_Just_0_1_0) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1_0) = _lh_sift_arg1_1_2) then
                      (((_lh_sift_LH_C_1_1_3 _lh_sift_arg3_1_2) _lh_sift_arg1_1_2) _lh_sift_arg2_1_2)
                    else
                      (((_lh_sift_LH_C_1_1_3 (`LH_C((`Move(_lh_sift_LH_C_0_1_0, (`Just(_lh_sift_Just_0_1_0)), (`Nothing))), _lh_sift_arg3_1_2))) _lh_sift_arg1_1_2) _lh_sift_arg2_1_2))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1_3 _lh_sift_arg3_1_2) _lh_sift_arg1_1_2) _lh_sift_arg2_1_2))))) in
        (let rec _lh_sift_LH_C_0_1_1 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 - 2), (_lh_knightmoves_LH_P2_1_0 - 1))) in
          (fun _lh_sift_arg3_1_3 _lh_sift_arg1_1_3 _lh_sift_arg2_1_3 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1_1) then
              (let rec _lh_matchIdent_5_8 = ((pieceAt_lh__d1 _lh_sift_arg2_1_3) _lh_sift_LH_C_0_1_1) in
                (match _lh_matchIdent_5_8 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1_2 (`LH_C((`Move(_lh_sift_LH_C_0_1_1, (`Nothing), (`Nothing))), _lh_sift_arg3_1_3))) _lh_sift_arg1_1_3) _lh_sift_arg2_1_3)
                  | `Just(_lh_sift_Just_0_1_1) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1_1) = _lh_sift_arg1_1_3) then
                      (((_lh_sift_LH_C_1_1_2 _lh_sift_arg3_1_3) _lh_sift_arg1_1_3) _lh_sift_arg2_1_3)
                    else
                      (((_lh_sift_LH_C_1_1_2 (`LH_C((`Move(_lh_sift_LH_C_0_1_1, (`Just(_lh_sift_Just_0_1_1)), (`Nothing))), _lh_sift_arg3_1_3))) _lh_sift_arg1_1_3) _lh_sift_arg2_1_3))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1_2 _lh_sift_arg3_1_3) _lh_sift_arg1_1_3) _lh_sift_arg2_1_3))))) in
        (let rec _lh_sift_LH_C_0_1_2 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 + 2), (_lh_knightmoves_LH_P2_1_0 + 1))) in
          (fun _lh_sift_arg3_1_4 _lh_sift_arg1_1_4 _lh_sift_arg2_1_4 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1_2) then
              (let rec _lh_matchIdent_5_9 = ((pieceAt_lh__d1 _lh_sift_arg2_1_4) _lh_sift_LH_C_0_1_2) in
                (match _lh_matchIdent_5_9 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1_1 (`LH_C((`Move(_lh_sift_LH_C_0_1_2, (`Nothing), (`Nothing))), _lh_sift_arg3_1_4))) _lh_sift_arg1_1_4) _lh_sift_arg2_1_4)
                  | `Just(_lh_sift_Just_0_1_2) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1_2) = _lh_sift_arg1_1_4) then
                      (((_lh_sift_LH_C_1_1_1 _lh_sift_arg3_1_4) _lh_sift_arg1_1_4) _lh_sift_arg2_1_4)
                    else
                      (((_lh_sift_LH_C_1_1_1 (`LH_C((`Move(_lh_sift_LH_C_0_1_2, (`Just(_lh_sift_Just_0_1_2)), (`Nothing))), _lh_sift_arg3_1_4))) _lh_sift_arg1_1_4) _lh_sift_arg2_1_4))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1_1 _lh_sift_arg3_1_4) _lh_sift_arg1_1_4) _lh_sift_arg2_1_4))))) in
        (let rec _lh_sift_LH_C_0_1_3 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 - 2), (_lh_knightmoves_LH_P2_1_0 + 1))) in
          (fun _lh_sift_arg3_1_5 _lh_sift_arg1_1_5 _lh_sift_arg2_1_5 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1_3) then
              (let rec _lh_matchIdent_6_0 = ((pieceAt_lh__d1 _lh_sift_arg2_1_5) _lh_sift_LH_C_0_1_3) in
                (match _lh_matchIdent_6_0 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_1_0 (`LH_C((`Move(_lh_sift_LH_C_0_1_3, (`Nothing), (`Nothing))), _lh_sift_arg3_1_5))) _lh_sift_arg1_1_5) _lh_sift_arg2_1_5)
                  | `Just(_lh_sift_Just_0_1_3) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1_3) = _lh_sift_arg1_1_5) then
                      (((_lh_sift_LH_C_1_1_0 _lh_sift_arg3_1_5) _lh_sift_arg1_1_5) _lh_sift_arg2_1_5)
                    else
                      (((_lh_sift_LH_C_1_1_0 (`LH_C((`Move(_lh_sift_LH_C_0_1_3, (`Just(_lh_sift_Just_0_1_3)), (`Nothing))), _lh_sift_arg3_1_5))) _lh_sift_arg1_1_5) _lh_sift_arg2_1_5))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_1_0 _lh_sift_arg3_1_5) _lh_sift_arg1_1_5) _lh_sift_arg2_1_5))))) in
        (let rec _lh_sift_LH_C_0_1_4 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 + 1), (_lh_knightmoves_LH_P2_1_0 + 2))) in
          (fun _lh_sift_arg3_1_6 _lh_sift_arg1_1_6 _lh_sift_arg2_1_6 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1_4) then
              (let rec _lh_matchIdent_6_1 = ((pieceAt_lh__d1 _lh_sift_arg2_1_6) _lh_sift_LH_C_0_1_4) in
                (match _lh_matchIdent_6_1 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_9 (`LH_C((`Move(_lh_sift_LH_C_0_1_4, (`Nothing), (`Nothing))), _lh_sift_arg3_1_6))) _lh_sift_arg1_1_6) _lh_sift_arg2_1_6)
                  | `Just(_lh_sift_Just_0_1_4) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1_4) = _lh_sift_arg1_1_6) then
                      (((_lh_sift_LH_C_1_9 _lh_sift_arg3_1_6) _lh_sift_arg1_1_6) _lh_sift_arg2_1_6)
                    else
                      (((_lh_sift_LH_C_1_9 (`LH_C((`Move(_lh_sift_LH_C_0_1_4, (`Just(_lh_sift_Just_0_1_4)), (`Nothing))), _lh_sift_arg3_1_6))) _lh_sift_arg1_1_6) _lh_sift_arg2_1_6))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_9 _lh_sift_arg3_1_6) _lh_sift_arg1_1_6) _lh_sift_arg2_1_6))))) in
        (let rec _lh_sift_LH_C_0_1_5 = (`LH_P2((_lh_knightmoves_LH_P2_0_0 - 1), (_lh_knightmoves_LH_P2_1_0 + 2))) in
          (fun _lh_sift_arg3_1_7 _lh_sift_arg1_1_7 _lh_sift_arg2_1_7 -> 
            (if (onboard_lh__d1 _lh_sift_LH_C_0_1_5) then
              (let rec _lh_matchIdent_6_2 = ((pieceAt_lh__d1 _lh_sift_arg2_1_7) _lh_sift_LH_C_0_1_5) in
                (match _lh_matchIdent_6_2 with
                  | `Nothing -> 
                    (((_lh_sift_LH_C_1_8 (`LH_C((`Move(_lh_sift_LH_C_0_1_5, (`Nothing), (`Nothing))), _lh_sift_arg3_1_7))) _lh_sift_arg1_1_7) _lh_sift_arg2_1_7)
                  | `Just(_lh_sift_Just_0_1_5) -> 
                    (if ((colourOf_lh__d1 _lh_sift_Just_0_1_5) = _lh_sift_arg1_1_7) then
                      (((_lh_sift_LH_C_1_8 _lh_sift_arg3_1_7) _lh_sift_arg1_1_7) _lh_sift_arg2_1_7)
                    else
                      (((_lh_sift_LH_C_1_8 (`LH_C((`Move(_lh_sift_LH_C_0_1_5, (`Just(_lh_sift_Just_0_1_5)), (`Nothing))), _lh_sift_arg3_1_7))) _lh_sift_arg1_1_7) _lh_sift_arg2_1_7))
                  | _ -> 
                    (failwith "error")))
            else
              (((_lh_sift_LH_C_1_8 _lh_sift_arg3_1_7) _lh_sift_arg1_1_7) _lh_sift_arg2_1_7))))) (`LH_N)) _lh_knightmoves_arg1_0) _lh_knightmoves_arg3_0)
    | _ -> 
      (failwith "error"));;
let rec rookmoves_lh__d1 _lh_rookmoves_arg1_0 _lh_rookmoves_arg2_0 _lh_rookmoves_arg3_0 =
  ((((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_5 -> 
    (let rec _lh_matchIdent_7_6 = xy_5 in
      (match _lh_matchIdent_7_6 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_0, _lh_rookmoves_LH_P2_1_0) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_0 - 1), _lh_rookmoves_LH_P2_1_0))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_6 -> 
    (let rec _lh_matchIdent_7_7 = xy_6 in
      (match _lh_matchIdent_7_7 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1, _lh_rookmoves_LH_P2_1_1) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1 + 1), _lh_rookmoves_LH_P2_1_1))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_7 -> 
    (let rec _lh_matchIdent_7_8 = xy_7 in
      (match _lh_matchIdent_7_8 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_2, _lh_rookmoves_LH_P2_1_2) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_2, (_lh_rookmoves_LH_P2_1_2 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_8 -> 
    (let rec _lh_matchIdent_7_9 = xy_8 in
      (match _lh_matchIdent_7_9 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_3, _lh_rookmoves_LH_P2_1_3) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_3, (_lh_rookmoves_LH_P2_1_3 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1_1 -> 
    x_1_1))))) (`LH_N));;
let rec queenmoves_lh__d1 _lh_queenmoves_arg1_0 _lh_queenmoves_arg2_0 _lh_queenmoves_arg3_0 =
  ((mappend_lh__d3_d4 (((bishopmoves_lh__d1 _lh_queenmoves_arg1_0) _lh_queenmoves_arg2_0) _lh_queenmoves_arg3_0)) (((rookmoves_lh__d1 _lh_queenmoves_arg1_0) _lh_queenmoves_arg2_0) _lh_queenmoves_arg3_0));;
let rec rawmoves_lh__d2 _lh_rawmoves_arg1_0 _lh_rawmoves_arg2_0 _lh_rawmoves_arg3_0 =
  (match _lh_rawmoves_arg2_0 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_0, _lh_rawmoves_LH_P2_1_0) -> 
      (let rec m_0 = (let rec _lh_matchIdent_3_0 = _lh_rawmoves_LH_P2_0_0 in
        (match _lh_matchIdent_3_0 with
          | `King -> 
            kingmoves_lh__d1
          | `Queen -> 
            queenmoves_lh__d1
          | `Rook -> 
            rookmoves_lh__d1
          | `Bishop -> 
            bishopmoves_lh__d1
          | `Knight -> 
            knightmoves_lh__d1
          | `Pawn -> 
            pawnmoves_lh__d1
          | _ -> 
            (failwith "error"))) in
        (((m_0 _lh_rawmoves_arg1_0) _lh_rawmoves_LH_P2_1_0) _lh_rawmoves_arg3_0))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d9 f_1_4 i_8 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_4_2, t_4_2) -> 
      ((f_1_4 h_4_2) (((foldr_lh__d9 f_1_4) i_8) t_4_2))
    | `LH_N -> 
      i_8);;
let rec rPa_lh__d1 _lh_rPa_arg1_0 _lh_rPa_arg2_0 =
  (match _lh_rPa_arg2_0 with
    | `LH_C(_lh_rPa_LH_C_0_0, _lh_rPa_LH_C_1_0) -> 
      (match _lh_rPa_LH_C_0_0 with
        | `LH_P2(_lh_rPa_LH_P2_0_0, _lh_rPa_LH_P2_1_0) -> 
          (if (_lh_rPa_LH_P2_1_0 = _lh_rPa_arg1_0) then
            _lh_rPa_LH_C_1_0
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_0, _lh_rPa_LH_P2_1_0)), ((rPa_lh__d1 _lh_rPa_arg1_0) _lh_rPa_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rmPieceAt_lh__d2 _lh_rmPieceAt_arg1_0 _lh_rmPieceAt_arg2_0 _lh_rmPieceAt_arg3_0 =
  (match _lh_rmPieceAt_arg1_0 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_0 with
        | `Board(_lh_rmPieceAt_Board_0_0, _lh_rmPieceAt_Board_1_0) -> 
          (`Board(((rPa_lh__d1 _lh_rmPieceAt_arg2_0) _lh_rmPieceAt_Board_0_0), _lh_rmPieceAt_Board_1_0))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_0 with
        | `Board(_lh_rmPieceAt_Board_0_1, _lh_rmPieceAt_Board_1_1) -> 
          (`Board(_lh_rmPieceAt_Board_0_1, ((rPa_lh__d1 _lh_rmPieceAt_arg2_0) _lh_rmPieceAt_Board_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec tryMove_lh__d2 _lh_tryMove_arg1_1 _lh_tryMove_arg2_1 _lh_tryMove_arg3_1 _lh_tryMove_arg4_1 =
  (match _lh_tryMove_arg2_1 with
    | `LH_P2(_lh_tryMove_LH_P2_0_1, _lh_tryMove_LH_P2_1_1) -> 
      (match _lh_tryMove_arg3_1 with
        | `Move(_lh_tryMove_Move_0_1, _lh_tryMove_Move_1_1, _lh_tryMove_Move_2_1) -> 
          (let rec p_1 = (`LH_P2(_lh_tryMove_arg1_1, _lh_tryMove_LH_P2_0_1)) in
            (let rec bd1_1 = (((rmPieceAt_lh__d2 _lh_tryMove_arg1_1) _lh_tryMove_LH_P2_1_1) _lh_tryMove_arg4_1) in
              (let rec p'_1 = (((maybe_lh__d4 p_1) (fun x_1_0 -> 
                x_1_0)) _lh_tryMove_Move_2_1) in
                (let rec bd2_1 = (((maybe_lh__d4 (((putPieceAt_lh__d3 _lh_tryMove_Move_0_1) p'_1) bd1_1)) (fun _dummy_1 -> 
                  (((putPieceAt_lh__d3 _lh_tryMove_Move_0_1) p'_1) (((rmPieceAt_lh__d2 (opponent_lh__d5 _lh_tryMove_arg1_1)) _lh_tryMove_Move_0_1) bd1_1)))) _lh_tryMove_Move_1_1) in
                  (if (not ((kingincheck_lh__d2 _lh_tryMove_arg1_1) bd2_1)) then
                    (`Just((`LH_P2((`MoveInFull(p_1, _lh_tryMove_LH_P2_1_1, (`Move(_lh_tryMove_Move_0_1, _lh_tryMove_Move_1_1, _lh_tryMove_Move_2_1)))), bd2_1))))
                  else
                    (`Nothing))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec moveDetailsFor_lh__d2 _lh_moveDetailsFor_arg1_0 _lh_moveDetailsFor_arg2_0 =
  (((foldr_lh__d8 (fun ksq_0 ms_1 -> 
    (((foldr_lh__d9 (fun rm_0 ms'_0 -> 
      ((((maybe_lh__d4 (fun x_1 -> 
        x_1)) (fun h_4 t_4 -> 
        (`LH_C(h_4, t_4)))) ((((tryMove_lh__d2 _lh_moveDetailsFor_arg1_0) ksq_0) rm_0) _lh_moveDetailsFor_arg2_0)) ms'_0))) ms_1) (((rawmoves_lh__d2 _lh_moveDetailsFor_arg1_0) ksq_0) _lh_moveDetailsFor_arg2_0)))) (`LH_N)) ((forcesColoured_lh__d3 _lh_moveDetailsFor_arg1_0) _lh_moveDetailsFor_arg2_0));;
let rec foldr_lh__d6 f_2 i_2 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      ((f_2 h_5) (((foldr_lh__d6 f_2) i_2) t_5))
    | `LH_N -> 
      i_2);;
let rec foldr_lh__d7 f_3_6 i_1_3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_9_5, t_9_5) -> 
      ((f_3_6 h_9_5) (((foldr_lh__d7 f_3_6) i_1_3) t_9_5))
    | `LH_N -> 
      i_1_3);;
let rec rmPieceAt_lh__d1 _lh_rmPieceAt_arg1_1 _lh_rmPieceAt_arg2_1 _lh_rmPieceAt_arg3_1 =
  (match _lh_rmPieceAt_arg1_1 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_1 with
        | `Board(_lh_rmPieceAt_Board_0_2, _lh_rmPieceAt_Board_1_2) -> 
          (`Board(((rPa_lh__d1 _lh_rmPieceAt_arg2_1) _lh_rmPieceAt_Board_0_2), _lh_rmPieceAt_Board_1_2))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_1 with
        | `Board(_lh_rmPieceAt_Board_0_3, _lh_rmPieceAt_Board_1_3) -> 
          (`Board(_lh_rmPieceAt_Board_0_3, ((rPa_lh__d1 _lh_rmPieceAt_arg2_1) _lh_rmPieceAt_Board_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d4 f_2_2 i_1_1 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_6_4, t_6_4) -> 
      ((f_2_2 h_6_4) (((foldr_lh__d4 f_2_2) i_1_1) t_6_4))
    | `LH_N -> 
      i_1_1);;
let rec rawmoves_lh__d1 _lh_rawmoves_arg1_1 _lh_rawmoves_arg2_1 _lh_rawmoves_arg3_1 =
  (match _lh_rawmoves_arg2_1 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_1, _lh_rawmoves_LH_P2_1_1) -> 
      (let rec m_1 = (let rec _lh_matchIdent_5_3 = _lh_rawmoves_LH_P2_0_1 in
        (match _lh_matchIdent_5_3 with
          | `King -> 
            kingmoves_lh__d1
          | `Queen -> 
            queenmoves_lh__d1
          | `Rook -> 
            rookmoves_lh__d1
          | `Bishop -> 
            bishopmoves_lh__d1
          | `Knight -> 
            knightmoves_lh__d1
          | `Pawn -> 
            pawnmoves_lh__d1
          | _ -> 
            (failwith "error"))) in
        (((m_1 _lh_rawmoves_arg1_1) _lh_rawmoves_LH_P2_1_1) _lh_rawmoves_arg3_1))
    | _ -> 
      (failwith "error"));;
let rec moveDetailsFor_lh__d1 _lh_moveDetailsFor_arg1_1 _lh_moveDetailsFor_arg2_1 =
  (((foldr_lh__d4 (fun ksq_1 ms_2 -> 
    (((foldr_lh__d5 (fun rm_1 ms'_1 -> 
      (((((((tryMove_lh__d1 _lh_moveDetailsFor_arg1_1) ksq_1) rm_1) _lh_moveDetailsFor_arg2_1) (fun x_2 -> 
        x_2)) (fun h_2_6 t_2_6 -> 
        (let rec t_2_7 = t_2_6 in
          (let rec h_2_7 = h_2_6 in
            (fun f_5 i_3 -> 
              ((f_5 h_2_7) ((t_2_7 f_5) i_3))))))) ms'_1))) ms_2) (((rawmoves_lh__d1 _lh_moveDetailsFor_arg1_1) ksq_1) _lh_moveDetailsFor_arg2_1)))) (fun f_6 i_4 -> 
    i_4)) ((forcesColoured_lh__d2 _lh_moveDetailsFor_arg1_1) _lh_moveDetailsFor_arg2_1))
and
replies_lh__d1 _lh_replies_arg1_0 _lh_replies_arg2_0 _lh_replies_arg3_0 =
  (let rec mds_2 = ((moveDetailsFor_lh__d2 _lh_replies_arg2_0) _lh_replies_arg1_0) in
    (let rec solnAnd_0 = (fun mifb_2 rest_0 -> 
      (let rec _lh_matchIdent_7_0 = mifb_2 in
        (match _lh_matchIdent_7_0 with
          | `LH_P2(_lh_replies_LH_P2_0_0, _lh_replies_LH_P2_1_0) -> 
            (let rec sm_0 = (let rec solnOr_2 = (fun mifb_3 other_3 -> 
              (let rec _lh_matchIdent_7_1 = mifb_3 in
                (((_lh_matchIdent_7_1 (opponent_lh__d4 _lh_replies_arg2_0)) (_lh_replies_arg3_0 - 1)) other_3))) in
              (if ((_lh_replies_arg3_0 - 1) > 0) then
                (let rec mds_3 = ((moveDetailsFor_lh__d1 (opponent_lh__d4 _lh_replies_arg2_0)) _lh_replies_LH_P2_1_0) in
                  ((mds_3 solnOr_2) (`Nothing)))
              else
                ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C('=', (`LH_C(' ', (`LH_C('0', (`LH_N)))))))))))))))) in
              (let rec _lh_matchIdent_7_2 = sm_0 in
                (match _lh_matchIdent_7_2 with
                  | `Nothing -> 
                    (`Nothing)
                  | `Just(_lh_replies_Just_0_0) -> 
                    (let rec _lh_matchIdent_7_3 = rest_0 in
                      (match _lh_matchIdent_7_3 with
                        | `Nothing -> 
                          (`Nothing)
                        | `Just(_lh_replies_Just_0_1) -> 
                          (`Just((`LH_C((let rec _lh_insertCompact_LH_P2_1_0 = _lh_replies_Just_0_0 in
                            (let rec _lh_insertCompact_LH_P2_0_0 = _lh_replies_LH_P2_0_0 in
                              (fun _lh_insertCompact_arg2_1 -> 
                                (let rec insert_0 = (fun _lh_insert_arg1_0 _lh_insert_arg2_0 -> 
                                  (match _lh_insert_arg2_0 with
                                    | `LH_N -> 
                                      (`LH_C(_lh_insert_arg1_0, (`LH_N)))
                                    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
                                      (if (_lh_insert_arg1_0 > _lh_insert_LH_C_0_0) then
                                        (`LH_C(_lh_insert_LH_C_0_0, ((insert_0 _lh_insert_arg1_0) _lh_insert_LH_C_1_0)))
                                      else
                                        (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0)))))
                                    | _ -> 
                                      (failwith "error"))) in
                                  (let rec cs_0 = (_lh_insertCompact_LH_P2_1_0 99) in
                                    (let rec ic_0 = (fun ls_2_2 -> 
                                      (let rec _lh_matchIdent_7_4 = ls_2_2 in
                                        (match _lh_matchIdent_7_4 with
                                          | `LH_N -> 
                                            (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_0, (`LH_N))), cs_0)), (`LH_N)))
                                          | `LH_C(_lh_insertCompact_LH_C_0_0, _lh_insertCompact_LH_C_1_0) -> 
                                            (match _lh_insertCompact_LH_C_0_0 with
                                              | `LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1) -> 
                                                (let rec a_1_3 = ((showSoln_lh__d3 cs_0) 1) in
                                                  (let rec b_1_0 = ((showSoln_lh__d2 _lh_insertCompact_LH_P2_1_1) 1) in
                                                    (if (a_1_3 < b_1_0) then
                                                      (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_0, (`LH_N))), cs_0)), (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1)), _lh_insertCompact_LH_C_1_0))))
                                                    else
                                                      (if (a_1_3 = b_1_0) then
                                                        (`LH_C((`LH_P2(((insert_0 _lh_insertCompact_LH_P2_0_0) _lh_insertCompact_LH_P2_0_1), cs_0)), _lh_insertCompact_LH_C_1_0))
                                                      else
                                                        (if (a_1_3 > b_1_0) then
                                                          (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1)), (ic_0 _lh_insertCompact_LH_C_1_0)))
                                                        else
                                                          ((failwith "error") (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))
                                              | _ -> 
                                                (failwith "error"))
                                          | _ -> 
                                            (failwith "error")))) in
                                      (ic_0 _lh_insertCompact_arg2_1))))))), _lh_replies_Just_0_1))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error"))))
          | _ -> 
            (failwith "error")))) in
      (if (_lh_replies_arg3_0 = 0) then
        (if (null_lh__d1 mds_2) then
          (`Just((`LH_N)))
        else
          (`Nothing))
      else
        (if (_lh_replies_arg3_0 > 0) then
          (((foldr_lh__d6 solnAnd_0) (`Just((`LH_N)))) mds_2)
        else
          ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))
and
tryMove_lh__d1 _lh_tryMove_arg1_0 _lh_tryMove_arg2_0 _lh_tryMove_arg3_0 _lh_tryMove_arg4_0 =
  (match _lh_tryMove_arg2_0 with
    | `LH_P2(_lh_tryMove_LH_P2_0_0, _lh_tryMove_LH_P2_1_0) -> 
      (match _lh_tryMove_arg3_0 with
        | `Move(_lh_tryMove_Move_0_0, _lh_tryMove_Move_1_0, _lh_tryMove_Move_2_0) -> 
          (let rec p_0 = (`LH_P2(_lh_tryMove_arg1_0, _lh_tryMove_LH_P2_0_0)) in
            (let rec bd1_0 = (((rmPieceAt_lh__d1 _lh_tryMove_arg1_0) _lh_tryMove_LH_P2_1_0) _lh_tryMove_arg4_0) in
              (let rec p'_0 = (((maybe_lh__d3 p_0) (fun x_6 -> 
                x_6)) _lh_tryMove_Move_2_0) in
                (let rec bd2_0 = (((maybe_lh__d2 (((putPieceAt_lh__d3 _lh_tryMove_Move_0_0) p'_0) bd1_0)) (fun _dummy_0 -> 
                  (((putPieceAt_lh__d2 _lh_tryMove_Move_0_0) p'_0) (((rmPieceAt_lh__d2 (opponent_lh__d5 _lh_tryMove_arg1_0)) _lh_tryMove_Move_0_0) bd1_0)))) _lh_tryMove_Move_1_0) in
                  (if (not ((kingincheck_lh__d2 _lh_tryMove_arg1_0) bd2_0)) then
                    (let rec _lh_maybe_Just_0_1 = (let rec _lh_solution_LH_P2_1_0 = bd2_0 in
                      (let rec _lh_solution_LH_P2_0_0 = (`MoveInFull(p_0, _lh_tryMove_LH_P2_1_0, (`Move(_lh_tryMove_Move_0_0, _lh_tryMove_Move_1_0, _lh_tryMove_Move_2_0)))) in
                        (fun _lh_solution_arg2_1 _lh_solution_arg3_1 other_2 -> 
                          (let rec rsm_0 = (((replies_lh__d1 _lh_solution_LH_P2_1_0) (opponent_lh__d2 _lh_solution_arg2_1)) (_lh_solution_arg3_1 - 1)) in
                            (let rec _lh_matchIdent_4_1 = rsm_0 in
                              (match _lh_matchIdent_4_1 with
                                | `Nothing -> 
                                  other_2
                                | `Just(_lh_solution_Just_0_0) -> 
                                  (match _lh_solution_Just_0_0 with
                                    | `LH_N -> 
                                      (if ((kingincheck_lh__d1 (opponent_lh__d1 _lh_solution_arg2_1)) _lh_solution_LH_P2_1_0) then
                                        (`Just((let rec _lh_compact_Solution_1_0 = (`LH_N) in
                                          (let rec _lh_compact_Solution_0_0 = _lh_solution_LH_P2_0_0 in
                                            (fun _lh_dummy_2 -> 
                                              (`Soln(_lh_compact_Solution_0_0, (((foldr_lh__d7 insertCompact_lh__d1) (`LH_N)) _lh_compact_Solution_1_0))))))))
                                      else
                                        other_2)
                                    | _ -> 
                                      (`Just((let rec _lh_compact_Solution_1_1 = _lh_solution_Just_0_0 in
                                        (let rec _lh_compact_Solution_0_1 = _lh_solution_LH_P2_0_0 in
                                          (fun _lh_dummy_3 -> 
                                            (`Soln(_lh_compact_Solution_0_1, (((foldr_lh__d7 insertCompact_lh__d1) (`LH_N)) _lh_compact_Solution_1_1)))))))))
                                | _ -> 
                                  (failwith "error"))))))) in
                      (fun _lh_maybe_arg1_1 _lh_maybe_arg2_1 -> 
                        (_lh_maybe_arg2_1 _lh_maybe_Just_0_1)))
                  else
                    (fun _lh_maybe_arg1_2 _lh_maybe_arg2_2 -> 
                      _lh_maybe_arg1_2))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec solve_lh__d1 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (showResult_lh__d1 (let rec solnOr_0 = (fun mifb_0 other_0 -> 
    (let rec _lh_matchIdent_2_8 = mifb_0 in
      (((_lh_matchIdent_2_8 _lh_solve_arg2_0) ((2 * _lh_solve_arg3_0) - 1)) other_0))) in
    (if (((2 * _lh_solve_arg3_0) - 1) > 0) then
      (let rec mds_0 = ((moveDetailsFor_lh__d1 _lh_solve_arg2_0) _lh_solve_arg1_0) in
        ((mds_0 solnOr_0) (`Nothing)))
    else
      ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C('=', (`LH_C(' ', (`LH_C('0', (`LH_N)))))))))))))))));;
let rec head_lh__d1 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_9_6, t_9_6) -> 
      h_9_6
    | `LH_N -> 
      (failwith "error"));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_9 -> 
        (failwith "error"))
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (let rec _lh_parseGoal_LH_C_1_0 = _lh_drop_LH_C_1_0 in
          (let rec _lh_parseGoal_LH_C_0_0 = _lh_drop_LH_C_0_0 in
            (fun _lh_dummy_1_0 -> 
              (match _lh_parseGoal_LH_C_1_0 with
                | `LH_N -> 
                  (let rec ws_0 = (words_lh__d1 _lh_parseGoal_LH_C_0_0) in
                    (let rec c_1 = (if ((head_lh__d1 ws_0) = (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))) then
                      (`Black)
                    else
                      (`White)) in
                      (let rec n_3 = 2 in
                        (let rec _lh_testMate_nofib_LH_P2_1_1 = n_3 in
                          (let rec _lh_testMate_nofib_LH_P2_0_1 = c_1 in
                            (fun _lh_testMate_nofib_LH_P2_0_2 -> 
                              ((((mappend_lh__d4 (((((showBoard_lh__d1 _lh_testMate_nofib_LH_P2_0_2) (let rec t_9_7 = (fun ys_1_0_1 -> 
                                ys_1_0_1) in
                                (let rec h_9_7 = '|' in
                                  (fun ys_1_0_2 -> 
                                    (let rec t_9_8 = (t_9_7 ys_1_0_2) in
                                      (let rec h_9_8 = h_9_7 in
                                        (fun ys_1_0_3 -> 
                                          (let rec t_9_9 = (t_9_8 ys_1_0_3) in
                                            (let rec h_9_9 = h_9_8 in
                                              (fun ys_1_0_4 -> 
                                                (`LH_C(h_9_9, (t_9_9 ys_1_0_4))))))))))))) (showColour_lh__d1 _lh_testMate_nofib_LH_P2_0_1)) (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (let rec t_1_1_5 = (let rec t_1_1_6 = (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (fun ys_1_0_5 -> 
                                ys_1_0_5) in
                                (let rec h_1_0_0 = ' ' in
                                  (fun ys_1_0_6 -> 
                                    (`LH_C(h_1_0_0, (t_1_2_0 ys_1_0_6)))))) in
                                (let rec h_1_0_1 = 'n' in
                                  (fun ys_1_0_7 -> 
                                    (`LH_C(h_1_0_1, (t_1_1_9 ys_1_0_7)))))) in
                                (let rec h_1_0_2 = 'i' in
                                  (fun ys_1_0_8 -> 
                                    (`LH_C(h_1_0_2, (t_1_1_8 ys_1_0_8)))))) in
                                (let rec h_1_0_3 = ' ' in
                                  (fun ys_1_0_9 -> 
                                    (`LH_C(h_1_0_3, (t_1_1_7 ys_1_0_9)))))) in
                                (let rec h_1_0_4 = 'e' in
                                  (fun ys_1_1_0 -> 
                                    (`LH_C(h_1_0_4, (t_1_1_6 ys_1_1_0)))))) in
                                (let rec h_1_0_5 = 't' in
                                  (fun ys_1_1_1 -> 
                                    (`LH_C(h_1_0_5, (t_1_1_5 ys_1_1_1)))))) in
                                (let rec h_1_0_6 = 'a' in
                                  (fun ys_1_1_2 -> 
                                    (`LH_C(h_1_0_6, (t_1_1_4 ys_1_1_2)))))) in
                                (let rec h_1_0_7 = 'm' in
                                  (fun ys_1_1_3 -> 
                                    (`LH_C(h_1_0_7, (t_1_1_3 ys_1_1_3)))))) in
                                (let rec h_1_0_8 = ' ' in
                                  (fun ys_1_1_4 -> 
                                    (`LH_C(h_1_0_8, (t_1_1_2 ys_1_1_4)))))) in
                                (let rec h_1_0_9 = 'd' in
                                  (fun ys_1_1_5 -> 
                                    (`LH_C(h_1_0_9, (t_1_1_1 ys_1_1_5)))))) in
                                (let rec h_1_1_0 = 'n' in
                                  (fun ys_1_1_6 -> 
                                    (`LH_C(h_1_1_0, (t_1_1_0 ys_1_1_6)))))) in
                                (let rec h_1_1_1 = 'a' in
                                  (fun ys_1_1_7 -> 
                                    (`LH_C(h_1_1_1, (t_1_0_9 ys_1_1_7)))))) in
                                (let rec h_1_1_2 = ' ' in
                                  (fun ys_1_1_8 -> 
                                    (`LH_C(h_1_1_2, (t_1_0_8 ys_1_1_8)))))) in
                                (let rec h_1_1_3 = 'e' in
                                  (fun ys_1_1_9 -> 
                                    (`LH_C(h_1_1_3, (t_1_0_7 ys_1_1_9)))))) in
                                (let rec h_1_1_4 = 'v' in
                                  (fun ys_1_2_0 -> 
                                    (`LH_C(h_1_1_4, (t_1_0_6 ys_1_2_0)))))) in
                                (let rec h_1_1_5 = 'o' in
                                  (fun ys_1_2_1 -> 
                                    (`LH_C(h_1_1_5, (t_1_0_5 ys_1_2_1)))))) in
                                (let rec h_1_1_6 = 'm' in
                                  (fun ys_1_2_2 -> 
                                    (`LH_C(h_1_1_6, (t_1_0_4 ys_1_2_2)))))) in
                                (let rec h_1_1_7 = ' ' in
                                  (fun ys_1_2_3 -> 
                                    (`LH_C(h_1_1_7, (t_1_0_3 ys_1_2_3)))))) in
                                (let rec h_1_1_8 = 'o' in
                                  (fun ys_1_2_4 -> 
                                    (`LH_C(h_1_1_8, (t_1_0_2 ys_1_2_4)))))) in
                                (let rec h_1_1_9 = 't' in
                                  (fun ys_1_2_5 -> 
                                    (`LH_C(h_1_1_9, (t_1_0_1 ys_1_2_5)))))) in
                                (let rec h_1_2_0 = ' ' in
                                  (fun ys_1_2_6 -> 
                                    (`LH_C(h_1_2_0, (t_1_0_0 ys_1_2_6))))))) (string_of_int _lh_testMate_nofib_LH_P2_1_1))) (let rec t_1_2_1 = (fun ys_1_2_7 -> 
                                ys_1_2_7) in
                                (let rec h_1_2_1 = '|' in
                                  (fun ys_1_2_8 -> 
                                    (let rec t_1_2_2 = (t_1_2_1 ys_1_2_8) in
                                      (let rec h_1_2_2 = h_1_2_1 in
                                        (fun ys_1_2_9 -> 
                                          (`LH_C(h_1_2_2, (t_1_2_2 ys_1_2_9)))))))))) (let rec t_1_2_3 = (fun ys_1_3_0 -> 
                                ys_1_3_0) in
                                (let rec h_1_2_3 = '|' in
                                  (fun ys_1_3_1 -> 
                                    (`LH_C(h_1_2_3, (t_1_2_3 ys_1_3_1))))))) (((solve_lh__d1 _lh_testMate_nofib_LH_P2_0_2) _lh_testMate_nofib_LH_P2_0_1) _lh_testMate_nofib_LH_P2_1_1))))))))
                | _ -> 
                  (failwith "error")))))
      else
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d0 xs_1_8 ys_7_1 =
  (match xs_1_8 with
    | `LH_C(h_6_5, t_6_5) -> 
      (let rec t_6_6 = ((mappend_lh__d2_d0 t_6_5) ys_7_1) in
        (let rec h_6_6 = h_6_5 in
          (fun f_2_4 i_1_2 -> 
            ((f_2_4 h_6_6) ((t_6_6 f_2_4) i_1_2)))))
    | `LH_N -> 
      ys_7_1);;
let rec take_lh__d1 n_2 ls_1_3 =
  (if (n_2 > 0) then
    (match ls_1_3 with
      | `LH_C(h_5_9, t_5_9) -> 
        (let rec ty_0 = ((take_lh__d1 (n_2 - 1)) t_5_9) in
          (let rec hy_0 = h_5_9 in
            (fun f_1_7 hx_1 tx_1 -> 
              (let rec t_6_0 = ((tx_1 f_1_7) ty_0) in
                (let rec h_6_0 = ((f_1_7 hx_1) hy_0) in
                  (fun _lh_dummy_4 -> 
                    ((mappend_lh__d2_d0 h_6_0) (t_6_0 99))))))))
      | `LH_N -> 
        (fun f_1_8 hx_2 tx_2 _lh_dummy_5 f_1_9 i_9 -> 
          i_9))
  else
    (fun f_2_0 hx_3 tx_3 _lh_dummy_6 f_2_1 i_1_0 -> 
      i_1_0));;
let rec enumFromTo_lh__d4 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec tx_0 = ((enumFromTo_lh__d4 (a_2 + 1)) b_2) in
      (let rec hx_0 = a_2 in
        (fun f_3 ys_5 -> 
          (((ys_5 f_3) hx_0) tx_0))))
  else
    (fun f_4 ys_6 -> 
      (`LH_N)));;
let rec filter_lh__d2 f_3_9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_1_2_7, t_1_2_7) -> 
      (if (f_3_9 h_1_2_7) then
        (let rec ty_1 = ((filter_lh__d2 f_3_9) t_1_2_7) in
          (let rec hy_1 = h_1_2_7 in
            (fun f_4_0 hx_5 tx_5 -> 
              (`LH_C(((f_4_0 hx_5) hy_1), ((tx_5 f_4_0) ty_1))))))
      else
        ((filter_lh__d2 f_3_9) t_1_2_7))
    | `LH_N -> 
      (fun f_4_1 hx_6 tx_6 -> 
        (`LH_N)));;
let rec isUpper_lh__d1 _lh_isUpper_arg1_0 =
  (let rec _lh_matchIdent_3_7 = _lh_isUpper_arg1_0 in
    (match _lh_matchIdent_3_7 with
      | 'A' -> 
        true
      | 'B' -> 
        true
      | 'C' -> 
        true
      | 'D' -> 
        true
      | 'E' -> 
        true
      | 'F' -> 
        true
      | 'G' -> 
        true
      | 'H' -> 
        true
      | 'I' -> 
        true
      | 'J' -> 
        true
      | 'K' -> 
        true
      | 'L' -> 
        true
      | 'M' -> 
        true
      | 'N' -> 
        true
      | 'O' -> 
        true
      | 'P' -> 
        true
      | 'Q' -> 
        true
      | 'R' -> 
        true
      | 'S' -> 
        true
      | 'T' -> 
        true
      | 'U' -> 
        true
      | 'V' -> 
        true
      | 'W' -> 
        true
      | 'X' -> 
        true
      | 'Y' -> 
        true
      | 'Z' -> 
        true
      | _ -> 
        false));;
let rec parseSquare_lh__d1 _lh_parseSquare_arg1_0 _lh_parseSquare_arg2_0 _lh_parseSquare_arg3_0 =
  (match _lh_parseSquare_arg3_0 with
    | '-' -> 
      (`LH_N)
    | _ -> 
      (let rec clr_0 = (if (isUpper_lh__d1 _lh_parseSquare_arg3_0) then
        (`Black)
      else
        (`White)) in
        (let rec kin_0 = (let rec _lh_matchIdent_6_7 = (toLower_lh__d1 _lh_parseSquare_arg3_0) in
          (match _lh_matchIdent_6_7 with
            | 'k' -> 
              (`King)
            | 'q' -> 
              (`Queen)
            | 'r' -> 
              (`Rook)
            | 'b' -> 
              (`Bishop)
            | 'n' -> 
              (`Knight)
            | 'p' -> 
              (`Pawn)
            | _ -> 
              (failwith "error"))) in
          (`LH_C((`LH_P2((`LH_P2(clr_0, kin_0)), (`LH_P2(_lh_parseSquare_arg2_0, _lh_parseSquare_arg1_0)))), (`LH_N))))));;
let rec parseRank_lh__d1 _lh_parseRank_arg1_0 _lh_parseRank_arg2_0 =
  ((fun _lh_funcomp_x_3 -> 
    ((fun _lh_funcomp_x_4 -> 
      (concat_lh__d3 ((((enumFromTo_lh__d4 1) 8) (parseSquare_lh__d1 _lh_parseRank_arg1_0)) _lh_funcomp_x_4))) ((filter_lh__d2 (fun x_0 -> 
      (not (x_0 = ' ')))) _lh_funcomp_x_3))) _lh_parseRank_arg2_0);;
let rec putPieceAt_lh__d1 _lh_putPieceAt_arg1_1 _lh_putPieceAt_arg2_1 _lh_putPieceAt_arg3_1 =
  (match _lh_putPieceAt_arg2_1 with
    | `LH_P2(_lh_putPieceAt_LH_P2_0_1, _lh_putPieceAt_LH_P2_1_1) -> 
      (match _lh_putPieceAt_LH_P2_0_1 with
        | `White -> 
          (match _lh_putPieceAt_arg3_1 with
            | `Board(_lh_putPieceAt_Board_0_2, _lh_putPieceAt_Board_1_2) -> 
              (`Board((`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_1, _lh_putPieceAt_arg1_1)), _lh_putPieceAt_Board_0_2)), _lh_putPieceAt_Board_1_2))
            | _ -> 
              (failwith "error"))
        | `Black -> 
          (match _lh_putPieceAt_arg3_1 with
            | `Board(_lh_putPieceAt_Board_0_3, _lh_putPieceAt_Board_1_3) -> 
              (`Board(_lh_putPieceAt_Board_0_3, (`LH_C((`LH_P2(_lh_putPieceAt_LH_P2_1_1, _lh_putPieceAt_arg1_1)), _lh_putPieceAt_Board_1_3))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d3 a_9 b_8 =
  (if (a_9 <= b_8) then
    (let rec t_8_3 = ((enumFromTo_lh__d3 (a_9 + 1)) b_8) in
      (let rec h_8_3 = a_9 in
        (fun a_1_0 -> 
          (t_8_3 (let rec tx_4 = a_1_0 in
            (let rec hx_4 = h_8_3 in
              (fun f_3_4 ys_8_5 -> 
                (((ys_8_5 f_3_4) hx_4) tx_4))))))))
  else
    (fun a_1_1 -> 
      a_1_1));;
let rec emptyBoard_lh__d1 =
  (`Board((`LH_N), (`LH_N)));;
let rec reverse_lh__d2 ls_2_8 =
  (ls_2_8 (fun f_4_2 ys_1_3_9 _lh_dummy_1_1 f_4_3 i_1_4 -> 
    i_1_4));;
let rec parseBoard_lh__d1 _lh_parseBoard_arg1_0 =
  (let rec addPiece_0 = (fun p_sq_0 -> 
    (let rec _lh_matchIdent_1_3 = p_sq_0 in
      (match _lh_matchIdent_1_3 with
        | `LH_P2(_lh_parseBoard_LH_P2_0_0, _lh_parseBoard_LH_P2_1_0) -> 
          ((putPieceAt_lh__d1 _lh_parseBoard_LH_P2_1_0) _lh_parseBoard_LH_P2_0_0)
        | _ -> 
          (failwith "error")))) in
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        (((_lh_funcomp_x_2 99) addPiece_0) emptyBoard_lh__d1)) (((reverse_lh__d2 ((enumFromTo_lh__d3 1) 8)) parseRank_lh__d1) _lh_funcomp_x_1))) _lh_parseBoard_arg1_0));;
let rec splitAt_lh__d1 _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (let rec _lh_parseProblem_LH_P2_1_0 = ((drop_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0) in
    (let rec _lh_parseProblem_LH_P2_0_0 = ((take_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0) in
      (fun _lh_dummy_0 -> 
        (let rec bd_0 = (parseBoard_lh__d1 _lh_parseProblem_LH_P2_0_0) in
          (let rec gl_0 = (_lh_parseProblem_LH_P2_1_0 99) in
            (let rec _lh_testMate_nofib_LH_P2_1_0 = gl_0 in
              (let rec _lh_testMate_nofib_LH_P2_0_0 = bd_0 in
                (fun _lh_dummy_1 -> 
                  (_lh_testMate_nofib_LH_P2_1_0 _lh_testMate_nofib_LH_P2_0_0)))))))));;
let rec take_lh__d2 n_1 ls_1_2 =
  (if (n_1 > 0) then
    (match ls_1_2 with
      | `LH_C(h_4_3, t_4_3) -> 
        (`LH_C(h_4_3, ((take_lh__d2 (n_1 - 1)) t_4_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec comment_lh__d1 _lh_comment_arg1_0 =
  ((_lh_comment_arg1_0 = (`LH_N)) || (((take_lh__d2 2) _lh_comment_arg1_0) = (`LH_C('-', (`LH_C('-', (`LH_N)))))));;
let rec break_lh__d1 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (fun _lh_dummy_7 f_3_2 -> 
        (`LH_N))))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (let rec _lh_lines_LH_C_1_0 = _lh_break_LH_C_1_1 in
          (let rec _lh_lines_LH_C_0_0 = _lh_break_LH_C_0_1 in
            (fun _lh_dummy_8 -> 
              (let rec _lh_matchIdent_6_4 = ((break_lh__d1 (fun x_9 -> 
                (x_9 = '|'))) _lh_lines_LH_C_1_0) in
                (match _lh_matchIdent_6_4 with
                  | `LH_P2(_lh_lines_LH_P2_0_2, _lh_lines_LH_P2_1_2) -> 
                    (let rec t_8_0 = (let rec _lh_matchIdent_6_5 = _lh_lines_LH_P2_1_2 in
                      (_lh_matchIdent_6_5 99)) in
                      (let rec h_8_0 = _lh_lines_LH_P2_0_2 in
                        (fun f_3_3 -> 
                          (if (f_3_3 h_8_0) then
                            (`LH_C(h_8_0, (t_8_0 f_3_3)))
                          else
                            (t_8_0 f_3_3)))))
                  | _ -> 
                    (failwith "error"))))))))
      else
        (let rec _lh_matchIdent_6_6 = ((break_lh__d1 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_6_6 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec readProblem_lh__d1 _lh_readProblem_arg1_0 =
  ((fun _lh_funcomp_x_5 -> 
    (let rec bdtxt_gltxt_1 = ((splitAt_lh__d1 8) ((let rec _lh_matchIdent_4_7 = ((break_lh__d1 (fun x_8 -> 
      (x_8 = '|'))) _lh_funcomp_x_5) in
      (match _lh_matchIdent_4_7 with
        | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
          (let rec t_5_8 = (let rec _lh_matchIdent_4_8 = _lh_lines_LH_P2_1_1 in
            (_lh_matchIdent_4_8 99)) in
            (let rec h_5_8 = _lh_lines_LH_P2_0_1 in
              (fun f_1_6 -> 
                (if (f_1_6 h_5_8) then
                  (`LH_C(h_5_8, (t_5_8 f_1_6)))
                else
                  (t_5_8 f_1_6)))))
        | _ -> 
          (failwith "error"))) (fun _lh_funcomp_x_6 -> 
      (not (comment_lh__d1 _lh_funcomp_x_6))))) in
      (let rec _lh_matchIdent_4_9 = bdtxt_gltxt_1 in
        (_lh_matchIdent_4_9 99)))) _lh_readProblem_arg1_0);;
end;;

