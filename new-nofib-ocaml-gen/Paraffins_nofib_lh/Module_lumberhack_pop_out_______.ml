

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec enumFromTo_lh__d5 a_4 b_4 =
  (if (a_4 <= b_4) then
    (`LH_C(a_4, ((enumFromTo_lh__d5 (a_4 + 1)) b_4)))
  else
    (`LH_N));;
let rec remainders_lh__d3 _lh_remainders_arg1_2 =
  (match _lh_remainders_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2)), (remainders_lh__d3 _lh_remainders_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d6 n_4 ls_6 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_6) with
      | `LH_C(h_4, t_7) -> 
        (if (n_4 = 0) then
          h_4
        else
          ((atIndex_lz_lh__d6 (n_4 - 1)) t_7))
      | `LH_N -> 
        (failwith "error")));;
let rec three_partitions_lh__d1 _lh_three_partitions_arg1_0 =
  (let rec _lh_listcomp_fun_4_5 = (fun _lh_listcomp_fun_para_2_1 -> 
    (match _lh_listcomp_fun_para_2_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_3_2) -> 
        (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_2_2 -> 
          (match _lh_listcomp_fun_para_2_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_3_1, _lh_listcomp_fun_ls_t_3_3) -> 
              (let rec _lh_listcomp_fun_4_7 = (fun _lh_listcomp_fun_para_2_3 -> 
                (((((_lh_listcomp_fun_para_2_3 _lh_listcomp_fun_ls_h_3_1) _lh_listcomp_fun_ls_h_3_0) _lh_listcomp_fun_4_7) _lh_listcomp_fun_ls_t_3_3) _lh_listcomp_fun_4_6)) in
                (_lh_listcomp_fun_4_7 (let rec _lh_listcomp_fun_ls_t_3_4 = (fun _lh_listcomp_fun_ls_h_3_2 _lh_listcomp_fun_ls_h_3_3 _lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_5 _lh_listcomp_fun_4_9 -> 
                  (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_5)) in
                  (let rec _lh_listcomp_fun_ls_h_3_4 = (_lh_three_partitions_arg1_0 - (_lh_listcomp_fun_ls_h_3_0 + _lh_listcomp_fun_ls_h_3_1)) in
                    (fun _lh_listcomp_fun_ls_h_3_5 _lh_listcomp_fun_ls_h_3_6 _lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_3_6 _lh_listcomp_fun_5_1 -> 
                      (let rec _lh_listcomp_fun_ls_t_3_7 = (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_3_4) in
                        (let rec _lh_listcomp_fun_ls_h_3_7 = (let rec _lh_rads_of_size_n_LH_P3_2_0 = _lh_listcomp_fun_ls_h_3_4 in
                          (let rec _lh_rads_of_size_n_LH_P3_1_0 = _lh_listcomp_fun_ls_h_3_5 in
                            (let rec _lh_rads_of_size_n_LH_P3_0_0 = _lh_listcomp_fun_ls_h_3_6 in
                              (fun _lh_listcomp_fun_ls_t_3_8 _lh_listcomp_fun_5_2 _lh_rads_of_size_n_arg1_1 -> 
                                (let rec _lh_listcomp_fun_5_3 = (fun _lh_listcomp_fun_para_2_4 -> 
                                  (match _lh_listcomp_fun_para_2_4 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_3_8, _lh_listcomp_fun_ls_t_3_9) -> 
                                      (match _lh_listcomp_fun_ls_h_3_8 with
                                        | `LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0) -> 
                                          (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_2_5 -> 
                                            (match _lh_listcomp_fun_para_2_5 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_4_0) -> 
                                                (match _lh_listcomp_fun_ls_h_3_9 with
                                                  | `LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1) -> 
                                                    (let rec _lh_listcomp_fun_5_5 = (fun _lh_listcomp_fun_para_2_6 -> 
                                                      (match _lh_listcomp_fun_para_2_6 with
                                                        | `LH_C(_lh_listcomp_fun_ls_h_4_0, _lh_listcomp_fun_ls_t_4_1) -> 
                                                          (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_0_1, _lh_listcomp_fun_ls_h_4_0)), (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_4_1)))
                                                        | `LH_N -> 
                                                          (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_4_0))) in
                                                      (_lh_listcomp_fun_5_5 (if (_lh_rads_of_size_n_LH_P3_1_0 = _lh_rads_of_size_n_LH_P3_2_0) then
                                                        (`LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1))
                                                      else
                                                        ((atIndex_lz_lh__d6 _lh_rads_of_size_n_LH_P3_2_0) _lh_rads_of_size_n_arg1_1))))
                                                  | _ -> 
                                                    (_lh_listcomp_fun_5_4 _lh_listcomp_fun_ls_t_4_0))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_3_9))) in
                                            (_lh_listcomp_fun_5_4 (remainders_lh__d3 (if (_lh_rads_of_size_n_LH_P3_0_0 = _lh_rads_of_size_n_LH_P3_1_0) then
                                              (`LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0))
                                            else
                                              ((atIndex_lz_lh__d6 _lh_rads_of_size_n_LH_P3_1_0) _lh_rads_of_size_n_arg1_1)))))
                                        | _ -> 
                                          (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_3_9))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_3_8))) in
                                  (_lh_listcomp_fun_5_3 (remainders_lh__d3 ((atIndex_lz_lh__d6 _lh_rads_of_size_n_LH_P3_0_0) _lh_rads_of_size_n_arg1_1)))))))) in
                          (fun _lh_listcomp_fun_5_6 _lh_rads_of_size_n_arg1_2 -> 
                            (((_lh_listcomp_fun_ls_h_3_7 _lh_listcomp_fun_ls_t_3_7) _lh_listcomp_fun_5_6) _lh_rads_of_size_n_arg1_2)))))))))
            | `LH_N -> 
              (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_3_2))) in
          (_lh_listcomp_fun_4_6 ((enumFromTo_lh__d5 _lh_listcomp_fun_ls_h_3_0) ((_lh_three_partitions_arg1_0 - _lh_listcomp_fun_ls_h_3_0) / 2))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_5_7 _lh_rads_of_size_n_arg1_3 -> 
          (`LH_N)))) in
    (_lh_listcomp_fun_4_5 ((enumFromTo_lh__d5 0) (_lh_three_partitions_arg1_0 / 3))));;
