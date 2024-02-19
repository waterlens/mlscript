

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______ = struct
let rec atIndex_lz_lh__d1 n_2 ls_3 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_3) with
      | `LH_C(h_3, t_3) -> 
        (if (n_2 = 0) then
          h_3
        else
          ((atIndex_lz_lh__d1 (n_2 - 1)) t_3))
      | `LH_N -> 
        (failwith "error")));;
let rec length_lh__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_0, t_1_0) -> 
      (1 + (length_lh__d1 t_1_0))
    | `LH_N -> 
      0);;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_2_4 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_2_7 = a_0 in
        (fun _lh_listcomp_fun_ls_h_2_8 _lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_5 _lh_listcomp_fun_3_6 -> 
          (`LH_C((length_lh__d1 ((atIndex_lz_lh__d1 _lh_listcomp_fun_ls_h_2_7) _lh_listcomp_fun_ls_h_2_8)), (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_2_4))))))
  else
    (fun _lh_listcomp_fun_ls_h_2_9 _lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_2_6 _lh_listcomp_fun_3_8 -> 
      (_lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_2_6)));;
let rec remainders_lh__d3 _lh_remainders_arg1_2 =
  (match _lh_remainders_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2) -> 
      (`LH_C((`LH_C(_lh_remainders_LH_C_0_2, _lh_remainders_LH_C_1_2)), (remainders_lh__d3 _lh_remainders_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d4 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`LH_C(a_2, ((enumFromTo_lh__d4 (a_2 + 1)) b_2)))
  else
    (`LH_N));;
let rec atIndex_lz_lh__d6 n_4 ls_6 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_6) with
      | `LH_C(h_7, t_7) -> 
        (if (n_4 = 0) then
          h_7
        else
          ((atIndex_lz_lh__d6 (n_4 - 1)) t_7))
      | `LH_N -> 
        (failwith "error")));;
let rec rads_of_size_n_lh__d2 _lh_rads_of_size_n_arg1_0 _lh_rads_of_size_n_arg2_0 =
  (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (match _lh_listcomp_fun_ls_h_1 with
          | `LH_P3(_lh_rads_of_size_n_LH_P3_0_0, _lh_rads_of_size_n_LH_P3_1_0, _lh_rads_of_size_n_LH_P3_2_0) -> 
            (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_6 -> 
              (match _lh_listcomp_fun_para_6 with
                | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                  (match _lh_listcomp_fun_ls_h_2 with
                    | `LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0) -> 
                      (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_7 -> 
                        (match _lh_listcomp_fun_para_7 with
                          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                            (match _lh_listcomp_fun_ls_h_3 with
                              | `LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1) -> 
                                (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_8 -> 
                                  (match _lh_listcomp_fun_para_8 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                                      (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_0_1, _lh_listcomp_fun_ls_h_4)), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_4)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_3))) in
                                  (_lh_listcomp_fun_1_0 (if (_lh_rads_of_size_n_LH_P3_1_0 = _lh_rads_of_size_n_LH_P3_2_0) then
                                    (`LH_C(_lh_rads_of_size_n_LH_C_0_1, _lh_rads_of_size_n_LH_C_1_1))
                                  else
                                    ((atIndex_lz_lh__d6 _lh_rads_of_size_n_LH_P3_2_0) _lh_rads_of_size_n_arg1_0))))
                              | _ -> 
                                (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_3))
                          | `LH_N -> 
                            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_2))) in
                        (_lh_listcomp_fun_9 (remainders_lh__d3 (if (_lh_rads_of_size_n_LH_P3_0_0 = _lh_rads_of_size_n_LH_P3_1_0) then
                          (`LH_C(_lh_rads_of_size_n_LH_C_0_0, _lh_rads_of_size_n_LH_C_1_0))
                        else
                          ((atIndex_lz_lh__d6 _lh_rads_of_size_n_LH_P3_1_0) _lh_rads_of_size_n_arg1_0)))))
                    | _ -> 
                      (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_2))
                | `LH_N -> 
                  (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1))) in
              (_lh_listcomp_fun_8 (remainders_lh__d3 ((atIndex_lz_lh__d6 _lh_rads_of_size_n_LH_P3_0_0) _lh_rads_of_size_n_arg1_0))))
          | _ -> 
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_7 (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_9 -> 
      (match _lh_listcomp_fun_para_9 with
        | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
          (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_0 -> 
            (match _lh_listcomp_fun_para_1_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_1 -> 
                  (((((_lh_listcomp_fun_para_1_1 _lh_listcomp_fun_ls_h_5) _lh_listcomp_fun_ls_h_6) _lh_listcomp_fun_1_3) _lh_listcomp_fun_ls_t_6) _lh_listcomp_fun_1_2)) in
                  (_lh_listcomp_fun_1_3 (let rec _lh_listcomp_fun_ls_t_7 = (fun _lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_1_5 -> 
                    (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_8)) in
                    (let rec _lh_listcomp_fun_ls_h_9 = ((_lh_rads_of_size_n_arg2_0 - 1) - (_lh_listcomp_fun_ls_h_5 + _lh_listcomp_fun_ls_h_6)) in
                      (fun _lh_listcomp_fun_ls_h_1_0 _lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_7 -> 
                        (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_7))))))))
              | `LH_N -> 
                (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_5))) in
            (_lh_listcomp_fun_1_2 ((enumFromTo_lh__d4 _lh_listcomp_fun_ls_h_5) (((_lh_rads_of_size_n_arg2_0 - 1) - _lh_listcomp_fun_ls_h_5) / 2))))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_1_1 ((enumFromTo_lh__d4 0) ((_lh_rads_of_size_n_arg2_0 - 1) / 3))))));;
