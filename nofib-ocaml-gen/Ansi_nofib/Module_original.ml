
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec cls__d0 =
  (`LH_C('L', (`LH_N)));;
let rec copy__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy__d1 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec end__d0 _lh_end_arg1_1 =
  (`LH_N);;
let rec foldr__d0 f_1_3 i_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_3_9, t_4_1) -> 
      ((f_1_3 h_3_9) (((foldr__d0 f_1_3) i_3) t_4_1))
    | `LH_N -> 
      i_3);;
let rec length__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_3_8, t_4_0) -> 
      (1 + (length__d0 t_4_0))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_4_6, t_4_8) -> 
      (1 + (length__d1 t_4_8))
    | `LH_N -> 
      0);;
let rec mappend__d0 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C(h_4_4, ((mappend__d0 t_4_6) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d1 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d1 t_3_2) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1_d0 t_2_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1_d1 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d2 xs_4_2 ys_4_2 =
  (match xs_4_2 with
    | `LH_C(h_6_0, t_6_2) -> 
      (`LH_C(h_6_0, ((mappend__d1_d2 t_6_2) ys_4_2)))
    | `LH_N -> 
      ys_4_2);;
let rec mappend__d1_d3 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend__d1_d3 t_4_9) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d1_d4 xs_4_7 ys_4_7 =
  (match xs_4_7 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C(h_6_6, ((mappend__d1_d4 t_6_8) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend__d1_d5 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d1_d5 t_3_1) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d1_d6 xs_4_3 ys_4_3 =
  (match xs_4_3 with
    | `LH_C(h_6_1, t_6_3) -> 
      (`LH_C(h_6_1, ((mappend__d1_d6 t_6_3) ys_4_3)))
    | `LH_N -> 
      ys_4_3);;
let rec mappend__d1_d7 xs_3_7 ys_3_7 =
  (match xs_3_7 with
    | `LH_C(h_5_4, t_5_6) -> 
      (`LH_C(h_5_4, ((mappend__d1_d7 t_5_6) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend__d1_d8 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_4_3, t_4_5) -> 
      (`LH_C(h_4_3, ((mappend__d1_d8 t_4_5) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d1_d9 xs_5_1 ys_5_1 =
  (match xs_5_1 with
    | `LH_C(h_7_0, t_7_2) -> 
      (`LH_C(h_7_0, ((mappend__d1_d9 t_7_2) ys_5_1)))
    | `LH_N -> 
      ys_5_1);;
let rec mappend__d2 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend__d2 t_3_5) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d2_d0 xs_4_1 ys_4_1 =
  (match xs_4_1 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C(h_5_9, ((mappend__d2_d0 t_6_1) ys_4_1)))
    | `LH_N -> 
      ys_4_1);;
let rec mappend__d2_d1 xs_3_9 ys_3_9 =
  (match xs_3_9 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend__d2_d1 t_5_8) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend__d2_d2 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend__d2_d2 t_5_1) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend__d2_d3 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d2_d3 t_2_9) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d2_d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d2_d4 t_2_5) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2_d5 xs_4_6 ys_4_6 =
  (match xs_4_6 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C(h_6_5, ((mappend__d2_d5 t_6_7) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend__d2_d6 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d2_d6 t_5_3) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d2_d7 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend__d2_d7 t_4_2) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d2_d8 xs_4_4 ys_4_4 =
  (match xs_4_4 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend__d2_d8 t_6_5) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec mappend__d2_d9 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d2_d9 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d3 xs_4_0 ys_4_0 =
  (match xs_4_0 with
    | `LH_C(h_5_8, t_6_0) -> 
      (`LH_C(h_5_8, ((mappend__d3 t_6_0) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec mappend__d3_d0 xs_4_8 ys_4_8 =
  (match xs_4_8 with
    | `LH_C(h_6_7, t_6_9) -> 
      (`LH_C(h_6_7, ((mappend__d3_d0 t_6_9) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec mappend__d3_d1 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d3_d1 t_4_7) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d3_d2 xs_4_9 ys_4_9 =
  (match xs_4_9 with
    | `LH_C(h_6_8, t_7_0) -> 
      (`LH_C(h_6_8, ((mappend__d3_d2 t_7_0) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend__d3_d3 xs_5_0 ys_5_0 =
  (match xs_5_0 with
    | `LH_C(h_6_9, t_7_1) -> 
      (`LH_C(h_6_9, ((mappend__d3_d3 t_7_1) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec mappend__d3_d4 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_3_4, t_3_6) -> 
      (`LH_C(h_3_4, ((mappend__d3_d4 t_3_6) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d3_d5 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d3_d5 t_3_3) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d3_d6 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C(h_3_5, ((mappend__d3_d6 t_3_7) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d3_d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d3_d7 t_2_6) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d3_d8 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d3_d8 t_5_0) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d3_d9 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d3_d9 t_2_8) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d4 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d4 t_3_0) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d4_d0 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d4_d0 t_4_3) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d4_d1 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d4_d1 t_4_4) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d4_d2 xs_5_2 ys_5_2 =
  (match xs_5_2 with
    | `LH_C(h_7_1, t_7_3) -> 
      (`LH_C(h_7_1, ((mappend__d4_d2 t_7_3) ys_5_2)))
    | `LH_N -> 
      ys_5_2);;
let rec mappend__d4_d3 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d4_d3 t_3_9) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d4_d4 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d4_d4 t_3_4) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d5 xs_4_5 ys_4_5 =
  (match xs_4_5 with
    | `LH_C(h_6_4, t_6_6) -> 
      (`LH_C(h_6_4, ((mappend__d5 t_6_6) ys_4_5)))
    | `LH_N -> 
      ys_4_5);;
let rec mappend__d6 xs_3_6 ys_3_6 =
  (match xs_3_6 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d6 t_5_4) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec mappend__d7 xs_3_8 ys_3_8 =
  (match xs_3_8 with
    | `LH_C(h_5_5, t_5_7) -> 
      (`LH_C(h_5_5, ((mappend__d7 t_5_7) ys_3_8)))
    | `LH_N -> 
      ys_3_8);;
let rec mappend__d8 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend__d8 t_3_8) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d9 xs_5_3 ys_5_3 =
  (match xs_5_3 with
    | `LH_C(h_7_2, t_7_4) -> 
      (`LH_C(h_7_2, ((mappend__d9 t_7_4) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec readChar__d0 _lh_readChar_arg1_3 _lh_readChar_arg2_3 _lh_readChar_arg3_3 =
  (match _lh_readChar_arg3_3 with
    | `LH_N -> 
      (_lh_readChar_arg1_3 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_3, _lh_readChar_LH_C_1_3) -> 
      ((_lh_readChar_arg2_3 _lh_readChar_LH_C_0_3) _lh_readChar_LH_C_1_3)
    | _ -> 
      (failwith "error"));;
let rec readChar__d1 _lh_readChar_arg1_1 _lh_readChar_arg2_1 _lh_readChar_arg3_1 =
  (match _lh_readChar_arg3_1 with
    | `LH_N -> 
      (_lh_readChar_arg1_1 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1, _lh_readChar_LH_C_1_1) -> 
      ((_lh_readChar_arg2_1 _lh_readChar_LH_C_0_1) _lh_readChar_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec readChar__d2 _lh_readChar_arg1_2 _lh_readChar_arg2_2 _lh_readChar_arg3_2 =
  (match _lh_readChar_arg3_2 with
    | `LH_N -> 
      (_lh_readChar_arg1_2 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_2, _lh_readChar_LH_C_1_2) -> 
      ((_lh_readChar_arg2_2 _lh_readChar_LH_C_0_2) _lh_readChar_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec reverse_helper__d0 ls_2_2 a_5 =
  (match ls_2_2 with
    | `LH_C(h_5_0, t_5_2) -> 
      ((reverse_helper__d0 t_5_2) (`LH_C(h_5_0, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_helper__d1 ls_2_5 a_6 =
  (match ls_2_5 with
    | `LH_C(h_6_2, t_6_4) -> 
      ((reverse_helper__d1 t_6_4) (`LH_C(h_6_2, a_6)))
    | `LH_N -> 
      a_6);;
let rec tail__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_5_3, t_5_5) -> 
      t_5_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_5_7, t_5_9) -> 
      t_5_9
    | `LH_N -> 
      (failwith "error"));;
let rec writeChar__d0 _lh_writeChar_arg1_1 _lh_writeChar_arg2_1 _lh_writeChar_arg3_1 =
  (`LH_C(_lh_writeChar_arg1_1, (_lh_writeChar_arg2_1 _lh_writeChar_arg3_1)));;
let rec writeChar__d1 _lh_writeChar_arg1_2 _lh_writeChar_arg2_2 _lh_writeChar_arg3_2 =
  (`LH_C(_lh_writeChar_arg1_2, (_lh_writeChar_arg2_2 _lh_writeChar_arg3_2)));;
let rec writeChar__d2 _lh_writeChar_arg1_3 _lh_writeChar_arg2_3 _lh_writeChar_arg3_3 =
  (`LH_C(_lh_writeChar_arg1_3, (_lh_writeChar_arg2_3 _lh_writeChar_arg3_3)));;
let rec writeChar__d3 _lh_writeChar_arg1_4 _lh_writeChar_arg2_4 _lh_writeChar_arg3_4 =
  (`LH_C(_lh_writeChar_arg1_4, (_lh_writeChar_arg2_4 _lh_writeChar_arg3_4)));;
let rec at__d0 _lh_at_arg1_2 _lh_at_arg2_2 =
  (match _lh_at_arg1_2 with
    | `LH_P2(_lh_at_LH_P2_0_2, _lh_at_LH_P2_1_2) -> 
      ((mappend__d2 ((goto__d0 _lh_at_LH_P2_0_2) _lh_at_LH_P2_1_2)) _lh_at_arg2_2)
    | _ -> 
      (failwith "error"))
and at__d1 _lh_at_arg1_4 _lh_at_arg2_4 =
  (match _lh_at_arg1_4 with
    | `LH_P2(_lh_at_LH_P2_0_4, _lh_at_LH_P2_1_4) -> 
      ((mappend__d5 ((goto__d1 _lh_at_LH_P2_0_4) _lh_at_LH_P2_1_4)) _lh_at_arg2_4)
    | _ -> 
      (failwith "error"))
and at__d2 _lh_at_arg1_6 _lh_at_arg2_6 =
  (match _lh_at_arg1_6 with
    | `LH_P2(_lh_at_LH_P2_0_6, _lh_at_LH_P2_1_6) -> 
      ((mappend__d8 ((goto__d2 _lh_at_LH_P2_0_6) _lh_at_LH_P2_1_6)) _lh_at_arg2_6)
    | _ -> 
      (failwith "error"))
and at__d3 _lh_at_arg1_3 _lh_at_arg2_3 =
  (match _lh_at_arg1_3 with
    | `LH_P2(_lh_at_LH_P2_0_3, _lh_at_LH_P2_1_3) -> 
      ((mappend__d1_d1 ((goto__d3 _lh_at_LH_P2_0_3) _lh_at_LH_P2_1_3)) _lh_at_arg2_3)
    | _ -> 
      (failwith "error"))
and at__d4 _lh_at_arg1_1 _lh_at_arg2_1 =
  (match _lh_at_arg1_1 with
    | `LH_P2(_lh_at_LH_P2_0_1, _lh_at_LH_P2_1_1) -> 
      ((mappend__d1_d4 ((goto__d4 _lh_at_LH_P2_0_1) _lh_at_LH_P2_1_1)) _lh_at_arg2_1)
    | _ -> 
      (failwith "error"))
and at__d5 _lh_at_arg1_5 _lh_at_arg2_5 =
  (match _lh_at_arg1_5 with
    | `LH_P2(_lh_at_LH_P2_0_5, _lh_at_LH_P2_1_5) -> 
      ((mappend__d1_d7 ((goto__d5 _lh_at_LH_P2_0_5) _lh_at_LH_P2_1_5)) _lh_at_arg2_5)
    | _ -> 
      (failwith "error"))
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_5, t_2_7) -> 
      ((mappend__d4_d3 h_2_5) (concat__d0 t_2_7))
    | `LH_N -> 
      (`LH_N))
and delete__d0 _lh_delete_arg1_1 _lh_delete_arg2_1 _lh_delete_arg3_1 _lh_delete_arg4_1 =
  (if (_lh_delete_arg1_1 > 0) then
    ((writeString__d1 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop__d0 (_lh_delete_arg1_1 - 1)) (tail__d0 _lh_delete_arg2_1)) _lh_delete_arg3_1) _lh_delete_arg4_1))
  else
    (ringBell__d0 ((((loop__d0 0) (`LH_N)) _lh_delete_arg3_1) _lh_delete_arg4_1)))
and delete__d1 _lh_delete_arg1_2 _lh_delete_arg2_2 _lh_delete_arg3_2 _lh_delete_arg4_2 =
  (if (_lh_delete_arg1_2 > 0) then
    ((writeString__d2 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop__d0 (_lh_delete_arg1_2 - 1)) (tail__d1 _lh_delete_arg2_2)) _lh_delete_arg3_2) _lh_delete_arg4_2))
  else
    (ringBell__d1 ((((loop__d0 0) (`LH_N)) _lh_delete_arg3_2) _lh_delete_arg4_2)))
and goto__d0 _lh_goto_arg1_7 _lh_goto_arg2_7 =
  (`LH_C('E', (`LH_C('[', ((mappend__d0 (string_of_int _lh_goto_arg2_7)) ((mappend__d1 (`LH_C(';', (string_of_int _lh_goto_arg1_7)))) (`LH_C('H', (`LH_N)))))))))
and goto__d1 _lh_goto_arg1_8 _lh_goto_arg2_8 =
  (`LH_C('E', (`LH_C('[', ((mappend__d3 (string_of_int _lh_goto_arg2_8)) ((mappend__d4 (`LH_C(';', (string_of_int _lh_goto_arg1_8)))) (`LH_C('H', (`LH_N)))))))))
and goto__d1_d0 _lh_goto_arg1_3 _lh_goto_arg2_3 =
  (`LH_C('E', (`LH_C('[', ((mappend__d3_d8 (string_of_int _lh_goto_arg2_3)) ((mappend__d3_d9 (`LH_C(';', (string_of_int _lh_goto_arg1_3)))) (`LH_C('H', (`LH_N)))))))))
and goto__d2 _lh_goto_arg1_4 _lh_goto_arg2_4 =
  (`LH_C('E', (`LH_C('[', ((mappend__d6 (string_of_int _lh_goto_arg2_4)) ((mappend__d7 (`LH_C(';', (string_of_int _lh_goto_arg1_4)))) (`LH_C('H', (`LH_N)))))))))
and goto__d3 _lh_goto_arg1_5 _lh_goto_arg2_5 =
  (`LH_C('E', (`LH_C('[', ((mappend__d9 (string_of_int _lh_goto_arg2_5)) ((mappend__d1_d0 (`LH_C(';', (string_of_int _lh_goto_arg1_5)))) (`LH_C('H', (`LH_N)))))))))
and goto__d4 _lh_goto_arg1_2 _lh_goto_arg2_2 =
  (`LH_C('E', (`LH_C('[', ((mappend__d1_d2 (string_of_int _lh_goto_arg2_2)) ((mappend__d1_d3 (`LH_C(';', (string_of_int _lh_goto_arg1_2)))) (`LH_C('H', (`LH_N)))))))))
and goto__d5 _lh_goto_arg1_6 _lh_goto_arg2_6 =
  (`LH_C('E', (`LH_C('[', ((mappend__d1_d5 (string_of_int _lh_goto_arg2_6)) ((mappend__d1_d6 (`LH_C(';', (string_of_int _lh_goto_arg1_6)))) (`LH_C('H', (`LH_N)))))))))
and goto__d6 _lh_goto_arg1_1 _lh_goto_arg2_1 =
  (`LH_C('E', (`LH_C('[', ((mappend__d2_d2 (string_of_int _lh_goto_arg2_1)) ((mappend__d2_d3 (`LH_C(';', (string_of_int _lh_goto_arg1_1)))) (`LH_C('H', (`LH_N)))))))))
and goto__d7 _lh_goto_arg1_1_1 _lh_goto_arg2_1_1 =
  (`LH_C('E', (`LH_C('[', ((mappend__d2_d7 (string_of_int _lh_goto_arg2_1_1)) ((mappend__d2_d8 (`LH_C(';', (string_of_int _lh_goto_arg1_1_1)))) (`LH_C('H', (`LH_N)))))))))
and goto__d8 _lh_goto_arg1_1_0 _lh_goto_arg2_1_0 =
  (`LH_C('E', (`LH_C('[', ((mappend__d3_d0 (string_of_int _lh_goto_arg2_1_0)) ((mappend__d3_d1 (`LH_C(';', (string_of_int _lh_goto_arg1_1_0)))) (`LH_C('H', (`LH_N)))))))))
and goto__d9 _lh_goto_arg1_9 _lh_goto_arg2_9 =
  (`LH_C('E', (`LH_C('[', ((mappend__d3_d4 (string_of_int _lh_goto_arg2_9)) ((mappend__d3_d5 (`LH_C(';', (string_of_int _lh_goto_arg1_9)))) (`LH_C('H', (`LH_N)))))))))
and highlight__d0 _lh_highlight_arg1_1 =
  ((mappend__d1_d8 ((mappend__d1_d9 (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('7', (`LH_C('m', (`LH_N)))))))))))))) _lh_highlight_arg1_1)) (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('0', (`LH_C('m', (`LH_N))))))))))))))
