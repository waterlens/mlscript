

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec insertT_lh _lh_insertT_arg1_0 _lh_insertT_arg2_0 _lh_insertT_arg3_0 =
  (match _lh_insertT_arg3_0 with
    | `Node(_lh_insertT_Node_0_0, _lh_insertT_Node_1_0, _lh_insertT_Node_2_0) -> 
      (if (_lh_insertT_arg1_0 <= _lh_insertT_Node_0_0) then
        (`Node(_lh_insertT_Node_0_0, (((insertT_lh _lh_insertT_arg1_0) _lh_insertT_arg2_0) _lh_insertT_Node_1_0), _lh_insertT_Node_2_0))
      else
        (`Node(_lh_insertT_Node_0_0, _lh_insertT_Node_1_0, (((insertT_lh _lh_insertT_arg1_0) _lh_insertT_arg2_0) _lh_insertT_Node_2_0))))
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
let rec isSpace_lh _lh_isSpace_arg1_0 =
  ((_lh_isSpace_arg1_0 = ' ') || (_lh_isSpace_arg1_0 = '|'));;
let rec isDigit_lh _lh_isDigit_arg1_0 =
  (let rec n_0 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_0 >= 48) && (n_0 <= 57)));;
let rec lookupT_lh _lh_lookupT_arg1_0 _lh_lookupT_arg2_0 =
  (match _lh_lookupT_arg2_0 with
    | `Node(_lh_lookupT_Node_0_0, _lh_lookupT_Node_1_0, _lh_lookupT_Node_2_0) -> 
      (if (_lh_lookupT_arg1_0 <= _lh_lookupT_Node_0_0) then
        ((lookupT_lh _lh_lookupT_arg1_0) _lh_lookupT_Node_1_0)
      else
        ((lookupT_lh _lh_lookupT_arg1_0) _lh_lookupT_Node_2_0))
    | `Leaf(_lh_lookupT_Leaf_0_0, _lh_lookupT_Leaf_1_0) -> 
      (if (_lh_lookupT_arg1_0 = _lh_lookupT_Leaf_0_0) then
        (`Just(_lh_lookupT_Leaf_1_0))
      else
        (`Nothing))
    | `Empty -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec readInt_lh _lh_readInt_arg1_0 =
  (let rec readInt'_0 = (fun _lh_readInt'_arg1_0 _lh_readInt'_arg2_0 -> 
    (match _lh_readInt'_arg2_0 with
      | `LH_C(_lh_readInt'_LH_C_0_0, _lh_readInt'_LH_C_1_0) -> 
        (if (isDigit_lh _lh_readInt'_LH_C_0_0) then
          ((readInt'_0 (((_lh_readInt'_arg1_0 * 10) + (int_of_char _lh_readInt'_LH_C_0_0)) - (int_of_char '0'))) _lh_readInt'_LH_C_1_0)
        else
          (let rec s'_0 = ((dropWhile_lh isSpace_lh) (`LH_C(_lh_readInt'_LH_C_0_0, _lh_readInt'_LH_C_1_0))) in
            (`LH_P2(_lh_readInt'_arg1_0, s'_0))))
      | _ -> 
        (let rec s'_1 = ((dropWhile_lh isSpace_lh) _lh_readInt'_arg2_0) in
          (`LH_P2(_lh_readInt'_arg1_0, s'_1))))) in
    ((readInt'_0 0) _lh_readInt_arg1_0));;
let rec join_lh _lh_join_arg1_0 _lh_join_arg2_0 _lh_join_arg3_0 =
  (match _lh_join_arg1_0 with
    | `Empty -> 
      _lh_join_arg3_0
    | _ -> 
      (match _lh_join_arg2_0 with
        | `Empty -> 
          _lh_join_arg3_0
        | _ -> 
          (match _lh_join_arg1_0 with
            | `Leaf(_lh_join_Leaf_0_0, _lh_join_Leaf_1_0) -> 
              (match _lh_join_Leaf_1_0 with
                | `LH_P3(_lh_join_LH_P3_0_0, _lh_join_LH_P3_1_0, _lh_join_LH_P3_2_0) -> 
                  (let rec _lh_matchIdent_5 = ((lookupT_lh _lh_join_LH_P3_2_0) _lh_join_arg2_0) in
                    (match _lh_matchIdent_5 with
                      | `Nothing -> 
                        _lh_join_arg3_0
                      | `Just(_lh_join_Just_0_0) -> 
                        (match _lh_join_Just_0_0 with
                          | `LH_P3(_lh_join_LH_P3_0_1, _lh_join_LH_P3_1_1, _lh_join_LH_P3_2_1) -> 
                            (((insertT_lh _lh_join_LH_P3_2_0) (`LH_P5(_lh_join_LH_P3_0_0, _lh_join_LH_P3_1_0, _lh_join_LH_P3_2_0, _lh_join_LH_P3_0_1, _lh_join_LH_P3_1_1))) _lh_join_arg3_0)
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (match _lh_join_arg1_0 with
                    | `Node(_lh_join_Node_0_0, _lh_join_Node_1_0, _lh_join_Node_2_0) -> 
                      (((join_lh _lh_join_Node_1_0) _lh_join_arg2_0) (((join_lh _lh_join_Node_2_0) _lh_join_arg2_0) _lh_join_arg3_0))
                    | _ -> 
                      (failwith "error")))
            | _ -> 
              (match _lh_join_arg1_0 with
                | `Node(_lh_join_Node_0_1, _lh_join_Node_1_1, _lh_join_Node_2_1) -> 
                  (((join_lh _lh_join_Node_1_1) _lh_join_arg2_0) (((join_lh _lh_join_Node_2_1) _lh_join_arg2_0) _lh_join_arg3_0))
                | _ -> 
                  (failwith "error")))));;
let rec readTree_lh _lh_readTree_arg1_0 _lh_readTree_arg2_0 _lh_readTree_arg3_0 =
  (match _lh_readTree_arg2_0 with
    | `LH_N -> 
      _lh_readTree_arg3_0
    | _ -> 
      (let rec _lh_matchIdent_2 = (readInt_lh _lh_readTree_arg2_0) in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_readTree_LH_P2_0_0, _lh_readTree_LH_P2_1_0) -> 
            (let rec _lh_matchIdent_3 = (readInt_lh _lh_readTree_LH_P2_1_0) in
              (match _lh_matchIdent_3 with
                | `LH_P2(_lh_readTree_LH_P2_0_1, _lh_readTree_LH_P2_1_1) -> 
                  (let rec _lh_matchIdent_4 = (readInt_lh _lh_readTree_LH_P2_1_1) in
                    (match _lh_matchIdent_4 with
                      | `LH_P2(_lh_readTree_LH_P2_0_2, _lh_readTree_LH_P2_1_2) -> 
                        (let rec e_0 = (`LH_P3(_lh_readTree_LH_P2_0_0, _lh_readTree_LH_P2_0_1, _lh_readTree_LH_P2_0_2)) in
                          (let rec k_0 = (_lh_readTree_arg1_0 e_0) in
                            (((readTree_lh _lh_readTree_arg1_0) _lh_readTree_LH_P2_1_2) (((insertT_lh k_0) e_0) _lh_readTree_arg3_0))))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error"))));;
let rec testTreejoin_nofib_lh _lh_testTreejoin_nofib_arg1_0 =
  (let rec c1_0 = lh_large_str_0 in
    (let rec c2_0 = lh_large_str_1 in
      (let rec a_0 = (((readTree_lh (fun x___0 -> 
        (let rec _lh_matchIdent_0 = x___0 in
          (match _lh_matchIdent_0 with
            | `LH_P3(_lh_testTreejoin_nofib_LH_P3_0_0, _lh_testTreejoin_nofib_LH_P3_1_0, _lh_testTreejoin_nofib_LH_P3_2_0) -> 
              _lh_testTreejoin_nofib_LH_P3_0_0
            | _ -> 
              (failwith "error"))))) c1_0) (`Empty)) in
        (let rec b_0 = (((readTree_lh (fun x___1 -> 
          (let rec _lh_matchIdent_1 = x___1 in
            (match _lh_matchIdent_1 with
              | `LH_P3(_lh_testTreejoin_nofib_LH_P3_0_1, _lh_testTreejoin_nofib_LH_P3_1_1, _lh_testTreejoin_nofib_LH_P3_2_1) -> 
                _lh_testTreejoin_nofib_LH_P3_0_1
              | _ -> 
                (failwith "error"))))) c2_0) (`Empty)) in
          (((join_lh a_0) b_0) (`Empty))))));;
end;;

