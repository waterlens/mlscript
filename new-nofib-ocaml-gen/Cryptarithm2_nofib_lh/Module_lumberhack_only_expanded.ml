

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec return_lh _lh_return_arg1_0 =
  (`StateT((fun s_0 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_0, s_0)), (`LH_N))))));;
let rec digitEnv_lh _lh_digitEnv_arg1_0 =
  (match _lh_digitEnv_arg1_0 with
    | `Digits(_lh_digitEnv_Digits_0_0, _lh_digitEnv_Digits_1_0) -> 
      _lh_digitEnv_Digits_1_0
    | _ -> 
      (failwith "error"));;
let rec runStateT_lh _lh_runStateT_arg1_0 =
  (match _lh_runStateT_arg1_0 with
    | `StateT(_lh_runStateT_StateT_0_0) -> 
      _lh_runStateT_StateT_0_0
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh t_5) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_7, t_7) -> 
      ((mappend_lh h_7) (concat_lh t_7))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec bind_lh _lh_bind_arg1_0 _lh_bind_arg2_0 =
  (`StateT((fun s_2 -> 
    (concat_lh ((map_lh (fun as_0 -> 
      (let rec _lh_matchIdent_7 = as_0 in
        (match _lh_matchIdent_7 with
          | `LH_P2(_lh_bind_LH_P2_0_0, _lh_bind_LH_P2_1_0) -> 
            ((runStateT_lh (_lh_bind_arg2_0 _lh_bind_LH_P2_0_0)) _lh_bind_LH_P2_1_0)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh _lh_bind_arg1_0) s_2))))));;
let rec get_lh =
  (`StateT((fun s_4 -> 
    (`LH_C((`LH_P2(s_4, s_4)), (`LH_N))))));;
let rec put_lh _lh_put_arg1_0 =
  (`StateT((fun s_3 -> 
    (`LH_C((`LH_P2((`Unit), _lh_put_arg1_0)), (`LH_N))))));;
let rec digits_lh _lh_digits_arg1_0 =
  (match _lh_digits_arg1_0 with
    | `Digits(_lh_digits_Digits_0_0, _lh_digits_Digits_1_0) -> 
      _lh_digits_Digits_0_0
    | _ -> 
      (failwith "error"));;
let rec lift_lh _lh_lift_arg1_0 =
  (`StateT((fun s_1 -> 
    (concat_lh ((map_lh (fun x_2 -> 
      (`LH_C((`LH_P2(x_2, s_1)), (`LH_N))))) _lh_lift_arg1_0)))));;
