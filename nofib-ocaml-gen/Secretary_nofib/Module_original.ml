
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec dropWhile__d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile__d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d0 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec filter_lz__d0 _lh_filter_lz_arg1_1 _lh_filter_lz_arg2_1 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_filter_lz_arg2_1) in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_filter_lz_LH_C_0_1, _lh_filter_lz_LH_C_1_1) -> 
        (if (_lh_filter_lz_arg1_1 _lh_filter_lz_LH_C_0_1) then
          (`LH_C(_lh_filter_lz_LH_C_0_1, ((filter_lz__d0 _lh_filter_lz_arg1_1) _lh_filter_lz_LH_C_1_1)))
        else
          (Lazy.force ((filter_lz__d0 _lh_filter_lz_arg1_1) _lh_filter_lz_LH_C_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec filter__d0 f_1_4 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_1_9, t_2_1) -> 
      (if (f_1_4 h_1_9) then
        (`LH_C(h_1_9, ((filter__d0 f_1_4) t_2_1)))
      else
        ((filter__d0 f_1_4) t_2_1))
    | `LH_N -> 
      (`LH_N));;
let rec foldl__d0 f_1_2 i_3 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_8, t_2_0) -> 
      (((foldl__d0 f_1_2) ((f_1_2 i_3) h_1_8)) t_2_0)
    | `LH_N -> 
      i_3);;
let rec length__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (1 + (length__d0 t_2_3))
    | `LH_N -> 
      0);;
let rec power__d0 _lh_power_arg1_1 _lh_power_arg2_1 =
  (if (_lh_power_arg2_1 = 0) then
    1
  else
    (_lh_power_arg1_1 * ((power__d0 _lh_power_arg1_1) (_lh_power_arg2_1 - 1))));;
let rec take_lz__d0 _lh_take_lz_arg1_1 _lh_take_lz_arg2_1 =
  (if (_lh_take_lz_arg1_1 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_5 = (Lazy.force _lh_take_lz_arg2_1) in
      (match _lh_matchIdent_5 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_take_lz_LH_C_0_1, _lh_take_lz_LH_C_1_1) -> 
          (`LH_C(_lh_take_lz_LH_C_0_1, ((take_lz__d0 (_lh_take_lz_arg1_1 - 1)) _lh_take_lz_LH_C_1_1)))
        | _ -> 
          (failwith "error"))));;
let rec take__d0 n_4 ls_2_1 =
  (if (n_4 > 0) then
    (match ls_2_1 with
      | `LH_C(h_2_2, t_2_4) -> 
        (`LH_C(h_2_2, ((take__d0 (n_4 - 1)) t_2_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_3 ls_1_9 =
  (if (n_3 > 0) then
    (match ls_1_9 with
      | `LH_C(h_2_0, t_2_2) -> 
        (`LH_C(h_2_0, ((take__d1 (n_3 - 1)) t_2_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec foldl1__d0 _lh_foldl1_arg1_1 _lh_foldl1_arg2_1 =
  (match _lh_foldl1_arg2_1 with
    | `LH_C(_lh_foldl1_LH_C_0_1, _lh_foldl1_LH_C_1_1) -> 
      (((foldl__d0 _lh_foldl1_arg1_1) _lh_foldl1_LH_C_0_1) _lh_foldl1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and infRand__d0 _lh_infRand_arg1_1 =
  (let rec f_1_3 = (fun x_6 -> 
    (lazy (`LH_C(((x_6 mod _lh_infRand_arg1_1) + 1), (f_1_3 (((97 * x_6) + 11) mod ((power__d0 2) 7))))))) in
    (f_1_3 37))
and maximum__d0 _lh_maximum_arg1_1 =
  ((foldl1__d0 (fun x_8 y_3 -> 
    (if (x_8 > y_3) then
      x_8
    else
      y_3))) _lh_maximum_arg1_1)
and nub_lz__d0 _lh_nub_lz_arg1_1 =
  (lazy (let rec _lh_matchIdent_3 = (Lazy.force _lh_nub_lz_arg1_1) in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_nub_lz_LH_C_0_1, _lh_nub_lz_LH_C_1_1) -> 
        (`LH_C(_lh_nub_lz_LH_C_0_1, (nub_lz__d0 ((filter_lz__d0 (fun y_2 -> 
          (not (_lh_nub_lz_LH_C_0_1 = y_2)))) _lh_nub_lz_LH_C_1_1))))
      | _ -> 
        (failwith "error"))))
and sim__d0 _lh_sim_arg1_1 =
  (let rec proc_1 = (fun rs_1 -> 
    (let rec xs_1_0 = ((take_lz__d0 100) (nub_lz__d0 rs_1)) in
      (let rec best_1 = 100 in
        (let rec bestk_1 = (maximum__d0 ((take__d0 _lh_sim_arg1_1) xs_1_0)) in
          (let rec afterk_1 = ((dropWhile__d0 (fun x_9 -> 
            (x_9 < bestk_1))) ((drop__d0 _lh_sim_arg1_1) xs_1_0)) in
            ((`LH_C(best_1, (`LH_N))) = ((take__d1 1) afterk_1))))))) in
    (((simulate__d0 5000) 100) proc_1))
and simulate__d0 _lh_simulate_arg1_1 _lh_simulate_arg2_1 _lh_simulate_arg3_1 =
  ((float_of_int (length__d0 ((filter__d0 (fun x_7 -> 
    x_7)) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (`LH_C((_lh_simulate_arg3_1 (infRand__d0 _lh_simulate_arg2_1)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 ((enumFromTo__d1 1) _lh_simulate_arg1_1)))))) /. (float_of_int _lh_simulate_arg1_1))
and testSecretary_nofib__d0 _lh_testSecretary_nofib_arg1_1 =
  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (`LH_C((sim__d0 _lh_listcomp_fun_ls_h_2), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 ((enumFromTo__d0 35) 39)));;
end;;

