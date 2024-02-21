

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec foldl_lh__d1 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (((foldl_lh__d1 f_0) ((f_0 i_0) h_0)) t_0)
    | `LH_N -> 
      i_0);;
let rec foldl1_lh__d1 _lh_foldl1_arg1_0 _lh_foldl1_arg2_0 =
  (match _lh_foldl1_arg2_0 with
    | `LH_C(_lh_foldl1_LH_C_0_0, _lh_foldl1_LH_C_1_0) -> 
      (((foldl_lh__d1 _lh_foldl1_arg1_0) _lh_foldl1_LH_C_0_0) _lh_foldl1_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec maximum_lh__d1 _lh_maximum_arg1_0 =
  ((foldl1_lh__d1 (fun x_2 y_1 -> 
    (if (x_2 > y_1) then
      x_2
    else
      y_1))) _lh_maximum_arg1_0);;
let rec take_lh__d1 n_1 ls_5 =
  (if (n_1 > 0) then
    (match ls_5 with
      | `LH_C(h_5, t_5) -> 
        (`LH_C(h_5, ((take_lh__d1 (n_1 - 1)) t_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec filter_lz_lh__d1 f_1 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (if (f_1 h_1) then
        (`LH_C(h_1, ((filter_lz_lh__d1 f_1) t_1)))
      else
        (Lazy.force ((filter_lz_lh__d1 f_1) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec nub_lz_lh__d1 _lh_nub_lz_arg1_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_nub_lz_arg1_0) in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_nub_lz_LH_C_0_0, _lh_nub_lz_LH_C_1_0) -> 
        (`LH_C(_lh_nub_lz_LH_C_0_0, (nub_lz_lh__d1 ((filter_lz_lh__d1 (fun y_0 -> 
          (not (_lh_nub_lz_LH_C_0_0 = y_0)))) _lh_nub_lz_LH_C_1_0))))
      | _ -> 
        (failwith "error"))));;
let rec take_lz_lh__d1 _lh_take_lz_arg1_0 _lh_take_lz_arg2_0 =
  (if (_lh_take_lz_arg1_0 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_1 = (Lazy.force _lh_take_lz_arg2_0) in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_take_lz_LH_C_0_0, _lh_take_lz_LH_C_1_0) -> 
          (`LH_C(_lh_take_lz_LH_C_0_0, ((take_lz_lh__d1 (_lh_take_lz_arg1_0 - 1)) _lh_take_lz_LH_C_1_0)))
        | _ -> 
          (failwith "error"))));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec power_lh__d1 _lh_power_arg1_0 _lh_power_arg2_0 =
  (if (_lh_power_arg2_0 = 0) then
    1
  else
    (_lh_power_arg1_0 * ((power_lh__d1 _lh_power_arg1_0) (_lh_power_arg2_0 - 1))));;
let rec infRand_lh__d1 _lh_infRand_arg1_0 =
  (let rec f_3 = (fun x_0 -> 
    (lazy (`LH_C(((x_0 mod _lh_infRand_arg1_0) + 1), (f_3 (((97 * x_0) + 11) mod ((power_lh__d1 2) 7))))))) in
    (f_3 37));;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d2 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec filter_lh__d1 f_2 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (if (f_2 h_2) then
        (`LH_C(h_2, ((filter_lh__d1 f_2) t_2)))
      else
        ((filter_lh__d1 f_2) t_2))
    | `LH_N -> 
      (`LH_N));;
let rec length_lh__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_lh__d1 t_3))
    | `LH_N -> 
      0);;
let rec simulate_lh__d1 _lh_simulate_arg1_0 _lh_simulate_arg2_0 _lh_simulate_arg3_0 =
  ((float_of_int (length_lh__d1 ((filter_lh__d1 (fun x_1 -> 
    x_1)) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (`LH_C((_lh_simulate_arg3_0 (infRand_lh__d1 _lh_simulate_arg2_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 ((enumFromTo_lh__d2 1) _lh_simulate_arg1_0)))))) /. (float_of_int _lh_simulate_arg1_0));;
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
let rec take_lh__d2 n_0 ls_4 =
  (if (n_0 > 0) then
    (match ls_4 with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lh__d2 (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec sim_lh__d1 _lh_sim_arg1_0 =
  (let rec proc_0 = (fun rs_0 -> 
    (let rec xs_0 = ((take_lz_lh__d1 100) (nub_lz_lh__d1 rs_0)) in
      (let rec best_0 = 100 in
        (let rec bestk_0 = (maximum_lh__d1 ((take_lh__d1 _lh_sim_arg1_0) xs_0)) in
          (let rec afterk_0 = ((dropWhile_lh__d1 (fun x_3 -> 
            (x_3 < bestk_0))) ((drop_lh__d1 _lh_sim_arg1_0) xs_0)) in
            ((`LH_C(best_0, (`LH_N))) = ((take_lh__d2 1) afterk_0))))))) in
    (((simulate_lh__d1 5000) 100) proc_0));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo_lh__d1 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec testSecretary_nofib_lh__d1 _lh_testSecretary_nofib_arg1_0 =
  (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C((sim_lh__d1 _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 ((enumFromTo_lh__d1 35) 39)));;
let run () = 1 + (Obj.magic ((testSecretary_nofib_lh__d1 0)));
end;;