let rec enumFromTo_lz_lh__d2 _lh_enumFromTo_lz_arg1_1 _lh_enumFromTo_lz_arg2_1 =
  (lazy (if (_lh_enumFromTo_lz_arg1_1 <= _lh_enumFromTo_lz_arg2_1) then
    (`LH_C(_lh_enumFromTo_lz_arg1_1, ((enumFromTo_lz_lh__d2 (_lh_enumFromTo_lz_arg1_1 + 1)) _lh_enumFromTo_lz_arg2_1)))
  else
    (`LH_N)));;
let rec radical_generator_lh__d3 _lh_radical_generator_arg1_0 =
  (let rec radicals_3 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_5 -> 
    (match (Lazy.force _lh_listcomp_fun_para_1_5) with
      | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_7) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d2 radicals_3) _lh_listcomp_fun_ls_h_1_6), (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_1_7))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_2_6 ((enumFromTo_lz_lh__d2 1) _lh_radical_generator_arg1_0)))))) in
    radicals_3);;
let rec atIndex_lz_lh__d4 n_3 ls_5 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_5) with
      | `LH_C(h_4, t_4) -> 
        (if (n_3 = 0) then
          h_4
        else
          ((atIndex_lz_lh__d4 (n_3 - 1)) t_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d3 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_0) with
      | `LH_C(h_1, t_1) -> 
        (if (n_0 = 0) then
          h_1
        else
          ((atIndex_lz_lh__d3 (n_0 - 1)) t_1))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_lz_lh__d2 n_5 ls_7 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_7) with
      | `LH_C(h_8, t_8) -> 
        (if (n_5 = 0) then
          h_8
        else
          ((atIndex_lz_lh__d2 (n_5 - 1)) t_8))
      | `LH_N -> 
        (failwith "error")));;
let rec remainders_lh__d1 _lh_remainders_arg1_0 =
  (match _lh_remainders_arg1_0 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_0 _lh_rads_of_size_n_LH_C_0_2 _lh_rads_of_size_n_LH_P3_1_1 _lh_rads_of_size_n_LH_P3_2_1 _lh_rads_of_size_n_arg1_1 _lh_listcomp_fun_ls_t_1_2 _lh_listcomp_fun_2_1 -> 
        (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_2))
    | `LH_C(_lh_remainders_LH_C_0_0, _lh_remainders_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_ls_t_1_3 = (remainders_lh__d1 _lh_remainders_LH_C_1_0) in
        (let rec _lh_listcomp_fun_ls_h_1_4 = (let rec _lh_rads_of_size_n_LH_C_1_2 = _lh_remainders_LH_C_1_0 in
          (let rec _lh_rads_of_size_n_LH_C_0_3 = _lh_remainders_LH_C_0_0 in
            (fun _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_2_2 _lh_rads_of_size_n_LH_C_0_4 _lh_rads_of_size_n_LH_P3_1_2 _lh_rads_of_size_n_LH_P3_2_2 _lh_rads_of_size_n_arg1_2 -> 
              (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_1_4 -> 
                (match _lh_listcomp_fun_para_1_4 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
                    (`LH_C((`C(_lh_rads_of_size_n_LH_C_0_4, _lh_rads_of_size_n_LH_C_0_3, _lh_listcomp_fun_ls_h_1_5)), (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_5)))
                  | `LH_N -> 
                    (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_4))) in
                (_lh_listcomp_fun_2_3 (if (_lh_rads_of_size_n_LH_P3_1_2 = _lh_rads_of_size_n_LH_P3_2_2) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_3, _lh_rads_of_size_n_LH_C_1_2))
                else
                  ((atIndex_lz_lh__d2 _lh_rads_of_size_n_LH_P3_2_2) _lh_rads_of_size_n_arg1_2))))))) in
          (fun _lh_listcomp_fun_2_4 _lh_rads_of_size_n_LH_C_0_5 _lh_rads_of_size_n_LH_P3_1_3 _lh_rads_of_size_n_LH_P3_2_3 _lh_rads_of_size_n_arg1_3 _lh_listcomp_fun_ls_t_1_6 _lh_listcomp_fun_2_5 -> 
            ((((((_lh_listcomp_fun_ls_h_1_4 _lh_listcomp_fun_ls_t_1_3) _lh_listcomp_fun_2_4) _lh_rads_of_size_n_LH_C_0_5) _lh_rads_of_size_n_LH_P3_1_3) _lh_rads_of_size_n_LH_P3_2_3) _lh_rads_of_size_n_arg1_3))))
    | _ -> 
      (failwith "error"));;
