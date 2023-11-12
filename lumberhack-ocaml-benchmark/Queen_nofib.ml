(*
touch ./Queen_nofib.mli && ocamlc ./Queen_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Queen_nofib.ml -o "./Queen_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Queen_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
module Module_original = struct
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec length__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (1 + (length__d0 t_2_2))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_1 _lh_safe_arg2_1 _lh_safe_arg3_1 =
  (match _lh_safe_arg3_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_1, _lh_safe_LH_C_1_1) -> 
      ((((_lh_safe_arg1_1 <> _lh_safe_LH_C_0_1) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 + _lh_safe_arg2_1))) && (_lh_safe_arg1_1 <> (_lh_safe_LH_C_0_1 - _lh_safe_arg2_1))) && (((safe__d0 _lh_safe_arg1_1) (_lh_safe_arg2_1 + 1)) _lh_safe_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec gen__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  (match _lh_gen_arg1_1 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (if (((safe__d0 _lh_listcomp_fun_ls_h_3) 1) _lh_listcomp_fun_ls_h_2) then
                    (`LH_C((`LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                  else
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
                | `LH_N -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((enumFromTo__d0 1) _lh_gen_arg2_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 ((gen__d0 (_lh_gen_arg1_1 - 1)) _lh_gen_arg2_1))))
and nsoln__d0 _lh_nsoln_arg1_1 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_1) _lh_nsoln_arg1_1))
and testQueen_nofib__d0 _lh_testQueen_nofib_arg1_1 =
  (nsoln__d0 _lh_testQueen_nofib_arg1_1);;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec length__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d0 t_0))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe__d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_0 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
          (if (((safe__d0 _lh_listcomp_fun_ls_h_1) 1) _lh_listcomp_fun_ls_h_2) then
            (`LH_C((`LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1)))
          else
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1)))))
  else
    (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_5 -> 
      (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_3)))
and gen__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
              (_lh_listcomp_fun_1 ((enumFromTo__d0 1) _lh_gen_arg2_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((gen__d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0))))
and nsoln__d0 _lh_nsoln_arg1_0 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and testQueen_nofib__d0 _lh_testQueen_nofib_arg1_0 =
  (nsoln__d0 _lh_testQueen_nofib_arg1_0);;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec length__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length__d0 t_0))
    | `LH_N -> 
      0);;
let rec safe__d0 _lh_safe_arg1_0 _lh_safe_arg2_0 _lh_safe_arg3_0 =
  (match _lh_safe_arg3_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_safe_LH_C_0_0, _lh_safe_LH_C_1_0) -> 
      ((((_lh_safe_arg1_0 <> _lh_safe_LH_C_0_0) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 + _lh_safe_arg2_0))) && (_lh_safe_arg1_0 <> (_lh_safe_LH_C_0_0 - _lh_safe_arg2_0))) && (((safe__d0 _lh_safe_arg1_0) (_lh_safe_arg2_0 + 1)) _lh_safe_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo__d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_0 in
        (if (((safe__d0 _lh_listcomp_fun_ls_h_1) 1) _lh_popOutId_0_0) then
          (`LH_C((`LH_C(_lh_listcomp_fun_ls_h_1, _lh_popOutId_0_0)), (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_1)))
        else
          (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_1))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and gen__d0 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  (match _lh_gen_arg1_0 with
    | 0 -> 
      (`LH_C((`LH_N), (`LH_N)))
    | _ -> 
      (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
              (_lh_listcomp_fun_1 ((enumFromTo__d0 1) _lh_gen_arg2_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((gen__d0 (_lh_gen_arg1_0 - 1)) _lh_gen_arg2_0))))
and nsoln__d0 _lh_nsoln_arg1_0 =
  (length__d0 ((gen__d0 _lh_nsoln_arg1_0) _lh_nsoln_arg1_0))
and testQueen_nofib__d0 _lh_testQueen_nofib_arg1_0 =
  (nsoln__d0 _lh_testQueen_nofib_arg1_0);;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Queen_nofib" (fun () -> ignore (let open Module_original in ((testQueen_nofib__d0 11))));
  Bench.Test.create ~name:"lumberhack_Queen_nofib" (fun () -> ignore (let open Module_lumberhack in ((testQueen_nofib__d0 11))));
  Bench.Test.create ~name:"lumberhack_pop_out_Queen_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testQueen_nofib__d0 11))));
])