let rec delete_lh _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete_lh _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete_lh _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec foldl_lh f_2 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (((foldl_lh f_2) ((f_2 i_0) h_2)) t_2)
    | `LH_N -> 
      i_0);;
let rec listDiff_lh =
  (foldl_lh delete_lh);;
let rec permute_lh _lh_permute_arg1_0 =
  ((bind_lh get_lh) (fun st_1 -> 
    ((bind_lh (let rec xs_2 = (digits_lh st_1) in
      (lift_lh (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, ((listDiff_lh xs_2) (`LH_C(_lh_listcomp_fun_ls_h_2, (`LH_N)))))), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 xs_2))))) (fun iis_0 -> 
      (let rec _lh_matchIdent_5 = iis_0 in
        (match _lh_matchIdent_5 with
          | `LH_P2(_lh_permute_LH_P2_0_0, _lh_permute_LH_P2_1_0) -> 
            ((bind_lh (put_lh (`Digits(_lh_permute_LH_P2_1_0, (`LH_C((`LH_P2(_lh_permute_arg1_0, _lh_permute_LH_P2_0_0)), (digitEnv_lh st_1))))))) (fun _p_0 -> 
              (return_lh _lh_permute_LH_P2_0_0)))
          | _ -> 
            (failwith "error")))))));;
let rec lookup_lh _lh_lookup_arg1_0 _lh_lookup_arg2_0 =
  (match _lh_lookup_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_lookup_LH_C_0_0, _lh_lookup_LH_C_1_0) -> 
      (match _lh_lookup_LH_C_0_0 with
        | `LH_P2(_lh_lookup_LH_P2_0_0, _lh_lookup_LH_P2_1_0) -> 
          (if (_lh_lookup_arg1_0 = _lh_lookup_LH_P2_0_0) then
            (`Just(_lh_lookup_LH_P2_1_0))
          else
            ((lookup_lh _lh_lookup_arg1_0) _lh_lookup_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec select_lh _lh_select_arg1_0 =
  ((bind_lh get_lh) (fun st_0 -> 
    (let rec _lh_matchIdent_3 = ((lookup_lh _lh_select_arg1_0) (digitEnv_lh st_0)) in
      (match _lh_matchIdent_3 with
        | `Just(_lh_select_Just_0_0) -> 
          (return_lh _lh_select_Just_0_0)
        | `Nothing -> 
          (permute_lh _lh_select_arg1_0)
        | _ -> 
          (failwith "error")))));;
let rec sum_lh _lh_sum_arg1_0 =
  (match _lh_sum_arg1_0 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_0, _lh_sum_LH_C_1_0) -> 
      (_lh_sum_LH_C_0_0 + (sum_lh _lh_sum_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec guard_lh _lh_guard_arg1_0 =
  (match _lh_guard_arg1_0 with
    | true -> 
      (`StateT((fun s_5 -> 
        (`LH_C((`LH_P2((`Unit), s_5)), (`LH_N))))))
    | false -> 
      (`StateT((fun s_6 -> 
        (`LH_N))))
    | _ -> 
      (failwith "error"));;
let rec rest_lh _lh_rest_arg1_0 =
  (match _lh_rest_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_rest_LH_C_0_0, _lh_rest_LH_C_1_0) -> 
      _lh_rest_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec foldr_lh f_3 i_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      ((f_3 h_3) (((foldr_lh f_3) i_1) t_3))
    | `LH_N -> 
      i_1);;
let rec mapM_lh _lh_mapM_arg1_0 _lh_mapM_arg2_0 =
  (((foldr_lh (fun a_2 r_0 -> 
    ((bind_lh (_lh_mapM_arg1_0 a_2)) (fun x_0 -> 
      ((bind_lh r_0) (fun xs_1 -> 
        (return_lh (`LH_C(x_0, xs_1))))))))) (return_lh (`LH_N))) _lh_mapM_arg2_0);;
let rec solve_lh _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
      ((bind_lh (let rec _lh_matchIdent_6 = _lh_solve_arg1_0 in
        (match _lh_matchIdent_6 with
          | `LH_N -> 
            (return_lh _lh_solve_arg3_0)
          | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
            ((bind_lh ((mapM_lh select_lh) _lh_solve_LH_C_0_1)) (fun topNS_0 -> 
              (return_lh ((sum_lh topNS_0) + _lh_solve_arg3_0))))
          | _ -> 
            (failwith "error")))) (fun topN_0 -> 
        ((bind_lh (select_lh _lh_solve_LH_C_0_0)) (fun botN_0 -> 
          ((bind_lh (guard_lh ((topN_0 mod 10) = botN_0))) (fun _s_0 -> 
            (((solve_lh (rest_lh _lh_solve_arg1_0)) _lh_solve_LH_C_1_0) (topN_0 / 10))))))))
    | _ -> 
      (match _lh_solve_arg1_0 with
        | `LH_N -> 
          (match _lh_solve_arg2_0 with
            | `LH_N -> 
              (match _lh_solve_arg3_0 with
                | 0 -> 
                  (return_lh (`Unit))
                | _ -> 
                  (`StateT((fun _p_1 -> 
                    (`LH_N)))))
            | _ -> 
              (`StateT((fun _p_2 -> 
                (`LH_N)))))
        | _ -> 
          (`StateT((fun _p_3 -> 
            (`LH_N))))));;
let rec reverse_helper_lh ls_7 a_1 =
  (match ls_7 with
    | `LH_C(h_8, t_8) -> 
      ((reverse_helper_lh t_8) (`LH_C(h_8, a_1)))
    | `LH_N -> 
      a_1);;
let rec reverse_lh ls_6 =
  ((reverse_helper_lh ls_6) (`LH_N));;
let rec fromJust_lh _lh_fromJust_arg1_0 =
  (match _lh_fromJust_arg1_0 with
    | `Just(_lh_fromJust_Just_0_0) -> 
      _lh_fromJust_Just_0_0
    | _ -> 
      (failwith "error"));;
let rec filter_lh f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_1 h_1) then
        (`LH_C(h_1, ((filter_lh f_1) t_1)))
      else
        ((filter_lh f_1) t_1))
    | `LH_N -> 
      (`LH_N));;
let rec nub_lh _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (`LH_C(_lh_nub_LH_C_0_0, (nub_lh ((filter_lh (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_0 -> 
    ((mappend_lh l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec unzip_lh _lh_unzip_arg1_0 =
  (((foldr_lh (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_0 = ab_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1 = asbs_0 in
            (match _lh_matchIdent_1 with
              | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
let rec combine_lh _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (`LH_C((`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)), (transpose_lh (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0)))))
and
transpose_lh _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose_lh _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_8 = (unzip_lh (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
            (match _lh_listcomp_fun_para_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                (match _lh_listcomp_fun_ls_h_3 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                  | _ -> 
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_3 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec execStateT_lh _lh_execStateT_arg1_0 _lh_execStateT_arg2_0 =
  (concat_lh ((map_lh (fun x_1 -> 
    (let rec _lh_matchIdent_4 = x_1 in
      (match _lh_matchIdent_4 with
        | `LH_P2(_lh_execStateT_LH_P2_0_0, _lh_execStateT_LH_P2_1_0) -> 
          (`LH_C(_lh_execStateT_LH_P2_1_0, (`LH_N)))
        | _ -> 
          (failwith "error"))))) ((runStateT_lh _lh_execStateT_arg1_0) _lh_execStateT_arg2_0)));;
let rec length_lh ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      (1 + (length_lh t_4))
    | `LH_N -> 
      0);;
let rec puzzle_lh _lh_puzzle_arg1_0 _lh_puzzle_arg2_0 =
  (let rec solution_0 = (((solve_lh (transpose_lh ((map_lh reverse_lh) _lh_puzzle_arg1_0))) (reverse_lh _lh_puzzle_arg2_0)) 0) in
    (let rec answer_0 = (let rec _lh_matchIdent_2 = ((execStateT_lh solution_0) (`Digits(((enumFromTo_lh 0) 9), (`LH_N)))) in
      (match _lh_matchIdent_2 with
        | `LH_C(_lh_puzzle_LH_C_0_0, _lh_puzzle_LH_C_1_0) -> 
          _lh_puzzle_LH_C_0_0
        | `LH_N -> 
          (failwith "error")
        | _ -> 
          (failwith "error"))) in
      (let rec env_0 = (digitEnv_lh answer_0) in
        (let rec look_0 = (fun c_0 -> 
          (fromJust_lh ((lookup_lh c_0) env_0))) in
          (let rec expand_0 = (fun ls_8 -> 
            (((foldl_lh (fun a_3 b_1 -> 
              ((a_3 * 10) + (look_0 b_1)))) 0) ls_8)) in
            (let rec topVal_0 = (sum_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
              (match _lh_listcomp_fun_para_0 with
                | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                  (`LH_C((expand_0 _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_0 _lh_puzzle_arg1_0))) in
              (let rec botVal_0 = (expand_0 _lh_puzzle_arg2_0) in
                (if ((length_lh (nub_lh ((mappend_lh (concat_lh _lh_puzzle_arg1_0)) _lh_puzzle_arg2_0))) > 10) then
                  (failwith "error")
                else
                  (if (topVal_0 <> botVal_0) then
                    (failwith "error")
                  else
                    (unlines_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                      (match _lh_listcomp_fun_para_1 with
                        | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                          (match _lh_listcomp_fun_ls_h_1 with
                            | `LH_P2(_lh_puzzle_LH_P2_0_0, _lh_puzzle_LH_P2_1_0) -> 
                              (`LH_C(((mappend_lh ((mappend_lh (`LH_C(_lh_puzzle_LH_P2_0_0, (`LH_N)))) (`LH_C(' ', (`LH_C('=', (`LH_C('>', (`LH_C(' ', (`LH_N))))))))))) (string_of_int _lh_puzzle_LH_P2_1_0)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                            | _ -> 
                              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                        | `LH_N -> 
                          (`LH_N))) in
                      (_lh_listcomp_fun_1 (digitEnv_lh answer_0)))))))))))));;
let rec testCryptarithm2_nofib_lh _lh_testCryptarithm2_nofib_arg1_0 =
  ((map_lh (fun i_2 -> 
    (let rec args_0 = (`LH_C((`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('R', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C(((mappend_lh (`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N)))))))))))))) (if (i_2 > 999999) then
      (`LH_C('1', (`LH_N)))
    else
      (`LH_N))), (`LH_N))))))))))))) in
      ((puzzle_lh args_0) (`LH_C('N', (`LH_C('I', (`LH_C('N', (`LH_C('E', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))))))) ((enumFromTo_lh 1) _lh_testCryptarithm2_nofib_arg1_0));;
end;;

