

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec addPiece__d0 _lh_addPiece_arg1_1 _lh_addPiece_arg2_1 =
  (match _lh_addPiece_arg2_1 with
    | `Board(_lh_addPiece_Board_0_1, _lh_addPiece_Board_1_1, _lh_addPiece_Board_2_1, _lh_addPiece_Board_3_1) -> 
      (`Board(_lh_addPiece_Board_0_1, (_lh_addPiece_Board_1_1 + 1), _lh_addPiece_Board_2_1, (`LH_C(_lh_addPiece_arg1_1, _lh_addPiece_Board_3_1))))
    | _ -> 
      (failwith "error"));;
let rec addPiece__d1 _lh_addPiece_arg1_2 _lh_addPiece_arg2_2 =
  (match _lh_addPiece_arg2_2 with
    | `Board(_lh_addPiece_Board_0_2, _lh_addPiece_Board_1_2, _lh_addPiece_Board_2_2, _lh_addPiece_Board_3_2) -> 
      (`Board(_lh_addPiece_Board_0_2, (_lh_addPiece_Board_1_2 + 1), _lh_addPiece_Board_2_2, (`LH_C(_lh_addPiece_arg1_2, _lh_addPiece_Board_3_2))))
    | _ -> 
      (failwith "error"));;
let rec addPiece__d2 _lh_addPiece_arg1_0 _lh_addPiece_arg2_0 =
  (match _lh_addPiece_arg2_0 with
    | `Board(_lh_addPiece_Board_0_0, _lh_addPiece_Board_1_0, _lh_addPiece_Board_2_0, _lh_addPiece_Board_3_0) -> 
      (`Board(_lh_addPiece_Board_0_0, (_lh_addPiece_Board_1_0 + 1), _lh_addPiece_Board_2_0, (`LH_C(_lh_addPiece_arg1_0, _lh_addPiece_Board_3_0))))
    | _ -> 
      (failwith "error"));;
let rec assignMoveNo__d0 _lh_assignMoveNo_arg1_0 _lh_assignMoveNo_arg2_0 _lh_assignMoveNo_arg3_0 =
  (match _lh_assignMoveNo_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_assignMoveNo_LH_C_0_0, _lh_assignMoveNo_LH_C_1_0) -> 
      (match _lh_assignMoveNo_LH_C_0_0 with
        | `LH_P2(_lh_assignMoveNo_LH_P2_0_0, _lh_assignMoveNo_LH_P2_1_0) -> 
          (`LH_C((`LH_P2((((_lh_assignMoveNo_LH_P2_1_0 - 1) * _lh_assignMoveNo_arg2_0) + _lh_assignMoveNo_LH_P2_0_0), _lh_assignMoveNo_arg3_0)), (((assignMoveNo__d0 _lh_assignMoveNo_LH_C_1_0) _lh_assignMoveNo_arg2_0) (_lh_assignMoveNo_arg3_0 - 1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec canMoveTo__d1 _lh_canMoveTo_arg1_5 _lh_canMoveTo_arg2_3_7 =
  (_lh_canMoveTo_arg1_5 _lh_canMoveTo_arg2_3_7);;
let rec canMoveTo__d2 _lh_canMoveTo_arg1_2 _lh_canMoveTo_arg2_1_8 =
  (_lh_canMoveTo_arg1_2 _lh_canMoveTo_arg2_1_8);;
let rec canMoveTo__d3 _lh_canMoveTo_arg1_0 _lh_canMoveTo_arg2_0 =
  (_lh_canMoveTo_arg1_0 _lh_canMoveTo_arg2_0);;
let rec canMoveTo__d4 _lh_canMoveTo_arg1_6 _lh_canMoveTo_arg2_3_8 =
  (_lh_canMoveTo_arg1_6 _lh_canMoveTo_arg2_3_8);;
let rec canMoveTo__d5 _lh_canMoveTo_arg1_4 _lh_canMoveTo_arg2_2_8 =
  (_lh_canMoveTo_arg1_4 _lh_canMoveTo_arg2_2_8);;
let rec createBoard__d0 _lh_createBoard_arg1_0 _lh_createBoard_arg2_0 =
  (`Board(_lh_createBoard_arg1_0, 1, _lh_createBoard_arg2_0, (`LH_C(_lh_createBoard_arg2_0, (`LH_N)))));;
let rec createQueue__d0 =
  (`LH_N);;
let rec enumFromTo__d1 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_1_0 = ((enumFromTo__d1 (a_2 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_1_0 = a_2 in
        (fun _lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_1 _lh_listcomp_fun_1_5 -> 
          (let rec tx_0 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_0) in
            (let rec hx_0 = (`LH_P2(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_h_1_0)) in
              (fun f_4 ys_1_1 -> 
                (((ys_1_1 f_4) hx_0) tx_0)))))))
  else
    (fun _lh_listcomp_fun_ls_h_1_2 _lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_1_7 -> 
      (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_2)));;
let rec firstPiece__d0 _lh_firstPiece_arg1_0 =
  (match _lh_firstPiece_arg1_0 with
    | `Board(_lh_firstPiece_Board_0_0, _lh_firstPiece_Board_1_0, _lh_firstPiece_Board_2_0, _lh_firstPiece_Board_3_0) -> 
      _lh_firstPiece_Board_2_0
    | _ -> 
      (failwith "error"));;
let rec firstPiece__d1 _lh_firstPiece_arg1_2 =
  (match _lh_firstPiece_arg1_2 with
    | `Board(_lh_firstPiece_Board_0_2, _lh_firstPiece_Board_1_2, _lh_firstPiece_Board_2_2, _lh_firstPiece_Board_3_2) -> 
      _lh_firstPiece_Board_2_2
    | _ -> 
      (failwith "error"));;
let rec firstPiece__d2 _lh_firstPiece_arg1_1 =
  (match _lh_firstPiece_arg1_1 with
    | `Board(_lh_firstPiece_Board_0_1, _lh_firstPiece_Board_1_1, _lh_firstPiece_Board_2_1, _lh_firstPiece_Board_3_1) -> 
      _lh_firstPiece_Board_2_1
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1 i_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_1_0) -> 
      ((f_1 h_2) (((foldr__d0 f_1) i_1) t_1_0))
    | `LH_N -> 
      i_1);;
let rec foldr__d1 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      ((f_0 h_0) (((foldr__d1 f_0) i_0) t_0))
    | `LH_N -> 
      i_0);;
let rec inList__d0 _lh_inList_arg1_4 _lh_inList_arg2_4 =
  (match _lh_inList_arg2_4 with
    | `LH_C(_lh_inList_LH_C_0_4, _lh_inList_LH_C_1_4) -> 
      (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
        true
      else
        ((inList__d0 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_5 _lh_inList_arg2_5 =
  (match _lh_inList_arg2_5 with
    | `LH_C(_lh_inList_LH_C_0_5, _lh_inList_LH_C_1_5) -> 
      (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_5) then
        true
      else
        ((inList__d1 _lh_inList_arg1_5) _lh_inList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d2 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d2 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d3 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList__d3 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d4 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList__d4 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d5 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d5 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d6 _lh_inList_arg1_6 _lh_inList_arg2_6 =
  (match _lh_inList_arg2_6 with
    | `LH_C(_lh_inList_LH_C_0_6, _lh_inList_LH_C_1_6) -> 
      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_6) then
        true
      else
        ((inList__d6 _lh_inList_arg1_6) _lh_inList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inquireFront__d0 _lh_inquireFront_arg1_2 =
  (match _lh_inquireFront_arg1_2 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_2, _lh_inquireFront_LH_C_1_2) -> 
      _lh_inquireFront_LH_C_0_2
    | _ -> 
      (failwith "error"));;
let rec inquireFront__d1 _lh_inquireFront_arg1_1 =
  (match _lh_inquireFront_arg1_1 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_1, _lh_inquireFront_LH_C_1_1) -> 
      _lh_inquireFront_LH_C_0_1
    | _ -> 
      (failwith "error"));;
let rec inquireFront__d2 _lh_inquireFront_arg1_0 =
  (match _lh_inquireFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_0, _lh_inquireFront_LH_C_1_0) -> 
      _lh_inquireFront_LH_C_0_0
    | _ -> 
      (failwith "error"));;
let rec intChessSetComp__d0 _lh_intChessSetComp_arg1_0 _lh_intChessSetComp_arg2_0 =
  (match _lh_intChessSetComp_arg1_0 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_0, _lh_intChessSetComp_LH_P2_1_0) -> 
      (match _lh_intChessSetComp_arg2_0 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_1, _lh_intChessSetComp_LH_P2_1_1) -> 
          (_lh_intChessSetComp_LH_P2_0_0 < _lh_intChessSetComp_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intChessSetComp__d1 _lh_intChessSetComp_arg1_1 _lh_intChessSetComp_arg2_1 =
  (match _lh_intChessSetComp_arg1_1 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_2, _lh_intChessSetComp_LH_P2_1_2) -> 
      (match _lh_intChessSetComp_arg2_1 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_3, _lh_intChessSetComp_LH_P2_1_3) -> 
          (_lh_intChessSetComp_LH_P2_0_2 < _lh_intChessSetComp_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intintComp__d0 _lh_intintComp_arg1_1 _lh_intintComp_arg2_1 =
  (match _lh_intintComp_arg1_1 with
    | `LH_P2(_lh_intintComp_LH_P2_0_2, _lh_intintComp_LH_P2_1_2) -> 
      (match _lh_intintComp_arg2_1 with
        | `LH_P2(_lh_intintComp_LH_P2_0_3, _lh_intintComp_LH_P2_1_3) -> 
          ((_lh_intintComp_LH_P2_0_2 < _lh_intintComp_LH_P2_0_3) || ((_lh_intintComp_LH_P2_0_2 = _lh_intintComp_LH_P2_0_3) && (_lh_intintComp_LH_P2_1_2 < _lh_intintComp_LH_P2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intintComp__d1 _lh_intintComp_arg1_0 _lh_intintComp_arg2_0 =
  (match _lh_intintComp_arg1_0 with
    | `LH_P2(_lh_intintComp_LH_P2_0_0, _lh_intintComp_LH_P2_1_0) -> 
      (match _lh_intintComp_arg2_0 with
        | `LH_P2(_lh_intintComp_LH_P2_0_1, _lh_intintComp_LH_P2_1_1) -> 
          ((_lh_intintComp_LH_P2_0_0 < _lh_intintComp_LH_P2_0_1) || ((_lh_intintComp_LH_P2_0_0 = _lh_intintComp_LH_P2_0_1) && (_lh_intintComp_LH_P2_1_0 < _lh_intintComp_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d0 _lh_lastPiece_arg1_2 =
  (match _lh_lastPiece_arg1_2 with
    | `Board(_lh_lastPiece_Board_0_2, _lh_lastPiece_Board_1_2, _lh_lastPiece_Board_2_2, _lh_lastPiece_Board_3_2) -> 
      (match _lh_lastPiece_Board_3_2 with
        | `LH_C(_lh_lastPiece_LH_C_0_2, _lh_lastPiece_LH_C_1_2) -> 
          _lh_lastPiece_LH_C_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d1 _lh_lastPiece_arg1_1 =
  (match _lh_lastPiece_arg1_1 with
    | `Board(_lh_lastPiece_Board_0_1, _lh_lastPiece_Board_1_1, _lh_lastPiece_Board_2_1, _lh_lastPiece_Board_3_1) -> 
      (match _lh_lastPiece_Board_3_1 with
        | `LH_C(_lh_lastPiece_LH_C_0_1, _lh_lastPiece_LH_C_1_1) -> 
          _lh_lastPiece_LH_C_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d2 _lh_lastPiece_arg1_4 =
  (match _lh_lastPiece_arg1_4 with
    | `Board(_lh_lastPiece_Board_0_4, _lh_lastPiece_Board_1_4, _lh_lastPiece_Board_2_4, _lh_lastPiece_Board_3_4) -> 
      (match _lh_lastPiece_Board_3_4 with
        | `LH_C(_lh_lastPiece_LH_C_0_4, _lh_lastPiece_LH_C_1_4) -> 
          _lh_lastPiece_LH_C_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d3 _lh_lastPiece_arg1_3 =
  (match _lh_lastPiece_arg1_3 with
    | `Board(_lh_lastPiece_Board_0_3, _lh_lastPiece_Board_1_3, _lh_lastPiece_Board_2_3, _lh_lastPiece_Board_3_3) -> 
      (match _lh_lastPiece_Board_3_3 with
        | `LH_C(_lh_lastPiece_LH_C_0_3, _lh_lastPiece_LH_C_1_3) -> 
          _lh_lastPiece_LH_C_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d4 _lh_lastPiece_arg1_0 =
  (match _lh_lastPiece_arg1_0 with
    | `Board(_lh_lastPiece_Board_0_0, _lh_lastPiece_Board_1_0, _lh_lastPiece_Board_2_0, _lh_lastPiece_Board_3_0) -> 
      (match _lh_lastPiece_Board_3_0 with
        | `LH_C(_lh_lastPiece_LH_C_0_0, _lh_lastPiece_LH_C_1_0) -> 
          _lh_lastPiece_LH_C_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d5 _lh_lastPiece_arg1_5 =
  (match _lh_lastPiece_arg1_5 with
    | `Board(_lh_lastPiece_Board_0_5, _lh_lastPiece_Board_1_5, _lh_lastPiece_Board_2_5, _lh_lastPiece_Board_3_5) -> 
      (match _lh_lastPiece_Board_3_5 with
        | `LH_C(_lh_lastPiece_LH_C_0_5, _lh_lastPiece_LH_C_1_5) -> 
          _lh_lastPiece_LH_C_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d6 _lh_lastPiece_arg1_6 =
  (match _lh_lastPiece_arg1_6 with
    | `Board(_lh_lastPiece_Board_0_6, _lh_lastPiece_Board_1_6, _lh_lastPiece_Board_2_6, _lh_lastPiece_Board_3_6) -> 
      (match _lh_lastPiece_Board_3_6 with
        | `LH_C(_lh_lastPiece_LH_C_0_6, _lh_lastPiece_LH_C_1_6) -> 
          _lh_lastPiece_LH_C_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_4_6, t_6_3) -> 
      (1 + (length__d0 t_6_3))
    | `LH_N -> 
      0);;
let rec length__d1 ls_8 =
  (ls_8 99);;
let rec length__d2 ls_5 =
  (ls_5 99);;
let rec length__d3 ls_7 =
  (ls_7 99);;
let rec length__d4 ls_9 =
  (match ls_9 with
    | `LH_C(h_4_5, t_6_2) -> 
      (1 + (length__d4 t_6_2))
    | `LH_N -> 
      0);;
let rec length__d5 ls_0 =
  (ls_0 99);;
let rec map__d0 f_2 ls_3 =
  (ls_3 f_2);;
let rec map__d1 f_2_8 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_4_7, t_7_2) -> 
      (`LH_C((f_2_8 h_4_7), ((map__d1 f_2_8) t_7_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_5 ls_6 =
  (ls_6 f_5);;
let rec map__d3 f_3 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_1_3) -> 
      (`LH_C((f_3 h_5), ((map__d3 f_3) t_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_5 ys_9 =
  (xs_5 ys_9);;
let rec mappend__d1 xs_1_2 ys_2_1 =
  (xs_1_2 ys_2_1);;
let rec mappend__d1_d0 xs_1_4 ys_2_7 =
  (xs_1_4 ys_2_7);;
let rec mappend__d1_d1 xs_9 ys_1_7 =
  (xs_9 ys_1_7);;
let rec mappend__d1_d3 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec mappend__d1_d5 xs_1_1 ys_2_0 =
  (xs_1_1 ys_2_0);;
let rec mappend__d1_d6 xs_8 ys_1_3 =
  (xs_8 ys_1_3);;
let rec mappend__d1_d7 xs_6 ys_1_0 =
  (xs_6 ys_1_0);;
let rec mappend__d1_d8 xs_1_9 ys_4_5 =
  (xs_1_9 ys_4_5);;
let rec mappend__d4 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec mappend__d6 xs_2_4 ys_5_5 =
  (xs_2_4 ys_5_5);;
let rec mappend__d7 xs_3 ys_6 =
  (xs_3 ys_6);;
let rec mappend__d8 xs_2_5 ys_9_9 =
  (xs_2_5 ys_9_9);;
let rec mappend__d9 xs_1_5 ys_2_8 =
  (xs_1_5 ys_2_8);;
let rec move__d1 _lh_move_arg1_2 _lh_move_arg2_2 =
  (match _lh_move_arg1_2 with
    | `UL -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_1_6, _lh_move_LH_P2_1_1_6) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_6 - 1), (_lh_move_LH_P2_1_1_6 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_1_7, _lh_move_LH_P2_1_1_7) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_7 + 1), (_lh_move_LH_P2_1_1_7 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_1_8, _lh_move_LH_P2_1_1_8) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_8 - 1), (_lh_move_LH_P2_1_1_8 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_1_9, _lh_move_LH_P2_1_1_9) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_9 + 1), (_lh_move_LH_P2_1_1_9 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_2_0, _lh_move_LH_P2_1_2_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_0 - 2), (_lh_move_LH_P2_1_2_0 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_2_1, _lh_move_LH_P2_1_2_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_1 - 2), (_lh_move_LH_P2_1_2_1 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_2_2, _lh_move_LH_P2_1_2_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_2 + 2), (_lh_move_LH_P2_1_2_2 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_2 with
        | `LH_P2(_lh_move_LH_P2_0_2_3, _lh_move_LH_P2_1_2_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_3 + 2), (_lh_move_LH_P2_1_2_3 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move__d4 _lh_move_arg1_5 _lh_move_arg2_5 =
  (match _lh_move_arg1_5 with
    | `UL -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_0, _lh_move_LH_P2_1_4_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_0 - 1), (_lh_move_LH_P2_1_4_0 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_1, _lh_move_LH_P2_1_4_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_1 + 1), (_lh_move_LH_P2_1_4_1 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_2, _lh_move_LH_P2_1_4_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_2 - 1), (_lh_move_LH_P2_1_4_2 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_3, _lh_move_LH_P2_1_4_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_3 + 1), (_lh_move_LH_P2_1_4_3 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_4, _lh_move_LH_P2_1_4_4) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_4 - 2), (_lh_move_LH_P2_1_4_4 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_5, _lh_move_LH_P2_1_4_5) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_5 - 2), (_lh_move_LH_P2_1_4_5 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_6, _lh_move_LH_P2_1_4_6) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_6 + 2), (_lh_move_LH_P2_1_4_6 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_5 with
        | `LH_P2(_lh_move_LH_P2_0_4_7, _lh_move_LH_P2_1_4_7) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_7 + 2), (_lh_move_LH_P2_1_4_7 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec myInit__d0 _lh_myInit_arg1_2 =
  (match _lh_myInit_arg1_2 with
    | `LH_C(_lh_myInit_LH_C_0_2, _lh_myInit_LH_C_1_2) -> 
      (match _lh_myInit_LH_C_1_2 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_2, (myInit__d0 _lh_myInit_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec myInit__d1 _lh_myInit_arg1_0 =
  (match _lh_myInit_arg1_0 with
    | `LH_C(_lh_myInit_LH_C_0_0, _lh_myInit_LH_C_1_0) -> 
      (match _lh_myInit_LH_C_1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_0, (myInit__d1 _lh_myInit_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec myInit__d2 _lh_myInit_arg1_1 =
  (match _lh_myInit_arg1_1 with
    | `LH_C(_lh_myInit_LH_C_0_1, _lh_myInit_LH_C_1_1) -> 
      (match _lh_myInit_LH_C_1_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_1, (myInit__d2 _lh_myInit_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec myInit__d3 _lh_myInit_arg1_3 =
  (match _lh_myInit_arg1_3 with
    | `LH_C(_lh_myInit_LH_C_0_3, _lh_myInit_LH_C_1_3) -> 
      (match _lh_myInit_LH_C_1_3 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_3, (myInit__d3 _lh_myInit_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec myIsDigit__d0 _lh_myIsDigit_arg1_0 =
  (let rec n_0 = (int_of_char _lh_myIsDigit_arg1_0) in
    ((n_0 >= 48) && (n_0 <= 57)));;
let rec myLast__d0 _lh_myLast_arg1_1 =
  (match _lh_myLast_arg1_1 with
    | `LH_N -> 
      (`LH_P2((0 - 100), (0 - 100)))
    | `LH_C(_lh_myLast_LH_C_0_1, _lh_myLast_LH_C_1_1) -> 
      (let rec go_1 = (fun _lh_go_arg1_1 _lh_go_arg2_1 -> 
        (match _lh_go_arg2_1 with
          | `LH_N -> 
            _lh_go_arg1_1
          | `LH_C(_lh_go_LH_C_0_1, _lh_go_LH_C_1_1) -> 
            ((go_1 _lh_go_LH_C_0_1) _lh_go_LH_C_1_1)
          | _ -> 
            (failwith "error"))) in
        ((go_1 _lh_myLast_LH_C_0_1) _lh_myLast_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec myLast__d1 _lh_myLast_arg1_0 =
  (match _lh_myLast_arg1_0 with
    | `LH_N -> 
      (`LH_P2((0 - 100), (0 - 100)))
    | `LH_C(_lh_myLast_LH_C_0_0, _lh_myLast_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
        (match _lh_go_arg2_0 with
          | `LH_N -> 
            _lh_go_arg1_0
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            ((go_0 _lh_go_LH_C_0_0) _lh_go_LH_C_1_0)
          | _ -> 
            (failwith "error"))) in
        ((go_0 _lh_myLast_LH_C_0_0) _lh_myLast_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec myLast__d2 _lh_myLast_arg1_2 =
  (match _lh_myLast_arg1_2 with
    | `LH_N -> 
      (`LH_P2((0 - 100), (0 - 100)))
    | `LH_C(_lh_myLast_LH_C_0_2, _lh_myLast_LH_C_1_2) -> 
      (let rec go_2 = (fun _lh_go_arg1_2 _lh_go_arg2_2 -> 
        (match _lh_go_arg2_2 with
          | `LH_N -> 
            _lh_go_arg1_2
          | `LH_C(_lh_go_LH_C_0_2, _lh_go_LH_C_1_2) -> 
            ((go_2 _lh_go_LH_C_0_2) _lh_go_LH_C_1_2)
          | _ -> 
            (failwith "error"))) in
        ((go_2 _lh_myLast_LH_C_0_2) _lh_myLast_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec myLast__d3 _lh_myLast_arg1_3 =
  (match _lh_myLast_arg1_3 with
    | `LH_N -> 
      (`LH_P2((0 - 100), (0 - 100)))
    | `LH_C(_lh_myLast_LH_C_0_3, _lh_myLast_LH_C_1_3) -> 
      (let rec go_3 = (fun _lh_go_arg1_3 _lh_go_arg2_3 -> 
        (match _lh_go_arg2_3 with
          | `LH_N -> 
            _lh_go_arg1_3
          | `LH_C(_lh_go_LH_C_0_3, _lh_go_LH_C_1_3) -> 
            ((go_3 _lh_go_LH_C_0_3) _lh_go_LH_C_1_3)
          | _ -> 
            (failwith "error"))) in
        ((go_3 _lh_myLast_LH_C_0_3) _lh_myLast_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec mySnd__d0 _lh_mySnd_arg1_0 =
  (match _lh_mySnd_arg1_0 with
    | `LH_P2(_lh_mySnd_LH_P2_0_0, _lh_mySnd_LH_P2_1_0) -> 
      _lh_mySnd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec noPieces__d0 _lh_noPieces_arg1_0 =
  (match _lh_noPieces_arg1_0 with
    | `Board(_lh_noPieces_Board_0_0, _lh_noPieces_Board_1_0, _lh_noPieces_Board_2_0, _lh_noPieces_Board_3_0) -> 
      _lh_noPieces_Board_1_0
    | _ -> 
      (failwith "error"));;
let rec removeFront__d0 _lh_removeFront_arg1_0 =
  (match _lh_removeFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_0, _lh_removeFront_LH_C_1_0) -> 
      _lh_removeFront_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec removeFront__d1 _lh_removeFront_arg1_1 =
  (match _lh_removeFront_arg1_1 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_1, _lh_removeFront_LH_C_1_1) -> 
      _lh_removeFront_LH_C_1_1
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d0 _lh_sizeBoard_arg1_2 =
  (match _lh_sizeBoard_arg1_2 with
    | `Board(_lh_sizeBoard_Board_0_2, _lh_sizeBoard_Board_1_2, _lh_sizeBoard_Board_2_2, _lh_sizeBoard_Board_3_2) -> 
      _lh_sizeBoard_Board_0_2
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d1 _lh_sizeBoard_arg1_0 =
  (match _lh_sizeBoard_arg1_0 with
    | `Board(_lh_sizeBoard_Board_0_0, _lh_sizeBoard_Board_1_0, _lh_sizeBoard_Board_2_0, _lh_sizeBoard_Board_3_0) -> 
      _lh_sizeBoard_Board_0_0
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d2 _lh_sizeBoard_arg1_6 =
  (match _lh_sizeBoard_arg1_6 with
    | `Board(_lh_sizeBoard_Board_0_6, _lh_sizeBoard_Board_1_6, _lh_sizeBoard_Board_2_6, _lh_sizeBoard_Board_3_6) -> 
      _lh_sizeBoard_Board_0_6
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d3 _lh_sizeBoard_arg1_7 =
  (match _lh_sizeBoard_arg1_7 with
    | `Board(_lh_sizeBoard_Board_0_7, _lh_sizeBoard_Board_1_7, _lh_sizeBoard_Board_2_7, _lh_sizeBoard_Board_3_7) -> 
      _lh_sizeBoard_Board_0_7
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d4 _lh_sizeBoard_arg1_3 =
  (match _lh_sizeBoard_arg1_3 with
    | `Board(_lh_sizeBoard_Board_0_3, _lh_sizeBoard_Board_1_3, _lh_sizeBoard_Board_2_3, _lh_sizeBoard_Board_3_3) -> 
      _lh_sizeBoard_Board_0_3
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d5 _lh_sizeBoard_arg1_5 =
  (match _lh_sizeBoard_arg1_5 with
    | `Board(_lh_sizeBoard_Board_0_5, _lh_sizeBoard_Board_1_5, _lh_sizeBoard_Board_2_5, _lh_sizeBoard_Board_3_5) -> 
      _lh_sizeBoard_Board_0_5
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d6 _lh_sizeBoard_arg1_4 =
  (match _lh_sizeBoard_arg1_4 with
    | `Board(_lh_sizeBoard_Board_0_4, _lh_sizeBoard_Board_1_4, _lh_sizeBoard_Board_2_4, _lh_sizeBoard_Board_3_4) -> 
      _lh_sizeBoard_Board_0_4
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d7 _lh_sizeBoard_arg1_1 =
  (match _lh_sizeBoard_arg1_1 with
    | `Board(_lh_sizeBoard_Board_0_1, _lh_sizeBoard_Board_1_1, _lh_sizeBoard_Board_2_1, _lh_sizeBoard_Board_3_1) -> 
      _lh_sizeBoard_Board_0_1
    | _ -> 
      (failwith "error"));;
let rec take_lz__d0 n_3 ls_1_2 =
  (if (n_3 > 0) then
    ((Lazy.force ls_1_2) n_3)
  else
    (fun pp_3 _lh_dummy_2_9 -> 
      0));;
let rec zipWith__d0 f_1_8 xs_1_8 ys_4_4 =
  ((xs_1_8 f_1_8) ys_4_4);;
let rec zip_lz_nl__d0 xs_2_0 ys_4_6 =
  (match ys_4_6 with
    | `LH_C(hy_4, ty_4) -> 
      (((Lazy.force xs_2_0) hy_4) ty_4)
    | `LH_N -> 
      (fun ys_4_7 -> 
        ys_4_7));;
let rec zip_lz_nl__d1 xs_7 ys_1_2 =
  (ys_1_2 xs_7);;
let rec addAllFront__d0 _lh_addAllFront_arg1_0 _lh_addAllFront_arg2_0 =
  ((mappend__d0 _lh_addAllFront_arg1_0) _lh_addAllFront_arg2_0)
and addAllFront__d1 _lh_addAllFront_arg1_1 _lh_addAllFront_arg2_1 =
  ((mappend__d7 _lh_addAllFront_arg1_1) _lh_addAllFront_arg2_1)
and allDescend__d0 _lh_allDescend_arg1_0 =
  ((map__d0 (moveKnight__d0 _lh_allDescend_arg1_0)) (possibleMoves__d1 _lh_allDescend_arg1_0))
and allDescend__d1 _lh_allDescend_arg1_1 =
  ((map__d2 (moveKnight__d1 _lh_allDescend_arg1_1)) (possibleMoves__d3 _lh_allDescend_arg1_1))
and canJumpFirst__d0 _lh_canJumpFirst_arg1_0 =
  ((canMoveTo__d0 (firstPiece__d0 _lh_canJumpFirst_arg1_0)) (deleteFirst__d0 _lh_canJumpFirst_arg1_0))
and canJumpFirst__d1 _lh_canJumpFirst_arg1_1 =
  ((canMoveTo__d6 (firstPiece__d2 _lh_canJumpFirst_arg1_1)) (deleteFirst__d3 _lh_canJumpFirst_arg1_1))
and canMoveTo__d0 _lh_canMoveTo_arg1_1 _lh_canMoveTo_arg2_1_7 =
  (match _lh_canMoveTo_arg1_1 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_1_6, _lh_canMoveTo_LH_P2_1_1_6) -> 
      (let rec sze_1_7 = (sizeBoard__d0 _lh_canMoveTo_arg2_1_7) in
        (((((_lh_canMoveTo_LH_P2_0_1_6 >= 1) && (_lh_canMoveTo_LH_P2_0_1_6 <= sze_1_7)) && (_lh_canMoveTo_LH_P2_1_1_6 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_6 <= sze_1_7)) && ((isSquareFree__d0 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_6, _lh_canMoveTo_LH_P2_1_1_6))) _lh_canMoveTo_arg2_1_7)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d6 _lh_canMoveTo_arg1_3 _lh_canMoveTo_arg2_1_9 =
  (match _lh_canMoveTo_arg1_3 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_1_7, _lh_canMoveTo_LH_P2_1_1_7) -> 
      (let rec sze_1_8 = (sizeBoard__d6 _lh_canMoveTo_arg2_1_9) in
        (((((_lh_canMoveTo_LH_P2_0_1_7 >= 1) && (_lh_canMoveTo_LH_P2_0_1_7 <= sze_1_8)) && (_lh_canMoveTo_LH_P2_1_1_7 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_7 <= sze_1_8)) && ((isSquareFree__d6 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_7, _lh_canMoveTo_LH_P2_1_1_7))) _lh_canMoveTo_arg2_1_9)))
    | _ -> 
      (failwith "error"))
and canMove__d0 _lh_canMove_arg1_3 _lh_canMove_arg2_3 =
  ((canMoveTo__d1 ((move__d0 _lh_canMove_arg2_3) (lastPiece__d0 _lh_canMove_arg1_3))) _lh_canMove_arg1_3)
and canMove__d1 _lh_canMove_arg1_4 _lh_canMove_arg2_4 =
  ((canMoveTo__d2 ((move__d2 _lh_canMove_arg2_4) (lastPiece__d2 _lh_canMove_arg1_4))) _lh_canMove_arg1_4)
and canMove__d2 _lh_canMove_arg1_0 _lh_canMove_arg2_0 =
  ((canMoveTo__d3 ((move__d3 _lh_canMove_arg2_0) (lastPiece__d3 _lh_canMove_arg1_0))) _lh_canMove_arg1_0)
and canMove__d3 _lh_canMove_arg1_2 _lh_canMove_arg2_2 =
  ((canMoveTo__d4 ((move__d5 _lh_canMove_arg2_2) (lastPiece__d5 _lh_canMove_arg1_2))) _lh_canMove_arg1_2)
and canMove__d4 _lh_canMove_arg1_1 _lh_canMove_arg2_1 =
  ((canMoveTo__d5 ((move__d6 _lh_canMove_arg2_1) (lastPiece__d6 _lh_canMove_arg1_1))) _lh_canMove_arg1_1)
and copy__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 <= 0) then
    (fun f_1_6 hx_3 tx_3 xs_1_6 ys_2_9 -> 
      ys_2_9)
  else
    (let rec ty_2 = ((copy__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
      (let rec hy_2 = _lh_copy_arg2_2 in
        (fun f_1_7 hx_4 tx_4 -> 
          (let rec ty_3 = (((zipWith__d0 f_1_7) tx_4) ty_2) in
            (let rec hy_3 = ((f_1_7 hx_4) hy_2) in
              (fun xs_1_7 -> 
                (((Lazy.force xs_1_7) hy_3) ty_3))))))))
and copy__d1 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 <= 0) then
    (fun ys_9_7 -> 
      ys_9_7)
  else
    (let rec t_1_1_3 = ((copy__d1 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
      (let rec h_8_8 = _lh_copy_arg2_3 in
        (fun ys_9_8 -> 
          (`LH_C(h_8_8, ((mappend__d8 t_1_1_3) ys_9_8)))))))
and copy__d2 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (fun ys_2_5 -> 
      ys_2_5)
  else
    (let rec t_2_9 = ((copy__d2 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
      (let rec h_1_3 = _lh_copy_arg2_1 in
        (fun ys_2_6 -> 
          (`LH_C(h_1_3, ((mappend__d1_d3 t_2_9) ys_2_6)))))))
and copy__d3 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (fun ys_1_5 -> 
      ys_1_5)
  else
    (let rec t_1_7 = ((copy__d3 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_9 = _lh_copy_arg2_0 in
        (fun ys_1_6 -> 
          (`LH_C(h_9, ((mappend__d1_d5 t_1_7) ys_1_6)))))))
and deadEnd__d0 _lh_deadEnd_arg1_0 =
  ((length__d2 (possibleMoves__d0 _lh_deadEnd_arg1_0)) = 0)
and deleteFirst__d0 _lh_deleteFirst_arg1_2 =
  (match _lh_deleteFirst_arg1_2 with
    | `Board(_lh_deleteFirst_Board_0_2, _lh_deleteFirst_Board_1_2, _lh_deleteFirst_Board_2_2, _lh_deleteFirst_Board_3_2) -> 
      (let rec ts'_2 = (myInit__d0 _lh_deleteFirst_Board_3_2) in
        (`Board(_lh_deleteFirst_Board_0_2, (_lh_deleteFirst_Board_1_2 - 1), (myLast__d0 ts'_2), ts'_2)))
    | _ -> 
      (failwith "error"))
and deleteFirst__d1 _lh_deleteFirst_arg1_3 =
  (match _lh_deleteFirst_arg1_3 with
    | `Board(_lh_deleteFirst_Board_0_3, _lh_deleteFirst_Board_1_3, _lh_deleteFirst_Board_2_3, _lh_deleteFirst_Board_3_3) -> 
      (let rec ts'_3 = (myInit__d1 _lh_deleteFirst_Board_3_3) in
        (`Board(_lh_deleteFirst_Board_0_3, (_lh_deleteFirst_Board_1_3 - 1), (myLast__d1 ts'_3), ts'_3)))
    | _ -> 
      (failwith "error"))
and deleteFirst__d2 _lh_deleteFirst_arg1_1 =
  (match _lh_deleteFirst_arg1_1 with
    | `Board(_lh_deleteFirst_Board_0_1, _lh_deleteFirst_Board_1_1, _lh_deleteFirst_Board_2_1, _lh_deleteFirst_Board_3_1) -> 
      (let rec ts'_1 = (myInit__d2 _lh_deleteFirst_Board_3_1) in
        (`Board(_lh_deleteFirst_Board_0_1, (_lh_deleteFirst_Board_1_1 - 1), (myLast__d2 ts'_1), ts'_1)))
    | _ -> 
      (failwith "error"))
and deleteFirst__d3 _lh_deleteFirst_arg1_0 =
  (match _lh_deleteFirst_arg1_0 with
    | `Board(_lh_deleteFirst_Board_0_0, _lh_deleteFirst_Board_1_0, _lh_deleteFirst_Board_2_0, _lh_deleteFirst_Board_3_0) -> 
      (let rec ts'_0 = (myInit__d3 _lh_deleteFirst_Board_3_0) in
        (`Board(_lh_deleteFirst_Board_0_0, (_lh_deleteFirst_Board_1_0 - 1), (myLast__d3 ts'_0), ts'_0)))
    | _ -> 
      (failwith "error"))
and depthSearch__d0 _lh_depthSearch_arg1_0 _lh_depthSearch_arg2_0 _lh_depthSearch_arg3_0 =
  (if (let rec _lh_matchIdent_1 = _lh_depthSearch_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        true
      | _ -> 
        false)) then
    (lazy (fun n_1 pp_1 _lh_dummy_2_8 -> 
      0))
  else
    (if (_lh_depthSearch_arg3_0 (inquireFront__d0 _lh_depthSearch_arg1_0)) then
      (lazy (let rec t_7_3 = (((depthSearch__d0 (removeFront__d0 _lh_depthSearch_arg1_0)) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0) in
        (let rec h_4_8 = (inquireFront__d1 _lh_depthSearch_arg1_0) in
          (fun n_2 -> 
            (let rec _lh_pp_LH_C_1_0 = ((take_lz__d0 (n_2 - 1)) t_7_3) in
              (let rec _lh_pp_LH_C_0_0 = h_4_8 in
                (fun pp_2 -> 
                  (match _lh_pp_LH_C_0_0 with
                    | `LH_P2(_lh_pp_LH_P2_0_0, _lh_pp_LH_P2_1_0) -> 
                      ((mappend__d3 ((mappend__d4 ((mappend__d5 ((mappend__d6 (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (let rec t_7_9 = (let rec t_8_0 = (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (let rec t_8_5 = (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (fun ys_5_6 -> 
                        ys_5_6) in
                        (let rec h_4_9 = ' ' in
                          (fun ys_5_7 -> 
                            (`LH_C(h_4_9, ((mappend__d6 t_9_2) ys_5_7)))))) in
                        (let rec h_5_0 = 'h' in
                          (fun ys_5_8 -> 
                            (`LH_C(h_5_0, ((mappend__d6 t_9_1) ys_5_8)))))) in
                        (let rec h_5_1 = 't' in
                          (fun ys_5_9 -> 
                            (`LH_C(h_5_1, ((mappend__d6 t_9_0) ys_5_9)))))) in
                        (let rec h_5_2 = 'i' in
                          (fun ys_6_0 -> 
                            (`LH_C(h_5_2, ((mappend__d6 t_8_9) ys_6_0)))))) in
                        (let rec h_5_3 = 'w' in
                          (fun ys_6_1 -> 
                            (`LH_C(h_5_3, ((mappend__d6 t_8_8) ys_6_1)))))) in
                        (let rec h_5_4 = ' ' in
                          (fun ys_6_2 -> 
                            (`LH_C(h_5_4, ((mappend__d6 t_8_7) ys_6_2)))))) in
                        (let rec h_5_5 = 'r' in
                          (fun ys_6_3 -> 
                            (`LH_C(h_5_5, ((mappend__d6 t_8_6) ys_6_3)))))) in
                        (let rec h_5_6 = 'u' in
                          (fun ys_6_4 -> 
                            (`LH_C(h_5_6, ((mappend__d6 t_8_5) ys_6_4)))))) in
                        (let rec h_5_7 = 'o' in
                          (fun ys_6_5 -> 
                            (`LH_C(h_5_7, ((mappend__d6 t_8_4) ys_6_5)))))) in
                        (let rec h_5_8 = 't' in
                          (fun ys_6_6 -> 
                            (`LH_C(h_5_8, ((mappend__d6 t_8_3) ys_6_6)))))) in
                        (let rec h_5_9 = ' ' in
                          (fun ys_6_7 -> 
                            (`LH_C(h_5_9, ((mappend__d6 t_8_2) ys_6_7)))))) in
                        (let rec h_6_0 = 's' in
                          (fun ys_6_8 -> 
                            (`LH_C(h_6_0, ((mappend__d6 t_8_1) ys_6_8)))))) in
                        (let rec h_6_1 = 't' in
                          (fun ys_6_9 -> 
                            (`LH_C(h_6_1, ((mappend__d6 t_8_0) ys_6_9)))))) in
                        (let rec h_6_2 = 'h' in
                          (fun ys_7_0 -> 
                            (`LH_C(h_6_2, ((mappend__d6 t_7_9) ys_7_0)))))) in
                        (let rec h_6_3 = 'g' in
                          (fun ys_7_1 -> 
                            (`LH_C(h_6_3, ((mappend__d6 t_7_8) ys_7_1)))))) in
                        (let rec h_6_4 = 'i' in
                          (fun ys_7_2 -> 
                            (`LH_C(h_6_4, ((mappend__d6 t_7_7) ys_7_2)))))) in
                        (let rec h_6_5 = 'n' in
                          (fun ys_7_3 -> 
                            (`LH_C(h_6_5, ((mappend__d6 t_7_6) ys_7_3)))))) in
                        (let rec h_6_6 = 'K' in
                          (fun ys_7_4 -> 
                            (`LH_C(h_6_6, ((mappend__d6 t_7_5) ys_7_4)))))) in
                        (let rec h_6_7 = '|' in
                          (fun ys_7_5 -> 
                            (`LH_C(h_6_7, ((mappend__d6 t_7_4) ys_7_5))))))) (string_of_int _lh_pp_LH_P2_0_0))) (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (fun ys_7_6 -> 
                        ys_7_6) in
                        (let rec h_6_8 = '|' in
                          (fun ys_7_7 -> 
                            (`LH_C(h_6_8, ((mappend__d4 t_1_1_2) ys_7_7)))))) in
                        (let rec h_6_9 = 's' in
                          (fun ys_7_8 -> 
                            (`LH_C(h_6_9, ((mappend__d4 t_1_1_1) ys_7_8)))))) in
                        (let rec h_7_0 = 'e' in
                          (fun ys_7_9 -> 
                            (`LH_C(h_7_0, ((mappend__d4 t_1_1_0) ys_7_9)))))) in
                        (let rec h_7_1 = 'v' in
                          (fun ys_8_0 -> 
                            (`LH_C(h_7_1, ((mappend__d4 t_1_0_9) ys_8_0)))))) in
                        (let rec h_7_2 = 'o' in
                          (fun ys_8_1 -> 
                            (`LH_C(h_7_2, ((mappend__d4 t_1_0_8) ys_8_1)))))) in
                        (let rec h_7_3 = 'm' in
                          (fun ys_8_2 -> 
                            (`LH_C(h_7_3, ((mappend__d4 t_1_0_7) ys_8_2)))))) in
                        (let rec h_7_4 = ' ' in
                          (fun ys_8_3 -> 
                            (`LH_C(h_7_4, ((mappend__d4 t_1_0_6) ys_8_3)))))) in
                        (let rec h_7_5 = 'g' in
                          (fun ys_8_4 -> 
                            (`LH_C(h_7_5, ((mappend__d4 t_1_0_5) ys_8_4)))))) in
                        (let rec h_7_6 = 'n' in
                          (fun ys_8_5 -> 
                            (`LH_C(h_7_6, ((mappend__d4 t_1_0_4) ys_8_5)))))) in
                        (let rec h_7_7 = 'i' in
                          (fun ys_8_6 -> 
                            (`LH_C(h_7_7, ((mappend__d4 t_1_0_3) ys_8_6)))))) in
                        (let rec h_7_8 = 'k' in
                          (fun ys_8_7 -> 
                            (`LH_C(h_7_8, ((mappend__d4 t_1_0_2) ys_8_7)))))) in
                        (let rec h_7_9 = 'c' in
                          (fun ys_8_8 -> 
                            (`LH_C(h_7_9, ((mappend__d4 t_1_0_1) ys_8_8)))))) in
                        (let rec h_8_0 = 'a' in
                          (fun ys_8_9 -> 
                            (`LH_C(h_8_0, ((mappend__d4 t_1_0_0) ys_8_9)))))) in
                        (let rec h_8_1 = 'r' in
                          (fun ys_9_0 -> 
                            (`LH_C(h_8_1, ((mappend__d4 t_9_9) ys_9_0)))))) in
                        (let rec h_8_2 = 't' in
                          (fun ys_9_1 -> 
                            (`LH_C(h_8_2, ((mappend__d4 t_9_8) ys_9_1)))))) in
                        (let rec h_8_3 = 'k' in
                          (fun ys_9_2 -> 
                            (`LH_C(h_8_3, ((mappend__d4 t_9_7) ys_9_2)))))) in
                        (let rec h_8_4 = 'c' in
                          (fun ys_9_3 -> 
                            (`LH_C(h_8_4, ((mappend__d4 t_9_6) ys_9_3)))))) in
                        (let rec h_8_5 = 'a' in
                          (fun ys_9_4 -> 
                            (`LH_C(h_8_5, ((mappend__d4 t_9_5) ys_9_4)))))) in
                        (let rec h_8_6 = 'b' in
                          (fun ys_9_5 -> 
                            (`LH_C(h_8_6, ((mappend__d4 t_9_4) ys_9_5)))))) in
                        (let rec h_8_7 = ' ' in
                          (fun ys_9_6 -> 
                            (`LH_C(h_8_7, ((mappend__d4 t_9_3) ys_9_6)))))))) (showChessSet__d0 _lh_pp_LH_P2_1_0))) (pp_2 _lh_pp_LH_C_1_0))
                    | _ -> 
                      (failwith "error")))))))))
    else
      (((depthSearch__d0 ((addAllFront__d0 (_lh_depthSearch_arg2_0 (inquireFront__d2 _lh_depthSearch_arg1_0))) (removeFront__d1 _lh_depthSearch_arg1_0))) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0)))
and descAndNo__d0 _lh_descAndNo_arg1_0 =
  (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_3 -> 
    (_lh_listcomp_fun_para_3 _lh_listcomp_fun_1_2)) in
    (_lh_listcomp_fun_1_2 (allDescend__d0 _lh_descAndNo_arg1_0)))
and descAndNo__d1 _lh_descAndNo_arg1_1 =
  (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_5 -> 
    (_lh_listcomp_fun_para_5 _lh_listcomp_fun_1_8)) in
    (_lh_listcomp_fun_1_8 (allDescend__d1 _lh_descAndNo_arg1_1)))
and descendents__d0 _lh_descendents_arg1_0 =
  (if ((canJumpFirst__d0 _lh_descendents_arg1_0) && (deadEnd__d0 ((addPiece__d0 (firstPiece__d1 _lh_descendents_arg1_0)) _lh_descendents_arg1_0))) then
    (`LH_N)
  else
    (let rec singles_0 = (singleDescend__d0 _lh_descendents_arg1_0) in
      (let rec scrut_0 = (length__d4 singles_0) in
        (if (scrut_0 = 0) then
          ((map__d1 mySnd__d0) (quickSortIntChessSet__d0 (descAndNo__d0 _lh_descendents_arg1_0)))
        else
          (if (scrut_0 = 1) then
            singles_0
          else
            (`LH_N))))))
and enumFromTo__d0 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_2_1 = ((enumFromTo__d0 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_2_1 = a_3 in
        (fun _lh_listcomp_fun_2_9 _lh_root_arg1_1 -> 
          (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_7 -> 
            ((((_lh_listcomp_fun_para_7 _lh_listcomp_fun_ls_h_2_1) _lh_listcomp_fun_3_0) _lh_listcomp_fun_ls_t_2_1) _lh_listcomp_fun_2_9)) in
            (_lh_listcomp_fun_3_0 ((enumFromTo__d1 1) _lh_root_arg1_1))))))
  else
    (fun _lh_listcomp_fun_3_1 _lh_root_arg1_2 f_6 ys_2_2 xs_1_3 ys_2_3 -> 
      ys_2_3))
