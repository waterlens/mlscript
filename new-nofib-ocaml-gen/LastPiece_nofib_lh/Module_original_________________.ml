
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________ = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec maxRow_lh =
  8;;
let rec compareIntInt_lh _lh_compareIntInt_arg1_0 _lh_compareIntInt_arg2_0 =
  (match _lh_compareIntInt_arg1_0 with
    | `LH_P2(_lh_compareIntInt_LH_P2_0_0, _lh_compareIntInt_LH_P2_1_0) -> 
      (match _lh_compareIntInt_arg2_0 with
        | `LH_P2(_lh_compareIntInt_LH_P2_0_1, _lh_compareIntInt_LH_P2_1_1) -> 
          (if (_lh_compareIntInt_LH_P2_0_0 > _lh_compareIntInt_LH_P2_0_1) then
            (`GT)
          else
            (if (_lh_compareIntInt_LH_P2_0_0 < _lh_compareIntInt_LH_P2_0_1) then
              (`LT)
            else
              (if (_lh_compareIntInt_LH_P2_1_0 > _lh_compareIntInt_LH_P2_1_1) then
                (`GT)
              else
                (if (_lh_compareIntInt_LH_P2_1_0 < _lh_compareIntInt_LH_P2_1_1) then
                  (`LT)
                else
                  (`EQ)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec insert_lh _lh_insert_arg1_0 _lh_insert_arg2_0 _lh_insert_arg3_0 =
  (match _lh_insert_arg3_0 with
    | `Tip -> 
      (`Bin(1, _lh_insert_arg1_0, _lh_insert_arg2_0, (`Tip), (`Tip)))
    | `Bin(_lh_insert_Bin_0_0, _lh_insert_Bin_1_0, _lh_insert_Bin_2_0, _lh_insert_Bin_3_0, _lh_insert_Bin_4_0) -> 
      let rec balance_0 = (fun _lh_balance_arg1_0 _lh_balance_arg2_0 _lh_balance_arg3_0 _lh_balance_arg4_0 -> 
        (let rec size_0 = (fun p_0 -> 
          (let rec _lh_matchIdent_0 = p_0 in
            (match _lh_matchIdent_0 with
              | `Tip -> 
                0
              | `Bin(_lh_balance_Bin_0_0, _lh_balance_Bin_1_0, _lh_balance_Bin_2_0, _lh_balance_Bin_3_0, _lh_balance_Bin_4_0) -> 
                _lh_balance_Bin_0_0
              | _ -> 
                (failwith "error")))) in
          (let rec sizeL_0 = (size_0 _lh_balance_arg3_0) in
            (let rec sizeR_0 = (size_0 _lh_balance_arg4_0) in
              (let rec sizeX_0 = ((sizeL_0 + sizeR_0) + 1) in
                (if ((sizeL_0 + sizeR_0) <= 1) then
                  (`Bin(sizeX_0, _lh_balance_arg1_0, _lh_balance_arg2_0, _lh_balance_arg3_0, _lh_balance_arg4_0))
                else
                  (if (sizeR_0 >= (4 * sizeL_0)) then
                    ((((rotateL_0 _lh_balance_arg1_0) _lh_balance_arg2_0) _lh_balance_arg3_0) _lh_balance_arg4_0)
                  else
                    (if (sizeL_0 >= (4 * sizeR_0)) then
                      ((((rotateR_0 _lh_balance_arg1_0) _lh_balance_arg2_0) _lh_balance_arg3_0) _lh_balance_arg4_0)
                    else
                      (`Bin(sizeX_0, _lh_balance_arg1_0, _lh_balance_arg2_0, _lh_balance_arg3_0, _lh_balance_arg4_0))))))))))
      and rotateR_0 = (fun _lh_rotateR_arg1_0 _lh_rotateR_arg2_0 _lh_rotateR_arg3_0 _lh_rotateR_arg4_0 -> 
        (match _lh_rotateR_arg3_0 with
          | `Bin(_lh_rotateR_Bin_0_0, _lh_rotateR_Bin_1_0, _lh_rotateR_Bin_2_0, _lh_rotateR_Bin_3_0, _lh_rotateR_Bin_4_0) -> 
            (let rec size_1 = (fun p_1 -> 
              (let rec _lh_matchIdent_1 = p_1 in
                (match _lh_matchIdent_1 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateR_Bin_0_1, _lh_rotateR_Bin_1_1, _lh_rotateR_Bin_2_1, _lh_rotateR_Bin_3_1, _lh_rotateR_Bin_4_1) -> 
                    _lh_rotateR_Bin_0_1
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_1 _lh_rotateR_Bin_4_0) < (2 * (size_1 _lh_rotateR_Bin_3_0))) then
                ((((singleR_0 _lh_rotateR_arg1_0) _lh_rotateR_arg2_0) (`Bin(_lh_rotateR_Bin_0_0, _lh_rotateR_Bin_1_0, _lh_rotateR_Bin_2_0, _lh_rotateR_Bin_3_0, _lh_rotateR_Bin_4_0))) _lh_rotateR_arg4_0)
              else
                ((((doubleR_0 _lh_rotateR_arg1_0) _lh_rotateR_arg2_0) (`Bin(_lh_rotateR_Bin_0_0, _lh_rotateR_Bin_1_0, _lh_rotateR_Bin_2_0, _lh_rotateR_Bin_3_0, _lh_rotateR_Bin_4_0))) _lh_rotateR_arg4_0)))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and singleton_0 = (fun _lh_singleton_arg1_0 _lh_singleton_arg2_0 -> 
        (`Bin(1, _lh_singleton_arg1_0, _lh_singleton_arg2_0, (`Tip), (`Tip))))
      and doubleL_0 = (fun _lh_doubleL_arg1_0 _lh_doubleL_arg2_0 _lh_doubleL_arg3_0 _lh_doubleL_arg4_0 -> 
        (match _lh_doubleL_arg4_0 with
          | `Bin(_lh_doubleL_Bin_0_0, _lh_doubleL_Bin_1_0, _lh_doubleL_Bin_2_0, _lh_doubleL_Bin_3_0, _lh_doubleL_Bin_4_0) -> 
            (match _lh_doubleL_Bin_3_0 with
              | `Bin(_lh_doubleL_Bin_0_1, _lh_doubleL_Bin_1_1, _lh_doubleL_Bin_2_1, _lh_doubleL_Bin_3_1, _lh_doubleL_Bin_4_1) -> 
                (let rec size_2 = (fun p_2 -> 
                  (let rec _lh_matchIdent_2 = p_2 in
                    (match _lh_matchIdent_2 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleL_Bin_0_2, _lh_doubleL_Bin_1_2, _lh_doubleL_Bin_2_2, _lh_doubleL_Bin_3_2, _lh_doubleL_Bin_4_2) -> 
                        _lh_doubleL_Bin_0_2
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_0 = (fun k_0 x_0 l_0 r_0 -> 
                    (`Bin((((size_2 l_0) + (size_2 r_0)) + 1), k_0, x_0, l_0, r_0))) in
                    ((((bin_0 _lh_doubleL_Bin_1_1) _lh_doubleL_Bin_2_1) ((((bin_0 _lh_doubleL_arg1_0) _lh_doubleL_arg2_0) _lh_doubleL_arg3_0) _lh_doubleL_Bin_3_1)) ((((bin_0 _lh_doubleL_Bin_1_0) _lh_doubleL_Bin_2_0) _lh_doubleL_Bin_4_1) _lh_doubleL_Bin_4_0))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_N))))))))))))))))))
      and singleR_0 = (fun _lh_singleR_arg1_0 _lh_singleR_arg2_0 _lh_singleR_arg3_0 _lh_singleR_arg4_0 -> 
        (match _lh_singleR_arg3_0 with
          | `Bin(_lh_singleR_Bin_0_0, _lh_singleR_Bin_1_0, _lh_singleR_Bin_2_0, _lh_singleR_Bin_3_0, _lh_singleR_Bin_4_0) -> 
            (let rec size_3 = (fun p_3 -> 
              (let rec _lh_matchIdent_3 = p_3 in
                (match _lh_matchIdent_3 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleR_Bin_0_1, _lh_singleR_Bin_1_1, _lh_singleR_Bin_2_1, _lh_singleR_Bin_3_1, _lh_singleR_Bin_4_1) -> 
                    _lh_singleR_Bin_0_1
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_1 = (fun k_1 x_1 l_1 r_1 -> 
                (`Bin((((size_3 l_1) + (size_3 r_1)) + 1), k_1, x_1, l_1, r_1))) in
                ((((bin_1 _lh_singleR_Bin_1_0) _lh_singleR_Bin_2_0) _lh_singleR_Bin_3_0) ((((bin_1 _lh_singleR_arg1_0) _lh_singleR_arg2_0) _lh_singleR_Bin_4_0) _lh_singleR_arg4_0))))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and doubleR_0 = (fun _lh_doubleR_arg1_0 _lh_doubleR_arg2_0 _lh_doubleR_arg3_0 _lh_doubleR_arg4_0 -> 
        (match _lh_doubleR_arg3_0 with
          | `Bin(_lh_doubleR_Bin_0_0, _lh_doubleR_Bin_1_0, _lh_doubleR_Bin_2_0, _lh_doubleR_Bin_3_0, _lh_doubleR_Bin_4_0) -> 
            (match _lh_doubleR_Bin_4_0 with
              | `Bin(_lh_doubleR_Bin_0_1, _lh_doubleR_Bin_1_1, _lh_doubleR_Bin_2_1, _lh_doubleR_Bin_3_1, _lh_doubleR_Bin_4_1) -> 
                (let rec size_4 = (fun p_4 -> 
                  (let rec _lh_matchIdent_4 = p_4 in
                    (match _lh_matchIdent_4 with
                      | `Tip -> 
                        0
                      | `Bin(_lh_doubleR_Bin_0_2, _lh_doubleR_Bin_1_2, _lh_doubleR_Bin_2_2, _lh_doubleR_Bin_3_2, _lh_doubleR_Bin_4_2) -> 
                        _lh_doubleR_Bin_0_2
                      | _ -> 
                        (failwith "error")))) in
                  (let rec bin_2 = (fun k_2 x_2 l_2 r_2 -> 
                    (`Bin((((size_4 l_2) + (size_4 r_2)) + 1), k_2, x_2, l_2, r_2))) in
                    ((((bin_2 _lh_doubleR_Bin_1_1) _lh_doubleR_Bin_2_1) ((((bin_2 _lh_doubleR_Bin_1_0) _lh_doubleR_Bin_2_0) _lh_doubleR_Bin_3_0) _lh_doubleR_Bin_3_1)) ((((bin_2 _lh_doubleR_arg1_0) _lh_doubleR_arg2_0) _lh_doubleR_Bin_4_1) _lh_doubleR_arg4_0))))
              | _ -> 
                ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N)))))))))))))))))
          | _ -> 
            ((failwith "error") (`LH_C('d', (`LH_C('o', (`LH_C('u', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('R', (`LH_N))))))))))))))))))
      and singleL_0 = (fun _lh_singleL_arg1_0 _lh_singleL_arg2_0 _lh_singleL_arg3_0 _lh_singleL_arg4_0 -> 
        (match _lh_singleL_arg4_0 with
          | `Bin(_lh_singleL_Bin_0_0, _lh_singleL_Bin_1_0, _lh_singleL_Bin_2_0, _lh_singleL_Bin_3_0, _lh_singleL_Bin_4_0) -> 
            (let rec size_5 = (fun p_5 -> 
              (let rec _lh_matchIdent_5 = p_5 in
                (match _lh_matchIdent_5 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_singleL_Bin_0_1, _lh_singleL_Bin_1_1, _lh_singleL_Bin_2_1, _lh_singleL_Bin_3_1, _lh_singleL_Bin_4_1) -> 
                    _lh_singleL_Bin_0_1
                  | _ -> 
                    (failwith "error")))) in
              (let rec bin_3 = (fun k_3 x_3 l_3 r_3 -> 
                (`Bin((((size_5 l_3) + (size_5 r_3)) + 1), k_3, x_3, l_3, r_3))) in
                ((((bin_3 _lh_singleL_Bin_1_0) _lh_singleL_Bin_2_0) ((((bin_3 _lh_singleL_arg1_0) _lh_singleL_arg2_0) _lh_singleL_arg3_0) _lh_singleL_Bin_3_0)) _lh_singleL_Bin_4_0)))
          | `Tip -> 
            ((failwith "error") (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('l', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      and rotateL_0 = (fun _lh_rotateL_arg1_0 _lh_rotateL_arg2_0 _lh_rotateL_arg3_0 _lh_rotateL_arg4_0 -> 
        (match _lh_rotateL_arg4_0 with
          | `Bin(_lh_rotateL_Bin_0_0, _lh_rotateL_Bin_1_0, _lh_rotateL_Bin_2_0, _lh_rotateL_Bin_3_0, _lh_rotateL_Bin_4_0) -> 
            (let rec size_6 = (fun p_6 -> 
              (let rec _lh_matchIdent_6 = p_6 in
                (match _lh_matchIdent_6 with
                  | `Tip -> 
                    0
                  | `Bin(_lh_rotateL_Bin_0_1, _lh_rotateL_Bin_1_1, _lh_rotateL_Bin_2_1, _lh_rotateL_Bin_3_1, _lh_rotateL_Bin_4_1) -> 
                    _lh_rotateL_Bin_0_1
                  | _ -> 
                    (failwith "error")))) in
              (if ((size_6 _lh_rotateL_Bin_3_0) < (2 * (size_6 _lh_rotateL_Bin_4_0))) then
                ((((singleL_0 _lh_rotateL_arg1_0) _lh_rotateL_arg2_0) _lh_rotateL_arg3_0) (`Bin(_lh_rotateL_Bin_0_0, _lh_rotateL_Bin_1_0, _lh_rotateL_Bin_2_0, _lh_rotateL_Bin_3_0, _lh_rotateL_Bin_4_0)))
              else
                ((((doubleL_0 _lh_rotateL_arg1_0) _lh_rotateL_arg2_0) _lh_rotateL_arg3_0) (`Bin(_lh_rotateL_Bin_0_0, _lh_rotateL_Bin_1_0, _lh_rotateL_Bin_2_0, _lh_rotateL_Bin_3_0, _lh_rotateL_Bin_4_0)))))
          | `Tip -> 
            ((failwith "error") (`LH_C('r', (`LH_C('o', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('L', (`LH_C(' ', (`LH_C('T', (`LH_C('i', (`LH_C('p', (`LH_N))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))
      in (let rec _lh_matchIdent_7 = ((compareIntInt_lh _lh_insert_arg1_0) _lh_insert_Bin_1_0) in
        (match _lh_matchIdent_7 with
          | `LT -> 
            ((((balance_0 _lh_insert_Bin_1_0) _lh_insert_Bin_2_0) (((insert_lh _lh_insert_arg1_0) _lh_insert_arg2_0) _lh_insert_Bin_3_0)) _lh_insert_Bin_4_0)
          | `GT -> 
            ((((balance_0 _lh_insert_Bin_1_0) _lh_insert_Bin_2_0) _lh_insert_Bin_3_0) (((insert_lh _lh_insert_arg1_0) _lh_insert_arg2_0) _lh_insert_Bin_4_0))
          | `EQ -> 
            (`Bin(_lh_insert_Bin_0_0, _lh_insert_arg1_0, _lh_insert_arg2_0, _lh_insert_Bin_3_0, _lh_insert_Bin_4_0))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec extend_lh _lh_extend_arg1_0 _lh_extend_arg2_0 _lh_extend_arg3_0 =
  (((insert_lh _lh_extend_arg2_0) _lh_extend_arg3_0) _lh_extend_arg1_0);;
let rec mapLookup_lh _lh_mapLookup_arg1_0 _lh_mapLookup_arg2_0 =
  (match _lh_mapLookup_arg2_0 with
    | `Tip -> 
      (`Nothing)
    | `Bin(_lh_mapLookup_Bin_0_0, _lh_mapLookup_Bin_1_0, _lh_mapLookup_Bin_2_0, _lh_mapLookup_Bin_3_0, _lh_mapLookup_Bin_4_0) -> 
      (let rec _lh_matchIdent_2_7 = ((compareIntInt_lh _lh_mapLookup_arg1_0) _lh_mapLookup_Bin_1_0) in
        (match _lh_matchIdent_2_7 with
          | `LT -> 
            ((mapLookup_lh _lh_mapLookup_arg1_0) _lh_mapLookup_Bin_3_0)
          | `GT -> 
            ((mapLookup_lh _lh_mapLookup_arg1_0) _lh_mapLookup_Bin_4_0)
          | `EQ -> 
            (`Just(_lh_mapLookup_Bin_2_0))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec check_lh _lh_check_arg1_0 _lh_check_arg2_0 =
  ((mapLookup_lh _lh_check_arg2_0) _lh_check_arg1_0);;
let rec maxCol_lh =
  8;;
let rec extend_maybe_lh _lh_extend_maybe_arg1_0 _lh_extend_maybe_arg2_0 _lh_extend_maybe_arg3_0 =
  (match _lh_extend_maybe_arg2_0 with
    | `LH_P2(_lh_extend_maybe_LH_P2_0_0, _lh_extend_maybe_LH_P2_1_0) -> 
      (if (((_lh_extend_maybe_LH_P2_0_0 > maxRow_lh) || (_lh_extend_maybe_LH_P2_1_0 < 1)) || (_lh_extend_maybe_LH_P2_1_0 > maxCol_lh)) then
        (`Nothing)
      else
        (let rec _lh_matchIdent_9 = ((check_lh _lh_extend_maybe_arg1_0) (`LH_P2(_lh_extend_maybe_LH_P2_0_0, _lh_extend_maybe_LH_P2_1_0))) in
          (match _lh_matchIdent_9 with
            | `Just(_lh_extend_maybe_Just_0_0) -> 
              (`Nothing)
            | `Nothing -> 
              (`Just((((extend_lh _lh_extend_maybe_arg1_0) (`LH_P2(_lh_extend_maybe_LH_P2_0_0, _lh_extend_maybe_LH_P2_1_0))) _lh_extend_maybe_arg3_0)))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec addIntInt_lh _lh_addIntInt_arg1_0 _lh_addIntInt_arg2_0 =
  (match _lh_addIntInt_arg1_0 with
    | `LH_P2(_lh_addIntInt_LH_P2_0_0, _lh_addIntInt_LH_P2_1_0) -> 
      (match _lh_addIntInt_arg2_0 with
        | `LH_P2(_lh_addIntInt_LH_P2_0_1, _lh_addIntInt_LH_P2_1_1) -> 
          (`LH_P2((_lh_addIntInt_LH_P2_0_0 + _lh_addIntInt_LH_P2_0_1), (_lh_addIntInt_LH_P2_1_0 + _lh_addIntInt_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec fit_lh _lh_fit_arg1_0 _lh_fit_arg2_0 _lh_fit_arg3_0 _lh_fit_arg4_0 =
  (match _lh_fit_arg4_0 with
    | `LH_N -> 
      (`Just((((extend_lh _lh_fit_arg1_0) _lh_fit_arg2_0) _lh_fit_arg3_0)))
    | `LH_C(_lh_fit_LH_C_0_0, _lh_fit_LH_C_1_0) -> 
      (let rec _lh_matchIdent_8 = (((extend_maybe_lh _lh_fit_arg1_0) ((addIntInt_lh _lh_fit_arg2_0) _lh_fit_LH_C_0_0)) _lh_fit_arg3_0) in
        (match _lh_matchIdent_8 with
          | `Just(_lh_fit_Just_0_0) -> 
            ((((fit_lh _lh_fit_Just_0_0) _lh_fit_arg2_0) _lh_fit_arg3_0) _lh_fit_LH_C_1_0)
          | `Nothing -> 
            (`Nothing)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec fromJust_lh _lh_fromJust_arg1_0 =
  (match _lh_fromJust_arg1_0 with
    | `Just(_lh_fromJust_Just_0_0) -> 
      _lh_fromJust_Just_0_0
    | _ -> 
      (failwith "error"));;
let rec indent_lh _lh_indent_arg1_0 =
  (if (_lh_indent_arg1_0 <= 0) then
    (`LH_N)
  else
    (`LH_C(' ', (indent_lh (_lh_indent_arg1_0 - 1)))));;
let rec flip_lh _lh_flip_arg1_0 =
  (match _lh_flip_arg1_0 with
    | `Male -> 
      (`Female)
    | `Female -> 
      (`Male)
    | _ -> 
      (failwith "error"));;
let rec pickOne_lh _lh_pickOne_arg1_0 =
  (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
    (match _lh_go_arg2_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
        (`LH_C((`LH_P2(_lh_go_LH_C_0_0, (_lh_go_arg1_0 _lh_go_LH_C_1_0))), ((go_0 (fun _lh_funcomp_x_4 -> 
          ((fun p_1_1 -> 
            (`LH_C(_lh_go_LH_C_0_0, p_1_1))) (_lh_go_arg1_0 _lh_funcomp_x_4)))) _lh_go_LH_C_1_0)))
      | _ -> 
        (failwith "error"))) in
    ((go_0 (fun x_6 -> 
      x_6)) _lh_pickOne_arg1_0));;
let rec next_lh _lh_next_arg1_0 =
  (match _lh_next_arg1_0 with
    | `LH_P2(_lh_next_LH_P2_0_0, _lh_next_LH_P2_1_0) -> 
      (`LH_P2(_lh_next_LH_P2_0_0, (_lh_next_LH_P2_1_0 + 1)))
    | _ -> 
      (failwith "error"));;
let rec isJust_lh _lh_isJust_arg1_0 =
  (match _lh_isJust_arg1_0 with
    | `Just(_lh_isJust_Just_0_0) -> 
      true
    | `Nothing -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mapMaybe_lh _lh_mapMaybe_arg1_0 _lh_mapMaybe_arg2_0 =
  (match _lh_mapMaybe_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_mapMaybe_LH_C_0_0, _lh_mapMaybe_LH_C_1_0) -> 
      (let rec _lh_matchIdent_1_1 = (_lh_mapMaybe_arg1_0 _lh_mapMaybe_LH_C_0_0) in
        (match _lh_matchIdent_1_1 with
          | `Nothing -> 
            ((mapMaybe_lh _lh_mapMaybe_arg1_0) _lh_mapMaybe_LH_C_1_0)
          | `Just(_lh_mapMaybe_Just_0_0) -> 
            (`LH_C(_lh_mapMaybe_Just_0_0, ((mapMaybe_lh _lh_mapMaybe_arg1_0) _lh_mapMaybe_LH_C_1_0)))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec search_lh _lh_search_arg1_0 _lh_search_arg2_0 _lh_search_arg3_0 _lh_search_arg4_0 =
  (match _lh_search_arg1_0 with
    | `LH_P2(_lh_search_LH_P2_0_0, _lh_search_LH_P2_1_0) -> 
      (match _lh_search_arg4_0 with
        | `LH_N -> 
          (`Soln(_lh_search_arg3_0))
        | _ -> 
          (if (_lh_search_LH_P2_1_0 = (maxCol_lh + 1)) then
            ((((search_lh (`LH_P2((_lh_search_LH_P2_0_0 + 1), 1))) (flip_lh _lh_search_arg2_0)) _lh_search_arg3_0) _lh_search_arg4_0)
          else
            (if (isJust_lh ((check_lh _lh_search_arg3_0) (`LH_P2(_lh_search_LH_P2_0_0, _lh_search_LH_P2_1_0)))) then
              ((((search_lh (next_lh (`LH_P2(_lh_search_LH_P2_0_0, _lh_search_LH_P2_1_0)))) (flip_lh _lh_search_arg2_0)) _lh_search_arg3_0) _lh_search_arg4_0)
            else
              (let rec choices_0 = (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                (match _lh_listcomp_fun_para_0 with
                  | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                    (match _lh_listcomp_fun_ls_h_0 with
                      | `LH_P2(_lh_search_LH_P2_0_1, _lh_search_LH_P2_1_1) -> 
                        (match _lh_search_LH_P2_0_1 with
                          | `P(_lh_search_P_0_0, _lh_search_P_1_0, _lh_search_P_2_0) -> 
                            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                              (match _lh_listcomp_fun_para_1 with
                                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                                  (`LH_C((`LH_P3(_lh_search_P_0_0, _lh_listcomp_fun_ls_h_1, _lh_search_LH_P2_1_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                                | `LH_N -> 
                                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                              (_lh_listcomp_fun_1 (let rec _lh_matchIdent_2_8 = _lh_search_arg2_0 in
                                (match _lh_matchIdent_2_8 with
                                  | `Male -> 
                                    _lh_search_P_1_0
                                  | `Female -> 
                                    _lh_search_P_2_0
                                  | _ -> 
                                    (failwith "error")))))
                          | _ -> 
                            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                      | _ -> 
                        (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_0 (pickOne_lh _lh_search_arg4_0))) in
                (let rec _lh_matchIdent_2_9 = ((mapMaybe_lh (((try_lh (`LH_P2(_lh_search_LH_P2_0_0, _lh_search_LH_P2_1_0))) _lh_search_arg2_0) _lh_search_arg3_0)) choices_0) in
                  (match _lh_matchIdent_2_9 with
                    | `LH_N -> 
                      (`Fail(_lh_search_arg3_0, (`LH_P2(_lh_search_LH_P2_0_0, _lh_search_LH_P2_1_0))))
                    | _ -> 
                      (`Choose(_lh_matchIdent_2_9))))))))
    | _ -> 
      (failwith "error"))
and
try_lh _lh_try_arg1_0 _lh_try_arg2_0 _lh_try_arg3_0 _lh_try_arg4_0 =
  (match _lh_try_arg4_0 with
    | `LH_P3(_lh_try_LH_P3_0_0, _lh_try_LH_P3_1_0, _lh_try_LH_P3_2_0) -> 
      (let rec _lh_matchIdent_1_0 = ((((fit_lh _lh_try_arg3_0) _lh_try_arg1_0) _lh_try_LH_P3_0_0) _lh_try_LH_P3_1_0) in
        (match _lh_matchIdent_1_0 with
          | `Just(_lh_try_Just_0_0) -> 
            (`Just(((((search_lh (next_lh _lh_try_arg1_0)) (flip_lh _lh_try_arg2_0)) _lh_try_Just_0_0) _lh_try_LH_P3_2_0)))
          | `Nothing -> 
            (`Nothing)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh t_2))
    | `LH_N -> 
      0);;
let rec myMin_lh _lh_myMin_arg1_0 _lh_myMin_arg2_0 =
  (if (_lh_myMin_arg1_0 > _lh_myMin_arg2_0) then
    _lh_myMin_arg1_0
  else
    _lh_myMin_arg2_0);;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr_lh f_1) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec nPiece_lh _lh_nPiece_arg1_0 =
  (`P('n', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_C((`LH_P2(2, (0 - 2))), (`LH_N))))))))), (`LH_N))))), (`LH_N)));;
let rec gPiece_lh _lh_gPiece_arg1_0 =
  (`P('g', (`LH_N), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(1, 3)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_C((`LH_P2(3, (0 - 1))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(1, 3)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_C((`LH_P2(3, (0 - 1))), (`LH_N))))))))), (`LH_N)))))))))));;
let rec cPiece_lh _lh_cPiece_arg1_0 =
  (`P('c', (`LH_N), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, 0)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 0)), (`LH_N))))))), (`LH_N)))))))))));;
