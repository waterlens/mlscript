(*
touch ./Cryptarithm_nofib.mli && ocamlc ./Cryptarithm_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Cryptarithm_nofib.ml -o "./Cryptarithm_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Cryptarithm_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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

(* lumberhack *)
let rec addj__d0__d0 _lh_addj_arg1_0 _lh_addj_arg2_0 =
  (match _lh_addj_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_0, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_0, _lh_addj_LH_C_1_0) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_0, (`LH_C(_lh_addj_LH_C_0_0, _lh_addj_LH_C_1_0)))), (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_0, _lh_listcomp_fun_ls_h_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((addj__d0__d0 _lh_addj_arg1_0) _lh_addj_LH_C_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec addj__d0__d1 _lh_addj_arg1_1 _lh_addj_arg2_1 =
  (match _lh_addj_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1, _lh_addj_LH_C_1_1) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1, (`LH_C(_lh_addj_LH_C_0_1, _lh_addj_LH_C_1_1)))), (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1, _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 ((addj__d0__d1 _lh_addj_arg1_1) _lh_addj_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec expand__d0__d0 _lh_expand_arg1_0 _lh_expand_arg2_0 _lh_expand_arg3_0 _lh_expand_arg4_0 _lh_expand_arg5_0 _lh_expand_arg6_0 =
  (((((_lh_expand_arg6_0 + (_lh_expand_arg5_0 * 10)) + (_lh_expand_arg4_0 * 100)) + (_lh_expand_arg3_0 * 1000)) + (_lh_expand_arg2_0 * 10000)) + (_lh_expand_arg1_0 * 100000));;
let rec expand__d1__d0 _lh_expand_arg1_2 _lh_expand_arg2_2 _lh_expand_arg3_2 _lh_expand_arg4_2 _lh_expand_arg5_2 _lh_expand_arg6_2 =
  (((((_lh_expand_arg6_2 + (_lh_expand_arg5_2 * 10)) + (_lh_expand_arg4_2 * 100)) + (_lh_expand_arg3_2 * 1000)) + (_lh_expand_arg2_2 * 10000)) + (_lh_expand_arg1_2 * 100000));;
let rec expand__d2__d0 _lh_expand_arg1_1 _lh_expand_arg2_1 _lh_expand_arg3_1 _lh_expand_arg4_1 _lh_expand_arg5_1 _lh_expand_arg6_1 =
  (((((_lh_expand_arg6_1 + (_lh_expand_arg5_1 * 10)) + (_lh_expand_arg4_1 * 100)) + (_lh_expand_arg3_1 * 1000)) + (_lh_expand_arg2_1 * 10000)) + (_lh_expand_arg1_1 * 100000));;
let rec filter__d0__d1 f_4 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (if (f_4 h_3) then
        (`LH_C(h_3, ((filter__d0__d1 f_4) t_3)))
      else
        ((filter__d0__d1 f_4) t_3))
    | `LH_N -> 
      (`LH_N));;
let rec map__d0__d0 f_1 ls_2 =
  (ls_2 f_1);;
let rec take__d0__d0 n_0 ls_1 =
  (if (n_0 > 0) then
    (ls_1 n_0)
  else
    (`LH_N));;
let rec condition__d0__d0 _lh_condition_arg1_0 =
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
                                              ((((((((expand__d0__d0 _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_1) _lh_condition_LH_C_0_2) _lh_condition_LH_C_0_3) _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_4) + (5 * ((((((expand__d1__d0 _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_5) _lh_condition_LH_C_0_6) _lh_condition_LH_C_0_7) _lh_condition_LH_C_0_8) _lh_condition_LH_C_0_6))) = ((((((expand__d2__d0 _lh_condition_LH_C_0_9) _lh_condition_LH_C_0_2) _lh_condition_LH_C_0_9) _lh_condition_LH_C_0_6) _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_4))
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
and enumFromTo__d0__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec t_2 = ((enumFromTo__d0__d0 (a_1 + 1)) b_1) in
      (let rec h_2 = a_1 in
        (fun n_1 -> 
          (`LH_C(h_2, ((take__d0__d0 (n_1 - 1)) t_2))))))
  else
    (fun n_2 -> 
      (`LH_N)))
and enumFromTo__d1__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_1 = ((enumFromTo__d1__d0 (a_0 + 1)) b_0) in
      (let rec h_1 = a_0 in
        (fun f_2 -> 
          (`LH_C((f_2 h_1), ((map__d0__d0 f_2) t_1))))))
  else
    (fun f_3 -> 
      (`LH_N)))
and filter__d0__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`LH_C(h_0, ((filter__d0__d0 f_0) t_0)))
      else
        ((filter__d0__d1 f_0) t_0))
    | `LH_N -> 
      (`LH_N))
and permutations__d0__d0 _lh_permutations_arg1_0 =
  (match _lh_permutations_arg1_0 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_0, _lh_permutations_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                | `LH_N -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((addj__d0__d0 _lh_permutations_LH_C_0_0) _lh_listcomp_fun_ls_h_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 (permutations__d0__d1 _lh_permutations_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and permutations__d0__d1 _lh_permutations_arg1_1 =
  (match _lh_permutations_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_1, _lh_permutations_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
            (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
              (match _lh_listcomp_fun_para_5 with
                | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                | `LH_N -> 
                  (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
              (_lh_listcomp_fun_5 ((addj__d0__d1 _lh_permutations_LH_C_0_1) _lh_listcomp_fun_ls_h_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4 (permutations__d0__d1 _lh_permutations_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and testCryptarithm_nofib__d0__d0 _lh_testCryptarithm_nofib_arg1_0 =
  ((map__d0__d0 (fun i_0 -> 
    (let rec p0_0 = ((take__d0__d0 10) ((enumFromTo__d0__d0 0) (9 + i_0))) in
      ((filter__d0__d0 condition__d0__d0) (permutations__d0__d0 p0_0))))) ((enumFromTo__d1__d0 1) _lh_testCryptarithm_nofib_arg1_0));;

(* lumberhack_pop_out *)
let rec addj__d0__d0__d0 _lh_addj_arg1_2 _lh_addj_arg2_2 =
  (match _lh_addj_arg2_2 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_2, _lh_addj_LH_C_1_2) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2, (`LH_C(_lh_addj_LH_C_0_2, _lh_addj_LH_C_1_2)))), (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_2, _lh_listcomp_fun_ls_h_8)), (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8 ((addj__d0__d0__d0 _lh_addj_arg1_2) _lh_addj_LH_C_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec addj__d0__d1__d0 _lh_addj_arg1_3 _lh_addj_arg2_3 =
  (match _lh_addj_arg2_3 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_3, _lh_addj_LH_C_1_3) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3, (`LH_C(_lh_addj_LH_C_0_3, _lh_addj_LH_C_1_3)))), (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_3, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_9 ((addj__d0__d1__d0 _lh_addj_arg1_3) _lh_addj_LH_C_1_3)))))
    | _ -> 
      (failwith "error"));;
let rec expand__d0__d0__d0 _lh_expand_arg1_3 _lh_expand_arg2_3 _lh_expand_arg3_3 _lh_expand_arg4_3 _lh_expand_arg5_3 _lh_expand_arg6_3 =
  (((((_lh_expand_arg6_3 + (_lh_expand_arg5_3 * 10)) + (_lh_expand_arg4_3 * 100)) + (_lh_expand_arg3_3 * 1000)) + (_lh_expand_arg2_3 * 10000)) + (_lh_expand_arg1_3 * 100000));;
let rec expand__d1__d0__d0 _lh_expand_arg1_5 _lh_expand_arg2_5 _lh_expand_arg3_5 _lh_expand_arg4_5 _lh_expand_arg5_5 _lh_expand_arg6_5 =
  (((((_lh_expand_arg6_5 + (_lh_expand_arg5_5 * 10)) + (_lh_expand_arg4_5 * 100)) + (_lh_expand_arg3_5 * 1000)) + (_lh_expand_arg2_5 * 10000)) + (_lh_expand_arg1_5 * 100000));;
let rec expand__d2__d0__d0 _lh_expand_arg1_4 _lh_expand_arg2_4 _lh_expand_arg3_4 _lh_expand_arg4_4 _lh_expand_arg5_4 _lh_expand_arg6_4 =
  (((((_lh_expand_arg6_4 + (_lh_expand_arg5_4 * 10)) + (_lh_expand_arg4_4 * 100)) + (_lh_expand_arg3_4 * 1000)) + (_lh_expand_arg2_4 * 10000)) + (_lh_expand_arg1_4 * 100000));;
let rec filter__d0__d1__d0 f_8 ls_8 =
  (match ls_8 with
    | `LH_C(h_5, t_5) -> 
      (if (f_8 h_5) then
        (`LH_C(h_5, ((filter__d0__d1__d0 f_8) t_5)))
      else
        ((filter__d0__d1__d0 f_8) t_5))
    | `LH_N -> 
      (`LH_N));;
let rec map__d0__d0__d0 f_5 ls_4 =
  (ls_4 f_5);;
let rec map__d0__d0__d1 f_6 ls_5 =
  (ls_5 f_6);;
let rec take__d0__d0__d0 n_3 ls_7 =
  (if (n_3 > 0) then
    (ls_7 n_3)
  else
    (`LH_N));;
let rec take__d0__d0__d1 n_4 ls_9 =
  (if (n_4 > 0) then
    (ls_9 n_4)
  else
    (`LH_N));;
let rec condition__d0__d0__d0 _lh_condition_arg1_1 =
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
                                              ((((((((expand__d0__d0__d0 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_1) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_3) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4) + (5 * ((((((expand__d1__d0__d0 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_5) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_7) _lh_condition_LH_C_0_1_8) _lh_condition_LH_C_0_1_6))) = ((((((expand__d2__d0__d0 _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4))
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
and enumFromTo__d0__d0__d0 a_2 b_2 _lh_popOutId_0_1 =
  (if (a_2 <= b_2) then
    (let rec t_6 = ((enumFromTo__d0__d0__d0 (a_2 + 1)) b_2) in
      (let rec h_6 = a_2 in
        (`LH_C(h_6, ((take__d0__d0__d0 (_lh_popOutId_0_1 - 1)) t_6)))))
  else
    (`LH_N))
and enumFromTo__d1__d0__d0 a_3 b_3 _lh_popOutId_0_0 =
  (if (a_3 <= b_3) then
    (let rec t_7 = ((enumFromTo__d1__d0__d0 (a_3 + 1)) b_3) in
      (let rec h_7 = a_3 in
        (`LH_C((_lh_popOutId_0_0 h_7), ((map__d0__d0__d0 _lh_popOutId_0_0) t_7)))))
  else
    (`LH_N))
and filter__d0__d0__d0 f_7 ls_6 =
  (match ls_6 with
    | `LH_C(h_4, t_4) -> 
      (if (f_7 h_4) then
        (`LH_C(h_4, ((filter__d0__d0__d0 f_7) t_4)))
      else
        ((filter__d0__d1__d0 f_7) t_4))
    | `LH_N -> 
      (`LH_N))
and permutations__d0__d0__d0 _lh_permutations_arg1_3 =
  (match _lh_permutations_arg1_3 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_3, _lh_permutations_LH_C_1_3) -> 
      (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
        (match _lh_listcomp_fun_para_1_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
            (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
              (match _lh_listcomp_fun_para_1_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_1_1, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
                | `LH_N -> 
                  (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))) in
              (_lh_listcomp_fun_1_1 ((addj__d0__d0__d0 _lh_permutations_LH_C_0_3) _lh_listcomp_fun_ls_h_1_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_0 (permutations__d0__d1__d0 _lh_permutations_LH_C_1_3)))
    | _ -> 
      (failwith "error"))
and permutations__d0__d1__d0 _lh_permutations_arg1_2 =
  (match _lh_permutations_arg1_2 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_2, _lh_permutations_LH_C_1_2) -> 
      (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
        (match _lh_listcomp_fun_para_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
            (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
              (match _lh_listcomp_fun_para_7 with
                | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_7, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
                | `LH_N -> 
                  (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))) in
              (_lh_listcomp_fun_7 ((addj__d0__d1__d0 _lh_permutations_LH_C_0_2) _lh_listcomp_fun_ls_h_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6 (permutations__d0__d1__d0 _lh_permutations_LH_C_1_2)))
    | _ -> 
      (failwith "error"))
and testCryptarithm_nofib__d0__d0__d0 _lh_testCryptarithm_nofib_arg1_1 =
  ((map__d0__d0__d1 (fun i_1 -> 
    (let rec p0_1 = ((take__d0__d0__d1 10) ((enumFromTo__d0__d0__d0 0) (9 + i_1))) in
      ((filter__d0__d0__d0 condition__d0__d0__d0) (permutations__d0__d0__d0 p0_1))))) ((enumFromTo__d1__d0__d0 1) _lh_testCryptarithm_nofib_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Cryptarithm_nofib" (fun () -> ignore ((testCryptarithm_nofib__d0 1)));
  Bench.Test.create ~name:"lumberhack_Cryptarithm_nofib" (fun () -> ignore ((testCryptarithm_nofib__d0__d0 1)));
  Bench.Test.create ~name:"lumberhack_pop_out_Cryptarithm_nofib" (fun () -> ignore ((testCryptarithm_nofib__d0__d0__d0 1)));
])
