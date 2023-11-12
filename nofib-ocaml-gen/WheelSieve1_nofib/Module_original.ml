
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec append_lz__d0 _lh_append_lz_arg1_1 _lh_append_lz_arg2_1 =
  (let rec _lh_matchIdent_4 = _lh_append_lz_arg1_1 in
    (match _lh_matchIdent_4 with
      | `LH_C(_lh_append_lz_LH_C_0_1, _lh_append_lz_LH_C_1_1) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_1, ((append_lz__d0 _lh_append_lz_LH_C_1_1) _lh_append_lz_arg2_1))))
      | `LH_N -> 
        _lh_append_lz_arg2_1
      | _ -> 
        (failwith "error")));;
let rec atIndex_lz__d0 n_4 ls_1_9 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_0, t_2_2) -> 
        (if (n_4 = 0) then
          h_2_0
        else
          ((atIndex_lz__d0 (n_4 - 1)) t_2_2))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromThenTo__d0 a_5 t_2_4 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, (((enumFromThenTo__d0 t_2_4) ((2 * t_2_4) - a_5)) b_2)))
  else
    (`LH_N));;
let rec enumFromThenTo__d1 a_6 t_2_7 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, (((enumFromThenTo__d1 t_2_7) ((2 * t_2_7) - a_6)) b_3)))
  else
    (`LH_N));;
