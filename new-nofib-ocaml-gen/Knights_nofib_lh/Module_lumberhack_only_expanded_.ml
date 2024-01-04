

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec myIsDigit_lh__d1 _lh_myIsDigit_arg1_0 =
  (let rec n_1 = (int_of_char _lh_myIsDigit_arg1_0) in
    ((n_1 >= 48) && (n_1 <= 57)));;
let rec foldr_lh__d1 f_5 i_1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_1, t_3_1) -> 
      ((f_5 h_3_1) (((foldr_lh__d1 f_5) i_1) t_3_1))
    | `LH_N -> 
      i_1);;
let rec foldr_lh__d2 f_4 i_0 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_8, t_2_8) -> 
      ((f_4 h_2_8) (((foldr_lh__d2 f_4) i_0) t_2_8))
    | `LH_N -> 
      i_0);;
let rec length_lh__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_3_0, t_3_0) -> 
      (1 + (length_lh__d1 t_3_0))
    | `LH_N -> 
      0);;
let rec mappend_lh__d3 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_2_3, t_2_3) -> 
      (`LH_C(h_2_3, ((mappend_lh__d3 t_2_3) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_lh__d1 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C(h_2_7, ((mappend_lh__d1 t_2_7) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec inquireFront_lh__d1 _lh_inquireFront_arg1_2 =
  (match _lh_inquireFront_arg1_2 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_2, _lh_inquireFront_LH_C_1_2) -> 
      _lh_inquireFront_LH_C_0_2
    | _ -> 
      (failwith "error"));;
let rec removeFront_lh__d2 _lh_removeFront_arg1_0 =
  (match _lh_removeFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_0, _lh_removeFront_LH_C_1_0) -> 
      _lh_removeFront_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec removeFront_lh__d1 _lh_removeFront_arg1_1 =
  (match _lh_removeFront_arg1_1 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_1, _lh_removeFront_LH_C_1_1) -> 
      _lh_removeFront_LH_C_1_1
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d5 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_lh__d5 t_2_1) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec addAllFront_lh__d1 _lh_addAllFront_arg1_1 _lh_addAllFront_arg2_1 =
  ((mappend_lh__d5 _lh_addAllFront_arg1_1) _lh_addAllFront_arg2_1);;
let rec inquireFront_lh__d2 _lh_inquireFront_arg1_1 =
  (match _lh_inquireFront_arg1_1 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_1, _lh_inquireFront_LH_C_1_1) -> 
      _lh_inquireFront_LH_C_0_1
    | _ -> 
      (failwith "error"));;
let rec inquireFront_lh__d3 _lh_inquireFront_arg1_0 =
  (match _lh_inquireFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_0, _lh_inquireFront_LH_C_1_0) -> 
      _lh_inquireFront_LH_C_0_0
    | _ -> 
      (failwith "error"));;
let rec depthSearch_lh__d1 _lh_depthSearch_arg1_0 _lh_depthSearch_arg2_0 _lh_depthSearch_arg3_0 =
  (if (let rec _lh_matchIdent_0 = _lh_depthSearch_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        true
      | _ -> 
        false)) then
    (lazy (`LH_N))
  else
    (if (_lh_depthSearch_arg3_0 (inquireFront_lh__d2 _lh_depthSearch_arg1_0)) then
      (lazy (`LH_C((inquireFront_lh__d1 _lh_depthSearch_arg1_0), (((depthSearch_lh__d1 (removeFront_lh__d2 _lh_depthSearch_arg1_0)) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0))))
    else
      (((depthSearch_lh__d1 ((addAllFront_lh__d1 (_lh_depthSearch_arg2_0 (inquireFront_lh__d3 _lh_depthSearch_arg1_0))) (removeFront_lh__d1 _lh_depthSearch_arg1_0))) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0)));;