let rec rads_of_size_n_lh__d1 _lh_rads_of_size_n_arg1_0 _lh_rads_of_size_n_arg2_0 =
  (let rec _lh_listcomp_fun_3_2 = (fun _lh_listcomp_fun_para_1_0 -> 
    ((_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_3_2) _lh_rads_of_size_n_arg1_0)) in
    (_lh_listcomp_fun_3_2 (three_partitions_lh__d1 (_lh_rads_of_size_n_arg2_0 - 1))));;
let rec radical_generator_lh__d3 _lh_radical_generator_arg1_0 =
  (let rec radicals_2 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_7) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d1 radicals_2) _lh_listcomp_fun_ls_h_4), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_7))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_1_0 ((enumFromTo_lh__d5 1) _lh_radical_generator_arg1_0)))))) in
    radicals_2);;
let rec length_lh__d4 ls_8 =
  (ls_8 99);;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec four_partitions_lh__d1 _lh_four_partitions_arg1_0 =
  (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_8) -> 
        (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_5 -> 
          (match _lh_listcomp_fun_para_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_9) -> 
              (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_6 -> 
                (match _lh_listcomp_fun_para_6 with
                  | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_1_0) -> 
                    (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
                      ((((((_lh_listcomp_fun_para_7 _lh_listcomp_fun_ls_h_5) _lh_listcomp_fun_ls_h_6) _lh_listcomp_fun_ls_h_7) _lh_listcomp_fun_1_4) _lh_listcomp_fun_ls_t_1_0) _lh_listcomp_fun_1_3)) in
                      (_lh_listcomp_fun_1_4 (let rec _lh_listcomp_fun_ls_t_1_1 = (fun _lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_ls_h_1_0 _lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_1_6 -> 
                        (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2)) in
                        (let rec _lh_listcomp_fun_ls_h_1_1 = (_lh_four_partitions_arg1_0 - ((_lh_listcomp_fun_ls_h_5 + _lh_listcomp_fun_ls_h_6) + _lh_listcomp_fun_ls_h_7)) in
                          (fun _lh_listcomp_fun_ls_h_1_2 _lh_listcomp_fun_ls_h_1_3 _lh_listcomp_fun_ls_h_1_4 _lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_3 _lh_listcomp_fun_1_8 -> 
                            (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_h_1_1)), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_1))))))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_9))) in
                (_lh_listcomp_fun_1_3 ((enumFromTo_lh__d5 ((max_lh__d1 _lh_listcomp_fun_ls_h_6) (((int_of_float (ceil ((float_of_int _lh_four_partitions_arg1_0) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_5) - _lh_listcomp_fun_ls_h_6))) (((_lh_four_partitions_arg1_0 - _lh_listcomp_fun_ls_h_5) - _lh_listcomp_fun_ls_h_6) / 2))))
            | `LH_N -> 
              (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_8))) in
          (_lh_listcomp_fun_1_2 ((enumFromTo_lh__d5 _lh_listcomp_fun_ls_h_5) ((_lh_four_partitions_arg1_0 - _lh_listcomp_fun_ls_h_5) / 3))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_1 ((enumFromTo_lh__d5 0) (_lh_four_partitions_arg1_0 / 4))));;
let rec ccp_generator_lh__d2 _lh_ccp_generator_arg1_6 _lh_ccp_generator_arg2_0 =
  (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_1_3 -> 
    (match _lh_listcomp_fun_para_1_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_4) -> 
        (match _lh_listcomp_fun_ls_h_2_2 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_0, _lh_ccp_generator_LH_P4_1_3, _lh_ccp_generator_LH_P4_2_6, _lh_ccp_generator_LH_P4_3_6) -> 
            (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_1_4 -> 
              (match _lh_listcomp_fun_para_1_4 with
                | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_5) -> 
                  (match _lh_listcomp_fun_ls_h_2_3 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_1_1, _lh_ccp_generator_LH_C_1_2) -> 
                      (let rec _lh_listcomp_fun_3_7 = (fun _lh_listcomp_fun_para_1_5 -> 
                        (match _lh_listcomp_fun_para_1_5 with
                          | `LH_C(_lh_listcomp_fun_ls_h_2_4, _lh_listcomp_fun_ls_t_2_6) -> 
                            (match _lh_listcomp_fun_ls_h_2_4 with
                              | `LH_C(_lh_ccp_generator_LH_C_0_1_2, _lh_ccp_generator_LH_C_1_3) -> 
                                (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_1_6 -> 
                                  (match _lh_listcomp_fun_para_1_6 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_2_7) -> 
                                      (match _lh_listcomp_fun_ls_h_2_5 with
                                        | `LH_C(_lh_ccp_generator_LH_C_0_1_3, _lh_ccp_generator_LH_C_1_4) -> 
                                          (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_1_7 -> 
                                            (match _lh_listcomp_fun_para_1_7 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_2_6, _lh_listcomp_fun_ls_t_2_8) -> 
                                                (let rec t_6 = (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_8) in
                                                  (fun _lh_dummy_4 -> 
                                                    (1 + (length_lh__d4 t_6))))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_7))) in
                                            (_lh_listcomp_fun_3_9 (if (_lh_ccp_generator_LH_P4_2_6 = _lh_ccp_generator_LH_P4_3_6) then
                                              (`LH_C(_lh_ccp_generator_LH_C_0_1_3, _lh_ccp_generator_LH_C_1_4))
                                            else
                                              ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_3_6) _lh_ccp_generator_arg1_6))))
                                        | _ -> 
                                          (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_7))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6))) in
                                  (_lh_listcomp_fun_3_8 (remainders_lh__d3 (if (_lh_ccp_generator_LH_P4_1_3 = _lh_ccp_generator_LH_P4_2_6) then
                                    (`LH_C(_lh_ccp_generator_LH_C_0_1_2, _lh_ccp_generator_LH_C_1_3))
                                  else
                                    ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_2_6) _lh_ccp_generator_arg1_6)))))
                              | _ -> 
                                (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6))
                          | `LH_N -> 
                            (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_2_5))) in
                        (_lh_listcomp_fun_3_7 (remainders_lh__d3 (if (_lh_ccp_generator_LH_P4_0_0 = _lh_ccp_generator_LH_P4_1_3) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_1_1, _lh_ccp_generator_LH_C_1_2))
                        else
                          ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_1_3) _lh_ccp_generator_arg1_6)))))
                    | _ -> 
                      (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_2_5))
                | `LH_N -> 
                  (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_4))) in
              (_lh_listcomp_fun_3_6 (remainders_lh__d3 ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_0_0) _lh_ccp_generator_arg1_6))))
          | _ -> 
            (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_4))
      | `LH_N -> 
        (fun _lh_dummy_5 -> 
          0))) in
    (_lh_listcomp_fun_3_5 (four_partitions_lh__d1 (_lh_ccp_generator_arg2_0 - 1))));;
let rec enumFromTo_lh__d3 a_2 b_2 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_1_7 = ((enumFromTo_lh__d3 (a_2 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_1_8 = a_2 in
        (`LH_C((length_lh__d4 ((ccp_generator_lh__d2 _lh_popOutId_1_2) _lh_listcomp_fun_ls_h_1_8)), (_lh_popOutId_0_2 _lh_listcomp_fun_ls_t_1_7)))))
  else
    (`LH_N));;
let rec ccp_until_lh__d1 _lh_ccp_until_arg1_0 =
  (let rec radicals_5 = (radical_generator_lh__d3 (_lh_ccp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_9 -> 
      ((_lh_listcomp_fun_para_9 _lh_listcomp_fun_3_1) radicals_5)) in
      (_lh_listcomp_fun_3_1 ((enumFromTo_lh__d3 1) _lh_ccp_until_arg1_0))));;
let rec radical_generator_lh__d4 _lh_radical_generator_arg1_2 =
  (let rec radicals_1_0 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_5_8 = (fun _lh_listcomp_fun_para_2_7 -> 
    (match _lh_listcomp_fun_para_2_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_t_4_2) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d1 radicals_1_0) _lh_listcomp_fun_ls_h_4_1), (_lh_listcomp_fun_5_8 _lh_listcomp_fun_ls_t_4_2))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_5_8 ((enumFromTo_lh__d5 1) _lh_radical_generator_arg1_2)))))) in
    radicals_1_0);;
let rec length_lh__d5 ls_4 =
  (ls_4 99);;
let rec odd_lh__d1 _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 1);;
let rec bcp_generator_lh__d2 _lh_bcp_generator_arg1_0 _lh_bcp_generator_arg2_0 =
  (if (odd_lh__d1 _lh_bcp_generator_arg2_0) then
    (fun _lh_dummy_0 -> 
      0)
  else
    (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
      (match _lh_listcomp_fun_para_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
          (match _lh_listcomp_fun_ls_h_0 with
            | `LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0) -> 
              (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                (match _lh_listcomp_fun_para_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                    (let rec t_0 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                      (fun _lh_dummy_1 -> 
                        (1 + (length_lh__d5 t_0))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                (_lh_listcomp_fun_1 (`LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0))))
            | _ -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
        | `LH_N -> 
          (fun _lh_dummy_2 -> 
            0))) in
      (_lh_listcomp_fun_0 (remainders_lh__d3 ((atIndex_lz_lh__d6 (_lh_bcp_generator_arg2_0 / 2)) _lh_bcp_generator_arg1_0)))));;
let rec enumFromTo_lh__d4 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo_lh__d4 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_0 in
        (`LH_C((length_lh__d5 ((bcp_generator_lh__d2 _lh_popOutId_1_0) _lh_listcomp_fun_ls_h_2)), (_lh_popOutId_0_0 _lh_listcomp_fun_ls_t_2)))))
  else
    (`LH_N));;
let rec bcp_until_lh__d1 _lh_bcp_until_arg1_0 =
  (let rec radicals_7 = (radical_generator_lh__d4 (_lh_bcp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_1_2 -> 
      ((_lh_listcomp_fun_para_1_2 _lh_listcomp_fun_3_4) radicals_7)) in
      (_lh_listcomp_fun_3_4 ((enumFromTo_lh__d4 1) _lh_bcp_until_arg1_0))));;
let rec atIndex_lz_lh__d1 n_2 ls_3 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3) with
      | `LH_C(h_2, t_4) -> 
        (if (n_2 = 0) then
          h_2
        else
          ((atIndex_lz_lh__d1 (n_2 - 1)) t_4))
      | `LH_N -> 
        (failwith "error")));;
