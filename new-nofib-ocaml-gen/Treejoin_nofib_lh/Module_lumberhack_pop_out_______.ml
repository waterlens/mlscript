

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end) = struct
let rec isSpace_lh__d3 _lh_isSpace_arg1_0 =
  ((_lh_isSpace_arg1_0 = ' ') || (_lh_isSpace_arg1_0 = '|'));;
let rec isDigit_lh__d1 _lh_isDigit_arg1_0 =
  (let rec n_0 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_0 >= 48) && (n_0 <= 57)));;
let rec dropWhile_lh__d2 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_lh__d2 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec insertT_lh__d2 _lh_insertT_arg1_1 _lh_insertT_arg2_1 _lh_insertT_arg3_1 =
  (match _lh_insertT_arg3_1 with
    | `Node(_lh_insertT_Node_0_1, _lh_insertT_Node_1_1, _lh_insertT_Node_2_1) -> 
      (if (_lh_insertT_arg1_1 <= _lh_insertT_Node_0_1) then
        (`Node(_lh_insertT_Node_0_1, (((insertT_lh__d2 _lh_insertT_arg1_1) _lh_insertT_arg2_1) _lh_insertT_Node_1_1), _lh_insertT_Node_2_1))
      else
        (`Node(_lh_insertT_Node_0_1, _lh_insertT_Node_1_1, (((insertT_lh__d2 _lh_insertT_arg1_1) _lh_insertT_arg2_1) _lh_insertT_Node_2_1))))
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
let rec readInt_lh__d4 _lh_readInt_arg1_1 =
  (let rec readInt'_1 = (fun _lh_readInt'_arg1_1 _lh_readInt'_arg2_1 -> 
    (match _lh_readInt'_arg2_1 with
      | `LH_C(_lh_readInt'_LH_C_0_1, _lh_readInt'_LH_C_1_1) -> 
        (if (isDigit_lh__d1 _lh_readInt'_LH_C_0_1) then
          ((readInt'_1 (((_lh_readInt'_arg1_1 * 10) + (int_of_char _lh_readInt'_LH_C_0_1)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_1)
        else
          (let rec s'_2 = ((dropWhile_lh__d2 isSpace_lh__d3) (`LH_C(_lh_readInt'_LH_C_0_1, _lh_readInt'_LH_C_1_1))) in
            (let rec _lh_readTree_LH_P2_1_2 = s'_2 in
              (let rec _lh_readTree_LH_P2_0_4 = _lh_readInt'_arg1_1 in
                (fun _lh_readTree_arg1_3 _lh_readTree_arg3_3 -> 
                  (let rec _lh_matchIdent_5 = (readInt_lh__d5 _lh_readTree_LH_P2_1_2) in
                    (((_lh_matchIdent_5 _lh_readTree_LH_P2_0_4) _lh_readTree_arg1_3) _lh_readTree_arg3_3)))))))
      | _ -> 
        (let rec s'_3 = ((dropWhile_lh__d2 isSpace_lh__d3) _lh_readInt'_arg2_1) in
          (let rec _lh_readTree_LH_P2_1_3 = s'_3 in
            (let rec _lh_readTree_LH_P2_0_5 = _lh_readInt'_arg1_1 in
              (fun _lh_readTree_arg1_4 _lh_readTree_arg3_4 -> 
                (let rec _lh_matchIdent_6 = (readInt_lh__d5 _lh_readTree_LH_P2_1_3) in
                  (((_lh_matchIdent_6 _lh_readTree_LH_P2_0_5) _lh_readTree_arg1_4) _lh_readTree_arg3_4)))))))) in
    ((readInt'_1 0) _lh_readInt_arg1_1))
and
readInt_lh__d5 _lh_readInt_arg1_4 =
  (let rec readInt'_4 = (fun _lh_readInt'_arg1_4 _lh_readInt'_arg2_4 -> 
    (match _lh_readInt'_arg2_4 with
      | `LH_C(_lh_readInt'_LH_C_0_4, _lh_readInt'_LH_C_1_4) -> 
        (if (isDigit_lh__d1 _lh_readInt'_LH_C_0_4) then
          ((readInt'_4 (((_lh_readInt'_arg1_4 * 10) + (int_of_char _lh_readInt'_LH_C_0_4)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_4)
        else
          (let rec s'_8 = ((dropWhile_lh__d2 isSpace_lh__d3) (`LH_C(_lh_readInt'_LH_C_0_4, _lh_readInt'_LH_C_1_4))) in
            (let rec _lh_readTree_LH_P2_1_8 = s'_8 in
              (let rec _lh_readTree_LH_P2_0_1_4 = _lh_readInt'_arg1_4 in
                (fun _lh_readTree_LH_P2_0_1_5 _lh_readTree_arg1_1_0 _lh_readTree_arg3_1_0 -> 
                  (let rec _lh_matchIdent_1_1 = (readInt_lh__d6 _lh_readTree_LH_P2_1_8) in
                    ((((_lh_matchIdent_1_1 _lh_readTree_LH_P2_0_1_4) _lh_readTree_LH_P2_0_1_5) _lh_readTree_arg1_1_0) _lh_readTree_arg3_1_0)))))))
      | _ -> 
        (let rec s'_9 = ((dropWhile_lh__d2 isSpace_lh__d3) _lh_readInt'_arg2_4) in
          (let rec _lh_readTree_LH_P2_1_9 = s'_9 in
            (let rec _lh_readTree_LH_P2_0_1_6 = _lh_readInt'_arg1_4 in
              (fun _lh_readTree_LH_P2_0_1_7 _lh_readTree_arg1_1_1 _lh_readTree_arg3_1_1 -> 
                (let rec _lh_matchIdent_1_2 = (readInt_lh__d6 _lh_readTree_LH_P2_1_9) in
                  ((((_lh_matchIdent_1_2 _lh_readTree_LH_P2_0_1_6) _lh_readTree_LH_P2_0_1_7) _lh_readTree_arg1_1_1) _lh_readTree_arg3_1_1)))))))) in
    ((readInt'_4 0) _lh_readInt_arg1_4))
and
readInt_lh__d6 _lh_readInt_arg1_5 =
  (let rec readInt'_5 = (fun _lh_readInt'_arg1_5 _lh_readInt'_arg2_5 -> 
    (match _lh_readInt'_arg2_5 with
      | `LH_C(_lh_readInt'_LH_C_0_5, _lh_readInt'_LH_C_1_5) -> 
        (if (isDigit_lh__d1 _lh_readInt'_LH_C_0_5) then
          ((readInt'_5 (((_lh_readInt'_arg1_5 * 10) + (int_of_char _lh_readInt'_LH_C_0_5)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_5)
        else
          (let rec s'_1_0 = ((dropWhile_lh__d2 isSpace_lh__d3) (`LH_C(_lh_readInt'_LH_C_0_5, _lh_readInt'_LH_C_1_5))) in
            (let rec _lh_readTree_LH_P2_1_1_0 = s'_1_0 in
              (let rec _lh_readTree_LH_P2_0_1_8 = _lh_readInt'_arg1_5 in
                (fun _lh_readTree_LH_P2_0_1_9 _lh_readTree_LH_P2_0_2_0 _lh_readTree_arg1_1_2 _lh_readTree_arg3_1_2 -> 
                  (let rec e_2 = (`LH_P3(_lh_readTree_LH_P2_0_2_0, _lh_readTree_LH_P2_0_1_9, _lh_readTree_LH_P2_0_1_8)) in
                    (let rec k_2 = (_lh_readTree_arg1_1_2 e_2) in
                      (((readTree_lh__d2 _lh_readTree_arg1_1_2) _lh_readTree_LH_P2_1_1_0) (((insertT_lh__d2 k_2) e_2) _lh_readTree_arg3_1_2)))))))))
      | _ -> 
        (let rec s'_1_1 = ((dropWhile_lh__d2 isSpace_lh__d3) _lh_readInt'_arg2_5) in
          (let rec _lh_readTree_LH_P2_1_1_1 = s'_1_1 in
            (let rec _lh_readTree_LH_P2_0_2_1 = _lh_readInt'_arg1_5 in
              (fun _lh_readTree_LH_P2_0_2_2 _lh_readTree_LH_P2_0_2_3 _lh_readTree_arg1_1_3 _lh_readTree_arg3_1_3 -> 
                (let rec e_3 = (`LH_P3(_lh_readTree_LH_P2_0_2_3, _lh_readTree_LH_P2_0_2_2, _lh_readTree_LH_P2_0_2_1)) in
                  (let rec k_3 = (_lh_readTree_arg1_1_3 e_3) in
                    (((readTree_lh__d2 _lh_readTree_arg1_1_3) _lh_readTree_LH_P2_1_1_1) (((insertT_lh__d2 k_3) e_3) _lh_readTree_arg3_1_3)))))))))) in
    ((readInt'_5 0) _lh_readInt_arg1_5))
and
readTree_lh__d2 _lh_readTree_arg1_5 _lh_readTree_arg2_1 _lh_readTree_arg3_5 =
  (match _lh_readTree_arg2_1 with
    | `LH_N -> 
      _lh_readTree_arg3_5
    | _ -> 
      (let rec _lh_matchIdent_7 = (readInt_lh__d4 _lh_readTree_arg2_1) in
        ((_lh_matchIdent_7 _lh_readTree_arg1_5) _lh_readTree_arg3_5)));;
let rec isSpace_lh__d1 _lh_isSpace_arg1_1 =
  ((_lh_isSpace_arg1_1 = ' ') || (_lh_isSpace_arg1_1 = '|'));;
let rec isSpace_lh__d2 _lh_isSpace_arg1_2 =
  ((_lh_isSpace_arg1_2 = ' ') || (_lh_isSpace_arg1_2 = '|'));;
let rec insertT_lh__d1 _lh_insertT_arg1_2 _lh_insertT_arg2_2 _lh_insertT_arg3_2 =
  (match _lh_insertT_arg3_2 with
    | `Node(_lh_insertT_Node_0_2, _lh_insertT_Node_1_2, _lh_insertT_Node_2_2) -> 
      (if (_lh_insertT_arg1_2 <= _lh_insertT_Node_0_2) then
        (`Node(_lh_insertT_Node_0_2, (((insertT_lh__d1 _lh_insertT_arg1_2) _lh_insertT_arg2_2) _lh_insertT_Node_1_2), _lh_insertT_Node_2_2))
      else
        (`Node(_lh_insertT_Node_0_2, _lh_insertT_Node_1_2, (((insertT_lh__d1 _lh_insertT_arg1_2) _lh_insertT_arg2_2) _lh_insertT_Node_2_2))))
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
let rec readInt_lh__d1 _lh_readInt_arg1_2 =
  (let rec readInt'_2 = (fun _lh_readInt'_arg1_2 _lh_readInt'_arg2_2 -> 
    (match _lh_readInt'_arg2_2 with
      | `LH_C(_lh_readInt'_LH_C_0_2, _lh_readInt'_LH_C_1_2) -> 
        (if (isDigit_lh__d1 _lh_readInt'_LH_C_0_2) then
          ((readInt'_2 (((_lh_readInt'_arg1_2 * 10) + (int_of_char _lh_readInt'_LH_C_0_2)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_2)
        else
          (let rec s'_4 = ((dropWhile_lh__d1 isSpace_lh__d1) (`LH_C(_lh_readInt'_LH_C_0_2, _lh_readInt'_LH_C_1_2))) in
            (let rec _lh_readTree_LH_P2_1_4 = s'_4 in
              (let rec _lh_readTree_LH_P2_0_6 = _lh_readInt'_arg1_2 in
                (fun _lh_readTree_LH_P2_0_7 _lh_readTree_LH_P2_0_8 _lh_readTree_arg1_6 _lh_readTree_arg3_6 -> 
                  (let rec e_0 = (`LH_P3(_lh_readTree_LH_P2_0_7, _lh_readTree_LH_P2_0_8, _lh_readTree_LH_P2_0_6)) in
                    (let rec k_0 = (_lh_readTree_arg1_6 e_0) in
                      (((readTree_lh__d1 _lh_readTree_arg1_6) _lh_readTree_LH_P2_1_4) (((insertT_lh__d1 k_0) e_0) _lh_readTree_arg3_6)))))))))
      | _ -> 
        (let rec s'_5 = ((dropWhile_lh__d2 isSpace_lh__d2) _lh_readInt'_arg2_2) in
          (let rec _lh_readTree_LH_P2_1_5 = s'_5 in
            (let rec _lh_readTree_LH_P2_0_9 = _lh_readInt'_arg1_2 in
              (fun _lh_readTree_LH_P2_0_1_0 _lh_readTree_LH_P2_0_1_1 _lh_readTree_arg1_7 _lh_readTree_arg3_7 -> 
                (let rec e_1 = (`LH_P3(_lh_readTree_LH_P2_0_1_0, _lh_readTree_LH_P2_0_1_1, _lh_readTree_LH_P2_0_9)) in
                  (let rec k_1 = (_lh_readTree_arg1_7 e_1) in
                    (((readTree_lh__d1 _lh_readTree_arg1_7) _lh_readTree_LH_P2_1_5) (((insertT_lh__d1 k_1) e_1) _lh_readTree_arg3_7)))))))))) in
    ((readInt'_2 0) _lh_readInt_arg1_2))
and
readInt_lh__d2 _lh_readInt_arg1_0 =
  (let rec readInt'_0 = (fun _lh_readInt'_arg1_0 _lh_readInt'_arg2_0 -> 
    (match _lh_readInt'_arg2_0 with
      | `LH_C(_lh_readInt'_LH_C_0_0, _lh_readInt'_LH_C_1_0) -> 
        (if (isDigit_lh__d1 _lh_readInt'_LH_C_0_0) then
          ((readInt'_0 (((_lh_readInt'_arg1_0 * 10) + (int_of_char _lh_readInt'_LH_C_0_0)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_0)
        else
          (let rec s'_0 = ((dropWhile_lh__d2 isSpace_lh__d3) (`LH_C(_lh_readInt'_LH_C_0_0, _lh_readInt'_LH_C_1_0))) in
            (let rec _lh_readTree_LH_P2_1_0 = s'_0 in
              (let rec _lh_readTree_LH_P2_0_0 = _lh_readInt'_arg1_0 in
                (fun _lh_readTree_LH_P2_0_1 _lh_readTree_arg1_0 _lh_readTree_arg3_0 -> 
                  (let rec _lh_matchIdent_0 = (readInt_lh__d1 _lh_readTree_LH_P2_1_0) in
                    ((((_lh_matchIdent_0 _lh_readTree_LH_P2_0_1) _lh_readTree_LH_P2_0_0) _lh_readTree_arg1_0) _lh_readTree_arg3_0)))))))
      | _ -> 
        (let rec s'_1 = ((dropWhile_lh__d2 isSpace_lh__d3) _lh_readInt'_arg2_0) in
          (let rec _lh_readTree_LH_P2_1_1 = s'_1 in
            (let rec _lh_readTree_LH_P2_0_2 = _lh_readInt'_arg1_0 in
              (fun _lh_readTree_LH_P2_0_3 _lh_readTree_arg1_1 _lh_readTree_arg3_1 -> 
                (let rec _lh_matchIdent_1 = (readInt_lh__d1 _lh_readTree_LH_P2_1_1) in
                  ((((_lh_matchIdent_1 _lh_readTree_LH_P2_0_3) _lh_readTree_LH_P2_0_2) _lh_readTree_arg1_1) _lh_readTree_arg3_1)))))))) in
    ((readInt'_0 0) _lh_readInt_arg1_0))
and
readInt_lh__d3 _lh_readInt_arg1_3 =
  (let rec readInt'_3 = (fun _lh_readInt'_arg1_3 _lh_readInt'_arg2_3 -> 
    (match _lh_readInt'_arg2_3 with
      | `LH_C(_lh_readInt'_LH_C_0_3, _lh_readInt'_LH_C_1_3) -> 
        (if (isDigit_lh__d1 _lh_readInt'_LH_C_0_3) then
          ((readInt'_3 (((_lh_readInt'_arg1_3 * 10) + (int_of_char _lh_readInt'_LH_C_0_3)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_3)
        else
          (let rec s'_6 = ((dropWhile_lh__d2 isSpace_lh__d3) (`LH_C(_lh_readInt'_LH_C_0_3, _lh_readInt'_LH_C_1_3))) in
            (let rec _lh_readTree_LH_P2_1_6 = s'_6 in
              (let rec _lh_readTree_LH_P2_0_1_2 = _lh_readInt'_arg1_3 in
                (fun _lh_readTree_arg1_8 _lh_readTree_arg3_8 -> 
                  (let rec _lh_matchIdent_9 = (readInt_lh__d2 _lh_readTree_LH_P2_1_6) in
                    (((_lh_matchIdent_9 _lh_readTree_LH_P2_0_1_2) _lh_readTree_arg1_8) _lh_readTree_arg3_8)))))))
      | _ -> 
        (let rec s'_7 = ((dropWhile_lh__d2 isSpace_lh__d3) _lh_readInt'_arg2_3) in
          (let rec _lh_readTree_LH_P2_1_7 = s'_7 in
            (let rec _lh_readTree_LH_P2_0_1_3 = _lh_readInt'_arg1_3 in
              (fun _lh_readTree_arg1_9 _lh_readTree_arg3_9 -> 
                (let rec _lh_matchIdent_1_0 = (readInt_lh__d2 _lh_readTree_LH_P2_1_7) in
                  (((_lh_matchIdent_1_0 _lh_readTree_LH_P2_0_1_3) _lh_readTree_arg1_9) _lh_readTree_arg3_9)))))))) in
    ((readInt'_3 0) _lh_readInt_arg1_3))
and
readTree_lh__d1 _lh_readTree_arg1_2 _lh_readTree_arg2_0 _lh_readTree_arg3_2 =
  (match _lh_readTree_arg2_0 with
    | `LH_N -> 
      _lh_readTree_arg3_2
    | _ -> 
      (let rec _lh_matchIdent_4 = (readInt_lh__d3 _lh_readTree_arg2_0) in
        ((_lh_matchIdent_4 _lh_readTree_arg1_2) _lh_readTree_arg3_2)));;
let rec insertT_lh__d3 _lh_insertT_arg1_0 _lh_insertT_arg2_0 _lh_insertT_arg3_0 =
  (match _lh_insertT_arg3_0 with
    | `Node(_lh_insertT_Node_0_0, _lh_insertT_Node_1_0, _lh_insertT_Node_2_0) -> 
      (if (_lh_insertT_arg1_0 <= _lh_insertT_Node_0_0) then
        (`Node(_lh_insertT_Node_0_0, (((insertT_lh__d3 _lh_insertT_arg1_0) _lh_insertT_arg2_0) _lh_insertT_Node_1_0), _lh_insertT_Node_2_0))
      else
        (`Node(_lh_insertT_Node_0_0, _lh_insertT_Node_1_0, (((insertT_lh__d3 _lh_insertT_arg1_0) _lh_insertT_arg2_0) _lh_insertT_Node_2_0))))
    | `Leaf(_lh_insertT_Leaf_0_0, _lh_insertT_Leaf_1_0) -> 
      (let rec l'_0 = (`Leaf(_lh_insertT_arg1_0, _lh_insertT_arg2_0)) in
        (if (_lh_insertT_arg1_0 < _lh_insertT_Leaf_0_0) then
          (`Node(_lh_insertT_arg1_0, l'_0, (`Leaf(_lh_insertT_Leaf_0_0, _lh_insertT_Leaf_1_0))))
        else
          (if (_lh_insertT_arg1_0 > _lh_insertT_Leaf_0_0) then
            (`Node(_lh_insertT_Leaf_0_0, (`Leaf(_lh_insertT_Leaf_0_0, _lh_insertT_Leaf_1_0)), l'_0))
          else
            ((failwith "error") (`LH_C('a', (`LH_C('l', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('d', (`LH_C('y', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_N)))))))))))))))))))))))))))))))
    | `Empty -> 
      (`Leaf(_lh_insertT_arg1_0, _lh_insertT_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec lookupT_lh__d1 _lh_lookupT_arg1_0 _lh_lookupT_arg2_0 =
  (match _lh_lookupT_arg2_0 with
    | `Node(_lh_lookupT_Node_0_0, _lh_lookupT_Node_1_0, _lh_lookupT_Node_2_0) -> 
      (if (_lh_lookupT_arg1_0 <= _lh_lookupT_Node_0_0) then
        ((lookupT_lh__d1 _lh_lookupT_arg1_0) _lh_lookupT_Node_1_0)
      else
        ((lookupT_lh__d1 _lh_lookupT_arg1_0) _lh_lookupT_Node_2_0))
    | `Leaf(_lh_lookupT_Leaf_0_0, _lh_lookupT_Leaf_1_0) -> 
      (if (_lh_lookupT_arg1_0 = _lh_lookupT_Leaf_0_0) then
        (let rec _lh_join_Just_0_0 = _lh_lookupT_Leaf_1_0 in
          (fun _lh_join_arg3_0 _lh_join_LH_P3_0_0 _lh_join_LH_P3_1_0 _lh_join_LH_P3_2_0 -> 
            (match _lh_join_Just_0_0 with
              | `LH_P3(_lh_join_LH_P3_0_1, _lh_join_LH_P3_1_1, _lh_join_LH_P3_2_1) -> 
                (((insertT_lh__d3 _lh_join_LH_P3_2_0) (`LH_P5(_lh_join_LH_P3_0_0, _lh_join_LH_P3_1_0, _lh_join_LH_P3_2_0, _lh_join_LH_P3_0_1, _lh_join_LH_P3_1_1))) _lh_join_arg3_0)
              | _ -> 
                (failwith "error"))))
      else
        (fun _lh_join_arg3_1 _lh_join_LH_P3_0_2 _lh_join_LH_P3_1_2 _lh_join_LH_P3_2_2 -> 
          _lh_join_arg3_1))
    | `Empty -> 
      (fun _lh_join_arg3_2 _lh_join_LH_P3_0_3 _lh_join_LH_P3_1_3 _lh_join_LH_P3_2_3 -> 
        _lh_join_arg3_2)
    | _ -> 
      (failwith "error"));;
let rec join_lh__d1 _lh_join_arg1_0 _lh_join_arg2_0 _lh_join_arg3_3 =
  (match _lh_join_arg1_0 with
    | `Empty -> 
      _lh_join_arg3_3
    | _ -> 
      (match _lh_join_arg2_0 with
        | `Empty -> 
          _lh_join_arg3_3
        | _ -> 
          (match _lh_join_arg1_0 with
            | `Leaf(_lh_join_Leaf_0_0, _lh_join_Leaf_1_0) -> 
              (match _lh_join_Leaf_1_0 with
                | `LH_P3(_lh_join_LH_P3_0_4, _lh_join_LH_P3_1_4, _lh_join_LH_P3_2_4) -> 
                  (let rec _lh_matchIdent_8 = ((lookupT_lh__d1 _lh_join_LH_P3_2_4) _lh_join_arg2_0) in
                    ((((_lh_matchIdent_8 _lh_join_arg3_3) _lh_join_LH_P3_0_4) _lh_join_LH_P3_1_4) _lh_join_LH_P3_2_4))
                | _ -> 
                  (match _lh_join_arg1_0 with
                    | `Node(_lh_join_Node_0_0, _lh_join_Node_1_0, _lh_join_Node_2_0) -> 
                      (((join_lh__d1 _lh_join_Node_1_0) _lh_join_arg2_0) (((join_lh__d1 _lh_join_Node_2_0) _lh_join_arg2_0) _lh_join_arg3_3))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_join_arg1_0 with
                | `Node(_lh_join_Node_0_1, _lh_join_Node_1_1, _lh_join_Node_2_1) -> 
                  (((join_lh__d1 _lh_join_Node_1_1) _lh_join_arg2_0) (((join_lh__d1 _lh_join_Node_2_1) _lh_join_arg2_0) _lh_join_arg3_3))
                | _ -> 
                  (failwith "error")))));;
let rec testTreejoin_nofib_lh__d1 _lh_testTreejoin_nofib_arg1_0 =
  (let rec c1_0 = lh_large_str_0 in
    (let rec c2_0 = lh_large_str_1 in
      (let rec a_0 = (((readTree_lh__d1 (fun x___0 -> 
        (let rec _lh_matchIdent_2 = x___0 in
          (match _lh_matchIdent_2 with
            | `LH_P3(_lh_testTreejoin_nofib_LH_P3_0_0, _lh_testTreejoin_nofib_LH_P3_1_0, _lh_testTreejoin_nofib_LH_P3_2_0) -> 
              _lh_testTreejoin_nofib_LH_P3_0_0
            | _ -> 
              (failwith "error"))))) c1_0) (`Empty)) in
        (let rec b_0 = (((readTree_lh__d2 (fun x___1 -> 
          (let rec _lh_matchIdent_3 = x___1 in
            (match _lh_matchIdent_3 with
              | `LH_P3(_lh_testTreejoin_nofib_LH_P3_0_1, _lh_testTreejoin_nofib_LH_P3_1_1, _lh_testTreejoin_nofib_LH_P3_2_1) -> 
                _lh_testTreejoin_nofib_LH_P3_0_1
              | _ -> 
                (failwith "error"))))) c2_0) (`Empty)) in
          (((join_lh__d1 a_0) b_0) (`Empty))))));;
end;;

