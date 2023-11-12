
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec adamPos__d0 _lh_adamPos_arg1_3 =
  (match _lh_adamPos_arg1_3 with
    | `State(_lh_adamPos_State_0_3, _lh_adamPos_State_1_3, _lh_adamPos_State_2_3, _lh_adamPos_State_3_3) -> 
      _lh_adamPos_State_3_3
    | _ -> 
      (failwith "error"));;
let rec adamPos__d1 _lh_adamPos_arg1_2 =
  (match _lh_adamPos_arg1_2 with
    | `State(_lh_adamPos_State_0_2, _lh_adamPos_State_1_2, _lh_adamPos_State_2_2, _lh_adamPos_State_3_2) -> 
      _lh_adamPos_State_3_2
    | _ -> 
      (failwith "error"));;
let rec adamPos__d2 _lh_adamPos_arg1_1 =
  (match _lh_adamPos_arg1_1 with
    | `State(_lh_adamPos_State_0_1, _lh_adamPos_State_1_1, _lh_adamPos_State_2_1, _lh_adamPos_State_3_1) -> 
      _lh_adamPos_State_3_1
    | _ -> 
      (failwith "error"));;
let rec adamPos__d3 _lh_adamPos_arg1_4 =
  (match _lh_adamPos_arg1_4 with
    | `State(_lh_adamPos_State_0_4, _lh_adamPos_State_1_4, _lh_adamPos_State_2_4, _lh_adamPos_State_3_4) -> 
      _lh_adamPos_State_3_4
    | _ -> 
      (failwith "error"));;
let rec all__d0 _lh_all_arg1_2 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_2) then
        ((all__d0 _lh_all_arg1_2) _lh_all_LH_C_1_2)
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
let rec bonoPos__d1 _lh_bonoPos_arg1_1 =
  (match _lh_bonoPos_arg1_1 with
    | `State(_lh_bonoPos_State_0_1, _lh_bonoPos_State_1_1, _lh_bonoPos_State_2_1, _lh_bonoPos_State_3_1) -> 
      _lh_bonoPos_State_0_1
    | _ -> 
      (failwith "error"));;
let rec bonoPos__d2 _lh_bonoPos_arg1_3 =
  (match _lh_bonoPos_arg1_3 with
    | `State(_lh_bonoPos_State_0_3, _lh_bonoPos_State_1_3, _lh_bonoPos_State_2_3, _lh_bonoPos_State_3_3) -> 
      _lh_bonoPos_State_0_3
    | _ -> 
      (failwith "error"));;
let rec bonoPos__d3 _lh_bonoPos_arg1_4 =
  (match _lh_bonoPos_arg1_4 with
    | `State(_lh_bonoPos_State_0_4, _lh_bonoPos_State_1_4, _lh_bonoPos_State_2_4, _lh_bonoPos_State_3_4) -> 
      _lh_bonoPos_State_0_4
    | _ -> 
      (failwith "error"));;
let rec edgePos__d0 _lh_edgePos_arg1_4 =
  (match _lh_edgePos_arg1_4 with
    | `State(_lh_edgePos_State_0_4, _lh_edgePos_State_1_4, _lh_edgePos_State_2_4, _lh_edgePos_State_3_4) -> 
      _lh_edgePos_State_1_4
    | _ -> 
      (failwith "error"));;
let rec edgePos__d1 _lh_edgePos_arg1_3 =
  (match _lh_edgePos_arg1_3 with
    | `State(_lh_edgePos_State_0_3, _lh_edgePos_State_1_3, _lh_edgePos_State_2_3, _lh_edgePos_State_3_3) -> 
      _lh_edgePos_State_1_3
    | _ -> 
      (failwith "error"));;
let rec edgePos__d2 _lh_edgePos_arg1_1 =
  (match _lh_edgePos_arg1_1 with
    | `State(_lh_edgePos_State_0_1, _lh_edgePos_State_1_1, _lh_edgePos_State_2_1, _lh_edgePos_State_3_1) -> 
      _lh_edgePos_State_1_1
    | _ -> 
      (failwith "error"));;
let rec edgePos__d3 _lh_edgePos_arg1_2 =
  (match _lh_edgePos_arg1_2 with
    | `State(_lh_edgePos_State_0_2, _lh_edgePos_State_1_2, _lh_edgePos_State_2_2, _lh_edgePos_State_3_2) -> 
      _lh_edgePos_State_1_2
    | _ -> 
      (failwith "error"));;
let rec finalState__d0 =
  (`State((`RightBank), (`RightBank), (`RightBank), (`RightBank)));;
