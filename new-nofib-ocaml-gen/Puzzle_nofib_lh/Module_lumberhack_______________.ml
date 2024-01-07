

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec finalState_lh__d1 =
  (`State((`RightBank), (`RightBank), (`RightBank), (`RightBank)));;
let rec mappend_lh__d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d3 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d2 lss_0 =
  (lss_0 99);;
let rec opposite_lh__d1 _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `LeftBank -> 
      (`RightBank)
    | `RightBank -> 
      (`LeftBank)
    | _ -> 
      (failwith "error"));;
let rec succItem_lh__d4 _lh_succItem_arg1_1 =
  (match _lh_succItem_arg1_1 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec succItem_lh__d1 _lh_succItem_arg1_0 =
  (match _lh_succItem_arg1_0 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d1 _lh_updateState_arg1_0 _lh_updateState_arg2_0 _lh_updateState_arg3_0 =
  (match _lh_updateState_arg1_0 with
    | `State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0) -> 
      (match _lh_updateState_arg2_0 with
        | `Bono -> 
          (let rec _lh_updateState_State_3_1 = _lh_updateState_State_3_0 in
            (let rec _lh_updateState_State_2_1 = _lh_updateState_State_2_0 in
              (let rec _lh_updateState_State_1_1 = _lh_updateState_State_1_0 in
                (let rec _lh_updateState_State_0_1 = _lh_updateState_arg3_0 in
                  (fun _lh_updateState_arg2_1 _lh_updateState_arg3_1 -> 
                    (match _lh_updateState_arg2_1 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1, _lh_updateState_State_1_1, _lh_updateState_State_2_1, _lh_updateState_State_3_1))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1, _lh_updateState_arg3_1, _lh_updateState_State_2_1, _lh_updateState_State_3_1))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1, _lh_updateState_State_1_1, _lh_updateState_arg3_1, _lh_updateState_State_3_1))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1, _lh_updateState_State_1_1, _lh_updateState_State_2_1, _lh_updateState_arg3_1))
                      | _ -> 
                        (failwith "error")))))))
        | `Edge -> 
          (let rec _lh_updateState_State_3_2 = _lh_updateState_State_3_0 in
            (let rec _lh_updateState_State_2_2 = _lh_updateState_State_2_0 in
              (let rec _lh_updateState_State_1_2 = _lh_updateState_arg3_0 in
                (let rec _lh_updateState_State_0_2 = _lh_updateState_State_0_0 in
                  (fun _lh_updateState_arg2_2 _lh_updateState_arg3_2 -> 
                    (match _lh_updateState_arg2_2 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_2, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_State_3_2))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_arg3_2, _lh_updateState_State_2_2, _lh_updateState_State_3_2))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_arg3_2, _lh_updateState_State_3_2))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_arg3_2))
                      | _ -> 
                        (failwith "error")))))))
        | `Larry -> 
          (let rec _lh_updateState_State_3_3 = _lh_updateState_State_3_0 in
            (let rec _lh_updateState_State_2_3 = _lh_updateState_arg3_0 in
              (let rec _lh_updateState_State_1_3 = _lh_updateState_State_1_0 in
                (let rec _lh_updateState_State_0_3 = _lh_updateState_State_0_0 in
                  (fun _lh_updateState_arg2_3 _lh_updateState_arg3_3 -> 
                    (match _lh_updateState_arg2_3 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_3, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_State_3_3))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_arg3_3, _lh_updateState_State_2_3, _lh_updateState_State_3_3))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_arg3_3, _lh_updateState_State_3_3))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_arg3_3))
                      | _ -> 
                        (failwith "error")))))))
        | `Adam -> 
          (let rec _lh_updateState_State_3_4 = _lh_updateState_arg3_0 in
            (let rec _lh_updateState_State_2_4 = _lh_updateState_State_2_0 in
              (let rec _lh_updateState_State_1_4 = _lh_updateState_State_1_0 in
                (let rec _lh_updateState_State_0_4 = _lh_updateState_State_0_0 in
                  (fun _lh_updateState_arg2_4 _lh_updateState_arg3_4 -> 
                    (match _lh_updateState_arg2_4 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_4, _lh_updateState_State_1_4, _lh_updateState_State_2_4, _lh_updateState_State_3_4))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_arg3_4, _lh_updateState_State_2_4, _lh_updateState_State_3_4))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_State_1_4, _lh_updateState_arg3_4, _lh_updateState_State_3_4))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_State_1_4, _lh_updateState_State_2_4, _lh_updateState_arg3_4))
                      | _ -> 
                        (failwith "error")))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d2 _lh_adamPos_arg1_0 =
  (match _lh_adamPos_arg1_0 with
    | `State(_lh_adamPos_State_0_0, _lh_adamPos_State_1_0, _lh_adamPos_State_2_0, _lh_adamPos_State_3_0) -> 
      _lh_adamPos_State_3_0
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d2 _lh_larryPos_arg1_0 =
  (match _lh_larryPos_arg1_0 with
    | `State(_lh_larryPos_State_0_0, _lh_larryPos_State_1_0, _lh_larryPos_State_2_0, _lh_larryPos_State_3_0) -> 
      _lh_larryPos_State_2_0
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d2 _lh_edgePos_arg1_3 =
  (match _lh_edgePos_arg1_3 with
    | `State(_lh_edgePos_State_0_3, _lh_edgePos_State_1_3, _lh_edgePos_State_2_3, _lh_edgePos_State_3_3) -> 
      _lh_edgePos_State_1_3
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d2 _lh_bonoPos_arg1_1 =
  (match _lh_bonoPos_arg1_1 with
    | `State(_lh_bonoPos_State_0_1, _lh_bonoPos_State_1_1, _lh_bonoPos_State_2_1, _lh_bonoPos_State_3_1) -> 
      _lh_bonoPos_State_0_1
    | _ -> 
      (failwith "error"));;
let rec position_lh__d2 _lh_position_arg1_0 =
  (match _lh_position_arg1_0 with
    | `Bono -> 
      bonoPos_lh__d2
    | `Edge -> 
      edgePos_lh__d2
    | `Larry -> 
      larryPos_lh__d2
    | `Adam -> 
      adamPos_lh__d2
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d6 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d6 t_4) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec u2times_lh__d2 _lh_u2times_arg1_1 =
  (match _lh_u2times_arg1_1 with
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
let rec succItem_lh__d3 _lh_succItem_arg1_2 =
  (match _lh_succItem_arg1_2 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec all_lh__d2 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d2 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d2 _lh_notSeen_arg1_1 =
  (all_lh__d2 (fun _s_1 -> 
    (let rec _lh_matchIdent_2 = _s_1 in
      (match _lh_matchIdent_2 with
        | `LH_P2(_lh_notSeen_LH_P2_0_1, _lh_notSeen_LH_P2_1_1) -> 
          (_lh_notSeen_arg1_1 <> _lh_notSeen_LH_P2_1_1)
        | _ -> 
          (failwith "error")))));;
let rec adamPos_lh__d1 _lh_adamPos_arg1_2 =
  (match _lh_adamPos_arg1_2 with
    | `State(_lh_adamPos_State_0_2, _lh_adamPos_State_1_2, _lh_adamPos_State_2_2, _lh_adamPos_State_3_2) -> 
      _lh_adamPos_State_3_2
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d1 _lh_edgePos_arg1_0 =
  (match _lh_edgePos_arg1_0 with
    | `State(_lh_edgePos_State_0_0, _lh_edgePos_State_1_0, _lh_edgePos_State_2_0, _lh_edgePos_State_3_0) -> 
      _lh_edgePos_State_1_0
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d1 _lh_larryPos_arg1_1 =
  (match _lh_larryPos_arg1_1 with
    | `State(_lh_larryPos_State_0_1, _lh_larryPos_State_1_1, _lh_larryPos_State_2_1, _lh_larryPos_State_3_1) -> 
      _lh_larryPos_State_2_1
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d1 _lh_bonoPos_arg1_0 =
  (match _lh_bonoPos_arg1_0 with
    | `State(_lh_bonoPos_State_0_0, _lh_bonoPos_State_1_0, _lh_bonoPos_State_2_0, _lh_bonoPos_State_3_0) -> 
      _lh_bonoPos_State_0_0
    | _ -> 
      (failwith "error"));;
let rec position_lh__d1 _lh_position_arg1_1 =
  (match _lh_position_arg1_1 with
    | `Bono -> 
      bonoPos_lh__d1
    | `Edge -> 
      edgePos_lh__d1
    | `Larry -> 
      larryPos_lh__d1
    | `Adam -> 
      adamPos_lh__d1
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1 lss_1 =
  (lss_1 99);;
let rec updateState_lh__d3 _lh_updateState_arg1_1 _lh_updateState_arg2_5 _lh_updateState_arg3_5 =
  ((_lh_updateState_arg1_1 _lh_updateState_arg2_5) _lh_updateState_arg3_5);;
let rec u2times_lh__d1 _lh_u2times_arg1_0 =
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
let rec mappend_lh__d7 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d7 t_2) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec all_lh__d1 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all_lh__d1 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d1 _lh_notSeen_arg1_0 =
  (all_lh__d1 (fun _s_0 -> 
    (let rec _lh_matchIdent_1 = _s_0 in
      (match _lh_matchIdent_1 with
        | `LH_P2(_lh_notSeen_LH_P2_0_0, _lh_notSeen_LH_P2_1_0) -> 
          (_lh_notSeen_arg1_0 <> _lh_notSeen_LH_P2_1_0)
        | _ -> 
          (failwith "error")))));;
let rec succItem_lh__d2 _lh_succItem_arg1_3 =
  (match _lh_succItem_arg1_3 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d3 _lh_bonoPos_arg1_2 =
  (match _lh_bonoPos_arg1_2 with
    | `State(_lh_bonoPos_State_0_2, _lh_bonoPos_State_1_2, _lh_bonoPos_State_2_2, _lh_bonoPos_State_3_2) -> 
      _lh_bonoPos_State_0_2
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d3 _lh_adamPos_arg1_1 =
  (match _lh_adamPos_arg1_1 with
    | `State(_lh_adamPos_State_0_1, _lh_adamPos_State_1_1, _lh_adamPos_State_2_1, _lh_adamPos_State_3_1) -> 
      _lh_adamPos_State_3_1
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d3 _lh_larryPos_arg1_2 =
  (match _lh_larryPos_arg1_2 with
    | `State(_lh_larryPos_State_0_2, _lh_larryPos_State_1_2, _lh_larryPos_State_2_2, _lh_larryPos_State_3_2) -> 
      _lh_larryPos_State_2_2
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d3 _lh_edgePos_arg1_1 =
  (match _lh_edgePos_arg1_1 with
    | `State(_lh_edgePos_State_0_1, _lh_edgePos_State_1_1, _lh_edgePos_State_2_1, _lh_edgePos_State_3_1) -> 
      _lh_edgePos_State_1_1
    | _ -> 
      (failwith "error"));;
let rec position_lh__d3 _lh_position_arg1_2 =
  (match _lh_position_arg1_2 with
    | `Bono -> 
      bonoPos_lh__d3
    | `Edge -> 
      edgePos_lh__d3
    | `Larry -> 
      larryPos_lh__d3
    | `Adam -> 
      adamPos_lh__d3
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d2 _lh_updateState_arg1_2 _lh_updateState_arg2_6 _lh_updateState_arg3_6 =
  (match _lh_updateState_arg1_2 with
    | `State(_lh_updateState_State_0_5, _lh_updateState_State_1_5, _lh_updateState_State_2_5, _lh_updateState_State_3_5) -> 
      (match _lh_updateState_arg2_6 with
        | `Bono -> 
          (`State(_lh_updateState_arg3_6, _lh_updateState_State_1_5, _lh_updateState_State_2_5, _lh_updateState_State_3_5))
        | `Edge -> 
          (`State(_lh_updateState_State_0_5, _lh_updateState_arg3_6, _lh_updateState_State_2_5, _lh_updateState_State_3_5))
        | `Larry -> 
          (`State(_lh_updateState_State_0_5, _lh_updateState_State_1_5, _lh_updateState_arg3_6, _lh_updateState_State_3_5))
        | `Adam -> 
          (`State(_lh_updateState_State_0_5, _lh_updateState_State_1_5, _lh_updateState_State_2_5, _lh_updateState_arg3_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec itemFromTo_lh__d1 _lh_itemFromTo_arg1_1 _lh_itemFromTo_arg2_1 =
  (if (_lh_itemFromTo_arg1_1 = _lh_itemFromTo_arg2_1) then
    (let rec _lh_listcomp_fun_ls_t_2 = (fun _lh_listcomp_fun_7 _lh_transfer_arg1_4 _lh_transfer_arg2_4 _lh_transfer_arg3_4 _lh_transfer_arg4_4 _lh_transfer_arg5_4 newHistory_4 newLocation_4 _lh_dummy_1 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_2 = _lh_itemFromTo_arg1_1 in
        (fun _lh_listcomp_fun_8 _lh_transfer_arg1_5 _lh_transfer_arg2_5 _lh_transfer_arg3_5 _lh_transfer_arg4_5 _lh_transfer_arg5_5 newHistory_5 newLocation_5 -> 
          (if (((position_lh__d3 _lh_listcomp_fun_ls_h_2) _lh_transfer_arg2_5) = _lh_transfer_arg3_5) then
            (let rec newDest_0 = (((updateState_lh__d2 _lh_transfer_arg2_5) _lh_listcomp_fun_ls_h_2) newLocation_5) in
              (if ((notSeen_lh__d1 newDest_0) _lh_transfer_arg5_5) then
                (let rec newTime_0 = (_lh_transfer_arg4_5 + (u2times_lh__d1 _lh_listcomp_fun_ls_h_2)) in
                  (let rec t_4_3 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_2) in
                    (let rec h_4_3 = (((((transfer_lh__d1 _lh_transfer_arg1_5) newDest_0) newLocation_5) newTime_0) newHistory_5) in
                      (fun _lh_dummy_2 -> 
                        ((mappend_lh__d7 h_4_3) (concat_lh__d2 t_4_3))))))
              else
                (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_2)))
          else
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_2)))))
  else
    (let rec _lh_listcomp_fun_ls_t_3 = ((itemFromTo_lh__d1 (succItem_lh__d2 _lh_itemFromTo_arg1_1)) _lh_itemFromTo_arg2_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = _lh_itemFromTo_arg1_1 in
        (fun _lh_listcomp_fun_9 _lh_transfer_arg1_6 _lh_transfer_arg2_6 _lh_transfer_arg3_6 _lh_transfer_arg4_6 _lh_transfer_arg5_6 newHistory_6 newLocation_6 -> 
          (if (((position_lh__d3 _lh_listcomp_fun_ls_h_3) _lh_transfer_arg2_6) = _lh_transfer_arg3_6) then
            (let rec newDest_1 = (((updateState_lh__d2 _lh_transfer_arg2_6) _lh_listcomp_fun_ls_h_3) newLocation_6) in
              (if ((notSeen_lh__d1 newDest_1) _lh_transfer_arg5_6) then
                (let rec newTime_1 = (_lh_transfer_arg4_6 + (u2times_lh__d1 _lh_listcomp_fun_ls_h_3)) in
                  (let rec t_4_4 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_3) in
                    (let rec h_4_4 = (((((transfer_lh__d1 _lh_transfer_arg1_6) newDest_1) newLocation_6) newTime_1) newHistory_6) in
                      (fun _lh_dummy_3 -> 
                        ((mappend_lh__d7 h_4_4) (concat_lh__d2 t_4_4))))))
              else
                (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_3)))
          else
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_3))))))
and
itemFromTo_lh__d2 _lh_itemFromTo_arg1_2 _lh_itemFromTo_arg2_2 =
  (if (_lh_itemFromTo_arg1_2 = _lh_itemFromTo_arg2_2) then
    (let rec _lh_listcomp_fun_ls_t_4 = (fun _lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_1_0 _lh_transfer_arg1_7 _lh_transfer_arg2_7 _lh_transfer_arg3_7 _lh_transfer_arg4_7 _lh_transfer_arg5_7 newHistory_7 newLocation_7 _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_1_1 -> 
      (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_5)) in
      (let rec _lh_listcomp_fun_ls_h_5 = _lh_itemFromTo_arg1_2 in
        (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_1_2 _lh_transfer_arg1_8 _lh_transfer_arg2_8 _lh_transfer_arg3_8 _lh_transfer_arg4_8 _lh_transfer_arg5_8 newHistory_8 newLocation_8 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_3 -> 
          (if ((((position_lh__d2 _lh_listcomp_fun_ls_h_6) _lh_transfer_arg2_8) = _lh_transfer_arg3_8) && (((position_lh__d1 _lh_listcomp_fun_ls_h_5) _lh_transfer_arg2_8) = _lh_transfer_arg3_8)) then
            (let rec newDest_2 = (((updateState_lh__d3 (((updateState_lh__d1 _lh_transfer_arg2_8) _lh_listcomp_fun_ls_h_6) newLocation_8)) _lh_listcomp_fun_ls_h_5) newLocation_8) in
              (if ((notSeen_lh__d2 newDest_2) _lh_transfer_arg5_8) then
                (let rec newTime_2 = (_lh_transfer_arg4_8 + (u2times_lh__d2 _lh_listcomp_fun_ls_h_6)) in
                  (let rec t_4_5 = (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_4) in
                    (let rec h_4_5 = (((((transfer_lh__d1 _lh_transfer_arg1_8) newDest_2) newLocation_8) newTime_2) newHistory_8) in
                      (fun _lh_dummy_4 -> 
                        ((mappend_lh__d6 h_4_5) (concat_lh__d1 t_4_5))))))
              else
                (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_4)))
          else
            (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_4)))))
  else
    (let rec _lh_listcomp_fun_ls_t_7 = ((itemFromTo_lh__d2 (succItem_lh__d3 _lh_itemFromTo_arg1_2)) _lh_itemFromTo_arg2_2) in
      (let rec _lh_listcomp_fun_ls_h_7 = _lh_itemFromTo_arg1_2 in
        (fun _lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_1_4 _lh_transfer_arg1_9 _lh_transfer_arg2_9 _lh_transfer_arg3_9 _lh_transfer_arg4_9 _lh_transfer_arg5_9 newHistory_9 newLocation_9 _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_1_5 -> 
          (if ((((position_lh__d2 _lh_listcomp_fun_ls_h_8) _lh_transfer_arg2_9) = _lh_transfer_arg3_9) && (((position_lh__d1 _lh_listcomp_fun_ls_h_7) _lh_transfer_arg2_9) = _lh_transfer_arg3_9)) then
            (let rec newDest_3 = (((updateState_lh__d3 (((updateState_lh__d1 _lh_transfer_arg2_9) _lh_listcomp_fun_ls_h_8) newLocation_9)) _lh_listcomp_fun_ls_h_7) newLocation_9) in
              (if ((notSeen_lh__d2 newDest_3) _lh_transfer_arg5_9) then
                (let rec newTime_3 = (_lh_transfer_arg4_9 + (u2times_lh__d2 _lh_listcomp_fun_ls_h_8)) in
                  (let rec t_4_6 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7) in
                    (let rec h_4_6 = (((((transfer_lh__d1 _lh_transfer_arg1_9) newDest_3) newLocation_9) newTime_3) newHistory_9) in
                      (fun _lh_dummy_5 -> 
                        ((mappend_lh__d6 h_4_6) (concat_lh__d1 t_4_6))))))
              else
                (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7)))
          else
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7))))))
and
itemFromTo_lh__d3 _lh_itemFromTo_arg1_0 _lh_itemFromTo_arg2_0 =
  (if (_lh_itemFromTo_arg1_0 = _lh_itemFromTo_arg2_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = (fun _lh_listcomp_fun_2 _lh_transfer_arg1_1 _lh_transfer_arg2_1 _lh_transfer_arg3_1 _lh_transfer_arg4_1 _lh_transfer_arg5_1 newHistory_1 newLocation_1 _lh_dummy_0 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_0 = _lh_itemFromTo_arg1_0 in
        (fun _lh_listcomp_fun_3 _lh_transfer_arg1_2 _lh_transfer_arg2_2 _lh_transfer_arg3_2 _lh_transfer_arg4_2 _lh_transfer_arg5_2 newHistory_2 newLocation_2 -> 
          (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_2 -> 
            (((((((((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_4) _lh_transfer_arg1_2) _lh_transfer_arg2_2) _lh_transfer_arg3_2) _lh_transfer_arg4_2) _lh_transfer_arg5_2) newHistory_2) newLocation_2) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_3)) in
            (_lh_listcomp_fun_4 ((itemFromTo_lh__d2 (succItem_lh__d1 _lh_listcomp_fun_ls_h_0)) (`Adam)))))))
  else
    (let rec _lh_listcomp_fun_ls_t_1 = ((itemFromTo_lh__d3 (succItem_lh__d4 _lh_itemFromTo_arg1_0)) _lh_itemFromTo_arg2_0) in
      (let rec _lh_listcomp_fun_ls_h_1 = _lh_itemFromTo_arg1_0 in
        (fun _lh_listcomp_fun_5 _lh_transfer_arg1_3 _lh_transfer_arg2_3 _lh_transfer_arg3_3 _lh_transfer_arg4_3 _lh_transfer_arg5_3 newHistory_3 newLocation_3 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_3 -> 
            (((((((((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_6) _lh_transfer_arg1_3) _lh_transfer_arg2_3) _lh_transfer_arg3_3) _lh_transfer_arg4_3) _lh_transfer_arg5_3) newHistory_3) newLocation_3) _lh_listcomp_fun_ls_t_1) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_6 ((itemFromTo_lh__d2 (succItem_lh__d1 _lh_listcomp_fun_ls_h_1)) (`Adam))))))))
and
transfer_lh__d1 _lh_transfer_arg1_0 _lh_transfer_arg2_0 _lh_transfer_arg3_0 _lh_transfer_arg4_0 _lh_transfer_arg5_0 =
  (if (_lh_transfer_arg1_0 = _lh_transfer_arg2_0) then
    (`LH_C((`LH_C((`LH_P2(_lh_transfer_arg4_0, _lh_transfer_arg2_0)), _lh_transfer_arg5_0)), (`LH_N)))
  else
    (let rec newHistory_0 = (`LH_C((`LH_P2(_lh_transfer_arg4_0, _lh_transfer_arg2_0)), _lh_transfer_arg5_0)) in
      (let rec newLocation_0 = (opposite_lh__d1 _lh_transfer_arg3_0) in
        (let rec moveOne_0 = (concat_lh__d2 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
          ((((((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_transfer_arg1_0) _lh_transfer_arg2_0) _lh_transfer_arg3_0) _lh_transfer_arg4_0) _lh_transfer_arg5_0) newHistory_0) newLocation_0)) in
          (_lh_listcomp_fun_0 ((itemFromTo_lh__d1 (`Bono)) (`Adam))))) in
          (let rec moveTwo_0 = (concat_lh__d1 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
            ((((((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1) _lh_transfer_arg1_0) _lh_transfer_arg2_0) _lh_transfer_arg3_0) _lh_transfer_arg4_0) _lh_transfer_arg5_0) newHistory_0) newLocation_0)) in
            (_lh_listcomp_fun_1 ((itemFromTo_lh__d3 (`Bono)) (`Larry))))) in
            ((mappend_lh__d3 moveOne_0) moveTwo_0))))));;
let rec initialState_lh__d1 =
  (`State((`LeftBank), (`LeftBank), (`LeftBank), (`LeftBank)));;
let rec length_lh__d1 ls_2 =
  (match ls_2 with
    | `LH_C(h_1_2, t_1_2) -> 
      (1 + (length_lh__d1 t_1_2))
    | `LH_N -> 
      0);;
let rec writeSolutions_lh__d1 _lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_0 =
  (_lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_0);;
let rec mappend_lh__d1 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec reverse_helper_lh__d1 ls_0 a_0 =
  (ls_0 a_0);;
let rec mappend_lh__d2 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d2 t_3) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec totalTime_lh__d2 _lh_totalTime_arg1_0 =
  (match _lh_totalTime_arg1_0 with
    | `LH_C(_lh_totalTime_LH_C_0_0, _lh_totalTime_LH_C_1_0) -> 
      (match _lh_totalTime_LH_C_0_0 with
        | `LH_P2(_lh_totalTime_LH_P2_0_0, _lh_totalTime_LH_P2_1_0) -> 
          _lh_totalTime_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d1 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_0 h_1) (((foldr_lh__d1 f_0) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec mappend_lh__d5 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec edgePos_lh__d4 _lh_edgePos_arg1_2 =
  (match _lh_edgePos_arg1_2 with
    | `State(_lh_edgePos_State_0_2, _lh_edgePos_State_1_2, _lh_edgePos_State_2_2, _lh_edgePos_State_3_2) -> 
      _lh_edgePos_State_1_2
    | _ -> 
      (failwith "error"));;
let rec writeItem_lh__d1 _lh_writeItem_arg1_0 _lh_writeItem_arg2_0 _lh_writeItem_arg3_0 =
  ((_lh_writeItem_arg1_0 _lh_writeItem_arg2_0) _lh_writeItem_arg3_0);;
let rec writeState_lh__d1 _lh_writeState_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        ((fun _lh_funcomp_x_4 -> 
          ((fun s_0 -> 
            ((mappend_lh__d7 (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) s_0)) (((writeItem_lh__d1 (fun _lh_writeItem_arg2_1 _lh_writeItem_arg3_1 -> 
            (match _lh_writeItem_arg2_1 with
              | `LeftBank -> 
                ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
              | `RightBank -> 
                ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
              | _ -> 
                (failwith "error")))) (bonoPos_lh__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_4))) (((writeItem_lh__d1 (fun _lh_writeItem_arg2_2 _lh_writeItem_arg3_2 -> 
          (match _lh_writeItem_arg2_2 with
            | `LeftBank -> 
              ((mappend_lh__d7 (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
            | `RightBank -> 
              ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
            | _ -> 
              (failwith "error")))) (edgePos_lh__d4 _lh_writeState_arg1_0)) _lh_funcomp_x_3))) (((writeItem_lh__d1 (fun _lh_writeItem_arg2_3 _lh_writeItem_arg3_3 -> 
        (match _lh_writeItem_arg2_3 with
          | `LeftBank -> 
            ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
          | `RightBank -> 
            ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
          | _ -> 
            (failwith "error")))) (larryPos_lh__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_2))) (((writeItem_lh__d1 (fun _lh_writeItem_arg2_4 _lh_writeItem_arg3_4 -> 
      (match _lh_writeItem_arg2_4 with
        | `LeftBank -> 
          ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | `RightBank -> 
          ((mappend_lh__d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | _ -> 
          (failwith "error")))) (adamPos_lh__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_1))) ((fun s_1 -> 
    ((mappend_lh__d7 (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) s_1)) _lh_funcomp_x_0));;
let rec mappend_lh__d4 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d4 t_5) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec totalTime_lh__d3 _lh_totalTime_arg1_1 =
  (match _lh_totalTime_arg1_1 with
    | `LH_C(_lh_totalTime_LH_C_0_1, _lh_totalTime_LH_C_1_1) -> 
      (match _lh_totalTime_LH_C_0_1 with
        | `LH_P2(_lh_totalTime_LH_P2_0_1, _lh_totalTime_LH_P2_1_1) -> 
          _lh_totalTime_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec writeHistory_lh__d1 _lh_writeHistory_arg1_0 =
  (match _lh_writeHistory_arg1_0 with
    | `LH_N -> 
      (fun x_0 -> 
        x_0)
    | _ -> 
      (((foldr_lh__d1 (fun timestate_0 acc_0 -> 
        (let rec _lh_matchIdent_0 = timestate_0 in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_0, _lh_writeHistory_LH_P2_1_0) -> 
              (fun _lh_funcomp_x_5 -> 
                ((fun _lh_funcomp_x_6 -> 
                  ((fun _lh_funcomp_x_7 -> 
                    ((fun _lh_funcomp_x_8 -> 
                      ((fun x_1 -> 
                        ((mappend_lh__d5 (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (fun ys_7 -> 
                          ys_7) in
                          (let rec h_6 = ' ' in
                            (fun ys_8 -> 
                              (`LH_C(h_6, ((mappend_lh__d5 t_1_1) ys_8)))))) in
                          (let rec h_7 = ':' in
                            (fun ys_9 -> 
                              (`LH_C(h_7, ((mappend_lh__d5 t_1_0) ys_9)))))) in
                          (let rec h_8 = 'e' in
                            (fun ys_1_0 -> 
                              (`LH_C(h_8, ((mappend_lh__d5 t_9) ys_1_0)))))) in
                          (let rec h_9 = 'm' in
                            (fun ys_1_1 -> 
                              (`LH_C(h_9, ((mappend_lh__d5 t_8) ys_1_1)))))) in
                          (let rec h_1_0 = 'i' in
                            (fun ys_1_2 -> 
                              (`LH_C(h_1_0, ((mappend_lh__d5 t_7) ys_1_2)))))) in
                          (let rec h_1_1 = 'T' in
                            (fun ys_1_3 -> 
                              (`LH_C(h_1_1, ((mappend_lh__d5 t_6) ys_1_3))))))) x_1)) ((fun x_2 -> 
                        ((mappend_lh__d4 (string_of_int ((totalTime_lh__d3 _lh_writeHistory_arg1_0) - _lh_writeHistory_LH_P2_0_0))) x_2)) _lh_funcomp_x_8))) ((fun x_3 -> 
                      (`LH_C('|', x_3))) _lh_funcomp_x_7))) ((writeState_lh__d1 _lh_writeHistory_LH_P2_1_0) _lh_funcomp_x_6))) (acc_0 _lh_funcomp_x_5)))
            | _ -> 
              (failwith "error"))))) (fun x_4 -> 
        x_4)) _lh_writeHistory_arg1_0));;
let rec totalTime_lh__d1 _lh_totalTime_arg1_2 =
  (match _lh_totalTime_arg1_2 with
    | `LH_C(_lh_totalTime_LH_C_0_2, _lh_totalTime_LH_C_1_2) -> 
      (match _lh_totalTime_LH_C_0_2 with
        | `LH_P2(_lh_totalTime_LH_P2_0_2, _lh_totalTime_LH_P2_1_2) -> 
          _lh_totalTime_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec reverse_lh__d1 ls_4 =
  ((reverse_helper_lh__d1 ls_4) (fun _lh_writeSolutions_arg2_5 x_1_5 -> 
    x_1_5));;
let rec minSolutions_lh__d1 _lh_minSolutions_arg1_0 =
  (match _lh_minSolutions_arg1_0 with
    | `LH_N -> 
      (fun _lh_writeSolutions_arg2_1 x_5 -> 
        x_5)
    | `LH_C(_lh_minSolutions_LH_C_0_0, _lh_minSolutions_LH_C_1_0) -> 
      (let rec minAcc_0 = (fun minSoFar_0 mins_0 ls_3 -> 
        (let rec _lh_matchIdent_3 = ls_3 in
          (match _lh_matchIdent_3 with
            | `LH_N -> 
              mins_0
            | `LH_C(_lh_minSolutions_LH_C_0_1, _lh_minSolutions_LH_C_1_1) -> 
              (let rec total_0 = (totalTime_lh__d2 _lh_minSolutions_LH_C_0_1) in
                (if (minSoFar_0 < total_0) then
                  (((minAcc_0 minSoFar_0) mins_0) _lh_minSolutions_LH_C_1_1)
                else
                  (if (minSoFar_0 = total_0) then
                    (((minAcc_0 minSoFar_0) (let rec t_1_3 = mins_0 in
                      (let rec h_1_3 = _lh_minSolutions_LH_C_0_1 in
                        (fun a_1 -> 
                          ((reverse_helper_lh__d1 t_1_3) (let rec _lh_writeSolutions_LH_C_1_0 = a_1 in
                            (let rec _lh_writeSolutions_LH_C_0_0 = h_1_3 in
                              (fun _lh_writeSolutions_arg2_2 _lh_funcomp_x_9 -> 
                                ((fun _lh_funcomp_x_1_0 -> 
                                  ((fun _lh_funcomp_x_1_1 -> 
                                    ((fun _lh_funcomp_x_1_2 -> 
                                      ((fun x_6 -> 
                                        ((mappend_lh__d1 (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (fun ys_1_4 -> 
                                          ys_1_4) in
                                          (let rec h_1_4 = ' ' in
                                            (fun ys_1_5 -> 
                                              (`LH_C(h_1_4, ((mappend_lh__d1 t_2_2) ys_1_5)))))) in
                                          (let rec h_1_5 = 'n' in
                                            (fun ys_1_6 -> 
                                              (`LH_C(h_1_5, ((mappend_lh__d1 t_2_1) ys_1_6)))))) in
                                          (let rec h_1_6 = 'o' in
                                            (fun ys_1_7 -> 
                                              (`LH_C(h_1_6, ((mappend_lh__d1 t_2_0) ys_1_7)))))) in
                                          (let rec h_1_7 = 'i' in
                                            (fun ys_1_8 -> 
                                              (`LH_C(h_1_7, ((mappend_lh__d1 t_1_9) ys_1_8)))))) in
                                          (let rec h_1_8 = 't' in
                                            (fun ys_1_9 -> 
                                              (`LH_C(h_1_8, ((mappend_lh__d1 t_1_8) ys_1_9)))))) in
                                          (let rec h_1_9 = 'u' in
                                            (fun ys_2_0 -> 
                                              (`LH_C(h_1_9, ((mappend_lh__d1 t_1_7) ys_2_0)))))) in
                                          (let rec h_2_0 = 'l' in
                                            (fun ys_2_1 -> 
                                              (`LH_C(h_2_0, ((mappend_lh__d1 t_1_6) ys_2_1)))))) in
                                          (let rec h_2_1 = 'o' in
                                            (fun ys_2_2 -> 
                                              (`LH_C(h_2_1, ((mappend_lh__d1 t_1_5) ys_2_2)))))) in
                                          (let rec h_2_2 = 'S' in
                                            (fun ys_2_3 -> 
                                              (`LH_C(h_2_2, ((mappend_lh__d1 t_1_4) ys_2_3))))))) x_6)) ((fun x_7 -> 
                                        ((mappend_lh__d2 (string_of_int _lh_writeSolutions_arg2_2)) x_7)) _lh_funcomp_x_1_2))) ((fun x_8 -> 
                                      (`LH_C('|', x_8))) _lh_funcomp_x_1_1))) ((writeHistory_lh__d1 _lh_writeSolutions_LH_C_0_0) _lh_funcomp_x_1_0))) (((writeSolutions_lh__d1 _lh_writeSolutions_LH_C_1_0) (_lh_writeSolutions_arg2_2 + 1)) _lh_funcomp_x_9)))))))))) _lh_minSolutions_LH_C_1_1)
                  else
                    (((minAcc_0 total_0) (let rec t_2_3 = (fun a_2 -> 
                      a_2) in
                      (let rec h_2_3 = _lh_minSolutions_LH_C_0_1 in
                        (fun a_3 -> 
                          ((reverse_helper_lh__d1 t_2_3) (let rec _lh_writeSolutions_LH_C_1_1 = a_3 in
                            (let rec _lh_writeSolutions_LH_C_0_1 = h_2_3 in
                              (fun _lh_writeSolutions_arg2_3 _lh_funcomp_x_1_3 -> 
                                ((fun _lh_funcomp_x_1_4 -> 
                                  ((fun _lh_funcomp_x_1_5 -> 
                                    ((fun _lh_funcomp_x_1_6 -> 
                                      ((fun x_9 -> 
                                        ((mappend_lh__d1 (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (fun ys_2_4 -> 
                                          ys_2_4) in
                                          (let rec h_2_4 = ' ' in
                                            (fun ys_2_5 -> 
                                              (`LH_C(h_2_4, ((mappend_lh__d1 t_3_2) ys_2_5)))))) in
                                          (let rec h_2_5 = 'n' in
                                            (fun ys_2_6 -> 
                                              (`LH_C(h_2_5, ((mappend_lh__d1 t_3_1) ys_2_6)))))) in
                                          (let rec h_2_6 = 'o' in
                                            (fun ys_2_7 -> 
                                              (`LH_C(h_2_6, ((mappend_lh__d1 t_3_0) ys_2_7)))))) in
                                          (let rec h_2_7 = 'i' in
                                            (fun ys_2_8 -> 
                                              (`LH_C(h_2_7, ((mappend_lh__d1 t_2_9) ys_2_8)))))) in
                                          (let rec h_2_8 = 't' in
                                            (fun ys_2_9 -> 
                                              (`LH_C(h_2_8, ((mappend_lh__d1 t_2_8) ys_2_9)))))) in
                                          (let rec h_2_9 = 'u' in
                                            (fun ys_3_0 -> 
                                              (`LH_C(h_2_9, ((mappend_lh__d1 t_2_7) ys_3_0)))))) in
                                          (let rec h_3_0 = 'l' in
                                            (fun ys_3_1 -> 
                                              (`LH_C(h_3_0, ((mappend_lh__d1 t_2_6) ys_3_1)))))) in
                                          (let rec h_3_1 = 'o' in
                                            (fun ys_3_2 -> 
                                              (`LH_C(h_3_1, ((mappend_lh__d1 t_2_5) ys_3_2)))))) in
                                          (let rec h_3_2 = 'S' in
                                            (fun ys_3_3 -> 
                                              (`LH_C(h_3_2, ((mappend_lh__d1 t_2_4) ys_3_3))))))) x_9)) ((fun x_1_0 -> 
                                        ((mappend_lh__d2 (string_of_int _lh_writeSolutions_arg2_3)) x_1_0)) _lh_funcomp_x_1_6))) ((fun x_1_1 -> 
                                      (`LH_C('|', x_1_1))) _lh_funcomp_x_1_5))) ((writeHistory_lh__d1 _lh_writeSolutions_LH_C_0_1) _lh_funcomp_x_1_4))) (((writeSolutions_lh__d1 _lh_writeSolutions_LH_C_1_1) (_lh_writeSolutions_arg2_3 + 1)) _lh_funcomp_x_1_3)))))))))) _lh_minSolutions_LH_C_1_1))))
            | _ -> 
              (failwith "error")))) in
        (reverse_lh__d1 (((minAcc_0 (totalTime_lh__d1 _lh_minSolutions_LH_C_0_0)) (let rec t_3_3 = (fun a_4 -> 
          a_4) in
          (let rec h_3_3 = _lh_minSolutions_LH_C_0_0 in
            (fun a_5 -> 
              ((reverse_helper_lh__d1 t_3_3) (let rec _lh_writeSolutions_LH_C_1_2 = a_5 in
                (let rec _lh_writeSolutions_LH_C_0_2 = h_3_3 in
                  (fun _lh_writeSolutions_arg2_4 _lh_funcomp_x_1_7 -> 
                    ((fun _lh_funcomp_x_1_8 -> 
                      ((fun _lh_funcomp_x_1_9 -> 
                        ((fun _lh_funcomp_x_2_0 -> 
                          ((fun x_1_2 -> 
                            ((mappend_lh__d1 (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (fun ys_3_4 -> 
                              ys_3_4) in
                              (let rec h_3_4 = ' ' in
                                (fun ys_3_5 -> 
                                  (`LH_C(h_3_4, ((mappend_lh__d1 t_4_2) ys_3_5)))))) in
                              (let rec h_3_5 = 'n' in
                                (fun ys_3_6 -> 
                                  (`LH_C(h_3_5, ((mappend_lh__d1 t_4_1) ys_3_6)))))) in
                              (let rec h_3_6 = 'o' in
                                (fun ys_3_7 -> 
                                  (`LH_C(h_3_6, ((mappend_lh__d1 t_4_0) ys_3_7)))))) in
                              (let rec h_3_7 = 'i' in
                                (fun ys_3_8 -> 
                                  (`LH_C(h_3_7, ((mappend_lh__d1 t_3_9) ys_3_8)))))) in
                              (let rec h_3_8 = 't' in
                                (fun ys_3_9 -> 
                                  (`LH_C(h_3_8, ((mappend_lh__d1 t_3_8) ys_3_9)))))) in
                              (let rec h_3_9 = 'u' in
                                (fun ys_4_0 -> 
                                  (`LH_C(h_3_9, ((mappend_lh__d1 t_3_7) ys_4_0)))))) in
                              (let rec h_4_0 = 'l' in
                                (fun ys_4_1 -> 
                                  (`LH_C(h_4_0, ((mappend_lh__d1 t_3_6) ys_4_1)))))) in
                              (let rec h_4_1 = 'o' in
                                (fun ys_4_2 -> 
                                  (`LH_C(h_4_1, ((mappend_lh__d1 t_3_5) ys_4_2)))))) in
                              (let rec h_4_2 = 'S' in
                                (fun ys_4_3 -> 
                                  (`LH_C(h_4_2, ((mappend_lh__d1 t_3_4) ys_4_3))))))) x_1_2)) ((fun x_1_3 -> 
                            ((mappend_lh__d2 (string_of_int _lh_writeSolutions_arg2_4)) x_1_3)) _lh_funcomp_x_2_0))) ((fun x_1_4 -> 
                          (`LH_C('|', x_1_4))) _lh_funcomp_x_1_9))) ((writeHistory_lh__d1 _lh_writeSolutions_LH_C_0_2) _lh_funcomp_x_1_8))) (((writeSolutions_lh__d1 _lh_writeSolutions_LH_C_1_2) (_lh_writeSolutions_arg2_4 + 1)) _lh_funcomp_x_1_7)))))))))) _lh_minSolutions_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec testPuzzle_nofib_lh__d1 _lh_testPuzzle_nofib_arg1_0 =
  (let rec time_0 = (if ((length_lh__d1 _lh_testPuzzle_nofib_arg1_0) = 1) then
    0
  else
    ((failwith "error") (`LH_C('p', (`LH_C('u', (`LH_C('z', (`LH_C('z', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec solutions_0 = (((((transfer_lh__d1 initialState_lh__d1) finalState_lh__d1) (`RightBank)) time_0) (`LH_N)) in
      (let rec mins_1 = (minSolutions_lh__d1 solutions_0) in
        (((writeSolutions_lh__d1 mins_1) 1) (`LH_N)))));;
end;;

