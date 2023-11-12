
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec break__d0 _lh_break_arg1_3 _lh_break_arg2_3 =
  (match _lh_break_arg2_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_2, _lh_break_LH_C_1_2) -> 
      (if (_lh_break_arg1_3 _lh_break_LH_C_0_2) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_C_1_2))))
      else
        (let rec _lh_matchIdent_1_6 = ((break__d0 _lh_break_arg1_3) _lh_break_LH_C_1_2) in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_break_LH_P2_0_2, _lh_break_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_2, _lh_break_LH_P2_0_2)), _lh_break_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec break__d1 _lh_break_arg1_2 _lh_break_arg2_2 =
  (match _lh_break_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_2 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_1 = ((break__d1 _lh_break_arg1_2) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_1_1 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec ceildiv__d0 _lh_ceildiv_arg1_1 _lh_ceildiv_arg2_1 =
  (((_lh_ceildiv_arg1_1 + _lh_ceildiv_arg2_1) - 1) / _lh_ceildiv_arg2_1);;
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
let rec drop__d0 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3))
      else
        ((drop__d0 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_4 _lh_drop_arg2_4 =
  (match _lh_drop_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_4, _lh_drop_LH_C_1_4) -> 
      (if (_lh_drop_arg1_4 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_4, _lh_drop_LH_C_1_4))
      else
        ((drop__d1 (_lh_drop_arg1_4 - 1)) _lh_drop_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec drop__d2 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop__d2 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec drop__d3 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2))
      else
        ((drop__d3 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec drop__d4 _lh_drop_arg1_5 _lh_drop_arg2_5 =
  (match _lh_drop_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_5, _lh_drop_LH_C_1_5) -> 
      (if (_lh_drop_arg1_5 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_5, _lh_drop_LH_C_1_5))
      else
        ((drop__d4 (_lh_drop_arg1_5 - 1)) _lh_drop_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec filter__d0 f_1_8 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_7_9, t_8_1) -> 
      (if (f_1_8 h_7_9) then
        (`LH_C(h_7_9, ((filter__d0 f_1_8) t_8_1)))
      else
        ((filter__d0 f_1_8) t_8_1))
    | `LH_N -> 
      (`LH_N));;
let rec fold1__d0 _lh_fold1_arg1_3 _lh_fold1_arg2_3 _lh_fold1_arg3_3 =
  (match _lh_fold1_arg3_3 with
    | `LH_C(_lh_fold1_LH_C_0_3, _lh_fold1_LH_C_1_3) -> 
      (match _lh_fold1_LH_C_1_3 with
        | `LH_N -> 
          (_lh_fold1_arg2_3 _lh_fold1_LH_C_0_3)
        | _ -> 
          ((_lh_fold1_arg1_3 _lh_fold1_LH_C_0_3) (((fold1__d0 _lh_fold1_arg1_3) _lh_fold1_arg2_3) _lh_fold1_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec fold1__d1 _lh_fold1_arg1_1 _lh_fold1_arg2_1 _lh_fold1_arg3_1 =
  (match _lh_fold1_arg3_1 with
    | `LH_C(_lh_fold1_LH_C_0_1, _lh_fold1_LH_C_1_1) -> 
      (match _lh_fold1_LH_C_1_1 with
        | `LH_N -> 
          (_lh_fold1_arg2_1 _lh_fold1_LH_C_0_1)
        | _ -> 
          ((_lh_fold1_arg1_1 _lh_fold1_LH_C_0_1) (((fold1__d1 _lh_fold1_arg1_1) _lh_fold1_arg2_1) _lh_fold1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec fold1__d2 _lh_fold1_arg1_2 _lh_fold1_arg2_2 _lh_fold1_arg3_2 =
  (match _lh_fold1_arg3_2 with
    | `LH_C(_lh_fold1_LH_C_0_2, _lh_fold1_LH_C_1_2) -> 
      (match _lh_fold1_LH_C_1_2 with
        | `LH_N -> 
          (_lh_fold1_arg2_2 _lh_fold1_LH_C_0_2)
        | _ -> 
          ((_lh_fold1_arg1_2 _lh_fold1_LH_C_0_2) (((fold1__d2 _lh_fold1_arg1_2) _lh_fold1_arg2_2) _lh_fold1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec fst3__d0 _lh_fst3_arg1_2 =
  (match _lh_fst3_arg1_2 with
    | `LH_P3(_lh_fst3_LH_P3_0_2, _lh_fst3_LH_P3_1_2, _lh_fst3_LH_P3_2_2) -> 
      _lh_fst3_LH_P3_0_2
    | _ -> 
      (failwith "error"));;
let rec fst3__d1 _lh_fst3_arg1_3 =
  (match _lh_fst3_arg1_3 with
    | `LH_P3(_lh_fst3_LH_P3_0_3, _lh_fst3_LH_P3_1_3, _lh_fst3_LH_P3_2_3) -> 
      _lh_fst3_LH_P3_0_3
    | _ -> 
      (failwith "error"));;
let rec fst3__d2 _lh_fst3_arg1_1 =
  (match _lh_fst3_arg1_1 with
    | `LH_P3(_lh_fst3_LH_P3_0_1, _lh_fst3_LH_P3_1_1, _lh_fst3_LH_P3_2_1) -> 
      _lh_fst3_LH_P3_0_1
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      h_2_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_4, t_3_6) -> 
      h_3_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_7, t_2_9) -> 
      h_2_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_6_1, t_6_3) -> 
      h_6_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_5_0, t_5_2) -> 
      h_5_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_8_0, t_8_2) -> 
      h_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_5_3, t_5_5) -> 
      h_5_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_4_6, t_4_8) -> 
      h_4_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_0, t_3_2) -> 
      h_3_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_7_1, t_7_3) -> 
      h_7_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_4_8, t_5_0) -> 
      h_4_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      h_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_7_2, t_7_4) -> 
      h_7_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_7_3, t_7_5) -> 
      h_7_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      h_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_8, t_4_0) -> 
      h_3_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_5, t_3_7) -> 
      h_3_5
    | `LH_N -> 
      (failwith "error"));;
let rec isSpace__d0 _lh_isSpace_arg1_2 =
  (_lh_isSpace_arg1_2 = ' ');;
let rec isSpace__d1 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec length__d0 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_5_5, t_5_7) -> 
      (1 + (length__d0 t_5_7))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_3, t_3_5) -> 
      (1 + (length__d1 t_3_5))
    | `LH_N -> 
      0);;
