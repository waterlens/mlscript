

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec myIsDigit_lh__d1 _lh_myIsDigit_arg1_0 =
  (let rec n_0 = (int_of_char _lh_myIsDigit_arg1_0) in
    ((n_0 >= 48) && (n_0 <= 57)));;
let rec foldr_lh__d1 f_2 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_4_9, t_7_3) -> 
      ((f_2 h_4_9) (((foldr_lh__d1 f_2) i_0) t_7_3))
    | `LH_N -> 
      i_0);;
let rec foldr_lh__d2 f_3 i_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_5_0, t_7_4) -> 
      ((f_3 h_5_0) (((foldr_lh__d2 f_3) i_1) t_7_4))
    | `LH_N -> 
      i_1);;
let rec length_lh__d1 ls_6 =
  (match ls_6 with
    | `LH_C(h_6_8, t_9_3) -> 
      (1 + (length_lh__d1 t_9_3))
    | `LH_N -> 
      0);;
let rec mappend_lh__d3 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec mappend_lh__d2 xs_9 ys_5_9 =
  (xs_9 ys_5_9);;
let rec mappend_lh__d1 xs_2 ys_7 =
  (match xs_2 with
    | `LH_C(h_4, t_2_8) -> 
      (let rec t_2_9 = ((mappend_lh__d1 t_2_8) ys_7) in
        (let rec h_5 = h_4 in
          (fun ys_8 -> 
            (`LH_C(h_5, ((mappend_lh__d2 t_2_9) ys_8))))))
    | `LH_N -> 
      ys_7);;
let rec inquireFront_lh__d1 _lh_inquireFront_arg1_0 =
  (match _lh_inquireFront_arg1_0 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('q', (`LH_C('u', (`LH_C('i', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_inquireFront_LH_C_0_0, _lh_inquireFront_LH_C_1_0) -> 
      _lh_inquireFront_LH_C_0_0
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d5 xs_1_0 ys_6_0 =
  (xs_1_0 ys_6_0);;
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
let rec take_lz_lh__d1 n_3 ls_9 =
  (if (n_3 > 0) then
    ((Lazy.force ls_9) n_3)
  else
    (fun pp_3 _lh_dummy_2_9 -> 
      0));;
let rec inquireFront_lh__d3 _lh_inquireFront_arg1_2 =
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
let rec length_lh__d2 ls_1_0 =
  (ls_1_0 99);;
let rec mappend_lh__d4 xs_1_8 ys_7_1 =
  (match xs_1_8 with
    | `LH_C(h_6_5, t_8_9) -> 
      (let rec t_9_0 = ((mappend_lh__d4 t_8_9) ys_7_1) in
        (fun _lh_dummy_2_8 -> 
          (1 + (length_lh__d2 t_9_0))))
    | `LH_N -> 
      ys_7_1);;
let rec removeFront_lh__d1 _lh_removeFront_arg1_1 =
  (match _lh_removeFront_arg1_1 with
    | `LH_N -> 
      ((failwith "error") (`LH_C('C', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('r', (`LH_C('o', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('Q', (`LH_C('u', (`LH_C('e', (`LH_C('u', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_removeFront_LH_C_0_1, _lh_removeFront_LH_C_1_1) -> 
      _lh_removeFront_LH_C_1_1
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d6 xs_1_4 ys_6_6 =
  (xs_1_4 ys_6_6);;
let rec mappend_lh__d8 xs_4 ys_1_0 =
  (match xs_4 with
    | `LH_C(h_6, t_3_0) -> 
      (let rec t_3_1 = ((mappend_lh__d8 t_3_0) ys_1_0) in
        (let rec h_7 = h_6 in
          (fun ys_1_1 -> 
            (`LH_C(h_7, ((mappend_lh__d6 t_3_1) ys_1_1))))))
    | `LH_N -> 
      ys_1_0);;
let rec copy_lh__d4 _lh_copy_arg1_0 _lh_copy_arg2_0 _lh_popOutId_0_1 =
  (if (_lh_copy_arg1_0 <= 0) then
    _lh_popOutId_0_1
  else
    (let rec t_2_6 = ((copy_lh__d4 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_2 = _lh_copy_arg2_0 in
        (`LH_C(h_2, ((mappend_lh__d6 t_2_6) _lh_popOutId_0_1))))));;
let rec spaces_lh__d3 _lh_spaces_arg1_0 _lh_spaces_arg2_0 =
  (let rec logTen_0 = (fun _lh_logTen_arg1_0 -> 
    (match _lh_logTen_arg1_0 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_0 (_lh_logTen_arg1_0 / 10))))) in
    ((copy_lh__d4 (((logTen_0 _lh_spaces_arg1_0) - (logTen_0 _lh_spaces_arg2_0)) + 1)) ' '));;
let rec mappend_lh__d1_d1 xs_1_5 ys_6_7 =
  (xs_1_5 ys_6_7);;
let rec mappend_lh__d1_d4 xs_1_3 ys_6_4 =
  (match xs_1_3 with
    | `LH_C(h_5_2, t_7_6) -> 
      (let rec t_7_7 = ((mappend_lh__d1_d4 t_7_6) ys_6_4) in
        (let rec h_5_3 = h_5_2 in
          (fun ys_6_5 -> 
            (`LH_C(h_5_3, ((mappend_lh__d1_d1 t_7_7) ys_6_5))))))
    | `LH_N -> 
      ys_6_4);;
let rec mappend_lh__d1_d3 xs_1_7 ys_7_0 =
  (xs_1_7 ys_7_0);;
let rec mappend_lh__d9 xs_1_9 ys_7_2 =
  (xs_1_9 ys_7_2);;
let rec mappend_lh__d1_d5 xs_2_0 ys_7_3 =
  (xs_2_0 ys_7_3);;
let rec mappend_lh__d1_d2 xs_2_4 ys_9_8 =
  (xs_2_4 ys_9_8);;
let rec copy_lh__d2 _lh_copy_arg1_2 _lh_copy_arg2_2 _lh_popOutId_0_4 =
  (if (_lh_copy_arg1_2 <= 0) then
    _lh_popOutId_0_4
  else
    (let rec t_9_4 = ((copy_lh__d2 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
      (let rec h_6_9 = _lh_copy_arg2_2 in
        (`LH_C(h_6_9, ((mappend_lh__d1_d2 t_9_4) _lh_popOutId_0_4))))));;
let rec spaces_lh__d1 _lh_spaces_arg1_2 _lh_spaces_arg2_2 =
  (let rec logTen_2 = (fun _lh_logTen_arg1_2 -> 
    (match _lh_logTen_arg1_2 with
      | 0 -> 
        0
      | _ -> 
        (1 + (logTen_2 (_lh_logTen_arg1_2 / 10))))) in
    ((copy_lh__d2 (((logTen_2 _lh_spaces_arg1_2) - (logTen_2 _lh_spaces_arg2_2)) + 1)) ' '));;
let rec mappend_lh__d1_d0 xs_7 ys_5_7 =
  (xs_7 ys_5_7);;
let rec mappend_lh__d7 xs_8 ys_5_8 =
  (xs_8 ys_5_8);;
let rec copy_lh__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 _lh_popOutId_0_5 =
  (if (_lh_copy_arg1_3 <= 0) then
    _lh_popOutId_0_5
  else
    (let rec t_9_6 = ((copy_lh__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
      (let rec h_7_1 = _lh_copy_arg2_3 in
        (`LH_C(h_7_1, ((mappend_lh__d7 t_9_6) _lh_popOutId_0_5))))));;
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
          ((mappend_lh__d1_d2 ((mappend_lh__d1_d0 (let rec t_9_7 = (fun ys_8_3 -> 
            ys_8_3) in
            (let rec h_7_2 = '*' in
              (fun ys_8_4 -> 
                (let rec t_9_8 = ((mappend_lh__d1_d0 t_9_7) ys_8_4) in
                  (let rec h_7_3 = h_7_2 in
                    (fun ys_8_5 -> 
                      (`LH_C(h_7_3, ((mappend_lh__d1_d2 t_9_8) ys_8_5)))))))))) ((spaces_lh__d1 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
        else
          (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
            ((mappend_lh__d1_d5 (let rec t_9_9 = (let rec t_1_0_0 = (fun ys_8_6 -> 
              ys_8_6) in
              (let rec h_7_4 = '|' in
                (fun ys_8_7 -> 
                  (`LH_C(h_7_4, ((mappend_lh__d1_d5 t_1_0_0) ys_8_7)))))) in
              (let rec h_7_5 = '*' in
                (fun ys_8_8 -> 
                  (`LH_C(h_7_5, ((mappend_lh__d1_d5 t_9_9) ys_8_8))))))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_N)))
          else
            ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | `LH_C(_lh_printBoard_LH_C_0_0, _lh_printBoard_LH_C_1_0) -> 
      (match _lh_printBoard_LH_C_0_0 with
        | `LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0) -> 
          (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0)) then
            ((mappend_lh__d1_d1 ((mappend_lh__d1_d4 (string_of_int _lh_printBoard_LH_P2_1_0)) (let rec t_1_0_1 = (fun ys_8_9 -> 
              ys_8_9) in
              (let rec h_7_6 = '|' in
                (fun ys_9_0 -> 
                  (`LH_C(h_7_6, ((mappend_lh__d1_d1 t_1_0_1) ys_9_0)))))))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
          else
            (if ((_lh_printBoard_LH_P2_0_0 = _lh_printBoard_arg2_0) && ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0)) then
              ((mappend_lh__d6 ((mappend_lh__d8 (string_of_int _lh_printBoard_LH_P2_1_0)) ((spaces_lh__d3 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) _lh_printBoard_LH_P2_1_0))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) _lh_printBoard_LH_C_1_0))
            else
              (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) <> 0) then
                ((mappend_lh__d7 ((mappend_lh__d1_d3 (let rec t_1_0_2 = (fun ys_9_1 -> 
                  ys_9_1) in
                  (let rec h_7_7 = '*' in
                    (fun ys_9_2 -> 
                      (let rec t_1_0_3 = ((mappend_lh__d1_d3 t_1_0_2) ys_9_2) in
                        (let rec h_7_8 = h_7_7 in
                          (fun ys_9_3 -> 
                            (`LH_C(h_7_8, ((mappend_lh__d7 t_1_0_3) ys_9_3)))))))))) ((spaces_lh__d2 (_lh_printBoard_arg1_0 * _lh_printBoard_arg1_0)) 1))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
              else
                (if ((_lh_printBoard_arg2_0 mod _lh_printBoard_arg1_0) = 0) then
                  ((mappend_lh__d9 (let rec t_1_0_4 = (let rec t_1_0_5 = (fun ys_9_4 -> 
                    ys_9_4) in
                    (let rec h_7_9 = '|' in
                      (fun ys_9_5 -> 
                        (`LH_C(h_7_9, ((mappend_lh__d9 t_1_0_5) ys_9_5)))))) in
                    (let rec h_8_0 = '*' in
                      (fun ys_9_6 -> 
                        (`LH_C(h_8_0, ((mappend_lh__d9 t_1_0_4) ys_9_6))))))) (((printBoard_lh__d1 _lh_printBoard_arg1_0) (_lh_printBoard_arg2_0 + 1)) (`LH_C((`LH_P2(_lh_printBoard_LH_P2_0_0, _lh_printBoard_LH_P2_1_0)), _lh_printBoard_LH_C_1_0))))
                else
                  ((failwith "error") (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('B', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('-', (`LH_C('e', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d7 xs_2_3 ys_9_7 =
  (xs_2_3 ys_9_7);;
let rec mappend_lh__d1_d6 xs_0 ys_1 =
  (match xs_0 with
    | `LH_C(h_0, t_1_6) -> 
      (let rec t_1_7 = ((mappend_lh__d1_d6 t_1_6) ys_1) in
        (let rec h_1 = h_0 in
          (fun ys_2 -> 
            (`LH_C(h_1, ((mappend_lh__d1_d7 t_1_7) ys_2))))))
    | `LH_N -> 
      ys_1);;
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
let rec quickSortIntInt_lh__d1 _lh_quickSortIntInt_arg1_0 =
  (match _lh_quickSortIntInt_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntInt_LH_C_0_0, _lh_quickSortIntInt_LH_C_1_0) -> 
      ((mappend_lh__d1_d7 ((mappend_lh__d1_d6 (quickSortIntInt_lh__d1 (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_2_8) -> 
            (if ((intintComp_lh__d2 _lh_listcomp_fun_ls_h_2_8) _lh_quickSortIntInt_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_2_8, (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_8)))
            else
              (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_8))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3_7 _lh_quickSortIntInt_LH_C_1_0)))) (let rec t_7_5 = (fun ys_6_1 -> 
        ys_6_1) in
        (let rec h_5_1 = _lh_quickSortIntInt_LH_C_0_0 in
          (fun ys_6_2 -> 
            (`LH_C(h_5_1, ((mappend_lh__d1_d7 t_7_5) ys_6_2)))))))) (quickSortIntInt_lh__d1 (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_5 -> 
        (match _lh_listcomp_fun_para_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_9, _lh_listcomp_fun_ls_t_2_9) -> 
            (if (not ((intintComp_lh__d1 _lh_listcomp_fun_ls_h_2_9) _lh_quickSortIntInt_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_2_9, (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_9)))
            else
              (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_9))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3_8 _lh_quickSortIntInt_LH_C_1_0))))
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
let rec depthSearch_lh__d1 _lh_depthSearch_arg1_0 _lh_depthSearch_arg2_0 _lh_depthSearch_arg3_0 =
  (if (let rec _lh_matchIdent_0 = _lh_depthSearch_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        true
      | _ -> 
        false)) then
    (lazy (fun n_1 pp_0 _lh_dummy_2_7 -> 
      0))
  else
    (if (_lh_depthSearch_arg3_0 (inquireFront_lh__d2 _lh_depthSearch_arg1_0)) then
      (lazy (let rec t_3_2 = (((depthSearch_lh__d1 (removeFront_lh__d2 _lh_depthSearch_arg1_0)) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0) in
        (let rec h_8 = (inquireFront_lh__d1 _lh_depthSearch_arg1_0) in
          (fun n_2 -> 
            (let rec _lh_pp_LH_C_1_0 = ((take_lz_lh__d1 (n_2 - 1)) t_3_2) in
              (let rec _lh_pp_LH_C_0_0 = h_8 in
                (fun pp_1 -> 
                  (match _lh_pp_LH_C_0_0 with
                    | `LH_P2(_lh_pp_LH_P2_0_0, _lh_pp_LH_P2_1_0) -> 
                      ((mappend_lh__d4 ((mappend_lh__d2 ((mappend_lh__d1 ((mappend_lh__d3 (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (fun ys_1_2 -> 
                        ys_1_2) in
                        (let rec h_9 = ' ' in
                          (fun ys_1_3 -> 
                            (`LH_C(h_9, ((mappend_lh__d3 t_5_1) ys_1_3)))))) in
                        (let rec h_1_0 = 'h' in
                          (fun ys_1_4 -> 
                            (`LH_C(h_1_0, ((mappend_lh__d3 t_5_0) ys_1_4)))))) in
                        (let rec h_1_1 = 't' in
                          (fun ys_1_5 -> 
                            (`LH_C(h_1_1, ((mappend_lh__d3 t_4_9) ys_1_5)))))) in
                        (let rec h_1_2 = 'i' in
                          (fun ys_1_6 -> 
                            (`LH_C(h_1_2, ((mappend_lh__d3 t_4_8) ys_1_6)))))) in
                        (let rec h_1_3 = 'w' in
                          (fun ys_1_7 -> 
                            (`LH_C(h_1_3, ((mappend_lh__d3 t_4_7) ys_1_7)))))) in
                        (let rec h_1_4 = ' ' in
                          (fun ys_1_8 -> 
                            (`LH_C(h_1_4, ((mappend_lh__d3 t_4_6) ys_1_8)))))) in
                        (let rec h_1_5 = 'r' in
                          (fun ys_1_9 -> 
                            (`LH_C(h_1_5, ((mappend_lh__d3 t_4_5) ys_1_9)))))) in
                        (let rec h_1_6 = 'u' in
                          (fun ys_2_0 -> 
                            (`LH_C(h_1_6, ((mappend_lh__d3 t_4_4) ys_2_0)))))) in
                        (let rec h_1_7 = 'o' in
                          (fun ys_2_1 -> 
                            (`LH_C(h_1_7, ((mappend_lh__d3 t_4_3) ys_2_1)))))) in
                        (let rec h_1_8 = 't' in
                          (fun ys_2_2 -> 
                            (`LH_C(h_1_8, ((mappend_lh__d3 t_4_2) ys_2_2)))))) in
                        (let rec h_1_9 = ' ' in
                          (fun ys_2_3 -> 
                            (`LH_C(h_1_9, ((mappend_lh__d3 t_4_1) ys_2_3)))))) in
                        (let rec h_2_0 = 's' in
                          (fun ys_2_4 -> 
                            (`LH_C(h_2_0, ((mappend_lh__d3 t_4_0) ys_2_4)))))) in
                        (let rec h_2_1 = 't' in
                          (fun ys_2_5 -> 
                            (`LH_C(h_2_1, ((mappend_lh__d3 t_3_9) ys_2_5)))))) in
                        (let rec h_2_2 = 'h' in
                          (fun ys_2_6 -> 
                            (`LH_C(h_2_2, ((mappend_lh__d3 t_3_8) ys_2_6)))))) in
                        (let rec h_2_3 = 'g' in
                          (fun ys_2_7 -> 
                            (`LH_C(h_2_3, ((mappend_lh__d3 t_3_7) ys_2_7)))))) in
                        (let rec h_2_4 = 'i' in
                          (fun ys_2_8 -> 
                            (`LH_C(h_2_4, ((mappend_lh__d3 t_3_6) ys_2_8)))))) in
                        (let rec h_2_5 = 'n' in
                          (fun ys_2_9 -> 
                            (`LH_C(h_2_5, ((mappend_lh__d3 t_3_5) ys_2_9)))))) in
                        (let rec h_2_6 = 'K' in
                          (fun ys_3_0 -> 
                            (`LH_C(h_2_6, ((mappend_lh__d3 t_3_4) ys_3_0)))))) in
                        (let rec h_2_7 = '|' in
                          (fun ys_3_1 -> 
                            (`LH_C(h_2_7, ((mappend_lh__d3 t_3_3) ys_3_1))))))) (string_of_int _lh_pp_LH_P2_0_0))) (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (fun ys_3_2 -> 
                        ys_3_2) in
                        (let rec h_2_8 = '|' in
                          (fun ys_3_3 -> 
                            (`LH_C(h_2_8, ((mappend_lh__d2 t_7_1) ys_3_3)))))) in
                        (let rec h_2_9 = 's' in
                          (fun ys_3_4 -> 
                            (`LH_C(h_2_9, ((mappend_lh__d2 t_7_0) ys_3_4)))))) in
                        (let rec h_3_0 = 'e' in
                          (fun ys_3_5 -> 
                            (`LH_C(h_3_0, ((mappend_lh__d2 t_6_9) ys_3_5)))))) in
                        (let rec h_3_1 = 'v' in
                          (fun ys_3_6 -> 
                            (`LH_C(h_3_1, ((mappend_lh__d2 t_6_8) ys_3_6)))))) in
                        (let rec h_3_2 = 'o' in
                          (fun ys_3_7 -> 
                            (`LH_C(h_3_2, ((mappend_lh__d2 t_6_7) ys_3_7)))))) in
                        (let rec h_3_3 = 'm' in
                          (fun ys_3_8 -> 
                            (`LH_C(h_3_3, ((mappend_lh__d2 t_6_6) ys_3_8)))))) in
                        (let rec h_3_4 = ' ' in
                          (fun ys_3_9 -> 
                            (`LH_C(h_3_4, ((mappend_lh__d2 t_6_5) ys_3_9)))))) in
                        (let rec h_3_5 = 'g' in
                          (fun ys_4_0 -> 
                            (`LH_C(h_3_5, ((mappend_lh__d2 t_6_4) ys_4_0)))))) in
                        (let rec h_3_6 = 'n' in
                          (fun ys_4_1 -> 
                            (`LH_C(h_3_6, ((mappend_lh__d2 t_6_3) ys_4_1)))))) in
                        (let rec h_3_7 = 'i' in
                          (fun ys_4_2 -> 
                            (`LH_C(h_3_7, ((mappend_lh__d2 t_6_2) ys_4_2)))))) in
                        (let rec h_3_8 = 'k' in
                          (fun ys_4_3 -> 
                            (`LH_C(h_3_8, ((mappend_lh__d2 t_6_1) ys_4_3)))))) in
                        (let rec h_3_9 = 'c' in
                          (fun ys_4_4 -> 
                            (`LH_C(h_3_9, ((mappend_lh__d2 t_6_0) ys_4_4)))))) in
                        (let rec h_4_0 = 'a' in
                          (fun ys_4_5 -> 
                            (`LH_C(h_4_0, ((mappend_lh__d2 t_5_9) ys_4_5)))))) in
                        (let rec h_4_1 = 'r' in
                          (fun ys_4_6 -> 
                            (`LH_C(h_4_1, ((mappend_lh__d2 t_5_8) ys_4_6)))))) in
                        (let rec h_4_2 = 't' in
                          (fun ys_4_7 -> 
                            (`LH_C(h_4_2, ((mappend_lh__d2 t_5_7) ys_4_7)))))) in
                        (let rec h_4_3 = 'k' in
                          (fun ys_4_8 -> 
                            (`LH_C(h_4_3, ((mappend_lh__d2 t_5_6) ys_4_8)))))) in
                        (let rec h_4_4 = 'c' in
                          (fun ys_4_9 -> 
                            (`LH_C(h_4_4, ((mappend_lh__d2 t_5_5) ys_4_9)))))) in
                        (let rec h_4_5 = 'a' in
                          (fun ys_5_0 -> 
                            (`LH_C(h_4_5, ((mappend_lh__d2 t_5_4) ys_5_0)))))) in
                        (let rec h_4_6 = 'b' in
                          (fun ys_5_1 -> 
                            (`LH_C(h_4_6, ((mappend_lh__d2 t_5_3) ys_5_1)))))) in
                        (let rec h_4_7 = ' ' in
                          (fun ys_5_2 -> 
                            (`LH_C(h_4_7, ((mappend_lh__d2 t_5_2) ys_5_2)))))))) (showChessSet_lh__d1 _lh_pp_LH_P2_1_0))) (pp_1 _lh_pp_LH_C_1_0))
                    | _ -> 
                      (failwith "error")))))))))
    else
      (((depthSearch_lh__d1 ((addAllFront_lh__d1 (_lh_depthSearch_arg2_0 (inquireFront_lh__d3 _lh_depthSearch_arg1_0))) (removeFront_lh__d1 _lh_depthSearch_arg1_0))) _lh_depthSearch_arg2_0) _lh_depthSearch_arg3_0)));;
