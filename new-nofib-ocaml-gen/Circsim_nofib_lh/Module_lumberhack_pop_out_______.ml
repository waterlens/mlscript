

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec scanl_lh__d1 _lh_scanl_arg1_2 _lh_scanl_arg2_2 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_2, (let rec _lh_matchIdent_1_7 = _lh_scanl_arg3_0 in
    ((_lh_matchIdent_1_7 _lh_scanl_arg1_2) _lh_scanl_arg2_2))));;
let rec copy_lh__d1 _lh_copy_arg1_1 _lh_copy_arg2_1 _lh_popOutId_0_8 _lh_popOutId_1_5 =
  (if (_lh_copy_arg1_1 > 0) then
    (let rec _lh_scanl_LH_C_1_0 = ((copy_lh__d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
      (let rec _lh_scanl_LH_C_0_0 = _lh_copy_arg2_1 in
        (((scanl_lh__d1 _lh_popOutId_0_8) ((_lh_popOutId_0_8 _lh_popOutId_1_5) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_0)))
  else
    (`LH_N));;
let rec pad_circuit_lh__d1 _lh_pad_circuit_arg1_0 =
  (_lh_pad_circuit_arg1_0 99);;
let rec zip_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(hx_0, tx_0) -> 
      ((ys_1 hx_0) tx_0)
    | `LH_N -> 
      (fun _lh_listcomp_fun_1 _lh_store_inputs_PS_0_0 _lh_store_inputs_PS_2_0 _lh_store_inputs_PS_3_0 _lh_store_inputs_PS_4_0 -> 
        (`LH_N)));;
let rec outports_lh__d4 _lh_outports_arg1_6 =
  (match _lh_outports_arg1_6 with
    | `PS(_lh_outports_PS_0_6, _lh_outports_PS_1_6, _lh_outports_PS_2_6, _lh_outports_PS_3_6, _lh_outports_PS_4_6) -> 
      _lh_outports_PS_4_6
    | _ -> 
      (failwith "error"));;
let rec compType_lh__d5 _lh_compType_arg1_0 =
  (match _lh_compType_arg1_0 with
    | `PS(_lh_compType_PS_0_0, _lh_compType_PS_1_0, _lh_compType_PS_2_0, _lh_compType_PS_3_0, _lh_compType_PS_4_0) -> 
      _lh_compType_PS_1_0
    | _ -> 
      (failwith "error"));;
let rec pid_lh__d4 _lh_pid_arg1_0 =
  (match _lh_pid_arg1_0 with
    | `PS(_lh_pid_PS_0_0, _lh_pid_PS_1_0, _lh_pid_PS_2_0, _lh_pid_PS_3_0, _lh_pid_PS_4_0) -> 
      _lh_pid_PS_0_0
    | _ -> 
      (failwith "error"));;
let rec pathDepth_lh__d5 _lh_pathDepth_arg1_2 =
  (match _lh_pathDepth_arg1_2 with
    | `PS(_lh_pathDepth_PS_0_2, _lh_pathDepth_PS_1_2, _lh_pathDepth_PS_2_2, _lh_pathDepth_PS_3_2, _lh_pathDepth_PS_4_2) -> 
      _lh_pathDepth_PS_2_2
    | _ -> 
      (failwith "error"));;
let rec inports_lh__d5 _lh_inports_arg1_4 =
  (match _lh_inports_arg1_4 with
    | `PS(_lh_inports_PS_0_4, _lh_inports_PS_1_4, _lh_inports_PS_2_4, _lh_inports_PS_3_4, _lh_inports_PS_4_4) -> 
      _lh_inports_PS_3_4
    | _ -> 
      (failwith "error"));;
let rec updateOutports_lh__d3 _lh_updateOutports_arg1_2 _lh_updateOutports_arg2_2 =
  (`PS((pid_lh__d4 _lh_updateOutports_arg1_2), (compType_lh__d5 _lh_updateOutports_arg1_2), (pathDepth_lh__d5 _lh_updateOutports_arg1_2), (inports_lh__d5 _lh_updateOutports_arg1_2), _lh_updateOutports_arg2_2));;
let rec update_outports_lh__d2 _lh_update_outports_arg1_1 _lh_update_outports_arg2_1 =
  ((updateOutports_lh__d3 _lh_update_outports_arg1_1) (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (match _lh_listcomp_fun_ls_h_5 with
          | `LH_P6(_lh_update_outports_LH_P6_0_1, _lh_update_outports_LH_P6_1_1, _lh_update_outports_LH_P6_2_1, _lh_update_outports_LH_P6_3_1, _lh_update_outports_LH_P6_4_1, _lh_update_outports_LH_P6_5_1) -> 
            (`LH_C((`LH_P6(_lh_update_outports_LH_P6_0_1, _lh_update_outports_arg2_1, _lh_update_outports_LH_P6_2_1, _lh_update_outports_LH_P6_3_1, _lh_update_outports_LH_P6_4_1, _lh_update_outports_LH_P6_5_1)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_5)))
          | _ -> 
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_7 (outports_lh__d4 _lh_update_outports_arg1_1))));;
let rec copy_lh__d2 _lh_copy_arg1_2 _lh_copy_arg2_2 _lh_popOutId_0_1_1 _lh_popOutId_1_7 _lh_popOutId_2_2 _lh_popOutId_3_0 _lh_popOutId_4_0 _lh_popOutId_5_0 _lh_popOutId_6_0 =
  (if (_lh_copy_arg1_2 > 0) then
    (let rec ty_5 = ((copy_lh__d2 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
      (let rec hy_5 = _lh_copy_arg2_2 in
        (let rec _lh_listcomp_fun_ls_t_7 = ((zip_lh__d1 _lh_popOutId_1_7) ty_5) in
          (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_store_inputs_LH_P2_1_0 = hy_5 in
            (let rec _lh_store_inputs_LH_P2_0_0 = _lh_popOutId_0_1_1 in
              (fun _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_1_0 _lh_store_inputs_PS_0_1 _lh_store_inputs_PS_2_1 _lh_store_inputs_PS_3_1 _lh_store_inputs_PS_4_1 -> 
                (match _lh_store_inputs_LH_P2_0_0 with
                  | `LH_P2(_lh_store_inputs_LH_P2_0_1, _lh_store_inputs_LH_P2_1_1) -> 
                    (if (_lh_store_inputs_PS_0_1 = _lh_store_inputs_LH_P2_1_1) then
                      (`LH_C(((update_outports_lh__d2 (`PS(_lh_store_inputs_PS_0_1, (`Inp), _lh_store_inputs_PS_2_1, _lh_store_inputs_PS_3_1, _lh_store_inputs_PS_4_1))) _lh_store_inputs_LH_P2_1_0), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_8)))
                    else
                      (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_8))
                  | _ -> 
                    (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_8))))) in
            ((((((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_7) _lh_popOutId_2_2) _lh_popOutId_3_0) _lh_popOutId_4_0) _lh_popOutId_5_0) _lh_popOutId_6_0)))))
  else
    (`LH_N));;
let rec head_lh__d2 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      h_5
    | `LH_N -> 
      (failwith "error"));;
let rec pid_lh__d1 _lh_pid_arg1_3 =
  (match _lh_pid_arg1_3 with
    | `PS(_lh_pid_PS_0_3, _lh_pid_PS_1_3, _lh_pid_PS_2_3, _lh_pid_PS_3_3, _lh_pid_PS_4_3) -> 
      _lh_pid_PS_0_3
    | _ -> 
      (failwith "error"));;
let rec map_lh__d3 f_3_8 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_3_9, t_3_9) -> 
      (`LH_C((f_3_8 h_3_9), ((map_lh__d3 f_3_8) t_3_9)))
    | `LH_N -> 
      (`LH_N));;
let rec inports_lh__d1 _lh_inports_arg1_2 =
  (match _lh_inports_arg1_2 with
    | `PS(_lh_inports_PS_0_2, _lh_inports_PS_1_2, _lh_inports_PS_2_2, _lh_inports_PS_3_2, _lh_inports_PS_4_2) -> 
      _lh_inports_PS_3_2
    | _ -> 
      (failwith "error"));;
let rec head_lh__d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_2, t_4_2) -> 
      h_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec collect_outputs_lh__d1 _lh_collect_outputs_arg1_0 =
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
            (third_0 (head_lh__d2 (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_9 -> 
              (match _lh_listcomp_fun_para_9 with
                | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_3) -> 
                  (if (_lh_get_output_LH_P2_1_0 = (pid_lh__d1 _lh_listcomp_fun_ls_h_1_2)) then
                    (`LH_C((head_lh__d1 (inports_lh__d1 _lh_listcomp_fun_ls_h_1_2)), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_3)))
                  else
                    (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_3))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1_9 _lh_get_output_arg1_0))))
          | _ -> 
            (failwith "error")))
      in ((map_lh__d3 (get_output_0 _lh_collect_outputs_LH_P4_3_0)) _lh_collect_outputs_LH_P4_2_0)
    | _ -> 
      (failwith "error"));;
let rec simulate_lh__d1 _lh_simulate_arg1_0 _lh_simulate_arg2_0 =
  (_lh_simulate_arg2_0 _lh_simulate_arg1_0);;
let rec map_lh__d2 f_2_6 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_3_1, t_3_1) -> 
      (`LH_C((f_2_6 h_3_1), ((map_lh__d2 f_2_6) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec circuit_simulate_lh__d1 _lh_circuit_simulate_arg1_0 _lh_circuit_simulate_arg2_0 =
  ((map_lh__d2 collect_outputs_lh__d1) ((simulate_lh__d1 _lh_circuit_simulate_arg1_0) _lh_circuit_simulate_arg2_0));;
let rec until_lh__d1 _lh_until_arg1_2 _lh_until_arg2_2 _lh_until_arg3_2 =
  (if (_lh_until_arg1_2 _lh_until_arg3_2) then
    _lh_until_arg3_2
  else
    (((until_lh__d1 _lh_until_arg1_2) _lh_until_arg2_2) (_lh_until_arg2_2 _lh_until_arg3_2)));;
let rec nearest_power_of_two_lh__d1 _lh_nearest_power_of_two_arg1_0 =
  (((until_lh__d1 (fun a_0 -> 
    (a_0 >= _lh_nearest_power_of_two_arg1_0))) (fun a_1 -> 
    (a_1 * 2))) 1);;
let rec mappend_lh__d1 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec maximum_lh__d1 _lh_maximum_arg1_0 =
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
let rec enumFromTo_lh__d2 a_3 b_1 _lh_popOutId_0_7 _lh_popOutId_1_4 _lh_popOutId_2_0 =
  (if (a_3 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo_lh__d2 (a_3 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_3 in
        (let rec ty_0 = (_lh_popOutId_0_7 _lh_listcomp_fun_ls_t_2) in
          (let rec hy_0 = ((7 * _lh_listcomp_fun_ls_h_2) + 7) in
            ((((Lazy.force _lh_popOutId_2_0) _lh_popOutId_1_4) hy_0) ty_0)))))
  else
    (`LH_N));;
let rec mappend_lh__d2 xs_5 ys_3 =
  (xs_5 ys_3);;
let rec compType_lh__d4 _lh_compType_arg1_3 =
  (match _lh_compType_arg1_3 with
    | `PS(_lh_compType_PS_0_3, _lh_compType_PS_1_3, _lh_compType_PS_2_3, _lh_compType_PS_3_3, _lh_compType_PS_4_3) -> 
      _lh_compType_PS_1_3
    | _ -> 
      (failwith "error"));;
let rec inports_lh__d4 _lh_inports_arg1_0 =
  (match _lh_inports_arg1_0 with
    | `PS(_lh_inports_PS_0_0, _lh_inports_PS_1_0, _lh_inports_PS_2_0, _lh_inports_PS_3_0, _lh_inports_PS_4_0) -> 
      _lh_inports_PS_3_0
    | _ -> 
      (failwith "error"));;