and grow__d0 _lh_grow_arg1_0 =
  (match _lh_grow_arg1_0 with
    | `LH_P2(_lh_grow_LH_P2_0_0, _lh_grow_LH_P2_1_0) -> 
      ((zip_lz_nl__d0 (repeat__d0 (_lh_grow_LH_P2_0_0 + 1))) (descendents__d0 _lh_grow_LH_P2_1_0))
    | _ -> 
      (failwith "error"))
and isFinished__d0 _lh_isFinished_arg1_0 =
  (match _lh_isFinished_arg1_0 with
    | `LH_P2(_lh_isFinished_LH_P2_0_0, _lh_isFinished_LH_P2_1_0) -> 
      (tourFinished__d0 _lh_isFinished_LH_P2_1_0)
    | _ -> 
      (failwith "error"))
and isSquareFree__d0 _lh_isSquareFree_arg1_3 _lh_isSquareFree_arg2_3 =
  (match _lh_isSquareFree_arg2_3 with
    | `Board(_lh_isSquareFree_Board_0_3, _lh_isSquareFree_Board_1_3, _lh_isSquareFree_Board_2_3, _lh_isSquareFree_Board_3_3) -> 
      (not ((inList__d0 _lh_isSquareFree_arg1_3) _lh_isSquareFree_Board_3_3))
    | _ -> 
      (failwith "error"))
and isSquareFree__d1 _lh_isSquareFree_arg1_6 _lh_isSquareFree_arg2_6 =
  (match _lh_isSquareFree_arg2_6 with
    | `Board(_lh_isSquareFree_Board_0_6, _lh_isSquareFree_Board_1_6, _lh_isSquareFree_Board_2_6, _lh_isSquareFree_Board_3_6) -> 
      (not ((inList__d1 _lh_isSquareFree_arg1_6) _lh_isSquareFree_Board_3_6))
    | _ -> 
      (failwith "error"))
