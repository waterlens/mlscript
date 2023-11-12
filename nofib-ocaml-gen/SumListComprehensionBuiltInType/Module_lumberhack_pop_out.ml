

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_1 b_1 _lh_popOutId_0_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
          ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_6 ((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_3)))))
  else
    (fun _lh_dummy_1 -> 
      0))
and enumFromTo__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (fun _lh_dummy_0 -> 
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
          (let rec _lh_sum_LH_C_1_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
            (let rec _lh_sum_LH_C_0_0 = (_lh_popOutId_0_0 * _lh_listcomp_fun_ls_h_0) in
              (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0)))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and testSumListComprehensionBuiltInType__d0 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo__d0 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
end;;