let rec foldr__d0 f_1_2 i_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      ((f_1_2 h_2_1) (((foldr__d0 f_1_2) i_3) t_2_3))
    | `LH_N -> 
      i_3);;
let rec initialState__d0 =
  (`State((`LeftBank), (`LeftBank), (`LeftBank), (`LeftBank)));;
let rec larryPos__d0 _lh_larryPos_arg1_3 =
  (match _lh_larryPos_arg1_3 with
    | `State(_lh_larryPos_State_0_3, _lh_larryPos_State_1_3, _lh_larryPos_State_2_3, _lh_larryPos_State_3_3) -> 
      _lh_larryPos_State_2_3
    | _ -> 
      (failwith "error"));;
let rec larryPos__d1 _lh_larryPos_arg1_4 =
  (match _lh_larryPos_arg1_4 with
    | `State(_lh_larryPos_State_0_4, _lh_larryPos_State_1_4, _lh_larryPos_State_2_4, _lh_larryPos_State_3_4) -> 
      _lh_larryPos_State_2_4
    | _ -> 
      (failwith "error"));;
let rec larryPos__d2 _lh_larryPos_arg1_1 =
  (match _lh_larryPos_arg1_1 with
    | `State(_lh_larryPos_State_0_1, _lh_larryPos_State_1_1, _lh_larryPos_State_2_1, _lh_larryPos_State_3_1) -> 
      _lh_larryPos_State_2_1
    | _ -> 
      (failwith "error"));;
let rec larryPos__d3 _lh_larryPos_arg1_2 =
  (match _lh_larryPos_arg1_2 with
    | `State(_lh_larryPos_State_0_2, _lh_larryPos_State_1_2, _lh_larryPos_State_2_2, _lh_larryPos_State_3_2) -> 
      _lh_larryPos_State_2_2
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_1, t_4_3) -> 
      (1 + (length__d0 t_4_3))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend__d0 t_5_1) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend__d1 xs_3_8 ys_3_8 =
  (match xs_3_8 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C(h_5_3, ((mappend__d1 t_5_5) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend__d1_d0 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_5_0, t_5_2) -> 
      (`LH_C(h_5_0, ((mappend__d1_d0 t_5_2) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d1_d1 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d1_d1 t_2_9) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1_d2 xs_3_6 ys_3_6 =
  (match xs_3_6 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d1_d2 t_5_3) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend__d1_d3 xs_4_8 ys_4_8 =
  (match xs_4_8 with
    | `LH_C(h_6_4, t_6_6) -> 
      (`LH_C(h_6_4, ((mappend__d1_d3 t_6_6) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec mappend__d1_d4 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d1_d4 t_3_0) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1_d5 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_3_4, t_3_6) -> 
      (`LH_C(h_3_4, ((mappend__d1_d5 t_3_6) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d1_d6 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C(h_4_4, ((mappend__d1_d6 t_4_6) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d1_d7 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1_d7 t_2_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d8 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d1_d8 t_4_7) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d1_d9 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d1_d9 t_3_4) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d2 xs_4_9 ys_4_9 =
  (match xs_4_9 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C(h_6_5, ((mappend__d2 t_6_7) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend__d2_d0 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d2_d0 t_3_2) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d2_d1 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend__d2_d1 t_3_5) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d2_d2 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_4_3, t_4_5) -> 
      (`LH_C(h_4_3, ((mappend__d2_d2 t_4_5) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d2_d3 xs_3_9 ys_3_9 =
  (match xs_3_9 with
    | `LH_C(h_5_5, t_5_7) -> 
      (`LH_C(h_5_5, ((mappend__d2_d3 t_5_7) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend__d2_d4 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d2_d4 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2_d5 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d2_d5 t_4_1) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d2_d6 xs_3_7 ys_3_7 =
  (match xs_3_7 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d2_d6 t_5_4) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend__d2_d7 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d2_d7 t_2_8) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d2_d8 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d2_d8 t_4_4) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d2_d9 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d2_d9 t_2_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d3 xs_4_1 ys_4_1 =
  (match xs_4_1 with
    | `LH_C(h_5_7, t_5_9) -> 
      (`LH_C(h_5_7, ((mappend__d3 t_5_9) ys_4_1)))
    | `LH_N -> 
      ys_4_1);;
let rec mappend__d3_d0 xs_4_2 ys_4_2 =
  (match xs_4_2 with
    | `LH_C(h_5_8, t_6_0) -> 
      (`LH_C(h_5_8, ((mappend__d3_d0 t_6_0) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend__d3_d1 xs_4_6 ys_4_6 =
  (match xs_4_6 with
    | `LH_C(h_6_2, t_6_4) -> 
      (`LH_C(h_6_2, ((mappend__d3_d1 t_6_4) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend__d3_d2 xs_4_4 ys_4_4 =
  (match xs_4_4 with
    | `LH_C(h_6_0, t_6_2) -> 
      (`LH_C(h_6_0, ((mappend__d3_d2 t_6_2) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec mappend__d3_d3 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend__d3_d3 t_3_7) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d3_d4 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend__d3_d4 t_4_2) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d3_d5 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d3_d5 t_3_9) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d3_d6 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d3_d6 t_3_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d3_d7 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C(h_4_6, ((mappend__d3_d7 t_4_8) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d3_d8 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d3_d8 t_4_0) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d3_d9 xs_4_0 ys_4_0 =
  (match xs_4_0 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend__d3_d9 t_5_8) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec mappend__d4 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend__d4 t_3_8) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d4_d0 xs_4_3 ys_4_3 =
  (match xs_4_3 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C(h_5_9, ((mappend__d4_d0 t_6_1) ys_4_3)))
    | `LH_N -> 
      ys_4_3);;
let rec mappend__d5 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend__d5 t_4_9) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d6 xs_4_5 ys_4_5 =
  (match xs_4_5 with
    | `LH_C(h_6_1, t_6_3) -> 
      (`LH_C(h_6_1, ((mappend__d6 t_6_3) ys_4_5)))
    | `LH_N -> 
      ys_4_5);;
let rec mappend__d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d7 t_2_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d8 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d8 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d9 xs_4_7 ys_4_7 =
  (match xs_4_7 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend__d9 t_6_5) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec opposite__d0 _lh_opposite_arg1_1 =
  (match _lh_opposite_arg1_1 with
    | `LeftBank -> 
      (`RightBank)
    | `RightBank -> 
      (`LeftBank)
    | _ -> 
      (failwith "error"));;
let rec reverse_helper__d0 ls_2_4 a_5 =
  (match ls_2_4 with
    | `LH_C(h_4_8, t_5_0) -> 
      ((reverse_helper__d0 t_5_0) (`LH_C(h_4_8, a_5)))
    | `LH_N -> 
      a_5);;
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
let rec succItem__d1 _lh_succItem_arg1_1 =
  (match _lh_succItem_arg1_1 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec succItem__d2 _lh_succItem_arg1_3 =
  (match _lh_succItem_arg1_3 with
    | `Bono -> 
      (`Edge)
    | `Edge -> 
      (`Larry)
    | `Larry -> 
      (`Adam)
    | _ -> 
      (failwith "error"));;
let rec succItem__d3 _lh_succItem_arg1_4 =
  (match _lh_succItem_arg1_4 with
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
let rec totalTime__d1 _lh_totalTime_arg1_3 =
  (match _lh_totalTime_arg1_3 with
    | `LH_C(_lh_totalTime_LH_C_0_3, _lh_totalTime_LH_C_1_3) -> 
      (match _lh_totalTime_LH_C_0_3 with
        | `LH_P2(_lh_totalTime_LH_P2_0_3, _lh_totalTime_LH_P2_1_3) -> 
          _lh_totalTime_LH_P2_0_3
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
let rec u2times__d0 _lh_u2times_arg1_2 =
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
    | `State(_lh_updateState_State_0_1, _lh_updateState_State_1_1, _lh_updateState_State_2_1, _lh_updateState_State_3_1) -> 
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
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec updateState__d1 _lh_updateState_arg1_2 _lh_updateState_arg2_2 _lh_updateState_arg3_2 =
  (match _lh_updateState_arg1_2 with
    | `State(_lh_updateState_State_0_2, _lh_updateState_State_1_2, _lh_updateState_State_2_2, _lh_updateState_State_3_2) -> 
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
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec updateState__d2 _lh_updateState_arg1_3 _lh_updateState_arg2_3 _lh_updateState_arg3_3 =
  (match _lh_updateState_arg1_3 with
    | `State(_lh_updateState_State_0_3, _lh_updateState_State_1_3, _lh_updateState_State_2_3, _lh_updateState_State_3_3) -> 
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
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_5_4, t_5_6) -> 
      ((mappend__d0 h_5_4) (concat__d0 t_5_6))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_1, t_3_3) -> 
      ((mappend__d1 h_3_1) (concat__d1 t_3_3))
    | `LH_N -> 
      (`LH_N))
and itemFromTo__d0 _lh_itemFromTo_arg1_3 _lh_itemFromTo_arg2_3 =
  (if (_lh_itemFromTo_arg1_3 = _lh_itemFromTo_arg2_3) then
    (`LH_C(_lh_itemFromTo_arg1_3, (`LH_N)))
  else
    (`LH_C(_lh_itemFromTo_arg1_3, ((itemFromTo__d0 (succItem__d0 _lh_itemFromTo_arg1_3)) _lh_itemFromTo_arg2_3))))
and itemFromTo__d1 _lh_itemFromTo_arg1_1 _lh_itemFromTo_arg2_1 =
  (if (_lh_itemFromTo_arg1_1 = _lh_itemFromTo_arg2_1) then
    (`LH_C(_lh_itemFromTo_arg1_1, (`LH_N)))
  else
    (`LH_C(_lh_itemFromTo_arg1_1, ((itemFromTo__d1 (succItem__d1 _lh_itemFromTo_arg1_1)) _lh_itemFromTo_arg2_1))))
and itemFromTo__d2 _lh_itemFromTo_arg1_2 _lh_itemFromTo_arg2_2 =
  (if (_lh_itemFromTo_arg1_2 = _lh_itemFromTo_arg2_2) then
    (`LH_C(_lh_itemFromTo_arg1_2, (`LH_N)))
  else
    (`LH_C(_lh_itemFromTo_arg1_2, ((itemFromTo__d2 (succItem__d2 _lh_itemFromTo_arg1_2)) _lh_itemFromTo_arg2_2))))
and minSolutions__d0 _lh_minSolutions_arg1_1 =
  (match _lh_minSolutions_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_minSolutions_LH_C_0_2, _lh_minSolutions_LH_C_1_2) -> 
      (let rec minAcc_1 = (fun minSoFar_1 mins_3 ls_2_2 -> 
        (let rec _lh_matchIdent_5 = ls_2_2 in
          (match _lh_matchIdent_5 with
            | `LH_N -> 
              mins_3
            | `LH_C(_lh_minSolutions_LH_C_0_3, _lh_minSolutions_LH_C_1_3) -> 
              (let rec total_1 = (totalTime__d0 _lh_minSolutions_LH_C_0_3) in
                (if (minSoFar_1 < total_1) then
                  (((minAcc_1 minSoFar_1) mins_3) _lh_minSolutions_LH_C_1_3)
                else
                  (if (minSoFar_1 = total_1) then
                    (((minAcc_1 minSoFar_1) (`LH_C(_lh_minSolutions_LH_C_0_3, mins_3))) _lh_minSolutions_LH_C_1_3)
                  else
                    (((minAcc_1 total_1) (`LH_C(_lh_minSolutions_LH_C_0_3, (`LH_N)))) _lh_minSolutions_LH_C_1_3))))
            | _ -> 
              (failwith "error")))) in
        (reverse__d0 (((minAcc_1 (totalTime__d1 _lh_minSolutions_LH_C_0_2)) (`LH_C(_lh_minSolutions_LH_C_0_2, (`LH_N)))) _lh_minSolutions_LH_C_1_2)))
    | _ -> 
      (failwith "error"))
