

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec at_lh _lh_at_arg1_0 _lh_at_arg2_0 =
  (_lh_at_arg1_0 _lh_at_arg2_0);;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh t_1_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (lss_0 99);;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_8, t_8) -> 
      (1 + (length_lh t_8))
    | `LH_N -> 
      0);;
let rec readChar_lh _lh_readChar_arg1_0 _lh_readChar_arg2_0 _lh_readChar_arg3_0 =
  (match _lh_readChar_arg3_0 with
    | `LH_N -> 
      (_lh_readChar_arg1_0 (`LH_N))
    | `LH_C(_lh_readChar_LH_C_0_0, _lh_readChar_LH_C_1_0) -> 
      ((_lh_readChar_arg2_0 _lh_readChar_LH_C_0_0) _lh_readChar_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec end_lh _lh_end_arg1_0 =
  (`LH_N);;
let rec cls_lh =
  (`LH_C('L', (`LH_N)));;
let rec promptReadAt_lh _lh_promptReadAt_arg1_0 _lh_promptReadAt_arg2_1 _lh_promptReadAt_arg3_1 _lh_promptReadAt_arg4_1 =
  (((_lh_promptReadAt_arg1_0 _lh_promptReadAt_arg2_1) _lh_promptReadAt_arg3_1) _lh_promptReadAt_arg4_1);;
let rec readAt_lh _lh_readAt_arg1_0 _lh_readAt_arg2_1 _lh_readAt_arg3_1 =
  ((_lh_readAt_arg1_0 _lh_readAt_arg2_1) _lh_readAt_arg3_1);;
let rec reverse_helper_lh ls_4 a_0 =
  (match ls_4 with
    | `LH_C(h_1_1, t_1_1) -> 
      ((reverse_helper_lh t_1_1) (`LH_C(h_1_1, a_0)))
    | `LH_N -> 
      a_0);;
let rec writeChar_lh _lh_writeChar_arg1_0 _lh_writeChar_arg2_0 _lh_writeChar_arg3_0 =
  (`LH_C(_lh_writeChar_arg1_0, (_lh_writeChar_arg2_0 _lh_writeChar_arg3_0)));;
let rec tail_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec writeAt_lh _lh_writeAt_arg1_0 _lh_writeAt_arg2_3 =
  (_lh_writeAt_arg1_0 _lh_writeAt_arg2_3);;
let rec moveTo_lh _lh_moveTo_arg1_0 =
  (_lh_moveTo_arg1_0 99);;
let rec foldr_lh f_0 i_0 ls_3 =
  (match ls_3 with
    | `LH_C(h_9, t_9) -> 
      ((f_0 h_9) (((foldr_lh f_0) i_0) t_9))
    | `LH_N -> 
      i_0);;
let rec writeString_lh _lh_writeString_arg1_0 _lh_writeString_arg2_0 _lh_writeString_arg3_0 =
  ((mappend_lh _lh_writeString_arg1_0) (_lh_writeString_arg2_0 _lh_writeString_arg3_0));;
let rec goto_lh _lh_goto_arg1_0 _lh_goto_arg2_0 =
  (`LH_C('E', (`LH_C('[', ((mappend_lh (string_of_int _lh_goto_arg2_0)) ((mappend_lh (`LH_C(';', (string_of_int _lh_goto_arg1_0)))) (`LH_C('H', (`LH_N)))))))));;
