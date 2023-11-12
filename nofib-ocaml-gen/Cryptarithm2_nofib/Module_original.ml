
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec delete__d0 _lh_delete_arg1_1 _lh_delete_arg2_1 =
  (match _lh_delete_arg1_1 with
    | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
      (if (_lh_delete_LH_C_0_1 = _lh_delete_arg2_1) then
        ((delete__d0 _lh_delete_LH_C_1_1) _lh_delete_arg2_1)
      else
        (`LH_C(_lh_delete_LH_C_0_1, ((delete__d0 _lh_delete_LH_C_1_1) _lh_delete_arg2_1))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec delete__d1 _lh_delete_arg1_2 _lh_delete_arg2_2 =
  (match _lh_delete_arg1_2 with
    | `LH_C(_lh_delete_LH_C_0_2, _lh_delete_LH_C_1_2) -> 
      (if (_lh_delete_LH_C_0_2 = _lh_delete_arg2_2) then
        ((delete__d1 _lh_delete_LH_C_1_2) _lh_delete_arg2_2)
      else
        (`LH_C(_lh_delete_LH_C_0_2, ((delete__d1 _lh_delete_LH_C_1_2) _lh_delete_arg2_2))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d0 _lh_digitEnv_arg1_2 =
  (match _lh_digitEnv_arg1_2 with
    | `Digits(_lh_digitEnv_Digits_0_2, _lh_digitEnv_Digits_1_2) -> 
      _lh_digitEnv_Digits_1_2
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d1 _lh_digitEnv_arg1_1 =
  (match _lh_digitEnv_arg1_1 with
    | `Digits(_lh_digitEnv_Digits_0_1, _lh_digitEnv_Digits_1_1) -> 
      _lh_digitEnv_Digits_1_1
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d2 _lh_digitEnv_arg1_4 =
  (match _lh_digitEnv_arg1_4 with
    | `Digits(_lh_digitEnv_Digits_0_4, _lh_digitEnv_Digits_1_4) -> 
      _lh_digitEnv_Digits_1_4
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d3 _lh_digitEnv_arg1_3 =
  (match _lh_digitEnv_arg1_3 with
    | `Digits(_lh_digitEnv_Digits_0_3, _lh_digitEnv_Digits_1_3) -> 
      _lh_digitEnv_Digits_1_3
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d4 _lh_digitEnv_arg1_6 =
  (match _lh_digitEnv_arg1_6 with
    | `Digits(_lh_digitEnv_Digits_0_6, _lh_digitEnv_Digits_1_6) -> 
      _lh_digitEnv_Digits_1_6
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d5 _lh_digitEnv_arg1_5 =
  (match _lh_digitEnv_arg1_5 with
    | `Digits(_lh_digitEnv_Digits_0_5, _lh_digitEnv_Digits_1_5) -> 
      _lh_digitEnv_Digits_1_5
    | _ -> 
      (failwith "error"));;
let rec digits__d0 _lh_digits_arg1_2 =
  (match _lh_digits_arg1_2 with
    | `Digits(_lh_digits_Digits_0_2, _lh_digits_Digits_1_2) -> 
      _lh_digits_Digits_0_2
    | _ -> 
      (failwith "error"));;
let rec digits__d1 _lh_digits_arg1_1 =
  (match _lh_digits_arg1_1 with
    | `Digits(_lh_digits_Digits_0_1, _lh_digits_Digits_1_1) -> 
      _lh_digits_Digits_0_1
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_1_2 b_5 =
  (if (a_1_2 <= b_5) then
    (`LH_C(a_1_2, ((enumFromTo__d0 (a_1_2 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_1_0 b_3 =
  (if (a_1_0 <= b_3) then
    (`LH_C(a_1_0, ((enumFromTo__d1 (a_1_0 + 1)) b_3)))
  else
    (`LH_N));;
let rec filter__d0 f_3_1 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_7_3, t_7_5) -> 
      (if (f_3_1 h_7_3) then
        (`LH_C(h_7_3, ((filter__d0 f_3_1) t_7_5)))
      else
        ((filter__d0 f_3_1) t_7_5))
    | `LH_N -> 
      (`LH_N));;
let rec foldl__d0 f_2_8 i_6 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_5_8, t_6_0) -> 
      (((foldl__d0 f_2_8) ((f_2_8 i_6) h_5_8)) t_6_0)
    | `LH_N -> 
      i_6);;
let rec foldl__d1 f_2_6 i_5 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_4_9, t_5_1) -> 
      (((foldl__d1 f_2_6) ((f_2_6 i_5) h_4_9)) t_5_1)
    | `LH_N -> 
      i_5);;
let rec foldl__d2 f_3_6 i_9 ls_4_9 =
  (match ls_4_9 with
    | `LH_C(h_8_5, t_8_7) -> 
      (((foldl__d2 f_3_6) ((f_3_6 i_9) h_8_5)) t_8_7)
    | `LH_N -> 
      i_9);;
let rec foldr__d0 f_3_2 i_7 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_7_8, t_8_0) -> 
      ((f_3_2 h_7_8) (((foldr__d0 f_3_2) i_7) t_8_0))
    | `LH_N -> 
      i_7);;
let rec foldr__d1 f_3_3 i_8 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_8_0, t_8_2) -> 
      ((f_3_3 h_8_0) (((foldr__d1 f_3_3) i_8) t_8_2))
    | `LH_N -> 
      i_8);;
let rec fromJust__d0 _lh_fromJust_arg1_1 =
  (match _lh_fromJust_arg1_1 with
    | `Just(_lh_fromJust_Just_0_1) -> 
      _lh_fromJust_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec get__d0 =
  (`StateT((fun s_2_1 -> 
    (`LH_C((`LH_P2(s_2_1, s_2_1)), (`LH_N))))));;
let rec get__d1 =
  (`StateT((fun s_1_4 -> 
    (`LH_C((`LH_P2(s_1_4, s_1_4)), (`LH_N))))));;
let rec get__d2 =
  (`StateT((fun s_3_2 -> 
    (`LH_C((`LH_P2(s_3_2, s_3_2)), (`LH_N))))));;
let rec get__d3 =
  (`StateT((fun s_1_3 -> 
    (`LH_C((`LH_P2(s_1_3, s_1_3)), (`LH_N))))));;
