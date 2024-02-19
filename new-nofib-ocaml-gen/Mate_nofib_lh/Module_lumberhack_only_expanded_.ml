

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec mappend_lh__d3 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_5_9, t_5_9) -> 
      (`LH_C(h_5_9, ((mappend_lh__d3 t_5_9) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend_lh__d1 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_6_1, t_6_1) -> 
      (`LH_C(h_6_1, ((mappend_lh__d1 t_6_1) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec showColour_lh__d1 _lh_showColour_arg1_0 =
  (match _lh_showColour_arg1_0 with
    | `Black -> 
      (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))
    | `White -> 
      (`LH_C('W', (`LH_C('h', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_N)))))))))))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d5 f_6 i_4 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_3_7, t_3_7) -> 
      ((f_6 h_3_7) (((foldr_lh__d5 f_6) i_4) t_3_7))
    | `LH_N -> 
      i_4);;
let rec forcesColoured_lh__d2 _lh_forcesColoured_arg1_1 _lh_forcesColoured_arg2_1 =
  (match _lh_forcesColoured_arg1_1 with
    | `White -> 
      (match _lh_forcesColoured_arg2_1 with
        | `Board(_lh_forcesColoured_Board_0_2, _lh_forcesColoured_Board_1_2) -> 
          _lh_forcesColoured_Board_0_2
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_1 with
        | `Board(_lh_forcesColoured_Board_0_3, _lh_forcesColoured_Board_1_3) -> 
          _lh_forcesColoured_Board_1_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll_lh__d4 _lh_emptyAtAll_arg1_0 _lh_emptyAtAll_arg2_0 =
  (match _lh_emptyAtAll_arg1_0 with
    | `Board(_lh_emptyAtAll_Board_0_0, _lh_emptyAtAll_Board_1_0) -> 
      (let rec emptyAtAllAnd_0 = (fun b_5 ls_1_4 -> 
        (let rec _lh_matchIdent_3_5 = ls_1_4 in
          (match _lh_matchIdent_3_5 with
            | `LH_N -> 
              b_5
            | `LH_C(_lh_emptyAtAll_LH_C_0_0, _lh_emptyAtAll_LH_C_1_0) -> 
              (match _lh_emptyAtAll_LH_C_0_0 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_0, _lh_emptyAtAll_LH_P2_1_0) -> 
                  ((not (_lh_emptyAtAll_arg2_0 _lh_emptyAtAll_LH_P2_1_0)) && ((emptyAtAllAnd_0 b_5) _lh_emptyAtAll_LH_C_1_0))
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
let rec max_lh__d4 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 < _lh_max_arg2_0) then
    _lh_max_arg2_0
  else
    _lh_max_arg1_0);;
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
let rec kSq_lh__d2 _lh_kSq_arg1_0 =
  (match _lh_kSq_arg1_0 with
    | `LH_C(_lh_kSq_LH_C_0_0, _lh_kSq_LH_C_1_0) -> 
      (match _lh_kSq_LH_C_0_0 with
        | `LH_P2(_lh_kSq_LH_P2_0_0, _lh_kSq_LH_P2_1_0) -> 
          (match _lh_kSq_LH_P2_0_0 with
            | `King -> 
              _lh_kSq_LH_P2_1_0
            | _ -> 
              (kSq_lh__d2 _lh_kSq_LH_C_1_0))
        | _ -> 
          (kSq_lh__d2 _lh_kSq_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kSq_lh__d1 _lh_kSq_arg1_1 =
  (match _lh_kSq_arg1_1 with
    | `LH_C(_lh_kSq_LH_C_0_1, _lh_kSq_LH_C_1_1) -> 
      (match _lh_kSq_LH_C_0_1 with
        | `LH_P2(_lh_kSq_LH_P2_0_1, _lh_kSq_LH_P2_1_1) -> 
          (match _lh_kSq_LH_P2_0_1 with
            | `King -> 
              _lh_kSq_LH_P2_1_1
            | _ -> 
              (kSq_lh__d1 _lh_kSq_LH_C_1_1))
        | _ -> 
          (kSq_lh__d1 _lh_kSq_LH_C_1_1))
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
let rec min_lh__d4 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
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
    (let rec _lh_matchIdent_7 = kxy_0 in
      (match _lh_matchIdent_7 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_0, _lh_kingincheck_LH_P2_1_0) -> 
          (match _lh_kingincheck_LH_P2_1_0 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_1, _lh_kingincheck_LH_P2_1_1) -> 
              (let rec kthreat_0 = (fun param_0 -> 
                (let rec xkyk_0 = ((kingSquare_lh__d1 _lh_kingincheck_arg1_0) _lh_kingincheck_arg2_0) in
                  (let rec _lh_matchIdent_8 = xkyk_0 in
                    (match _lh_matchIdent_8 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_2, _lh_kingincheck_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_9 = param_0 in
                          (match _lh_matchIdent_9 with
                            | `King -> 
                              (((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) <= 1) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) <= 1))
                            | `Queen -> 
                              ((kthreat_0 (`Rook)) || (kthreat_0 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_1 = _lh_kingincheck_LH_P2_0_2) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_0 -> 
                                (let rec _lh_matchIdent_1_0 = xeye_0 in
                                  (match _lh_matchIdent_1_0 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_3, _lh_kingincheck_LH_P2_1_3) -> 
                                      (((_lh_kingincheck_LH_P2_0_3 = _lh_kingincheck_LH_P2_0_2) && (((min_lh__d4 _lh_kingincheck_LH_P2_1_1) _lh_kingincheck_LH_P2_1_2) < _lh_kingincheck_LH_P2_1_3)) && (_lh_kingincheck_LH_P2_1_3 < ((max_lh__d4 _lh_kingincheck_LH_P2_1_1) _lh_kingincheck_LH_P2_1_2)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_1 = _lh_kingincheck_LH_P2_1_2) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_1 -> 
                                (let rec _lh_matchIdent_1_1 = xeye_1 in
                                  (match _lh_matchIdent_1_1 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_4, _lh_kingincheck_LH_P2_1_4) -> 
                                      (((_lh_kingincheck_LH_P2_1_4 = _lh_kingincheck_LH_P2_1_2) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_4)) && (_lh_kingincheck_LH_P2_0_4 < ((max_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_1 + _lh_kingincheck_LH_P2_1_1) = (_lh_kingincheck_LH_P2_0_2 + _lh_kingincheck_LH_P2_1_2)) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_2 -> 
                                (let rec _lh_matchIdent_1_2 = xeye_2 in
                                  (match _lh_matchIdent_1_2 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_5, _lh_kingincheck_LH_P2_1_5) -> 
                                      ((((_lh_kingincheck_LH_P2_0_5 + _lh_kingincheck_LH_P2_1_5) = (_lh_kingincheck_LH_P2_0_2 + _lh_kingincheck_LH_P2_1_2)) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_5)) && (_lh_kingincheck_LH_P2_0_5 < ((max_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_1_1) = (_lh_kingincheck_LH_P2_0_2 - _lh_kingincheck_LH_P2_1_2)) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_0) (fun xeye_3 -> 
                                (let rec _lh_matchIdent_1_3 = xeye_3 in
                                  (match _lh_matchIdent_1_3 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_6, _lh_kingincheck_LH_P2_1_6) -> 
                                      ((((_lh_kingincheck_LH_P2_0_6 - _lh_kingincheck_LH_P2_1_6) = (_lh_kingincheck_LH_P2_0_2 - _lh_kingincheck_LH_P2_1_2)) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2) < _lh_kingincheck_LH_P2_0_6)) && (_lh_kingincheck_LH_P2_0_6 < ((max_lh__d4 _lh_kingincheck_LH_P2_0_1) _lh_kingincheck_LH_P2_0_2)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 2) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) = 1)) || (((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 1) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_1 - _lh_kingincheck_LH_P2_1_2)) = 2)))
                            | `Pawn -> 
                              (((abs_lh__d7 (_lh_kingincheck_LH_P2_0_1 - _lh_kingincheck_LH_P2_0_2)) = 1) && (let rec _lh_matchIdent_1_4 = _lh_kingincheck_arg1_0 in
                                (match _lh_matchIdent_1_4 with
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
let rec maybe_lh__d3 _lh_maybe_arg1_1 _lh_maybe_arg2_1 _lh_maybe_arg3_1 =
  (match _lh_maybe_arg3_1 with
    | `Nothing -> 
      _lh_maybe_arg1_1
    | `Just(_lh_maybe_Just_0_1) -> 
      (_lh_maybe_arg2_1 _lh_maybe_Just_0_1)
    | _ -> 
      (failwith "error"));;
let rec maybe_lh__d2 _lh_maybe_arg1_2 _lh_maybe_arg2_2 _lh_maybe_arg3_2 =
  (match _lh_maybe_arg3_2 with
    | `Nothing -> 
      _lh_maybe_arg1_2
    | `Just(_lh_maybe_Just_0_2) -> 
      (_lh_maybe_arg2_2 _lh_maybe_Just_0_2)
    | _ -> 
      (failwith "error"));;
let rec putPieceAt_lh__d3 _lh_putPieceAt_arg1_0 _lh_putPieceAt_arg2_0 _lh_putPieceAt_arg3_0 =
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
let rec putPieceAt_lh__d2 _lh_putPieceAt_arg1_1 _lh_putPieceAt_arg2_1 _lh_putPieceAt_arg3_1 =
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
let rec tryMove_lh__d1 _lh_tryMove_arg1_1 _lh_tryMove_arg2_1 _lh_tryMove_arg3_1 _lh_tryMove_arg4_1 =
  (match _lh_tryMove_arg2_1 with
    | `LH_P2(_lh_tryMove_LH_P2_0_1, _lh_tryMove_LH_P2_1_1) -> 
      (match _lh_tryMove_arg3_1 with
        | `Move(_lh_tryMove_Move_0_1, _lh_tryMove_Move_1_1, _lh_tryMove_Move_2_1) -> 
          (let rec p_1 = (`LH_P2(_lh_tryMove_arg1_1, _lh_tryMove_LH_P2_0_1)) in
            (let rec bd1_1 = (((rmPieceAt_lh__d1 _lh_tryMove_arg1_1) _lh_tryMove_LH_P2_1_1) _lh_tryMove_arg4_1) in
              (let rec p'_1 = (((maybe_lh__d3 p_1) (fun x_4 -> 
                x_4)) _lh_tryMove_Move_2_1) in
                (let rec bd2_1 = (((maybe_lh__d2 (((putPieceAt_lh__d3 _lh_tryMove_Move_0_1) p'_1) bd1_1)) (fun _dummy_1 -> 
                  (((putPieceAt_lh__d2 _lh_tryMove_Move_0_1) p'_1) (((rmPieceAt_lh__d2 (opponent_lh__d5 _lh_tryMove_arg1_1)) _lh_tryMove_Move_0_1) bd1_1)))) _lh_tryMove_Move_1_1) in
                  (if (not ((kingincheck_lh__d2 _lh_tryMove_arg1_1) bd2_1)) then
                    (`Just((`LH_P2((`MoveInFull(p_1, _lh_tryMove_LH_P2_1_1, (`Move(_lh_tryMove_Move_0_1, _lh_tryMove_Move_1_1, _lh_tryMove_Move_2_1)))), bd2_1))))
                  else
                    (`Nothing))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d4 f_7 i_5 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_3_8, t_3_8) -> 
      ((f_7 h_3_8) (((foldr_lh__d4 f_7) i_5) t_3_8))
    | `LH_N -> 
      i_5);;
let rec pieceAt_lh__d1 _lh_pieceAt_arg1_0 _lh_pieceAt_arg2_0 =
  (match _lh_pieceAt_arg1_0 with
    | `Board(_lh_pieceAt_Board_0_0, _lh_pieceAt_Board_1_0) -> 
      (let rec pieceAtWith_0 = (fun c_1 n_4 ls_3_0 -> 
        (let rec _lh_matchIdent_6_3 = ls_3_0 in
          (match _lh_matchIdent_6_3 with
            | `LH_N -> 
              n_4
            | `LH_C(_lh_pieceAt_LH_C_0_0, _lh_pieceAt_LH_C_1_0) -> 
              (match _lh_pieceAt_LH_C_0_0 with
                | `LH_P2(_lh_pieceAt_LH_P2_0_0, _lh_pieceAt_LH_P2_1_0) -> 
                  (if (_lh_pieceAt_LH_P2_1_0 = _lh_pieceAt_arg2_0) then
                    (`Just((`LH_P2(c_1, _lh_pieceAt_LH_P2_0_0))))
                  else
                    (((pieceAtWith_0 c_1) n_4) _lh_pieceAt_LH_C_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        (((pieceAtWith_0 (`White)) (((pieceAtWith_0 (`Black)) (`Nothing)) _lh_pieceAt_Board_1_0)) _lh_pieceAt_Board_0_0))
    | _ -> 
      (failwith "error"));;
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
let rec sift_lh__d1 _lh_sift_arg1_0 _lh_sift_arg2_0 _lh_sift_arg3_0 _lh_sift_arg4_0 =
  (match _lh_sift_arg4_0 with
    | `LH_N -> 
      _lh_sift_arg3_0
    | `LH_C(_lh_sift_LH_C_0_0, _lh_sift_LH_C_1_0) -> 
      (if (onboard_lh__d1 _lh_sift_LH_C_0_0) then
        (let rec _lh_matchIdent_2 = ((pieceAt_lh__d1 _lh_sift_arg2_0) _lh_sift_LH_C_0_0) in
          (match _lh_matchIdent_2 with
            | `Nothing -> 
              ((((sift_lh__d1 _lh_sift_arg1_0) _lh_sift_arg2_0) (`LH_C((`Move(_lh_sift_LH_C_0_0, (`Nothing), (`Nothing))), _lh_sift_arg3_0))) _lh_sift_LH_C_1_0)
            | `Just(_lh_sift_Just_0_0) -> 
              (if ((colourOf_lh__d1 _lh_sift_Just_0_0) = _lh_sift_arg1_0) then
                ((((sift_lh__d1 _lh_sift_arg1_0) _lh_sift_arg2_0) _lh_sift_arg3_0) _lh_sift_LH_C_1_0)
              else
                ((((sift_lh__d1 _lh_sift_arg1_0) _lh_sift_arg2_0) (`LH_C((`Move(_lh_sift_LH_C_0_0, (`Just(_lh_sift_Just_0_0)), (`Nothing))), _lh_sift_arg3_0))) _lh_sift_LH_C_1_0))
            | _ -> 
              (failwith "error")))
      else
        ((((sift_lh__d1 _lh_sift_arg1_0) _lh_sift_arg2_0) _lh_sift_arg3_0) _lh_sift_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec kingmoves_lh__d1 _lh_kingmoves_arg1_0 _lh_kingmoves_arg2_0 _lh_kingmoves_arg3_0 =
  (match _lh_kingmoves_arg2_0 with
    | `LH_P2(_lh_kingmoves_LH_P2_0_0, _lh_kingmoves_LH_P2_1_0) -> 
      ((((sift_lh__d1 _lh_kingmoves_arg1_0) _lh_kingmoves_arg3_0) (`LH_N)) (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), (_lh_kingmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_0, (_lh_kingmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), (_lh_kingmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), _lh_kingmoves_LH_P2_1_0)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), _lh_kingmoves_LH_P2_1_0)), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 - 1), (_lh_kingmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2(_lh_kingmoves_LH_P2_0_0, (_lh_kingmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2((_lh_kingmoves_LH_P2_0_0 + 1), (_lh_kingmoves_LH_P2_1_0 - 1))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec moveLine_lh__d1 _lh_moveLine_arg1_0 _lh_moveLine_arg2_0 _lh_moveLine_arg3_0 _lh_moveLine_arg4_0 _lh_moveLine_arg5_0 =
  (let rec ml_0 = (fun sq_0 ms_0 -> 
    (let rec sq'_0 = (_lh_moveLine_arg4_0 sq_0) in
      (if (onboard_lh__d1 sq'_0) then
        (let rec _lh_matchIdent_1 = ((pieceAt_lh__d1 _lh_moveLine_arg1_0) sq'_0) in
          (match _lh_matchIdent_1 with
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
  ((((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_5 -> 
    (let rec _lh_matchIdent_2_1 = xy_5 in
      (match _lh_matchIdent_2_1 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_0, _lh_bishopmoves_LH_P2_1_0) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_0 - 1), (_lh_bishopmoves_LH_P2_1_0 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_6 -> 
    (let rec _lh_matchIdent_2_2 = xy_6 in
      (match _lh_matchIdent_2_2 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_1, _lh_bishopmoves_LH_P2_1_1) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_1 + 1), (_lh_bishopmoves_LH_P2_1_1 + 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_7 -> 
    (let rec _lh_matchIdent_2_3 = xy_7 in
      (match _lh_matchIdent_2_3 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_2, _lh_bishopmoves_LH_P2_1_2) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_2 - 1), (_lh_bishopmoves_LH_P2_1_2 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_bishopmoves_arg3_0) _lh_bishopmoves_arg1_0) _lh_bishopmoves_arg2_0) (fun xy_8 -> 
    (let rec _lh_matchIdent_2_4 = xy_8 in
      (match _lh_matchIdent_2_4 with
        | `LH_P2(_lh_bishopmoves_LH_P2_0_3, _lh_bishopmoves_LH_P2_1_3) -> 
          (`LH_P2((_lh_bishopmoves_LH_P2_0_3 + 1), (_lh_bishopmoves_LH_P2_1_3 - 1)))
        | _ -> 
          (failwith "error"))))) (fun x_2 -> 
    x_2))))) (`LH_N));;
let rec mappend_lh__d3_d4 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d3_d4 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d3 lss_0 =
  (match lss_0 with
    | `LH_C(h_2_1, t_2_1) -> 
      ((mappend_lh__d3_d4 h_2_1) (concat_lh__d3 t_2_1))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d2 f_1_2 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_5_0, t_5_0) -> 
      (`LH_C((f_1_2 h_5_0), ((map_lh__d2 f_1_2) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec pawnmoves_lh__d1 _lh_pawnmoves_arg1_0 _lh_pawnmoves_arg2_0 _lh_pawnmoves_arg3_0 =
  (match _lh_pawnmoves_arg2_0 with
    | `LH_P2(_lh_pawnmoves_LH_P2_0_0, _lh_pawnmoves_LH_P2_1_0) -> 
      (let rec fwd_0 = (let rec _lh_matchIdent_1_9 = _lh_pawnmoves_arg1_0 in
        (match _lh_matchIdent_1_9 with
          | `White -> 
            1
          | `Black -> 
            (0 - 1)
          | _ -> 
            (failwith "error"))) in
        (let rec promote_0 = (fun xy_4 mcp_0 -> 
          (let rec _lh_matchIdent_2_0 = xy_4 in
            (match _lh_matchIdent_2_0 with
              | `LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1) -> 
                (if (((_lh_pawnmoves_arg1_0 = (`Black)) && (_lh_pawnmoves_LH_P2_1_1 = 1)) || ((_lh_pawnmoves_arg1_0 = (`White)) && (_lh_pawnmoves_LH_P2_1_1 = 8))) then
                  ((map_lh__d2 (fun param_1 -> 
                    (`Move((`LH_P2(_lh_pawnmoves_LH_P2_0_1, _lh_pawnmoves_LH_P2_1_1)), mcp_0, (`Just(param_1)))))) (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Queen))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Rook))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Bishop))), (`LH_C((`LH_P2(_lh_pawnmoves_arg1_0, (`Knight))), (`LH_N))))))))))
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
              (match _lh_listcomp_fun_para_0 with
                | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                  (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                    (match _lh_listcomp_fun_para_1 with
                      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                        (match _lh_listcomp_fun_ls_h_1 with
                          | `Just(_lh_pawnmoves_Just_0_0) -> 
                            (if (not ((colourOf_lh__d1 _lh_pawnmoves_Just_0_0) = _lh_pawnmoves_arg1_0)) then
                              (`LH_C(((promote_0 _lh_listcomp_fun_ls_h_0) (`Just(_lh_pawnmoves_Just_0_0))), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                            else
                              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                          | _ -> 
                            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                      | `LH_N -> 
                        (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                    (_lh_listcomp_fun_1 (`LH_C(((pieceAt_lh__d1 _lh_pawnmoves_arg3_0) _lh_listcomp_fun_ls_h_0), (`LH_N)))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_0 (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_0 + 1), (_lh_pawnmoves_LH_P2_1_0 + fwd_0))), (`LH_C((`LH_P2((_lh_pawnmoves_LH_P2_0_0 - 1), (_lh_pawnmoves_LH_P2_1_0 + fwd_0))), (`LH_N)))))))) in
              ((mappend_lh__d3_d4 movs_0) caps_0)))))
    | _ -> 
      (failwith "error"));;
let rec knightmoves_lh__d1 _lh_knightmoves_arg1_0 _lh_knightmoves_arg2_0 _lh_knightmoves_arg3_0 =
  (match _lh_knightmoves_arg2_0 with
    | `LH_P2(_lh_knightmoves_LH_P2_0_0, _lh_knightmoves_LH_P2_1_0) -> 
      ((((sift_lh__d1 _lh_knightmoves_arg1_0) _lh_knightmoves_arg3_0) (`LH_N)) (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 1), (_lh_knightmoves_LH_P2_1_0 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 1), (_lh_knightmoves_LH_P2_1_0 + 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 2), (_lh_knightmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 2), (_lh_knightmoves_LH_P2_1_0 + 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 2), (_lh_knightmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 2), (_lh_knightmoves_LH_P2_1_0 - 1))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 - 1), (_lh_knightmoves_LH_P2_1_0 - 2))), (`LH_C((`LH_P2((_lh_knightmoves_LH_P2_0_0 + 1), (_lh_knightmoves_LH_P2_1_0 - 2))), (`LH_N))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec rookmoves_lh__d1 _lh_rookmoves_arg1_0 _lh_rookmoves_arg2_0 _lh_rookmoves_arg3_0 =
  ((((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_0 -> 
    (let rec _lh_matchIdent_1_5 = xy_0 in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_0, _lh_rookmoves_LH_P2_1_0) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_0 - 1), _lh_rookmoves_LH_P2_1_0))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_1 -> 
    (let rec _lh_matchIdent_1_6 = xy_1 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_1, _lh_rookmoves_LH_P2_1_1) -> 
          (`LH_P2((_lh_rookmoves_LH_P2_0_1 + 1), _lh_rookmoves_LH_P2_1_1))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_2 -> 
    (let rec _lh_matchIdent_1_7 = xy_2 in
      (match _lh_matchIdent_1_7 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_2, _lh_rookmoves_LH_P2_1_2) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_2, (_lh_rookmoves_LH_P2_1_2 - 1)))
        | _ -> 
          (failwith "error"))))) (((((moveLine_lh__d1 _lh_rookmoves_arg3_0) _lh_rookmoves_arg1_0) _lh_rookmoves_arg2_0) (fun xy_3 -> 
    (let rec _lh_matchIdent_1_8 = xy_3 in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_rookmoves_LH_P2_0_3, _lh_rookmoves_LH_P2_1_3) -> 
          (`LH_P2(_lh_rookmoves_LH_P2_0_3, (_lh_rookmoves_LH_P2_1_3 + 1)))
        | _ -> 
          (failwith "error"))))) (fun x_1 -> 
    x_1))))) (`LH_N));;
let rec queenmoves_lh__d1 _lh_queenmoves_arg1_0 _lh_queenmoves_arg2_0 _lh_queenmoves_arg3_0 =
  ((mappend_lh__d3_d4 (((bishopmoves_lh__d1 _lh_queenmoves_arg1_0) _lh_queenmoves_arg2_0) _lh_queenmoves_arg3_0)) (((rookmoves_lh__d1 _lh_queenmoves_arg1_0) _lh_queenmoves_arg2_0) _lh_queenmoves_arg3_0));;
let rec rawmoves_lh__d1 _lh_rawmoves_arg1_1 _lh_rawmoves_arg2_1 _lh_rawmoves_arg3_1 =
  (match _lh_rawmoves_arg2_1 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_1, _lh_rawmoves_LH_P2_1_1) -> 
      (let rec m_1 = (let rec _lh_matchIdent_3_4 = _lh_rawmoves_LH_P2_0_1 in
        (match _lh_matchIdent_3_4 with
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
let rec maybe_lh__d1 _lh_maybe_arg1_3 _lh_maybe_arg2_3 _lh_maybe_arg3_3 =
  (match _lh_maybe_arg3_3 with
    | `Nothing -> 
      _lh_maybe_arg1_3
    | `Just(_lh_maybe_Just_0_3) -> 
      (_lh_maybe_arg2_3 _lh_maybe_Just_0_3)
    | _ -> 
      (failwith "error"));;
let rec moveDetailsFor_lh__d1 _lh_moveDetailsFor_arg1_1 _lh_moveDetailsFor_arg2_1 =
  (((foldr_lh__d4 (fun ksq_1 ms_2 -> 
    (((foldr_lh__d5 (fun rm_1 ms'_1 -> 
      ((((maybe_lh__d1 (fun x_8 -> 
        x_8)) (fun h_4_5 t_4_5 -> 
        (`LH_C(h_4_5, t_4_5)))) ((((tryMove_lh__d1 _lh_moveDetailsFor_arg1_1) ksq_1) rm_1) _lh_moveDetailsFor_arg2_1)) ms'_1))) ms_2) (((rawmoves_lh__d1 _lh_moveDetailsFor_arg1_1) ksq_1) _lh_moveDetailsFor_arg2_1)))) (`LH_N)) ((forcesColoured_lh__d2 _lh_moveDetailsFor_arg1_1) _lh_moveDetailsFor_arg2_1));;
let rec foldr_lh__d2 f_1_0 i_7 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_6, t_4_6) -> 
      ((f_1_0 h_4_6) (((foldr_lh__d2 f_1_0) i_7) t_4_6))
    | `LH_N -> 
      i_7);;
let rec opponent_lh__d2 _lh_opponent_arg1_3 =
  (match _lh_opponent_arg1_3 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec opponent_lh__d1 _lh_opponent_arg1_4 =
  (match _lh_opponent_arg1_4 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
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
let rec foldr_lh__d8 f_1 i_1 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_9, t_1_9) -> 
      ((f_1 h_1_9) (((foldr_lh__d8 f_1) i_1) t_1_9))
    | `LH_N -> 
      i_1);;
let rec rawmoves_lh__d2 _lh_rawmoves_arg1_0 _lh_rawmoves_arg2_0 _lh_rawmoves_arg3_0 =
  (match _lh_rawmoves_arg2_0 with
    | `LH_P2(_lh_rawmoves_LH_P2_0_0, _lh_rawmoves_LH_P2_1_0) -> 
      (let rec m_0 = (let rec _lh_matchIdent_6 = _lh_rawmoves_LH_P2_0_0 in
        (match _lh_matchIdent_6 with
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
let rec foldr_lh__d9 f_0 i_0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_8, t_1_8) -> 
      ((f_0 h_1_8) (((foldr_lh__d9 f_0) i_0) t_1_8))
    | `LH_N -> 
      i_0);;
let rec maybe_lh__d4 _lh_maybe_arg1_0 _lh_maybe_arg2_0 _lh_maybe_arg3_0 =
  (match _lh_maybe_arg3_0 with
    | `Nothing -> 
      _lh_maybe_arg1_0
    | `Just(_lh_maybe_Just_0_0) -> 
      (_lh_maybe_arg2_0 _lh_maybe_Just_0_0)
    | _ -> 
      (failwith "error"));;
let rec tryMove_lh__d2 _lh_tryMove_arg1_0 _lh_tryMove_arg2_0 _lh_tryMove_arg3_0 _lh_tryMove_arg4_0 =
  (match _lh_tryMove_arg2_0 with
    | `LH_P2(_lh_tryMove_LH_P2_0_0, _lh_tryMove_LH_P2_1_0) -> 
      (match _lh_tryMove_arg3_0 with
        | `Move(_lh_tryMove_Move_0_0, _lh_tryMove_Move_1_0, _lh_tryMove_Move_2_0) -> 
          (let rec p_0 = (`LH_P2(_lh_tryMove_arg1_0, _lh_tryMove_LH_P2_0_0)) in
            (let rec bd1_0 = (((rmPieceAt_lh__d2 _lh_tryMove_arg1_0) _lh_tryMove_LH_P2_1_0) _lh_tryMove_arg4_0) in
              (let rec p'_0 = (((maybe_lh__d4 p_0) (fun x_0 -> 
                x_0)) _lh_tryMove_Move_2_0) in
                (let rec bd2_0 = (((maybe_lh__d4 (((putPieceAt_lh__d3 _lh_tryMove_Move_0_0) p'_0) bd1_0)) (fun _dummy_0 -> 
                  (((putPieceAt_lh__d3 _lh_tryMove_Move_0_0) p'_0) (((rmPieceAt_lh__d2 (opponent_lh__d5 _lh_tryMove_arg1_0)) _lh_tryMove_Move_0_0) bd1_0)))) _lh_tryMove_Move_1_0) in
                  (if (not ((kingincheck_lh__d2 _lh_tryMove_arg1_0) bd2_0)) then
                    (`Just((`LH_P2((`MoveInFull(p_0, _lh_tryMove_LH_P2_1_0, (`Move(_lh_tryMove_Move_0_0, _lh_tryMove_Move_1_0, _lh_tryMove_Move_2_0)))), bd2_0))))
                  else
                    (`Nothing))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec moveDetailsFor_lh__d2 _lh_moveDetailsFor_arg1_0 _lh_moveDetailsFor_arg2_0 =
  (((foldr_lh__d8 (fun ksq_0 ms_1 -> 
    (((foldr_lh__d9 (fun rm_0 ms'_0 -> 
      ((((maybe_lh__d4 (fun x_3 -> 
        x_3)) (fun h_3_6 t_3_6 -> 
        (`LH_C(h_3_6, t_3_6)))) ((((tryMove_lh__d2 _lh_moveDetailsFor_arg1_0) ksq_0) rm_0) _lh_moveDetailsFor_arg2_0)) ms'_0))) ms_1) (((rawmoves_lh__d2 _lh_moveDetailsFor_arg1_0) ksq_0) _lh_moveDetailsFor_arg2_0)))) (`LH_N)) ((forcesColoured_lh__d3 _lh_moveDetailsFor_arg1_0) _lh_moveDetailsFor_arg2_0));;
let rec foldr_lh__d6 f_5 i_3 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_5, t_3_5) -> 
      ((f_5 h_3_5) (((foldr_lh__d6 f_5) i_3) t_3_5))
    | `LH_N -> 
      i_3);;
let rec max_lh__d3 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 < _lh_max_arg2_1) then
    _lh_max_arg2_1
  else
    _lh_max_arg1_1);;
let rec abs_lh__d5 _lh_abs_arg1_2 =
  (if (_lh_abs_arg1_2 < 0) then
    (0 - _lh_abs_arg1_2)
  else
    _lh_abs_arg1_2);;
let rec emptyAtAll_lh__d1 _lh_emptyAtAll_arg1_3 _lh_emptyAtAll_arg2_3 =
  (match _lh_emptyAtAll_arg1_3 with
    | `Board(_lh_emptyAtAll_Board_0_3, _lh_emptyAtAll_Board_1_3) -> 
      (let rec emptyAtAllAnd_3 = (fun b_8 ls_1_7 -> 
        (let rec _lh_matchIdent_3_8 = ls_1_7 in
          (match _lh_matchIdent_3_8 with
            | `LH_N -> 
              b_8
            | `LH_C(_lh_emptyAtAll_LH_C_0_3, _lh_emptyAtAll_LH_C_1_3) -> 
              (match _lh_emptyAtAll_LH_C_0_3 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_3, _lh_emptyAtAll_LH_P2_1_3) -> 
                  ((not (_lh_emptyAtAll_arg2_3 _lh_emptyAtAll_LH_P2_1_3)) && ((emptyAtAllAnd_3 b_8) _lh_emptyAtAll_LH_C_1_3))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_3 ((emptyAtAllAnd_3 true) _lh_emptyAtAll_Board_1_3)) _lh_emptyAtAll_Board_0_3))
    | _ -> 
      (failwith "error"));;
let rec abs_lh__d2 _lh_abs_arg1_5 =
  (if (_lh_abs_arg1_5 < 0) then
    (0 - _lh_abs_arg1_5)
  else
    _lh_abs_arg1_5);;
let rec min_lh__d2 _lh_min_arg1_2 _lh_min_arg2_2 =
  (if (_lh_min_arg1_2 < _lh_min_arg2_2) then
    _lh_min_arg1_2
  else
    _lh_min_arg2_2);;
let rec abs_lh__d1 _lh_abs_arg1_6 =
  (if (_lh_abs_arg1_6 < 0) then
    (0 - _lh_abs_arg1_6)
  else
    _lh_abs_arg1_6);;
let rec emptyAtAll_lh__d3 _lh_emptyAtAll_arg1_1 _lh_emptyAtAll_arg2_1 =
  (match _lh_emptyAtAll_arg1_1 with
    | `Board(_lh_emptyAtAll_Board_0_1, _lh_emptyAtAll_Board_1_1) -> 
      (let rec emptyAtAllAnd_1 = (fun b_6 ls_1_5 -> 
        (let rec _lh_matchIdent_3_6 = ls_1_5 in
          (match _lh_matchIdent_3_6 with
            | `LH_N -> 
              b_6
            | `LH_C(_lh_emptyAtAll_LH_C_0_1, _lh_emptyAtAll_LH_C_1_1) -> 
              (match _lh_emptyAtAll_LH_C_0_1 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_1, _lh_emptyAtAll_LH_P2_1_1) -> 
                  ((not (_lh_emptyAtAll_arg2_1 _lh_emptyAtAll_LH_P2_1_1)) && ((emptyAtAllAnd_1 b_6) _lh_emptyAtAll_LH_C_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))) in
        ((emptyAtAllAnd_1 ((emptyAtAllAnd_1 true) _lh_emptyAtAll_Board_1_1)) _lh_emptyAtAll_Board_0_1))
    | _ -> 
      (failwith "error"));;
let rec min_lh__d3 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
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
let rec forcesColoured_lh__d1 _lh_forcesColoured_arg1_2 _lh_forcesColoured_arg2_2 =
  (match _lh_forcesColoured_arg1_2 with
    | `White -> 
      (match _lh_forcesColoured_arg2_2 with
        | `Board(_lh_forcesColoured_Board_0_4, _lh_forcesColoured_Board_1_4) -> 
          _lh_forcesColoured_Board_0_4
        | _ -> 
          (failwith "error"))
    | `Black -> 
      (match _lh_forcesColoured_arg2_2 with
        | `Board(_lh_forcesColoured_Board_0_5, _lh_forcesColoured_Board_1_5) -> 
          _lh_forcesColoured_Board_1_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec emptyAtAll_lh__d2 _lh_emptyAtAll_arg1_2 _lh_emptyAtAll_arg2_2 =
  (match _lh_emptyAtAll_arg1_2 with
    | `Board(_lh_emptyAtAll_Board_0_2, _lh_emptyAtAll_Board_1_2) -> 
      (let rec emptyAtAllAnd_2 = (fun b_7 ls_1_6 -> 
        (let rec _lh_matchIdent_3_7 = ls_1_6 in
          (match _lh_matchIdent_3_7 with
            | `LH_N -> 
              b_7
            | `LH_C(_lh_emptyAtAll_LH_C_0_2, _lh_emptyAtAll_LH_C_1_2) -> 
              (match _lh_emptyAtAll_LH_C_0_2 with
                | `LH_P2(_lh_emptyAtAll_LH_P2_0_2, _lh_emptyAtAll_LH_P2_1_2) -> 
                  ((not (_lh_emptyAtAll_arg2_2 _lh_emptyAtAll_LH_P2_1_2)) && ((emptyAtAllAnd_2 b_7) _lh_emptyAtAll_LH_C_1_2))
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
let rec abs_lh__d4 _lh_abs_arg1_3 =
  (if (_lh_abs_arg1_3 < 0) then
    (0 - _lh_abs_arg1_3)
  else
    _lh_abs_arg1_3);;
let rec min_lh__d1 _lh_min_arg1_3 _lh_min_arg2_3 =
  (if (_lh_min_arg1_3 < _lh_min_arg2_3) then
    _lh_min_arg1_3
  else
    _lh_min_arg2_3);;
let rec opponent_lh__d3 _lh_opponent_arg1_2 =
  (match _lh_opponent_arg1_2 with
    | `Black -> 
      (`White)
    | `White -> 
      (`Black)
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1 _lh_max_arg1_3 _lh_max_arg2_3 =
  (if (_lh_max_arg1_3 < _lh_max_arg2_3) then
    _lh_max_arg2_3
  else
    _lh_max_arg1_3);;
let rec kingincheck_lh__d1 _lh_kingincheck_arg1_1 _lh_kingincheck_arg2_1 =
  (let rec givesCheck_1 = (fun kxy_1 -> 
    (let rec _lh_matchIdent_4_5 = kxy_1 in
      (match _lh_matchIdent_4_5 with
        | `LH_P2(_lh_kingincheck_LH_P2_0_7, _lh_kingincheck_LH_P2_1_7) -> 
          (match _lh_kingincheck_LH_P2_1_7 with
            | `LH_P2(_lh_kingincheck_LH_P2_0_8, _lh_kingincheck_LH_P2_1_8) -> 
              (let rec kthreat_1 = (fun param_2 -> 
                (let rec xkyk_1 = ((kingSquare_lh__d1 _lh_kingincheck_arg1_1) _lh_kingincheck_arg2_1) in
                  (let rec _lh_matchIdent_4_6 = xkyk_1 in
                    (match _lh_matchIdent_4_6 with
                      | `LH_P2(_lh_kingincheck_LH_P2_0_9, _lh_kingincheck_LH_P2_1_9) -> 
                        (let rec _lh_matchIdent_4_7 = param_2 in
                          (match _lh_matchIdent_4_7 with
                            | `King -> 
                              (((abs_lh__d2 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) <= 1) && ((abs_lh__d7 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) <= 1))
                            | `Queen -> 
                              ((kthreat_1 (`Rook)) || (kthreat_1 (`Bishop)))
                            | `Rook -> 
                              (((_lh_kingincheck_LH_P2_0_8 = _lh_kingincheck_LH_P2_0_9) && ((emptyAtAll_lh__d2 _lh_kingincheck_arg2_1) (fun xeye_4 -> 
                                (let rec _lh_matchIdent_4_8 = xeye_4 in
                                  (match _lh_matchIdent_4_8 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_0, _lh_kingincheck_LH_P2_1_1_0) -> 
                                      (((_lh_kingincheck_LH_P2_0_1_0 = _lh_kingincheck_LH_P2_0_9) && (((min_lh__d1 _lh_kingincheck_LH_P2_1_8) _lh_kingincheck_LH_P2_1_9) < _lh_kingincheck_LH_P2_1_1_0)) && (_lh_kingincheck_LH_P2_1_1_0 < ((max_lh__d4 _lh_kingincheck_LH_P2_1_8) _lh_kingincheck_LH_P2_1_9)))
                                    | _ -> 
                                      (failwith "error")))))) || ((_lh_kingincheck_LH_P2_1_8 = _lh_kingincheck_LH_P2_1_9) && ((emptyAtAll_lh__d1 _lh_kingincheck_arg2_1) (fun xeye_5 -> 
                                (let rec _lh_matchIdent_4_9 = xeye_5 in
                                  (match _lh_matchIdent_4_9 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_1, _lh_kingincheck_LH_P2_1_1_1) -> 
                                      (((_lh_kingincheck_LH_P2_1_1_1 = _lh_kingincheck_LH_P2_1_9) && (((min_lh__d4 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_1)) && (_lh_kingincheck_LH_P2_0_1_1 < ((max_lh__d2 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Bishop -> 
                              ((((_lh_kingincheck_LH_P2_0_8 + _lh_kingincheck_LH_P2_1_8) = (_lh_kingincheck_LH_P2_0_9 + _lh_kingincheck_LH_P2_1_9)) && ((emptyAtAll_lh__d4 _lh_kingincheck_arg2_1) (fun xeye_6 -> 
                                (let rec _lh_matchIdent_5_0 = xeye_6 in
                                  (match _lh_matchIdent_5_0 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_2, _lh_kingincheck_LH_P2_1_1_2) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_2 + _lh_kingincheck_LH_P2_1_1_2) = (_lh_kingincheck_LH_P2_0_9 + _lh_kingincheck_LH_P2_1_9)) && (((min_lh__d3 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_2)) && (_lh_kingincheck_LH_P2_0_1_2 < ((max_lh__d1 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))) || (((_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_1_8) = (_lh_kingincheck_LH_P2_0_9 - _lh_kingincheck_LH_P2_1_9)) && ((emptyAtAll_lh__d3 _lh_kingincheck_arg2_1) (fun xeye_7 -> 
                                (let rec _lh_matchIdent_5_1 = xeye_7 in
                                  (match _lh_matchIdent_5_1 with
                                    | `LH_P2(_lh_kingincheck_LH_P2_0_1_3, _lh_kingincheck_LH_P2_1_1_3) -> 
                                      ((((_lh_kingincheck_LH_P2_0_1_3 - _lh_kingincheck_LH_P2_1_1_3) = (_lh_kingincheck_LH_P2_0_9 - _lh_kingincheck_LH_P2_1_9)) && (((min_lh__d2 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9) < _lh_kingincheck_LH_P2_0_1_3)) && (_lh_kingincheck_LH_P2_0_1_3 < ((max_lh__d3 _lh_kingincheck_LH_P2_0_8) _lh_kingincheck_LH_P2_0_9)))
                                    | _ -> 
                                      (failwith "error")))))))
                            | `Knight -> 
                              ((((abs_lh__d4 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 2) && ((abs_lh__d5 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) = 1)) || (((abs_lh__d6 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 1) && ((abs_lh__d3 (_lh_kingincheck_LH_P2_1_8 - _lh_kingincheck_LH_P2_1_9)) = 2)))
                            | `Pawn -> 
                              (((abs_lh__d1 (_lh_kingincheck_LH_P2_0_8 - _lh_kingincheck_LH_P2_0_9)) = 1) && (let rec _lh_matchIdent_5_2 = _lh_kingincheck_arg1_1 in
                                (match _lh_matchIdent_5_2 with
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
    ((any_lh__d1 givesCheck_1) ((forcesColoured_lh__d1 (opponent_lh__d3 _lh_kingincheck_arg1_1)) _lh_kingincheck_arg2_1)));;
let rec replies_lh__d1 _lh_replies_arg1_0 _lh_replies_arg2_0 _lh_replies_arg3_0 =
  (let rec mds_0 = ((moveDetailsFor_lh__d2 _lh_replies_arg2_0) _lh_replies_arg1_0) in
    (let rec solnAnd_0 = (fun mifb_0 rest_0 -> 
      (let rec _lh_matchIdent_4_2 = mifb_0 in
        (match _lh_matchIdent_4_2 with
          | `LH_P2(_lh_replies_LH_P2_0_0, _lh_replies_LH_P2_1_0) -> 
            (let rec sm_0 = (((solution_lh__d1 _lh_replies_LH_P2_1_0) (opponent_lh__d4 _lh_replies_arg2_0)) (_lh_replies_arg3_0 - 1)) in
              (let rec _lh_matchIdent_4_3 = sm_0 in
                (match _lh_matchIdent_4_3 with
                  | `Nothing -> 
                    (`Nothing)
                  | `Just(_lh_replies_Just_0_0) -> 
                    (let rec _lh_matchIdent_4_4 = rest_0 in
                      (match _lh_matchIdent_4_4 with
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
        (if (null_lh__d1 mds_0) then
          (`Just((`LH_N)))
        else
          (`Nothing))
      else
        (if (_lh_replies_arg3_0 > 0) then
          (((foldr_lh__d6 solnAnd_0) (`Just((`LH_N)))) mds_0)
        else
          ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))
and
solution_lh__d1 _lh_solution_arg1_0 _lh_solution_arg2_0 _lh_solution_arg3_0 =
  (let rec solnOr_0 = (fun mifb_1 other_0 -> 
    (let rec _lh_matchIdent_5_8 = mifb_1 in
      (match _lh_matchIdent_5_8 with
        | `LH_P2(_lh_solution_LH_P2_0_0, _lh_solution_LH_P2_1_0) -> 
          (let rec rsm_0 = (((replies_lh__d1 _lh_solution_LH_P2_1_0) (opponent_lh__d2 _lh_solution_arg2_0)) (_lh_solution_arg3_0 - 1)) in
            (let rec _lh_matchIdent_5_9 = rsm_0 in
              (match _lh_matchIdent_5_9 with
                | `Nothing -> 
                  other_0
                | `Just(_lh_solution_Just_0_0) -> 
                  (match _lh_solution_Just_0_0 with
                    | `LH_N -> 
                      (if ((kingincheck_lh__d1 (opponent_lh__d1 _lh_solution_arg2_0)) _lh_solution_LH_P2_1_0) then
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
      (let rec mds_1 = ((moveDetailsFor_lh__d1 _lh_solution_arg2_0) _lh_solution_arg1_0) in
        (((foldr_lh__d2 solnOr_0) (`Nothing)) mds_1))
    else
      ((failwith "error") (`LH_C('n', (`LH_C(' ', (`LH_C('<', (`LH_C('=', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))));;
let rec mappend_lh__d1_d6 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C(h_2_8, ((mappend_lh__d1_d6 t_2_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend_lh__d1_d8 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend_lh__d1_d8 t_2_6) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec length_lh__d4 ls_1 =
  (match ls_1 with
    | `LH_C(h_4, t_4) -> 
      (1 + (length_lh__d4 t_4))
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
let rec sort_lh__d1 _lh_sort_arg1_2 =
  (((qsort_lh__d1 (fun a_4 b_3 -> 
    (let rec _lh_matchIdent_3_1 = a_4 in
      (match _lh_matchIdent_3_1 with
        | `LH_P2(_lh_sort_LH_P2_0_4, _lh_sort_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_3_2 = b_3 in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_sort_LH_P2_0_5, _lh_sort_LH_P2_1_5) -> 
                ((length_lh__d4 _lh_sort_LH_P2_0_4) <= (length_lh__d4 _lh_sort_LH_P2_0_5))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_2) (`LH_N));;
let rec mappend_lh__d1_d9 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C(h_2_4, ((mappend_lh__d1_d9 t_2_4) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec sort_lh__d2 _lh_sort_arg1_1 =
  (((qsort_lh__d1 (fun a_3 b_2 -> 
    (let rec _lh_matchIdent_2_9 = a_3 in
      (match _lh_matchIdent_2_9 with
        | `LH_P2(_lh_sort_LH_P2_0_2, _lh_sort_LH_P2_1_2) -> 
          (let rec _lh_matchIdent_3_0 = b_2 in
            (match _lh_matchIdent_3_0 with
              | `LH_P2(_lh_sort_LH_P2_0_3, _lh_sort_LH_P2_1_3) -> 
                ((length_lh__d4 _lh_sort_LH_P2_0_2) <= (length_lh__d4 _lh_sort_LH_P2_0_3))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_1) (`LH_N));;
let rec mappend_lh__d1_d3 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_3_1, t_3_1) -> 
      (`LH_C(h_3_1, ((mappend_lh__d1_d3 t_3_1) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec kindToChar_lh__d2 _lh_kindToChar_arg1_0 =
  (let rec _lh_matchIdent_5_5 = _lh_kindToChar_arg1_0 in
    (match _lh_matchIdent_5_5 with
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
let rec showPiece_lh__d1 _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `LH_P2(_lh_showPiece_LH_P2_0_0, _lh_showPiece_LH_P2_1_0) -> 
      (`LH_C((kindToChar_lh__d2 _lh_showPiece_LH_P2_1_0), (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lh__d1 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_0 with
      | `LH_C(h_0, t_0) -> 
        (if (n_0 = 0) then
          h_0
        else
          ((atIndex_lh__d1 (n_0 - 1)) t_0))
      | `LH_N -> 
        (failwith "error")));;
let rec showSquare_lh__d1 _lh_showSquare_arg1_0 _lh_showSquare_arg2_0 =
  (match _lh_showSquare_arg2_0 with
    | `LH_P2(_lh_showSquare_LH_P2_0_0, _lh_showSquare_LH_P2_1_0) -> 
      ((mappend_lh__d3_d4 ((atIndex_lh__d1 (_lh_showSquare_LH_P2_0_0 - 1)) (`LH_C((`LH_C('Q', (`LH_C('R', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('Q', (`LH_N))), (`LH_C((`LH_C('K', (`LH_N))), (`LH_C((`LH_C('K', (`LH_C('B', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('N', (`LH_N))))), (`LH_C((`LH_C('K', (`LH_C('R', (`LH_N))))), (`LH_N))))))))))))))))))) (string_of_int (let rec _lh_matchIdent_0 = _lh_showSquare_arg1_0 in
        (match _lh_matchIdent_0 with
          | `Black -> 
            (9 - _lh_showSquare_LH_P2_1_0)
          | `White -> 
            _lh_showSquare_LH_P2_1_0
          | _ -> 
            (failwith "error")))))
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
let rec showMoveInFull_lh__d1 _lh_showMoveInFull_arg1_0 =
  ((showMove_lh__d1 true) _lh_showMoveInFull_arg1_0);;
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
let rec showMoves_lh__d3 _lh_showMoves_arg1_1 =
  (match _lh_showMoves_arg1_1 with
    | `LH_C(_lh_showMoves_LH_C_0_1, _lh_showMoves_LH_C_1_1) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_1)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_1) _lh_showMoves_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d3 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec length_lh__d3 ls_2 =
  (match ls_2 with
    | `LH_C(h_9, t_9) -> 
      (1 + (length_lh__d3 t_9))
    | `LH_N -> 
      0);;
let rec mappend_lh__d2_d6 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C(h_1_1, ((mappend_lh__d2_d6 t_1_1) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend_lh__d3_d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d3_d0 t_6) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d2_d7 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d2_d7 t_1_0) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec tab_lh__d2 _lh_tab_arg1_0 =
  (if (_lh_tab_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab_lh__d2 (_lh_tab_arg1_0 - 1)))));;
let rec mappend_lh__d2_d8 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d2_d8 t_8) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend_lh__d2_d9 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d2_d9 t_7) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_lh__d1_d5 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C(h_2_9, ((mappend_lh__d1_d5 t_2_9) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec length_lh__d1 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_5, t_2_5) -> 
      (1 + (length_lh__d1 t_2_5))
    | `LH_N -> 
      0);;
let rec showMoves_lh__d4 _lh_showMoves_arg1_0 =
  (match _lh_showMoves_arg1_0 with
    | `LH_C(_lh_showMoves_LH_C_0_0, _lh_showMoves_LH_C_1_0) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_0)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_0) _lh_showMoves_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3_d3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d3_d3 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend_lh__d3_d2 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d3_d2 t_3) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend_lh__d3_d1 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d3_d1 t_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_lh__d1_d7 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C(h_2_7, ((mappend_lh__d1_d7 t_2_7) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_lh__d1_d4 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C(h_3_0, ((mappend_lh__d1_d4 t_3_0) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_lh__d1_d1 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_3_3, t_3_3) -> 
      (`LH_C(h_3_3, ((mappend_lh__d1_d1 t_3_3) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend_lh__d2_d1 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend_lh__d2_d1 t_1_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec showMoves_lh__d2 _lh_showMoves_arg1_2 =
  (match _lh_showMoves_arg1_2 with
    | `LH_C(_lh_showMoves_LH_C_0_2, _lh_showMoves_LH_C_1_2) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_2)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_2) _lh_showMoves_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d2_d3 t_1_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec null_lh__d2 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d5 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C(h_1_3, ((mappend_lh__d2_d5 t_1_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_lh__d2_d4 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend_lh__d2_d4 t_1_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec length_lh__d2 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_2, t_1_2) -> 
      (1 + (length_lh__d2 t_1_2))
    | `LH_N -> 
      0);;
let rec mappend_lh__d2_d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d2_d2 t_1_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec tab_lh__d1 _lh_tab_arg1_1 =
  (if (_lh_tab_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (tab_lh__d1 (_lh_tab_arg1_1 - 1)))));;
let rec sort_lh__d3 _lh_sort_arg1_0 =
  (((qsort_lh__d1 (fun a_2 b_1 -> 
    (let rec _lh_matchIdent_2_7 = a_2 in
      (match _lh_matchIdent_2_7 with
        | `LH_P2(_lh_sort_LH_P2_0_0, _lh_sort_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_2_8 = b_1 in
            (match _lh_matchIdent_2_8 with
              | `LH_P2(_lh_sort_LH_P2_0_1, _lh_sort_LH_P2_1_1) -> 
                ((length_lh__d4 _lh_sort_LH_P2_0_0) <= (length_lh__d4 _lh_sort_LH_P2_0_1))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) _lh_sort_arg1_0) (`LH_N));;
let rec mappend_lh__d1_d2 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_3_2, t_3_2) -> 
      (`LH_C(h_3_2, ((mappend_lh__d1_d2 t_3_2) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec showMoves_lh__d1 _lh_showMoves_arg1_3 =
  (match _lh_showMoves_arg1_3 with
    | `LH_C(_lh_showMoves_LH_C_0_3, _lh_showMoves_LH_C_1_3) -> 
      ((mappend_lh__d3_d4 (showMoveInFull_lh__d1 _lh_showMoves_LH_C_0_3)) ((showMovesAfter_lh__d1 _lh_showMoves_LH_C_0_3) _lh_showMoves_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec showReplies_lh__d1 _lh_showReplies_arg1_2 _lh_showReplies_arg2_2 =
  (match _lh_showReplies_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_2, _lh_showReplies_LH_C_1_2) -> 
      (match _lh_showReplies_LH_C_0_2 with
        | `LH_P2(_lh_showReplies_LH_P2_0_2, _lh_showReplies_LH_P2_1_2) -> 
          ((mappend_lh__d2_d2 ((mappend_lh__d2_d5 ((mappend_lh__d2_d3 ((mappend_lh__d2_d4 ((mappend_lh__d2_d1 (tab_lh__d1 _lh_showReplies_arg2_2)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null_lh__d2 _lh_showReplies_LH_C_1_2) && ((length_lh__d2 _lh_showReplies_LH_P2_0_2) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh__d2 _lh_showReplies_LH_P2_0_2)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d1 _lh_showReplies_LH_P2_1_2) (_lh_showReplies_arg2_2 + 1)))) ((showReplies_lh__d1 _lh_showReplies_LH_C_1_2) _lh_showReplies_arg2_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showReplies_lh__d2 _lh_showReplies_arg1_1 _lh_showReplies_arg2_1 =
  (match _lh_showReplies_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_1, _lh_showReplies_LH_C_1_1) -> 
      (match _lh_showReplies_LH_C_0_1 with
        | `LH_P2(_lh_showReplies_LH_P2_0_1, _lh_showReplies_LH_P2_1_1) -> 
          ((mappend_lh__d3_d0 ((mappend_lh__d2_d8 ((mappend_lh__d2_d7 ((mappend_lh__d2_d9 ((mappend_lh__d2_d6 (tab_lh__d2 _lh_showReplies_arg2_1)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null_lh__d3 _lh_showReplies_LH_C_1_1) && ((length_lh__d3 _lh_showReplies_LH_P2_0_1) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh__d3 _lh_showReplies_LH_P2_0_1)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d1 _lh_showReplies_LH_P2_1_1) (_lh_showReplies_arg2_1 + 1)))) ((showReplies_lh__d2 _lh_showReplies_LH_C_1_1) _lh_showReplies_arg2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showReplies_lh__d3 _lh_showReplies_arg1_0 _lh_showReplies_arg2_0 =
  (match _lh_showReplies_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_showReplies_LH_C_0_0, _lh_showReplies_LH_C_1_0) -> 
      (match _lh_showReplies_LH_C_0_0 with
        | `LH_P2(_lh_showReplies_LH_P2_0_0, _lh_showReplies_LH_P2_1_0) -> 
          ((mappend_lh__d3_d4 ((mappend_lh__d3_d2 ((mappend_lh__d3_d1 ((mappend_lh__d3_d4 ((mappend_lh__d3_d3 (tab_lh__d2 _lh_showReplies_arg2_0)) (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_N))))))))) (if ((null_lh__d3 _lh_showReplies_LH_C_1_0) && ((length_lh__d4 _lh_showReplies_LH_P2_0_0) > 1)) then
            (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_N)))))))))))))
          else
            (showMoves_lh__d4 _lh_showReplies_LH_P2_0_0)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d1 _lh_showReplies_LH_P2_1_0) (_lh_showReplies_arg2_0 + 1)))) ((showReplies_lh__d3 _lh_showReplies_LH_C_1_0) _lh_showReplies_arg2_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
showSoln_lh__d1 _lh_showSoln_arg1_2 _lh_showSoln_arg2_2 =
  (match _lh_showSoln_arg1_2 with
    | `Soln(_lh_showSoln_Soln_0_2, _lh_showSoln_Soln_1_2) -> 
      ((mappend_lh__d1_d6 ((mappend_lh__d1_d5 ((mappend_lh__d1_d3 (string_of_int _lh_showSoln_arg2_2)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull_lh__d1 _lh_showSoln_Soln_0_2))) (let rec _lh_matchIdent_4_1 = _lh_showSoln_Soln_1_2 in
        (match _lh_matchIdent_4_1 with
          | `LH_N -> 
            (`LH_C('+', (`LH_C('+', (`LH_C('|', (`LH_N)))))))
          | `LH_C(_lh_showSoln_LH_C_0_2, _lh_showSoln_LH_C_1_2) -> 
            (match _lh_showSoln_LH_C_0_2 with
              | `LH_P2(_lh_showSoln_LH_P2_0_2, _lh_showSoln_LH_P2_1_2) -> 
                (match _lh_showSoln_LH_C_1_2 with
                  | `LH_N -> 
                    ((mappend_lh__d1_d2 ((mappend_lh__d1_d4 ((mappend_lh__d1_d1 (`LH_C(',', (`LH_C(' ', (`LH_N)))))) (if ((length_lh__d1 _lh_showSoln_LH_P2_0_2) > 1) then
                      (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))
                    else
                      (showMoves_lh__d1 _lh_showSoln_LH_P2_0_2)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d1 _lh_showSoln_LH_P2_1_2) (_lh_showSoln_arg2_2 + 1)))
                  | _ -> 
                    ((mappend_lh__d1_d9 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d2 (sort_lh__d3 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))
              | _ -> 
                ((mappend_lh__d1_d8 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d2 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))
          | _ -> 
            ((mappend_lh__d1_d7 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d1 (sort_lh__d1 _lh_showSoln_Soln_1_2)) _lh_showSoln_arg2_2)))))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d7 f_4 i_2 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_3_4, t_3_4) -> 
      ((f_4 h_3_4) (((foldr_lh__d7 f_4) i_2) t_3_4))
    | `LH_N -> 
      i_2);;
let rec showSoln_lh__d3 _lh_showSoln_arg1_0 _lh_showSoln_arg2_0 =
  (match _lh_showSoln_arg1_0 with
    | `Soln(_lh_showSoln_Soln_0_0, _lh_showSoln_Soln_1_0) -> 
      ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (string_of_int _lh_showSoln_arg2_0)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull_lh__d1 _lh_showSoln_Soln_0_0))) (let rec _lh_matchIdent_4 = _lh_showSoln_Soln_1_0 in
        (match _lh_matchIdent_4 with
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
                      (showMoves_lh__d4 _lh_showSoln_LH_P2_0_0)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d3 _lh_showSoln_LH_P2_1_0) (_lh_showSoln_arg2_0 + 1)))
                  | _ -> 
                    ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))
              | _ -> 
                ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))
          | _ -> 
            ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_0)) _lh_showSoln_arg2_0)))))
    | _ -> 
      (failwith "error"));;
let rec showSoln_lh__d2 _lh_showSoln_arg1_1 _lh_showSoln_arg2_1 =
  (match _lh_showSoln_arg1_1 with
    | `Soln(_lh_showSoln_Soln_0_1, _lh_showSoln_Soln_1_1) -> 
      ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 ((mappend_lh__d3_d4 (string_of_int _lh_showSoln_arg2_1)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) (showMoveInFull_lh__d1 _lh_showSoln_Soln_0_1))) (let rec _lh_matchIdent_5 = _lh_showSoln_Soln_1_1 in
        (match _lh_matchIdent_5 with
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
                      (showMoves_lh__d4 _lh_showSoln_LH_P2_0_1)))) (`LH_C(';', (`LH_C(' ', (`LH_N))))))) ((showSoln_lh__d2 _lh_showSoln_LH_P2_1_1) (_lh_showSoln_arg2_1 + 1)))
                  | _ -> 
                    ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))
              | _ -> 
                ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))
          | _ -> 
            ((mappend_lh__d3_d4 (`LH_C(',', (`LH_C('|', (`LH_N)))))) ((showReplies_lh__d3 (sort_lh__d3 _lh_showSoln_Soln_1_1)) _lh_showSoln_arg2_1)))))
    | _ -> 
      (failwith "error"));;
let rec compact_lh__d1 _lh_compact_arg1_0 =
  (match _lh_compact_arg1_0 with
    | `Solution(_lh_compact_Solution_0_0, _lh_compact_Solution_1_0) -> 
      (`Soln(_lh_compact_Solution_0_0, (((foldr_lh__d7 insertCompact_lh__d1) (`LH_N)) _lh_compact_Solution_1_0)))
    | _ -> 
      (failwith "error"))
and
insertCompact_lh__d1 _lh_insertCompact_arg1_0 _lh_insertCompact_arg2_0 =
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
        (let rec cs_0 = (compact_lh__d1 _lh_insertCompact_LH_P2_1_0) in
          (let rec ic_0 = (fun ls_9 -> 
            (let rec _lh_matchIdent_3_3 = ls_9 in
              (match _lh_matchIdent_3_3 with
                | `LH_N -> 
                  (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_0, (`LH_N))), cs_0)), (`LH_N)))
                | `LH_C(_lh_insertCompact_LH_C_0_0, _lh_insertCompact_LH_C_1_0) -> 
                  (match _lh_insertCompact_LH_C_0_0 with
                    | `LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1) -> 
                      (let rec a_5 = ((showSoln_lh__d3 cs_0) 1) in
                        (let rec b_4 = ((showSoln_lh__d2 _lh_insertCompact_LH_P2_1_1) 1) in
                          (if (a_5 < b_4) then
                            (`LH_C((`LH_P2((`LH_C(_lh_insertCompact_LH_P2_0_0, (`LH_N))), cs_0)), (`LH_C((`LH_P2(_lh_insertCompact_LH_P2_0_1, _lh_insertCompact_LH_P2_1_1)), _lh_insertCompact_LH_C_1_0))))
                          else
                            (if (a_5 = b_4) then
                              (`LH_C((`LH_P2(((insert_0 _lh_insertCompact_LH_P2_0_0) _lh_insertCompact_LH_P2_0_1), cs_0)), _lh_insertCompact_LH_C_1_0))
                            else
                              (if (a_5 > b_4) then
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
let rec showResult_lh__d1 _lh_showResult_arg1_0 =
  (match _lh_showResult_arg1_0 with
    | `Nothing -> 
      (`LH_C('N', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('!', (`LH_N)))))))))))))))))))))))))
    | `Just(_lh_showResult_Just_0_0) -> 
      ((showSoln_lh__d1 (compact_lh__d1 _lh_showResult_Just_0_0)) 1)
    | _ -> 
      (failwith "error"));;
let rec solve_lh__d1 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (showResult_lh__d1 (((solution_lh__d1 _lh_solve_arg1_0) _lh_solve_arg2_0) ((2 * _lh_solve_arg3_0) - 1)));;
let rec mappend_lh__d5 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_5_7, t_5_7) -> 
      (`LH_C(h_5_7, ((mappend_lh__d5 t_5_7) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend_lh__d6 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_5_6, t_5_6) -> 
      (`LH_C(h_5_6, ((mappend_lh__d6 t_5_6) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend_lh__d4 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_5_8, t_5_8) -> 
      (`LH_C(h_5_8, ((mappend_lh__d4 t_5_8) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend_lh__d7 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_5_5, t_5_5) -> 
      (`LH_C(h_5_5, ((mappend_lh__d7 t_5_5) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_lh__d2 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_6_0, t_6_0) -> 
      (`LH_C(h_6_0, ((mappend_lh__d2 t_6_0) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend_lh__d8 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_5_4, t_5_4) -> 
      (`LH_C(h_5_4, ((mappend_lh__d8 t_5_4) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec map_lh__d1 f_1_3 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_5_2, t_5_2) -> 
      (`LH_C((f_1_3 h_5_2), ((map_lh__d1 f_1_3) t_5_2)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_9 b_1_1 =
  (if (a_9 <= b_1_1) then
    (`LH_C(a_9, ((enumFromTo_lh__d1 (a_9 + 1)) b_1_1)))
  else
    (`LH_N));;
let rec reverse_helper_lh__d1 ls_2_5 a_7 =
  (match ls_2_5 with
    | `LH_C(h_4_8, t_4_8) -> 
      ((reverse_helper_lh__d1 t_4_8) (`LH_C(h_4_8, a_7)))
    | `LH_N -> 
      a_7);;
let rec reverse_lh__d1 ls_2_7 =
  ((reverse_helper_lh__d1 ls_2_7) (`LH_N));;
let rec kindToChar_lh__d1 _lh_kindToChar_arg1_1 =
  (let rec _lh_matchIdent_5_6 = _lh_kindToChar_arg1_1 in
    (match _lh_matchIdent_5_6 with
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
  (let rec _lh_matchIdent_5_7 = _lh_toLower_arg1_0 in
    (match _lh_matchIdent_5_7 with
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
        _lh_matchIdent_5_7));;
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
let rec mappend_lh__d9 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_4_9, t_4_9) -> 
      (`LH_C(h_4_9, ((mappend_lh__d9 t_4_9) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend_lh__d1_d0 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_4_4, t_4_4) -> 
      (`LH_C(h_4_4, ((mappend_lh__d1_d0 t_4_4) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec concat_lh__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_5_1, t_5_1) -> 
      ((mappend_lh__d1_d0 h_5_1) (concat_lh__d1 t_5_1))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d1 ((map_lh__d2 (fun l_0 -> 
    ((mappend_lh__d9 l_0) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec enumFromTo_lh__d2 a_8 b_1_0 =
  (if (a_8 <= b_1_0) then
    (`LH_C(a_8, ((enumFromTo_lh__d2 (a_8 + 1)) b_1_0)))
  else
    (`LH_N));;
let rec foldr_lh__d1 f_1_4 i_8 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_5_3, t_5_3) -> 
      ((f_1_4 h_5_3) (((foldr_lh__d1 f_1_4) i_8) t_5_3))
    | `LH_N -> 
      i_8);;
let rec showBoard_lh__d1 _lh_showBoard_arg1_0 =
  (let rec showRank_0 = (fun r_0 -> 
    (let rec consFile_0 = (fun f_1_5 s_0 -> 
      (let rec _lh_matchIdent_6_4 = ((pieceAt_lh__d1 _lh_showBoard_arg1_0) (`LH_P2(f_1_5, r_0))) in
        (match _lh_matchIdent_6_4 with
          | `Nothing -> 
            ((mappend_lh__d8 (`LH_C(' ', (`LH_C('-', (`LH_N)))))) s_0)
          | `Just(_lh_showBoard_Just_0_0) -> 
            (`LH_C(' ', (`LH_C((pieceToChar_lh__d1 _lh_showBoard_Just_0_0), s_0))))
          | _ -> 
            (failwith "error")))) in
      (((foldr_lh__d1 consFile_0) (`LH_N)) ((enumFromTo_lh__d1 1) 8)))) in
    (unlines_lh__d1 ((map_lh__d1 showRank_0) (reverse_lh__d1 ((enumFromTo_lh__d2 1) 8)))));;
