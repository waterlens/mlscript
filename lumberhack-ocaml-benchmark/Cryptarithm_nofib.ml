(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Cryptarithm_nofib.ml -o "./Cryptarithm_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Cryptarithm_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec addj_d0 _lh_addj_arg1_1 _lh_addj_arg2_1 =
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
        (_lh_listcomp_fun_5 ((addj_d0 _lh_addj_arg1_1) _lh_addj_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo_d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo_d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec expand_d0 _lh_expand_arg1_1 _lh_expand_arg2_1 _lh_expand_arg3_1 _lh_expand_arg4_1 _lh_expand_arg5_1 _lh_expand_arg6_1 =
  (((((_lh_expand_arg6_1 + (_lh_expand_arg5_1 * 10)) + (_lh_expand_arg4_1 * 100)) + (_lh_expand_arg3_1 * 1000)) + (_lh_expand_arg2_1 * 10000)) + (_lh_expand_arg1_1 * 100000));;
let rec expand_d1 _lh_expand_arg1_2 _lh_expand_arg2_2 _lh_expand_arg3_2 _lh_expand_arg4_2 _lh_expand_arg5_2 _lh_expand_arg6_2 =
  (((((_lh_expand_arg6_2 + (_lh_expand_arg5_2 * 10)) + (_lh_expand_arg4_2 * 100)) + (_lh_expand_arg3_2 * 1000)) + (_lh_expand_arg2_2 * 10000)) + (_lh_expand_arg1_2 * 100000));;
let rec expand_d2 _lh_expand_arg1_3 _lh_expand_arg2_3 _lh_expand_arg3_3 _lh_expand_arg4_3 _lh_expand_arg5_3 _lh_expand_arg6_3 =
  (((((_lh_expand_arg6_3 + (_lh_expand_arg5_3 * 10)) + (_lh_expand_arg4_3 * 100)) + (_lh_expand_arg3_3 * 1000)) + (_lh_expand_arg2_3 * 10000)) + (_lh_expand_arg1_3 * 100000));;
let rec filter_d0 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (if (f_1_3 h_2_2) then
        (`LH_C(h_2_2, ((filter_d0 f_1_3) t_2_4)))
      else
        ((filter_d0 f_1_3) t_2_4))
    | `LH_N -> 
      (`LH_N));;
let rec map_d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map_d0 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec take_d0 n_4 ls_2_0 =
  (if (n_4 > 0) then
    (match ls_2_0 with
      | `LH_C(h_2_1, t_2_3) -> 
        (`LH_C(h_2_1, ((take_d0 (n_4 - 1)) t_2_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec condition_d0 _lh_condition_arg1_1 =
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
                                              ((((((((expand_d0 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_1) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_3) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4) + (5 * ((((((expand_d1 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_5) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_7) _lh_condition_LH_C_0_1_8) _lh_condition_LH_C_0_1_6))) = ((((((expand_d2 _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4))
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
and permutations_d0 _lh_permutations_arg1_1 =
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
              (_lh_listcomp_fun_4 ((addj_d0 _lh_permutations_LH_C_0_1) _lh_listcomp_fun_ls_h_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 (permutations_d0 _lh_permutations_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and testCryptarithm_nofib_d0 _lh_testCryptarithm_nofib_arg1_1 =
  ((map_d0 (fun i_4 -> 
    (let rec p0_1 = ((take_d0 10) ((enumFromTo_d0 0) (9 + i_4))) in
      ((filter_d0 condition_d0) (permutations_d0 p0_1))))) ((enumFromTo_d1 1) _lh_testCryptarithm_nofib_arg1_1));;

(* lumberhack *)
let rec addj_d0_d0_d0_d0_d0_d0 _lh_addj_arg1_1_2 _lh_addj_arg2_1_0 =
  (_lh_addj_arg2_1_0 _lh_addj_arg1_1_2);;
let rec addj_d0_d0_d0_d1_d0_d0 _lh_addj_arg1_1 _lh_addj_arg2_1 =
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
        (_lh_listcomp_fun_1 ((addj_d0_d0_d0_d1_d0_d0 _lh_addj_arg1_1) _lh_addj_LH_C_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d2_d0_d0 _lh_addj_arg1_5 _lh_addj_arg2_4 =
  (match _lh_addj_arg2_4 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_5, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_4, _lh_addj_LH_C_1_4) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_5, (`LH_C(_lh_addj_LH_C_0_4, _lh_addj_LH_C_1_4)))), (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_6 -> 
        (match _lh_listcomp_fun_para_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_8) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_4, _lh_listcomp_fun_ls_h_6)), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_8)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2 ((addj_d0_d0_d0_d2_d0_d0 _lh_addj_arg1_5) _lh_addj_LH_C_1_4)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d3_d0_d0 _lh_addj_arg1_0 _lh_addj_arg2_0 =
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
        (_lh_listcomp_fun_0 ((addj_d0_d0_d0_d3_d0_d0 _lh_addj_arg1_0) _lh_addj_LH_C_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d4_d0_d0 _lh_addj_arg1_9 _lh_addj_arg2_8 =
  (match _lh_addj_arg2_8 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_9, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_8, _lh_addj_LH_C_1_8) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_9, (`LH_C(_lh_addj_LH_C_0_8, _lh_addj_LH_C_1_8)))), (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_0 -> 
        (match _lh_listcomp_fun_para_1_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_2) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_8, _lh_listcomp_fun_ls_h_1_0)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_6 ((addj_d0_d0_d0_d4_d0_d0 _lh_addj_arg1_9) _lh_addj_LH_C_1_8)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d0_d0_d0_d0 _lh_addj_arg1_1_4 _lh_addj_arg2_1_1 =
  (_lh_addj_arg2_1_1 _lh_addj_arg1_1_4);;
let rec addj_d0_d1_d0_d1_d0_d0 _lh_addj_arg1_7 _lh_addj_arg2_6 =
  (match _lh_addj_arg2_6 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_7, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_6, _lh_addj_LH_C_1_6) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_7, (`LH_C(_lh_addj_LH_C_0_6, _lh_addj_LH_C_1_6)))), (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_8 -> 
        (match _lh_listcomp_fun_para_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_1_0) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_6, _lh_listcomp_fun_ls_h_8)), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_4 ((addj_d0_d1_d0_d1_d0_d0 _lh_addj_arg1_7) _lh_addj_LH_C_1_6)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d0_d2_d0_d0 _lh_addj_arg1_1_5 _lh_addj_arg2_1_2 =
  (_lh_addj_arg2_1_2 _lh_addj_arg1_1_5);;
let rec addj_d0_d1_d0_d2_d0_d1 _lh_addj_arg1_6 _lh_addj_arg2_5 =
  (match _lh_addj_arg2_5 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_6, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_5, _lh_addj_LH_C_1_5) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_6, (`LH_C(_lh_addj_LH_C_0_5, _lh_addj_LH_C_1_5)))), (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_7 -> 
        (match _lh_listcomp_fun_para_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_9) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_5, _lh_listcomp_fun_ls_h_7)), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_3 ((addj_d0_d1_d0_d2_d0_d1 _lh_addj_arg1_6) _lh_addj_LH_C_1_5)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d0_d3_d0_d0 _lh_addj_arg1_3 _lh_addj_arg2_2 =
  (match _lh_addj_arg2_2 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_2, _lh_addj_LH_C_1_2) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3, (`LH_C(_lh_addj_LH_C_0_2, _lh_addj_LH_C_1_2)))), (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_6) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_2, _lh_listcomp_fun_ls_h_4)), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_0 ((addj_d0_d1_d0_d3_d0_d0 _lh_addj_arg1_3) _lh_addj_LH_C_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d2_d0_d0_d0 _lh_addj_arg1_8 _lh_addj_arg2_7 =
  (match _lh_addj_arg2_7 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_8, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_7, _lh_addj_LH_C_1_7) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_8, (`LH_C(_lh_addj_LH_C_0_7, _lh_addj_LH_C_1_7)))), (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_9 -> 
        (match _lh_listcomp_fun_para_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_1) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_7, _lh_listcomp_fun_ls_h_9)), (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_5 ((addj_d0_d1_d2_d0_d0_d0 _lh_addj_arg1_8) _lh_addj_LH_C_1_7)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d3_d0_d0_d0 _lh_addj_arg1_4 _lh_addj_arg2_3 =
  (match _lh_addj_arg2_3 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_4, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_3, _lh_addj_LH_C_1_3) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_4, (`LH_C(_lh_addj_LH_C_0_3, _lh_addj_LH_C_1_3)))), (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_5 -> 
        (match _lh_listcomp_fun_para_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_7) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_3, _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_7)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_1 ((addj_d0_d1_d3_d0_d0_d0 _lh_addj_arg1_4) _lh_addj_LH_C_1_3)))))
    | _ -> 
      (failwith "error"));;