let rec pathDepth_lh__d4 _lh_pathDepth_arg1_1 =
  (match _lh_pathDepth_arg1_1 with
    | `PS(_lh_pathDepth_PS_0_1, _lh_pathDepth_PS_1_1, _lh_pathDepth_PS_2_1, _lh_pathDepth_PS_3_1, _lh_pathDepth_PS_4_1) -> 
      _lh_pathDepth_PS_2_1
    | _ -> 
      (failwith "error"));;
let rec pid_lh__d3 _lh_pid_arg1_2 =
  (match _lh_pid_arg1_2 with
    | `PS(_lh_pid_PS_0_2, _lh_pid_PS_1_2, _lh_pid_PS_2_2, _lh_pid_PS_3_2, _lh_pid_PS_4_2) -> 
      _lh_pid_PS_0_2
    | _ -> 
      (failwith "error"));;
let rec updateOutports_lh__d2 _lh_updateOutports_arg1_4 _lh_updateOutports_arg2_4 =
  (`PS((pid_lh__d3 _lh_updateOutports_arg1_4), (compType_lh__d4 _lh_updateOutports_arg1_4), (pathDepth_lh__d4 _lh_updateOutports_arg1_4), (inports_lh__d4 _lh_updateOutports_arg1_4), _lh_updateOutports_arg2_4));;
let rec outports_lh__d3 _lh_outports_arg1_4 =
  (match _lh_outports_arg1_4 with
    | `PS(_lh_outports_PS_0_4, _lh_outports_PS_1_4, _lh_outports_PS_2_4, _lh_outports_PS_3_4, _lh_outports_PS_4_4) -> 
      _lh_outports_PS_4_4
    | _ -> 
      (failwith "error"));;