let rec map_lh__d1 f_1_6 ls_4 =
  (match ls_4 with
    | `LH_C(h_6_6, t_9_1) -> 
      (`LH_C((f_1_6 h_6_6), ((map_lh__d1 f_1_6) t_9_1)))
    | `LH_N -> 
      (`LH_N));;
let rec firstPiece_lh__d3 _lh_firstPiece_arg1_0 =
  (match _lh_firstPiece_arg1_0 with
    | `Board(_lh_firstPiece_Board_0_0, _lh_firstPiece_Board_1_0, _lh_firstPiece_Board_2_0, _lh_firstPiece_Board_3_0) -> 
      _lh_firstPiece_Board_2_0
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
let rec sizeBoard_lh__d2 _lh_sizeBoard_arg1_1 =
  (match _lh_sizeBoard_arg1_1 with
    | `Board(_lh_sizeBoard_Board_0_1, _lh_sizeBoard_Board_1_1, _lh_sizeBoard_Board_2_1, _lh_sizeBoard_Board_3_1) -> 
      _lh_sizeBoard_Board_0_1
    | _ -> 
      (failwith "error"));;
let rec canMoveTo_lh__d2 _lh_canMoveTo_arg1_1 _lh_canMoveTo_arg2_1 =
  (match _lh_canMoveTo_arg1_1 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1) -> 
      (let rec sze_2 = (sizeBoard_lh__d2 _lh_canMoveTo_arg2_1) in
        (((((_lh_canMoveTo_LH_P2_0_1 >= 1) && (_lh_canMoveTo_LH_P2_0_1 <= sze_2)) && (_lh_canMoveTo_LH_P2_1_1 >= 1)) && (_lh_canMoveTo_LH_P2_1_1 <= sze_2)) && ((isSquareFree_lh__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_1, _lh_canMoveTo_LH_P2_1_1))) _lh_canMoveTo_arg2_1)))
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
let rec myLast_lh__d3 _lh_myLast_arg1_1 =
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
let rec deleteFirst_lh__d3 _lh_deleteFirst_arg1_3 =
  (match _lh_deleteFirst_arg1_3 with
    | `Board(_lh_deleteFirst_Board_0_3, _lh_deleteFirst_Board_1_3, _lh_deleteFirst_Board_2_3, _lh_deleteFirst_Board_3_3) -> 
      (let rec ts'_3 = (myInit_lh__d3 _lh_deleteFirst_Board_3_3) in
        (`Board(_lh_deleteFirst_Board_0_3, (_lh_deleteFirst_Board_1_3 - 1), (myLast_lh__d3 ts'_3), ts'_3)))
    | _ -> 
      (failwith "error"));;