let rec length__d2 ls_4_9 =
  (match ls_4_9 with
    | `LH_C(h_6_7, t_6_9) -> 
      (1 + (length__d2 t_6_9))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_1, t_3_3) -> 
      (1 + (length__d3 t_3_3))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_6 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_7_0, t_7_2) -> 
      (`LH_C((f_1_6 h_7_0), ((map__d0 f_1_6) t_7_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_6_0, t_6_2) -> 
      (`LH_C((f_1_3 h_6_0), ((map__d1 f_1_3) t_6_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_5 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C((f_1_5 h_6_6), ((map__d2 f_1_5) t_6_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_2 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_5_7, t_5_9) -> 
      (`LH_C((f_1_2 h_5_7), ((map__d3 f_1_2) t_5_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_7 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_7_5, t_7_7) -> 
      (`LH_C((f_1_7 h_7_5), ((map__d4 f_1_7) t_7_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_1_4 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_6_4, t_6_6) -> 
      (`LH_C((f_1_4 h_6_4), ((map__d5 f_1_4) t_6_6)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d0 t_4_1) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_8_3, t_8_5) -> 
      (`LH_C(h_8_3, ((mappend__d1 t_8_5) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d1_d0 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend__d1_d0 t_5_1) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d1 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_7_4, t_7_6) -> 
      (`LH_C(h_7_4, ((mappend__d1_d1 t_7_6) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d1_d2 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C(h_6_5, ((mappend__d1_d2 t_6_7) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d1_d3 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_8_5, t_8_7) -> 
      (`LH_C(h_8_5, ((mappend__d1_d3 t_8_7) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d1_d4 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d1_d4 t_2_6) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d5 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_5_8, t_6_0) -> 
      (`LH_C(h_5_8, ((mappend__d1_d5 t_6_0) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d1_d6 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d1_d6 t_5_3) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d1_d7 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d1_d7 t_4_7) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d8 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d1_d8 t_3_4) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1_d9 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend__d1_d9 t_4_9) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d2 t_3_0) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2_d0 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d2_d0 t_4_4) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d2_d1 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend__d2_d1 t_6_5) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d2_d2 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d2_d2 t_4_3) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d2_d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d2_d3 t_3_1) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d2_d4 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_6_8, t_7_0) -> 
      (`LH_C(h_6_8, ((mappend__d2_d4 t_7_0) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d3 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_8_2, t_8_4) -> 
      (`LH_C(h_8_2, ((mappend__d3 t_8_4) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d4 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d4 t_2_5) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d5 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d5 t_5_4) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d6 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_6_9, t_7_1) -> 
      (`LH_C(h_6_9, ((mappend__d6 t_7_1) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d7 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_5_4, t_5_6) -> 
      (`LH_C(h_5_4, ((mappend__d7 t_5_6) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d8 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_7_7, t_7_9) -> 
      (`LH_C(h_7_7, ((mappend__d8 t_7_9) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d9 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_8_4, t_8_6) -> 
      (`LH_C(h_8_4, ((mappend__d9 t_8_6) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec maxw__d0 =
  70;;
let rec maxw__d1 =
  70;;
let rec maxw__d2 =
  70;;
let rec min__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec min__d1 _lh_min_arg1_2 _lh_min_arg2_2 =
  (if (_lh_min_arg1_2 > _lh_min_arg2_2) then
    _lh_min_arg2_2
  else
    _lh_min_arg1_2);;
let rec nil'__d0 =
  (`LH_P2((`LH_N), (`LH_N)));;
let rec null'__d0 _lh_null'_arg1_2 =
  (match _lh_null'_arg1_2 with
    | `LH_P2(_lh_null'_LH_P2_0_2, _lh_null'_LH_P2_1_2) -> 
      (match _lh_null'_LH_P2_0_2 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_2 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null'__d1 _lh_null'_arg1_3 =
  (match _lh_null'_arg1_3 with
    | `LH_P2(_lh_null'_LH_P2_0_3, _lh_null'_LH_P2_1_3) -> 
      (match _lh_null'_LH_P2_0_3 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_3 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null'__d2 _lh_null'_arg1_1 =
  (match _lh_null'_arg1_1 with
    | `LH_P2(_lh_null'_LH_P2_0_1, _lh_null'_LH_P2_1_1) -> 
      (match _lh_null'_LH_P2_0_1 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_1 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null__d0 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1 _lh_null_arg1_9 =
  (match _lh_null_arg1_9 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_9, _lh_null_LH_C_1_9) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d0 _lh_null_arg1_1_5 =
  (match _lh_null_arg1_1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_5, _lh_null_LH_C_1_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d1 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d2 _lh_null_arg1_1_1 =
  (match _lh_null_arg1_1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_1, _lh_null_LH_C_1_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d3 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d4 _lh_null_arg1_7 =
  (match _lh_null_arg1_7 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_7, _lh_null_LH_C_1_7) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d5 _lh_null_arg1_1_3 =
  (match _lh_null_arg1_1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_3, _lh_null_LH_C_1_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d6 _lh_null_arg1_1_4 =
  (match _lh_null_arg1_1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_4, _lh_null_LH_C_1_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1_d7 _lh_null_arg1_6 =
  (match _lh_null_arg1_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_6, _lh_null_LH_C_1_6) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d2 _lh_null_arg1_1_2 =
  (match _lh_null_arg1_1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_2, _lh_null_LH_C_1_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d3 _lh_null_arg1_5 =
  (match _lh_null_arg1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_5, _lh_null_LH_C_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d4 _lh_null_arg1_8 =
  (match _lh_null_arg1_8 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_8, _lh_null_LH_C_1_8) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d5 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d6 _lh_null_arg1_1_6 =
  (match _lh_null_arg1_1_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_6, _lh_null_LH_C_1_1_6) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d7 _lh_null_arg1_1_8 =
  (match _lh_null_arg1_1_8 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_8, _lh_null_LH_C_1_1_8) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d8 _lh_null_arg1_1_7 =
  (match _lh_null_arg1_1_7 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_7, _lh_null_LH_C_1_1_7) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d9 _lh_null_arg1_1_0 =
  (match _lh_null_arg1_1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1_0, _lh_null_LH_C_1_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec optw__d0 =
  63;;
let rec optw__d1 =
  63;;
let rec optw__d2 =
  63;;
let rec reverse_helper__d0 ls_5_9 a_1_5 =
  (match ls_5_9 with
    | `LH_C(h_8_1, t_8_3) -> 
      ((reverse_helper__d0 t_8_3) (`LH_C(h_8_1, a_1_5)))
    | `LH_N -> 
      a_1_5);;
let rec reverse_helper__d1 ls_4_2 a_1_4 =
  (match ls_4_2 with
    | `LH_C(h_5_9, t_6_1) -> 
      ((reverse_helper__d1 t_6_1) (`LH_C(h_5_9, a_1_4)))
    | `LH_N -> 
      a_1_4);;
let rec reverse_helper__d2 ls_4_0 a_1_3 =
  (match ls_4_0 with
    | `LH_C(h_5_6, t_5_8) -> 
      ((reverse_helper__d2 t_5_8) (`LH_C(h_5_6, a_1_3)))
    | `LH_N -> 
      a_1_3);;
let rec single__d0 _lh_single_arg1_6 =
  (match _lh_single_arg1_6 with
    | `LH_C(_lh_single_LH_C_0_6, _lh_single_LH_C_1_6) -> 
      (match _lh_single_LH_C_1_6 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d1 _lh_single_arg1_5 =
  (match _lh_single_arg1_5 with
    | `LH_C(_lh_single_LH_C_0_5, _lh_single_LH_C_1_5) -> 
      (match _lh_single_LH_C_1_5 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d2 _lh_single_arg1_3 =
  (match _lh_single_arg1_3 with
    | `LH_C(_lh_single_LH_C_0_3, _lh_single_LH_C_1_3) -> 
      (match _lh_single_LH_C_1_3 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d3 _lh_single_arg1_2 =
  (match _lh_single_arg1_2 with
    | `LH_C(_lh_single_LH_C_0_2, _lh_single_LH_C_1_2) -> 
      (match _lh_single_LH_C_1_2 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d4 _lh_single_arg1_7 =
  (match _lh_single_arg1_7 with
    | `LH_C(_lh_single_LH_C_0_7, _lh_single_LH_C_1_7) -> 
      (match _lh_single_LH_C_1_7 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d5 _lh_single_arg1_4 =
  (match _lh_single_arg1_4 with
    | `LH_C(_lh_single_LH_C_0_4, _lh_single_LH_C_1_4) -> 
      (match _lh_single_LH_C_1_4 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec single__d6 _lh_single_arg1_1 =
  (match _lh_single_arg1_1 with
    | `LH_C(_lh_single_LH_C_0_1, _lh_single_LH_C_1_1) -> 
      (match _lh_single_LH_C_1_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec snd3__d0 _lh_snd3_arg1_2 =
  (match _lh_snd3_arg1_2 with
    | `LH_P3(_lh_snd3_LH_P3_0_2, _lh_snd3_LH_P3_1_2, _lh_snd3_LH_P3_2_2) -> 
      _lh_snd3_LH_P3_1_2
    | _ -> 
      (failwith "error"));;
let rec snd3__d1 _lh_snd3_arg1_3 =
  (match _lh_snd3_arg1_3 with
    | `LH_P3(_lh_snd3_LH_P3_0_3, _lh_snd3_LH_P3_1_3, _lh_snd3_LH_P3_2_3) -> 
      _lh_snd3_LH_P3_1_3
    | _ -> 
      (failwith "error"));;
let rec snd3__d2 _lh_snd3_arg1_1 =
  (match _lh_snd3_arg1_1 with
    | `LH_P3(_lh_snd3_LH_P3_0_1, _lh_snd3_LH_P3_1_1, _lh_snd3_LH_P3_2_1) -> 
      _lh_snd3_LH_P3_1_1
    | _ -> 
      (failwith "error"));;
let rec tail__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      t_2_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      t_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_7_8, t_8_0) -> 
      t_8_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_7, t_3_9) -> 
      t_3_9
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0 n_5 ls_3_3 =
  (if (n_5 > 0) then
    (match ls_3_3 with
      | `LH_C(h_4_3, t_4_5) -> 
        (`LH_C(h_4_3, ((take__d0 (n_5 - 1)) t_4_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_7 ls_4_5 =
  (if (n_7 > 0) then
    (match ls_4_5 with
      | `LH_C(h_6_2, t_6_4) -> 
        (`LH_C(h_6_2, ((take__d1 (n_7 - 1)) t_6_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_4 ls_3_0 =
  (if (n_4 > 0) then
    (match ls_3_0 with
      | `LH_C(h_3_6, t_3_8) -> 
        (`LH_C(h_3_6, ((take__d2 (n_4 - 1)) t_3_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d3 n_6 ls_3_4 =
  (if (n_6 > 0) then
    (match ls_3_4 with
      | `LH_C(h_4_4, t_4_6) -> 
        (`LH_C(h_4_4, ((take__d3 (n_6 - 1)) t_4_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec thd3__d0 _lh_thd3_arg1_2 =
  (match _lh_thd3_arg1_2 with
    | `LH_P3(_lh_thd3_LH_P3_0_2, _lh_thd3_LH_P3_1_2, _lh_thd3_LH_P3_2_2) -> 
      _lh_thd3_LH_P3_2_2
    | _ -> 
      (failwith "error"));;
let rec thd3__d1 _lh_thd3_arg1_1 =
  (match _lh_thd3_arg1_1 with
    | `LH_P3(_lh_thd3_LH_P3_0_1, _lh_thd3_LH_P3_1_1, _lh_thd3_LH_P3_2_1) -> 
      _lh_thd3_LH_P3_2_1
    | _ -> 
      (failwith "error"));;
let rec thd3__d2 _lh_thd3_arg1_3 =
  (match _lh_thd3_arg1_3 with
    | `LH_P3(_lh_thd3_LH_P3_0_3, _lh_thd3_LH_P3_1_3, _lh_thd3_LH_P3_2_3) -> 
      _lh_thd3_LH_P3_2_3
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_7_6, t_7_8) -> 
      ((mappend__d0 h_7_6) (concat__d0 t_7_8))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_4_0, t_4_2) -> 
      ((mappend__d1 h_4_0) (concat__d1 t_4_2))
    | `LH_N -> 
      (`LH_N))
and cons'__d0 _lh_cons'_arg1_3 _lh_cons'_arg2_3 =
  (match _lh_cons'_arg2_3 with
    | `LH_P2(_lh_cons'_LH_P2_0_3, _lh_cons'_LH_P2_1_3) -> 
      (if (not (null__d1 _lh_cons'_LH_P2_1_3)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_3, _lh_cons'_LH_P2_0_3)), _lh_cons'_LH_P2_1_3))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_3, (`LH_N))), _lh_cons'_LH_P2_0_3)))
    | _ -> 
      (failwith "error"))
and cons'__d1 _lh_cons'_arg1_1 _lh_cons'_arg2_1 =
  (match _lh_cons'_arg2_1 with
    | `LH_P2(_lh_cons'_LH_P2_0_1, _lh_cons'_LH_P2_1_1) -> 
      (if (not (null__d2 _lh_cons'_LH_P2_1_1)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_1, _lh_cons'_LH_P2_0_1)), _lh_cons'_LH_P2_1_1))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_1, (`LH_N))), _lh_cons'_LH_P2_0_1)))
    | _ -> 
      (failwith "error"))
and cons'__d2 _lh_cons'_arg1_2 _lh_cons'_arg2_2 =
  (match _lh_cons'_arg2_2 with
    | `LH_P2(_lh_cons'_LH_P2_0_2, _lh_cons'_LH_P2_1_2) -> 
      (if (not (null__d3 _lh_cons'_LH_P2_1_2)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_2, _lh_cons'_LH_P2_0_2)), _lh_cons'_LH_P2_1_2))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_2, (`LH_N))), _lh_cons'_LH_P2_0_2)))
    | _ -> 
      (failwith "error"))
and cost_tl__d0 _lh_cost_tl_arg1_2 =
  (snd3__d0 _lh_cost_tl_arg1_2)
and cost_tl__d1 _lh_cost_tl_arg1_1 =
  (snd3__d1 _lh_cost_tl_arg1_1)
and cost_tl__d2 _lh_cost_tl_arg1_3 =
  (snd3__d2 _lh_cost_tl_arg1_3)
and fmt__d0 _lh_fmt_arg1_1 =
  ((fun _lh_funcomp_x_1_8 -> 
    ((fun _lh_funcomp_x_1_9 -> 
      (unparse__d0 ((map__d0 (fun _lh_funcomp_x_2_0 -> 
        (par3__d0 (concat__d0 _lh_funcomp_x_2_0)))) _lh_funcomp_x_1_9))) (parse__d0 _lh_funcomp_x_1_8))) _lh_fmt_arg1_1)
and format__d0 _lh_format_arg1_1 _lh_format_arg2_1 =
  (match _lh_format_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      let rec break_2 = (fun _lh_break_arg1_4 _lh_break_arg2_4 _lh_break_arg3_1 -> 
        (if (_lh_break_arg1_4 = _lh_break_arg2_4) then
          (`LH_C((`LH_N), _lh_break_arg3_1))
        else
          (`LH_C((`LH_C(_lh_break_arg2_4, (head__d1_d6 _lh_break_arg3_1))), (tail__d3 _lh_break_arg3_1)))))
      and start_1 = (fun _lh_start_arg1_1 _lh_start_arg2_1 -> 
        (((break_2 _lh_start_arg1_1) _lh_start_arg2_1) (`LH_C((`LH_N), (`LH_N)))))
      in (((fold1__d1 (break_2 _lh_format_arg1_1)) (start_1 _lh_format_arg1_1)) _lh_format_arg2_1))
and head'__d0 _lh_head'_arg1_1 =
  (match _lh_head'_arg1_1 with
    | `LH_P2(_lh_head'_LH_P2_0_1, _lh_head'_LH_P2_1_1) -> 
      (if (not (null__d4 _lh_head'_LH_P2_0_1)) then
        (head__d4 _lh_head'_LH_P2_0_1)
      else
        (head__d5 _lh_head'_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and head'__d1 _lh_head'_arg1_2 =
  (match _lh_head'_arg1_2 with
    | `LH_P2(_lh_head'_LH_P2_0_2, _lh_head'_LH_P2_1_2) -> 
      (if (not (null__d5 _lh_head'_LH_P2_0_2)) then
        (head__d6 _lh_head'_LH_P2_0_2)
      else
        (head__d7 _lh_head'_LH_P2_1_2))
    | _ -> 
      (failwith "error"))
and init'__d0 _lh_init'_arg1_1 =
  (match _lh_init'_arg1_1 with
    | `LH_P2(_lh_init'_LH_P2_0_2, _lh_init'_LH_P2_1_2) -> 
      (if (null__d6 _lh_init'_LH_P2_1_2) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single__d0 _lh_init'_LH_P2_1_2) then
          (let rec _lh_matchIdent_8 = ((splitAt__d0 ((length__d1 _lh_init'_LH_P2_0_2) / 2)) _lh_init'_LH_P2_0_2) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_init'_LH_P2_0_3, _lh_init'_LH_P2_1_3) -> 
                (`LH_P2(_lh_init'_LH_P2_0_3, (reverse__d0 _lh_init'_LH_P2_1_3)))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2(_lh_init'_LH_P2_0_2, (tail__d0 _lh_init'_LH_P2_1_2)))))
    | _ -> 
      (failwith "error"))
and init'__d1 _lh_init'_arg1_2 =
  (match _lh_init'_arg1_2 with
    | `LH_P2(_lh_init'_LH_P2_0_4, _lh_init'_LH_P2_1_4) -> 
      (if (null__d7 _lh_init'_LH_P2_1_4) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single__d1 _lh_init'_LH_P2_1_4) then
          (let rec _lh_matchIdent_1_5 = ((splitAt__d1 ((length__d2 _lh_init'_LH_P2_0_4) / 2)) _lh_init'_LH_P2_0_4) in
            (match _lh_matchIdent_1_5 with
              | `LH_P2(_lh_init'_LH_P2_0_5, _lh_init'_LH_P2_1_5) -> 
                (`LH_P2(_lh_init'_LH_P2_0_5, (reverse__d1 _lh_init'_LH_P2_1_5)))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2(_lh_init'_LH_P2_0_4, (tail__d1 _lh_init'_LH_P2_1_4)))))
    | _ -> 
      (failwith "error"))
and last'__d0 _lh_last'_arg1_3 =
  (match _lh_last'_arg1_3 with
    | `LH_P2(_lh_last'_LH_P2_0_3, _lh_last'_LH_P2_1_3) -> 
      (if (not (null__d0 _lh_last'_LH_P2_1_3)) then
        (head__d1 _lh_last'_LH_P2_1_3)
      else
        (head__d2 _lh_last'_LH_P2_0_3))
    | _ -> 
      (failwith "error"))
and last'__d1 _lh_last'_arg1_5 =
  (match _lh_last'_arg1_5 with
    | `LH_P2(_lh_last'_LH_P2_0_5, _lh_last'_LH_P2_1_5) -> 
      (if (not (null__d8 _lh_last'_LH_P2_1_5)) then
        (head__d8 _lh_last'_LH_P2_1_5)
      else
        (head__d9 _lh_last'_LH_P2_0_5))
    | _ -> 
      (failwith "error"))
and last'__d2 _lh_last'_arg1_4 =
  (match _lh_last'_arg1_4 with
    | `LH_P2(_lh_last'_LH_P2_0_4, _lh_last'_LH_P2_1_4) -> 
      (if (not (null__d9 _lh_last'_LH_P2_1_4)) then
        (head__d1_d0 _lh_last'_LH_P2_1_4)
      else
        (head__d1_d1 _lh_last'_LH_P2_0_4))
    | _ -> 
      (failwith "error"))
and last'__d3 _lh_last'_arg1_1 =
  (match _lh_last'_arg1_1 with
    | `LH_P2(_lh_last'_LH_P2_0_1, _lh_last'_LH_P2_1_1) -> 
      (if (not (null__d1_d0 _lh_last'_LH_P2_1_1)) then
        (head__d1_d2 _lh_last'_LH_P2_1_1)
      else
        (head__d1_d3 _lh_last'_LH_P2_0_1))
    | _ -> 
      (failwith "error"))
and last'__d4 _lh_last'_arg1_2 =
  (match _lh_last'_arg1_2 with
    | `LH_P2(_lh_last'_LH_P2_0_2, _lh_last'_LH_P2_1_2) -> 
      (if (not (null__d1_d1 _lh_last'_LH_P2_1_2)) then
        (head__d1_d4 _lh_last'_LH_P2_1_2)
      else
        (head__d1_d5 _lh_last'_LH_P2_0_2))
    | _ -> 
      (failwith "error"))
and len_tl__d0 _lh_len_tl_arg1_2 =
  (thd3__d0 _lh_len_tl_arg1_2)
and len_tl__d1 _lh_len_tl_arg1_1 =
  (thd3__d1 _lh_len_tl_arg1_1)
and lines__d0 _lh_lines_arg1_1 =
  (let rec _lh_matchIdent_1_2 = ((break__d0 (fun x_1_1 -> 
    (x_1_1 = '|'))) _lh_lines_arg1_1) in
    (match _lh_matchIdent_1_2 with
      | `LH_P2(_lh_lines_LH_P2_0_1, _lh_lines_LH_P2_1_1) -> 
        (`LH_C(_lh_lines_LH_P2_0_1, (let rec _lh_matchIdent_1_3 = _lh_lines_LH_P2_1_1 in
          (match _lh_matchIdent_1_3 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_1, _lh_lines_LH_C_1_1) -> 
              (lines__d0 _lh_lines_LH_C_1_1)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")))
and par3__d0 _lh_par3_arg1_1 =
  (let rec zs_1 = (((scan1__d0 stepr__d0) startr__d0) ((map__d1 length__d0) _lh_par3_arg1_1)) in
    ((tile__d0 _lh_par3_arg1_1) (`LH_P2(((map__d2 (fun _lh_funcomp_x_1_6 -> 
      ((fun _lh_funcomp_x_1_7 -> 
        (len_tl__d0 (last'__d0 _lh_funcomp_x_1_7))) (fst3__d0 _lh_funcomp_x_1_6)))) zs_1), (thd3__d2 (head__d0 zs_1))))))
and paras__d0 _lh_paras_arg1_1 =
  ((fun _lh_funcomp_x_2_3 -> 
    ((filter__d0 (fun x_1_3 -> 
      ((`LH_N) <> x_1_3))) ((format__d0 (`LH_N)) _lh_funcomp_x_2_3))) _lh_paras_arg1_1)
and parse__d0 _lh_parse_arg1_1 =
  ((fun _lh_funcomp_x_2_4 -> 
    ((fun _lh_funcomp_x_2_5 -> 
      (paras__d0 ((map__d3 words__d0) _lh_funcomp_x_2_5))) (lines__d0 _lh_funcomp_x_2_4))) _lh_parse_arg1_1)
and reverse__d0 ls_4_6 =
  ((reverse_helper__d0 ls_4_6) (`LH_N))
and reverse__d1 ls_5_2 =
  ((reverse_helper__d1 ls_5_2) (`LH_N))
and reverse__d2 ls_6_0 =
  ((reverse_helper__d2 ls_6_0) (`LH_N))
and scan1__d0 _lh_scan1_arg1_1 _lh_scan1_arg2_1 =
  ((fold1__d0 (fun a_1_1 s_1 -> 
    (`LH_C(((_lh_scan1_arg1_1 a_1_1) (head__d3 s_1)), s_1)))) (fun a_1_2 -> 
    (`LH_C((_lh_scan1_arg2_1 a_1_2), (`LH_N)))))
and single'__d0 _lh_single'_arg1_2 =
  (match _lh_single'_arg1_2 with
    | `LH_P2(_lh_single'_LH_P2_0_2, _lh_single'_LH_P2_1_2) -> 
      (((null__d1_d2 _lh_single'_LH_P2_0_2) && (single__d2 _lh_single'_LH_P2_1_2)) || ((single__d3 _lh_single'_LH_P2_0_2) && (null__d1_d3 _lh_single'_LH_P2_1_2)))
    | _ -> 
      (failwith "error"))
and single'__d1 _lh_single'_arg1_1 =
  (match _lh_single'_arg1_1 with
    | `LH_P2(_lh_single'_LH_P2_0_1, _lh_single'_LH_P2_1_1) -> 
      (((null__d1_d4 _lh_single'_LH_P2_0_1) && (single__d4 _lh_single'_LH_P2_1_1)) || ((single__d5 _lh_single'_LH_P2_0_1) && (null__d1_d5 _lh_single'_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and splitAt__d0 _lh_splitAt_arg1_1 _lh_splitAt_arg2_1 =
  (`LH_P2(((take__d0 _lh_splitAt_arg1_1) _lh_splitAt_arg2_1), ((drop__d0 _lh_splitAt_arg1_1) _lh_splitAt_arg2_1)))
and splitAt__d1 _lh_splitAt_arg1_3 _lh_splitAt_arg2_3 =
  (`LH_P2(((take__d1 _lh_splitAt_arg1_3) _lh_splitAt_arg2_3), ((drop__d1 _lh_splitAt_arg1_3) _lh_splitAt_arg2_3)))
and splitAt__d2 _lh_splitAt_arg1_2 _lh_splitAt_arg2_2 =
  (`LH_P2(((take__d2 _lh_splitAt_arg1_2) _lh_splitAt_arg2_2), ((drop__d2 _lh_splitAt_arg1_2) _lh_splitAt_arg2_2)))
and splitAt__d3 _lh_splitAt_arg1_4 _lh_splitAt_arg2_4 =
  (`LH_P2(((take__d3 _lh_splitAt_arg1_4) _lh_splitAt_arg2_4), ((drop__d4 _lh_splitAt_arg1_4) _lh_splitAt_arg2_4)))
and startr__d0 _lh_startr_arg1_1 =
  (if (_lh_startr_arg1_1 <= maxw__d0) then
    (`LH_P3(((cons'__d0 (`LH_P3(0, 0, 0))) nil'__d0), _lh_startr_arg1_1, 1))
  else
    ((failwith "error") (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('r', (`LH_C('t', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))))
and stepr__d0 _lh_stepr_arg1_1 _lh_stepr_arg2_1 =
  (match _lh_stepr_arg2_1 with
    | `LH_P3(_lh_stepr_LH_P3_0_1, _lh_stepr_LH_P3_1_1, _lh_stepr_LH_P3_2_1) -> 
      (let rec tot_width_1 = ((_lh_stepr_arg1_1 + 1) + _lh_stepr_LH_P3_1_1) in
        (let rec tot_len_1 = (1 + _lh_stepr_LH_P3_2_1) in
          (let rec single_2 = (fun p_8 -> 
            ((len_tl__d1 p_8) = 0)) in
            (let rec width_hd_1 = (fun p_9 -> 
              (if (single_2 p_9) then
                tot_width_1
              else
                ((tot_width_1 - (width_tl__d0 p_9)) - 1))) in
              (let rec cost_2 = (fun p_1_0 -> 
                (if (single_2 p_1_0) then
                  0
                else
                  ((cost_tl__d0 p_1_0) + (let rec a_1_0 = (optw__d0 - (width_hd_1 p_1_0)) in
                    (a_1_0 * a_1_0))))) in
                (let rec old_width_hd_1 = (fun p_1_1 -> 
                  (if (single_2 p_1_1) then
                    _lh_stepr_LH_P3_1_1
                  else
                    ((_lh_stepr_LH_P3_1_1 - (width_tl__d1 p_1_1)) - 1))) in
                  (let rec new_2 = (fun p_1_2 -> 
                    (if (single_2 p_1_2) then
                      (`LH_P3(_lh_stepr_LH_P3_1_1, 0, _lh_stepr_LH_P3_2_1))
                    else
                      (`LH_P3(_lh_stepr_LH_P3_1_1, ((cost_tl__d1 p_1_2) + (let rec x_1_0 = (optw__d1 - (old_width_hd_1 p_1_2)) in
                        (x_1_0 * x_1_0))), _lh_stepr_LH_P3_2_1)))) in
                    (let rec trim_1 = (fun ps_pq_1 -> 
                      (if (null'__d0 ps_pq_1) then
                        ps_pq_1
                      else
                        (if (single'__d0 ps_pq_1) then
                          ps_pq_1
                        else
                          (let rec ps_p_2 = (init'__d0 ps_pq_1) in
                            (let rec q_3 = (last'__d1 ps_pq_1) in
                              (let rec p_1_3 = (last'__d2 ps_p_2) in
                                (if ((cost_2 p_1_3) <= (cost_2 q_3)) then
                                  (trim_1 ps_p_2)
                                else
                                  ps_pq_1))))))) in
                      (let rec drop_nofit_1 = (fun ps_p_3 -> 
                        (if (null'__d1 ps_p_3) then
                          ps_p_3
                        else
                          (if ((width_hd_1 (last'__d3 ps_p_3)) > maxw__d1) then
                            (drop_nofit_1 (init'__d1 ps_p_3))
                          else
                            ps_p_3))) in
                        (let rec bf_1 = (fun p_1_4 q_4 -> 
                          (let rec wqh_1 = (width_hd_1 q_4) in
                            (let rec rqh_1 = ((maxw__d2 - wqh_1) + 1) in
                              (if ((single_2 q_4) && ((cost_tl__d2 p_1_4) = 0)) then
                                ((min__d0 (optw__d2 - (width_hd_1 p_1_4))) rqh_1)
                              else
                                (if (single_2 q_4) then
                                  rqh_1
                                else
                                  ((min__d1 ((ceildiv__d0 ((cost_2 p_1_4) - (cost_2 q_4))) (2 * (wqh_1 - (width_hd_1 p_1_4))))) rqh_1)))))) in
                          (let rec myAdd_1 = (fun p_1_5 qr_rs_1 -> 
                            (if ((single'__d1 qr_rs_1) || (null'__d2 qr_rs_1)) then
                              ((cons'__d1 p_1_5) qr_rs_1)
                            else
                              (let rec q_5 = (head'__d0 qr_rs_1) in
                                (let rec r_rs_1 = (tail'__d0 qr_rs_1) in
                                  (let rec r_1 = (head'__d1 r_rs_1) in
                                    (if (((bf_1 p_1_5) q_5) <= ((bf_1 q_5) r_1)) then
                                      ((myAdd_1 p_1_5) r_rs_1)
                                    else
                                      ((cons'__d2 p_1_5) qr_rs_1))))))) in
                            (`LH_P3((trim_1 (drop_nofit_1 ((myAdd_1 (new_2 (last'__d4 _lh_stepr_LH_P3_0_1))) _lh_stepr_LH_P3_0_1))), tot_width_1, tot_len_1)))))))))))))
    | _ -> 
      (failwith "error"))
and tail'__d0 _lh_tail'_arg1_1 =
  (match _lh_tail'_arg1_1 with
    | `LH_P2(_lh_tail'_LH_P2_0_2, _lh_tail'_LH_P2_1_2) -> 
      (if (null__d1_d6 _lh_tail'_LH_P2_0_2) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single__d6 _lh_tail'_LH_P2_0_2) then
          (let rec _lh_matchIdent_1_4 = ((splitAt__d2 ((length__d3 _lh_tail'_LH_P2_1_2) / 2)) _lh_tail'_LH_P2_1_2) in
            (match _lh_matchIdent_1_4 with
              | `LH_P2(_lh_tail'_LH_P2_0_3, _lh_tail'_LH_P2_1_3) -> 
                (`LH_P2((reverse__d2 _lh_tail'_LH_P2_1_3), _lh_tail'_LH_P2_0_3))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2((tail__d2 _lh_tail'_LH_P2_0_2), _lh_tail'_LH_P2_1_2))))
    | _ -> 
      (failwith "error"))
and testPara_nofib__d0 _lh_testPara_nofib_arg1_1 =
  (if (null__d1_d7 (test__d0 0)) then
    (`LH_N)
  else
    (fmt__d0 (test__d1 0)))
and test__d0 _lh_test_arg1_1 =
  ((mappend__d7 ((mappend__d8 ((mappend__d9 ((mappend__d1_d0 ((mappend__d1_d1 ((mappend__d1_d2 ((mappend__d1_d3 ((mappend__d1_d4 ((mappend__d1_d5 (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C('s', (`LH_C('.', (`LH_C(' ', (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('.', (`LH_C(' ', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('m', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('g', (`LH_C('a', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('w', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('i', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C('|', (`LH_C(' ', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))
and test__d1 _lh_test_arg1_2 =
  ((mappend__d1_d6 ((mappend__d1_d7 ((mappend__d1_d8 ((mappend__d1_d9 ((mappend__d2_d0 ((mappend__d2_d1 ((mappend__d2_d2 ((mappend__d2_d3 ((mappend__d2_d4 (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C('s', (`LH_C('.', (`LH_C(' ', (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('.', (`LH_C(' ', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('m', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('g', (`LH_C('a', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('w', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('i', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C('|', (`LH_C(' ', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))
and tile__d0 _lh_tile_arg1_1 _lh_tile_arg2_1 =
  (match _lh_tile_arg2_1 with
    | `LH_P2(_lh_tile_LH_P2_0_2, _lh_tile_LH_P2_1_2) -> 
      (match _lh_tile_LH_P2_0_2 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_tile_LH_C_0_1, _lh_tile_LH_C_1_1) -> 
          (let rec l_3 = (_lh_tile_LH_P2_1_2 - _lh_tile_LH_C_0_1) in
            (let rec _lh_matchIdent_1_7 = ((splitAt__d3 l_3) _lh_tile_arg1_1) in
              (match _lh_matchIdent_1_7 with
                | `LH_P2(_lh_tile_LH_P2_0_3, _lh_tile_LH_P2_1_3) -> 
                  (`LH_C(_lh_tile_LH_P2_0_3, ((tile__d0 _lh_tile_LH_P2_1_3) (`LH_P2(((drop__d3 l_3) (`LH_C(_lh_tile_LH_C_0_1, _lh_tile_LH_C_1_1))), _lh_tile_LH_C_0_1)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unformat__d0 _lh_unformat_arg1_1 =
  ((fold1__d2 (fun xs_3_0 ys_3_0 -> 
    ((mappend__d3 ((mappend__d4 xs_3_0) (`LH_C(_lh_unformat_arg1_1, (`LH_N))))) ys_3_0))) (fun x_1_2 -> 
    x_1_2))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d1 ((map__d5 (fun l_2 -> 
    ((mappend__d2 l_2) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_1))
and unparas__d0 _lh_unparas_arg1_1 =
  ((unformat__d0 (`LH_N)) _lh_unparas_arg1_1)
and unparse__d0 _lh_unparse_arg1_1 =
  ((fun _lh_funcomp_x_2_1 -> 
    ((fun _lh_funcomp_x_2_2 -> 
      (unlines__d0 ((map__d4 unwords__d0) _lh_funcomp_x_2_2))) (unparas__d0 _lh_funcomp_x_2_1))) _lh_unparse_arg1_1)
and unwords__d0 _lh_unwords_arg1_1 =
  (match _lh_unwords_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_unwords_LH_C_0_1, _lh_unwords_LH_C_1_1) -> 
      (let rec go_1 = (fun _lh_go_arg1_1 -> 
        (match _lh_go_arg1_1 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_go_LH_C_0_1, _lh_go_LH_C_1_1) -> 
            (`LH_C(' ', ((mappend__d5 _lh_go_LH_C_0_1) (go_1 _lh_go_LH_C_1_1))))
          | _ -> 
            (failwith "error"))) in
        ((mappend__d6 _lh_unwords_LH_C_0_1) (go_1 _lh_unwords_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and width_tl__d0 _lh_width_tl_arg1_2 =
  (fst3__d1 _lh_width_tl_arg1_2)
and width_tl__d1 _lh_width_tl_arg1_1 =
  (fst3__d2 _lh_width_tl_arg1_1)
and words__d0 _lh_words_arg1_1 =
  (let rec _lh_matchIdent_9 = ((dropWhile__d0 isSpace__d0) _lh_words_arg1_1) in
    (match _lh_matchIdent_9 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1) -> 
        (let rec _lh_matchIdent_1_0 = ((break__d1 isSpace__d1) (`LH_C(_lh_words_LH_C_0_1, _lh_words_LH_C_1_1))) in
          (match _lh_matchIdent_1_0 with
            | `LH_P2(_lh_words_LH_P2_0_1, _lh_words_LH_P2_1_1) -> 
              (`LH_C(_lh_words_LH_P2_0_1, (words__d0 _lh_words_LH_P2_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
end;;