and loop__d0 _lh_loop_arg1_1 _lh_loop_arg2_1 _lh_loop_arg3_1 _lh_loop_arg4_1 =
  ((readChar__d2 ((return__d0 _lh_loop_arg2_1) _lh_loop_arg4_1)) (fun c_3 -> 
    (let rec _lh_matchIdent_1 = c_3 in
      (match _lh_matchIdent_1 with
        | 'B' -> 
          ((((delete__d0 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)
        | 'D' -> 
          ((((delete__d1 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)
        | '`' -> 
          ((return__d1 _lh_loop_arg2_1) _lh_loop_arg4_1)
        | _ -> 
          (if (_lh_loop_arg1_1 < _lh_loop_arg3_1) then
            ((writeChar__d3 _lh_matchIdent_1) ((((loop__d0 (_lh_loop_arg1_1 + 1)) (`LH_C(_lh_matchIdent_1, _lh_loop_arg2_1))) _lh_loop_arg3_1) _lh_loop_arg4_1))
          else
            (ringBell__d2 ((((loop__d0 _lh_loop_arg1_1) _lh_loop_arg2_1) _lh_loop_arg3_1) _lh_loop_arg4_1)))))))
and moveTo__d0 _lh_moveTo_arg1_1 =
  (match _lh_moveTo_arg1_1 with
    | `LH_P2(_lh_moveTo_LH_P2_0_1, _lh_moveTo_LH_P2_1_1) -> 
      (writeString__d0 ((goto__d6 _lh_moveTo_LH_P2_0_1) _lh_moveTo_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and moveTo__d1 _lh_moveTo_arg1_2 =
  (match _lh_moveTo_arg1_2 with
    | `LH_P2(_lh_moveTo_LH_P2_0_2, _lh_moveTo_LH_P2_1_2) -> 
      (writeString__d3 ((goto__d7 _lh_moveTo_LH_P2_0_2) _lh_moveTo_LH_P2_1_2))
    | _ -> 
      (failwith "error"))
and pressAnyKey__d0 _lh_pressAnyKey_arg1_1 =
  ((readChar__d0 _lh_pressAnyKey_arg1_1) (fun c_4 -> 
    _lh_pressAnyKey_arg1_1))
and pressAnyKey__d1 _lh_pressAnyKey_arg1_2 =
  ((readChar__d1 _lh_pressAnyKey_arg1_2) (fun c_5 -> 
    _lh_pressAnyKey_arg1_2))
and program__d0 _lh_program_arg1_1 =
  ((writes__d0 (`LH_C(cls__d0, (`LH_C(((at__d2 (`LH_P2(17, 5))) (highlight__d0 (`LH_C('D', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at__d1 (`LH_P2(48, 5))) (`LH_C('V', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('1', (`LH_C('.', (`LH_C('0', (`LH_N)))))))))))))))))))))))), (`LH_C(((at__d0 (`LH_P2(17, 7))) (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at__d5 (`LH_P2(17, 8))) (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C('-', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at__d4 (`LH_P2(17, 9))) (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('H', (`LH_C('u', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('s', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at__d3 (`LH_P2(17, 11))) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('k', (`LH_C('e', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))) (pressAnyKey__d0 ((((promptReadAt__d0 (`LH_P2(17, 15))) 18) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))) (fun name_1 -> 
    (let rec reply_1 = ((mappend__d2_d0 ((mappend__d2_d1 (`LH_C('H', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C('o', (`LH_C(' ', (`LH_N)))))))))))))) name_1)) (`LH_C('!', (`LH_N)))) in
      (((writeAt__d2 (`LH_P2((40 - ((length__d0 reply_1) / 2)), 18))) reply_1) ((moveTo__d0 (`LH_P2(1, 23))) ((writeString__d7 (`LH_C('I', (`LH_C('m', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('`', (`LH_N)))))))))))))))))))))))))))))) (pressAnyKey__d1 end__d0)))))))))
and promptReadAt__d0 _lh_promptReadAt_arg1_1 _lh_promptReadAt_arg2_1 _lh_promptReadAt_arg3_1 _lh_promptReadAt_arg4_1 =
  (match _lh_promptReadAt_arg1_1 with
    | `LH_P2(_lh_promptReadAt_LH_P2_0_1, _lh_promptReadAt_LH_P2_1_1) -> 
      (((writeAt__d1 (`LH_P2(_lh_promptReadAt_LH_P2_0_1, _lh_promptReadAt_LH_P2_1_1))) _lh_promptReadAt_arg3_1) (((readAt__d0 (`LH_P2((_lh_promptReadAt_LH_P2_0_1 + (length__d1 _lh_promptReadAt_arg3_1)), _lh_promptReadAt_LH_P2_1_1))) _lh_promptReadAt_arg2_1) _lh_promptReadAt_arg4_1))
    | _ -> 
      (failwith "error"))
and readAt__d0 _lh_readAt_arg1_1 _lh_readAt_arg2_1 _lh_readAt_arg3_1 =
  (match _lh_readAt_arg1_1 with
    | `LH_P2(_lh_readAt_LH_P2_0_1, _lh_readAt_LH_P2_1_1) -> 
      (((writeAt__d0 (`LH_P2(_lh_readAt_LH_P2_0_1, _lh_readAt_LH_P2_1_1))) ((copy__d1 _lh_readAt_arg2_1) '_')) ((moveTo__d1 (`LH_P2(_lh_readAt_LH_P2_0_1, _lh_readAt_LH_P2_1_1))) ((((loop__d0 0) (`LH_N)) _lh_readAt_arg2_1) _lh_readAt_arg3_1)))
    | _ -> 
      (failwith "error"))
and return__d0 _lh_return_arg1_2 _lh_return_arg2_2 =
  (_lh_return_arg2_2 (reverse__d0 _lh_return_arg1_2))
and return__d1 _lh_return_arg1_1 _lh_return_arg2_1 =
  (_lh_return_arg2_1 (reverse__d1 _lh_return_arg1_1))
and reverse__d0 ls_2_6 =
  ((reverse_helper__d0 ls_2_6) (`LH_N))
and reverse__d1 ls_2_7 =
  ((reverse_helper__d1 ls_2_7) (`LH_N))
and ringBell__d0 _lh_ringBell_arg1_2 _lh_ringBell_arg2_2 =
  (((writeChar__d0 'B') _lh_ringBell_arg1_2) _lh_ringBell_arg2_2)
and ringBell__d1 _lh_ringBell_arg1_3 _lh_ringBell_arg2_3 =
  (((writeChar__d1 'B') _lh_ringBell_arg1_3) _lh_ringBell_arg2_3)
and ringBell__d2 _lh_ringBell_arg1_1 _lh_ringBell_arg2_1 =
  (((writeChar__d2 'B') _lh_ringBell_arg1_1) _lh_ringBell_arg2_1)
and testAnsi_nofib__d0 _lh_testAnsi_nofib_arg1_1 =
  ((((foldr__d0 (fun f_1_4 g_1 _lh_funcomp_x_1 -> 
    (f_1_4 (g_1 _lh_funcomp_x_1)))) (fun x_3 -> 
    x_3)) ((copy__d0 _lh_testAnsi_nofib_arg1_1) (program__d0 0))) (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))))))))
and writeAt__d0 _lh_writeAt_arg1_3 _lh_writeAt_arg2_3 =
  (match _lh_writeAt_arg1_3 with
    | `LH_P2(_lh_writeAt_LH_P2_0_3, _lh_writeAt_LH_P2_1_3) -> 
      (writeString__d4 ((mappend__d3_d2 ((goto__d8 _lh_writeAt_LH_P2_0_3) _lh_writeAt_LH_P2_1_3)) _lh_writeAt_arg2_3))
    | _ -> 
      (failwith "error"))
and writeAt__d1 _lh_writeAt_arg1_2 _lh_writeAt_arg2_2 =
  (match _lh_writeAt_arg1_2 with
    | `LH_P2(_lh_writeAt_LH_P2_0_2, _lh_writeAt_LH_P2_1_2) -> 
      (writeString__d5 ((mappend__d3_d6 ((goto__d9 _lh_writeAt_LH_P2_0_2) _lh_writeAt_LH_P2_1_2)) _lh_writeAt_arg2_2))
    | _ -> 
      (failwith "error"))
and writeAt__d2 _lh_writeAt_arg1_1 _lh_writeAt_arg2_1 =
  (match _lh_writeAt_arg1_1 with
    | `LH_P2(_lh_writeAt_LH_P2_0_1, _lh_writeAt_LH_P2_1_1) -> 
      (writeString__d6 ((mappend__d4_d0 ((goto__d1_d0 _lh_writeAt_LH_P2_0_1) _lh_writeAt_LH_P2_1_1)) _lh_writeAt_arg2_1))
    | _ -> 
      (failwith "error"))
and writeString__d0 _lh_writeString_arg1_5 _lh_writeString_arg2_5 _lh_writeString_arg3_5 =
  ((mappend__d2_d4 _lh_writeString_arg1_5) (_lh_writeString_arg2_5 _lh_writeString_arg3_5))
and writeString__d1 _lh_writeString_arg1_1 _lh_writeString_arg2_1 _lh_writeString_arg3_1 =
  ((mappend__d2_d5 _lh_writeString_arg1_1) (_lh_writeString_arg2_1 _lh_writeString_arg3_1))
and writeString__d2 _lh_writeString_arg1_2 _lh_writeString_arg2_2 _lh_writeString_arg3_2 =
  ((mappend__d2_d6 _lh_writeString_arg1_2) (_lh_writeString_arg2_2 _lh_writeString_arg3_2))
and writeString__d3 _lh_writeString_arg1_6 _lh_writeString_arg2_6 _lh_writeString_arg3_6 =
  ((mappend__d2_d9 _lh_writeString_arg1_6) (_lh_writeString_arg2_6 _lh_writeString_arg3_6))
and writeString__d4 _lh_writeString_arg1_4 _lh_writeString_arg2_4 _lh_writeString_arg3_4 =
  ((mappend__d3_d3 _lh_writeString_arg1_4) (_lh_writeString_arg2_4 _lh_writeString_arg3_4))
and writeString__d5 _lh_writeString_arg1_8 _lh_writeString_arg2_8 _lh_writeString_arg3_8 =
  ((mappend__d3_d7 _lh_writeString_arg1_8) (_lh_writeString_arg2_8 _lh_writeString_arg3_8))
and writeString__d6 _lh_writeString_arg1_7 _lh_writeString_arg2_7 _lh_writeString_arg3_7 =
  ((mappend__d4_d1 _lh_writeString_arg1_7) (_lh_writeString_arg2_7 _lh_writeString_arg3_7))
and writeString__d7 _lh_writeString_arg1_9 _lh_writeString_arg2_9 _lh_writeString_arg3_9 =
  ((mappend__d4_d2 _lh_writeString_arg1_9) (_lh_writeString_arg2_9 _lh_writeString_arg3_9))
and writeString__d8 _lh_writeString_arg1_3 _lh_writeString_arg2_3 _lh_writeString_arg3_3 =
  ((mappend__d4_d4 _lh_writeString_arg1_3) (_lh_writeString_arg2_3 _lh_writeString_arg3_3))
and writes__d0 _lh_writes_arg1_1 =
  (writeString__d8 (concat__d0 _lh_writes_arg1_1));;
end;;

