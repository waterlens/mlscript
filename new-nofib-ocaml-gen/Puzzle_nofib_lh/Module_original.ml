
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec totalTime_lh _lh_totalTime_arg1_0 =
  (match _lh_totalTime_arg1_0 with
    | `LH_C(_lh_totalTime_LH_C_0_0, _lh_totalTime_LH_C_1_0) -> 
      (match _lh_totalTime_LH_C_0_0 with
        | `LH_P2(_lh_totalTime_LH_P2_0_0, _lh_totalTime_LH_P2_1_0) -> 
          _lh_totalTime_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec reverse_helper_lh ls_3 a_0 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      ((reverse_helper_lh t_4) (`LH_C(h_4, a_0)))
    | `LH_N -> 
      a_0);;
let rec length_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh t_1))
    | `LH_N -> 
      0);;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh t_2) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec foldr_lh f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((f_0 h_0) (((foldr_lh f_0) i_0) t_0))
    | `LH_N -> 
      i_0);;
let rec bonoPos_lh _lh_bonoPos_arg1_0 =
  (match _lh_bonoPos_arg1_0 with
    | `State(_lh_bonoPos_State_0_0, _lh_bonoPos_State_1_0, _lh_bonoPos_State_2_0, _lh_bonoPos_State_3_0) -> 
      _lh_bonoPos_State_0_0
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh _lh_adamPos_arg1_0 =
  (match _lh_adamPos_arg1_0 with
    | `State(_lh_adamPos_State_0_0, _lh_adamPos_State_1_0, _lh_adamPos_State_2_0, _lh_adamPos_State_3_0) -> 
      _lh_adamPos_State_3_0
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh _lh_larryPos_arg1_0 =
  (match _lh_larryPos_arg1_0 with
    | `State(_lh_larryPos_State_0_0, _lh_larryPos_State_1_0, _lh_larryPos_State_2_0, _lh_larryPos_State_3_0) -> 
      _lh_larryPos_State_2_0
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh _lh_edgePos_arg1_0 =
  (match _lh_edgePos_arg1_0 with
    | `State(_lh_edgePos_State_0_0, _lh_edgePos_State_1_0, _lh_edgePos_State_2_0, _lh_edgePos_State_3_0) -> 
      _lh_edgePos_State_1_0
    | _ -> 
      (failwith "error"));;
let rec finalState_lh =
  (`State((`RightBank), (`RightBank), (`RightBank), (`RightBank)));;
let rec initialState_lh =
  (`State((`LeftBank), (`LeftBank), (`LeftBank), (`LeftBank)));;
let rec updateState_lh _lh_updateState_arg1_0 _lh_updateState_arg2_0 _lh_updateState_arg3_0 =
  (match _lh_updateState_arg1_0 with
    | `State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0) -> 
      (match _lh_updateState_arg2_0 with
        | `Bono -> 
          (`State(_lh_updateState_arg3_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0))
        | `Edge -> 
          (`State(_lh_updateState_State_0_0, _lh_updateState_arg3_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0))
        | `Larry -> 
          (`State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_arg3_0, _lh_updateState_State_3_0))
        | `Adam -> 
          (`State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_arg3_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec opposite_lh _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `LeftBank -> 
      (`RightBank)
    | `RightBank -> 
      (`LeftBank)
    | _ -> 
      (failwith "error"));;
let rec succItem_lh _lh_succItem_arg1_0 =
  (match _lh_succItem_arg1_0 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec all_lh _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec u2times_lh _lh_u2times_arg1_0 =
  (match _lh_u2times_arg1_0 with
    | `Bono -> 
      10
    | `Edge -> 
      5
    | `Larry -> 
      2
    | `Adam -> 
      1
    | _ -> 
      (failwith "error"));;
let rec reverse_lh ls_2 =
  ((reverse_helper_lh ls_2) (`LH_N));;
let rec writeItem_lh _lh_writeItem_arg1_0 _lh_writeItem_arg2_0 _lh_writeItem_arg3_0 =
  (match _lh_writeItem_arg1_0 with
    | `Bono -> 
      (match _lh_writeItem_arg2_0 with
        | `LeftBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | `RightBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | _ -> 
          (failwith "error"))
    | `Edge -> 
      (match _lh_writeItem_arg2_0 with
        | `LeftBank -> 
          ((mappend_lh (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | `RightBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | _ -> 
          (failwith "error"))
    | `Larry -> 
      (match _lh_writeItem_arg2_0 with
        | `LeftBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | `RightBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | _ -> 
          (failwith "error"))
    | `Adam -> 
      (match _lh_writeItem_arg2_0 with
        | `LeftBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | `RightBank -> 
          ((mappend_lh (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec position_lh _lh_position_arg1_0 =
  (match _lh_position_arg1_0 with
    | `Bono -> 
      bonoPos_lh
    | `Edge -> 
      edgePos_lh
    | `Larry -> 
      larryPos_lh
    | `Adam -> 
      adamPos_lh
    | _ -> 
      (failwith "error"));;
let rec itemFromTo_lh _lh_itemFromTo_arg1_0 _lh_itemFromTo_arg2_0 =
  (if (_lh_itemFromTo_arg1_0 = _lh_itemFromTo_arg2_0) then
    (`LH_C(_lh_itemFromTo_arg1_0, (`LH_N)))
  else
    (`LH_C(_lh_itemFromTo_arg1_0, ((itemFromTo_lh (succItem_lh _lh_itemFromTo_arg1_0)) _lh_itemFromTo_arg2_0))));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_lh h_3) (concat_lh t_3))
    | `LH_N -> 
      (`LH_N));;
let rec notSeen_lh _lh_notSeen_arg1_0 =
  (all_lh (fun _s_0 -> 
    (let rec _lh_matchIdent_0 = _s_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_notSeen_LH_P2_0_0, _lh_notSeen_LH_P2_1_0) -> 
          (_lh_notSeen_arg1_0 <> _lh_notSeen_LH_P2_1_0)
        | _ -> 
          (failwith "error")))));;
let rec minSolutions_lh _lh_minSolutions_arg1_0 =
  (match _lh_minSolutions_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_minSolutions_LH_C_0_0, _lh_minSolutions_LH_C_1_0) -> 
      (let rec minAcc_0 = (fun minSoFar_0 mins_1 ls_4 -> 
        (let rec _lh_matchIdent_1 = ls_4 in
          (match _lh_matchIdent_1 with
            | `LH_N -> 
              mins_1
            | `LH_C(_lh_minSolutions_LH_C_0_1, _lh_minSolutions_LH_C_1_1) -> 
              (let rec total_0 = (totalTime_lh _lh_minSolutions_LH_C_0_1) in
                (if (minSoFar_0 < total_0) then
                  (((minAcc_0 minSoFar_0) mins_1) _lh_minSolutions_LH_C_1_1)
                else
                  (if (minSoFar_0 = total_0) then
                    (((minAcc_0 minSoFar_0) (`LH_C(_lh_minSolutions_LH_C_0_1, mins_1))) _lh_minSolutions_LH_C_1_1)
                  else
                    (((minAcc_0 total_0) (`LH_C(_lh_minSolutions_LH_C_0_1, (`LH_N)))) _lh_minSolutions_LH_C_1_1))))
            | _ -> 
              (failwith "error")))) in
        (reverse_lh (((minAcc_0 (totalTime_lh _lh_minSolutions_LH_C_0_0)) (`LH_C(_lh_minSolutions_LH_C_0_0, (`LH_N)))) _lh_minSolutions_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec writeState_lh _lh_writeState_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        ((fun _lh_funcomp_x_4 -> 
          ((fun s_0 -> 
            ((mappend_lh (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) s_0)) (((writeItem_lh (`Bono)) (bonoPos_lh _lh_writeState_arg1_0)) _lh_funcomp_x_4))) (((writeItem_lh (`Edge)) (edgePos_lh _lh_writeState_arg1_0)) _lh_funcomp_x_3))) (((writeItem_lh (`Larry)) (larryPos_lh _lh_writeState_arg1_0)) _lh_funcomp_x_2))) (((writeItem_lh (`Adam)) (adamPos_lh _lh_writeState_arg1_0)) _lh_funcomp_x_1))) ((fun s_1 -> 
    ((mappend_lh (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) s_1)) _lh_funcomp_x_0));;
let rec transfer_lh _lh_transfer_arg1_0 _lh_transfer_arg2_0 _lh_transfer_arg3_0 _lh_transfer_arg4_0 _lh_transfer_arg5_0 =
  (if (_lh_transfer_arg1_0 = _lh_transfer_arg2_0) then
    (`LH_C((`LH_C((`LH_P2(_lh_transfer_arg4_0, _lh_transfer_arg2_0)), _lh_transfer_arg5_0)), (`LH_N)))
  else
    (let rec newHistory_0 = (`LH_C((`LH_P2(_lh_transfer_arg4_0, _lh_transfer_arg2_0)), _lh_transfer_arg5_0)) in
      (let rec newLocation_0 = (opposite_lh _lh_transfer_arg3_0) in
        (let rec moveOne_0 = (concat_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
          (match _lh_listcomp_fun_para_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
              (if (((position_lh _lh_listcomp_fun_ls_h_0) _lh_transfer_arg2_0) = _lh_transfer_arg3_0) then
                (let rec newDest_0 = (((updateState_lh _lh_transfer_arg2_0) _lh_listcomp_fun_ls_h_0) newLocation_0) in
                  (if ((notSeen_lh newDest_0) _lh_transfer_arg5_0) then
                    (let rec newTime_0 = (_lh_transfer_arg4_0 + (u2times_lh _lh_listcomp_fun_ls_h_0)) in
                      (`LH_C((((((transfer_lh _lh_transfer_arg1_0) newDest_0) newLocation_0) newTime_0) newHistory_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))))
                  else
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
              else
                (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_0 ((itemFromTo_lh (`Bono)) (`Adam))))) in
          (let rec moveTwo_0 = (concat_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
            (match _lh_listcomp_fun_para_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                  (match _lh_listcomp_fun_para_2 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                      (if ((((position_lh _lh_listcomp_fun_ls_h_1) _lh_transfer_arg2_0) = _lh_transfer_arg3_0) && (((position_lh _lh_listcomp_fun_ls_h_2) _lh_transfer_arg2_0) = _lh_transfer_arg3_0)) then
                        (let rec newDest_1 = (((updateState_lh (((updateState_lh _lh_transfer_arg2_0) _lh_listcomp_fun_ls_h_1) newLocation_0)) _lh_listcomp_fun_ls_h_2) newLocation_0) in
                          (if ((notSeen_lh newDest_1) _lh_transfer_arg5_0) then
                            (let rec newTime_1 = (_lh_transfer_arg4_0 + (u2times_lh _lh_listcomp_fun_ls_h_1)) in
                              (`LH_C((((((transfer_lh _lh_transfer_arg1_0) newDest_1) newLocation_0) newTime_1) newHistory_0), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))))
                          else
                            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                      else
                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                    | `LH_N -> 
                      (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
                  (_lh_listcomp_fun_2 ((itemFromTo_lh (succItem_lh _lh_listcomp_fun_ls_h_1)) (`Adam))))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1 ((itemFromTo_lh (`Bono)) (`Larry))))) in
            ((mappend_lh moveOne_0) moveTwo_0))))));;
