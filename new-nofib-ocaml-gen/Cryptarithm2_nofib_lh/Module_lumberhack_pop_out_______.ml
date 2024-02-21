

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d1 xs_3 ys_3 =
  (xs_3 ys_3);;
let rec length_lh__d1 ls_1_1 =
  (ls_1_1 99);;
let rec filter_lh__d1 f_1_3 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_7, t_2_7) -> 
      (if (f_1_3 h_2_7) then
        (`LH_C(h_2_7, ((filter_lh__d1 f_1_3) t_2_7)))
      else
        ((filter_lh__d1 f_1_3) t_2_7))
    | `LH_N -> 
      (`LH_N));;
let rec nub_lh__d1 _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (fun _lh_dummy_2 -> 
        0)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (let rec t_4 = (nub_lh__d1 ((filter_lh__d1 (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0)) in
        (let rec h_4 = _lh_nub_LH_C_0_0 in
          (fun _lh_dummy_3 -> 
            (1 + (length_lh__d1 t_4)))))
    | _ -> 
      (failwith "error"));;
let rec lookup_lh__d1 _lh_lookup_arg1_0 _lh_lookup_arg2_0 =
  (match _lh_lookup_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_6 -> 
        (failwith "error"))
    | `LH_C(_lh_lookup_LH_C_0_0, _lh_lookup_LH_C_1_0) -> 
      (match _lh_lookup_LH_C_0_0 with
        | `LH_P2(_lh_lookup_LH_P2_0_0, _lh_lookup_LH_P2_1_0) -> 
          (if (_lh_lookup_arg1_0 = _lh_lookup_LH_P2_0_0) then
            (let rec _lh_fromJust_Just_0_0 = _lh_lookup_LH_P2_1_0 in
              (fun _lh_dummy_7 -> 
                _lh_fromJust_Just_0_0))
          else
            ((lookup_lh__d1 _lh_lookup_arg1_0) _lh_lookup_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec digitEnv_lh__d1 _lh_digitEnv_arg1_0 =
  (match _lh_digitEnv_arg1_0 with
    | `Digits(_lh_digitEnv_Digits_0_0, _lh_digitEnv_Digits_1_0) -> 
      _lh_digitEnv_Digits_1_0
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d2 lss_3 =
  (lss_3 99);;
let rec digitEnv_lh__d3 _lh_digitEnv_arg1_1 =
  (match _lh_digitEnv_arg1_1 with
    | `Digits(_lh_digitEnv_Digits_0_1, _lh_digitEnv_Digits_1_1) -> 
      _lh_digitEnv_Digits_1_1
    | _ -> 
      (failwith "error"));;
let rec lookup_lh__d2 _lh_lookup_arg1_1 _lh_lookup_arg2_1 =
  (match _lh_lookup_arg2_1 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_lookup_LH_C_0_1, _lh_lookup_LH_C_1_1) -> 
      (match _lh_lookup_LH_C_0_1 with
        | `LH_P2(_lh_lookup_LH_P2_0_1, _lh_lookup_LH_P2_1_1) -> 
          (if (_lh_lookup_arg1_1 = _lh_lookup_LH_P2_0_1) then
            (`Just(_lh_lookup_LH_P2_1_1))
          else
            ((lookup_lh__d2 _lh_lookup_arg1_1) _lh_lookup_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec return_lh__d7 _lh_return_arg1_5 =
  (`StateT((fun s_1_2 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_5, s_1_2)), (`LH_N))))));;
let rec runStateT_lh__d9 _lh_runStateT_arg1_0 =
  (match _lh_runStateT_arg1_0 with
    | `StateT(_lh_runStateT_StateT_0_1) -> 
      _lh_runStateT_StateT_0_1
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d7 lss_4 =
  (lss_4 99);;
let rec mappend_lh__d8 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d8 t_9) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec map_lh__d7 f_2 ls_2 _lh_popOutId_0_1 =
  (match ls_2 with
    | `LH_C(h_6, t_6) -> 
      (let rec t_7 = ((map_lh__d7 f_2) t_6) in
        (let rec h_7 = (f_2 h_6) in
          ((mappend_lh__d8 h_7) (concat_lh__d7 t_7))))
    | `LH_N -> 
      (`LH_N));;
let rec bind_lh__d7 _lh_bind_arg1_4 _lh_bind_arg2_5 =
  (`StateT((fun s_1_3 -> 
    (concat_lh__d7 ((map_lh__d7 (fun as_4 -> 
      (let rec _lh_matchIdent_1_1 = as_4 in
        (match _lh_matchIdent_1_1 with
          | `LH_P2(_lh_bind_LH_P2_0_4, _lh_bind_LH_P2_1_4) -> 
            ((runStateT_lh__d9 (_lh_bind_arg2_5 _lh_bind_LH_P2_0_4)) _lh_bind_LH_P2_1_4)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d9 _lh_bind_arg1_4) s_1_3))))));;
let rec get_lh__d1 =
  (`StateT((fun s_1_5 -> 
    (`LH_C((`LH_P2(s_1_5, s_1_5)), (`LH_N))))));;
let rec digits_lh__d1 _lh_digits_arg1_0 =
  (match _lh_digits_arg1_0 with
    | `Digits(_lh_digits_Digits_0_0, _lh_digits_Digits_1_0) -> 
      _lh_digits_Digits_0_0
    | _ -> 
      (failwith "error"));;
let rec lift_lh__d1 _lh_lift_arg1_0 =
  (`StateT((fun s_5 -> 
    (concat_lh__d7 ((map_lh__d7 (fun x_1 -> 
      (`LH_C((`LH_P2(x_1, s_5)), (`LH_N))))) _lh_lift_arg1_0)))));;
let rec foldl_lh__d1 f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_5, t_5) -> 
      (((foldl_lh__d1 f_1) ((f_1 i_0) h_5)) t_5)
    | `LH_N -> 
      i_0);;
let rec delete_lh__d1 _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete_lh__d1 _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete_lh__d1 _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec listDiff_lh__d1 =
  (foldl_lh__d1 delete_lh__d1);;
let rec put_lh__d1 _lh_put_arg1_0 =
  (`StateT((fun s_1_4 -> 
    (`LH_C((`LH_P2((`Unit), _lh_put_arg1_0)), (`LH_N))))));;
let rec permute_lh__d1 _lh_permute_arg1_0 =
  ((bind_lh__d7 get_lh__d1) (fun st_2 -> 
    ((bind_lh__d7 (let rec xs_9 = (digits_lh__d1 st_2) in
      (lift_lh__d1 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_3, ((listDiff_lh__d1 xs_9) (`LH_C(_lh_listcomp_fun_ls_h_3, (`LH_N)))))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 xs_9))))) (fun iis_0 -> 
      (let rec _lh_matchIdent_1_3 = iis_0 in
        (match _lh_matchIdent_1_3 with
          | `LH_P2(_lh_permute_LH_P2_0_0, _lh_permute_LH_P2_1_0) -> 
            ((bind_lh__d7 (put_lh__d1 (`Digits(_lh_permute_LH_P2_1_0, (`LH_C((`LH_P2(_lh_permute_arg1_0, _lh_permute_LH_P2_0_0)), (digitEnv_lh__d3 st_2))))))) (fun _p_3 -> 
              (return_lh__d7 _lh_permute_LH_P2_0_0)))
          | _ -> 
            (failwith "error")))))));;