let rec remainders_lh__d2 _lh_remainders_arg1_1 =
  (match _lh_remainders_arg1_1 with
    | `LH_N -> 
      (fun _lh_listcomp_fun_4_2 _lh_rads_of_size_n_LH_P3_0_1 _lh_rads_of_size_n_LH_P3_1_4 _lh_rads_of_size_n_LH_P3_2_4 _lh_rads_of_size_n_arg1_4 _lh_listcomp_fun_ls_t_2_9 _lh_listcomp_fun_4_3 -> 
        (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_2_9))
    | `LH_C(_lh_remainders_LH_C_0_1, _lh_remainders_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_ls_t_3_0 = (remainders_lh__d2 _lh_remainders_LH_C_1_1) in
        (let rec _lh_listcomp_fun_ls_h_3_2 = (let rec _lh_rads_of_size_n_LH_C_1_3 = _lh_remainders_LH_C_1_1 in
          (let rec _lh_rads_of_size_n_LH_C_0_6 = _lh_remainders_LH_C_0_1 in
            (fun _lh_listcomp_fun_ls_t_3_1 _lh_listcomp_fun_4_4 _lh_rads_of_size_n_LH_P3_0_2 _lh_rads_of_size_n_LH_P3_1_5 _lh_rads_of_size_n_LH_P3_2_5 _lh_rads_of_size_n_arg1_5 -> 
              (let rec _lh_listcomp_fun_4_5 = (fun _lh_listcomp_fun_para_2_1 -> 
                (((((((_lh_listcomp_fun_para_2_1 _lh_listcomp_fun_4_5) _lh_rads_of_size_n_LH_C_0_6) _lh_rads_of_size_n_LH_P3_1_5) _lh_rads_of_size_n_LH_P3_2_5) _lh_rads_of_size_n_arg1_5) _lh_listcomp_fun_ls_t_3_1) _lh_listcomp_fun_4_4)) in
                (_lh_listcomp_fun_4_5 (remainders_lh__d1 (if (_lh_rads_of_size_n_LH_P3_0_2 = _lh_rads_of_size_n_LH_P3_1_5) then
                  (`LH_C(_lh_rads_of_size_n_LH_C_0_6, _lh_rads_of_size_n_LH_C_1_3))
                else
                  ((atIndex_lz_lh__d3 _lh_rads_of_size_n_LH_P3_1_5) _lh_rads_of_size_n_arg1_5)))))))) in
          (fun _lh_listcomp_fun_4_6 _lh_rads_of_size_n_LH_P3_0_3 _lh_rads_of_size_n_LH_P3_1_6 _lh_rads_of_size_n_LH_P3_2_6 _lh_rads_of_size_n_arg1_6 _lh_listcomp_fun_ls_t_3_2 _lh_listcomp_fun_4_7 -> 
            ((((((_lh_listcomp_fun_ls_h_3_2 _lh_listcomp_fun_ls_t_3_0) _lh_listcomp_fun_4_6) _lh_rads_of_size_n_LH_P3_0_3) _lh_rads_of_size_n_LH_P3_1_6) _lh_rads_of_size_n_LH_P3_2_6) _lh_rads_of_size_n_arg1_6))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lz_lh__d1 _lh_enumFromTo_lz_arg1_0 _lh_enumFromTo_lz_arg2_0 =
  (lazy (if (_lh_enumFromTo_lz_arg1_0 <= _lh_enumFromTo_lz_arg2_0) then
    (let rec _lh_listcomp_fun_ls_t_3_4 = ((enumFromTo_lz_lh__d1 (_lh_enumFromTo_lz_arg1_0 + 1)) _lh_enumFromTo_lz_arg2_0) in
      (let rec _lh_listcomp_fun_ls_h_3_4 = _lh_enumFromTo_lz_arg1_0 in
        (fun _lh_listcomp_fun_4_9 radicals_8 -> 
          (lazy (`LH_C((let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_2_3 -> 
            (match _lh_listcomp_fun_para_2_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_3_5, _lh_listcomp_fun_ls_t_3_5) -> 
                (match _lh_listcomp_fun_ls_h_3_5 with
                  | `LH_P3(_lh_rads_of_size_n_LH_P3_0_4, _lh_rads_of_size_n_LH_P3_1_7, _lh_rads_of_size_n_LH_P3_2_7) -> 
                    (let rec _lh_listcomp_fun_5_1 = (fun _lh_listcomp_fun_para_2_4 -> 
                      (((((((_lh_listcomp_fun_para_2_4 _lh_listcomp_fun_5_1) _lh_rads_of_size_n_LH_P3_0_4) _lh_rads_of_size_n_LH_P3_1_7) _lh_rads_of_size_n_LH_P3_2_7) radicals_8) _lh_listcomp_fun_ls_t_3_5) _lh_listcomp_fun_5_0)) in
                      (_lh_listcomp_fun_5_1 (remainders_lh__d2 ((atIndex_lz_lh__d4 _lh_rads_of_size_n_LH_P3_0_4) radicals_8))))
                  | _ -> 
                    (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_3_5))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_5_0 (let rec _lh_listcomp_fun_5_2 = (fun _lh_listcomp_fun_para_2_5 -> 
              (match _lh_listcomp_fun_para_2_5 with
                | `LH_C(_lh_listcomp_fun_ls_h_3_6, _lh_listcomp_fun_ls_t_3_6) -> 
                  (let rec _lh_listcomp_fun_5_3 = (fun _lh_listcomp_fun_para_2_6 -> 
                    (match _lh_listcomp_fun_para_2_6 with
                      | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_3_7) -> 
                        (let rec _lh_listcomp_fun_5_4 = (fun _lh_listcomp_fun_para_2_7 -> 
                          (((((_lh_listcomp_fun_para_2_7 _lh_listcomp_fun_ls_h_3_6) _lh_listcomp_fun_ls_h_3_7) _lh_listcomp_fun_5_4) _lh_listcomp_fun_ls_t_3_7) _lh_listcomp_fun_5_3)) in
                          (_lh_listcomp_fun_5_4 (let rec _lh_listcomp_fun_ls_t_3_8 = (fun _lh_listcomp_fun_ls_h_3_8 _lh_listcomp_fun_ls_h_3_9 _lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_3_9 _lh_listcomp_fun_5_6 -> 
                            (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_3_9)) in
                            (let rec _lh_listcomp_fun_ls_h_4_0 = ((_lh_listcomp_fun_ls_h_3_4 - 1) - (_lh_listcomp_fun_ls_h_3_6 + _lh_listcomp_fun_ls_h_3_7)) in
                              (fun _lh_listcomp_fun_ls_h_4_1 _lh_listcomp_fun_ls_h_4_2 _lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_4_0 _lh_listcomp_fun_5_8 -> 
                                (`LH_C((`LH_P3(_lh_listcomp_fun_ls_h_4_1, _lh_listcomp_fun_ls_h_4_2, _lh_listcomp_fun_ls_h_4_0)), (_lh_listcomp_fun_5_7 _lh_listcomp_fun_ls_t_3_8))))))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_3_6))) in
                    (_lh_listcomp_fun_5_3 ((enumFromTo_lh__d4 _lh_listcomp_fun_ls_h_3_6) (((_lh_listcomp_fun_ls_h_3_4 - 1) - _lh_listcomp_fun_ls_h_3_6) / 2))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_5_2 ((enumFromTo_lh__d4 0) ((_lh_listcomp_fun_ls_h_3_4 - 1) / 3)))))), (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_3_4)))))))
  else
    (fun _lh_listcomp_fun_5_9 radicals_9 -> 
      (lazy (`LH_N)))));;
let rec radical_generator_lh__d2 _lh_radical_generator_arg1_2 =
  (let rec radicals_1_0 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_6_9 = (fun _lh_listcomp_fun_para_3_3 -> 
    (match (Lazy.force _lh_listcomp_fun_para_3_3) with
      | `LH_C(_lh_listcomp_fun_ls_h_5_1, _lh_listcomp_fun_ls_t_4_7) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d2 radicals_1_0) _lh_listcomp_fun_ls_h_5_1), (_lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_4_7))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_6_9 ((enumFromTo_lz_lh__d2 1) _lh_radical_generator_arg1_2)))))) in
    radicals_1_0);;