and notSeen__d0 _lh_notSeen_arg1_2 =
  (all__d0 (fun _s_2 -> 
    (let rec _lh_matchIdent_6 = _s_2 in
      (match _lh_matchIdent_6 with
        | `LH_P2(_lh_notSeen_LH_P2_0_2, _lh_notSeen_LH_P2_1_2) -> 
          (_lh_notSeen_arg1_2 <> _lh_notSeen_LH_P2_1_2)
        | _ -> 
          (failwith "error")))))
and notSeen__d1 _lh_notSeen_arg1_1 =
  (all__d1 (fun _s_1 -> 
    (let rec _lh_matchIdent_4 = _s_1 in
      (match _lh_matchIdent_4 with
        | `LH_P2(_lh_notSeen_LH_P2_0_1, _lh_notSeen_LH_P2_1_1) -> 
          (_lh_notSeen_arg1_1 <> _lh_notSeen_LH_P2_1_1)
        | _ -> 
          (failwith "error")))))
and position__d0 _lh_position_arg1_2 =
  (match _lh_position_arg1_2 with
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
and position__d1 _lh_position_arg1_1 =
  (match _lh_position_arg1_1 with
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
and position__d2 _lh_position_arg1_3 =
  (match _lh_position_arg1_3 with
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
and reverse__d0 ls_2_1 =
  ((reverse_helper__d0 ls_2_1) (`LH_N))
and testPuzzle_nofib__d0 _lh_testPuzzle_nofib_arg1_1 =
  (let rec time_1 = (if ((length__d0 _lh_testPuzzle_nofib_arg1_1) = 1) then
    0
  else
    ((failwith "error") (`LH_C('p', (`LH_C('u', (`LH_C('z', (`LH_C('z', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('x', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (let rec solutions_1 = (((((transfer__d0 initialState__d0) finalState__d0) (`RightBank)) time_1) (`LH_N)) in
      (let rec mins_2 = (minSolutions__d0 solutions_1) in
        (((writeSolutions__d0 mins_2) 1) (`LH_N)))))
and transfer__d0 _lh_transfer_arg1_1 _lh_transfer_arg2_1 _lh_transfer_arg3_1 _lh_transfer_arg4_1 _lh_transfer_arg5_1 =
  (if (_lh_transfer_arg1_1 = _lh_transfer_arg2_1) then
    (`LH_C((`LH_C((`LH_P2(_lh_transfer_arg4_1, _lh_transfer_arg2_1)), _lh_transfer_arg5_1)), (`LH_N)))
  else
    (let rec newHistory_1 = (`LH_C((`LH_P2(_lh_transfer_arg4_1, _lh_transfer_arg2_1)), _lh_transfer_arg5_1)) in
      (let rec newLocation_1 = (opposite__d0 _lh_transfer_arg3_1) in
        (let rec moveOne_1 = (concat__d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (if (((position__d0 _lh_listcomp_fun_ls_h_3) _lh_transfer_arg2_1) = _lh_transfer_arg3_1) then
                (let rec newDest_2 = (((updateState__d0 _lh_transfer_arg2_1) _lh_listcomp_fun_ls_h_3) newLocation_1) in
                  (if ((notSeen__d0 newDest_2) _lh_transfer_arg5_1) then
                    (let rec newTime_2 = (_lh_transfer_arg4_1 + (u2times__d0 _lh_listcomp_fun_ls_h_3)) in
                      (`LH_C((((((transfer__d0 _lh_transfer_arg1_1) newDest_2) newLocation_1) newTime_2) newHistory_1), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))))
                  else
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
              else
                (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_3 ((itemFromTo__d0 (`Bono)) (`Adam))))) in
          (let rec moveTwo_1 = (concat__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
            (match _lh_listcomp_fun_para_4 with
              | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                  (match _lh_listcomp_fun_para_5 with
                    | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                      (if ((((position__d1 _lh_listcomp_fun_ls_h_4) _lh_transfer_arg2_1) = _lh_transfer_arg3_1) && (((position__d2 _lh_listcomp_fun_ls_h_5) _lh_transfer_arg2_1) = _lh_transfer_arg3_1)) then
                        (let rec newDest_3 = (((updateState__d1 (((updateState__d2 _lh_transfer_arg2_1) _lh_listcomp_fun_ls_h_4) newLocation_1)) _lh_listcomp_fun_ls_h_5) newLocation_1) in
                          (if ((notSeen__d1 newDest_3) _lh_transfer_arg5_1) then
                            (let rec newTime_3 = (_lh_transfer_arg4_1 + (u2times__d1 _lh_listcomp_fun_ls_h_4)) in
                              (`LH_C((((((transfer__d0 _lh_transfer_arg1_1) newDest_3) newLocation_1) newTime_3) newHistory_1), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))))
                          else
                            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                      else
                        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
                    | `LH_N -> 
                      (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
                  (_lh_listcomp_fun_5 ((itemFromTo__d2 (succItem__d3 _lh_listcomp_fun_ls_h_4)) (`Adam))))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_4 ((itemFromTo__d1 (`Bono)) (`Larry))))) in
            ((mappend__d2 moveOne_1) moveTwo_1))))))