let rec select_lh__d2 _lh_select_arg1_0 =
  ((bind_lh__d7 get_lh__d1) (fun st_0 -> 
    (let rec _lh_matchIdent_0 = ((lookup_lh__d2 _lh_select_arg1_0) (digitEnv_lh__d3 st_0)) in
      (match _lh_matchIdent_0 with
        | `Just(_lh_select_Just_0_0) -> 
          (return_lh__d7 _lh_select_Just_0_0)
        | `Nothing -> 
          (permute_lh__d1 _lh_select_arg1_0)
        | _ -> 
          (failwith "error")))));;
let rec return_lh__d4 _lh_return_arg1_6 =
  (`StateT((fun s_1_6 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_6, s_1_6)), (`LH_N))))));;
let rec bind_lh__d5 _lh_bind_arg1_5 _lh_bind_arg2_6 =
  (let rec _lh_runStateT_StateT_0_7 = (fun s_1_7 -> 
    (concat_lh__d7 ((map_lh__d7 (fun as_5 -> 
      (let rec _lh_matchIdent_1_4 = as_5 in
        (match _lh_matchIdent_1_4 with
          | `LH_P2(_lh_bind_LH_P2_0_5, _lh_bind_LH_P2_1_5) -> 
            ((runStateT_lh__d9 (_lh_bind_arg2_6 _lh_bind_LH_P2_0_5)) _lh_bind_LH_P2_1_5)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d9 _lh_bind_arg1_5) s_1_7)))) in
    _lh_runStateT_StateT_0_7);;
let rec select_lh__d1 _lh_select_arg1_1 =
  ((bind_lh__d5 get_lh__d1) (fun st_1 -> 
    (let rec _lh_matchIdent_1 = ((lookup_lh__d2 _lh_select_arg1_1) (digitEnv_lh__d3 st_1)) in
      (match _lh_matchIdent_1 with
        | `Just(_lh_select_Just_0_1) -> 
          (return_lh__d4 _lh_select_Just_0_1)
        | `Nothing -> 
          (permute_lh__d1 _lh_select_arg1_1)
        | _ -> 
          (failwith "error")))));;
let rec runStateT_lh__d4 _lh_runStateT_arg1_7 =
  (match _lh_runStateT_arg1_7 with
    | `StateT(_lh_runStateT_StateT_0_6) -> 
      _lh_runStateT_StateT_0_6
    | _ -> 
      (failwith "error"));;
let rec map_lh__d5 f_1_2 ls_1_0 =
  (ls_1_0 f_1_2);;
let rec concat_lh__d5 lss_0 =
  (lss_0 99);;
let rec guard_lh__d1 _lh_guard_arg1_0 =
  (match _lh_guard_arg1_0 with
    | true -> 
      (let rec _lh_runStateT_StateT_0_4 = (fun s_8 -> 
        (let rec t_1_2 = (fun f_4 _lh_dummy_8 -> 
          (`LH_N)) in
          (let rec h_1_2 = (let rec _lh_bind_LH_P2_1_1 = s_8 in
            (let rec _lh_bind_LH_P2_0_1 = (`Unit) in
              (fun _lh_bind_arg2_2 -> 
                ((runStateT_lh__d4 (_lh_bind_arg2_2 _lh_bind_LH_P2_0_1)) _lh_bind_LH_P2_1_1)))) in
            (fun f_5 -> 
              (let rec t_1_3 = ((map_lh__d5 f_5) t_1_2) in
                (let rec h_1_3 = (f_5 h_1_2) in
                  (fun _lh_dummy_9 -> 
                    ((mappend_lh__d8 h_1_3) (concat_lh__d5 t_1_3))))))))) in
        _lh_runStateT_StateT_0_4)
    | false -> 
      (let rec _lh_runStateT_StateT_0_5 = (fun s_9 f_6 _lh_dummy_1_0 -> 
        (`LH_N)) in
        _lh_runStateT_StateT_0_5)
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d6 lss_5 =
  (lss_5 99);;
let rec map_lh__d6 f_7 ls_6 _lh_popOutId_0_2 =
  (match ls_6 with
    | `LH_C(h_1_6, t_1_6) -> 
      (let rec t_1_7 = ((map_lh__d6 f_7) t_1_6) in
        (let rec h_1_7 = (f_7 h_1_6) in
          ((mappend_lh__d8 h_1_7) (concat_lh__d6 t_1_7))))
    | `LH_N -> 
      (`LH_N));;
let rec runStateT_lh__d6 _lh_runStateT_arg1_3 =
  _lh_runStateT_arg1_3;;
let rec runStateT_lh__d7 _lh_runStateT_arg1_8 =
  (match _lh_runStateT_arg1_8 with
    | `StateT(_lh_runStateT_StateT_0_9) -> 
      _lh_runStateT_StateT_0_9
    | _ -> 
      (failwith "error"));;
let rec bind_lh__d3 _lh_bind_arg1_3 _lh_bind_arg2_4 =
  (`StateT((fun s_1_1 -> 
    (concat_lh__d6 ((map_lh__d6 (fun as_3 -> 
      (let rec _lh_matchIdent_8 = as_3 in
        (match _lh_matchIdent_8 with
          | `LH_P2(_lh_bind_LH_P2_0_3, _lh_bind_LH_P2_1_3) -> 
            ((runStateT_lh__d6 (_lh_bind_arg2_4 _lh_bind_LH_P2_0_3)) _lh_bind_LH_P2_1_3)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d7 _lh_bind_arg1_3) s_1_1))))));;
let rec rest_lh__d1 _lh_rest_arg1_0 =
  (match _lh_rest_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_rest_LH_C_0_0, _lh_rest_LH_C_1_0) -> 
      _lh_rest_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d4 lss_1 =
  (lss_1 99);;
let rec runStateT_lh__d2 _lh_runStateT_arg1_4 =
  _lh_runStateT_arg1_4;;
let rec runStateT_lh__d3 _lh_runStateT_arg1_6 =
  _lh_runStateT_arg1_6;;
let rec map_lh__d4 f_1_4 ls_1_3 _lh_popOutId_0_3 =
  (match ls_1_3 with
    | `LH_C(h_3_4, t_3_4) -> 
      (let rec t_3_5 = ((map_lh__d4 f_1_4) t_3_4) in
        (let rec h_3_5 = (f_1_4 h_3_4) in
          ((mappend_lh__d8 h_3_5) (concat_lh__d4 t_3_5))))
    | `LH_N -> 
      (`LH_N));;
let rec bind_lh__d1 _lh_bind_arg1_6 _lh_bind_arg2_7 =
  (let rec _lh_runStateT_StateT_0_8 = (fun s_1_8 -> 
    (concat_lh__d4 ((map_lh__d4 (fun as_6 -> 
      (let rec _lh_matchIdent_1_5 = as_6 in
        (match _lh_matchIdent_1_5 with
          | `LH_P2(_lh_bind_LH_P2_0_6, _lh_bind_LH_P2_1_6) -> 
            ((runStateT_lh__d2 (_lh_bind_arg2_7 _lh_bind_LH_P2_0_6)) _lh_bind_LH_P2_1_6)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d3 _lh_bind_arg1_6) s_1_8)))) in
    _lh_runStateT_StateT_0_8);;
let rec return_lh__d3 _lh_return_arg1_0 =
  (`StateT((fun s_0 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_0, s_0)), (`LH_N))))));;
let rec return_lh__d2 _lh_return_arg1_1 =
  (let rec _lh_runStateT_StateT_0_0 = (fun s_1 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_1, s_1)), (`LH_N)))) in
    _lh_runStateT_StateT_0_0);;
let rec runStateT_lh__d8 _lh_runStateT_arg1_5 =
  _lh_runStateT_arg1_5;;
let rec bind_lh__d4 _lh_bind_arg1_0 _lh_bind_arg2_0 =
  (`StateT((fun s_3 -> 
    (concat_lh__d7 ((map_lh__d7 (fun as_0 -> 
      (let rec _lh_matchIdent_2 = as_0 in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_bind_LH_P2_0_0, _lh_bind_LH_P2_1_0) -> 
            ((runStateT_lh__d8 (_lh_bind_arg2_0 _lh_bind_LH_P2_0_0)) _lh_bind_LH_P2_1_0)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d9 _lh_bind_arg1_0) s_3))))));;
let rec return_lh__d1 _lh_return_arg1_3 =
  (`StateT((fun s_4 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_3, s_4)), (`LH_N))))));;
let rec return_lh__d5 _lh_return_arg1_2 =
  (`StateT((fun s_2 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_2, s_2)), (`LH_N))))));;
let rec return_lh__d6 _lh_return_arg1_4 =
  (`StateT((fun s_7 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_4, s_7)), (`LH_N))))));;
let rec foldr_lh__d1 f_3 i_1 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_1, t_1_1) -> 
      ((f_3 h_1_1) (((foldr_lh__d1 f_3) i_1) t_1_1))
    | `LH_N -> 
      i_1);;
let rec bind_lh__d6 _lh_bind_arg1_2 _lh_bind_arg2_3 =
  (`StateT((fun s_1_0 -> 
    (concat_lh__d7 ((map_lh__d7 (fun as_2 -> 
      (let rec _lh_matchIdent_7 = as_2 in
        (match _lh_matchIdent_7 with
          | `LH_P2(_lh_bind_LH_P2_0_2, _lh_bind_LH_P2_1_2) -> 
            ((runStateT_lh__d9 (_lh_bind_arg2_3 _lh_bind_LH_P2_0_2)) _lh_bind_LH_P2_1_2)
          | _ -> 
            (failwith "error"))))) ((runStateT_lh__d9 _lh_bind_arg1_2) s_1_0))))));;
let rec mapM_lh__d1 _lh_mapM_arg1_0 _lh_mapM_arg2_0 =
  (((foldr_lh__d1 (fun a_1 r_0 -> 
    ((bind_lh__d7 (_lh_mapM_arg1_0 a_1)) (fun x_0 -> 
      ((bind_lh__d6 r_0) (fun xs_2 -> 
        (return_lh__d5 (`LH_C(x_0, xs_2))))))))) (return_lh__d6 (`LH_N))) _lh_mapM_arg2_0);;
let rec sum_lh__d2 _lh_sum_arg1_0 =
  (match _lh_sum_arg1_0 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_0, _lh_sum_LH_C_1_0) -> 
      (_lh_sum_LH_C_0_0 + (sum_lh__d2 _lh_sum_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec runStateT_lh__d5 _lh_runStateT_arg1_1 =
  _lh_runStateT_arg1_1;;
let rec bind_lh__d2 _lh_bind_arg1_1 _lh_bind_arg2_1 =
  (let rec _lh_runStateT_StateT_0_3 = (fun s_6 -> 
    (concat_lh__d5 ((map_lh__d5 (fun as_1 -> 
      (let rec _lh_matchIdent_4 = as_1 in
        (_lh_matchIdent_4 _lh_bind_arg2_1)))) ((runStateT_lh__d5 _lh_bind_arg1_1) s_6)))) in
    _lh_runStateT_StateT_0_3);;
let rec solve_lh__d1 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
      ((bind_lh__d4 (let rec _lh_matchIdent_3 = _lh_solve_arg1_0 in
        (match _lh_matchIdent_3 with
          | `LH_N -> 
            (return_lh__d3 _lh_solve_arg3_0)
          | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
            ((bind_lh__d3 ((mapM_lh__d1 select_lh__d2) _lh_solve_LH_C_0_1)) (fun topNS_0 -> 
              (return_lh__d2 ((sum_lh__d2 topNS_0) + _lh_solve_arg3_0))))
          | _ -> 
            (failwith "error")))) (fun topN_0 -> 
        ((bind_lh__d1 (select_lh__d1 _lh_solve_LH_C_0_0)) (fun botN_0 -> 
          ((bind_lh__d2 (guard_lh__d1 ((topN_0 mod 10) = botN_0))) (fun _s_0 -> 
            (((solve_lh__d1 (rest_lh__d1 _lh_solve_arg1_0)) _lh_solve_LH_C_1_0) (topN_0 / 10))))))))
    | _ -> 
      (match _lh_solve_arg1_0 with
        | `LH_N -> 
          (match _lh_solve_arg2_0 with
            | `LH_N -> 
              (match _lh_solve_arg3_0 with
                | 0 -> 
                  (return_lh__d1 (`Unit))
                | _ -> 
                  (`StateT((fun _p_0 -> 
                    (`LH_N)))))
            | _ -> 
              (`StateT((fun _p_1 -> 
                (`LH_N)))))
        | _ -> 
          (`StateT((fun _p_2 -> 
            (`LH_N))))));;
let rec sum_lh__d1 _lh_sum_arg1_1 =
  (_lh_sum_arg1_1 99);;
let rec map_lh__d1 f_1_1 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C((f_1_1 h_2_6), ((map_lh__d1 f_1_1) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec digitEnv_lh__d2 _lh_digitEnv_arg1_2 =
  (match _lh_digitEnv_arg1_2 with
    | `Digits(_lh_digitEnv_Digits_0_2, _lh_digitEnv_Digits_1_2) -> 
      _lh_digitEnv_Digits_1_2
    | _ -> 
      (failwith "error"));;
let rec runStateT_lh__d1 _lh_runStateT_arg1_2 =
  (match _lh_runStateT_arg1_2 with
    | `StateT(_lh_runStateT_StateT_0_2) -> 
      _lh_runStateT_StateT_0_2
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d3 lss_2 =
  (lss_2 99);;
let rec map_lh__d3 f_0 ls_0 _lh_popOutId_0_0 =
  (match ls_0 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lh__d3 f_0) t_2) in
        (let rec h_3 = (f_0 h_2) in
          ((mappend_lh__d8 h_3) (concat_lh__d3 t_3))))
    | `LH_N -> 
      (`LH_N));;
let rec execStateT_lh__d1 _lh_execStateT_arg1_0 _lh_execStateT_arg2_0 =
  (concat_lh__d3 ((map_lh__d3 (fun x_2 -> 
    (let rec _lh_matchIdent_1_0 = x_2 in
      (match _lh_matchIdent_1_0 with
        | `LH_P2(_lh_execStateT_LH_P2_0_0, _lh_execStateT_LH_P2_1_0) -> 
          (`LH_C(_lh_execStateT_LH_P2_1_0, (`LH_N)))
        | _ -> 
          (failwith "error"))))) ((runStateT_lh__d1 _lh_execStateT_arg1_0) _lh_execStateT_arg2_0)));;
let rec unzip_lh__d1 _lh_unzip_arg1_0 =
  (((foldr_lh__d1 (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_5 = ab_0 in
      (match _lh_matchIdent_5 with
        | `LH_P2(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_6 = asbs_0 in
            (match _lh_matchIdent_6 with
              | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
let rec combine_lh__d1 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (`LH_C((`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)), (transpose_lh__d1 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0)))))
and
transpose_lh__d1 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose_lh__d1 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_1_2 = (unzip_lh__d1 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
            (match _lh_listcomp_fun_para_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                (match _lh_listcomp_fun_ls_h_2 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                  | _ -> 
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_1_2 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh__d1 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec fromJust_lh__d1 _lh_fromJust_arg1_0 =
  (_lh_fromJust_arg1_0 99);;
let rec reverse_helper_lh__d2 ls_3 a_2 =
  (match ls_3 with
    | `LH_C(h_8, t_8) -> 
      ((reverse_helper_lh__d2 t_8) (`LH_C(h_8, a_2)))
    | `LH_N -> 
      a_2);;
let rec reverse_lh__d2 ls_1_5 =
  ((reverse_helper_lh__d2 ls_1_5) (`LH_N));;
let rec mappend_lh__d7 xs_5 ys_5 =
  (xs_5 ys_5);;
let rec map_lh__d2 f_8 ls_7 =
  (ls_7 f_8);;
let rec mappend_lh__d6 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_1_4, t_1_4) -> 
      (let rec t_1_5 = ((mappend_lh__d6 t_1_4) ys_7) in
        (let rec h_1_5 = h_1_4 in
          (fun ys_8 -> 
            (`LH_C(h_1_5, ((mappend_lh__d7 t_1_5) ys_8))))))
    | `LH_N -> 
      ys_7);;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d2 ((map_lh__d2 (fun l_0 -> 
    ((mappend_lh__d6 l_0) (let rec t_3_7 = (fun ys_2_6 -> 
      ys_2_6) in
      (let rec h_3_7 = 'n' in
        (fun ys_2_7 -> 
          (`LH_C(h_3_7, ((mappend_lh__d7 t_3_7) ys_2_7))))))))) _lh_unlines_arg1_0));;
let rec mappend_lh__d3 xs_1 ys_2 =
  (xs_1 ys_2);;
let rec mappend_lh__d2 xs_6 ys_6 =
  (xs_6 ys_6);;
let rec mappend_lh__d4 xs_8 ys_9 =
  (xs_8 ys_9);;
let rec mappend_lh__d5 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((mappend_lh__d5 t_0) ys_0) in
        (let rec h_1 = h_0 in
          (fun ys_1 -> 
            (`LH_C(h_1, ((mappend_lh__d3 t_1) ys_1))))))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_6 =
  (match lss_6 with
    | `LH_C(h_3_6, t_3_6) -> 
      ((mappend_lh__d5 h_3_6) (concat_lh__d1 t_3_6))
    | `LH_N -> 
      (fun ys_2_5 -> 
        ys_2_5));;
let rec reverse_helper_lh__d1 ls_4 a_3 =
  (match ls_4 with
    | `LH_C(h_1_0, t_1_0) -> 
      ((reverse_helper_lh__d1 t_1_0) (`LH_C(h_1_0, a_3)))
    | `LH_N -> 
      a_3);;
let rec reverse_lh__d1 ls_1_4 =
  ((reverse_helper_lh__d1 ls_1_4) (`LH_N));;
let rec puzzle_lh__d1 _lh_puzzle_arg1_0 _lh_puzzle_arg2_0 =
  (let rec solution_0 = (((solve_lh__d1 (transpose_lh__d1 ((map_lh__d1 reverse_lh__d1) _lh_puzzle_arg1_0))) (reverse_lh__d2 _lh_puzzle_arg2_0)) 0) in
    (let rec answer_0 = (let rec _lh_matchIdent_9 = ((execStateT_lh__d1 solution_0) (`Digits(((enumFromTo_lh__d1 0) 9), (`LH_N)))) in
      (match _lh_matchIdent_9 with
        | `LH_C(_lh_puzzle_LH_C_0_0, _lh_puzzle_LH_C_1_0) -> 
          _lh_puzzle_LH_C_0_0
        | `LH_N -> 
          (failwith "error")
        | _ -> 
          (failwith "error"))) in
      (let rec env_0 = (digitEnv_lh__d1 answer_0) in
        (let rec look_0 = (fun c_0 -> 
          (fromJust_lh__d1 ((lookup_lh__d1 c_0) env_0))) in
          (let rec expand_0 = (fun ls_8 -> 
            (((foldl_lh__d1 (fun a_4 b_1 -> 
              ((a_4 * 10) + (look_0 b_1)))) 0) ls_8)) in
            (let rec topVal_0 = (sum_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
              (match _lh_listcomp_fun_para_0 with
                | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                  (let rec _lh_sum_LH_C_1_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
                    (let rec _lh_sum_LH_C_0_1 = (expand_0 _lh_listcomp_fun_ls_h_0) in
                      (fun _lh_dummy_1_3 -> 
                        (_lh_sum_LH_C_0_1 + (sum_lh__d1 _lh_sum_LH_C_1_1)))))
                | `LH_N -> 
                  (fun _lh_dummy_1_4 -> 
                    0))) in
              (_lh_listcomp_fun_0 _lh_puzzle_arg1_0))) in
              (let rec botVal_0 = (expand_0 _lh_puzzle_arg2_0) in
                (if ((length_lh__d1 (nub_lh__d1 ((mappend_lh__d3 (concat_lh__d1 _lh_puzzle_arg1_0)) _lh_puzzle_arg2_0))) > 10) then
                  (failwith "error")
                else
                  (if (topVal_0 <> botVal_0) then
                    (failwith "error")
                  else
                    (unlines_lh__d1 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                      (match _lh_listcomp_fun_para_1 with
                        | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                          (match _lh_listcomp_fun_ls_h_1 with
                            | `LH_P2(_lh_puzzle_LH_P2_0_0, _lh_puzzle_LH_P2_1_0) -> 
                              (let rec t_1_8 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                                (let rec h_1_8 = ((mappend_lh__d4 ((mappend_lh__d2 (let rec t_1_9 = (fun ys_1_0 -> 
                                  ys_1_0) in
                                  (let rec h_1_9 = _lh_puzzle_LH_P2_0_0 in
                                    (fun ys_1_1 -> 
                                      (let rec t_2_0 = ((mappend_lh__d2 t_1_9) ys_1_1) in
                                        (let rec h_2_0 = h_1_9 in
                                          (fun ys_1_2 -> 
                                            (`LH_C(h_2_0, ((mappend_lh__d4 t_2_0) ys_1_2)))))))))) (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (fun ys_1_3 -> 
                                  ys_1_3) in
                                  (let rec h_2_1 = ' ' in
                                    (fun ys_1_4 -> 
                                      (`LH_C(h_2_1, ((mappend_lh__d4 t_2_4) ys_1_4)))))) in
                                  (let rec h_2_2 = '>' in
                                    (fun ys_1_5 -> 
                                      (`LH_C(h_2_2, ((mappend_lh__d4 t_2_3) ys_1_5)))))) in
                                  (let rec h_2_3 = '=' in
                                    (fun ys_1_6 -> 
                                      (`LH_C(h_2_3, ((mappend_lh__d4 t_2_2) ys_1_6)))))) in
                                  (let rec h_2_4 = ' ' in
                                    (fun ys_1_7 -> 
                                      (`LH_C(h_2_4, ((mappend_lh__d4 t_2_1) ys_1_7)))))))) (string_of_int _lh_puzzle_LH_P2_1_0)) in
                                  (fun f_9 -> 
                                    (let rec t_2_5 = ((map_lh__d2 f_9) t_1_8) in
                                      (let rec h_2_5 = (f_9 h_1_8) in
                                        (fun _lh_dummy_1_5 -> 
                                          ((mappend_lh__d7 h_2_5) (concat_lh__d2 t_2_5))))))))
                            | _ -> 
                              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                        | `LH_N -> 
                          (fun f_1_0 _lh_dummy_1_6 -> 
                            (`LH_N)))) in
                      (_lh_listcomp_fun_1 (digitEnv_lh__d2 answer_0)))))))))))));;
let rec testCryptarithm2_nofib_lh__d1 _lh_testCryptarithm2_nofib_arg1_0 =
  (let rec args_0 = (`LH_C((`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('R', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C(((mappend_lh__d1 (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (fun ys_1_8 -> 
    ys_1_8) in
    (let rec h_2_8 = 'E' in
      (fun ys_1_9 -> 
        (`LH_C(h_2_8, ((mappend_lh__d1 t_3_3) ys_1_9)))))) in
    (let rec h_2_9 = 'V' in
      (fun ys_2_0 -> 
        (`LH_C(h_2_9, ((mappend_lh__d1 t_3_2) ys_2_0)))))) in
    (let rec h_3_0 = 'L' in
      (fun ys_2_1 -> 
        (`LH_C(h_3_0, ((mappend_lh__d1 t_3_1) ys_2_1)))))) in
    (let rec h_3_1 = 'E' in
      (fun ys_2_2 -> 
        (`LH_C(h_3_1, ((mappend_lh__d1 t_3_0) ys_2_2)))))) in
    (let rec h_3_2 = 'W' in
      (fun ys_2_3 -> 
        (`LH_C(h_3_2, ((mappend_lh__d1 t_2_9) ys_2_3)))))) in
    (let rec h_3_3 = 'T' in
      (fun ys_2_4 -> 
        (`LH_C(h_3_3, ((mappend_lh__d1 t_2_8) ys_2_4))))))) (if (_lh_testCryptarithm2_nofib_arg1_0 > 999999) then
    (`LH_C('1', (`LH_N)))
  else
    (`LH_N))), (`LH_N))))))))))))) in
    ((puzzle_lh__d1 args_0) (`LH_C('N', (`LH_C('I', (`LH_C('N', (`LH_C('E', (`LH_C('T', (`LH_C('Y', (`LH_N)))))))))))))));;
let run () = 1 + (Obj.magic ((testCryptarithm2_nofib_lh__d1 1500)));
end;;