let rec update_outports_lh__d1 _lh_update_outports_arg1_0 _lh_update_outports_arg2_0 =
  ((updateOutports_lh__d2 _lh_update_outports_arg1_0) (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (match _lh_listcomp_fun_ls_h_4 with
          | `LH_P6(_lh_update_outports_LH_P6_0_0, _lh_update_outports_LH_P6_1_0, _lh_update_outports_LH_P6_2_0, _lh_update_outports_LH_P6_3_0, _lh_update_outports_LH_P6_4_0, _lh_update_outports_LH_P6_5_0) -> 
            (`LH_C((`LH_P6(_lh_update_outports_LH_P6_0_0, _lh_update_outports_arg2_0, _lh_update_outports_LH_P6_2_0, _lh_update_outports_LH_P6_3_0, _lh_update_outports_LH_P6_4_0, _lh_update_outports_LH_P6_5_0)), (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_4)))
          | _ -> 
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 (outports_lh__d3 _lh_update_outports_arg1_0))));;
let rec compType_lh__d1 _lh_compType_arg1_2 =
  (match _lh_compType_arg1_2 with
    | `PS(_lh_compType_PS_0_2, _lh_compType_PS_1_2, _lh_compType_PS_2_2, _lh_compType_PS_3_2, _lh_compType_PS_4_2) -> 
      _lh_compType_PS_1_2
    | _ -> 
      (failwith "error"));;
let rec init_dffs_lh__d1 _lh_init_dffs_arg1_0 =
  (if ((compType_lh__d1 _lh_init_dffs_arg1_0) = (`Dff)) then
    ((update_outports_lh__d1 _lh_init_dffs_arg1_0) (`F))
  else
    _lh_init_dffs_arg1_0);;
let rec zipWith_lz_nl_lh__d2 f_3_3 xs_1_2 ys_2_5 =
  ((ys_2_5 f_3_3) xs_1_2);;
let rec enumFrom_lh__d2 a_4 =
  (lazy (let rec tx_2 = (enumFrom_lh__d2 (a_4 + 1)) in
    (let rec hx_2 = a_4 in
      (fun f_2_3 hy_2 ty_2 -> 
        (`LH_C(((f_2_3 hx_2) hy_2), (((zipWith_lz_nl_lh__d2 f_2_3) tx_2) ty_2)))))));;
let rec map_lh__d6 f_2_4 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C((f_2_4 h_2_9), ((map_lh__d6 f_2_4) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d1 f_2_7 ls_1_5 =
  (ls_1_5 f_2_7);;
let rec mappend_lh__d4 xs_1_0 ys_2_2 =
  (xs_1_0 ys_2_2);;
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec enumFromTo_lh__d1 a_5 b_2 _lh_popOutId_0_9 _lh_popOutId_1_6 _lh_popOutId_2_1 =
  (if (a_5 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_6 = ((enumFromTo_lh__d1 (a_5 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_6 = a_5 in
        (let rec t_3_3 = (_lh_popOutId_0_9 _lh_listcomp_fun_ls_t_6) in
          (let rec h_3_3 = ((7 * _lh_listcomp_fun_ls_h_6) + 1) in
            (let rec t_3_4 = ((map_lh__d1 _lh_popOutId_1_6) t_3_3) in
              (let rec h_3_4 = (_lh_popOutId_1_6 h_3_3) in
                ((mappend_lh__d4 h_3_4) (concat_lh__d1 t_3_4))))))))
  else
    (fun ys_2_3 -> 
      ys_2_3));;
let rec enumFromTo_lh__d3 a_7 b_3 _lh_popOutId_0_1_2 _lh_popOutId_1_8 _lh_popOutId_2_3 =
  (if (a_7 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo_lh__d3 (a_7 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_8 = a_7 in
        (let rec ty_6 = (_lh_popOutId_0_1_2 _lh_listcomp_fun_ls_t_9) in
          (let rec hy_6 = ((7 * _lh_listcomp_fun_ls_h_8) + 1) in
            ((((Lazy.force _lh_popOutId_2_3) _lh_popOutId_1_8) hy_6) ty_6)))))
  else
    (`LH_N));;
let rec copy_lh__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy_lh__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec map_lh__d4 f_3_9 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_4_1, t_4_1) -> 
      (`LH_C((f_3_9 h_4_1), ((map_lh__d4 f_3_9) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d3 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec outports_lh__d2 _lh_outports_arg1_1 =
  (match _lh_outports_arg1_1 with
    | `PS(_lh_outports_PS_0_1, _lh_outports_PS_1_1, _lh_outports_PS_2_1, _lh_outports_PS_3_1, _lh_outports_PS_4_1) -> 
      _lh_outports_PS_4_1
    | _ -> 
      (failwith "error"));;
let rec zipWith_lh__d2 f_2_1 xs_7 ys_5 =
  (match xs_7 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_5 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_2_1 hx_1) hy_1), (((zipWith_lh__d2 f_2_1) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec inports_lh__d2 _lh_inports_arg1_1 =
  (match _lh_inports_arg1_1 with
    | `PS(_lh_inports_PS_0_1, _lh_inports_PS_1_1, _lh_inports_PS_2_1, _lh_inports_PS_3_1, _lh_inports_PS_4_1) -> 
      _lh_inports_PS_3_1
    | _ -> 
      (failwith "error"));;
let rec pathDepth_lh__d2 _lh_pathDepth_arg1_0 =
  (match _lh_pathDepth_arg1_0 with
    | `PS(_lh_pathDepth_PS_0_0, _lh_pathDepth_PS_1_0, _lh_pathDepth_PS_2_0, _lh_pathDepth_PS_3_0, _lh_pathDepth_PS_4_0) -> 
      _lh_pathDepth_PS_2_0
    | _ -> 
      (failwith "error"));;
let rec compType_lh__d2 _lh_compType_arg1_1 =
  (match _lh_compType_arg1_1 with
    | `PS(_lh_compType_PS_0_1, _lh_compType_PS_1_1, _lh_compType_PS_2_1, _lh_compType_PS_3_1, _lh_compType_PS_4_1) -> 
      _lh_compType_PS_1_1
    | _ -> 
      (failwith "error"));;
let rec pid_lh__d2 _lh_pid_arg1_1 =
  (match _lh_pid_arg1_1 with
    | `PS(_lh_pid_PS_0_1, _lh_pid_PS_1_1, _lh_pid_PS_2_1, _lh_pid_PS_3_1, _lh_pid_PS_4_1) -> 
      _lh_pid_PS_0_1
    | _ -> 
      (failwith "error"));;
let rec updateOutports_lh__d1 _lh_updateOutports_arg1_1 _lh_updateOutports_arg2_1 =
  (`PS((pid_lh__d2 _lh_updateOutports_arg1_1), (compType_lh__d2 _lh_updateOutports_arg1_1), (pathDepth_lh__d2 _lh_updateOutports_arg1_1), (inports_lh__d2 _lh_updateOutports_arg1_1), _lh_updateOutports_arg2_1));;
let rec zipWith_lh__d1 f_3_2 xs_1_1 ys_2_4 =
  (match xs_1_1 with
    | `LH_C(hx_4, tx_4) -> 
      (match ys_2_4 with
        | `LH_C(hy_4, ty_4) -> 
          (`LH_C(((f_3_2 hx_4) hy_4), (((zipWith_lh__d1 f_3_2) tx_4) ty_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec outports_lh__d1 _lh_outports_arg1_8 =
  (match _lh_outports_arg1_8 with
    | `PS(_lh_outports_PS_0_8, _lh_outports_PS_1_8, _lh_outports_PS_2_8, _lh_outports_PS_3_8, _lh_outports_PS_4_8) -> 
      _lh_outports_PS_4_8
    | _ -> 
      (failwith "error"));;
let rec restore_requests_lh__d1 _lh_restore_requests_arg1_0 _lh_restore_requests_arg2_0 =
  let rec restore_0 = (fun _lh_restore_arg1_0 _lh_restore_arg2_0 -> 
    ((updateOutports_lh__d1 _lh_restore_arg2_0) (((zipWith_lh__d2 restore_outport_0) (outports_lh__d2 _lh_restore_arg1_0)) (outports_lh__d1 _lh_restore_arg2_0))))
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
  in (((zipWith_lh__d1 restore_0) _lh_restore_requests_arg1_0) _lh_restore_requests_arg2_0);;
let rec map_lh__d7 f_7 ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_7 h_4), ((map_lh__d7 f_7) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec compType_lh__d3 _lh_compType_arg1_4 =
  (match _lh_compType_arg1_4 with
    | `PS(_lh_compType_PS_0_4, _lh_compType_PS_1_4, _lh_compType_PS_2_4, _lh_compType_PS_3_4, _lh_compType_PS_4_4) -> 
      _lh_compType_PS_1_4
    | _ -> 
      (failwith "error"));;
let rec xor_lh__d1 _lh_xor_arg1_0 _lh_xor_arg2_0 =
  (if (_lh_xor_arg1_0 = _lh_xor_arg2_0) then
    (`T)
  else
    (`F));;
let rec inv_lh__d1 _lh_inv_arg1_0 =
  (if (_lh_inv_arg1_0 = (`T)) then
    (`F)
  else
    (`T));;
let rec or2_lh__d1 _lh_or2_arg1_0 _lh_or2_arg2_0 =
  (if ((_lh_or2_arg1_0 = (`T)) || (_lh_or2_arg2_0 = (`T))) then
    (`T)
  else
    (`F));;
let rec and2_lh__d1 _lh_and2_arg1_0 _lh_and2_arg2_0 =
  (if ((_lh_and2_arg1_0 = (`T)) && (_lh_and2_arg2_0 = (`T))) then
    (`T)
  else
    (`F));;
let rec apply_component_lh__d1 _lh_apply_component_arg1_0 _lh_apply_component_arg2_0 =
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
              (`Just((inv_lh__d1 _lh_apply_component_LH_C_0_2)))
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
                  (`Just(((and2_lh__d1 _lh_apply_component_LH_C_0_3) _lh_apply_component_LH_C_0_4)))
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
                  (`Just(((or2_lh__d1 _lh_apply_component_LH_C_0_5) _lh_apply_component_LH_C_0_6)))
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
                  (`Just(((xor_lh__d1 _lh_apply_component_LH_C_0_7) _lh_apply_component_LH_C_0_8)))
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
let rec pathDepth_lh__d3 _lh_pathDepth_arg1_5 =
  (match _lh_pathDepth_arg1_5 with
    | `PS(_lh_pathDepth_PS_0_5, _lh_pathDepth_PS_1_5, _lh_pathDepth_PS_2_5, _lh_pathDepth_PS_3_5, _lh_pathDepth_PS_4_5) -> 
      _lh_pathDepth_PS_2_5
    | _ -> 
      (failwith "error"));;
let rec outports_lh__d7 _lh_outports_arg1_0 =
  (match _lh_outports_arg1_0 with
    | `PS(_lh_outports_PS_0_0, _lh_outports_PS_1_0, _lh_outports_PS_2_0, _lh_outports_PS_3_0, _lh_outports_PS_4_0) -> 
      _lh_outports_PS_4_0
    | _ -> 
      (failwith "error"));;
let rec pid_lh__d5 _lh_pid_arg1_4 =
  (match _lh_pid_arg1_4 with
    | `PS(_lh_pid_PS_0_4, _lh_pid_PS_1_4, _lh_pid_PS_2_4, _lh_pid_PS_3_4, _lh_pid_PS_4_4) -> 
      _lh_pid_PS_0_4
    | _ -> 
      (failwith "error"));;
let rec pathDepth_lh__d7 _lh_pathDepth_arg1_3 =
  (match _lh_pathDepth_arg1_3 with
    | `PS(_lh_pathDepth_PS_0_3, _lh_pathDepth_PS_1_3, _lh_pathDepth_PS_2_3, _lh_pathDepth_PS_3_3, _lh_pathDepth_PS_4_3) -> 
      _lh_pathDepth_PS_2_3
    | _ -> 
      (failwith "error"));;
let rec inports_lh__d6 _lh_inports_arg1_3 =
  (match _lh_inports_arg1_3 with
    | `PS(_lh_inports_PS_0_3, _lh_inports_PS_1_3, _lh_inports_PS_2_3, _lh_inports_PS_3_3, _lh_inports_PS_4_3) -> 
      _lh_inports_PS_3_3
    | _ -> 
      (failwith "error"));;
let rec updateOutports_lh__d4 _lh_updateOutports_arg1_3 _lh_updateOutports_arg2_3 =
  (`PS((pid_lh__d5 _lh_updateOutports_arg1_3), (compType_lh__d5 _lh_updateOutports_arg1_3), (pathDepth_lh__d7 _lh_updateOutports_arg1_3), (inports_lh__d6 _lh_updateOutports_arg1_3), _lh_updateOutports_arg2_3));;
let rec update_outports_lh__d3 _lh_update_outports_arg1_2 _lh_update_outports_arg2_2 =
  ((updateOutports_lh__d4 _lh_update_outports_arg1_2) (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_1_1 with
          | `LH_P6(_lh_update_outports_LH_P6_0_2, _lh_update_outports_LH_P6_1_2, _lh_update_outports_LH_P6_2_2, _lh_update_outports_LH_P6_3_2, _lh_update_outports_LH_P6_4_2, _lh_update_outports_LH_P6_5_2) -> 
            (`LH_C((`LH_P6(_lh_update_outports_LH_P6_0_2, _lh_update_outports_arg2_2, _lh_update_outports_LH_P6_2_2, _lh_update_outports_LH_P6_3_2, _lh_update_outports_LH_P6_4_2, _lh_update_outports_LH_P6_5_2)), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_2)))
          | _ -> 
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_7 (outports_lh__d7 _lh_update_outports_arg1_2))));;
let rec inports_lh__d3 _lh_inports_arg1_5 =
  (match _lh_inports_arg1_5 with
    | `PS(_lh_inports_PS_0_5, _lh_inports_PS_1_5, _lh_inports_PS_2_5, _lh_inports_PS_3_5, _lh_inports_PS_4_5) -> 
      _lh_inports_PS_3_5
    | _ -> 
      (failwith "error"));;
let rec simulate_component_lh__d1 _lh_simulate_component_arg1_0 _lh_simulate_component_arg2_0 =
  (let rec out_signals_0 = (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (match _lh_listcomp_fun_ls_h_3 with
          | `LH_P3(_lh_simulate_component_LH_P3_0_0, _lh_simulate_component_LH_P3_1_0, _lh_simulate_component_LH_P3_2_0) -> 
            (`LH_C(_lh_simulate_component_LH_P3_2_0, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3)))
          | _ -> 
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 (inports_lh__d3 _lh_simulate_component_arg2_0))) in
    (let rec new_value_0 = ((apply_component_lh__d1 (compType_lh__d3 _lh_simulate_component_arg2_0)) out_signals_0) in
      (if ((_lh_simulate_component_arg1_0 = (pathDepth_lh__d3 _lh_simulate_component_arg2_0)) && (not (new_value_0 = (`Nothing)))) then
        (let rec _lh_matchIdent_5 = new_value_0 in
          (match _lh_matchIdent_5 with
            | `Just(_lh_simulate_component_Just_0_0) -> 
              ((update_outports_lh__d3 _lh_simulate_component_arg2_0) _lh_simulate_component_Just_0_0)
            | _ -> 
              (failwith "error")))
      else
        _lh_simulate_component_arg2_0)));;
let rec simulate_components_lh__d1 _lh_simulate_components_arg1_0 _lh_simulate_components_arg2_0 =
  ((map_lh__d7 (simulate_component_lh__d1 _lh_simulate_components_arg1_0)) _lh_simulate_components_arg2_0);;
let rec foldl_lh__d1 f_6 i_0 ls_2 =
  ((ls_2 f_6) i_0);;
let rec enumFromTo_lh__d4 a_2 b_0 _lh_popOutId_0_4 _lh_popOutId_1_1 =
  (if (a_2 <= b_0) then
    (let rec t_7 = ((enumFromTo_lh__d4 (a_2 + 1)) b_0) in
      (let rec h_7 = a_2 in
        (((foldl_lh__d1 _lh_popOutId_0_4) ((_lh_popOutId_0_4 _lh_popOutId_1_1) h_7)) t_7)))
  else
    _lh_popOutId_1_1);;
let rec until_lh__d3 _lh_until_arg1_0 _lh_until_arg2_0 _lh_until_arg3_0 =
  (if (_lh_until_arg1_0 _lh_until_arg3_0) then
    _lh_until_arg3_0
  else
    (((until_lh__d3 _lh_until_arg1_0) _lh_until_arg2_0) (_lh_until_arg2_0 _lh_until_arg3_0)));;
let rec map_lh__d1_d7 f_4_1 ls_2_4 =
  (ls_2_4 f_4_1);;
let rec or_lh__d4 _lh_or_arg1_2 =
  (_lh_or_arg1_2 99);;
let rec map_lh__d1_d9 f_1_2 ls_7 _lh_popOutId_0_5 _lh_popOutId_1_2 =
  (match ls_7 with
    | `LH_C(h_9, t_9) -> 
      (let rec t_1_0 = ((map_lh__d1_d9 f_1_2) t_9) in
        (let rec h_1_0 = (f_1_2 h_9) in
          (let rec _lh_or_LH_C_1_1 = ((map_lh__d1_d7 _lh_popOutId_0_5) t_1_0) in
            (let rec _lh_or_LH_C_0_1 = (_lh_popOutId_0_5 h_1_0) in
              (if _lh_or_LH_C_0_1 then
                true
              else
                (or_lh__d4 _lh_or_LH_C_1_1))))))
    | `LH_N -> 
      false);;
let rec or_lh__d3 _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec outports_lh__d6 _lh_outports_arg1_5 =
  (match _lh_outports_arg1_5 with
    | `PS(_lh_outports_PS_0_5, _lh_outports_PS_1_5, _lh_outports_PS_2_5, _lh_outports_PS_3_5, _lh_outports_PS_4_5) -> 
      _lh_outports_PS_4_5
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d8 f_3_0 ls_1_6 _lh_popOutId_0_1_0 =
  (match ls_1_6 with
    | `LH_C(h_3_5, t_3_5) -> 
      (let rec _lh_or_LH_C_1_3 = ((map_lh__d1_d8 f_3_0) t_3_5) in
        (let rec _lh_or_LH_C_0_3 = (f_3_0 h_3_5) in
          (if _lh_or_LH_C_0_3 then
            true
          else
            (or_lh__d3 _lh_or_LH_C_1_3))))
    | `LH_N -> 
      false);;
let rec outports_lh__d9 _lh_outports_arg1_3 =
  (match _lh_outports_arg1_3 with
    | `PS(_lh_outports_PS_0_3, _lh_outports_PS_1_3, _lh_outports_PS_2_3, _lh_outports_PS_3_3, _lh_outports_PS_4_3) -> 
      _lh_outports_PS_4_3
    | _ -> 
      (failwith "error"));;
let rec updateOutports_lh__d5 _lh_updateOutports_arg1_0 _lh_updateOutports_arg2_0 =
  (`PS((pid_lh__d5 _lh_updateOutports_arg1_0), (compType_lh__d5 _lh_updateOutports_arg1_0), (pathDepth_lh__d7 _lh_updateOutports_arg1_0), (inports_lh__d6 _lh_updateOutports_arg1_0), _lh_updateOutports_arg2_0));;
let rec update_requests_lh__d1 _lh_update_requests_arg1_0 _lh_update_requests_arg2_0 =
  ((updateOutports_lh__d5 _lh_update_requests_arg2_0) (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_0 -> 
    (match _lh_listcomp_fun_para_1_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_4) -> 
        (match _lh_listcomp_fun_ls_h_1_3 with
          | `LH_P6(_lh_update_requests_LH_P6_0_0, _lh_update_requests_LH_P6_1_0, _lh_update_requests_LH_P6_2_0, _lh_update_requests_LH_P6_3_0, _lh_update_requests_LH_P6_4_0, _lh_update_requests_LH_P6_5_0) -> 
            (`LH_C((`LH_P6(_lh_update_requests_LH_P6_0_0, _lh_update_requests_LH_P6_1_0, _lh_update_requests_arg1_0, _lh_update_requests_LH_P6_3_0, _lh_update_requests_arg1_0, _lh_update_requests_LH_P6_5_0)), (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_4)))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_0 (outports_lh__d9 _lh_update_requests_arg2_0))));;
let rec check_depth_lh__d4 _lh_check_depth_arg1_2 _lh_check_depth_arg2_2 =
  (if ((pathDepth_lh__d7 _lh_check_depth_arg2_2) = _lh_check_depth_arg1_2) then
    _lh_check_depth_arg2_2
  else
    ((update_requests_lh__d1 false) _lh_check_depth_arg2_2));;
let rec acknowledge_lh__d2 _lh_acknowledge_arg1_1 _lh_acknowledge_arg2_1 =
  let rec check_requests_1 = (fun _lh_check_requests_arg1_1 -> 
    (or_lh__d3 ((map_lh__d1_d8 check_lr_requests_1) _lh_check_requests_arg1_1)))
  and check_lr_requests_1 = (fun _lh_check_lr_requests_arg1_1 -> 
    (match _lh_check_lr_requests_arg1_1 with
      | `LH_P6(_lh_check_lr_requests_LH_P6_0_1, _lh_check_lr_requests_LH_P6_1_1, _lh_check_lr_requests_LH_P6_2_1, _lh_check_lr_requests_LH_P6_3_1, _lh_check_lr_requests_LH_P6_4_1, _lh_check_lr_requests_LH_P6_5_1) -> 
        (_lh_check_lr_requests_LH_P6_2_1 || _lh_check_lr_requests_LH_P6_4_1)
      | _ -> 
        (failwith "error")))
  in (let rec states1_3 = ((map_lh__d1_d9 (check_depth_lh__d4 _lh_acknowledge_arg1_1)) _lh_acknowledge_arg2_1) in
    (not (or_lh__d4 ((map_lh__d1_d7 (fun _lh_funcomp_x_3 -> 
      (check_requests_1 (outports_lh__d6 _lh_funcomp_x_3)))) states1_3))));;
let rec foldr_lh__d1 f_2_0 i_3 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_3, t_1_3) -> 
      ((f_2_0 h_1_3) (((foldr_lh__d1 f_2_0) i_3) t_1_3))
    | `LH_N -> 
      i_3);;
let rec unzip_lh__d1 _lh_unzip_arg1_0 =
  (((foldr_lh__d1 (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_3 = ab_0 in
      (match _lh_matchIdent_3 with
        | `LH_P2(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_4 = asbs_0 in
            (match _lh_matchIdent_4 with
              | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
let rec combine_lh__d1 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (`LH_C((`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)), (transpose_lh__d1 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0)))))
and
transpose_lh__d1 _lh_transpose_arg1_2 =
  (match _lh_transpose_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_6, _lh_transpose_LH_C_1_6) -> 
      (match _lh_transpose_LH_C_0_6 with
        | `LH_N -> 
          (transpose_lh__d1 _lh_transpose_LH_C_1_6)
        | `LH_C(_lh_transpose_LH_C_0_7, _lh_transpose_LH_C_1_7) -> 
          (let rec _lh_matchIdent_1_4 = (unzip_lh__d1 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_6 -> 
            (match _lh_listcomp_fun_para_6 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_1) -> 
                (match _lh_listcomp_fun_ls_h_1_0 with
                  | `LH_C(_lh_transpose_LH_C_0_8, _lh_transpose_LH_C_1_8) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_8, _lh_transpose_LH_C_1_8)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_1)))
                  | _ -> 
                    (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_1))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1_6 _lh_transpose_LH_C_1_6))) in
            (match _lh_matchIdent_1_4 with
              | `LH_P2(_lh_transpose_LH_P2_0_2, _lh_transpose_LH_P2_1_2) -> 
                ((((combine_lh__d1 _lh_transpose_LH_C_0_7) _lh_transpose_LH_P2_0_2) _lh_transpose_LH_C_1_7) _lh_transpose_LH_P2_1_2)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec transpose_lh__d3 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose_lh__d3 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_0 = (unzip_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_0 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh__d1 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d6 f_4_4 ls_2_6 =
  (ls_2_6 f_4_4);;
let rec map_lh__d1_d5 f_3 ls_1 _lh_popOutId_0_2 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lh__d1_d5 f_3) t_2) in
        (let rec h_3 = (f_3 h_2) in
          (`LH_C((_lh_popOutId_0_2 h_3), ((map_lh__d1_d6 _lh_popOutId_0_2) t_3)))))
    | `LH_N -> 
      (`LH_N));;
let rec snd_lh__d2 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec transpose_lh__d4 _lh_transpose_arg1_1 =
  (match _lh_transpose_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_3, _lh_transpose_LH_C_1_3) -> 
      (match _lh_transpose_LH_C_0_3 with
        | `LH_N -> 
          (transpose_lh__d4 _lh_transpose_LH_C_1_3)
        | `LH_C(_lh_transpose_LH_C_0_4, _lh_transpose_LH_C_1_4) -> 
          (let rec _lh_matchIdent_2 = (unzip_lh__d1 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
            (match _lh_listcomp_fun_para_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                (match _lh_listcomp_fun_ls_h_1 with
                  | `LH_C(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_5, _lh_transpose_LH_C_1_5)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1)))
                  | _ -> 
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2 _lh_transpose_LH_C_1_3))) in
            (match _lh_matchIdent_2 with
              | `LH_P2(_lh_transpose_LH_P2_0_1, _lh_transpose_LH_P2_1_1) -> 
                ((((combine_lh__d1 _lh_transpose_LH_C_0_4) _lh_transpose_LH_P2_0_1) _lh_transpose_LH_C_1_4) _lh_transpose_LH_P2_1_1)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec updateInports_lh__d1 _lh_updateInports_arg1_0 _lh_updateInports_arg2_0 =
  (`PS((pid_lh__d5 _lh_updateInports_arg1_0), (compType_lh__d5 _lh_updateInports_arg1_0), (pathDepth_lh__d7 _lh_updateInports_arg1_0), _lh_updateInports_arg2_0, (outports_lh__d9 _lh_updateInports_arg1_0)));;
let rec compare_and_update_lh__d1 _lh_compare_and_update_arg1_0 _lh_compare_and_update_arg2_1 =
  (_lh_compare_and_update_arg1_0 _lh_compare_and_update_arg2_1);;
let rec map_lh__d2_d0 f_1_1 ls_6 =
  (match ls_6 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C((f_1_1 h_8), ((map_lh__d2_d0 f_1_1) t_8)))
    | `LH_N -> 
      (`LH_N));;
let rec up_i_lh__d1 _lh_up_i_arg1_0 _lh_up_i_arg2_0 =
  (match _lh_up_i_arg1_0 with
    | `LH_P8(_lh_up_i_LH_P8_0_0, _lh_up_i_LH_P8_1_0, _lh_up_i_LH_P8_2_0, _lh_up_i_LH_P8_3_0, _lh_up_i_LH_P8_4_0, _lh_up_i_LH_P8_5_0, _lh_up_i_LH_P8_6_0, _lh_up_i_LH_P8_7_0) -> 
      ((map_lh__d2_d0 (compare_and_update_lh__d1 (let rec _lh_compare_and_update_LH_P3_2_0 = _lh_up_i_LH_P8_2_0 in
        (let rec _lh_compare_and_update_LH_P3_1_0 = _lh_up_i_LH_P8_1_0 in
          (let rec _lh_compare_and_update_LH_P3_0_0 = _lh_up_i_LH_P8_0_0 in
            (fun _lh_compare_and_update_arg2_0 -> 
              (match _lh_compare_and_update_arg2_0 with
                | `LH_P3(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1, _lh_compare_and_update_LH_P3_2_1) -> 
                  (if ((`LH_P2(_lh_compare_and_update_LH_P3_0_0, _lh_compare_and_update_LH_P3_1_0)) = (`LH_P2(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1))) then
                    (`LH_P3(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1, _lh_compare_and_update_LH_P3_2_0))
                  else
                    (`LH_P3(_lh_compare_and_update_LH_P3_0_1, _lh_compare_and_update_LH_P3_1_1, _lh_compare_and_update_LH_P3_2_1)))
                | _ -> 
                  (failwith "error")))))))) _lh_up_i_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec update_i_lh__d1 _lh_update_i_arg1_0 _lh_update_i_arg2_0 =
  (match _lh_update_i_arg1_0 with
    | `LH_P2(_lh_update_i_LH_P2_0_0, _lh_update_i_LH_P2_1_0) -> 
      ((up_i_lh__d1 _lh_update_i_LH_P2_0_0) ((up_i_lh__d1 _lh_update_i_LH_P2_1_0) _lh_update_i_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec zipWith_lh__d5 f_4_6 xs_1_8 ys_2_8 =
  (match xs_1_8 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_2_8 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_4_6 hx_9) hy_9), (((zipWith_lh__d5 f_4_6) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec check_left_lh__d1 _lh_check_left_arg1_0 _lh_check_left_arg2_0 =
  (match _lh_check_left_arg1_0 with
    | `LH_P8(_lh_check_left_LH_P8_0_0, _lh_check_left_LH_P8_1_0, _lh_check_left_LH_P8_2_0, _lh_check_left_LH_P8_3_0, _lh_check_left_LH_P8_4_0, _lh_check_left_LH_P8_5_0, _lh_check_left_LH_P8_6_0, _lh_check_left_LH_P8_7_0) -> 
      ((_lh_check_left_arg2_0 _lh_check_left_LH_P8_5_0) _lh_check_left_LH_P8_6_0)
    | _ -> 
      (failwith "error"));;
