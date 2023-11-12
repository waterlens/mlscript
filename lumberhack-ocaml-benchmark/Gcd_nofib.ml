(*
touch ./Gcd_nofib.mli && ocamlc ./Gcd_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Gcd_nofib.ml -o "./Gcd_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Gcd_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
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


(* lumberhack *)
module Module_lumberhack = struct
let rec abs__d0__d0 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec enumFromTo__d0__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (fun _lh_listcomp_fun_5 ms_1 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
            ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_6 ms_1)))))
  else
    (fun _lh_listcomp_fun_7 ms_2 f_6 f_7 -> 
      (`LH_N)));;
let rec f1__d0__d0 _lh_f1_arg1_0 =
  (_lh_f1_arg1_0 99);;
let rec f2__d0__d0 _lh_f2_arg1_0 =
  (_lh_f2_arg1_0 99);;
let rec g__d0__d0 _lh_g_arg1_0 _lh_g_arg2_1 =
  (_lh_g_arg1_0 _lh_g_arg2_1);;
let rec map__d0__d0 f_2 ls_2 =
  (ls_2 f_2);;
let rec map__d0__d1 f_1 ls_1 =
  (ls_1 f_1);;
let rec map__d1__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1__d1 f_5 ls_3 =
  (ls_3 f_5);;
let rec max'__d0__d0 _lh_max'_arg1_0 =
  (match _lh_max'_arg1_0 with
    | `LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_0) -> 
      (match _lh_max'_LH_C_1_0 with
        | `LH_N -> 
          _lh_max'_LH_C_0_0
        | `LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1) -> 
          (if (_lh_max'_LH_C_0_0 < _lh_max'_LH_C_0_1) then
            (max'__d0__d0 (`LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1)))
          else
            (max'__d0__d0 (`LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d1__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_0 = (let rec _lh_f1_LH_P2_1_0 = _lh_listcomp_fun_ls_h_0 in
              (let rec _lh_f1_LH_P2_0_0 = _lh_listcomp_fun_ls_h_1 in
                (fun _lh_dummy_0 -> 
                  (let rec _lh_f2_LH_P3_2_0 = ((gcdE__d0__d0 _lh_f1_LH_P2_0_0) _lh_f1_LH_P2_1_0) in
                    (fun _lh_dummy_1 -> 
                      (_lh_f2_LH_P3_2_0 99)))))) in
              (fun f_3 -> 
                (let rec t_1 = ((map__d0__d0 f_3) t_0) in
                  (let rec h_1 = (f_3 h_0) in
                    (fun f_4 -> 
                      (`LH_C((f_4 h_1), ((map__d1__d0 f_4) t_1))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and gcdE__d0__d0 _lh_gcdE_arg1_0 _lh_gcdE_arg2_0 =
  (match _lh_gcdE_arg1_0 with
    | 0 -> 
      (let rec _lh_f2_LH_P3_2_2 = 1 in
        (let rec _lh_f2_LH_P3_1_1 = 0 in
          (let rec _lh_f2_LH_P3_0_1 = _lh_gcdE_arg2_0 in
            (fun _lh_dummy_3 -> 
              (abs__d0__d0 ((_lh_f2_LH_P3_0_1 + _lh_f2_LH_P3_1_1) + _lh_f2_LH_P3_2_2))))))
    | _ -> 
      ((g__d0__d0 (let rec _lh_g_LH_P3_2_4 = _lh_gcdE_arg1_0 in
        (let rec _lh_g_LH_P3_1_5 = 0 in
          (let rec _lh_g_LH_P3_0_5 = 1 in
            (fun _lh_g_arg2_2 -> 
              (((_lh_g_arg2_2 _lh_g_LH_P3_0_5) _lh_g_LH_P3_1_5) _lh_g_LH_P3_2_4)))))) (let rec _lh_g_LH_P3_2_5 = _lh_gcdE_arg2_0 in
        (let rec _lh_g_LH_P3_1_6 = 1 in
          (let rec _lh_g_LH_P3_0_6 = 0 in
            (fun _lh_g_LH_P3_0_7 _lh_g_LH_P3_1_7 _lh_g_LH_P3_2_6 -> 
              (if (_lh_g_LH_P3_2_5 = 0) then
                (let rec _lh_f2_LH_P3_2_3 = _lh_g_LH_P3_1_7 in
                  (let rec _lh_f2_LH_P3_1_2 = _lh_g_LH_P3_0_7 in
                    (let rec _lh_f2_LH_P3_0_2 = _lh_g_LH_P3_2_6 in
                      (fun _lh_dummy_4 -> 
                        (abs__d0__d0 ((_lh_f2_LH_P3_0_2 + _lh_f2_LH_P3_1_2) + _lh_f2_LH_P3_2_3))))))
              else
                (let rec _lh_matchIdent_1 = ((quotRem__d0__d0 _lh_g_LH_P3_2_6) _lh_g_LH_P3_2_5) in
                  (((((_lh_matchIdent_1 _lh_g_LH_P3_0_7) _lh_g_LH_P3_0_6) _lh_g_LH_P3_1_7) _lh_g_LH_P3_1_6) _lh_g_LH_P3_2_5)))))))))
and quotRem__d0__d0 _lh_quotRem_arg1_0 _lh_quotRem_arg2_0 =
  (let rec _lh_g_LH_P2_1_0 = (_lh_quotRem_arg1_0 mod _lh_quotRem_arg2_0) in
    (let rec _lh_g_LH_P2_0_0 = (_lh_quotRem_arg1_0 / _lh_quotRem_arg2_0) in
      (fun _lh_g_LH_P3_0_0 _lh_g_LH_P3_0_1 _lh_g_LH_P3_1_0 _lh_g_LH_P3_1_1 _lh_g_LH_P3_2_0 -> 
        ((g__d0__d0 (let rec _lh_g_LH_P3_2_1 = _lh_g_LH_P3_2_0 in
          (let rec _lh_g_LH_P3_1_2 = _lh_g_LH_P3_1_1 in
            (let rec _lh_g_LH_P3_0_2 = _lh_g_LH_P3_0_1 in
              (fun _lh_g_arg2_0 -> 
                (((_lh_g_arg2_0 _lh_g_LH_P3_0_2) _lh_g_LH_P3_1_2) _lh_g_LH_P3_2_1)))))) (let rec _lh_g_LH_P3_2_2 = _lh_g_LH_P2_1_0 in
          (let rec _lh_g_LH_P3_1_3 = (_lh_g_LH_P3_1_0 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_1_1)) in
            (let rec _lh_g_LH_P3_0_3 = (_lh_g_LH_P3_0_0 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_0_1)) in
              (fun _lh_g_LH_P3_0_4 _lh_g_LH_P3_1_4 _lh_g_LH_P3_2_3 -> 
                (if (_lh_g_LH_P3_2_2 = 0) then
                  (let rec _lh_f2_LH_P3_2_1 = _lh_g_LH_P3_1_4 in
                    (let rec _lh_f2_LH_P3_1_0 = _lh_g_LH_P3_0_4 in
                      (let rec _lh_f2_LH_P3_0_0 = _lh_g_LH_P3_2_3 in
                        (fun _lh_dummy_2 -> 
                          (abs__d0__d0 ((_lh_f2_LH_P3_0_0 + _lh_f2_LH_P3_1_0) + _lh_f2_LH_P3_2_1))))))
                else
                  (let rec _lh_matchIdent_0 = ((quotRem__d0__d0 _lh_g_LH_P3_2_3) _lh_g_LH_P3_2_2) in
                    (((((_lh_matchIdent_0 _lh_g_LH_P3_0_4) _lh_g_LH_P3_0_3) _lh_g_LH_P3_1_4) _lh_g_LH_P3_1_3) _lh_g_LH_P3_2_2)))))))))))
and testGcd_nofib__d0__d0 _lh_testGcd_nofib_arg1_0 =
  (test__d0__d0 _lh_testGcd_nofib_arg1_0)
and test__d0__d0 _lh_test_arg1_0 =
  (let rec ns_0 = ((enumFromTo__d0__d0 5000) (5000 + _lh_test_arg1_0)) in
    (let rec ms_0 = ((enumFromTo__d1__d0 10000) (10000 + _lh_test_arg1_0)) in
      (let rec tripls_0 = ((map__d0__d1 f1__d0__d0) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
        ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_4) ms_0)) in
        (_lh_listcomp_fun_4 ns_0))) in
        (let rec rs_0 = ((map__d1__d1 f2__d0__d0) tripls_0) in
          (max'__d0__d0 rs_0)))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec abs__d0__d0 _lh_abs_arg1_0 =
  (if (_lh_abs_arg1_0 < 0) then
    (0 - _lh_abs_arg1_0)
  else
    _lh_abs_arg1_0);;
let rec enumFromTo__d0__d0 a_1 b_1 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
          ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_3) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_6 _lh_popOutId_1_1))))
  else
    (fun f_6 f_7 -> 
      (`LH_N)));;
let rec f1__d0__d0 _lh_f1_arg1_0 =
  (_lh_f1_arg1_0 99);;
let rec f2__d0__d0 _lh_f2_arg1_0 =
  (_lh_f2_arg1_0 99);;
let rec g__d0__d0 _lh_g_arg1_0 _lh_g_arg2_1 =
  (_lh_g_arg1_0 _lh_g_arg2_1);;
let rec map__d0__d0 f_2 ls_2 =
  (ls_2 f_2);;
let rec map__d0__d1 f_1 ls_1 =
  (ls_1 f_1);;
let rec map__d1__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1__d1 f_5 ls_3 =
  (ls_3 f_5);;
let rec max'__d0__d0 _lh_max'_arg1_0 =
  (match _lh_max'_arg1_0 with
    | `LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_0) -> 
      (match _lh_max'_LH_C_1_0 with
        | `LH_N -> 
          _lh_max'_LH_C_0_0
        | `LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1) -> 
          (if (_lh_max'_LH_C_0_0 < _lh_max'_LH_C_0_1) then
            (max'__d0__d0 (`LH_C(_lh_max'_LH_C_0_1, _lh_max'_LH_C_1_1)))
          else
            (max'__d0__d0 (`LH_C(_lh_max'_LH_C_0_0, _lh_max'_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d1__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (fun f_3 f_4 -> 
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1__d0 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
          (let rec t_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_0 = (let rec _lh_f1_LH_P2_1_0 = _lh_listcomp_fun_ls_h_0 in
              (let rec _lh_f1_LH_P2_0_0 = _lh_popOutId_0_0 in
                (fun _lh_dummy_0 -> 
                  (let rec _lh_f2_LH_P3_2_0 = ((gcdE__d0__d0 _lh_f1_LH_P2_0_0) _lh_f1_LH_P2_1_0) in
                    (fun _lh_dummy_1 -> 
                      (_lh_f2_LH_P3_2_0 99)))))) in
              (let rec t_1 = ((map__d0__d0 f_3) t_0) in
                (let rec h_1 = (f_3 h_0) in
                  (`LH_C((f_4 h_1), ((map__d1__d0 f_4) t_1))))))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and gcdE__d0__d0 _lh_gcdE_arg1_0 _lh_gcdE_arg2_0 =
  (match _lh_gcdE_arg1_0 with
    | 0 -> 
      (let rec _lh_f2_LH_P3_2_2 = 1 in
        (let rec _lh_f2_LH_P3_1_1 = 0 in
          (let rec _lh_f2_LH_P3_0_1 = _lh_gcdE_arg2_0 in
            (fun _lh_dummy_3 -> 
              (abs__d0__d0 ((_lh_f2_LH_P3_0_1 + _lh_f2_LH_P3_1_1) + _lh_f2_LH_P3_2_2))))))
    | _ -> 
      ((g__d0__d0 (let rec _lh_g_LH_P3_2_4 = _lh_gcdE_arg1_0 in
        (let rec _lh_g_LH_P3_1_5 = 0 in
          (let rec _lh_g_LH_P3_0_5 = 1 in
            (fun _lh_g_arg2_2 -> 
              (((_lh_g_arg2_2 _lh_g_LH_P3_0_5) _lh_g_LH_P3_1_5) _lh_g_LH_P3_2_4)))))) (let rec _lh_g_LH_P3_2_5 = _lh_gcdE_arg2_0 in
        (let rec _lh_g_LH_P3_1_6 = 1 in
          (let rec _lh_g_LH_P3_0_6 = 0 in
            (fun _lh_g_LH_P3_0_7 _lh_g_LH_P3_1_7 _lh_g_LH_P3_2_6 -> 
              (if (_lh_g_LH_P3_2_5 = 0) then
                (let rec _lh_f2_LH_P3_2_3 = _lh_g_LH_P3_1_7 in
                  (let rec _lh_f2_LH_P3_1_2 = _lh_g_LH_P3_0_7 in
                    (let rec _lh_f2_LH_P3_0_2 = _lh_g_LH_P3_2_6 in
                      (fun _lh_dummy_4 -> 
                        (abs__d0__d0 ((_lh_f2_LH_P3_0_2 + _lh_f2_LH_P3_1_2) + _lh_f2_LH_P3_2_3))))))
              else
                (let rec _lh_matchIdent_1 = ((quotRem__d0__d0 _lh_g_LH_P3_2_6) _lh_g_LH_P3_2_5) in
                  (((((_lh_matchIdent_1 _lh_g_LH_P3_0_7) _lh_g_LH_P3_0_6) _lh_g_LH_P3_1_7) _lh_g_LH_P3_1_6) _lh_g_LH_P3_2_5)))))))))
and quotRem__d0__d0 _lh_quotRem_arg1_0 _lh_quotRem_arg2_0 _lh_g_LH_P3_0_0 _lh_g_LH_P3_0_1 _lh_g_LH_P3_1_0 _lh_g_LH_P3_1_1 _lh_g_LH_P3_2_0 =
  (let rec _lh_g_LH_P2_1_0 = (_lh_quotRem_arg1_0 mod _lh_quotRem_arg2_0) in
    (let rec _lh_g_LH_P2_0_0 = (_lh_quotRem_arg1_0 / _lh_quotRem_arg2_0) in
      ((g__d0__d0 (let rec _lh_g_LH_P3_2_1 = _lh_g_LH_P3_2_0 in
        (let rec _lh_g_LH_P3_1_2 = _lh_g_LH_P3_1_1 in
          (let rec _lh_g_LH_P3_0_2 = _lh_g_LH_P3_0_1 in
            (fun _lh_g_arg2_0 -> 
              (((_lh_g_arg2_0 _lh_g_LH_P3_0_2) _lh_g_LH_P3_1_2) _lh_g_LH_P3_2_1)))))) (let rec _lh_g_LH_P3_2_2 = _lh_g_LH_P2_1_0 in
        (let rec _lh_g_LH_P3_1_3 = (_lh_g_LH_P3_1_0 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_1_1)) in
          (let rec _lh_g_LH_P3_0_3 = (_lh_g_LH_P3_0_0 - (_lh_g_LH_P2_0_0 * _lh_g_LH_P3_0_1)) in
            (fun _lh_g_LH_P3_0_4 _lh_g_LH_P3_1_4 _lh_g_LH_P3_2_3 -> 
              (if (_lh_g_LH_P3_2_2 = 0) then
                (let rec _lh_f2_LH_P3_2_1 = _lh_g_LH_P3_1_4 in
                  (let rec _lh_f2_LH_P3_1_0 = _lh_g_LH_P3_0_4 in
                    (let rec _lh_f2_LH_P3_0_0 = _lh_g_LH_P3_2_3 in
                      (fun _lh_dummy_2 -> 
                        (abs__d0__d0 ((_lh_f2_LH_P3_0_0 + _lh_f2_LH_P3_1_0) + _lh_f2_LH_P3_2_1))))))
              else
                (let rec _lh_matchIdent_0 = ((quotRem__d0__d0 _lh_g_LH_P3_2_3) _lh_g_LH_P3_2_2) in
                  (((((_lh_matchIdent_0 _lh_g_LH_P3_0_4) _lh_g_LH_P3_0_3) _lh_g_LH_P3_1_4) _lh_g_LH_P3_1_3) _lh_g_LH_P3_2_2))))))))))
and testGcd_nofib__d0__d0 _lh_testGcd_nofib_arg1_0 =
  (test__d0__d0 _lh_testGcd_nofib_arg1_0)
and test__d0__d0 _lh_test_arg1_0 =
  (let rec ns_0 = ((enumFromTo__d0__d0 5000) (5000 + _lh_test_arg1_0)) in
    (let rec ms_0 = ((enumFromTo__d1__d0 10000) (10000 + _lh_test_arg1_0)) in
      (let rec tripls_0 = ((map__d0__d1 f1__d0__d0) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
        ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_4) ms_0)) in
        (_lh_listcomp_fun_4 ns_0))) in
        (let rec rs_0 = ((map__d1__d1 f2__d0__d0) tripls_0) in
          (max'__d0__d0 rs_0)))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Gcd_nofib" (fun () -> ignore (let open Module_original in ((testGcd_nofib__d0 200))));
  Bench.Test.create ~name:"lumberhack_Gcd_nofib" (fun () -> ignore (let open Module_lumberhack in ((testGcd_nofib__d0__d0 200))));
  Bench.Test.create ~name:"lumberhack_pop_out_Gcd_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testGcd_nofib__d0__d0 200))));
])
