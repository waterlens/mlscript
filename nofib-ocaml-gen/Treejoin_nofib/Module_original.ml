
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec dropWhile__d0 _lh_dropWhile_arg1_5 _lh_dropWhile_arg2_5 =
  (match _lh_dropWhile_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_5, _lh_dropWhile_LH_C_1_5) -> 
      (if (_lh_dropWhile_arg1_5 _lh_dropWhile_LH_C_0_5) then
        ((dropWhile__d0 _lh_dropWhile_arg1_5) _lh_dropWhile_LH_C_1_5)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_5, _lh_dropWhile_LH_C_1_5)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1 _lh_dropWhile_arg1_1_2 _lh_dropWhile_arg2_1_2 =
  (match _lh_dropWhile_arg2_1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1_2, _lh_dropWhile_LH_C_1_1_2) -> 
      (if (_lh_dropWhile_arg1_1_2 _lh_dropWhile_LH_C_0_1_2) then
        ((dropWhile__d1 _lh_dropWhile_arg1_1_2) _lh_dropWhile_LH_C_1_1_2)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1_2, _lh_dropWhile_LH_C_1_1_2)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1_d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d1_d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1_d1 _lh_dropWhile_arg1_6 _lh_dropWhile_arg2_6 =
  (match _lh_dropWhile_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_6, _lh_dropWhile_LH_C_1_6) -> 
      (if (_lh_dropWhile_arg1_6 _lh_dropWhile_LH_C_0_6) then
        ((dropWhile__d1_d1 _lh_dropWhile_arg1_6) _lh_dropWhile_LH_C_1_6)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_6, _lh_dropWhile_LH_C_1_6)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d2 _lh_dropWhile_arg1_1_1 _lh_dropWhile_arg2_1_1 =
  (match _lh_dropWhile_arg2_1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1_1, _lh_dropWhile_LH_C_1_1_1) -> 
      (if (_lh_dropWhile_arg1_1_1 _lh_dropWhile_LH_C_0_1_1) then
        ((dropWhile__d2 _lh_dropWhile_arg1_1_1) _lh_dropWhile_LH_C_1_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1_1, _lh_dropWhile_LH_C_1_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d3 _lh_dropWhile_arg1_8 _lh_dropWhile_arg2_8 =
  (match _lh_dropWhile_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_8, _lh_dropWhile_LH_C_1_8) -> 
      (if (_lh_dropWhile_arg1_8 _lh_dropWhile_LH_C_0_8) then
        ((dropWhile__d3 _lh_dropWhile_arg1_8) _lh_dropWhile_LH_C_1_8)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_8, _lh_dropWhile_LH_C_1_8)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d4 _lh_dropWhile_arg1_9 _lh_dropWhile_arg2_9 =
  (match _lh_dropWhile_arg2_9 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_9, _lh_dropWhile_LH_C_1_9) -> 
      (if (_lh_dropWhile_arg1_9 _lh_dropWhile_LH_C_0_9) then
        ((dropWhile__d4 _lh_dropWhile_arg1_9) _lh_dropWhile_LH_C_1_9)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_9, _lh_dropWhile_LH_C_1_9)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d5 _lh_dropWhile_arg1_1_0 _lh_dropWhile_arg2_1_0 =
  (match _lh_dropWhile_arg2_1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1_0, _lh_dropWhile_LH_C_1_1_0) -> 
      (if (_lh_dropWhile_arg1_1_0 _lh_dropWhile_LH_C_0_1_0) then
        ((dropWhile__d5 _lh_dropWhile_arg1_1_0) _lh_dropWhile_LH_C_1_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1_0, _lh_dropWhile_LH_C_1_1_0)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d6 _lh_dropWhile_arg1_7 _lh_dropWhile_arg2_7 =
  (match _lh_dropWhile_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_7, _lh_dropWhile_LH_C_1_7) -> 
      (if (_lh_dropWhile_arg1_7 _lh_dropWhile_LH_C_0_7) then
        ((dropWhile__d6 _lh_dropWhile_arg1_7) _lh_dropWhile_LH_C_1_7)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_7, _lh_dropWhile_LH_C_1_7)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d7 _lh_dropWhile_arg1_4 _lh_dropWhile_arg2_4 =
  (match _lh_dropWhile_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_4, _lh_dropWhile_LH_C_1_4) -> 
      (if (_lh_dropWhile_arg1_4 _lh_dropWhile_LH_C_0_4) then
        ((dropWhile__d7 _lh_dropWhile_arg1_4) _lh_dropWhile_LH_C_1_4)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_4, _lh_dropWhile_LH_C_1_4)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d8 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile__d8 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d9 _lh_dropWhile_arg1_3 _lh_dropWhile_arg2_3 =
  (match _lh_dropWhile_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_3, _lh_dropWhile_LH_C_1_3) -> 
      (if (_lh_dropWhile_arg1_3 _lh_dropWhile_LH_C_0_3) then
        ((dropWhile__d9 _lh_dropWhile_arg1_3) _lh_dropWhile_LH_C_1_3)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_3, _lh_dropWhile_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec insertT__d0 _lh_insertT_arg1_1 _lh_insertT_arg2_1 _lh_insertT_arg3_1 =
  (match _lh_insertT_arg3_1 with
    | `Node(_lh_insertT_Node_0_1, _lh_insertT_Node_1_1, _lh_insertT_Node_2_1) -> 
      (if (_lh_insertT_arg1_1 <= _lh_insertT_Node_0_1) then
        (`Node(_lh_insertT_Node_0_1, (((insertT__d0 _lh_insertT_arg1_1) _lh_insertT_arg2_1) _lh_insertT_Node_1_1), _lh_insertT_Node_2_1))
      else
        (`Node(_lh_insertT_Node_0_1, _lh_insertT_Node_1_1, (((insertT__d0 _lh_insertT_arg1_1) _lh_insertT_arg2_1) _lh_insertT_Node_2_1))))
    | `Leaf(_lh_insertT_Leaf_0_1, _lh_insertT_Leaf_1_1) -> 
      (let rec l'_1 = (`Leaf(_lh_insertT_arg1_1, _lh_insertT_arg2_1)) in
        (if (_lh_insertT_arg1_1 < _lh_insertT_Leaf_0_1) then
          (`Node(_lh_insertT_arg1_1, l'_1, (`Leaf(_lh_insertT_Leaf_0_1, _lh_insertT_Leaf_1_1))))
        else
          (if (_lh_insertT_arg1_1 > _lh_insertT_Leaf_0_1) then
            (`Node(_lh_insertT_Leaf_0_1, (`Leaf(_lh_insertT_Leaf_0_1, _lh_insertT_Leaf_1_1)), l'_1))
          else
            ((failwith "error") (`LH_C('a', (`LH_C('l', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('y', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_N)))))))))))))))))))))))))))))))
    | `Empty -> 
      (`Leaf(_lh_insertT_arg1_1, _lh_insertT_arg2_1))
    | _ -> 
      (failwith "error"));;