let rec guard__d0 _lh_guard_arg1_1 =
  (match _lh_guard_arg1_1 with
    | true -> 
      (`StateT((fun s_3_6 -> 
        (`LH_C((`LH_P2((`Unit), s_3_6)), (`LH_N))))))
    | false -> 
      (`StateT((fun s_3_7 -> 
        (`LH_N))))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d0 t_2_9))
    | `LH_N -> 
      0);;
let rec lookup__d0 _lh_lookup_arg1_1 _lh_lookup_arg2_1 =
  (match _lh_lookup_arg2_1 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_lookup_LH_C_0_1, _lh_lookup_LH_C_1_1) -> 
      (match _lh_lookup_LH_C_0_1 with
        | `LH_P2(_lh_lookup_LH_P2_0_1, _lh_lookup_LH_P2_1_1) -> 
          (if (_lh_lookup_arg1_1 = _lh_lookup_LH_P2_0_1) then
            (`Just(_lh_lookup_LH_P2_1_1))
          else
            ((lookup__d0 _lh_lookup_arg1_1) _lh_lookup_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lookup__d1 _lh_lookup_arg1_3 _lh_lookup_arg2_3 =
  (match _lh_lookup_arg2_3 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_lookup_LH_C_0_3, _lh_lookup_LH_C_1_3) -> 
      (match _lh_lookup_LH_C_0_3 with
        | `LH_P2(_lh_lookup_LH_P2_0_3, _lh_lookup_LH_P2_1_3) -> 
          (if (_lh_lookup_arg1_3 = _lh_lookup_LH_P2_0_3) then
            (`Just(_lh_lookup_LH_P2_1_3))
          else
            ((lookup__d1 _lh_lookup_arg1_3) _lh_lookup_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lookup__d2 _lh_lookup_arg1_2 _lh_lookup_arg2_2 =
  (match _lh_lookup_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_lookup_LH_C_0_2, _lh_lookup_LH_C_1_2) -> 
      (match _lh_lookup_LH_C_0_2 with
        | `LH_P2(_lh_lookup_LH_P2_0_2, _lh_lookup_LH_P2_1_2) -> 
          (if (_lh_lookup_arg1_2 = _lh_lookup_LH_P2_0_2) then
            (`Just(_lh_lookup_LH_P2_1_2))
          else
            ((lookup__d2 _lh_lookup_arg1_2) _lh_lookup_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_3 h_2_0), ((map__d0 f_1_3) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_3_0 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_6_8, t_7_0) -> 
      (`LH_C((f_3_0 h_6_8), ((map__d1 f_3_0) t_7_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_1_9, t_2_1) -> 
      (`LH_C((f_1_2 h_1_9), ((map__d1_d0 f_1_2) t_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d1 f_1_6 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C((f_1_6 h_3_0), ((map__d1_d1 f_1_6) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d2 f_2_5 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C((f_2_5 h_4_7), ((map__d1_d2 f_2_5) t_4_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d3 f_1_8 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C((f_1_8 h_3_3), ((map__d1_d3 f_1_8) t_3_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d4 f_1_5 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_5 h_2_4), ((map__d1_d4 f_1_5) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d5 f_1_7 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C((f_1_7 h_3_2), ((map__d1_d5 f_1_7) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d6 f_2_2 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C((f_2_2 h_3_7), ((map__d1_d6 f_2_2) t_3_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d7 f_3_4 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_8_1, t_8_3) -> 
      (`LH_C((f_3_4 h_8_1), ((map__d1_d7 f_3_4) t_8_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d8 f_2_1 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C((f_2_1 h_3_6), ((map__d1_d8 f_2_1) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d9 f_1_4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_4 h_2_1), ((map__d1_d9 f_1_4) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_4, t_3_6) -> 
      (`LH_C((f_1_9 h_3_4), ((map__d2 f_1_9) t_3_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_2_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C((f_2_3 h_4_4), ((map__d3 f_2_3) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_2_4 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C((f_2_4 h_4_6), ((map__d4 f_2_4) t_4_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_3_5 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_8_4, t_8_6) -> 
      (`LH_C((f_3_5 h_8_4), ((map__d5 f_3_5) t_8_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_2_9 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_6_2, t_6_4) -> 
      (`LH_C((f_2_9 h_6_2), ((map__d6 f_2_9) t_6_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d7 f_3_7 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_8_8, t_9_0) -> 
      (`LH_C((f_3_7 h_8_8), ((map__d7 f_3_7) t_9_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d8 f_2_7 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C((f_2_7 h_5_3), ((map__d8 f_2_7) t_5_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d9 f_2_0 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C((f_2_0 h_3_5), ((map__d9 f_2_0) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_6 ys_1_2 =
  (match xs_1_6 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d0 t_4_3) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d1 xs_3_4 ys_2_9 =
  (match xs_3_4 with
    | `LH_C(h_8_2, t_8_4) -> 
      (`LH_C(h_8_2, ((mappend__d1 t_8_4) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d1_d0 xs_3_7 ys_3_2 =
  (match xs_3_7 with
    | `LH_C(h_8_9, t_9_1) -> 
      (`LH_C(h_8_9, ((mappend__d1_d0 t_9_1) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d1_d1 xs_2_5 ys_2_1 =
  (match xs_2_5 with
    | `LH_C(h_6_0, t_6_2) -> 
      (`LH_C(h_6_0, ((mappend__d1_d1 t_6_2) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d1_d2 xs_3_5 ys_3_0 =
  (match xs_3_5 with
    | `LH_C(h_8_3, t_8_5) -> 
      (`LH_C(h_8_3, ((mappend__d1_d2 t_8_5) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d1_d3 xs_2_6 ys_2_2 =
  (match xs_2_6 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend__d1_d3 t_6_5) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d1_d4 xs_2_1 ys_1_7 =
  (match xs_2_1 with
    | `LH_C(h_5_4, t_5_6) -> 
      (`LH_C(h_5_4, ((mappend__d1_d4 t_5_6) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d1_d5 xs_2_7 ys_2_3 =
  (match xs_2_7 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C(h_6_6, ((mappend__d1_d5 t_6_8) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d1_d6 xs_1_5 ys_1_1 =
  (match xs_1_5 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d1_d6 t_4_1) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d7 xs_1_3 ys_1_0 =
  (match xs_1_3 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d1_d7 t_3_1) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d8 xs_1_2 ys_9 =
  (match xs_1_2 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d1_d8 t_3_0) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1_d9 xs_2_2 ys_1_8 =
  (match xs_2_2 with
    | `LH_C(h_5_5, t_5_7) -> 
      (`LH_C(h_5_5, ((mappend__d1_d9 t_5_7) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d2 xs_3_2 ys_2_7 =
  (match xs_3_2 with
    | `LH_C(h_7_5, t_7_7) -> 
      (`LH_C(h_7_5, ((mappend__d2 t_7_7) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d2_d0 xs_3_3 ys_2_8 =
  (match xs_3_3 with
    | `LH_C(h_7_7, t_7_9) -> 
      (`LH_C(h_7_7, ((mappend__d2_d0 t_7_9) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d2_d1 xs_1_8 ys_1_4 =
  (match xs_1_8 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d2_d1 t_5_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d2_d2 xs_1_9 ys_1_5 =
  (match xs_1_9 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d2_d2 t_5_3) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d2_d3 xs_3_0 ys_2_5 =
  (match xs_3_0 with
    | `LH_C(h_7_1, t_7_3) -> 
      (`LH_C(h_7_1, ((mappend__d2_d3 t_7_3) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d3 xs_2_8 ys_2_4 =
  (match xs_2_8 with
    | `LH_C(h_6_9, t_7_1) -> 
      (`LH_C(h_6_9, ((mappend__d3 t_7_1) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d4 xs_2_0 ys_1_6 =
  (match xs_2_0 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d4 t_5_4) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d5 xs_1_7 ys_1_3 =
  (match xs_1_7 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d5 t_4_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d6 xs_3_1 ys_2_6 =
  (match xs_3_1 with
    | `LH_C(h_7_2, t_7_4) -> 
      (`LH_C(h_7_2, ((mappend__d6 t_7_4) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d7 xs_2_4 ys_2_0 =
  (match xs_2_4 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C(h_5_9, ((mappend__d7 t_6_1) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d8 xs_3_6 ys_3_1 =
  (match xs_3_6 with
    | `LH_C(h_8_7, t_8_9) -> 
      (`LH_C(h_8_7, ((mappend__d8 t_8_9) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d9 xs_2_3 ys_1_9 =
  (match xs_2_3 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend__d9 t_5_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec put__d0 _lh_put_arg1_2 =
  (`StateT((fun s_2_8 -> 
    (`LH_C((`LH_P2((`Unit), _lh_put_arg1_2)), (`LH_N))))));;
let rec put__d1 _lh_put_arg1_1 =
  (`StateT((fun s_1_6 -> 
    (`LH_C((`LH_P2((`Unit), _lh_put_arg1_1)), (`LH_N))))));;
let rec rest__d0 _lh_rest_arg1_1 =
  (match _lh_rest_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_rest_LH_C_0_1, _lh_rest_LH_C_1_1) -> 
      _lh_rest_LH_C_1_1
    | _ -> 
      (failwith "error"));;
let rec return__d0 _lh_return_arg1_9 =
  (`StateT((fun s_3_9 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_9, s_3_9)), (`LH_N))))));;
let rec return__d1 _lh_return_arg1_1 =
  (`StateT((fun s_7 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_1, s_7)), (`LH_N))))));;
let rec return__d2 _lh_return_arg1_8 =
  (`StateT((fun s_3_4 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_8, s_3_4)), (`LH_N))))));;
let rec return__d3 _lh_return_arg1_4 =
  (`StateT((fun s_1_7 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_4, s_1_7)), (`LH_N))))));;
let rec return__d4 _lh_return_arg1_5 =
  (`StateT((fun s_2_2 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_5, s_2_2)), (`LH_N))))));;
let rec return__d5 _lh_return_arg1_6 =
  (`StateT((fun s_2_3 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_6, s_2_3)), (`LH_N))))));;
let rec return__d6 _lh_return_arg1_7 =
  (`StateT((fun s_2_6 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_7, s_2_6)), (`LH_N))))));;
let rec return__d7 _lh_return_arg1_2 =
  (`StateT((fun s_8 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_2, s_8)), (`LH_N))))));;
let rec return__d8 _lh_return_arg1_3 =
  (`StateT((fun s_1_0 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_3, s_1_0)), (`LH_N))))));;
let rec reverse_helper__d0 ls_3_7 a_9 =
  (match ls_3_7 with
    | `LH_C(h_5_0, t_5_2) -> 
      ((reverse_helper__d0 t_5_2) (`LH_C(h_5_0, a_9)))
    | `LH_N -> 
      a_9);;
let rec reverse_helper__d1 ls_3_1 a_8 =
  (match ls_3_1 with
    | `LH_C(h_4_3, t_4_5) -> 
      ((reverse_helper__d1 t_4_5) (`LH_C(h_4_3, a_8)))
    | `LH_N -> 
      a_8);;
let rec runStateT__d0 _lh_runStateT_arg1_1_9 =
  (match _lh_runStateT_arg1_1_9 with
    | `StateT(_lh_runStateT_StateT_0_1_9) -> 
      _lh_runStateT_StateT_0_1_9
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1 _lh_runStateT_arg1_2_7 =
  (match _lh_runStateT_arg1_2_7 with
    | `StateT(_lh_runStateT_StateT_0_2_7) -> 
      _lh_runStateT_StateT_0_2_7
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d0 _lh_runStateT_arg1_2_5 =
  (match _lh_runStateT_arg1_2_5 with
    | `StateT(_lh_runStateT_StateT_0_2_5) -> 
      _lh_runStateT_StateT_0_2_5
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d1 _lh_runStateT_arg1_1_1 =
  (match _lh_runStateT_arg1_1_1 with
    | `StateT(_lh_runStateT_StateT_0_1_1) -> 
      _lh_runStateT_StateT_0_1_1
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d2 _lh_runStateT_arg1_1 =
  (match _lh_runStateT_arg1_1 with
    | `StateT(_lh_runStateT_StateT_0_1) -> 
      _lh_runStateT_StateT_0_1
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d3 _lh_runStateT_arg1_1_5 =
  (match _lh_runStateT_arg1_1_5 with
    | `StateT(_lh_runStateT_StateT_0_1_5) -> 
      _lh_runStateT_StateT_0_1_5
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d4 _lh_runStateT_arg1_2_4 =
  (match _lh_runStateT_arg1_2_4 with
    | `StateT(_lh_runStateT_StateT_0_2_4) -> 
      _lh_runStateT_StateT_0_2_4
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d5 _lh_runStateT_arg1_2_6 =
  (match _lh_runStateT_arg1_2_6 with
    | `StateT(_lh_runStateT_StateT_0_2_6) -> 
      _lh_runStateT_StateT_0_2_6
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d6 _lh_runStateT_arg1_6 =
  (match _lh_runStateT_arg1_6 with
    | `StateT(_lh_runStateT_StateT_0_6) -> 
      _lh_runStateT_StateT_0_6
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d7 _lh_runStateT_arg1_5 =
  (match _lh_runStateT_arg1_5 with
    | `StateT(_lh_runStateT_StateT_0_5) -> 
      _lh_runStateT_StateT_0_5
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d8 _lh_runStateT_arg1_7 =
  (match _lh_runStateT_arg1_7 with
    | `StateT(_lh_runStateT_StateT_0_7) -> 
      _lh_runStateT_StateT_0_7
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d9 _lh_runStateT_arg1_8 =
  (match _lh_runStateT_arg1_8 with
    | `StateT(_lh_runStateT_StateT_0_8) -> 
      _lh_runStateT_StateT_0_8
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2 _lh_runStateT_arg1_1_6 =
  (match _lh_runStateT_arg1_1_6 with
    | `StateT(_lh_runStateT_StateT_0_1_6) -> 
      _lh_runStateT_StateT_0_1_6
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d0 _lh_runStateT_arg1_2_3 =
  (match _lh_runStateT_arg1_2_3 with
    | `StateT(_lh_runStateT_StateT_0_2_3) -> 
      _lh_runStateT_StateT_0_2_3
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d1 _lh_runStateT_arg1_2_8 =
  (match _lh_runStateT_arg1_2_8 with
    | `StateT(_lh_runStateT_StateT_0_2_8) -> 
      _lh_runStateT_StateT_0_2_8
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d2 _lh_runStateT_arg1_4 =
  (match _lh_runStateT_arg1_4 with
    | `StateT(_lh_runStateT_StateT_0_4) -> 
      _lh_runStateT_StateT_0_4
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d3 _lh_runStateT_arg1_9 =
  (match _lh_runStateT_arg1_9 with
    | `StateT(_lh_runStateT_StateT_0_9) -> 
      _lh_runStateT_StateT_0_9
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d4 _lh_runStateT_arg1_2_0 =
  (match _lh_runStateT_arg1_2_0 with
    | `StateT(_lh_runStateT_StateT_0_2_0) -> 
      _lh_runStateT_StateT_0_2_0
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d5 _lh_runStateT_arg1_1_4 =
  (match _lh_runStateT_arg1_1_4 with
    | `StateT(_lh_runStateT_StateT_0_1_4) -> 
      _lh_runStateT_StateT_0_1_4
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d6 _lh_runStateT_arg1_2 =
  (match _lh_runStateT_arg1_2 with
    | `StateT(_lh_runStateT_StateT_0_2) -> 
      _lh_runStateT_StateT_0_2
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d7 _lh_runStateT_arg1_1_2 =
  (match _lh_runStateT_arg1_1_2 with
    | `StateT(_lh_runStateT_StateT_0_1_2) -> 
      _lh_runStateT_StateT_0_1_2
    | _ -> 
      (failwith "error"));;
let rec runStateT__d2_d8 _lh_runStateT_arg1_1_3 =
  (match _lh_runStateT_arg1_1_3 with
    | `StateT(_lh_runStateT_StateT_0_1_3) -> 
      _lh_runStateT_StateT_0_1_3
    | _ -> 
      (failwith "error"));;
let rec runStateT__d3 _lh_runStateT_arg1_1_7 =
  (match _lh_runStateT_arg1_1_7 with
    | `StateT(_lh_runStateT_StateT_0_1_7) -> 
      _lh_runStateT_StateT_0_1_7
    | _ -> 
      (failwith "error"));;
let rec runStateT__d4 _lh_runStateT_arg1_3 =
  (match _lh_runStateT_arg1_3 with
    | `StateT(_lh_runStateT_StateT_0_3) -> 
      _lh_runStateT_StateT_0_3
    | _ -> 
      (failwith "error"));;
let rec runStateT__d5 _lh_runStateT_arg1_2_9 =
  (match _lh_runStateT_arg1_2_9 with
    | `StateT(_lh_runStateT_StateT_0_2_9) -> 
      _lh_runStateT_StateT_0_2_9
    | _ -> 
      (failwith "error"));;
let rec runStateT__d6 _lh_runStateT_arg1_1_8 =
  (match _lh_runStateT_arg1_1_8 with
    | `StateT(_lh_runStateT_StateT_0_1_8) -> 
      _lh_runStateT_StateT_0_1_8
    | _ -> 
      (failwith "error"));;
let rec runStateT__d7 _lh_runStateT_arg1_1_0 =
  (match _lh_runStateT_arg1_1_0 with
    | `StateT(_lh_runStateT_StateT_0_1_0) -> 
      _lh_runStateT_StateT_0_1_0
    | _ -> 
      (failwith "error"));;
let rec runStateT__d8 _lh_runStateT_arg1_2_1 =
  (match _lh_runStateT_arg1_2_1 with
    | `StateT(_lh_runStateT_StateT_0_2_1) -> 
      _lh_runStateT_StateT_0_2_1
    | _ -> 
      (failwith "error"));;
let rec runStateT__d9 _lh_runStateT_arg1_2_2 =
  (match _lh_runStateT_arg1_2_2 with
    | `StateT(_lh_runStateT_StateT_0_2_2) -> 
      _lh_runStateT_StateT_0_2_2
    | _ -> 
      (failwith "error"));;
let rec sum__d0 _lh_sum_arg1_1 =
  (match _lh_sum_arg1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      (_lh_sum_LH_C_0_1 + (sum__d0 _lh_sum_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec sum__d1 _lh_sum_arg1_2 =
  (match _lh_sum_arg1_2 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_2, _lh_sum_LH_C_1_2) -> 
      (_lh_sum_LH_C_0_2 + (sum__d1 _lh_sum_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec bind__d0 _lh_bind_arg1_1 _lh_bind_arg2_1 =
  (`StateT((fun s_9 -> 
    (concat__d2 ((map__d3 (fun as_1 -> 
      (let rec _lh_matchIdent_9 = as_1 in
        (match _lh_matchIdent_9 with
          | `LH_P2(_lh_bind_LH_P2_0_1, _lh_bind_LH_P2_1_1) -> 
            ((runStateT__d1 (_lh_bind_arg2_1 _lh_bind_LH_P2_0_1)) _lh_bind_LH_P2_1_1)
          | _ -> 
            (failwith "error"))))) ((runStateT__d2 _lh_bind_arg1_1) s_9))))))
and bind__d1 _lh_bind_arg1_2 _lh_bind_arg2_2 =
  (`StateT((fun s_1_2 -> 
    (concat__d3 ((map__d4 (fun as_2 -> 
      (let rec _lh_matchIdent_1_3 = as_2 in
        (match _lh_matchIdent_1_3 with
          | `LH_P2(_lh_bind_LH_P2_0_2, _lh_bind_LH_P2_1_2) -> 
            ((runStateT__d3 (_lh_bind_arg2_2 _lh_bind_LH_P2_0_2)) _lh_bind_LH_P2_1_2)
          | _ -> 
            (failwith "error"))))) ((runStateT__d4 _lh_bind_arg1_2) s_1_2))))))
and bind__d1_d0 _lh_bind_arg1_1_1 _lh_bind_arg2_1_1 =
  (`StateT((fun s_3_1 -> 
    (concat__d1_d3 ((map__d1_d4 (fun as_1_1 -> 
      (let rec _lh_matchIdent_2_9 = as_1_1 in
        (match _lh_matchIdent_2_9 with
          | `LH_P2(_lh_bind_LH_P2_0_1_1, _lh_bind_LH_P2_1_1_1) -> 
            ((runStateT__d2_d1 (_lh_bind_arg2_1_1 _lh_bind_LH_P2_0_1_1)) _lh_bind_LH_P2_1_1_1)
          | _ -> 
            (failwith "error"))))) ((runStateT__d2_d2 _lh_bind_arg1_1_1) s_3_1))))))
and bind__d1_d1 _lh_bind_arg1_8 _lh_bind_arg2_8 =
  (`StateT((fun s_2_7 -> 
    (concat__d1_d4 ((map__d1_d5 (fun as_8 -> 
      (let rec _lh_matchIdent_2_4 = as_8 in
        (match _lh_matchIdent_2_4 with
          | `LH_P2(_lh_bind_LH_P2_0_8, _lh_bind_LH_P2_1_8) -> 
            ((runStateT__d2_d3 (_lh_bind_arg2_8 _lh_bind_LH_P2_0_8)) _lh_bind_LH_P2_1_8)
          | _ -> 
            (failwith "error"))))) ((runStateT__d2_d4 _lh_bind_arg1_8) s_2_7))))))
and bind__d1_d2 _lh_bind_arg1_7 _lh_bind_arg2_7 =
  (`StateT((fun s_2_5 -> 
    (concat__d1_d5 ((map__d1_d6 (fun as_7 -> 
      (let rec _lh_matchIdent_2_2 = as_7 in
        (match _lh_matchIdent_2_2 with
          | `LH_P2(_lh_bind_LH_P2_0_7, _lh_bind_LH_P2_1_7) -> 
            ((runStateT__d2_d5 (_lh_bind_arg2_7 _lh_bind_LH_P2_0_7)) _lh_bind_LH_P2_1_7)
          | _ -> 
            (failwith "error"))))) ((runStateT__d2_d6 _lh_bind_arg1_7) s_2_5))))))
and bind__d1_d3 _lh_bind_arg1_1_2 _lh_bind_arg2_1_2 =
  (`StateT((fun s_3_3 -> 
    (concat__d1_d6 ((map__d1_d7 (fun as_1_2 -> 
      (let rec _lh_matchIdent_3_0 = as_1_2 in
        (match _lh_matchIdent_3_0 with
          | `LH_P2(_lh_bind_LH_P2_0_1_2, _lh_bind_LH_P2_1_1_2) -> 
            ((runStateT__d2_d7 (_lh_bind_arg2_1_2 _lh_bind_LH_P2_0_1_2)) _lh_bind_LH_P2_1_1_2)
          | _ -> 
            (failwith "error"))))) ((runStateT__d2_d8 _lh_bind_arg1_1_2) s_3_3))))))
and bind__d2 _lh_bind_arg1_1_3 _lh_bind_arg2_1_3 =
  (`StateT((fun s_3_5 -> 
    (concat__d4 ((map__d5 (fun as_1_3 -> 
      (let rec _lh_matchIdent_3_1 = as_1_3 in
        (match _lh_matchIdent_3_1 with
          | `LH_P2(_lh_bind_LH_P2_0_1_3, _lh_bind_LH_P2_1_1_3) -> 
            ((runStateT__d5 (_lh_bind_arg2_1_3 _lh_bind_LH_P2_0_1_3)) _lh_bind_LH_P2_1_1_3)
          | _ -> 
            (failwith "error"))))) ((runStateT__d6 _lh_bind_arg1_1_3) s_3_5))))))
and bind__d3 _lh_bind_arg1_9 _lh_bind_arg2_9 =
  (`StateT((fun s_2_9 -> 
    (concat__d5 ((map__d6 (fun as_9 -> 
      (let rec _lh_matchIdent_2_7 = as_9 in
        (match _lh_matchIdent_2_7 with
          | `LH_P2(_lh_bind_LH_P2_0_9, _lh_bind_LH_P2_1_9) -> 
            ((runStateT__d7 (_lh_bind_arg2_9 _lh_bind_LH_P2_0_9)) _lh_bind_LH_P2_1_9)
          | _ -> 
            (failwith "error"))))) ((runStateT__d8 _lh_bind_arg1_9) s_2_9))))))
