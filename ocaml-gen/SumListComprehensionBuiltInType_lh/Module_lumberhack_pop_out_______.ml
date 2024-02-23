

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec sumAux_lh__d1 ls_1 a_4 =
  (ls_1 a_4);;
let rec enumFromTo_lh__d2 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (fun a_1 -> 
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
          (let rec t_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_0 = (_lh_popOutId_0_0 * _lh_listcomp_fun_ls_h_0) in
              ((sumAux_lh__d1 t_0) (a_1 + h_0)))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0));;
let rec enumFromTo_lh__d1 a_2 b_1 _lh_popOutId_0_1 =
  (if (a_2 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d1 (a_2 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_2 in
        (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
          ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_6 ((enumFromTo_lh__d2 1) _lh_listcomp_fun_ls_h_3)))))
  else
    (fun a_3 -> 
      a_3));;
let rec sum_lh__d1 ls_0 =
  ((sumAux_lh__d1 ls_0) 0);;
let rec testSumListComprehensionBuiltInType_lh__d1 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum_lh__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo_lh__d1 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;
let run () = 1 + (Obj.magic ((testSumListComprehensionBuiltInType_lh__d1 1000)));
end;;