let rec insertT__d1 _lh_insertT_arg1_3 _lh_insertT_arg2_3 _lh_insertT_arg3_3 =
  (match _lh_insertT_arg3_3 with
    | `Node(_lh_insertT_Node_0_3, _lh_insertT_Node_1_3, _lh_insertT_Node_2_3) -> 
      (if (_lh_insertT_arg1_3 <= _lh_insertT_Node_0_3) then
        (`Node(_lh_insertT_Node_0_3, (((insertT__d1 _lh_insertT_arg1_3) _lh_insertT_arg2_3) _lh_insertT_Node_1_3), _lh_insertT_Node_2_3))
      else
        (`Node(_lh_insertT_Node_0_3, _lh_insertT_Node_1_3, (((insertT__d1 _lh_insertT_arg1_3) _lh_insertT_arg2_3) _lh_insertT_Node_2_3))))
    | `Leaf(_lh_insertT_Leaf_0_3, _lh_insertT_Leaf_1_3) -> 
      (let rec l'_3 = (`Leaf(_lh_insertT_arg1_3, _lh_insertT_arg2_3)) in
        (if (_lh_insertT_arg1_3 < _lh_insertT_Leaf_0_3) then
          (`Node(_lh_insertT_arg1_3, l'_3, (`Leaf(_lh_insertT_Leaf_0_3, _lh_insertT_Leaf_1_3))))
        else
          (if (_lh_insertT_arg1_3 > _lh_insertT_Leaf_0_3) then
            (`Node(_lh_insertT_Leaf_0_3, (`Leaf(_lh_insertT_Leaf_0_3, _lh_insertT_Leaf_1_3)), l'_3))
          else
            ((failwith "error") (`LH_C('a', (`LH_C('l', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('y', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_N)))))))))))))))))))))))))))))))
    | `Empty -> 
      (`Leaf(_lh_insertT_arg1_3, _lh_insertT_arg2_3))
    | _ -> 
      (failwith "error"));;