let rec canJumpFirst_lh__d2 _lh_canJumpFirst_arg1_1 =
  ((canMoveTo_lh__d2 (firstPiece_lh__d3 _lh_canJumpFirst_arg1_1)) (deleteFirst_lh__d3 _lh_canJumpFirst_arg1_1));;
let rec sizeBoard_lh__d1 _lh_sizeBoard_arg1_0 =
  (match _lh_sizeBoard_arg1_0 with
    | `Board(_lh_sizeBoard_Board_0_0, _lh_sizeBoard_Board_1_0, _lh_sizeBoard_Board_2_0, _lh_sizeBoard_Board_3_0) -> 
      _lh_sizeBoard_Board_0_0
    | _ -> 
      (failwith "error"));;
let rec noPieces_lh__d1 _lh_noPieces_arg1_0 =
  (match _lh_noPieces_arg1_0 with
    | `Board(_lh_noPieces_Board_0_0, _lh_noPieces_Board_1_0, _lh_noPieces_Board_2_0, _lh_noPieces_Board_3_0) -> 
      _lh_noPieces_Board_1_0
    | _ -> 
      (failwith "error"));;
let rec tourFinished_lh__d1 _lh_tourFinished_arg1_0 =
  (let rec sze_0 = (sizeBoard_lh__d1 _lh_tourFinished_arg1_0) in
    (((noPieces_lh__d1 _lh_tourFinished_arg1_0) = (sze_0 * sze_0)) && (canJumpFirst_lh__d2 _lh_tourFinished_arg1_0)));;
