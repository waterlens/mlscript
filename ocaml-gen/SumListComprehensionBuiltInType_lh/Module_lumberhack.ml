

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec sum__d0 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_0 -> 
          (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
            ((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
            (_lh_listcomp_fun_1 ((enumFromTo__d1 1) _lh_listcomp_fun_ls_h_0))))))
  else
    (fun _lh_listcomp_fun_2 _lh_dummy_0 -> 
      0))
and enumFromTo__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo__d1 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_1 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_5 -> 
          (let rec _lh_sum_LH_C_1_0 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_1) in
            (let rec _lh_sum_LH_C_0_0 = (_lh_listcomp_fun_ls_h_2 * _lh_listcomp_fun_ls_h_1) in
              (fun _lh_dummy_1 -> 
                (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0))))))))
  else
    (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_7 -> 
      (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)))
and testSumListComprehensionBuiltInType__d0 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum__d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_3)) in
    (_lh_listcomp_fun_3 ((enumFromTo__d0 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
end;;