let rec expand_d0_d0_d0_d0_d0_d0 _lh_expand_arg1_1 _lh_expand_arg2_1 _lh_expand_arg3_1 _lh_expand_arg4_1 _lh_expand_arg5_1 _lh_expand_arg6_1 =
  (((((_lh_expand_arg6_1 + (_lh_expand_arg5_1 * 10)) + (_lh_expand_arg4_1 * 100)) + (_lh_expand_arg3_1 * 1000)) + (_lh_expand_arg2_1 * 10000)) + (_lh_expand_arg1_1 * 100000));;
let rec expand_d1_d0_d0_d0_d0_d0 _lh_expand_arg1_2 _lh_expand_arg2_2 _lh_expand_arg3_2 _lh_expand_arg4_2 _lh_expand_arg5_2 _lh_expand_arg6_2 =
  (((((_lh_expand_arg6_2 + (_lh_expand_arg5_2 * 10)) + (_lh_expand_arg4_2 * 100)) + (_lh_expand_arg3_2 * 1000)) + (_lh_expand_arg2_2 * 10000)) + (_lh_expand_arg1_2 * 100000));;
let rec expand_d2_d0_d0_d0_d0_d0 _lh_expand_arg1_0 _lh_expand_arg2_0 _lh_expand_arg3_0 _lh_expand_arg4_0 _lh_expand_arg5_0 _lh_expand_arg6_0 =
  (((((_lh_expand_arg6_0 + (_lh_expand_arg5_0 * 10)) + (_lh_expand_arg4_0 * 100)) + (_lh_expand_arg3_0 * 1000)) + (_lh_expand_arg2_0 * 10000)) + (_lh_expand_arg1_0 * 100000));;
let rec filter_d0_d1_d0_d0_d0_d1 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (if (f_0 h_0) then
        (`LH_C(h_0, ((filter_d0_d1_d0_d0_d0_d1 f_0) t_0)))
      else
        ((filter_d0_d1_d0_d0_d0_d1 f_0) t_0))
    | `LH_N -> 
      (`LH_N));;
let rec map_d0_d0_d0_d0_d0_d0 f_4 ls_5 =
  (ls_5 f_4);;
let rec map_d0_d0_d1_d0_d0_d0 f_1 ls_2 =
  (ls_2 f_1);;
let rec take_d0_d0_d0_d0_d0_d0 n_2 ls_1 =
  (if (n_2 > 0) then
    (ls_1 n_2)
  else
    (`LH_N));;
let rec take_d0_d0_d1_d0_d0_d0 n_3 ls_6 =
  (if (n_3 > 0) then
    (ls_6 n_3)
  else
    (`LH_N));;
let rec addj_d0_d1_d1_d0_d0_d0 _lh_addj_arg1_1_0 _lh_addj_arg2_9 =
  (match _lh_addj_arg2_9 with
    | `LH_N -> 
      (let rec _lh_listcomp_fun_ls_h_1_1 = (`LH_C(_lh_addj_arg1_1_0, (`LH_N))) in
        (let rec _lh_listcomp_fun_ls_t_1_3 = (fun _lh_listcomp_fun_1_7 _lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_4 -> 
          (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_4)) in
          (fun _lh_listcomp_fun_1_9 _lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_5 -> 
            (let rec _lh_listcomp_fun_ls_h_1_2 = _lh_listcomp_fun_ls_h_1_1 in
              (let rec _lh_listcomp_fun_ls_t_1_6 = (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_3) in
                (fun _lh_permutations_LH_C_0_3 _lh_listcomp_fun_2_1 -> 
                  (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_1_1 -> 
                    (match _lh_listcomp_fun_para_1_1 with
                      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_7) -> 
                        (let rec _lh_listcomp_fun_ls_h_1_4 = _lh_listcomp_fun_ls_h_1_3 in
                          (let rec _lh_listcomp_fun_ls_t_1_8 = (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_1_7) in
                            (fun _lh_permutations_LH_C_0_4 _lh_listcomp_fun_2_3 -> 
                              (let rec _lh_listcomp_fun_2_4 = (fun _lh_listcomp_fun_para_1_2 -> 
                                (match _lh_listcomp_fun_para_1_2 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_9) -> 
                                    (`LH_C(_lh_listcomp_fun_ls_h_1_5, (_lh_listcomp_fun_2_4 _lh_listcomp_fun_ls_t_1_9)))
                                  | `LH_N -> 
                                    (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_1_8))) in
                                (_lh_listcomp_fun_2_4 ((addj_d0_d0_d0_d2_d0_d0 _lh_permutations_LH_C_0_4) _lh_listcomp_fun_ls_h_1_4))))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_6))) in
                    (_lh_listcomp_fun_2_2 ((addj_d0_d1_d0_d1_d0_d0 _lh_permutations_LH_C_0_3) _lh_listcomp_fun_ls_h_1_2)))))))))
    | `LH_C(_lh_addj_LH_C_0_9, _lh_addj_LH_C_1_9) -> 
      (let rec _lh_listcomp_fun_ls_h_1_6 = (`LH_C(_lh_addj_arg1_1_0, (`LH_C(_lh_addj_LH_C_0_9, _lh_addj_LH_C_1_9)))) in
        (let rec _lh_listcomp_fun_ls_t_2_0 = (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_1_3 -> 
          (match _lh_listcomp_fun_para_1_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_2_1) -> 
              (let rec _lh_listcomp_fun_ls_h_1_8 = (let rec _lh_addj_LH_C_0_1_0 = _lh_addj_LH_C_0_9 in
                (let rec _lh_addj_LH_C_1_1_0 = _lh_listcomp_fun_ls_h_1_7 in
                  (fun _lh_addj_arg1_1_1 -> 
                    (let rec _lh_listcomp_fun_ls_h_1_9 = (`LH_C(_lh_addj_arg1_1_1, (`LH_C(_lh_addj_LH_C_0_1_0, _lh_addj_LH_C_1_1_0)))) in
                      (let rec _lh_listcomp_fun_ls_t_2_2 = (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_4 -> 
                        (match _lh_listcomp_fun_para_1_4 with
                          | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_3) -> 
                            (let rec _lh_listcomp_fun_ls_h_2_1 = (`LH_C(_lh_addj_LH_C_0_1_0, _lh_listcomp_fun_ls_h_2_0)) in
                              (let rec _lh_listcomp_fun_ls_t_2_4 = (_lh_listcomp_fun_2_6 _lh_listcomp_fun_ls_t_2_3) in
                                (fun _lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_5 _lh_listcomp_fun_2_8 -> 
                                  (let rec _lh_listcomp_fun_ls_h_2_2 = _lh_listcomp_fun_ls_h_2_1 in
                                    (let rec _lh_listcomp_fun_ls_t_2_6 = (_lh_listcomp_fun_2_7 _lh_listcomp_fun_ls_t_2_4) in
                                      (fun _lh_permutations_LH_C_0_5 _lh_listcomp_fun_2_9 -> 
                                        (let rec _lh_listcomp_fun_3_0 = (fun _lh_listcomp_fun_para_1_5 -> 
                                          (match _lh_listcomp_fun_para_1_5 with
                                            | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_7) -> 
                                              (`LH_C(_lh_listcomp_fun_ls_h_2_3, (_lh_listcomp_fun_3_0 _lh_listcomp_fun_ls_t_2_7)))
                                            | `LH_N -> 
                                              (_lh_listcomp_fun_2_9 _lh_listcomp_fun_ls_t_2_6))) in
                                          (_lh_listcomp_fun_3_0 ((addj_d0_d0_d0_d3_d0_d0 _lh_permutations_LH_C_0_5) _lh_listcomp_fun_ls_h_2_2)))))))))
                          | `LH_N -> 
                            (fun _lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_2_8 _lh_listcomp_fun_3_2 -> 
                              (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_2_8)))) in
                        (_lh_listcomp_fun_2_6 ((addj_d0_d1_d0_d2_d0_d1 _lh_addj_arg1_1_1) _lh_addj_LH_C_1_1_0))) in
                        (fun _lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_9 _lh_listcomp_fun_3_4 -> 
                          (let rec _lh_listcomp_fun_ls_h_2_4 = _lh_listcomp_fun_ls_h_1_9 in
                            (let rec _lh_listcomp_fun_ls_t_3_0 = (_lh_listcomp_fun_3_3 _lh_listcomp_fun_ls_t_2_2) in
                              (fun _lh_permutations_LH_C_0_6 _lh_listcomp_fun_3_5 -> 
                                (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_1_6 -> 
                                  (match _lh_listcomp_fun_para_1_6 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_2_5, _lh_listcomp_fun_ls_t_3_1) -> 
                                      (`LH_C(_lh_listcomp_fun_ls_h_2_5, (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_3_1)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_3_0))) in
                                  (_lh_listcomp_fun_3_6 ((addj_d0_d0_d0_d3_d0_d0 _lh_permutations_LH_C_0_6) _lh_listcomp_fun_ls_h_2_4)))))))))))) in
                (let rec _lh_listcomp_fun_ls_t_3_2 = (_lh_listcomp_fun_2_5 _lh_listcomp_fun_ls_t_2_1) in
                  (fun _lh_listcomp_fun_3_7 _lh_listcomp_fun_3_8 _lh_listcomp_fun_ls_t_3_3 -> 
                    (let rec _lh_listcomp_fun_ls_h_2_6 = _lh_listcomp_fun_ls_h_1_8 in
                      (let rec _lh_listcomp_fun_ls_t_3_4 = (_lh_listcomp_fun_3_7 _lh_listcomp_fun_ls_t_3_2) in
                        (fun _lh_permutations_LH_C_0_7 _lh_listcomp_fun_3_9 -> 
                          (let rec _lh_listcomp_fun_4_0 = (fun _lh_listcomp_fun_para_1_7 -> 
                            (((_lh_listcomp_fun_para_1_7 _lh_listcomp_fun_4_0) _lh_listcomp_fun_ls_t_3_4) _lh_listcomp_fun_3_9)) in
                            (_lh_listcomp_fun_4_0 ((addj_d0_d1_d0_d2_d0_d0 _lh_permutations_LH_C_0_7) _lh_listcomp_fun_ls_h_2_6)))))))))
            | `LH_N -> 
              (fun _lh_listcomp_fun_4_1 _lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_5 -> 
                (_lh_listcomp_fun_4_2 _lh_listcomp_fun_ls_t_3_5)))) in
          (_lh_listcomp_fun_2_5 ((addj_d0_d1_d2_d0_d0_d0 _lh_addj_arg1_1_0) _lh_addj_LH_C_1_9))) in
          (fun _lh_listcomp_fun_4_3 _lh_listcomp_fun_4_4 _lh_listcomp_fun_ls_t_3_6 -> 
            (let rec _lh_listcomp_fun_ls_h_2_7 = _lh_listcomp_fun_ls_h_1_6 in
              (let rec _lh_listcomp_fun_ls_t_3_7 = (_lh_listcomp_fun_4_3 _lh_listcomp_fun_ls_t_2_0) in
                (fun _lh_permutations_LH_C_0_8 _lh_listcomp_fun_4_5 -> 
                  (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_1_8 -> 
                    (match _lh_listcomp_fun_para_1_8 with
                      | `LH_C(_lh_listcomp_fun_ls_h_2_8, _lh_listcomp_fun_ls_t_3_8) -> 
                        (let rec _lh_listcomp_fun_ls_h_2_9 = _lh_listcomp_fun_ls_h_2_8 in
                          (let rec _lh_listcomp_fun_ls_t_3_9 = (_lh_listcomp_fun_4_6 _lh_listcomp_fun_ls_t_3_8) in
                            (fun _lh_permutations_LH_C_0_9 _lh_listcomp_fun_4_7 -> 
                              (let rec _lh_listcomp_fun_4_8 = (fun _lh_listcomp_fun_para_1_9 -> 
                                (match _lh_listcomp_fun_para_1_9 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_3_0, _lh_listcomp_fun_ls_t_4_0) -> 
                                    (`LH_C(_lh_listcomp_fun_ls_h_3_0, (_lh_listcomp_fun_4_8 _lh_listcomp_fun_ls_t_4_0)))
                                  | `LH_N -> 
                                    (_lh_listcomp_fun_4_7 _lh_listcomp_fun_ls_t_3_9))) in
                                (_lh_listcomp_fun_4_8 ((addj_d0_d0_d0_d4_d0_d0 _lh_permutations_LH_C_0_9) _lh_listcomp_fun_ls_h_2_9))))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_4_5 _lh_listcomp_fun_ls_t_3_7))) in
                    (_lh_listcomp_fun_4_6 ((addj_d0_d1_d0_d3_d0_d0 _lh_permutations_LH_C_0_8) _lh_listcomp_fun_ls_h_2_7)))))))))
    | _ -> 
      (failwith "error"))
