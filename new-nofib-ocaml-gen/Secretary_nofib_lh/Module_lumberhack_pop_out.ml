

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec dropWhile__d0 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile__d0 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec drop__d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec filter_lz__d0 f_4 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_4) -> 
      (if (f_4 h_3) then
        (`LH_C(h_3, ((filter_lz__d0 f_4) t_4)))
      else
        (Lazy.force ((filter_lz__d0 f_4) t_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec filter__d0 f_3 ls_2 =
  (ls_2 f_3);;
let rec foldl__d0 f_2 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_1, t_2) -> 
      (((foldl__d0 f_2) ((f_2 i_0) h_1)) t_2)
    | `LH_N -> 
      i_0);;
let rec length__d0 ls_5 =
  (ls_5 99);;
let rec power__d0 _lh_power_arg1_0 _lh_power_arg2_0 =
  (if (_lh_power_arg2_0 = 0) then
    1
  else
    (_lh_power_arg1_0 * ((power__d0 _lh_power_arg1_0) (_lh_power_arg2_0 - 1))));;
let rec take_lz__d0 _lh_take_lz_arg1_2 _lh_take_lz_arg2_0 =
  (if (_lh_take_lz_arg1_2 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_1 = (Lazy.force _lh_take_lz_arg2_0) in
      (_lh_matchIdent_1 _lh_take_lz_arg1_2)));;
let rec take__d0 n_0 ls_1 =
  (if (n_0 > 0) then
    (match ls_1 with
      | `LH_C(h_2, t_3) -> 
        (`LH_C(h_2, ((take__d0 (n_0 - 1)) t_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_1 ls_4 =
  (if (n_1 > 0) then
    (match ls_4 with
      | `LH_C(h_4, t_5) -> 
        (`LH_C(h_4, ((take__d1 (n_1 - 1)) t_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec enumFromTo__d0 a_1 b_1 _lh_popOutId_0_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_1 in
        (`LH_C((sim__d0 _lh_listcomp_fun_ls_h_0), (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_1)))))
  else
    (`LH_N))
and enumFromTo__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec t_0 = (_lh_popOutId_0_0 _lh_listcomp_fun_ls_t_0) in
        (let rec h_0 = (_lh_popOutId_2_0 (infRand__d0 _lh_popOutId_1_0)) in
          (if (_lh_popOutId_3_0 h_0) then
            (fun _lh_dummy_0 -> 
              (let rec t_1 = ((filter__d0 _lh_popOutId_3_0) t_0) in
                (1 + (length__d0 t_1))))
          else
            ((filter__d0 _lh_popOutId_3_0) t_0)))))
  else
    (fun _lh_dummy_1 -> 
      0))
and foldl1__d0 _lh_foldl1_arg1_0 _lh_foldl1_arg2_0 =
  (match _lh_foldl1_arg2_0 with
    | `LH_C(_lh_foldl1_LH_C_0_0, _lh_foldl1_LH_C_1_0) -> 
      (((foldl__d0 _lh_foldl1_arg1_0) _lh_foldl1_LH_C_0_0) _lh_foldl1_LH_C_1_0)
    | _ -> 
      (failwith "error"))
and infRand__d0 _lh_infRand_arg1_0 =
  (let rec f_5 = (fun x_0 -> 
    (lazy (`LH_C(((x_0 mod _lh_infRand_arg1_0) + 1), (f_5 (((97 * x_0) + 11) mod ((power__d0 2) 7))))))) in
    (f_5 37))
and maximum__d0 _lh_maximum_arg1_0 =
  ((foldl1__d0 (fun x_2 y_1 -> 
    (if (x_2 > y_1) then
      x_2
    else
      y_1))) _lh_maximum_arg1_0)
and nub_lz__d0 _lh_nub_lz_arg1_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_nub_lz_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (fun _lh_take_lz_arg1_0 -> 
          (`LH_N))
      | `LH_C(_lh_nub_lz_LH_C_0_0, _lh_nub_lz_LH_C_1_0) -> 
        (let rec _lh_take_lz_LH_C_1_0 = (nub_lz__d0 ((filter_lz__d0 (fun y_0 -> 
          (not (_lh_nub_lz_LH_C_0_0 = y_0)))) _lh_nub_lz_LH_C_1_0)) in
          (let rec _lh_take_lz_LH_C_0_0 = _lh_nub_lz_LH_C_0_0 in
            (fun _lh_take_lz_arg1_1 -> 
              (`LH_C(_lh_take_lz_LH_C_0_0, ((take_lz__d0 (_lh_take_lz_arg1_1 - 1)) _lh_take_lz_LH_C_1_0))))))
      | _ -> 
        (failwith "error"))))
and sim__d0 _lh_sim_arg1_0 =
  (let rec proc_0 = (fun rs_0 -> 
    (let rec xs_0 = ((take_lz__d0 100) (nub_lz__d0 rs_0)) in
      (let rec best_0 = 100 in
        (let rec bestk_0 = (maximum__d0 ((take__d0 _lh_sim_arg1_0) xs_0)) in
          (let rec afterk_0 = ((dropWhile__d0 (fun x_1 -> 
            (x_1 < bestk_0))) ((drop__d0 _lh_sim_arg1_0) xs_0)) in
            ((`LH_C(best_0, (`LH_N))) = ((take__d1 1) afterk_0))))))) in
    (((simulate__d0 5000) 100) proc_0))
and simulate__d0 _lh_simulate_arg1_0 _lh_simulate_arg2_2 _lh_simulate_arg3_2 =
  ((float_of_int (length__d0 ((filter__d0 (fun x_3 -> 
    x_3)) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
    (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_5) _lh_simulate_arg2_2) _lh_simulate_arg3_2)) in
    (_lh_listcomp_fun_5 ((enumFromTo__d1 1) _lh_simulate_arg1_0)))))) /. (float_of_int _lh_simulate_arg1_0))
and testSecretary_nofib__d0 _lh_testSecretary_nofib_arg1_0 =
  (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo__d0 35) 39)));;
end;;