let rec odd_lh__d1 _lh_odd_arg1_0 =
  ((_lh_odd_arg1_0 mod 2) = 1);;
let rec atIndex_lz_lh__d5 n_1 ls_2 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2) with
      | `LH_C(h_2, t_2) -> 
        (if (n_1 = 0) then
          h_2
        else
          ((atIndex_lz_lh__d5 (n_1 - 1)) t_2))
      | `LH_N -> 
        (failwith "error")));;
let rec bcp_generator_lh__d1 _lh_bcp_generator_arg1_1 _lh_bcp_generator_arg2_1 =
  (if (odd_lh__d1 _lh_bcp_generator_arg2_1) then
    (fun _lh_dummy_7 -> 
      0)
  else
    (let rec _lh_listcomp_fun_1_0_6 = (fun _lh_listcomp_fun_para_5_6 -> 
      (match _lh_listcomp_fun_para_5_6 with
        | `LH_C(_lh_listcomp_fun_ls_h_9_0, _lh_listcomp_fun_ls_t_7_6) -> 
          (match _lh_listcomp_fun_ls_h_9_0 with
            | `LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1) -> 
              (let rec _lh_listcomp_fun_1_0_7 = (fun _lh_listcomp_fun_para_5_7 -> 
                (match _lh_listcomp_fun_para_5_7 with
                  | `LH_C(_lh_listcomp_fun_ls_h_9_1, _lh_listcomp_fun_ls_t_7_7) -> 
                    (let rec t_9 = (_lh_listcomp_fun_1_0_7 _lh_listcomp_fun_ls_t_7_7) in
                      (let rec h_9 = (`BCP(_lh_bcp_generator_LH_C_0_1, _lh_listcomp_fun_ls_h_9_1)) in
                        (fun _lh_dummy_8 -> 
                          (1 + (t_9 99)))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_0_6 _lh_listcomp_fun_ls_t_7_6))) in
                (_lh_listcomp_fun_1_0_7 (`LH_C(_lh_bcp_generator_LH_C_0_1, _lh_bcp_generator_LH_C_1_1))))
            | _ -> 
              (_lh_listcomp_fun_1_0_6 _lh_listcomp_fun_ls_t_7_6))
        | `LH_N -> 
          (fun _lh_dummy_9 -> 
            0))) in
      (_lh_listcomp_fun_1_0_6 (remainders_lh__d3 ((atIndex_lz_lh__d5 (_lh_bcp_generator_arg2_1 / 2)) _lh_bcp_generator_arg1_1)))));;