and bind__d4 _lh_bind_arg1_1_4 _lh_bind_arg2_1_4 =
  (`StateT((fun s_3_8 -> 
    (concat__d6 ((map__d7 (fun as_1_4 -> 
      (let rec _lh_matchIdent_3_2 = as_1_4 in
        (match _lh_matchIdent_3_2 with
          | `LH_P2(_lh_bind_LH_P2_0_1_4, _lh_bind_LH_P2_1_1_4) -> 
            ((runStateT__d9 (_lh_bind_arg2_1_4 _lh_bind_LH_P2_0_1_4)) _lh_bind_LH_P2_1_1_4)
          | _ -> 
            (failwith "error"))))) ((runStateT__d1_d0 _lh_bind_arg1_1_4) s_3_8))))))
and bind__d5 _lh_bind_arg1_4 _lh_bind_arg2_4 =
  (`StateT((fun s_1_8 -> 
    (concat__d7 ((map__d8 (fun as_4 -> 
      (let rec _lh_matchIdent_1_8 = as_4 in
        (match _lh_matchIdent_1_8 with
          | `LH_P2(_lh_bind_LH_P2_0_4, _lh_bind_LH_P2_1_4) -> 
            ((runStateT__d1_d1 (_lh_bind_arg2_4 _lh_bind_LH_P2_0_4)) _lh_bind_LH_P2_1_4)
          | _ -> 
            (failwith "error"))))) ((runStateT__d1_d2 _lh_bind_arg1_4) s_1_8))))))
