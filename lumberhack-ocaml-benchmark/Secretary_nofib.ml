(*
touch ./Secretary_nofib.mli && ocamlc ./Secretary_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Secretary_nofib.ml -o "./Secretary_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Secretary_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec dropWhile_d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec drop_d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop_d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_d0 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo_d0 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo_d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec filter_lz_d0 _lh_filter_lz_arg1_1 _lh_filter_lz_arg2_1 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_filter_lz_arg2_1) in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_filter_lz_LH_C_0_1, _lh_filter_lz_LH_C_1_1) -> 
        (if (_lh_filter_lz_arg1_1 _lh_filter_lz_LH_C_0_1) then
          (`LH_C(_lh_filter_lz_LH_C_0_1, ((filter_lz_d0 _lh_filter_lz_arg1_1) _lh_filter_lz_LH_C_1_1)))
        else
          (Lazy.force ((filter_lz_d0 _lh_filter_lz_arg1_1) _lh_filter_lz_LH_C_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec filter_d0 f_1_4 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_1_9, t_2_1) -> 
      (if (f_1_4 h_1_9) then
        (`LH_C(h_1_9, ((filter_d0 f_1_4) t_2_1)))
      else
        ((filter_d0 f_1_4) t_2_1))
    | `LH_N -> 
      (`LH_N));;
let rec foldl_d0 f_1_2 i_3 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_8, t_2_0) -> 
      (((foldl_d0 f_1_2) ((f_1_2 i_3) h_1_8)) t_2_0)
    | `LH_N -> 
      i_3);;
let rec length_d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (1 + (length_d0 t_2_3))
    | `LH_N -> 
      0);;
let rec power_d0 _lh_power_arg1_1 _lh_power_arg2_1 =
  (if (_lh_power_arg2_1 = 0) then
    1
  else
    (_lh_power_arg1_1 * ((power_d0 _lh_power_arg1_1) (_lh_power_arg2_1 - 1))));;