let rec enumFromTo_lh__d4 a_1 b_0 =
  (if (a_1 <= b_0) then
    (`LH_C(a_1, ((enumFromTo_lh__d4 (a_1 + 1)) b_0)))
  else
    (`LH_N));;
let rec zipWith_lh__d2 f_2 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_1_4 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_2 hx_0) hy_0), (((zipWith_lh__d2 f_2) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec isUpper_lh__d1 _lh_isUpper_arg1_0 =
  (let rec _lh_matchIdent_3 = _lh_isUpper_arg1_0 in
    (match _lh_matchIdent_3 with
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
        (let rec kin_0 = (let rec _lh_matchIdent_2_5 = (toLower_lh__d1 _lh_parseSquare_arg3_0) in
          (match _lh_matchIdent_2_5 with
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
let rec filter_lh__d2 f_3 ls_7 =
  (match ls_7 with
    | `LH_C(h_2_2, t_2_2) -> 
      (if (f_3 h_2_2) then
        (`LH_C(h_2_2, ((filter_lh__d2 f_3) t_2_2)))
      else
        ((filter_lh__d2 f_3) t_2_2))
    | `LH_N -> 
      (`LH_N));;
let rec parseRank_lh__d1 _lh_parseRank_arg1_0 _lh_parseRank_arg2_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      (concat_lh__d3 (((zipWith_lh__d2 (parseSquare_lh__d1 _lh_parseRank_arg1_0)) ((enumFromTo_lh__d4 1) 8)) _lh_funcomp_x_1))) ((filter_lh__d2 (fun x_5 -> 
      (not (x_5 = ' ')))) _lh_funcomp_x_0))) _lh_parseRank_arg2_0);;