and isSquareFree__d2 _lh_isSquareFree_arg1_5 _lh_isSquareFree_arg2_5 =
  (match _lh_isSquareFree_arg2_5 with
    | `Board(_lh_isSquareFree_Board_0_5, _lh_isSquareFree_Board_1_5, _lh_isSquareFree_Board_2_5, _lh_isSquareFree_Board_3_5) -> 
      (not ((inList__d2 _lh_isSquareFree_arg1_5) _lh_isSquareFree_Board_3_5))
    | _ -> 
      (failwith "error"))
and isSquareFree__d3 _lh_isSquareFree_arg1_4 _lh_isSquareFree_arg2_4 =
  (match _lh_isSquareFree_arg2_4 with
    | `Board(_lh_isSquareFree_Board_0_4, _lh_isSquareFree_Board_1_4, _lh_isSquareFree_Board_2_4, _lh_isSquareFree_Board_3_4) -> 
      (not ((inList__d3 _lh_isSquareFree_arg1_4) _lh_isSquareFree_Board_3_4))
    | _ -> 
      (failwith "error"))
and isSquareFree__d4 _lh_isSquareFree_arg1_0 _lh_isSquareFree_arg2_0 =
  (match _lh_isSquareFree_arg2_0 with
    | `Board(_lh_isSquareFree_Board_0_0, _lh_isSquareFree_Board_1_0, _lh_isSquareFree_Board_2_0, _lh_isSquareFree_Board_3_0) -> 
      (not ((inList__d4 _lh_isSquareFree_arg1_0) _lh_isSquareFree_Board_3_0))
    | _ -> 
      (failwith "error"))
and isSquareFree__d5 _lh_isSquareFree_arg1_1 _lh_isSquareFree_arg2_1 =
  (match _lh_isSquareFree_arg2_1 with
    | `Board(_lh_isSquareFree_Board_0_1, _lh_isSquareFree_Board_1_1, _lh_isSquareFree_Board_2_1, _lh_isSquareFree_Board_3_1) -> 
      (not ((inList__d5 _lh_isSquareFree_arg1_1) _lh_isSquareFree_Board_3_1))
    | _ -> 
      (failwith "error"))
