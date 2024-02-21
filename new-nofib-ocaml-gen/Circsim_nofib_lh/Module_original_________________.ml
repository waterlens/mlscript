
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec until_lh _lh_until_arg1_0 _lh_until_arg2_0 _lh_until_arg3_0 =
  (if (_lh_until_arg1_0 _lh_until_arg3_0) then
    _lh_until_arg3_0
  else
    (((until_lh _lh_until_arg1_0) _lh_until_arg2_0) (_lh_until_arg2_0 _lh_until_arg3_0)));;
let rec nearest_power_of_two_lh _lh_nearest_power_of_two_arg1_0 =
  (((until_lh (fun a_2 -> 
    (a_2 >= _lh_nearest_power_of_two_arg1_0))) (fun a_3 -> 
    (a_3 * 2))) 1);;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec emptyState_lh =
  (`PS((0 - 1), (`None), (0 - 1), (`LH_N), (`LH_N)));;
let rec mappend_lh xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh t_7) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec take_lh n_0 ls_5 =
  (if (n_0 > 0) then
    (match ls_5 with
      | `LH_C(h_5, t_5) -> 
        (`LH_C(h_5, ((take_lh (n_0 - 1)) t_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec pad_circuit_lh _lh_pad_circuit_arg1_0 =
  (match _lh_pad_circuit_arg1_0 with
    | `LH_P4(_lh_pad_circuit_LH_P4_0_0, _lh_pad_circuit_LH_P4_1_0, _lh_pad_circuit_LH_P4_2_0, _lh_pad_circuit_LH_P4_3_0) -> 
      (let rec p2_0 = (nearest_power_of_two_lh _lh_pad_circuit_LH_P4_0_0) in
        (`LH_P4(p2_0, _lh_pad_circuit_LH_P4_1_0, _lh_pad_circuit_LH_P4_2_0, ((take_lh p2_0) ((mappend_lh _lh_pad_circuit_LH_P4_3_0) ((copy_lh p2_0) emptyState_lh))))))
    | _ -> 
      (failwith "error"));;
let rec head_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec inports_lh _lh_inports_arg1_0 =
  (match _lh_inports_arg1_0 with
    | `PS(_lh_inports_PS_0_0, _lh_inports_PS_1_0, _lh_inports_PS_2_0, _lh_inports_PS_3_0, _lh_inports_PS_4_0) -> 
      _lh_inports_PS_3_0
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec pid_lh _lh_pid_arg1_0 =
  (match _lh_pid_arg1_0 with
    | `PS(_lh_pid_PS_0_0, _lh_pid_PS_1_0, _lh_pid_PS_2_0, _lh_pid_PS_3_0, _lh_pid_PS_4_0) -> 
      _lh_pid_PS_0_0
    | _ -> 
      (failwith "error"));;
let rec collect_outputs_lh _lh_collect_outputs_arg1_0 =
  (match _lh_collect_outputs_arg1_0 with
    | `LH_P4(_lh_collect_outputs_LH_P4_0_0, _lh_collect_outputs_LH_P4_1_0, _lh_collect_outputs_LH_P4_2_0, _lh_collect_outputs_LH_P4_3_0) -> 
      let rec third_0 = (fun _lh_third_arg1_0 -> 
        (match _lh_third_arg1_0 with
          | `LH_P3(_lh_third_LH_P3_0_0, _lh_third_LH_P3_1_0, _lh_third_LH_P3_2_0) -> 
            _lh_third_LH_P3_2_0
          | _ -> 
            (failwith "error")))
      and get_output_0 = (fun _lh_get_output_arg1_0 _lh_get_output_arg2_0 -> 
        (match _lh_get_output_arg2_0 with
          | `LH_P2(_lh_get_output_LH_P2_0_0, _lh_get_output_LH_P2_1_0) -> 
            (third_0 (head_lh (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
              (match _lh_listcomp_fun_para_9 with
                | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
                  (if (_lh_get_output_LH_P2_1_0 = (pid_lh _lh_listcomp_fun_ls_h_9)) then
                    (`LH_C((head_lh (inports_lh _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
                  else
                    (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_9 _lh_get_output_arg1_0))))
          | _ -> 
            (failwith "error")))
      in ((map_lh (get_output_0 _lh_collect_outputs_LH_P4_3_0)) _lh_collect_outputs_LH_P4_2_0)
    | _ -> 
      (failwith "error"));;