let rec mappend_lh__d2_d0 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_3, t_2_3) -> 
      (`LH_C(h_2_3, ((mappend_lh__d2_d0 t_2_3) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec concat_lh__d2 lss_1 =
  (match lss_1 with
    | `LH_C(h_4_0, t_4_0) -> 
      ((mappend_lh__d2_d0 h_4_0) (concat_lh__d2 t_4_0))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh__d3 f_8 i_6 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_3_9, t_3_9) -> 
      ((f_8 h_3_9) (((foldr_lh__d3 f_8) i_6) t_3_9))
    | `LH_N -> 
      i_6);;
let rec putPieceAt_lh__d1 _lh_putPieceAt_arg1_2 _lh_putPieceAt_arg2_2 _lh_putPieceAt_arg3_2 =
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
let rec zipWith_lh__d1 f_9 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_2_5 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_9 hx_1) hy_1), (((zipWith_lh__d1 f_9) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d3 a_6 b_9 =
  (if (a_6 <= b_9) then
    (`LH_C(a_6, ((enumFromTo_lh__d3 (a_6 + 1)) b_9)))
  else
    (`LH_N));;
let rec emptyBoard_lh__d1 =
  (`Board((`LH_N), (`LH_N)));;
let rec reverse_helper_lh__d2 ls_6 a_0 =
  (match ls_6 with
    | `LH_C(h_2_0, t_2_0) -> 
      ((reverse_helper_lh__d2 t_2_0) (`LH_C(h_2_0, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d2 ls_1_9 =
  ((reverse_helper_lh__d2 ls_1_9) (`LH_N));;
let rec parseBoard_lh__d1 _lh_parseBoard_arg1_0 =
  (let rec addPiece_0 = (fun p_sq_0 -> 
    (let rec _lh_matchIdent_5_4 = p_sq_0 in
      (match _lh_matchIdent_5_4 with
        | `LH_P2(_lh_parseBoard_LH_P2_0_0, _lh_parseBoard_LH_P2_1_0) -> 
          ((putPieceAt_lh__d1 _lh_parseBoard_LH_P2_1_0) _lh_parseBoard_LH_P2_0_0)
        | _ -> 
          (failwith "error")))) in
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (((foldr_lh__d3 addPiece_0) emptyBoard_lh__d1) (concat_lh__d2 _lh_funcomp_x_3))) (((zipWith_lh__d1 parseRank_lh__d1) (reverse_lh__d2 ((enumFromTo_lh__d3 1) 8))) _lh_funcomp_x_2))) _lh_parseBoard_arg1_0));;
let rec break_lh__d2 _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_2_6 = ((break_lh__d2 _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_2_6 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
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
let rec words_lh__d1 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_3_9 = ((dropWhile_lh__d1 (fun x_6 -> 
    (x_6 = ' '))) _lh_words_arg1_0) in
    (match _lh_matchIdent_3_9 with
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (let rec _lh_matchIdent_4_0 = ((break_lh__d2 (fun x_7 -> 
          (x_7 = ' '))) _lh_matchIdent_3_9) in
          (match _lh_matchIdent_4_0 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh__d1 _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))));;
let rec head_lh__d1 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_4_2, t_4_2) -> 
      h_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec parseGoal_lh__d1 _lh_parseGoal_arg1_0 =
  (match _lh_parseGoal_arg1_0 with
    | `LH_C(_lh_parseGoal_LH_C_0_0, _lh_parseGoal_LH_C_1_0) -> 
      (match _lh_parseGoal_LH_C_1_0 with
        | `LH_N -> 
          (let rec ws_0 = (words_lh__d1 _lh_parseGoal_LH_C_0_0) in
            (let rec c_0 = (if ((head_lh__d1 ws_0) = (`LH_C('B', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_N)))))))))))) then
              (`Black)
            else
              (`White)) in
              (let rec n_3 = 2 in
                (`LH_P2(c_0, n_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec take_lh__d1 n_2 ls_2_2 =
  (if (n_2 > 0) then
    (match ls_2_2 with
      | `LH_C(h_4_3, t_4_3) -> 
        (`LH_C(h_4_3, ((take_lh__d1 (n_2 - 1)) t_4_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec splitAt_lh__d1 _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (`LH_P2(((take_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0), ((drop_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0)));;
let rec take_lh__d2 n_1 ls_2_0 =
  (if (n_1 > 0) then
    (match ls_2_0 with
      | `LH_C(h_4_1, t_4_1) -> 
        (`LH_C(h_4_1, ((take_lh__d2 (n_1 - 1)) t_4_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec comment_lh__d1 _lh_comment_arg1_0 =
  ((_lh_comment_arg1_0 = (`LH_N)) || (((take_lh__d2 2) _lh_comment_arg1_0) = (`LH_C('-', (`LH_C('-', (`LH_N)))))));;
let rec filter_lh__d1 f_1_1 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_4_7, t_4_7) -> 
      (if (f_1_1 h_4_7) then
        (`LH_C(h_4_7, ((filter_lh__d1 f_1_1) t_4_7)))
      else
        ((filter_lh__d1 f_1_1) t_4_7))
    | `LH_N -> 
      (`LH_N));;
let rec parseProblem_lh__d1 _lh_parseProblem_arg1_0 =
  (let rec bdtxt_gltxt_0 = ((splitAt_lh__d1 8) ((filter_lh__d1 (fun _lh_funcomp_x_4 -> 
    (not (comment_lh__d1 _lh_funcomp_x_4)))) _lh_parseProblem_arg1_0)) in
    (let rec _lh_matchIdent_6_2 = bdtxt_gltxt_0 in
      (match _lh_matchIdent_6_2 with
        | `LH_P2(_lh_parseProblem_LH_P2_0_0, _lh_parseProblem_LH_P2_1_0) -> 
          (let rec bd_0 = (parseBoard_lh__d1 _lh_parseProblem_LH_P2_0_0) in
            (let rec gl_0 = (parseGoal_lh__d1 _lh_parseProblem_LH_P2_1_0) in
              (`LH_P2(bd_0, gl_0))))
        | _ -> 
          (failwith "error"))));;
let rec break_lh__d1 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_5_3 = ((break_lh__d1 _lh_break_arg1_1) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_5_3 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec lines_lh__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_6_0 = ((break_lh__d1 (fun x_9 -> 
    (x_9 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_6_0 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_6_1 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_6_1 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh__d1 _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec readProblem_lh__d1 _lh_readProblem_arg1_0 =
  ((fun _lh_funcomp_x_5 -> 
    (parseProblem_lh__d1 (lines_lh__d1 _lh_funcomp_x_5))) _lh_readProblem_arg1_0);;
let rec testMate_nofib_lh__d1 _lh_testMate_nofib_arg1_0 =
  (let rec input_0 = (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('A', (`LH_C('.', (`LH_C(' ', (`LH_C('E', (`LH_C('l', (`LH_C('l', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('n', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('1', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(',', (`LH_C(' ', (`LH_C('L', (`LH_C('u', (`LH_C('i', (`LH_C('g', (`LH_C('i', (`LH_C(' ', (`LH_C('C', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('u', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('i', (`LH_C(',', (`LH_C(' ', (`LH_C('G', (`LH_C('e', (`LH_C('n', (`LH_C('o', (`LH_C('a', (`LH_C(',', (`LH_C(' ', (`LH_C('1', (`LH_C('9', (`LH_C('2', (`LH_C('5', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('`', (`LH_C('O', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('w', (`LH_C('o', (`LH_C('-', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C(',', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('u', (`LH_C('n', (`LH_C('s', (`LH_C('u', (`LH_C('r', (`LH_C('p', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('a', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('(', (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('i', (`LH_C('p', (`LH_C('s', (`LH_C(')', (`LH_C('|', (`LH_C('|', (`LH_C('b', (`LH_C(' ', (`LH_C('k', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('r', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('R', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('r', (`LH_C(' ', (`LH_C('P', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('|', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('-', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('B', (`LH_C(' ', (`LH_C('B', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_C('W', (`LH_C('h', (`LH_C('i', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('2', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec bdcn_0 = (readProblem_lh__d1 input_0) in
      (let rec _lh_matchIdent_6_5 = bdcn_0 in
        (match _lh_matchIdent_6_5 with
          | `LH_P2(_lh_testMate_nofib_LH_P2_0_0, _lh_testMate_nofib_LH_P2_1_0) -> 
            (match _lh_testMate_nofib_LH_P2_1_0 with
              | `LH_P2(_lh_testMate_nofib_LH_P2_0_1, _lh_testMate_nofib_LH_P2_1_1) -> 
                ((mappend_lh__d6 ((mappend_lh__d7 ((mappend_lh__d4 ((mappend_lh__d3 ((mappend_lh__d5 ((mappend_lh__d1 ((mappend_lh__d2 (showBoard_lh__d1 _lh_testMate_nofib_LH_P2_0_0)) (`LH_C('|', (`LH_N))))) (showColour_lh__d1 _lh_testMate_nofib_LH_P2_0_1))) (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))) (string_of_int _lh_testMate_nofib_LH_P2_1_1))) (`LH_C('|', (`LH_N))))) (`LH_C('|', (`LH_N))))) (((solve_lh__d1 _lh_testMate_nofib_LH_P2_0_0) _lh_testMate_nofib_LH_P2_0_1) _lh_testMate_nofib_LH_P2_1_1))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))));;
end;;