let rec head_lz__d0 ls_2_1 =
  (match (Lazy.force ls_2_1) with
    | `LH_C(h_2_2, t_2_5) -> 
      h_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d0 f_1_2 ls_2_3 =
  (lazy (match (Lazy.force ls_2_3) with
    | `LH_C(h_2_4, t_2_8) -> 
      (`LH_C((f_1_2 h_2_4), ((map_lz__d0 f_1_2) t_2_8)))
    | `LH_N -> 
      (`LH_N)));;
let rec min__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec notDivBy__d0 _lh_notDivBy_arg1_1 _lh_notDivBy_arg2_1 _lh_notDivBy_arg3_1 =
  (let rec _lh_matchIdent_5 = (Lazy.force _lh_notDivBy_arg2_1) in
    (match _lh_matchIdent_5 with
      | `LH_C(_lh_notDivBy_LH_C_0_2, _lh_notDivBy_LH_C_1_2) -> 
        (if (_lh_notDivBy_LH_C_0_2 > _lh_notDivBy_arg3_1) then
          true
        else
          (let rec _lh_matchIdent_6 = (Lazy.force _lh_notDivBy_arg1_1) in
            (match _lh_matchIdent_6 with
              | `LH_C(_lh_notDivBy_LH_C_0_3, _lh_notDivBy_LH_C_1_3) -> 
                (((_lh_notDivBy_arg3_1 mod _lh_notDivBy_LH_C_0_3) > 0) && (((notDivBy__d0 _lh_notDivBy_LH_C_1_3) _lh_notDivBy_LH_C_1_2) _lh_notDivBy_arg3_1))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec tail_lz__d0 ls_2_0 =
  (match (Lazy.force ls_2_0) with
    | `LH_C(h_2_1, t_2_3) -> 
      t_2_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1 ls_2_2 =
  (match (Lazy.force ls_2_2) with
    | `LH_C(h_2_3, t_2_6) -> 
      t_2_6
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz__d0 f_1_3 xs_9 ys_9 =
  (lazy (match (Lazy.force xs_9) with
    | `LH_C(hx_8, tx_8) -> 
      (match (Lazy.force ys_9) with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_3 hx_8) hy_8), (((zipWith_lz_lz__d0 f_1_3) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec nextSize__d0 _lh_nextSize_arg1_1 _lh_nextSize_arg2_1 =
  (match _lh_nextSize_arg1_1 with
    | `Wheel(_lh_nextSize_Wheel_0_1, _lh_nextSize_Wheel_1_1) -> 
      (`Wheel((_lh_nextSize_Wheel_0_1 * _lh_nextSize_arg2_1), (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
        (match _lh_listcomp_fun_para_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
            (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
              (match _lh_listcomp_fun_para_7 with
                | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
                  (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
                    (match _lh_listcomp_fun_para_8 with
                      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                        (if ((_lh_listcomp_fun_ls_h_8 mod _lh_nextSize_arg2_1) > 0) then
                          (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
                        else
                          (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
                      | `LH_N -> 
                        (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))) in
                    (_lh_listcomp_fun_8 (`LH_C((_lh_listcomp_fun_ls_h_7 + _lh_listcomp_fun_ls_h_6), (`LH_N)))))
                | `LH_N -> 
                  (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))) in
              (_lh_listcomp_fun_7 _lh_nextSize_Wheel_1_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6 (((enumFromThenTo__d1 0) _lh_nextSize_Wheel_0_1) ((_lh_nextSize_arg2_1 - 1) * _lh_nextSize_Wheel_0_1))))))
    | _ -> 
      (failwith "error"))
and noFactor__d0 _lh_noFactor_arg1_1 _lh_noFactor_arg2_1 _lh_noFactor_arg3_1 _lh_noFactor_arg4_1 =
  (if (_lh_noFactor_arg1_1 <= 2) then
    true
  else
    (((notDivBy__d0 _lh_noFactor_arg2_1) _lh_noFactor_arg3_1) _lh_noFactor_arg4_1))
and prime__d0 _lh_prime_arg1_1 =
  ((atIndex_lz__d0 _lh_prime_arg1_1) (primes__d0 _lh_prime_arg1_1))
and primes__d0 _lh_primes_arg1_1 =
  (lazy ((((sieve__d0 (wheels__d0 (primes__d0 _lh_primes_arg1_1))) (primes__d0 _lh_primes_arg1_1)) (squares__d0 (primes__d0 _lh_primes_arg1_1))) _lh_primes_arg1_1))
and sieve__d0 _lh_sieve_arg1_1 _lh_sieve_arg2_1 _lh_sieve_arg3_1 _lh_sieve_arg4_1 =
  (let rec _lh_matchIdent_7 = (Lazy.force _lh_sieve_arg1_1) in
    (match _lh_matchIdent_7 with
      | `LH_C(_lh_sieve_LH_C_0_1, _lh_sieve_LH_C_1_1) -> 
        (match _lh_sieve_LH_C_0_1 with
          | `Wheel(_lh_sieve_Wheel_0_1, _lh_sieve_Wheel_1_1) -> 
            ((append_lz__d0 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
              (match _lh_listcomp_fun_para_9 with
                | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
                  (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
                    (match _lh_listcomp_fun_para_1_0 with
                      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
                        (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
                          (match _lh_listcomp_fun_para_1_1 with
                            | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
                              (if ((((noFactor__d0 _lh_sieve_Wheel_0_1) _lh_sieve_arg2_1) _lh_sieve_arg3_1) _lh_listcomp_fun_ls_h_1_1) then
                                (`LH_C(_lh_listcomp_fun_ls_h_1_1, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
                              else
                                (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
                            | `LH_N -> 
                              (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))) in
                          (_lh_listcomp_fun_1_1 (`LH_C((_lh_listcomp_fun_ls_h_1_0 + _lh_listcomp_fun_ls_h_9), (`LH_N)))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))) in
                    (_lh_listcomp_fun_1_0 _lh_sieve_Wheel_1_1))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_9 (`LH_C(_lh_sieve_Wheel_0_1, (((enumFromThenTo__d0 (_lh_sieve_Wheel_0_1 * 2)) (_lh_sieve_Wheel_0_1 * 3)) (((min__d0 (_lh_sieve_arg4_1 * _lh_sieve_arg4_1)) ((head_lz__d0 _lh_sieve_arg2_1) - 1)) * _lh_sieve_Wheel_0_1))))))) ((((sieve__d0 _lh_sieve_LH_C_1_1) (tail_lz__d0 _lh_sieve_arg2_1)) (tail_lz__d1 _lh_sieve_arg3_1)) _lh_sieve_arg4_1))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and squares__d0 _lh_squares_arg1_1 =
  ((map_lz__d0 (fun p_1 -> 
    (p_1 * p_1))) _lh_squares_arg1_1)
and testWheelSieve1_nofib__d0 _lh_testWheelSieve1_nofib_arg1_1 =
  (prime__d0 _lh_testWheelSieve1_nofib_arg1_1)
and wheels__d0 _lh_wheels_arg1_1 =
  (lazy (`LH_C((`Wheel(1, (`LH_C(1, (`LH_N))))), (((zipWith_lz_lz__d0 nextSize__d0) (wheels__d0 _lh_wheels_arg1_1)) _lh_wheels_arg1_1))));;
end;;