let rec enumFromTo_lh__d2 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_7_0 = ((enumFromTo_lh__d2 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_8_2 = a_3 in
        (fun _lh_listcomp_fun_9_7 radicals_1_2 -> 
          (`LH_C((((bcp_generator_lh__d1 radicals_1_2) _lh_listcomp_fun_ls_h_8_2) 99), (_lh_listcomp_fun_9_7 _lh_listcomp_fun_ls_t_7_0))))))
  else
    (fun _lh_listcomp_fun_9_8 radicals_1_3 -> 
      (`LH_N)));;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec ccp_generator_lh__d2 _lh_ccp_generator_arg1_0 _lh_ccp_generator_arg2_0 =
  (let rec _lh_listcomp_fun_7_1 = (fun _lh_listcomp_fun_para_3_5 -> 
    (match _lh_listcomp_fun_para_3_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5_2, _lh_listcomp_fun_ls_t_4_8) -> 
        (match _lh_listcomp_fun_ls_h_5_2 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_0, _lh_ccp_generator_LH_P4_1_0, _lh_ccp_generator_LH_P4_2_0, _lh_ccp_generator_LH_P4_3_0) -> 
            (let rec _lh_listcomp_fun_7_2 = (fun _lh_listcomp_fun_para_3_6 -> 
              (match _lh_listcomp_fun_para_3_6 with
                | `LH_C(_lh_listcomp_fun_ls_h_5_3, _lh_listcomp_fun_ls_t_4_9) -> 
                  (match _lh_listcomp_fun_ls_h_5_3 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_0, _lh_ccp_generator_LH_C_1_0) -> 
                      (let rec _lh_listcomp_fun_7_3 = (fun _lh_listcomp_fun_para_3_7 -> 
                        (match _lh_listcomp_fun_para_3_7 with
                          | `LH_C(_lh_listcomp_fun_ls_h_5_4, _lh_listcomp_fun_ls_t_5_0) -> 
                            (match _lh_listcomp_fun_ls_h_5_4 with
                              | `LH_C(_lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_1_1) -> 
                                (let rec _lh_listcomp_fun_7_4 = (fun _lh_listcomp_fun_para_3_8 -> 
                                  (match _lh_listcomp_fun_para_3_8 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_5_5, _lh_listcomp_fun_ls_t_5_1) -> 
                                      (match _lh_listcomp_fun_ls_h_5_5 with
                                        | `LH_C(_lh_ccp_generator_LH_C_0_2, _lh_ccp_generator_LH_C_1_2) -> 
                                          (let rec _lh_listcomp_fun_7_5 = (fun _lh_listcomp_fun_para_3_9 -> 
                                            (match _lh_listcomp_fun_para_3_9 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_5_6, _lh_listcomp_fun_ls_t_5_2) -> 
                                                (let rec t_5 = (_lh_listcomp_fun_7_5 _lh_listcomp_fun_ls_t_5_2) in
                                                  (let rec h_5 = (`CCP(_lh_ccp_generator_LH_C_0_0, _lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_0_2, _lh_listcomp_fun_ls_h_5_6)) in
                                                    (fun _lh_dummy_3 -> 
                                                      (1 + (t_5 99)))))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_5_1))) in
                                            (_lh_listcomp_fun_7_5 (if (_lh_ccp_generator_LH_P4_2_0 = _lh_ccp_generator_LH_P4_3_0) then
                                              (`LH_C(_lh_ccp_generator_LH_C_0_2, _lh_ccp_generator_LH_C_1_2))
                                            else
                                              ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_3_0) _lh_ccp_generator_arg1_0))))
                                        | _ -> 
                                          (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_5_1))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_5_0))) in
                                  (_lh_listcomp_fun_7_4 (remainders_lh__d3 (if (_lh_ccp_generator_LH_P4_1_0 = _lh_ccp_generator_LH_P4_2_0) then
                                    (`LH_C(_lh_ccp_generator_LH_C_0_1, _lh_ccp_generator_LH_C_1_1))
                                  else
                                    ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_2_0) _lh_ccp_generator_arg1_0)))))
                              | _ -> 
                                (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_5_0))
                          | `LH_N -> 
                            (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_4_9))) in
                        (_lh_listcomp_fun_7_3 (remainders_lh__d3 (if (_lh_ccp_generator_LH_P4_0_0 = _lh_ccp_generator_LH_P4_1_0) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_0, _lh_ccp_generator_LH_C_1_0))
                        else
                          ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_1_0) _lh_ccp_generator_arg1_0)))))
                    | _ -> 
                      (_lh_listcomp_fun_7_2 _lh_listcomp_fun_ls_t_4_9))
                | `LH_N -> 
                  (_lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_4_8))) in
              (_lh_listcomp_fun_7_2 (remainders_lh__d3 ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_0_0) _lh_ccp_generator_arg1_0))))
          | _ -> 
            (_lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_4_8))
      | `LH_N -> 
        (fun _lh_dummy_4 -> 
          0))) in
    (_lh_listcomp_fun_7_1 (let rec _lh_listcomp_fun_7_6 = (fun _lh_listcomp_fun_para_4_0 -> 
      (match _lh_listcomp_fun_para_4_0 with
        | `LH_C(_lh_listcomp_fun_ls_h_5_7, _lh_listcomp_fun_ls_t_5_3) -> 
          (let rec _lh_listcomp_fun_7_7 = (fun _lh_listcomp_fun_para_4_1 -> 
            (match _lh_listcomp_fun_para_4_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_5_8, _lh_listcomp_fun_ls_t_5_4) -> 
                (let rec _lh_listcomp_fun_7_8 = (fun _lh_listcomp_fun_para_4_2 -> 
                  (match _lh_listcomp_fun_para_4_2 with
                    | `LH_C(_lh_listcomp_fun_ls_h_5_9, _lh_listcomp_fun_ls_t_5_5) -> 
                      (let rec _lh_listcomp_fun_7_9 = (fun _lh_listcomp_fun_para_4_3 -> 
                        ((((((_lh_listcomp_fun_para_4_3 _lh_listcomp_fun_ls_h_5_9) _lh_listcomp_fun_ls_h_5_8) _lh_listcomp_fun_ls_h_5_7) _lh_listcomp_fun_7_9) _lh_listcomp_fun_ls_t_5_5) _lh_listcomp_fun_7_8)) in
                        (_lh_listcomp_fun_7_9 (let rec _lh_listcomp_fun_ls_t_5_6 = (fun _lh_listcomp_fun_ls_h_6_0 _lh_listcomp_fun_ls_h_6_1 _lh_listcomp_fun_ls_h_6_2 _lh_listcomp_fun_8_0 _lh_listcomp_fun_ls_t_5_7 _lh_listcomp_fun_8_1 -> 
                          (_lh_listcomp_fun_8_1 _lh_listcomp_fun_ls_t_5_7)) in
                          (let rec _lh_listcomp_fun_ls_h_6_3 = ((_lh_ccp_generator_arg2_0 - 1) - ((_lh_listcomp_fun_ls_h_5_7 + _lh_listcomp_fun_ls_h_5_8) + _lh_listcomp_fun_ls_h_5_9)) in
                            (fun _lh_listcomp_fun_ls_h_6_4 _lh_listcomp_fun_ls_h_6_5 _lh_listcomp_fun_ls_h_6_6 _lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_5_8 _lh_listcomp_fun_8_3 -> 
                              (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_6_6, _lh_listcomp_fun_ls_h_6_5, _lh_listcomp_fun_ls_h_6_4, _lh_listcomp_fun_ls_h_6_3)), (_lh_listcomp_fun_8_2 _lh_listcomp_fun_ls_t_5_6))))))))
                    | `LH_N -> 
                      (_lh_listcomp_fun_7_7 _lh_listcomp_fun_ls_t_5_4))) in
                  (_lh_listcomp_fun_7_8 ((enumFromTo_lh__d4 ((max_lh__d1 _lh_listcomp_fun_ls_h_5_8) (((int_of_float (ceil ((float_of_int (_lh_ccp_generator_arg2_0 - 1)) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_5_7) - _lh_listcomp_fun_ls_h_5_8))) ((((_lh_ccp_generator_arg2_0 - 1) - _lh_listcomp_fun_ls_h_5_7) - _lh_listcomp_fun_ls_h_5_8) / 2))))
              | `LH_N -> 
                (_lh_listcomp_fun_7_6 _lh_listcomp_fun_ls_t_5_3))) in
            (_lh_listcomp_fun_7_7 ((enumFromTo_lh__d4 _lh_listcomp_fun_ls_h_5_7) (((_lh_ccp_generator_arg2_0 - 1) - _lh_listcomp_fun_ls_h_5_7) / 3))))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_7_6 ((enumFromTo_lh__d4 0) ((_lh_ccp_generator_arg2_0 - 1) / 4))))));;