and bind__d6 _lh_bind_arg1_5 _lh_bind_arg2_5 =
  (`StateT((fun s_1_9 -> 
    (concat__d8 ((map__d9 (fun as_5 -> 
      (let rec _lh_matchIdent_2_0 = as_5 in
        (match _lh_matchIdent_2_0 with
          | `LH_P2(_lh_bind_LH_P2_0_5, _lh_bind_LH_P2_1_5) -> 
            ((runStateT__d1_d3 (_lh_bind_arg2_5 _lh_bind_LH_P2_0_5)) _lh_bind_LH_P2_1_5)
          | _ -> 
            (failwith "error"))))) ((runStateT__d1_d4 _lh_bind_arg1_5) s_1_9))))))
and bind__d7 _lh_bind_arg1_1_0 _lh_bind_arg2_1_0 =
  (`StateT((fun s_3_0 -> 
    (concat__d9 ((map__d1_d0 (fun as_1_0 -> 
      (let rec _lh_matchIdent_2_8 = as_1_0 in
        (match _lh_matchIdent_2_8 with
          | `LH_P2(_lh_bind_LH_P2_0_1_0, _lh_bind_LH_P2_1_1_0) -> 
            ((runStateT__d1_d5 (_lh_bind_arg2_1_0 _lh_bind_LH_P2_0_1_0)) _lh_bind_LH_P2_1_1_0)
          | _ -> 
            (failwith "error"))))) ((runStateT__d1_d6 _lh_bind_arg1_1_0) s_3_0))))))