let rec check_right_lh__d1 _lh_check_right_arg1_0 _lh_check_right_arg2_0 =
  (match _lh_check_right_arg1_0 with
    | `LH_P8(_lh_check_right_LH_P8_0_0, _lh_check_right_LH_P8_1_0, _lh_check_right_LH_P8_2_0, _lh_check_right_LH_P8_3_0, _lh_check_right_LH_P8_4_0, _lh_check_right_LH_P8_5_0, _lh_check_right_LH_P8_6_0, _lh_check_right_LH_P8_7_0) -> 
      (match _lh_check_right_arg2_0 with
        | `LH_P6(_lh_check_right_LH_P6_0_0, _lh_check_right_LH_P6_1_0, _lh_check_right_LH_P6_2_0, _lh_check_right_LH_P6_3_0, _lh_check_right_LH_P6_4_0, _lh_check_right_LH_P6_5_0) -> 
          (if (_lh_check_right_LH_P8_3_0 && (_lh_check_right_LH_P8_4_0 > 0)) then
            (let rec _lh_check_left_LH_P6_5_0 = _lh_check_right_LH_P6_5_0 in
              (let rec _lh_check_left_LH_P6_4_0 = _lh_check_right_LH_P6_4_0 in
                (let rec _lh_check_left_LH_P6_3_0 = _lh_check_right_LH_P6_3_0 in
                  (let rec _lh_check_left_LH_P6_2_0 = _lh_check_right_LH_P6_2_0 in
                    (let rec _lh_check_left_LH_P6_1_0 = _lh_check_right_LH_P6_1_0 in
                      (let rec _lh_check_left_LH_P6_0_0 = _lh_check_right_LH_P6_0_0 in
                        (fun _lh_check_left_LH_P8_5_1 _lh_check_left_LH_P8_6_1 -> 
                          (if (_lh_check_left_LH_P8_5_1 && (_lh_check_left_LH_P8_6_1 > 0)) then
                            (`LH_P6(_lh_check_left_LH_P6_0_0, _lh_check_left_LH_P6_1_0, _lh_check_left_LH_P6_2_0, _lh_check_left_LH_P6_3_0, _lh_check_left_LH_P6_4_0, _lh_check_left_LH_P6_5_0))
                          else
                            (`LH_P6(_lh_check_left_LH_P6_0_0, _lh_check_left_LH_P6_1_0, _lh_check_left_LH_P6_2_0, _lh_check_left_LH_P6_3_0, false, _lh_check_left_LH_P6_5_0))))))))))
          else
            (let rec _lh_check_left_LH_P6_5_1 = _lh_check_right_LH_P6_5_0 in
              (let rec _lh_check_left_LH_P6_4_1 = _lh_check_right_LH_P6_4_0 in
                (let rec _lh_check_left_LH_P6_3_1 = _lh_check_right_LH_P6_3_0 in
                  (let rec _lh_check_left_LH_P6_2_1 = false in
                    (let rec _lh_check_left_LH_P6_1_1 = _lh_check_right_LH_P6_1_0 in
                      (let rec _lh_check_left_LH_P6_0_1 = _lh_check_right_LH_P6_0_0 in
                        (fun _lh_check_left_LH_P8_5_2 _lh_check_left_LH_P8_6_2 -> 
                          (if (_lh_check_left_LH_P8_5_2 && (_lh_check_left_LH_P8_6_2 > 0)) then
                            (`LH_P6(_lh_check_left_LH_P6_0_1, _lh_check_left_LH_P6_1_1, _lh_check_left_LH_P6_2_1, _lh_check_left_LH_P6_3_1, _lh_check_left_LH_P6_4_1, _lh_check_left_LH_P6_5_1))
                          else
                            (`LH_P6(_lh_check_left_LH_P6_0_1, _lh_check_left_LH_P6_1_1, _lh_check_left_LH_P6_2_1, _lh_check_left_LH_P6_3_1, false, _lh_check_left_LH_P6_5_1)))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec update_o_lh__d1 _lh_update_o_arg1_0 _lh_update_o_arg2_0 =
  (match _lh_update_o_arg1_0 with
    | `LH_P2(_lh_update_o_LH_P2_0_0, _lh_update_o_LH_P2_1_0) -> 
      ((check_left_lh__d1 _lh_update_o_LH_P2_0_0) ((check_right_lh__d1 _lh_update_o_LH_P2_1_0) _lh_update_o_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec update_io_lh__d2 _lh_update_io_arg1_0 _lh_update_io_arg2_0 _lh_update_io_arg3_0 =
  (let rec update_is_0 = (fun state_0 -> 
    ((updateInports_lh__d1 state_0) (((foldr_lh__d1 update_i_lh__d1) (inports_lh__d6 state_0)) _lh_update_io_arg2_0))) in
    (let rec update_os_0 = (fun state_1 -> 
      (if ((pathDepth_lh__d7 state_1) = _lh_update_io_arg1_0) then
        ((updateOutports_lh__d5 state_1) (((zipWith_lh__d5 update_o_lh__d1) _lh_update_io_arg2_0) (outports_lh__d9 state_1)))
      else
        state_1)) in
      (update_os_0 (update_is_0 _lh_update_io_arg3_0))));;
let rec map_lh__d1_d4 f_3_5 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_3_8, t_3_8) -> 
      (`LH_C((f_3_5 h_3_8), ((map_lh__d1_d4 f_3_5) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec check_depth_lh__d3 _lh_check_depth_arg1_3 _lh_check_depth_arg2_3 =
  (if ((pathDepth_lh__d7 _lh_check_depth_arg2_3) = _lh_check_depth_arg1_3) then
    _lh_check_depth_arg2_3
  else
    ((update_requests_lh__d1 false) _lh_check_depth_arg2_3));;
let rec make_packet_lh__d2 _lh_make_packet_arg1_1 =
  (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_1_5 -> 
    (match _lh_listcomp_fun_para_1_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_6) -> 
        (match _lh_listcomp_fun_ls_h_1_5 with
          | `LH_P6(_lh_make_packet_LH_P6_0_1, _lh_make_packet_LH_P6_1_1, _lh_make_packet_LH_P6_2_1, _lh_make_packet_LH_P6_3_1, _lh_make_packet_LH_P6_4_1, _lh_make_packet_LH_P6_5_1) -> 
            (`LH_C((`LH_P8((pid_lh__d5 _lh_make_packet_arg1_1), _lh_make_packet_LH_P6_0_1, _lh_make_packet_LH_P6_1_1, _lh_make_packet_LH_P6_2_1, _lh_make_packet_LH_P6_3_1, _lh_make_packet_LH_P6_4_1, _lh_make_packet_LH_P6_5_1, 1)), (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_6)))
          | _ -> 
            (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_5 (outports_lh__d9 _lh_make_packet_arg1_1)));;
let rec zipWith_lh__d4 f_4_3 xs_1_6 ys_2_7 =
  (match xs_1_6 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_2_7 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_4_3 hx_8) hy_8), (((zipWith_lh__d4 f_4_3) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec emptyPacket_lh__d3 =
  (`LH_P8((0 - 1), (0 - 1), (`F), false, 0, false, 0, 1));;
let rec copy_lh__d4 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh__d4 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec take_lh__d1 n_0 ls_1_2 =
  (if (n_0 > 0) then
    (match ls_1_2 with
      | `LH_C(h_3_0, t_3_0) -> 
        (`LH_C(h_3_0, ((take_lh__d1 (n_0 - 1)) t_3_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec length_lh__d1 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_3_6, t_3_6) -> 
      (1 + (length_lh__d1 t_3_6))
    | `LH_N -> 
      0);;
let rec maximum_lh__d2 _lh_maximum_arg1_1 =
  (match _lh_maximum_arg1_1 with
    | `LH_C(_lh_maximum_LH_C_0_1, _lh_maximum_LH_C_1_1) -> 
      (let rec go_1 = (fun _lh_go_arg1_1 _lh_go_arg2_1 -> 
        (match _lh_go_arg2_1 with
          | `LH_N -> 
            _lh_go_arg1_1
          | `LH_C(_lh_go_LH_C_0_1, _lh_go_LH_C_1_1) -> 
            (if (_lh_go_arg1_1 > _lh_go_LH_C_0_1) then
              ((go_1 _lh_go_arg1_1) _lh_go_LH_C_1_1)
            else
              ((go_1 _lh_go_LH_C_0_1) _lh_go_LH_C_1_1))
          | _ -> 
            (failwith "error"))) in
        ((go_1 _lh_maximum_LH_C_0_1) _lh_maximum_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d5 xs_6 ys_4 =
  (match xs_6 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend_lh__d5 t_1_4) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec pad_packets_lh__d2 _lh_pad_packets_arg1_1 =
  (let rec pad_1 = (fun xs_1_7 -> 
    (let rec max_ps_1 = (maximum_lh__d2 ((map_lh__d2_d0 length_lh__d1) _lh_pad_packets_arg1_1)) in
      ((take_lh__d1 max_ps_1) ((mappend_lh__d5 xs_1_7) ((copy_lh__d4 max_ps_1) emptyPacket_lh__d3))))) in
    ((map_lh__d2_d0 pad_1) _lh_pad_packets_arg1_1));;
let rec send_left_lh__d1 _lh_send_left_arg1_0 _lh_send_left_arg2_0 =
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
let rec downsweep_lh__d1 _lh_downsweep_arg1_0 _lh_downsweep_arg2_0 _lh_downsweep_arg3_0 =
  ((_lh_downsweep_arg3_0 _lh_downsweep_arg2_0) _lh_downsweep_arg1_0);;
let rec upsweep_lh__d1 _lh_upsweep_arg1_3 _lh_upsweep_arg2_0 =
  (_lh_upsweep_arg2_0 _lh_upsweep_arg1_3);;
let rec get_lh__d1 _lh_get_arg1_0 =
  (match _lh_get_arg1_0 with
    | `Cell(_lh_get_Cell_0_0) -> 
      (`LH_C(_lh_get_Cell_0_0, (`LH_N)))
    | `Node(_lh_get_Node_0_0, _lh_get_Node_1_0, _lh_get_Node_2_0) -> 
      ((mappend_lh__d5 (get_lh__d1 _lh_get_Node_1_0)) (get_lh__d1 _lh_get_Node_2_0))
    | _ -> 
      (failwith "error"));;
let rec sweep_ud_lh__d1 _lh_sweep_ud_arg1_0 _lh_sweep_ud_arg2_0 _lh_sweep_ud_arg3_0 _lh_sweep_ud_arg4_0 =
  (let rec _lh_matchIdent_1 = ((upsweep_lh__d1 _lh_sweep_ud_arg1_0) _lh_sweep_ud_arg4_0) in
    (match _lh_matchIdent_1 with
      | `LH_P2(_lh_sweep_ud_LH_P2_0_0, _lh_sweep_ud_LH_P2_1_0) -> 
        (let rec _lh_scanlr_LH_P2_1_0 = (((downsweep_lh__d1 _lh_sweep_ud_arg2_0) _lh_sweep_ud_arg3_0) _lh_sweep_ud_LH_P2_1_0) in
          (let rec _lh_scanlr_LH_P2_0_0 = _lh_sweep_ud_LH_P2_0_0 in
            (fun _lh_scanlr_arg1_0 _lh_scanlr_arg2_0 _lh_scanlr_arg3_0 _lh_scanlr_arg4_0 -> 
              (match _lh_scanlr_LH_P2_0_0 with
                | `LH_P2(_lh_scanlr_LH_P2_0_1, _lh_scanlr_LH_P2_1_1) -> 
                  (let rec ans_0 = (`LH_P2(((_lh_scanlr_arg2_0 _lh_scanlr_LH_P2_1_1) _lh_scanlr_arg4_0), ((_lh_scanlr_arg1_0 _lh_scanlr_arg3_0) _lh_scanlr_LH_P2_0_1))) in
                    (`LH_P2(ans_0, (get_lh__d1 _lh_scanlr_LH_P2_1_0))))
                | _ -> 
                  (failwith "error")))))
      | _ -> 
        (failwith "error")));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 <= 0) then
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0))
      else
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec splitAt_lh__d1 _lh_splitAt_arg1_0 _lh_splitAt_arg2_0 =
  (`LH_P2(((take_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0), ((drop_lh__d1 _lh_splitAt_arg1_0) _lh_splitAt_arg2_0)));;
let rec put_lh__d1 _lh_put_arg1_0 =
  (match _lh_put_arg1_0 with
    | `LH_C(_lh_put_LH_C_0_0, _lh_put_LH_C_1_0) -> 
      (match _lh_put_LH_C_1_0 with
        | `LH_N -> 
          (let rec _lh_upsweep_Cell_0_0 = _lh_put_LH_C_0_0 in
            (fun _lh_upsweep_arg1_0 -> 
              (`LH_P2(_lh_upsweep_Cell_0_0, (let rec _lh_downsweep_Cell_0_0 = _lh_upsweep_Cell_0_0 in
                (fun _lh_downsweep_arg2_1 _lh_downsweep_arg1_1 -> 
                  (`Cell(_lh_downsweep_arg2_1))))))))
        | _ -> 
          (let rec _lh_matchIdent_6 = ((splitAt_lh__d1 ((length_lh__d1 _lh_put_arg1_0) / 2)) _lh_put_arg1_0) in
            (match _lh_matchIdent_6 with
              | `LH_P2(_lh_put_LH_P2_0_0, _lh_put_LH_P2_1_0) -> 
                (let rec _lh_upsweep_Node_2_0 = (put_lh__d1 _lh_put_LH_P2_1_0) in
                  (let rec _lh_upsweep_Node_1_0 = (put_lh__d1 _lh_put_LH_P2_0_0) in
                    (let rec _lh_upsweep_Node_0_0 = (`Unit) in
                      (fun _lh_upsweep_arg1_1 -> 
                        (let rec _lh_matchIdent_7 = ((upsweep_lh__d1 _lh_upsweep_arg1_1) _lh_upsweep_Node_1_0) in
                          (match _lh_matchIdent_7 with
                            | `LH_P2(_lh_upsweep_LH_P2_0_0, _lh_upsweep_LH_P2_1_0) -> 
                              (let rec _lh_matchIdent_8 = ((upsweep_lh__d1 _lh_upsweep_arg1_1) _lh_upsweep_Node_2_0) in
                                (match _lh_matchIdent_8 with
                                  | `LH_P2(_lh_upsweep_LH_P2_0_1, _lh_upsweep_LH_P2_1_1) -> 
                                    (`LH_P2(((_lh_upsweep_arg1_1 _lh_upsweep_LH_P2_0_0) _lh_upsweep_LH_P2_0_1), (let rec _lh_downsweep_Node_2_0 = _lh_upsweep_LH_P2_1_1 in
                                      (let rec _lh_downsweep_Node_1_0 = _lh_upsweep_LH_P2_1_0 in
                                        (let rec _lh_downsweep_Node_0_0 = (let rec _lh_downsweep_LH_P2_1_0 = _lh_upsweep_LH_P2_0_1 in
                                          (let rec _lh_downsweep_LH_P2_0_0 = _lh_upsweep_LH_P2_0_0 in
                                            (fun _lh_downsweep_Node_1_1 _lh_downsweep_Node_2_1 _lh_downsweep_arg1_2 _lh_downsweep_arg2_2 -> 
                                              (let rec _lh_matchIdent_9 = (((_lh_downsweep_arg1_2 _lh_downsweep_LH_P2_0_0) _lh_downsweep_LH_P2_1_0) _lh_downsweep_arg2_2) in
                                                (((_lh_matchIdent_9 _lh_downsweep_Node_1_1) _lh_downsweep_Node_2_1) _lh_downsweep_arg1_2))))) in
                                          (fun _lh_downsweep_arg2_3 _lh_downsweep_arg1_3 -> 
                                            ((((_lh_downsweep_Node_0_0 _lh_downsweep_Node_1_0) _lh_downsweep_Node_2_0) _lh_downsweep_arg1_3) _lh_downsweep_arg2_3)))))))
                                  | _ -> 
                                    (failwith "error")))
                            | _ -> 
                              (failwith "error")))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (let rec _lh_matchIdent_1_0 = ((splitAt_lh__d1 ((length_lh__d1 _lh_put_arg1_0) / 2)) _lh_put_arg1_0) in
        (match _lh_matchIdent_1_0 with
          | `LH_P2(_lh_put_LH_P2_0_1, _lh_put_LH_P2_1_1) -> 
            (let rec _lh_upsweep_Node_2_1 = (put_lh__d1 _lh_put_LH_P2_1_1) in
              (let rec _lh_upsweep_Node_1_1 = (put_lh__d1 _lh_put_LH_P2_0_1) in
                (let rec _lh_upsweep_Node_0_1 = (`Unit) in
                  (fun _lh_upsweep_arg1_2 -> 
                    (let rec _lh_matchIdent_1_1 = ((upsweep_lh__d1 _lh_upsweep_arg1_2) _lh_upsweep_Node_1_1) in
                      (match _lh_matchIdent_1_1 with
                        | `LH_P2(_lh_upsweep_LH_P2_0_2, _lh_upsweep_LH_P2_1_2) -> 
                          (let rec _lh_matchIdent_1_2 = ((upsweep_lh__d1 _lh_upsweep_arg1_2) _lh_upsweep_Node_2_1) in
                            (match _lh_matchIdent_1_2 with
                              | `LH_P2(_lh_upsweep_LH_P2_0_3, _lh_upsweep_LH_P2_1_3) -> 
                                (`LH_P2(((_lh_upsweep_arg1_2 _lh_upsweep_LH_P2_0_2) _lh_upsweep_LH_P2_0_3), (let rec _lh_downsweep_Node_2_2 = _lh_upsweep_LH_P2_1_3 in
                                  (let rec _lh_downsweep_Node_1_2 = _lh_upsweep_LH_P2_1_2 in
                                    (let rec _lh_downsweep_Node_0_1 = (let rec _lh_downsweep_LH_P2_1_1 = _lh_upsweep_LH_P2_0_3 in
                                      (let rec _lh_downsweep_LH_P2_0_1 = _lh_upsweep_LH_P2_0_2 in
                                        (fun _lh_downsweep_Node_1_3 _lh_downsweep_Node_2_3 _lh_downsweep_arg1_4 _lh_downsweep_arg2_4 -> 
                                          (let rec _lh_matchIdent_1_3 = (((_lh_downsweep_arg1_4 _lh_downsweep_LH_P2_0_1) _lh_downsweep_LH_P2_1_1) _lh_downsweep_arg2_4) in
                                            (((_lh_matchIdent_1_3 _lh_downsweep_Node_1_3) _lh_downsweep_Node_2_3) _lh_downsweep_arg1_4))))) in
                                      (fun _lh_downsweep_arg2_5 _lh_downsweep_arg1_5 -> 
                                        ((((_lh_downsweep_Node_0_1 _lh_downsweep_Node_1_2) _lh_downsweep_Node_2_2) _lh_downsweep_arg1_5) _lh_downsweep_arg2_5)))))))
                              | _ -> 
                                (failwith "error")))
                        | _ -> 
                          (failwith "error")))))))
          | _ -> 
            (failwith "error"))));;
let rec scanlr_lh__d1 _lh_scanlr_arg1_1 _lh_scanlr_arg2_1 _lh_scanlr_arg3_1 _lh_scanlr_arg4_1 _lh_scanlr_arg5_0 =
  let rec down_0 = (fun _lh_down_arg1_0 _lh_down_arg2_0 _lh_down_arg3_0 _lh_down_arg4_0 _lh_down_arg5_0 -> 
    (match _lh_down_arg3_0 with
      | `LH_P2(_lh_down_LH_P2_0_0, _lh_down_LH_P2_1_0) -> 
        (match _lh_down_arg4_0 with
          | `LH_P2(_lh_down_LH_P2_0_1, _lh_down_LH_P2_1_1) -> 
            (match _lh_down_arg5_0 with
              | `LH_P2(_lh_down_LH_P2_0_2, _lh_down_LH_P2_1_2) -> 
                (let rec _lh_downsweep_LH_P2_1_2 = (`LH_P2(((_lh_down_arg1_0 _lh_down_LH_P2_0_2) _lh_down_LH_P2_0_0), _lh_down_LH_P2_1_2)) in
                  (let rec _lh_downsweep_LH_P2_0_2 = (`LH_P2(_lh_down_LH_P2_0_2, ((_lh_down_arg2_0 _lh_down_LH_P2_1_1) _lh_down_LH_P2_1_2))) in
                    (fun _lh_downsweep_Node_1_4 _lh_downsweep_Node_2_4 _lh_downsweep_arg1_6 -> 
                      (let rec _lh_matchIdent_1_5 = (let rec _lh_downsweep_LH_P2_1_3 = (((downsweep_lh__d1 _lh_downsweep_arg1_6) _lh_downsweep_LH_P2_1_2) _lh_downsweep_Node_2_4) in
                        (let rec _lh_downsweep_LH_P2_0_3 = (((downsweep_lh__d1 _lh_downsweep_arg1_6) _lh_downsweep_LH_P2_0_2) _lh_downsweep_Node_1_4) in
                          (`Node((`Unit), _lh_downsweep_LH_P2_0_3, _lh_downsweep_LH_P2_1_3)))) in
                        _lh_matchIdent_1_5))))
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
  in (let rec xs'_0 = ((map_lh__d2_d0 (fun x_0 -> 
    (`LH_P2(x_0, x_0)))) _lh_scanlr_arg5_0) in
    (let rec _lh_matchIdent_1_6 = ((((sweep_ud_lh__d1 ((up_0 _lh_scanlr_arg1_1) _lh_scanlr_arg2_1)) ((down_0 _lh_scanlr_arg1_1) _lh_scanlr_arg2_1)) (`LH_P2(_lh_scanlr_arg3_1, _lh_scanlr_arg4_1))) (put_lh__d1 xs'_0)) in
      ((((_lh_matchIdent_1_6 _lh_scanlr_arg1_1) _lh_scanlr_arg2_1) _lh_scanlr_arg3_1) _lh_scanlr_arg4_1)));;
let rec send_right_lh__d1 _lh_send_right_arg1_0 _lh_send_right_arg2_0 =
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
let rec send_lh__d2 _lh_send_arg1_1 =
  (((((scanlr_lh__d1 send_right_lh__d1) send_left_lh__d1) emptyPacket_lh__d3) emptyPacket_lh__d3) _lh_send_arg1_1);;
let rec do_send_lh__d2 _lh_do_send_arg1_0 _lh_do_send_arg2_0 =
  (let rec states1_2 = ((map_lh__d1_d5 (check_depth_lh__d3 _lh_do_send_arg1_0)) _lh_do_send_arg2_0) in
    (let rec send_results_0 = ((map_lh__d1_d4 (fun _lh_funcomp_x_1 -> 
      (snd_lh__d2 (send_lh__d2 _lh_funcomp_x_1)))) ((fun _lh_funcomp_x_2 -> 
      (transpose_lh__d4 (pad_packets_lh__d2 _lh_funcomp_x_2))) ((map_lh__d1_d6 make_packet_lh__d2) states1_2))) in
      (let rec pss'_0 = (transpose_lh__d3 send_results_0) in
        (((zipWith_lh__d4 (update_io_lh__d2 _lh_do_send_arg1_0)) pss'_0) _lh_do_send_arg2_0))));;
let rec do_sends_lh__d2 _lh_do_sends_arg1_0 _lh_do_sends_arg2_0 =
  (((until_lh__d3 (acknowledge_lh__d2 _lh_do_sends_arg1_0)) (do_send_lh__d2 _lh_do_sends_arg1_0)) _lh_do_sends_arg2_0);;
let rec until_lh__d2 _lh_until_arg1_1 _lh_until_arg2_1 _lh_until_arg3_1 =
  (if (_lh_until_arg1_1 _lh_until_arg3_1) then
    _lh_until_arg3_1
  else
    (((until_lh__d2 _lh_until_arg1_1) _lh_until_arg2_1) (_lh_until_arg2_1 _lh_until_arg3_1)));;
let rec pathDepth_lh__d6 _lh_pathDepth_arg1_6 =
  (match _lh_pathDepth_arg1_6 with
    | `PS(_lh_pathDepth_PS_0_6, _lh_pathDepth_PS_1_6, _lh_pathDepth_PS_2_6, _lh_pathDepth_PS_3_6, _lh_pathDepth_PS_4_6) -> 
      _lh_pathDepth_PS_2_6
    | _ -> 
      (failwith "error"));;
let rec update_io_lh__d1 _lh_update_io_arg1_1 _lh_update_io_arg2_1 _lh_update_io_arg3_1 =
  (let rec update_is_1 = (fun state_2 -> 
    ((updateInports_lh__d1 state_2) (((foldr_lh__d1 update_i_lh__d1) (inports_lh__d6 state_2)) _lh_update_io_arg2_1))) in
    (let rec update_os_1 = (fun state_3 -> 
      (if ((pathDepth_lh__d6 state_3) = _lh_update_io_arg1_1) then
        ((updateOutports_lh__d5 state_3) (((zipWith_lh__d5 update_o_lh__d1) _lh_update_io_arg2_1) (outports_lh__d9 state_3)))
      else
        state_3)) in
      (update_os_1 (update_is_1 _lh_update_io_arg3_1))));;
let rec zipWith_lh__d3 f_4_0 xs_1_5 ys_2_6 =
  (match xs_1_5 with
    | `LH_C(hx_7, tx_7) -> 
      (match ys_2_6 with
        | `LH_C(hy_7, ty_7) -> 
          (`LH_C(((f_4_0 hx_7) hy_7), (((zipWith_lh__d3 f_4_0) tx_7) ty_7)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d1_d0 f_4_2 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_4_3, t_4_3) -> 
      (`LH_C((f_4_2 h_4_3), ((map_lh__d1_d0 f_4_2) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d8 f_4_5 ls_2_7 =
  (ls_2_7 f_4_5);;
let rec map_lh__d9 f_0 ls_0 _lh_popOutId_0_1 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((map_lh__d9 f_0) t_0) in
        (let rec h_1 = (f_0 h_0) in
          (`LH_C((_lh_popOutId_0_1 h_1), ((map_lh__d8 _lh_popOutId_0_1) t_1)))))
    | `LH_N -> 
      (`LH_N));;
let rec check_depth_lh__d1 _lh_check_depth_arg1_0 _lh_check_depth_arg2_0 =
  (if ((pathDepth_lh__d7 _lh_check_depth_arg2_0) = _lh_check_depth_arg1_0) then
    _lh_check_depth_arg2_0
  else
    ((update_requests_lh__d1 false) _lh_check_depth_arg2_0));;
let rec pad_packets_lh__d1 _lh_pad_packets_arg1_0 =
  (let rec pad_0 = (fun xs_8 -> 
    (let rec max_ps_0 = (maximum_lh__d2 ((map_lh__d2_d0 length_lh__d1) _lh_pad_packets_arg1_0)) in
      ((take_lh__d1 max_ps_0) ((mappend_lh__d5 xs_8) ((copy_lh__d4 max_ps_0) emptyPacket_lh__d3))))) in
    ((map_lh__d2_d0 pad_0) _lh_pad_packets_arg1_0));;
let rec snd_lh__d1 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec outports_lh__d8 _lh_outports_arg1_7 =
  (match _lh_outports_arg1_7 with
    | `PS(_lh_outports_PS_0_7, _lh_outports_PS_1_7, _lh_outports_PS_2_7, _lh_outports_PS_3_7, _lh_outports_PS_4_7) -> 
      _lh_outports_PS_4_7
    | _ -> 
      (failwith "error"));;
let rec make_packet_lh__d1 _lh_make_packet_arg1_0 =
  (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_0) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `LH_P6(_lh_make_packet_LH_P6_0_0, _lh_make_packet_LH_P6_1_0, _lh_make_packet_LH_P6_2_0, _lh_make_packet_LH_P6_3_0, _lh_make_packet_LH_P6_4_0, _lh_make_packet_LH_P6_5_0) -> 
            (`LH_C((`LH_P8((pid_lh__d5 _lh_make_packet_arg1_0), _lh_make_packet_LH_P6_0_0, _lh_make_packet_LH_P6_1_0, _lh_make_packet_LH_P6_2_0, _lh_make_packet_LH_P6_3_0, _lh_make_packet_LH_P6_4_0, _lh_make_packet_LH_P6_5_0, 1)), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_0)))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_5 (outports_lh__d8 _lh_make_packet_arg1_0)));;
let rec emptyPacket_lh__d2 =
  (`LH_P8((0 - 1), (0 - 1), (`F), false, 0, false, 0, 1));;
let rec emptyPacket_lh__d1 =
  (`LH_P8((0 - 1), (0 - 1), (`F), false, 0, false, 0, 1));;
let rec send_lh__d1 _lh_send_arg1_0 =
  (((((scanlr_lh__d1 send_right_lh__d1) send_left_lh__d1) emptyPacket_lh__d1) emptyPacket_lh__d2) _lh_send_arg1_0);;
let rec transpose_lh__d2 _lh_transpose_arg1_3 =
  (match _lh_transpose_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_9, _lh_transpose_LH_C_1_9) -> 
      (match _lh_transpose_LH_C_0_9 with
        | `LH_N -> 
          (transpose_lh__d2 _lh_transpose_LH_C_1_9)
        | `LH_C(_lh_transpose_LH_C_0_1_0, _lh_transpose_LH_C_1_1_0) -> 
          (let rec _lh_matchIdent_1_8 = (unzip_lh__d1 (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_1 -> 
            (match _lh_listcomp_fun_para_1_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_5) -> 
                (match _lh_listcomp_fun_ls_h_1_4 with
                  | `LH_C(_lh_transpose_LH_C_0_1_1, _lh_transpose_LH_C_1_1_1) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_1_1, _lh_transpose_LH_C_1_1_1)), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_5)))
                  | _ -> 
                    (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_5))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_2_1 _lh_transpose_LH_C_1_9))) in
            (match _lh_matchIdent_1_8 with
              | `LH_P2(_lh_transpose_LH_P2_0_3, _lh_transpose_LH_P2_1_3) -> 
                ((((combine_lh__d1 _lh_transpose_LH_C_0_1_0) _lh_transpose_LH_P2_0_3) _lh_transpose_LH_C_1_1_0) _lh_transpose_LH_P2_1_3)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec do_send_lh__d1 _lh_do_send_arg1_1 _lh_do_send_arg2_1 =
  (let rec states1_4 = ((map_lh__d9 (check_depth_lh__d1 _lh_do_send_arg1_1)) _lh_do_send_arg2_1) in
    (let rec send_results_1 = ((map_lh__d1_d0 (fun _lh_funcomp_x_4 -> 
      (snd_lh__d1 (send_lh__d1 _lh_funcomp_x_4)))) ((fun _lh_funcomp_x_5 -> 
      (transpose_lh__d2 (pad_packets_lh__d1 _lh_funcomp_x_5))) ((map_lh__d8 make_packet_lh__d1) states1_4))) in
      (let rec pss'_1 = (transpose_lh__d1 send_results_1) in
        (((zipWith_lh__d3 (update_io_lh__d1 _lh_do_send_arg1_1)) pss'_1) _lh_do_send_arg2_1))));;
let rec or_lh__d1 _lh_or_arg1_1 =
  (_lh_or_arg1_1 99);;
let rec map_lh__d1_d1 f_8 ls_5 _lh_popOutId_0_3 =
  (match ls_5 with
    | `LH_C(h_6, t_6) -> 
      (let rec _lh_or_LH_C_1_0 = ((map_lh__d1_d1 f_8) t_6) in
        (let rec _lh_or_LH_C_0_0 = (f_8 h_6) in
          (if _lh_or_LH_C_0_0 then
            true
          else
            (or_lh__d1 _lh_or_LH_C_1_0))))
    | `LH_N -> 
      false);;
let rec outports_lh__d5 _lh_outports_arg1_2 =
  (match _lh_outports_arg1_2 with
    | `PS(_lh_outports_PS_0_2, _lh_outports_PS_1_2, _lh_outports_PS_2_2, _lh_outports_PS_3_2, _lh_outports_PS_4_2) -> 
      _lh_outports_PS_4_2
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d2 f_2_5 ls_1_1 =
  (ls_1_1 f_2_5);;
let rec or_lh__d2 _lh_or_arg1_3 =
  (_lh_or_arg1_3 99);;
let rec map_lh__d1_d3 f_1_5 ls_8 _lh_popOutId_0_6 _lh_popOutId_1_3 =
  (match ls_8 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec t_1_2 = ((map_lh__d1_d3 f_1_5) t_1_1) in
        (let rec h_1_2 = (f_1_5 h_1_1) in
          (let rec _lh_or_LH_C_1_2 = ((map_lh__d1_d2 _lh_popOutId_0_6) t_1_2) in
            (let rec _lh_or_LH_C_0_2 = (_lh_popOutId_0_6 h_1_2) in
              (if _lh_or_LH_C_0_2 then
                true
              else
                (or_lh__d2 _lh_or_LH_C_1_2))))))
    | `LH_N -> 
      false);;
let rec check_depth_lh__d2 _lh_check_depth_arg1_1 _lh_check_depth_arg2_1 =
  (if ((pathDepth_lh__d7 _lh_check_depth_arg2_1) = _lh_check_depth_arg1_1) then
    _lh_check_depth_arg2_1
  else
    ((update_requests_lh__d1 false) _lh_check_depth_arg2_1));;
let rec acknowledge_lh__d1 _lh_acknowledge_arg1_0 _lh_acknowledge_arg2_0 =
  let rec check_lr_requests_0 = (fun _lh_check_lr_requests_arg1_0 -> 
    (match _lh_check_lr_requests_arg1_0 with
      | `LH_P6(_lh_check_lr_requests_LH_P6_0_0, _lh_check_lr_requests_LH_P6_1_0, _lh_check_lr_requests_LH_P6_2_0, _lh_check_lr_requests_LH_P6_3_0, _lh_check_lr_requests_LH_P6_4_0, _lh_check_lr_requests_LH_P6_5_0) -> 
        (_lh_check_lr_requests_LH_P6_2_0 || _lh_check_lr_requests_LH_P6_4_0)
      | _ -> 
        (failwith "error")))
  and check_requests_0 = (fun _lh_check_requests_arg1_0 -> 
    (or_lh__d1 ((map_lh__d1_d1 check_lr_requests_0) _lh_check_requests_arg1_0)))
  in (let rec states1_0 = ((map_lh__d1_d3 (check_depth_lh__d2 _lh_acknowledge_arg1_0)) _lh_acknowledge_arg2_0) in
    (not (or_lh__d2 ((map_lh__d1_d2 (fun _lh_funcomp_x_0 -> 
      (check_requests_0 (outports_lh__d5 _lh_funcomp_x_0)))) states1_0))));;
let rec do_sends_lh__d1 _lh_do_sends_arg1_1 _lh_do_sends_arg2_1 =
  (((until_lh__d2 (acknowledge_lh__d1 _lh_do_sends_arg1_1)) (do_send_lh__d1 _lh_do_sends_arg1_1)) _lh_do_sends_arg2_1);;
let rec map_lh__d5 f_3_4 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_3_7, t_3_7) -> 
      (`LH_C((f_3_4 h_3_7), ((map_lh__d5 f_3_4) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec head_lh__d3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_4_0, t_4_0) -> 
      h_4_0
    | `LH_N -> 
      (failwith "error"));;
let rec store_inputs_lh__d1 _lh_store_inputs_arg1_0 _lh_store_inputs_arg2_0 =
  (match _lh_store_inputs_arg2_0 with
    | `PS(_lh_store_inputs_PS_0_4, _lh_store_inputs_PS_1_0, _lh_store_inputs_PS_2_4, _lh_store_inputs_PS_3_4, _lh_store_inputs_PS_4_4) -> 
      (match _lh_store_inputs_PS_1_0 with
        | `Inp -> 
          (head_lh__d3 (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_8 -> 
            (((((_lh_listcomp_fun_para_8 _lh_listcomp_fun_1_8) _lh_store_inputs_PS_0_4) _lh_store_inputs_PS_2_4) _lh_store_inputs_PS_3_4) _lh_store_inputs_PS_4_4)) in
            (_lh_listcomp_fun_1_8 _lh_store_inputs_arg1_0)))
        | _ -> 
          _lh_store_inputs_arg2_0)
    | _ -> 
      _lh_store_inputs_arg2_0);;
let rec do_cycle_lh__d1 _lh_do_cycle_arg1_0 _lh_do_cycle_arg2_0 _lh_do_cycle_arg3_0 =
  (match _lh_do_cycle_arg2_0 with
    | `LH_P4(_lh_do_cycle_LH_P4_0_0, _lh_do_cycle_LH_P4_1_0, _lh_do_cycle_LH_P4_2_0, _lh_do_cycle_LH_P4_3_0) -> 
      (let rec sim_then_send_0 = (fun _lh_sim_then_send_arg1_0 _lh_sim_then_send_arg2_0 -> 
        ((do_sends_lh__d2 _lh_sim_then_send_arg2_0) ((simulate_components_lh__d1 _lh_sim_then_send_arg2_0) _lh_sim_then_send_arg1_0))) in
        (let rec states1_1 = ((map_lh__d5 (store_inputs_lh__d1 ((zip_lh__d1 _lh_do_cycle_LH_P4_1_0) _lh_do_cycle_arg3_0))) _lh_do_cycle_LH_P4_3_0) in
          (let rec states2_0 = ((do_sends_lh__d1 0) states1_1) in
            (let rec states3_0 = (((foldl_lh__d1 sim_then_send_0) states2_0) ((enumFromTo_lh__d4 1) _lh_do_cycle_arg1_0)) in
              (let rec states4_0 = ((restore_requests_lh__d1 _lh_do_cycle_LH_P4_3_0) states3_0) in
                (`LH_P4(_lh_do_cycle_LH_P4_0_0, _lh_do_cycle_LH_P4_1_0, _lh_do_cycle_LH_P4_2_0, states4_0)))))))
    | _ -> 
      (failwith "error"));;
let rec reg_lh__d1 _lh_reg_arg1_0 _lh_reg_arg2_0 ys_1_9 ys_2_0 =
  (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (fun ys_6 -> 
    ys_6) in
    (let rec h_1_5 = (`PS((_lh_reg_arg2_0 + 6), (`Outp), 4, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 1), 0, (`F))), (`LH_N))), (`LH_N))) in
      (fun ys_7 -> 
        (let rec t_2_2 = ((mappend_lh__d4 t_2_1) ys_7) in
          (let rec h_1_6 = h_1_5 in
            (fun ys_8 -> 
              (`LH_C(h_1_6, ((mappend_lh__d3 t_2_2) ys_8))))))))) in
    (let rec h_1_7 = (`PS((_lh_reg_arg2_0 + 5), (`Or2), 3, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 3), 0, (`F))), (`LH_C((`LH_P3((_lh_reg_arg2_0 + 4), 0, (`F))), (`LH_N))))), (`LH_C((`LH_P6(0, (`F), true, 4, false, 0)), (`LH_N))))) in
      (fun ys_9 -> 
        (let rec t_2_3 = ((mappend_lh__d4 t_2_0) ys_9) in
          (let rec h_1_8 = h_1_7 in
            (fun ys_1_0 -> 
              (`LH_C(h_1_8, ((mappend_lh__d3 t_2_3) ys_1_0))))))))) in
    (let rec h_1_9 = (`PS((_lh_reg_arg2_0 + 4), (`And2), 1, (`LH_C((`LH_P3(_lh_reg_arg1_0, 0, (`F))), (`LH_C((`LH_P3(_lh_reg_arg2_0, 0, (`F))), (`LH_N))))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 1)), (`LH_N))))) in
      (fun ys_1_1 -> 
        (let rec t_2_4 = ((mappend_lh__d4 t_1_9) ys_1_1) in
          (let rec h_2_0 = h_1_9 in
            (fun ys_1_2 -> 
              (`LH_C(h_2_0, ((mappend_lh__d3 t_2_4) ys_1_2))))))))) in
    (let rec h_2_1 = (`PS((_lh_reg_arg2_0 + 3), (`And2), 2, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 1), 0, (`F))), (`LH_C((`LH_P3((_lh_reg_arg2_0 + 2), 0, (`F))), (`LH_N))))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 2)), (`LH_N))))) in
      (fun ys_1_3 -> 
        (let rec t_2_5 = ((mappend_lh__d4 t_1_8) ys_1_3) in
          (let rec h_2_2 = h_2_1 in
            (fun ys_1_4 -> 
              (`LH_C(h_2_2, ((mappend_lh__d3 t_2_5) ys_1_4))))))))) in
    (let rec h_2_3 = (`PS((_lh_reg_arg2_0 + 2), (`Inv), 1, (`LH_C((`LH_P3(_lh_reg_arg1_0, 0, (`F))), (`LH_N))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 1)), (`LH_N))))) in
      (fun ys_1_5 -> 
        (let rec t_2_6 = ((mappend_lh__d4 t_1_7) ys_1_5) in
          (let rec h_2_4 = h_2_3 in
            (fun ys_1_6 -> 
              (`LH_C(h_2_4, ((mappend_lh__d3 t_2_6) ys_1_6))))))))) in
    (let rec h_2_5 = (`PS((_lh_reg_arg2_0 + 1), (`Dff), 1, (`LH_C((`LH_P3((_lh_reg_arg2_0 + 5), 0, (`F))), (`LH_N))), (`LH_C((`LH_P6(0, (`F), false, 0, true, 5)), (`LH_N))))) in
      (fun ys_1_7 -> 
        (let rec t_2_7 = ((mappend_lh__d4 t_1_6) ys_1_7) in
          (let rec h_2_6 = h_2_5 in
            (fun ys_1_8 -> 
              (`LH_C(h_2_6, ((mappend_lh__d3 t_2_7) ys_1_8))))))))) in
    (let rec h_2_7 = (`PS(_lh_reg_arg2_0, (`Inp), 0, (`LH_N), (`LH_C((`LH_P6(0, (`F), false, 0, true, 4)), (`LH_N))))) in
      (let rec t_2_8 = ((mappend_lh__d4 t_1_5) ys_1_9) in
        (let rec h_2_8 = h_2_7 in
          (`LH_C(h_2_8, ((mappend_lh__d3 t_2_8) ys_2_0)))))));;
let rec zipWith_lz_nl_lh__d1 f_2_2 xs_9 ys_2_1 =
  ((ys_2_1 f_2_2) xs_9);;
let rec tail_lh__d1 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_3_2, t_3_2) -> 
      t_3_2
    | `LH_N -> 
      (failwith "error"));;
let rec pathDepth_lh__d1 _lh_pathDepth_arg1_4 =
  (match _lh_pathDepth_arg1_4 with
    | `PS(_lh_pathDepth_PS_0_4, _lh_pathDepth_PS_1_4, _lh_pathDepth_PS_2_4, _lh_pathDepth_PS_3_4, _lh_pathDepth_PS_4_4) -> 
      _lh_pathDepth_PS_2_4
    | _ -> 
      (failwith "error"));;
let rec enumFrom_lh__d1 a_6 =
  (lazy (let rec tx_3 = (enumFrom_lh__d1 (a_6 + 1)) in
    (let rec hx_3 = a_6 in
      (fun f_3_1 hy_3 ty_3 -> 
        (`LH_C(((f_3_1 hx_3) hy_3), (((zipWith_lz_nl_lh__d1 f_3_1) tx_3) ty_3)))))));;
let rec emptyState_lh__d1 =
  (`PS((0 - 1), (`None), (0 - 1), (`LH_N), (`LH_N)));;