let rec insertT__d2 _lh_insertT_arg1_2 _lh_insertT_arg2_2 _lh_insertT_arg3_2 =
  (match _lh_insertT_arg3_2 with
    | `Node(_lh_insertT_Node_0_2, _lh_insertT_Node_1_2, _lh_insertT_Node_2_2) -> 
      (if (_lh_insertT_arg1_2 <= _lh_insertT_Node_0_2) then
        (`Node(_lh_insertT_Node_0_2, (((insertT__d2 _lh_insertT_arg1_2) _lh_insertT_arg2_2) _lh_insertT_Node_1_2), _lh_insertT_Node_2_2))
      else
        (`Node(_lh_insertT_Node_0_2, _lh_insertT_Node_1_2, (((insertT__d2 _lh_insertT_arg1_2) _lh_insertT_arg2_2) _lh_insertT_Node_2_2))))
    | `Leaf(_lh_insertT_Leaf_0_2, _lh_insertT_Leaf_1_2) -> 
      (let rec l'_2 = (`Leaf(_lh_insertT_arg1_2, _lh_insertT_arg2_2)) in
        (if (_lh_insertT_arg1_2 < _lh_insertT_Leaf_0_2) then
          (`Node(_lh_insertT_arg1_2, l'_2, (`Leaf(_lh_insertT_Leaf_0_2, _lh_insertT_Leaf_1_2))))
        else
          (if (_lh_insertT_arg1_2 > _lh_insertT_Leaf_0_2) then
            (`Node(_lh_insertT_Leaf_0_2, (`Leaf(_lh_insertT_Leaf_0_2, _lh_insertT_Leaf_1_2)), l'_2))
          else
            ((failwith "error") (`LH_C('a', (`LH_C('l', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('y', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_N)))))))))))))))))))))))))))))))
    | `Empty -> 
      (`Leaf(_lh_insertT_arg1_2, _lh_insertT_arg2_2))
    | _ -> 
      (failwith "error"));;
let rec isDigit__d0 _lh_isDigit_arg1_4 =
  (let rec n_8 = (int_of_char _lh_isDigit_arg1_4) in
    ((n_8 >= 48) && (n_8 <= 57)));;
let rec isDigit__d1 _lh_isDigit_arg1_1 =
  (let rec n_5 = (int_of_char _lh_isDigit_arg1_1) in
    ((n_5 >= 48) && (n_5 <= 57)));;
let rec isDigit__d2 _lh_isDigit_arg1_3 =
  (let rec n_7 = (int_of_char _lh_isDigit_arg1_3) in
    ((n_7 >= 48) && (n_7 <= 57)));;
let rec isDigit__d3 _lh_isDigit_arg1_5 =
  (let rec n_9 = (int_of_char _lh_isDigit_arg1_5) in
    ((n_9 >= 48) && (n_9 <= 57)));;
let rec isDigit__d4 _lh_isDigit_arg1_2 =
  (let rec n_6 = (int_of_char _lh_isDigit_arg1_2) in
    ((n_6 >= 48) && (n_6 <= 57)));;
let rec isDigit__d5 _lh_isDigit_arg1_6 =
  (let rec n_1_0 = (int_of_char _lh_isDigit_arg1_6) in
    ((n_1_0 >= 48) && (n_1_0 <= 57)));;
let rec isSpace__d0 _lh_isSpace_arg1_2 =
  ((_lh_isSpace_arg1_2 = ' ') || (_lh_isSpace_arg1_2 = '|'));;
let rec isSpace__d1 _lh_isSpace_arg1_8 =
  ((_lh_isSpace_arg1_8 = ' ') || (_lh_isSpace_arg1_8 = '|'));;