and condition_d0_d0_d0_d0_d0_d0 _lh_condition_arg1_0 =
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
                                              ((((((((expand_d0_d0_d0_d0_d0_d0 _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_1) _lh_condition_LH_C_0_2) _lh_condition_LH_C_0_3) _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_4) + (5 * ((((((expand_d1_d0_d0_d0_d0_d0 _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_5) _lh_condition_LH_C_0_6) _lh_condition_LH_C_0_7) _lh_condition_LH_C_0_8) _lh_condition_LH_C_0_6))) = ((((((expand_d2_d0_d0_d0_d0_d0 _lh_condition_LH_C_0_9) _lh_condition_LH_C_0_2) _lh_condition_LH_C_0_9) _lh_condition_LH_C_0_6) _lh_condition_LH_C_0_0) _lh_condition_LH_C_0_4))
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
and enumFromTo_d0_d0_d0_d0_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_1 = a_0 in
      (let rec t_1 = ((enumFromTo_d0_d0_d0_d0_d0_d0 (a_0 + 1)) b_0) in
        (fun n_0 -> 
          (`LH_C(h_1, ((take_d0_d0_d0_d0_d0_d0 (n_0 - 1)) t_1))))))
  else
    (fun n_1 -> 
      (`LH_N)))
and enumFromTo_d1_d0_d0_d0_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec h_4 = a_1 in
      (let rec t_4 = ((enumFromTo_d1_d0_d0_d0_d0_d0 (a_1 + 1)) b_1) in
        (fun f_5 -> 
          (`LH_C((f_5 h_4), ((map_d0_d0_d0_d0_d0_d0 f_5) t_4))))))
  else
    (fun f_6 -> 
      (`LH_N)))
and filter_d0_d0_d0_d0_d0_d0 f_2 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      (if (f_2 h_2) then
        (`LH_C(h_2, ((filter_d0_d0_d0_d0_d0_d0 f_2) t_2)))
      else
        ((filter_d0_d1_d0_d0_d0_d0 f_2) t_2))
    | `LH_N -> 
      (`LH_N))
and filter_d0_d1_d0_d0_d0_d0 f_3 ls_4 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      (if (f_3 h_3) then
        (`LH_C(h_3, ((filter_d0_d1_d0_d0_d0_d0 f_3) t_3)))
      else
        ((filter_d0_d1_d0_d0_d0_d1 f_3) t_3))
    | `LH_N -> 
      (`LH_N))
and permutations_d0_d0_d0_d0_d0_d0 _lh_permutations_arg1_3 =
  (match _lh_permutations_arg1_3 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_1_8, _lh_permutations_LH_C_1_3) -> 
      (let rec _lh_listcomp_fun_6_5 = (fun _lh_listcomp_fun_para_2_6 -> 
        ((_lh_listcomp_fun_para_2_6 _lh_permutations_LH_C_0_1_8) _lh_listcomp_fun_6_5)) in
        (_lh_listcomp_fun_6_5 (permutations_d0_d1_d0_d0_d0_d0 _lh_permutations_LH_C_1_3)))
    | _ -> 
      (failwith "error"))
and permutations_d0_d1_d0_d0_d0_d0 _lh_permutations_arg1_0 =
  (match _lh_permutations_arg1_0 with
    | `LH_N -> 
      (let rec _lh_listcomp_fun_ls_h_2 = (fun _lh_addj_arg1_2 -> 
        (let rec _lh_listcomp_fun_ls_h_3 = (`LH_C(_lh_addj_arg1_2, (`LH_N))) in
          (let rec _lh_listcomp_fun_ls_t_2 = (fun _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_3 -> 
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)) in
            (fun _lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_5 -> 
              (`LH_C(_lh_listcomp_fun_ls_h_3, (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2))))))) in
        (let rec _lh_listcomp_fun_ls_t_5 = (fun _lh_permutations_LH_C_0_0 _lh_listcomp_fun_6 -> 
          (`LH_N)) in
          (fun _lh_permutations_LH_C_0_1 _lh_listcomp_fun_7 -> 
            (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
              (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_8) _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_7)) in
              (_lh_listcomp_fun_8 ((addj_d0_d0_d0_d0_d0_d0 _lh_permutations_LH_C_0_1) _lh_listcomp_fun_ls_h_2))))))
    | `LH_C(_lh_permutations_LH_C_0_2, _lh_permutations_LH_C_1_0) -> 
      (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_3 -> 
        ((_lh_listcomp_fun_para_3 _lh_permutations_LH_C_0_2) _lh_listcomp_fun_9)) in
        (_lh_listcomp_fun_9 (permutations_d0_d1_d1_d0_d0_d0 _lh_permutations_LH_C_1_0)))
    | _ -> 
      (failwith "error"))
and permutations_d0_d1_d1_d0_d0_d0 _lh_permutations_arg1_2 =
  (match _lh_permutations_arg1_2 with
    | `LH_N -> 
      (let rec _lh_listcomp_fun_ls_h_3_3 = (fun _lh_addj_arg1_1_3 -> 
        (let rec _lh_listcomp_fun_ls_h_3_4 = (`LH_C(_lh_addj_arg1_1_3, (`LH_N))) in
          (let rec _lh_listcomp_fun_ls_t_4_3 = (fun _lh_listcomp_fun_5_1 _lh_listcomp_fun_ls_t_4_4 _lh_listcomp_fun_5_2 -> 
            (_lh_listcomp_fun_5_2 _lh_listcomp_fun_ls_t_4_4)) in
            (fun _lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_4_5 _lh_listcomp_fun_5_4 -> 
              (let rec _lh_listcomp_fun_ls_h_3_5 = _lh_listcomp_fun_ls_h_3_4 in
                (let rec _lh_listcomp_fun_ls_t_4_6 = (_lh_listcomp_fun_5_3 _lh_listcomp_fun_ls_t_4_3) in
                  (fun _lh_permutations_LH_C_0_1_1 _lh_listcomp_fun_5_5 -> 
                    (let rec _lh_listcomp_fun_5_6 = (fun _lh_listcomp_fun_para_2_2 -> 
                      (match _lh_listcomp_fun_para_2_2 with
                        | `LH_C(_lh_listcomp_fun_ls_h_3_6, _lh_listcomp_fun_ls_t_4_7) -> 
                          (`LH_C(_lh_listcomp_fun_ls_h_3_6, (_lh_listcomp_fun_5_6 _lh_listcomp_fun_ls_t_4_7)))
                        | `LH_N -> 
                          (_lh_listcomp_fun_5_5 _lh_listcomp_fun_ls_t_4_6))) in
                      (_lh_listcomp_fun_5_6 ((addj_d0_d0_d0_d1_d0_d0 _lh_permutations_LH_C_0_1_1) _lh_listcomp_fun_ls_h_3_5)))))))))) in
        (let rec _lh_listcomp_fun_ls_t_4_8 = (fun _lh_permutations_LH_C_0_1_2 _lh_listcomp_fun_5_7 _lh_permutations_LH_C_0_1_3 _lh_listcomp_fun_5_8 -> 
          (`LH_N)) in
          (fun _lh_permutations_LH_C_0_1_4 _lh_listcomp_fun_5_9 -> 
            (let rec _lh_listcomp_fun_6_0 = (fun _lh_listcomp_fun_para_2_3 -> 
              (((_lh_listcomp_fun_para_2_3 _lh_listcomp_fun_6_0) _lh_listcomp_fun_ls_t_4_8) _lh_listcomp_fun_5_9)) in
              (_lh_listcomp_fun_6_0 ((addj_d0_d1_d0_d0_d0_d0 _lh_permutations_LH_C_0_1_4) _lh_listcomp_fun_ls_h_3_3))))))
    | `LH_C(_lh_permutations_LH_C_0_1_5, _lh_permutations_LH_C_1_2) -> 
      (let rec _lh_listcomp_fun_6_1 = (fun _lh_listcomp_fun_para_2_4 -> 
        (match _lh_listcomp_fun_para_2_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_7, _lh_listcomp_fun_ls_t_4_9) -> 
            (let rec _lh_listcomp_fun_6_2 = (fun _lh_listcomp_fun_para_2_5 -> 
              (((_lh_listcomp_fun_para_2_5 _lh_listcomp_fun_6_2) _lh_listcomp_fun_6_1) _lh_listcomp_fun_ls_t_4_9)) in
              (_lh_listcomp_fun_6_2 ((addj_d0_d1_d1_d0_d0_d0 _lh_permutations_LH_C_0_1_5) _lh_listcomp_fun_ls_h_3_7)))
          | `LH_N -> 
            (fun _lh_permutations_LH_C_0_1_6 _lh_listcomp_fun_6_3 _lh_permutations_LH_C_0_1_7 _lh_listcomp_fun_6_4 -> 
              (`LH_N)))) in
        (_lh_listcomp_fun_6_1 (permutations_d0_d1_d2_d0_d0_d0 _lh_permutations_LH_C_1_2)))
    | _ -> 
      (failwith "error"))
