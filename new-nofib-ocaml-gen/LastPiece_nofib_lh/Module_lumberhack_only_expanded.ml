

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec addIntInt__d0 _lh_addIntInt_arg1_1 _lh_addIntInt_arg2_1 =
  (match _lh_addIntInt_arg1_1 with
    | `LH_P2(_lh_addIntInt_LH_P2_0_2, _lh_addIntInt_LH_P2_1_2) -> 
      (match _lh_addIntInt_arg2_1 with
        | `LH_P2(_lh_addIntInt_LH_P2_0_3, _lh_addIntInt_LH_P2_1_3) -> 
          (`LH_P2((_lh_addIntInt_LH_P2_0_2 + _lh_addIntInt_LH_P2_0_3), (_lh_addIntInt_LH_P2_1_2 + _lh_addIntInt_LH_P2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec addIntInt__d1 _lh_addIntInt_arg1_2 _lh_addIntInt_arg2_2 =
  (match _lh_addIntInt_arg1_2 with
    | `LH_P2(_lh_addIntInt_LH_P2_0_4, _lh_addIntInt_LH_P2_1_4) -> 
      (match _lh_addIntInt_arg2_2 with
        | `LH_P2(_lh_addIntInt_LH_P2_0_5, _lh_addIntInt_LH_P2_1_5) -> 
          (`LH_P2((_lh_addIntInt_LH_P2_0_4 + _lh_addIntInt_LH_P2_0_5), (_lh_addIntInt_LH_P2_1_4 + _lh_addIntInt_LH_P2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec bPiece__d0 _lh_bPiece_arg1_1 =
  (`P('b', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_N))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_N)))));;
let rec cPiece__d0 _lh_cPiece_arg1_1 =
  (`P('c', (`LH_N), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, 0)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 0)), (`LH_N))))))), (`LH_N)))))))))));;
let rec compareIntInt__d0 _lh_compareIntInt_arg1_6 _lh_compareIntInt_arg2_6 =
  (match _lh_compareIntInt_arg1_6 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_1_2, _lh_compareIntInt_LH_P2_1_1_2) -> 
      (match _lh_compareIntInt_arg2_6 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_1_3, _lh_compareIntInt_LH_P2_1_1_3) -> 
          (if (_lh_compareIntInt_LH_P2_0_1_2 > _lh_compareIntInt_LH_P2_0_1_3) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_1_2 < _lh_compareIntInt_LH_P2_0_1_3) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_1_2 > _lh_compareIntInt_LH_P2_1_1_3) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_1_2 < _lh_compareIntInt_LH_P2_1_1_3) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d1 _lh_compareIntInt_arg1_8 _lh_compareIntInt_arg2_8 =
  (match _lh_compareIntInt_arg1_8 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_1_6, _lh_compareIntInt_LH_P2_1_1_6) -> 
      (match _lh_compareIntInt_arg2_8 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_1_7, _lh_compareIntInt_LH_P2_1_1_7) -> 
          (if (_lh_compareIntInt_LH_P2_0_1_6 > _lh_compareIntInt_LH_P2_0_1_7) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_1_6 < _lh_compareIntInt_LH_P2_0_1_7) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_1_6 > _lh_compareIntInt_LH_P2_1_1_7) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_1_6 < _lh_compareIntInt_LH_P2_1_1_7) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d2 _lh_compareIntInt_arg1_7 _lh_compareIntInt_arg2_7 =
  (match _lh_compareIntInt_arg1_7 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_1_4, _lh_compareIntInt_LH_P2_1_1_4) -> 
      (match _lh_compareIntInt_arg2_7 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_1_5, _lh_compareIntInt_LH_P2_1_1_5) -> 
          (if (_lh_compareIntInt_LH_P2_0_1_4 > _lh_compareIntInt_LH_P2_0_1_5) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_1_4 < _lh_compareIntInt_LH_P2_0_1_5) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_1_4 > _lh_compareIntInt_LH_P2_1_1_5) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_1_4 < _lh_compareIntInt_LH_P2_1_1_5) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d3 _lh_compareIntInt_arg1_5 _lh_compareIntInt_arg2_5 =
  (match _lh_compareIntInt_arg1_5 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_1_0, _lh_compareIntInt_LH_P2_1_1_0) -> 
      (match _lh_compareIntInt_arg2_5 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_1_1, _lh_compareIntInt_LH_P2_1_1_1) -> 
          (if (_lh_compareIntInt_LH_P2_0_1_0 > _lh_compareIntInt_LH_P2_0_1_1) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_1_0 < _lh_compareIntInt_LH_P2_0_1_1) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_1_0 > _lh_compareIntInt_LH_P2_1_1_1) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_1_0 < _lh_compareIntInt_LH_P2_1_1_1) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d4 _lh_compareIntInt_arg1_1 _lh_compareIntInt_arg2_1 =
  (match _lh_compareIntInt_arg1_1 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_2, _lh_compareIntInt_LH_P2_1_2) -> 
      (match _lh_compareIntInt_arg2_1 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_3, _lh_compareIntInt_LH_P2_1_3) -> 
          (if (_lh_compareIntInt_LH_P2_0_2 > _lh_compareIntInt_LH_P2_0_3) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_2 < _lh_compareIntInt_LH_P2_0_3) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_2 > _lh_compareIntInt_LH_P2_1_3) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_2 < _lh_compareIntInt_LH_P2_1_3) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d5 _lh_compareIntInt_arg1_2 _lh_compareIntInt_arg2_2 =
  (match _lh_compareIntInt_arg1_2 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_4, _lh_compareIntInt_LH_P2_1_4) -> 
      (match _lh_compareIntInt_arg2_2 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_5, _lh_compareIntInt_LH_P2_1_5) -> 
          (if (_lh_compareIntInt_LH_P2_0_4 > _lh_compareIntInt_LH_P2_0_5) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_4 < _lh_compareIntInt_LH_P2_0_5) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_4 > _lh_compareIntInt_LH_P2_1_5) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_4 < _lh_compareIntInt_LH_P2_1_5) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d6 _lh_compareIntInt_arg1_3 _lh_compareIntInt_arg2_3 =
  (match _lh_compareIntInt_arg1_3 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_6, _lh_compareIntInt_LH_P2_1_6) -> 
      (match _lh_compareIntInt_arg2_3 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_7, _lh_compareIntInt_LH_P2_1_7) -> 
          (if (_lh_compareIntInt_LH_P2_0_6 > _lh_compareIntInt_LH_P2_0_7) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_6 < _lh_compareIntInt_LH_P2_0_7) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_6 > _lh_compareIntInt_LH_P2_1_7) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_6 < _lh_compareIntInt_LH_P2_1_7) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareIntInt__d7 _lh_compareIntInt_arg1_4 _lh_compareIntInt_arg2_4 =
  (match _lh_compareIntInt_arg1_4 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_8, _lh_compareIntInt_LH_P2_1_8) -> 
      (match _lh_compareIntInt_arg2_4 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_9, _lh_compareIntInt_LH_P2_1_9) -> 
          (if (_lh_compareIntInt_LH_P2_0_8 > _lh_compareIntInt_LH_P2_0_9) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_8 < _lh_compareIntInt_LH_P2_0_9) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_8 > _lh_compareIntInt_LH_P2_1_9) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_8 < _lh_compareIntInt_LH_P2_1_9) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec copy__d1 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_2, ((copy__d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2))));;
let rec dPiece__d0 _lh_dPiece_arg1_1 =
  (`P('d', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_N))))))), (`LH_N))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, 1)), (`LH_N))))))), (`LH_N)))));;
let rec ePiece__d0 _lh_ePiece_arg1_1 =
  (`P('e', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))), (`LH_N))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))), (`LH_N)))))));;
let rec emptyBoard__d0 =
  (`Tip);;
let rec enumFromTo__d0 a_1_0 b_7 =
  (if (a_1_0 <= b_7) then
    (`LH_C(a_1_0, ((enumFromTo__d0 (a_1_0 + 1)) b_7)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_9 b_6 =
  (if (a_9 <= b_6) then
    (`LH_C(a_9, ((enumFromTo__d1 (a_9 + 1)) b_6)))
  else
    (`LH_N));;
let rec fPiece__d0 _lh_fPiece_arg1_1 =
  (`P('f', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_C((`LH_P2(1, (0 - 3))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 0)), (`LH_N))))))))), (`LH_N)))));;
let rec flip__d0 _lh_flip_arg1_2 =
  (match _lh_flip_arg1_2 with
    | `Male -> 
      (`Female)
    | `Female -> 
      (`Male)
    | _ -> 
      (failwith "error"));;
let rec flip__d1 _lh_flip_arg1_1 =
  (match _lh_flip_arg1_1 with
    | `Male -> 
      (`Female)
    | `Female -> 
      (`Male)
    | _ -> 
      (failwith "error"));;
let rec flip__d2 _lh_flip_arg1_3 =
  (match _lh_flip_arg1_3 with
    | `Male -> 
      (`Female)
    | `Female -> 
      (`Male)
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1_2 i_3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      ((f_1_2 h_2_0) (((foldr__d0 f_1_2) i_3) t_2_2))
    | `LH_N -> 
      i_3);;
let rec foldr__d1 f_1_6 i_4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((f_1_6 h_2_6) (((foldr__d1 f_1_6) i_4) t_2_8))
    | `LH_N -> 
      i_4);;
let rec fromJust__d0 _lh_fromJust_arg1_1 =
  (match _lh_fromJust_arg1_1 with
    | `Just(_lh_fromJust_Just_0_1) -> 
      _lh_fromJust_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec gPiece__d0 _lh_gPiece_arg1_1 =
  (`P('g', (`LH_N), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(1, 3)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_C((`LH_P2(3, (0 - 1))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(1, 3)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_C((`LH_P2(3, (0 - 1))), (`LH_N))))))))), (`LH_N)))))))))));;
let rec hPiece__d0 _lh_hPiece_arg1_1 =
  (`P('h', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 2))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))))), (`LH_N)))));;
let rec iPiece__d0 _lh_iPiece_arg1_1 =
  (`P('i', (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_N))))))))), (`LH_N)))));;
let rec indent__d0 _lh_indent_arg1_2 =
  (if (_lh_indent_arg1_2 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (indent__d0 (_lh_indent_arg1_2 - 1)))));;
let rec indent__d1 _lh_indent_arg1_1 =
  (if (_lh_indent_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (indent__d1 (_lh_indent_arg1_1 - 1)))));;
let rec isJust__d0 _lh_isJust_arg1_1 =
  (match _lh_isJust_arg1_1 with
    | `Just(_lh_isJust_Just_0_1) -> 
      true
    | `Nothing -> 
      false
    | _ -> 
      (failwith "error"));;
let rec jPiece__d0 _lh_jPiece_arg1_1 =
  (`P('j', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, (0 - 2))), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_N)))));;
let rec kPiece__d0 _lh_kPiece_arg1_1 =
  (`P('k', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))))), (`LH_N))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_N)))));;
let rec lPiece__d0 _lh_lPiece_arg1_1 =
  (`P('l', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))))), (`LH_N))))), (`LH_C((`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))))), (`LH_N)))))));;
let rec length__d0 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (1 + (length__d0 t_2_4))
    | `LH_N -> 
      0);;
let rec mPiece__d0 _lh_mPiece_arg1_1 =
  (`P('m', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_N))))))))), (`LH_N))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 3)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(3, (0 - 1))), (`LH_N))))))))), (`LH_N)))))));;
let rec mapMaybe__d0 _lh_mapMaybe_arg1_1 _lh_mapMaybe_arg2_1 =
  (match _lh_mapMaybe_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_mapMaybe_LH_C_0_1, _lh_mapMaybe_LH_C_1_1) -> 
      (let rec _lh_matchIdent_6_1 = (_lh_mapMaybe_arg1_1 _lh_mapMaybe_LH_C_0_1) in
        (match _lh_matchIdent_6_1 with
          | `Nothing -> 
            ((mapMaybe__d0 _lh_mapMaybe_arg1_1) _lh_mapMaybe_LH_C_1_1)
          | `Just(_lh_mapMaybe_Just_0_1) -> 
            (`LH_C(_lh_mapMaybe_Just_0_1, ((mapMaybe__d0 _lh_mapMaybe_arg1_1) _lh_mapMaybe_LH_C_1_1)))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_1_5 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_5 h_2_5), ((map__d0 f_1_5) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_3 h_2_1), ((map__d1 f_1_3) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C((f_1_4 h_2_3), ((map__d2 f_1_4) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d0 t_2_9) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d1 t_2_6) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec maxCol__d0 =
  8;;
let rec maxCol__d1 =
  8;;
let rec maxCol__d2 =
  8;;
let rec maxCol__d3 =
  8;;
let rec maxRow__d0 =
  8;;
let rec maxRow__d1 =
  8;;
let rec maxRow__d2 =
  8;;
let rec myMin__d0 _lh_myMin_arg1_1 _lh_myMin_arg2_1 =
  (if (_lh_myMin_arg1_1 > _lh_myMin_arg2_1) then
    _lh_myMin_arg1_1
  else
    _lh_myMin_arg2_1);;
let rec nPiece__d0 _lh_nPiece_arg1_1 =
  (`P('n', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_C((`LH_P2(2, (0 - 2))), (`LH_N))))))))), (`LH_N))))), (`LH_N)));;
let rec next__d0 _lh_next_arg1_1 =
  (match _lh_next_arg1_1 with
    | `LH_P2(_lh_next_LH_P2_0_1, _lh_next_LH_P2_1_1) -> 
      (`LH_P2(_lh_next_LH_P2_0_1, (_lh_next_LH_P2_1_1 + 1)))
    | _ -> 
      (failwith "error"));;
let rec next__d1 _lh_next_arg1_2 =
  (match _lh_next_arg1_2 with
    | `LH_P2(_lh_next_LH_P2_0_2, _lh_next_LH_P2_1_2) -> 
      (`LH_P2(_lh_next_LH_P2_0_2, (_lh_next_LH_P2_1_2 + 1)))
    | _ -> 
      (failwith "error"));;