let rec pathDepth_lh _lh_pathDepth_arg1_0 =
  (match _lh_pathDepth_arg1_0 with
    | `PS(_lh_pathDepth_PS_0_0, _lh_pathDepth_PS_1_0, _lh_pathDepth_PS_2_0, _lh_pathDepth_PS_3_0, _lh_pathDepth_PS_4_0) -> 
      _lh_pathDepth_PS_2_0
    | _ -> 
      (failwith "error"));;
let rec maximum_lh _lh_maximum_arg1_0 =
  (match _lh_maximum_arg1_0 with
    | `LH_C(_lh_maximum_LH_C_0_0, _lh_maximum_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
        (match _lh_go_arg2_0 with
          | `LH_N -> 
            _lh_go_arg1_0
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            (if (_lh_go_arg1_0 > _lh_go_LH_C_0_0) then
              ((go_0 _lh_go_arg1_0) _lh_go_LH_C_1_0)
            else
              ((go_0 _lh_go_LH_C_0_0) _lh_go_LH_C_1_0))
          | _ -> 
            (failwith "error"))) in
        ((go_0 _lh_maximum_LH_C_0_0) _lh_maximum_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec critical_path_depth_lh _lh_critical_path_depth_arg1_0 =
  (match _lh_critical_path_depth_arg1_0 with
    | `LH_P4(_lh_critical_path_depth_LH_P4_0_0, _lh_critical_path_depth_LH_P4_1_0, _lh_critical_path_depth_LH_P4_2_0, _lh_critical_path_depth_LH_P4_3_0) -> 
      (maximum_lh ((map_lh pathDepth_lh) _lh_critical_path_depth_LH_P4_3_0))
    | _ -> 
      (failwith "error"));;
let rec tail_lh ls_4 =
  (match ls_4 with
    | `LH_C(h_4, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec outports_lh _lh_outports_arg1_0 =
  (match _lh_outports_arg1_0 with
    | `PS(_lh_outports_PS_0_0, _lh_outports_PS_1_0, _lh_outports_PS_2_0, _lh_outports_PS_3_0, _lh_outports_PS_4_0) -> 
      _lh_outports_PS_4_0
    | _ -> 
      (failwith "error"));;
let rec compType_lh _lh_compType_arg1_0 =
  (match _lh_compType_arg1_0 with
    | `PS(_lh_compType_PS_0_0, _lh_compType_PS_1_0, _lh_compType_PS_2_0, _lh_compType_PS_3_0, _lh_compType_PS_4_0) -> 
      _lh_compType_PS_1_0
    | _ -> 
      (failwith "error"));;
let rec updateOutports_lh _lh_updateOutports_arg1_0 _lh_updateOutports_arg2_0 =
  (`PS((pid_lh _lh_updateOutports_arg1_0), (compType_lh _lh_updateOutports_arg1_0), (pathDepth_lh _lh_updateOutports_arg1_0), (inports_lh _lh_updateOutports_arg1_0), _lh_updateOutports_arg2_0));;
let rec update_outports_lh _lh_update_outports_arg1_0 _lh_update_outports_arg2_0 =
  ((updateOutports_lh _lh_update_outports_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `LH_P6(_lh_update_outports_LH_P6_0_0, _lh_update_outports_LH_P6_1_0, _lh_update_outports_LH_P6_2_0, _lh_update_outports_LH_P6_3_0, _lh_update_outports_LH_P6_4_0, _lh_update_outports_LH_P6_5_0) -> 
            (`LH_C((`LH_P6(_lh_update_outports_LH_P6_0_0, _lh_update_outports_arg2_0, _lh_update_outports_LH_P6_2_0, _lh_update_outports_LH_P6_3_0, _lh_update_outports_LH_P6_4_0, _lh_update_outports_LH_P6_5_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 (outports_lh _lh_update_outports_arg1_0))));;
let rec init_dffs_lh _lh_init_dffs_arg1_0 =
  (if ((compType_lh _lh_init_dffs_arg1_0) = (`Dff)) then
    ((update_outports_lh _lh_init_dffs_arg1_0) (`F))
  else
    _lh_init_dffs_arg1_0);;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec foldr_lh f_2 i_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((f_2 h_2) (((foldr_lh f_2) i_1) t_2))
    | `LH_N -> 
      i_1);;
let rec unzip_lh _lh_unzip_arg1_0 =
  (((foldr_lh (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_6 = ab_0 in
      (match _lh_matchIdent_6 with
        | `LH_P2(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_7 = asbs_0 in
            (match _lh_matchIdent_7 with
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
          (let rec _lh_matchIdent_1_2 = (unzip_lh (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
            (match _lh_listcomp_fun_para_7 with
              | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
                (match _lh_listcomp_fun_ls_h_7 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
                  | _ -> 
                    (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_7 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_1_2 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec update_requests_lh _lh_update_requests_arg1_0 _lh_update_requests_arg2_0 =
  ((updateOutports_lh _lh_update_requests_arg2_0) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (match _lh_listcomp_fun_ls_h_5 with
          | `LH_P6(_lh_update_requests_LH_P6_0_0, _lh_update_requests_LH_P6_1_0, _lh_update_requests_LH_P6_2_0, _lh_update_requests_LH_P6_3_0, _lh_update_requests_LH_P6_4_0, _lh_update_requests_LH_P6_5_0) -> 
            (`LH_C((`LH_P6(_lh_update_requests_LH_P6_0_0, _lh_update_requests_LH_P6_1_0, _lh_update_requests_arg1_0, _lh_update_requests_LH_P6_3_0, _lh_update_requests_arg1_0, _lh_update_requests_LH_P6_5_0)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
          | _ -> 
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 (outports_lh _lh_update_requests_arg2_0))));;
let rec check_depth_lh _lh_check_depth_arg1_0 _lh_check_depth_arg2_0 =
  (if ((pathDepth_lh _lh_check_depth_arg2_0) = _lh_check_depth_arg1_0) then
    _lh_check_depth_arg2_0
  else
    ((update_requests_lh false) _lh_check_depth_arg2_0));;
let rec upsweep_lh _lh_upsweep_arg1_0 _lh_upsweep_arg2_0 =
  (match _lh_upsweep_arg2_0 with
    | `Cell(_lh_upsweep_Cell_0_0) -> 
      (`LH_P2(_lh_upsweep_Cell_0_0, (`Cell(_lh_upsweep_Cell_0_0))))
    | `Node(_lh_upsweep_Node_0_0, _lh_upsweep_Node_1_0, _lh_upsweep_Node_2_0) -> 
      (let rec _lh_matchIdent_2 = ((upsweep_lh _lh_upsweep_arg1_0) _lh_upsweep_Node_1_0) in
        (match _lh_matchIdent_2 with
          | `LH_P2(_lh_upsweep_LH_P2_0_0, _lh_upsweep_LH_P2_1_0) -> 
            (let rec _lh_matchIdent_3 = ((upsweep_lh _lh_upsweep_arg1_0) _lh_upsweep_Node_2_0) in
              (match _lh_matchIdent_3 with
                | `LH_P2(_lh_upsweep_LH_P2_0_1, _lh_upsweep_LH_P2_1_1) -> 
                  (`LH_P2(((_lh_upsweep_arg1_0 _lh_upsweep_LH_P2_0_0) _lh_upsweep_LH_P2_0_1), (`Node((`LH_P2(_lh_upsweep_LH_P2_0_0, _lh_upsweep_LH_P2_0_1)), _lh_upsweep_LH_P2_1_0, _lh_upsweep_LH_P2_1_1))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec downsweep_lh _lh_downsweep_arg1_0 _lh_downsweep_arg2_0 _lh_downsweep_arg3_0 =
  (match _lh_downsweep_arg3_0 with
    | `Cell(_lh_downsweep_Cell_0_0) -> 
      (`Cell(_lh_downsweep_arg2_0))
    | `Node(_lh_downsweep_Node_0_0, _lh_downsweep_Node_1_0, _lh_downsweep_Node_2_0) -> 
      (match _lh_downsweep_Node_0_0 with
        | `LH_P2(_lh_downsweep_LH_P2_0_0, _lh_downsweep_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_8 = (((_lh_downsweep_arg1_0 _lh_downsweep_LH_P2_0_0) _lh_downsweep_LH_P2_1_0) _lh_downsweep_arg2_0) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_downsweep_LH_P2_0_1, _lh_downsweep_LH_P2_1_1) -> 
                (let rec _lh_matchIdent_9 = (`LH_P2((((downsweep_lh _lh_downsweep_arg1_0) _lh_downsweep_LH_P2_0_1) _lh_downsweep_Node_1_0), (((downsweep_lh _lh_downsweep_arg1_0) _lh_downsweep_LH_P2_1_1) _lh_downsweep_Node_2_0))) in
                  (match _lh_matchIdent_9 with
                    | `LH_P2(_lh_downsweep_LH_P2_0_2, _lh_downsweep_LH_P2_1_2) -> 
                      (`Node((`Unit), _lh_downsweep_LH_P2_0_2, _lh_downsweep_LH_P2_1_2))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec sweep_ud_lh _lh_sweep_ud_arg1_0 _lh_sweep_ud_arg2_0 _lh_sweep_ud_arg3_0 _lh_sweep_ud_arg4_0 =
  (let rec _lh_matchIdent_4 = ((upsweep_lh _lh_sweep_ud_arg1_0) _lh_sweep_ud_arg4_0) in
    (match _lh_matchIdent_4 with
      | `LH_P2(_lh_sweep_ud_LH_P2_0_0, _lh_sweep_ud_LH_P2_1_0) -> 
        (`LH_P2(_lh_sweep_ud_LH_P2_0_0, (((downsweep_lh _lh_sweep_ud_arg2_0) _lh_sweep_ud_arg3_0) _lh_sweep_ud_LH_P2_1_0)))
      | _ -> 
        (failwith "error")));;
let rec length_lh ls_6 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      (1 + (length_lh t_6))
    | `LH_N -> 
      0);;
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
let rec splitAt_lh _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (`LH_P2(((take_lh _lh_splitAt_arg1_0) _lh_splitAt_arg2_0), ((drop_lh _lh_splitAt_arg1_0) _lh_splitAt_arg2_0)));;
let rec put_lh _lh_put_arg1_0 =
  (match _lh_put_arg1_0 with
    | `LH_C(_lh_put_LH_C_0_0, _lh_put_LH_C_1_0) -> 
      (match _lh_put_LH_C_1_0 with
        | `LH_N -> 
          (`Cell(_lh_put_LH_C_0_0))
        | _ -> 
          (let rec _lh_matchIdent_1_0 = ((splitAt_lh ((length_lh _lh_put_arg1_0) / 2)) _lh_put_arg1_0) in
            (match _lh_matchIdent_1_0 with
              | `LH_P2(_lh_put_LH_P2_0_0, _lh_put_LH_P2_1_0) -> 
                (`Node((`Unit), (put_lh _lh_put_LH_P2_0_0), (put_lh _lh_put_LH_P2_1_0)))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (let rec _lh_matchIdent_1_1 = ((splitAt_lh ((length_lh _lh_put_arg1_0) / 2)) _lh_put_arg1_0) in
        (match _lh_matchIdent_1_1 with
          | `LH_P2(_lh_put_LH_P2_0_1, _lh_put_LH_P2_1_1) -> 
            (`Node((`Unit), (put_lh _lh_put_LH_P2_0_1), (put_lh _lh_put_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))));;
let rec get_lh _lh_get_arg1_0 =
  (match _lh_get_arg1_0 with
    | `Cell(_lh_get_Cell_0_0) -> 
      (`LH_C(_lh_get_Cell_0_0, (`LH_N)))
    | `Node(_lh_get_Node_0_0, _lh_get_Node_1_0, _lh_get_Node_2_0) -> 
      ((mappend_lh (get_lh _lh_get_Node_1_0)) (get_lh _lh_get_Node_2_0))
    | _ -> 
      (failwith "error"));;
let rec scanlr_lh _lh_scanlr_arg1_0 _lh_scanlr_arg2_0 _lh_scanlr_arg3_0 _lh_scanlr_arg4_0 _lh_scanlr_arg5_0 =
  let rec down_0 = (fun _lh_down_arg1_0 _lh_down_arg2_0 _lh_down_arg3_0 _lh_down_arg4_0 _lh_down_arg5_0 -> 
    (match _lh_down_arg3_0 with
      | `LH_P2(_lh_down_LH_P2_0_0, _lh_down_LH_P2_1_0) -> 
        (match _lh_down_arg4_0 with
          | `LH_P2(_lh_down_LH_P2_0_1, _lh_down_LH_P2_1_1) -> 
            (match _lh_down_arg5_0 with
              | `LH_P2(_lh_down_LH_P2_0_2, _lh_down_LH_P2_1_2) -> 
                (`LH_P2((`LH_P2(_lh_down_LH_P2_0_2, ((_lh_down_arg2_0 _lh_down_LH_P2_1_1) _lh_down_LH_P2_1_2))), (`LH_P2(((_lh_down_arg1_0 _lh_down_LH_P2_0_2) _lh_down_LH_P2_0_0), _lh_down_LH_P2_1_2))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and up_0 = (fun _lh_up_arg1_0 _lh_up_arg2_0 _lh_up_arg3_0 _lh_up_arg4_0 -> 
    (match _lh_up_arg3_0 with
      | `LH_P2(_lh_up_LH_P2_0_0, _lh_up_LH_P2_1_0) -> 
        (match _lh_up_arg4_0 with
          | `LH_P2(_lh_up_LH_P2_0_1, _lh_up_LH_P2_1_1) -> 
            (`LH_P2(((_lh_up_arg1_0 _lh_up_LH_P2_0_0) _lh_up_LH_P2_0_1), ((_lh_up_arg2_0 _lh_up_LH_P2_1_0) _lh_up_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  in (let rec xs'_0 = ((map_lh (fun x_0 -> 
    (`LH_P2(x_0, x_0)))) _lh_scanlr_arg5_0) in
    (let rec _lh_matchIdent_5 = ((((sweep_ud_lh ((up_0 _lh_scanlr_arg1_0) _lh_scanlr_arg2_0)) ((down_0 _lh_scanlr_arg1_0) _lh_scanlr_arg2_0)) (`LH_P2(_lh_scanlr_arg3_0, _lh_scanlr_arg4_0))) (put_lh xs'_0)) in
      (match _lh_matchIdent_5 with
        | `LH_P2(_lh_scanlr_LH_P2_0_0, _lh_scanlr_LH_P2_1_0) -> 
          (match _lh_scanlr_LH_P2_0_0 with
            | `LH_P2(_lh_scanlr_LH_P2_0_1, _lh_scanlr_LH_P2_1_1) -> 
              (let rec ans_0 = (`LH_P2(((_lh_scanlr_arg2_0 _lh_scanlr_LH_P2_1_1) _lh_scanlr_arg4_0), ((_lh_scanlr_arg1_0 _lh_scanlr_arg3_0) _lh_scanlr_LH_P2_0_1))) in
                (`LH_P2(ans_0, (get_lh _lh_scanlr_LH_P2_1_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))));;
let rec send_left_lh _lh_send_left_arg1_0 _lh_send_left_arg2_0 =
  (match _lh_send_left_arg1_0 with
    | `LH_P8(_lh_send_left_LH_P8_0_0, _lh_send_left_LH_P8_1_0, _lh_send_left_LH_P8_2_0, _lh_send_left_LH_P8_3_0, _lh_send_left_LH_P8_4_0, _lh_send_left_LH_P8_5_0, _lh_send_left_LH_P8_6_0, _lh_send_left_LH_P8_7_0) -> 
      (match _lh_send_left_arg2_0 with
        | `LH_P8(_lh_send_left_LH_P8_0_1, _lh_send_left_LH_P8_1_1, _lh_send_left_LH_P8_2_1, _lh_send_left_LH_P8_3_1, _lh_send_left_LH_P8_4_1, _lh_send_left_LH_P8_5_1, _lh_send_left_LH_P8_6_1, _lh_send_left_LH_P8_7_1) -> 
          (if (_lh_send_left_LH_P8_3_1 && (_lh_send_left_LH_P8_4_1 > _lh_send_left_LH_P8_7_0)) then
            (`LH_P8(_lh_send_left_LH_P8_0_1, _lh_send_left_LH_P8_1_1, _lh_send_left_LH_P8_2_1, _lh_send_left_LH_P8_3_1, (_lh_send_left_LH_P8_4_1 - _lh_send_left_LH_P8_7_0), _lh_send_left_LH_P8_5_1, _lh_send_left_LH_P8_6_1, (_lh_send_left_LH_P8_7_0 + _lh_send_left_LH_P8_7_1)))
          else
            (`LH_P8(_lh_send_left_LH_P8_0_0, _lh_send_left_LH_P8_1_0, _lh_send_left_LH_P8_2_0, _lh_send_left_LH_P8_3_0, _lh_send_left_LH_P8_4_0, _lh_send_left_LH_P8_5_0, _lh_send_left_LH_P8_6_0, (_lh_send_left_LH_P8_7_0 + _lh_send_left_LH_P8_7_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec emptyPacket_lh =
  (`LH_P8((0 - 1), (0 - 1), (`F), false, 0, false, 0, 1));;
let rec send_right_lh _lh_send_right_arg1_0 _lh_send_right_arg2_0 =
  (match _lh_send_right_arg1_0 with
    | `LH_P8(_lh_send_right_LH_P8_0_0, _lh_send_right_LH_P8_1_0, _lh_send_right_LH_P8_2_0, _lh_send_right_LH_P8_3_0, _lh_send_right_LH_P8_4_0, _lh_send_right_LH_P8_5_0, _lh_send_right_LH_P8_6_0, _lh_send_right_LH_P8_7_0) -> 
      (match _lh_send_right_arg2_0 with
        | `LH_P8(_lh_send_right_LH_P8_0_1, _lh_send_right_LH_P8_1_1, _lh_send_right_LH_P8_2_1, _lh_send_right_LH_P8_3_1, _lh_send_right_LH_P8_4_1, _lh_send_right_LH_P8_5_1, _lh_send_right_LH_P8_6_1, _lh_send_right_LH_P8_7_1) -> 
          (if (_lh_send_right_LH_P8_5_0 && (_lh_send_right_LH_P8_6_0 > _lh_send_right_LH_P8_7_1)) then
            (`LH_P8(_lh_send_right_LH_P8_0_0, _lh_send_right_LH_P8_1_0, _lh_send_right_LH_P8_2_0, _lh_send_right_LH_P8_3_0, _lh_send_right_LH_P8_4_0, _lh_send_right_LH_P8_5_0, (_lh_send_right_LH_P8_6_0 - _lh_send_right_LH_P8_7_1), (_lh_send_right_LH_P8_7_0 + _lh_send_right_LH_P8_7_1)))
          else
            (`LH_P8(_lh_send_right_LH_P8_0_1, _lh_send_right_LH_P8_1_1, _lh_send_right_LH_P8_2_1, _lh_send_right_LH_P8_3_1, _lh_send_right_LH_P8_4_1, _lh_send_right_LH_P8_5_1, _lh_send_right_LH_P8_6_1, (_lh_send_right_LH_P8_7_0 + _lh_send_right_LH_P8_7_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec send_lh _lh_send_arg1_0 =
  (((((scanlr_lh send_right_lh) send_left_lh) emptyPacket_lh) emptyPacket_lh) _lh_send_arg1_0);;
let rec zipWith_lh f_3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_1 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_3 hx_1) hy_1), (((zipWith_lh f_3) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec make_packet_lh _lh_make_packet_arg1_0 =
  (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `LH_P6(_lh_make_packet_LH_P6_0_0, _lh_make_packet_LH_P6_1_0, _lh_make_packet_LH_P6_2_0, _lh_make_packet_LH_P6_3_0, _lh_make_packet_LH_P6_4_0, _lh_make_packet_LH_P6_5_0) -> 
            (`LH_C((`LH_P8((pid_lh _lh_make_packet_arg1_0), _lh_make_packet_LH_P6_0_0, _lh_make_packet_LH_P6_1_0, _lh_make_packet_LH_P6_2_0, _lh_make_packet_LH_P6_3_0, _lh_make_packet_LH_P6_4_0, _lh_make_packet_LH_P6_5_0, 1)), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
          | _ -> 
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 (outports_lh _lh_make_packet_arg1_0)));;
let rec pad_packets_lh _lh_pad_packets_arg1_0 =
  (let rec pad_0 = (fun xs_4 -> 
    (let rec max_ps_0 = (maximum_lh ((map_lh length_lh) _lh_pad_packets_arg1_0)) in
      ((take_lh max_ps_0) ((mappend_lh xs_4) ((copy_lh max_ps_0) emptyPacket_lh))))) in
    ((map_lh pad_0) _lh_pad_packets_arg1_0));;
let rec check_right_lh _lh_check_right_arg1_0 _lh_check_right_arg2_0 =
  (match _lh_check_right_arg1_0 with
    | `LH_P8(_lh_check_right_LH_P8_0_0, _lh_check_right_LH_P8_1_0, _lh_check_right_LH_P8_2_0, _lh_check_right_LH_P8_3_0, _lh_check_right_LH_P8_4_0, _lh_check_right_LH_P8_5_0, _lh_check_right_LH_P8_6_0, _lh_check_right_LH_P8_7_0) -> 
      (match _lh_check_right_arg2_0 with
        | `LH_P6(_lh_check_right_LH_P6_0_0, _lh_check_right_LH_P6_1_0, _lh_check_right_LH_P6_2_0, _lh_check_right_LH_P6_3_0, _lh_check_right_LH_P6_4_0, _lh_check_right_LH_P6_5_0) -> 
          (if (_lh_check_right_LH_P8_3_0 && (_lh_check_right_LH_P8_4_0 > 0)) then
            (`LH_P6(_lh_check_right_LH_P6_0_0, _lh_check_right_LH_P6_1_0, _lh_check_right_LH_P6_2_0, _lh_check_right_LH_P6_3_0, _lh_check_right_LH_P6_4_0, _lh_check_right_LH_P6_5_0))
          else
            (`LH_P6(_lh_check_right_LH_P6_0_0, _lh_check_right_LH_P6_1_0, false, _lh_check_right_LH_P6_3_0, _lh_check_right_LH_P6_4_0, _lh_check_right_LH_P6_5_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec check_left_lh _lh_check_left_arg1_0 _lh_check_left_arg2_0 =
  (match _lh_check_left_arg1_0 with
    | `LH_P8(_lh_check_left_LH_P8_0_0, _lh_check_left_LH_P8_1_0, _lh_check_left_LH_P8_2_0, _lh_check_left_LH_P8_3_0, _lh_check_left_LH_P8_4_0, _lh_check_left_LH_P8_5_0, _lh_check_left_LH_P8_6_0, _lh_check_left_LH_P8_7_0) -> 
      (match _lh_check_left_arg2_0 with
        | `LH_P6(_lh_check_left_LH_P6_0_0, _lh_check_left_LH_P6_1_0, _lh_check_left_LH_P6_2_0, _lh_check_left_LH_P6_3_0, _lh_check_left_LH_P6_4_0, _lh_check_left_LH_P6_5_0) -> 
          (if (_lh_check_left_LH_P8_5_0 && (_lh_check_left_LH_P8_6_0 > 0)) then
            (`LH_P6(_lh_check_left_LH_P6_0_0, _lh_check_left_LH_P6_1_0, _lh_check_left_LH_P6_2_0, _lh_check_left_LH_P6_3_0, _lh_check_left_LH_P6_4_0, _lh_check_left_LH_P6_5_0))
          else
            (`LH_P6(_lh_check_left_LH_P6_0_0, _lh_check_left_LH_P6_1_0, _lh_check_left_LH_P6_2_0, _lh_check_left_LH_P6_3_0, false, _lh_check_left_LH_P6_5_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec update_o_lh _lh_update_o_arg1_0 _lh_update_o_arg2_0 =
  (match _lh_update_o_arg1_0 with
    | `LH_P2(_lh_update_o_LH_P2_0_0, _lh_update_o_LH_P2_1_0) -> 
      ((check_left_lh _lh_update_o_LH_P2_0_0) ((check_right_lh _lh_update_o_LH_P2_1_0) _lh_update_o_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec compare_and_update_lh _lh_compare_and_update_arg1_0 _lh_compare_and_update_arg2_0 =
  (match _lh_compare_and_update_arg1_0 with
    | `LH_P3(_lh_compare_and_update_LH_P3_0_0, _lh_compare_and_update_LH_P3_1_0, _lh_compare_and_update_LH_P3_2_0) -> 
      (match _lh_compare_and_update_arg2_0 with
        | `LH_P3(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1, _lh_compare_and_update_LH_P3_2_1) -> 
          (if ((`LH_P2(_lh_compare_and_update_LH_P3_0_0, _lh_compare_and_update_LH_P3_1_0)) = (`LH_P2(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1))) then
            (`LH_P3(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1, _lh_compare_and_update_LH_P3_2_0))
          else
            (`LH_P3(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1, _lh_compare_and_update_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec up_i_lh _lh_up_i_arg1_0 _lh_up_i_arg2_0 =
  (match _lh_up_i_arg1_0 with
    | `LH_P8(_lh_up_i_LH_P8_0_0, _lh_up_i_LH_P8_1_0, _lh_up_i_LH_P8_2_0, _lh_up_i_LH_P8_3_0, _lh_up_i_LH_P8_4_0, _lh_up_i_LH_P8_5_0, _lh_up_i_LH_P8_6_0, _lh_up_i_LH_P8_7_0) -> 
      ((map_lh (compare_and_update_lh (`LH_P3(_lh_up_i_LH_P8_0_0, _lh_up_i_LH_P8_1_0, _lh_up_i_LH_P8_2_0)))) _lh_up_i_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec update_i_lh _lh_update_i_arg1_0 _lh_update_i_arg2_0 =
  (match _lh_update_i_arg1_0 with
    | `LH_P2(_lh_update_i_LH_P2_0_0, _lh_update_i_LH_P2_1_0) -> 
      ((up_i_lh _lh_update_i_LH_P2_0_0) ((up_i_lh _lh_update_i_LH_P2_1_0) _lh_update_i_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec updateInports_lh _lh_updateInports_arg1_0 _lh_updateInports_arg2_0 =
  (`PS((pid_lh _lh_updateInports_arg1_0), (compType_lh _lh_updateInports_arg1_0), (pathDepth_lh _lh_updateInports_arg1_0), _lh_updateInports_arg2_0, (outports_lh _lh_updateInports_arg1_0)));;
let rec update_io_lh _lh_update_io_arg1_0 _lh_update_io_arg2_0 _lh_update_io_arg3_0 =
  (let rec update_is_0 = (fun state_0 -> 
    ((updateInports_lh state_0) (((foldr_lh update_i_lh) (inports_lh state_0)) _lh_update_io_arg2_0))) in
    (let rec update_os_0 = (fun state_1 -> 
      (if ((pathDepth_lh state_1) = _lh_update_io_arg1_0) then
        ((updateOutports_lh state_1) (((zipWith_lh update_o_lh) _lh_update_io_arg2_0) (outports_lh state_1)))
      else
        state_1)) in
      (update_os_0 (update_is_0 _lh_update_io_arg3_0))));;
let rec do_send_lh _lh_do_send_arg1_0 _lh_do_send_arg2_0 =
  (let rec states1_2 = ((map_lh (check_depth_lh _lh_do_send_arg1_0)) _lh_do_send_arg2_0) in
    (let rec send_results_0 = ((map_lh (fun _lh_funcomp_x_1 -> 
      (snd_lh (send_lh _lh_funcomp_x_1)))) ((fun _lh_funcomp_x_2 -> 
      (transpose_lh (pad_packets_lh _lh_funcomp_x_2))) ((map_lh make_packet_lh) states1_2))) in
      (let rec pss'_0 = (transpose_lh send_results_0) in
        (((zipWith_lh (update_io_lh _lh_do_send_arg1_0)) pss'_0) _lh_do_send_arg2_0))));;
let rec or_lh _lh_or_arg1_0 =
  (match _lh_or_arg1_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_0, _lh_or_LH_C_1_0) -> 
      (if _lh_or_LH_C_0_0 then
        true
      else
        (or_lh _lh_or_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec acknowledge_lh _lh_acknowledge_arg1_0 _lh_acknowledge_arg2_0 =
  let rec check_lr_requests_0 = (fun _lh_check_lr_requests_arg1_0 -> 
    (match _lh_check_lr_requests_arg1_0 with
      | `LH_P6(_lh_check_lr_requests_LH_P6_0_0, _lh_check_lr_requests_LH_P6_1_0, _lh_check_lr_requests_LH_P6_2_0, _lh_check_lr_requests_LH_P6_3_0, _lh_check_lr_requests_LH_P6_4_0, _lh_check_lr_requests_LH_P6_5_0) -> 
        (_lh_check_lr_requests_LH_P6_2_0 || _lh_check_lr_requests_LH_P6_4_0)
      | _ -> 
        (failwith "error")))
  and check_requests_0 = (fun _lh_check_requests_arg1_0 -> 
    (or_lh ((map_lh check_lr_requests_0) _lh_check_requests_arg1_0)))
  in (let rec states1_0 = ((map_lh (check_depth_lh _lh_acknowledge_arg1_0)) _lh_acknowledge_arg2_0) in
    (not (or_lh ((map_lh (fun _lh_funcomp_x_0 -> 
      (check_requests_0 (outports_lh _lh_funcomp_x_0)))) states1_0))));;
let rec do_sends_lh _lh_do_sends_arg1_0 _lh_do_sends_arg2_0 =
  (((until_lh (acknowledge_lh _lh_do_sends_arg1_0)) (do_send_lh _lh_do_sends_arg1_0)) _lh_do_sends_arg2_0);;
let rec foldl_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (((foldl_lh f_1) ((f_1 i_0) h_1)) t_1)
    | `LH_N -> 
      i_0);;
let rec store_inputs_lh _lh_store_inputs_arg1_0 _lh_store_inputs_arg2_0 =
  (match _lh_store_inputs_arg2_0 with
    | `PS(_lh_store_inputs_PS_0_0, _lh_store_inputs_PS_1_0, _lh_store_inputs_PS_2_0, _lh_store_inputs_PS_3_0, _lh_store_inputs_PS_4_0) -> 
      (match _lh_store_inputs_PS_1_0 with
        | `Inp -> 
          (head_lh (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
            (match _lh_listcomp_fun_para_8 with
              | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                (match _lh_listcomp_fun_ls_h_8 with
                  | `LH_P2(_lh_store_inputs_LH_P2_0_0, _lh_store_inputs_LH_P2_1_0) -> 
                    (match _lh_store_inputs_LH_P2_0_0 with
                      | `LH_P2(_lh_store_inputs_LH_P2_0_1, _lh_store_inputs_LH_P2_1_1) -> 
                        (if (_lh_store_inputs_PS_0_0 = _lh_store_inputs_LH_P2_1_1) then
                          (`LH_C(((update_outports_lh (`PS(_lh_store_inputs_PS_0_0, (`Inp), _lh_store_inputs_PS_2_0, _lh_store_inputs_PS_3_0, _lh_store_inputs_PS_4_0))) _lh_store_inputs_LH_P2_1_0), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
                        else
                          (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
                      | _ -> 
                        (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
                  | _ -> 
                    (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_8 _lh_store_inputs_arg1_0)))
        | _ -> 
          _lh_store_inputs_arg2_0)
    | _ -> 
      _lh_store_inputs_arg2_0);;
let rec zip_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lh tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec inv_lh _lh_inv_arg1_0 =
  (if (_lh_inv_arg1_0 = (`T)) then
    (`F)
  else
    (`T));;
let rec xor_lh _lh_xor_arg1_0 _lh_xor_arg2_0 =
  (if (_lh_xor_arg1_0 = _lh_xor_arg2_0) then
    (`T)
  else
    (`F));;
let rec and2_lh _lh_and2_arg1_0 _lh_and2_arg2_0 =
  (if ((_lh_and2_arg1_0 = (`T)) && (_lh_and2_arg2_0 = (`T))) then
    (`T)
  else
    (`F));;
let rec or2_lh _lh_or2_arg1_0 _lh_or2_arg2_0 =
  (if ((_lh_or2_arg1_0 = (`T)) || (_lh_or2_arg2_0 = (`T))) then
    (`T)
  else
    (`F));;
let rec apply_component_lh _lh_apply_component_arg1_0 _lh_apply_component_arg2_0 =
  (match _lh_apply_component_arg1_0 with
    | `Inp -> 
      (`Nothing)
    | `Outp -> 
      (match _lh_apply_component_arg2_0 with
        | `LH_C(_lh_apply_component_LH_C_0_0, _lh_apply_component_LH_C_1_0) -> 
          (match _lh_apply_component_LH_C_1_0 with
            | `LH_N -> 
              (`Just(_lh_apply_component_LH_C_0_0))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | `Dff -> 
      (match _lh_apply_component_arg2_0 with
        | `LH_C(_lh_apply_component_LH_C_0_1, _lh_apply_component_LH_C_1_1) -> 
          (match _lh_apply_component_LH_C_1_1 with
            | `LH_N -> 
              (`Just(_lh_apply_component_LH_C_0_1))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | `Inv -> 
      (match _lh_apply_component_arg2_0 with
        | `LH_C(_lh_apply_component_LH_C_0_2, _lh_apply_component_LH_C_1_2) -> 
          (match _lh_apply_component_LH_C_1_2 with
            | `LH_N -> 
              (`Just((inv_lh _lh_apply_component_LH_C_0_2)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | `And2 -> 
      (match _lh_apply_component_arg2_0 with
        | `LH_C(_lh_apply_component_LH_C_0_3, _lh_apply_component_LH_C_1_3) -> 
          (match _lh_apply_component_LH_C_1_3 with
            | `LH_C(_lh_apply_component_LH_C_0_4, _lh_apply_component_LH_C_1_4) -> 
              (match _lh_apply_component_LH_C_1_4 with
                | `LH_N -> 
                  (`Just(((and2_lh _lh_apply_component_LH_C_0_3) _lh_apply_component_LH_C_0_4)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | `Or2 -> 
      (match _lh_apply_component_arg2_0 with
        | `LH_C(_lh_apply_component_LH_C_0_5, _lh_apply_component_LH_C_1_5) -> 
          (match _lh_apply_component_LH_C_1_5 with
            | `LH_C(_lh_apply_component_LH_C_0_6, _lh_apply_component_LH_C_1_6) -> 
              (match _lh_apply_component_LH_C_1_6 with
                | `LH_N -> 
                  (`Just(((or2_lh _lh_apply_component_LH_C_0_5) _lh_apply_component_LH_C_0_6)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | `Xor -> 
      (match _lh_apply_component_arg2_0 with
        | `LH_C(_lh_apply_component_LH_C_0_7, _lh_apply_component_LH_C_1_7) -> 
          (match _lh_apply_component_LH_C_1_7 with
            | `LH_C(_lh_apply_component_LH_C_0_8, _lh_apply_component_LH_C_1_8) -> 
              (match _lh_apply_component_LH_C_1_8 with
                | `LH_N -> 
                  (`Just(((xor_lh _lh_apply_component_LH_C_0_7) _lh_apply_component_LH_C_0_8)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | `None -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec simulate_component_lh _lh_simulate_component_arg1_0 _lh_simulate_component_arg2_0 =
  (let rec out_signals_0 = (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (match _lh_listcomp_fun_ls_h_4 with
          | `LH_P3(_lh_simulate_component_LH_P3_0_0, _lh_simulate_component_LH_P3_1_0, _lh_simulate_component_LH_P3_2_0) -> 
            (`LH_C(_lh_simulate_component_LH_P3_2_0, (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
          | _ -> 
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4 (inports_lh _lh_simulate_component_arg2_0))) in
    (let rec new_value_0 = ((apply_component_lh (compType_lh _lh_simulate_component_arg2_0)) out_signals_0) in
      (if ((_lh_simulate_component_arg1_0 = (pathDepth_lh _lh_simulate_component_arg2_0)) && (not (new_value_0 = (`Nothing)))) then
        (let rec _lh_matchIdent_0 = new_value_0 in
          (match _lh_matchIdent_0 with
            | `Just(_lh_simulate_component_Just_0_0) -> 
              ((update_outports_lh _lh_simulate_component_arg2_0) _lh_simulate_component_Just_0_0)
            | _ -> 
              (failwith "error")))
      else
        _lh_simulate_component_arg2_0)));;
let rec simulate_components_lh _lh_simulate_components_arg1_0 _lh_simulate_components_arg2_0 =
  ((map_lh (simulate_component_lh _lh_simulate_components_arg1_0)) _lh_simulate_components_arg2_0);;
let rec restore_requests_lh _lh_restore_requests_arg1_0 _lh_restore_requests_arg2_0 =
  let rec restore_0 = (fun _lh_restore_arg1_0 _lh_restore_arg2_0 -> 
    ((updateOutports_lh _lh_restore_arg2_0) (((zipWith_lh restore_outport_0) (outports_lh _lh_restore_arg1_0)) (outports_lh _lh_restore_arg2_0))))
  and restore_outport_0 = (fun _lh_restore_outport_arg1_0 _lh_restore_outport_arg2_0 -> 
    (match _lh_restore_outport_arg1_0 with
      | `LH_P6(_lh_restore_outport_LH_P6_0_0, _lh_restore_outport_LH_P6_1_0, _lh_restore_outport_LH_P6_2_0, _lh_restore_outport_LH_P6_3_0, _lh_restore_outport_LH_P6_4_0, _lh_restore_outport_LH_P6_5_0) -> 
        (match _lh_restore_outport_arg2_0 with
          | `LH_P6(_lh_restore_outport_LH_P6_0_1, _lh_restore_outport_LH_P6_1_1, _lh_restore_outport_LH_P6_2_1, _lh_restore_outport_LH_P6_3_1, _lh_restore_outport_LH_P6_4_1, _lh_restore_outport_LH_P6_5_1) -> 
            (`LH_P6(_lh_restore_outport_LH_P6_0_0, _lh_restore_outport_LH_P6_1_1, _lh_restore_outport_LH_P6_2_0, _lh_restore_outport_LH_P6_3_0, _lh_restore_outport_LH_P6_4_0, _lh_restore_outport_LH_P6_5_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  in (((zipWith_lh restore_0) _lh_restore_requests_arg1_0) _lh_restore_requests_arg2_0);;
let rec do_cycle_lh _lh_do_cycle_arg1_0 _lh_do_cycle_arg2_0 _lh_do_cycle_arg3_0 =
  (match _lh_do_cycle_arg2_0 with
    | `LH_P4(_lh_do_cycle_LH_P4_0_0, _lh_do_cycle_LH_P4_1_0, _lh_do_cycle_LH_P4_2_0, _lh_do_cycle_LH_P4_3_0) -> 
      (let rec sim_then_send_0 = (fun _lh_sim_then_send_arg1_0 _lh_sim_then_send_arg2_0 -> 
        ((do_sends_lh _lh_sim_then_send_arg2_0) ((simulate_components_lh _lh_sim_then_send_arg2_0) _lh_sim_then_send_arg1_0))) in
        (let rec states1_1 = ((map_lh (store_inputs_lh ((zip_lh _lh_do_cycle_LH_P4_1_0) _lh_do_cycle_arg3_0))) _lh_do_cycle_LH_P4_3_0) in
          (let rec states2_0 = ((do_sends_lh 0) states1_1) in
            (let rec states3_0 = (((foldl_lh sim_then_send_0) states2_0) ((enumFromTo_lh 1) _lh_do_cycle_arg1_0)) in
              (let rec states4_0 = ((restore_requests_lh _lh_do_cycle_LH_P4_3_0) states3_0) in
                (`LH_P4(_lh_do_cycle_LH_P4_0_0, _lh_do_cycle_LH_P4_1_0, _lh_do_cycle_LH_P4_2_0, states4_0)))))))
    | _ -> 
      (failwith "error"));;
let rec scanl_lh _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_0, (let rec _lh_matchIdent_1 = _lh_scanl_arg3_0 in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_0, _lh_scanl_LH_C_1_0) -> 
        (((scanl_lh _lh_scanl_arg1_0) ((_lh_scanl_arg1_0 _lh_scanl_arg2_0) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_0)
      | _ -> 
        (failwith "error")))));;
let rec simulate_lh _lh_simulate_arg1_0 _lh_simulate_arg2_0 =
  (match _lh_simulate_arg2_0 with
    | `LH_P4(_lh_simulate_LH_P4_0_0, _lh_simulate_LH_P4_1_0, _lh_simulate_LH_P4_2_0, _lh_simulate_LH_P4_3_0) -> 
      (tail_lh (((scanl_lh (do_cycle_lh (critical_path_depth_lh (`LH_P4(_lh_simulate_LH_P4_0_0, _lh_simulate_LH_P4_1_0, _lh_simulate_LH_P4_2_0, _lh_simulate_LH_P4_3_0))))) (`LH_P4(_lh_simulate_LH_P4_0_0, _lh_simulate_LH_P4_1_0, _lh_simulate_LH_P4_2_0, ((map_lh init_dffs_lh) _lh_simulate_LH_P4_3_0)))) _lh_simulate_arg1_0))
    | _ -> 
      (failwith "error"));;
let rec circuit_simulate_lh _lh_circuit_simulate_arg1_0 _lh_circuit_simulate_arg2_0 =
  ((map_lh collect_outputs_lh) ((simulate_lh _lh_circuit_simulate_arg1_0) _lh_circuit_simulate_arg2_0));;
let rec zipWith_lz_nl_lh f_4 xs_2 ys_2 =
  (match ys_2 with
    | `LH_C(hy_2, ty_2) -> 
      (match (Lazy.force xs_2) with
        | `LH_C(hx_2, tx_2) -> 
          (`LH_C(((f_4 hx_2) hy_2), (((zipWith_lz_nl_lh f_4) tx_2) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec enumFrom_lh a_1 =
  (lazy (`LH_C(a_1, (enumFrom_lh (a_1 + 1)))));;
let rec reg_lh _lh_reg_arg1_0 _lh_reg_arg2_0 =
  (`LH_C((`PS(_lh_reg_arg2_0, (`Inp), 0, (`LH_N), (`LH_C((`LH_P6(0, (`F), false, 0, true, 4)), (`LH_N))))), (`LH_C((`PS((_lh_reg_arg2_0 + 1), (`Dff), 1, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 5), 0, (`F))), (`LH_N))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 5)), (`LH_N))))), (`LH_C((`PS((_lh_reg_arg2_0 + 2), (`Inv), 1, (`LH_C((`LH_P3(_lh_reg_arg1_0, 0, (`F))), (`LH_N))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 1)), (`LH_N))))), (`LH_C((`PS((_lh_reg_arg2_0 + 3), (`And2), 2, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 1), 0, (`F))), (`LH_C((`LH_P3((_lh_reg_arg2_0 + 2), 0, (`F))), (`LH_N))))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 2)), (`LH_N))))), (`LH_C((`PS((_lh_reg_arg2_0 + 4), (`And2), 1, (`LH_C((`LH_P3(_lh_reg_arg1_0, 0, (`F))), (`LH_C((`LH_P3(_lh_reg_arg2_0, 0, (`F))), (`LH_N))))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 1)), (`LH_N))))), (`LH_C((`PS((_lh_reg_arg2_0 + 5), (`Or2), 3, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 3), 0, (`F))), (`LH_C((`LH_P3((_lh_reg_arg2_0 + 4), 0, (`F))), (`LH_N))))), (`LH_C((`LH_P6(0, (`F), true, 4, false, 0)), (`LH_N))))), (`LH_C((`PS((_lh_reg_arg2_0 + 6), (`Outp), 4, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 1), 0, (`F))), (`LH_N))), (`LH_N))), (`LH_N)))))))))))))));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_8) -> 
      ((mappend_lh h_8) (concat_lh t_8))
    | `LH_N -> 
      (`LH_N));;
let rec regs_lh _lh_regs_arg1_0 =
  let rec ilabel_0 = (fun _lh_ilabel_arg1_0 _lh_ilabel_arg2_0 -> 
    (`LH_P2(((mappend_lh (`LH_C('x', (`LH_N)))) (string_of_int _lh_ilabel_arg1_0)), _lh_ilabel_arg2_0)))
  and olabel_0 = (fun _lh_olabel_arg1_0 _lh_olabel_arg2_0 -> 
    (`LH_P2(((mappend_lh (`LH_C('y', (`LH_N)))) (string_of_int _lh_olabel_arg1_0)), _lh_olabel_arg2_0)))
  in (let rec is_0 = (`LH_C((`LH_P2((`LH_C('s', (`LH_C('t', (`LH_C('o', (`LH_N))))))), 0)), (((zipWith_lz_nl_lh ilabel_0) (enumFrom_lh 0)) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C(((7 * _lh_listcomp_fun_ls_h_1) + 1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 ((enumFromTo_lh 0) (_lh_regs_arg1_0 - 1))))))) in
    (let rec os_0 = (((zipWith_lz_nl_lh olabel_0) (enumFrom_lh 0)) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
      (match _lh_listcomp_fun_para_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
          (`LH_C(((7 * _lh_listcomp_fun_ls_h_2) + 7), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2 ((enumFromTo_lh 0) (_lh_regs_arg1_0 - 1))))) in
      (let rec sto_0 = (`PS(0, (`Inp), 0, (`LH_N), (`LH_C((`LH_P6(0, (`F), false, 0, true, ((8 * (_lh_regs_arg1_0 - 1)) + 5))), (`LH_N))))) in
        (let rec states_0 = (`LH_C(sto_0, (concat_lh ((map_lh (reg_lh 0)) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C(((7 * _lh_listcomp_fun_ls_h_3) + 1), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_3 ((enumFromTo_lh 0) (_lh_regs_arg1_0 - 1)))))))) in
          (`LH_P4((1 + (7 * _lh_regs_arg1_0)), is_0, os_0, states_0))))));;
let rec run_lh _lh_run_arg1_0 _lh_run_arg2_0 =
  (let rec example_0 = (pad_circuit_lh (regs_lh _lh_run_arg1_0)) in
    (let rec inputs_0 = ((copy_lh (_lh_run_arg1_0 + 1)) (`T)) in
      (let rec cycles_0 = ((copy_lh _lh_run_arg2_0) inputs_0) in
        ((circuit_simulate_lh cycles_0) example_0))));;
let rec testCircsim_nofib_lh _lh_testCircsim_nofib_arg1_0 =
  ((run_lh 8) _lh_testCircsim_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testCircsim_nofib_lh 8)));
end;;