let rec length_lh__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_6, t_1_0) -> 
      (1 + (length_lh__d1 t_1_0))
    | `LH_N -> 
      0);;
let rec enumFromTo_lh__d1 a_1 b_1 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1_4 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_1_5 = a_1 in
        (`LH_C((length_lh__d1 ((atIndex_lz_lh__d1 _lh_listcomp_fun_ls_h_1_5) _lh_popOutId_0_1)), (_lh_popOutId_1_1 _lh_listcomp_fun_ls_t_1_4)))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0));;
let rec radical_generator_lh__d1 _lh_radical_generator_arg1_3 =
  (let rec radicals_1_1 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_6_1 = (fun _lh_listcomp_fun_para_3_0 -> 
    (match _lh_listcomp_fun_para_3_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_4_4, _lh_listcomp_fun_ls_t_4_5) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d1 radicals_1_1) _lh_listcomp_fun_ls_h_4_4), (_lh_listcomp_fun_6_1 _lh_listcomp_fun_ls_t_4_5))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_6_1 ((enumFromTo_lh__d5 1) _lh_radical_generator_arg1_3)))))) in
    radicals_1_1);;
let rec atIndex_lz_lh__d5 n_1 ls_2 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2) with
      | `LH_C(h_1, t_3) -> 
        (if (n_1 = 0) then
          h_1
        else
          ((atIndex_lz_lh__d5 (n_1 - 1)) t_3))
      | `LH_N -> 
        (failwith "error")));;