and isSquareFree__d6 _lh_isSquareFree_arg1_2 _lh_isSquareFree_arg2_2 =
  (match _lh_isSquareFree_arg2_2 with
    | `Board(_lh_isSquareFree_Board_0_2, _lh_isSquareFree_Board_1_2, _lh_isSquareFree_Board_2_2, _lh_isSquareFree_Board_3_2) -> 
      (not ((inList__d6 _lh_isSquareFree_arg1_2) _lh_isSquareFree_Board_3_2))
    | _ -> 
      (failwith "error"))
and mappend__d1_d2 xs_2_2 ys_5_0 =
  (match xs_2_2 with
    | `LH_C(h_4_1, t_5_7) -> 
      (let rec t_5_8 = ((mappend__d1_d2 t_5_7) ys_5_0) in
        (let rec h_4_2 = h_4_1 in
          (fun ys_5_1 -> 
            (`LH_C(h_4_2, ((mappend__d1_d1 t_5_8) ys_5_1))))))
    | `LH_N -> 
      ys_5_0)
and mappend__d1_d4 xs_1_0 ys_1_8 =
  (match xs_1_0 with
    | `LH_C(h_1_0, t_1_8) -> 
      (let rec t_1_9 = ((mappend__d1_d4 t_1_8) ys_1_8) in
        (let rec h_1_1 = h_1_0 in
          (fun ys_1_9 -> 
            (`LH_C(h_1_1, ((mappend__d1_d3 t_1_9) ys_1_9))))))
    | `LH_N -> 
      ys_1_8)
and mappend__d1_d9 xs_4 ys_7 =
  (match xs_4 with
    | `LH_C(h_6, t_1_4) -> 
      (let rec t_1_5 = ((mappend__d1_d9 t_1_4) ys_7) in
        (let rec h_7 = h_6 in
          (fun ys_8 -> 
            (`LH_C(h_7, ((mappend__d1_d8 t_1_5) ys_8))))))
    | `LH_N -> 
      ys_7)
and mappend__d2 xs_2_1 ys_4_8 =
  (match xs_2_1 with
    | `LH_C(h_3_9, t_5_5) -> 
      (let rec t_5_6 = ((mappend__d2 t_5_5) ys_4_8) in
        (let rec h_4_0 = h_3_9 in
          (fun ys_4_9 -> 
            (`LH_C(h_4_0, ((mappend__d1 t_5_6) ys_4_9))))))
    | `LH_N -> 
      ys_4_8)
and mappend__d3 xs_2_3 ys_5_2 =
  (match xs_2_3 with
    | `LH_C(h_4_3, t_5_9) -> 
      (let rec t_6_0 = ((mappend__d3 t_5_9) ys_5_2) in
        (fun _lh_dummy_1_8 -> 
          (1 + (length__d1 t_6_0))))
    | `LH_N -> 
      ys_5_2)
and mappend__d5 xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_3, t_1_1) -> 
      (let rec t_1_2 = ((mappend__d5 t_1_1) ys_4) in
        (let rec h_4 = h_3 in
          (fun ys_5 -> 
            (`LH_C(h_4, ((mappend__d4 t_1_2) ys_5))))))
    | `LH_N -> 
      ys_4)
and moveKnight__d0 _lh_moveKnight_arg1_0 _lh_moveKnight_arg2_0 =
  ((addPiece__d1 ((move__d1 _lh_moveKnight_arg2_0) (lastPiece__d1 _lh_moveKnight_arg1_0))) _lh_moveKnight_arg1_0)
and moveKnight__d1 _lh_moveKnight_arg1_1 _lh_moveKnight_arg2_1 =
  ((addPiece__d2 ((move__d4 _lh_moveKnight_arg2_1) (lastPiece__d4 _lh_moveKnight_arg1_1))) _lh_moveKnight_arg1_1)
and move__d0 _lh_move_arg1_6 _lh_move_arg2_6 =
  (match _lh_move_arg1_6 with
    | `UL -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_4_8, _lh_move_LH_P2_1_4_8) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_4 = (_lh_move_LH_P2_1_4_8 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_3_4 = (_lh_move_LH_P2_0_4_8 - 1) in
              (fun _lh_canMoveTo_arg2_3_9 -> 
                (let rec sze_3_5 = (sizeBoard__d1 _lh_canMoveTo_arg2_3_9) in
                  (((((_lh_canMoveTo_LH_P2_0_3_4 >= 1) && (_lh_canMoveTo_LH_P2_0_3_4 <= sze_3_5)) && (_lh_canMoveTo_LH_P2_1_3_4 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_4 <= sze_3_5)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_4, _lh_canMoveTo_LH_P2_1_3_4))) _lh_canMoveTo_arg2_3_9))))))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_4_9, _lh_move_LH_P2_1_4_9) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_5 = (_lh_move_LH_P2_1_4_9 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_3_5 = (_lh_move_LH_P2_0_4_9 + 1) in
              (fun _lh_canMoveTo_arg2_4_0 -> 
                (let rec sze_3_6 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_0) in
                  (((((_lh_canMoveTo_LH_P2_0_3_5 >= 1) && (_lh_canMoveTo_LH_P2_0_3_5 <= sze_3_6)) && (_lh_canMoveTo_LH_P2_1_3_5 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_5 <= sze_3_6)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_5, _lh_canMoveTo_LH_P2_1_3_5))) _lh_canMoveTo_arg2_4_0))))))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_0, _lh_move_LH_P2_1_5_0) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_6 = (_lh_move_LH_P2_1_5_0 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_3_6 = (_lh_move_LH_P2_0_5_0 - 1) in
              (fun _lh_canMoveTo_arg2_4_1 -> 
                (let rec sze_3_7 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_1) in
                  (((((_lh_canMoveTo_LH_P2_0_3_6 >= 1) && (_lh_canMoveTo_LH_P2_0_3_6 <= sze_3_7)) && (_lh_canMoveTo_LH_P2_1_3_6 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_6 <= sze_3_7)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_6, _lh_canMoveTo_LH_P2_1_3_6))) _lh_canMoveTo_arg2_4_1))))))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_1, _lh_move_LH_P2_1_5_1) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_7 = (_lh_move_LH_P2_1_5_1 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_3_7 = (_lh_move_LH_P2_0_5_1 + 1) in
              (fun _lh_canMoveTo_arg2_4_2 -> 
                (let rec sze_3_8 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_2) in
                  (((((_lh_canMoveTo_LH_P2_0_3_7 >= 1) && (_lh_canMoveTo_LH_P2_0_3_7 <= sze_3_8)) && (_lh_canMoveTo_LH_P2_1_3_7 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_7 <= sze_3_8)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_7, _lh_canMoveTo_LH_P2_1_3_7))) _lh_canMoveTo_arg2_4_2))))))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_2, _lh_move_LH_P2_1_5_2) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_8 = (_lh_move_LH_P2_1_5_2 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_3_8 = (_lh_move_LH_P2_0_5_2 - 2) in
              (fun _lh_canMoveTo_arg2_4_3 -> 
                (let rec sze_3_9 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_3) in
                  (((((_lh_canMoveTo_LH_P2_0_3_8 >= 1) && (_lh_canMoveTo_LH_P2_0_3_8 <= sze_3_9)) && (_lh_canMoveTo_LH_P2_1_3_8 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_8 <= sze_3_9)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_8, _lh_canMoveTo_LH_P2_1_3_8))) _lh_canMoveTo_arg2_4_3))))))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_3, _lh_move_LH_P2_1_5_3) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_9 = (_lh_move_LH_P2_1_5_3 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_3_9 = (_lh_move_LH_P2_0_5_3 - 2) in
              (fun _lh_canMoveTo_arg2_4_4 -> 
                (let rec sze_4_0 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_4) in
                  (((((_lh_canMoveTo_LH_P2_0_3_9 >= 1) && (_lh_canMoveTo_LH_P2_0_3_9 <= sze_4_0)) && (_lh_canMoveTo_LH_P2_1_3_9 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_9 <= sze_4_0)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_9, _lh_canMoveTo_LH_P2_1_3_9))) _lh_canMoveTo_arg2_4_4))))))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_4, _lh_move_LH_P2_1_5_4) -> 
          (let rec _lh_canMoveTo_LH_P2_1_4_0 = (_lh_move_LH_P2_1_5_4 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_4_0 = (_lh_move_LH_P2_0_5_4 + 2) in
              (fun _lh_canMoveTo_arg2_4_5 -> 
                (let rec sze_4_1 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_5) in
                  (((((_lh_canMoveTo_LH_P2_0_4_0 >= 1) && (_lh_canMoveTo_LH_P2_0_4_0 <= sze_4_1)) && (_lh_canMoveTo_LH_P2_1_4_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_4_0 <= sze_4_1)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_4_0, _lh_canMoveTo_LH_P2_1_4_0))) _lh_canMoveTo_arg2_4_5))))))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_5, _lh_move_LH_P2_1_5_5) -> 
          (let rec _lh_canMoveTo_LH_P2_1_4_1 = (_lh_move_LH_P2_1_5_5 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_4_1 = (_lh_move_LH_P2_0_5_5 + 2) in
              (fun _lh_canMoveTo_arg2_4_6 -> 
                (let rec sze_4_2 = (sizeBoard__d1 _lh_canMoveTo_arg2_4_6) in
                  (((((_lh_canMoveTo_LH_P2_0_4_1 >= 1) && (_lh_canMoveTo_LH_P2_0_4_1 <= sze_4_2)) && (_lh_canMoveTo_LH_P2_1_4_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_4_1 <= sze_4_2)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_4_1, _lh_canMoveTo_LH_P2_1_4_1))) _lh_canMoveTo_arg2_4_6))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and move__d2 _lh_move_arg1_0 _lh_move_arg2_0 =
  (match _lh_move_arg1_0 with
    | `UL -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_0, _lh_move_LH_P2_1_0) -> 
          (let rec _lh_canMoveTo_LH_P2_1_0 = (_lh_move_LH_P2_1_0 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_0 = (_lh_move_LH_P2_0_0 - 1) in
              (fun _lh_canMoveTo_arg2_1 -> 
                (let rec sze_0 = (sizeBoard__d2 _lh_canMoveTo_arg2_1) in
                  (((((_lh_canMoveTo_LH_P2_0_0 >= 1) && (_lh_canMoveTo_LH_P2_0_0 <= sze_0)) && (_lh_canMoveTo_LH_P2_1_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_0 <= sze_0)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0))) _lh_canMoveTo_arg2_1))))))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_1, _lh_move_LH_P2_1_1) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1 = (_lh_move_LH_P2_1_1 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_1 = (_lh_move_LH_P2_0_1 + 1) in
              (fun _lh_canMoveTo_arg2_2 -> 
                (let rec sze_1 = (sizeBoard__d2 _lh_canMoveTo_arg2_2) in
                  (((((_lh_canMoveTo_LH_P2_0_1 >= 1) && (_lh_canMoveTo_LH_P2_0_1 <= sze_1)) && (_lh_canMoveTo_LH_P2_1_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_1 <= sze_1)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1))) _lh_canMoveTo_arg2_2))))))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_2, _lh_move_LH_P2_1_2) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2 = (_lh_move_LH_P2_1_2 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2 = (_lh_move_LH_P2_0_2 - 1) in
              (fun _lh_canMoveTo_arg2_3 -> 
                (let rec sze_2 = (sizeBoard__d2 _lh_canMoveTo_arg2_3) in
                  (((((_lh_canMoveTo_LH_P2_0_2 >= 1) && (_lh_canMoveTo_LH_P2_0_2 <= sze_2)) && (_lh_canMoveTo_LH_P2_1_2 >= 1)) && (_lh_canMoveTo_LH_P2_1_2 <= sze_2)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_2, _lh_canMoveTo_LH_P2_1_2))) _lh_canMoveTo_arg2_3))))))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_3, _lh_move_LH_P2_1_3) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3 = (_lh_move_LH_P2_1_3 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_3 = (_lh_move_LH_P2_0_3 + 1) in
              (fun _lh_canMoveTo_arg2_4 -> 
                (let rec sze_3 = (sizeBoard__d2 _lh_canMoveTo_arg2_4) in
                  (((((_lh_canMoveTo_LH_P2_0_3 >= 1) && (_lh_canMoveTo_LH_P2_0_3 <= sze_3)) && (_lh_canMoveTo_LH_P2_1_3 >= 1)) && (_lh_canMoveTo_LH_P2_1_3 <= sze_3)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_3, _lh_canMoveTo_LH_P2_1_3))) _lh_canMoveTo_arg2_4))))))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_4, _lh_move_LH_P2_1_4) -> 
          (let rec _lh_canMoveTo_LH_P2_1_4 = (_lh_move_LH_P2_1_4 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_4 = (_lh_move_LH_P2_0_4 - 2) in
              (fun _lh_canMoveTo_arg2_5 -> 
                (let rec sze_4 = (sizeBoard__d2 _lh_canMoveTo_arg2_5) in
                  (((((_lh_canMoveTo_LH_P2_0_4 >= 1) && (_lh_canMoveTo_LH_P2_0_4 <= sze_4)) && (_lh_canMoveTo_LH_P2_1_4 >= 1)) && (_lh_canMoveTo_LH_P2_1_4 <= sze_4)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_4, _lh_canMoveTo_LH_P2_1_4))) _lh_canMoveTo_arg2_5))))))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_5, _lh_move_LH_P2_1_5) -> 
          (let rec _lh_canMoveTo_LH_P2_1_5 = (_lh_move_LH_P2_1_5 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_5 = (_lh_move_LH_P2_0_5 - 2) in
              (fun _lh_canMoveTo_arg2_6 -> 
                (let rec sze_5 = (sizeBoard__d2 _lh_canMoveTo_arg2_6) in
                  (((((_lh_canMoveTo_LH_P2_0_5 >= 1) && (_lh_canMoveTo_LH_P2_0_5 <= sze_5)) && (_lh_canMoveTo_LH_P2_1_5 >= 1)) && (_lh_canMoveTo_LH_P2_1_5 <= sze_5)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_5, _lh_canMoveTo_LH_P2_1_5))) _lh_canMoveTo_arg2_6))))))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_6, _lh_move_LH_P2_1_6) -> 
          (let rec _lh_canMoveTo_LH_P2_1_6 = (_lh_move_LH_P2_1_6 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_6 = (_lh_move_LH_P2_0_6 + 2) in
              (fun _lh_canMoveTo_arg2_7 -> 
                (let rec sze_6 = (sizeBoard__d2 _lh_canMoveTo_arg2_7) in
                  (((((_lh_canMoveTo_LH_P2_0_6 >= 1) && (_lh_canMoveTo_LH_P2_0_6 <= sze_6)) && (_lh_canMoveTo_LH_P2_1_6 >= 1)) && (_lh_canMoveTo_LH_P2_1_6 <= sze_6)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_6, _lh_canMoveTo_LH_P2_1_6))) _lh_canMoveTo_arg2_7))))))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_7, _lh_move_LH_P2_1_7) -> 
          (let rec _lh_canMoveTo_LH_P2_1_7 = (_lh_move_LH_P2_1_7 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_7 = (_lh_move_LH_P2_0_7 + 2) in
              (fun _lh_canMoveTo_arg2_8 -> 
                (let rec sze_7 = (sizeBoard__d2 _lh_canMoveTo_arg2_8) in
                  (((((_lh_canMoveTo_LH_P2_0_7 >= 1) && (_lh_canMoveTo_LH_P2_0_7 <= sze_7)) && (_lh_canMoveTo_LH_P2_1_7 >= 1)) && (_lh_canMoveTo_LH_P2_1_7 <= sze_7)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_7, _lh_canMoveTo_LH_P2_1_7))) _lh_canMoveTo_arg2_8))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and move__d3 _lh_move_arg1_3 _lh_move_arg2_3 =
  (match _lh_move_arg1_3 with
    | `UL -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_4, _lh_move_LH_P2_1_2_4) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_8 = (_lh_move_LH_P2_1_2_4 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_1_8 = (_lh_move_LH_P2_0_2_4 - 1) in
              (fun _lh_canMoveTo_arg2_2_0 -> 
                (let rec sze_1_9 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_0) in
                  (((((_lh_canMoveTo_LH_P2_0_1_8 >= 1) && (_lh_canMoveTo_LH_P2_0_1_8 <= sze_1_9)) && (_lh_canMoveTo_LH_P2_1_1_8 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_8 <= sze_1_9)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_8, _lh_canMoveTo_LH_P2_1_1_8))) _lh_canMoveTo_arg2_2_0))))))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_5, _lh_move_LH_P2_1_2_5) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_9 = (_lh_move_LH_P2_1_2_5 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_1_9 = (_lh_move_LH_P2_0_2_5 + 1) in
              (fun _lh_canMoveTo_arg2_2_1 -> 
                (let rec sze_2_0 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_1) in
                  (((((_lh_canMoveTo_LH_P2_0_1_9 >= 1) && (_lh_canMoveTo_LH_P2_0_1_9 <= sze_2_0)) && (_lh_canMoveTo_LH_P2_1_1_9 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_9 <= sze_2_0)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_9, _lh_canMoveTo_LH_P2_1_1_9))) _lh_canMoveTo_arg2_2_1))))))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_6, _lh_move_LH_P2_1_2_6) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_0 = (_lh_move_LH_P2_1_2_6 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2_0 = (_lh_move_LH_P2_0_2_6 - 1) in
              (fun _lh_canMoveTo_arg2_2_2 -> 
                (let rec sze_2_1 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_2) in
                  (((((_lh_canMoveTo_LH_P2_0_2_0 >= 1) && (_lh_canMoveTo_LH_P2_0_2_0 <= sze_2_1)) && (_lh_canMoveTo_LH_P2_1_2_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_0 <= sze_2_1)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_0, _lh_canMoveTo_LH_P2_1_2_0))) _lh_canMoveTo_arg2_2_2))))))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_7, _lh_move_LH_P2_1_2_7) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_1 = (_lh_move_LH_P2_1_2_7 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2_1 = (_lh_move_LH_P2_0_2_7 + 1) in
              (fun _lh_canMoveTo_arg2_2_3 -> 
                (let rec sze_2_2 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_3) in
                  (((((_lh_canMoveTo_LH_P2_0_2_1 >= 1) && (_lh_canMoveTo_LH_P2_0_2_1 <= sze_2_2)) && (_lh_canMoveTo_LH_P2_1_2_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_1 <= sze_2_2)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_1, _lh_canMoveTo_LH_P2_1_2_1))) _lh_canMoveTo_arg2_2_3))))))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_8, _lh_move_LH_P2_1_2_8) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_2 = (_lh_move_LH_P2_1_2_8 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_2_2 = (_lh_move_LH_P2_0_2_8 - 2) in
              (fun _lh_canMoveTo_arg2_2_4 -> 
                (let rec sze_2_3 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_4) in
                  (((((_lh_canMoveTo_LH_P2_0_2_2 >= 1) && (_lh_canMoveTo_LH_P2_0_2_2 <= sze_2_3)) && (_lh_canMoveTo_LH_P2_1_2_2 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_2 <= sze_2_3)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_2, _lh_canMoveTo_LH_P2_1_2_2))) _lh_canMoveTo_arg2_2_4))))))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_9, _lh_move_LH_P2_1_2_9) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_3 = (_lh_move_LH_P2_1_2_9 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_2_3 = (_lh_move_LH_P2_0_2_9 - 2) in
              (fun _lh_canMoveTo_arg2_2_5 -> 
                (let rec sze_2_4 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_5) in
                  (((((_lh_canMoveTo_LH_P2_0_2_3 >= 1) && (_lh_canMoveTo_LH_P2_0_2_3 <= sze_2_4)) && (_lh_canMoveTo_LH_P2_1_2_3 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_3 <= sze_2_4)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_3, _lh_canMoveTo_LH_P2_1_2_3))) _lh_canMoveTo_arg2_2_5))))))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_3_0, _lh_move_LH_P2_1_3_0) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_4 = (_lh_move_LH_P2_1_3_0 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_2_4 = (_lh_move_LH_P2_0_3_0 + 2) in
              (fun _lh_canMoveTo_arg2_2_6 -> 
                (let rec sze_2_5 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_6) in
                  (((((_lh_canMoveTo_LH_P2_0_2_4 >= 1) && (_lh_canMoveTo_LH_P2_0_2_4 <= sze_2_5)) && (_lh_canMoveTo_LH_P2_1_2_4 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_4 <= sze_2_5)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_4, _lh_canMoveTo_LH_P2_1_2_4))) _lh_canMoveTo_arg2_2_6))))))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_3_1, _lh_move_LH_P2_1_3_1) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_5 = (_lh_move_LH_P2_1_3_1 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_2_5 = (_lh_move_LH_P2_0_3_1 + 2) in
              (fun _lh_canMoveTo_arg2_2_7 -> 
                (let rec sze_2_6 = (sizeBoard__d3 _lh_canMoveTo_arg2_2_7) in
                  (((((_lh_canMoveTo_LH_P2_0_2_5 >= 1) && (_lh_canMoveTo_LH_P2_0_2_5 <= sze_2_6)) && (_lh_canMoveTo_LH_P2_1_2_5 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_5 <= sze_2_6)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_5, _lh_canMoveTo_LH_P2_1_2_5))) _lh_canMoveTo_arg2_2_7))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and move__d5 _lh_move_arg1_1 _lh_move_arg2_1 =
  (match _lh_move_arg1_1 with
    | `UL -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_8, _lh_move_LH_P2_1_8) -> 
          (let rec _lh_canMoveTo_LH_P2_1_8 = (_lh_move_LH_P2_1_8 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_8 = (_lh_move_LH_P2_0_8 - 1) in
              (fun _lh_canMoveTo_arg2_9 -> 
                (let rec sze_9 = (sizeBoard__d4 _lh_canMoveTo_arg2_9) in
                  (((((_lh_canMoveTo_LH_P2_0_8 >= 1) && (_lh_canMoveTo_LH_P2_0_8 <= sze_9)) && (_lh_canMoveTo_LH_P2_1_8 >= 1)) && (_lh_canMoveTo_LH_P2_1_8 <= sze_9)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_8, _lh_canMoveTo_LH_P2_1_8))) _lh_canMoveTo_arg2_9))))))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_9, _lh_move_LH_P2_1_9) -> 
          (let rec _lh_canMoveTo_LH_P2_1_9 = (_lh_move_LH_P2_1_9 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_9 = (_lh_move_LH_P2_0_9 + 1) in
              (fun _lh_canMoveTo_arg2_1_0 -> 
                (let rec sze_1_0 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_0) in
                  (((((_lh_canMoveTo_LH_P2_0_9 >= 1) && (_lh_canMoveTo_LH_P2_0_9 <= sze_1_0)) && (_lh_canMoveTo_LH_P2_1_9 >= 1)) && (_lh_canMoveTo_LH_P2_1_9 <= sze_1_0)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_9, _lh_canMoveTo_LH_P2_1_9))) _lh_canMoveTo_arg2_1_0))))))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_0, _lh_move_LH_P2_1_1_0) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_0 = (_lh_move_LH_P2_1_1_0 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_1_0 = (_lh_move_LH_P2_0_1_0 - 1) in
              (fun _lh_canMoveTo_arg2_1_1 -> 
                (let rec sze_1_1 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_1) in
                  (((((_lh_canMoveTo_LH_P2_0_1_0 >= 1) && (_lh_canMoveTo_LH_P2_0_1_0 <= sze_1_1)) && (_lh_canMoveTo_LH_P2_1_1_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_0 <= sze_1_1)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_0, _lh_canMoveTo_LH_P2_1_1_0))) _lh_canMoveTo_arg2_1_1))))))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_1, _lh_move_LH_P2_1_1_1) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_1 = (_lh_move_LH_P2_1_1_1 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_1_1 = (_lh_move_LH_P2_0_1_1 + 1) in
              (fun _lh_canMoveTo_arg2_1_2 -> 
                (let rec sze_1_2 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_2) in
                  (((((_lh_canMoveTo_LH_P2_0_1_1 >= 1) && (_lh_canMoveTo_LH_P2_0_1_1 <= sze_1_2)) && (_lh_canMoveTo_LH_P2_1_1_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_1 <= sze_1_2)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_1, _lh_canMoveTo_LH_P2_1_1_1))) _lh_canMoveTo_arg2_1_2))))))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_2, _lh_move_LH_P2_1_1_2) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_2 = (_lh_move_LH_P2_1_1_2 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_1_2 = (_lh_move_LH_P2_0_1_2 - 2) in
              (fun _lh_canMoveTo_arg2_1_3 -> 
                (let rec sze_1_3 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_3) in
                  (((((_lh_canMoveTo_LH_P2_0_1_2 >= 1) && (_lh_canMoveTo_LH_P2_0_1_2 <= sze_1_3)) && (_lh_canMoveTo_LH_P2_1_1_2 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_2 <= sze_1_3)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_2, _lh_canMoveTo_LH_P2_1_1_2))) _lh_canMoveTo_arg2_1_3))))))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_3, _lh_move_LH_P2_1_1_3) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_3 = (_lh_move_LH_P2_1_1_3 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_1_3 = (_lh_move_LH_P2_0_1_3 - 2) in
              (fun _lh_canMoveTo_arg2_1_4 -> 
                (let rec sze_1_4 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_4) in
                  (((((_lh_canMoveTo_LH_P2_0_1_3 >= 1) && (_lh_canMoveTo_LH_P2_0_1_3 <= sze_1_4)) && (_lh_canMoveTo_LH_P2_1_1_3 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_3 <= sze_1_4)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_3, _lh_canMoveTo_LH_P2_1_1_3))) _lh_canMoveTo_arg2_1_4))))))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_4, _lh_move_LH_P2_1_1_4) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_4 = (_lh_move_LH_P2_1_1_4 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_1_4 = (_lh_move_LH_P2_0_1_4 + 2) in
              (fun _lh_canMoveTo_arg2_1_5 -> 
                (let rec sze_1_5 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_5) in
                  (((((_lh_canMoveTo_LH_P2_0_1_4 >= 1) && (_lh_canMoveTo_LH_P2_0_1_4 <= sze_1_5)) && (_lh_canMoveTo_LH_P2_1_1_4 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_4 <= sze_1_5)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_4, _lh_canMoveTo_LH_P2_1_1_4))) _lh_canMoveTo_arg2_1_5))))))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_5, _lh_move_LH_P2_1_1_5) -> 
          (let rec _lh_canMoveTo_LH_P2_1_1_5 = (_lh_move_LH_P2_1_1_5 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_1_5 = (_lh_move_LH_P2_0_1_5 + 2) in
              (fun _lh_canMoveTo_arg2_1_6 -> 
                (let rec sze_1_6 = (sizeBoard__d4 _lh_canMoveTo_arg2_1_6) in
                  (((((_lh_canMoveTo_LH_P2_0_1_5 >= 1) && (_lh_canMoveTo_LH_P2_0_1_5 <= sze_1_6)) && (_lh_canMoveTo_LH_P2_1_1_5 >= 1)) && (_lh_canMoveTo_LH_P2_1_1_5 <= sze_1_6)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1_5, _lh_canMoveTo_LH_P2_1_1_5))) _lh_canMoveTo_arg2_1_6))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and move__d6 _lh_move_arg1_4 _lh_move_arg2_4 =
  (match _lh_move_arg1_4 with
    | `UL -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_2, _lh_move_LH_P2_1_3_2) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_6 = (_lh_move_LH_P2_1_3_2 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2_6 = (_lh_move_LH_P2_0_3_2 - 1) in
              (fun _lh_canMoveTo_arg2_2_9 -> 
                (let rec sze_2_7 = (sizeBoard__d5 _lh_canMoveTo_arg2_2_9) in
                  (((((_lh_canMoveTo_LH_P2_0_2_6 >= 1) && (_lh_canMoveTo_LH_P2_0_2_6 <= sze_2_7)) && (_lh_canMoveTo_LH_P2_1_2_6 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_6 <= sze_2_7)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_6, _lh_canMoveTo_LH_P2_1_2_6))) _lh_canMoveTo_arg2_2_9))))))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_3, _lh_move_LH_P2_1_3_3) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_7 = (_lh_move_LH_P2_1_3_3 - 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2_7 = (_lh_move_LH_P2_0_3_3 + 1) in
              (fun _lh_canMoveTo_arg2_3_0 -> 
                (let rec sze_2_8 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_0) in
                  (((((_lh_canMoveTo_LH_P2_0_2_7 >= 1) && (_lh_canMoveTo_LH_P2_0_2_7 <= sze_2_8)) && (_lh_canMoveTo_LH_P2_1_2_7 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_7 <= sze_2_8)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_7, _lh_canMoveTo_LH_P2_1_2_7))) _lh_canMoveTo_arg2_3_0))))))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_4, _lh_move_LH_P2_1_3_4) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_8 = (_lh_move_LH_P2_1_3_4 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2_8 = (_lh_move_LH_P2_0_3_4 - 1) in
              (fun _lh_canMoveTo_arg2_3_1 -> 
                (let rec sze_2_9 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_1) in
                  (((((_lh_canMoveTo_LH_P2_0_2_8 >= 1) && (_lh_canMoveTo_LH_P2_0_2_8 <= sze_2_9)) && (_lh_canMoveTo_LH_P2_1_2_8 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_8 <= sze_2_9)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_8, _lh_canMoveTo_LH_P2_1_2_8))) _lh_canMoveTo_arg2_3_1))))))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_5, _lh_move_LH_P2_1_3_5) -> 
          (let rec _lh_canMoveTo_LH_P2_1_2_9 = (_lh_move_LH_P2_1_3_5 + 2) in
            (let rec _lh_canMoveTo_LH_P2_0_2_9 = (_lh_move_LH_P2_0_3_5 + 1) in
              (fun _lh_canMoveTo_arg2_3_2 -> 
                (let rec sze_3_0 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_2) in
                  (((((_lh_canMoveTo_LH_P2_0_2_9 >= 1) && (_lh_canMoveTo_LH_P2_0_2_9 <= sze_3_0)) && (_lh_canMoveTo_LH_P2_1_2_9 >= 1)) && (_lh_canMoveTo_LH_P2_1_2_9 <= sze_3_0)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_2_9, _lh_canMoveTo_LH_P2_1_2_9))) _lh_canMoveTo_arg2_3_2))))))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_6, _lh_move_LH_P2_1_3_6) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_0 = (_lh_move_LH_P2_1_3_6 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_3_0 = (_lh_move_LH_P2_0_3_6 - 2) in
              (fun _lh_canMoveTo_arg2_3_3 -> 
                (let rec sze_3_1 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_3) in
                  (((((_lh_canMoveTo_LH_P2_0_3_0 >= 1) && (_lh_canMoveTo_LH_P2_0_3_0 <= sze_3_1)) && (_lh_canMoveTo_LH_P2_1_3_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_0 <= sze_3_1)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_0, _lh_canMoveTo_LH_P2_1_3_0))) _lh_canMoveTo_arg2_3_3))))))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_7, _lh_move_LH_P2_1_3_7) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_1 = (_lh_move_LH_P2_1_3_7 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_3_1 = (_lh_move_LH_P2_0_3_7 - 2) in
              (fun _lh_canMoveTo_arg2_3_4 -> 
                (let rec sze_3_2 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_4) in
                  (((((_lh_canMoveTo_LH_P2_0_3_1 >= 1) && (_lh_canMoveTo_LH_P2_0_3_1 <= sze_3_2)) && (_lh_canMoveTo_LH_P2_1_3_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_1 <= sze_3_2)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_1, _lh_canMoveTo_LH_P2_1_3_1))) _lh_canMoveTo_arg2_3_4))))))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_8, _lh_move_LH_P2_1_3_8) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_2 = (_lh_move_LH_P2_1_3_8 - 1) in
            (let rec _lh_canMoveTo_LH_P2_0_3_2 = (_lh_move_LH_P2_0_3_8 + 2) in
              (fun _lh_canMoveTo_arg2_3_5 -> 
                (let rec sze_3_3 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_5) in
                  (((((_lh_canMoveTo_LH_P2_0_3_2 >= 1) && (_lh_canMoveTo_LH_P2_0_3_2 <= sze_3_3)) && (_lh_canMoveTo_LH_P2_1_3_2 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_2 <= sze_3_3)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_2, _lh_canMoveTo_LH_P2_1_3_2))) _lh_canMoveTo_arg2_3_5))))))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_9, _lh_move_LH_P2_1_3_9) -> 
          (let rec _lh_canMoveTo_LH_P2_1_3_3 = (_lh_move_LH_P2_1_3_9 + 1) in
            (let rec _lh_canMoveTo_LH_P2_0_3_3 = (_lh_move_LH_P2_0_3_9 + 2) in
              (fun _lh_canMoveTo_arg2_3_6 -> 
                (let rec sze_3_4 = (sizeBoard__d5 _lh_canMoveTo_arg2_3_6) in
                  (((((_lh_canMoveTo_LH_P2_0_3_3 >= 1) && (_lh_canMoveTo_LH_P2_0_3_3 <= sze_3_4)) && (_lh_canMoveTo_LH_P2_1_3_3 >= 1)) && (_lh_canMoveTo_LH_P2_1_3_3 <= sze_3_4)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_3_3, _lh_canMoveTo_LH_P2_1_3_3))) _lh_canMoveTo_arg2_3_6))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and possibleMoves__d0 _lh_possibleMoves_arg1_1_0 =
  (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_6 -> 
    ((_lh_listcomp_fun_para_6 _lh_listcomp_fun_1_9) _lh_possibleMoves_arg1_1_0)) in
    (_lh_listcomp_fun_1_9 (let rec _lh_listcomp_fun_ls_t_1_3 = (let rec _lh_listcomp_fun_ls_t_1_4 = (let rec _lh_listcomp_fun_ls_t_1_5 = (let rec _lh_listcomp_fun_ls_t_1_6 = (let rec _lh_listcomp_fun_ls_t_1_7 = (let rec _lh_listcomp_fun_ls_t_1_8 = (let rec _lh_listcomp_fun_ls_t_1_9 = (let rec _lh_listcomp_fun_ls_t_2_0 = (fun _lh_listcomp_fun_2_0 _lh_possibleMoves_arg1_1_1 _lh_dummy_9 -> 
      0) in
      (let rec _lh_listcomp_fun_ls_h_1_3 = (`RD) in
        (fun _lh_listcomp_fun_2_1 _lh_possibleMoves_arg1_1_2 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_2) _lh_listcomp_fun_ls_h_1_3) then
            (let rec t_2_0 = (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_0) in
              (fun _lh_dummy_1_0 -> 
                (1 + (length__d2 t_2_0))))
          else
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_0))))) in
      (let rec _lh_listcomp_fun_ls_h_1_4 = (`RU) in
        (fun _lh_listcomp_fun_2_2 _lh_possibleMoves_arg1_1_3 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_3) _lh_listcomp_fun_ls_h_1_4) then
            (let rec t_2_1 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_9) in
              (fun _lh_dummy_1_1 -> 
                (1 + (length__d2 t_2_1))))
          else
            (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_9))))) in
      (let rec _lh_listcomp_fun_ls_h_1_5 = (`LD) in
        (fun _lh_listcomp_fun_2_3 _lh_possibleMoves_arg1_1_4 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_4) _lh_listcomp_fun_ls_h_1_5) then
            (let rec t_2_2 = (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_8) in
              (fun _lh_dummy_1_2 -> 
                (1 + (length__d2 t_2_2))))
          else
            (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_8))))) in
      (let rec _lh_listcomp_fun_ls_h_1_6 = (`LU) in
        (fun _lh_listcomp_fun_2_4 _lh_possibleMoves_arg1_1_5 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_5) _lh_listcomp_fun_ls_h_1_6) then
            (let rec t_2_3 = (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_1_7) in
              (fun _lh_dummy_1_3 -> 
                (1 + (length__d2 t_2_3))))
          else
            (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_1_7))))) in
      (let rec _lh_listcomp_fun_ls_h_1_7 = (`DR) in
        (fun _lh_listcomp_fun_2_5 _lh_possibleMoves_arg1_1_6 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_6) _lh_listcomp_fun_ls_h_1_7) then
            (let rec t_2_4 = (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_6) in
              (fun _lh_dummy_1_4 -> 
                (1 + (length__d2 t_2_4))))
          else
            (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_6))))) in
      (let rec _lh_listcomp_fun_ls_h_1_8 = (`DL) in
        (fun _lh_listcomp_fun_2_6 _lh_possibleMoves_arg1_1_7 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_7) _lh_listcomp_fun_ls_h_1_8) then
            (let rec t_2_5 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_5) in
              (fun _lh_dummy_1_5 -> 
                (1 + (length__d2 t_2_5))))
          else
            (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_5))))) in
      (let rec _lh_listcomp_fun_ls_h_1_9 = (`UR) in
        (fun _lh_listcomp_fun_2_7 _lh_possibleMoves_arg1_1_8 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_8) _lh_listcomp_fun_ls_h_1_9) then
            (let rec t_2_6 = (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_4) in
              (fun _lh_dummy_1_6 -> 
                (1 + (length__d2 t_2_6))))
          else
            (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_1_4))))) in
      (let rec _lh_listcomp_fun_ls_h_2_0 = (`UL) in
        (fun _lh_listcomp_fun_2_8 _lh_possibleMoves_arg1_1_9 -> 
          (if ((canMove__d0 _lh_possibleMoves_arg1_1_9) _lh_listcomp_fun_ls_h_2_0) then
            (let rec t_2_7 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_1_3) in
              (fun _lh_dummy_1_7 -> 
                (1 + (length__d2 t_2_7))))
          else
            (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_1_3)))))))