let rec writeHistory_lh _lh_writeHistory_arg1_0 =
  (match _lh_writeHistory_arg1_0 with
    | `LH_N -> 
      (fun x_4 -> 
        x_4)
    | _ -> 
      (((foldr_lh (fun timestate_0 acc_0 -> 
        (let rec _lh_matchIdent_2 = timestate_0 in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_0, _lh_writeHistory_LH_P2_1_0) -> 
              (fun _lh_funcomp_x_9 -> 
                ((fun _lh_funcomp_x_1_0 -> 
                  ((fun _lh_funcomp_x_1_1 -> 
                    ((fun _lh_funcomp_x_1_2 -> 
                      ((fun x_5 -> 
                        ((mappend_lh (`LH_C('T', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))) x_5)) ((fun x_6 -> 
                        ((mappend_lh (string_of_int ((totalTime_lh _lh_writeHistory_arg1_0) - _lh_writeHistory_LH_P2_0_0))) x_6)) _lh_funcomp_x_1_2))) ((fun x_7 -> 
                      (`LH_C('|', x_7))) _lh_funcomp_x_1_1))) ((writeState_lh _lh_writeHistory_LH_P2_1_0) _lh_funcomp_x_1_0))) (acc_0 _lh_funcomp_x_9)))
            | _ -> 
              (failwith "error"))))) (fun x_8 -> 
        x_8)) _lh_writeHistory_arg1_0));;
let rec writeSolutions_lh _lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_0 =
  (match _lh_writeSolutions_arg1_0 with
    | `LH_N -> 
      (fun x_0 -> 
        x_0)
    | `LH_C(_lh_writeSolutions_LH_C_0_0, _lh_writeSolutions_LH_C_1_0) -> 
      (fun _lh_funcomp_x_5 -> 
        ((fun _lh_funcomp_x_6 -> 
          ((fun _lh_funcomp_x_7 -> 
            ((fun _lh_funcomp_x_8 -> 
              ((fun x_1 -> 
                ((mappend_lh (`LH_C('S', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_N)))))))))))))))))))) x_1)) ((fun x_2 -> 
                ((mappend_lh (string_of_int _lh_writeSolutions_arg2_0)) x_2)) _lh_funcomp_x_8))) ((fun x_3 -> 
              (`LH_C('|', x_3))) _lh_funcomp_x_7))) ((writeHistory_lh _lh_writeSolutions_LH_C_0_0) _lh_funcomp_x_6))) (((writeSolutions_lh _lh_writeSolutions_LH_C_1_0) (_lh_writeSolutions_arg2_0 + 1)) _lh_funcomp_x_5)))
    | _ -> 
      (failwith "error"));;
let rec testPuzzle_nofib_lh _lh_testPuzzle_nofib_arg1_0 =
  (let rec time_0 = (if ((length_lh _lh_testPuzzle_nofib_arg1_0) = 1) then
    0
  else
    ((failwith "error") (`LH_C('p', (`LH_C('u', (`LH_C('z', (`LH_C('z', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec solutions_0 = (((((transfer_lh initialState_lh) finalState_lh) (`RightBank)) time_0) (`LH_N)) in
      (let rec mins_0 = (minSolutions_lh solutions_0) in
        (((writeSolutions_lh mins_0) 1) (`LH_N)))));;
end;;

