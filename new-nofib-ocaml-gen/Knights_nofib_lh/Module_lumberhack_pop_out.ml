

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec take_lz_lh n_1 ls_0 =
  (if (n_1 > 0) then
    ((Lazy.force ls_0) n_1)
  else
    (fun pp_0 -> 
      (`LH_N)));;
let rec sizeBoard_lh _lh_sizeBoard_arg1_0 =
  (match _lh_sizeBoard_arg1_0 with
    | `Board(_lh_sizeBoard_Board_0_0, _lh_sizeBoard_Board_1_0, _lh_sizeBoard_Board_2_0, _lh_sizeBoard_Board_3_0) -> 
      _lh_sizeBoard_Board_0_0
    | _ -> 
      (failwith "error"));;
let rec firstPiece_lh _lh_firstPiece_arg1_0 =
  (match _lh_firstPiece_arg1_0 with
    | `Board(_lh_firstPiece_Board_0_0, _lh_firstPiece_Board_1_0, _lh_firstPiece_Board_2_0, _lh_firstPiece_Board_3_0) -> 
      _lh_firstPiece_Board_2_0
    | _ -> 
      (failwith "error"));;
let rec myInit_lh _lh_myInit_arg1_0 =
  (match _lh_myInit_arg1_0 with
    | `LH_C(_lh_myInit_LH_C_0_0, _lh_myInit_LH_C_1_0) -> 
      (match _lh_myInit_LH_C_1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_0, (myInit_lh _lh_myInit_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec myLast_lh _lh_myLast_arg1_0 =
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
let rec deleteFirst_lh _lh_deleteFirst_arg1_0 =
  (match _lh_deleteFirst_arg1_0 with
    | `Board(_lh_deleteFirst_Board_0_0, _lh_deleteFirst_Board_1_0, _lh_deleteFirst_Board_2_0, _lh_deleteFirst_Board_3_0) -> 
      (let rec ts'_0 = (myInit_lh _lh_deleteFirst_Board_3_0) in
        (`Board(_lh_deleteFirst_Board_0_0, (_lh_deleteFirst_Board_1_0 - 1), (myLast_lh ts'_0), ts'_0)))
    | _ -> 
      (failwith "error"));;
let rec inList_lh _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec isSquareFree_lh _lh_isSquareFree_arg1_0 _lh_isSquareFree_arg2_0 =
  (match _lh_isSquareFree_arg2_0 with
    | `Board(_lh_isSquareFree_Board_0_0, _lh_isSquareFree_Board_1_0, _lh_isSquareFree_Board_2_0, _lh_isSquareFree_Board_3_0) -> 
      (not ((inList_lh _lh_isSquareFree_arg1_0) _lh_isSquareFree_Board_3_0))
    | _ -> 
      (failwith "error"));;
let rec canMoveTo_lh _lh_canMoveTo_arg1_0 _lh_canMoveTo_arg2_0 =
  (match _lh_canMoveTo_arg1_0 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0) -> 
      (let rec sze_1 = (sizeBoard_lh _lh_canMoveTo_arg2_0) in
        (((((_lh_canMoveTo_LH_P2_0_0 >= 1) && (_lh_canMoveTo_LH_P2_0_0 <= sze_1)) && (_lh_canMoveTo_LH_P2_1_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_0 <= sze_1)) && ((isSquareFree_lh (`LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0))) _lh_canMoveTo_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec canJumpFirst_lh _lh_canJumpFirst_arg1_0 =
  ((canMoveTo_lh (firstPiece_lh _lh_canJumpFirst_arg1_0)) (deleteFirst_lh _lh_canJumpFirst_arg1_0));;
let rec noPieces_lh _lh_noPieces_arg1_0 =
  (match _lh_noPieces_arg1_0 with
    | `Board(_lh_noPieces_Board_0_0, _lh_noPieces_Board_1_0, _lh_noPieces_Board_2_0, _lh_noPieces_Board_3_0) -> 
      _lh_noPieces_Board_1_0
    | _ -> 
      (failwith "error"));;
let rec tourFinished_lh _lh_tourFinished_arg1_0 =
  (let rec sze_0 = (sizeBoard_lh _lh_tourFinished_arg1_0) in
    (((noPieces_lh _lh_tourFinished_arg1_0) = (sze_0 * sze_0)) && (canJumpFirst_lh _lh_tourFinished_arg1_0)));;
let rec isFinished_lh _lh_isFinished_arg1_0 =
  (match _lh_isFinished_arg1_0 with
    | `LH_P2(_lh_isFinished_LH_P2_0_0, _lh_isFinished_LH_P2_1_0) -> 
      (tourFinished_lh _lh_isFinished_LH_P2_1_0)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh t_2) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec addAllFront_lh _lh_addAllFront_arg1_0 _lh_addAllFront_arg2_0 =
  ((mappend_lh _lh_addAllFront_arg1_0) _lh_addAllFront_arg2_0);;
let rec removeFront_lh _lh_removeFront_arg1_0 =
  (match _lh_removeFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_0, _lh_removeFront_LH_C_1_0) -> 
      _lh_removeFront_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec spaces_lh _lh_spaces_arg1_0 _lh_spaces_arg2_0 =
  (let rec logTen_0 = (fun _lh_logTen_arg1_0 -> 
    (match _lh_logTen_arg1_0 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_0 (_lh_logTen_arg1_0 / 10))))) in
    ((copy_lh (((logTen_0 _lh_spaces_arg1_0) - (logTen_0 _lh_spaces_arg2_0)) + 1)) ' '));;