and bind__d8 _lh_bind_arg1_6 _lh_bind_arg2_6 =
  (`StateT((fun s_2_0 -> 
    (concat__d1_d0 ((map__d1_d1 (fun as_6 -> 
      (let rec _lh_matchIdent_2_1 = as_6 in
        (match _lh_matchIdent_2_1 with
          | `LH_P2(_lh_bind_LH_P2_0_6, _lh_bind_LH_P2_1_6) -> 
            ((runStateT__d1_d7 (_lh_bind_arg2_6 _lh_bind_LH_P2_0_6)) _lh_bind_LH_P2_1_6)
          | _ -> 
            (failwith "error"))))) ((runStateT__d1_d8 _lh_bind_arg1_6) s_2_0))))))
and bind__d9 _lh_bind_arg1_3 _lh_bind_arg2_3 =
  (`StateT((fun s_1_5 -> 
    (concat__d1_d1 ((map__d1_d2 (fun as_3 -> 
      (let rec _lh_matchIdent_1_6 = as_3 in
        (match _lh_matchIdent_1_6 with
          | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
            ((runStateT__d1_d9 (_lh_bind_arg2_3 _lh_bind_LH_P2_0_3)) _lh_bind_LH_P2_1_3)
          | _ -> 
            (failwith "error"))))) ((runStateT__d2_d0 _lh_bind_arg1_3) s_1_5))))))
and combine__d0 _lh_combine_arg1_1 _lh_combine_arg2_1 _lh_combine_arg3_1 _lh_combine_arg4_1 =
  (`LH_C((`LH_C(_lh_combine_arg1_1, _lh_combine_arg2_1)), (transpose__d0 (`LH_C(_lh_combine_arg3_1, _lh_combine_arg4_1)))))
