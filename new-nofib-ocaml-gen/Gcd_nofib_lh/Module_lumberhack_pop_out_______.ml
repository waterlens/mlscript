

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec abs_lh _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec f2_lh _lh_f2_arg1_0 =
  (match _lh_f2_arg1_0 with
    | `LH_P3(_lh_f2_LH_P3_0_0, _lh_f2_LH_P3_1_0, _lh_f2_LH_P3_2_0) -> 
      (match _lh_f2_LH_P3_2_0 with
        | `LH_P3(_lh_f2_LH_P3_0_1, _lh_f2_LH_P3_1_1, _lh_f2_LH_P3_2_1) -> 
          (abs_lh ((_lh_f2_LH_P3_0_1 + _lh_f2_LH_P3_1_1) + _lh_f2_LH_P3_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec max'_lh _lh_max'_arg1_0 =
  (match _lh_max'_arg1_0 with
    | `LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_0) -> 
      (match _lh_max'_LH_C_1_0 with
        | `LH_N -> 
          _lh_max'_LH_C_0_0
        | `LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1) -> 
          (if (_lh_max'_LH_C_0_0 < _lh_max'_LH_C_0_1) then
            (max'_lh (`LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1)))
          else
            (max'_lh (`LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec g_lh _lh_g_arg1_0 _lh_g_arg2_0 =
  (match _lh_g_arg1_0 with
    | `LH_P3(_lh_g_LH_P3_0_2, _lh_g_LH_P3_1_2, _lh_g_LH_P3_2_1) -> 
      (match _lh_g_arg2_0 with
        | `LH_P3(_lh_g_LH_P3_0_3, _lh_g_LH_P3_1_3, _lh_g_LH_P3_2_2) -> 
          (if (_lh_g_LH_P3_2_2 = 0) then
            (`LH_P3(_lh_g_LH_P3_2_1, _lh_g_LH_P3_0_2, _lh_g_LH_P3_1_2))
          else
            (let rec _lh_matchIdent_0 = ((quotRem_lh _lh_g_LH_P3_2_1) _lh_g_LH_P3_2_2) in
              (((((_lh_matchIdent_0 _lh_g_LH_P3_0_3) _lh_g_LH_P3_0_2) _lh_g_LH_P3_1_3) _lh_g_LH_P3_1_2) _lh_g_LH_P3_2_2)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
quotRem_lh _lh_quotRem_arg1_0 _lh_quotRem_arg2_0 _lh_g_LH_P3_0_0 _lh_g_LH_P3_0_1 _lh_g_LH_P3_1_0 _lh_g_LH_P3_1_1 _lh_g_LH_P3_2_0 =
  (let rec _lh_g_LH_P2_1_0 = (_lh_quotRem_arg1_0 mod _lh_quotRem_arg2_0) in
    (let rec _lh_g_LH_P2_0_0 = (_lh_quotRem_arg1_0 / _lh_quotRem_arg2_0) in
      ((g_lh (`LH_P3(_lh_g_LH_P3_0_0, _lh_g_LH_P3_1_0, _lh_g_LH_P3_2_0))) (`LH_P3((_lh_g_LH_P3_0_1 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_0_0)), (_lh_g_LH_P3_1_1 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_1_0)), _lh_g_LH_P2_1_0)))));;
let rec gcdE_lh _lh_gcdE_arg1_0 _lh_gcdE_arg2_0 =
  (match _lh_gcdE_arg1_0 with
    | 0 -> 
      (`LH_P3(_lh_gcdE_arg2_0, 0, 1))
    | _ -> 
      ((g_lh (`LH_P3(1, 0, _lh_gcdE_arg1_0))) (`LH_P3(0, 1, _lh_gcdE_arg2_0))));;
let rec f1_lh _lh_f1_arg1_0 =
  (match _lh_f1_arg1_0 with
    | `LH_P2(_lh_f1_LH_P2_0_0, _lh_f1_LH_P2_1_0) -> 
      (`LH_P3(_lh_f1_LH_P2_0_0, _lh_f1_LH_P2_1_0, ((gcdE_lh _lh_f1_LH_P2_0_0) _lh_f1_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec test_lh _lh_test_arg1_0 =
  (let rec ns_0 = ((enumFromTo_lh 5000) (5000 + _lh_test_arg1_0)) in
    (let rec ms_0 = ((enumFromTo_lh 10000) (10000 + _lh_test_arg1_0)) in
      (let rec tripls_0 = ((map_lh f1_lh) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                | `LH_N -> 
                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
              (_lh_listcomp_fun_1 ms_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ns_0))) in
        (let rec rs_0 = ((map_lh f2_lh) tripls_0) in
          (max'_lh rs_0)))));;
let rec testGcd_nofib_lh _lh_testGcd_nofib_arg1_0 =
  (test_lh _lh_testGcd_nofib_arg1_0);;
end;;

