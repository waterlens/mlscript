

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec abs__d0 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec enumFromTo__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (fun _lh_listcomp_fun_5 ms_1 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
            ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_6 ms_1)))))
  else
    (fun _lh_listcomp_fun_7 ms_2 f_3 f_4 -> 
      (`LH_N)));;
let rec f1__d0 _lh_f1_arg1_0 =
  (_lh_f1_arg1_0 99);;
let rec f2__d0 _lh_f2_arg1_0 =
  (_lh_f2_arg1_0 99);;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_5 ls_1 =
  (ls_1 f_5);;
let rec max'__d0 _lh_max'_arg1_0 =
  (match _lh_max'_arg1_0 with
    | `LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_0) -> 
      (match _lh_max'_LH_C_1_0 with
        | `LH_N -> 
          _lh_max'_LH_C_0_0
        | `LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1) -> 
          (if (_lh_max'_LH_C_0_0 < _lh_max'_LH_C_0_1) then
            (max'__d0 (`LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1)))
          else
            (max'__d0 (`LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_0 = (let rec _lh_f1_LH_P2_1_0 = _lh_listcomp_fun_ls_h_0 in
              (let rec _lh_f1_LH_P2_0_0 = _lh_listcomp_fun_ls_h_1 in
                (fun _lh_dummy_0 -> 
                  (let rec _lh_f2_LH_P3_2_0 = ((gcdE__d0 _lh_f1_LH_P2_0_0) _lh_f1_LH_P2_1_0) in
                    (fun _lh_dummy_1 -> 
                      (match _lh_f2_LH_P3_2_0 with
                        | `LH_P3(_lh_f2_LH_P3_0_0, _lh_f2_LH_P3_1_0, _lh_f2_LH_P3_2_1) -> 
                          (abs__d0 ((_lh_f2_LH_P3_0_0 + _lh_f2_LH_P3_1_0) + _lh_f2_LH_P3_2_1))
                        | _ -> 
                          (failwith "error"))))))) in
              (fun f_1 -> 
                (let rec t_1 = ((map__d0 f_1) t_0) in
                  (let rec h_1 = (f_1 h_0) in
                    (fun f_2 -> 
                      (`LH_C((f_2 h_1), ((map__d1 f_2) t_1))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and g__d0 _lh_g_arg1_0 _lh_g_arg2_0 =
  (match _lh_g_arg1_0 with
    | `LH_P3(_lh_g_LH_P3_0_2, _lh_g_LH_P3_1_2, _lh_g_LH_P3_2_1) -> 
      (match _lh_g_arg2_0 with
        | `LH_P3(_lh_g_LH_P3_0_3, _lh_g_LH_P3_1_3, _lh_g_LH_P3_2_2) -> 
          (if (_lh_g_LH_P3_2_2 = 0) then
            (`LH_P3(_lh_g_LH_P3_2_1, _lh_g_LH_P3_0_2, _lh_g_LH_P3_1_2))
          else
            (let rec _lh_matchIdent_0 = ((quotRem__d0 _lh_g_LH_P3_2_1) _lh_g_LH_P3_2_2) in
              (((((_lh_matchIdent_0 _lh_g_LH_P3_0_2) _lh_g_LH_P3_0_3) _lh_g_LH_P3_1_2) _lh_g_LH_P3_1_3) _lh_g_LH_P3_2_2)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and gcdE__d0 _lh_gcdE_arg1_0 _lh_gcdE_arg2_0 =
  (match _lh_gcdE_arg1_0 with
    | 0 -> 
      (`LH_P3(_lh_gcdE_arg2_0, 0, 1))
    | _ -> 
      ((g__d0 (`LH_P3(1, 0, _lh_gcdE_arg1_0))) (`LH_P3(0, 1, _lh_gcdE_arg2_0))))
and quotRem__d0 _lh_quotRem_arg1_0 _lh_quotRem_arg2_0 =
  (let rec _lh_g_LH_P2_1_0 = (_lh_quotRem_arg1_0 mod _lh_quotRem_arg2_0) in
    (let rec _lh_g_LH_P2_0_0 = (_lh_quotRem_arg1_0 / _lh_quotRem_arg2_0) in
      (fun _lh_g_LH_P3_0_0 _lh_g_LH_P3_0_1 _lh_g_LH_P3_1_0 _lh_g_LH_P3_1_1 _lh_g_LH_P3_2_0 -> 
        ((g__d0 (`LH_P3(_lh_g_LH_P3_0_1, _lh_g_LH_P3_1_1, _lh_g_LH_P3_2_0))) (`LH_P3((_lh_g_LH_P3_0_0 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_0_1)), (_lh_g_LH_P3_1_0 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_1_1)), _lh_g_LH_P2_1_0))))))
and testGcd_nofib__d0 _lh_testGcd_nofib_arg1_0 =
  (test__d0 _lh_testGcd_nofib_arg1_0)
and test__d0 _lh_test_arg1_0 =
  (let rec ns_0 = ((enumFromTo__d0 5000) (5000 + _lh_test_arg1_0)) in
    (let rec ms_0 = ((enumFromTo__d1 10000) (10000 + _lh_test_arg1_0)) in
      (let rec tripls_0 = ((map__d0 f1__d0) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
        ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_4) ms_0)) in
        (_lh_listcomp_fun_4 ns_0))) in
        (let rec rs_0 = ((map__d1 f2__d0) tripls_0) in
          (max'__d0 rs_0)))));;
end;;

