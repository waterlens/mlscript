

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec mappend_lh__d1__d2 xs_1_0 ys_1_8 =
  (xs_1_0 ys_1_8);;
let rec mappend_lh__d1__d6 xs_1_3 ys_2_2 =
  (xs_1_3 ys_2_2);;
let rec map_lh__d1__d0 f_2_8 ls_8 =
  (ls_8 f_2_8);;
let rec enumFromTo_lh__d1__d0 a_0 b_0 _lh_popOutId_0_0 =
  (if (a_0 <= b_0) then
    (let rec t_3_1 = ((enumFromTo_lh__d1__d0 (a_0 + 1)) b_0) in
      (let rec h_3_0 = a_0 in
        (`LH_C((_lh_popOutId_0_0 h_3_0), ((map_lh__d1__d0 _lh_popOutId_0_0) t_3_1)))))
  else
    (`LH_N));;
let rec length_lh__d1__d1 ls_1_2 =
  (ls_1_2 99);;
let rec filter_lh__d1__d0 f_1_7 ls_3 =
  (match ls_3 with
    | `LH_C(h_2_0, t_2_1) -> 
      (if (f_1_7 h_2_0) then
        (`LH_C(h_2_0, ((filter_lh__d1__d0 f_1_7) t_2_1)))
      else
        ((filter_lh__d1__d0 f_1_7) t_2_1))
    | `LH_N -> 
      (`LH_N));;
