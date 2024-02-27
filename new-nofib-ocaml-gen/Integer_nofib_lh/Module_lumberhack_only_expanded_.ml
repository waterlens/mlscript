

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec const14000001_lh__d1 =
  (Z.of_int 14000001);;
let rec enumFromThenTo_lh__d1 a_0 t_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, (((enumFromThenTo_lh__d1 t_0) ((2 * t_0) - a_0)) b_0)))
  else
    (`LH_N));;
let rec intbench_lh__d2 _lh_intbench_arg1_0 _lh_intbench_arg2_0 _lh_intbench_arg3_0 _lh_intbench_arg4_0 _lh_intbench_arg5_0 _lh_intbench_arg6_0 _lh_intbench_arg7_0 =
  (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
          (match _lh_listcomp_fun_para_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
              (`LH_C(((_lh_intbench_arg1_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_ls_h_1), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            | `LH_N -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
          (_lh_listcomp_fun_1 (((enumFromThenTo_lh__d1 (Z.to_int _lh_intbench_arg5_0)) ((Z.to_int _lh_intbench_arg2_0) + (Z.to_int _lh_intbench_arg6_0))) (Z.to_int _lh_intbench_arg7_0))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 (((enumFromThenTo_lh__d1 (Z.to_int _lh_intbench_arg2_0)) ((Z.to_int _lh_intbench_arg2_0) + (Z.to_int _lh_intbench_arg3_0))) (Z.to_int _lh_intbench_arg4_0))));;
let rec z_enumFromThenTo_lh__d1 _lh_z_enumFromThenTo_arg1_0 _lh_z_enumFromThenTo_arg2_0 _lh_z_enumFromThenTo_arg3_0 =
  (if ((Z.leq _lh_z_enumFromThenTo_arg1_0) _lh_z_enumFromThenTo_arg3_0) then
    (`LH_C(_lh_z_enumFromThenTo_arg1_0, (((z_enumFromThenTo_lh__d1 _lh_z_enumFromThenTo_arg2_0) ((Z.sub ((Z.mul (Z.of_int 2)) _lh_z_enumFromThenTo_arg2_0)) _lh_z_enumFromThenTo_arg1_0)) _lh_z_enumFromThenTo_arg3_0)))
  else
    (`LH_N));;
let rec integerbench_lh__d1 _lh_integerbench_arg1_0 _lh_integerbench_arg2_0 _lh_integerbench_arg3_0 _lh_integerbench_arg4_0 _lh_integerbench_arg5_0 _lh_integerbench_arg6_0 _lh_integerbench_arg7_0 =
  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C(((_lh_integerbench_arg1_0 _lh_listcomp_fun_ls_h_2) _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
          (_lh_listcomp_fun_3 (((z_enumFromThenTo_lh__d1 _lh_integerbench_arg5_0) ((Z.add _lh_integerbench_arg2_0) _lh_integerbench_arg6_0)) _lh_integerbench_arg7_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 (((z_enumFromThenTo_lh__d1 _lh_integerbench_arg2_0) ((Z.add _lh_integerbench_arg2_0) _lh_integerbench_arg3_0)) _lh_integerbench_arg4_0)));;
let rec runbench_lh__d4 _lh_runbench_arg1_6 _lh_runbench_arg2_6 _lh_runbench_arg3_6 _lh_runbench_arg4_6 _lh_runbench_arg5_6 _lh_runbench_arg6_6 _lh_runbench_arg7_6 _lh_runbench_arg8_6 _lh_runbench_arg9_6 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_6) _lh_runbench_arg4_6) _lh_runbench_arg5_6) _lh_runbench_arg6_6) _lh_runbench_arg4_6) _lh_runbench_arg5_6) _lh_runbench_arg6_6), (((((((integerbench_lh__d1 _lh_runbench_arg1_6) _lh_runbench_arg4_6) _lh_runbench_arg5_6) _lh_runbench_arg6_6) _lh_runbench_arg4_6) _lh_runbench_arg5_6) _lh_runbench_arg6_6)));;
let rec runbench_lh__d6 _lh_runbench_arg1_4 _lh_runbench_arg2_4 _lh_runbench_arg3_4 _lh_runbench_arg4_4 _lh_runbench_arg5_4 _lh_runbench_arg6_4 _lh_runbench_arg7_4 _lh_runbench_arg8_4 _lh_runbench_arg9_4 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_4) _lh_runbench_arg4_4) _lh_runbench_arg5_4) _lh_runbench_arg6_4) _lh_runbench_arg4_4) _lh_runbench_arg5_4) _lh_runbench_arg6_4), (((((((integerbench_lh__d1 _lh_runbench_arg1_4) _lh_runbench_arg4_4) _lh_runbench_arg5_4) _lh_runbench_arg6_4) _lh_runbench_arg4_4) _lh_runbench_arg5_4) _lh_runbench_arg6_4)));;
let rec runbench_lh__d7 _lh_runbench_arg1_3 _lh_runbench_arg2_3 _lh_runbench_arg3_3 _lh_runbench_arg4_3 _lh_runbench_arg5_3 _lh_runbench_arg6_3 _lh_runbench_arg7_3 _lh_runbench_arg8_3 _lh_runbench_arg9_3 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_3) _lh_runbench_arg4_3) _lh_runbench_arg5_3) _lh_runbench_arg6_3) _lh_runbench_arg4_3) _lh_runbench_arg5_3) _lh_runbench_arg6_3), (((((((integerbench_lh__d1 _lh_runbench_arg1_3) _lh_runbench_arg4_3) _lh_runbench_arg5_3) _lh_runbench_arg6_3) _lh_runbench_arg4_3) _lh_runbench_arg5_3) _lh_runbench_arg6_3)));;
let rec runbench_lh__d9 _lh_runbench_arg1_1 _lh_runbench_arg2_1 _lh_runbench_arg3_1 _lh_runbench_arg4_1 _lh_runbench_arg5_1 _lh_runbench_arg6_1 _lh_runbench_arg7_1 _lh_runbench_arg8_1 _lh_runbench_arg9_1 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_1) _lh_runbench_arg4_1) _lh_runbench_arg5_1) _lh_runbench_arg6_1) _lh_runbench_arg4_1) _lh_runbench_arg5_1) _lh_runbench_arg6_1), (((((((integerbench_lh__d1 _lh_runbench_arg1_1) _lh_runbench_arg4_1) _lh_runbench_arg5_1) _lh_runbench_arg6_1) _lh_runbench_arg4_1) _lh_runbench_arg5_1) _lh_runbench_arg6_1)));;
let rec intbench_lh__d1 _lh_intbench_arg1_1 _lh_intbench_arg2_1 _lh_intbench_arg3_1 _lh_intbench_arg4_1 _lh_intbench_arg5_1 _lh_intbench_arg6_1 _lh_intbench_arg7_1 =
  (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
          (match _lh_listcomp_fun_para_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
              (`LH_C(((_lh_intbench_arg1_1 _lh_listcomp_fun_ls_h_4) _lh_listcomp_fun_ls_h_5), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
            | `LH_N -> 
              (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
          (_lh_listcomp_fun_5 (((enumFromThenTo_lh__d1 (Z.to_int _lh_intbench_arg5_1)) ((Z.to_int _lh_intbench_arg2_1) + (Z.to_int _lh_intbench_arg6_1))) (Z.to_int _lh_intbench_arg7_1))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4 (((enumFromThenTo_lh__d1 (Z.to_int _lh_intbench_arg2_1)) ((Z.to_int _lh_intbench_arg2_1) + (Z.to_int _lh_intbench_arg3_1))) (Z.to_int _lh_intbench_arg4_1))));;
let rec runbench_lh__d1 _lh_runbench_arg1_9 _lh_runbench_arg2_9 _lh_runbench_arg3_9 _lh_runbench_arg4_9 _lh_runbench_arg5_9 _lh_runbench_arg6_9 _lh_runbench_arg7_9 _lh_runbench_arg8_9 _lh_runbench_arg9_9 =
  (`LH_P2((((((((intbench_lh__d1 _lh_runbench_arg2_9) _lh_runbench_arg4_9) _lh_runbench_arg5_9) _lh_runbench_arg6_9) _lh_runbench_arg4_9) _lh_runbench_arg5_9) _lh_runbench_arg6_9), (((((((integerbench_lh__d1 _lh_runbench_arg1_9) _lh_runbench_arg4_9) _lh_runbench_arg5_9) _lh_runbench_arg6_9) _lh_runbench_arg4_9) _lh_runbench_arg5_9) _lh_runbench_arg6_9)));;
let rec runbench_lh__d5 _lh_runbench_arg1_5 _lh_runbench_arg2_5 _lh_runbench_arg3_5 _lh_runbench_arg4_5 _lh_runbench_arg5_5 _lh_runbench_arg6_5 _lh_runbench_arg7_5 _lh_runbench_arg8_5 _lh_runbench_arg9_5 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_5) _lh_runbench_arg4_5) _lh_runbench_arg5_5) _lh_runbench_arg6_5) _lh_runbench_arg4_5) _lh_runbench_arg5_5) _lh_runbench_arg6_5), (((((((integerbench_lh__d1 _lh_runbench_arg1_5) _lh_runbench_arg4_5) _lh_runbench_arg5_5) _lh_runbench_arg6_5) _lh_runbench_arg4_5) _lh_runbench_arg5_5) _lh_runbench_arg6_5)));;
let rec runbench_lh__d1_d0 _lh_runbench_arg1_0 _lh_runbench_arg2_0 _lh_runbench_arg3_0 _lh_runbench_arg4_0 _lh_runbench_arg5_0 _lh_runbench_arg6_0 _lh_runbench_arg7_0 _lh_runbench_arg8_0 _lh_runbench_arg9_0 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0), (((((((integerbench_lh__d1 _lh_runbench_arg1_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0) _lh_runbench_arg4_0) _lh_runbench_arg5_0) _lh_runbench_arg6_0)));;
let rec runbench_lh__d2 _lh_runbench_arg1_8 _lh_runbench_arg2_8 _lh_runbench_arg3_8 _lh_runbench_arg4_8 _lh_runbench_arg5_8 _lh_runbench_arg6_8 _lh_runbench_arg7_8 _lh_runbench_arg8_8 _lh_runbench_arg9_8 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_8) _lh_runbench_arg4_8) _lh_runbench_arg5_8) _lh_runbench_arg6_8) _lh_runbench_arg4_8) _lh_runbench_arg5_8) _lh_runbench_arg6_8), (((((((integerbench_lh__d1 _lh_runbench_arg1_8) _lh_runbench_arg4_8) _lh_runbench_arg5_8) _lh_runbench_arg6_8) _lh_runbench_arg4_8) _lh_runbench_arg5_8) _lh_runbench_arg6_8)));;
let rec runbench_lh__d3 _lh_runbench_arg1_7 _lh_runbench_arg2_7 _lh_runbench_arg3_7 _lh_runbench_arg4_7 _lh_runbench_arg5_7 _lh_runbench_arg6_7 _lh_runbench_arg7_7 _lh_runbench_arg8_7 _lh_runbench_arg9_7 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_7) _lh_runbench_arg4_7) _lh_runbench_arg5_7) _lh_runbench_arg6_7) _lh_runbench_arg4_7) _lh_runbench_arg5_7) _lh_runbench_arg6_7), (((((((integerbench_lh__d1 _lh_runbench_arg1_7) _lh_runbench_arg4_7) _lh_runbench_arg5_7) _lh_runbench_arg6_7) _lh_runbench_arg4_7) _lh_runbench_arg5_7) _lh_runbench_arg6_7)));;
let rec runbench_lh__d8 _lh_runbench_arg1_2 _lh_runbench_arg2_2 _lh_runbench_arg3_2 _lh_runbench_arg4_2 _lh_runbench_arg5_2 _lh_runbench_arg6_2 _lh_runbench_arg7_2 _lh_runbench_arg8_2 _lh_runbench_arg9_2 =
  (`LH_P2((((((((intbench_lh__d2 _lh_runbench_arg2_2) _lh_runbench_arg4_2) _lh_runbench_arg5_2) _lh_runbench_arg6_2) _lh_runbench_arg4_2) _lh_runbench_arg5_2) _lh_runbench_arg6_2), (((((((integerbench_lh__d1 _lh_runbench_arg1_2) _lh_runbench_arg4_2) _lh_runbench_arg5_2) _lh_runbench_arg6_2) _lh_runbench_arg4_2) _lh_runbench_arg5_2) _lh_runbench_arg6_2)));;
let rec runalltests_lh__d1 _lh_runalltests_arg1_0 _lh_runalltests_arg2_0 _lh_runalltests_arg3_0 _lh_runalltests_arg4_0 _lh_runalltests_arg5_0 _lh_runalltests_arg6_0 =
  (`LH_P10((((((((((runbench_lh__d3 (fun a_1 b_1 -> 
    ((Z.add a_1) b_1))) (fun a_2 b_2 -> 
    (a_2 + b_2))) (`LH_C('(', (`LH_C('+', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d6 (fun a_3 b_3 -> 
    ((Z.sub a_3) b_3))) (fun a_4 b_4 -> 
    (a_4 - b_4))) (`LH_C('(', (`LH_C('-', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d7 (fun a_5 b_5 -> 
    ((Z.mul a_5) b_5))) (fun a_6 b_6 -> 
    (a_6 * b_6))) (`LH_C('(', (`LH_C('*', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d2 (fun a_7 b_7 -> 
    ((Z.div a_7) b_7))) (fun a_8 b_8 -> 
    (a_8 / b_8))) (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d1_d0 (fun a_9 b_9 -> 
    ((Z.rem a_9) b_9))) (fun a_1_0 b_1_0 -> 
    (a_1_0 mod b_1_0))) (`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d5 (fun a_1_1 b_1_1 -> 
    ((Z.equal a_1_1) b_1_1))) (fun a_1_2 b_1_2 -> 
    (a_1_2 = b_1_2))) (`LH_C('(', (`LH_C('=', (`LH_C('=', (`LH_C(')', (`LH_N)))))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d1 (fun a_1_3 b_1_3 -> 
    ((Z.lt a_1_3) b_1_3))) (fun a_1_4 b_1_4 -> 
    (a_1_4 < b_1_4))) (`LH_C('(', (`LH_C('<', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d4 (fun a_1_5 b_1_5 -> 
    ((Z.leq a_1_5) b_1_5))) (fun a_1_6 b_1_6 -> 
    (a_1_6 <= b_1_6))) (`LH_C('(', (`LH_C('<', (`LH_C('=', (`LH_C(')', (`LH_N)))))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d9 (fun a_1_7 b_1_7 -> 
    ((Z.gt a_1_7) b_1_7))) (fun a_1_8 b_1_8 -> 
    (a_1_8 > b_1_8))) (`LH_C('(', (`LH_C('>', (`LH_C(')', (`LH_N)))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0), (((((((((runbench_lh__d8 (fun a_1_9 b_1_9 -> 
    ((Z.geq a_1_9) b_1_9))) (fun a_2_0 b_2_0 -> 
    (a_2_0 >= b_2_0))) (`LH_C('(', (`LH_C('>', (`LH_C('=', (`LH_C(')', (`LH_N)))))))))) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0) _lh_runalltests_arg1_0) _lh_runalltests_arg2_0) _lh_runalltests_arg3_0)));;
let rec const2100000000_lh__d1 =
  (Z.of_int 2100000000);;
let rec const2100000000_lh__d2 =
  (Z.of_int 2100000000);;
let rec const0_lh__d1 =
  (Z.of_int 0);;
let rec const2100000000_lh__d4 =
  (Z.of_int 2100000000);;
let rec const0_lh__d2 =
  (Z.of_int 0);;
let rec const2100000000_lh__d3 =
  (Z.of_int 2100000000);;
let rec testInteger_nofib_lh__d1 _lh_testInteger_nofib_arg1_0 =
  ((((((runalltests_lh__d1 ((Z.sub const0_lh__d2) const2100000000_lh__d2)) _lh_testInteger_nofib_arg1_0) const2100000000_lh__d3) ((Z.sub const0_lh__d1) const2100000000_lh__d4)) _lh_testInteger_nofib_arg1_0) const2100000000_lh__d1);;
let run () = 1 + (Obj.magic ((testInteger_nofib_lh__d1 const14000001_lh__d1)));
end;;

