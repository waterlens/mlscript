

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d3 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_2, t_3_2) -> 
      (`LH_C(h_3_2, ((mappend_lh__d3 t_3_2) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_lh__d1 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C(h_3_4, ((mappend_lh__d1 t_3_4) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_lh__d8 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C(h_2_7, ((mappend_lh__d8 t_2_7) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec maxw_lh__d1 =
  70;;
let rec null_lh__d3 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec cons'_lh__d1 _lh_cons'_arg1_2 _lh_cons'_arg2_2 =
  (match _lh_cons'_arg2_2 with
    | `LH_P2(_lh_cons'_LH_P2_0_2, _lh_cons'_LH_P2_1_2) -> 
      (if (not (null_lh__d3 _lh_cons'_LH_P2_1_2)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_2, _lh_cons'_LH_P2_0_2)), _lh_cons'_LH_P2_1_2))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_2, (`LH_N))), _lh_cons'_LH_P2_0_2)))
    | _ -> 
      (failwith "error"));;
let rec nil'_lh__d1 =
  (`LH_P2((`LH_N), (`LH_N)));;
let rec startr_lh__d1 _lh_startr_arg1_0 =
  (if (_lh_startr_arg1_0 <= maxw_lh__d1) then
    (`LH_P3(((cons'_lh__d1 (`LH_P3(0, 0, 0))) nil'_lh__d1), _lh_startr_arg1_0, 1))
  else
    ((failwith "error") (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('r', (`LH_C('t', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C('a', (`LH_C('r', (`LH_C('a', (`LH_C('m', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))))))))))))))))))))))))))));;
let rec fst3_lh__d1 _lh_fst3_arg1_0 =
  (match _lh_fst3_arg1_0 with
    | `LH_P3(_lh_fst3_LH_P3_0_0, _lh_fst3_LH_P3_1_0, _lh_fst3_LH_P3_2_0) -> 
      _lh_fst3_LH_P3_0_0
    | _ -> 
      (failwith "error"));;
let rec thd3_lh__d1 _lh_thd3_arg1_1 =
  (match _lh_thd3_arg1_1 with
    | `LH_P3(_lh_thd3_LH_P3_0_1, _lh_thd3_LH_P3_1_1, _lh_thd3_LH_P3_2_1) -> 
      _lh_thd3_LH_P3_2_1
    | _ -> 
      (failwith "error"));;
let rec null_lh__d6 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec head_lh__d6 ls_2 =
  (match ls_2 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec head'_lh__d1 _lh_head'_arg1_1 =
  (match _lh_head'_arg1_1 with
    | `LH_P2(_lh_head'_LH_P2_0_1, _lh_head'_LH_P2_1_1) -> 
      (if (not (null_lh__d6 _lh_head'_LH_P2_0_1)) then
        (head_lh__d6 _lh_head'_LH_P2_0_1)
      else
        (head_lh__d6 _lh_head'_LH_P2_1_1))
    | _ -> 
      (failwith "error"));;
let rec cons'_lh__d2 _lh_cons'_arg1_1 _lh_cons'_arg2_1 =
  (match _lh_cons'_arg2_1 with
    | `LH_P2(_lh_cons'_LH_P2_0_1, _lh_cons'_LH_P2_1_1) -> 
      (if (not (null_lh__d6 _lh_cons'_LH_P2_1_1)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_1, _lh_cons'_LH_P2_0_1)), _lh_cons'_LH_P2_1_1))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_1, (`LH_N))), _lh_cons'_LH_P2_0_1)))
    | _ -> 
      (failwith "error"));;