and possibleMoves__d1 _lh_possibleMoves_arg1_2_0 =
  (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_8 -> 
    ((_lh_listcomp_fun_para_8 _lh_listcomp_fun_3_2) _lh_possibleMoves_arg1_2_0)) in
    (_lh_listcomp_fun_3_2 (let rec _lh_listcomp_fun_ls_t_2_2 = (let rec _lh_listcomp_fun_ls_t_2_3 = (let rec _lh_listcomp_fun_ls_t_2_4 = (let rec _lh_listcomp_fun_ls_t_2_5 = (let rec _lh_listcomp_fun_ls_t_2_6 = (let rec _lh_listcomp_fun_ls_t_2_7 = (let rec _lh_listcomp_fun_ls_t_2_8 = (let rec _lh_listcomp_fun_ls_t_2_9 = (fun _lh_listcomp_fun_3_3 _lh_possibleMoves_arg1_2_1 f_7 _lh_listcomp_fun_3_4 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_2_2 = (`RD) in
        (fun _lh_listcomp_fun_3_5 _lh_possibleMoves_arg1_2_2 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_2) _lh_listcomp_fun_ls_h_2_2) then
            (let rec t_3_0 = (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_9) in
              (let rec h_1_4 = _lh_listcomp_fun_ls_h_2_2 in
                (fun f_8 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_0 = ((map__d0 f_8) t_3_0) in
                    (let rec _lh_listcomp_fun_ls_h_2_3 = (f_8 h_1_4) in
                      (fun _lh_listcomp_fun_3_6 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_2_3))), _lh_listcomp_fun_ls_h_2_3)), (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_3_0)))))))))
          else
            (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_9))))) in
      (let rec _lh_listcomp_fun_ls_h_2_4 = (`RU) in
        (fun _lh_listcomp_fun_3_7 _lh_possibleMoves_arg1_2_3 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_3) _lh_listcomp_fun_ls_h_2_4) then
            (let rec t_3_1 = (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_8) in
              (let rec h_1_5 = _lh_listcomp_fun_ls_h_2_4 in
                (fun f_9 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_1 = ((map__d0 f_9) t_3_1) in
                    (let rec _lh_listcomp_fun_ls_h_2_5 = (f_9 h_1_5) in
                      (fun _lh_listcomp_fun_3_8 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_2_5))), _lh_listcomp_fun_ls_h_2_5)), (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_3_1)))))))))
          else
            (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_8))))) in
      (let rec _lh_listcomp_fun_ls_h_2_6 = (`LD) in
        (fun _lh_listcomp_fun_3_9 _lh_possibleMoves_arg1_2_4 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_4) _lh_listcomp_fun_ls_h_2_6) then
            (let rec t_3_2 = (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_7) in
              (let rec h_1_6 = _lh_listcomp_fun_ls_h_2_6 in
                (fun f_1_0 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_2 = ((map__d0 f_1_0) t_3_2) in
                    (let rec _lh_listcomp_fun_ls_h_2_7 = (f_1_0 h_1_6) in
                      (fun _lh_listcomp_fun_4_0 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_2_7))), _lh_listcomp_fun_ls_h_2_7)), (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_3_2)))))))))
          else
            (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_7))))) in
      (let rec _lh_listcomp_fun_ls_h_2_8 = (`LU) in
        (fun _lh_listcomp_fun_4_1 _lh_possibleMoves_arg1_2_5 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_5) _lh_listcomp_fun_ls_h_2_8) then
            (let rec t_3_3 = (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_2_6) in
              (let rec h_1_7 = _lh_listcomp_fun_ls_h_2_8 in
                (fun f_1_1 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_3 = ((map__d0 f_1_1) t_3_3) in
                    (let rec _lh_listcomp_fun_ls_h_2_9 = (f_1_1 h_1_7) in
                      (fun _lh_listcomp_fun_4_2 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_2_9))), _lh_listcomp_fun_ls_h_2_9)), (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_3)))))))))
          else
            (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_2_6))))) in
      (let rec _lh_listcomp_fun_ls_h_3_0 = (`DR) in
        (fun _lh_listcomp_fun_4_3 _lh_possibleMoves_arg1_2_6 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_6) _lh_listcomp_fun_ls_h_3_0) then
            (let rec t_3_4 = (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_2_5) in
              (let rec h_1_8 = _lh_listcomp_fun_ls_h_3_0 in
                (fun f_1_2 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_4 = ((map__d0 f_1_2) t_3_4) in
                    (let rec _lh_listcomp_fun_ls_h_3_1 = (f_1_2 h_1_8) in
                      (fun _lh_listcomp_fun_4_4 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_3_1))), _lh_listcomp_fun_ls_h_3_1)), (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_3_4)))))))))
          else
            (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_2_5))))) in
      (let rec _lh_listcomp_fun_ls_h_3_2 = (`DL) in
        (fun _lh_listcomp_fun_4_5 _lh_possibleMoves_arg1_2_7 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_7) _lh_listcomp_fun_ls_h_3_2) then
            (let rec t_3_5 = (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_2_4) in
              (let rec h_1_9 = _lh_listcomp_fun_ls_h_3_2 in
                (fun f_1_3 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_5 = ((map__d0 f_1_3) t_3_5) in
                    (let rec _lh_listcomp_fun_ls_h_3_3 = (f_1_3 h_1_9) in
                      (fun _lh_listcomp_fun_4_6 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_3_3))), _lh_listcomp_fun_ls_h_3_3)), (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_5)))))))))
          else
            (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_2_4))))) in
      (let rec _lh_listcomp_fun_ls_h_3_4 = (`UR) in
        (fun _lh_listcomp_fun_4_7 _lh_possibleMoves_arg1_2_8 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_8) _lh_listcomp_fun_ls_h_3_4) then
            (let rec t_3_6 = (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_2_3) in
              (let rec h_2_0 = _lh_listcomp_fun_ls_h_3_4 in
                (fun f_1_4 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_6 = ((map__d0 f_1_4) t_3_6) in
                    (let rec _lh_listcomp_fun_ls_h_3_5 = (f_1_4 h_2_0) in
                      (fun _lh_listcomp_fun_4_8 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_3_5))), _lh_listcomp_fun_ls_h_3_5)), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_6)))))))))
          else
            (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_2_3))))) in
      (let rec _lh_listcomp_fun_ls_h_3_6 = (`UL) in
        (fun _lh_listcomp_fun_4_9 _lh_possibleMoves_arg1_2_9 -> 
          (if ((canMove__d1 _lh_possibleMoves_arg1_2_9) _lh_listcomp_fun_ls_h_3_6) then
            (let rec t_3_7 = (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_2_2) in
              (let rec h_2_1 = _lh_listcomp_fun_ls_h_3_6 in
                (fun f_1_5 -> 
                  (let rec _lh_listcomp_fun_ls_t_3_7 = ((map__d0 f_1_5) t_3_7) in
                    (let rec _lh_listcomp_fun_ls_h_3_7 = (f_1_5 h_2_1) in
                      (fun _lh_listcomp_fun_5_0 -> 
                        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_3_7))), _lh_listcomp_fun_ls_h_3_7)), (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_3_7)))))))))
          else
            (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_2_2)))))))
