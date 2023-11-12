

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec adamPos__d0 _lh_adamPos_arg1_2 =
  (match _lh_adamPos_arg1_2 with
    | `State(_lh_adamPos_State_0_2, _lh_adamPos_State_1_2, _lh_adamPos_State_2_2, _lh_adamPos_State_3_2) -> 
      _lh_adamPos_State_3_2
    | _ -> 
      (failwith "error"));;
let rec adamPos__d1 _lh_adamPos_arg1_0 =
  (match _lh_adamPos_arg1_0 with
    | `State(_lh_adamPos_State_0_0, _lh_adamPos_State_1_0, _lh_adamPos_State_2_0, _lh_adamPos_State_3_0) -> 
      _lh_adamPos_State_3_0
    | _ -> 
      (failwith "error"));;
let rec adamPos__d2 _lh_adamPos_arg1_3 =
  (match _lh_adamPos_arg1_3 with
    | `State(_lh_adamPos_State_0_3, _lh_adamPos_State_1_3, _lh_adamPos_State_2_3, _lh_adamPos_State_3_3) -> 
      _lh_adamPos_State_3_3
    | _ -> 
      (failwith "error"));;
let rec adamPos__d3 _lh_adamPos_arg1_1 =
  (match _lh_adamPos_arg1_1 with
    | `State(_lh_adamPos_State_0_1, _lh_adamPos_State_1_1, _lh_adamPos_State_2_1, _lh_adamPos_State_3_1) -> 
      _lh_adamPos_State_3_1
    | _ -> 
      (failwith "error"));;
let rec all__d0 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all__d0 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all__d1 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all__d1 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec bonoPos__d0 _lh_bonoPos_arg1_2 =
  (match _lh_bonoPos_arg1_2 with
    | `State(_lh_bonoPos_State_0_2, _lh_bonoPos_State_1_2, _lh_bonoPos_State_2_2, _lh_bonoPos_State_3_2) -> 
      _lh_bonoPos_State_0_2
    | _ -> 
      (failwith "error"));;
let rec bonoPos__d1 _lh_bonoPos_arg1_0 =
  (match _lh_bonoPos_arg1_0 with
    | `State(_lh_bonoPos_State_0_0, _lh_bonoPos_State_1_0, _lh_bonoPos_State_2_0, _lh_bonoPos_State_3_0) -> 
      _lh_bonoPos_State_0_0
    | _ -> 
      (failwith "error"));;
let rec bonoPos__d2 _lh_bonoPos_arg1_3 =
  (match _lh_bonoPos_arg1_3 with
    | `State(_lh_bonoPos_State_0_3, _lh_bonoPos_State_1_3, _lh_bonoPos_State_2_3, _lh_bonoPos_State_3_3) -> 
      _lh_bonoPos_State_0_3
    | _ -> 
      (failwith "error"));;
let rec bonoPos__d3 _lh_bonoPos_arg1_1 =
  (match _lh_bonoPos_arg1_1 with
    | `State(_lh_bonoPos_State_0_1, _lh_bonoPos_State_1_1, _lh_bonoPos_State_2_1, _lh_bonoPos_State_3_1) -> 
      _lh_bonoPos_State_0_1
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec edgePos__d0 _lh_edgePos_arg1_3 =
  (match _lh_edgePos_arg1_3 with
    | `State(_lh_edgePos_State_0_3, _lh_edgePos_State_1_3, _lh_edgePos_State_2_3, _lh_edgePos_State_3_3) -> 
      _lh_edgePos_State_1_3
    | _ -> 
      (failwith "error"));;
let rec edgePos__d1 _lh_edgePos_arg1_2 =
  (match _lh_edgePos_arg1_2 with
    | `State(_lh_edgePos_State_0_2, _lh_edgePos_State_1_2, _lh_edgePos_State_2_2, _lh_edgePos_State_3_2) -> 
      _lh_edgePos_State_1_2
    | _ -> 
      (failwith "error"));;
let rec edgePos__d2 _lh_edgePos_arg1_0 =
  (match _lh_edgePos_arg1_0 with
    | `State(_lh_edgePos_State_0_0, _lh_edgePos_State_1_0, _lh_edgePos_State_2_0, _lh_edgePos_State_3_0) -> 
      _lh_edgePos_State_1_0
    | _ -> 
      (failwith "error"));;
let rec edgePos__d3 _lh_edgePos_arg1_1 =
  (match _lh_edgePos_arg1_1 with
    | `State(_lh_edgePos_State_0_1, _lh_edgePos_State_1_1, _lh_edgePos_State_2_1, _lh_edgePos_State_3_1) -> 
      _lh_edgePos_State_1_1
    | _ -> 
      (failwith "error"));;
let rec finalState__d0 =
  (`State((`RightBank), (`RightBank), (`RightBank), (`RightBank)));;
let rec foldr__d0 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((f_0 h_0) (((foldr__d0 f_0) i_0) t_0))
    | `LH_N -> 
      i_0);;
let rec initialState__d0 =
  (`State((`LeftBank), (`LeftBank), (`LeftBank), (`LeftBank)));;
let rec larryPos__d0 _lh_larryPos_arg1_2 =
  (match _lh_larryPos_arg1_2 with
    | `State(_lh_larryPos_State_0_2, _lh_larryPos_State_1_2, _lh_larryPos_State_2_2, _lh_larryPos_State_3_2) -> 
      _lh_larryPos_State_2_2
    | _ -> 
      (failwith "error"));;
let rec larryPos__d1 _lh_larryPos_arg1_0 =
  (match _lh_larryPos_arg1_0 with
    | `State(_lh_larryPos_State_0_0, _lh_larryPos_State_1_0, _lh_larryPos_State_2_0, _lh_larryPos_State_3_0) -> 
      _lh_larryPos_State_2_0
    | _ -> 
      (failwith "error"));;
let rec larryPos__d2 _lh_larryPos_arg1_1 =
  (match _lh_larryPos_arg1_1 with
    | `State(_lh_larryPos_State_0_1, _lh_larryPos_State_1_1, _lh_larryPos_State_2_1, _lh_larryPos_State_3_1) -> 
      _lh_larryPos_State_2_1
    | _ -> 
      (failwith "error"));;
let rec larryPos__d3 _lh_larryPos_arg1_3 =
  (match _lh_larryPos_arg1_3 with
    | `State(_lh_larryPos_State_0_3, _lh_larryPos_State_1_3, _lh_larryPos_State_2_3, _lh_larryPos_State_3_3) -> 
      _lh_larryPos_State_2_3
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_4_0_8, t_4_0_8) -> 
      (1 + (length__d0 t_4_0_8))
    | `LH_N -> 
      0);;
let rec mappend__d1 xs_2_4 ys_3_9_8 =
  (match xs_2_4 with
    | `LH_C(h_3_6_9, t_3_6_9) -> 
      (`LH_C(h_3_6_9, ((mappend__d1 t_3_6_9) ys_3_9_8)))
    | `LH_N -> 
      ys_3_9_8);;
let rec mappend__d1_d0 xs_2_6 ys_4_0_0 =
  (xs_2_6 ys_4_0_0);;
let rec mappend__d1_d1 xs_1_8 ys_3_9_2 =
  (xs_1_8 ys_3_9_2);;
let rec mappend__d1_d2 xs_3_4 ys_4_4_6 =
  (xs_3_4 ys_4_4_6);;
let rec mappend__d1_d3 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec mappend__d1_d4 xs_2_1 ys_3_9_5 =
  (xs_2_1 ys_3_9_5);;
let rec mappend__d1_d5 xs_2_3 ys_3_9_7 =
  (xs_2_3 ys_3_9_7);;
let rec mappend__d1_d6 xs_1_5 ys_1_6 =
  (xs_1_5 ys_1_6);;
let rec mappend__d1_d7 xs_1_1 ys_1_2 =
  (xs_1_1 ys_1_2);;
let rec mappend__d1_d8 xs_2_9 ys_4_0_3 =
  (xs_2_9 ys_4_0_3);;
let rec mappend__d1_d9 xs_7 ys_7 =
  (xs_7 ys_7);;
let rec mappend__d2 xs_3_3 ys_4_3_8 =
  (xs_3_3 ys_4_3_8);;
let rec mappend__d2_d0 xs_1_2 ys_1_3 =
  (xs_1_2 ys_1_3);;
let rec mappend__d2_d1 xs_1_7 ys_1_8 =
  (xs_1_7 ys_1_8);;
let rec mappend__d2_d2 xs_5 ys_5 =
  (xs_5 ys_5);;
let rec mappend__d2_d3 xs_3_0 ys_4_0_4 =
  (xs_3_0 ys_4_0_4);;
let rec mappend__d2_d4 xs_1_0 ys_1_1 =
  (xs_1_0 ys_1_1);;
let rec mappend__d2_d5 xs_1_4 ys_1_5 =
  (xs_1_4 ys_1_5);;
let rec mappend__d2_d6 xs_2_7 ys_4_0_1 =
  (xs_2_7 ys_4_0_1);;
let rec mappend__d2_d7 xs_1_6 ys_1_7 =
  (xs_1_6 ys_1_7);;
let rec mappend__d2_d8 xs_3_6 ys_4_4_8 =
  (xs_3_6 ys_4_4_8);;
let rec mappend__d2_d9 xs_1_9 ys_3_9_3 =
  (xs_1_9 ys_3_9_3);;
let rec mappend__d3 xs_3_5 ys_4_4_7 =
  (xs_3_5 ys_4_4_7);;
let rec mappend__d3_d0 xs_3_1 ys_4_0_5 =
  (xs_3_1 ys_4_0_5);;
let rec mappend__d3_d1 xs_2_5 ys_3_9_9 =
  (xs_2_5 ys_3_9_9);;
let rec mappend__d3_d2 xs_3_8 ys_4_5_0 =
  (xs_3_8 ys_4_5_0);;
let rec mappend__d3_d3 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d3_d4 xs_1_3 ys_1_4 =
  (xs_1_3 ys_1_4);;
let rec mappend__d3_d5 xs_3_2 ys_4_0_7 =
  (xs_3_2 ys_4_0_7);;
let rec mappend__d3_d6 xs_2_0 ys_3_9_4 =
  (xs_2_0 ys_3_9_4);;
let rec mappend__d3_d7 xs_9 ys_1_0 =
  (xs_9 ys_1_0);;
let rec mappend__d3_d8 xs_3_7 ys_4_4_9 =
  (xs_3_7 ys_4_4_9);;
let rec mappend__d3_d9 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d4 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend__d4 t_1) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend__d4_d0 xs_2_2 ys_3_9_6 =
  (xs_2_2 ys_3_9_6);;
let rec mappend__d5 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec mappend__d6 xs_3_9 ys_4_5_1 =
  (match xs_3_9 with
    | `LH_C(h_4_0_9, t_4_0_9) -> 
      (`LH_C(h_4_0_9, ((mappend__d6 t_4_0_9) ys_4_5_1)))
    | `LH_N -> 
      ys_4_5_1);;
let rec mappend__d7 xs_6 ys_6 =
  (xs_6 ys_6);;
let rec mappend__d8 xs_4_0 ys_4_5_2 =
  (xs_4_0 ys_4_5_2);;
let rec mappend__d9 xs_2_8 ys_4_0_2 =
  (xs_2_8 ys_4_0_2);;
let rec opposite__d0 _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `LeftBank -> 
      (`RightBank)
    | `RightBank -> 
      (`LeftBank)
    | _ -> 
      (failwith "error"));;
let rec reverse_helper__d0 ls_2 a_0 =
  (ls_2 a_0);;