and permutations_d0_d1_d2_d0_d0_d0 _lh_permutations_arg1_1 =
  (match _lh_permutations_arg1_1 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_1_0, _lh_permutations_LH_C_1_1) -> 
      (let rec _lh_listcomp_fun_4_9 = (fun _lh_listcomp_fun_para_2_0 -> 
        (match _lh_listcomp_fun_para_2_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_1, _lh_listcomp_fun_ls_t_4_1) -> 
            (let rec _lh_listcomp_fun_5_0 = (fun _lh_listcomp_fun_para_2_1 -> 
              (match _lh_listcomp_fun_para_2_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_3_2, _lh_listcomp_fun_ls_t_4_2) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_3_2, (_lh_listcomp_fun_5_0 _lh_listcomp_fun_ls_t_4_2)))
                | `LH_N -> 
                  (_lh_listcomp_fun_4_9 _lh_listcomp_fun_ls_t_4_1))) in
              (_lh_listcomp_fun_5_0 ((addj_d0_d1_d3_d0_d0_d0 _lh_permutations_LH_C_0_1_0) _lh_listcomp_fun_ls_h_3_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_4_9 (permutations_d0_d1_d2_d0_d0_d0 _lh_permutations_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and testCryptarithm_nofib_d0_d0_d0_d0_d0_d0 _lh_testCryptarithm_nofib_arg1_0 =
  ((map_d0_d0_d1_d0_d0_d0 (fun i_0 -> 
    (let rec p0_0 = ((take_d0_d0_d1_d0_d0_d0 10) ((enumFromTo_d0_d0_d0_d0_d0_d0 0) (9 + i_0))) in
      ((filter_d0_d0_d0_d0_d0_d0 condition_d0_d0_d0_d0_d0_d0) (permutations_d0_d0_d0_d0_d0_d0 p0_0))))) ((enumFromTo_d1_d0_d0_d0_d0_d0 1) _lh_testCryptarithm_nofib_arg1_0));;

(* lumberhack_pop_out *)
let rec addj_d0_d0_d0_d0_d0_d0_d0 _lh_addj_arg1_2_5 _lh_addj_arg2_2_1 =
  (_lh_addj_arg2_2_1 _lh_addj_arg1_2_5);;
let rec addj_d0_d0_d0_d1_d0_d0_d0 _lh_addj_arg1_3_1 _lh_addj_arg2_2_6 =
  (match _lh_addj_arg2_2_6 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3_1, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_2_2, _lh_addj_LH_C_1_2_2) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3_1, (`LH_C(_lh_addj_LH_C_0_2_2, _lh_addj_LH_C_1_2_2)))), (let rec _lh_listcomp_fun_1_2_4 = (fun _lh_listcomp_fun_para_5_2 -> 
        (match _lh_listcomp_fun_para_5_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_7_4, _lh_listcomp_fun_ls_t_9_6) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_2_2, _lh_listcomp_fun_ls_h_7_4)), (_lh_listcomp_fun_1_2_4 _lh_listcomp_fun_ls_t_9_6)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2_4 ((addj_d0_d0_d0_d1_d0_d0_d0 _lh_addj_arg1_3_1) _lh_addj_LH_C_1_2_2)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d2_d0_d0_d0 _lh_addj_arg1_2_1 _lh_addj_arg2_1_7 =
  (match _lh_addj_arg2_1_7 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_1, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_3, _lh_addj_LH_C_1_1_3) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_1, (`LH_C(_lh_addj_LH_C_0_1_3, _lh_addj_LH_C_1_1_3)))), (let rec _lh_listcomp_fun_8_5 = (fun _lh_listcomp_fun_para_3_6 -> 
        (match _lh_listcomp_fun_para_3_6 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_7, _lh_listcomp_fun_ls_t_6_1) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_3, _lh_listcomp_fun_ls_h_4_7)), (_lh_listcomp_fun_8_5 _lh_listcomp_fun_ls_t_6_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_5 ((addj_d0_d0_d0_d2_d0_d0_d0 _lh_addj_arg1_2_1) _lh_addj_LH_C_1_1_3)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d3_d0_d0_d0 _lh_addj_arg1_2_9 _lh_addj_arg2_2_4 =
  (match _lh_addj_arg2_2_4 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_9, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_2_0, _lh_addj_LH_C_1_2_0) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_9, (`LH_C(_lh_addj_LH_C_0_2_0, _lh_addj_LH_C_1_2_0)))), (let rec _lh_listcomp_fun_1_2_2 = (fun _lh_listcomp_fun_para_5_0 -> 
        (match _lh_listcomp_fun_para_5_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_7_2, _lh_listcomp_fun_ls_t_9_4) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_2_0, _lh_listcomp_fun_ls_h_7_2)), (_lh_listcomp_fun_1_2_2 _lh_listcomp_fun_ls_t_9_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2_2 ((addj_d0_d0_d0_d3_d0_d0_d0 _lh_addj_arg1_2_9) _lh_addj_LH_C_1_2_0)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d3_d0_d0_d1 _lh_addj_arg1_2_3 _lh_addj_arg2_1_9 =
  (match _lh_addj_arg2_1_9 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_3, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_5, _lh_addj_LH_C_1_1_5) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_3, (`LH_C(_lh_addj_LH_C_0_1_5, _lh_addj_LH_C_1_1_5)))), (let rec _lh_listcomp_fun_8_7 = (fun _lh_listcomp_fun_para_3_8 -> 
        (match _lh_listcomp_fun_para_3_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_9, _lh_listcomp_fun_ls_t_6_3) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_5, _lh_listcomp_fun_ls_h_4_9)), (_lh_listcomp_fun_8_7 _lh_listcomp_fun_ls_t_6_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_7 ((addj_d0_d0_d0_d3_d0_d0_d1 _lh_addj_arg1_2_3) _lh_addj_LH_C_1_1_5)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d0_d0_d4_d0_d0_d0 _lh_addj_arg1_2_2 _lh_addj_arg2_1_8 =
  (match _lh_addj_arg2_1_8 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_2, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_4, _lh_addj_LH_C_1_1_4) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_2, (`LH_C(_lh_addj_LH_C_0_1_4, _lh_addj_LH_C_1_1_4)))), (let rec _lh_listcomp_fun_8_6 = (fun _lh_listcomp_fun_para_3_7 -> 
        (match _lh_listcomp_fun_para_3_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_8, _lh_listcomp_fun_ls_t_6_2) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_4, _lh_listcomp_fun_ls_h_4_8)), (_lh_listcomp_fun_8_6 _lh_listcomp_fun_ls_t_6_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_6 ((addj_d0_d0_d0_d4_d0_d0_d0 _lh_addj_arg1_2_2) _lh_addj_LH_C_1_1_4)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d0_d0_d0_d0_d0 _lh_addj_arg1_2_0 _lh_addj_arg2_1_6 =
  (_lh_addj_arg2_1_6 _lh_addj_arg1_2_0);;
let rec addj_d0_d1_d0_d1_d0_d0_d0 _lh_addj_arg1_2_4 _lh_addj_arg2_2_0 =
  (match _lh_addj_arg2_2_0 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_4, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_6, _lh_addj_LH_C_1_1_6) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_4, (`LH_C(_lh_addj_LH_C_0_1_6, _lh_addj_LH_C_1_1_6)))), (let rec _lh_listcomp_fun_8_8 = (fun _lh_listcomp_fun_para_3_9 -> 
        (match _lh_listcomp_fun_para_3_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_5_0, _lh_listcomp_fun_ls_t_6_4) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_6, _lh_listcomp_fun_ls_h_5_0)), (_lh_listcomp_fun_8_8 _lh_listcomp_fun_ls_t_6_4)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_8 ((addj_d0_d1_d0_d1_d0_d0_d0 _lh_addj_arg1_2_4) _lh_addj_LH_C_1_1_6)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d0_d2_d0_d0_d0 _lh_addj_arg1_1_6 _lh_addj_arg2_1_3 =
  (_lh_addj_arg2_1_3 _lh_addj_arg1_1_6);;
let rec addj_d0_d1_d0_d2_d0_d1_d0 _lh_addj_arg1_1_9 _lh_addj_arg2_1_5 =
  (match _lh_addj_arg2_1_5 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1_9, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_2, _lh_addj_LH_C_1_1_2) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1_9, (`LH_C(_lh_addj_LH_C_0_1_2, _lh_addj_LH_C_1_1_2)))), (let rec _lh_listcomp_fun_8_3 = (fun _lh_listcomp_fun_para_3_4 -> 
        (match _lh_listcomp_fun_para_3_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_6, _lh_listcomp_fun_ls_t_6_0) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_2, _lh_listcomp_fun_ls_h_4_6)), (_lh_listcomp_fun_8_3 _lh_listcomp_fun_ls_t_6_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_8_3 ((addj_d0_d1_d0_d2_d0_d1_d0 _lh_addj_arg1_1_9) _lh_addj_LH_C_1_1_2)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d0_d3_d0_d0_d0 _lh_addj_arg1_1_7 _lh_addj_arg2_1_4 =
  (match _lh_addj_arg2_1_4 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1_7, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_1, _lh_addj_LH_C_1_1_1) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_1_7, (`LH_C(_lh_addj_LH_C_0_1_1, _lh_addj_LH_C_1_1_1)))), (let rec _lh_listcomp_fun_6_6 = (fun _lh_listcomp_fun_para_2_7 -> 
        (match _lh_listcomp_fun_para_2_7 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_8, _lh_listcomp_fun_ls_t_5_0) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_1, _lh_listcomp_fun_ls_h_3_8)), (_lh_listcomp_fun_6_6 _lh_listcomp_fun_ls_t_5_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6_6 ((addj_d0_d1_d0_d3_d0_d0_d0 _lh_addj_arg1_1_7) _lh_addj_LH_C_1_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d2_d0_d0_d0_d0 _lh_addj_arg1_2_8 _lh_addj_arg2_2_3 =
  (match _lh_addj_arg2_2_3 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_8, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_1_9, _lh_addj_LH_C_1_1_9) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_2_8, (`LH_C(_lh_addj_LH_C_0_1_9, _lh_addj_LH_C_1_1_9)))), (let rec _lh_listcomp_fun_1_2_1 = (fun _lh_listcomp_fun_para_4_9 -> 
        (match _lh_listcomp_fun_para_4_9 with
          | `LH_C(_lh_listcomp_fun_ls_h_7_1, _lh_listcomp_fun_ls_t_9_3) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_1_9, _lh_listcomp_fun_ls_h_7_1)), (_lh_listcomp_fun_1_2_1 _lh_listcomp_fun_ls_t_9_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2_1 ((addj_d0_d1_d2_d0_d0_d0_d0 _lh_addj_arg1_2_8) _lh_addj_LH_C_1_1_9)))))
    | _ -> 
      (failwith "error"));;
let rec addj_d0_d1_d3_d0_d0_d0_d0 _lh_addj_arg1_3_0 _lh_addj_arg2_2_5 =
  (match _lh_addj_arg2_2_5 with
    | `LH_N -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3_0, (`LH_N))), (`LH_N)))
    | `LH_C(_lh_addj_LH_C_0_2_1, _lh_addj_LH_C_1_2_1) -> 
      (`LH_C((`LH_C(_lh_addj_arg1_3_0, (`LH_C(_lh_addj_LH_C_0_2_1, _lh_addj_LH_C_1_2_1)))), (let rec _lh_listcomp_fun_1_2_3 = (fun _lh_listcomp_fun_para_5_1 -> 
        (match _lh_listcomp_fun_para_5_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_7_3, _lh_listcomp_fun_ls_t_9_5) -> 
            (`LH_C((`LH_C(_lh_addj_LH_C_0_2_1, _lh_listcomp_fun_ls_h_7_3)), (_lh_listcomp_fun_1_2_3 _lh_listcomp_fun_ls_t_9_5)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_2_3 ((addj_d0_d1_d3_d0_d0_d0_d0 _lh_addj_arg1_3_0) _lh_addj_LH_C_1_2_1)))))
    | _ -> 
      (failwith "error"));;
