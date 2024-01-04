

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec opposite_lh__d1__d0 _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `LeftBank -> 
      (`RightBank)
    | `RightBank -> 
      (`LeftBank)
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d2__d0 lss_0 =
  (lss_0 99);;
let rec concat_lh__d1__d0 lss_5 =
  (lss_5 99);;
let rec succItem_lh__d1__d0 _lh_succItem_arg1_3 =
  (match _lh_succItem_arg1_3 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d2__d1 _lh_adamPos_arg1_2 =
  (match _lh_adamPos_arg1_2 with
    | `State(_lh_adamPos_State_0_2, _lh_adamPos_State_1_2, _lh_adamPos_State_2_2, _lh_adamPos_State_3_2) -> 
      _lh_adamPos_State_3_2
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d2__d1 _lh_edgePos_arg1_3 =
  (match _lh_edgePos_arg1_3 with
    | `State(_lh_edgePos_State_0_3, _lh_edgePos_State_1_3, _lh_edgePos_State_2_3, _lh_edgePos_State_3_3) -> 
      _lh_edgePos_State_1_3
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d2__d1 _lh_larryPos_arg1_7 =
  (match _lh_larryPos_arg1_7 with
    | `State(_lh_larryPos_State_0_7, _lh_larryPos_State_1_7, _lh_larryPos_State_2_7, _lh_larryPos_State_3_7) -> 
      _lh_larryPos_State_2_7
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d2__d1 _lh_bonoPos_arg1_1_2 =
  (match _lh_bonoPos_arg1_1_2 with
    | `State(_lh_bonoPos_State_0_1_2, _lh_bonoPos_State_1_1_2, _lh_bonoPos_State_2_1_2, _lh_bonoPos_State_3_1_2) -> 
      _lh_bonoPos_State_0_1_2
    | _ -> 
      (failwith "error"));;
let rec position_lh__d2__d1 _lh_position_arg1_1 =
  (match _lh_position_arg1_1 with
    | `Bono -> 
      bonoPos_lh__d2__d1
    | `Edge -> 
      edgePos_lh__d2__d1
    | `Larry -> 
      larryPos_lh__d2__d1
    | `Adam -> 
      adamPos_lh__d2__d1
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d1__d0 _lh_updateState_arg1_2 _lh_updateState_arg2_2 _lh_updateState_arg3_2 =
  (match _lh_updateState_arg1_2 with
    | `State(_lh_updateState_State_0_0, _lh_updateState_State_1_0, _lh_updateState_State_2_0, _lh_updateState_State_3_0) -> 
      (match _lh_updateState_arg2_2 with
        | `Bono -> 
          (let rec _lh_updateState_State_3_1 = _lh_updateState_State_3_0 in
            (let rec _lh_updateState_State_2_1 = _lh_updateState_State_2_0 in
              (let rec _lh_updateState_State_1_1 = _lh_updateState_State_1_0 in
                (let rec _lh_updateState_State_0_1 = _lh_updateState_arg3_2 in
                  (fun _lh_updateState_arg2_3 _lh_updateState_arg3_3 -> 
                    (match _lh_updateState_arg2_3 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_3, _lh_updateState_State_1_1, _lh_updateState_State_2_1, _lh_updateState_State_3_1))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1, _lh_updateState_arg3_3, _lh_updateState_State_2_1, _lh_updateState_State_3_1))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1, _lh_updateState_State_1_1, _lh_updateState_arg3_3, _lh_updateState_State_3_1))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1, _lh_updateState_State_1_1, _lh_updateState_State_2_1, _lh_updateState_arg3_3))
                      | _ -> 
                        (failwith "error")))))))
        | `Edge -> 
          (let rec _lh_updateState_State_3_2 = _lh_updateState_State_3_0 in
            (let rec _lh_updateState_State_2_2 = _lh_updateState_State_2_0 in
              (let rec _lh_updateState_State_1_2 = _lh_updateState_arg3_2 in
                (let rec _lh_updateState_State_0_2 = _lh_updateState_State_0_0 in
                  (fun _lh_updateState_arg2_4 _lh_updateState_arg3_4 -> 
                    (match _lh_updateState_arg2_4 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_4, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_State_3_2))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_arg3_4, _lh_updateState_State_2_2, _lh_updateState_State_3_2))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_arg3_4, _lh_updateState_State_3_2))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_arg3_4))
                      | _ -> 
                        (failwith "error")))))))
        | `Larry -> 
          (let rec _lh_updateState_State_3_3 = _lh_updateState_State_3_0 in
            (let rec _lh_updateState_State_2_3 = _lh_updateState_arg3_2 in
              (let rec _lh_updateState_State_1_3 = _lh_updateState_State_1_0 in
                (let rec _lh_updateState_State_0_3 = _lh_updateState_State_0_0 in
                  (fun _lh_updateState_arg2_5 _lh_updateState_arg3_5 -> 
                    (match _lh_updateState_arg2_5 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_5, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_State_3_3))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_arg3_5, _lh_updateState_State_2_3, _lh_updateState_State_3_3))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_arg3_5, _lh_updateState_State_3_3))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_arg3_5))
                      | _ -> 
                        (failwith "error")))))))
        | `Adam -> 
          (let rec _lh_updateState_State_3_4 = _lh_updateState_arg3_2 in
            (let rec _lh_updateState_State_2_4 = _lh_updateState_State_2_0 in
              (let rec _lh_updateState_State_1_4 = _lh_updateState_State_1_0 in
                (let rec _lh_updateState_State_0_4 = _lh_updateState_State_0_0 in
                  (fun _lh_updateState_arg2_6 _lh_updateState_arg3_6 -> 
                    (match _lh_updateState_arg2_6 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_6, _lh_updateState_State_1_4, _lh_updateState_State_2_4, _lh_updateState_State_3_4))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_arg3_6, _lh_updateState_State_2_4, _lh_updateState_State_3_4))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_State_1_4, _lh_updateState_arg3_6, _lh_updateState_State_3_4))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_4, _lh_updateState_State_1_4, _lh_updateState_State_2_4, _lh_updateState_arg3_6))
                      | _ -> 
                        (failwith "error")))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec all_lh__d2__d1 _lh_all_arg1_5 _lh_all_arg2_5 =
  (match _lh_all_arg2_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_5, _lh_all_LH_C_1_5) -> 
      (if (_lh_all_arg1_5 _lh_all_LH_C_0_5) then
        ((all_lh__d2__d1 _lh_all_arg1_5) _lh_all_LH_C_1_5)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d2__d1 _lh_notSeen_arg1_1 =
  (all_lh__d2__d1 (fun _s_1 -> 
    (let rec _lh_matchIdent_1 = _s_1 in
      (match _lh_matchIdent_1 with
        | `LH_P2(_lh_notSeen_LH_P2_0_1, _lh_notSeen_LH_P2_1_1) -> 
          (_lh_notSeen_arg1_1 <> _lh_notSeen_LH_P2_1_1)
        | _ -> 
          (failwith "error")))));;
let rec mappend_lh__d6__d1 xs_2_8 ys_4_0_1 =
  (match xs_2_8 with
    | `LH_C(h_3_7_1, t_3_7_1) -> 
      (`LH_C(h_3_7_1, ((mappend_lh__d6__d1 t_3_7_1) ys_4_0_1)))
    | `LH_N -> 
      ys_4_0_1);;
let rec edgePos_lh__d1__d1 _lh_edgePos_arg1_5 =
  (match _lh_edgePos_arg1_5 with
    | `State(_lh_edgePos_State_0_5, _lh_edgePos_State_1_5, _lh_edgePos_State_2_5, _lh_edgePos_State_3_5) -> 
      _lh_edgePos_State_1_5
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d1__d1 _lh_larryPos_arg1_3 =
  (match _lh_larryPos_arg1_3 with
    | `State(_lh_larryPos_State_0_3, _lh_larryPos_State_1_3, _lh_larryPos_State_2_3, _lh_larryPos_State_3_3) -> 
      _lh_larryPos_State_2_3
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d1__d1 _lh_adamPos_arg1_1_0 =
  (match _lh_adamPos_arg1_1_0 with
    | `State(_lh_adamPos_State_0_1_0, _lh_adamPos_State_1_1_0, _lh_adamPos_State_2_1_0, _lh_adamPos_State_3_1_0) -> 
      _lh_adamPos_State_3_1_0
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d1__d1 _lh_bonoPos_arg1_2 =
  (match _lh_bonoPos_arg1_2 with
    | `State(_lh_bonoPos_State_0_2, _lh_bonoPos_State_1_2, _lh_bonoPos_State_2_2, _lh_bonoPos_State_3_2) -> 
      _lh_bonoPos_State_0_2
    | _ -> 
      (failwith "error"));;
let rec position_lh__d1__d1 _lh_position_arg1_3 =
  (match _lh_position_arg1_3 with
    | `Bono -> 
      bonoPos_lh__d1__d1
    | `Edge -> 
      edgePos_lh__d1__d1
    | `Larry -> 
      larryPos_lh__d1__d1
    | `Adam -> 
      adamPos_lh__d1__d1
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d2__d0 _lh_edgePos_arg1_1 =
  (match _lh_edgePos_arg1_1 with
    | `State(_lh_edgePos_State_0_1, _lh_edgePos_State_1_1, _lh_edgePos_State_2_1, _lh_edgePos_State_3_1) -> 
      _lh_edgePos_State_1_1
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d2__d0 _lh_adamPos_arg1_3 =
  (match _lh_adamPos_arg1_3 with
    | `State(_lh_adamPos_State_0_3, _lh_adamPos_State_1_3, _lh_adamPos_State_2_3, _lh_adamPos_State_3_3) -> 
      _lh_adamPos_State_3_3
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d2__d0 _lh_bonoPos_arg1_8 =
  (match _lh_bonoPos_arg1_8 with
    | `State(_lh_bonoPos_State_0_8, _lh_bonoPos_State_1_8, _lh_bonoPos_State_2_8, _lh_bonoPos_State_3_8) -> 
      _lh_bonoPos_State_0_8
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d2__d0 _lh_larryPos_arg1_1_2 =
  (match _lh_larryPos_arg1_1_2 with
    | `State(_lh_larryPos_State_0_1_2, _lh_larryPos_State_1_1_2, _lh_larryPos_State_2_1_2, _lh_larryPos_State_3_1_2) -> 
      _lh_larryPos_State_2_1_2
    | _ -> 
      (failwith "error"));;
let rec position_lh__d2__d0 _lh_position_arg1_4 =
  (match _lh_position_arg1_4 with
    | `Bono -> 
      bonoPos_lh__d2__d0
    | `Edge -> 
      edgePos_lh__d2__d0
    | `Larry -> 
      larryPos_lh__d2__d0
    | `Adam -> 
      adamPos_lh__d2__d0
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d1__d0 _lh_larryPos_arg1_1_0 =
  (match _lh_larryPos_arg1_1_0 with
    | `State(_lh_larryPos_State_0_1_0, _lh_larryPos_State_1_1_0, _lh_larryPos_State_2_1_0, _lh_larryPos_State_3_1_0) -> 
      _lh_larryPos_State_2_1_0
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d1__d0 _lh_adamPos_arg1_5 =
  (match _lh_adamPos_arg1_5 with
    | `State(_lh_adamPos_State_0_5, _lh_adamPos_State_1_5, _lh_adamPos_State_2_5, _lh_adamPos_State_3_5) -> 
      _lh_adamPos_State_3_5
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d1__d0 _lh_edgePos_arg1_7 =
  (match _lh_edgePos_arg1_7 with
    | `State(_lh_edgePos_State_0_7, _lh_edgePos_State_1_7, _lh_edgePos_State_2_7, _lh_edgePos_State_3_7) -> 
      _lh_edgePos_State_1_7
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d1__d0 _lh_bonoPos_arg1_1_1 =
  (match _lh_bonoPos_arg1_1_1 with
    | `State(_lh_bonoPos_State_0_1_1, _lh_bonoPos_State_1_1_1, _lh_bonoPos_State_2_1_1, _lh_bonoPos_State_3_1_1) -> 
      _lh_bonoPos_State_0_1_1
    | _ -> 
      (failwith "error"));;
let rec position_lh__d1__d0 _lh_position_arg1_8 =
  (match _lh_position_arg1_8 with
    | `Bono -> 
      bonoPos_lh__d1__d0
    | `Edge -> 
      edgePos_lh__d1__d0
    | `Larry -> 
      larryPos_lh__d1__d0
    | `Adam -> 
      adamPos_lh__d1__d0
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1__d2 lss_6 =
  (lss_6 99);;
let rec u2times_lh__d2__d1 _lh_u2times_arg1_4 =
  (match _lh_u2times_arg1_4 with
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
let rec succItem_lh__d3__d0 _lh_succItem_arg1_1 =
  (match _lh_succItem_arg1_1 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d3__d0 _lh_updateState_arg1_0 _lh_updateState_arg2_0 _lh_updateState_arg3_0 =
  ((_lh_updateState_arg1_0 _lh_updateState_arg2_0) _lh_updateState_arg3_0);;
let rec mappend_lh__d6__d0 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d6__d0 t_0) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec u2times_lh__d2__d0 _lh_u2times_arg1_3 =
  (match _lh_u2times_arg1_3 with
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
let rec concat_lh__d1__d1 lss_4 =
  (lss_4 99);;
let rec updateState_lh__d1__d1 _lh_updateState_arg1_7 _lh_updateState_arg2_1_9 _lh_updateState_arg3_1_9 =
  (match _lh_updateState_arg1_7 with
    | `State(_lh_updateState_State_0_1_6, _lh_updateState_State_1_1_6, _lh_updateState_State_2_1_6, _lh_updateState_State_3_1_6) -> 
      (match _lh_updateState_arg2_1_9 with
        | `Bono -> 
          (let rec _lh_updateState_State_3_1_7 = _lh_updateState_State_3_1_6 in
            (let rec _lh_updateState_State_2_1_7 = _lh_updateState_State_2_1_6 in
              (let rec _lh_updateState_State_1_1_7 = _lh_updateState_State_1_1_6 in
                (let rec _lh_updateState_State_0_1_7 = _lh_updateState_arg3_1_9 in
                  (fun _lh_updateState_arg2_2_0 _lh_updateState_arg3_2_0 -> 
                    (match _lh_updateState_arg2_2_0 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_2_0, _lh_updateState_State_1_1_7, _lh_updateState_State_2_1_7, _lh_updateState_State_3_1_7))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_7, _lh_updateState_arg3_2_0, _lh_updateState_State_2_1_7, _lh_updateState_State_3_1_7))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_7, _lh_updateState_State_1_1_7, _lh_updateState_arg3_2_0, _lh_updateState_State_3_1_7))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_7, _lh_updateState_State_1_1_7, _lh_updateState_State_2_1_7, _lh_updateState_arg3_2_0))
                      | _ -> 
                        (failwith "error")))))))
        | `Edge -> 
          (let rec _lh_updateState_State_3_1_8 = _lh_updateState_State_3_1_6 in
            (let rec _lh_updateState_State_2_1_8 = _lh_updateState_State_2_1_6 in
              (let rec _lh_updateState_State_1_1_8 = _lh_updateState_arg3_1_9 in
                (let rec _lh_updateState_State_0_1_8 = _lh_updateState_State_0_1_6 in
                  (fun _lh_updateState_arg2_2_1 _lh_updateState_arg3_2_1 -> 
                    (match _lh_updateState_arg2_2_1 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_2_1, _lh_updateState_State_1_1_8, _lh_updateState_State_2_1_8, _lh_updateState_State_3_1_8))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_8, _lh_updateState_arg3_2_1, _lh_updateState_State_2_1_8, _lh_updateState_State_3_1_8))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_8, _lh_updateState_State_1_1_8, _lh_updateState_arg3_2_1, _lh_updateState_State_3_1_8))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_8, _lh_updateState_State_1_1_8, _lh_updateState_State_2_1_8, _lh_updateState_arg3_2_1))
                      | _ -> 
                        (failwith "error")))))))
        | `Larry -> 
          (let rec _lh_updateState_State_3_1_9 = _lh_updateState_State_3_1_6 in
            (let rec _lh_updateState_State_2_1_9 = _lh_updateState_arg3_1_9 in
              (let rec _lh_updateState_State_1_1_9 = _lh_updateState_State_1_1_6 in
                (let rec _lh_updateState_State_0_1_9 = _lh_updateState_State_0_1_6 in
                  (fun _lh_updateState_arg2_2_2 _lh_updateState_arg3_2_2 -> 
                    (match _lh_updateState_arg2_2_2 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_2_2, _lh_updateState_State_1_1_9, _lh_updateState_State_2_1_9, _lh_updateState_State_3_1_9))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_9, _lh_updateState_arg3_2_2, _lh_updateState_State_2_1_9, _lh_updateState_State_3_1_9))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_9, _lh_updateState_State_1_1_9, _lh_updateState_arg3_2_2, _lh_updateState_State_3_1_9))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_9, _lh_updateState_State_1_1_9, _lh_updateState_State_2_1_9, _lh_updateState_arg3_2_2))
                      | _ -> 
                        (failwith "error")))))))
        | `Adam -> 
          (let rec _lh_updateState_State_3_2_0 = _lh_updateState_arg3_1_9 in
            (let rec _lh_updateState_State_2_2_0 = _lh_updateState_State_2_1_6 in
              (let rec _lh_updateState_State_1_2_0 = _lh_updateState_State_1_1_6 in
                (let rec _lh_updateState_State_0_2_0 = _lh_updateState_State_0_1_6 in
                  (fun _lh_updateState_arg2_2_3 _lh_updateState_arg3_2_3 -> 
                    (match _lh_updateState_arg2_2_3 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_2_3, _lh_updateState_State_1_2_0, _lh_updateState_State_2_2_0, _lh_updateState_State_3_2_0))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_2_0, _lh_updateState_arg3_2_3, _lh_updateState_State_2_2_0, _lh_updateState_State_3_2_0))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_2_0, _lh_updateState_State_1_2_0, _lh_updateState_arg3_2_3, _lh_updateState_State_3_2_0))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_2_0, _lh_updateState_State_1_2_0, _lh_updateState_State_2_2_0, _lh_updateState_arg3_2_3))
                      | _ -> 
                        (failwith "error")))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec all_lh__d2__d0 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all_lh__d2__d0 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d2__d0 _lh_notSeen_arg1_5 =
  (all_lh__d2__d0 (fun _s_5 -> 
    (let rec _lh_matchIdent_8 = _s_5 in
      (match _lh_matchIdent_8 with
        | `LH_P2(_lh_notSeen_LH_P2_0_5, _lh_notSeen_LH_P2_1_5) -> 
          (_lh_notSeen_arg1_5 <> _lh_notSeen_LH_P2_1_5)
        | _ -> 
          (failwith "error")))));;
let rec updateState_lh__d3__d1 _lh_updateState_arg1_8 _lh_updateState_arg2_2_4 _lh_updateState_arg3_2_4 =
  ((_lh_updateState_arg1_8 _lh_updateState_arg2_2_4) _lh_updateState_arg3_2_4);;
let rec succItem_lh__d1__d1 _lh_succItem_arg1_4 =
  (match _lh_succItem_arg1_4 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d3__d3 _lh_updateState_arg1_1 _lh_updateState_arg2_1 _lh_updateState_arg3_1 =
  ((_lh_updateState_arg1_1 _lh_updateState_arg2_1) _lh_updateState_arg3_1);;
let rec mappend_lh__d6__d3 xs_2_7 ys_4_0_0 =
  (match xs_2_7 with
    | `LH_C(h_3_7_0, t_3_7_0) -> 
      (`LH_C(h_3_7_0, ((mappend_lh__d6__d3 t_3_7_0) ys_4_0_0)))
    | `LH_N -> 
      ys_4_0_0);;
let rec updateState_lh__d3__d2 _lh_updateState_arg1_3 _lh_updateState_arg2_7 _lh_updateState_arg3_7 =
  ((_lh_updateState_arg1_3 _lh_updateState_arg2_7) _lh_updateState_arg3_7);;
let rec u2times_lh__d2__d3 _lh_u2times_arg1_1 =
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
let rec all_lh__d2__d2 _lh_all_arg1_2 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_2) then
        ((all_lh__d2__d2 _lh_all_arg1_2) _lh_all_LH_C_1_2)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d2__d2 _lh_notSeen_arg1_2 =
  (all_lh__d2__d2 (fun _s_2 -> 
    (let rec _lh_matchIdent_4 = _s_2 in
      (match _lh_matchIdent_4 with
        | `LH_P2(_lh_notSeen_LH_P2_0_2, _lh_notSeen_LH_P2_1_2) -> 
          (_lh_notSeen_arg1_2 <> _lh_notSeen_LH_P2_1_2)
        | _ -> 
          (failwith "error")))));;
let rec concat_lh__d1__d4 lss_1 =
  (lss_1 99);;
let rec updateState_lh__d1__d2 _lh_updateState_arg1_5 _lh_updateState_arg2_1_3 _lh_updateState_arg3_1_3 =
  (match _lh_updateState_arg1_5 with
    | `State(_lh_updateState_State_0_1_0, _lh_updateState_State_1_1_0, _lh_updateState_State_2_1_0, _lh_updateState_State_3_1_0) -> 
      (match _lh_updateState_arg2_1_3 with
        | `Bono -> 
          (let rec _lh_updateState_State_3_1_1 = _lh_updateState_State_3_1_0 in
            (let rec _lh_updateState_State_2_1_1 = _lh_updateState_State_2_1_0 in
              (let rec _lh_updateState_State_1_1_1 = _lh_updateState_State_1_1_0 in
                (let rec _lh_updateState_State_0_1_1 = _lh_updateState_arg3_1_3 in
                  (fun _lh_updateState_arg2_1_4 _lh_updateState_arg3_1_4 -> 
                    (match _lh_updateState_arg2_1_4 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_4, _lh_updateState_State_1_1_1, _lh_updateState_State_2_1_1, _lh_updateState_State_3_1_1))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_1, _lh_updateState_arg3_1_4, _lh_updateState_State_2_1_1, _lh_updateState_State_3_1_1))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_1, _lh_updateState_State_1_1_1, _lh_updateState_arg3_1_4, _lh_updateState_State_3_1_1))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_1, _lh_updateState_State_1_1_1, _lh_updateState_State_2_1_1, _lh_updateState_arg3_1_4))
                      | _ -> 
                        (failwith "error")))))))
        | `Edge -> 
          (let rec _lh_updateState_State_3_1_2 = _lh_updateState_State_3_1_0 in
            (let rec _lh_updateState_State_2_1_2 = _lh_updateState_State_2_1_0 in
              (let rec _lh_updateState_State_1_1_2 = _lh_updateState_arg3_1_3 in
                (let rec _lh_updateState_State_0_1_2 = _lh_updateState_State_0_1_0 in
                  (fun _lh_updateState_arg2_1_5 _lh_updateState_arg3_1_5 -> 
                    (match _lh_updateState_arg2_1_5 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_5, _lh_updateState_State_1_1_2, _lh_updateState_State_2_1_2, _lh_updateState_State_3_1_2))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_2, _lh_updateState_arg3_1_5, _lh_updateState_State_2_1_2, _lh_updateState_State_3_1_2))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_2, _lh_updateState_State_1_1_2, _lh_updateState_arg3_1_5, _lh_updateState_State_3_1_2))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_2, _lh_updateState_State_1_1_2, _lh_updateState_State_2_1_2, _lh_updateState_arg3_1_5))
                      | _ -> 
                        (failwith "error")))))))
        | `Larry -> 
          (let rec _lh_updateState_State_3_1_3 = _lh_updateState_State_3_1_0 in
            (let rec _lh_updateState_State_2_1_3 = _lh_updateState_arg3_1_3 in
              (let rec _lh_updateState_State_1_1_3 = _lh_updateState_State_1_1_0 in
                (let rec _lh_updateState_State_0_1_3 = _lh_updateState_State_0_1_0 in
                  (fun _lh_updateState_arg2_1_6 _lh_updateState_arg3_1_6 -> 
                    (match _lh_updateState_arg2_1_6 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_6, _lh_updateState_State_1_1_3, _lh_updateState_State_2_1_3, _lh_updateState_State_3_1_3))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_3, _lh_updateState_arg3_1_6, _lh_updateState_State_2_1_3, _lh_updateState_State_3_1_3))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_3, _lh_updateState_State_1_1_3, _lh_updateState_arg3_1_6, _lh_updateState_State_3_1_3))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_3, _lh_updateState_State_1_1_3, _lh_updateState_State_2_1_3, _lh_updateState_arg3_1_6))
                      | _ -> 
                        (failwith "error")))))))
        | `Adam -> 
          (let rec _lh_updateState_State_3_1_4 = _lh_updateState_arg3_1_3 in
            (let rec _lh_updateState_State_2_1_4 = _lh_updateState_State_2_1_0 in
              (let rec _lh_updateState_State_1_1_4 = _lh_updateState_State_1_1_0 in
                (let rec _lh_updateState_State_0_1_4 = _lh_updateState_State_0_1_0 in
                  (fun _lh_updateState_arg2_1_7 _lh_updateState_arg3_1_7 -> 
                    (match _lh_updateState_arg2_1_7 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_7, _lh_updateState_State_1_1_4, _lh_updateState_State_2_1_4, _lh_updateState_State_3_1_4))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_1_4, _lh_updateState_arg3_1_7, _lh_updateState_State_2_1_4, _lh_updateState_State_3_1_4))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_1_4, _lh_updateState_State_1_1_4, _lh_updateState_arg3_1_7, _lh_updateState_State_3_1_4))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_1_4, _lh_updateState_State_1_1_4, _lh_updateState_State_2_1_4, _lh_updateState_arg3_1_7))
                      | _ -> 
                        (failwith "error")))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1__d3 lss_3 =
  (lss_3 99);;
let rec all_lh__d2__d3 _lh_all_arg1_3 _lh_all_arg2_3 =
  (match _lh_all_arg2_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_3, _lh_all_LH_C_1_3) -> 
      (if (_lh_all_arg1_3 _lh_all_LH_C_0_3) then
        ((all_lh__d2__d3 _lh_all_arg1_3) _lh_all_LH_C_1_3)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d2__d3 _lh_notSeen_arg1_4 =
  (all_lh__d2__d3 (fun _s_4 -> 
    (let rec _lh_matchIdent_7 = _s_4 in
      (match _lh_matchIdent_7 with
        | `LH_P2(_lh_notSeen_LH_P2_0_4, _lh_notSeen_LH_P2_1_4) -> 
          (_lh_notSeen_arg1_4 <> _lh_notSeen_LH_P2_1_4)
        | _ -> 
          (failwith "error")))));;
let rec mappend_lh__d6__d2 xs_8_2 ys_1_2_5_2 =
  (match xs_8_2 with
    | `LH_C(h_1_1_5_6, t_1_1_5_6) -> 
      (`LH_C(h_1_1_5_6, ((mappend_lh__d6__d2 t_1_1_5_6) ys_1_2_5_2)))
    | `LH_N -> 
      ys_1_2_5_2);;
let rec edgePos_lh__d1__d2 _lh_edgePos_arg1_1_0 =
  (match _lh_edgePos_arg1_1_0 with
    | `State(_lh_edgePos_State_0_1_0, _lh_edgePos_State_1_1_0, _lh_edgePos_State_2_1_0, _lh_edgePos_State_3_1_0) -> 
      _lh_edgePos_State_1_1_0
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d1__d2 _lh_larryPos_arg1_9 =
  (match _lh_larryPos_arg1_9 with
    | `State(_lh_larryPos_State_0_9, _lh_larryPos_State_1_9, _lh_larryPos_State_2_9, _lh_larryPos_State_3_9) -> 
      _lh_larryPos_State_2_9
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d1__d2 _lh_bonoPos_arg1_1 =
  (match _lh_bonoPos_arg1_1 with
    | `State(_lh_bonoPos_State_0_1, _lh_bonoPos_State_1_1, _lh_bonoPos_State_2_1, _lh_bonoPos_State_3_1) -> 
      _lh_bonoPos_State_0_1
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d1__d2 _lh_adamPos_arg1_1_2 =
  (match _lh_adamPos_arg1_1_2 with
    | `State(_lh_adamPos_State_0_1_2, _lh_adamPos_State_1_1_2, _lh_adamPos_State_2_1_2, _lh_adamPos_State_3_1_2) -> 
      _lh_adamPos_State_3_1_2
    | _ -> 
      (failwith "error"));;
let rec position_lh__d1__d2 _lh_position_arg1_0 =
  (match _lh_position_arg1_0 with
    | `Bono -> 
      bonoPos_lh__d1__d2
    | `Edge -> 
      edgePos_lh__d1__d2
    | `Larry -> 
      larryPos_lh__d1__d2
    | `Adam -> 
      adamPos_lh__d1__d2
    | _ -> 
      (failwith "error"));;
let rec succItem_lh__d3__d1 _lh_succItem_arg1_0 =
  (match _lh_succItem_arg1_0 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d2__d3 _lh_larryPos_arg1_6 =
  (match _lh_larryPos_arg1_6 with
    | `State(_lh_larryPos_State_0_6, _lh_larryPos_State_1_6, _lh_larryPos_State_2_6, _lh_larryPos_State_3_6) -> 
      _lh_larryPos_State_2_6
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d2__d3 _lh_adamPos_arg1_0 =
  (match _lh_adamPos_arg1_0 with
    | `State(_lh_adamPos_State_0_0, _lh_adamPos_State_1_0, _lh_adamPos_State_2_0, _lh_adamPos_State_3_0) -> 
      _lh_adamPos_State_3_0
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d2__d3 _lh_bonoPos_arg1_7 =
  (match _lh_bonoPos_arg1_7 with
    | `State(_lh_bonoPos_State_0_7, _lh_bonoPos_State_1_7, _lh_bonoPos_State_2_7, _lh_bonoPos_State_3_7) -> 
      _lh_bonoPos_State_0_7
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d2__d3 _lh_edgePos_arg1_0 =
  (match _lh_edgePos_arg1_0 with
    | `State(_lh_edgePos_State_0_0, _lh_edgePos_State_1_0, _lh_edgePos_State_2_0, _lh_edgePos_State_3_0) -> 
      _lh_edgePos_State_1_0
    | _ -> 
      (failwith "error"));;
let rec position_lh__d2__d3 _lh_position_arg1_2 =
  (match _lh_position_arg1_2 with
    | `Bono -> 
      bonoPos_lh__d2__d3
    | `Edge -> 
      edgePos_lh__d2__d3
    | `Larry -> 
      larryPos_lh__d2__d3
    | `Adam -> 
      adamPos_lh__d2__d3
    | _ -> 
      (failwith "error"));;
let rec u2times_lh__d2__d2 _lh_u2times_arg1_0 =
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
let rec bonoPos_lh__d2__d2 _lh_bonoPos_arg1_3 =
  (match _lh_bonoPos_arg1_3 with
    | `State(_lh_bonoPos_State_0_3, _lh_bonoPos_State_1_3, _lh_bonoPos_State_2_3, _lh_bonoPos_State_3_3) -> 
      _lh_bonoPos_State_0_3
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d2__d2 _lh_edgePos_arg1_4 =
  (match _lh_edgePos_arg1_4 with
    | `State(_lh_edgePos_State_0_4, _lh_edgePos_State_1_4, _lh_edgePos_State_2_4, _lh_edgePos_State_3_4) -> 
      _lh_edgePos_State_1_4
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d2__d2 _lh_larryPos_arg1_1_1 =
  (match _lh_larryPos_arg1_1_1 with
    | `State(_lh_larryPos_State_0_1_1, _lh_larryPos_State_1_1_1, _lh_larryPos_State_2_1_1, _lh_larryPos_State_3_1_1) -> 
      _lh_larryPos_State_2_1_1
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d2__d2 _lh_adamPos_arg1_8 =
  (match _lh_adamPos_arg1_8 with
    | `State(_lh_adamPos_State_0_8, _lh_adamPos_State_1_8, _lh_adamPos_State_2_8, _lh_adamPos_State_3_8) -> 
      _lh_adamPos_State_3_8
    | _ -> 
      (failwith "error"));;
let rec position_lh__d2__d2 _lh_position_arg1_5 =
  (match _lh_position_arg1_5 with
    | `Bono -> 
      bonoPos_lh__d2__d2
    | `Edge -> 
      edgePos_lh__d2__d2
    | `Larry -> 
      larryPos_lh__d2__d2
    | `Adam -> 
      adamPos_lh__d2__d2
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d1__d3 _lh_updateState_arg1_4 _lh_updateState_arg2_8 _lh_updateState_arg3_8 =
  (match _lh_updateState_arg1_4 with
    | `State(_lh_updateState_State_0_5, _lh_updateState_State_1_5, _lh_updateState_State_2_5, _lh_updateState_State_3_5) -> 
      (match _lh_updateState_arg2_8 with
        | `Bono -> 
          (let rec _lh_updateState_State_3_6 = _lh_updateState_State_3_5 in
            (let rec _lh_updateState_State_2_6 = _lh_updateState_State_2_5 in
              (let rec _lh_updateState_State_1_6 = _lh_updateState_State_1_5 in
                (let rec _lh_updateState_State_0_6 = _lh_updateState_arg3_8 in
                  (fun _lh_updateState_arg2_9 _lh_updateState_arg3_9 -> 
                    (match _lh_updateState_arg2_9 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_9, _lh_updateState_State_1_6, _lh_updateState_State_2_6, _lh_updateState_State_3_6))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_6, _lh_updateState_arg3_9, _lh_updateState_State_2_6, _lh_updateState_State_3_6))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_6, _lh_updateState_State_1_6, _lh_updateState_arg3_9, _lh_updateState_State_3_6))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_6, _lh_updateState_State_1_6, _lh_updateState_State_2_6, _lh_updateState_arg3_9))
                      | _ -> 
                        (failwith "error")))))))
        | `Edge -> 
          (let rec _lh_updateState_State_3_7 = _lh_updateState_State_3_5 in
            (let rec _lh_updateState_State_2_7 = _lh_updateState_State_2_5 in
              (let rec _lh_updateState_State_1_7 = _lh_updateState_arg3_8 in
                (let rec _lh_updateState_State_0_7 = _lh_updateState_State_0_5 in
                  (fun _lh_updateState_arg2_1_0 _lh_updateState_arg3_1_0 -> 
                    (match _lh_updateState_arg2_1_0 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_0, _lh_updateState_State_1_7, _lh_updateState_State_2_7, _lh_updateState_State_3_7))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_7, _lh_updateState_arg3_1_0, _lh_updateState_State_2_7, _lh_updateState_State_3_7))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_7, _lh_updateState_State_1_7, _lh_updateState_arg3_1_0, _lh_updateState_State_3_7))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_7, _lh_updateState_State_1_7, _lh_updateState_State_2_7, _lh_updateState_arg3_1_0))
                      | _ -> 
                        (failwith "error")))))))
        | `Larry -> 
          (let rec _lh_updateState_State_3_8 = _lh_updateState_State_3_5 in
            (let rec _lh_updateState_State_2_8 = _lh_updateState_arg3_8 in
              (let rec _lh_updateState_State_1_8 = _lh_updateState_State_1_5 in
                (let rec _lh_updateState_State_0_8 = _lh_updateState_State_0_5 in
                  (fun _lh_updateState_arg2_1_1 _lh_updateState_arg3_1_1 -> 
                    (match _lh_updateState_arg2_1_1 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_1, _lh_updateState_State_1_8, _lh_updateState_State_2_8, _lh_updateState_State_3_8))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_8, _lh_updateState_arg3_1_1, _lh_updateState_State_2_8, _lh_updateState_State_3_8))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_8, _lh_updateState_State_1_8, _lh_updateState_arg3_1_1, _lh_updateState_State_3_8))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_8, _lh_updateState_State_1_8, _lh_updateState_State_2_8, _lh_updateState_arg3_1_1))
                      | _ -> 
                        (failwith "error")))))))
        | `Adam -> 
          (let rec _lh_updateState_State_3_9 = _lh_updateState_arg3_8 in
            (let rec _lh_updateState_State_2_9 = _lh_updateState_State_2_5 in
              (let rec _lh_updateState_State_1_9 = _lh_updateState_State_1_5 in
                (let rec _lh_updateState_State_0_9 = _lh_updateState_State_0_5 in
                  (fun _lh_updateState_arg2_1_2 _lh_updateState_arg3_1_2 -> 
                    (match _lh_updateState_arg2_1_2 with
                      | `Bono -> 
                        (`State(_lh_updateState_arg3_1_2, _lh_updateState_State_1_9, _lh_updateState_State_2_9, _lh_updateState_State_3_9))
                      | `Edge -> 
                        (`State(_lh_updateState_State_0_9, _lh_updateState_arg3_1_2, _lh_updateState_State_2_9, _lh_updateState_State_3_9))
                      | `Larry -> 
                        (`State(_lh_updateState_State_0_9, _lh_updateState_State_1_9, _lh_updateState_arg3_1_2, _lh_updateState_State_3_9))
                      | `Adam -> 
                        (`State(_lh_updateState_State_0_9, _lh_updateState_State_1_9, _lh_updateState_State_2_9, _lh_updateState_arg3_1_2))
                      | _ -> 
                        (failwith "error")))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d1__d3 _lh_adamPos_arg1_9 =
  (match _lh_adamPos_arg1_9 with
    | `State(_lh_adamPos_State_0_9, _lh_adamPos_State_1_9, _lh_adamPos_State_2_9, _lh_adamPos_State_3_9) -> 
      _lh_adamPos_State_3_9
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d1__d3 _lh_bonoPos_arg1_5 =
  (match _lh_bonoPos_arg1_5 with
    | `State(_lh_bonoPos_State_0_5, _lh_bonoPos_State_1_5, _lh_bonoPos_State_2_5, _lh_bonoPos_State_3_5) -> 
      _lh_bonoPos_State_0_5
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d1__d3 _lh_edgePos_arg1_2 =
  (match _lh_edgePos_arg1_2 with
    | `State(_lh_edgePos_State_0_2, _lh_edgePos_State_1_2, _lh_edgePos_State_2_2, _lh_edgePos_State_3_2) -> 
      _lh_edgePos_State_1_2
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d1__d3 _lh_larryPos_arg1_8 =
  (match _lh_larryPos_arg1_8 with
    | `State(_lh_larryPos_State_0_8, _lh_larryPos_State_1_8, _lh_larryPos_State_2_8, _lh_larryPos_State_3_8) -> 
      _lh_larryPos_State_2_8
    | _ -> 
      (failwith "error"));;
let rec position_lh__d1__d3 _lh_position_arg1_9 =
  (match _lh_position_arg1_9 with
    | `Bono -> 
      bonoPos_lh__d1__d3
    | `Edge -> 
      edgePos_lh__d1__d3
    | `Larry -> 
      larryPos_lh__d1__d3
    | `Adam -> 
      adamPos_lh__d1__d3
    | _ -> 
      (failwith "error"));;
let rec succItem_lh__d4__d0 _lh_succItem_arg1_5 =
  (match _lh_succItem_arg1_5 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3__d0 xs_7_1 ys_4_9_5 =
  (match xs_7_1 with
    | `LH_C(h_4_2_5, t_4_2_5) -> 
      (`LH_C(h_4_2_5, ((mappend_lh__d3__d0 t_4_2_5) ys_4_9_5)))
    | `LH_N -> 
      ys_4_9_5);;
let rec succItem_lh__d2__d0 _lh_succItem_arg1_2 =
  (match _lh_succItem_arg1_2 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec all_lh__d1__d1 _lh_all_arg1_4 _lh_all_arg2_4 =
  (match _lh_all_arg2_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_4, _lh_all_LH_C_1_4) -> 
      (if (_lh_all_arg1_4 _lh_all_LH_C_0_4) then
        ((all_lh__d1__d1 _lh_all_arg1_4) _lh_all_LH_C_1_4)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d1__d1 _lh_notSeen_arg1_0 =
  (all_lh__d1__d1 (fun _s_0 -> 
    (let rec _lh_matchIdent_0 = _s_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_notSeen_LH_P2_0_0, _lh_notSeen_LH_P2_1_0) -> 
          (_lh_notSeen_arg1_0 <> _lh_notSeen_LH_P2_1_0)
        | _ -> 
          (failwith "error")))));;
let rec u2times_lh__d1__d0 _lh_u2times_arg1_2 =
  (match _lh_u2times_arg1_2 with
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
let rec mappend_lh__d7__d3_d0 xs_4_4 ys_4_3_1 =
  (match xs_4_4 with
    | `LH_C(h_3_8_7, t_3_8_7) -> 
      (`LH_C(h_3_8_7, ((mappend_lh__d7__d3_d0 t_3_8_7) ys_4_3_1)))
    | `LH_N -> 
      ys_4_3_1);;
let rec all_lh__d1__d0 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d1__d0 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec notSeen_lh__d1__d0 _lh_notSeen_arg1_3 =
  (all_lh__d1__d0 (fun _s_3 -> 
    (let rec _lh_matchIdent_5 = _s_3 in
      (match _lh_matchIdent_5 with
        | `LH_P2(_lh_notSeen_LH_P2_0_3, _lh_notSeen_LH_P2_1_3) -> 
          (_lh_notSeen_arg1_3 <> _lh_notSeen_LH_P2_1_3)
        | _ -> 
          (failwith "error")))));;
let rec concat_lh__d2__d1 lss_2 =
  (lss_2 99);;
let rec adamPos_lh__d3__d4 _lh_adamPos_arg1_1 =
  (match _lh_adamPos_arg1_1 with
    | `State(_lh_adamPos_State_0_1, _lh_adamPos_State_1_1, _lh_adamPos_State_2_1, _lh_adamPos_State_3_1) -> 
      _lh_adamPos_State_3_1
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d3__d1 _lh_edgePos_arg1_1_1 =
  (match _lh_edgePos_arg1_1_1 with
    | `State(_lh_edgePos_State_0_1_1, _lh_edgePos_State_1_1_1, _lh_edgePos_State_2_1_1, _lh_edgePos_State_3_1_1) -> 
      _lh_edgePos_State_1_1_1
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d3__d4 _lh_larryPos_arg1_0 =
  (match _lh_larryPos_arg1_0 with
    | `State(_lh_larryPos_State_0_0, _lh_larryPos_State_1_0, _lh_larryPos_State_2_0, _lh_larryPos_State_3_0) -> 
      _lh_larryPos_State_2_0
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d3__d4 _lh_bonoPos_arg1_4 =
  (match _lh_bonoPos_arg1_4 with
    | `State(_lh_bonoPos_State_0_4, _lh_bonoPos_State_1_4, _lh_bonoPos_State_2_4, _lh_bonoPos_State_3_4) -> 
      _lh_bonoPos_State_0_4
    | _ -> 
      (failwith "error"));;
let rec position_lh__d3__d1 _lh_position_arg1_6 =
  (match _lh_position_arg1_6 with
    | `Bono -> 
      bonoPos_lh__d3__d4
    | `Edge -> 
      edgePos_lh__d3__d1
    | `Larry -> 
      larryPos_lh__d3__d4
    | `Adam -> 
      adamPos_lh__d3__d4
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d3_d1 xs_8_3 ys_1_2_5_3 =
  (match xs_8_3 with
    | `LH_C(h_1_1_5_7, t_1_1_5_7) -> 
      (`LH_C(h_1_1_5_7, ((mappend_lh__d7__d3_d1 t_1_1_5_7) ys_1_2_5_3)))
    | `LH_N -> 
      ys_1_2_5_3);;
let rec u2times_lh__d1__d1 _lh_u2times_arg1_5 =
  (match _lh_u2times_arg1_5 with
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
let rec adamPos_lh__d3__d3 _lh_adamPos_arg1_6 =
  (match _lh_adamPos_arg1_6 with
    | `State(_lh_adamPos_State_0_6, _lh_adamPos_State_1_6, _lh_adamPos_State_2_6, _lh_adamPos_State_3_6) -> 
      _lh_adamPos_State_3_6
    | _ -> 
      (failwith "error"));;
let rec larryPos_lh__d3__d3 _lh_larryPos_arg1_2 =
  (match _lh_larryPos_arg1_2 with
    | `State(_lh_larryPos_State_0_2, _lh_larryPos_State_1_2, _lh_larryPos_State_2_2, _lh_larryPos_State_3_2) -> 
      _lh_larryPos_State_2_2
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d3__d0 _lh_edgePos_arg1_1_2 =
  (match _lh_edgePos_arg1_1_2 with
    | `State(_lh_edgePos_State_0_1_2, _lh_edgePos_State_1_1_2, _lh_edgePos_State_2_1_2, _lh_edgePos_State_3_1_2) -> 
      _lh_edgePos_State_1_1_2
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d3__d3 _lh_bonoPos_arg1_0 =
  (match _lh_bonoPos_arg1_0 with
    | `State(_lh_bonoPos_State_0_0, _lh_bonoPos_State_1_0, _lh_bonoPos_State_2_0, _lh_bonoPos_State_3_0) -> 
      _lh_bonoPos_State_0_0
    | _ -> 
      (failwith "error"));;
let rec position_lh__d3__d0 _lh_position_arg1_7 =
  (match _lh_position_arg1_7 with
    | `Bono -> 
      bonoPos_lh__d3__d3
    | `Edge -> 
      edgePos_lh__d3__d0
    | `Larry -> 
      larryPos_lh__d3__d3
    | `Adam -> 
      adamPos_lh__d3__d3
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d2__d1 _lh_updateState_arg1_6 _lh_updateState_arg2_1_8 _lh_updateState_arg3_1_8 =
  (match _lh_updateState_arg1_6 with
    | `State(_lh_updateState_State_0_1_5, _lh_updateState_State_1_1_5, _lh_updateState_State_2_1_5, _lh_updateState_State_3_1_5) -> 
      (match _lh_updateState_arg2_1_8 with
        | `Bono -> 
          (`State(_lh_updateState_arg3_1_8, _lh_updateState_State_1_1_5, _lh_updateState_State_2_1_5, _lh_updateState_State_3_1_5))
        | `Edge -> 
          (`State(_lh_updateState_State_0_1_5, _lh_updateState_arg3_1_8, _lh_updateState_State_2_1_5, _lh_updateState_State_3_1_5))
        | `Larry -> 
          (`State(_lh_updateState_State_0_1_5, _lh_updateState_State_1_1_5, _lh_updateState_arg3_1_8, _lh_updateState_State_3_1_5))
        | `Adam -> 
          (`State(_lh_updateState_State_0_1_5, _lh_updateState_State_1_1_5, _lh_updateState_State_2_1_5, _lh_updateState_arg3_1_8))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec updateState_lh__d2__d0 _lh_updateState_arg1_9 _lh_updateState_arg2_2_5 _lh_updateState_arg3_2_5 =
  (match _lh_updateState_arg1_9 with
    | `State(_lh_updateState_State_0_2_1, _lh_updateState_State_1_2_1, _lh_updateState_State_2_2_1, _lh_updateState_State_3_2_1) -> 
      (match _lh_updateState_arg2_2_5 with
        | `Bono -> 
          (`State(_lh_updateState_arg3_2_5, _lh_updateState_State_1_2_1, _lh_updateState_State_2_2_1, _lh_updateState_State_3_2_1))
        | `Edge -> 
          (`State(_lh_updateState_State_0_2_1, _lh_updateState_arg3_2_5, _lh_updateState_State_2_2_1, _lh_updateState_State_3_2_1))
        | `Larry -> 
          (`State(_lh_updateState_State_0_2_1, _lh_updateState_State_1_2_1, _lh_updateState_arg3_2_5, _lh_updateState_State_3_2_1))
        | `Adam -> 
          (`State(_lh_updateState_State_0_2_1, _lh_updateState_State_1_2_1, _lh_updateState_State_2_2_1, _lh_updateState_arg3_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d2__d2 lss_7 =
  (lss_7 99);;
let rec itemFromTo_lh__d1__d0 _lh_itemFromTo_arg1_2 _lh_itemFromTo_arg2_2 _lh_popOutId_0_2 _lh_popOutId_1_2 _lh_popOutId_2_2 _lh_popOutId_3_2 _lh_popOutId_4_2 _lh_popOutId_5_2 _lh_popOutId_6_2 _lh_popOutId_7_2 =
  (if (_lh_itemFromTo_arg1_2 = _lh_itemFromTo_arg2_2) then
    (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_1_3 _lh_transfer_arg1_7 _lh_transfer_arg2_7 _lh_transfer_arg3_7 _lh_transfer_arg4_7 _lh_transfer_arg5_7 newHistory_7 newLocation_7 _lh_dummy_3 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_7 = _lh_itemFromTo_arg1_2 in
        (if (((position_lh__d3__d0 _lh_listcomp_fun_ls_h_7) _lh_popOutId_2_2) = _lh_popOutId_3_2) then
          (let rec newDest_2 = (((updateState_lh__d2__d0 _lh_popOutId_2_2) _lh_listcomp_fun_ls_h_7) _lh_popOutId_7_2) in
            (if ((notSeen_lh__d1__d0 newDest_2) _lh_popOutId_5_2) then
              (let rec newTime_2 = (_lh_popOutId_4_2 + (u2times_lh__d1__d0 _lh_listcomp_fun_ls_h_7)) in
                (let rec t_4_2_6 = (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_7) in
                  (let rec h_4_2_6 = (((((transfer_lh__d1__d0 _lh_popOutId_1_2) newDest_2) _lh_popOutId_7_2) newTime_2) _lh_popOutId_6_2) in
                    (fun _lh_dummy_4 -> 
                      ((mappend_lh__d7__d3_d0 h_4_2_6) (concat_lh__d2__d1 t_4_2_6))))))
            else
              (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_7)))
        else
          (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_7))))
  else
    (let rec _lh_listcomp_fun_ls_t_8 = ((itemFromTo_lh__d1__d0 (succItem_lh__d2__d0 _lh_itemFromTo_arg1_2)) _lh_itemFromTo_arg2_2) in
      (let rec _lh_listcomp_fun_ls_h_8 = _lh_itemFromTo_arg1_2 in
        (if (((position_lh__d3__d1 _lh_listcomp_fun_ls_h_8) _lh_popOutId_2_2) = _lh_popOutId_3_2) then
          (let rec newDest_3 = (((updateState_lh__d2__d1 _lh_popOutId_2_2) _lh_listcomp_fun_ls_h_8) _lh_popOutId_7_2) in
            (if ((notSeen_lh__d1__d1 newDest_3) _lh_popOutId_5_2) then
              (let rec newTime_3 = (_lh_popOutId_4_2 + (u2times_lh__d1__d1 _lh_listcomp_fun_ls_h_8)) in
                (let rec t_4_2_7 = (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_8) in
                  (let rec h_4_2_7 = (((((transfer_lh__d1__d0 _lh_popOutId_1_2) newDest_3) _lh_popOutId_7_2) newTime_3) _lh_popOutId_6_2) in
                    (fun _lh_dummy_5 -> 
                      ((mappend_lh__d7__d3_d1 h_4_2_7) (concat_lh__d2__d2 t_4_2_7))))))
            else
              (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_8)))
        else
          (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_8)))))
and
itemFromTo_lh__d2__d0 _lh_itemFromTo_arg1_0 _lh_itemFromTo_arg2_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 _lh_popOutId_4_0 _lh_popOutId_5_0 _lh_popOutId_6_0 _lh_popOutId_7_0 _lh_popOutId_8_0 _lh_popOutId_9_0 _lh_popOutId_10_0 =
  (if (_lh_itemFromTo_arg1_0 = _lh_itemFromTo_arg2_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = (fun _lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_2 _lh_transfer_arg1_1 _lh_transfer_arg2_1 _lh_transfer_arg3_1 _lh_transfer_arg4_1 _lh_transfer_arg5_1 newHistory_1 newLocation_1 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1)) in
      (let rec _lh_listcomp_fun_ls_h_1 = _lh_itemFromTo_arg1_0 in
        (if ((((position_lh__d2__d0 _lh_popOutId_0_0) _lh_popOutId_3_0) = _lh_popOutId_4_0) && (((position_lh__d1__d0 _lh_listcomp_fun_ls_h_1) _lh_popOutId_3_0) = _lh_popOutId_4_0)) then
          (let rec newDest_0 = (((updateState_lh__d3__d0 (((updateState_lh__d1__d0 _lh_popOutId_3_0) _lh_popOutId_0_0) _lh_popOutId_8_0)) _lh_listcomp_fun_ls_h_1) _lh_popOutId_8_0) in
            (if ((notSeen_lh__d2__d0 newDest_0) _lh_popOutId_6_0) then
              (let rec newTime_0 = (_lh_popOutId_5_0 + (u2times_lh__d2__d0 _lh_popOutId_0_0)) in
                (let rec t_3_7_2 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
                  (let rec h_3_7_2 = (((((transfer_lh__d1__d0 _lh_popOutId_2_0) newDest_0) _lh_popOutId_8_0) newTime_0) _lh_popOutId_7_0) in
                    (fun _lh_dummy_0 -> 
                      ((mappend_lh__d6__d0 h_3_7_2) (concat_lh__d1__d1 t_3_7_2))))))
            else
              (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0)))
        else
          (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0))))
  else
    (let rec _lh_listcomp_fun_ls_t_3 = ((itemFromTo_lh__d2__d0 (succItem_lh__d3__d0 _lh_itemFromTo_arg1_0)) _lh_itemFromTo_arg2_0) in
      (let rec _lh_listcomp_fun_ls_h_3 = _lh_itemFromTo_arg1_0 in
        (if ((((position_lh__d2__d1 _lh_popOutId_0_0) _lh_popOutId_3_0) = _lh_popOutId_4_0) && (((position_lh__d1__d1 _lh_listcomp_fun_ls_h_3) _lh_popOutId_3_0) = _lh_popOutId_4_0)) then
          (let rec newDest_1 = (((updateState_lh__d3__d1 (((updateState_lh__d1__d1 _lh_popOutId_3_0) _lh_popOutId_0_0) _lh_popOutId_8_0)) _lh_listcomp_fun_ls_h_3) _lh_popOutId_8_0) in
            (if ((notSeen_lh__d2__d1 newDest_1) _lh_popOutId_6_0) then
              (let rec newTime_1 = (_lh_popOutId_5_0 + (u2times_lh__d2__d1 _lh_popOutId_0_0)) in
                (let rec t_3_7_3 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_3) in
                  (let rec h_3_7_3 = (((((transfer_lh__d1__d0 _lh_popOutId_2_0) newDest_1) _lh_popOutId_8_0) newTime_1) _lh_popOutId_7_0) in
                    (fun _lh_dummy_1 -> 
                      ((mappend_lh__d6__d1 h_3_7_3) (concat_lh__d1__d2 t_3_7_3))))))
            else
              (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_3)))
        else
          (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_3)))))
and
itemFromTo_lh__d2__d1 _lh_itemFromTo_arg1_3 _lh_itemFromTo_arg2_3 _lh_popOutId_0_3 _lh_popOutId_1_3 _lh_popOutId_2_3 _lh_popOutId_3_3 _lh_popOutId_4_3 _lh_popOutId_5_3 _lh_popOutId_6_3 _lh_popOutId_7_3 _lh_popOutId_8_1 _lh_popOutId_9_1 _lh_popOutId_10_1 =
  (if (_lh_itemFromTo_arg1_3 = _lh_itemFromTo_arg2_3) then
    (let rec _lh_listcomp_fun_ls_t_9 = (fun _lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_1_6 _lh_transfer_arg1_1_0 _lh_transfer_arg2_1_0 _lh_transfer_arg3_1_0 _lh_transfer_arg4_1_0 _lh_transfer_arg5_1_0 newHistory_1_0 newLocation_1_0 _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_1_7 -> 
      (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_0)) in
      (let rec _lh_listcomp_fun_ls_h_1_0 = _lh_itemFromTo_arg1_3 in
        (if ((((position_lh__d2__d2 _lh_popOutId_0_3) _lh_popOutId_3_3) = _lh_popOutId_4_3) && (((position_lh__d1__d2 _lh_listcomp_fun_ls_h_1_0) _lh_popOutId_3_3) = _lh_popOutId_4_3)) then
          (let rec newDest_4 = (((updateState_lh__d3__d2 (((updateState_lh__d1__d2 _lh_popOutId_3_3) _lh_popOutId_0_3) _lh_popOutId_8_1)) _lh_listcomp_fun_ls_h_1_0) _lh_popOutId_8_1) in
            (if ((notSeen_lh__d2__d2 newDest_4) _lh_popOutId_6_3) then
              (let rec newTime_4 = (_lh_popOutId_5_3 + (u2times_lh__d2__d2 _lh_popOutId_0_3)) in
                (let rec t_1_1_5_4 = (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_9) in
                  (let rec h_1_1_5_4 = (((((transfer_lh__d1__d0 _lh_popOutId_2_3) newDest_4) _lh_popOutId_8_1) newTime_4) _lh_popOutId_7_3) in
                    (fun _lh_dummy_6 -> 
                      ((mappend_lh__d6__d2 h_1_1_5_4) (concat_lh__d1__d3 t_1_1_5_4))))))
            else
              (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_9)))
        else
          (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_9))))
  else
    (let rec _lh_listcomp_fun_ls_t_1_2 = ((itemFromTo_lh__d2__d1 (succItem_lh__d3__d1 _lh_itemFromTo_arg1_3)) _lh_itemFromTo_arg2_3) in
      (let rec _lh_listcomp_fun_ls_h_1_2 = _lh_itemFromTo_arg1_3 in
        (if ((((position_lh__d2__d3 _lh_popOutId_0_3) _lh_popOutId_3_3) = _lh_popOutId_4_3) && (((position_lh__d1__d3 _lh_listcomp_fun_ls_h_1_2) _lh_popOutId_3_3) = _lh_popOutId_4_3)) then
          (let rec newDest_5 = (((updateState_lh__d3__d3 (((updateState_lh__d1__d3 _lh_popOutId_3_3) _lh_popOutId_0_3) _lh_popOutId_8_1)) _lh_listcomp_fun_ls_h_1_2) _lh_popOutId_8_1) in
            (if ((notSeen_lh__d2__d3 newDest_5) _lh_popOutId_6_3) then
              (let rec newTime_5 = (_lh_popOutId_5_3 + (u2times_lh__d2__d3 _lh_popOutId_0_3)) in
                (let rec t_1_1_5_5 = (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_1_2) in
                  (let rec h_1_1_5_5 = (((((transfer_lh__d1__d0 _lh_popOutId_2_3) newDest_5) _lh_popOutId_8_1) newTime_5) _lh_popOutId_7_3) in
                    (fun _lh_dummy_7 -> 
                      ((mappend_lh__d6__d3 h_1_1_5_5) (concat_lh__d1__d4 t_1_1_5_5))))))
            else
              (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_1_2)))
        else
          (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_1_2)))))
and
itemFromTo_lh__d3__d0 _lh_itemFromTo_arg1_1 _lh_itemFromTo_arg2_1 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_1 _lh_popOutId_3_1 _lh_popOutId_4_1 _lh_popOutId_5_1 _lh_popOutId_6_1 _lh_popOutId_7_1 =
  (if (_lh_itemFromTo_arg1_1 = _lh_itemFromTo_arg2_1) then
    (let rec _lh_listcomp_fun_ls_t_5 = (fun _lh_listcomp_fun_8 _lh_transfer_arg1_4 _lh_transfer_arg2_4 _lh_transfer_arg3_4 _lh_transfer_arg4_4 _lh_transfer_arg5_4 newHistory_4 newLocation_4 _lh_dummy_2 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_5 = _lh_itemFromTo_arg1_1 in
        (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_2 -> 
          (((((((((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_5) _lh_listcomp_fun_1_0) _lh_popOutId_1_1) _lh_popOutId_2_1) _lh_popOutId_3_1) _lh_popOutId_4_1) _lh_popOutId_5_1) _lh_popOutId_6_1) _lh_popOutId_7_1) _lh_listcomp_fun_ls_t_5) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_1_0 ((itemFromTo_lh__d2__d0 (succItem_lh__d1__d0 _lh_listcomp_fun_ls_h_5)) (`Adam))))))
  else
    (let rec _lh_listcomp_fun_ls_t_6 = ((itemFromTo_lh__d3__d0 (succItem_lh__d4__d0 _lh_itemFromTo_arg1_1)) _lh_itemFromTo_arg2_1) in
      (let rec _lh_listcomp_fun_ls_h_6 = _lh_itemFromTo_arg1_1 in
        (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_3 -> 
          (((((((((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_6) _lh_listcomp_fun_1_2) _lh_popOutId_1_1) _lh_popOutId_2_1) _lh_popOutId_3_1) _lh_popOutId_4_1) _lh_popOutId_5_1) _lh_popOutId_6_1) _lh_popOutId_7_1) _lh_listcomp_fun_ls_t_6) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_1_2 ((itemFromTo_lh__d2__d1 (succItem_lh__d1__d1 _lh_listcomp_fun_ls_h_6)) (`Adam)))))))
and
transfer_lh__d1__d0 _lh_transfer_arg1_0 _lh_transfer_arg2_0 _lh_transfer_arg3_0 _lh_transfer_arg4_0 _lh_transfer_arg5_0 =
  (if (_lh_transfer_arg1_0 = _lh_transfer_arg2_0) then
    (`LH_C((`LH_C((`LH_P2(_lh_transfer_arg4_0, _lh_transfer_arg2_0)), _lh_transfer_arg5_0)), (`LH_N)))
  else
    (let rec newHistory_0 = (`LH_C((`LH_P2(_lh_transfer_arg4_0, _lh_transfer_arg2_0)), _lh_transfer_arg5_0)) in
      (let rec newLocation_0 = (opposite_lh__d1__d0 _lh_transfer_arg3_0) in
        (let rec moveOne_0 = (concat_lh__d2__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
          ((((((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_transfer_arg1_0) _lh_transfer_arg2_0) _lh_transfer_arg3_0) _lh_transfer_arg4_0) _lh_transfer_arg5_0) newHistory_0) newLocation_0)) in
          (_lh_listcomp_fun_0 ((itemFromTo_lh__d1__d0 (`Bono)) (`Adam))))) in
          (let rec moveTwo_0 = (concat_lh__d1__d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
            ((((((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1) _lh_transfer_arg1_0) _lh_transfer_arg2_0) _lh_transfer_arg3_0) _lh_transfer_arg4_0) _lh_transfer_arg5_0) newHistory_0) newLocation_0)) in
            (_lh_listcomp_fun_1 ((itemFromTo_lh__d3__d0 (`Bono)) (`Larry))))) in
            ((mappend_lh__d3__d0 moveOne_0) moveTwo_0))))));;
let rec writeSolutions_lh__d1__d3 _lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_1 =
  (_lh_writeSolutions_arg1_0 _lh_writeSolutions_arg2_1);;
let rec length_lh__d1__d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_3_8_6, t_3_8_6) -> 
      (1 + (length_lh__d1__d0 t_3_8_6))
    | `LH_N -> 
      0);;
let rec initialState_lh__d1__d0 =
  (`State((`LeftBank), (`LeftBank), (`LeftBank), (`LeftBank)));;
let rec finalState_lh__d1__d0 =
  (`State((`RightBank), (`RightBank), (`RightBank), (`RightBank)));;
let rec mappend_lh__d1__d1_d4 xs_1_3 ys_1_3 =
  (xs_1_3 ys_1_3);;
let rec mappend_lh__d1__d1_d7 xs_1_6 ys_1_6 =
  (xs_1_6 ys_1_6);;
let rec mappend_lh__d1__d1_d1 xs_2_9 ys_4_0_2 =
  (xs_2_9 ys_4_0_2);;
let rec mappend_lh__d1__d1_d5 xs_3_1 ys_4_0_4 =
  (xs_3_1 ys_4_0_4);;
let rec mappend_lh__d5__d1_d3 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend_lh__d4__d1 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d4__d1 t_1) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d5__d9 xs_4_9 ys_4_3_6 =
  (xs_4_9 ys_4_3_6);;
let rec totalTime_lh__d3__d1 _lh_totalTime_arg1_1 =
  (match _lh_totalTime_arg1_1 with
    | `LH_C(_lh_totalTime_LH_C_0_1, _lh_totalTime_LH_C_1_1) -> 
      (match _lh_totalTime_LH_C_0_1 with
        | `LH_P2(_lh_totalTime_LH_P2_0_1, _lh_totalTime_LH_P2_1_1) -> 
          _lh_totalTime_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d5__d8 xs_7_2 ys_8_6_9 =
  (xs_7_2 ys_8_6_9);;
let rec mappend_lh__d5__d1_d0 xs_8_0 ys_1_2_5_0 =
  (xs_8_0 ys_1_2_5_0);;
let rec mappend_lh__d5__d7 xs_8_9 ys_1_2_5_9 =
  (xs_8_9 ys_1_2_5_9);;
let rec mappend_lh__d5__d1_d1 xs_1_7 ys_1_7 =
  (xs_1_7 ys_1_7);;
let rec foldr_lh__d1__d1 f_1 i_1 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      ((f_1 h_5) (((foldr_lh__d1__d1 f_1) i_1) t_5))
    | `LH_N -> 
      i_1);;
let rec mappend_lh__d5__d1_d2 xs_7_5 ys_8_7_2 =
  (xs_7_5 ys_8_7_2);;
let rec mappend_lh__d7__d1_d5 xs_1_5 ys_1_5 =
  (xs_1_5 ys_1_5);;
let rec mappend_lh__d7__d1_d7 xs_2_0 ys_2_0 =
  (xs_2_0 ys_2_0);;
let rec larryPos_lh__d3__d1 _lh_larryPos_arg1_4 =
  (match _lh_larryPos_arg1_4 with
    | `State(_lh_larryPos_State_0_4, _lh_larryPos_State_1_4, _lh_larryPos_State_2_4, _lh_larryPos_State_3_4) -> 
      _lh_larryPos_State_2_4
    | _ -> 
      (failwith "error"));;
let rec writeItem_lh__d1__d6 _lh_writeItem_arg1_0 _lh_writeItem_arg2_4 _lh_writeItem_arg3_4 =
  ((_lh_writeItem_arg1_0 _lh_writeItem_arg2_4) _lh_writeItem_arg3_4);;
let rec mappend_lh__d7__d1_d8 xs_3_8 ys_4_2_5 =
  (xs_3_8 ys_4_2_5);;
let rec adamPos_lh__d3__d1 _lh_adamPos_arg1_4 =
  (match _lh_adamPos_arg1_4 with
    | `State(_lh_adamPos_State_0_4, _lh_adamPos_State_1_4, _lh_adamPos_State_2_4, _lh_adamPos_State_3_4) -> 
      _lh_adamPos_State_3_4
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d1_d1 xs_6_9 ys_4_9_3 =
  (xs_6_9 ys_4_9_3);;
let rec writeItem_lh__d1__d5 _lh_writeItem_arg1_7 _lh_writeItem_arg2_1_1 _lh_writeItem_arg3_1_1 =
  ((_lh_writeItem_arg1_7 _lh_writeItem_arg2_1_1) _lh_writeItem_arg3_1_1);;
let rec writeItem_lh__d1__d7 _lh_writeItem_arg1_8 _lh_writeItem_arg2_2_0 _lh_writeItem_arg3_2_0 =
  ((_lh_writeItem_arg1_8 _lh_writeItem_arg2_2_0) _lh_writeItem_arg3_2_0);;
let rec mappend_lh__d7__d1_d4 xs_8_4 ys_1_2_5_4 =
  (xs_8_4 ys_1_2_5_4);;
let rec mappend_lh__d7__d1_d2 xs_4_3 ys_4_3_0 =
  (xs_4_3 ys_4_3_0);;
let rec edgePos_lh__d4__d1 _lh_edgePos_arg1_8 =
  (match _lh_edgePos_arg1_8 with
    | `State(_lh_edgePos_State_0_8, _lh_edgePos_State_1_8, _lh_edgePos_State_2_8, _lh_edgePos_State_3_8) -> 
      _lh_edgePos_State_1_8
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d1_d3 xs_4_8 ys_4_3_5 =
  (xs_4_8 ys_4_3_5);;
let rec mappend_lh__d7__d1_d0 xs_5_1 ys_4_3_8 =
  (xs_5_1 ys_4_3_8);;
let rec mappend_lh__d7__d1_d6 xs_5_5 ys_4_4_2 =
  (xs_5_5 ys_4_4_2);;
let rec bonoPos_lh__d3__d1 _lh_bonoPos_arg1_9 =
  (match _lh_bonoPos_arg1_9 with
    | `State(_lh_bonoPos_State_0_9, _lh_bonoPos_State_1_9, _lh_bonoPos_State_2_9, _lh_bonoPos_State_3_9) -> 
      _lh_bonoPos_State_0_9
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d1_d9 xs_6_6 ys_4_8_3 =
  (xs_6_6 ys_4_8_3);;
let rec writeItem_lh__d1__d4 _lh_writeItem_arg1_6 _lh_writeItem_arg2_1_0 _lh_writeItem_arg3_1_0 =
  ((_lh_writeItem_arg1_6 _lh_writeItem_arg2_1_0) _lh_writeItem_arg3_1_0);;
let rec writeState_lh__d1__d1 _lh_writeState_arg1_2 _lh_funcomp_x_3_4 =
  ((fun _lh_funcomp_x_3_5 -> 
    ((fun _lh_funcomp_x_3_6 -> 
      ((fun _lh_funcomp_x_3_7 -> 
        ((fun _lh_funcomp_x_3_8 -> 
          ((fun s_4 -> 
            ((mappend_lh__d7__d1_d2 (let rec t_7_9_1 = (let rec t_7_9_2 = (let rec t_7_9_3 = (let rec t_7_9_4 = (let rec t_7_9_5 = (let rec t_7_9_6 = (let rec t_7_9_7 = (let rec t_7_9_8 = (let rec t_7_9_9 = (let rec t_8_0_0 = (let rec t_8_0_1 = (let rec t_8_0_2 = (let rec t_8_0_3 = (let rec t_8_0_4 = (let rec t_8_0_5 = (let rec t_8_0_6 = (let rec t_8_0_7 = (let rec t_8_0_8 = (let rec t_8_0_9 = (let rec t_8_1_0 = (let rec t_8_1_1 = (let rec t_8_1_2 = (let rec t_8_1_3 = (let rec t_8_1_4 = (let rec t_8_1_5 = (let rec t_8_1_6 = (let rec t_8_1_7 = (let rec t_8_1_8 = (let rec t_8_1_9 = (let rec t_8_2_0 = (let rec t_8_2_1 = (let rec t_8_2_2 = (let rec t_8_2_3 = (let rec t_8_2_4 = (let rec t_8_2_5 = (let rec t_8_2_6 = (let rec t_8_2_7 = (let rec t_8_2_8 = (let rec t_8_2_9 = (let rec t_8_3_0 = (let rec t_8_3_1 = (fun ys_8_7_4 -> 
              ys_8_7_4) in
              (let rec h_7_9_1 = '|' in
                (fun ys_8_7_5 -> 
                  (`LH_C(h_7_9_1, ((mappend_lh__d7__d1_d2 t_8_3_1) ys_8_7_5)))))) in
              (let rec h_7_9_2 = '-' in
                (fun ys_8_7_6 -> 
                  (`LH_C(h_7_9_2, ((mappend_lh__d7__d1_d2 t_8_3_0) ys_8_7_6)))))) in
              (let rec h_7_9_3 = '-' in
                (fun ys_8_7_7 -> 
                  (`LH_C(h_7_9_3, ((mappend_lh__d7__d1_d2 t_8_2_9) ys_8_7_7)))))) in
              (let rec h_7_9_4 = '-' in
                (fun ys_8_7_8 -> 
                  (`LH_C(h_7_9_4, ((mappend_lh__d7__d1_d2 t_8_2_8) ys_8_7_8)))))) in
              (let rec h_7_9_5 = '-' in
                (fun ys_8_7_9 -> 
                  (`LH_C(h_7_9_5, ((mappend_lh__d7__d1_d2 t_8_2_7) ys_8_7_9)))))) in
              (let rec h_7_9_6 = '-' in
                (fun ys_8_8_0 -> 
                  (`LH_C(h_7_9_6, ((mappend_lh__d7__d1_d2 t_8_2_6) ys_8_8_0)))))) in
              (let rec h_7_9_7 = '-' in
                (fun ys_8_8_1 -> 
                  (`LH_C(h_7_9_7, ((mappend_lh__d7__d1_d2 t_8_2_5) ys_8_8_1)))))) in
              (let rec h_7_9_8 = '-' in
                (fun ys_8_8_2 -> 
                  (`LH_C(h_7_9_8, ((mappend_lh__d7__d1_d2 t_8_2_4) ys_8_8_2)))))) in
              (let rec h_7_9_9 = '-' in
                (fun ys_8_8_3 -> 
                  (`LH_C(h_7_9_9, ((mappend_lh__d7__d1_d2 t_8_2_3) ys_8_8_3)))))) in
              (let rec h_8_0_0 = '-' in
                (fun ys_8_8_4 -> 
                  (`LH_C(h_8_0_0, ((mappend_lh__d7__d1_d2 t_8_2_2) ys_8_8_4)))))) in
              (let rec h_8_0_1 = '-' in
                (fun ys_8_8_5 -> 
                  (`LH_C(h_8_0_1, ((mappend_lh__d7__d1_d2 t_8_2_1) ys_8_8_5)))))) in
              (let rec h_8_0_2 = '-' in
                (fun ys_8_8_6 -> 
                  (`LH_C(h_8_0_2, ((mappend_lh__d7__d1_d2 t_8_2_0) ys_8_8_6)))))) in
              (let rec h_8_0_3 = '-' in
                (fun ys_8_8_7 -> 
                  (`LH_C(h_8_0_3, ((mappend_lh__d7__d1_d2 t_8_1_9) ys_8_8_7)))))) in
              (let rec h_8_0_4 = '-' in
                (fun ys_8_8_8 -> 
                  (`LH_C(h_8_0_4, ((mappend_lh__d7__d1_d2 t_8_1_8) ys_8_8_8)))))) in
              (let rec h_8_0_5 = '-' in
                (fun ys_8_8_9 -> 
                  (`LH_C(h_8_0_5, ((mappend_lh__d7__d1_d2 t_8_1_7) ys_8_8_9)))))) in
              (let rec h_8_0_6 = '-' in
                (fun ys_8_9_0 -> 
                  (`LH_C(h_8_0_6, ((mappend_lh__d7__d1_d2 t_8_1_6) ys_8_9_0)))))) in
              (let rec h_8_0_7 = '-' in
                (fun ys_8_9_1 -> 
                  (`LH_C(h_8_0_7, ((mappend_lh__d7__d1_d2 t_8_1_5) ys_8_9_1)))))) in
              (let rec h_8_0_8 = '-' in
                (fun ys_8_9_2 -> 
                  (`LH_C(h_8_0_8, ((mappend_lh__d7__d1_d2 t_8_1_4) ys_8_9_2)))))) in
              (let rec h_8_0_9 = '-' in
                (fun ys_8_9_3 -> 
                  (`LH_C(h_8_0_9, ((mappend_lh__d7__d1_d2 t_8_1_3) ys_8_9_3)))))) in
              (let rec h_8_1_0 = '-' in
                (fun ys_8_9_4 -> 
                  (`LH_C(h_8_1_0, ((mappend_lh__d7__d1_d2 t_8_1_2) ys_8_9_4)))))) in
              (let rec h_8_1_1 = '-' in
                (fun ys_8_9_5 -> 
                  (`LH_C(h_8_1_1, ((mappend_lh__d7__d1_d2 t_8_1_1) ys_8_9_5)))))) in
              (let rec h_8_1_2 = '-' in
                (fun ys_8_9_6 -> 
                  (`LH_C(h_8_1_2, ((mappend_lh__d7__d1_d2 t_8_1_0) ys_8_9_6)))))) in
              (let rec h_8_1_3 = '-' in
                (fun ys_8_9_7 -> 
                  (`LH_C(h_8_1_3, ((mappend_lh__d7__d1_d2 t_8_0_9) ys_8_9_7)))))) in
              (let rec h_8_1_4 = '-' in
                (fun ys_8_9_8 -> 
                  (`LH_C(h_8_1_4, ((mappend_lh__d7__d1_d2 t_8_0_8) ys_8_9_8)))))) in
              (let rec h_8_1_5 = '-' in
                (fun ys_8_9_9 -> 
                  (`LH_C(h_8_1_5, ((mappend_lh__d7__d1_d2 t_8_0_7) ys_8_9_9)))))) in
              (let rec h_8_1_6 = '-' in
                (fun ys_9_0_0 -> 
                  (`LH_C(h_8_1_6, ((mappend_lh__d7__d1_d2 t_8_0_6) ys_9_0_0)))))) in
              (let rec h_8_1_7 = '-' in
                (fun ys_9_0_1 -> 
                  (`LH_C(h_8_1_7, ((mappend_lh__d7__d1_d2 t_8_0_5) ys_9_0_1)))))) in
              (let rec h_8_1_8 = '-' in
                (fun ys_9_0_2 -> 
                  (`LH_C(h_8_1_8, ((mappend_lh__d7__d1_d2 t_8_0_4) ys_9_0_2)))))) in
              (let rec h_8_1_9 = '-' in
                (fun ys_9_0_3 -> 
                  (`LH_C(h_8_1_9, ((mappend_lh__d7__d1_d2 t_8_0_3) ys_9_0_3)))))) in
              (let rec h_8_2_0 = '-' in
                (fun ys_9_0_4 -> 
                  (`LH_C(h_8_2_0, ((mappend_lh__d7__d1_d2 t_8_0_2) ys_9_0_4)))))) in
              (let rec h_8_2_1 = '-' in
                (fun ys_9_0_5 -> 
                  (`LH_C(h_8_2_1, ((mappend_lh__d7__d1_d2 t_8_0_1) ys_9_0_5)))))) in
              (let rec h_8_2_2 = '-' in
                (fun ys_9_0_6 -> 
                  (`LH_C(h_8_2_2, ((mappend_lh__d7__d1_d2 t_8_0_0) ys_9_0_6)))))) in
              (let rec h_8_2_3 = '-' in
                (fun ys_9_0_7 -> 
                  (`LH_C(h_8_2_3, ((mappend_lh__d7__d1_d2 t_7_9_9) ys_9_0_7)))))) in
              (let rec h_8_2_4 = '-' in
                (fun ys_9_0_8 -> 
                  (`LH_C(h_8_2_4, ((mappend_lh__d7__d1_d2 t_7_9_8) ys_9_0_8)))))) in
              (let rec h_8_2_5 = '-' in
                (fun ys_9_0_9 -> 
                  (`LH_C(h_8_2_5, ((mappend_lh__d7__d1_d2 t_7_9_7) ys_9_0_9)))))) in
              (let rec h_8_2_6 = '-' in
                (fun ys_9_1_0 -> 
                  (`LH_C(h_8_2_6, ((mappend_lh__d7__d1_d2 t_7_9_6) ys_9_1_0)))))) in
              (let rec h_8_2_7 = '-' in
                (fun ys_9_1_1 -> 
                  (`LH_C(h_8_2_7, ((mappend_lh__d7__d1_d2 t_7_9_5) ys_9_1_1)))))) in
              (let rec h_8_2_8 = '-' in
                (fun ys_9_1_2 -> 
                  (`LH_C(h_8_2_8, ((mappend_lh__d7__d1_d2 t_7_9_4) ys_9_1_2)))))) in
              (let rec h_8_2_9 = '-' in
                (fun ys_9_1_3 -> 
                  (`LH_C(h_8_2_9, ((mappend_lh__d7__d1_d2 t_7_9_3) ys_9_1_3)))))) in
              (let rec h_8_3_0 = '-' in
                (fun ys_9_1_4 -> 
                  (`LH_C(h_8_3_0, ((mappend_lh__d7__d1_d2 t_7_9_2) ys_9_1_4)))))) in
              (let rec h_8_3_1 = '-' in
                (fun ys_9_1_5 -> 
                  (`LH_C(h_8_3_1, ((mappend_lh__d7__d1_d2 t_7_9_1) ys_9_1_5))))))) s_4)) (((writeItem_lh__d1__d4 (fun _lh_writeItem_arg2_1_6 _lh_writeItem_arg3_1_6 -> 
            (match _lh_writeItem_arg2_1_6 with
              | `LeftBank -> 
                ((mappend_lh__d7__d1_d3 (let rec t_8_3_2 = (let rec t_8_3_3 = (let rec t_8_3_4 = (let rec t_8_3_5 = (let rec t_8_3_6 = (let rec t_8_3_7 = (let rec t_8_3_8 = (let rec t_8_3_9 = (let rec t_8_4_0 = (let rec t_8_4_1 = (let rec t_8_4_2 = (let rec t_8_4_3 = (let rec t_8_4_4 = (let rec t_8_4_5 = (let rec t_8_4_6 = (let rec t_8_4_7 = (let rec t_8_4_8 = (let rec t_8_4_9 = (let rec t_8_5_0 = (let rec t_8_5_1 = (let rec t_8_5_2 = (let rec t_8_5_3 = (let rec t_8_5_4 = (let rec t_8_5_5 = (let rec t_8_5_6 = (let rec t_8_5_7 = (let rec t_8_5_8 = (let rec t_8_5_9 = (let rec t_8_6_0 = (let rec t_8_6_1 = (let rec t_8_6_2 = (let rec t_8_6_3 = (fun ys_9_1_6 -> 
                  ys_9_1_6) in
                  (let rec h_8_3_2 = '|' in
                    (fun ys_9_1_7 -> 
                      (`LH_C(h_8_3_2, ((mappend_lh__d7__d1_d3 t_8_6_3) ys_9_1_7)))))) in
                  (let rec h_8_3_3 = '|' in
                    (fun ys_9_1_8 -> 
                      (`LH_C(h_8_3_3, ((mappend_lh__d7__d1_d3 t_8_6_2) ys_9_1_8)))))) in
                  (let rec h_8_3_4 = ' ' in
                    (fun ys_9_1_9 -> 
                      (`LH_C(h_8_3_4, ((mappend_lh__d7__d1_d3 t_8_6_1) ys_9_1_9)))))) in
                  (let rec h_8_3_5 = ' ' in
                    (fun ys_9_2_0 -> 
                      (`LH_C(h_8_3_5, ((mappend_lh__d7__d1_d3 t_8_6_0) ys_9_2_0)))))) in
                  (let rec h_8_3_6 = ' ' in
                    (fun ys_9_2_1 -> 
                      (`LH_C(h_8_3_6, ((mappend_lh__d7__d1_d3 t_8_5_9) ys_9_2_1)))))) in
                  (let rec h_8_3_7 = ' ' in
                    (fun ys_9_2_2 -> 
                      (`LH_C(h_8_3_7, ((mappend_lh__d7__d1_d3 t_8_5_8) ys_9_2_2)))))) in
                  (let rec h_8_3_8 = ' ' in
                    (fun ys_9_2_3 -> 
                      (`LH_C(h_8_3_8, ((mappend_lh__d7__d1_d3 t_8_5_7) ys_9_2_3)))))) in
                  (let rec h_8_3_9 = ' ' in
                    (fun ys_9_2_4 -> 
                      (`LH_C(h_8_3_9, ((mappend_lh__d7__d1_d3 t_8_5_6) ys_9_2_4)))))) in
                  (let rec h_8_4_0 = ' ' in
                    (fun ys_9_2_5 -> 
                      (`LH_C(h_8_4_0, ((mappend_lh__d7__d1_d3 t_8_5_5) ys_9_2_5)))))) in
                  (let rec h_8_4_1 = ' ' in
                    (fun ys_9_2_6 -> 
                      (`LH_C(h_8_4_1, ((mappend_lh__d7__d1_d3 t_8_5_4) ys_9_2_6)))))) in
                  (let rec h_8_4_2 = ' ' in
                    (fun ys_9_2_7 -> 
                      (`LH_C(h_8_4_2, ((mappend_lh__d7__d1_d3 t_8_5_3) ys_9_2_7)))))) in
                  (let rec h_8_4_3 = ' ' in
                    (fun ys_9_2_8 -> 
                      (`LH_C(h_8_4_3, ((mappend_lh__d7__d1_d3 t_8_5_2) ys_9_2_8)))))) in
                  (let rec h_8_4_4 = ' ' in
                    (fun ys_9_2_9 -> 
                      (`LH_C(h_8_4_4, ((mappend_lh__d7__d1_d3 t_8_5_1) ys_9_2_9)))))) in
                  (let rec h_8_4_5 = ' ' in
                    (fun ys_9_3_0 -> 
                      (`LH_C(h_8_4_5, ((mappend_lh__d7__d1_d3 t_8_5_0) ys_9_3_0)))))) in
                  (let rec h_8_4_6 = ' ' in
                    (fun ys_9_3_1 -> 
                      (`LH_C(h_8_4_6, ((mappend_lh__d7__d1_d3 t_8_4_9) ys_9_3_1)))))) in
                  (let rec h_8_4_7 = ' ' in
                    (fun ys_9_3_2 -> 
                      (`LH_C(h_8_4_7, ((mappend_lh__d7__d1_d3 t_8_4_8) ys_9_3_2)))))) in
                  (let rec h_8_4_8 = ' ' in
                    (fun ys_9_3_3 -> 
                      (`LH_C(h_8_4_8, ((mappend_lh__d7__d1_d3 t_8_4_7) ys_9_3_3)))))) in
                  (let rec h_8_4_9 = ' ' in
                    (fun ys_9_3_4 -> 
                      (`LH_C(h_8_4_9, ((mappend_lh__d7__d1_d3 t_8_4_6) ys_9_3_4)))))) in
                  (let rec h_8_5_0 = ' ' in
                    (fun ys_9_3_5 -> 
                      (`LH_C(h_8_5_0, ((mappend_lh__d7__d1_d3 t_8_4_5) ys_9_3_5)))))) in
                  (let rec h_8_5_1 = ' ' in
                    (fun ys_9_3_6 -> 
                      (`LH_C(h_8_5_1, ((mappend_lh__d7__d1_d3 t_8_4_4) ys_9_3_6)))))) in
                  (let rec h_8_5_2 = ' ' in
                    (fun ys_9_3_7 -> 
                      (`LH_C(h_8_5_2, ((mappend_lh__d7__d1_d3 t_8_4_3) ys_9_3_7)))))) in
                  (let rec h_8_5_3 = ' ' in
                    (fun ys_9_3_8 -> 
                      (`LH_C(h_8_5_3, ((mappend_lh__d7__d1_d3 t_8_4_2) ys_9_3_8)))))) in
                  (let rec h_8_5_4 = '|' in
                    (fun ys_9_3_9 -> 
                      (`LH_C(h_8_5_4, ((mappend_lh__d7__d1_d3 t_8_4_1) ys_9_3_9)))))) in
                  (let rec h_8_5_5 = ' ' in
                    (fun ys_9_4_0 -> 
                      (`LH_C(h_8_5_5, ((mappend_lh__d7__d1_d3 t_8_4_0) ys_9_4_0)))))) in
                  (let rec h_8_5_6 = 'o' in
                    (fun ys_9_4_1 -> 
                      (`LH_C(h_8_5_6, ((mappend_lh__d7__d1_d3 t_8_3_9) ys_9_4_1)))))) in
                  (let rec h_8_5_7 = 'n' in
                    (fun ys_9_4_2 -> 
                      (`LH_C(h_8_5_7, ((mappend_lh__d7__d1_d3 t_8_3_8) ys_9_4_2)))))) in
                  (let rec h_8_5_8 = 'o' in
                    (fun ys_9_4_3 -> 
                      (`LH_C(h_8_5_8, ((mappend_lh__d7__d1_d3 t_8_3_7) ys_9_4_3)))))) in
                  (let rec h_8_5_9 = 'B' in
                    (fun ys_9_4_4 -> 
                      (`LH_C(h_8_5_9, ((mappend_lh__d7__d1_d3 t_8_3_6) ys_9_4_4)))))) in
                  (let rec h_8_6_0 = ' ' in
                    (fun ys_9_4_5 -> 
                      (`LH_C(h_8_6_0, ((mappend_lh__d7__d1_d3 t_8_3_5) ys_9_4_5)))))) in
                  (let rec h_8_6_1 = ' ' in
                    (fun ys_9_4_6 -> 
                      (`LH_C(h_8_6_1, ((mappend_lh__d7__d1_d3 t_8_3_4) ys_9_4_6)))))) in
                  (let rec h_8_6_2 = ' ' in
                    (fun ys_9_4_7 -> 
                      (`LH_C(h_8_6_2, ((mappend_lh__d7__d1_d3 t_8_3_3) ys_9_4_7)))))) in
                  (let rec h_8_6_3 = ' ' in
                    (fun ys_9_4_8 -> 
                      (`LH_C(h_8_6_3, ((mappend_lh__d7__d1_d3 t_8_3_2) ys_9_4_8))))))) _lh_writeItem_arg3_1_6)
              | `RightBank -> 
                ((mappend_lh__d7__d1_d4 (let rec t_8_6_4 = (let rec t_8_6_5 = (let rec t_8_6_6 = (let rec t_8_6_7 = (let rec t_8_6_8 = (let rec t_8_6_9 = (let rec t_8_7_0 = (let rec t_8_7_1 = (let rec t_8_7_2 = (let rec t_8_7_3 = (let rec t_8_7_4 = (let rec t_8_7_5 = (let rec t_8_7_6 = (let rec t_8_7_7 = (let rec t_8_7_8 = (let rec t_8_7_9 = (let rec t_8_8_0 = (let rec t_8_8_1 = (let rec t_8_8_2 = (let rec t_8_8_3 = (let rec t_8_8_4 = (let rec t_8_8_5 = (let rec t_8_8_6 = (let rec t_8_8_7 = (let rec t_8_8_8 = (let rec t_8_8_9 = (let rec t_8_9_0 = (let rec t_8_9_1 = (let rec t_8_9_2 = (let rec t_8_9_3 = (let rec t_8_9_4 = (let rec t_8_9_5 = (let rec t_8_9_6 = (let rec t_8_9_7 = (let rec t_8_9_8 = (let rec t_8_9_9 = (let rec t_9_0_0 = (fun ys_9_4_9 -> 
                  ys_9_4_9) in
                  (let rec h_8_6_4 = '|' in
                    (fun ys_9_5_0 -> 
                      (`LH_C(h_8_6_4, ((mappend_lh__d7__d1_d4 t_9_0_0) ys_9_5_0)))))) in
                  (let rec h_8_6_5 = 'o' in
                    (fun ys_9_5_1 -> 
                      (`LH_C(h_8_6_5, ((mappend_lh__d7__d1_d4 t_8_9_9) ys_9_5_1)))))) in
                  (let rec h_8_6_6 = 'n' in
                    (fun ys_9_5_2 -> 
                      (`LH_C(h_8_6_6, ((mappend_lh__d7__d1_d4 t_8_9_8) ys_9_5_2)))))) in
                  (let rec h_8_6_7 = 'o' in
                    (fun ys_9_5_3 -> 
                      (`LH_C(h_8_6_7, ((mappend_lh__d7__d1_d4 t_8_9_7) ys_9_5_3)))))) in
                  (let rec h_8_6_8 = 'B' in
                    (fun ys_9_5_4 -> 
                      (`LH_C(h_8_6_8, ((mappend_lh__d7__d1_d4 t_8_9_6) ys_9_5_4)))))) in
                  (let rec h_8_6_9 = ' ' in
                    (fun ys_9_5_5 -> 
                      (`LH_C(h_8_6_9, ((mappend_lh__d7__d1_d4 t_8_9_5) ys_9_5_5)))))) in
                  (let rec h_8_7_0 = '|' in
                    (fun ys_9_5_6 -> 
                      (`LH_C(h_8_7_0, ((mappend_lh__d7__d1_d4 t_8_9_4) ys_9_5_6)))))) in
                  (let rec h_8_7_1 = ' ' in
                    (fun ys_9_5_7 -> 
                      (`LH_C(h_8_7_1, ((mappend_lh__d7__d1_d4 t_8_9_3) ys_9_5_7)))))) in
                  (let rec h_8_7_2 = ' ' in
                    (fun ys_9_5_8 -> 
                      (`LH_C(h_8_7_2, ((mappend_lh__d7__d1_d4 t_8_9_2) ys_9_5_8)))))) in
                  (let rec h_8_7_3 = ' ' in
                    (fun ys_9_5_9 -> 
                      (`LH_C(h_8_7_3, ((mappend_lh__d7__d1_d4 t_8_9_1) ys_9_5_9)))))) in
                  (let rec h_8_7_4 = ' ' in
                    (fun ys_9_6_0 -> 
                      (`LH_C(h_8_7_4, ((mappend_lh__d7__d1_d4 t_8_9_0) ys_9_6_0)))))) in
                  (let rec h_8_7_5 = ' ' in
                    (fun ys_9_6_1 -> 
                      (`LH_C(h_8_7_5, ((mappend_lh__d7__d1_d4 t_8_8_9) ys_9_6_1)))))) in
                  (let rec h_8_7_6 = ' ' in
                    (fun ys_9_6_2 -> 
                      (`LH_C(h_8_7_6, ((mappend_lh__d7__d1_d4 t_8_8_8) ys_9_6_2)))))) in
                  (let rec h_8_7_7 = ' ' in
                    (fun ys_9_6_3 -> 
                      (`LH_C(h_8_7_7, ((mappend_lh__d7__d1_d4 t_8_8_7) ys_9_6_3)))))) in
                  (let rec h_8_7_8 = ' ' in
                    (fun ys_9_6_4 -> 
                      (`LH_C(h_8_7_8, ((mappend_lh__d7__d1_d4 t_8_8_6) ys_9_6_4)))))) in
                  (let rec h_8_7_9 = ' ' in
                    (fun ys_9_6_5 -> 
                      (`LH_C(h_8_7_9, ((mappend_lh__d7__d1_d4 t_8_8_5) ys_9_6_5)))))) in
                  (let rec h_8_8_0 = ' ' in
                    (fun ys_9_6_6 -> 
                      (`LH_C(h_8_8_0, ((mappend_lh__d7__d1_d4 t_8_8_4) ys_9_6_6)))))) in
                  (let rec h_8_8_1 = ' ' in
                    (fun ys_9_6_7 -> 
                      (`LH_C(h_8_8_1, ((mappend_lh__d7__d1_d4 t_8_8_3) ys_9_6_7)))))) in
                  (let rec h_8_8_2 = ' ' in
                    (fun ys_9_6_8 -> 
                      (`LH_C(h_8_8_2, ((mappend_lh__d7__d1_d4 t_8_8_2) ys_9_6_8)))))) in
                  (let rec h_8_8_3 = ' ' in
                    (fun ys_9_6_9 -> 
                      (`LH_C(h_8_8_3, ((mappend_lh__d7__d1_d4 t_8_8_1) ys_9_6_9)))))) in
                  (let rec h_8_8_4 = ' ' in
                    (fun ys_9_7_0 -> 
                      (`LH_C(h_8_8_4, ((mappend_lh__d7__d1_d4 t_8_8_0) ys_9_7_0)))))) in
                  (let rec h_8_8_5 = ' ' in
                    (fun ys_9_7_1 -> 
                      (`LH_C(h_8_8_5, ((mappend_lh__d7__d1_d4 t_8_7_9) ys_9_7_1)))))) in
                  (let rec h_8_8_6 = ' ' in
                    (fun ys_9_7_2 -> 
                      (`LH_C(h_8_8_6, ((mappend_lh__d7__d1_d4 t_8_7_8) ys_9_7_2)))))) in
                  (let rec h_8_8_7 = ' ' in
                    (fun ys_9_7_3 -> 
                      (`LH_C(h_8_8_7, ((mappend_lh__d7__d1_d4 t_8_7_7) ys_9_7_3)))))) in
                  (let rec h_8_8_8 = ' ' in
                    (fun ys_9_7_4 -> 
                      (`LH_C(h_8_8_8, ((mappend_lh__d7__d1_d4 t_8_7_6) ys_9_7_4)))))) in
                  (let rec h_8_8_9 = ' ' in
                    (fun ys_9_7_5 -> 
                      (`LH_C(h_8_8_9, ((mappend_lh__d7__d1_d4 t_8_7_5) ys_9_7_5)))))) in
                  (let rec h_8_9_0 = ' ' in
                    (fun ys_9_7_6 -> 
                      (`LH_C(h_8_9_0, ((mappend_lh__d7__d1_d4 t_8_7_4) ys_9_7_6)))))) in
                  (let rec h_8_9_1 = '|' in
                    (fun ys_9_7_7 -> 
                      (`LH_C(h_8_9_1, ((mappend_lh__d7__d1_d4 t_8_7_3) ys_9_7_7)))))) in
                  (let rec h_8_9_2 = ' ' in
                    (fun ys_9_7_8 -> 
                      (`LH_C(h_8_9_2, ((mappend_lh__d7__d1_d4 t_8_7_2) ys_9_7_8)))))) in
                  (let rec h_8_9_3 = ' ' in
                    (fun ys_9_7_9 -> 
                      (`LH_C(h_8_9_3, ((mappend_lh__d7__d1_d4 t_8_7_1) ys_9_7_9)))))) in
                  (let rec h_8_9_4 = ' ' in
                    (fun ys_9_8_0 -> 
                      (`LH_C(h_8_9_4, ((mappend_lh__d7__d1_d4 t_8_7_0) ys_9_8_0)))))) in
                  (let rec h_8_9_5 = ' ' in
                    (fun ys_9_8_1 -> 
                      (`LH_C(h_8_9_5, ((mappend_lh__d7__d1_d4 t_8_6_9) ys_9_8_1)))))) in
                  (let rec h_8_9_6 = ' ' in
                    (fun ys_9_8_2 -> 
                      (`LH_C(h_8_9_6, ((mappend_lh__d7__d1_d4 t_8_6_8) ys_9_8_2)))))) in
                  (let rec h_8_9_7 = ' ' in
                    (fun ys_9_8_3 -> 
                      (`LH_C(h_8_9_7, ((mappend_lh__d7__d1_d4 t_8_6_7) ys_9_8_3)))))) in
                  (let rec h_8_9_8 = ' ' in
                    (fun ys_9_8_4 -> 
                      (`LH_C(h_8_9_8, ((mappend_lh__d7__d1_d4 t_8_6_6) ys_9_8_4)))))) in
                  (let rec h_8_9_9 = ' ' in
                    (fun ys_9_8_5 -> 
                      (`LH_C(h_8_9_9, ((mappend_lh__d7__d1_d4 t_8_6_5) ys_9_8_5)))))) in
                  (let rec h_9_0_0 = ' ' in
                    (fun ys_9_8_6 -> 
                      (`LH_C(h_9_0_0, ((mappend_lh__d7__d1_d4 t_8_6_4) ys_9_8_6))))))) _lh_writeItem_arg3_1_6)
              | _ -> 
                (failwith "error")))) (bonoPos_lh__d3__d1 _lh_writeState_arg1_2)) _lh_funcomp_x_3_8))) (((writeItem_lh__d1__d5 (fun _lh_writeItem_arg2_1_7 _lh_writeItem_arg3_1_7 -> 
          (match _lh_writeItem_arg2_1_7 with
            | `LeftBank -> 
              ((mappend_lh__d7__d1_d5 (let rec t_9_0_1 = (let rec t_9_0_2 = (let rec t_9_0_3 = (let rec t_9_0_4 = (let rec t_9_0_5 = (let rec t_9_0_6 = (let rec t_9_0_7 = (let rec t_9_0_8 = (let rec t_9_0_9 = (let rec t_9_1_0 = (let rec t_9_1_1 = (let rec t_9_1_2 = (let rec t_9_1_3 = (let rec t_9_1_4 = (let rec t_9_1_5 = (let rec t_9_1_6 = (let rec t_9_1_7 = (let rec t_9_1_8 = (let rec t_9_1_9 = (let rec t_9_2_0 = (let rec t_9_2_1 = (let rec t_9_2_2 = (let rec t_9_2_3 = (let rec t_9_2_4 = (let rec t_9_2_5 = (let rec t_9_2_6 = (let rec t_9_2_7 = (let rec t_9_2_8 = (let rec t_9_2_9 = (let rec t_9_3_0 = (let rec t_9_3_1 = (let rec t_9_3_2 = (fun ys_9_8_7 -> 
                ys_9_8_7) in
                (let rec h_9_0_1 = '|' in
                  (fun ys_9_8_8 -> 
                    (`LH_C(h_9_0_1, ((mappend_lh__d7__d1_d5 t_9_3_2) ys_9_8_8)))))) in
                (let rec h_9_0_2 = '|' in
                  (fun ys_9_8_9 -> 
                    (`LH_C(h_9_0_2, ((mappend_lh__d7__d1_d5 t_9_3_1) ys_9_8_9)))))) in
                (let rec h_9_0_3 = ' ' in
                  (fun ys_9_9_0 -> 
                    (`LH_C(h_9_0_3, ((mappend_lh__d7__d1_d5 t_9_3_0) ys_9_9_0)))))) in
                (let rec h_9_0_4 = ' ' in
                  (fun ys_9_9_1 -> 
                    (`LH_C(h_9_0_4, ((mappend_lh__d7__d1_d5 t_9_2_9) ys_9_9_1)))))) in
                (let rec h_9_0_5 = ' ' in
                  (fun ys_9_9_2 -> 
                    (`LH_C(h_9_0_5, ((mappend_lh__d7__d1_d5 t_9_2_8) ys_9_9_2)))))) in
                (let rec h_9_0_6 = ' ' in
                  (fun ys_9_9_3 -> 
                    (`LH_C(h_9_0_6, ((mappend_lh__d7__d1_d5 t_9_2_7) ys_9_9_3)))))) in
                (let rec h_9_0_7 = ' ' in
                  (fun ys_9_9_4 -> 
                    (`LH_C(h_9_0_7, ((mappend_lh__d7__d1_d5 t_9_2_6) ys_9_9_4)))))) in
                (let rec h_9_0_8 = ' ' in
                  (fun ys_9_9_5 -> 
                    (`LH_C(h_9_0_8, ((mappend_lh__d7__d1_d5 t_9_2_5) ys_9_9_5)))))) in
                (let rec h_9_0_9 = ' ' in
                  (fun ys_9_9_6 -> 
                    (`LH_C(h_9_0_9, ((mappend_lh__d7__d1_d5 t_9_2_4) ys_9_9_6)))))) in
                (let rec h_9_1_0 = ' ' in
                  (fun ys_9_9_7 -> 
                    (`LH_C(h_9_1_0, ((mappend_lh__d7__d1_d5 t_9_2_3) ys_9_9_7)))))) in
                (let rec h_9_1_1 = ' ' in
                  (fun ys_9_9_8 -> 
                    (`LH_C(h_9_1_1, ((mappend_lh__d7__d1_d5 t_9_2_2) ys_9_9_8)))))) in
                (let rec h_9_1_2 = ' ' in
                  (fun ys_9_9_9 -> 
                    (`LH_C(h_9_1_2, ((mappend_lh__d7__d1_d5 t_9_2_1) ys_9_9_9)))))) in
                (let rec h_9_1_3 = ' ' in
                  (fun ys_1_0_0_0 -> 
                    (`LH_C(h_9_1_3, ((mappend_lh__d7__d1_d5 t_9_2_0) ys_1_0_0_0)))))) in
                (let rec h_9_1_4 = ' ' in
                  (fun ys_1_0_0_1 -> 
                    (`LH_C(h_9_1_4, ((mappend_lh__d7__d1_d5 t_9_1_9) ys_1_0_0_1)))))) in
                (let rec h_9_1_5 = ' ' in
                  (fun ys_1_0_0_2 -> 
                    (`LH_C(h_9_1_5, ((mappend_lh__d7__d1_d5 t_9_1_8) ys_1_0_0_2)))))) in
                (let rec h_9_1_6 = ' ' in
                  (fun ys_1_0_0_3 -> 
                    (`LH_C(h_9_1_6, ((mappend_lh__d7__d1_d5 t_9_1_7) ys_1_0_0_3)))))) in
                (let rec h_9_1_7 = ' ' in
                  (fun ys_1_0_0_4 -> 
                    (`LH_C(h_9_1_7, ((mappend_lh__d7__d1_d5 t_9_1_6) ys_1_0_0_4)))))) in
                (let rec h_9_1_8 = ' ' in
                  (fun ys_1_0_0_5 -> 
                    (`LH_C(h_9_1_8, ((mappend_lh__d7__d1_d5 t_9_1_5) ys_1_0_0_5)))))) in
                (let rec h_9_1_9 = ' ' in
                  (fun ys_1_0_0_6 -> 
                    (`LH_C(h_9_1_9, ((mappend_lh__d7__d1_d5 t_9_1_4) ys_1_0_0_6)))))) in
                (let rec h_9_2_0 = ' ' in
                  (fun ys_1_0_0_7 -> 
                    (`LH_C(h_9_2_0, ((mappend_lh__d7__d1_d5 t_9_1_3) ys_1_0_0_7)))))) in
                (let rec h_9_2_1 = ' ' in
                  (fun ys_1_0_0_8 -> 
                    (`LH_C(h_9_2_1, ((mappend_lh__d7__d1_d5 t_9_1_2) ys_1_0_0_8)))))) in
                (let rec h_9_2_2 = ' ' in
                  (fun ys_1_0_0_9 -> 
                    (`LH_C(h_9_2_2, ((mappend_lh__d7__d1_d5 t_9_1_1) ys_1_0_0_9)))))) in
                (let rec h_9_2_3 = '|' in
                  (fun ys_1_0_1_0 -> 
                    (`LH_C(h_9_2_3, ((mappend_lh__d7__d1_d5 t_9_1_0) ys_1_0_1_0)))))) in
                (let rec h_9_2_4 = ' ' in
                  (fun ys_1_0_1_1 -> 
                    (`LH_C(h_9_2_4, ((mappend_lh__d7__d1_d5 t_9_0_9) ys_1_0_1_1)))))) in
                (let rec h_9_2_5 = 'e' in
                  (fun ys_1_0_1_2 -> 
                    (`LH_C(h_9_2_5, ((mappend_lh__d7__d1_d5 t_9_0_8) ys_1_0_1_2)))))) in
                (let rec h_9_2_6 = 'g' in
                  (fun ys_1_0_1_3 -> 
                    (`LH_C(h_9_2_6, ((mappend_lh__d7__d1_d5 t_9_0_7) ys_1_0_1_3)))))) in
                (let rec h_9_2_7 = 'd' in
                  (fun ys_1_0_1_4 -> 
                    (`LH_C(h_9_2_7, ((mappend_lh__d7__d1_d5 t_9_0_6) ys_1_0_1_4)))))) in
                (let rec h_9_2_8 = 'E' in
                  (fun ys_1_0_1_5 -> 
                    (`LH_C(h_9_2_8, ((mappend_lh__d7__d1_d5 t_9_0_5) ys_1_0_1_5)))))) in
                (let rec h_9_2_9 = ' ' in
                  (fun ys_1_0_1_6 -> 
                    (`LH_C(h_9_2_9, ((mappend_lh__d7__d1_d5 t_9_0_4) ys_1_0_1_6)))))) in
                (let rec h_9_3_0 = 'e' in
                  (fun ys_1_0_1_7 -> 
                    (`LH_C(h_9_3_0, ((mappend_lh__d7__d1_d5 t_9_0_3) ys_1_0_1_7)))))) in
                (let rec h_9_3_1 = 'h' in
                  (fun ys_1_0_1_8 -> 
                    (`LH_C(h_9_3_1, ((mappend_lh__d7__d1_d5 t_9_0_2) ys_1_0_1_8)))))) in
                (let rec h_9_3_2 = 'T' in
                  (fun ys_1_0_1_9 -> 
                    (`LH_C(h_9_3_2, ((mappend_lh__d7__d1_d5 t_9_0_1) ys_1_0_1_9))))))) _lh_writeItem_arg3_1_7)
            | `RightBank -> 
              ((mappend_lh__d7__d1_d6 (let rec t_9_3_3 = (let rec t_9_3_4 = (let rec t_9_3_5 = (let rec t_9_3_6 = (let rec t_9_3_7 = (let rec t_9_3_8 = (let rec t_9_3_9 = (let rec t_9_4_0 = (let rec t_9_4_1 = (let rec t_9_4_2 = (let rec t_9_4_3 = (let rec t_9_4_4 = (let rec t_9_4_5 = (let rec t_9_4_6 = (let rec t_9_4_7 = (let rec t_9_4_8 = (let rec t_9_4_9 = (let rec t_9_5_0 = (let rec t_9_5_1 = (let rec t_9_5_2 = (let rec t_9_5_3 = (let rec t_9_5_4 = (let rec t_9_5_5 = (let rec t_9_5_6 = (let rec t_9_5_7 = (let rec t_9_5_8 = (let rec t_9_5_9 = (let rec t_9_6_0 = (let rec t_9_6_1 = (let rec t_9_6_2 = (let rec t_9_6_3 = (let rec t_9_6_4 = (let rec t_9_6_5 = (let rec t_9_6_6 = (let rec t_9_6_7 = (let rec t_9_6_8 = (let rec t_9_6_9 = (let rec t_9_7_0 = (let rec t_9_7_1 = (let rec t_9_7_2 = (let rec t_9_7_3 = (fun ys_1_0_2_0 -> 
                ys_1_0_2_0) in
                (let rec h_9_3_3 = '|' in
                  (fun ys_1_0_2_1 -> 
                    (`LH_C(h_9_3_3, ((mappend_lh__d7__d1_d6 t_9_7_3) ys_1_0_2_1)))))) in
                (let rec h_9_3_4 = 'e' in
                  (fun ys_1_0_2_2 -> 
                    (`LH_C(h_9_3_4, ((mappend_lh__d7__d1_d6 t_9_7_2) ys_1_0_2_2)))))) in
                (let rec h_9_3_5 = 'g' in
                  (fun ys_1_0_2_3 -> 
                    (`LH_C(h_9_3_5, ((mappend_lh__d7__d1_d6 t_9_7_1) ys_1_0_2_3)))))) in
                (let rec h_9_3_6 = 'd' in
                  (fun ys_1_0_2_4 -> 
                    (`LH_C(h_9_3_6, ((mappend_lh__d7__d1_d6 t_9_7_0) ys_1_0_2_4)))))) in
                (let rec h_9_3_7 = 'E' in
                  (fun ys_1_0_2_5 -> 
                    (`LH_C(h_9_3_7, ((mappend_lh__d7__d1_d6 t_9_6_9) ys_1_0_2_5)))))) in
                (let rec h_9_3_8 = ' ' in
                  (fun ys_1_0_2_6 -> 
                    (`LH_C(h_9_3_8, ((mappend_lh__d7__d1_d6 t_9_6_8) ys_1_0_2_6)))))) in
                (let rec h_9_3_9 = 'e' in
                  (fun ys_1_0_2_7 -> 
                    (`LH_C(h_9_3_9, ((mappend_lh__d7__d1_d6 t_9_6_7) ys_1_0_2_7)))))) in
                (let rec h_9_4_0 = 'h' in
                  (fun ys_1_0_2_8 -> 
                    (`LH_C(h_9_4_0, ((mappend_lh__d7__d1_d6 t_9_6_6) ys_1_0_2_8)))))) in
                (let rec h_9_4_1 = 'T' in
                  (fun ys_1_0_2_9 -> 
                    (`LH_C(h_9_4_1, ((mappend_lh__d7__d1_d6 t_9_6_5) ys_1_0_2_9)))))) in
                (let rec h_9_4_2 = ' ' in
                  (fun ys_1_0_3_0 -> 
                    (`LH_C(h_9_4_2, ((mappend_lh__d7__d1_d6 t_9_6_4) ys_1_0_3_0)))))) in
                (let rec h_9_4_3 = '|' in
                  (fun ys_1_0_3_1 -> 
                    (`LH_C(h_9_4_3, ((mappend_lh__d7__d1_d6 t_9_6_3) ys_1_0_3_1)))))) in
                (let rec h_9_4_4 = ' ' in
                  (fun ys_1_0_3_2 -> 
                    (`LH_C(h_9_4_4, ((mappend_lh__d7__d1_d6 t_9_6_2) ys_1_0_3_2)))))) in
                (let rec h_9_4_5 = ' ' in
                  (fun ys_1_0_3_3 -> 
                    (`LH_C(h_9_4_5, ((mappend_lh__d7__d1_d6 t_9_6_1) ys_1_0_3_3)))))) in
                (let rec h_9_4_6 = ' ' in
                  (fun ys_1_0_3_4 -> 
                    (`LH_C(h_9_4_6, ((mappend_lh__d7__d1_d6 t_9_6_0) ys_1_0_3_4)))))) in
                (let rec h_9_4_7 = ' ' in
                  (fun ys_1_0_3_5 -> 
                    (`LH_C(h_9_4_7, ((mappend_lh__d7__d1_d6 t_9_5_9) ys_1_0_3_5)))))) in
                (let rec h_9_4_8 = ' ' in
                  (fun ys_1_0_3_6 -> 
                    (`LH_C(h_9_4_8, ((mappend_lh__d7__d1_d6 t_9_5_8) ys_1_0_3_6)))))) in
                (let rec h_9_4_9 = ' ' in
                  (fun ys_1_0_3_7 -> 
                    (`LH_C(h_9_4_9, ((mappend_lh__d7__d1_d6 t_9_5_7) ys_1_0_3_7)))))) in
                (let rec h_9_5_0 = ' ' in
                  (fun ys_1_0_3_8 -> 
                    (`LH_C(h_9_5_0, ((mappend_lh__d7__d1_d6 t_9_5_6) ys_1_0_3_8)))))) in
                (let rec h_9_5_1 = ' ' in
                  (fun ys_1_0_3_9 -> 
                    (`LH_C(h_9_5_1, ((mappend_lh__d7__d1_d6 t_9_5_5) ys_1_0_3_9)))))) in
                (let rec h_9_5_2 = ' ' in
                  (fun ys_1_0_4_0 -> 
                    (`LH_C(h_9_5_2, ((mappend_lh__d7__d1_d6 t_9_5_4) ys_1_0_4_0)))))) in
                (let rec h_9_5_3 = ' ' in
                  (fun ys_1_0_4_1 -> 
                    (`LH_C(h_9_5_3, ((mappend_lh__d7__d1_d6 t_9_5_3) ys_1_0_4_1)))))) in
                (let rec h_9_5_4 = ' ' in
                  (fun ys_1_0_4_2 -> 
                    (`LH_C(h_9_5_4, ((mappend_lh__d7__d1_d6 t_9_5_2) ys_1_0_4_2)))))) in
                (let rec h_9_5_5 = ' ' in
                  (fun ys_1_0_4_3 -> 
                    (`LH_C(h_9_5_5, ((mappend_lh__d7__d1_d6 t_9_5_1) ys_1_0_4_3)))))) in
                (let rec h_9_5_6 = ' ' in
                  (fun ys_1_0_4_4 -> 
                    (`LH_C(h_9_5_6, ((mappend_lh__d7__d1_d6 t_9_5_0) ys_1_0_4_4)))))) in
                (let rec h_9_5_7 = ' ' in
                  (fun ys_1_0_4_5 -> 
                    (`LH_C(h_9_5_7, ((mappend_lh__d7__d1_d6 t_9_4_9) ys_1_0_4_5)))))) in
                (let rec h_9_5_8 = ' ' in
                  (fun ys_1_0_4_6 -> 
                    (`LH_C(h_9_5_8, ((mappend_lh__d7__d1_d6 t_9_4_8) ys_1_0_4_6)))))) in
                (let rec h_9_5_9 = ' ' in
                  (fun ys_1_0_4_7 -> 
                    (`LH_C(h_9_5_9, ((mappend_lh__d7__d1_d6 t_9_4_7) ys_1_0_4_7)))))) in
                (let rec h_9_6_0 = ' ' in
                  (fun ys_1_0_4_8 -> 
                    (`LH_C(h_9_6_0, ((mappend_lh__d7__d1_d6 t_9_4_6) ys_1_0_4_8)))))) in
                (let rec h_9_6_1 = ' ' in
                  (fun ys_1_0_4_9 -> 
                    (`LH_C(h_9_6_1, ((mappend_lh__d7__d1_d6 t_9_4_5) ys_1_0_4_9)))))) in
                (let rec h_9_6_2 = ' ' in
                  (fun ys_1_0_5_0 -> 
                    (`LH_C(h_9_6_2, ((mappend_lh__d7__d1_d6 t_9_4_4) ys_1_0_5_0)))))) in
                (let rec h_9_6_3 = ' ' in
                  (fun ys_1_0_5_1 -> 
                    (`LH_C(h_9_6_3, ((mappend_lh__d7__d1_d6 t_9_4_3) ys_1_0_5_1)))))) in
                (let rec h_9_6_4 = '|' in
                  (fun ys_1_0_5_2 -> 
                    (`LH_C(h_9_6_4, ((mappend_lh__d7__d1_d6 t_9_4_2) ys_1_0_5_2)))))) in
                (let rec h_9_6_5 = ' ' in
                  (fun ys_1_0_5_3 -> 
                    (`LH_C(h_9_6_5, ((mappend_lh__d7__d1_d6 t_9_4_1) ys_1_0_5_3)))))) in
                (let rec h_9_6_6 = ' ' in
                  (fun ys_1_0_5_4 -> 
                    (`LH_C(h_9_6_6, ((mappend_lh__d7__d1_d6 t_9_4_0) ys_1_0_5_4)))))) in
                (let rec h_9_6_7 = ' ' in
                  (fun ys_1_0_5_5 -> 
                    (`LH_C(h_9_6_7, ((mappend_lh__d7__d1_d6 t_9_3_9) ys_1_0_5_5)))))) in
                (let rec h_9_6_8 = ' ' in
                  (fun ys_1_0_5_6 -> 
                    (`LH_C(h_9_6_8, ((mappend_lh__d7__d1_d6 t_9_3_8) ys_1_0_5_6)))))) in
                (let rec h_9_6_9 = ' ' in
                  (fun ys_1_0_5_7 -> 
                    (`LH_C(h_9_6_9, ((mappend_lh__d7__d1_d6 t_9_3_7) ys_1_0_5_7)))))) in
                (let rec h_9_7_0 = ' ' in
                  (fun ys_1_0_5_8 -> 
                    (`LH_C(h_9_7_0, ((mappend_lh__d7__d1_d6 t_9_3_6) ys_1_0_5_8)))))) in
                (let rec h_9_7_1 = ' ' in
                  (fun ys_1_0_5_9 -> 
                    (`LH_C(h_9_7_1, ((mappend_lh__d7__d1_d6 t_9_3_5) ys_1_0_5_9)))))) in
                (let rec h_9_7_2 = ' ' in
                  (fun ys_1_0_6_0 -> 
                    (`LH_C(h_9_7_2, ((mappend_lh__d7__d1_d6 t_9_3_4) ys_1_0_6_0)))))) in
                (let rec h_9_7_3 = ' ' in
                  (fun ys_1_0_6_1 -> 
                    (`LH_C(h_9_7_3, ((mappend_lh__d7__d1_d6 t_9_3_3) ys_1_0_6_1))))))) _lh_writeItem_arg3_1_7)
            | _ -> 
              (failwith "error")))) (edgePos_lh__d4__d1 _lh_writeState_arg1_2)) _lh_funcomp_x_3_7))) (((writeItem_lh__d1__d6 (fun _lh_writeItem_arg2_1_8 _lh_writeItem_arg3_1_8 -> 
        (match _lh_writeItem_arg2_1_8 with
          | `LeftBank -> 
            ((mappend_lh__d7__d1_d7 (let rec t_9_7_4 = (let rec t_9_7_5 = (let rec t_9_7_6 = (let rec t_9_7_7 = (let rec t_9_7_8 = (let rec t_9_7_9 = (let rec t_9_8_0 = (let rec t_9_8_1 = (let rec t_9_8_2 = (let rec t_9_8_3 = (let rec t_9_8_4 = (let rec t_9_8_5 = (let rec t_9_8_6 = (let rec t_9_8_7 = (let rec t_9_8_8 = (let rec t_9_8_9 = (let rec t_9_9_0 = (let rec t_9_9_1 = (let rec t_9_9_2 = (let rec t_9_9_3 = (let rec t_9_9_4 = (let rec t_9_9_5 = (let rec t_9_9_6 = (let rec t_9_9_7 = (let rec t_9_9_8 = (let rec t_9_9_9 = (let rec t_1_0_0_0 = (let rec t_1_0_0_1 = (let rec t_1_0_0_2 = (let rec t_1_0_0_3 = (let rec t_1_0_0_4 = (let rec t_1_0_0_5 = (fun ys_1_0_6_2 -> 
              ys_1_0_6_2) in
              (let rec h_9_7_4 = '|' in
                (fun ys_1_0_6_3 -> 
                  (`LH_C(h_9_7_4, ((mappend_lh__d7__d1_d7 t_1_0_0_5) ys_1_0_6_3)))))) in
              (let rec h_9_7_5 = '|' in
                (fun ys_1_0_6_4 -> 
                  (`LH_C(h_9_7_5, ((mappend_lh__d7__d1_d7 t_1_0_0_4) ys_1_0_6_4)))))) in
              (let rec h_9_7_6 = ' ' in
                (fun ys_1_0_6_5 -> 
                  (`LH_C(h_9_7_6, ((mappend_lh__d7__d1_d7 t_1_0_0_3) ys_1_0_6_5)))))) in
              (let rec h_9_7_7 = ' ' in
                (fun ys_1_0_6_6 -> 
                  (`LH_C(h_9_7_7, ((mappend_lh__d7__d1_d7 t_1_0_0_2) ys_1_0_6_6)))))) in
              (let rec h_9_7_8 = ' ' in
                (fun ys_1_0_6_7 -> 
                  (`LH_C(h_9_7_8, ((mappend_lh__d7__d1_d7 t_1_0_0_1) ys_1_0_6_7)))))) in
              (let rec h_9_7_9 = ' ' in
                (fun ys_1_0_6_8 -> 
                  (`LH_C(h_9_7_9, ((mappend_lh__d7__d1_d7 t_1_0_0_0) ys_1_0_6_8)))))) in
              (let rec h_9_8_0 = ' ' in
                (fun ys_1_0_6_9 -> 
                  (`LH_C(h_9_8_0, ((mappend_lh__d7__d1_d7 t_9_9_9) ys_1_0_6_9)))))) in
              (let rec h_9_8_1 = ' ' in
                (fun ys_1_0_7_0 -> 
                  (`LH_C(h_9_8_1, ((mappend_lh__d7__d1_d7 t_9_9_8) ys_1_0_7_0)))))) in
              (let rec h_9_8_2 = ' ' in
                (fun ys_1_0_7_1 -> 
                  (`LH_C(h_9_8_2, ((mappend_lh__d7__d1_d7 t_9_9_7) ys_1_0_7_1)))))) in
              (let rec h_9_8_3 = ' ' in
                (fun ys_1_0_7_2 -> 
                  (`LH_C(h_9_8_3, ((mappend_lh__d7__d1_d7 t_9_9_6) ys_1_0_7_2)))))) in
              (let rec h_9_8_4 = ' ' in
                (fun ys_1_0_7_3 -> 
                  (`LH_C(h_9_8_4, ((mappend_lh__d7__d1_d7 t_9_9_5) ys_1_0_7_3)))))) in
              (let rec h_9_8_5 = ' ' in
                (fun ys_1_0_7_4 -> 
                  (`LH_C(h_9_8_5, ((mappend_lh__d7__d1_d7 t_9_9_4) ys_1_0_7_4)))))) in
              (let rec h_9_8_6 = ' ' in
                (fun ys_1_0_7_5 -> 
                  (`LH_C(h_9_8_6, ((mappend_lh__d7__d1_d7 t_9_9_3) ys_1_0_7_5)))))) in
              (let rec h_9_8_7 = ' ' in
                (fun ys_1_0_7_6 -> 
                  (`LH_C(h_9_8_7, ((mappend_lh__d7__d1_d7 t_9_9_2) ys_1_0_7_6)))))) in
              (let rec h_9_8_8 = ' ' in
                (fun ys_1_0_7_7 -> 
                  (`LH_C(h_9_8_8, ((mappend_lh__d7__d1_d7 t_9_9_1) ys_1_0_7_7)))))) in
              (let rec h_9_8_9 = ' ' in
                (fun ys_1_0_7_8 -> 
                  (`LH_C(h_9_8_9, ((mappend_lh__d7__d1_d7 t_9_9_0) ys_1_0_7_8)))))) in
              (let rec h_9_9_0 = ' ' in
                (fun ys_1_0_7_9 -> 
                  (`LH_C(h_9_9_0, ((mappend_lh__d7__d1_d7 t_9_8_9) ys_1_0_7_9)))))) in
              (let rec h_9_9_1 = ' ' in
                (fun ys_1_0_8_0 -> 
                  (`LH_C(h_9_9_1, ((mappend_lh__d7__d1_d7 t_9_8_8) ys_1_0_8_0)))))) in
              (let rec h_9_9_2 = ' ' in
                (fun ys_1_0_8_1 -> 
                  (`LH_C(h_9_9_2, ((mappend_lh__d7__d1_d7 t_9_8_7) ys_1_0_8_1)))))) in
              (let rec h_9_9_3 = ' ' in
                (fun ys_1_0_8_2 -> 
                  (`LH_C(h_9_9_3, ((mappend_lh__d7__d1_d7 t_9_8_6) ys_1_0_8_2)))))) in
              (let rec h_9_9_4 = ' ' in
                (fun ys_1_0_8_3 -> 
                  (`LH_C(h_9_9_4, ((mappend_lh__d7__d1_d7 t_9_8_5) ys_1_0_8_3)))))) in
              (let rec h_9_9_5 = ' ' in
                (fun ys_1_0_8_4 -> 
                  (`LH_C(h_9_9_5, ((mappend_lh__d7__d1_d7 t_9_8_4) ys_1_0_8_4)))))) in
              (let rec h_9_9_6 = '|' in
                (fun ys_1_0_8_5 -> 
                  (`LH_C(h_9_9_6, ((mappend_lh__d7__d1_d7 t_9_8_3) ys_1_0_8_5)))))) in
              (let rec h_9_9_7 = ' ' in
                (fun ys_1_0_8_6 -> 
                  (`LH_C(h_9_9_7, ((mappend_lh__d7__d1_d7 t_9_8_2) ys_1_0_8_6)))))) in
              (let rec h_9_9_8 = 'y' in
                (fun ys_1_0_8_7 -> 
                  (`LH_C(h_9_9_8, ((mappend_lh__d7__d1_d7 t_9_8_1) ys_1_0_8_7)))))) in
              (let rec h_9_9_9 = 'r' in
                (fun ys_1_0_8_8 -> 
                  (`LH_C(h_9_9_9, ((mappend_lh__d7__d1_d7 t_9_8_0) ys_1_0_8_8)))))) in
              (let rec h_1_0_0_0 = 'r' in
                (fun ys_1_0_8_9 -> 
                  (`LH_C(h_1_0_0_0, ((mappend_lh__d7__d1_d7 t_9_7_9) ys_1_0_8_9)))))) in
              (let rec h_1_0_0_1 = 'a' in
                (fun ys_1_0_9_0 -> 
                  (`LH_C(h_1_0_0_1, ((mappend_lh__d7__d1_d7 t_9_7_8) ys_1_0_9_0)))))) in
              (let rec h_1_0_0_2 = 'L' in
                (fun ys_1_0_9_1 -> 
                  (`LH_C(h_1_0_0_2, ((mappend_lh__d7__d1_d7 t_9_7_7) ys_1_0_9_1)))))) in
              (let rec h_1_0_0_3 = ' ' in
                (fun ys_1_0_9_2 -> 
                  (`LH_C(h_1_0_0_3, ((mappend_lh__d7__d1_d7 t_9_7_6) ys_1_0_9_2)))))) in
              (let rec h_1_0_0_4 = ' ' in
                (fun ys_1_0_9_3 -> 
                  (`LH_C(h_1_0_0_4, ((mappend_lh__d7__d1_d7 t_9_7_5) ys_1_0_9_3)))))) in
              (let rec h_1_0_0_5 = ' ' in
                (fun ys_1_0_9_4 -> 
                  (`LH_C(h_1_0_0_5, ((mappend_lh__d7__d1_d7 t_9_7_4) ys_1_0_9_4))))))) _lh_writeItem_arg3_1_8)
          | `RightBank -> 
            ((mappend_lh__d7__d1_d8 (let rec t_1_0_0_6 = (let rec t_1_0_0_7 = (let rec t_1_0_0_8 = (let rec t_1_0_0_9 = (let rec t_1_0_1_0 = (let rec t_1_0_1_1 = (let rec t_1_0_1_2 = (let rec t_1_0_1_3 = (let rec t_1_0_1_4 = (let rec t_1_0_1_5 = (let rec t_1_0_1_6 = (let rec t_1_0_1_7 = (let rec t_1_0_1_8 = (let rec t_1_0_1_9 = (let rec t_1_0_2_0 = (let rec t_1_0_2_1 = (let rec t_1_0_2_2 = (let rec t_1_0_2_3 = (let rec t_1_0_2_4 = (let rec t_1_0_2_5 = (let rec t_1_0_2_6 = (let rec t_1_0_2_7 = (let rec t_1_0_2_8 = (let rec t_1_0_2_9 = (let rec t_1_0_3_0 = (let rec t_1_0_3_1 = (let rec t_1_0_3_2 = (let rec t_1_0_3_3 = (let rec t_1_0_3_4 = (let rec t_1_0_3_5 = (let rec t_1_0_3_6 = (let rec t_1_0_3_7 = (let rec t_1_0_3_8 = (let rec t_1_0_3_9 = (let rec t_1_0_4_0 = (let rec t_1_0_4_1 = (let rec t_1_0_4_2 = (let rec t_1_0_4_3 = (fun ys_1_0_9_5 -> 
              ys_1_0_9_5) in
              (let rec h_1_0_0_6 = '|' in
                (fun ys_1_0_9_6 -> 
                  (`LH_C(h_1_0_0_6, ((mappend_lh__d7__d1_d8 t_1_0_4_3) ys_1_0_9_6)))))) in
              (let rec h_1_0_0_7 = 'y' in
                (fun ys_1_0_9_7 -> 
                  (`LH_C(h_1_0_0_7, ((mappend_lh__d7__d1_d8 t_1_0_4_2) ys_1_0_9_7)))))) in
              (let rec h_1_0_0_8 = 'r' in
                (fun ys_1_0_9_8 -> 
                  (`LH_C(h_1_0_0_8, ((mappend_lh__d7__d1_d8 t_1_0_4_1) ys_1_0_9_8)))))) in
              (let rec h_1_0_0_9 = 'r' in
                (fun ys_1_0_9_9 -> 
                  (`LH_C(h_1_0_0_9, ((mappend_lh__d7__d1_d8 t_1_0_4_0) ys_1_0_9_9)))))) in
              (let rec h_1_0_1_0 = 'a' in
                (fun ys_1_1_0_0 -> 
                  (`LH_C(h_1_0_1_0, ((mappend_lh__d7__d1_d8 t_1_0_3_9) ys_1_1_0_0)))))) in
              (let rec h_1_0_1_1 = 'L' in
                (fun ys_1_1_0_1 -> 
                  (`LH_C(h_1_0_1_1, ((mappend_lh__d7__d1_d8 t_1_0_3_8) ys_1_1_0_1)))))) in
              (let rec h_1_0_1_2 = ' ' in
                (fun ys_1_1_0_2 -> 
                  (`LH_C(h_1_0_1_2, ((mappend_lh__d7__d1_d8 t_1_0_3_7) ys_1_1_0_2)))))) in
              (let rec h_1_0_1_3 = '|' in
                (fun ys_1_1_0_3 -> 
                  (`LH_C(h_1_0_1_3, ((mappend_lh__d7__d1_d8 t_1_0_3_6) ys_1_1_0_3)))))) in
              (let rec h_1_0_1_4 = ' ' in
                (fun ys_1_1_0_4 -> 
                  (`LH_C(h_1_0_1_4, ((mappend_lh__d7__d1_d8 t_1_0_3_5) ys_1_1_0_4)))))) in
              (let rec h_1_0_1_5 = ' ' in
                (fun ys_1_1_0_5 -> 
                  (`LH_C(h_1_0_1_5, ((mappend_lh__d7__d1_d8 t_1_0_3_4) ys_1_1_0_5)))))) in
              (let rec h_1_0_1_6 = ' ' in
                (fun ys_1_1_0_6 -> 
                  (`LH_C(h_1_0_1_6, ((mappend_lh__d7__d1_d8 t_1_0_3_3) ys_1_1_0_6)))))) in
              (let rec h_1_0_1_7 = ' ' in
                (fun ys_1_1_0_7 -> 
                  (`LH_C(h_1_0_1_7, ((mappend_lh__d7__d1_d8 t_1_0_3_2) ys_1_1_0_7)))))) in
              (let rec h_1_0_1_8 = ' ' in
                (fun ys_1_1_0_8 -> 
                  (`LH_C(h_1_0_1_8, ((mappend_lh__d7__d1_d8 t_1_0_3_1) ys_1_1_0_8)))))) in
              (let rec h_1_0_1_9 = ' ' in
                (fun ys_1_1_0_9 -> 
                  (`LH_C(h_1_0_1_9, ((mappend_lh__d7__d1_d8 t_1_0_3_0) ys_1_1_0_9)))))) in
              (let rec h_1_0_2_0 = ' ' in
                (fun ys_1_1_1_0 -> 
                  (`LH_C(h_1_0_2_0, ((mappend_lh__d7__d1_d8 t_1_0_2_9) ys_1_1_1_0)))))) in
              (let rec h_1_0_2_1 = ' ' in
                (fun ys_1_1_1_1 -> 
                  (`LH_C(h_1_0_2_1, ((mappend_lh__d7__d1_d8 t_1_0_2_8) ys_1_1_1_1)))))) in
              (let rec h_1_0_2_2 = ' ' in
                (fun ys_1_1_1_2 -> 
                  (`LH_C(h_1_0_2_2, ((mappend_lh__d7__d1_d8 t_1_0_2_7) ys_1_1_1_2)))))) in
              (let rec h_1_0_2_3 = ' ' in
                (fun ys_1_1_1_3 -> 
                  (`LH_C(h_1_0_2_3, ((mappend_lh__d7__d1_d8 t_1_0_2_6) ys_1_1_1_3)))))) in
              (let rec h_1_0_2_4 = ' ' in
                (fun ys_1_1_1_4 -> 
                  (`LH_C(h_1_0_2_4, ((mappend_lh__d7__d1_d8 t_1_0_2_5) ys_1_1_1_4)))))) in
              (let rec h_1_0_2_5 = ' ' in
                (fun ys_1_1_1_5 -> 
                  (`LH_C(h_1_0_2_5, ((mappend_lh__d7__d1_d8 t_1_0_2_4) ys_1_1_1_5)))))) in
              (let rec h_1_0_2_6 = ' ' in
                (fun ys_1_1_1_6 -> 
                  (`LH_C(h_1_0_2_6, ((mappend_lh__d7__d1_d8 t_1_0_2_3) ys_1_1_1_6)))))) in
              (let rec h_1_0_2_7 = ' ' in
                (fun ys_1_1_1_7 -> 
                  (`LH_C(h_1_0_2_7, ((mappend_lh__d7__d1_d8 t_1_0_2_2) ys_1_1_1_7)))))) in
              (let rec h_1_0_2_8 = ' ' in
                (fun ys_1_1_1_8 -> 
                  (`LH_C(h_1_0_2_8, ((mappend_lh__d7__d1_d8 t_1_0_2_1) ys_1_1_1_8)))))) in
              (let rec h_1_0_2_9 = ' ' in
                (fun ys_1_1_1_9 -> 
                  (`LH_C(h_1_0_2_9, ((mappend_lh__d7__d1_d8 t_1_0_2_0) ys_1_1_1_9)))))) in
              (let rec h_1_0_3_0 = ' ' in
                (fun ys_1_1_2_0 -> 
                  (`LH_C(h_1_0_3_0, ((mappend_lh__d7__d1_d8 t_1_0_1_9) ys_1_1_2_0)))))) in
              (let rec h_1_0_3_1 = ' ' in
                (fun ys_1_1_2_1 -> 
                  (`LH_C(h_1_0_3_1, ((mappend_lh__d7__d1_d8 t_1_0_1_8) ys_1_1_2_1)))))) in
              (let rec h_1_0_3_2 = ' ' in
                (fun ys_1_1_2_2 -> 
                  (`LH_C(h_1_0_3_2, ((mappend_lh__d7__d1_d8 t_1_0_1_7) ys_1_1_2_2)))))) in
              (let rec h_1_0_3_3 = ' ' in
                (fun ys_1_1_2_3 -> 
                  (`LH_C(h_1_0_3_3, ((mappend_lh__d7__d1_d8 t_1_0_1_6) ys_1_1_2_3)))))) in
              (let rec h_1_0_3_4 = '|' in
                (fun ys_1_1_2_4 -> 
                  (`LH_C(h_1_0_3_4, ((mappend_lh__d7__d1_d8 t_1_0_1_5) ys_1_1_2_4)))))) in
              (let rec h_1_0_3_5 = ' ' in
                (fun ys_1_1_2_5 -> 
                  (`LH_C(h_1_0_3_5, ((mappend_lh__d7__d1_d8 t_1_0_1_4) ys_1_1_2_5)))))) in
              (let rec h_1_0_3_6 = ' ' in
                (fun ys_1_1_2_6 -> 
                  (`LH_C(h_1_0_3_6, ((mappend_lh__d7__d1_d8 t_1_0_1_3) ys_1_1_2_6)))))) in
              (let rec h_1_0_3_7 = ' ' in
                (fun ys_1_1_2_7 -> 
                  (`LH_C(h_1_0_3_7, ((mappend_lh__d7__d1_d8 t_1_0_1_2) ys_1_1_2_7)))))) in
              (let rec h_1_0_3_8 = ' ' in
                (fun ys_1_1_2_8 -> 
                  (`LH_C(h_1_0_3_8, ((mappend_lh__d7__d1_d8 t_1_0_1_1) ys_1_1_2_8)))))) in
              (let rec h_1_0_3_9 = ' ' in
                (fun ys_1_1_2_9 -> 
                  (`LH_C(h_1_0_3_9, ((mappend_lh__d7__d1_d8 t_1_0_1_0) ys_1_1_2_9)))))) in
              (let rec h_1_0_4_0 = ' ' in
                (fun ys_1_1_3_0 -> 
                  (`LH_C(h_1_0_4_0, ((mappend_lh__d7__d1_d8 t_1_0_0_9) ys_1_1_3_0)))))) in
              (let rec h_1_0_4_1 = ' ' in
                (fun ys_1_1_3_1 -> 
                  (`LH_C(h_1_0_4_1, ((mappend_lh__d7__d1_d8 t_1_0_0_8) ys_1_1_3_1)))))) in
              (let rec h_1_0_4_2 = ' ' in
                (fun ys_1_1_3_2 -> 
                  (`LH_C(h_1_0_4_2, ((mappend_lh__d7__d1_d8 t_1_0_0_7) ys_1_1_3_2)))))) in
              (let rec h_1_0_4_3 = ' ' in
                (fun ys_1_1_3_3 -> 
                  (`LH_C(h_1_0_4_3, ((mappend_lh__d7__d1_d8 t_1_0_0_6) ys_1_1_3_3))))))) _lh_writeItem_arg3_1_8)
          | _ -> 
            (failwith "error")))) (larryPos_lh__d3__d1 _lh_writeState_arg1_2)) _lh_funcomp_x_3_6))) (((writeItem_lh__d1__d7 (fun _lh_writeItem_arg2_1_9 _lh_writeItem_arg3_1_9 -> 
      (match _lh_writeItem_arg2_1_9 with
        | `LeftBank -> 
          ((mappend_lh__d7__d1_d9 (let rec t_1_0_4_4 = (let rec t_1_0_4_5 = (let rec t_1_0_4_6 = (let rec t_1_0_4_7 = (let rec t_1_0_4_8 = (let rec t_1_0_4_9 = (let rec t_1_0_5_0 = (let rec t_1_0_5_1 = (let rec t_1_0_5_2 = (let rec t_1_0_5_3 = (let rec t_1_0_5_4 = (let rec t_1_0_5_5 = (let rec t_1_0_5_6 = (let rec t_1_0_5_7 = (let rec t_1_0_5_8 = (let rec t_1_0_5_9 = (let rec t_1_0_6_0 = (let rec t_1_0_6_1 = (let rec t_1_0_6_2 = (let rec t_1_0_6_3 = (let rec t_1_0_6_4 = (let rec t_1_0_6_5 = (let rec t_1_0_6_6 = (let rec t_1_0_6_7 = (let rec t_1_0_6_8 = (let rec t_1_0_6_9 = (let rec t_1_0_7_0 = (let rec t_1_0_7_1 = (let rec t_1_0_7_2 = (let rec t_1_0_7_3 = (let rec t_1_0_7_4 = (let rec t_1_0_7_5 = (fun ys_1_1_3_4 -> 
            ys_1_1_3_4) in
            (let rec h_1_0_4_4 = '|' in
              (fun ys_1_1_3_5 -> 
                (`LH_C(h_1_0_4_4, ((mappend_lh__d7__d1_d9 t_1_0_7_5) ys_1_1_3_5)))))) in
            (let rec h_1_0_4_5 = '|' in
              (fun ys_1_1_3_6 -> 
                (`LH_C(h_1_0_4_5, ((mappend_lh__d7__d1_d9 t_1_0_7_4) ys_1_1_3_6)))))) in
            (let rec h_1_0_4_6 = ' ' in
              (fun ys_1_1_3_7 -> 
                (`LH_C(h_1_0_4_6, ((mappend_lh__d7__d1_d9 t_1_0_7_3) ys_1_1_3_7)))))) in
            (let rec h_1_0_4_7 = ' ' in
              (fun ys_1_1_3_8 -> 
                (`LH_C(h_1_0_4_7, ((mappend_lh__d7__d1_d9 t_1_0_7_2) ys_1_1_3_8)))))) in
            (let rec h_1_0_4_8 = ' ' in
              (fun ys_1_1_3_9 -> 
                (`LH_C(h_1_0_4_8, ((mappend_lh__d7__d1_d9 t_1_0_7_1) ys_1_1_3_9)))))) in
            (let rec h_1_0_4_9 = ' ' in
              (fun ys_1_1_4_0 -> 
                (`LH_C(h_1_0_4_9, ((mappend_lh__d7__d1_d9 t_1_0_7_0) ys_1_1_4_0)))))) in
            (let rec h_1_0_5_0 = ' ' in
              (fun ys_1_1_4_1 -> 
                (`LH_C(h_1_0_5_0, ((mappend_lh__d7__d1_d9 t_1_0_6_9) ys_1_1_4_1)))))) in
            (let rec h_1_0_5_1 = ' ' in
              (fun ys_1_1_4_2 -> 
                (`LH_C(h_1_0_5_1, ((mappend_lh__d7__d1_d9 t_1_0_6_8) ys_1_1_4_2)))))) in
            (let rec h_1_0_5_2 = ' ' in
              (fun ys_1_1_4_3 -> 
                (`LH_C(h_1_0_5_2, ((mappend_lh__d7__d1_d9 t_1_0_6_7) ys_1_1_4_3)))))) in
            (let rec h_1_0_5_3 = ' ' in
              (fun ys_1_1_4_4 -> 
                (`LH_C(h_1_0_5_3, ((mappend_lh__d7__d1_d9 t_1_0_6_6) ys_1_1_4_4)))))) in
            (let rec h_1_0_5_4 = ' ' in
              (fun ys_1_1_4_5 -> 
                (`LH_C(h_1_0_5_4, ((mappend_lh__d7__d1_d9 t_1_0_6_5) ys_1_1_4_5)))))) in
            (let rec h_1_0_5_5 = ' ' in
              (fun ys_1_1_4_6 -> 
                (`LH_C(h_1_0_5_5, ((mappend_lh__d7__d1_d9 t_1_0_6_4) ys_1_1_4_6)))))) in
            (let rec h_1_0_5_6 = ' ' in
              (fun ys_1_1_4_7 -> 
                (`LH_C(h_1_0_5_6, ((mappend_lh__d7__d1_d9 t_1_0_6_3) ys_1_1_4_7)))))) in
            (let rec h_1_0_5_7 = ' ' in
              (fun ys_1_1_4_8 -> 
                (`LH_C(h_1_0_5_7, ((mappend_lh__d7__d1_d9 t_1_0_6_2) ys_1_1_4_8)))))) in
            (let rec h_1_0_5_8 = ' ' in
              (fun ys_1_1_4_9 -> 
                (`LH_C(h_1_0_5_8, ((mappend_lh__d7__d1_d9 t_1_0_6_1) ys_1_1_4_9)))))) in
            (let rec h_1_0_5_9 = ' ' in
              (fun ys_1_1_5_0 -> 
                (`LH_C(h_1_0_5_9, ((mappend_lh__d7__d1_d9 t_1_0_6_0) ys_1_1_5_0)))))) in
            (let rec h_1_0_6_0 = ' ' in
              (fun ys_1_1_5_1 -> 
                (`LH_C(h_1_0_6_0, ((mappend_lh__d7__d1_d9 t_1_0_5_9) ys_1_1_5_1)))))) in
            (let rec h_1_0_6_1 = ' ' in
              (fun ys_1_1_5_2 -> 
                (`LH_C(h_1_0_6_1, ((mappend_lh__d7__d1_d9 t_1_0_5_8) ys_1_1_5_2)))))) in
            (let rec h_1_0_6_2 = ' ' in
              (fun ys_1_1_5_3 -> 
                (`LH_C(h_1_0_6_2, ((mappend_lh__d7__d1_d9 t_1_0_5_7) ys_1_1_5_3)))))) in
            (let rec h_1_0_6_3 = ' ' in
              (fun ys_1_1_5_4 -> 
                (`LH_C(h_1_0_6_3, ((mappend_lh__d7__d1_d9 t_1_0_5_6) ys_1_1_5_4)))))) in
            (let rec h_1_0_6_4 = ' ' in
              (fun ys_1_1_5_5 -> 
                (`LH_C(h_1_0_6_4, ((mappend_lh__d7__d1_d9 t_1_0_5_5) ys_1_1_5_5)))))) in
            (let rec h_1_0_6_5 = ' ' in
              (fun ys_1_1_5_6 -> 
                (`LH_C(h_1_0_6_5, ((mappend_lh__d7__d1_d9 t_1_0_5_4) ys_1_1_5_6)))))) in
            (let rec h_1_0_6_6 = '|' in
              (fun ys_1_1_5_7 -> 
                (`LH_C(h_1_0_6_6, ((mappend_lh__d7__d1_d9 t_1_0_5_3) ys_1_1_5_7)))))) in
            (let rec h_1_0_6_7 = ' ' in
              (fun ys_1_1_5_8 -> 
                (`LH_C(h_1_0_6_7, ((mappend_lh__d7__d1_d9 t_1_0_5_2) ys_1_1_5_8)))))) in
            (let rec h_1_0_6_8 = 'm' in
              (fun ys_1_1_5_9 -> 
                (`LH_C(h_1_0_6_8, ((mappend_lh__d7__d1_d9 t_1_0_5_1) ys_1_1_5_9)))))) in
            (let rec h_1_0_6_9 = 'a' in
              (fun ys_1_1_6_0 -> 
                (`LH_C(h_1_0_6_9, ((mappend_lh__d7__d1_d9 t_1_0_5_0) ys_1_1_6_0)))))) in
            (let rec h_1_0_7_0 = 'd' in
              (fun ys_1_1_6_1 -> 
                (`LH_C(h_1_0_7_0, ((mappend_lh__d7__d1_d9 t_1_0_4_9) ys_1_1_6_1)))))) in
            (let rec h_1_0_7_1 = 'A' in
              (fun ys_1_1_6_2 -> 
                (`LH_C(h_1_0_7_1, ((mappend_lh__d7__d1_d9 t_1_0_4_8) ys_1_1_6_2)))))) in
            (let rec h_1_0_7_2 = ' ' in
              (fun ys_1_1_6_3 -> 
                (`LH_C(h_1_0_7_2, ((mappend_lh__d7__d1_d9 t_1_0_4_7) ys_1_1_6_3)))))) in
            (let rec h_1_0_7_3 = ' ' in
              (fun ys_1_1_6_4 -> 
                (`LH_C(h_1_0_7_3, ((mappend_lh__d7__d1_d9 t_1_0_4_6) ys_1_1_6_4)))))) in
            (let rec h_1_0_7_4 = ' ' in
              (fun ys_1_1_6_5 -> 
                (`LH_C(h_1_0_7_4, ((mappend_lh__d7__d1_d9 t_1_0_4_5) ys_1_1_6_5)))))) in
            (let rec h_1_0_7_5 = ' ' in
              (fun ys_1_1_6_6 -> 
                (`LH_C(h_1_0_7_5, ((mappend_lh__d7__d1_d9 t_1_0_4_4) ys_1_1_6_6))))))) _lh_writeItem_arg3_1_9)
        | `RightBank -> 
          ((mappend_lh__d7__d1_d0 (let rec t_1_0_7_6 = (let rec t_1_0_7_7 = (let rec t_1_0_7_8 = (let rec t_1_0_7_9 = (let rec t_1_0_8_0 = (let rec t_1_0_8_1 = (let rec t_1_0_8_2 = (let rec t_1_0_8_3 = (let rec t_1_0_8_4 = (let rec t_1_0_8_5 = (let rec t_1_0_8_6 = (let rec t_1_0_8_7 = (let rec t_1_0_8_8 = (let rec t_1_0_8_9 = (let rec t_1_0_9_0 = (let rec t_1_0_9_1 = (let rec t_1_0_9_2 = (let rec t_1_0_9_3 = (let rec t_1_0_9_4 = (let rec t_1_0_9_5 = (let rec t_1_0_9_6 = (let rec t_1_0_9_7 = (let rec t_1_0_9_8 = (let rec t_1_0_9_9 = (let rec t_1_1_0_0 = (let rec t_1_1_0_1 = (let rec t_1_1_0_2 = (let rec t_1_1_0_3 = (let rec t_1_1_0_4 = (let rec t_1_1_0_5 = (let rec t_1_1_0_6 = (let rec t_1_1_0_7 = (let rec t_1_1_0_8 = (let rec t_1_1_0_9 = (let rec t_1_1_1_0 = (let rec t_1_1_1_1 = (let rec t_1_1_1_2 = (fun ys_1_1_6_7 -> 
            ys_1_1_6_7) in
            (let rec h_1_0_7_6 = '|' in
              (fun ys_1_1_6_8 -> 
                (`LH_C(h_1_0_7_6, ((mappend_lh__d7__d1_d0 t_1_1_1_2) ys_1_1_6_8)))))) in
            (let rec h_1_0_7_7 = 'm' in
              (fun ys_1_1_6_9 -> 
                (`LH_C(h_1_0_7_7, ((mappend_lh__d7__d1_d0 t_1_1_1_1) ys_1_1_6_9)))))) in
            (let rec h_1_0_7_8 = 'a' in
              (fun ys_1_1_7_0 -> 
                (`LH_C(h_1_0_7_8, ((mappend_lh__d7__d1_d0 t_1_1_1_0) ys_1_1_7_0)))))) in
            (let rec h_1_0_7_9 = 'd' in
              (fun ys_1_1_7_1 -> 
                (`LH_C(h_1_0_7_9, ((mappend_lh__d7__d1_d0 t_1_1_0_9) ys_1_1_7_1)))))) in
            (let rec h_1_0_8_0 = 'A' in
              (fun ys_1_1_7_2 -> 
                (`LH_C(h_1_0_8_0, ((mappend_lh__d7__d1_d0 t_1_1_0_8) ys_1_1_7_2)))))) in
            (let rec h_1_0_8_1 = ' ' in
              (fun ys_1_1_7_3 -> 
                (`LH_C(h_1_0_8_1, ((mappend_lh__d7__d1_d0 t_1_1_0_7) ys_1_1_7_3)))))) in
            (let rec h_1_0_8_2 = '|' in
              (fun ys_1_1_7_4 -> 
                (`LH_C(h_1_0_8_2, ((mappend_lh__d7__d1_d0 t_1_1_0_6) ys_1_1_7_4)))))) in
            (let rec h_1_0_8_3 = ' ' in
              (fun ys_1_1_7_5 -> 
                (`LH_C(h_1_0_8_3, ((mappend_lh__d7__d1_d0 t_1_1_0_5) ys_1_1_7_5)))))) in
            (let rec h_1_0_8_4 = ' ' in
              (fun ys_1_1_7_6 -> 
                (`LH_C(h_1_0_8_4, ((mappend_lh__d7__d1_d0 t_1_1_0_4) ys_1_1_7_6)))))) in
            (let rec h_1_0_8_5 = ' ' in
              (fun ys_1_1_7_7 -> 
                (`LH_C(h_1_0_8_5, ((mappend_lh__d7__d1_d0 t_1_1_0_3) ys_1_1_7_7)))))) in
            (let rec h_1_0_8_6 = ' ' in
              (fun ys_1_1_7_8 -> 
                (`LH_C(h_1_0_8_6, ((mappend_lh__d7__d1_d0 t_1_1_0_2) ys_1_1_7_8)))))) in
            (let rec h_1_0_8_7 = ' ' in
              (fun ys_1_1_7_9 -> 
                (`LH_C(h_1_0_8_7, ((mappend_lh__d7__d1_d0 t_1_1_0_1) ys_1_1_7_9)))))) in
            (let rec h_1_0_8_8 = ' ' in
              (fun ys_1_1_8_0 -> 
                (`LH_C(h_1_0_8_8, ((mappend_lh__d7__d1_d0 t_1_1_0_0) ys_1_1_8_0)))))) in
            (let rec h_1_0_8_9 = ' ' in
              (fun ys_1_1_8_1 -> 
                (`LH_C(h_1_0_8_9, ((mappend_lh__d7__d1_d0 t_1_0_9_9) ys_1_1_8_1)))))) in
            (let rec h_1_0_9_0 = ' ' in
              (fun ys_1_1_8_2 -> 
                (`LH_C(h_1_0_9_0, ((mappend_lh__d7__d1_d0 t_1_0_9_8) ys_1_1_8_2)))))) in
            (let rec h_1_0_9_1 = ' ' in
              (fun ys_1_1_8_3 -> 
                (`LH_C(h_1_0_9_1, ((mappend_lh__d7__d1_d0 t_1_0_9_7) ys_1_1_8_3)))))) in
            (let rec h_1_0_9_2 = ' ' in
              (fun ys_1_1_8_4 -> 
                (`LH_C(h_1_0_9_2, ((mappend_lh__d7__d1_d0 t_1_0_9_6) ys_1_1_8_4)))))) in
            (let rec h_1_0_9_3 = ' ' in
              (fun ys_1_1_8_5 -> 
                (`LH_C(h_1_0_9_3, ((mappend_lh__d7__d1_d0 t_1_0_9_5) ys_1_1_8_5)))))) in
            (let rec h_1_0_9_4 = ' ' in
              (fun ys_1_1_8_6 -> 
                (`LH_C(h_1_0_9_4, ((mappend_lh__d7__d1_d0 t_1_0_9_4) ys_1_1_8_6)))))) in
            (let rec h_1_0_9_5 = ' ' in
              (fun ys_1_1_8_7 -> 
                (`LH_C(h_1_0_9_5, ((mappend_lh__d7__d1_d0 t_1_0_9_3) ys_1_1_8_7)))))) in
            (let rec h_1_0_9_6 = ' ' in
              (fun ys_1_1_8_8 -> 
                (`LH_C(h_1_0_9_6, ((mappend_lh__d7__d1_d0 t_1_0_9_2) ys_1_1_8_8)))))) in
            (let rec h_1_0_9_7 = ' ' in
              (fun ys_1_1_8_9 -> 
                (`LH_C(h_1_0_9_7, ((mappend_lh__d7__d1_d0 t_1_0_9_1) ys_1_1_8_9)))))) in
            (let rec h_1_0_9_8 = ' ' in
              (fun ys_1_1_9_0 -> 
                (`LH_C(h_1_0_9_8, ((mappend_lh__d7__d1_d0 t_1_0_9_0) ys_1_1_9_0)))))) in
            (let rec h_1_0_9_9 = ' ' in
              (fun ys_1_1_9_1 -> 
                (`LH_C(h_1_0_9_9, ((mappend_lh__d7__d1_d0 t_1_0_8_9) ys_1_1_9_1)))))) in
            (let rec h_1_1_0_0 = ' ' in
              (fun ys_1_1_9_2 -> 
                (`LH_C(h_1_1_0_0, ((mappend_lh__d7__d1_d0 t_1_0_8_8) ys_1_1_9_2)))))) in
            (let rec h_1_1_0_1 = ' ' in
              (fun ys_1_1_9_3 -> 
                (`LH_C(h_1_1_0_1, ((mappend_lh__d7__d1_d0 t_1_0_8_7) ys_1_1_9_3)))))) in
            (let rec h_1_1_0_2 = ' ' in
              (fun ys_1_1_9_4 -> 
                (`LH_C(h_1_1_0_2, ((mappend_lh__d7__d1_d0 t_1_0_8_6) ys_1_1_9_4)))))) in
            (let rec h_1_1_0_3 = '|' in
              (fun ys_1_1_9_5 -> 
                (`LH_C(h_1_1_0_3, ((mappend_lh__d7__d1_d0 t_1_0_8_5) ys_1_1_9_5)))))) in
            (let rec h_1_1_0_4 = ' ' in
              (fun ys_1_1_9_6 -> 
                (`LH_C(h_1_1_0_4, ((mappend_lh__d7__d1_d0 t_1_0_8_4) ys_1_1_9_6)))))) in
            (let rec h_1_1_0_5 = ' ' in
              (fun ys_1_1_9_7 -> 
                (`LH_C(h_1_1_0_5, ((mappend_lh__d7__d1_d0 t_1_0_8_3) ys_1_1_9_7)))))) in
            (let rec h_1_1_0_6 = ' ' in
              (fun ys_1_1_9_8 -> 
                (`LH_C(h_1_1_0_6, ((mappend_lh__d7__d1_d0 t_1_0_8_2) ys_1_1_9_8)))))) in
            (let rec h_1_1_0_7 = ' ' in
              (fun ys_1_1_9_9 -> 
                (`LH_C(h_1_1_0_7, ((mappend_lh__d7__d1_d0 t_1_0_8_1) ys_1_1_9_9)))))) in
            (let rec h_1_1_0_8 = ' ' in
              (fun ys_1_2_0_0 -> 
                (`LH_C(h_1_1_0_8, ((mappend_lh__d7__d1_d0 t_1_0_8_0) ys_1_2_0_0)))))) in
            (let rec h_1_1_0_9 = ' ' in
              (fun ys_1_2_0_1 -> 
                (`LH_C(h_1_1_0_9, ((mappend_lh__d7__d1_d0 t_1_0_7_9) ys_1_2_0_1)))))) in
            (let rec h_1_1_1_0 = ' ' in
              (fun ys_1_2_0_2 -> 
                (`LH_C(h_1_1_1_0, ((mappend_lh__d7__d1_d0 t_1_0_7_8) ys_1_2_0_2)))))) in
            (let rec h_1_1_1_1 = ' ' in
              (fun ys_1_2_0_3 -> 
                (`LH_C(h_1_1_1_1, ((mappend_lh__d7__d1_d0 t_1_0_7_7) ys_1_2_0_3)))))) in
            (let rec h_1_1_1_2 = ' ' in
              (fun ys_1_2_0_4 -> 
                (`LH_C(h_1_1_1_2, ((mappend_lh__d7__d1_d0 t_1_0_7_6) ys_1_2_0_4))))))) _lh_writeItem_arg3_1_9)
        | _ -> 
          (failwith "error")))) (adamPos_lh__d3__d1 _lh_writeState_arg1_2)) _lh_funcomp_x_3_5))) ((fun s_5 -> 
    ((mappend_lh__d7__d1_d1 (let rec t_1_1_1_3 = (let rec t_1_1_1_4 = (let rec t_1_1_1_5 = (let rec t_1_1_1_6 = (let rec t_1_1_1_7 = (let rec t_1_1_1_8 = (let rec t_1_1_1_9 = (let rec t_1_1_2_0 = (let rec t_1_1_2_1 = (let rec t_1_1_2_2 = (let rec t_1_1_2_3 = (let rec t_1_1_2_4 = (let rec t_1_1_2_5 = (let rec t_1_1_2_6 = (let rec t_1_1_2_7 = (let rec t_1_1_2_8 = (let rec t_1_1_2_9 = (let rec t_1_1_3_0 = (let rec t_1_1_3_1 = (let rec t_1_1_3_2 = (let rec t_1_1_3_3 = (let rec t_1_1_3_4 = (let rec t_1_1_3_5 = (let rec t_1_1_3_6 = (let rec t_1_1_3_7 = (let rec t_1_1_3_8 = (let rec t_1_1_3_9 = (let rec t_1_1_4_0 = (let rec t_1_1_4_1 = (let rec t_1_1_4_2 = (let rec t_1_1_4_3 = (let rec t_1_1_4_4 = (let rec t_1_1_4_5 = (let rec t_1_1_4_6 = (let rec t_1_1_4_7 = (let rec t_1_1_4_8 = (let rec t_1_1_4_9 = (let rec t_1_1_5_0 = (let rec t_1_1_5_1 = (let rec t_1_1_5_2 = (let rec t_1_1_5_3 = (fun ys_1_2_0_5 -> 
      ys_1_2_0_5) in
      (let rec h_1_1_1_3 = '|' in
        (fun ys_1_2_0_6 -> 
          (`LH_C(h_1_1_1_3, ((mappend_lh__d7__d1_d1 t_1_1_5_3) ys_1_2_0_6)))))) in
      (let rec h_1_1_1_4 = '-' in
        (fun ys_1_2_0_7 -> 
          (`LH_C(h_1_1_1_4, ((mappend_lh__d7__d1_d1 t_1_1_5_2) ys_1_2_0_7)))))) in
      (let rec h_1_1_1_5 = '-' in
        (fun ys_1_2_0_8 -> 
          (`LH_C(h_1_1_1_5, ((mappend_lh__d7__d1_d1 t_1_1_5_1) ys_1_2_0_8)))))) in
      (let rec h_1_1_1_6 = '-' in
        (fun ys_1_2_0_9 -> 
          (`LH_C(h_1_1_1_6, ((mappend_lh__d7__d1_d1 t_1_1_5_0) ys_1_2_0_9)))))) in
      (let rec h_1_1_1_7 = '-' in
        (fun ys_1_2_1_0 -> 
          (`LH_C(h_1_1_1_7, ((mappend_lh__d7__d1_d1 t_1_1_4_9) ys_1_2_1_0)))))) in
      (let rec h_1_1_1_8 = '-' in
        (fun ys_1_2_1_1 -> 
          (`LH_C(h_1_1_1_8, ((mappend_lh__d7__d1_d1 t_1_1_4_8) ys_1_2_1_1)))))) in
      (let rec h_1_1_1_9 = '-' in
        (fun ys_1_2_1_2 -> 
          (`LH_C(h_1_1_1_9, ((mappend_lh__d7__d1_d1 t_1_1_4_7) ys_1_2_1_2)))))) in
      (let rec h_1_1_2_0 = '-' in
        (fun ys_1_2_1_3 -> 
          (`LH_C(h_1_1_2_0, ((mappend_lh__d7__d1_d1 t_1_1_4_6) ys_1_2_1_3)))))) in
      (let rec h_1_1_2_1 = '-' in
        (fun ys_1_2_1_4 -> 
          (`LH_C(h_1_1_2_1, ((mappend_lh__d7__d1_d1 t_1_1_4_5) ys_1_2_1_4)))))) in
      (let rec h_1_1_2_2 = '-' in
        (fun ys_1_2_1_5 -> 
          (`LH_C(h_1_1_2_2, ((mappend_lh__d7__d1_d1 t_1_1_4_4) ys_1_2_1_5)))))) in
      (let rec h_1_1_2_3 = '-' in
        (fun ys_1_2_1_6 -> 
          (`LH_C(h_1_1_2_3, ((mappend_lh__d7__d1_d1 t_1_1_4_3) ys_1_2_1_6)))))) in
      (let rec h_1_1_2_4 = '-' in
        (fun ys_1_2_1_7 -> 
          (`LH_C(h_1_1_2_4, ((mappend_lh__d7__d1_d1 t_1_1_4_2) ys_1_2_1_7)))))) in
      (let rec h_1_1_2_5 = '-' in
        (fun ys_1_2_1_8 -> 
          (`LH_C(h_1_1_2_5, ((mappend_lh__d7__d1_d1 t_1_1_4_1) ys_1_2_1_8)))))) in
      (let rec h_1_1_2_6 = '-' in
        (fun ys_1_2_1_9 -> 
          (`LH_C(h_1_1_2_6, ((mappend_lh__d7__d1_d1 t_1_1_4_0) ys_1_2_1_9)))))) in
      (let rec h_1_1_2_7 = '-' in
        (fun ys_1_2_2_0 -> 
          (`LH_C(h_1_1_2_7, ((mappend_lh__d7__d1_d1 t_1_1_3_9) ys_1_2_2_0)))))) in
      (let rec h_1_1_2_8 = '-' in
        (fun ys_1_2_2_1 -> 
          (`LH_C(h_1_1_2_8, ((mappend_lh__d7__d1_d1 t_1_1_3_8) ys_1_2_2_1)))))) in
      (let rec h_1_1_2_9 = '-' in
        (fun ys_1_2_2_2 -> 
          (`LH_C(h_1_1_2_9, ((mappend_lh__d7__d1_d1 t_1_1_3_7) ys_1_2_2_2)))))) in
      (let rec h_1_1_3_0 = '-' in
        (fun ys_1_2_2_3 -> 
          (`LH_C(h_1_1_3_0, ((mappend_lh__d7__d1_d1 t_1_1_3_6) ys_1_2_2_3)))))) in
      (let rec h_1_1_3_1 = '-' in
        (fun ys_1_2_2_4 -> 
          (`LH_C(h_1_1_3_1, ((mappend_lh__d7__d1_d1 t_1_1_3_5) ys_1_2_2_4)))))) in
      (let rec h_1_1_3_2 = '-' in
        (fun ys_1_2_2_5 -> 
          (`LH_C(h_1_1_3_2, ((mappend_lh__d7__d1_d1 t_1_1_3_4) ys_1_2_2_5)))))) in
      (let rec h_1_1_3_3 = '-' in
        (fun ys_1_2_2_6 -> 
          (`LH_C(h_1_1_3_3, ((mappend_lh__d7__d1_d1 t_1_1_3_3) ys_1_2_2_6)))))) in
      (let rec h_1_1_3_4 = '-' in
        (fun ys_1_2_2_7 -> 
          (`LH_C(h_1_1_3_4, ((mappend_lh__d7__d1_d1 t_1_1_3_2) ys_1_2_2_7)))))) in
      (let rec h_1_1_3_5 = '-' in
        (fun ys_1_2_2_8 -> 
          (`LH_C(h_1_1_3_5, ((mappend_lh__d7__d1_d1 t_1_1_3_1) ys_1_2_2_8)))))) in
      (let rec h_1_1_3_6 = '-' in
        (fun ys_1_2_2_9 -> 
          (`LH_C(h_1_1_3_6, ((mappend_lh__d7__d1_d1 t_1_1_3_0) ys_1_2_2_9)))))) in
      (let rec h_1_1_3_7 = '-' in
        (fun ys_1_2_3_0 -> 
          (`LH_C(h_1_1_3_7, ((mappend_lh__d7__d1_d1 t_1_1_2_9) ys_1_2_3_0)))))) in
      (let rec h_1_1_3_8 = '-' in
        (fun ys_1_2_3_1 -> 
          (`LH_C(h_1_1_3_8, ((mappend_lh__d7__d1_d1 t_1_1_2_8) ys_1_2_3_1)))))) in
      (let rec h_1_1_3_9 = '-' in
        (fun ys_1_2_3_2 -> 
          (`LH_C(h_1_1_3_9, ((mappend_lh__d7__d1_d1 t_1_1_2_7) ys_1_2_3_2)))))) in
      (let rec h_1_1_4_0 = '-' in
        (fun ys_1_2_3_3 -> 
          (`LH_C(h_1_1_4_0, ((mappend_lh__d7__d1_d1 t_1_1_2_6) ys_1_2_3_3)))))) in
      (let rec h_1_1_4_1 = '-' in
        (fun ys_1_2_3_4 -> 
          (`LH_C(h_1_1_4_1, ((mappend_lh__d7__d1_d1 t_1_1_2_5) ys_1_2_3_4)))))) in
      (let rec h_1_1_4_2 = '-' in
        (fun ys_1_2_3_5 -> 
          (`LH_C(h_1_1_4_2, ((mappend_lh__d7__d1_d1 t_1_1_2_4) ys_1_2_3_5)))))) in
      (let rec h_1_1_4_3 = '-' in
        (fun ys_1_2_3_6 -> 
          (`LH_C(h_1_1_4_3, ((mappend_lh__d7__d1_d1 t_1_1_2_3) ys_1_2_3_6)))))) in
      (let rec h_1_1_4_4 = '-' in
        (fun ys_1_2_3_7 -> 
          (`LH_C(h_1_1_4_4, ((mappend_lh__d7__d1_d1 t_1_1_2_2) ys_1_2_3_7)))))) in
      (let rec h_1_1_4_5 = '-' in
        (fun ys_1_2_3_8 -> 
          (`LH_C(h_1_1_4_5, ((mappend_lh__d7__d1_d1 t_1_1_2_1) ys_1_2_3_8)))))) in
      (let rec h_1_1_4_6 = '-' in
        (fun ys_1_2_3_9 -> 
          (`LH_C(h_1_1_4_6, ((mappend_lh__d7__d1_d1 t_1_1_2_0) ys_1_2_3_9)))))) in
      (let rec h_1_1_4_7 = '-' in
        (fun ys_1_2_4_0 -> 
          (`LH_C(h_1_1_4_7, ((mappend_lh__d7__d1_d1 t_1_1_1_9) ys_1_2_4_0)))))) in
      (let rec h_1_1_4_8 = '-' in
        (fun ys_1_2_4_1 -> 
          (`LH_C(h_1_1_4_8, ((mappend_lh__d7__d1_d1 t_1_1_1_8) ys_1_2_4_1)))))) in
      (let rec h_1_1_4_9 = '-' in
        (fun ys_1_2_4_2 -> 
          (`LH_C(h_1_1_4_9, ((mappend_lh__d7__d1_d1 t_1_1_1_7) ys_1_2_4_2)))))) in
      (let rec h_1_1_5_0 = '-' in
        (fun ys_1_2_4_3 -> 
          (`LH_C(h_1_1_5_0, ((mappend_lh__d7__d1_d1 t_1_1_1_6) ys_1_2_4_3)))))) in
      (let rec h_1_1_5_1 = '-' in
        (fun ys_1_2_4_4 -> 
          (`LH_C(h_1_1_5_1, ((mappend_lh__d7__d1_d1 t_1_1_1_5) ys_1_2_4_4)))))) in
      (let rec h_1_1_5_2 = '-' in
        (fun ys_1_2_4_5 -> 
          (`LH_C(h_1_1_5_2, ((mappend_lh__d7__d1_d1 t_1_1_1_4) ys_1_2_4_5)))))) in
      (let rec h_1_1_5_3 = '-' in
        (fun ys_1_2_4_6 -> 
          (`LH_C(h_1_1_5_3, ((mappend_lh__d7__d1_d1 t_1_1_1_3) ys_1_2_4_6))))))) s_5)) _lh_funcomp_x_3_4));;
let rec writeHistory_lh__d1__d1 _lh_writeHistory_arg1_0 =
  (match _lh_writeHistory_arg1_0 with
    | `LH_N -> 
      (fun x_1 -> 
        x_1)
    | _ -> 
      (((foldr_lh__d1__d1 (fun timestate_0 acc_0 -> 
        (let rec _lh_matchIdent_2 = timestate_0 in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_0, _lh_writeHistory_LH_P2_1_0) -> 
              (fun _lh_funcomp_x_5 -> 
                ((fun _lh_funcomp_x_6 -> 
                  ((fun _lh_funcomp_x_7 -> 
                    ((fun _lh_funcomp_x_8 -> 
                      ((fun x_2 -> 
                        ((mappend_lh__d5__d7 (let rec t_3_7_4 = (let rec t_3_7_5 = (let rec t_3_7_6 = (let rec t_3_7_7 = (let rec t_3_7_8 = (let rec t_3_7_9 = (fun ys_4_1_0 -> 
                          ys_4_1_0) in
                          (let rec h_3_7_4 = ' ' in
                            (fun ys_4_1_1 -> 
                              (`LH_C(h_3_7_4, ((mappend_lh__d5__d8 t_3_7_9) ys_4_1_1)))))) in
                          (let rec h_3_7_5 = ':' in
                            (fun ys_4_1_2 -> 
                              (`LH_C(h_3_7_5, ((mappend_lh__d5__d9 t_3_7_8) ys_4_1_2)))))) in
                          (let rec h_3_7_6 = 'e' in
                            (fun ys_4_1_3 -> 
                              (`LH_C(h_3_7_6, ((mappend_lh__d5__d1_d0 t_3_7_7) ys_4_1_3)))))) in
                          (let rec h_3_7_7 = 'm' in
                            (fun ys_4_1_4 -> 
                              (`LH_C(h_3_7_7, ((mappend_lh__d5__d1_d1 t_3_7_6) ys_4_1_4)))))) in
                          (let rec h_3_7_8 = 'i' in
                            (fun ys_4_1_5 -> 
                              (`LH_C(h_3_7_8, ((mappend_lh__d5__d1_d2 t_3_7_5) ys_4_1_5)))))) in
                          (let rec h_3_7_9 = 'T' in
                            (fun ys_4_1_6 -> 
                              (`LH_C(h_3_7_9, ((mappend_lh__d5__d1_d3 t_3_7_4) ys_4_1_6))))))) x_2)) ((fun x_3 -> 
                        ((mappend_lh__d4__d1 (string_of_int ((totalTime_lh__d3__d1 _lh_writeHistory_arg1_0) - _lh_writeHistory_LH_P2_0_0))) x_3)) _lh_funcomp_x_8))) ((fun x_4 -> 
                      (`LH_C('|', x_4))) _lh_funcomp_x_7))) ((writeState_lh__d1__d1 _lh_writeHistory_LH_P2_1_0) _lh_funcomp_x_6))) (acc_0 _lh_funcomp_x_5)))
            | _ -> 
              (failwith "error"))))) (fun x_5 -> 
        x_5)) _lh_writeHistory_arg1_0));;
let rec mappend_lh__d5__d1_d6 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec mappend_lh__d5__d1_d7 xs_4_5 ys_4_3_2 =
  (xs_4_5 ys_4_3_2);;
let rec mappend_lh__d5__d2_d0 xs_5_2 ys_4_3_9 =
  (xs_5_2 ys_4_3_9);;
let rec mappend_lh__d5__d1_d9 xs_5_7 ys_4_7_4 =
  (xs_5_7 ys_4_7_4);;
let rec mappend_lh__d5__d1_d4 xs_6_2 ys_4_7_9 =
  (xs_6_2 ys_4_7_9);;
let rec mappend_lh__d7__d2_d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec larryPos_lh__d3__d2 _lh_larryPos_arg1_1 =
  (match _lh_larryPos_arg1_1 with
    | `State(_lh_larryPos_State_0_1, _lh_larryPos_State_1_1, _lh_larryPos_State_2_1, _lh_larryPos_State_3_1) -> 
      _lh_larryPos_State_2_1
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d2_d9 xs_2_1 ys_2_1 =
  (xs_2_1 ys_2_1);;
let rec mappend_lh__d7__d2_d4 xs_3_6 ys_4_0_9 =
  (xs_3_6 ys_4_0_9);;
let rec writeItem_lh__d1__d8 _lh_writeItem_arg1_1 _lh_writeItem_arg2_5 _lh_writeItem_arg3_5 =
  ((_lh_writeItem_arg1_1 _lh_writeItem_arg2_5) _lh_writeItem_arg3_5);;
let rec mappend_lh__d7__d2_d6 xs_4_7 ys_4_3_4 =
  (xs_4_7 ys_4_3_4);;
let rec mappend_lh__d7__d2_d2 xs_5_4 ys_4_4_1 =
  (xs_5_4 ys_4_4_1);;
let rec bonoPos_lh__d3__d2 _lh_bonoPos_arg1_1_0 =
  (match _lh_bonoPos_arg1_1_0 with
    | `State(_lh_bonoPos_State_0_1_0, _lh_bonoPos_State_1_1_0, _lh_bonoPos_State_2_1_0, _lh_bonoPos_State_3_1_0) -> 
      _lh_bonoPos_State_0_1_0
    | _ -> 
      (failwith "error"));;
let rec writeItem_lh__d1__d9 _lh_writeItem_arg1_3 _lh_writeItem_arg2_7 _lh_writeItem_arg3_7 =
  ((_lh_writeItem_arg1_3 _lh_writeItem_arg2_7) _lh_writeItem_arg3_7);;
let rec edgePos_lh__d4__d2 _lh_edgePos_arg1_9 =
  (match _lh_edgePos_arg1_9 with
    | `State(_lh_edgePos_State_0_9, _lh_edgePos_State_1_9, _lh_edgePos_State_2_9, _lh_edgePos_State_3_9) -> 
      _lh_edgePos_State_1_9
    | _ -> 
      (failwith "error"));;
let rec adamPos_lh__d3__d2 _lh_adamPos_arg1_1_1 =
  (match _lh_adamPos_arg1_1_1 with
    | `State(_lh_adamPos_State_0_1_1, _lh_adamPos_State_1_1_1, _lh_adamPos_State_2_1_1, _lh_adamPos_State_3_1_1) -> 
      _lh_adamPos_State_3_1_1
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d2_d5 xs_8_6 ys_1_2_5_6 =
  (xs_8_6 ys_1_2_5_6);;
let rec mappend_lh__d7__d2_d7 xs_1_8 ys_1_8 =
  (xs_1_8 ys_1_8);;
let rec mappend_lh__d7__d2_d1 xs_1_9 ys_1_9 =
  (xs_1_9 ys_1_9);;
let rec mappend_lh__d7__d2_d8 xs_6_5 ys_4_8_2 =
  (xs_6_5 ys_4_8_2);;
let rec writeItem_lh__d1__d1_d0 _lh_writeItem_arg1_5 _lh_writeItem_arg2_9 _lh_writeItem_arg3_9 =
  ((_lh_writeItem_arg1_5 _lh_writeItem_arg2_9) _lh_writeItem_arg3_9);;
let rec mappend_lh__d7__d2_d3 xs_9_2 ys_1_2_6_2 =
  (xs_9_2 ys_1_2_6_2);;
let rec writeItem_lh__d1__d1_d1 _lh_writeItem_arg1_1_1 _lh_writeItem_arg2_2_3 _lh_writeItem_arg3_2_3 =
  ((_lh_writeItem_arg1_1_1 _lh_writeItem_arg2_2_3) _lh_writeItem_arg3_2_3);;
let rec writeState_lh__d1__d2 _lh_writeState_arg1_1 _lh_funcomp_x_2_9 =
  ((fun _lh_funcomp_x_3_0 -> 
    ((fun _lh_funcomp_x_3_1 -> 
      ((fun _lh_funcomp_x_3_2 -> 
        ((fun _lh_funcomp_x_3_3 -> 
          ((fun s_2 -> 
            ((mappend_lh__d7__d2_d2 (let rec t_4_2_8 = (let rec t_4_2_9 = (let rec t_4_3_0 = (let rec t_4_3_1 = (let rec t_4_3_2 = (let rec t_4_3_3 = (let rec t_4_3_4 = (let rec t_4_3_5 = (let rec t_4_3_6 = (let rec t_4_3_7 = (let rec t_4_3_8 = (let rec t_4_3_9 = (let rec t_4_4_0 = (let rec t_4_4_1 = (let rec t_4_4_2 = (let rec t_4_4_3 = (let rec t_4_4_4 = (let rec t_4_4_5 = (let rec t_4_4_6 = (let rec t_4_4_7 = (let rec t_4_4_8 = (let rec t_4_4_9 = (let rec t_4_5_0 = (let rec t_4_5_1 = (let rec t_4_5_2 = (let rec t_4_5_3 = (let rec t_4_5_4 = (let rec t_4_5_5 = (let rec t_4_5_6 = (let rec t_4_5_7 = (let rec t_4_5_8 = (let rec t_4_5_9 = (let rec t_4_6_0 = (let rec t_4_6_1 = (let rec t_4_6_2 = (let rec t_4_6_3 = (let rec t_4_6_4 = (let rec t_4_6_5 = (let rec t_4_6_6 = (let rec t_4_6_7 = (let rec t_4_6_8 = (fun ys_4_9_6 -> 
              ys_4_9_6) in
              (let rec h_4_2_8 = '|' in
                (fun ys_4_9_7 -> 
                  (`LH_C(h_4_2_8, ((mappend_lh__d7__d2_d2 t_4_6_8) ys_4_9_7)))))) in
              (let rec h_4_2_9 = '-' in
                (fun ys_4_9_8 -> 
                  (`LH_C(h_4_2_9, ((mappend_lh__d7__d2_d2 t_4_6_7) ys_4_9_8)))))) in
              (let rec h_4_3_0 = '-' in
                (fun ys_4_9_9 -> 
                  (`LH_C(h_4_3_0, ((mappend_lh__d7__d2_d2 t_4_6_6) ys_4_9_9)))))) in
              (let rec h_4_3_1 = '-' in
                (fun ys_5_0_0 -> 
                  (`LH_C(h_4_3_1, ((mappend_lh__d7__d2_d2 t_4_6_5) ys_5_0_0)))))) in
              (let rec h_4_3_2 = '-' in
                (fun ys_5_0_1 -> 
                  (`LH_C(h_4_3_2, ((mappend_lh__d7__d2_d2 t_4_6_4) ys_5_0_1)))))) in
              (let rec h_4_3_3 = '-' in
                (fun ys_5_0_2 -> 
                  (`LH_C(h_4_3_3, ((mappend_lh__d7__d2_d2 t_4_6_3) ys_5_0_2)))))) in
              (let rec h_4_3_4 = '-' in
                (fun ys_5_0_3 -> 
                  (`LH_C(h_4_3_4, ((mappend_lh__d7__d2_d2 t_4_6_2) ys_5_0_3)))))) in
              (let rec h_4_3_5 = '-' in
                (fun ys_5_0_4 -> 
                  (`LH_C(h_4_3_5, ((mappend_lh__d7__d2_d2 t_4_6_1) ys_5_0_4)))))) in
              (let rec h_4_3_6 = '-' in
                (fun ys_5_0_5 -> 
                  (`LH_C(h_4_3_6, ((mappend_lh__d7__d2_d2 t_4_6_0) ys_5_0_5)))))) in
              (let rec h_4_3_7 = '-' in
                (fun ys_5_0_6 -> 
                  (`LH_C(h_4_3_7, ((mappend_lh__d7__d2_d2 t_4_5_9) ys_5_0_6)))))) in
              (let rec h_4_3_8 = '-' in
                (fun ys_5_0_7 -> 
                  (`LH_C(h_4_3_8, ((mappend_lh__d7__d2_d2 t_4_5_8) ys_5_0_7)))))) in
              (let rec h_4_3_9 = '-' in
                (fun ys_5_0_8 -> 
                  (`LH_C(h_4_3_9, ((mappend_lh__d7__d2_d2 t_4_5_7) ys_5_0_8)))))) in
              (let rec h_4_4_0 = '-' in
                (fun ys_5_0_9 -> 
                  (`LH_C(h_4_4_0, ((mappend_lh__d7__d2_d2 t_4_5_6) ys_5_0_9)))))) in
              (let rec h_4_4_1 = '-' in
                (fun ys_5_1_0 -> 
                  (`LH_C(h_4_4_1, ((mappend_lh__d7__d2_d2 t_4_5_5) ys_5_1_0)))))) in
              (let rec h_4_4_2 = '-' in
                (fun ys_5_1_1 -> 
                  (`LH_C(h_4_4_2, ((mappend_lh__d7__d2_d2 t_4_5_4) ys_5_1_1)))))) in
              (let rec h_4_4_3 = '-' in
                (fun ys_5_1_2 -> 
                  (`LH_C(h_4_4_3, ((mappend_lh__d7__d2_d2 t_4_5_3) ys_5_1_2)))))) in
              (let rec h_4_4_4 = '-' in
                (fun ys_5_1_3 -> 
                  (`LH_C(h_4_4_4, ((mappend_lh__d7__d2_d2 t_4_5_2) ys_5_1_3)))))) in
              (let rec h_4_4_5 = '-' in
                (fun ys_5_1_4 -> 
                  (`LH_C(h_4_4_5, ((mappend_lh__d7__d2_d2 t_4_5_1) ys_5_1_4)))))) in
              (let rec h_4_4_6 = '-' in
                (fun ys_5_1_5 -> 
                  (`LH_C(h_4_4_6, ((mappend_lh__d7__d2_d2 t_4_5_0) ys_5_1_5)))))) in
              (let rec h_4_4_7 = '-' in
                (fun ys_5_1_6 -> 
                  (`LH_C(h_4_4_7, ((mappend_lh__d7__d2_d2 t_4_4_9) ys_5_1_6)))))) in
              (let rec h_4_4_8 = '-' in
                (fun ys_5_1_7 -> 
                  (`LH_C(h_4_4_8, ((mappend_lh__d7__d2_d2 t_4_4_8) ys_5_1_7)))))) in
              (let rec h_4_4_9 = '-' in
                (fun ys_5_1_8 -> 
                  (`LH_C(h_4_4_9, ((mappend_lh__d7__d2_d2 t_4_4_7) ys_5_1_8)))))) in
              (let rec h_4_5_0 = '-' in
                (fun ys_5_1_9 -> 
                  (`LH_C(h_4_5_0, ((mappend_lh__d7__d2_d2 t_4_4_6) ys_5_1_9)))))) in
              (let rec h_4_5_1 = '-' in
                (fun ys_5_2_0 -> 
                  (`LH_C(h_4_5_1, ((mappend_lh__d7__d2_d2 t_4_4_5) ys_5_2_0)))))) in
              (let rec h_4_5_2 = '-' in
                (fun ys_5_2_1 -> 
                  (`LH_C(h_4_5_2, ((mappend_lh__d7__d2_d2 t_4_4_4) ys_5_2_1)))))) in
              (let rec h_4_5_3 = '-' in
                (fun ys_5_2_2 -> 
                  (`LH_C(h_4_5_3, ((mappend_lh__d7__d2_d2 t_4_4_3) ys_5_2_2)))))) in
              (let rec h_4_5_4 = '-' in
                (fun ys_5_2_3 -> 
                  (`LH_C(h_4_5_4, ((mappend_lh__d7__d2_d2 t_4_4_2) ys_5_2_3)))))) in
              (let rec h_4_5_5 = '-' in
                (fun ys_5_2_4 -> 
                  (`LH_C(h_4_5_5, ((mappend_lh__d7__d2_d2 t_4_4_1) ys_5_2_4)))))) in
              (let rec h_4_5_6 = '-' in
                (fun ys_5_2_5 -> 
                  (`LH_C(h_4_5_6, ((mappend_lh__d7__d2_d2 t_4_4_0) ys_5_2_5)))))) in
              (let rec h_4_5_7 = '-' in
                (fun ys_5_2_6 -> 
                  (`LH_C(h_4_5_7, ((mappend_lh__d7__d2_d2 t_4_3_9) ys_5_2_6)))))) in
              (let rec h_4_5_8 = '-' in
                (fun ys_5_2_7 -> 
                  (`LH_C(h_4_5_8, ((mappend_lh__d7__d2_d2 t_4_3_8) ys_5_2_7)))))) in
              (let rec h_4_5_9 = '-' in
                (fun ys_5_2_8 -> 
                  (`LH_C(h_4_5_9, ((mappend_lh__d7__d2_d2 t_4_3_7) ys_5_2_8)))))) in
              (let rec h_4_6_0 = '-' in
                (fun ys_5_2_9 -> 
                  (`LH_C(h_4_6_0, ((mappend_lh__d7__d2_d2 t_4_3_6) ys_5_2_9)))))) in
              (let rec h_4_6_1 = '-' in
                (fun ys_5_3_0 -> 
                  (`LH_C(h_4_6_1, ((mappend_lh__d7__d2_d2 t_4_3_5) ys_5_3_0)))))) in
              (let rec h_4_6_2 = '-' in
                (fun ys_5_3_1 -> 
                  (`LH_C(h_4_6_2, ((mappend_lh__d7__d2_d2 t_4_3_4) ys_5_3_1)))))) in
              (let rec h_4_6_3 = '-' in
                (fun ys_5_3_2 -> 
                  (`LH_C(h_4_6_3, ((mappend_lh__d7__d2_d2 t_4_3_3) ys_5_3_2)))))) in
              (let rec h_4_6_4 = '-' in
                (fun ys_5_3_3 -> 
                  (`LH_C(h_4_6_4, ((mappend_lh__d7__d2_d2 t_4_3_2) ys_5_3_3)))))) in
              (let rec h_4_6_5 = '-' in
                (fun ys_5_3_4 -> 
                  (`LH_C(h_4_6_5, ((mappend_lh__d7__d2_d2 t_4_3_1) ys_5_3_4)))))) in
              (let rec h_4_6_6 = '-' in
                (fun ys_5_3_5 -> 
                  (`LH_C(h_4_6_6, ((mappend_lh__d7__d2_d2 t_4_3_0) ys_5_3_5)))))) in
              (let rec h_4_6_7 = '-' in
                (fun ys_5_3_6 -> 
                  (`LH_C(h_4_6_7, ((mappend_lh__d7__d2_d2 t_4_2_9) ys_5_3_6)))))) in
              (let rec h_4_6_8 = '-' in
                (fun ys_5_3_7 -> 
                  (`LH_C(h_4_6_8, ((mappend_lh__d7__d2_d2 t_4_2_8) ys_5_3_7))))))) s_2)) (((writeItem_lh__d1__d8 (fun _lh_writeItem_arg2_1_2 _lh_writeItem_arg3_1_2 -> 
            (match _lh_writeItem_arg2_1_2 with
              | `LeftBank -> 
                ((mappend_lh__d7__d2_d3 (let rec t_4_6_9 = (let rec t_4_7_0 = (let rec t_4_7_1 = (let rec t_4_7_2 = (let rec t_4_7_3 = (let rec t_4_7_4 = (let rec t_4_7_5 = (let rec t_4_7_6 = (let rec t_4_7_7 = (let rec t_4_7_8 = (let rec t_4_7_9 = (let rec t_4_8_0 = (let rec t_4_8_1 = (let rec t_4_8_2 = (let rec t_4_8_3 = (let rec t_4_8_4 = (let rec t_4_8_5 = (let rec t_4_8_6 = (let rec t_4_8_7 = (let rec t_4_8_8 = (let rec t_4_8_9 = (let rec t_4_9_0 = (let rec t_4_9_1 = (let rec t_4_9_2 = (let rec t_4_9_3 = (let rec t_4_9_4 = (let rec t_4_9_5 = (let rec t_4_9_6 = (let rec t_4_9_7 = (let rec t_4_9_8 = (let rec t_4_9_9 = (let rec t_5_0_0 = (fun ys_5_3_8 -> 
                  ys_5_3_8) in
                  (let rec h_4_6_9 = '|' in
                    (fun ys_5_3_9 -> 
                      (`LH_C(h_4_6_9, ((mappend_lh__d7__d2_d3 t_5_0_0) ys_5_3_9)))))) in
                  (let rec h_4_7_0 = '|' in
                    (fun ys_5_4_0 -> 
                      (`LH_C(h_4_7_0, ((mappend_lh__d7__d2_d3 t_4_9_9) ys_5_4_0)))))) in
                  (let rec h_4_7_1 = ' ' in
                    (fun ys_5_4_1 -> 
                      (`LH_C(h_4_7_1, ((mappend_lh__d7__d2_d3 t_4_9_8) ys_5_4_1)))))) in
                  (let rec h_4_7_2 = ' ' in
                    (fun ys_5_4_2 -> 
                      (`LH_C(h_4_7_2, ((mappend_lh__d7__d2_d3 t_4_9_7) ys_5_4_2)))))) in
                  (let rec h_4_7_3 = ' ' in
                    (fun ys_5_4_3 -> 
                      (`LH_C(h_4_7_3, ((mappend_lh__d7__d2_d3 t_4_9_6) ys_5_4_3)))))) in
                  (let rec h_4_7_4 = ' ' in
                    (fun ys_5_4_4 -> 
                      (`LH_C(h_4_7_4, ((mappend_lh__d7__d2_d3 t_4_9_5) ys_5_4_4)))))) in
                  (let rec h_4_7_5 = ' ' in
                    (fun ys_5_4_5 -> 
                      (`LH_C(h_4_7_5, ((mappend_lh__d7__d2_d3 t_4_9_4) ys_5_4_5)))))) in
                  (let rec h_4_7_6 = ' ' in
                    (fun ys_5_4_6 -> 
                      (`LH_C(h_4_7_6, ((mappend_lh__d7__d2_d3 t_4_9_3) ys_5_4_6)))))) in
                  (let rec h_4_7_7 = ' ' in
                    (fun ys_5_4_7 -> 
                      (`LH_C(h_4_7_7, ((mappend_lh__d7__d2_d3 t_4_9_2) ys_5_4_7)))))) in
                  (let rec h_4_7_8 = ' ' in
                    (fun ys_5_4_8 -> 
                      (`LH_C(h_4_7_8, ((mappend_lh__d7__d2_d3 t_4_9_1) ys_5_4_8)))))) in
                  (let rec h_4_7_9 = ' ' in
                    (fun ys_5_4_9 -> 
                      (`LH_C(h_4_7_9, ((mappend_lh__d7__d2_d3 t_4_9_0) ys_5_4_9)))))) in
                  (let rec h_4_8_0 = ' ' in
                    (fun ys_5_5_0 -> 
                      (`LH_C(h_4_8_0, ((mappend_lh__d7__d2_d3 t_4_8_9) ys_5_5_0)))))) in
                  (let rec h_4_8_1 = ' ' in
                    (fun ys_5_5_1 -> 
                      (`LH_C(h_4_8_1, ((mappend_lh__d7__d2_d3 t_4_8_8) ys_5_5_1)))))) in
                  (let rec h_4_8_2 = ' ' in
                    (fun ys_5_5_2 -> 
                      (`LH_C(h_4_8_2, ((mappend_lh__d7__d2_d3 t_4_8_7) ys_5_5_2)))))) in
                  (let rec h_4_8_3 = ' ' in
                    (fun ys_5_5_3 -> 
                      (`LH_C(h_4_8_3, ((mappend_lh__d7__d2_d3 t_4_8_6) ys_5_5_3)))))) in
                  (let rec h_4_8_4 = ' ' in
                    (fun ys_5_5_4 -> 
                      (`LH_C(h_4_8_4, ((mappend_lh__d7__d2_d3 t_4_8_5) ys_5_5_4)))))) in
                  (let rec h_4_8_5 = ' ' in
                    (fun ys_5_5_5 -> 
                      (`LH_C(h_4_8_5, ((mappend_lh__d7__d2_d3 t_4_8_4) ys_5_5_5)))))) in
                  (let rec h_4_8_6 = ' ' in
                    (fun ys_5_5_6 -> 
                      (`LH_C(h_4_8_6, ((mappend_lh__d7__d2_d3 t_4_8_3) ys_5_5_6)))))) in
                  (let rec h_4_8_7 = ' ' in
                    (fun ys_5_5_7 -> 
                      (`LH_C(h_4_8_7, ((mappend_lh__d7__d2_d3 t_4_8_2) ys_5_5_7)))))) in
                  (let rec h_4_8_8 = ' ' in
                    (fun ys_5_5_8 -> 
                      (`LH_C(h_4_8_8, ((mappend_lh__d7__d2_d3 t_4_8_1) ys_5_5_8)))))) in
                  (let rec h_4_8_9 = ' ' in
                    (fun ys_5_5_9 -> 
                      (`LH_C(h_4_8_9, ((mappend_lh__d7__d2_d3 t_4_8_0) ys_5_5_9)))))) in
                  (let rec h_4_9_0 = ' ' in
                    (fun ys_5_6_0 -> 
                      (`LH_C(h_4_9_0, ((mappend_lh__d7__d2_d3 t_4_7_9) ys_5_6_0)))))) in
                  (let rec h_4_9_1 = '|' in
                    (fun ys_5_6_1 -> 
                      (`LH_C(h_4_9_1, ((mappend_lh__d7__d2_d3 t_4_7_8) ys_5_6_1)))))) in
                  (let rec h_4_9_2 = ' ' in
                    (fun ys_5_6_2 -> 
                      (`LH_C(h_4_9_2, ((mappend_lh__d7__d2_d3 t_4_7_7) ys_5_6_2)))))) in
                  (let rec h_4_9_3 = 'o' in
                    (fun ys_5_6_3 -> 
                      (`LH_C(h_4_9_3, ((mappend_lh__d7__d2_d3 t_4_7_6) ys_5_6_3)))))) in
                  (let rec h_4_9_4 = 'n' in
                    (fun ys_5_6_4 -> 
                      (`LH_C(h_4_9_4, ((mappend_lh__d7__d2_d3 t_4_7_5) ys_5_6_4)))))) in
                  (let rec h_4_9_5 = 'o' in
                    (fun ys_5_6_5 -> 
                      (`LH_C(h_4_9_5, ((mappend_lh__d7__d2_d3 t_4_7_4) ys_5_6_5)))))) in
                  (let rec h_4_9_6 = 'B' in
                    (fun ys_5_6_6 -> 
                      (`LH_C(h_4_9_6, ((mappend_lh__d7__d2_d3 t_4_7_3) ys_5_6_6)))))) in
                  (let rec h_4_9_7 = ' ' in
                    (fun ys_5_6_7 -> 
                      (`LH_C(h_4_9_7, ((mappend_lh__d7__d2_d3 t_4_7_2) ys_5_6_7)))))) in
                  (let rec h_4_9_8 = ' ' in
                    (fun ys_5_6_8 -> 
                      (`LH_C(h_4_9_8, ((mappend_lh__d7__d2_d3 t_4_7_1) ys_5_6_8)))))) in
                  (let rec h_4_9_9 = ' ' in
                    (fun ys_5_6_9 -> 
                      (`LH_C(h_4_9_9, ((mappend_lh__d7__d2_d3 t_4_7_0) ys_5_6_9)))))) in
                  (let rec h_5_0_0 = ' ' in
                    (fun ys_5_7_0 -> 
                      (`LH_C(h_5_0_0, ((mappend_lh__d7__d2_d3 t_4_6_9) ys_5_7_0))))))) _lh_writeItem_arg3_1_2)
              | `RightBank -> 
                ((mappend_lh__d7__d2_d4 (let rec t_5_0_1 = (let rec t_5_0_2 = (let rec t_5_0_3 = (let rec t_5_0_4 = (let rec t_5_0_5 = (let rec t_5_0_6 = (let rec t_5_0_7 = (let rec t_5_0_8 = (let rec t_5_0_9 = (let rec t_5_1_0 = (let rec t_5_1_1 = (let rec t_5_1_2 = (let rec t_5_1_3 = (let rec t_5_1_4 = (let rec t_5_1_5 = (let rec t_5_1_6 = (let rec t_5_1_7 = (let rec t_5_1_8 = (let rec t_5_1_9 = (let rec t_5_2_0 = (let rec t_5_2_1 = (let rec t_5_2_2 = (let rec t_5_2_3 = (let rec t_5_2_4 = (let rec t_5_2_5 = (let rec t_5_2_6 = (let rec t_5_2_7 = (let rec t_5_2_8 = (let rec t_5_2_9 = (let rec t_5_3_0 = (let rec t_5_3_1 = (let rec t_5_3_2 = (let rec t_5_3_3 = (let rec t_5_3_4 = (let rec t_5_3_5 = (let rec t_5_3_6 = (let rec t_5_3_7 = (fun ys_5_7_1 -> 
                  ys_5_7_1) in
                  (let rec h_5_0_1 = '|' in
                    (fun ys_5_7_2 -> 
                      (`LH_C(h_5_0_1, ((mappend_lh__d7__d2_d4 t_5_3_7) ys_5_7_2)))))) in
                  (let rec h_5_0_2 = 'o' in
                    (fun ys_5_7_3 -> 
                      (`LH_C(h_5_0_2, ((mappend_lh__d7__d2_d4 t_5_3_6) ys_5_7_3)))))) in
                  (let rec h_5_0_3 = 'n' in
                    (fun ys_5_7_4 -> 
                      (`LH_C(h_5_0_3, ((mappend_lh__d7__d2_d4 t_5_3_5) ys_5_7_4)))))) in
                  (let rec h_5_0_4 = 'o' in
                    (fun ys_5_7_5 -> 
                      (`LH_C(h_5_0_4, ((mappend_lh__d7__d2_d4 t_5_3_4) ys_5_7_5)))))) in
                  (let rec h_5_0_5 = 'B' in
                    (fun ys_5_7_6 -> 
                      (`LH_C(h_5_0_5, ((mappend_lh__d7__d2_d4 t_5_3_3) ys_5_7_6)))))) in
                  (let rec h_5_0_6 = ' ' in
                    (fun ys_5_7_7 -> 
                      (`LH_C(h_5_0_6, ((mappend_lh__d7__d2_d4 t_5_3_2) ys_5_7_7)))))) in
                  (let rec h_5_0_7 = '|' in
                    (fun ys_5_7_8 -> 
                      (`LH_C(h_5_0_7, ((mappend_lh__d7__d2_d4 t_5_3_1) ys_5_7_8)))))) in
                  (let rec h_5_0_8 = ' ' in
                    (fun ys_5_7_9 -> 
                      (`LH_C(h_5_0_8, ((mappend_lh__d7__d2_d4 t_5_3_0) ys_5_7_9)))))) in
                  (let rec h_5_0_9 = ' ' in
                    (fun ys_5_8_0 -> 
                      (`LH_C(h_5_0_9, ((mappend_lh__d7__d2_d4 t_5_2_9) ys_5_8_0)))))) in
                  (let rec h_5_1_0 = ' ' in
                    (fun ys_5_8_1 -> 
                      (`LH_C(h_5_1_0, ((mappend_lh__d7__d2_d4 t_5_2_8) ys_5_8_1)))))) in
                  (let rec h_5_1_1 = ' ' in
                    (fun ys_5_8_2 -> 
                      (`LH_C(h_5_1_1, ((mappend_lh__d7__d2_d4 t_5_2_7) ys_5_8_2)))))) in
                  (let rec h_5_1_2 = ' ' in
                    (fun ys_5_8_3 -> 
                      (`LH_C(h_5_1_2, ((mappend_lh__d7__d2_d4 t_5_2_6) ys_5_8_3)))))) in
                  (let rec h_5_1_3 = ' ' in
                    (fun ys_5_8_4 -> 
                      (`LH_C(h_5_1_3, ((mappend_lh__d7__d2_d4 t_5_2_5) ys_5_8_4)))))) in
                  (let rec h_5_1_4 = ' ' in
                    (fun ys_5_8_5 -> 
                      (`LH_C(h_5_1_4, ((mappend_lh__d7__d2_d4 t_5_2_4) ys_5_8_5)))))) in
                  (let rec h_5_1_5 = ' ' in
                    (fun ys_5_8_6 -> 
                      (`LH_C(h_5_1_5, ((mappend_lh__d7__d2_d4 t_5_2_3) ys_5_8_6)))))) in
                  (let rec h_5_1_6 = ' ' in
                    (fun ys_5_8_7 -> 
                      (`LH_C(h_5_1_6, ((mappend_lh__d7__d2_d4 t_5_2_2) ys_5_8_7)))))) in
                  (let rec h_5_1_7 = ' ' in
                    (fun ys_5_8_8 -> 
                      (`LH_C(h_5_1_7, ((mappend_lh__d7__d2_d4 t_5_2_1) ys_5_8_8)))))) in
                  (let rec h_5_1_8 = ' ' in
                    (fun ys_5_8_9 -> 
                      (`LH_C(h_5_1_8, ((mappend_lh__d7__d2_d4 t_5_2_0) ys_5_8_9)))))) in
                  (let rec h_5_1_9 = ' ' in
                    (fun ys_5_9_0 -> 
                      (`LH_C(h_5_1_9, ((mappend_lh__d7__d2_d4 t_5_1_9) ys_5_9_0)))))) in
                  (let rec h_5_2_0 = ' ' in
                    (fun ys_5_9_1 -> 
                      (`LH_C(h_5_2_0, ((mappend_lh__d7__d2_d4 t_5_1_8) ys_5_9_1)))))) in
                  (let rec h_5_2_1 = ' ' in
                    (fun ys_5_9_2 -> 
                      (`LH_C(h_5_2_1, ((mappend_lh__d7__d2_d4 t_5_1_7) ys_5_9_2)))))) in
                  (let rec h_5_2_2 = ' ' in
                    (fun ys_5_9_3 -> 
                      (`LH_C(h_5_2_2, ((mappend_lh__d7__d2_d4 t_5_1_6) ys_5_9_3)))))) in
                  (let rec h_5_2_3 = ' ' in
                    (fun ys_5_9_4 -> 
                      (`LH_C(h_5_2_3, ((mappend_lh__d7__d2_d4 t_5_1_5) ys_5_9_4)))))) in
                  (let rec h_5_2_4 = ' ' in
                    (fun ys_5_9_5 -> 
                      (`LH_C(h_5_2_4, ((mappend_lh__d7__d2_d4 t_5_1_4) ys_5_9_5)))))) in
                  (let rec h_5_2_5 = ' ' in
                    (fun ys_5_9_6 -> 
                      (`LH_C(h_5_2_5, ((mappend_lh__d7__d2_d4 t_5_1_3) ys_5_9_6)))))) in
                  (let rec h_5_2_6 = ' ' in
                    (fun ys_5_9_7 -> 
                      (`LH_C(h_5_2_6, ((mappend_lh__d7__d2_d4 t_5_1_2) ys_5_9_7)))))) in
                  (let rec h_5_2_7 = ' ' in
                    (fun ys_5_9_8 -> 
                      (`LH_C(h_5_2_7, ((mappend_lh__d7__d2_d4 t_5_1_1) ys_5_9_8)))))) in
                  (let rec h_5_2_8 = '|' in
                    (fun ys_5_9_9 -> 
                      (`LH_C(h_5_2_8, ((mappend_lh__d7__d2_d4 t_5_1_0) ys_5_9_9)))))) in
                  (let rec h_5_2_9 = ' ' in
                    (fun ys_6_0_0 -> 
                      (`LH_C(h_5_2_9, ((mappend_lh__d7__d2_d4 t_5_0_9) ys_6_0_0)))))) in
                  (let rec h_5_3_0 = ' ' in
                    (fun ys_6_0_1 -> 
                      (`LH_C(h_5_3_0, ((mappend_lh__d7__d2_d4 t_5_0_8) ys_6_0_1)))))) in
                  (let rec h_5_3_1 = ' ' in
                    (fun ys_6_0_2 -> 
                      (`LH_C(h_5_3_1, ((mappend_lh__d7__d2_d4 t_5_0_7) ys_6_0_2)))))) in
                  (let rec h_5_3_2 = ' ' in
                    (fun ys_6_0_3 -> 
                      (`LH_C(h_5_3_2, ((mappend_lh__d7__d2_d4 t_5_0_6) ys_6_0_3)))))) in
                  (let rec h_5_3_3 = ' ' in
                    (fun ys_6_0_4 -> 
                      (`LH_C(h_5_3_3, ((mappend_lh__d7__d2_d4 t_5_0_5) ys_6_0_4)))))) in
                  (let rec h_5_3_4 = ' ' in
                    (fun ys_6_0_5 -> 
                      (`LH_C(h_5_3_4, ((mappend_lh__d7__d2_d4 t_5_0_4) ys_6_0_5)))))) in
                  (let rec h_5_3_5 = ' ' in
                    (fun ys_6_0_6 -> 
                      (`LH_C(h_5_3_5, ((mappend_lh__d7__d2_d4 t_5_0_3) ys_6_0_6)))))) in
                  (let rec h_5_3_6 = ' ' in
                    (fun ys_6_0_7 -> 
                      (`LH_C(h_5_3_6, ((mappend_lh__d7__d2_d4 t_5_0_2) ys_6_0_7)))))) in
                  (let rec h_5_3_7 = ' ' in
                    (fun ys_6_0_8 -> 
                      (`LH_C(h_5_3_7, ((mappend_lh__d7__d2_d4 t_5_0_1) ys_6_0_8))))))) _lh_writeItem_arg3_1_2)
              | _ -> 
                (failwith "error")))) (bonoPos_lh__d3__d2 _lh_writeState_arg1_1)) _lh_funcomp_x_3_3))) (((writeItem_lh__d1__d9 (fun _lh_writeItem_arg2_1_3 _lh_writeItem_arg3_1_3 -> 
          (match _lh_writeItem_arg2_1_3 with
            | `LeftBank -> 
              ((mappend_lh__d7__d2_d5 (let rec t_5_3_8 = (let rec t_5_3_9 = (let rec t_5_4_0 = (let rec t_5_4_1 = (let rec t_5_4_2 = (let rec t_5_4_3 = (let rec t_5_4_4 = (let rec t_5_4_5 = (let rec t_5_4_6 = (let rec t_5_4_7 = (let rec t_5_4_8 = (let rec t_5_4_9 = (let rec t_5_5_0 = (let rec t_5_5_1 = (let rec t_5_5_2 = (let rec t_5_5_3 = (let rec t_5_5_4 = (let rec t_5_5_5 = (let rec t_5_5_6 = (let rec t_5_5_7 = (let rec t_5_5_8 = (let rec t_5_5_9 = (let rec t_5_6_0 = (let rec t_5_6_1 = (let rec t_5_6_2 = (let rec t_5_6_3 = (let rec t_5_6_4 = (let rec t_5_6_5 = (let rec t_5_6_6 = (let rec t_5_6_7 = (let rec t_5_6_8 = (let rec t_5_6_9 = (fun ys_6_0_9 -> 
                ys_6_0_9) in
                (let rec h_5_3_8 = '|' in
                  (fun ys_6_1_0 -> 
                    (`LH_C(h_5_3_8, ((mappend_lh__d7__d2_d5 t_5_6_9) ys_6_1_0)))))) in
                (let rec h_5_3_9 = '|' in
                  (fun ys_6_1_1 -> 
                    (`LH_C(h_5_3_9, ((mappend_lh__d7__d2_d5 t_5_6_8) ys_6_1_1)))))) in
                (let rec h_5_4_0 = ' ' in
                  (fun ys_6_1_2 -> 
                    (`LH_C(h_5_4_0, ((mappend_lh__d7__d2_d5 t_5_6_7) ys_6_1_2)))))) in
                (let rec h_5_4_1 = ' ' in
                  (fun ys_6_1_3 -> 
                    (`LH_C(h_5_4_1, ((mappend_lh__d7__d2_d5 t_5_6_6) ys_6_1_3)))))) in
                (let rec h_5_4_2 = ' ' in
                  (fun ys_6_1_4 -> 
                    (`LH_C(h_5_4_2, ((mappend_lh__d7__d2_d5 t_5_6_5) ys_6_1_4)))))) in
                (let rec h_5_4_3 = ' ' in
                  (fun ys_6_1_5 -> 
                    (`LH_C(h_5_4_3, ((mappend_lh__d7__d2_d5 t_5_6_4) ys_6_1_5)))))) in
                (let rec h_5_4_4 = ' ' in
                  (fun ys_6_1_6 -> 
                    (`LH_C(h_5_4_4, ((mappend_lh__d7__d2_d5 t_5_6_3) ys_6_1_6)))))) in
                (let rec h_5_4_5 = ' ' in
                  (fun ys_6_1_7 -> 
                    (`LH_C(h_5_4_5, ((mappend_lh__d7__d2_d5 t_5_6_2) ys_6_1_7)))))) in
                (let rec h_5_4_6 = ' ' in
                  (fun ys_6_1_8 -> 
                    (`LH_C(h_5_4_6, ((mappend_lh__d7__d2_d5 t_5_6_1) ys_6_1_8)))))) in
                (let rec h_5_4_7 = ' ' in
                  (fun ys_6_1_9 -> 
                    (`LH_C(h_5_4_7, ((mappend_lh__d7__d2_d5 t_5_6_0) ys_6_1_9)))))) in
                (let rec h_5_4_8 = ' ' in
                  (fun ys_6_2_0 -> 
                    (`LH_C(h_5_4_8, ((mappend_lh__d7__d2_d5 t_5_5_9) ys_6_2_0)))))) in
                (let rec h_5_4_9 = ' ' in
                  (fun ys_6_2_1 -> 
                    (`LH_C(h_5_4_9, ((mappend_lh__d7__d2_d5 t_5_5_8) ys_6_2_1)))))) in
                (let rec h_5_5_0 = ' ' in
                  (fun ys_6_2_2 -> 
                    (`LH_C(h_5_5_0, ((mappend_lh__d7__d2_d5 t_5_5_7) ys_6_2_2)))))) in
                (let rec h_5_5_1 = ' ' in
                  (fun ys_6_2_3 -> 
                    (`LH_C(h_5_5_1, ((mappend_lh__d7__d2_d5 t_5_5_6) ys_6_2_3)))))) in
                (let rec h_5_5_2 = ' ' in
                  (fun ys_6_2_4 -> 
                    (`LH_C(h_5_5_2, ((mappend_lh__d7__d2_d5 t_5_5_5) ys_6_2_4)))))) in
                (let rec h_5_5_3 = ' ' in
                  (fun ys_6_2_5 -> 
                    (`LH_C(h_5_5_3, ((mappend_lh__d7__d2_d5 t_5_5_4) ys_6_2_5)))))) in
                (let rec h_5_5_4 = ' ' in
                  (fun ys_6_2_6 -> 
                    (`LH_C(h_5_5_4, ((mappend_lh__d7__d2_d5 t_5_5_3) ys_6_2_6)))))) in
                (let rec h_5_5_5 = ' ' in
                  (fun ys_6_2_7 -> 
                    (`LH_C(h_5_5_5, ((mappend_lh__d7__d2_d5 t_5_5_2) ys_6_2_7)))))) in
                (let rec h_5_5_6 = ' ' in
                  (fun ys_6_2_8 -> 
                    (`LH_C(h_5_5_6, ((mappend_lh__d7__d2_d5 t_5_5_1) ys_6_2_8)))))) in
                (let rec h_5_5_7 = ' ' in
                  (fun ys_6_2_9 -> 
                    (`LH_C(h_5_5_7, ((mappend_lh__d7__d2_d5 t_5_5_0) ys_6_2_9)))))) in
                (let rec h_5_5_8 = ' ' in
                  (fun ys_6_3_0 -> 
                    (`LH_C(h_5_5_8, ((mappend_lh__d7__d2_d5 t_5_4_9) ys_6_3_0)))))) in
                (let rec h_5_5_9 = ' ' in
                  (fun ys_6_3_1 -> 
                    (`LH_C(h_5_5_9, ((mappend_lh__d7__d2_d5 t_5_4_8) ys_6_3_1)))))) in
                (let rec h_5_6_0 = '|' in
                  (fun ys_6_3_2 -> 
                    (`LH_C(h_5_6_0, ((mappend_lh__d7__d2_d5 t_5_4_7) ys_6_3_2)))))) in
                (let rec h_5_6_1 = ' ' in
                  (fun ys_6_3_3 -> 
                    (`LH_C(h_5_6_1, ((mappend_lh__d7__d2_d5 t_5_4_6) ys_6_3_3)))))) in
                (let rec h_5_6_2 = 'e' in
                  (fun ys_6_3_4 -> 
                    (`LH_C(h_5_6_2, ((mappend_lh__d7__d2_d5 t_5_4_5) ys_6_3_4)))))) in
                (let rec h_5_6_3 = 'g' in
                  (fun ys_6_3_5 -> 
                    (`LH_C(h_5_6_3, ((mappend_lh__d7__d2_d5 t_5_4_4) ys_6_3_5)))))) in
                (let rec h_5_6_4 = 'd' in
                  (fun ys_6_3_6 -> 
                    (`LH_C(h_5_6_4, ((mappend_lh__d7__d2_d5 t_5_4_3) ys_6_3_6)))))) in
                (let rec h_5_6_5 = 'E' in
                  (fun ys_6_3_7 -> 
                    (`LH_C(h_5_6_5, ((mappend_lh__d7__d2_d5 t_5_4_2) ys_6_3_7)))))) in
                (let rec h_5_6_6 = ' ' in
                  (fun ys_6_3_8 -> 
                    (`LH_C(h_5_6_6, ((mappend_lh__d7__d2_d5 t_5_4_1) ys_6_3_8)))))) in
                (let rec h_5_6_7 = 'e' in
                  (fun ys_6_3_9 -> 
                    (`LH_C(h_5_6_7, ((mappend_lh__d7__d2_d5 t_5_4_0) ys_6_3_9)))))) in
                (let rec h_5_6_8 = 'h' in
                  (fun ys_6_4_0 -> 
                    (`LH_C(h_5_6_8, ((mappend_lh__d7__d2_d5 t_5_3_9) ys_6_4_0)))))) in
                (let rec h_5_6_9 = 'T' in
                  (fun ys_6_4_1 -> 
                    (`LH_C(h_5_6_9, ((mappend_lh__d7__d2_d5 t_5_3_8) ys_6_4_1))))))) _lh_writeItem_arg3_1_3)
            | `RightBank -> 
              ((mappend_lh__d7__d2_d6 (let rec t_5_7_0 = (let rec t_5_7_1 = (let rec t_5_7_2 = (let rec t_5_7_3 = (let rec t_5_7_4 = (let rec t_5_7_5 = (let rec t_5_7_6 = (let rec t_5_7_7 = (let rec t_5_7_8 = (let rec t_5_7_9 = (let rec t_5_8_0 = (let rec t_5_8_1 = (let rec t_5_8_2 = (let rec t_5_8_3 = (let rec t_5_8_4 = (let rec t_5_8_5 = (let rec t_5_8_6 = (let rec t_5_8_7 = (let rec t_5_8_8 = (let rec t_5_8_9 = (let rec t_5_9_0 = (let rec t_5_9_1 = (let rec t_5_9_2 = (let rec t_5_9_3 = (let rec t_5_9_4 = (let rec t_5_9_5 = (let rec t_5_9_6 = (let rec t_5_9_7 = (let rec t_5_9_8 = (let rec t_5_9_9 = (let rec t_6_0_0 = (let rec t_6_0_1 = (let rec t_6_0_2 = (let rec t_6_0_3 = (let rec t_6_0_4 = (let rec t_6_0_5 = (let rec t_6_0_6 = (let rec t_6_0_7 = (let rec t_6_0_8 = (let rec t_6_0_9 = (let rec t_6_1_0 = (fun ys_6_4_2 -> 
                ys_6_4_2) in
                (let rec h_5_7_0 = '|' in
                  (fun ys_6_4_3 -> 
                    (`LH_C(h_5_7_0, ((mappend_lh__d7__d2_d6 t_6_1_0) ys_6_4_3)))))) in
                (let rec h_5_7_1 = 'e' in
                  (fun ys_6_4_4 -> 
                    (`LH_C(h_5_7_1, ((mappend_lh__d7__d2_d6 t_6_0_9) ys_6_4_4)))))) in
                (let rec h_5_7_2 = 'g' in
                  (fun ys_6_4_5 -> 
                    (`LH_C(h_5_7_2, ((mappend_lh__d7__d2_d6 t_6_0_8) ys_6_4_5)))))) in
                (let rec h_5_7_3 = 'd' in
                  (fun ys_6_4_6 -> 
                    (`LH_C(h_5_7_3, ((mappend_lh__d7__d2_d6 t_6_0_7) ys_6_4_6)))))) in
                (let rec h_5_7_4 = 'E' in
                  (fun ys_6_4_7 -> 
                    (`LH_C(h_5_7_4, ((mappend_lh__d7__d2_d6 t_6_0_6) ys_6_4_7)))))) in
                (let rec h_5_7_5 = ' ' in
                  (fun ys_6_4_8 -> 
                    (`LH_C(h_5_7_5, ((mappend_lh__d7__d2_d6 t_6_0_5) ys_6_4_8)))))) in
                (let rec h_5_7_6 = 'e' in
                  (fun ys_6_4_9 -> 
                    (`LH_C(h_5_7_6, ((mappend_lh__d7__d2_d6 t_6_0_4) ys_6_4_9)))))) in
                (let rec h_5_7_7 = 'h' in
                  (fun ys_6_5_0 -> 
                    (`LH_C(h_5_7_7, ((mappend_lh__d7__d2_d6 t_6_0_3) ys_6_5_0)))))) in
                (let rec h_5_7_8 = 'T' in
                  (fun ys_6_5_1 -> 
                    (`LH_C(h_5_7_8, ((mappend_lh__d7__d2_d6 t_6_0_2) ys_6_5_1)))))) in
                (let rec h_5_7_9 = ' ' in
                  (fun ys_6_5_2 -> 
                    (`LH_C(h_5_7_9, ((mappend_lh__d7__d2_d6 t_6_0_1) ys_6_5_2)))))) in
                (let rec h_5_8_0 = '|' in
                  (fun ys_6_5_3 -> 
                    (`LH_C(h_5_8_0, ((mappend_lh__d7__d2_d6 t_6_0_0) ys_6_5_3)))))) in
                (let rec h_5_8_1 = ' ' in
                  (fun ys_6_5_4 -> 
                    (`LH_C(h_5_8_1, ((mappend_lh__d7__d2_d6 t_5_9_9) ys_6_5_4)))))) in
                (let rec h_5_8_2 = ' ' in
                  (fun ys_6_5_5 -> 
                    (`LH_C(h_5_8_2, ((mappend_lh__d7__d2_d6 t_5_9_8) ys_6_5_5)))))) in
                (let rec h_5_8_3 = ' ' in
                  (fun ys_6_5_6 -> 
                    (`LH_C(h_5_8_3, ((mappend_lh__d7__d2_d6 t_5_9_7) ys_6_5_6)))))) in
                (let rec h_5_8_4 = ' ' in
                  (fun ys_6_5_7 -> 
                    (`LH_C(h_5_8_4, ((mappend_lh__d7__d2_d6 t_5_9_6) ys_6_5_7)))))) in
                (let rec h_5_8_5 = ' ' in
                  (fun ys_6_5_8 -> 
                    (`LH_C(h_5_8_5, ((mappend_lh__d7__d2_d6 t_5_9_5) ys_6_5_8)))))) in
                (let rec h_5_8_6 = ' ' in
                  (fun ys_6_5_9 -> 
                    (`LH_C(h_5_8_6, ((mappend_lh__d7__d2_d6 t_5_9_4) ys_6_5_9)))))) in
                (let rec h_5_8_7 = ' ' in
                  (fun ys_6_6_0 -> 
                    (`LH_C(h_5_8_7, ((mappend_lh__d7__d2_d6 t_5_9_3) ys_6_6_0)))))) in
                (let rec h_5_8_8 = ' ' in
                  (fun ys_6_6_1 -> 
                    (`LH_C(h_5_8_8, ((mappend_lh__d7__d2_d6 t_5_9_2) ys_6_6_1)))))) in
                (let rec h_5_8_9 = ' ' in
                  (fun ys_6_6_2 -> 
                    (`LH_C(h_5_8_9, ((mappend_lh__d7__d2_d6 t_5_9_1) ys_6_6_2)))))) in
                (let rec h_5_9_0 = ' ' in
                  (fun ys_6_6_3 -> 
                    (`LH_C(h_5_9_0, ((mappend_lh__d7__d2_d6 t_5_9_0) ys_6_6_3)))))) in
                (let rec h_5_9_1 = ' ' in
                  (fun ys_6_6_4 -> 
                    (`LH_C(h_5_9_1, ((mappend_lh__d7__d2_d6 t_5_8_9) ys_6_6_4)))))) in
                (let rec h_5_9_2 = ' ' in
                  (fun ys_6_6_5 -> 
                    (`LH_C(h_5_9_2, ((mappend_lh__d7__d2_d6 t_5_8_8) ys_6_6_5)))))) in
                (let rec h_5_9_3 = ' ' in
                  (fun ys_6_6_6 -> 
                    (`LH_C(h_5_9_3, ((mappend_lh__d7__d2_d6 t_5_8_7) ys_6_6_6)))))) in
                (let rec h_5_9_4 = ' ' in
                  (fun ys_6_6_7 -> 
                    (`LH_C(h_5_9_4, ((mappend_lh__d7__d2_d6 t_5_8_6) ys_6_6_7)))))) in
                (let rec h_5_9_5 = ' ' in
                  (fun ys_6_6_8 -> 
                    (`LH_C(h_5_9_5, ((mappend_lh__d7__d2_d6 t_5_8_5) ys_6_6_8)))))) in
                (let rec h_5_9_6 = ' ' in
                  (fun ys_6_6_9 -> 
                    (`LH_C(h_5_9_6, ((mappend_lh__d7__d2_d6 t_5_8_4) ys_6_6_9)))))) in
                (let rec h_5_9_7 = ' ' in
                  (fun ys_6_7_0 -> 
                    (`LH_C(h_5_9_7, ((mappend_lh__d7__d2_d6 t_5_8_3) ys_6_7_0)))))) in
                (let rec h_5_9_8 = ' ' in
                  (fun ys_6_7_1 -> 
                    (`LH_C(h_5_9_8, ((mappend_lh__d7__d2_d6 t_5_8_2) ys_6_7_1)))))) in
                (let rec h_5_9_9 = ' ' in
                  (fun ys_6_7_2 -> 
                    (`LH_C(h_5_9_9, ((mappend_lh__d7__d2_d6 t_5_8_1) ys_6_7_2)))))) in
                (let rec h_6_0_0 = ' ' in
                  (fun ys_6_7_3 -> 
                    (`LH_C(h_6_0_0, ((mappend_lh__d7__d2_d6 t_5_8_0) ys_6_7_3)))))) in
                (let rec h_6_0_1 = '|' in
                  (fun ys_6_7_4 -> 
                    (`LH_C(h_6_0_1, ((mappend_lh__d7__d2_d6 t_5_7_9) ys_6_7_4)))))) in
                (let rec h_6_0_2 = ' ' in
                  (fun ys_6_7_5 -> 
                    (`LH_C(h_6_0_2, ((mappend_lh__d7__d2_d6 t_5_7_8) ys_6_7_5)))))) in
                (let rec h_6_0_3 = ' ' in
                  (fun ys_6_7_6 -> 
                    (`LH_C(h_6_0_3, ((mappend_lh__d7__d2_d6 t_5_7_7) ys_6_7_6)))))) in
                (let rec h_6_0_4 = ' ' in
                  (fun ys_6_7_7 -> 
                    (`LH_C(h_6_0_4, ((mappend_lh__d7__d2_d6 t_5_7_6) ys_6_7_7)))))) in
                (let rec h_6_0_5 = ' ' in
                  (fun ys_6_7_8 -> 
                    (`LH_C(h_6_0_5, ((mappend_lh__d7__d2_d6 t_5_7_5) ys_6_7_8)))))) in
                (let rec h_6_0_6 = ' ' in
                  (fun ys_6_7_9 -> 
                    (`LH_C(h_6_0_6, ((mappend_lh__d7__d2_d6 t_5_7_4) ys_6_7_9)))))) in
                (let rec h_6_0_7 = ' ' in
                  (fun ys_6_8_0 -> 
                    (`LH_C(h_6_0_7, ((mappend_lh__d7__d2_d6 t_5_7_3) ys_6_8_0)))))) in
                (let rec h_6_0_8 = ' ' in
                  (fun ys_6_8_1 -> 
                    (`LH_C(h_6_0_8, ((mappend_lh__d7__d2_d6 t_5_7_2) ys_6_8_1)))))) in
                (let rec h_6_0_9 = ' ' in
                  (fun ys_6_8_2 -> 
                    (`LH_C(h_6_0_9, ((mappend_lh__d7__d2_d6 t_5_7_1) ys_6_8_2)))))) in
                (let rec h_6_1_0 = ' ' in
                  (fun ys_6_8_3 -> 
                    (`LH_C(h_6_1_0, ((mappend_lh__d7__d2_d6 t_5_7_0) ys_6_8_3))))))) _lh_writeItem_arg3_1_3)
            | _ -> 
              (failwith "error")))) (edgePos_lh__d4__d2 _lh_writeState_arg1_1)) _lh_funcomp_x_3_2))) (((writeItem_lh__d1__d1_d0 (fun _lh_writeItem_arg2_1_4 _lh_writeItem_arg3_1_4 -> 
        (match _lh_writeItem_arg2_1_4 with
          | `LeftBank -> 
            ((mappend_lh__d7__d2_d7 (let rec t_6_1_1 = (let rec t_6_1_2 = (let rec t_6_1_3 = (let rec t_6_1_4 = (let rec t_6_1_5 = (let rec t_6_1_6 = (let rec t_6_1_7 = (let rec t_6_1_8 = (let rec t_6_1_9 = (let rec t_6_2_0 = (let rec t_6_2_1 = (let rec t_6_2_2 = (let rec t_6_2_3 = (let rec t_6_2_4 = (let rec t_6_2_5 = (let rec t_6_2_6 = (let rec t_6_2_7 = (let rec t_6_2_8 = (let rec t_6_2_9 = (let rec t_6_3_0 = (let rec t_6_3_1 = (let rec t_6_3_2 = (let rec t_6_3_3 = (let rec t_6_3_4 = (let rec t_6_3_5 = (let rec t_6_3_6 = (let rec t_6_3_7 = (let rec t_6_3_8 = (let rec t_6_3_9 = (let rec t_6_4_0 = (let rec t_6_4_1 = (let rec t_6_4_2 = (fun ys_6_8_4 -> 
              ys_6_8_4) in
              (let rec h_6_1_1 = '|' in
                (fun ys_6_8_5 -> 
                  (`LH_C(h_6_1_1, ((mappend_lh__d7__d2_d7 t_6_4_2) ys_6_8_5)))))) in
              (let rec h_6_1_2 = '|' in
                (fun ys_6_8_6 -> 
                  (`LH_C(h_6_1_2, ((mappend_lh__d7__d2_d7 t_6_4_1) ys_6_8_6)))))) in
              (let rec h_6_1_3 = ' ' in
                (fun ys_6_8_7 -> 
                  (`LH_C(h_6_1_3, ((mappend_lh__d7__d2_d7 t_6_4_0) ys_6_8_7)))))) in
              (let rec h_6_1_4 = ' ' in
                (fun ys_6_8_8 -> 
                  (`LH_C(h_6_1_4, ((mappend_lh__d7__d2_d7 t_6_3_9) ys_6_8_8)))))) in
              (let rec h_6_1_5 = ' ' in
                (fun ys_6_8_9 -> 
                  (`LH_C(h_6_1_5, ((mappend_lh__d7__d2_d7 t_6_3_8) ys_6_8_9)))))) in
              (let rec h_6_1_6 = ' ' in
                (fun ys_6_9_0 -> 
                  (`LH_C(h_6_1_6, ((mappend_lh__d7__d2_d7 t_6_3_7) ys_6_9_0)))))) in
              (let rec h_6_1_7 = ' ' in
                (fun ys_6_9_1 -> 
                  (`LH_C(h_6_1_7, ((mappend_lh__d7__d2_d7 t_6_3_6) ys_6_9_1)))))) in
              (let rec h_6_1_8 = ' ' in
                (fun ys_6_9_2 -> 
                  (`LH_C(h_6_1_8, ((mappend_lh__d7__d2_d7 t_6_3_5) ys_6_9_2)))))) in
              (let rec h_6_1_9 = ' ' in
                (fun ys_6_9_3 -> 
                  (`LH_C(h_6_1_9, ((mappend_lh__d7__d2_d7 t_6_3_4) ys_6_9_3)))))) in
              (let rec h_6_2_0 = ' ' in
                (fun ys_6_9_4 -> 
                  (`LH_C(h_6_2_0, ((mappend_lh__d7__d2_d7 t_6_3_3) ys_6_9_4)))))) in
              (let rec h_6_2_1 = ' ' in
                (fun ys_6_9_5 -> 
                  (`LH_C(h_6_2_1, ((mappend_lh__d7__d2_d7 t_6_3_2) ys_6_9_5)))))) in
              (let rec h_6_2_2 = ' ' in
                (fun ys_6_9_6 -> 
                  (`LH_C(h_6_2_2, ((mappend_lh__d7__d2_d7 t_6_3_1) ys_6_9_6)))))) in
              (let rec h_6_2_3 = ' ' in
                (fun ys_6_9_7 -> 
                  (`LH_C(h_6_2_3, ((mappend_lh__d7__d2_d7 t_6_3_0) ys_6_9_7)))))) in
              (let rec h_6_2_4 = ' ' in
                (fun ys_6_9_8 -> 
                  (`LH_C(h_6_2_4, ((mappend_lh__d7__d2_d7 t_6_2_9) ys_6_9_8)))))) in
              (let rec h_6_2_5 = ' ' in
                (fun ys_6_9_9 -> 
                  (`LH_C(h_6_2_5, ((mappend_lh__d7__d2_d7 t_6_2_8) ys_6_9_9)))))) in
              (let rec h_6_2_6 = ' ' in
                (fun ys_7_0_0 -> 
                  (`LH_C(h_6_2_6, ((mappend_lh__d7__d2_d7 t_6_2_7) ys_7_0_0)))))) in
              (let rec h_6_2_7 = ' ' in
                (fun ys_7_0_1 -> 
                  (`LH_C(h_6_2_7, ((mappend_lh__d7__d2_d7 t_6_2_6) ys_7_0_1)))))) in
              (let rec h_6_2_8 = ' ' in
                (fun ys_7_0_2 -> 
                  (`LH_C(h_6_2_8, ((mappend_lh__d7__d2_d7 t_6_2_5) ys_7_0_2)))))) in
              (let rec h_6_2_9 = ' ' in
                (fun ys_7_0_3 -> 
                  (`LH_C(h_6_2_9, ((mappend_lh__d7__d2_d7 t_6_2_4) ys_7_0_3)))))) in
              (let rec h_6_3_0 = ' ' in
                (fun ys_7_0_4 -> 
                  (`LH_C(h_6_3_0, ((mappend_lh__d7__d2_d7 t_6_2_3) ys_7_0_4)))))) in
              (let rec h_6_3_1 = ' ' in
                (fun ys_7_0_5 -> 
                  (`LH_C(h_6_3_1, ((mappend_lh__d7__d2_d7 t_6_2_2) ys_7_0_5)))))) in
              (let rec h_6_3_2 = ' ' in
                (fun ys_7_0_6 -> 
                  (`LH_C(h_6_3_2, ((mappend_lh__d7__d2_d7 t_6_2_1) ys_7_0_6)))))) in
              (let rec h_6_3_3 = '|' in
                (fun ys_7_0_7 -> 
                  (`LH_C(h_6_3_3, ((mappend_lh__d7__d2_d7 t_6_2_0) ys_7_0_7)))))) in
              (let rec h_6_3_4 = ' ' in
                (fun ys_7_0_8 -> 
                  (`LH_C(h_6_3_4, ((mappend_lh__d7__d2_d7 t_6_1_9) ys_7_0_8)))))) in
              (let rec h_6_3_5 = 'y' in
                (fun ys_7_0_9 -> 
                  (`LH_C(h_6_3_5, ((mappend_lh__d7__d2_d7 t_6_1_8) ys_7_0_9)))))) in
              (let rec h_6_3_6 = 'r' in
                (fun ys_7_1_0 -> 
                  (`LH_C(h_6_3_6, ((mappend_lh__d7__d2_d7 t_6_1_7) ys_7_1_0)))))) in
              (let rec h_6_3_7 = 'r' in
                (fun ys_7_1_1 -> 
                  (`LH_C(h_6_3_7, ((mappend_lh__d7__d2_d7 t_6_1_6) ys_7_1_1)))))) in
              (let rec h_6_3_8 = 'a' in
                (fun ys_7_1_2 -> 
                  (`LH_C(h_6_3_8, ((mappend_lh__d7__d2_d7 t_6_1_5) ys_7_1_2)))))) in
              (let rec h_6_3_9 = 'L' in
                (fun ys_7_1_3 -> 
                  (`LH_C(h_6_3_9, ((mappend_lh__d7__d2_d7 t_6_1_4) ys_7_1_3)))))) in
              (let rec h_6_4_0 = ' ' in
                (fun ys_7_1_4 -> 
                  (`LH_C(h_6_4_0, ((mappend_lh__d7__d2_d7 t_6_1_3) ys_7_1_4)))))) in
              (let rec h_6_4_1 = ' ' in
                (fun ys_7_1_5 -> 
                  (`LH_C(h_6_4_1, ((mappend_lh__d7__d2_d7 t_6_1_2) ys_7_1_5)))))) in
              (let rec h_6_4_2 = ' ' in
                (fun ys_7_1_6 -> 
                  (`LH_C(h_6_4_2, ((mappend_lh__d7__d2_d7 t_6_1_1) ys_7_1_6))))))) _lh_writeItem_arg3_1_4)
          | `RightBank -> 
            ((mappend_lh__d7__d2_d8 (let rec t_6_4_3 = (let rec t_6_4_4 = (let rec t_6_4_5 = (let rec t_6_4_6 = (let rec t_6_4_7 = (let rec t_6_4_8 = (let rec t_6_4_9 = (let rec t_6_5_0 = (let rec t_6_5_1 = (let rec t_6_5_2 = (let rec t_6_5_3 = (let rec t_6_5_4 = (let rec t_6_5_5 = (let rec t_6_5_6 = (let rec t_6_5_7 = (let rec t_6_5_8 = (let rec t_6_5_9 = (let rec t_6_6_0 = (let rec t_6_6_1 = (let rec t_6_6_2 = (let rec t_6_6_3 = (let rec t_6_6_4 = (let rec t_6_6_5 = (let rec t_6_6_6 = (let rec t_6_6_7 = (let rec t_6_6_8 = (let rec t_6_6_9 = (let rec t_6_7_0 = (let rec t_6_7_1 = (let rec t_6_7_2 = (let rec t_6_7_3 = (let rec t_6_7_4 = (let rec t_6_7_5 = (let rec t_6_7_6 = (let rec t_6_7_7 = (let rec t_6_7_8 = (let rec t_6_7_9 = (let rec t_6_8_0 = (fun ys_7_1_7 -> 
              ys_7_1_7) in
              (let rec h_6_4_3 = '|' in
                (fun ys_7_1_8 -> 
                  (`LH_C(h_6_4_3, ((mappend_lh__d7__d2_d8 t_6_8_0) ys_7_1_8)))))) in
              (let rec h_6_4_4 = 'y' in
                (fun ys_7_1_9 -> 
                  (`LH_C(h_6_4_4, ((mappend_lh__d7__d2_d8 t_6_7_9) ys_7_1_9)))))) in
              (let rec h_6_4_5 = 'r' in
                (fun ys_7_2_0 -> 
                  (`LH_C(h_6_4_5, ((mappend_lh__d7__d2_d8 t_6_7_8) ys_7_2_0)))))) in
              (let rec h_6_4_6 = 'r' in
                (fun ys_7_2_1 -> 
                  (`LH_C(h_6_4_6, ((mappend_lh__d7__d2_d8 t_6_7_7) ys_7_2_1)))))) in
              (let rec h_6_4_7 = 'a' in
                (fun ys_7_2_2 -> 
                  (`LH_C(h_6_4_7, ((mappend_lh__d7__d2_d8 t_6_7_6) ys_7_2_2)))))) in
              (let rec h_6_4_8 = 'L' in
                (fun ys_7_2_3 -> 
                  (`LH_C(h_6_4_8, ((mappend_lh__d7__d2_d8 t_6_7_5) ys_7_2_3)))))) in
              (let rec h_6_4_9 = ' ' in
                (fun ys_7_2_4 -> 
                  (`LH_C(h_6_4_9, ((mappend_lh__d7__d2_d8 t_6_7_4) ys_7_2_4)))))) in
              (let rec h_6_5_0 = '|' in
                (fun ys_7_2_5 -> 
                  (`LH_C(h_6_5_0, ((mappend_lh__d7__d2_d8 t_6_7_3) ys_7_2_5)))))) in
              (let rec h_6_5_1 = ' ' in
                (fun ys_7_2_6 -> 
                  (`LH_C(h_6_5_1, ((mappend_lh__d7__d2_d8 t_6_7_2) ys_7_2_6)))))) in
              (let rec h_6_5_2 = ' ' in
                (fun ys_7_2_7 -> 
                  (`LH_C(h_6_5_2, ((mappend_lh__d7__d2_d8 t_6_7_1) ys_7_2_7)))))) in
              (let rec h_6_5_3 = ' ' in
                (fun ys_7_2_8 -> 
                  (`LH_C(h_6_5_3, ((mappend_lh__d7__d2_d8 t_6_7_0) ys_7_2_8)))))) in
              (let rec h_6_5_4 = ' ' in
                (fun ys_7_2_9 -> 
                  (`LH_C(h_6_5_4, ((mappend_lh__d7__d2_d8 t_6_6_9) ys_7_2_9)))))) in
              (let rec h_6_5_5 = ' ' in
                (fun ys_7_3_0 -> 
                  (`LH_C(h_6_5_5, ((mappend_lh__d7__d2_d8 t_6_6_8) ys_7_3_0)))))) in
              (let rec h_6_5_6 = ' ' in
                (fun ys_7_3_1 -> 
                  (`LH_C(h_6_5_6, ((mappend_lh__d7__d2_d8 t_6_6_7) ys_7_3_1)))))) in
              (let rec h_6_5_7 = ' ' in
                (fun ys_7_3_2 -> 
                  (`LH_C(h_6_5_7, ((mappend_lh__d7__d2_d8 t_6_6_6) ys_7_3_2)))))) in
              (let rec h_6_5_8 = ' ' in
                (fun ys_7_3_3 -> 
                  (`LH_C(h_6_5_8, ((mappend_lh__d7__d2_d8 t_6_6_5) ys_7_3_3)))))) in
              (let rec h_6_5_9 = ' ' in
                (fun ys_7_3_4 -> 
                  (`LH_C(h_6_5_9, ((mappend_lh__d7__d2_d8 t_6_6_4) ys_7_3_4)))))) in
              (let rec h_6_6_0 = ' ' in
                (fun ys_7_3_5 -> 
                  (`LH_C(h_6_6_0, ((mappend_lh__d7__d2_d8 t_6_6_3) ys_7_3_5)))))) in
              (let rec h_6_6_1 = ' ' in
                (fun ys_7_3_6 -> 
                  (`LH_C(h_6_6_1, ((mappend_lh__d7__d2_d8 t_6_6_2) ys_7_3_6)))))) in
              (let rec h_6_6_2 = ' ' in
                (fun ys_7_3_7 -> 
                  (`LH_C(h_6_6_2, ((mappend_lh__d7__d2_d8 t_6_6_1) ys_7_3_7)))))) in
              (let rec h_6_6_3 = ' ' in
                (fun ys_7_3_8 -> 
                  (`LH_C(h_6_6_3, ((mappend_lh__d7__d2_d8 t_6_6_0) ys_7_3_8)))))) in
              (let rec h_6_6_4 = ' ' in
                (fun ys_7_3_9 -> 
                  (`LH_C(h_6_6_4, ((mappend_lh__d7__d2_d8 t_6_5_9) ys_7_3_9)))))) in
              (let rec h_6_6_5 = ' ' in
                (fun ys_7_4_0 -> 
                  (`LH_C(h_6_6_5, ((mappend_lh__d7__d2_d8 t_6_5_8) ys_7_4_0)))))) in
              (let rec h_6_6_6 = ' ' in
                (fun ys_7_4_1 -> 
                  (`LH_C(h_6_6_6, ((mappend_lh__d7__d2_d8 t_6_5_7) ys_7_4_1)))))) in
              (let rec h_6_6_7 = ' ' in
                (fun ys_7_4_2 -> 
                  (`LH_C(h_6_6_7, ((mappend_lh__d7__d2_d8 t_6_5_6) ys_7_4_2)))))) in
              (let rec h_6_6_8 = ' ' in
                (fun ys_7_4_3 -> 
                  (`LH_C(h_6_6_8, ((mappend_lh__d7__d2_d8 t_6_5_5) ys_7_4_3)))))) in
              (let rec h_6_6_9 = ' ' in
                (fun ys_7_4_4 -> 
                  (`LH_C(h_6_6_9, ((mappend_lh__d7__d2_d8 t_6_5_4) ys_7_4_4)))))) in
              (let rec h_6_7_0 = ' ' in
                (fun ys_7_4_5 -> 
                  (`LH_C(h_6_7_0, ((mappend_lh__d7__d2_d8 t_6_5_3) ys_7_4_5)))))) in
              (let rec h_6_7_1 = '|' in
                (fun ys_7_4_6 -> 
                  (`LH_C(h_6_7_1, ((mappend_lh__d7__d2_d8 t_6_5_2) ys_7_4_6)))))) in
              (let rec h_6_7_2 = ' ' in
                (fun ys_7_4_7 -> 
                  (`LH_C(h_6_7_2, ((mappend_lh__d7__d2_d8 t_6_5_1) ys_7_4_7)))))) in
              (let rec h_6_7_3 = ' ' in
                (fun ys_7_4_8 -> 
                  (`LH_C(h_6_7_3, ((mappend_lh__d7__d2_d8 t_6_5_0) ys_7_4_8)))))) in
              (let rec h_6_7_4 = ' ' in
                (fun ys_7_4_9 -> 
                  (`LH_C(h_6_7_4, ((mappend_lh__d7__d2_d8 t_6_4_9) ys_7_4_9)))))) in
              (let rec h_6_7_5 = ' ' in
                (fun ys_7_5_0 -> 
                  (`LH_C(h_6_7_5, ((mappend_lh__d7__d2_d8 t_6_4_8) ys_7_5_0)))))) in
              (let rec h_6_7_6 = ' ' in
                (fun ys_7_5_1 -> 
                  (`LH_C(h_6_7_6, ((mappend_lh__d7__d2_d8 t_6_4_7) ys_7_5_1)))))) in
              (let rec h_6_7_7 = ' ' in
                (fun ys_7_5_2 -> 
                  (`LH_C(h_6_7_7, ((mappend_lh__d7__d2_d8 t_6_4_6) ys_7_5_2)))))) in
              (let rec h_6_7_8 = ' ' in
                (fun ys_7_5_3 -> 
                  (`LH_C(h_6_7_8, ((mappend_lh__d7__d2_d8 t_6_4_5) ys_7_5_3)))))) in
              (let rec h_6_7_9 = ' ' in
                (fun ys_7_5_4 -> 
                  (`LH_C(h_6_7_9, ((mappend_lh__d7__d2_d8 t_6_4_4) ys_7_5_4)))))) in
              (let rec h_6_8_0 = ' ' in
                (fun ys_7_5_5 -> 
                  (`LH_C(h_6_8_0, ((mappend_lh__d7__d2_d8 t_6_4_3) ys_7_5_5))))))) _lh_writeItem_arg3_1_4)
          | _ -> 
            (failwith "error")))) (larryPos_lh__d3__d2 _lh_writeState_arg1_1)) _lh_funcomp_x_3_1))) (((writeItem_lh__d1__d1_d1 (fun _lh_writeItem_arg2_1_5 _lh_writeItem_arg3_1_5 -> 
      (match _lh_writeItem_arg2_1_5 with
        | `LeftBank -> 
          ((mappend_lh__d7__d2_d9 (let rec t_6_8_1 = (let rec t_6_8_2 = (let rec t_6_8_3 = (let rec t_6_8_4 = (let rec t_6_8_5 = (let rec t_6_8_6 = (let rec t_6_8_7 = (let rec t_6_8_8 = (let rec t_6_8_9 = (let rec t_6_9_0 = (let rec t_6_9_1 = (let rec t_6_9_2 = (let rec t_6_9_3 = (let rec t_6_9_4 = (let rec t_6_9_5 = (let rec t_6_9_6 = (let rec t_6_9_7 = (let rec t_6_9_8 = (let rec t_6_9_9 = (let rec t_7_0_0 = (let rec t_7_0_1 = (let rec t_7_0_2 = (let rec t_7_0_3 = (let rec t_7_0_4 = (let rec t_7_0_5 = (let rec t_7_0_6 = (let rec t_7_0_7 = (let rec t_7_0_8 = (let rec t_7_0_9 = (let rec t_7_1_0 = (let rec t_7_1_1 = (let rec t_7_1_2 = (fun ys_7_5_6 -> 
            ys_7_5_6) in
            (let rec h_6_8_1 = '|' in
              (fun ys_7_5_7 -> 
                (`LH_C(h_6_8_1, ((mappend_lh__d7__d2_d9 t_7_1_2) ys_7_5_7)))))) in
            (let rec h_6_8_2 = '|' in
              (fun ys_7_5_8 -> 
                (`LH_C(h_6_8_2, ((mappend_lh__d7__d2_d9 t_7_1_1) ys_7_5_8)))))) in
            (let rec h_6_8_3 = ' ' in
              (fun ys_7_5_9 -> 
                (`LH_C(h_6_8_3, ((mappend_lh__d7__d2_d9 t_7_1_0) ys_7_5_9)))))) in
            (let rec h_6_8_4 = ' ' in
              (fun ys_7_6_0 -> 
                (`LH_C(h_6_8_4, ((mappend_lh__d7__d2_d9 t_7_0_9) ys_7_6_0)))))) in
            (let rec h_6_8_5 = ' ' in
              (fun ys_7_6_1 -> 
                (`LH_C(h_6_8_5, ((mappend_lh__d7__d2_d9 t_7_0_8) ys_7_6_1)))))) in
            (let rec h_6_8_6 = ' ' in
              (fun ys_7_6_2 -> 
                (`LH_C(h_6_8_6, ((mappend_lh__d7__d2_d9 t_7_0_7) ys_7_6_2)))))) in
            (let rec h_6_8_7 = ' ' in
              (fun ys_7_6_3 -> 
                (`LH_C(h_6_8_7, ((mappend_lh__d7__d2_d9 t_7_0_6) ys_7_6_3)))))) in
            (let rec h_6_8_8 = ' ' in
              (fun ys_7_6_4 -> 
                (`LH_C(h_6_8_8, ((mappend_lh__d7__d2_d9 t_7_0_5) ys_7_6_4)))))) in
            (let rec h_6_8_9 = ' ' in
              (fun ys_7_6_5 -> 
                (`LH_C(h_6_8_9, ((mappend_lh__d7__d2_d9 t_7_0_4) ys_7_6_5)))))) in
            (let rec h_6_9_0 = ' ' in
              (fun ys_7_6_6 -> 
                (`LH_C(h_6_9_0, ((mappend_lh__d7__d2_d9 t_7_0_3) ys_7_6_6)))))) in
            (let rec h_6_9_1 = ' ' in
              (fun ys_7_6_7 -> 
                (`LH_C(h_6_9_1, ((mappend_lh__d7__d2_d9 t_7_0_2) ys_7_6_7)))))) in
            (let rec h_6_9_2 = ' ' in
              (fun ys_7_6_8 -> 
                (`LH_C(h_6_9_2, ((mappend_lh__d7__d2_d9 t_7_0_1) ys_7_6_8)))))) in
            (let rec h_6_9_3 = ' ' in
              (fun ys_7_6_9 -> 
                (`LH_C(h_6_9_3, ((mappend_lh__d7__d2_d9 t_7_0_0) ys_7_6_9)))))) in
            (let rec h_6_9_4 = ' ' in
              (fun ys_7_7_0 -> 
                (`LH_C(h_6_9_4, ((mappend_lh__d7__d2_d9 t_6_9_9) ys_7_7_0)))))) in
            (let rec h_6_9_5 = ' ' in
              (fun ys_7_7_1 -> 
                (`LH_C(h_6_9_5, ((mappend_lh__d7__d2_d9 t_6_9_8) ys_7_7_1)))))) in
            (let rec h_6_9_6 = ' ' in
              (fun ys_7_7_2 -> 
                (`LH_C(h_6_9_6, ((mappend_lh__d7__d2_d9 t_6_9_7) ys_7_7_2)))))) in
            (let rec h_6_9_7 = ' ' in
              (fun ys_7_7_3 -> 
                (`LH_C(h_6_9_7, ((mappend_lh__d7__d2_d9 t_6_9_6) ys_7_7_3)))))) in
            (let rec h_6_9_8 = ' ' in
              (fun ys_7_7_4 -> 
                (`LH_C(h_6_9_8, ((mappend_lh__d7__d2_d9 t_6_9_5) ys_7_7_4)))))) in
            (let rec h_6_9_9 = ' ' in
              (fun ys_7_7_5 -> 
                (`LH_C(h_6_9_9, ((mappend_lh__d7__d2_d9 t_6_9_4) ys_7_7_5)))))) in
            (let rec h_7_0_0 = ' ' in
              (fun ys_7_7_6 -> 
                (`LH_C(h_7_0_0, ((mappend_lh__d7__d2_d9 t_6_9_3) ys_7_7_6)))))) in
            (let rec h_7_0_1 = ' ' in
              (fun ys_7_7_7 -> 
                (`LH_C(h_7_0_1, ((mappend_lh__d7__d2_d9 t_6_9_2) ys_7_7_7)))))) in
            (let rec h_7_0_2 = ' ' in
              (fun ys_7_7_8 -> 
                (`LH_C(h_7_0_2, ((mappend_lh__d7__d2_d9 t_6_9_1) ys_7_7_8)))))) in
            (let rec h_7_0_3 = '|' in
              (fun ys_7_7_9 -> 
                (`LH_C(h_7_0_3, ((mappend_lh__d7__d2_d9 t_6_9_0) ys_7_7_9)))))) in
            (let rec h_7_0_4 = ' ' in
              (fun ys_7_8_0 -> 
                (`LH_C(h_7_0_4, ((mappend_lh__d7__d2_d9 t_6_8_9) ys_7_8_0)))))) in
            (let rec h_7_0_5 = 'm' in
              (fun ys_7_8_1 -> 
                (`LH_C(h_7_0_5, ((mappend_lh__d7__d2_d9 t_6_8_8) ys_7_8_1)))))) in
            (let rec h_7_0_6 = 'a' in
              (fun ys_7_8_2 -> 
                (`LH_C(h_7_0_6, ((mappend_lh__d7__d2_d9 t_6_8_7) ys_7_8_2)))))) in
            (let rec h_7_0_7 = 'd' in
              (fun ys_7_8_3 -> 
                (`LH_C(h_7_0_7, ((mappend_lh__d7__d2_d9 t_6_8_6) ys_7_8_3)))))) in
            (let rec h_7_0_8 = 'A' in
              (fun ys_7_8_4 -> 
                (`LH_C(h_7_0_8, ((mappend_lh__d7__d2_d9 t_6_8_5) ys_7_8_4)))))) in
            (let rec h_7_0_9 = ' ' in
              (fun ys_7_8_5 -> 
                (`LH_C(h_7_0_9, ((mappend_lh__d7__d2_d9 t_6_8_4) ys_7_8_5)))))) in
            (let rec h_7_1_0 = ' ' in
              (fun ys_7_8_6 -> 
                (`LH_C(h_7_1_0, ((mappend_lh__d7__d2_d9 t_6_8_3) ys_7_8_6)))))) in
            (let rec h_7_1_1 = ' ' in
              (fun ys_7_8_7 -> 
                (`LH_C(h_7_1_1, ((mappend_lh__d7__d2_d9 t_6_8_2) ys_7_8_7)))))) in
            (let rec h_7_1_2 = ' ' in
              (fun ys_7_8_8 -> 
                (`LH_C(h_7_1_2, ((mappend_lh__d7__d2_d9 t_6_8_1) ys_7_8_8))))))) _lh_writeItem_arg3_1_5)
        | `RightBank -> 
          ((mappend_lh__d7__d2_d0 (let rec t_7_1_3 = (let rec t_7_1_4 = (let rec t_7_1_5 = (let rec t_7_1_6 = (let rec t_7_1_7 = (let rec t_7_1_8 = (let rec t_7_1_9 = (let rec t_7_2_0 = (let rec t_7_2_1 = (let rec t_7_2_2 = (let rec t_7_2_3 = (let rec t_7_2_4 = (let rec t_7_2_5 = (let rec t_7_2_6 = (let rec t_7_2_7 = (let rec t_7_2_8 = (let rec t_7_2_9 = (let rec t_7_3_0 = (let rec t_7_3_1 = (let rec t_7_3_2 = (let rec t_7_3_3 = (let rec t_7_3_4 = (let rec t_7_3_5 = (let rec t_7_3_6 = (let rec t_7_3_7 = (let rec t_7_3_8 = (let rec t_7_3_9 = (let rec t_7_4_0 = (let rec t_7_4_1 = (let rec t_7_4_2 = (let rec t_7_4_3 = (let rec t_7_4_4 = (let rec t_7_4_5 = (let rec t_7_4_6 = (let rec t_7_4_7 = (let rec t_7_4_8 = (let rec t_7_4_9 = (fun ys_7_8_9 -> 
            ys_7_8_9) in
            (let rec h_7_1_3 = '|' in
              (fun ys_7_9_0 -> 
                (`LH_C(h_7_1_3, ((mappend_lh__d7__d2_d0 t_7_4_9) ys_7_9_0)))))) in
            (let rec h_7_1_4 = 'm' in
              (fun ys_7_9_1 -> 
                (`LH_C(h_7_1_4, ((mappend_lh__d7__d2_d0 t_7_4_8) ys_7_9_1)))))) in
            (let rec h_7_1_5 = 'a' in
              (fun ys_7_9_2 -> 
                (`LH_C(h_7_1_5, ((mappend_lh__d7__d2_d0 t_7_4_7) ys_7_9_2)))))) in
            (let rec h_7_1_6 = 'd' in
              (fun ys_7_9_3 -> 
                (`LH_C(h_7_1_6, ((mappend_lh__d7__d2_d0 t_7_4_6) ys_7_9_3)))))) in
            (let rec h_7_1_7 = 'A' in
              (fun ys_7_9_4 -> 
                (`LH_C(h_7_1_7, ((mappend_lh__d7__d2_d0 t_7_4_5) ys_7_9_4)))))) in
            (let rec h_7_1_8 = ' ' in
              (fun ys_7_9_5 -> 
                (`LH_C(h_7_1_8, ((mappend_lh__d7__d2_d0 t_7_4_4) ys_7_9_5)))))) in
            (let rec h_7_1_9 = '|' in
              (fun ys_7_9_6 -> 
                (`LH_C(h_7_1_9, ((mappend_lh__d7__d2_d0 t_7_4_3) ys_7_9_6)))))) in
            (let rec h_7_2_0 = ' ' in
              (fun ys_7_9_7 -> 
                (`LH_C(h_7_2_0, ((mappend_lh__d7__d2_d0 t_7_4_2) ys_7_9_7)))))) in
            (let rec h_7_2_1 = ' ' in
              (fun ys_7_9_8 -> 
                (`LH_C(h_7_2_1, ((mappend_lh__d7__d2_d0 t_7_4_1) ys_7_9_8)))))) in
            (let rec h_7_2_2 = ' ' in
              (fun ys_7_9_9 -> 
                (`LH_C(h_7_2_2, ((mappend_lh__d7__d2_d0 t_7_4_0) ys_7_9_9)))))) in
            (let rec h_7_2_3 = ' ' in
              (fun ys_8_0_0 -> 
                (`LH_C(h_7_2_3, ((mappend_lh__d7__d2_d0 t_7_3_9) ys_8_0_0)))))) in
            (let rec h_7_2_4 = ' ' in
              (fun ys_8_0_1 -> 
                (`LH_C(h_7_2_4, ((mappend_lh__d7__d2_d0 t_7_3_8) ys_8_0_1)))))) in
            (let rec h_7_2_5 = ' ' in
              (fun ys_8_0_2 -> 
                (`LH_C(h_7_2_5, ((mappend_lh__d7__d2_d0 t_7_3_7) ys_8_0_2)))))) in
            (let rec h_7_2_6 = ' ' in
              (fun ys_8_0_3 -> 
                (`LH_C(h_7_2_6, ((mappend_lh__d7__d2_d0 t_7_3_6) ys_8_0_3)))))) in
            (let rec h_7_2_7 = ' ' in
              (fun ys_8_0_4 -> 
                (`LH_C(h_7_2_7, ((mappend_lh__d7__d2_d0 t_7_3_5) ys_8_0_4)))))) in
            (let rec h_7_2_8 = ' ' in
              (fun ys_8_0_5 -> 
                (`LH_C(h_7_2_8, ((mappend_lh__d7__d2_d0 t_7_3_4) ys_8_0_5)))))) in
            (let rec h_7_2_9 = ' ' in
              (fun ys_8_0_6 -> 
                (`LH_C(h_7_2_9, ((mappend_lh__d7__d2_d0 t_7_3_3) ys_8_0_6)))))) in
            (let rec h_7_3_0 = ' ' in
              (fun ys_8_0_7 -> 
                (`LH_C(h_7_3_0, ((mappend_lh__d7__d2_d0 t_7_3_2) ys_8_0_7)))))) in
            (let rec h_7_3_1 = ' ' in
              (fun ys_8_0_8 -> 
                (`LH_C(h_7_3_1, ((mappend_lh__d7__d2_d0 t_7_3_1) ys_8_0_8)))))) in
            (let rec h_7_3_2 = ' ' in
              (fun ys_8_0_9 -> 
                (`LH_C(h_7_3_2, ((mappend_lh__d7__d2_d0 t_7_3_0) ys_8_0_9)))))) in
            (let rec h_7_3_3 = ' ' in
              (fun ys_8_1_0 -> 
                (`LH_C(h_7_3_3, ((mappend_lh__d7__d2_d0 t_7_2_9) ys_8_1_0)))))) in
            (let rec h_7_3_4 = ' ' in
              (fun ys_8_1_1 -> 
                (`LH_C(h_7_3_4, ((mappend_lh__d7__d2_d0 t_7_2_8) ys_8_1_1)))))) in
            (let rec h_7_3_5 = ' ' in
              (fun ys_8_1_2 -> 
                (`LH_C(h_7_3_5, ((mappend_lh__d7__d2_d0 t_7_2_7) ys_8_1_2)))))) in
            (let rec h_7_3_6 = ' ' in
              (fun ys_8_1_3 -> 
                (`LH_C(h_7_3_6, ((mappend_lh__d7__d2_d0 t_7_2_6) ys_8_1_3)))))) in
            (let rec h_7_3_7 = ' ' in
              (fun ys_8_1_4 -> 
                (`LH_C(h_7_3_7, ((mappend_lh__d7__d2_d0 t_7_2_5) ys_8_1_4)))))) in
            (let rec h_7_3_8 = ' ' in
              (fun ys_8_1_5 -> 
                (`LH_C(h_7_3_8, ((mappend_lh__d7__d2_d0 t_7_2_4) ys_8_1_5)))))) in
            (let rec h_7_3_9 = ' ' in
              (fun ys_8_1_6 -> 
                (`LH_C(h_7_3_9, ((mappend_lh__d7__d2_d0 t_7_2_3) ys_8_1_6)))))) in
            (let rec h_7_4_0 = '|' in
              (fun ys_8_1_7 -> 
                (`LH_C(h_7_4_0, ((mappend_lh__d7__d2_d0 t_7_2_2) ys_8_1_7)))))) in
            (let rec h_7_4_1 = ' ' in
              (fun ys_8_1_8 -> 
                (`LH_C(h_7_4_1, ((mappend_lh__d7__d2_d0 t_7_2_1) ys_8_1_8)))))) in
            (let rec h_7_4_2 = ' ' in
              (fun ys_8_1_9 -> 
                (`LH_C(h_7_4_2, ((mappend_lh__d7__d2_d0 t_7_2_0) ys_8_1_9)))))) in
            (let rec h_7_4_3 = ' ' in
              (fun ys_8_2_0 -> 
                (`LH_C(h_7_4_3, ((mappend_lh__d7__d2_d0 t_7_1_9) ys_8_2_0)))))) in
            (let rec h_7_4_4 = ' ' in
              (fun ys_8_2_1 -> 
                (`LH_C(h_7_4_4, ((mappend_lh__d7__d2_d0 t_7_1_8) ys_8_2_1)))))) in
            (let rec h_7_4_5 = ' ' in
              (fun ys_8_2_2 -> 
                (`LH_C(h_7_4_5, ((mappend_lh__d7__d2_d0 t_7_1_7) ys_8_2_2)))))) in
            (let rec h_7_4_6 = ' ' in
              (fun ys_8_2_3 -> 
                (`LH_C(h_7_4_6, ((mappend_lh__d7__d2_d0 t_7_1_6) ys_8_2_3)))))) in
            (let rec h_7_4_7 = ' ' in
              (fun ys_8_2_4 -> 
                (`LH_C(h_7_4_7, ((mappend_lh__d7__d2_d0 t_7_1_5) ys_8_2_4)))))) in
            (let rec h_7_4_8 = ' ' in
              (fun ys_8_2_5 -> 
                (`LH_C(h_7_4_8, ((mappend_lh__d7__d2_d0 t_7_1_4) ys_8_2_5)))))) in
            (let rec h_7_4_9 = ' ' in
              (fun ys_8_2_6 -> 
                (`LH_C(h_7_4_9, ((mappend_lh__d7__d2_d0 t_7_1_3) ys_8_2_6))))))) _lh_writeItem_arg3_1_5)
        | _ -> 
          (failwith "error")))) (adamPos_lh__d3__d2 _lh_writeState_arg1_1)) _lh_funcomp_x_3_0))) ((fun s_3 -> 
    ((mappend_lh__d7__d2_d1 (let rec t_7_5_0 = (let rec t_7_5_1 = (let rec t_7_5_2 = (let rec t_7_5_3 = (let rec t_7_5_4 = (let rec t_7_5_5 = (let rec t_7_5_6 = (let rec t_7_5_7 = (let rec t_7_5_8 = (let rec t_7_5_9 = (let rec t_7_6_0 = (let rec t_7_6_1 = (let rec t_7_6_2 = (let rec t_7_6_3 = (let rec t_7_6_4 = (let rec t_7_6_5 = (let rec t_7_6_6 = (let rec t_7_6_7 = (let rec t_7_6_8 = (let rec t_7_6_9 = (let rec t_7_7_0 = (let rec t_7_7_1 = (let rec t_7_7_2 = (let rec t_7_7_3 = (let rec t_7_7_4 = (let rec t_7_7_5 = (let rec t_7_7_6 = (let rec t_7_7_7 = (let rec t_7_7_8 = (let rec t_7_7_9 = (let rec t_7_8_0 = (let rec t_7_8_1 = (let rec t_7_8_2 = (let rec t_7_8_3 = (let rec t_7_8_4 = (let rec t_7_8_5 = (let rec t_7_8_6 = (let rec t_7_8_7 = (let rec t_7_8_8 = (let rec t_7_8_9 = (let rec t_7_9_0 = (fun ys_8_2_7 -> 
      ys_8_2_7) in
      (let rec h_7_5_0 = '|' in
        (fun ys_8_2_8 -> 
          (`LH_C(h_7_5_0, ((mappend_lh__d7__d2_d1 t_7_9_0) ys_8_2_8)))))) in
      (let rec h_7_5_1 = '-' in
        (fun ys_8_2_9 -> 
          (`LH_C(h_7_5_1, ((mappend_lh__d7__d2_d1 t_7_8_9) ys_8_2_9)))))) in
      (let rec h_7_5_2 = '-' in
        (fun ys_8_3_0 -> 
          (`LH_C(h_7_5_2, ((mappend_lh__d7__d2_d1 t_7_8_8) ys_8_3_0)))))) in
      (let rec h_7_5_3 = '-' in
        (fun ys_8_3_1 -> 
          (`LH_C(h_7_5_3, ((mappend_lh__d7__d2_d1 t_7_8_7) ys_8_3_1)))))) in
      (let rec h_7_5_4 = '-' in
        (fun ys_8_3_2 -> 
          (`LH_C(h_7_5_4, ((mappend_lh__d7__d2_d1 t_7_8_6) ys_8_3_2)))))) in
      (let rec h_7_5_5 = '-' in
        (fun ys_8_3_3 -> 
          (`LH_C(h_7_5_5, ((mappend_lh__d7__d2_d1 t_7_8_5) ys_8_3_3)))))) in
      (let rec h_7_5_6 = '-' in
        (fun ys_8_3_4 -> 
          (`LH_C(h_7_5_6, ((mappend_lh__d7__d2_d1 t_7_8_4) ys_8_3_4)))))) in
      (let rec h_7_5_7 = '-' in
        (fun ys_8_3_5 -> 
          (`LH_C(h_7_5_7, ((mappend_lh__d7__d2_d1 t_7_8_3) ys_8_3_5)))))) in
      (let rec h_7_5_8 = '-' in
        (fun ys_8_3_6 -> 
          (`LH_C(h_7_5_8, ((mappend_lh__d7__d2_d1 t_7_8_2) ys_8_3_6)))))) in
      (let rec h_7_5_9 = '-' in
        (fun ys_8_3_7 -> 
          (`LH_C(h_7_5_9, ((mappend_lh__d7__d2_d1 t_7_8_1) ys_8_3_7)))))) in
      (let rec h_7_6_0 = '-' in
        (fun ys_8_3_8 -> 
          (`LH_C(h_7_6_0, ((mappend_lh__d7__d2_d1 t_7_8_0) ys_8_3_8)))))) in
      (let rec h_7_6_1 = '-' in
        (fun ys_8_3_9 -> 
          (`LH_C(h_7_6_1, ((mappend_lh__d7__d2_d1 t_7_7_9) ys_8_3_9)))))) in
      (let rec h_7_6_2 = '-' in
        (fun ys_8_4_0 -> 
          (`LH_C(h_7_6_2, ((mappend_lh__d7__d2_d1 t_7_7_8) ys_8_4_0)))))) in
      (let rec h_7_6_3 = '-' in
        (fun ys_8_4_1 -> 
          (`LH_C(h_7_6_3, ((mappend_lh__d7__d2_d1 t_7_7_7) ys_8_4_1)))))) in
      (let rec h_7_6_4 = '-' in
        (fun ys_8_4_2 -> 
          (`LH_C(h_7_6_4, ((mappend_lh__d7__d2_d1 t_7_7_6) ys_8_4_2)))))) in
      (let rec h_7_6_5 = '-' in
        (fun ys_8_4_3 -> 
          (`LH_C(h_7_6_5, ((mappend_lh__d7__d2_d1 t_7_7_5) ys_8_4_3)))))) in
      (let rec h_7_6_6 = '-' in
        (fun ys_8_4_4 -> 
          (`LH_C(h_7_6_6, ((mappend_lh__d7__d2_d1 t_7_7_4) ys_8_4_4)))))) in
      (let rec h_7_6_7 = '-' in
        (fun ys_8_4_5 -> 
          (`LH_C(h_7_6_7, ((mappend_lh__d7__d2_d1 t_7_7_3) ys_8_4_5)))))) in
      (let rec h_7_6_8 = '-' in
        (fun ys_8_4_6 -> 
          (`LH_C(h_7_6_8, ((mappend_lh__d7__d2_d1 t_7_7_2) ys_8_4_6)))))) in
      (let rec h_7_6_9 = '-' in
        (fun ys_8_4_7 -> 
          (`LH_C(h_7_6_9, ((mappend_lh__d7__d2_d1 t_7_7_1) ys_8_4_7)))))) in
      (let rec h_7_7_0 = '-' in
        (fun ys_8_4_8 -> 
          (`LH_C(h_7_7_0, ((mappend_lh__d7__d2_d1 t_7_7_0) ys_8_4_8)))))) in
      (let rec h_7_7_1 = '-' in
        (fun ys_8_4_9 -> 
          (`LH_C(h_7_7_1, ((mappend_lh__d7__d2_d1 t_7_6_9) ys_8_4_9)))))) in
      (let rec h_7_7_2 = '-' in
        (fun ys_8_5_0 -> 
          (`LH_C(h_7_7_2, ((mappend_lh__d7__d2_d1 t_7_6_8) ys_8_5_0)))))) in
      (let rec h_7_7_3 = '-' in
        (fun ys_8_5_1 -> 
          (`LH_C(h_7_7_3, ((mappend_lh__d7__d2_d1 t_7_6_7) ys_8_5_1)))))) in
      (let rec h_7_7_4 = '-' in
        (fun ys_8_5_2 -> 
          (`LH_C(h_7_7_4, ((mappend_lh__d7__d2_d1 t_7_6_6) ys_8_5_2)))))) in
      (let rec h_7_7_5 = '-' in
        (fun ys_8_5_3 -> 
          (`LH_C(h_7_7_5, ((mappend_lh__d7__d2_d1 t_7_6_5) ys_8_5_3)))))) in
      (let rec h_7_7_6 = '-' in
        (fun ys_8_5_4 -> 
          (`LH_C(h_7_7_6, ((mappend_lh__d7__d2_d1 t_7_6_4) ys_8_5_4)))))) in
      (let rec h_7_7_7 = '-' in
        (fun ys_8_5_5 -> 
          (`LH_C(h_7_7_7, ((mappend_lh__d7__d2_d1 t_7_6_3) ys_8_5_5)))))) in
      (let rec h_7_7_8 = '-' in
        (fun ys_8_5_6 -> 
          (`LH_C(h_7_7_8, ((mappend_lh__d7__d2_d1 t_7_6_2) ys_8_5_6)))))) in
      (let rec h_7_7_9 = '-' in
        (fun ys_8_5_7 -> 
          (`LH_C(h_7_7_9, ((mappend_lh__d7__d2_d1 t_7_6_1) ys_8_5_7)))))) in
      (let rec h_7_8_0 = '-' in
        (fun ys_8_5_8 -> 
          (`LH_C(h_7_8_0, ((mappend_lh__d7__d2_d1 t_7_6_0) ys_8_5_8)))))) in
      (let rec h_7_8_1 = '-' in
        (fun ys_8_5_9 -> 
          (`LH_C(h_7_8_1, ((mappend_lh__d7__d2_d1 t_7_5_9) ys_8_5_9)))))) in
      (let rec h_7_8_2 = '-' in
        (fun ys_8_6_0 -> 
          (`LH_C(h_7_8_2, ((mappend_lh__d7__d2_d1 t_7_5_8) ys_8_6_0)))))) in
      (let rec h_7_8_3 = '-' in
        (fun ys_8_6_1 -> 
          (`LH_C(h_7_8_3, ((mappend_lh__d7__d2_d1 t_7_5_7) ys_8_6_1)))))) in
      (let rec h_7_8_4 = '-' in
        (fun ys_8_6_2 -> 
          (`LH_C(h_7_8_4, ((mappend_lh__d7__d2_d1 t_7_5_6) ys_8_6_2)))))) in
      (let rec h_7_8_5 = '-' in
        (fun ys_8_6_3 -> 
          (`LH_C(h_7_8_5, ((mappend_lh__d7__d2_d1 t_7_5_5) ys_8_6_3)))))) in
      (let rec h_7_8_6 = '-' in
        (fun ys_8_6_4 -> 
          (`LH_C(h_7_8_6, ((mappend_lh__d7__d2_d1 t_7_5_4) ys_8_6_4)))))) in
      (let rec h_7_8_7 = '-' in
        (fun ys_8_6_5 -> 
          (`LH_C(h_7_8_7, ((mappend_lh__d7__d2_d1 t_7_5_3) ys_8_6_5)))))) in
      (let rec h_7_8_8 = '-' in
        (fun ys_8_6_6 -> 
          (`LH_C(h_7_8_8, ((mappend_lh__d7__d2_d1 t_7_5_2) ys_8_6_6)))))) in
      (let rec h_7_8_9 = '-' in
        (fun ys_8_6_7 -> 
          (`LH_C(h_7_8_9, ((mappend_lh__d7__d2_d1 t_7_5_1) ys_8_6_7)))))) in
      (let rec h_7_9_0 = '-' in
        (fun ys_8_6_8 -> 
          (`LH_C(h_7_9_0, ((mappend_lh__d7__d2_d1 t_7_5_0) ys_8_6_8))))))) s_3)) _lh_funcomp_x_2_9));;
let rec foldr_lh__d1__d2 f_0 i_0 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      ((f_0 h_2) (((foldr_lh__d1__d2 f_0) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec mappend_lh__d4__d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d4__d2 t_4) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_lh__d5__d1_d5 xs_7_7 ys_1_2_4_7 =
  (xs_7_7 ys_1_2_4_7);;
let rec mappend_lh__d5__d1_d8 xs_7_8 ys_1_2_4_8 =
  (xs_7_8 ys_1_2_4_8);;
let rec totalTime_lh__d3__d2 _lh_totalTime_arg1_3 =
  (match _lh_totalTime_arg1_3 with
    | `LH_C(_lh_totalTime_LH_C_0_3, _lh_totalTime_LH_C_1_3) -> 
      (match _lh_totalTime_LH_C_0_3 with
        | `LH_P2(_lh_totalTime_LH_P2_0_3, _lh_totalTime_LH_P2_1_3) -> 
          _lh_totalTime_LH_P2_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec writeHistory_lh__d1__d2 _lh_writeHistory_arg1_1 =
  (match _lh_writeHistory_arg1_1 with
    | `LH_N -> 
      (fun x_6 -> 
        x_6)
    | _ -> 
      (((foldr_lh__d1__d2 (fun timestate_1 acc_1 -> 
        (let rec _lh_matchIdent_3 = timestate_1 in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_1, _lh_writeHistory_LH_P2_1_1) -> 
              (fun _lh_funcomp_x_9 -> 
                ((fun _lh_funcomp_x_1_0 -> 
                  ((fun _lh_funcomp_x_1_1 -> 
                    ((fun _lh_funcomp_x_1_2 -> 
                      ((fun x_7 -> 
                        ((mappend_lh__d5__d1_d4 (let rec t_3_8_0 = (let rec t_3_8_1 = (let rec t_3_8_2 = (let rec t_3_8_3 = (let rec t_3_8_4 = (let rec t_3_8_5 = (fun ys_4_1_7 -> 
                          ys_4_1_7) in
                          (let rec h_3_8_0 = ' ' in
                            (fun ys_4_1_8 -> 
                              (`LH_C(h_3_8_0, ((mappend_lh__d5__d1_d5 t_3_8_5) ys_4_1_8)))))) in
                          (let rec h_3_8_1 = ':' in
                            (fun ys_4_1_9 -> 
                              (`LH_C(h_3_8_1, ((mappend_lh__d5__d1_d6 t_3_8_4) ys_4_1_9)))))) in
                          (let rec h_3_8_2 = 'e' in
                            (fun ys_4_2_0 -> 
                              (`LH_C(h_3_8_2, ((mappend_lh__d5__d1_d7 t_3_8_3) ys_4_2_0)))))) in
                          (let rec h_3_8_3 = 'm' in
                            (fun ys_4_2_1 -> 
                              (`LH_C(h_3_8_3, ((mappend_lh__d5__d1_d8 t_3_8_2) ys_4_2_1)))))) in
                          (let rec h_3_8_4 = 'i' in
                            (fun ys_4_2_2 -> 
                              (`LH_C(h_3_8_4, ((mappend_lh__d5__d1_d9 t_3_8_1) ys_4_2_2)))))) in
                          (let rec h_3_8_5 = 'T' in
                            (fun ys_4_2_3 -> 
                              (`LH_C(h_3_8_5, ((mappend_lh__d5__d2_d0 t_3_8_0) ys_4_2_3))))))) x_7)) ((fun x_8 -> 
                        ((mappend_lh__d4__d2 (string_of_int ((totalTime_lh__d3__d2 _lh_writeHistory_arg1_1) - _lh_writeHistory_LH_P2_0_1))) x_8)) _lh_funcomp_x_1_2))) ((fun x_9 -> 
                      (`LH_C('|', x_9))) _lh_funcomp_x_1_1))) ((writeState_lh__d1__d2 _lh_writeHistory_LH_P2_1_1) _lh_funcomp_x_1_0))) (acc_1 _lh_funcomp_x_9)))
            | _ -> 
              (failwith "error"))))) (fun x_1_0 -> 
        x_1_0)) _lh_writeHistory_arg1_1));;
let rec mappend_lh__d1__d2_d4 xs_3_7 ys_4_2_4 =
  (xs_3_7 ys_4_2_4);;
let rec mappend_lh__d1__d8 xs_4_6 ys_4_3_3 =
  (xs_4_6 ys_4_3_3);;
let rec reverse_helper_lh__d1__d3 ls_0 a_0 =
  (ls_0 a_0);;
let rec reverse_lh__d1__d0 ls_1 =
  ((reverse_helper_lh__d1__d3 ls_1) (fun _lh_writeSolutions_arg2_0 x_0 -> 
    x_0));;
let rec reverse_helper_lh__d1__d1 ls_2 a_1 =
  (ls_2 a_1);;
let rec mappend_lh__d1__d2_d3 xs_5 ys_5 =
  (xs_5 ys_5);;
let rec mappend_lh__d1__d2_d9 xs_1_0 ys_1_0 =
  (xs_1_0 ys_1_0);;
let rec mappend_lh__d1__d1_d3 xs_1_2 ys_1_2 =
  (xs_1_2 ys_1_2);;
let rec reverse_helper_lh__d1__d2 ls_5 a_2 =
  (ls_5 a_2);;
let rec mappend_lh__d1__d2 xs_2_2 ys_2_2 =
  (xs_2_2 ys_2_2);;
let rec mappend_lh__d1__d6 xs_2_3 ys_3_9_6 =
  (xs_2_3 ys_3_9_6);;
let rec mappend_lh__d2__d1 xs_2_4 ys_3_9_7 =
  (match xs_2_4 with
    | `LH_C(h_3_6_9, t_3_6_9) -> 
      (`LH_C(h_3_6_9, ((mappend_lh__d2__d1 t_3_6_9) ys_3_9_7)))
    | `LH_N -> 
      ys_3_9_7);;
let rec writeSolutions_lh__d1__d2 _lh_writeSolutions_arg1_1 _lh_writeSolutions_arg2_2 =
  (_lh_writeSolutions_arg1_1 _lh_writeSolutions_arg2_2);;
let rec writeSolutions_lh__d1__d1 _lh_writeSolutions_arg1_2 _lh_writeSolutions_arg2_3 =
  (_lh_writeSolutions_arg1_2 _lh_writeSolutions_arg2_3);;
let rec writeSolutions_lh__d1__d0 _lh_writeSolutions_arg1_3 _lh_writeSolutions_arg2_4 =
  (_lh_writeSolutions_arg1_3 _lh_writeSolutions_arg2_4);;
let rec mappend_lh__d1__d5 xs_3_5 ys_4_0_8 =
  (xs_3_5 ys_4_0_8);;
let rec mappend_lh__d1__d0 xs_3_2 ys_4_0_5 =
  (xs_3_2 ys_4_0_5);;
let rec mappend_lh__d1__d2_d6 xs_4_1 ys_4_2_8 =
  (xs_4_1 ys_4_2_8);;
let rec mappend_lh__d1__d2_d2 xs_4_0 ys_4_2_7 =
  (xs_4_0 ys_4_2_7);;
let rec mappend_lh__d1__d2_d1 xs_5_8 ys_4_7_5 =
  (xs_5_8 ys_4_7_5);;
let rec mappend_lh__d1__d3 xs_5_9 ys_4_7_6 =
  (xs_5_9 ys_4_7_6);;
let rec mappend_lh__d1__d1_d0 xs_6_0 ys_4_7_7 =
  (xs_6_0 ys_4_7_7);;
let rec mappend_lh__d1__d7 xs_6_3 ys_4_8_0 =
  (xs_6_3 ys_4_8_0);;
let rec mappend_lh__d1__d1 xs_6_4 ys_4_8_1 =
  (xs_6_4 ys_4_8_1);;
let rec mappend_lh__d1__d2_d5 xs_6_7 ys_4_8_4 =
  (xs_6_7 ys_4_8_4);;
let rec mappend_lh__d1__d2_d7 xs_6_8 ys_4_8_5 =
  (xs_6_8 ys_4_8_5);;
let rec mappend_lh__d5__d2 xs_1_1 ys_1_1 =
  (xs_1_1 ys_1_1);;
let rec mappend_lh__d5__d0 xs_1_4 ys_1_4 =
  (xs_1_4 ys_1_4);;
let rec mappend_lh__d7__d9 xs_2_5 ys_3_9_8 =
  (xs_2_5 ys_3_9_8);;
let rec mappend_lh__d7__d1 xs_3_0 ys_4_0_3 =
  (xs_3_0 ys_4_0_3);;
let rec larryPos_lh__d3__d0 _lh_larryPos_arg1_5 =
  (match _lh_larryPos_arg1_5 with
    | `State(_lh_larryPos_State_0_5, _lh_larryPos_State_1_5, _lh_larryPos_State_2_5, _lh_larryPos_State_3_5) -> 
      _lh_larryPos_State_2_5
    | _ -> 
      (failwith "error"));;
let rec edgePos_lh__d4__d0 _lh_edgePos_arg1_6 =
  (match _lh_edgePos_arg1_6 with
    | `State(_lh_edgePos_State_0_6, _lh_edgePos_State_1_6, _lh_edgePos_State_2_6, _lh_edgePos_State_3_6) -> 
      _lh_edgePos_State_1_6
    | _ -> 
      (failwith "error"));;
let rec bonoPos_lh__d3__d0 _lh_bonoPos_arg1_6 =
  (match _lh_bonoPos_arg1_6 with
    | `State(_lh_bonoPos_State_0_6, _lh_bonoPos_State_1_6, _lh_bonoPos_State_2_6, _lh_bonoPos_State_3_6) -> 
      _lh_bonoPos_State_0_6
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d3 xs_3_9 ys_4_2_6 =
  (xs_3_9 ys_4_2_6);;
let rec mappend_lh__d7__d2 xs_5_0 ys_4_3_7 =
  (xs_5_0 ys_4_3_7);;
let rec mappend_lh__d7__d7 xs_5_6 ys_4_4_3 =
  (xs_5_6 ys_4_4_3);;
let rec writeItem_lh__d1__d3 _lh_writeItem_arg1_4 _lh_writeItem_arg2_8 _lh_writeItem_arg3_8 =
  ((_lh_writeItem_arg1_4 _lh_writeItem_arg2_8) _lh_writeItem_arg3_8);;
let rec adamPos_lh__d3__d0 _lh_adamPos_arg1_7 =
  (match _lh_adamPos_arg1_7 with
    | `State(_lh_adamPos_State_0_7, _lh_adamPos_State_1_7, _lh_adamPos_State_2_7, _lh_adamPos_State_3_7) -> 
      _lh_adamPos_State_3_7
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7__d6 xs_7_6 ys_8_7_3 =
  (xs_7_6 ys_8_7_3);;
let rec mappend_lh__d7__d0 xs_6 ys_6 =
  (xs_6 ys_6);;
let rec mappend_lh__d7__d8 xs_7 ys_7 =
  (xs_7 ys_7);;
let rec mappend_lh__d7__d4 xs_5_3 ys_4_4_0 =
  (xs_5_3 ys_4_4_0);;
let rec writeItem_lh__d1__d1 _lh_writeItem_arg1_2 _lh_writeItem_arg2_6 _lh_writeItem_arg3_6 =
  ((_lh_writeItem_arg1_2 _lh_writeItem_arg2_6) _lh_writeItem_arg3_6);;
let rec writeItem_lh__d1__d2 _lh_writeItem_arg1_9 _lh_writeItem_arg2_2_1 _lh_writeItem_arg3_2_1 =
  ((_lh_writeItem_arg1_9 _lh_writeItem_arg2_2_1) _lh_writeItem_arg3_2_1);;
let rec writeItem_lh__d1__d0 _lh_writeItem_arg1_1_0 _lh_writeItem_arg2_2_2 _lh_writeItem_arg3_2_2 =
  ((_lh_writeItem_arg1_1_0 _lh_writeItem_arg2_2_2) _lh_writeItem_arg3_2_2);;
let rec mappend_lh__d7__d5 xs_9_3 ys_1_2_6_3 =
  (xs_9_3 ys_1_2_6_3);;
let rec writeState_lh__d1__d0 _lh_writeState_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        ((fun _lh_funcomp_x_4 -> 
          ((fun s_0 -> 
            ((mappend_lh__d7__d2 (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (fun ys_2_3 -> 
              ys_2_3) in
              (let rec h_6 = '|' in
                (fun ys_2_4 -> 
                  (`LH_C(h_6, ((mappend_lh__d7__d2 t_4_6) ys_2_4)))))) in
              (let rec h_7 = '-' in
                (fun ys_2_5 -> 
                  (`LH_C(h_7, ((mappend_lh__d7__d2 t_4_5) ys_2_5)))))) in
              (let rec h_8 = '-' in
                (fun ys_2_6 -> 
                  (`LH_C(h_8, ((mappend_lh__d7__d2 t_4_4) ys_2_6)))))) in
              (let rec h_9 = '-' in
                (fun ys_2_7 -> 
                  (`LH_C(h_9, ((mappend_lh__d7__d2 t_4_3) ys_2_7)))))) in
              (let rec h_1_0 = '-' in
                (fun ys_2_8 -> 
                  (`LH_C(h_1_0, ((mappend_lh__d7__d2 t_4_2) ys_2_8)))))) in
              (let rec h_1_1 = '-' in
                (fun ys_2_9 -> 
                  (`LH_C(h_1_1, ((mappend_lh__d7__d2 t_4_1) ys_2_9)))))) in
              (let rec h_1_2 = '-' in
                (fun ys_3_0 -> 
                  (`LH_C(h_1_2, ((mappend_lh__d7__d2 t_4_0) ys_3_0)))))) in
              (let rec h_1_3 = '-' in
                (fun ys_3_1 -> 
                  (`LH_C(h_1_3, ((mappend_lh__d7__d2 t_3_9) ys_3_1)))))) in
              (let rec h_1_4 = '-' in
                (fun ys_3_2 -> 
                  (`LH_C(h_1_4, ((mappend_lh__d7__d2 t_3_8) ys_3_2)))))) in
              (let rec h_1_5 = '-' in
                (fun ys_3_3 -> 
                  (`LH_C(h_1_5, ((mappend_lh__d7__d2 t_3_7) ys_3_3)))))) in
              (let rec h_1_6 = '-' in
                (fun ys_3_4 -> 
                  (`LH_C(h_1_6, ((mappend_lh__d7__d2 t_3_6) ys_3_4)))))) in
              (let rec h_1_7 = '-' in
                (fun ys_3_5 -> 
                  (`LH_C(h_1_7, ((mappend_lh__d7__d2 t_3_5) ys_3_5)))))) in
              (let rec h_1_8 = '-' in
                (fun ys_3_6 -> 
                  (`LH_C(h_1_8, ((mappend_lh__d7__d2 t_3_4) ys_3_6)))))) in
              (let rec h_1_9 = '-' in
                (fun ys_3_7 -> 
                  (`LH_C(h_1_9, ((mappend_lh__d7__d2 t_3_3) ys_3_7)))))) in
              (let rec h_2_0 = '-' in
                (fun ys_3_8 -> 
                  (`LH_C(h_2_0, ((mappend_lh__d7__d2 t_3_2) ys_3_8)))))) in
              (let rec h_2_1 = '-' in
                (fun ys_3_9 -> 
                  (`LH_C(h_2_1, ((mappend_lh__d7__d2 t_3_1) ys_3_9)))))) in
              (let rec h_2_2 = '-' in
                (fun ys_4_0 -> 
                  (`LH_C(h_2_2, ((mappend_lh__d7__d2 t_3_0) ys_4_0)))))) in
              (let rec h_2_3 = '-' in
                (fun ys_4_1 -> 
                  (`LH_C(h_2_3, ((mappend_lh__d7__d2 t_2_9) ys_4_1)))))) in
              (let rec h_2_4 = '-' in
                (fun ys_4_2 -> 
                  (`LH_C(h_2_4, ((mappend_lh__d7__d2 t_2_8) ys_4_2)))))) in
              (let rec h_2_5 = '-' in
                (fun ys_4_3 -> 
                  (`LH_C(h_2_5, ((mappend_lh__d7__d2 t_2_7) ys_4_3)))))) in
              (let rec h_2_6 = '-' in
                (fun ys_4_4 -> 
                  (`LH_C(h_2_6, ((mappend_lh__d7__d2 t_2_6) ys_4_4)))))) in
              (let rec h_2_7 = '-' in
                (fun ys_4_5 -> 
                  (`LH_C(h_2_7, ((mappend_lh__d7__d2 t_2_5) ys_4_5)))))) in
              (let rec h_2_8 = '-' in
                (fun ys_4_6 -> 
                  (`LH_C(h_2_8, ((mappend_lh__d7__d2 t_2_4) ys_4_6)))))) in
              (let rec h_2_9 = '-' in
                (fun ys_4_7 -> 
                  (`LH_C(h_2_9, ((mappend_lh__d7__d2 t_2_3) ys_4_7)))))) in
              (let rec h_3_0 = '-' in
                (fun ys_4_8 -> 
                  (`LH_C(h_3_0, ((mappend_lh__d7__d2 t_2_2) ys_4_8)))))) in
              (let rec h_3_1 = '-' in
                (fun ys_4_9 -> 
                  (`LH_C(h_3_1, ((mappend_lh__d7__d2 t_2_1) ys_4_9)))))) in
              (let rec h_3_2 = '-' in
                (fun ys_5_0 -> 
                  (`LH_C(h_3_2, ((mappend_lh__d7__d2 t_2_0) ys_5_0)))))) in
              (let rec h_3_3 = '-' in
                (fun ys_5_1 -> 
                  (`LH_C(h_3_3, ((mappend_lh__d7__d2 t_1_9) ys_5_1)))))) in
              (let rec h_3_4 = '-' in
                (fun ys_5_2 -> 
                  (`LH_C(h_3_4, ((mappend_lh__d7__d2 t_1_8) ys_5_2)))))) in
              (let rec h_3_5 = '-' in
                (fun ys_5_3 -> 
                  (`LH_C(h_3_5, ((mappend_lh__d7__d2 t_1_7) ys_5_3)))))) in
              (let rec h_3_6 = '-' in
                (fun ys_5_4 -> 
                  (`LH_C(h_3_6, ((mappend_lh__d7__d2 t_1_6) ys_5_4)))))) in
              (let rec h_3_7 = '-' in
                (fun ys_5_5 -> 
                  (`LH_C(h_3_7, ((mappend_lh__d7__d2 t_1_5) ys_5_5)))))) in
              (let rec h_3_8 = '-' in
                (fun ys_5_6 -> 
                  (`LH_C(h_3_8, ((mappend_lh__d7__d2 t_1_4) ys_5_6)))))) in
              (let rec h_3_9 = '-' in
                (fun ys_5_7 -> 
                  (`LH_C(h_3_9, ((mappend_lh__d7__d2 t_1_3) ys_5_7)))))) in
              (let rec h_4_0 = '-' in
                (fun ys_5_8 -> 
                  (`LH_C(h_4_0, ((mappend_lh__d7__d2 t_1_2) ys_5_8)))))) in
              (let rec h_4_1 = '-' in
                (fun ys_5_9 -> 
                  (`LH_C(h_4_1, ((mappend_lh__d7__d2 t_1_1) ys_5_9)))))) in
              (let rec h_4_2 = '-' in
                (fun ys_6_0 -> 
                  (`LH_C(h_4_2, ((mappend_lh__d7__d2 t_1_0) ys_6_0)))))) in
              (let rec h_4_3 = '-' in
                (fun ys_6_1 -> 
                  (`LH_C(h_4_3, ((mappend_lh__d7__d2 t_9) ys_6_1)))))) in
              (let rec h_4_4 = '-' in
                (fun ys_6_2 -> 
                  (`LH_C(h_4_4, ((mappend_lh__d7__d2 t_8) ys_6_2)))))) in
              (let rec h_4_5 = '-' in
                (fun ys_6_3 -> 
                  (`LH_C(h_4_5, ((mappend_lh__d7__d2 t_7) ys_6_3)))))) in
              (let rec h_4_6 = '-' in
                (fun ys_6_4 -> 
                  (`LH_C(h_4_6, ((mappend_lh__d7__d2 t_6) ys_6_4))))))) s_0)) (((writeItem_lh__d1__d0 (fun _lh_writeItem_arg2_0 _lh_writeItem_arg3_0 -> 
            (match _lh_writeItem_arg2_0 with
              | `LeftBank -> 
                ((mappend_lh__d7__d3 (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (fun ys_6_5 -> 
                  ys_6_5) in
                  (let rec h_4_7 = '|' in
                    (fun ys_6_6 -> 
                      (`LH_C(h_4_7, ((mappend_lh__d7__d3 t_7_8) ys_6_6)))))) in
                  (let rec h_4_8 = '|' in
                    (fun ys_6_7 -> 
                      (`LH_C(h_4_8, ((mappend_lh__d7__d3 t_7_7) ys_6_7)))))) in
                  (let rec h_4_9 = ' ' in
                    (fun ys_6_8 -> 
                      (`LH_C(h_4_9, ((mappend_lh__d7__d3 t_7_6) ys_6_8)))))) in
                  (let rec h_5_0 = ' ' in
                    (fun ys_6_9 -> 
                      (`LH_C(h_5_0, ((mappend_lh__d7__d3 t_7_5) ys_6_9)))))) in
                  (let rec h_5_1 = ' ' in
                    (fun ys_7_0 -> 
                      (`LH_C(h_5_1, ((mappend_lh__d7__d3 t_7_4) ys_7_0)))))) in
                  (let rec h_5_2 = ' ' in
                    (fun ys_7_1 -> 
                      (`LH_C(h_5_2, ((mappend_lh__d7__d3 t_7_3) ys_7_1)))))) in
                  (let rec h_5_3 = ' ' in
                    (fun ys_7_2 -> 
                      (`LH_C(h_5_3, ((mappend_lh__d7__d3 t_7_2) ys_7_2)))))) in
                  (let rec h_5_4 = ' ' in
                    (fun ys_7_3 -> 
                      (`LH_C(h_5_4, ((mappend_lh__d7__d3 t_7_1) ys_7_3)))))) in
                  (let rec h_5_5 = ' ' in
                    (fun ys_7_4 -> 
                      (`LH_C(h_5_5, ((mappend_lh__d7__d3 t_7_0) ys_7_4)))))) in
                  (let rec h_5_6 = ' ' in
                    (fun ys_7_5 -> 
                      (`LH_C(h_5_6, ((mappend_lh__d7__d3 t_6_9) ys_7_5)))))) in
                  (let rec h_5_7 = ' ' in
                    (fun ys_7_6 -> 
                      (`LH_C(h_5_7, ((mappend_lh__d7__d3 t_6_8) ys_7_6)))))) in
                  (let rec h_5_8 = ' ' in
                    (fun ys_7_7 -> 
                      (`LH_C(h_5_8, ((mappend_lh__d7__d3 t_6_7) ys_7_7)))))) in
                  (let rec h_5_9 = ' ' in
                    (fun ys_7_8 -> 
                      (`LH_C(h_5_9, ((mappend_lh__d7__d3 t_6_6) ys_7_8)))))) in
                  (let rec h_6_0 = ' ' in
                    (fun ys_7_9 -> 
                      (`LH_C(h_6_0, ((mappend_lh__d7__d3 t_6_5) ys_7_9)))))) in
                  (let rec h_6_1 = ' ' in
                    (fun ys_8_0 -> 
                      (`LH_C(h_6_1, ((mappend_lh__d7__d3 t_6_4) ys_8_0)))))) in
                  (let rec h_6_2 = ' ' in
                    (fun ys_8_1 -> 
                      (`LH_C(h_6_2, ((mappend_lh__d7__d3 t_6_3) ys_8_1)))))) in
                  (let rec h_6_3 = ' ' in
                    (fun ys_8_2 -> 
                      (`LH_C(h_6_3, ((mappend_lh__d7__d3 t_6_2) ys_8_2)))))) in
                  (let rec h_6_4 = ' ' in
                    (fun ys_8_3 -> 
                      (`LH_C(h_6_4, ((mappend_lh__d7__d3 t_6_1) ys_8_3)))))) in
                  (let rec h_6_5 = ' ' in
                    (fun ys_8_4 -> 
                      (`LH_C(h_6_5, ((mappend_lh__d7__d3 t_6_0) ys_8_4)))))) in
                  (let rec h_6_6 = ' ' in
                    (fun ys_8_5 -> 
                      (`LH_C(h_6_6, ((mappend_lh__d7__d3 t_5_9) ys_8_5)))))) in
                  (let rec h_6_7 = ' ' in
                    (fun ys_8_6 -> 
                      (`LH_C(h_6_7, ((mappend_lh__d7__d3 t_5_8) ys_8_6)))))) in
                  (let rec h_6_8 = ' ' in
                    (fun ys_8_7 -> 
                      (`LH_C(h_6_8, ((mappend_lh__d7__d3 t_5_7) ys_8_7)))))) in
                  (let rec h_6_9 = '|' in
                    (fun ys_8_8 -> 
                      (`LH_C(h_6_9, ((mappend_lh__d7__d3 t_5_6) ys_8_8)))))) in
                  (let rec h_7_0 = ' ' in
                    (fun ys_8_9 -> 
                      (`LH_C(h_7_0, ((mappend_lh__d7__d3 t_5_5) ys_8_9)))))) in
                  (let rec h_7_1 = 'o' in
                    (fun ys_9_0 -> 
                      (`LH_C(h_7_1, ((mappend_lh__d7__d3 t_5_4) ys_9_0)))))) in
                  (let rec h_7_2 = 'n' in
                    (fun ys_9_1 -> 
                      (`LH_C(h_7_2, ((mappend_lh__d7__d3 t_5_3) ys_9_1)))))) in
                  (let rec h_7_3 = 'o' in
                    (fun ys_9_2 -> 
                      (`LH_C(h_7_3, ((mappend_lh__d7__d3 t_5_2) ys_9_2)))))) in
                  (let rec h_7_4 = 'B' in
                    (fun ys_9_3 -> 
                      (`LH_C(h_7_4, ((mappend_lh__d7__d3 t_5_1) ys_9_3)))))) in
                  (let rec h_7_5 = ' ' in
                    (fun ys_9_4 -> 
                      (`LH_C(h_7_5, ((mappend_lh__d7__d3 t_5_0) ys_9_4)))))) in
                  (let rec h_7_6 = ' ' in
                    (fun ys_9_5 -> 
                      (`LH_C(h_7_6, ((mappend_lh__d7__d3 t_4_9) ys_9_5)))))) in
                  (let rec h_7_7 = ' ' in
                    (fun ys_9_6 -> 
                      (`LH_C(h_7_7, ((mappend_lh__d7__d3 t_4_8) ys_9_6)))))) in
                  (let rec h_7_8 = ' ' in
                    (fun ys_9_7 -> 
                      (`LH_C(h_7_8, ((mappend_lh__d7__d3 t_4_7) ys_9_7))))))) _lh_writeItem_arg3_0)
              | `RightBank -> 
                ((mappend_lh__d7__d4 (let rec t_7_9 = (let rec t_8_0 = (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (let rec t_8_5 = (let rec t_8_6 = (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (let rec t_9_5 = (let rec t_9_6 = (let rec t_9_7 = (let rec t_9_8 = (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (let rec t_1_0_3 = (let rec t_1_0_4 = (let rec t_1_0_5 = (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (let rec t_1_1_4 = (let rec t_1_1_5 = (fun ys_9_8 -> 
                  ys_9_8) in
                  (let rec h_7_9 = '|' in
                    (fun ys_9_9 -> 
                      (`LH_C(h_7_9, ((mappend_lh__d7__d4 t_1_1_5) ys_9_9)))))) in
                  (let rec h_8_0 = 'o' in
                    (fun ys_1_0_0 -> 
                      (`LH_C(h_8_0, ((mappend_lh__d7__d4 t_1_1_4) ys_1_0_0)))))) in
                  (let rec h_8_1 = 'n' in
                    (fun ys_1_0_1 -> 
                      (`LH_C(h_8_1, ((mappend_lh__d7__d4 t_1_1_3) ys_1_0_1)))))) in
                  (let rec h_8_2 = 'o' in
                    (fun ys_1_0_2 -> 
                      (`LH_C(h_8_2, ((mappend_lh__d7__d4 t_1_1_2) ys_1_0_2)))))) in
                  (let rec h_8_3 = 'B' in
                    (fun ys_1_0_3 -> 
                      (`LH_C(h_8_3, ((mappend_lh__d7__d4 t_1_1_1) ys_1_0_3)))))) in
                  (let rec h_8_4 = ' ' in
                    (fun ys_1_0_4 -> 
                      (`LH_C(h_8_4, ((mappend_lh__d7__d4 t_1_1_0) ys_1_0_4)))))) in
                  (let rec h_8_5 = '|' in
                    (fun ys_1_0_5 -> 
                      (`LH_C(h_8_5, ((mappend_lh__d7__d4 t_1_0_9) ys_1_0_5)))))) in
                  (let rec h_8_6 = ' ' in
                    (fun ys_1_0_6 -> 
                      (`LH_C(h_8_6, ((mappend_lh__d7__d4 t_1_0_8) ys_1_0_6)))))) in
                  (let rec h_8_7 = ' ' in
                    (fun ys_1_0_7 -> 
                      (`LH_C(h_8_7, ((mappend_lh__d7__d4 t_1_0_7) ys_1_0_7)))))) in
                  (let rec h_8_8 = ' ' in
                    (fun ys_1_0_8 -> 
                      (`LH_C(h_8_8, ((mappend_lh__d7__d4 t_1_0_6) ys_1_0_8)))))) in
                  (let rec h_8_9 = ' ' in
                    (fun ys_1_0_9 -> 
                      (`LH_C(h_8_9, ((mappend_lh__d7__d4 t_1_0_5) ys_1_0_9)))))) in
                  (let rec h_9_0 = ' ' in
                    (fun ys_1_1_0 -> 
                      (`LH_C(h_9_0, ((mappend_lh__d7__d4 t_1_0_4) ys_1_1_0)))))) in
                  (let rec h_9_1 = ' ' in
                    (fun ys_1_1_1 -> 
                      (`LH_C(h_9_1, ((mappend_lh__d7__d4 t_1_0_3) ys_1_1_1)))))) in
                  (let rec h_9_2 = ' ' in
                    (fun ys_1_1_2 -> 
                      (`LH_C(h_9_2, ((mappend_lh__d7__d4 t_1_0_2) ys_1_1_2)))))) in
                  (let rec h_9_3 = ' ' in
                    (fun ys_1_1_3 -> 
                      (`LH_C(h_9_3, ((mappend_lh__d7__d4 t_1_0_1) ys_1_1_3)))))) in
                  (let rec h_9_4 = ' ' in
                    (fun ys_1_1_4 -> 
                      (`LH_C(h_9_4, ((mappend_lh__d7__d4 t_1_0_0) ys_1_1_4)))))) in
                  (let rec h_9_5 = ' ' in
                    (fun ys_1_1_5 -> 
                      (`LH_C(h_9_5, ((mappend_lh__d7__d4 t_9_9) ys_1_1_5)))))) in
                  (let rec h_9_6 = ' ' in
                    (fun ys_1_1_6 -> 
                      (`LH_C(h_9_6, ((mappend_lh__d7__d4 t_9_8) ys_1_1_6)))))) in
                  (let rec h_9_7 = ' ' in
                    (fun ys_1_1_7 -> 
                      (`LH_C(h_9_7, ((mappend_lh__d7__d4 t_9_7) ys_1_1_7)))))) in
                  (let rec h_9_8 = ' ' in
                    (fun ys_1_1_8 -> 
                      (`LH_C(h_9_8, ((mappend_lh__d7__d4 t_9_6) ys_1_1_8)))))) in
                  (let rec h_9_9 = ' ' in
                    (fun ys_1_1_9 -> 
                      (`LH_C(h_9_9, ((mappend_lh__d7__d4 t_9_5) ys_1_1_9)))))) in
                  (let rec h_1_0_0 = ' ' in
                    (fun ys_1_2_0 -> 
                      (`LH_C(h_1_0_0, ((mappend_lh__d7__d4 t_9_4) ys_1_2_0)))))) in
                  (let rec h_1_0_1 = ' ' in
                    (fun ys_1_2_1 -> 
                      (`LH_C(h_1_0_1, ((mappend_lh__d7__d4 t_9_3) ys_1_2_1)))))) in
                  (let rec h_1_0_2 = ' ' in
                    (fun ys_1_2_2 -> 
                      (`LH_C(h_1_0_2, ((mappend_lh__d7__d4 t_9_2) ys_1_2_2)))))) in
                  (let rec h_1_0_3 = ' ' in
                    (fun ys_1_2_3 -> 
                      (`LH_C(h_1_0_3, ((mappend_lh__d7__d4 t_9_1) ys_1_2_3)))))) in
                  (let rec h_1_0_4 = ' ' in
                    (fun ys_1_2_4 -> 
                      (`LH_C(h_1_0_4, ((mappend_lh__d7__d4 t_9_0) ys_1_2_4)))))) in
                  (let rec h_1_0_5 = ' ' in
                    (fun ys_1_2_5 -> 
                      (`LH_C(h_1_0_5, ((mappend_lh__d7__d4 t_8_9) ys_1_2_5)))))) in
                  (let rec h_1_0_6 = '|' in
                    (fun ys_1_2_6 -> 
                      (`LH_C(h_1_0_6, ((mappend_lh__d7__d4 t_8_8) ys_1_2_6)))))) in
                  (let rec h_1_0_7 = ' ' in
                    (fun ys_1_2_7 -> 
                      (`LH_C(h_1_0_7, ((mappend_lh__d7__d4 t_8_7) ys_1_2_7)))))) in
                  (let rec h_1_0_8 = ' ' in
                    (fun ys_1_2_8 -> 
                      (`LH_C(h_1_0_8, ((mappend_lh__d7__d4 t_8_6) ys_1_2_8)))))) in
                  (let rec h_1_0_9 = ' ' in
                    (fun ys_1_2_9 -> 
                      (`LH_C(h_1_0_9, ((mappend_lh__d7__d4 t_8_5) ys_1_2_9)))))) in
                  (let rec h_1_1_0 = ' ' in
                    (fun ys_1_3_0 -> 
                      (`LH_C(h_1_1_0, ((mappend_lh__d7__d4 t_8_4) ys_1_3_0)))))) in
                  (let rec h_1_1_1 = ' ' in
                    (fun ys_1_3_1 -> 
                      (`LH_C(h_1_1_1, ((mappend_lh__d7__d4 t_8_3) ys_1_3_1)))))) in
                  (let rec h_1_1_2 = ' ' in
                    (fun ys_1_3_2 -> 
                      (`LH_C(h_1_1_2, ((mappend_lh__d7__d4 t_8_2) ys_1_3_2)))))) in
                  (let rec h_1_1_3 = ' ' in
                    (fun ys_1_3_3 -> 
                      (`LH_C(h_1_1_3, ((mappend_lh__d7__d4 t_8_1) ys_1_3_3)))))) in
                  (let rec h_1_1_4 = ' ' in
                    (fun ys_1_3_4 -> 
                      (`LH_C(h_1_1_4, ((mappend_lh__d7__d4 t_8_0) ys_1_3_4)))))) in
                  (let rec h_1_1_5 = ' ' in
                    (fun ys_1_3_5 -> 
                      (`LH_C(h_1_1_5, ((mappend_lh__d7__d4 t_7_9) ys_1_3_5))))))) _lh_writeItem_arg3_0)
              | _ -> 
                (failwith "error")))) (bonoPos_lh__d3__d0 _lh_writeState_arg1_0)) _lh_funcomp_x_4))) (((writeItem_lh__d1__d1 (fun _lh_writeItem_arg2_1 _lh_writeItem_arg3_1 -> 
          (match _lh_writeItem_arg2_1 with
            | `LeftBank -> 
              ((mappend_lh__d7__d5 (let rec t_1_1_6 = (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (let rec t_1_2_1 = (let rec t_1_2_2 = (let rec t_1_2_3 = (let rec t_1_2_4 = (let rec t_1_2_5 = (let rec t_1_2_6 = (let rec t_1_2_7 = (let rec t_1_2_8 = (let rec t_1_2_9 = (let rec t_1_3_0 = (let rec t_1_3_1 = (let rec t_1_3_2 = (let rec t_1_3_3 = (let rec t_1_3_4 = (let rec t_1_3_5 = (let rec t_1_3_6 = (let rec t_1_3_7 = (let rec t_1_3_8 = (let rec t_1_3_9 = (let rec t_1_4_0 = (let rec t_1_4_1 = (let rec t_1_4_2 = (let rec t_1_4_3 = (let rec t_1_4_4 = (let rec t_1_4_5 = (let rec t_1_4_6 = (let rec t_1_4_7 = (fun ys_1_3_6 -> 
                ys_1_3_6) in
                (let rec h_1_1_6 = '|' in
                  (fun ys_1_3_7 -> 
                    (`LH_C(h_1_1_6, ((mappend_lh__d7__d5 t_1_4_7) ys_1_3_7)))))) in
                (let rec h_1_1_7 = '|' in
                  (fun ys_1_3_8 -> 
                    (`LH_C(h_1_1_7, ((mappend_lh__d7__d5 t_1_4_6) ys_1_3_8)))))) in
                (let rec h_1_1_8 = ' ' in
                  (fun ys_1_3_9 -> 
                    (`LH_C(h_1_1_8, ((mappend_lh__d7__d5 t_1_4_5) ys_1_3_9)))))) in
                (let rec h_1_1_9 = ' ' in
                  (fun ys_1_4_0 -> 
                    (`LH_C(h_1_1_9, ((mappend_lh__d7__d5 t_1_4_4) ys_1_4_0)))))) in
                (let rec h_1_2_0 = ' ' in
                  (fun ys_1_4_1 -> 
                    (`LH_C(h_1_2_0, ((mappend_lh__d7__d5 t_1_4_3) ys_1_4_1)))))) in
                (let rec h_1_2_1 = ' ' in
                  (fun ys_1_4_2 -> 
                    (`LH_C(h_1_2_1, ((mappend_lh__d7__d5 t_1_4_2) ys_1_4_2)))))) in
                (let rec h_1_2_2 = ' ' in
                  (fun ys_1_4_3 -> 
                    (`LH_C(h_1_2_2, ((mappend_lh__d7__d5 t_1_4_1) ys_1_4_3)))))) in
                (let rec h_1_2_3 = ' ' in
                  (fun ys_1_4_4 -> 
                    (`LH_C(h_1_2_3, ((mappend_lh__d7__d5 t_1_4_0) ys_1_4_4)))))) in
                (let rec h_1_2_4 = ' ' in
                  (fun ys_1_4_5 -> 
                    (`LH_C(h_1_2_4, ((mappend_lh__d7__d5 t_1_3_9) ys_1_4_5)))))) in
                (let rec h_1_2_5 = ' ' in
                  (fun ys_1_4_6 -> 
                    (`LH_C(h_1_2_5, ((mappend_lh__d7__d5 t_1_3_8) ys_1_4_6)))))) in
                (let rec h_1_2_6 = ' ' in
                  (fun ys_1_4_7 -> 
                    (`LH_C(h_1_2_6, ((mappend_lh__d7__d5 t_1_3_7) ys_1_4_7)))))) in
                (let rec h_1_2_7 = ' ' in
                  (fun ys_1_4_8 -> 
                    (`LH_C(h_1_2_7, ((mappend_lh__d7__d5 t_1_3_6) ys_1_4_8)))))) in
                (let rec h_1_2_8 = ' ' in
                  (fun ys_1_4_9 -> 
                    (`LH_C(h_1_2_8, ((mappend_lh__d7__d5 t_1_3_5) ys_1_4_9)))))) in
                (let rec h_1_2_9 = ' ' in
                  (fun ys_1_5_0 -> 
                    (`LH_C(h_1_2_9, ((mappend_lh__d7__d5 t_1_3_4) ys_1_5_0)))))) in
                (let rec h_1_3_0 = ' ' in
                  (fun ys_1_5_1 -> 
                    (`LH_C(h_1_3_0, ((mappend_lh__d7__d5 t_1_3_3) ys_1_5_1)))))) in
                (let rec h_1_3_1 = ' ' in
                  (fun ys_1_5_2 -> 
                    (`LH_C(h_1_3_1, ((mappend_lh__d7__d5 t_1_3_2) ys_1_5_2)))))) in
                (let rec h_1_3_2 = ' ' in
                  (fun ys_1_5_3 -> 
                    (`LH_C(h_1_3_2, ((mappend_lh__d7__d5 t_1_3_1) ys_1_5_3)))))) in
                (let rec h_1_3_3 = ' ' in
                  (fun ys_1_5_4 -> 
                    (`LH_C(h_1_3_3, ((mappend_lh__d7__d5 t_1_3_0) ys_1_5_4)))))) in
                (let rec h_1_3_4 = ' ' in
                  (fun ys_1_5_5 -> 
                    (`LH_C(h_1_3_4, ((mappend_lh__d7__d5 t_1_2_9) ys_1_5_5)))))) in
                (let rec h_1_3_5 = ' ' in
                  (fun ys_1_5_6 -> 
                    (`LH_C(h_1_3_5, ((mappend_lh__d7__d5 t_1_2_8) ys_1_5_6)))))) in
                (let rec h_1_3_6 = ' ' in
                  (fun ys_1_5_7 -> 
                    (`LH_C(h_1_3_6, ((mappend_lh__d7__d5 t_1_2_7) ys_1_5_7)))))) in
                (let rec h_1_3_7 = ' ' in
                  (fun ys_1_5_8 -> 
                    (`LH_C(h_1_3_7, ((mappend_lh__d7__d5 t_1_2_6) ys_1_5_8)))))) in
                (let rec h_1_3_8 = '|' in
                  (fun ys_1_5_9 -> 
                    (`LH_C(h_1_3_8, ((mappend_lh__d7__d5 t_1_2_5) ys_1_5_9)))))) in
                (let rec h_1_3_9 = ' ' in
                  (fun ys_1_6_0 -> 
                    (`LH_C(h_1_3_9, ((mappend_lh__d7__d5 t_1_2_4) ys_1_6_0)))))) in
                (let rec h_1_4_0 = 'e' in
                  (fun ys_1_6_1 -> 
                    (`LH_C(h_1_4_0, ((mappend_lh__d7__d5 t_1_2_3) ys_1_6_1)))))) in
                (let rec h_1_4_1 = 'g' in
                  (fun ys_1_6_2 -> 
                    (`LH_C(h_1_4_1, ((mappend_lh__d7__d5 t_1_2_2) ys_1_6_2)))))) in
                (let rec h_1_4_2 = 'd' in
                  (fun ys_1_6_3 -> 
                    (`LH_C(h_1_4_2, ((mappend_lh__d7__d5 t_1_2_1) ys_1_6_3)))))) in
                (let rec h_1_4_3 = 'E' in
                  (fun ys_1_6_4 -> 
                    (`LH_C(h_1_4_3, ((mappend_lh__d7__d5 t_1_2_0) ys_1_6_4)))))) in
                (let rec h_1_4_4 = ' ' in
                  (fun ys_1_6_5 -> 
                    (`LH_C(h_1_4_4, ((mappend_lh__d7__d5 t_1_1_9) ys_1_6_5)))))) in
                (let rec h_1_4_5 = 'e' in
                  (fun ys_1_6_6 -> 
                    (`LH_C(h_1_4_5, ((mappend_lh__d7__d5 t_1_1_8) ys_1_6_6)))))) in
                (let rec h_1_4_6 = 'h' in
                  (fun ys_1_6_7 -> 
                    (`LH_C(h_1_4_6, ((mappend_lh__d7__d5 t_1_1_7) ys_1_6_7)))))) in
                (let rec h_1_4_7 = 'T' in
                  (fun ys_1_6_8 -> 
                    (`LH_C(h_1_4_7, ((mappend_lh__d7__d5 t_1_1_6) ys_1_6_8))))))) _lh_writeItem_arg3_1)
            | `RightBank -> 
              ((mappend_lh__d7__d6 (let rec t_1_4_8 = (let rec t_1_4_9 = (let rec t_1_5_0 = (let rec t_1_5_1 = (let rec t_1_5_2 = (let rec t_1_5_3 = (let rec t_1_5_4 = (let rec t_1_5_5 = (let rec t_1_5_6 = (let rec t_1_5_7 = (let rec t_1_5_8 = (let rec t_1_5_9 = (let rec t_1_6_0 = (let rec t_1_6_1 = (let rec t_1_6_2 = (let rec t_1_6_3 = (let rec t_1_6_4 = (let rec t_1_6_5 = (let rec t_1_6_6 = (let rec t_1_6_7 = (let rec t_1_6_8 = (let rec t_1_6_9 = (let rec t_1_7_0 = (let rec t_1_7_1 = (let rec t_1_7_2 = (let rec t_1_7_3 = (let rec t_1_7_4 = (let rec t_1_7_5 = (let rec t_1_7_6 = (let rec t_1_7_7 = (let rec t_1_7_8 = (let rec t_1_7_9 = (let rec t_1_8_0 = (let rec t_1_8_1 = (let rec t_1_8_2 = (let rec t_1_8_3 = (let rec t_1_8_4 = (let rec t_1_8_5 = (let rec t_1_8_6 = (let rec t_1_8_7 = (let rec t_1_8_8 = (fun ys_1_6_9 -> 
                ys_1_6_9) in
                (let rec h_1_4_8 = '|' in
                  (fun ys_1_7_0 -> 
                    (`LH_C(h_1_4_8, ((mappend_lh__d7__d6 t_1_8_8) ys_1_7_0)))))) in
                (let rec h_1_4_9 = 'e' in
                  (fun ys_1_7_1 -> 
                    (`LH_C(h_1_4_9, ((mappend_lh__d7__d6 t_1_8_7) ys_1_7_1)))))) in
                (let rec h_1_5_0 = 'g' in
                  (fun ys_1_7_2 -> 
                    (`LH_C(h_1_5_0, ((mappend_lh__d7__d6 t_1_8_6) ys_1_7_2)))))) in
                (let rec h_1_5_1 = 'd' in
                  (fun ys_1_7_3 -> 
                    (`LH_C(h_1_5_1, ((mappend_lh__d7__d6 t_1_8_5) ys_1_7_3)))))) in
                (let rec h_1_5_2 = 'E' in
                  (fun ys_1_7_4 -> 
                    (`LH_C(h_1_5_2, ((mappend_lh__d7__d6 t_1_8_4) ys_1_7_4)))))) in
                (let rec h_1_5_3 = ' ' in
                  (fun ys_1_7_5 -> 
                    (`LH_C(h_1_5_3, ((mappend_lh__d7__d6 t_1_8_3) ys_1_7_5)))))) in
                (let rec h_1_5_4 = 'e' in
                  (fun ys_1_7_6 -> 
                    (`LH_C(h_1_5_4, ((mappend_lh__d7__d6 t_1_8_2) ys_1_7_6)))))) in
                (let rec h_1_5_5 = 'h' in
                  (fun ys_1_7_7 -> 
                    (`LH_C(h_1_5_5, ((mappend_lh__d7__d6 t_1_8_1) ys_1_7_7)))))) in
                (let rec h_1_5_6 = 'T' in
                  (fun ys_1_7_8 -> 
                    (`LH_C(h_1_5_6, ((mappend_lh__d7__d6 t_1_8_0) ys_1_7_8)))))) in
                (let rec h_1_5_7 = ' ' in
                  (fun ys_1_7_9 -> 
                    (`LH_C(h_1_5_7, ((mappend_lh__d7__d6 t_1_7_9) ys_1_7_9)))))) in
                (let rec h_1_5_8 = '|' in
                  (fun ys_1_8_0 -> 
                    (`LH_C(h_1_5_8, ((mappend_lh__d7__d6 t_1_7_8) ys_1_8_0)))))) in
                (let rec h_1_5_9 = ' ' in
                  (fun ys_1_8_1 -> 
                    (`LH_C(h_1_5_9, ((mappend_lh__d7__d6 t_1_7_7) ys_1_8_1)))))) in
                (let rec h_1_6_0 = ' ' in
                  (fun ys_1_8_2 -> 
                    (`LH_C(h_1_6_0, ((mappend_lh__d7__d6 t_1_7_6) ys_1_8_2)))))) in
                (let rec h_1_6_1 = ' ' in
                  (fun ys_1_8_3 -> 
                    (`LH_C(h_1_6_1, ((mappend_lh__d7__d6 t_1_7_5) ys_1_8_3)))))) in
                (let rec h_1_6_2 = ' ' in
                  (fun ys_1_8_4 -> 
                    (`LH_C(h_1_6_2, ((mappend_lh__d7__d6 t_1_7_4) ys_1_8_4)))))) in
                (let rec h_1_6_3 = ' ' in
                  (fun ys_1_8_5 -> 
                    (`LH_C(h_1_6_3, ((mappend_lh__d7__d6 t_1_7_3) ys_1_8_5)))))) in
                (let rec h_1_6_4 = ' ' in
                  (fun ys_1_8_6 -> 
                    (`LH_C(h_1_6_4, ((mappend_lh__d7__d6 t_1_7_2) ys_1_8_6)))))) in
                (let rec h_1_6_5 = ' ' in
                  (fun ys_1_8_7 -> 
                    (`LH_C(h_1_6_5, ((mappend_lh__d7__d6 t_1_7_1) ys_1_8_7)))))) in
                (let rec h_1_6_6 = ' ' in
                  (fun ys_1_8_8 -> 
                    (`LH_C(h_1_6_6, ((mappend_lh__d7__d6 t_1_7_0) ys_1_8_8)))))) in
                (let rec h_1_6_7 = ' ' in
                  (fun ys_1_8_9 -> 
                    (`LH_C(h_1_6_7, ((mappend_lh__d7__d6 t_1_6_9) ys_1_8_9)))))) in
                (let rec h_1_6_8 = ' ' in
                  (fun ys_1_9_0 -> 
                    (`LH_C(h_1_6_8, ((mappend_lh__d7__d6 t_1_6_8) ys_1_9_0)))))) in
                (let rec h_1_6_9 = ' ' in
                  (fun ys_1_9_1 -> 
                    (`LH_C(h_1_6_9, ((mappend_lh__d7__d6 t_1_6_7) ys_1_9_1)))))) in
                (let rec h_1_7_0 = ' ' in
                  (fun ys_1_9_2 -> 
                    (`LH_C(h_1_7_0, ((mappend_lh__d7__d6 t_1_6_6) ys_1_9_2)))))) in
                (let rec h_1_7_1 = ' ' in
                  (fun ys_1_9_3 -> 
                    (`LH_C(h_1_7_1, ((mappend_lh__d7__d6 t_1_6_5) ys_1_9_3)))))) in
                (let rec h_1_7_2 = ' ' in
                  (fun ys_1_9_4 -> 
                    (`LH_C(h_1_7_2, ((mappend_lh__d7__d6 t_1_6_4) ys_1_9_4)))))) in
                (let rec h_1_7_3 = ' ' in
                  (fun ys_1_9_5 -> 
                    (`LH_C(h_1_7_3, ((mappend_lh__d7__d6 t_1_6_3) ys_1_9_5)))))) in
                (let rec h_1_7_4 = ' ' in
                  (fun ys_1_9_6 -> 
                    (`LH_C(h_1_7_4, ((mappend_lh__d7__d6 t_1_6_2) ys_1_9_6)))))) in
                (let rec h_1_7_5 = ' ' in
                  (fun ys_1_9_7 -> 
                    (`LH_C(h_1_7_5, ((mappend_lh__d7__d6 t_1_6_1) ys_1_9_7)))))) in
                (let rec h_1_7_6 = ' ' in
                  (fun ys_1_9_8 -> 
                    (`LH_C(h_1_7_6, ((mappend_lh__d7__d6 t_1_6_0) ys_1_9_8)))))) in
                (let rec h_1_7_7 = ' ' in
                  (fun ys_1_9_9 -> 
                    (`LH_C(h_1_7_7, ((mappend_lh__d7__d6 t_1_5_9) ys_1_9_9)))))) in
                (let rec h_1_7_8 = ' ' in
                  (fun ys_2_0_0 -> 
                    (`LH_C(h_1_7_8, ((mappend_lh__d7__d6 t_1_5_8) ys_2_0_0)))))) in
                (let rec h_1_7_9 = '|' in
                  (fun ys_2_0_1 -> 
                    (`LH_C(h_1_7_9, ((mappend_lh__d7__d6 t_1_5_7) ys_2_0_1)))))) in
                (let rec h_1_8_0 = ' ' in
                  (fun ys_2_0_2 -> 
                    (`LH_C(h_1_8_0, ((mappend_lh__d7__d6 t_1_5_6) ys_2_0_2)))))) in
                (let rec h_1_8_1 = ' ' in
                  (fun ys_2_0_3 -> 
                    (`LH_C(h_1_8_1, ((mappend_lh__d7__d6 t_1_5_5) ys_2_0_3)))))) in
                (let rec h_1_8_2 = ' ' in
                  (fun ys_2_0_4 -> 
                    (`LH_C(h_1_8_2, ((mappend_lh__d7__d6 t_1_5_4) ys_2_0_4)))))) in
                (let rec h_1_8_3 = ' ' in
                  (fun ys_2_0_5 -> 
                    (`LH_C(h_1_8_3, ((mappend_lh__d7__d6 t_1_5_3) ys_2_0_5)))))) in
                (let rec h_1_8_4 = ' ' in
                  (fun ys_2_0_6 -> 
                    (`LH_C(h_1_8_4, ((mappend_lh__d7__d6 t_1_5_2) ys_2_0_6)))))) in
                (let rec h_1_8_5 = ' ' in
                  (fun ys_2_0_7 -> 
                    (`LH_C(h_1_8_5, ((mappend_lh__d7__d6 t_1_5_1) ys_2_0_7)))))) in
                (let rec h_1_8_6 = ' ' in
                  (fun ys_2_0_8 -> 
                    (`LH_C(h_1_8_6, ((mappend_lh__d7__d6 t_1_5_0) ys_2_0_8)))))) in
                (let rec h_1_8_7 = ' ' in
                  (fun ys_2_0_9 -> 
                    (`LH_C(h_1_8_7, ((mappend_lh__d7__d6 t_1_4_9) ys_2_0_9)))))) in
                (let rec h_1_8_8 = ' ' in
                  (fun ys_2_1_0 -> 
                    (`LH_C(h_1_8_8, ((mappend_lh__d7__d6 t_1_4_8) ys_2_1_0))))))) _lh_writeItem_arg3_1)
            | _ -> 
              (failwith "error")))) (edgePos_lh__d4__d0 _lh_writeState_arg1_0)) _lh_funcomp_x_3))) (((writeItem_lh__d1__d2 (fun _lh_writeItem_arg2_2 _lh_writeItem_arg3_2 -> 
        (match _lh_writeItem_arg2_2 with
          | `LeftBank -> 
            ((mappend_lh__d7__d7 (let rec t_1_8_9 = (let rec t_1_9_0 = (let rec t_1_9_1 = (let rec t_1_9_2 = (let rec t_1_9_3 = (let rec t_1_9_4 = (let rec t_1_9_5 = (let rec t_1_9_6 = (let rec t_1_9_7 = (let rec t_1_9_8 = (let rec t_1_9_9 = (let rec t_2_0_0 = (let rec t_2_0_1 = (let rec t_2_0_2 = (let rec t_2_0_3 = (let rec t_2_0_4 = (let rec t_2_0_5 = (let rec t_2_0_6 = (let rec t_2_0_7 = (let rec t_2_0_8 = (let rec t_2_0_9 = (let rec t_2_1_0 = (let rec t_2_1_1 = (let rec t_2_1_2 = (let rec t_2_1_3 = (let rec t_2_1_4 = (let rec t_2_1_5 = (let rec t_2_1_6 = (let rec t_2_1_7 = (let rec t_2_1_8 = (let rec t_2_1_9 = (let rec t_2_2_0 = (fun ys_2_1_1 -> 
              ys_2_1_1) in
              (let rec h_1_8_9 = '|' in
                (fun ys_2_1_2 -> 
                  (`LH_C(h_1_8_9, ((mappend_lh__d7__d7 t_2_2_0) ys_2_1_2)))))) in
              (let rec h_1_9_0 = '|' in
                (fun ys_2_1_3 -> 
                  (`LH_C(h_1_9_0, ((mappend_lh__d7__d7 t_2_1_9) ys_2_1_3)))))) in
              (let rec h_1_9_1 = ' ' in
                (fun ys_2_1_4 -> 
                  (`LH_C(h_1_9_1, ((mappend_lh__d7__d7 t_2_1_8) ys_2_1_4)))))) in
              (let rec h_1_9_2 = ' ' in
                (fun ys_2_1_5 -> 
                  (`LH_C(h_1_9_2, ((mappend_lh__d7__d7 t_2_1_7) ys_2_1_5)))))) in
              (let rec h_1_9_3 = ' ' in
                (fun ys_2_1_6 -> 
                  (`LH_C(h_1_9_3, ((mappend_lh__d7__d7 t_2_1_6) ys_2_1_6)))))) in
              (let rec h_1_9_4 = ' ' in
                (fun ys_2_1_7 -> 
                  (`LH_C(h_1_9_4, ((mappend_lh__d7__d7 t_2_1_5) ys_2_1_7)))))) in
              (let rec h_1_9_5 = ' ' in
                (fun ys_2_1_8 -> 
                  (`LH_C(h_1_9_5, ((mappend_lh__d7__d7 t_2_1_4) ys_2_1_8)))))) in
              (let rec h_1_9_6 = ' ' in
                (fun ys_2_1_9 -> 
                  (`LH_C(h_1_9_6, ((mappend_lh__d7__d7 t_2_1_3) ys_2_1_9)))))) in
              (let rec h_1_9_7 = ' ' in
                (fun ys_2_2_0 -> 
                  (`LH_C(h_1_9_7, ((mappend_lh__d7__d7 t_2_1_2) ys_2_2_0)))))) in
              (let rec h_1_9_8 = ' ' in
                (fun ys_2_2_1 -> 
                  (`LH_C(h_1_9_8, ((mappend_lh__d7__d7 t_2_1_1) ys_2_2_1)))))) in
              (let rec h_1_9_9 = ' ' in
                (fun ys_2_2_2 -> 
                  (`LH_C(h_1_9_9, ((mappend_lh__d7__d7 t_2_1_0) ys_2_2_2)))))) in
              (let rec h_2_0_0 = ' ' in
                (fun ys_2_2_3 -> 
                  (`LH_C(h_2_0_0, ((mappend_lh__d7__d7 t_2_0_9) ys_2_2_3)))))) in
              (let rec h_2_0_1 = ' ' in
                (fun ys_2_2_4 -> 
                  (`LH_C(h_2_0_1, ((mappend_lh__d7__d7 t_2_0_8) ys_2_2_4)))))) in
              (let rec h_2_0_2 = ' ' in
                (fun ys_2_2_5 -> 
                  (`LH_C(h_2_0_2, ((mappend_lh__d7__d7 t_2_0_7) ys_2_2_5)))))) in
              (let rec h_2_0_3 = ' ' in
                (fun ys_2_2_6 -> 
                  (`LH_C(h_2_0_3, ((mappend_lh__d7__d7 t_2_0_6) ys_2_2_6)))))) in
              (let rec h_2_0_4 = ' ' in
                (fun ys_2_2_7 -> 
                  (`LH_C(h_2_0_4, ((mappend_lh__d7__d7 t_2_0_5) ys_2_2_7)))))) in
              (let rec h_2_0_5 = ' ' in
                (fun ys_2_2_8 -> 
                  (`LH_C(h_2_0_5, ((mappend_lh__d7__d7 t_2_0_4) ys_2_2_8)))))) in
              (let rec h_2_0_6 = ' ' in
                (fun ys_2_2_9 -> 
                  (`LH_C(h_2_0_6, ((mappend_lh__d7__d7 t_2_0_3) ys_2_2_9)))))) in
              (let rec h_2_0_7 = ' ' in
                (fun ys_2_3_0 -> 
                  (`LH_C(h_2_0_7, ((mappend_lh__d7__d7 t_2_0_2) ys_2_3_0)))))) in
              (let rec h_2_0_8 = ' ' in
                (fun ys_2_3_1 -> 
                  (`LH_C(h_2_0_8, ((mappend_lh__d7__d7 t_2_0_1) ys_2_3_1)))))) in
              (let rec h_2_0_9 = ' ' in
                (fun ys_2_3_2 -> 
                  (`LH_C(h_2_0_9, ((mappend_lh__d7__d7 t_2_0_0) ys_2_3_2)))))) in
              (let rec h_2_1_0 = ' ' in
                (fun ys_2_3_3 -> 
                  (`LH_C(h_2_1_0, ((mappend_lh__d7__d7 t_1_9_9) ys_2_3_3)))))) in
              (let rec h_2_1_1 = '|' in
                (fun ys_2_3_4 -> 
                  (`LH_C(h_2_1_1, ((mappend_lh__d7__d7 t_1_9_8) ys_2_3_4)))))) in
              (let rec h_2_1_2 = ' ' in
                (fun ys_2_3_5 -> 
                  (`LH_C(h_2_1_2, ((mappend_lh__d7__d7 t_1_9_7) ys_2_3_5)))))) in
              (let rec h_2_1_3 = 'y' in
                (fun ys_2_3_6 -> 
                  (`LH_C(h_2_1_3, ((mappend_lh__d7__d7 t_1_9_6) ys_2_3_6)))))) in
              (let rec h_2_1_4 = 'r' in
                (fun ys_2_3_7 -> 
                  (`LH_C(h_2_1_4, ((mappend_lh__d7__d7 t_1_9_5) ys_2_3_7)))))) in
              (let rec h_2_1_5 = 'r' in
                (fun ys_2_3_8 -> 
                  (`LH_C(h_2_1_5, ((mappend_lh__d7__d7 t_1_9_4) ys_2_3_8)))))) in
              (let rec h_2_1_6 = 'a' in
                (fun ys_2_3_9 -> 
                  (`LH_C(h_2_1_6, ((mappend_lh__d7__d7 t_1_9_3) ys_2_3_9)))))) in
              (let rec h_2_1_7 = 'L' in
                (fun ys_2_4_0 -> 
                  (`LH_C(h_2_1_7, ((mappend_lh__d7__d7 t_1_9_2) ys_2_4_0)))))) in
              (let rec h_2_1_8 = ' ' in
                (fun ys_2_4_1 -> 
                  (`LH_C(h_2_1_8, ((mappend_lh__d7__d7 t_1_9_1) ys_2_4_1)))))) in
              (let rec h_2_1_9 = ' ' in
                (fun ys_2_4_2 -> 
                  (`LH_C(h_2_1_9, ((mappend_lh__d7__d7 t_1_9_0) ys_2_4_2)))))) in
              (let rec h_2_2_0 = ' ' in
                (fun ys_2_4_3 -> 
                  (`LH_C(h_2_2_0, ((mappend_lh__d7__d7 t_1_8_9) ys_2_4_3))))))) _lh_writeItem_arg3_2)
          | `RightBank -> 
            ((mappend_lh__d7__d8 (let rec t_2_2_1 = (let rec t_2_2_2 = (let rec t_2_2_3 = (let rec t_2_2_4 = (let rec t_2_2_5 = (let rec t_2_2_6 = (let rec t_2_2_7 = (let rec t_2_2_8 = (let rec t_2_2_9 = (let rec t_2_3_0 = (let rec t_2_3_1 = (let rec t_2_3_2 = (let rec t_2_3_3 = (let rec t_2_3_4 = (let rec t_2_3_5 = (let rec t_2_3_6 = (let rec t_2_3_7 = (let rec t_2_3_8 = (let rec t_2_3_9 = (let rec t_2_4_0 = (let rec t_2_4_1 = (let rec t_2_4_2 = (let rec t_2_4_3 = (let rec t_2_4_4 = (let rec t_2_4_5 = (let rec t_2_4_6 = (let rec t_2_4_7 = (let rec t_2_4_8 = (let rec t_2_4_9 = (let rec t_2_5_0 = (let rec t_2_5_1 = (let rec t_2_5_2 = (let rec t_2_5_3 = (let rec t_2_5_4 = (let rec t_2_5_5 = (let rec t_2_5_6 = (let rec t_2_5_7 = (let rec t_2_5_8 = (fun ys_2_4_4 -> 
              ys_2_4_4) in
              (let rec h_2_2_1 = '|' in
                (fun ys_2_4_5 -> 
                  (`LH_C(h_2_2_1, ((mappend_lh__d7__d8 t_2_5_8) ys_2_4_5)))))) in
              (let rec h_2_2_2 = 'y' in
                (fun ys_2_4_6 -> 
                  (`LH_C(h_2_2_2, ((mappend_lh__d7__d8 t_2_5_7) ys_2_4_6)))))) in
              (let rec h_2_2_3 = 'r' in
                (fun ys_2_4_7 -> 
                  (`LH_C(h_2_2_3, ((mappend_lh__d7__d8 t_2_5_6) ys_2_4_7)))))) in
              (let rec h_2_2_4 = 'r' in
                (fun ys_2_4_8 -> 
                  (`LH_C(h_2_2_4, ((mappend_lh__d7__d8 t_2_5_5) ys_2_4_8)))))) in
              (let rec h_2_2_5 = 'a' in
                (fun ys_2_4_9 -> 
                  (`LH_C(h_2_2_5, ((mappend_lh__d7__d8 t_2_5_4) ys_2_4_9)))))) in
              (let rec h_2_2_6 = 'L' in
                (fun ys_2_5_0 -> 
                  (`LH_C(h_2_2_6, ((mappend_lh__d7__d8 t_2_5_3) ys_2_5_0)))))) in
              (let rec h_2_2_7 = ' ' in
                (fun ys_2_5_1 -> 
                  (`LH_C(h_2_2_7, ((mappend_lh__d7__d8 t_2_5_2) ys_2_5_1)))))) in
              (let rec h_2_2_8 = '|' in
                (fun ys_2_5_2 -> 
                  (`LH_C(h_2_2_8, ((mappend_lh__d7__d8 t_2_5_1) ys_2_5_2)))))) in
              (let rec h_2_2_9 = ' ' in
                (fun ys_2_5_3 -> 
                  (`LH_C(h_2_2_9, ((mappend_lh__d7__d8 t_2_5_0) ys_2_5_3)))))) in
              (let rec h_2_3_0 = ' ' in
                (fun ys_2_5_4 -> 
                  (`LH_C(h_2_3_0, ((mappend_lh__d7__d8 t_2_4_9) ys_2_5_4)))))) in
              (let rec h_2_3_1 = ' ' in
                (fun ys_2_5_5 -> 
                  (`LH_C(h_2_3_1, ((mappend_lh__d7__d8 t_2_4_8) ys_2_5_5)))))) in
              (let rec h_2_3_2 = ' ' in
                (fun ys_2_5_6 -> 
                  (`LH_C(h_2_3_2, ((mappend_lh__d7__d8 t_2_4_7) ys_2_5_6)))))) in
              (let rec h_2_3_3 = ' ' in
                (fun ys_2_5_7 -> 
                  (`LH_C(h_2_3_3, ((mappend_lh__d7__d8 t_2_4_6) ys_2_5_7)))))) in
              (let rec h_2_3_4 = ' ' in
                (fun ys_2_5_8 -> 
                  (`LH_C(h_2_3_4, ((mappend_lh__d7__d8 t_2_4_5) ys_2_5_8)))))) in
              (let rec h_2_3_5 = ' ' in
                (fun ys_2_5_9 -> 
                  (`LH_C(h_2_3_5, ((mappend_lh__d7__d8 t_2_4_4) ys_2_5_9)))))) in
              (let rec h_2_3_6 = ' ' in
                (fun ys_2_6_0 -> 
                  (`LH_C(h_2_3_6, ((mappend_lh__d7__d8 t_2_4_3) ys_2_6_0)))))) in
              (let rec h_2_3_7 = ' ' in
                (fun ys_2_6_1 -> 
                  (`LH_C(h_2_3_7, ((mappend_lh__d7__d8 t_2_4_2) ys_2_6_1)))))) in
              (let rec h_2_3_8 = ' ' in
                (fun ys_2_6_2 -> 
                  (`LH_C(h_2_3_8, ((mappend_lh__d7__d8 t_2_4_1) ys_2_6_2)))))) in
              (let rec h_2_3_9 = ' ' in
                (fun ys_2_6_3 -> 
                  (`LH_C(h_2_3_9, ((mappend_lh__d7__d8 t_2_4_0) ys_2_6_3)))))) in
              (let rec h_2_4_0 = ' ' in
                (fun ys_2_6_4 -> 
                  (`LH_C(h_2_4_0, ((mappend_lh__d7__d8 t_2_3_9) ys_2_6_4)))))) in
              (let rec h_2_4_1 = ' ' in
                (fun ys_2_6_5 -> 
                  (`LH_C(h_2_4_1, ((mappend_lh__d7__d8 t_2_3_8) ys_2_6_5)))))) in
              (let rec h_2_4_2 = ' ' in
                (fun ys_2_6_6 -> 
                  (`LH_C(h_2_4_2, ((mappend_lh__d7__d8 t_2_3_7) ys_2_6_6)))))) in
              (let rec h_2_4_3 = ' ' in
                (fun ys_2_6_7 -> 
                  (`LH_C(h_2_4_3, ((mappend_lh__d7__d8 t_2_3_6) ys_2_6_7)))))) in
              (let rec h_2_4_4 = ' ' in
                (fun ys_2_6_8 -> 
                  (`LH_C(h_2_4_4, ((mappend_lh__d7__d8 t_2_3_5) ys_2_6_8)))))) in
              (let rec h_2_4_5 = ' ' in
                (fun ys_2_6_9 -> 
                  (`LH_C(h_2_4_5, ((mappend_lh__d7__d8 t_2_3_4) ys_2_6_9)))))) in
              (let rec h_2_4_6 = ' ' in
                (fun ys_2_7_0 -> 
                  (`LH_C(h_2_4_6, ((mappend_lh__d7__d8 t_2_3_3) ys_2_7_0)))))) in
              (let rec h_2_4_7 = ' ' in
                (fun ys_2_7_1 -> 
                  (`LH_C(h_2_4_7, ((mappend_lh__d7__d8 t_2_3_2) ys_2_7_1)))))) in
              (let rec h_2_4_8 = ' ' in
                (fun ys_2_7_2 -> 
                  (`LH_C(h_2_4_8, ((mappend_lh__d7__d8 t_2_3_1) ys_2_7_2)))))) in
              (let rec h_2_4_9 = '|' in
                (fun ys_2_7_3 -> 
                  (`LH_C(h_2_4_9, ((mappend_lh__d7__d8 t_2_3_0) ys_2_7_3)))))) in
              (let rec h_2_5_0 = ' ' in
                (fun ys_2_7_4 -> 
                  (`LH_C(h_2_5_0, ((mappend_lh__d7__d8 t_2_2_9) ys_2_7_4)))))) in
              (let rec h_2_5_1 = ' ' in
                (fun ys_2_7_5 -> 
                  (`LH_C(h_2_5_1, ((mappend_lh__d7__d8 t_2_2_8) ys_2_7_5)))))) in
              (let rec h_2_5_2 = ' ' in
                (fun ys_2_7_6 -> 
                  (`LH_C(h_2_5_2, ((mappend_lh__d7__d8 t_2_2_7) ys_2_7_6)))))) in
              (let rec h_2_5_3 = ' ' in
                (fun ys_2_7_7 -> 
                  (`LH_C(h_2_5_3, ((mappend_lh__d7__d8 t_2_2_6) ys_2_7_7)))))) in
              (let rec h_2_5_4 = ' ' in
                (fun ys_2_7_8 -> 
                  (`LH_C(h_2_5_4, ((mappend_lh__d7__d8 t_2_2_5) ys_2_7_8)))))) in
              (let rec h_2_5_5 = ' ' in
                (fun ys_2_7_9 -> 
                  (`LH_C(h_2_5_5, ((mappend_lh__d7__d8 t_2_2_4) ys_2_7_9)))))) in
              (let rec h_2_5_6 = ' ' in
                (fun ys_2_8_0 -> 
                  (`LH_C(h_2_5_6, ((mappend_lh__d7__d8 t_2_2_3) ys_2_8_0)))))) in
              (let rec h_2_5_7 = ' ' in
                (fun ys_2_8_1 -> 
                  (`LH_C(h_2_5_7, ((mappend_lh__d7__d8 t_2_2_2) ys_2_8_1)))))) in
              (let rec h_2_5_8 = ' ' in
                (fun ys_2_8_2 -> 
                  (`LH_C(h_2_5_8, ((mappend_lh__d7__d8 t_2_2_1) ys_2_8_2))))))) _lh_writeItem_arg3_2)
          | _ -> 
            (failwith "error")))) (larryPos_lh__d3__d0 _lh_writeState_arg1_0)) _lh_funcomp_x_2))) (((writeItem_lh__d1__d3 (fun _lh_writeItem_arg2_3 _lh_writeItem_arg3_3 -> 
      (match _lh_writeItem_arg2_3 with
        | `LeftBank -> 
          ((mappend_lh__d7__d9 (let rec t_2_5_9 = (let rec t_2_6_0 = (let rec t_2_6_1 = (let rec t_2_6_2 = (let rec t_2_6_3 = (let rec t_2_6_4 = (let rec t_2_6_5 = (let rec t_2_6_6 = (let rec t_2_6_7 = (let rec t_2_6_8 = (let rec t_2_6_9 = (let rec t_2_7_0 = (let rec t_2_7_1 = (let rec t_2_7_2 = (let rec t_2_7_3 = (let rec t_2_7_4 = (let rec t_2_7_5 = (let rec t_2_7_6 = (let rec t_2_7_7 = (let rec t_2_7_8 = (let rec t_2_7_9 = (let rec t_2_8_0 = (let rec t_2_8_1 = (let rec t_2_8_2 = (let rec t_2_8_3 = (let rec t_2_8_4 = (let rec t_2_8_5 = (let rec t_2_8_6 = (let rec t_2_8_7 = (let rec t_2_8_8 = (let rec t_2_8_9 = (let rec t_2_9_0 = (fun ys_2_8_3 -> 
            ys_2_8_3) in
            (let rec h_2_5_9 = '|' in
              (fun ys_2_8_4 -> 
                (`LH_C(h_2_5_9, ((mappend_lh__d7__d9 t_2_9_0) ys_2_8_4)))))) in
            (let rec h_2_6_0 = '|' in
              (fun ys_2_8_5 -> 
                (`LH_C(h_2_6_0, ((mappend_lh__d7__d9 t_2_8_9) ys_2_8_5)))))) in
            (let rec h_2_6_1 = ' ' in
              (fun ys_2_8_6 -> 
                (`LH_C(h_2_6_1, ((mappend_lh__d7__d9 t_2_8_8) ys_2_8_6)))))) in
            (let rec h_2_6_2 = ' ' in
              (fun ys_2_8_7 -> 
                (`LH_C(h_2_6_2, ((mappend_lh__d7__d9 t_2_8_7) ys_2_8_7)))))) in
            (let rec h_2_6_3 = ' ' in
              (fun ys_2_8_8 -> 
                (`LH_C(h_2_6_3, ((mappend_lh__d7__d9 t_2_8_6) ys_2_8_8)))))) in
            (let rec h_2_6_4 = ' ' in
              (fun ys_2_8_9 -> 
                (`LH_C(h_2_6_4, ((mappend_lh__d7__d9 t_2_8_5) ys_2_8_9)))))) in
            (let rec h_2_6_5 = ' ' in
              (fun ys_2_9_0 -> 
                (`LH_C(h_2_6_5, ((mappend_lh__d7__d9 t_2_8_4) ys_2_9_0)))))) in
            (let rec h_2_6_6 = ' ' in
              (fun ys_2_9_1 -> 
                (`LH_C(h_2_6_6, ((mappend_lh__d7__d9 t_2_8_3) ys_2_9_1)))))) in
            (let rec h_2_6_7 = ' ' in
              (fun ys_2_9_2 -> 
                (`LH_C(h_2_6_7, ((mappend_lh__d7__d9 t_2_8_2) ys_2_9_2)))))) in
            (let rec h_2_6_8 = ' ' in
              (fun ys_2_9_3 -> 
                (`LH_C(h_2_6_8, ((mappend_lh__d7__d9 t_2_8_1) ys_2_9_3)))))) in
            (let rec h_2_6_9 = ' ' in
              (fun ys_2_9_4 -> 
                (`LH_C(h_2_6_9, ((mappend_lh__d7__d9 t_2_8_0) ys_2_9_4)))))) in
            (let rec h_2_7_0 = ' ' in
              (fun ys_2_9_5 -> 
                (`LH_C(h_2_7_0, ((mappend_lh__d7__d9 t_2_7_9) ys_2_9_5)))))) in
            (let rec h_2_7_1 = ' ' in
              (fun ys_2_9_6 -> 
                (`LH_C(h_2_7_1, ((mappend_lh__d7__d9 t_2_7_8) ys_2_9_6)))))) in
            (let rec h_2_7_2 = ' ' in
              (fun ys_2_9_7 -> 
                (`LH_C(h_2_7_2, ((mappend_lh__d7__d9 t_2_7_7) ys_2_9_7)))))) in
            (let rec h_2_7_3 = ' ' in
              (fun ys_2_9_8 -> 
                (`LH_C(h_2_7_3, ((mappend_lh__d7__d9 t_2_7_6) ys_2_9_8)))))) in
            (let rec h_2_7_4 = ' ' in
              (fun ys_2_9_9 -> 
                (`LH_C(h_2_7_4, ((mappend_lh__d7__d9 t_2_7_5) ys_2_9_9)))))) in
            (let rec h_2_7_5 = ' ' in
              (fun ys_3_0_0 -> 
                (`LH_C(h_2_7_5, ((mappend_lh__d7__d9 t_2_7_4) ys_3_0_0)))))) in
            (let rec h_2_7_6 = ' ' in
              (fun ys_3_0_1 -> 
                (`LH_C(h_2_7_6, ((mappend_lh__d7__d9 t_2_7_3) ys_3_0_1)))))) in
            (let rec h_2_7_7 = ' ' in
              (fun ys_3_0_2 -> 
                (`LH_C(h_2_7_7, ((mappend_lh__d7__d9 t_2_7_2) ys_3_0_2)))))) in
            (let rec h_2_7_8 = ' ' in
              (fun ys_3_0_3 -> 
                (`LH_C(h_2_7_8, ((mappend_lh__d7__d9 t_2_7_1) ys_3_0_3)))))) in
            (let rec h_2_7_9 = ' ' in
              (fun ys_3_0_4 -> 
                (`LH_C(h_2_7_9, ((mappend_lh__d7__d9 t_2_7_0) ys_3_0_4)))))) in
            (let rec h_2_8_0 = ' ' in
              (fun ys_3_0_5 -> 
                (`LH_C(h_2_8_0, ((mappend_lh__d7__d9 t_2_6_9) ys_3_0_5)))))) in
            (let rec h_2_8_1 = '|' in
              (fun ys_3_0_6 -> 
                (`LH_C(h_2_8_1, ((mappend_lh__d7__d9 t_2_6_8) ys_3_0_6)))))) in
            (let rec h_2_8_2 = ' ' in
              (fun ys_3_0_7 -> 
                (`LH_C(h_2_8_2, ((mappend_lh__d7__d9 t_2_6_7) ys_3_0_7)))))) in
            (let rec h_2_8_3 = 'm' in
              (fun ys_3_0_8 -> 
                (`LH_C(h_2_8_3, ((mappend_lh__d7__d9 t_2_6_6) ys_3_0_8)))))) in
            (let rec h_2_8_4 = 'a' in
              (fun ys_3_0_9 -> 
                (`LH_C(h_2_8_4, ((mappend_lh__d7__d9 t_2_6_5) ys_3_0_9)))))) in
            (let rec h_2_8_5 = 'd' in
              (fun ys_3_1_0 -> 
                (`LH_C(h_2_8_5, ((mappend_lh__d7__d9 t_2_6_4) ys_3_1_0)))))) in
            (let rec h_2_8_6 = 'A' in
              (fun ys_3_1_1 -> 
                (`LH_C(h_2_8_6, ((mappend_lh__d7__d9 t_2_6_3) ys_3_1_1)))))) in
            (let rec h_2_8_7 = ' ' in
              (fun ys_3_1_2 -> 
                (`LH_C(h_2_8_7, ((mappend_lh__d7__d9 t_2_6_2) ys_3_1_2)))))) in
            (let rec h_2_8_8 = ' ' in
              (fun ys_3_1_3 -> 
                (`LH_C(h_2_8_8, ((mappend_lh__d7__d9 t_2_6_1) ys_3_1_3)))))) in
            (let rec h_2_8_9 = ' ' in
              (fun ys_3_1_4 -> 
                (`LH_C(h_2_8_9, ((mappend_lh__d7__d9 t_2_6_0) ys_3_1_4)))))) in
            (let rec h_2_9_0 = ' ' in
              (fun ys_3_1_5 -> 
                (`LH_C(h_2_9_0, ((mappend_lh__d7__d9 t_2_5_9) ys_3_1_5))))))) _lh_writeItem_arg3_3)
        | `RightBank -> 
          ((mappend_lh__d7__d0 (let rec t_2_9_1 = (let rec t_2_9_2 = (let rec t_2_9_3 = (let rec t_2_9_4 = (let rec t_2_9_5 = (let rec t_2_9_6 = (let rec t_2_9_7 = (let rec t_2_9_8 = (let rec t_2_9_9 = (let rec t_3_0_0 = (let rec t_3_0_1 = (let rec t_3_0_2 = (let rec t_3_0_3 = (let rec t_3_0_4 = (let rec t_3_0_5 = (let rec t_3_0_6 = (let rec t_3_0_7 = (let rec t_3_0_8 = (let rec t_3_0_9 = (let rec t_3_1_0 = (let rec t_3_1_1 = (let rec t_3_1_2 = (let rec t_3_1_3 = (let rec t_3_1_4 = (let rec t_3_1_5 = (let rec t_3_1_6 = (let rec t_3_1_7 = (let rec t_3_1_8 = (let rec t_3_1_9 = (let rec t_3_2_0 = (let rec t_3_2_1 = (let rec t_3_2_2 = (let rec t_3_2_3 = (let rec t_3_2_4 = (let rec t_3_2_5 = (let rec t_3_2_6 = (let rec t_3_2_7 = (fun ys_3_1_6 -> 
            ys_3_1_6) in
            (let rec h_2_9_1 = '|' in
              (fun ys_3_1_7 -> 
                (`LH_C(h_2_9_1, ((mappend_lh__d7__d0 t_3_2_7) ys_3_1_7)))))) in
            (let rec h_2_9_2 = 'm' in
              (fun ys_3_1_8 -> 
                (`LH_C(h_2_9_2, ((mappend_lh__d7__d0 t_3_2_6) ys_3_1_8)))))) in
            (let rec h_2_9_3 = 'a' in
              (fun ys_3_1_9 -> 
                (`LH_C(h_2_9_3, ((mappend_lh__d7__d0 t_3_2_5) ys_3_1_9)))))) in
            (let rec h_2_9_4 = 'd' in
              (fun ys_3_2_0 -> 
                (`LH_C(h_2_9_4, ((mappend_lh__d7__d0 t_3_2_4) ys_3_2_0)))))) in
            (let rec h_2_9_5 = 'A' in
              (fun ys_3_2_1 -> 
                (`LH_C(h_2_9_5, ((mappend_lh__d7__d0 t_3_2_3) ys_3_2_1)))))) in
            (let rec h_2_9_6 = ' ' in
              (fun ys_3_2_2 -> 
                (`LH_C(h_2_9_6, ((mappend_lh__d7__d0 t_3_2_2) ys_3_2_2)))))) in
            (let rec h_2_9_7 = '|' in
              (fun ys_3_2_3 -> 
                (`LH_C(h_2_9_7, ((mappend_lh__d7__d0 t_3_2_1) ys_3_2_3)))))) in
            (let rec h_2_9_8 = ' ' in
              (fun ys_3_2_4 -> 
                (`LH_C(h_2_9_8, ((mappend_lh__d7__d0 t_3_2_0) ys_3_2_4)))))) in
            (let rec h_2_9_9 = ' ' in
              (fun ys_3_2_5 -> 
                (`LH_C(h_2_9_9, ((mappend_lh__d7__d0 t_3_1_9) ys_3_2_5)))))) in
            (let rec h_3_0_0 = ' ' in
              (fun ys_3_2_6 -> 
                (`LH_C(h_3_0_0, ((mappend_lh__d7__d0 t_3_1_8) ys_3_2_6)))))) in
            (let rec h_3_0_1 = ' ' in
              (fun ys_3_2_7 -> 
                (`LH_C(h_3_0_1, ((mappend_lh__d7__d0 t_3_1_7) ys_3_2_7)))))) in
            (let rec h_3_0_2 = ' ' in
              (fun ys_3_2_8 -> 
                (`LH_C(h_3_0_2, ((mappend_lh__d7__d0 t_3_1_6) ys_3_2_8)))))) in
            (let rec h_3_0_3 = ' ' in
              (fun ys_3_2_9 -> 
                (`LH_C(h_3_0_3, ((mappend_lh__d7__d0 t_3_1_5) ys_3_2_9)))))) in
            (let rec h_3_0_4 = ' ' in
              (fun ys_3_3_0 -> 
                (`LH_C(h_3_0_4, ((mappend_lh__d7__d0 t_3_1_4) ys_3_3_0)))))) in
            (let rec h_3_0_5 = ' ' in
              (fun ys_3_3_1 -> 
                (`LH_C(h_3_0_5, ((mappend_lh__d7__d0 t_3_1_3) ys_3_3_1)))))) in
            (let rec h_3_0_6 = ' ' in
              (fun ys_3_3_2 -> 
                (`LH_C(h_3_0_6, ((mappend_lh__d7__d0 t_3_1_2) ys_3_3_2)))))) in
            (let rec h_3_0_7 = ' ' in
              (fun ys_3_3_3 -> 
                (`LH_C(h_3_0_7, ((mappend_lh__d7__d0 t_3_1_1) ys_3_3_3)))))) in
            (let rec h_3_0_8 = ' ' in
              (fun ys_3_3_4 -> 
                (`LH_C(h_3_0_8, ((mappend_lh__d7__d0 t_3_1_0) ys_3_3_4)))))) in
            (let rec h_3_0_9 = ' ' in
              (fun ys_3_3_5 -> 
                (`LH_C(h_3_0_9, ((mappend_lh__d7__d0 t_3_0_9) ys_3_3_5)))))) in
            (let rec h_3_1_0 = ' ' in
              (fun ys_3_3_6 -> 
                (`LH_C(h_3_1_0, ((mappend_lh__d7__d0 t_3_0_8) ys_3_3_6)))))) in
            (let rec h_3_1_1 = ' ' in
              (fun ys_3_3_7 -> 
                (`LH_C(h_3_1_1, ((mappend_lh__d7__d0 t_3_0_7) ys_3_3_7)))))) in
            (let rec h_3_1_2 = ' ' in
              (fun ys_3_3_8 -> 
                (`LH_C(h_3_1_2, ((mappend_lh__d7__d0 t_3_0_6) ys_3_3_8)))))) in
            (let rec h_3_1_3 = ' ' in
              (fun ys_3_3_9 -> 
                (`LH_C(h_3_1_3, ((mappend_lh__d7__d0 t_3_0_5) ys_3_3_9)))))) in
            (let rec h_3_1_4 = ' ' in
              (fun ys_3_4_0 -> 
                (`LH_C(h_3_1_4, ((mappend_lh__d7__d0 t_3_0_4) ys_3_4_0)))))) in
            (let rec h_3_1_5 = ' ' in
              (fun ys_3_4_1 -> 
                (`LH_C(h_3_1_5, ((mappend_lh__d7__d0 t_3_0_3) ys_3_4_1)))))) in
            (let rec h_3_1_6 = ' ' in
              (fun ys_3_4_2 -> 
                (`LH_C(h_3_1_6, ((mappend_lh__d7__d0 t_3_0_2) ys_3_4_2)))))) in
            (let rec h_3_1_7 = ' ' in
              (fun ys_3_4_3 -> 
                (`LH_C(h_3_1_7, ((mappend_lh__d7__d0 t_3_0_1) ys_3_4_3)))))) in
            (let rec h_3_1_8 = '|' in
              (fun ys_3_4_4 -> 
                (`LH_C(h_3_1_8, ((mappend_lh__d7__d0 t_3_0_0) ys_3_4_4)))))) in
            (let rec h_3_1_9 = ' ' in
              (fun ys_3_4_5 -> 
                (`LH_C(h_3_1_9, ((mappend_lh__d7__d0 t_2_9_9) ys_3_4_5)))))) in
            (let rec h_3_2_0 = ' ' in
              (fun ys_3_4_6 -> 
                (`LH_C(h_3_2_0, ((mappend_lh__d7__d0 t_2_9_8) ys_3_4_6)))))) in
            (let rec h_3_2_1 = ' ' in
              (fun ys_3_4_7 -> 
                (`LH_C(h_3_2_1, ((mappend_lh__d7__d0 t_2_9_7) ys_3_4_7)))))) in
            (let rec h_3_2_2 = ' ' in
              (fun ys_3_4_8 -> 
                (`LH_C(h_3_2_2, ((mappend_lh__d7__d0 t_2_9_6) ys_3_4_8)))))) in
            (let rec h_3_2_3 = ' ' in
              (fun ys_3_4_9 -> 
                (`LH_C(h_3_2_3, ((mappend_lh__d7__d0 t_2_9_5) ys_3_4_9)))))) in
            (let rec h_3_2_4 = ' ' in
              (fun ys_3_5_0 -> 
                (`LH_C(h_3_2_4, ((mappend_lh__d7__d0 t_2_9_4) ys_3_5_0)))))) in
            (let rec h_3_2_5 = ' ' in
              (fun ys_3_5_1 -> 
                (`LH_C(h_3_2_5, ((mappend_lh__d7__d0 t_2_9_3) ys_3_5_1)))))) in
            (let rec h_3_2_6 = ' ' in
              (fun ys_3_5_2 -> 
                (`LH_C(h_3_2_6, ((mappend_lh__d7__d0 t_2_9_2) ys_3_5_2)))))) in
            (let rec h_3_2_7 = ' ' in
              (fun ys_3_5_3 -> 
                (`LH_C(h_3_2_7, ((mappend_lh__d7__d0 t_2_9_1) ys_3_5_3))))))) _lh_writeItem_arg3_3)
        | _ -> 
          (failwith "error")))) (adamPos_lh__d3__d0 _lh_writeState_arg1_0)) _lh_funcomp_x_1))) ((fun s_1 -> 
    ((mappend_lh__d7__d1 (let rec t_3_2_8 = (let rec t_3_2_9 = (let rec t_3_3_0 = (let rec t_3_3_1 = (let rec t_3_3_2 = (let rec t_3_3_3 = (let rec t_3_3_4 = (let rec t_3_3_5 = (let rec t_3_3_6 = (let rec t_3_3_7 = (let rec t_3_3_8 = (let rec t_3_3_9 = (let rec t_3_4_0 = (let rec t_3_4_1 = (let rec t_3_4_2 = (let rec t_3_4_3 = (let rec t_3_4_4 = (let rec t_3_4_5 = (let rec t_3_4_6 = (let rec t_3_4_7 = (let rec t_3_4_8 = (let rec t_3_4_9 = (let rec t_3_5_0 = (let rec t_3_5_1 = (let rec t_3_5_2 = (let rec t_3_5_3 = (let rec t_3_5_4 = (let rec t_3_5_5 = (let rec t_3_5_6 = (let rec t_3_5_7 = (let rec t_3_5_8 = (let rec t_3_5_9 = (let rec t_3_6_0 = (let rec t_3_6_1 = (let rec t_3_6_2 = (let rec t_3_6_3 = (let rec t_3_6_4 = (let rec t_3_6_5 = (let rec t_3_6_6 = (let rec t_3_6_7 = (let rec t_3_6_8 = (fun ys_3_5_4 -> 
      ys_3_5_4) in
      (let rec h_3_2_8 = '|' in
        (fun ys_3_5_5 -> 
          (`LH_C(h_3_2_8, ((mappend_lh__d7__d1 t_3_6_8) ys_3_5_5)))))) in
      (let rec h_3_2_9 = '-' in
        (fun ys_3_5_6 -> 
          (`LH_C(h_3_2_9, ((mappend_lh__d7__d1 t_3_6_7) ys_3_5_6)))))) in
      (let rec h_3_3_0 = '-' in
        (fun ys_3_5_7 -> 
          (`LH_C(h_3_3_0, ((mappend_lh__d7__d1 t_3_6_6) ys_3_5_7)))))) in
      (let rec h_3_3_1 = '-' in
        (fun ys_3_5_8 -> 
          (`LH_C(h_3_3_1, ((mappend_lh__d7__d1 t_3_6_5) ys_3_5_8)))))) in
      (let rec h_3_3_2 = '-' in
        (fun ys_3_5_9 -> 
          (`LH_C(h_3_3_2, ((mappend_lh__d7__d1 t_3_6_4) ys_3_5_9)))))) in
      (let rec h_3_3_3 = '-' in
        (fun ys_3_6_0 -> 
          (`LH_C(h_3_3_3, ((mappend_lh__d7__d1 t_3_6_3) ys_3_6_0)))))) in
      (let rec h_3_3_4 = '-' in
        (fun ys_3_6_1 -> 
          (`LH_C(h_3_3_4, ((mappend_lh__d7__d1 t_3_6_2) ys_3_6_1)))))) in
      (let rec h_3_3_5 = '-' in
        (fun ys_3_6_2 -> 
          (`LH_C(h_3_3_5, ((mappend_lh__d7__d1 t_3_6_1) ys_3_6_2)))))) in
      (let rec h_3_3_6 = '-' in
        (fun ys_3_6_3 -> 
          (`LH_C(h_3_3_6, ((mappend_lh__d7__d1 t_3_6_0) ys_3_6_3)))))) in
      (let rec h_3_3_7 = '-' in
        (fun ys_3_6_4 -> 
          (`LH_C(h_3_3_7, ((mappend_lh__d7__d1 t_3_5_9) ys_3_6_4)))))) in
      (let rec h_3_3_8 = '-' in
        (fun ys_3_6_5 -> 
          (`LH_C(h_3_3_8, ((mappend_lh__d7__d1 t_3_5_8) ys_3_6_5)))))) in
      (let rec h_3_3_9 = '-' in
        (fun ys_3_6_6 -> 
          (`LH_C(h_3_3_9, ((mappend_lh__d7__d1 t_3_5_7) ys_3_6_6)))))) in
      (let rec h_3_4_0 = '-' in
        (fun ys_3_6_7 -> 
          (`LH_C(h_3_4_0, ((mappend_lh__d7__d1 t_3_5_6) ys_3_6_7)))))) in
      (let rec h_3_4_1 = '-' in
        (fun ys_3_6_8 -> 
          (`LH_C(h_3_4_1, ((mappend_lh__d7__d1 t_3_5_5) ys_3_6_8)))))) in
      (let rec h_3_4_2 = '-' in
        (fun ys_3_6_9 -> 
          (`LH_C(h_3_4_2, ((mappend_lh__d7__d1 t_3_5_4) ys_3_6_9)))))) in
      (let rec h_3_4_3 = '-' in
        (fun ys_3_7_0 -> 
          (`LH_C(h_3_4_3, ((mappend_lh__d7__d1 t_3_5_3) ys_3_7_0)))))) in
      (let rec h_3_4_4 = '-' in
        (fun ys_3_7_1 -> 
          (`LH_C(h_3_4_4, ((mappend_lh__d7__d1 t_3_5_2) ys_3_7_1)))))) in
      (let rec h_3_4_5 = '-' in
        (fun ys_3_7_2 -> 
          (`LH_C(h_3_4_5, ((mappend_lh__d7__d1 t_3_5_1) ys_3_7_2)))))) in
      (let rec h_3_4_6 = '-' in
        (fun ys_3_7_3 -> 
          (`LH_C(h_3_4_6, ((mappend_lh__d7__d1 t_3_5_0) ys_3_7_3)))))) in
      (let rec h_3_4_7 = '-' in
        (fun ys_3_7_4 -> 
          (`LH_C(h_3_4_7, ((mappend_lh__d7__d1 t_3_4_9) ys_3_7_4)))))) in
      (let rec h_3_4_8 = '-' in
        (fun ys_3_7_5 -> 
          (`LH_C(h_3_4_8, ((mappend_lh__d7__d1 t_3_4_8) ys_3_7_5)))))) in
      (let rec h_3_4_9 = '-' in
        (fun ys_3_7_6 -> 
          (`LH_C(h_3_4_9, ((mappend_lh__d7__d1 t_3_4_7) ys_3_7_6)))))) in
      (let rec h_3_5_0 = '-' in
        (fun ys_3_7_7 -> 
          (`LH_C(h_3_5_0, ((mappend_lh__d7__d1 t_3_4_6) ys_3_7_7)))))) in
      (let rec h_3_5_1 = '-' in
        (fun ys_3_7_8 -> 
          (`LH_C(h_3_5_1, ((mappend_lh__d7__d1 t_3_4_5) ys_3_7_8)))))) in
      (let rec h_3_5_2 = '-' in
        (fun ys_3_7_9 -> 
          (`LH_C(h_3_5_2, ((mappend_lh__d7__d1 t_3_4_4) ys_3_7_9)))))) in
      (let rec h_3_5_3 = '-' in
        (fun ys_3_8_0 -> 
          (`LH_C(h_3_5_3, ((mappend_lh__d7__d1 t_3_4_3) ys_3_8_0)))))) in
      (let rec h_3_5_4 = '-' in
        (fun ys_3_8_1 -> 
          (`LH_C(h_3_5_4, ((mappend_lh__d7__d1 t_3_4_2) ys_3_8_1)))))) in
      (let rec h_3_5_5 = '-' in
        (fun ys_3_8_2 -> 
          (`LH_C(h_3_5_5, ((mappend_lh__d7__d1 t_3_4_1) ys_3_8_2)))))) in
      (let rec h_3_5_6 = '-' in
        (fun ys_3_8_3 -> 
          (`LH_C(h_3_5_6, ((mappend_lh__d7__d1 t_3_4_0) ys_3_8_3)))))) in
      (let rec h_3_5_7 = '-' in
        (fun ys_3_8_4 -> 
          (`LH_C(h_3_5_7, ((mappend_lh__d7__d1 t_3_3_9) ys_3_8_4)))))) in
      (let rec h_3_5_8 = '-' in
        (fun ys_3_8_5 -> 
          (`LH_C(h_3_5_8, ((mappend_lh__d7__d1 t_3_3_8) ys_3_8_5)))))) in
      (let rec h_3_5_9 = '-' in
        (fun ys_3_8_6 -> 
          (`LH_C(h_3_5_9, ((mappend_lh__d7__d1 t_3_3_7) ys_3_8_6)))))) in
      (let rec h_3_6_0 = '-' in
        (fun ys_3_8_7 -> 
          (`LH_C(h_3_6_0, ((mappend_lh__d7__d1 t_3_3_6) ys_3_8_7)))))) in
      (let rec h_3_6_1 = '-' in
        (fun ys_3_8_8 -> 
          (`LH_C(h_3_6_1, ((mappend_lh__d7__d1 t_3_3_5) ys_3_8_8)))))) in
      (let rec h_3_6_2 = '-' in
        (fun ys_3_8_9 -> 
          (`LH_C(h_3_6_2, ((mappend_lh__d7__d1 t_3_3_4) ys_3_8_9)))))) in
      (let rec h_3_6_3 = '-' in
        (fun ys_3_9_0 -> 
          (`LH_C(h_3_6_3, ((mappend_lh__d7__d1 t_3_3_3) ys_3_9_0)))))) in
      (let rec h_3_6_4 = '-' in
        (fun ys_3_9_1 -> 
          (`LH_C(h_3_6_4, ((mappend_lh__d7__d1 t_3_3_2) ys_3_9_1)))))) in
      (let rec h_3_6_5 = '-' in
        (fun ys_3_9_2 -> 
          (`LH_C(h_3_6_5, ((mappend_lh__d7__d1 t_3_3_1) ys_3_9_2)))))) in
      (let rec h_3_6_6 = '-' in
        (fun ys_3_9_3 -> 
          (`LH_C(h_3_6_6, ((mappend_lh__d7__d1 t_3_3_0) ys_3_9_3)))))) in
      (let rec h_3_6_7 = '-' in
        (fun ys_3_9_4 -> 
          (`LH_C(h_3_6_7, ((mappend_lh__d7__d1 t_3_2_9) ys_3_9_4)))))) in
      (let rec h_3_6_8 = '-' in
        (fun ys_3_9_5 -> 
          (`LH_C(h_3_6_8, ((mappend_lh__d7__d1 t_3_2_8) ys_3_9_5))))))) s_1)) _lh_funcomp_x_0));;
let rec mappend_lh__d5__d4 xs_2_6 ys_3_9_9 =
  (xs_2_6 ys_3_9_9);;
let rec mappend_lh__d5__d1 xs_4_2 ys_4_2_9 =
  (xs_4_2 ys_4_2_9);;
let rec mappend_lh__d5__d3 xs_6_1 ys_4_7_8 =
  (xs_6_1 ys_4_7_8);;
let rec foldr_lh__d1__d0 f_2 i_2 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_1_5_8, t_1_1_5_8) -> 
      ((f_2 h_1_1_5_8) (((foldr_lh__d1__d0 f_2) i_2) t_1_1_5_8))
    | `LH_N -> 
      i_2);;
let rec totalTime_lh__d3__d0 _lh_totalTime_arg1_0 =
  (match _lh_totalTime_arg1_0 with
    | `LH_C(_lh_totalTime_LH_C_0_0, _lh_totalTime_LH_C_1_0) -> 
      (match _lh_totalTime_LH_C_0_0 with
        | `LH_P2(_lh_totalTime_LH_P2_0_0, _lh_totalTime_LH_P2_1_0) -> 
          _lh_totalTime_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d4__d0 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d4__d0 t_3) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend_lh__d5__d5 xs_3_4 ys_4_0_7 =
  (xs_3_4 ys_4_0_7);;
let rec mappend_lh__d5__d6 xs_3_3 ys_4_0_6 =
  (xs_3_3 ys_4_0_6);;
let rec writeHistory_lh__d1__d0 _lh_writeHistory_arg1_2 =
  (match _lh_writeHistory_arg1_2 with
    | `LH_N -> 
      (fun x_2_1 -> 
        x_2_1)
    | _ -> 
      (((foldr_lh__d1__d0 (fun timestate_2 acc_2 -> 
        (let rec _lh_matchIdent_9 = timestate_2 in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_2, _lh_writeHistory_LH_P2_1_2) -> 
              (fun _lh_funcomp_x_2_5 -> 
                ((fun _lh_funcomp_x_2_6 -> 
                  ((fun _lh_funcomp_x_2_7 -> 
                    ((fun _lh_funcomp_x_2_8 -> 
                      ((fun x_2_2 -> 
                        ((mappend_lh__d5__d0 (let rec t_4_1_8 = (let rec t_4_1_9 = (let rec t_4_2_0 = (let rec t_4_2_1 = (let rec t_4_2_2 = (let rec t_4_2_3 = (fun ys_4_8_6 -> 
                          ys_4_8_6) in
                          (let rec h_4_1_8 = ' ' in
                            (fun ys_4_8_7 -> 
                              (`LH_C(h_4_1_8, ((mappend_lh__d5__d1 t_4_2_3) ys_4_8_7)))))) in
                          (let rec h_4_1_9 = ':' in
                            (fun ys_4_8_8 -> 
                              (`LH_C(h_4_1_9, ((mappend_lh__d5__d2 t_4_2_2) ys_4_8_8)))))) in
                          (let rec h_4_2_0 = 'e' in
                            (fun ys_4_8_9 -> 
                              (`LH_C(h_4_2_0, ((mappend_lh__d5__d3 t_4_2_1) ys_4_8_9)))))) in
                          (let rec h_4_2_1 = 'm' in
                            (fun ys_4_9_0 -> 
                              (`LH_C(h_4_2_1, ((mappend_lh__d5__d4 t_4_2_0) ys_4_9_0)))))) in
                          (let rec h_4_2_2 = 'i' in
                            (fun ys_4_9_1 -> 
                              (`LH_C(h_4_2_2, ((mappend_lh__d5__d5 t_4_1_9) ys_4_9_1)))))) in
                          (let rec h_4_2_3 = 'T' in
                            (fun ys_4_9_2 -> 
                              (`LH_C(h_4_2_3, ((mappend_lh__d5__d6 t_4_1_8) ys_4_9_2))))))) x_2_2)) ((fun x_2_3 -> 
                        ((mappend_lh__d4__d0 (string_of_int ((totalTime_lh__d3__d0 _lh_writeHistory_arg1_2) - _lh_writeHistory_LH_P2_0_2))) x_2_3)) _lh_funcomp_x_2_8))) ((fun x_2_4 -> 
                      (`LH_C('|', x_2_4))) _lh_funcomp_x_2_7))) ((writeState_lh__d1__d0 _lh_writeHistory_LH_P2_1_2) _lh_funcomp_x_2_6))) (acc_2 _lh_funcomp_x_2_5)))
            | _ -> 
              (failwith "error"))))) (fun x_2_5 -> 
        x_2_5)) _lh_writeHistory_arg1_2));;
let rec totalTime_lh__d2__d0 _lh_totalTime_arg1_2 =
  (match _lh_totalTime_arg1_2 with
    | `LH_C(_lh_totalTime_LH_C_0_2, _lh_totalTime_LH_C_1_2) -> 
      (match _lh_totalTime_LH_C_0_2 with
        | `LH_P2(_lh_totalTime_LH_P2_0_2, _lh_totalTime_LH_P2_1_2) -> 
          _lh_totalTime_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2__d2 xs_7_0 ys_4_9_4 =
  (match xs_7_0 with
    | `LH_C(h_4_2_4, t_4_2_4) -> 
      (`LH_C(h_4_2_4, ((mappend_lh__d2__d2 t_4_2_4) ys_4_9_4)))
    | `LH_N -> 
      ys_4_9_4);;
let rec mappend_lh__d1__d1_d8 xs_7_3 ys_8_7_0 =
  (xs_7_3 ys_8_7_0);;
let rec mappend_lh__d1__d1_d2 xs_7_4 ys_8_7_1 =
  (xs_7_4 ys_8_7_1);;
let rec mappend_lh__d1__d1_d6 xs_7_9 ys_1_2_4_9 =
  (xs_7_9 ys_1_2_4_9);;
let rec totalTime_lh__d1__d0 _lh_totalTime_arg1_4 =
  (match _lh_totalTime_arg1_4 with
    | `LH_C(_lh_totalTime_LH_C_0_4, _lh_totalTime_LH_C_1_4) -> 
      (match _lh_totalTime_LH_C_0_4 with
        | `LH_P2(_lh_totalTime_LH_P2_0_4, _lh_totalTime_LH_P2_1_4) -> 
          _lh_totalTime_LH_P2_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1__d1_d9 xs_8_1 ys_1_2_5_1 =
  (xs_8_1 ys_1_2_5_1);;
let rec mappend_lh__d1__d9 xs_8_5 ys_1_2_5_5 =
  (xs_8_5 ys_1_2_5_5);;
let rec reverse_helper_lh__d1__d0 ls_8 a_8 =
  (ls_8 a_8);;
let rec mappend_lh__d1__d2_d0 xs_8_7 ys_1_2_5_7 =
  (xs_8_7 ys_1_2_5_7);;
let rec mappend_lh__d1__d4 xs_8_8 ys_1_2_5_8 =
  (xs_8_8 ys_1_2_5_8);;
let rec mappend_lh__d2__d0 xs_9_1 ys_1_2_6_1 =
  (match xs_9_1 with
    | `LH_C(h_1_1_5_9, t_1_1_5_9) -> 
      (`LH_C(h_1_1_5_9, ((mappend_lh__d2__d0 t_1_1_5_9) ys_1_2_6_1)))
    | `LH_N -> 
      ys_1_2_6_1);;
let rec mappend_lh__d1__d2_d8 xs_9_0 ys_1_2_6_0 =
  (xs_9_0 ys_1_2_6_0);;
let rec minSolutions_lh__d1__d0 _lh_minSolutions_arg1_0 =
  (match _lh_minSolutions_arg1_0 with
    | `LH_N -> 
      (fun _lh_writeSolutions_arg2_5 x_1_1 -> 
        x_1_1)
    | `LH_C(_lh_minSolutions_LH_C_0_0, _lh_minSolutions_LH_C_1_0) -> 
      (let rec minAcc_0 = (fun minSoFar_0 mins_0 ls_7 -> 
        (let rec _lh_matchIdent_6 = ls_7 in
          (match _lh_matchIdent_6 with
            | `LH_N -> 
              mins_0
            | `LH_C(_lh_minSolutions_LH_C_0_1, _lh_minSolutions_LH_C_1_1) -> 
              (let rec total_0 = (totalTime_lh__d2__d0 _lh_minSolutions_LH_C_0_1) in
                (if (minSoFar_0 < total_0) then
                  (((minAcc_0 minSoFar_0) mins_0) _lh_minSolutions_LH_C_1_1)
                else
                  (if (minSoFar_0 = total_0) then
                    (((minAcc_0 minSoFar_0) (let rec t_3_8_8 = mins_0 in
                      (let rec h_3_8_8 = _lh_minSolutions_LH_C_0_1 in
                        (fun a_3 -> 
                          ((reverse_helper_lh__d1__d0 t_3_8_8) (let rec _lh_writeSolutions_LH_C_1_0 = a_3 in
                            (let rec _lh_writeSolutions_LH_C_0_0 = h_3_8_8 in
                              (fun _lh_writeSolutions_arg2_6 _lh_funcomp_x_1_3 -> 
                                ((fun _lh_funcomp_x_1_4 -> 
                                  ((fun _lh_funcomp_x_1_5 -> 
                                    ((fun _lh_funcomp_x_1_6 -> 
                                      ((fun x_1_2 -> 
                                        ((mappend_lh__d1__d0 (let rec t_3_8_9 = (let rec t_3_9_0 = (let rec t_3_9_1 = (let rec t_3_9_2 = (let rec t_3_9_3 = (let rec t_3_9_4 = (let rec t_3_9_5 = (let rec t_3_9_6 = (let rec t_3_9_7 = (fun ys_4_4_4 -> 
                                          ys_4_4_4) in
                                          (let rec h_3_8_9 = ' ' in
                                            (fun ys_4_4_5 -> 
                                              (`LH_C(h_3_8_9, ((mappend_lh__d1__d1 t_3_9_7) ys_4_4_5)))))) in
                                          (let rec h_3_9_0 = 'n' in
                                            (fun ys_4_4_6 -> 
                                              (`LH_C(h_3_9_0, ((mappend_lh__d1__d2 t_3_9_6) ys_4_4_6)))))) in
                                          (let rec h_3_9_1 = 'o' in
                                            (fun ys_4_4_7 -> 
                                              (`LH_C(h_3_9_1, ((mappend_lh__d1__d3 t_3_9_5) ys_4_4_7)))))) in
                                          (let rec h_3_9_2 = 'i' in
                                            (fun ys_4_4_8 -> 
                                              (`LH_C(h_3_9_2, ((mappend_lh__d1__d4 t_3_9_4) ys_4_4_8)))))) in
                                          (let rec h_3_9_3 = 't' in
                                            (fun ys_4_4_9 -> 
                                              (`LH_C(h_3_9_3, ((mappend_lh__d1__d5 t_3_9_3) ys_4_4_9)))))) in
                                          (let rec h_3_9_4 = 'u' in
                                            (fun ys_4_5_0 -> 
                                              (`LH_C(h_3_9_4, ((mappend_lh__d1__d6 t_3_9_2) ys_4_5_0)))))) in
                                          (let rec h_3_9_5 = 'l' in
                                            (fun ys_4_5_1 -> 
                                              (`LH_C(h_3_9_5, ((mappend_lh__d1__d7 t_3_9_1) ys_4_5_1)))))) in
                                          (let rec h_3_9_6 = 'o' in
                                            (fun ys_4_5_2 -> 
                                              (`LH_C(h_3_9_6, ((mappend_lh__d1__d8 t_3_9_0) ys_4_5_2)))))) in
                                          (let rec h_3_9_7 = 'S' in
                                            (fun ys_4_5_3 -> 
                                              (`LH_C(h_3_9_7, ((mappend_lh__d1__d9 t_3_8_9) ys_4_5_3))))))) x_1_2)) ((fun x_1_3 -> 
                                        ((mappend_lh__d2__d0 (string_of_int _lh_writeSolutions_arg2_6)) x_1_3)) _lh_funcomp_x_1_6))) ((fun x_1_4 -> 
                                      (`LH_C('|', x_1_4))) _lh_funcomp_x_1_5))) ((writeHistory_lh__d1__d0 _lh_writeSolutions_LH_C_0_0) _lh_funcomp_x_1_4))) (((writeSolutions_lh__d1__d0 _lh_writeSolutions_LH_C_1_0) (_lh_writeSolutions_arg2_6 + 1)) _lh_funcomp_x_1_3)))))))))) _lh_minSolutions_LH_C_1_1)
                  else
                    (((minAcc_0 total_0) (let rec t_3_9_8 = (fun a_4 -> 
                      a_4) in
                      (let rec h_3_9_8 = _lh_minSolutions_LH_C_0_1 in
                        (fun a_5 -> 
                          ((reverse_helper_lh__d1__d1 t_3_9_8) (let rec _lh_writeSolutions_LH_C_1_1 = a_5 in
                            (let rec _lh_writeSolutions_LH_C_0_1 = h_3_9_8 in
                              (fun _lh_writeSolutions_arg2_7 _lh_funcomp_x_1_7 -> 
                                ((fun _lh_funcomp_x_1_8 -> 
                                  ((fun _lh_funcomp_x_1_9 -> 
                                    ((fun _lh_funcomp_x_2_0 -> 
                                      ((fun x_1_5 -> 
                                        ((mappend_lh__d1__d1_d0 (let rec t_3_9_9 = (let rec t_4_0_0 = (let rec t_4_0_1 = (let rec t_4_0_2 = (let rec t_4_0_3 = (let rec t_4_0_4 = (let rec t_4_0_5 = (let rec t_4_0_6 = (let rec t_4_0_7 = (fun ys_4_5_4 -> 
                                          ys_4_5_4) in
                                          (let rec h_3_9_9 = ' ' in
                                            (fun ys_4_5_5 -> 
                                              (`LH_C(h_3_9_9, ((mappend_lh__d1__d1_d1 t_4_0_7) ys_4_5_5)))))) in
                                          (let rec h_4_0_0 = 'n' in
                                            (fun ys_4_5_6 -> 
                                              (`LH_C(h_4_0_0, ((mappend_lh__d1__d1_d2 t_4_0_6) ys_4_5_6)))))) in
                                          (let rec h_4_0_1 = 'o' in
                                            (fun ys_4_5_7 -> 
                                              (`LH_C(h_4_0_1, ((mappend_lh__d1__d1_d3 t_4_0_5) ys_4_5_7)))))) in
                                          (let rec h_4_0_2 = 'i' in
                                            (fun ys_4_5_8 -> 
                                              (`LH_C(h_4_0_2, ((mappend_lh__d1__d1_d4 t_4_0_4) ys_4_5_8)))))) in
                                          (let rec h_4_0_3 = 't' in
                                            (fun ys_4_5_9 -> 
                                              (`LH_C(h_4_0_3, ((mappend_lh__d1__d1_d5 t_4_0_3) ys_4_5_9)))))) in
                                          (let rec h_4_0_4 = 'u' in
                                            (fun ys_4_6_0 -> 
                                              (`LH_C(h_4_0_4, ((mappend_lh__d1__d1_d6 t_4_0_2) ys_4_6_0)))))) in
                                          (let rec h_4_0_5 = 'l' in
                                            (fun ys_4_6_1 -> 
                                              (`LH_C(h_4_0_5, ((mappend_lh__d1__d1_d7 t_4_0_1) ys_4_6_1)))))) in
                                          (let rec h_4_0_6 = 'o' in
                                            (fun ys_4_6_2 -> 
                                              (`LH_C(h_4_0_6, ((mappend_lh__d1__d1_d8 t_4_0_0) ys_4_6_2)))))) in
                                          (let rec h_4_0_7 = 'S' in
                                            (fun ys_4_6_3 -> 
                                              (`LH_C(h_4_0_7, ((mappend_lh__d1__d1_d9 t_3_9_9) ys_4_6_3))))))) x_1_5)) ((fun x_1_6 -> 
                                        ((mappend_lh__d2__d1 (string_of_int _lh_writeSolutions_arg2_7)) x_1_6)) _lh_funcomp_x_2_0))) ((fun x_1_7 -> 
                                      (`LH_C('|', x_1_7))) _lh_funcomp_x_1_9))) ((writeHistory_lh__d1__d1 _lh_writeSolutions_LH_C_0_1) _lh_funcomp_x_1_8))) (((writeSolutions_lh__d1__d1 _lh_writeSolutions_LH_C_1_1) (_lh_writeSolutions_arg2_7 + 1)) _lh_funcomp_x_1_7)))))))))) _lh_minSolutions_LH_C_1_1))))
            | _ -> 
              (failwith "error")))) in
        (reverse_lh__d1__d0 (((minAcc_0 (totalTime_lh__d1__d0 _lh_minSolutions_LH_C_0_0)) (let rec t_4_0_8 = (fun a_6 -> 
          a_6) in
          (let rec h_4_0_8 = _lh_minSolutions_LH_C_0_0 in
            (fun a_7 -> 
              ((reverse_helper_lh__d1__d2 t_4_0_8) (let rec _lh_writeSolutions_LH_C_1_2 = a_7 in
                (let rec _lh_writeSolutions_LH_C_0_2 = h_4_0_8 in
                  (fun _lh_writeSolutions_arg2_8 _lh_funcomp_x_2_1 -> 
                    ((fun _lh_funcomp_x_2_2 -> 
                      ((fun _lh_funcomp_x_2_3 -> 
                        ((fun _lh_funcomp_x_2_4 -> 
                          ((fun x_1_8 -> 
                            ((mappend_lh__d1__d2_d0 (let rec t_4_0_9 = (let rec t_4_1_0 = (let rec t_4_1_1 = (let rec t_4_1_2 = (let rec t_4_1_3 = (let rec t_4_1_4 = (let rec t_4_1_5 = (let rec t_4_1_6 = (let rec t_4_1_7 = (fun ys_4_6_4 -> 
                              ys_4_6_4) in
                              (let rec h_4_0_9 = ' ' in
                                (fun ys_4_6_5 -> 
                                  (`LH_C(h_4_0_9, ((mappend_lh__d1__d2_d1 t_4_1_7) ys_4_6_5)))))) in
                              (let rec h_4_1_0 = 'n' in
                                (fun ys_4_6_6 -> 
                                  (`LH_C(h_4_1_0, ((mappend_lh__d1__d2_d2 t_4_1_6) ys_4_6_6)))))) in
                              (let rec h_4_1_1 = 'o' in
                                (fun ys_4_6_7 -> 
                                  (`LH_C(h_4_1_1, ((mappend_lh__d1__d2_d3 t_4_1_5) ys_4_6_7)))))) in
                              (let rec h_4_1_2 = 'i' in
                                (fun ys_4_6_8 -> 
                                  (`LH_C(h_4_1_2, ((mappend_lh__d1__d2_d4 t_4_1_4) ys_4_6_8)))))) in
                              (let rec h_4_1_3 = 't' in
                                (fun ys_4_6_9 -> 
                                  (`LH_C(h_4_1_3, ((mappend_lh__d1__d2_d5 t_4_1_3) ys_4_6_9)))))) in
                              (let rec h_4_1_4 = 'u' in
                                (fun ys_4_7_0 -> 
                                  (`LH_C(h_4_1_4, ((mappend_lh__d1__d2_d6 t_4_1_2) ys_4_7_0)))))) in
                              (let rec h_4_1_5 = 'l' in
                                (fun ys_4_7_1 -> 
                                  (`LH_C(h_4_1_5, ((mappend_lh__d1__d2_d7 t_4_1_1) ys_4_7_1)))))) in
                              (let rec h_4_1_6 = 'o' in
                                (fun ys_4_7_2 -> 
                                  (`LH_C(h_4_1_6, ((mappend_lh__d1__d2_d8 t_4_1_0) ys_4_7_2)))))) in
                              (let rec h_4_1_7 = 'S' in
                                (fun ys_4_7_3 -> 
                                  (`LH_C(h_4_1_7, ((mappend_lh__d1__d2_d9 t_4_0_9) ys_4_7_3))))))) x_1_8)) ((fun x_1_9 -> 
                            ((mappend_lh__d2__d2 (string_of_int _lh_writeSolutions_arg2_8)) x_1_9)) _lh_funcomp_x_2_4))) ((fun x_2_0 -> 
                          (`LH_C('|', x_2_0))) _lh_funcomp_x_2_3))) ((writeHistory_lh__d1__d2 _lh_writeSolutions_LH_C_0_2) _lh_funcomp_x_2_2))) (((writeSolutions_lh__d1__d2 _lh_writeSolutions_LH_C_1_2) (_lh_writeSolutions_arg2_8 + 1)) _lh_funcomp_x_2_1)))))))))) _lh_minSolutions_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec testPuzzle_nofib_lh__d1__d0 _lh_testPuzzle_nofib_arg1_0 =
  (let rec time_0 = (if ((length_lh__d1__d0 _lh_testPuzzle_nofib_arg1_0) = 1) then
    0
  else
    ((failwith "error") (`LH_C('p', (`LH_C('u', (`LH_C('z', (`LH_C('z', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec solutions_0 = (((((transfer_lh__d1__d0 initialState_lh__d1__d0) finalState_lh__d1__d0) (`RightBank)) time_0) (`LH_N)) in
      (let rec mins_1 = (minSolutions_lh__d1__d0 solutions_0) in
        (((writeSolutions_lh__d1__d3 mins_1) 1) (`LH_N)))));;
end;;

