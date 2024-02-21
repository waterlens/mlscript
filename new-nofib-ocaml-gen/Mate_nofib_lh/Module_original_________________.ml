
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec opponent_lh _lh_opponent_arg1_0 =
  (match _lh_opponent_arg1_0 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec min_lh _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec abs_lh _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec emptyAtAll_lh _lh_emptyAtAll_arg1_0 _lh_emptyAtAll_arg2_0 =
  (match _lh_emptyAtAll_arg1_0 with
    | `Board(_lh_emptyAtAll_Board_0_0, _lh_emptyAtAll_Board_1_0) -> 
      (let rec emptyAtAllAnd_0 = (fun b_1 ls_1_0 -> 
        (let rec _lh_matchIdent_9 = ls_1_0 in
          (match _lh_matchIdent_9 with
            | `LH_N -> 
              b_1
            | `LH_C(_lh_emptyAtAll_LH_C_0_0, _lh_emptyAtAll_LH_C_1_0) -> 
              (match _lh_emptyAtAll_LH_C_0_0 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_0, _lh_emptyAtAll_LH_P2_1_0) -> 
                  ((not (_lh_emptyAtAll_arg2_0 _lh_emptyAtAll_LH_P2_1_0)) && ((emptyAtAllAnd_0 b_1) _lh_emptyAtAll_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_0 ((emptyAtAllAnd_0 true) _lh_emptyAtAll_Board_1_0)) _lh_emptyAtAll_Board_0_0))
    | _ -> 
      (failwith "error"));;
let rec forcesColoured_lh _lh_forcesColoured_arg1_0 _lh_forcesColoured_arg2_0 =
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
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 < _lh_max_arg2_0) then
    _lh_max_arg2_0
  else
    _lh_max_arg1_0);;
let rec kSq_lh _lh_kSq_arg1_0 =
  (match _lh_kSq_arg1_0 with
    | `LH_C(_lh_kSq_LH_C_0_0, _lh_kSq_LH_C_1_0) -> 
      (match _lh_kSq_LH_C_0_0 with
        | `LH_P2(_lh_kSq_LH_P2_0_0, _lh_kSq_LH_P2_1_0) -> 
          (match _lh_kSq_LH_P2_0_0 with
            | `King -> 
              _lh_kSq_LH_P2_1_0
            | _ -> 
              (kSq_lh _lh_kSq_LH_C_1_0))
        | _ -> 
          (kSq_lh _lh_kSq_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kingSquare_lh _lh_kingSquare_arg1_0 _lh_kingSquare_arg2_0 =
  (match _lh_kingSquare_arg1_0 with
    | `White -> 
      (match _lh_kingSquare_arg2_0 with
        | `Board(_lh_kingSquare_Board_0_0, _lh_kingSquare_Board_1_0) -> 
          (kSq_lh _lh_kingSquare_Board_0_0)
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_kingSquare_arg2_0 with
        | `Board(_lh_kingSquare_Board_0_1, _lh_kingSquare_Board_1_1) -> 
          (kSq_lh _lh_kingSquare_Board_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec any_lh _lh_any_arg1_0 _lh_any_arg2_0 =
  (match _lh_any_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_0, _lh_any_LH_C_1_0) -> 
      (if (_lh_any_arg1_0 _lh_any_LH_C_0_0) then
        true
      else
        ((any_lh _lh_any_arg1_0) _lh_any_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kingincheck_lh _lh_kingincheck_arg1_0 _lh_kingincheck_arg2_0 =
  (let rec givesCheck_0 = (fun kxy_0 -> 
    (let rec _lh_matchIdent_1_6 = kxy_0 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_0, _lh_kingincheck_LH_P2_1_0) -> 
          (match _lh_kingincheck_LH_P2_1_0 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_1, _lh_kingincheck_LH_P2_1_1) -> 
              (let rec kthreat_0 = (fun param_1 -> 
                (let rec xkyk_0 = ((kingSquare_lh _lh_kingincheck_arg1_0) _lh_kingincheck_arg2_0) in
                  (let rec _lh_matchIdent_1_7 = xkyk_0 in
                    (match _lh_matchIdent_1_7 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_2, _lh_kingincheck_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_1_8 = param_1 in
                          (match _lh_matchIdent_1_8 with
                            | `King -> 
                              (((abs_lh (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) <= 1) && ((abs_lh (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) <= 1))
                            | `Queen -> 
                              ((kthreat_0 (`Rook)) || (kthreat_0 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_1 = _lh_kingincheck_LH_P2_0_2) && ((emptyAtAll_lh _lh_kingincheck_arg2_0) (fun xeye_0 -> 
                                (let rec _lh_matchIdent_1_9 = xeye_0 in
                                  (match _lh_matchIdent_1_9 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_3, _lh_kingincheck_LH_P2_1_3) -> 
                                      (((_lh_kingincheck_LH_P2_0_3 = _lh_kingincheck_LH_P2_0_2) && (((min_lh _lh_kingincheck_LH_P2_1_1) _lh_kingincheck_LH_P2_1_2) < _lh_kingincheck_LH_P2_1_3)) && (_lh_kingincheck_LH_P2_1_3 < ((max_lh _lh_kingincheck_LH_P2_1_1) _lh_kingincheck_LH_P2_1_2)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_1 = _lh_kingincheck_LH_P2_1_2) && ((emptyAtAll_lh _lh_kingincheck_arg2_0) (fun xeye_1 -> 
                                (let rec _lh_matchIdent_2_0 = xeye_1 in
                                  (match _lh_matchIdent_2_0 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_4, _lh_kingincheck_LH_P2_1_4) -> 
                                      (((_lh_kingincheck_LH_P2_1_4 = _lh_kingincheck_LH_P2_1_2) && (((min_lh _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_4)) && (_lh_kingincheck_LH_P2_0_4 < ((max_lh _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_1 + _lh_kingincheck_LH_P2_1_1) = (_lh_kingincheck_LH_P2_0_2 + _lh_kingincheck_LH_P2_1_2)) && ((emptyAtAll_lh _lh_kingincheck_arg2_0) (fun xeye_2 -> 
                                (let rec _lh_matchIdent_2_1 = xeye_2 in
                                  (match _lh_matchIdent_2_1 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_5, _lh_kingincheck_LH_P2_1_5) -> 
                                      ((((_lh_kingincheck_LH_P2_0_5 + _lh_kingincheck_LH_P2_1_5) = (_lh_kingincheck_LH_P2_0_2 + _lh_kingincheck_LH_P2_1_2)) && (((min_lh _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_5)) && (_lh_kingincheck_LH_P2_0_5 < ((max_lh _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_1_1) = (_lh_kingincheck_LH_P2_0_2 - _lh_kingincheck_LH_P2_1_2)) && ((emptyAtAll_lh _lh_kingincheck_arg2_0) (fun xeye_3 -> 
                                (let rec _lh_matchIdent_2_2 = xeye_3 in
                                  (match _lh_matchIdent_2_2 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_6, _lh_kingincheck_LH_P2_1_6) -> 
                                      ((((_lh_kingincheck_LH_P2_0_6 - _lh_kingincheck_LH_P2_1_6) = (_lh_kingincheck_LH_P2_0_2 - _lh_kingincheck_LH_P2_1_2)) && (((min_lh _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_6)) && (_lh_kingincheck_LH_P2_0_6 < ((max_lh _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs_lh (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 2) && ((abs_lh (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) = 1)) || (((abs_lh (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 1) && ((abs_lh (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) = 2)))
                            | `Pawn -> 
                              (((abs_lh (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 1) && (let rec _lh_matchIdent_2_3 = _lh_kingincheck_arg1_0 in
                                (match _lh_matchIdent_2_3 with
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
    ((any_lh givesCheck_0) ((forcesColoured_lh (opponent_lh _lh_kingincheck_arg1_0)) _lh_kingincheck_arg2_0)));;
let rec foldr_lh f_2 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((f_2 h_2) (((foldr_lh f_2) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec onboard_lh _lh_onboard_arg1_0 =
  (match _lh_onboard_arg1_0 with
    | `LH_P2(_lh_onboard_LH_P2_0_0, _lh_onboard_LH_P2_1_0) -> 
      ((((1 <= _lh_onboard_LH_P2_0_0) && (_lh_onboard_LH_P2_0_0 <= 8)) && (1 <= _lh_onboard_LH_P2_1_0)) && (_lh_onboard_LH_P2_1_0 <= 8))
    | _ -> 
      (failwith "error"));;
let rec pieceAt_lh _lh_pieceAt_arg1_0 _lh_pieceAt_arg2_0 =
  (match _lh_pieceAt_arg1_0 with
    | `Board(_lh_pieceAt_Board_0_0, _lh_pieceAt_Board_1_0) -> 
      (let rec pieceAtWith_0 = (fun c_0 n_2 ls_9 -> 
        (let rec _lh_matchIdent_5 = ls_9 in
          (match _lh_matchIdent_5 with
            | `LH_N -> 
              n_2
            | `LH_C(_lh_pieceAt_LH_C_0_0, _lh_pieceAt_LH_C_1_0) -> 
              (match _lh_pieceAt_LH_C_0_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_0, _lh_pieceAt_LH_P2_1_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_0 = _lh_pieceAt_arg2_0) then
                    (`Just((`LH_P2(c_0, _lh_pieceAt_LH_P2_0_0))))
                  else
                    (((pieceAtWith_0 c_0) n_2) _lh_pieceAt_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_0 (`White)) (((pieceAtWith_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_0)) _lh_pieceAt_Board_0_0))
    | _ -> 
      (failwith "error"));;
let rec colourOf_lh _lh_colourOf_arg1_0 =
  (match _lh_colourOf_arg1_0 with
    | `LH_P2(_lh_colourOf_LH_P2_0_0, _lh_colourOf_LH_P2_1_0) -> 
      _lh_colourOf_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec moveLine_lh _lh_moveLine_arg1_0 _lh_moveLine_arg2_0 _lh_moveLine_arg3_0 _lh_moveLine_arg4_0 _lh_moveLine_arg5_0 =
  (let rec ml_0 = (fun sq_0 ms_1 -> 
    (let rec sq'_0 = (_lh_moveLine_arg4_0 sq_0) in
      (if (onboard_lh sq'_0) then
        (let rec _lh_matchIdent_2_4 = ((pieceAt_lh _lh_moveLine_arg1_0) sq'_0) in
          (match _lh_matchIdent_2_4 with
            | `Nothing -> 
              ((ml_0 sq'_0) (`LH_C((`Move(sq'_0, (`Nothing), (`Nothing))), ms_1)))
            | `Just(_lh_moveLine_Just_0_0) -> 
              (if ((colourOf_lh _lh_moveLine_Just_0_0) <> _lh_moveLine_arg2_0) then
                (_lh_moveLine_arg5_0 (`LH_C((`Move(sq'_0, (`Just(_lh_moveLine_Just_0_0)), (`Nothing))), ms_1)))
              else
                (_lh_moveLine_arg5_0 ms_1))
            | _ -> 
              (failwith "error")))
      else
        (_lh_moveLine_arg5_0 ms_1)))) in
    (ml_0 _lh_moveLine_arg3_0));;
let rec rookmoves_lh _lh_rookmoves_arg1_0 _lh_rookmoves_arg2_0 _lh_rookmoves_arg3_0 =
  ((((((moveLine_lh _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_1 -> 
    (let rec _lh_matchIdent_3_7 = xy_1 in
      (match _lh_matchIdent_3_7 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_0, _lh_rookmoves_LH_P2_1_0) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_0 - 1), _lh_rookmoves_LH_P2_1_0))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_2 -> 
    (let rec _lh_matchIdent_3_8 = xy_2 in
      (match _lh_matchIdent_3_8 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1, _lh_rookmoves_LH_P2_1_1) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1 + 1), _lh_rookmoves_LH_P2_1_1))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_3 -> 
    (let rec _lh_matchIdent_3_9 = xy_3 in
      (match _lh_matchIdent_3_9 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_2, _lh_rookmoves_LH_P2_1_2) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_2, (_lh_rookmoves_LH_P2_1_2 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_4 -> 
    (let rec _lh_matchIdent_4_0 = xy_4 in
      (match _lh_matchIdent_4_0 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_3, _lh_rookmoves_LH_P2_1_3) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_3, (_lh_rookmoves_LH_P2_1_3 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_6 -> 
    x_6))))) (`LH_N));;
let rec bishopmoves_lh _lh_bishopmoves_arg1_0 _lh_bishopmoves_arg2_0 _lh_bishopmoves_arg3_0 =
  ((((((moveLine_lh _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_5 -> 
    (let rec _lh_matchIdent_4_2 = xy_5 in
      (match _lh_matchIdent_4_2 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_0, _lh_bishopmoves_LH_P2_1_0) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_0 - 1), (_lh_bishopmoves_LH_P2_1_0 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_6 -> 
    (let rec _lh_matchIdent_4_3 = xy_6 in
      (match _lh_matchIdent_4_3 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1, _lh_bishopmoves_LH_P2_1_1) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1 + 1), (_lh_bishopmoves_LH_P2_1_1 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_7 -> 
    (let rec _lh_matchIdent_4_4 = xy_7 in
      (match _lh_matchIdent_4_4 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_2, _lh_bishopmoves_LH_P2_1_2) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_2 - 1), (_lh_bishopmoves_LH_P2_1_2 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_8 -> 
    (let rec _lh_matchIdent_4_5 = xy_8 in
      (match _lh_matchIdent_4_5 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_3, _lh_bishopmoves_LH_P2_1_3) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_3 + 1), (_lh_bishopmoves_LH_P2_1_3 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_7 -> 
    x_7))))) (`LH_N));;
let rec mappend_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh t_6) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec queenmoves_lh _lh_queenmoves_arg1_0 _lh_queenmoves_arg2_0 _lh_queenmoves_arg3_0 =
  ((mappend_lh (((bishopmoves_lh _lh_queenmoves_arg1_0) _lh_queenmoves_arg2_0) _lh_queenmoves_arg3_0)) (((rookmoves_lh _lh_queenmoves_arg1_0) _lh_queenmoves_arg2_0) _lh_queenmoves_arg3_0));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_8) -> 
      ((mappend_lh h_8) (concat_lh t_8))
    | `LH_N -> 
      (`LH_N));;
let rec pawnmoves_lh _lh_pawnmoves_arg1_0 _lh_pawnmoves_arg2_0 _lh_pawnmoves_arg3_0 =
  (match _lh_pawnmoves_arg2_0 with
    | `LH_P2(_lh_pawnmoves_LH_P2_0_0, _lh_pawnmoves_LH_P2_1_0) -> 
      (let rec fwd_0 = (let rec _lh_matchIdent_2 = _lh_pawnmoves_arg1_0 in
        (match _lh_matchIdent_2 with
          | `White -> 
            1
          | `Black -> 
            (0 - 1)
          | _ -> 
            (failwith "error"))) in
        (let rec promote_0 = (fun xy_0 mcp_0 -> 
          (let rec _lh_matchIdent_3 = xy_0 in
            (match _lh_matchIdent_3 with
              | `LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1) -> 
                (if (((_lh_pawnmoves_arg1_0 = (`Black)) && (_lh_pawnmoves_LH_P2_1_1 = 1)) || ((_lh_pawnmoves_arg1_0 = (`White)) && (_lh_pawnmoves_LH_P2_1_1 = 8))) then
                  ((map_lh (fun param_0 -> 
                    (`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1)), mcp_0, (`Just(param_0)))))) (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Queen))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Rook))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Bishop))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Knight))), (`LH_N))))))))))
                else
                  (`LH_C((`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1)), mcp_0, (`Nothing))), (`LH_N))))
              | _ -> 
                (failwith "error")))) in
          (let rec movs_0 = (let rec on1_0 = (`LH_P2(_lh_pawnmoves_LH_P2_0_0, (_lh_pawnmoves_LH_P2_1_0 + fwd_0))) in
            (let rec on2_0 = (`LH_P2(_lh_pawnmoves_LH_P2_0_0, ((_lh_pawnmoves_LH_P2_1_0 + 2) * fwd_0))) in
              (if (((pieceAt_lh _lh_pawnmoves_arg3_0) on1_0) = (`Nothing)) then
                ((mappend_lh ((promote_0 on1_0) (`Nothing))) (if ((((_lh_pawnmoves_LH_P2_1_0 = 2) && (_lh_pawnmoves_arg1_0 = (`White))) || ((_lh_pawnmoves_LH_P2_1_0 = 7) && (_lh_pawnmoves_arg1_0 = (`Black)))) && (((pieceAt_lh _lh_pawnmoves_arg3_0) on2_0) = (`Nothing))) then
                  (`LH_C((`Move(on2_0, (`Nothing), (`Nothing))), (`LH_N)))
                else
                  (`LH_N)))
              else
                (`LH_N)))) in
            (let rec caps_0 = (concat_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
              (match _lh_listcomp_fun_para_0 with
                | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                  (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                    (match _lh_listcomp_fun_para_1 with
                      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                        (match _lh_listcomp_fun_ls_h_1 with
                          | `Just(_lh_pawnmoves_Just_0_0) -> 
                            (if (not ((colourOf_lh _lh_pawnmoves_Just_0_0) = _lh_pawnmoves_arg1_0)) then
                              (`LH_C(((promote_0 _lh_listcomp_fun_ls_h_0) (`Just(_lh_pawnmoves_Just_0_0))), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                            else
                              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                          | _ -> 
                            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                      | `LH_N -> 
                        (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                    (_lh_listcomp_fun_1 (`LH_C(((pieceAt_lh _lh_pawnmoves_arg3_0) _lh_listcomp_fun_ls_h_0), (`LH_N)))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_0 (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_0 + 1), (_lh_pawnmoves_LH_P2_1_0 + fwd_0))), (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_0 - 1), (_lh_pawnmoves_LH_P2_1_0 + fwd_0))), (`LH_N)))))))) in
              ((mappend_lh movs_0) caps_0)))))
    | _ -> 
      (failwith "error"));;
let rec sift_lh _lh_sift_arg1_0 _lh_sift_arg2_0 _lh_sift_arg3_0 _lh_sift_arg4_0 =
  (match _lh_sift_arg4_0 with
    | `LH_N -> 
      _lh_sift_arg3_0
    | `LH_C(_lh_sift_LH_C_0_0, _lh_sift_LH_C_1_0) -> 
      (if (onboard_lh _lh_sift_LH_C_0_0) then
        (let rec _lh_matchIdent_3_3 = ((pieceAt_lh _lh_sift_arg2_0) _lh_sift_LH_C_0_0) in
          (match _lh_matchIdent_3_3 with
            | `Nothing -> 
              ((((sift_lh _lh_sift_arg1_0) _lh_sift_arg2_0) (`LH_C((`Move(_lh_sift_LH_C_0_0, (`Nothing), (`Nothing))), _lh_sift_arg3_0))) _lh_sift_LH_C_1_0)
            | `Just(_lh_sift_Just_0_0) -> 
              (if ((colourOf_lh _lh_sift_Just_0_0) = _lh_sift_arg1_0) then
                ((((sift_lh _lh_sift_arg1_0) _lh_sift_arg2_0) _lh_sift_arg3_0) _lh_sift_LH_C_1_0)
              else
                ((((sift_lh _lh_sift_arg1_0) _lh_sift_arg2_0) (`LH_C((`Move(_lh_sift_LH_C_0_0, (`Just(_lh_sift_Just_0_0)), (`Nothing))), _lh_sift_arg3_0))) _lh_sift_LH_C_1_0))
            | _ -> 
              (failwith "error")))
      else
        ((((sift_lh _lh_sift_arg1_0) _lh_sift_arg2_0) _lh_sift_arg3_0) _lh_sift_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kingmoves_lh _lh_kingmoves_arg1_0 _lh_kingmoves_arg2_0 _lh_kingmoves_arg3_0 =
  (match _lh_kingmoves_arg2_0 with
    | `LH_P2(_lh_kingmoves_LH_P2_0_0, _lh_kingmoves_LH_P2_1_0) -> 
      ((((sift_lh _lh_kingmoves_arg1_0) _lh_kingmoves_arg3_0) (`LH_N)) (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), (_lh_kingmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_0, (_lh_kingmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), (_lh_kingmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), _lh_kingmoves_LH_P2_1_0)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), _lh_kingmoves_LH_P2_1_0)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), (_lh_kingmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_0, (_lh_kingmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), (_lh_kingmoves_LH_P2_1_0 - 1))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec knightmoves_lh _lh_knightmoves_arg1_0 _lh_knightmoves_arg2_0 _lh_knightmoves_arg3_0 =
  (match _lh_knightmoves_arg2_0 with
    | `LH_P2(_lh_knightmoves_LH_P2_0_0, _lh_knightmoves_LH_P2_1_0) -> 
      ((((sift_lh _lh_knightmoves_arg1_0) _lh_knightmoves_arg3_0) (`LH_N)) (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 1), (_lh_knightmoves_LH_P2_1_0 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 1), (_lh_knightmoves_LH_P2_1_0 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 2), (_lh_knightmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 2), (_lh_knightmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 2), (_lh_knightmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 2), (_lh_knightmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 1), (_lh_knightmoves_LH_P2_1_0 - 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 1), (_lh_knightmoves_LH_P2_1_0 - 2))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec rawmoves_lh _lh_rawmoves_arg1_0 _lh_rawmoves_arg2_0 _lh_rawmoves_arg3_0 =
  (match _lh_rawmoves_arg2_0 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_0, _lh_rawmoves_LH_P2_1_0) -> 
      (let rec m_0 = (let rec _lh_matchIdent_0 = _lh_rawmoves_LH_P2_0_0 in
        (match _lh_matchIdent_0 with
          | `King -> 
            kingmoves_lh
          | `Queen -> 
            queenmoves_lh
          | `Rook -> 
            rookmoves_lh
          | `Bishop -> 
            bishopmoves_lh
          | `Knight -> 
            knightmoves_lh
          | `Pawn -> 
            pawnmoves_lh
          | _ -> 
            (failwith "error"))) in
        (((m_0 _lh_rawmoves_arg1_0) _lh_rawmoves_LH_P2_1_0) _lh_rawmoves_arg3_0))
    | _ -> 
      (failwith "error"));;
let rec maybe_lh _lh_maybe_arg1_0 _lh_maybe_arg2_0 _lh_maybe_arg3_0 =
  (match _lh_maybe_arg3_0 with
    | `Nothing -> 
      _lh_maybe_arg1_0
    | `Just(_lh_maybe_Just_0_0) -> 
      (_lh_maybe_arg2_0 _lh_maybe_Just_0_0)
    | _ -> 
      (failwith "error"));;
let rec putPieceAt_lh _lh_putPieceAt_arg1_0 _lh_putPieceAt_arg2_0 _lh_putPieceAt_arg3_0 =
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
let rec rPa_lh _lh_rPa_arg1_0 _lh_rPa_arg2_0 =
  (match _lh_rPa_arg2_0 with
    | `LH_C(_lh_rPa_LH_C_0_0, _lh_rPa_LH_C_1_0) -> 
      (match _lh_rPa_LH_C_0_0 with
        | `LH_P2(_lh_rPa_LH_P2_0_0, _lh_rPa_LH_P2_1_0) -> 
          (if (_lh_rPa_LH_P2_1_0 = _lh_rPa_arg1_0) then
            _lh_rPa_LH_C_1_0
          else
            (`LH_C((`LH_P2(_lh_rPa_LH_P2_0_0, _lh_rPa_LH_P2_1_0)), ((rPa_lh _lh_rPa_arg1_0) _lh_rPa_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec rmPieceAt_lh _lh_rmPieceAt_arg1_0 _lh_rmPieceAt_arg2_0 _lh_rmPieceAt_arg3_0 =
  (match _lh_rmPieceAt_arg1_0 with
    | `White -> 
      (match _lh_rmPieceAt_arg3_0 with
        | `Board(_lh_rmPieceAt_Board_0_0, _lh_rmPieceAt_Board_1_0) -> 
          (`Board(((rPa_lh _lh_rmPieceAt_arg2_0) _lh_rmPieceAt_Board_0_0), _lh_rmPieceAt_Board_1_0))
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_rmPieceAt_arg3_0 with
        | `Board(_lh_rmPieceAt_Board_0_1, _lh_rmPieceAt_Board_1_1) -> 
          (`Board(_lh_rmPieceAt_Board_0_1, ((rPa_lh _lh_rmPieceAt_arg2_0) _lh_rmPieceAt_Board_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec tryMove_lh _lh_tryMove_arg1_0 _lh_tryMove_arg2_0 _lh_tryMove_arg3_0 _lh_tryMove_arg4_0 =
  (match _lh_tryMove_arg2_0 with
    | `LH_P2(_lh_tryMove_LH_P2_0_0, _lh_tryMove_LH_P2_1_0) -> 
      (match _lh_tryMove_arg3_0 with
        | `Move(_lh_tryMove_Move_0_0, _lh_tryMove_Move_1_0, _lh_tryMove_Move_2_0) -> 
          (let rec p_0 = (`LH_P2(_lh_tryMove_arg1_0, _lh_tryMove_LH_P2_0_0)) in
            (let rec bd1_0 = (((rmPieceAt_lh _lh_tryMove_arg1_0) _lh_tryMove_LH_P2_1_0) _lh_tryMove_arg4_0) in
              (let rec p'_0 = (((maybe_lh p_0) (fun x_0 -> 
                x_0)) _lh_tryMove_Move_2_0) in
                (let rec bd2_0 = (((maybe_lh (((putPieceAt_lh _lh_tryMove_Move_0_0) p'_0) bd1_0)) (fun _dummy_0 -> 
                  (((putPieceAt_lh _lh_tryMove_Move_0_0) p'_0) (((rmPieceAt_lh (opponent_lh _lh_tryMove_arg1_0)) _lh_tryMove_Move_0_0) bd1_0)))) _lh_tryMove_Move_1_0) in
                  (if (not ((kingincheck_lh _lh_tryMove_arg1_0) bd2_0)) then
                    (`Just((`LH_P2((`MoveInFull(p_0, _lh_tryMove_LH_P2_1_0, (`Move(_lh_tryMove_Move_0_0, _lh_tryMove_Move_1_0, _lh_tryMove_Move_2_0)))), bd2_0))))
                  else
                    (`Nothing))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec moveDetailsFor_lh _lh_moveDetailsFor_arg1_0 _lh_moveDetailsFor_arg2_0 =
  (((foldr_lh (fun ksq_0 ms_0 -> 
    (((foldr_lh (fun rm_0 ms'_0 -> 
      ((((maybe_lh (fun x_2 -> 
        x_2)) (fun h_1_0 t_1_0 -> 
        (`LH_C(h_1_0, t_1_0)))) ((((tryMove_lh _lh_moveDetailsFor_arg1_0) ksq_0) rm_0) _lh_moveDetailsFor_arg2_0)) ms'_0))) ms_0) (((rawmoves_lh _lh_moveDetailsFor_arg1_0) ksq_0) _lh_moveDetailsFor_arg2_0)))) (`LH_N)) ((forcesColoured_lh _lh_moveDetailsFor_arg1_0) _lh_moveDetailsFor_arg2_0));;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec replies_lh _lh_replies_arg1_0 _lh_replies_arg2_0 _lh_replies_arg3_0 =
  (let rec mds_1 = ((moveDetailsFor_lh _lh_replies_arg2_0) _lh_replies_arg1_0) in
    (let rec solnAnd_0 = (fun mifb_1 rest_0 -> 
      (let rec _lh_matchIdent_2_8 = mifb_1 in
        (match _lh_matchIdent_2_8 with
          | `LH_P2(_lh_replies_LH_P2_0_0, _lh_replies_LH_P2_1_0) -> 
            (let rec sm_0 = (((solution_lh _lh_replies_LH_P2_1_0) (opponent_lh _lh_replies_arg2_0)) (_lh_replies_arg3_0 - 1)) in
              (let rec _lh_matchIdent_2_9 = sm_0 in
                (match _lh_matchIdent_2_9 with
                  | `Nothing -> 
                    (`Nothing)
                  | `Just(_lh_replies_Just_0_0) -> 
                    (let rec _lh_matchIdent_3_0 = rest_0 in
                      (match _lh_matchIdent_3_0 with
                        | `Nothing -> 
                          (`Nothing)
                        | `Just(_lh_replies_Just_0_1) -> 
                          (`Just((`LH_C((`LH_P2(_lh_replies_LH_P2_0_0, _lh_replies_Just_0_0)), _lh_replies_Just_0_1))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error"))))
          | _ -> 
            (failwith "error")))) in
      (if (_lh_replies_arg3_0 = 0) then
        (if (null_lh mds_1) then
          (`Just((`LH_N)))
        else
          (`Nothing))
      else
        (if (_lh_replies_arg3_0 > 0) then
          (((foldr_lh solnAnd_0) (`Just((`LH_N)))) mds_1)
        else
          ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))
and
solution_lh _lh_solution_arg1_0 _lh_solution_arg2_0 _lh_solution_arg3_0 =
  (let rec solnOr_0 = (fun mifb_0 other_0 -> 
    (let rec _lh_matchIdent_1_2 = mifb_0 in
      (match _lh_matchIdent_1_2 with
        | `LH_P2(_lh_solution_LH_P2_0_0, _lh_solution_LH_P2_1_0) -> 
          (let rec rsm_0 = (((replies_lh _lh_solution_LH_P2_1_0) (opponent_lh _lh_solution_arg2_0)) (_lh_solution_arg3_0 - 1)) in
            (let rec _lh_matchIdent_1_3 = rsm_0 in
              (match _lh_matchIdent_1_3 with
                | `Nothing -> 
                  other_0
                | `Just(_lh_solution_Just_0_0) -> 
                  (match _lh_solution_Just_0_0 with
                    | `LH_N -> 
                      (if ((kingincheck_lh (opponent_lh _lh_solution_arg2_0)) _lh_solution_LH_P2_1_0) then
                        (`Just((`Solution(_lh_solution_LH_P2_0_0, (`LH_N)))))
                      else
                        other_0)
                    | _ -> 
                      (`Just((`Solution(_lh_solution_LH_P2_0_0, _lh_solution_Just_0_0)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error")))) in
    (if (_lh_solution_arg3_0 > 0) then
      (let rec mds_0 = ((moveDetailsFor_lh _lh_solution_arg2_0) _lh_solution_arg1_0) in
        (((foldr_lh solnOr_0) (`Nothing)) mds_0))
    else
      ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C('=', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))));;
let rec length_lh ls_5 =
  (match ls_5 with
    | `LH_C(h_5, t_5) -> 
      (1 + (length_lh t_5))
    | `LH_N -> 
      0);;
let rec qpart_lh _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort_lh _lh_qpart_arg1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_arg2_0, (((rqsort_lh _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart_lh _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart_lh _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
qsort_lh _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_arg3_0))
        | _ -> 
          ((((((qpart_lh _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and
rqpart_lh _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort_lh _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_arg2_0, (((qsort_lh _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart_lh _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart_lh _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
rqsort_lh _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_arg3_0))
        | _ -> 
          ((((((rqpart_lh _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"));;
let rec sort_lh _lh_sort_arg1_0 =
  (((qsort_lh (fun a_3 b_3 -> 
    (let rec _lh_matchIdent_3_1 = a_3 in
      (match _lh_matchIdent_3_1 with
        | `LH_P2(_lh_sort_LH_P2_0_0, _lh_sort_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_3_2 = b_3 in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_sort_LH_P2_0_1, _lh_sort_LH_P2_1_1) -> 
                ((length_lh _lh_sort_LH_P2_0_0) <= (length_lh _lh_sort_LH_P2_0_1))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_0) (`LH_N));;
let rec kindToChar_lh _lh_kindToChar_arg1_0 =
  (let rec _lh_matchIdent_8 = _lh_kindToChar_arg1_0 in
    (match _lh_matchIdent_8 with
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
let rec showPiece_lh _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_0, _lh_showPiece_LH_P2_1_0) -> 
      (`LH_C((kindToChar_lh _lh_showPiece_LH_P2_1_0), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lh n_1 ls_6 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_6 with
      | `LH_C(h_7, t_7) -> 
        (if (n_1 = 0) then
          h_7
        else
          ((atIndex_lh (n_1 - 1)) t_7))
      | `LH_N -> 
        (failwith "error")));;
let rec showSquare_lh _lh_showSquare_arg1_0 _lh_showSquare_arg2_0 =
  (match _lh_showSquare_arg2_0 with
    | `LH_P2(_lh_showSquare_LH_P2_0_0, _lh_showSquare_LH_P2_1_0) -> 
      ((mappend_lh ((atIndex_lh (_lh_showSquare_LH_P2_0_0 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_4 = _lh_showSquare_arg1_0 in
        (match _lh_matchIdent_4 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_0)
          | `White -> 
            _lh_showSquare_LH_P2_1_0
          | _ -> 
            (failwith "error")))))
    | _ -> 
      (failwith "error"));;
let rec showMove_lh _lh_showMove_arg1_0 _lh_showMove_arg2_0 =
  (match _lh_showMove_arg2_0 with
    | `MoveInFull(_lh_showMove_MoveInFull_0_0, _lh_showMove_MoveInFull_1_0, _lh_showMove_MoveInFull_2_0) -> 
      (match _lh_showMove_MoveInFull_0_0 with
        | `LH_P2(_lh_showMove_LH_P2_0_0, _lh_showMove_LH_P2_1_0) -> 
          (match _lh_showMove_MoveInFull_2_0 with
            | `Move(_lh_showMove_Move_0_0, _lh_showMove_Move_1_0, _lh_showMove_Move_2_0) -> 
              (let rec capt_0 = (_lh_showMove_Move_1_0 <> (`Nothing)) in
                (let rec prom_0 = (_lh_showMove_Move_2_0 <> (`Nothing)) in
                  ((mappend_lh ((mappend_lh ((mappend_lh (if _lh_showMove_arg1_0 then
                    ((mappend_lh ((mappend_lh (showPiece_lh (`LH_P2(_lh_showMove_LH_P2_0_0, _lh_showMove_LH_P2_1_0)))) (if ((_lh_showMove_LH_P2_1_0 = (`King)) || ((_lh_showMove_LH_P2_1_0 = (`Pawn)) && (not (capt_0 || prom_0)))) then
                      (`LH_N)
                    else
                      (`LH_C('/', (`LH_N)))))) ((showSquare_lh _lh_showMove_LH_P2_0_0) _lh_showMove_MoveInFull_1_0))
                  else
                    (`LH_N))) (((maybe_lh (`LH_C('-', (`LH_N)))) (fun cp_0 -> 
                    ((mappend_lh ((mappend_lh (`LH_C('x', (`LH_N)))) (showPiece_lh cp_0))) (`LH_C('/', (`LH_N)))))) _lh_showMove_Move_1_0))) ((showSquare_lh _lh_showMove_LH_P2_0_0) _lh_showMove_Move_0_0))) (((maybe_lh (`LH_N)) (fun pp_0 -> 
                    ((mappend_lh ((mappend_lh (`LH_C('(', (`LH_N)))) (showPiece_lh pp_0))) (`LH_C(')', (`LH_N)))))) _lh_showMove_Move_2_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec showMovesAfter_lh _lh_showMovesAfter_arg1_0 _lh_showMovesAfter_arg2_0 =
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
                  ((mappend_lh ((mappend_lh (`LH_C(',', (`LH_C(' ', (`LH_N)))))) ((showMove_lh ((_lh_showMovesAfter_MoveInFull_0_1 <> _lh_showMovesAfter_MoveInFull_0_0) || (_lh_showMovesAfter_MoveInFull_1_1 <> _lh_showMovesAfter_MoveInFull_1_0))) (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1, _lh_showMovesAfter_MoveInFull_1_1, _lh_showMovesAfter_MoveInFull_2_1))))) ((showMovesAfter_lh (`MoveInFull(_lh_showMovesAfter_MoveInFull_0_1, _lh_showMovesAfter_MoveInFull_1_1, _lh_showMovesAfter_MoveInFull_2_1))) _lh_showMovesAfter_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")));;
let rec showMoveInFull_lh _lh_showMoveInFull_arg1_0 =
  ((showMove_lh true) _lh_showMoveInFull_arg1_0);;
let rec showMoves_lh _lh_showMoves_arg1_0 =
  (match _lh_showMoves_arg1_0 with
    | `LH_C(_lh_showMoves_LH_C_0_0, _lh_showMoves_LH_C_1_0) -> 
      ((mappend_lh (showMoveInFull_lh _lh_showMoves_LH_C_0_0)) ((showMovesAfter_lh _lh_showMoves_LH_C_0_0) _lh_showMoves_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec tab_lh _lh_tab_arg1_0 =
  (if (_lh_tab_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab_lh (_lh_tab_arg1_0 - 1)))));;
let rec showReplies_lh _lh_showReplies_arg1_0 _lh_showReplies_arg2_0 =
  (match _lh_showReplies_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_0, _lh_showReplies_LH_C_1_0) -> 
      (match _lh_showReplies_LH_C_0_0 with
        | `LH_P2(_lh_showReplies_LH_P2_0_0, _lh_showReplies_LH_P2_1_0) -> 
          ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (tab_lh _lh_showReplies_arg2_0)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null_lh _lh_showReplies_LH_C_1_0) && ((length_lh _lh_showReplies_LH_P2_0_0) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh _lh_showReplies_LH_P2_0_0)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh _lh_showReplies_LH_P2_1_0) (_lh_showReplies_arg2_0 + 1)))) ((showReplies_lh _lh_showReplies_LH_C_1_0) _lh_showReplies_arg2_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showSoln_lh _lh_showSoln_arg1_0 _lh_showSoln_arg2_0 =
  (match _lh_showSoln_arg1_0 with
    | `Soln(_lh_showSoln_Soln_0_0, _lh_showSoln_Soln_1_0) -> 
      ((mappend_lh ((mappend_lh ((mappend_lh (string_of_int _lh_showSoln_arg2_0)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull_lh _lh_showSoln_Soln_0_0))) (let rec _lh_matchIdent_1_5 = _lh_showSoln_Soln_1_0 in
        (match _lh_matchIdent_1_5 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_0, _lh_showSoln_LH_C_1_0) -> 
            (match _lh_showSoln_LH_C_0_0 with
              | `LH_P2(_lh_showSoln_LH_P2_0_0, _lh_showSoln_LH_P2_1_0) -> 
                (match _lh_showSoln_LH_C_1_0 with
                  | `LH_N -> 
                    ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length_lh _lh_showSoln_LH_P2_0_0) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves_lh _lh_showSoln_LH_P2_0_0)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh _lh_showSoln_LH_P2_1_0) (_lh_showSoln_arg2_0 + 1)))
                  | _ -> 
                    ((mappend_lh (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh (sort_lh _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))
              | _ -> 
                ((mappend_lh (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh (sort_lh _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))
          | _ -> 
            ((mappend_lh (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh (sort_lh _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))))
    | _ -> 
      (failwith "error"));;
let rec compact_lh _lh_compact_arg1_0 =
  (match _lh_compact_arg1_0 with
    | `Solution(_lh_compact_Solution_0_0, _lh_compact_Solution_1_0) -> 
      (`Soln(_lh_compact_Solution_0_0, (((foldr_lh insertCompact_lh) (`LH_N)) _lh_compact_Solution_1_0)))
    | _ -> 
      (failwith "error"))
and
insertCompact_lh _lh_insertCompact_arg1_0 _lh_insertCompact_arg2_0 =
  (match _lh_insertCompact_arg1_0 with
    | `LH_P2(_lh_insertCompact_LH_P2_0_0, _lh_insertCompact_LH_P2_1_0) -> 
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
        (let rec cs_0 = (compact_lh _lh_insertCompact_LH_P2_1_0) in
          (let rec ic_0 = (fun ls_1_1 -> 
            (let rec _lh_matchIdent_1_1 = ls_1_1 in
              (match _lh_matchIdent_1_1 with
                | `LH_N -> 
                  (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_0, (`LH_N))), cs_0)), (`LH_N)))
                | `LH_C(_lh_insertCompact_LH_C_0_0, _lh_insertCompact_LH_C_1_0) -> 
                  (match _lh_insertCompact_LH_C_0_0 with
                    | `LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1) -> 
                      (let rec a_2 = ((showSoln_lh cs_0) 1) in
                        (let rec b_2 = ((showSoln_lh _lh_insertCompact_LH_P2_1_1) 1) in
                          (if (a_2 < b_2) then
                            (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_0, (`LH_N))), cs_0)), (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1)), _lh_insertCompact_LH_C_1_0))))
                          else
                            (if (a_2 = b_2) then
                              (`LH_C((`LH_P2(((insert_0 _lh_insertCompact_LH_P2_0_0) _lh_insertCompact_LH_P2_0_1), cs_0)), _lh_insertCompact_LH_C_1_0))
                            else
                              (if (a_2 > b_2) then
                                (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1)), (ic_0 _lh_insertCompact_LH_C_1_0)))
                              else
                                ((failwith "error") (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))) in
            (ic_0 _lh_insertCompact_arg2_0))))
    | _ -> 
      (failwith "error"));;
let rec showResult_lh _lh_showResult_arg1_0 =
  (match _lh_showResult_arg1_0 with
    | `Nothing -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('!', (`LH_N)))))))))))))))))))))))))
    | `Just(_lh_showResult_Just_0_0) -> 
      ((showSoln_lh (compact_lh _lh_showResult_Just_0_0)) 1)
    | _ -> 
      (failwith "error"));;
let rec solve_lh _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (showResult_lh (((solution_lh _lh_solve_arg1_0) _lh_solve_arg2_0) ((2 * _lh_solve_arg3_0) - 1)));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec toLower_lh _lh_toLower_arg1_0 =
  (let rec _lh_matchIdent_1_0 = _lh_toLower_arg1_0 in
    (match _lh_matchIdent_1_0 with
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
        _lh_matchIdent_1_0));;
let rec pieceToChar_lh _lh_pieceToChar_arg1_0 =
  (match _lh_pieceToChar_arg1_0 with
    | `LH_P2(_lh_pieceToChar_LH_P2_0_0, _lh_pieceToChar_LH_P2_1_0) -> 
      (match _lh_pieceToChar_LH_P2_0_0 with
        | `Black -> 
          (kindToChar_lh _lh_pieceToChar_LH_P2_1_0)
        | `White -> 
          (toLower_lh (kindToChar_lh _lh_pieceToChar_LH_P2_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh ls_8 a_1 =
  (match ls_8 with
    | `LH_C(h_9, t_9) -> 
      ((reverse_helper_lh t_9) (`LH_C(h_9, a_1)))
    | `LH_N -> 
      a_1);;
let rec reverse_lh ls_7 =
  ((reverse_helper_lh ls_7) (`LH_N));;
let rec unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_0 -> 
    ((mappend_lh l_0) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec showBoard_lh _lh_showBoard_arg1_0 =
  (let rec showRank_0 = (fun r_0 -> 
    (let rec consFile_0 = (fun f_4 s_0 -> 
      (let rec _lh_matchIdent_3_6 = ((pieceAt_lh _lh_showBoard_arg1_0) (`LH_P2(f_4, r_0))) in
        (match _lh_matchIdent_3_6 with
          | `Nothing -> 
            ((mappend_lh (`LH_C(' ', (`LH_C('-', (`LH_N)))))) s_0)
          | `Just(_lh_showBoard_Just_0_0) -> 
            (`LH_C(' ', (`LH_C((pieceToChar_lh _lh_showBoard_Just_0_0), s_0))))
          | _ -> 
            (failwith "error")))) in
      (((foldr_lh consFile_0) (`LH_N)) ((enumFromTo_lh 1) 8)))) in
    (unlines_lh ((map_lh showRank_0) (reverse_lh ((enumFromTo_lh 1) 8)))));;
let rec showColour_lh _lh_showColour_arg1_0 =
  (match _lh_showColour_arg1_0 with
    | `Black -> 
      (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))
    | `White -> 
      (`LH_C('W', (`LH_C('h', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N)))))))))))
    | _ -> 
      (failwith "error"));;
let rec zipWith_lh f_3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_3 hx_0) hy_0), (((zipWith_lh f_3) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec isUpper_lh _lh_isUpper_arg1_0 =
  (let rec _lh_matchIdent_7 = _lh_isUpper_arg1_0 in
    (match _lh_matchIdent_7 with
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
let rec parseSquare_lh _lh_parseSquare_arg1_0 _lh_parseSquare_arg2_0 _lh_parseSquare_arg3_0 =
  (match _lh_parseSquare_arg3_0 with
    | '-' -> 
      (`LH_N)
    | _ -> 
      (let rec clr_0 = (if (isUpper_lh _lh_parseSquare_arg3_0) then
        (`Black)
      else
        (`White)) in
        (let rec kin_0 = (let rec _lh_matchIdent_1 = (toLower_lh _lh_parseSquare_arg3_0) in
          (match _lh_matchIdent_1 with
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
let rec filter_lh f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_1 h_1) then
        (`LH_C(h_1, ((filter_lh f_1) t_1)))
      else
        ((filter_lh f_1) t_1))
    | `LH_N -> 
      (`LH_N));;
let rec parseRank_lh _lh_parseRank_arg1_0 _lh_parseRank_arg2_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      (concat_lh (((zipWith_lh (parseSquare_lh _lh_parseRank_arg1_0)) ((enumFromTo_lh 1) 8)) _lh_funcomp_x_1))) ((filter_lh (fun x_1 -> 
      (not (x_1 = ' ')))) _lh_funcomp_x_0))) _lh_parseRank_arg2_0);;
let rec emptyBoard_lh =
  (`Board((`LH_N), (`LH_N)));;
let rec parseBoard_lh _lh_parseBoard_arg1_0 =
  (let rec addPiece_0 = (fun p_sq_0 -> 
    (let rec _lh_matchIdent_4_1 = p_sq_0 in
      (match _lh_matchIdent_4_1 with
        | `LH_P2(_lh_parseBoard_LH_P2_0_0, _lh_parseBoard_LH_P2_1_0) -> 
          ((putPieceAt_lh _lh_parseBoard_LH_P2_1_0) _lh_parseBoard_LH_P2_0_0)
        | _ -> 
          (failwith "error")))) in
    ((fun _lh_funcomp_x_4 -> 
      ((fun _lh_funcomp_x_5 -> 
        (((foldr_lh addPiece_0) emptyBoard_lh) (concat_lh _lh_funcomp_x_5))) (((zipWith_lh parseRank_lh) (reverse_lh ((enumFromTo_lh 1) 8))) _lh_funcomp_x_4))) _lh_parseBoard_arg1_0));;
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
let rec break_lh _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_6 = ((break_lh _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_6 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec words_lh _lh_words_arg1_0 =
  (let rec _lh_matchIdent_2_5 = ((dropWhile_lh (fun x_3 -> 
    (x_3 = ' '))) _lh_words_arg1_0) in
    (match _lh_matchIdent_2_5 with
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (let rec _lh_matchIdent_2_6 = ((break_lh (fun x_4 -> 
          (x_4 = ' '))) _lh_matchIdent_2_5) in
          (match _lh_matchIdent_2_6 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))));;
let rec head_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec parseGoal_lh _lh_parseGoal_arg1_0 =
  (match _lh_parseGoal_arg1_0 with
    | `LH_C(_lh_parseGoal_LH_C_0_0, _lh_parseGoal_LH_C_1_0) -> 
      (match _lh_parseGoal_LH_C_1_0 with
        | `LH_N -> 
          (let rec ws_0 = (words_lh _lh_parseGoal_LH_C_0_0) in
            (let rec c_1 = (if ((head_lh ws_0) = (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))) then
              (`Black)
            else
              (`White)) in
              (let rec n_3 = 2 in
                (`LH_P2(c_1, n_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec take_lh n_0 ls_4 =
  (if (n_0 > 0) then
    (match ls_4 with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lh (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec comment_lh _lh_comment_arg1_0 =
  ((_lh_comment_arg1_0 = (`LH_N)) || (((take_lh 2) _lh_comment_arg1_0) = (`LH_C('-', (`LH_C('-', (`LH_N)))))));;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec splitAt_lh _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (`LH_P2(((take_lh _lh_splitAt_arg1_0) _lh_splitAt_arg2_0), ((drop_lh _lh_splitAt_arg1_0) _lh_splitAt_arg2_0)));;
let rec parseProblem_lh _lh_parseProblem_arg1_0 =
  (let rec bdtxt_gltxt_0 = ((splitAt_lh 8) ((filter_lh (fun _lh_funcomp_x_3 -> 
    (not (comment_lh _lh_funcomp_x_3)))) _lh_parseProblem_arg1_0)) in
    (let rec _lh_matchIdent_2_7 = bdtxt_gltxt_0 in
      (match _lh_matchIdent_2_7 with
        | `LH_P2(_lh_parseProblem_LH_P2_0_0, _lh_parseProblem_LH_P2_1_0) -> 
          (let rec bd_0 = (parseBoard_lh _lh_parseProblem_LH_P2_0_0) in
            (let rec gl_0 = (parseGoal_lh _lh_parseProblem_LH_P2_1_0) in
              (`LH_P2(bd_0, gl_0))))
        | _ -> 
          (failwith "error"))));;
let rec lines_lh _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_3_4 = ((break_lh (fun x_5 -> 
    (x_5 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_3_4 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_3_5 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_3_5 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec readProblem_lh _lh_readProblem_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    (parseProblem_lh (lines_lh _lh_funcomp_x_2))) _lh_readProblem_arg1_0);;
let rec testMate_nofib_lh _lh_testMate_nofib_arg1_0 =
  (let rec input_0 = (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('A', (`LH_C('.', (`LH_C(' ', (`LH_C('E', (`LH_C('l', (`LH_C('l', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('1', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(',', (`LH_C(' ', (`LH_C('L', (`LH_C('u', (`LH_C('i', (`LH_C('g', (`LH_C('i', (`LH_C(' ', (`LH_C('C', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('u', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('i', (`LH_C(',', (`LH_C(' ', (`LH_C('G', (`LH_C('e', (`LH_C('n', (`LH_C('o', (`LH_C('a', (`LH_C(',', (`LH_C(' ', (`LH_C('1', (`LH_C('9', (`LH_C('2', (`LH_C('5', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('`', (`LH_C('O', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('w', (`LH_C('o', (`LH_C('-', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C(',', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('p', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('a', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('(', (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('i', (`LH_C('p', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('b', (`LH_C(' ', (`LH_C('k', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('r', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('R', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C(' ', (`LH_C('P', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('B', (`LH_C(' ', (`LH_C('B', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_C('W', (`LH_C('h', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('2', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec bdcn_0 = (readProblem_lh input_0) in
      (let rec _lh_matchIdent_1_4 = bdcn_0 in
        (match _lh_matchIdent_1_4 with
          | `LH_P2(_lh_testMate_nofib_LH_P2_0_0, _lh_testMate_nofib_LH_P2_1_0) -> 
            (match _lh_testMate_nofib_LH_P2_1_0 with
              | `LH_P2(_lh_testMate_nofib_LH_P2_0_1, _lh_testMate_nofib_LH_P2_1_1) -> 
                ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (showBoard_lh _lh_testMate_nofib_LH_P2_0_0)) (`LH_C('|', (`LH_N))))) (showColour_lh _lh_testMate_nofib_LH_P2_0_1))) (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))) (string_of_int _lh_testMate_nofib_LH_P2_1_1))) (`LH_C('|', (`LH_N))))) (`LH_C('|', (`LH_N))))) (((solve_lh _lh_testMate_nofib_LH_P2_0_0) _lh_testMate_nofib_LH_P2_0_1) _lh_testMate_nofib_LH_P2_1_1))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))));;
let run () = 1 + (Obj.magic ((testMate_nofib_lh 0)));
end;;