let rec expand_d0_d0_d0_d0_d0_d0_d0 _lh_expand_arg1_5 _lh_expand_arg2_5 _lh_expand_arg3_5 _lh_expand_arg4_5 _lh_expand_arg5_5 _lh_expand_arg6_5 =
  (((((_lh_expand_arg6_5 + (_lh_expand_arg5_5 * 10)) + (_lh_expand_arg4_5 * 100)) + (_lh_expand_arg3_5 * 1000)) + (_lh_expand_arg2_5 * 10000)) + (_lh_expand_arg1_5 * 100000));;
let rec expand_d1_d0_d0_d0_d0_d0_d0 _lh_expand_arg1_3 _lh_expand_arg2_3 _lh_expand_arg3_3 _lh_expand_arg4_3 _lh_expand_arg5_3 _lh_expand_arg6_3 =
  (((((_lh_expand_arg6_3 + (_lh_expand_arg5_3 * 10)) + (_lh_expand_arg4_3 * 100)) + (_lh_expand_arg3_3 * 1000)) + (_lh_expand_arg2_3 * 10000)) + (_lh_expand_arg1_3 * 100000));;
let rec expand_d2_d0_d0_d0_d0_d0_d0 _lh_expand_arg1_4 _lh_expand_arg2_4 _lh_expand_arg3_4 _lh_expand_arg4_4 _lh_expand_arg5_4 _lh_expand_arg6_4 =
  (((((_lh_expand_arg6_4 + (_lh_expand_arg5_4 * 10)) + (_lh_expand_arg4_4 * 100)) + (_lh_expand_arg3_4 * 1000)) + (_lh_expand_arg2_4 * 10000)) + (_lh_expand_arg1_4 * 100000));;