let rec length_lh__d3 ls_1 =
  (ls_1 99);;
let rec remainders_lh__d2 _lh_remainders_arg1_1 =
  (match _lh_remainders_arg1_1 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_C_0_4 _lh_ccp_generator_LH_C_0_5 _lh_ccp_generator_LH_P4_2_3 _lh_ccp_generator_LH_P4_3_3 _lh_ccp_generator_arg1_3 _lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_1_8 _lh_listcomp_fun_2_6 -> 
        (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_8))
    | `LH_C(_lh_remainders_LH_C_0_1, _lh_remainders_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_ls_t_1_9 = (remainders_lh__d2 _lh_remainders_LH_C_1_1) in
        (let rec _lh_listcomp_fun_ls_h_1_9 = (let rec _lh_ccp_generator_LH_C_1_1 = _lh_remainders_LH_C_1_1 in
          (let rec _lh_ccp_generator_LH_C_0_6 = _lh_remainders_LH_C_0_1 in
            (fun _lh_ccp_generator_LH_C_0_7 _lh_ccp_generator_LH_C_0_8 _lh_ccp_generator_LH_P4_2_4 _lh_ccp_generator_LH_P4_3_4 _lh_ccp_generator_arg1_4 _lh_listcomp_fun_ls_t_2_0 _lh_listcomp_fun_2_7 -> 
              (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_8 -> 
                (match _lh_listcomp_fun_para_8 with
                  | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_1) -> 
                    (let rec t_2 = (_lh_listcomp_fun_2_8 _lh_listcomp_fun_ls_t_2_1) in
                      (fun _lh_dummy_3 -> 
                        (1 + (length_lh__d3 t_2))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_0))) in
                (_lh_listcomp_fun_2_8 (if (_lh_ccp_generator_LH_P4_2_4 = _lh_ccp_generator_LH_P4_3_4) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_6, _lh_ccp_generator_LH_C_1_1))
                else
                  ((atIndex_lz_lh__d5 _lh_ccp_generator_LH_P4_3_4) _lh_ccp_generator_arg1_4))))))) in
          (fun _lh_ccp_generator_LH_C_0_9 _lh_ccp_generator_LH_C_0_1_0 _lh_ccp_generator_LH_P4_2_5 _lh_ccp_generator_LH_P4_3_5 _lh_ccp_generator_arg1_5 _lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_2 _lh_listcomp_fun_3_0 -> 
            (((((((_lh_listcomp_fun_ls_h_1_9 _lh_ccp_generator_LH_C_0_9) _lh_ccp_generator_LH_C_0_1_0) _lh_ccp_generator_LH_P4_2_5) _lh_ccp_generator_LH_P4_3_5) _lh_ccp_generator_arg1_5) _lh_listcomp_fun_ls_t_1_9) _lh_listcomp_fun_2_9))))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d4 n_3 ls_5 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_5) with
      | `LH_C(h_3, t_5) -> 
        (if (n_3 = 0) then
          h_3
        else
          ((atIndex_lz_lh__d4 (n_3 - 1)) t_5))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d1 _lh_remainders_arg1_0 =
  (match _lh_remainders_arg1_0 with
    | `LH_N -> 
      (fun _lh_ccp_generator_LH_C_0_0 _lh_ccp_generator_LH_P4_1_0 _lh_ccp_generator_LH_P4_2_0 _lh_ccp_generator_LH_P4_3_0 _lh_ccp_generator_arg1_0 _lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_5 -> 
        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3))
    | `LH_C(_lh_remainders_LH_C_0_0, _lh_remainders_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_ls_t_4 = (remainders_lh__d1 _lh_remainders_LH_C_1_0) in
        (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_ccp_generator_LH_C_1_0 = _lh_remainders_LH_C_1_0 in
          (let rec _lh_ccp_generator_LH_C_0_1 = _lh_remainders_LH_C_0_0 in
            (fun _lh_ccp_generator_LH_C_0_2 _lh_ccp_generator_LH_P4_1_1 _lh_ccp_generator_LH_P4_2_1 _lh_ccp_generator_LH_P4_3_1 _lh_ccp_generator_arg1_1 _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_6 -> 
              (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_2 -> 
                ((((((((_lh_listcomp_fun_para_2 _lh_ccp_generator_LH_C_0_2) _lh_ccp_generator_LH_C_0_1) _lh_ccp_generator_LH_P4_2_1) _lh_ccp_generator_LH_P4_3_1) _lh_ccp_generator_arg1_1) _lh_listcomp_fun_7) _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_6)) in
                (_lh_listcomp_fun_7 (remainders_lh__d2 (if (_lh_ccp_generator_LH_P4_1_1 = _lh_ccp_generator_LH_P4_2_1) then
                  (`LH_C(_lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_1_0))
                else
                  ((atIndex_lz_lh__d4 _lh_ccp_generator_LH_P4_2_1) _lh_ccp_generator_arg1_1)))))))) in
          (fun _lh_ccp_generator_LH_C_0_3 _lh_ccp_generator_LH_P4_1_2 _lh_ccp_generator_LH_P4_2_2 _lh_ccp_generator_LH_P4_3_2 _lh_ccp_generator_arg1_2 _lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_9 -> 
            (((((((_lh_listcomp_fun_ls_h_3 _lh_ccp_generator_LH_C_0_3) _lh_ccp_generator_LH_P4_1_2) _lh_ccp_generator_LH_P4_2_2) _lh_ccp_generator_LH_P4_3_2) _lh_ccp_generator_arg1_2) _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_8))))
    | _ -> 
      (failwith "error"));;
let rec atIndex_lz_lh__d3 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_1) -> 
        (if (n_0 = 0) then
          h_0
        else
          ((atIndex_lz_lh__d3 (n_0 - 1)) t_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d2 n_5 ls_7 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_7) with
      | `LH_C(h_5, t_8) -> 
        (if (n_5 = 0) then
          h_5
        else
          ((atIndex_lz_lh__d2 (n_5 - 1)) t_8))
      | `LH_N -> 
        (failwith "error")));;
let rec ccp_generator_lh__d1 _lh_ccp_generator_arg1_7 _lh_ccp_generator_arg2_1 =
  (let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_1_8 -> 
    (match _lh_listcomp_fun_para_1_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_7, _lh_listcomp_fun_ls_t_2_9) -> 
        (match _lh_listcomp_fun_ls_h_2_7 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_1, _lh_ccp_generator_LH_P4_1_4, _lh_ccp_generator_LH_P4_2_7, _lh_ccp_generator_LH_P4_3_7) -> 
            (let rec _lh_listcomp_fun_4_1 = (fun _lh_listcomp_fun_para_1_9 -> 
              (match _lh_listcomp_fun_para_1_9 with
                | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_3_0) -> 
                  (match _lh_listcomp_fun_ls_h_2_8 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_1_4, _lh_ccp_generator_LH_C_1_5) -> 
                      (let rec _lh_listcomp_fun_4_2 = (fun _lh_listcomp_fun_para_2_0 -> 
                        ((((((((_lh_listcomp_fun_para_2_0 _lh_ccp_generator_LH_C_0_1_4) _lh_ccp_generator_LH_P4_1_4) _lh_ccp_generator_LH_P4_2_7) _lh_ccp_generator_LH_P4_3_7) _lh_ccp_generator_arg1_7) _lh_listcomp_fun_4_2) _lh_listcomp_fun_ls_t_3_0) _lh_listcomp_fun_4_1)) in
                        (_lh_listcomp_fun_4_2 (remainders_lh__d1 (if (_lh_ccp_generator_LH_P4_0_1 = _lh_ccp_generator_LH_P4_1_4) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_1_4, _lh_ccp_generator_LH_C_1_5))
                        else
                          ((atIndex_lz_lh__d2 _lh_ccp_generator_LH_P4_1_4) _lh_ccp_generator_arg1_7)))))
                    | _ -> 
                      (_lh_listcomp_fun_4_1 _lh_listcomp_fun_ls_t_3_0))
                | `LH_N -> 
                  (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_9))) in
              (_lh_listcomp_fun_4_1 (remainders_lh__d3 ((atIndex_lz_lh__d3 _lh_ccp_generator_LH_P4_0_1) _lh_ccp_generator_arg1_7))))
          | _ -> 
            (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_9))
      | `LH_N -> 
        (fun _lh_dummy_6 -> 
          0))) in
    (_lh_listcomp_fun_4_0 (four_partitions_lh__d1 (_lh_ccp_generator_arg2_1 - 1))));;
let rec length_lh__d2 ls_1_0 =
  (ls_1_0 99);;
let rec bcp_generator_lh__d1 _lh_bcp_generator_arg1_1 _lh_bcp_generator_arg2_1 =
  (if (odd_lh__d1 _lh_bcp_generator_arg2_1) then
    (fun _lh_dummy_7 -> 
      0)
  else
    (let rec _lh_listcomp_fun_5_9 = (fun _lh_listcomp_fun_para_2_8 -> 
      (match _lh_listcomp_fun_para_2_8 with
        | `LH_C(_lh_listcomp_fun_ls_h_4_2, _lh_listcomp_fun_ls_t_4_3) -> 
          (match _lh_listcomp_fun_ls_h_4_2 with
            | `LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1) -> 
              (let rec _lh_listcomp_fun_6_0 = (fun _lh_listcomp_fun_para_2_9 -> 
                (match _lh_listcomp_fun_para_2_9 with
                  | `LH_C(_lh_listcomp_fun_ls_h_4_3, _lh_listcomp_fun_ls_t_4_4) -> 
                    (let rec t_9 = (_lh_listcomp_fun_6_0 _lh_listcomp_fun_ls_t_4_4) in
                      (fun _lh_dummy_8 -> 
                        (1 + (length_lh__d2 t_9))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_4_3))) in
                (_lh_listcomp_fun_6_0 (`LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1))))
            | _ -> 
              (_lh_listcomp_fun_5_9 _lh_listcomp_fun_ls_t_4_3))
        | `LH_N -> 
          (fun _lh_dummy_9 -> 
            0))) in
      (_lh_listcomp_fun_5_9 (remainders_lh__d3 ((atIndex_lz_lh__d6 (_lh_bcp_generator_arg2_1 / 2)) _lh_bcp_generator_arg1_1)))));;
let rec enumFromTo_lh__d2 a_3 b_3 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_3_1 = ((enumFromTo_lh__d2 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_2_9 = a_3 in
        (`LH_C(((length_lh__d2 ((bcp_generator_lh__d1 _lh_popOutId_1_3) _lh_listcomp_fun_ls_h_2_9)) + (length_lh__d3 ((ccp_generator_lh__d1 _lh_popOutId_1_3) _lh_listcomp_fun_ls_h_2_9))), (_lh_popOutId_0_3 _lh_listcomp_fun_ls_t_3_1)))))
  else
    (`LH_N));;
let rec radical_generator_lh__d2 _lh_radical_generator_arg1_1 =
  (let rec radicals_6 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_3) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d1 radicals_6) _lh_listcomp_fun_ls_h_2_1), (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_3))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_3_3 ((enumFromTo_lh__d5 1) _lh_radical_generator_arg1_1)))))) in
    radicals_6);;