let rec take_lz_d0 _lh_take_lz_arg1_1 _lh_take_lz_arg2_1 =
  (if (_lh_take_lz_arg1_1 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_5 = (Lazy.force _lh_take_lz_arg2_1) in
      (match _lh_matchIdent_5 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_take_lz_LH_C_0_1, _lh_take_lz_LH_C_1_1) -> 
          (`LH_C(_lh_take_lz_LH_C_0_1, ((take_lz_d0 (_lh_take_lz_arg1_1 - 1)) _lh_take_lz_LH_C_1_1)))
        | _ -> 
          (failwith "error"))));;
let rec take_d0 n_4 ls_2_1 =
  (if (n_4 > 0) then
    (match ls_2_1 with
      | `LH_C(h_2_2, t_2_4) -> 
        (`LH_C(h_2_2, ((take_d0 (n_4 - 1)) t_2_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d1 n_3 ls_1_9 =
  (if (n_3 > 0) then
    (match ls_1_9 with
      | `LH_C(h_2_0, t_2_2) -> 
        (`LH_C(h_2_0, ((take_d1 (n_3 - 1)) t_2_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec foldl1_d0 _lh_foldl1_arg1_1 _lh_foldl1_arg2_1 =
  (match _lh_foldl1_arg2_1 with
    | `LH_C(_lh_foldl1_LH_C_0_1, _lh_foldl1_LH_C_1_1) -> 
      (((foldl_d0 _lh_foldl1_arg1_1) _lh_foldl1_LH_C_0_1) _lh_foldl1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and infRand_d0 _lh_infRand_arg1_1 =
  (let rec f_1_3 = (fun x_6 -> 
    (lazy (`LH_C(((x_6 mod _lh_infRand_arg1_1) + 1), (f_1_3 (((97 * x_6) + 11) mod ((power_d0 2) 7))))))) in
    (f_1_3 37))
and maximum_d0 _lh_maximum_arg1_1 =
  ((foldl1_d0 (fun x_8 y_3 -> 
    (if (x_8 > y_3) then
      x_8
    else
      y_3))) _lh_maximum_arg1_1)
and nub_lz_d0 _lh_nub_lz_arg1_1 =
  (lazy (let rec _lh_matchIdent_3 = (Lazy.force _lh_nub_lz_arg1_1) in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_nub_lz_LH_C_0_1, _lh_nub_lz_LH_C_1_1) -> 
        (`LH_C(_lh_nub_lz_LH_C_0_1, (nub_lz_d0 ((filter_lz_d0 (fun y_2 -> 
          (not (_lh_nub_lz_LH_C_0_1 = y_2)))) _lh_nub_lz_LH_C_1_1))))
      | _ -> 
        (failwith "error"))))
and simulate_d0 _lh_simulate_arg1_1 _lh_simulate_arg2_1 _lh_simulate_arg3_1 =
  ((float_of_int (length_d0 ((filter_d0 (fun x_7 -> 
    x_7)) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (`LH_C((_lh_simulate_arg3_1 (infRand_d0 _lh_simulate_arg2_1)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 ((enumFromTo_d1 1) _lh_simulate_arg1_1)))))) /. (float_of_int _lh_simulate_arg1_1))
and sim_d0 _lh_sim_arg1_1 =
  (let rec proc_1 = (fun rs_1 -> 
    (let rec xs_1_0 = ((take_lz_d0 100) (nub_lz_d0 rs_1)) in
      (let rec best_1 = 100 in
        (let rec bestk_1 = (maximum_d0 ((take_d0 _lh_sim_arg1_1) xs_1_0)) in
          (let rec afterk_1 = ((dropWhile_d0 (fun x_9 -> 
            (x_9 < bestk_1))) ((drop_d0 _lh_sim_arg1_1) xs_1_0)) in
            ((`LH_C(best_1, (`LH_N))) = ((take_d1 1) afterk_1))))))) in
    (((simulate_d0 5000) 100) proc_1))
and testSecretary_nofib_d0 _lh_testSecretary_nofib_arg1_1 =
  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (`LH_C((sim_d0 _lh_listcomp_fun_ls_h_2), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 ((enumFromTo_d0 35) 39)));;

(* lumberhack *)
let rec dropWhile_d0_d0 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_d0_d0 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec drop_d0_d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_d0_d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec filter_lz_d0_d0 _lh_filter_lz_arg1_0 _lh_filter_lz_arg2_0 =
  (lazy (let rec _lh_matchIdent_2 = (Lazy.force _lh_filter_lz_arg2_0) in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_filter_lz_LH_C_0_0, _lh_filter_lz_LH_C_1_0) -> 
        (if (_lh_filter_lz_arg1_0 _lh_filter_lz_LH_C_0_0) then
          (`LH_C(_lh_filter_lz_LH_C_0_0, ((filter_lz_d0_d0 _lh_filter_lz_arg1_0) _lh_filter_lz_LH_C_1_0)))
        else
          (Lazy.force ((filter_lz_d0_d0 _lh_filter_lz_arg1_0) _lh_filter_lz_LH_C_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec filter_d0_d0 f_1 ls_2 =
  (ls_2 f_1);;
let rec foldl_d0_d0 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (((foldl_d0_d0 f_0) ((f_0 i_0) h_1)) t_1)
    | `LH_N -> 
      i_0);;
let rec length_d0_d0 ls_3 =
  (ls_3 99);;
let rec power_d0_d0 _lh_power_arg1_0 _lh_power_arg2_0 =
  (if (_lh_power_arg2_0 = 0) then
    1
  else
    (_lh_power_arg1_0 * ((power_d0_d0 _lh_power_arg1_0) (_lh_power_arg2_0 - 1))));;
let rec take_lz_d0_d0 _lh_take_lz_arg1_0 _lh_take_lz_arg2_0 =
  (if (_lh_take_lz_arg1_0 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_0 = (Lazy.force _lh_take_lz_arg2_0) in
      (_lh_matchIdent_0 _lh_take_lz_arg1_0)));;
let rec take_d0_d0 n_1 ls_4 =
  (if (n_1 > 0) then
    (match ls_4 with
      | `LH_C(h_2, t_2) -> 
        (`LH_C(h_2, ((take_d0_d0 (n_1 - 1)) t_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d1_d0 n_0 ls_0 =
  (if (n_0 > 0) then
    (match ls_0 with
      | `LH_C(h_0, t_0) -> 
        (`LH_C(h_0, ((take_d1_d0 (n_0 - 1)) t_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_0 -> 
          (`LH_C((sim_d0_d0 _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))))))
  else
    (fun _lh_listcomp_fun_1 -> 
      (`LH_N)))
and enumFromTo_d1_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_d1_d0 (a_1 + 1)) b_1) in
      (fun _lh_listcomp_fun_4 _lh_simulate_arg2_1 _lh_simulate_arg3_1 -> 
        (let rec t_3 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_1) in
          (let rec h_3 = (_lh_simulate_arg3_1 (infRand_d0_d0 _lh_simulate_arg2_1)) in
            (fun f_3 -> 
              (if (f_3 h_3) then
                (let rec t_4 = ((filter_d0_d0 f_3) t_3) in
                  (fun _lh_dummy_0 -> 
                    (1 + (length_d0_d0 t_4))))
              else
                ((filter_d0_d0 f_3) t_3)))))))
  else
    (fun _lh_listcomp_fun_5 _lh_simulate_arg2_2 _lh_simulate_arg3_2 f_4 _lh_dummy_1 -> 
      0))
and foldl1_d0_d0 _lh_foldl1_arg1_0 _lh_foldl1_arg2_0 =
  (match _lh_foldl1_arg2_0 with
    | `LH_C(_lh_foldl1_LH_C_0_0, _lh_foldl1_LH_C_1_0) -> 
      (((foldl_d0_d0 _lh_foldl1_arg1_0) _lh_foldl1_LH_C_0_0) _lh_foldl1_LH_C_1_0)
    | _ -> 
      (failwith "error"))
and infRand_d0_d0 _lh_infRand_arg1_0 =
  (let rec f_2 = (fun x_3 -> 
    (lazy (`LH_C(((x_3 mod _lh_infRand_arg1_0) + 1), (f_2 (((97 * x_3) + 11) mod ((power_d0_d0 2) 7))))))) in
    (f_2 37))
and maximum_d0_d0 _lh_maximum_arg1_0 =
  ((foldl1_d0_d0 (fun x_2 y_0 -> 
    (if (x_2 > y_0) then
      x_2
    else
      y_0))) _lh_maximum_arg1_0)
and nub_lz_d0_d0 _lh_nub_lz_arg1_0 =
  (lazy (let rec _lh_matchIdent_1 = (Lazy.force _lh_nub_lz_arg1_0) in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        (fun _lh_take_lz_arg1_1 -> 
          (`LH_N))
      | `LH_C(_lh_nub_lz_LH_C_0_0, _lh_nub_lz_LH_C_1_0) -> 
        (let rec _lh_take_lz_LH_C_1_0 = (nub_lz_d0_d0 ((filter_lz_d0_d0 (fun y_1 -> 
          (not (_lh_nub_lz_LH_C_0_0 = y_1)))) _lh_nub_lz_LH_C_1_0)) in
          (let rec _lh_take_lz_LH_C_0_0 = _lh_nub_lz_LH_C_0_0 in
            (fun _lh_take_lz_arg1_2 -> 
              (`LH_C(_lh_take_lz_LH_C_0_0, ((take_lz_d0_d0 (_lh_take_lz_arg1_2 - 1)) _lh_take_lz_LH_C_1_0))))))
      | _ -> 
        (failwith "error"))))
and simulate_d0_d0 _lh_simulate_arg1_0 _lh_simulate_arg2_0 _lh_simulate_arg3_0 =
  ((float_of_int (length_d0_d0 ((filter_d0_d0 (fun x_1 -> 
    x_1)) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_0 -> 
    (((_lh_listcomp_fun_para_0 _lh_listcomp_fun_2) _lh_simulate_arg2_0) _lh_simulate_arg3_0)) in
    (_lh_listcomp_fun_2 ((enumFromTo_d1_d0 1) _lh_simulate_arg1_0)))))) /. (float_of_int _lh_simulate_arg1_0))
and sim_d0_d0 _lh_sim_arg1_0 =
  (let rec proc_0 = (fun rs_0 -> 
    (let rec xs_0 = ((take_lz_d0_d0 100) (nub_lz_d0_d0 rs_0)) in
      (let rec best_0 = 100 in
        (let rec bestk_0 = (maximum_d0_d0 ((take_d0_d0 _lh_sim_arg1_0) xs_0)) in
          (let rec afterk_0 = ((dropWhile_d0_d0 (fun x_0 -> 
            (x_0 < bestk_0))) ((drop_d0_d0 _lh_sim_arg1_0) xs_0)) in
            ((`LH_C(best_0, (`LH_N))) = ((take_d1_d0 1) afterk_0))))))) in
    (((simulate_d0_d0 5000) 100) proc_0))
and testSecretary_nofib_d0_d0 _lh_testSecretary_nofib_arg1_0 =
  (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_3)) in
    (_lh_listcomp_fun_3 ((enumFromTo_d0_d0 35) 39)));;

(* lumberhack_pop_out *)
let rec dropWhile_d0_d0_d0 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_d0_d0_d0 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec drop_d0_d0_d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop_d0_d0_d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec filter_lz_d0_d0_d0 _lh_filter_lz_arg1_1 _lh_filter_lz_arg2_1 =
  (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_filter_lz_arg2_1) in
    (match _lh_matchIdent_5 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_filter_lz_LH_C_0_1, _lh_filter_lz_LH_C_1_1) -> 
        (if (_lh_filter_lz_arg1_1 _lh_filter_lz_LH_C_0_1) then
          (`LH_C(_lh_filter_lz_LH_C_0_1, ((filter_lz_d0_d0_d0 _lh_filter_lz_arg1_1) _lh_filter_lz_LH_C_1_1)))
        else
          (Lazy.force ((filter_lz_d0_d0_d0 _lh_filter_lz_arg1_1) _lh_filter_lz_LH_C_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec filter_d0_d0_d0 f_1_1 ls_1_2 =
  (ls_1_2 f_1_1);;
let rec filter_d0_d0_d1 f_5 ls_5 =
  (ls_5 f_5);;
let rec filter_d0_d0_d2 f_9 ls_6 =
  (ls_6 f_9);;
let rec foldl_d0_d0_d0 f_1_0 i_1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_7, t_9) -> 
      (((foldl_d0_d0_d0 f_1_0) ((f_1_0 i_1) h_7)) t_9)
    | `LH_N -> 
      i_1);;
let rec length_d0_d0_d0 ls_8 =
  (ls_8 99);;
let rec length_d0_d0_d1 ls_1_1 =
  (ls_1_1 99);;
let rec power_d0_d0_d0 _lh_power_arg1_1 _lh_power_arg2_1 =
  (if (_lh_power_arg2_1 = 0) then
    1
  else
    (_lh_power_arg1_1 * ((power_d0_d0_d0 _lh_power_arg1_1) (_lh_power_arg2_1 - 1))));;
let rec take_lz_d0_d0_d0 _lh_take_lz_arg1_6 _lh_take_lz_arg2_2 =
  (if (_lh_take_lz_arg1_6 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_6 = (Lazy.force _lh_take_lz_arg2_2) in
      (_lh_matchIdent_6 _lh_take_lz_arg1_6)));;
let rec take_lz_d0_d0_d1 _lh_take_lz_arg1_3 _lh_take_lz_arg2_1 =
  (if (_lh_take_lz_arg1_3 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_3 = (Lazy.force _lh_take_lz_arg2_1) in
      (_lh_matchIdent_3 _lh_take_lz_arg1_3)));;
let rec take_d0_d0_d0 n_2 ls_7 =
  (if (n_2 > 0) then
    (match ls_7 with
      | `LH_C(h_5, t_7) -> 
        (`LH_C(h_5, ((take_d0_d0_d0 (n_2 - 1)) t_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d1_d0_d0 n_3 ls_9 =
  (if (n_3 > 0) then
    (match ls_9 with
      | `LH_C(h_6, t_8) -> 
        (`LH_C(h_6, ((take_d1_d0_d0 (n_3 - 1)) t_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec enumFromTo_d0_d0_d0 a_3 b_3 _lh_popOutId_0_0 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_d0_d0_d0 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_3 in
        (`LH_C((sim_d0_d0_d0 _lh_listcomp_fun_ls_h_1), (_lh_popOutId_0_0 _lh_listcomp_fun_ls_t_3)))))
  else
    (`LH_N))
and enumFromTo_d1_d0_d0 a_2 b_2 _lh_popOutId_0_1 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo_d1_d0_d0 (a_2 + 1)) b_2) in
      (let rec t_5 = (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_2) in
        (let rec h_4 = (_lh_popOutId_2_0 (infRand_d0_d0_d0 _lh_popOutId_1_0)) in
          (if (_lh_popOutId_3_0 h_4) then
            (fun _lh_dummy_2 -> 
              (let rec t_6 = ((filter_d0_d0_d0 _lh_popOutId_3_0) t_5) in
                (1 + (length_d0_d0_d0 t_6))))
          else
            ((filter_d0_d0_d1 _lh_popOutId_3_0) t_5)))))
  else
    (fun _lh_dummy_3 -> 
      0))
and foldl1_d0_d0_d0 _lh_foldl1_arg1_1 _lh_foldl1_arg2_1 =
  (match _lh_foldl1_arg2_1 with
    | `LH_C(_lh_foldl1_LH_C_0_1, _lh_foldl1_LH_C_1_1) -> 
      (((foldl_d0_d0_d0 _lh_foldl1_arg1_1) _lh_foldl1_LH_C_0_1) _lh_foldl1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and infRand_d0_d0_d0 _lh_infRand_arg1_1 =
  (let rec f_8 = (fun x_4 -> 
    (lazy (`LH_C(((x_4 mod _lh_infRand_arg1_1) + 1), (f_8 (((97 * x_4) + 11) mod ((power_d0_d0_d0 2) 7))))))) in
    (f_8 37))
and maximum_d0_d0_d0 _lh_maximum_arg1_1 =
  ((foldl1_d0_d0_d0 (fun x_5 y_2 -> 
    (if (x_5 > y_2) then
      x_5
    else
      y_2))) _lh_maximum_arg1_1)
and nub_lz_d0_d0_d0 _lh_nub_lz_arg1_1 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_nub_lz_arg1_1) in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (fun _lh_take_lz_arg1_4 -> 
          (`LH_N))
      | `LH_C(_lh_nub_lz_LH_C_0_1, _lh_nub_lz_LH_C_1_1) -> 
        (let rec _lh_take_lz_LH_C_1_1 = (nub_lz_d0_d0_d0 ((filter_lz_d0_d0_d0 (fun y_3 -> 
          (not (_lh_nub_lz_LH_C_0_1 = y_3)))) _lh_nub_lz_LH_C_1_1)) in
          (let rec _lh_take_lz_LH_C_0_1 = _lh_nub_lz_LH_C_0_1 in
            (fun _lh_take_lz_arg1_5 -> 
              (`LH_C(_lh_take_lz_LH_C_0_1, ((take_lz_d0_d0_d0 (_lh_take_lz_arg1_5 - 1)) _lh_take_lz_LH_C_1_1))))))
      | _ -> 
        (failwith "error"))))
and simulate_d0_d0_d0 _lh_simulate_arg1_1 _lh_simulate_arg2_5 _lh_simulate_arg3_5 =
  ((float_of_int (length_d0_d0_d1 ((filter_d0_d0_d2 (fun x_7 -> 
    x_7)) (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_3 -> 
    (((_lh_listcomp_fun_para_3 _lh_listcomp_fun_9) _lh_simulate_arg2_5) _lh_simulate_arg3_5)) in
    (_lh_listcomp_fun_9 ((enumFromTo_d1_d0_d0 1) _lh_simulate_arg1_1)))))) /. (float_of_int _lh_simulate_arg1_1))
and sim_d0_d0_d0 _lh_sim_arg1_1 =
  (let rec proc_1 = (fun rs_1 -> 
    (let rec xs_1 = ((take_lz_d0_d0_d1 100) (nub_lz_d0_d0_d0 rs_1)) in
      (let rec best_1 = 100 in
        (let rec bestk_1 = (maximum_d0_d0_d0 ((take_d0_d0_d0 _lh_sim_arg1_1) xs_1)) in
          (let rec afterk_1 = ((dropWhile_d0_d0_d0 (fun x_6 -> 
            (x_6 < bestk_1))) ((drop_d0_d0_d0 _lh_sim_arg1_1) xs_1)) in
            ((`LH_C(best_1, (`LH_N))) = ((take_d1_d0_d0 1) afterk_1))))))) in
    (((simulate_d0_d0_d0 5000) 100) proc_1))
and testSecretary_nofib_d0_d0_d0 _lh_testSecretary_nofib_arg1_1 =
  (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
    (_lh_listcomp_fun_para_2 _lh_listcomp_fun_8)) in
    (_lh_listcomp_fun_8 ((enumFromTo_d0_d0_d0 35) 39)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Secretary_nofib" (fun () -> ignore ((testSecretary_nofib_d0 0)));
  Bench.Test.create ~name:"lumberhack_Secretary_nofib" (fun () -> ignore ((testSecretary_nofib_d0_d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Secretary_nofib" (fun () -> ignore ((testSecretary_nofib_d0_d0_d0 0)));
])
