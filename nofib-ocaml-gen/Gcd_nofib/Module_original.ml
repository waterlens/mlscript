
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec abs__d0 _lh_abs_arg1_1 =
  (if (_lh_abs_arg1_1 < 0) then
    (0 - _lh_abs_arg1_1)
  else
    _lh_abs_arg1_1);;
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
let rec map__d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_3 h_2_1), ((map__d1 f_1_3) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec max'__d0 _lh_max'_arg1_1 =
  (match _lh_max'_arg1_1 with
    | `LH_C(_lh_max'_LH_C_0_2, _lh_max'_LH_C_1_2) -> 
      (match _lh_max'_LH_C_1_2 with
        | `LH_N -> 
          _lh_max'_LH_C_0_2
        | `LH_C(_lh_max'_LH_C_0_3, _lh_max'_LH_C_1_3) -> 
          (if (_lh_max'_LH_C_0_2 < _lh_max'_LH_C_0_3) then
            (max'__d0 (`LH_C(_lh_max'_LH_C_0_3, _lh_max'_LH_C_1_3)))
          else
            (max'__d0 (`LH_C(_lh_max'_LH_C_0_2, _lh_max'_LH_C_1_3))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec quotRem__d0 _lh_quotRem_arg1_1 _lh_quotRem_arg2_1 =
  (`LH_P2((_lh_quotRem_arg1_1 / _lh_quotRem_arg2_1), (_lh_quotRem_arg1_1 mod _lh_quotRem_arg2_1)));;
let rec f1__d0 _lh_f1_arg1_1 =
  (match _lh_f1_arg1_1 with
    | `LH_P2(_lh_f1_LH_P2_0_1, _lh_f1_LH_P2_1_1) -> 
      (`LH_P3(_lh_f1_LH_P2_0_1, _lh_f1_LH_P2_1_1, ((gcdE__d0 _lh_f1_LH_P2_0_1) _lh_f1_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and f2__d0 _lh_f2_arg1_1 =
  (match _lh_f2_arg1_1 with
    | `LH_P3(_lh_f2_LH_P3_0_2, _lh_f2_LH_P3_1_2, _lh_f2_LH_P3_2_2) -> 
      (match _lh_f2_LH_P3_2_2 with
        | `LH_P3(_lh_f2_LH_P3_0_3, _lh_f2_LH_P3_1_3, _lh_f2_LH_P3_2_3) -> 
          (abs__d0 ((_lh_f2_LH_P3_0_3 + _lh_f2_LH_P3_1_3) + _lh_f2_LH_P3_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and g__d0 _lh_g_arg1_1 _lh_g_arg2_1 =
  (match _lh_g_arg1_1 with
    | `LH_P3(_lh_g_LH_P3_0_2, _lh_g_LH_P3_1_2, _lh_g_LH_P3_2_2) -> 
      (match _lh_g_arg2_1 with
        | `LH_P3(_lh_g_LH_P3_0_3, _lh_g_LH_P3_1_3, _lh_g_LH_P3_2_3) -> 
          (if (_lh_g_LH_P3_2_3 = 0) then
            (`LH_P3(_lh_g_LH_P3_2_2, _lh_g_LH_P3_0_2, _lh_g_LH_P3_1_2))
          else
            (let rec _lh_matchIdent_1 = ((quotRem__d0 _lh_g_LH_P3_2_2) _lh_g_LH_P3_2_3) in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_g_LH_P2_0_1, _lh_g_LH_P2_1_1) -> 
                  ((g__d0 (`LH_P3(_lh_g_LH_P3_0_3, _lh_g_LH_P3_1_3, _lh_g_LH_P3_2_3))) (`LH_P3((_lh_g_LH_P3_0_2 - (_lh_g_LH_P2_0_1 * _lh_g_LH_P3_0_3)), (_lh_g_LH_P3_1_2 - (_lh_g_LH_P2_0_1 * _lh_g_LH_P3_1_3)), _lh_g_LH_P2_1_1)))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and gcdE__d0 _lh_gcdE_arg1_1 _lh_gcdE_arg2_1 =
  (match _lh_gcdE_arg1_1 with
    | 0 -> 
      (`LH_P3(_lh_gcdE_arg2_1, 0, 1))
    | _ -> 
      ((g__d0 (`LH_P3(1, 0, _lh_gcdE_arg1_1))) (`LH_P3(0, 1, _lh_gcdE_arg2_1))))
and testGcd_nofib__d0 _lh_testGcd_nofib_arg1_1 =
  (test__d0 _lh_testGcd_nofib_arg1_1)
and test__d0 _lh_test_arg1_1 =
  (let rec ns_1 = ((enumFromTo__d0 5000) (5000 + _lh_test_arg1_1)) in
    (let rec ms_1 = ((enumFromTo__d1 10000) (10000 + _lh_test_arg1_1)) in
      (let rec tripls_1 = ((map__d0 f1__d0) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_h_3)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                | `LH_N -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ms_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 ns_1))) in
        (let rec rs_1 = ((map__d1 f2__d0) tripls_1) in
          (max'__d0 rs_1)))));;
end;;