let rec bPiece_lh _lh_bPiece_arg1_0 =
  (`P('b', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_N))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_N)))));;
let rec hPiece_lh _lh_hPiece_arg1_0 =
  (`P('h', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 2))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))))), (`LH_N)))));;
let rec iPiece_lh _lh_iPiece_arg1_0 =
  (`P('i', (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_N))))))))), (`LH_N)))));;
let rec mPiece_lh _lh_mPiece_arg1_0 =
  (`P('m', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_N))))))))), (`LH_N))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 3)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(3, (0 - 1))), (`LH_N))))))))), (`LH_N)))))));;
let rec ePiece_lh _lh_ePiece_arg1_0 =
  (`P('e', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))), (`LH_N))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))), (`LH_N)))))));;
let rec jPiece_lh _lh_jPiece_arg1_0 =
  (`P('j', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, (0 - 2))), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_N)))));;
let rec kPiece_lh _lh_kPiece_arg1_0 =
  (`P('k', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))))), (`LH_N))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_C((`LH_P2(2, 2)), (`LH_N))))))))), (`LH_N)))));;
let rec fPiece_lh _lh_fPiece_arg1_0 =
  (`P('f', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_C((`LH_P2(1, (0 - 3))), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(3, 1)), (`LH_N))))))))), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 0)), (`LH_N))))))))), (`LH_N)))));;
let rec dPiece_lh _lh_dPiece_arg1_0 =
  (`P('d', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(2, 1)), (`LH_N))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, (0 - 2))), (`LH_N))))))), (`LH_N))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(2, 1)), (`LH_N))))))), (`LH_N)))));;
let rec lPiece_lh _lh_lPiece_arg1_0 =
  (`P('l', (`LH_C((`LH_C((`LH_P2(0, 1)), (`LH_C((`LH_P2(0, 2)), (`LH_C((`LH_P2(0, 3)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(2, (0 - 1))), (`LH_N))))))))), (`LH_N))))), (`LH_C((`LH_C((`LH_P2(1, (0 - 1))), (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_C((`LH_P2(1, 2)), (`LH_N))))))))), (`LH_C((`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(2, 0)), (`LH_C((`LH_P2(3, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))))), (`LH_N)))))));;
let rec initialPieces_lh _lh_initialPieces_arg1_0 =
  (`LH_C((bPiece_lh 0), (`LH_C((cPiece_lh 0), (`LH_C((dPiece_lh 0), (`LH_C((ePiece_lh 0), (`LH_C((fPiece_lh 0), (`LH_C((gPiece_lh 0), (`LH_C((hPiece_lh 0), (`LH_C((iPiece_lh 0), (`LH_C((jPiece_lh 0), (`LH_C((kPiece_lh 0), (`LH_C((lPiece_lh 0), (`LH_C((mPiece_lh 0), (`LH_C((nPiece_lh 0), (`LH_N)))))))))))))))))))))))))));;
let rec emptyBoard_lh =
  (`Tip);;
let rec testLastPiece_nofib_lh _lh_testLastPiece_nofib_arg1_0 =
  let rec nonEmptySet_0 = (fun _lh_nonEmptySet_arg1_0 -> 
    (match _lh_nonEmptySet_arg1_0 with
      | `NoDoc -> 
        false
      | `Union(_lh_nonEmptySet_Union_0_0, _lh_nonEmptySet_Union_1_0) -> 
        true
      | `Empty -> 
        true
      | `NilAbove(_lh_nonEmptySet_NilAbove_0_0) -> 
        true
      | `TextBeside(_lh_nonEmptySet_TextBeside_0_0, _lh_nonEmptySet_TextBeside_1_0) -> 
        (nonEmptySet_0 _lh_nonEmptySet_TextBeside_1_0)
      | `Nest(_lh_nonEmptySet_Nest_0_0, _lh_nonEmptySet_Nest_1_0) -> 
        (nonEmptySet_0 _lh_nonEmptySet_Nest_1_0)
      | `Above(_lh_nonEmptySet_Above_0_0, _lh_nonEmptySet_Above_1_0, _lh_nonEmptySet_Above_2_0) -> 
        ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('E', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C('S', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))
      | `Beside(_lh_nonEmptySet_Beside_0_0, _lh_nonEmptySet_Beside_1_0, _lh_nonEmptySet_Beside_2_0) -> 
        ((failwith "error") (`LH_C('n', (`LH_C('o', (`LH_C('n', (`LH_C('E', (`LH_C('m', (`LH_C('p', (`LH_C('t', (`LH_C('y', (`LH_C('S', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
      | _ -> 
        (failwith "error")))
  and vcat_0 = (fun _lh_vcat_arg1_0 -> 
    ((fun _lh_funcomp_x_0 -> 
      ((fun _lh_funcomp_x_1 -> 
        (snd_lh (reduceVert_0 _lh_funcomp_x_1))) (((foldr_lh (fun p_7 q_0 -> 
        (`Above(p_7, false, q_0)))) (`Empty)) _lh_funcomp_x_0))) _lh_vcat_arg1_0))
  and fullRenderAnn_0 = (fun _lh_fullRenderAnn_arg1_0 _lh_fullRenderAnn_arg2_0 _lh_fullRenderAnn_arg3_0 _lh_fullRenderAnn_arg4_0 _lh_fullRenderAnn_arg5_0 _lh_fullRenderAnn_arg6_0 -> 
    (match _lh_fullRenderAnn_arg1_0 with
      | `OneLineMode -> 
        (((((easyDisplay_0 spaceText_0) (fun _dummy_0 y_0 -> 
          y_0)) _lh_fullRenderAnn_arg4_0) _lh_fullRenderAnn_arg5_0) (reduceDoc_0 _lh_fullRenderAnn_arg6_0))
      | `LeftMode -> 
        (((((easyDisplay_0 nlText_0) first_0) _lh_fullRenderAnn_arg4_0) _lh_fullRenderAnn_arg5_0) (reduceDoc_0 _lh_fullRenderAnn_arg6_0))
      | _ -> 
        (let rec ribbonLen_0 = (int_of_float (ceil ((float_of_int _lh_fullRenderAnn_arg2_0) /. _lh_fullRenderAnn_arg3_0))) in
          (let rec bestLineLen_0 = (let rec _lh_matchIdent_1_2 = _lh_fullRenderAnn_arg1_0 in
            (match _lh_matchIdent_1_2 with
              | `ZigZagMode -> 
                2147483647
              | _ -> 
                _lh_fullRenderAnn_arg2_0)) in
            (let rec doc'_0 = (((best_0 bestLineLen_0) ribbonLen_0) (reduceDoc_0 _lh_fullRenderAnn_arg6_0)) in
              ((((((displayDoc_0 _lh_fullRenderAnn_arg1_0) _lh_fullRenderAnn_arg2_0) ribbonLen_0) _lh_fullRenderAnn_arg4_0) _lh_fullRenderAnn_arg5_0) doc'_0))))))
  and above_0 = (fun _lh_above_arg1_0 _lh_above_arg2_0 _lh_above_arg3_0 -> 
    (match _lh_above_arg1_0 with
      | `Above(_lh_above_Above_0_0, _lh_above_Above_1_0, _lh_above_Above_2_0) -> 
        (((above_0 _lh_above_Above_0_0) _lh_above_Above_1_0) (((above_0 _lh_above_Above_2_0) _lh_above_arg2_0) _lh_above_arg3_0))
      | `Beside(_lh_above_Beside_0_0, _lh_above_Beside_1_0, _lh_above_Beside_2_0) -> 
        ((((aboveNest_0 (reduceDoc_0 (`Beside(_lh_above_Beside_0_0, _lh_above_Beside_1_0, _lh_above_Beside_2_0)))) _lh_above_arg2_0) 0) (reduceDoc_0 _lh_above_arg3_0))
      | _ -> 
        ((((aboveNest_0 _lh_above_arg1_0) _lh_above_arg2_0) 0) (reduceDoc_0 _lh_above_arg3_0))))
  and nicest1_0 = (fun _lh_nicest1_arg1_0 _lh_nicest1_arg2_0 _lh_nicest1_arg3_0 _lh_nicest1_arg4_0 _lh_nicest1_arg5_0 -> 
    (if ((fits_0 (((myMin_lh _lh_nicest1_arg1_0) _lh_nicest1_arg2_0) - _lh_nicest1_arg3_0)) _lh_nicest1_arg4_0) then
      _lh_nicest1_arg4_0
    else
      _lh_nicest1_arg5_0))
  and hcat_0 = (fun _lh_hcat_arg1_0 -> 
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (snd_lh (reduceHoriz_0 _lh_funcomp_x_3))) (((foldr_lh (fun p_8 q_1 -> 
        (`Beside(p_8, false, q_1)))) (`Empty)) _lh_funcomp_x_2))) _lh_hcat_arg1_0))
  and displayBoard_0 = (fun _lh_displayBoard_arg1_0 -> 
    (let rec sq_0 = (fun n_0 col_0 -> 
      (let rec _lh_matchIdent_1_3 = ((check_lh _lh_displayBoard_arg1_0) (`LH_P2(n_0, col_0))) in
        (match _lh_matchIdent_1_3 with
          | `Just(_lh_displayBoard_Just_0_0) -> 
            (char_0 _lh_displayBoard_Just_0_0)
          | `Nothing -> 
            (char_0 '.')
          | _ -> 
            (failwith "error")))) in
      (let rec row_0 = (fun n_1 -> 
        (hcat_0 ((map_lh (sq_0 n_1)) ((enumFromTo_lh 1) maxCol_lh)))) in
        (((above__0 (vcat_0 ((map_lh row_0) ((enumFromTo_lh 1) maxRow_lh)))) false) (text_0 (`LH_N))))))
  and annotSize_0 = (fun _lh_annotSize_arg1_0 -> 
    (match _lh_annotSize_arg1_0 with
      | `NoAnnot(_lh_annotSize_NoAnnot_0_0, _lh_annotSize_NoAnnot_1_0) -> 
        _lh_annotSize_NoAnnot_1_0
      | _ -> 
        0))
  and reduceHoriz_0 = (fun _lh_reduceHoriz_arg1_0 -> 
    (match _lh_reduceHoriz_arg1_0 with
      | `Beside(_lh_reduceHoriz_Beside_0_0, _lh_reduceHoriz_Beside_1_0, _lh_reduceHoriz_Beside_2_0) -> 
        ((((eliminateEmpty_0 (fun a_1 b_1 c_0 -> 
          (`Beside(a_1, b_1, c_0)))) (snd_lh (reduceHoriz_0 _lh_reduceHoriz_Beside_0_0))) _lh_reduceHoriz_Beside_1_0) (reduceHoriz_0 _lh_reduceHoriz_Beside_2_0))
      | _ -> 
        (`LH_P2((`NotEmpty), _lh_reduceHoriz_arg1_0))))
  and beside_0 = (fun _lh_beside_arg1_0 _lh_beside_arg2_0 _lh_beside_arg3_0 -> 
    (match _lh_beside_arg1_0 with
      | `NoDoc -> 
        (`NoDoc)
      | `Union(_lh_beside_Union_0_0, _lh_beside_Union_1_0) -> 
        (`Union((((beside_0 _lh_beside_Union_0_0) _lh_beside_arg2_0) _lh_beside_arg3_0), (((beside_0 _lh_beside_Union_1_0) _lh_beside_arg2_0) _lh_beside_arg3_0)))
      | `Empty -> 
        _lh_beside_arg3_0
      | `Nest(_lh_beside_Nest_0_0, _lh_beside_Nest_1_0) -> 
        (`Nest(_lh_beside_Nest_0_0, (((beside_0 _lh_beside_Nest_1_0) _lh_beside_arg2_0) _lh_beside_arg3_0)))
      | `Beside(_lh_beside_Beside_0_0, _lh_beside_Beside_1_0, _lh_beside_Beside_2_0) -> 
        (if (_lh_beside_Beside_1_0 = _lh_beside_arg2_0) then
          (((beside_0 _lh_beside_Beside_0_0) _lh_beside_Beside_1_0) (((beside_0 _lh_beside_Beside_2_0) _lh_beside_arg2_0) _lh_beside_arg3_0))
        else
          (((beside_0 (reduceDoc_0 (`Beside(_lh_beside_Beside_0_0, _lh_beside_Beside_1_0, _lh_beside_Beside_2_0)))) _lh_beside_arg2_0) _lh_beside_arg3_0))
      | `Above(_lh_beside_Above_0_0, _lh_beside_Above_1_0, _lh_beside_Above_2_0) -> 
        (let rec d_0 = (reduceDoc_0 (`Above(_lh_beside_Above_0_0, _lh_beside_Above_1_0, _lh_beside_Above_2_0))) in
          (((beside_0 d_0) _lh_beside_arg2_0) _lh_beside_arg3_0))
      | `NilAbove(_lh_beside_NilAbove_0_0) -> 
        (`NilAbove((((beside_0 _lh_beside_NilAbove_0_0) _lh_beside_arg2_0) _lh_beside_arg3_0)))
      | `TextBeside(_lh_beside_TextBeside_0_0, _lh_beside_TextBeside_1_0) -> 
        (let rec rest_0 = (let rec _lh_matchIdent_1_4 = _lh_beside_TextBeside_1_0 in
          (match _lh_matchIdent_1_4 with
            | `Empty -> 
              ((nilBeside_0 _lh_beside_arg2_0) _lh_beside_arg3_0)
            | _ -> 
              (((beside_0 _lh_beside_TextBeside_1_0) _lh_beside_arg2_0) _lh_beside_arg3_0))) in
          (`TextBeside(_lh_beside_TextBeside_0_0, rest_0)))
      | _ -> 
        (failwith "error")))
  and eliminateEmpty_0 = (fun _lh_eliminateEmpty_arg1_0 _lh_eliminateEmpty_arg2_0 _lh_eliminateEmpty_arg3_0 _lh_eliminateEmpty_arg4_0 -> 
    (match _lh_eliminateEmpty_arg2_0 with
      | `Empty -> 
        _lh_eliminateEmpty_arg4_0
      | _ -> 
        (`LH_P2((`NotEmpty), (let rec _lh_matchIdent_1_5 = _lh_eliminateEmpty_arg4_0 in
          (match _lh_matchIdent_1_5 with
            | `LH_P2(_lh_eliminateEmpty_LH_P2_0_0, _lh_eliminateEmpty_LH_P2_1_0) -> 
              (match _lh_eliminateEmpty_LH_P2_0_0 with
                | `NotEmpty -> 
                  (((_lh_eliminateEmpty_arg1_0 _lh_eliminateEmpty_arg2_0) _lh_eliminateEmpty_arg3_0) _lh_eliminateEmpty_LH_P2_1_0)
                | `IsEmpty -> 
                  _lh_eliminateEmpty_arg2_0
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))))))
  and reduceVert_0 = (fun _lh_reduceVert_arg1_0 -> 
    (match _lh_reduceVert_arg1_0 with
      | `Above(_lh_reduceVert_Above_0_0, _lh_reduceVert_Above_1_0, _lh_reduceVert_Above_2_0) -> 
        ((((eliminateEmpty_0 (fun a_2 b_2 c_1 -> 
          (`Above(a_2, b_2, c_1)))) (snd_lh (reduceVert_0 _lh_reduceVert_Above_0_0))) _lh_reduceVert_Above_1_0) (reduceVert_0 _lh_reduceVert_Above_2_0))
      | _ -> 
        (`LH_P2((`NotEmpty), _lh_reduceVert_arg1_0))))
  and nilAboveNest_0 = (fun _lh_nilAboveNest_arg1_0 _lh_nilAboveNest_arg2_0 _lh_nilAboveNest_arg3_0 -> 
    (match _lh_nilAboveNest_arg3_0 with
      | `Empty -> 
        (`Empty)
      | `Nest(_lh_nilAboveNest_Nest_0_0, _lh_nilAboveNest_Nest_1_0) -> 
        (((nilAboveNest_0 _lh_nilAboveNest_arg1_0) (_lh_nilAboveNest_arg2_0 + _lh_nilAboveNest_Nest_0_0)) _lh_nilAboveNest_Nest_1_0)
      | _ -> 
        (if ((not _lh_nilAboveNest_arg1_0) && (_lh_nilAboveNest_arg2_0 > 0)) then
          (`TextBeside((`NoAnnot((`Str((indent_lh _lh_nilAboveNest_arg2_0))), _lh_nilAboveNest_arg2_0)), _lh_nilAboveNest_arg3_0))
        else
          (`NilAbove(((mkNest_0 _lh_nilAboveNest_arg2_0) _lh_nilAboveNest_arg3_0))))))
  and spaceText_0 = (`NoAnnot((`Chr(' ')), 1))
  and fullRender_0 = (fun _lh_fullRender_arg1_0 _lh_fullRender_arg2_0 _lh_fullRender_arg3_0 _lh_fullRender_arg4_0 -> 
    (let rec annTxt_0 = (fun p_9 -> 
      (let rec _lh_matchIdent_1_6 = p_9 in
        (match _lh_matchIdent_1_6 with
          | `NoAnnot(_lh_fullRender_NoAnnot_0_0, _lh_fullRender_NoAnnot_1_0) -> 
            (_lh_fullRender_arg4_0 _lh_fullRender_NoAnnot_0_0)
          | _ -> 
            (fun x_4 -> 
              x_4)))) in
      ((((fullRenderAnn_0 _lh_fullRender_arg1_0) _lh_fullRender_arg2_0) _lh_fullRender_arg3_0) annTxt_0)))
  and nlText_0 = (`NoAnnot((`Chr('|')), 1))
  and easyDisplay_0 = (fun _lh_easyDisplay_arg1_0 _lh_easyDisplay_arg2_0 _lh_easyDisplay_arg3_0 _lh_easyDisplay_arg4_0 -> 
    (let rec lay_0 = (fun x_5 -> 
      (let rec _lh_matchIdent_1_7 = x_5 in
        (match _lh_matchIdent_1_7 with
          | `NoDoc -> 
            ((failwith "error") (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('y', (`LH_C('D', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(':', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('D', (`LH_C('o', (`LH_C('c', (`LH_N))))))))))))))))))))))))))))))))))))))
          | `Union(_lh_easyDisplay_Union_0_0, _lh_easyDisplay_Union_1_0) -> 
            (lay_0 ((_lh_easyDisplay_arg2_0 _lh_easyDisplay_Union_0_0) _lh_easyDisplay_Union_1_0))
          | `Nest(_lh_easyDisplay_Nest_0_0, _lh_easyDisplay_Nest_1_0) -> 
            (lay_0 _lh_easyDisplay_Nest_1_0)
          | `Empty -> 
            _lh_easyDisplay_arg4_0
          | `NilAbove(_lh_easyDisplay_NilAbove_0_0) -> 
            ((_lh_easyDisplay_arg3_0 _lh_easyDisplay_arg1_0) (lay_0 _lh_easyDisplay_NilAbove_0_0))
          | `TextBeside(_lh_easyDisplay_TextBeside_0_0, _lh_easyDisplay_TextBeside_1_0) -> 
            ((_lh_easyDisplay_arg3_0 _lh_easyDisplay_TextBeside_0_0) (lay_0 _lh_easyDisplay_TextBeside_1_0))
          | `Above(_lh_easyDisplay_Above_0_0, _lh_easyDisplay_Above_1_0, _lh_easyDisplay_Above_2_0) -> 
            ((failwith "error") (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('y', (`LH_C('D', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))
          | `Beside(_lh_easyDisplay_Beside_0_0, _lh_easyDisplay_Beside_1_0, _lh_easyDisplay_Beside_2_0) -> 
            ((failwith "error") (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('y', (`LH_C('D', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
          | _ -> 
            (failwith "error")))) in
      lay_0))
  and displayDoc_0 = (fun _lh_displayDoc_arg1_0 _lh_displayDoc_arg2_0 _lh_displayDoc_arg3_0 _lh_displayDoc_arg4_0 _lh_displayDoc_arg5_0 _lh_displayDoc_arg6_0 -> 
    (let rec _lh_matchIdent_1_8 = (_lh_displayDoc_arg2_0 - _lh_displayDoc_arg3_0) in
      (let rec _lh_matchIdent_1_9 = (_lh_matchIdent_1_8 / 2) in
        (let rec lay_1 = (let rec lay2_0 = (fun k_4 param_0 -> 
          (let rec _lh_matchIdent_2_0 = param_0 in
            (match _lh_matchIdent_2_0 with
              | `NilAbove(_lh_displayDoc_NilAbove_0_0) -> 
                ((_lh_displayDoc_arg4_0 nlText_0) ((lay_1 k_4) _lh_displayDoc_NilAbove_0_0))
              | `TextBeside(_lh_displayDoc_TextBeside_0_0, _lh_displayDoc_TextBeside_1_0) -> 
                ((_lh_displayDoc_arg4_0 _lh_displayDoc_TextBeside_0_0) ((lay2_0 (k_4 + (annotSize_0 _lh_displayDoc_TextBeside_0_0))) _lh_displayDoc_TextBeside_1_0))
              | `Nest(_lh_displayDoc_Nest_0_0, _lh_displayDoc_Nest_1_0) -> 
                ((lay2_0 k_4) _lh_displayDoc_Nest_1_0)
              | `Empty -> 
                _lh_displayDoc_arg5_0
              | `Above(_lh_displayDoc_Above_0_0, _lh_displayDoc_Above_1_0, _lh_displayDoc_Above_2_0) -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
              | `Beside(_lh_displayDoc_Beside_0_0, _lh_displayDoc_Beside_1_0, _lh_displayDoc_Beside_2_0) -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))))
              | `NoDoc -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('D', (`LH_C('o', (`LH_C('c', (`LH_N))))))))))))))))))))))))))))))))))))))
              | `Union(_lh_displayDoc_Union_0_0, _lh_displayDoc_Union_1_0) -> 
                ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C('2', (`LH_C(' ', (`LH_C('U', (`LH_C('n', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))))
              | _ -> 
                (failwith "error")))) in
          (let rec lay1_0 = (fun k_5 s_0 p_1_0 -> 
            (let rec r_4 = (k_5 + (annotSize_0 s_0)) in
              ((_lh_displayDoc_arg4_0 (`NoAnnot((`Str((indent_lh k_5))), k_5))) ((_lh_displayDoc_arg4_0 s_0) ((lay2_0 r_4) p_1_0))))) in
            (fun k_6 docc_0 -> 
              (let rec _lh_matchIdent_2_1 = docc_0 in
                (match _lh_matchIdent_2_1 with
                  | `Nest(_lh_displayDoc_Nest_0_1, _lh_displayDoc_Nest_1_1) -> 
                    ((lay_1 (k_6 + _lh_displayDoc_Nest_0_1)) _lh_displayDoc_Nest_1_1)
                  | `Empty -> 
                    _lh_displayDoc_arg5_0
                  | `NilAbove(_lh_displayDoc_NilAbove_0_1) -> 
                    ((_lh_displayDoc_arg4_0 nlText_0) ((lay_1 k_6) _lh_displayDoc_NilAbove_0_1))
                  | `TextBeside(_lh_displayDoc_TextBeside_0_1, _lh_displayDoc_TextBeside_1_1) -> 
                    (let rec _lh_matchIdent_2_2 = _lh_displayDoc_arg1_0 in
                      (match _lh_matchIdent_2_2 with
                        | `ZigZagMode -> 
                          (if (k_6 >= _lh_matchIdent_1_8) then
                            ((_lh_displayDoc_arg4_0 nlText_0) ((_lh_displayDoc_arg4_0 (`NoAnnot((`Str(((copy_lh _lh_matchIdent_1_9) '/'))), _lh_matchIdent_1_9))) ((_lh_displayDoc_arg4_0 nlText_0) (((lay1_0 (k_6 - _lh_matchIdent_1_9)) _lh_displayDoc_TextBeside_0_1) _lh_displayDoc_TextBeside_1_1))))
                          else
                            (if (k_6 < 0) then
                              ((_lh_displayDoc_arg4_0 nlText_0) ((_lh_displayDoc_arg4_0 (`NoAnnot((`Str(((copy_lh _lh_matchIdent_1_9) '|'))), _lh_matchIdent_1_9))) ((_lh_displayDoc_arg4_0 nlText_0) (((lay1_0 (k_6 + _lh_matchIdent_1_9)) _lh_displayDoc_TextBeside_0_1) _lh_displayDoc_TextBeside_1_1))))
                            else
                              (((lay1_0 k_6) _lh_displayDoc_TextBeside_0_1) _lh_displayDoc_TextBeside_1_1)))
                        | _ -> 
                          (((lay1_0 k_6) _lh_displayDoc_TextBeside_0_1) _lh_displayDoc_TextBeside_1_1)))
                  | `Above(_lh_displayDoc_Above_0_1, _lh_displayDoc_Above_1_1, _lh_displayDoc_Above_2_1) -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))
                  | `Beside(_lh_displayDoc_Beside_0_1, _lh_displayDoc_Beside_1_1, _lh_displayDoc_Beside_2_1) -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))))))
                  | `NoDoc -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('N', (`LH_C('o', (`LH_C('D', (`LH_C('o', (`LH_C('c', (`LH_N))))))))))))))))))))))))))))))))))))
                  | `Union(_lh_displayDoc_Union_0_1, _lh_displayDoc_Union_1_1) -> 
                    ((failwith "error") (`LH_C('d', (`LH_C('i', (`LH_C('s', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('l', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('U', (`LH_C('n', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))))))))))))))))))))))))))))
                  | _ -> 
                    (failwith "error")))))) in
          ((lay_1 0) _lh_displayDoc_arg6_0)))))
  and reduceDoc_0 = (fun _lh_reduceDoc_arg1_0 -> 
    (match _lh_reduceDoc_arg1_0 with
      | `Beside(_lh_reduceDoc_Beside_0_0, _lh_reduceDoc_Beside_1_0, _lh_reduceDoc_Beside_2_0) -> 
        (((beside_0 _lh_reduceDoc_Beside_0_0) _lh_reduceDoc_Beside_1_0) (reduceDoc_0 _lh_reduceDoc_Beside_2_0))
      | `Above(_lh_reduceDoc_Above_0_0, _lh_reduceDoc_Above_1_0, _lh_reduceDoc_Above_2_0) -> 
        (((above_0 _lh_reduceDoc_Above_0_0) _lh_reduceDoc_Above_1_0) (reduceDoc_0 _lh_reduceDoc_Above_2_0))
      | _ -> 
        _lh_reduceDoc_arg1_0))
  and text_0 = (fun _lh_text_arg1_0 -> 
    (let rec _lh_matchIdent_2_3 = (length_lh _lh_text_arg1_0) in
      (`TextBeside((`NoAnnot((`Str(_lh_text_arg1_0)), _lh_matchIdent_2_3)), (`Empty)))))
  and nilBeside_0 = (fun _lh_nilBeside_arg1_0 _lh_nilBeside_arg2_0 -> 
    (match _lh_nilBeside_arg2_0 with
      | `Empty -> 
        (`Empty)
      | `Nest(_lh_nilBeside_Nest_0_0, _lh_nilBeside_Nest_1_0) -> 
        ((nilBeside_0 _lh_nilBeside_arg1_0) _lh_nilBeside_Nest_1_0)
      | _ -> 
        (if _lh_nilBeside_arg1_0 then
          (`TextBeside(spaceText_0, _lh_nilBeside_arg2_0))
        else
          _lh_nilBeside_arg2_0)))
  and printDoc_0 = (fun _lh_printDoc_arg1_0 -> 
    (let rec put_0 = (fun k_7 next_0 -> 
      (let rec _lh_matchIdent_2_4 = k_7 in
        (match _lh_matchIdent_2_4 with
          | `Chr(_lh_printDoc_Chr_0_0) -> 
            (`LH_C(_lh_printDoc_Chr_0_0, next_0))
          | `Str(_lh_printDoc_Str_0_0) -> 
            ((mappend_lh _lh_printDoc_Str_0_0) next_0)
          | `PStr(_lh_printDoc_PStr_0_0) -> 
            ((mappend_lh _lh_printDoc_PStr_0_0) next_0)
          | _ -> 
            (failwith "error")))) in
      (let rec done_0 = (`LH_C('|', (`LH_N))) in
        ((((((fullRender_0 (`ZigZagMode)) 200) 1.5) put_0) done_0) _lh_printDoc_arg1_0))))
  and nicest_0 = (fun _lh_nicest_arg1_0 _lh_nicest_arg2_0 -> 
    (((nicest1_0 _lh_nicest_arg1_0) _lh_nicest_arg2_0) 0))
  and first_0 = (fun _lh_first_arg1_0 _lh_first_arg2_0 -> 
    (if (nonEmptySet_0 _lh_first_arg1_0) then
      _lh_first_arg1_0
    else
      _lh_first_arg2_0))
  and above__0 = (fun _lh_above__arg1_0 _lh_above__arg2_0 _lh_above__arg3_0 -> 
    (match _lh_above__arg3_0 with
      | `Empty -> 
        _lh_above__arg1_0
      | _ -> 
        (match _lh_above__arg1_0 with
          | `Empty -> 
            _lh_above__arg3_0
          | _ -> 
            (`Above(_lh_above__arg1_0, _lh_above__arg2_0, _lh_above__arg3_0)))))
  and best_0 = (fun _lh_best_arg1_0 _lh_best_arg2_0 -> 
    let rec get1_0 = (fun _lh_get1_arg1_0 _lh_get1_arg2_0 _lh_get1_arg3_0 _lh_get1_arg4_0 -> 
      (match _lh_get1_arg4_0 with
        | `Empty -> 
          (`Empty)
        | `NoDoc -> 
          (`NoDoc)
        | `NilAbove(_lh_get1_NilAbove_0_0) -> 
          (`NilAbove((((get_0 _lh_get1_arg1_0) (_lh_get1_arg2_0 - _lh_get1_arg3_0)) _lh_get1_NilAbove_0_0)))
        | `TextBeside(_lh_get1_TextBeside_0_0, _lh_get1_TextBeside_1_0) -> 
          (`TextBeside(_lh_get1_TextBeside_0_0, ((((get1_0 _lh_get1_arg1_0) _lh_get1_arg2_0) (_lh_get1_arg3_0 + (annotSize_0 _lh_get1_TextBeside_0_0))) _lh_get1_TextBeside_1_0)))
        | `Nest(_lh_get1_Nest_0_0, _lh_get1_Nest_1_0) -> 
          ((((get1_0 _lh_get1_arg1_0) _lh_get1_arg2_0) _lh_get1_arg3_0) _lh_get1_Nest_1_0)
        | `Union(_lh_get1_Union_0_0, _lh_get1_Union_1_0) -> 
          (((((nicest1_0 _lh_get1_arg2_0) _lh_get1_arg1_0) _lh_get1_arg3_0) ((((get1_0 _lh_get1_arg1_0) _lh_get1_arg2_0) _lh_get1_arg3_0) _lh_get1_Union_0_0)) ((((get1_0 _lh_get1_arg1_0) _lh_get1_arg2_0) _lh_get1_arg3_0) _lh_get1_Union_1_0))
        | `Above(_lh_get1_Above_0_0, _lh_get1_Above_1_0, _lh_get1_Above_2_0) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('1', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))
        | `Beside(_lh_get1_Beside_0_0, _lh_get1_Beside_1_0, _lh_get1_Beside_2_0) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C('1', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error")))
    and get_0 = (fun _lh_get_arg1_0 _lh_get_arg2_0 _lh_get_arg3_0 -> 
      (match _lh_get_arg3_0 with
        | `Empty -> 
          (`Empty)
        | `NoDoc -> 
          (`NoDoc)
        | `NilAbove(_lh_get_NilAbove_0_0) -> 
          (`NilAbove((((get_0 _lh_get_arg1_0) _lh_get_arg2_0) _lh_get_NilAbove_0_0)))
        | `TextBeside(_lh_get_TextBeside_0_0, _lh_get_TextBeside_1_0) -> 
          (`TextBeside(_lh_get_TextBeside_0_0, ((((get1_0 _lh_get_arg1_0) _lh_get_arg2_0) (annotSize_0 _lh_get_TextBeside_0_0)) _lh_get_TextBeside_1_0)))
        | `Nest(_lh_get_Nest_0_0, _lh_get_Nest_1_0) -> 
          (`Nest(_lh_get_Nest_0_0, (((get_0 _lh_get_arg1_0) (_lh_get_arg2_0 - _lh_get_Nest_0_0)) _lh_get_Nest_1_0)))
        | `Union(_lh_get_Union_0_0, _lh_get_Union_1_0) -> 
          ((((nicest_0 _lh_get_arg2_0) _lh_get_arg1_0) (((get_0 _lh_get_arg1_0) _lh_get_arg2_0) _lh_get_Union_0_0)) (((get_0 _lh_get_arg1_0) _lh_get_arg2_0) _lh_get_Union_1_0))
        | `Above(_lh_get_Above_0_0, _lh_get_Above_1_0, _lh_get_Above_2_0) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))
        | `Beside(_lh_get_Beside_0_0, _lh_get_Beside_1_0, _lh_get_Beside_2_0) -> 
          ((failwith "error") (`LH_C('b', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))
        | _ -> 
          (failwith "error")))
    in ((get_0 _lh_best_arg2_0) _lh_best_arg1_0))
  and aboveNest_0 = (fun _lh_aboveNest_arg1_0 _lh_aboveNest_arg2_0 _lh_aboveNest_arg3_0 _lh_aboveNest_arg4_0 -> 
    (match _lh_aboveNest_arg1_0 with
      | `NoDoc -> 
        (`NoDoc)
      | `Union(_lh_aboveNest_Union_0_0, _lh_aboveNest_Union_1_0) -> 
        (`Union(((((aboveNest_0 _lh_aboveNest_Union_0_0) _lh_aboveNest_arg2_0) _lh_aboveNest_arg3_0) _lh_aboveNest_arg4_0), ((((aboveNest_0 _lh_aboveNest_Union_1_0) _lh_aboveNest_arg2_0) _lh_aboveNest_arg3_0) _lh_aboveNest_arg4_0)))
      | `Empty -> 
        ((mkNest_0 _lh_aboveNest_arg3_0) _lh_aboveNest_arg4_0)
      | `Nest(_lh_aboveNest_Nest_0_0, _lh_aboveNest_Nest_1_0) -> 
        (`Nest(_lh_aboveNest_Nest_0_0, ((((aboveNest_0 _lh_aboveNest_Nest_1_0) _lh_aboveNest_arg2_0) (_lh_aboveNest_arg3_0 - _lh_aboveNest_Nest_0_0)) _lh_aboveNest_arg4_0)))
      | `NilAbove(_lh_aboveNest_NilAbove_0_0) -> 
        (`NilAbove(((((aboveNest_0 _lh_aboveNest_NilAbove_0_0) _lh_aboveNest_arg2_0) _lh_aboveNest_arg3_0) _lh_aboveNest_arg4_0)))
      | `TextBeside(_lh_aboveNest_TextBeside_0_0, _lh_aboveNest_TextBeside_1_0) -> 
        (let rec k1_0 = (_lh_aboveNest_arg3_0 - (annotSize_0 _lh_aboveNest_TextBeside_0_0)) in
          (let rec rest_1 = (let rec _lh_matchIdent_2_5 = _lh_aboveNest_TextBeside_1_0 in
            (match _lh_matchIdent_2_5 with
              | `Empty -> 
                (((nilAboveNest_0 _lh_aboveNest_arg2_0) k1_0) _lh_aboveNest_arg4_0)
              | _ -> 
                ((((aboveNest_0 _lh_aboveNest_TextBeside_1_0) _lh_aboveNest_arg2_0) k1_0) _lh_aboveNest_arg4_0))) in
            (`TextBeside(_lh_aboveNest_TextBeside_0_0, rest_1))))
      | `Above(_lh_aboveNest_Above_0_0, _lh_aboveNest_Above_1_0, _lh_aboveNest_Above_2_0) -> 
        ((failwith "error") (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('N', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))
      | `Beside(_lh_aboveNest_Beside_0_0, _lh_aboveNest_Beside_1_0, _lh_aboveNest_Beside_2_0) -> 
        ((failwith "error") (`LH_C('a', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('N', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))))))))))))
      | _ -> 
        (failwith "error")))
  and nest_0 = (fun _lh_nest_arg1_0 _lh_nest_arg2_0 -> 
    ((mkNest_0 _lh_nest_arg1_0) (reduceDoc_0 _lh_nest_arg2_0)))
  and mkNest_0 = (fun _lh_mkNest_arg1_0 _lh_mkNest_arg2_0 -> 
    (match _lh_mkNest_arg2_0 with
      | `Nest(_lh_mkNest_Nest_0_0, _lh_mkNest_Nest_1_0) -> 
        ((mkNest_0 (_lh_mkNest_arg1_0 + _lh_mkNest_Nest_0_0)) _lh_mkNest_Nest_1_0)
      | `NoDoc -> 
        (`NoDoc)
      | `Empty -> 
        (`Empty)
      | _ -> 
        (match _lh_mkNest_arg1_0 with
          | 0 -> 
            _lh_mkNest_arg2_0
          | _ -> 
            (`Nest(_lh_mkNest_arg1_0, _lh_mkNest_arg2_0)))))
  and char_0 = (fun _lh_char_arg1_0 -> 
    (`TextBeside((`NoAnnot((`Chr(_lh_char_arg1_0)), 1)), (`Empty))))
  and display_0 = (fun _lh_display_arg1_0 -> 
    (match _lh_display_arg1_0 with
      | `Soln(_lh_display_Soln_0_0) -> 
        (vcat_0 (`LH_C((text_0 (`LH_C('S', (`LH_C('u', (`LH_C('c', (`LH_C('c', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('!', (`LH_N)))))))))))))))))), (`LH_C(((nest_0 2) (displayBoard_0 _lh_display_Soln_0_0)), (`LH_N))))))
      | `Choose(_lh_display_Choose_0_0) -> 
        (vcat_0 ((map_lh display_0) _lh_display_Choose_0_0))
      | `Fail(_lh_display_Fail_0_0, _lh_display_Fail_1_0) -> 
        (match _lh_display_Fail_1_0 with
          | `LH_P2(_lh_display_LH_P2_0_0, _lh_display_LH_P2_1_0) -> 
            (`Empty)
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and fits_0 = (fun _lh_fits_arg1_0 _lh_fits_arg2_0 -> 
    (if (_lh_fits_arg1_0 < 0) then
      false
    else
      (let rec _lh_matchIdent_2_6 = _lh_fits_arg2_0 in
        (match _lh_matchIdent_2_6 with
          | `NoDoc -> 
            false
          | `Empty -> 
            true
          | `NilAbove(_lh_fits_NilAbove_0_0) -> 
            true
          | `TextBeside(_lh_fits_TextBeside_0_0, _lh_fits_TextBeside_1_0) -> 
            ((fits_0 (_lh_fits_arg1_0 - (annotSize_0 _lh_fits_TextBeside_0_0))) _lh_fits_TextBeside_1_0)
          | `Above(_lh_fits_Above_0_0, _lh_fits_Above_1_0, _lh_fits_Above_2_0) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('A', (`LH_C('b', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_N))))))))))))))))))))))
          | `Beside(_lh_fits_Beside_0_0, _lh_fits_Beside_1_0, _lh_fits_Beside_2_0) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('B', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_N))))))))))))))))))))))))
          | `Union(_lh_fits_Union_0_0, _lh_fits_Union_1_0) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('U', (`LH_C('n', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))))))))))))))
          | `Nest(_lh_fits_Nest_0_0, _lh_fits_Nest_1_0) -> 
            ((failwith "error") (`LH_C('f', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('N', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))
          | _ -> 
            (failwith "error")))))
  in (let rec initialBoard_0 = (fromJust_lh ((((fit_lh emptyBoard_lh) (`LH_P2(1, 1))) 'a') (`LH_C((`LH_P2(1, 0)), (`LH_C((`LH_P2(1, 1)), (`LH_N))))))) in
    (let rec solutions_0 = ((((search_lh (`LH_P2(1, 2))) (`Female)) initialBoard_0) (initialPieces_lh 0)) in
      (printDoc_0 (display_0 solutions_0))));;
end;;

