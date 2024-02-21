

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec copy_lh__d1 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_lh__d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec foldr_lh__d1 f_0 i_0 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_9, t_1_9) -> 
      ((f_0 h_1_9) (((foldr_lh__d1 f_0) i_0) t_1_9))
    | `LH_N -> 
      i_0);;
let rec cls_lh__d1 =
  (`LH_C('L', (`LH_N)));;
let rec mappend_lh__d1_d4 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d1_d4 t_2) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec goto_lh__d2 _lh_goto_arg1_7 _lh_goto_arg2_7 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_7)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_7)) (`LH_C('H', (`LH_N)))))))))));;
let rec mappend_lh__d4 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C(h_1_3, ((mappend_lh__d4 t_1_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec at_lh__d2 _lh_at_arg1_4 _lh_at_arg2_4 =
  (match _lh_at_arg1_4 with
    | `LH_P2(_lh_at_LH_P2_0_4, _lh_at_LH_P2_1_4) -> 
      ((mappend_lh__d4 ((goto_lh__d2 _lh_at_LH_P2_0_4) _lh_at_LH_P2_1_4)) _lh_at_arg2_4)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend_lh__d3 t_1_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec goto_lh__d1 _lh_goto_arg1_8 _lh_goto_arg2_8 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_8)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_8)) (`LH_C('H', (`LH_N)))))))))));;