and possibleMoves__d2 _lh_possibleMoves_arg1_4_0 =
  (let rec _lh_listcomp_fun_9_0 = (fun _lh_listcomp_fun_para_1_3 -> 
    ((_lh_listcomp_fun_para_1_3 _lh_listcomp_fun_9_0) _lh_possibleMoves_arg1_4_0)) in
    (_lh_listcomp_fun_9_0 (let rec _lh_listcomp_fun_ls_t_7_2 = (let rec _lh_listcomp_fun_ls_t_7_3 = (let rec _lh_listcomp_fun_ls_t_7_4 = (let rec _lh_listcomp_fun_ls_t_7_5 = (let rec _lh_listcomp_fun_ls_t_7_6 = (let rec _lh_listcomp_fun_ls_t_7_7 = (let rec _lh_listcomp_fun_ls_t_7_8 = (let rec _lh_listcomp_fun_ls_t_7_9 = (fun _lh_listcomp_fun_9_1 _lh_possibleMoves_arg1_4_1 _lh_dummy_1_9 -> 
      0) in
      (let rec _lh_listcomp_fun_ls_h_6_4 = (`RD) in
        (fun _lh_listcomp_fun_9_2 _lh_possibleMoves_arg1_4_2 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_2) _lh_listcomp_fun_ls_h_6_4) then
            (let rec t_6_4 = (_lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_7_9) in
              (fun _lh_dummy_2_0 -> 
                (1 + (length__d3 t_6_4))))
          else
            (_lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_7_9))))) in
      (let rec _lh_listcomp_fun_ls_h_6_5 = (`RU) in
        (fun _lh_listcomp_fun_9_3 _lh_possibleMoves_arg1_4_3 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_3) _lh_listcomp_fun_ls_h_6_5) then
            (let rec t_6_5 = (_lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_7_8) in
              (fun _lh_dummy_2_1 -> 
                (1 + (length__d3 t_6_5))))
          else
            (_lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_7_8))))) in
      (let rec _lh_listcomp_fun_ls_h_6_6 = (`LD) in
        (fun _lh_listcomp_fun_9_4 _lh_possibleMoves_arg1_4_4 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_4) _lh_listcomp_fun_ls_h_6_6) then
            (let rec t_6_6 = (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_7_7) in
              (fun _lh_dummy_2_2 -> 
                (1 + (length__d3 t_6_6))))
          else
            (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_7_7))))) in
      (let rec _lh_listcomp_fun_ls_h_6_7 = (`LU) in
        (fun _lh_listcomp_fun_9_5 _lh_possibleMoves_arg1_4_5 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_5) _lh_listcomp_fun_ls_h_6_7) then
            (let rec t_6_7 = (_lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_7_6) in
              (fun _lh_dummy_2_3 -> 
                (1 + (length__d3 t_6_7))))
          else
            (_lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_7_6))))) in
      (let rec _lh_listcomp_fun_ls_h_6_8 = (`DR) in
        (fun _lh_listcomp_fun_9_6 _lh_possibleMoves_arg1_4_6 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_6) _lh_listcomp_fun_ls_h_6_8) then
            (let rec t_6_8 = (_lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_7_5) in
              (fun _lh_dummy_2_4 -> 
                (1 + (length__d3 t_6_8))))
          else
            (_lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_7_5))))) in
      (let rec _lh_listcomp_fun_ls_h_6_9 = (`DL) in
        (fun _lh_listcomp_fun_9_7 _lh_possibleMoves_arg1_4_7 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_7) _lh_listcomp_fun_ls_h_6_9) then
            (let rec t_6_9 = (_lh_listcomp_fun_9_7 _lh_listcomp_fun_ls_t_7_4) in
              (fun _lh_dummy_2_5 -> 
                (1 + (length__d3 t_6_9))))
          else
            (_lh_listcomp_fun_9_7 _lh_listcomp_fun_ls_t_7_4))))) in
      (let rec _lh_listcomp_fun_ls_h_7_0 = (`UR) in
        (fun _lh_listcomp_fun_9_8 _lh_possibleMoves_arg1_4_8 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_8) _lh_listcomp_fun_ls_h_7_0) then
            (let rec t_7_0 = (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_7_3) in
              (fun _lh_dummy_2_6 -> 
                (1 + (length__d3 t_7_0))))
          else
            (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_7_3))))) in
      (let rec _lh_listcomp_fun_ls_h_7_1 = (`UL) in
        (fun _lh_listcomp_fun_9_9 _lh_possibleMoves_arg1_4_9 -> 
          (if ((canMove__d2 _lh_possibleMoves_arg1_4_9) _lh_listcomp_fun_ls_h_7_1) then
            (let rec t_7_1 = (_lh_listcomp_fun_9_9 _lh_listcomp_fun_ls_t_7_2) in
              (fun _lh_dummy_2_7 -> 
                (1 + (length__d3 t_7_1))))
          else
            (_lh_listcomp_fun_9_9 _lh_listcomp_fun_ls_t_7_2)))))))
