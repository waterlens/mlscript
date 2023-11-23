

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec length__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d0 t_2_2))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_1, _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 <> _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe__d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec gen__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (if (((safe__d0 _lh_listcomp_fun_ls_h_3) 1) _lh_listcomp_fun_ls_h_2) then
                    (`LH_C((`LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                  else
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                | `LH_N -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((enumFromTo__d0 1) _lh_gen_arg2_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 ((gen__d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1))))
and nsoln__d0 _lh_nsoln_arg1_1 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueenBuiltInType__d0 _lh_testQueenBuiltInType_arg1_1 =
  (nsoln__d0 _lh_testQueenBuiltInType_arg1_1);;
end;;