let rec isFinished_lh__d1 _lh_isFinished_arg1_0 =
  (match _lh_isFinished_arg1_0 with
    | `LH_P2(_lh_isFinished_LH_P2_0_0, _lh_isFinished_LH_P2_1_0) -> 
      (tourFinished_lh__d1 _lh_isFinished_LH_P2_1_0)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d8 xs_3 ys_9 =
  (xs_3 ys_9);;
let rec addAllFront_lh__d2 _lh_addAllFront_arg1_0 _lh_addAllFront_arg2_0 =
  ((mappend_lh__d1_d8 _lh_addAllFront_arg1_0) _lh_addAllFront_arg2_0);;
let rec createBoard_lh__d1 _lh_createBoard_arg1_0 _lh_createBoard_arg2_0 =
  (`Board(_lh_createBoard_arg1_0, 1, _lh_createBoard_arg2_0, (`LH_C(_lh_createBoard_arg2_0, (`LH_N)))));;
let rec startTour_lh__d1 _lh_startTour_arg1_0 _lh_startTour_arg2_0 =
  (if ((_lh_startTour_arg2_0 mod 2) = 0) then
    ((createBoard_lh__d1 _lh_startTour_arg2_0) _lh_startTour_arg1_0)
  else
    ((failwith "error") (`LH_C('T', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('d', (`LH_C('o', (`LH_C('e', (`LH_C('s', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C('o', (`LH_C('a', (`LH_C('r', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec zip_lz_nl_lh__d2 xs_2_5 ys_9_9 =
  (ys_9_9 xs_2_5);;
let rec repeat_lh__d2 x_1 =
  (lazy (let rec tx_2 = (repeat_lh__d2 x_1) in
    (let rec hx_2 = x_1 in
      (fun hy_1 ty_1 -> 
        (let rec t_7_2 = ((zip_lz_nl_lh__d2 tx_2) ty_1) in
          (let rec h_4_8 = (`LH_P2(hx_2, hy_1)) in
            (fun ys_5_4 -> 
              (`LH_C(h_4_8, ((mappend_lh__d1_d8 t_7_2) ys_5_4))))))))));;
let rec enumFromTo_lh__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (fun f_0 ys_0 -> 
      (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_8 = a_0 in
          (let rec tx_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_8) in
            (let rec hx_0 = (`LH_P2(_lh_popOutId_0_0, _lh_listcomp_fun_ls_h_8)) in
              (((ys_0 f_0) hx_0) tx_0))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0));;
let rec enumFromTo_lh__d2 a_1 b_1 _lh_popOutId_0_2 _lh_popOutId_1_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2_7 = ((enumFromTo_lh__d2 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_2_7 = a_1 in
        (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_3 -> 
          ((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_2_7) _lh_listcomp_fun_3_5) _lh_listcomp_fun_ls_t_2_7) _lh_popOutId_0_2)) in
          (_lh_listcomp_fun_3_5 ((enumFromTo_lh__d1 1) _lh_popOutId_1_1)))))
  else
    (fun f_1 ys_5_5 xs_6 ys_5_6 -> 
      ys_5_6));;
let rec createQueue_lh__d1 =
  (`LH_N);;
let rec zipWith_lh__d1 f_1_7 xs_2_1 ys_7_6 =
  ((xs_2_1 f_1_7) ys_7_6);;
let rec copy_lh__d1 _lh_copy_arg1_1 _lh_copy_arg2_1 _lh_popOutId_0_3 _lh_popOutId_1_2 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (fun ys_6_3 -> 
      ys_6_3)
  else
    (let rec ty_2 = ((copy_lh__d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
      (let rec hy_2 = _lh_copy_arg2_1 in
        (let rec ty_3 = (((zipWith_lh__d1 _lh_popOutId_0_3) _lh_popOutId_2_1) ty_2) in
          (let rec hy_3 = ((_lh_popOutId_0_3 _lh_popOutId_1_2) hy_2) in
            (((Lazy.force _lh_popOutId_3_1) hy_3) ty_3))))));;
let rec root_lh__d1 _lh_root_arg1_2 =
  ((addAllFront_lh__d2 ((zip_lz_nl_lh__d2 (repeat_lh__d2 (1 - (_lh_root_arg1_2 * _lh_root_arg1_2)))) (((zipWith_lh__d1 startTour_lh__d1) (let rec _lh_listcomp_fun_5_2 = (fun _lh_listcomp_fun_para_1_0 -> 
    ((_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_5_2) _lh_root_arg1_2)) in
    (_lh_listcomp_fun_5_2 ((enumFromTo_lh__d2 1) _lh_root_arg1_2)))) ((copy_lh__d1 (_lh_root_arg1_2 * _lh_root_arg1_2)) _lh_root_arg1_2)))) createQueue_lh__d1);;
let rec firstPiece_lh__d1 _lh_firstPiece_arg1_1 =
  (match _lh_firstPiece_arg1_1 with
    | `Board(_lh_firstPiece_Board_0_1, _lh_firstPiece_Board_1_1, _lh_firstPiece_Board_2_1, _lh_firstPiece_Board_3_1) -> 
      _lh_firstPiece_Board_2_1
    | _ -> 
      (failwith "error"));;
let rec length_lh__d5 ls_0 =
  (ls_0 99);;
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
let rec canMove_lh__d2 _lh_canMove_arg1_1 _lh_canMove_arg2_1 =
  ((canMoveTo_lh__d2 ((move_lh__d1 _lh_canMove_arg2_1) (lastPiece_lh__d1 _lh_canMove_arg1_1))) _lh_canMove_arg1_1);;
let rec possibleMoves_lh__d2 _lh_possibleMoves_arg1_0 =
  (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_possibleMoves_arg1_0)) in
    (_lh_listcomp_fun_0 (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (let rec _lh_listcomp_fun_ls_t_2 = (let rec _lh_listcomp_fun_ls_t_3 = (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (let rec _lh_listcomp_fun_ls_t_6 = (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_1 _lh_possibleMoves_arg1_1 _lh_dummy_0 -> 
      0) in
      (let rec _lh_listcomp_fun_ls_h_0 = (`RD) in
        (fun _lh_listcomp_fun_2 _lh_possibleMoves_arg1_2 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_2) _lh_listcomp_fun_ls_h_0) then
            (let rec t_0 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_7) in
              (fun _lh_dummy_1 -> 
                (1 + (length_lh__d5 t_0))))
          else
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_7))))) in
      (let rec _lh_listcomp_fun_ls_h_1 = (`RU) in
        (fun _lh_listcomp_fun_3 _lh_possibleMoves_arg1_3 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3) _lh_listcomp_fun_ls_h_1) then
            (let rec t_1 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_6) in
              (fun _lh_dummy_2 -> 
                (1 + (length_lh__d5 t_1))))
          else
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_6))))) in
      (let rec _lh_listcomp_fun_ls_h_2 = (`LD) in
        (fun _lh_listcomp_fun_4 _lh_possibleMoves_arg1_4 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_4) _lh_listcomp_fun_ls_h_2) then
            (let rec t_2 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_5) in
              (fun _lh_dummy_3 -> 
                (1 + (length_lh__d5 t_2))))
          else
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_5))))) in
      (let rec _lh_listcomp_fun_ls_h_3 = (`LU) in
        (fun _lh_listcomp_fun_5 _lh_possibleMoves_arg1_5 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_5) _lh_listcomp_fun_ls_h_3) then
            (let rec t_3 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4) in
              (fun _lh_dummy_4 -> 
                (1 + (length_lh__d5 t_3))))
          else
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4))))) in
      (let rec _lh_listcomp_fun_ls_h_4 = (`DR) in
        (fun _lh_listcomp_fun_6 _lh_possibleMoves_arg1_6 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_6) _lh_listcomp_fun_ls_h_4) then
            (let rec t_4 = (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3) in
              (fun _lh_dummy_5 -> 
                (1 + (length_lh__d5 t_4))))
          else
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3))))) in
      (let rec _lh_listcomp_fun_ls_h_5 = (`DL) in
        (fun _lh_listcomp_fun_7 _lh_possibleMoves_arg1_7 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_7) _lh_listcomp_fun_ls_h_5) then
            (let rec t_5 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_2) in
              (fun _lh_dummy_6 -> 
                (1 + (length_lh__d5 t_5))))
          else
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_2))))) in
      (let rec _lh_listcomp_fun_ls_h_6 = (`UR) in
        (fun _lh_listcomp_fun_8 _lh_possibleMoves_arg1_8 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_8) _lh_listcomp_fun_ls_h_6) then
            (let rec t_6 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_1) in
              (fun _lh_dummy_7 -> 
                (1 + (length_lh__d5 t_6))))
          else
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_1))))) in
      (let rec _lh_listcomp_fun_ls_h_7 = (`UL) in
        (fun _lh_listcomp_fun_9 _lh_possibleMoves_arg1_9 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_9) _lh_listcomp_fun_ls_h_7) then
            (let rec t_7 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_0) in
              (fun _lh_dummy_8 -> 
                (1 + (length_lh__d5 t_7))))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_0)))))));;
let rec map_lh__d3 f_1_8 ls_7 =
  (ls_7 f_1_8);;
let rec possibleMoves_lh__d4 _lh_possibleMoves_arg1_3_0 =
  (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_6 -> 
    ((_lh_listcomp_fun_para_6 _lh_listcomp_fun_3_9) _lh_possibleMoves_arg1_3_0)) in
    (_lh_listcomp_fun_3_9 (let rec _lh_listcomp_fun_ls_t_3_0 = (let rec _lh_listcomp_fun_ls_t_3_1 = (let rec _lh_listcomp_fun_ls_t_3_2 = (let rec _lh_listcomp_fun_ls_t_3_3 = (let rec _lh_listcomp_fun_ls_t_3_4 = (let rec _lh_listcomp_fun_ls_t_3_5 = (let rec _lh_listcomp_fun_ls_t_3_6 = (let rec _lh_listcomp_fun_ls_t_3_7 = (fun _lh_listcomp_fun_4_0 _lh_possibleMoves_arg1_3_1 f_6 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_3_0 = (`RD) in
        (fun _lh_listcomp_fun_4_1 _lh_possibleMoves_arg1_3_2 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_2) _lh_listcomp_fun_ls_h_3_0) then
            (let rec t_7_8 = (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_7) in
              (let rec h_5_4 = _lh_listcomp_fun_ls_h_3_0 in
                (fun f_7 -> 
                  (`LH_C((f_7 h_5_4), ((map_lh__d3 f_7) t_7_8))))))
          else
            (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_7))))) in
      (let rec _lh_listcomp_fun_ls_h_3_1 = (`RU) in
        (fun _lh_listcomp_fun_4_2 _lh_possibleMoves_arg1_3_3 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_3) _lh_listcomp_fun_ls_h_3_1) then
            (let rec t_7_9 = (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_6) in
              (let rec h_5_5 = _lh_listcomp_fun_ls_h_3_1 in
                (fun f_8 -> 
                  (`LH_C((f_8 h_5_5), ((map_lh__d3 f_8) t_7_9))))))
          else
            (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_6))))) in
      (let rec _lh_listcomp_fun_ls_h_3_2 = (`LD) in
        (fun _lh_listcomp_fun_4_3 _lh_possibleMoves_arg1_3_4 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_4) _lh_listcomp_fun_ls_h_3_2) then
            (let rec t_8_0 = (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_3_5) in
              (let rec h_5_6 = _lh_listcomp_fun_ls_h_3_2 in
                (fun f_9 -> 
                  (`LH_C((f_9 h_5_6), ((map_lh__d3 f_9) t_8_0))))))
          else
            (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_3_5))))) in
      (let rec _lh_listcomp_fun_ls_h_3_3 = (`LU) in
        (fun _lh_listcomp_fun_4_4 _lh_possibleMoves_arg1_3_5 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_5) _lh_listcomp_fun_ls_h_3_3) then
            (let rec t_8_1 = (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_3_4) in
              (let rec h_5_7 = _lh_listcomp_fun_ls_h_3_3 in
                (fun f_1_0 -> 
                  (`LH_C((f_1_0 h_5_7), ((map_lh__d3 f_1_0) t_8_1))))))
          else
            (_lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_3_4))))) in
      (let rec _lh_listcomp_fun_ls_h_3_4 = (`DR) in
        (fun _lh_listcomp_fun_4_5 _lh_possibleMoves_arg1_3_6 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_6) _lh_listcomp_fun_ls_h_3_4) then
            (let rec t_8_2 = (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_3_3) in
              (let rec h_5_8 = _lh_listcomp_fun_ls_h_3_4 in
                (fun f_1_1 -> 
                  (`LH_C((f_1_1 h_5_8), ((map_lh__d3 f_1_1) t_8_2))))))
          else
            (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_3_3))))) in
      (let rec _lh_listcomp_fun_ls_h_3_5 = (`DL) in
        (fun _lh_listcomp_fun_4_6 _lh_possibleMoves_arg1_3_7 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_7) _lh_listcomp_fun_ls_h_3_5) then
            (let rec t_8_3 = (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_2) in
              (let rec h_5_9 = _lh_listcomp_fun_ls_h_3_5 in
                (fun f_1_2 -> 
                  (`LH_C((f_1_2 h_5_9), ((map_lh__d3 f_1_2) t_8_3))))))
          else
            (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_2))))) in
      (let rec _lh_listcomp_fun_ls_h_3_6 = (`UR) in
        (fun _lh_listcomp_fun_4_7 _lh_possibleMoves_arg1_3_8 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_8) _lh_listcomp_fun_ls_h_3_6) then
            (let rec t_8_4 = (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_3_1) in
              (let rec h_6_0 = _lh_listcomp_fun_ls_h_3_6 in
                (fun f_1_3 -> 
                  (`LH_C((f_1_3 h_6_0), ((map_lh__d3 f_1_3) t_8_4))))))
          else
            (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_3_1))))) in
      (let rec _lh_listcomp_fun_ls_h_3_7 = (`UL) in
        (fun _lh_listcomp_fun_4_8 _lh_possibleMoves_arg1_3_9 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_3_9) _lh_listcomp_fun_ls_h_3_7) then
            (let rec t_8_5 = (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_0) in
              (let rec h_6_1 = _lh_listcomp_fun_ls_h_3_7 in
                (fun f_1_4 -> 
                  (`LH_C((f_1_4 h_6_1), ((map_lh__d3 f_1_4) t_8_5))))))
          else
            (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_0)))))));;
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
let rec myLast_lh__d2 _lh_myLast_arg1_2 =
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
let rec deleteFirst_lh__d2 _lh_deleteFirst_arg1_0 =
  (match _lh_deleteFirst_arg1_0 with
    | `Board(_lh_deleteFirst_Board_0_0, _lh_deleteFirst_Board_1_0, _lh_deleteFirst_Board_2_0, _lh_deleteFirst_Board_3_0) -> 
      (let rec ts'_0 = (myInit_lh__d2 _lh_deleteFirst_Board_3_0) in
        (`Board(_lh_deleteFirst_Board_0_0, (_lh_deleteFirst_Board_1_0 - 1), (myLast_lh__d2 ts'_0), ts'_0)))
    | _ -> 
      (failwith "error"));;
let rec descAndNo_lh__d1 _lh_descAndNo_arg1_0 =
  (let rec _lh_listcomp_fun_4_9 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_8, _lh_listcomp_fun_ls_t_3_8) -> 
        (`LH_C((`LH_P2((length_lh__d5 (possibleMoves_lh__d2 (deleteFirst_lh__d2 _lh_listcomp_fun_ls_h_3_8))), _lh_listcomp_fun_ls_h_3_8)), (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_8)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4_9 (allDescend_lh__d1 _lh_descAndNo_arg1_0)));;
let rec map_lh__d2 f_1_5 ls_3 =
  (match ls_3 with
    | `LH_C(h_6_2, t_8_6) -> 
      (`LH_C((f_1_5 h_6_2), ((map_lh__d2 f_1_5) t_8_6)))
    | `LH_N -> 
      (`LH_N));;
let rec mySnd_lh__d1 _lh_mySnd_arg1_0 =
  (match _lh_mySnd_arg1_0 with
    | `LH_P2(_lh_mySnd_LH_P2_0_0, _lh_mySnd_LH_P2_1_0) -> 
      _lh_mySnd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d9 xs_5 ys_5_3 =
  (xs_5 ys_5_3);;
let rec intChessSetComp_lh__d2 _lh_intChessSetComp_arg1_1 _lh_intChessSetComp_arg2_1 =
  (match _lh_intChessSetComp_arg1_1 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_2, _lh_intChessSetComp_LH_P2_1_2) -> 
      (match _lh_intChessSetComp_arg2_1 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_3, _lh_intChessSetComp_LH_P2_1_3) -> 
          (_lh_intChessSetComp_LH_P2_0_2 < _lh_intChessSetComp_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec intChessSetComp_lh__d1 _lh_intChessSetComp_arg1_0 _lh_intChessSetComp_arg2_0 =
  (match _lh_intChessSetComp_arg1_0 with
    | `LH_P2(_lh_intChessSetComp_LH_P2_0_0, _lh_intChessSetComp_LH_P2_1_0) -> 
      (match _lh_intChessSetComp_arg2_0 with
        | `LH_P2(_lh_intChessSetComp_LH_P2_0_1, _lh_intChessSetComp_LH_P2_1_1) -> 
          (_lh_intChessSetComp_LH_P2_0_0 < _lh_intChessSetComp_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d0 xs_1_6 ys_6_8 =
  (match xs_1_6 with
    | `LH_C(h_6_3, t_8_7) -> 
      (let rec t_8_8 = ((mappend_lh__d2_d0 t_8_7) ys_6_8) in
        (let rec h_6_4 = h_6_3 in
          (fun ys_6_9 -> 
            (`LH_C(h_6_4, ((mappend_lh__d1_d9 t_8_8) ys_6_9))))))
    | `LH_N -> 
      ys_6_8);;
let rec quickSortIntChessSet_lh__d1 _lh_quickSortIntChessSet_arg1_0 =
  (match _lh_quickSortIntChessSet_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_quickSortIntChessSet_LH_C_0_0, _lh_quickSortIntChessSet_LH_C_1_0) -> 
      ((mappend_lh__d1_d9 ((mappend_lh__d2_d0 (quickSortIntChessSet_lh__d1 (let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_3_9) -> 
            (if ((intChessSetComp_lh__d2 _lh_listcomp_fun_ls_h_3_9) _lh_quickSortIntChessSet_LH_C_0_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_3_9, (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_3_9)))
            else
              (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_3_9))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_5_0 _lh_quickSortIntChessSet_LH_C_1_0)))) (let rec t_9_2 = (fun ys_7_4 -> 
        ys_7_4) in
        (let rec h_6_7 = _lh_quickSortIntChessSet_LH_C_0_0 in
          (fun ys_7_5 -> 
            (`LH_C(h_6_7, ((mappend_lh__d1_d9 t_9_2) ys_7_5)))))))) (quickSortIntChessSet_lh__d1 (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_0, _lh_listcomp_fun_ls_t_4_0) -> 
            (if (not ((intChessSetComp_lh__d1 _lh_listcomp_fun_ls_h_4_0) _lh_quickSortIntChessSet_LH_C_0_0)) then
              (`LH_C(_lh_listcomp_fun_ls_h_4_0, (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_4_0)))
            else
              (_lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_4_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_5_1 _lh_quickSortIntChessSet_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec deleteFirst_lh__d4 _lh_deleteFirst_arg1_1 =
  (match _lh_deleteFirst_arg1_1 with
    | `Board(_lh_deleteFirst_Board_0_1, _lh_deleteFirst_Board_1_1, _lh_deleteFirst_Board_2_1, _lh_deleteFirst_Board_3_1) -> 
      (let rec ts'_1 = (myInit_lh__d3 _lh_deleteFirst_Board_3_1) in
        (`Board(_lh_deleteFirst_Board_0_1, (_lh_deleteFirst_Board_1_1 - 1), (myLast_lh__d3 ts'_1), ts'_1)))
    | _ -> 
      (failwith "error"));;
let rec allDescend_lh__d2 _lh_allDescend_arg1_0 =
  ((map_lh__d3 (moveKnight_lh__d1 _lh_allDescend_arg1_0)) (possibleMoves_lh__d4 _lh_allDescend_arg1_0));;
let rec length_lh__d6 ls_1_1 =
  (ls_1_1 99);;
let rec possibleMoves_lh__d3 _lh_possibleMoves_arg1_1_0 =
  (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1 -> 
    ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1_4) _lh_possibleMoves_arg1_1_0)) in
    (_lh_listcomp_fun_1_4 (let rec _lh_listcomp_fun_ls_t_1_1 = (let rec _lh_listcomp_fun_ls_t_1_2 = (let rec _lh_listcomp_fun_ls_t_1_3 = (let rec _lh_listcomp_fun_ls_t_1_4 = (let rec _lh_listcomp_fun_ls_t_1_5 = (let rec _lh_listcomp_fun_ls_t_1_6 = (let rec _lh_listcomp_fun_ls_t_1_7 = (let rec _lh_listcomp_fun_ls_t_1_8 = (fun _lh_listcomp_fun_1_5 _lh_possibleMoves_arg1_1_1 _lh_dummy_9 -> 
      0) in
      (let rec _lh_listcomp_fun_ls_h_1_1 = (`RD) in
        (fun _lh_listcomp_fun_1_6 _lh_possibleMoves_arg1_1_2 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_2) _lh_listcomp_fun_ls_h_1_1) then
            (let rec t_8 = (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_8) in
              (fun _lh_dummy_1_0 -> 
                (1 + (length_lh__d6 t_8))))
          else
            (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_8))))) in
      (let rec _lh_listcomp_fun_ls_h_1_2 = (`RU) in
        (fun _lh_listcomp_fun_1_7 _lh_possibleMoves_arg1_1_3 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_3) _lh_listcomp_fun_ls_h_1_2) then
            (let rec t_9 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7) in
              (fun _lh_dummy_1_1 -> 
                (1 + (length_lh__d6 t_9))))
          else
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))))) in
      (let rec _lh_listcomp_fun_ls_h_1_3 = (`LD) in
        (fun _lh_listcomp_fun_1_8 _lh_possibleMoves_arg1_1_4 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_4) _lh_listcomp_fun_ls_h_1_3) then
            (let rec t_1_0 = (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_6) in
              (fun _lh_dummy_1_2 -> 
                (1 + (length_lh__d6 t_1_0))))
          else
            (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_6))))) in
      (let rec _lh_listcomp_fun_ls_h_1_4 = (`LU) in
        (fun _lh_listcomp_fun_1_9 _lh_possibleMoves_arg1_1_5 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_5) _lh_listcomp_fun_ls_h_1_4) then
            (let rec t_1_1 = (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_5) in
              (fun _lh_dummy_1_3 -> 
                (1 + (length_lh__d6 t_1_1))))
          else
            (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_5))))) in
      (let rec _lh_listcomp_fun_ls_h_1_5 = (`DR) in
        (fun _lh_listcomp_fun_2_0 _lh_possibleMoves_arg1_1_6 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_6) _lh_listcomp_fun_ls_h_1_5) then
            (let rec t_1_2 = (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_4) in
              (fun _lh_dummy_1_4 -> 
                (1 + (length_lh__d6 t_1_2))))
          else
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_4))))) in
      (let rec _lh_listcomp_fun_ls_h_1_6 = (`DL) in
        (fun _lh_listcomp_fun_2_1 _lh_possibleMoves_arg1_1_7 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_7) _lh_listcomp_fun_ls_h_1_6) then
            (let rec t_1_3 = (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_3) in
              (fun _lh_dummy_1_5 -> 
                (1 + (length_lh__d6 t_1_3))))
          else
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_3))))) in
      (let rec _lh_listcomp_fun_ls_h_1_7 = (`UR) in
        (fun _lh_listcomp_fun_2_2 _lh_possibleMoves_arg1_1_8 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_8) _lh_listcomp_fun_ls_h_1_7) then
            (let rec t_1_4 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_2) in
              (fun _lh_dummy_1_6 -> 
                (1 + (length_lh__d6 t_1_4))))
          else
            (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_2))))) in
      (let rec _lh_listcomp_fun_ls_h_1_8 = (`UL) in
        (fun _lh_listcomp_fun_2_3 _lh_possibleMoves_arg1_1_9 -> 
          (if ((canMove_lh__d2 _lh_possibleMoves_arg1_1_9) _lh_listcomp_fun_ls_h_1_8) then
            (let rec t_1_5 = (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_1) in
              (fun _lh_dummy_1_7 -> 
                (1 + (length_lh__d6 t_1_5))))
          else
            (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_1)))))));;
let rec descAndNo_lh__d2 _lh_descAndNo_arg1_1 =
  (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_1_2 -> 
    (match _lh_listcomp_fun_para_1_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_t_4_1) -> 
        (let rec _lh_listcomp_fun_ls_t_4_2 = (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_4_1) in
          (let rec _lh_listcomp_fun_ls_h_4_2 = (let rec _lh_singleDescend_LH_P2_1_0 = _lh_listcomp_fun_ls_h_4_1 in
            (let rec _lh_singleDescend_LH_P2_0_0 = (length_lh__d6 (possibleMoves_lh__d3 (deleteFirst_lh__d4 _lh_listcomp_fun_ls_h_4_1))) in
              (fun _lh_listcomp_fun_ls_t_4_3 _lh_listcomp_fun_5_5 -> 
                (if (_lh_singleDescend_LH_P2_0_0 = 1) then
                  (`LH_C(_lh_singleDescend_LH_P2_1_0, (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_4_3)))
                else
                  (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_4_3))))) in
            (fun _lh_listcomp_fun_5_6 -> 
              ((_lh_listcomp_fun_ls_h_4_2 _lh_listcomp_fun_ls_t_4_2) _lh_listcomp_fun_5_6))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_5_7 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_5_4 (allDescend_lh__d2 _lh_descAndNo_arg1_1)));;