and writeHistory__d0 _lh_writeHistory_arg1_1 =
  (match _lh_writeHistory_arg1_1 with
    | `LH_N -> 
      (fun x_1_1 -> 
        x_1_1)
    | _ -> 
      (((foldr__d0 (fun timestate_1 acc_1 -> 
        (let rec _lh_matchIdent_3 = timestate_1 in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_writeHistory_LH_P2_0_1, _lh_writeHistory_LH_P2_1_1) -> 
              (fun _lh_funcomp_x_1_3 -> 
                ((fun _lh_funcomp_x_1_4 -> 
                  ((fun _lh_funcomp_x_1_5 -> 
                    ((fun _lh_funcomp_x_1_6 -> 
                      ((fun x_1_2 -> 
                        ((mappend__d5 (`LH_C('T', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))) x_1_2)) ((fun x_1_3 -> 
                        ((mappend__d6 (string_of_int ((totalTime__d2 _lh_writeHistory_arg1_1) - _lh_writeHistory_LH_P2_0_1))) x_1_3)) _lh_funcomp_x_1_6))) ((fun x_1_4 -> 
                      (`LH_C('|', x_1_4))) _lh_funcomp_x_1_5))) ((writeState__d0 _lh_writeHistory_LH_P2_1_1) _lh_funcomp_x_1_4))) (acc_1 _lh_funcomp_x_1_3)))
            | _ -> 
              (failwith "error"))))) (fun x_1_5 -> 
        x_1_5)) _lh_writeHistory_arg1_1))
and writeItem__d0 _lh_writeItem_arg1_4 _lh_writeItem_arg2_4 _lh_writeItem_arg3_4 =
  (match _lh_writeItem_arg1_4 with
    | `Bono -> 
      (match _lh_writeItem_arg2_4 with
        | `LeftBank -> 
          ((mappend__d9 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | `RightBank -> 
          ((mappend__d1_d0 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | _ -> 
          (failwith "error"))
    | `Edge -> 
      (match _lh_writeItem_arg2_4 with
        | `LeftBank -> 
          ((mappend__d1_d1 (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | `RightBank -> 
          ((mappend__d1_d2 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | _ -> 
          (failwith "error"))
    | `Larry -> 
      (match _lh_writeItem_arg2_4 with
        | `LeftBank -> 
          ((mappend__d1_d3 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | `RightBank -> 
          ((mappend__d1_d4 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | _ -> 
          (failwith "error"))
    | `Adam -> 
      (match _lh_writeItem_arg2_4 with
        | `LeftBank -> 
          ((mappend__d1_d5 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | `RightBank -> 
          ((mappend__d1_d6 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_4)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and writeItem__d1 _lh_writeItem_arg1_1 _lh_writeItem_arg2_1 _lh_writeItem_arg3_1 =
  (match _lh_writeItem_arg1_1 with
    | `Bono -> 
      (match _lh_writeItem_arg2_1 with
        | `LeftBank -> 
          ((mappend__d1_d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | `RightBank -> 
          ((mappend__d1_d8 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | _ -> 
          (failwith "error"))
    | `Edge -> 
      (match _lh_writeItem_arg2_1 with
        | `LeftBank -> 
          ((mappend__d1_d9 (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | `RightBank -> 
          ((mappend__d2_d0 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | _ -> 
          (failwith "error"))
    | `Larry -> 
      (match _lh_writeItem_arg2_1 with
        | `LeftBank -> 
          ((mappend__d2_d1 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | `RightBank -> 
          ((mappend__d2_d2 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | _ -> 
          (failwith "error"))
    | `Adam -> 
      (match _lh_writeItem_arg2_1 with
        | `LeftBank -> 
          ((mappend__d2_d3 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | `RightBank -> 
          ((mappend__d2_d4 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and writeItem__d2 _lh_writeItem_arg1_2 _lh_writeItem_arg2_2 _lh_writeItem_arg3_2 =
  (match _lh_writeItem_arg1_2 with
    | `Bono -> 
      (match _lh_writeItem_arg2_2 with
        | `LeftBank -> 
          ((mappend__d2_d5 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | `RightBank -> 
          ((mappend__d2_d6 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | _ -> 
          (failwith "error"))
    | `Edge -> 
      (match _lh_writeItem_arg2_2 with
        | `LeftBank -> 
          ((mappend__d2_d7 (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | `RightBank -> 
          ((mappend__d2_d8 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | _ -> 
          (failwith "error"))
    | `Larry -> 
      (match _lh_writeItem_arg2_2 with
        | `LeftBank -> 
          ((mappend__d2_d9 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | `RightBank -> 
          ((mappend__d3_d0 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | _ -> 
          (failwith "error"))
    | `Adam -> 
      (match _lh_writeItem_arg2_2 with
        | `LeftBank -> 
          ((mappend__d3_d1 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | `RightBank -> 
          ((mappend__d3_d2 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_2)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and writeItem__d3 _lh_writeItem_arg1_3 _lh_writeItem_arg2_3 _lh_writeItem_arg3_3 =
  (match _lh_writeItem_arg1_3 with
    | `Bono -> 
      (match _lh_writeItem_arg2_3 with
        | `LeftBank -> 
          ((mappend__d3_d3 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | `RightBank -> 
          ((mappend__d3_d4 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('B', (`LH_C('o', (`LH_C('n', (`LH_C('o', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | _ -> 
          (failwith "error"))
    | `Edge -> 
      (match _lh_writeItem_arg2_3 with
        | `LeftBank -> 
          ((mappend__d3_d5 (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | `RightBank -> 
          ((mappend__d3_d6 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('E', (`LH_C('d', (`LH_C('g', (`LH_C('e', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | _ -> 
          (failwith "error"))
    | `Larry -> 
      (match _lh_writeItem_arg2_3 with
        | `LeftBank -> 
          ((mappend__d3_d7 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | `RightBank -> 
          ((mappend__d3_d8 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('L', (`LH_C('a', (`LH_C('r', (`LH_C('r', (`LH_C('y', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | _ -> 
          (failwith "error"))
    | `Adam -> 
      (match _lh_writeItem_arg2_3 with
        | `LeftBank -> 
          ((mappend__d3_d9 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | `RightBank -> 
          ((mappend__d4_d0 (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('|', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('a', (`LH_C('m', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) _lh_writeItem_arg3_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and writeSolutions__d0 _lh_writeSolutions_arg1_1 _lh_writeSolutions_arg2_1 =
  (match _lh_writeSolutions_arg1_1 with
    | `LH_N -> 
      (fun x_1_6 -> 
        x_1_6)
    | `LH_C(_lh_writeSolutions_LH_C_0_1, _lh_writeSolutions_LH_C_1_1) -> 
      (fun _lh_funcomp_x_2_2 -> 
        ((fun _lh_funcomp_x_2_3 -> 
          ((fun _lh_funcomp_x_2_4 -> 
            ((fun _lh_funcomp_x_2_5 -> 
              ((fun x_1_7 -> 
                ((mappend__d3 (`LH_C('S', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_N)))))))))))))))))))) x_1_7)) ((fun x_1_8 -> 
                ((mappend__d4 (string_of_int _lh_writeSolutions_arg2_1)) x_1_8)) _lh_funcomp_x_2_5))) ((fun x_1_9 -> 
              (`LH_C('|', x_1_9))) _lh_funcomp_x_2_4))) ((writeHistory__d0 _lh_writeSolutions_LH_C_0_1) _lh_funcomp_x_2_3))) (((writeSolutions__d0 _lh_writeSolutions_LH_C_1_1) (_lh_writeSolutions_arg2_1 + 1)) _lh_funcomp_x_2_2)))
    | _ -> 
      (failwith "error"))
and writeState__d0 _lh_writeState_arg1_1 _lh_funcomp_x_1_7 =
  ((fun _lh_funcomp_x_1_8 -> 
    ((fun _lh_funcomp_x_1_9 -> 
      ((fun _lh_funcomp_x_2_0 -> 
        ((fun _lh_funcomp_x_2_1 -> 
          ((fun s_2 -> 
            ((mappend__d8 (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) s_2)) (((writeItem__d0 (`Bono)) (bonoPos__d3 _lh_writeState_arg1_1)) _lh_funcomp_x_2_1))) (((writeItem__d1 (`Edge)) (edgePos__d3 _lh_writeState_arg1_1)) _lh_funcomp_x_2_0))) (((writeItem__d2 (`Larry)) (larryPos__d3 _lh_writeState_arg1_1)) _lh_funcomp_x_1_9))) (((writeItem__d3 (`Adam)) (adamPos__d3 _lh_writeState_arg1_1)) _lh_funcomp_x_1_8))) ((fun s_3 -> 
    ((mappend__d7 (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) s_3)) _lh_funcomp_x_1_7));;
end;;

