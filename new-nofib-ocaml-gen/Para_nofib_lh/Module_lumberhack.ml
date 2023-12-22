

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec mappend_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh t_4) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_0 h_5), ((map_lh f_0) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec fold1_lh _lh_fold1_arg1_0 _lh_fold1_arg2_0 _lh_fold1_arg3_0 =
  (match _lh_fold1_arg3_0 with
    | `LH_C(_lh_fold1_LH_C_0_0, _lh_fold1_LH_C_1_0) -> 
      (match _lh_fold1_LH_C_1_0 with
        | `LH_N -> 
          (_lh_fold1_arg2_0 _lh_fold1_LH_C_0_0)
        | _ -> 
          ((_lh_fold1_arg1_0 _lh_fold1_LH_C_0_0) (((fold1_lh _lh_fold1_arg1_0) _lh_fold1_arg2_0) _lh_fold1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec take_lh n_0 ls_5 =
  (if (n_0 > 0) then
    (match ls_5 with
      | `LH_C(h_6, t_6) -> 
        (`LH_C(h_6, ((take_lh (n_0 - 1)) t_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec head_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      h_2
    | `LH_N -> 
      (failwith "error"));;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_lh t_1))
    | `LH_N -> 
      0);;
let rec thd3_lh _lh_thd3_arg1_0 =
  (match _lh_thd3_arg1_0 with
    | `LH_P3(_lh_thd3_LH_P3_0_0, _lh_thd3_LH_P3_1_0, _lh_thd3_LH_P3_2_0) -> 
      _lh_thd3_LH_P3_2_0
    | _ -> 
      (failwith "error"));;
let rec fst3_lh _lh_fst3_arg1_0 =
  (match _lh_fst3_arg1_0 with
    | `LH_P3(_lh_fst3_LH_P3_0_0, _lh_fst3_LH_P3_1_0, _lh_fst3_LH_P3_2_0) -> 
      _lh_fst3_LH_P3_0_0
    | _ -> 
      (failwith "error"));;
let rec null'_lh _lh_null'_arg1_0 =
  (match _lh_null'_arg1_0 with
    | `LH_P2(_lh_null'_LH_P2_0_0, _lh_null'_LH_P2_1_0) -> 
      (match _lh_null'_LH_P2_0_0 with
        | `LH_N -> 
          (match _lh_null'_LH_P2_1_0 with
            | `LH_N -> 
              true
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec tail_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec reverse_helper_lh ls_7 a_3 =
  (match ls_7 with
    | `LH_C(h_8, t_8) -> 
      ((reverse_helper_lh t_8) (`LH_C(h_8, a_3)))
    | `LH_N -> 
      a_3);;
let rec single_lh _lh_single_arg1_0 =
  (match _lh_single_arg1_0 with
    | `LH_C(_lh_single_LH_C_0_0, _lh_single_LH_C_1_0) -> 
      (match _lh_single_LH_C_1_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec ceildiv_lh _lh_ceildiv_arg1_0 _lh_ceildiv_arg2_0 =
  (((_lh_ceildiv_arg1_0 + _lh_ceildiv_arg2_0) - 1) / _lh_ceildiv_arg2_0);;
let rec optw_lh =
  63;;
let rec snd3_lh _lh_snd3_arg1_0 =
  (match _lh_snd3_arg1_0 with
    | `LH_P3(_lh_snd3_LH_P3_0_0, _lh_snd3_LH_P3_1_0, _lh_snd3_LH_P3_2_0) -> 
      _lh_snd3_LH_P3_1_0
    | _ -> 
      (failwith "error"));;
let rec min_lh _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec maxw_lh =
  70;;
let rec nil'_lh =
  (`LH_P2((`LH_N), (`LH_N)));;
let rec filter_lh f_1 ls_6 =
  (match ls_6 with
    | `LH_C(h_7, t_7) -> 
      (if (f_1 h_7) then
        (`LH_C(h_7, ((filter_lh f_1) t_7)))
      else
        ((filter_lh f_1) t_7))
    | `LH_N -> 
      (`LH_N));;
let rec isSpace_lh _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec break_lh _lh_break_arg1_0 _lh_break_arg2_0 =
  (match _lh_break_arg2_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_0 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_5 = ((break_lh _lh_break_arg1_0) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec test_lh _lh_test_arg1_0 =
  ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('c', (`LH_C('t', (`LH_C('i', (`LH_C('v', (`LH_C('e', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('g', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_C('p', (`LH_C('l', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C('s', (`LH_C('.', (`LH_C(' ', (`LH_C('I', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('m', (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('t', (`LH_C('y', (`LH_C(',', (`LH_C(' ', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('h', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('m', (`LH_C('a', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C(' ', (`LH_C('w', (`LH_C('e', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_C('k', (`LH_C('n', (`LH_C('o', (`LH_C('w', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('x', (`LH_C('t', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('k', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('o', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C('o', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('b', (`LH_C('l', (`LH_C('e', (`LH_C('.', (`LH_C(' ', (`LH_C('H', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C(',', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('m', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('w', (`LH_C('i', (`LH_C('l', (`LH_C('l', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('o', (`LH_C('m', (`LH_C('i', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('t', (`LH_C('a', (`LH_C('i', (`LH_C('l', (`LH_C('s', (`LH_C(',', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('g', (`LH_C('a', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C('e', (`LH_C('t', (`LH_C('w', (`LH_C('e', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C('b', (`LH_C('s', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('g', (`LH_C('o', (`LH_C('r', (`LH_C('i', (`LH_C('t', (`LH_C('h', (`LH_C('m', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('i', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('t', (`LH_C('r', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('t', (`LH_C('o', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('d', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('l', (`LH_C('o', (`LH_C('p', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(',', (`LH_C(' ', (`LH_C('w', (`LH_C('h', (`LH_C('i', (`LH_C('c', (`LH_C('h', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('u', (`LH_C('s', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C('l', (`LH_C('y', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('s', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('c', (`LH_C('r', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (`LH_C('e', (`LH_C('f', (`LH_C('f', (`LH_C('i', (`LH_C('c', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('s', (`LH_C('o', (`LH_C('l', (`LH_C('u', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C('.', (`LH_C('|', (`LH_C(' ', (`LH_C('|', (`LH_N))))))))))))))))))))))))))))))))))))))))))))));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_lh h_3) (concat_lh t_3))
    | `LH_N -> 
      (`LH_N));;
let rec unformat_lh _lh_unformat_arg1_0 =
  ((fold1_lh (fun xs_0 ys_0 -> 
    ((mappend_lh ((mappend_lh xs_0) (`LH_C(_lh_unformat_arg1_0, (`LH_N))))) ys_0))) (fun x_2 -> 
    x_2));;
let rec unwords_lh _lh_unwords_arg1_0 =
  (match _lh_unwords_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_unwords_LH_C_0_0, _lh_unwords_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 -> 
        (match _lh_go_arg1_0 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            (`LH_C(' ', ((mappend_lh _lh_go_LH_C_0_0) (go_0 _lh_go_LH_C_1_0))))
          | _ -> 
            (failwith "error"))) in
        ((mappend_lh _lh_unwords_LH_C_0_0) (go_0 _lh_unwords_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec splitAt_lh _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (`LH_P2(((take_lh _lh_splitAt_arg1_0) _lh_splitAt_arg2_0), ((drop_lh _lh_splitAt_arg1_0) _lh_splitAt_arg2_0)));;
let rec last'_lh _lh_last'_arg1_0 =
  (match _lh_last'_arg1_0 with
    | `LH_P2(_lh_last'_LH_P2_0_0, _lh_last'_LH_P2_1_0) -> 
      (if (not (null_lh _lh_last'_LH_P2_1_0)) then
        (head_lh _lh_last'_LH_P2_1_0)
      else
        (head_lh _lh_last'_LH_P2_0_0))
    | _ -> 
      (failwith "error"));;
let rec width_tl_lh _lh_width_tl_arg1_0 =
  (fst3_lh _lh_width_tl_arg1_0);;
let rec head'_lh _lh_head'_arg1_0 =
  (match _lh_head'_arg1_0 with
    | `LH_P2(_lh_head'_LH_P2_0_0, _lh_head'_LH_P2_1_0) -> 
      (if (not (null_lh _lh_head'_LH_P2_0_0)) then
        (head_lh _lh_head'_LH_P2_0_0)
      else
        (head_lh _lh_head'_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec len_tl_lh _lh_len_tl_arg1_0 =
  (thd3_lh _lh_len_tl_arg1_0);;
let rec reverse_lh ls_0 =
  ((reverse_helper_lh ls_0) (`LH_N));;
let rec cons'_lh _lh_cons'_arg1_0 _lh_cons'_arg2_0 =
  (match _lh_cons'_arg2_0 with
    | `LH_P2(_lh_cons'_LH_P2_0_0, _lh_cons'_LH_P2_1_0) -> 
      (if (not (null_lh _lh_cons'_LH_P2_1_0)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_0, _lh_cons'_LH_P2_0_0)), _lh_cons'_LH_P2_1_0))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_0, (`LH_N))), _lh_cons'_LH_P2_0_0)))
    | _ -> 
      (failwith "error"));;
let rec cost_tl_lh _lh_cost_tl_arg1_0 =
  (snd3_lh _lh_cost_tl_arg1_0);;
let rec single'_lh _lh_single'_arg1_0 =
  (match _lh_single'_arg1_0 with
    | `LH_P2(_lh_single'_LH_P2_0_0, _lh_single'_LH_P2_1_0) -> 
      (((null_lh _lh_single'_LH_P2_0_0) && (single_lh _lh_single'_LH_P2_1_0)) || ((single_lh _lh_single'_LH_P2_0_0) && (null_lh _lh_single'_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec scan1_lh _lh_scan1_arg1_0 _lh_scan1_arg2_0 =
  ((fold1_lh (fun a_1 s_0 -> 
    (`LH_C(((_lh_scan1_arg1_0 a_1) (head_lh s_0)), s_0)))) (fun a_2 -> 
    (`LH_C((_lh_scan1_arg2_0 a_2), (`LH_N)))));;
let rec format_lh _lh_format_arg1_0 _lh_format_arg2_0 =
  (match _lh_format_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      let rec break_0 = (fun _lh_break_arg1_1 _lh_break_arg2_1 _lh_break_arg3_0 -> 
        (if (_lh_break_arg1_1 = _lh_break_arg2_1) then
          (`LH_C((`LH_N), _lh_break_arg3_0))
        else
          (`LH_C((`LH_C(_lh_break_arg2_1, (head_lh _lh_break_arg3_0))), (tail_lh _lh_break_arg3_0)))))
      and start_0 = (fun _lh_start_arg1_0 _lh_start_arg2_0 -> 
        (((break_0 _lh_start_arg1_0) _lh_start_arg2_0) (`LH_C((`LH_N), (`LH_N)))))
      in (((fold1_lh (break_0 _lh_format_arg1_0)) (start_0 _lh_format_arg1_0)) _lh_format_arg2_0));;
let rec dropWhile_lh _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_0 -> 
        (`LH_N))
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (let rec _lh_words_LH_C_1_0 = _lh_dropWhile_LH_C_1_0 in
          (let rec _lh_words_LH_C_0_0 = _lh_dropWhile_LH_C_0_0 in
            (fun _lh_dummy_1 -> 
              (let rec _lh_matchIdent_3 = ((break_lh isSpace_lh) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
                (match _lh_matchIdent_3 with
                  | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
                    (`LH_C(_lh_words_LH_P2_0_0, (words_lh _lh_words_LH_P2_1_0)))
                  | _ -> 
                    (failwith "error")))))))
    | _ -> 
      (failwith "error"))
and
words_lh _lh_words_arg1_0 =
  (let rec _lh_matchIdent_4 = ((dropWhile_lh isSpace_lh) _lh_words_arg1_0) in
    (_lh_matchIdent_4 99));;
let rec lines_lh _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_0 = ((break_lh (fun x_0 -> 
    (x_0 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_1 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_1 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_1 -> 
    ((mappend_lh l_1) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec unparas_lh _lh_unparas_arg1_0 =
  ((unformat_lh (`LH_N)) _lh_unparas_arg1_0);;
let rec tile_lh _lh_tile_arg1_0 _lh_tile_arg2_0 =
  (match _lh_tile_arg2_0 with
    | `LH_P2(_lh_tile_LH_P2_0_0, _lh_tile_LH_P2_1_0) -> 
      (match _lh_tile_LH_P2_0_0 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_tile_LH_C_0_0, _lh_tile_LH_C_1_0) -> 
          (let rec l_0 = (_lh_tile_LH_P2_1_0 - _lh_tile_LH_C_0_0) in
            (let rec _lh_matchIdent_2 = ((splitAt_lh l_0) _lh_tile_arg1_0) in
              (match _lh_matchIdent_2 with
                | `LH_P2(_lh_tile_LH_P2_0_1, _lh_tile_LH_P2_1_1) -> 
                  (`LH_C(_lh_tile_LH_P2_0_1, ((tile_lh _lh_tile_LH_P2_1_1) (`LH_P2(((drop_lh l_0) (`LH_C(_lh_tile_LH_C_0_0, _lh_tile_LH_C_1_0))), _lh_tile_LH_C_0_0)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec init'_lh _lh_init'_arg1_0 =
  (match _lh_init'_arg1_0 with
    | `LH_P2(_lh_init'_LH_P2_0_0, _lh_init'_LH_P2_1_0) -> 
      (if (null_lh _lh_init'_LH_P2_1_0) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single_lh _lh_init'_LH_P2_1_0) then
          (let rec _lh_matchIdent_6 = ((splitAt_lh ((length_lh _lh_init'_LH_P2_0_0) / 2)) _lh_init'_LH_P2_0_0) in
            (match _lh_matchIdent_6 with
              | `LH_P2(_lh_init'_LH_P2_0_1, _lh_init'_LH_P2_1_1) -> 
                (`LH_P2(_lh_init'_LH_P2_0_1, (reverse_lh _lh_init'_LH_P2_1_1)))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2(_lh_init'_LH_P2_0_0, (tail_lh _lh_init'_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec tail'_lh _lh_tail'_arg1_0 =
  (match _lh_tail'_arg1_0 with
    | `LH_P2(_lh_tail'_LH_P2_0_0, _lh_tail'_LH_P2_1_0) -> 
      (if (null_lh _lh_tail'_LH_P2_0_0) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single_lh _lh_tail'_LH_P2_0_0) then
          (let rec _lh_matchIdent_7 = ((splitAt_lh ((length_lh _lh_tail'_LH_P2_1_0) / 2)) _lh_tail'_LH_P2_1_0) in
            (match _lh_matchIdent_7 with
              | `LH_P2(_lh_tail'_LH_P2_0_1, _lh_tail'_LH_P2_1_1) -> 
                (`LH_P2((reverse_lh _lh_tail'_LH_P2_1_1), _lh_tail'_LH_P2_0_1))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2((tail_lh _lh_tail'_LH_P2_0_0), _lh_tail'_LH_P2_1_0))))
    | _ -> 
      (failwith "error"));;
let rec startr_lh _lh_startr_arg1_0 =
  (if (_lh_startr_arg1_0 <= maxw_lh) then
    (`LH_P3(((cons'_lh (`LH_P3(0, 0, 0))) nil'_lh), _lh_startr_arg1_0, 1))
  else
    ((failwith "error") (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('r', (`LH_C('t', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))));;
let rec paras_lh _lh_paras_arg1_0 =
  ((fun _lh_funcomp_x_4 -> 
    ((filter_lh (fun x_3 -> 
      ((`LH_N) <> x_3))) ((format_lh (`LH_N)) _lh_funcomp_x_4))) _lh_paras_arg1_0);;
let rec unparse_lh _lh_unparse_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      (unlines_lh ((map_lh unwords_lh) _lh_funcomp_x_1))) (unparas_lh _lh_funcomp_x_0))) _lh_unparse_arg1_0);;
let rec stepr_lh _lh_stepr_arg1_0 _lh_stepr_arg2_0 =
  (match _lh_stepr_arg2_0 with
    | `LH_P3(_lh_stepr_LH_P3_0_0, _lh_stepr_LH_P3_1_0, _lh_stepr_LH_P3_2_0) -> 
      (let rec tot_width_0 = ((_lh_stepr_arg1_0 + 1) + _lh_stepr_LH_P3_1_0) in
        (let rec tot_len_0 = (1 + _lh_stepr_LH_P3_2_0) in
          (let rec single_0 = (fun p_0 -> 
            ((len_tl_lh p_0) = 0)) in
            (let rec width_hd_0 = (fun p_1 -> 
              (if (single_0 p_1) then
                tot_width_0
              else
                ((tot_width_0 - (width_tl_lh p_1)) - 1))) in
              (let rec cost_0 = (fun p_2 -> 
                (if (single_0 p_2) then
                  0
                else
                  ((cost_tl_lh p_2) + (let rec a_0 = (optw_lh - (width_hd_0 p_2)) in
                    (a_0 * a_0))))) in
                (let rec old_width_hd_0 = (fun p_3 -> 
                  (if (single_0 p_3) then
                    _lh_stepr_LH_P3_1_0
                  else
                    ((_lh_stepr_LH_P3_1_0 - (width_tl_lh p_3)) - 1))) in
                  (let rec new_0 = (fun p_4 -> 
                    (if (single_0 p_4) then
                      (`LH_P3(_lh_stepr_LH_P3_1_0, 0, _lh_stepr_LH_P3_2_0))
                    else
                      (`LH_P3(_lh_stepr_LH_P3_1_0, ((cost_tl_lh p_4) + (let rec x_1 = (optw_lh - (old_width_hd_0 p_4)) in
                        (x_1 * x_1))), _lh_stepr_LH_P3_2_0)))) in
                    (let rec trim_0 = (fun ps_pq_0 -> 
                      (if (null'_lh ps_pq_0) then
                        ps_pq_0
                      else
                        (if (single'_lh ps_pq_0) then
                          ps_pq_0
                        else
                          (let rec ps_p_0 = (init'_lh ps_pq_0) in
                            (let rec q_0 = (last'_lh ps_pq_0) in
                              (let rec p_5 = (last'_lh ps_p_0) in
                                (if ((cost_0 p_5) <= (cost_0 q_0)) then
                                  (trim_0 ps_p_0)
                                else
                                  ps_pq_0))))))) in
                      (let rec drop_nofit_0 = (fun ps_p_1 -> 
                        (if (null'_lh ps_p_1) then
                          ps_p_1
                        else
                          (if ((width_hd_0 (last'_lh ps_p_1)) > maxw_lh) then
                            (drop_nofit_0 (init'_lh ps_p_1))
                          else
                            ps_p_1))) in
                        (let rec bf_0 = (fun p_6 q_1 -> 
                          (let rec wqh_0 = (width_hd_0 q_1) in
                            (let rec rqh_0 = ((maxw_lh - wqh_0) + 1) in
                              (if ((single_0 q_1) && ((cost_tl_lh p_6) = 0)) then
                                ((min_lh (optw_lh - (width_hd_0 p_6))) rqh_0)
                              else
                                (if (single_0 q_1) then
                                  rqh_0
                                else
                                  ((min_lh ((ceildiv_lh ((cost_0 p_6) - (cost_0 q_1))) (2 * (wqh_0 - (width_hd_0 p_6))))) rqh_0)))))) in
                          (let rec myAdd_0 = (fun p_7 qr_rs_0 -> 
                            (if ((single'_lh qr_rs_0) || (null'_lh qr_rs_0)) then
                              ((cons'_lh p_7) qr_rs_0)
                            else
                              (let rec q_2 = (head'_lh qr_rs_0) in
                                (let rec r_rs_0 = (tail'_lh qr_rs_0) in
                                  (let rec r_0 = (head'_lh r_rs_0) in
                                    (if (((bf_0 p_7) q_2) <= ((bf_0 q_2) r_0)) then
                                      ((myAdd_0 p_7) r_rs_0)
                                    else
                                      ((cons'_lh p_7) qr_rs_0))))))) in
                            (`LH_P3((trim_0 (drop_nofit_0 ((myAdd_0 (new_0 (last'_lh _lh_stepr_LH_P3_0_0))) _lh_stepr_LH_P3_0_0))), tot_width_0, tot_len_0)))))))))))))
    | _ -> 
      (failwith "error"));;
let rec parse_lh _lh_parse_arg1_0 =
  ((fun _lh_funcomp_x_5 -> 
    ((fun _lh_funcomp_x_6 -> 
      (paras_lh ((map_lh words_lh) _lh_funcomp_x_6))) (lines_lh _lh_funcomp_x_5))) _lh_parse_arg1_0);;
let rec par3_lh _lh_par3_arg1_0 =
  (let rec zs_0 = (((scan1_lh stepr_lh) startr_lh) ((map_lh length_lh) _lh_par3_arg1_0)) in
    ((tile_lh _lh_par3_arg1_0) (`LH_P2(((map_lh (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (len_tl_lh (last'_lh _lh_funcomp_x_3))) (fst3_lh _lh_funcomp_x_2)))) zs_0), (thd3_lh (head_lh zs_0))))));;
let rec fmt_lh _lh_fmt_arg1_0 =
  ((fun _lh_funcomp_x_7 -> 
    ((fun _lh_funcomp_x_8 -> 
      (unparse_lh ((map_lh (fun _lh_funcomp_x_9 -> 
        (par3_lh (concat_lh _lh_funcomp_x_9)))) _lh_funcomp_x_8))) (parse_lh _lh_funcomp_x_7))) _lh_fmt_arg1_0);;
let rec testPara_nofib_lh _lh_testPara_nofib_arg1_0 =
  (if (null_lh (test_lh 0)) then
    (`LH_N)
  else
    (fmt_lh (test_lh 0)));;
end;;