let rec nub_lh__d1__d0 _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (fun _lh_dummy_4 -> 
        0)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (let rec t_9 = (nub_lh__d1__d0 ((filter_lh__d1__d0 (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0)) in
        (fun _lh_dummy_5 -> 
          (1 + (length_lh__d1__d1 t_9))))
    | _ -> 
      (failwith "error"));;
let rec sum_lh__d1__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec mappend_lh__d2__d1 xs_1_4 ys_2_3 =
  (xs_1_4 ys_2_3);;
let rec mappend_lh__d3__d2 xs_2_0 ys_3_3 =
  (xs_2_0 ys_3_3);;
let rec digitEnv_lh__d1__d0 _lh_digitEnv_arg1_2 =
  (match _lh_digitEnv_arg1_2 with
    | `Digits(_lh_digitEnv_Digits_0_2, _lh_digitEnv_Digits_1_2) -> 
      _lh_digitEnv_Digits_1_2
    | _ -> 
      (failwith "error"));;
let rec length_lh__d1__d0 ls_1_5 =
  (ls_1_5 99);;
let rec sum_lh__d1__d1 _lh_sum_arg1_1 =
  (_lh_sum_arg1_1 99);;
let rec reverse_helper_lh__d2__d0 ls_3_0 a_4 =
  (match ls_3_0 with
    | `LH_C(h_6_8, t_6_9) -> 
      ((reverse_helper_lh__d2__d0 t_6_9) (`LH_C(h_6_8, a_4)))
    | `LH_N -> 
      a_4);;
let rec reverse_lh__d2__d0 ls_2_1 =
  ((reverse_helper_lh__d2__d0 ls_2_1) (`LH_N));;
let rec concat_lh__d3__d0 lss_3_3 =
  (lss_3_3 99);;
let rec reverse_helper_lh__d1__d0 ls_3_2 a_5 =
  (match ls_3_2 with
    | `LH_C(h_8_2, t_8_3) -> 
      ((reverse_helper_lh__d1__d0 t_8_3) (`LH_C(h_8_2, a_5)))
    | `LH_N -> 
      a_5);;
let rec reverse_lh__d1__d0 ls_0 =
  ((reverse_helper_lh__d1__d0 ls_0) (`LH_N));;
let rec mappend_lh__d4__d1 xs_4 ys_9 =
  (xs_4 ys_9);;
let rec map_lh__d4__d0 f_1_9 ls_5 =
  (ls_5 f_1_9);;
let rec mappend_lh__d3__d1 xs_1_2 ys_2_0 =
  (xs_1_2 ys_2_0);;
let rec foldr_lh__d1__d1 f_1_8 i_4 ls_4 =
  ((ls_4 f_1_8) i_4);;
let rec unzip_lh__d1__d0 _lh_unzip_arg1_0 =
  (((foldr_lh__d1__d1 (fun ab_0 asbs_1 -> 
    (let rec _lh_matchIdent_2_3 = ab_0 in
      (_lh_matchIdent_2_3 asbs_1)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
let rec combine_lh__d1__d0 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (`LH_C((`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)), (transpose_lh__d1__d0 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0)))))
and
transpose_lh__d1__d0 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose_lh__d1__d0 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_8 = (unzip_lh__d1__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
            (match _lh_listcomp_fun_para_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                (match _lh_listcomp_fun_ls_h_2 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (let rec t_2_4 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2) in
                      (let rec h_2_3 = (let rec _lh_unzip_LH_P2_1_0 = _lh_transpose_LH_C_1_2 in
                        (let rec _lh_unzip_LH_P2_0_0 = _lh_transpose_LH_C_0_2 in
                          (fun asbs_0 -> 
                            (let rec _lh_matchIdent_9 = asbs_0 in
                              (match _lh_matchIdent_9 with
                                | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_2_2 i_5 -> 
                          ((f_2_2 h_2_3) (((foldr_lh__d1__d1 f_2_2) i_5) t_2_4)))))
                  | _ -> 
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
              | `LH_N -> 
                (fun f_2_3 i_6 -> 
                  i_6))) in
            (_lh_listcomp_fun_2 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh__d1__d0 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3__d4 xs_1_5 ys_2_4 =
  (xs_1_5 ys_2_4);;
let rec mappend_lh__d3__d5 xs_1_7 ys_2_8 =
  (xs_1_7 ys_2_8);;
let rec mappend_lh__d3__d3 xs_1_8 ys_2_9 =
  (xs_1_8 ys_2_9);;
let rec digitEnv_lh__d2__d0 _lh_digitEnv_arg1_3 =
  (match _lh_digitEnv_arg1_3 with
    | `Digits(_lh_digitEnv_Digits_0_3, _lh_digitEnv_Digits_1_3) -> 
      _lh_digitEnv_Digits_1_3
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d6__d0 xs_3 ys_8 =
  (match xs_3 with
    | `LH_C(h_1_2, t_1_3) -> 
      (`LH_C(h_1_2, ((mappend_lh__d6__d0 t_1_3) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec map_lh__d4__d1 f_1_5 ls_1 =
  (ls_1 f_1_5);;
let rec concat_lh__d3__d1 lss_2_8 =
  (lss_2_8 99);;
let rec unlines_lh__d1__d0 _lh_unlines_arg1_0 =
  (concat_lh__d3__d1 ((map_lh__d4__d1 (fun l_0 -> 
    ((mappend_lh__d6__d0 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec map_lh__d2__d0 f_4_5 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_4_5, t_4_6) -> 
      (`LH_C((f_4_5 h_4_5), ((map_lh__d2__d0 f_4_5) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d8__d0 xs_2_7 ys_5_0 =
  (match xs_2_7 with
    | `LH_C(h_4_6, t_4_7) -> 
      (`LH_C(h_4_6, ((mappend_lh__d8__d0 t_4_7) ys_5_0)))
    | `LH_N -> 
      ys_5_0);;
let rec return_lh__d3__d0 _lh_return_arg1_2 =
  (`StateT((fun s_5 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_2, s_5)), (`LH_N))))));;
let rec runStateT_lh__d5__d0 _lh_runStateT_arg1_2_3 =
  _lh_runStateT_arg1_2_3;;
let rec concat_lh__d5__d0 lss_3_1 =
  (lss_3_1 99);;
let rec map_lh__d6__d0 f_3_8 ls_1_6 =
  (ls_1_6 f_3_8);;
let rec bind_lh__d2__d0 _lh_bind_arg1_2 _lh_bind_arg2_5 =
  (let rec _lh_runStateT_StateT_0_5 = (fun s_6 -> 
    (concat_lh__d5__d0 ((map_lh__d6__d0 (fun as_2 -> 
      (let rec _lh_matchIdent_4 = as_2 in
        (_lh_matchIdent_4 _lh_bind_arg2_5)))) ((runStateT_lh__d5__d0 _lh_bind_arg1_2) s_6)))) in
    _lh_runStateT_StateT_0_5);;
let rec mappend_lh__d8__d3 xs_1 ys_6 =
  (xs_1 ys_6);;
let rec map_lh__d6__d2 f_2_5 ls_6 =
  (ls_6 f_2_5);;
let rec concat_lh__d5__d5 lss_1_4 =
  (lss_1_4 99);;
let rec mappend_lh__d8__d2 xs_2_4 ys_3_8 =
  (xs_2_4 ys_3_8);;
let rec runStateT_lh__d6__d2 _lh_runStateT_arg1_2_5 =
  _lh_runStateT_arg1_2_5;;
let rec return_lh__d2__d0 _lh_return_arg1_4 =
  (let rec _lh_runStateT_StateT_0_1_1 = (fun s_1_3 -> 
    (let rec t_2_8 = (fun ys_3_0 -> 
      ys_3_0) in
      (let rec h_2_7 = (let rec _lh_bind_LH_P2_1_6 = s_1_3 in
        (let rec _lh_bind_LH_P2_0_6 = _lh_return_arg1_4 in
          (fun _lh_bind_arg2_1_1 -> 
            ((runStateT_lh__d6__d2 (_lh_bind_arg2_1_1 _lh_bind_LH_P2_0_6)) _lh_bind_LH_P2_1_6)))) in
        (fun ys_3_1 -> 
          (let rec t_2_9 = ((mappend_lh__d8__d2 t_2_8) ys_3_1) in
            (let rec h_2_8 = h_2_7 in
              (fun f_2_6 -> 
                (let rec t_3_0 = ((map_lh__d6__d2 f_2_6) t_2_9) in
                  (let rec h_2_9 = (f_2_6 h_2_8) in
                    (fun _lh_dummy_1_6 -> 
                      ((mappend_lh__d8__d3 h_2_9) (concat_lh__d5__d5 t_3_0)))))))))))) in
    _lh_runStateT_StateT_0_1_1);;
let rec map_lh__d6__d1_d0 f_5_4 ls_2_5 =
  (ls_2_5 f_5_4);;
let rec concat_lh__d5__d2_d0 lss_1_2 =
  (lss_1_2 99);;
let rec runStateT_lh__d6__d1_d7 _lh_runStateT_arg1_1 =
  _lh_runStateT_arg1_1;;
let rec bind_lh__d6__d0 _lh_bind_arg1_4 _lh_bind_arg2_7 =
  (let rec _lh_runStateT_StateT_0_7 = (fun s_8 -> 
    (concat_lh__d5__d2_d0 ((map_lh__d6__d1_d0 (fun as_4 -> 
      (let rec _lh_matchIdent_6 = as_4 in
        (_lh_matchIdent_6 _lh_bind_arg2_7)))) ((runStateT_lh__d6__d1_d7 _lh_bind_arg1_4) s_8)))) in
    _lh_runStateT_StateT_0_7);;
let rec digitEnv_lh__d4__d1 _lh_digitEnv_arg1_4 =
  (match _lh_digitEnv_arg1_4 with
    | `Digits(_lh_digitEnv_Digits_0_4, _lh_digitEnv_Digits_1_4) -> 
      _lh_digitEnv_Digits_1_4
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d5__d2_d1 lss_3_6 =
  (lss_3_6 99);;
let rec runStateT_lh__d6__d1_d6 _lh_runStateT_arg1_2_1 =
  _lh_runStateT_arg1_2_1;;
let rec mappend_lh__d8__d1_d2 xs_3_4 ys_8_0 =
  (xs_3_4 ys_8_0);;
let rec get_lh__d2__d1 =
  (let rec _lh_runStateT_StateT_0_3_1 = (fun s_3_1 -> 
    (let rec t_7_9 = (fun f_6_6 _lh_dummy_4_6 f_6_7 _lh_dummy_4_7 ys_7_9 -> 
      ys_7_9) in
      (let rec h_7_8 = (let rec _lh_bind_LH_P2_1_1_6 = s_3_1 in
        (let rec _lh_bind_LH_P2_0_1_6 = s_3_1 in
          (fun _lh_bind_arg2_2_8 -> 
            ((runStateT_lh__d6__d1_d6 (_lh_bind_arg2_2_8 _lh_bind_LH_P2_0_1_6)) _lh_bind_LH_P2_1_1_6)))) in
        (fun f_6_8 -> 
          (let rec t_8_0 = ((map_lh__d6__d1_d0 f_6_8) t_7_9) in
            (let rec h_7_9 = (f_6_8 h_7_8) in
              (fun _lh_dummy_4_8 -> 
                ((mappend_lh__d8__d1_d2 h_7_9) (concat_lh__d5__d2_d1 t_8_0))))))))) in
    _lh_runStateT_StateT_0_3_1);;
let rec concat_lh__d5__d2_d2 lss_3_4 =
  (lss_3_4 99);;
let rec map_lh__d6__d1_d1 f_6_2 ls_2_9 =
  (ls_2_9 f_6_2);;
let rec runStateT_lh__d6__d1_d9 _lh_runStateT_arg1_8 =
  _lh_runStateT_arg1_8;;
let rec bind_lh__d8__d4 _lh_bind_arg1_0 _lh_bind_arg2_0 =
  (let rec _lh_runStateT_StateT_0_0 = (fun s_0 -> 
    (concat_lh__d5__d2_d2 ((map_lh__d6__d1_d1 (fun as_0 -> 
      (let rec _lh_matchIdent_1 = as_0 in
        (_lh_matchIdent_1 _lh_bind_arg2_0)))) ((runStateT_lh__d6__d1_d9 _lh_bind_arg1_0) s_0)))) in
    _lh_runStateT_StateT_0_0);;
let rec mappend_lh__d8__d1_d5 xs_7 ys_1_4 =
  (xs_7 ys_1_4);;
let rec mappend_lh__d8__d1_d3 xs_1_1 ys_1_9 =
  (xs_1_1 ys_1_9);;
let rec mappend_lh__d8__d1 xs_1_6 ys_2_7 =
  (xs_1_6 ys_2_7);;
let rec concat_lh__d5__d1 lss_1_9 =
  (lss_1_9 99);;
let rec runStateT_lh__d4__d0 _lh_runStateT_arg1_2_8 =
  _lh_runStateT_arg1_2_8;;
let rec mappend_lh__d8__d1_d4 xs_3_9 ys_9_0 =
  (xs_3_9 ys_9_0);;
let rec return_lh__d7__d2 _lh_return_arg1_0 =
  (let rec _lh_runStateT_StateT_0_1 = (fun s_1 -> 
    (let rec t_3 = (fun ys_1 -> 
      ys_1) in
      (let rec h_3 = (let rec _lh_bind_LH_P2_1_0 = s_1 in
        (let rec _lh_bind_LH_P2_0_0 = _lh_return_arg1_0 in
          (fun _lh_bind_arg2_1 -> 
            ((runStateT_lh__d4__d0 (_lh_bind_arg2_1 _lh_bind_LH_P2_0_0)) _lh_bind_LH_P2_1_0)))) in
        (fun ys_2 -> 
          (let rec t_4 = ((mappend_lh__d8__d1_d5 t_3) ys_2) in
            (let rec h_4 = h_3 in
              (fun ys_3 -> 
                (let rec t_5 = ((mappend_lh__d8__d1_d4 t_4) ys_3) in
                  (let rec h_5 = h_4 in
                    (fun ys_4 -> 
                      (let rec t_6 = ((mappend_lh__d8__d1_d3 t_5) ys_4) in
                        (let rec h_6 = h_5 in
                          (fun ys_5 -> 
                            (let rec t_7 = ((mappend_lh__d8__d1_d2 t_6) ys_5) in
                              (let rec h_7 = h_6 in
                                (fun f_5 -> 
                                  (let rec t_8 = ((map_lh__d6__d0 f_5) t_7) in
                                    (let rec h_8 = (f_5 h_7) in
                                      (fun _lh_dummy_3 -> 
                                        ((mappend_lh__d8__d1 h_8) (concat_lh__d5__d1 t_8))))))))))))))))))))) in
    _lh_runStateT_StateT_0_1);;
let rec digits_lh__d1__d1 _lh_digits_arg1_0 =
  (match _lh_digits_arg1_0 with
    | `Digits(_lh_digits_Digits_0_0, _lh_digits_Digits_1_0) -> 
      _lh_digits_Digits_0_0
    | _ -> 
      (failwith "error"));;
let rec digitEnv_lh__d4__d2 _lh_digitEnv_arg1_0 =
  (match _lh_digitEnv_arg1_0 with
    | `Digits(_lh_digitEnv_Digits_0_0, _lh_digitEnv_Digits_1_0) -> 
      _lh_digitEnv_Digits_1_0
    | _ -> 
      (failwith "error"));;
let rec delete_lh__d1__d1 _lh_delete_arg1_1 _lh_delete_arg2_1 =
  (match _lh_delete_arg1_1 with
    | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
      (if (_lh_delete_LH_C_0_1 = _lh_delete_arg2_1) then
        ((delete_lh__d1__d1 _lh_delete_LH_C_1_1) _lh_delete_arg2_1)
      else
        (`LH_C(_lh_delete_LH_C_0_1, ((delete_lh__d1__d1 _lh_delete_LH_C_1_1) _lh_delete_arg2_1))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec foldl_lh__d1__d2 f_3_7 i_7 ls_1_4 =
  ((ls_1_4 f_3_7) i_7);;
let rec listDiff_lh__d1__d1 =
  (foldl_lh__d1__d2 delete_lh__d1__d1);;
let rec concat_lh__d5__d2_d4 lss_2_5 =
  (lss_2_5 99);;
let rec runStateT_lh__d6__d2_d1 _lh_runStateT_arg1_3 =
  _lh_runStateT_arg1_3;;
let rec map_lh__d6__d1_d2 f_3_1 ls_1_1 =
  (ls_1_1 f_3_1);;
let rec bind_lh__d8__d5 _lh_bind_arg1_5 _lh_bind_arg2_8 =
  (let rec _lh_runStateT_StateT_0_8 = (fun s_9 -> 
    (concat_lh__d5__d2_d4 ((map_lh__d6__d1_d2 (fun as_5 -> 
      (let rec _lh_matchIdent_7 = as_5 in
        (_lh_matchIdent_7 _lh_bind_arg2_8)))) ((runStateT_lh__d6__d2_d1 _lh_bind_arg1_5) s_9)))) in
    _lh_runStateT_StateT_0_8);;
let rec concat_lh__d5__d2_d8 lss_8 =
  (lss_8 99);;
let rec runStateT_lh__d6__d2_d0 _lh_runStateT_arg1_1_0 =
  _lh_runStateT_arg1_1_0;;
let rec map_lh__d6__d1_d4 f_4_1 ls_1_7 =
  (ls_1_7 f_4_1);;
let rec concat_lh__d5__d2_d5 lss_3_0 =
  (lss_3_0 99);;
let rec mappend_lh__d8__d1_d6 xs_3_3 ys_7_1 =
  (xs_3_3 ys_7_1);;
let rec lift_lh__d1__d1 _lh_lift_arg1_0 =
  (let rec _lh_runStateT_StateT_0_1_0 = (fun s_1_2 -> 
    (concat_lh__d5__d2_d8 ((map_lh__d6__d1_d4 (fun x_0 -> 
      (let rec t_2_5 = (fun ys_2_5 -> 
        ys_2_5) in
        (let rec h_2_4 = (let rec _lh_bind_LH_P2_1_5 = s_1_2 in
          (let rec _lh_bind_LH_P2_0_5 = x_0 in
            (fun _lh_bind_arg2_1_0 -> 
              ((runStateT_lh__d6__d2_d0 (_lh_bind_arg2_1_0 _lh_bind_LH_P2_0_5)) _lh_bind_LH_P2_1_5)))) in
          (fun ys_2_6 -> 
            (let rec t_2_6 = ((mappend_lh__d8__d1_d6 t_2_5) ys_2_6) in
              (let rec h_2_5 = h_2_4 in
                (fun f_2_4 -> 
                  (let rec t_2_7 = ((map_lh__d6__d1_d2 f_2_4) t_2_6) in
                    (let rec h_2_6 = (f_2_4 h_2_5) in
                      (fun _lh_dummy_1_5 -> 
                        ((mappend_lh__d8__d1_d4 h_2_6) (concat_lh__d5__d2_d5 t_2_7))))))))))))) _lh_lift_arg1_0))) in
    _lh_runStateT_StateT_0_1_0);;
let rec concat_lh__d5__d2_d9 lss_1_6 =
  (lss_1_6 99);;
let rec concat_lh__d5__d2_d3 lss_2_2 =
  (lss_2_2 99);;
let rec runStateT_lh__d6__d1_d8 _lh_runStateT_arg1_2_6 =
  _lh_runStateT_arg1_2_6;;
let rec get_lh__d2__d2 =
  (let rec _lh_runStateT_StateT_0_1_6 = (fun s_1_8 -> 
    (let rec t_3_4 = (fun f_3_9 _lh_dummy_1_9 ys_4_0 -> 
      ys_4_0) in
      (let rec h_3_3 = (let rec _lh_bind_LH_P2_1_8 = s_1_8 in
        (let rec _lh_bind_LH_P2_0_8 = s_1_8 in
          (fun _lh_bind_arg2_1_6 -> 
            ((runStateT_lh__d6__d1_d8 (_lh_bind_arg2_1_6 _lh_bind_LH_P2_0_8)) _lh_bind_LH_P2_1_8)))) in
        (fun f_4_0 -> 
          (let rec t_3_5 = ((map_lh__d6__d1_d1 f_4_0) t_3_4) in
            (let rec h_3_4 = (f_4_0 h_3_3) in
              (fun _lh_dummy_2_0 -> 
                ((mappend_lh__d8__d1_d3 h_3_4) (concat_lh__d5__d2_d3 t_3_5))))))))) in
    _lh_runStateT_StateT_0_1_6);;
let rec runStateT_lh__d6__d2_d2 _lh_runStateT_arg1_6 =
  _lh_runStateT_arg1_6;;
let rec map_lh__d6__d1_d3 f_5_5 ls_2_6 =
  (ls_2_6 f_5_5);;
let rec concat_lh__d5__d2_d7 lss_2_1 =
  (lss_2_1 99);;
let rec put_lh__d1__d1 _lh_put_arg1_1 =
  (let rec _lh_runStateT_StateT_0_2_4 = (fun s_2_4 -> 
    (let rec t_5_1 = (fun f_5_1 _lh_dummy_3_0 ys_5_7 -> 
      ys_5_7) in
      (let rec h_5_0 = (let rec _lh_bind_LH_P2_1_1_0 = _lh_put_arg1_1 in
        (let rec _lh_bind_LH_P2_0_1_0 = (`Unit) in
          (fun _lh_bind_arg2_2_1 -> 
            ((runStateT_lh__d6__d2_d2 (_lh_bind_arg2_2_1 _lh_bind_LH_P2_0_1_0)) _lh_bind_LH_P2_1_1_0)))) in
        (fun f_5_2 -> 
          (let rec t_5_2 = ((map_lh__d6__d1_d3 f_5_2) t_5_1) in
            (let rec h_5_1 = (f_5_2 h_5_0) in
              (fun _lh_dummy_3_1 -> 
                ((mappend_lh__d8__d1_d5 h_5_1) (concat_lh__d5__d2_d7 t_5_2))))))))) in
    _lh_runStateT_StateT_0_2_4);;
let rec concat_lh__d5__d2_d6 lss_2_0 =
  (lss_2_0 99);;
let rec runStateT_lh__d6__d2_d3 _lh_runStateT_arg1_2_0 =
  _lh_runStateT_arg1_2_0;;
let rec bind_lh__d8__d6 _lh_bind_arg1_8 _lh_bind_arg2_1_5 =
  (let rec _lh_runStateT_StateT_0_1_5 = (fun s_1_7 -> 
    (concat_lh__d5__d2_d6 ((map_lh__d6__d1_d3 (fun as_8 -> 
      (let rec _lh_matchIdent_1_4 = as_8 in
        (_lh_matchIdent_1_4 _lh_bind_arg2_1_5)))) ((runStateT_lh__d6__d2_d3 _lh_bind_arg1_8) s_1_7)))) in
    _lh_runStateT_StateT_0_1_5);;
let rec permute_lh__d2__d0 _lh_permute_arg1_2 =
  ((bind_lh__d8__d4 get_lh__d2__d2) (fun st_2 -> 
    ((bind_lh__d8__d5 (let rec xs_2 = (digits_lh__d1__d1 st_2) in
      (lift_lh__d1__d1 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (let rec t_1_0 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
              (let rec h_9 = (let rec _lh_permute_LH_P2_1_1 = ((listDiff_lh__d1__d1 xs_2) (let rec t_1_1 = (fun f_6 i_2 -> 
                i_2) in
                (let rec h_1_0 = _lh_listcomp_fun_ls_h_1 in
                  (fun f_7 i_3 -> 
                    (((foldl_lh__d1__d2 f_7) ((f_7 i_3) h_1_0)) t_1_1))))) in
                (let rec _lh_permute_LH_P2_0_1 = _lh_listcomp_fun_ls_h_1 in
                  (fun _lh_permute_arg1_3 st_3 -> 
                    ((bind_lh__d8__d6 (put_lh__d1__d1 (`Digits(_lh_permute_LH_P2_1_1, (`LH_C((`LH_P2(_lh_permute_arg1_3, _lh_permute_LH_P2_0_1)), (digitEnv_lh__d4__d2 st_3))))))) (fun _p_1 -> 
                      (return_lh__d7__d2 _lh_permute_LH_P2_0_1)))))) in
                (fun f_8 -> 
                  (let rec t_1_2 = ((map_lh__d6__d1_d4 f_8) t_1_0) in
                    (let rec h_1_1 = (f_8 h_9) in
                      (fun _lh_dummy_6 -> 
                        ((mappend_lh__d8__d1_d6 h_1_1) (concat_lh__d5__d2_d9 t_1_2))))))))
          | `LH_N -> 
            (fun f_9 _lh_dummy_7 f_1_0 _lh_dummy_8 ys_7 -> 
              ys_7))) in
        (_lh_listcomp_fun_1 xs_2))))) (fun iis_1 -> 
      (let rec _lh_matchIdent_2 = iis_1 in
        ((_lh_matchIdent_2 _lh_permute_arg1_2) st_2))))));;
let rec return_lh__d5__d0 _lh_return_arg1_1 =
  (let rec _lh_runStateT_StateT_0_3 = (fun s_4 -> 
    (let rec t_1_6 = (fun ys_1_2 -> 
      ys_1_2) in
      (let rec h_1_5 = (let rec _lh_bind_LH_P2_1_2 = s_4 in
        (let rec _lh_bind_LH_P2_0_2 = _lh_return_arg1_1 in
          (fun _lh_bind_arg2_4 -> 
            ((runStateT_lh__d4__d0 (_lh_bind_arg2_4 _lh_bind_LH_P2_0_2)) _lh_bind_LH_P2_1_2)))) in
        (fun ys_1_3 -> 
          (let rec t_1_7 = ((mappend_lh__d8__d1_d2 t_1_6) ys_1_3) in
            (let rec h_1_6 = h_1_5 in
              (fun f_1_4 -> 
                (let rec t_1_8 = ((map_lh__d6__d0 f_1_4) t_1_7) in
                  (let rec h_1_7 = (f_1_4 h_1_6) in
                    (fun _lh_dummy_1_2 -> 
                      ((mappend_lh__d8__d1 h_1_7) (concat_lh__d5__d1 t_1_8)))))))))))) in
    _lh_runStateT_StateT_0_3);;
let rec lookup_lh__d3__d0 _lh_lookup_arg1_0 _lh_lookup_arg2_0 =
  (match _lh_lookup_arg2_0 with
    | `LH_N -> 
      (fun _lh_select_arg1_0 -> 
        (permute_lh__d2__d0 _lh_select_arg1_0))
    | `LH_C(_lh_lookup_LH_C_0_0, _lh_lookup_LH_C_1_0) -> 
      (match _lh_lookup_LH_C_0_0 with
        | `LH_P2(_lh_lookup_LH_P2_0_0, _lh_lookup_LH_P2_1_0) -> 
          (if (_lh_lookup_arg1_0 = _lh_lookup_LH_P2_0_0) then
            (let rec _lh_select_Just_0_0 = _lh_lookup_LH_P2_1_0 in
              (fun _lh_select_arg1_1 -> 
                (return_lh__d5__d0 _lh_select_Just_0_0)))
          else
            ((lookup_lh__d3__d0 _lh_lookup_arg1_0) _lh_lookup_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec select_lh__d2__d0 _lh_select_arg1_2 =
  ((bind_lh__d6__d0 get_lh__d2__d1) (fun st_4 -> 
    (let rec _lh_matchIdent_1_0 = ((lookup_lh__d3__d0 _lh_select_arg1_2) (digitEnv_lh__d4__d1 st_4)) in
      (_lh_matchIdent_1_0 _lh_select_arg1_2))));;
let rec rest_lh__d1__d0 _lh_rest_arg1_0 =
  (match _lh_rest_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_rest_LH_C_0_0, _lh_rest_LH_C_1_0) -> 
      _lh_rest_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec map_lh__d5__d0 f_6_9 ls_3_3 =
  (ls_3_3 f_6_9);;
let rec runStateT_lh__d3__d0 _lh_runStateT_arg1_1_1 =
  _lh_runStateT_arg1_1_1;;
let rec concat_lh__d4__d0 lss_1_5 =
  (lss_1_5 99);;
let rec bind_lh__d1__d0 _lh_bind_arg1_9 _lh_bind_arg2_1_7 =
  (let rec _lh_runStateT_StateT_0_1_7 = (fun s_1_9 -> 
    (concat_lh__d4__d0 ((map_lh__d5__d0 (fun as_9 -> 
      (let rec _lh_matchIdent_1_5 = as_9 in
        (_lh_matchIdent_1_5 _lh_bind_arg2_1_7)))) ((runStateT_lh__d3__d0 _lh_bind_arg1_9) s_1_9)))) in
    _lh_runStateT_StateT_0_1_7);;
let rec sum_lh__d2__d0 _lh_sum_arg1_2 =
  (_lh_sum_arg1_2 99);;
let rec concat_lh__d4__d1 lss_1_3 =
  (lss_1_3 99);;
let rec runStateT_lh__d2__d0 _lh_runStateT_arg1_2_2 =
  (match _lh_runStateT_arg1_2_2 with
    | `StateT(_lh_runStateT_StateT_0_2_0) -> 
      _lh_runStateT_StateT_0_2_0
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8__d4 xs_3_5 ys_8_4 =
  (match xs_3_5 with
    | `LH_C(h_8_3, t_8_4) -> 
      (let rec t_8_5 = ((mappend_lh__d8__d4 t_8_4) ys_8_4) in
        (let rec h_8_4 = h_8_3 in
          (fun ys_8_5 -> 
            (let rec t_8_6 = ((mappend_lh__d8__d1 t_8_5) ys_8_5) in
              (let rec h_8_5 = h_8_4 in
                (fun ys_8_6 -> 
                  (`LH_C(h_8_5, ((mappend_lh__d8__d3 t_8_6) ys_8_6)))))))))
    | `LH_N -> 
      ys_8_4);;
let rec map_lh__d5__d1 f_1_6 ls_2 =
  (ls_2 f_1_6);;
let rec guard_lh__d1__d0 _lh_guard_arg1_0 =
  (match _lh_guard_arg1_0 with
    | true -> 
      (let rec _lh_runStateT_StateT_0_2_1 = (fun s_2_1 -> 
        (let rec t_4_9 = (fun f_4_6 _lh_dummy_2_7 ys_5_3 -> 
          ys_5_3) in
          (let rec h_4_8 = (let rec _lh_bind_LH_P2_1_9 = s_2_1 in
            (let rec _lh_bind_LH_P2_0_9 = (`Unit) in
              (fun _lh_bind_arg2_1_9 -> 
                ((runStateT_lh__d2__d0 (_lh_bind_arg2_1_9 _lh_bind_LH_P2_0_9)) _lh_bind_LH_P2_1_9)))) in
            (fun f_4_7 -> 
              (let rec t_5_0 = ((map_lh__d5__d1 f_4_7) t_4_9) in
                (let rec h_4_9 = (f_4_7 h_4_8) in
                  (fun _lh_dummy_2_8 -> 
                    ((mappend_lh__d8__d4 h_4_9) (concat_lh__d4__d1 t_5_0))))))))) in
        _lh_runStateT_StateT_0_2_1)
    | false -> 
      (let rec _lh_runStateT_StateT_0_2_2 = (fun s_2_2 f_4_8 _lh_dummy_2_9 ys_5_4 -> 
        ys_5_4) in
        _lh_runStateT_StateT_0_2_2)
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d5__d3 lss_9 =
  (lss_9 99);;
let rec map_lh__d6__d1 f_5_6 ls_2_7 _lh_popOutId_0_3 =
  (match ls_2_7 with
    | `LH_C(h_6_1, t_6_2) -> 
      (let rec t_6_3 = ((map_lh__d6__d1 f_5_6) t_6_2) in
        (let rec h_6_2 = (f_5_6 h_6_1) in
          ((mappend_lh__d8__d2 h_6_2) (concat_lh__d5__d3 t_6_3))))
    | `LH_N -> 
      (fun f_5_7 _lh_dummy_4_0 -> 
        (`LH_N)));;
let rec runStateT_lh__d6__d1 _lh_runStateT_arg1_7 =
  (match _lh_runStateT_arg1_7 with
    | `StateT(_lh_runStateT_StateT_0_4) -> 
      _lh_runStateT_StateT_0_4
    | _ -> 
      (failwith "error"));;
let rec runStateT_lh__d6__d0 _lh_runStateT_arg1_9 =
  _lh_runStateT_arg1_9;;
let rec concat_lh__d5__d2 lss_1 =
  (lss_1 99);;
let rec bind_lh__d3__d0 _lh_bind_arg1_1_2 _lh_bind_arg2_2_2 =
  (let rec _lh_runStateT_StateT_0_2_5 = (fun s_2_5 -> 
    (concat_lh__d5__d2 ((map_lh__d6__d1 (fun as_1_2 -> 
      (let rec _lh_matchIdent_2_0 = as_1_2 in
        (match _lh_matchIdent_2_0 with
          | `LH_P2(_lh_bind_LH_P2_0_1_1, _lh_bind_LH_P2_1_1_1) -> 
            ((runStateT_lh__d6__d0 (_lh_bind_arg2_2_2 _lh_bind_LH_P2_0_1_1)) _lh_bind_LH_P2_1_1_1)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d6__d1 _lh_bind_arg1_1_2) s_2_5)))) in
    _lh_runStateT_StateT_0_2_5);;
let rec runStateT_lh__d6__d7 _lh_runStateT_arg1_1_9 =
  _lh_runStateT_arg1_1_9;;
let rec concat_lh__d5__d8 lss_3_2 =
  (lss_3_2 99);;
let rec map_lh__d6__d4 f_2_7 ls_7 =
  (ls_7 f_2_7);;
let rec bind_lh__d8__d0 _lh_bind_arg1_1 _lh_bind_arg2_2 =
  (`StateT((fun s_2 -> 
    (concat_lh__d5__d8 ((map_lh__d6__d4 (fun as_1 -> 
      (let rec _lh_matchIdent_3 = as_1 in
        (_lh_matchIdent_3 _lh_bind_arg2_2)))) ((runStateT_lh__d6__d7 _lh_bind_arg1_1) s_2))))));;
let rec concat_lh__d5__d7 lss_5 =
  (lss_5 99);;
let rec mappend_lh__d8__d5 xs_2_5 ys_3_9 =
  (xs_2_5 ys_3_9);;
let rec map_lh__d6__d3 f_5_3 ls_2_4 _lh_popOutId_0_2 =
  (match ls_2_4 with
    | `LH_C(h_5_2, t_5_3) -> 
      (let rec t_5_4 = ((map_lh__d6__d3 f_5_3) t_5_3) in
        (let rec h_5_3 = (f_5_3 h_5_2) in
          ((mappend_lh__d8__d5 h_5_3) (concat_lh__d5__d7 t_5_4))))
    | `LH_N -> 
      (fun ys_5_8 -> 
        ys_5_8));;
let rec concat_lh__d5__d6 lss_3 =
  (lss_3 99);;
let rec runStateT_lh__d6__d4 _lh_runStateT_arg1_2_7 =
  _lh_runStateT_arg1_2_7;;
let rec runStateT_lh__d6__d5 _lh_runStateT_arg1_1_3 =
  (match _lh_runStateT_arg1_1_3 with
    | `StateT(_lh_runStateT_StateT_0_1_3) -> 
      _lh_runStateT_StateT_0_1_3
    | _ -> 
      (failwith "error"));;
let rec bind_lh__d7__d0 _lh_bind_arg1_3 _lh_bind_arg2_6 =
  (let rec _lh_runStateT_StateT_0_6 = (fun s_7 -> 
    (concat_lh__d5__d6 ((map_lh__d6__d3 (fun as_3 -> 
      (let rec _lh_matchIdent_5 = as_3 in
        (match _lh_matchIdent_5 with
          | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
            ((runStateT_lh__d6__d4 (_lh_bind_arg2_6 _lh_bind_LH_P2_0_3)) _lh_bind_LH_P2_1_3)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d6__d5 _lh_bind_arg1_3) s_7)))) in
    _lh_runStateT_StateT_0_6);;
let rec return_lh__d6__d0 _lh_return_arg1_3 =
  (`StateT((fun s_1_1 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_3, s_1_1)), (`LH_N))))));;
let rec mappend_lh__d8__d6 xs_2_3 ys_3_7 =
  (xs_2_3 ys_3_7);;
let rec return_lh__d7__d0 _lh_return_arg1_8 =
  (let rec _lh_runStateT_StateT_0_3_2 = (fun s_3_2 -> 
    (let rec t_8_1 = (fun ys_8_1 -> 
      ys_8_1) in
      (let rec h_8_0 = (`LH_P2(_lh_return_arg1_8, s_3_2)) in
        (fun ys_8_2 -> 
          (let rec t_8_2 = ((mappend_lh__d8__d5 t_8_1) ys_8_2) in
            (let rec h_8_1 = h_8_0 in
              (fun ys_8_3 -> 
                (`LH_C(h_8_1, ((mappend_lh__d8__d6 t_8_2) ys_8_3)))))))))) in
    _lh_runStateT_StateT_0_3_2);;
let rec foldr_lh__d1__d0 f_7_0 i_1_0 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_8_6, t_8_7) -> 
      ((f_7_0 h_8_6) (((foldr_lh__d1__d0 f_7_0) i_1_0) t_8_7))
    | `LH_N -> 
      i_1_0);;
let rec mapM_lh__d1__d0 _lh_mapM_arg1_0 _lh_mapM_arg2_0 =
  (((foldr_lh__d1__d0 (fun a_2 r_0 -> 
    ((bind_lh__d8__d0 (_lh_mapM_arg1_0 a_2)) (fun x_2 -> 
      ((bind_lh__d7__d0 r_0) (fun xs_3_1 -> 
        (return_lh__d7__d0 (let rec _lh_sum_LH_C_1_1 = xs_3_1 in
          (let rec _lh_sum_LH_C_0_1 = x_2 in
            (fun _lh_dummy_3_4 -> 
              (_lh_sum_LH_C_0_1 + (sum_lh__d2__d0 _lh_sum_LH_C_1_1)))))))))))) (return_lh__d6__d0 (fun _lh_dummy_3_5 -> 
    0))) _lh_mapM_arg2_0);;
let rec return_lh__d1__d0 _lh_return_arg1_6 =
  (let rec _lh_runStateT_StateT_0_2_7 = (fun s_2_7 -> 
    (let rec t_6_7 = (fun f_6_0 _lh_dummy_4_2 -> 
      (`LH_N)) in
      (let rec h_6_6 = (let rec _lh_bind_LH_P2_1_1_3 = s_2_7 in
        (let rec _lh_bind_LH_P2_0_1_3 = _lh_return_arg1_6 in
          (fun _lh_bind_arg2_2_4 -> 
            ((runStateT_lh__d6__d2 (_lh_bind_arg2_2_4 _lh_bind_LH_P2_0_1_3)) _lh_bind_LH_P2_1_1_3)))) in
        (fun f_6_1 -> 
          (let rec t_6_8 = ((map_lh__d6__d2 f_6_1) t_6_7) in
            (let rec h_6_7 = (f_6_1 h_6_6) in
              (fun _lh_dummy_4_3 -> 
                ((mappend_lh__d8__d3 h_6_7) (concat_lh__d5__d5 t_6_8))))))))) in
    _lh_runStateT_StateT_0_2_7);;
let rec runStateT_lh__d6__d6 _lh_runStateT_arg1_0 =
  _lh_runStateT_arg1_0;;
let rec mappend_lh__d8__d7 xs_3_0 ys_5_6 =
  (xs_3_0 ys_5_6);;
let rec concat_lh__d5__d9 lss_3_5 =
  (lss_3_5 99);;
let rec return_lh__d4__d0 _lh_return_arg1_5 =
  (let rec _lh_runStateT_StateT_0_2_6 = (fun s_2_6 -> 
    (let rec t_6_4 = (fun ys_6_9 -> 
      ys_6_9) in
      (let rec h_6_3 = (let rec _lh_bind_LH_P2_1_1_2 = s_2_6 in
        (let rec _lh_bind_LH_P2_0_1_2 = _lh_return_arg1_5 in
          (fun _lh_bind_arg2_2_3 -> 
            ((runStateT_lh__d6__d6 (_lh_bind_arg2_2_3 _lh_bind_LH_P2_0_1_2)) _lh_bind_LH_P2_1_1_2)))) in
        (fun ys_7_0 -> 
          (let rec t_6_5 = ((mappend_lh__d8__d7 t_6_4) ys_7_0) in
            (let rec h_6_4 = h_6_3 in
              (fun f_5_9 -> 
                (let rec t_6_6 = ((map_lh__d6__d4 f_5_9) t_6_5) in
                  (let rec h_6_5 = (f_5_9 h_6_4) in
                    (fun _lh_dummy_4_1 -> 
                      ((mappend_lh__d8__d6 h_6_5) (concat_lh__d5__d9 t_6_6)))))))))))) in
    _lh_runStateT_StateT_0_2_6);;
let rec foldl_lh__d1__d1 f_4_9 i_8 ls_2_2 =
  ((ls_2_2 f_4_9) i_8);;
let rec delete_lh__d1__d0 _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete_lh__d1__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete_lh__d1__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec listDiff_lh__d1__d0 =
  (foldl_lh__d1__d1 delete_lh__d1__d0);;
let rec concat_lh__d5__d1_d9 lss_2 =
  (lss_2 99);;
let rec digitEnv_lh__d4__d0 _lh_digitEnv_arg1_1 =
  (match _lh_digitEnv_arg1_1 with
    | `Digits(_lh_digitEnv_Digits_0_1, _lh_digitEnv_Digits_1_1) -> 
      _lh_digitEnv_Digits_1_1
    | _ -> 
      (failwith "error"));;
let rec map_lh__d6__d6 f_3_2 ls_1_3 =
  (ls_1_3 f_3_2);;
let rec runStateT_lh__d6__d1_d0 _lh_runStateT_arg1_1_7 =
  _lh_runStateT_arg1_1_7;;
let rec concat_lh__d5__d1_d3 lss_7 =
  (lss_7 99);;
let rec mappend_lh__d8__d8 xs_2_6 ys_4_1 =
  (xs_2_6 ys_4_1);;
let rec get_lh__d2__d0 =
  (let rec _lh_runStateT_StateT_0_9 = (fun s_1_0 -> 
    (let rec t_2_2 = (fun f_2_0 _lh_dummy_1_3 ys_2_1 -> 
      ys_2_1) in
      (let rec h_2_1 = (let rec _lh_bind_LH_P2_1_4 = s_1_0 in
        (let rec _lh_bind_LH_P2_0_4 = s_1_0 in
          (fun _lh_bind_arg2_9 -> 
            ((runStateT_lh__d6__d1_d0 (_lh_bind_arg2_9 _lh_bind_LH_P2_0_4)) _lh_bind_LH_P2_1_4)))) in
        (fun f_2_1 -> 
          (let rec t_2_3 = ((map_lh__d6__d6 f_2_1) t_2_2) in
            (let rec h_2_2 = (f_2_1 h_2_1) in
              (fun _lh_dummy_1_4 -> 
                ((mappend_lh__d8__d8 h_2_2) (concat_lh__d5__d1_d3 t_2_3))))))))) in
    _lh_runStateT_StateT_0_9);;
let rec digits_lh__d1__d0 _lh_digits_arg1_1 =
  (match _lh_digits_arg1_1 with
    | `Digits(_lh_digits_Digits_0_1, _lh_digits_Digits_1_1) -> 
      _lh_digits_Digits_0_1
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d5__d1_d7 lss_2_9 =
  (lss_2_9 99);;
let rec mappend_lh__d8__d1_d0 xs_4_0 ys_9_1 =
  (xs_4_0 ys_9_1);;
let rec runStateT_lh__d6__d1_d4 _lh_runStateT_arg1_5 =
  _lh_runStateT_arg1_5;;
let rec map_lh__d6__d8 f_6_5 ls_3_1 =
  (ls_3_1 f_6_5);;
let rec put_lh__d1__d0 _lh_put_arg1_0 =
  (let rec _lh_runStateT_StateT_0_1_2 = (fun s_1_4 -> 
    (let rec t_3_2 = (fun f_3_5 _lh_dummy_1_7 ys_3_6 -> 
      ys_3_6) in
      (let rec h_3_1 = (let rec _lh_bind_LH_P2_1_7 = _lh_put_arg1_0 in
        (let rec _lh_bind_LH_P2_0_7 = (`Unit) in
          (fun _lh_bind_arg2_1_2 -> 
            ((runStateT_lh__d6__d1_d4 (_lh_bind_arg2_1_2 _lh_bind_LH_P2_0_7)) _lh_bind_LH_P2_1_7)))) in
        (fun f_3_6 -> 
          (let rec t_3_3 = ((map_lh__d6__d8 f_3_6) t_3_2) in
            (let rec h_3_2 = (f_3_6 h_3_1) in
              (fun _lh_dummy_1_8 -> 
                ((mappend_lh__d8__d1_d0 h_3_2) (concat_lh__d5__d1_d7 t_3_3))))))))) in
    _lh_runStateT_StateT_0_1_2);;
let rec runStateT_lh__d6__d1_d5 _lh_runStateT_arg1_1_8 =
  _lh_runStateT_arg1_1_8;;
let rec concat_lh__d5__d1_d6 lss_1_0 =
  (lss_1_0 99);;
let rec bind_lh__d8__d3 _lh_bind_arg1_7 _lh_bind_arg2_1_4 =
  (let rec _lh_runStateT_StateT_0_1_4 = (fun s_1_6 -> 
    (concat_lh__d5__d1_d6 ((map_lh__d6__d8 (fun as_7 -> 
      (let rec _lh_matchIdent_1_3 = as_7 in
        (_lh_matchIdent_1_3 _lh_bind_arg2_1_4)))) ((runStateT_lh__d6__d1_d5 _lh_bind_arg1_7) s_1_6)))) in
    _lh_runStateT_StateT_0_1_4);;
let rec map_lh__d6__d7 f_3_0 ls_1_0 =
  (ls_1_0 f_3_0);;
let rec concat_lh__d5__d1_d4 lss_4 =
  (lss_4 99);;
let rec runStateT_lh__d6__d1_d3 _lh_runStateT_arg1_1_4 =
  _lh_runStateT_arg1_1_4;;
let rec bind_lh__d8__d2 _lh_bind_arg1_1_0 _lh_bind_arg2_1_8 =
  (let rec _lh_runStateT_StateT_0_1_9 = (fun s_2_0 -> 
    (concat_lh__d5__d1_d4 ((map_lh__d6__d7 (fun as_1_0 -> 
      (let rec _lh_matchIdent_1_6 = as_1_0 in
        (_lh_matchIdent_1_6 _lh_bind_arg2_1_8)))) ((runStateT_lh__d6__d1_d3 _lh_bind_arg1_1_0) s_2_0)))) in
    _lh_runStateT_StateT_0_1_9);;
let rec mappend_lh__d8__d1_d1 xs_3_8 ys_8_9 =
  (xs_3_8 ys_8_9);;
let rec map_lh__d6__d9 f_5_0 ls_2_3 =
  (ls_2_3 f_5_0);;
let rec concat_lh__d5__d1_d8 lss_0 =
  (lss_0 99);;
let rec concat_lh__d5__d1_d5 lss_6 =
  (lss_6 99);;
let rec mappend_lh__d8__d9 xs_9 ys_1_7 =
  (xs_9 ys_1_7);;
let rec runStateT_lh__d6__d1_d2 _lh_runStateT_arg1_1_2 =
  _lh_runStateT_arg1_1_2;;
let rec lift_lh__d1__d0 _lh_lift_arg1_1 =
  (let rec _lh_runStateT_StateT_0_2_8 = (fun s_2_8 -> 
    (concat_lh__d5__d1_d8 ((map_lh__d6__d9 (fun x_3 -> 
      (let rec t_7_0 = (fun ys_7_2 -> 
        ys_7_2) in
        (let rec h_6_9 = (let rec _lh_bind_LH_P2_1_1_4 = s_2_8 in
          (let rec _lh_bind_LH_P2_0_1_4 = x_3 in
            (fun _lh_bind_arg2_2_5 -> 
              ((runStateT_lh__d6__d1_d2 (_lh_bind_arg2_2_5 _lh_bind_LH_P2_0_1_4)) _lh_bind_LH_P2_1_1_4)))) in
          (fun ys_7_3 -> 
            (let rec t_7_1 = ((mappend_lh__d8__d1_d1 t_7_0) ys_7_3) in
              (let rec h_7_0 = h_6_9 in
                (fun f_6_3 -> 
                  (let rec t_7_2 = ((map_lh__d6__d7 f_6_3) t_7_1) in
                    (let rec h_7_1 = (f_6_3 h_7_0) in
                      (fun _lh_dummy_4_4 -> 
                        ((mappend_lh__d8__d9 h_7_1) (concat_lh__d5__d1_d5 t_7_2))))))))))))) _lh_lift_arg1_1))) in
    _lh_runStateT_StateT_0_2_8);;
let rec runStateT_lh__d6__d1_d1 _lh_runStateT_arg1_2_4 =
  _lh_runStateT_arg1_2_4;;
let rec concat_lh__d5__d1_d2 lss_2_7 =
  (lss_2_7 99);;
let rec bind_lh__d8__d1 _lh_bind_arg1_1_3 _lh_bind_arg2_2_6 =
  (let rec _lh_runStateT_StateT_0_2_9 = (fun s_2_9 -> 
    (concat_lh__d5__d1_d2 ((map_lh__d6__d6 (fun as_1_3 -> 
      (let rec _lh_matchIdent_2_2 = as_1_3 in
        (_lh_matchIdent_2_2 _lh_bind_arg2_2_6)))) ((runStateT_lh__d6__d1_d1 _lh_bind_arg1_1_3) s_2_9)))) in
    _lh_runStateT_StateT_0_2_9);;
let rec return_lh__d7__d1 _lh_return_arg1_7 =
  (let rec _lh_runStateT_StateT_0_3_0 = (fun s_3_0 -> 
    (let rec t_7_3 = (fun ys_7_4 -> 
      ys_7_4) in
      (let rec h_7_2 = (let rec _lh_bind_LH_P2_1_1_5 = s_3_0 in
        (let rec _lh_bind_LH_P2_0_1_5 = _lh_return_arg1_7 in
          (fun _lh_bind_arg2_2_7 -> 
            ((runStateT_lh__d6__d6 (_lh_bind_arg2_2_7 _lh_bind_LH_P2_0_1_5)) _lh_bind_LH_P2_1_1_5)))) in
        (fun ys_7_5 -> 
          (let rec t_7_4 = ((mappend_lh__d8__d1_d0 t_7_3) ys_7_5) in
            (let rec h_7_3 = h_7_2 in
              (fun ys_7_6 -> 
                (let rec t_7_5 = ((mappend_lh__d8__d9 t_7_4) ys_7_6) in
                  (let rec h_7_4 = h_7_3 in
                    (fun ys_7_7 -> 
                      (let rec t_7_6 = ((mappend_lh__d8__d8 t_7_5) ys_7_7) in
                        (let rec h_7_5 = h_7_4 in
                          (fun ys_7_8 -> 
                            (let rec t_7_7 = ((mappend_lh__d8__d7 t_7_6) ys_7_8) in
                              (let rec h_7_6 = h_7_5 in
                                (fun f_6_4 -> 
                                  (let rec t_7_8 = ((map_lh__d6__d4 f_6_4) t_7_7) in
                                    (let rec h_7_7 = (f_6_4 h_7_6) in
                                      (fun _lh_dummy_4_5 -> 
                                        ((mappend_lh__d8__d6 h_7_7) (concat_lh__d5__d9 t_7_8))))))))))))))))))))) in
    _lh_runStateT_StateT_0_3_0);;
let rec permute_lh__d1__d0 _lh_permute_arg1_0 =
  ((bind_lh__d8__d1 get_lh__d2__d0) (fun st_0 -> 
    ((bind_lh__d8__d2 (let rec xs_0 = (digits_lh__d1__d0 st_0) in
      (lift_lh__d1__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_0 = (let rec _lh_permute_LH_P2_1_0 = ((listDiff_lh__d1__d0 xs_0) (let rec t_1 = (fun f_0 i_0 -> 
                i_0) in
                (let rec h_1 = _lh_listcomp_fun_ls_h_0 in
                  (fun f_1 i_1 -> 
                    (((foldl_lh__d1__d1 f_1) ((f_1 i_1) h_1)) t_1))))) in
                (let rec _lh_permute_LH_P2_0_0 = _lh_listcomp_fun_ls_h_0 in
                  (fun _lh_permute_arg1_1 st_1 -> 
                    ((bind_lh__d8__d3 (put_lh__d1__d0 (`Digits(_lh_permute_LH_P2_1_0, (`LH_C((`LH_P2(_lh_permute_arg1_1, _lh_permute_LH_P2_0_0)), (digitEnv_lh__d4__d0 st_1))))))) (fun _p_0 -> 
                      (return_lh__d7__d1 _lh_permute_LH_P2_0_0)))))) in
                (fun f_2 -> 
                  (let rec t_2 = ((map_lh__d6__d9 f_2) t_0) in
                    (let rec h_2 = (f_2 h_0) in
                      (fun _lh_dummy_0 -> 
                        ((mappend_lh__d8__d1_d1 h_2) (concat_lh__d5__d1_d9 t_2))))))))
          | `LH_N -> 
            (fun f_3 _lh_dummy_1 f_4 _lh_dummy_2 ys_0 -> 
              ys_0))) in
        (_lh_listcomp_fun_0 xs_0))))) (fun iis_0 -> 
      (let rec _lh_matchIdent_0 = iis_0 in
        ((_lh_matchIdent_0 _lh_permute_arg1_0) st_0))))));;
let rec lookup_lh__d2__d0 _lh_lookup_arg1_1 _lh_lookup_arg2_1 =
  (match _lh_lookup_arg2_1 with
    | `LH_N -> 
      (fun _lh_select_arg1_4 -> 
        (permute_lh__d1__d0 _lh_select_arg1_4))
    | `LH_C(_lh_lookup_LH_C_0_1, _lh_lookup_LH_C_1_1) -> 
      (match _lh_lookup_LH_C_0_1 with
        | `LH_P2(_lh_lookup_LH_P2_0_1, _lh_lookup_LH_P2_1_1) -> 
          (if (_lh_lookup_arg1_1 = _lh_lookup_LH_P2_0_1) then
            (let rec _lh_select_Just_0_1 = _lh_lookup_LH_P2_1_1 in
              (fun _lh_select_arg1_5 -> 
                (return_lh__d4__d0 _lh_select_Just_0_1)))
          else
            ((lookup_lh__d2__d0 _lh_lookup_arg1_1) _lh_lookup_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d5__d1_d0 lss_1_7 =
  (lss_1_7 99);;
let rec runStateT_lh__d6__d9 _lh_runStateT_arg1_2 =
  _lh_runStateT_arg1_2;;
let rec map_lh__d6__d5 f_2_9 ls_9 =
  (ls_9 f_2_9);;
let rec bind_lh__d5__d0 _lh_bind_arg1_1_1 _lh_bind_arg2_2_0 =
  (let rec _lh_runStateT_StateT_0_2_3 = (fun s_2_3 -> 
    (concat_lh__d5__d1_d0 ((map_lh__d6__d5 (fun as_1_1 -> 
      (let rec _lh_matchIdent_1_9 = as_1_1 in
        (_lh_matchIdent_1_9 _lh_bind_arg2_2_0)))) ((runStateT_lh__d6__d9 _lh_bind_arg1_1_1) s_2_3)))) in
    _lh_runStateT_StateT_0_2_3);;
let rec runStateT_lh__d6__d8 _lh_runStateT_arg1_4 =
  _lh_runStateT_arg1_4;;
let rec concat_lh__d5__d1_d1 lss_2_3 =
  (lss_2_3 99);;
let rec get_lh__d1__d0 =
  (let rec _lh_runStateT_StateT_0_2 = (fun s_3 -> 
    (let rec t_1_4 = (fun f_1_1 _lh_dummy_9 f_1_2 _lh_dummy_1_0 -> 
      (`LH_N)) in
      (let rec h_1_3 = (let rec _lh_bind_LH_P2_1_1 = s_3 in
        (let rec _lh_bind_LH_P2_0_1 = s_3 in
          (fun _lh_bind_arg2_3 -> 
            ((runStateT_lh__d6__d8 (_lh_bind_arg2_3 _lh_bind_LH_P2_0_1)) _lh_bind_LH_P2_1_1)))) in
        (fun f_1_3 -> 
          (let rec t_1_5 = ((map_lh__d6__d5 f_1_3) t_1_4) in
            (let rec h_1_4 = (f_1_3 h_1_3) in
              (fun _lh_dummy_1_1 -> 
                ((mappend_lh__d8__d7 h_1_4) (concat_lh__d5__d1_d1 t_1_5))))))))) in
    _lh_runStateT_StateT_0_2);;
let rec digitEnv_lh__d3__d0 _lh_digitEnv_arg1_5 =
  (match _lh_digitEnv_arg1_5 with
    | `Digits(_lh_digitEnv_Digits_0_5, _lh_digitEnv_Digits_1_5) -> 
      _lh_digitEnv_Digits_1_5
    | _ -> 
      (failwith "error"));;
let rec select_lh__d1__d0 _lh_select_arg1_3 =
  ((bind_lh__d5__d0 get_lh__d1__d0) (fun st_5 -> 
    (let rec _lh_matchIdent_1_1 = ((lookup_lh__d2__d0 _lh_select_arg1_3) (digitEnv_lh__d3__d0 st_5)) in
      (_lh_matchIdent_1_1 _lh_select_arg1_3))));;
let rec concat_lh__d5__d4 lss_1_8 =
  (lss_1_8 99);;
let rec runStateT_lh__d6__d3 _lh_runStateT_arg1_1_6 =
  _lh_runStateT_arg1_1_6;;
let rec bind_lh__d4__d0 _lh_bind_arg1_6 _lh_bind_arg2_1_3 =
  (`StateT((fun s_1_5 -> 
    (concat_lh__d5__d4 ((map_lh__d6__d2 (fun as_6 -> 
      (let rec _lh_matchIdent_1_2 = as_6 in
        (_lh_matchIdent_1_2 _lh_bind_arg2_1_3)))) ((runStateT_lh__d6__d3 _lh_bind_arg1_6) s_1_5))))));;
let rec solve_lh__d1__d0 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
      ((bind_lh__d4__d0 (let rec _lh_matchIdent_1_8 = _lh_solve_arg1_0 in
        (match _lh_matchIdent_1_8 with
          | `LH_N -> 
            (return_lh__d1__d0 _lh_solve_arg3_0)
          | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
            ((bind_lh__d3__d0 ((mapM_lh__d1__d0 select_lh__d1__d0) _lh_solve_LH_C_0_1)) (fun topNS_0 -> 
              (return_lh__d2__d0 ((sum_lh__d2__d0 topNS_0) + _lh_solve_arg3_0))))
          | _ -> 
            (failwith "error")))) (fun topN_0 -> 
        ((bind_lh__d2__d0 (select_lh__d2__d0 _lh_solve_LH_C_0_0)) (fun botN_0 -> 
          ((bind_lh__d1__d0 (guard_lh__d1__d0 ((topN_0 mod 10) = botN_0))) (fun _s_0 -> 
            (((solve_lh__d1__d0 (rest_lh__d1__d0 _lh_solve_arg1_0)) _lh_solve_LH_C_1_0) (topN_0 / 10))))))))
    | _ -> 
      (match _lh_solve_arg1_0 with
        | `LH_N -> 
          (match _lh_solve_arg2_0 with
            | `LH_N -> 
              (match _lh_solve_arg3_0 with
                | 0 -> 
                  (return_lh__d3__d0 (`Unit))
                | _ -> 
                  (`StateT((fun _p_2 -> 
                    (`LH_N)))))
            | _ -> 
              (`StateT((fun _p_3 -> 
                (`LH_N)))))
        | _ -> 
          (`StateT((fun _p_4 -> 
            (`LH_N))))));;
let rec mappend_lh__d4__d0 xs_6 ys_1_1 =
  (xs_6 ys_1_1);;
let rec mappend_lh__d5__d0 xs_8 ys_1_5 =
  (match xs_8 with
    | `LH_C(h_1_8, t_1_9) -> 
      (let rec t_2_0 = ((mappend_lh__d5__d0 t_1_9) ys_1_5) in
        (let rec h_1_9 = h_1_8 in
          (fun ys_1_6 -> 
            (`LH_C(h_1_9, ((mappend_lh__d4__d0 t_2_0) ys_1_6))))))
    | `LH_N -> 
      ys_1_5);;
let rec concat_lh__d1__d0 lss_2_6 =
  (match lss_2_6 with
    | `LH_C(h_4_7, t_4_8) -> 
      ((mappend_lh__d5__d0 h_4_7) (concat_lh__d1__d0 t_4_8))
    | `LH_N -> 
      (fun ys_5_1 -> 
        ys_5_1));;
let rec fromJust_lh__d1__d0 _lh_fromJust_arg1_0 =
  (_lh_fromJust_arg1_0 99);;
let rec mappend_lh__d7__d0 xs_5 ys_1_0 =
  (xs_5 ys_1_0);;
let rec concat_lh__d2__d1 lss_2_4 =
  (lss_2_4 99);;
let rec map_lh__d3__d0 f_4_2 ls_1_8 _lh_popOutId_0_1 =
  (match ls_1_8 with
    | `LH_C(h_3_5, t_3_6) -> 
      (let rec t_3_7 = ((map_lh__d3__d0 f_4_2) t_3_6) in
        (let rec h_3_6 = (f_4_2 h_3_5) in
          ((mappend_lh__d7__d0 h_3_6) (concat_lh__d2__d1 t_3_7))))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d7__d1 xs_1_9 ys_3_2 =
  (xs_1_9 ys_3_2);;
let rec concat_lh__d2__d0 lss_1_1 =
  (lss_1_1 99);;
let rec runStateT_lh__d1__d0 _lh_runStateT_arg1_1_5 =
  (match _lh_runStateT_arg1_1_5 with
    | `StateT(_lh_runStateT_StateT_0_1_8) -> 
      _lh_runStateT_StateT_0_1_8
    | _ -> 
      (failwith "error"));;
let rec execStateT_lh__d1__d0 _lh_execStateT_arg1_0 _lh_execStateT_arg2_0 =
  (concat_lh__d2__d0 ((map_lh__d3__d0 (fun x_1 -> 
    (let rec _lh_matchIdent_2_1 = x_1 in
      (match _lh_matchIdent_2_1 with
        | `LH_P2(_lh_execStateT_LH_P2_0_0, _lh_execStateT_LH_P2_1_0) -> 
          (let rec t_6_1 = (fun ys_6_6 -> 
            ys_6_6) in
            (let rec h_6_0 = _lh_execStateT_LH_P2_1_0 in
              (fun ys_6_7 -> 
                (`LH_C(h_6_0, ((mappend_lh__d7__d1 t_6_1) ys_6_7))))))
        | _ -> 
          (failwith "error"))))) ((runStateT_lh__d1__d0 _lh_execStateT_arg1_0) _lh_execStateT_arg2_0)));;
let rec mappend_lh__d3__d0 xs_3_2 ys_6_8 =
  (xs_3_2 ys_6_8);;
let rec lookup_lh__d1__d0 _lh_lookup_arg1_2 _lh_lookup_arg2_2 =
  (match _lh_lookup_arg2_2 with
    | `LH_N -> 
      (fun _lh_dummy_3_6 -> 
        (failwith "error"))
    | `LH_C(_lh_lookup_LH_C_0_2, _lh_lookup_LH_C_1_2) -> 
      (match _lh_lookup_LH_C_0_2 with
        | `LH_P2(_lh_lookup_LH_P2_0_2, _lh_lookup_LH_P2_1_2) -> 
          (if (_lh_lookup_arg1_2 = _lh_lookup_LH_P2_0_2) then
            (let rec _lh_fromJust_Just_0_0 = _lh_lookup_LH_P2_1_2 in
              (fun _lh_dummy_3_7 -> 
                _lh_fromJust_Just_0_0))
          else
            ((lookup_lh__d1__d0 _lh_lookup_arg1_2) _lh_lookup_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d2__d0 a_3 b_2 =
  (if (a_3 <= b_2) then
    (`LH_C(a_3, ((enumFromTo_lh__d2__d0 (a_3 + 1)) b_2)))
  else
    (`LH_N));;
let rec mappend_lh__d2__d0 xs_3_7 ys_8_8 =
  (xs_3_7 ys_8_8);;
let rec foldl_lh__d1__d0 f_7_1 i_1_1 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_8_7, t_8_8) -> 
      (((foldl_lh__d1__d0 f_7_1) ((f_7_1 i_1_1) h_8_7)) t_8_8)
    | `LH_N -> 
      i_1_1);;
let rec puzzle_lh__d1__d0 _lh_puzzle_arg1_0 _lh_puzzle_arg2_0 =
  (let rec solution_0 = (((solve_lh__d1__d0 (transpose_lh__d1__d0 ((map_lh__d2__d0 reverse_lh__d1__d0) _lh_puzzle_arg1_0))) (reverse_lh__d2__d0 _lh_puzzle_arg2_0)) 0) in
    (let rec answer_0 = (let rec _lh_matchIdent_1_7 = ((execStateT_lh__d1__d0 solution_0) (`Digits(((enumFromTo_lh__d2__d0 0) 9), (`LH_N)))) in
      (match _lh_matchIdent_1_7 with
        | `LH_C(_lh_puzzle_LH_C_0_0, _lh_puzzle_LH_C_1_0) -> 
          _lh_puzzle_LH_C_0_0
        | `LH_N -> 
          (failwith "error")
        | _ -> 
          (failwith "error"))) in
      (let rec env_0 = (digitEnv_lh__d1__d0 answer_0) in
        (let rec look_0 = (fun c_0 -> 
          (fromJust_lh__d1__d0 ((lookup_lh__d1__d0 c_0) env_0))) in
          (let rec expand_0 = (fun ls_1_9 -> 
            (((foldl_lh__d1__d0 (fun a_1 b_1 -> 
              ((a_1 * 10) + (look_0 b_1)))) 0) ls_1_9)) in
            (let rec topVal_0 = (sum_lh__d1__d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (let rec _lh_sum_LH_C_1_0 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3) in
                    (let rec _lh_sum_LH_C_0_0 = (expand_0 _lh_listcomp_fun_ls_h_3) in
                      (fun _lh_dummy_2_3 -> 
                        (_lh_sum_LH_C_0_0 + (sum_lh__d1__d1 _lh_sum_LH_C_1_0)))))
                | `LH_N -> 
                  (fun _lh_dummy_2_4 -> 
                    0))) in
              (_lh_listcomp_fun_3 _lh_puzzle_arg1_0))) in
              (let rec botVal_0 = (expand_0 _lh_puzzle_arg2_0) in
                (if ((length_lh__d1__d0 (nub_lh__d1__d0 ((mappend_lh__d4__d1 (concat_lh__d1__d0 _lh_puzzle_arg1_0)) _lh_puzzle_arg2_0))) > 10) then
                  (failwith "error")
                else
                  (if (topVal_0 <> botVal_0) then
                    (failwith "error")
                  else
                    (unlines_lh__d1__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                      (match _lh_listcomp_fun_para_4 with
                        | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                          (match _lh_listcomp_fun_ls_h_4 with
                            | `LH_P2(_lh_puzzle_LH_P2_0_0, _lh_puzzle_LH_P2_1_0) -> 
                              (let rec t_3_8 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4) in
                                (let rec h_3_7 = ((mappend_lh__d3__d0 ((mappend_lh__d2__d0 (let rec t_3_9 = (fun ys_4_2 -> 
                                  ys_4_2) in
                                  (let rec h_3_8 = _lh_puzzle_LH_P2_0_0 in
                                    (fun ys_4_3 -> 
                                      (let rec t_4_0 = ((mappend_lh__d2__d1 t_3_9) ys_4_3) in
                                        (let rec h_3_9 = h_3_8 in
                                          (fun ys_4_4 -> 
                                            (`LH_C(h_3_9, ((mappend_lh__d3__d1 t_4_0) ys_4_4)))))))))) (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (fun ys_4_5 -> 
                                  ys_4_5) in
                                  (let rec h_4_0 = ' ' in
                                    (fun ys_4_6 -> 
                                      (`LH_C(h_4_0, ((mappend_lh__d3__d2 t_4_4) ys_4_6)))))) in
                                  (let rec h_4_1 = '>' in
                                    (fun ys_4_7 -> 
                                      (`LH_C(h_4_1, ((mappend_lh__d3__d3 t_4_3) ys_4_7)))))) in
                                  (let rec h_4_2 = '=' in
                                    (fun ys_4_8 -> 
                                      (`LH_C(h_4_2, ((mappend_lh__d3__d4 t_4_2) ys_4_8)))))) in
                                  (let rec h_4_3 = ' ' in
                                    (fun ys_4_9 -> 
                                      (`LH_C(h_4_3, ((mappend_lh__d3__d5 t_4_1) ys_4_9)))))))) (string_of_int _lh_puzzle_LH_P2_1_0)) in
                                  (fun f_4_3 -> 
                                    (let rec t_4_5 = ((map_lh__d4__d0 f_4_3) t_3_8) in
                                      (let rec h_4_4 = (f_4_3 h_3_7) in
                                        (fun _lh_dummy_2_5 -> 
                                          ((mappend_lh__d8__d0 h_4_4) (concat_lh__d3__d0 t_4_5))))))))
                            | _ -> 
                              (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
                        | `LH_N -> 
                          (fun f_4_4 _lh_dummy_2_6 -> 
                            (`LH_N)))) in
                      (_lh_listcomp_fun_4 (digitEnv_lh__d2__d0 answer_0)))))))))))));;
