

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec addPiece__d0 _lh_addPiece_arg1_2 _lh_addPiece_arg2_2 =
  (match _lh_addPiece_arg2_2 with
    | `Board(_lh_addPiece_Board_0_2, _lh_addPiece_Board_1_2, _lh_addPiece_Board_2_2, _lh_addPiece_Board_3_2) -> 
      (`Board(_lh_addPiece_Board_0_2, (_lh_addPiece_Board_1_2 + 1), _lh_addPiece_Board_2_2, (`LH_C(_lh_addPiece_arg1_2, _lh_addPiece_Board_3_2))))
    | _ -> 
      (failwith "error"));;
let rec addPiece__d1 _lh_addPiece_arg1_1 _lh_addPiece_arg2_1 =
  (match _lh_addPiece_arg2_1 with
    | `Board(_lh_addPiece_Board_0_1, _lh_addPiece_Board_1_1, _lh_addPiece_Board_2_1, _lh_addPiece_Board_3_1) -> 
      (`Board(_lh_addPiece_Board_0_1, (_lh_addPiece_Board_1_1 + 1), _lh_addPiece_Board_2_1, (`LH_C(_lh_addPiece_arg1_1, _lh_addPiece_Board_3_1))))
    | _ -> 
      (failwith "error"));;
let rec addPiece__d2 _lh_addPiece_arg1_3 _lh_addPiece_arg2_3 =
  (match _lh_addPiece_arg2_3 with
    | `Board(_lh_addPiece_Board_0_3, _lh_addPiece_Board_1_3, _lh_addPiece_Board_2_3, _lh_addPiece_Board_3_3) -> 
      (`Board(_lh_addPiece_Board_0_3, (_lh_addPiece_Board_1_3 + 1), _lh_addPiece_Board_2_3, (`LH_C(_lh_addPiece_arg1_3, _lh_addPiece_Board_3_3))))
    | _ -> 
      (failwith "error"));;
let rec assignMoveNo__d0 _lh_assignMoveNo_arg1_1 _lh_assignMoveNo_arg2_1 _lh_assignMoveNo_arg3_1 =
  (match _lh_assignMoveNo_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_assignMoveNo_LH_C_0_1, _lh_assignMoveNo_LH_C_1_1) -> 
      (match _lh_assignMoveNo_LH_C_0_1 with
        | `LH_P2(_lh_assignMoveNo_LH_P2_0_1, _lh_assignMoveNo_LH_P2_1_1) -> 
          (`LH_C((`LH_P2((((_lh_assignMoveNo_LH_P2_1_1 - 1) * _lh_assignMoveNo_arg2_1) + _lh_assignMoveNo_LH_P2_0_1), _lh_assignMoveNo_arg3_1)), (((assignMoveNo__d0 _lh_assignMoveNo_LH_C_1_1) _lh_assignMoveNo_arg2_1) (_lh_assignMoveNo_arg3_1 - 1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec copy__d1 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_4, ((copy__d1 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4))));;
let rec copy__d2 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_2, ((copy__d2 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2))));;
let rec copy__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_3, ((copy__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3))));;
let rec createBoard__d0 _lh_createBoard_arg1_1 _lh_createBoard_arg2_1 =
  (`Board(_lh_createBoard_arg1_1, 1, _lh_createBoard_arg2_1, (`LH_C(_lh_createBoard_arg2_1, (`LH_N)))));;
let rec createQueue__d0 =
  (`LH_N);;
let rec enumFromTo__d0 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo__d0 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_8 b_5 =
  (if (a_8 <= b_5) then
    (`LH_C(a_8, ((enumFromTo__d1 (a_8 + 1)) b_5)))
  else
    (`LH_N));;
let rec firstPiece__d0 _lh_firstPiece_arg1_3 =
  (match _lh_firstPiece_arg1_3 with
    | `Board(_lh_firstPiece_Board_0_3, _lh_firstPiece_Board_1_3, _lh_firstPiece_Board_2_3, _lh_firstPiece_Board_3_3) -> 
      _lh_firstPiece_Board_2_3
    | _ -> 
      (failwith "error"));;
let rec firstPiece__d1 _lh_firstPiece_arg1_1 =
  (match _lh_firstPiece_arg1_1 with
    | `Board(_lh_firstPiece_Board_0_1, _lh_firstPiece_Board_1_1, _lh_firstPiece_Board_2_1, _lh_firstPiece_Board_3_1) -> 
      _lh_firstPiece_Board_2_1
    | _ -> 
      (failwith "error"));;
let rec firstPiece__d2 _lh_firstPiece_arg1_2 =
  (match _lh_firstPiece_arg1_2 with
    | `Board(_lh_firstPiece_Board_0_2, _lh_firstPiece_Board_1_2, _lh_firstPiece_Board_2_2, _lh_firstPiece_Board_3_2) -> 
      _lh_firstPiece_Board_2_2
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1_7 i_4 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_9, t_5_1) -> 
      ((f_1_7 h_4_9) (((foldr__d0 f_1_7) i_4) t_5_1))
    | `LH_N -> 
      i_4);;
let rec foldr__d1 f_1_5 i_3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_0, t_3_2) -> 
      ((f_1_5 h_3_0) (((foldr__d1 f_1_5) i_3) t_3_2))
    | `LH_N -> 
      i_3);;
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
let rec inList__d2 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList__d2 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d3 _lh_inList_arg1_6 _lh_inList_arg2_6 =
  (match _lh_inList_arg2_6 with
    | `LH_C(_lh_inList_LH_C_0_6, _lh_inList_LH_C_1_6) -> 
      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_6) then
        true
      else
        ((inList__d3 _lh_inList_arg1_6) _lh_inList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d4 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d4 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d5 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d5 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d6 _lh_inList_arg1_7 _lh_inList_arg2_7 =
  (match _lh_inList_arg2_7 with
    | `LH_C(_lh_inList_LH_C_0_7, _lh_inList_LH_C_1_7) -> 
      (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_7) then
        true
      else
        ((inList__d6 _lh_inList_arg1_7) _lh_inList_LH_C_1_7))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inquireFront__d0 _lh_inquireFront_arg1_1 =
  (match _lh_inquireFront_arg1_1 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_1, _lh_inquireFront_LH_C_1_1) -> 
      _lh_inquireFront_LH_C_0_1
    | _ -> 
      (failwith "error"));;
let rec inquireFront__d1 _lh_inquireFront_arg1_2 =
  (match _lh_inquireFront_arg1_2 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_2, _lh_inquireFront_LH_C_1_2) -> 
      _lh_inquireFront_LH_C_0_2
    | _ -> 
      (failwith "error"));;
let rec inquireFront__d2 _lh_inquireFront_arg1_3 =
  (match _lh_inquireFront_arg1_3 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_3, _lh_inquireFront_LH_C_1_3) -> 
      _lh_inquireFront_LH_C_0_3
    | _ -> 
      (failwith "error"));;
let rec intChessSetComp__d0 _lh_intChessSetComp_arg1_1 _lh_intChessSetComp_arg2_1 =
  (match _lh_intChessSetComp_arg1_1 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_2, _lh_intChessSetComp_LH_P2_1_2) -> 
      (match _lh_intChessSetComp_arg2_1 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_3, _lh_intChessSetComp_LH_P2_1_3) -> 
          (_lh_intChessSetComp_LH_P2_0_2 < _lh_intChessSetComp_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intChessSetComp__d1 _lh_intChessSetComp_arg1_2 _lh_intChessSetComp_arg2_2 =
  (match _lh_intChessSetComp_arg1_2 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_4, _lh_intChessSetComp_LH_P2_1_4) -> 
      (match _lh_intChessSetComp_arg2_2 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_5, _lh_intChessSetComp_LH_P2_1_5) -> 
          (_lh_intChessSetComp_LH_P2_0_4 < _lh_intChessSetComp_LH_P2_0_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intintComp__d0 _lh_intintComp_arg1_2 _lh_intintComp_arg2_2 =
  (match _lh_intintComp_arg1_2 with
    | `LH_P2(_lh_intintComp_LH_P2_0_4, _lh_intintComp_LH_P2_1_4) -> 
      (match _lh_intintComp_arg2_2 with
        | `LH_P2(_lh_intintComp_LH_P2_0_5, _lh_intintComp_LH_P2_1_5) -> 
          ((_lh_intintComp_LH_P2_0_4 < _lh_intintComp_LH_P2_0_5) || ((_lh_intintComp_LH_P2_0_4 = _lh_intintComp_LH_P2_0_5) && (_lh_intintComp_LH_P2_1_4 < _lh_intintComp_LH_P2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intintComp__d1 _lh_intintComp_arg1_1 _lh_intintComp_arg2_1 =
  (match _lh_intintComp_arg1_1 with
    | `LH_P2(_lh_intintComp_LH_P2_0_2, _lh_intintComp_LH_P2_1_2) -> 
      (match _lh_intintComp_arg2_1 with
        | `LH_P2(_lh_intintComp_LH_P2_0_3, _lh_intintComp_LH_P2_1_3) -> 
          ((_lh_intintComp_LH_P2_0_2 < _lh_intintComp_LH_P2_0_3) || ((_lh_intintComp_LH_P2_0_2 = _lh_intintComp_LH_P2_0_3) && (_lh_intintComp_LH_P2_1_2 < _lh_intintComp_LH_P2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d0 _lh_lastPiece_arg1_1 =
  (match _lh_lastPiece_arg1_1 with
    | `Board(_lh_lastPiece_Board_0_1, _lh_lastPiece_Board_1_1, _lh_lastPiece_Board_2_1, _lh_lastPiece_Board_3_1) -> 
      (match _lh_lastPiece_Board_3_1 with
        | `LH_C(_lh_lastPiece_LH_C_0_1, _lh_lastPiece_LH_C_1_1) -> 
          _lh_lastPiece_LH_C_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d1 _lh_lastPiece_arg1_4 =
  (match _lh_lastPiece_arg1_4 with
    | `Board(_lh_lastPiece_Board_0_4, _lh_lastPiece_Board_1_4, _lh_lastPiece_Board_2_4, _lh_lastPiece_Board_3_4) -> 
      (match _lh_lastPiece_Board_3_4 with
        | `LH_C(_lh_lastPiece_LH_C_0_4, _lh_lastPiece_LH_C_1_4) -> 
          _lh_lastPiece_LH_C_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d2 _lh_lastPiece_arg1_7 =
  (match _lh_lastPiece_arg1_7 with
    | `Board(_lh_lastPiece_Board_0_7, _lh_lastPiece_Board_1_7, _lh_lastPiece_Board_2_7, _lh_lastPiece_Board_3_7) -> 
      (match _lh_lastPiece_Board_3_7 with
        | `LH_C(_lh_lastPiece_LH_C_0_7, _lh_lastPiece_LH_C_1_7) -> 
          _lh_lastPiece_LH_C_0_7
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
let rec lastPiece__d4 _lh_lastPiece_arg1_6 =
  (match _lh_lastPiece_arg1_6 with
    | `Board(_lh_lastPiece_Board_0_6, _lh_lastPiece_Board_1_6, _lh_lastPiece_Board_2_6, _lh_lastPiece_Board_3_6) -> 
      (match _lh_lastPiece_Board_3_6 with
        | `LH_C(_lh_lastPiece_LH_C_0_6, _lh_lastPiece_LH_C_1_6) -> 
          _lh_lastPiece_LH_C_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d5 _lh_lastPiece_arg1_2 =
  (match _lh_lastPiece_arg1_2 with
    | `Board(_lh_lastPiece_Board_0_2, _lh_lastPiece_Board_1_2, _lh_lastPiece_Board_2_2, _lh_lastPiece_Board_3_2) -> 
      (match _lh_lastPiece_Board_3_2 with
        | `LH_C(_lh_lastPiece_LH_C_0_2, _lh_lastPiece_LH_C_1_2) -> 
          _lh_lastPiece_LH_C_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lastPiece__d6 _lh_lastPiece_arg1_5 =
  (match _lh_lastPiece_arg1_5 with
    | `Board(_lh_lastPiece_Board_0_5, _lh_lastPiece_Board_1_5, _lh_lastPiece_Board_2_5, _lh_lastPiece_Board_3_5) -> 
      (match _lh_lastPiece_Board_3_5 with
        | `LH_C(_lh_lastPiece_LH_C_0_5, _lh_lastPiece_LH_C_1_5) -> 
          _lh_lastPiece_LH_C_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_4, t_3_6) -> 
      (1 + (length__d0 t_3_6))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_1, t_4_3) -> 
      (1 + (length__d1 t_4_3))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_7, t_3_9) -> 
      (1 + (length__d2 t_3_9))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_3, t_3_5) -> 
      (1 + (length__d3 t_3_5))
    | `LH_N -> 
      0);;
let rec length__d4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d4 t_2_9))
    | `LH_N -> 
      0);;
let rec length__d5 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_9, t_4_1) -> 
      (1 + (length__d5 t_4_1))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_6 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C((f_1_6 h_4_0), ((map__d0 f_1_6) t_4_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_3 h_2_9), ((map__d1 f_1_3) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C((f_1_2 h_2_6), ((map__d2 f_1_2) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_8 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C((f_1_8 h_5_1), ((map__d3 f_1_8) t_5_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d0 t_4_0) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d1 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C(h_4_4, ((mappend__d1 t_4_6) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d1_d0 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d1_d0 t_4_4) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d1_d1 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_3, t_4_5) -> 
      (`LH_C(h_4_3, ((mappend__d1_d1 t_4_5) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d1_d2 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d1_d2 t_2_5) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1_d3 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d1_d3 t_2_6) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1_d4 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C(h_4_6, ((mappend__d1_d4 t_4_8) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d1_d5 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d1_d5 t_3_0) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1_d6 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend__d1_d6 t_3_8) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d7 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend__d1_d7 t_4_9) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d1_d8 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d1_d8 t_3_3) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d1_d9 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1_d9 t_2_4) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d2 t_5_0) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d3 t_2_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d4 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d4 t_5_4) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d5 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_5_0, t_5_2) -> 
      (`LH_C(h_5_0, ((mappend__d5 t_5_2) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d6 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend__d6 t_3_7) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d7 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d7 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d8 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d8 t_4_7) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d9 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d9 t_3_4) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec move__d0 _lh_move_arg1_3 _lh_move_arg2_3 =
  (match _lh_move_arg1_3 with
    | `UL -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_4, _lh_move_LH_P2_1_2_4) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_4 - 1), (_lh_move_LH_P2_1_2_4 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_5, _lh_move_LH_P2_1_2_5) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_5 + 1), (_lh_move_LH_P2_1_2_5 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_6, _lh_move_LH_P2_1_2_6) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_6 - 1), (_lh_move_LH_P2_1_2_6 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_7, _lh_move_LH_P2_1_2_7) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_7 + 1), (_lh_move_LH_P2_1_2_7 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_8, _lh_move_LH_P2_1_2_8) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_8 - 2), (_lh_move_LH_P2_1_2_8 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_2_9, _lh_move_LH_P2_1_2_9) -> 
          (`LH_P2((_lh_move_LH_P2_0_2_9 - 2), (_lh_move_LH_P2_1_2_9 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_3_0, _lh_move_LH_P2_1_3_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_0 + 2), (_lh_move_LH_P2_1_3_0 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_3 with
        | `LH_P2(_lh_move_LH_P2_0_3_1, _lh_move_LH_P2_1_3_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_1 + 2), (_lh_move_LH_P2_1_3_1 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move__d1 _lh_move_arg1_1 _lh_move_arg2_1 =
  (match _lh_move_arg1_1 with
    | `UL -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_8, _lh_move_LH_P2_1_8) -> 
          (`LH_P2((_lh_move_LH_P2_0_8 - 1), (_lh_move_LH_P2_1_8 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_9, _lh_move_LH_P2_1_9) -> 
          (`LH_P2((_lh_move_LH_P2_0_9 + 1), (_lh_move_LH_P2_1_9 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_0, _lh_move_LH_P2_1_1_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_0 - 1), (_lh_move_LH_P2_1_1_0 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_1, _lh_move_LH_P2_1_1_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_1 + 1), (_lh_move_LH_P2_1_1_1 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_2, _lh_move_LH_P2_1_1_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_2 - 2), (_lh_move_LH_P2_1_1_2 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_3, _lh_move_LH_P2_1_1_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_3 - 2), (_lh_move_LH_P2_1_1_3 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_4, _lh_move_LH_P2_1_1_4) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_4 + 2), (_lh_move_LH_P2_1_1_4 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_1 with
        | `LH_P2(_lh_move_LH_P2_0_1_5, _lh_move_LH_P2_1_1_5) -> 
          (`LH_P2((_lh_move_LH_P2_0_1_5 + 2), (_lh_move_LH_P2_1_1_5 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move__d2 _lh_move_arg1_4 _lh_move_arg2_4 =
  (match _lh_move_arg1_4 with
    | `UL -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_2, _lh_move_LH_P2_1_3_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_2 - 1), (_lh_move_LH_P2_1_3_2 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_3, _lh_move_LH_P2_1_3_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_3 + 1), (_lh_move_LH_P2_1_3_3 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_4, _lh_move_LH_P2_1_3_4) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_4 - 1), (_lh_move_LH_P2_1_3_4 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_5, _lh_move_LH_P2_1_3_5) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_5 + 1), (_lh_move_LH_P2_1_3_5 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_6, _lh_move_LH_P2_1_3_6) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_6 - 2), (_lh_move_LH_P2_1_3_6 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_7, _lh_move_LH_P2_1_3_7) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_7 - 2), (_lh_move_LH_P2_1_3_7 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_8, _lh_move_LH_P2_1_3_8) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_8 + 2), (_lh_move_LH_P2_1_3_8 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_4 with
        | `LH_P2(_lh_move_LH_P2_0_3_9, _lh_move_LH_P2_1_3_9) -> 
          (`LH_P2((_lh_move_LH_P2_0_3_9 + 2), (_lh_move_LH_P2_1_3_9 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move__d3 _lh_move_arg1_6 _lh_move_arg2_6 =
  (match _lh_move_arg1_6 with
    | `UL -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_4_8, _lh_move_LH_P2_1_4_8) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_8 - 1), (_lh_move_LH_P2_1_4_8 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_4_9, _lh_move_LH_P2_1_4_9) -> 
          (`LH_P2((_lh_move_LH_P2_0_4_9 + 1), (_lh_move_LH_P2_1_4_9 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_0, _lh_move_LH_P2_1_5_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_0 - 1), (_lh_move_LH_P2_1_5_0 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_1, _lh_move_LH_P2_1_5_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_1 + 1), (_lh_move_LH_P2_1_5_1 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_2, _lh_move_LH_P2_1_5_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_2 - 2), (_lh_move_LH_P2_1_5_2 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_3, _lh_move_LH_P2_1_5_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_3 - 2), (_lh_move_LH_P2_1_5_3 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_4, _lh_move_LH_P2_1_5_4) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_4 + 2), (_lh_move_LH_P2_1_5_4 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_6 with
        | `LH_P2(_lh_move_LH_P2_0_5_5, _lh_move_LH_P2_1_5_5) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_5 + 2), (_lh_move_LH_P2_1_5_5 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move__d4 _lh_move_arg1_7 _lh_move_arg2_7 =
  (match _lh_move_arg1_7 with
    | `UL -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_5_6, _lh_move_LH_P2_1_5_6) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_6 - 1), (_lh_move_LH_P2_1_5_6 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_5_7, _lh_move_LH_P2_1_5_7) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_7 + 1), (_lh_move_LH_P2_1_5_7 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_5_8, _lh_move_LH_P2_1_5_8) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_8 - 1), (_lh_move_LH_P2_1_5_8 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_5_9, _lh_move_LH_P2_1_5_9) -> 
          (`LH_P2((_lh_move_LH_P2_0_5_9 + 1), (_lh_move_LH_P2_1_5_9 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_6_0, _lh_move_LH_P2_1_6_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_6_0 - 2), (_lh_move_LH_P2_1_6_0 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_6_1, _lh_move_LH_P2_1_6_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_6_1 - 2), (_lh_move_LH_P2_1_6_1 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_6_2, _lh_move_LH_P2_1_6_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_6_2 + 2), (_lh_move_LH_P2_1_6_2 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_7 with
        | `LH_P2(_lh_move_LH_P2_0_6_3, _lh_move_LH_P2_1_6_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_6_3 + 2), (_lh_move_LH_P2_1_6_3 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move__d5 _lh_move_arg1_2 _lh_move_arg2_2 =
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
let rec move__d6 _lh_move_arg1_5 _lh_move_arg2_5 =
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
let rec myInit__d0 _lh_myInit_arg1_4 =
  (match _lh_myInit_arg1_4 with
    | `LH_C(_lh_myInit_LH_C_0_4, _lh_myInit_LH_C_1_4) -> 
      (match _lh_myInit_LH_C_1_4 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_4, (myInit__d0 _lh_myInit_LH_C_1_4))))
    | _ -> 
      (failwith "error"));;
let rec myInit__d1 _lh_myInit_arg1_2 =
  (match _lh_myInit_arg1_2 with
    | `LH_C(_lh_myInit_LH_C_0_2, _lh_myInit_LH_C_1_2) -> 
      (match _lh_myInit_LH_C_1_2 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_2, (myInit__d1 _lh_myInit_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec myInit__d2 _lh_myInit_arg1_3 =
  (match _lh_myInit_arg1_3 with
    | `LH_C(_lh_myInit_LH_C_0_3, _lh_myInit_LH_C_1_3) -> 
      (match _lh_myInit_LH_C_1_3 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_3, (myInit__d2 _lh_myInit_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec myInit__d3 _lh_myInit_arg1_1 =
  (match _lh_myInit_arg1_1 with
    | `LH_C(_lh_myInit_LH_C_0_1, _lh_myInit_LH_C_1_1) -> 
      (match _lh_myInit_LH_C_1_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_1, (myInit__d3 _lh_myInit_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec myIsDigit__d0 _lh_myIsDigit_arg1_1 =
  (let rec n_6 = (int_of_char _lh_myIsDigit_arg1_1) in
    ((n_6 >= 48) && (n_6 <= 57)));;
let rec myLast__d0 _lh_myLast_arg1_2 =
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
let rec myLast__d1 _lh_myLast_arg1_3 =
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
let rec myLast__d2 _lh_myLast_arg1_1 =
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
let rec myLast__d3 _lh_myLast_arg1_4 =
  (match _lh_myLast_arg1_4 with
    | `LH_N -> 
      (`LH_P2((0 - 100), (0 - 100)))
    | `LH_C(_lh_myLast_LH_C_0_4, _lh_myLast_LH_C_1_4) -> 
      (let rec go_4 = (fun _lh_go_arg1_4 _lh_go_arg2_4 -> 
        (match _lh_go_arg2_4 with
          | `LH_N -> 
            _lh_go_arg1_4
          | `LH_C(_lh_go_LH_C_0_4, _lh_go_LH_C_1_4) -> 
            ((go_4 _lh_go_LH_C_0_4) _lh_go_LH_C_1_4)
          | _ -> 
            (failwith "error"))) in
        ((go_4 _lh_myLast_LH_C_0_4) _lh_myLast_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec mySnd__d0 _lh_mySnd_arg1_1 =
  (match _lh_mySnd_arg1_1 with
    | `LH_P2(_lh_mySnd_LH_P2_0_1, _lh_mySnd_LH_P2_1_1) -> 
      _lh_mySnd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec noPieces__d0 _lh_noPieces_arg1_1 =
  (match _lh_noPieces_arg1_1 with
    | `Board(_lh_noPieces_Board_0_1, _lh_noPieces_Board_1_1, _lh_noPieces_Board_2_1, _lh_noPieces_Board_3_1) -> 
      _lh_noPieces_Board_1_1
    | _ -> 
      (failwith "error"));;
let rec removeFront__d0 _lh_removeFront_arg1_2 =
  (match _lh_removeFront_arg1_2 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_2, _lh_removeFront_LH_C_1_2) -> 
      _lh_removeFront_LH_C_1_2
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
let rec repeat__d0 x_3 =
  (lazy (`LH_C(x_3, (repeat__d0 x_3))));;
let rec repeat__d1 x_2 =
  (lazy (`LH_C(x_2, (repeat__d1 x_2))));;
let rec sizeBoard__d0 _lh_sizeBoard_arg1_8 =
  (match _lh_sizeBoard_arg1_8 with
    | `Board(_lh_sizeBoard_Board_0_8, _lh_sizeBoard_Board_1_8, _lh_sizeBoard_Board_2_8, _lh_sizeBoard_Board_3_8) -> 
      _lh_sizeBoard_Board_0_8
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d1 _lh_sizeBoard_arg1_4 =
  (match _lh_sizeBoard_arg1_4 with
    | `Board(_lh_sizeBoard_Board_0_4, _lh_sizeBoard_Board_1_4, _lh_sizeBoard_Board_2_4, _lh_sizeBoard_Board_3_4) -> 
      _lh_sizeBoard_Board_0_4
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d2 _lh_sizeBoard_arg1_1 =
  (match _lh_sizeBoard_arg1_1 with
    | `Board(_lh_sizeBoard_Board_0_1, _lh_sizeBoard_Board_1_1, _lh_sizeBoard_Board_2_1, _lh_sizeBoard_Board_3_1) -> 
      _lh_sizeBoard_Board_0_1
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d3 _lh_sizeBoard_arg1_2 =
  (match _lh_sizeBoard_arg1_2 with
    | `Board(_lh_sizeBoard_Board_0_2, _lh_sizeBoard_Board_1_2, _lh_sizeBoard_Board_2_2, _lh_sizeBoard_Board_3_2) -> 
      _lh_sizeBoard_Board_0_2
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d4 _lh_sizeBoard_arg1_5 =
  (match _lh_sizeBoard_arg1_5 with
    | `Board(_lh_sizeBoard_Board_0_5, _lh_sizeBoard_Board_1_5, _lh_sizeBoard_Board_2_5, _lh_sizeBoard_Board_3_5) -> 
      _lh_sizeBoard_Board_0_5
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d5 _lh_sizeBoard_arg1_6 =
  (match _lh_sizeBoard_arg1_6 with
    | `Board(_lh_sizeBoard_Board_0_6, _lh_sizeBoard_Board_1_6, _lh_sizeBoard_Board_2_6, _lh_sizeBoard_Board_3_6) -> 
      _lh_sizeBoard_Board_0_6
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d6 _lh_sizeBoard_arg1_3 =
  (match _lh_sizeBoard_arg1_3 with
    | `Board(_lh_sizeBoard_Board_0_3, _lh_sizeBoard_Board_1_3, _lh_sizeBoard_Board_2_3, _lh_sizeBoard_Board_3_3) -> 
      _lh_sizeBoard_Board_0_3
    | _ -> 
      (failwith "error"));;
let rec sizeBoard__d7 _lh_sizeBoard_arg1_7 =
  (match _lh_sizeBoard_arg1_7 with
    | `Board(_lh_sizeBoard_Board_0_7, _lh_sizeBoard_Board_1_7, _lh_sizeBoard_Board_2_7, _lh_sizeBoard_Board_3_7) -> 
      _lh_sizeBoard_Board_0_7
    | _ -> 
      (failwith "error"));;
let rec take_lz__d0 n_5 ls_1_9 =
  (if (n_5 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_5, t_2_7) -> 
        (`LH_C(h_2_5, ((take_lz__d0 (n_5 - 1)) t_2_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zipWith__d0 f_1_4 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_1_6 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_4 hx_9) hy_9), (((zipWith__d0 f_1_4) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl__d0 xs_1_0 ys_1_0 =
  (match ys_1_0 with
    | `LH_C(hy_8, ty_8) -> 
      (match (Lazy.force xs_1_0) with
        | `LH_C(hx_8, tx_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip_lz_nl__d0 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl__d1 xs_2_3 ys_2_3 =
  (match ys_2_3 with
    | `LH_C(hy_1_0, ty_1_0) -> 
      (match (Lazy.force xs_2_3) with
        | `LH_C(hx_1_0, tx_1_0) -> 
          (`LH_C((`LH_P2(hx_1_0, hy_1_0)), ((zip_lz_nl__d1 tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec addAllFront__d0 _lh_addAllFront_arg1_2 _lh_addAllFront_arg2_2 =
  ((mappend__d0 _lh_addAllFront_arg1_2) _lh_addAllFront_arg2_2)
and addAllFront__d1 _lh_addAllFront_arg1_1 _lh_addAllFront_arg2_1 =
  ((mappend__d7 _lh_addAllFront_arg1_1) _lh_addAllFront_arg2_1)
and allDescend__d0 _lh_allDescend_arg1_1 =
  ((map__d0 (moveKnight__d0 _lh_allDescend_arg1_1)) (possibleMoves__d1 _lh_allDescend_arg1_1))
and allDescend__d1 _lh_allDescend_arg1_2 =
  ((map__d2 (moveKnight__d1 _lh_allDescend_arg1_2)) (possibleMoves__d3 _lh_allDescend_arg1_2))
and canJumpFirst__d0 _lh_canJumpFirst_arg1_1 =
  ((canMoveTo__d0 (firstPiece__d0 _lh_canJumpFirst_arg1_1)) (deleteFirst__d0 _lh_canJumpFirst_arg1_1))
and canJumpFirst__d1 _lh_canJumpFirst_arg1_2 =
  ((canMoveTo__d6 (firstPiece__d2 _lh_canJumpFirst_arg1_2)) (deleteFirst__d3 _lh_canJumpFirst_arg1_2))
and canMoveTo__d0 _lh_canMoveTo_arg1_4 _lh_canMoveTo_arg2_4 =
  (match _lh_canMoveTo_arg1_4 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_4, _lh_canMoveTo_LH_P2_1_4) -> 
      (let rec sze_6 = (sizeBoard__d0 _lh_canMoveTo_arg2_4) in
        (((((_lh_canMoveTo_LH_P2_0_4 >= 1) && (_lh_canMoveTo_LH_P2_0_4 <= sze_6)) && (_lh_canMoveTo_LH_P2_1_4 >= 1)) && (_lh_canMoveTo_LH_P2_1_4 <= sze_6)) && ((isSquareFree__d0 (`LH_P2(_lh_canMoveTo_LH_P2_0_4, _lh_canMoveTo_LH_P2_1_4))) _lh_canMoveTo_arg2_4)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d1 _lh_canMoveTo_arg1_2 _lh_canMoveTo_arg2_2 =
  (match _lh_canMoveTo_arg1_2 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_2, _lh_canMoveTo_LH_P2_1_2) -> 
      (let rec sze_3 = (sizeBoard__d1 _lh_canMoveTo_arg2_2) in
        (((((_lh_canMoveTo_LH_P2_0_2 >= 1) && (_lh_canMoveTo_LH_P2_0_2 <= sze_3)) && (_lh_canMoveTo_LH_P2_1_2 >= 1)) && (_lh_canMoveTo_LH_P2_1_2 <= sze_3)) && ((isSquareFree__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_2, _lh_canMoveTo_LH_P2_1_2))) _lh_canMoveTo_arg2_2)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d2 _lh_canMoveTo_arg1_6 _lh_canMoveTo_arg2_6 =
  (match _lh_canMoveTo_arg1_6 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_6, _lh_canMoveTo_LH_P2_1_6) -> 
      (let rec sze_8 = (sizeBoard__d2 _lh_canMoveTo_arg2_6) in
        (((((_lh_canMoveTo_LH_P2_0_6 >= 1) && (_lh_canMoveTo_LH_P2_0_6 <= sze_8)) && (_lh_canMoveTo_LH_P2_1_6 >= 1)) && (_lh_canMoveTo_LH_P2_1_6 <= sze_8)) && ((isSquareFree__d2 (`LH_P2(_lh_canMoveTo_LH_P2_0_6, _lh_canMoveTo_LH_P2_1_6))) _lh_canMoveTo_arg2_6)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d3 _lh_canMoveTo_arg1_5 _lh_canMoveTo_arg2_5 =
  (match _lh_canMoveTo_arg1_5 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_5, _lh_canMoveTo_LH_P2_1_5) -> 
      (let rec sze_7 = (sizeBoard__d3 _lh_canMoveTo_arg2_5) in
        (((((_lh_canMoveTo_LH_P2_0_5 >= 1) && (_lh_canMoveTo_LH_P2_0_5 <= sze_7)) && (_lh_canMoveTo_LH_P2_1_5 >= 1)) && (_lh_canMoveTo_LH_P2_1_5 <= sze_7)) && ((isSquareFree__d3 (`LH_P2(_lh_canMoveTo_LH_P2_0_5, _lh_canMoveTo_LH_P2_1_5))) _lh_canMoveTo_arg2_5)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d4 _lh_canMoveTo_arg1_1 _lh_canMoveTo_arg2_1 =
  (match _lh_canMoveTo_arg1_1 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1) -> 
      (let rec sze_2 = (sizeBoard__d4 _lh_canMoveTo_arg2_1) in
        (((((_lh_canMoveTo_LH_P2_0_1 >= 1) && (_lh_canMoveTo_LH_P2_0_1 <= sze_2)) && (_lh_canMoveTo_LH_P2_1_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_1 <= sze_2)) && ((isSquareFree__d4 (`LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1))) _lh_canMoveTo_arg2_1)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d5 _lh_canMoveTo_arg1_3 _lh_canMoveTo_arg2_3 =
  (match _lh_canMoveTo_arg1_3 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_3, _lh_canMoveTo_LH_P2_1_3) -> 
      (let rec sze_5 = (sizeBoard__d5 _lh_canMoveTo_arg2_3) in
        (((((_lh_canMoveTo_LH_P2_0_3 >= 1) && (_lh_canMoveTo_LH_P2_0_3 <= sze_5)) && (_lh_canMoveTo_LH_P2_1_3 >= 1)) && (_lh_canMoveTo_LH_P2_1_3 <= sze_5)) && ((isSquareFree__d5 (`LH_P2(_lh_canMoveTo_LH_P2_0_3, _lh_canMoveTo_LH_P2_1_3))) _lh_canMoveTo_arg2_3)))
    | _ -> 
      (failwith "error"))
and canMoveTo__d6 _lh_canMoveTo_arg1_7 _lh_canMoveTo_arg2_7 =
  (match _lh_canMoveTo_arg1_7 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_7, _lh_canMoveTo_LH_P2_1_7) -> 
      (let rec sze_9 = (sizeBoard__d6 _lh_canMoveTo_arg2_7) in
        (((((_lh_canMoveTo_LH_P2_0_7 >= 1) && (_lh_canMoveTo_LH_P2_0_7 <= sze_9)) && (_lh_canMoveTo_LH_P2_1_7 >= 1)) && (_lh_canMoveTo_LH_P2_1_7 <= sze_9)) && ((isSquareFree__d6 (`LH_P2(_lh_canMoveTo_LH_P2_0_7, _lh_canMoveTo_LH_P2_1_7))) _lh_canMoveTo_arg2_7)))
    | _ -> 
      (failwith "error"))
and canMove__d0 _lh_canMove_arg1_1 _lh_canMove_arg2_1 =
  ((canMoveTo__d1 ((move__d0 _lh_canMove_arg2_1) (lastPiece__d0 _lh_canMove_arg1_1))) _lh_canMove_arg1_1)
and canMove__d1 _lh_canMove_arg1_4 _lh_canMove_arg2_4 =
  ((canMoveTo__d2 ((move__d2 _lh_canMove_arg2_4) (lastPiece__d2 _lh_canMove_arg1_4))) _lh_canMove_arg1_4)
and canMove__d2 _lh_canMove_arg1_2 _lh_canMove_arg2_2 =
  ((canMoveTo__d3 ((move__d3 _lh_canMove_arg2_2) (lastPiece__d3 _lh_canMove_arg1_2))) _lh_canMove_arg1_2)
and canMove__d3 _lh_canMove_arg1_5 _lh_canMove_arg2_5 =
  ((canMoveTo__d4 ((move__d5 _lh_canMove_arg2_5) (lastPiece__d5 _lh_canMove_arg1_5))) _lh_canMove_arg1_5)
and canMove__d4 _lh_canMove_arg1_3 _lh_canMove_arg2_3 =
  ((canMoveTo__d5 ((move__d6 _lh_canMove_arg2_3) (lastPiece__d6 _lh_canMove_arg1_3))) _lh_canMove_arg1_3)
and deadEnd__d0 _lh_deadEnd_arg1_1 =
  ((length__d2 (possibleMoves__d0 _lh_deadEnd_arg1_1)) = 0)
and deleteFirst__d0 _lh_deleteFirst_arg1_1 =
  (match _lh_deleteFirst_arg1_1 with
    | `Board(_lh_deleteFirst_Board_0_1, _lh_deleteFirst_Board_1_1, _lh_deleteFirst_Board_2_1, _lh_deleteFirst_Board_3_1) -> 
      (let rec ts'_1 = (myInit__d0 _lh_deleteFirst_Board_3_1) in
        (`Board(_lh_deleteFirst_Board_0_1, (_lh_deleteFirst_Board_1_1 - 1), (myLast__d0 ts'_1), ts'_1)))
    | _ -> 
      (failwith "error"))
and deleteFirst__d1 _lh_deleteFirst_arg1_2 =
  (match _lh_deleteFirst_arg1_2 with
    | `Board(_lh_deleteFirst_Board_0_2, _lh_deleteFirst_Board_1_2, _lh_deleteFirst_Board_2_2, _lh_deleteFirst_Board_3_2) -> 
      (let rec ts'_2 = (myInit__d1 _lh_deleteFirst_Board_3_2) in
        (`Board(_lh_deleteFirst_Board_0_2, (_lh_deleteFirst_Board_1_2 - 1), (myLast__d1 ts'_2), ts'_2)))
    | _ -> 
      (failwith "error"))
and deleteFirst__d2 _lh_deleteFirst_arg1_3 =
  (match _lh_deleteFirst_arg1_3 with
    | `Board(_lh_deleteFirst_Board_0_3, _lh_deleteFirst_Board_1_3, _lh_deleteFirst_Board_2_3, _lh_deleteFirst_Board_3_3) -> 
      (let rec ts'_3 = (myInit__d2 _lh_deleteFirst_Board_3_3) in
        (`Board(_lh_deleteFirst_Board_0_3, (_lh_deleteFirst_Board_1_3 - 1), (myLast__d2 ts'_3), ts'_3)))
    | _ -> 
      (failwith "error"))
and deleteFirst__d3 _lh_deleteFirst_arg1_4 =
  (match _lh_deleteFirst_arg1_4 with
    | `Board(_lh_deleteFirst_Board_0_4, _lh_deleteFirst_Board_1_4, _lh_deleteFirst_Board_2_4, _lh_deleteFirst_Board_3_4) -> 
      (let rec ts'_4 = (myInit__d3 _lh_deleteFirst_Board_3_4) in
        (`Board(_lh_deleteFirst_Board_0_4, (_lh_deleteFirst_Board_1_4 - 1), (myLast__d3 ts'_4), ts'_4)))
    | _ -> 
      (failwith "error"))
and depthSearch__d0 _lh_depthSearch_arg1_1 _lh_depthSearch_arg2_1 _lh_depthSearch_arg3_1 =
  (if (let rec _lh_matchIdent_3 = _lh_depthSearch_arg1_1 in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        true
      | _ -> 
        false)) then
    (lazy (`LH_N))
  else
    (if (_lh_depthSearch_arg3_1 (inquireFront__d0 _lh_depthSearch_arg1_1)) then
      (lazy (`LH_C((inquireFront__d1 _lh_depthSearch_arg1_1), (((depthSearch__d0 (removeFront__d0 _lh_depthSearch_arg1_1)) _lh_depthSearch_arg2_1) _lh_depthSearch_arg3_1))))
    else
      (((depthSearch__d0 ((addAllFront__d0 (_lh_depthSearch_arg2_1 (inquireFront__d2 _lh_depthSearch_arg1_1))) (removeFront__d1 _lh_depthSearch_arg1_1))) _lh_depthSearch_arg2_1) _lh_depthSearch_arg3_1)))
and descAndNo__d0 _lh_descAndNo_arg1_1 =
  (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
    (match _lh_listcomp_fun_para_1_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
        (`LH_C((`LH_P2((length__d3 (possibleMoves__d2 (deleteFirst__d1 _lh_listcomp_fun_ls_h_1_4))), _lh_listcomp_fun_ls_h_1_4)), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_4 (allDescend__d0 _lh_descAndNo_arg1_1)))
and descAndNo__d1 _lh_descAndNo_arg1_2 =
  (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_2_2 -> 
    (match _lh_listcomp_fun_para_2_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_2) -> 
        (`LH_C((`LH_P2((length__d5 (possibleMoves__d4 (deleteFirst__d2 _lh_listcomp_fun_ls_h_2_2))), _lh_listcomp_fun_ls_h_2_2)), (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_2 (allDescend__d1 _lh_descAndNo_arg1_2)))
and descendents__d0 _lh_descendents_arg1_1 =
  (if ((canJumpFirst__d0 _lh_descendents_arg1_1) && (deadEnd__d0 ((addPiece__d0 (firstPiece__d1 _lh_descendents_arg1_1)) _lh_descendents_arg1_1))) then
    (`LH_N)
  else
    (let rec singles_1 = (singleDescend__d0 _lh_descendents_arg1_1) in
      (let rec scrut_1 = (length__d4 singles_1) in
        (if (scrut_1 = 0) then
          ((map__d1 mySnd__d0) (quickSortIntChessSet__d0 (descAndNo__d0 _lh_descendents_arg1_1)))
        else
          (if (scrut_1 = 1) then
            singles_1
          else
            (`LH_N))))))
and grow__d0 _lh_grow_arg1_1 =
  (match _lh_grow_arg1_1 with
    | `LH_P2(_lh_grow_LH_P2_0_1, _lh_grow_LH_P2_1_1) -> 
      ((zip_lz_nl__d0 (repeat__d0 (_lh_grow_LH_P2_0_1 + 1))) (descendents__d0 _lh_grow_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and isFinished__d0 _lh_isFinished_arg1_1 =
  (match _lh_isFinished_arg1_1 with
    | `LH_P2(_lh_isFinished_LH_P2_0_1, _lh_isFinished_LH_P2_1_1) -> 
      (tourFinished__d0 _lh_isFinished_LH_P2_1_1)
    | _ -> 
      (failwith "error"))
and isSquareFree__d0 _lh_isSquareFree_arg1_4 _lh_isSquareFree_arg2_4 =
  (match _lh_isSquareFree_arg2_4 with
    | `Board(_lh_isSquareFree_Board_0_4, _lh_isSquareFree_Board_1_4, _lh_isSquareFree_Board_2_4, _lh_isSquareFree_Board_3_4) -> 
      (not ((inList__d0 _lh_isSquareFree_arg1_4) _lh_isSquareFree_Board_3_4))
    | _ -> 
      (failwith "error"))
and isSquareFree__d1 _lh_isSquareFree_arg1_2 _lh_isSquareFree_arg2_2 =
  (match _lh_isSquareFree_arg2_2 with
    | `Board(_lh_isSquareFree_Board_0_2, _lh_isSquareFree_Board_1_2, _lh_isSquareFree_Board_2_2, _lh_isSquareFree_Board_3_2) -> 
      (not ((inList__d1 _lh_isSquareFree_arg1_2) _lh_isSquareFree_Board_3_2))
    | _ -> 
      (failwith "error"))
and isSquareFree__d2 _lh_isSquareFree_arg1_6 _lh_isSquareFree_arg2_6 =
  (match _lh_isSquareFree_arg2_6 with
    | `Board(_lh_isSquareFree_Board_0_6, _lh_isSquareFree_Board_1_6, _lh_isSquareFree_Board_2_6, _lh_isSquareFree_Board_3_6) -> 
      (not ((inList__d2 _lh_isSquareFree_arg1_6) _lh_isSquareFree_Board_3_6))
    | _ -> 
      (failwith "error"))
and isSquareFree__d3 _lh_isSquareFree_arg1_1 _lh_isSquareFree_arg2_1 =
  (match _lh_isSquareFree_arg2_1 with
    | `Board(_lh_isSquareFree_Board_0_1, _lh_isSquareFree_Board_1_1, _lh_isSquareFree_Board_2_1, _lh_isSquareFree_Board_3_1) -> 
      (not ((inList__d3 _lh_isSquareFree_arg1_1) _lh_isSquareFree_Board_3_1))
    | _ -> 
      (failwith "error"))
and isSquareFree__d4 _lh_isSquareFree_arg1_7 _lh_isSquareFree_arg2_7 =
  (match _lh_isSquareFree_arg2_7 with
    | `Board(_lh_isSquareFree_Board_0_7, _lh_isSquareFree_Board_1_7, _lh_isSquareFree_Board_2_7, _lh_isSquareFree_Board_3_7) -> 
      (not ((inList__d4 _lh_isSquareFree_arg1_7) _lh_isSquareFree_Board_3_7))
    | _ -> 
      (failwith "error"))
and isSquareFree__d5 _lh_isSquareFree_arg1_5 _lh_isSquareFree_arg2_5 =
  (match _lh_isSquareFree_arg2_5 with
    | `Board(_lh_isSquareFree_Board_0_5, _lh_isSquareFree_Board_1_5, _lh_isSquareFree_Board_2_5, _lh_isSquareFree_Board_3_5) -> 
      (not ((inList__d5 _lh_isSquareFree_arg1_5) _lh_isSquareFree_Board_3_5))
    | _ -> 
      (failwith "error"))
and isSquareFree__d6 _lh_isSquareFree_arg1_3 _lh_isSquareFree_arg2_3 =
  (match _lh_isSquareFree_arg2_3 with
    | `Board(_lh_isSquareFree_Board_0_3, _lh_isSquareFree_Board_1_3, _lh_isSquareFree_Board_2_3, _lh_isSquareFree_Board_3_3) -> 
      (not ((inList__d6 _lh_isSquareFree_arg1_3) _lh_isSquareFree_Board_3_3))
    | _ -> 
      (failwith "error"))
and moveKnight__d0 _lh_moveKnight_arg1_2 _lh_moveKnight_arg2_2 =
  ((addPiece__d1 ((move__d1 _lh_moveKnight_arg2_2) (lastPiece__d1 _lh_moveKnight_arg1_2))) _lh_moveKnight_arg1_2)
and moveKnight__d1 _lh_moveKnight_arg1_1 _lh_moveKnight_arg2_1 =
  ((addPiece__d2 ((move__d4 _lh_moveKnight_arg2_1) (lastPiece__d4 _lh_moveKnight_arg1_1))) _lh_moveKnight_arg1_1)
and possibleMoves__d0 _lh_possibleMoves_arg1_3 =
  (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_9 -> 
    (match _lh_listcomp_fun_para_1_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
        (if ((canMove__d0 _lh_possibleMoves_arg1_3) _lh_listcomp_fun_ls_h_1_9) then
          (`LH_C(_lh_listcomp_fun_ls_h_1_9, (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9)))
        else
          (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_9 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))))
and possibleMoves__d1 _lh_possibleMoves_arg1_4 =
  (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_2_0 -> 
    (match _lh_listcomp_fun_para_2_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_0) -> 
        (if ((canMove__d1 _lh_possibleMoves_arg1_4) _lh_listcomp_fun_ls_h_2_0) then
          (`LH_C(_lh_listcomp_fun_ls_h_2_0, (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0)))
        else
          (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_0 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))))
and possibleMoves__d2 _lh_possibleMoves_arg1_1 =
  (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (if ((canMove__d2 _lh_possibleMoves_arg1_1) _lh_listcomp_fun_ls_h_1_1) then
          (`LH_C(_lh_listcomp_fun_ls_h_1_1, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
        else
          (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_1 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))))
and possibleMoves__d3 _lh_possibleMoves_arg1_2 =
  (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
    (match _lh_listcomp_fun_para_1_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
        (if ((canMove__d3 _lh_possibleMoves_arg1_2) _lh_listcomp_fun_ls_h_1_3) then
          (`LH_C(_lh_listcomp_fun_ls_h_1_3, (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3)))
        else
          (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_3 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))))
and possibleMoves__d4 _lh_possibleMoves_arg1_5 =
  (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_2_1 -> 
    (match _lh_listcomp_fun_para_2_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
        (if ((canMove__d4 _lh_possibleMoves_arg1_5) _lh_listcomp_fun_ls_h_2_1) then
          (`LH_C(_lh_listcomp_fun_ls_h_2_1, (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1)))
        else
          (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_1 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))))
and printBoard__d0 _lh_printBoard_arg1_1 _lh_printBoard_arg2_1 _lh_printBoard_arg3_1 =
  (match _lh_printBoard_arg3_1 with
    | `LH_N -> 
      (if (_lh_printBoard_arg2_1 > (_lh_printBoard_arg1_1 * _lh_printBoard_arg1_1)) then
        (`LH_N)
      else
        (if ((_lh_printBoard_arg2_1 mod _lh_printBoard_arg1_1) <> 0) then
          ((mappend__d8 ((mappend__d9 (`LH_C('*', (`LH_N)))) ((spaces__d0 (_lh_printBoard_arg1_1 * _lh_printBoard_arg1_1)) 1))) (((printBoard__d0 _lh_printBoard_arg1_1) (_lh_printBoard_arg2_1 + 1)) (`LH_N)))
        else
          (if ((_lh_printBoard_arg2_1 mod _lh_printBoard_arg1_1) = 0) then
            ((mappend__d1_d0 (`LH_C('*', (`LH_C('|', (`LH_N)))))) (((printBoard__d0 _lh_printBoard_arg1_1) (_lh_printBoard_arg2_1 + 1)) (`LH_N)))
          else
            ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_printBoard_LH_C_0_1, _lh_printBoard_LH_C_1_1) -> 
      (match _lh_printBoard_LH_C_0_1 with
        | `LH_P2(_lh_printBoard_LH_P2_0_1, _lh_printBoard_LH_P2_1_1) -> 
          (if ((_lh_printBoard_LH_P2_0_1 = _lh_printBoard_arg2_1) && ((_lh_printBoard_arg2_1 mod _lh_printBoard_arg1_1) = 0)) then
            ((mappend__d1_d1 ((mappend__d1_d2 (string_of_int _lh_printBoard_LH_P2_1_1)) (`LH_C('|', (`LH_N))))) (((printBoard__d0 _lh_printBoard_arg1_1) (_lh_printBoard_arg2_1 + 1)) _lh_printBoard_LH_C_1_1))
          else
            (if ((_lh_printBoard_LH_P2_0_1 = _lh_printBoard_arg2_1) && ((_lh_printBoard_arg2_1 mod _lh_printBoard_arg1_1) <> 0)) then
              ((mappend__d1_d3 ((mappend__d1_d4 (string_of_int _lh_printBoard_LH_P2_1_1)) ((spaces__d1 (_lh_printBoard_arg1_1 * _lh_printBoard_arg1_1)) _lh_printBoard_LH_P2_1_1))) (((printBoard__d0 _lh_printBoard_arg1_1) (_lh_printBoard_arg2_1 + 1)) _lh_printBoard_LH_C_1_1))
            else
              (if ((_lh_printBoard_arg2_1 mod _lh_printBoard_arg1_1) <> 0) then
                ((mappend__d1_d5 ((mappend__d1_d6 (`LH_C('*', (`LH_N)))) ((spaces__d2 (_lh_printBoard_arg1_1 * _lh_printBoard_arg1_1)) 1))) (((printBoard__d0 _lh_printBoard_arg1_1) (_lh_printBoard_arg2_1 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_1, _lh_printBoard_LH_P2_1_1)), _lh_printBoard_LH_C_1_1))))
              else
                (if ((_lh_printBoard_arg2_1 mod _lh_printBoard_arg1_1) = 0) then
                  ((mappend__d1_d7 (`LH_C('*', (`LH_C('|', (`LH_N)))))) (((printBoard__d0 _lh_printBoard_arg1_1) (_lh_printBoard_arg2_1 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_1, _lh_printBoard_LH_P2_1_1)), _lh_printBoard_LH_C_1_1))))
                else
                  ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('-', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and printTour__d0 _lh_printTour_arg1_1 =
  let rec strToInt_1 = (fun _lh_strToInt_arg1_1 _lh_strToInt_arg2_1 -> 
    (match _lh_strToInt_arg2_1 with
      | `LH_N -> 
        _lh_strToInt_arg1_1
      | `LH_C(_lh_strToInt_LH_C_0_1, _lh_strToInt_LH_C_1_1) -> 
        ((strToInt_1 ((10 * _lh_strToInt_arg1_1) + ((int_of_char _lh_strToInt_LH_C_0_1) - (int_of_char '0')))) _lh_strToInt_LH_C_1_1)
      | _ -> 
        (failwith "error")))
  and pp_1 = (fun _lh_pp_arg1_1 -> 
    (match _lh_pp_arg1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_pp_LH_C_0_1, _lh_pp_LH_C_1_1) -> 
        (match _lh_pp_LH_C_0_1 with
          | `LH_P2(_lh_pp_LH_P2_0_1, _lh_pp_LH_P2_1_1) -> 
            ((mappend__d3 ((mappend__d4 ((mappend__d5 ((mappend__d6 (`LH_C('|', (`LH_C('K', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))) (string_of_int _lh_pp_LH_P2_0_1))) (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))) (showChessSet__d0 _lh_pp_LH_P2_1_1))) (pp_1 _lh_pp_LH_C_1_1))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  in (let rec _lh_matchIdent_2 = ((map__d3 (strToInt_1 0)) _lh_printTour_arg1_1) in
    (match _lh_matchIdent_2 with
      | `LH_C(_lh_printTour_LH_C_0_2, _lh_printTour_LH_C_1_2) -> 
        (match _lh_printTour_LH_C_1_2 with
          | `LH_C(_lh_printTour_LH_C_0_3, _lh_printTour_LH_C_1_3) -> 
            (match _lh_printTour_LH_C_1_3 with
              | `LH_N -> 
                (pp_1 ((take_lz__d0 _lh_printTour_LH_C_0_3) (((depthSearch__d0 (root__d0 _lh_printTour_LH_C_0_2)) grow__d0) isFinished__d0)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and quickSortIntChessSet__d0 _lh_quickSortIntChessSet_arg1_1 =
  (match _lh_quickSortIntChessSet_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntChessSet_LH_C_0_1, _lh_quickSortIntChessSet_LH_C_1_1) -> 
      ((mappend__d1 ((mappend__d2 (quickSortIntChessSet__d0 (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_7 -> 
        (match _lh_listcomp_fun_para_1_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
            (if ((intChessSetComp__d0 _lh_listcomp_fun_ls_h_1_7) _lh_quickSortIntChessSet_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_7, (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7)))
            else
              (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_7 _lh_quickSortIntChessSet_LH_C_1_1)))) (`LH_C(_lh_quickSortIntChessSet_LH_C_0_1, (`LH_N))))) (quickSortIntChessSet__d0 (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_8 -> 
        (match _lh_listcomp_fun_para_1_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_8) -> 
            (if (not ((intChessSetComp__d1 _lh_listcomp_fun_ls_h_1_8) _lh_quickSortIntChessSet_LH_C_0_1)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_8, (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8)))
            else
              (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_8 _lh_quickSortIntChessSet_LH_C_1_1))))
    | _ -> 
      (failwith "error"))
and quickSortIntInt__d0 _lh_quickSortIntInt_arg1_1 =
  (match _lh_quickSortIntInt_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntInt_LH_C_0_1, _lh_quickSortIntInt_LH_C_1_1) -> 
      ((mappend__d1_d8 ((mappend__d1_d9 (quickSortIntInt__d0 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
            (if ((intintComp__d1 _lh_listcomp_fun_ls_h_9) _lh_quickSortIntInt_LH_C_0_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_9, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
            else
              (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9 _lh_quickSortIntInt_LH_C_1_1)))) (`LH_C(_lh_quickSortIntInt_LH_C_0_1, (`LH_N))))) (quickSortIntInt__d0 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
        (match _lh_listcomp_fun_para_1_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
            (if (not ((intintComp__d0 _lh_listcomp_fun_ls_h_1_0) _lh_quickSortIntInt_LH_C_0_1)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_0, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0)))
            else
              (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_0 _lh_quickSortIntInt_LH_C_1_1))))
    | _ -> 
      (failwith "error"))
and root__d0 _lh_root_arg1_1 =
  ((addAllFront__d1 ((zip_lz_nl__d1 (repeat__d1 (1 - (_lh_root_arg1_1 * _lh_root_arg1_1)))) (((zipWith__d0 startTour__d0) (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
    (match _lh_listcomp_fun_para_1_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
        (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_6 -> 
          (match _lh_listcomp_fun_para_1_6 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_6) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_h_1_6)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6)))
            | `LH_N -> 
              (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))) in
          (_lh_listcomp_fun_1_6 ((enumFromTo__d1 1) _lh_root_arg1_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_5 ((enumFromTo__d0 1) _lh_root_arg1_1)))) ((copy__d0 (_lh_root_arg1_1 * _lh_root_arg1_1)) _lh_root_arg1_1)))) createQueue__d0)
and showChessSet__d0 _lh_showChessSet_arg1_1 =
  (match _lh_showChessSet_arg1_1 with
    | `Board(_lh_showChessSet_Board_0_1, _lh_showChessSet_Board_1_1, _lh_showChessSet_Board_2_1, _lh_showChessSet_Board_3_1) -> 
      (let rec sortedTrail_1 = (quickSortIntInt__d0 (((assignMoveNo__d0 _lh_showChessSet_Board_3_1) _lh_showChessSet_Board_0_1) _lh_showChessSet_Board_1_1)) in
        (((printBoard__d0 _lh_showChessSet_Board_0_1) 1) sortedTrail_1))
    | _ -> 
      (failwith "error"))
and singleDescend__d0 _lh_singleDescend_arg1_1 =
  (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
    (match _lh_listcomp_fun_para_1_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_1_2 with
          | `LH_P2(_lh_singleDescend_LH_P2_0_1, _lh_singleDescend_LH_P2_1_1) -> 
            (if (_lh_singleDescend_LH_P2_0_1 = 1) then
              (`LH_C(_lh_singleDescend_LH_P2_1_1, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2)))
            else
              (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
          | _ -> 
            (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_2 (descAndNo__d1 _lh_singleDescend_arg1_1)))
and spaces__d0 _lh_spaces_arg1_2 _lh_spaces_arg2_2 =
  (let rec logTen_2 = (fun _lh_logTen_arg1_2 -> 
    (match _lh_logTen_arg1_2 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_2 (_lh_logTen_arg1_2 / 10))))) in
    ((copy__d1 (((logTen_2 _lh_spaces_arg1_2) - (logTen_2 _lh_spaces_arg2_2)) + 1)) ' '))
and spaces__d1 _lh_spaces_arg1_3 _lh_spaces_arg2_3 =
  (let rec logTen_3 = (fun _lh_logTen_arg1_3 -> 
    (match _lh_logTen_arg1_3 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_3 (_lh_logTen_arg1_3 / 10))))) in
    ((copy__d2 (((logTen_3 _lh_spaces_arg1_3) - (logTen_3 _lh_spaces_arg2_3)) + 1)) ' '))
and spaces__d2 _lh_spaces_arg1_1 _lh_spaces_arg2_1 =
  (let rec logTen_1 = (fun _lh_logTen_arg1_1 -> 
    (match _lh_logTen_arg1_1 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_1 (_lh_logTen_arg1_1 / 10))))) in
    ((copy__d3 (((logTen_1 _lh_spaces_arg1_1) - (logTen_1 _lh_spaces_arg2_1)) + 1)) ' '))
and startTour__d0 _lh_startTour_arg1_1 _lh_startTour_arg2_1 =
  (if ((_lh_startTour_arg2_1 mod 2) = 0) then
    ((createBoard__d0 _lh_startTour_arg2_1) _lh_startTour_arg1_1)
  else
    ((failwith "error") (`LH_C('T', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and testKnights_nofib__d0 _lh_testKnights_nofib_arg1_1 =
  let rec all_digits_1 = (fun _lh_all_digits_arg1_1 -> 
    (((foldr__d0 (fun _lh_funcomp_x_2 -> 
      ((fun a_9 b_6 -> 
        (a_9 && b_6)) (myIsDigit__d0 _lh_funcomp_x_2)))) true) _lh_all_digits_arg1_1))
  and argsOk_1 = (fun _lh_argsOk_arg1_1 -> 
    (((length__d0 _lh_argsOk_arg1_1) = 2) && (((foldr__d1 (fun _lh_funcomp_x_3 -> 
      ((fun a_1_0 b_7 -> 
        (a_1_0 && b_7)) (all_digits_1 _lh_funcomp_x_3)))) true) _lh_argsOk_arg1_1)))
  and usageString_1 = (`LH_C('|', (`LH_C('U', (`LH_C('s', (`LH_C('a', (`LH_C('g', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('<', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C('>', (`LH_C(' ', (`LH_C('<', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('>', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  in (if (argsOk_1 _lh_testKnights_nofib_arg1_1) then
    (length__d1 (printTour__d0 _lh_testKnights_nofib_arg1_1))
  else
    ((failwith "error") usageString_1))
and tourFinished__d0 _lh_tourFinished_arg1_1 =
  (let rec sze_4 = (sizeBoard__d7 _lh_tourFinished_arg1_1) in
    (((noPieces__d0 _lh_tourFinished_arg1_1) = (sze_4 * sze_4)) && (canJumpFirst__d1 _lh_tourFinished_arg1_1)));;
end;;

