

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end) = struct
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_0 ms_0 -> 
          (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
            ((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
            (_lh_listcomp_fun_1 ms_0)))))
  else
    (fun _lh_listcomp_fun_2 ms_1 f_0 f_1 -> 
      (`LH_N)));;
let rec max'_lh__d1 _lh_max'_arg1_0 =
  (match _lh_max'_arg1_0 with
    | `LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_0) -> 
      (match _lh_max'_LH_C_1_0 with
        | `LH_N -> 
          _lh_max'_LH_C_0_0
        | `LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1) -> 
          (if (_lh_max'_LH_C_0_0 < _lh_max'_LH_C_0_1) then
            (max'_lh__d1 (`LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1)))
          else
            (max'_lh__d1 (`LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec abs_lh__d1 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec quotRem_lh__d1 _lh_quotRem_arg1_0 _lh_quotRem_arg2_0 _lh_g_LH_P3_0_4 _lh_g_LH_P3_0_5 _lh_g_LH_P3_1_4 _lh_g_LH_P3_1_5 _lh_g_LH_P3_2_4 =
  (let rec _lh_g_LH_P2_1_0 = (_lh_quotRem_arg1_0 mod _lh_quotRem_arg2_0) in
    (let rec _lh_g_LH_P2_0_0 = (_lh_quotRem_arg1_0 / _lh_quotRem_arg2_0) in
      (match (`LH_P3(_lh_g_LH_P3_0_4, _lh_g_LH_P3_1_4, _lh_g_LH_P3_2_4)) with
        | `LH_P3(_lh_g_LH_P3_0_6, _lh_g_LH_P3_1_6, _lh_g_LH_P3_2_5) -> 
          (match (`LH_P3((_lh_g_LH_P3_0_5 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_0_4)), (_lh_g_LH_P3_1_5 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_1_4)), _lh_g_LH_P2_1_0)) with
            | `LH_P3(_lh_g_LH_P3_0_7, _lh_g_LH_P3_1_7, _lh_g_LH_P3_2_6) -> 
              (if (_lh_g_LH_P3_2_6 = 0) then
                (`LH_P3(_lh_g_LH_P3_2_5, _lh_g_LH_P3_0_6, _lh_g_LH_P3_1_6))
              else
                (let rec _lh_matchIdent_2 = ((quotRem_lh__d1 _lh_g_LH_P3_2_5) _lh_g_LH_P3_2_6) in
                  (((((_lh_matchIdent_2 _lh_g_LH_P3_0_7) _lh_g_LH_P3_0_6) _lh_g_LH_P3_1_7) _lh_g_LH_P3_1_6) _lh_g_LH_P3_2_6)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))));;
let rec gcdE_lh__d1 _lh_gcdE_arg1_0 _lh_gcdE_arg2_0 =
  (match _lh_gcdE_arg1_0 with
    | 0 -> 
      (`LH_P3(_lh_gcdE_arg2_0, 0, 1))
    | _ -> 
      (match (`LH_P3(1, 0, _lh_gcdE_arg1_0)) with
        | `LH_P3(_lh_g_LH_P3_0_0, _lh_g_LH_P3_1_0, _lh_g_LH_P3_2_0) -> 
          (match (`LH_P3(0, 1, _lh_gcdE_arg2_0)) with
            | `LH_P3(_lh_g_LH_P3_0_1, _lh_g_LH_P3_1_1, _lh_g_LH_P3_2_1) -> 
              (if (_lh_g_LH_P3_2_1 = 0) then
                (`LH_P3(_lh_g_LH_P3_2_0, _lh_g_LH_P3_0_0, _lh_g_LH_P3_1_0))
              else
                (let rec _lh_matchIdent_0 = ((quotRem_lh__d1 _lh_g_LH_P3_2_0) _lh_g_LH_P3_2_1) in
                  (((((_lh_matchIdent_0 _lh_g_LH_P3_0_1) _lh_g_LH_P3_0_0) _lh_g_LH_P3_1_1) _lh_g_LH_P3_1_0) _lh_g_LH_P3_2_1)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_1 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_4 -> 
          (let rec t_0 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1) in
            (let rec h_0 = (let rec _lh_f1_LH_P2_1_0 = _lh_listcomp_fun_ls_h_1 in
              (let rec _lh_f1_LH_P2_0_0 = _lh_listcomp_fun_ls_h_2 in
                (fun _lh_dummy_0 -> 
                  (let rec _lh_f2_LH_P3_2_0 = ((gcdE_lh__d1 _lh_f1_LH_P2_0_0) _lh_f1_LH_P2_1_0) in
                    (let rec _lh_f2_LH_P3_1_0 = _lh_f1_LH_P2_1_0 in
                      (let rec _lh_f2_LH_P3_0_0 = _lh_f1_LH_P2_0_0 in
                        (fun _lh_dummy_1 -> 
                          (match _lh_f2_LH_P3_2_0 with
                            | `LH_P3(_lh_f2_LH_P3_0_1, _lh_f2_LH_P3_1_1, _lh_f2_LH_P3_2_1) -> 
                              (abs_lh__d1 ((_lh_f2_LH_P3_0_1 + _lh_f2_LH_P3_1_1) + _lh_f2_LH_P3_2_1))
                            | _ -> 
                              (failwith "error"))))))))) in
              (fun f_3 -> 
                (let rec t_1 = (t_0 f_3) in
                  (let rec h_1 = (f_3 h_0) in
                    (fun f_4 -> 
                      (`LH_C((f_4 h_1), (t_1 f_4))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_6 -> 
      (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3)));;
let rec f1_lh__d1 _lh_f1_arg1_0 =
  (_lh_f1_arg1_0 99);;
let rec f2_lh__d1 _lh_f2_arg1_0 =
  (_lh_f2_arg1_0 99);;
let rec testGcd_nofib_lh__d1 _lh_testGcd_nofib_arg1_0 =
  (let rec ns_1 = ((enumFromTo_lh__d2 5000) (5000 + _lh_testGcd_nofib_arg1_0)) in
    (let rec ms_3 = ((enumFromTo_lh__d1 10000) (10000 + _lh_testGcd_nofib_arg1_0)) in
      (let rec tripls_1 = ((let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
        ((_lh_listcomp_fun_para_2 _lh_listcomp_fun_8) ms_3)) in
        (_lh_listcomp_fun_8 ns_1)) f1_lh__d1) in
        (let rec rs_1 = (tripls_1 f2_lh__d1) in
          (max'_lh__d1 rs_1)))));;
end;;