let rec isSpace__d1_d0 _lh_isSpace_arg1_1_0 =
  ((_lh_isSpace_arg1_1_0 = ' ') || (_lh_isSpace_arg1_1_0 = '|'));;
let rec isSpace__d1_d1 _lh_isSpace_arg1_1 =
  ((_lh_isSpace_arg1_1 = ' ') || (_lh_isSpace_arg1_1 = '|'));;
let rec isSpace__d2 _lh_isSpace_arg1_4 =
  ((_lh_isSpace_arg1_4 = ' ') || (_lh_isSpace_arg1_4 = '|'));;
let rec isSpace__d3 _lh_isSpace_arg1_7 =
  ((_lh_isSpace_arg1_7 = ' ') || (_lh_isSpace_arg1_7 = '|'));;
let rec isSpace__d4 _lh_isSpace_arg1_6 =
  ((_lh_isSpace_arg1_6 = ' ') || (_lh_isSpace_arg1_6 = '|'));;
let rec isSpace__d5 _lh_isSpace_arg1_5 =
  ((_lh_isSpace_arg1_5 = ' ') || (_lh_isSpace_arg1_5 = '|'));;
let rec isSpace__d6 _lh_isSpace_arg1_9 =
  ((_lh_isSpace_arg1_9 = ' ') || (_lh_isSpace_arg1_9 = '|'));;
let rec isSpace__d7 _lh_isSpace_arg1_3 =
  ((_lh_isSpace_arg1_3 = ' ') || (_lh_isSpace_arg1_3 = '|'));;
let rec isSpace__d8 _lh_isSpace_arg1_1_2 =
  ((_lh_isSpace_arg1_1_2 = ' ') || (_lh_isSpace_arg1_1_2 = '|'));;
let rec isSpace__d9 _lh_isSpace_arg1_1_1 =
  ((_lh_isSpace_arg1_1_1 = ' ') || (_lh_isSpace_arg1_1_1 = '|'));;