and possibleMoves__d3 _lh_possibleMoves_arg1_3_0 =
  (let rec _lh_listcomp_fun_5_2 = (fun _lh_listcomp_fun_para_1_0 -> 
    ((_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_5_2) _lh_possibleMoves_arg1_3_0)) in
    (_lh_listcomp_fun_5_2 (let rec _lh_listcomp_fun_ls_t_3_8 = (let rec _lh_listcomp_fun_ls_t_3_9 = (let rec _lh_listcomp_fun_ls_t_4_0 = (let rec _lh_listcomp_fun_ls_t_4_1 = (let rec _lh_listcomp_fun_ls_t_4_2 = (let rec _lh_listcomp_fun_ls_t_4_3 = (let rec _lh_listcomp_fun_ls_t_4_4 = (let rec _lh_listcomp_fun_ls_t_4_5 = (fun _lh_listcomp_fun_5_3 _lh_possibleMoves_arg1_3_1 f_1_9 _lh_listcomp_fun_5_4 _lh_listcomp_fun_5_5 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_3_8 = (`RD) in
        (fun _lh_listcomp_fun_5_6 _lh_possibleMoves_arg1_3_2 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_2) _lh_listcomp_fun_ls_h_3_8) then
            (let rec t_4_7 = (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_4_5) in
              (let rec h_3_1 = _lh_listcomp_fun_ls_h_3_8 in
                (fun f_2_0 -> 
                  (let rec _lh_listcomp_fun_ls_t_4_6 = ((map__d2 f_2_0) t_4_7) in
                    (let rec _lh_listcomp_fun_ls_h_3_9 = (f_2_0 h_3_1) in
                      (fun _lh_listcomp_fun_5_7 -> 
                        (let rec _lh_listcomp_fun_ls_t_4_7 = (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_4_6) in
                          (let rec _lh_listcomp_fun_ls_h_4_0 = (let rec _lh_singleDescend_LH_P2_1_0 = _lh_listcomp_fun_ls_h_3_9 in
                            (let rec _lh_singleDescend_LH_P2_0_0 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_3_9))) in
                              (fun _lh_listcomp_fun_ls_t_4_8 _lh_listcomp_fun_5_8 -> 
                                (if (_lh_singleDescend_LH_P2_0_0 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_0, (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_4_8)))
                                else
                                  (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_4_8))))) in
                            (fun _lh_listcomp_fun_5_9 -> 
                              ((_lh_listcomp_fun_ls_h_4_0 _lh_listcomp_fun_ls_t_4_7) _lh_listcomp_fun_5_9))))))))))
          else
            (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_4_5))))) in
      (let rec _lh_listcomp_fun_ls_h_4_1 = (`RU) in
        (fun _lh_listcomp_fun_6_0 _lh_possibleMoves_arg1_3_3 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_3) _lh_listcomp_fun_ls_h_4_1) then
            (let rec t_4_8 = (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_4_4) in
              (let rec h_3_2 = _lh_listcomp_fun_ls_h_4_1 in
                (fun f_2_1 -> 
                  (let rec _lh_listcomp_fun_ls_t_4_9 = ((map__d2 f_2_1) t_4_8) in
                    (let rec _lh_listcomp_fun_ls_h_4_2 = (f_2_1 h_3_2) in
                      (fun _lh_listcomp_fun_6_1 -> 
                        (let rec _lh_listcomp_fun_ls_t_5_0 = (_lh_listcomp_fun_6_1 _lh_listcomp_fun_ls_t_4_9) in
                          (let rec _lh_listcomp_fun_ls_h_4_3 = (let rec _lh_singleDescend_LH_P2_1_1 = _lh_listcomp_fun_ls_h_4_2 in
                            (let rec _lh_singleDescend_LH_P2_0_1 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_4_2))) in
                              (fun _lh_listcomp_fun_ls_t_5_1 _lh_listcomp_fun_6_2 -> 
                                (if (_lh_singleDescend_LH_P2_0_1 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_1, (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_5_1)))
                                else
                                  (_lh_listcomp_fun_6_2 _lh_listcomp_fun_ls_t_5_1))))) in
                            (fun _lh_listcomp_fun_6_3 -> 
                              ((_lh_listcomp_fun_ls_h_4_3 _lh_listcomp_fun_ls_t_5_0) _lh_listcomp_fun_6_3))))))))))
          else
            (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_4_4))))) in
      (let rec _lh_listcomp_fun_ls_h_4_4 = (`LD) in
        (fun _lh_listcomp_fun_6_4 _lh_possibleMoves_arg1_3_4 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_4) _lh_listcomp_fun_ls_h_4_4) then
            (let rec t_4_9 = (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_4_3) in
              (let rec h_3_3 = _lh_listcomp_fun_ls_h_4_4 in
                (fun f_2_2 -> 
                  (let rec _lh_listcomp_fun_ls_t_5_2 = ((map__d2 f_2_2) t_4_9) in
                    (let rec _lh_listcomp_fun_ls_h_4_5 = (f_2_2 h_3_3) in
                      (fun _lh_listcomp_fun_6_5 -> 
                        (let rec _lh_listcomp_fun_ls_t_5_3 = (_lh_listcomp_fun_6_5 _lh_listcomp_fun_ls_t_5_2) in
                          (let rec _lh_listcomp_fun_ls_h_4_6 = (let rec _lh_singleDescend_LH_P2_1_2 = _lh_listcomp_fun_ls_h_4_5 in
                            (let rec _lh_singleDescend_LH_P2_0_2 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_4_5))) in
                              (fun _lh_listcomp_fun_ls_t_5_4 _lh_listcomp_fun_6_6 -> 
                                (if (_lh_singleDescend_LH_P2_0_2 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_2, (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_5_4)))
                                else
                                  (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_5_4))))) in
                            (fun _lh_listcomp_fun_6_7 -> 
                              ((_lh_listcomp_fun_ls_h_4_6 _lh_listcomp_fun_ls_t_5_3) _lh_listcomp_fun_6_7))))))))))
          else
            (_lh_listcomp_fun_6_4 _lh_listcomp_fun_ls_t_4_3))))) in
      (let rec _lh_listcomp_fun_ls_h_4_7 = (`LU) in
        (fun _lh_listcomp_fun_6_8 _lh_possibleMoves_arg1_3_5 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_5) _lh_listcomp_fun_ls_h_4_7) then
            (let rec t_5_0 = (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_4_2) in
              (let rec h_3_4 = _lh_listcomp_fun_ls_h_4_7 in
                (fun f_2_3 -> 
                  (let rec _lh_listcomp_fun_ls_t_5_5 = ((map__d2 f_2_3) t_5_0) in
                    (let rec _lh_listcomp_fun_ls_h_4_8 = (f_2_3 h_3_4) in
                      (fun _lh_listcomp_fun_6_9 -> 
                        (let rec _lh_listcomp_fun_ls_t_5_6 = (_lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_5_5) in
                          (let rec _lh_listcomp_fun_ls_h_4_9 = (let rec _lh_singleDescend_LH_P2_1_3 = _lh_listcomp_fun_ls_h_4_8 in
                            (let rec _lh_singleDescend_LH_P2_0_3 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_4_8))) in
                              (fun _lh_listcomp_fun_ls_t_5_7 _lh_listcomp_fun_7_0 -> 
                                (if (_lh_singleDescend_LH_P2_0_3 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_3, (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_5_7)))
                                else
                                  (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_5_7))))) in
                            (fun _lh_listcomp_fun_7_1 -> 
                              ((_lh_listcomp_fun_ls_h_4_9 _lh_listcomp_fun_ls_t_5_6) _lh_listcomp_fun_7_1))))))))))
          else
            (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_4_2))))) in
      (let rec _lh_listcomp_fun_ls_h_5_0 = (`DR) in
        (fun _lh_listcomp_fun_7_2 _lh_possibleMoves_arg1_3_6 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_6) _lh_listcomp_fun_ls_h_5_0) then
            (let rec t_5_1 = (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_4_1) in
              (let rec h_3_5 = _lh_listcomp_fun_ls_h_5_0 in
                (fun f_2_4 -> 
                  (let rec _lh_listcomp_fun_ls_t_5_8 = ((map__d2 f_2_4) t_5_1) in
                    (let rec _lh_listcomp_fun_ls_h_5_1 = (f_2_4 h_3_5) in
                      (fun _lh_listcomp_fun_7_3 -> 
                        (let rec _lh_listcomp_fun_ls_t_5_9 = (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_5_8) in
                          (let rec _lh_listcomp_fun_ls_h_5_2 = (let rec _lh_singleDescend_LH_P2_1_4 = _lh_listcomp_fun_ls_h_5_1 in
                            (let rec _lh_singleDescend_LH_P2_0_4 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_5_1))) in
                              (fun _lh_listcomp_fun_ls_t_6_0 _lh_listcomp_fun_7_4 -> 
                                (if (_lh_singleDescend_LH_P2_0_4 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_4, (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_6_0)))
                                else
                                  (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_6_0))))) in
                            (fun _lh_listcomp_fun_7_5 -> 
                              ((_lh_listcomp_fun_ls_h_5_2 _lh_listcomp_fun_ls_t_5_9) _lh_listcomp_fun_7_5))))))))))
          else
            (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_4_1))))) in
      (let rec _lh_listcomp_fun_ls_h_5_3 = (`DL) in
        (fun _lh_listcomp_fun_7_6 _lh_possibleMoves_arg1_3_7 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_7) _lh_listcomp_fun_ls_h_5_3) then
            (let rec t_5_2 = (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_4_0) in
              (let rec h_3_6 = _lh_listcomp_fun_ls_h_5_3 in
                (fun f_2_5 -> 
                  (let rec _lh_listcomp_fun_ls_t_6_1 = ((map__d2 f_2_5) t_5_2) in
                    (let rec _lh_listcomp_fun_ls_h_5_4 = (f_2_5 h_3_6) in
                      (fun _lh_listcomp_fun_7_7 -> 
                        (let rec _lh_listcomp_fun_ls_t_6_2 = (_lh_listcomp_fun_7_7 _lh_listcomp_fun_ls_t_6_1) in
                          (let rec _lh_listcomp_fun_ls_h_5_5 = (let rec _lh_singleDescend_LH_P2_1_5 = _lh_listcomp_fun_ls_h_5_4 in
                            (let rec _lh_singleDescend_LH_P2_0_5 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_5_4))) in
                              (fun _lh_listcomp_fun_ls_t_6_3 _lh_listcomp_fun_7_8 -> 
                                (if (_lh_singleDescend_LH_P2_0_5 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_5, (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_6_3)))
                                else
                                  (_lh_listcomp_fun_7_8 _lh_listcomp_fun_ls_t_6_3))))) in
                            (fun _lh_listcomp_fun_7_9 -> 
                              ((_lh_listcomp_fun_ls_h_5_5 _lh_listcomp_fun_ls_t_6_2) _lh_listcomp_fun_7_9))))))))))
          else
            (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_4_0))))) in
      (let rec _lh_listcomp_fun_ls_h_5_6 = (`UR) in
        (fun _lh_listcomp_fun_8_0 _lh_possibleMoves_arg1_3_8 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_8) _lh_listcomp_fun_ls_h_5_6) then
            (let rec t_5_3 = (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_3_9) in
              (let rec h_3_7 = _lh_listcomp_fun_ls_h_5_6 in
                (fun f_2_6 -> 
                  (let rec _lh_listcomp_fun_ls_t_6_4 = ((map__d2 f_2_6) t_5_3) in
                    (let rec _lh_listcomp_fun_ls_h_5_7 = (f_2_6 h_3_7) in
                      (fun _lh_listcomp_fun_8_1 -> 
                        (let rec _lh_listcomp_fun_ls_t_6_5 = (_lh_listcomp_fun_8_1 _lh_listcomp_fun_ls_t_6_4) in
                          (let rec _lh_listcomp_fun_ls_h_5_8 = (let rec _lh_singleDescend_LH_P2_1_6 = _lh_listcomp_fun_ls_h_5_7 in
                            (let rec _lh_singleDescend_LH_P2_0_6 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_5_7))) in
                              (fun _lh_listcomp_fun_ls_t_6_6 _lh_listcomp_fun_8_2 -> 
                                (if (_lh_singleDescend_LH_P2_0_6 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_6, (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_6_6)))
                                else
                                  (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_6_6))))) in
                            (fun _lh_listcomp_fun_8_3 -> 
                              ((_lh_listcomp_fun_ls_h_5_8 _lh_listcomp_fun_ls_t_6_5) _lh_listcomp_fun_8_3))))))))))
          else
            (_lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_3_9))))) in
      (let rec _lh_listcomp_fun_ls_h_5_9 = (`UL) in
        (fun _lh_listcomp_fun_8_4 _lh_possibleMoves_arg1_3_9 -> 
          (if ((canMove__d3 _lh_possibleMoves_arg1_3_9) _lh_listcomp_fun_ls_h_5_9) then
            (let rec t_5_4 = (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_3_8) in
              (let rec h_3_8 = _lh_listcomp_fun_ls_h_5_9 in
                (fun f_2_7 -> 
                  (let rec _lh_listcomp_fun_ls_t_6_7 = ((map__d2 f_2_7) t_5_4) in
                    (let rec _lh_listcomp_fun_ls_h_6_0 = (f_2_7 h_3_8) in
                      (fun _lh_listcomp_fun_8_5 -> 
                        (let rec _lh_listcomp_fun_ls_t_6_8 = (_lh_listcomp_fun_8_5 _lh_listcomp_fun_ls_t_6_7) in
                          (let rec _lh_listcomp_fun_ls_h_6_1 = (let rec _lh_singleDescend_LH_P2_1_7 = _lh_listcomp_fun_ls_h_6_0 in
                            (let rec _lh_singleDescend_LH_P2_0_7 = (length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_6_0))) in
                              (fun _lh_listcomp_fun_ls_t_6_9 _lh_listcomp_fun_8_6 -> 
                                (if (_lh_singleDescend_LH_P2_0_7 = 1) then
                                  (`LH_C(_lh_singleDescend_LH_P2_1_7, (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_6_9)))
                                else
                                  (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_6_9))))) in
                            (fun _lh_listcomp_fun_8_7 -> 
                              ((_lh_listcomp_fun_ls_h_6_1 _lh_listcomp_fun_ls_t_6_8) _lh_listcomp_fun_8_7))))))))))
          else
            (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_3_8)))))))
and possibleMoves__d4 _lh_possibleMoves_arg1_0 =
  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    ((_lh_listcomp_fun_para_2 _lh_listcomp_fun_2) _lh_possibleMoves_arg1_0)) in
    (_lh_listcomp_fun_2 (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (let rec _lh_listcomp_fun_ls_t_8 = (let rec _lh_listcomp_fun_ls_t_9 = (fun _lh_listcomp_fun_3 _lh_possibleMoves_arg1_1 _lh_dummy_0 -> 
      0) in
      (let rec _lh_listcomp_fun_ls_h_2 = (`RD) in
        (fun _lh_listcomp_fun_4 _lh_possibleMoves_arg1_2 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_2) _lh_listcomp_fun_ls_h_2) then
            (let rec t_2 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_9) in
              (fun _lh_dummy_1 -> 
                (1 + (length__d5 t_2))))
          else
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_9))))) in
      (let rec _lh_listcomp_fun_ls_h_3 = (`RU) in
        (fun _lh_listcomp_fun_5 _lh_possibleMoves_arg1_3 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_3) _lh_listcomp_fun_ls_h_3) then
            (let rec t_3 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_8) in
              (fun _lh_dummy_2 -> 
                (1 + (length__d5 t_3))))
          else
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_8))))) in
      (let rec _lh_listcomp_fun_ls_h_4 = (`LD) in
        (fun _lh_listcomp_fun_6 _lh_possibleMoves_arg1_4 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_4) _lh_listcomp_fun_ls_h_4) then
            (let rec t_4 = (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_7) in
              (fun _lh_dummy_3 -> 
                (1 + (length__d5 t_4))))
          else
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_7))))) in
      (let rec _lh_listcomp_fun_ls_h_5 = (`LU) in
        (fun _lh_listcomp_fun_7 _lh_possibleMoves_arg1_5 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_5) _lh_listcomp_fun_ls_h_5) then
            (let rec t_5 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_6) in
              (fun _lh_dummy_4 -> 
                (1 + (length__d5 t_5))))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_6))))) in
      (let rec _lh_listcomp_fun_ls_h_6 = (`DR) in
        (fun _lh_listcomp_fun_8 _lh_possibleMoves_arg1_6 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_6) _lh_listcomp_fun_ls_h_6) then
            (let rec t_6 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_5) in
              (fun _lh_dummy_5 -> 
                (1 + (length__d5 t_6))))
          else
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_5))))) in
      (let rec _lh_listcomp_fun_ls_h_7 = (`DL) in
        (fun _lh_listcomp_fun_9 _lh_possibleMoves_arg1_7 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_7) _lh_listcomp_fun_ls_h_7) then
            (let rec t_7 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_4) in
              (fun _lh_dummy_6 -> 
                (1 + (length__d5 t_7))))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_4))))) in
      (let rec _lh_listcomp_fun_ls_h_8 = (`UR) in
        (fun _lh_listcomp_fun_1_0 _lh_possibleMoves_arg1_8 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_8) _lh_listcomp_fun_ls_h_8) then
            (let rec t_8 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_3) in
              (fun _lh_dummy_7 -> 
                (1 + (length__d5 t_8))))
          else
            (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_3))))) in
      (let rec _lh_listcomp_fun_ls_h_9 = (`UL) in
        (fun _lh_listcomp_fun_1_1 _lh_possibleMoves_arg1_9 -> 
          (if ((canMove__d4 _lh_possibleMoves_arg1_9) _lh_listcomp_fun_ls_h_9) then
            (let rec t_9 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_2) in
              (fun _lh_dummy_8 -> 
                (1 + (length__d5 t_9))))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_2)))))))
and printBoard__d0 _lh_printBoard_arg1_0 _lh_printBoard_arg2_0 _lh_printBoard_arg3_0 =
  (match _lh_printBoard_arg3_0 with
    | `LH_N -> 
      (if (_lh_printBoard_arg2_0 > (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) then
        (`LH_N)
      else
        (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
          ((mappend__d8 ((mappend__d9 (let rec t_3_8 = (fun ys_3_0 -> 
            ys_3_0) in
            (let rec h_2_2 = '*' in
              (fun ys_3_1 -> 
                (let rec t_3_9 = ((mappend__d9 t_3_8) ys_3_1) in
                  (let rec h_2_3 = h_2_2 in
                    (fun ys_3_2 -> 
                      (`LH_C(h_2_3, ((mappend__d8 t_3_9) ys_3_2)))))))))) ((spaces__d0 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard__d0 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
        else
          (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
            ((mappend__d1_d0 (let rec t_4_0 = (let rec t_4_1 = (fun ys_3_3 -> 
              ys_3_3) in
              (let rec h_2_4 = '|' in
                (fun ys_3_4 -> 
                  (`LH_C(h_2_4, ((mappend__d1_d0 t_4_1) ys_3_4)))))) in
              (let rec h_2_5 = '*' in
                (fun ys_3_5 -> 
                  (`LH_C(h_2_5, ((mappend__d1_d0 t_4_0) ys_3_5))))))) (((printBoard__d0 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
          else
            ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_printBoard_LH_C_0_0, _lh_printBoard_LH_C_1_0) -> 
      (match _lh_printBoard_LH_C_0_0 with
        | `LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0) -> 
          (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0)) then
            ((mappend__d1_d1 ((mappend__d1_d2 (string_of_int _lh_printBoard_LH_P2_1_0)) (let rec t_4_2 = (fun ys_3_6 -> 
              ys_3_6) in
              (let rec h_2_6 = '|' in
                (fun ys_3_7 -> 
                  (`LH_C(h_2_6, ((mappend__d1_d1 t_4_2) ys_3_7)))))))) (((printBoard__d0 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
          else
            (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0)) then
              ((mappend__d1_d3 ((mappend__d1_d4 (string_of_int _lh_printBoard_LH_P2_1_0)) ((spaces__d1 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) _lh_printBoard_LH_P2_1_0))) (((printBoard__d0 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
            else
              (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
                ((mappend__d1_d5 ((mappend__d1_d6 (let rec t_4_3 = (fun ys_3_8 -> 
                  ys_3_8) in
                  (let rec h_2_7 = '*' in
                    (fun ys_3_9 -> 
                      (let rec t_4_4 = ((mappend__d1_d6 t_4_3) ys_3_9) in
                        (let rec h_2_8 = h_2_7 in
                          (fun ys_4_0 -> 
                            (`LH_C(h_2_8, ((mappend__d1_d5 t_4_4) ys_4_0)))))))))) ((spaces__d2 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard__d0 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
              else
                (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
                  ((mappend__d1_d7 (let rec t_4_5 = (let rec t_4_6 = (fun ys_4_1 -> 
                    ys_4_1) in
                    (let rec h_2_9 = '|' in
                      (fun ys_4_2 -> 
                        (`LH_C(h_2_9, ((mappend__d1_d7 t_4_6) ys_4_2)))))) in
                    (let rec h_3_0 = '*' in
                      (fun ys_4_3 -> 
                        (`LH_C(h_3_0, ((mappend__d1_d7 t_4_5) ys_4_3))))))) (((printBoard__d0 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
                else
                  ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('-', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and printTour__d0 _lh_printTour_arg1_0 =
  let rec strToInt_0 = (fun _lh_strToInt_arg1_0 _lh_strToInt_arg2_0 -> 
    (match _lh_strToInt_arg2_0 with
      | `LH_N -> 
        _lh_strToInt_arg1_0
      | `LH_C(_lh_strToInt_LH_C_0_0, _lh_strToInt_LH_C_1_0) -> 
        ((strToInt_0 ((10 * _lh_strToInt_arg1_0) + ((int_of_char _lh_strToInt_LH_C_0_0) - (int_of_char '0')))) _lh_strToInt_LH_C_1_0)
      | _ -> 
        (failwith "error")))
  and pp_0 = (fun _lh_pp_arg1_0 -> 
    (_lh_pp_arg1_0 pp_0))
  in (let rec _lh_matchIdent_0 = ((map__d3 (strToInt_0 0)) _lh_printTour_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_printTour_LH_C_0_0, _lh_printTour_LH_C_1_0) -> 
        (match _lh_printTour_LH_C_1_0 with
          | `LH_C(_lh_printTour_LH_C_0_1, _lh_printTour_LH_C_1_1) -> 
            (match _lh_printTour_LH_C_1_1 with
              | `LH_N -> 
                (pp_0 ((take_lz__d0 _lh_printTour_LH_C_0_1) (((depthSearch__d0 (root__d0 _lh_printTour_LH_C_0_0)) grow__d0) isFinished__d0)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and quickSortIntChessSet__d0 _lh_quickSortIntChessSet_arg1_0 =
  (match _lh_quickSortIntChessSet_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntChessSet_LH_C_0_0, _lh_quickSortIntChessSet_LH_C_1_0) -> 
      ((mappend__d1 ((mappend__d2 (quickSortIntChessSet__d0 (let rec _lh_listcomp_fun_8_8 = (fun _lh_listcomp_fun_para_1_1 -> 
        (match _lh_listcomp_fun_para_1_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_2, _lh_listcomp_fun_ls_t_7_0) -> 
            (if ((intChessSetComp__d0 _lh_listcomp_fun_ls_h_6_2) _lh_quickSortIntChessSet_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_6_2, (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_7_0)))
            else
              (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_7_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_8 _lh_quickSortIntChessSet_LH_C_1_0)))) (let rec t_6_1 = (fun ys_5_3 -> 
        ys_5_3) in
        (let rec h_4_4 = _lh_quickSortIntChessSet_LH_C_0_0 in
          (fun ys_5_4 -> 
            (`LH_C(h_4_4, ((mappend__d1 t_6_1) ys_5_4)))))))) (quickSortIntChessSet__d0 (let rec _lh_listcomp_fun_8_9 = (fun _lh_listcomp_fun_para_1_2 -> 
        (match _lh_listcomp_fun_para_1_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_t_7_1) -> 
            (if (not ((intChessSetComp__d1 _lh_listcomp_fun_ls_h_6_3) _lh_quickSortIntChessSet_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_6_3, (_lh_listcomp_fun_8_9 _lh_listcomp_fun_ls_t_7_1)))
            else
              (_lh_listcomp_fun_8_9 _lh_listcomp_fun_ls_t_7_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_9 _lh_quickSortIntChessSet_LH_C_1_0))))
    | _ -> 
      (failwith "error"))
and quickSortIntInt__d0 _lh_quickSortIntInt_arg1_0 =
  (match _lh_quickSortIntInt_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntInt_LH_C_0_0, _lh_quickSortIntInt_LH_C_1_0) -> 
      ((mappend__d1_d8 ((mappend__d1_d9 (quickSortIntInt__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((intintComp__d1 _lh_listcomp_fun_ls_h_0) _lh_quickSortIntInt_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_quickSortIntInt_LH_C_1_0)))) (let rec t_1 = (fun ys_0 -> 
        ys_0) in
        (let rec h_1 = _lh_quickSortIntInt_LH_C_0_0 in
          (fun ys_1 -> 
            (`LH_C(h_1, ((mappend__d1_d8 t_1) ys_1)))))))) (quickSortIntInt__d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if (not ((intintComp__d0 _lh_listcomp_fun_ls_h_1) _lh_quickSortIntInt_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_quickSortIntInt_LH_C_1_0))))
    | _ -> 
      (failwith "error"))
and repeat__d0 x_0 =
  (lazy (let rec tx_1 = (repeat__d0 x_0) in
    (let rec hx_1 = x_0 in
      (fun hy_0 ty_0 -> 
        (let rec t_1_6 = ((zip_lz_nl__d0 tx_1) ty_0) in
          (let rec h_8 = (`LH_P2(hx_1, hy_0)) in
            (fun ys_1_4 -> 
              (`LH_C(h_8, ((mappend__d0 t_1_6) ys_1_4))))))))))
and repeat__d1 x_1 =
  (lazy (let rec tx_2 = (repeat__d1 x_1) in
    (let rec hx_2 = x_1 in
      (fun hy_1 ty_1 -> 
        (let rec t_2_8 = ((zip_lz_nl__d1 tx_2) ty_1) in
          (let rec h_1_2 = (`LH_P2(hx_2, hy_1)) in
            (fun ys_2_4 -> 
              (`LH_C(h_1_2, ((mappend__d7 t_2_8) ys_2_4))))))))))
and root__d0 _lh_root_arg1_0 =
  ((addAllFront__d1 ((zip_lz_nl__d1 (repeat__d1 (1 - (_lh_root_arg1_0 * _lh_root_arg1_0)))) (((zipWith__d0 startTour__d0) (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_4 -> 
    ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_3) _lh_root_arg1_0)) in
    (_lh_listcomp_fun_1_3 ((enumFromTo__d0 1) _lh_root_arg1_0)))) ((copy__d0 (_lh_root_arg1_0 * _lh_root_arg1_0)) _lh_root_arg1_0)))) createQueue__d0)
and showChessSet__d0 _lh_showChessSet_arg1_0 =
  (match _lh_showChessSet_arg1_0 with
    | `Board(_lh_showChessSet_Board_0_0, _lh_showChessSet_Board_1_0, _lh_showChessSet_Board_2_0, _lh_showChessSet_Board_3_0) -> 
      (let rec sortedTrail_0 = (quickSortIntInt__d0 (((assignMoveNo__d0 _lh_showChessSet_Board_3_0) _lh_showChessSet_Board_0_0) _lh_showChessSet_Board_1_0)) in
        (((printBoard__d0 _lh_showChessSet_Board_0_0) 1) sortedTrail_0))
    | _ -> 
      (failwith "error"))
and singleDescend__d0 _lh_singleDescend_arg1_0 =
  (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_9 -> 
    (_lh_listcomp_fun_para_9 _lh_listcomp_fun_5_1)) in
    (_lh_listcomp_fun_5_1 (descAndNo__d1 _lh_singleDescend_arg1_0)))
and spaces__d0 _lh_spaces_arg1_0 _lh_spaces_arg2_0 =
  (let rec logTen_0 = (fun _lh_logTen_arg1_0 -> 
    (match _lh_logTen_arg1_0 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_0 (_lh_logTen_arg1_0 / 10))))) in
    ((copy__d1 (((logTen_0 _lh_spaces_arg1_0) - (logTen_0 _lh_spaces_arg2_0)) + 1)) ' '))
and spaces__d1 _lh_spaces_arg1_2 _lh_spaces_arg2_2 =
  (let rec logTen_2 = (fun _lh_logTen_arg1_2 -> 
    (match _lh_logTen_arg1_2 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_2 (_lh_logTen_arg1_2 / 10))))) in
    ((copy__d2 (((logTen_2 _lh_spaces_arg1_2) - (logTen_2 _lh_spaces_arg2_2)) + 1)) ' '))
and spaces__d2 _lh_spaces_arg1_1 _lh_spaces_arg2_1 =
  (let rec logTen_1 = (fun _lh_logTen_arg1_1 -> 
    (match _lh_logTen_arg1_1 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_1 (_lh_logTen_arg1_1 / 10))))) in
    ((copy__d3 (((logTen_1 _lh_spaces_arg1_1) - (logTen_1 _lh_spaces_arg2_1)) + 1)) ' '))
and startTour__d0 _lh_startTour_arg1_0 _lh_startTour_arg2_0 =
  (if ((_lh_startTour_arg2_0 mod 2) = 0) then
    ((createBoard__d0 _lh_startTour_arg2_0) _lh_startTour_arg1_0)
  else
    ((failwith "error") (`LH_C('T', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and testKnights_nofib__d0 _lh_testKnights_nofib_arg1_0 =
  let rec all_digits_0 = (fun _lh_all_digits_arg1_0 -> 
    (((foldr__d0 (fun _lh_funcomp_x_0 -> 
      ((fun a_0 b_0 -> 
        (a_0 && b_0)) (myIsDigit__d0 _lh_funcomp_x_0)))) true) _lh_all_digits_arg1_0))
  and argsOk_0 = (fun _lh_argsOk_arg1_0 -> 
    (((length__d0 _lh_argsOk_arg1_0) = 2) && (((foldr__d1 (fun _lh_funcomp_x_1 -> 
      ((fun a_1 b_1 -> 
        (a_1 && b_1)) (all_digits_0 _lh_funcomp_x_1)))) true) _lh_argsOk_arg1_0)))
  and usageString_0 = (`LH_C('|', (`LH_C('U', (`LH_C('s', (`LH_C('a', (`LH_C('g', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('<', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C('>', (`LH_C(' ', (`LH_C('<', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('>', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  in (if (argsOk_0 _lh_testKnights_nofib_arg1_0) then
    (length__d1 (printTour__d0 _lh_testKnights_nofib_arg1_0))
  else
    ((failwith "error") usageString_0))
and tourFinished__d0 _lh_tourFinished_arg1_0 =
  (let rec sze_8 = (sizeBoard__d7 _lh_tourFinished_arg1_0) in
    (((noPieces__d0 _lh_tourFinished_arg1_0) = (sze_8 * sze_8)) && (canJumpFirst__d1 _lh_tourFinished_arg1_0)));;
end;;