and concat__d0 lss_1_0 =
  (match lss_1_0 with
    | `LH_C(h_6_1, t_6_3) -> 
      ((mappend__d1 h_6_1) (concat__d0 t_6_3))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      ((mappend__d2 h_2_3) (concat__d1 t_2_5))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d0 lss_1_2 =
  (match lss_1_2 with
    | `LH_C(h_6_5, t_6_7) -> 
      ((mappend__d1_d4 h_6_5) (concat__d1_d0 t_6_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d1 lss_3 =
  (match lss_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      ((mappend__d1_d5 h_2_5) (concat__d1_d1 t_2_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d2 lss_1_4 =
  (match lss_1_4 with
    | `LH_C(h_7_0, t_7_2) -> 
      ((mappend__d1_d6 h_7_0) (concat__d1_d2 t_7_2))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d3 lss_1_1 =
  (match lss_1_1 with
    | `LH_C(h_6_4, t_6_6) -> 
      ((mappend__d1_d7 h_6_4) (concat__d1_d3 t_6_6))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d4 lss_1_6 =
  (match lss_1_6 with
    | `LH_C(h_7_6, t_7_8) -> 
      ((mappend__d1_d8 h_7_6) (concat__d1_d4 t_7_8))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d5 lss_1_7 =
  (match lss_1_7 with
    | `LH_C(h_7_9, t_8_1) -> 
      ((mappend__d1_d9 h_7_9) (concat__d1_d5 t_8_1))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d6 lss_1_9 =
  (match lss_1_9 with
    | `LH_C(h_9_0, t_9_2) -> 
      ((mappend__d2_d0 h_9_0) (concat__d1_d6 t_9_2))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d7 lss_8 =
  (match lss_8 with
    | `LH_C(h_4_2, t_4_4) -> 
      ((mappend__d2_d1 h_4_2) (concat__d1_d7 t_4_4))
    | `LH_N -> 
      (`LH_N))
and concat__d1_d8 lss_7 =
  (match lss_7 with
    | `LH_C(h_4_0, t_4_2) -> 
      ((mappend__d2_d2 h_4_0) (concat__d1_d8 t_4_2))
    | `LH_N -> 
      (`LH_N))
and concat__d2 lss_1_3 =
  (match lss_1_3 with
    | `LH_C(h_6_7, t_6_9) -> 
      ((mappend__d6 h_6_7) (concat__d2 t_6_9))
    | `LH_N -> 
      (`LH_N))
and concat__d3 lss_1_5 =
  (match lss_1_5 with
    | `LH_C(h_7_4, t_7_6) -> 
      ((mappend__d7 h_7_4) (concat__d3 t_7_6))
    | `LH_N -> 
      (`LH_N))
and concat__d4 lss_4 =
  (match lss_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((mappend__d8 h_2_6) (concat__d4 t_2_8))
    | `LH_N -> 
      (`LH_N))
and concat__d5 lss_5 =
  (match lss_5 with
    | `LH_C(h_3_1, t_3_3) -> 
      ((mappend__d9 h_3_1) (concat__d5 t_3_3))
    | `LH_N -> 
      (`LH_N))
and concat__d6 lss_1_8 =
  (match lss_1_8 with
    | `LH_C(h_8_6, t_8_8) -> 
      ((mappend__d1_d0 h_8_6) (concat__d6 t_8_8))
    | `LH_N -> 
      (`LH_N))
and concat__d7 lss_6 =
  (match lss_6 with
    | `LH_C(h_3_8, t_4_0) -> 
      ((mappend__d1_d1 h_3_8) (concat__d7 t_4_0))
    | `LH_N -> 
      (`LH_N))
and concat__d8 lss_9 =
  (match lss_9 with
    | `LH_C(h_5_7, t_5_9) -> 
      ((mappend__d1_d2 h_5_7) (concat__d8 t_5_9))
    | `LH_N -> 
      (`LH_N))
and concat__d9 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      ((mappend__d1_d3 h_2_2) (concat__d9 t_2_4))
    | `LH_N -> 
      (`LH_N))
and execStateT__d0 _lh_execStateT_arg1_1 _lh_execStateT_arg2_1 =
  (concat__d1 ((map__d1 (fun x_5 -> 
    (let rec _lh_matchIdent_1_2 = x_5 in
      (match _lh_matchIdent_1_2 with
        | `LH_P2(_lh_execStateT_LH_P2_0_1, _lh_execStateT_LH_P2_1_1) -> 
          (`LH_C(_lh_execStateT_LH_P2_1_1, (`LH_N)))
        | _ -> 
          (failwith "error"))))) ((runStateT__d0 _lh_execStateT_arg1_1) _lh_execStateT_arg2_1)))
and lift__d0 _lh_lift_arg1_2 =
  (`StateT((fun s_2_4 -> 
    (concat__d1_d2 ((map__d1_d3 (fun x_8 -> 
      (`LH_C((`LH_P2(x_8, s_2_4)), (`LH_N))))) _lh_lift_arg1_2)))))