let rec paraffins_until_lh__d1 _lh_paraffins_until_arg1_0 =
  (let rec radicals_1_2 = (radical_generator_lh__d2 (_lh_paraffins_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_6_6 = (fun _lh_listcomp_fun_para_3_3 -> 
      ((_lh_listcomp_fun_para_3_3 _lh_listcomp_fun_6_6) radicals_1_2)) in
      (_lh_listcomp_fun_6_6 ((enumFromTo_lh__d2 1) _lh_paraffins_until_arg1_0))));;
let rec testParaffins_nofib_lh__d1 _lh_testParaffins_nofib_arg1_0 =
  (`LH_P4((let rec _lh_listcomp_fun_6_2 = (fun _lh_listcomp_fun_para_3_1 -> 
    ((_lh_listcomp_fun_para_3_1 _lh_listcomp_fun_6_2) _lh_testParaffins_nofib_arg1_0)) in
    (_lh_listcomp_fun_6_2 (let rec _lh_listcomp_fun_ls_t_4_6 = (fun _lh_listcomp_fun_6_3 _lh_testParaffins_nofib_arg1_1 -> 
      (`LH_N)) in
      (let rec _lh_listcomp_fun_ls_h_4_5 = (radical_generator_lh__d1 _lh_testParaffins_nofib_arg1_0) in
        (fun _lh_listcomp_fun_6_4 _lh_testParaffins_nofib_arg1_2 -> 
          (let rec _lh_listcomp_fun_6_5 = (fun _lh_listcomp_fun_para_3_2 -> 
            ((((_lh_listcomp_fun_para_3_2 _lh_listcomp_fun_ls_h_4_5) _lh_listcomp_fun_6_5) _lh_listcomp_fun_ls_t_4_6) _lh_listcomp_fun_6_4)) in
            (_lh_listcomp_fun_6_5 ((enumFromTo_lh__d1 0) _lh_testParaffins_nofib_arg1_2)))))))), (bcp_until_lh__d1 _lh_testParaffins_nofib_arg1_0), (ccp_until_lh__d1 _lh_testParaffins_nofib_arg1_0), (paraffins_until_lh__d1 _lh_testParaffins_nofib_arg1_0)));;
end;;

