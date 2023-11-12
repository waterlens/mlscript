
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec addj__d0 _lh_addj_arg1_1 _lh_addj_arg2_1 =
  (match _lh_addj_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1, _lh_addj_LH_C_1_1) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1, (`LH_C(_lh_addj_LH_C_0_1, _lh_addj_LH_C_1_1)))), (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
        (match _lh_listcomp_fun_para_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1, _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_5 ((addj__d0 _lh_addj_arg1_1) _lh_addj_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec expand__d0 _lh_expand_arg1_1 _lh_expand_arg2_1 _lh_expand_arg3_1 _lh_expand_arg4_1 _lh_expand_arg5_1 _lh_expand_arg6_1 =
  (((((_lh_expand_arg6_1 + (_lh_expand_arg5_1 * 10)) + (_lh_expand_arg4_1 * 100)) + (_lh_expand_arg3_1 * 1000)) + (_lh_expand_arg2_1 * 10000)) + (_lh_expand_arg1_1 * 100000));;
let rec expand__d1 _lh_expand_arg1_2 _lh_expand_arg2_2 _lh_expand_arg3_2 _lh_expand_arg4_2 _lh_expand_arg5_2 _lh_expand_arg6_2 =
  (((((_lh_expand_arg6_2 + (_lh_expand_arg5_2 * 10)) + (_lh_expand_arg4_2 * 100)) + (_lh_expand_arg3_2 * 1000)) + (_lh_expand_arg2_2 * 10000)) + (_lh_expand_arg1_2 * 100000));;
let rec expand__d2 _lh_expand_arg1_3 _lh_expand_arg2_3 _lh_expand_arg3_3 _lh_expand_arg4_3 _lh_expand_arg5_3 _lh_expand_arg6_3 =
  (((((_lh_expand_arg6_3 + (_lh_expand_arg5_3 * 10)) + (_lh_expand_arg4_3 * 100)) + (_lh_expand_arg3_3 * 1000)) + (_lh_expand_arg2_3 * 10000)) + (_lh_expand_arg1_3 * 100000));;
let rec filter__d0 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (if (f_1_3 h_2_2) then
        (`LH_C(h_2_2, ((filter__d0 f_1_3) t_2_4)))
      else
        ((filter__d0 f_1_3) t_2_4))
    | `LH_N -> 
      (`LH_N));;
let rec map__d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec take__d0 n_4 ls_2_0 =
  (if (n_4 > 0) then
    (match ls_2_0 with
      | `LH_C(h_2_1, t_2_3) -> 
        (`LH_C(h_2_1, ((take__d0 (n_4 - 1)) t_2_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec condition__d0 _lh_condition_arg1_1 =
  (match _lh_condition_arg1_1 with
    | `LH_C(_lh_condition_LH_C_0_1_0, _lh_condition_LH_C_1_1_0) -> 
      (match _lh_condition_LH_C_1_1_0 with
        | `LH_C(_lh_condition_LH_C_0_1_1, _lh_condition_LH_C_1_1_1) -> 
          (match _lh_condition_LH_C_1_1_1 with
            | `LH_C(_lh_condition_LH_C_0_1_2, _lh_condition_LH_C_1_1_2) -> 
              (match _lh_condition_LH_C_1_1_2 with
                | `LH_C(_lh_condition_LH_C_0_1_3, _lh_condition_LH_C_1_1_3) -> 
                  (match _lh_condition_LH_C_1_1_3 with
                    | `LH_C(_lh_condition_LH_C_0_1_4, _lh_condition_LH_C_1_1_4) -> 
                      (match _lh_condition_LH_C_1_1_4 with
                        | `LH_C(_lh_condition_LH_C_0_1_5, _lh_condition_LH_C_1_1_5) -> 
                          (match _lh_condition_LH_C_1_1_5 with
                            | `LH_C(_lh_condition_LH_C_0_1_6, _lh_condition_LH_C_1_1_6) -> 
                              (match _lh_condition_LH_C_1_1_6 with
                                | `LH_C(_lh_condition_LH_C_0_1_7, _lh_condition_LH_C_1_1_7) -> 
                                  (match _lh_condition_LH_C_1_1_7 with
                                    | `LH_C(_lh_condition_LH_C_0_1_8, _lh_condition_LH_C_1_1_8) -> 
                                      (match _lh_condition_LH_C_1_1_8 with
                                        | `LH_C(_lh_condition_LH_C_0_1_9, _lh_condition_LH_C_1_1_9) -> 
                                          (match _lh_condition_LH_C_1_1_9 with
                                            | `LH_N -> 
                                              ((((((((expand__d0 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_1) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_3) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4) + (5 * ((((((expand__d1 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_5) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_7) _lh_condition_LH_C_0_1_8) _lh_condition_LH_C_0_1_6))) = ((((((expand__d2 _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4))
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
      (failwith "error"))
and permutations__d0 _lh_permutations_arg1_1 =
  (match _lh_permutations_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_1, _lh_permutations_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
              (match _lh_listcomp_fun_para_4 with
                | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_4, (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                | `LH_N -> 
                  (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
              (_lh_listcomp_fun_4 ((addj__d0 _lh_permutations_LH_C_0_1) _lh_listcomp_fun_ls_h_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 (permutations__d0 _lh_permutations_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and testCryptarithm_nofib__d0 _lh_testCryptarithm_nofib_arg1_1 =
  ((map__d0 (fun i_4 -> 
    (let rec p0_1 = ((take__d0 10) ((enumFromTo__d0 0) (9 + i_4))) in
      ((filter__d0 condition__d0) (permutations__d0 p0_1))))) ((enumFromTo__d1 1) _lh_testCryptarithm_nofib_arg1_1));;
end;;