let rec lookupT__d0 _lh_lookupT_arg1_1 _lh_lookupT_arg2_1 =
  (match _lh_lookupT_arg2_1 with
    | `Node(_lh_lookupT_Node_0_1, _lh_lookupT_Node_1_1, _lh_lookupT_Node_2_1) -> 
      (if (_lh_lookupT_arg1_1 <= _lh_lookupT_Node_0_1) then
        ((lookupT__d0 _lh_lookupT_arg1_1) _lh_lookupT_Node_1_1)
      else
        ((lookupT__d0 _lh_lookupT_arg1_1) _lh_lookupT_Node_2_1))
    | `Leaf(_lh_lookupT_Leaf_0_1, _lh_lookupT_Leaf_1_1) -> 
      (if (_lh_lookupT_arg1_1 = _lh_lookupT_Leaf_0_1) then
        (`Just(_lh_lookupT_Leaf_1_1))
      else
        (`Nothing))
    | `Empty -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec join__d0 _lh_join_arg1_1 _lh_join_arg2_1 _lh_join_arg3_1 =
  (match _lh_join_arg1_1 with
    | `Empty -> 
      _lh_join_arg3_1
    | _ -> 
      (match _lh_join_arg2_1 with
        | `Empty -> 
          _lh_join_arg3_1
        | _ -> 
          (match _lh_join_arg1_1 with
            | `Leaf(_lh_join_Leaf_0_1, _lh_join_Leaf_1_1) -> 
              (match _lh_join_Leaf_1_1 with
                | `LH_P3(_lh_join_LH_P3_0_2, _lh_join_LH_P3_1_2, _lh_join_LH_P3_2_2) -> 
                  (let rec _lh_matchIdent_6 = ((lookupT__d0 _lh_join_LH_P3_2_2) _lh_join_arg2_1) in
                    (match _lh_matchIdent_6 with
                      | `Nothing -> 
                        _lh_join_arg3_1
                      | `Just(_lh_join_Just_0_1) -> 
                        (match _lh_join_Just_0_1 with
                          | `LH_P3(_lh_join_LH_P3_0_3, _lh_join_LH_P3_1_3, _lh_join_LH_P3_2_3) -> 
                            (((insertT__d0 _lh_join_LH_P3_2_2) (`LH_P5(_lh_join_LH_P3_0_2, _lh_join_LH_P3_1_2, _lh_join_LH_P3_2_2, _lh_join_LH_P3_0_3, _lh_join_LH_P3_1_3))) _lh_join_arg3_1)
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (match _lh_join_arg1_1 with
                    | `Node(_lh_join_Node_0_2, _lh_join_Node_1_2, _lh_join_Node_2_2) -> 
                      (((join__d0 _lh_join_Node_1_2) _lh_join_arg2_1) (((join__d0 _lh_join_Node_2_2) _lh_join_arg2_1) _lh_join_arg3_1))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_join_arg1_1 with
                | `Node(_lh_join_Node_0_3, _lh_join_Node_1_3, _lh_join_Node_2_3) -> 
                  (((join__d0 _lh_join_Node_1_3) _lh_join_arg2_1) (((join__d0 _lh_join_Node_2_3) _lh_join_arg2_1) _lh_join_arg3_1))
                | _ -> 
                  (failwith "error")))))
and readInt__d0 _lh_readInt_arg1_1 =
  (let rec readInt'_1 = (fun _lh_readInt'_arg1_1 _lh_readInt'_arg2_1 -> 
    (match _lh_readInt'_arg2_1 with
      | `LH_C(_lh_readInt'_LH_C_0_1, _lh_readInt'_LH_C_1_1) -> 
        (if (isDigit__d0 _lh_readInt'_LH_C_0_1) then
          ((readInt'_1 (((_lh_readInt'_arg1_1 * 10) + (int_of_char _lh_readInt'_LH_C_0_1)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_1)
        else
          (let rec s'_2 = ((dropWhile__d1 isSpace__d1) (`LH_C(_lh_readInt'_LH_C_0_1, _lh_readInt'_LH_C_1_1))) in
            (`LH_P2(_lh_readInt'_arg1_1, s'_2))))
      | _ -> 
        (let rec s'_3 = ((dropWhile__d0 isSpace__d0) _lh_readInt'_arg2_1) in
          (`LH_P2(_lh_readInt'_arg1_1, s'_3))))) in
    ((readInt'_1 0) _lh_readInt_arg1_1))
and readInt__d1 _lh_readInt_arg1_2 =
  (let rec readInt'_2 = (fun _lh_readInt'_arg1_2 _lh_readInt'_arg2_2 -> 
    (match _lh_readInt'_arg2_2 with
      | `LH_C(_lh_readInt'_LH_C_0_2, _lh_readInt'_LH_C_1_2) -> 
        (if (isDigit__d1 _lh_readInt'_LH_C_0_2) then
          ((readInt'_2 (((_lh_readInt'_arg1_2 * 10) + (int_of_char _lh_readInt'_LH_C_0_2)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_2)
        else
          (let rec s'_4 = ((dropWhile__d3 isSpace__d3) (`LH_C(_lh_readInt'_LH_C_0_2, _lh_readInt'_LH_C_1_2))) in
            (`LH_P2(_lh_readInt'_arg1_2, s'_4))))
      | _ -> 
        (let rec s'_5 = ((dropWhile__d2 isSpace__d2) _lh_readInt'_arg2_2) in
          (`LH_P2(_lh_readInt'_arg1_2, s'_5))))) in
    ((readInt'_2 0) _lh_readInt_arg1_2))
and readInt__d2 _lh_readInt_arg1_6 =
  (let rec readInt'_6 = (fun _lh_readInt'_arg1_6 _lh_readInt'_arg2_6 -> 
    (match _lh_readInt'_arg2_6 with
      | `LH_C(_lh_readInt'_LH_C_0_6, _lh_readInt'_LH_C_1_6) -> 
        (if (isDigit__d2 _lh_readInt'_LH_C_0_6) then
          ((readInt'_6 (((_lh_readInt'_arg1_6 * 10) + (int_of_char _lh_readInt'_LH_C_0_6)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_6)
        else
          (let rec s'_1_2 = ((dropWhile__d5 isSpace__d5) (`LH_C(_lh_readInt'_LH_C_0_6, _lh_readInt'_LH_C_1_6))) in
            (`LH_P2(_lh_readInt'_arg1_6, s'_1_2))))
      | _ -> 
        (let rec s'_1_3 = ((dropWhile__d4 isSpace__d4) _lh_readInt'_arg2_6) in
          (`LH_P2(_lh_readInt'_arg1_6, s'_1_3))))) in
    ((readInt'_6 0) _lh_readInt_arg1_6))
and readInt__d3 _lh_readInt_arg1_4 =
  (let rec readInt'_4 = (fun _lh_readInt'_arg1_4 _lh_readInt'_arg2_4 -> 
    (match _lh_readInt'_arg2_4 with
      | `LH_C(_lh_readInt'_LH_C_0_4, _lh_readInt'_LH_C_1_4) -> 
        (if (isDigit__d3 _lh_readInt'_LH_C_0_4) then
          ((readInt'_4 (((_lh_readInt'_arg1_4 * 10) + (int_of_char _lh_readInt'_LH_C_0_4)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_4)
        else
          (let rec s'_8 = ((dropWhile__d7 isSpace__d7) (`LH_C(_lh_readInt'_LH_C_0_4, _lh_readInt'_LH_C_1_4))) in
            (`LH_P2(_lh_readInt'_arg1_4, s'_8))))
      | _ -> 
        (let rec s'_9 = ((dropWhile__d6 isSpace__d6) _lh_readInt'_arg2_4) in
          (`LH_P2(_lh_readInt'_arg1_4, s'_9))))) in
    ((readInt'_4 0) _lh_readInt_arg1_4))
and readInt__d4 _lh_readInt_arg1_5 =
  (let rec readInt'_5 = (fun _lh_readInt'_arg1_5 _lh_readInt'_arg2_5 -> 
    (match _lh_readInt'_arg2_5 with
      | `LH_C(_lh_readInt'_LH_C_0_5, _lh_readInt'_LH_C_1_5) -> 
        (if (isDigit__d4 _lh_readInt'_LH_C_0_5) then
          ((readInt'_5 (((_lh_readInt'_arg1_5 * 10) + (int_of_char _lh_readInt'_LH_C_0_5)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_5)
        else
          (let rec s'_1_0 = ((dropWhile__d9 isSpace__d9) (`LH_C(_lh_readInt'_LH_C_0_5, _lh_readInt'_LH_C_1_5))) in
            (`LH_P2(_lh_readInt'_arg1_5, s'_1_0))))
      | _ -> 
        (let rec s'_1_1 = ((dropWhile__d8 isSpace__d8) _lh_readInt'_arg2_5) in
          (`LH_P2(_lh_readInt'_arg1_5, s'_1_1))))) in
    ((readInt'_5 0) _lh_readInt_arg1_5))
and readInt__d5 _lh_readInt_arg1_3 =
  (let rec readInt'_3 = (fun _lh_readInt'_arg1_3 _lh_readInt'_arg2_3 -> 
    (match _lh_readInt'_arg2_3 with
      | `LH_C(_lh_readInt'_LH_C_0_3, _lh_readInt'_LH_C_1_3) -> 
        (if (isDigit__d5 _lh_readInt'_LH_C_0_3) then
          ((readInt'_3 (((_lh_readInt'_arg1_3 * 10) + (int_of_char _lh_readInt'_LH_C_0_3)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_3)
        else
          (let rec s'_6 = ((dropWhile__d1_d1 isSpace__d1_d1) (`LH_C(_lh_readInt'_LH_C_0_3, _lh_readInt'_LH_C_1_3))) in
            (`LH_P2(_lh_readInt'_arg1_3, s'_6))))
      | _ -> 
        (let rec s'_7 = ((dropWhile__d1_d0 isSpace__d1_d0) _lh_readInt'_arg2_3) in
          (`LH_P2(_lh_readInt'_arg1_3, s'_7))))) in
    ((readInt'_3 0) _lh_readInt_arg1_3))
and readTree__d0 _lh_readTree_arg1_1 _lh_readTree_arg2_1 _lh_readTree_arg3_1 =
  (match _lh_readTree_arg2_1 with
    | `LH_N -> 
      _lh_readTree_arg3_1
    | _ -> 
      (let rec _lh_matchIdent_7 = (readInt__d0 _lh_readTree_arg2_1) in
        (match _lh_matchIdent_7 with
          | `LH_P2(_lh_readTree_LH_P2_0_3, _lh_readTree_LH_P2_1_3) -> 
            (let rec _lh_matchIdent_8 = (readInt__d1 _lh_readTree_LH_P2_1_3) in
              (match _lh_matchIdent_8 with
                | `LH_P2(_lh_readTree_LH_P2_0_4, _lh_readTree_LH_P2_1_4) -> 
                  (let rec _lh_matchIdent_9 = (readInt__d2 _lh_readTree_LH_P2_1_4) in
                    (match _lh_matchIdent_9 with
                      | `LH_P2(_lh_readTree_LH_P2_0_5, _lh_readTree_LH_P2_1_5) -> 
                        (let rec e_1 = (`LH_P3(_lh_readTree_LH_P2_0_3, _lh_readTree_LH_P2_0_4, _lh_readTree_LH_P2_0_5)) in
                          (let rec k_1 = (_lh_readTree_arg1_1 e_1) in
                            (((readTree__d0 _lh_readTree_arg1_1) _lh_readTree_LH_P2_1_5) (((insertT__d1 k_1) e_1) _lh_readTree_arg3_1))))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))))
and readTree__d1 _lh_readTree_arg1_2 _lh_readTree_arg2_2 _lh_readTree_arg3_2 =
  (match _lh_readTree_arg2_2 with
    | `LH_N -> 
      _lh_readTree_arg3_2
    | _ -> 
      (let rec _lh_matchIdent_1_2 = (readInt__d3 _lh_readTree_arg2_2) in
        (match _lh_matchIdent_1_2 with
          | `LH_P2(_lh_readTree_LH_P2_0_6, _lh_readTree_LH_P2_1_6) -> 
            (let rec _lh_matchIdent_1_3 = (readInt__d4 _lh_readTree_LH_P2_1_6) in
              (match _lh_matchIdent_1_3 with
                | `LH_P2(_lh_readTree_LH_P2_0_7, _lh_readTree_LH_P2_1_7) -> 
                  (let rec _lh_matchIdent_1_4 = (readInt__d5 _lh_readTree_LH_P2_1_7) in
                    (match _lh_matchIdent_1_4 with
                      | `LH_P2(_lh_readTree_LH_P2_0_8, _lh_readTree_LH_P2_1_8) -> 
                        (let rec e_2 = (`LH_P3(_lh_readTree_LH_P2_0_6, _lh_readTree_LH_P2_0_7, _lh_readTree_LH_P2_0_8)) in
                          (let rec k_2 = (_lh_readTree_arg1_2 e_2) in
                            (((readTree__d1 _lh_readTree_arg1_2) _lh_readTree_LH_P2_1_8) (((insertT__d2 k_2) e_2) _lh_readTree_arg3_2))))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))))
and testTreejoin_nofib__d0 _lh_testTreejoin_nofib_arg1_1 =
  (let rec c1_1 = lh_large_str_0 in
    (let rec c2_1 = lh_large_str_1 in
      (let rec a_6 = (((readTree__d0 (fun x___2 -> 
        (let rec _lh_matchIdent_1_0 = x___2 in
          (match _lh_matchIdent_1_0 with
            | `LH_P3(_lh_testTreejoin_nofib_LH_P3_0_2, _lh_testTreejoin_nofib_LH_P3_1_2, _lh_testTreejoin_nofib_LH_P3_2_2) -> 
              _lh_testTreejoin_nofib_LH_P3_0_2
            | _ -> 
              (failwith "error"))))) c1_1) (`Empty)) in
        (let rec b_3 = (((readTree__d1 (fun x___3 -> 
          (let rec _lh_matchIdent_1_1 = x___3 in
            (match _lh_matchIdent_1_1 with
              | `LH_P3(_lh_testTreejoin_nofib_LH_P3_0_3, _lh_testTreejoin_nofib_LH_P3_1_3, _lh_testTreejoin_nofib_LH_P3_2_3) -> 
                _lh_testTreejoin_nofib_LH_P3_0_3
              | _ -> 
                (failwith "error"))))) c2_1) (`Empty)) in
          (((join__d0 a_6) b_3) (`Empty))))));;
end;;