let rec singleDescend_lh__d1 _lh_singleDescend_arg1_0 =
  (let rec _lh_listcomp_fun_5_3 = (fun _lh_listcomp_fun_para_1_1 -> 
    (_lh_listcomp_fun_para_1_1 _lh_listcomp_fun_5_3)) in
    (_lh_listcomp_fun_5_3 (descAndNo_lh__d2 _lh_singleDescend_arg1_0)));;
let rec firstPiece_lh__d2 _lh_firstPiece_arg1_2 =
  (match _lh_firstPiece_arg1_2 with
    | `Board(_lh_firstPiece_Board_0_2, _lh_firstPiece_Board_1_2, _lh_firstPiece_Board_2_2, _lh_firstPiece_Board_3_2) -> 
      _lh_firstPiece_Board_2_2
    | _ -> 
      (failwith "error"));;
let rec canMoveTo_lh__d1 _lh_canMoveTo_arg1_0 _lh_canMoveTo_arg2_0 =
  (match _lh_canMoveTo_arg1_0 with
    | `LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0) -> 
      (let rec sze_1 = (sizeBoard_lh__d2 _lh_canMoveTo_arg2_0) in
        (((((_lh_canMoveTo_LH_P2_0_0 >= 1) && (_lh_canMoveTo_LH_P2_0_0 <= sze_1)) && (_lh_canMoveTo_LH_P2_1_0 >= 1)) && (_lh_canMoveTo_LH_P2_1_0 <= sze_1)) && ((isSquareFree_lh__d1 (`LH_P2(_lh_canMoveTo_LH_P2_0_0, _lh_canMoveTo_LH_P2_1_0))) _lh_canMoveTo_arg2_0)))
    | _ -> 
      (failwith "error"));;
let rec myLast_lh__d1 _lh_myLast_arg1_0 =
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
let rec deleteFirst_lh__d1 _lh_deleteFirst_arg1_2 =
  (match _lh_deleteFirst_arg1_2 with
    | `Board(_lh_deleteFirst_Board_0_2, _lh_deleteFirst_Board_1_2, _lh_deleteFirst_Board_2_2, _lh_deleteFirst_Board_3_2) -> 
      (let rec ts'_2 = (myInit_lh__d1 _lh_deleteFirst_Board_3_2) in
        (`Board(_lh_deleteFirst_Board_0_2, (_lh_deleteFirst_Board_1_2 - 1), (myLast_lh__d1 ts'_2), ts'_2)))
    | _ -> 
      (failwith "error"));;
let rec canJumpFirst_lh__d1 _lh_canJumpFirst_arg1_0 =
  ((canMoveTo_lh__d1 (firstPiece_lh__d2 _lh_canJumpFirst_arg1_0)) (deleteFirst_lh__d1 _lh_canJumpFirst_arg1_0));;
let rec length_lh__d3 ls_8 =
  (match ls_8 with
    | `LH_C(h_7_0, t_9_5) -> 
      (1 + (length_lh__d3 t_9_5))
    | `LH_N -> 
      0);;
let rec canMove_lh__d1 _lh_canMove_arg1_0 _lh_canMove_arg2_0 =
  ((canMoveTo_lh__d2 ((move_lh__d1 _lh_canMove_arg2_0) (lastPiece_lh__d1 _lh_canMove_arg1_0))) _lh_canMove_arg1_0);;
let rec length_lh__d4 ls_5 =
  (ls_5 99);;
let rec possibleMoves_lh__d1 _lh_possibleMoves_arg1_2_0 =
  (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_2 -> 
    ((_lh_listcomp_fun_para_2 _lh_listcomp_fun_2_4) _lh_possibleMoves_arg1_2_0)) in
    (_lh_listcomp_fun_2_4 (let rec _lh_listcomp_fun_ls_t_1_9 = (let rec _lh_listcomp_fun_ls_t_2_0 = (let rec _lh_listcomp_fun_ls_t_2_1 = (let rec _lh_listcomp_fun_ls_t_2_2 = (let rec _lh_listcomp_fun_ls_t_2_3 = (let rec _lh_listcomp_fun_ls_t_2_4 = (let rec _lh_listcomp_fun_ls_t_2_5 = (let rec _lh_listcomp_fun_ls_t_2_6 = (fun _lh_listcomp_fun_2_5 _lh_possibleMoves_arg1_2_1 _lh_dummy_1_8 -> 
      0) in
      (let rec _lh_listcomp_fun_ls_h_1_9 = (`RD) in
        (fun _lh_listcomp_fun_2_6 _lh_possibleMoves_arg1_2_2 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_2) _lh_listcomp_fun_ls_h_1_9) then
            (let rec t_1_8 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_6) in
              (fun _lh_dummy_1_9 -> 
                (1 + (length_lh__d4 t_1_8))))
          else
            (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_6))))) in
      (let rec _lh_listcomp_fun_ls_h_2_0 = (`RU) in
        (fun _lh_listcomp_fun_2_7 _lh_possibleMoves_arg1_2_3 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_3) _lh_listcomp_fun_ls_h_2_0) then
            (let rec t_1_9 = (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_5) in
              (fun _lh_dummy_2_0 -> 
                (1 + (length_lh__d4 t_1_9))))
          else
            (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_5))))) in
      (let rec _lh_listcomp_fun_ls_h_2_1 = (`LD) in
        (fun _lh_listcomp_fun_2_8 _lh_possibleMoves_arg1_2_4 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_4) _lh_listcomp_fun_ls_h_2_1) then
            (let rec t_2_0 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_4) in
              (fun _lh_dummy_2_1 -> 
                (1 + (length_lh__d4 t_2_0))))
          else
            (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_4))))) in
      (let rec _lh_listcomp_fun_ls_h_2_2 = (`LU) in
        (fun _lh_listcomp_fun_2_9 _lh_possibleMoves_arg1_2_5 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_5) _lh_listcomp_fun_ls_h_2_2) then
            (let rec t_2_1 = (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_3) in
              (fun _lh_dummy_2_2 -> 
                (1 + (length_lh__d4 t_2_1))))
          else
            (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_3))))) in
      (let rec _lh_listcomp_fun_ls_h_2_3 = (`DR) in
        (fun _lh_listcomp_fun_3_0 _lh_possibleMoves_arg1_2_6 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_6) _lh_listcomp_fun_ls_h_2_3) then
            (let rec t_2_2 = (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_2) in
              (fun _lh_dummy_2_3 -> 
                (1 + (length_lh__d4 t_2_2))))
          else
            (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_2))))) in
      (let rec _lh_listcomp_fun_ls_h_2_4 = (`DL) in
        (fun _lh_listcomp_fun_3_1 _lh_possibleMoves_arg1_2_7 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_7) _lh_listcomp_fun_ls_h_2_4) then
            (let rec t_2_3 = (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_1) in
              (fun _lh_dummy_2_4 -> 
                (1 + (length_lh__d4 t_2_3))))
          else
            (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_1))))) in
      (let rec _lh_listcomp_fun_ls_h_2_5 = (`UR) in
        (fun _lh_listcomp_fun_3_2 _lh_possibleMoves_arg1_2_8 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_8) _lh_listcomp_fun_ls_h_2_5) then
            (let rec t_2_4 = (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_0) in
              (fun _lh_dummy_2_5 -> 
                (1 + (length_lh__d4 t_2_4))))
          else
            (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_0))))) in
      (let rec _lh_listcomp_fun_ls_h_2_6 = (`UL) in
        (fun _lh_listcomp_fun_3_3 _lh_possibleMoves_arg1_2_9 -> 
          (if ((canMove_lh__d1 _lh_possibleMoves_arg1_2_9) _lh_listcomp_fun_ls_h_2_6) then
            (let rec t_2_5 = (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_1_9) in
              (fun _lh_dummy_2_6 -> 
                (1 + (length_lh__d4 t_2_5))))
          else
            (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_1_9)))))));;
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
let rec zip_lz_nl_lh__d1 xs_2_2 ys_8_1 =
  (match ys_8_1 with
    | `LH_C(hy_4, ty_4) -> 
      (((Lazy.force xs_2_2) hy_4) ty_4)
    | `LH_N -> 
      (fun ys_8_2 -> 
        ys_8_2));;
let rec repeat_lh__d1 x_0 =
  (lazy (let rec tx_1 = (repeat_lh__d1 x_0) in
    (let rec hx_1 = x_0 in
      (fun hy_0 ty_0 -> 
        (let rec t_2_7 = ((zip_lz_nl_lh__d1 tx_1) ty_0) in
          (let rec h_3 = (`LH_P2(hx_1, hy_0)) in
            (fun ys_6 -> 
              (`LH_C(h_3, ((mappend_lh__d5 t_2_7) ys_6))))))))));;
let rec grow_lh__d1 _lh_grow_arg1_0 =
  (match _lh_grow_arg1_0 with
    | `LH_P2(_lh_grow_LH_P2_0_0, _lh_grow_LH_P2_1_0) -> 
      ((zip_lz_nl_lh__d1 (repeat_lh__d1 (_lh_grow_LH_P2_0_0 + 1))) (descendents_lh__d1 _lh_grow_LH_P2_1_0))
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
  and pp_2 = (fun _lh_pp_arg1_0 -> 
    (_lh_pp_arg1_0 pp_2))
  in (let rec _lh_matchIdent_1 = ((map_lh__d1 (strToInt_0 0)) _lh_printTour_arg1_0) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_printTour_LH_C_0_0, _lh_printTour_LH_C_1_0) -> 
        (match _lh_printTour_LH_C_1_0 with
          | `LH_C(_lh_printTour_LH_C_0_1, _lh_printTour_LH_C_1_1) -> 
            (match _lh_printTour_LH_C_1_1 with
              | `LH_N -> 
                (pp_2 ((take_lz_lh__d1 _lh_printTour_LH_C_0_1) (((depthSearch_lh__d1 (root_lh__d1 _lh_printTour_LH_C_0_0)) grow_lh__d1) isFinished_lh__d1)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
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