let rec critical_path_depth_lh__d1 _lh_critical_path_depth_arg1_0 =
  (_lh_critical_path_depth_arg1_0 99);;
let rec regs_lh__d1 _lh_regs_arg1_0 _lh_dummy_1_0 _lh_simulate_arg1_1 =
  let rec ilabel_0 = (fun _lh_ilabel_arg1_0 _lh_ilabel_arg2_0 -> 
    (`LH_P2(((mappend_lh__d2 (let rec t_4_4 = (fun ys_2_9 -> 
      ys_2_9) in
      (let rec h_4_4 = 'x' in
        (fun ys_3_0 -> 
          (`LH_C(h_4_4, ((mappend_lh__d2 t_4_4) ys_3_0))))))) (string_of_int _lh_ilabel_arg1_0)), _lh_ilabel_arg2_0)))
  and olabel_0 = (fun _lh_olabel_arg1_0 _lh_olabel_arg2_0 -> 
    (`LH_P2(((mappend_lh__d1 (let rec t_4_5 = (fun ys_3_1 -> 
      ys_3_1) in
      (let rec h_4_5 = 'y' in
        (fun ys_3_2 -> 
          (`LH_C(h_4_5, ((mappend_lh__d1 t_4_5) ys_3_2))))))) (string_of_int _lh_olabel_arg1_0)), _lh_olabel_arg2_0)))
  in (let rec is_0 = (`LH_C((`LH_P2((`LH_C('s', (`LH_C('t', (`LH_C('o', (`LH_N))))))), 0)), (((zipWith_lz_nl_lh__d1 ilabel_0) (enumFrom_lh__d1 0)) (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_2 -> 
    (_lh_listcomp_fun_para_1_2 _lh_listcomp_fun_2_2)) in
    (_lh_listcomp_fun_2_2 ((enumFromTo_lh__d3 0) (_lh_regs_arg1_0 - 1))))))) in
    (let rec os_0 = (((zipWith_lz_nl_lh__d2 olabel_0) (enumFrom_lh__d2 0)) (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_3 -> 
      (_lh_listcomp_fun_para_1_3 _lh_listcomp_fun_2_3)) in
      (_lh_listcomp_fun_2_3 ((enumFromTo_lh__d2 0) (_lh_regs_arg1_0 - 1))))) in
      (let rec sto_0 = (`PS(0, (`Inp), 0, (`LH_N), (`LH_C((`LH_P6(0, (`F), false, 0, true, ((8 * (_lh_regs_arg1_0 - 1)) + 5))), (`LH_N))))) in
        (let rec states_0 = (let rec t_4_6 = (concat_lh__d1 ((map_lh__d1 (reg_lh__d1 0)) (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_4 -> 
          (_lh_listcomp_fun_para_1_4 _lh_listcomp_fun_2_4)) in
          (_lh_listcomp_fun_2_4 ((enumFromTo_lh__d1 0) (_lh_regs_arg1_0 - 1)))))) in
          (let rec h_4_6 = sto_0 in
            (fun ys_3_3 -> 
              (`LH_C(h_4_6, ((mappend_lh__d3 t_4_6) ys_3_3)))))) in
          (let rec _lh_pad_circuit_LH_P4_3_0 = states_0 in
            (let rec _lh_pad_circuit_LH_P4_2_0 = os_0 in
              (let rec _lh_pad_circuit_LH_P4_1_0 = is_0 in
                (let rec _lh_pad_circuit_LH_P4_0_0 = (1 + (7 * _lh_regs_arg1_0)) in
                  (let rec p2_0 = (nearest_power_of_two_lh__d1 _lh_pad_circuit_LH_P4_0_0) in
                    (let rec _lh_simulate_LH_P4_3_0 = ((take_lh__d1 p2_0) ((mappend_lh__d3 _lh_pad_circuit_LH_P4_3_0) ((copy_lh__d3 p2_0) emptyState_lh__d1))) in
                      (let rec _lh_simulate_LH_P4_2_0 = _lh_pad_circuit_LH_P4_2_0 in
                        (let rec _lh_simulate_LH_P4_1_0 = _lh_pad_circuit_LH_P4_1_0 in
                          (let rec _lh_simulate_LH_P4_0_0 = p2_0 in
                            (tail_lh__d1 (((scanl_lh__d1 (do_cycle_lh__d1 (critical_path_depth_lh__d1 (let rec _lh_critical_path_depth_LH_P4_3_0 = _lh_simulate_LH_P4_3_0 in
                              (let rec _lh_critical_path_depth_LH_P4_2_0 = _lh_simulate_LH_P4_2_0 in
                                (let rec _lh_critical_path_depth_LH_P4_1_0 = _lh_simulate_LH_P4_1_0 in
                                  (let rec _lh_critical_path_depth_LH_P4_0_0 = _lh_simulate_LH_P4_0_0 in
                                    (fun _lh_dummy_1_1 -> 
                                      (maximum_lh__d1 ((map_lh__d6 pathDepth_lh__d1) _lh_critical_path_depth_LH_P4_3_0)))))))))) (`LH_P4(_lh_simulate_LH_P4_0_0, _lh_simulate_LH_P4_1_0, _lh_simulate_LH_P4_2_0, ((map_lh__d4 init_dffs_lh__d1) _lh_simulate_LH_P4_3_0)))) _lh_simulate_arg1_1)))))))))))))));;
let rec run_lh__d1 _lh_run_arg1_0 _lh_run_arg2_0 =
  (let rec example_0 = (pad_circuit_lh__d1 (regs_lh__d1 _lh_run_arg1_0)) in
    (let rec inputs_0 = ((copy_lh__d2 (_lh_run_arg1_0 + 1)) (`T)) in
      (let rec cycles_0 = ((copy_lh__d1 _lh_run_arg2_0) inputs_0) in
        ((circuit_simulate_lh__d1 cycles_0) example_0))));;
let rec testCircsim_nofib_lh__d1 _lh_testCircsim_nofib_arg1_0 =
  ((run_lh__d1 8) _lh_testCircsim_nofib_arg1_0);;
end;;