let rec snd3_lh__d1 _lh_snd3_arg1_0 =
  (match _lh_snd3_arg1_0 with
    | `LH_P3(_lh_snd3_LH_P3_0_0, _lh_snd3_LH_P3_1_0, _lh_snd3_LH_P3_2_0) -> 
      _lh_snd3_LH_P3_1_0
    | _ -> 
      (failwith "error"));;
let rec cost_tl_lh__d3 _lh_cost_tl_arg1_0 =
  (snd3_lh__d1 _lh_cost_tl_arg1_0);;
let rec last'_lh__d3 _lh_last'_arg1_2 =
  (match _lh_last'_arg1_2 with
    | `LH_P2(_lh_last'_LH_P2_0_2, _lh_last'_LH_P2_1_2) -> 
      (if (not (null_lh__d6 _lh_last'_LH_P2_1_2)) then
        (head_lh__d6 _lh_last'_LH_P2_1_2)
      else
        (head_lh__d6 _lh_last'_LH_P2_0_2))
    | _ -> 
      (failwith "error"));;
let rec width_tl_lh__d2 _lh_width_tl_arg1_0 =
  (fst3_lh__d1 _lh_width_tl_arg1_0);;
let rec maxw_lh__d3 =
  70;;
let rec null'_lh__d1 _lh_null'_arg1_2 =
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
let rec null'_lh__d3 _lh_null'_arg1_0 =
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
let rec drop_lh__d2 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh__d2 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec take_lh__d1 n_0 ls_3 =
  (if (n_0 > 0) then
    (match ls_3 with
      | `LH_C(h_2, t_2) -> 
        (`LH_C(h_2, ((take_lh__d1 (n_0 - 1)) t_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec splitAt_lh__d1 _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (`LH_P2(((take_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0), ((drop_lh__d2 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0)));;
let rec tail_lh__d1 ls_4 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec single_lh__d2 _lh_single_arg1_0 =
  (match _lh_single_arg1_0 with
    | `LH_C(_lh_single_LH_C_0_0, _lh_single_LH_C_1_0) -> 
      (match _lh_single_LH_C_1_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec length_lh__d1 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_2_0, t_2_0) -> 
      (1 + (length_lh__d1 t_2_0))
    | `LH_N -> 
      0);;
let rec reverse_helper_lh__d1 ls_0 a_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((reverse_helper_lh__d1 t_0) (`LH_C(h_0, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d1 ls_1 =
  ((reverse_helper_lh__d1 ls_1) (`LH_N));;
let rec init'_lh__d1 _lh_init'_arg1_1 =
  (match _lh_init'_arg1_1 with
    | `LH_P2(_lh_init'_LH_P2_0_2, _lh_init'_LH_P2_1_2) -> 
      (if (null_lh__d6 _lh_init'_LH_P2_1_2) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single_lh__d2 _lh_init'_LH_P2_1_2) then
          (let rec _lh_matchIdent_2 = ((splitAt_lh__d1 ((length_lh__d1 _lh_init'_LH_P2_0_2) / 2)) _lh_init'_LH_P2_0_2) in
            (match _lh_matchIdent_2 with
              | `LH_P2(_lh_init'_LH_P2_0_3, _lh_init'_LH_P2_1_3) -> 
                (`LH_P2(_lh_init'_LH_P2_0_3, (reverse_lh__d1 _lh_init'_LH_P2_1_3)))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2(_lh_init'_LH_P2_0_2, (tail_lh__d1 _lh_init'_LH_P2_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec min_lh__d2 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec tail'_lh__d1 _lh_tail'_arg1_0 =
  (match _lh_tail'_arg1_0 with
    | `LH_P2(_lh_tail'_LH_P2_0_0, _lh_tail'_LH_P2_1_0) -> 
      (if (null_lh__d6 _lh_tail'_LH_P2_0_0) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single_lh__d2 _lh_tail'_LH_P2_0_0) then
          (let rec _lh_matchIdent_1 = ((splitAt_lh__d1 ((length_lh__d1 _lh_tail'_LH_P2_1_0) / 2)) _lh_tail'_LH_P2_1_0) in
            (match _lh_matchIdent_1 with
              | `LH_P2(_lh_tail'_LH_P2_0_1, _lh_tail'_LH_P2_1_1) -> 
                (`LH_P2((reverse_lh__d1 _lh_tail'_LH_P2_1_1), _lh_tail'_LH_P2_0_1))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2((tail_lh__d1 _lh_tail'_LH_P2_0_0), _lh_tail'_LH_P2_1_0))))
    | _ -> 
      (failwith "error"));;
let rec last'_lh__d5 _lh_last'_arg1_0 =
  (match _lh_last'_arg1_0 with
    | `LH_P2(_lh_last'_LH_P2_0_0, _lh_last'_LH_P2_1_0) -> 
      (if (not (null_lh__d6 _lh_last'_LH_P2_1_0)) then
        (head_lh__d6 _lh_last'_LH_P2_1_0)
      else
        (head_lh__d6 _lh_last'_LH_P2_0_0))
    | _ -> 
      (failwith "error"));;
let rec head'_lh__d2 _lh_head'_arg1_0 =
  (match _lh_head'_arg1_0 with
    | `LH_P2(_lh_head'_LH_P2_0_0, _lh_head'_LH_P2_1_0) -> 
      (if (not (null_lh__d6 _lh_head'_LH_P2_0_0)) then
        (head_lh__d6 _lh_head'_LH_P2_0_0)
      else
        (head_lh__d6 _lh_head'_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec optw_lh__d3 =
  63;;
let rec last'_lh__d4 _lh_last'_arg1_1 =
  (match _lh_last'_arg1_1 with
    | `LH_P2(_lh_last'_LH_P2_0_1, _lh_last'_LH_P2_1_1) -> 
      (if (not (null_lh__d6 _lh_last'_LH_P2_1_1)) then
        (head_lh__d6 _lh_last'_LH_P2_1_1)
      else
        (head_lh__d6 _lh_last'_LH_P2_0_1))
    | _ -> 
      (failwith "error"));;
let rec null'_lh__d2 _lh_null'_arg1_1 =
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
let rec single_lh__d1 _lh_single_arg1_1 =
  (match _lh_single_arg1_1 with
    | `LH_C(_lh_single_LH_C_0_1, _lh_single_LH_C_1_1) -> 
      (match _lh_single_LH_C_1_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | _ -> 
      false);;
let rec null_lh__d4 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null_lh__d5 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec single'_lh__d1 _lh_single'_arg1_1 =
  (match _lh_single'_arg1_1 with
    | `LH_P2(_lh_single'_LH_P2_0_1, _lh_single'_LH_P2_1_1) -> 
      (((null_lh__d5 _lh_single'_LH_P2_0_1) && (single_lh__d2 _lh_single'_LH_P2_1_1)) || ((single_lh__d1 _lh_single'_LH_P2_0_1) && (null_lh__d4 _lh_single'_LH_P2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec width_tl_lh__d1 _lh_width_tl_arg1_1 =
  (fst3_lh__d1 _lh_width_tl_arg1_1);;
let rec optw_lh__d2 =
  63;;
let rec cost_tl_lh__d2 _lh_cost_tl_arg1_1 =
  (snd3_lh__d1 _lh_cost_tl_arg1_1);;
let rec ceildiv_lh__d1 _lh_ceildiv_arg1_0 _lh_ceildiv_arg2_0 =
  (((_lh_ceildiv_arg1_0 + _lh_ceildiv_arg2_0) - 1) / _lh_ceildiv_arg2_0);;
let rec single'_lh__d2 _lh_single'_arg1_0 =
  (match _lh_single'_arg1_0 with
    | `LH_P2(_lh_single'_LH_P2_0_0, _lh_single'_LH_P2_1_0) -> 
      (((null_lh__d6 _lh_single'_LH_P2_0_0) && (single_lh__d2 _lh_single'_LH_P2_1_0)) || ((single_lh__d2 _lh_single'_LH_P2_0_0) && (null_lh__d6 _lh_single'_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec cons'_lh__d3 _lh_cons'_arg1_0 _lh_cons'_arg2_0 =
  (match _lh_cons'_arg2_0 with
    | `LH_P2(_lh_cons'_LH_P2_0_0, _lh_cons'_LH_P2_1_0) -> 
      (if (not (null_lh__d6 _lh_cons'_LH_P2_1_0)) then
        (`LH_P2((`LH_C(_lh_cons'_arg1_0, _lh_cons'_LH_P2_0_0)), _lh_cons'_LH_P2_1_0))
      else
        (`LH_P2((`LH_C(_lh_cons'_arg1_0, (`LH_N))), _lh_cons'_LH_P2_0_0)))
    | _ -> 
      (failwith "error"));;
let rec init'_lh__d2 _lh_init'_arg1_0 =
  (match _lh_init'_arg1_0 with
    | `LH_P2(_lh_init'_LH_P2_0_0, _lh_init'_LH_P2_1_0) -> 
      (if (null_lh__d6 _lh_init'_LH_P2_1_0) then
        (`LH_P2((`LH_N), (`LH_N)))
      else
        (if (single_lh__d2 _lh_init'_LH_P2_1_0) then
          (let rec _lh_matchIdent_0 = ((splitAt_lh__d1 ((length_lh__d1 _lh_init'_LH_P2_0_0) / 2)) _lh_init'_LH_P2_0_0) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_init'_LH_P2_0_1, _lh_init'_LH_P2_1_1) -> 
                (`LH_P2(_lh_init'_LH_P2_0_1, (reverse_lh__d1 _lh_init'_LH_P2_1_1)))
              | _ -> 
                (failwith "error")))
        else
          (`LH_P2(_lh_init'_LH_P2_0_0, (tail_lh__d1 _lh_init'_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec maxw_lh__d2 =
  70;;
let rec cost_tl_lh__d1 _lh_cost_tl_arg1_2 =
  (snd3_lh__d1 _lh_cost_tl_arg1_2);;
let rec optw_lh__d1 =
  63;;
let rec min_lh__d1 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec last'_lh__d2 _lh_last'_arg1_3 =
  (match _lh_last'_arg1_3 with
    | `LH_P2(_lh_last'_LH_P2_0_3, _lh_last'_LH_P2_1_3) -> 
      (if (not (null_lh__d6 _lh_last'_LH_P2_1_3)) then
        (head_lh__d6 _lh_last'_LH_P2_1_3)
      else
        (head_lh__d6 _lh_last'_LH_P2_0_3))
    | _ -> 
      (failwith "error"));;
let rec thd3_lh__d2 _lh_thd3_arg1_0 =
  (match _lh_thd3_arg1_0 with
    | `LH_P3(_lh_thd3_LH_P3_0_0, _lh_thd3_LH_P3_1_0, _lh_thd3_LH_P3_2_0) -> 
      _lh_thd3_LH_P3_2_0
    | _ -> 
      (failwith "error"));;
let rec len_tl_lh__d2 _lh_len_tl_arg1_0 =
  (thd3_lh__d2 _lh_len_tl_arg1_0);;
let rec stepr_lh__d1 _lh_stepr_arg1_0 _lh_stepr_arg2_0 =
  (match _lh_stepr_arg2_0 with
    | `LH_P3(_lh_stepr_LH_P3_0_0, _lh_stepr_LH_P3_1_0, _lh_stepr_LH_P3_2_0) -> 
      (let rec tot_width_0 = ((_lh_stepr_arg1_0 + 1) + _lh_stepr_LH_P3_1_0) in
        (let rec tot_len_0 = (1 + _lh_stepr_LH_P3_2_0) in
          (let rec single_0 = (fun p_0 -> 
            ((len_tl_lh__d2 p_0) = 0)) in
            (let rec width_hd_0 = (fun p_1 -> 
              (if (single_0 p_1) then
                tot_width_0
              else
                ((tot_width_0 - (width_tl_lh__d2 p_1)) - 1))) in
              (let rec cost_0 = (fun p_2 -> 
                (if (single_0 p_2) then
                  0
                else
                  ((cost_tl_lh__d1 p_2) + (let rec a_3 = (optw_lh__d3 - (width_hd_0 p_2)) in
                    (a_3 * a_3))))) in
                (let rec old_width_hd_0 = (fun p_3 -> 
                  (if (single_0 p_3) then
                    _lh_stepr_LH_P3_1_0
                  else
                    ((_lh_stepr_LH_P3_1_0 - (width_tl_lh__d1 p_3)) - 1))) in
                  (let rec new_0 = (fun p_4 -> 
                    (if (single_0 p_4) then
                      (`LH_P3(_lh_stepr_LH_P3_1_0, 0, _lh_stepr_LH_P3_2_0))
                    else
                      (`LH_P3(_lh_stepr_LH_P3_1_0, ((cost_tl_lh__d3 p_4) + (let rec x_1 = (optw_lh__d1 - (old_width_hd_0 p_4)) in
                        (x_1 * x_1))), _lh_stepr_LH_P3_2_0)))) in
                    (let rec trim_0 = (fun ps_pq_0 -> 
                      (if (null'_lh__d1 ps_pq_0) then
                        ps_pq_0
                      else
                        (if (single'_lh__d1 ps_pq_0) then
                          ps_pq_0
                        else
                          (let rec ps_p_0 = (init'_lh__d1 ps_pq_0) in
                            (let rec q_0 = (last'_lh__d2 ps_pq_0) in
                              (let rec p_5 = (last'_lh__d5 ps_p_0) in
                                (if ((cost_0 p_5) <= (cost_0 q_0)) then
                                  (trim_0 ps_p_0)
                                else
                                  ps_pq_0))))))) in
                      (let rec drop_nofit_0 = (fun ps_p_1 -> 
                        (if (null'_lh__d2 ps_p_1) then
                          ps_p_1
                        else
                          (if ((width_hd_0 (last'_lh__d3 ps_p_1)) > maxw_lh__d2) then
                            (drop_nofit_0 (init'_lh__d2 ps_p_1))
                          else
                            ps_p_1))) in
                        (let rec bf_0 = (fun p_6 q_1 -> 
                          (let rec wqh_0 = (width_hd_0 q_1) in
                            (let rec rqh_0 = ((maxw_lh__d3 - wqh_0) + 1) in
                              (if ((single_0 q_1) && ((cost_tl_lh__d2 p_6) = 0)) then
                                ((min_lh__d2 (optw_lh__d2 - (width_hd_0 p_6))) rqh_0)
                              else
                                (if (single_0 q_1) then
                                  rqh_0
                                else
                                  ((min_lh__d1 ((ceildiv_lh__d1 ((cost_0 p_6) - (cost_0 q_1))) (2 * (wqh_0 - (width_hd_0 p_6))))) rqh_0)))))) in
                          (let rec myAdd_0 = (fun p_7 qr_rs_0 -> 
                            (if ((single'_lh__d2 qr_rs_0) || (null'_lh__d3 qr_rs_0)) then
                              ((cons'_lh__d2 p_7) qr_rs_0)
                            else
                              (let rec q_2 = (head'_lh__d2 qr_rs_0) in
                                (let rec r_rs_0 = (tail'_lh__d1 qr_rs_0) in
                                  (let rec r_0 = (head'_lh__d1 r_rs_0) in
                                    (if (((bf_0 p_7) q_2) <= ((bf_0 q_2) r_0)) then
                                      ((myAdd_0 p_7) r_rs_0)
                                    else
                                      ((cons'_lh__d3 p_7) qr_rs_0))))))) in
                            (`LH_P3((trim_0 (drop_nofit_0 ((myAdd_0 (new_0 (last'_lh__d4 _lh_stepr_LH_P3_0_0))) _lh_stepr_LH_P3_0_0))), tot_width_0, tot_len_0)))))))))))))
    | _ -> 
      (failwith "error"));;
let rec fold1_lh__d1 _lh_fold1_arg1_2 _lh_fold1_arg2_2 _lh_fold1_arg3_2 =
  (match _lh_fold1_arg3_2 with
    | `LH_C(_lh_fold1_LH_C_0_2, _lh_fold1_LH_C_1_2) -> 
      (match _lh_fold1_LH_C_1_2 with
        | `LH_N -> 
          (_lh_fold1_arg2_2 _lh_fold1_LH_C_0_2)
        | _ -> 
          ((_lh_fold1_arg1_2 _lh_fold1_LH_C_0_2) (((fold1_lh__d1 _lh_fold1_arg1_2) _lh_fold1_arg2_2) _lh_fold1_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec head_lh__d4 ls_6 =
  (match ls_6 with
    | `LH_C(h_8, t_8) -> 
      h_8
    | `LH_N -> 
      (failwith "error"));;
let rec scan1_lh__d1 _lh_scan1_arg1_0 _lh_scan1_arg2_0 =
  ((fold1_lh__d1 (fun a_1 s_0 -> 
    (`LH_C(((_lh_scan1_arg1_0 a_1) (head_lh__d4 s_0)), s_0)))) (fun a_2 -> 
    (`LH_C((_lh_scan1_arg2_0 a_2), (`LH_N)))));;
let rec len_tl_lh__d1 _lh_len_tl_arg1_1 =
  (thd3_lh__d2 _lh_len_tl_arg1_1);;
let rec map_lh__d4 f_3 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C((f_3 h_1_9), ((map_lh__d4 f_3) t_1_9)))
    | `LH_N -> 
      (`LH_N));;
let rec head_lh__d1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_8, t_1_8) -> 
      h_1_8
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh__d2 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec head_lh__d3 ls_7 =
  (match ls_7 with
    | `LH_C(h_9, t_9) -> 
      h_9
    | `LH_N -> 
      (failwith "error"));;
let rec head_lh__d2 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_0, t_1_0) -> 
      h_1_0
    | `LH_N -> 
      (failwith "error"));;
let rec last'_lh__d1 _lh_last'_arg1_4 =
  (match _lh_last'_arg1_4 with
    | `LH_P2(_lh_last'_LH_P2_0_4, _lh_last'_LH_P2_1_4) -> 
      (if (not (null_lh__d2 _lh_last'_LH_P2_1_4)) then
        (head_lh__d2 _lh_last'_LH_P2_1_4)
      else
        (head_lh__d3 _lh_last'_LH_P2_0_4))
    | _ -> 
      (failwith "error"));;
let rec drop_lh__d1 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1))
      else
        ((drop_lh__d1 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec tile_lh__d1 _lh_tile_arg1_0 _lh_tile_arg2_0 =
  (match _lh_tile_arg2_0 with
    | `LH_P2(_lh_tile_LH_P2_0_0, _lh_tile_LH_P2_1_0) -> 
      (match _lh_tile_LH_P2_0_0 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_tile_LH_C_0_0, _lh_tile_LH_C_1_0) -> 
          (let rec l_0 = (_lh_tile_LH_P2_1_0 - _lh_tile_LH_C_0_0) in
            (let rec _lh_matchIdent_5 = ((splitAt_lh__d1 l_0) _lh_tile_arg1_0) in
              (match _lh_matchIdent_5 with
                | `LH_P2(_lh_tile_LH_P2_0_1, _lh_tile_LH_P2_1_1) -> 
                  (`LH_C(_lh_tile_LH_P2_0_1, ((tile_lh__d1 _lh_tile_LH_P2_1_1) (`LH_P2(((drop_lh__d1 l_0) (`LH_C(_lh_tile_LH_C_0_0, _lh_tile_LH_C_1_0))), _lh_tile_LH_C_0_0)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d5 f_2 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C((f_2 h_1_7), ((map_lh__d5 f_2) t_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec par3_lh__d1 _lh_par3_arg1_0 =
  (let rec zs_0 = (((scan1_lh__d1 stepr_lh__d1) startr_lh__d1) ((map_lh__d5 length_lh__d1) _lh_par3_arg1_0)) in
    ((tile_lh__d1 _lh_par3_arg1_0) (`LH_P2(((map_lh__d4 (fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        (len_tl_lh__d1 (last'_lh__d1 _lh_funcomp_x_2))) (fst3_lh__d1 _lh_funcomp_x_1)))) zs_0), (thd3_lh__d1 (head_lh__d1 zs_0))))));;
let rec dropWhile_lh__d1 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_lh__d1 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec isSpace_lh__d1 _lh_isSpace_arg1_1 =
  (_lh_isSpace_arg1_1 = ' ');;
let rec isSpace_lh__d2 _lh_isSpace_arg1_0 =
  (_lh_isSpace_arg1_0 = ' ');;
let rec break_lh__d1 _lh_break_arg1_2 _lh_break_arg2_2 =
  (match _lh_break_arg2_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1) -> 
      (if (_lh_break_arg1_2 _lh_break_LH_C_0_1) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_4 = ((break_lh__d1 _lh_break_arg1_2) _lh_break_LH_C_1_1) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_break_LH_P2_0_1, _lh_break_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_1, _lh_break_LH_P2_0_1)), _lh_break_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec words_lh__d1 _lh_words_arg1_0 =
  (let rec _lh_matchIdent_8 = ((dropWhile_lh__d1 isSpace_lh__d2) _lh_words_arg1_0) in
    (match _lh_matchIdent_8 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0) -> 
        (let rec _lh_matchIdent_9 = ((break_lh__d1 isSpace_lh__d1) (`LH_C(_lh_words_LH_C_0_0, _lh_words_LH_C_1_0))) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_words_LH_P2_0_0, _lh_words_LH_P2_1_0) -> 
              (`LH_C(_lh_words_LH_P2_0_0, (words_lh__d1 _lh_words_LH_P2_1_0)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec filter_lh__d1 f_0 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_1, t_1_1) -> 
      (if (f_0 h_1_1) then
        (`LH_C(h_1_1, ((filter_lh__d1 f_0) t_1_1)))
      else
        ((filter_lh__d1 f_0) t_1_1))
    | `LH_N -> 
      (`LH_N));;
let rec head_lh__d5 ls_5 =
  (match ls_5 with
    | `LH_C(h_4, t_4) -> 
      h_4
    | `LH_N -> 
      (failwith "error"));;
let rec fold1_lh__d3 _lh_fold1_arg1_0 _lh_fold1_arg2_0 _lh_fold1_arg3_0 =
  (match _lh_fold1_arg3_0 with
    | `LH_C(_lh_fold1_LH_C_0_0, _lh_fold1_LH_C_1_0) -> 
      (match _lh_fold1_LH_C_1_0 with
        | `LH_N -> 
          (_lh_fold1_arg2_0 _lh_fold1_LH_C_0_0)
        | _ -> 
          ((_lh_fold1_arg1_0 _lh_fold1_LH_C_0_0) (((fold1_lh__d3 _lh_fold1_arg1_0) _lh_fold1_arg2_0) _lh_fold1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec format_lh__d1 _lh_format_arg1_0 _lh_format_arg2_0 =
  (match _lh_format_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      let rec break_0 = (fun _lh_break_arg1_0 _lh_break_arg2_0 _lh_break_arg3_0 -> 
        (if (_lh_break_arg1_0 = _lh_break_arg2_0) then
          (`LH_C((`LH_N), _lh_break_arg3_0))
        else
          (`LH_C((`LH_C(_lh_break_arg2_0, (head_lh__d5 _lh_break_arg3_0))), (tail_lh__d1 _lh_break_arg3_0)))))
      and start_0 = (fun _lh_start_arg1_0 _lh_start_arg2_0 -> 
        (((break_0 _lh_start_arg1_0) _lh_start_arg2_0) (`LH_C((`LH_N), (`LH_N)))))
      in (((fold1_lh__d3 (break_0 _lh_format_arg1_0)) (start_0 _lh_format_arg1_0)) _lh_format_arg2_0));;
let rec paras_lh__d1 _lh_paras_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((filter_lh__d1 (fun x_2 -> 
      ((`LH_N) <> x_2))) ((format_lh__d1 (`LH_N)) _lh_funcomp_x_0))) _lh_paras_arg1_0);;
let rec map_lh__d3 f_4 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C((f_4 h_2_1), ((map_lh__d3 f_4) t_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec break_lh__d2 _lh_break_arg1_1 _lh_break_arg2_1 =
  (match _lh_break_arg2_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0) -> 
      (if (_lh_break_arg1_1 _lh_break_LH_C_0_0) then
        (`LH_P2((`LH_N), (`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_3 = ((break_lh__d2 _lh_break_arg1_1) _lh_break_LH_C_1_0) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_break_LH_P2_0_0, _lh_break_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_break_LH_C_0_0, _lh_break_LH_P2_0_0)), _lh_break_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec lines_lh__d1 _lh_lines_arg1_0 =
  (let rec _lh_matchIdent_6 = ((break_lh__d2 (fun x_3 -> 
    (x_3 = '|'))) _lh_lines_arg1_0) in
    (match _lh_matchIdent_6 with
      | `LH_P2(_lh_lines_LH_P2_0_0, _lh_lines_LH_P2_1_0) -> 
        (`LH_C(_lh_lines_LH_P2_0_0, (let rec _lh_matchIdent_7 = _lh_lines_LH_P2_1_0 in
          (match _lh_matchIdent_7 with
            | `LH_N -> 
              (`LH_N)
            | `LH_C(_lh_lines_LH_C_0_0, _lh_lines_LH_C_1_0) -> 
              (lines_lh__d1 _lh_lines_LH_C_1_0)
            | _ -> 
              (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec parse_lh__d1 _lh_parse_arg1_0 =
  ((fun _lh_funcomp_x_3 -> 
    ((fun _lh_funcomp_x_4 -> 
      (paras_lh__d1 ((map_lh__d3 words_lh__d1) _lh_funcomp_x_4))) (lines_lh__d1 _lh_funcomp_x_3))) _lh_parse_arg1_0);;
let rec mappend_lh__d1_d6 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1_d6 t_5) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec fold1_lh__d2 _lh_fold1_arg1_1 _lh_fold1_arg2_1 _lh_fold1_arg3_1 =
  (match _lh_fold1_arg3_1 with
    | `LH_C(_lh_fold1_LH_C_0_1, _lh_fold1_LH_C_1_1) -> 
      (match _lh_fold1_LH_C_1_1 with
        | `LH_N -> 
          (_lh_fold1_arg2_1 _lh_fold1_LH_C_0_1)
        | _ -> 
          ((_lh_fold1_arg1_1 _lh_fold1_LH_C_0_1) (((fold1_lh__d2 _lh_fold1_arg1_1) _lh_fold1_arg2_1) _lh_fold1_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d5 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d1_d5 t_6) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec unformat_lh__d1 _lh_unformat_arg1_0 =
  ((fold1_lh__d2 (fun xs_5 ys_5 -> 
    ((mappend_lh__d1_d6 ((mappend_lh__d1_d5 xs_5) (`LH_C(_lh_unformat_arg1_0, (`LH_N))))) ys_5))) (fun x_0 -> 
    x_0));;
let rec unparas_lh__d1 _lh_unparas_arg1_0 =
  ((unformat_lh__d1 (`LH_N)) _lh_unparas_arg1_0);;
let rec mappend_lh__d1_d3 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_lh__d1_d3 t_1_2) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_lh__d1_d2 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C(h_1_3, ((mappend_lh__d1_d2 t_1_3) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec unwords_lh__d1 _lh_unwords_arg1_0 =
  (match _lh_unwords_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_unwords_LH_C_0_0, _lh_unwords_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 -> 
        (match _lh_go_arg1_0 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            (`LH_C(' ', ((mappend_lh__d1_d3 _lh_go_LH_C_0_0) (go_0 _lh_go_LH_C_1_0))))
          | _ -> 
            (failwith "error"))) in
        ((mappend_lh__d1_d2 _lh_unwords_LH_C_0_0) (go_0 _lh_unwords_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d2 f_5 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C((f_5 h_2_2), ((map_lh__d2 f_5) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1_d4 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d1_d4 t_7) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec concat_lh__d2 lss_0 =
  (match lss_0 with
    | `LH_C(h_1_6, t_1_6) -> 
      ((mappend_lh__d1_d4 h_1_6) (concat_lh__d2 t_1_6))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1_d1 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d1_d1 t_1_5) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec map_lh__d6 f_1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C((f_1 h_1_4), ((map_lh__d6 f_1) t_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d2 ((map_lh__d6 (fun l_1 -> 
    ((mappend_lh__d1_d1 l_1) (`LH_C('|', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec unparse_lh__d1 _lh_unparse_arg1_0 =
  ((fun _lh_funcomp_x_5 -> 
    ((fun _lh_funcomp_x_6 -> 
      (unlines_lh__d1 ((map_lh__d2 unwords_lh__d1) _lh_funcomp_x_6))) (unparas_lh__d1 _lh_funcomp_x_5))) _lh_unparse_arg1_0);;
let rec map_lh__d1 f_6 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C((f_6 h_2_4), ((map_lh__d1 f_6) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1_d0 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_2_3, t_2_3) -> 
      (`LH_C(h_2_3, ((mappend_lh__d1_d0 t_2_3) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec concat_lh__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_5, t_2_5) -> 
      ((mappend_lh__d1_d0 h_2_5) (concat_lh__d1 t_2_5))
    | `LH_N -> 
      (`LH_N));;
let rec fmt_lh__d1 _lh_fmt_arg1_0 =
  ((fun _lh_funcomp_x_7 -> 
    ((fun _lh_funcomp_x_8 -> 
      (unparse_lh__d1 ((map_lh__d1 (fun _lh_funcomp_x_9 -> 
        (par3_lh__d1 (concat_lh__d1 _lh_funcomp_x_9)))) _lh_funcomp_x_8))) (parse_lh__d1 _lh_funcomp_x_7))) _lh_fmt_arg1_0);;
let rec mappend_lh__d5 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C(h_3_0, ((mappend_lh__d5 t_3_0) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_lh__d6 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C(h_2_9, ((mappend_lh__d6 t_2_9) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_lh__d4 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_3_1, t_3_1) -> 
      (`LH_C(h_3_1, ((mappend_lh__d4 t_3_1) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_lh__d9 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend_lh__d9 t_2_6) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec null_lh__d1 _lh_null_arg1_5 =
  (match _lh_null_arg1_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_5, _lh_null_LH_C_1_5) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C(h_2_8, ((mappend_lh__d7 t_2_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_lh__d2 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_3, t_3_3) -> 
      (`LH_C(h_3_3, ((mappend_lh__d2 t_3_3) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec testPara_nofib_lh__d1 _lh_testPara_nofib_arg1_0 =
  (let rec test_0 = ((mappend_lh__d2 ((mappend_lh__d8 ((mappend_lh__d6 ((mappend_lh__d7 ((mappend_lh__d5 ((mappend_lh__d4 ((mappend_lh__d9 ((mappend_lh__d3 ((mappend_lh__d1 lh_large_str_0) lh_large_str_1)) lh_large_str_2)) lh_large_str_3)) lh_large_str_4)) lh_large_str_5)) lh_large_str_6)) lh_large_str_7)) lh_large_str_8)) lh_large_str_9) in
    (if (null_lh__d1 test_0) then
      (`LH_N)
    else
      (fmt_lh__d1 test_0)));;
let run () = 1 + (Obj.magic ((testPara_nofib_lh__d1 0)));
end;;