let rec mappend_lh__d1__d3 xs_2_8 ys_5_2 =
  (xs_2_8 ys_5_2);;
let rec mappend_lh__d1__d1 xs_2_9 ys_5_5 =
  (xs_2_9 ys_5_5);;
let rec map_lh__d1__d1 f_5_8 ls_2_8 =
  (ls_2_8 f_5_8);;
let rec mappend_lh__d1__d4 xs_3_6 ys_8_7 =
  (xs_3_6 ys_8_7);;
let rec mappend_lh__d1__d5 xs_2_1 ys_3_4 =
  (xs_2_1 ys_3_4);;
let rec mappend_lh__d1__d0 xs_2_2 ys_3_5 =
  (xs_2_2 ys_3_5);;
let rec testCryptarithm2_nofib_lh__d1__d0 _lh_testCryptarithm2_nofib_arg1_0 =
  ((map_lh__d1__d1 (fun i_9 -> 
    (let rec args_0 = (`LH_C((`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('R', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C(((mappend_lh__d1__d0 (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (fun ys_5_9 -> 
      ys_5_9) in
      (let rec h_5_4 = 'E' in
        (fun ys_6_0 -> 
          (`LH_C(h_5_4, ((mappend_lh__d1__d1 t_6_0) ys_6_0)))))) in
      (let rec h_5_5 = 'V' in
        (fun ys_6_1 -> 
          (`LH_C(h_5_5, ((mappend_lh__d1__d2 t_5_9) ys_6_1)))))) in
      (let rec h_5_6 = 'L' in
        (fun ys_6_2 -> 
          (`LH_C(h_5_6, ((mappend_lh__d1__d3 t_5_8) ys_6_2)))))) in
      (let rec h_5_7 = 'E' in
        (fun ys_6_3 -> 
          (`LH_C(h_5_7, ((mappend_lh__d1__d4 t_5_7) ys_6_3)))))) in
      (let rec h_5_8 = 'W' in
        (fun ys_6_4 -> 
          (`LH_C(h_5_8, ((mappend_lh__d1__d5 t_5_6) ys_6_4)))))) in
      (let rec h_5_9 = 'T' in
        (fun ys_6_5 -> 
          (`LH_C(h_5_9, ((mappend_lh__d1__d6 t_5_5) ys_6_5))))))) (if (i_9 > 999999) then
      (`LH_C('1', (`LH_N)))
    else
      (`LH_N))), (`LH_N))))))))))))) in
      ((puzzle_lh__d1__d0 args_0) (`LH_C('N', (`LH_C('I', (`LH_C('N', (`LH_C('E', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))))))) ((enumFromTo_lh__d1__d0 1) _lh_testCryptarithm2_nofib_arg1_0));;
end;;