let rec succItem__d0 _lh_succItem_arg1_2 =
  (match _lh_succItem_arg1_2 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec succItem__d1 _lh_succItem_arg1_3 =
  (match _lh_succItem_arg1_3 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec succItem__d2 _lh_succItem_arg1_0 =
  (match _lh_succItem_arg1_0 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec succItem__d3 _lh_succItem_arg1_1 =
  (match _lh_succItem_arg1_1 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec totalTime__d0 _lh_totalTime_arg1_2 =
  (match _lh_totalTime_arg1_2 with
    | `LH_C(_lh_totalTime_LH_C_0_2, _lh_totalTime_LH_C_1_2) -> 
      (match _lh_totalTime_LH_C_0_2 with
        | `LH_P2(_lh_totalTime_LH_P2_0_2, _lh_totalTime_LH_P2_1_2) -> 
          _lh_totalTime_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec totalTime__d1 _lh_totalTime_arg1_0 =
  (match _lh_totalTime_arg1_0 with
    | `LH_C(_lh_totalTime_LH_C_0_0, _lh_totalTime_LH_C_1_0) -> 
      (match _lh_totalTime_LH_C_0_0 with
        | `LH_P2(_lh_totalTime_LH_P2_0_0, _lh_totalTime_LH_P2_1_0) -> 
          _lh_totalTime_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec totalTime__d2 _lh_totalTime_arg1_1 =
  (match _lh_totalTime_arg1_1 with
    | `LH_C(_lh_totalTime_LH_C_0_1, _lh_totalTime_LH_C_1_1) -> 
      (match _lh_totalTime_LH_C_0_1 with
        | `LH_P2(_lh_totalTime_LH_P2_0_1, _lh_totalTime_LH_P2_1_1) -> 
          _lh_totalTime_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec u2times__d0 _lh_u2times_arg1_0 =
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
let rec u2times__d1 _lh_u2times_arg1_1 =
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
let rec updateState__d0 _lh_updateState_arg1_1 _lh_updateState_arg2_1 _lh_updateState_arg3_1 =
  (match _lh_updateState_arg1_1 with
    | `State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0) -> 
      (match _lh_updateState_arg2_1 with
        | `Bono -> 
          (`State(_lh_updateState_arg3_1, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0))
        | `Edge -> 
          (`State(_lh_updateState_State_0_0, _lh_updateState_arg3_1, _lh_updateState_State_2_0, _lh_updateState_State_3_0))
        | `Larry -> 
          (`State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_arg3_1, _lh_updateState_State_3_0))
        | `Adam -> 
          (`State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_arg3_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec updateState__d1 _lh_updateState_arg1_0 _lh_updateState_arg2_0 _lh_updateState_arg3_0 =
  ((_lh_updateState_arg1_0 _lh_updateState_arg2_0) _lh_updateState_arg3_0);;
let rec updateState__d2 _lh_updateState_arg1_2 _lh_updateState_arg2_2 _lh_updateState_arg3_2 =
  (match _lh_updateState_arg1_2 with
    | `State(_lh_updateState_State_0_1, _lh_updateState_State_1_1, _lh_updateState_State_2_1, _lh_updateState_State_3_1) -> 
      (match _lh_updateState_arg2_2 with
        | `Bono -> 
          (let rec _lh_updateState_State_3_2 = _lh_updateState_State_3_1 in
            (let rec _lh_updateState_State_2_2 = _lh_updateState_State_2_1 in
              (let rec _lh_updateState_State_1_2 = _lh_updateState_State_1_1 in
                (let rec _lh_updateState_State_0_2 = _lh_updateState_arg3_2 in
                  (fun _lh_updateState_arg2_3 _lh_updateState_arg3_3 -> 
                    (match _lh_updateState_arg2_3 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_3, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_State_3_2))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_arg3_3, _lh_updateState_State_2_2, _lh_updateState_State_3_2))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_arg3_3, _lh_updateState_State_3_2))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_arg3_3))
                      | _ -> 
                        (failwith "error")))))))
        | `Edge -> 
          (let rec _lh_updateState_State_3_3 = _lh_updateState_State_3_1 in
            (let rec _lh_updateState_State_2_3 = _lh_updateState_State_2_1 in
              (let rec _lh_updateState_State_1_3 = _lh_updateState_arg3_2 in
                (let rec _lh_updateState_State_0_3 = _lh_updateState_State_0_1 in
                  (fun _lh_updateState_arg2_4 _lh_updateState_arg3_4 -> 
                    (match _lh_updateState_arg2_4 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_4, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_State_3_3))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_arg3_4, _lh_updateState_State_2_3, _lh_updateState_State_3_3))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_arg3_4, _lh_updateState_State_3_3))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_arg3_4))
                      | _ -> 
                        (failwith "error")))))))
        | `Larry -> 
          (let rec _lh_updateState_State_3_4 = _lh_updateState_State_3_1 in
            (let rec _lh_updateState_State_2_4 = _lh_updateState_arg3_2 in
              (let rec _lh_updateState_State_1_4 = _lh_updateState_State_1_1 in
                (let rec _lh_updateState_State_0_4 = _lh_updateState_State_0_1 in
                  (fun _lh_updateState_arg2_5 _lh_updateState_arg3_5 -> 
                    (match _lh_updateState_arg2_5 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_5, _lh_updateState_State_1_4, _lh_updateState_State_2_4, _lh_updateState_State_3_4))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_arg3_5, _lh_updateState_State_2_4, _lh_updateState_State_3_4))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_State_1_4, _lh_updateState_arg3_5, _lh_updateState_State_3_4))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_State_1_4, _lh_updateState_State_2_4, _lh_updateState_arg3_5))
                      | _ -> 
                        (failwith "error")))))))
        | `Adam -> 
          (let rec _lh_updateState_State_3_5 = _lh_updateState_arg3_2 in
            (let rec _lh_updateState_State_2_5 = _lh_updateState_State_2_1 in
              (let rec _lh_updateState_State_1_5 = _lh_updateState_State_1_1 in
                (let rec _lh_updateState_State_0_5 = _lh_updateState_State_0_1 in
                  (fun _lh_updateState_arg2_6 _lh_updateState_arg3_6 -> 
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
                        (failwith "error")))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec writeItem__d0 _lh_writeItem_arg1_2 _lh_writeItem_arg2_6 _lh_writeItem_arg3_6 =
  ((_lh_writeItem_arg1_2 _lh_writeItem_arg2_6) _lh_writeItem_arg3_6);;
let rec writeItem__d1 _lh_writeItem_arg1_0 _lh_writeItem_arg2_0 _lh_writeItem_arg3_0 =
  ((_lh_writeItem_arg1_0 _lh_writeItem_arg2_0) _lh_writeItem_arg3_0);;
let rec writeItem__d2 _lh_writeItem_arg1_1 _lh_writeItem_arg2_1 _lh_writeItem_arg3_1 =
  ((_lh_writeItem_arg1_1 _lh_writeItem_arg2_1) _lh_writeItem_arg3_1);;
let rec writeItem__d3 _lh_writeItem_arg1_3 _lh_writeItem_arg2_7 _lh_writeItem_arg3_7 =
  ((_lh_writeItem_arg1_3 _lh_writeItem_arg2_7) _lh_writeItem_arg3_7);;
let rec writeSolutions__d0 _lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_5 =
  (_lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_5);;
let rec itemFromTo__d0 _lh_itemFromTo_arg1_2 _lh_itemFromTo_arg2_2 =
  (if (_lh_itemFromTo_arg1_2 = _lh_itemFromTo_arg2_2) then
    (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_1_3 _lh_transfer_arg1_7 _lh_transfer_arg2_7 _lh_transfer_arg3_7 _lh_transfer_arg4_7 _lh_transfer_arg5_7 newHistory_7 newLocation_7 _lh_dummy_3 ys_4_0_6 -> 
      ys_4_0_6) in
      (let rec _lh_listcomp_fun_ls_h_7 = _lh_itemFromTo_arg1_2 in
        (fun _lh_listcomp_fun_1_4 _lh_transfer_arg1_8 _lh_transfer_arg2_8 _lh_transfer_arg3_8 _lh_transfer_arg4_8 _lh_transfer_arg5_8 newHistory_8 newLocation_8 -> 
          (if (((position__d0 _lh_listcomp_fun_ls_h_7) _lh_transfer_arg2_8) = _lh_transfer_arg3_8) then
            (let rec newDest_2 = (((updateState__d0 _lh_transfer_arg2_8) _lh_listcomp_fun_ls_h_7) newLocation_8) in
              (if ((notSeen__d0 newDest_2) _lh_transfer_arg5_8) then
                (let rec newTime_2 = (_lh_transfer_arg4_8 + (u2times__d0 _lh_listcomp_fun_ls_h_7)) in
                  (let rec t_3_7_0 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7) in
                    (let rec h_3_7_0 = (((((transfer__d0 _lh_transfer_arg1_8) newDest_2) newLocation_8) newTime_2) newHistory_8) in
                      (fun _lh_dummy_4 -> 
                        ((mappend__d0 h_3_7_0) (concat__d0 t_3_7_0))))))
              else
                (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7)))
          else
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_7)))))
  else
    (let rec _lh_listcomp_fun_ls_t_8 = ((itemFromTo__d0 (succItem__d0 _lh_itemFromTo_arg1_2)) _lh_itemFromTo_arg2_2) in
      (let rec _lh_listcomp_fun_ls_h_8 = _lh_itemFromTo_arg1_2 in
        (fun _lh_listcomp_fun_1_5 _lh_transfer_arg1_9 _lh_transfer_arg2_9 _lh_transfer_arg3_9 _lh_transfer_arg4_9 _lh_transfer_arg5_9 newHistory_9 newLocation_9 -> 
          (if (((position__d0 _lh_listcomp_fun_ls_h_8) _lh_transfer_arg2_9) = _lh_transfer_arg3_9) then
            (let rec newDest_3 = (((updateState__d0 _lh_transfer_arg2_9) _lh_listcomp_fun_ls_h_8) newLocation_9) in
              (if ((notSeen__d0 newDest_3) _lh_transfer_arg5_9) then
                (let rec newTime_3 = (_lh_transfer_arg4_9 + (u2times__d0 _lh_listcomp_fun_ls_h_8)) in
                  (let rec t_3_7_1 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_8) in
                    (let rec h_3_7_1 = (((((transfer__d0 _lh_transfer_arg1_9) newDest_3) newLocation_9) newTime_3) newHistory_9) in
                      (fun _lh_dummy_5 -> 
                        ((mappend__d0 h_3_7_1) (concat__d0 t_3_7_1))))))
              else
                (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_8)))
          else
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_8))))))
and itemFromTo__d1 _lh_itemFromTo_arg1_1 _lh_itemFromTo_arg2_1 =
  (if (_lh_itemFromTo_arg1_1 = _lh_itemFromTo_arg2_1) then
    (let rec _lh_listcomp_fun_ls_t_5 = (fun _lh_listcomp_fun_8 _lh_transfer_arg1_4 _lh_transfer_arg2_4 _lh_transfer_arg3_4 _lh_transfer_arg4_4 _lh_transfer_arg5_4 newHistory_4 newLocation_4 _lh_dummy_2 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_5 = _lh_itemFromTo_arg1_1 in
        (fun _lh_listcomp_fun_9 _lh_transfer_arg1_5 _lh_transfer_arg2_5 _lh_transfer_arg3_5 _lh_transfer_arg4_5 _lh_transfer_arg5_5 newHistory_5 newLocation_5 -> 
          (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_2 -> 
            (((((((((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_5) _lh_listcomp_fun_1_0) _lh_transfer_arg1_5) _lh_transfer_arg2_5) _lh_transfer_arg3_5) _lh_transfer_arg4_5) _lh_transfer_arg5_5) newHistory_5) newLocation_5) _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_9)) in
            (_lh_listcomp_fun_1_0 ((itemFromTo__d2 (succItem__d3 _lh_listcomp_fun_ls_h_5)) (`Adam)))))))
  else
    (let rec _lh_listcomp_fun_ls_t_6 = ((itemFromTo__d1 (succItem__d1 _lh_itemFromTo_arg1_1)) _lh_itemFromTo_arg2_1) in
      (let rec _lh_listcomp_fun_ls_h_6 = _lh_itemFromTo_arg1_1 in
        (fun _lh_listcomp_fun_1_1 _lh_transfer_arg1_6 _lh_transfer_arg2_6 _lh_transfer_arg3_6 _lh_transfer_arg4_6 _lh_transfer_arg5_6 newHistory_6 newLocation_6 -> 
          (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_3 -> 
            (((((((((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_6) _lh_listcomp_fun_1_2) _lh_transfer_arg1_6) _lh_transfer_arg2_6) _lh_transfer_arg3_6) _lh_transfer_arg4_6) _lh_transfer_arg5_6) newHistory_6) newLocation_6) _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_1_1)) in
            (_lh_listcomp_fun_1_2 ((itemFromTo__d2 (succItem__d3 _lh_listcomp_fun_ls_h_6)) (`Adam))))))))
and itemFromTo__d2 _lh_itemFromTo_arg1_0 _lh_itemFromTo_arg2_0 =
  (if (_lh_itemFromTo_arg1_0 = _lh_itemFromTo_arg2_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = (fun _lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_0 _lh_transfer_arg1_0 _lh_transfer_arg2_0 _lh_transfer_arg3_0 _lh_transfer_arg4_0 _lh_transfer_arg5_0 newHistory_0 newLocation_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
      (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)) in
      (let rec _lh_listcomp_fun_ls_h_1 = _lh_itemFromTo_arg1_0 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_transfer_arg1_1 _lh_transfer_arg2_1 _lh_transfer_arg3_1 _lh_transfer_arg4_1 _lh_transfer_arg5_1 newHistory_1 newLocation_1 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
          (if ((((position__d1 _lh_listcomp_fun_ls_h_2) _lh_transfer_arg2_1) = _lh_transfer_arg3_1) && (((position__d2 _lh_listcomp_fun_ls_h_1) _lh_transfer_arg2_1) = _lh_transfer_arg3_1)) then
            (let rec newDest_0 = (((updateState__d1 (((updateState__d2 _lh_transfer_arg2_1) _lh_listcomp_fun_ls_h_2) newLocation_1)) _lh_listcomp_fun_ls_h_1) newLocation_1) in
              (if ((notSeen__d1 newDest_0) _lh_transfer_arg5_1) then
                (let rec newTime_0 = (_lh_transfer_arg4_1 + (u2times__d1 _lh_listcomp_fun_ls_h_2)) in
                  (let rec t_2 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0) in
                    (let rec h_2 = (((((transfer__d0 _lh_transfer_arg1_1) newDest_0) newLocation_1) newTime_0) newHistory_1) in
                      (fun _lh_dummy_0 -> 
                        ((mappend__d1 h_2) (concat__d1 t_2))))))
              else
                (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0)))
          else
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0)))))
  else
    (let rec _lh_listcomp_fun_ls_t_3 = ((itemFromTo__d2 (succItem__d2 _lh_itemFromTo_arg1_0)) _lh_itemFromTo_arg2_0) in
      (let rec _lh_listcomp_fun_ls_h_3 = _lh_itemFromTo_arg1_0 in
        (fun _lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_4 _lh_transfer_arg1_2 _lh_transfer_arg2_2 _lh_transfer_arg3_2 _lh_transfer_arg4_2 _lh_transfer_arg5_2 newHistory_2 newLocation_2 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_5 -> 
          (if ((((position__d1 _lh_listcomp_fun_ls_h_4) _lh_transfer_arg2_2) = _lh_transfer_arg3_2) && (((position__d2 _lh_listcomp_fun_ls_h_3) _lh_transfer_arg2_2) = _lh_transfer_arg3_2)) then
            (let rec newDest_1 = (((updateState__d1 (((updateState__d2 _lh_transfer_arg2_2) _lh_listcomp_fun_ls_h_4) newLocation_2)) _lh_listcomp_fun_ls_h_3) newLocation_2) in
              (if ((notSeen__d1 newDest_1) _lh_transfer_arg5_2) then
                (let rec newTime_1 = (_lh_transfer_arg4_2 + (u2times__d1 _lh_listcomp_fun_ls_h_4)) in
                  (let rec t_3 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3) in
                    (let rec h_3 = (((((transfer__d0 _lh_transfer_arg1_2) newDest_1) newLocation_2) newTime_1) newHistory_2) in
                      (fun _lh_dummy_1 -> 
                        ((mappend__d1 h_3) (concat__d1 t_3))))))
              else
                (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3)))
          else
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3))))))
and mappend__d0 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_4, t_4) -> 
      (let rec t_5 = ((mappend__d0 t_4) ys_8) in
        (let rec h_5 = h_4 in
          (fun ys_9 -> 
            (`LH_C(h_5, ((mappend__d2 t_5) ys_9))))))
    | `LH_N -> 
      ys_8)
and minSolutions__d0 _lh_minSolutions_arg1_0 =
  (match _lh_minSolutions_arg1_0 with
    | `LH_N -> 
      (fun _lh_writeSolutions_arg2_1 x_1 -> 
        x_1)
    | `LH_C(_lh_minSolutions_LH_C_0_0, _lh_minSolutions_LH_C_1_0) -> 
      (let rec minAcc_0 = (fun minSoFar_0 mins_0 ls_3 -> 
        (let rec _lh_matchIdent_1 = ls_3 in
          (match _lh_matchIdent_1 with
            | `LH_N -> 
              mins_0
            | `LH_C(_lh_minSolutions_LH_C_0_1, _lh_minSolutions_LH_C_1_1) -> 
              (let rec total_0 = (totalTime__d0 _lh_minSolutions_LH_C_0_1) in
                (if (minSoFar_0 < total_0) then
                  (((minAcc_0 minSoFar_0) mins_0) _lh_minSolutions_LH_C_1_1)
                else
                  (if (minSoFar_0 = total_0) then
                    (((minAcc_0 minSoFar_0) (let rec t_3_7_2 = mins_0 in
                      (let rec h_3_7_2 = _lh_minSolutions_LH_C_0_1 in
                        (fun a_1 -> 
                          ((reverse_helper__d0 t_3_7_2) (let rec _lh_writeSolutions_LH_C_1_0 = a_1 in
                            (let rec _lh_writeSolutions_LH_C_0_0 = h_3_7_2 in
                              (fun _lh_writeSolutions_arg2_2 _lh_funcomp_x_5 -> 
                                ((fun _lh_funcomp_x_6 -> 
                                  ((fun _lh_funcomp_x_7 -> 
                                    ((fun _lh_funcomp_x_8 -> 
                                      ((fun x_2 -> 
                                        ((mappend__d3 (let rec t_3_7_3 = (let rec t_3_7_4 = (let rec t_3_7_5 = (let rec t_3_7_6 = (let rec t_3_7_7 = (let rec t_3_7_8 = (let rec t_3_7_9 = (let rec t_3_8_0 = (let rec t_3_8_1 = (fun ys_4_0_8 -> 
                                          ys_4_0_8) in
                                          (let rec h_3_7_3 = ' ' in
                                            (fun ys_4_0_9 -> 
                                              (`LH_C(h_3_7_3, ((mappend__d3 t_3_8_1) ys_4_0_9)))))) in
                                          (let rec h_3_7_4 = 'n' in
                                            (fun ys_4_1_0 -> 
                                              (`LH_C(h_3_7_4, ((mappend__d3 t_3_8_0) ys_4_1_0)))))) in
                                          (let rec h_3_7_5 = 'o' in
                                            (fun ys_4_1_1 -> 
                                              (`LH_C(h_3_7_5, ((mappend__d3 t_3_7_9) ys_4_1_1)))))) in
                                          (let rec h_3_7_6 = 'i' in
                                            (fun ys_4_1_2 -> 
                                              (`LH_C(h_3_7_6, ((mappend__d3 t_3_7_8) ys_4_1_2)))))) in
                                          (let rec h_3_7_7 = 't' in
                                            (fun ys_4_1_3 -> 
                                              (`LH_C(h_3_7_7, ((mappend__d3 t_3_7_7) ys_4_1_3)))))) in
                                          (let rec h_3_7_8 = 'u' in
                                            (fun ys_4_1_4 -> 
                                              (`LH_C(h_3_7_8, ((mappend__d3 t_3_7_6) ys_4_1_4)))))) in
                                          (let rec h_3_7_9 = 'l' in
                                            (fun ys_4_1_5 -> 
                                              (`LH_C(h_3_7_9, ((mappend__d3 t_3_7_5) ys_4_1_5)))))) in
                                          (let rec h_3_8_0 = 'o' in
                                            (fun ys_4_1_6 -> 
                                              (`LH_C(h_3_8_0, ((mappend__d3 t_3_7_4) ys_4_1_6)))))) in
                                          (let rec h_3_8_1 = 'S' in
                                            (fun ys_4_1_7 -> 
                                              (`LH_C(h_3_8_1, ((mappend__d3 t_3_7_3) ys_4_1_7))))))) x_2)) ((fun x_3 -> 
                                        ((mappend__d4 (string_of_int _lh_writeSolutions_arg2_2)) x_3)) _lh_funcomp_x_8))) ((fun x_4 -> 
                                      (`LH_C('|', x_4))) _lh_funcomp_x_7))) ((writeHistory__d0 _lh_writeSolutions_LH_C_0_0) _lh_funcomp_x_6))) (((writeSolutions__d0 _lh_writeSolutions_LH_C_1_0) (_lh_writeSolutions_arg2_2 + 1)) _lh_funcomp_x_5)))))))))) _lh_minSolutions_LH_C_1_1)
                  else
                    (((minAcc_0 total_0) (let rec t_3_8_2 = (fun a_2 -> 
                      a_2) in
                      (let rec h_3_8_2 = _lh_minSolutions_LH_C_0_1 in
                        (fun a_3 -> 
                          ((reverse_helper__d0 t_3_8_2) (let rec _lh_writeSolutions_LH_C_1_1 = a_3 in
                            (let rec _lh_writeSolutions_LH_C_0_1 = h_3_8_2 in
                              (fun _lh_writeSolutions_arg2_3 _lh_funcomp_x_9 -> 
                                ((fun _lh_funcomp_x_1_0 -> 
                                  ((fun _lh_funcomp_x_1_1 -> 
                                    ((fun _lh_funcomp_x_1_2 -> 
                                      ((fun x_5 -> 
                                        ((mappend__d3 (let rec t_3_8_3 = (let rec t_3_8_4 = (let rec t_3_8_5 = (let rec t_3_8_6 = (let rec t_3_8_7 = (let rec t_3_8_8 = (let rec t_3_8_9 = (let rec t_3_9_0 = (let rec t_3_9_1 = (fun ys_4_1_8 -> 
                                          ys_4_1_8) in
                                          (let rec h_3_8_3 = ' ' in
                                            (fun ys_4_1_9 -> 
                                              (`LH_C(h_3_8_3, ((mappend__d3 t_3_9_1) ys_4_1_9)))))) in
                                          (let rec h_3_8_4 = 'n' in
                                            (fun ys_4_2_0 -> 
                                              (`LH_C(h_3_8_4, ((mappend__d3 t_3_9_0) ys_4_2_0)))))) in
                                          (let rec h_3_8_5 = 'o' in
                                            (fun ys_4_2_1 -> 
                                              (`LH_C(h_3_8_5, ((mappend__d3 t_3_8_9) ys_4_2_1)))))) in
                                          (let rec h_3_8_6 = 'i' in
                                            (fun ys_4_2_2 -> 
                                              (`LH_C(h_3_8_6, ((mappend__d3 t_3_8_8) ys_4_2_2)))))) in
                                          (let rec h_3_8_7 = 't' in
                                            (fun ys_4_2_3 -> 
                                              (`LH_C(h_3_8_7, ((mappend__d3 t_3_8_7) ys_4_2_3)))))) in
                                          (let rec h_3_8_8 = 'u' in
                                            (fun ys_4_2_4 -> 
                                              (`LH_C(h_3_8_8, ((mappend__d3 t_3_8_6) ys_4_2_4)))))) in
                                          (let rec h_3_8_9 = 'l' in
                                            (fun ys_4_2_5 -> 
                                              (`LH_C(h_3_8_9, ((mappend__d3 t_3_8_5) ys_4_2_5)))))) in
                                          (let rec h_3_9_0 = 'o' in
                                            (fun ys_4_2_6 -> 
                                              (`LH_C(h_3_9_0, ((mappend__d3 t_3_8_4) ys_4_2_6)))))) in
                                          (let rec h_3_9_1 = 'S' in
                                            (fun ys_4_2_7 -> 
                                              (`LH_C(h_3_9_1, ((mappend__d3 t_3_8_3) ys_4_2_7))))))) x_5)) ((fun x_6 -> 
                                        ((mappend__d4 (string_of_int _lh_writeSolutions_arg2_3)) x_6)) _lh_funcomp_x_1_2))) ((fun x_7 -> 
                                      (`LH_C('|', x_7))) _lh_funcomp_x_1_1))) ((writeHistory__d0 _lh_writeSolutions_LH_C_0_1) _lh_funcomp_x_1_0))) (((writeSolutions__d0 _lh_writeSolutions_LH_C_1_1) (_lh_writeSolutions_arg2_3 + 1)) _lh_funcomp_x_9)))))))))) _lh_minSolutions_LH_C_1_1))))
            | _ -> 
              (failwith "error")))) in
        (reverse__d0 (((minAcc_0 (totalTime__d1 _lh_minSolutions_LH_C_0_0)) (let rec t_3_9_2 = (fun a_4 -> 
          a_4) in
          (let rec h_3_9_2 = _lh_minSolutions_LH_C_0_0 in
            (fun a_5 -> 
              ((reverse_helper__d0 t_3_9_2) (let rec _lh_writeSolutions_LH_C_1_2 = a_5 in
                (let rec _lh_writeSolutions_LH_C_0_2 = h_3_9_2 in
                  (fun _lh_writeSolutions_arg2_4 _lh_funcomp_x_1_3 -> 
                    ((fun _lh_funcomp_x_1_4 -> 
                      ((fun _lh_funcomp_x_1_5 -> 
                        ((fun _lh_funcomp_x_1_6 -> 
                          ((fun x_8 -> 
                            ((mappend__d3 (let rec t_3_9_3 = (let rec t_3_9_4 = (let rec t_3_9_5 = (let rec t_3_9_6 = (let rec t_3_9_7 = (let rec t_3_9_8 = (let rec t_3_9_9 = (let rec t_4_0_0 = (let rec t_4_0_1 = (fun ys_4_2_8 -> 
                              ys_4_2_8) in
                              (let rec h_3_9_3 = ' ' in
                                (fun ys_4_2_9 -> 
                                  (`LH_C(h_3_9_3, ((mappend__d3 t_4_0_1) ys_4_2_9)))))) in
                              (let rec h_3_9_4 = 'n' in
                                (fun ys_4_3_0 -> 
                                  (`LH_C(h_3_9_4, ((mappend__d3 t_4_0_0) ys_4_3_0)))))) in
                              (let rec h_3_9_5 = 'o' in
                                (fun ys_4_3_1 -> 
                                  (`LH_C(h_3_9_5, ((mappend__d3 t_3_9_9) ys_4_3_1)))))) in
                              (let rec h_3_9_6 = 'i' in
                                (fun ys_4_3_2 -> 
                                  (`LH_C(h_3_9_6, ((mappend__d3 t_3_9_8) ys_4_3_2)))))) in
                              (let rec h_3_9_7 = 't' in
                                (fun ys_4_3_3 -> 
                                  (`LH_C(h_3_9_7, ((mappend__d3 t_3_9_7) ys_4_3_3)))))) in
                              (let rec h_3_9_8 = 'u' in
                                (fun ys_4_3_4 -> 
                                  (`LH_C(h_3_9_8, ((mappend__d3 t_3_9_6) ys_4_3_4)))))) in
                              (let rec h_3_9_9 = 'l' in
                                (fun ys_4_3_5 -> 
                                  (`LH_C(h_3_9_9, ((mappend__d3 t_3_9_5) ys_4_3_5)))))) in
                              (let rec h_4_0_0 = 'o' in
                                (fun ys_4_3_6 -> 
                                  (`LH_C(h_4_0_0, ((mappend__d3 t_3_9_4) ys_4_3_6)))))) in
                              (let rec h_4_0_1 = 'S' in
                                (fun ys_4_3_7 -> 
                                  (`LH_C(h_4_0_1, ((mappend__d3 t_3_9_3) ys_4_3_7))))))) x_8)) ((fun x_9 -> 
                            ((mappend__d4 (string_of_int _lh_writeSolutions_arg2_4)) x_9)) _lh_funcomp_x_1_6))) ((fun x_1_0 -> 
                          (`LH_C('|', x_1_0))) _lh_funcomp_x_1_5))) ((writeHistory__d0 _lh_writeSolutions_LH_C_0_2) _lh_funcomp_x_1_4))) (((writeSolutions__d0 _lh_writeSolutions_LH_C_1_2) (_lh_writeSolutions_arg2_4 + 1)) _lh_funcomp_x_1_3)))))))))) _lh_minSolutions_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and notSeen__d0 _lh_notSeen_arg1_1 =
  (all__d0 (fun _s_1 -> 
    (let rec _lh_matchIdent_3 = _s_1 in
      (match _lh_matchIdent_3 with
        | `LH_P2(_lh_notSeen_LH_P2_0_1, _lh_notSeen_LH_P2_1_1) -> 
          (_lh_notSeen_arg1_1 <> _lh_notSeen_LH_P2_1_1)
        | _ -> 
          (failwith "error")))))
and notSeen__d1 _lh_notSeen_arg1_0 =
  (all__d1 (fun _s_0 -> 
    (let rec _lh_matchIdent_0 = _s_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_notSeen_LH_P2_0_0, _lh_notSeen_LH_P2_1_0) -> 
          (_lh_notSeen_arg1_0 <> _lh_notSeen_LH_P2_1_0)
        | _ -> 
          (failwith "error")))))
and position__d0 _lh_position_arg1_1 =
  (match _lh_position_arg1_1 with
    | `Bono -> 
      bonoPos__d0
    | `Edge -> 
      edgePos__d0
    | `Larry -> 
      larryPos__d0
    | `Adam -> 
      adamPos__d0
    | _ -> 
      (failwith "error"))
and position__d1 _lh_position_arg1_0 =
  (match _lh_position_arg1_0 with
    | `Bono -> 
      bonoPos__d1
    | `Edge -> 
      edgePos__d1
    | `Larry -> 
      larryPos__d1
    | `Adam -> 
      adamPos__d1
    | _ -> 
      (failwith "error"))
and position__d2 _lh_position_arg1_2 =
  (match _lh_position_arg1_2 with
    | `Bono -> 
      bonoPos__d2
    | `Edge -> 
      edgePos__d2
    | `Larry -> 
      larryPos__d2
    | `Adam -> 
      adamPos__d2
    | _ -> 
      (failwith "error"))
and reverse__d0 ls_1 =
  ((reverse_helper__d0 ls_1) (fun _lh_writeSolutions_arg2_0 x_0 -> 
    x_0))
and testPuzzle_nofib__d0 _lh_testPuzzle_nofib_arg1_0 =
  (let rec time_0 = (if ((length__d0 _lh_testPuzzle_nofib_arg1_0) = 1) then
    0
  else
    ((failwith "error") (`LH_C('p', (`LH_C('u', (`LH_C('z', (`LH_C('z', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec solutions_0 = (((((transfer__d0 initialState__d0) finalState__d0) (`RightBank)) time_0) (`LH_N)) in
      (let rec mins_1 = (minSolutions__d0 solutions_0) in
        (((writeSolutions__d0 mins_1) 1) (`LH_N)))))
and transfer__d0 _lh_transfer_arg1_3 _lh_transfer_arg2_3 _lh_transfer_arg3_3 _lh_transfer_arg4_3 _lh_transfer_arg5_3 =
  (if (_lh_transfer_arg1_3 = _lh_transfer_arg2_3) then
    (`LH_C((`LH_C((`LH_P2(_lh_transfer_arg4_3, _lh_transfer_arg2_3)), _lh_transfer_arg5_3)), (`LH_N)))
  else
    (let rec newHistory_3 = (`LH_C((`LH_P2(_lh_transfer_arg4_3, _lh_transfer_arg2_3)), _lh_transfer_arg5_3)) in
      (let rec newLocation_3 = (opposite__d0 _lh_transfer_arg3_3) in
        (let rec moveOne_0 = (concat__d0 (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_0 -> 
          ((((((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_6) _lh_transfer_arg1_3) _lh_transfer_arg2_3) _lh_transfer_arg3_3) _lh_transfer_arg4_3) _lh_transfer_arg5_3) newHistory_3) newLocation_3)) in
          (_lh_listcomp_fun_6 ((itemFromTo__d0 (`Bono)) (`Adam))))) in
          (let rec moveTwo_0 = (concat__d1 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_1 -> 
            ((((((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_7) _lh_transfer_arg1_3) _lh_transfer_arg2_3) _lh_transfer_arg3_3) _lh_transfer_arg4_3) _lh_transfer_arg5_3) newHistory_3) newLocation_3)) in
            (_lh_listcomp_fun_7 ((itemFromTo__d1 (`Bono)) (`Larry))))) in
            ((mappend__d2 moveOne_0) moveTwo_0))))))
and writeHistory__d0 _lh_writeHistory_arg1_0 =
  (match _lh_writeHistory_arg1_0 with
    | `LH_N -> 
      (fun x_1_1 -> 
        x_1_1)
    | _ -> 
      (((foldr__d0 (fun timestate_0 acc_0 -> 
        (let rec _lh_matchIdent_2 = timestate_0 in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_0, _lh_writeHistory_LH_P2_1_0) -> 
              (fun _lh_funcomp_x_1_7 -> 
                ((fun _lh_funcomp_x_1_8 -> 
                  ((fun _lh_funcomp_x_1_9 -> 
                    ((fun _lh_funcomp_x_2_0 -> 
                      ((fun x_1_2 -> 
                        ((mappend__d5 (let rec t_4_0_2 = (let rec t_4_0_3 = (let rec t_4_0_4 = (let rec t_4_0_5 = (let rec t_4_0_6 = (let rec t_4_0_7 = (fun ys_4_3_9 -> 
                          ys_4_3_9) in
                          (let rec h_4_0_2 = ' ' in
                            (fun ys_4_4_0 -> 
                              (`LH_C(h_4_0_2, ((mappend__d5 t_4_0_7) ys_4_4_0)))))) in
                          (let rec h_4_0_3 = ':' in
                            (fun ys_4_4_1 -> 
                              (`LH_C(h_4_0_3, ((mappend__d5 t_4_0_6) ys_4_4_1)))))) in
                          (let rec h_4_0_4 = 'e' in
                            (fun ys_4_4_2 -> 
                              (`LH_C(h_4_0_4, ((mappend__d5 t_4_0_5) ys_4_4_2)))))) in
                          (let rec h_4_0_5 = 'm' in
                            (fun ys_4_4_3 -> 
                              (`LH_C(h_4_0_5, ((mappend__d5 t_4_0_4) ys_4_4_3)))))) in
                          (let rec h_4_0_6 = 'i' in
                            (fun ys_4_4_4 -> 
                              (`LH_C(h_4_0_6, ((mappend__d5 t_4_0_3) ys_4_4_4)))))) in
                          (let rec h_4_0_7 = 'T' in
                            (fun ys_4_4_5 -> 
                              (`LH_C(h_4_0_7, ((mappend__d5 t_4_0_2) ys_4_4_5))))))) x_1_2)) ((fun x_1_3 -> 
                        ((mappend__d6 (string_of_int ((totalTime__d2 _lh_writeHistory_arg1_0) - _lh_writeHistory_LH_P2_0_0))) x_1_3)) _lh_funcomp_x_2_0))) ((fun x_1_4 -> 
                      (`LH_C('|', x_1_4))) _lh_funcomp_x_1_9))) ((writeState__d0 _lh_writeHistory_LH_P2_1_0) _lh_funcomp_x_1_8))) (acc_0 _lh_funcomp_x_1_7)))
            | _ -> 
              (failwith "error"))))) (fun x_1_5 -> 
        x_1_5)) _lh_writeHistory_arg1_0))
and writeState__d0 _lh_writeState_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        ((fun _lh_funcomp_x_4 -> 
          ((fun s_0 -> 
            ((mappend__d8 (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (fun ys_1_9 -> 
              ys_1_9) in
              (let rec h_6 = '|' in
                (fun ys_2_0 -> 
                  (`LH_C(h_6, ((mappend__d8 t_4_6) ys_2_0)))))) in
              (let rec h_7 = '-' in
                (fun ys_2_1 -> 
                  (`LH_C(h_7, ((mappend__d8 t_4_5) ys_2_1)))))) in
              (let rec h_8 = '-' in
                (fun ys_2_2 -> 
                  (`LH_C(h_8, ((mappend__d8 t_4_4) ys_2_2)))))) in
              (let rec h_9 = '-' in
                (fun ys_2_3 -> 
                  (`LH_C(h_9, ((mappend__d8 t_4_3) ys_2_3)))))) in
              (let rec h_1_0 = '-' in
                (fun ys_2_4 -> 
                  (`LH_C(h_1_0, ((mappend__d8 t_4_2) ys_2_4)))))) in
              (let rec h_1_1 = '-' in
                (fun ys_2_5 -> 
                  (`LH_C(h_1_1, ((mappend__d8 t_4_1) ys_2_5)))))) in
              (let rec h_1_2 = '-' in
                (fun ys_2_6 -> 
                  (`LH_C(h_1_2, ((mappend__d8 t_4_0) ys_2_6)))))) in
              (let rec h_1_3 = '-' in
                (fun ys_2_7 -> 
                  (`LH_C(h_1_3, ((mappend__d8 t_3_9) ys_2_7)))))) in
              (let rec h_1_4 = '-' in
                (fun ys_2_8 -> 
                  (`LH_C(h_1_4, ((mappend__d8 t_3_8) ys_2_8)))))) in
              (let rec h_1_5 = '-' in
                (fun ys_2_9 -> 
                  (`LH_C(h_1_5, ((mappend__d8 t_3_7) ys_2_9)))))) in
              (let rec h_1_6 = '-' in
                (fun ys_3_0 -> 
                  (`LH_C(h_1_6, ((mappend__d8 t_3_6) ys_3_0)))))) in
              (let rec h_1_7 = '-' in
                (fun ys_3_1 -> 
                  (`LH_C(h_1_7, ((mappend__d8 t_3_5) ys_3_1)))))) in
              (let rec h_1_8 = '-' in
                (fun ys_3_2 -> 
                  (`LH_C(h_1_8, ((mappend__d8 t_3_4) ys_3_2)))))) in
              (let rec h_1_9 = '-' in
                (fun ys_3_3 -> 
                  (`LH_C(h_1_9, ((mappend__d8 t_3_3) ys_3_3)))))) in
              (let rec h_2_0 = '-' in
                (fun ys_3_4 -> 
                  (`LH_C(h_2_0, ((mappend__d8 t_3_2) ys_3_4)))))) in
              (let rec h_2_1 = '-' in
                (fun ys_3_5 -> 
                  (`LH_C(h_2_1, ((mappend__d8 t_3_1) ys_3_5)))))) in
              (let rec h_2_2 = '-' in
                (fun ys_3_6 -> 
                  (`LH_C(h_2_2, ((mappend__d8 t_3_0) ys_3_6)))))) in
              (let rec h_2_3 = '-' in
                (fun ys_3_7 -> 
                  (`LH_C(h_2_3, ((mappend__d8 t_2_9) ys_3_7)))))) in
              (let rec h_2_4 = '-' in
                (fun ys_3_8 -> 
                  (`LH_C(h_2_4, ((mappend__d8 t_2_8) ys_3_8)))))) in
              (let rec h_2_5 = '-' in
                (fun ys_3_9 -> 
                  (`LH_C(h_2_5, ((mappend__d8 t_2_7) ys_3_9)))))) in
              (let rec h_2_6 = '-' in
                (fun ys_4_0 -> 
                  (`LH_C(h_2_6, ((mappend__d8 t_2_6) ys_4_0)))))) in
              (let rec h_2_7 = '-' in
                (fun ys_4_1 -> 
                  (`LH_C(h_2_7, ((mappend__d8 t_2_5) ys_4_1)))))) in
              (let rec h_2_8 = '-' in
                (fun ys_4_2 -> 
                  (`LH_C(h_2_8, ((mappend__d8 t_2_4) ys_4_2)))))) in
              (let rec h_2_9 = '-' in
                (fun ys_4_3 -> 
                  (`LH_C(h_2_9, ((mappend__d8 t_2_3) ys_4_3)))))) in
              (let rec h_3_0 = '-' in
                (fun ys_4_4 -> 
                  (`LH_C(h_3_0, ((mappend__d8 t_2_2) ys_4_4)))))) in
              (let rec h_3_1 = '-' in
                (fun ys_4_5 -> 
                  (`LH_C(h_3_1, ((mappend__d8 t_2_1) ys_4_5)))))) in
              (let rec h_3_2 = '-' in
                (fun ys_4_6 -> 
                  (`LH_C(h_3_2, ((mappend__d8 t_2_0) ys_4_6)))))) in
              (let rec h_3_3 = '-' in
                (fun ys_4_7 -> 
                  (`LH_C(h_3_3, ((mappend__d8 t_1_9) ys_4_7)))))) in
              (let rec h_3_4 = '-' in
                (fun ys_4_8 -> 
                  (`LH_C(h_3_4, ((mappend__d8 t_1_8) ys_4_8)))))) in
              (let rec h_3_5 = '-' in
                (fun ys_4_9 -> 
                  (`LH_C(h_3_5, ((mappend__d8 t_1_7) ys_4_9)))))) in
              (let rec h_3_6 = '-' in
                (fun ys_5_0 -> 
                  (`LH_C(h_3_6, ((mappend__d8 t_1_6) ys_5_0)))))) in
              (let rec h_3_7 = '-' in
                (fun ys_5_1 -> 
                  (`LH_C(h_3_7, ((mappend__d8 t_1_5) ys_5_1)))))) in
              (let rec h_3_8 = '-' in
                (fun ys_5_2 -> 
                  (`LH_C(h_3_8, ((mappend__d8 t_1_4) ys_5_2)))))) in
              (let rec h_3_9 = '-' in
                (fun ys_5_3 -> 
                  (`LH_C(h_3_9, ((mappend__d8 t_1_3) ys_5_3)))))) in
              (let rec h_4_0 = '-' in
                (fun ys_5_4 -> 
                  (`LH_C(h_4_0, ((mappend__d8 t_1_2) ys_5_4)))))) in
              (let rec h_4_1 = '-' in
                (fun ys_5_5 -> 
                  (`LH_C(h_4_1, ((mappend__d8 t_1_1) ys_5_5)))))) in
              (let rec h_4_2 = '-' in
                (fun ys_5_6 -> 
                  (`LH_C(h_4_2, ((mappend__d8 t_1_0) ys_5_6)))))) in
              (let rec h_4_3 = '-' in
                (fun ys_5_7 -> 
                  (`LH_C(h_4_3, ((mappend__d8 t_9) ys_5_7)))))) in
              (let rec h_4_4 = '-' in
                (fun ys_5_8 -> 
                  (`LH_C(h_4_4, ((mappend__d8 t_8) ys_5_8)))))) in
              (let rec h_4_5 = '-' in
                (fun ys_5_9 -> 
                  (`LH_C(h_4_5, ((mappend__d8 t_7) ys_5_9)))))) in
              (let rec h_4_6 = '-' in
                (fun ys_6_0 -> 
                  (`LH_C(h_4_6, ((mappend__d8 t_6) ys_6_0))))))) s_0)) (((writeItem__d0 (fun _lh_writeItem_arg2_2 _lh_writeItem_arg3_2 -> 
            (match _lh_writeItem_arg2_2 with
              | `LeftBank -> 
                ((mappend__d9 (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (fun ys_6_1 -> 
                  ys_6_1) in
                  (let rec h_4_7 = '|' in
                    (fun ys_6_2 -> 
                      (`LH_C(h_4_7, ((mappend__d9 t_7_8) ys_6_2)))))) in
                  (let rec h_4_8 = '|' in
                    (fun ys_6_3 -> 
                      (`LH_C(h_4_8, ((mappend__d9 t_7_7) ys_6_3)))))) in
                  (let rec h_4_9 = ' ' in
                    (fun ys_6_4 -> 
                      (`LH_C(h_4_9, ((mappend__d9 t_7_6) ys_6_4)))))) in
                  (let rec h_5_0 = ' ' in
                    (fun ys_6_5 -> 
                      (`LH_C(h_5_0, ((mappend__d9 t_7_5) ys_6_5)))))) in
                  (let rec h_5_1 = ' ' in
                    (fun ys_6_6 -> 
                      (`LH_C(h_5_1, ((mappend__d9 t_7_4) ys_6_6)))))) in
                  (let rec h_5_2 = ' ' in
                    (fun ys_6_7 -> 
                      (`LH_C(h_5_2, ((mappend__d9 t_7_3) ys_6_7)))))) in
                  (let rec h_5_3 = ' ' in
                    (fun ys_6_8 -> 
                      (`LH_C(h_5_3, ((mappend__d9 t_7_2) ys_6_8)))))) in
                  (let rec h_5_4 = ' ' in
                    (fun ys_6_9 -> 
                      (`LH_C(h_5_4, ((mappend__d9 t_7_1) ys_6_9)))))) in
                  (let rec h_5_5 = ' ' in
                    (fun ys_7_0 -> 
                      (`LH_C(h_5_5, ((mappend__d9 t_7_0) ys_7_0)))))) in
                  (let rec h_5_6 = ' ' in
                    (fun ys_7_1 -> 
                      (`LH_C(h_5_6, ((mappend__d9 t_6_9) ys_7_1)))))) in
                  (let rec h_5_7 = ' ' in
                    (fun ys_7_2 -> 
                      (`LH_C(h_5_7, ((mappend__d9 t_6_8) ys_7_2)))))) in
                  (let rec h_5_8 = ' ' in
                    (fun ys_7_3 -> 
                      (`LH_C(h_5_8, ((mappend__d9 t_6_7) ys_7_3)))))) in
                  (let rec h_5_9 = ' ' in
                    (fun ys_7_4 -> 
                      (`LH_C(h_5_9, ((mappend__d9 t_6_6) ys_7_4)))))) in
                  (let rec h_6_0 = ' ' in
                    (fun ys_7_5 -> 
                      (`LH_C(h_6_0, ((mappend__d9 t_6_5) ys_7_5)))))) in
                  (let rec h_6_1 = ' ' in
                    (fun ys_7_6 -> 
                      (`LH_C(h_6_1, ((mappend__d9 t_6_4) ys_7_6)))))) in
                  (let rec h_6_2 = ' ' in
                    (fun ys_7_7 -> 
                      (`LH_C(h_6_2, ((mappend__d9 t_6_3) ys_7_7)))))) in
                  (let rec h_6_3 = ' ' in
                    (fun ys_7_8 -> 
                      (`LH_C(h_6_3, ((mappend__d9 t_6_2) ys_7_8)))))) in
                  (let rec h_6_4 = ' ' in
                    (fun ys_7_9 -> 
                      (`LH_C(h_6_4, ((mappend__d9 t_6_1) ys_7_9)))))) in
                  (let rec h_6_5 = ' ' in
                    (fun ys_8_0 -> 
                      (`LH_C(h_6_5, ((mappend__d9 t_6_0) ys_8_0)))))) in
                  (let rec h_6_6 = ' ' in
                    (fun ys_8_1 -> 
                      (`LH_C(h_6_6, ((mappend__d9 t_5_9) ys_8_1)))))) in
                  (let rec h_6_7 = ' ' in
                    (fun ys_8_2 -> 
                      (`LH_C(h_6_7, ((mappend__d9 t_5_8) ys_8_2)))))) in
                  (let rec h_6_8 = ' ' in
                    (fun ys_8_3 -> 
                      (`LH_C(h_6_8, ((mappend__d9 t_5_7) ys_8_3)))))) in
                  (let rec h_6_9 = '|' in
                    (fun ys_8_4 -> 
                      (`LH_C(h_6_9, ((mappend__d9 t_5_6) ys_8_4)))))) in
                  (let rec h_7_0 = ' ' in
                    (fun ys_8_5 -> 
                      (`LH_C(h_7_0, ((mappend__d9 t_5_5) ys_8_5)))))) in
                  (let rec h_7_1 = 'o' in
                    (fun ys_8_6 -> 
                      (`LH_C(h_7_1, ((mappend__d9 t_5_4) ys_8_6)))))) in
                  (let rec h_7_2 = 'n' in
                    (fun ys_8_7 -> 
                      (`LH_C(h_7_2, ((mappend__d9 t_5_3) ys_8_7)))))) in
                  (let rec h_7_3 = 'o' in
                    (fun ys_8_8 -> 
                      (`LH_C(h_7_3, ((mappend__d9 t_5_2) ys_8_8)))))) in
                  (let rec h_7_4 = 'B' in
                    (fun ys_8_9 -> 
                      (`LH_C(h_7_4, ((mappend__d9 t_5_1) ys_8_9)))))) in
                  (let rec h_7_5 = ' ' in
                    (fun ys_9_0 -> 
                      (`LH_C(h_7_5, ((mappend__d9 t_5_0) ys_9_0)))))) in
                  (let rec h_7_6 = ' ' in
                    (fun ys_9_1 -> 
                      (`LH_C(h_7_6, ((mappend__d9 t_4_9) ys_9_1)))))) in
                  (let rec h_7_7 = ' ' in
                    (fun ys_9_2 -> 
                      (`LH_C(h_7_7, ((mappend__d9 t_4_8) ys_9_2)))))) in
                  (let rec h_7_8 = ' ' in
                    (fun ys_9_3 -> 
                      (`LH_C(h_7_8, ((mappend__d9 t_4_7) ys_9_3))))))) _lh_writeItem_arg3_2)
              | `RightBank -> 
                ((mappend__d1_d0 (let rec t_7_9 = (let rec t_8_0 = (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (let rec t_8_5 = (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (let rec t_1_1_5 = (fun ys_9_4 -> 
                  ys_9_4) in
                  (let rec h_7_9 = '|' in
                    (fun ys_9_5 -> 
                      (`LH_C(h_7_9, ((mappend__d1_d0 t_1_1_5) ys_9_5)))))) in
                  (let rec h_8_0 = 'o' in
                    (fun ys_9_6 -> 
                      (`LH_C(h_8_0, ((mappend__d1_d0 t_1_1_4) ys_9_6)))))) in
                  (let rec h_8_1 = 'n' in
                    (fun ys_9_7 -> 
                      (`LH_C(h_8_1, ((mappend__d1_d0 t_1_1_3) ys_9_7)))))) in
                  (let rec h_8_2 = 'o' in
                    (fun ys_9_8 -> 
                      (`LH_C(h_8_2, ((mappend__d1_d0 t_1_1_2) ys_9_8)))))) in
                  (let rec h_8_3 = 'B' in
                    (fun ys_9_9 -> 
                      (`LH_C(h_8_3, ((mappend__d1_d0 t_1_1_1) ys_9_9)))))) in
                  (let rec h_8_4 = ' ' in
                    (fun ys_1_0_0 -> 
                      (`LH_C(h_8_4, ((mappend__d1_d0 t_1_1_0) ys_1_0_0)))))) in
                  (let rec h_8_5 = '|' in
                    (fun ys_1_0_1 -> 
                      (`LH_C(h_8_5, ((mappend__d1_d0 t_1_0_9) ys_1_0_1)))))) in
                  (let rec h_8_6 = ' ' in
                    (fun ys_1_0_2 -> 
                      (`LH_C(h_8_6, ((mappend__d1_d0 t_1_0_8) ys_1_0_2)))))) in
                  (let rec h_8_7 = ' ' in
                    (fun ys_1_0_3 -> 
                      (`LH_C(h_8_7, ((mappend__d1_d0 t_1_0_7) ys_1_0_3)))))) in
                  (let rec h_8_8 = ' ' in
                    (fun ys_1_0_4 -> 
                      (`LH_C(h_8_8, ((mappend__d1_d0 t_1_0_6) ys_1_0_4)))))) in
                  (let rec h_8_9 = ' ' in
                    (fun ys_1_0_5 -> 
                      (`LH_C(h_8_9, ((mappend__d1_d0 t_1_0_5) ys_1_0_5)))))) in
                  (let rec h_9_0 = ' ' in
                    (fun ys_1_0_6 -> 
                      (`LH_C(h_9_0, ((mappend__d1_d0 t_1_0_4) ys_1_0_6)))))) in
                  (let rec h_9_1 = ' ' in
                    (fun ys_1_0_7 -> 
                      (`LH_C(h_9_1, ((mappend__d1_d0 t_1_0_3) ys_1_0_7)))))) in
                  (let rec h_9_2 = ' ' in
                    (fun ys_1_0_8 -> 
                      (`LH_C(h_9_2, ((mappend__d1_d0 t_1_0_2) ys_1_0_8)))))) in
                  (let rec h_9_3 = ' ' in
                    (fun ys_1_0_9 -> 
                      (`LH_C(h_9_3, ((mappend__d1_d0 t_1_0_1) ys_1_0_9)))))) in
                  (let rec h_9_4 = ' ' in
                    (fun ys_1_1_0 -> 
                      (`LH_C(h_9_4, ((mappend__d1_d0 t_1_0_0) ys_1_1_0)))))) in
                  (let rec h_9_5 = ' ' in
                    (fun ys_1_1_1 -> 
                      (`LH_C(h_9_5, ((mappend__d1_d0 t_9_9) ys_1_1_1)))))) in
                  (let rec h_9_6 = ' ' in
                    (fun ys_1_1_2 -> 
                      (`LH_C(h_9_6, ((mappend__d1_d0 t_9_8) ys_1_1_2)))))) in
                  (let rec h_9_7 = ' ' in
                    (fun ys_1_1_3 -> 
                      (`LH_C(h_9_7, ((mappend__d1_d0 t_9_7) ys_1_1_3)))))) in
                  (let rec h_9_8 = ' ' in
                    (fun ys_1_1_4 -> 
                      (`LH_C(h_9_8, ((mappend__d1_d0 t_9_6) ys_1_1_4)))))) in
                  (let rec h_9_9 = ' ' in
                    (fun ys_1_1_5 -> 
                      (`LH_C(h_9_9, ((mappend__d1_d0 t_9_5) ys_1_1_5)))))) in
                  (let rec h_1_0_0 = ' ' in
                    (fun ys_1_1_6 -> 
                      (`LH_C(h_1_0_0, ((mappend__d1_d0 t_9_4) ys_1_1_6)))))) in
                  (let rec h_1_0_1 = ' ' in
                    (fun ys_1_1_7 -> 
                      (`LH_C(h_1_0_1, ((mappend__d1_d0 t_9_3) ys_1_1_7)))))) in
                  (let rec h_1_0_2 = ' ' in
                    (fun ys_1_1_8 -> 
                      (`LH_C(h_1_0_2, ((mappend__d1_d0 t_9_2) ys_1_1_8)))))) in
                  (let rec h_1_0_3 = ' ' in
                    (fun ys_1_1_9 -> 
                      (`LH_C(h_1_0_3, ((mappend__d1_d0 t_9_1) ys_1_1_9)))))) in
                  (let rec h_1_0_4 = ' ' in
                    (fun ys_1_2_0 -> 
                      (`LH_C(h_1_0_4, ((mappend__d1_d0 t_9_0) ys_1_2_0)))))) in
                  (let rec h_1_0_5 = ' ' in
                    (fun ys_1_2_1 -> 
                      (`LH_C(h_1_0_5, ((mappend__d1_d0 t_8_9) ys_1_2_1)))))) in
                  (let rec h_1_0_6 = '|' in
                    (fun ys_1_2_2 -> 
                      (`LH_C(h_1_0_6, ((mappend__d1_d0 t_8_8) ys_1_2_2)))))) in
                  (let rec h_1_0_7 = ' ' in
                    (fun ys_1_2_3 -> 
                      (`LH_C(h_1_0_7, ((mappend__d1_d0 t_8_7) ys_1_2_3)))))) in
                  (let rec h_1_0_8 = ' ' in
                    (fun ys_1_2_4 -> 
                      (`LH_C(h_1_0_8, ((mappend__d1_d0 t_8_6) ys_1_2_4)))))) in
                  (let rec h_1_0_9 = ' ' in
                    (fun ys_1_2_5 -> 
                      (`LH_C(h_1_0_9, ((mappend__d1_d0 t_8_5) ys_1_2_5)))))) in
                  (let rec h_1_1_0 = ' ' in
                    (fun ys_1_2_6 -> 
                      (`LH_C(h_1_1_0, ((mappend__d1_d0 t_8_4) ys_1_2_6)))))) in
                  (let rec h_1_1_1 = ' ' in
                    (fun ys_1_2_7 -> 
                      (`LH_C(h_1_1_1, ((mappend__d1_d0 t_8_3) ys_1_2_7)))))) in
                  (let rec h_1_1_2 = ' ' in
                    (fun ys_1_2_8 -> 
                      (`LH_C(h_1_1_2, ((mappend__d1_d0 t_8_2) ys_1_2_8)))))) in
                  (let rec h_1_1_3 = ' ' in
                    (fun ys_1_2_9 -> 
                      (`LH_C(h_1_1_3, ((mappend__d1_d0 t_8_1) ys_1_2_9)))))) in
                  (let rec h_1_1_4 = ' ' in
                    (fun ys_1_3_0 -> 
                      (`LH_C(h_1_1_4, ((mappend__d1_d0 t_8_0) ys_1_3_0)))))) in
                  (let rec h_1_1_5 = ' ' in
                    (fun ys_1_3_1 -> 
                      (`LH_C(h_1_1_5, ((mappend__d1_d0 t_7_9) ys_1_3_1))))))) _lh_writeItem_arg3_2)
              | _ -> 
                (failwith "error")))) (bonoPos__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_4))) (((writeItem__d1 (fun _lh_writeItem_arg2_3 _lh_writeItem_arg3_3 -> 
          (match _lh_writeItem_arg2_3 with
            | `LeftBank -> 
              ((mappend__d1_d9 (let rec t_1_1_6 = (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (let rec t_1_2_1 = (let rec t_1_2_2 = (let rec t_1_2_3 = (let rec t_1_2_4 = (let rec t_1_2_5 = (let rec t_1_2_6 = (let rec t_1_2_7 = (let rec t_1_2_8 = (let rec t_1_2_9 = (let rec t_1_3_0 = (let rec t_1_3_1 = (let rec t_1_3_2 = (let rec t_1_3_3 = (let rec t_1_3_4 = (let rec t_1_3_5 = (let rec t_1_3_6 = (let rec t_1_3_7 = (let rec t_1_3_8 = (let rec t_1_3_9 = (let rec t_1_4_0 = (let rec t_1_4_1 = (let rec t_1_4_2 = (let rec t_1_4_3 = (let rec t_1_4_4 = (let rec t_1_4_5 = (let rec t_1_4_6 = (let rec t_1_4_7 = (fun ys_1_3_2 -> 
                ys_1_3_2) in
                (let rec h_1_1_6 = '|' in
                  (fun ys_1_3_3 -> 
                    (`LH_C(h_1_1_6, ((mappend__d1_d9 t_1_4_7) ys_1_3_3)))))) in
                (let rec h_1_1_7 = '|' in
                  (fun ys_1_3_4 -> 
                    (`LH_C(h_1_1_7, ((mappend__d1_d9 t_1_4_6) ys_1_3_4)))))) in
                (let rec h_1_1_8 = ' ' in
                  (fun ys_1_3_5 -> 
                    (`LH_C(h_1_1_8, ((mappend__d1_d9 t_1_4_5) ys_1_3_5)))))) in
                (let rec h_1_1_9 = ' ' in
                  (fun ys_1_3_6 -> 
                    (`LH_C(h_1_1_9, ((mappend__d1_d9 t_1_4_4) ys_1_3_6)))))) in
                (let rec h_1_2_0 = ' ' in
                  (fun ys_1_3_7 -> 
                    (`LH_C(h_1_2_0, ((mappend__d1_d9 t_1_4_3) ys_1_3_7)))))) in
                (let rec h_1_2_1 = ' ' in
                  (fun ys_1_3_8 -> 
                    (`LH_C(h_1_2_1, ((mappend__d1_d9 t_1_4_2) ys_1_3_8)))))) in
                (let rec h_1_2_2 = ' ' in
                  (fun ys_1_3_9 -> 
                    (`LH_C(h_1_2_2, ((mappend__d1_d9 t_1_4_1) ys_1_3_9)))))) in
                (let rec h_1_2_3 = ' ' in
                  (fun ys_1_4_0 -> 
                    (`LH_C(h_1_2_3, ((mappend__d1_d9 t_1_4_0) ys_1_4_0)))))) in
                (let rec h_1_2_4 = ' ' in
                  (fun ys_1_4_1 -> 
                    (`LH_C(h_1_2_4, ((mappend__d1_d9 t_1_3_9) ys_1_4_1)))))) in
                (let rec h_1_2_5 = ' ' in
                  (fun ys_1_4_2 -> 
                    (`LH_C(h_1_2_5, ((mappend__d1_d9 t_1_3_8) ys_1_4_2)))))) in
                (let rec h_1_2_6 = ' ' in
                  (fun ys_1_4_3 -> 
                    (`LH_C(h_1_2_6, ((mappend__d1_d9 t_1_3_7) ys_1_4_3)))))) in
                (let rec h_1_2_7 = ' ' in
                  (fun ys_1_4_4 -> 
                    (`LH_C(h_1_2_7, ((mappend__d1_d9 t_1_3_6) ys_1_4_4)))))) in
                (let rec h_1_2_8 = ' ' in
                  (fun ys_1_4_5 -> 
                    (`LH_C(h_1_2_8, ((mappend__d1_d9 t_1_3_5) ys_1_4_5)))))) in
                (let rec h_1_2_9 = ' ' in
                  (fun ys_1_4_6 -> 
                    (`LH_C(h_1_2_9, ((mappend__d1_d9 t_1_3_4) ys_1_4_6)))))) in
                (let rec h_1_3_0 = ' ' in
                  (fun ys_1_4_7 -> 
                    (`LH_C(h_1_3_0, ((mappend__d1_d9 t_1_3_3) ys_1_4_7)))))) in
                (let rec h_1_3_1 = ' ' in
                  (fun ys_1_4_8 -> 
                    (`LH_C(h_1_3_1, ((mappend__d1_d9 t_1_3_2) ys_1_4_8)))))) in
                (let rec h_1_3_2 = ' ' in
                  (fun ys_1_4_9 -> 
                    (`LH_C(h_1_3_2, ((mappend__d1_d9 t_1_3_1) ys_1_4_9)))))) in
                (let rec h_1_3_3 = ' ' in
                  (fun ys_1_5_0 -> 
                    (`LH_C(h_1_3_3, ((mappend__d1_d9 t_1_3_0) ys_1_5_0)))))) in
                (let rec h_1_3_4 = ' ' in
                  (fun ys_1_5_1 -> 
                    (`LH_C(h_1_3_4, ((mappend__d1_d9 t_1_2_9) ys_1_5_1)))))) in
                (let rec h_1_3_5 = ' ' in
                  (fun ys_1_5_2 -> 
                    (`LH_C(h_1_3_5, ((mappend__d1_d9 t_1_2_8) ys_1_5_2)))))) in
                (let rec h_1_3_6 = ' ' in
                  (fun ys_1_5_3 -> 
                    (`LH_C(h_1_3_6, ((mappend__d1_d9 t_1_2_7) ys_1_5_3)))))) in
                (let rec h_1_3_7 = ' ' in
                  (fun ys_1_5_4 -> 
                    (`LH_C(h_1_3_7, ((mappend__d1_d9 t_1_2_6) ys_1_5_4)))))) in
                (let rec h_1_3_8 = '|' in
                  (fun ys_1_5_5 -> 
                    (`LH_C(h_1_3_8, ((mappend__d1_d9 t_1_2_5) ys_1_5_5)))))) in
                (let rec h_1_3_9 = ' ' in
                  (fun ys_1_5_6 -> 
                    (`LH_C(h_1_3_9, ((mappend__d1_d9 t_1_2_4) ys_1_5_6)))))) in
                (let rec h_1_4_0 = 'e' in
                  (fun ys_1_5_7 -> 
                    (`LH_C(h_1_4_0, ((mappend__d1_d9 t_1_2_3) ys_1_5_7)))))) in
                (let rec h_1_4_1 = 'g' in
                  (fun ys_1_5_8 -> 
                    (`LH_C(h_1_4_1, ((mappend__d1_d9 t_1_2_2) ys_1_5_8)))))) in
                (let rec h_1_4_2 = 'd' in
                  (fun ys_1_5_9 -> 
                    (`LH_C(h_1_4_2, ((mappend__d1_d9 t_1_2_1) ys_1_5_9)))))) in
                (let rec h_1_4_3 = 'E' in
                  (fun ys_1_6_0 -> 
                    (`LH_C(h_1_4_3, ((mappend__d1_d9 t_1_2_0) ys_1_6_0)))))) in
                (let rec h_1_4_4 = ' ' in
                  (fun ys_1_6_1 -> 
                    (`LH_C(h_1_4_4, ((mappend__d1_d9 t_1_1_9) ys_1_6_1)))))) in
                (let rec h_1_4_5 = 'e' in
                  (fun ys_1_6_2 -> 
                    (`LH_C(h_1_4_5, ((mappend__d1_d9 t_1_1_8) ys_1_6_2)))))) in
                (let rec h_1_4_6 = 'h' in
                  (fun ys_1_6_3 -> 
                    (`LH_C(h_1_4_6, ((mappend__d1_d9 t_1_1_7) ys_1_6_3)))))) in
                (let rec h_1_4_7 = 'T' in
                  (fun ys_1_6_4 -> 
                    (`LH_C(h_1_4_7, ((mappend__d1_d9 t_1_1_6) ys_1_6_4))))))) _lh_writeItem_arg3_3)
            | `RightBank -> 
              ((mappend__d2_d0 (let rec t_1_4_8 = (let rec t_1_4_9 = (let rec t_1_5_0 = (let rec t_1_5_1 = (let rec t_1_5_2 = (let rec t_1_5_3 = (let rec t_1_5_4 = (let rec t_1_5_5 = (let rec t_1_5_6 = (let rec t_1_5_7 = (let rec t_1_5_8 = (let rec t_1_5_9 = (let rec t_1_6_0 = (let rec t_1_6_1 = (let rec t_1_6_2 = (let rec t_1_6_3 = (let rec t_1_6_4 = (let rec t_1_6_5 = (let rec t_1_6_6 = (let rec t_1_6_7 = (let rec t_1_6_8 = (let rec t_1_6_9 = (let rec t_1_7_0 = (let rec t_1_7_1 = (let rec t_1_7_2 = (let rec t_1_7_3 = (let rec t_1_7_4 = (let rec t_1_7_5 = (let rec t_1_7_6 = (let rec t_1_7_7 = (let rec t_1_7_8 = (let rec t_1_7_9 = (let rec t_1_8_0 = (let rec t_1_8_1 = (let rec t_1_8_2 = (let rec t_1_8_3 = (let rec t_1_8_4 = (let rec t_1_8_5 = (let rec t_1_8_6 = (let rec t_1_8_7 = (let rec t_1_8_8 = (fun ys_1_6_5 -> 
                ys_1_6_5) in
                (let rec h_1_4_8 = '|' in
                  (fun ys_1_6_6 -> 
                    (`LH_C(h_1_4_8, ((mappend__d2_d0 t_1_8_8) ys_1_6_6)))))) in
                (let rec h_1_4_9 = 'e' in
                  (fun ys_1_6_7 -> 
                    (`LH_C(h_1_4_9, ((mappend__d2_d0 t_1_8_7) ys_1_6_7)))))) in
                (let rec h_1_5_0 = 'g' in
                  (fun ys_1_6_8 -> 
                    (`LH_C(h_1_5_0, ((mappend__d2_d0 t_1_8_6) ys_1_6_8)))))) in
                (let rec h_1_5_1 = 'd' in
                  (fun ys_1_6_9 -> 
                    (`LH_C(h_1_5_1, ((mappend__d2_d0 t_1_8_5) ys_1_6_9)))))) in
                (let rec h_1_5_2 = 'E' in
                  (fun ys_1_7_0 -> 
                    (`LH_C(h_1_5_2, ((mappend__d2_d0 t_1_8_4) ys_1_7_0)))))) in
                (let rec h_1_5_3 = ' ' in
                  (fun ys_1_7_1 -> 
                    (`LH_C(h_1_5_3, ((mappend__d2_d0 t_1_8_3) ys_1_7_1)))))) in
                (let rec h_1_5_4 = 'e' in
                  (fun ys_1_7_2 -> 
                    (`LH_C(h_1_5_4, ((mappend__d2_d0 t_1_8_2) ys_1_7_2)))))) in
                (let rec h_1_5_5 = 'h' in
                  (fun ys_1_7_3 -> 
                    (`LH_C(h_1_5_5, ((mappend__d2_d0 t_1_8_1) ys_1_7_3)))))) in
                (let rec h_1_5_6 = 'T' in
                  (fun ys_1_7_4 -> 
                    (`LH_C(h_1_5_6, ((mappend__d2_d0 t_1_8_0) ys_1_7_4)))))) in
                (let rec h_1_5_7 = ' ' in
                  (fun ys_1_7_5 -> 
                    (`LH_C(h_1_5_7, ((mappend__d2_d0 t_1_7_9) ys_1_7_5)))))) in
                (let rec h_1_5_8 = '|' in
                  (fun ys_1_7_6 -> 
                    (`LH_C(h_1_5_8, ((mappend__d2_d0 t_1_7_8) ys_1_7_6)))))) in
                (let rec h_1_5_9 = ' ' in
                  (fun ys_1_7_7 -> 
                    (`LH_C(h_1_5_9, ((mappend__d2_d0 t_1_7_7) ys_1_7_7)))))) in
                (let rec h_1_6_0 = ' ' in
                  (fun ys_1_7_8 -> 
                    (`LH_C(h_1_6_0, ((mappend__d2_d0 t_1_7_6) ys_1_7_8)))))) in
                (let rec h_1_6_1 = ' ' in
                  (fun ys_1_7_9 -> 
                    (`LH_C(h_1_6_1, ((mappend__d2_d0 t_1_7_5) ys_1_7_9)))))) in
                (let rec h_1_6_2 = ' ' in
                  (fun ys_1_8_0 -> 
                    (`LH_C(h_1_6_2, ((mappend__d2_d0 t_1_7_4) ys_1_8_0)))))) in
                (let rec h_1_6_3 = ' ' in
                  (fun ys_1_8_1 -> 
                    (`LH_C(h_1_6_3, ((mappend__d2_d0 t_1_7_3) ys_1_8_1)))))) in
                (let rec h_1_6_4 = ' ' in
                  (fun ys_1_8_2 -> 
                    (`LH_C(h_1_6_4, ((mappend__d2_d0 t_1_7_2) ys_1_8_2)))))) in
                (let rec h_1_6_5 = ' ' in
                  (fun ys_1_8_3 -> 
                    (`LH_C(h_1_6_5, ((mappend__d2_d0 t_1_7_1) ys_1_8_3)))))) in
                (let rec h_1_6_6 = ' ' in
                  (fun ys_1_8_4 -> 
                    (`LH_C(h_1_6_6, ((mappend__d2_d0 t_1_7_0) ys_1_8_4)))))) in
                (let rec h_1_6_7 = ' ' in
                  (fun ys_1_8_5 -> 
                    (`LH_C(h_1_6_7, ((mappend__d2_d0 t_1_6_9) ys_1_8_5)))))) in
                (let rec h_1_6_8 = ' ' in
                  (fun ys_1_8_6 -> 
                    (`LH_C(h_1_6_8, ((mappend__d2_d0 t_1_6_8) ys_1_8_6)))))) in
                (let rec h_1_6_9 = ' ' in
                  (fun ys_1_8_7 -> 
                    (`LH_C(h_1_6_9, ((mappend__d2_d0 t_1_6_7) ys_1_8_7)))))) in
                (let rec h_1_7_0 = ' ' in
                  (fun ys_1_8_8 -> 
                    (`LH_C(h_1_7_0, ((mappend__d2_d0 t_1_6_6) ys_1_8_8)))))) in
                (let rec h_1_7_1 = ' ' in
                  (fun ys_1_8_9 -> 
                    (`LH_C(h_1_7_1, ((mappend__d2_d0 t_1_6_5) ys_1_8_9)))))) in
                (let rec h_1_7_2 = ' ' in
                  (fun ys_1_9_0 -> 
                    (`LH_C(h_1_7_2, ((mappend__d2_d0 t_1_6_4) ys_1_9_0)))))) in
                (let rec h_1_7_3 = ' ' in
                  (fun ys_1_9_1 -> 
                    (`LH_C(h_1_7_3, ((mappend__d2_d0 t_1_6_3) ys_1_9_1)))))) in
                (let rec h_1_7_4 = ' ' in
                  (fun ys_1_9_2 -> 
                    (`LH_C(h_1_7_4, ((mappend__d2_d0 t_1_6_2) ys_1_9_2)))))) in
                (let rec h_1_7_5 = ' ' in
                  (fun ys_1_9_3 -> 
                    (`LH_C(h_1_7_5, ((mappend__d2_d0 t_1_6_1) ys_1_9_3)))))) in
                (let rec h_1_7_6 = ' ' in
                  (fun ys_1_9_4 -> 
                    (`LH_C(h_1_7_6, ((mappend__d2_d0 t_1_6_0) ys_1_9_4)))))) in
                (let rec h_1_7_7 = ' ' in
                  (fun ys_1_9_5 -> 
                    (`LH_C(h_1_7_7, ((mappend__d2_d0 t_1_5_9) ys_1_9_5)))))) in
                (let rec h_1_7_8 = ' ' in
                  (fun ys_1_9_6 -> 
                    (`LH_C(h_1_7_8, ((mappend__d2_d0 t_1_5_8) ys_1_9_6)))))) in
                (let rec h_1_7_9 = '|' in
                  (fun ys_1_9_7 -> 
                    (`LH_C(h_1_7_9, ((mappend__d2_d0 t_1_5_7) ys_1_9_7)))))) in
                (let rec h_1_8_0 = ' ' in
                  (fun ys_1_9_8 -> 
                    (`LH_C(h_1_8_0, ((mappend__d2_d0 t_1_5_6) ys_1_9_8)))))) in
                (let rec h_1_8_1 = ' ' in
                  (fun ys_1_9_9 -> 
                    (`LH_C(h_1_8_1, ((mappend__d2_d0 t_1_5_5) ys_1_9_9)))))) in
                (let rec h_1_8_2 = ' ' in
                  (fun ys_2_0_0 -> 
                    (`LH_C(h_1_8_2, ((mappend__d2_d0 t_1_5_4) ys_2_0_0)))))) in
                (let rec h_1_8_3 = ' ' in
                  (fun ys_2_0_1 -> 
                    (`LH_C(h_1_8_3, ((mappend__d2_d0 t_1_5_3) ys_2_0_1)))))) in
                (let rec h_1_8_4 = ' ' in
                  (fun ys_2_0_2 -> 
                    (`LH_C(h_1_8_4, ((mappend__d2_d0 t_1_5_2) ys_2_0_2)))))) in
                (let rec h_1_8_5 = ' ' in
                  (fun ys_2_0_3 -> 
                    (`LH_C(h_1_8_5, ((mappend__d2_d0 t_1_5_1) ys_2_0_3)))))) in
                (let rec h_1_8_6 = ' ' in
                  (fun ys_2_0_4 -> 
                    (`LH_C(h_1_8_6, ((mappend__d2_d0 t_1_5_0) ys_2_0_4)))))) in
                (let rec h_1_8_7 = ' ' in
                  (fun ys_2_0_5 -> 
                    (`LH_C(h_1_8_7, ((mappend__d2_d0 t_1_4_9) ys_2_0_5)))))) in
                (let rec h_1_8_8 = ' ' in
                  (fun ys_2_0_6 -> 
                    (`LH_C(h_1_8_8, ((mappend__d2_d0 t_1_4_8) ys_2_0_6))))))) _lh_writeItem_arg3_3)
            | _ -> 
              (failwith "error")))) (edgePos__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_3))) (((writeItem__d2 (fun _lh_writeItem_arg2_4 _lh_writeItem_arg3_4 -> 
        (match _lh_writeItem_arg2_4 with
          | `LeftBank -> 
            ((mappend__d2_d9 (let rec t_1_8_9 = (let rec t_1_9_0 = (let rec t_1_9_1 = (let rec t_1_9_2 = (let rec t_1_9_3 = (let rec t_1_9_4 = (let rec t_1_9_5 = (let rec t_1_9_6 = (let rec t_1_9_7 = (let rec t_1_9_8 = (let rec t_1_9_9 = (let rec t_2_0_0 = (let rec t_2_0_1 = (let rec t_2_0_2 = (let rec t_2_0_3 = (let rec t_2_0_4 = (let rec t_2_0_5 = (let rec t_2_0_6 = (let rec t_2_0_7 = (let rec t_2_0_8 = (let rec t_2_0_9 = (let rec t_2_1_0 = (let rec t_2_1_1 = (let rec t_2_1_2 = (let rec t_2_1_3 = (let rec t_2_1_4 = (let rec t_2_1_5 = (let rec t_2_1_6 = (let rec t_2_1_7 = (let rec t_2_1_8 = (let rec t_2_1_9 = (let rec t_2_2_0 = (fun ys_2_0_7 -> 
              ys_2_0_7) in
              (let rec h_1_8_9 = '|' in
                (fun ys_2_0_8 -> 
                  (`LH_C(h_1_8_9, ((mappend__d2_d9 t_2_2_0) ys_2_0_8)))))) in
              (let rec h_1_9_0 = '|' in
                (fun ys_2_0_9 -> 
                  (`LH_C(h_1_9_0, ((mappend__d2_d9 t_2_1_9) ys_2_0_9)))))) in
              (let rec h_1_9_1 = ' ' in
                (fun ys_2_1_0 -> 
                  (`LH_C(h_1_9_1, ((mappend__d2_d9 t_2_1_8) ys_2_1_0)))))) in
              (let rec h_1_9_2 = ' ' in
                (fun ys_2_1_1 -> 
                  (`LH_C(h_1_9_2, ((mappend__d2_d9 t_2_1_7) ys_2_1_1)))))) in
              (let rec h_1_9_3 = ' ' in
                (fun ys_2_1_2 -> 
                  (`LH_C(h_1_9_3, ((mappend__d2_d9 t_2_1_6) ys_2_1_2)))))) in
              (let rec h_1_9_4 = ' ' in
                (fun ys_2_1_3 -> 
                  (`LH_C(h_1_9_4, ((mappend__d2_d9 t_2_1_5) ys_2_1_3)))))) in
              (let rec h_1_9_5 = ' ' in
                (fun ys_2_1_4 -> 
                  (`LH_C(h_1_9_5, ((mappend__d2_d9 t_2_1_4) ys_2_1_4)))))) in
              (let rec h_1_9_6 = ' ' in
                (fun ys_2_1_5 -> 
                  (`LH_C(h_1_9_6, ((mappend__d2_d9 t_2_1_3) ys_2_1_5)))))) in
              (let rec h_1_9_7 = ' ' in
                (fun ys_2_1_6 -> 
                  (`LH_C(h_1_9_7, ((mappend__d2_d9 t_2_1_2) ys_2_1_6)))))) in
              (let rec h_1_9_8 = ' ' in
                (fun ys_2_1_7 -> 
                  (`LH_C(h_1_9_8, ((mappend__d2_d9 t_2_1_1) ys_2_1_7)))))) in
              (let rec h_1_9_9 = ' ' in
                (fun ys_2_1_8 -> 
                  (`LH_C(h_1_9_9, ((mappend__d2_d9 t_2_1_0) ys_2_1_8)))))) in
              (let rec h_2_0_0 = ' ' in
                (fun ys_2_1_9 -> 
                  (`LH_C(h_2_0_0, ((mappend__d2_d9 t_2_0_9) ys_2_1_9)))))) in
              (let rec h_2_0_1 = ' ' in
                (fun ys_2_2_0 -> 
                  (`LH_C(h_2_0_1, ((mappend__d2_d9 t_2_0_8) ys_2_2_0)))))) in
              (let rec h_2_0_2 = ' ' in
                (fun ys_2_2_1 -> 
                  (`LH_C(h_2_0_2, ((mappend__d2_d9 t_2_0_7) ys_2_2_1)))))) in
              (let rec h_2_0_3 = ' ' in
                (fun ys_2_2_2 -> 
                  (`LH_C(h_2_0_3, ((mappend__d2_d9 t_2_0_6) ys_2_2_2)))))) in
              (let rec h_2_0_4 = ' ' in
                (fun ys_2_2_3 -> 
                  (`LH_C(h_2_0_4, ((mappend__d2_d9 t_2_0_5) ys_2_2_3)))))) in
              (let rec h_2_0_5 = ' ' in
                (fun ys_2_2_4 -> 
                  (`LH_C(h_2_0_5, ((mappend__d2_d9 t_2_0_4) ys_2_2_4)))))) in
              (let rec h_2_0_6 = ' ' in
                (fun ys_2_2_5 -> 
                  (`LH_C(h_2_0_6, ((mappend__d2_d9 t_2_0_3) ys_2_2_5)))))) in
              (let rec h_2_0_7 = ' ' in
                (fun ys_2_2_6 -> 
                  (`LH_C(h_2_0_7, ((mappend__d2_d9 t_2_0_2) ys_2_2_6)))))) in
              (let rec h_2_0_8 = ' ' in
                (fun ys_2_2_7 -> 
                  (`LH_C(h_2_0_8, ((mappend__d2_d9 t_2_0_1) ys_2_2_7)))))) in
              (let rec h_2_0_9 = ' ' in
                (fun ys_2_2_8 -> 
                  (`LH_C(h_2_0_9, ((mappend__d2_d9 t_2_0_0) ys_2_2_8)))))) in
              (let rec h_2_1_0 = ' ' in
                (fun ys_2_2_9 -> 
                  (`LH_C(h_2_1_0, ((mappend__d2_d9 t_1_9_9) ys_2_2_9)))))) in
              (let rec h_2_1_1 = '|' in
                (fun ys_2_3_0 -> 
                  (`LH_C(h_2_1_1, ((mappend__d2_d9 t_1_9_8) ys_2_3_0)))))) in
              (let rec h_2_1_2 = ' ' in
                (fun ys_2_3_1 -> 
                  (`LH_C(h_2_1_2, ((mappend__d2_d9 t_1_9_7) ys_2_3_1)))))) in
              (let rec h_2_1_3 = 'y' in
                (fun ys_2_3_2 -> 
                  (`LH_C(h_2_1_3, ((mappend__d2_d9 t_1_9_6) ys_2_3_2)))))) in
              (let rec h_2_1_4 = 'r' in
                (fun ys_2_3_3 -> 
                  (`LH_C(h_2_1_4, ((mappend__d2_d9 t_1_9_5) ys_2_3_3)))))) in
              (let rec h_2_1_5 = 'r' in
                (fun ys_2_3_4 -> 
                  (`LH_C(h_2_1_5, ((mappend__d2_d9 t_1_9_4) ys_2_3_4)))))) in
              (let rec h_2_1_6 = 'a' in
                (fun ys_2_3_5 -> 
                  (`LH_C(h_2_1_6, ((mappend__d2_d9 t_1_9_3) ys_2_3_5)))))) in
              (let rec h_2_1_7 = 'L' in
                (fun ys_2_3_6 -> 
                  (`LH_C(h_2_1_7, ((mappend__d2_d9 t_1_9_2) ys_2_3_6)))))) in
              (let rec h_2_1_8 = ' ' in
                (fun ys_2_3_7 -> 
                  (`LH_C(h_2_1_8, ((mappend__d2_d9 t_1_9_1) ys_2_3_7)))))) in
              (let rec h_2_1_9 = ' ' in
                (fun ys_2_3_8 -> 
                  (`LH_C(h_2_1_9, ((mappend__d2_d9 t_1_9_0) ys_2_3_8)))))) in
              (let rec h_2_2_0 = ' ' in
                (fun ys_2_3_9 -> 
                  (`LH_C(h_2_2_0, ((mappend__d2_d9 t_1_8_9) ys_2_3_9))))))) _lh_writeItem_arg3_4)
          | `RightBank -> 
            ((mappend__d3_d0 (let rec t_2_2_1 = (let rec t_2_2_2 = (let rec t_2_2_3 = (let rec t_2_2_4 = (let rec t_2_2_5 = (let rec t_2_2_6 = (let rec t_2_2_7 = (let rec t_2_2_8 = (let rec t_2_2_9 = (let rec t_2_3_0 = (let rec t_2_3_1 = (let rec t_2_3_2 = (let rec t_2_3_3 = (let rec t_2_3_4 = (let rec t_2_3_5 = (let rec t_2_3_6 = (let rec t_2_3_7 = (let rec t_2_3_8 = (let rec t_2_3_9 = (let rec t_2_4_0 = (let rec t_2_4_1 = (let rec t_2_4_2 = (let rec t_2_4_3 = (let rec t_2_4_4 = (let rec t_2_4_5 = (let rec t_2_4_6 = (let rec t_2_4_7 = (let rec t_2_4_8 = (let rec t_2_4_9 = (let rec t_2_5_0 = (let rec t_2_5_1 = (let rec t_2_5_2 = (let rec t_2_5_3 = (let rec t_2_5_4 = (let rec t_2_5_5 = (let rec t_2_5_6 = (let rec t_2_5_7 = (let rec t_2_5_8 = (fun ys_2_4_0 -> 
              ys_2_4_0) in
              (let rec h_2_2_1 = '|' in
                (fun ys_2_4_1 -> 
                  (`LH_C(h_2_2_1, ((mappend__d3_d0 t_2_5_8) ys_2_4_1)))))) in
              (let rec h_2_2_2 = 'y' in
                (fun ys_2_4_2 -> 
                  (`LH_C(h_2_2_2, ((mappend__d3_d0 t_2_5_7) ys_2_4_2)))))) in
              (let rec h_2_2_3 = 'r' in
                (fun ys_2_4_3 -> 
                  (`LH_C(h_2_2_3, ((mappend__d3_d0 t_2_5_6) ys_2_4_3)))))) in
              (let rec h_2_2_4 = 'r' in
                (fun ys_2_4_4 -> 
                  (`LH_C(h_2_2_4, ((mappend__d3_d0 t_2_5_5) ys_2_4_4)))))) in
              (let rec h_2_2_5 = 'a' in
                (fun ys_2_4_5 -> 
                  (`LH_C(h_2_2_5, ((mappend__d3_d0 t_2_5_4) ys_2_4_5)))))) in
              (let rec h_2_2_6 = 'L' in
                (fun ys_2_4_6 -> 
                  (`LH_C(h_2_2_6, ((mappend__d3_d0 t_2_5_3) ys_2_4_6)))))) in
              (let rec h_2_2_7 = ' ' in
                (fun ys_2_4_7 -> 
                  (`LH_C(h_2_2_7, ((mappend__d3_d0 t_2_5_2) ys_2_4_7)))))) in
              (let rec h_2_2_8 = '|' in
                (fun ys_2_4_8 -> 
                  (`LH_C(h_2_2_8, ((mappend__d3_d0 t_2_5_1) ys_2_4_8)))))) in
              (let rec h_2_2_9 = ' ' in
                (fun ys_2_4_9 -> 
                  (`LH_C(h_2_2_9, ((mappend__d3_d0 t_2_5_0) ys_2_4_9)))))) in
              (let rec h_2_3_0 = ' ' in
                (fun ys_2_5_0 -> 
                  (`LH_C(h_2_3_0, ((mappend__d3_d0 t_2_4_9) ys_2_5_0)))))) in
              (let rec h_2_3_1 = ' ' in
                (fun ys_2_5_1 -> 
                  (`LH_C(h_2_3_1, ((mappend__d3_d0 t_2_4_8) ys_2_5_1)))))) in
              (let rec h_2_3_2 = ' ' in
                (fun ys_2_5_2 -> 
                  (`LH_C(h_2_3_2, ((mappend__d3_d0 t_2_4_7) ys_2_5_2)))))) in
              (let rec h_2_3_3 = ' ' in
                (fun ys_2_5_3 -> 
                  (`LH_C(h_2_3_3, ((mappend__d3_d0 t_2_4_6) ys_2_5_3)))))) in
              (let rec h_2_3_4 = ' ' in
                (fun ys_2_5_4 -> 
                  (`LH_C(h_2_3_4, ((mappend__d3_d0 t_2_4_5) ys_2_5_4)))))) in
              (let rec h_2_3_5 = ' ' in
                (fun ys_2_5_5 -> 
                  (`LH_C(h_2_3_5, ((mappend__d3_d0 t_2_4_4) ys_2_5_5)))))) in
              (let rec h_2_3_6 = ' ' in
                (fun ys_2_5_6 -> 
                  (`LH_C(h_2_3_6, ((mappend__d3_d0 t_2_4_3) ys_2_5_6)))))) in
              (let rec h_2_3_7 = ' ' in
                (fun ys_2_5_7 -> 
                  (`LH_C(h_2_3_7, ((mappend__d3_d0 t_2_4_2) ys_2_5_7)))))) in
              (let rec h_2_3_8 = ' ' in
                (fun ys_2_5_8 -> 
                  (`LH_C(h_2_3_8, ((mappend__d3_d0 t_2_4_1) ys_2_5_8)))))) in
              (let rec h_2_3_9 = ' ' in
                (fun ys_2_5_9 -> 
                  (`LH_C(h_2_3_9, ((mappend__d3_d0 t_2_4_0) ys_2_5_9)))))) in
              (let rec h_2_4_0 = ' ' in
                (fun ys_2_6_0 -> 
                  (`LH_C(h_2_4_0, ((mappend__d3_d0 t_2_3_9) ys_2_6_0)))))) in
              (let rec h_2_4_1 = ' ' in
                (fun ys_2_6_1 -> 
                  (`LH_C(h_2_4_1, ((mappend__d3_d0 t_2_3_8) ys_2_6_1)))))) in
              (let rec h_2_4_2 = ' ' in
                (fun ys_2_6_2 -> 
                  (`LH_C(h_2_4_2, ((mappend__d3_d0 t_2_3_7) ys_2_6_2)))))) in
              (let rec h_2_4_3 = ' ' in
                (fun ys_2_6_3 -> 
                  (`LH_C(h_2_4_3, ((mappend__d3_d0 t_2_3_6) ys_2_6_3)))))) in
              (let rec h_2_4_4 = ' ' in
                (fun ys_2_6_4 -> 
                  (`LH_C(h_2_4_4, ((mappend__d3_d0 t_2_3_5) ys_2_6_4)))))) in
              (let rec h_2_4_5 = ' ' in
                (fun ys_2_6_5 -> 
                  (`LH_C(h_2_4_5, ((mappend__d3_d0 t_2_3_4) ys_2_6_5)))))) in
              (let rec h_2_4_6 = ' ' in
                (fun ys_2_6_6 -> 
                  (`LH_C(h_2_4_6, ((mappend__d3_d0 t_2_3_3) ys_2_6_6)))))) in
              (let rec h_2_4_7 = ' ' in
                (fun ys_2_6_7 -> 
                  (`LH_C(h_2_4_7, ((mappend__d3_d0 t_2_3_2) ys_2_6_7)))))) in
              (let rec h_2_4_8 = ' ' in
                (fun ys_2_6_8 -> 
                  (`LH_C(h_2_4_8, ((mappend__d3_d0 t_2_3_1) ys_2_6_8)))))) in
              (let rec h_2_4_9 = '|' in
                (fun ys_2_6_9 -> 
                  (`LH_C(h_2_4_9, ((mappend__d3_d0 t_2_3_0) ys_2_6_9)))))) in
              (let rec h_2_5_0 = ' ' in
                (fun ys_2_7_0 -> 
                  (`LH_C(h_2_5_0, ((mappend__d3_d0 t_2_2_9) ys_2_7_0)))))) in
              (let rec h_2_5_1 = ' ' in
                (fun ys_2_7_1 -> 
                  (`LH_C(h_2_5_1, ((mappend__d3_d0 t_2_2_8) ys_2_7_1)))))) in
              (let rec h_2_5_2 = ' ' in
                (fun ys_2_7_2 -> 
                  (`LH_C(h_2_5_2, ((mappend__d3_d0 t_2_2_7) ys_2_7_2)))))) in
              (let rec h_2_5_3 = ' ' in
                (fun ys_2_7_3 -> 
                  (`LH_C(h_2_5_3, ((mappend__d3_d0 t_2_2_6) ys_2_7_3)))))) in
              (let rec h_2_5_4 = ' ' in
                (fun ys_2_7_4 -> 
                  (`LH_C(h_2_5_4, ((mappend__d3_d0 t_2_2_5) ys_2_7_4)))))) in
              (let rec h_2_5_5 = ' ' in
                (fun ys_2_7_5 -> 
                  (`LH_C(h_2_5_5, ((mappend__d3_d0 t_2_2_4) ys_2_7_5)))))) in
              (let rec h_2_5_6 = ' ' in
                (fun ys_2_7_6 -> 
                  (`LH_C(h_2_5_6, ((mappend__d3_d0 t_2_2_3) ys_2_7_6)))))) in
              (let rec h_2_5_7 = ' ' in
                (fun ys_2_7_7 -> 
                  (`LH_C(h_2_5_7, ((mappend__d3_d0 t_2_2_2) ys_2_7_7)))))) in
              (let rec h_2_5_8 = ' ' in
                (fun ys_2_7_8 -> 
                  (`LH_C(h_2_5_8, ((mappend__d3_d0 t_2_2_1) ys_2_7_8))))))) _lh_writeItem_arg3_4)
          | _ -> 
            (failwith "error")))) (larryPos__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_2))) (((writeItem__d3 (fun _lh_writeItem_arg2_5 _lh_writeItem_arg3_5 -> 
      (match _lh_writeItem_arg2_5 with
        | `LeftBank -> 
          ((mappend__d3_d9 (let rec t_2_5_9 = (let rec t_2_6_0 = (let rec t_2_6_1 = (let rec t_2_6_2 = (let rec t_2_6_3 = (let rec t_2_6_4 = (let rec t_2_6_5 = (let rec t_2_6_6 = (let rec t_2_6_7 = (let rec t_2_6_8 = (let rec t_2_6_9 = (let rec t_2_7_0 = (let rec t_2_7_1 = (let rec t_2_7_2 = (let rec t_2_7_3 = (let rec t_2_7_4 = (let rec t_2_7_5 = (let rec t_2_7_6 = (let rec t_2_7_7 = (let rec t_2_7_8 = (let rec t_2_7_9 = (let rec t_2_8_0 = (let rec t_2_8_1 = (let rec t_2_8_2 = (let rec t_2_8_3 = (let rec t_2_8_4 = (let rec t_2_8_5 = (let rec t_2_8_6 = (let rec t_2_8_7 = (let rec t_2_8_8 = (let rec t_2_8_9 = (let rec t_2_9_0 = (fun ys_2_7_9 -> 
            ys_2_7_9) in
            (let rec h_2_5_9 = '|' in
              (fun ys_2_8_0 -> 
                (`LH_C(h_2_5_9, ((mappend__d3_d9 t_2_9_0) ys_2_8_0)))))) in
            (let rec h_2_6_0 = '|' in
              (fun ys_2_8_1 -> 
                (`LH_C(h_2_6_0, ((mappend__d3_d9 t_2_8_9) ys_2_8_1)))))) in
            (let rec h_2_6_1 = ' ' in
              (fun ys_2_8_2 -> 
                (`LH_C(h_2_6_1, ((mappend__d3_d9 t_2_8_8) ys_2_8_2)))))) in
            (let rec h_2_6_2 = ' ' in
              (fun ys_2_8_3 -> 
                (`LH_C(h_2_6_2, ((mappend__d3_d9 t_2_8_7) ys_2_8_3)))))) in
            (let rec h_2_6_3 = ' ' in
              (fun ys_2_8_4 -> 
                (`LH_C(h_2_6_3, ((mappend__d3_d9 t_2_8_6) ys_2_8_4)))))) in
            (let rec h_2_6_4 = ' ' in
              (fun ys_2_8_5 -> 
                (`LH_C(h_2_6_4, ((mappend__d3_d9 t_2_8_5) ys_2_8_5)))))) in
            (let rec h_2_6_5 = ' ' in
              (fun ys_2_8_6 -> 
                (`LH_C(h_2_6_5, ((mappend__d3_d9 t_2_8_4) ys_2_8_6)))))) in
            (let rec h_2_6_6 = ' ' in
              (fun ys_2_8_7 -> 
                (`LH_C(h_2_6_6, ((mappend__d3_d9 t_2_8_3) ys_2_8_7)))))) in
            (let rec h_2_6_7 = ' ' in
              (fun ys_2_8_8 -> 
                (`LH_C(h_2_6_7, ((mappend__d3_d9 t_2_8_2) ys_2_8_8)))))) in
            (let rec h_2_6_8 = ' ' in
              (fun ys_2_8_9 -> 
                (`LH_C(h_2_6_8, ((mappend__d3_d9 t_2_8_1) ys_2_8_9)))))) in
            (let rec h_2_6_9 = ' ' in
              (fun ys_2_9_0 -> 
                (`LH_C(h_2_6_9, ((mappend__d3_d9 t_2_8_0) ys_2_9_0)))))) in
            (let rec h_2_7_0 = ' ' in
              (fun ys_2_9_1 -> 
                (`LH_C(h_2_7_0, ((mappend__d3_d9 t_2_7_9) ys_2_9_1)))))) in
            (let rec h_2_7_1 = ' ' in
              (fun ys_2_9_2 -> 
                (`LH_C(h_2_7_1, ((mappend__d3_d9 t_2_7_8) ys_2_9_2)))))) in
            (let rec h_2_7_2 = ' ' in
              (fun ys_2_9_3 -> 
                (`LH_C(h_2_7_2, ((mappend__d3_d9 t_2_7_7) ys_2_9_3)))))) in
            (let rec h_2_7_3 = ' ' in
              (fun ys_2_9_4 -> 
                (`LH_C(h_2_7_3, ((mappend__d3_d9 t_2_7_6) ys_2_9_4)))))) in
            (let rec h_2_7_4 = ' ' in
              (fun ys_2_9_5 -> 
                (`LH_C(h_2_7_4, ((mappend__d3_d9 t_2_7_5) ys_2_9_5)))))) in
            (let rec h_2_7_5 = ' ' in
              (fun ys_2_9_6 -> 
                (`LH_C(h_2_7_5, ((mappend__d3_d9 t_2_7_4) ys_2_9_6)))))) in
            (let rec h_2_7_6 = ' ' in
              (fun ys_2_9_7 -> 
                (`LH_C(h_2_7_6, ((mappend__d3_d9 t_2_7_3) ys_2_9_7)))))) in
            (let rec h_2_7_7 = ' ' in
              (fun ys_2_9_8 -> 
                (`LH_C(h_2_7_7, ((mappend__d3_d9 t_2_7_2) ys_2_9_8)))))) in
            (let rec h_2_7_8 = ' ' in
              (fun ys_2_9_9 -> 
                (`LH_C(h_2_7_8, ((mappend__d3_d9 t_2_7_1) ys_2_9_9)))))) in
            (let rec h_2_7_9 = ' ' in
              (fun ys_3_0_0 -> 
                (`LH_C(h_2_7_9, ((mappend__d3_d9 t_2_7_0) ys_3_0_0)))))) in
            (let rec h_2_8_0 = ' ' in
              (fun ys_3_0_1 -> 
                (`LH_C(h_2_8_0, ((mappend__d3_d9 t_2_6_9) ys_3_0_1)))))) in
            (let rec h_2_8_1 = '|' in
              (fun ys_3_0_2 -> 
                (`LH_C(h_2_8_1, ((mappend__d3_d9 t_2_6_8) ys_3_0_2)))))) in
            (let rec h_2_8_2 = ' ' in
              (fun ys_3_0_3 -> 
                (`LH_C(h_2_8_2, ((mappend__d3_d9 t_2_6_7) ys_3_0_3)))))) in
            (let rec h_2_8_3 = 'm' in
              (fun ys_3_0_4 -> 
                (`LH_C(h_2_8_3, ((mappend__d3_d9 t_2_6_6) ys_3_0_4)))))) in
            (let rec h_2_8_4 = 'a' in
              (fun ys_3_0_5 -> 
                (`LH_C(h_2_8_4, ((mappend__d3_d9 t_2_6_5) ys_3_0_5)))))) in
            (let rec h_2_8_5 = 'd' in
              (fun ys_3_0_6 -> 
                (`LH_C(h_2_8_5, ((mappend__d3_d9 t_2_6_4) ys_3_0_6)))))) in
            (let rec h_2_8_6 = 'A' in
              (fun ys_3_0_7 -> 
                (`LH_C(h_2_8_6, ((mappend__d3_d9 t_2_6_3) ys_3_0_7)))))) in
            (let rec h_2_8_7 = ' ' in
              (fun ys_3_0_8 -> 
                (`LH_C(h_2_8_7, ((mappend__d3_d9 t_2_6_2) ys_3_0_8)))))) in
            (let rec h_2_8_8 = ' ' in
              (fun ys_3_0_9 -> 
                (`LH_C(h_2_8_8, ((mappend__d3_d9 t_2_6_1) ys_3_0_9)))))) in
            (let rec h_2_8_9 = ' ' in
              (fun ys_3_1_0 -> 
                (`LH_C(h_2_8_9, ((mappend__d3_d9 t_2_6_0) ys_3_1_0)))))) in
            (let rec h_2_9_0 = ' ' in
              (fun ys_3_1_1 -> 
                (`LH_C(h_2_9_0, ((mappend__d3_d9 t_2_5_9) ys_3_1_1))))))) _lh_writeItem_arg3_5)
        | `RightBank -> 
          ((mappend__d4_d0 (let rec t_2_9_1 = (let rec t_2_9_2 = (let rec t_2_9_3 = (let rec t_2_9_4 = (let rec t_2_9_5 = (let rec t_2_9_6 = (let rec t_2_9_7 = (let rec t_2_9_8 = (let rec t_2_9_9 = (let rec t_3_0_0 = (let rec t_3_0_1 = (let rec t_3_0_2 = (let rec t_3_0_3 = (let rec t_3_0_4 = (let rec t_3_0_5 = (let rec t_3_0_6 = (let rec t_3_0_7 = (let rec t_3_0_8 = (let rec t_3_0_9 = (let rec t_3_1_0 = (let rec t_3_1_1 = (let rec t_3_1_2 = (let rec t_3_1_3 = (let rec t_3_1_4 = (let rec t_3_1_5 = (let rec t_3_1_6 = (let rec t_3_1_7 = (let rec t_3_1_8 = (let rec t_3_1_9 = (let rec t_3_2_0 = (let rec t_3_2_1 = (let rec t_3_2_2 = (let rec t_3_2_3 = (let rec t_3_2_4 = (let rec t_3_2_5 = (let rec t_3_2_6 = (let rec t_3_2_7 = (fun ys_3_1_2 -> 
            ys_3_1_2) in
            (let rec h_2_9_1 = '|' in
              (fun ys_3_1_3 -> 
                (`LH_C(h_2_9_1, ((mappend__d4_d0 t_3_2_7) ys_3_1_3)))))) in
            (let rec h_2_9_2 = 'm' in
              (fun ys_3_1_4 -> 
                (`LH_C(h_2_9_2, ((mappend__d4_d0 t_3_2_6) ys_3_1_4)))))) in
            (let rec h_2_9_3 = 'a' in
              (fun ys_3_1_5 -> 
                (`LH_C(h_2_9_3, ((mappend__d4_d0 t_3_2_5) ys_3_1_5)))))) in
            (let rec h_2_9_4 = 'd' in
              (fun ys_3_1_6 -> 
                (`LH_C(h_2_9_4, ((mappend__d4_d0 t_3_2_4) ys_3_1_6)))))) in
            (let rec h_2_9_5 = 'A' in
              (fun ys_3_1_7 -> 
                (`LH_C(h_2_9_5, ((mappend__d4_d0 t_3_2_3) ys_3_1_7)))))) in
            (let rec h_2_9_6 = ' ' in
              (fun ys_3_1_8 -> 
                (`LH_C(h_2_9_6, ((mappend__d4_d0 t_3_2_2) ys_3_1_8)))))) in
            (let rec h_2_9_7 = '|' in
              (fun ys_3_1_9 -> 
                (`LH_C(h_2_9_7, ((mappend__d4_d0 t_3_2_1) ys_3_1_9)))))) in
            (let rec h_2_9_8 = ' ' in
              (fun ys_3_2_0 -> 
                (`LH_C(h_2_9_8, ((mappend__d4_d0 t_3_2_0) ys_3_2_0)))))) in
            (let rec h_2_9_9 = ' ' in
              (fun ys_3_2_1 -> 
                (`LH_C(h_2_9_9, ((mappend__d4_d0 t_3_1_9) ys_3_2_1)))))) in
            (let rec h_3_0_0 = ' ' in
              (fun ys_3_2_2 -> 
                (`LH_C(h_3_0_0, ((mappend__d4_d0 t_3_1_8) ys_3_2_2)))))) in
            (let rec h_3_0_1 = ' ' in
              (fun ys_3_2_3 -> 
                (`LH_C(h_3_0_1, ((mappend__d4_d0 t_3_1_7) ys_3_2_3)))))) in
            (let rec h_3_0_2 = ' ' in
              (fun ys_3_2_4 -> 
                (`LH_C(h_3_0_2, ((mappend__d4_d0 t_3_1_6) ys_3_2_4)))))) in
            (let rec h_3_0_3 = ' ' in
              (fun ys_3_2_5 -> 
                (`LH_C(h_3_0_3, ((mappend__d4_d0 t_3_1_5) ys_3_2_5)))))) in
            (let rec h_3_0_4 = ' ' in
              (fun ys_3_2_6 -> 
                (`LH_C(h_3_0_4, ((mappend__d4_d0 t_3_1_4) ys_3_2_6)))))) in
            (let rec h_3_0_5 = ' ' in
              (fun ys_3_2_7 -> 
                (`LH_C(h_3_0_5, ((mappend__d4_d0 t_3_1_3) ys_3_2_7)))))) in
            (let rec h_3_0_6 = ' ' in
              (fun ys_3_2_8 -> 
                (`LH_C(h_3_0_6, ((mappend__d4_d0 t_3_1_2) ys_3_2_8)))))) in
            (let rec h_3_0_7 = ' ' in
              (fun ys_3_2_9 -> 
                (`LH_C(h_3_0_7, ((mappend__d4_d0 t_3_1_1) ys_3_2_9)))))) in
            (let rec h_3_0_8 = ' ' in
              (fun ys_3_3_0 -> 
                (`LH_C(h_3_0_8, ((mappend__d4_d0 t_3_1_0) ys_3_3_0)))))) in
            (let rec h_3_0_9 = ' ' in
              (fun ys_3_3_1 -> 
                (`LH_C(h_3_0_9, ((mappend__d4_d0 t_3_0_9) ys_3_3_1)))))) in
            (let rec h_3_1_0 = ' ' in
              (fun ys_3_3_2 -> 
                (`LH_C(h_3_1_0, ((mappend__d4_d0 t_3_0_8) ys_3_3_2)))))) in
            (let rec h_3_1_1 = ' ' in
              (fun ys_3_3_3 -> 
                (`LH_C(h_3_1_1, ((mappend__d4_d0 t_3_0_7) ys_3_3_3)))))) in
            (let rec h_3_1_2 = ' ' in
              (fun ys_3_3_4 -> 
                (`LH_C(h_3_1_2, ((mappend__d4_d0 t_3_0_6) ys_3_3_4)))))) in
            (let rec h_3_1_3 = ' ' in
              (fun ys_3_3_5 -> 
                (`LH_C(h_3_1_3, ((mappend__d4_d0 t_3_0_5) ys_3_3_5)))))) in
            (let rec h_3_1_4 = ' ' in
              (fun ys_3_3_6 -> 
                (`LH_C(h_3_1_4, ((mappend__d4_d0 t_3_0_4) ys_3_3_6)))))) in
            (let rec h_3_1_5 = ' ' in
              (fun ys_3_3_7 -> 
                (`LH_C(h_3_1_5, ((mappend__d4_d0 t_3_0_3) ys_3_3_7)))))) in
            (let rec h_3_1_6 = ' ' in
              (fun ys_3_3_8 -> 
                (`LH_C(h_3_1_6, ((mappend__d4_d0 t_3_0_2) ys_3_3_8)))))) in
            (let rec h_3_1_7 = ' ' in
              (fun ys_3_3_9 -> 
                (`LH_C(h_3_1_7, ((mappend__d4_d0 t_3_0_1) ys_3_3_9)))))) in
            (let rec h_3_1_8 = '|' in
              (fun ys_3_4_0 -> 
                (`LH_C(h_3_1_8, ((mappend__d4_d0 t_3_0_0) ys_3_4_0)))))) in
            (let rec h_3_1_9 = ' ' in
              (fun ys_3_4_1 -> 
                (`LH_C(h_3_1_9, ((mappend__d4_d0 t_2_9_9) ys_3_4_1)))))) in
            (let rec h_3_2_0 = ' ' in
              (fun ys_3_4_2 -> 
                (`LH_C(h_3_2_0, ((mappend__d4_d0 t_2_9_8) ys_3_4_2)))))) in
            (let rec h_3_2_1 = ' ' in
              (fun ys_3_4_3 -> 
                (`LH_C(h_3_2_1, ((mappend__d4_d0 t_2_9_7) ys_3_4_3)))))) in
            (let rec h_3_2_2 = ' ' in
              (fun ys_3_4_4 -> 
                (`LH_C(h_3_2_2, ((mappend__d4_d0 t_2_9_6) ys_3_4_4)))))) in
            (let rec h_3_2_3 = ' ' in
              (fun ys_3_4_5 -> 
                (`LH_C(h_3_2_3, ((mappend__d4_d0 t_2_9_5) ys_3_4_5)))))) in
            (let rec h_3_2_4 = ' ' in
              (fun ys_3_4_6 -> 
                (`LH_C(h_3_2_4, ((mappend__d4_d0 t_2_9_4) ys_3_4_6)))))) in
            (let rec h_3_2_5 = ' ' in
              (fun ys_3_4_7 -> 
                (`LH_C(h_3_2_5, ((mappend__d4_d0 t_2_9_3) ys_3_4_7)))))) in
            (let rec h_3_2_6 = ' ' in
              (fun ys_3_4_8 -> 
                (`LH_C(h_3_2_6, ((mappend__d4_d0 t_2_9_2) ys_3_4_8)))))) in
            (let rec h_3_2_7 = ' ' in
              (fun ys_3_4_9 -> 
                (`LH_C(h_3_2_7, ((mappend__d4_d0 t_2_9_1) ys_3_4_9))))))) _lh_writeItem_arg3_5)
        | _ -> 
          (failwith "error")))) (adamPos__d3 _lh_writeState_arg1_0)) _lh_funcomp_x_1))) ((fun s_1 -> 
    ((mappend__d7 (let rec t_3_2_8 = (let rec t_3_2_9 = (let rec t_3_3_0 = (let rec t_3_3_1 = (let rec t_3_3_2 = (let rec t_3_3_3 = (let rec t_3_3_4 = (let rec t_3_3_5 = (let rec t_3_3_6 = (let rec t_3_3_7 = (let rec t_3_3_8 = (let rec t_3_3_9 = (let rec t_3_4_0 = (let rec t_3_4_1 = (let rec t_3_4_2 = (let rec t_3_4_3 = (let rec t_3_4_4 = (let rec t_3_4_5 = (let rec t_3_4_6 = (let rec t_3_4_7 = (let rec t_3_4_8 = (let rec t_3_4_9 = (let rec t_3_5_0 = (let rec t_3_5_1 = (let rec t_3_5_2 = (let rec t_3_5_3 = (let rec t_3_5_4 = (let rec t_3_5_5 = (let rec t_3_5_6 = (let rec t_3_5_7 = (let rec t_3_5_8 = (let rec t_3_5_9 = (let rec t_3_6_0 = (let rec t_3_6_1 = (let rec t_3_6_2 = (let rec t_3_6_3 = (let rec t_3_6_4 = (let rec t_3_6_5 = (let rec t_3_6_6 = (let rec t_3_6_7 = (let rec t_3_6_8 = (fun ys_3_5_0 -> 
      ys_3_5_0) in
      (let rec h_3_2_8 = '|' in
        (fun ys_3_5_1 -> 
          (`LH_C(h_3_2_8, ((mappend__d7 t_3_6_8) ys_3_5_1)))))) in
      (let rec h_3_2_9 = '-' in
        (fun ys_3_5_2 -> 
          (`LH_C(h_3_2_9, ((mappend__d7 t_3_6_7) ys_3_5_2)))))) in
      (let rec h_3_3_0 = '-' in
        (fun ys_3_5_3 -> 
          (`LH_C(h_3_3_0, ((mappend__d7 t_3_6_6) ys_3_5_3)))))) in
      (let rec h_3_3_1 = '-' in
        (fun ys_3_5_4 -> 
          (`LH_C(h_3_3_1, ((mappend__d7 t_3_6_5) ys_3_5_4)))))) in
      (let rec h_3_3_2 = '-' in
        (fun ys_3_5_5 -> 
          (`LH_C(h_3_3_2, ((mappend__d7 t_3_6_4) ys_3_5_5)))))) in
      (let rec h_3_3_3 = '-' in
        (fun ys_3_5_6 -> 
          (`LH_C(h_3_3_3, ((mappend__d7 t_3_6_3) ys_3_5_6)))))) in
      (let rec h_3_3_4 = '-' in
        (fun ys_3_5_7 -> 
          (`LH_C(h_3_3_4, ((mappend__d7 t_3_6_2) ys_3_5_7)))))) in
      (let rec h_3_3_5 = '-' in
        (fun ys_3_5_8 -> 
          (`LH_C(h_3_3_5, ((mappend__d7 t_3_6_1) ys_3_5_8)))))) in
      (let rec h_3_3_6 = '-' in
        (fun ys_3_5_9 -> 
          (`LH_C(h_3_3_6, ((mappend__d7 t_3_6_0) ys_3_5_9)))))) in
      (let rec h_3_3_7 = '-' in
        (fun ys_3_6_0 -> 
          (`LH_C(h_3_3_7, ((mappend__d7 t_3_5_9) ys_3_6_0)))))) in
      (let rec h_3_3_8 = '-' in
        (fun ys_3_6_1 -> 
          (`LH_C(h_3_3_8, ((mappend__d7 t_3_5_8) ys_3_6_1)))))) in
      (let rec h_3_3_9 = '-' in
        (fun ys_3_6_2 -> 
          (`LH_C(h_3_3_9, ((mappend__d7 t_3_5_7) ys_3_6_2)))))) in
      (let rec h_3_4_0 = '-' in
        (fun ys_3_6_3 -> 
          (`LH_C(h_3_4_0, ((mappend__d7 t_3_5_6) ys_3_6_3)))))) in
      (let rec h_3_4_1 = '-' in
        (fun ys_3_6_4 -> 
          (`LH_C(h_3_4_1, ((mappend__d7 t_3_5_5) ys_3_6_4)))))) in
      (let rec h_3_4_2 = '-' in
        (fun ys_3_6_5 -> 
          (`LH_C(h_3_4_2, ((mappend__d7 t_3_5_4) ys_3_6_5)))))) in
      (let rec h_3_4_3 = '-' in
        (fun ys_3_6_6 -> 
          (`LH_C(h_3_4_3, ((mappend__d7 t_3_5_3) ys_3_6_6)))))) in
      (let rec h_3_4_4 = '-' in
        (fun ys_3_6_7 -> 
          (`LH_C(h_3_4_4, ((mappend__d7 t_3_5_2) ys_3_6_7)))))) in
      (let rec h_3_4_5 = '-' in
        (fun ys_3_6_8 -> 
          (`LH_C(h_3_4_5, ((mappend__d7 t_3_5_1) ys_3_6_8)))))) in
      (let rec h_3_4_6 = '-' in
        (fun ys_3_6_9 -> 
          (`LH_C(h_3_4_6, ((mappend__d7 t_3_5_0) ys_3_6_9)))))) in
      (let rec h_3_4_7 = '-' in
        (fun ys_3_7_0 -> 
          (`LH_C(h_3_4_7, ((mappend__d7 t_3_4_9) ys_3_7_0)))))) in
      (let rec h_3_4_8 = '-' in
        (fun ys_3_7_1 -> 
          (`LH_C(h_3_4_8, ((mappend__d7 t_3_4_8) ys_3_7_1)))))) in
      (let rec h_3_4_9 = '-' in
        (fun ys_3_7_2 -> 
          (`LH_C(h_3_4_9, ((mappend__d7 t_3_4_7) ys_3_7_2)))))) in
      (let rec h_3_5_0 = '-' in
        (fun ys_3_7_3 -> 
          (`LH_C(h_3_5_0, ((mappend__d7 t_3_4_6) ys_3_7_3)))))) in
      (let rec h_3_5_1 = '-' in
        (fun ys_3_7_4 -> 
          (`LH_C(h_3_5_1, ((mappend__d7 t_3_4_5) ys_3_7_4)))))) in
      (let rec h_3_5_2 = '-' in
        (fun ys_3_7_5 -> 
          (`LH_C(h_3_5_2, ((mappend__d7 t_3_4_4) ys_3_7_5)))))) in
      (let rec h_3_5_3 = '-' in
        (fun ys_3_7_6 -> 
          (`LH_C(h_3_5_3, ((mappend__d7 t_3_4_3) ys_3_7_6)))))) in
      (let rec h_3_5_4 = '-' in
        (fun ys_3_7_7 -> 
          (`LH_C(h_3_5_4, ((mappend__d7 t_3_4_2) ys_3_7_7)))))) in
      (let rec h_3_5_5 = '-' in
        (fun ys_3_7_8 -> 
          (`LH_C(h_3_5_5, ((mappend__d7 t_3_4_1) ys_3_7_8)))))) in
      (let rec h_3_5_6 = '-' in
        (fun ys_3_7_9 -> 
          (`LH_C(h_3_5_6, ((mappend__d7 t_3_4_0) ys_3_7_9)))))) in
      (let rec h_3_5_7 = '-' in
        (fun ys_3_8_0 -> 
          (`LH_C(h_3_5_7, ((mappend__d7 t_3_3_9) ys_3_8_0)))))) in
      (let rec h_3_5_8 = '-' in
        (fun ys_3_8_1 -> 
          (`LH_C(h_3_5_8, ((mappend__d7 t_3_3_8) ys_3_8_1)))))) in
      (let rec h_3_5_9 = '-' in
        (fun ys_3_8_2 -> 
          (`LH_C(h_3_5_9, ((mappend__d7 t_3_3_7) ys_3_8_2)))))) in
      (let rec h_3_6_0 = '-' in
        (fun ys_3_8_3 -> 
          (`LH_C(h_3_6_0, ((mappend__d7 t_3_3_6) ys_3_8_3)))))) in
      (let rec h_3_6_1 = '-' in
        (fun ys_3_8_4 -> 
          (`LH_C(h_3_6_1, ((mappend__d7 t_3_3_5) ys_3_8_4)))))) in
      (let rec h_3_6_2 = '-' in
        (fun ys_3_8_5 -> 
          (`LH_C(h_3_6_2, ((mappend__d7 t_3_3_4) ys_3_8_5)))))) in
      (let rec h_3_6_3 = '-' in
        (fun ys_3_8_6 -> 
          (`LH_C(h_3_6_3, ((mappend__d7 t_3_3_3) ys_3_8_6)))))) in
      (let rec h_3_6_4 = '-' in
        (fun ys_3_8_7 -> 
          (`LH_C(h_3_6_4, ((mappend__d7 t_3_3_2) ys_3_8_7)))))) in
      (let rec h_3_6_5 = '-' in
        (fun ys_3_8_8 -> 
          (`LH_C(h_3_6_5, ((mappend__d7 t_3_3_1) ys_3_8_8)))))) in
      (let rec h_3_6_6 = '-' in
        (fun ys_3_8_9 -> 
          (`LH_C(h_3_6_6, ((mappend__d7 t_3_3_0) ys_3_8_9)))))) in
      (let rec h_3_6_7 = '-' in
        (fun ys_3_9_0 -> 
          (`LH_C(h_3_6_7, ((mappend__d7 t_3_2_9) ys_3_9_0)))))) in
      (let rec h_3_6_8 = '-' in
        (fun ys_3_9_1 -> 
          (`LH_C(h_3_6_8, ((mappend__d7 t_3_2_8) ys_3_9_1))))))) s_1)) _lh_funcomp_x_0));;
end;;

