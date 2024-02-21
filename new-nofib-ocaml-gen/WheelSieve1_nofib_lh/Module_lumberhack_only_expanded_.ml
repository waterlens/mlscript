

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec atIndex_lz_lh__d1 n_0 ls_4 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4) with
      | `LH_C(h_4, t_6) -> 
        (if (n_0 = 0) then
          h_4
        else
          ((atIndex_lz_lh__d1 (n_0 - 1)) t_6))
      | `LH_N -> 
        (failwith "error")));;
let rec map_lz_lh__d1 f_0 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_5) -> 
      (`LH_C((f_0 h_3), ((map_lz_lh__d1 f_0) t_5)))
    | `LH_N -> 
      (`LH_N)));;
let rec squares_lh__d1 _lh_squares_arg1_0 =
  ((map_lz_lh__d1 (fun p_0 -> 
    (p_0 * p_0))) _lh_squares_arg1_0);;
let rec enumFromThenTo_lh__d2 a_0 t_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, (((enumFromThenTo_lh__d2 t_0) ((2 * t_0) - a_0)) b_0)))
  else
    (`LH_N));;
let rec nextSize_lh__d1 _lh_nextSize_arg1_0 _lh_nextSize_arg2_0 =
  (match _lh_nextSize_arg1_0 with
    | `Wheel(_lh_nextSize_Wheel_0_0, _lh_nextSize_Wheel_1_0) -> 
      (`Wheel((_lh_nextSize_Wheel_0_0 * _lh_nextSize_arg2_0), (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                    (match _lh_listcomp_fun_para_2 with
                      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                        (if ((_lh_listcomp_fun_ls_h_2 mod _lh_nextSize_arg2_0) > 0) then
                          (`LH_C(_lh_listcomp_fun_ls_h_2, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                        else
                          (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                      | `LH_N -> 
                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
                    (_lh_listcomp_fun_2 (`LH_C((_lh_listcomp_fun_ls_h_1 + _lh_listcomp_fun_ls_h_0), (`LH_N)))))
                | `LH_N -> 
                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
              (_lh_listcomp_fun_1 _lh_nextSize_Wheel_1_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 (((enumFromThenTo_lh__d2 0) _lh_nextSize_Wheel_0_0) ((_lh_nextSize_arg2_0 - 1) * _lh_nextSize_Wheel_0_0))))))
    | _ -> 
      (failwith "error"));;
let rec zipWith_lz_lz_lh__d1 f_1 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz_lh__d1 f_1) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec wheels_lh__d1 _lh_wheels_arg1_0 =
  (lazy (`LH_C((`Wheel(1, (`LH_C(1, (`LH_N))))), (((zipWith_lz_lz_lh__d1 nextSize_lh__d1) (wheels_lh__d1 _lh_wheels_arg1_0)) _lh_wheels_arg1_0))));;
let rec min_lh__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec head_lz_lh__d1 ls_0 =
  (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_2) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec notDivBy_lh__d1 _lh_notDivBy_arg1_0 _lh_notDivBy_arg2_0 _lh_notDivBy_arg3_0 =
  (let rec _lh_matchIdent_0 = (Lazy.force _lh_notDivBy_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_notDivBy_LH_C_0_0, _lh_notDivBy_LH_C_1_0) -> 
        (if (_lh_notDivBy_LH_C_0_0 > _lh_notDivBy_arg3_0) then
          true
        else
          (let rec _lh_matchIdent_1 = (Lazy.force _lh_notDivBy_arg1_0) in
            (match _lh_matchIdent_1 with
              | `LH_C(_lh_notDivBy_LH_C_0_1, _lh_notDivBy_LH_C_1_1) -> 
                (((_lh_notDivBy_arg3_0 mod _lh_notDivBy_LH_C_0_1) > 0) && (((notDivBy_lh__d1 _lh_notDivBy_LH_C_1_1) _lh_notDivBy_LH_C_1_0) _lh_notDivBy_arg3_0))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec noFactor_lh__d1 _lh_noFactor_arg1_0 _lh_noFactor_arg2_0 _lh_noFactor_arg3_0 _lh_noFactor_arg4_0 =
  (if (_lh_noFactor_arg1_0 <= 2) then
    true
  else
    (((notDivBy_lh__d1 _lh_noFactor_arg2_0) _lh_noFactor_arg3_0) _lh_noFactor_arg4_0));;
let rec append_lz_lh__d1 _lh_append_lz_arg1_0 _lh_append_lz_arg2_0 =
  (let rec _lh_matchIdent_2 = _lh_append_lz_arg1_0 in
    (match _lh_matchIdent_2 with
      | `LH_C(_lh_append_lz_LH_C_0_0, _lh_append_lz_LH_C_1_0) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_0, ((append_lz_lh__d1 _lh_append_lz_LH_C_1_0) _lh_append_lz_arg2_0))))
      | `LH_N -> 
        _lh_append_lz_arg2_0
      | _ -> 
        (failwith "error")));;
let rec enumFromThenTo_lh__d1 a_1 t_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, (((enumFromThenTo_lh__d1 t_1) ((2 * t_1) - a_1)) b_1)))
  else
    (`LH_N));;
let rec tail_lz_lh__d2 ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_lh__d1 ls_2 =
  (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec sieve_lh__d1 _lh_sieve_arg1_0 _lh_sieve_arg2_0 _lh_sieve_arg3_0 _lh_sieve_arg4_0 =
  (let rec _lh_matchIdent_3 = (Lazy.force _lh_sieve_arg1_0) in
    (match _lh_matchIdent_3 with
      | `LH_C(_lh_sieve_LH_C_0_0, _lh_sieve_LH_C_1_0) -> 
        (match _lh_sieve_LH_C_0_0 with
          | `Wheel(_lh_sieve_Wheel_0_0, _lh_sieve_Wheel_1_0) -> 
            ((append_lz_lh__d1 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                    (match _lh_listcomp_fun_para_4 with
                      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                        (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                          (match _lh_listcomp_fun_para_5 with
                            | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                              (if ((((noFactor_lh__d1 _lh_sieve_Wheel_0_0) _lh_sieve_arg2_0) _lh_sieve_arg3_0) _lh_listcomp_fun_ls_h_5) then
                                (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                              else
                                (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
                            | `LH_N -> 
                              (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
                          (_lh_listcomp_fun_5 (`LH_C((_lh_listcomp_fun_ls_h_4 + _lh_listcomp_fun_ls_h_3), (`LH_N)))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
                    (_lh_listcomp_fun_4 _lh_sieve_Wheel_1_0))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_3 (`LH_C(_lh_sieve_Wheel_0_0, (((enumFromThenTo_lh__d1 (_lh_sieve_Wheel_0_0 * 2)) (_lh_sieve_Wheel_0_0 * 3)) (((min_lh__d1 (_lh_sieve_arg4_0 * _lh_sieve_arg4_0)) ((head_lz_lh__d1 _lh_sieve_arg2_0) - 1)) * _lh_sieve_Wheel_0_0))))))) ((((sieve_lh__d1 _lh_sieve_LH_C_1_0) (tail_lz_lh__d1 _lh_sieve_arg2_0)) (tail_lz_lh__d2 _lh_sieve_arg3_0)) _lh_sieve_arg4_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec primes_lh__d1 _lh_primes_arg1_0 =
  (lazy ((((sieve_lh__d1 (wheels_lh__d1 (primes_lh__d1 _lh_primes_arg1_0))) (primes_lh__d1 _lh_primes_arg1_0)) (squares_lh__d1 (primes_lh__d1 _lh_primes_arg1_0))) _lh_primes_arg1_0));;
let rec prime_lh__d1 _lh_prime_arg1_0 =
  ((atIndex_lz_lh__d1 _lh_prime_arg1_0) (primes_lh__d1 _lh_prime_arg1_0));;
let rec testWheelSieve1_nofib_lh__d1 _lh_testWheelSieve1_nofib_arg1_0 =
  (prime_lh__d1 _lh_testWheelSieve1_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testWheelSieve1_nofib_lh__d1 1000)));
end;;

