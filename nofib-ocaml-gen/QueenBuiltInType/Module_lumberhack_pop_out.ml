

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec length__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d0 t_0))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe__d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_0 in
        (if (((safe__d0 _lh_listcomp_fun_ls_h_1) 1) _lh_popOutId_0_0) then
          (`LH_C((`LH_C(_lh_listcomp_fun_ls_h_1, _lh_popOutId_0_0)), (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_1)))
        else
          (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_1))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and gen__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
              (_lh_listcomp_fun_1 ((enumFromTo__d0 1) _lh_gen_arg2_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((gen__d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0))))
and nsoln__d0 _lh_nsoln_arg1_0 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and testQueenBuiltInType__d0 _lh_testQueenBuiltInType_arg1_0 =
  (nsoln__d0 _lh_testQueenBuiltInType_arg1_0);;
end;;

