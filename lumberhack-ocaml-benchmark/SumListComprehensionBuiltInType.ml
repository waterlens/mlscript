(*
ocamlfind ocamlopt -rectypes -thread -O3 ./SumListComprehensionBuiltInType.ml -o "./SumListComprehensionBuiltInType.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./SumListComprehensionBuiltInType.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec sum_d0 _lh_sum_arg1_1 =
  (match _lh_sum_arg1_1 with
    | `LH_N -> 
      0
    | `LH_C(_lh_sum_LH_C_0_1, _lh_sum_LH_C_1_1) -> 
      (_lh_sum_LH_C_0_1 + (sum_d0 _lh_sum_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec testSumListComprehensionBuiltInType_d0 _lh_testSumListComprehensionBuiltInType_arg1_1 =
  (sum_d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C((_lh_listcomp_fun_ls_h_2 * _lh_listcomp_fun_ls_h_3), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
          (_lh_listcomp_fun_3 ((enumFromTo_d1 1) _lh_listcomp_fun_ls_h_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 ((enumFromTo_d0 1) _lh_testSumListComprehensionBuiltInType_arg1_1))));;

(* lumberhack *)
let rec sum_d0_d0 _lh_sum_arg1_0 =
  _lh_sum_arg1_0;;
let rec enumFromTo_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
      (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_d0_d0 (a_1 + 1)) b_1) in
        (fun _lh_listcomp_fun_5 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_1 -> 
            ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_6) _lh_listcomp_fun_5) _lh_listcomp_fun_ls_t_3)) in
            (_lh_listcomp_fun_6 ((enumFromTo_d1_d0 1) _lh_listcomp_fun_ls_h_3))))))
  else
    (fun _lh_listcomp_fun_7 -> 
      0))
and enumFromTo_d1_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_d1_d0 (a_0 + 1)) b_0) in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1 -> 
          (let rec _lh_sum_LH_C_0_0 = (_lh_listcomp_fun_ls_h_1 * _lh_listcomp_fun_ls_h_0) in
            (let rec _lh_sum_LH_C_1_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (_lh_sum_LH_C_0_0 + (sum_d0_d0 _lh_sum_LH_C_1_0)))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and testSumListComprehensionBuiltInType_d0_d0 _lh_testSumListComprehensionBuiltInType_arg1_0 =
  (sum_d0_d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo_d0_d0 1) _lh_testSumListComprehensionBuiltInType_arg1_0))));;

(* lumberhack_pop_out *)
let rec sum_d0_d0_d0 _lh_sum_arg1_1 =
  _lh_sum_arg1_1;;
let rec sum_d0_d0_d1 _lh_sum_arg1_2 =
  _lh_sum_arg1_2;;
let rec enumFromTo_d0_d0_d0 a_3 b_3 _lh_popOutId_0_0 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_h_7 = a_3 in
      (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo_d0_d0_d0 (a_3 + 1)) b_3) in
        (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_2 -> 
          ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_7) _lh_listcomp_fun_1_3) _lh_popOutId_0_0) _lh_listcomp_fun_ls_t_7)) in
          (_lh_listcomp_fun_1_3 ((enumFromTo_d1_d0_d0 1) _lh_listcomp_fun_ls_h_7)))))
  else
    0)
and enumFromTo_d1_d0_d0 a_2 b_2 _lh_popOutId_0_1 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_h_4 = a_2 in
      (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo_d1_d0_d0 (a_2 + 1)) b_2) in
        (let rec _lh_sum_LH_C_0_1 = (_lh_popOutId_0_1 * _lh_listcomp_fun_ls_h_4) in
          (let rec _lh_sum_LH_C_1_1 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_4) in
            (_lh_sum_LH_C_0_1 + (sum_d0_d0_d0 _lh_sum_LH_C_1_1))))))
  else
    (_lh_popOutId_2_0 _lh_popOutId_3_0))
and testSumListComprehensionBuiltInType_d0_d0_d0 _lh_testSumListComprehensionBuiltInType_arg1_1 =
  (sum_d0_d0_d1 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_3 -> 
    (_lh_listcomp_fun_para_3 _lh_listcomp_fun_1_5)) in
    (_lh_listcomp_fun_1_5 ((enumFromTo_d0_d0_d0 1) _lh_testSumListComprehensionBuiltInType_arg1_1))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_SumListComprehensionBuiltInType" (fun () -> ignore ((testSumListComprehensionBuiltInType_d0 1000)));
  Bench.Test.create ~name:"lumberhack_SumListComprehensionBuiltInType" (fun () -> ignore ((testSumListComprehensionBuiltInType_d0_d0 1000)));
  Bench.Test.create ~name:"lumberhack_pop_out_SumListComprehensionBuiltInType" (fun () -> ignore ((testSumListComprehensionBuiltInType_d0_d0_d0 1000)));
])
