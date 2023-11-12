
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec all__d0 _lh_all_arg1_3 _lh_all_arg2_3 =
  (match _lh_all_arg2_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_3, _lh_all_LH_C_1_3) -> 
      (if (_lh_all_arg1_3 _lh_all_LH_C_0_3) then
        ((all__d0 _lh_all_arg1_3) _lh_all_LH_C_1_3)
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
let rec all__d2 _lh_all_arg1_5 _lh_all_arg2_5 =
  (match _lh_all_arg2_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_5, _lh_all_LH_C_1_5) -> 
      (if (_lh_all_arg1_5 _lh_all_LH_C_0_5) then
        ((all__d2 _lh_all_arg1_5) _lh_all_LH_C_1_5)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all__d3 _lh_all_arg1_2 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_2) then
        ((all__d3 _lh_all_arg1_2) _lh_all_LH_C_1_2)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all__d4 _lh_all_arg1_4 _lh_all_arg2_4 =
  (match _lh_all_arg2_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_4, _lh_all_LH_C_1_4) -> 
      (if (_lh_all_arg1_4 _lh_all_LH_C_0_4) then
        ((all__d4 _lh_all_arg1_4) _lh_all_LH_C_1_4)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all__d5 _lh_all_arg1_6 _lh_all_arg2_6 =
  (match _lh_all_arg2_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_6, _lh_all_LH_C_1_6) -> 
      (if (_lh_all_arg1_6 _lh_all_LH_C_0_6) then
        ((all__d5 _lh_all_arg1_6) _lh_all_LH_C_1_6)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec any__d0 _lh_any_arg1_1 _lh_any_arg2_1 =
  (match _lh_any_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_1, _lh_any_LH_C_1_1) -> 
      (if (_lh_any_arg1_1 _lh_any_LH_C_0_1) then
        true
      else
        ((any__d0 _lh_any_arg1_1) _lh_any_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec any__d1 _lh_any_arg1_4 _lh_any_arg2_4 =
  (match _lh_any_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_4, _lh_any_LH_C_1_4) -> 
      (if (_lh_any_arg1_4 _lh_any_LH_C_0_4) then
        true
      else
        ((any__d1 _lh_any_arg1_4) _lh_any_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec any__d2 _lh_any_arg1_5 _lh_any_arg2_5 =
  (match _lh_any_arg2_5 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_5, _lh_any_LH_C_1_5) -> 
      (if (_lh_any_arg1_5 _lh_any_LH_C_0_5) then
        true
      else
        ((any__d2 _lh_any_arg1_5) _lh_any_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec any__d3 _lh_any_arg1_2 _lh_any_arg2_2 =
  (match _lh_any_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_2, _lh_any_LH_C_1_2) -> 
      (if (_lh_any_arg1_2 _lh_any_LH_C_0_2) then
        true
      else
        ((any__d3 _lh_any_arg1_2) _lh_any_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec any__d4 _lh_any_arg1_3 _lh_any_arg2_3 =
  (match _lh_any_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_3, _lh_any_LH_C_1_3) -> 
      (if (_lh_any_arg1_3 _lh_any_LH_C_0_3) then
        true
      else
        ((any__d4 _lh_any_arg1_3) _lh_any_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec atIndex__d0 n_4 ls_4_9 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match ls_4_9 with
      | `LH_C(h_6_0, t_6_9) -> 
        (if (n_4 = 0) then
          h_6_0
        else
          ((atIndex__d0 (n_4 - 1)) t_6_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d1 n_6 ls_7_5 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match ls_7_5 with
      | `LH_C(h_9_2, t_1_0_3) -> 
        (if (n_6 = 0) then
          h_9_2
        else
          ((atIndex__d1 (n_6 - 1)) t_1_0_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex__d2 n_5 ls_6_4 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match ls_6_4 with
      | `LH_C(h_7_4, t_8_4) -> 
        (if (n_5 = 0) then
          h_7_4
        else
          ((atIndex__d2 (n_5 - 1)) t_8_4))
      | `LH_N -> 
        (failwith "error")));;
let rec box__d0 _lh_box_arg1_2 =
  (`LH_C(_lh_box_arg1_2, (`LH_N)));;
let rec box__d1 _lh_box_arg1_1 =
  (`LH_C(_lh_box_arg1_1, (`LH_N)));;
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec croak__d0 =
  (`Nothing);;
let rec croak__d1 =
  (`Nothing);;
let rec croak__d1_d0 =
  (`Nothing);;
let rec croak__d1_d1 =
  (`Nothing);;
let rec croak__d1_d2 =
  (`Nothing);;
let rec croak__d1_d3 =
  (`Nothing);;
let rec croak__d2 =
  (`Nothing);;
let rec croak__d3 =
  (`Nothing);;
let rec croak__d4 =
  (`Nothing);;
let rec croak__d5 =
  (`Nothing);;
let rec croak__d6 =
  (`Nothing);;
let rec croak__d7 =
  (`Nothing);;
let rec croak__d8 =
  (`Nothing);;
let rec croak__d9 =
  (`Nothing);;
let rec cross__d0 _lh_cross_arg1_2 _lh_cross_arg2_2 _lh_cross_arg3_2 =
  (match _lh_cross_arg3_2 with
    | `LH_P2(_lh_cross_LH_P2_0_2, _lh_cross_LH_P2_1_2) -> 
      (`LH_P2((_lh_cross_arg1_2 _lh_cross_LH_P2_0_2), (_lh_cross_arg2_2 _lh_cross_LH_P2_1_2)))
    | _ -> 
      (failwith "error"));;
let rec cross__d1 _lh_cross_arg1_3 _lh_cross_arg2_3 _lh_cross_arg3_3 =
  (match _lh_cross_arg3_3 with
    | `LH_P2(_lh_cross_LH_P2_0_3, _lh_cross_LH_P2_1_3) -> 
      (`LH_P2((_lh_cross_arg1_3 _lh_cross_LH_P2_0_3), (_lh_cross_arg2_3 _lh_cross_LH_P2_1_3)))
    | _ -> 
      (failwith "error"));;
let rec cross__d2 _lh_cross_arg1_4 _lh_cross_arg2_4 _lh_cross_arg3_4 =
  (match _lh_cross_arg3_4 with
    | `LH_P2(_lh_cross_LH_P2_0_4, _lh_cross_LH_P2_1_4) -> 
      (`LH_P2((_lh_cross_arg1_4 _lh_cross_LH_P2_0_4), (_lh_cross_arg2_4 _lh_cross_LH_P2_1_4)))
    | _ -> 
      (failwith "error"));;
let rec cross__d3 _lh_cross_arg1_1 _lh_cross_arg2_1 _lh_cross_arg3_1 =
  (match _lh_cross_arg3_1 with
    | `LH_P2(_lh_cross_LH_P2_0_1, _lh_cross_LH_P2_1_1) -> 
      (`LH_P2((_lh_cross_arg1_1 _lh_cross_LH_P2_0_1), (_lh_cross_arg2_1 _lh_cross_LH_P2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile__d1 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile__d1 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec enumFrom__d0 a_7 =
  (lazy (`LH_C(a_7, (enumFrom__d0 (a_7 + 1)))));;
let rec enumFrom__d1 a_1_0 =
  (lazy (`LH_C(a_1_0, (enumFrom__d1 (a_1_0 + 1)))));;
let rec enumFrom__d2 a_8 =
  (lazy (`LH_C(a_8, (enumFrom__d2 (a_8 + 1)))));;
let rec enumFrom__d3 a_9 =
  (lazy (`LH_C(a_9, (enumFrom__d3 (a_9 + 1)))));;
let rec eqRewrite__d0 _lh_eqRewrite_arg1_1 _lh_eqRewrite_arg2_1 _lh_eqRewrite_arg3_1 =
  ((_lh_eqRewrite_arg1_1 (`LH_P2(_lh_eqRewrite_arg2_1, _lh_eqRewrite_arg3_1))) = (`Equal));;
let rec eqno__d0 _lh_eqno_arg1_2 =
  (match _lh_eqno_arg1_2 with
    | `Eqn(_lh_eqno_Eqn_0_2, _lh_eqno_Eqn_1_2) -> 
      (match _lh_eqno_Eqn_1_2 with
        | `LH_P2(_lh_eqno_LH_P2_0_2, _lh_eqno_LH_P2_1_2) -> 
          _lh_eqno_Eqn_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqno__d1 _lh_eqno_arg1_1 =
  (match _lh_eqno_arg1_1 with
    | `Eqn(_lh_eqno_Eqn_0_1, _lh_eqno_Eqn_1_1) -> 
      (match _lh_eqno_Eqn_1_1 with
        | `LH_P2(_lh_eqno_LH_P2_0_1, _lh_eqno_LH_P2_1_1) -> 
          _lh_eqno_Eqn_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqpr__d0 _lh_eqpr_arg1_1 =
  (match _lh_eqpr_arg1_1 with
    | `Eqn(_lh_eqpr_Eqn_0_1, _lh_eqpr_Eqn_1_1) -> 
      _lh_eqpr_Eqn_1_1
    | _ -> 
      (failwith "error"));;
let rec exists__d0 _lh_exists_arg1_6 =
  (match _lh_exists_arg1_6 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists__d1 _lh_exists_arg1_1 =
  (match _lh_exists_arg1_1 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists__d2 _lh_exists_arg1_3 =
  (match _lh_exists_arg1_3 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists__d3 _lh_exists_arg1_4 =
  (match _lh_exists_arg1_4 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists__d4 _lh_exists_arg1_2 =
  (match _lh_exists_arg1_2 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists__d5 _lh_exists_arg1_5 =
  (match _lh_exists_arg1_5 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec filter__d0 f_5_2 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_7_0, t_8_0) -> 
      (if (f_5_2 h_7_0) then
        (`LH_C(h_7_0, ((filter__d0 f_5_2) t_8_0)))
      else
        ((filter__d0 f_5_2) t_8_0))
    | `LH_N -> 
      (`LH_N));;
let rec foldl__d0 f_2_0 i_5 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_2_8, t_3_4) -> 
      (((foldl__d0 f_2_0) ((f_2_0 i_5) h_2_8)) t_3_4)
    | `LH_N -> 
      i_5);;
let rec foldr__d0 f_6_7 i_1_6 ls_7_8 =
  (match ls_7_8 with
    | `LH_C(h_9_6, t_1_0_7) -> 
      ((f_6_7 h_9_6) (((foldr__d0 f_6_7) i_1_6) t_1_0_7))
    | `LH_N -> 
      i_1_6);;
let rec foldr__d1 f_7_5 i_1_9 ls_8_5 =
  (match ls_8_5 with
    | `LH_C(h_1_0_5, t_1_1_9) -> 
      ((f_7_5 h_1_0_5) (((foldr__d1 f_7_5) i_1_9) t_1_1_9))
    | `LH_N -> 
      i_1_9);;
let rec foldr__d1_d0 f_8_5 i_2_1 ls_9_5 =
  (match ls_9_5 with
    | `LH_C(h_1_1_6, t_1_3_1) -> 
      ((f_8_5 h_1_1_6) (((foldr__d1_d0 f_8_5) i_2_1) t_1_3_1))
    | `LH_N -> 
      i_2_1);;
let rec foldr__d1_d1 f_7_2 i_1_8 ls_8_2 =
  (match ls_8_2 with
    | `LH_C(h_1_0_2, t_1_1_6) -> 
      ((f_7_2 h_1_0_2) (((foldr__d1_d1 f_7_2) i_1_8) t_1_1_6))
    | `LH_N -> 
      i_1_8);;
let rec foldr__d1_d2 f_8_0 i_2_0 ls_9_0 =
  (match ls_9_0 with
    | `LH_C(h_1_1_0, t_1_2_5) -> 
      ((f_8_0 h_1_1_0) (((foldr__d1_d2 f_8_0) i_2_0) t_1_2_5))
    | `LH_N -> 
      i_2_0);;
let rec foldr__d1_d3 f_2_5 i_7 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_3_8, t_4_4) -> 
      ((f_2_5 h_3_8) (((foldr__d1_d3 f_2_5) i_7) t_4_4))
    | `LH_N -> 
      i_7);;
let rec foldr__d1_d4 f_6_3 i_1_5 ls_7_2 =
  (match ls_7_2 with
    | `LH_C(h_8_6, t_9_7) -> 
      ((f_6_3 h_8_6) (((foldr__d1_d4 f_6_3) i_1_5) t_9_7))
    | `LH_N -> 
      i_1_5);;
let rec foldr__d1_d5 f_6_2 i_1_4 ls_7_1 =
  (match ls_7_1 with
    | `LH_C(h_8_4, t_9_5) -> 
      ((f_6_2 h_8_4) (((foldr__d1_d5 f_6_2) i_1_4) t_9_5))
    | `LH_N -> 
      i_1_4);;
let rec foldr__d1_d6 f_3_2 i_1_0 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_4_4, t_5_1) -> 
      ((f_3_2 h_4_4) (((foldr__d1_d6 f_3_2) i_1_0) t_5_1))
    | `LH_N -> 
      i_1_0);;
let rec foldr__d1_d7 f_1_4 i_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_1, t_2_6) -> 
      ((f_1_4 h_2_1) (((foldr__d1_d7 f_1_4) i_3) t_2_6))
    | `LH_N -> 
      i_3);;
let rec foldr__d2 f_2_9 i_8 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_4_1, t_4_8) -> 
      ((f_2_9 h_4_1) (((foldr__d2 f_2_9) i_8) t_4_8))
    | `LH_N -> 
      i_8);;
let rec foldr__d3 f_2_2 i_6 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_0, t_3_6) -> 
      ((f_2_2 h_3_0) (((foldr__d3 f_2_2) i_6) t_3_6))
    | `LH_N -> 
      i_6);;
let rec foldr__d4 f_4_0 i_1_1 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_5_5, t_6_4) -> 
      ((f_4_0 h_5_5) (((foldr__d4 f_4_0) i_1_1) t_6_4))
    | `LH_N -> 
      i_1_1);;
let rec foldr__d5 f_1_6 i_4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_2_8) -> 
      ((f_1_6 h_2_3) (((foldr__d5 f_1_6) i_4) t_2_8))
    | `LH_N -> 
      i_4);;
let rec foldr__d6 f_5_4 i_1_2 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_7_2, t_8_2) -> 
      ((f_5_4 h_7_2) (((foldr__d6 f_5_4) i_1_2) t_8_2))
    | `LH_N -> 
      i_1_2);;
let rec foldr__d7 f_3_0 i_9 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_4_2, t_4_9) -> 
      ((f_3_0 h_4_2) (((foldr__d7 f_3_0) i_9) t_4_9))
    | `LH_N -> 
      i_9);;
let rec foldr__d8 f_6_9 i_1_7 ls_8_0 =
  (match ls_8_0 with
    | `LH_C(h_9_9, t_1_1_1) -> 
      ((f_6_9 h_9_9) (((foldr__d8 f_6_9) i_1_7) t_1_1_1))
    | `LH_N -> 
      i_1_7);;