let rec filter_d0_d1_d0_d0_d0_d1_d0 f_1_3 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_9, t_9) -> 
      (if (f_1_3 h_9) then
        (`LH_C(h_9, ((filter_d0_d1_d0_d0_d0_d1_d0 f_1_3) t_9)))
      else
        ((filter_d0_d1_d0_d0_d0_d1_d0 f_1_3) t_9))
    | `LH_N -> 
      (`LH_N));;
let rec map_d0_d0_d0_d0_d0_d0_d0 f_8 ls_1_0 =
  (ls_1_0 f_8);;
let rec map_d0_d0_d1_d0_d0_d0_d0 f_1_2 ls_1_2 =
  (ls_1_2 f_1_2);;
let rec take_d0_d0_d0_d0_d0_d0_d0 n_5 ls_8 =
  (if (n_5 > 0) then
    (ls_8 n_5)
  else
    (`LH_N));;
let rec take_d0_d0_d1_d0_d0_d0_d0 n_4 ls_7 =
  (if (n_4 > 0) then
    (ls_7 n_4)
  else
    (`LH_N));;
let rec addj_d0_d1_d1_d0_d0_d0_d0 _lh_addj_arg1_2_6 _lh_addj_arg2_2_2 =
  (match _lh_addj_arg2_2_2 with
    | `LH_N -> 
      (let rec _lh_listcomp_fun_ls_h_5_1 = (`LH_C(_lh_addj_arg1_2_6, (`LH_N))) in
        (let rec _lh_listcomp_fun_ls_t_6_5 = (fun _lh_listcomp_fun_8_9 _lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_6_6 -> 
          (_lh_listcomp_fun_9_0 _lh_listcomp_fun_ls_t_6_6)) in
          (fun _lh_listcomp_fun_9_1 _lh_listcomp_fun_9_2 _lh_listcomp_fun_ls_t_6_7 -> 
            (let rec _lh_listcomp_fun_ls_h_5_2 = _lh_listcomp_fun_ls_h_5_1 in
              (let rec _lh_listcomp_fun_ls_t_6_8 = (_lh_listcomp_fun_9_1 _lh_listcomp_fun_ls_t_6_5) in
                (fun _lh_permutations_LH_C_0_2_8 _lh_listcomp_fun_9_3 -> 
                  (let rec _lh_listcomp_fun_9_4 = (fun _lh_listcomp_fun_para_4_0 -> 
                    (match _lh_listcomp_fun_para_4_0 with
                      | `LH_C(_lh_listcomp_fun_ls_h_5_3, _lh_listcomp_fun_ls_t_6_9) -> 
                        (let rec _lh_listcomp_fun_ls_h_5_4 = _lh_listcomp_fun_ls_h_5_3 in
                          (let rec _lh_listcomp_fun_ls_t_7_0 = (_lh_listcomp_fun_9_4 _lh_listcomp_fun_ls_t_6_9) in
                            (fun _lh_permutations_LH_C_0_2_9 _lh_listcomp_fun_9_5 -> 
                              (let rec _lh_listcomp_fun_9_6 = (fun _lh_listcomp_fun_para_4_1 -> 
                                (match _lh_listcomp_fun_para_4_1 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_5_5, _lh_listcomp_fun_ls_t_7_1) -> 
                                    (`LH_C(_lh_listcomp_fun_ls_h_5_5, (_lh_listcomp_fun_9_6 _lh_listcomp_fun_ls_t_7_1)))
                                  | `LH_N -> 
                                    (_lh_listcomp_fun_9_5 _lh_listcomp_fun_ls_t_7_0))) in
                                (_lh_listcomp_fun_9_6 ((addj_d0_d0_d0_d2_d0_d0_d0 _lh_permutations_LH_C_0_2_9) _lh_listcomp_fun_ls_h_5_4))))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_9_3 _lh_listcomp_fun_ls_t_6_8))) in
                    (_lh_listcomp_fun_9_4 ((addj_d0_d1_d0_d1_d0_d0_d0 _lh_permutations_LH_C_0_2_8) _lh_listcomp_fun_ls_h_5_2)))))))))
    | `LH_C(_lh_addj_LH_C_0_1_7, _lh_addj_LH_C_1_1_7) -> 
      (let rec _lh_listcomp_fun_ls_h_5_6 = (`LH_C(_lh_addj_arg1_2_6, (`LH_C(_lh_addj_LH_C_0_1_7, _lh_addj_LH_C_1_1_7)))) in
        (let rec _lh_listcomp_fun_ls_t_7_2 = (let rec _lh_listcomp_fun_9_7 = (fun _lh_listcomp_fun_para_4_2 -> 
          (match _lh_listcomp_fun_para_4_2 with
            | `LH_C(_lh_listcomp_fun_ls_h_5_7, _lh_listcomp_fun_ls_t_7_3) -> 
              (let rec _lh_listcomp_fun_ls_h_5_8 = (let rec _lh_addj_LH_C_0_1_8 = _lh_addj_LH_C_0_1_7 in
                (let rec _lh_addj_LH_C_1_1_8 = _lh_listcomp_fun_ls_h_5_7 in
                  (fun _lh_addj_arg1_2_7 -> 
                    (let rec _lh_listcomp_fun_ls_h_5_9 = (`LH_C(_lh_addj_arg1_2_7, (`LH_C(_lh_addj_LH_C_0_1_8, _lh_addj_LH_C_1_1_8)))) in
                      (let rec _lh_listcomp_fun_ls_t_7_4 = (let rec _lh_listcomp_fun_9_8 = (fun _lh_listcomp_fun_para_4_3 -> 
                        (match _lh_listcomp_fun_para_4_3 with
                          | `LH_C(_lh_listcomp_fun_ls_h_6_0, _lh_listcomp_fun_ls_t_7_5) -> 
                            (let rec _lh_listcomp_fun_ls_h_6_1 = (`LH_C(_lh_addj_LH_C_0_1_8, _lh_listcomp_fun_ls_h_6_0)) in
                              (let rec _lh_listcomp_fun_ls_t_7_6 = (_lh_listcomp_fun_9_8 _lh_listcomp_fun_ls_t_7_5) in
                                (fun _lh_listcomp_fun_9_9 _lh_listcomp_fun_ls_t_7_7 _lh_listcomp_fun_1_0_0 -> 
                                  (let rec _lh_listcomp_fun_ls_h_6_2 = _lh_listcomp_fun_ls_h_6_1 in
                                    (let rec _lh_listcomp_fun_ls_t_7_8 = (_lh_listcomp_fun_9_9 _lh_listcomp_fun_ls_t_7_6) in
                                      (fun _lh_permutations_LH_C_0_3_0 _lh_listcomp_fun_1_0_1 -> 
                                        (let rec _lh_listcomp_fun_1_0_2 = (fun _lh_listcomp_fun_para_4_4 -> 
                                          (match _lh_listcomp_fun_para_4_4 with
                                            | `LH_C(_lh_listcomp_fun_ls_h_6_3, _lh_listcomp_fun_ls_t_7_9) -> 
                                              (`LH_C(_lh_listcomp_fun_ls_h_6_3, (_lh_listcomp_fun_1_0_2 _lh_listcomp_fun_ls_t_7_9)))
                                            | `LH_N -> 
                                              (_lh_listcomp_fun_1_0_1 _lh_listcomp_fun_ls_t_7_8))) in
                                          (_lh_listcomp_fun_1_0_2 ((addj_d0_d0_d0_d3_d0_d0_d0 _lh_permutations_LH_C_0_3_0) _lh_listcomp_fun_ls_h_6_2)))))))))
                          | `LH_N -> 
                            (fun _lh_listcomp_fun_1_0_3 _lh_listcomp_fun_ls_t_8_0 _lh_listcomp_fun_1_0_4 -> 
                              (_lh_listcomp_fun_1_0_4 _lh_listcomp_fun_ls_t_8_0)))) in
                        (_lh_listcomp_fun_9_8 ((addj_d0_d1_d0_d2_d0_d1_d0 _lh_addj_arg1_2_7) _lh_addj_LH_C_1_1_8))) in
                        (fun _lh_listcomp_fun_1_0_5 _lh_listcomp_fun_ls_t_8_1 _lh_listcomp_fun_1_0_6 -> 
                          (let rec _lh_listcomp_fun_ls_h_6_4 = _lh_listcomp_fun_ls_h_5_9 in
                            (let rec _lh_listcomp_fun_ls_t_8_2 = (_lh_listcomp_fun_1_0_5 _lh_listcomp_fun_ls_t_7_4) in
                              (fun _lh_permutations_LH_C_0_3_1 _lh_listcomp_fun_1_0_7 -> 
                                (let rec _lh_listcomp_fun_1_0_8 = (fun _lh_listcomp_fun_para_4_5 -> 
                                  (match _lh_listcomp_fun_para_4_5 with
                                    | `LH_C(_lh_listcomp_fun_ls_h_6_5, _lh_listcomp_fun_ls_t_8_3) -> 
                                      (`LH_C(_lh_listcomp_fun_ls_h_6_5, (_lh_listcomp_fun_1_0_8 _lh_listcomp_fun_ls_t_8_3)))
                                    | `LH_N -> 
                                      (_lh_listcomp_fun_1_0_7 _lh_listcomp_fun_ls_t_8_2))) in
                                  (_lh_listcomp_fun_1_0_8 ((addj_d0_d0_d0_d3_d0_d0_d1 _lh_permutations_LH_C_0_3_1) _lh_listcomp_fun_ls_h_6_4)))))))))))) in
                (let rec _lh_listcomp_fun_ls_t_8_4 = (_lh_listcomp_fun_9_7 _lh_listcomp_fun_ls_t_7_3) in
                  (fun _lh_listcomp_fun_1_0_9 _lh_listcomp_fun_1_1_0 _lh_listcomp_fun_ls_t_8_5 -> 
                    (let rec _lh_listcomp_fun_ls_h_6_6 = _lh_listcomp_fun_ls_h_5_8 in
                      (let rec _lh_listcomp_fun_ls_t_8_6 = (_lh_listcomp_fun_1_0_9 _lh_listcomp_fun_ls_t_8_4) in
                        (fun _lh_permutations_LH_C_0_3_2 _lh_listcomp_fun_1_1_1 -> 
                          (let rec _lh_listcomp_fun_1_1_2 = (fun _lh_listcomp_fun_para_4_6 -> 
                            (((_lh_listcomp_fun_para_4_6 _lh_listcomp_fun_1_1_2) _lh_listcomp_fun_ls_t_8_6) _lh_listcomp_fun_1_1_1)) in
                            (_lh_listcomp_fun_1_1_2 ((addj_d0_d1_d0_d2_d0_d0_d0 _lh_permutations_LH_C_0_3_2) _lh_listcomp_fun_ls_h_6_6)))))))))
            | `LH_N -> 
              (fun _lh_listcomp_fun_1_1_3 _lh_listcomp_fun_1_1_4 _lh_listcomp_fun_ls_t_8_7 -> 
                (_lh_listcomp_fun_1_1_4 _lh_listcomp_fun_ls_t_8_7)))) in
          (_lh_listcomp_fun_9_7 ((addj_d0_d1_d2_d0_d0_d0_d0 _lh_addj_arg1_2_6) _lh_addj_LH_C_1_1_7))) in
          (fun _lh_listcomp_fun_1_1_5 _lh_listcomp_fun_1_1_6 _lh_listcomp_fun_ls_t_8_8 -> 
            (let rec _lh_listcomp_fun_ls_h_6_7 = _lh_listcomp_fun_ls_h_5_6 in
              (let rec _lh_listcomp_fun_ls_t_8_9 = (_lh_listcomp_fun_1_1_5 _lh_listcomp_fun_ls_t_7_2) in
                (fun _lh_permutations_LH_C_0_3_3 _lh_listcomp_fun_1_1_7 -> 
                  (let rec _lh_listcomp_fun_1_1_8 = (fun _lh_listcomp_fun_para_4_7 -> 
                    (match _lh_listcomp_fun_para_4_7 with
                      | `LH_C(_lh_listcomp_fun_ls_h_6_8, _lh_listcomp_fun_ls_t_9_0) -> 
                        (let rec _lh_listcomp_fun_ls_h_6_9 = _lh_listcomp_fun_ls_h_6_8 in
                          (let rec _lh_listcomp_fun_ls_t_9_1 = (_lh_listcomp_fun_1_1_8 _lh_listcomp_fun_ls_t_9_0) in
                            (fun _lh_permutations_LH_C_0_3_4 _lh_listcomp_fun_1_1_9 -> 
                              (let rec _lh_listcomp_fun_1_2_0 = (fun _lh_listcomp_fun_para_4_8 -> 
                                (match _lh_listcomp_fun_para_4_8 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_7_0, _lh_listcomp_fun_ls_t_9_2) -> 
                                    (`LH_C(_lh_listcomp_fun_ls_h_7_0, (_lh_listcomp_fun_1_2_0 _lh_listcomp_fun_ls_t_9_2)))
                                  | `LH_N -> 
                                    (_lh_listcomp_fun_1_1_9 _lh_listcomp_fun_ls_t_9_1))) in
                                (_lh_listcomp_fun_1_2_0 ((addj_d0_d0_d0_d4_d0_d0_d0 _lh_permutations_LH_C_0_3_4) _lh_listcomp_fun_ls_h_6_9))))))
                      | `LH_N -> 
                        (_lh_listcomp_fun_1_1_7 _lh_listcomp_fun_ls_t_8_9))) in
                    (_lh_listcomp_fun_1_1_8 ((addj_d0_d1_d0_d3_d0_d0_d0 _lh_permutations_LH_C_0_3_3) _lh_listcomp_fun_ls_h_6_7)))))))))
    | _ -> 
      (failwith "error"))
and condition_d0_d0_d0_d0_d0_d0_d0 _lh_condition_arg1_1 =
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
                                              ((((((((expand_d0_d0_d0_d0_d0_d0_d0 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_1) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_3) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4) + (5 * ((((((expand_d1_d0_d0_d0_d0_d0_d0 _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_5) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_7) _lh_condition_LH_C_0_1_8) _lh_condition_LH_C_0_1_6))) = ((((((expand_d2_d0_d0_d0_d0_d0_d0 _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_2) _lh_condition_LH_C_0_1_9) _lh_condition_LH_C_0_1_6) _lh_condition_LH_C_0_1_0) _lh_condition_LH_C_0_1_4))
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
and enumFromTo_d0_d0_d0_d0_d0_d0_d0 a_2 b_2 _lh_popOutId_0_1 =
  (if (a_2 <= b_2) then
    (let rec h_5 = a_2 in
      (let rec t_5 = ((enumFromTo_d0_d0_d0_d0_d0_d0_d0 (a_2 + 1)) b_2) in
        (`LH_C(h_5, ((take_d0_d0_d0_d0_d0_d0_d0 (_lh_popOutId_0_1 - 1)) t_5)))))
  else
    (`LH_N))
and enumFromTo_d1_d0_d0_d0_d0_d0_d0 a_3 b_3 _lh_popOutId_0_0 =
  (if (a_3 <= b_3) then
    (let rec h_7 = a_3 in
      (let rec t_7 = ((enumFromTo_d1_d0_d0_d0_d0_d0_d0 (a_3 + 1)) b_3) in
        (`LH_C((_lh_popOutId_0_0 h_7), ((map_d0_d0_d0_d0_d0_d0_d0 _lh_popOutId_0_0) t_7)))))
  else
    (`LH_N))
and filter_d0_d0_d0_d0_d0_d0_d0 f_7 ls_9 =
  (match ls_9 with
    | `LH_C(h_6, t_6) -> 
      (if (f_7 h_6) then
        (`LH_C(h_6, ((filter_d0_d0_d0_d0_d0_d0_d0 f_7) t_6)))
      else
        ((filter_d0_d1_d0_d0_d0_d0_d0 f_7) t_6))
    | `LH_N -> 
      (`LH_N))
and filter_d0_d1_d0_d0_d0_d0_d0 f_1_1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_8, t_8) -> 
      (if (f_1_1 h_8) then
        (`LH_C(h_8, ((filter_d0_d1_d0_d0_d0_d0_d0 f_1_1) t_8)))
      else
        ((filter_d0_d1_d0_d0_d0_d1_d0 f_1_1) t_8))
    | `LH_N -> 
      (`LH_N))