and lift__d1 _lh_lift_arg1_1 =
  (`StateT((fun s_1_1 -> 
    (concat__d1_d7 ((map__d1_d8 (fun x_7 -> 
      (`LH_C((`LH_P2(x_7, s_1_1)), (`LH_N))))) _lh_lift_arg1_1)))))
and listDiff__d0 =
  (foldl__d1 delete__d0)
and listDiff__d1 =
  (foldl__d2 delete__d1)
and mapM__d0 _lh_mapM_arg1_1 _lh_mapM_arg2_1 =
  (((foldr__d0 (fun a_7 r_1 -> 
    ((bind__d4 (_lh_mapM_arg1_1 a_7)) (fun x_6 -> 
      ((bind__d5 r_1) (fun xs_1_4 -> 
        (return__d0 (`LH_C(x_6, xs_1_4))))))))) (return__d1 (`LH_N))) _lh_mapM_arg2_1)
and nub__d0 _lh_nub_arg1_1 =
  (match _lh_nub_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_1, _lh_nub_LH_C_1_1) -> 
      (`LH_C(_lh_nub_LH_C_0_1, (nub__d0 ((filter__d0 (fun y_1 -> 
        (not (_lh_nub_LH_C_0_1 = y_1)))) _lh_nub_LH_C_1_1))))
    | _ -> 
      (failwith "error"))
and permute__d0 _lh_permute_arg1_2 =
  ((bind__d8 get__d1) (fun st_5 -> 
    ((bind__d9 (let rec xs_2_9 = (digits__d0 st_5) in
      (lift__d0 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_8, ((listDiff__d0 xs_2_9) (`LH_C(_lh_listcomp_fun_ls_h_8, (`LH_N)))))), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8 xs_2_9))))) (fun iis_2 -> 
      (let rec _lh_matchIdent_2_6 = iis_2 in
        (match _lh_matchIdent_2_6 with
          | `LH_P2(_lh_permute_LH_P2_0_2, _lh_permute_LH_P2_1_2) -> 
            ((bind__d7 (put__d0 (`Digits(_lh_permute_LH_P2_1_2, (`LH_C((`LH_P2(_lh_permute_arg1_2, _lh_permute_LH_P2_0_2)), (digitEnv__d3 st_5))))))) (fun _p_8 -> 
              (return__d5 _lh_permute_LH_P2_0_2)))
          | _ -> 
            (failwith "error")))))))
and permute__d1 _lh_permute_arg1_1 =
  ((bind__d1_d2 get__d3) (fun st_2 -> 
    ((bind__d1_d3 (let rec xs_1_1 = (digits__d1 st_2) in
      (lift__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_4, ((listDiff__d1 xs_1_1) (`LH_C(_lh_listcomp_fun_ls_h_4, (`LH_N)))))), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4 xs_1_1))))) (fun iis_1 -> 
      (let rec _lh_matchIdent_1_0 = iis_1 in
        (match _lh_matchIdent_1_0 with
          | `LH_P2(_lh_permute_LH_P2_0_1, _lh_permute_LH_P2_1_1) -> 
            ((bind__d1_d1 (put__d1 (`Digits(_lh_permute_LH_P2_1_1, (`LH_C((`LH_P2(_lh_permute_arg1_1, _lh_permute_LH_P2_0_1)), (digitEnv__d5 st_2))))))) (fun _p_4 -> 
              (return__d7 _lh_permute_LH_P2_0_1)))
          | _ -> 
            (failwith "error")))))))
and puzzle__d0 _lh_puzzle_arg1_1 _lh_puzzle_arg2_1 =
  (let rec solution_1 = (((solve__d0 (transpose__d0 ((map__d2 reverse__d0) _lh_puzzle_arg1_1))) (reverse__d1 _lh_puzzle_arg2_1)) 0) in
    (let rec answer_1 = (let rec _lh_matchIdent_2_3 = ((execStateT__d0 solution_1) (`Digits(((enumFromTo__d1 0) 9), (`LH_N)))) in
      (match _lh_matchIdent_2_3 with
        | `LH_C(_lh_puzzle_LH_C_0_1, _lh_puzzle_LH_C_1_1) -> 
          _lh_puzzle_LH_C_0_1
        | `LH_N -> 
          (failwith "error")
        | _ -> 
          (failwith "error"))) in
      (let rec env_1 = (digitEnv__d0 answer_1) in
        (let rec look_1 = (fun c_1 -> 
          (fromJust__d0 ((lookup__d0 c_1) env_1))) in
          (let rec expand_1 = (fun ls_4_2 -> 
            (((foldl__d0 (fun a_1_1 b_4 -> 
              ((a_1_1 * 10) + (look_1 b_4)))) 0) ls_4_2)) in
            (let rec topVal_1 = (sum__d1 (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
              (match _lh_listcomp_fun_para_6 with
                | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                  (`LH_C((expand_1 _lh_listcomp_fun_ls_h_6), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_6 _lh_puzzle_arg1_1))) in
              (let rec botVal_1 = (expand_1 _lh_puzzle_arg2_1) in
                (if ((length__d0 (nub__d0 ((mappend__d3 (concat__d0 _lh_puzzle_arg1_1)) _lh_puzzle_arg2_1))) > 10) then
                  (failwith "error")
                else
                  (if (topVal_1 <> botVal_1) then
                    (failwith "error")
                  else
                    (unlines__d0 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
                      (match _lh_listcomp_fun_para_7 with
                        | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
                          (match _lh_listcomp_fun_ls_h_7 with
                            | `LH_P2(_lh_puzzle_LH_P2_0_1, _lh_puzzle_LH_P2_1_1) -> 
                              (`LH_C(((mappend__d4 ((mappend__d5 (`LH_C(_lh_puzzle_LH_P2_0_1, (`LH_N)))) (`LH_C(' ', (`LH_C('=', (`LH_C('>', (`LH_C(' ', (`LH_N))))))))))) (string_of_int _lh_puzzle_LH_P2_1_1)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
                            | _ -> 
                              (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_7 (digitEnv__d1 answer_1)))))))))))))
and reverse__d0 ls_4_1 =
  ((reverse_helper__d0 ls_4_1) (`LH_N))
and reverse__d1 ls_3_4 =
  ((reverse_helper__d1 ls_3_4) (`LH_N))
and select__d0 _lh_select_arg1_1 =
  ((bind__d6 get__d0) (fun st_3 -> 
    (let rec _lh_matchIdent_1_7 = ((lookup__d1 _lh_select_arg1_1) (digitEnv__d2 st_3)) in
      (match _lh_matchIdent_1_7 with
        | `Just(_lh_select_Just_0_1) -> 
          (return__d6 _lh_select_Just_0_1)
        | `Nothing -> 
          (permute__d0 _lh_select_arg1_1)
        | _ -> 
          (failwith "error")))))
and select__d1 _lh_select_arg1_2 =
  ((bind__d1_d0 get__d2) (fun st_4 -> 
    (let rec _lh_matchIdent_2_5 = ((lookup__d2 _lh_select_arg1_2) (digitEnv__d4 st_4)) in
      (match _lh_matchIdent_2_5 with
        | `Just(_lh_select_Just_0_2) -> 
          (return__d8 _lh_select_Just_0_2)
        | `Nothing -> 
          (permute__d1 _lh_select_arg1_2)
        | _ -> 
          (failwith "error")))))
and solve__d0 _lh_solve_arg1_1 _lh_solve_arg2_1 _lh_solve_arg3_1 =
  (match _lh_solve_arg2_1 with
    | `LH_C(_lh_solve_LH_C_0_2, _lh_solve_LH_C_1_2) -> 
      ((bind__d0 (let rec _lh_matchIdent_1_9 = _lh_solve_arg1_1 in
        (match _lh_matchIdent_1_9 with
          | `LH_N -> 
            (return__d3 _lh_solve_arg3_1)
          | `LH_C(_lh_solve_LH_C_0_3, _lh_solve_LH_C_1_3) -> 
            ((bind__d1 ((mapM__d0 select__d0) _lh_solve_LH_C_0_3)) (fun topNS_1 -> 
              (return__d4 ((sum__d0 topNS_1) + _lh_solve_arg3_1))))
          | _ -> 
            (failwith "error")))) (fun topN_1 -> 
        ((bind__d2 (select__d1 _lh_solve_LH_C_0_2)) (fun botN_1 -> 
          ((bind__d3 (guard__d0 ((topN_1 mod 10) = botN_1))) (fun _s_1 -> 
            (((solve__d0 (rest__d0 _lh_solve_arg1_1)) _lh_solve_LH_C_1_2) (topN_1 / 10))))))))
    | _ -> 
      (match _lh_solve_arg1_1 with
        | `LH_N -> 
          (match _lh_solve_arg2_1 with
            | `LH_N -> 
              (match _lh_solve_arg3_1 with
                | 0 -> 
                  (return__d2 (`Unit))
                | _ -> 
                  (`StateT((fun _p_5 -> 
                    (`LH_N)))))
            | _ -> 
              (`StateT((fun _p_6 -> 
                (`LH_N)))))
        | _ -> 
          (`StateT((fun _p_7 -> 
            (`LH_N))))))
and testCryptarithm2_nofib__d0 _lh_testCryptarithm2_nofib_arg1_1 =
  ((map__d0 (fun i_4 -> 
    (let rec args_1 = (`LH_C((`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('R', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C(((mappend__d0 (`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N)))))))))))))) (if (i_4 > 999999) then
      (`LH_C('1', (`LH_N)))
    else
      (`LH_N))), (`LH_N))))))))))))) in
      ((puzzle__d0 args_1) (`LH_C('N', (`LH_C('I', (`LH_C('N', (`LH_C('E', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))))))) ((enumFromTo__d0 1) _lh_testCryptarithm2_nofib_arg1_1))
and transpose__d0 _lh_transpose_arg1_1 =
  (match _lh_transpose_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_3, _lh_transpose_LH_C_1_3) -> 
      (match _lh_transpose_LH_C_0_3 with
        | `LH_N -> 
          (transpose__d0 _lh_transpose_LH_C_1_3)
        | `LH_C(_lh_transpose_LH_C_0_4, _lh_transpose_LH_C_1_4) -> 
          (let rec _lh_matchIdent_1_1 = (unzip__d0 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
            (match _lh_listcomp_fun_para_5 with
              | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                (match _lh_listcomp_fun_ls_h_5 with
                  | `LH_C(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                  | _ -> 
                    (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_5 _lh_transpose_LH_C_1_3))) in
            (match _lh_matchIdent_1_1 with
              | `LH_P2(_lh_transpose_LH_P2_0_1, _lh_transpose_LH_P2_1_1) -> 
                ((((combine__d0 _lh_transpose_LH_C_0_4) _lh_transpose_LH_P2_0_1) _lh_transpose_LH_C_1_4) _lh_transpose_LH_P2_1_1)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d1_d8 ((map__d1_d9 (fun l_1 -> 
    ((mappend__d2_d3 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1))
and unzip__d0 _lh_unzip_arg1_1 =
  (((foldr__d1 (fun ab_1 asbs_1 -> 
    (let rec _lh_matchIdent_1_4 = ab_1 in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_unzip_LH_P2_0_2, _lh_unzip_LH_P2_1_2) -> 
          (let rec _lh_matchIdent_1_5 = asbs_1 in
            (match _lh_matchIdent_1_5 with
              | `LH_P2(_lh_unzip_LH_P2_0_3, _lh_unzip_LH_P2_1_3) -> 
                (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_2, _lh_unzip_LH_P2_0_3)), (`LH_C(_lh_unzip_LH_P2_1_2, _lh_unzip_LH_P2_1_3))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_1);;
end;;