let rec radical_generator_lh__d4 _lh_radical_generator_arg1_1 =
  (let rec radicals_4 = (lazy (`LH_C((`LH_C((`H), (`LH_N))), (let rec _lh_listcomp_fun_3_9 = (fun _lh_listcomp_fun_para_2_0 -> 
    (match (Lazy.force _lh_listcomp_fun_para_2_0) with
      | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_2_7) -> 
        (lazy (`LH_C(((rads_of_size_n_lh__d2 radicals_4) _lh_listcomp_fun_ls_h_3_0), (_lh_listcomp_fun_3_9 _lh_listcomp_fun_ls_t_2_7))))
      | `LH_N -> 
        (lazy (`LH_N)))) in
    (_lh_listcomp_fun_3_9 ((enumFromTo_lz_lh__d2 1) _lh_radical_generator_arg1_1)))))) in
    radicals_4);;
let rec ccp_until_lh__d1 _lh_ccp_until_arg1_0 =
  (let rec radicals_7 = (radical_generator_lh__d4 (_lh_ccp_until_arg1_0 / 2)) in
    (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_2_2 -> 
      (match _lh_listcomp_fun_para_2_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_3_3, _lh_listcomp_fun_ls_t_3_3) -> 
          (`LH_C((((ccp_generator_lh__d2 radicals_7) _lh_listcomp_fun_ls_h_3_3) 99), (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_3_3)))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_4_8 ((enumFromTo_lh__d4 1) _lh_ccp_until_arg1_0))));;
let rec bcp_generator_lh__d2 _lh_bcp_generator_arg1_0 _lh_bcp_generator_arg2_0 =
  (if (odd_lh__d1 _lh_bcp_generator_arg2_0) then
    (fun _lh_dummy_0 -> 
      0)
  else
    (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_2 -> 
      (match _lh_listcomp_fun_para_1_2 with
        | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_0) -> 
          (match _lh_listcomp_fun_ls_h_1_2 with
            | `LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0) -> 
              (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_3 -> 
                (match _lh_listcomp_fun_para_1_3 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_1) -> 
                    (let rec t_0 = (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_1) in
                      (let rec h_0 = (`BCP(_lh_bcp_generator_LH_C_0_0, _lh_listcomp_fun_ls_h_1_3)) in
                        (fun _lh_dummy_1 -> 
                          (1 + (t_0 99)))))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_0))) in
                (_lh_listcomp_fun_1_9 (`LH_C(_lh_bcp_generator_LH_C_0_0, _lh_bcp_generator_LH_C_1_0))))
            | _ -> 
              (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_0))
        | `LH_N -> 
          (fun _lh_dummy_2 -> 
            0))) in
      (_lh_listcomp_fun_1_8 (remainders_lh__d3 ((atIndex_lz_lh__d6 (_lh_bcp_generator_arg2_0 / 2)) _lh_bcp_generator_arg1_0)))));;