let rec mappend_lh__d2 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend_lh__d2 t_2_6) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_lh__d4 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C(h_2_2, ((mappend_lh__d4 t_2_2) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec map_lh__d1 f_3 ls_6 =
  (match ls_6 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C((f_3 h_2_4), ((map_lh__d1 f_3) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1_d8 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d1_d8 t_6) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec addAllFront_lh__d2 _lh_addAllFront_arg1_0 _lh_addAllFront_arg2_0 =
  ((mappend_lh__d1_d8 _lh_addAllFront_arg1_0) _lh_addAllFront_arg2_0);;
let rec createBoard_lh__d1 _lh_createBoard_arg1_0 _lh_createBoard_arg2_0 =
  (`Board(_lh_createBoard_arg1_0, 1, _lh_createBoard_arg2_0, (`LH_C(_lh_createBoard_arg2_0, (`LH_N)))));;
let rec startTour_lh__d1 _lh_startTour_arg1_0 _lh_startTour_arg2_0 =
  (if ((_lh_startTour_arg2_0 mod 2) = 0) then
    ((createBoard_lh__d1 _lh_startTour_arg2_0) _lh_startTour_arg1_0)
  else
    ((failwith "error") (`LH_C('T', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec repeat_lh__d2 x_0 =
  (lazy (`LH_C(x_0, (repeat_lh__d2 x_0))));;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d2 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec createQueue_lh__d1 =
  (`LH_N);;
let rec copy_lh__d1 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_3, ((copy_lh__d1 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3))));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo_lh__d1 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec zipWith_lh__d1 f_2 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_1_7 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_2 hx_1) hy_1), (((zipWith_lh__d1 f_2) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl_lh__d2 xs_1_6 ys_1_6 =
  (match ys_1_6 with
    | `LH_C(hy_0, ty_0) -> 
      (match (Lazy.force xs_1_6) with
        | `LH_C(hx_0, tx_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lz_nl_lh__d2 tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec root_lh__d1 _lh_root_arg1_0 =
  ((addAllFront_lh__d2 ((zip_lz_nl_lh__d2 (repeat_lh__d2 (1 - (_lh_root_arg1_0 * _lh_root_arg1_0)))) (((zipWith_lh__d1 startTour_lh__d1) (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
          (match _lh_listcomp_fun_para_1_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_h_1_2)), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2)))
            | `LH_N -> 
              (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))) in
          (_lh_listcomp_fun_1_2 ((enumFromTo_lh__d1 1) _lh_root_arg1_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_1 ((enumFromTo_lh__d2 1) _lh_root_arg1_0)))) ((copy_lh__d1 (_lh_root_arg1_0 * _lh_root_arg1_0)) _lh_root_arg1_0)))) createQueue_lh__d1);;
let rec take_lz_lh__d1 n_0 ls_7 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_7) with
      | `LH_C(h_2_5, t_2_5) -> 
        (`LH_C(h_2_5, ((take_lz_lh__d1 (n_0 - 1)) t_2_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip_lz_nl_lh__d1 xs_1_8 ys_1_8 =
  (match ys_1_8 with
    | `LH_C(hy_2, ty_2) -> 
      (match (Lazy.force xs_1_8) with
        | `LH_C(hx_2, tx_2) -> 
          (`LH_C((`LH_P2(hx_2, hy_2)), ((zip_lz_nl_lh__d1 tx_2) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec firstPiece_lh__d1 _lh_firstPiece_arg1_2 =
  (match _lh_firstPiece_arg1_2 with
    | `Board(_lh_firstPiece_Board_0_2, _lh_firstPiece_Board_1_2, _lh_firstPiece_Board_2_2, _lh_firstPiece_Board_3_2) -> 
      _lh_firstPiece_Board_2_2
    | _ -> 
      (failwith "error"));;
let rec myInit_lh__d2 _lh_myInit_arg1_1 =
  (match _lh_myInit_arg1_1 with
    | `LH_C(_lh_myInit_LH_C_0_1, _lh_myInit_LH_C_1_1) -> 
      (match _lh_myInit_LH_C_1_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_1, (myInit_lh__d2 _lh_myInit_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec myLast_lh__d2 _lh_myLast_arg1_1 =
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
let rec deleteFirst_lh__d2 _lh_deleteFirst_arg1_2 =
  (match _lh_deleteFirst_arg1_2 with
    | `Board(_lh_deleteFirst_Board_0_2, _lh_deleteFirst_Board_1_2, _lh_deleteFirst_Board_2_2, _lh_deleteFirst_Board_3_2) -> 
      (let rec ts'_2 = (myInit_lh__d2 _lh_deleteFirst_Board_3_2) in
        (`Board(_lh_deleteFirst_Board_0_2, (_lh_deleteFirst_Board_1_2 - 1), (myLast_lh__d2 ts'_2), ts'_2)))
    | _ -> 
      (failwith "error"));;
let rec move_lh__d1 _lh_move_arg1_0 _lh_move_arg2_0 =
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
let rec sizeBoard_lh__d2 _lh_sizeBoard_arg1_0 =
  (match _lh_sizeBoard_arg1_0 with
    | `Board(_lh_sizeBoard_Board_0_0, _lh_sizeBoard_Board_1_0, _lh_sizeBoard_Board_2_0, _lh_sizeBoard_Board_3_0) -> 
      _lh_sizeBoard_Board_0_0
    | _ -> 
      (failwith "error"));;
let rec inList_lh__d1 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh__d1 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec isSquareFree_lh__d1 _lh_isSquareFree_arg1_0 _lh_isSquareFree_arg2_0 =
  (match _lh_isSquareFree_arg2_0 with
    | `Board(_lh_isSquareFree_Board_0_0, _lh_isSquareFree_Board_1_0, _lh_isSquareFree_Board_2_0, _lh_isSquareFree_Board_3_0) -> 
      (not ((inList_lh__d1 _lh_isSquareFree_arg1_0) _lh_isSquareFree_Board_3_0))
    | _ -> 
      (failwith "error"));;
let rec canMoveTo_lh__d2 _lh_canMoveTo_arg1_0 _lh_canMoveTo_arg2_0 =
  (match _lh_canMoveTo_arg1_0 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0) -> 
      (let rec sze_0 = (sizeBoard_lh__d2 _lh_canMoveTo_arg2_0) in
        (((((_lh_canMoveTo_LH_P2_0_0 >= 1) && (_lh_canMoveTo_LH_P2_0_0 <= sze_0)) && (_lh_canMoveTo_LH_P2_1_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_0 <= sze_0)) && ((isSquareFree_lh__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0))) _lh_canMoveTo_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec lastPiece_lh__d1 _lh_lastPiece_arg1_0 =
  (match _lh_lastPiece_arg1_0 with
    | `Board(_lh_lastPiece_Board_0_0, _lh_lastPiece_Board_1_0, _lh_lastPiece_Board_2_0, _lh_lastPiece_Board_3_0) -> 
      (match _lh_lastPiece_Board_3_0 with
        | `LH_C(_lh_lastPiece_LH_C_0_0, _lh_lastPiece_LH_C_1_0) -> 
          _lh_lastPiece_LH_C_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec canMove_lh__d2 _lh_canMove_arg1_0 _lh_canMove_arg2_0 =
  ((canMoveTo_lh__d2 ((move_lh__d1 _lh_canMove_arg2_0) (lastPiece_lh__d1 _lh_canMove_arg1_0))) _lh_canMove_arg1_0);;
let rec possibleMoves_lh__d2 _lh_possibleMoves_arg1_2 =
  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (if ((canMove_lh__d2 _lh_possibleMoves_arg1_2) _lh_listcomp_fun_ls_h_2) then
          (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
        else
          (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))));;
let rec possibleMoves_lh__d4 _lh_possibleMoves_arg1_0 =
  (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (if ((canMove_lh__d2 _lh_possibleMoves_arg1_0) _lh_listcomp_fun_ls_h_0) then
          (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
        else
          (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))));;
let rec map_lh__d3 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d3 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec addPiece_lh__d1 _lh_addPiece_arg1_0 _lh_addPiece_arg2_0 =
  (match _lh_addPiece_arg2_0 with
    | `Board(_lh_addPiece_Board_0_0, _lh_addPiece_Board_1_0, _lh_addPiece_Board_2_0, _lh_addPiece_Board_3_0) -> 
      (`Board(_lh_addPiece_Board_0_0, (_lh_addPiece_Board_1_0 + 1), _lh_addPiece_Board_2_0, (`LH_C(_lh_addPiece_arg1_0, _lh_addPiece_Board_3_0))))
    | _ -> 
      (failwith "error"));;
let rec moveKnight_lh__d1 _lh_moveKnight_arg1_0 _lh_moveKnight_arg2_0 =
  ((addPiece_lh__d1 ((move_lh__d1 _lh_moveKnight_arg2_0) (lastPiece_lh__d1 _lh_moveKnight_arg1_0))) _lh_moveKnight_arg1_0);;
let rec allDescend_lh__d1 _lh_allDescend_arg1_1 =
  ((map_lh__d3 (moveKnight_lh__d1 _lh_allDescend_arg1_1)) (possibleMoves_lh__d4 _lh_allDescend_arg1_1));;
let rec length_lh__d5 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh__d5 t_2))
    | `LH_N -> 
      0);;
let rec descAndNo_lh__d1 _lh_descAndNo_arg1_1 =
  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (`LH_C((`LH_P2((length_lh__d5 (possibleMoves_lh__d2 (deleteFirst_lh__d2 _lh_listcomp_fun_ls_h_5))), _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 (allDescend_lh__d1 _lh_descAndNo_arg1_1)));;
let rec map_lh__d2 f_1 ls_5 =
  (match ls_5 with
    | `LH_C(h_2_0, t_2_0) -> 
      (`LH_C((f_1 h_2_0), ((map_lh__d2 f_1) t_2_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mySnd_lh__d1 _lh_mySnd_arg1_0 =
  (match _lh_mySnd_arg1_0 with
    | `LH_P2(_lh_mySnd_LH_P2_0_0, _lh_mySnd_LH_P2_1_0) -> 
      _lh_mySnd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d9 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1_d9 t_5) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec intChessSetComp_lh__d2 _lh_intChessSetComp_arg1_0 _lh_intChessSetComp_arg2_0 =
  (match _lh_intChessSetComp_arg1_0 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_0, _lh_intChessSetComp_LH_P2_1_0) -> 
      (match _lh_intChessSetComp_arg2_0 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_1, _lh_intChessSetComp_LH_P2_1_1) -> 
          (_lh_intChessSetComp_LH_P2_0_0 < _lh_intChessSetComp_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intChessSetComp_lh__d1 _lh_intChessSetComp_arg1_1 _lh_intChessSetComp_arg2_1 =
  (match _lh_intChessSetComp_arg1_1 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_2, _lh_intChessSetComp_LH_P2_1_2) -> 
      (match _lh_intChessSetComp_arg2_1 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_3, _lh_intChessSetComp_LH_P2_1_3) -> 
          (_lh_intChessSetComp_LH_P2_0_2 < _lh_intChessSetComp_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d2_d0 t_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec quickSortIntChessSet_lh__d1 _lh_quickSortIntChessSet_arg1_0 =
  (match _lh_quickSortIntChessSet_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntChessSet_LH_C_0_0, _lh_quickSortIntChessSet_LH_C_1_0) -> 
      ((mappend_lh__d1_d9 ((mappend_lh__d2_d0 (quickSortIntChessSet_lh__d1 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
        (match _lh_listcomp_fun_para_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
            (if ((intChessSetComp_lh__d2 _lh_listcomp_fun_ls_h_7) _lh_quickSortIntChessSet_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_7, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
            else
              (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_7 _lh_quickSortIntChessSet_LH_C_1_0)))) (`LH_C(_lh_quickSortIntChessSet_LH_C_0_0, (`LH_N))))) (quickSortIntChessSet_lh__d1 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
            (if (not ((intChessSetComp_lh__d1 _lh_listcomp_fun_ls_h_8) _lh_quickSortIntChessSet_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
            else
              (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8 _lh_quickSortIntChessSet_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec allDescend_lh__d2 _lh_allDescend_arg1_0 =
  ((map_lh__d3 (moveKnight_lh__d1 _lh_allDescend_arg1_0)) (possibleMoves_lh__d4 _lh_allDescend_arg1_0));;
let rec possibleMoves_lh__d3 _lh_possibleMoves_arg1_1 =
  (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1) _lh_listcomp_fun_ls_h_1) then
          (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
        else
          (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))));;
let rec myLast_lh__d3 _lh_myLast_arg1_0 =
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
let rec myInit_lh__d3 _lh_myInit_arg1_0 =
  (match _lh_myInit_arg1_0 with
    | `LH_C(_lh_myInit_LH_C_0_0, _lh_myInit_LH_C_1_0) -> 
      (match _lh_myInit_LH_C_1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_0, (myInit_lh__d3 _lh_myInit_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec deleteFirst_lh__d4 _lh_deleteFirst_arg1_0 =
  (match _lh_deleteFirst_arg1_0 with
    | `Board(_lh_deleteFirst_Board_0_0, _lh_deleteFirst_Board_1_0, _lh_deleteFirst_Board_2_0, _lh_deleteFirst_Board_3_0) -> 
      (let rec ts'_0 = (myInit_lh__d3 _lh_deleteFirst_Board_3_0) in
        (`Board(_lh_deleteFirst_Board_0_0, (_lh_deleteFirst_Board_1_0 - 1), (myLast_lh__d3 ts'_0), ts'_0)))
    | _ -> 
      (failwith "error"));;
let rec length_lh__d6 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh__d6 t_1))
    | `LH_N -> 
      0);;
let rec descAndNo_lh__d2 _lh_descAndNo_arg1_0 =
  (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (`LH_C((`LH_P2((length_lh__d6 (possibleMoves_lh__d3 (deleteFirst_lh__d4 _lh_listcomp_fun_ls_h_4))), _lh_listcomp_fun_ls_h_4)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4 (allDescend_lh__d2 _lh_descAndNo_arg1_0)));;
let rec singleDescend_lh__d1 _lh_singleDescend_arg1_0 =
  (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `LH_P2(_lh_singleDescend_LH_P2_0_0, _lh_singleDescend_LH_P2_1_0) -> 
            (if (_lh_singleDescend_LH_P2_0_0 = 1) then
              (`LH_C(_lh_singleDescend_LH_P2_1_0, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
            else
              (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
          | _ -> 
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 (descAndNo_lh__d2 _lh_singleDescend_arg1_0)));;
let rec myLast_lh__d1 _lh_myLast_arg1_2 =
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
let rec myInit_lh__d1 _lh_myInit_arg1_2 =
  (match _lh_myInit_arg1_2 with
    | `LH_C(_lh_myInit_LH_C_0_2, _lh_myInit_LH_C_1_2) -> 
      (match _lh_myInit_LH_C_1_2 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_myInit_LH_C_0_2, (myInit_lh__d1 _lh_myInit_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec deleteFirst_lh__d1 _lh_deleteFirst_arg1_3 =
  (match _lh_deleteFirst_arg1_3 with
    | `Board(_lh_deleteFirst_Board_0_3, _lh_deleteFirst_Board_1_3, _lh_deleteFirst_Board_2_3, _lh_deleteFirst_Board_3_3) -> 
      (let rec ts'_3 = (myInit_lh__d1 _lh_deleteFirst_Board_3_3) in
        (`Board(_lh_deleteFirst_Board_0_3, (_lh_deleteFirst_Board_1_3 - 1), (myLast_lh__d1 ts'_3), ts'_3)))
    | _ -> 
      (failwith "error"));;
let rec canMoveTo_lh__d1 _lh_canMoveTo_arg1_1 _lh_canMoveTo_arg2_1 =
  (match _lh_canMoveTo_arg1_1 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1) -> 
      (let rec sze_1 = (sizeBoard_lh__d2 _lh_canMoveTo_arg2_1) in
        (((((_lh_canMoveTo_LH_P2_0_1 >= 1) && (_lh_canMoveTo_LH_P2_0_1 <= sze_1)) && (_lh_canMoveTo_LH_P2_1_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_1 <= sze_1)) && ((isSquareFree_lh__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1))) _lh_canMoveTo_arg2_1)))
    | _ -> 
      (failwith "error"));;
let rec firstPiece_lh__d2 _lh_firstPiece_arg1_1 =
  (match _lh_firstPiece_arg1_1 with
    | `Board(_lh_firstPiece_Board_0_1, _lh_firstPiece_Board_1_1, _lh_firstPiece_Board_2_1, _lh_firstPiece_Board_3_1) -> 
      _lh_firstPiece_Board_2_1
    | _ -> 
      (failwith "error"));;
let rec canJumpFirst_lh__d1 _lh_canJumpFirst_arg1_1 =
  ((canMoveTo_lh__d1 (firstPiece_lh__d2 _lh_canJumpFirst_arg1_1)) (deleteFirst_lh__d1 _lh_canJumpFirst_arg1_1));;
let rec length_lh__d3 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_9, t_1_9) -> 
      (1 + (length_lh__d3 t_1_9))
    | `LH_N -> 
      0);;
let rec canMove_lh__d1 _lh_canMove_arg1_1 _lh_canMove_arg2_1 =
  ((canMoveTo_lh__d2 ((move_lh__d1 _lh_canMove_arg2_1) (lastPiece_lh__d1 _lh_canMove_arg1_1))) _lh_canMove_arg1_1);;
let rec possibleMoves_lh__d1 _lh_possibleMoves_arg1_3 =
  (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (if ((canMove_lh__d1 _lh_possibleMoves_arg1_3) _lh_listcomp_fun_ls_h_3) then
          (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
        else
          (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 (`LH_C((`UL), (`LH_C((`UR), (`LH_C((`DL), (`LH_C((`DR), (`LH_C((`LU), (`LH_C((`LD), (`LH_C((`RU), (`LH_C((`RD), (`LH_N)))))))))))))))))));;
let rec length_lh__d4 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_lh__d4 t_3))
    | `LH_N -> 
      0);;
let rec deadEnd_lh__d1 _lh_deadEnd_arg1_0 =
  ((length_lh__d4 (possibleMoves_lh__d1 _lh_deadEnd_arg1_0)) = 0);;
let rec descendents_lh__d1 _lh_descendents_arg1_0 =
  (if ((canJumpFirst_lh__d1 _lh_descendents_arg1_0) && (deadEnd_lh__d1 ((addPiece_lh__d1 (firstPiece_lh__d1 _lh_descendents_arg1_0)) _lh_descendents_arg1_0))) then
    (`LH_N)
  else
    (let rec singles_0 = (singleDescend_lh__d1 _lh_descendents_arg1_0) in
      (let rec scrut_0 = (length_lh__d3 singles_0) in
        (if (scrut_0 = 0) then
          ((map_lh__d2 mySnd_lh__d1) (quickSortIntChessSet_lh__d1 (descAndNo_lh__d1 _lh_descendents_arg1_0)))
        else
          (if (scrut_0 = 1) then
            singles_0
          else
            (`LH_N))))));;
let rec repeat_lh__d1 x_1 =
  (lazy (`LH_C(x_1, (repeat_lh__d1 x_1))));;
let rec grow_lh__d1 _lh_grow_arg1_0 =
  (match _lh_grow_arg1_0 with
    | `LH_P2(_lh_grow_LH_P2_0_0, _lh_grow_LH_P2_1_0) -> 
      ((zip_lz_nl_lh__d1 (repeat_lh__d1 (_lh_grow_LH_P2_0_0 + 1))) (descendents_lh__d1 _lh_grow_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec sizeBoard_lh__d1 _lh_sizeBoard_arg1_1 =
  (match _lh_sizeBoard_arg1_1 with
    | `Board(_lh_sizeBoard_Board_0_1, _lh_sizeBoard_Board_1_1, _lh_sizeBoard_Board_2_1, _lh_sizeBoard_Board_3_1) -> 
      _lh_sizeBoard_Board_0_1
    | _ -> 
      (failwith "error"));;
let rec noPieces_lh__d1 _lh_noPieces_arg1_0 =
  (match _lh_noPieces_arg1_0 with
    | `Board(_lh_noPieces_Board_0_0, _lh_noPieces_Board_1_0, _lh_noPieces_Board_2_0, _lh_noPieces_Board_3_0) -> 
      _lh_noPieces_Board_1_0
    | _ -> 
      (failwith "error"));;
let rec firstPiece_lh__d3 _lh_firstPiece_arg1_0 =
  (match _lh_firstPiece_arg1_0 with
    | `Board(_lh_firstPiece_Board_0_0, _lh_firstPiece_Board_1_0, _lh_firstPiece_Board_2_0, _lh_firstPiece_Board_3_0) -> 
      _lh_firstPiece_Board_2_0
    | _ -> 
      (failwith "error"));;
let rec deleteFirst_lh__d3 _lh_deleteFirst_arg1_1 =
  (match _lh_deleteFirst_arg1_1 with
    | `Board(_lh_deleteFirst_Board_0_1, _lh_deleteFirst_Board_1_1, _lh_deleteFirst_Board_2_1, _lh_deleteFirst_Board_3_1) -> 
      (let rec ts'_1 = (myInit_lh__d3 _lh_deleteFirst_Board_3_1) in
        (`Board(_lh_deleteFirst_Board_0_1, (_lh_deleteFirst_Board_1_1 - 1), (myLast_lh__d3 ts'_1), ts'_1)))
    | _ -> 
      (failwith "error"));;
let rec canJumpFirst_lh__d2 _lh_canJumpFirst_arg1_0 =
  ((canMoveTo_lh__d2 (firstPiece_lh__d3 _lh_canJumpFirst_arg1_0)) (deleteFirst_lh__d3 _lh_canJumpFirst_arg1_0));;
let rec tourFinished_lh__d1 _lh_tourFinished_arg1_0 =
  (let rec sze_2 = (sizeBoard_lh__d1 _lh_tourFinished_arg1_0) in
    (((noPieces_lh__d1 _lh_tourFinished_arg1_0) = (sze_2 * sze_2)) && (canJumpFirst_lh__d2 _lh_tourFinished_arg1_0)));;
let rec isFinished_lh__d1 _lh_isFinished_arg1_0 =
  (match _lh_isFinished_arg1_0 with
    | `LH_P2(_lh_isFinished_LH_P2_0_0, _lh_isFinished_LH_P2_1_0) -> 
      (tourFinished_lh__d1 _lh_isFinished_LH_P2_1_0)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d8 t_1_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec copy_lh__d4 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh__d4 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec spaces_lh__d3 _lh_spaces_arg1_0 _lh_spaces_arg2_0 =
  (let rec logTen_0 = (fun _lh_logTen_arg1_0 -> 
    (match _lh_logTen_arg1_0 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_0 (_lh_logTen_arg1_0 / 10))))) in
    ((copy_lh__d4 (((logTen_0 _lh_spaces_arg1_0) - (logTen_0 _lh_spaces_arg2_0)) + 1)) ' '));;
let rec mappend_lh__d1_d4 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d1_d4 t_1_0) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend_lh__d6 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_lh__d6 t_1_8) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_lh__d1_d3 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C(h_1_1, ((mappend_lh__d1_d3 t_1_1) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_lh__d9 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d9 t_1_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_lh__d1_d5 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d1_d5 t_9) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_lh__d1_d2 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_lh__d1_d2 t_1_2) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec copy_lh__d2 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_2, ((copy_lh__d2 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2))));;
let rec spaces_lh__d1 _lh_spaces_arg1_2 _lh_spaces_arg2_2 =
  (let rec logTen_2 = (fun _lh_logTen_arg1_2 -> 
    (match _lh_logTen_arg1_2 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_2 (_lh_logTen_arg1_2 / 10))))) in
    ((copy_lh__d2 (((logTen_2 _lh_spaces_arg1_2) - (logTen_2 _lh_spaces_arg2_2)) + 1)) ' '));;
let rec mappend_lh__d1_d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend_lh__d1_d0 t_1_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_lh__d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend_lh__d7 t_1_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_lh__d1_d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C(h_1_3, ((mappend_lh__d1_d1 t_1_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec copy_lh__d3 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy_lh__d3 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec spaces_lh__d2 _lh_spaces_arg1_1 _lh_spaces_arg2_1 =
  (let rec logTen_1 = (fun _lh_logTen_arg1_1 -> 
    (match _lh_logTen_arg1_1 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_1 (_lh_logTen_arg1_1 / 10))))) in
    ((copy_lh__d3 (((logTen_1 _lh_spaces_arg1_1) - (logTen_1 _lh_spaces_arg2_1)) + 1)) ' '));;
let rec printBoard_lh__d1 _lh_printBoard_arg1_0 _lh_printBoard_arg2_0 _lh_printBoard_arg3_0 =
  (match _lh_printBoard_arg3_0 with
    | `LH_N -> 
      (if (_lh_printBoard_arg2_0 > (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) then
        (`LH_N)
      else
        (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
          ((mappend_lh__d1_d2 ((mappend_lh__d1_d0 (`LH_C('*', (`LH_N)))) ((spaces_lh__d1 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
        else
          (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
            ((mappend_lh__d1_d5 (`LH_C('*', (`LH_C('|', (`LH_N)))))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
          else
            ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_printBoard_LH_C_0_0, _lh_printBoard_LH_C_1_0) -> 
      (match _lh_printBoard_LH_C_0_0 with
        | `LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0) -> 
          (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0)) then
            ((mappend_lh__d1_d1 ((mappend_lh__d1_d4 (string_of_int _lh_printBoard_LH_P2_1_0)) (`LH_C('|', (`LH_N))))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
          else
            (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0)) then
              ((mappend_lh__d6 ((mappend_lh__d8 (string_of_int _lh_printBoard_LH_P2_1_0)) ((spaces_lh__d3 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) _lh_printBoard_LH_P2_1_0))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
            else
              (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
                ((mappend_lh__d7 ((mappend_lh__d1_d3 (`LH_C('*', (`LH_N)))) ((spaces_lh__d2 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
              else
                (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
                  ((mappend_lh__d9 (`LH_C('*', (`LH_C('|', (`LH_N)))))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
                else
                  ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('-', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d6 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d1_d6 t_8) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec intintComp_lh__d2 _lh_intintComp_arg1_0 _lh_intintComp_arg2_0 =
  (match _lh_intintComp_arg1_0 with
    | `LH_P2(_lh_intintComp_LH_P2_0_0, _lh_intintComp_LH_P2_1_0) -> 
      (match _lh_intintComp_arg2_0 with
        | `LH_P2(_lh_intintComp_LH_P2_0_1, _lh_intintComp_LH_P2_1_1) -> 
          ((_lh_intintComp_LH_P2_0_0 < _lh_intintComp_LH_P2_0_1) || ((_lh_intintComp_LH_P2_0_0 = _lh_intintComp_LH_P2_0_1) && (_lh_intintComp_LH_P2_1_0 < _lh_intintComp_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intintComp_lh__d1 _lh_intintComp_arg1_1 _lh_intintComp_arg2_1 =
  (match _lh_intintComp_arg1_1 with
    | `LH_P2(_lh_intintComp_LH_P2_0_2, _lh_intintComp_LH_P2_1_2) -> 
      (match _lh_intintComp_arg2_1 with
        | `LH_P2(_lh_intintComp_LH_P2_0_3, _lh_intintComp_LH_P2_1_3) -> 
          ((_lh_intintComp_LH_P2_0_2 < _lh_intintComp_LH_P2_0_3) || ((_lh_intintComp_LH_P2_0_2 = _lh_intintComp_LH_P2_0_3) && (_lh_intintComp_LH_P2_1_2 < _lh_intintComp_LH_P2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d7 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d1_d7 t_7) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec quickSortIntInt_lh__d1 _lh_quickSortIntInt_arg1_0 =
  (match _lh_quickSortIntInt_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntInt_LH_C_0_0, _lh_quickSortIntInt_LH_C_1_0) -> 
      ((mappend_lh__d1_d7 ((mappend_lh__d1_d6 (quickSortIntInt_lh__d1 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
            (if ((intintComp_lh__d2 _lh_listcomp_fun_ls_h_9) _lh_quickSortIntInt_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_9, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
            else
              (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9 _lh_quickSortIntInt_LH_C_1_0)))) (`LH_C(_lh_quickSortIntInt_LH_C_0_0, (`LH_N))))) (quickSortIntInt_lh__d1 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
        (match _lh_listcomp_fun_para_1_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
            (if (not ((intintComp_lh__d1 _lh_listcomp_fun_ls_h_1_0) _lh_quickSortIntInt_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_0, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0)))
            else
              (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_0 _lh_quickSortIntInt_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec assignMoveNo_lh__d1 _lh_assignMoveNo_arg1_0 _lh_assignMoveNo_arg2_0 _lh_assignMoveNo_arg3_0 =
  (match _lh_assignMoveNo_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_assignMoveNo_LH_C_0_0, _lh_assignMoveNo_LH_C_1_0) -> 
      (match _lh_assignMoveNo_LH_C_0_0 with
        | `LH_P2(_lh_assignMoveNo_LH_P2_0_0, _lh_assignMoveNo_LH_P2_1_0) -> 
          (`LH_C((`LH_P2((((_lh_assignMoveNo_LH_P2_1_0 - 1) * _lh_assignMoveNo_arg2_0) + _lh_assignMoveNo_LH_P2_0_0), _lh_assignMoveNo_arg3_0)), (((assignMoveNo_lh__d1 _lh_assignMoveNo_LH_C_1_0) _lh_assignMoveNo_arg2_0) (_lh_assignMoveNo_arg3_0 - 1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec showChessSet_lh__d1 _lh_showChessSet_arg1_0 =
  (match _lh_showChessSet_arg1_0 with
    | `Board(_lh_showChessSet_Board_0_0, _lh_showChessSet_Board_1_0, _lh_showChessSet_Board_2_0, _lh_showChessSet_Board_3_0) -> 
      (let rec sortedTrail_0 = (quickSortIntInt_lh__d1 (((assignMoveNo_lh__d1 _lh_showChessSet_Board_3_0) _lh_showChessSet_Board_0_0) _lh_showChessSet_Board_1_0)) in
        (((printBoard_lh__d1 _lh_showChessSet_Board_0_0) 1) sortedTrail_0))
    | _ -> 
      (failwith "error"));;
let rec printTour_lh__d1 _lh_printTour_arg1_0 =
  let rec strToInt_0 = (fun _lh_strToInt_arg1_0 _lh_strToInt_arg2_0 -> 
    (match _lh_strToInt_arg2_0 with
      | `LH_N -> 
        _lh_strToInt_arg1_0
      | `LH_C(_lh_strToInt_LH_C_0_0, _lh_strToInt_LH_C_1_0) -> 
        ((strToInt_0 ((10 * _lh_strToInt_arg1_0) + ((int_of_char _lh_strToInt_LH_C_0_0) - (int_of_char '0')))) _lh_strToInt_LH_C_1_0)
      | _ -> 
        (failwith "error")))
  and pp_0 = (fun _lh_pp_arg1_0 -> 
    (match _lh_pp_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_pp_LH_C_0_0, _lh_pp_LH_C_1_0) -> 
        (match _lh_pp_LH_C_0_0 with
          | `LH_P2(_lh_pp_LH_P2_0_0, _lh_pp_LH_P2_1_0) -> 
            ((mappend_lh__d4 ((mappend_lh__d2 ((mappend_lh__d1 ((mappend_lh__d3 (`LH_C('|', (`LH_C('K', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))) (string_of_int _lh_pp_LH_P2_0_0))) (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('k', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('s', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))) (showChessSet_lh__d1 _lh_pp_LH_P2_1_0))) (pp_0 _lh_pp_LH_C_1_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  in (let rec _lh_matchIdent_1 = ((map_lh__d1 (strToInt_0 0)) _lh_printTour_arg1_0) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_printTour_LH_C_0_0, _lh_printTour_LH_C_1_0) -> 
        (match _lh_printTour_LH_C_1_0 with
          | `LH_C(_lh_printTour_LH_C_0_1, _lh_printTour_LH_C_1_1) -> 
            (match _lh_printTour_LH_C_1_1 with
              | `LH_N -> 
                (pp_0 ((take_lz_lh__d1 _lh_printTour_LH_C_0_1) (((depthSearch_lh__d1 (root_lh__d1 _lh_printTour_LH_C_0_0)) grow_lh__d1) isFinished_lh__d1)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec length_lh__d2 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_9, t_2_9) -> 
      (1 + (length_lh__d2 t_2_9))
    | `LH_N -> 
      0);;
let rec testKnights_nofib_lh__d1 _lh_testKnights_nofib_arg1_0 =
  let rec all_digits_0 = (fun _lh_all_digits_arg1_0 -> 
    (((foldr_lh__d1 (fun _lh_funcomp_x_0 -> 
      ((fun a_2 b_2 -> 
        (a_2 && b_2)) (myIsDigit_lh__d1 _lh_funcomp_x_0)))) true) _lh_all_digits_arg1_0))
  and argsOk_0 = (fun _lh_argsOk_arg1_0 -> 
    (((length_lh__d1 _lh_argsOk_arg1_0) = 2) && (((foldr_lh__d2 (fun _lh_funcomp_x_1 -> 
      ((fun a_3 b_3 -> 
        (a_3 && b_3)) (all_digits_0 _lh_funcomp_x_1)))) true) _lh_argsOk_arg1_0)))
  and usageString_0 = (`LH_C('|', (`LH_C('U', (`LH_C('s', (`LH_C('a', (`LH_C('g', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('i', (`LH_C('g', (`LH_C('h', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('<', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C('>', (`LH_C(' ', (`LH_C('<', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('>', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  in (if (argsOk_0 _lh_testKnights_nofib_arg1_0) then
    (length_lh__d2 (printTour_lh__d1 _lh_testKnights_nofib_arg1_0))
  else
    ((failwith "error") usageString_0));;
end;;