let rec highlight_lh _lh_highlight_arg1_0 =
  ((mappend_lh ((mappend_lh (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('7', (`LH_C('m', (`LH_N)))))))))))))) _lh_highlight_arg1_0)) (`LH_C('E', (`LH_C('S', (`LH_C('C', (`LH_C('[', (`LH_C('0', (`LH_C('m', (`LH_N))))))))))))));;
let rec pressAnyKey_lh _lh_pressAnyKey_arg1_0 =
  ((readChar_lh _lh_pressAnyKey_arg1_0) (fun c_0 -> 
    _lh_pressAnyKey_arg1_0));;
let rec reverse_lh ls_1 =
  ((reverse_helper_lh ls_1) (`LH_N));;
let rec ringBell_lh _lh_ringBell_arg1_0 _lh_ringBell_arg2_0 =
  (((writeChar_lh 'B') _lh_ringBell_arg1_0) _lh_ringBell_arg2_0);;
let rec writes_lh _lh_writes_arg1_0 =
  (writeString_lh (concat_lh _lh_writes_arg1_0));;
let rec return_lh _lh_return_arg1_0 _lh_return_arg2_0 =
  (_lh_return_arg2_0 (reverse_lh _lh_return_arg1_0));;
let rec delete_lh _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 _lh_delete_arg4_0 =
  (if (_lh_delete_arg1_0 > 0) then
    ((writeString_lh (`LH_C('B', (`LH_C('S', (`LH_C('_', (`LH_C('B', (`LH_C('S', (`LH_N)))))))))))) ((((loop_lh (_lh_delete_arg1_0 - 1)) (tail_lh _lh_delete_arg2_0)) _lh_delete_arg3_0) _lh_delete_arg4_0))
  else
    (ringBell_lh ((((loop_lh 0) (`LH_N)) _lh_delete_arg3_0) _lh_delete_arg4_0)))
and
loop_lh _lh_loop_arg1_0 _lh_loop_arg2_0 _lh_loop_arg3_0 _lh_loop_arg4_0 =
  ((readChar_lh ((return_lh _lh_loop_arg2_0) _lh_loop_arg4_0)) (fun c_1 -> 
    (let rec _lh_matchIdent_0 = c_1 in
      (match _lh_matchIdent_0 with
        | 'B' -> 
          ((((delete_lh _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)
        | 'D' -> 
          ((((delete_lh _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)
        | '`' -> 
          ((return_lh _lh_loop_arg2_0) _lh_loop_arg4_0)
        | _ -> 
          (if (_lh_loop_arg1_0 < _lh_loop_arg3_0) then
            ((writeChar_lh _lh_matchIdent_0) ((((loop_lh (_lh_loop_arg1_0 + 1)) (`LH_C(_lh_matchIdent_0, _lh_loop_arg2_0))) _lh_loop_arg3_0) _lh_loop_arg4_0))
          else
            (ringBell_lh ((((loop_lh _lh_loop_arg1_0) _lh_loop_arg2_0) _lh_loop_arg3_0) _lh_loop_arg4_0)))))));;
let rec program_lh _lh_program_arg1_0 =
  ((writes_lh (let rec t_1 = (let rec t_2 = (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (fun _lh_dummy_0 -> 
    (`LH_N)) in
    (let rec h_1 = ((at_lh (let rec _lh_at_LH_P2_1_0 = 11 in
      (let rec _lh_at_LH_P2_0_0 = 17 in
        (fun _lh_at_arg2_1 -> 
          ((mappend_lh ((goto_lh _lh_at_LH_P2_0_0) _lh_at_LH_P2_1_0)) _lh_at_arg2_1))))) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('y', (`LH_C(' ', (`LH_C('k', (`LH_C('e', (`LH_C('y', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1 -> 
        ((mappend_lh h_1) (concat_lh t_7))))) in
    (let rec h_2 = ((at_lh (let rec _lh_at_LH_P2_1_1 = 9 in
      (let rec _lh_at_LH_P2_0_1 = 17 in
        (fun _lh_at_arg2_2 -> 
          ((mappend_lh ((goto_lh _lh_at_LH_P2_0_1) _lh_at_LH_P2_1_1)) _lh_at_arg2_2))))) (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('H', (`LH_C('u', (`LH_C('g', (`LH_C('s', (`LH_C(' ', (`LH_C('f', (`LH_C('u', (`LH_C('n', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('s', (`LH_C('y', (`LH_C('s', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('.', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2 -> 
        ((mappend_lh h_2) (concat_lh t_6))))) in
    (let rec h_3 = ((at_lh (let rec _lh_at_LH_P2_1_2 = 8 in
      (let rec _lh_at_LH_P2_0_2 = 17 in
        (fun _lh_at_arg2_3 -> 
          ((mappend_lh ((goto_lh _lh_at_LH_P2_0_2) _lh_at_LH_P2_1_2)) _lh_at_arg2_3))))) (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C('-', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C('s', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3 -> 
        ((mappend_lh h_3) (concat_lh t_5))))) in
    (let rec h_4 = ((at_lh (let rec _lh_at_LH_P2_1_3 = 7 in
      (let rec _lh_at_LH_P2_0_3 = 17 in
        (fun _lh_at_arg2_4 -> 
          ((mappend_lh ((goto_lh _lh_at_LH_P2_0_3) _lh_at_LH_P2_1_3)) _lh_at_arg2_4))))) (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('s', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4 -> 
        ((mappend_lh h_4) (concat_lh t_4))))) in
    (let rec h_5 = ((at_lh (let rec _lh_at_LH_P2_1_4 = 5 in
      (let rec _lh_at_LH_P2_0_4 = 48 in
        (fun _lh_at_arg2_5 -> 
          ((mappend_lh ((goto_lh _lh_at_LH_P2_0_4) _lh_at_LH_P2_1_4)) _lh_at_arg2_5))))) (`LH_C('V', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('1', (`LH_C('.', (`LH_C('0', (`LH_N)))))))))))))))))))))))) in
      (fun _lh_dummy_5 -> 
        ((mappend_lh h_5) (concat_lh t_3))))) in
    (let rec h_6 = ((at_lh (let rec _lh_at_LH_P2_1_5 = 5 in
      (let rec _lh_at_LH_P2_0_5 = 17 in
        (fun _lh_at_arg2_6 -> 
          ((mappend_lh ((goto_lh _lh_at_LH_P2_0_5) _lh_at_LH_P2_1_5)) _lh_at_arg2_6))))) (highlight_lh (`LH_C('D', (`LH_C('e', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_N))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6 -> 
        ((mappend_lh h_6) (concat_lh t_2))))) in
    (let rec h_7 = cls_lh in
      (fun _lh_dummy_7 -> 
        ((mappend_lh h_7) (concat_lh t_1)))))) (pressAnyKey_lh ((((promptReadAt_lh (let rec _lh_promptReadAt_LH_P2_1_0 = 15 in
    (let rec _lh_promptReadAt_LH_P2_0_0 = 17 in
      (fun _lh_promptReadAt_arg2_0 _lh_promptReadAt_arg3_0 _lh_promptReadAt_arg4_0 -> 
        (((writeAt_lh (let rec _lh_writeAt_LH_P2_1_0 = _lh_promptReadAt_LH_P2_1_0 in
          (let rec _lh_writeAt_LH_P2_0_0 = _lh_promptReadAt_LH_P2_0_0 in
            (fun _lh_writeAt_arg2_0 -> 
              (writeString_lh ((mappend_lh ((goto_lh _lh_writeAt_LH_P2_0_0) _lh_writeAt_LH_P2_1_0)) _lh_writeAt_arg2_0)))))) _lh_promptReadAt_arg3_0) (((readAt_lh (let rec _lh_readAt_LH_P2_1_0 = _lh_promptReadAt_LH_P2_1_0 in
          (let rec _lh_readAt_LH_P2_0_0 = (_lh_promptReadAt_LH_P2_0_0 + (length_lh _lh_promptReadAt_arg3_0)) in
            (fun _lh_readAt_arg2_0 _lh_readAt_arg3_0 -> 
              (((writeAt_lh (let rec _lh_writeAt_LH_P2_1_1 = _lh_readAt_LH_P2_1_0 in
                (let rec _lh_writeAt_LH_P2_0_1 = _lh_readAt_LH_P2_0_0 in
                  (fun _lh_writeAt_arg2_1 -> 
                    (writeString_lh ((mappend_lh ((goto_lh _lh_writeAt_LH_P2_0_1) _lh_writeAt_LH_P2_1_1)) _lh_writeAt_arg2_1)))))) ((copy_lh _lh_readAt_arg2_0) '_')) ((moveTo_lh (let rec _lh_moveTo_LH_P2_1_0 = _lh_readAt_LH_P2_1_0 in
                (let rec _lh_moveTo_LH_P2_0_0 = _lh_readAt_LH_P2_0_0 in
                  (fun _lh_dummy_8 -> 
                    (writeString_lh ((goto_lh _lh_moveTo_LH_P2_0_0) _lh_moveTo_LH_P2_1_0)))))) ((((loop_lh 0) (`LH_N)) _lh_readAt_arg2_0) _lh_readAt_arg3_0))))))) _lh_promptReadAt_arg2_0) _lh_promptReadAt_arg4_0)))))) 18) (`LH_C('P', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C('o', (`LH_C('u', (`LH_C('r', (`LH_C(' ', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))) (fun name_0 -> 
    (let rec reply_0 = ((mappend_lh ((mappend_lh (`LH_C('H', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C('o', (`LH_C(' ', (`LH_N)))))))))))))) name_0)) (`LH_C('!', (`LH_N)))) in
      (((writeAt_lh (let rec _lh_writeAt_LH_P2_1_2 = 18 in
        (let rec _lh_writeAt_LH_P2_0_2 = (40 - ((length_lh reply_0) / 2)) in
          (fun _lh_writeAt_arg2_2 -> 
            (writeString_lh ((mappend_lh ((goto_lh _lh_writeAt_LH_P2_0_2) _lh_writeAt_LH_P2_1_2)) _lh_writeAt_arg2_2)))))) reply_0) ((moveTo_lh (let rec _lh_moveTo_LH_P2_1_1 = 23 in
        (let rec _lh_moveTo_LH_P2_0_1 = 1 in
          (fun _lh_dummy_9 -> 
            (writeString_lh ((goto_lh _lh_moveTo_LH_P2_0_1) _lh_moveTo_LH_P2_1_1)))))) ((writeString_lh (`LH_C('I', (`LH_C('m', (`LH_C(' ', (`LH_C('w', (`LH_C('a', (`LH_C('i', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('.', (`LH_C('.', (`LH_C('.', (`LH_C('`', (`LH_N)))))))))))))))))))))))))))))) (pressAnyKey_lh end_lh)))))))));;
let rec testAnsi_nofib_lh _lh_testAnsi_nofib_arg1_0 =
  ((((foldr_lh (fun f_1 g_0 _lh_funcomp_x_0 -> 
    (f_1 (g_0 _lh_funcomp_x_0)))) (fun x_0 -> 
    x_0)) ((copy_lh _lh_testAnsi_nofib_arg1_0) (program_lh 0))) (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))))))))))))))));;
end;;