let rec pickOne__d0 _lh_pickOne_arg1_1 =
  (let rec go_1 = (fun _lh_go_arg1_1 _lh_go_arg2_1 -> 
    (match _lh_go_arg2_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_go_LH_C_0_1, _lh_go_LH_C_1_1) -> 
        (`LH_C((`LH_P2(_lh_go_LH_C_0_1, (_lh_go_arg1_1 _lh_go_LH_C_1_1))), ((go_1 (fun _lh_funcomp_x_9 -> 
          ((fun p_3_0 -> 
            (`LH_C(_lh_go_LH_C_0_1, p_3_0))) (_lh_go_arg1_1 _lh_funcomp_x_9)))) _lh_go_LH_C_1_1)))
      | _ -> 
        (failwith "error"))) in
    ((go_1 (fun x_1_9 -> 
      x_1_9)) _lh_pickOne_arg1_1));;
let rec snd__d0 _lh_snd_arg1_3 =
  (match _lh_snd_arg1_3 with
    | `LH_P2(_lh_snd_LH_P2_0_3, _lh_snd_LH_P2_1_3) -> 
      _lh_snd_LH_P2_1_3
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_4 =
  (match _lh_snd_arg1_4 with
    | `LH_P2(_lh_snd_LH_P2_0_4, _lh_snd_LH_P2_1_4) -> 
      _lh_snd_LH_P2_1_4
    | _ -> 
      (failwith "error"));;
let rec snd__d2 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd__d3 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec check__d0 _lh_check_arg1_1 _lh_check_arg2_1 =
  ((mapLookup__d0 _lh_check_arg2_1) _lh_check_arg1_1)
and check__d1 _lh_check_arg1_4 _lh_check_arg2_4 =
  ((mapLookup__d1 _lh_check_arg2_4) _lh_check_arg1_4)
and check__d2 _lh_check_arg1_2 _lh_check_arg2_2 =
  ((mapLookup__d2 _lh_check_arg2_2) _lh_check_arg1_2)
and check__d3 _lh_check_arg1_3 _lh_check_arg2_3 =
  ((mapLookup__d3 _lh_check_arg2_3) _lh_check_arg1_3)
and extend_maybe__d0 _lh_extend_maybe_arg1_1 _lh_extend_maybe_arg2_1 _lh_extend_maybe_arg3_1 =
  (match _lh_extend_maybe_arg2_1 with
    | `LH_P2(_lh_extend_maybe_LH_P2_0_1, _lh_extend_maybe_LH_P2_1_1) -> 
      (if (((_lh_extend_maybe_LH_P2_0_1 > maxRow__d0) || (_lh_extend_maybe_LH_P2_1_1 < 1)) || (_lh_extend_maybe_LH_P2_1_1 > maxCol__d0)) then
        (`Nothing)
      else
        (let rec _lh_matchIdent_6_3 = ((check__d1 _lh_extend_maybe_arg1_1) (`LH_P2(_lh_extend_maybe_LH_P2_0_1, _lh_extend_maybe_LH_P2_1_1))) in
          (match _lh_matchIdent_6_3 with
            | `Just(_lh_extend_maybe_Just_0_1) -> 
              (`Nothing)
            | `Nothing -> 
              (`Just((((extend__d1 _lh_extend_maybe_arg1_1) (`LH_P2(_lh_extend_maybe_LH_P2_0_1, _lh_extend_maybe_LH_P2_1_1))) _lh_extend_maybe_arg3_1)))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and extend_maybe__d1 _lh_extend_maybe_arg1_2 _lh_extend_maybe_arg2_2 _lh_extend_maybe_arg3_2 =
  (match _lh_extend_maybe_arg2_2 with
    | `LH_P2(_lh_extend_maybe_LH_P2_0_2, _lh_extend_maybe_LH_P2_1_2) -> 
      (if (((_lh_extend_maybe_LH_P2_0_2 > maxRow__d2) || (_lh_extend_maybe_LH_P2_1_2 < 1)) || (_lh_extend_maybe_LH_P2_1_2 > maxCol__d3)) then
        (`Nothing)
      else
        (let rec _lh_matchIdent_8_8 = ((check__d3 _lh_extend_maybe_arg1_2) (`LH_P2(_lh_extend_maybe_LH_P2_0_2, _lh_extend_maybe_LH_P2_1_2))) in
          (match _lh_matchIdent_8_8 with
            | `Just(_lh_extend_maybe_Just_0_2) -> 
              (`Nothing)
            | `Nothing -> 
              (`Just((((extend__d3 _lh_extend_maybe_arg1_2) (`LH_P2(_lh_extend_maybe_LH_P2_0_2, _lh_extend_maybe_LH_P2_1_2))) _lh_extend_maybe_arg3_2)))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and extend__d0 _lh_extend_arg1_3 _lh_extend_arg2_3 _lh_extend_arg3_3 =
  (((insert__d0 _lh_extend_arg2_3) _lh_extend_arg3_3) _lh_extend_arg1_3)
and extend__d1 _lh_extend_arg1_4 _lh_extend_arg2_4 _lh_extend_arg3_4 =
  (((insert__d1 _lh_extend_arg2_4) _lh_extend_arg3_4) _lh_extend_arg1_4)
and extend__d2 _lh_extend_arg1_2 _lh_extend_arg2_2 _lh_extend_arg3_2 =
  (((insert__d2 _lh_extend_arg2_2) _lh_extend_arg3_2) _lh_extend_arg1_2)
and extend__d3 _lh_extend_arg1_1 _lh_extend_arg2_1 _lh_extend_arg3_1 =
  (((insert__d3 _lh_extend_arg2_1) _lh_extend_arg3_1) _lh_extend_arg1_1)
and fit__d0 _lh_fit_arg1_2 _lh_fit_arg2_2 _lh_fit_arg3_2 _lh_fit_arg4_2 =
  (match _lh_fit_arg4_2 with
    | `LH_N -> 
      (`Just((((extend__d0 _lh_fit_arg1_2) _lh_fit_arg2_2) _lh_fit_arg3_2)))
    | `LH_C(_lh_fit_LH_C_0_2, _lh_fit_LH_C_1_2) -> 
      (let rec _lh_matchIdent_7_5 = (((extend_maybe__d0 _lh_fit_arg1_2) ((addIntInt__d0 _lh_fit_arg2_2) _lh_fit_LH_C_0_2)) _lh_fit_arg3_2) in
        (match _lh_matchIdent_7_5 with
          | `Just(_lh_fit_Just_0_2) -> 
            ((((fit__d0 _lh_fit_Just_0_2) _lh_fit_arg2_2) _lh_fit_arg3_2) _lh_fit_LH_C_1_2)
          | `Nothing -> 
            (`Nothing)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and fit__d1 _lh_fit_arg1_1 _lh_fit_arg2_1 _lh_fit_arg3_1 _lh_fit_arg4_1 =
  (match _lh_fit_arg4_1 with
    | `LH_N -> 
      (`Just((((extend__d2 _lh_fit_arg1_1) _lh_fit_arg2_1) _lh_fit_arg3_1)))
    | `LH_C(_lh_fit_LH_C_0_1, _lh_fit_LH_C_1_1) -> 
      (let rec _lh_matchIdent_6_2 = (((extend_maybe__d1 _lh_fit_arg1_1) ((addIntInt__d1 _lh_fit_arg2_1) _lh_fit_LH_C_0_1)) _lh_fit_arg3_1) in
        (match _lh_matchIdent_6_2 with
          | `Just(_lh_fit_Just_0_1) -> 
            ((((fit__d1 _lh_fit_Just_0_1) _lh_fit_arg2_1) _lh_fit_arg3_1) _lh_fit_LH_C_1_1)
          | `Nothing -> 
            (`Nothing)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and initialPieces__d0 _lh_initialPieces_arg1_1 =
  (`LH_C((bPiece__d0 0), (`LH_C((cPiece__d0 0), (`LH_C((dPiece__d0 0), (`LH_C((ePiece__d0 0), (`LH_C((fPiece__d0 0), (`LH_C((gPiece__d0 0), (`LH_C((hPiece__d0 0), (`LH_C((iPiece__d0 0), (`LH_C((jPiece__d0 0), (`LH_C((kPiece__d0 0), (`LH_C((lPiece__d0 0), (`LH_C((mPiece__d0 0), (`LH_C((nPiece__d0 0), (`LH_N)))))))))))))))))))))))))))
and insert__d0 _lh_insert_arg1_2 _lh_insert_arg2_2 _lh_insert_arg3_2 =
  (match _lh_insert_arg3_2 with
    | `Tip -> 
      (`Bin(1, _lh_insert_arg1_2, _lh_insert_arg2_2, (`Tip), (`Tip)))
    | `Bin(_lh_insert_Bin_0_2, _lh_insert_Bin_1_2, _lh_insert_Bin_2_2, _lh_insert_Bin_3_2, _lh_insert_Bin_4_2) -> 
      let rec singleton_2 = (fun _lh_singleton_arg1_2 _lh_singleton_arg2_2 -> 
        (`Bin(1, _lh_singleton_arg1_2, _lh_singleton_arg2_2, (`Tip), (`Tip))))
      and doubleR_2 = (fun _lh_doubleR_arg1_2 _lh_doubleR_arg2_2 _lh_doubleR_arg3_2 _lh_doubleR_arg4_2 -> 
        (match _lh_doubleR_arg3_2 with
          | `Bin(_lh_doubleR_Bin_0_6, _lh_doubleR_Bin_1_6, _lh_doubleR_Bin_2_6, _lh_doubleR_Bin_3_6, _lh_doubleR_Bin_4_6) -> 
            (match _lh_doubleR_Bin_4_6 with
              | `Bin(_lh_doubleR_Bin_0_7, _lh_doubleR_Bin_1_7, _lh_doubleR_Bin_2_7, _lh_doubleR_Bin_3_7, _lh_doubleR_Bin_4_7) -> 
                (let rec size_1_8 = (fun p_2_7 -> 
                  (let rec _lh_matchIdent_5_7 = p_2_7 in
                    (match _lh_matchIdent_5_7 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleR_Bin_0_8, _lh_doubleR_Bin_1_8, _lh_doubleR_Bin_2_8, _lh_doubleR_Bin_3_8, _lh_doubleR_Bin_4_8) -> 
                        _lh_doubleR_Bin_0_8
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_1_0 = (fun k_1_8 x_1_7 l_1_0 r_1_2 -> 
                    (`Bin((((size_1_8 l_1_0) + (size_1_8 r_1_2)) + 1), k_1_8, x_1_7, l_1_0, r_1_2))) in
                    ((((bin_1_0 _lh_doubleR_Bin_1_7) _lh_doubleR_Bin_2_7) ((((bin_1_0 _lh_doubleR_Bin_1_6) _lh_doubleR_Bin_2_6) _lh_doubleR_Bin_3_6) _lh_doubleR_Bin_3_7)) ((((bin_1_0 _lh_doubleR_arg1_2) _lh_doubleR_arg2_2) _lh_doubleR_Bin_4_7) _lh_doubleR_arg4_2))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N))))))))))))))))))
      and balance_2 = (fun _lh_balance_arg1_2 _lh_balance_arg2_2 _lh_balance_arg3_2 _lh_balance_arg4_2 -> 
        (let rec size_1_4 = (fun p_2_3 -> 
          (let rec _lh_matchIdent_5_3 = p_2_3 in
            (match _lh_matchIdent_5_3 with
              | `Tip -> 
                0
              | `Bin(_lh_balance_Bin_0_2, _lh_balance_Bin_1_2, _lh_balance_Bin_2_2, _lh_balance_Bin_3_2, _lh_balance_Bin_4_2) -> 
                _lh_balance_Bin_0_2
              | _ -> 
                (failwith "error")))) in
          (let rec sizeL_2 = (size_1_4 _lh_balance_arg3_2) in
            (let rec sizeR_2 = (size_1_4 _lh_balance_arg4_2) in
              (let rec sizeX_2 = ((sizeL_2 + sizeR_2) + 1) in
                (if ((sizeL_2 + sizeR_2) <= 1) then
                  (`Bin(sizeX_2, _lh_balance_arg1_2, _lh_balance_arg2_2, _lh_balance_arg3_2, _lh_balance_arg4_2))
                else
                  (if (sizeR_2 >= (4 * sizeL_2)) then
                    ((((rotateL_2 _lh_balance_arg1_2) _lh_balance_arg2_2) _lh_balance_arg3_2) _lh_balance_arg4_2)
                  else
                    (if (sizeL_2 >= (4 * sizeR_2)) then
                      ((((rotateR_2 _lh_balance_arg1_2) _lh_balance_arg2_2) _lh_balance_arg3_2) _lh_balance_arg4_2)
                    else
                      (`Bin(sizeX_2, _lh_balance_arg1_2, _lh_balance_arg2_2, _lh_balance_arg3_2, _lh_balance_arg4_2))))))))))
      and singleL_2 = (fun _lh_singleL_arg1_2 _lh_singleL_arg2_2 _lh_singleL_arg3_2 _lh_singleL_arg4_2 -> 
        (match _lh_singleL_arg4_2 with
          | `Bin(_lh_singleL_Bin_0_4, _lh_singleL_Bin_1_4, _lh_singleL_Bin_2_4, _lh_singleL_Bin_3_4, _lh_singleL_Bin_4_4) -> 
            (let rec size_1_9 = (fun p_2_8 -> 
              (let rec _lh_matchIdent_5_8 = p_2_8 in
                (match _lh_matchIdent_5_8 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleL_Bin_0_5, _lh_singleL_Bin_1_5, _lh_singleL_Bin_2_5, _lh_singleL_Bin_3_5, _lh_singleL_Bin_4_5) -> 
                    _lh_singleL_Bin_0_5
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_1_1 = (fun k_1_9 x_1_8 l_1_1 r_1_3 -> 
                (`Bin((((size_1_9 l_1_1) + (size_1_9 r_1_3)) + 1), k_1_9, x_1_8, l_1_1, r_1_3))) in
                ((((bin_1_1 _lh_singleL_Bin_1_4) _lh_singleL_Bin_2_4) ((((bin_1_1 _lh_singleL_arg1_2) _lh_singleL_arg2_2) _lh_singleL_arg3_2) _lh_singleL_Bin_3_4)) _lh_singleL_Bin_4_4)))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and singleR_2 = (fun _lh_singleR_arg1_2 _lh_singleR_arg2_2 _lh_singleR_arg3_2 _lh_singleR_arg4_2 -> 
        (match _lh_singleR_arg3_2 with
          | `Bin(_lh_singleR_Bin_0_4, _lh_singleR_Bin_1_4, _lh_singleR_Bin_2_4, _lh_singleR_Bin_3_4, _lh_singleR_Bin_4_4) -> 
            (let rec size_1_7 = (fun p_2_6 -> 
              (let rec _lh_matchIdent_5_6 = p_2_6 in
                (match _lh_matchIdent_5_6 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleR_Bin_0_5, _lh_singleR_Bin_1_5, _lh_singleR_Bin_2_5, _lh_singleR_Bin_3_5, _lh_singleR_Bin_4_5) -> 
                    _lh_singleR_Bin_0_5
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_9 = (fun k_1_7 x_1_6 l_9 r_1_1 -> 
                (`Bin((((size_1_7 l_9) + (size_1_7 r_1_1)) + 1), k_1_7, x_1_6, l_9, r_1_1))) in
                ((((bin_9 _lh_singleR_Bin_1_4) _lh_singleR_Bin_2_4) _lh_singleR_Bin_3_4) ((((bin_9 _lh_singleR_arg1_2) _lh_singleR_arg2_2) _lh_singleR_Bin_4_4) _lh_singleR_arg4_2))))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and doubleL_2 = (fun _lh_doubleL_arg1_2 _lh_doubleL_arg2_2 _lh_doubleL_arg3_2 _lh_doubleL_arg4_2 -> 
        (match _lh_doubleL_arg4_2 with
          | `Bin(_lh_doubleL_Bin_0_6, _lh_doubleL_Bin_1_6, _lh_doubleL_Bin_2_6, _lh_doubleL_Bin_3_6, _lh_doubleL_Bin_4_6) -> 
            (match _lh_doubleL_Bin_3_6 with
              | `Bin(_lh_doubleL_Bin_0_7, _lh_doubleL_Bin_1_7, _lh_doubleL_Bin_2_7, _lh_doubleL_Bin_3_7, _lh_doubleL_Bin_4_7) -> 
                (let rec size_1_6 = (fun p_2_5 -> 
                  (let rec _lh_matchIdent_5_5 = p_2_5 in
                    (match _lh_matchIdent_5_5 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleL_Bin_0_8, _lh_doubleL_Bin_1_8, _lh_doubleL_Bin_2_8, _lh_doubleL_Bin_3_8, _lh_doubleL_Bin_4_8) -> 
                        _lh_doubleL_Bin_0_8
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_8 = (fun k_1_6 x_1_5 l_8 r_1_0 -> 
                    (`Bin((((size_1_6 l_8) + (size_1_6 r_1_0)) + 1), k_1_6, x_1_5, l_8, r_1_0))) in
                    ((((bin_8 _lh_doubleL_Bin_1_7) _lh_doubleL_Bin_2_7) ((((bin_8 _lh_doubleL_arg1_2) _lh_doubleL_arg2_2) _lh_doubleL_arg3_2) _lh_doubleL_Bin_3_7)) ((((bin_8 _lh_doubleL_Bin_1_6) _lh_doubleL_Bin_2_6) _lh_doubleL_Bin_4_7) _lh_doubleL_Bin_4_6))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N))))))))))))))))))
      and rotateR_2 = (fun _lh_rotateR_arg1_2 _lh_rotateR_arg2_2 _lh_rotateR_arg3_2 _lh_rotateR_arg4_2 -> 
        (match _lh_rotateR_arg3_2 with
          | `Bin(_lh_rotateR_Bin_0_4, _lh_rotateR_Bin_1_4, _lh_rotateR_Bin_2_4, _lh_rotateR_Bin_3_4, _lh_rotateR_Bin_4_4) -> 
            (let rec size_1_5 = (fun p_2_4 -> 
              (let rec _lh_matchIdent_5_4 = p_2_4 in
                (match _lh_matchIdent_5_4 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateR_Bin_0_5, _lh_rotateR_Bin_1_5, _lh_rotateR_Bin_2_5, _lh_rotateR_Bin_3_5, _lh_rotateR_Bin_4_5) -> 
                    _lh_rotateR_Bin_0_5
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_1_5 _lh_rotateR_Bin_4_4) < (2 * (size_1_5 _lh_rotateR_Bin_3_4))) then
                ((((singleR_2 _lh_rotateR_arg1_2) _lh_rotateR_arg2_2) (`Bin(_lh_rotateR_Bin_0_4, _lh_rotateR_Bin_1_4, _lh_rotateR_Bin_2_4, _lh_rotateR_Bin_3_4, _lh_rotateR_Bin_4_4))) _lh_rotateR_arg4_2)
              else
                ((((doubleR_2 _lh_rotateR_arg1_2) _lh_rotateR_arg2_2) (`Bin(_lh_rotateR_Bin_0_4, _lh_rotateR_Bin_1_4, _lh_rotateR_Bin_2_4, _lh_rotateR_Bin_3_4, _lh_rotateR_Bin_4_4))) _lh_rotateR_arg4_2)))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and rotateL_2 = (fun _lh_rotateL_arg1_2 _lh_rotateL_arg2_2 _lh_rotateL_arg3_2 _lh_rotateL_arg4_2 -> 
        (match _lh_rotateL_arg4_2 with
          | `Bin(_lh_rotateL_Bin_0_4, _lh_rotateL_Bin_1_4, _lh_rotateL_Bin_2_4, _lh_rotateL_Bin_3_4, _lh_rotateL_Bin_4_4) -> 
            (let rec size_2_0 = (fun p_2_9 -> 
              (let rec _lh_matchIdent_5_9 = p_2_9 in
                (match _lh_matchIdent_5_9 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateL_Bin_0_5, _lh_rotateL_Bin_1_5, _lh_rotateL_Bin_2_5, _lh_rotateL_Bin_3_5, _lh_rotateL_Bin_4_5) -> 
                    _lh_rotateL_Bin_0_5
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_2_0 _lh_rotateL_Bin_3_4) < (2 * (size_2_0 _lh_rotateL_Bin_4_4))) then
                ((((singleL_2 _lh_rotateL_arg1_2) _lh_rotateL_arg2_2) _lh_rotateL_arg3_2) (`Bin(_lh_rotateL_Bin_0_4, _lh_rotateL_Bin_1_4, _lh_rotateL_Bin_2_4, _lh_rotateL_Bin_3_4, _lh_rotateL_Bin_4_4)))
              else
                ((((doubleL_2 _lh_rotateL_arg1_2) _lh_rotateL_arg2_2) _lh_rotateL_arg3_2) (`Bin(_lh_rotateL_Bin_0_4, _lh_rotateL_Bin_1_4, _lh_rotateL_Bin_2_4, _lh_rotateL_Bin_3_4, _lh_rotateL_Bin_4_4)))))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      in (let rec _lh_matchIdent_6_0 = ((compareIntInt__d1 _lh_insert_arg1_2) _lh_insert_Bin_1_2) in
        (match _lh_matchIdent_6_0 with
          | `LT -> 
            ((((balance_2 _lh_insert_Bin_1_2) _lh_insert_Bin_2_2) (((insert__d0 _lh_insert_arg1_2) _lh_insert_arg2_2) _lh_insert_Bin_3_2)) _lh_insert_Bin_4_2)
          | `GT -> 
            ((((balance_2 _lh_insert_Bin_1_2) _lh_insert_Bin_2_2) _lh_insert_Bin_3_2) (((insert__d0 _lh_insert_arg1_2) _lh_insert_arg2_2) _lh_insert_Bin_4_2))
          | `EQ -> 
            (`Bin(_lh_insert_Bin_0_2, _lh_insert_arg1_2, _lh_insert_arg2_2, _lh_insert_Bin_3_2, _lh_insert_Bin_4_2))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and insert__d1 _lh_insert_arg1_3 _lh_insert_arg2_3 _lh_insert_arg3_3 =
  (match _lh_insert_arg3_3 with
    | `Tip -> 
      (`Bin(1, _lh_insert_arg1_3, _lh_insert_arg2_3, (`Tip), (`Tip)))
    | `Bin(_lh_insert_Bin_0_3, _lh_insert_Bin_1_3, _lh_insert_Bin_2_3, _lh_insert_Bin_3_3, _lh_insert_Bin_4_3) -> 
      let rec doubleL_3 = (fun _lh_doubleL_arg1_3 _lh_doubleL_arg2_3 _lh_doubleL_arg3_3 _lh_doubleL_arg4_3 -> 
        (match _lh_doubleL_arg4_3 with
          | `Bin(_lh_doubleL_Bin_0_9, _lh_doubleL_Bin_1_9, _lh_doubleL_Bin_2_9, _lh_doubleL_Bin_3_9, _lh_doubleL_Bin_4_9) -> 
            (match _lh_doubleL_Bin_3_9 with
              | `Bin(_lh_doubleL_Bin_0_1_0, _lh_doubleL_Bin_1_1_0, _lh_doubleL_Bin_2_1_0, _lh_doubleL_Bin_3_1_0, _lh_doubleL_Bin_4_1_0) -> 
                (let rec size_2_3 = (fun p_3_3 -> 
                  (let rec _lh_matchIdent_6_8 = p_3_3 in
                    (match _lh_matchIdent_6_8 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleL_Bin_0_1_1, _lh_doubleL_Bin_1_1_1, _lh_doubleL_Bin_2_1_1, _lh_doubleL_Bin_3_1_1, _lh_doubleL_Bin_4_1_1) -> 
                        _lh_doubleL_Bin_0_1_1
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_1_2 = (fun k_2_0 x_2_0 l_1_2 r_1_4 -> 
                    (`Bin((((size_2_3 l_1_2) + (size_2_3 r_1_4)) + 1), k_2_0, x_2_0, l_1_2, r_1_4))) in
                    ((((bin_1_2 _lh_doubleL_Bin_1_1_0) _lh_doubleL_Bin_2_1_0) ((((bin_1_2 _lh_doubleL_arg1_3) _lh_doubleL_arg2_3) _lh_doubleL_arg3_3) _lh_doubleL_Bin_3_1_0)) ((((bin_1_2 _lh_doubleL_Bin_1_9) _lh_doubleL_Bin_2_9) _lh_doubleL_Bin_4_1_0) _lh_doubleL_Bin_4_9))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N))))))))))))))))))
      and balance_3 = (fun _lh_balance_arg1_3 _lh_balance_arg2_3 _lh_balance_arg3_3 _lh_balance_arg4_3 -> 
        (let rec size_2_1 = (fun p_3_1 -> 
          (let rec _lh_matchIdent_6_6 = p_3_1 in
            (match _lh_matchIdent_6_6 with
              | `Tip -> 
                0
              | `Bin(_lh_balance_Bin_0_3, _lh_balance_Bin_1_3, _lh_balance_Bin_2_3, _lh_balance_Bin_3_3, _lh_balance_Bin_4_3) -> 
                _lh_balance_Bin_0_3
              | _ -> 
                (failwith "error")))) in
          (let rec sizeL_3 = (size_2_1 _lh_balance_arg3_3) in
            (let rec sizeR_3 = (size_2_1 _lh_balance_arg4_3) in
              (let rec sizeX_3 = ((sizeL_3 + sizeR_3) + 1) in
                (if ((sizeL_3 + sizeR_3) <= 1) then
                  (`Bin(sizeX_3, _lh_balance_arg1_3, _lh_balance_arg2_3, _lh_balance_arg3_3, _lh_balance_arg4_3))
                else
                  (if (sizeR_3 >= (4 * sizeL_3)) then
                    ((((rotateL_3 _lh_balance_arg1_3) _lh_balance_arg2_3) _lh_balance_arg3_3) _lh_balance_arg4_3)
                  else
                    (if (sizeL_3 >= (4 * sizeR_3)) then
                      ((((rotateR_3 _lh_balance_arg1_3) _lh_balance_arg2_3) _lh_balance_arg3_3) _lh_balance_arg4_3)
                    else
                      (`Bin(sizeX_3, _lh_balance_arg1_3, _lh_balance_arg2_3, _lh_balance_arg3_3, _lh_balance_arg4_3))))))))))
      and singleton_3 = (fun _lh_singleton_arg1_3 _lh_singleton_arg2_3 -> 
        (`Bin(1, _lh_singleton_arg1_3, _lh_singleton_arg2_3, (`Tip), (`Tip))))
      and rotateR_3 = (fun _lh_rotateR_arg1_3 _lh_rotateR_arg2_3 _lh_rotateR_arg3_3 _lh_rotateR_arg4_3 -> 
        (match _lh_rotateR_arg3_3 with
          | `Bin(_lh_rotateR_Bin_0_6, _lh_rotateR_Bin_1_6, _lh_rotateR_Bin_2_6, _lh_rotateR_Bin_3_6, _lh_rotateR_Bin_4_6) -> 
            (let rec size_2_2 = (fun p_3_2 -> 
              (let rec _lh_matchIdent_6_7 = p_3_2 in
                (match _lh_matchIdent_6_7 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateR_Bin_0_7, _lh_rotateR_Bin_1_7, _lh_rotateR_Bin_2_7, _lh_rotateR_Bin_3_7, _lh_rotateR_Bin_4_7) -> 
                    _lh_rotateR_Bin_0_7
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_2_2 _lh_rotateR_Bin_4_6) < (2 * (size_2_2 _lh_rotateR_Bin_3_6))) then
                ((((singleR_3 _lh_rotateR_arg1_3) _lh_rotateR_arg2_3) (`Bin(_lh_rotateR_Bin_0_6, _lh_rotateR_Bin_1_6, _lh_rotateR_Bin_2_6, _lh_rotateR_Bin_3_6, _lh_rotateR_Bin_4_6))) _lh_rotateR_arg4_3)
              else
                ((((doubleR_3 _lh_rotateR_arg1_3) _lh_rotateR_arg2_3) (`Bin(_lh_rotateR_Bin_0_6, _lh_rotateR_Bin_1_6, _lh_rotateR_Bin_2_6, _lh_rotateR_Bin_3_6, _lh_rotateR_Bin_4_6))) _lh_rotateR_arg4_3)))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and singleL_3 = (fun _lh_singleL_arg1_3 _lh_singleL_arg2_3 _lh_singleL_arg3_3 _lh_singleL_arg4_3 -> 
        (match _lh_singleL_arg4_3 with
          | `Bin(_lh_singleL_Bin_0_6, _lh_singleL_Bin_1_6, _lh_singleL_Bin_2_6, _lh_singleL_Bin_3_6, _lh_singleL_Bin_4_6) -> 
            (let rec size_2_6 = (fun p_3_6 -> 
              (let rec _lh_matchIdent_7_1 = p_3_6 in
                (match _lh_matchIdent_7_1 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleL_Bin_0_7, _lh_singleL_Bin_1_7, _lh_singleL_Bin_2_7, _lh_singleL_Bin_3_7, _lh_singleL_Bin_4_7) -> 
                    _lh_singleL_Bin_0_7
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_1_5 = (fun k_2_3 x_2_3 l_1_5 r_1_7 -> 
                (`Bin((((size_2_6 l_1_5) + (size_2_6 r_1_7)) + 1), k_2_3, x_2_3, l_1_5, r_1_7))) in
                ((((bin_1_5 _lh_singleL_Bin_1_6) _lh_singleL_Bin_2_6) ((((bin_1_5 _lh_singleL_arg1_3) _lh_singleL_arg2_3) _lh_singleL_arg3_3) _lh_singleL_Bin_3_6)) _lh_singleL_Bin_4_6)))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and rotateL_3 = (fun _lh_rotateL_arg1_3 _lh_rotateL_arg2_3 _lh_rotateL_arg3_3 _lh_rotateL_arg4_3 -> 
        (match _lh_rotateL_arg4_3 with
          | `Bin(_lh_rotateL_Bin_0_6, _lh_rotateL_Bin_1_6, _lh_rotateL_Bin_2_6, _lh_rotateL_Bin_3_6, _lh_rotateL_Bin_4_6) -> 
            (let rec size_2_7 = (fun p_3_7 -> 
              (let rec _lh_matchIdent_7_2 = p_3_7 in
                (match _lh_matchIdent_7_2 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateL_Bin_0_7, _lh_rotateL_Bin_1_7, _lh_rotateL_Bin_2_7, _lh_rotateL_Bin_3_7, _lh_rotateL_Bin_4_7) -> 
                    _lh_rotateL_Bin_0_7
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_2_7 _lh_rotateL_Bin_3_6) < (2 * (size_2_7 _lh_rotateL_Bin_4_6))) then
                ((((singleL_3 _lh_rotateL_arg1_3) _lh_rotateL_arg2_3) _lh_rotateL_arg3_3) (`Bin(_lh_rotateL_Bin_0_6, _lh_rotateL_Bin_1_6, _lh_rotateL_Bin_2_6, _lh_rotateL_Bin_3_6, _lh_rotateL_Bin_4_6)))
              else
                ((((doubleL_3 _lh_rotateL_arg1_3) _lh_rotateL_arg2_3) _lh_rotateL_arg3_3) (`Bin(_lh_rotateL_Bin_0_6, _lh_rotateL_Bin_1_6, _lh_rotateL_Bin_2_6, _lh_rotateL_Bin_3_6, _lh_rotateL_Bin_4_6)))))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and doubleR_3 = (fun _lh_doubleR_arg1_3 _lh_doubleR_arg2_3 _lh_doubleR_arg3_3 _lh_doubleR_arg4_3 -> 
        (match _lh_doubleR_arg3_3 with
          | `Bin(_lh_doubleR_Bin_0_9, _lh_doubleR_Bin_1_9, _lh_doubleR_Bin_2_9, _lh_doubleR_Bin_3_9, _lh_doubleR_Bin_4_9) -> 
            (match _lh_doubleR_Bin_4_9 with
              | `Bin(_lh_doubleR_Bin_0_1_0, _lh_doubleR_Bin_1_1_0, _lh_doubleR_Bin_2_1_0, _lh_doubleR_Bin_3_1_0, _lh_doubleR_Bin_4_1_0) -> 
                (let rec size_2_5 = (fun p_3_5 -> 
                  (let rec _lh_matchIdent_7_0 = p_3_5 in
                    (match _lh_matchIdent_7_0 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleR_Bin_0_1_1, _lh_doubleR_Bin_1_1_1, _lh_doubleR_Bin_2_1_1, _lh_doubleR_Bin_3_1_1, _lh_doubleR_Bin_4_1_1) -> 
                        _lh_doubleR_Bin_0_1_1
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_1_4 = (fun k_2_2 x_2_2 l_1_4 r_1_6 -> 
                    (`Bin((((size_2_5 l_1_4) + (size_2_5 r_1_6)) + 1), k_2_2, x_2_2, l_1_4, r_1_6))) in
                    ((((bin_1_4 _lh_doubleR_Bin_1_1_0) _lh_doubleR_Bin_2_1_0) ((((bin_1_4 _lh_doubleR_Bin_1_9) _lh_doubleR_Bin_2_9) _lh_doubleR_Bin_3_9) _lh_doubleR_Bin_3_1_0)) ((((bin_1_4 _lh_doubleR_arg1_3) _lh_doubleR_arg2_3) _lh_doubleR_Bin_4_1_0) _lh_doubleR_arg4_3))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N))))))))))))))))))
      and singleR_3 = (fun _lh_singleR_arg1_3 _lh_singleR_arg2_3 _lh_singleR_arg3_3 _lh_singleR_arg4_3 -> 
        (match _lh_singleR_arg3_3 with
          | `Bin(_lh_singleR_Bin_0_6, _lh_singleR_Bin_1_6, _lh_singleR_Bin_2_6, _lh_singleR_Bin_3_6, _lh_singleR_Bin_4_6) -> 
            (let rec size_2_4 = (fun p_3_4 -> 
              (let rec _lh_matchIdent_6_9 = p_3_4 in
                (match _lh_matchIdent_6_9 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleR_Bin_0_7, _lh_singleR_Bin_1_7, _lh_singleR_Bin_2_7, _lh_singleR_Bin_3_7, _lh_singleR_Bin_4_7) -> 
                    _lh_singleR_Bin_0_7
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_1_3 = (fun k_2_1 x_2_1 l_1_3 r_1_5 -> 
                (`Bin((((size_2_4 l_1_3) + (size_2_4 r_1_5)) + 1), k_2_1, x_2_1, l_1_3, r_1_5))) in
                ((((bin_1_3 _lh_singleR_Bin_1_6) _lh_singleR_Bin_2_6) _lh_singleR_Bin_3_6) ((((bin_1_3 _lh_singleR_arg1_3) _lh_singleR_arg2_3) _lh_singleR_Bin_4_6) _lh_singleR_arg4_3))))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      in (let rec _lh_matchIdent_7_3 = ((compareIntInt__d3 _lh_insert_arg1_3) _lh_insert_Bin_1_3) in
        (match _lh_matchIdent_7_3 with
          | `LT -> 
            ((((balance_3 _lh_insert_Bin_1_3) _lh_insert_Bin_2_3) (((insert__d1 _lh_insert_arg1_3) _lh_insert_arg2_3) _lh_insert_Bin_3_3)) _lh_insert_Bin_4_3)
          | `GT -> 
            ((((balance_3 _lh_insert_Bin_1_3) _lh_insert_Bin_2_3) _lh_insert_Bin_3_3) (((insert__d1 _lh_insert_arg1_3) _lh_insert_arg2_3) _lh_insert_Bin_4_3))
          | `EQ -> 
            (`Bin(_lh_insert_Bin_0_3, _lh_insert_arg1_3, _lh_insert_arg2_3, _lh_insert_Bin_3_3, _lh_insert_Bin_4_3))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and insert__d2 _lh_insert_arg1_1 _lh_insert_arg2_1 _lh_insert_arg3_1 =
  (match _lh_insert_arg3_1 with
    | `Tip -> 
      (`Bin(1, _lh_insert_arg1_1, _lh_insert_arg2_1, (`Tip), (`Tip)))
    | `Bin(_lh_insert_Bin_0_1, _lh_insert_Bin_1_1, _lh_insert_Bin_2_1, _lh_insert_Bin_3_1, _lh_insert_Bin_4_1) -> 
      let rec singleton_1 = (fun _lh_singleton_arg1_1 _lh_singleton_arg2_1 -> 
        (`Bin(1, _lh_singleton_arg1_1, _lh_singleton_arg2_1, (`Tip), (`Tip))))
      and doubleR_1 = (fun _lh_doubleR_arg1_1 _lh_doubleR_arg2_1 _lh_doubleR_arg3_1 _lh_doubleR_arg4_1 -> 
        (match _lh_doubleR_arg3_1 with
          | `Bin(_lh_doubleR_Bin_0_3, _lh_doubleR_Bin_1_3, _lh_doubleR_Bin_2_3, _lh_doubleR_Bin_3_3, _lh_doubleR_Bin_4_3) -> 
            (match _lh_doubleR_Bin_4_3 with
              | `Bin(_lh_doubleR_Bin_0_4, _lh_doubleR_Bin_1_4, _lh_doubleR_Bin_2_4, _lh_doubleR_Bin_3_4, _lh_doubleR_Bin_4_4) -> 
                (let rec size_1_1 = (fun p_1_6 -> 
                  (let rec _lh_matchIdent_3_4 = p_1_6 in
                    (match _lh_matchIdent_3_4 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleR_Bin_0_5, _lh_doubleR_Bin_1_5, _lh_doubleR_Bin_2_5, _lh_doubleR_Bin_3_5, _lh_doubleR_Bin_4_5) -> 
                        _lh_doubleR_Bin_0_5
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_6 = (fun k_1_0 x_1_1 l_6 r_7 -> 
                    (`Bin((((size_1_1 l_6) + (size_1_1 r_7)) + 1), k_1_0, x_1_1, l_6, r_7))) in
                    ((((bin_6 _lh_doubleR_Bin_1_4) _lh_doubleR_Bin_2_4) ((((bin_6 _lh_doubleR_Bin_1_3) _lh_doubleR_Bin_2_3) _lh_doubleR_Bin_3_3) _lh_doubleR_Bin_3_4)) ((((bin_6 _lh_doubleR_arg1_1) _lh_doubleR_arg2_1) _lh_doubleR_Bin_4_4) _lh_doubleR_arg4_1))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N))))))))))))))))))
      and singleR_1 = (fun _lh_singleR_arg1_1 _lh_singleR_arg2_1 _lh_singleR_arg3_1 _lh_singleR_arg4_1 -> 
        (match _lh_singleR_arg3_1 with
          | `Bin(_lh_singleR_Bin_0_2, _lh_singleR_Bin_1_2, _lh_singleR_Bin_2_2, _lh_singleR_Bin_3_2, _lh_singleR_Bin_4_2) -> 
            (let rec size_1_0 = (fun p_1_5 -> 
              (let rec _lh_matchIdent_3_3 = p_1_5 in
                (match _lh_matchIdent_3_3 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleR_Bin_0_3, _lh_singleR_Bin_1_3, _lh_singleR_Bin_2_3, _lh_singleR_Bin_3_3, _lh_singleR_Bin_4_3) -> 
                    _lh_singleR_Bin_0_3
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_5 = (fun k_9 x_1_0 l_5 r_6 -> 
                (`Bin((((size_1_0 l_5) + (size_1_0 r_6)) + 1), k_9, x_1_0, l_5, r_6))) in
                ((((bin_5 _lh_singleR_Bin_1_2) _lh_singleR_Bin_2_2) _lh_singleR_Bin_3_2) ((((bin_5 _lh_singleR_arg1_1) _lh_singleR_arg2_1) _lh_singleR_Bin_4_2) _lh_singleR_arg4_1))))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and singleL_1 = (fun _lh_singleL_arg1_1 _lh_singleL_arg2_1 _lh_singleL_arg3_1 _lh_singleL_arg4_1 -> 
        (match _lh_singleL_arg4_1 with
          | `Bin(_lh_singleL_Bin_0_2, _lh_singleL_Bin_1_2, _lh_singleL_Bin_2_2, _lh_singleL_Bin_3_2, _lh_singleL_Bin_4_2) -> 
            (let rec size_1_2 = (fun p_1_7 -> 
              (let rec _lh_matchIdent_3_5 = p_1_7 in
                (match _lh_matchIdent_3_5 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleL_Bin_0_3, _lh_singleL_Bin_1_3, _lh_singleL_Bin_2_3, _lh_singleL_Bin_3_3, _lh_singleL_Bin_4_3) -> 
                    _lh_singleL_Bin_0_3
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_7 = (fun k_1_1 x_1_2 l_7 r_8 -> 
                (`Bin((((size_1_2 l_7) + (size_1_2 r_8)) + 1), k_1_1, x_1_2, l_7, r_8))) in
                ((((bin_7 _lh_singleL_Bin_1_2) _lh_singleL_Bin_2_2) ((((bin_7 _lh_singleL_arg1_1) _lh_singleL_arg2_1) _lh_singleL_arg3_1) _lh_singleL_Bin_3_2)) _lh_singleL_Bin_4_2)))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and rotateL_1 = (fun _lh_rotateL_arg1_1 _lh_rotateL_arg2_1 _lh_rotateL_arg3_1 _lh_rotateL_arg4_1 -> 
        (match _lh_rotateL_arg4_1 with
          | `Bin(_lh_rotateL_Bin_0_2, _lh_rotateL_Bin_1_2, _lh_rotateL_Bin_2_2, _lh_rotateL_Bin_3_2, _lh_rotateL_Bin_4_2) -> 
            (let rec size_1_3 = (fun p_1_8 -> 
              (let rec _lh_matchIdent_3_6 = p_1_8 in
                (match _lh_matchIdent_3_6 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateL_Bin_0_3, _lh_rotateL_Bin_1_3, _lh_rotateL_Bin_2_3, _lh_rotateL_Bin_3_3, _lh_rotateL_Bin_4_3) -> 
                    _lh_rotateL_Bin_0_3
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_1_3 _lh_rotateL_Bin_3_2) < (2 * (size_1_3 _lh_rotateL_Bin_4_2))) then
                ((((singleL_1 _lh_rotateL_arg1_1) _lh_rotateL_arg2_1) _lh_rotateL_arg3_1) (`Bin(_lh_rotateL_Bin_0_2, _lh_rotateL_Bin_1_2, _lh_rotateL_Bin_2_2, _lh_rotateL_Bin_3_2, _lh_rotateL_Bin_4_2)))
              else
                ((((doubleL_1 _lh_rotateL_arg1_1) _lh_rotateL_arg2_1) _lh_rotateL_arg3_1) (`Bin(_lh_rotateL_Bin_0_2, _lh_rotateL_Bin_1_2, _lh_rotateL_Bin_2_2, _lh_rotateL_Bin_3_2, _lh_rotateL_Bin_4_2)))))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and doubleL_1 = (fun _lh_doubleL_arg1_1 _lh_doubleL_arg2_1 _lh_doubleL_arg3_1 _lh_doubleL_arg4_1 -> 
        (match _lh_doubleL_arg4_1 with
          | `Bin(_lh_doubleL_Bin_0_3, _lh_doubleL_Bin_1_3, _lh_doubleL_Bin_2_3, _lh_doubleL_Bin_3_3, _lh_doubleL_Bin_4_3) -> 
            (match _lh_doubleL_Bin_3_3 with
              | `Bin(_lh_doubleL_Bin_0_4, _lh_doubleL_Bin_1_4, _lh_doubleL_Bin_2_4, _lh_doubleL_Bin_3_4, _lh_doubleL_Bin_4_4) -> 
                (let rec size_9 = (fun p_1_4 -> 
                  (let rec _lh_matchIdent_3_2 = p_1_4 in
                    (match _lh_matchIdent_3_2 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleL_Bin_0_5, _lh_doubleL_Bin_1_5, _lh_doubleL_Bin_2_5, _lh_doubleL_Bin_3_5, _lh_doubleL_Bin_4_5) -> 
                        _lh_doubleL_Bin_0_5
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_4 = (fun k_8 x_9 l_4 r_5 -> 
                    (`Bin((((size_9 l_4) + (size_9 r_5)) + 1), k_8, x_9, l_4, r_5))) in
                    ((((bin_4 _lh_doubleL_Bin_1_4) _lh_doubleL_Bin_2_4) ((((bin_4 _lh_doubleL_arg1_1) _lh_doubleL_arg2_1) _lh_doubleL_arg3_1) _lh_doubleL_Bin_3_4)) ((((bin_4 _lh_doubleL_Bin_1_3) _lh_doubleL_Bin_2_3) _lh_doubleL_Bin_4_4) _lh_doubleL_Bin_4_3))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N))))))))))))))))))
      and balance_1 = (fun _lh_balance_arg1_1 _lh_balance_arg2_1 _lh_balance_arg3_1 _lh_balance_arg4_1 -> 
        (let rec size_7 = (fun p_1_2 -> 
          (let rec _lh_matchIdent_3_0 = p_1_2 in
            (match _lh_matchIdent_3_0 with
              | `Tip -> 
                0
              | `Bin(_lh_balance_Bin_0_1, _lh_balance_Bin_1_1, _lh_balance_Bin_2_1, _lh_balance_Bin_3_1, _lh_balance_Bin_4_1) -> 
                _lh_balance_Bin_0_1
              | _ -> 
                (failwith "error")))) in
          (let rec sizeL_1 = (size_7 _lh_balance_arg3_1) in
            (let rec sizeR_1 = (size_7 _lh_balance_arg4_1) in
              (let rec sizeX_1 = ((sizeL_1 + sizeR_1) + 1) in
                (if ((sizeL_1 + sizeR_1) <= 1) then
                  (`Bin(sizeX_1, _lh_balance_arg1_1, _lh_balance_arg2_1, _lh_balance_arg3_1, _lh_balance_arg4_1))
                else
                  (if (sizeR_1 >= (4 * sizeL_1)) then
                    ((((rotateL_1 _lh_balance_arg1_1) _lh_balance_arg2_1) _lh_balance_arg3_1) _lh_balance_arg4_1)
                  else
                    (if (sizeL_1 >= (4 * sizeR_1)) then
                      ((((rotateR_1 _lh_balance_arg1_1) _lh_balance_arg2_1) _lh_balance_arg3_1) _lh_balance_arg4_1)
                    else
                      (`Bin(sizeX_1, _lh_balance_arg1_1, _lh_balance_arg2_1, _lh_balance_arg3_1, _lh_balance_arg4_1))))))))))
      and rotateR_1 = (fun _lh_rotateR_arg1_1 _lh_rotateR_arg2_1 _lh_rotateR_arg3_1 _lh_rotateR_arg4_1 -> 
        (match _lh_rotateR_arg3_1 with
          | `Bin(_lh_rotateR_Bin_0_2, _lh_rotateR_Bin_1_2, _lh_rotateR_Bin_2_2, _lh_rotateR_Bin_3_2, _lh_rotateR_Bin_4_2) -> 
            (let rec size_8 = (fun p_1_3 -> 
              (let rec _lh_matchIdent_3_1 = p_1_3 in
                (match _lh_matchIdent_3_1 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateR_Bin_0_3, _lh_rotateR_Bin_1_3, _lh_rotateR_Bin_2_3, _lh_rotateR_Bin_3_3, _lh_rotateR_Bin_4_3) -> 
                    _lh_rotateR_Bin_0_3
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_8 _lh_rotateR_Bin_4_2) < (2 * (size_8 _lh_rotateR_Bin_3_2))) then
                ((((singleR_1 _lh_rotateR_arg1_1) _lh_rotateR_arg2_1) (`Bin(_lh_rotateR_Bin_0_2, _lh_rotateR_Bin_1_2, _lh_rotateR_Bin_2_2, _lh_rotateR_Bin_3_2, _lh_rotateR_Bin_4_2))) _lh_rotateR_arg4_1)
              else
                ((((doubleR_1 _lh_rotateR_arg1_1) _lh_rotateR_arg2_1) (`Bin(_lh_rotateR_Bin_0_2, _lh_rotateR_Bin_1_2, _lh_rotateR_Bin_2_2, _lh_rotateR_Bin_3_2, _lh_rotateR_Bin_4_2))) _lh_rotateR_arg4_1)))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      in (let rec _lh_matchIdent_3_7 = ((compareIntInt__d5 _lh_insert_arg1_1) _lh_insert_Bin_1_1) in
        (match _lh_matchIdent_3_7 with
          | `LT -> 
            ((((balance_1 _lh_insert_Bin_1_1) _lh_insert_Bin_2_1) (((insert__d2 _lh_insert_arg1_1) _lh_insert_arg2_1) _lh_insert_Bin_3_1)) _lh_insert_Bin_4_1)
          | `GT -> 
            ((((balance_1 _lh_insert_Bin_1_1) _lh_insert_Bin_2_1) _lh_insert_Bin_3_1) (((insert__d2 _lh_insert_arg1_1) _lh_insert_arg2_1) _lh_insert_Bin_4_1))
          | `EQ -> 
            (`Bin(_lh_insert_Bin_0_1, _lh_insert_arg1_1, _lh_insert_arg2_1, _lh_insert_Bin_3_1, _lh_insert_Bin_4_1))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and insert__d3 _lh_insert_arg1_4 _lh_insert_arg2_4 _lh_insert_arg3_4 =
  (match _lh_insert_arg3_4 with
    | `Tip -> 
      (`Bin(1, _lh_insert_arg1_4, _lh_insert_arg2_4, (`Tip), (`Tip)))
    | `Bin(_lh_insert_Bin_0_4, _lh_insert_Bin_1_4, _lh_insert_Bin_2_4, _lh_insert_Bin_3_4, _lh_insert_Bin_4_4) -> 
      let rec rotateR_4 = (fun _lh_rotateR_arg1_4 _lh_rotateR_arg2_4 _lh_rotateR_arg3_4 _lh_rotateR_arg4_4 -> 
        (match _lh_rotateR_arg3_4 with
          | `Bin(_lh_rotateR_Bin_0_8, _lh_rotateR_Bin_1_8, _lh_rotateR_Bin_2_8, _lh_rotateR_Bin_3_8, _lh_rotateR_Bin_4_8) -> 
            (let rec size_2_9 = (fun p_3_9 -> 
              (let rec _lh_matchIdent_7_9 = p_3_9 in
                (match _lh_matchIdent_7_9 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateR_Bin_0_9, _lh_rotateR_Bin_1_9, _lh_rotateR_Bin_2_9, _lh_rotateR_Bin_3_9, _lh_rotateR_Bin_4_9) -> 
                    _lh_rotateR_Bin_0_9
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_2_9 _lh_rotateR_Bin_4_8) < (2 * (size_2_9 _lh_rotateR_Bin_3_8))) then
                ((((singleR_4 _lh_rotateR_arg1_4) _lh_rotateR_arg2_4) (`Bin(_lh_rotateR_Bin_0_8, _lh_rotateR_Bin_1_8, _lh_rotateR_Bin_2_8, _lh_rotateR_Bin_3_8, _lh_rotateR_Bin_4_8))) _lh_rotateR_arg4_4)
              else
                ((((doubleR_4 _lh_rotateR_arg1_4) _lh_rotateR_arg2_4) (`Bin(_lh_rotateR_Bin_0_8, _lh_rotateR_Bin_1_8, _lh_rotateR_Bin_2_8, _lh_rotateR_Bin_3_8, _lh_rotateR_Bin_4_8))) _lh_rotateR_arg4_4)))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and doubleL_4 = (fun _lh_doubleL_arg1_4 _lh_doubleL_arg2_4 _lh_doubleL_arg3_4 _lh_doubleL_arg4_4 -> 
        (match _lh_doubleL_arg4_4 with
          | `Bin(_lh_doubleL_Bin_0_1_2, _lh_doubleL_Bin_1_1_2, _lh_doubleL_Bin_2_1_2, _lh_doubleL_Bin_3_1_2, _lh_doubleL_Bin_4_1_2) -> 
            (match _lh_doubleL_Bin_3_1_2 with
              | `Bin(_lh_doubleL_Bin_0_1_3, _lh_doubleL_Bin_1_1_3, _lh_doubleL_Bin_2_1_3, _lh_doubleL_Bin_3_1_3, _lh_doubleL_Bin_4_1_3) -> 
                (let rec size_3_0 = (fun p_4_0 -> 
                  (let rec _lh_matchIdent_8_0 = p_4_0 in
                    (match _lh_matchIdent_8_0 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleL_Bin_0_1_4, _lh_doubleL_Bin_1_1_4, _lh_doubleL_Bin_2_1_4, _lh_doubleL_Bin_3_1_4, _lh_doubleL_Bin_4_1_4) -> 
                        _lh_doubleL_Bin_0_1_4
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_1_6 = (fun k_2_4 x_2_4 l_1_6 r_1_8 -> 
                    (`Bin((((size_3_0 l_1_6) + (size_3_0 r_1_8)) + 1), k_2_4, x_2_4, l_1_6, r_1_8))) in
                    ((((bin_1_6 _lh_doubleL_Bin_1_1_3) _lh_doubleL_Bin_2_1_3) ((((bin_1_6 _lh_doubleL_arg1_4) _lh_doubleL_arg2_4) _lh_doubleL_arg3_4) _lh_doubleL_Bin_3_1_3)) ((((bin_1_6 _lh_doubleL_Bin_1_1_2) _lh_doubleL_Bin_2_1_2) _lh_doubleL_Bin_4_1_3) _lh_doubleL_Bin_4_1_2))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N))))))))))))))))))
      and singleL_4 = (fun _lh_singleL_arg1_4 _lh_singleL_arg2_4 _lh_singleL_arg3_4 _lh_singleL_arg4_4 -> 
        (match _lh_singleL_arg4_4 with
          | `Bin(_lh_singleL_Bin_0_8, _lh_singleL_Bin_1_8, _lh_singleL_Bin_2_8, _lh_singleL_Bin_3_8, _lh_singleL_Bin_4_8) -> 
            (let rec size_3_3 = (fun p_4_3 -> 
              (let rec _lh_matchIdent_8_3 = p_4_3 in
                (match _lh_matchIdent_8_3 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleL_Bin_0_9, _lh_singleL_Bin_1_9, _lh_singleL_Bin_2_9, _lh_singleL_Bin_3_9, _lh_singleL_Bin_4_9) -> 
                    _lh_singleL_Bin_0_9
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_1_9 = (fun k_2_7 x_2_7 l_1_9 r_2_1 -> 
                (`Bin((((size_3_3 l_1_9) + (size_3_3 r_2_1)) + 1), k_2_7, x_2_7, l_1_9, r_2_1))) in
                ((((bin_1_9 _lh_singleL_Bin_1_8) _lh_singleL_Bin_2_8) ((((bin_1_9 _lh_singleL_arg1_4) _lh_singleL_arg2_4) _lh_singleL_arg3_4) _lh_singleL_Bin_3_8)) _lh_singleL_Bin_4_8)))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and rotateL_4 = (fun _lh_rotateL_arg1_4 _lh_rotateL_arg2_4 _lh_rotateL_arg3_4 _lh_rotateL_arg4_4 -> 
        (match _lh_rotateL_arg4_4 with
          | `Bin(_lh_rotateL_Bin_0_8, _lh_rotateL_Bin_1_8, _lh_rotateL_Bin_2_8, _lh_rotateL_Bin_3_8, _lh_rotateL_Bin_4_8) -> 
            (let rec size_3_4 = (fun p_4_4 -> 
              (let rec _lh_matchIdent_8_4 = p_4_4 in
                (match _lh_matchIdent_8_4 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateL_Bin_0_9, _lh_rotateL_Bin_1_9, _lh_rotateL_Bin_2_9, _lh_rotateL_Bin_3_9, _lh_rotateL_Bin_4_9) -> 
                    _lh_rotateL_Bin_0_9
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_3_4 _lh_rotateL_Bin_3_8) < (2 * (size_3_4 _lh_rotateL_Bin_4_8))) then
                ((((singleL_4 _lh_rotateL_arg1_4) _lh_rotateL_arg2_4) _lh_rotateL_arg3_4) (`Bin(_lh_rotateL_Bin_0_8, _lh_rotateL_Bin_1_8, _lh_rotateL_Bin_2_8, _lh_rotateL_Bin_3_8, _lh_rotateL_Bin_4_8)))
              else
                ((((doubleL_4 _lh_rotateL_arg1_4) _lh_rotateL_arg2_4) _lh_rotateL_arg3_4) (`Bin(_lh_rotateL_Bin_0_8, _lh_rotateL_Bin_1_8, _lh_rotateL_Bin_2_8, _lh_rotateL_Bin_3_8, _lh_rotateL_Bin_4_8)))))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and balance_4 = (fun _lh_balance_arg1_4 _lh_balance_arg2_4 _lh_balance_arg3_4 _lh_balance_arg4_4 -> 
        (let rec size_2_8 = (fun p_3_8 -> 
          (let rec _lh_matchIdent_7_8 = p_3_8 in
            (match _lh_matchIdent_7_8 with
              | `Tip -> 
                0
              | `Bin(_lh_balance_Bin_0_4, _lh_balance_Bin_1_4, _lh_balance_Bin_2_4, _lh_balance_Bin_3_4, _lh_balance_Bin_4_4) -> 
                _lh_balance_Bin_0_4
              | _ -> 
                (failwith "error")))) in
          (let rec sizeL_4 = (size_2_8 _lh_balance_arg3_4) in
            (let rec sizeR_4 = (size_2_8 _lh_balance_arg4_4) in
              (let rec sizeX_4 = ((sizeL_4 + sizeR_4) + 1) in
                (if ((sizeL_4 + sizeR_4) <= 1) then
                  (`Bin(sizeX_4, _lh_balance_arg1_4, _lh_balance_arg2_4, _lh_balance_arg3_4, _lh_balance_arg4_4))
                else
                  (if (sizeR_4 >= (4 * sizeL_4)) then
                    ((((rotateL_4 _lh_balance_arg1_4) _lh_balance_arg2_4) _lh_balance_arg3_4) _lh_balance_arg4_4)
                  else
                    (if (sizeL_4 >= (4 * sizeR_4)) then
                      ((((rotateR_4 _lh_balance_arg1_4) _lh_balance_arg2_4) _lh_balance_arg3_4) _lh_balance_arg4_4)
                    else
                      (`Bin(sizeX_4, _lh_balance_arg1_4, _lh_balance_arg2_4, _lh_balance_arg3_4, _lh_balance_arg4_4))))))))))
      and singleR_4 = (fun _lh_singleR_arg1_4 _lh_singleR_arg2_4 _lh_singleR_arg3_4 _lh_singleR_arg4_4 -> 
        (match _lh_singleR_arg3_4 with
          | `Bin(_lh_singleR_Bin_0_8, _lh_singleR_Bin_1_8, _lh_singleR_Bin_2_8, _lh_singleR_Bin_3_8, _lh_singleR_Bin_4_8) -> 
            (let rec size_3_1 = (fun p_4_1 -> 
              (let rec _lh_matchIdent_8_1 = p_4_1 in
                (match _lh_matchIdent_8_1 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleR_Bin_0_9, _lh_singleR_Bin_1_9, _lh_singleR_Bin_2_9, _lh_singleR_Bin_3_9, _lh_singleR_Bin_4_9) -> 
                    _lh_singleR_Bin_0_9
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_1_7 = (fun k_2_5 x_2_5 l_1_7 r_1_9 -> 
                (`Bin((((size_3_1 l_1_7) + (size_3_1 r_1_9)) + 1), k_2_5, x_2_5, l_1_7, r_1_9))) in
                ((((bin_1_7 _lh_singleR_Bin_1_8) _lh_singleR_Bin_2_8) _lh_singleR_Bin_3_8) ((((bin_1_7 _lh_singleR_arg1_4) _lh_singleR_arg2_4) _lh_singleR_Bin_4_8) _lh_singleR_arg4_4))))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and doubleR_4 = (fun _lh_doubleR_arg1_4 _lh_doubleR_arg2_4 _lh_doubleR_arg3_4 _lh_doubleR_arg4_4 -> 
        (match _lh_doubleR_arg3_4 with
          | `Bin(_lh_doubleR_Bin_0_1_2, _lh_doubleR_Bin_1_1_2, _lh_doubleR_Bin_2_1_2, _lh_doubleR_Bin_3_1_2, _lh_doubleR_Bin_4_1_2) -> 
            (match _lh_doubleR_Bin_4_1_2 with
              | `Bin(_lh_doubleR_Bin_0_1_3, _lh_doubleR_Bin_1_1_3, _lh_doubleR_Bin_2_1_3, _lh_doubleR_Bin_3_1_3, _lh_doubleR_Bin_4_1_3) -> 
                (let rec size_3_2 = (fun p_4_2 -> 
                  (let rec _lh_matchIdent_8_2 = p_4_2 in
                    (match _lh_matchIdent_8_2 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleR_Bin_0_1_4, _lh_doubleR_Bin_1_1_4, _lh_doubleR_Bin_2_1_4, _lh_doubleR_Bin_3_1_4, _lh_doubleR_Bin_4_1_4) -> 
                        _lh_doubleR_Bin_0_1_4
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_1_8 = (fun k_2_6 x_2_6 l_1_8 r_2_0 -> 
                    (`Bin((((size_3_2 l_1_8) + (size_3_2 r_2_0)) + 1), k_2_6, x_2_6, l_1_8, r_2_0))) in
                    ((((bin_1_8 _lh_doubleR_Bin_1_1_3) _lh_doubleR_Bin_2_1_3) ((((bin_1_8 _lh_doubleR_Bin_1_1_2) _lh_doubleR_Bin_2_1_2) _lh_doubleR_Bin_3_1_2) _lh_doubleR_Bin_3_1_3)) ((((bin_1_8 _lh_doubleR_arg1_4) _lh_doubleR_arg2_4) _lh_doubleR_Bin_4_1_3) _lh_doubleR_arg4_4))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N))))))))))))))))))
      and singleton_4 = (fun _lh_singleton_arg1_4 _lh_singleton_arg2_4 -> 
        (`Bin(1, _lh_singleton_arg1_4, _lh_singleton_arg2_4, (`Tip), (`Tip))))
      in (let rec _lh_matchIdent_8_5 = ((compareIntInt__d7 _lh_insert_arg1_4) _lh_insert_Bin_1_4) in
        (match _lh_matchIdent_8_5 with
          | `LT -> 
            ((((balance_4 _lh_insert_Bin_1_4) _lh_insert_Bin_2_4) (((insert__d3 _lh_insert_arg1_4) _lh_insert_arg2_4) _lh_insert_Bin_3_4)) _lh_insert_Bin_4_4)
          | `GT -> 
            ((((balance_4 _lh_insert_Bin_1_4) _lh_insert_Bin_2_4) _lh_insert_Bin_3_4) (((insert__d3 _lh_insert_arg1_4) _lh_insert_arg2_4) _lh_insert_Bin_4_4))
          | `EQ -> 
            (`Bin(_lh_insert_Bin_0_4, _lh_insert_arg1_4, _lh_insert_arg2_4, _lh_insert_Bin_3_4, _lh_insert_Bin_4_4))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and mapLookup__d0 _lh_mapLookup_arg1_3 _lh_mapLookup_arg2_3 =
  (match _lh_mapLookup_arg2_3 with
    | `Tip -> 
      (`Nothing)
    | `Bin(_lh_mapLookup_Bin_0_3, _lh_mapLookup_Bin_1_3, _lh_mapLookup_Bin_2_3, _lh_mapLookup_Bin_3_3, _lh_mapLookup_Bin_4_3) -> 
      (let rec _lh_matchIdent_7_6 = ((compareIntInt__d0 _lh_mapLookup_arg1_3) _lh_mapLookup_Bin_1_3) in
        (match _lh_matchIdent_7_6 with
          | `LT -> 
            ((mapLookup__d0 _lh_mapLookup_arg1_3) _lh_mapLookup_Bin_3_3)
          | `GT -> 
            ((mapLookup__d0 _lh_mapLookup_arg1_3) _lh_mapLookup_Bin_4_3)
          | `EQ -> 
            (`Just(_lh_mapLookup_Bin_2_3))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and mapLookup__d1 _lh_mapLookup_arg1_1 _lh_mapLookup_arg2_1 =
  (match _lh_mapLookup_arg2_1 with
    | `Tip -> 
      (`Nothing)
    | `Bin(_lh_mapLookup_Bin_0_1, _lh_mapLookup_Bin_1_1, _lh_mapLookup_Bin_2_1, _lh_mapLookup_Bin_3_1, _lh_mapLookup_Bin_4_1) -> 
      (let rec _lh_matchIdent_6_4 = ((compareIntInt__d2 _lh_mapLookup_arg1_1) _lh_mapLookup_Bin_1_1) in
        (match _lh_matchIdent_6_4 with
          | `LT -> 
            ((mapLookup__d1 _lh_mapLookup_arg1_1) _lh_mapLookup_Bin_3_1)
          | `GT -> 
            ((mapLookup__d1 _lh_mapLookup_arg1_1) _lh_mapLookup_Bin_4_1)
          | `EQ -> 
            (`Just(_lh_mapLookup_Bin_2_1))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and mapLookup__d2 _lh_mapLookup_arg1_2 _lh_mapLookup_arg2_2 =
  (match _lh_mapLookup_arg2_2 with
    | `Tip -> 
      (`Nothing)
    | `Bin(_lh_mapLookup_Bin_0_2, _lh_mapLookup_Bin_1_2, _lh_mapLookup_Bin_2_2, _lh_mapLookup_Bin_3_2, _lh_mapLookup_Bin_4_2) -> 
      (let rec _lh_matchIdent_7_4 = ((compareIntInt__d4 _lh_mapLookup_arg1_2) _lh_mapLookup_Bin_1_2) in
        (match _lh_matchIdent_7_4 with
          | `LT -> 
            ((mapLookup__d2 _lh_mapLookup_arg1_2) _lh_mapLookup_Bin_3_2)
          | `GT -> 
            ((mapLookup__d2 _lh_mapLookup_arg1_2) _lh_mapLookup_Bin_4_2)
          | `EQ -> 
            (`Just(_lh_mapLookup_Bin_2_2))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and mapLookup__d3 _lh_mapLookup_arg1_4 _lh_mapLookup_arg2_4 =
  (match _lh_mapLookup_arg2_4 with
    | `Tip -> 
      (`Nothing)
    | `Bin(_lh_mapLookup_Bin_0_4, _lh_mapLookup_Bin_1_4, _lh_mapLookup_Bin_2_4, _lh_mapLookup_Bin_3_4, _lh_mapLookup_Bin_4_4) -> 
      (let rec _lh_matchIdent_7_7 = ((compareIntInt__d6 _lh_mapLookup_arg1_4) _lh_mapLookup_Bin_1_4) in
        (match _lh_matchIdent_7_7 with
          | `LT -> 
            ((mapLookup__d3 _lh_mapLookup_arg1_4) _lh_mapLookup_Bin_3_4)
          | `GT -> 
            ((mapLookup__d3 _lh_mapLookup_arg1_4) _lh_mapLookup_Bin_4_4)
          | `EQ -> 
            (`Just(_lh_mapLookup_Bin_2_4))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and search__d0 _lh_search_arg1_1 _lh_search_arg2_1 _lh_search_arg3_1 _lh_search_arg4_1 =
  (match _lh_search_arg1_1 with
    | `LH_P2(_lh_search_LH_P2_0_2, _lh_search_LH_P2_1_2) -> 
      (match _lh_search_arg4_1 with
        | `LH_N -> 
          (`Soln(_lh_search_arg3_1))
        | _ -> 
          (if (_lh_search_LH_P2_1_2 = (maxCol__d2 + 1)) then
            ((((search__d0 (`LH_P2((_lh_search_LH_P2_0_2 + 1), 1))) (flip__d0 _lh_search_arg2_1)) _lh_search_arg3_1) _lh_search_arg4_1)
          else
            (if (isJust__d0 ((check__d2 _lh_search_arg3_1) (`LH_P2(_lh_search_LH_P2_0_2, _lh_search_LH_P2_1_2)))) then
              ((((search__d0 (next__d0 (`LH_P2(_lh_search_LH_P2_0_2, _lh_search_LH_P2_1_2)))) (flip__d1 _lh_search_arg2_1)) _lh_search_arg3_1) _lh_search_arg4_1)
            else
              (let rec choices_1 = (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                (match _lh_listcomp_fun_para_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                    (match _lh_listcomp_fun_ls_h_2 with
                      | `LH_P2(_lh_search_LH_P2_0_3, _lh_search_LH_P2_1_3) -> 
                        (match _lh_search_LH_P2_0_3 with
                          | `P(_lh_search_P_0_1, _lh_search_P_1_1, _lh_search_P_2_1) -> 
                            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                              (match _lh_listcomp_fun_para_3 with
                                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                                  (`LH_C((`LH_P3(_lh_search_P_0_1, _lh_listcomp_fun_ls_h_3, _lh_search_LH_P2_1_3)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                                | `LH_N -> 
                                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
                              (_lh_listcomp_fun_3 (let rec _lh_matchIdent_8_6 = _lh_search_arg2_1 in
                                (match _lh_matchIdent_8_6 with
                                  | `Male -> 
                                    _lh_search_P_1_1
                                  | `Female -> 
                                    _lh_search_P_2_1
                                  | _ -> 
                                    (failwith "error")))))
                          | _ -> 
                            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                      | _ -> 
                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_2 (pickOne__d0 _lh_search_arg4_1))) in
                (let rec _lh_matchIdent_8_7 = ((mapMaybe__d0 (((try__d0 (`LH_P2(_lh_search_LH_P2_0_2, _lh_search_LH_P2_1_2))) _lh_search_arg2_1) _lh_search_arg3_1)) choices_1) in
                  (match _lh_matchIdent_8_7 with
                    | `LH_N -> 
                      (`Fail(_lh_search_arg3_1, (`LH_P2(_lh_search_LH_P2_0_2, _lh_search_LH_P2_1_2))))
                    | _ -> 
                      (`Choose(_lh_matchIdent_8_7))))))))
    | _ -> 
      (failwith "error"))
and testLastPiece_nofib__d0 _lh_testLastPiece_nofib_arg1_1 =
  let rec nest_1 = (fun _lh_nest_arg1_1 _lh_nest_arg2_1 -> 
    ((mkNest_1 _lh_nest_arg1_1) (reduceDoc_1 _lh_nest_arg2_1)))
  and easyDisplay_1 = (fun _lh_easyDisplay_arg1_1 _lh_easyDisplay_arg2_1 _lh_easyDisplay_arg3_1 _lh_easyDisplay_arg4_1 -> 
    (let rec lay_2 = (fun x_1_4 -> 
      (let rec _lh_matchIdent_4_3 = x_1_4 in
        (match _lh_matchIdent_4_3 with
          | `NoDoc -> 
            ((failwith "error") (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('y', (`LH_C('D', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(':', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('D', (`LH_C('o', (`LH_C('c', (`LH_N))))))))))))))))))))))))))))))))))))))
          | `Union(_lh_easyDisplay_Union_0_1, _lh_easyDisplay_Union_1_1) -> 
            (lay_2 ((_lh_easyDisplay_arg2_1 _lh_easyDisplay_Union_0_1) _lh_easyDisplay_Union_1_1))
          | `Nest(_lh_easyDisplay_Nest_0_1, _lh_easyDisplay_Nest_1_1) -> 
            (lay_2 _lh_easyDisplay_Nest_1_1)
          | `Empty -> 
            _lh_easyDisplay_arg4_1
          | `NilAbove(_lh_easyDisplay_NilAbove_0_1) -> 
            ((_lh_easyDisplay_arg3_1 _lh_easyDisplay_arg1_1) (lay_2 _lh_easyDisplay_NilAbove_0_1))
          | `TextBeside(_lh_easyDisplay_TextBeside_0_1, _lh_easyDisplay_TextBeside_1_1) -> 
            ((_lh_easyDisplay_arg3_1 _lh_easyDisplay_TextBeside_0_1) (lay_2 _lh_easyDisplay_TextBeside_1_1))
          | `Above(_lh_easyDisplay_Above_0_1, _lh_easyDisplay_Above_1_1, _lh_easyDisplay_Above_2_1) -> 
            ((failwith "error") (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('y', (`LH_C('D', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))
          | `Beside(_lh_easyDisplay_Beside_0_1, _lh_easyDisplay_Beside_1_1, _lh_easyDisplay_Beside_2_1) -> 
            ((failwith "error") (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('y', (`LH_C('D', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))) in
      lay_2))
  and fullRender_1 = (fun _lh_fullRender_arg1_1 _lh_fullRender_arg2_1 _lh_fullRender_arg3_1 _lh_fullRender_arg4_1 -> 
    (let rec annTxt_1 = (fun p_2_1 -> 
      (let rec _lh_matchIdent_4_2 = p_2_1 in
        (match _lh_matchIdent_4_2 with
          | `NoAnnot(_lh_fullRender_NoAnnot_0_1, _lh_fullRender_NoAnnot_1_1) -> 
            (_lh_fullRender_arg4_1 _lh_fullRender_NoAnnot_0_1)
          | _ -> 
            (fun x_1_3 -> 
              x_1_3)))) in
      ((((fullRenderAnn_1 _lh_fullRender_arg1_1) _lh_fullRender_arg2_1) _lh_fullRender_arg3_1) annTxt_1)))
  and first_1 = (fun _lh_first_arg1_1 _lh_first_arg2_1 -> 
    (if (nonEmptySet_1 _lh_first_arg1_1) then
      _lh_first_arg1_1
    else
      _lh_first_arg2_1))
  and nilBeside_1 = (fun _lh_nilBeside_arg1_1 _lh_nilBeside_arg2_1 -> 
    (match _lh_nilBeside_arg2_1 with
      | `Empty -> 
        (`Empty)
      | `Nest(_lh_nilBeside_Nest_0_1, _lh_nilBeside_Nest_1_1) -> 
        ((nilBeside_1 _lh_nilBeside_arg1_1) _lh_nilBeside_Nest_1_1)
      | _ -> 
        (if _lh_nilBeside_arg1_1 then
          (`TextBeside(spaceText_1, _lh_nilBeside_arg2_1))
        else
          _lh_nilBeside_arg2_1)))
  and reduceVert_1 = (fun _lh_reduceVert_arg1_1 -> 
    (match _lh_reduceVert_arg1_1 with
      | `Above(_lh_reduceVert_Above_0_1, _lh_reduceVert_Above_1_1, _lh_reduceVert_Above_2_1) -> 
        ((((eliminateEmpty_1 (fun a_8 b_5 c_3 -> 
          (`Above(a_8, b_5, c_3)))) (snd__d0 (reduceVert_1 _lh_reduceVert_Above_0_1))) _lh_reduceVert_Above_1_1) (reduceVert_1 _lh_reduceVert_Above_2_1))
      | _ -> 
        (`LH_P2((`NotEmpty), _lh_reduceVert_arg1_1))))
  and reduceHoriz_1 = (fun _lh_reduceHoriz_arg1_1 -> 
    (match _lh_reduceHoriz_arg1_1 with
      | `Beside(_lh_reduceHoriz_Beside_0_1, _lh_reduceHoriz_Beside_1_1, _lh_reduceHoriz_Beside_2_1) -> 
        ((((eliminateEmpty_1 (fun a_7 b_4 c_2 -> 
          (`Beside(a_7, b_4, c_2)))) (snd__d2 (reduceHoriz_1 _lh_reduceHoriz_Beside_0_1))) _lh_reduceHoriz_Beside_1_1) (reduceHoriz_1 _lh_reduceHoriz_Beside_2_1))
      | _ -> 
        (`LH_P2((`NotEmpty), _lh_reduceHoriz_arg1_1))))
  and nonEmptySet_1 = (fun _lh_nonEmptySet_arg1_1 -> 
    (match _lh_nonEmptySet_arg1_1 with
      | `NoDoc -> 
        false
      | `Union(_lh_nonEmptySet_Union_0_1, _lh_nonEmptySet_Union_1_1) -> 
        true
      | `Empty -> 
        true
      | `NilAbove(_lh_nonEmptySet_NilAbove_0_1) -> 
        true
      | `TextBeside(_lh_nonEmptySet_TextBeside_0_1, _lh_nonEmptySet_TextBeside_1_1) -> 
        (nonEmptySet_1 _lh_nonEmptySet_TextBeside_1_1)
      | `Nest(_lh_nonEmptySet_Nest_0_1, _lh_nonEmptySet_Nest_1_1) -> 
        (nonEmptySet_1 _lh_nonEmptySet_Nest_1_1)
      | `Above(_lh_nonEmptySet_Above_0_1, _lh_nonEmptySet_Above_1_1, _lh_nonEmptySet_Above_2_1) -> 
        ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('E', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C('S', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))
      | `Beside(_lh_nonEmptySet_Beside_0_1, _lh_nonEmptySet_Beside_1_1, _lh_nonEmptySet_Beside_2_1) -> 
        ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('E', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C('S', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
      | _ -> 
        (failwith "error")))
  and nilAboveNest_1 = (fun _lh_nilAboveNest_arg1_1 _lh_nilAboveNest_arg2_1 _lh_nilAboveNest_arg3_1 -> 
    (match _lh_nilAboveNest_arg3_1 with
      | `Empty -> 
        (`Empty)
      | `Nest(_lh_nilAboveNest_Nest_0_1, _lh_nilAboveNest_Nest_1_1) -> 
        (((nilAboveNest_1 _lh_nilAboveNest_arg1_1) (_lh_nilAboveNest_arg2_1 + _lh_nilAboveNest_Nest_0_1)) _lh_nilAboveNest_Nest_1_1)
      | _ -> 
        (if ((not _lh_nilAboveNest_arg1_1) && (_lh_nilAboveNest_arg2_1 > 0)) then
          (`TextBeside((`NoAnnot((`Str((indent__d0 _lh_nilAboveNest_arg2_1))), _lh_nilAboveNest_arg2_1)), _lh_nilAboveNest_arg3_1))
        else
          (`NilAbove(((mkNest_1 _lh_nilAboveNest_arg2_1) _lh_nilAboveNest_arg3_1))))))
  and hcat_1 = (fun _lh_hcat_arg1_1 -> 
    ((fun _lh_funcomp_x_7 -> 
      ((fun _lh_funcomp_x_8 -> 
        (snd__d1 (reduceHoriz_1 _lh_funcomp_x_8))) (((foldr__d0 (fun p_2_0 q_3 -> 
        (`Beside(p_2_0, false, q_3)))) (`Empty)) _lh_funcomp_x_7))) _lh_hcat_arg1_1))
  and spaceText_1 = (`NoAnnot((`Chr(' ')), 1))
  and printDoc_1 = (fun _lh_printDoc_arg1_1 -> 
    (let rec put_1 = (fun k_1_5 next_2 -> 
      (let rec _lh_matchIdent_5_0 = k_1_5 in
        (match _lh_matchIdent_5_0 with
          | `Chr(_lh_printDoc_Chr_0_1) -> 
            (`LH_C(_lh_printDoc_Chr_0_1, next_2))
          | `Str(_lh_printDoc_Str_0_1) -> 
            ((mappend__d0 _lh_printDoc_Str_0_1) next_2)
          | `PStr(_lh_printDoc_PStr_0_1) -> 
            ((mappend__d1 _lh_printDoc_PStr_0_1) next_2)
          | _ -> 
            (failwith "error")))) in
      (let rec done_1 = (`LH_C('|', (`LH_N))) in
        ((((((fullRender_1 (`ZigZagMode)) 200) 1.5) put_1) done_1) _lh_printDoc_arg1_1))))
  and best_1 = (fun _lh_best_arg1_1 _lh_best_arg2_1 -> 
    let rec get_1 = (fun _lh_get_arg1_1 _lh_get_arg2_1 _lh_get_arg3_1 -> 
      (match _lh_get_arg3_1 with
        | `Empty -> 
          (`Empty)
        | `NoDoc -> 
          (`NoDoc)
        | `NilAbove(_lh_get_NilAbove_0_1) -> 
          (`NilAbove((((get_1 _lh_get_arg1_1) _lh_get_arg2_1) _lh_get_NilAbove_0_1)))
        | `TextBeside(_lh_get_TextBeside_0_1, _lh_get_TextBeside_1_1) -> 
          (`TextBeside(_lh_get_TextBeside_0_1, ((((get1_1 _lh_get_arg1_1) _lh_get_arg2_1) (annotSize_1 _lh_get_TextBeside_0_1)) _lh_get_TextBeside_1_1)))
        | `Nest(_lh_get_Nest_0_1, _lh_get_Nest_1_1) -> 
          (`Nest(_lh_get_Nest_0_1, (((get_1 _lh_get_arg1_1) (_lh_get_arg2_1 - _lh_get_Nest_0_1)) _lh_get_Nest_1_1)))
        | `Union(_lh_get_Union_0_1, _lh_get_Union_1_1) -> 
          ((((nicest_1 _lh_get_arg2_1) _lh_get_arg1_1) (((get_1 _lh_get_arg1_1) _lh_get_arg2_1) _lh_get_Union_0_1)) (((get_1 _lh_get_arg1_1) _lh_get_arg2_1) _lh_get_Union_1_1))
        | `Above(_lh_get_Above_0_1, _lh_get_Above_1_1, _lh_get_Above_2_1) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))
        | `Beside(_lh_get_Beside_0_1, _lh_get_Beside_1_1, _lh_get_Beside_2_1) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error")))
    and get1_1 = (fun _lh_get1_arg1_1 _lh_get1_arg2_1 _lh_get1_arg3_1 _lh_get1_arg4_1 -> 
      (match _lh_get1_arg4_1 with
        | `Empty -> 
          (`Empty)
        | `NoDoc -> 
          (`NoDoc)
        | `NilAbove(_lh_get1_NilAbove_0_1) -> 
          (`NilAbove((((get_1 _lh_get1_arg1_1) (_lh_get1_arg2_1 - _lh_get1_arg3_1)) _lh_get1_NilAbove_0_1)))
        | `TextBeside(_lh_get1_TextBeside_0_1, _lh_get1_TextBeside_1_1) -> 
          (`TextBeside(_lh_get1_TextBeside_0_1, ((((get1_1 _lh_get1_arg1_1) _lh_get1_arg2_1) (_lh_get1_arg3_1 + (annotSize_1 _lh_get1_TextBeside_0_1))) _lh_get1_TextBeside_1_1)))
        | `Nest(_lh_get1_Nest_0_1, _lh_get1_Nest_1_1) -> 
          ((((get1_1 _lh_get1_arg1_1) _lh_get1_arg2_1) _lh_get1_arg3_1) _lh_get1_Nest_1_1)
        | `Union(_lh_get1_Union_0_1, _lh_get1_Union_1_1) -> 
          (((((nicest1_1 _lh_get1_arg2_1) _lh_get1_arg1_1) _lh_get1_arg3_1) ((((get1_1 _lh_get1_arg1_1) _lh_get1_arg2_1) _lh_get1_arg3_1) _lh_get1_Union_0_1)) ((((get1_1 _lh_get1_arg1_1) _lh_get1_arg2_1) _lh_get1_arg3_1) _lh_get1_Union_1_1))
        | `Above(_lh_get1_Above_0_1, _lh_get1_Above_1_1, _lh_get1_Above_2_1) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('1', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))
        | `Beside(_lh_get1_Beside_0_1, _lh_get1_Beside_1_1, _lh_get1_Beside_2_1) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('1', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error")))
    in ((get_1 _lh_best_arg2_1) _lh_best_arg1_1))
  and eliminateEmpty_1 = (fun _lh_eliminateEmpty_arg1_1 _lh_eliminateEmpty_arg2_1 _lh_eliminateEmpty_arg3_1 _lh_eliminateEmpty_arg4_1 -> 
    (match _lh_eliminateEmpty_arg2_1 with
      | `Empty -> 
        _lh_eliminateEmpty_arg4_1
      | _ -> 
        (`LH_P2((`NotEmpty), (let rec _lh_matchIdent_4_1 = _lh_eliminateEmpty_arg4_1 in
          (match _lh_matchIdent_4_1 with
            | `LH_P2(_lh_eliminateEmpty_LH_P2_0_1, _lh_eliminateEmpty_LH_P2_1_1) -> 
              (match _lh_eliminateEmpty_LH_P2_0_1 with
                | `NotEmpty -> 
                  (((_lh_eliminateEmpty_arg1_1 _lh_eliminateEmpty_arg2_1) _lh_eliminateEmpty_arg3_1) _lh_eliminateEmpty_LH_P2_1_1)
                | `IsEmpty -> 
                  _lh_eliminateEmpty_arg2_1
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))))))
  and displayDoc_1 = (fun _lh_displayDoc_arg1_1 _lh_displayDoc_arg2_1 _lh_displayDoc_arg3_1 _lh_displayDoc_arg4_1 _lh_displayDoc_arg5_1 _lh_displayDoc_arg6_1 -> 
    (let rec _lh_matchIdent_4_4 = (_lh_displayDoc_arg2_1 - _lh_displayDoc_arg3_1) in
      (let rec _lh_matchIdent_4_5 = (_lh_matchIdent_4_4 / 2) in
        (let rec lay_3 = (let rec lay2_1 = (fun k_1_2 param_1 -> 
          (let rec _lh_matchIdent_4_6 = param_1 in
            (match _lh_matchIdent_4_6 with
              | `NilAbove(_lh_displayDoc_NilAbove_0_2) -> 
                ((_lh_displayDoc_arg4_1 nlText_1) ((lay_3 k_1_2) _lh_displayDoc_NilAbove_0_2))
              | `TextBeside(_lh_displayDoc_TextBeside_0_2, _lh_displayDoc_TextBeside_1_2) -> 
                ((_lh_displayDoc_arg4_1 _lh_displayDoc_TextBeside_0_2) ((lay2_1 (k_1_2 + (annotSize_1 _lh_displayDoc_TextBeside_0_2))) _lh_displayDoc_TextBeside_1_2))
              | `Nest(_lh_displayDoc_Nest_0_2, _lh_displayDoc_Nest_1_2) -> 
                ((lay2_1 k_1_2) _lh_displayDoc_Nest_1_2)
              | `Empty -> 
                _lh_displayDoc_arg5_1
              | `Above(_lh_displayDoc_Above_0_2, _lh_displayDoc_Above_1_2, _lh_displayDoc_Above_2_2) -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
              | `Beside(_lh_displayDoc_Beside_0_2, _lh_displayDoc_Beside_1_2, _lh_displayDoc_Beside_2_2) -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))
              | `NoDoc -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('D', (`LH_C('o', (`LH_C('c', (`LH_N))))))))))))))))))))))))))))))))))))))
              | `Union(_lh_displayDoc_Union_0_2, _lh_displayDoc_Union_1_2) -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('U', (`LH_C('n', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))
              | _ -> 
                (failwith "error")))) in
          (let rec lay1_1 = (fun k_1_3 s_1 p_2_2 -> 
            (let rec r_9 = (k_1_3 + (annotSize_1 s_1)) in
              ((_lh_displayDoc_arg4_1 (`NoAnnot((`Str((indent__d1 k_1_3))), k_1_3))) ((_lh_displayDoc_arg4_1 s_1) ((lay2_1 r_9) p_2_2))))) in
            (fun k_1_4 docc_1 -> 
              (let rec _lh_matchIdent_4_7 = docc_1 in
                (match _lh_matchIdent_4_7 with
                  | `Nest(_lh_displayDoc_Nest_0_3, _lh_displayDoc_Nest_1_3) -> 
                    ((lay_3 (k_1_4 + _lh_displayDoc_Nest_0_3)) _lh_displayDoc_Nest_1_3)
                  | `Empty -> 
                    _lh_displayDoc_arg5_1
                  | `NilAbove(_lh_displayDoc_NilAbove_0_3) -> 
                    ((_lh_displayDoc_arg4_1 nlText_1) ((lay_3 k_1_4) _lh_displayDoc_NilAbove_0_3))
                  | `TextBeside(_lh_displayDoc_TextBeside_0_3, _lh_displayDoc_TextBeside_1_3) -> 
                    (let rec _lh_matchIdent_4_8 = _lh_displayDoc_arg1_1 in
                      (match _lh_matchIdent_4_8 with
                        | `ZigZagMode -> 
                          (if (k_1_4 >= _lh_matchIdent_4_4) then
                            ((_lh_displayDoc_arg4_1 nlText_1) ((_lh_displayDoc_arg4_1 (`NoAnnot((`Str(((copy__d0 _lh_matchIdent_4_5) '/'))), _lh_matchIdent_4_5))) ((_lh_displayDoc_arg4_1 nlText_1) (((lay1_1 (k_1_4 - _lh_matchIdent_4_5)) _lh_displayDoc_TextBeside_0_3) _lh_displayDoc_TextBeside_1_3))))
                          else
                            (if (k_1_4 < 0) then
                              ((_lh_displayDoc_arg4_1 nlText_1) ((_lh_displayDoc_arg4_1 (`NoAnnot((`Str(((copy__d1 _lh_matchIdent_4_5) '|'))), _lh_matchIdent_4_5))) ((_lh_displayDoc_arg4_1 nlText_1) (((lay1_1 (k_1_4 + _lh_matchIdent_4_5)) _lh_displayDoc_TextBeside_0_3) _lh_displayDoc_TextBeside_1_3))))
                            else
                              (((lay1_1 k_1_4) _lh_displayDoc_TextBeside_0_3) _lh_displayDoc_TextBeside_1_3)))
                        | _ -> 
                          (((lay1_1 k_1_4) _lh_displayDoc_TextBeside_0_3) _lh_displayDoc_TextBeside_1_3)))
                  | `Above(_lh_displayDoc_Above_0_3, _lh_displayDoc_Above_1_3, _lh_displayDoc_Above_2_3) -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))
                  | `Beside(_lh_displayDoc_Beside_0_3, _lh_displayDoc_Beside_1_3, _lh_displayDoc_Beside_2_3) -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
                  | `NoDoc -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('D', (`LH_C('o', (`LH_C('c', (`LH_N))))))))))))))))))))))))))))))))))))
                  | `Union(_lh_displayDoc_Union_0_3, _lh_displayDoc_Union_1_3) -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('U', (`LH_C('n', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))
                  | _ -> 
                    (failwith "error")))))) in
          ((lay_3 0) _lh_displayDoc_arg6_1)))))
  and mkNest_1 = (fun _lh_mkNest_arg1_1 _lh_mkNest_arg2_1 -> 
    (match _lh_mkNest_arg2_1 with
      | `Nest(_lh_mkNest_Nest_0_1, _lh_mkNest_Nest_1_1) -> 
        ((mkNest_1 (_lh_mkNest_arg1_1 + _lh_mkNest_Nest_0_1)) _lh_mkNest_Nest_1_1)
      | `NoDoc -> 
        (`NoDoc)
      | `Empty -> 
        (`Empty)
      | _ -> 
        (match _lh_mkNest_arg1_1 with
          | 0 -> 
            _lh_mkNest_arg2_1
          | _ -> 
            (`Nest(_lh_mkNest_arg1_1, _lh_mkNest_arg2_1)))))
  and displayBoard_1 = (fun _lh_displayBoard_arg1_1 -> 
    (let rec sq_1 = (fun n_6 col_1 -> 
      (let rec _lh_matchIdent_3_9 = ((check__d0 _lh_displayBoard_arg1_1) (`LH_P2(n_6, col_1))) in
        (match _lh_matchIdent_3_9 with
          | `Just(_lh_displayBoard_Just_0_1) -> 
            (char_1 _lh_displayBoard_Just_0_1)
          | `Nothing -> 
            (char_1 '.')
          | _ -> 
            (failwith "error")))) in
      (let rec row_1 = (fun n_7 -> 
        (hcat_1 ((map__d0 (sq_1 n_7)) ((enumFromTo__d0 1) maxCol__d1)))) in
        (((above__1 (vcat_1 ((map__d1 row_1) ((enumFromTo__d1 1) maxRow__d1)))) false) (text_1 (`LH_N))))))
  and vcat_1 = (fun _lh_vcat_arg1_1 -> 
    ((fun _lh_funcomp_x_5 -> 
      ((fun _lh_funcomp_x_6 -> 
        (snd__d3 (reduceVert_1 _lh_funcomp_x_6))) (((foldr__d1 (fun p_1_9 q_2 -> 
        (`Above(p_1_9, false, q_2)))) (`Empty)) _lh_funcomp_x_5))) _lh_vcat_arg1_1))
  and display_1 = (fun _lh_display_arg1_1 -> 
    (match _lh_display_arg1_1 with
      | `Soln(_lh_display_Soln_0_1) -> 
        (vcat_1 (`LH_C((text_1 (`LH_C('S', (`LH_C('u', (`LH_C('c', (`LH_C('c', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('!', (`LH_N)))))))))))))))))), (`LH_C(((nest_1 2) (displayBoard_1 _lh_display_Soln_0_1)), (`LH_N))))))
      | `Choose(_lh_display_Choose_0_1) -> 
        (vcat_1 ((map__d2 display_1) _lh_display_Choose_0_1))
      | `Fail(_lh_display_Fail_0_1, _lh_display_Fail_1_1) -> 
        (match _lh_display_Fail_1_1 with
          | `LH_P2(_lh_display_LH_P2_0_1, _lh_display_LH_P2_1_1) -> 
            (`Empty)
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and char_1 = (fun _lh_char_arg1_1 -> 
    (`TextBeside((`NoAnnot((`Chr(_lh_char_arg1_1)), 1)), (`Empty))))
  and fits_1 = (fun _lh_fits_arg1_1 _lh_fits_arg2_1 -> 
    (if (_lh_fits_arg1_1 < 0) then
      false
    else
      (let rec _lh_matchIdent_5_2 = _lh_fits_arg2_1 in
        (match _lh_matchIdent_5_2 with
          | `NoDoc -> 
            false
          | `Empty -> 
            true
          | `NilAbove(_lh_fits_NilAbove_0_1) -> 
            true
          | `TextBeside(_lh_fits_TextBeside_0_1, _lh_fits_TextBeside_1_1) -> 
            ((fits_1 (_lh_fits_arg1_1 - (annotSize_1 _lh_fits_TextBeside_0_1))) _lh_fits_TextBeside_1_1)
          | `Above(_lh_fits_Above_0_1, _lh_fits_Above_1_1, _lh_fits_Above_2_1) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))
          | `Beside(_lh_fits_Beside_0_1, _lh_fits_Beside_1_1, _lh_fits_Beside_2_1) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))
          | `Union(_lh_fits_Union_0_1, _lh_fits_Union_1_1) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('U', (`LH_C('n', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))))))))))))))
          | `Nest(_lh_fits_Nest_0_1, _lh_fits_Nest_1_1) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('N', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))
          | _ -> 
            (failwith "error")))))
  and annotSize_1 = (fun _lh_annotSize_arg1_1 -> 
    (match _lh_annotSize_arg1_1 with
      | `NoAnnot(_lh_annotSize_NoAnnot_0_1, _lh_annotSize_NoAnnot_1_1) -> 
        _lh_annotSize_NoAnnot_1_1
      | _ -> 
        0))
  and above_1 = (fun _lh_above_arg1_1 _lh_above_arg2_1 _lh_above_arg3_1 -> 
    (match _lh_above_arg1_1 with
      | `Above(_lh_above_Above_0_1, _lh_above_Above_1_1, _lh_above_Above_2_1) -> 
        (((above_1 _lh_above_Above_0_1) _lh_above_Above_1_1) (((above_1 _lh_above_Above_2_1) _lh_above_arg2_1) _lh_above_arg3_1))
      | `Beside(_lh_above_Beside_0_1, _lh_above_Beside_1_1, _lh_above_Beside_2_1) -> 
        ((((aboveNest_1 (reduceDoc_1 (`Beside(_lh_above_Beside_0_1, _lh_above_Beside_1_1, _lh_above_Beside_2_1)))) _lh_above_arg2_1) 0) (reduceDoc_1 _lh_above_arg3_1))
      | _ -> 
        ((((aboveNest_1 _lh_above_arg1_1) _lh_above_arg2_1) 0) (reduceDoc_1 _lh_above_arg3_1))))
  and above__1 = (fun _lh_above__arg1_1 _lh_above__arg2_1 _lh_above__arg3_1 -> 
    (match _lh_above__arg3_1 with
      | `Empty -> 
        _lh_above__arg1_1
      | _ -> 
        (match _lh_above__arg1_1 with
          | `Empty -> 
            _lh_above__arg3_1
          | _ -> 
            (`Above(_lh_above__arg1_1, _lh_above__arg2_1, _lh_above__arg3_1)))))
  and text_1 = (fun _lh_text_arg1_1 -> 
    (let rec _lh_matchIdent_4_9 = (length__d0 _lh_text_arg1_1) in
      (`TextBeside((`NoAnnot((`Str(_lh_text_arg1_1)), _lh_matchIdent_4_9)), (`Empty)))))
  and nlText_1 = (`NoAnnot((`Chr('|')), 1))
  and nicest_1 = (fun _lh_nicest_arg1_1 _lh_nicest_arg2_1 -> 
    (((nicest1_1 _lh_nicest_arg1_1) _lh_nicest_arg2_1) 0))
  and reduceDoc_1 = (fun _lh_reduceDoc_arg1_1 -> 
    (match _lh_reduceDoc_arg1_1 with
      | `Beside(_lh_reduceDoc_Beside_0_1, _lh_reduceDoc_Beside_1_1, _lh_reduceDoc_Beside_2_1) -> 
        (((beside_1 _lh_reduceDoc_Beside_0_1) _lh_reduceDoc_Beside_1_1) (reduceDoc_1 _lh_reduceDoc_Beside_2_1))
      | `Above(_lh_reduceDoc_Above_0_1, _lh_reduceDoc_Above_1_1, _lh_reduceDoc_Above_2_1) -> 
        (((above_1 _lh_reduceDoc_Above_0_1) _lh_reduceDoc_Above_1_1) (reduceDoc_1 _lh_reduceDoc_Above_2_1))
      | _ -> 
        _lh_reduceDoc_arg1_1))
  and beside_1 = (fun _lh_beside_arg1_1 _lh_beside_arg2_1 _lh_beside_arg3_1 -> 
    (match _lh_beside_arg1_1 with
      | `NoDoc -> 
        (`NoDoc)
      | `Union(_lh_beside_Union_0_1, _lh_beside_Union_1_1) -> 
        (`Union((((beside_1 _lh_beside_Union_0_1) _lh_beside_arg2_1) _lh_beside_arg3_1), (((beside_1 _lh_beside_Union_1_1) _lh_beside_arg2_1) _lh_beside_arg3_1)))
      | `Empty -> 
        _lh_beside_arg3_1
      | `Nest(_lh_beside_Nest_0_1, _lh_beside_Nest_1_1) -> 
        (`Nest(_lh_beside_Nest_0_1, (((beside_1 _lh_beside_Nest_1_1) _lh_beside_arg2_1) _lh_beside_arg3_1)))
      | `Beside(_lh_beside_Beside_0_1, _lh_beside_Beside_1_1, _lh_beside_Beside_2_1) -> 
        (if (_lh_beside_Beside_1_1 = _lh_beside_arg2_1) then
          (((beside_1 _lh_beside_Beside_0_1) _lh_beside_Beside_1_1) (((beside_1 _lh_beside_Beside_2_1) _lh_beside_arg2_1) _lh_beside_arg3_1))
        else
          (((beside_1 (reduceDoc_1 (`Beside(_lh_beside_Beside_0_1, _lh_beside_Beside_1_1, _lh_beside_Beside_2_1)))) _lh_beside_arg2_1) _lh_beside_arg3_1))
      | `Above(_lh_beside_Above_0_1, _lh_beside_Above_1_1, _lh_beside_Above_2_1) -> 
        (let rec d_1 = (reduceDoc_1 (`Above(_lh_beside_Above_0_1, _lh_beside_Above_1_1, _lh_beside_Above_2_1))) in
          (((beside_1 d_1) _lh_beside_arg2_1) _lh_beside_arg3_1))
      | `NilAbove(_lh_beside_NilAbove_0_1) -> 
        (`NilAbove((((beside_1 _lh_beside_NilAbove_0_1) _lh_beside_arg2_1) _lh_beside_arg3_1)))
      | `TextBeside(_lh_beside_TextBeside_0_1, _lh_beside_TextBeside_1_1) -> 
        (let rec rest_2 = (let rec _lh_matchIdent_4_0 = _lh_beside_TextBeside_1_1 in
          (match _lh_matchIdent_4_0 with
            | `Empty -> 
              ((nilBeside_1 _lh_beside_arg2_1) _lh_beside_arg3_1)
            | _ -> 
              (((beside_1 _lh_beside_TextBeside_1_1) _lh_beside_arg2_1) _lh_beside_arg3_1))) in
          (`TextBeside(_lh_beside_TextBeside_0_1, rest_2)))
      | _ -> 
        (failwith "error")))
  and fullRenderAnn_1 = (fun _lh_fullRenderAnn_arg1_1 _lh_fullRenderAnn_arg2_1 _lh_fullRenderAnn_arg3_1 _lh_fullRenderAnn_arg4_1 _lh_fullRenderAnn_arg5_1 _lh_fullRenderAnn_arg6_1 -> 
    (match _lh_fullRenderAnn_arg1_1 with
      | `OneLineMode -> 
        (((((easyDisplay_1 spaceText_1) (fun _dummy_1 y_1 -> 
          y_1)) _lh_fullRenderAnn_arg4_1) _lh_fullRenderAnn_arg5_1) (reduceDoc_1 _lh_fullRenderAnn_arg6_1))
      | `LeftMode -> 
        (((((easyDisplay_1 nlText_1) first_1) _lh_fullRenderAnn_arg4_1) _lh_fullRenderAnn_arg5_1) (reduceDoc_1 _lh_fullRenderAnn_arg6_1))
      | _ -> 
        (let rec ribbonLen_1 = (int_of_float (ceil ((float_of_int _lh_fullRenderAnn_arg2_1) /. _lh_fullRenderAnn_arg3_1))) in
          (let rec bestLineLen_1 = (let rec _lh_matchIdent_3_8 = _lh_fullRenderAnn_arg1_1 in
            (match _lh_matchIdent_3_8 with
              | `ZigZagMode -> 
                2147483647
              | _ -> 
                _lh_fullRenderAnn_arg2_1)) in
            (let rec doc'_1 = (((best_1 bestLineLen_1) ribbonLen_1) (reduceDoc_1 _lh_fullRenderAnn_arg6_1)) in
              ((((((displayDoc_1 _lh_fullRenderAnn_arg1_1) _lh_fullRenderAnn_arg2_1) ribbonLen_1) _lh_fullRenderAnn_arg4_1) _lh_fullRenderAnn_arg5_1) doc'_1))))))
  and aboveNest_1 = (fun _lh_aboveNest_arg1_1 _lh_aboveNest_arg2_1 _lh_aboveNest_arg3_1 _lh_aboveNest_arg4_1 -> 
    (match _lh_aboveNest_arg1_1 with
      | `NoDoc -> 
        (`NoDoc)
      | `Union(_lh_aboveNest_Union_0_1, _lh_aboveNest_Union_1_1) -> 
        (`Union(((((aboveNest_1 _lh_aboveNest_Union_0_1) _lh_aboveNest_arg2_1) _lh_aboveNest_arg3_1) _lh_aboveNest_arg4_1), ((((aboveNest_1 _lh_aboveNest_Union_1_1) _lh_aboveNest_arg2_1) _lh_aboveNest_arg3_1) _lh_aboveNest_arg4_1)))
      | `Empty -> 
        ((mkNest_1 _lh_aboveNest_arg3_1) _lh_aboveNest_arg4_1)
      | `Nest(_lh_aboveNest_Nest_0_1, _lh_aboveNest_Nest_1_1) -> 
        (`Nest(_lh_aboveNest_Nest_0_1, ((((aboveNest_1 _lh_aboveNest_Nest_1_1) _lh_aboveNest_arg2_1) (_lh_aboveNest_arg3_1 - _lh_aboveNest_Nest_0_1)) _lh_aboveNest_arg4_1)))
      | `NilAbove(_lh_aboveNest_NilAbove_0_1) -> 
        (`NilAbove(((((aboveNest_1 _lh_aboveNest_NilAbove_0_1) _lh_aboveNest_arg2_1) _lh_aboveNest_arg3_1) _lh_aboveNest_arg4_1)))
      | `TextBeside(_lh_aboveNest_TextBeside_0_1, _lh_aboveNest_TextBeside_1_1) -> 
        (let rec k1_1 = (_lh_aboveNest_arg3_1 - (annotSize_1 _lh_aboveNest_TextBeside_0_1)) in
          (let rec rest_3 = (let rec _lh_matchIdent_5_1 = _lh_aboveNest_TextBeside_1_1 in
            (match _lh_matchIdent_5_1 with
              | `Empty -> 
                (((nilAboveNest_1 _lh_aboveNest_arg2_1) k1_1) _lh_aboveNest_arg4_1)
              | _ -> 
                ((((aboveNest_1 _lh_aboveNest_TextBeside_1_1) _lh_aboveNest_arg2_1) k1_1) _lh_aboveNest_arg4_1))) in
            (`TextBeside(_lh_aboveNest_TextBeside_0_1, rest_3))))
      | `Above(_lh_aboveNest_Above_0_1, _lh_aboveNest_Above_1_1, _lh_aboveNest_Above_2_1) -> 
        ((failwith "error") (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('N', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))
      | `Beside(_lh_aboveNest_Beside_0_1, _lh_aboveNest_Beside_1_1, _lh_aboveNest_Beside_2_1) -> 
        ((failwith "error") (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('N', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))
      | _ -> 
        (failwith "error")))
  and nicest1_1 = (fun _lh_nicest1_arg1_1 _lh_nicest1_arg2_1 _lh_nicest1_arg3_1 _lh_nicest1_arg4_1 _lh_nicest1_arg5_1 -> 
    (if ((fits_1 (((myMin__d0 _lh_nicest1_arg1_1) _lh_nicest1_arg2_1) - _lh_nicest1_arg3_1)) _lh_nicest1_arg4_1) then
      _lh_nicest1_arg4_1
    else
      _lh_nicest1_arg5_1))
  in (let rec initialBoard_1 = (fromJust__d0 ((((fit__d0 emptyBoard__d0) (`LH_P2(1, 1))) 'a') (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))) in
    (let rec solutions_1 = ((((search__d0 (`LH_P2(1, 2))) (`Female)) initialBoard_1) (initialPieces__d0 0)) in
      (printDoc_1 (display_1 solutions_1))))
and try__d0 _lh_try_arg1_1 _lh_try_arg2_1 _lh_try_arg3_1 _lh_try_arg4_1 =
  (match _lh_try_arg4_1 with
    | `LH_P3(_lh_try_LH_P3_0_1, _lh_try_LH_P3_1_1, _lh_try_LH_P3_2_1) -> 
      (let rec _lh_matchIdent_6_5 = ((((fit__d1 _lh_try_arg3_1) _lh_try_arg1_1) _lh_try_LH_P3_0_1) _lh_try_LH_P3_1_1) in
        (match _lh_matchIdent_6_5 with
          | `Just(_lh_try_Just_0_1) -> 
            (`Just(((((search__d0 (next__d1 _lh_try_arg1_1)) (flip__d2 _lh_try_arg2_1)) _lh_try_Just_0_1) _lh_try_LH_P3_2_1)))
          | `Nothing -> 
            (`Nothing)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
end;;

