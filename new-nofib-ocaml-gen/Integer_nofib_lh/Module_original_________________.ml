
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromThenTo_lh a_0 t_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, (((enumFromThenTo_lh t_0) ((2 * t_0) - a_0)) b_0)))
  else
    (`LH_N));;
let rec integerbench_lh _lh_integerbench_arg1_0 _lh_integerbench_arg2_0 _lh_integerbench_arg3_0 _lh_integerbench_arg4_0 _lh_integerbench_arg5_0 _lh_integerbench_arg6_0 _lh_integerbench_arg7_0 =
  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C(((_lh_integerbench_arg1_0 _lh_listcomp_fun_ls_h_2) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
          (_lh_listcomp_fun_3 (((enumFromThenTo_lh _lh_integerbench_arg5_0) (_lh_integerbench_arg2_0 + _lh_integerbench_arg6_0)) _lh_integerbench_arg7_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 (((enumFromThenTo_lh _lh_integerbench_arg2_0) (_lh_integerbench_arg2_0 + _lh_integerbench_arg3_0)) _lh_integerbench_arg4_0)));;
let rec intbench_lh _lh_intbench_arg1_0 _lh_intbench_arg2_0 _lh_intbench_arg3_0 _lh_intbench_arg4_0 _lh_intbench_arg5_0 _lh_intbench_arg6_0 _lh_intbench_arg7_0 =
  (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
          (match _lh_listcomp_fun_para_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
              (`LH_C(((_lh_intbench_arg1_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            | `LH_N -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
          (_lh_listcomp_fun_1 (((enumFromThenTo_lh _lh_intbench_arg5_0) (_lh_intbench_arg2_0 + _lh_intbench_arg6_0)) _lh_intbench_arg7_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 (((enumFromThenTo_lh _lh_intbench_arg2_0) (_lh_intbench_arg2_0 + _lh_intbench_arg3_0)) _lh_intbench_arg4_0)));;
let rec runbench_lh _lh_runbench_arg1_0 _lh_runbench_arg2_0 _lh_runbench_arg3_0 _lh_runbench_arg4_0 _lh_runbench_arg5_0 _lh_runbench_arg6_0 _lh_runbench_arg7_0 _lh_runbench_arg8_0 _lh_runbench_arg9_0 =
  (`LH_P2((((((((intbench_lh _lh_runbench_arg2_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0), (((((((integerbench_lh _lh_runbench_arg1_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0)));;
let rec runalltests_lh _lh_runalltests_arg1_0 _lh_runalltests_arg2_0 _lh_runalltests_arg3_0 _lh_runalltests_arg4_0 _lh_runalltests_arg5_0 _lh_runalltests_arg6_0 =
  (`LH_P10((((((((((runbench_lh (fun a_1 b_1 -> 
    (a_1 + b_1))) (fun a_2 b_2 -> 
    (a_2 + b_2))) (`LH_C('(', (`LH_C('+', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_3 b_3 -> 
    (a_3 - b_3))) (fun a_4 b_4 -> 
    (a_4 - b_4))) (`LH_C('(', (`LH_C('-', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_5 b_5 -> 
    (a_5 * b_5))) (fun a_6 b_6 -> 
    (a_6 * b_6))) (`LH_C('(', (`LH_C('*', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_7 b_7 -> 
    (a_7 / b_7))) (fun a_8 b_8 -> 
    (a_8 / b_8))) (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_9 b_9 -> 
    (a_9 mod b_9))) (fun a_1_0 b_1_0 -> 
    (a_1_0 mod b_1_0))) (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_1_1 b_1_1 -> 
    (a_1_1 = b_1_1))) (fun a_1_2 b_1_2 -> 
    (a_1_2 = b_1_2))) (`LH_C('(', (`LH_C('=', (`LH_C('=', (`LH_C(')', (`LH_N)))))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_1_3 b_1_3 -> 
    (a_1_3 < b_1_3))) (fun a_1_4 b_1_4 -> 
    (a_1_4 < b_1_4))) (`LH_C('(', (`LH_C('<', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_1_5 b_1_5 -> 
    (a_1_5 <= b_1_5))) (fun a_1_6 b_1_6 -> 
    (a_1_6 <= b_1_6))) (`LH_C('(', (`LH_C('<', (`LH_C('=', (`LH_C(')', (`LH_N)))))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_1_7 b_1_7 -> 
    (a_1_7 > b_1_7))) (fun a_1_8 b_1_8 -> 
    (a_1_8 > b_1_8))) (`LH_C('(', (`LH_C('>', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh (fun a_1_9 b_1_9 -> 
    (a_1_9 >= b_1_9))) (fun a_2_0 b_2_0 -> 
    (a_2_0 >= b_2_0))) (`LH_C('(', (`LH_C('>', (`LH_C('=', (`LH_C(')', (`LH_N)))))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0)));;
let rec testInteger_nofib_lh _lh_testInteger_nofib_arg1_0 =
  ((((((runalltests_lh (0 - _lh_testInteger_nofib_arg1_0)) 31) (0 + _lh_testInteger_nofib_arg1_0)) (0 - _lh_testInteger_nofib_arg1_0)) 31) (0 + _lh_testInteger_nofib_arg1_0));;
let run () = 1 + (Obj.magic ((testInteger_nofib_lh 3000)));
end;;