let rec printBoard_lh _lh_printBoard_arg1_0 _lh_printBoard_arg2_0 _lh_printBoard_arg3_0 =
  (match _lh_printBoard_arg3_0 with
    | `LH_N -> 
      (if (_lh_printBoard_arg2_0 > (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) then
        (`LH_N)
      else
        (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
          ((mappend_lh ((mappend_lh (`LH_C('*', (`LH_N)))) ((spaces_lh (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard_lh _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
        else
          (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
            ((mappend_lh (`LH_C('*', (`LH_C('|', (`LH_N)))))) (((printBoard_lh _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
          else
            ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_printBoard_LH_C_0_0, _lh_printBoard_LH_C_1_0) -> 
      (match _lh_printBoard_LH_C_0_0 with
        | `LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0) -> 
          (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0)) then
            ((mappend_lh ((mappend_lh (string_of_int _lh_printBoard_LH_P2_1_0)) (`LH_C('|', (`LH_N))))) (((printBoard_lh _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
          else
            (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0)) then
              ((mappend_lh ((mappend_lh (string_of_int _lh_printBoard_LH_P2_1_0)) ((spaces_lh (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) _lh_printBoard_LH_P2_1_0))) (((printBoard_lh _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
            else
              (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
                ((mappend_lh ((mappend_lh (`LH_C('*', (`LH_N)))) ((spaces_lh (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard_lh _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
              else
                (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
                  ((mappend_lh (`LH_C('*', (`LH_C('|', (`LH_N)))))) (((printBoard_lh _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
                else
                  ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('-', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assignMoveNo_lh _lh_assignMoveNo_arg1_0 _lh_assignMoveNo_arg2_0 _lh_assignMoveNo_arg3_0 =
  (match _lh_assignMoveNo_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_assignMoveNo_LH_C_0_0, _lh_assignMoveNo_LH_C_1_0) -> 
      (match _lh_assignMoveNo_LH_C_0_0 with
        | `LH_P2(_lh_assignMoveNo_LH_P2_0_0, _lh_assignMoveNo_LH_P2_1_0) -> 
          (`LH_C((`LH_P2((((_lh_assignMoveNo_LH_P2_1_0 - 1) * _lh_assignMoveNo_arg2_0) + _lh_assignMoveNo_LH_P2_0_0), _lh_assignMoveNo_arg3_0)), (((assignMoveNo_lh _lh_assignMoveNo_LH_C_1_0) _lh_assignMoveNo_arg2_0) (_lh_assignMoveNo_arg3_0 - 1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intintComp_lh _lh_intintComp_arg1_0 _lh_intintComp_arg2_0 =
  (match _lh_intintComp_arg1_0 with
    | `LH_P2(_lh_intintComp_LH_P2_0_0, _lh_intintComp_LH_P2_1_0) -> 
      (match _lh_intintComp_arg2_0 with
        | `LH_P2(_lh_intintComp_LH_P2_0_1, _lh_intintComp_LH_P2_1_1) -> 
          ((_lh_intintComp_LH_P2_0_0 < _lh_intintComp_LH_P2_0_1) || ((_lh_intintComp_LH_P2_0_0 = _lh_intintComp_LH_P2_0_1) && (_lh_intintComp_LH_P2_1_0 < _lh_intintComp_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec quickSortIntInt_lh _lh_quickSortIntInt_arg1_0 =
  (match _lh_quickSortIntInt_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntInt_LH_C_0_0, _lh_quickSortIntInt_LH_C_1_0) -> 
      ((mappend_lh ((mappend_lh (quickSortIntInt_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((intintComp_lh _lh_listcomp_fun_ls_h_1) _lh_quickSortIntInt_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_quickSortIntInt_LH_C_1_0)))) (`LH_C(_lh_quickSortIntInt_LH_C_0_0, (`LH_N))))) (quickSortIntInt_lh (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (if (not ((intintComp_lh _lh_listcomp_fun_ls_h_2) _lh_quickSortIntInt_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
            else
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 _lh_quickSortIntInt_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec showChessSet_lh _lh_showChessSet_arg1_0 =
  (match _lh_showChessSet_arg1_0 with
    | `Board(_lh_showChessSet_Board_0_0, _lh_showChessSet_Board_1_0, _lh_showChessSet_Board_2_0, _lh_showChessSet_Board_3_0) -> 
      (let rec sortedTrail_0 = (quickSortIntInt_lh (((assignMoveNo_lh _lh_showChessSet_Board_3_0) _lh_showChessSet_Board_0_0) _lh_showChessSet_Board_1_0)) in
        (((printBoard_lh _lh_showChessSet_Board_0_0) 1) sortedTrail_0))
    | _ -> 
      (failwith "error"));;
let rec inquireFront_lh _lh_inquireFront_arg1_0 =
  (match _lh_inquireFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_0, _lh_inquireFront_LH_C_1_0) -> 
      _lh_inquireFront_LH_C_0_0
    | _ -> 
      (failwith "error"));;
let rec depthSearch_lh _lh_depthSearch_arg1_0 _lh_depthSearch_arg2_0 _lh_depthSearch_arg3_0 =
  (if (let rec _lh_matchIdent_1 = _lh_depthSearch_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        true
      | _ -> 
        false)) then
    (lazy (fun n_2 pp_2 -> 
      (`LH_N)))
  else
    (if (_lh_depthSearch_arg3_0 (inquireFront_lh _lh_depthSearch_arg1_0)) then
      (lazy (let rec t_0 = (((depthSearch_lh (removeFront_lh _lh_depthSearch_arg1_0)) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0) in
        (let rec h_0 = (inquireFront_lh _lh_depthSearch_arg1_0) in
          (fun n_3 -> 
            (let rec _lh_pp_LH_C_1_0 = ((take_lz_lh (n_3 - 1)) t_0) in
              (let rec _lh_pp_LH_C_0_0 = h_0 in
                (fun pp_3 -> 
                  (match _lh_pp_LH_C_0_0 with
                    | `LH_P2(_lh_pp_LH_P2_0_0, _lh_pp_LH_P2_1_0) -> 
                      ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('|', (`LH_C('K', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))) (string_of_int _lh_pp_LH_P2_0_0))) (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))) (showChessSet_lh _lh_pp_LH_P2_1_0))) (pp_3 _lh_pp_LH_C_1_0))
                    | _ -> 
                      (failwith "error")))))))))
    else
      (((depthSearch_lh ((addAllFront_lh (_lh_depthSearch_arg2_0 (inquireFront_lh _lh_depthSearch_arg1_0))) (removeFront_lh _lh_depthSearch_arg1_0))) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0)));;
let rec zipWith_lh f_0 xs_0 ys_0 =
  ((xs_0 f_0) ys_0);;
let rec enumFromTo_lh a_2 b_2 =
  (if (a_2 <= b_2) then
    (`LH_C(a_2, ((enumFromTo_lh (a_2 + 1)) b_2)))
  else
    (`LH_N));;
let rec createQueue_lh =
  (`LH_N);;
let rec zip_lz_nl_lh xs_1 ys_1 =
  (match ys_1 with
    | `LH_C(hy_1, ty_1) -> 
      (((Lazy.force xs_1) hy_1) ty_1)
    | `LH_N -> 
      (`LH_N));;
let rec createBoard_lh _lh_createBoard_arg1_0 _lh_createBoard_arg2_0 =
  (`Board(_lh_createBoard_arg1_0, 1, _lh_createBoard_arg2_0, (`LH_C(_lh_createBoard_arg2_0, (`LH_N)))));;
let rec startTour_lh _lh_startTour_arg1_0 _lh_startTour_arg2_0 =
  (if ((_lh_startTour_arg2_0 mod 2) = 0) then
    ((createBoard_lh _lh_startTour_arg2_0) _lh_startTour_arg1_0)
  else
    ((failwith "error") (`LH_C('T', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec repeat_lh x_0 =
  (lazy (let rec tx_0 = (repeat_lh x_0) in
    (let rec hx_0 = x_0 in
      (fun hy_0 ty_0 -> 
        (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lz_nl_lh tx_0) ty_0)))))));;
let rec root_lh _lh_root_arg1_0 =
  ((addAllFront_lh ((zip_lz_nl_lh (repeat_lh (1 - (_lh_root_arg1_0 * _lh_root_arg1_0)))) (((zipWith_lh startTour_lh) (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_5 -> 
          (match _lh_listcomp_fun_para_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
              (let rec tx_1 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2) in
                (let rec hx_1 = (`LH_P2(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_h_1_2)) in
                  (fun f_1 ys_2 -> 
                    (match ys_2 with
                      | `LH_C(hy_2, ty_2) -> 
                        (`LH_C(((f_1 hx_1) hy_2), (((zipWith_lh f_1) tx_1) ty_2)))
                      | `LH_N -> 
                        (`LH_N)))))
            | `LH_N -> 
              (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_1))) in
          (_lh_listcomp_fun_1_4 ((enumFromTo_lh 1) _lh_root_arg1_0)))
      | `LH_N -> 
        (fun f_2 ys_3 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_1_3 ((enumFromTo_lh 1) _lh_root_arg1_0)))) ((copy_lh (_lh_root_arg1_0 * _lh_root_arg1_0)) _lh_root_arg1_0)))) createQueue_lh);;
let rec map_lh f_4 ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_4 h_4), ((map_lh f_4) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mySnd_lh _lh_mySnd_arg1_0 =
  (match _lh_mySnd_arg1_0 with
    | `LH_P2(_lh_mySnd_LH_P2_0_0, _lh_mySnd_LH_P2_1_0) -> 
      _lh_mySnd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec length_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh t_1))
    | `LH_N -> 
      0);;
let rec lastPiece_lh _lh_lastPiece_arg1_0 =
  (match _lh_lastPiece_arg1_0 with
    | `Board(_lh_lastPiece_Board_0_0, _lh_lastPiece_Board_1_0, _lh_lastPiece_Board_2_0, _lh_lastPiece_Board_3_0) -> 
      (match _lh_lastPiece_Board_3_0 with
        | `LH_C(_lh_lastPiece_LH_C_0_0, _lh_lastPiece_LH_C_1_0) -> 
          _lh_lastPiece_LH_C_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec move_lh _lh_move_arg1_0 _lh_move_arg2_0 =
  (match _lh_move_arg1_0 with
    | `UL -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_0, _lh_move_LH_P2_1_0) -> 
          (`LH_P2((_lh_move_LH_P2_0_0 - 1), (_lh_move_LH_P2_1_0 - 2)))
        | _ -> 
          (failwith "error"))
    | `UR -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_1, _lh_move_LH_P2_1_1) -> 
          (`LH_P2((_lh_move_LH_P2_0_1 + 1), (_lh_move_LH_P2_1_1 - 2)))
        | _ -> 
          (failwith "error"))
    | `DL -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_2, _lh_move_LH_P2_1_2) -> 
          (`LH_P2((_lh_move_LH_P2_0_2 - 1), (_lh_move_LH_P2_1_2 + 2)))
        | _ -> 
          (failwith "error"))
    | `DR -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_3, _lh_move_LH_P2_1_3) -> 
          (`LH_P2((_lh_move_LH_P2_0_3 + 1), (_lh_move_LH_P2_1_3 + 2)))
        | _ -> 
          (failwith "error"))
    | `LU -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_4, _lh_move_LH_P2_1_4) -> 
          (`LH_P2((_lh_move_LH_P2_0_4 - 2), (_lh_move_LH_P2_1_4 - 1)))
        | _ -> 
          (failwith "error"))
    | `LD -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_5, _lh_move_LH_P2_1_5) -> 
          (`LH_P2((_lh_move_LH_P2_0_5 - 2), (_lh_move_LH_P2_1_5 + 1)))
        | _ -> 
          (failwith "error"))
    | `RU -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_6, _lh_move_LH_P2_1_6) -> 
          (`LH_P2((_lh_move_LH_P2_0_6 + 2), (_lh_move_LH_P2_1_6 - 1)))
        | _ -> 
          (failwith "error"))
    | `RD -> 
      (match _lh_move_arg2_0 with
        | `LH_P2(_lh_move_LH_P2_0_7, _lh_move_LH_P2_1_7) -> 
          (`LH_P2((_lh_move_LH_P2_0_7 + 2), (_lh_move_LH_P2_1_7 + 1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec canMove_lh _lh_canMove_arg1_0 _lh_canMove_arg2_0 =
  ((canMoveTo_lh ((move_lh _lh_canMove_arg2_0) (lastPiece_lh _lh_canMove_arg1_0))) _lh_canMove_arg1_0);;
let rec possibleMoves_lh _lh_possibleMoves_arg1_0 =
  (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    ((_lh_listcomp_fun_para_3 _lh_listcomp_fun_3) _lh_possibleMoves_arg1_0)) in
    (_lh_listcomp_fun_3 (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (let rec _lh_listcomp_fun_ls_t_8 = (let rec _lh_listcomp_fun_ls_t_9 = (let rec _lh_listcomp_fun_ls_t_1_0 = (fun _lh_listcomp_fun_4 _lh_possibleMoves_arg1_1 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_3 = (`RD) in
        (fun _lh_listcomp_fun_5 _lh_possibleMoves_arg1_2 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_2) _lh_listcomp_fun_ls_h_3) then
            (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_1_0)))
          else
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_1_0))))) in
      (let rec _lh_listcomp_fun_ls_h_4 = (`RU) in
        (fun _lh_listcomp_fun_6 _lh_possibleMoves_arg1_3 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_3) _lh_listcomp_fun_ls_h_4) then
            (`LH_C(_lh_listcomp_fun_ls_h_4, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_9)))
          else
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_9))))) in
      (let rec _lh_listcomp_fun_ls_h_5 = (`LD) in
        (fun _lh_listcomp_fun_7 _lh_possibleMoves_arg1_4 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_4) _lh_listcomp_fun_ls_h_5) then
            (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_8)))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_8))))) in
      (let rec _lh_listcomp_fun_ls_h_6 = (`LU) in
        (fun _lh_listcomp_fun_8 _lh_possibleMoves_arg1_5 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_5) _lh_listcomp_fun_ls_h_6) then
            (`LH_C(_lh_listcomp_fun_ls_h_6, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_7)))
          else
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_7))))) in
      (let rec _lh_listcomp_fun_ls_h_7 = (`DR) in
        (fun _lh_listcomp_fun_9 _lh_possibleMoves_arg1_6 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_6) _lh_listcomp_fun_ls_h_7) then
            (`LH_C(_lh_listcomp_fun_ls_h_7, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_6)))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_6))))) in
      (let rec _lh_listcomp_fun_ls_h_8 = (`DL) in
        (fun _lh_listcomp_fun_1_0 _lh_possibleMoves_arg1_7 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_7) _lh_listcomp_fun_ls_h_8) then
            (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_5)))
          else
            (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_5))))) in
      (let rec _lh_listcomp_fun_ls_h_9 = (`UR) in
        (fun _lh_listcomp_fun_1_1 _lh_possibleMoves_arg1_8 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_8) _lh_listcomp_fun_ls_h_9) then
            (`LH_C(_lh_listcomp_fun_ls_h_9, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_4)))
          else
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_4))))) in
      (let rec _lh_listcomp_fun_ls_h_1_0 = (`UL) in
        (fun _lh_listcomp_fun_1_2 _lh_possibleMoves_arg1_9 -> 
          (if ((canMove_lh _lh_possibleMoves_arg1_9) _lh_listcomp_fun_ls_h_1_0) then
            (`LH_C(_lh_listcomp_fun_ls_h_1_0, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_3)))
          else
            (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_3)))))));;
let rec addPiece_lh _lh_addPiece_arg1_0 _lh_addPiece_arg2_0 =
  (match _lh_addPiece_arg2_0 with
    | `Board(_lh_addPiece_Board_0_0, _lh_addPiece_Board_1_0, _lh_addPiece_Board_2_0, _lh_addPiece_Board_3_0) -> 
      (`Board(_lh_addPiece_Board_0_0, (_lh_addPiece_Board_1_0 + 1), _lh_addPiece_Board_2_0, (`LH_C(_lh_addPiece_arg1_0, _lh_addPiece_Board_3_0))))
    | _ -> 
      (failwith "error"));;
let rec moveKnight_lh _lh_moveKnight_arg1_0 _lh_moveKnight_arg2_0 =
  ((addPiece_lh ((move_lh _lh_moveKnight_arg2_0) (lastPiece_lh _lh_moveKnight_arg1_0))) _lh_moveKnight_arg1_0);;
let rec allDescend_lh _lh_allDescend_arg1_0 =
  ((map_lh (moveKnight_lh _lh_allDescend_arg1_0)) (possibleMoves_lh _lh_allDescend_arg1_0));;
let rec descAndNo_lh _lh_descAndNo_arg1_0 =
  (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (`LH_C((`LH_P2((length_lh (possibleMoves_lh (deleteFirst_lh _lh_listcomp_fun_ls_h_0))), _lh_listcomp_fun_ls_h_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 (allDescend_lh _lh_descAndNo_arg1_0)));;
let rec intChessSetComp_lh _lh_intChessSetComp_arg1_0 _lh_intChessSetComp_arg2_0 =
  (match _lh_intChessSetComp_arg1_0 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_0, _lh_intChessSetComp_LH_P2_1_0) -> 
      (match _lh_intChessSetComp_arg2_0 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_1, _lh_intChessSetComp_LH_P2_1_1) -> 
          (_lh_intChessSetComp_LH_P2_0_0 < _lh_intChessSetComp_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec quickSortIntChessSet_lh _lh_quickSortIntChessSet_arg1_0 =
  (match _lh_quickSortIntChessSet_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntChessSet_LH_C_0_0, _lh_quickSortIntChessSet_LH_C_1_0) -> 
      ((mappend_lh ((mappend_lh (quickSortIntChessSet_lh (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_6 -> 
        (match _lh_listcomp_fun_para_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
            (if ((intChessSetComp_lh _lh_listcomp_fun_ls_h_1_3) _lh_quickSortIntChessSet_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_3, (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_3)))
            else
              (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_3))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_5 _lh_quickSortIntChessSet_LH_C_1_0)))) (`LH_C(_lh_quickSortIntChessSet_LH_C_0_0, (`LH_N))))) (quickSortIntChessSet_lh (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_7 -> 
        (match _lh_listcomp_fun_para_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
            (if (not ((intChessSetComp_lh _lh_listcomp_fun_ls_h_1_4) _lh_quickSortIntChessSet_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_4, (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_4)))
            else
              (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_4))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_6 _lh_quickSortIntChessSet_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec deadEnd_lh _lh_deadEnd_arg1_0 =
  ((length_lh (possibleMoves_lh _lh_deadEnd_arg1_0)) = 0);;
let rec singleDescend_lh _lh_singleDescend_arg1_0 =
  (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
        (match _lh_listcomp_fun_ls_h_1_5 with
          | `LH_P2(_lh_singleDescend_LH_P2_0_0, _lh_singleDescend_LH_P2_1_0) -> 
            (if (_lh_singleDescend_LH_P2_0_0 = 1) then
              (`LH_C(_lh_singleDescend_LH_P2_1_0, (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5)))
            else
              (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5))
          | _ -> 
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_7 (descAndNo_lh _lh_singleDescend_arg1_0)));;
let rec descendents_lh _lh_descendents_arg1_0 =
  (if ((canJumpFirst_lh _lh_descendents_arg1_0) && (deadEnd_lh ((addPiece_lh (firstPiece_lh _lh_descendents_arg1_0)) _lh_descendents_arg1_0))) then
    (`LH_N)
  else
    (let rec singles_0 = (singleDescend_lh _lh_descendents_arg1_0) in
      (let rec scrut_0 = (length_lh singles_0) in
        (if (scrut_0 = 0) then
          ((map_lh mySnd_lh) (quickSortIntChessSet_lh (descAndNo_lh _lh_descendents_arg1_0)))
        else
          (if (scrut_0 = 1) then
            singles_0
          else
            (`LH_N))))));;
let rec grow_lh _lh_grow_arg1_0 =
  (match _lh_grow_arg1_0 with
    | `LH_P2(_lh_grow_LH_P2_0_0, _lh_grow_LH_P2_1_0) -> 
      ((zip_lz_nl_lh (repeat_lh (_lh_grow_LH_P2_0_0 + 1))) (descendents_lh _lh_grow_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec printTour_lh _lh_printTour_arg1_0 =
  let rec strToInt_0 = (fun _lh_strToInt_arg1_0 _lh_strToInt_arg2_0 -> 
    (match _lh_strToInt_arg2_0 with
      | `LH_N -> 
        _lh_strToInt_arg1_0
      | `LH_C(_lh_strToInt_LH_C_0_0, _lh_strToInt_LH_C_1_0) -> 
        ((strToInt_0 ((10 * _lh_strToInt_arg1_0) + ((int_of_char _lh_strToInt_LH_C_0_0) - (int_of_char '0')))) _lh_strToInt_LH_C_1_0)
      | _ -> 
        (failwith "error")))
  and pp_1 = (fun _lh_pp_arg1_0 -> 
    (_lh_pp_arg1_0 pp_1))
  in (let rec _lh_matchIdent_0 = ((map_lh (strToInt_0 0)) _lh_printTour_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_printTour_LH_C_0_0, _lh_printTour_LH_C_1_0) -> 
        (match _lh_printTour_LH_C_1_0 with
          | `LH_C(_lh_printTour_LH_C_0_1, _lh_printTour_LH_C_1_1) -> 
            (match _lh_printTour_LH_C_1_1 with
              | `LH_N -> 
                (pp_1 ((take_lz_lh _lh_printTour_LH_C_0_1) (((depthSearch_lh (root_lh _lh_printTour_LH_C_0_0)) grow_lh) isFinished_lh)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec foldr_lh f_3 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_3, t_3) -> 
      ((f_3 h_3) (((foldr_lh f_3) i_0) t_3))
    | `LH_N -> 
      i_0);;
let rec myIsDigit_lh _lh_myIsDigit_arg1_0 =
  (let rec n_0 = (int_of_char _lh_myIsDigit_arg1_0) in
    ((n_0 >= 48) && (n_0 <= 57)));;
let rec testKnights_nofib_lh _lh_testKnights_nofib_arg1_0 =
  let rec all_digits_0 = (fun _lh_all_digits_arg1_0 -> 
    (((foldr_lh (fun _lh_funcomp_x_0 -> 
      ((fun a_0 b_0 -> 
        (a_0 && b_0)) (myIsDigit_lh _lh_funcomp_x_0)))) true) _lh_all_digits_arg1_0))
  and argsOk_0 = (fun _lh_argsOk_arg1_0 -> 
    (((length_lh _lh_argsOk_arg1_0) = 2) && (((foldr_lh (fun _lh_funcomp_x_1 -> 
      ((fun a_1 b_1 -> 
        (a_1 && b_1)) (all_digits_0 _lh_funcomp_x_1)))) true) _lh_argsOk_arg1_0)))
  and usageString_0 = (`LH_C('|', (`LH_C('U', (`LH_C('s', (`LH_C('a', (`LH_C('g', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('<', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C('>', (`LH_C(' ', (`LH_C('<', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('>', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  in (if (argsOk_0 _lh_testKnights_nofib_arg1_0) then
    (length_lh (printTour_lh _lh_testKnights_nofib_arg1_0))
  else
    ((failwith "error") usageString_0));;
end;;

