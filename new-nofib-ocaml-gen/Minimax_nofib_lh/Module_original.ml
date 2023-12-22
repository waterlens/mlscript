
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec testBoard_lh =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec min'_lh _lh_min'_arg1_0 _lh_min'_arg2_0 =
  (match _lh_min'_arg1_0 with
    | `OWin -> 
      (`OWin)
    | _ -> 
      (match _lh_min'_arg2_0 with
        | `OWin -> 
          (`OWin)
        | _ -> 
          (match _lh_min'_arg2_0 with
            | `XWin -> 
              _lh_min'_arg1_0
            | _ -> 
              (match _lh_min'_arg1_0 with
                | `XWin -> 
                  _lh_min'_arg2_0
                | _ -> 
                  (match _lh_min'_arg1_0 with
                    | `Score(_lh_min'_Score_0_0) -> 
                      (match _lh_min'_arg2_0 with
                        | `Score(_lh_min'_Score_0_1) -> 
                          (if (_lh_min'_Score_0_0 < _lh_min'_Score_0_1) then
                            (`Score(_lh_min'_Score_0_0))
                          else
                            (`Score(_lh_min'_Score_0_1)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec showPiece_lh _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec max'_lh _lh_max'_arg1_0 _lh_max'_arg2_0 =
  (match _lh_max'_arg1_0 with
    | `XWin -> 
      (`XWin)
    | _ -> 
      (match _lh_max'_arg2_0 with
        | `XWin -> 
          (`XWin)
        | _ -> 
          (match _lh_max'_arg2_0 with
            | `OWin -> 
              _lh_max'_arg1_0
            | _ -> 
              (match _lh_max'_arg1_0 with
                | `OWin -> 
                  _lh_max'_arg2_0
                | _ -> 
                  (match _lh_max'_arg1_0 with
                    | `Score(_lh_max'_Score_0_0) -> 
                      (match _lh_max'_arg2_0 with
                        | `Score(_lh_max'_Score_0_1) -> 
                          (if (_lh_max'_Score_0_0 > _lh_max'_Score_0_1) then
                            (`Score(_lh_max'_Score_0_0))
                          else
                            (`Score(_lh_max'_Score_0_1)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec best_lh _lh_best_arg1_0 _lh_best_arg2_0 _lh_best_arg3_0 =
  (match _lh_best_arg2_0 with
    | `LH_C(_lh_best_LH_C_0_0, _lh_best_LH_C_1_0) -> 
      (match _lh_best_arg3_0 with
        | `LH_C(_lh_best_LH_C_0_1, _lh_best_LH_C_1_1) -> 
          (let rec best'_0 = (fun b_1 s_0 ls1_0 ls2_0 -> 
            (let rec _lh_matchIdent_2 = ls1_0 in
              (match _lh_matchIdent_2 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3 = ls2_0 in
                    (match _lh_matchIdent_3 with
                      | `LH_N -> 
                        (`LH_P2(b_1, s_0))
                      | _ -> 
                        (failwith "error")))
                | `LH_C(_lh_best_LH_C_0_2, _lh_best_LH_C_1_2) -> 
                  (let rec _lh_matchIdent_4 = ls2_0 in
                    (match _lh_matchIdent_4 with
                      | `LH_C(_lh_best_LH_C_0_3, _lh_best_LH_C_1_3) -> 
                        (if (s_0 = ((_lh_best_arg1_0 s_0) _lh_best_LH_C_0_3)) then
                          ((((best'_0 b_1) s_0) _lh_best_LH_C_1_2) _lh_best_LH_C_1_3)
                        else
                          ((((best'_0 _lh_best_LH_C_0_2) _lh_best_LH_C_0_3) _lh_best_LH_C_1_2) _lh_best_LH_C_1_3))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))) in
            ((((best'_0 _lh_best_LH_C_0_0) _lh_best_LH_C_0_1) _lh_best_LH_C_1_0) _lh_best_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec empty'_lh _lh_empty'_arg1_0 _lh_empty'_arg2_0 =
  (match _lh_empty'_arg1_0 with
    | 1 -> 
      (match _lh_empty'_arg2_0 with
        | `LH_C(_lh_empty'_LH_C_0_0, _lh_empty'_LH_C_1_0) -> 
          (match _lh_empty'_LH_C_0_0 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_0 with
                | `LH_C(_lh_empty'_LH_C_0_1, _lh_empty'_LH_C_1_1) -> 
                  (match _lh_empty'_LH_C_1_1 with
                    | `LH_C(_lh_empty'_LH_C_0_2, _lh_empty'_LH_C_1_2) -> 
                      (match _lh_empty'_LH_C_1_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_0 with
        | `LH_C(_lh_empty'_LH_C_0_3, _lh_empty'_LH_C_1_3) -> 
          (match _lh_empty'_LH_C_1_3 with
            | `LH_C(_lh_empty'_LH_C_0_4, _lh_empty'_LH_C_1_4) -> 
              (match _lh_empty'_LH_C_0_4 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_4 with
                    | `LH_C(_lh_empty'_LH_C_0_5, _lh_empty'_LH_C_1_5) -> 
                      (match _lh_empty'_LH_C_1_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_0 with
        | `LH_C(_lh_empty'_LH_C_0_6, _lh_empty'_LH_C_1_6) -> 
          (match _lh_empty'_LH_C_1_6 with
            | `LH_C(_lh_empty'_LH_C_0_7, _lh_empty'_LH_C_1_7) -> 
              (match _lh_empty'_LH_C_1_7 with
                | `LH_C(_lh_empty'_LH_C_0_8, _lh_empty'_LH_C_1_8) -> 
                  (match _lh_empty'_LH_C_0_8 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec insert_lh _lh_insert_arg1_0 _lh_insert_arg2_0 _lh_insert_arg3_0 =
  (match _lh_insert_arg2_0 with
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (match _lh_insert_LH_C_1_0 with
        | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
          (match _lh_insert_LH_C_1_1 with
            | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
              (match _lh_insert_LH_C_1_2 with
                | `LH_N -> 
                  (match _lh_insert_arg3_0 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_1, (`LH_C(_lh_insert_LH_C_0_2, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_0, (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_2, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_0, (`LH_C(_lh_insert_LH_C_0_1, (`LH_C(_lh_insert_arg1_0, (`LH_N)))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec opposite_lh _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec foldr_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr_lh f_1) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec interpret_lh _lh_interpret_arg1_0 _lh_interpret_arg2_0 =
  (match _lh_interpret_arg2_0 with
    | `LH_N -> 
      (`Score(_lh_interpret_arg1_0))
    | `LH_C(_lh_interpret_LH_C_0_0, _lh_interpret_LH_C_1_0) -> 
      (match _lh_interpret_LH_C_0_0 with
        | `Score(_lh_interpret_Score_0_0) -> 
          ((interpret_lh (_lh_interpret_arg1_0 + _lh_interpret_Score_0_0)) _lh_interpret_LH_C_1_0)
        | `XWin -> 
          (`XWin)
        | `OWin -> 
          (`OWin)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec win1_lh =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2_lh =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8_lh =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5_lh =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win3_lh =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6_lh =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7_lh =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win4_lh =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec eval_lh _lh_eval_arg1_0 =
  (if (_lh_eval_arg1_0 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_0 = (0 - 3)) then
      (`OWin)
    else
      (`Score(_lh_eval_arg1_0))));;
let rec sum_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (h_4 + (sum_lh t_4))
    | `LH_N -> 
      0);;
let rec map2_lh _lh_map2_arg1_0 _lh_map2_arg2_0 _lh_map2_arg3_0 =
  (match _lh_map2_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_0 with
            | `LH_C(_lh_map2_LH_C_0_0, _lh_map2_LH_C_1_0) -> 
              (match _lh_map2_arg3_0 with
                | `LH_C(_lh_map2_LH_C_0_1, _lh_map2_LH_C_1_1) -> 
                  (`LH_C(((_lh_map2_arg1_0 _lh_map2_LH_C_0_0) _lh_map2_LH_C_0_1), (((map2_lh _lh_map2_arg1_0) _lh_map2_LH_C_1_0) _lh_map2_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec scorePiece_lh _lh_scorePiece_arg1_0 _lh_scorePiece_arg2_0 =
  (match _lh_scorePiece_arg1_0 with
    | `X -> 
      _lh_scorePiece_arg2_0
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec and_lh _lh_and_arg1_0 =
  (match _lh_and_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_and_LH_C_0_0, _lh_and_LH_C_1_0) -> 
      (if _lh_and_LH_C_0_0 then
        (and_lh _lh_and_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh t_2))
    | `LH_N -> 
      0);;
let rec showRow_lh _lh_showRow_arg1_0 =
  (match _lh_showRow_arg1_0 with
    | `LH_C(_lh_showRow_LH_C_0_0, _lh_showRow_LH_C_1_0) -> 
      (match _lh_showRow_LH_C_1_0 with
        | `LH_C(_lh_showRow_LH_C_0_1, _lh_showRow_LH_C_1_1) -> 
          (match _lh_showRow_LH_C_1_1 with
            | `LH_C(_lh_showRow_LH_C_0_2, _lh_showRow_LH_C_1_2) -> 
              (match _lh_showRow_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (showPiece_lh _lh_showRow_LH_C_0_0)) (`LH_C('|', (`LH_N))))) (showPiece_lh _lh_showRow_LH_C_0_1))) (`LH_C('|', (`LH_N))))) (showPiece_lh _lh_showRow_LH_C_0_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec showEvaluation_lh _lh_showEvaluation_arg1_0 =
  (match _lh_showEvaluation_arg1_0 with
    | `XWin -> 
      (`LH_C('X', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `OWin -> 
      (`LH_C('O', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `Score(_lh_showEvaluation_Score_0_0) -> 
      ((mappend_lh (`LH_C('S', (`LH_C('c', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_N)))))))))))) (string_of_int _lh_showEvaluation_Score_0_0))
    | _ -> 
      (failwith "error"));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_5, t_5) -> 
      ((mappend_lh h_5) (concat_lh t_5))
    | `LH_N -> 
      (`LH_N));;
let rec empty_lh _lh_empty_arg1_0 _lh_empty_arg2_0 =
  (match _lh_empty_arg1_0 with
    | `LH_P2(_lh_empty_LH_P2_0_0, _lh_empty_LH_P2_1_0) -> 
      (match _lh_empty_LH_P2_0_0 with
        | 1 -> 
          (match _lh_empty_arg2_0 with
            | `LH_C(_lh_empty_LH_C_0_0, _lh_empty_LH_C_1_0) -> 
              (match _lh_empty_LH_C_1_0 with
                | `LH_C(_lh_empty_LH_C_0_1, _lh_empty_LH_C_1_1) -> 
                  (match _lh_empty_LH_C_1_1 with
                    | `LH_C(_lh_empty_LH_C_0_2, _lh_empty_LH_C_1_2) -> 
                      (match _lh_empty_LH_C_1_2 with
                        | `LH_N -> 
                          ((empty'_lh _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_0)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_0 with
            | `LH_C(_lh_empty_LH_C_0_3, _lh_empty_LH_C_1_3) -> 
              (match _lh_empty_LH_C_1_3 with
                | `LH_C(_lh_empty_LH_C_0_4, _lh_empty_LH_C_1_4) -> 
                  (match _lh_empty_LH_C_1_4 with
                    | `LH_C(_lh_empty_LH_C_0_5, _lh_empty_LH_C_1_5) -> 
                      (match _lh_empty_LH_C_1_5 with
                        | `LH_N -> 
                          ((empty'_lh _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_4)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_0 with
            | `LH_C(_lh_empty_LH_C_0_6, _lh_empty_LH_C_1_6) -> 
              (match _lh_empty_LH_C_1_6 with
                | `LH_C(_lh_empty_LH_C_0_7, _lh_empty_LH_C_1_7) -> 
                  (match _lh_empty_LH_C_1_7 with
                    | `LH_C(_lh_empty_LH_C_0_8, _lh_empty_LH_C_1_8) -> 
                      (match _lh_empty_LH_C_1_8 with
                        | `LH_N -> 
                          ((empty'_lh _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_8)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec prune_lh _lh_prune_arg1_0 _lh_prune_arg2_0 =
  (match _lh_prune_arg1_0 with
    | 0 -> 
      (match _lh_prune_arg2_0 with
        | `Branch(_lh_prune_Branch_0_0, _lh_prune_Branch_1_0) -> 
          (`Branch(_lh_prune_Branch_0_0, (`LH_N)))
        | _ -> 
          (match _lh_prune_arg2_0 with
            | `Branch(_lh_prune_Branch_0_1, _lh_prune_Branch_1_1) -> 
              (if (_lh_prune_arg1_0 < 0) then
                ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
              else
                (`Branch(_lh_prune_Branch_0_1, ((map_lh (prune_lh (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_1))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (match _lh_prune_arg2_0 with
        | `Branch(_lh_prune_Branch_0_2, _lh_prune_Branch_1_2) -> 
          (if (_lh_prune_arg1_0 < 0) then
            ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
          else
            (`Branch(_lh_prune_Branch_0_2, ((map_lh (prune_lh (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_2))))
        | _ -> 
          (failwith "error")));;
let rec repTree_lh _lh_repTree_arg1_0 _lh_repTree_arg2_0 _lh_repTree_arg3_0 =
  (`Branch(_lh_repTree_arg3_0, ((map_lh ((repTree_lh _lh_repTree_arg2_0) _lh_repTree_arg1_0)) (_lh_repTree_arg1_0 _lh_repTree_arg3_0))));;
let rec mise_lh _lh_mise_arg1_0 _lh_mise_arg2_0 _lh_mise_arg3_0 =
  (match _lh_mise_arg3_0 with
    | `Branch(_lh_mise_Branch_0_0, _lh_mise_Branch_1_0) -> 
      (match _lh_mise_Branch_1_0 with
        | `LH_N -> 
          _lh_mise_Branch_0_0
        | _ -> 
          (((foldr_lh _lh_mise_arg1_0) ((_lh_mise_arg2_0 (`OWin)) (`XWin))) ((map_lh ((mise_lh _lh_mise_arg2_0) _lh_mise_arg1_0)) _lh_mise_Branch_1_0)))
    | _ -> 
      (failwith "error"));;
let rec cropTree_lh _lh_cropTree_arg1_0 =
  (match _lh_cropTree_arg1_0 with
    | `Branch(_lh_cropTree_Branch_0_0, _lh_cropTree_Branch_1_0) -> 
      (match _lh_cropTree_Branch_1_0 with
        | `LH_N -> 
          (`Branch(_lh_cropTree_Branch_0_0, (`LH_N)))
        | _ -> 
          (match _lh_cropTree_Branch_0_0 with
            | `Score(_lh_cropTree_Score_0_0) -> 
              (`Branch((`Score(_lh_cropTree_Score_0_0)), ((map_lh cropTree_lh) _lh_cropTree_Branch_1_0)))
            | _ -> 
              (`Branch(_lh_cropTree_Branch_0_0, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec mapTree_lh _lh_mapTree_arg1_0 _lh_mapTree_arg2_0 =
  (match _lh_mapTree_arg2_0 with
    | `Branch(_lh_mapTree_Branch_0_0, _lh_mapTree_Branch_1_0) -> 
      (`Branch((_lh_mapTree_arg1_0 _lh_mapTree_Branch_0_0), ((map_lh (mapTree_lh _lh_mapTree_arg1_0)) _lh_mapTree_Branch_1_0)))
    | _ -> 
      (failwith "error"));;
let rec wins_lh =
  (`LH_C(win1_lh, (`LH_C(win2_lh, (`LH_C(win3_lh, (`LH_C(win4_lh, (`LH_C(win5_lh, (`LH_C(win6_lh, (`LH_C(win7_lh, (`LH_C(win8_lh, (`LH_N)))))))))))))))));;
let rec score_lh _lh_score_arg1_0 _lh_score_arg2_0 =
  (eval_lh (sum_lh ((map_lh sum_lh) (((map2_lh (map2_lh scorePiece_lh)) _lh_score_arg1_0) _lh_score_arg2_0))));;
let rec showBoard_lh _lh_showBoard_arg1_0 =
  (match _lh_showBoard_arg1_0 with
    | `LH_C(_lh_showBoard_LH_C_0_0, _lh_showBoard_LH_C_1_0) -> 
      (match _lh_showBoard_LH_C_1_0 with
        | `LH_C(_lh_showBoard_LH_C_0_1, _lh_showBoard_LH_C_1_1) -> 
          (match _lh_showBoard_LH_C_1_1 with
            | `LH_C(_lh_showBoard_LH_C_0_2, _lh_showBoard_LH_C_1_2) -> 
              (match _lh_showBoard_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (showRow_lh _lh_showBoard_LH_C_0_0)) (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N))))))))))))))))))) (showRow_lh _lh_showBoard_LH_C_0_1))) (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N))))))))))))))))))) (showRow_lh _lh_showBoard_LH_C_0_2))) (`LH_C('|', (`LH_C('|', (`LH_N))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec placePiece_lh _lh_placePiece_arg1_0 _lh_placePiece_arg2_0 _lh_placePiece_arg3_0 =
  (if (not ((empty_lh _lh_placePiece_arg3_0) _lh_placePiece_arg2_0)) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_0 = _lh_placePiece_arg2_0 in
      (match _lh_matchIdent_0 with
        | `LH_C(_lh_placePiece_LH_C_0_0, _lh_placePiece_LH_C_1_0) -> 
          (match _lh_placePiece_LH_C_1_0 with
            | `LH_C(_lh_placePiece_LH_C_0_1, _lh_placePiece_LH_C_1_1) -> 
              (match _lh_placePiece_LH_C_1_1 with
                | `LH_C(_lh_placePiece_LH_C_0_2, _lh_placePiece_LH_C_1_2) -> 
                  (match _lh_placePiece_LH_C_1_2 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_1 = _lh_placePiece_arg3_0 in
                        (match _lh_matchIdent_1 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_0, _lh_placePiece_LH_P2_1_0) -> 
                            (match _lh_placePiece_LH_P2_0_0 with
                              | 1 -> 
                                (`LH_C((`LH_C((((insert_lh _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_0) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))), (`LH_N)))
                              | 2 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C((((insert_lh _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_1) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))), (`LH_N)))
                              | 3 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C((((insert_lh _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_2) _lh_placePiece_LH_P2_1_0), (`LH_N))))))), (`LH_N)))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))));;
let rec static_lh _lh_static_arg1_0 =
  ((interpret_lh 0) ((map_lh (score_lh _lh_static_arg1_0)) wins_lh));;
let rec fullBoard_lh _lh_fullBoard_arg1_0 =
  (and_lh ((map_lh (fun x_0 -> 
    (not (x_0 = (`Empty))))) (concat_lh _lh_fullBoard_arg1_0)));;
let rec showMove_lh _lh_showMove_arg1_0 =
  (match _lh_showMove_arg1_0 with
    | `LH_P2(_lh_showMove_LH_P2_0_0, _lh_showMove_LH_P2_1_0) -> 
      ((mappend_lh ((mappend_lh (showEvaluation_lh _lh_showMove_LH_P2_1_0)) (`LH_C('|', (`LH_N))))) (showBoard_lh _lh_showMove_LH_P2_0_0))
    | _ -> 
      (failwith "error"));;
let rec newPositions_lh _lh_newPositions_arg1_0 _lh_newPositions_arg2_0 =
  (concat_lh ((map_lh ((placePiece_lh _lh_newPositions_arg1_0) _lh_newPositions_arg2_0)) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
          (match _lh_listcomp_fun_para_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            | `LH_N -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
          (_lh_listcomp_fun_1 ((enumFromTo_lh 1) 3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 ((enumFromTo_lh 1) 3)))));;
let rec searchTree_lh _lh_searchTree_arg1_0 _lh_searchTree_arg2_0 =
  ((prune_lh 5) (((repTree_lh (newPositions_lh _lh_searchTree_arg1_0)) (newPositions_lh (opposite_lh _lh_searchTree_arg1_0))) _lh_searchTree_arg2_0));;
let rec bestMove_lh _lh_bestMove_arg1_0 _lh_bestMove_arg2_0 _lh_bestMove_arg3_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (((mise_lh _lh_bestMove_arg2_0) _lh_bestMove_arg3_0) (cropTree_lh _lh_funcomp_x_1))) ((fun _lh_funcomp_x_2 -> 
    ((mapTree_lh static_lh) ((searchTree_lh _lh_bestMove_arg1_0) _lh_funcomp_x_2))) _lh_funcomp_x_0));;
let rec alternate_lh _lh_alternate_arg1_0 _lh_alternate_arg2_0 _lh_alternate_arg3_0 _lh_alternate_arg4_0 =
  (if (fullBoard_lh _lh_alternate_arg4_0) then
    (`LH_N)
  else
    (if ((static_lh _lh_alternate_arg4_0) = (`XWin)) then
      (`LH_N)
    else
      (if ((static_lh _lh_alternate_arg4_0) = (`OWin)) then
        (`LH_N)
      else
        (let rec opposition_0 = (opposite_lh _lh_alternate_arg1_0) in
          (let rec possibles_0 = ((newPositions_lh _lh_alternate_arg1_0) _lh_alternate_arg4_0) in
            (let rec scores_0 = ((map_lh (((bestMove_lh opposition_0) _lh_alternate_arg3_0) _lh_alternate_arg2_0)) possibles_0) in
              (let rec boardd_eval_0 = (((best_lh _lh_alternate_arg2_0) possibles_0) scores_0) in
                (let rec _lh_matchIdent_5 = boardd_eval_0 in
                  (match _lh_matchIdent_5 with
                    | `LH_P2(_lh_alternate_LH_P2_0_0, _lh_alternate_LH_P2_1_0) -> 
                      (`LH_C((`LH_P2(_lh_alternate_LH_P2_0_0, _lh_alternate_LH_P2_1_0)), ((((alternate_lh opposition_0) _lh_alternate_arg3_0) _lh_alternate_arg2_0) _lh_alternate_LH_P2_0_0)))
                    | _ -> 
                      (failwith "error"))))))))));;
let rec prog_lh _lh_prog_arg1_0 =
  (let rec board_0 = (fun _lh_board_arg1_0 -> 
    (match _lh_board_arg1_0 with
      | `LH_C(_lh_board_LH_C_0_0, _lh_board_LH_C_1_0) -> 
        (match _lh_board_LH_C_0_0 with
          | 'd' -> 
            (match _lh_board_LH_C_1_0 with
              | `LH_C(_lh_board_LH_C_0_1, _lh_board_LH_C_1_1) -> 
                (match _lh_board_LH_C_0_1 with
                  | 'o' -> 
                    (match _lh_board_LH_C_1_1 with
                      | `LH_C(_lh_board_LH_C_0_2, _lh_board_LH_C_1_2) -> 
                        (match _lh_board_LH_C_0_2 with
                          | 'e' -> 
                            (match _lh_board_LH_C_1_2 with
                              | `LH_C(_lh_board_LH_C_0_3, _lh_board_LH_C_1_3) -> 
                                (match _lh_board_LH_C_0_3 with
                                  | 's' -> 
                                    (match _lh_board_LH_C_1_3 with
                                      | `LH_C(_lh_board_LH_C_0_4, _lh_board_LH_C_1_4) -> 
                                        (match _lh_board_LH_C_0_4 with
                                          | 'n' -> 
                                            (match _lh_board_LH_C_1_4 with
                                              | `LH_C(_lh_board_LH_C_0_5, _lh_board_LH_C_1_5) -> 
                                                (match _lh_board_LH_C_0_5 with
                                                  | 't' -> 
                                                    (match _lh_board_LH_C_1_5 with
                                                      | `LH_C(_lh_board_LH_C_0_6, _lh_board_LH_C_1_6) -> 
                                                        (match _lh_board_LH_C_0_6 with
                                                          | ' ' -> 
                                                            (match _lh_board_LH_C_1_6 with
                                                              | `LH_C(_lh_board_LH_C_0_7, _lh_board_LH_C_1_7) -> 
                                                                (match _lh_board_LH_C_0_7 with
                                                                  | 'h' -> 
                                                                    (match _lh_board_LH_C_1_7 with
                                                                      | `LH_C(_lh_board_LH_C_0_8, _lh_board_LH_C_1_8) -> 
                                                                        (match _lh_board_LH_C_0_8 with
                                                                          | 'a' -> 
                                                                            (match _lh_board_LH_C_1_8 with
                                                                              | `LH_C(_lh_board_LH_C_0_9, _lh_board_LH_C_1_9) -> 
                                                                                (match _lh_board_LH_C_0_9 with
                                                                                  | 'p' -> 
                                                                                    (match _lh_board_LH_C_1_9 with
                                                                                      | `LH_C(_lh_board_LH_C_0_1_0, _lh_board_LH_C_1_1_0) -> 
                                                                                        (match _lh_board_LH_C_0_1_0 with
                                                                                          | 'p' -> 
                                                                                            (match _lh_board_LH_C_1_1_0 with
                                                                                              | `LH_C(_lh_board_LH_C_0_1_1, _lh_board_LH_C_1_1_1) -> 
                                                                                                (match _lh_board_LH_C_0_1_1 with
                                                                                                  | 'e' -> 
                                                                                                    (match _lh_board_LH_C_1_1_1 with
                                                                                                      | `LH_C(_lh_board_LH_C_0_1_2, _lh_board_LH_C_1_1_2) -> 
                                                                                                        (match _lh_board_LH_C_0_1_2 with
                                                                                                          | 'n' -> 
                                                                                                            (match _lh_board_LH_C_1_1_2 with
                                                                                                              | `LH_N -> 
                                                                                                                ((mappend_lh testBoard_lh) testBoard_lh)
                                                                                                              | _ -> 
                                                                                                                testBoard_lh)
                                                                                                          | _ -> 
                                                                                                            testBoard_lh)
                                                                                                      | _ -> 
                                                                                                        testBoard_lh)
                                                                                                  | _ -> 
                                                                                                    testBoard_lh)
                                                                                              | _ -> 
                                                                                                testBoard_lh)
                                                                                          | _ -> 
                                                                                            testBoard_lh)
                                                                                      | _ -> 
                                                                                        testBoard_lh)
                                                                                  | _ -> 
                                                                                    testBoard_lh)
                                                                              | _ -> 
                                                                                testBoard_lh)
                                                                          | _ -> 
                                                                            testBoard_lh)
                                                                      | _ -> 
                                                                        testBoard_lh)
                                                                  | _ -> 
                                                                    testBoard_lh)
                                                              | _ -> 
                                                                testBoard_lh)
                                                          | _ -> 
                                                            testBoard_lh)
                                                      | _ -> 
                                                        testBoard_lh)
                                                  | _ -> 
                                                    testBoard_lh)
                                              | _ -> 
                                                testBoard_lh)
                                          | _ -> 
                                            testBoard_lh)
                                      | _ -> 
                                        testBoard_lh)
                                  | _ -> 
                                    testBoard_lh)
                              | _ -> 
                                testBoard_lh)
                          | _ -> 
                            testBoard_lh)
                      | _ -> 
                        testBoard_lh)
                  | _ -> 
                    testBoard_lh)
              | _ -> 
                testBoard_lh)
          | _ -> 
            testBoard_lh)
      | _ -> 
        testBoard_lh)) in
    (let rec game_0 = ((((alternate_lh (`X)) max'_lh) min'_lh) (board_0 _lh_prog_arg1_0)) in
      ((mappend_lh (`LH_C('O', (`LH_C('X', (`LH_C('O', (`LH_C('|', (`LH_N)))))))))) (concat_lh ((map_lh showMove_lh) game_0)))));;
let rec testMinimax_nofib_lh _lh_testMinimax_nofib_arg1_0 =
  (length_lh (prog_lh _lh_testMinimax_nofib_arg1_0));;
end;;

