

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec addj_lh__d1 _lh_addj_arg1_0 _lh_addj_arg2_0 =
  (match _lh_addj_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_0, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_0, _lh_addj_LH_C_1_0) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_0, (`LH_C(_lh_addj_LH_C_0_0, _lh_addj_LH_C_1_0)))), (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_0, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 ((addj_lh__d1 _lh_addj_arg1_0) _lh_addj_LH_C_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_0 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec h_0 = a_0 in
        (fun n_0 -> 
          (let rec _lh_permutations_LH_C_1_0 = (if ((n_0 - 1) > 0) then
            (t_0 (n_0 - 1))
          else
            (fun _lh_dummy_0 -> 
              (`LH_C((`LH_N), (`LH_N))))) in
            (let rec _lh_permutations_LH_C_0_0 = h_0 in
              (fun _lh_dummy_1 -> 
                (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
                  (match _lh_listcomp_fun_para_0 with
                    | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                      (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                        (match _lh_listcomp_fun_para_1 with
                          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                            (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                          | `LH_N -> 
                            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
                        (_lh_listcomp_fun_1 ((addj_lh__d1 _lh_permutations_LH_C_0_0) _lh_listcomp_fun_ls_h_0)))
                    | `LH_N -> 
                      (`LH_N))) in
                  (_lh_listcomp_fun_0 (_lh_permutations_LH_C_1_0 99)))))))))
  else
    (fun n_1 _lh_dummy_2 -> 
      (`LH_C((`LH_N), (`LH_N)))));;
let rec enumFromTo_lh__d1 a_1 b_1 _lh_popOutId_0_0 =
  (if (a_1 <= b_1) then
    (let rec t_1 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec h_1 = a_1 in
        (`LH_C((_lh_popOutId_0_0 h_1), (t_1 _lh_popOutId_0_0)))))
  else
    (`LH_N));;
let rec filter_lh__d1 f_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (if (f_1 h_2) then
        (`LH_C(h_2, ((filter_lh__d1 f_1) t_2)))
      else
        ((filter_lh__d1 f_1) t_2))
    | `LH_N -> 
      (`LH_N));;
let rec expand_lh__d1 _lh_expand_arg1_2 _lh_expand_arg2_2 _lh_expand_arg3_2 _lh_expand_arg4_2 _lh_expand_arg5_2 _lh_expand_arg6_2 =
  (((((_lh_expand_arg6_2 + (_lh_expand_arg5_2 * 10)) + (_lh_expand_arg4_2 * 100)) + (_lh_expand_arg3_2 * 1000)) + (_lh_expand_arg2_2 * 10000)) + (_lh_expand_arg1_2 * 100000));;
let rec expand_lh__d3 _lh_expand_arg1_0 _lh_expand_arg2_0 _lh_expand_arg3_0 _lh_expand_arg4_0 _lh_expand_arg5_0 _lh_expand_arg6_0 =
  (((((_lh_expand_arg6_0 + (_lh_expand_arg5_0 * 10)) + (_lh_expand_arg4_0 * 100)) + (_lh_expand_arg3_0 * 1000)) + (_lh_expand_arg2_0 * 10000)) + (_lh_expand_arg1_0 * 100000));;
let rec expand_lh__d2 _lh_expand_arg1_1 _lh_expand_arg2_1 _lh_expand_arg3_1 _lh_expand_arg4_1 _lh_expand_arg5_1 _lh_expand_arg6_1 =
  (((((_lh_expand_arg6_1 + (_lh_expand_arg5_1 * 10)) + (_lh_expand_arg4_1 * 100)) + (_lh_expand_arg3_1 * 1000)) + (_lh_expand_arg2_1 * 10000)) + (_lh_expand_arg1_1 * 100000));;
let rec condition_lh__d1 _lh_condition_arg1_0 =
  (match _lh_condition_arg1_0 with
    | `LH_C(_lh_condition_LH_C_0_0, _lh_condition_LH_C_1_0) -> 
      (match _lh_condition_LH_C_1_0 with
        | `LH_C(_lh_condition_LH_C_0_1, _lh_condition_LH_C_1_1) -> 
          (match _lh_condition_LH_C_1_1 with
            | `LH_C(_lh_condition_LH_C_0_2, _lh_condition_LH_C_1_2) -> 
              (match _lh_condition_LH_C_1_2 with
                | `LH_C(_lh_condition_LH_C_0_3, _lh_condition_LH_C_1_3) -> 
                  (match _lh_condition_LH_C_1_3 with
                    | `LH_C(_lh_condition_LH_C_0_4, _lh_condition_LH_C_1_4) -> 
                      (match _lh_condition_LH_C_1_4 with
                        | `LH_C(_lh_condition_LH_C_0_5, _lh_condition_LH_C_1_5) -> 
                          (match _lh_condition_LH_C_1_5 with
                            | `LH_C(_lh_condition_LH_C_0_6, _lh_condition_LH_C_1_6) -> 
                              (match _lh_condition_LH_C_1_6 with
                                | `LH_C(_lh_condition_LH_C_0_7, _lh_condition_LH_C_1_7) -> 
                                  (match _lh_condition_LH_C_1_7 with
                                    | `LH_C(_lh_condition_LH_C_0_8, _lh_condition_LH_C_1_8) -> 
                                      (match _lh_condition_LH_C_1_8 with
                                        | `LH_C(_lh_condition_LH_C_0_9, _lh_condition_LH_C_1_9) -> 
                                          (match _lh_condition_LH_C_1_9 with
                                            | `LH_N -> 
                                              ((((((((expand_lh__d3 _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_1) _lh_condition_LH_C_0_2) _lh_condition_LH_C_0_3) _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_4) + (5 * ((((((expand_lh__d1 _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_5) _lh_condition_LH_C_0_6) _lh_condition_LH_C_0_7) _lh_condition_LH_C_0_8) _lh_condition_LH_C_0_6))) = ((((((expand_lh__d2 _lh_condition_LH_C_0_9) _lh_condition_LH_C_0_2) _lh_condition_LH_C_0_9) _lh_condition_LH_C_0_6) _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_4))
                                            | _ -> 
                                              (failwith "error"))
                                        | _ -> 
                                          (failwith "error"))
                                    | _ -> 
                                      (failwith "error"))
                                | _ -> 
                                  (failwith "error"))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec testCryptarithm_nofib_lh__d1 _lh_testCryptarithm_nofib_arg1_0 =
  (((enumFromTo_lh__d1 1) _lh_testCryptarithm_nofib_arg1_0) (fun i_0 -> 
    (let rec p0_0 = (if (10 > 0) then
      (((enumFromTo_lh__d2 0) (9 + i_0)) 10)
    else
      (fun _lh_dummy_3 -> 
        (`LH_C((`LH_N), (`LH_N))))) in
      ((filter_lh__d1 condition_lh__d1) (p0_0 99)))));;
let run () = 1 + (Obj.magic ((testCryptarithm_nofib_lh__d1 1)));
end;;

