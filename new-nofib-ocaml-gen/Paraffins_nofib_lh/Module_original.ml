
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec length_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh t_0))
    | `LH_N -> 
      0);;
let rec atIndex_lz_lh n_0 ls_1 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_1) with
      | `LH_C(h_1, t_1) -> 
        (if (n_0 = 0) then
          h_1
        else
          ((atIndex_lz_lh (n_0 - 1)) t_1))
      | `LH_N -> 
        (failwith "error")));;
let rec odd_lh _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 1);;
let rec remainders_lh _lh_remainders_arg1_0 =
  (match _lh_remainders_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_0, _lh_remainders_LH_C_1_0) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_0, _lh_remainders_LH_C_1_0)), (remainders_lh _lh_remainders_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec bcp_generator_lh _lh_bcp_generator_arg1_0 _lh_bcp_generator_arg2_0 =
  (if (odd_lh _lh_bcp_generator_arg2_0) then
    (`LH_N)
  else
    (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
      (match _lh_listcomp_fun_para_8 with
        | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
          (match _lh_listcomp_fun_ls_h_8 with
            | `LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0) -> 
              (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
                (match _lh_listcomp_fun_para_9 with
                  | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
                    (`LH_C((`BCP(_lh_bcp_generator_LH_C_0_0, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))) in
                (_lh_listcomp_fun_9 (`LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0))))
            | _ -> 
              (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_8 (remainders_lh ((atIndex_lz_lh (_lh_bcp_generator_arg2_0 / 2)) _lh_bcp_generator_arg1_0)))));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec three_partitions_lh _lh_three_partitions_arg1_0 =
  (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
          (match _lh_listcomp_fun_para_4 with
            | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
              (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                (match _lh_listcomp_fun_para_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                    (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
                (_lh_listcomp_fun_5 (`LH_C((_lh_three_partitions_arg1_0 - (_lh_listcomp_fun_ls_h_3 + _lh_listcomp_fun_ls_h_4)), (`LH_N)))))
            | `LH_N -> 
              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
          (_lh_listcomp_fun_4 ((enumFromTo_lh _lh_listcomp_fun_ls_h_3) ((_lh_three_partitions_arg1_0 - _lh_listcomp_fun_ls_h_3) / 2))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 ((enumFromTo_lh 0) (_lh_three_partitions_arg1_0 / 3))));;
let rec rads_of_size_n_lh _lh_rads_of_size_n_arg1_0 _lh_rads_of_size_n_arg2_0 =
  (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_2_0 -> 
    (match _lh_listcomp_fun_para_2_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_0) -> 
        (match _lh_listcomp_fun_ls_h_2_0 with
          | `LH_P3(_lh_rads_of_size_n_LH_P3_0_0, _lh_rads_of_size_n_LH_P3_1_0, _lh_rads_of_size_n_LH_P3_2_0) -> 
            (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_2_1 -> 
              (match _lh_listcomp_fun_para_2_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
                  (match _lh_listcomp_fun_ls_h_2_1 with
                    | `LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0) -> 
                      (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_2_2 -> 
                        (match _lh_listcomp_fun_para_2_2 with
                          | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_2) -> 
                            (match _lh_listcomp_fun_ls_h_2_2 with
                              | `LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1) -> 
                                (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_2_3 -> 
                                  (match _lh_listcomp_fun_para_2_3 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_3) -> 
                                      (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_0_1, _lh_listcomp_fun_ls_h_2_3)), (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_3)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2))) in
                                  (_lh_listcomp_fun_2_3 (if (_lh_rads_of_size_n_LH_P3_1_0 = _lh_rads_of_size_n_LH_P3_2_0) then
                                    (`LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1))
                                  else
                                    ((atIndex_lz_lh _lh_rads_of_size_n_LH_P3_2_0) _lh_rads_of_size_n_arg1_0))))
                              | _ -> 
                                (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2))
                          | `LH_N -> 
                            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1))) in
                        (_lh_listcomp_fun_2_2 (remainders_lh (if (_lh_rads_of_size_n_LH_P3_0_0 = _lh_rads_of_size_n_LH_P3_1_0) then
                          (`LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0))
                        else
                          ((atIndex_lz_lh _lh_rads_of_size_n_LH_P3_1_0) _lh_rads_of_size_n_arg1_0)))))
                    | _ -> 
                      (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1))
                | `LH_N -> 
                  (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0))) in
              (_lh_listcomp_fun_2_1 (remainders_lh ((atIndex_lz_lh _lh_rads_of_size_n_LH_P3_0_0) _lh_rads_of_size_n_arg1_0))))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_0 (three_partitions_lh (_lh_rads_of_size_n_arg2_0 - 1))));;