let rec ccp_generator_lh__d1 _lh_ccp_generator_arg1_1 _lh_ccp_generator_arg2_1 =
  (let rec _lh_listcomp_fun_8_4 = (fun _lh_listcomp_fun_para_4_4 -> 
    (match _lh_listcomp_fun_para_4_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_6_7, _lh_listcomp_fun_ls_t_5_9) -> 
        (match _lh_listcomp_fun_ls_h_6_7 with
          | `LH_P4(_lh_ccp_generator_LH_P4_0_1, _lh_ccp_generator_LH_P4_1_1, _lh_ccp_generator_LH_P4_2_1, _lh_ccp_generator_LH_P4_3_1) -> 
            (let rec _lh_listcomp_fun_8_5 = (fun _lh_listcomp_fun_para_4_5 -> 
              (match _lh_listcomp_fun_para_4_5 with
                | `LH_C(_lh_listcomp_fun_ls_h_6_8, _lh_listcomp_fun_ls_t_6_0) -> 
                  (match _lh_listcomp_fun_ls_h_6_8 with
                    | `LH_C(_lh_ccp_generator_LH_C_0_3, _lh_ccp_generator_LH_C_1_3) -> 
                      (let rec _lh_listcomp_fun_8_6 = (fun _lh_listcomp_fun_para_4_6 -> 
                        (match _lh_listcomp_fun_para_4_6 with
                          | `LH_C(_lh_listcomp_fun_ls_h_6_9, _lh_listcomp_fun_ls_t_6_1) -> 
                            (match _lh_listcomp_fun_ls_h_6_9 with
                              | `LH_C(_lh_ccp_generator_LH_C_0_4, _lh_ccp_generator_LH_C_1_4) -> 
                                (let rec _lh_listcomp_fun_8_7 = (fun _lh_listcomp_fun_para_4_7 -> 
                                  (match _lh_listcomp_fun_para_4_7 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_7_0, _lh_listcomp_fun_ls_t_6_2) -> 
                                      (match _lh_listcomp_fun_ls_h_7_0 with
                                        | `LH_C(_lh_ccp_generator_LH_C_0_5, _lh_ccp_generator_LH_C_1_5) -> 
                                          (let rec _lh_listcomp_fun_8_8 = (fun _lh_listcomp_fun_para_4_8 -> 
                                            (match _lh_listcomp_fun_para_4_8 with
                                              | `LH_C(_lh_listcomp_fun_ls_h_7_1, _lh_listcomp_fun_ls_t_6_3) -> 
                                                (let rec t_6 = (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_6_3) in
                                                  (let rec h_6 = (`CCP(_lh_ccp_generator_LH_C_0_3, _lh_ccp_generator_LH_C_0_4, _lh_ccp_generator_LH_C_0_5, _lh_listcomp_fun_ls_h_7_1)) in
                                                    (fun _lh_dummy_5 -> 
                                                      (1 + (t_6 99)))))
                                              | `LH_N -> 
                                                (_lh_listcomp_fun_8_7 _lh_listcomp_fun_ls_t_6_2))) in
                                            (_lh_listcomp_fun_8_8 (if (_lh_ccp_generator_LH_P4_2_1 = _lh_ccp_generator_LH_P4_3_1) then
                                              (`LH_C(_lh_ccp_generator_LH_C_0_5, _lh_ccp_generator_LH_C_1_5))
                                            else
                                              ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_3_1) _lh_ccp_generator_arg1_1))))
                                        | _ -> 
                                          (_lh_listcomp_fun_8_7 _lh_listcomp_fun_ls_t_6_2))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_6_1))) in
                                  (_lh_listcomp_fun_8_7 (remainders_lh__d3 (if (_lh_ccp_generator_LH_P4_1_1 = _lh_ccp_generator_LH_P4_2_1) then
                                    (`LH_C(_lh_ccp_generator_LH_C_0_4, _lh_ccp_generator_LH_C_1_4))
                                  else
                                    ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_2_1) _lh_ccp_generator_arg1_1)))))
                              | _ -> 
                                (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_6_1))
                          | `LH_N -> 
                            (_lh_listcomp_fun_8_5 _lh_listcomp_fun_ls_t_6_0))) in
                        (_lh_listcomp_fun_8_6 (remainders_lh__d3 (if (_lh_ccp_generator_LH_P4_0_1 = _lh_ccp_generator_LH_P4_1_1) then
                          (`LH_C(_lh_ccp_generator_LH_C_0_3, _lh_ccp_generator_LH_C_1_3))
                        else
                          ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_1_1) _lh_ccp_generator_arg1_1)))))
                    | _ -> 
                      (_lh_listcomp_fun_8_5 _lh_listcomp_fun_ls_t_6_0))
                | `LH_N -> 
                  (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_5_9))) in
              (_lh_listcomp_fun_8_5 (remainders_lh__d3 ((atIndex_lz_lh__d6 _lh_ccp_generator_LH_P4_0_1) _lh_ccp_generator_arg1_1))))
          | _ -> 
            (_lh_listcomp_fun_8_4 _lh_listcomp_fun_ls_t_5_9))
      | `LH_N -> 
        (fun _lh_dummy_6 -> 
          0))) in
    (_lh_listcomp_fun_8_4 (let rec _lh_listcomp_fun_8_9 = (fun _lh_listcomp_fun_para_4_9 -> 
      (match _lh_listcomp_fun_para_4_9 with
        | `LH_C(_lh_listcomp_fun_ls_h_7_2, _lh_listcomp_fun_ls_t_6_4) -> 
          (let rec _lh_listcomp_fun_9_0 = (fun _lh_listcomp_fun_para_5_0 -> 
            (match _lh_listcomp_fun_para_5_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_7_3, _lh_listcomp_fun_ls_t_6_5) -> 
                (let rec _lh_listcomp_fun_9_1 = (fun _lh_listcomp_fun_para_5_1 -> 
                  (match _lh_listcomp_fun_para_5_1 with
                    | `LH_C(_lh_listcomp_fun_ls_h_7_4, _lh_listcomp_fun_ls_t_6_6) -> 
                      (let rec _lh_listcomp_fun_9_2 = (fun _lh_listcomp_fun_para_5_2 -> 
                        ((((((_lh_listcomp_fun_para_5_2 _lh_listcomp_fun_ls_h_7_4) _lh_listcomp_fun_ls_h_7_3) _lh_listcomp_fun_ls_h_7_2) _lh_listcomp_fun_9_2) _lh_listcomp_fun_ls_t_6_6) _lh_listcomp_fun_9_1)) in
                        (_lh_listcomp_fun_9_2 (let rec _lh_listcomp_fun_ls_t_6_7 = (fun _lh_listcomp_fun_ls_h_7_5 _lh_listcomp_fun_ls_h_7_6 _lh_listcomp_fun_ls_h_7_7 _lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_6_8 _lh_listcomp_fun_9_4 -> 
                          (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_6_8)) in
                          (let rec _lh_listcomp_fun_ls_h_7_8 = ((_lh_ccp_generator_arg2_1 - 1) - ((_lh_listcomp_fun_ls_h_7_2 + _lh_listcomp_fun_ls_h_7_3) + _lh_listcomp_fun_ls_h_7_4)) in
                            (fun _lh_listcomp_fun_ls_h_7_9 _lh_listcomp_fun_ls_h_8_0 _lh_listcomp_fun_ls_h_8_1 _lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_6_9 _lh_listcomp_fun_9_6 -> 
                              (`LH_C((`LH_P4(_lh_listcomp_fun_ls_h_8_1, _lh_listcomp_fun_ls_h_8_0, _lh_listcomp_fun_ls_h_7_9, _lh_listcomp_fun_ls_h_7_8)), (_lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_6_7))))))))
                    | `LH_N -> 
                      (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_6_5))) in
                  (_lh_listcomp_fun_9_1 ((enumFromTo_lh__d4 ((max_lh__d1 _lh_listcomp_fun_ls_h_7_3) (((int_of_float (ceil ((float_of_int (_lh_ccp_generator_arg2_1 - 1)) /. (float_of_int 2)))) - _lh_listcomp_fun_ls_h_7_2) - _lh_listcomp_fun_ls_h_7_3))) ((((_lh_ccp_generator_arg2_1 - 1) - _lh_listcomp_fun_ls_h_7_2) - _lh_listcomp_fun_ls_h_7_3) / 2))))
              | `LH_N -> 
                (_lh_listcomp_fun_8_9 _lh_listcomp_fun_ls_t_6_4))) in
            (_lh_listcomp_fun_9_0 ((enumFromTo_lh__d4 _lh_listcomp_fun_ls_h_7_2) (((_lh_ccp_generator_arg2_1 - 1) - _lh_listcomp_fun_ls_h_7_2) / 3))))
        | `LH_N -> 
          (`LH_N))) in
      (_lh_listcomp_fun_8_9 ((enumFromTo_lh__d4 0) ((_lh_ccp_generator_arg2_1 - 1) / 4))))));;
let rec enumFromTo_lh__d3 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_2_8 = ((enumFromTo_lh__d3 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3_1 = a_1 in
        (fun _lh_listcomp_fun_4_0 radicals_5 -> 
          (`LH_C(((((bcp_generator_lh__d2 radicals_5) _lh_listcomp_fun_ls_h_3_1) 99) + (((ccp_generator_lh__d1 radicals_5) _lh_listcomp_fun_ls_h_3_1) 99)), (_lh_listcomp_fun_4_0 _lh_listcomp_fun_ls_t_2_8))))))
  else
    (fun _lh_listcomp_fun_4_1 radicals_6 -> 
      (`LH_N)));;
end;;

