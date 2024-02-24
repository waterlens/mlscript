

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec z_enumFromTo_lh__d1 _lh_z_enumFromTo_arg1_1 _lh_z_enumFromTo_arg2_1 =
  (if ((Z.leq _lh_z_enumFromTo_arg1_1) _lh_z_enumFromTo_arg2_1) then
    (`LH_C(_lh_z_enumFromTo_arg1_1, ((z_enumFromTo_lh__d1 ((Z.add _lh_z_enumFromTo_arg1_1) (Z.of_int 1))) _lh_z_enumFromTo_arg2_1)))
  else
    (`LH_N));;
let rec z_enumFromTo_lh__d2 _lh_z_enumFromTo_arg1_0 _lh_z_enumFromTo_arg2_0 =
  (if ((Z.leq _lh_z_enumFromTo_arg1_0) _lh_z_enumFromTo_arg2_0) then
    (`LH_C(_lh_z_enumFromTo_arg1_0, ((z_enumFromTo_lh__d2 ((Z.add _lh_z_enumFromTo_arg1_0) (Z.of_int 1))) _lh_z_enumFromTo_arg2_0)))
  else
    (`LH_N));;
let rec map_lh__d2 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d2 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec quotRem_lh__d1 _lh_quotRem_arg1_0 _lh_quotRem_arg2_0 =
  (`LH_P2(((Z.div _lh_quotRem_arg1_0) _lh_quotRem_arg2_0), ((Z.rem _lh_quotRem_arg1_0) _lh_quotRem_arg2_0)));;
let rec g_lh__d1 _lh_g_arg1_0 _lh_g_arg2_0 =
  (match _lh_g_arg1_0 with
    | `LH_P3(_lh_g_LH_P3_0_0, _lh_g_LH_P3_1_0, _lh_g_LH_P3_2_0) -> 
      (match _lh_g_arg2_0 with
        | `LH_P3(_lh_g_LH_P3_0_1, _lh_g_LH_P3_1_1, _lh_g_LH_P3_2_1) -> 
          (if ((Z.equal _lh_g_LH_P3_2_1) (Z.of_int 0)) then
            (`LH_P3(_lh_g_LH_P3_2_0, _lh_g_LH_P3_0_0, _lh_g_LH_P3_1_0))
          else
            (let rec _lh_matchIdent_0 = ((quotRem_lh__d1 _lh_g_LH_P3_2_0) _lh_g_LH_P3_2_1) in
              (match _lh_matchIdent_0 with
                | `LH_P2(_lh_g_LH_P2_0_0, _lh_g_LH_P2_1_0) -> 
                  ((g_lh__d1 (`LH_P3(_lh_g_LH_P3_0_1, _lh_g_LH_P3_1_1, _lh_g_LH_P3_2_1))) (`LH_P3(((Z.sub _lh_g_LH_P3_0_0) ((Z.mul _lh_g_LH_P2_0_0) _lh_g_LH_P3_0_1)), ((Z.sub _lh_g_LH_P3_1_0) ((Z.mul _lh_g_LH_P2_0_0) _lh_g_LH_P3_1_1)), _lh_g_LH_P2_1_0)))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec gcdE_lh__d1 _lh_gcdE_arg1_0 _lh_gcdE_arg2_0 =
  (if ((Z.equal _lh_gcdE_arg1_0) (Z.of_int 0)) then
    (`LH_P3(_lh_gcdE_arg2_0, (Z.of_int 0), (Z.of_int 1)))
  else
    ((g_lh__d1 (`LH_P3((Z.of_int 1), (Z.of_int 0), _lh_gcdE_arg1_0))) (`LH_P3((Z.of_int 0), (Z.of_int 1), _lh_gcdE_arg2_0))));;
let rec f1_lh__d1 _lh_f1_arg1_0 =
  (match _lh_f1_arg1_0 with
    | `LH_P2(_lh_f1_LH_P2_0_0, _lh_f1_LH_P2_1_0) -> 
      (`LH_P3(_lh_f1_LH_P2_0_0, _lh_f1_LH_P2_1_0, ((gcdE_lh__d1 _lh_f1_LH_P2_0_0) _lh_f1_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec abs_lh__d1 _lh_abs_arg1_0 =
  (if ((Z.lt _lh_abs_arg1_0) (Z.of_int 0)) then
    ((Z.sub (Z.of_int 0)) _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec f2_lh__d1 _lh_f2_arg1_0 =
  (match _lh_f2_arg1_0 with
    | `LH_P3(_lh_f2_LH_P3_0_0, _lh_f2_LH_P3_1_0, _lh_f2_LH_P3_2_0) -> 
      (match _lh_f2_LH_P3_2_0 with
        | `LH_P3(_lh_f2_LH_P3_0_1, _lh_f2_LH_P3_1_1, _lh_f2_LH_P3_2_1) -> 
          (abs_lh__d1 ((Z.add ((Z.add _lh_f2_LH_P3_0_1) _lh_f2_LH_P3_1_1)) _lh_f2_LH_P3_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec max'_lh__d1 _lh_max'_arg1_0 =
  (match _lh_max'_arg1_0 with
    | `LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_0) -> 
      (match _lh_max'_LH_C_1_0 with
        | `LH_N -> 
          _lh_max'_LH_C_0_0
        | `LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1) -> 
          (if ((Z.lt _lh_max'_LH_C_0_0) _lh_max'_LH_C_0_1) then
            (max'_lh__d1 (`LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1)))
          else
            (max'_lh__d1 (`LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lh__d1 f_1) t_1)))
    | `LH_N -> 
      (`LH_N));;
let rec test_lh__d1 _lh_test_arg1_0 =
  (let rec ns_0 = ((z_enumFromTo_lh__d2 (Z.of_int 5000)) ((Z.add (Z.of_int 5000)) _lh_test_arg1_0)) in
    (let rec ms_0 = ((z_enumFromTo_lh__d1 (Z.of_int 10000)) ((Z.add (Z.of_int 10000)) _lh_test_arg1_0)) in
      (let rec tripls_0 = ((map_lh__d1 f1_lh__d1) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
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
        (let rec rs_0 = ((map_lh__d2 f2_lh__d1) tripls_0) in
          (max'_lh__d1 rs_0)))));;
let rec testGcd_nofib_lh__d1 _lh_testGcd_nofib_arg1_0 =
  (test_lh__d1 _lh_testGcd_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testGcd_nofib_lh__d1 (Z.of_int 400))));
end;;