let rec radical_generator_lh _lh_radical_generator_arg1_0 =
  (let rec radicals_3 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
    (match _lh_listcomp_fun_para_1_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
        (lazy (`LH_C(((rads_of_size_n_lh radicals_3) _lh_listcomp_fun_ls_h_1_0), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_1_0 ((enumFromTo_lh 1) _lh_radical_generator_arg1_0)))))) in
    radicals_3);;
let rec bcp_until_lh _lh_bcp_until_arg1_0 =
  (let rec radicals_2 = (radical_generator_lh (_lh_bcp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
      (match _lh_listcomp_fun_para_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
          (`LH_C((length_lh ((bcp_generator_lh radicals_2) _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_2 ((enumFromTo_lh 1) _lh_bcp_until_arg1_0))));;
let rec max_lh _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec four_partitions_lh _lh_four_partitions_arg1_0 =
  (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
          (match _lh_listcomp_fun_para_1_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
              (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
                (match _lh_listcomp_fun_para_1_3 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
                    (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
                      (match _lh_listcomp_fun_para_1_4 with
                        | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
                          (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_h_1_4)), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4)))
                        | `LH_N -> 
                          (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))) in
                      (_lh_listcomp_fun_1_4 (`LH_C((_lh_four_partitions_arg1_0 - ((_lh_listcomp_fun_ls_h_1_1 + _lh_listcomp_fun_ls_h_1_2) + _lh_listcomp_fun_ls_h_1_3)), (`LH_N)))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))) in
                (_lh_listcomp_fun_1_3 ((enumFromTo_lh ((max_lh _lh_listcomp_fun_ls_h_1_2) (((int_of_float (ceil ((float_of_int _lh_four_partitions_arg1_0) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_1_1) - _lh_listcomp_fun_ls_h_1_2))) (((_lh_four_partitions_arg1_0 - _lh_listcomp_fun_ls_h_1_1) - _lh_listcomp_fun_ls_h_1_2) / 2))))
            | `LH_N -> 
              (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))) in
          (_lh_listcomp_fun_1_2 ((enumFromTo_lh _lh_listcomp_fun_ls_h_1_1) ((_lh_four_partitions_arg1_0 - _lh_listcomp_fun_ls_h_1_1) / 3))))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_1 ((enumFromTo_lh 0) (_lh_four_partitions_arg1_0 / 4))));;
let rec ccp_generator_lh _lh_ccp_generator_arg1_0 _lh_ccp_generator_arg2_0 =
  (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
    (match _lh_listcomp_fun_para_1_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
        (match _lh_listcomp_fun_ls_h_1_5 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_0, _lh_ccp_generator_LH_P4_1_0, _lh_ccp_generator_LH_P4_2_0, _lh_ccp_generator_LH_P4_3_0) -> 
            (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_6 -> 
              (match _lh_listcomp_fun_para_1_6 with
                | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_6) -> 
                  (match _lh_listcomp_fun_ls_h_1_6 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_0, _lh_ccp_generator_LH_C_1_0) -> 
                      (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_7 -> 
                        (match _lh_listcomp_fun_para_1_7 with
                          | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
                            (match _lh_listcomp_fun_ls_h_1_7 with
                              | `LH_C(_lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_1_1) -> 
                                (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_8 -> 
                                  (match _lh_listcomp_fun_para_1_8 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_8) -> 
                                      (match _lh_listcomp_fun_ls_h_1_8 with
                                        | `LH_C(_lh_ccp_generator_LH_C_0_2, _lh_ccp_generator_LH_C_1_2) -> 
                                          (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_9 -> 
                                            (match _lh_listcomp_fun_para_1_9 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
                                                (`LH_C((`CCP(_lh_ccp_generator_LH_C_0_0, _lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_0_2, _lh_listcomp_fun_ls_h_1_9)), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9)))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))) in
                                            (_lh_listcomp_fun_1_9 (if (_lh_ccp_generator_LH_P4_2_0 = _lh_ccp_generator_LH_P4_3_0) then
                                              (`LH_C(_lh_ccp_generator_LH_C_0_2, _lh_ccp_generator_LH_C_1_2))
                                            else
                                              ((atIndex_lz_lh _lh_ccp_generator_LH_P4_3_0) _lh_ccp_generator_arg1_0))))
                                        | _ -> 
                                          (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))) in
                                  (_lh_listcomp_fun_1_8 (remainders_lh (if (_lh_ccp_generator_LH_P4_1_0 = _lh_ccp_generator_LH_P4_2_0) then
                                    (`LH_C(_lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_1_1))
                                  else
                                    ((atIndex_lz_lh _lh_ccp_generator_LH_P4_2_0) _lh_ccp_generator_arg1_0)))))
                              | _ -> 
                                (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))
                          | `LH_N -> 
                            (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6))) in
                        (_lh_listcomp_fun_1_7 (remainders_lh (if (_lh_ccp_generator_LH_P4_0_0 = _lh_ccp_generator_LH_P4_1_0) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_0, _lh_ccp_generator_LH_C_1_0))
                        else
                          ((atIndex_lz_lh _lh_ccp_generator_LH_P4_1_0) _lh_ccp_generator_arg1_0)))))
                    | _ -> 
                      (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6))
                | `LH_N -> 
                  (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))) in
              (_lh_listcomp_fun_1_6 (remainders_lh ((atIndex_lz_lh _lh_ccp_generator_LH_P4_0_0) _lh_ccp_generator_arg1_0))))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_5 (four_partitions_lh (_lh_ccp_generator_arg2_0 - 1))));;
