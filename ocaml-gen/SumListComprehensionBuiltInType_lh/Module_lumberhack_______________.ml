

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec sum_lh__d1 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (let rec _lh_sum_LH_C_1_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec _lh_sum_LH_C_0_0 = (_lh_listcomp_fun_ls_h_1 * _lh_listcomp_fun_ls_h_0) in
              (fun _lh_dummy_0 -> 
                (_lh_sum_LH_C_0_0 + (sum_lh__d1 _lh_sum_LH_C_1_0))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (fun _lh_listcomp_fun_4 -> 
          (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_0 -> 
            ((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_5) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_4)) in
            (_lh_listcomp_fun_5 ((enumFromTo_lh__d2 1) _lh_listcomp_fun_ls_h_3))))))
  else
    (fun _lh_listcomp_fun_6 _lh_dummy_1 -> 
      0));;
let rec testSumListComprehensionBuiltInType_lh__d1 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum_lh__d1 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_7)) in
    (_lh_listcomp_fun_7 ((enumFromTo_lh__d1 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
let run () = 1 + (Obj.magic ((testSumListComprehensionBuiltInType_lh__d1 1000)));
end;;