let rec at_lh__d1 _lh_at_arg1_5 _lh_at_arg2_5 =
  (match _lh_at_arg1_5 with
    | `LH_P2(_lh_at_LH_P2_0_5, _lh_at_LH_P2_1_5) -> 
      ((mappend_lh__d3 ((goto_lh__d1 _lh_at_LH_P2_0_5) _lh_at_LH_P2_1_5)) _lh_at_arg2_5)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d5 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_lh__d5 t_1_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec writeString_lh__d1 _lh_writeString_arg1_4 _lh_writeString_arg2_4 _lh_writeString_arg3_4 =
  ((mappend_lh__d5 _lh_writeString_arg1_4) (_lh_writeString_arg2_4 _lh_writeString_arg3_4));;
let rec mappend_lh__d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d2 t_1_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec goto_lh__d8 _lh_goto_arg1_1 _lh_goto_arg2_1 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_1)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_1)) (`LH_C('H', (`LH_N)))))))))));;
let rec mappend_lh__d1_d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d1_d0 t_6) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec at_lh__d6 _lh_at_arg1_0 _lh_at_arg2_0 =
  (match _lh_at_arg1_0 with
    | `LH_P2(_lh_at_LH_P2_0_0, _lh_at_LH_P2_1_0) -> 
      ((mappend_lh__d1_d0 ((goto_lh__d8 _lh_at_LH_P2_0_0) _lh_at_LH_P2_1_0)) _lh_at_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec length_lh__d2 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_5, t_1_5) -> 
      (1 + (length_lh__d2 t_1_5))
    | `LH_N -> 
      0);;
let rec mappend_lh__d1_d3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d1_d3 t_3) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec writeString_lh__d5 _lh_writeString_arg1_0 _lh_writeString_arg2_0 _lh_writeString_arg3_0 =
  ((mappend_lh__d1_d4 _lh_writeString_arg1_0) (_lh_writeString_arg2_0 _lh_writeString_arg3_0));;
let rec goto_lh__d9 _lh_goto_arg1_0 _lh_goto_arg2_0 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_0)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_0)) (`LH_C('H', (`LH_N)))))))))));;
let rec writeAt_lh__d2 _lh_writeAt_arg1_1 _lh_writeAt_arg2_1 =
  (match _lh_writeAt_arg1_1 with
    | `LH_P2(_lh_writeAt_LH_P2_0_1, _lh_writeAt_LH_P2_1_1) -> 
      (writeString_lh__d5 ((mappend_lh__d1_d3 ((goto_lh__d9 _lh_writeAt_LH_P2_0_1) _lh_writeAt_LH_P2_1_1)) _lh_writeAt_arg2_1))
    | _ -> 
      (failwith "error"));;
let rec copy_lh__d2 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh__d2 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec writeAt_lh__d3 _lh_writeAt_arg1_0 _lh_writeAt_arg2_0 =
  (match _lh_writeAt_arg1_0 with
    | `LH_P2(_lh_writeAt_LH_P2_0_0, _lh_writeAt_LH_P2_1_0) -> 
      (writeString_lh__d5 ((mappend_lh__d1_d4 ((goto_lh__d9 _lh_writeAt_LH_P2_0_0) _lh_writeAt_LH_P2_1_0)) _lh_writeAt_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec moveTo_lh__d2 _lh_moveTo_arg1_0 =
  (match _lh_moveTo_arg1_0 with
    | `LH_P2(_lh_moveTo_LH_P2_0_0, _lh_moveTo_LH_P2_1_0) -> 
      (writeString_lh__d5 ((goto_lh__d9 _lh_moveTo_LH_P2_0_0) _lh_moveTo_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec writeChar_lh__d1 _lh_writeChar_arg1_0 _lh_writeChar_arg2_0 _lh_writeChar_arg3_0 =
  (`LH_C(_lh_writeChar_arg1_0, (_lh_writeChar_arg2_0 _lh_writeChar_arg3_0)));;
let rec reverse_helper_lh__d1 ls_0 a_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((reverse_helper_lh__d1 t_0) (`LH_C(h_0, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d1 ls_2 =
  ((reverse_helper_lh__d1 ls_2) (`LH_N));;
let rec return_lh__d1 _lh_return_arg1_0 _lh_return_arg2_0 =
  (_lh_return_arg2_0 (reverse_lh__d1 _lh_return_arg1_0));;
let rec tail_lh__d1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      t_1
    | `LH_N -> 
      (failwith "error"));;
let rec ringBell_lh__d1 _lh_ringBell_arg1_0 _lh_ringBell_arg2_0 =
  (((writeChar_lh__d1 'B') _lh_ringBell_arg1_0) _lh_ringBell_arg2_0);;
let rec readChar_lh__d2 _lh_readChar_arg1_0 _lh_readChar_arg2_0 _lh_readChar_arg3_0 =
  (match _lh_readChar_arg3_0 with
    | `LH_N -> 
      (_lh_readChar_arg1_0 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_0, _lh_readChar_LH_C_1_0) -> 
      ((_lh_readChar_arg2_0 _lh_readChar_LH_C_0_0) _lh_readChar_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec delete_lh__d1 _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 _lh_delete_arg4_0 =
  (if (_lh_delete_arg1_0 > 0) then
    ((writeString_lh__d5 (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_lh__d1 (_lh_delete_arg1_0 - 1)) (tail_lh__d1 _lh_delete_arg2_0)) _lh_delete_arg3_0) _lh_delete_arg4_0))
  else
    (ringBell_lh__d1 ((((loop_lh__d1 0) (`LH_N)) _lh_delete_arg3_0) _lh_delete_arg4_0)))
and
loop_lh__d1 _lh_loop_arg1_0 _lh_loop_arg2_0 _lh_loop_arg3_0 _lh_loop_arg4_0 =
  ((readChar_lh__d2 ((return_lh__d1 _lh_loop_arg2_0) _lh_loop_arg4_0)) (fun c_0 -> 
    (let rec _lh_matchIdent_0 = c_0 in
      (match _lh_matchIdent_0 with
        | 'B' -> 
          ((((delete_lh__d1 _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)
        | 'D' -> 
          ((((delete_lh__d1 _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)
        | '`' -> 
          ((return_lh__d1 _lh_loop_arg2_0) _lh_loop_arg4_0)
        | _ -> 
          (if (_lh_loop_arg1_0 < _lh_loop_arg3_0) then
            ((writeChar_lh__d1 _lh_matchIdent_0) ((((loop_lh__d1 (_lh_loop_arg1_0 + 1)) (`LH_C(_lh_matchIdent_0, _lh_loop_arg2_0))) _lh_loop_arg3_0) _lh_loop_arg4_0))
          else
            (ringBell_lh__d1 ((((loop_lh__d1 _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)))))));;
let rec readAt_lh__d1 _lh_readAt_arg1_0 _lh_readAt_arg2_0 _lh_readAt_arg3_0 =
  (match _lh_readAt_arg1_0 with
    | `LH_P2(_lh_readAt_LH_P2_0_0, _lh_readAt_LH_P2_1_0) -> 
      (((writeAt_lh__d3 (`LH_P2(_lh_readAt_LH_P2_0_0, _lh_readAt_LH_P2_1_0))) ((copy_lh__d2 _lh_readAt_arg2_0) '_')) ((moveTo_lh__d2 (`LH_P2(_lh_readAt_LH_P2_0_0, _lh_readAt_LH_P2_1_0))) ((((loop_lh__d1 0) (`LH_N)) _lh_readAt_arg2_0) _lh_readAt_arg3_0)))
    | _ -> 
      (failwith "error"));;
let rec promptReadAt_lh__d1 _lh_promptReadAt_arg1_0 _lh_promptReadAt_arg2_0 _lh_promptReadAt_arg3_0 _lh_promptReadAt_arg4_0 =
  (match _lh_promptReadAt_arg1_0 with
    | `LH_P2(_lh_promptReadAt_LH_P2_0_0, _lh_promptReadAt_LH_P2_1_0) -> 
      (((writeAt_lh__d2 (`LH_P2(_lh_promptReadAt_LH_P2_0_0, _lh_promptReadAt_LH_P2_1_0))) _lh_promptReadAt_arg3_0) (((readAt_lh__d1 (`LH_P2((_lh_promptReadAt_LH_P2_0_0 + (length_lh__d2 _lh_promptReadAt_arg3_0)), _lh_promptReadAt_LH_P2_1_0))) _lh_promptReadAt_arg2_0) _lh_promptReadAt_arg4_0))
    | _ -> 
      (failwith "error"));;
let rec end_lh__d1 _lh_end_arg1_0 =
  (`LH_N);;
let rec mappend_lh__d6 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d6 t_1_0) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec writeString_lh__d4 _lh_writeString_arg1_1 _lh_writeString_arg2_1 _lh_writeString_arg3_1 =
  ((mappend_lh__d1_d4 _lh_writeString_arg1_1) (_lh_writeString_arg2_1 _lh_writeString_arg3_1));;
let rec goto_lh__d4 _lh_goto_arg1_5 _lh_goto_arg2_5 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_5)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_5)) (`LH_C('H', (`LH_N)))))))))));;
let rec writeAt_lh__d1 _lh_writeAt_arg1_2 _lh_writeAt_arg2_2 =
  (match _lh_writeAt_arg1_2 with
    | `LH_P2(_lh_writeAt_LH_P2_0_2, _lh_writeAt_LH_P2_1_2) -> 
      (writeString_lh__d4 ((mappend_lh__d6 ((goto_lh__d4 _lh_writeAt_LH_P2_0_2) _lh_writeAt_LH_P2_1_2)) _lh_writeAt_arg2_2))
    | _ -> 
      (failwith "error"));;
let rec length_lh__d1 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_7, t_1_7) -> 
      (1 + (length_lh__d1 t_1_7))
    | `LH_N -> 
      0);;
let rec readChar_lh__d1 _lh_readChar_arg1_1 _lh_readChar_arg2_1 _lh_readChar_arg3_1 =
  (match _lh_readChar_arg3_1 with
    | `LH_N -> 
      (_lh_readChar_arg1_1 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_1, _lh_readChar_LH_C_1_1) -> 
      ((_lh_readChar_arg2_1 _lh_readChar_LH_C_0_1) _lh_readChar_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec pressAnyKey_lh__d1 _lh_pressAnyKey_arg1_1 =
  ((readChar_lh__d1 _lh_pressAnyKey_arg1_1) (fun c_2 -> 
    _lh_pressAnyKey_arg1_1));;
let rec mappend_lh__d8 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d8 t_8) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec goto_lh__d6 _lh_goto_arg1_3 _lh_goto_arg2_3 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_3)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_3)) (`LH_C('H', (`LH_N)))))))))));;
let rec at_lh__d4 _lh_at_arg1_2 _lh_at_arg2_2 =
  (match _lh_at_arg1_2 with
    | `LH_P2(_lh_at_LH_P2_0_2, _lh_at_LH_P2_1_2) -> 
      ((mappend_lh__d8 ((goto_lh__d6 _lh_at_LH_P2_0_2) _lh_at_LH_P2_1_2)) _lh_at_arg2_2)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_lh__d1 t_1_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_lh__d1_d2 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d1_d2 t_4) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec mappend_lh__d1_d1 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1_d1 t_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec highlight_lh__d1 _lh_highlight_arg1_0 =
  ((mappend_lh__d1_d2 (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('7', (`LH_C('m', (`LH_N)))))))))))))) ((mappend_lh__d1_d1 _lh_highlight_arg1_0) (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('0', (`LH_C('m', (`LH_N)))))))))))))));;
let rec writeString_lh__d2 _lh_writeString_arg1_3 _lh_writeString_arg2_3 _lh_writeString_arg3_3 =
  ((mappend_lh__d1_d4 _lh_writeString_arg1_3) (_lh_writeString_arg2_3 _lh_writeString_arg3_3));;
let rec goto_lh__d3 _lh_goto_arg1_6 _lh_goto_arg2_6 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_6)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_6)) (`LH_C('H', (`LH_N)))))))))));;
let rec moveTo_lh__d1 _lh_moveTo_arg1_1 =
  (match _lh_moveTo_arg1_1 with
    | `LH_P2(_lh_moveTo_LH_P2_0_1, _lh_moveTo_LH_P2_1_1) -> 
      (writeString_lh__d2 ((goto_lh__d3 _lh_moveTo_LH_P2_0_1) _lh_moveTo_LH_P2_1_1))
    | _ -> 
      (failwith "error"));;
let rec pressAnyKey_lh__d2 _lh_pressAnyKey_arg1_0 =
  ((readChar_lh__d2 _lh_pressAnyKey_arg1_0) (fun c_1 -> 
    _lh_pressAnyKey_arg1_0));;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_1_1, t_1_1) -> 
      ((mappend_lh__d1_d4 h_1_1) (concat_lh__d1 t_1_1))
    | `LH_N -> 
      (`LH_N));;
let rec writeString_lh__d3 _lh_writeString_arg1_2 _lh_writeString_arg2_2 _lh_writeString_arg3_2 =
  ((mappend_lh__d1_d4 _lh_writeString_arg1_2) (_lh_writeString_arg2_2 _lh_writeString_arg3_2));;
let rec writes_lh__d1 _lh_writes_arg1_0 =
  (writeString_lh__d3 (concat_lh__d1 _lh_writes_arg1_0));;
let rec goto_lh__d7 _lh_goto_arg1_2 _lh_goto_arg2_2 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_2)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_2)) (`LH_C('H', (`LH_N)))))))))));;
let rec mappend_lh__d9 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d9 t_7) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec at_lh__d5 _lh_at_arg1_1 _lh_at_arg2_1 =
  (match _lh_at_arg1_1 with
    | `LH_P2(_lh_at_LH_P2_0_1, _lh_at_LH_P2_1_1) -> 
      ((mappend_lh__d9 ((goto_lh__d7 _lh_at_LH_P2_0_1) _lh_at_LH_P2_1_1)) _lh_at_arg2_1)
    | _ -> 
      (failwith "error"));;
let rec goto_lh__d5 _lh_goto_arg1_4 _lh_goto_arg2_4 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg2_4)) (`LH_C(';', ((mappend_lh__d1_d4 (string_of_int _lh_goto_arg1_4)) (`LH_C('H', (`LH_N)))))))))));;
let rec mappend_lh__d7 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d7 t_9) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec at_lh__d3 _lh_at_arg1_3 _lh_at_arg2_3 =
  (match _lh_at_arg1_3 with
    | `LH_P2(_lh_at_LH_P2_0_3, _lh_at_LH_P2_1_3) -> 
      ((mappend_lh__d7 ((goto_lh__d5 _lh_at_LH_P2_0_3) _lh_at_LH_P2_1_3)) _lh_at_arg2_3)
    | _ -> 
      (failwith "error"));;
let rec program_lh__d1 _lh_program_arg1_0 =
  (((writes_lh__d1 (`LH_C(cls_lh__d1, (`LH_C(((at_lh__d5 (`LH_P2(17, 5))) (highlight_lh__d1 (`LH_C('D', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_lh__d6 (`LH_P2(48, 5))) (`LH_C('V', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('1', (`LH_C('.', (`LH_C('0', (`LH_N)))))))))))))))))))))))), (`LH_C(((at_lh__d4 (`LH_P2(17, 7))) (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_lh__d2 (`LH_P2(17, 8))) (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C('-', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_lh__d1 (`LH_P2(17, 9))) (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('H', (`LH_C('u', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('s', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C(((at_lh__d3 (`LH_P2(17, 11))) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('k', (`LH_C('e', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))) (pressAnyKey_lh__d1 ((((promptReadAt_lh__d1 (`LH_P2(17, 15))) 18) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))) (fun name_0 -> 
    (let rec reply_0 = ((mappend_lh__d2 (`LH_C('H', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C('o', (`LH_C(' ', (`LH_N)))))))))))))) ((mappend_lh__d1 name_0) (`LH_C('!', (`LH_N))))) in
      (((writeAt_lh__d1 (`LH_P2((40 - ((length_lh__d1 reply_0) / 2)), 18))) reply_0) ((moveTo_lh__d1 (`LH_P2(1, 23))) ((writeString_lh__d1 (`LH_C('I', (`LH_C('m', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('`', (`LH_N)))))))))))))))))))))))))))))) (pressAnyKey_lh__d2 end_lh__d1))))))))) _lh_program_arg1_0);;
let rec testAnsi_nofib_lh__d1 _lh_testAnsi_nofib_arg1_0 =
  ((((foldr_lh__d1 (fun f_1 g_0 _lh_funcomp_x_0 -> 
    (f_1 (g_0 _lh_funcomp_x_0)))) (fun x_0 -> 
    x_0)) ((copy_lh__d1 _lh_testAnsi_nofib_arg1_0) program_lh__d1)) (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))))))));;
let run () = 1 + (Obj.magic ((testAnsi_nofib_lh__d1 8)));
end;;