let rec ccp_until_lh _lh_ccp_until_arg1_0 =
  (let rec radicals_0 = (radical_generator_lh (_lh_ccp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
      (match _lh_listcomp_fun_para_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
          (`LH_C((length_lh ((ccp_generator_lh radicals_0) _lh_listcomp_fun_ls_h_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_0 ((enumFromTo_lh 1) _lh_ccp_until_arg1_0))));;
let rec paraffins_until_lh _lh_paraffins_until_arg1_0 =
  (let rec radicals_1 = (radical_generator_lh (_lh_paraffins_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
      (match _lh_listcomp_fun_para_1 with
        | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
          (`LH_C(((length_lh ((bcp_generator_lh radicals_1) _lh_listcomp_fun_ls_h_1)) + (length_lh ((ccp_generator_lh radicals_1) _lh_listcomp_fun_ls_h_1))), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1 ((enumFromTo_lh 1) _lh_paraffins_until_arg1_0))));;
let rec testParaffins_nofib_lh _lh_testParaffins_nofib_arg1_0 =
  (`LH_P4((let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
          (match _lh_listcomp_fun_para_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
              (`LH_C((length_lh ((atIndex_lz_lh _lh_listcomp_fun_ls_h_7) _lh_listcomp_fun_ls_h_6)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
            | `LH_N -> 
              (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))) in
          (_lh_listcomp_fun_7 ((enumFromTo_lh 0) _lh_testParaffins_nofib_arg1_0)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 (`LH_C((radical_generator_lh _lh_testParaffins_nofib_arg1_0), (`LH_N))))), (bcp_until_lh _lh_testParaffins_nofib_arg1_0), (ccp_until_lh _lh_testParaffins_nofib_arg1_0), (paraffins_until_lh _lh_testParaffins_nofib_arg1_0)));;
end;;