and permutations_d0_d0_d0_d0_d0_d0_d0 _lh_permutations_arg1_6 =
  (match _lh_permutations_arg1_6 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_2_7, _lh_permutations_LH_C_1_6) -> 
      (let rec _lh_listcomp_fun_8_4 = (fun _lh_listcomp_fun_para_3_5 -> 
        ((_lh_listcomp_fun_para_3_5 _lh_permutations_LH_C_0_2_7) _lh_listcomp_fun_8_4)) in
        (_lh_listcomp_fun_8_4 (permutations_d0_d1_d0_d0_d0_d0_d0 _lh_permutations_LH_C_1_6)))
    | _ -> 
      (failwith "error"))
and permutations_d0_d1_d0_d0_d0_d0_d0 _lh_permutations_arg1_7 =
  (match _lh_permutations_arg1_7 with
    | `LH_N -> 
      (let rec _lh_listcomp_fun_ls_h_7_5 = (fun _lh_addj_arg1_3_2 -> 
        (let rec _lh_listcomp_fun_ls_h_7_6 = (`LH_C(_lh_addj_arg1_3_2, (`LH_N))) in
          (let rec _lh_listcomp_fun_ls_t_9_7 = (fun _lh_listcomp_fun_1_2_5 _lh_listcomp_fun_ls_t_9_8 _lh_listcomp_fun_1_2_6 -> 
            (_lh_listcomp_fun_1_2_6 _lh_listcomp_fun_ls_t_9_8)) in
            (fun _lh_listcomp_fun_1_2_7 _lh_listcomp_fun_ls_t_9_9 _lh_listcomp_fun_1_2_8 -> 
              (`LH_C(_lh_listcomp_fun_ls_h_7_6, (_lh_listcomp_fun_1_2_7 _lh_listcomp_fun_ls_t_9_7))))))) in
        (let rec _lh_listcomp_fun_ls_t_1_0_0 = (fun _lh_permutations_LH_C_0_3_5 _lh_listcomp_fun_1_2_9 -> 
          (`LH_N)) in
          (fun _lh_permutations_LH_C_0_3_6 _lh_listcomp_fun_1_3_0 -> 
            (let rec _lh_listcomp_fun_1_3_1 = (fun _lh_listcomp_fun_para_5_3 -> 
              (((_lh_listcomp_fun_para_5_3 _lh_listcomp_fun_1_3_1) _lh_listcomp_fun_ls_t_1_0_0) _lh_listcomp_fun_1_3_0)) in
              (_lh_listcomp_fun_1_3_1 ((addj_d0_d0_d0_d0_d0_d0_d0 _lh_permutations_LH_C_0_3_6) _lh_listcomp_fun_ls_h_7_5))))))
    | `LH_C(_lh_permutations_LH_C_0_3_7, _lh_permutations_LH_C_1_7) -> 
      (let rec _lh_listcomp_fun_1_3_2 = (fun _lh_listcomp_fun_para_5_4 -> 
        ((_lh_listcomp_fun_para_5_4 _lh_permutations_LH_C_0_3_7) _lh_listcomp_fun_1_3_2)) in
        (_lh_listcomp_fun_1_3_2 (permutations_d0_d1_d1_d0_d0_d0_d0 _lh_permutations_LH_C_1_7)))
    | _ -> 
      (failwith "error"))
and permutations_d0_d1_d1_d0_d0_d0_d0 _lh_permutations_arg1_5 =
  (match _lh_permutations_arg1_5 with
    | `LH_N -> 
      (let rec _lh_listcomp_fun_ls_h_4_1 = (fun _lh_addj_arg1_1_8 -> 
        (let rec _lh_listcomp_fun_ls_h_4_2 = (`LH_C(_lh_addj_arg1_1_8, (`LH_N))) in
          (let rec _lh_listcomp_fun_ls_t_5_3 = (fun _lh_listcomp_fun_6_9 _lh_listcomp_fun_ls_t_5_4 _lh_listcomp_fun_7_0 -> 
            (_lh_listcomp_fun_7_0 _lh_listcomp_fun_ls_t_5_4)) in
            (fun _lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_5_5 _lh_listcomp_fun_7_2 -> 
              (let rec _lh_listcomp_fun_ls_h_4_3 = _lh_listcomp_fun_ls_h_4_2 in
                (let rec _lh_listcomp_fun_ls_t_5_6 = (_lh_listcomp_fun_7_1 _lh_listcomp_fun_ls_t_5_3) in
                  (fun _lh_permutations_LH_C_0_2_0 _lh_listcomp_fun_7_3 -> 
                    (let rec _lh_listcomp_fun_7_4 = (fun _lh_listcomp_fun_para_3_0 -> 
                      (match _lh_listcomp_fun_para_3_0 with
                        | `LH_C(_lh_listcomp_fun_ls_h_4_4, _lh_listcomp_fun_ls_t_5_7) -> 
                          (`LH_C(_lh_listcomp_fun_ls_h_4_4, (_lh_listcomp_fun_7_4 _lh_listcomp_fun_ls_t_5_7)))
                        | `LH_N -> 
                          (_lh_listcomp_fun_7_3 _lh_listcomp_fun_ls_t_5_6))) in
                      (_lh_listcomp_fun_7_4 ((addj_d0_d0_d0_d1_d0_d0_d0 _lh_permutations_LH_C_0_2_0) _lh_listcomp_fun_ls_h_4_3)))))))))) in
        (let rec _lh_listcomp_fun_ls_t_5_8 = (fun _lh_permutations_LH_C_0_2_1 _lh_listcomp_fun_7_5 _lh_permutations_LH_C_0_2_2 _lh_listcomp_fun_7_6 -> 
          (`LH_N)) in
          (fun _lh_permutations_LH_C_0_2_3 _lh_listcomp_fun_7_7 -> 
            (let rec _lh_listcomp_fun_7_8 = (fun _lh_listcomp_fun_para_3_1 -> 
              (((_lh_listcomp_fun_para_3_1 _lh_listcomp_fun_7_8) _lh_listcomp_fun_ls_t_5_8) _lh_listcomp_fun_7_7)) in
              (_lh_listcomp_fun_7_8 ((addj_d0_d1_d0_d0_d0_d0_d0 _lh_permutations_LH_C_0_2_3) _lh_listcomp_fun_ls_h_4_1))))))
    | `LH_C(_lh_permutations_LH_C_0_2_4, _lh_permutations_LH_C_1_5) -> 
      (let rec _lh_listcomp_fun_7_9 = (fun _lh_listcomp_fun_para_3_2 -> 
        (match _lh_listcomp_fun_para_3_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_4_5, _lh_listcomp_fun_ls_t_5_9) -> 
            (let rec _lh_listcomp_fun_8_0 = (fun _lh_listcomp_fun_para_3_3 -> 
              (((_lh_listcomp_fun_para_3_3 _lh_listcomp_fun_8_0) _lh_listcomp_fun_7_9) _lh_listcomp_fun_ls_t_5_9)) in
              (_lh_listcomp_fun_8_0 ((addj_d0_d1_d1_d0_d0_d0_d0 _lh_permutations_LH_C_0_2_4) _lh_listcomp_fun_ls_h_4_5)))
          | `LH_N -> 
            (fun _lh_permutations_LH_C_0_2_5 _lh_listcomp_fun_8_1 _lh_permutations_LH_C_0_2_6 _lh_listcomp_fun_8_2 -> 
              (`LH_N)))) in
        (_lh_listcomp_fun_7_9 (permutations_d0_d1_d2_d0_d0_d0_d0 _lh_permutations_LH_C_1_5)))
    | _ -> 
      (failwith "error"))