let rec foldr__d9 f_6_0 i_1_3 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_8_1, t_9_1) -> 
      ((f_6_0 h_8_1) (((foldr__d9 f_6_0) i_1_3) t_9_1))
    | `LH_N -> 
      i_1_3);;
let rec fst__d0 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec fst__d1 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst__d2 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst__d3 _lh_fst_arg1_4 =
  (match _lh_fst_arg1_4 with
    | `LH_P2(_lh_fst_LH_P2_0_4, _lh_fst_LH_P2_1_4) -> 
      _lh_fst_LH_P2_0_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d0 _lh_getOrElse_arg1_5 _lh_getOrElse_arg2_5 =
  (match _lh_getOrElse_arg1_5 with
    | `Just(_lh_getOrElse_Just_0_5) -> 
      _lh_getOrElse_Just_0_5
    | `Nothing -> 
      _lh_getOrElse_arg2_5
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1 _lh_getOrElse_arg1_1_7 _lh_getOrElse_arg2_1_7 =
  (match _lh_getOrElse_arg1_1_7 with
    | `Just(_lh_getOrElse_Just_0_1_7) -> 
      _lh_getOrElse_Just_0_1_7
    | `Nothing -> 
      _lh_getOrElse_arg2_1_7
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d0 _lh_getOrElse_arg1_1_2 _lh_getOrElse_arg2_1_2 =
  (match _lh_getOrElse_arg1_1_2 with
    | `Just(_lh_getOrElse_Just_0_1_2) -> 
      _lh_getOrElse_Just_0_1_2
    | `Nothing -> 
      _lh_getOrElse_arg2_1_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d1 _lh_getOrElse_arg1_1_6 _lh_getOrElse_arg2_1_6 =
  (match _lh_getOrElse_arg1_1_6 with
    | `Just(_lh_getOrElse_Just_0_1_6) -> 
      _lh_getOrElse_Just_0_1_6
    | `Nothing -> 
      _lh_getOrElse_arg2_1_6
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d2 _lh_getOrElse_arg1_1 _lh_getOrElse_arg2_1 =
  (match _lh_getOrElse_arg1_1 with
    | `Just(_lh_getOrElse_Just_0_1) -> 
      _lh_getOrElse_Just_0_1
    | `Nothing -> 
      _lh_getOrElse_arg2_1
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d3 _lh_getOrElse_arg1_1_4 _lh_getOrElse_arg2_1_4 =
  (match _lh_getOrElse_arg1_1_4 with
    | `Just(_lh_getOrElse_Just_0_1_4) -> 
      _lh_getOrElse_Just_0_1_4
    | `Nothing -> 
      _lh_getOrElse_arg2_1_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d4 _lh_getOrElse_arg1_1_3 _lh_getOrElse_arg2_1_3 =
  (match _lh_getOrElse_arg1_1_3 with
    | `Just(_lh_getOrElse_Just_0_1_3) -> 
      _lh_getOrElse_Just_0_1_3
    | `Nothing -> 
      _lh_getOrElse_arg2_1_3
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d5 _lh_getOrElse_arg1_3 _lh_getOrElse_arg2_3 =
  (match _lh_getOrElse_arg1_3 with
    | `Just(_lh_getOrElse_Just_0_3) -> 
      _lh_getOrElse_Just_0_3
    | `Nothing -> 
      _lh_getOrElse_arg2_3
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d1_d6 _lh_getOrElse_arg1_1_1 _lh_getOrElse_arg2_1_1 =
  (match _lh_getOrElse_arg1_1_1 with
    | `Just(_lh_getOrElse_Just_0_1_1) -> 
      _lh_getOrElse_Just_0_1_1
    | `Nothing -> 
      _lh_getOrElse_arg2_1_1
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d2 _lh_getOrElse_arg1_6 _lh_getOrElse_arg2_6 =
  (match _lh_getOrElse_arg1_6 with
    | `Just(_lh_getOrElse_Just_0_6) -> 
      _lh_getOrElse_Just_0_6
    | `Nothing -> 
      _lh_getOrElse_arg2_6
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d3 _lh_getOrElse_arg1_7 _lh_getOrElse_arg2_7 =
  (match _lh_getOrElse_arg1_7 with
    | `Just(_lh_getOrElse_Just_0_7) -> 
      _lh_getOrElse_Just_0_7
    | `Nothing -> 
      _lh_getOrElse_arg2_7
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d4 _lh_getOrElse_arg1_4 _lh_getOrElse_arg2_4 =
  (match _lh_getOrElse_arg1_4 with
    | `Just(_lh_getOrElse_Just_0_4) -> 
      _lh_getOrElse_Just_0_4
    | `Nothing -> 
      _lh_getOrElse_arg2_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d5 _lh_getOrElse_arg1_1_5 _lh_getOrElse_arg2_1_5 =
  (match _lh_getOrElse_arg1_1_5 with
    | `Just(_lh_getOrElse_Just_0_1_5) -> 
      _lh_getOrElse_Just_0_1_5
    | `Nothing -> 
      _lh_getOrElse_arg2_1_5
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d6 _lh_getOrElse_arg1_1_0 _lh_getOrElse_arg2_1_0 =
  (match _lh_getOrElse_arg1_1_0 with
    | `Just(_lh_getOrElse_Just_0_1_0) -> 
      _lh_getOrElse_Just_0_1_0
    | `Nothing -> 
      _lh_getOrElse_arg2_1_0
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d7 _lh_getOrElse_arg1_2 _lh_getOrElse_arg2_2 =
  (match _lh_getOrElse_arg1_2 with
    | `Just(_lh_getOrElse_Just_0_2) -> 
      _lh_getOrElse_Just_0_2
    | `Nothing -> 
      _lh_getOrElse_arg2_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d8 _lh_getOrElse_arg1_8 _lh_getOrElse_arg2_8 =
  (match _lh_getOrElse_arg1_8 with
    | `Just(_lh_getOrElse_Just_0_8) -> 
      _lh_getOrElse_Just_0_8
    | `Nothing -> 
      _lh_getOrElse_arg2_8
    | _ -> 
      (failwith "error"));;
let rec getOrElse__d9 _lh_getOrElse_arg1_9 _lh_getOrElse_arg2_9 =
  (match _lh_getOrElse_arg1_9 with
    | `Just(_lh_getOrElse_Just_0_9) -> 
      _lh_getOrElse_Just_0_9
    | `Nothing -> 
      _lh_getOrElse_arg2_9
    | _ -> 
      (failwith "error"));;
let rec gtRewrite__d0 _lh_gtRewrite_arg1_1 _lh_gtRewrite_arg2_1 _lh_gtRewrite_arg3_1 =
  ((_lh_gtRewrite_arg1_1 (`LH_P2(_lh_gtRewrite_arg2_1, _lh_gtRewrite_arg3_1))) = (`Greater));;
let rec inList__d0 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d0 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_4 _lh_inList_arg2_4 =
  (match _lh_inList_arg2_4 with
    | `LH_C(_lh_inList_LH_C_0_4, _lh_inList_LH_C_1_4) -> 
      (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
        true
      else
        ((inList__d1 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d2 _lh_inList_arg1_6 _lh_inList_arg2_6 =
  (match _lh_inList_arg2_6 with
    | `LH_C(_lh_inList_LH_C_0_6, _lh_inList_LH_C_1_6) -> 
      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_6) then
        true
      else
        ((inList__d2 _lh_inList_arg1_6) _lh_inList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d3 _lh_inList_arg1_5 _lh_inList_arg2_5 =
  (match _lh_inList_arg2_5 with
    | `LH_C(_lh_inList_LH_C_0_5, _lh_inList_LH_C_1_5) -> 
      (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_5) then
        true
      else
        ((inList__d3 _lh_inList_arg1_5) _lh_inList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d4 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d4 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d5 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList__d5 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec lhs__d0 _lh_lhs_arg1_7 =
  (match _lh_lhs_arg1_7 with
    | `Eqn(_lh_lhs_Eqn_0_7, _lh_lhs_Eqn_1_7) -> 
      (match _lh_lhs_Eqn_1_7 with
        | `LH_P2(_lh_lhs_LH_P2_0_7, _lh_lhs_LH_P2_1_7) -> 
          _lh_lhs_LH_P2_0_7
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs__d1 _lh_lhs_arg1_6 =
  (match _lh_lhs_arg1_6 with
    | `Eqn(_lh_lhs_Eqn_0_6, _lh_lhs_Eqn_1_6) -> 
      (match _lh_lhs_Eqn_1_6 with
        | `LH_P2(_lh_lhs_LH_P2_0_6, _lh_lhs_LH_P2_1_6) -> 
          _lh_lhs_LH_P2_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs__d2 _lh_lhs_arg1_5 =
  (match _lh_lhs_arg1_5 with
    | `Eqn(_lh_lhs_Eqn_0_5, _lh_lhs_Eqn_1_5) -> 
      (match _lh_lhs_Eqn_1_5 with
        | `LH_P2(_lh_lhs_LH_P2_0_5, _lh_lhs_LH_P2_1_5) -> 
          _lh_lhs_LH_P2_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs__d3 _lh_lhs_arg1_2 =
  (match _lh_lhs_arg1_2 with
    | `Eqn(_lh_lhs_Eqn_0_2, _lh_lhs_Eqn_1_2) -> 
      (match _lh_lhs_Eqn_1_2 with
        | `LH_P2(_lh_lhs_LH_P2_0_2, _lh_lhs_LH_P2_1_2) -> 
          _lh_lhs_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs__d4 _lh_lhs_arg1_4 =
  (match _lh_lhs_arg1_4 with
    | `Eqn(_lh_lhs_Eqn_0_4, _lh_lhs_Eqn_1_4) -> 
      (match _lh_lhs_Eqn_1_4 with
        | `LH_P2(_lh_lhs_LH_P2_0_4, _lh_lhs_LH_P2_1_4) -> 
          _lh_lhs_LH_P2_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs__d5 _lh_lhs_arg1_1 =
  (match _lh_lhs_arg1_1 with
    | `Eqn(_lh_lhs_Eqn_0_1, _lh_lhs_Eqn_1_1) -> 
      (match _lh_lhs_Eqn_1_1 with
        | `LH_P2(_lh_lhs_LH_P2_0_1, _lh_lhs_LH_P2_1_1) -> 
          _lh_lhs_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs__d6 _lh_lhs_arg1_3 =
  (match _lh_lhs_arg1_3 with
    | `Eqn(_lh_lhs_Eqn_0_3, _lh_lhs_Eqn_1_3) -> 
      (match _lh_lhs_Eqn_1_3 with
        | `LH_P2(_lh_lhs_LH_P2_0_3, _lh_lhs_LH_P2_1_3) -> 
          _lh_lhs_LH_P2_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lift__d0 _lh_lift_arg1_5 _lh_lift_arg2_5 =
  (match _lh_lift_arg2_5 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_5) -> 
      (`Just((_lh_lift_arg1_5 _lh_lift_Just_0_5)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1 _lh_lift_arg1_9 _lh_lift_arg2_9 =
  (match _lh_lift_arg2_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_9) -> 
      (`Just((_lh_lift_arg1_9 _lh_lift_Just_0_9)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d0 _lh_lift_arg1_1_7 _lh_lift_arg2_1_7 =
  (match _lh_lift_arg2_1_7 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_7) -> 
      (`Just((_lh_lift_arg1_1_7 _lh_lift_Just_0_1_7)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d1 _lh_lift_arg1_1_0 _lh_lift_arg2_1_0 =
  (match _lh_lift_arg2_1_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_0) -> 
      (`Just((_lh_lift_arg1_1_0 _lh_lift_Just_0_1_0)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d2 _lh_lift_arg1_1_9 _lh_lift_arg2_1_9 =
  (match _lh_lift_arg2_1_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_9) -> 
      (`Just((_lh_lift_arg1_1_9 _lh_lift_Just_0_1_9)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d3 _lh_lift_arg1_1_6 _lh_lift_arg2_1_6 =
  (match _lh_lift_arg2_1_6 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_6) -> 
      (`Just((_lh_lift_arg1_1_6 _lh_lift_Just_0_1_6)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d4 _lh_lift_arg1_4 _lh_lift_arg2_4 =
  (match _lh_lift_arg2_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_4) -> 
      (`Just((_lh_lift_arg1_4 _lh_lift_Just_0_4)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d5 _lh_lift_arg1_7 _lh_lift_arg2_7 =
  (match _lh_lift_arg2_7 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_7) -> 
      (`Just((_lh_lift_arg1_7 _lh_lift_Just_0_7)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d6 _lh_lift_arg1_1_1 _lh_lift_arg2_1_1 =
  (match _lh_lift_arg2_1_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_1) -> 
      (`Just((_lh_lift_arg1_1_1 _lh_lift_Just_0_1_1)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d7 _lh_lift_arg1_2_0 _lh_lift_arg2_2_0 =
  (match _lh_lift_arg2_2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2_0) -> 
      (`Just((_lh_lift_arg1_2_0 _lh_lift_Just_0_2_0)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d8 _lh_lift_arg1_6 _lh_lift_arg2_6 =
  (match _lh_lift_arg2_6 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_6) -> 
      (`Just((_lh_lift_arg1_6 _lh_lift_Just_0_6)))
    | _ -> 
      (failwith "error"));;
let rec lift__d1_d9 _lh_lift_arg1_1_4 _lh_lift_arg2_1_4 =
  (match _lh_lift_arg2_1_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_4) -> 
      (`Just((_lh_lift_arg1_1_4 _lh_lift_Just_0_1_4)))
    | _ -> 
      (failwith "error"));;
let rec lift__d2 _lh_lift_arg1_3 _lh_lift_arg2_3 =
  (match _lh_lift_arg2_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_3) -> 
      (`Just((_lh_lift_arg1_3 _lh_lift_Just_0_3)))
    | _ -> 
      (failwith "error"));;
let rec lift__d3 _lh_lift_arg1_1_3 _lh_lift_arg2_1_3 =
  (match _lh_lift_arg2_1_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_3) -> 
      (`Just((_lh_lift_arg1_1_3 _lh_lift_Just_0_1_3)))
    | _ -> 
      (failwith "error"));;
let rec lift__d4 _lh_lift_arg1_1_8 _lh_lift_arg2_1_8 =
  (match _lh_lift_arg2_1_8 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_8) -> 
      (`Just((_lh_lift_arg1_1_8 _lh_lift_Just_0_1_8)))
    | _ -> 
      (failwith "error"));;
let rec lift__d5 _lh_lift_arg1_2 _lh_lift_arg2_2 =
  (match _lh_lift_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2) -> 
      (`Just((_lh_lift_arg1_2 _lh_lift_Just_0_2)))
    | _ -> 
      (failwith "error"));;
let rec lift__d6 _lh_lift_arg1_8 _lh_lift_arg2_8 =
  (match _lh_lift_arg2_8 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_8) -> 
      (`Just((_lh_lift_arg1_8 _lh_lift_Just_0_8)))
    | _ -> 
      (failwith "error"));;
let rec lift__d7 _lh_lift_arg1_1_5 _lh_lift_arg2_1_5 =
  (match _lh_lift_arg2_1_5 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_5) -> 
      (`Just((_lh_lift_arg1_1_5 _lh_lift_Just_0_1_5)))
    | _ -> 
      (failwith "error"));;
let rec lift__d8 _lh_lift_arg1_1_2 _lh_lift_arg2_1_2 =
  (match _lh_lift_arg2_1_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_2) -> 
      (`Just((_lh_lift_arg1_1_2 _lh_lift_Just_0_1_2)))
    | _ -> 
      (failwith "error"));;
let rec lift__d9 _lh_lift_arg1_1 _lh_lift_arg2_1 =
  (match _lh_lift_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1) -> 
      (`Just((_lh_lift_arg1_1 _lh_lift_Just_0_1)))
    | _ -> 
      (failwith "error"));;
let rec ltRewrite__d0 _lh_ltRewrite_arg1_4 _lh_ltRewrite_arg2_4 _lh_ltRewrite_arg3_4 =
  ((_lh_ltRewrite_arg1_4 (`LH_P2(_lh_ltRewrite_arg2_4, _lh_ltRewrite_arg3_4))) = (`Less));;
let rec ltRewrite__d1 _lh_ltRewrite_arg1_3 _lh_ltRewrite_arg2_3 _lh_ltRewrite_arg3_3 =
  ((_lh_ltRewrite_arg1_3 (`LH_P2(_lh_ltRewrite_arg2_3, _lh_ltRewrite_arg3_3))) = (`Less));;
let rec ltRewrite__d2 _lh_ltRewrite_arg1_1 _lh_ltRewrite_arg2_1 _lh_ltRewrite_arg3_1 =
  ((_lh_ltRewrite_arg1_1 (`LH_P2(_lh_ltRewrite_arg2_1, _lh_ltRewrite_arg3_1))) = (`Less));;
let rec ltRewrite__d3 _lh_ltRewrite_arg1_2 _lh_ltRewrite_arg2_2 _lh_ltRewrite_arg3_2 =
  ((_lh_ltRewrite_arg1_2 (`LH_P2(_lh_ltRewrite_arg2_2, _lh_ltRewrite_arg3_2))) = (`Less));;
let rec map__d0 f_6_8 ls_7_9 =
  (match ls_7_9 with
    | `LH_C(h_9_8, t_1_1_0) -> 
      (`LH_C((f_6_8 h_9_8), ((map__d0 f_6_8) t_1_1_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_7_4 ls_8_4 =
  (match ls_8_4 with
    | `LH_C(h_1_0_4, t_1_1_8) -> 
      (`LH_C((f_7_4 h_1_0_4), ((map__d1 f_7_4) t_1_1_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d0 f_5_0 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_6_8, t_7_8) -> 
      (`LH_C((f_5_0 h_6_8), ((map__d1_d0 f_5_0) t_7_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d1 f_4_3 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_5_9, t_6_8) -> 
      (`LH_C((f_4_3 h_5_9), ((map__d1_d1 f_4_3) t_6_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d2 f_8_2 ls_9_2 =
  (match ls_9_2 with
    | `LH_C(h_1_1_2, t_1_2_7) -> 
      (`LH_C((f_8_2 h_1_1_2), ((map__d1_d2 f_8_2) t_1_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d3 f_3_6 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_5_1, t_5_9) -> 
      (`LH_C((f_3_6 h_5_1), ((map__d1_d3 f_3_6) t_5_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d4 f_7_6 ls_8_6 =
  (match ls_8_6 with
    | `LH_C(h_1_0_6, t_1_2_0) -> 
      (`LH_C((f_7_6 h_1_0_6), ((map__d1_d4 f_7_6) t_1_2_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d5 f_5_9 ls_6_8 =
  (match ls_6_8 with
    | `LH_C(h_8_0, t_9_0) -> 
      (`LH_C((f_5_9 h_8_0), ((map__d1_d5 f_5_9) t_9_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d6 f_7_3 ls_8_3 =
  (match ls_8_3 with
    | `LH_C(h_1_0_3, t_1_1_7) -> 
      (`LH_C((f_7_3 h_1_0_3), ((map__d1_d6 f_7_3) t_1_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d7 f_3_3 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_4_5, t_5_2) -> 
      (`LH_C((f_3_3 h_4_5), ((map__d1_d7 f_3_3) t_5_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d8 f_6_6 ls_7_6 =
  (match ls_7_6 with
    | `LH_C(h_9_5, t_1_0_6) -> 
      (`LH_C((f_6_6 h_9_5), ((map__d1_d8 f_6_6) t_1_0_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d9 f_3_4 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_4_9, t_5_6) -> 
      (`LH_C((f_3_4 h_4_9), ((map__d1_d9 f_3_4) t_5_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_5_6 ls_6_5 =
  (match ls_6_5 with
    | `LH_C(h_7_6, t_8_6) -> 
      (`LH_C((f_5_6 h_7_6), ((map__d2 f_5_6) t_8_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d0 f_8_1 ls_9_1 =
  (match ls_9_1 with
    | `LH_C(h_1_1_1, t_1_2_6) -> 
      (`LH_C((f_8_1 h_1_1_1), ((map__d2_d0 f_8_1) t_1_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d1 f_5_5 ls_6_3 =
  (match ls_6_3 with
    | `LH_C(h_7_3, t_8_3) -> 
      (`LH_C((f_5_5 h_7_3), ((map__d2_d1 f_5_5) t_8_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d2 f_7_7 ls_8_7 =
  (match ls_8_7 with
    | `LH_C(h_1_0_7, t_1_2_1) -> 
      (`LH_C((f_7_7 h_1_0_7), ((map__d2_d2 f_7_7) t_1_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d3 f_5_3 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_7_1, t_8_1) -> 
      (`LH_C((f_5_3 h_7_1), ((map__d2_d3 f_5_3) t_8_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d4 f_1_8 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_5, t_3_1) -> 
      (`LH_C((f_1_8 h_2_5), ((map__d2_d4 f_1_8) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d5 f_5_7 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_7_8, t_8_8) -> 
      (`LH_C((f_5_7 h_7_8), ((map__d2_d5 f_5_7) t_8_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d6 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_0, t_2_5) -> 
      (`LH_C((f_1_3 h_2_0), ((map__d2_d6 f_1_3) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d7 f_2_3 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_2, t_3_8) -> 
      (`LH_C((f_2_3 h_3_2), ((map__d2_d7 f_2_3) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d8 f_4_6 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_6_3, t_7_2) -> 
      (`LH_C((f_4_6 h_6_3), ((map__d2_d8 f_4_6) t_7_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2_d9 f_5_8 ls_6_7 =
  (match ls_6_7 with
    | `LH_C(h_7_9, t_8_9) -> 
      (`LH_C((f_5_8 h_7_9), ((map__d2_d9 f_5_8) t_8_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_7_0 ls_8_1 =
  (match ls_8_1 with
    | `LH_C(h_1_0_1, t_1_1_4) -> 
      (`LH_C((f_7_0 h_1_0_1), ((map__d3 f_7_0) t_1_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d0 f_1_5 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_2, t_2_7) -> 
      (`LH_C((f_1_5 h_2_2), ((map__d3_d0 f_1_5) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d1 f_2_6 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_3_9, t_4_5) -> 
      (`LH_C((f_2_6 h_3_9), ((map__d3_d1 f_2_6) t_4_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d2 f_2_4 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_7, t_4_3) -> 
      (`LH_C((f_2_4 h_3_7), ((map__d3_d2 f_2_4) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d3 f_4_5 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_6_2, t_7_1) -> 
      (`LH_C((f_4_5 h_6_2), ((map__d3_d3 f_4_5) t_7_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d4 f_3_7 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_5_2, t_6_0) -> 
      (`LH_C((f_3_7 h_5_2), ((map__d3_d4 f_3_7) t_6_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d5 f_3_8 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_5_3, t_6_1) -> 
      (`LH_C((f_3_8 h_5_3), ((map__d3_d5 f_3_8) t_6_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d6 f_4_2 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_5_7, t_6_6) -> 
      (`LH_C((f_4_2 h_5_7), ((map__d3_d6 f_4_2) t_6_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d7 f_1_9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_2_6, t_3_2) -> 
      (`LH_C((f_1_9 h_2_6), ((map__d3_d7 f_1_9) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d8 f_6_5 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_9_1, t_1_0_2) -> 
      (`LH_C((f_6_5 h_9_1), ((map__d3_d8 f_6_5) t_1_0_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3_d9 f_4_4 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_6_1, t_7_0) -> 
      (`LH_C((f_4_4 h_6_1), ((map__d3_d9 f_4_4) t_7_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_8_4 ls_9_4 =
  (match ls_9_4 with
    | `LH_C(h_1_1_4, t_1_2_9) -> 
      (`LH_C((f_8_4 h_1_1_4), ((map__d4 f_8_4) t_1_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d0 f_5_1 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_6_9, t_7_9) -> 
      (`LH_C((f_5_1 h_6_9), ((map__d4_d0 f_5_1) t_7_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d1 f_8_3 ls_9_3 =
  (match ls_9_3 with
    | `LH_C(h_1_1_3, t_1_2_8) -> 
      (`LH_C((f_8_3 h_1_1_3), ((map__d4_d1 f_8_3) t_1_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d2 f_2_7 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_4_0, t_4_6) -> 
      (`LH_C((f_2_7 h_4_0), ((map__d4_d2 f_2_7) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d3 f_7_8 ls_8_9 =
  (match ls_8_9 with
    | `LH_C(h_1_0_9, t_1_2_3) -> 
      (`LH_C((f_7_8 h_1_0_9), ((map__d4_d3 f_7_8) t_1_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d4 f_6_4 ls_7_3 =
  (match ls_7_3 with
    | `LH_C(h_9_0, t_1_0_1) -> 
      (`LH_C((f_6_4 h_9_0), ((map__d4_d4 f_6_4) t_1_0_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d5 f_4_7 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_6_4, t_7_3) -> 
      (`LH_C((f_4_7 h_6_4), ((map__d4_d5 f_4_7) t_7_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d6 f_2_1 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_9, t_3_5) -> 
      (`LH_C((f_2_1 h_2_9), ((map__d4_d6 f_2_1) t_3_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4_d7 f_1_7 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_4, t_2_9) -> 
      (`LH_C((f_1_7 h_2_4), ((map__d4_d7 f_1_7) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_3_1 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_4_3, t_5_0) -> 
      (`LH_C((f_3_1 h_4_3), ((map__d5 f_3_1) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_4_8 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_6_6, t_7_6) -> 
      (`LH_C((f_4_8 h_6_6), ((map__d6 f_4_8) t_7_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d7 f_6_1 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_8_3, t_9_4) -> 
      (`LH_C((f_6_1 h_8_3), ((map__d7 f_6_1) t_9_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d8 f_4_9 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_6_7, t_7_7) -> 
      (`LH_C((f_4_9 h_6_7), ((map__d8 f_4_9) t_7_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d9 f_4_1 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_5_6, t_6_5) -> 
      (`LH_C((f_4_1 h_5_6), ((map__d9 f_4_1) t_6_5)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_3_0 ys_2_6 =
  (match xs_3_0 with
    | `LH_C(h_8_5, t_9_6) -> 
      (`LH_C(h_8_5, ((mappend__d0 t_9_6) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d1 xs_2_7 ys_2_3 =
  (match xs_2_7 with
    | `LH_C(h_7_7, t_8_7) -> 
      (`LH_C(h_7_7, ((mappend__d1 t_8_7) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d1_d0 xs_3_3 ys_2_9 =
  (match xs_3_3 with
    | `LH_C(h_8_8, t_9_9) -> 
      (`LH_C(h_8_8, ((mappend__d1_d0 t_9_9) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d1_d1 xs_2_9 ys_2_5 =
  (match xs_2_9 with
    | `LH_C(h_8_2, t_9_3) -> 
      (`LH_C(h_8_2, ((mappend__d1_d1 t_9_3) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d1_d2 xs_3_6 ys_3_2 =
  (match xs_3_6 with
    | `LH_C(h_9_3, t_1_0_4) -> 
      (`LH_C(h_9_3, ((mappend__d1_d2 t_1_0_4) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d1_d3 xs_2_0 ys_1_8 =
  (match xs_2_0 with
    | `LH_C(h_4_6, t_5_3) -> 
      (`LH_C(h_4_6, ((mappend__d1_d3 t_5_3) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d4 xs_3_8 ys_3_4 =
  (match xs_3_8 with
    | `LH_C(h_9_7, t_1_0_8) -> 
      (`LH_C(h_9_7, ((mappend__d1_d4 t_1_0_8) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend__d1_d5 xs_2_2 ys_2_0 =
  (match xs_2_2 with
    | `LH_C(h_4_8, t_5_5) -> 
      (`LH_C(h_4_8, ((mappend__d1_d5 t_5_5) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d6 xs_1_7 ys_1_5 =
  (match xs_1_7 with
    | `LH_C(h_3_5, t_4_1) -> 
      (`LH_C(h_3_5, ((mappend__d1_d6 t_4_1) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1_d7 xs_1_3 ys_1_1 =
  (match xs_1_3 with
    | `LH_C(h_2_7, t_3_3) -> 
      (`LH_C(h_2_7, ((mappend__d1_d7 t_3_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d8 xs_1_5 ys_1_3 =
  (match xs_1_5 with
    | `LH_C(h_3_3, t_3_9) -> 
      (`LH_C(h_3_3, ((mappend__d1_d8 t_3_9) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1_d9 xs_1_8 ys_1_6 =
  (match xs_1_8 with
    | `LH_C(h_3_6, t_4_2) -> 
      (`LH_C(h_3_6, ((mappend__d1_d9 t_4_2) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d2 xs_1_4 ys_1_2 =
  (match xs_1_4 with
    | `LH_C(h_3_1, t_3_7) -> 
      (`LH_C(h_3_1, ((mappend__d2 t_3_7) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2_d0 xs_2_3 ys_2_1 =
  (match xs_2_3 with
    | `LH_C(h_5_0, t_5_7) -> 
      (`LH_C(h_5_0, ((mappend__d2_d0 t_5_7) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d3 xs_3_7 ys_3_3 =
  (match xs_3_7 with
    | `LH_C(h_9_4, t_1_0_5) -> 
      (`LH_C(h_9_4, ((mappend__d3 t_1_0_5) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d4 xs_1_6 ys_1_4 =
  (match xs_1_6 with
    | `LH_C(h_3_4, t_4_0) -> 
      (`LH_C(h_3_4, ((mappend__d4 t_4_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d5 xs_2_1 ys_1_9 =
  (match xs_2_1 with
    | `LH_C(h_4_7, t_5_4) -> 
      (`LH_C(h_4_7, ((mappend__d5 t_5_4) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d6 xs_3_4 ys_3_0 =
  (match xs_3_4 with
    | `LH_C(h_8_9, t_1_0_0) -> 
      (`LH_C(h_8_9, ((mappend__d6 t_1_0_0) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d7 xs_4_1 ys_3_7 =
  (match xs_4_1 with
    | `LH_C(h_1_1_5, t_1_3_0) -> 
      (`LH_C(h_1_1_5, ((mappend__d7 t_1_3_0) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend__d8 xs_2_4 ys_2_2 =
  (match xs_2_4 with
    | `LH_C(h_5_4, t_6_2) -> 
      (`LH_C(h_5_4, ((mappend__d8 t_6_2) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d9 xs_3_2 ys_2_8 =
  (match xs_3_2 with
    | `LH_C(h_8_7, t_9_8) -> 
      (`LH_C(h_8_7, ((mappend__d9 t_9_8) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec maybeX__d0 _lh_maybeX_arg1_1 _lh_maybeX_arg2_1 =
  (if _lh_maybeX_arg1_1 then
    (`Just(_lh_maybeX_arg2_1))
  else
    (`Nothing));;
let rec maybeX__d1 _lh_maybeX_arg1_6 _lh_maybeX_arg2_6 =
  (if _lh_maybeX_arg1_6 then
    (`Just(_lh_maybeX_arg2_6))
  else
    (`Nothing));;
let rec maybeX__d1_d0 _lh_maybeX_arg1_3 _lh_maybeX_arg2_3 =
  (if _lh_maybeX_arg1_3 then
    (`Just(_lh_maybeX_arg2_3))
  else
    (`Nothing));;
let rec maybeX__d1_d1 _lh_maybeX_arg1_8 _lh_maybeX_arg2_8 =
  (if _lh_maybeX_arg1_8 then
    (`Just(_lh_maybeX_arg2_8))
  else
    (`Nothing));;
let rec maybeX__d1_d2 _lh_maybeX_arg1_1_3 _lh_maybeX_arg2_1_3 =
  (if _lh_maybeX_arg1_1_3 then
    (`Just(_lh_maybeX_arg2_1_3))
  else
    (`Nothing));;
let rec maybeX__d1_d3 _lh_maybeX_arg1_1_0 _lh_maybeX_arg2_1_0 =
  (if _lh_maybeX_arg1_1_0 then
    (`Just(_lh_maybeX_arg2_1_0))
  else
    (`Nothing));;
let rec maybeX__d2 _lh_maybeX_arg1_7 _lh_maybeX_arg2_7 =
  (if _lh_maybeX_arg1_7 then
    (`Just(_lh_maybeX_arg2_7))
  else
    (`Nothing));;
let rec maybeX__d3 _lh_maybeX_arg1_1_1 _lh_maybeX_arg2_1_1 =
  (if _lh_maybeX_arg1_1_1 then
    (`Just(_lh_maybeX_arg2_1_1))
  else
    (`Nothing));;
let rec maybeX__d4 _lh_maybeX_arg1_4 _lh_maybeX_arg2_4 =
  (if _lh_maybeX_arg1_4 then
    (`Just(_lh_maybeX_arg2_4))
  else
    (`Nothing));;
let rec maybeX__d5 _lh_maybeX_arg1_1_2 _lh_maybeX_arg2_1_2 =
  (if _lh_maybeX_arg1_1_2 then
    (`Just(_lh_maybeX_arg2_1_2))
  else
    (`Nothing));;
let rec maybeX__d6 _lh_maybeX_arg1_1_4 _lh_maybeX_arg2_1_4 =
  (if _lh_maybeX_arg1_1_4 then
    (`Just(_lh_maybeX_arg2_1_4))
  else
    (`Nothing));;
let rec maybeX__d7 _lh_maybeX_arg1_5 _lh_maybeX_arg2_5 =
  (if _lh_maybeX_arg1_5 then
    (`Just(_lh_maybeX_arg2_5))
  else
    (`Nothing));;
let rec maybeX__d8 _lh_maybeX_arg1_2 _lh_maybeX_arg2_2 =
  (if _lh_maybeX_arg1_2 then
    (`Just(_lh_maybeX_arg2_2))
  else
    (`Nothing));;
let rec maybeX__d9 _lh_maybeX_arg1_9 _lh_maybeX_arg2_9 =
  (if _lh_maybeX_arg1_9 then
    (`Just(_lh_maybeX_arg2_9))
  else
    (`Nothing));;
let rec modify__d0 _lh_modify_arg1_1 _lh_modify_arg2_1 _lh_modify_arg3_1 =
  (match _lh_modify_arg1_1 with
    | `LH_C(_lh_modify_LH_C_0_1, _lh_modify_LH_C_1_1) -> 
      (match _lh_modify_arg2_1 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_1 _lh_modify_LH_C_0_1), _lh_modify_LH_C_1_1))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_1, (((modify__d0 _lh_modify_LH_C_1_1) (_lh_modify_arg2_1 - 1)) _lh_modify_arg3_1))))
    | _ -> 
      (failwith "error"));;
let rec modify__d1 _lh_modify_arg1_3 _lh_modify_arg2_3 _lh_modify_arg3_3 =
  (match _lh_modify_arg1_3 with
    | `LH_C(_lh_modify_LH_C_0_3, _lh_modify_LH_C_1_3) -> 
      (match _lh_modify_arg2_3 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_3 _lh_modify_LH_C_0_3), _lh_modify_LH_C_1_3))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_3, (((modify__d1 _lh_modify_LH_C_1_3) (_lh_modify_arg2_3 - 1)) _lh_modify_arg3_3))))
    | _ -> 
      (failwith "error"));;
let rec modify__d2 _lh_modify_arg1_2 _lh_modify_arg2_2 _lh_modify_arg3_2 =
  (match _lh_modify_arg1_2 with
    | `LH_C(_lh_modify_LH_C_0_2, _lh_modify_LH_C_1_2) -> 
      (match _lh_modify_arg2_2 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_2 _lh_modify_LH_C_0_2), _lh_modify_LH_C_1_2))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_2, (((modify__d2 _lh_modify_LH_C_1_2) (_lh_modify_arg2_2 - 1)) _lh_modify_arg3_2))))
    | _ -> 
      (failwith "error"));;
let rec orElse__d0 _lh_orElse_arg1_1_4 _lh_orElse_arg2_1_4 =
  (match _lh_orElse_arg1_1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_1_4
    | _ -> 
      _lh_orElse_arg1_1_4);;
let rec orElse__d1 _lh_orElse_arg1_8 _lh_orElse_arg2_8 =
  (match _lh_orElse_arg1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_8
    | _ -> 
      _lh_orElse_arg1_8);;
let rec orElse__d1_d0 _lh_orElse_arg1_5 _lh_orElse_arg2_5 =
  (match _lh_orElse_arg1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_5
    | _ -> 
      _lh_orElse_arg1_5);;
let rec orElse__d1_d1 _lh_orElse_arg1_2 _lh_orElse_arg2_2 =
  (match _lh_orElse_arg1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_2
    | _ -> 
      _lh_orElse_arg1_2);;
let rec orElse__d1_d2 _lh_orElse_arg1_6 _lh_orElse_arg2_6 =
  (match _lh_orElse_arg1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_6
    | _ -> 
      _lh_orElse_arg1_6);;
let rec orElse__d1_d3 _lh_orElse_arg1_2_0 _lh_orElse_arg2_2_0 =
  (match _lh_orElse_arg1_2_0 with
    | `Nothing -> 
      _lh_orElse_arg2_2_0
    | _ -> 
      _lh_orElse_arg1_2_0);;
let rec orElse__d1_d4 _lh_orElse_arg1_1_2 _lh_orElse_arg2_1_2 =
  (match _lh_orElse_arg1_1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_1_2
    | _ -> 
      _lh_orElse_arg1_1_2);;
let rec orElse__d1_d5 _lh_orElse_arg1_3 _lh_orElse_arg2_3 =
  (match _lh_orElse_arg1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_3
    | _ -> 
      _lh_orElse_arg1_3);;
let rec orElse__d1_d6 _lh_orElse_arg1_1_0 _lh_orElse_arg2_1_0 =
  (match _lh_orElse_arg1_1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_1_0
    | _ -> 
      _lh_orElse_arg1_1_0);;
let rec orElse__d1_d7 _lh_orElse_arg1_7 _lh_orElse_arg2_7 =
  (match _lh_orElse_arg1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_7
    | _ -> 
      _lh_orElse_arg1_7);;
let rec orElse__d1_d8 _lh_orElse_arg1_1_8 _lh_orElse_arg2_1_8 =
  (match _lh_orElse_arg1_1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_1_8
    | _ -> 
      _lh_orElse_arg1_1_8);;
let rec orElse__d1_d9 _lh_orElse_arg1_9 _lh_orElse_arg2_9 =
  (match _lh_orElse_arg1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_9
    | _ -> 
      _lh_orElse_arg1_9);;
let rec orElse__d2 _lh_orElse_arg1_1_3 _lh_orElse_arg2_1_3 =
  (match _lh_orElse_arg1_1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_1_3
    | _ -> 
      _lh_orElse_arg1_1_3);;
let rec orElse__d3 _lh_orElse_arg1_1 _lh_orElse_arg2_1 =
  (match _lh_orElse_arg1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1
    | _ -> 
      _lh_orElse_arg1_1);;
let rec orElse__d4 _lh_orElse_arg1_1_9 _lh_orElse_arg2_1_9 =
  (match _lh_orElse_arg1_1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_1_9
    | _ -> 
      _lh_orElse_arg1_1_9);;
let rec orElse__d5 _lh_orElse_arg1_1_7 _lh_orElse_arg2_1_7 =
  (match _lh_orElse_arg1_1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_1_7
    | _ -> 
      _lh_orElse_arg1_1_7);;
let rec orElse__d6 _lh_orElse_arg1_4 _lh_orElse_arg2_4 =
  (match _lh_orElse_arg1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_4
    | _ -> 
      _lh_orElse_arg1_4);;
let rec orElse__d7 _lh_orElse_arg1_1_5 _lh_orElse_arg2_1_5 =
  (match _lh_orElse_arg1_1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_1_5
    | _ -> 
      _lh_orElse_arg1_1_5);;
let rec orElse__d8 _lh_orElse_arg1_1_1 _lh_orElse_arg2_1_1 =
  (match _lh_orElse_arg1_1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1_1
    | _ -> 
      _lh_orElse_arg1_1_1);;
let rec orElse__d9 _lh_orElse_arg1_1_6 _lh_orElse_arg2_1_6 =
  (match _lh_orElse_arg1_1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_1_6
    | _ -> 
      _lh_orElse_arg1_1_6);;
let rec or__d0 _lh_or_arg1_2 =
  (match _lh_or_arg1_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_2, _lh_or_LH_C_1_2) -> 
      (if _lh_or_LH_C_0_2 then
        true
      else
        (or__d0 _lh_or_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec or__d1 _lh_or_arg1_3 =
  (match _lh_or_arg1_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_3, _lh_or_LH_C_1_3) -> 
      (if _lh_or_LH_C_0_3 then
        true
      else
        (or__d1 _lh_or_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec or__d2 _lh_or_arg1_4 =
  (match _lh_or_arg1_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_4, _lh_or_LH_C_1_4) -> 
      (if _lh_or_LH_C_0_4 then
        true
      else
        (or__d2 _lh_or_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec or__d3 _lh_or_arg1_1 =
  (match _lh_or_arg1_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_1, _lh_or_LH_C_1_1) -> 
      (if _lh_or_LH_C_0_1 then
        true
      else
        (or__d3 _lh_or_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec pair__d0 _lh_pair_arg1_2 _lh_pair_arg2_2 =
  (`LH_P2(_lh_pair_arg1_2, _lh_pair_arg2_2));;
let rec pair__d1 _lh_pair_arg1_1 _lh_pair_arg2_1 =
  (`LH_P2(_lh_pair_arg1_1, _lh_pair_arg2_1));;
let rec prop2__d0 _lh_prop2_arg1_3 _lh_prop2_arg2_3 _lh_prop2_arg3_3 =
  (match _lh_prop2_arg2_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_3) -> 
      ((_lh_prop2_arg1_3 _lh_prop2_Just_0_3) _lh_prop2_arg3_3)
    | _ -> 
      (failwith "error"));;
let rec prop2__d1 _lh_prop2_arg1_1 _lh_prop2_arg2_1 _lh_prop2_arg3_1 =
  (match _lh_prop2_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_1) -> 
      ((_lh_prop2_arg1_1 _lh_prop2_Just_0_1) _lh_prop2_arg3_1)
    | _ -> 
      (failwith "error"));;
let rec prop2__d2 _lh_prop2_arg1_2 _lh_prop2_arg2_2 _lh_prop2_arg3_2 =
  (match _lh_prop2_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_2) -> 
      ((_lh_prop2_arg1_2 _lh_prop2_Just_0_2) _lh_prop2_arg3_2)
    | _ -> 
      (failwith "error"));;
let rec quant__d0 _lh_quant_arg1_1 _lh_quant_arg2_1 _lh_quant_arg3_1 _lh_quant_arg4_1 =
  (let rec p_1 = (fun x_1_9 -> 
    ((_lh_quant_arg2_1 x_1_9) _lh_quant_arg3_1)) in
    ((_lh_quant_arg1_1 p_1) _lh_quant_arg4_1));;
let rec quant__d1 _lh_quant_arg1_1_0 _lh_quant_arg2_1_0 _lh_quant_arg3_1_0 _lh_quant_arg4_1_0 =
  (let rec p_1_0 = (fun x_5_4 -> 
    ((_lh_quant_arg2_1_0 x_5_4) _lh_quant_arg3_1_0)) in
    ((_lh_quant_arg1_1_0 p_1_0) _lh_quant_arg4_1_0));;
let rec quant__d2 _lh_quant_arg1_2 _lh_quant_arg2_2 _lh_quant_arg3_2 _lh_quant_arg4_2 =
  (let rec p_2 = (fun x_2_1 -> 
    ((_lh_quant_arg2_2 x_2_1) _lh_quant_arg3_2)) in
    ((_lh_quant_arg1_2 p_2) _lh_quant_arg4_2));;
let rec quant__d3 _lh_quant_arg1_8 _lh_quant_arg2_8 _lh_quant_arg3_8 _lh_quant_arg4_8 =
  (let rec p_8 = (fun x_5_1 -> 
    ((_lh_quant_arg2_8 x_5_1) _lh_quant_arg3_8)) in
    ((_lh_quant_arg1_8 p_8) _lh_quant_arg4_8));;
let rec quant__d4 _lh_quant_arg1_3 _lh_quant_arg2_3 _lh_quant_arg3_3 _lh_quant_arg4_3 =
  (let rec p_3 = (fun x_2_8 -> 
    ((_lh_quant_arg2_3 x_2_8) _lh_quant_arg3_3)) in
    ((_lh_quant_arg1_3 p_3) _lh_quant_arg4_3));;
let rec quant__d5 _lh_quant_arg1_4 _lh_quant_arg2_4 _lh_quant_arg3_4 _lh_quant_arg4_4 =
  (let rec p_4 = (fun x_4_2 -> 
    ((_lh_quant_arg2_4 x_4_2) _lh_quant_arg3_4)) in
    ((_lh_quant_arg1_4 p_4) _lh_quant_arg4_4));;
let rec quant__d6 _lh_quant_arg1_6 _lh_quant_arg2_6 _lh_quant_arg3_6 _lh_quant_arg4_6 =
  (let rec p_6 = (fun x_4_5 -> 
    ((_lh_quant_arg2_6 x_4_5) _lh_quant_arg3_6)) in
    ((_lh_quant_arg1_6 p_6) _lh_quant_arg4_6));;
let rec quant__d7 _lh_quant_arg1_7 _lh_quant_arg2_7 _lh_quant_arg3_7 _lh_quant_arg4_7 =
  (let rec p_7 = (fun x_4_6 -> 
    ((_lh_quant_arg2_7 x_4_6) _lh_quant_arg3_7)) in
    ((_lh_quant_arg1_7 p_7) _lh_quant_arg4_7));;
let rec quant__d8 _lh_quant_arg1_9 _lh_quant_arg2_9 _lh_quant_arg3_9 _lh_quant_arg4_9 =
  (let rec p_9 = (fun x_5_2 -> 
    ((_lh_quant_arg2_9 x_5_2) _lh_quant_arg3_9)) in
    ((_lh_quant_arg1_9 p_9) _lh_quant_arg4_9));;
let rec quant__d9 _lh_quant_arg1_5 _lh_quant_arg2_5 _lh_quant_arg3_5 _lh_quant_arg4_5 =
  (let rec p_5 = (fun x_4_4 -> 
    ((_lh_quant_arg2_5 x_4_4) _lh_quant_arg3_5)) in
    ((_lh_quant_arg1_5 p_5) _lh_quant_arg4_5));;
let rec snd__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_3 =
  (match _lh_snd_arg1_3 with
    | `LH_P2(_lh_snd_LH_P2_0_3, _lh_snd_LH_P2_1_3) -> 
      _lh_snd_LH_P2_1_3
    | _ -> 
      (failwith "error"));;
let rec snd__d2 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec squash__d0 _lh_squash_arg1_1 =
  (match _lh_squash_arg1_1 with
    | `Just(_lh_squash_Just_0_1) -> 
      _lh_squash_Just_0_1
    | `Nothing -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec squash__d1 _lh_squash_arg1_2 =
  (match _lh_squash_arg1_2 with
    | `Just(_lh_squash_Just_0_2) -> 
      _lh_squash_Just_0_2
    | `Nothing -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec succeed__d0 _lh_succeed_arg1_4 =
  (`Just(_lh_succeed_arg1_4));;
let rec succeed__d1 _lh_succeed_arg1_1 =
  (`Just(_lh_succeed_arg1_1));;
let rec succeed__d1_d0 _lh_succeed_arg1_5 =
  (`Just(_lh_succeed_arg1_5));;
let rec succeed__d1_d1 _lh_succeed_arg1_7 =
  (`Just(_lh_succeed_arg1_7));;
let rec succeed__d2 _lh_succeed_arg1_2 =
  (`Just(_lh_succeed_arg1_2));;
let rec succeed__d3 _lh_succeed_arg1_8 =
  (`Just(_lh_succeed_arg1_8));;
let rec succeed__d4 _lh_succeed_arg1_3 =
  (`Just(_lh_succeed_arg1_3));;
let rec succeed__d5 _lh_succeed_arg1_9 =
  (`Just(_lh_succeed_arg1_9));;
let rec succeed__d6 _lh_succeed_arg1_1_1 =
  (`Just(_lh_succeed_arg1_1_1));;
let rec succeed__d7 _lh_succeed_arg1_1_2 =
  (`Just(_lh_succeed_arg1_1_2));;
let rec succeed__d8 _lh_succeed_arg1_6 =
  (`Just(_lh_succeed_arg1_6));;
let rec succeed__d9 _lh_succeed_arg1_1_0 =
  (`Just(_lh_succeed_arg1_1_0));;
let rec sum__d0 ls_8_8 =
  (match ls_8_8 with
    | `LH_C(h_1_0_8, t_1_2_2) -> 
      (h_1_0_8 + (sum__d0 t_1_2_2))
    | `LH_N -> 
      0);;
let rec tail__d0 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_6_5, t_7_4) -> 
      t_7_4
    | `LH_N -> 
      (failwith "error"));;
let rec takeWhile__d0 _lh_takeWhile_arg1_1 _lh_takeWhile_arg2_1 =
  (match _lh_takeWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_1, _lh_takeWhile_LH_C_1_1) -> 
      (if (_lh_takeWhile_arg1_1 _lh_takeWhile_LH_C_0_1) then
        (`LH_C(_lh_takeWhile_LH_C_0_1, ((takeWhile__d0 _lh_takeWhile_arg1_1) _lh_takeWhile_LH_C_1_1)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec the__d0 _lh_the_arg1_3 =
  (match _lh_the_arg1_3 with
    | `Just(_lh_the_Just_0_3) -> 
      _lh_the_Just_0_3
    | _ -> 
      (failwith "error"));;
let rec the__d1 _lh_the_arg1_1 =
  (match _lh_the_arg1_1 with
    | `Just(_lh_the_Just_0_1) -> 
      _lh_the_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec the__d2 _lh_the_arg1_4 =
  (match _lh_the_arg1_4 with
    | `Just(_lh_the_Just_0_4) -> 
      _lh_the_Just_0_4
    | _ -> 
      (failwith "error"));;
let rec the__d3 _lh_the_arg1_5 =
  (match _lh_the_arg1_5 with
    | `Just(_lh_the_Just_0_5) -> 
      _lh_the_Just_0_5
    | _ -> 
      (failwith "error"));;
let rec the__d4 _lh_the_arg1_6 =
  (match _lh_the_arg1_6 with
    | `Just(_lh_the_Just_0_6) -> 
      _lh_the_Just_0_6
    | _ -> 
      (failwith "error"));;
let rec the__d5 _lh_the_arg1_2 =
  (match _lh_the_arg1_2 with
    | `Just(_lh_the_Just_0_2) -> 
      _lh_the_Just_0_2
    | _ -> 
      (failwith "error"));;
let rec update_alist__d0 _lh_update_alist_arg1_1 _lh_update_alist_arg2_1 _lh_update_alist_arg3_1 =
  (let rec upd_1 = (fun ls_7_7 -> 
    (let rec _lh_matchIdent_3_7 = ls_7_7 in
      (match _lh_matchIdent_3_7 with
        | `LH_N -> 
          (`LH_C((`LH_P2(_lh_update_alist_arg1_1, (_lh_update_alist_arg2_1 _lh_update_alist_arg3_1))), (`LH_N)))
        | `LH_C(_lh_update_alist_LH_C_0_1, _lh_update_alist_LH_C_1_1) -> 
          (match _lh_update_alist_LH_C_0_1 with
            | `LH_P2(_lh_update_alist_LH_P2_0_1, _lh_update_alist_LH_P2_1_1) -> 
              (if (_lh_update_alist_arg1_1 = _lh_update_alist_LH_P2_0_1) then
                (`LH_C((`LH_P2(_lh_update_alist_arg1_1, (_lh_update_alist_arg2_1 _lh_update_alist_LH_P2_1_1))), _lh_update_alist_LH_C_1_1))
              else
                (`LH_C((`LH_P2(_lh_update_alist_LH_P2_0_1, _lh_update_alist_LH_P2_1_1)), (upd_1 _lh_update_alist_LH_C_1_1))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    upd_1);;
let rec zip_lz_nl__d0 xs_2_8 ys_2_4 =
  (match ys_2_4 with
    | `LH_C(hy_1_1, ty_1_1) -> 
      (match (Lazy.force xs_2_8) with
        | `LH_C(hx_1_1, tx_1_1) -> 
          (`LH_C((`LH_P2(hx_1_1, hy_1_1)), ((zip_lz_nl__d0 tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl__d1 xs_3_9 ys_3_5 =
  (match ys_3_5 with
    | `LH_C(hy_1_4, ty_1_4) -> 
      (match (Lazy.force xs_3_9) with
        | `LH_C(hx_1_4, tx_1_4) -> 
          (`LH_C((`LH_P2(hx_1_4, hy_1_4)), ((zip_lz_nl__d1 tx_1_4) ty_1_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl__d2 xs_3_1 ys_2_7 =
  (match ys_2_7 with
    | `LH_C(hy_1_2, ty_1_2) -> 
      (match (Lazy.force xs_3_1) with
        | `LH_C(hx_1_2, tx_1_2) -> 
          (`LH_C((`LH_P2(hx_1_2, hy_1_2)), ((zip_lz_nl__d2 tx_1_2) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl__d3 xs_4_0 ys_3_6 =
  (match ys_3_6 with
    | `LH_C(hy_1_5, ty_1_5) -> 
      (match (Lazy.force xs_4_0) with
        | `LH_C(hx_1_5, tx_1_5) -> 
          (`LH_C((`LH_P2(hx_1_5, hy_1_5)), ((zip_lz_nl__d3 tx_1_5) ty_1_5)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip__d0 xs_1_9 ys_1_7 =
  (match xs_1_9 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_1_7 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C((`LH_P2(hx_1_0, hy_1_0)), ((zip__d0 tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip__d1 xs_3_5 ys_3_1 =
  (match xs_3_5 with
    | `LH_C(hx_1_3, tx_1_3) -> 
      (match ys_3_1 with
        | `LH_C(hy_1_3, ty_1_3) -> 
          (`LH_C((`LH_P2(hx_1_3, hy_1_3)), ((zip__d1 tx_1_3) ty_1_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip__d2 xs_1_1 ys_9 =
  (match xs_1_1 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_9 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip__d2 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip__d3 xs_1_2 ys_1_0 =
  (match xs_1_2 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_1_0 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C((`LH_P2(hx_9, hy_9)), ((zip__d3 tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec apply__d0 _lh_apply_arg1_1 _lh_apply_arg2_1 =
  ((getOrElse__d2 ((assoc__d2 _lh_apply_arg1_1) _lh_apply_arg2_1)) (`Var(_lh_apply_arg2_1)))
and apply__d1 _lh_apply_arg1_7 _lh_apply_arg2_7 =
  ((getOrElse__d3 ((assoc__d4 _lh_apply_arg1_7) _lh_apply_arg2_7)) (`Var(_lh_apply_arg2_7)))
and apply__d2 _lh_apply_arg1_6 _lh_apply_arg2_6 =
  ((getOrElse__d1_d1 ((assoc__d5 _lh_apply_arg1_6) _lh_apply_arg2_6)) (`Var(_lh_apply_arg2_6)))
and apply__d3 _lh_apply_arg1_2 _lh_apply_arg2_2 =
  ((getOrElse__d1_d2 ((assoc__d6 _lh_apply_arg1_2) _lh_apply_arg2_2)) (`Var(_lh_apply_arg2_2)))
and apply__d4 _lh_apply_arg1_5 _lh_apply_arg2_5 =
  ((getOrElse__d1_d3 ((assoc__d8 _lh_apply_arg1_5) _lh_apply_arg2_5)) (`Var(_lh_apply_arg2_5)))
and apply__d5 _lh_apply_arg1_3 _lh_apply_arg2_3 =
  ((getOrElse__d1_d4 ((assoc__d9 _lh_apply_arg1_3) _lh_apply_arg2_3)) (`Var(_lh_apply_arg2_3)))
and apply__d6 _lh_apply_arg1_8 _lh_apply_arg2_8 =
  ((getOrElse__d1_d5 ((assoc__d1_d1 _lh_apply_arg1_8) _lh_apply_arg2_8)) (`Var(_lh_apply_arg2_8)))
and apply__d7 _lh_apply_arg1_4 _lh_apply_arg2_4 =
  ((getOrElse__d1_d6 ((assoc__d1_d2 _lh_apply_arg1_4) _lh_apply_arg2_4)) (`Var(_lh_apply_arg2_4)))
and assoc__d0 _lh_assoc_arg1_7 _lh_assoc_arg2_7 =
  (let rec match_x_7 = (fun uv_7 -> 
    (let rec _lh_matchIdent_2_0 = uv_7 in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
          ((maybeX__d0 (_lh_assoc_arg2_7 = _lh_assoc_LH_P2_0_7)) _lh_assoc_LH_P2_1_7)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d0 ((map__d0 match_x_7) _lh_assoc_arg1_7)))
and assoc__d1 _lh_assoc_arg1_1_1 _lh_assoc_arg2_1_1 =
  (let rec match_x_1_1 = (fun uv_1_1 -> 
    (let rec _lh_matchIdent_3_6 = uv_1_1 in
      (match _lh_matchIdent_3_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
          ((maybeX__d2 (_lh_assoc_arg2_1_1 = _lh_assoc_LH_P2_0_1_1)) _lh_assoc_LH_P2_1_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d3 ((map__d1_d8 match_x_1_1) _lh_assoc_arg1_1_1)))
and assoc__d1_d0 _lh_assoc_arg1_1_3 _lh_assoc_arg2_1_3 =
  (let rec match_x_1_3 = (fun uv_1_3 -> 
    (let rec _lh_matchIdent_3_9 = uv_1_3 in
      (match _lh_matchIdent_3_9 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_3, _lh_assoc_LH_P2_1_1_3) -> 
          ((maybeX__d1_d1 (_lh_assoc_arg2_1_3 = _lh_assoc_LH_P2_0_1_3)) _lh_assoc_LH_P2_1_1_3)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d1_d2 ((map__d4_d2 match_x_1_3) _lh_assoc_arg1_1_3)))
and assoc__d1_d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (let rec match_x_1 = (fun uv_1 -> 
    (let rec _lh_matchIdent_1_4 = uv_1 in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          ((maybeX__d1_d2 (_lh_assoc_arg2_1 = _lh_assoc_LH_P2_0_1)) _lh_assoc_LH_P2_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d1_d3 ((map__d4_d3 match_x_1) _lh_assoc_arg1_1)))
and assoc__d1_d2 _lh_assoc_arg1_1_0 _lh_assoc_arg2_1_0 =
  (let rec match_x_1_0 = (fun uv_1_0 -> 
    (let rec _lh_matchIdent_3_5 = uv_1_0 in
      (match _lh_matchIdent_3_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
          ((maybeX__d1_d3 (_lh_assoc_arg2_1_0 = _lh_assoc_LH_P2_0_1_0)) _lh_assoc_LH_P2_1_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d1_d4 ((map__d4_d6 match_x_1_0) _lh_assoc_arg1_1_0)))
and assoc__d2 _lh_assoc_arg1_4 _lh_assoc_arg2_4 =
  (let rec match_x_4 = (fun uv_4 -> 
    (let rec _lh_matchIdent_1_7 = uv_4 in
      (match _lh_matchIdent_1_7 with
        | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
          ((maybeX__d3 (_lh_assoc_arg2_4 = _lh_assoc_LH_P2_0_4)) _lh_assoc_LH_P2_1_4)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d4 ((map__d1_d9 match_x_4) _lh_assoc_arg1_4)))
and assoc__d3 _lh_assoc_arg1_9 _lh_assoc_arg2_9 =
  (let rec match_x_9 = (fun uv_9 -> 
    (let rec _lh_matchIdent_3_4 = uv_9 in
      (match _lh_matchIdent_3_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
          ((maybeX__d4 (_lh_assoc_arg2_9 = _lh_assoc_LH_P2_0_9)) _lh_assoc_LH_P2_1_9)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d5 ((map__d2_d1 match_x_9) _lh_assoc_arg1_9)))
and assoc__d4 _lh_assoc_arg1_8 _lh_assoc_arg2_8 =
  (let rec match_x_8 = (fun uv_8 -> 
    (let rec _lh_matchIdent_3_3 = uv_8 in
      (match _lh_matchIdent_3_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
          ((maybeX__d5 (_lh_assoc_arg2_8 = _lh_assoc_LH_P2_0_8)) _lh_assoc_LH_P2_1_8)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d6 ((map__d2_d2 match_x_8) _lh_assoc_arg1_8)))
and assoc__d5 _lh_assoc_arg1_1_2 _lh_assoc_arg2_1_2 =
  (let rec match_x_1_2 = (fun uv_1_2 -> 
    (let rec _lh_matchIdent_3_8 = uv_1_2 in
      (match _lh_matchIdent_3_8 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_2, _lh_assoc_LH_P2_1_1_2) -> 
          ((maybeX__d6 (_lh_assoc_arg2_1_2 = _lh_assoc_LH_P2_0_1_2)) _lh_assoc_LH_P2_1_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d7 ((map__d3_d2 match_x_1_2) _lh_assoc_arg1_1_2)))
and assoc__d6 _lh_assoc_arg1_6 _lh_assoc_arg2_6 =
  (let rec match_x_6 = (fun uv_6 -> 
    (let rec _lh_matchIdent_1_9 = uv_6 in
      (match _lh_matchIdent_1_9 with
        | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
          ((maybeX__d7 (_lh_assoc_arg2_6 = _lh_assoc_LH_P2_0_6)) _lh_assoc_LH_P2_1_6)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d8 ((map__d3_d4 match_x_6) _lh_assoc_arg1_6)))
and assoc__d7 _lh_assoc_arg1_5 _lh_assoc_arg2_5 =
  (let rec match_x_5 = (fun uv_5 -> 
    (let rec _lh_matchIdent_1_8 = uv_5 in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
          ((maybeX__d8 (_lh_assoc_arg2_5 = _lh_assoc_LH_P2_0_5)) _lh_assoc_LH_P2_1_5)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d9 ((map__d3_d6 match_x_5) _lh_assoc_arg1_5)))
and assoc__d8 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (let rec match_x_2 = (fun uv_2 -> 
    (let rec _lh_matchIdent_1_5 = uv_2 in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          ((maybeX__d9 (_lh_assoc_arg2_2 = _lh_assoc_LH_P2_0_2)) _lh_assoc_LH_P2_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d1_d0 ((map__d3_d7 match_x_2) _lh_assoc_arg1_2)))
and assoc__d9 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (let rec match_x_3 = (fun uv_3 -> 
    (let rec _lh_matchIdent_1_6 = uv_3 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          ((maybeX__d1_d0 (_lh_assoc_arg2_3 = _lh_assoc_LH_P2_0_3)) _lh_assoc_LH_P2_1_3)
        | _ -> 
          (failwith "error")))) in
    (first_ok__d1_d1 ((map__d4_d0 match_x_3) _lh_assoc_arg1_3)))
and comp_sub__d0 _lh_comp_sub_arg1_1 _lh_comp_sub_arg2_1 =
  ((mappend__d1_d9 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
    (match _lh_listcomp_fun_para_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_1, _lh_comp_sub_LH_P2_1_1) -> 
            (`LH_C((`LH_P2(_lh_comp_sub_LH_P2_0_1, ((sub__d4 _lh_comp_sub_LH_P2_1_1) _lh_comp_sub_arg1_1))), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
          | _ -> 
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_9 _lh_comp_sub_arg2_1))) _lh_comp_sub_arg1_1)
and comp_sub__d1 _lh_comp_sub_arg1_2 _lh_comp_sub_arg2_2 =
  ((mappend__d2_d0 (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_2_1 -> 
    (match _lh_listcomp_fun_para_2_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
        (match _lh_listcomp_fun_ls_h_2_1 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_2, _lh_comp_sub_LH_P2_1_2) -> 
            (`LH_C((`LH_P2(_lh_comp_sub_LH_P2_0_2, ((sub__d6 _lh_comp_sub_LH_P2_1_2) _lh_comp_sub_arg1_2))), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1)))
          | _ -> 
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_1 _lh_comp_sub_arg2_2))) _lh_comp_sub_arg1_2)
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_5_8, t_6_7) -> 
      ((mappend__d0 h_5_8) (concat__d0 t_6_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_7_5, t_8_5) -> 
      ((mappend__d1_d0 h_7_5) (concat__d1 t_8_5))
    | `LH_N -> 
      (`LH_N))
and concat__d2 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_0_0, t_1_1_2) -> 
      ((mappend__d1_d1 h_1_0_0) (concat__d2 t_1_1_2))
    | `LH_N -> 
      (`LH_N))
and cost__d0 _lh_cost_arg1_1 =
  (match _lh_cost_arg1_1 with
    | `LH_P2(_lh_cost_LH_P2_0_1, _lh_cost_LH_P2_1_1) -> 
      (let rec size_1 = (fun _lh_size_arg1_1 -> 
        (((expr_fold__d0 (fun x_2_7 a_6 -> 
          ((sum__d0 a_6) + 1))) (fun dum_5 -> 
          0)) _lh_size_arg1_1)) in
        ((size_1 _lh_cost_LH_P2_0_1) + (size_1 _lh_cost_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and delete_eqns__d0 _lh_delete_eqns_arg1_1 =
  (let rec ok_1 = (fun e_1 -> 
    (not ((inList__d0 (eqno__d0 e_1)) _lh_delete_eqns_arg1_1))) in
    (map_dnet__d0 (filter__d0 ok_1)))
and eqExpr__d0 _lh_eqExpr_arg1_2 _lh_eqExpr_arg2_2 =
  (match _lh_eqExpr_arg1_2 with
    | `Func(_lh_eqExpr_Func_0_4, _lh_eqExpr_Func_1_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Func(_lh_eqExpr_Func_0_5, _lh_eqExpr_Func_1_5) -> 
          ((_lh_eqExpr_Func_0_4 = _lh_eqExpr_Func_0_5) && ((eqListExpr__d0 _lh_eqExpr_Func_1_4) _lh_eqExpr_Func_1_5))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Var(_lh_eqExpr_Var_0_5) -> 
          (_lh_eqExpr_Var_0_4 = _lh_eqExpr_Var_0_5)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr__d1 _lh_eqExpr_arg1_1 _lh_eqExpr_arg2_1 =
  (match _lh_eqExpr_arg1_1 with
    | `Func(_lh_eqExpr_Func_0_2, _lh_eqExpr_Func_1_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Func(_lh_eqExpr_Func_0_3, _lh_eqExpr_Func_1_3) -> 
          ((_lh_eqExpr_Func_0_2 = _lh_eqExpr_Func_0_3) && ((eqListExpr__d1 _lh_eqExpr_Func_1_2) _lh_eqExpr_Func_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Var(_lh_eqExpr_Var_0_3) -> 
          (_lh_eqExpr_Var_0_2 = _lh_eqExpr_Var_0_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr__d2 _lh_eqExpr_arg1_5 _lh_eqExpr_arg2_5 =
  (match _lh_eqExpr_arg1_5 with
    | `Func(_lh_eqExpr_Func_0_1_0, _lh_eqExpr_Func_1_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Func(_lh_eqExpr_Func_0_1_1, _lh_eqExpr_Func_1_1_1) -> 
          ((_lh_eqExpr_Func_0_1_0 = _lh_eqExpr_Func_0_1_1) && ((eqListExpr__d2 _lh_eqExpr_Func_1_1_0) _lh_eqExpr_Func_1_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Var(_lh_eqExpr_Var_0_1_1) -> 
          (_lh_eqExpr_Var_0_1_0 = _lh_eqExpr_Var_0_1_1)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr__d3 _lh_eqExpr_arg1_4 _lh_eqExpr_arg2_4 =
  (match _lh_eqExpr_arg1_4 with
    | `Func(_lh_eqExpr_Func_0_8, _lh_eqExpr_Func_1_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Func(_lh_eqExpr_Func_0_9, _lh_eqExpr_Func_1_9) -> 
          ((_lh_eqExpr_Func_0_8 = _lh_eqExpr_Func_0_9) && ((eqListExpr__d3 _lh_eqExpr_Func_1_8) _lh_eqExpr_Func_1_9))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Var(_lh_eqExpr_Var_0_9) -> 
          (_lh_eqExpr_Var_0_8 = _lh_eqExpr_Var_0_9)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr__d4 _lh_eqExpr_arg1_3 _lh_eqExpr_arg2_3 =
  (match _lh_eqExpr_arg1_3 with
    | `Func(_lh_eqExpr_Func_0_6, _lh_eqExpr_Func_1_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Func(_lh_eqExpr_Func_0_7, _lh_eqExpr_Func_1_7) -> 
          ((_lh_eqExpr_Func_0_6 = _lh_eqExpr_Func_0_7) && ((eqListExpr__d4 _lh_eqExpr_Func_1_6) _lh_eqExpr_Func_1_7))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Var(_lh_eqExpr_Var_0_7) -> 
          (_lh_eqExpr_Var_0_6 = _lh_eqExpr_Var_0_7)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr__d5 _lh_eqExpr_arg1_6 _lh_eqExpr_arg2_6 =
  (match _lh_eqExpr_arg1_6 with
    | `Func(_lh_eqExpr_Func_0_1_2, _lh_eqExpr_Func_1_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Func(_lh_eqExpr_Func_0_1_3, _lh_eqExpr_Func_1_1_3) -> 
          ((_lh_eqExpr_Func_0_1_2 = _lh_eqExpr_Func_0_1_3) && ((eqListExpr__d5 _lh_eqExpr_Func_1_1_2) _lh_eqExpr_Func_1_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Var(_lh_eqExpr_Var_0_1_3) -> 
          (_lh_eqExpr_Var_0_1_2 = _lh_eqExpr_Var_0_1_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr__d6 _lh_eqExpr_arg1_7 _lh_eqExpr_arg2_7 =
  (match _lh_eqExpr_arg1_7 with
    | `Func(_lh_eqExpr_Func_0_1_4, _lh_eqExpr_Func_1_1_4) -> 
      (match _lh_eqExpr_arg2_7 with
        | `Func(_lh_eqExpr_Func_0_1_5, _lh_eqExpr_Func_1_1_5) -> 
          ((_lh_eqExpr_Func_0_1_4 = _lh_eqExpr_Func_0_1_5) && ((eqListExpr__d6 _lh_eqExpr_Func_1_1_4) _lh_eqExpr_Func_1_1_5))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_4) -> 
      (match _lh_eqExpr_arg2_7 with
        | `Var(_lh_eqExpr_Var_0_1_5) -> 
          (_lh_eqExpr_Var_0_1_4 = _lh_eqExpr_Var_0_1_5)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d0 _lh_eqListExpr_arg1_6 _lh_eqListExpr_arg2_6 =
  (match _lh_eqListExpr_arg1_6 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_2, _lh_eqListExpr_LH_C_1_1_2) -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_3, _lh_eqListExpr_LH_C_1_1_3) -> 
          (if ((eqExpr__d0 _lh_eqListExpr_LH_C_0_1_2) _lh_eqListExpr_LH_C_0_1_3) then
            ((eqListExpr__d0 _lh_eqListExpr_LH_C_1_1_2) _lh_eqListExpr_LH_C_1_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d1 _lh_eqListExpr_arg1_5 _lh_eqListExpr_arg2_5 =
  (match _lh_eqListExpr_arg1_5 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_0, _lh_eqListExpr_LH_C_1_1_0) -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_1, _lh_eqListExpr_LH_C_1_1_1) -> 
          (if ((eqExpr__d1 _lh_eqListExpr_LH_C_0_1_0) _lh_eqListExpr_LH_C_0_1_1) then
            ((eqListExpr__d1 _lh_eqListExpr_LH_C_1_1_0) _lh_eqListExpr_LH_C_1_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d2 _lh_eqListExpr_arg1_7 _lh_eqListExpr_arg2_7 =
  (match _lh_eqListExpr_arg1_7 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_7 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_4, _lh_eqListExpr_LH_C_1_1_4) -> 
      (match _lh_eqListExpr_arg2_7 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_5, _lh_eqListExpr_LH_C_1_1_5) -> 
          (if ((eqExpr__d2 _lh_eqListExpr_LH_C_0_1_4) _lh_eqListExpr_LH_C_0_1_5) then
            ((eqListExpr__d2 _lh_eqListExpr_LH_C_1_1_4) _lh_eqListExpr_LH_C_1_1_5)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d3 _lh_eqListExpr_arg1_3 _lh_eqListExpr_arg2_3 =
  (match _lh_eqListExpr_arg1_3 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_6, _lh_eqListExpr_LH_C_1_6) -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_C(_lh_eqListExpr_LH_C_0_7, _lh_eqListExpr_LH_C_1_7) -> 
          (if ((eqExpr__d3 _lh_eqListExpr_LH_C_0_6) _lh_eqListExpr_LH_C_0_7) then
            ((eqListExpr__d3 _lh_eqListExpr_LH_C_1_6) _lh_eqListExpr_LH_C_1_7)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d4 _lh_eqListExpr_arg1_4 _lh_eqListExpr_arg2_4 =
  (match _lh_eqListExpr_arg1_4 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_8, _lh_eqListExpr_LH_C_1_8) -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_C(_lh_eqListExpr_LH_C_0_9, _lh_eqListExpr_LH_C_1_9) -> 
          (if ((eqExpr__d4 _lh_eqListExpr_LH_C_0_8) _lh_eqListExpr_LH_C_0_9) then
            ((eqListExpr__d4 _lh_eqListExpr_LH_C_1_8) _lh_eqListExpr_LH_C_1_9)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d5 _lh_eqListExpr_arg1_1 _lh_eqListExpr_arg2_1 =
  (match _lh_eqListExpr_arg1_1 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_2, _lh_eqListExpr_LH_C_1_2) -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_C(_lh_eqListExpr_LH_C_0_3, _lh_eqListExpr_LH_C_1_3) -> 
          (if ((eqExpr__d5 _lh_eqListExpr_LH_C_0_2) _lh_eqListExpr_LH_C_0_3) then
            ((eqListExpr__d5 _lh_eqListExpr_LH_C_1_2) _lh_eqListExpr_LH_C_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr__d6 _lh_eqListExpr_arg1_2 _lh_eqListExpr_arg2_2 =
  (match _lh_eqListExpr_arg1_2 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_4, _lh_eqListExpr_LH_C_1_4) -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_C(_lh_eqListExpr_LH_C_0_5, _lh_eqListExpr_LH_C_1_5) -> 
          (if ((eqExpr__d6 _lh_eqListExpr_LH_C_0_4) _lh_eqListExpr_LH_C_0_5) then
            ((eqListExpr__d6 _lh_eqListExpr_LH_C_1_4) _lh_eqListExpr_LH_C_1_5)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and expr_fold__d0 _lh_expr_fold_arg1_2 _lh_expr_fold_arg2_2 _lh_expr_fold_arg3_2 =
  (match _lh_expr_fold_arg3_2 with
    | `Var(_lh_expr_fold_Var_0_2) -> 
      (_lh_expr_fold_arg2_2 _lh_expr_fold_Var_0_2)
    | `Func(_lh_expr_fold_Func_0_2, _lh_expr_fold_Func_1_2) -> 
      ((_lh_expr_fold_arg1_2 _lh_expr_fold_Func_0_2) ((map__d1 ((expr_fold__d0 _lh_expr_fold_arg1_2) _lh_expr_fold_arg2_2)) _lh_expr_fold_Func_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold__d1 _lh_expr_fold_arg1_1_1 _lh_expr_fold_arg2_1_1 _lh_expr_fold_arg3_1_1 =
  (match _lh_expr_fold_arg3_1_1 with
    | `Var(_lh_expr_fold_Var_0_1_1) -> 
      (_lh_expr_fold_arg2_1_1 _lh_expr_fold_Var_0_1_1)
    | `Func(_lh_expr_fold_Func_0_1_1, _lh_expr_fold_Func_1_1_1) -> 
      ((_lh_expr_fold_arg1_1_1 _lh_expr_fold_Func_0_1_1) ((map__d1_d6 ((expr_fold__d1 _lh_expr_fold_arg1_1_1) _lh_expr_fold_arg2_1_1)) _lh_expr_fold_Func_1_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d0 _lh_expr_fold_arg1_9 _lh_expr_fold_arg2_9 _lh_expr_fold_arg3_9 =
  (match _lh_expr_fold_arg3_9 with
    | `Var(_lh_expr_fold_Var_0_9) -> 
      (_lh_expr_fold_arg2_9 _lh_expr_fold_Var_0_9)
    | `Func(_lh_expr_fold_Func_0_9, _lh_expr_fold_Func_1_9) -> 
      ((_lh_expr_fold_arg1_9 _lh_expr_fold_Func_0_9) ((map__d3_d1 ((expr_fold__d1_d0 _lh_expr_fold_arg1_9) _lh_expr_fold_arg2_9)) _lh_expr_fold_Func_1_9))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d1 _lh_expr_fold_arg1_1_8 _lh_expr_fold_arg2_1_8 _lh_expr_fold_arg3_1_8 =
  (match _lh_expr_fold_arg3_1_8 with
    | `Var(_lh_expr_fold_Var_0_1_8) -> 
      (_lh_expr_fold_arg2_1_8 _lh_expr_fold_Var_0_1_8)
    | `Func(_lh_expr_fold_Func_0_1_8, _lh_expr_fold_Func_1_1_8) -> 
      ((_lh_expr_fold_arg1_1_8 _lh_expr_fold_Func_0_1_8) ((map__d3_d3 ((expr_fold__d1_d1 _lh_expr_fold_arg1_1_8) _lh_expr_fold_arg2_1_8)) _lh_expr_fold_Func_1_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d2 _lh_expr_fold_arg1_1_5 _lh_expr_fold_arg2_1_5 _lh_expr_fold_arg3_1_5 =
  (match _lh_expr_fold_arg3_1_5 with
    | `Var(_lh_expr_fold_Var_0_1_5) -> 
      (_lh_expr_fold_arg2_1_5 _lh_expr_fold_Var_0_1_5)
    | `Func(_lh_expr_fold_Func_0_1_5, _lh_expr_fold_Func_1_1_5) -> 
      ((_lh_expr_fold_arg1_1_5 _lh_expr_fold_Func_0_1_5) ((map__d3_d5 ((expr_fold__d1_d2 _lh_expr_fold_arg1_1_5) _lh_expr_fold_arg2_1_5)) _lh_expr_fold_Func_1_1_5))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d3 _lh_expr_fold_arg1_5 _lh_expr_fold_arg2_5 _lh_expr_fold_arg3_5 =
  (match _lh_expr_fold_arg3_5 with
    | `Var(_lh_expr_fold_Var_0_5) -> 
      (_lh_expr_fold_arg2_5 _lh_expr_fold_Var_0_5)
    | `Func(_lh_expr_fold_Func_0_5, _lh_expr_fold_Func_1_5) -> 
      ((_lh_expr_fold_arg1_5 _lh_expr_fold_Func_0_5) ((map__d3_d8 ((expr_fold__d1_d3 _lh_expr_fold_arg1_5) _lh_expr_fold_arg2_5)) _lh_expr_fold_Func_1_5))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d4 _lh_expr_fold_arg1_1 _lh_expr_fold_arg2_1 _lh_expr_fold_arg3_1 =
  (match _lh_expr_fold_arg3_1 with
    | `Var(_lh_expr_fold_Var_0_1) -> 
      (_lh_expr_fold_arg2_1 _lh_expr_fold_Var_0_1)
    | `Func(_lh_expr_fold_Func_0_1, _lh_expr_fold_Func_1_1) -> 
      ((_lh_expr_fold_arg1_1 _lh_expr_fold_Func_0_1) ((map__d3_d9 ((expr_fold__d1_d4 _lh_expr_fold_arg1_1) _lh_expr_fold_arg2_1)) _lh_expr_fold_Func_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d5 _lh_expr_fold_arg1_1_7 _lh_expr_fold_arg2_1_7 _lh_expr_fold_arg3_1_7 =
  (match _lh_expr_fold_arg3_1_7 with
    | `Var(_lh_expr_fold_Var_0_1_7) -> 
      (_lh_expr_fold_arg2_1_7 _lh_expr_fold_Var_0_1_7)
    | `Func(_lh_expr_fold_Func_0_1_7, _lh_expr_fold_Func_1_1_7) -> 
      ((_lh_expr_fold_arg1_1_7 _lh_expr_fold_Func_0_1_7) ((map__d4_d1 ((expr_fold__d1_d5 _lh_expr_fold_arg1_1_7) _lh_expr_fold_arg2_1_7)) _lh_expr_fold_Func_1_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d6 _lh_expr_fold_arg1_7 _lh_expr_fold_arg2_7 _lh_expr_fold_arg3_7 =
  (match _lh_expr_fold_arg3_7 with
    | `Var(_lh_expr_fold_Var_0_7) -> 
      (_lh_expr_fold_arg2_7 _lh_expr_fold_Var_0_7)
    | `Func(_lh_expr_fold_Func_0_7, _lh_expr_fold_Func_1_7) -> 
      ((_lh_expr_fold_arg1_7 _lh_expr_fold_Func_0_7) ((map__d4_d4 ((expr_fold__d1_d6 _lh_expr_fold_arg1_7) _lh_expr_fold_arg2_7)) _lh_expr_fold_Func_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d7 _lh_expr_fold_arg1_1_0 _lh_expr_fold_arg2_1_0 _lh_expr_fold_arg3_1_0 =
  (match _lh_expr_fold_arg3_1_0 with
    | `Var(_lh_expr_fold_Var_0_1_0) -> 
      (_lh_expr_fold_arg2_1_0 _lh_expr_fold_Var_0_1_0)
    | `Func(_lh_expr_fold_Func_0_1_0, _lh_expr_fold_Func_1_1_0) -> 
      ((_lh_expr_fold_arg1_1_0 _lh_expr_fold_Func_0_1_0) ((map__d4_d5 ((expr_fold__d1_d7 _lh_expr_fold_arg1_1_0) _lh_expr_fold_arg2_1_0)) _lh_expr_fold_Func_1_1_0))
    | _ -> 
      (failwith "error"))
and expr_fold__d1_d8 _lh_expr_fold_arg1_6 _lh_expr_fold_arg2_6 _lh_expr_fold_arg3_6 =
  (match _lh_expr_fold_arg3_6 with
    | `Var(_lh_expr_fold_Var_0_6) -> 
      (_lh_expr_fold_arg2_6 _lh_expr_fold_Var_0_6)
    | `Func(_lh_expr_fold_Func_0_6, _lh_expr_fold_Func_1_6) -> 
      ((_lh_expr_fold_arg1_6 _lh_expr_fold_Func_0_6) ((map__d4_d7 ((expr_fold__d1_d8 _lh_expr_fold_arg1_6) _lh_expr_fold_arg2_6)) _lh_expr_fold_Func_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold__d2 _lh_expr_fold_arg1_1_3 _lh_expr_fold_arg2_1_3 _lh_expr_fold_arg3_1_3 =
  (match _lh_expr_fold_arg3_1_3 with
    | `Var(_lh_expr_fold_Var_0_1_3) -> 
      (_lh_expr_fold_arg2_1_3 _lh_expr_fold_Var_0_1_3)
    | `Func(_lh_expr_fold_Func_0_1_3, _lh_expr_fold_Func_1_1_3) -> 
      ((_lh_expr_fold_arg1_1_3 _lh_expr_fold_Func_0_1_3) ((map__d1_d7 ((expr_fold__d2 _lh_expr_fold_arg1_1_3) _lh_expr_fold_arg2_1_3)) _lh_expr_fold_Func_1_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold__d3 _lh_expr_fold_arg1_3 _lh_expr_fold_arg2_3 _lh_expr_fold_arg3_3 =
  (match _lh_expr_fold_arg3_3 with
    | `Var(_lh_expr_fold_Var_0_3) -> 
      (_lh_expr_fold_arg2_3 _lh_expr_fold_Var_0_3)
    | `Func(_lh_expr_fold_Func_0_3, _lh_expr_fold_Func_1_3) -> 
      ((_lh_expr_fold_arg1_3 _lh_expr_fold_Func_0_3) ((map__d2_d0 ((expr_fold__d3 _lh_expr_fold_arg1_3) _lh_expr_fold_arg2_3)) _lh_expr_fold_Func_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold__d4 _lh_expr_fold_arg1_1_6 _lh_expr_fold_arg2_1_6 _lh_expr_fold_arg3_1_6 =
  (match _lh_expr_fold_arg3_1_6 with
    | `Var(_lh_expr_fold_Var_0_1_6) -> 
      (_lh_expr_fold_arg2_1_6 _lh_expr_fold_Var_0_1_6)
    | `Func(_lh_expr_fold_Func_0_1_6, _lh_expr_fold_Func_1_1_6) -> 
      ((_lh_expr_fold_arg1_1_6 _lh_expr_fold_Func_0_1_6) ((map__d2_d3 ((expr_fold__d4 _lh_expr_fold_arg1_1_6) _lh_expr_fold_arg2_1_6)) _lh_expr_fold_Func_1_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold__d5 _lh_expr_fold_arg1_4 _lh_expr_fold_arg2_4 _lh_expr_fold_arg3_4 =
  (match _lh_expr_fold_arg3_4 with
    | `Var(_lh_expr_fold_Var_0_4) -> 
      (_lh_expr_fold_arg2_4 _lh_expr_fold_Var_0_4)
    | `Func(_lh_expr_fold_Func_0_4, _lh_expr_fold_Func_1_4) -> 
      ((_lh_expr_fold_arg1_4 _lh_expr_fold_Func_0_4) ((map__d2_d6 ((expr_fold__d5 _lh_expr_fold_arg1_4) _lh_expr_fold_arg2_4)) _lh_expr_fold_Func_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold__d6 _lh_expr_fold_arg1_8 _lh_expr_fold_arg2_8 _lh_expr_fold_arg3_8 =
  (match _lh_expr_fold_arg3_8 with
    | `Var(_lh_expr_fold_Var_0_8) -> 
      (_lh_expr_fold_arg2_8 _lh_expr_fold_Var_0_8)
    | `Func(_lh_expr_fold_Func_0_8, _lh_expr_fold_Func_1_8) -> 
      ((_lh_expr_fold_arg1_8 _lh_expr_fold_Func_0_8) ((map__d2_d7 ((expr_fold__d6 _lh_expr_fold_arg1_8) _lh_expr_fold_arg2_8)) _lh_expr_fold_Func_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold__d7 _lh_expr_fold_arg1_1_4 _lh_expr_fold_arg2_1_4 _lh_expr_fold_arg3_1_4 =
  (match _lh_expr_fold_arg3_1_4 with
    | `Var(_lh_expr_fold_Var_0_1_4) -> 
      (_lh_expr_fold_arg2_1_4 _lh_expr_fold_Var_0_1_4)
    | `Func(_lh_expr_fold_Func_0_1_4, _lh_expr_fold_Func_1_1_4) -> 
      ((_lh_expr_fold_arg1_1_4 _lh_expr_fold_Func_0_1_4) ((map__d2_d8 ((expr_fold__d7 _lh_expr_fold_arg1_1_4) _lh_expr_fold_arg2_1_4)) _lh_expr_fold_Func_1_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold__d8 _lh_expr_fold_arg1_1_2 _lh_expr_fold_arg2_1_2 _lh_expr_fold_arg3_1_2 =
  (match _lh_expr_fold_arg3_1_2 with
    | `Var(_lh_expr_fold_Var_0_1_2) -> 
      (_lh_expr_fold_arg2_1_2 _lh_expr_fold_Var_0_1_2)
    | `Func(_lh_expr_fold_Func_0_1_2, _lh_expr_fold_Func_1_1_2) -> 
      ((_lh_expr_fold_arg1_1_2 _lh_expr_fold_Func_0_1_2) ((map__d2_d9 ((expr_fold__d8 _lh_expr_fold_arg1_1_2) _lh_expr_fold_arg2_1_2)) _lh_expr_fold_Func_1_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold__d9 _lh_expr_fold_arg1_1_9 _lh_expr_fold_arg2_1_9 _lh_expr_fold_arg3_1_9 =
  (match _lh_expr_fold_arg3_1_9 with
    | `Var(_lh_expr_fold_Var_0_1_9) -> 
      (_lh_expr_fold_arg2_1_9 _lh_expr_fold_Var_0_1_9)
    | `Func(_lh_expr_fold_Func_0_1_9, _lh_expr_fold_Func_1_1_9) -> 
      ((_lh_expr_fold_arg1_1_9 _lh_expr_fold_Func_0_1_9) ((map__d3_d0 ((expr_fold__d9 _lh_expr_fold_arg1_1_9) _lh_expr_fold_arg2_1_9)) _lh_expr_fold_Func_1_1_9))
    | _ -> 
      (failwith "error"))
and first_ok__d0 _lh_first_ok_arg1_8 =
  (((foldr__d0 orElse__d0) (`Nothing)) _lh_first_ok_arg1_8)
and first_ok__d1 _lh_first_ok_arg1_1_3 =
  (((foldr__d3 orElse__d1) (`Nothing)) _lh_first_ok_arg1_1_3)
and first_ok__d1_d0 _lh_first_ok_arg1_1_2 =
  (((foldr__d1_d3 orElse__d1_d5) (`Nothing)) _lh_first_ok_arg1_1_2)
and first_ok__d1_d1 _lh_first_ok_arg1_1_5 =
  (((foldr__d1_d4 orElse__d1_d6) (`Nothing)) _lh_first_ok_arg1_1_5)
and first_ok__d1_d2 _lh_first_ok_arg1_2 =
  (((foldr__d1_d5 orElse__d1_d7) (`Nothing)) _lh_first_ok_arg1_2)
and first_ok__d1_d3 _lh_first_ok_arg1_5 =
  (((foldr__d1_d6 orElse__d1_d8) (`Nothing)) _lh_first_ok_arg1_5)
and first_ok__d1_d4 _lh_first_ok_arg1_3 =
  (((foldr__d1_d7 orElse__d1_d9) (`Nothing)) _lh_first_ok_arg1_3)
and first_ok__d2 _lh_first_ok_arg1_6 =
  (((foldr__d4 orElse__d6) (`Nothing)) _lh_first_ok_arg1_6)
and first_ok__d3 _lh_first_ok_arg1_1_1 =
  (((foldr__d5 orElse__d7) (`Nothing)) _lh_first_ok_arg1_1_1)
and first_ok__d4 _lh_first_ok_arg1_1 =
  (((foldr__d6 orElse__d8) (`Nothing)) _lh_first_ok_arg1_1)
and first_ok__d5 _lh_first_ok_arg1_4 =
  (((foldr__d7 orElse__d9) (`Nothing)) _lh_first_ok_arg1_4)
and first_ok__d6 _lh_first_ok_arg1_9 =
  (((foldr__d8 orElse__d1_d0) (`Nothing)) _lh_first_ok_arg1_9)
and first_ok__d7 _lh_first_ok_arg1_1_0 =
  (((foldr__d9 orElse__d1_d1) (`Nothing)) _lh_first_ok_arg1_1_0)
and first_ok__d8 _lh_first_ok_arg1_7 =
  (((foldr__d1_d0 orElse__d1_d2) (`Nothing)) _lh_first_ok_arg1_7)
and first_ok__d9 _lh_first_ok_arg1_1_4 =
  (((foldr__d1_d2 orElse__d1_d4) (`Nothing)) _lh_first_ok_arg1_1_4)
and geRewrite__d0 _lh_geRewrite_arg1_4 _lh_geRewrite_arg2_4 _lh_geRewrite_arg3_4 =
  ((inList__d1 (_lh_geRewrite_arg1_4 (`LH_P2(_lh_geRewrite_arg2_4, _lh_geRewrite_arg3_4)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and geRewrite__d1 _lh_geRewrite_arg1_3 _lh_geRewrite_arg2_3 _lh_geRewrite_arg3_3 =
  ((inList__d2 (_lh_geRewrite_arg1_3 (`LH_P2(_lh_geRewrite_arg2_3, _lh_geRewrite_arg3_3)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and geRewrite__d2 _lh_geRewrite_arg1_2 _lh_geRewrite_arg2_2 _lh_geRewrite_arg3_2 =
  ((inList__d3 (_lh_geRewrite_arg1_2 (`LH_P2(_lh_geRewrite_arg2_2, _lh_geRewrite_arg3_2)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and geRewrite__d3 _lh_geRewrite_arg1_1 _lh_geRewrite_arg2_1 _lh_geRewrite_arg3_1 =
  ((inList__d4 (_lh_geRewrite_arg1_1 (`LH_P2(_lh_geRewrite_arg2_1, _lh_geRewrite_arg3_1)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and inside__d0 _lh_inside_arg1_2 _lh_inside_arg2_2 =
  (first_ok__d1 (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_2_0 -> 
    (match _lh_listcomp_fun_para_2_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_0) -> 
        (match _lh_listcomp_fun_ls_h_2_0 with
          | `LH_P2(_lh_inside_LH_P2_0_2, _lh_inside_LH_P2_1_2) -> 
            (`LH_C(((lift__d0 ((replace__d0 _lh_inside_arg2_2) _lh_inside_LH_P2_0_2)) (_lh_inside_arg1_2 _lh_inside_LH_P2_1_2)), (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0)))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_0 (subterms__d0 _lh_inside_arg2_2))))
and inside__d1 _lh_inside_arg1_1 _lh_inside_arg2_1 =
  (first_ok__d2 (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_7 -> 
    (match _lh_listcomp_fun_para_1_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
        (match _lh_listcomp_fun_ls_h_1_7 with
          | `LH_P2(_lh_inside_LH_P2_0_1, _lh_inside_LH_P2_1_1) -> 
            (`LH_C(((lift__d1_d0 ((replace__d1 _lh_inside_arg2_1) _lh_inside_LH_P2_0_1)) (_lh_inside_arg1_1 _lh_inside_LH_P2_1_1)), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7)))
          | _ -> 
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_7 (subterms__d1 _lh_inside_arg2_1))))
and listify__d0 _lh_listify_arg1_1 =
  ((getOrElse__d4 ((lift__d1_d3 box__d0) _lh_listify_arg1_1)) (`LH_N))
and listify__d1 _lh_listify_arg1_2 =
  ((getOrElse__d5 ((lift__d1_d4 box__d1) _lh_listify_arg1_2)) (`LH_N))
and map_dnet__d0 _lh_map_dnet_arg1_1 _lh_map_dnet_arg2_1 =
  (match _lh_map_dnet_arg2_1 with
    | `Switch(_lh_map_dnet_Switch_0_1, _lh_map_dnet_Switch_1_1) -> 
      (`Switch(((map__d2 ((cross__d3 (fun x_4_7 -> 
        x_4_7)) (map_dnet__d0 _lh_map_dnet_arg1_1))) _lh_map_dnet_Switch_0_1), ((map_dnet__d0 _lh_map_dnet_arg1_1) _lh_map_dnet_Switch_1_1)))
    | `Return(_lh_map_dnet_Return_0_1) -> 
      (`Return((_lh_map_dnet_arg1_1 _lh_map_dnet_Return_0_1)))
    | _ -> 
      (failwith "error"))
and match'__d0 _lh_match'_arg1_1 _lh_match'_arg2_1 =
  (match _lh_match'_arg2_1 with
    | `LH_P2(_lh_match'_LH_P2_0_1, _lh_match'_LH_P2_1_1) -> 
      (match _lh_match'_LH_P2_0_1 with
        | `Var(_lh_match'_Var_0_2) -> 
          (let rec u_1 = ((assoc__d1 _lh_match'_arg1_1) _lh_match'_Var_0_2) in
            (if (not (exists__d2 u_1)) then
              (succeed__d0 (`LH_C((`LH_P2(_lh_match'_Var_0_2, _lh_match'_LH_P2_1_1)), _lh_match'_arg1_1)))
            else
              (if ((eqExpr__d3 (the__d0 u_1)) _lh_match'_LH_P2_1_1) then
                (succeed__d1 _lh_match'_arg1_1)
              else
                croak__d4)))
        | `Func(_lh_match'_Func_0_2, _lh_match'_Func_1_2) -> 
          (match _lh_match'_LH_P2_1_1 with
            | `Func(_lh_match'_Func_0_3, _lh_match'_Func_1_3) -> 
              (if (_lh_match'_Func_0_2 = _lh_match'_Func_0_3) then
                (((prop_fold__d0 match'__d0) _lh_match'_arg1_1) ((zip__d0 _lh_match'_Func_1_2) _lh_match'_Func_1_3))
              else
                croak__d5)
            | `Var(_lh_match'_Var_0_3) -> 
              croak__d6
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and match'__d1 _lh_match'_arg1_2 _lh_match'_arg2_2 =
  (match _lh_match'_arg2_2 with
    | `LH_P2(_lh_match'_LH_P2_0_2, _lh_match'_LH_P2_1_2) -> 
      (match _lh_match'_LH_P2_0_2 with
        | `Var(_lh_match'_Var_0_4) -> 
          (let rec u_2 = ((assoc__d3 _lh_match'_arg1_2) _lh_match'_Var_0_4) in
            (if (not (exists__d3 u_2)) then
              (succeed__d2 (`LH_C((`LH_P2(_lh_match'_Var_0_4, _lh_match'_LH_P2_1_2)), _lh_match'_arg1_2)))
            else
              (if ((eqExpr__d4 (the__d1 u_2)) _lh_match'_LH_P2_1_2) then
                (succeed__d3 _lh_match'_arg1_2)
              else
                croak__d7)))
        | `Func(_lh_match'_Func_0_4, _lh_match'_Func_1_4) -> 
          (match _lh_match'_LH_P2_1_2 with
            | `Func(_lh_match'_Func_0_5, _lh_match'_Func_1_5) -> 
              (if (_lh_match'_Func_0_4 = _lh_match'_Func_0_5) then
                (((prop_fold__d1 match'__d1) _lh_match'_arg1_2) ((zip__d1 _lh_match'_Func_1_4) _lh_match'_Func_1_5))
              else
                croak__d8)
            | `Var(_lh_match'_Var_0_5) -> 
              croak__d9
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and match__d0 _lh_match_arg1_1 _lh_match_arg2_1 =
  ((match'__d0 (`LH_N)) (`LH_P2(_lh_match_arg1_1, _lh_match_arg2_1)))
and match__d1 _lh_match_arg1_2 _lh_match_arg2_2 =
  ((match'__d1 (`LH_N)) (`LH_P2(_lh_match_arg1_2, _lh_match_arg2_2)))
and occurs__d0 _lh_occurs_arg1_4 =
  ((expr_fold__d1 (fun dum_1_0 -> 
    or__d0)) (fun x_5_9 -> 
    (x_5_9 = _lh_occurs_arg1_4)))
and occurs__d1 _lh_occurs_arg1_3 =
  ((expr_fold__d2 (fun dum_9 -> 
    or__d1)) (fun x_5_6 -> 
    (x_5_6 = _lh_occurs_arg1_3)))
and occurs__d2 _lh_occurs_arg1_2 =
  ((expr_fold__d1_d4 (fun dum_8 -> 
    or__d2)) (fun x_4_9 -> 
    (x_4_9 = _lh_occurs_arg1_2)))
and occurs__d3 _lh_occurs_arg1_1 =
  ((expr_fold__d1_d7 (fun dum_4 -> 
    or__d3)) (fun x_2_4 -> 
    (x_2_4 = _lh_occurs_arg1_1)))
and orElseMap__d0 _lh_orElseMap_arg1_5 _lh_orElseMap_arg2_5 _lh_orElseMap_arg3_5 =
  ((orElse__d2 (_lh_orElseMap_arg1_5 _lh_orElseMap_arg3_5)) (_lh_orElseMap_arg2_5 _lh_orElseMap_arg3_5))
and orElseMap__d1 _lh_orElseMap_arg1_2 _lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2 =
  ((orElse__d3 (_lh_orElseMap_arg1_2 _lh_orElseMap_arg3_2)) (_lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2))
and orElseMap__d2 _lh_orElseMap_arg1_3 _lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3 =
  ((orElse__d4 (_lh_orElseMap_arg1_3 _lh_orElseMap_arg3_3)) (_lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3))
and orElseMap__d3 _lh_orElseMap_arg1_4 _lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4 =
  ((orElse__d5 (_lh_orElseMap_arg1_4 _lh_orElseMap_arg3_4)) (_lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4))
and orElseMap__d4 _lh_orElseMap_arg1_1 _lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1 =
  ((orElse__d1_d3 (_lh_orElseMap_arg1_1 _lh_orElseMap_arg3_1)) (_lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1))
and prop_fold__d0 _lh_prop_fold_arg1_2 _lh_prop_fold_arg2_2 _lh_prop_fold_arg3_2 =
  (match _lh_prop_fold_arg3_2 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_2))
    | `LH_C(_lh_prop_fold_LH_C_0_2, _lh_prop_fold_LH_C_1_2) -> 
      (((prop2__d0 (prop_fold__d0 _lh_prop_fold_arg1_2)) ((_lh_prop_fold_arg1_2 _lh_prop_fold_arg2_2) _lh_prop_fold_LH_C_0_2)) _lh_prop_fold_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and prop_fold__d1 _lh_prop_fold_arg1_3 _lh_prop_fold_arg2_3 _lh_prop_fold_arg3_3 =
  (match _lh_prop_fold_arg3_3 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_3))
    | `LH_C(_lh_prop_fold_LH_C_0_3, _lh_prop_fold_LH_C_1_3) -> 
      (((prop2__d1 (prop_fold__d1 _lh_prop_fold_arg1_3)) ((_lh_prop_fold_arg1_3 _lh_prop_fold_arg2_3) _lh_prop_fold_LH_C_0_3)) _lh_prop_fold_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and prop_fold__d2 _lh_prop_fold_arg1_1 _lh_prop_fold_arg2_1 _lh_prop_fold_arg3_1 =
  (match _lh_prop_fold_arg3_1 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_1))
    | `LH_C(_lh_prop_fold_LH_C_0_1, _lh_prop_fold_LH_C_1_1) -> 
      (((prop2__d2 (prop_fold__d2 _lh_prop_fold_arg1_1)) ((_lh_prop_fold_arg1_1 _lh_prop_fold_arg2_1) _lh_prop_fold_LH_C_0_1)) _lh_prop_fold_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and reduce1__d0 _lh_reduce1_arg1_1 =
  (inside__d1 (rewrite__d0 _lh_reduce1_arg1_1))
and replace__d0 _lh_replace_arg1_3 _lh_replace_arg2_3 _lh_replace_arg3_3 =
  (match _lh_replace_arg2_3 with
    | `LH_N -> 
      _lh_replace_arg3_3
    | _ -> 
      (match _lh_replace_arg1_3 with
        | `Func(_lh_replace_Func_0_3, _lh_replace_Func_1_3) -> 
          (match _lh_replace_arg2_3 with
            | `LH_C(_lh_replace_LH_C_0_3, _lh_replace_LH_C_1_3) -> 
              (`Func(_lh_replace_Func_0_3, (((modify__d0 _lh_replace_Func_1_3) _lh_replace_LH_C_0_3) (fun t_1_0_9 -> 
                (((replace__d0 t_1_0_9) _lh_replace_LH_C_1_3) _lh_replace_arg3_3)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace__d1 _lh_replace_arg1_1 _lh_replace_arg2_1 _lh_replace_arg3_1 =
  (match _lh_replace_arg2_1 with
    | `LH_N -> 
      _lh_replace_arg3_1
    | _ -> 
      (match _lh_replace_arg1_1 with
        | `Func(_lh_replace_Func_0_1, _lh_replace_Func_1_1) -> 
          (match _lh_replace_arg2_1 with
            | `LH_C(_lh_replace_LH_C_0_1, _lh_replace_LH_C_1_1) -> 
              (`Func(_lh_replace_Func_0_1, (((modify__d1 _lh_replace_Func_1_1) _lh_replace_LH_C_0_1) (fun t_3_0 -> 
                (((replace__d1 t_3_0) _lh_replace_LH_C_1_1) _lh_replace_arg3_1)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace__d2 _lh_replace_arg1_2 _lh_replace_arg2_2 _lh_replace_arg3_2 =
  (match _lh_replace_arg2_2 with
    | `LH_N -> 
      _lh_replace_arg3_2
    | _ -> 
      (match _lh_replace_arg1_2 with
        | `Func(_lh_replace_Func_0_2, _lh_replace_Func_1_2) -> 
          (match _lh_replace_arg2_2 with
            | `LH_C(_lh_replace_LH_C_0_2, _lh_replace_LH_C_1_2) -> 
              (`Func(_lh_replace_Func_0_2, (((modify__d2 _lh_replace_Func_1_2) _lh_replace_LH_C_0_2) (fun t_7_5 -> 
                (((replace__d2 t_7_5) _lh_replace_LH_C_1_2) _lh_replace_arg3_2)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and result__d0 _lh_result_arg1_1 =
  (match _lh_result_arg1_1 with
    | `LH_P2(_lh_result_LH_P2_0_1, _lh_result_LH_P2_1_1) -> 
      let rec process2_1 = (fun _lh_process2_arg1_1 _lh_process2_arg2_1 _lh_process2_arg3_1 _lh_process2_arg4_1 _lh_process2_arg5_1 _lh_process2_arg6_1 -> 
        (let rec _lh_matchIdent_3_1 = ((split_1 (reducible_1 (reduce1__d0 _lh_process2_arg6_1))) _lh_process2_arg3_1) in
          (match _lh_matchIdent_3_1 with
            | `LH_P2(_lh_process2_LH_P2_0_1, _lh_process2_LH_P2_1_1) -> 
              (let rec net'_1 = ((add_eqn_1 ((delete_eqns__d0 ((map__d1_d2 eqno__d1) _lh_process2_LH_P2_0_1)) _lh_process2_arg4_1)) _lh_process2_arg6_1) in
                (let rec deletions_1 = ((map__d1_d3 eqpr__d0) _lh_process2_LH_P2_0_1) in
                  (let rec critical_1 = ((all_crit_pairs_1 _lh_process2_arg6_1) _lh_process2_LH_P2_1_1) in
                    (let rec new_agenda_1 = (sift__d1 ((map__d1_d4 (resolve_1 (super_reduce_1 net'_1))) ((mappend__d5 deletions_1) critical_1))) in
                      (let rec todo'_1 = (((add_agenda_1 (snd__d1 _lh_process2_arg1_1)) new_agenda_1) _lh_process2_arg5_1) in
                        (((((process_1 _lh_process2_arg1_1) _lh_process2_arg2_1) ((mappend__d6 _lh_process2_LH_P2_1_1) (`LH_C(_lh_process2_arg6_1, (`LH_N))))) net'_1) todo'_1))))))
            | _ -> 
              (failwith "error"))))
      and build_1 = (fun _lh_build_arg1_1 _lh_build_arg2_1 _lh_funcomp_x_1_9 -> 
        ((lift__d8 ((cross__d2 _lh_build_arg1_1) (fun x_3_4 -> 
          x_3_4))) (_lh_build_arg2_1 _lh_funcomp_x_1_9)))
      and mk_dnet_1 = (fun _lh_mk_dnet_arg1_1 -> 
        (((foldl__d0 add_eqn_1) empty_net_1) _lh_mk_dnet_arg1_1))
      and unString_1 = (fun _lh_unString_arg1_1 -> 
        (match _lh_unString_arg1_1 with
          | `MkString(_lh_unString_MkString_0_1) -> 
            _lh_unString_MkString_0_1
          | _ -> 
            (failwith "error")))
      and p_prim_1 = (fun _lh_p_prim_arg1_1 -> 
        (((orElseMap__d1 p_name_1) ((seQ_1 (fun x_3_5 -> 
          ((atIndex__d2 1) x_3_5))) (`LH_C((look_for_1 '('), (`LH_C(p_expr_1, (`LH_C((look_for_1 ')'), (`LH_N))))))))) _lh_p_prim_arg1_1))
      and split_1 = (fun _lh_split_arg1_1 _lh_split_arg2_1 -> 
        (let rec tmp_1 = ((zip__d3 ((map__d1_d1 _lh_split_arg1_1) _lh_split_arg2_1)) _lh_split_arg2_1) in
          (`LH_P2((let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
            (match _lh_listcomp_fun_para_1_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
                (match _lh_listcomp_fun_ls_h_1_1 with
                  | `LH_P2(_lh_split_LH_P2_0_2, _lh_split_LH_P2_1_2) -> 
                    (if _lh_split_LH_P2_0_2 then
                      (`LH_C(_lh_split_LH_P2_1_2, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
                    else
                      (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
                  | _ -> 
                    (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1_1 tmp_1)), (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
            (match _lh_listcomp_fun_para_1_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
                (match _lh_listcomp_fun_ls_h_1_2 with
                  | `LH_P2(_lh_split_LH_P2_0_3, _lh_split_LH_P2_1_3) -> 
                    (if (not _lh_split_LH_P2_0_3) then
                      (`LH_C(_lh_split_LH_P2_1_3, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2)))
                    else
                      (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
                  | _ -> 
                    (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1_2 tmp_1))))))
      and mk_item_1 = (fun _lh_mk_item_arg1_1 _lh_mk_item_arg2_1 -> 
        (`Item((_lh_mk_item_arg1_1 _lh_mk_item_arg2_1), _lh_mk_item_arg2_1)))
      and super_reduce_1 = (fun _lh_super_reduce_arg1_1 -> 
        (inside__d0 (dnet_reduce_1 _lh_super_reduce_arg1_1)))
      and knuth_bendix1_1 = (fun _lh_knuth_bendix1_arg1_1 _lh_knuth_bendix1_arg2_1 -> 
        (((((process_1 _lh_knuth_bendix1_arg1_1) 1) (`LH_N)) empty_net_1) (((add_agenda_1 (snd__d0 _lh_knuth_bendix1_arg1_1)) _lh_knuth_bendix1_arg2_1) (`LH_N))))
      and add_agenda_1 = (fun _lh_add_agenda_arg1_1 _lh_add_agenda_arg2_1 -> 
        ((addby_1 item_cost_1) ((map__d6 (mk_item_1 _lh_add_agenda_arg1_1)) _lh_add_agenda_arg2_1)))
      and find_1 = (fun _lh_find_arg1_1 _lh_find_arg2_1 -> 
        ((find'_1 (g_init_1 _lh_find_arg1_1)) _lh_find_arg2_1))
      and multi_ext_1 = (fun _lh_multi_ext_arg1_1 _lh_multi_ext_arg2_1 -> 
        (match _lh_multi_ext_arg2_1 with
          | `LH_P2(_lh_multi_ext_LH_P2_0_1, _lh_multi_ext_LH_P2_1_1) -> 
            (match _lh_multi_ext_LH_P2_0_1 with
              | `Func(_lh_multi_ext_Func_0_2, _lh_multi_ext_Func_1_2) -> 
                (match _lh_multi_ext_LH_P2_1_1 with
                  | `Func(_lh_multi_ext_Func_0_3, _lh_multi_ext_Func_1_3) -> 
                    ((multi_1 _lh_multi_ext_arg1_1) (`LH_P2(_lh_multi_ext_Func_1_2, _lh_multi_ext_Func_1_3)))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and opsym_1 = (fun _lh_opsym_arg1_1 -> 
        ((fun x_3_6 -> 
          ((inList__d5 x_3_6) (`LH_C('*', (`LH_C('+', (`LH_C('%', (`LH_C('@', (`LH_C('-', (`LH_C('/', (`LH_C('?', (`LH_C(':', (`LH_N))))))))))))))))))) _lh_opsym_arg1_1))
      and look_for_1 = (fun _lh_look_for_arg1_1 -> 
        (sp_1 (pchar_1 (fun x_3_8 -> 
          (x_3_8 = _lh_look_for_arg1_1)))))
      and empty_net_1 = (`Return((`LH_N)))
      and q_func_1 = (fun _lh_q_func_arg1_1 -> 
        (match _lh_q_func_arg1_1 with
          | `LH_C(_lh_q_func_LH_C_0_4, _lh_q_func_LH_C_1_4) -> 
            (match _lh_q_func_LH_C_0_4 with
              | `MkString(_lh_q_func_MkString_0_1) -> 
                (match _lh_q_func_LH_C_1_4 with
                  | `LH_C(_lh_q_func_LH_C_0_5, _lh_q_func_LH_C_1_5) -> 
                    (match _lh_q_func_LH_C_1_5 with
                      | `LH_C(_lh_q_func_LH_C_0_6, _lh_q_func_LH_C_1_6) -> 
                        (match _lh_q_func_LH_C_0_6 with
                          | `List(_lh_q_func_List_0_1) -> 
                            (match _lh_q_func_LH_C_1_6 with
                              | `LH_C(_lh_q_func_LH_C_0_7, _lh_q_func_LH_C_1_7) -> 
                                (match _lh_q_func_LH_C_1_7 with
                                  | `LH_N -> 
                                    (`Expr((`Func(_lh_q_func_MkString_0_1, ((map__d3 unExpr_1) _lh_q_func_List_0_1)))))
                                  | _ -> 
                                    (failwith "error"))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and g_init_1 = (fun _lh_g_init_arg1_1 -> 
        (`LH_C(_lh_g_init_arg1_1, (`LH_N))))
      and q_eqn_1 = (fun _lh_q_eqn_arg1_1 -> 
        (match _lh_q_eqn_arg1_1 with
          | `LH_C(_lh_q_eqn_LH_C_0_3, _lh_q_eqn_LH_C_1_3) -> 
            (match _lh_q_eqn_LH_C_1_3 with
              | `LH_C(_lh_q_eqn_LH_C_0_4, _lh_q_eqn_LH_C_1_4) -> 
                (match _lh_q_eqn_LH_C_1_4 with
                  | `LH_C(_lh_q_eqn_LH_C_0_5, _lh_q_eqn_LH_C_1_5) -> 
                    (match _lh_q_eqn_LH_C_1_5 with
                      | `LH_N -> 
                        (`List((`LH_C(_lh_q_eqn_LH_C_0_3, (`LH_C(_lh_q_eqn_LH_C_0_5, (`LH_N)))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and empty_1 = (fun _lh_empty_arg1_1 -> 
        (succeed__d4 (`LH_P2((`List((`LH_N))), _lh_empty_arg1_1))))
      and lex_ext_1 = (fun _lh_lex_ext_arg1_1 _lh_lex_ext_arg2_1 -> 
        (match _lh_lex_ext_arg2_1 with
          | `LH_P2(_lh_lex_ext_LH_P2_0_1, _lh_lex_ext_LH_P2_1_1) -> 
            (match _lh_lex_ext_LH_P2_0_1 with
              | `Func(_lh_lex_ext_Func_0_2, _lh_lex_ext_Func_1_2) -> 
                (match _lh_lex_ext_LH_P2_1_1 with
                  | `Func(_lh_lex_ext_Func_0_3, _lh_lex_ext_Func_1_3) -> 
                    (let rec estimate_1 = ((lexico_1 _lh_lex_ext_arg1_1) (`LH_P2(_lh_lex_ext_Func_1_2, _lh_lex_ext_Func_1_3))) in
                      (let rec confirm_1 = (fun x_3_7 -> 
                        (let rec _lh_matchIdent_3_0 = x_3_7 in
                          (match _lh_matchIdent_3_0 with
                            | `Equal -> 
                              true
                            | `Greater -> 
                              ((((quant__d0 all__d1) (ltRewrite__d0 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_2, _lh_lex_ext_Func_1_2))) _lh_lex_ext_Func_1_3)
                            | `Less -> 
                              ((((quant__d1 all__d2) (ltRewrite__d1 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_3, _lh_lex_ext_Func_1_3))) _lh_lex_ext_Func_1_2)
                            | `Unrelated -> 
                              false
                            | _ -> 
                              (failwith "error")))) in
                        (if (confirm_1 estimate_1) then
                          estimate_1
                        else
                          (if ((((quant__d2 any__d0) (geRewrite__d0 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_3, _lh_lex_ext_Func_1_3))) _lh_lex_ext_Func_1_2) then
                            (`Greater)
                          else
                            (if ((((quant__d3 any__d1) (geRewrite__d1 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_2, _lh_lex_ext_Func_1_2))) _lh_lex_ext_Func_1_3) then
                              (`Less)
                            else
                              (`Unrelated))))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and seq2_1 = (fun _lh_seq2_arg1_1 _lh_seq2_arg2_1 _lh_seq2_arg3_1 -> 
        (let rec g_3 = (fun xs_2_6 -> 
          (let rec _lh_matchIdent_3_2 = xs_2_6 in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_seq2_LH_P2_0_1, _lh_seq2_LH_P2_1_1) -> 
                ((lift__d2 ((cross__d0 (_lh_seq2_arg1_1 _lh_seq2_LH_P2_0_1)) (fun x_4_1 -> 
                  x_4_1))) (_lh_seq2_arg3_1 _lh_seq2_LH_P2_1_1))
              | _ -> 
                (failwith "error")))) in
          (fun _lh_funcomp_x_2_1 -> 
            ((fun _lh_funcomp_x_2_2 -> 
              (squash__d0 ((lift__d3 g_3) _lh_funcomp_x_2_2))) (_lh_seq2_arg2_1 _lh_funcomp_x_2_1)))))
      and p_ident_1 = (fun _lh_p_ident_arg1_1 -> 
        ((sp_1 (string_of_1 alphanum_1)) _lh_p_ident_arg1_1))
      and alphanum_1 = (fun _lh_alphanum_arg1_1 -> 
        (((((int_of_char _lh_alphanum_arg1_1) >= (int_of_char 'A')) && ((int_of_char _lh_alphanum_arg1_1) <= (int_of_char 'Z'))) || (((int_of_char _lh_alphanum_arg1_1) >= (int_of_char 'a')) && ((int_of_char _lh_alphanum_arg1_1) <= (int_of_char 'z')))) || (((int_of_char _lh_alphanum_arg1_1) >= (int_of_char '0')) && ((int_of_char _lh_alphanum_arg1_1) <= (int_of_char '9')))))
      and knuth_bendix_1 = (fun _lh_knuth_bendix_arg1_1 _lh_knuth_bendix_arg2_1 -> 
        ((knuth_bendix1_1 (`LH_P2(_lh_knuth_bendix_arg1_1, cost__d0))) _lh_knuth_bendix_arg2_1))
      and mk_cons_1 = (fun _lh_mk_cons_arg1_1 _lh_mk_cons_arg2_1 -> 
        (match _lh_mk_cons_arg2_1 with
          | `List(_lh_mk_cons_List_0_1) -> 
            (`List((`LH_C(_lh_mk_cons_arg1_1, _lh_mk_cons_List_0_1))))
          | _ -> 
            (failwith "error")))
      and all_crit_pairs_1 = (fun _lh_all_crit_pairs_arg1_1 _lh_all_crit_pairs_arg2_1 -> 
        (let rec eqn'_1 = ((stand_eqn__d0 (`LH_C('1', (`LH_N)))) _lh_all_crit_pairs_arg1_1) in
          (let rec eqn''_1 = ((stand_eqn__d1 (`LH_C('2', (`LH_N)))) _lh_all_crit_pairs_arg1_1) in
            (let rec theory''_1 = ((map__d7 (stand_eqn__d2 (`LH_C('2', (`LH_N))))) _lh_all_crit_pairs_arg2_1) in
              ((mappend__d4 ((map__d8 ((mk_crit_1 eqn'_1) eqn''_1)) ((strict_super_1 (lhs__d5 eqn'_1)) (lhs__d6 eqn''_1)))) (concat__d0 ((map__d9 (crit_pairs_1 eqn'_1)) theory''_1)))))))
      and string_of_1 = (fun _lh_string_of_arg1_1 _lh_string_of_arg2_1 -> 
        (let rec chars_1 = ((takeWhile__d0 _lh_string_of_arg1_1) _lh_string_of_arg2_1) in
          (let rec s'_1 = ((dropWhile__d1 _lh_string_of_arg1_1) _lh_string_of_arg2_1) in
            ((maybeX__d1 (chars_1 <> (`LH_N))) (`LH_P2((`MkString(chars_1)), s'_1))))))
      and crit_pairs_1 = (fun _lh_crit_pairs_arg1_1 _lh_crit_pairs_arg2_1 -> 
        ((mappend__d3 ((map__d4 ((mk_crit_1 _lh_crit_pairs_arg1_1) _lh_crit_pairs_arg2_1)) ((superpose_1 (lhs__d0 _lh_crit_pairs_arg1_1)) (lhs__d1 _lh_crit_pairs_arg2_1)))) ((map__d5 ((mk_crit_1 _lh_crit_pairs_arg2_1) _lh_crit_pairs_arg1_1)) ((strict_super_1 (lhs__d2 _lh_crit_pairs_arg2_1)) (lhs__d3 _lh_crit_pairs_arg1_1)))))
      and process_1 = (fun _lh_process_arg1_1 _lh_process_arg2_1 _lh_process_arg3_1 _lh_process_arg4_1 _lh_process_arg5_1 -> 
        (match _lh_process_arg5_1 with
          | `LH_N -> 
            _lh_process_arg4_1
          | `LH_C(_lh_process_LH_C_0_1, _lh_process_LH_C_1_1) -> 
            (match _lh_process_LH_C_0_1 with
              | `Item(_lh_process_Item_0_1, _lh_process_Item_1_1) -> 
                ((((((process1_1 _lh_process_arg1_1) _lh_process_arg2_1) _lh_process_arg3_1) _lh_process_arg4_1) _lh_process_LH_C_1_1) ((preprocess_1 _lh_process_arg4_1) _lh_process_Item_1_1))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and process1_1 = (fun _lh_process1_arg1_1 _lh_process1_arg2_1 _lh_process1_arg3_1 _lh_process1_arg4_1 _lh_process1_arg5_1 _lh_process1_arg6_1 -> 
        (match _lh_process1_arg6_1 with
          | `LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1) -> 
            (let rec o_1 = ((fst__d0 _lh_process1_arg1_1) (`LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1))) in
              (let rec _lh_matchIdent_2_8 = o_1 in
                (match _lh_matchIdent_2_8 with
                  | `Unrelated -> 
                    (((((process_1 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) (((add_agenda_1 (fun dum_6 -> 
                      1000)) (`LH_C((`LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1)), (`LH_N)))) _lh_process1_arg5_1))
                  | `Equal -> 
                    (((((process_1 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1)
                  | _ -> 
                    (let rec eqn_1 = (let rec _lh_matchIdent_2_9 = o_1 in
                      (match _lh_matchIdent_2_9 with
                        | `Greater -> 
                          (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1))))
                        | `Less -> 
                          (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_1_1, _lh_process1_LH_P2_0_1))))
                        | _ -> 
                          (failwith "error"))) in
                      ((((((process2_1 _lh_process1_arg1_1) (_lh_process1_arg2_1 + 1)) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1) eqn_1)))))
          | _ -> 
            (failwith "error")))
      and lexico_1 = (fun _lh_lexico_arg1_1 _lh_lexico_arg2_1 -> 
        (match _lh_lexico_arg2_1 with
          | `LH_P2(_lh_lexico_LH_P2_0_1, _lh_lexico_LH_P2_1_1) -> 
            (match _lh_lexico_LH_P2_0_1 with
              | `LH_N -> 
                (match _lh_lexico_LH_P2_1_1 with
                  | `LH_N -> 
                    (`Equal)
                  | `LH_C(_lh_lexico_LH_C_0_3, _lh_lexico_LH_C_1_3) -> 
                    (`Less)
                  | _ -> 
                    (failwith "error"))
              | `LH_C(_lh_lexico_LH_C_0_4, _lh_lexico_LH_C_1_4) -> 
                (match _lh_lexico_LH_P2_1_1 with
                  | `LH_N -> 
                    (`Greater)
                  | `LH_C(_lh_lexico_LH_C_0_5, _lh_lexico_LH_C_1_5) -> 
                    ((lex_combine_1 (_lh_lexico_arg1_1 (`LH_P2(_lh_lexico_LH_C_0_4, _lh_lexico_LH_C_0_5)))) ((lexico_1 _lh_lexico_arg1_1) (`LH_P2(_lh_lexico_LH_C_1_4, _lh_lexico_LH_C_1_5))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and dominates_1 = (fun _lh_dominates_arg1_1 -> 
        ((quant__d4 all__d3) ((quant__d5 any__d2) (gtRewrite__d0 _lh_dominates_arg1_1))))
      and mk_crit_1 = (fun _lh_mk_crit_arg1_1 _lh_mk_crit_arg2_1 _lh_mk_crit_arg3_1 -> 
        (match _lh_mk_crit_arg1_1 with
          | `Eqn(_lh_mk_crit_Eqn_0_2, _lh_mk_crit_Eqn_1_2) -> 
            (match _lh_mk_crit_Eqn_1_2 with
              | `LH_P2(_lh_mk_crit_LH_P2_0_3, _lh_mk_crit_LH_P2_1_3) -> 
                (match _lh_mk_crit_arg2_1 with
                  | `Eqn(_lh_mk_crit_Eqn_0_3, _lh_mk_crit_Eqn_1_3) -> 
                    (match _lh_mk_crit_Eqn_1_3 with
                      | `LH_P2(_lh_mk_crit_LH_P2_0_4, _lh_mk_crit_LH_P2_1_4) -> 
                        (match _lh_mk_crit_arg3_1 with
                          | `LH_P2(_lh_mk_crit_LH_P2_0_5, _lh_mk_crit_LH_P2_1_5) -> 
                            (`LH_P2(((sub__d2 (((replace__d2 _lh_mk_crit_LH_P2_0_4) _lh_mk_crit_LH_P2_0_5) _lh_mk_crit_LH_P2_1_3)) _lh_mk_crit_LH_P2_1_5), ((sub__d3 _lh_mk_crit_LH_P2_1_4) _lh_mk_crit_LH_P2_1_5)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and q_op_1 = (fun _lh_q_op_arg1_1 -> 
        (match _lh_q_op_arg1_1 with
          | `LH_C(_lh_q_op_LH_C_0_3, _lh_q_op_LH_C_1_3) -> 
            (match _lh_q_op_LH_C_0_3 with
              | `Expr(_lh_q_op_Expr_0_2) -> 
                (match _lh_q_op_LH_C_1_3 with
                  | `LH_C(_lh_q_op_LH_C_0_4, _lh_q_op_LH_C_1_4) -> 
                    (match _lh_q_op_LH_C_0_4 with
                      | `MkString(_lh_q_op_MkString_0_1) -> 
                        (match _lh_q_op_LH_C_1_4 with
                          | `LH_C(_lh_q_op_LH_C_0_5, _lh_q_op_LH_C_1_5) -> 
                            (match _lh_q_op_LH_C_0_5 with
                              | `Expr(_lh_q_op_Expr_0_3) -> 
                                (match _lh_q_op_LH_C_1_5 with
                                  | `LH_N -> 
                                    (`Expr((`Func(_lh_q_op_MkString_0_1, (`LH_C(_lh_q_op_Expr_0_2, (`LH_C(_lh_q_op_Expr_0_3, (`LH_N)))))))))
                                  | _ -> 
                                    (failwith "error"))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and superpose_1 = (fun _lh_superpose_arg1_1 _lh_superpose_arg2_1 -> 
        (sift__d0 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
          (match _lh_listcomp_fun_para_1_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
              (match _lh_listcomp_fun_ls_h_1_0 with
                | `LH_P2(_lh_superpose_LH_P2_0_1, _lh_superpose_LH_P2_1_1) -> 
                  (`LH_C(((lift__d7 (pair__d1 _lh_superpose_LH_P2_0_1)) ((unify__d0 _lh_superpose_arg1_1) _lh_superpose_LH_P2_1_1)), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0)))
                | _ -> 
                  (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_1_0 (subterms__d2 _lh_superpose_arg2_1)))))
      and rank_order_1 = (fun _lh_rank_order_arg1_1 _lh_rank_order_arg2_1 -> 
        (match _lh_rank_order_arg2_1 with
          | `LH_P2(_lh_rank_order_LH_P2_0_1, _lh_rank_order_LH_P2_1_1) -> 
            (num_order_1 (`LH_P2((_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_0_1), (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_1_1))))
          | _ -> 
            (failwith "error")))
      and is_switch_1 = (fun _lh_is_switch_arg1_1 -> 
        (match _lh_is_switch_arg1_1 with
          | `Switch(_lh_is_switch_Switch_0_1, _lh_is_switch_Switch_1_1) -> 
            true
          | `Return(_lh_is_switch_Return_0_1) -> 
            false
          | _ -> 
            (failwith "error")))
      and multi_1 = (fun _lh_multi_arg1_1 _lh_multi_arg2_1 -> 
        (match _lh_multi_arg2_1 with
          | `LH_P2(_lh_multi_LH_P2_0_2, _lh_multi_LH_P2_1_2) -> 
            (let rec _lh_matchIdent_2_1 = ((rem_eq_1 (eqRewrite__d0 _lh_multi_arg1_1)) (`LH_P2(_lh_multi_LH_P2_0_2, _lh_multi_LH_P2_1_2))) in
              (match _lh_matchIdent_2_1 with
                | `LH_P2(_lh_multi_LH_P2_0_3, _lh_multi_LH_P2_1_3) -> 
                  (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_0_3) _lh_multi_LH_P2_1_3) then
                    (`Greater)
                  else
                    (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_1_3) _lh_multi_LH_P2_0_3) then
                      (`Less)
                    else
                      (`Unrelated)))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))
      and mk_list_1 = (fun _lh_mk_list_arg1_1 _lh_mk_list_arg2_1 -> 
        (match _lh_mk_list_arg2_1 with
          | `List(_lh_mk_list_List_0_1) -> 
            (_lh_mk_list_arg1_1 _lh_mk_list_List_0_1)
          | _ -> 
            (failwith "error")))
      and find_assoc_1 = (fun _lh_find_assoc_arg1_1 _lh_find_assoc_arg2_1 _lh_find_assoc_arg3_1 -> 
        (match _lh_find_assoc_arg1_1 with
          | `Afunc(_lh_find_assoc_Afunc_0_1) -> 
            ((getOrElse__d0 ((lift__d1 (find'_1 _lh_find_assoc_arg2_1)) ((assoc__d0 _lh_find_assoc_arg3_1) _lh_find_assoc_Afunc_0_1))) (`LH_N))
          | `Avar -> 
            (`LH_N)
          | _ -> 
            (failwith "error")))
      and addby_1 = (fun _lh_addby_arg1_1 _lh_addby_arg2_1 _lh_addby_arg3_1 -> 
        (let rec insert_1 = (fun x_3_2 ls_5_2 -> 
          (let rec _lh_matchIdent_2_4 = ls_5_2 in
            (match _lh_matchIdent_2_4 with
              | `LH_N -> 
                (`LH_C(x_3_2, (`LH_N)))
              | `LH_C(_lh_addby_LH_C_0_1, _lh_addby_LH_C_1_1) -> 
                (if ((_lh_addby_arg1_1 x_3_2) <= (_lh_addby_arg1_1 _lh_addby_LH_C_0_1)) then
                  (`LH_C(x_3_2, (`LH_C(_lh_addby_LH_C_0_1, _lh_addby_LH_C_1_1))))
                else
                  (`LH_C(_lh_addby_LH_C_0_1, ((insert_1 x_3_2) _lh_addby_LH_C_1_1))))
              | _ -> 
                (failwith "error")))) in
          (((foldr__d2 insert_1) _lh_addby_arg3_1) _lh_addby_arg2_1)))
      and reducible_1 = (fun _lh_reducible_arg1_1 _lh_reducible_arg2_1 -> 
        (match _lh_reducible_arg2_1 with
          | `Eqn(_lh_reducible_Eqn_0_1, _lh_reducible_Eqn_1_1) -> 
            (match _lh_reducible_Eqn_1_1 with
              | `LH_P2(_lh_reducible_LH_P2_0_1, _lh_reducible_LH_P2_1_1) -> 
                ((exists__d0 (_lh_reducible_arg1_1 _lh_reducible_LH_P2_0_1)) || (exists__d1 (_lh_reducible_arg1_1 _lh_reducible_LH_P2_1_1)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and delete_1 = (fun _lh_delete_arg1_1 _lh_delete_arg2_1 _lh_delete_arg3_1 -> 
        (match _lh_delete_arg3_1 with
          | `LH_N -> 
            croak__d1
          | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
            (if ((_lh_delete_arg1_1 _lh_delete_arg2_1) _lh_delete_LH_C_0_1) then
              (succeed__d6 _lh_delete_LH_C_1_1)
            else
              ((lift__d9 (fun x_3_1 -> 
                (`LH_C(_lh_delete_LH_C_0_1, x_3_1)))) (((delete_1 _lh_delete_arg1_1) _lh_delete_arg2_1) _lh_delete_LH_C_1_1)))
          | _ -> 
            (failwith "error")))
      and pchar_1 = (fun _lh_pchar_arg1_1 _lh_pchar_arg2_1 -> 
        (match _lh_pchar_arg2_1 with
          | `LH_N -> 
            croak__d2
          | `LH_C(_lh_pchar_LH_C_0_1, _lh_pchar_LH_C_1_1) -> 
            (if (_lh_pchar_arg1_1 _lh_pchar_LH_C_0_1) then
              (succeed__d7 (`LH_P2((`MkString((`LH_C(_lh_pchar_LH_C_0_1, (`LH_N))))), _lh_pchar_LH_C_1_1)))
            else
              croak__d3)
          | _ -> 
            (failwith "error")))
      and seq2Lzq_1 = (fun _lh_seq2Lzq_arg1_1 _lh_seq2Lzq_arg2_1 _lh_seq2Lzq_arg3_1 -> 
        (let rec g_2 = (fun xs_2_5 -> 
          (let rec _lh_matchIdent_2_5 = xs_2_5 in
            (match _lh_matchIdent_2_5 with
              | `LH_P2(_lh_seq2Lzq_LH_P2_0_1, _lh_seq2Lzq_LH_P2_1_1) -> 
                ((lift__d5 ((cross__d1 (_lh_seq2Lzq_arg1_1 _lh_seq2Lzq_LH_P2_0_1)) (fun x_3_3 -> 
                  x_3_3))) ((Lazy.force _lh_seq2Lzq_arg3_1) _lh_seq2Lzq_LH_P2_1_1))
              | _ -> 
                (failwith "error")))) in
          (fun _lh_funcomp_x_1_7 -> 
            ((fun _lh_funcomp_x_1_8 -> 
              (squash__d1 ((lift__d6 g_2) _lh_funcomp_x_1_8))) (_lh_seq2Lzq_arg2_1 _lh_funcomp_x_1_7)))))
      and p_term_1 = (fun _lh_p_term_arg1_1 -> 
        (((orElseMap__d3 ((seQ_1 q_func_1) (`LH_C(p_ident_1, (`LH_C((look_for_1 '('), (`LH_C(((list_of_1 p_expr_1) ','), (`LH_C((look_for_1 ')'), (`LH_N))))))))))) p_prim_1) _lh_p_term_arg1_1))
      and g_first_1 = (fun _lh_g_first_arg1_1 -> 
        (match _lh_g_first_arg1_1 with
          | `LH_C(_lh_g_first_LH_C_0_1, _lh_g_first_LH_C_1_1) -> 
            (match _lh_g_first_LH_C_0_1 with
              | `Func(_lh_g_first_Func_0_1, _lh_g_first_Func_1_1) -> 
                (`Afunc(_lh_g_first_Func_0_1))
              | `Var(_lh_g_first_Var_0_1) -> 
                (`Avar)
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and seQ_1 = (fun _lh_seQ_arg1_1 _lh_seQ_arg2_1 -> 
        ((build_1 (mk_list_1 _lh_seQ_arg1_1)) (((foldr__d1 (seq2_1 mk_cons_1)) empty_1) _lh_seQ_arg2_1)))
      and thread_1 = (fun _lh_thread_arg1_1 _lh_thread_arg2_1 _lh_thread_arg3_1 -> 
        (match _lh_thread_arg1_1 with
          | `LH_C(_lh_thread_LH_C_0_1, _lh_thread_LH_C_1_1) -> 
            (match _lh_thread_LH_C_0_1 with
              | `Afunc(_lh_thread_Afunc_0_1) -> 
                (match _lh_thread_arg3_1 with
                  | `Switch(_lh_thread_Switch_0_2, _lh_thread_Switch_1_2) -> 
                    (`Switch(((((update_alist__d0 _lh_thread_Afunc_0_1) ((thread_1 _lh_thread_LH_C_1_1) _lh_thread_arg2_1)) empty_net_1) _lh_thread_Switch_0_2), _lh_thread_Switch_1_2))
                  | `Return(_lh_thread_Return_0_3) -> 
                    (((thread_1 (`LH_C((`Afunc(_lh_thread_Afunc_0_1)), _lh_thread_LH_C_1_1))) _lh_thread_arg2_1) (`Switch((`LH_N), (`Return(_lh_thread_Return_0_3)))))
                  | _ -> 
                    (failwith "error"))
              | `Avar -> 
                (match _lh_thread_arg3_1 with
                  | `Switch(_lh_thread_Switch_0_3, _lh_thread_Switch_1_3) -> 
                    (`Switch(_lh_thread_Switch_0_3, (((thread_1 _lh_thread_LH_C_1_1) _lh_thread_arg2_1) _lh_thread_Switch_1_3)))
                  | `Return(_lh_thread_Return_0_4) -> 
                    (let rec d'_1 = (((thread_1 _lh_thread_LH_C_1_1) _lh_thread_arg2_1) (`Return(_lh_thread_Return_0_4))) in
                      (if (is_switch_1 d'_1) then
                        (`Switch((`LH_N), d'_1))
                      else
                        d'_1))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | `LH_N -> 
            (match _lh_thread_arg3_1 with
              | `Return(_lh_thread_Return_0_5) -> 
                (`Return((`LH_C(_lh_thread_arg2_1, _lh_thread_Return_0_5))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and rpo_1 = (fun _lh_rpo_arg1_1 _lh_rpo_arg2_1 -> 
        (let rec rpo'_1 = (fun param_1 -> 
          (let rec _lh_matchIdent_2_6 = param_1 in
            (match _lh_matchIdent_2_6 with
              | `LH_P2(_lh_rpo_LH_P2_0_1, _lh_rpo_LH_P2_1_1) -> 
                (match _lh_rpo_LH_P2_0_1 with
                  | `Var(_lh_rpo_Var_0_3) -> 
                    (match _lh_rpo_LH_P2_1_1 with
                      | `Var(_lh_rpo_Var_0_4) -> 
                        (if (_lh_rpo_Var_0_3 = _lh_rpo_Var_0_4) then
                          (`Equal)
                        else
                          (`Unrelated))
                      | `Func(_lh_rpo_Func_0_3, _lh_rpo_Func_1_3) -> 
                        (if ((occurs__d0 _lh_rpo_Var_0_3) (`Func(_lh_rpo_Func_0_3, _lh_rpo_Func_1_3))) then
                          (`Less)
                        else
                          (`Unrelated))
                      | _ -> 
                        ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                  | `Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4) -> 
                    (match _lh_rpo_LH_P2_1_1 with
                      | `Var(_lh_rpo_Var_0_5) -> 
                        (if ((occurs__d1 _lh_rpo_Var_0_5) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) then
                          (`Greater)
                        else
                          (`Unrelated))
                      | `Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5) -> 
                        (let rec _lh_matchIdent_2_7 = (_lh_rpo_arg1_1 (`LH_P2(_lh_rpo_Func_0_4, _lh_rpo_Func_0_5))) in
                          (match _lh_matchIdent_2_7 with
                            | `Equal -> 
                              ((_lh_rpo_arg2_1 rpo'_1) (`LH_P2((`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4)), (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5)))))
                            | `Greater -> 
                              (if ((((quant__d6 all__d4) (ltRewrite__d2 rpo'_1)) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) _lh_rpo_Func_1_5) then
                                (`Greater)
                              else
                                (if ((((quant__d7 any__d3) (geRewrite__d2 rpo'_1)) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) _lh_rpo_Func_1_5) then
                                  (`Less)
                                else
                                  (`Unrelated)))
                            | `Less -> 
                              (if ((((quant__d8 all__d5) (ltRewrite__d3 rpo'_1)) (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5))) _lh_rpo_Func_1_4) then
                                (`Less)
                              else
                                (if ((((quant__d9 any__d4) (geRewrite__d3 rpo'_1)) (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5))) _lh_rpo_Func_1_4) then
                                  (`Greater)
                                else
                                  (`Unrelated)))
                            | `Unrelated -> 
                              (`Unrelated)
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                  | _ -> 
                    ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
              | _ -> 
                ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))) in
          rpo'_1))
      and rem_eq_1 = (fun _lh_rem_eq_arg1_1 _lh_rem_eq_arg2_1 -> 
        (match _lh_rem_eq_arg2_1 with
          | `LH_P2(_lh_rem_eq_LH_P2_0_2, _lh_rem_eq_LH_P2_1_2) -> 
            (match _lh_rem_eq_LH_P2_0_2 with
              | `LH_N -> 
                (`LH_P2((`LH_N), _lh_rem_eq_LH_P2_1_2))
              | `LH_C(_lh_rem_eq_LH_C_0_1, _lh_rem_eq_LH_C_1_1) -> 
                (let rec add_x_1 = (fun xsys_1 -> 
                  (let rec _lh_matchIdent_2_2 = xsys_1 in
                    (match _lh_matchIdent_2_2 with
                      | `LH_P2(_lh_rem_eq_LH_P2_0_3, _lh_rem_eq_LH_P2_1_3) -> 
                        (`LH_P2((`LH_C(_lh_rem_eq_LH_C_0_1, _lh_rem_eq_LH_P2_0_3)), _lh_rem_eq_LH_P2_1_3))
                      | _ -> 
                        (failwith "error")))) in
                  ((getOrElse__d1 ((lift__d4 (fun _lh_funcomp_x_1_6 -> 
                    ((rem_eq_1 _lh_rem_eq_arg1_1) ((pair__d0 _lh_rem_eq_LH_C_1_1) _lh_funcomp_x_1_6)))) (((delete_1 _lh_rem_eq_arg1_1) _lh_rem_eq_LH_C_0_1) _lh_rem_eq_LH_P2_1_2))) (add_x_1 ((rem_eq_1 _lh_rem_eq_arg1_1) (`LH_P2(_lh_rem_eq_LH_C_1_1, _lh_rem_eq_LH_P2_1_2))))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and g_rest_1 = (fun _lh_g_rest_arg1_1 -> 
        (match _lh_g_rest_arg1_1 with
          | `LH_C(_lh_g_rest_LH_C_0_1, _lh_g_rest_LH_C_1_1) -> 
            (match _lh_g_rest_LH_C_0_1 with
              | `Func(_lh_g_rest_Func_0_1, _lh_g_rest_Func_1_1) -> 
                ((mappend__d7 _lh_g_rest_Func_1_1) _lh_g_rest_LH_C_1_1)
              | `Var(_lh_g_rest_Var_0_1) -> 
                _lh_g_rest_LH_C_1_1
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and p_name_1 = (fun _lh_p_name_arg1_1 -> 
        (((build_1 q_name_1) p_ident_1) _lh_p_name_arg1_1))
      and p_expr_1 = (fun _lh_p_expr_arg1_1 -> 
        (((orElseMap__d2 ((seQ_1 q_op_1) (`LH_C(p_term_1, (`LH_C(p_op_1, (`LH_C(p_term_1, (`LH_N))))))))) p_term_1) _lh_p_expr_arg1_1))
      and preprocess_1 = (fun _lh_preprocess_arg1_1 _lh_preprocess_arg2_1 -> 
        (match _lh_preprocess_arg2_1 with
          | `LH_P2(_lh_preprocess_LH_P2_0_1, _lh_preprocess_LH_P2_1_1) -> 
            (`LH_P2(((simplify__d0 (super_reduce_1 _lh_preprocess_arg1_1)) _lh_preprocess_LH_P2_0_1), ((simplify__d1 (super_reduce_1 _lh_preprocess_arg1_1)) _lh_preprocess_LH_P2_1_1)))
          | _ -> 
            (failwith "error")))
      and q_name_1 = (fun _lh_q_name_arg1_1 -> 
        (match _lh_q_name_arg1_1 with
          | `MkString(_lh_q_name_MkString_0_1) -> 
            (if (((int_of_char ((atIndex__d0 0) _lh_q_name_MkString_0_1)) >= (int_of_char 'a')) && ((int_of_char ((atIndex__d1 0) _lh_q_name_MkString_0_1)) <= (int_of_char 'z'))) then
              (`Expr((`Var(_lh_q_name_MkString_0_1))))
            else
              (`Expr((`Func(_lh_q_name_MkString_0_1, (`LH_N))))))
          | _ -> 
            (failwith "error")))
      and list_of_1 = (fun _lh_list_of_arg1_1 _lh_list_of_arg2_1 -> 
        (let rec p'_1 = (lazy (((seq2_1 mk_cons_1) _lh_list_of_arg1_1) ((orElseMap__d0 (((seq2Lzq_1 (fun x_3_9 y_1_0 -> 
          y_1_0)) (look_for_1 _lh_list_of_arg2_1)) p'_1)) empty_1))) in
          (Lazy.force p'_1)))
      and resolve_1 = (fun _lh_resolve_arg1_1 _lh_resolve_arg2_1 -> 
        (let rec lhs'_1 = ((simplify__d2 _lh_resolve_arg1_1) (fst__d2 _lh_resolve_arg2_1)) in
          (let rec rhs'_1 = ((simplify__d3 _lh_resolve_arg1_1) (snd__d2 _lh_resolve_arg2_1)) in
            (if ((eqExpr__d0 lhs'_1) rhs'_1) then
              croak__d0
            else
              (succeed__d5 (`LH_P2(lhs'_1, rhs'_1)))))))
      and rank_1 = (fun _lh_rank_arg1_1 -> 
        (match _lh_rank_arg1_1 with
          | `LH_C(_lh_rank_LH_C_0_1, _lh_rank_LH_C_1_1) -> 
            (match _lh_rank_LH_C_0_1 with
              | 'E' -> 
                (match _lh_rank_LH_C_1_1 with
                  | `LH_N -> 
                    1
                  | _ -> 
                    (failwith "error"))
              | '*' -> 
                (match _lh_rank_LH_C_1_1 with
                  | `LH_N -> 
                    2
                  | _ -> 
                    (failwith "error"))
              | 'I' -> 
                (match _lh_rank_LH_C_1_1 with
                  | `LH_N -> 
                    3
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and p_eqn_1 = (fun _lh_p_eqn_arg1_1 -> 
        (((seQ_1 q_eqn_1) (`LH_C(p_expr_1, (`LH_C((look_for_1 '='), (`LH_C(p_expr_1, (`LH_N)))))))) _lh_p_eqn_arg1_1))
      and strict_super_1 = (fun _lh_strict_super_arg1_1 _lh_strict_super_arg2_1 -> 
        (match _lh_strict_super_arg2_1 with
          | `Func(_lh_strict_super_Func_0_1, _lh_strict_super_Func_1_1) -> 
            (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
              (match _lh_listcomp_fun_para_1_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
                  (match _lh_listcomp_fun_ls_h_1_3 with
                    | `LH_P2(_lh_strict_super_LH_P2_0_2, _lh_strict_super_LH_P2_1_2) -> 
                      (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
                        (match _lh_listcomp_fun_para_1_4 with
                          | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
                            (match _lh_listcomp_fun_ls_h_1_4 with
                              | `LH_P2(_lh_strict_super_LH_P2_0_3, _lh_strict_super_LH_P2_1_3) -> 
                                (`LH_C((`LH_P2((`LH_C(_lh_strict_super_LH_P2_0_2, _lh_strict_super_LH_P2_0_3)), _lh_strict_super_LH_P2_1_3)), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4)))
                              | _ -> 
                                (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))
                          | `LH_N -> 
                            (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))) in
                        (_lh_listcomp_fun_1_4 ((superpose_1 _lh_strict_super_arg1_1) _lh_strict_super_LH_P2_1_2)))
                    | _ -> 
                      (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1_3 ((zip_lz_nl__d3 (enumFrom__d0 0)) _lh_strict_super_Func_1_1)))
          | _ -> 
            (failwith "error")))
      and p_op_1 = (fun _lh_p_op_arg1_1 -> 
        ((sp_1 (string_of_1 opsym_1)) _lh_p_op_arg1_1))
      and parse_eqn_1 = (fun _lh_parse_eqn_arg1_1 -> 
        (let rec _lh_matchIdent_2_3 = (fst__d3 (the__d3 (p_eqn_1 _lh_parse_eqn_arg1_1))) in
          (match _lh_matchIdent_2_3 with
            | `List(_lh_parse_eqn_List_0_1) -> 
              (match _lh_parse_eqn_List_0_1 with
                | `LH_C(_lh_parse_eqn_LH_C_0_2, _lh_parse_eqn_LH_C_1_2) -> 
                  (match _lh_parse_eqn_LH_C_0_2 with
                    | `Expr(_lh_parse_eqn_Expr_0_2) -> 
                      (match _lh_parse_eqn_LH_C_1_2 with
                        | `LH_C(_lh_parse_eqn_LH_C_0_3, _lh_parse_eqn_LH_C_1_3) -> 
                          (match _lh_parse_eqn_LH_C_0_3 with
                            | `Expr(_lh_parse_eqn_Expr_0_3) -> 
                              (match _lh_parse_eqn_LH_C_1_3 with
                                | `LH_N -> 
                                  (`LH_P2(_lh_parse_eqn_Expr_0_2, _lh_parse_eqn_Expr_0_3))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
      and find'_1 = (fun _lh_find'_arg1_1 _lh_find'_arg2_1 -> 
        (match _lh_find'_arg2_1 with
          | `Return(_lh_find'_Return_0_1) -> 
            _lh_find'_Return_0_1
          | `Switch(_lh_find'_Switch_0_1, _lh_find'_Switch_1_1) -> 
            ((mappend__d2 (((find_assoc_1 (g_first_1 _lh_find'_arg1_1)) (g_rest_1 _lh_find'_arg1_1)) _lh_find'_Switch_0_1)) ((find'_1 (g_skip_1 _lh_find'_arg1_1)) _lh_find'_Switch_1_1))
          | _ -> 
            (failwith "error")))
      and add_eqn_1 = (fun _lh_add_eqn_arg1_1 _lh_add_eqn_arg2_1 -> 
        (((thread_1 (preorder_1 (g_init_1 (lhs__d4 _lh_add_eqn_arg2_1)))) _lh_add_eqn_arg2_1) _lh_add_eqn_arg1_1))
      and parse_1 = (fun _lh_parse_arg1_1 -> 
        ((fun _lh_funcomp_x_2_3 -> 
          ((fun _lh_funcomp_x_2_4 -> 
            ((fun _lh_funcomp_x_2_5 -> 
              (unExpr_1 (fst__d1 _lh_funcomp_x_2_5))) (the__d2 _lh_funcomp_x_2_4))) (p_expr_1 _lh_funcomp_x_2_3))) _lh_parse_arg1_1))
      and preorder_1 = (fun _lh_preorder_arg1_1 -> 
        (if ((eqListExpr__d2 _lh_preorder_arg1_1) (`LH_N)) then
          (`LH_N)
        else
          ((mappend__d8 (`LH_C((g_first_1 _lh_preorder_arg1_1), (`LH_N)))) (preorder_1 (g_rest_1 _lh_preorder_arg1_1)))))
      and lex_combine_1 = (fun _lh_lex_combine_arg1_1 _lh_lex_combine_arg2_1 -> 
        (match _lh_lex_combine_arg1_1 with
          | `Equal -> 
            _lh_lex_combine_arg2_1
          | `Greater -> 
            (`Greater)
          | `Less -> 
            (`Less)
          | `Unrelated -> 
            (`Unrelated)
          | _ -> 
            (failwith "error")))
      and g_skip_1 = (fun _lh_g_skip_arg1_1 -> 
        (tail__d0 _lh_g_skip_arg1_1))
      and num_order_1 = (fun _lh_num_order_arg1_1 -> 
        (match _lh_num_order_arg1_1 with
          | `LH_P2(_lh_num_order_LH_P2_0_1, _lh_num_order_LH_P2_1_1) -> 
            (if (_lh_num_order_LH_P2_0_1 > _lh_num_order_LH_P2_1_1) then
              (`Greater)
            else
              (if (_lh_num_order_LH_P2_0_1 < _lh_num_order_LH_P2_1_1) then
                (`Less)
              else
                (`Equal)))
          | _ -> 
            (failwith "error")))
      and dnet_reduce_1 = (fun _lh_dnet_reduce_arg1_1 _lh_dnet_reduce_arg2_1 -> 
        ((try_all__d0 ((map__d1_d0 rewrite__d1) ((find_1 _lh_dnet_reduce_arg2_1) _lh_dnet_reduce_arg1_1))) _lh_dnet_reduce_arg2_1))
      and sp_1 = (fun _lh_sp_arg1_1 _lh_funcomp_x_2_0 -> 
        (_lh_sp_arg1_1 ((dropWhile__d0 (fun x_4_0 -> 
          (x_4_0 = ' '))) _lh_funcomp_x_2_0)))
      and item_cost_1 = (fun _lh_item_cost_arg1_1 -> 
        (match _lh_item_cost_arg1_1 with
          | `Item(_lh_item_cost_Item_0_1, _lh_item_cost_Item_1_1) -> 
            _lh_item_cost_Item_0_1
          | _ -> 
            (failwith "error")))
      and unExpr_1 = (fun _lh_unExpr_arg1_1 -> 
        (match _lh_unExpr_arg1_1 with
          | `Expr(_lh_unExpr_Expr_0_1) -> 
            _lh_unExpr_Expr_0_1
          | _ -> 
            (failwith "error")))
      in (let rec group_completion_1 = ((knuth_bendix_1 ((rpo_1 (rank_order_1 rank_1)) lex_ext_1)) ((map__d1_d5 parse_eqn_1) (`LH_C((`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('x', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C('(', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('E', (`LH_N))))))))))))))))))))))))), (`LH_N))))))))) in
        ((eqExpr__d1 ((simplify__d4 (super_reduce_1 group_completion_1)) (parse_1 _lh_result_LH_P2_0_1))) (parse_1 _lh_result_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and rewrite__d0 _lh_rewrite_arg1_2 =
  (match _lh_rewrite_arg1_2 with
    | `Eqn(_lh_rewrite_Eqn_0_2, _lh_rewrite_Eqn_1_2) -> 
      (match _lh_rewrite_Eqn_1_2 with
        | `LH_P2(_lh_rewrite_LH_P2_0_2, _lh_rewrite_LH_P2_1_2) -> 
          (fun _lh_funcomp_x_1_5 -> 
            ((lift__d1_d1 (sub__d0 _lh_rewrite_LH_P2_1_2)) ((match__d0 _lh_rewrite_LH_P2_0_2) _lh_funcomp_x_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewrite__d1 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Eqn(_lh_rewrite_Eqn_0_1, _lh_rewrite_Eqn_1_1) -> 
      (match _lh_rewrite_Eqn_1_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (fun _lh_funcomp_x_1_4 -> 
            ((lift__d1_d2 (sub__d1 _lh_rewrite_LH_P2_1_1)) ((match__d1 _lh_rewrite_LH_P2_0_1) _lh_funcomp_x_1_4)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and sift__d0 _lh_sift_arg1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (concat__d1 ((map__d2_d4 listify__d0) _lh_funcomp_x_1_3))) _lh_sift_arg1_2)
and sift__d1 _lh_sift_arg1_1 =
  ((fun _lh_funcomp_x_1_2 -> 
    (concat__d2 ((map__d2_d5 listify__d1) _lh_funcomp_x_1_2))) _lh_sift_arg1_1)
and simplify__d0 _lh_simplify_arg1_2 =
  (let rec f_3_5 = (fun t_5_8 -> 
    ((getOrElse__d6 ((lift__d1_d5 f_3_5) (_lh_simplify_arg1_2 t_5_8))) t_5_8)) in
    f_3_5)
and simplify__d1 _lh_simplify_arg1_4 =
  (let rec f_7_1 = (fun t_1_1_5 -> 
    ((getOrElse__d7 ((lift__d1_d6 f_7_1) (_lh_simplify_arg1_4 t_1_1_5))) t_1_1_5)) in
    f_7_1)
and simplify__d2 _lh_simplify_arg1_5 =
  (let rec f_7_9 = (fun t_1_2_4 -> 
    ((getOrElse__d8 ((lift__d1_d7 f_7_9) (_lh_simplify_arg1_5 t_1_2_4))) t_1_2_4)) in
    f_7_9)
and simplify__d3 _lh_simplify_arg1_1 =
  (let rec f_2_8 = (fun t_4_7 -> 
    ((getOrElse__d9 ((lift__d1_d8 f_2_8) (_lh_simplify_arg1_1 t_4_7))) t_4_7)) in
    f_2_8)
and simplify__d4 _lh_simplify_arg1_3 =
  (let rec f_3_9 = (fun t_6_3 -> 
    ((getOrElse__d1_d0 ((lift__d1_d9 f_3_9) (_lh_simplify_arg1_3 t_6_3))) t_6_3)) in
    f_3_9)
and stand_eqn__d0 _lh_stand_eqn_arg1_1 _lh_stand_eqn_arg2_1 =
  (match _lh_stand_eqn_arg2_1 with
    | `Eqn(_lh_stand_eqn_Eqn_0_1, _lh_stand_eqn_Eqn_1_1) -> 
      (match _lh_stand_eqn_Eqn_1_1 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_1, _lh_stand_eqn_LH_P2_1_1) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_1, (`LH_P2(((stand__d0 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_0_1), ((stand__d1 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn__d1 _lh_stand_eqn_arg1_2 _lh_stand_eqn_arg2_2 =
  (match _lh_stand_eqn_arg2_2 with
    | `Eqn(_lh_stand_eqn_Eqn_0_2, _lh_stand_eqn_Eqn_1_2) -> 
      (match _lh_stand_eqn_Eqn_1_2 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_2, _lh_stand_eqn_LH_P2_1_2) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_2, (`LH_P2(((stand__d2 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_0_2), ((stand__d3 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn__d2 _lh_stand_eqn_arg1_3 _lh_stand_eqn_arg2_3 =
  (match _lh_stand_eqn_arg2_3 with
    | `Eqn(_lh_stand_eqn_Eqn_0_3, _lh_stand_eqn_Eqn_1_3) -> 
      (match _lh_stand_eqn_Eqn_1_3 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_3, _lh_stand_eqn_LH_P2_1_3) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_3, (`LH_P2(((stand__d4 _lh_stand_eqn_arg1_3) _lh_stand_eqn_LH_P2_0_3), ((stand__d5 _lh_stand_eqn_arg1_3) _lh_stand_eqn_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand__d0 _lh_stand_arg1_5 =
  ((expr_fold__d5 (fun x_4_8 y_1_2 -> 
    (`Func(x_4_8, y_1_2)))) (fun v_5 -> 
    (`Var(((mappend__d1_d2 v_5) _lh_stand_arg1_5)))))
and stand__d1 _lh_stand_arg1_6 =
  ((expr_fold__d6 (fun x_5_8 y_1_7 -> 
    (`Func(x_5_8, y_1_7)))) (fun v_6 -> 
    (`Var(((mappend__d1_d3 v_6) _lh_stand_arg1_6)))))
and stand__d2 _lh_stand_arg1_2 =
  ((expr_fold__d7 (fun x_2_9 y_8 -> 
    (`Func(x_2_9, y_8)))) (fun v_2 -> 
    (`Var(((mappend__d1_d4 v_2) _lh_stand_arg1_2)))))
and stand__d3 _lh_stand_arg1_3 =
  ((expr_fold__d8 (fun x_3_0 y_9 -> 
    (`Func(x_3_0, y_9)))) (fun v_3 -> 
    (`Var(((mappend__d1_d5 v_3) _lh_stand_arg1_3)))))
and stand__d4 _lh_stand_arg1_1 =
  ((expr_fold__d9 (fun x_2_2 y_4 -> 
    (`Func(x_2_2, y_4)))) (fun v_1 -> 
    (`Var(((mappend__d1_d6 v_1) _lh_stand_arg1_1)))))
and stand__d5 _lh_stand_arg1_4 =
  ((expr_fold__d1_d0 (fun x_4_3 y_1_1 -> 
    (`Func(x_4_3, y_1_1)))) (fun v_4 -> 
    (`Var(((mappend__d1_d7 v_4) _lh_stand_arg1_4)))))
and sub__d0 _lh_sub_arg1_7 _lh_sub_arg2_7 =
  (((expr_fold__d3 (fun x_5_5 y_1_5 -> 
    (`Func(x_5_5, y_1_5)))) (apply__d0 _lh_sub_arg2_7)) _lh_sub_arg1_7)
and sub__d1 _lh_sub_arg1_1 _lh_sub_arg2_1 =
  (((expr_fold__d4 (fun x_2_0 y_3 -> 
    (`Func(x_2_0, y_3)))) (apply__d1 _lh_sub_arg2_1)) _lh_sub_arg1_1)
and sub__d2 _lh_sub_arg1_3 _lh_sub_arg2_3 =
  (((expr_fold__d1_d1 (fun x_2_5 y_6 -> 
    (`Func(x_2_5, y_6)))) (apply__d2 _lh_sub_arg2_3)) _lh_sub_arg1_3)
and sub__d3 _lh_sub_arg1_8 _lh_sub_arg2_8 =
  (((expr_fold__d1_d2 (fun x_5_7 y_1_6 -> 
    (`Func(x_5_7, y_1_6)))) (apply__d3 _lh_sub_arg2_8)) _lh_sub_arg1_8)
and sub__d4 _lh_sub_arg1_6 _lh_sub_arg2_6 =
  (((expr_fold__d1_d3 (fun x_5_3 y_1_4 -> 
    (`Func(x_5_3, y_1_4)))) (apply__d4 _lh_sub_arg2_6)) _lh_sub_arg1_6)
and sub__d5 _lh_sub_arg1_2 _lh_sub_arg2_2 =
  (((expr_fold__d1_d5 (fun x_2_3 y_5 -> 
    (`Func(x_2_3, y_5)))) (apply__d5 _lh_sub_arg2_2)) _lh_sub_arg1_2)
and sub__d6 _lh_sub_arg1_5 _lh_sub_arg2_5 =
  (((expr_fold__d1_d6 (fun x_5_0 y_1_3 -> 
    (`Func(x_5_0, y_1_3)))) (apply__d6 _lh_sub_arg2_5)) _lh_sub_arg1_5)
and sub__d7 _lh_sub_arg1_4 _lh_sub_arg2_4 =
  (((expr_fold__d1_d8 (fun x_2_6 y_7 -> 
    (`Func(x_2_6, y_7)))) (apply__d7 _lh_sub_arg2_4)) _lh_sub_arg1_4)
and subterms__d0 _lh_subterms_arg1_1 =
  (match _lh_subterms_arg1_1 with
    | `Var(_lh_subterms_Var_0_1) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1) -> 
      ((mappend__d1 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1)))), (`LH_N)))) (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
        (match _lh_listcomp_fun_para_1_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
            (match _lh_listcomp_fun_ls_h_1_5 with
              | `LH_P2(_lh_subterms_LH_P2_0_2, _lh_subterms_LH_P2_1_2) -> 
                (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_6 -> 
                  (match _lh_listcomp_fun_para_1_6 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_6) -> 
                      (match _lh_listcomp_fun_ls_h_1_6 with
                        | `LH_P2(_lh_subterms_LH_P2_0_3, _lh_subterms_LH_P2_1_3) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_2, _lh_subterms_LH_P2_0_3)), _lh_subterms_LH_P2_1_3)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6)))
                        | _ -> 
                          (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6))
                    | `LH_N -> 
                      (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))) in
                  (_lh_listcomp_fun_1_6 (subterms__d0 _lh_subterms_LH_P2_1_2)))
              | _ -> 
                (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_5 ((zip_lz_nl__d0 (enumFrom__d1 0)) _lh_subterms_Func_1_1))))
    | _ -> 
      (failwith "error"))
and subterms__d1 _lh_subterms_arg1_2 =
  (match _lh_subterms_arg1_2 with
    | `Var(_lh_subterms_Var_0_2) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2) -> 
      ((mappend__d9 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2)))), (`LH_N)))) (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_8 -> 
        (match _lh_listcomp_fun_para_1_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_8) -> 
            (match _lh_listcomp_fun_ls_h_1_8 with
              | `LH_P2(_lh_subterms_LH_P2_0_4, _lh_subterms_LH_P2_1_4) -> 
                (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_9 -> 
                  (match _lh_listcomp_fun_para_1_9 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
                      (match _lh_listcomp_fun_ls_h_1_9 with
                        | `LH_P2(_lh_subterms_LH_P2_0_5, _lh_subterms_LH_P2_1_5) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_4, _lh_subterms_LH_P2_0_5)), _lh_subterms_LH_P2_1_5)), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9)))
                        | _ -> 
                          (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9))
                    | `LH_N -> 
                      (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))) in
                  (_lh_listcomp_fun_1_9 (subterms__d1 _lh_subterms_LH_P2_1_4)))
              | _ -> 
                (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_8 ((zip_lz_nl__d1 (enumFrom__d2 0)) _lh_subterms_Func_1_2))))
    | _ -> 
      (failwith "error"))
and subterms__d2 _lh_subterms_arg1_3 =
  (match _lh_subterms_arg1_3 with
    | `Var(_lh_subterms_Var_0_3) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_3, _lh_subterms_Func_1_3) -> 
      ((mappend__d1_d8 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_3, _lh_subterms_Func_1_3)))), (`LH_N)))) (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_2_2 -> 
        (match _lh_listcomp_fun_para_2_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_2) -> 
            (match _lh_listcomp_fun_ls_h_2_2 with
              | `LH_P2(_lh_subterms_LH_P2_0_6, _lh_subterms_LH_P2_1_6) -> 
                (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_2_3 -> 
                  (match _lh_listcomp_fun_para_2_3 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_3) -> 
                      (match _lh_listcomp_fun_ls_h_2_3 with
                        | `LH_P2(_lh_subterms_LH_P2_0_7, _lh_subterms_LH_P2_1_7) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_6, _lh_subterms_LH_P2_0_7)), _lh_subterms_LH_P2_1_7)), (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_3)))
                        | _ -> 
                          (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_3))
                    | `LH_N -> 
                      (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2))) in
                  (_lh_listcomp_fun_2_3 (subterms__d2 _lh_subterms_LH_P2_1_6)))
              | _ -> 
                (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_2 ((zip_lz_nl__d2 (enumFrom__d3 0)) _lh_subterms_Func_1_3))))
    | _ -> 
      (failwith "error"))
and testRewrite_nofib__d0 _lh_testRewrite_nofib_arg1_1 =
  ((all__d0 result__d0) ((copy__d0 _lh_testRewrite_nofib_arg1_1) (`LH_P2((`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_N))))))))))))))))), (`LH_C('I', (`LH_C('(', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))
and try_all__d0 _lh_try_all_arg1_1 =
  (((foldr__d1_d1 orElseMap__d4) (fun dum_7 -> 
    croak__d1_d0)) _lh_try_all_arg1_1)
and unify'__d0 _lh_unify'_arg1_1 _lh_unify'_arg2_1 =
  (match _lh_unify'_arg2_1 with
    | `LH_P2(_lh_unify'_LH_P2_0_1, _lh_unify'_LH_P2_1_1) -> 
      (match _lh_unify'_LH_P2_0_1 with
        | `Var(_lh_unify'_Var_0_2) -> 
          (((univar__d0 _lh_unify'_arg1_1) _lh_unify'_Var_0_2) _lh_unify'_LH_P2_1_1)
        | `Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2) -> 
          (match _lh_unify'_LH_P2_1_1 with
            | `Var(_lh_unify'_Var_0_3) -> 
              (((univar__d1 _lh_unify'_arg1_1) _lh_unify'_Var_0_3) (`Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2)))
            | `Func(_lh_unify'_Func_0_3, _lh_unify'_Func_1_3) -> 
              (if (_lh_unify'_Func_0_2 = _lh_unify'_Func_0_3) then
                (((prop_fold__d2 unify'__d0) _lh_unify'_arg1_1) ((zip__d2 _lh_unify'_Func_1_2) _lh_unify'_Func_1_3))
              else
                croak__d1_d1)
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unify__d0 _lh_unify_arg1_1 _lh_unify_arg2_1 =
  ((unify'__d0 (`LH_N)) (`LH_P2(_lh_unify_arg1_1, _lh_unify_arg2_1)))
and univar__d0 _lh_univar_arg1_2 _lh_univar_arg2_2 _lh_univar_arg3_2 =
  (let rec t_1_1_3 = ((assoc__d7 _lh_univar_arg1_2) _lh_univar_arg2_2) in
    (if (exists__d4 t_1_1_3) then
      ((unify'__d0 _lh_univar_arg1_2) (`LH_P2((the__d4 t_1_1_3), _lh_univar_arg3_2)))
    else
      (if ((eqExpr__d5 _lh_univar_arg3_2) (`Var(_lh_univar_arg2_2))) then
        (succeed__d8 _lh_univar_arg1_2)
      else
        (let rec u'_2 = ((sub__d5 _lh_univar_arg3_2) _lh_univar_arg1_2) in
          (if (not ((occurs__d2 _lh_univar_arg2_2) u'_2)) then
            (succeed__d9 ((comp_sub__d0 (`LH_C((`LH_P2(_lh_univar_arg2_2, u'_2)), (`LH_N)))) _lh_univar_arg1_2))
          else
            croak__d1_d2)))))
and univar__d1 _lh_univar_arg1_1 _lh_univar_arg2_1 _lh_univar_arg3_1 =
  (let rec t_9_2 = ((assoc__d1_d0 _lh_univar_arg1_1) _lh_univar_arg2_1) in
    (if (exists__d5 t_9_2) then
      ((unify'__d0 _lh_univar_arg1_1) (`LH_P2((the__d5 t_9_2), _lh_univar_arg3_1)))
    else
      (if ((eqExpr__d6 _lh_univar_arg3_1) (`Var(_lh_univar_arg2_1))) then
        (succeed__d1_d0 _lh_univar_arg1_1)
      else
        (let rec u'_1 = ((sub__d7 _lh_univar_arg3_1) _lh_univar_arg1_1) in
          (if (not ((occurs__d3 _lh_univar_arg2_1) u'_1)) then
            (succeed__d1_d1 ((comp_sub__d1 (`LH_C((`LH_P2(_lh_univar_arg2_1, u'_1)), (`LH_N)))) _lh_univar_arg1_1))
          else
            croak__d1_d3)))));;
end;;