and permutations_d0_d1_d2_d0_d0_d0_d0 _lh_permutations_arg1_4 =
  (match _lh_permutations_arg1_4 with
    | `LH_N -> 
      (`LH_C((`LH_N), (`LH_N)))
    | `LH_C(_lh_permutations_LH_C_0_1_9, _lh_permutations_LH_C_1_4) -> 
      (let rec _lh_listcomp_fun_6_7 = (fun _lh_listcomp_fun_para_2_8 -> 
        (match _lh_listcomp_fun_para_2_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_3_9, _lh_listcomp_fun_ls_t_5_1) -> 
            (let rec _lh_listcomp_fun_6_8 = (fun _lh_listcomp_fun_para_2_9 -> 
              (match _lh_listcomp_fun_para_2_9 with
                | `LH_C(_lh_listcomp_fun_ls_h_4_0, _lh_listcomp_fun_ls_t_5_2) -> 
                  (`LH_C(_lh_listcomp_fun_ls_h_4_0, (_lh_listcomp_fun_6_8 _lh_listcomp_fun_ls_t_5_2)))
                | `LH_N -> 
                  (_lh_listcomp_fun_6_7 _lh_listcomp_fun_ls_t_5_1))) in
              (_lh_listcomp_fun_6_8 ((addj_d0_d1_d3_d0_d0_d0_d0 _lh_permutations_LH_C_0_1_9) _lh_listcomp_fun_ls_h_3_9)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_6_7 (permutations_d0_d1_d2_d0_d0_d0_d0 _lh_permutations_LH_C_1_4)))
    | _ -> 
      (failwith "error"))
and testCryptarithm_nofib_d0_d0_d0_d0_d0_d0_d0 _lh_testCryptarithm_nofib_arg1_1 =
  ((map_d0_d0_d1_d0_d0_d0_d0 (fun i_1 -> 
    (let rec p0_1 = ((take_d0_d0_d1_d0_d0_d0_d0 10) ((enumFromTo_d0_d0_d0_d0_d0_d0_d0 0) (9 + i_1))) in
      ((filter_d0_d0_d0_d0_d0_d0_d0 condition_d0_d0_d0_d0_d0_d0_d0) (permutations_d0_d0_d0_d0_d0_d0_d0 p0_1))))) ((enumFromTo_d1_d0_d0_d0_d0_d0_d0 1) _lh_testCryptarithm_nofib_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Cryptarithm_nofib" (fun () -> ignore ((testCryptarithm_nofib_d0 1)));
  Bench.Test.create ~name:"lumberhack_Cryptarithm_nofib" (fun () -> ignore ((testCryptarithm_nofib_d0_d0_d0_d0_d0_d0 1)));
  Bench.Test.create ~name:"lumberhack_pop_out_Cryptarithm_nofib" (fun () -> ignore ((testCryptarithm_nofib_d0_d0_d0_d0_d0_d0_d0 1)));
])
