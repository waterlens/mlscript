(*
touch ./Rewrite_nofib.mli && ocamlc ./Rewrite_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Rewrite_nofib.ml -o "./Rewrite_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Rewrite_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec all_d0 _lh_all_arg1_3 _lh_all_arg2_3 =
  (match _lh_all_arg2_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_3, _lh_all_LH_C_1_3) -> 
      (if (_lh_all_arg1_3 _lh_all_LH_C_0_3) then
        ((all_d0 _lh_all_arg1_3) _lh_all_LH_C_1_3)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d1 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all_d1 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d2 _lh_all_arg1_5 _lh_all_arg2_5 =
  (match _lh_all_arg2_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_5, _lh_all_LH_C_1_5) -> 
      (if (_lh_all_arg1_5 _lh_all_LH_C_0_5) then
        ((all_d2 _lh_all_arg1_5) _lh_all_LH_C_1_5)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d3 _lh_all_arg1_2 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_2) then
        ((all_d3 _lh_all_arg1_2) _lh_all_LH_C_1_2)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d4 _lh_all_arg1_4 _lh_all_arg2_4 =
  (match _lh_all_arg2_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_4, _lh_all_LH_C_1_4) -> 
      (if (_lh_all_arg1_4 _lh_all_LH_C_0_4) then
        ((all_d4 _lh_all_arg1_4) _lh_all_LH_C_1_4)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d5 _lh_all_arg1_6 _lh_all_arg2_6 =
  (match _lh_all_arg2_6 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_6, _lh_all_LH_C_1_6) -> 
      (if (_lh_all_arg1_6 _lh_all_LH_C_0_6) then
        ((all_d5 _lh_all_arg1_6) _lh_all_LH_C_1_6)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec any_d0 _lh_any_arg1_1 _lh_any_arg2_1 =
  (match _lh_any_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_1, _lh_any_LH_C_1_1) -> 
      (if (_lh_any_arg1_1 _lh_any_LH_C_0_1) then
        true
      else
        ((any_d0 _lh_any_arg1_1) _lh_any_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec any_d1 _lh_any_arg1_4 _lh_any_arg2_4 =
  (match _lh_any_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_4, _lh_any_LH_C_1_4) -> 
      (if (_lh_any_arg1_4 _lh_any_LH_C_0_4) then
        true
      else
        ((any_d1 _lh_any_arg1_4) _lh_any_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec any_d2 _lh_any_arg1_5 _lh_any_arg2_5 =
  (match _lh_any_arg2_5 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_5, _lh_any_LH_C_1_5) -> 
      (if (_lh_any_arg1_5 _lh_any_LH_C_0_5) then
        true
      else
        ((any_d2 _lh_any_arg1_5) _lh_any_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec any_d3 _lh_any_arg1_2 _lh_any_arg2_2 =
  (match _lh_any_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_2, _lh_any_LH_C_1_2) -> 
      (if (_lh_any_arg1_2 _lh_any_LH_C_0_2) then
        true
      else
        ((any_d3 _lh_any_arg1_2) _lh_any_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec any_d4 _lh_any_arg1_3 _lh_any_arg2_3 =
  (match _lh_any_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_3, _lh_any_LH_C_1_3) -> 
      (if (_lh_any_arg1_3 _lh_any_LH_C_0_3) then
        true
      else
        ((any_d4 _lh_any_arg1_3) _lh_any_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec atIndex_d0 n_4 ls_4_9 =
  (if (n_4 < 0) then
    (failwith "error")
  else
    (match ls_4_9 with
      | `LH_C(h_6_0, t_6_9) -> 
        (if (n_4 = 0) then
          h_6_0
        else
          ((atIndex_d0 (n_4 - 1)) t_6_9))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_d1 n_6 ls_7_5 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match ls_7_5 with
      | `LH_C(h_9_2, t_1_0_3) -> 
        (if (n_6 = 0) then
          h_9_2
        else
          ((atIndex_d1 (n_6 - 1)) t_1_0_3))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_d2 n_5 ls_6_4 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match ls_6_4 with
      | `LH_C(h_7_4, t_8_4) -> 
        (if (n_5 = 0) then
          h_7_4
        else
          ((atIndex_d2 (n_5 - 1)) t_8_4))
      | `LH_N -> 
        (failwith "error")));;
let rec box_d0 _lh_box_arg1_2 =
  (`LH_C(_lh_box_arg1_2, (`LH_N)));;
let rec box_d1 _lh_box_arg1_1 =
  (`LH_C(_lh_box_arg1_1, (`LH_N)));;
let rec copy_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 <= 0) then
    (`LH_N)
  else
    (`LH_C(_lh_copy_arg2_1, ((copy_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec croak_d0 =
  (`Nothing);;
let rec croak_d1 =
  (`Nothing);;
let rec croak_d1_d0 =
  (`Nothing);;
let rec croak_d1_d1 =
  (`Nothing);;
let rec croak_d1_d2 =
  (`Nothing);;
let rec croak_d1_d3 =
  (`Nothing);;
let rec croak_d2 =
  (`Nothing);;
let rec croak_d3 =
  (`Nothing);;
let rec croak_d4 =
  (`Nothing);;
let rec croak_d5 =
  (`Nothing);;
let rec croak_d6 =
  (`Nothing);;
let rec croak_d7 =
  (`Nothing);;
let rec croak_d8 =
  (`Nothing);;
let rec croak_d9 =
  (`Nothing);;
let rec cross_d0 _lh_cross_arg1_2 _lh_cross_arg2_2 _lh_cross_arg3_2 =
  (match _lh_cross_arg3_2 with
    | `LH_P2(_lh_cross_LH_P2_0_2, _lh_cross_LH_P2_1_2) -> 
      (`LH_P2((_lh_cross_arg1_2 _lh_cross_LH_P2_0_2), (_lh_cross_arg2_2 _lh_cross_LH_P2_1_2)))
    | _ -> 
      (failwith "error"));;
let rec cross_d1 _lh_cross_arg1_3 _lh_cross_arg2_3 _lh_cross_arg3_3 =
  (match _lh_cross_arg3_3 with
    | `LH_P2(_lh_cross_LH_P2_0_3, _lh_cross_LH_P2_1_3) -> 
      (`LH_P2((_lh_cross_arg1_3 _lh_cross_LH_P2_0_3), (_lh_cross_arg2_3 _lh_cross_LH_P2_1_3)))
    | _ -> 
      (failwith "error"));;
let rec cross_d2 _lh_cross_arg1_4 _lh_cross_arg2_4 _lh_cross_arg3_4 =
  (match _lh_cross_arg3_4 with
    | `LH_P2(_lh_cross_LH_P2_0_4, _lh_cross_LH_P2_1_4) -> 
      (`LH_P2((_lh_cross_arg1_4 _lh_cross_LH_P2_0_4), (_lh_cross_arg2_4 _lh_cross_LH_P2_1_4)))
    | _ -> 
      (failwith "error"));;
let rec cross_d3 _lh_cross_arg1_1 _lh_cross_arg2_1 _lh_cross_arg3_1 =
  (match _lh_cross_arg3_1 with
    | `LH_P2(_lh_cross_LH_P2_0_1, _lh_cross_LH_P2_1_1) -> 
      (`LH_P2((_lh_cross_arg1_1 _lh_cross_LH_P2_0_1), (_lh_cross_arg2_1 _lh_cross_LH_P2_1_1)))
    | _ -> 
      (failwith "error"));;
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
let rec dropWhile_d1 _lh_dropWhile_arg1_2 _lh_dropWhile_arg2_2 =
  (match _lh_dropWhile_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2) -> 
      (if (_lh_dropWhile_arg1_2 _lh_dropWhile_LH_C_0_2) then
        ((dropWhile_d1 _lh_dropWhile_arg1_2) _lh_dropWhile_LH_C_1_2)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_2, _lh_dropWhile_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec enumFrom_d0 a_7 =
  (lazy (`LH_C(a_7, (enumFrom_d0 (a_7 + 1)))));;
let rec enumFrom_d1 a_1_0 =
  (lazy (`LH_C(a_1_0, (enumFrom_d1 (a_1_0 + 1)))));;
let rec enumFrom_d2 a_8 =
  (lazy (`LH_C(a_8, (enumFrom_d2 (a_8 + 1)))));;
let rec enumFrom_d3 a_9 =
  (lazy (`LH_C(a_9, (enumFrom_d3 (a_9 + 1)))));;
let rec eqRewrite_d0 _lh_eqRewrite_arg1_1 _lh_eqRewrite_arg2_1 _lh_eqRewrite_arg3_1 =
  ((_lh_eqRewrite_arg1_1 (`LH_P2(_lh_eqRewrite_arg2_1, _lh_eqRewrite_arg3_1))) = (`Equal));;
let rec eqno_d0 _lh_eqno_arg1_2 =
  (match _lh_eqno_arg1_2 with
    | `Eqn(_lh_eqno_Eqn_0_2, _lh_eqno_Eqn_1_2) -> 
      (match _lh_eqno_Eqn_1_2 with
        | `LH_P2(_lh_eqno_LH_P2_0_2, _lh_eqno_LH_P2_1_2) -> 
          _lh_eqno_Eqn_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqno_d1 _lh_eqno_arg1_1 =
  (match _lh_eqno_arg1_1 with
    | `Eqn(_lh_eqno_Eqn_0_1, _lh_eqno_Eqn_1_1) -> 
      (match _lh_eqno_Eqn_1_1 with
        | `LH_P2(_lh_eqno_LH_P2_0_1, _lh_eqno_LH_P2_1_1) -> 
          _lh_eqno_Eqn_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqpr_d0 _lh_eqpr_arg1_1 =
  (match _lh_eqpr_arg1_1 with
    | `Eqn(_lh_eqpr_Eqn_0_1, _lh_eqpr_Eqn_1_1) -> 
      _lh_eqpr_Eqn_1_1
    | _ -> 
      (failwith "error"));;
let rec exists_d0 _lh_exists_arg1_6 =
  (match _lh_exists_arg1_6 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d1 _lh_exists_arg1_1 =
  (match _lh_exists_arg1_1 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d2 _lh_exists_arg1_3 =
  (match _lh_exists_arg1_3 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d3 _lh_exists_arg1_4 =
  (match _lh_exists_arg1_4 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d4 _lh_exists_arg1_2 =
  (match _lh_exists_arg1_2 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d5 _lh_exists_arg1_5 =
  (match _lh_exists_arg1_5 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec filter_d0 f_5_2 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_7_0, t_8_0) -> 
      (if (f_5_2 h_7_0) then
        (`LH_C(h_7_0, ((filter_d0 f_5_2) t_8_0)))
      else
        ((filter_d0 f_5_2) t_8_0))
    | `LH_N -> 
      (`LH_N));;
let rec foldl_d0 f_2_0 i_5 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_2_8, t_3_4) -> 
      (((foldl_d0 f_2_0) ((f_2_0 i_5) h_2_8)) t_3_4)
    | `LH_N -> 
      i_5);;
let rec foldr_d0 f_6_7 i_1_6 ls_7_8 =
  (match ls_7_8 with
    | `LH_C(h_9_6, t_1_0_7) -> 
      ((f_6_7 h_9_6) (((foldr_d0 f_6_7) i_1_6) t_1_0_7))
    | `LH_N -> 
      i_1_6);;
let rec foldr_d1 f_7_5 i_1_9 ls_8_5 =
  (match ls_8_5 with
    | `LH_C(h_1_0_5, t_1_1_9) -> 
      ((f_7_5 h_1_0_5) (((foldr_d1 f_7_5) i_1_9) t_1_1_9))
    | `LH_N -> 
      i_1_9);;
let rec foldr_d1_d0 f_8_5 i_2_1 ls_9_5 =
  (match ls_9_5 with
    | `LH_C(h_1_1_6, t_1_3_1) -> 
      ((f_8_5 h_1_1_6) (((foldr_d1_d0 f_8_5) i_2_1) t_1_3_1))
    | `LH_N -> 
      i_2_1);;
let rec foldr_d1_d1 f_7_2 i_1_8 ls_8_2 =
  (match ls_8_2 with
    | `LH_C(h_1_0_2, t_1_1_6) -> 
      ((f_7_2 h_1_0_2) (((foldr_d1_d1 f_7_2) i_1_8) t_1_1_6))
    | `LH_N -> 
      i_1_8);;
let rec foldr_d1_d2 f_8_0 i_2_0 ls_9_0 =
  (match ls_9_0 with
    | `LH_C(h_1_1_0, t_1_2_5) -> 
      ((f_8_0 h_1_1_0) (((foldr_d1_d2 f_8_0) i_2_0) t_1_2_5))
    | `LH_N -> 
      i_2_0);;
let rec foldr_d1_d3 f_2_5 i_7 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_3_8, t_4_4) -> 
      ((f_2_5 h_3_8) (((foldr_d1_d3 f_2_5) i_7) t_4_4))
    | `LH_N -> 
      i_7);;
let rec foldr_d1_d4 f_6_3 i_1_5 ls_7_2 =
  (match ls_7_2 with
    | `LH_C(h_8_6, t_9_7) -> 
      ((f_6_3 h_8_6) (((foldr_d1_d4 f_6_3) i_1_5) t_9_7))
    | `LH_N -> 
      i_1_5);;
let rec foldr_d1_d5 f_6_2 i_1_4 ls_7_1 =
  (match ls_7_1 with
    | `LH_C(h_8_4, t_9_5) -> 
      ((f_6_2 h_8_4) (((foldr_d1_d5 f_6_2) i_1_4) t_9_5))
    | `LH_N -> 
      i_1_4);;
let rec foldr_d1_d6 f_3_2 i_1_0 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_4_4, t_5_1) -> 
      ((f_3_2 h_4_4) (((foldr_d1_d6 f_3_2) i_1_0) t_5_1))
    | `LH_N -> 
      i_1_0);;
let rec foldr_d1_d7 f_1_4 i_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_1, t_2_6) -> 
      ((f_1_4 h_2_1) (((foldr_d1_d7 f_1_4) i_3) t_2_6))
    | `LH_N -> 
      i_3);;
let rec foldr_d2 f_2_9 i_8 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_4_1, t_4_8) -> 
      ((f_2_9 h_4_1) (((foldr_d2 f_2_9) i_8) t_4_8))
    | `LH_N -> 
      i_8);;
let rec foldr_d3 f_2_2 i_6 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_0, t_3_6) -> 
      ((f_2_2 h_3_0) (((foldr_d3 f_2_2) i_6) t_3_6))
    | `LH_N -> 
      i_6);;
let rec foldr_d4 f_4_0 i_1_1 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_5_5, t_6_4) -> 
      ((f_4_0 h_5_5) (((foldr_d4 f_4_0) i_1_1) t_6_4))
    | `LH_N -> 
      i_1_1);;
let rec foldr_d5 f_1_6 i_4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_2_8) -> 
      ((f_1_6 h_2_3) (((foldr_d5 f_1_6) i_4) t_2_8))
    | `LH_N -> 
      i_4);;
let rec foldr_d6 f_5_4 i_1_2 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_7_2, t_8_2) -> 
      ((f_5_4 h_7_2) (((foldr_d6 f_5_4) i_1_2) t_8_2))
    | `LH_N -> 
      i_1_2);;
let rec foldr_d7 f_3_0 i_9 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_4_2, t_4_9) -> 
      ((f_3_0 h_4_2) (((foldr_d7 f_3_0) i_9) t_4_9))
    | `LH_N -> 
      i_9);;
let rec foldr_d8 f_6_9 i_1_7 ls_8_0 =
  (match ls_8_0 with
    | `LH_C(h_9_9, t_1_1_1) -> 
      ((f_6_9 h_9_9) (((foldr_d8 f_6_9) i_1_7) t_1_1_1))
    | `LH_N -> 
      i_1_7);;
let rec foldr_d9 f_6_0 i_1_3 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_8_1, t_9_1) -> 
      ((f_6_0 h_8_1) (((foldr_d9 f_6_0) i_1_3) t_9_1))
    | `LH_N -> 
      i_1_3);;
let rec fst_d0 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec fst_d1 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst_d2 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst_d3 _lh_fst_arg1_4 =
  (match _lh_fst_arg1_4 with
    | `LH_P2(_lh_fst_LH_P2_0_4, _lh_fst_LH_P2_1_4) -> 
      _lh_fst_LH_P2_0_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d0 _lh_getOrElse_arg1_5 _lh_getOrElse_arg2_5 =
  (match _lh_getOrElse_arg1_5 with
    | `Just(_lh_getOrElse_Just_0_5) -> 
      _lh_getOrElse_Just_0_5
    | `Nothing -> 
      _lh_getOrElse_arg2_5
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1 _lh_getOrElse_arg1_1_7 _lh_getOrElse_arg2_1_7 =
  (match _lh_getOrElse_arg1_1_7 with
    | `Just(_lh_getOrElse_Just_0_1_7) -> 
      _lh_getOrElse_Just_0_1_7
    | `Nothing -> 
      _lh_getOrElse_arg2_1_7
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d0 _lh_getOrElse_arg1_1_2 _lh_getOrElse_arg2_1_2 =
  (match _lh_getOrElse_arg1_1_2 with
    | `Just(_lh_getOrElse_Just_0_1_2) -> 
      _lh_getOrElse_Just_0_1_2
    | `Nothing -> 
      _lh_getOrElse_arg2_1_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d1 _lh_getOrElse_arg1_1_6 _lh_getOrElse_arg2_1_6 =
  (match _lh_getOrElse_arg1_1_6 with
    | `Just(_lh_getOrElse_Just_0_1_6) -> 
      _lh_getOrElse_Just_0_1_6
    | `Nothing -> 
      _lh_getOrElse_arg2_1_6
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d2 _lh_getOrElse_arg1_1 _lh_getOrElse_arg2_1 =
  (match _lh_getOrElse_arg1_1 with
    | `Just(_lh_getOrElse_Just_0_1) -> 
      _lh_getOrElse_Just_0_1
    | `Nothing -> 
      _lh_getOrElse_arg2_1
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d3 _lh_getOrElse_arg1_1_4 _lh_getOrElse_arg2_1_4 =
  (match _lh_getOrElse_arg1_1_4 with
    | `Just(_lh_getOrElse_Just_0_1_4) -> 
      _lh_getOrElse_Just_0_1_4
    | `Nothing -> 
      _lh_getOrElse_arg2_1_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d4 _lh_getOrElse_arg1_1_3 _lh_getOrElse_arg2_1_3 =
  (match _lh_getOrElse_arg1_1_3 with
    | `Just(_lh_getOrElse_Just_0_1_3) -> 
      _lh_getOrElse_Just_0_1_3
    | `Nothing -> 
      _lh_getOrElse_arg2_1_3
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d5 _lh_getOrElse_arg1_3 _lh_getOrElse_arg2_3 =
  (match _lh_getOrElse_arg1_3 with
    | `Just(_lh_getOrElse_Just_0_3) -> 
      _lh_getOrElse_Just_0_3
    | `Nothing -> 
      _lh_getOrElse_arg2_3
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d6 _lh_getOrElse_arg1_1_1 _lh_getOrElse_arg2_1_1 =
  (match _lh_getOrElse_arg1_1_1 with
    | `Just(_lh_getOrElse_Just_0_1_1) -> 
      _lh_getOrElse_Just_0_1_1
    | `Nothing -> 
      _lh_getOrElse_arg2_1_1
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d2 _lh_getOrElse_arg1_6 _lh_getOrElse_arg2_6 =
  (match _lh_getOrElse_arg1_6 with
    | `Just(_lh_getOrElse_Just_0_6) -> 
      _lh_getOrElse_Just_0_6
    | `Nothing -> 
      _lh_getOrElse_arg2_6
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d3 _lh_getOrElse_arg1_7 _lh_getOrElse_arg2_7 =
  (match _lh_getOrElse_arg1_7 with
    | `Just(_lh_getOrElse_Just_0_7) -> 
      _lh_getOrElse_Just_0_7
    | `Nothing -> 
      _lh_getOrElse_arg2_7
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d4 _lh_getOrElse_arg1_4 _lh_getOrElse_arg2_4 =
  (match _lh_getOrElse_arg1_4 with
    | `Just(_lh_getOrElse_Just_0_4) -> 
      _lh_getOrElse_Just_0_4
    | `Nothing -> 
      _lh_getOrElse_arg2_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d5 _lh_getOrElse_arg1_1_5 _lh_getOrElse_arg2_1_5 =
  (match _lh_getOrElse_arg1_1_5 with
    | `Just(_lh_getOrElse_Just_0_1_5) -> 
      _lh_getOrElse_Just_0_1_5
    | `Nothing -> 
      _lh_getOrElse_arg2_1_5
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d6 _lh_getOrElse_arg1_1_0 _lh_getOrElse_arg2_1_0 =
  (match _lh_getOrElse_arg1_1_0 with
    | `Just(_lh_getOrElse_Just_0_1_0) -> 
      _lh_getOrElse_Just_0_1_0
    | `Nothing -> 
      _lh_getOrElse_arg2_1_0
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d7 _lh_getOrElse_arg1_2 _lh_getOrElse_arg2_2 =
  (match _lh_getOrElse_arg1_2 with
    | `Just(_lh_getOrElse_Just_0_2) -> 
      _lh_getOrElse_Just_0_2
    | `Nothing -> 
      _lh_getOrElse_arg2_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d8 _lh_getOrElse_arg1_8 _lh_getOrElse_arg2_8 =
  (match _lh_getOrElse_arg1_8 with
    | `Just(_lh_getOrElse_Just_0_8) -> 
      _lh_getOrElse_Just_0_8
    | `Nothing -> 
      _lh_getOrElse_arg2_8
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d9 _lh_getOrElse_arg1_9 _lh_getOrElse_arg2_9 =
  (match _lh_getOrElse_arg1_9 with
    | `Just(_lh_getOrElse_Just_0_9) -> 
      _lh_getOrElse_Just_0_9
    | `Nothing -> 
      _lh_getOrElse_arg2_9
    | _ -> 
      (failwith "error"));;
let rec gtRewrite_d0 _lh_gtRewrite_arg1_1 _lh_gtRewrite_arg2_1 _lh_gtRewrite_arg3_1 =
  ((_lh_gtRewrite_arg1_1 (`LH_P2(_lh_gtRewrite_arg2_1, _lh_gtRewrite_arg3_1))) = (`Greater));;
let rec inList_d0 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList_d0 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_d1 _lh_inList_arg1_4 _lh_inList_arg2_4 =
  (match _lh_inList_arg2_4 with
    | `LH_C(_lh_inList_LH_C_0_4, _lh_inList_LH_C_1_4) -> 
      (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
        true
      else
        ((inList_d1 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_d2 _lh_inList_arg1_6 _lh_inList_arg2_6 =
  (match _lh_inList_arg2_6 with
    | `LH_C(_lh_inList_LH_C_0_6, _lh_inList_LH_C_1_6) -> 
      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_6) then
        true
      else
        ((inList_d2 _lh_inList_arg1_6) _lh_inList_LH_C_1_6))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_d3 _lh_inList_arg1_5 _lh_inList_arg2_5 =
  (match _lh_inList_arg2_5 with
    | `LH_C(_lh_inList_LH_C_0_5, _lh_inList_LH_C_1_5) -> 
      (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_5) then
        true
      else
        ((inList_d3 _lh_inList_arg1_5) _lh_inList_LH_C_1_5))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_d4 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList_d4 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList_d5 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList_d5 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec lhs_d0 _lh_lhs_arg1_7 =
  (match _lh_lhs_arg1_7 with
    | `Eqn(_lh_lhs_Eqn_0_7, _lh_lhs_Eqn_1_7) -> 
      (match _lh_lhs_Eqn_1_7 with
        | `LH_P2(_lh_lhs_LH_P2_0_7, _lh_lhs_LH_P2_1_7) -> 
          _lh_lhs_LH_P2_0_7
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d1 _lh_lhs_arg1_6 =
  (match _lh_lhs_arg1_6 with
    | `Eqn(_lh_lhs_Eqn_0_6, _lh_lhs_Eqn_1_6) -> 
      (match _lh_lhs_Eqn_1_6 with
        | `LH_P2(_lh_lhs_LH_P2_0_6, _lh_lhs_LH_P2_1_6) -> 
          _lh_lhs_LH_P2_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d2 _lh_lhs_arg1_5 =
  (match _lh_lhs_arg1_5 with
    | `Eqn(_lh_lhs_Eqn_0_5, _lh_lhs_Eqn_1_5) -> 
      (match _lh_lhs_Eqn_1_5 with
        | `LH_P2(_lh_lhs_LH_P2_0_5, _lh_lhs_LH_P2_1_5) -> 
          _lh_lhs_LH_P2_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d3 _lh_lhs_arg1_2 =
  (match _lh_lhs_arg1_2 with
    | `Eqn(_lh_lhs_Eqn_0_2, _lh_lhs_Eqn_1_2) -> 
      (match _lh_lhs_Eqn_1_2 with
        | `LH_P2(_lh_lhs_LH_P2_0_2, _lh_lhs_LH_P2_1_2) -> 
          _lh_lhs_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d4 _lh_lhs_arg1_4 =
  (match _lh_lhs_arg1_4 with
    | `Eqn(_lh_lhs_Eqn_0_4, _lh_lhs_Eqn_1_4) -> 
      (match _lh_lhs_Eqn_1_4 with
        | `LH_P2(_lh_lhs_LH_P2_0_4, _lh_lhs_LH_P2_1_4) -> 
          _lh_lhs_LH_P2_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d5 _lh_lhs_arg1_1 =
  (match _lh_lhs_arg1_1 with
    | `Eqn(_lh_lhs_Eqn_0_1, _lh_lhs_Eqn_1_1) -> 
      (match _lh_lhs_Eqn_1_1 with
        | `LH_P2(_lh_lhs_LH_P2_0_1, _lh_lhs_LH_P2_1_1) -> 
          _lh_lhs_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d6 _lh_lhs_arg1_3 =
  (match _lh_lhs_arg1_3 with
    | `Eqn(_lh_lhs_Eqn_0_3, _lh_lhs_Eqn_1_3) -> 
      (match _lh_lhs_Eqn_1_3 with
        | `LH_P2(_lh_lhs_LH_P2_0_3, _lh_lhs_LH_P2_1_3) -> 
          _lh_lhs_LH_P2_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lift_d0 _lh_lift_arg1_5 _lh_lift_arg2_5 =
  (match _lh_lift_arg2_5 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_5) -> 
      (`Just((_lh_lift_arg1_5 _lh_lift_Just_0_5)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1 _lh_lift_arg1_9 _lh_lift_arg2_9 =
  (match _lh_lift_arg2_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_9) -> 
      (`Just((_lh_lift_arg1_9 _lh_lift_Just_0_9)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d0 _lh_lift_arg1_1_7 _lh_lift_arg2_1_7 =
  (match _lh_lift_arg2_1_7 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_7) -> 
      (`Just((_lh_lift_arg1_1_7 _lh_lift_Just_0_1_7)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d1 _lh_lift_arg1_1_0 _lh_lift_arg2_1_0 =
  (match _lh_lift_arg2_1_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_0) -> 
      (`Just((_lh_lift_arg1_1_0 _lh_lift_Just_0_1_0)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d2 _lh_lift_arg1_1_9 _lh_lift_arg2_1_9 =
  (match _lh_lift_arg2_1_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_9) -> 
      (`Just((_lh_lift_arg1_1_9 _lh_lift_Just_0_1_9)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d3 _lh_lift_arg1_1_6 _lh_lift_arg2_1_6 =
  (match _lh_lift_arg2_1_6 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_6) -> 
      (`Just((_lh_lift_arg1_1_6 _lh_lift_Just_0_1_6)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d4 _lh_lift_arg1_4 _lh_lift_arg2_4 =
  (match _lh_lift_arg2_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_4) -> 
      (`Just((_lh_lift_arg1_4 _lh_lift_Just_0_4)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d5 _lh_lift_arg1_7 _lh_lift_arg2_7 =
  (match _lh_lift_arg2_7 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_7) -> 
      (`Just((_lh_lift_arg1_7 _lh_lift_Just_0_7)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d6 _lh_lift_arg1_1_1 _lh_lift_arg2_1_1 =
  (match _lh_lift_arg2_1_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_1) -> 
      (`Just((_lh_lift_arg1_1_1 _lh_lift_Just_0_1_1)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d7 _lh_lift_arg1_2_0 _lh_lift_arg2_2_0 =
  (match _lh_lift_arg2_2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2_0) -> 
      (`Just((_lh_lift_arg1_2_0 _lh_lift_Just_0_2_0)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d8 _lh_lift_arg1_6 _lh_lift_arg2_6 =
  (match _lh_lift_arg2_6 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_6) -> 
      (`Just((_lh_lift_arg1_6 _lh_lift_Just_0_6)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d9 _lh_lift_arg1_1_4 _lh_lift_arg2_1_4 =
  (match _lh_lift_arg2_1_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_4) -> 
      (`Just((_lh_lift_arg1_1_4 _lh_lift_Just_0_1_4)))
    | _ -> 
      (failwith "error"));;
let rec lift_d2 _lh_lift_arg1_3 _lh_lift_arg2_3 =
  (match _lh_lift_arg2_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_3) -> 
      (`Just((_lh_lift_arg1_3 _lh_lift_Just_0_3)))
    | _ -> 
      (failwith "error"));;
let rec lift_d3 _lh_lift_arg1_1_3 _lh_lift_arg2_1_3 =
  (match _lh_lift_arg2_1_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_3) -> 
      (`Just((_lh_lift_arg1_1_3 _lh_lift_Just_0_1_3)))
    | _ -> 
      (failwith "error"));;
let rec lift_d4 _lh_lift_arg1_1_8 _lh_lift_arg2_1_8 =
  (match _lh_lift_arg2_1_8 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_8) -> 
      (`Just((_lh_lift_arg1_1_8 _lh_lift_Just_0_1_8)))
    | _ -> 
      (failwith "error"));;
let rec lift_d5 _lh_lift_arg1_2 _lh_lift_arg2_2 =
  (match _lh_lift_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2) -> 
      (`Just((_lh_lift_arg1_2 _lh_lift_Just_0_2)))
    | _ -> 
      (failwith "error"));;
let rec lift_d6 _lh_lift_arg1_8 _lh_lift_arg2_8 =
  (match _lh_lift_arg2_8 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_8) -> 
      (`Just((_lh_lift_arg1_8 _lh_lift_Just_0_8)))
    | _ -> 
      (failwith "error"));;
let rec lift_d7 _lh_lift_arg1_1_5 _lh_lift_arg2_1_5 =
  (match _lh_lift_arg2_1_5 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_5) -> 
      (`Just((_lh_lift_arg1_1_5 _lh_lift_Just_0_1_5)))
    | _ -> 
      (failwith "error"));;
let rec lift_d8 _lh_lift_arg1_1_2 _lh_lift_arg2_1_2 =
  (match _lh_lift_arg2_1_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_2) -> 
      (`Just((_lh_lift_arg1_1_2 _lh_lift_Just_0_1_2)))
    | _ -> 
      (failwith "error"));;
let rec lift_d9 _lh_lift_arg1_1 _lh_lift_arg2_1 =
  (match _lh_lift_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1) -> 
      (`Just((_lh_lift_arg1_1 _lh_lift_Just_0_1)))
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_d0 _lh_ltRewrite_arg1_4 _lh_ltRewrite_arg2_4 _lh_ltRewrite_arg3_4 =
  ((_lh_ltRewrite_arg1_4 (`LH_P2(_lh_ltRewrite_arg2_4, _lh_ltRewrite_arg3_4))) = (`Less));;
let rec ltRewrite_d1 _lh_ltRewrite_arg1_3 _lh_ltRewrite_arg2_3 _lh_ltRewrite_arg3_3 =
  ((_lh_ltRewrite_arg1_3 (`LH_P2(_lh_ltRewrite_arg2_3, _lh_ltRewrite_arg3_3))) = (`Less));;
let rec ltRewrite_d2 _lh_ltRewrite_arg1_1 _lh_ltRewrite_arg2_1 _lh_ltRewrite_arg3_1 =
  ((_lh_ltRewrite_arg1_1 (`LH_P2(_lh_ltRewrite_arg2_1, _lh_ltRewrite_arg3_1))) = (`Less));;
let rec ltRewrite_d3 _lh_ltRewrite_arg1_2 _lh_ltRewrite_arg2_2 _lh_ltRewrite_arg3_2 =
  ((_lh_ltRewrite_arg1_2 (`LH_P2(_lh_ltRewrite_arg2_2, _lh_ltRewrite_arg3_2))) = (`Less));;
let rec mappend_d0 xs_3_0 ys_2_6 =
  (match xs_3_0 with
    | `LH_C(h_8_5, t_9_6) -> 
      (`LH_C(h_8_5, ((mappend_d0 t_9_6) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend_d1 xs_2_7 ys_2_3 =
  (match xs_2_7 with
    | `LH_C(h_7_7, t_8_7) -> 
      (`LH_C(h_7_7, ((mappend_d1 t_8_7) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend_d1_d0 xs_3_3 ys_2_9 =
  (match xs_3_3 with
    | `LH_C(h_8_8, t_9_9) -> 
      (`LH_C(h_8_8, ((mappend_d1_d0 t_9_9) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_d1_d1 xs_2_9 ys_2_5 =
  (match xs_2_9 with
    | `LH_C(h_8_2, t_9_3) -> 
      (`LH_C(h_8_2, ((mappend_d1_d1 t_9_3) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend_d1_d2 xs_3_6 ys_3_2 =
  (match xs_3_6 with
    | `LH_C(h_9_3, t_1_0_4) -> 
      (`LH_C(h_9_3, ((mappend_d1_d2 t_1_0_4) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend_d1_d3 xs_2_0 ys_1_8 =
  (match xs_2_0 with
    | `LH_C(h_4_6, t_5_3) -> 
      (`LH_C(h_4_6, ((mappend_d1_d3 t_5_3) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_d1_d4 xs_3_8 ys_3_4 =
  (match xs_3_8 with
    | `LH_C(h_9_7, t_1_0_8) -> 
      (`LH_C(h_9_7, ((mappend_d1_d4 t_1_0_8) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend_d1_d5 xs_2_2 ys_2_0 =
  (match xs_2_2 with
    | `LH_C(h_4_8, t_5_5) -> 
      (`LH_C(h_4_8, ((mappend_d1_d5 t_5_5) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_d1_d6 xs_1_7 ys_1_5 =
  (match xs_1_7 with
    | `LH_C(h_3_5, t_4_1) -> 
      (`LH_C(h_3_5, ((mappend_d1_d6 t_4_1) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_d1_d7 xs_1_3 ys_1_1 =
  (match xs_1_3 with
    | `LH_C(h_2_7, t_3_3) -> 
      (`LH_C(h_2_7, ((mappend_d1_d7 t_3_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d1_d8 xs_1_5 ys_1_3 =
  (match xs_1_5 with
    | `LH_C(h_3_3, t_3_9) -> 
      (`LH_C(h_3_3, ((mappend_d1_d8 t_3_9) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d1_d9 xs_1_8 ys_1_6 =
  (match xs_1_8 with
    | `LH_C(h_3_6, t_4_2) -> 
      (`LH_C(h_3_6, ((mappend_d1_d9 t_4_2) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_d2 xs_1_4 ys_1_2 =
  (match xs_1_4 with
    | `LH_C(h_3_1, t_3_7) -> 
      (`LH_C(h_3_1, ((mappend_d2 t_3_7) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d2_d0 xs_2_3 ys_2_1 =
  (match xs_2_3 with
    | `LH_C(h_5_0, t_5_7) -> 
      (`LH_C(h_5_0, ((mappend_d2_d0 t_5_7) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_d3 xs_3_7 ys_3_3 =
  (match xs_3_7 with
    | `LH_C(h_9_4, t_1_0_5) -> 
      (`LH_C(h_9_4, ((mappend_d3 t_1_0_5) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend_d4 xs_1_6 ys_1_4 =
  (match xs_1_6 with
    | `LH_C(h_3_4, t_4_0) -> 
      (`LH_C(h_3_4, ((mappend_d4 t_4_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d5 xs_2_1 ys_1_9 =
  (match xs_2_1 with
    | `LH_C(h_4_7, t_5_4) -> 
      (`LH_C(h_4_7, ((mappend_d5 t_5_4) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend_d6 xs_3_4 ys_3_0 =
  (match xs_3_4 with
    | `LH_C(h_8_9, t_1_0_0) -> 
      (`LH_C(h_8_9, ((mappend_d6 t_1_0_0) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend_d7 xs_4_1 ys_3_7 =
  (match xs_4_1 with
    | `LH_C(h_1_1_5, t_1_3_0) -> 
      (`LH_C(h_1_1_5, ((mappend_d7 t_1_3_0) ys_3_7)))
    | `LH_N -> 
      ys_3_7);;
let rec mappend_d8 xs_2_4 ys_2_2 =
  (match xs_2_4 with
    | `LH_C(h_5_4, t_6_2) -> 
      (`LH_C(h_5_4, ((mappend_d8 t_6_2) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend_d9 xs_3_2 ys_2_8 =
  (match xs_3_2 with
    | `LH_C(h_8_7, t_9_8) -> 
      (`LH_C(h_8_7, ((mappend_d9 t_9_8) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec map_d0 f_6_8 ls_7_9 =
  (match ls_7_9 with
    | `LH_C(h_9_8, t_1_1_0) -> 
      (`LH_C((f_6_8 h_9_8), ((map_d0 f_6_8) t_1_1_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_7_4 ls_8_4 =
  (match ls_8_4 with
    | `LH_C(h_1_0_4, t_1_1_8) -> 
      (`LH_C((f_7_4 h_1_0_4), ((map_d1 f_7_4) t_1_1_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d0 f_5_0 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_6_8, t_7_8) -> 
      (`LH_C((f_5_0 h_6_8), ((map_d1_d0 f_5_0) t_7_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d1 f_4_3 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_5_9, t_6_8) -> 
      (`LH_C((f_4_3 h_5_9), ((map_d1_d1 f_4_3) t_6_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d2 f_8_2 ls_9_2 =
  (match ls_9_2 with
    | `LH_C(h_1_1_2, t_1_2_7) -> 
      (`LH_C((f_8_2 h_1_1_2), ((map_d1_d2 f_8_2) t_1_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d3 f_3_6 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_5_1, t_5_9) -> 
      (`LH_C((f_3_6 h_5_1), ((map_d1_d3 f_3_6) t_5_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d4 f_7_6 ls_8_6 =
  (match ls_8_6 with
    | `LH_C(h_1_0_6, t_1_2_0) -> 
      (`LH_C((f_7_6 h_1_0_6), ((map_d1_d4 f_7_6) t_1_2_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d5 f_5_9 ls_6_8 =
  (match ls_6_8 with
    | `LH_C(h_8_0, t_9_0) -> 
      (`LH_C((f_5_9 h_8_0), ((map_d1_d5 f_5_9) t_9_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d6 f_7_3 ls_8_3 =
  (match ls_8_3 with
    | `LH_C(h_1_0_3, t_1_1_7) -> 
      (`LH_C((f_7_3 h_1_0_3), ((map_d1_d6 f_7_3) t_1_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d7 f_3_3 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_4_5, t_5_2) -> 
      (`LH_C((f_3_3 h_4_5), ((map_d1_d7 f_3_3) t_5_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d8 f_6_6 ls_7_6 =
  (match ls_7_6 with
    | `LH_C(h_9_5, t_1_0_6) -> 
      (`LH_C((f_6_6 h_9_5), ((map_d1_d8 f_6_6) t_1_0_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1_d9 f_3_4 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_4_9, t_5_6) -> 
      (`LH_C((f_3_4 h_4_9), ((map_d1_d9 f_3_4) t_5_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2 f_5_6 ls_6_5 =
  (match ls_6_5 with
    | `LH_C(h_7_6, t_8_6) -> 
      (`LH_C((f_5_6 h_7_6), ((map_d2 f_5_6) t_8_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0 f_8_1 ls_9_1 =
  (match ls_9_1 with
    | `LH_C(h_1_1_1, t_1_2_6) -> 
      (`LH_C((f_8_1 h_1_1_1), ((map_d2_d0 f_8_1) t_1_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d1 f_5_5 ls_6_3 =
  (match ls_6_3 with
    | `LH_C(h_7_3, t_8_3) -> 
      (`LH_C((f_5_5 h_7_3), ((map_d2_d1 f_5_5) t_8_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d2 f_7_7 ls_8_7 =
  (match ls_8_7 with
    | `LH_C(h_1_0_7, t_1_2_1) -> 
      (`LH_C((f_7_7 h_1_0_7), ((map_d2_d2 f_7_7) t_1_2_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d3 f_5_3 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_7_1, t_8_1) -> 
      (`LH_C((f_5_3 h_7_1), ((map_d2_d3 f_5_3) t_8_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d4 f_1_8 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_5, t_3_1) -> 
      (`LH_C((f_1_8 h_2_5), ((map_d2_d4 f_1_8) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d5 f_5_7 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_7_8, t_8_8) -> 
      (`LH_C((f_5_7 h_7_8), ((map_d2_d5 f_5_7) t_8_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d6 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_0, t_2_5) -> 
      (`LH_C((f_1_3 h_2_0), ((map_d2_d6 f_1_3) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d7 f_2_3 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_2, t_3_8) -> 
      (`LH_C((f_2_3 h_3_2), ((map_d2_d7 f_2_3) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d8 f_4_6 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_6_3, t_7_2) -> 
      (`LH_C((f_4_6 h_6_3), ((map_d2_d8 f_4_6) t_7_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d9 f_5_8 ls_6_7 =
  (match ls_6_7 with
    | `LH_C(h_7_9, t_8_9) -> 
      (`LH_C((f_5_8 h_7_9), ((map_d2_d9 f_5_8) t_8_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3 f_7_0 ls_8_1 =
  (match ls_8_1 with
    | `LH_C(h_1_0_1, t_1_1_4) -> 
      (`LH_C((f_7_0 h_1_0_1), ((map_d3 f_7_0) t_1_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d0 f_1_5 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_2, t_2_7) -> 
      (`LH_C((f_1_5 h_2_2), ((map_d3_d0 f_1_5) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d1 f_2_6 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_3_9, t_4_5) -> 
      (`LH_C((f_2_6 h_3_9), ((map_d3_d1 f_2_6) t_4_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d2 f_2_4 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_7, t_4_3) -> 
      (`LH_C((f_2_4 h_3_7), ((map_d3_d2 f_2_4) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d3 f_4_5 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_6_2, t_7_1) -> 
      (`LH_C((f_4_5 h_6_2), ((map_d3_d3 f_4_5) t_7_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d4 f_3_7 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_5_2, t_6_0) -> 
      (`LH_C((f_3_7 h_5_2), ((map_d3_d4 f_3_7) t_6_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d5 f_3_8 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_5_3, t_6_1) -> 
      (`LH_C((f_3_8 h_5_3), ((map_d3_d5 f_3_8) t_6_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d6 f_4_2 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_5_7, t_6_6) -> 
      (`LH_C((f_4_2 h_5_7), ((map_d3_d6 f_4_2) t_6_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d7 f_1_9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_2_6, t_3_2) -> 
      (`LH_C((f_1_9 h_2_6), ((map_d3_d7 f_1_9) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d8 f_6_5 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_9_1, t_1_0_2) -> 
      (`LH_C((f_6_5 h_9_1), ((map_d3_d8 f_6_5) t_1_0_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d9 f_4_4 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_6_1, t_7_0) -> 
      (`LH_C((f_4_4 h_6_1), ((map_d3_d9 f_4_4) t_7_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4 f_8_4 ls_9_4 =
  (match ls_9_4 with
    | `LH_C(h_1_1_4, t_1_2_9) -> 
      (`LH_C((f_8_4 h_1_1_4), ((map_d4 f_8_4) t_1_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d0 f_5_1 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_6_9, t_7_9) -> 
      (`LH_C((f_5_1 h_6_9), ((map_d4_d0 f_5_1) t_7_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d1 f_8_3 ls_9_3 =
  (match ls_9_3 with
    | `LH_C(h_1_1_3, t_1_2_8) -> 
      (`LH_C((f_8_3 h_1_1_3), ((map_d4_d1 f_8_3) t_1_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d2 f_2_7 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_4_0, t_4_6) -> 
      (`LH_C((f_2_7 h_4_0), ((map_d4_d2 f_2_7) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d3 f_7_8 ls_8_9 =
  (match ls_8_9 with
    | `LH_C(h_1_0_9, t_1_2_3) -> 
      (`LH_C((f_7_8 h_1_0_9), ((map_d4_d3 f_7_8) t_1_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d4 f_6_4 ls_7_3 =
  (match ls_7_3 with
    | `LH_C(h_9_0, t_1_0_1) -> 
      (`LH_C((f_6_4 h_9_0), ((map_d4_d4 f_6_4) t_1_0_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d5 f_4_7 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_6_4, t_7_3) -> 
      (`LH_C((f_4_7 h_6_4), ((map_d4_d5 f_4_7) t_7_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d6 f_2_1 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_9, t_3_5) -> 
      (`LH_C((f_2_1 h_2_9), ((map_d4_d6 f_2_1) t_3_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d7 f_1_7 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_4, t_2_9) -> 
      (`LH_C((f_1_7 h_2_4), ((map_d4_d7 f_1_7) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d5 f_3_1 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_4_3, t_5_0) -> 
      (`LH_C((f_3_1 h_4_3), ((map_d5 f_3_1) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d6 f_4_8 ls_5_6 =
  (match ls_5_6 with
    | `LH_C(h_6_6, t_7_6) -> 
      (`LH_C((f_4_8 h_6_6), ((map_d6 f_4_8) t_7_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d7 f_6_1 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_8_3, t_9_4) -> 
      (`LH_C((f_6_1 h_8_3), ((map_d7 f_6_1) t_9_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d8 f_4_9 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_6_7, t_7_7) -> 
      (`LH_C((f_4_9 h_6_7), ((map_d8 f_4_9) t_7_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d9 f_4_1 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_5_6, t_6_5) -> 
      (`LH_C((f_4_1 h_5_6), ((map_d9 f_4_1) t_6_5)))
    | `LH_N -> 
      (`LH_N));;
let rec maybeX_d0 _lh_maybeX_arg1_1 _lh_maybeX_arg2_1 =
  (if _lh_maybeX_arg1_1 then
    (`Just(_lh_maybeX_arg2_1))
  else
    (`Nothing));;
let rec maybeX_d1 _lh_maybeX_arg1_6 _lh_maybeX_arg2_6 =
  (if _lh_maybeX_arg1_6 then
    (`Just(_lh_maybeX_arg2_6))
  else
    (`Nothing));;
let rec maybeX_d1_d0 _lh_maybeX_arg1_3 _lh_maybeX_arg2_3 =
  (if _lh_maybeX_arg1_3 then
    (`Just(_lh_maybeX_arg2_3))
  else
    (`Nothing));;
let rec maybeX_d1_d1 _lh_maybeX_arg1_8 _lh_maybeX_arg2_8 =
  (if _lh_maybeX_arg1_8 then
    (`Just(_lh_maybeX_arg2_8))
  else
    (`Nothing));;
let rec maybeX_d1_d2 _lh_maybeX_arg1_1_3 _lh_maybeX_arg2_1_3 =
  (if _lh_maybeX_arg1_1_3 then
    (`Just(_lh_maybeX_arg2_1_3))
  else
    (`Nothing));;
let rec maybeX_d1_d3 _lh_maybeX_arg1_1_0 _lh_maybeX_arg2_1_0 =
  (if _lh_maybeX_arg1_1_0 then
    (`Just(_lh_maybeX_arg2_1_0))
  else
    (`Nothing));;
let rec maybeX_d2 _lh_maybeX_arg1_7 _lh_maybeX_arg2_7 =
  (if _lh_maybeX_arg1_7 then
    (`Just(_lh_maybeX_arg2_7))
  else
    (`Nothing));;
let rec maybeX_d3 _lh_maybeX_arg1_1_1 _lh_maybeX_arg2_1_1 =
  (if _lh_maybeX_arg1_1_1 then
    (`Just(_lh_maybeX_arg2_1_1))
  else
    (`Nothing));;
let rec maybeX_d4 _lh_maybeX_arg1_4 _lh_maybeX_arg2_4 =
  (if _lh_maybeX_arg1_4 then
    (`Just(_lh_maybeX_arg2_4))
  else
    (`Nothing));;
let rec maybeX_d5 _lh_maybeX_arg1_1_2 _lh_maybeX_arg2_1_2 =
  (if _lh_maybeX_arg1_1_2 then
    (`Just(_lh_maybeX_arg2_1_2))
  else
    (`Nothing));;
let rec maybeX_d6 _lh_maybeX_arg1_1_4 _lh_maybeX_arg2_1_4 =
  (if _lh_maybeX_arg1_1_4 then
    (`Just(_lh_maybeX_arg2_1_4))
  else
    (`Nothing));;
let rec maybeX_d7 _lh_maybeX_arg1_5 _lh_maybeX_arg2_5 =
  (if _lh_maybeX_arg1_5 then
    (`Just(_lh_maybeX_arg2_5))
  else
    (`Nothing));;
let rec maybeX_d8 _lh_maybeX_arg1_2 _lh_maybeX_arg2_2 =
  (if _lh_maybeX_arg1_2 then
    (`Just(_lh_maybeX_arg2_2))
  else
    (`Nothing));;
let rec maybeX_d9 _lh_maybeX_arg1_9 _lh_maybeX_arg2_9 =
  (if _lh_maybeX_arg1_9 then
    (`Just(_lh_maybeX_arg2_9))
  else
    (`Nothing));;
let rec modify_d0 _lh_modify_arg1_1 _lh_modify_arg2_1 _lh_modify_arg3_1 =
  (match _lh_modify_arg1_1 with
    | `LH_C(_lh_modify_LH_C_0_1, _lh_modify_LH_C_1_1) -> 
      (match _lh_modify_arg2_1 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_1 _lh_modify_LH_C_0_1), _lh_modify_LH_C_1_1))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_1, (((modify_d0 _lh_modify_LH_C_1_1) (_lh_modify_arg2_1 - 1)) _lh_modify_arg3_1))))
    | _ -> 
      (failwith "error"));;
let rec modify_d1 _lh_modify_arg1_3 _lh_modify_arg2_3 _lh_modify_arg3_3 =
  (match _lh_modify_arg1_3 with
    | `LH_C(_lh_modify_LH_C_0_3, _lh_modify_LH_C_1_3) -> 
      (match _lh_modify_arg2_3 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_3 _lh_modify_LH_C_0_3), _lh_modify_LH_C_1_3))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_3, (((modify_d1 _lh_modify_LH_C_1_3) (_lh_modify_arg2_3 - 1)) _lh_modify_arg3_3))))
    | _ -> 
      (failwith "error"));;
let rec modify_d2 _lh_modify_arg1_2 _lh_modify_arg2_2 _lh_modify_arg3_2 =
  (match _lh_modify_arg1_2 with
    | `LH_C(_lh_modify_LH_C_0_2, _lh_modify_LH_C_1_2) -> 
      (match _lh_modify_arg2_2 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_2 _lh_modify_LH_C_0_2), _lh_modify_LH_C_1_2))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_2, (((modify_d2 _lh_modify_LH_C_1_2) (_lh_modify_arg2_2 - 1)) _lh_modify_arg3_2))))
    | _ -> 
      (failwith "error"));;
let rec orElse_d0 _lh_orElse_arg1_1_4 _lh_orElse_arg2_1_4 =
  (match _lh_orElse_arg1_1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_1_4
    | _ -> 
      _lh_orElse_arg1_1_4);;
let rec orElse_d1 _lh_orElse_arg1_8 _lh_orElse_arg2_8 =
  (match _lh_orElse_arg1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_8
    | _ -> 
      _lh_orElse_arg1_8);;
let rec orElse_d1_d0 _lh_orElse_arg1_5 _lh_orElse_arg2_5 =
  (match _lh_orElse_arg1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_5
    | _ -> 
      _lh_orElse_arg1_5);;
let rec orElse_d1_d1 _lh_orElse_arg1_2 _lh_orElse_arg2_2 =
  (match _lh_orElse_arg1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_2
    | _ -> 
      _lh_orElse_arg1_2);;
let rec orElse_d1_d2 _lh_orElse_arg1_6 _lh_orElse_arg2_6 =
  (match _lh_orElse_arg1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_6
    | _ -> 
      _lh_orElse_arg1_6);;
let rec orElse_d1_d3 _lh_orElse_arg1_2_0 _lh_orElse_arg2_2_0 =
  (match _lh_orElse_arg1_2_0 with
    | `Nothing -> 
      _lh_orElse_arg2_2_0
    | _ -> 
      _lh_orElse_arg1_2_0);;
let rec orElse_d1_d4 _lh_orElse_arg1_1_2 _lh_orElse_arg2_1_2 =
  (match _lh_orElse_arg1_1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_1_2
    | _ -> 
      _lh_orElse_arg1_1_2);;
let rec orElse_d1_d5 _lh_orElse_arg1_3 _lh_orElse_arg2_3 =
  (match _lh_orElse_arg1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_3
    | _ -> 
      _lh_orElse_arg1_3);;
let rec orElse_d1_d6 _lh_orElse_arg1_1_0 _lh_orElse_arg2_1_0 =
  (match _lh_orElse_arg1_1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_1_0
    | _ -> 
      _lh_orElse_arg1_1_0);;
let rec orElse_d1_d7 _lh_orElse_arg1_7 _lh_orElse_arg2_7 =
  (match _lh_orElse_arg1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_7
    | _ -> 
      _lh_orElse_arg1_7);;
let rec orElse_d1_d8 _lh_orElse_arg1_1_8 _lh_orElse_arg2_1_8 =
  (match _lh_orElse_arg1_1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_1_8
    | _ -> 
      _lh_orElse_arg1_1_8);;
let rec orElse_d1_d9 _lh_orElse_arg1_9 _lh_orElse_arg2_9 =
  (match _lh_orElse_arg1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_9
    | _ -> 
      _lh_orElse_arg1_9);;
let rec orElse_d2 _lh_orElse_arg1_1_3 _lh_orElse_arg2_1_3 =
  (match _lh_orElse_arg1_1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_1_3
    | _ -> 
      _lh_orElse_arg1_1_3);;
let rec orElse_d3 _lh_orElse_arg1_1 _lh_orElse_arg2_1 =
  (match _lh_orElse_arg1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1
    | _ -> 
      _lh_orElse_arg1_1);;
let rec orElse_d4 _lh_orElse_arg1_1_9 _lh_orElse_arg2_1_9 =
  (match _lh_orElse_arg1_1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_1_9
    | _ -> 
      _lh_orElse_arg1_1_9);;
let rec orElse_d5 _lh_orElse_arg1_1_7 _lh_orElse_arg2_1_7 =
  (match _lh_orElse_arg1_1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_1_7
    | _ -> 
      _lh_orElse_arg1_1_7);;
let rec orElse_d6 _lh_orElse_arg1_4 _lh_orElse_arg2_4 =
  (match _lh_orElse_arg1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_4
    | _ -> 
      _lh_orElse_arg1_4);;
let rec orElse_d7 _lh_orElse_arg1_1_5 _lh_orElse_arg2_1_5 =
  (match _lh_orElse_arg1_1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_1_5
    | _ -> 
      _lh_orElse_arg1_1_5);;
let rec orElse_d8 _lh_orElse_arg1_1_1 _lh_orElse_arg2_1_1 =
  (match _lh_orElse_arg1_1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1_1
    | _ -> 
      _lh_orElse_arg1_1_1);;
let rec orElse_d9 _lh_orElse_arg1_1_6 _lh_orElse_arg2_1_6 =
  (match _lh_orElse_arg1_1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_1_6
    | _ -> 
      _lh_orElse_arg1_1_6);;
let rec or_d0 _lh_or_arg1_2 =
  (match _lh_or_arg1_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_2, _lh_or_LH_C_1_2) -> 
      (if _lh_or_LH_C_0_2 then
        true
      else
        (or_d0 _lh_or_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec or_d1 _lh_or_arg1_3 =
  (match _lh_or_arg1_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_3, _lh_or_LH_C_1_3) -> 
      (if _lh_or_LH_C_0_3 then
        true
      else
        (or_d1 _lh_or_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec or_d2 _lh_or_arg1_4 =
  (match _lh_or_arg1_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_4, _lh_or_LH_C_1_4) -> 
      (if _lh_or_LH_C_0_4 then
        true
      else
        (or_d2 _lh_or_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec or_d3 _lh_or_arg1_1 =
  (match _lh_or_arg1_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_or_LH_C_0_1, _lh_or_LH_C_1_1) -> 
      (if _lh_or_LH_C_0_1 then
        true
      else
        (or_d3 _lh_or_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec pair_d0 _lh_pair_arg1_2 _lh_pair_arg2_2 =
  (`LH_P2(_lh_pair_arg1_2, _lh_pair_arg2_2));;
let rec pair_d1 _lh_pair_arg1_1 _lh_pair_arg2_1 =
  (`LH_P2(_lh_pair_arg1_1, _lh_pair_arg2_1));;
let rec prop2_d0 _lh_prop2_arg1_3 _lh_prop2_arg2_3 _lh_prop2_arg3_3 =
  (match _lh_prop2_arg2_3 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_3) -> 
      ((_lh_prop2_arg1_3 _lh_prop2_Just_0_3) _lh_prop2_arg3_3)
    | _ -> 
      (failwith "error"));;
let rec prop2_d1 _lh_prop2_arg1_1 _lh_prop2_arg2_1 _lh_prop2_arg3_1 =
  (match _lh_prop2_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_1) -> 
      ((_lh_prop2_arg1_1 _lh_prop2_Just_0_1) _lh_prop2_arg3_1)
    | _ -> 
      (failwith "error"));;
let rec prop2_d2 _lh_prop2_arg1_2 _lh_prop2_arg2_2 _lh_prop2_arg3_2 =
  (match _lh_prop2_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_2) -> 
      ((_lh_prop2_arg1_2 _lh_prop2_Just_0_2) _lh_prop2_arg3_2)
    | _ -> 
      (failwith "error"));;
let rec quant_d0 _lh_quant_arg1_1 _lh_quant_arg2_1 _lh_quant_arg3_1 _lh_quant_arg4_1 =
  (let rec p_1 = (fun x_1_9 -> 
    ((_lh_quant_arg2_1 x_1_9) _lh_quant_arg3_1)) in
    ((_lh_quant_arg1_1 p_1) _lh_quant_arg4_1));;
let rec quant_d1 _lh_quant_arg1_1_0 _lh_quant_arg2_1_0 _lh_quant_arg3_1_0 _lh_quant_arg4_1_0 =
  (let rec p_1_0 = (fun x_5_4 -> 
    ((_lh_quant_arg2_1_0 x_5_4) _lh_quant_arg3_1_0)) in
    ((_lh_quant_arg1_1_0 p_1_0) _lh_quant_arg4_1_0));;
let rec quant_d2 _lh_quant_arg1_2 _lh_quant_arg2_2 _lh_quant_arg3_2 _lh_quant_arg4_2 =
  (let rec p_2 = (fun x_2_1 -> 
    ((_lh_quant_arg2_2 x_2_1) _lh_quant_arg3_2)) in
    ((_lh_quant_arg1_2 p_2) _lh_quant_arg4_2));;
let rec quant_d3 _lh_quant_arg1_8 _lh_quant_arg2_8 _lh_quant_arg3_8 _lh_quant_arg4_8 =
  (let rec p_8 = (fun x_5_1 -> 
    ((_lh_quant_arg2_8 x_5_1) _lh_quant_arg3_8)) in
    ((_lh_quant_arg1_8 p_8) _lh_quant_arg4_8));;
let rec quant_d4 _lh_quant_arg1_3 _lh_quant_arg2_3 _lh_quant_arg3_3 _lh_quant_arg4_3 =
  (let rec p_3 = (fun x_2_8 -> 
    ((_lh_quant_arg2_3 x_2_8) _lh_quant_arg3_3)) in
    ((_lh_quant_arg1_3 p_3) _lh_quant_arg4_3));;
let rec quant_d5 _lh_quant_arg1_4 _lh_quant_arg2_4 _lh_quant_arg3_4 _lh_quant_arg4_4 =
  (let rec p_4 = (fun x_4_2 -> 
    ((_lh_quant_arg2_4 x_4_2) _lh_quant_arg3_4)) in
    ((_lh_quant_arg1_4 p_4) _lh_quant_arg4_4));;
let rec quant_d6 _lh_quant_arg1_6 _lh_quant_arg2_6 _lh_quant_arg3_6 _lh_quant_arg4_6 =
  (let rec p_6 = (fun x_4_5 -> 
    ((_lh_quant_arg2_6 x_4_5) _lh_quant_arg3_6)) in
    ((_lh_quant_arg1_6 p_6) _lh_quant_arg4_6));;
let rec quant_d7 _lh_quant_arg1_7 _lh_quant_arg2_7 _lh_quant_arg3_7 _lh_quant_arg4_7 =
  (let rec p_7 = (fun x_4_6 -> 
    ((_lh_quant_arg2_7 x_4_6) _lh_quant_arg3_7)) in
    ((_lh_quant_arg1_7 p_7) _lh_quant_arg4_7));;
let rec quant_d8 _lh_quant_arg1_9 _lh_quant_arg2_9 _lh_quant_arg3_9 _lh_quant_arg4_9 =
  (let rec p_9 = (fun x_5_2 -> 
    ((_lh_quant_arg2_9 x_5_2) _lh_quant_arg3_9)) in
    ((_lh_quant_arg1_9 p_9) _lh_quant_arg4_9));;
let rec quant_d9 _lh_quant_arg1_5 _lh_quant_arg2_5 _lh_quant_arg3_5 _lh_quant_arg4_5 =
  (let rec p_5 = (fun x_4_4 -> 
    ((_lh_quant_arg2_5 x_4_4) _lh_quant_arg3_5)) in
    ((_lh_quant_arg1_5 p_5) _lh_quant_arg4_5));;
let rec snd_d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd_d1 _lh_snd_arg1_3 =
  (match _lh_snd_arg1_3 with
    | `LH_P2(_lh_snd_LH_P2_0_3, _lh_snd_LH_P2_1_3) -> 
      _lh_snd_LH_P2_1_3
    | _ -> 
      (failwith "error"));;
let rec snd_d2 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec squash_d0 _lh_squash_arg1_1 =
  (match _lh_squash_arg1_1 with
    | `Just(_lh_squash_Just_0_1) -> 
      _lh_squash_Just_0_1
    | `Nothing -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec squash_d1 _lh_squash_arg1_2 =
  (match _lh_squash_arg1_2 with
    | `Just(_lh_squash_Just_0_2) -> 
      _lh_squash_Just_0_2
    | `Nothing -> 
      (`Nothing)
    | _ -> 
      (failwith "error"));;
let rec succeed_d0 _lh_succeed_arg1_4 =
  (`Just(_lh_succeed_arg1_4));;
let rec succeed_d1 _lh_succeed_arg1_1 =
  (`Just(_lh_succeed_arg1_1));;
let rec succeed_d1_d0 _lh_succeed_arg1_5 =
  (`Just(_lh_succeed_arg1_5));;
let rec succeed_d1_d1 _lh_succeed_arg1_7 =
  (`Just(_lh_succeed_arg1_7));;
let rec succeed_d2 _lh_succeed_arg1_2 =
  (`Just(_lh_succeed_arg1_2));;
let rec succeed_d3 _lh_succeed_arg1_8 =
  (`Just(_lh_succeed_arg1_8));;
let rec succeed_d4 _lh_succeed_arg1_3 =
  (`Just(_lh_succeed_arg1_3));;
let rec succeed_d5 _lh_succeed_arg1_9 =
  (`Just(_lh_succeed_arg1_9));;
let rec succeed_d6 _lh_succeed_arg1_1_1 =
  (`Just(_lh_succeed_arg1_1_1));;
let rec succeed_d7 _lh_succeed_arg1_1_2 =
  (`Just(_lh_succeed_arg1_1_2));;
let rec succeed_d8 _lh_succeed_arg1_6 =
  (`Just(_lh_succeed_arg1_6));;
let rec succeed_d9 _lh_succeed_arg1_1_0 =
  (`Just(_lh_succeed_arg1_1_0));;
let rec sum_d0 ls_8_8 =
  (match ls_8_8 with
    | `LH_C(h_1_0_8, t_1_2_2) -> 
      (h_1_0_8 + (sum_d0 t_1_2_2))
    | `LH_N -> 
      0);;
let rec tail_d0 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_6_5, t_7_4) -> 
      t_7_4
    | `LH_N -> 
      (failwith "error"));;
let rec takeWhile_d0 _lh_takeWhile_arg1_1 _lh_takeWhile_arg2_1 =
  (match _lh_takeWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_1, _lh_takeWhile_LH_C_1_1) -> 
      (if (_lh_takeWhile_arg1_1 _lh_takeWhile_LH_C_0_1) then
        (`LH_C(_lh_takeWhile_LH_C_0_1, ((takeWhile_d0 _lh_takeWhile_arg1_1) _lh_takeWhile_LH_C_1_1)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec the_d0 _lh_the_arg1_3 =
  (match _lh_the_arg1_3 with
    | `Just(_lh_the_Just_0_3) -> 
      _lh_the_Just_0_3
    | _ -> 
      (failwith "error"));;
let rec the_d1 _lh_the_arg1_1 =
  (match _lh_the_arg1_1 with
    | `Just(_lh_the_Just_0_1) -> 
      _lh_the_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec the_d2 _lh_the_arg1_4 =
  (match _lh_the_arg1_4 with
    | `Just(_lh_the_Just_0_4) -> 
      _lh_the_Just_0_4
    | _ -> 
      (failwith "error"));;
let rec the_d3 _lh_the_arg1_5 =
  (match _lh_the_arg1_5 with
    | `Just(_lh_the_Just_0_5) -> 
      _lh_the_Just_0_5
    | _ -> 
      (failwith "error"));;
let rec the_d4 _lh_the_arg1_6 =
  (match _lh_the_arg1_6 with
    | `Just(_lh_the_Just_0_6) -> 
      _lh_the_Just_0_6
    | _ -> 
      (failwith "error"));;
let rec the_d5 _lh_the_arg1_2 =
  (match _lh_the_arg1_2 with
    | `Just(_lh_the_Just_0_2) -> 
      _lh_the_Just_0_2
    | _ -> 
      (failwith "error"));;
let rec update_alist_d0 _lh_update_alist_arg1_1 _lh_update_alist_arg2_1 _lh_update_alist_arg3_1 =
  (let rec upd_1 = (fun ls_7_7 -> 
    (let rec _lh_matchIdent_3_7 = ls_7_7 in
      (match _lh_matchIdent_3_7 with
        | `LH_N -> 
          (`LH_C((`LH_P2(_lh_update_alist_arg1_1, (_lh_update_alist_arg2_1 _lh_update_alist_arg3_1))), (`LH_N)))
        | `LH_C(_lh_update_alist_LH_C_0_1, _lh_update_alist_LH_C_1_1) -> 
          (match _lh_update_alist_LH_C_0_1 with
            | `LH_P2(_lh_update_alist_LH_P2_0_1, _lh_update_alist_LH_P2_1_1) -> 
              (if (_lh_update_alist_arg1_1 = _lh_update_alist_LH_P2_0_1) then
                (`LH_C((`LH_P2(_lh_update_alist_arg1_1, (_lh_update_alist_arg2_1 _lh_update_alist_LH_P2_1_1))), _lh_update_alist_LH_C_1_1))
              else
                (`LH_C((`LH_P2(_lh_update_alist_LH_P2_0_1, _lh_update_alist_LH_P2_1_1)), (upd_1 _lh_update_alist_LH_C_1_1))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    upd_1);;
let rec zip_lz_nl_d0 xs_2_8 ys_2_4 =
  (match ys_2_4 with
    | `LH_C(hy_1_1, ty_1_1) -> 
      (match (Lazy.force xs_2_8) with
        | `LH_C(hx_1_1, tx_1_1) -> 
          (`LH_C((`LH_P2(hx_1_1, hy_1_1)), ((zip_lz_nl_d0 tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl_d1 xs_3_9 ys_3_5 =
  (match ys_3_5 with
    | `LH_C(hy_1_4, ty_1_4) -> 
      (match (Lazy.force xs_3_9) with
        | `LH_C(hx_1_4, tx_1_4) -> 
          (`LH_C((`LH_P2(hx_1_4, hy_1_4)), ((zip_lz_nl_d1 tx_1_4) ty_1_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl_d2 xs_3_1 ys_2_7 =
  (match ys_2_7 with
    | `LH_C(hy_1_2, ty_1_2) -> 
      (match (Lazy.force xs_3_1) with
        | `LH_C(hx_1_2, tx_1_2) -> 
          (`LH_C((`LH_P2(hx_1_2, hy_1_2)), ((zip_lz_nl_d2 tx_1_2) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_lz_nl_d3 xs_4_0 ys_3_6 =
  (match ys_3_6 with
    | `LH_C(hy_1_5, ty_1_5) -> 
      (match (Lazy.force xs_4_0) with
        | `LH_C(hx_1_5, tx_1_5) -> 
          (`LH_C((`LH_P2(hx_1_5, hy_1_5)), ((zip_lz_nl_d3 tx_1_5) ty_1_5)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_d0 xs_1_9 ys_1_7 =
  (match xs_1_9 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_1_7 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C((`LH_P2(hx_1_0, hy_1_0)), ((zip_d0 tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_d1 xs_3_5 ys_3_1 =
  (match xs_3_5 with
    | `LH_C(hx_1_3, tx_1_3) -> 
      (match ys_3_1 with
        | `LH_C(hy_1_3, ty_1_3) -> 
          (`LH_C((`LH_P2(hx_1_3, hy_1_3)), ((zip_d1 tx_1_3) ty_1_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_d2 xs_1_1 ys_9 =
  (match xs_1_1 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_9 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip_d2 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_d3 xs_1_2 ys_1_0 =
  (match xs_1_2 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_1_0 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C((`LH_P2(hx_9, hy_9)), ((zip_d3 tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec apply_d0 _lh_apply_arg1_1 _lh_apply_arg2_1 =
  ((getOrElse_d2 ((assoc_d2 _lh_apply_arg1_1) _lh_apply_arg2_1)) (`Var(_lh_apply_arg2_1)))
and apply_d1 _lh_apply_arg1_7 _lh_apply_arg2_7 =
  ((getOrElse_d3 ((assoc_d4 _lh_apply_arg1_7) _lh_apply_arg2_7)) (`Var(_lh_apply_arg2_7)))
and apply_d2 _lh_apply_arg1_6 _lh_apply_arg2_6 =
  ((getOrElse_d1_d1 ((assoc_d5 _lh_apply_arg1_6) _lh_apply_arg2_6)) (`Var(_lh_apply_arg2_6)))
and apply_d3 _lh_apply_arg1_2 _lh_apply_arg2_2 =
  ((getOrElse_d1_d2 ((assoc_d6 _lh_apply_arg1_2) _lh_apply_arg2_2)) (`Var(_lh_apply_arg2_2)))
and apply_d4 _lh_apply_arg1_5 _lh_apply_arg2_5 =
  ((getOrElse_d1_d3 ((assoc_d8 _lh_apply_arg1_5) _lh_apply_arg2_5)) (`Var(_lh_apply_arg2_5)))
and apply_d5 _lh_apply_arg1_3 _lh_apply_arg2_3 =
  ((getOrElse_d1_d4 ((assoc_d9 _lh_apply_arg1_3) _lh_apply_arg2_3)) (`Var(_lh_apply_arg2_3)))
and apply_d6 _lh_apply_arg1_8 _lh_apply_arg2_8 =
  ((getOrElse_d1_d5 ((assoc_d1_d1 _lh_apply_arg1_8) _lh_apply_arg2_8)) (`Var(_lh_apply_arg2_8)))
and apply_d7 _lh_apply_arg1_4 _lh_apply_arg2_4 =
  ((getOrElse_d1_d6 ((assoc_d1_d2 _lh_apply_arg1_4) _lh_apply_arg2_4)) (`Var(_lh_apply_arg2_4)))
and assoc_d0 _lh_assoc_arg1_7 _lh_assoc_arg2_7 =
  (let rec match_x_7 = (fun uv_7 -> 
    (let rec _lh_matchIdent_2_0 = uv_7 in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
          ((maybeX_d0 (_lh_assoc_arg2_7 = _lh_assoc_LH_P2_0_7)) _lh_assoc_LH_P2_1_7)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d0 ((map_d0 match_x_7) _lh_assoc_arg1_7)))
and assoc_d1 _lh_assoc_arg1_1_1 _lh_assoc_arg2_1_1 =
  (let rec match_x_1_1 = (fun uv_1_1 -> 
    (let rec _lh_matchIdent_3_6 = uv_1_1 in
      (match _lh_matchIdent_3_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
          ((maybeX_d2 (_lh_assoc_arg2_1_1 = _lh_assoc_LH_P2_0_1_1)) _lh_assoc_LH_P2_1_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d3 ((map_d1_d8 match_x_1_1) _lh_assoc_arg1_1_1)))
and assoc_d1_d0 _lh_assoc_arg1_1_3 _lh_assoc_arg2_1_3 =
  (let rec match_x_1_3 = (fun uv_1_3 -> 
    (let rec _lh_matchIdent_3_9 = uv_1_3 in
      (match _lh_matchIdent_3_9 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_3, _lh_assoc_LH_P2_1_1_3) -> 
          ((maybeX_d1_d1 (_lh_assoc_arg2_1_3 = _lh_assoc_LH_P2_0_1_3)) _lh_assoc_LH_P2_1_1_3)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d2 ((map_d4_d2 match_x_1_3) _lh_assoc_arg1_1_3)))
and assoc_d1_d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (let rec match_x_1 = (fun uv_1 -> 
    (let rec _lh_matchIdent_1_4 = uv_1 in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          ((maybeX_d1_d2 (_lh_assoc_arg2_1 = _lh_assoc_LH_P2_0_1)) _lh_assoc_LH_P2_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d3 ((map_d4_d3 match_x_1) _lh_assoc_arg1_1)))
and assoc_d1_d2 _lh_assoc_arg1_1_0 _lh_assoc_arg2_1_0 =
  (let rec match_x_1_0 = (fun uv_1_0 -> 
    (let rec _lh_matchIdent_3_5 = uv_1_0 in
      (match _lh_matchIdent_3_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
          ((maybeX_d1_d3 (_lh_assoc_arg2_1_0 = _lh_assoc_LH_P2_0_1_0)) _lh_assoc_LH_P2_1_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d4 ((map_d4_d6 match_x_1_0) _lh_assoc_arg1_1_0)))
and assoc_d2 _lh_assoc_arg1_4 _lh_assoc_arg2_4 =
  (let rec match_x_4 = (fun uv_4 -> 
    (let rec _lh_matchIdent_1_7 = uv_4 in
      (match _lh_matchIdent_1_7 with
        | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
          ((maybeX_d3 (_lh_assoc_arg2_4 = _lh_assoc_LH_P2_0_4)) _lh_assoc_LH_P2_1_4)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d4 ((map_d1_d9 match_x_4) _lh_assoc_arg1_4)))
and assoc_d3 _lh_assoc_arg1_9 _lh_assoc_arg2_9 =
  (let rec match_x_9 = (fun uv_9 -> 
    (let rec _lh_matchIdent_3_4 = uv_9 in
      (match _lh_matchIdent_3_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
          ((maybeX_d4 (_lh_assoc_arg2_9 = _lh_assoc_LH_P2_0_9)) _lh_assoc_LH_P2_1_9)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d5 ((map_d2_d1 match_x_9) _lh_assoc_arg1_9)))
and assoc_d4 _lh_assoc_arg1_8 _lh_assoc_arg2_8 =
  (let rec match_x_8 = (fun uv_8 -> 
    (let rec _lh_matchIdent_3_3 = uv_8 in
      (match _lh_matchIdent_3_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
          ((maybeX_d5 (_lh_assoc_arg2_8 = _lh_assoc_LH_P2_0_8)) _lh_assoc_LH_P2_1_8)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d6 ((map_d2_d2 match_x_8) _lh_assoc_arg1_8)))
and assoc_d5 _lh_assoc_arg1_1_2 _lh_assoc_arg2_1_2 =
  (let rec match_x_1_2 = (fun uv_1_2 -> 
    (let rec _lh_matchIdent_3_8 = uv_1_2 in
      (match _lh_matchIdent_3_8 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_2, _lh_assoc_LH_P2_1_1_2) -> 
          ((maybeX_d6 (_lh_assoc_arg2_1_2 = _lh_assoc_LH_P2_0_1_2)) _lh_assoc_LH_P2_1_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d7 ((map_d3_d2 match_x_1_2) _lh_assoc_arg1_1_2)))
and assoc_d6 _lh_assoc_arg1_6 _lh_assoc_arg2_6 =
  (let rec match_x_6 = (fun uv_6 -> 
    (let rec _lh_matchIdent_1_9 = uv_6 in
      (match _lh_matchIdent_1_9 with
        | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
          ((maybeX_d7 (_lh_assoc_arg2_6 = _lh_assoc_LH_P2_0_6)) _lh_assoc_LH_P2_1_6)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d8 ((map_d3_d4 match_x_6) _lh_assoc_arg1_6)))
and assoc_d7 _lh_assoc_arg1_5 _lh_assoc_arg2_5 =
  (let rec match_x_5 = (fun uv_5 -> 
    (let rec _lh_matchIdent_1_8 = uv_5 in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
          ((maybeX_d8 (_lh_assoc_arg2_5 = _lh_assoc_LH_P2_0_5)) _lh_assoc_LH_P2_1_5)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d9 ((map_d3_d6 match_x_5) _lh_assoc_arg1_5)))
and assoc_d8 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (let rec match_x_2 = (fun uv_2 -> 
    (let rec _lh_matchIdent_1_5 = uv_2 in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          ((maybeX_d9 (_lh_assoc_arg2_2 = _lh_assoc_LH_P2_0_2)) _lh_assoc_LH_P2_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d0 ((map_d3_d7 match_x_2) _lh_assoc_arg1_2)))
and assoc_d9 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (let rec match_x_3 = (fun uv_3 -> 
    (let rec _lh_matchIdent_1_6 = uv_3 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          ((maybeX_d1_d0 (_lh_assoc_arg2_3 = _lh_assoc_LH_P2_0_3)) _lh_assoc_LH_P2_1_3)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d1 ((map_d4_d0 match_x_3) _lh_assoc_arg1_3)))
and comp_sub_d0 _lh_comp_sub_arg1_1 _lh_comp_sub_arg2_1 =
  ((mappend_d1_d9 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
    (match _lh_listcomp_fun_para_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_1, _lh_comp_sub_LH_P2_1_1) -> 
            (`LH_C((`LH_P2(_lh_comp_sub_LH_P2_0_1, ((sub_d4 _lh_comp_sub_LH_P2_1_1) _lh_comp_sub_arg1_1))), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
          | _ -> 
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_9 _lh_comp_sub_arg2_1))) _lh_comp_sub_arg1_1)
and comp_sub_d1 _lh_comp_sub_arg1_2 _lh_comp_sub_arg2_2 =
  ((mappend_d2_d0 (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_2_1 -> 
    (match _lh_listcomp_fun_para_2_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
        (match _lh_listcomp_fun_ls_h_2_1 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_2, _lh_comp_sub_LH_P2_1_2) -> 
            (`LH_C((`LH_P2(_lh_comp_sub_LH_P2_0_2, ((sub_d6 _lh_comp_sub_LH_P2_1_2) _lh_comp_sub_arg1_2))), (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1)))
          | _ -> 
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_1 _lh_comp_sub_arg2_2))) _lh_comp_sub_arg1_2)
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_5_8, t_6_7) -> 
      ((mappend_d0 h_5_8) (concat_d0 t_6_7))
    | `LH_N -> 
      (`LH_N))
and concat_d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_7_5, t_8_5) -> 
      ((mappend_d1_d0 h_7_5) (concat_d1 t_8_5))
    | `LH_N -> 
      (`LH_N))
and concat_d2 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_0_0, t_1_1_2) -> 
      ((mappend_d1_d1 h_1_0_0) (concat_d2 t_1_1_2))
    | `LH_N -> 
      (`LH_N))
and cost_d0 _lh_cost_arg1_1 =
  (match _lh_cost_arg1_1 with
    | `LH_P2(_lh_cost_LH_P2_0_1, _lh_cost_LH_P2_1_1) -> 
      (let rec size_1 = (fun _lh_size_arg1_1 -> 
        (((expr_fold_d0 (fun x_2_7 a_6 -> 
          ((sum_d0 a_6) + 1))) (fun dum_5 -> 
          0)) _lh_size_arg1_1)) in
        ((size_1 _lh_cost_LH_P2_0_1) + (size_1 _lh_cost_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and delete_eqns_d0 _lh_delete_eqns_arg1_1 =
  (let rec ok_1 = (fun e_1 -> 
    (not ((inList_d0 (eqno_d0 e_1)) _lh_delete_eqns_arg1_1))) in
    (map_dnet_d0 (filter_d0 ok_1)))
and eqExpr_d0 _lh_eqExpr_arg1_2 _lh_eqExpr_arg2_2 =
  (match _lh_eqExpr_arg1_2 with
    | `Func(_lh_eqExpr_Func_0_4, _lh_eqExpr_Func_1_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Func(_lh_eqExpr_Func_0_5, _lh_eqExpr_Func_1_5) -> 
          ((_lh_eqExpr_Func_0_4 = _lh_eqExpr_Func_0_5) && ((eqListExpr_d0 _lh_eqExpr_Func_1_4) _lh_eqExpr_Func_1_5))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Var(_lh_eqExpr_Var_0_5) -> 
          (_lh_eqExpr_Var_0_4 = _lh_eqExpr_Var_0_5)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d1 _lh_eqExpr_arg1_1 _lh_eqExpr_arg2_1 =
  (match _lh_eqExpr_arg1_1 with
    | `Func(_lh_eqExpr_Func_0_2, _lh_eqExpr_Func_1_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Func(_lh_eqExpr_Func_0_3, _lh_eqExpr_Func_1_3) -> 
          ((_lh_eqExpr_Func_0_2 = _lh_eqExpr_Func_0_3) && ((eqListExpr_d1 _lh_eqExpr_Func_1_2) _lh_eqExpr_Func_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Var(_lh_eqExpr_Var_0_3) -> 
          (_lh_eqExpr_Var_0_2 = _lh_eqExpr_Var_0_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d2 _lh_eqExpr_arg1_5 _lh_eqExpr_arg2_5 =
  (match _lh_eqExpr_arg1_5 with
    | `Func(_lh_eqExpr_Func_0_1_0, _lh_eqExpr_Func_1_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Func(_lh_eqExpr_Func_0_1_1, _lh_eqExpr_Func_1_1_1) -> 
          ((_lh_eqExpr_Func_0_1_0 = _lh_eqExpr_Func_0_1_1) && ((eqListExpr_d2 _lh_eqExpr_Func_1_1_0) _lh_eqExpr_Func_1_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Var(_lh_eqExpr_Var_0_1_1) -> 
          (_lh_eqExpr_Var_0_1_0 = _lh_eqExpr_Var_0_1_1)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d3 _lh_eqExpr_arg1_4 _lh_eqExpr_arg2_4 =
  (match _lh_eqExpr_arg1_4 with
    | `Func(_lh_eqExpr_Func_0_8, _lh_eqExpr_Func_1_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Func(_lh_eqExpr_Func_0_9, _lh_eqExpr_Func_1_9) -> 
          ((_lh_eqExpr_Func_0_8 = _lh_eqExpr_Func_0_9) && ((eqListExpr_d3 _lh_eqExpr_Func_1_8) _lh_eqExpr_Func_1_9))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Var(_lh_eqExpr_Var_0_9) -> 
          (_lh_eqExpr_Var_0_8 = _lh_eqExpr_Var_0_9)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d4 _lh_eqExpr_arg1_3 _lh_eqExpr_arg2_3 =
  (match _lh_eqExpr_arg1_3 with
    | `Func(_lh_eqExpr_Func_0_6, _lh_eqExpr_Func_1_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Func(_lh_eqExpr_Func_0_7, _lh_eqExpr_Func_1_7) -> 
          ((_lh_eqExpr_Func_0_6 = _lh_eqExpr_Func_0_7) && ((eqListExpr_d4 _lh_eqExpr_Func_1_6) _lh_eqExpr_Func_1_7))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Var(_lh_eqExpr_Var_0_7) -> 
          (_lh_eqExpr_Var_0_6 = _lh_eqExpr_Var_0_7)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d5 _lh_eqExpr_arg1_6 _lh_eqExpr_arg2_6 =
  (match _lh_eqExpr_arg1_6 with
    | `Func(_lh_eqExpr_Func_0_1_2, _lh_eqExpr_Func_1_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Func(_lh_eqExpr_Func_0_1_3, _lh_eqExpr_Func_1_1_3) -> 
          ((_lh_eqExpr_Func_0_1_2 = _lh_eqExpr_Func_0_1_3) && ((eqListExpr_d5 _lh_eqExpr_Func_1_1_2) _lh_eqExpr_Func_1_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Var(_lh_eqExpr_Var_0_1_3) -> 
          (_lh_eqExpr_Var_0_1_2 = _lh_eqExpr_Var_0_1_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d6 _lh_eqExpr_arg1_7 _lh_eqExpr_arg2_7 =
  (match _lh_eqExpr_arg1_7 with
    | `Func(_lh_eqExpr_Func_0_1_4, _lh_eqExpr_Func_1_1_4) -> 
      (match _lh_eqExpr_arg2_7 with
        | `Func(_lh_eqExpr_Func_0_1_5, _lh_eqExpr_Func_1_1_5) -> 
          ((_lh_eqExpr_Func_0_1_4 = _lh_eqExpr_Func_0_1_5) && ((eqListExpr_d6 _lh_eqExpr_Func_1_1_4) _lh_eqExpr_Func_1_1_5))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_4) -> 
      (match _lh_eqExpr_arg2_7 with
        | `Var(_lh_eqExpr_Var_0_1_5) -> 
          (_lh_eqExpr_Var_0_1_4 = _lh_eqExpr_Var_0_1_5)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d0 _lh_eqListExpr_arg1_6 _lh_eqListExpr_arg2_6 =
  (match _lh_eqListExpr_arg1_6 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_2, _lh_eqListExpr_LH_C_1_1_2) -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_3, _lh_eqListExpr_LH_C_1_1_3) -> 
          (if ((eqExpr_d0 _lh_eqListExpr_LH_C_0_1_2) _lh_eqListExpr_LH_C_0_1_3) then
            ((eqListExpr_d0 _lh_eqListExpr_LH_C_1_1_2) _lh_eqListExpr_LH_C_1_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d1 _lh_eqListExpr_arg1_5 _lh_eqListExpr_arg2_5 =
  (match _lh_eqListExpr_arg1_5 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_0, _lh_eqListExpr_LH_C_1_1_0) -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_1, _lh_eqListExpr_LH_C_1_1_1) -> 
          (if ((eqExpr_d1 _lh_eqListExpr_LH_C_0_1_0) _lh_eqListExpr_LH_C_0_1_1) then
            ((eqListExpr_d1 _lh_eqListExpr_LH_C_1_1_0) _lh_eqListExpr_LH_C_1_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d2 _lh_eqListExpr_arg1_7 _lh_eqListExpr_arg2_7 =
  (match _lh_eqListExpr_arg1_7 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_7 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_4, _lh_eqListExpr_LH_C_1_1_4) -> 
      (match _lh_eqListExpr_arg2_7 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_5, _lh_eqListExpr_LH_C_1_1_5) -> 
          (if ((eqExpr_d2 _lh_eqListExpr_LH_C_0_1_4) _lh_eqListExpr_LH_C_0_1_5) then
            ((eqListExpr_d2 _lh_eqListExpr_LH_C_1_1_4) _lh_eqListExpr_LH_C_1_1_5)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d3 _lh_eqListExpr_arg1_3 _lh_eqListExpr_arg2_3 =
  (match _lh_eqListExpr_arg1_3 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_6, _lh_eqListExpr_LH_C_1_6) -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_C(_lh_eqListExpr_LH_C_0_7, _lh_eqListExpr_LH_C_1_7) -> 
          (if ((eqExpr_d3 _lh_eqListExpr_LH_C_0_6) _lh_eqListExpr_LH_C_0_7) then
            ((eqListExpr_d3 _lh_eqListExpr_LH_C_1_6) _lh_eqListExpr_LH_C_1_7)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d4 _lh_eqListExpr_arg1_4 _lh_eqListExpr_arg2_4 =
  (match _lh_eqListExpr_arg1_4 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_8, _lh_eqListExpr_LH_C_1_8) -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_C(_lh_eqListExpr_LH_C_0_9, _lh_eqListExpr_LH_C_1_9) -> 
          (if ((eqExpr_d4 _lh_eqListExpr_LH_C_0_8) _lh_eqListExpr_LH_C_0_9) then
            ((eqListExpr_d4 _lh_eqListExpr_LH_C_1_8) _lh_eqListExpr_LH_C_1_9)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d5 _lh_eqListExpr_arg1_1 _lh_eqListExpr_arg2_1 =
  (match _lh_eqListExpr_arg1_1 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_2, _lh_eqListExpr_LH_C_1_2) -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_C(_lh_eqListExpr_LH_C_0_3, _lh_eqListExpr_LH_C_1_3) -> 
          (if ((eqExpr_d5 _lh_eqListExpr_LH_C_0_2) _lh_eqListExpr_LH_C_0_3) then
            ((eqListExpr_d5 _lh_eqListExpr_LH_C_1_2) _lh_eqListExpr_LH_C_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d6 _lh_eqListExpr_arg1_2 _lh_eqListExpr_arg2_2 =
  (match _lh_eqListExpr_arg1_2 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_4, _lh_eqListExpr_LH_C_1_4) -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_C(_lh_eqListExpr_LH_C_0_5, _lh_eqListExpr_LH_C_1_5) -> 
          (if ((eqExpr_d6 _lh_eqListExpr_LH_C_0_4) _lh_eqListExpr_LH_C_0_5) then
            ((eqListExpr_d6 _lh_eqListExpr_LH_C_1_4) _lh_eqListExpr_LH_C_1_5)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and expr_fold_d0 _lh_expr_fold_arg1_2 _lh_expr_fold_arg2_2 _lh_expr_fold_arg3_2 =
  (match _lh_expr_fold_arg3_2 with
    | `Var(_lh_expr_fold_Var_0_2) -> 
      (_lh_expr_fold_arg2_2 _lh_expr_fold_Var_0_2)
    | `Func(_lh_expr_fold_Func_0_2, _lh_expr_fold_Func_1_2) -> 
      ((_lh_expr_fold_arg1_2 _lh_expr_fold_Func_0_2) ((map_d1 ((expr_fold_d0 _lh_expr_fold_arg1_2) _lh_expr_fold_arg2_2)) _lh_expr_fold_Func_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold_d1 _lh_expr_fold_arg1_1_1 _lh_expr_fold_arg2_1_1 _lh_expr_fold_arg3_1_1 =
  (match _lh_expr_fold_arg3_1_1 with
    | `Var(_lh_expr_fold_Var_0_1_1) -> 
      (_lh_expr_fold_arg2_1_1 _lh_expr_fold_Var_0_1_1)
    | `Func(_lh_expr_fold_Func_0_1_1, _lh_expr_fold_Func_1_1_1) -> 
      ((_lh_expr_fold_arg1_1_1 _lh_expr_fold_Func_0_1_1) ((map_d1_d6 ((expr_fold_d1 _lh_expr_fold_arg1_1_1) _lh_expr_fold_arg2_1_1)) _lh_expr_fold_Func_1_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d0 _lh_expr_fold_arg1_9 _lh_expr_fold_arg2_9 _lh_expr_fold_arg3_9 =
  (match _lh_expr_fold_arg3_9 with
    | `Var(_lh_expr_fold_Var_0_9) -> 
      (_lh_expr_fold_arg2_9 _lh_expr_fold_Var_0_9)
    | `Func(_lh_expr_fold_Func_0_9, _lh_expr_fold_Func_1_9) -> 
      ((_lh_expr_fold_arg1_9 _lh_expr_fold_Func_0_9) ((map_d3_d1 ((expr_fold_d1_d0 _lh_expr_fold_arg1_9) _lh_expr_fold_arg2_9)) _lh_expr_fold_Func_1_9))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d1 _lh_expr_fold_arg1_1_8 _lh_expr_fold_arg2_1_8 _lh_expr_fold_arg3_1_8 =
  (match _lh_expr_fold_arg3_1_8 with
    | `Var(_lh_expr_fold_Var_0_1_8) -> 
      (_lh_expr_fold_arg2_1_8 _lh_expr_fold_Var_0_1_8)
    | `Func(_lh_expr_fold_Func_0_1_8, _lh_expr_fold_Func_1_1_8) -> 
      ((_lh_expr_fold_arg1_1_8 _lh_expr_fold_Func_0_1_8) ((map_d3_d3 ((expr_fold_d1_d1 _lh_expr_fold_arg1_1_8) _lh_expr_fold_arg2_1_8)) _lh_expr_fold_Func_1_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d2 _lh_expr_fold_arg1_1_5 _lh_expr_fold_arg2_1_5 _lh_expr_fold_arg3_1_5 =
  (match _lh_expr_fold_arg3_1_5 with
    | `Var(_lh_expr_fold_Var_0_1_5) -> 
      (_lh_expr_fold_arg2_1_5 _lh_expr_fold_Var_0_1_5)
    | `Func(_lh_expr_fold_Func_0_1_5, _lh_expr_fold_Func_1_1_5) -> 
      ((_lh_expr_fold_arg1_1_5 _lh_expr_fold_Func_0_1_5) ((map_d3_d5 ((expr_fold_d1_d2 _lh_expr_fold_arg1_1_5) _lh_expr_fold_arg2_1_5)) _lh_expr_fold_Func_1_1_5))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d3 _lh_expr_fold_arg1_5 _lh_expr_fold_arg2_5 _lh_expr_fold_arg3_5 =
  (match _lh_expr_fold_arg3_5 with
    | `Var(_lh_expr_fold_Var_0_5) -> 
      (_lh_expr_fold_arg2_5 _lh_expr_fold_Var_0_5)
    | `Func(_lh_expr_fold_Func_0_5, _lh_expr_fold_Func_1_5) -> 
      ((_lh_expr_fold_arg1_5 _lh_expr_fold_Func_0_5) ((map_d3_d8 ((expr_fold_d1_d3 _lh_expr_fold_arg1_5) _lh_expr_fold_arg2_5)) _lh_expr_fold_Func_1_5))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d4 _lh_expr_fold_arg1_1 _lh_expr_fold_arg2_1 _lh_expr_fold_arg3_1 =
  (match _lh_expr_fold_arg3_1 with
    | `Var(_lh_expr_fold_Var_0_1) -> 
      (_lh_expr_fold_arg2_1 _lh_expr_fold_Var_0_1)
    | `Func(_lh_expr_fold_Func_0_1, _lh_expr_fold_Func_1_1) -> 
      ((_lh_expr_fold_arg1_1 _lh_expr_fold_Func_0_1) ((map_d3_d9 ((expr_fold_d1_d4 _lh_expr_fold_arg1_1) _lh_expr_fold_arg2_1)) _lh_expr_fold_Func_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d5 _lh_expr_fold_arg1_1_7 _lh_expr_fold_arg2_1_7 _lh_expr_fold_arg3_1_7 =
  (match _lh_expr_fold_arg3_1_7 with
    | `Var(_lh_expr_fold_Var_0_1_7) -> 
      (_lh_expr_fold_arg2_1_7 _lh_expr_fold_Var_0_1_7)
    | `Func(_lh_expr_fold_Func_0_1_7, _lh_expr_fold_Func_1_1_7) -> 
      ((_lh_expr_fold_arg1_1_7 _lh_expr_fold_Func_0_1_7) ((map_d4_d1 ((expr_fold_d1_d5 _lh_expr_fold_arg1_1_7) _lh_expr_fold_arg2_1_7)) _lh_expr_fold_Func_1_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d6 _lh_expr_fold_arg1_7 _lh_expr_fold_arg2_7 _lh_expr_fold_arg3_7 =
  (match _lh_expr_fold_arg3_7 with
    | `Var(_lh_expr_fold_Var_0_7) -> 
      (_lh_expr_fold_arg2_7 _lh_expr_fold_Var_0_7)
    | `Func(_lh_expr_fold_Func_0_7, _lh_expr_fold_Func_1_7) -> 
      ((_lh_expr_fold_arg1_7 _lh_expr_fold_Func_0_7) ((map_d4_d4 ((expr_fold_d1_d6 _lh_expr_fold_arg1_7) _lh_expr_fold_arg2_7)) _lh_expr_fold_Func_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d7 _lh_expr_fold_arg1_1_0 _lh_expr_fold_arg2_1_0 _lh_expr_fold_arg3_1_0 =
  (match _lh_expr_fold_arg3_1_0 with
    | `Var(_lh_expr_fold_Var_0_1_0) -> 
      (_lh_expr_fold_arg2_1_0 _lh_expr_fold_Var_0_1_0)
    | `Func(_lh_expr_fold_Func_0_1_0, _lh_expr_fold_Func_1_1_0) -> 
      ((_lh_expr_fold_arg1_1_0 _lh_expr_fold_Func_0_1_0) ((map_d4_d5 ((expr_fold_d1_d7 _lh_expr_fold_arg1_1_0) _lh_expr_fold_arg2_1_0)) _lh_expr_fold_Func_1_1_0))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d8 _lh_expr_fold_arg1_6 _lh_expr_fold_arg2_6 _lh_expr_fold_arg3_6 =
  (match _lh_expr_fold_arg3_6 with
    | `Var(_lh_expr_fold_Var_0_6) -> 
      (_lh_expr_fold_arg2_6 _lh_expr_fold_Var_0_6)
    | `Func(_lh_expr_fold_Func_0_6, _lh_expr_fold_Func_1_6) -> 
      ((_lh_expr_fold_arg1_6 _lh_expr_fold_Func_0_6) ((map_d4_d7 ((expr_fold_d1_d8 _lh_expr_fold_arg1_6) _lh_expr_fold_arg2_6)) _lh_expr_fold_Func_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold_d2 _lh_expr_fold_arg1_1_3 _lh_expr_fold_arg2_1_3 _lh_expr_fold_arg3_1_3 =
  (match _lh_expr_fold_arg3_1_3 with
    | `Var(_lh_expr_fold_Var_0_1_3) -> 
      (_lh_expr_fold_arg2_1_3 _lh_expr_fold_Var_0_1_3)
    | `Func(_lh_expr_fold_Func_0_1_3, _lh_expr_fold_Func_1_1_3) -> 
      ((_lh_expr_fold_arg1_1_3 _lh_expr_fold_Func_0_1_3) ((map_d1_d7 ((expr_fold_d2 _lh_expr_fold_arg1_1_3) _lh_expr_fold_arg2_1_3)) _lh_expr_fold_Func_1_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold_d3 _lh_expr_fold_arg1_3 _lh_expr_fold_arg2_3 _lh_expr_fold_arg3_3 =
  (match _lh_expr_fold_arg3_3 with
    | `Var(_lh_expr_fold_Var_0_3) -> 
      (_lh_expr_fold_arg2_3 _lh_expr_fold_Var_0_3)
    | `Func(_lh_expr_fold_Func_0_3, _lh_expr_fold_Func_1_3) -> 
      ((_lh_expr_fold_arg1_3 _lh_expr_fold_Func_0_3) ((map_d2_d0 ((expr_fold_d3 _lh_expr_fold_arg1_3) _lh_expr_fold_arg2_3)) _lh_expr_fold_Func_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold_d4 _lh_expr_fold_arg1_1_6 _lh_expr_fold_arg2_1_6 _lh_expr_fold_arg3_1_6 =
  (match _lh_expr_fold_arg3_1_6 with
    | `Var(_lh_expr_fold_Var_0_1_6) -> 
      (_lh_expr_fold_arg2_1_6 _lh_expr_fold_Var_0_1_6)
    | `Func(_lh_expr_fold_Func_0_1_6, _lh_expr_fold_Func_1_1_6) -> 
      ((_lh_expr_fold_arg1_1_6 _lh_expr_fold_Func_0_1_6) ((map_d2_d3 ((expr_fold_d4 _lh_expr_fold_arg1_1_6) _lh_expr_fold_arg2_1_6)) _lh_expr_fold_Func_1_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold_d5 _lh_expr_fold_arg1_4 _lh_expr_fold_arg2_4 _lh_expr_fold_arg3_4 =
  (match _lh_expr_fold_arg3_4 with
    | `Var(_lh_expr_fold_Var_0_4) -> 
      (_lh_expr_fold_arg2_4 _lh_expr_fold_Var_0_4)
    | `Func(_lh_expr_fold_Func_0_4, _lh_expr_fold_Func_1_4) -> 
      ((_lh_expr_fold_arg1_4 _lh_expr_fold_Func_0_4) ((map_d2_d6 ((expr_fold_d5 _lh_expr_fold_arg1_4) _lh_expr_fold_arg2_4)) _lh_expr_fold_Func_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold_d6 _lh_expr_fold_arg1_8 _lh_expr_fold_arg2_8 _lh_expr_fold_arg3_8 =
  (match _lh_expr_fold_arg3_8 with
    | `Var(_lh_expr_fold_Var_0_8) -> 
      (_lh_expr_fold_arg2_8 _lh_expr_fold_Var_0_8)
    | `Func(_lh_expr_fold_Func_0_8, _lh_expr_fold_Func_1_8) -> 
      ((_lh_expr_fold_arg1_8 _lh_expr_fold_Func_0_8) ((map_d2_d7 ((expr_fold_d6 _lh_expr_fold_arg1_8) _lh_expr_fold_arg2_8)) _lh_expr_fold_Func_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold_d7 _lh_expr_fold_arg1_1_4 _lh_expr_fold_arg2_1_4 _lh_expr_fold_arg3_1_4 =
  (match _lh_expr_fold_arg3_1_4 with
    | `Var(_lh_expr_fold_Var_0_1_4) -> 
      (_lh_expr_fold_arg2_1_4 _lh_expr_fold_Var_0_1_4)
    | `Func(_lh_expr_fold_Func_0_1_4, _lh_expr_fold_Func_1_1_4) -> 
      ((_lh_expr_fold_arg1_1_4 _lh_expr_fold_Func_0_1_4) ((map_d2_d8 ((expr_fold_d7 _lh_expr_fold_arg1_1_4) _lh_expr_fold_arg2_1_4)) _lh_expr_fold_Func_1_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold_d8 _lh_expr_fold_arg1_1_2 _lh_expr_fold_arg2_1_2 _lh_expr_fold_arg3_1_2 =
  (match _lh_expr_fold_arg3_1_2 with
    | `Var(_lh_expr_fold_Var_0_1_2) -> 
      (_lh_expr_fold_arg2_1_2 _lh_expr_fold_Var_0_1_2)
    | `Func(_lh_expr_fold_Func_0_1_2, _lh_expr_fold_Func_1_1_2) -> 
      ((_lh_expr_fold_arg1_1_2 _lh_expr_fold_Func_0_1_2) ((map_d2_d9 ((expr_fold_d8 _lh_expr_fold_arg1_1_2) _lh_expr_fold_arg2_1_2)) _lh_expr_fold_Func_1_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold_d9 _lh_expr_fold_arg1_1_9 _lh_expr_fold_arg2_1_9 _lh_expr_fold_arg3_1_9 =
  (match _lh_expr_fold_arg3_1_9 with
    | `Var(_lh_expr_fold_Var_0_1_9) -> 
      (_lh_expr_fold_arg2_1_9 _lh_expr_fold_Var_0_1_9)
    | `Func(_lh_expr_fold_Func_0_1_9, _lh_expr_fold_Func_1_1_9) -> 
      ((_lh_expr_fold_arg1_1_9 _lh_expr_fold_Func_0_1_9) ((map_d3_d0 ((expr_fold_d9 _lh_expr_fold_arg1_1_9) _lh_expr_fold_arg2_1_9)) _lh_expr_fold_Func_1_1_9))
    | _ -> 
      (failwith "error"))
and first_ok_d0 _lh_first_ok_arg1_8 =
  (((foldr_d0 orElse_d0) (`Nothing)) _lh_first_ok_arg1_8)
and first_ok_d1 _lh_first_ok_arg1_1_3 =
  (((foldr_d3 orElse_d1) (`Nothing)) _lh_first_ok_arg1_1_3)
and first_ok_d1_d0 _lh_first_ok_arg1_1_2 =
  (((foldr_d1_d3 orElse_d1_d5) (`Nothing)) _lh_first_ok_arg1_1_2)
and first_ok_d1_d1 _lh_first_ok_arg1_1_5 =
  (((foldr_d1_d4 orElse_d1_d6) (`Nothing)) _lh_first_ok_arg1_1_5)
and first_ok_d1_d2 _lh_first_ok_arg1_2 =
  (((foldr_d1_d5 orElse_d1_d7) (`Nothing)) _lh_first_ok_arg1_2)
and first_ok_d1_d3 _lh_first_ok_arg1_5 =
  (((foldr_d1_d6 orElse_d1_d8) (`Nothing)) _lh_first_ok_arg1_5)
and first_ok_d1_d4 _lh_first_ok_arg1_3 =
  (((foldr_d1_d7 orElse_d1_d9) (`Nothing)) _lh_first_ok_arg1_3)
and first_ok_d2 _lh_first_ok_arg1_6 =
  (((foldr_d4 orElse_d6) (`Nothing)) _lh_first_ok_arg1_6)
and first_ok_d3 _lh_first_ok_arg1_1_1 =
  (((foldr_d5 orElse_d7) (`Nothing)) _lh_first_ok_arg1_1_1)
and first_ok_d4 _lh_first_ok_arg1_1 =
  (((foldr_d6 orElse_d8) (`Nothing)) _lh_first_ok_arg1_1)
and first_ok_d5 _lh_first_ok_arg1_4 =
  (((foldr_d7 orElse_d9) (`Nothing)) _lh_first_ok_arg1_4)
and first_ok_d6 _lh_first_ok_arg1_9 =
  (((foldr_d8 orElse_d1_d0) (`Nothing)) _lh_first_ok_arg1_9)
and first_ok_d7 _lh_first_ok_arg1_1_0 =
  (((foldr_d9 orElse_d1_d1) (`Nothing)) _lh_first_ok_arg1_1_0)
and first_ok_d8 _lh_first_ok_arg1_7 =
  (((foldr_d1_d0 orElse_d1_d2) (`Nothing)) _lh_first_ok_arg1_7)
and first_ok_d9 _lh_first_ok_arg1_1_4 =
  (((foldr_d1_d2 orElse_d1_d4) (`Nothing)) _lh_first_ok_arg1_1_4)
and geRewrite_d0 _lh_geRewrite_arg1_4 _lh_geRewrite_arg2_4 _lh_geRewrite_arg3_4 =
  ((inList_d1 (_lh_geRewrite_arg1_4 (`LH_P2(_lh_geRewrite_arg2_4, _lh_geRewrite_arg3_4)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and geRewrite_d1 _lh_geRewrite_arg1_3 _lh_geRewrite_arg2_3 _lh_geRewrite_arg3_3 =
  ((inList_d2 (_lh_geRewrite_arg1_3 (`LH_P2(_lh_geRewrite_arg2_3, _lh_geRewrite_arg3_3)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and geRewrite_d2 _lh_geRewrite_arg1_2 _lh_geRewrite_arg2_2 _lh_geRewrite_arg3_2 =
  ((inList_d3 (_lh_geRewrite_arg1_2 (`LH_P2(_lh_geRewrite_arg2_2, _lh_geRewrite_arg3_2)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and geRewrite_d3 _lh_geRewrite_arg1_1 _lh_geRewrite_arg2_1 _lh_geRewrite_arg3_1 =
  ((inList_d4 (_lh_geRewrite_arg1_1 (`LH_P2(_lh_geRewrite_arg2_1, _lh_geRewrite_arg3_1)))) (`LH_C((`Greater), (`LH_C((`Equal), (`LH_N))))))
and inside_d0 _lh_inside_arg1_2 _lh_inside_arg2_2 =
  (first_ok_d1 (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_2_0 -> 
    (match _lh_listcomp_fun_para_2_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_0) -> 
        (match _lh_listcomp_fun_ls_h_2_0 with
          | `LH_P2(_lh_inside_LH_P2_0_2, _lh_inside_LH_P2_1_2) -> 
            (`LH_C(((lift_d0 ((replace_d0 _lh_inside_arg2_2) _lh_inside_LH_P2_0_2)) (_lh_inside_arg1_2 _lh_inside_LH_P2_1_2)), (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0)))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_0 (subterms_d0 _lh_inside_arg2_2))))
and inside_d1 _lh_inside_arg1_1 _lh_inside_arg2_1 =
  (first_ok_d2 (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_7 -> 
    (match _lh_listcomp_fun_para_1_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
        (match _lh_listcomp_fun_ls_h_1_7 with
          | `LH_P2(_lh_inside_LH_P2_0_1, _lh_inside_LH_P2_1_1) -> 
            (`LH_C(((lift_d1_d0 ((replace_d1 _lh_inside_arg2_1) _lh_inside_LH_P2_0_1)) (_lh_inside_arg1_1 _lh_inside_LH_P2_1_1)), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7)))
          | _ -> 
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_7 (subterms_d1 _lh_inside_arg2_1))))
and listify_d0 _lh_listify_arg1_1 =
  ((getOrElse_d4 ((lift_d1_d3 box_d0) _lh_listify_arg1_1)) (`LH_N))
and listify_d1 _lh_listify_arg1_2 =
  ((getOrElse_d5 ((lift_d1_d4 box_d1) _lh_listify_arg1_2)) (`LH_N))
and map_dnet_d0 _lh_map_dnet_arg1_1 _lh_map_dnet_arg2_1 =
  (match _lh_map_dnet_arg2_1 with
    | `Switch(_lh_map_dnet_Switch_0_1, _lh_map_dnet_Switch_1_1) -> 
      (`Switch(((map_d2 ((cross_d3 (fun x_4_7 -> 
        x_4_7)) (map_dnet_d0 _lh_map_dnet_arg1_1))) _lh_map_dnet_Switch_0_1), ((map_dnet_d0 _lh_map_dnet_arg1_1) _lh_map_dnet_Switch_1_1)))
    | `Return(_lh_map_dnet_Return_0_1) -> 
      (`Return((_lh_map_dnet_arg1_1 _lh_map_dnet_Return_0_1)))
    | _ -> 
      (failwith "error"))
and match'_d0 _lh_match'_arg1_1 _lh_match'_arg2_1 =
  (match _lh_match'_arg2_1 with
    | `LH_P2(_lh_match'_LH_P2_0_1, _lh_match'_LH_P2_1_1) -> 
      (match _lh_match'_LH_P2_0_1 with
        | `Var(_lh_match'_Var_0_2) -> 
          (let rec u_1 = ((assoc_d1 _lh_match'_arg1_1) _lh_match'_Var_0_2) in
            (if (not (exists_d2 u_1)) then
              (succeed_d0 (`LH_C((`LH_P2(_lh_match'_Var_0_2, _lh_match'_LH_P2_1_1)), _lh_match'_arg1_1)))
            else
              (if ((eqExpr_d3 (the_d0 u_1)) _lh_match'_LH_P2_1_1) then
                (succeed_d1 _lh_match'_arg1_1)
              else
                croak_d4)))
        | `Func(_lh_match'_Func_0_2, _lh_match'_Func_1_2) -> 
          (match _lh_match'_LH_P2_1_1 with
            | `Func(_lh_match'_Func_0_3, _lh_match'_Func_1_3) -> 
              (if (_lh_match'_Func_0_2 = _lh_match'_Func_0_3) then
                (((prop_fold_d0 match'_d0) _lh_match'_arg1_1) ((zip_d0 _lh_match'_Func_1_2) _lh_match'_Func_1_3))
              else
                croak_d5)
            | `Var(_lh_match'_Var_0_3) -> 
              croak_d6
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and match'_d1 _lh_match'_arg1_2 _lh_match'_arg2_2 =
  (match _lh_match'_arg2_2 with
    | `LH_P2(_lh_match'_LH_P2_0_2, _lh_match'_LH_P2_1_2) -> 
      (match _lh_match'_LH_P2_0_2 with
        | `Var(_lh_match'_Var_0_4) -> 
          (let rec u_2 = ((assoc_d3 _lh_match'_arg1_2) _lh_match'_Var_0_4) in
            (if (not (exists_d3 u_2)) then
              (succeed_d2 (`LH_C((`LH_P2(_lh_match'_Var_0_4, _lh_match'_LH_P2_1_2)), _lh_match'_arg1_2)))
            else
              (if ((eqExpr_d4 (the_d1 u_2)) _lh_match'_LH_P2_1_2) then
                (succeed_d3 _lh_match'_arg1_2)
              else
                croak_d7)))
        | `Func(_lh_match'_Func_0_4, _lh_match'_Func_1_4) -> 
          (match _lh_match'_LH_P2_1_2 with
            | `Func(_lh_match'_Func_0_5, _lh_match'_Func_1_5) -> 
              (if (_lh_match'_Func_0_4 = _lh_match'_Func_0_5) then
                (((prop_fold_d1 match'_d1) _lh_match'_arg1_2) ((zip_d1 _lh_match'_Func_1_4) _lh_match'_Func_1_5))
              else
                croak_d8)
            | `Var(_lh_match'_Var_0_5) -> 
              croak_d9
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and match_d0 _lh_match_arg1_1 _lh_match_arg2_1 =
  ((match'_d0 (`LH_N)) (`LH_P2(_lh_match_arg1_1, _lh_match_arg2_1)))
and match_d1 _lh_match_arg1_2 _lh_match_arg2_2 =
  ((match'_d1 (`LH_N)) (`LH_P2(_lh_match_arg1_2, _lh_match_arg2_2)))
and occurs_d0 _lh_occurs_arg1_4 =
  ((expr_fold_d1 (fun dum_1_0 -> 
    or_d0)) (fun x_5_9 -> 
    (x_5_9 = _lh_occurs_arg1_4)))
and occurs_d1 _lh_occurs_arg1_3 =
  ((expr_fold_d2 (fun dum_9 -> 
    or_d1)) (fun x_5_6 -> 
    (x_5_6 = _lh_occurs_arg1_3)))
and occurs_d2 _lh_occurs_arg1_2 =
  ((expr_fold_d1_d4 (fun dum_8 -> 
    or_d2)) (fun x_4_9 -> 
    (x_4_9 = _lh_occurs_arg1_2)))
and occurs_d3 _lh_occurs_arg1_1 =
  ((expr_fold_d1_d7 (fun dum_4 -> 
    or_d3)) (fun x_2_4 -> 
    (x_2_4 = _lh_occurs_arg1_1)))
and orElseMap_d0 _lh_orElseMap_arg1_5 _lh_orElseMap_arg2_5 _lh_orElseMap_arg3_5 =
  ((orElse_d2 (_lh_orElseMap_arg1_5 _lh_orElseMap_arg3_5)) (_lh_orElseMap_arg2_5 _lh_orElseMap_arg3_5))
and orElseMap_d1 _lh_orElseMap_arg1_2 _lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2 =
  ((orElse_d3 (_lh_orElseMap_arg1_2 _lh_orElseMap_arg3_2)) (_lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2))
and orElseMap_d2 _lh_orElseMap_arg1_3 _lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3 =
  ((orElse_d4 (_lh_orElseMap_arg1_3 _lh_orElseMap_arg3_3)) (_lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3))
and orElseMap_d3 _lh_orElseMap_arg1_4 _lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4 =
  ((orElse_d5 (_lh_orElseMap_arg1_4 _lh_orElseMap_arg3_4)) (_lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4))
and orElseMap_d4 _lh_orElseMap_arg1_1 _lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1 =
  ((orElse_d1_d3 (_lh_orElseMap_arg1_1 _lh_orElseMap_arg3_1)) (_lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1))
and prop_fold_d0 _lh_prop_fold_arg1_2 _lh_prop_fold_arg2_2 _lh_prop_fold_arg3_2 =
  (match _lh_prop_fold_arg3_2 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_2))
    | `LH_C(_lh_prop_fold_LH_C_0_2, _lh_prop_fold_LH_C_1_2) -> 
      (((prop2_d0 (prop_fold_d0 _lh_prop_fold_arg1_2)) ((_lh_prop_fold_arg1_2 _lh_prop_fold_arg2_2) _lh_prop_fold_LH_C_0_2)) _lh_prop_fold_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and prop_fold_d1 _lh_prop_fold_arg1_3 _lh_prop_fold_arg2_3 _lh_prop_fold_arg3_3 =
  (match _lh_prop_fold_arg3_3 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_3))
    | `LH_C(_lh_prop_fold_LH_C_0_3, _lh_prop_fold_LH_C_1_3) -> 
      (((prop2_d1 (prop_fold_d1 _lh_prop_fold_arg1_3)) ((_lh_prop_fold_arg1_3 _lh_prop_fold_arg2_3) _lh_prop_fold_LH_C_0_3)) _lh_prop_fold_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and prop_fold_d2 _lh_prop_fold_arg1_1 _lh_prop_fold_arg2_1 _lh_prop_fold_arg3_1 =
  (match _lh_prop_fold_arg3_1 with
    | `LH_N -> 
      (`Just(_lh_prop_fold_arg2_1))
    | `LH_C(_lh_prop_fold_LH_C_0_1, _lh_prop_fold_LH_C_1_1) -> 
      (((prop2_d2 (prop_fold_d2 _lh_prop_fold_arg1_1)) ((_lh_prop_fold_arg1_1 _lh_prop_fold_arg2_1) _lh_prop_fold_LH_C_0_1)) _lh_prop_fold_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and reduce1_d0 _lh_reduce1_arg1_1 =
  (inside_d1 (rewrite_d0 _lh_reduce1_arg1_1))
and replace_d0 _lh_replace_arg1_3 _lh_replace_arg2_3 _lh_replace_arg3_3 =
  (match _lh_replace_arg2_3 with
    | `LH_N -> 
      _lh_replace_arg3_3
    | _ -> 
      (match _lh_replace_arg1_3 with
        | `Func(_lh_replace_Func_0_3, _lh_replace_Func_1_3) -> 
          (match _lh_replace_arg2_3 with
            | `LH_C(_lh_replace_LH_C_0_3, _lh_replace_LH_C_1_3) -> 
              (`Func(_lh_replace_Func_0_3, (((modify_d0 _lh_replace_Func_1_3) _lh_replace_LH_C_0_3) (fun t_1_0_9 -> 
                (((replace_d0 t_1_0_9) _lh_replace_LH_C_1_3) _lh_replace_arg3_3)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace_d1 _lh_replace_arg1_1 _lh_replace_arg2_1 _lh_replace_arg3_1 =
  (match _lh_replace_arg2_1 with
    | `LH_N -> 
      _lh_replace_arg3_1
    | _ -> 
      (match _lh_replace_arg1_1 with
        | `Func(_lh_replace_Func_0_1, _lh_replace_Func_1_1) -> 
          (match _lh_replace_arg2_1 with
            | `LH_C(_lh_replace_LH_C_0_1, _lh_replace_LH_C_1_1) -> 
              (`Func(_lh_replace_Func_0_1, (((modify_d1 _lh_replace_Func_1_1) _lh_replace_LH_C_0_1) (fun t_3_0 -> 
                (((replace_d1 t_3_0) _lh_replace_LH_C_1_1) _lh_replace_arg3_1)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace_d2 _lh_replace_arg1_2 _lh_replace_arg2_2 _lh_replace_arg3_2 =
  (match _lh_replace_arg2_2 with
    | `LH_N -> 
      _lh_replace_arg3_2
    | _ -> 
      (match _lh_replace_arg1_2 with
        | `Func(_lh_replace_Func_0_2, _lh_replace_Func_1_2) -> 
          (match _lh_replace_arg2_2 with
            | `LH_C(_lh_replace_LH_C_0_2, _lh_replace_LH_C_1_2) -> 
              (`Func(_lh_replace_Func_0_2, (((modify_d2 _lh_replace_Func_1_2) _lh_replace_LH_C_0_2) (fun t_7_5 -> 
                (((replace_d2 t_7_5) _lh_replace_LH_C_1_2) _lh_replace_arg3_2)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and result_d0 _lh_result_arg1_1 =
  (match _lh_result_arg1_1 with
    | `LH_P2(_lh_result_LH_P2_0_1, _lh_result_LH_P2_1_1) -> 
      let rec process2_1 = (fun _lh_process2_arg1_1 _lh_process2_arg2_1 _lh_process2_arg3_1 _lh_process2_arg4_1 _lh_process2_arg5_1 _lh_process2_arg6_1 -> 
        (let rec _lh_matchIdent_3_1 = ((split_1 (reducible_1 (reduce1_d0 _lh_process2_arg6_1))) _lh_process2_arg3_1) in
          (match _lh_matchIdent_3_1 with
            | `LH_P2(_lh_process2_LH_P2_0_1, _lh_process2_LH_P2_1_1) -> 
              (let rec net'_1 = ((add_eqn_1 ((delete_eqns_d0 ((map_d1_d2 eqno_d1) _lh_process2_LH_P2_0_1)) _lh_process2_arg4_1)) _lh_process2_arg6_1) in
                (let rec deletions_1 = ((map_d1_d3 eqpr_d0) _lh_process2_LH_P2_0_1) in
                  (let rec critical_1 = ((all_crit_pairs_1 _lh_process2_arg6_1) _lh_process2_LH_P2_1_1) in
                    (let rec new_agenda_1 = (sift_d1 ((map_d1_d4 (resolve_1 (super_reduce_1 net'_1))) ((mappend_d5 deletions_1) critical_1))) in
                      (let rec todo'_1 = (((add_agenda_1 (snd_d1 _lh_process2_arg1_1)) new_agenda_1) _lh_process2_arg5_1) in
                        (((((process_1 _lh_process2_arg1_1) _lh_process2_arg2_1) ((mappend_d6 _lh_process2_LH_P2_1_1) (`LH_C(_lh_process2_arg6_1, (`LH_N))))) net'_1) todo'_1))))))
            | _ -> 
              (failwith "error"))))
      and build_1 = (fun _lh_build_arg1_1 _lh_build_arg2_1 _lh_funcomp_x_1_9 -> 
        ((lift_d8 ((cross_d2 _lh_build_arg1_1) (fun x_3_4 -> 
          x_3_4))) (_lh_build_arg2_1 _lh_funcomp_x_1_9)))
      and mk_dnet_1 = (fun _lh_mk_dnet_arg1_1 -> 
        (((foldl_d0 add_eqn_1) empty_net_1) _lh_mk_dnet_arg1_1))
      and unString_1 = (fun _lh_unString_arg1_1 -> 
        (match _lh_unString_arg1_1 with
          | `MkString(_lh_unString_MkString_0_1) -> 
            _lh_unString_MkString_0_1
          | _ -> 
            (failwith "error")))
      and p_prim_1 = (fun _lh_p_prim_arg1_1 -> 
        (((orElseMap_d1 p_name_1) ((seQ_1 (fun x_3_5 -> 
          ((atIndex_d2 1) x_3_5))) (`LH_C((look_for_1 '('), (`LH_C(p_expr_1, (`LH_C((look_for_1 ')'), (`LH_N))))))))) _lh_p_prim_arg1_1))
      and split_1 = (fun _lh_split_arg1_1 _lh_split_arg2_1 -> 
        (let rec tmp_1 = ((zip_d3 ((map_d1_d1 _lh_split_arg1_1) _lh_split_arg2_1)) _lh_split_arg2_1) in
          (`LH_P2((let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
            (match _lh_listcomp_fun_para_1_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
                (match _lh_listcomp_fun_ls_h_1_1 with
                  | `LH_P2(_lh_split_LH_P2_0_2, _lh_split_LH_P2_1_2) -> 
                    (if _lh_split_LH_P2_0_2 then
                      (`LH_C(_lh_split_LH_P2_1_2, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
                    else
                      (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
                  | _ -> 
                    (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1_1 tmp_1)), (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
            (match _lh_listcomp_fun_para_1_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
                (match _lh_listcomp_fun_ls_h_1_2 with
                  | `LH_P2(_lh_split_LH_P2_0_3, _lh_split_LH_P2_1_3) -> 
                    (if (not _lh_split_LH_P2_0_3) then
                      (`LH_C(_lh_split_LH_P2_1_3, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2)))
                    else
                      (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
                  | _ -> 
                    (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1_2 tmp_1))))))
      and mk_item_1 = (fun _lh_mk_item_arg1_1 _lh_mk_item_arg2_1 -> 
        (`Item((_lh_mk_item_arg1_1 _lh_mk_item_arg2_1), _lh_mk_item_arg2_1)))
      and super_reduce_1 = (fun _lh_super_reduce_arg1_1 -> 
        (inside_d0 (dnet_reduce_1 _lh_super_reduce_arg1_1)))
      and knuth_bendix1_1 = (fun _lh_knuth_bendix1_arg1_1 _lh_knuth_bendix1_arg2_1 -> 
        (((((process_1 _lh_knuth_bendix1_arg1_1) 1) (`LH_N)) empty_net_1) (((add_agenda_1 (snd_d0 _lh_knuth_bendix1_arg1_1)) _lh_knuth_bendix1_arg2_1) (`LH_N))))
      and add_agenda_1 = (fun _lh_add_agenda_arg1_1 _lh_add_agenda_arg2_1 -> 
        ((addby_1 item_cost_1) ((map_d6 (mk_item_1 _lh_add_agenda_arg1_1)) _lh_add_agenda_arg2_1)))
      and find_1 = (fun _lh_find_arg1_1 _lh_find_arg2_1 -> 
        ((find'_1 (g_init_1 _lh_find_arg1_1)) _lh_find_arg2_1))
      and multi_ext_1 = (fun _lh_multi_ext_arg1_1 _lh_multi_ext_arg2_1 -> 
        (match _lh_multi_ext_arg2_1 with
          | `LH_P2(_lh_multi_ext_LH_P2_0_1, _lh_multi_ext_LH_P2_1_1) -> 
            (match _lh_multi_ext_LH_P2_0_1 with
              | `Func(_lh_multi_ext_Func_0_2, _lh_multi_ext_Func_1_2) -> 
                (match _lh_multi_ext_LH_P2_1_1 with
                  | `Func(_lh_multi_ext_Func_0_3, _lh_multi_ext_Func_1_3) -> 
                    ((multi_1 _lh_multi_ext_arg1_1) (`LH_P2(_lh_multi_ext_Func_1_2, _lh_multi_ext_Func_1_3)))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and opsym_1 = (fun _lh_opsym_arg1_1 -> 
        ((fun x_3_6 -> 
          ((inList_d5 x_3_6) (`LH_C('*', (`LH_C('+', (`LH_C('%', (`LH_C('@', (`LH_C('-', (`LH_C('/', (`LH_C('?', (`LH_C(':', (`LH_N))))))))))))))))))) _lh_opsym_arg1_1))
      and look_for_1 = (fun _lh_look_for_arg1_1 -> 
        (sp_1 (pchar_1 (fun x_3_8 -> 
          (x_3_8 = _lh_look_for_arg1_1)))))
      and empty_net_1 = (`Return((`LH_N)))
      and q_func_1 = (fun _lh_q_func_arg1_1 -> 
        (match _lh_q_func_arg1_1 with
          | `LH_C(_lh_q_func_LH_C_0_4, _lh_q_func_LH_C_1_4) -> 
            (match _lh_q_func_LH_C_0_4 with
              | `MkString(_lh_q_func_MkString_0_1) -> 
                (match _lh_q_func_LH_C_1_4 with
                  | `LH_C(_lh_q_func_LH_C_0_5, _lh_q_func_LH_C_1_5) -> 
                    (match _lh_q_func_LH_C_1_5 with
                      | `LH_C(_lh_q_func_LH_C_0_6, _lh_q_func_LH_C_1_6) -> 
                        (match _lh_q_func_LH_C_0_6 with
                          | `List(_lh_q_func_List_0_1) -> 
                            (match _lh_q_func_LH_C_1_6 with
                              | `LH_C(_lh_q_func_LH_C_0_7, _lh_q_func_LH_C_1_7) -> 
                                (match _lh_q_func_LH_C_1_7 with
                                  | `LH_N -> 
                                    (`Expr((`Func(_lh_q_func_MkString_0_1, ((map_d3 unExpr_1) _lh_q_func_List_0_1)))))
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
            (failwith "error")))
      and g_init_1 = (fun _lh_g_init_arg1_1 -> 
        (`LH_C(_lh_g_init_arg1_1, (`LH_N))))
      and q_eqn_1 = (fun _lh_q_eqn_arg1_1 -> 
        (match _lh_q_eqn_arg1_1 with
          | `LH_C(_lh_q_eqn_LH_C_0_3, _lh_q_eqn_LH_C_1_3) -> 
            (match _lh_q_eqn_LH_C_1_3 with
              | `LH_C(_lh_q_eqn_LH_C_0_4, _lh_q_eqn_LH_C_1_4) -> 
                (match _lh_q_eqn_LH_C_1_4 with
                  | `LH_C(_lh_q_eqn_LH_C_0_5, _lh_q_eqn_LH_C_1_5) -> 
                    (match _lh_q_eqn_LH_C_1_5 with
                      | `LH_N -> 
                        (`List((`LH_C(_lh_q_eqn_LH_C_0_3, (`LH_C(_lh_q_eqn_LH_C_0_5, (`LH_N)))))))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and empty_1 = (fun _lh_empty_arg1_1 -> 
        (succeed_d4 (`LH_P2((`List((`LH_N))), _lh_empty_arg1_1))))
      and lex_ext_1 = (fun _lh_lex_ext_arg1_1 _lh_lex_ext_arg2_1 -> 
        (match _lh_lex_ext_arg2_1 with
          | `LH_P2(_lh_lex_ext_LH_P2_0_1, _lh_lex_ext_LH_P2_1_1) -> 
            (match _lh_lex_ext_LH_P2_0_1 with
              | `Func(_lh_lex_ext_Func_0_2, _lh_lex_ext_Func_1_2) -> 
                (match _lh_lex_ext_LH_P2_1_1 with
                  | `Func(_lh_lex_ext_Func_0_3, _lh_lex_ext_Func_1_3) -> 
                    (let rec estimate_1 = ((lexico_1 _lh_lex_ext_arg1_1) (`LH_P2(_lh_lex_ext_Func_1_2, _lh_lex_ext_Func_1_3))) in
                      (let rec confirm_1 = (fun x_3_7 -> 
                        (let rec _lh_matchIdent_3_0 = x_3_7 in
                          (match _lh_matchIdent_3_0 with
                            | `Equal -> 
                              true
                            | `Greater -> 
                              ((((quant_d0 all_d1) (ltRewrite_d0 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_2, _lh_lex_ext_Func_1_2))) _lh_lex_ext_Func_1_3)
                            | `Less -> 
                              ((((quant_d1 all_d2) (ltRewrite_d1 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_3, _lh_lex_ext_Func_1_3))) _lh_lex_ext_Func_1_2)
                            | `Unrelated -> 
                              false
                            | _ -> 
                              (failwith "error")))) in
                        (if (confirm_1 estimate_1) then
                          estimate_1
                        else
                          (if ((((quant_d2 any_d0) (geRewrite_d0 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_3, _lh_lex_ext_Func_1_3))) _lh_lex_ext_Func_1_2) then
                            (`Greater)
                          else
                            (if ((((quant_d3 any_d1) (geRewrite_d1 _lh_lex_ext_arg1_1)) (`Func(_lh_lex_ext_Func_0_2, _lh_lex_ext_Func_1_2))) _lh_lex_ext_Func_1_3) then
                              (`Less)
                            else
                              (`Unrelated))))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and seq2_1 = (fun _lh_seq2_arg1_1 _lh_seq2_arg2_1 _lh_seq2_arg3_1 -> 
        (let rec g_3 = (fun xs_2_6 -> 
          (let rec _lh_matchIdent_3_2 = xs_2_6 in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_seq2_LH_P2_0_1, _lh_seq2_LH_P2_1_1) -> 
                ((lift_d2 ((cross_d0 (_lh_seq2_arg1_1 _lh_seq2_LH_P2_0_1)) (fun x_4_1 -> 
                  x_4_1))) (_lh_seq2_arg3_1 _lh_seq2_LH_P2_1_1))
              | _ -> 
                (failwith "error")))) in
          (fun _lh_funcomp_x_2_1 -> 
            ((fun _lh_funcomp_x_2_2 -> 
              (squash_d0 ((lift_d3 g_3) _lh_funcomp_x_2_2))) (_lh_seq2_arg2_1 _lh_funcomp_x_2_1)))))
      and p_ident_1 = (fun _lh_p_ident_arg1_1 -> 
        ((sp_1 (string_of_1 alphanum_1)) _lh_p_ident_arg1_1))
      and alphanum_1 = (fun _lh_alphanum_arg1_1 -> 
        (((((int_of_char _lh_alphanum_arg1_1) >= (int_of_char 'A')) && ((int_of_char _lh_alphanum_arg1_1) <= (int_of_char 'Z'))) || (((int_of_char _lh_alphanum_arg1_1) >= (int_of_char 'a')) && ((int_of_char _lh_alphanum_arg1_1) <= (int_of_char 'z')))) || (((int_of_char _lh_alphanum_arg1_1) >= (int_of_char '0')) && ((int_of_char _lh_alphanum_arg1_1) <= (int_of_char '9')))))
      and knuth_bendix_1 = (fun _lh_knuth_bendix_arg1_1 _lh_knuth_bendix_arg2_1 -> 
        ((knuth_bendix1_1 (`LH_P2(_lh_knuth_bendix_arg1_1, cost_d0))) _lh_knuth_bendix_arg2_1))
      and mk_cons_1 = (fun _lh_mk_cons_arg1_1 _lh_mk_cons_arg2_1 -> 
        (match _lh_mk_cons_arg2_1 with
          | `List(_lh_mk_cons_List_0_1) -> 
            (`List((`LH_C(_lh_mk_cons_arg1_1, _lh_mk_cons_List_0_1))))
          | _ -> 
            (failwith "error")))
      and all_crit_pairs_1 = (fun _lh_all_crit_pairs_arg1_1 _lh_all_crit_pairs_arg2_1 -> 
        (let rec eqn'_1 = ((stand_eqn_d0 (`LH_C('1', (`LH_N)))) _lh_all_crit_pairs_arg1_1) in
          (let rec eqn''_1 = ((stand_eqn_d1 (`LH_C('2', (`LH_N)))) _lh_all_crit_pairs_arg1_1) in
            (let rec theory''_1 = ((map_d7 (stand_eqn_d2 (`LH_C('2', (`LH_N))))) _lh_all_crit_pairs_arg2_1) in
              ((mappend_d4 ((map_d8 ((mk_crit_1 eqn'_1) eqn''_1)) ((strict_super_1 (lhs_d5 eqn'_1)) (lhs_d6 eqn''_1)))) (concat_d0 ((map_d9 (crit_pairs_1 eqn'_1)) theory''_1)))))))
      and string_of_1 = (fun _lh_string_of_arg1_1 _lh_string_of_arg2_1 -> 
        (let rec chars_1 = ((takeWhile_d0 _lh_string_of_arg1_1) _lh_string_of_arg2_1) in
          (let rec s'_1 = ((dropWhile_d1 _lh_string_of_arg1_1) _lh_string_of_arg2_1) in
            ((maybeX_d1 (chars_1 <> (`LH_N))) (`LH_P2((`MkString(chars_1)), s'_1))))))
      and crit_pairs_1 = (fun _lh_crit_pairs_arg1_1 _lh_crit_pairs_arg2_1 -> 
        ((mappend_d3 ((map_d4 ((mk_crit_1 _lh_crit_pairs_arg1_1) _lh_crit_pairs_arg2_1)) ((superpose_1 (lhs_d0 _lh_crit_pairs_arg1_1)) (lhs_d1 _lh_crit_pairs_arg2_1)))) ((map_d5 ((mk_crit_1 _lh_crit_pairs_arg2_1) _lh_crit_pairs_arg1_1)) ((strict_super_1 (lhs_d2 _lh_crit_pairs_arg2_1)) (lhs_d3 _lh_crit_pairs_arg1_1)))))
      and process_1 = (fun _lh_process_arg1_1 _lh_process_arg2_1 _lh_process_arg3_1 _lh_process_arg4_1 _lh_process_arg5_1 -> 
        (match _lh_process_arg5_1 with
          | `LH_N -> 
            _lh_process_arg4_1
          | `LH_C(_lh_process_LH_C_0_1, _lh_process_LH_C_1_1) -> 
            (match _lh_process_LH_C_0_1 with
              | `Item(_lh_process_Item_0_1, _lh_process_Item_1_1) -> 
                ((((((process1_1 _lh_process_arg1_1) _lh_process_arg2_1) _lh_process_arg3_1) _lh_process_arg4_1) _lh_process_LH_C_1_1) ((preprocess_1 _lh_process_arg4_1) _lh_process_Item_1_1))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and process1_1 = (fun _lh_process1_arg1_1 _lh_process1_arg2_1 _lh_process1_arg3_1 _lh_process1_arg4_1 _lh_process1_arg5_1 _lh_process1_arg6_1 -> 
        (match _lh_process1_arg6_1 with
          | `LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1) -> 
            (let rec o_1 = ((fst_d0 _lh_process1_arg1_1) (`LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1))) in
              (let rec _lh_matchIdent_2_8 = o_1 in
                (match _lh_matchIdent_2_8 with
                  | `Unrelated -> 
                    (((((process_1 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) (((add_agenda_1 (fun dum_6 -> 
                      1000)) (`LH_C((`LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1)), (`LH_N)))) _lh_process1_arg5_1))
                  | `Equal -> 
                    (((((process_1 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1)
                  | _ -> 
                    (let rec eqn_1 = (let rec _lh_matchIdent_2_9 = o_1 in
                      (match _lh_matchIdent_2_9 with
                        | `Greater -> 
                          (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_0_1, _lh_process1_LH_P2_1_1))))
                        | `Less -> 
                          (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_1_1, _lh_process1_LH_P2_0_1))))
                        | _ -> 
                          (failwith "error"))) in
                      ((((((process2_1 _lh_process1_arg1_1) (_lh_process1_arg2_1 + 1)) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1) eqn_1)))))
          | _ -> 
            (failwith "error")))
      and lexico_1 = (fun _lh_lexico_arg1_1 _lh_lexico_arg2_1 -> 
        (match _lh_lexico_arg2_1 with
          | `LH_P2(_lh_lexico_LH_P2_0_1, _lh_lexico_LH_P2_1_1) -> 
            (match _lh_lexico_LH_P2_0_1 with
              | `LH_N -> 
                (match _lh_lexico_LH_P2_1_1 with
                  | `LH_N -> 
                    (`Equal)
                  | `LH_C(_lh_lexico_LH_C_0_3, _lh_lexico_LH_C_1_3) -> 
                    (`Less)
                  | _ -> 
                    (failwith "error"))
              | `LH_C(_lh_lexico_LH_C_0_4, _lh_lexico_LH_C_1_4) -> 
                (match _lh_lexico_LH_P2_1_1 with
                  | `LH_N -> 
                    (`Greater)
                  | `LH_C(_lh_lexico_LH_C_0_5, _lh_lexico_LH_C_1_5) -> 
                    ((lex_combine_1 (_lh_lexico_arg1_1 (`LH_P2(_lh_lexico_LH_C_0_4, _lh_lexico_LH_C_0_5)))) ((lexico_1 _lh_lexico_arg1_1) (`LH_P2(_lh_lexico_LH_C_1_4, _lh_lexico_LH_C_1_5))))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and dominates_1 = (fun _lh_dominates_arg1_1 -> 
        ((quant_d4 all_d3) ((quant_d5 any_d2) (gtRewrite_d0 _lh_dominates_arg1_1))))
      and mk_crit_1 = (fun _lh_mk_crit_arg1_1 _lh_mk_crit_arg2_1 _lh_mk_crit_arg3_1 -> 
        (match _lh_mk_crit_arg1_1 with
          | `Eqn(_lh_mk_crit_Eqn_0_2, _lh_mk_crit_Eqn_1_2) -> 
            (match _lh_mk_crit_Eqn_1_2 with
              | `LH_P2(_lh_mk_crit_LH_P2_0_3, _lh_mk_crit_LH_P2_1_3) -> 
                (match _lh_mk_crit_arg2_1 with
                  | `Eqn(_lh_mk_crit_Eqn_0_3, _lh_mk_crit_Eqn_1_3) -> 
                    (match _lh_mk_crit_Eqn_1_3 with
                      | `LH_P2(_lh_mk_crit_LH_P2_0_4, _lh_mk_crit_LH_P2_1_4) -> 
                        (match _lh_mk_crit_arg3_1 with
                          | `LH_P2(_lh_mk_crit_LH_P2_0_5, _lh_mk_crit_LH_P2_1_5) -> 
                            (`LH_P2(((sub_d2 (((replace_d2 _lh_mk_crit_LH_P2_0_4) _lh_mk_crit_LH_P2_0_5) _lh_mk_crit_LH_P2_1_3)) _lh_mk_crit_LH_P2_1_5), ((sub_d3 _lh_mk_crit_LH_P2_1_4) _lh_mk_crit_LH_P2_1_5)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and q_op_1 = (fun _lh_q_op_arg1_1 -> 
        (match _lh_q_op_arg1_1 with
          | `LH_C(_lh_q_op_LH_C_0_3, _lh_q_op_LH_C_1_3) -> 
            (match _lh_q_op_LH_C_0_3 with
              | `Expr(_lh_q_op_Expr_0_2) -> 
                (match _lh_q_op_LH_C_1_3 with
                  | `LH_C(_lh_q_op_LH_C_0_4, _lh_q_op_LH_C_1_4) -> 
                    (match _lh_q_op_LH_C_0_4 with
                      | `MkString(_lh_q_op_MkString_0_1) -> 
                        (match _lh_q_op_LH_C_1_4 with
                          | `LH_C(_lh_q_op_LH_C_0_5, _lh_q_op_LH_C_1_5) -> 
                            (match _lh_q_op_LH_C_0_5 with
                              | `Expr(_lh_q_op_Expr_0_3) -> 
                                (match _lh_q_op_LH_C_1_5 with
                                  | `LH_N -> 
                                    (`Expr((`Func(_lh_q_op_MkString_0_1, (`LH_C(_lh_q_op_Expr_0_2, (`LH_C(_lh_q_op_Expr_0_3, (`LH_N)))))))))
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
            (failwith "error")))
      and superpose_1 = (fun _lh_superpose_arg1_1 _lh_superpose_arg2_1 -> 
        (sift_d0 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
          (match _lh_listcomp_fun_para_1_0 with
            | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
              (match _lh_listcomp_fun_ls_h_1_0 with
                | `LH_P2(_lh_superpose_LH_P2_0_1, _lh_superpose_LH_P2_1_1) -> 
                  (`LH_C(((lift_d7 (pair_d1 _lh_superpose_LH_P2_0_1)) ((unify_d0 _lh_superpose_arg1_1) _lh_superpose_LH_P2_1_1)), (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0)))
                | _ -> 
                  (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))
            | `LH_N -> 
              (`LH_N))) in
          (_lh_listcomp_fun_1_0 (subterms_d2 _lh_superpose_arg2_1)))))
      and rank_order_1 = (fun _lh_rank_order_arg1_1 _lh_rank_order_arg2_1 -> 
        (match _lh_rank_order_arg2_1 with
          | `LH_P2(_lh_rank_order_LH_P2_0_1, _lh_rank_order_LH_P2_1_1) -> 
            (num_order_1 (`LH_P2((_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_0_1), (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_1_1))))
          | _ -> 
            (failwith "error")))
      and is_switch_1 = (fun _lh_is_switch_arg1_1 -> 
        (match _lh_is_switch_arg1_1 with
          | `Switch(_lh_is_switch_Switch_0_1, _lh_is_switch_Switch_1_1) -> 
            true
          | `Return(_lh_is_switch_Return_0_1) -> 
            false
          | _ -> 
            (failwith "error")))
      and multi_1 = (fun _lh_multi_arg1_1 _lh_multi_arg2_1 -> 
        (match _lh_multi_arg2_1 with
          | `LH_P2(_lh_multi_LH_P2_0_2, _lh_multi_LH_P2_1_2) -> 
            (let rec _lh_matchIdent_2_1 = ((rem_eq_1 (eqRewrite_d0 _lh_multi_arg1_1)) (`LH_P2(_lh_multi_LH_P2_0_2, _lh_multi_LH_P2_1_2))) in
              (match _lh_matchIdent_2_1 with
                | `LH_P2(_lh_multi_LH_P2_0_3, _lh_multi_LH_P2_1_3) -> 
                  (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_0_3) _lh_multi_LH_P2_1_3) then
                    (`Greater)
                  else
                    (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_1_3) _lh_multi_LH_P2_0_3) then
                      (`Less)
                    else
                      (`Unrelated)))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))
      and mk_list_1 = (fun _lh_mk_list_arg1_1 _lh_mk_list_arg2_1 -> 
        (match _lh_mk_list_arg2_1 with
          | `List(_lh_mk_list_List_0_1) -> 
            (_lh_mk_list_arg1_1 _lh_mk_list_List_0_1)
          | _ -> 
            (failwith "error")))
      and find_assoc_1 = (fun _lh_find_assoc_arg1_1 _lh_find_assoc_arg2_1 _lh_find_assoc_arg3_1 -> 
        (match _lh_find_assoc_arg1_1 with
          | `Afunc(_lh_find_assoc_Afunc_0_1) -> 
            ((getOrElse_d0 ((lift_d1 (find'_1 _lh_find_assoc_arg2_1)) ((assoc_d0 _lh_find_assoc_arg3_1) _lh_find_assoc_Afunc_0_1))) (`LH_N))
          | `Avar -> 
            (`LH_N)
          | _ -> 
            (failwith "error")))
      and addby_1 = (fun _lh_addby_arg1_1 _lh_addby_arg2_1 _lh_addby_arg3_1 -> 
        (let rec insert_1 = (fun x_3_2 ls_5_2 -> 
          (let rec _lh_matchIdent_2_4 = ls_5_2 in
            (match _lh_matchIdent_2_4 with
              | `LH_N -> 
                (`LH_C(x_3_2, (`LH_N)))
              | `LH_C(_lh_addby_LH_C_0_1, _lh_addby_LH_C_1_1) -> 
                (if ((_lh_addby_arg1_1 x_3_2) <= (_lh_addby_arg1_1 _lh_addby_LH_C_0_1)) then
                  (`LH_C(x_3_2, (`LH_C(_lh_addby_LH_C_0_1, _lh_addby_LH_C_1_1))))
                else
                  (`LH_C(_lh_addby_LH_C_0_1, ((insert_1 x_3_2) _lh_addby_LH_C_1_1))))
              | _ -> 
                (failwith "error")))) in
          (((foldr_d2 insert_1) _lh_addby_arg3_1) _lh_addby_arg2_1)))
      and reducible_1 = (fun _lh_reducible_arg1_1 _lh_reducible_arg2_1 -> 
        (match _lh_reducible_arg2_1 with
          | `Eqn(_lh_reducible_Eqn_0_1, _lh_reducible_Eqn_1_1) -> 
            (match _lh_reducible_Eqn_1_1 with
              | `LH_P2(_lh_reducible_LH_P2_0_1, _lh_reducible_LH_P2_1_1) -> 
                ((exists_d0 (_lh_reducible_arg1_1 _lh_reducible_LH_P2_0_1)) || (exists_d1 (_lh_reducible_arg1_1 _lh_reducible_LH_P2_1_1)))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and delete_1 = (fun _lh_delete_arg1_1 _lh_delete_arg2_1 _lh_delete_arg3_1 -> 
        (match _lh_delete_arg3_1 with
          | `LH_N -> 
            croak_d1
          | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
            (if ((_lh_delete_arg1_1 _lh_delete_arg2_1) _lh_delete_LH_C_0_1) then
              (succeed_d6 _lh_delete_LH_C_1_1)
            else
              ((lift_d9 (fun x_3_1 -> 
                (`LH_C(_lh_delete_LH_C_0_1, x_3_1)))) (((delete_1 _lh_delete_arg1_1) _lh_delete_arg2_1) _lh_delete_LH_C_1_1)))
          | _ -> 
            (failwith "error")))
      and pchar_1 = (fun _lh_pchar_arg1_1 _lh_pchar_arg2_1 -> 
        (match _lh_pchar_arg2_1 with
          | `LH_N -> 
            croak_d2
          | `LH_C(_lh_pchar_LH_C_0_1, _lh_pchar_LH_C_1_1) -> 
            (if (_lh_pchar_arg1_1 _lh_pchar_LH_C_0_1) then
              (succeed_d7 (`LH_P2((`MkString((`LH_C(_lh_pchar_LH_C_0_1, (`LH_N))))), _lh_pchar_LH_C_1_1)))
            else
              croak_d3)
          | _ -> 
            (failwith "error")))
      and seq2Lzq_1 = (fun _lh_seq2Lzq_arg1_1 _lh_seq2Lzq_arg2_1 _lh_seq2Lzq_arg3_1 -> 
        (let rec g_2 = (fun xs_2_5 -> 
          (let rec _lh_matchIdent_2_5 = xs_2_5 in
            (match _lh_matchIdent_2_5 with
              | `LH_P2(_lh_seq2Lzq_LH_P2_0_1, _lh_seq2Lzq_LH_P2_1_1) -> 
                ((lift_d5 ((cross_d1 (_lh_seq2Lzq_arg1_1 _lh_seq2Lzq_LH_P2_0_1)) (fun x_3_3 -> 
                  x_3_3))) ((Lazy.force _lh_seq2Lzq_arg3_1) _lh_seq2Lzq_LH_P2_1_1))
              | _ -> 
                (failwith "error")))) in
          (fun _lh_funcomp_x_1_7 -> 
            ((fun _lh_funcomp_x_1_8 -> 
              (squash_d1 ((lift_d6 g_2) _lh_funcomp_x_1_8))) (_lh_seq2Lzq_arg2_1 _lh_funcomp_x_1_7)))))
      and p_term_1 = (fun _lh_p_term_arg1_1 -> 
        (((orElseMap_d3 ((seQ_1 q_func_1) (`LH_C(p_ident_1, (`LH_C((look_for_1 '('), (`LH_C(((list_of_1 p_expr_1) ','), (`LH_C((look_for_1 ')'), (`LH_N))))))))))) p_prim_1) _lh_p_term_arg1_1))
      and g_first_1 = (fun _lh_g_first_arg1_1 -> 
        (match _lh_g_first_arg1_1 with
          | `LH_C(_lh_g_first_LH_C_0_1, _lh_g_first_LH_C_1_1) -> 
            (match _lh_g_first_LH_C_0_1 with
              | `Func(_lh_g_first_Func_0_1, _lh_g_first_Func_1_1) -> 
                (`Afunc(_lh_g_first_Func_0_1))
              | `Var(_lh_g_first_Var_0_1) -> 
                (`Avar)
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and seQ_1 = (fun _lh_seQ_arg1_1 _lh_seQ_arg2_1 -> 
        ((build_1 (mk_list_1 _lh_seQ_arg1_1)) (((foldr_d1 (seq2_1 mk_cons_1)) empty_1) _lh_seQ_arg2_1)))
      and thread_1 = (fun _lh_thread_arg1_1 _lh_thread_arg2_1 _lh_thread_arg3_1 -> 
        (match _lh_thread_arg1_1 with
          | `LH_C(_lh_thread_LH_C_0_1, _lh_thread_LH_C_1_1) -> 
            (match _lh_thread_LH_C_0_1 with
              | `Afunc(_lh_thread_Afunc_0_1) -> 
                (match _lh_thread_arg3_1 with
                  | `Switch(_lh_thread_Switch_0_2, _lh_thread_Switch_1_2) -> 
                    (`Switch(((((update_alist_d0 _lh_thread_Afunc_0_1) ((thread_1 _lh_thread_LH_C_1_1) _lh_thread_arg2_1)) empty_net_1) _lh_thread_Switch_0_2), _lh_thread_Switch_1_2))
                  | `Return(_lh_thread_Return_0_3) -> 
                    (((thread_1 (`LH_C((`Afunc(_lh_thread_Afunc_0_1)), _lh_thread_LH_C_1_1))) _lh_thread_arg2_1) (`Switch((`LH_N), (`Return(_lh_thread_Return_0_3)))))
                  | _ -> 
                    (failwith "error"))
              | `Avar -> 
                (match _lh_thread_arg3_1 with
                  | `Switch(_lh_thread_Switch_0_3, _lh_thread_Switch_1_3) -> 
                    (`Switch(_lh_thread_Switch_0_3, (((thread_1 _lh_thread_LH_C_1_1) _lh_thread_arg2_1) _lh_thread_Switch_1_3)))
                  | `Return(_lh_thread_Return_0_4) -> 
                    (let rec d'_1 = (((thread_1 _lh_thread_LH_C_1_1) _lh_thread_arg2_1) (`Return(_lh_thread_Return_0_4))) in
                      (if (is_switch_1 d'_1) then
                        (`Switch((`LH_N), d'_1))
                      else
                        d'_1))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | `LH_N -> 
            (match _lh_thread_arg3_1 with
              | `Return(_lh_thread_Return_0_5) -> 
                (`Return((`LH_C(_lh_thread_arg2_1, _lh_thread_Return_0_5))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and rpo_1 = (fun _lh_rpo_arg1_1 _lh_rpo_arg2_1 -> 
        (let rec rpo'_1 = (fun param_1 -> 
          (let rec _lh_matchIdent_2_6 = param_1 in
            (match _lh_matchIdent_2_6 with
              | `LH_P2(_lh_rpo_LH_P2_0_1, _lh_rpo_LH_P2_1_1) -> 
                (match _lh_rpo_LH_P2_0_1 with
                  | `Var(_lh_rpo_Var_0_3) -> 
                    (match _lh_rpo_LH_P2_1_1 with
                      | `Var(_lh_rpo_Var_0_4) -> 
                        (if (_lh_rpo_Var_0_3 = _lh_rpo_Var_0_4) then
                          (`Equal)
                        else
                          (`Unrelated))
                      | `Func(_lh_rpo_Func_0_3, _lh_rpo_Func_1_3) -> 
                        (if ((occurs_d0 _lh_rpo_Var_0_3) (`Func(_lh_rpo_Func_0_3, _lh_rpo_Func_1_3))) then
                          (`Less)
                        else
                          (`Unrelated))
                      | _ -> 
                        ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                  | `Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4) -> 
                    (match _lh_rpo_LH_P2_1_1 with
                      | `Var(_lh_rpo_Var_0_5) -> 
                        (if ((occurs_d1 _lh_rpo_Var_0_5) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) then
                          (`Greater)
                        else
                          (`Unrelated))
                      | `Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5) -> 
                        (let rec _lh_matchIdent_2_7 = (_lh_rpo_arg1_1 (`LH_P2(_lh_rpo_Func_0_4, _lh_rpo_Func_0_5))) in
                          (match _lh_matchIdent_2_7 with
                            | `Equal -> 
                              ((_lh_rpo_arg2_1 rpo'_1) (`LH_P2((`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4)), (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5)))))
                            | `Greater -> 
                              (if ((((quant_d6 all_d4) (ltRewrite_d2 rpo'_1)) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) _lh_rpo_Func_1_5) then
                                (`Greater)
                              else
                                (if ((((quant_d7 any_d3) (geRewrite_d2 rpo'_1)) (`Func(_lh_rpo_Func_0_4, _lh_rpo_Func_1_4))) _lh_rpo_Func_1_5) then
                                  (`Less)
                                else
                                  (`Unrelated)))
                            | `Less -> 
                              (if ((((quant_d8 all_d5) (ltRewrite_d3 rpo'_1)) (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5))) _lh_rpo_Func_1_4) then
                                (`Less)
                              else
                                (if ((((quant_d9 any_d4) (geRewrite_d3 rpo'_1)) (`Func(_lh_rpo_Func_0_5, _lh_rpo_Func_1_5))) _lh_rpo_Func_1_4) then
                                  (`Greater)
                                else
                                  (`Unrelated)))
                            | `Unrelated -> 
                              (`Unrelated)
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                  | _ -> 
                    ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
              | _ -> 
                ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))) in
          rpo'_1))
      and rem_eq_1 = (fun _lh_rem_eq_arg1_1 _lh_rem_eq_arg2_1 -> 
        (match _lh_rem_eq_arg2_1 with
          | `LH_P2(_lh_rem_eq_LH_P2_0_2, _lh_rem_eq_LH_P2_1_2) -> 
            (match _lh_rem_eq_LH_P2_0_2 with
              | `LH_N -> 
                (`LH_P2((`LH_N), _lh_rem_eq_LH_P2_1_2))
              | `LH_C(_lh_rem_eq_LH_C_0_1, _lh_rem_eq_LH_C_1_1) -> 
                (let rec add_x_1 = (fun xsys_1 -> 
                  (let rec _lh_matchIdent_2_2 = xsys_1 in
                    (match _lh_matchIdent_2_2 with
                      | `LH_P2(_lh_rem_eq_LH_P2_0_3, _lh_rem_eq_LH_P2_1_3) -> 
                        (`LH_P2((`LH_C(_lh_rem_eq_LH_C_0_1, _lh_rem_eq_LH_P2_0_3)), _lh_rem_eq_LH_P2_1_3))
                      | _ -> 
                        (failwith "error")))) in
                  ((getOrElse_d1 ((lift_d4 (fun _lh_funcomp_x_1_6 -> 
                    ((rem_eq_1 _lh_rem_eq_arg1_1) ((pair_d0 _lh_rem_eq_LH_C_1_1) _lh_funcomp_x_1_6)))) (((delete_1 _lh_rem_eq_arg1_1) _lh_rem_eq_LH_C_0_1) _lh_rem_eq_LH_P2_1_2))) (add_x_1 ((rem_eq_1 _lh_rem_eq_arg1_1) (`LH_P2(_lh_rem_eq_LH_C_1_1, _lh_rem_eq_LH_P2_1_2))))))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and g_rest_1 = (fun _lh_g_rest_arg1_1 -> 
        (match _lh_g_rest_arg1_1 with
          | `LH_C(_lh_g_rest_LH_C_0_1, _lh_g_rest_LH_C_1_1) -> 
            (match _lh_g_rest_LH_C_0_1 with
              | `Func(_lh_g_rest_Func_0_1, _lh_g_rest_Func_1_1) -> 
                ((mappend_d7 _lh_g_rest_Func_1_1) _lh_g_rest_LH_C_1_1)
              | `Var(_lh_g_rest_Var_0_1) -> 
                _lh_g_rest_LH_C_1_1
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and p_name_1 = (fun _lh_p_name_arg1_1 -> 
        (((build_1 q_name_1) p_ident_1) _lh_p_name_arg1_1))
      and p_expr_1 = (fun _lh_p_expr_arg1_1 -> 
        (((orElseMap_d2 ((seQ_1 q_op_1) (`LH_C(p_term_1, (`LH_C(p_op_1, (`LH_C(p_term_1, (`LH_N))))))))) p_term_1) _lh_p_expr_arg1_1))
      and preprocess_1 = (fun _lh_preprocess_arg1_1 _lh_preprocess_arg2_1 -> 
        (match _lh_preprocess_arg2_1 with
          | `LH_P2(_lh_preprocess_LH_P2_0_1, _lh_preprocess_LH_P2_1_1) -> 
            (`LH_P2(((simplify_d0 (super_reduce_1 _lh_preprocess_arg1_1)) _lh_preprocess_LH_P2_0_1), ((simplify_d1 (super_reduce_1 _lh_preprocess_arg1_1)) _lh_preprocess_LH_P2_1_1)))
          | _ -> 
            (failwith "error")))
      and q_name_1 = (fun _lh_q_name_arg1_1 -> 
        (match _lh_q_name_arg1_1 with
          | `MkString(_lh_q_name_MkString_0_1) -> 
            (if (((int_of_char ((atIndex_d0 0) _lh_q_name_MkString_0_1)) >= (int_of_char 'a')) && ((int_of_char ((atIndex_d1 0) _lh_q_name_MkString_0_1)) <= (int_of_char 'z'))) then
              (`Expr((`Var(_lh_q_name_MkString_0_1))))
            else
              (`Expr((`Func(_lh_q_name_MkString_0_1, (`LH_N))))))
          | _ -> 
            (failwith "error")))
      and list_of_1 = (fun _lh_list_of_arg1_1 _lh_list_of_arg2_1 -> 
        (let rec p'_1 = (lazy (((seq2_1 mk_cons_1) _lh_list_of_arg1_1) ((orElseMap_d0 (((seq2Lzq_1 (fun x_3_9 y_1_0 -> 
          y_1_0)) (look_for_1 _lh_list_of_arg2_1)) p'_1)) empty_1))) in
          (Lazy.force p'_1)))
      and resolve_1 = (fun _lh_resolve_arg1_1 _lh_resolve_arg2_1 -> 
        (let rec lhs'_1 = ((simplify_d2 _lh_resolve_arg1_1) (fst_d2 _lh_resolve_arg2_1)) in
          (let rec rhs'_1 = ((simplify_d3 _lh_resolve_arg1_1) (snd_d2 _lh_resolve_arg2_1)) in
            (if ((eqExpr_d0 lhs'_1) rhs'_1) then
              croak_d0
            else
              (succeed_d5 (`LH_P2(lhs'_1, rhs'_1)))))))
      and rank_1 = (fun _lh_rank_arg1_1 -> 
        (match _lh_rank_arg1_1 with
          | `LH_C(_lh_rank_LH_C_0_1, _lh_rank_LH_C_1_1) -> 
            (match _lh_rank_LH_C_0_1 with
              | 'E' -> 
                (match _lh_rank_LH_C_1_1 with
                  | `LH_N -> 
                    1
                  | _ -> 
                    (failwith "error"))
              | '*' -> 
                (match _lh_rank_LH_C_1_1 with
                  | `LH_N -> 
                    2
                  | _ -> 
                    (failwith "error"))
              | 'I' -> 
                (match _lh_rank_LH_C_1_1 with
                  | `LH_N -> 
                    3
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error")))
      and p_eqn_1 = (fun _lh_p_eqn_arg1_1 -> 
        (((seQ_1 q_eqn_1) (`LH_C(p_expr_1, (`LH_C((look_for_1 '='), (`LH_C(p_expr_1, (`LH_N)))))))) _lh_p_eqn_arg1_1))
      and strict_super_1 = (fun _lh_strict_super_arg1_1 _lh_strict_super_arg2_1 -> 
        (match _lh_strict_super_arg2_1 with
          | `Func(_lh_strict_super_Func_0_1, _lh_strict_super_Func_1_1) -> 
            (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
              (match _lh_listcomp_fun_para_1_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
                  (match _lh_listcomp_fun_ls_h_1_3 with
                    | `LH_P2(_lh_strict_super_LH_P2_0_2, _lh_strict_super_LH_P2_1_2) -> 
                      (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
                        (match _lh_listcomp_fun_para_1_4 with
                          | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
                            (match _lh_listcomp_fun_ls_h_1_4 with
                              | `LH_P2(_lh_strict_super_LH_P2_0_3, _lh_strict_super_LH_P2_1_3) -> 
                                (`LH_C((`LH_P2((`LH_C(_lh_strict_super_LH_P2_0_2, _lh_strict_super_LH_P2_0_3)), _lh_strict_super_LH_P2_1_3)), (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4)))
                              | _ -> 
                                (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))
                          | `LH_N -> 
                            (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))) in
                        (_lh_listcomp_fun_1_4 ((superpose_1 _lh_strict_super_arg1_1) _lh_strict_super_LH_P2_1_2)))
                    | _ -> 
                      (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1_3 ((zip_lz_nl_d3 (enumFrom_d0 0)) _lh_strict_super_Func_1_1)))
          | _ -> 
            (failwith "error")))
      and p_op_1 = (fun _lh_p_op_arg1_1 -> 
        ((sp_1 (string_of_1 opsym_1)) _lh_p_op_arg1_1))
      and parse_eqn_1 = (fun _lh_parse_eqn_arg1_1 -> 
        (let rec _lh_matchIdent_2_3 = (fst_d3 (the_d3 (p_eqn_1 _lh_parse_eqn_arg1_1))) in
          (match _lh_matchIdent_2_3 with
            | `List(_lh_parse_eqn_List_0_1) -> 
              (match _lh_parse_eqn_List_0_1 with
                | `LH_C(_lh_parse_eqn_LH_C_0_2, _lh_parse_eqn_LH_C_1_2) -> 
                  (match _lh_parse_eqn_LH_C_0_2 with
                    | `Expr(_lh_parse_eqn_Expr_0_2) -> 
                      (match _lh_parse_eqn_LH_C_1_2 with
                        | `LH_C(_lh_parse_eqn_LH_C_0_3, _lh_parse_eqn_LH_C_1_3) -> 
                          (match _lh_parse_eqn_LH_C_0_3 with
                            | `Expr(_lh_parse_eqn_Expr_0_3) -> 
                              (match _lh_parse_eqn_LH_C_1_3 with
                                | `LH_N -> 
                                  (`LH_P2(_lh_parse_eqn_Expr_0_2, _lh_parse_eqn_Expr_0_3))
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
              (failwith "error"))))
      and find'_1 = (fun _lh_find'_arg1_1 _lh_find'_arg2_1 -> 
        (match _lh_find'_arg2_1 with
          | `Return(_lh_find'_Return_0_1) -> 
            _lh_find'_Return_0_1
          | `Switch(_lh_find'_Switch_0_1, _lh_find'_Switch_1_1) -> 
            ((mappend_d2 (((find_assoc_1 (g_first_1 _lh_find'_arg1_1)) (g_rest_1 _lh_find'_arg1_1)) _lh_find'_Switch_0_1)) ((find'_1 (g_skip_1 _lh_find'_arg1_1)) _lh_find'_Switch_1_1))
          | _ -> 
            (failwith "error")))
      and add_eqn_1 = (fun _lh_add_eqn_arg1_1 _lh_add_eqn_arg2_1 -> 
        (((thread_1 (preorder_1 (g_init_1 (lhs_d4 _lh_add_eqn_arg2_1)))) _lh_add_eqn_arg2_1) _lh_add_eqn_arg1_1))
      and parse_1 = (fun _lh_parse_arg1_1 -> 
        ((fun _lh_funcomp_x_2_3 -> 
          ((fun _lh_funcomp_x_2_4 -> 
            ((fun _lh_funcomp_x_2_5 -> 
              (unExpr_1 (fst_d1 _lh_funcomp_x_2_5))) (the_d2 _lh_funcomp_x_2_4))) (p_expr_1 _lh_funcomp_x_2_3))) _lh_parse_arg1_1))
      and preorder_1 = (fun _lh_preorder_arg1_1 -> 
        (if ((eqListExpr_d2 _lh_preorder_arg1_1) (`LH_N)) then
          (`LH_N)
        else
          ((mappend_d8 (`LH_C((g_first_1 _lh_preorder_arg1_1), (`LH_N)))) (preorder_1 (g_rest_1 _lh_preorder_arg1_1)))))
      and lex_combine_1 = (fun _lh_lex_combine_arg1_1 _lh_lex_combine_arg2_1 -> 
        (match _lh_lex_combine_arg1_1 with
          | `Equal -> 
            _lh_lex_combine_arg2_1
          | `Greater -> 
            (`Greater)
          | `Less -> 
            (`Less)
          | `Unrelated -> 
            (`Unrelated)
          | _ -> 
            (failwith "error")))
      and g_skip_1 = (fun _lh_g_skip_arg1_1 -> 
        (tail_d0 _lh_g_skip_arg1_1))
      and num_order_1 = (fun _lh_num_order_arg1_1 -> 
        (match _lh_num_order_arg1_1 with
          | `LH_P2(_lh_num_order_LH_P2_0_1, _lh_num_order_LH_P2_1_1) -> 
            (if (_lh_num_order_LH_P2_0_1 > _lh_num_order_LH_P2_1_1) then
              (`Greater)
            else
              (if (_lh_num_order_LH_P2_0_1 < _lh_num_order_LH_P2_1_1) then
                (`Less)
              else
                (`Equal)))
          | _ -> 
            (failwith "error")))
      and dnet_reduce_1 = (fun _lh_dnet_reduce_arg1_1 _lh_dnet_reduce_arg2_1 -> 
        ((try_all_d0 ((map_d1_d0 rewrite_d1) ((find_1 _lh_dnet_reduce_arg2_1) _lh_dnet_reduce_arg1_1))) _lh_dnet_reduce_arg2_1))
      and sp_1 = (fun _lh_sp_arg1_1 _lh_funcomp_x_2_0 -> 
        (_lh_sp_arg1_1 ((dropWhile_d0 (fun x_4_0 -> 
          (x_4_0 = ' '))) _lh_funcomp_x_2_0)))
      and item_cost_1 = (fun _lh_item_cost_arg1_1 -> 
        (match _lh_item_cost_arg1_1 with
          | `Item(_lh_item_cost_Item_0_1, _lh_item_cost_Item_1_1) -> 
            _lh_item_cost_Item_0_1
          | _ -> 
            (failwith "error")))
      and unExpr_1 = (fun _lh_unExpr_arg1_1 -> 
        (match _lh_unExpr_arg1_1 with
          | `Expr(_lh_unExpr_Expr_0_1) -> 
            _lh_unExpr_Expr_0_1
          | _ -> 
            (failwith "error")))
      in (let rec group_completion_1 = ((knuth_bendix_1 ((rpo_1 (rank_order_1 rank_1)) lex_ext_1)) ((map_d1_d5 parse_eqn_1) (`LH_C((`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('x', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('I', (`LH_C('(', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('E', (`LH_N))))))))))))))))))))))))), (`LH_N))))))))) in
        ((eqExpr_d1 ((simplify_d4 (super_reduce_1 group_completion_1)) (parse_1 _lh_result_LH_P2_0_1))) (parse_1 _lh_result_LH_P2_1_1)))
    | _ -> 
      (failwith "error"))
and rewrite_d0 _lh_rewrite_arg1_2 =
  (match _lh_rewrite_arg1_2 with
    | `Eqn(_lh_rewrite_Eqn_0_2, _lh_rewrite_Eqn_1_2) -> 
      (match _lh_rewrite_Eqn_1_2 with
        | `LH_P2(_lh_rewrite_LH_P2_0_2, _lh_rewrite_LH_P2_1_2) -> 
          (fun _lh_funcomp_x_1_5 -> 
            ((lift_d1_d1 (sub_d0 _lh_rewrite_LH_P2_1_2)) ((match_d0 _lh_rewrite_LH_P2_0_2) _lh_funcomp_x_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewrite_d1 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Eqn(_lh_rewrite_Eqn_0_1, _lh_rewrite_Eqn_1_1) -> 
      (match _lh_rewrite_Eqn_1_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (fun _lh_funcomp_x_1_4 -> 
            ((lift_d1_d2 (sub_d1 _lh_rewrite_LH_P2_1_1)) ((match_d1 _lh_rewrite_LH_P2_0_1) _lh_funcomp_x_1_4)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and sift_d0 _lh_sift_arg1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (concat_d1 ((map_d2_d4 listify_d0) _lh_funcomp_x_1_3))) _lh_sift_arg1_2)
and sift_d1 _lh_sift_arg1_1 =
  ((fun _lh_funcomp_x_1_2 -> 
    (concat_d2 ((map_d2_d5 listify_d1) _lh_funcomp_x_1_2))) _lh_sift_arg1_1)
and simplify_d0 _lh_simplify_arg1_2 =
  (let rec f_3_5 = (fun t_5_8 -> 
    ((getOrElse_d6 ((lift_d1_d5 f_3_5) (_lh_simplify_arg1_2 t_5_8))) t_5_8)) in
    f_3_5)
and simplify_d1 _lh_simplify_arg1_4 =
  (let rec f_7_1 = (fun t_1_1_5 -> 
    ((getOrElse_d7 ((lift_d1_d6 f_7_1) (_lh_simplify_arg1_4 t_1_1_5))) t_1_1_5)) in
    f_7_1)
and simplify_d2 _lh_simplify_arg1_5 =
  (let rec f_7_9 = (fun t_1_2_4 -> 
    ((getOrElse_d8 ((lift_d1_d7 f_7_9) (_lh_simplify_arg1_5 t_1_2_4))) t_1_2_4)) in
    f_7_9)
and simplify_d3 _lh_simplify_arg1_1 =
  (let rec f_2_8 = (fun t_4_7 -> 
    ((getOrElse_d9 ((lift_d1_d8 f_2_8) (_lh_simplify_arg1_1 t_4_7))) t_4_7)) in
    f_2_8)
and simplify_d4 _lh_simplify_arg1_3 =
  (let rec f_3_9 = (fun t_6_3 -> 
    ((getOrElse_d1_d0 ((lift_d1_d9 f_3_9) (_lh_simplify_arg1_3 t_6_3))) t_6_3)) in
    f_3_9)
and stand_eqn_d0 _lh_stand_eqn_arg1_1 _lh_stand_eqn_arg2_1 =
  (match _lh_stand_eqn_arg2_1 with
    | `Eqn(_lh_stand_eqn_Eqn_0_1, _lh_stand_eqn_Eqn_1_1) -> 
      (match _lh_stand_eqn_Eqn_1_1 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_1, _lh_stand_eqn_LH_P2_1_1) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_1, (`LH_P2(((stand_d0 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_0_1), ((stand_d1 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn_d1 _lh_stand_eqn_arg1_2 _lh_stand_eqn_arg2_2 =
  (match _lh_stand_eqn_arg2_2 with
    | `Eqn(_lh_stand_eqn_Eqn_0_2, _lh_stand_eqn_Eqn_1_2) -> 
      (match _lh_stand_eqn_Eqn_1_2 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_2, _lh_stand_eqn_LH_P2_1_2) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_2, (`LH_P2(((stand_d2 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_0_2), ((stand_d3 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn_d2 _lh_stand_eqn_arg1_3 _lh_stand_eqn_arg2_3 =
  (match _lh_stand_eqn_arg2_3 with
    | `Eqn(_lh_stand_eqn_Eqn_0_3, _lh_stand_eqn_Eqn_1_3) -> 
      (match _lh_stand_eqn_Eqn_1_3 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_3, _lh_stand_eqn_LH_P2_1_3) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_3, (`LH_P2(((stand_d4 _lh_stand_eqn_arg1_3) _lh_stand_eqn_LH_P2_0_3), ((stand_d5 _lh_stand_eqn_arg1_3) _lh_stand_eqn_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_d0 _lh_stand_arg1_5 =
  ((expr_fold_d5 (fun x_4_8 y_1_2 -> 
    (`Func(x_4_8, y_1_2)))) (fun v_5 -> 
    (`Var(((mappend_d1_d2 v_5) _lh_stand_arg1_5)))))
and stand_d1 _lh_stand_arg1_6 =
  ((expr_fold_d6 (fun x_5_8 y_1_7 -> 
    (`Func(x_5_8, y_1_7)))) (fun v_6 -> 
    (`Var(((mappend_d1_d3 v_6) _lh_stand_arg1_6)))))
and stand_d2 _lh_stand_arg1_2 =
  ((expr_fold_d7 (fun x_2_9 y_8 -> 
    (`Func(x_2_9, y_8)))) (fun v_2 -> 
    (`Var(((mappend_d1_d4 v_2) _lh_stand_arg1_2)))))
and stand_d3 _lh_stand_arg1_3 =
  ((expr_fold_d8 (fun x_3_0 y_9 -> 
    (`Func(x_3_0, y_9)))) (fun v_3 -> 
    (`Var(((mappend_d1_d5 v_3) _lh_stand_arg1_3)))))
and stand_d4 _lh_stand_arg1_1 =
  ((expr_fold_d9 (fun x_2_2 y_4 -> 
    (`Func(x_2_2, y_4)))) (fun v_1 -> 
    (`Var(((mappend_d1_d6 v_1) _lh_stand_arg1_1)))))
and stand_d5 _lh_stand_arg1_4 =
  ((expr_fold_d1_d0 (fun x_4_3 y_1_1 -> 
    (`Func(x_4_3, y_1_1)))) (fun v_4 -> 
    (`Var(((mappend_d1_d7 v_4) _lh_stand_arg1_4)))))
and subterms_d0 _lh_subterms_arg1_1 =
  (match _lh_subterms_arg1_1 with
    | `Var(_lh_subterms_Var_0_1) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1) -> 
      ((mappend_d1 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1)))), (`LH_N)))) (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
        (match _lh_listcomp_fun_para_1_5 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
            (match _lh_listcomp_fun_ls_h_1_5 with
              | `LH_P2(_lh_subterms_LH_P2_0_2, _lh_subterms_LH_P2_1_2) -> 
                (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_6 -> 
                  (match _lh_listcomp_fun_para_1_6 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_6) -> 
                      (match _lh_listcomp_fun_ls_h_1_6 with
                        | `LH_P2(_lh_subterms_LH_P2_0_3, _lh_subterms_LH_P2_1_3) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_2, _lh_subterms_LH_P2_0_3)), _lh_subterms_LH_P2_1_3)), (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6)))
                        | _ -> 
                          (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6))
                    | `LH_N -> 
                      (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))) in
                  (_lh_listcomp_fun_1_6 (subterms_d0 _lh_subterms_LH_P2_1_2)))
              | _ -> 
                (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_5 ((zip_lz_nl_d0 (enumFrom_d1 0)) _lh_subterms_Func_1_1))))
    | _ -> 
      (failwith "error"))
and subterms_d1 _lh_subterms_arg1_2 =
  (match _lh_subterms_arg1_2 with
    | `Var(_lh_subterms_Var_0_2) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2) -> 
      ((mappend_d9 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2)))), (`LH_N)))) (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_8 -> 
        (match _lh_listcomp_fun_para_1_8 with
          | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_8) -> 
            (match _lh_listcomp_fun_ls_h_1_8 with
              | `LH_P2(_lh_subterms_LH_P2_0_4, _lh_subterms_LH_P2_1_4) -> 
                (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_9 -> 
                  (match _lh_listcomp_fun_para_1_9 with
                    | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
                      (match _lh_listcomp_fun_ls_h_1_9 with
                        | `LH_P2(_lh_subterms_LH_P2_0_5, _lh_subterms_LH_P2_1_5) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_4, _lh_subterms_LH_P2_0_5)), _lh_subterms_LH_P2_1_5)), (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9)))
                        | _ -> 
                          (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9))
                    | `LH_N -> 
                      (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))) in
                  (_lh_listcomp_fun_1_9 (subterms_d1 _lh_subterms_LH_P2_1_4)))
              | _ -> 
                (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1_8 ((zip_lz_nl_d1 (enumFrom_d2 0)) _lh_subterms_Func_1_2))))
    | _ -> 
      (failwith "error"))
and subterms_d2 _lh_subterms_arg1_3 =
  (match _lh_subterms_arg1_3 with
    | `Var(_lh_subterms_Var_0_3) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_3, _lh_subterms_Func_1_3) -> 
      ((mappend_d1_d8 (`LH_C((`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_3, _lh_subterms_Func_1_3)))), (`LH_N)))) (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_2_2 -> 
        (match _lh_listcomp_fun_para_2_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2_2, _lh_listcomp_fun_ls_t_2_2) -> 
            (match _lh_listcomp_fun_ls_h_2_2 with
              | `LH_P2(_lh_subterms_LH_P2_0_6, _lh_subterms_LH_P2_1_6) -> 
                (let rec _lh_listcomp_fun_2_3 = (fun _lh_listcomp_fun_para_2_3 -> 
                  (match _lh_listcomp_fun_para_2_3 with
                    | `LH_C(_lh_listcomp_fun_ls_h_2_3, _lh_listcomp_fun_ls_t_2_3) -> 
                      (match _lh_listcomp_fun_ls_h_2_3 with
                        | `LH_P2(_lh_subterms_LH_P2_0_7, _lh_subterms_LH_P2_1_7) -> 
                          (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_6, _lh_subterms_LH_P2_0_7)), _lh_subterms_LH_P2_1_7)), (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_3)))
                        | _ -> 
                          (_lh_listcomp_fun_2_3 _lh_listcomp_fun_ls_t_2_3))
                    | `LH_N -> 
                      (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2))) in
                  (_lh_listcomp_fun_2_3 (subterms_d2 _lh_subterms_LH_P2_1_6)))
              | _ -> 
                (_lh_listcomp_fun_2_2 _lh_listcomp_fun_ls_t_2_2))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2_2 ((zip_lz_nl_d2 (enumFrom_d3 0)) _lh_subterms_Func_1_3))))
    | _ -> 
      (failwith "error"))
and sub_d0 _lh_sub_arg1_7 _lh_sub_arg2_7 =
  (((expr_fold_d3 (fun x_5_5 y_1_5 -> 
    (`Func(x_5_5, y_1_5)))) (apply_d0 _lh_sub_arg2_7)) _lh_sub_arg1_7)
and sub_d1 _lh_sub_arg1_1 _lh_sub_arg2_1 =
  (((expr_fold_d4 (fun x_2_0 y_3 -> 
    (`Func(x_2_0, y_3)))) (apply_d1 _lh_sub_arg2_1)) _lh_sub_arg1_1)
and sub_d2 _lh_sub_arg1_3 _lh_sub_arg2_3 =
  (((expr_fold_d1_d1 (fun x_2_5 y_6 -> 
    (`Func(x_2_5, y_6)))) (apply_d2 _lh_sub_arg2_3)) _lh_sub_arg1_3)
and sub_d3 _lh_sub_arg1_8 _lh_sub_arg2_8 =
  (((expr_fold_d1_d2 (fun x_5_7 y_1_6 -> 
    (`Func(x_5_7, y_1_6)))) (apply_d3 _lh_sub_arg2_8)) _lh_sub_arg1_8)
and sub_d4 _lh_sub_arg1_6 _lh_sub_arg2_6 =
  (((expr_fold_d1_d3 (fun x_5_3 y_1_4 -> 
    (`Func(x_5_3, y_1_4)))) (apply_d4 _lh_sub_arg2_6)) _lh_sub_arg1_6)
and sub_d5 _lh_sub_arg1_2 _lh_sub_arg2_2 =
  (((expr_fold_d1_d5 (fun x_2_3 y_5 -> 
    (`Func(x_2_3, y_5)))) (apply_d5 _lh_sub_arg2_2)) _lh_sub_arg1_2)
and sub_d6 _lh_sub_arg1_5 _lh_sub_arg2_5 =
  (((expr_fold_d1_d6 (fun x_5_0 y_1_3 -> 
    (`Func(x_5_0, y_1_3)))) (apply_d6 _lh_sub_arg2_5)) _lh_sub_arg1_5)
and sub_d7 _lh_sub_arg1_4 _lh_sub_arg2_4 =
  (((expr_fold_d1_d8 (fun x_2_6 y_7 -> 
    (`Func(x_2_6, y_7)))) (apply_d7 _lh_sub_arg2_4)) _lh_sub_arg1_4)
and testRewrite_nofib_d0 _lh_testRewrite_nofib_arg1_1 =
  ((all_d0 result_d0) ((copy_d0 _lh_testRewrite_nofib_arg1_1) (`LH_P2((`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_N))))))))))))))))), (`LH_C('I', (`LH_C('(', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))
and try_all_d0 _lh_try_all_arg1_1 =
  (((foldr_d1_d1 orElseMap_d4) (fun dum_7 -> 
    croak_d1_d0)) _lh_try_all_arg1_1)
and unify'_d0 _lh_unify'_arg1_1 _lh_unify'_arg2_1 =
  (match _lh_unify'_arg2_1 with
    | `LH_P2(_lh_unify'_LH_P2_0_1, _lh_unify'_LH_P2_1_1) -> 
      (match _lh_unify'_LH_P2_0_1 with
        | `Var(_lh_unify'_Var_0_2) -> 
          (((univar_d0 _lh_unify'_arg1_1) _lh_unify'_Var_0_2) _lh_unify'_LH_P2_1_1)
        | `Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2) -> 
          (match _lh_unify'_LH_P2_1_1 with
            | `Var(_lh_unify'_Var_0_3) -> 
              (((univar_d1 _lh_unify'_arg1_1) _lh_unify'_Var_0_3) (`Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2)))
            | `Func(_lh_unify'_Func_0_3, _lh_unify'_Func_1_3) -> 
              (if (_lh_unify'_Func_0_2 = _lh_unify'_Func_0_3) then
                (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_1) ((zip_d2 _lh_unify'_Func_1_2) _lh_unify'_Func_1_3))
              else
                croak_d1_d1)
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unify_d0 _lh_unify_arg1_1 _lh_unify_arg2_1 =
  ((unify'_d0 (`LH_N)) (`LH_P2(_lh_unify_arg1_1, _lh_unify_arg2_1)))
and univar_d0 _lh_univar_arg1_2 _lh_univar_arg2_2 _lh_univar_arg3_2 =
  (let rec t_1_1_3 = ((assoc_d7 _lh_univar_arg1_2) _lh_univar_arg2_2) in
    (if (exists_d4 t_1_1_3) then
      ((unify'_d0 _lh_univar_arg1_2) (`LH_P2((the_d4 t_1_1_3), _lh_univar_arg3_2)))
    else
      (if ((eqExpr_d5 _lh_univar_arg3_2) (`Var(_lh_univar_arg2_2))) then
        (succeed_d8 _lh_univar_arg1_2)
      else
        (let rec u'_2 = ((sub_d5 _lh_univar_arg3_2) _lh_univar_arg1_2) in
          (if (not ((occurs_d2 _lh_univar_arg2_2) u'_2)) then
            (succeed_d9 ((comp_sub_d0 (`LH_C((`LH_P2(_lh_univar_arg2_2, u'_2)), (`LH_N)))) _lh_univar_arg1_2))
          else
            croak_d1_d2)))))
and univar_d1 _lh_univar_arg1_1 _lh_univar_arg2_1 _lh_univar_arg3_1 =
  (let rec t_9_2 = ((assoc_d1_d0 _lh_univar_arg1_1) _lh_univar_arg2_1) in
    (if (exists_d5 t_9_2) then
      ((unify'_d0 _lh_univar_arg1_1) (`LH_P2((the_d5 t_9_2), _lh_univar_arg3_1)))
    else
      (if ((eqExpr_d6 _lh_univar_arg3_1) (`Var(_lh_univar_arg2_1))) then
        (succeed_d1_d0 _lh_univar_arg1_1)
      else
        (let rec u'_1 = ((sub_d7 _lh_univar_arg3_1) _lh_univar_arg1_1) in
          (if (not ((occurs_d3 _lh_univar_arg2_1) u'_1)) then
            (succeed_d1_d1 ((comp_sub_d1 (`LH_C((`LH_P2(_lh_univar_arg2_1, u'_1)), (`LH_N)))) _lh_univar_arg1_1))
          else
            croak_d1_d3)))));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec all_d0 _lh_all_arg1_6 _lh_all_arg2_4 =
  (_lh_all_arg2_4 _lh_all_arg1_6);;
let rec all_d1 _lh_all_arg1_2 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_1) then
        ((all_d1 _lh_all_arg1_2) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d2 _lh_all_arg1_4 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_3, _lh_all_LH_C_1_3) -> 
      (if (_lh_all_arg1_4 _lh_all_LH_C_0_3) then
        ((all_d2 _lh_all_arg1_4) _lh_all_LH_C_1_3)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d3 _lh_all_arg1_7 _lh_all_arg2_5 =
  (match _lh_all_arg2_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_5, _lh_all_LH_C_1_5) -> 
      (if (_lh_all_arg1_7 _lh_all_LH_C_0_5) then
        ((all_d3 _lh_all_arg1_7) _lh_all_LH_C_1_5)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d4 _lh_all_arg1_3 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_3 _lh_all_LH_C_0_2) then
        ((all_d4 _lh_all_arg1_3) _lh_all_LH_C_1_2)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d5 _lh_all_arg1_5 _lh_all_arg2_3 =
  (match _lh_all_arg2_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_4, _lh_all_LH_C_1_4) -> 
      (if (_lh_all_arg1_5 _lh_all_LH_C_0_4) then
        ((all_d5 _lh_all_arg1_5) _lh_all_LH_C_1_4)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec any_d0 _lh_any_arg1_2 _lh_any_arg2_2 =
  (match _lh_any_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_2, _lh_any_LH_C_1_2) -> 
      (if (_lh_any_arg1_2 _lh_any_LH_C_0_2) then
        true
      else
        ((any_d0 _lh_any_arg1_2) _lh_any_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec any_d1 _lh_any_arg1_1 _lh_any_arg2_1 =
  (match _lh_any_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_1, _lh_any_LH_C_1_1) -> 
      (if (_lh_any_arg1_1 _lh_any_LH_C_0_1) then
        true
      else
        ((any_d1 _lh_any_arg1_1) _lh_any_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec any_d2 _lh_any_arg1_0 _lh_any_arg2_0 =
  (match _lh_any_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_0, _lh_any_LH_C_1_0) -> 
      (if (_lh_any_arg1_0 _lh_any_LH_C_0_0) then
        true
      else
        ((any_d2 _lh_any_arg1_0) _lh_any_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec any_d3 _lh_any_arg1_3 _lh_any_arg2_3 =
  (match _lh_any_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_3, _lh_any_LH_C_1_3) -> 
      (if (_lh_any_arg1_3 _lh_any_LH_C_0_3) then
        true
      else
        ((any_d3 _lh_any_arg1_3) _lh_any_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec any_d4 _lh_any_arg1_4 _lh_any_arg2_4 =
  (match _lh_any_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_4, _lh_any_LH_C_1_4) -> 
      (if (_lh_any_arg1_4 _lh_any_LH_C_0_4) then
        true
      else
        ((any_d4 _lh_any_arg1_4) _lh_any_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec atIndex_d0 n_1 ls_4_1 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_4_1 with
      | `LH_C(h_7_9, t_8_4) -> 
        (if (n_1 = 0) then
          h_7_9
        else
          ((atIndex_d0 (n_1 - 1)) t_8_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_d1 n_0 ls_1_8 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_1_8 with
      | `LH_C(h_4_3, t_4_4) -> 
        (if (n_0 = 0) then
          h_4_3
        else
          ((atIndex_d1 (n_0 - 1)) t_4_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_d2 n_2 ls_5_9 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_5_9 with
      | `LH_C(h_1_0_2, t_1_0_7) -> 
        (if (n_2 = 0) then
          h_1_0_2
        else
          ((atIndex_d2 (n_2 - 1)) t_1_0_7))
      | `LH_N -> 
        (failwith "error")));;
let rec concat_d0 lss_2 =
  (lss_2 99);;
let rec concat_d1 lss_1 =
  (lss_1 99);;
let rec concat_d2 lss_0 =
  (lss_0 99);;
let rec croak_d0 _lh_lift_arg1_2_1 _lh_getOrElse_arg2_2_8 =
  _lh_getOrElse_arg2_2_8;;
let rec croak_d1 =
  (`Nothing);;
let rec croak_d1_d0 =
  (`Nothing);;
let rec croak_d1_d1 =
  (`Nothing);;
let rec croak_d1_d2 =
  (`Nothing);;
let rec croak_d1_d3 =
  (`Nothing);;
let rec croak_d2 =
  (`Nothing);;
let rec croak_d3 =
  (`Nothing);;
let rec croak_d4 =
  (`Nothing);;
let rec croak_d5 =
  (`Nothing);;
let rec croak_d6 =
  (`Nothing);;
let rec croak_d7 =
  (`Nothing);;
let rec croak_d8 =
  (`Nothing);;
let rec croak_d9 =
  (`Nothing);;
let rec cross_d0 _lh_cross_arg1_3 _lh_cross_arg2_3 _lh_cross_arg3_3 =
  (match _lh_cross_arg3_3 with
    | `LH_P2(_lh_cross_LH_P2_0_3, _lh_cross_LH_P2_1_3) -> 
      (`LH_P2((_lh_cross_arg1_3 _lh_cross_LH_P2_0_3), (_lh_cross_arg2_3 _lh_cross_LH_P2_1_3)))
    | _ -> 
      (failwith "error"));;
let rec cross_d1 _lh_cross_arg1_2 _lh_cross_arg2_2 _lh_cross_arg3_2 =
  (match _lh_cross_arg3_2 with
    | `LH_P2(_lh_cross_LH_P2_0_2, _lh_cross_LH_P2_1_2) -> 
      (`LH_P2((_lh_cross_arg1_2 _lh_cross_LH_P2_0_2), (_lh_cross_arg2_2 _lh_cross_LH_P2_1_2)))
    | _ -> 
      (failwith "error"));;
let rec cross_d2 _lh_cross_arg1_0 _lh_cross_arg2_0 _lh_cross_arg3_0 =
  (match _lh_cross_arg3_0 with
    | `LH_P2(_lh_cross_LH_P2_0_0, _lh_cross_LH_P2_1_0) -> 
      (`LH_P2((_lh_cross_arg1_0 _lh_cross_LH_P2_0_0), (_lh_cross_arg2_0 _lh_cross_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec cross_d3 _lh_cross_arg1_1 _lh_cross_arg2_1 _lh_cross_arg3_1 =
  (match _lh_cross_arg3_1 with
    | `LH_P2(_lh_cross_LH_P2_0_1, _lh_cross_LH_P2_1_1) -> 
      (`LH_P2((_lh_cross_arg1_1 _lh_cross_LH_P2_0_1), (_lh_cross_arg2_1 _lh_cross_LH_P2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile_d0 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_d0 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile_d1 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_d1 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec eqRewrite_d0 _lh_eqRewrite_arg1_0 _lh_eqRewrite_arg2_0 _lh_eqRewrite_arg3_0 =
  ((_lh_eqRewrite_arg1_0 (`LH_P2(_lh_eqRewrite_arg2_0, _lh_eqRewrite_arg3_0))) = (`Equal));;
let rec eqno_d0 _lh_eqno_arg1_1 =
  (match _lh_eqno_arg1_1 with
    | `Eqn(_lh_eqno_Eqn_0_1, _lh_eqno_Eqn_1_1) -> 
      (match _lh_eqno_Eqn_1_1 with
        | `LH_P2(_lh_eqno_LH_P2_0_1, _lh_eqno_LH_P2_1_1) -> 
          _lh_eqno_Eqn_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqno_d1 _lh_eqno_arg1_0 =
  (match _lh_eqno_arg1_0 with
    | `Eqn(_lh_eqno_Eqn_0_0, _lh_eqno_Eqn_1_0) -> 
      (match _lh_eqno_Eqn_1_0 with
        | `LH_P2(_lh_eqno_LH_P2_0_0, _lh_eqno_LH_P2_1_0) -> 
          _lh_eqno_Eqn_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqpr_d0 _lh_eqpr_arg1_0 =
  (match _lh_eqpr_arg1_0 with
    | `Eqn(_lh_eqpr_Eqn_0_0, _lh_eqpr_Eqn_1_0) -> 
      _lh_eqpr_Eqn_1_0
    | _ -> 
      (failwith "error"));;
let rec exists_d0 _lh_exists_arg1_3 =
  (match _lh_exists_arg1_3 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d1 _lh_exists_arg1_1 =
  (match _lh_exists_arg1_1 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d2 _lh_exists_arg1_4 =
  (match _lh_exists_arg1_4 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d3 _lh_exists_arg1_0 =
  (match _lh_exists_arg1_0 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d4 _lh_exists_arg1_2 =
  (match _lh_exists_arg1_2 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d5 _lh_exists_arg1_5 =
  (match _lh_exists_arg1_5 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec filter_d0 f_8_9 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_8_2, t_8_7) -> 
      (if (f_8_9 h_8_2) then
        (`LH_C(h_8_2, ((filter_d0 f_8_9) t_8_7)))
      else
        ((filter_d0 f_8_9) t_8_7))
    | `LH_N -> 
      (`LH_N));;
let rec foldl_d0 f_8_8 i_4_8 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_8_1, t_8_6) -> 
      (((foldl_d0 f_8_8) ((f_8_8 i_4_8) h_8_1)) t_8_6)
    | `LH_N -> 
      i_4_8);;
let rec foldr_d0 f_9_6 i_5_2 ls_4_9 =
  ((ls_4_9 f_9_6) i_5_2);;
let rec foldr_d1 f_4_3 i_2_9 ls_1_4 =
  ((ls_1_4 f_4_3) i_2_9);;
let rec foldr_d1_d0 f_7_7 i_4_2 ls_3_7 =
  ((ls_3_7 f_7_7) i_4_2);;
let rec foldr_d1_d1 f_7_8 i_4_3 ls_3_8 =
  ((ls_3_8 f_7_8) i_4_3);;
let rec foldr_d1_d2 f_7_3 i_4_1 ls_3_5 =
  ((ls_3_5 f_7_3) i_4_1);;
let rec foldr_d1_d3 f_3_6 i_2_5 ls_9 =
  ((ls_9 f_3_6) i_2_5);;
let rec foldr_d1_d4 f_3_4 i_2_4 ls_7 =
  ((ls_7 f_3_4) i_2_4);;
let rec foldr_d1_d5 f_5_3 i_3_2 ls_2_1 =
  ((ls_2_1 f_5_3) i_3_2);;
let rec foldr_d1_d6 f_1 i_0 ls_2 =
  ((ls_2 f_1) i_0);;
let rec foldr_d1_d7 f_1_3_0 i_6_4 ls_6_8 =
  ((ls_6_8 f_1_3_0) i_6_4);;
let rec foldr_d2 f_1_0_9 i_5_7 ls_5_6 =
  ((ls_5_6 f_1_0_9) i_5_7);;
let rec foldr_d3 f_1_2_6 i_6_3 ls_6_5 =
  ((ls_6_5 f_1_2_6) i_6_3);;
let rec foldr_d4 f_1_3_5 i_6_7 ls_7_1 =
  ((ls_7_1 f_1_3_5) i_6_7);;
let rec foldr_d5 f_6_8 i_3_8 ls_3_2 =
  ((ls_3_2 f_6_8) i_3_8);;
let rec foldr_d6 f_3_7 i_2_6 ls_1_0 =
  ((ls_1_0 f_3_7) i_2_6);;
let rec foldr_d7 f_1_2_2 i_6_0 ls_6_3 =
  ((ls_6_3 f_1_2_2) i_6_0);;
let rec foldr_d8 f_9_2 i_4_9 ls_4_7 =
  ((ls_4_7 f_9_2) i_4_9);;
let rec foldr_d9 f_6_5 i_3_7 ls_2_9 =
  ((ls_2_9 f_6_5) i_3_7);;
let rec fst_d0 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst_d1 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec fst_d2 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst_d3 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d0 _lh_getOrElse_arg1_8 _lh_getOrElse_arg2_2_1 =
  (_lh_getOrElse_arg1_8 _lh_getOrElse_arg2_2_1);;
let rec getOrElse_d1 _lh_getOrElse_arg1_1_5 _lh_getOrElse_arg2_3_3 =
  (_lh_getOrElse_arg1_1_5 _lh_getOrElse_arg2_3_3);;
let rec getOrElse_d1_d0 _lh_getOrElse_arg1_1_2 _lh_getOrElse_arg2_2_5 =
  (_lh_getOrElse_arg1_1_2 _lh_getOrElse_arg2_2_5);;
let rec getOrElse_d1_d1 _lh_getOrElse_arg1_1_6 _lh_getOrElse_arg2_3_4 =
  (match _lh_getOrElse_arg1_1_6 with
    | `Just(_lh_getOrElse_Just_0_1_6) -> 
      _lh_getOrElse_Just_0_1_6
    | `Nothing -> 
      _lh_getOrElse_arg2_3_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d2 _lh_getOrElse_arg1_2 _lh_getOrElse_arg2_4 =
  (match _lh_getOrElse_arg1_2 with
    | `Just(_lh_getOrElse_Just_0_2) -> 
      _lh_getOrElse_Just_0_2
    | `Nothing -> 
      _lh_getOrElse_arg2_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d3 _lh_getOrElse_arg1_3 _lh_getOrElse_arg2_5 =
  (match _lh_getOrElse_arg1_3 with
    | `Just(_lh_getOrElse_Just_0_3) -> 
      _lh_getOrElse_Just_0_3
    | `Nothing -> 
      _lh_getOrElse_arg2_5
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d4 _lh_getOrElse_arg1_6 _lh_getOrElse_arg2_1_9 =
  (match _lh_getOrElse_arg1_6 with
    | `Just(_lh_getOrElse_Just_0_1_1) -> 
      _lh_getOrElse_Just_0_1_1
    | `Nothing -> 
      _lh_getOrElse_arg2_1_9
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d5 _lh_getOrElse_arg1_7 _lh_getOrElse_arg2_2_0 =
  (match _lh_getOrElse_arg1_7 with
    | `Just(_lh_getOrElse_Just_0_1_2) -> 
      _lh_getOrElse_Just_0_1_2
    | `Nothing -> 
      _lh_getOrElse_arg2_2_0
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d6 _lh_getOrElse_arg1_9 _lh_getOrElse_arg2_2_2 =
  (match _lh_getOrElse_arg1_9 with
    | `Just(_lh_getOrElse_Just_0_1_3) -> 
      _lh_getOrElse_Just_0_1_3
    | `Nothing -> 
      _lh_getOrElse_arg2_2_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d2 _lh_getOrElse_arg1_0 _lh_getOrElse_arg2_2 =
  (match _lh_getOrElse_arg1_0 with
    | `Just(_lh_getOrElse_Just_0_1) -> 
      _lh_getOrElse_Just_0_1
    | `Nothing -> 
      _lh_getOrElse_arg2_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d3 _lh_getOrElse_arg1_5 _lh_getOrElse_arg2_1_8 =
  (match _lh_getOrElse_arg1_5 with
    | `Just(_lh_getOrElse_Just_0_1_0) -> 
      _lh_getOrElse_Just_0_1_0
    | `Nothing -> 
      _lh_getOrElse_arg2_1_8
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d4 _lh_getOrElse_arg1_1_4 _lh_getOrElse_arg2_2_7 =
  (_lh_getOrElse_arg1_1_4 _lh_getOrElse_arg2_2_7);;
let rec getOrElse_d5 _lh_getOrElse_arg1_1_0 _lh_getOrElse_arg2_2_3 =
  (_lh_getOrElse_arg1_1_0 _lh_getOrElse_arg2_2_3);;
let rec getOrElse_d6 _lh_getOrElse_arg1_1_1 _lh_getOrElse_arg2_2_4 =
  (_lh_getOrElse_arg1_1_1 _lh_getOrElse_arg2_2_4);;
let rec getOrElse_d7 _lh_getOrElse_arg1_4 _lh_getOrElse_arg2_1_1 =
  (_lh_getOrElse_arg1_4 _lh_getOrElse_arg2_1_1);;
let rec getOrElse_d8 _lh_getOrElse_arg1_1_3 _lh_getOrElse_arg2_2_6 =
  (_lh_getOrElse_arg1_1_3 _lh_getOrElse_arg2_2_6);;
let rec getOrElse_d9 _lh_getOrElse_arg1_1 _lh_getOrElse_arg2_3 =
  (_lh_getOrElse_arg1_1 _lh_getOrElse_arg2_3);;
let rec gtRewrite_d0 _lh_gtRewrite_arg1_0 _lh_gtRewrite_arg2_0 _lh_gtRewrite_arg3_0 =
  ((_lh_gtRewrite_arg1_0 (`LH_P2(_lh_gtRewrite_arg2_0, _lh_gtRewrite_arg3_0))) = (`Greater));;
let rec inList_d0 _lh_inList_arg1_2_3 _lh_inList_arg2_5 =
  (_lh_inList_arg2_5 _lh_inList_arg1_2_3);;
let rec inList_d1 _lh_inList_arg1_1_2 _lh_inList_arg2_0 =
  (_lh_inList_arg2_0 _lh_inList_arg1_1_2);;
let rec inList_d2 _lh_inList_arg1_1_4 _lh_inList_arg2_2 =
  (_lh_inList_arg2_2 _lh_inList_arg1_1_4);;
let rec inList_d3 _lh_inList_arg1_1_9 _lh_inList_arg2_4 =
  (_lh_inList_arg2_4 _lh_inList_arg1_1_9);;
let rec inList_d4 _lh_inList_arg1_1_5 _lh_inList_arg2_3 =
  (_lh_inList_arg2_3 _lh_inList_arg1_1_5);;
let rec inList_d5 _lh_inList_arg1_1_3 _lh_inList_arg2_1 =
  (_lh_inList_arg2_1 _lh_inList_arg1_1_3);;
let rec lhs_d0 _lh_lhs_arg1_4 =
  (match _lh_lhs_arg1_4 with
    | `Eqn(_lh_lhs_Eqn_0_4, _lh_lhs_Eqn_1_4) -> 
      (match _lh_lhs_Eqn_1_4 with
        | `LH_P2(_lh_lhs_LH_P2_0_4, _lh_lhs_LH_P2_1_4) -> 
          _lh_lhs_LH_P2_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d1 _lh_lhs_arg1_1 =
  (match _lh_lhs_arg1_1 with
    | `Eqn(_lh_lhs_Eqn_0_1, _lh_lhs_Eqn_1_1) -> 
      (match _lh_lhs_Eqn_1_1 with
        | `LH_P2(_lh_lhs_LH_P2_0_1, _lh_lhs_LH_P2_1_1) -> 
          _lh_lhs_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d2 _lh_lhs_arg1_2 =
  (match _lh_lhs_arg1_2 with
    | `Eqn(_lh_lhs_Eqn_0_2, _lh_lhs_Eqn_1_2) -> 
      (match _lh_lhs_Eqn_1_2 with
        | `LH_P2(_lh_lhs_LH_P2_0_2, _lh_lhs_LH_P2_1_2) -> 
          _lh_lhs_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d3 _lh_lhs_arg1_0 =
  (match _lh_lhs_arg1_0 with
    | `Eqn(_lh_lhs_Eqn_0_0, _lh_lhs_Eqn_1_0) -> 
      (match _lh_lhs_Eqn_1_0 with
        | `LH_P2(_lh_lhs_LH_P2_0_0, _lh_lhs_LH_P2_1_0) -> 
          _lh_lhs_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d4 _lh_lhs_arg1_6 =
  (match _lh_lhs_arg1_6 with
    | `Eqn(_lh_lhs_Eqn_0_6, _lh_lhs_Eqn_1_6) -> 
      (match _lh_lhs_Eqn_1_6 with
        | `LH_P2(_lh_lhs_LH_P2_0_6, _lh_lhs_LH_P2_1_6) -> 
          _lh_lhs_LH_P2_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d5 _lh_lhs_arg1_3 =
  (match _lh_lhs_arg1_3 with
    | `Eqn(_lh_lhs_Eqn_0_3, _lh_lhs_Eqn_1_3) -> 
      (match _lh_lhs_Eqn_1_3 with
        | `LH_P2(_lh_lhs_LH_P2_0_3, _lh_lhs_LH_P2_1_3) -> 
          _lh_lhs_LH_P2_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d6 _lh_lhs_arg1_5 =
  (match _lh_lhs_arg1_5 with
    | `Eqn(_lh_lhs_Eqn_0_5, _lh_lhs_Eqn_1_5) -> 
      (match _lh_lhs_Eqn_1_5 with
        | `LH_P2(_lh_lhs_LH_P2_0_5, _lh_lhs_LH_P2_1_5) -> 
          _lh_lhs_LH_P2_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lift_d0 _lh_lift_arg1_1_3 _lh_lift_arg2_1_0 =
  (match _lh_lift_arg2_1_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_0) -> 
      (`Just((_lh_lift_arg1_1_3 _lh_lift_Just_0_1_0)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1 _lh_lift_arg1_6 _lh_lift_arg2_5 =
  (match _lh_lift_arg2_5 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_7 -> 
        _lh_getOrElse_arg2_7)
    | `Just(_lh_lift_Just_0_4) -> 
      (let rec _lh_getOrElse_Just_0_5 = (_lh_lift_arg1_6 _lh_lift_Just_0_4) in
        (fun _lh_getOrElse_arg2_8 -> 
          _lh_getOrElse_Just_0_5))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d0 _lh_lift_arg1_1_6 _lh_lift_arg2_1_3 =
  (_lh_lift_arg2_1_3 _lh_lift_arg1_1_6);;
let rec lift_d1_d1 _lh_lift_arg1_1_8 _lh_lift_arg2_1_5 =
  (match _lh_lift_arg2_1_5 with
    | `Nothing -> 
      (fun _lh_lift_arg1_1_9 -> 
        (`Nothing))
    | `Just(_lh_lift_Just_0_1_4) -> 
      (let rec _lh_lift_Just_0_1_5 = (_lh_lift_arg1_1_8 _lh_lift_Just_0_1_4) in
        (fun _lh_lift_arg1_2_0 -> 
          (`Just((_lh_lift_arg1_2_0 _lh_lift_Just_0_1_5)))))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d2 _lh_lift_arg1_1_7 _lh_lift_arg2_1_4 =
  (match _lh_lift_arg2_1_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_3) -> 
      (`Just((_lh_lift_arg1_1_7 _lh_lift_Just_0_1_3)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d3 _lh_lift_arg1_4 _lh_lift_arg2_4 =
  (_lh_lift_arg2_4 _lh_lift_arg1_4);;
let rec lift_d1_d4 _lh_lift_arg1_3 _lh_lift_arg2_3 =
  (_lh_lift_arg2_3 _lh_lift_arg1_3);;
let rec lift_d1_d5 _lh_lift_arg1_1_1 _lh_lift_arg2_8 =
  (match _lh_lift_arg2_8 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1_2 -> 
        _lh_getOrElse_arg2_1_2)
    | `Just(_lh_lift_Just_0_8) -> 
      (let rec _lh_getOrElse_Just_0_7 = (_lh_lift_arg1_1_1 _lh_lift_Just_0_8) in
        (fun _lh_getOrElse_arg2_1_3 -> 
          _lh_getOrElse_Just_0_7))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d6 _lh_lift_arg1_1_2 _lh_lift_arg2_9 =
  (match _lh_lift_arg2_9 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1_4 -> 
        _lh_getOrElse_arg2_1_4)
    | `Just(_lh_lift_Just_0_9) -> 
      (let rec _lh_getOrElse_Just_0_8 = (_lh_lift_arg1_1_2 _lh_lift_Just_0_9) in
        (fun _lh_getOrElse_arg2_1_5 -> 
          _lh_getOrElse_Just_0_8))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d7 _lh_lift_arg1_2_3 _lh_lift_arg2_1_7 =
  (match _lh_lift_arg2_1_7 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_3_1 -> 
        _lh_getOrElse_arg2_3_1)
    | `Just(_lh_lift_Just_0_1_7) -> 
      (let rec _lh_getOrElse_Just_0_1_5 = (_lh_lift_arg1_2_3 _lh_lift_Just_0_1_7) in
        (fun _lh_getOrElse_arg2_3_2 -> 
          _lh_getOrElse_Just_0_1_5))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d8 _lh_lift_arg1_0 _lh_lift_arg2_0 =
  (match _lh_lift_arg2_0 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_0 -> 
        _lh_getOrElse_arg2_0)
    | `Just(_lh_lift_Just_0_0) -> 
      (let rec _lh_getOrElse_Just_0_0 = (_lh_lift_arg1_0 _lh_lift_Just_0_0) in
        (fun _lh_getOrElse_arg2_1 -> 
          _lh_getOrElse_Just_0_0))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d9 _lh_lift_arg1_2_2 _lh_lift_arg2_1_6 =
  (match _lh_lift_arg2_1_6 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_2_9 -> 
        _lh_getOrElse_arg2_2_9)
    | `Just(_lh_lift_Just_0_1_6) -> 
      (let rec _lh_getOrElse_Just_0_1_4 = (_lh_lift_arg1_2_2 _lh_lift_Just_0_1_6) in
        (fun _lh_getOrElse_arg2_3_0 -> 
          _lh_getOrElse_Just_0_1_4))
    | _ -> 
      (failwith "error"));;
let rec lift_d2 _lh_lift_arg1_1 _lh_lift_arg2_1 =
  (match _lh_lift_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1) -> 
      (`Just((_lh_lift_arg1_1 _lh_lift_Just_0_1)))
    | _ -> 
      (failwith "error"));;
let rec lift_d3 _lh_lift_arg1_2_4 _lh_lift_arg2_1_8 =
  (match _lh_lift_arg2_1_8 with
    | `Nothing -> 
      (fun _lh_dummy_1_8 -> 
        (`Nothing))
    | `Just(_lh_lift_Just_0_1_8) -> 
      (let rec _lh_squash_Just_0_1 = (_lh_lift_arg1_2_4 _lh_lift_Just_0_1_8) in
        (fun _lh_dummy_1_9 -> 
          _lh_squash_Just_0_1))
    | _ -> 
      (failwith "error"));;
let rec lift_d4 _lh_lift_arg1_1_5 _lh_lift_arg2_1_2 =
  (match _lh_lift_arg2_1_2 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1_6 -> 
        _lh_getOrElse_arg2_1_6)
    | `Just(_lh_lift_Just_0_1_2) -> 
      (let rec _lh_getOrElse_Just_0_9 = (_lh_lift_arg1_1_5 _lh_lift_Just_0_1_2) in
        (fun _lh_getOrElse_arg2_1_7 -> 
          _lh_getOrElse_Just_0_9))
    | _ -> 
      (failwith "error"));;
let rec lift_d5 _lh_lift_arg1_7 _lh_lift_arg2_6 =
  (match _lh_lift_arg2_6 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_5) -> 
      (`Just((_lh_lift_arg1_7 _lh_lift_Just_0_5)))
    | _ -> 
      (failwith "error"));;
let rec lift_d6 _lh_lift_arg1_1_4 _lh_lift_arg2_1_1 =
  (match _lh_lift_arg2_1_1 with
    | `Nothing -> 
      (fun _lh_dummy_6 -> 
        (`Nothing))
    | `Just(_lh_lift_Just_0_1_1) -> 
      (let rec _lh_squash_Just_0_0 = (_lh_lift_arg1_1_4 _lh_lift_Just_0_1_1) in
        (fun _lh_dummy_7 -> 
          _lh_squash_Just_0_0))
    | _ -> 
      (failwith "error"));;
let rec lift_d7 _lh_lift_arg1_8 _lh_lift_arg2_7 =
  (match _lh_lift_arg2_7 with
    | `Nothing -> 
      (fun _lh_lift_arg1_9 _lh_getOrElse_arg2_9 -> 
        _lh_getOrElse_arg2_9)
    | `Just(_lh_lift_Just_0_6) -> 
      (let rec _lh_lift_Just_0_7 = (_lh_lift_arg1_8 _lh_lift_Just_0_6) in
        (fun _lh_lift_arg1_1_0 -> 
          (let rec _lh_getOrElse_Just_0_6 = (_lh_lift_arg1_1_0 _lh_lift_Just_0_7) in
            (fun _lh_getOrElse_arg2_1_0 -> 
              _lh_getOrElse_Just_0_6))))
    | _ -> 
      (failwith "error"));;
let rec lift_d8 _lh_lift_arg1_2_5 _lh_lift_arg2_1_9 =
  (match _lh_lift_arg2_1_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_9) -> 
      (`Just((_lh_lift_arg1_2_5 _lh_lift_Just_0_1_9)))
    | _ -> 
      (failwith "error"));;
let rec lift_d9 _lh_lift_arg1_2 _lh_lift_arg2_2 =
  (match _lh_lift_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2) -> 
      (`Just((_lh_lift_arg1_2 _lh_lift_Just_0_2)))
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_d0 _lh_ltRewrite_arg1_1 _lh_ltRewrite_arg2_1 _lh_ltRewrite_arg3_1 =
  ((_lh_ltRewrite_arg1_1 (`LH_P2(_lh_ltRewrite_arg2_1, _lh_ltRewrite_arg3_1))) = (`Less));;
let rec ltRewrite_d1 _lh_ltRewrite_arg1_0 _lh_ltRewrite_arg2_0 _lh_ltRewrite_arg3_0 =
  ((_lh_ltRewrite_arg1_0 (`LH_P2(_lh_ltRewrite_arg2_0, _lh_ltRewrite_arg3_0))) = (`Less));;
let rec ltRewrite_d2 _lh_ltRewrite_arg1_2 _lh_ltRewrite_arg2_2 _lh_ltRewrite_arg3_2 =
  ((_lh_ltRewrite_arg1_2 (`LH_P2(_lh_ltRewrite_arg2_2, _lh_ltRewrite_arg3_2))) = (`Less));;
let rec ltRewrite_d3 _lh_ltRewrite_arg1_3 _lh_ltRewrite_arg2_3 _lh_ltRewrite_arg3_3 =
  ((_lh_ltRewrite_arg1_3 (`LH_P2(_lh_ltRewrite_arg2_3, _lh_ltRewrite_arg3_3))) = (`Less));;
let rec mappend_d0 xs_2_9 ys_5_4 =
  (xs_2_9 ys_5_4);;
let rec mappend_d1 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec mappend_d1_d0 xs_1_3 ys_2_2 =
  (xs_1_3 ys_2_2);;
let rec mappend_d1_d1 xs_2_1 ys_4_4 =
  (xs_2_1 ys_4_4);;
let rec mappend_d1_d2 xs_1_5 ys_3_1 =
  (match xs_1_5 with
    | `LH_C(h_7_0, t_7_4) -> 
      (`LH_C(h_7_0, ((mappend_d1_d2 t_7_4) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend_d1_d3 xs_1_4 ys_2_5 =
  (match xs_1_4 with
    | `LH_C(h_6_0, t_6_4) -> 
      (`LH_C(h_6_0, ((mappend_d1_d3 t_6_4) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend_d1_d4 xs_1_2 ys_2_1 =
  (match xs_1_2 with
    | `LH_C(h_5_6, t_5_9) -> 
      (`LH_C(h_5_6, ((mappend_d1_d4 t_5_9) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_d1_d5 xs_2_4 ys_4_7 =
  (match xs_2_4 with
    | `LH_C(h_9_6, t_1_0_1) -> 
      (`LH_C(h_9_6, ((mappend_d1_d5 t_1_0_1) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend_d1_d6 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C(h_2_8, ((mappend_d1_d6 t_2_8) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_d1_d7 xs_2_8 ys_5_3 =
  (match xs_2_8 with
    | `LH_C(h_1_0_5, t_1_1_1) -> 
      (`LH_C(h_1_0_5, ((mappend_d1_d7 t_1_1_1) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mappend_d1_d8 xs_7 ys_9 =
  (xs_7 ys_9);;
let rec mappend_d1_d9 xs_2_7 ys_5_0 =
  (xs_2_7 ys_5_0);;
let rec mappend_d2 xs_1_1 ys_2_0 =
  (match xs_1_1 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend_d2 t_5_4) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_d2_d0 xs_1_0 ys_1_9 =
  (xs_1_0 ys_1_9);;
let rec mappend_d3 xs_8 ys_1_0 =
  (xs_8 ys_1_0);;
let rec mappend_d4 xs_2_5 ys_4_8 =
  (xs_2_5 ys_4_8);;
let rec mappend_d5 xs_2_6 ys_4_9 =
  (xs_2_6 ys_4_9);;
let rec mappend_d6 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_2_5, t_2_5) -> 
      (`LH_C(h_2_5, ((mappend_d6 t_2_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_d7 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_d7 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_d8 xs_2_0 ys_4_1 =
  (xs_2_0 ys_4_1);;
let rec mappend_d9 xs_9 ys_1_1 =
  (xs_9 ys_1_1);;
let rec map_d1_d4 f_9_0 ls_4_5 =
  (ls_4_5 f_9_0);;
let rec map_d1_d5 f_1_3_9 ls_7_3 =
  (ls_7_3 f_1_3_9);;
let rec map_d2 f_1_1_6 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_1_0_3, t_1_0_8) -> 
      (`LH_C((f_1_1_6 h_1_0_3), ((map_d2 f_1_1_6) t_1_0_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0 f_1_2_8 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_1_1_1, t_1_1_9) -> 
      (`LH_C((f_1_2_8 h_1_1_1), ((map_d2_d0 f_1_2_8) t_1_1_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d3 f_6_0 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C((f_6_0 h_5_1), ((map_d2_d3 f_6_0) t_5_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d4 f_1_1_5 ls_5_8 =
  (ls_5_8 f_1_1_5);;
let rec map_d2_d5 f_8_1 ls_3_9 =
  (ls_3_9 f_8_1);;
let rec map_d2_d6 f_9_1 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_8_3, t_8_8) -> 
      (`LH_C((f_9_1 h_8_3), ((map_d2_d6 f_9_1) t_8_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d7 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_d2_d7 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d8 f_5_6 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C((f_5_6 h_4_7), ((map_d2_d8 f_5_6) t_4_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d9 f_4_8 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_4_0, t_4_1) -> 
      (`LH_C((f_4_8 h_4_0), ((map_d2_d9 f_4_8) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3 f_4_2 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C((f_4_2 h_3_4), ((map_d3 f_4_2) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d0 f_3_5 ls_8 =
  (match ls_8 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C((f_3_5 h_3_0), ((map_d3_d0 f_3_5) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d1 f_1_0_8 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_9_8, t_1_0_3) -> 
      (`LH_C((f_1_0_8 h_9_8), ((map_d3_d1 f_1_0_8) t_1_0_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d3 f_1_2_1 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_1_0_8, t_1_1_5) -> 
      (`LH_C((f_1_2_1 h_1_0_8), ((map_d3_d3 f_1_2_1) t_1_1_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d5 f_6_9 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_8, t_6_2) -> 
      (`LH_C((f_6_9 h_5_8), ((map_d3_d5 f_6_9) t_6_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d8 f_6_1 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C((f_6_1 h_5_3), ((map_d3_d8 f_6_1) t_5_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d1 f_6_7 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_5_7, t_6_0) -> 
      (`LH_C((f_6_7 h_5_7), ((map_d4_d1 f_6_7) t_6_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d4 f_5_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_4_6, t_4_7) -> 
      (`LH_C((f_5_4 h_4_6), ((map_d4_d4 f_5_4) t_4_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d7 f_1_3_4 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_1_1_6, t_1_2_4) -> 
      (`LH_C((f_1_3_4 h_1_1_6), ((map_d4_d7 f_1_3_4) t_1_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d9 f_6_6 ls_3_0 =
  (ls_3_0 f_6_6);;
let rec match'_d0 _lh_match'_arg1_0 _lh_match'_arg2_0 =
  (_lh_match'_arg2_0 _lh_match'_arg1_0);;
let rec match'_d1 _lh_match'_arg1_5 _lh_match'_arg2_1 =
  (_lh_match'_arg2_1 _lh_match'_arg1_5);;
let rec maybeX_d0 _lh_maybeX_arg1_1 _lh_maybeX_arg2_1 =
  (if _lh_maybeX_arg1_1 then
    (`Just(_lh_maybeX_arg2_1))
  else
    (`Nothing));;
let rec maybeX_d1 _lh_maybeX_arg1_1_1 _lh_maybeX_arg2_1_1 =
  (if _lh_maybeX_arg1_1_1 then
    (`Just(_lh_maybeX_arg2_1_1))
  else
    (`Nothing));;
let rec maybeX_d1_d0 _lh_maybeX_arg1_4 _lh_maybeX_arg2_4 =
  (if _lh_maybeX_arg1_4 then
    (`Just(_lh_maybeX_arg2_4))
  else
    (`Nothing));;
let rec maybeX_d1_d1 _lh_maybeX_arg1_6 _lh_maybeX_arg2_6 =
  (if _lh_maybeX_arg1_6 then
    (`Just(_lh_maybeX_arg2_6))
  else
    (`Nothing));;
let rec maybeX_d1_d2 _lh_maybeX_arg1_1_3 _lh_maybeX_arg2_1_3 =
  (if _lh_maybeX_arg1_1_3 then
    (`Just(_lh_maybeX_arg2_1_3))
  else
    (`Nothing));;
let rec maybeX_d1_d3 _lh_maybeX_arg1_0 _lh_maybeX_arg2_0 =
  (if _lh_maybeX_arg1_0 then
    (`Just(_lh_maybeX_arg2_0))
  else
    (`Nothing));;
let rec maybeX_d2 _lh_maybeX_arg1_7 _lh_maybeX_arg2_7 =
  (if _lh_maybeX_arg1_7 then
    (`Just(_lh_maybeX_arg2_7))
  else
    (`Nothing));;
let rec maybeX_d3 _lh_maybeX_arg1_9 _lh_maybeX_arg2_9 =
  (if _lh_maybeX_arg1_9 then
    (`Just(_lh_maybeX_arg2_9))
  else
    (`Nothing));;
let rec maybeX_d4 _lh_maybeX_arg1_8 _lh_maybeX_arg2_8 =
  (if _lh_maybeX_arg1_8 then
    (`Just(_lh_maybeX_arg2_8))
  else
    (`Nothing));;
let rec maybeX_d5 _lh_maybeX_arg1_1_0 _lh_maybeX_arg2_1_0 =
  (if _lh_maybeX_arg1_1_0 then
    (`Just(_lh_maybeX_arg2_1_0))
  else
    (`Nothing));;
let rec maybeX_d6 _lh_maybeX_arg1_2 _lh_maybeX_arg2_2 =
  (if _lh_maybeX_arg1_2 then
    (`Just(_lh_maybeX_arg2_2))
  else
    (`Nothing));;
let rec maybeX_d7 _lh_maybeX_arg1_1_2 _lh_maybeX_arg2_1_2 =
  (if _lh_maybeX_arg1_1_2 then
    (`Just(_lh_maybeX_arg2_1_2))
  else
    (`Nothing));;
let rec maybeX_d8 _lh_maybeX_arg1_3 _lh_maybeX_arg2_3 =
  (if _lh_maybeX_arg1_3 then
    (`Just(_lh_maybeX_arg2_3))
  else
    (`Nothing));;
let rec maybeX_d9 _lh_maybeX_arg1_5 _lh_maybeX_arg2_5 =
  (if _lh_maybeX_arg1_5 then
    (`Just(_lh_maybeX_arg2_5))
  else
    (`Nothing));;
let rec modify_d0 _lh_modify_arg1_0 _lh_modify_arg2_0 _lh_modify_arg3_0 =
  (match _lh_modify_arg1_0 with
    | `LH_C(_lh_modify_LH_C_0_0, _lh_modify_LH_C_1_0) -> 
      (match _lh_modify_arg2_0 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_0 _lh_modify_LH_C_0_0), _lh_modify_LH_C_1_0))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_0, (((modify_d0 _lh_modify_LH_C_1_0) (_lh_modify_arg2_0 - 1)) _lh_modify_arg3_0))))
    | _ -> 
      (failwith "error"));;
let rec modify_d1 _lh_modify_arg1_1 _lh_modify_arg2_1 _lh_modify_arg3_1 =
  (match _lh_modify_arg1_1 with
    | `LH_C(_lh_modify_LH_C_0_1, _lh_modify_LH_C_1_1) -> 
      (match _lh_modify_arg2_1 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_1 _lh_modify_LH_C_0_1), _lh_modify_LH_C_1_1))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_1, (((modify_d1 _lh_modify_LH_C_1_1) (_lh_modify_arg2_1 - 1)) _lh_modify_arg3_1))))
    | _ -> 
      (failwith "error"));;
let rec modify_d2 _lh_modify_arg1_2 _lh_modify_arg2_2 _lh_modify_arg3_2 =
  (match _lh_modify_arg1_2 with
    | `LH_C(_lh_modify_LH_C_0_2, _lh_modify_LH_C_1_2) -> 
      (match _lh_modify_arg2_2 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_2 _lh_modify_LH_C_0_2), _lh_modify_LH_C_1_2))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_2, (((modify_d2 _lh_modify_LH_C_1_2) (_lh_modify_arg2_2 - 1)) _lh_modify_arg3_2))))
    | _ -> 
      (failwith "error"));;
let rec orElse_d0 _lh_orElse_arg1_9 _lh_orElse_arg2_9 =
  (match _lh_orElse_arg1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_9
    | _ -> 
      _lh_orElse_arg1_9);;
let rec orElse_d1 _lh_orElse_arg1_1_7 _lh_orElse_arg2_1_7 =
  (match _lh_orElse_arg1_1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_1_7
    | _ -> 
      _lh_orElse_arg1_1_7);;
let rec orElse_d1_d0 _lh_orElse_arg1_1_1 _lh_orElse_arg2_1_1 =
  (match _lh_orElse_arg1_1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1_1
    | _ -> 
      _lh_orElse_arg1_1_1);;
let rec orElse_d1_d1 _lh_orElse_arg1_7 _lh_orElse_arg2_7 =
  (match _lh_orElse_arg1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_7
    | _ -> 
      _lh_orElse_arg1_7);;
let rec orElse_d1_d2 _lh_orElse_arg1_1_8 _lh_orElse_arg2_1_8 =
  (match _lh_orElse_arg1_1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_1_8
    | _ -> 
      _lh_orElse_arg1_1_8);;
let rec orElse_d1_d3 _lh_orElse_arg1_1_6 _lh_orElse_arg2_1_6 =
  (match _lh_orElse_arg1_1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_1_6
    | _ -> 
      _lh_orElse_arg1_1_6);;
let rec orElse_d1_d4 _lh_orElse_arg1_1_2 _lh_orElse_arg2_1_2 =
  (match _lh_orElse_arg1_1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_1_2
    | _ -> 
      _lh_orElse_arg1_1_2);;
let rec orElse_d1_d5 _lh_orElse_arg1_1_9 _lh_orElse_arg2_1_9 =
  (match _lh_orElse_arg1_1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_1_9
    | _ -> 
      _lh_orElse_arg1_1_9);;
let rec orElse_d1_d6 _lh_orElse_arg1_2 _lh_orElse_arg2_2 =
  (match _lh_orElse_arg1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_2
    | _ -> 
      _lh_orElse_arg1_2);;
let rec orElse_d1_d7 _lh_orElse_arg1_4 _lh_orElse_arg2_4 =
  (match _lh_orElse_arg1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_4
    | _ -> 
      _lh_orElse_arg1_4);;
let rec orElse_d1_d8 _lh_orElse_arg1_1_5 _lh_orElse_arg2_1_5 =
  (match _lh_orElse_arg1_1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_1_5
    | _ -> 
      _lh_orElse_arg1_1_5);;
let rec orElse_d1_d9 _lh_orElse_arg1_1_4 _lh_orElse_arg2_1_4 =
  (match _lh_orElse_arg1_1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_1_4
    | _ -> 
      _lh_orElse_arg1_1_4);;
let rec orElse_d2 _lh_orElse_arg1_5 _lh_orElse_arg2_5 =
  (match _lh_orElse_arg1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_5
    | _ -> 
      _lh_orElse_arg1_5);;
let rec orElse_d3 _lh_orElse_arg1_1 _lh_orElse_arg2_1 =
  (match _lh_orElse_arg1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1
    | _ -> 
      _lh_orElse_arg1_1);;
let rec orElse_d4 _lh_orElse_arg1_1_3 _lh_orElse_arg2_1_3 =
  (match _lh_orElse_arg1_1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_1_3
    | _ -> 
      _lh_orElse_arg1_1_3);;
let rec orElse_d5 _lh_orElse_arg1_0 _lh_orElse_arg2_0 =
  (match _lh_orElse_arg1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_0
    | _ -> 
      _lh_orElse_arg1_0);;
let rec orElse_d6 _lh_orElse_arg1_6 _lh_orElse_arg2_6 =
  (match _lh_orElse_arg1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_6
    | _ -> 
      _lh_orElse_arg1_6);;
let rec orElse_d7 _lh_orElse_arg1_1_0 _lh_orElse_arg2_1_0 =
  (match _lh_orElse_arg1_1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_1_0
    | _ -> 
      _lh_orElse_arg1_1_0);;
let rec orElse_d8 _lh_orElse_arg1_3 _lh_orElse_arg2_3 =
  (match _lh_orElse_arg1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_3
    | _ -> 
      _lh_orElse_arg1_3);;
let rec orElse_d9 _lh_orElse_arg1_8 _lh_orElse_arg2_8 =
  (match _lh_orElse_arg1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_8
    | _ -> 
      _lh_orElse_arg1_8);;
let rec or_d0 _lh_or_arg1_2 =
  (_lh_or_arg1_2 99);;
let rec or_d1 _lh_or_arg1_1 =
  (_lh_or_arg1_1 99);;
let rec or_d2 _lh_or_arg1_3 =
  (_lh_or_arg1_3 99);;
let rec or_d3 _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec pair_d0 _lh_pair_arg1_0 _lh_pair_arg2_0 =
  (`LH_P2(_lh_pair_arg1_0, _lh_pair_arg2_0));;
let rec pair_d1 _lh_pair_arg1_1 _lh_pair_arg2_1 =
  (`LH_P2(_lh_pair_arg1_1, _lh_pair_arg2_1));;
let rec prop2_d0 _lh_prop2_arg1_1 _lh_prop2_arg2_1 _lh_prop2_arg3_1 =
  (match _lh_prop2_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_1) -> 
      ((_lh_prop2_arg1_1 _lh_prop2_Just_0_1) _lh_prop2_arg3_1)
    | _ -> 
      (failwith "error"));;
let rec prop2_d1 _lh_prop2_arg1_2 _lh_prop2_arg2_2 _lh_prop2_arg3_2 =
  (match _lh_prop2_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_2) -> 
      ((_lh_prop2_arg1_2 _lh_prop2_Just_0_2) _lh_prop2_arg3_2)
    | _ -> 
      (failwith "error"));;
let rec prop2_d2 _lh_prop2_arg1_0 _lh_prop2_arg2_0 _lh_prop2_arg3_0 =
  (match _lh_prop2_arg2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_0) -> 
      ((_lh_prop2_arg1_0 _lh_prop2_Just_0_0) _lh_prop2_arg3_0)
    | _ -> 
      (failwith "error"));;
let rec prop_fold_d0 _lh_prop_fold_arg1_1 _lh_prop_fold_arg2_1 _lh_prop_fold_arg3_1 =
  ((_lh_prop_fold_arg3_1 _lh_prop_fold_arg2_1) _lh_prop_fold_arg1_1);;
let rec prop_fold_d1 _lh_prop_fold_arg1_0 _lh_prop_fold_arg2_0 _lh_prop_fold_arg3_0 =
  ((_lh_prop_fold_arg3_0 _lh_prop_fold_arg2_0) _lh_prop_fold_arg1_0);;
let rec prop_fold_d2 _lh_prop_fold_arg1_2 _lh_prop_fold_arg2_2 _lh_prop_fold_arg3_2 =
  ((_lh_prop_fold_arg3_2 _lh_prop_fold_arg2_2) _lh_prop_fold_arg1_2);;
let rec quant_d0 _lh_quant_arg1_8 _lh_quant_arg2_8 _lh_quant_arg3_8 _lh_quant_arg4_8 =
  (let rec p_8 = (fun x_3_5 -> 
    ((_lh_quant_arg2_8 x_3_5) _lh_quant_arg3_8)) in
    ((_lh_quant_arg1_8 p_8) _lh_quant_arg4_8));;
let rec quant_d1 _lh_quant_arg1_3 _lh_quant_arg2_3 _lh_quant_arg3_3 _lh_quant_arg4_3 =
  (let rec p_3 = (fun x_2_3 -> 
    ((_lh_quant_arg2_3 x_2_3) _lh_quant_arg3_3)) in
    ((_lh_quant_arg1_3 p_3) _lh_quant_arg4_3));;
let rec quant_d2 _lh_quant_arg1_7 _lh_quant_arg2_7 _lh_quant_arg3_7 _lh_quant_arg4_7 =
  (let rec p_7 = (fun x_3_4 -> 
    ((_lh_quant_arg2_7 x_3_4) _lh_quant_arg3_7)) in
    ((_lh_quant_arg1_7 p_7) _lh_quant_arg4_7));;
let rec quant_d3 _lh_quant_arg1_5 _lh_quant_arg2_5 _lh_quant_arg3_5 _lh_quant_arg4_5 =
  (let rec p_5 = (fun x_2_7 -> 
    ((_lh_quant_arg2_5 x_2_7) _lh_quant_arg3_5)) in
    ((_lh_quant_arg1_5 p_5) _lh_quant_arg4_5));;
let rec quant_d4 _lh_quant_arg1_6 _lh_quant_arg2_6 _lh_quant_arg3_6 _lh_quant_arg4_6 =
  (let rec p_6 = (fun x_3_1 -> 
    ((_lh_quant_arg2_6 x_3_1) _lh_quant_arg3_6)) in
    ((_lh_quant_arg1_6 p_6) _lh_quant_arg4_6));;
let rec quant_d5 _lh_quant_arg1_0 _lh_quant_arg2_0 _lh_quant_arg3_0 _lh_quant_arg4_0 =
  (let rec p_0 = (fun x_1_2 -> 
    ((_lh_quant_arg2_0 x_1_2) _lh_quant_arg3_0)) in
    ((_lh_quant_arg1_0 p_0) _lh_quant_arg4_0));;
let rec quant_d6 _lh_quant_arg1_2 _lh_quant_arg2_2 _lh_quant_arg3_2 _lh_quant_arg4_2 =
  (let rec p_2 = (fun x_1_7 -> 
    ((_lh_quant_arg2_2 x_1_7) _lh_quant_arg3_2)) in
    ((_lh_quant_arg1_2 p_2) _lh_quant_arg4_2));;
let rec quant_d7 _lh_quant_arg1_1 _lh_quant_arg2_1 _lh_quant_arg3_1 _lh_quant_arg4_1 =
  (let rec p_1 = (fun x_1_4 -> 
    ((_lh_quant_arg2_1 x_1_4) _lh_quant_arg3_1)) in
    ((_lh_quant_arg1_1 p_1) _lh_quant_arg4_1));;
let rec quant_d8 _lh_quant_arg1_9 _lh_quant_arg2_9 _lh_quant_arg3_9 _lh_quant_arg4_9 =
  (let rec p_9 = (fun x_3_8 -> 
    ((_lh_quant_arg2_9 x_3_8) _lh_quant_arg3_9)) in
    ((_lh_quant_arg1_9 p_9) _lh_quant_arg4_9));;
let rec quant_d9 _lh_quant_arg1_4 _lh_quant_arg2_4 _lh_quant_arg3_4 _lh_quant_arg4_4 =
  (let rec p_4 = (fun x_2_4 -> 
    ((_lh_quant_arg2_4 x_2_4) _lh_quant_arg3_4)) in
    ((_lh_quant_arg1_4 p_4) _lh_quant_arg4_4));;
let rec result_d0 _lh_result_arg1_0 =
  (_lh_result_arg1_0 99);;
let rec snd_d0 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec snd_d1 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd_d2 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec squash_d0 _lh_squash_arg1_1 =
  (_lh_squash_arg1_1 99);;
let rec squash_d1 _lh_squash_arg1_0 =
  (_lh_squash_arg1_0 99);;
let rec succeed_d0 _lh_succeed_arg1_6 =
  (`Just(_lh_succeed_arg1_6));;
let rec succeed_d1 _lh_succeed_arg1_2 =
  (`Just(_lh_succeed_arg1_2));;
let rec succeed_d1_d0 _lh_succeed_arg1_1_0 =
  (`Just(_lh_succeed_arg1_1_0));;
let rec succeed_d1_d1 _lh_succeed_arg1_1_1 =
  (`Just(_lh_succeed_arg1_1_1));;
let rec succeed_d2 _lh_succeed_arg1_9 =
  (`Just(_lh_succeed_arg1_9));;
let rec succeed_d3 _lh_succeed_arg1_8 =
  (`Just(_lh_succeed_arg1_8));;
let rec succeed_d4 _lh_succeed_arg1_0 =
  (`Just(_lh_succeed_arg1_0));;
let rec succeed_d5 _lh_succeed_arg1_4 =
  (let rec _lh_lift_Just_0_3 = _lh_succeed_arg1_4 in
    (fun _lh_lift_arg1_5 -> 
      (let rec _lh_getOrElse_Just_0_4 = (_lh_lift_arg1_5 _lh_lift_Just_0_3) in
        (fun _lh_getOrElse_arg2_6 -> 
          _lh_getOrElse_Just_0_4))));;
let rec succeed_d6 _lh_succeed_arg1_3 =
  (`Just(_lh_succeed_arg1_3));;
let rec succeed_d7 _lh_succeed_arg1_1 =
  (`Just(_lh_succeed_arg1_1));;
let rec succeed_d8 _lh_succeed_arg1_7 =
  (`Just(_lh_succeed_arg1_7));;
let rec succeed_d9 _lh_succeed_arg1_5 =
  (`Just(_lh_succeed_arg1_5));;
let rec sum_d0 ls_2_0 =
  (ls_2_0 99);;
let rec tail_d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_5_0, t_5_2) -> 
      t_5_2
    | `LH_N -> 
      (failwith "error"));;
let rec takeWhile_d0 _lh_takeWhile_arg1_0 _lh_takeWhile_arg2_0 =
  (match _lh_takeWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_0, _lh_takeWhile_LH_C_1_0) -> 
      (if (_lh_takeWhile_arg1_0 _lh_takeWhile_LH_C_0_0) then
        (`LH_C(_lh_takeWhile_LH_C_0_0, ((takeWhile_d0 _lh_takeWhile_arg1_0) _lh_takeWhile_LH_C_1_0)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec the_d0 _lh_the_arg1_3 =
  (match _lh_the_arg1_3 with
    | `Just(_lh_the_Just_0_3) -> 
      _lh_the_Just_0_3
    | _ -> 
      (failwith "error"));;
let rec the_d1 _lh_the_arg1_0 =
  (match _lh_the_arg1_0 with
    | `Just(_lh_the_Just_0_0) -> 
      _lh_the_Just_0_0
    | _ -> 
      (failwith "error"));;
let rec the_d2 _lh_the_arg1_5 =
  (match _lh_the_arg1_5 with
    | `Just(_lh_the_Just_0_5) -> 
      _lh_the_Just_0_5
    | _ -> 
      (failwith "error"));;
let rec the_d3 _lh_the_arg1_4 =
  (match _lh_the_arg1_4 with
    | `Just(_lh_the_Just_0_4) -> 
      _lh_the_Just_0_4
    | _ -> 
      (failwith "error"));;
let rec the_d4 _lh_the_arg1_2 =
  (match _lh_the_arg1_2 with
    | `Just(_lh_the_Just_0_2) -> 
      _lh_the_Just_0_2
    | _ -> 
      (failwith "error"));;
let rec the_d5 _lh_the_arg1_1 =
  (match _lh_the_arg1_1 with
    | `Just(_lh_the_Just_0_1) -> 
      _lh_the_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec unify'_d0 _lh_unify'_arg1_0 _lh_unify'_arg2_0 =
  (_lh_unify'_arg2_0 _lh_unify'_arg1_0);;
let rec update_alist_d0 _lh_update_alist_arg1_0 _lh_update_alist_arg2_0 _lh_update_alist_arg3_0 =
  (let rec upd_0 = (fun ls_1 -> 
    (let rec _lh_matchIdent_0 = ls_1 in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (`LH_C((`LH_P2(_lh_update_alist_arg1_0, (_lh_update_alist_arg2_0 _lh_update_alist_arg3_0))), (`LH_N)))
        | `LH_C(_lh_update_alist_LH_C_0_0, _lh_update_alist_LH_C_1_0) -> 
          (match _lh_update_alist_LH_C_0_0 with
            | `LH_P2(_lh_update_alist_LH_P2_0_0, _lh_update_alist_LH_P2_1_0) -> 
              (if (_lh_update_alist_arg1_0 = _lh_update_alist_LH_P2_0_0) then
                (`LH_C((`LH_P2(_lh_update_alist_arg1_0, (_lh_update_alist_arg2_0 _lh_update_alist_LH_P2_1_0))), _lh_update_alist_LH_C_1_0))
              else
                (`LH_C((`LH_P2(_lh_update_alist_LH_P2_0_0, _lh_update_alist_LH_P2_1_0)), (upd_0 _lh_update_alist_LH_C_1_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    upd_0);;
let rec zip_lz_nl_d0 xs_1_8 ys_3_9 =
  (match ys_3_9 with
    | `LH_C(hy_7, ty_7) -> 
      (((Lazy.force xs_1_8) hy_7) ty_7)
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_2 -> 
        (`LH_N)));;
let rec zip_lz_nl_d1 xs_1_9 ys_4_0 =
  (match ys_4_0 with
    | `LH_C(hy_8, ty_8) -> 
      (((Lazy.force xs_1_9) hy_8) ty_8)
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_3 -> 
        (`LH_N)));;
let rec zip_lz_nl_d2 xs_6 ys_8 =
  (match ys_8 with
    | `LH_C(hy_1, ty_1) -> 
      (((Lazy.force xs_6) hy_1) ty_1)
    | `LH_N -> 
      (fun _lh_listcomp_fun_7 -> 
        (`LH_N)));;
let rec zip_lz_nl_d3 xs_2_2 ys_4_5 =
  (match ys_4_5 with
    | `LH_C(hy_9, ty_9) -> 
      (((Lazy.force xs_2_2) hy_9) ty_9)
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_4 _lh_strict_super_arg1_3 superpose_3 -> 
        (`LH_N)));;
let rec zip_d3 xs_1_6 ys_3_2 =
  (xs_1_6 ys_3_2);;
let rec apply_d0 _lh_apply_arg1_7 _lh_apply_arg2_7 =
  ((getOrElse_d2 ((assoc_d2 _lh_apply_arg1_7) _lh_apply_arg2_7)) (`Var(_lh_apply_arg2_7)))
and apply_d1 _lh_apply_arg1_5 _lh_apply_arg2_5 =
  ((getOrElse_d3 ((assoc_d4 _lh_apply_arg1_5) _lh_apply_arg2_5)) (`Var(_lh_apply_arg2_5)))
and apply_d2 _lh_apply_arg1_6 _lh_apply_arg2_6 =
  ((getOrElse_d1_d1 ((assoc_d5 _lh_apply_arg1_6) _lh_apply_arg2_6)) (`Var(_lh_apply_arg2_6)))
and apply_d3 _lh_apply_arg1_0 _lh_apply_arg2_0 =
  ((getOrElse_d1_d2 ((assoc_d6 _lh_apply_arg1_0) _lh_apply_arg2_0)) (`Var(_lh_apply_arg2_0)))
and apply_d4 _lh_apply_arg1_3 _lh_apply_arg2_3 =
  ((getOrElse_d1_d3 ((assoc_d8 _lh_apply_arg1_3) _lh_apply_arg2_3)) (`Var(_lh_apply_arg2_3)))
and apply_d5 _lh_apply_arg1_4 _lh_apply_arg2_4 =
  ((getOrElse_d1_d4 ((assoc_d9 _lh_apply_arg1_4) _lh_apply_arg2_4)) (`Var(_lh_apply_arg2_4)))
and apply_d6 _lh_apply_arg1_1 _lh_apply_arg2_1 =
  ((getOrElse_d1_d5 ((assoc_d1_d1 _lh_apply_arg1_1) _lh_apply_arg2_1)) (`Var(_lh_apply_arg2_1)))
and apply_d7 _lh_apply_arg1_2 _lh_apply_arg2_2 =
  ((getOrElse_d1_d6 ((assoc_d1_d2 _lh_apply_arg1_2) _lh_apply_arg2_2)) (`Var(_lh_apply_arg2_2)))
and assoc_d0 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (let rec match_x_0 = (fun uv_0 -> 
    (let rec _lh_matchIdent_1_3 = uv_0 in
      (match _lh_matchIdent_1_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          ((maybeX_d0 (_lh_assoc_arg2_0 = _lh_assoc_LH_P2_0_0)) _lh_assoc_LH_P2_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d0 ((map_d0 match_x_0) _lh_assoc_arg1_0)))
and assoc_d1 _lh_assoc_arg1_6 _lh_assoc_arg2_6 =
  (let rec match_x_6 = (fun uv_6 -> 
    (let rec _lh_matchIdent_1_9 = uv_6 in
      (match _lh_matchIdent_1_9 with
        | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
          ((maybeX_d2 (_lh_assoc_arg2_6 = _lh_assoc_LH_P2_0_6)) _lh_assoc_LH_P2_1_6)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d3 ((map_d1_d8 match_x_6) _lh_assoc_arg1_6)))
and assoc_d1_d0 _lh_assoc_arg1_1_0 _lh_assoc_arg2_1_0 =
  (let rec match_x_1_0 = (fun uv_1_0 -> 
    (let rec _lh_matchIdent_2_3 = uv_1_0 in
      (match _lh_matchIdent_2_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
          ((maybeX_d1_d1 (_lh_assoc_arg2_1_0 = _lh_assoc_LH_P2_0_1_0)) _lh_assoc_LH_P2_1_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d2 ((map_d4_d2 match_x_1_0) _lh_assoc_arg1_1_0)))
and assoc_d1_d1 _lh_assoc_arg1_1_2 _lh_assoc_arg2_1_2 =
  (let rec match_x_1_2 = (fun uv_1_2 -> 
    (let rec _lh_matchIdent_2_5 = uv_1_2 in
      (match _lh_matchIdent_2_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_2, _lh_assoc_LH_P2_1_1_2) -> 
          ((maybeX_d1_d2 (_lh_assoc_arg2_1_2 = _lh_assoc_LH_P2_0_1_2)) _lh_assoc_LH_P2_1_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d3 ((map_d4_d3 match_x_1_2) _lh_assoc_arg1_1_2)))
and assoc_d1_d2 _lh_assoc_arg1_8 _lh_assoc_arg2_8 =
  (let rec match_x_8 = (fun uv_8 -> 
    (let rec _lh_matchIdent_2_1 = uv_8 in
      (match _lh_matchIdent_2_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
          ((maybeX_d1_d3 (_lh_assoc_arg2_8 = _lh_assoc_LH_P2_0_8)) _lh_assoc_LH_P2_1_8)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d4 ((map_d4_d6 match_x_8) _lh_assoc_arg1_8)))
and assoc_d2 _lh_assoc_arg1_5 _lh_assoc_arg2_5 =
  (let rec match_x_5 = (fun uv_5 -> 
    (let rec _lh_matchIdent_1_8 = uv_5 in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
          ((maybeX_d3 (_lh_assoc_arg2_5 = _lh_assoc_LH_P2_0_5)) _lh_assoc_LH_P2_1_5)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d4 ((map_d1_d9 match_x_5) _lh_assoc_arg1_5)))
and assoc_d3 _lh_assoc_arg1_7 _lh_assoc_arg2_7 =
  (let rec match_x_7 = (fun uv_7 -> 
    (let rec _lh_matchIdent_2_0 = uv_7 in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
          ((maybeX_d4 (_lh_assoc_arg2_7 = _lh_assoc_LH_P2_0_7)) _lh_assoc_LH_P2_1_7)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d5 ((map_d2_d1 match_x_7) _lh_assoc_arg1_7)))
and assoc_d4 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (let rec match_x_2 = (fun uv_2 -> 
    (let rec _lh_matchIdent_1_5 = uv_2 in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          ((maybeX_d5 (_lh_assoc_arg2_2 = _lh_assoc_LH_P2_0_2)) _lh_assoc_LH_P2_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d6 ((map_d2_d2 match_x_2) _lh_assoc_arg1_2)))
and assoc_d5 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (let rec match_x_3 = (fun uv_3 -> 
    (let rec _lh_matchIdent_1_6 = uv_3 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          ((maybeX_d6 (_lh_assoc_arg2_3 = _lh_assoc_LH_P2_0_3)) _lh_assoc_LH_P2_1_3)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d7 ((map_d3_d2 match_x_3) _lh_assoc_arg1_3)))
and assoc_d6 _lh_assoc_arg1_4 _lh_assoc_arg2_4 =
  (let rec match_x_4 = (fun uv_4 -> 
    (let rec _lh_matchIdent_1_7 = uv_4 in
      (match _lh_matchIdent_1_7 with
        | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
          ((maybeX_d7 (_lh_assoc_arg2_4 = _lh_assoc_LH_P2_0_4)) _lh_assoc_LH_P2_1_4)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d8 ((map_d3_d4 match_x_4) _lh_assoc_arg1_4)))
and assoc_d7 _lh_assoc_arg1_9 _lh_assoc_arg2_9 =
  (let rec match_x_9 = (fun uv_9 -> 
    (let rec _lh_matchIdent_2_2 = uv_9 in
      (match _lh_matchIdent_2_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
          ((maybeX_d8 (_lh_assoc_arg2_9 = _lh_assoc_LH_P2_0_9)) _lh_assoc_LH_P2_1_9)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d9 ((map_d3_d6 match_x_9) _lh_assoc_arg1_9)))
and assoc_d8 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (let rec match_x_1 = (fun uv_1 -> 
    (let rec _lh_matchIdent_1_4 = uv_1 in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          ((maybeX_d9 (_lh_assoc_arg2_1 = _lh_assoc_LH_P2_0_1)) _lh_assoc_LH_P2_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d0 ((map_d3_d7 match_x_1) _lh_assoc_arg1_1)))
and assoc_d9 _lh_assoc_arg1_1_1 _lh_assoc_arg2_1_1 =
  (let rec match_x_1_1 = (fun uv_1_1 -> 
    (let rec _lh_matchIdent_2_4 = uv_1_1 in
      (match _lh_matchIdent_2_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
          ((maybeX_d1_d0 (_lh_assoc_arg2_1_1 = _lh_assoc_LH_P2_0_1_1)) _lh_assoc_LH_P2_1_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d1 ((map_d4_d0 match_x_1_1) _lh_assoc_arg1_1_1)))
and box_d0 _lh_box_arg1_0 =
  (let rec h_2_9 = _lh_box_arg1_0 in
    (let rec t_2_9 = (fun ys_6 -> 
      ys_6) in
      (fun ys_7 -> 
        (`LH_C(h_2_9, ((mappend_d1_d0 t_2_9) ys_7))))))
and box_d1 _lh_box_arg1_1 =
  (let rec h_4_5 = _lh_box_arg1_1 in
    (let rec t_4_6 = (fun ys_1_6 -> 
      ys_1_6) in
      (fun ys_1_7 -> 
        (`LH_C(h_4_5, ((mappend_d1_d1 t_4_6) ys_1_7))))))
and comp_sub_d0 _lh_comp_sub_arg1_0 _lh_comp_sub_arg2_0 =
  ((mappend_d1_d9 (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_0, _lh_comp_sub_LH_P2_1_0) -> 
            (let rec h_5_9 = (`LH_P2(_lh_comp_sub_LH_P2_0_0, ((sub_d4 _lh_comp_sub_LH_P2_1_0) _lh_comp_sub_arg1_0))) in
              (let rec t_6_3 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2) in
                (fun ys_2_3 -> 
                  (`LH_C(h_5_9, ((mappend_d1_d9 t_6_3) ys_2_3))))))
          | _ -> 
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (fun ys_2_4 -> 
          ys_2_4))) in
    (_lh_listcomp_fun_1_4 _lh_comp_sub_arg2_0))) _lh_comp_sub_arg1_0)
and comp_sub_d1 _lh_comp_sub_arg1_1 _lh_comp_sub_arg2_1 =
  ((mappend_d2_d0 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_3) -> 
        (match _lh_listcomp_fun_ls_h_1_0 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_1, _lh_comp_sub_LH_P2_1_1) -> 
            (let rec h_6_3 = (`LH_P2(_lh_comp_sub_LH_P2_0_1, ((sub_d6 _lh_comp_sub_LH_P2_1_1) _lh_comp_sub_arg1_1))) in
              (let rec t_6_7 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_3) in
                (fun ys_2_6 -> 
                  (`LH_C(h_6_3, ((mappend_d2_d0 t_6_7) ys_2_6))))))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_3))
      | `LH_N -> 
        (fun ys_2_7 -> 
          ys_2_7))) in
    (_lh_listcomp_fun_1_5 _lh_comp_sub_arg2_1))) _lh_comp_sub_arg1_1)
and copy_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 <= 0) then
    (fun _lh_all_arg1_0 -> 
      true)
  else
    (let rec _lh_all_LH_C_0_0 = _lh_copy_arg2_0 in
      (let rec _lh_all_LH_C_1_0 = ((copy_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
        (fun _lh_all_arg1_1 -> 
          (if (_lh_all_arg1_1 _lh_all_LH_C_0_0) then
            ((all_d0 _lh_all_arg1_1) _lh_all_LH_C_1_0)
          else
            false)))))
and cost_d0 _lh_cost_arg1_0 =
  (match _lh_cost_arg1_0 with
    | `LH_P2(_lh_cost_LH_P2_0_0, _lh_cost_LH_P2_1_0) -> 
      (let rec size_0 = (fun _lh_size_arg1_0 -> 
        (((expr_fold_d0 (fun x_1_5 a_0 -> 
          ((sum_d0 a_0) + 1))) (fun dum_1 -> 
          0)) _lh_size_arg1_0)) in
        ((size_0 _lh_cost_LH_P2_0_0) + (size_0 _lh_cost_LH_P2_1_0)))
    | _ -> 
      (failwith "error"))
and delete_eqns_d0 _lh_delete_eqns_arg1_0 =
  (let rec ok_0 = (fun e_0 -> 
    (not ((inList_d0 (eqno_d0 e_0)) _lh_delete_eqns_arg1_0))) in
    (map_dnet_d0 (filter_d0 ok_0)))
and enumFrom_d0 a_2 =
  (lazy (let rec hx_1 = a_2 in
    (let rec tx_1 = (enumFrom_d0 (a_2 + 1)) in
      (fun hy_2 ty_2 -> 
        (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_strict_super_LH_P2_0_0 = hx_1 in
          (let rec _lh_strict_super_LH_P2_1_0 = hy_2 in
            (fun _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_8 _lh_strict_super_arg1_1 superpose_1 -> 
              (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_5 -> 
                (match _lh_listcomp_fun_para_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_7) -> 
                    (match _lh_listcomp_fun_ls_h_6 with
                      | `LH_P2(_lh_strict_super_LH_P2_0_1, _lh_strict_super_LH_P2_1_1) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_strict_super_LH_P2_0_0, _lh_strict_super_LH_P2_0_1)), _lh_strict_super_LH_P2_1_1)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7)))
                      | _ -> 
                        (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7))
                  | `LH_N -> 
                    (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6))) in
                (_lh_listcomp_fun_9 ((superpose_1 _lh_strict_super_arg1_1) _lh_strict_super_LH_P2_1_0)))))) in
          (let rec _lh_listcomp_fun_ls_t_8 = ((zip_lz_nl_d3 tx_1) ty_2) in
            (fun _lh_listcomp_fun_1_0 _lh_strict_super_arg1_2 superpose_2 -> 
              ((((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_8) _lh_listcomp_fun_1_0) _lh_strict_super_arg1_2) superpose_2))))))))
and enumFrom_d1 a_4 =
  (lazy (let rec hx_4 = a_4 in
    (let rec tx_4 = (enumFrom_d1 (a_4 + 1)) in
      (fun hy_5 ty_5 -> 
        (let rec _lh_listcomp_fun_ls_h_1_1 = (let rec _lh_subterms_LH_P2_0_4 = hx_4 in
          (let rec _lh_subterms_LH_P2_1_4 = hy_5 in
            (fun _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_1_6 -> 
              (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_9 -> 
                (match _lh_listcomp_fun_para_9 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_5) -> 
                    (match _lh_listcomp_fun_ls_h_1_2 with
                      | `LH_P2(_lh_subterms_LH_P2_0_5, _lh_subterms_LH_P2_1_5) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_4, _lh_subterms_LH_P2_0_5)), _lh_subterms_LH_P2_1_5)), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5)))
                      | _ -> 
                        (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_4))) in
                (_lh_listcomp_fun_1_7 (subterms_d0 _lh_subterms_LH_P2_1_4)))))) in
          (let rec _lh_listcomp_fun_ls_t_1_6 = ((zip_lz_nl_d0 tx_4) ty_5) in
            (fun _lh_listcomp_fun_1_8 -> 
              ((_lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_ls_t_1_6) _lh_listcomp_fun_1_8))))))))
and enumFrom_d2 a_1 =
  (lazy (let rec hx_0 = a_1 in
    (let rec tx_0 = (enumFrom_d2 (a_1 + 1)) in
      (fun hy_0 ty_0 -> 
        (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_subterms_LH_P2_0_0 = hx_0 in
          (let rec _lh_subterms_LH_P2_1_0 = hy_0 in
            (fun _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_4 -> 
              (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_4 -> 
                (match _lh_listcomp_fun_para_4 with
                  | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                    (match _lh_listcomp_fun_ls_h_4 with
                      | `LH_P2(_lh_subterms_LH_P2_0_1, _lh_subterms_LH_P2_1_1) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_0, _lh_subterms_LH_P2_0_1)), _lh_subterms_LH_P2_1_1)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4)))
                      | _ -> 
                        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4))
                  | `LH_N -> 
                    (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3))) in
                (_lh_listcomp_fun_5 (subterms_d1 _lh_subterms_LH_P2_1_0)))))) in
          (let rec _lh_listcomp_fun_ls_t_5 = ((zip_lz_nl_d1 tx_0) ty_0) in
            (fun _lh_listcomp_fun_6 -> 
              ((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_6))))))))
and enumFrom_d3 a_3 =
  (lazy (let rec hx_3 = a_3 in
    (let rec tx_3 = (enumFrom_d3 (a_3 + 1)) in
      (fun hy_4 ty_4 -> 
        (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_subterms_LH_P2_0_2 = hx_3 in
          (let rec _lh_subterms_LH_P2_1_2 = hy_4 in
            (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_1 -> 
              (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_6 -> 
                (match _lh_listcomp_fun_para_6 with
                  | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_1_0) -> 
                    (match _lh_listcomp_fun_ls_h_8 with
                      | `LH_P2(_lh_subterms_LH_P2_0_3, _lh_subterms_LH_P2_1_3) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_2, _lh_subterms_LH_P2_0_3)), _lh_subterms_LH_P2_1_3)), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_0)))
                      | _ -> 
                        (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_0))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_9))) in
                (_lh_listcomp_fun_1_2 (subterms_d2 _lh_subterms_LH_P2_1_2)))))) in
          (let rec _lh_listcomp_fun_ls_t_1_1 = ((zip_lz_nl_d2 tx_3) ty_4) in
            (fun _lh_listcomp_fun_1_3 -> 
              ((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_1_1) _lh_listcomp_fun_1_3))))))))
and eqExpr_d0 _lh_eqExpr_arg1_6 _lh_eqExpr_arg2_6 =
  (match _lh_eqExpr_arg1_6 with
    | `Func(_lh_eqExpr_Func_0_1_2, _lh_eqExpr_Func_1_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Func(_lh_eqExpr_Func_0_1_3, _lh_eqExpr_Func_1_1_3) -> 
          ((_lh_eqExpr_Func_0_1_2 = _lh_eqExpr_Func_0_1_3) && ((eqListExpr_d0 _lh_eqExpr_Func_1_1_2) _lh_eqExpr_Func_1_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Var(_lh_eqExpr_Var_0_1_3) -> 
          (_lh_eqExpr_Var_0_1_2 = _lh_eqExpr_Var_0_1_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d1 _lh_eqExpr_arg1_3 _lh_eqExpr_arg2_3 =
  (match _lh_eqExpr_arg1_3 with
    | `Func(_lh_eqExpr_Func_0_6, _lh_eqExpr_Func_1_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Func(_lh_eqExpr_Func_0_7, _lh_eqExpr_Func_1_7) -> 
          ((_lh_eqExpr_Func_0_6 = _lh_eqExpr_Func_0_7) && ((eqListExpr_d1 _lh_eqExpr_Func_1_6) _lh_eqExpr_Func_1_7))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Var(_lh_eqExpr_Var_0_7) -> 
          (_lh_eqExpr_Var_0_6 = _lh_eqExpr_Var_0_7)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d2 _lh_eqExpr_arg1_2 _lh_eqExpr_arg2_2 =
  (match _lh_eqExpr_arg1_2 with
    | `Func(_lh_eqExpr_Func_0_4, _lh_eqExpr_Func_1_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Func(_lh_eqExpr_Func_0_5, _lh_eqExpr_Func_1_5) -> 
          ((_lh_eqExpr_Func_0_4 = _lh_eqExpr_Func_0_5) && ((eqListExpr_d2 _lh_eqExpr_Func_1_4) _lh_eqExpr_Func_1_5))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Var(_lh_eqExpr_Var_0_5) -> 
          (_lh_eqExpr_Var_0_4 = _lh_eqExpr_Var_0_5)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d3 _lh_eqExpr_arg1_0 _lh_eqExpr_arg2_0 =
  (match _lh_eqExpr_arg1_0 with
    | `Func(_lh_eqExpr_Func_0_0, _lh_eqExpr_Func_1_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Func(_lh_eqExpr_Func_0_1, _lh_eqExpr_Func_1_1) -> 
          ((_lh_eqExpr_Func_0_0 = _lh_eqExpr_Func_0_1) && ((eqListExpr_d3 _lh_eqExpr_Func_1_0) _lh_eqExpr_Func_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Var(_lh_eqExpr_Var_0_1) -> 
          (_lh_eqExpr_Var_0_0 = _lh_eqExpr_Var_0_1)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d4 _lh_eqExpr_arg1_5 _lh_eqExpr_arg2_5 =
  (match _lh_eqExpr_arg1_5 with
    | `Func(_lh_eqExpr_Func_0_1_0, _lh_eqExpr_Func_1_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Func(_lh_eqExpr_Func_0_1_1, _lh_eqExpr_Func_1_1_1) -> 
          ((_lh_eqExpr_Func_0_1_0 = _lh_eqExpr_Func_0_1_1) && ((eqListExpr_d4 _lh_eqExpr_Func_1_1_0) _lh_eqExpr_Func_1_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Var(_lh_eqExpr_Var_0_1_1) -> 
          (_lh_eqExpr_Var_0_1_0 = _lh_eqExpr_Var_0_1_1)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d5 _lh_eqExpr_arg1_1 _lh_eqExpr_arg2_1 =
  (match _lh_eqExpr_arg1_1 with
    | `Func(_lh_eqExpr_Func_0_2, _lh_eqExpr_Func_1_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Func(_lh_eqExpr_Func_0_3, _lh_eqExpr_Func_1_3) -> 
          ((_lh_eqExpr_Func_0_2 = _lh_eqExpr_Func_0_3) && ((eqListExpr_d5 _lh_eqExpr_Func_1_2) _lh_eqExpr_Func_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Var(_lh_eqExpr_Var_0_3) -> 
          (_lh_eqExpr_Var_0_2 = _lh_eqExpr_Var_0_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d6 _lh_eqExpr_arg1_4 _lh_eqExpr_arg2_4 =
  (match _lh_eqExpr_arg1_4 with
    | `Func(_lh_eqExpr_Func_0_8, _lh_eqExpr_Func_1_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Func(_lh_eqExpr_Func_0_9, _lh_eqExpr_Func_1_9) -> 
          ((_lh_eqExpr_Func_0_8 = _lh_eqExpr_Func_0_9) && ((eqListExpr_d6 _lh_eqExpr_Func_1_8) _lh_eqExpr_Func_1_9))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Var(_lh_eqExpr_Var_0_9) -> 
          (_lh_eqExpr_Var_0_8 = _lh_eqExpr_Var_0_9)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d0 _lh_eqListExpr_arg1_2 _lh_eqListExpr_arg2_2 =
  (match _lh_eqListExpr_arg1_2 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_4, _lh_eqListExpr_LH_C_1_4) -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_C(_lh_eqListExpr_LH_C_0_5, _lh_eqListExpr_LH_C_1_5) -> 
          (if ((eqExpr_d0 _lh_eqListExpr_LH_C_0_4) _lh_eqListExpr_LH_C_0_5) then
            ((eqListExpr_d0 _lh_eqListExpr_LH_C_1_4) _lh_eqListExpr_LH_C_1_5)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d1 _lh_eqListExpr_arg1_3 _lh_eqListExpr_arg2_3 =
  (match _lh_eqListExpr_arg1_3 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_6, _lh_eqListExpr_LH_C_1_6) -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_C(_lh_eqListExpr_LH_C_0_7, _lh_eqListExpr_LH_C_1_7) -> 
          (if ((eqExpr_d1 _lh_eqListExpr_LH_C_0_6) _lh_eqListExpr_LH_C_0_7) then
            ((eqListExpr_d1 _lh_eqListExpr_LH_C_1_6) _lh_eqListExpr_LH_C_1_7)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d2 _lh_eqListExpr_arg1_6 _lh_eqListExpr_arg2_6 =
  (match _lh_eqListExpr_arg1_6 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_2, _lh_eqListExpr_LH_C_1_1_2) -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_3, _lh_eqListExpr_LH_C_1_1_3) -> 
          (if ((eqExpr_d2 _lh_eqListExpr_LH_C_0_1_2) _lh_eqListExpr_LH_C_0_1_3) then
            ((eqListExpr_d2 _lh_eqListExpr_LH_C_1_1_2) _lh_eqListExpr_LH_C_1_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d3 _lh_eqListExpr_arg1_0 _lh_eqListExpr_arg2_0 =
  (match _lh_eqListExpr_arg1_0 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_0, _lh_eqListExpr_LH_C_1_0) -> 
      (match _lh_eqListExpr_arg2_0 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1, _lh_eqListExpr_LH_C_1_1) -> 
          (if ((eqExpr_d3 _lh_eqListExpr_LH_C_0_0) _lh_eqListExpr_LH_C_0_1) then
            ((eqListExpr_d3 _lh_eqListExpr_LH_C_1_0) _lh_eqListExpr_LH_C_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d4 _lh_eqListExpr_arg1_5 _lh_eqListExpr_arg2_5 =
  (match _lh_eqListExpr_arg1_5 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_0, _lh_eqListExpr_LH_C_1_1_0) -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_1, _lh_eqListExpr_LH_C_1_1_1) -> 
          (if ((eqExpr_d4 _lh_eqListExpr_LH_C_0_1_0) _lh_eqListExpr_LH_C_0_1_1) then
            ((eqListExpr_d4 _lh_eqListExpr_LH_C_1_1_0) _lh_eqListExpr_LH_C_1_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d5 _lh_eqListExpr_arg1_4 _lh_eqListExpr_arg2_4 =
  (match _lh_eqListExpr_arg1_4 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_8, _lh_eqListExpr_LH_C_1_8) -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_C(_lh_eqListExpr_LH_C_0_9, _lh_eqListExpr_LH_C_1_9) -> 
          (if ((eqExpr_d5 _lh_eqListExpr_LH_C_0_8) _lh_eqListExpr_LH_C_0_9) then
            ((eqListExpr_d5 _lh_eqListExpr_LH_C_1_8) _lh_eqListExpr_LH_C_1_9)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d6 _lh_eqListExpr_arg1_1 _lh_eqListExpr_arg2_1 =
  (match _lh_eqListExpr_arg1_1 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_2, _lh_eqListExpr_LH_C_1_2) -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_C(_lh_eqListExpr_LH_C_0_3, _lh_eqListExpr_LH_C_1_3) -> 
          (if ((eqExpr_d6 _lh_eqListExpr_LH_C_0_2) _lh_eqListExpr_LH_C_0_3) then
            ((eqListExpr_d6 _lh_eqListExpr_LH_C_1_2) _lh_eqListExpr_LH_C_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and expr_fold_d0 _lh_expr_fold_arg1_7 _lh_expr_fold_arg2_7 _lh_expr_fold_arg3_7 =
  (match _lh_expr_fold_arg3_7 with
    | `Var(_lh_expr_fold_Var_0_7) -> 
      (_lh_expr_fold_arg2_7 _lh_expr_fold_Var_0_7)
    | `Func(_lh_expr_fold_Func_0_7, _lh_expr_fold_Func_1_7) -> 
      ((_lh_expr_fold_arg1_7 _lh_expr_fold_Func_0_7) ((map_d1 ((expr_fold_d0 _lh_expr_fold_arg1_7) _lh_expr_fold_arg2_7)) _lh_expr_fold_Func_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold_d1 _lh_expr_fold_arg1_9 _lh_expr_fold_arg2_9 _lh_expr_fold_arg3_9 =
  (match _lh_expr_fold_arg3_9 with
    | `Var(_lh_expr_fold_Var_0_9) -> 
      (_lh_expr_fold_arg2_9 _lh_expr_fold_Var_0_9)
    | `Func(_lh_expr_fold_Func_0_9, _lh_expr_fold_Func_1_9) -> 
      ((_lh_expr_fold_arg1_9 _lh_expr_fold_Func_0_9) ((map_d1_d6 ((expr_fold_d1 _lh_expr_fold_arg1_9) _lh_expr_fold_arg2_9)) _lh_expr_fold_Func_1_9))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d0 _lh_expr_fold_arg1_0 _lh_expr_fold_arg2_0 _lh_expr_fold_arg3_0 =
  (match _lh_expr_fold_arg3_0 with
    | `Var(_lh_expr_fold_Var_0_0) -> 
      (_lh_expr_fold_arg2_0 _lh_expr_fold_Var_0_0)
    | `Func(_lh_expr_fold_Func_0_0, _lh_expr_fold_Func_1_0) -> 
      ((_lh_expr_fold_arg1_0 _lh_expr_fold_Func_0_0) ((map_d3_d1 ((expr_fold_d1_d0 _lh_expr_fold_arg1_0) _lh_expr_fold_arg2_0)) _lh_expr_fold_Func_1_0))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d1 _lh_expr_fold_arg1_1_6 _lh_expr_fold_arg2_1_6 _lh_expr_fold_arg3_1_6 =
  (match _lh_expr_fold_arg3_1_6 with
    | `Var(_lh_expr_fold_Var_0_1_6) -> 
      (_lh_expr_fold_arg2_1_6 _lh_expr_fold_Var_0_1_6)
    | `Func(_lh_expr_fold_Func_0_1_6, _lh_expr_fold_Func_1_1_6) -> 
      ((_lh_expr_fold_arg1_1_6 _lh_expr_fold_Func_0_1_6) ((map_d3_d3 ((expr_fold_d1_d1 _lh_expr_fold_arg1_1_6) _lh_expr_fold_arg2_1_6)) _lh_expr_fold_Func_1_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d2 _lh_expr_fold_arg1_1_8 _lh_expr_fold_arg2_1_8 _lh_expr_fold_arg3_1_8 =
  (match _lh_expr_fold_arg3_1_8 with
    | `Var(_lh_expr_fold_Var_0_1_8) -> 
      (_lh_expr_fold_arg2_1_8 _lh_expr_fold_Var_0_1_8)
    | `Func(_lh_expr_fold_Func_0_1_8, _lh_expr_fold_Func_1_1_8) -> 
      ((_lh_expr_fold_arg1_1_8 _lh_expr_fold_Func_0_1_8) ((map_d3_d5 ((expr_fold_d1_d2 _lh_expr_fold_arg1_1_8) _lh_expr_fold_arg2_1_8)) _lh_expr_fold_Func_1_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d3 _lh_expr_fold_arg1_1 _lh_expr_fold_arg2_1 _lh_expr_fold_arg3_1 =
  (match _lh_expr_fold_arg3_1 with
    | `Var(_lh_expr_fold_Var_0_1) -> 
      (_lh_expr_fold_arg2_1 _lh_expr_fold_Var_0_1)
    | `Func(_lh_expr_fold_Func_0_1, _lh_expr_fold_Func_1_1) -> 
      ((_lh_expr_fold_arg1_1 _lh_expr_fold_Func_0_1) ((map_d3_d8 ((expr_fold_d1_d3 _lh_expr_fold_arg1_1) _lh_expr_fold_arg2_1)) _lh_expr_fold_Func_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d4 _lh_expr_fold_arg1_1_0 _lh_expr_fold_arg2_1_0 _lh_expr_fold_arg3_1_0 =
  (match _lh_expr_fold_arg3_1_0 with
    | `Var(_lh_expr_fold_Var_0_1_0) -> 
      (_lh_expr_fold_arg2_1_0 _lh_expr_fold_Var_0_1_0)
    | `Func(_lh_expr_fold_Func_0_1_0, _lh_expr_fold_Func_1_1_0) -> 
      ((_lh_expr_fold_arg1_1_0 _lh_expr_fold_Func_0_1_0) ((map_d3_d9 ((expr_fold_d1_d4 _lh_expr_fold_arg1_1_0) _lh_expr_fold_arg2_1_0)) _lh_expr_fold_Func_1_1_0))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d5 _lh_expr_fold_arg1_2 _lh_expr_fold_arg2_2 _lh_expr_fold_arg3_2 =
  (match _lh_expr_fold_arg3_2 with
    | `Var(_lh_expr_fold_Var_0_2) -> 
      (_lh_expr_fold_arg2_2 _lh_expr_fold_Var_0_2)
    | `Func(_lh_expr_fold_Func_0_2, _lh_expr_fold_Func_1_2) -> 
      ((_lh_expr_fold_arg1_2 _lh_expr_fold_Func_0_2) ((map_d4_d1 ((expr_fold_d1_d5 _lh_expr_fold_arg1_2) _lh_expr_fold_arg2_2)) _lh_expr_fold_Func_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d6 _lh_expr_fold_arg1_1_4 _lh_expr_fold_arg2_1_4 _lh_expr_fold_arg3_1_4 =
  (match _lh_expr_fold_arg3_1_4 with
    | `Var(_lh_expr_fold_Var_0_1_4) -> 
      (_lh_expr_fold_arg2_1_4 _lh_expr_fold_Var_0_1_4)
    | `Func(_lh_expr_fold_Func_0_1_4, _lh_expr_fold_Func_1_1_4) -> 
      ((_lh_expr_fold_arg1_1_4 _lh_expr_fold_Func_0_1_4) ((map_d4_d4 ((expr_fold_d1_d6 _lh_expr_fold_arg1_1_4) _lh_expr_fold_arg2_1_4)) _lh_expr_fold_Func_1_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d7 _lh_expr_fold_arg1_1_2 _lh_expr_fold_arg2_1_2 _lh_expr_fold_arg3_1_2 =
  (match _lh_expr_fold_arg3_1_2 with
    | `Var(_lh_expr_fold_Var_0_1_2) -> 
      (_lh_expr_fold_arg2_1_2 _lh_expr_fold_Var_0_1_2)
    | `Func(_lh_expr_fold_Func_0_1_2, _lh_expr_fold_Func_1_1_2) -> 
      ((_lh_expr_fold_arg1_1_2 _lh_expr_fold_Func_0_1_2) ((map_d4_d5 ((expr_fold_d1_d7 _lh_expr_fold_arg1_1_2) _lh_expr_fold_arg2_1_2)) _lh_expr_fold_Func_1_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d8 _lh_expr_fold_arg1_1_7 _lh_expr_fold_arg2_1_7 _lh_expr_fold_arg3_1_7 =
  (match _lh_expr_fold_arg3_1_7 with
    | `Var(_lh_expr_fold_Var_0_1_7) -> 
      (_lh_expr_fold_arg2_1_7 _lh_expr_fold_Var_0_1_7)
    | `Func(_lh_expr_fold_Func_0_1_7, _lh_expr_fold_Func_1_1_7) -> 
      ((_lh_expr_fold_arg1_1_7 _lh_expr_fold_Func_0_1_7) ((map_d4_d7 ((expr_fold_d1_d8 _lh_expr_fold_arg1_1_7) _lh_expr_fold_arg2_1_7)) _lh_expr_fold_Func_1_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold_d2 _lh_expr_fold_arg1_3 _lh_expr_fold_arg2_3 _lh_expr_fold_arg3_3 =
  (match _lh_expr_fold_arg3_3 with
    | `Var(_lh_expr_fold_Var_0_3) -> 
      (_lh_expr_fold_arg2_3 _lh_expr_fold_Var_0_3)
    | `Func(_lh_expr_fold_Func_0_3, _lh_expr_fold_Func_1_3) -> 
      ((_lh_expr_fold_arg1_3 _lh_expr_fold_Func_0_3) ((map_d1_d7 ((expr_fold_d2 _lh_expr_fold_arg1_3) _lh_expr_fold_arg2_3)) _lh_expr_fold_Func_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold_d3 _lh_expr_fold_arg1_1_3 _lh_expr_fold_arg2_1_3 _lh_expr_fold_arg3_1_3 =
  (match _lh_expr_fold_arg3_1_3 with
    | `Var(_lh_expr_fold_Var_0_1_3) -> 
      (_lh_expr_fold_arg2_1_3 _lh_expr_fold_Var_0_1_3)
    | `Func(_lh_expr_fold_Func_0_1_3, _lh_expr_fold_Func_1_1_3) -> 
      ((_lh_expr_fold_arg1_1_3 _lh_expr_fold_Func_0_1_3) ((map_d2_d0 ((expr_fold_d3 _lh_expr_fold_arg1_1_3) _lh_expr_fold_arg2_1_3)) _lh_expr_fold_Func_1_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold_d4 _lh_expr_fold_arg1_1_5 _lh_expr_fold_arg2_1_5 _lh_expr_fold_arg3_1_5 =
  (match _lh_expr_fold_arg3_1_5 with
    | `Var(_lh_expr_fold_Var_0_1_5) -> 
      (_lh_expr_fold_arg2_1_5 _lh_expr_fold_Var_0_1_5)
    | `Func(_lh_expr_fold_Func_0_1_5, _lh_expr_fold_Func_1_1_5) -> 
      ((_lh_expr_fold_arg1_1_5 _lh_expr_fold_Func_0_1_5) ((map_d2_d3 ((expr_fold_d4 _lh_expr_fold_arg1_1_5) _lh_expr_fold_arg2_1_5)) _lh_expr_fold_Func_1_1_5))
    | _ -> 
      (failwith "error"))
and expr_fold_d5 _lh_expr_fold_arg1_4 _lh_expr_fold_arg2_4 _lh_expr_fold_arg3_4 =
  (match _lh_expr_fold_arg3_4 with
    | `Var(_lh_expr_fold_Var_0_4) -> 
      (_lh_expr_fold_arg2_4 _lh_expr_fold_Var_0_4)
    | `Func(_lh_expr_fold_Func_0_4, _lh_expr_fold_Func_1_4) -> 
      ((_lh_expr_fold_arg1_4 _lh_expr_fold_Func_0_4) ((map_d2_d6 ((expr_fold_d5 _lh_expr_fold_arg1_4) _lh_expr_fold_arg2_4)) _lh_expr_fold_Func_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold_d6 _lh_expr_fold_arg1_1_1 _lh_expr_fold_arg2_1_1 _lh_expr_fold_arg3_1_1 =
  (match _lh_expr_fold_arg3_1_1 with
    | `Var(_lh_expr_fold_Var_0_1_1) -> 
      (_lh_expr_fold_arg2_1_1 _lh_expr_fold_Var_0_1_1)
    | `Func(_lh_expr_fold_Func_0_1_1, _lh_expr_fold_Func_1_1_1) -> 
      ((_lh_expr_fold_arg1_1_1 _lh_expr_fold_Func_0_1_1) ((map_d2_d7 ((expr_fold_d6 _lh_expr_fold_arg1_1_1) _lh_expr_fold_arg2_1_1)) _lh_expr_fold_Func_1_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold_d7 _lh_expr_fold_arg1_6 _lh_expr_fold_arg2_6 _lh_expr_fold_arg3_6 =
  (match _lh_expr_fold_arg3_6 with
    | `Var(_lh_expr_fold_Var_0_6) -> 
      (_lh_expr_fold_arg2_6 _lh_expr_fold_Var_0_6)
    | `Func(_lh_expr_fold_Func_0_6, _lh_expr_fold_Func_1_6) -> 
      ((_lh_expr_fold_arg1_6 _lh_expr_fold_Func_0_6) ((map_d2_d8 ((expr_fold_d7 _lh_expr_fold_arg1_6) _lh_expr_fold_arg2_6)) _lh_expr_fold_Func_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold_d8 _lh_expr_fold_arg1_8 _lh_expr_fold_arg2_8 _lh_expr_fold_arg3_8 =
  (match _lh_expr_fold_arg3_8 with
    | `Var(_lh_expr_fold_Var_0_8) -> 
      (_lh_expr_fold_arg2_8 _lh_expr_fold_Var_0_8)
    | `Func(_lh_expr_fold_Func_0_8, _lh_expr_fold_Func_1_8) -> 
      ((_lh_expr_fold_arg1_8 _lh_expr_fold_Func_0_8) ((map_d2_d9 ((expr_fold_d8 _lh_expr_fold_arg1_8) _lh_expr_fold_arg2_8)) _lh_expr_fold_Func_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold_d9 _lh_expr_fold_arg1_5 _lh_expr_fold_arg2_5 _lh_expr_fold_arg3_5 =
  (match _lh_expr_fold_arg3_5 with
    | `Var(_lh_expr_fold_Var_0_5) -> 
      (_lh_expr_fold_arg2_5 _lh_expr_fold_Var_0_5)
    | `Func(_lh_expr_fold_Func_0_5, _lh_expr_fold_Func_1_5) -> 
      ((_lh_expr_fold_arg1_5 _lh_expr_fold_Func_0_5) ((map_d3_d0 ((expr_fold_d9 _lh_expr_fold_arg1_5) _lh_expr_fold_arg2_5)) _lh_expr_fold_Func_1_5))
    | _ -> 
      (failwith "error"))
and first_ok_d0 _lh_first_ok_arg1_3 =
  (((foldr_d0 orElse_d0) (`Nothing)) _lh_first_ok_arg1_3)
and first_ok_d1 _lh_first_ok_arg1_1_2 =
  (((foldr_d3 orElse_d1) (`Nothing)) _lh_first_ok_arg1_1_2)
and first_ok_d1_d0 _lh_first_ok_arg1_9 =
  (((foldr_d1_d3 orElse_d1_d5) (`Nothing)) _lh_first_ok_arg1_9)
and first_ok_d1_d1 _lh_first_ok_arg1_2 =
  (((foldr_d1_d4 orElse_d1_d6) (`Nothing)) _lh_first_ok_arg1_2)
and first_ok_d1_d2 _lh_first_ok_arg1_6 =
  (((foldr_d1_d5 orElse_d1_d7) (`Nothing)) _lh_first_ok_arg1_6)
and first_ok_d1_d3 _lh_first_ok_arg1_1_1 =
  (((foldr_d1_d6 orElse_d1_d8) (`Nothing)) _lh_first_ok_arg1_1_1)
and first_ok_d1_d4 _lh_first_ok_arg1_1_3 =
  (((foldr_d1_d7 orElse_d1_d9) (`Nothing)) _lh_first_ok_arg1_1_3)
and first_ok_d2 _lh_first_ok_arg1_0 =
  (((foldr_d4 orElse_d6) (`Nothing)) _lh_first_ok_arg1_0)
and first_ok_d3 _lh_first_ok_arg1_1_0 =
  (((foldr_d5 orElse_d7) (`Nothing)) _lh_first_ok_arg1_1_0)
and first_ok_d4 _lh_first_ok_arg1_1_4 =
  (((foldr_d6 orElse_d8) (`Nothing)) _lh_first_ok_arg1_1_4)
and first_ok_d5 _lh_first_ok_arg1_1 =
  (((foldr_d7 orElse_d9) (`Nothing)) _lh_first_ok_arg1_1)
and first_ok_d6 _lh_first_ok_arg1_5 =
  (((foldr_d8 orElse_d1_d0) (`Nothing)) _lh_first_ok_arg1_5)
and first_ok_d7 _lh_first_ok_arg1_7 =
  (((foldr_d9 orElse_d1_d1) (`Nothing)) _lh_first_ok_arg1_7)
and first_ok_d8 _lh_first_ok_arg1_8 =
  (((foldr_d1_d0 orElse_d1_d2) (`Nothing)) _lh_first_ok_arg1_8)
and first_ok_d9 _lh_first_ok_arg1_4 =
  (((foldr_d1_d2 orElse_d1_d4) (`Nothing)) _lh_first_ok_arg1_4)
and geRewrite_d0 _lh_geRewrite_arg1_1 _lh_geRewrite_arg2_1 _lh_geRewrite_arg3_1 =
  ((inList_d1 (_lh_geRewrite_arg1_1 (`LH_P2(_lh_geRewrite_arg2_1, _lh_geRewrite_arg3_1)))) (let rec _lh_inList_LH_C_0_1_0 = (`Greater) in
    (let rec _lh_inList_LH_C_1_1_0 = (let rec _lh_inList_LH_C_0_1_1 = (`Equal) in
      (let rec _lh_inList_LH_C_1_1_1 = (fun _lh_inList_arg1_1_6 -> 
        false) in
        (fun _lh_inList_arg1_1_7 -> 
          (if (_lh_inList_arg1_1_7 = _lh_inList_LH_C_0_1_1) then
            true
          else
            ((inList_d1 _lh_inList_arg1_1_7) _lh_inList_LH_C_1_1_1))))) in
      (fun _lh_inList_arg1_1_8 -> 
        (if (_lh_inList_arg1_1_8 = _lh_inList_LH_C_0_1_0) then
          true
        else
          ((inList_d1 _lh_inList_arg1_1_8) _lh_inList_LH_C_1_1_0))))))
and geRewrite_d1 _lh_geRewrite_arg1_2 _lh_geRewrite_arg2_2 _lh_geRewrite_arg3_2 =
  ((inList_d2 (_lh_geRewrite_arg1_2 (`LH_P2(_lh_geRewrite_arg2_2, _lh_geRewrite_arg3_2)))) (let rec _lh_inList_LH_C_0_1_2 = (`Greater) in
    (let rec _lh_inList_LH_C_1_1_2 = (let rec _lh_inList_LH_C_0_1_3 = (`Equal) in
      (let rec _lh_inList_LH_C_1_1_3 = (fun _lh_inList_arg1_2_0 -> 
        false) in
        (fun _lh_inList_arg1_2_1 -> 
          (if (_lh_inList_arg1_2_1 = _lh_inList_LH_C_0_1_3) then
            true
          else
            ((inList_d2 _lh_inList_arg1_2_1) _lh_inList_LH_C_1_1_3))))) in
      (fun _lh_inList_arg1_2_2 -> 
        (if (_lh_inList_arg1_2_2 = _lh_inList_LH_C_0_1_2) then
          true
        else
          ((inList_d2 _lh_inList_arg1_2_2) _lh_inList_LH_C_1_1_2))))))
and geRewrite_d2 _lh_geRewrite_arg1_0 _lh_geRewrite_arg2_0 _lh_geRewrite_arg3_0 =
  ((inList_d3 (_lh_geRewrite_arg1_0 (`LH_P2(_lh_geRewrite_arg2_0, _lh_geRewrite_arg3_0)))) (let rec _lh_inList_LH_C_0_8 = (`Greater) in
    (let rec _lh_inList_LH_C_1_8 = (let rec _lh_inList_LH_C_0_9 = (`Equal) in
      (let rec _lh_inList_LH_C_1_9 = (fun _lh_inList_arg1_9 -> 
        false) in
        (fun _lh_inList_arg1_1_0 -> 
          (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_9) then
            true
          else
            ((inList_d3 _lh_inList_arg1_1_0) _lh_inList_LH_C_1_9))))) in
      (fun _lh_inList_arg1_1_1 -> 
        (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_8) then
          true
        else
          ((inList_d3 _lh_inList_arg1_1_1) _lh_inList_LH_C_1_8))))))
and geRewrite_d3 _lh_geRewrite_arg1_3 _lh_geRewrite_arg2_3 _lh_geRewrite_arg3_3 =
  ((inList_d4 (_lh_geRewrite_arg1_3 (`LH_P2(_lh_geRewrite_arg2_3, _lh_geRewrite_arg3_3)))) (let rec _lh_inList_LH_C_0_1_4 = (`Greater) in
    (let rec _lh_inList_LH_C_1_1_4 = (let rec _lh_inList_LH_C_0_1_5 = (`Equal) in
      (let rec _lh_inList_LH_C_1_1_5 = (fun _lh_inList_arg1_2_4 -> 
        false) in
        (fun _lh_inList_arg1_2_5 -> 
          (if (_lh_inList_arg1_2_5 = _lh_inList_LH_C_0_1_5) then
            true
          else
            ((inList_d4 _lh_inList_arg1_2_5) _lh_inList_LH_C_1_1_5))))) in
      (fun _lh_inList_arg1_2_6 -> 
        (if (_lh_inList_arg1_2_6 = _lh_inList_LH_C_0_1_4) then
          true
        else
          ((inList_d4 _lh_inList_arg1_2_6) _lh_inList_LH_C_1_1_4))))))
and inside_d0 _lh_inside_arg1_0 _lh_inside_arg2_0 =
  (first_ok_d1 (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_7) -> 
        (match _lh_listcomp_fun_ls_h_1_3 with
          | `LH_P2(_lh_inside_LH_P2_0_0, _lh_inside_LH_P2_1_0) -> 
            (let rec h_7_2 = ((lift_d0 ((replace_d0 _lh_inside_arg2_0) _lh_inside_LH_P2_0_0)) (_lh_inside_arg1_0 _lh_inside_LH_P2_1_0)) in
              (let rec t_7_7 = (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_7) in
                (fun f_7_9 i_4_4 -> 
                  ((f_7_9 h_7_2) (((foldr_d3 f_7_9) i_4_4) t_7_7)))))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_7))
      | `LH_N -> 
        (fun f_8_0 i_4_5 -> 
          i_4_5))) in
    (_lh_listcomp_fun_2_0 (subterms_d0 _lh_inside_arg2_0))))
and inside_d1 _lh_inside_arg1_1 _lh_inside_arg2_1 =
  (first_ok_d2 (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_2 -> 
    (match _lh_listcomp_fun_para_1_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_8) -> 
        (match _lh_listcomp_fun_ls_h_1_4 with
          | `LH_P2(_lh_inside_LH_P2_0_1, _lh_inside_LH_P2_1_1) -> 
            (let rec h_7_8 = ((lift_d1_d0 ((replace_d1 _lh_inside_arg2_1) _lh_inside_LH_P2_0_1)) (_lh_inside_arg1_1 _lh_inside_LH_P2_1_1)) in
              (let rec t_8_3 = (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_8) in
                (fun f_8_5 i_4_6 -> 
                  ((f_8_5 h_7_8) (((foldr_d4 f_8_5) i_4_6) t_8_3)))))
          | _ -> 
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_8))
      | `LH_N -> 
        (fun f_8_6 i_4_7 -> 
          i_4_7))) in
    (_lh_listcomp_fun_2_1 (subterms_d1 _lh_inside_arg2_1))))
and listify_d0 _lh_listify_arg1_0 =
  ((getOrElse_d4 ((lift_d1_d3 box_d0) _lh_listify_arg1_0)) (fun ys_1_8 -> 
    ys_1_8))
and listify_d1 _lh_listify_arg1_1 =
  ((getOrElse_d5 ((lift_d1_d4 box_d1) _lh_listify_arg1_1)) (fun ys_3_6 -> 
    ys_3_6))
and map_dnet_d0 _lh_map_dnet_arg1_0 _lh_map_dnet_arg2_0 =
  (match _lh_map_dnet_arg2_0 with
    | `Switch(_lh_map_dnet_Switch_0_0, _lh_map_dnet_Switch_1_0) -> 
      (`Switch(((map_d2 ((cross_d3 (fun x_2_0 -> 
        x_2_0)) (map_dnet_d0 _lh_map_dnet_arg1_0))) _lh_map_dnet_Switch_0_0), ((map_dnet_d0 _lh_map_dnet_arg1_0) _lh_map_dnet_Switch_1_0)))
    | `Return(_lh_map_dnet_Return_0_0) -> 
      (`Return((_lh_map_dnet_arg1_0 _lh_map_dnet_Return_0_0)))
    | _ -> 
      (failwith "error"))
and map_d0 f_1_2_3 ls_6_4 =
  (match ls_6_4 with
    | `LH_C(h_1_0_9, t_1_1_6) -> 
      (let rec h_1_1_0 = (f_1_2_3 h_1_0_9) in
        (let rec t_1_1_7 = ((map_d0 f_1_2_3) t_1_1_6) in
          (fun f_1_2_4 i_6_1 -> 
            ((f_1_2_4 h_1_1_0) (((foldr_d0 f_1_2_4) i_6_1) t_1_1_7)))))
    | `LH_N -> 
      (fun f_1_2_5 i_6_2 -> 
        i_6_2))
and map_d1 f_1_2_9 ls_6_7 =
  (match ls_6_7 with
    | `LH_C(h_1_1_2, t_1_2_0) -> 
      (let rec h_1_1_3 = (f_1_2_9 h_1_1_2) in
        (let rec t_1_2_1 = ((map_d1 f_1_2_9) t_1_2_0) in
          (fun _lh_dummy_2_0 -> 
            (h_1_1_3 + (sum_d0 t_1_2_1)))))
    | `LH_N -> 
      (fun _lh_dummy_2_1 -> 
        0))
and map_d1_d0 f_9_3 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_8_4, t_8_9) -> 
      (let rec h_8_5 = (f_9_3 h_8_4) in
        (let rec t_9_0 = ((map_d1_d0 f_9_3) t_8_9) in
          (fun f_9_4 i_5_0 -> 
            ((f_9_4 h_8_5) (((foldr_d1_d1 f_9_4) i_5_0) t_9_0)))))
    | `LH_N -> 
      (fun f_9_5 i_5_1 -> 
        i_5_1))
and map_d1_d1 f_5_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_4_4, t_4_5) -> 
      (let rec hx_2 = (f_5_2 h_4_4) in
        (let rec tx_2 = ((map_d1_d1 f_5_2) t_4_5) in
          (fun ys_1_4 -> 
            (match ys_1_4 with
              | `LH_C(hy_3, ty_3) -> 
                (`LH_C((`LH_P2(hx_2, hy_3)), ((zip_d3 tx_2) ty_3)))
              | `LH_N -> 
                (`LH_N)))))
    | `LH_N -> 
      (fun ys_1_5 -> 
        (`LH_N)))
and map_d1_d2 f_1_0_7 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_9_7, t_1_0_2) -> 
      (let rec _lh_inList_LH_C_0_1_6 = (f_1_0_7 h_9_7) in
        (let rec _lh_inList_LH_C_1_1_6 = ((map_d1_d2 f_1_0_7) t_1_0_2) in
          (fun _lh_inList_arg1_2_7 -> 
            (if (_lh_inList_arg1_2_7 = _lh_inList_LH_C_0_1_6) then
              true
            else
              ((inList_d0 _lh_inList_arg1_2_7) _lh_inList_LH_C_1_1_6)))))
    | `LH_N -> 
      (fun _lh_inList_arg1_2_8 -> 
        false))
and map_d1_d3 f_4_5 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_3_5, t_3_6) -> 
      (let rec h_3_6 = (f_4_5 h_3_5) in
        (let rec t_3_7 = ((map_d1_d3 f_4_5) t_3_6) in
          (fun ys_1_2 -> 
            (let rec h_3_7 = h_3_6 in
              (let rec t_3_8 = ((mappend_d5 t_3_7) ys_1_2) in
                (fun f_4_6 -> 
                  (let rec h_3_8 = (f_4_6 h_3_7) in
                    (let rec t_3_9 = ((map_d1_d4 f_4_6) t_3_8) in
                      (fun f_4_7 -> 
                        (let rec h_3_9 = (f_4_7 h_3_8) in
                          (let rec t_4_0 = ((map_d2_d5 f_4_7) t_3_9) in
                            (fun _lh_dummy_5 -> 
                              ((mappend_d1_d1 h_3_9) (concat_d2 t_4_0))))))))))))))
    | `LH_N -> 
      (fun ys_1_3 -> 
        ys_1_3))
and map_d1_d6 f_1_0_3 ls_5_2 =
  (match ls_5_2 with
    | `LH_C(h_9_3, t_9_8) -> 
      (let rec _lh_or_LH_C_0_2 = (f_1_0_3 h_9_3) in
        (let rec _lh_or_LH_C_1_2 = ((map_d1_d6 f_1_0_3) t_9_8) in
          (fun _lh_dummy_1_3 -> 
            (if _lh_or_LH_C_0_2 then
              true
            else
              (or_d0 _lh_or_LH_C_1_2)))))
    | `LH_N -> 
      (fun _lh_dummy_1_4 -> 
        false))
and map_d1_d7 f_1_4_1 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_1_2_0, t_1_3_0) -> 
      (let rec _lh_or_LH_C_0_3 = (f_1_4_1 h_1_2_0) in
        (let rec _lh_or_LH_C_1_3 = ((map_d1_d7 f_1_4_1) t_1_3_0) in
          (fun _lh_dummy_2_2 -> 
            (if _lh_or_LH_C_0_3 then
              true
            else
              (or_d1 _lh_or_LH_C_1_3)))))
    | `LH_N -> 
      (fun _lh_dummy_2_3 -> 
        false))
and map_d1_d8 f_4_9 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_4_1, t_4_2) -> 
      (let rec h_4_2 = (f_4_9 h_4_1) in
        (let rec t_4_3 = ((map_d1_d8 f_4_9) t_4_2) in
          (fun f_5_0 i_3_0 -> 
            ((f_5_0 h_4_2) (((foldr_d5 f_5_0) i_3_0) t_4_3)))))
    | `LH_N -> 
      (fun f_5_1 i_3_1 -> 
        i_3_1))
and map_d1_d9 f_3_1 ls_6 =
  (match ls_6 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec h_2_7 = (f_3_1 h_2_6) in
        (let rec t_2_7 = ((map_d1_d9 f_3_1) t_2_6) in
          (fun f_3_2 i_2_2 -> 
            ((f_3_2 h_2_7) (((foldr_d6 f_3_2) i_2_2) t_2_7)))))
    | `LH_N -> 
      (fun f_3_3 i_2_3 -> 
        i_2_3))
and map_d2_d1 f_1_3_1 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_1_1_4, t_1_2_2) -> 
      (let rec h_1_1_5 = (f_1_3_1 h_1_1_4) in
        (let rec t_1_2_3 = ((map_d2_d1 f_1_3_1) t_1_2_2) in
          (fun f_1_3_2 i_6_5 -> 
            ((f_1_3_2 h_1_1_5) (((foldr_d7 f_1_3_2) i_6_5) t_1_2_3)))))
    | `LH_N -> 
      (fun f_1_3_3 i_6_6 -> 
        i_6_6))
and map_d2_d2 f_2_8 ls_5 =
  (match ls_5 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec h_2_4 = (f_2_8 h_2_3) in
        (let rec t_2_4 = ((map_d2_d2 f_2_8) t_2_3) in
          (fun f_2_9 i_2_0 -> 
            ((f_2_9 h_2_4) (((foldr_d8 f_2_9) i_2_0) t_2_4)))))
    | `LH_N -> 
      (fun f_3_0 i_2_1 -> 
        i_2_1))
and map_d3_d2 f_7_0 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_6_1, t_6_5) -> 
      (let rec h_6_2 = (f_7_0 h_6_1) in
        (let rec t_6_6 = ((map_d3_d2 f_7_0) t_6_5) in
          (fun f_7_1 i_3_9 -> 
            ((f_7_1 h_6_2) (((foldr_d9 f_7_1) i_3_9) t_6_6)))))
    | `LH_N -> 
      (fun f_7_2 i_4_0 -> 
        i_4_0))
and map_d3_d4 f_1_0_0 ls_5_1 =
  (match ls_5_1 with
    | `LH_C(h_9_1, t_9_6) -> 
      (let rec h_9_2 = (f_1_0_0 h_9_1) in
        (let rec t_9_7 = ((map_d3_d4 f_1_0_0) t_9_6) in
          (fun f_1_0_1 i_5_3 -> 
            ((f_1_0_1 h_9_2) (((foldr_d1_d0 f_1_0_1) i_5_3) t_9_7)))))
    | `LH_N -> 
      (fun f_1_0_2 i_5_4 -> 
        i_5_4))
and map_d3_d6 f_6_2 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_5_4, t_5_7) -> 
      (let rec h_5_5 = (f_6_2 h_5_4) in
        (let rec t_5_8 = ((map_d3_d6 f_6_2) t_5_7) in
          (fun f_6_3 i_3_5 -> 
            ((f_6_3 h_5_5) (((foldr_d1_d2 f_6_3) i_3_5) t_5_8)))))
    | `LH_N -> 
      (fun f_6_4 i_3_6 -> 
        i_3_6))
and map_d3_d7 f_1_1_8 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_1_0_6, t_1_1_3) -> 
      (let rec h_1_0_7 = (f_1_1_8 h_1_0_6) in
        (let rec t_1_1_4 = ((map_d3_d7 f_1_1_8) t_1_1_3) in
          (fun f_1_1_9 i_5_8 -> 
            ((f_1_1_9 h_1_0_7) (((foldr_d1_d3 f_1_1_9) i_5_8) t_1_1_4)))))
    | `LH_N -> 
      (fun f_1_2_0 i_5_9 -> 
        i_5_9))
and map_d3_d9 f_8_7 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_8_0, t_8_5) -> 
      (let rec _lh_or_LH_C_0_1 = (f_8_7 h_8_0) in
        (let rec _lh_or_LH_C_1_1 = ((map_d3_d9 f_8_7) t_8_5) in
          (fun _lh_dummy_1_0 -> 
            (if _lh_or_LH_C_0_1 then
              true
            else
              (or_d2 _lh_or_LH_C_1_1)))))
    | `LH_N -> 
      (fun _lh_dummy_1_1 -> 
        false))
and map_d4 f_7_4 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_6_4, t_6_8) -> 
      (let rec h_6_5 = (f_7_4 h_6_4) in
        (let rec t_6_9 = ((map_d4 f_7_4) t_6_8) in
          (fun ys_2_8 -> 
            (let rec h_6_6 = h_6_5 in
              (let rec t_7_0 = ((mappend_d3 t_6_9) ys_2_8) in
                (fun ys_2_9 -> 
                  (let rec h_6_7 = h_6_6 in
                    (let rec t_7_1 = ((mappend_d0 t_7_0) ys_2_9) in
                      (fun f_7_5 -> 
                        (let rec h_6_8 = (f_7_5 h_6_7) in
                          (let rec t_7_2 = ((map_d1_d4 f_7_5) t_7_1) in
                            (fun f_7_6 -> 
                              (let rec h_6_9 = (f_7_6 h_6_8) in
                                (let rec t_7_3 = ((map_d2_d5 f_7_6) t_7_2) in
                                  (fun _lh_dummy_8 -> 
                                    ((mappend_d1_d1 h_6_9) (concat_d2 t_7_3)))))))))))))))))
    | `LH_N -> 
      (fun ys_3_0 -> 
        ys_3_0))
and map_d4_d0 f_3_8 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_1, t_3_1) -> 
      (let rec h_3_2 = (f_3_8 h_3_1) in
        (let rec t_3_2 = ((map_d4_d0 f_3_8) t_3_1) in
          (fun f_3_9 i_2_7 -> 
            ((f_3_9 h_3_2) (((foldr_d1_d4 f_3_9) i_2_7) t_3_2)))))
    | `LH_N -> 
      (fun f_4_0 i_2_8 -> 
        i_2_8))
and map_d4_d2 f_1_3_6 ls_7_2 =
  (match ls_7_2 with
    | `LH_C(h_1_1_7, t_1_2_5) -> 
      (let rec h_1_1_8 = (f_1_3_6 h_1_1_7) in
        (let rec t_1_2_6 = ((map_d4_d2 f_1_3_6) t_1_2_5) in
          (fun f_1_3_7 i_6_8 -> 
            ((f_1_3_7 h_1_1_8) (((foldr_d1_d5 f_1_3_7) i_6_8) t_1_2_6)))))
    | `LH_N -> 
      (fun f_1_3_8 i_6_9 -> 
        i_6_9))
and map_d4_d3 f_5_7 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_4_8, t_5_0) -> 
      (let rec h_4_9 = (f_5_7 h_4_8) in
        (let rec t_5_1 = ((map_d4_d3 f_5_7) t_5_0) in
          (fun f_5_8 i_3_3 -> 
            ((f_5_8 h_4_9) (((foldr_d1_d6 f_5_8) i_3_3) t_5_1)))))
    | `LH_N -> 
      (fun f_5_9 i_3_4 -> 
        i_3_4))
and map_d4_d5 f_4_1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_3_3, t_3_3) -> 
      (let rec _lh_or_LH_C_0_0 = (f_4_1 h_3_3) in
        (let rec _lh_or_LH_C_1_0 = ((map_d4_d5 f_4_1) t_3_3) in
          (fun _lh_dummy_3 -> 
            (if _lh_or_LH_C_0_0 then
              true
            else
              (or_d3 _lh_or_LH_C_1_0)))))
    | `LH_N -> 
      (fun _lh_dummy_4 -> 
        false))
and map_d4_d6 f_1_0_4 ls_5_3 =
  (match ls_5_3 with
    | `LH_C(h_9_4, t_9_9) -> 
      (let rec h_9_5 = (f_1_0_4 h_9_4) in
        (let rec t_1_0_0 = ((map_d4_d6 f_1_0_4) t_9_9) in
          (fun f_1_0_5 i_5_5 -> 
            ((f_1_0_5 h_9_5) (((foldr_d1_d7 f_1_0_5) i_5_5) t_1_0_0)))))
    | `LH_N -> 
      (fun f_1_0_6 i_5_6 -> 
        i_5_6))
and map_d5 f_9_7 ls_5_0 =
  (match ls_5_0 with
    | `LH_C(h_8_6, t_9_1) -> 
      (let rec h_8_7 = (f_9_7 h_8_6) in
        (let rec t_9_2 = ((map_d5 f_9_7) t_9_1) in
          (fun ys_4_2 -> 
            (let rec h_8_8 = h_8_7 in
              (let rec t_9_3 = ((mappend_d0 t_9_2) ys_4_2) in
                (fun f_9_8 -> 
                  (let rec h_8_9 = (f_9_8 h_8_8) in
                    (let rec t_9_4 = ((map_d1_d4 f_9_8) t_9_3) in
                      (fun f_9_9 -> 
                        (let rec h_9_0 = (f_9_9 h_8_9) in
                          (let rec t_9_5 = ((map_d2_d5 f_9_9) t_9_4) in
                            (fun _lh_dummy_1_2 -> 
                              ((mappend_d1_d1 h_9_0) (concat_d2 t_9_5))))))))))))))
    | `LH_N -> 
      (fun ys_4_3 -> 
        ys_4_3))
and map_d6 f_2 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      (let rec h_3 = (f_2 h_2) in
        (let rec t_3 = ((map_d6 f_2) t_2) in
          (fun f_3 i_1 -> 
            ((f_3 h_3) (((foldr_d2 f_3) i_1) t_3)))))
    | `LH_N -> 
      (fun f_4 i_2 -> 
        i_2))
and map_d7 f_1_1_0 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_9_9, t_1_0_4) -> 
      (let rec h_1_0_0 = (f_1_1_0 h_9_9) in
        (let rec t_1_0_5 = ((map_d7 f_1_1_0) t_1_0_4) in
          (fun f_1_1_1 -> 
            (let rec h_1_0_1 = (f_1_1_1 h_1_0_0) in
              (let rec t_1_0_6 = ((map_d9 f_1_1_1) t_1_0_5) in
                (fun _lh_dummy_1_5 -> 
                  ((mappend_d0 h_1_0_1) (concat_d0 t_1_0_6))))))))
    | `LH_N -> 
      (fun f_1_1_2 _lh_dummy_1_6 f_1_1_3 f_1_1_4 _lh_dummy_1_7 -> 
        (`LH_N)))
and map_d8 f_8_2 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_7_3, t_7_8) -> 
      (let rec h_7_4 = (f_8_2 h_7_3) in
        (let rec t_7_9 = ((map_d8 f_8_2) t_7_8) in
          (fun ys_3_7 -> 
            (let rec h_7_5 = h_7_4 in
              (let rec t_8_0 = ((mappend_d4 t_7_9) ys_3_7) in
                (fun f_8_3 -> 
                  (let rec h_7_6 = (f_8_3 h_7_5) in
                    (let rec t_8_1 = ((map_d1_d4 f_8_3) t_8_0) in
                      (fun f_8_4 -> 
                        (let rec h_7_7 = (f_8_4 h_7_6) in
                          (let rec t_8_2 = ((map_d2_d5 f_8_4) t_8_1) in
                            (fun _lh_dummy_9 -> 
                              ((mappend_d1_d1 h_7_7) (concat_d2 t_8_2))))))))))))))
    | `LH_N -> 
      (fun ys_3_8 -> 
        ys_3_8))
and match_d0 _lh_match_arg1_1 _lh_match_arg2_1 =
  ((match'_d0 (`LH_N)) (let rec _lh_match'_LH_P2_0_3 = _lh_match_arg1_1 in
    (let rec _lh_match'_LH_P2_1_3 = _lh_match_arg2_1 in
      (fun _lh_match'_arg1_4 -> 
        (match _lh_match'_LH_P2_0_3 with
          | `Var(_lh_match'_Var_0_6) -> 
            (let rec u_3 = ((assoc_d1 _lh_match'_arg1_4) _lh_match'_Var_0_6) in
              (if (not (exists_d2 u_3)) then
                (succeed_d0 (`LH_C((`LH_P2(_lh_match'_Var_0_6, _lh_match'_LH_P2_1_3)), _lh_match'_arg1_4)))
              else
                (if ((eqExpr_d3 (the_d0 u_3)) _lh_match'_LH_P2_1_3) then
                  (succeed_d1 _lh_match'_arg1_4)
                else
                  croak_d4)))
          | `Func(_lh_match'_Func_0_6, _lh_match'_Func_1_6) -> 
            (match _lh_match'_LH_P2_1_3 with
              | `Func(_lh_match'_Func_0_7, _lh_match'_Func_1_7) -> 
                (if (_lh_match'_Func_0_6 = _lh_match'_Func_0_7) then
                  (((prop_fold_d0 match'_d0) _lh_match'_arg1_4) ((zip_d0 _lh_match'_Func_1_6) _lh_match'_Func_1_7))
                else
                  croak_d5)
              | `Var(_lh_match'_Var_0_7) -> 
                croak_d6
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))))))
and match_d1 _lh_match_arg1_0 _lh_match_arg2_0 =
  ((match'_d1 (`LH_N)) (let rec _lh_match'_LH_P2_0_0 = _lh_match_arg1_0 in
    (let rec _lh_match'_LH_P2_1_0 = _lh_match_arg2_0 in
      (fun _lh_match'_arg1_1 -> 
        (match _lh_match'_LH_P2_0_0 with
          | `Var(_lh_match'_Var_0_0) -> 
            (let rec u_0 = ((assoc_d3 _lh_match'_arg1_1) _lh_match'_Var_0_0) in
              (if (not (exists_d3 u_0)) then
                (succeed_d2 (`LH_C((`LH_P2(_lh_match'_Var_0_0, _lh_match'_LH_P2_1_0)), _lh_match'_arg1_1)))
              else
                (if ((eqExpr_d4 (the_d1 u_0)) _lh_match'_LH_P2_1_0) then
                  (succeed_d3 _lh_match'_arg1_1)
                else
                  croak_d7)))
          | `Func(_lh_match'_Func_0_0, _lh_match'_Func_1_0) -> 
            (match _lh_match'_LH_P2_1_0 with
              | `Func(_lh_match'_Func_0_1, _lh_match'_Func_1_1) -> 
                (if (_lh_match'_Func_0_0 = _lh_match'_Func_0_1) then
                  (((prop_fold_d1 match'_d1) _lh_match'_arg1_1) ((zip_d1 _lh_match'_Func_1_0) _lh_match'_Func_1_1))
                else
                  croak_d8)
              | `Var(_lh_match'_Var_0_1) -> 
                croak_d9
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))))))
and occurs_d0 _lh_occurs_arg1_2 =
  ((expr_fold_d1 (fun dum_4 -> 
    or_d0)) (fun x_2_6 -> 
    (x_2_6 = _lh_occurs_arg1_2)))
and occurs_d1 _lh_occurs_arg1_3 =
  ((expr_fold_d2 (fun dum_5 -> 
    or_d1)) (fun x_3_7 -> 
    (x_3_7 = _lh_occurs_arg1_3)))
and occurs_d2 _lh_occurs_arg1_0 =
  ((expr_fold_d1_d4 (fun dum_2 -> 
    or_d2)) (fun x_2_1 -> 
    (x_2_1 = _lh_occurs_arg1_0)))
and occurs_d3 _lh_occurs_arg1_1 =
  ((expr_fold_d1_d7 (fun dum_3 -> 
    or_d3)) (fun x_2_2 -> 
    (x_2_2 = _lh_occurs_arg1_1)))
and orElseMap_d0 _lh_orElseMap_arg1_1 _lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1 =
  ((orElse_d2 (_lh_orElseMap_arg1_1 _lh_orElseMap_arg3_1)) (_lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1))
and orElseMap_d1 _lh_orElseMap_arg1_4 _lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4 =
  ((orElse_d3 (_lh_orElseMap_arg1_4 _lh_orElseMap_arg3_4)) (_lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4))
and orElseMap_d2 _lh_orElseMap_arg1_3 _lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3 =
  ((orElse_d4 (_lh_orElseMap_arg1_3 _lh_orElseMap_arg3_3)) (_lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3))
and orElseMap_d3 _lh_orElseMap_arg1_2 _lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2 =
  ((orElse_d5 (_lh_orElseMap_arg1_2 _lh_orElseMap_arg3_2)) (_lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2))
and orElseMap_d4 _lh_orElseMap_arg1_0 _lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0 =
  ((orElse_d1_d3 (_lh_orElseMap_arg1_0 _lh_orElseMap_arg3_0)) (_lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0))
and reduce1_d0 _lh_reduce1_arg1_0 =
  (inside_d1 (rewrite_d0 _lh_reduce1_arg1_0))
and replace_d0 _lh_replace_arg1_2 _lh_replace_arg2_2 _lh_replace_arg3_2 =
  (match _lh_replace_arg2_2 with
    | `LH_N -> 
      _lh_replace_arg3_2
    | _ -> 
      (match _lh_replace_arg1_2 with
        | `Func(_lh_replace_Func_0_2, _lh_replace_Func_1_2) -> 
          (match _lh_replace_arg2_2 with
            | `LH_C(_lh_replace_LH_C_0_2, _lh_replace_LH_C_1_2) -> 
              (`Func(_lh_replace_Func_0_2, (((modify_d0 _lh_replace_Func_1_2) _lh_replace_LH_C_0_2) (fun t_1_1_2 -> 
                (((replace_d0 t_1_1_2) _lh_replace_LH_C_1_2) _lh_replace_arg3_2)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace_d1 _lh_replace_arg1_1 _lh_replace_arg2_1 _lh_replace_arg3_1 =
  (match _lh_replace_arg2_1 with
    | `LH_N -> 
      _lh_replace_arg3_1
    | _ -> 
      (match _lh_replace_arg1_1 with
        | `Func(_lh_replace_Func_0_1, _lh_replace_Func_1_1) -> 
          (match _lh_replace_arg2_1 with
            | `LH_C(_lh_replace_LH_C_0_1, _lh_replace_LH_C_1_1) -> 
              (`Func(_lh_replace_Func_0_1, (((modify_d1 _lh_replace_Func_1_1) _lh_replace_LH_C_0_1) (fun t_6_1 -> 
                (((replace_d1 t_6_1) _lh_replace_LH_C_1_1) _lh_replace_arg3_1)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace_d2 _lh_replace_arg1_0 _lh_replace_arg2_0 _lh_replace_arg3_0 =
  (match _lh_replace_arg2_0 with
    | `LH_N -> 
      _lh_replace_arg3_0
    | _ -> 
      (match _lh_replace_arg1_0 with
        | `Func(_lh_replace_Func_0_0, _lh_replace_Func_1_0) -> 
          (match _lh_replace_arg2_0 with
            | `LH_C(_lh_replace_LH_C_0_0, _lh_replace_LH_C_1_0) -> 
              (`Func(_lh_replace_Func_0_0, (((modify_d2 _lh_replace_Func_1_0) _lh_replace_LH_C_0_0) (fun t_5_6 -> 
                (((replace_d2 t_5_6) _lh_replace_LH_C_1_0) _lh_replace_arg3_0)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and rewrite_d0 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Eqn(_lh_rewrite_Eqn_0_1, _lh_rewrite_Eqn_1_1) -> 
      (match _lh_rewrite_Eqn_1_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (fun _lh_funcomp_x_1_3 -> 
            ((lift_d1_d1 (sub_d0 _lh_rewrite_LH_P2_1_1)) ((match_d0 _lh_rewrite_LH_P2_0_1) _lh_funcomp_x_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewrite_d1 _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Eqn(_lh_rewrite_Eqn_0_0, _lh_rewrite_Eqn_1_0) -> 
      (match _lh_rewrite_Eqn_1_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (fun _lh_funcomp_x_1_1 -> 
            ((lift_d1_d2 (sub_d1 _lh_rewrite_LH_P2_1_0)) ((match_d1 _lh_rewrite_LH_P2_0_0) _lh_funcomp_x_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and sift_d0 _lh_sift_arg1_1 =
  ((fun _lh_funcomp_x_1_2 -> 
    (concat_d1 ((map_d2_d4 listify_d0) _lh_funcomp_x_1_2))) _lh_sift_arg1_1)
and sift_d1 _lh_sift_arg1_0 =
  ((fun _lh_funcomp_x_1_0 -> 
    (concat_d2 ((map_d2_d5 listify_d1) _lh_funcomp_x_1_0))) _lh_sift_arg1_0)
and simplify_d0 _lh_simplify_arg1_1 =
  (let rec f_5_5 = (fun t_4_8 -> 
    ((getOrElse_d6 ((lift_d1_d5 f_5_5) (_lh_simplify_arg1_1 t_4_8))) t_4_8)) in
    f_5_5)
and simplify_d1 _lh_simplify_arg1_2 =
  (let rec f_1_1_7 = (fun t_1_1_0 -> 
    ((getOrElse_d7 ((lift_d1_d6 f_1_1_7) (_lh_simplify_arg1_2 t_1_1_0))) t_1_1_0)) in
    f_1_1_7)
and simplify_d2 _lh_simplify_arg1_4 =
  (let rec f_1_4_0 = (fun t_1_2_9 -> 
    ((getOrElse_d8 ((lift_d1_d7 f_1_4_0) (_lh_simplify_arg1_4 t_1_2_9))) t_1_2_9)) in
    f_1_4_0)
and simplify_d3 _lh_simplify_arg1_0 =
  (let rec f_4_4 = (fun t_3_5 -> 
    ((getOrElse_d9 ((lift_d1_d8 f_4_4) (_lh_simplify_arg1_0 t_3_5))) t_3_5)) in
    f_4_4)
and simplify_d4 _lh_simplify_arg1_3 =
  (let rec f_1_2_7 = (fun t_1_1_8 -> 
    ((getOrElse_d1_d0 ((lift_d1_d9 f_1_2_7) (_lh_simplify_arg1_3 t_1_1_8))) t_1_1_8)) in
    f_1_2_7)
and stand_eqn_d0 _lh_stand_eqn_arg1_1 _lh_stand_eqn_arg2_1 =
  (match _lh_stand_eqn_arg2_1 with
    | `Eqn(_lh_stand_eqn_Eqn_0_1, _lh_stand_eqn_Eqn_1_1) -> 
      (match _lh_stand_eqn_Eqn_1_1 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_1, _lh_stand_eqn_LH_P2_1_1) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_1, (`LH_P2(((stand_d0 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_0_1), ((stand_d1 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn_d1 _lh_stand_eqn_arg1_2 _lh_stand_eqn_arg2_2 =
  (match _lh_stand_eqn_arg2_2 with
    | `Eqn(_lh_stand_eqn_Eqn_0_2, _lh_stand_eqn_Eqn_1_2) -> 
      (match _lh_stand_eqn_Eqn_1_2 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_2, _lh_stand_eqn_LH_P2_1_2) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_2, (`LH_P2(((stand_d2 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_0_2), ((stand_d3 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn_d2 _lh_stand_eqn_arg1_0 _lh_stand_eqn_arg2_0 =
  (match _lh_stand_eqn_arg2_0 with
    | `Eqn(_lh_stand_eqn_Eqn_0_0, _lh_stand_eqn_Eqn_1_0) -> 
      (match _lh_stand_eqn_Eqn_1_0 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_0, _lh_stand_eqn_LH_P2_1_0) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_0, (`LH_P2(((stand_d4 _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_0_0), ((stand_d5 _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_d0 _lh_stand_arg1_4 =
  ((expr_fold_d5 (fun x_3_3 y_1_1 -> 
    (`Func(x_3_3, y_1_1)))) (fun v_4 -> 
    (`Var(((mappend_d1_d2 v_4) _lh_stand_arg1_4)))))
and stand_d1 _lh_stand_arg1_3 =
  ((expr_fold_d6 (fun x_3_0 y_9 -> 
    (`Func(x_3_0, y_9)))) (fun v_3 -> 
    (`Var(((mappend_d1_d3 v_3) _lh_stand_arg1_3)))))
and stand_d2 _lh_stand_arg1_5 =
  ((expr_fold_d7 (fun x_3_9 y_1_3 -> 
    (`Func(x_3_9, y_1_3)))) (fun v_5 -> 
    (`Var(((mappend_d1_d4 v_5) _lh_stand_arg1_5)))))
and stand_d3 _lh_stand_arg1_1 =
  ((expr_fold_d8 (fun x_1_6 y_3 -> 
    (`Func(x_1_6, y_3)))) (fun v_1 -> 
    (`Var(((mappend_d1_d5 v_1) _lh_stand_arg1_1)))))
and stand_d4 _lh_stand_arg1_0 =
  ((expr_fold_d9 (fun x_1_3 y_2 -> 
    (`Func(x_1_3, y_2)))) (fun v_0 -> 
    (`Var(((mappend_d1_d6 v_0) _lh_stand_arg1_0)))))
and stand_d5 _lh_stand_arg1_2 =
  ((expr_fold_d1_d0 (fun x_2_9 y_8 -> 
    (`Func(x_2_9, y_8)))) (fun v_2 -> 
    (`Var(((mappend_d1_d7 v_2) _lh_stand_arg1_2)))))
and subterms_d0 _lh_subterms_arg1_0 =
  (match _lh_subterms_arg1_0 with
    | `Var(_lh_subterms_Var_0_0) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0) -> 
      ((mappend_d1 (let rec h_7_1 = (`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0)))) in
        (let rec t_7_5 = (fun ys_3_3 -> 
          ys_3_3) in
          (fun ys_3_4 -> 
            (`LH_C(h_7_1, ((mappend_d1 t_7_5) ys_3_4))))))) (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_0 -> 
        (_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_1_9)) in
        (_lh_listcomp_fun_1_9 ((zip_lz_nl_d0 (enumFrom_d1 0)) _lh_subterms_Func_1_0))))
    | _ -> 
      (failwith "error"))
and subterms_d1 _lh_subterms_arg1_1 =
  (match _lh_subterms_arg1_1 with
    | `Var(_lh_subterms_Var_0_1) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1) -> 
      ((mappend_d9 (let rec h_1_0_4 = (`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1)))) in
        (let rec t_1_0_9 = (fun ys_5_1 -> 
          ys_5_1) in
          (fun ys_5_2 -> 
            (`LH_C(h_1_0_4, ((mappend_d9 t_1_0_9) ys_5_2))))))) (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_1_3 -> 
        (_lh_listcomp_fun_para_1_3 _lh_listcomp_fun_2_5)) in
        (_lh_listcomp_fun_2_5 ((zip_lz_nl_d1 (enumFrom_d2 0)) _lh_subterms_Func_1_1))))
    | _ -> 
      (failwith "error"))
and subterms_d2 _lh_subterms_arg1_2 =
  (match _lh_subterms_arg1_2 with
    | `Var(_lh_subterms_Var_0_2) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2) -> 
      ((mappend_d1_d8 (let rec h_1_1_9 = (`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2)))) in
        (let rec t_1_2_8 = (fun ys_5_6 -> 
          ys_5_6) in
          (fun ys_5_7 -> 
            (`LH_C(h_1_1_9, ((mappend_d1_d8 t_1_2_8) ys_5_7))))))) (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_4 -> 
        (_lh_listcomp_fun_para_1_4 _lh_listcomp_fun_2_6)) in
        (_lh_listcomp_fun_2_6 ((zip_lz_nl_d2 (enumFrom_d3 0)) _lh_subterms_Func_1_2))))
    | _ -> 
      (failwith "error"))
and sub_d0 _lh_sub_arg1_1 _lh_sub_arg2_1 =
  (((expr_fold_d3 (fun x_1_8 y_4 -> 
    (`Func(x_1_8, y_4)))) (apply_d0 _lh_sub_arg2_1)) _lh_sub_arg1_1)
and sub_d1 _lh_sub_arg1_4 _lh_sub_arg2_4 =
  (((expr_fold_d4 (fun x_2_8 y_7 -> 
    (`Func(x_2_8, y_7)))) (apply_d1 _lh_sub_arg2_4)) _lh_sub_arg1_4)
and sub_d2 _lh_sub_arg1_6 _lh_sub_arg2_6 =
  (((expr_fold_d1_d1 (fun x_3_6 y_1_2 -> 
    (`Func(x_3_6, y_1_2)))) (apply_d2 _lh_sub_arg2_6)) _lh_sub_arg1_6)
and sub_d3 _lh_sub_arg1_0 _lh_sub_arg2_0 =
  (((expr_fold_d1_d2 (fun x_0 y_0 -> 
    (`Func(x_0, y_0)))) (apply_d3 _lh_sub_arg2_0)) _lh_sub_arg1_0)
and sub_d4 _lh_sub_arg1_7 _lh_sub_arg2_7 =
  (((expr_fold_d1_d3 (fun x_4_0 y_1_4 -> 
    (`Func(x_4_0, y_1_4)))) (apply_d4 _lh_sub_arg2_7)) _lh_sub_arg1_7)
and sub_d5 _lh_sub_arg1_3 _lh_sub_arg2_3 =
  (((expr_fold_d1_d5 (fun x_2_5 y_6 -> 
    (`Func(x_2_5, y_6)))) (apply_d5 _lh_sub_arg2_3)) _lh_sub_arg1_3)
and sub_d6 _lh_sub_arg1_5 _lh_sub_arg2_5 =
  (((expr_fold_d1_d6 (fun x_3_2 y_1_0 -> 
    (`Func(x_3_2, y_1_0)))) (apply_d6 _lh_sub_arg2_5)) _lh_sub_arg1_5)
and sub_d7 _lh_sub_arg1_2 _lh_sub_arg2_2 =
  (((expr_fold_d1_d8 (fun x_1_9 y_5 -> 
    (`Func(x_1_9, y_5)))) (apply_d7 _lh_sub_arg2_2)) _lh_sub_arg1_2)
and testRewrite_nofib_d0 _lh_testRewrite_nofib_arg1_0 =
  ((all_d0 result_d0) ((copy_d0 _lh_testRewrite_nofib_arg1_0) (let rec _lh_result_LH_P2_0_0 = (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_N))))))))))))))))) in
    (let rec _lh_result_LH_P2_1_0 = (`LH_C('I', (`LH_C('(', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(')', (`LH_N))))))))))))))))))))))) in
      (fun _lh_dummy_0 -> 
        let rec multi_0 = (fun _lh_multi_arg1_1 _lh_multi_arg2_0 -> 
          (((_lh_multi_arg2_0 _lh_multi_arg1_1) dominates_0) rem_eq_0))
        and rank_order_0 = (fun _lh_rank_order_arg1_0 _lh_rank_order_arg2_0 -> 
          ((_lh_rank_order_arg2_0 _lh_rank_order_arg1_0) num_order_0))
        and superpose_0 = (fun _lh_superpose_arg1_0 _lh_superpose_arg2_0 -> 
          (sift_d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
            (match _lh_listcomp_fun_para_2 with
              | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                (match _lh_listcomp_fun_ls_h_2 with
                  | `LH_P2(_lh_superpose_LH_P2_0_0, _lh_superpose_LH_P2_1_0) -> 
                    (let rec h_5 = ((lift_d7 (pair_d1 _lh_superpose_LH_P2_0_0)) ((unify_d0 _lh_superpose_arg1_0) _lh_superpose_LH_P2_1_0)) in
                      (let rec t_5 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2) in
                        (fun f_5 -> 
                          (let rec h_6 = (f_5 h_5) in
                            (let rec t_6 = ((map_d2_d4 f_5) t_5) in
                              (fun _lh_dummy_1 -> 
                                ((mappend_d1_d0 h_6) (concat_d1 t_6))))))))
                  | _ -> 
                    (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
              | `LH_N -> 
                (fun f_6 _lh_dummy_2 -> 
                  (`LH_N)))) in
            (_lh_listcomp_fun_2 (subterms_d2 _lh_superpose_arg2_0)))))
        and delete_0 = (fun _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 -> 
          (match _lh_delete_arg3_0 with
            | `LH_N -> 
              croak_d1
            | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
              (if ((_lh_delete_arg1_0 _lh_delete_arg2_0) _lh_delete_LH_C_0_0) then
                (succeed_d6 _lh_delete_LH_C_1_0)
              else
                ((lift_d9 (fun x_8 -> 
                  (`LH_C(_lh_delete_LH_C_0_0, x_8)))) (((delete_0 _lh_delete_arg1_0) _lh_delete_arg2_0) _lh_delete_LH_C_1_0)))
            | _ -> 
              (failwith "error")))
        and rem_eq_0 = (fun _lh_rem_eq_arg1_0 _lh_rem_eq_arg2_0 -> 
          (match _lh_rem_eq_arg2_0 with
            | `LH_P2(_lh_rem_eq_LH_P2_0_0, _lh_rem_eq_LH_P2_1_0) -> 
              (match _lh_rem_eq_LH_P2_0_0 with
                | `LH_N -> 
                  (`LH_P2((`LH_N), _lh_rem_eq_LH_P2_1_0))
                | `LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_C_1_0) -> 
                  (let rec add_x_0 = (fun xsys_0 -> 
                    (let rec _lh_matchIdent_1_0 = xsys_0 in
                      (match _lh_matchIdent_1_0 with
                        | `LH_P2(_lh_rem_eq_LH_P2_0_1, _lh_rem_eq_LH_P2_1_1) -> 
                          (`LH_P2((`LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_P2_0_1)), _lh_rem_eq_LH_P2_1_1))
                        | _ -> 
                          (failwith "error")))) in
                    ((getOrElse_d1 ((lift_d4 (fun _lh_funcomp_x_8 -> 
                      ((rem_eq_0 _lh_rem_eq_arg1_0) ((pair_d0 _lh_rem_eq_LH_C_1_0) _lh_funcomp_x_8)))) (((delete_0 _lh_rem_eq_arg1_0) _lh_rem_eq_LH_C_0_0) _lh_rem_eq_LH_P2_1_0))) (add_x_0 ((rem_eq_0 _lh_rem_eq_arg1_0) (`LH_P2(_lh_rem_eq_LH_C_1_0, _lh_rem_eq_LH_P2_1_0))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and q_eqn_0 = (fun _lh_q_eqn_arg1_0 -> 
          (match _lh_q_eqn_arg1_0 with
            | `LH_C(_lh_q_eqn_LH_C_0_0, _lh_q_eqn_LH_C_1_0) -> 
              (match _lh_q_eqn_LH_C_1_0 with
                | `LH_C(_lh_q_eqn_LH_C_0_1, _lh_q_eqn_LH_C_1_1) -> 
                  (match _lh_q_eqn_LH_C_1_1 with
                    | `LH_C(_lh_q_eqn_LH_C_0_2, _lh_q_eqn_LH_C_1_2) -> 
                      (match _lh_q_eqn_LH_C_1_2 with
                        | `LH_N -> 
                          (`List((`LH_C(_lh_q_eqn_LH_C_0_0, (`LH_C(_lh_q_eqn_LH_C_0_2, (`LH_N)))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and parse_eqn_0 = (fun _lh_parse_eqn_arg1_0 -> 
          (let rec _lh_matchIdent_9 = (fst_d3 (the_d3 (p_eqn_0 _lh_parse_eqn_arg1_0))) in
            (match _lh_matchIdent_9 with
              | `List(_lh_parse_eqn_List_0_0) -> 
                (match _lh_parse_eqn_List_0_0 with
                  | `LH_C(_lh_parse_eqn_LH_C_0_0, _lh_parse_eqn_LH_C_1_0) -> 
                    (match _lh_parse_eqn_LH_C_0_0 with
                      | `Expr(_lh_parse_eqn_Expr_0_0) -> 
                        (match _lh_parse_eqn_LH_C_1_0 with
                          | `LH_C(_lh_parse_eqn_LH_C_0_1, _lh_parse_eqn_LH_C_1_1) -> 
                            (match _lh_parse_eqn_LH_C_0_1 with
                              | `Expr(_lh_parse_eqn_Expr_0_1) -> 
                                (match _lh_parse_eqn_LH_C_1_1 with
                                  | `LH_N -> 
                                    (`LH_P2(_lh_parse_eqn_Expr_0_0, _lh_parse_eqn_Expr_0_1))
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
                (failwith "error"))))
        and addby_0 = (fun _lh_addby_arg1_0 _lh_addby_arg2_0 _lh_addby_arg3_0 -> 
          (let rec insert_0 = (fun x_1_0 ls_4 -> 
            (let rec _lh_matchIdent_1_2 = ls_4 in
              (match _lh_matchIdent_1_2 with
                | `LH_N -> 
                  (`LH_C(x_1_0, (`LH_N)))
                | `LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0) -> 
                  (if ((_lh_addby_arg1_0 x_1_0) <= (_lh_addby_arg1_0 _lh_addby_LH_C_0_0)) then
                    (`LH_C(x_1_0, (`LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0))))
                  else
                    (`LH_C(_lh_addby_LH_C_0_0, ((insert_0 x_1_0) _lh_addby_LH_C_1_0))))
                | _ -> 
                  (failwith "error")))) in
            (((foldr_d2 insert_0) _lh_addby_arg3_0) _lh_addby_arg2_0)))
        and seq2Lzq_0 = (fun _lh_seq2Lzq_arg1_0 _lh_seq2Lzq_arg2_0 _lh_seq2Lzq_arg3_0 -> 
          (let rec g_1 = (fun xs_2 -> 
            (let rec _lh_matchIdent_5 = xs_2 in
              (match _lh_matchIdent_5 with
                | `LH_P2(_lh_seq2Lzq_LH_P2_0_0, _lh_seq2Lzq_LH_P2_1_0) -> 
                  ((lift_d5 ((cross_d1 (_lh_seq2Lzq_arg1_0 _lh_seq2Lzq_LH_P2_0_0)) (fun x_6 -> 
                    x_6))) ((Lazy.force _lh_seq2Lzq_arg3_0) _lh_seq2Lzq_LH_P2_1_0))
                | _ -> 
                  (failwith "error")))) in
            (fun _lh_funcomp_x_6 -> 
              ((fun _lh_funcomp_x_7 -> 
                (squash_d1 ((lift_d6 g_1) _lh_funcomp_x_7))) (_lh_seq2Lzq_arg2_0 _lh_funcomp_x_6)))))
        and find_assoc_0 = (fun _lh_find_assoc_arg1_0 _lh_find_assoc_arg2_0 _lh_find_assoc_arg3_0 -> 
          (match _lh_find_assoc_arg1_0 with
            | `Afunc(_lh_find_assoc_Afunc_0_0) -> 
              ((getOrElse_d0 ((lift_d1 (find'_0 _lh_find_assoc_arg2_0)) ((assoc_d0 _lh_find_assoc_arg3_0) _lh_find_assoc_Afunc_0_0))) (`LH_N))
            | `Avar -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
        and rpo_0 = (fun _lh_rpo_arg1_0 _lh_rpo_arg2_0 -> 
          (let rec rpo'_0 = (fun param_0 -> 
            (let rec _lh_matchIdent_2 = param_0 in
              (match _lh_matchIdent_2 with
                | `LH_P2(_lh_rpo_LH_P2_0_0, _lh_rpo_LH_P2_1_0) -> 
                  (match _lh_rpo_LH_P2_0_0 with
                    | `Var(_lh_rpo_Var_0_0) -> 
                      (match _lh_rpo_LH_P2_1_0 with
                        | `Var(_lh_rpo_Var_0_1) -> 
                          (if (_lh_rpo_Var_0_0 = _lh_rpo_Var_0_1) then
                            (`Equal)
                          else
                            (`Unrelated))
                        | `Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0) -> 
                          (if ((occurs_d0 _lh_rpo_Var_0_0) (`Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0))) then
                            (`Less)
                          else
                            (`Unrelated))
                        | _ -> 
                          ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                    | `Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1) -> 
                      (match _lh_rpo_LH_P2_1_0 with
                        | `Var(_lh_rpo_Var_0_2) -> 
                          (if ((occurs_d1 _lh_rpo_Var_0_2) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) then
                            (`Greater)
                          else
                            (`Unrelated))
                        | `Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2) -> 
                          (let rec _lh_matchIdent_3 = (_lh_rpo_arg1_0 (let rec _lh_rank_order_LH_P2_0_0 = _lh_rpo_Func_0_1 in
                            (let rec _lh_rank_order_LH_P2_1_0 = _lh_rpo_Func_0_2 in
                              (fun _lh_rank_order_arg1_1 num_order_1 -> 
                                (num_order_1 (`LH_P2((_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_0_0), (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_1_0)))))))) in
                            (match _lh_matchIdent_3 with
                              | `Equal -> 
                                ((_lh_rpo_arg2_0 rpo'_0) (`LH_P2((`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1)), (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2)))))
                              | `Greater -> 
                                (if ((((quant_d6 all_d4) (ltRewrite_d2 rpo'_0)) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) _lh_rpo_Func_1_2) then
                                  (`Greater)
                                else
                                  (if ((((quant_d7 any_d3) (geRewrite_d2 rpo'_0)) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) _lh_rpo_Func_1_2) then
                                    (`Less)
                                  else
                                    (`Unrelated)))
                              | `Less -> 
                                (if ((((quant_d8 all_d5) (ltRewrite_d3 rpo'_0)) (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2))) _lh_rpo_Func_1_1) then
                                  (`Less)
                                else
                                  (if ((((quant_d9 any_d4) (geRewrite_d3 rpo'_0)) (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2))) _lh_rpo_Func_1_1) then
                                    (`Greater)
                                  else
                                    (`Unrelated)))
                              | `Unrelated -> 
                                (`Unrelated)
                              | _ -> 
                                (failwith "error")))
                        | _ -> 
                          ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                    | _ -> 
                      ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                | _ -> 
                  ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))) in
            rpo'_0))
        and split_0 = (fun _lh_split_arg1_0 _lh_split_arg2_0 -> 
          (let rec tmp_0 = ((zip_d3 ((map_d1_d1 _lh_split_arg1_0) _lh_split_arg2_0)) _lh_split_arg2_0) in
            (let rec _lh_process2_LH_P2_0_0 = (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
              (match _lh_listcomp_fun_para_0 with
                | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                  (match _lh_listcomp_fun_ls_h_0 with
                    | `LH_P2(_lh_split_LH_P2_0_0, _lh_split_LH_P2_1_0) -> 
                      (if _lh_split_LH_P2_0_0 then
                        (`LH_C(_lh_split_LH_P2_1_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                      else
                        (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                    | _ -> 
                      (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_0 tmp_0)) in
              (let rec _lh_process2_LH_P2_1_0 = (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                (match _lh_listcomp_fun_para_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                    (match _lh_listcomp_fun_ls_h_1 with
                      | `LH_P2(_lh_split_LH_P2_0_1, _lh_split_LH_P2_1_1) -> 
                        (if (not _lh_split_LH_P2_0_1) then
                          (`LH_C(_lh_split_LH_P2_1_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                        else
                          (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                      | _ -> 
                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_1 tmp_0)) in
                (fun _lh_process2_arg1_0 _lh_process2_arg2_0 _lh_process2_arg4_0 _lh_process2_arg5_0 _lh_process2_arg6_0 add_agenda_1 add_eqn_1 all_crit_pairs_1 process_1 resolve_1 super_reduce_1 -> 
                  (let rec net'_0 = ((add_eqn_1 ((delete_eqns_d0 ((map_d1_d2 eqno_d1) _lh_process2_LH_P2_0_0)) _lh_process2_arg4_0)) _lh_process2_arg6_0) in
                    (let rec deletions_0 = ((map_d1_d3 eqpr_d0) _lh_process2_LH_P2_0_0) in
                      (let rec critical_0 = ((all_crit_pairs_1 _lh_process2_arg6_0) _lh_process2_LH_P2_1_0) in
                        (let rec new_agenda_0 = (sift_d1 ((map_d1_d4 (resolve_1 (super_reduce_1 net'_0))) ((mappend_d5 deletions_0) critical_0))) in
                          (let rec todo'_0 = (((add_agenda_1 (snd_d1 _lh_process2_arg1_0)) new_agenda_0) _lh_process2_arg5_0) in
                            (((((process_1 _lh_process2_arg1_0) _lh_process2_arg2_0) ((mappend_d6 _lh_process2_LH_P2_1_0) (`LH_C(_lh_process2_arg6_0, (`LH_N))))) net'_0) todo'_0)))))))))))
        and build_0 = (fun _lh_build_arg1_0 _lh_build_arg2_0 _lh_funcomp_x_9 -> 
          ((lift_d8 ((cross_d2 _lh_build_arg1_0) (fun x_1_1 -> 
            x_1_1))) (_lh_build_arg2_0 _lh_funcomp_x_9)))
        and process1_0 = (fun _lh_process1_arg1_0 _lh_process1_arg2_0 _lh_process1_arg3_0 _lh_process1_arg4_0 _lh_process1_arg5_0 _lh_process1_arg6_0 -> 
          ((((((((_lh_process1_arg6_0 _lh_process1_arg1_0) _lh_process1_arg2_0) _lh_process1_arg3_0) _lh_process1_arg4_0) _lh_process1_arg5_0) add_agenda_0) process2_0) process_0))
        and p_op_0 = (fun _lh_p_op_arg1_0 -> 
          ((sp_0 (string_of_0 opsym_0)) _lh_p_op_arg1_0))
        and p_prim_0 = (fun _lh_p_prim_arg1_0 -> 
          (((orElseMap_d1 p_name_0) ((seQ_0 (fun x_7 -> 
            ((atIndex_d2 1) x_7))) (let rec h_1_0 = (look_for_0 '(') in
            (let rec t_1_0 = (let rec h_1_1 = p_expr_0 in
              (let rec t_1_1 = (let rec h_1_2 = (look_for_0 ')') in
                (let rec t_1_2 = (fun f_1_1 i_7 -> 
                  i_7) in
                  (fun f_1_2 i_8 -> 
                    ((f_1_2 h_1_2) (((foldr_d1 f_1_2) i_8) t_1_2))))) in
                (fun f_1_3 i_9 -> 
                  ((f_1_3 h_1_1) (((foldr_d1 f_1_3) i_9) t_1_1))))) in
              (fun f_1_4 i_1_0 -> 
                ((f_1_4 h_1_0) (((foldr_d1 f_1_4) i_1_0) t_1_0))))))) _lh_p_prim_arg1_0))
        and reducible_0 = (fun _lh_reducible_arg1_0 _lh_reducible_arg2_0 -> 
          (match _lh_reducible_arg2_0 with
            | `Eqn(_lh_reducible_Eqn_0_0, _lh_reducible_Eqn_1_0) -> 
              (match _lh_reducible_Eqn_1_0 with
                | `LH_P2(_lh_reducible_LH_P2_0_0, _lh_reducible_LH_P2_1_0) -> 
                  ((exists_d0 (_lh_reducible_arg1_0 _lh_reducible_LH_P2_0_0)) || (exists_d1 (_lh_reducible_arg1_0 _lh_reducible_LH_P2_1_0)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and mk_list_0 = (fun _lh_mk_list_arg1_0 _lh_mk_list_arg2_0 -> 
          (match _lh_mk_list_arg2_0 with
            | `List(_lh_mk_list_List_0_0) -> 
              (_lh_mk_list_arg1_0 _lh_mk_list_List_0_0)
            | _ -> 
              (failwith "error")))
        and lexico_0 = (fun _lh_lexico_arg1_0 _lh_lexico_arg2_0 -> 
          (match _lh_lexico_arg2_0 with
            | `LH_P2(_lh_lexico_LH_P2_0_0, _lh_lexico_LH_P2_1_0) -> 
              (match _lh_lexico_LH_P2_0_0 with
                | `LH_N -> 
                  (match _lh_lexico_LH_P2_1_0 with
                    | `LH_N -> 
                      (`Equal)
                    | `LH_C(_lh_lexico_LH_C_0_0, _lh_lexico_LH_C_1_0) -> 
                      (`Less)
                    | _ -> 
                      (failwith "error"))
                | `LH_C(_lh_lexico_LH_C_0_1, _lh_lexico_LH_C_1_1) -> 
                  (match _lh_lexico_LH_P2_1_0 with
                    | `LH_N -> 
                      (`Greater)
                    | `LH_C(_lh_lexico_LH_C_0_2, _lh_lexico_LH_C_1_2) -> 
                      ((lex_combine_0 (_lh_lexico_arg1_0 (`LH_P2(_lh_lexico_LH_C_0_1, _lh_lexico_LH_C_0_2)))) ((lexico_0 _lh_lexico_arg1_0) (`LH_P2(_lh_lexico_LH_C_1_1, _lh_lexico_LH_C_1_2))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and find_0 = (fun _lh_find_arg1_0 _lh_find_arg2_0 -> 
          ((find'_0 (g_init_0 _lh_find_arg1_0)) _lh_find_arg2_0))
        and rank_0 = (fun _lh_rank_arg1_0 -> 
          (match _lh_rank_arg1_0 with
            | `LH_C(_lh_rank_LH_C_0_0, _lh_rank_LH_C_1_0) -> 
              (match _lh_rank_LH_C_0_0 with
                | 'E' -> 
                  (match _lh_rank_LH_C_1_0 with
                    | `LH_N -> 
                      1
                    | _ -> 
                      (failwith "error"))
                | '*' -> 
                  (match _lh_rank_LH_C_1_0 with
                    | `LH_N -> 
                      2
                    | _ -> 
                      (failwith "error"))
                | 'I' -> 
                  (match _lh_rank_LH_C_1_0 with
                    | `LH_N -> 
                      3
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and is_switch_0 = (fun _lh_is_switch_arg1_0 -> 
          (match _lh_is_switch_arg1_0 with
            | `Switch(_lh_is_switch_Switch_0_0, _lh_is_switch_Switch_1_0) -> 
              true
            | `Return(_lh_is_switch_Return_0_0) -> 
              false
            | _ -> 
              (failwith "error")))
        and q_func_0 = (fun _lh_q_func_arg1_0 -> 
          (match _lh_q_func_arg1_0 with
            | `LH_C(_lh_q_func_LH_C_0_0, _lh_q_func_LH_C_1_0) -> 
              (match _lh_q_func_LH_C_0_0 with
                | `MkString(_lh_q_func_MkString_0_0) -> 
                  (match _lh_q_func_LH_C_1_0 with
                    | `LH_C(_lh_q_func_LH_C_0_1, _lh_q_func_LH_C_1_1) -> 
                      (match _lh_q_func_LH_C_1_1 with
                        | `LH_C(_lh_q_func_LH_C_0_2, _lh_q_func_LH_C_1_2) -> 
                          (match _lh_q_func_LH_C_0_2 with
                            | `List(_lh_q_func_List_0_0) -> 
                              (match _lh_q_func_LH_C_1_2 with
                                | `LH_C(_lh_q_func_LH_C_0_3, _lh_q_func_LH_C_1_3) -> 
                                  (match _lh_q_func_LH_C_1_3 with
                                    | `LH_N -> 
                                      (`Expr((`Func(_lh_q_func_MkString_0_0, ((map_d3 unExpr_0) _lh_q_func_List_0_0)))))
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
              (failwith "error")))
        and knuth_bendix_0 = (fun _lh_knuth_bendix_arg1_0 _lh_knuth_bendix_arg2_0 -> 
          ((knuth_bendix1_0 (`LH_P2(_lh_knuth_bendix_arg1_0, cost_d0))) _lh_knuth_bendix_arg2_0))
        and add_agenda_0 = (fun _lh_add_agenda_arg1_0 _lh_add_agenda_arg2_0 -> 
          ((addby_0 item_cost_0) ((map_d6 (mk_item_0 _lh_add_agenda_arg1_0)) _lh_add_agenda_arg2_0)))
        and g_init_0 = (fun _lh_g_init_arg1_0 -> 
          (`LH_C(_lh_g_init_arg1_0, (`LH_N))))
        and mk_dnet_0 = (fun _lh_mk_dnet_arg1_0 -> 
          (((foldl_d0 add_eqn_0) empty_net_0) _lh_mk_dnet_arg1_0))
        and p_name_0 = (fun _lh_p_name_arg1_0 -> 
          (((build_0 q_name_0) p_ident_0) _lh_p_name_arg1_0))
        and q_op_0 = (fun _lh_q_op_arg1_0 -> 
          (match _lh_q_op_arg1_0 with
            | `LH_C(_lh_q_op_LH_C_0_0, _lh_q_op_LH_C_1_0) -> 
              (match _lh_q_op_LH_C_0_0 with
                | `Expr(_lh_q_op_Expr_0_0) -> 
                  (match _lh_q_op_LH_C_1_0 with
                    | `LH_C(_lh_q_op_LH_C_0_1, _lh_q_op_LH_C_1_1) -> 
                      (match _lh_q_op_LH_C_0_1 with
                        | `MkString(_lh_q_op_MkString_0_0) -> 
                          (match _lh_q_op_LH_C_1_1 with
                            | `LH_C(_lh_q_op_LH_C_0_2, _lh_q_op_LH_C_1_2) -> 
                              (match _lh_q_op_LH_C_0_2 with
                                | `Expr(_lh_q_op_Expr_0_1) -> 
                                  (match _lh_q_op_LH_C_1_2 with
                                    | `LH_N -> 
                                      (`Expr((`Func(_lh_q_op_MkString_0_0, (`LH_C(_lh_q_op_Expr_0_0, (`LH_C(_lh_q_op_Expr_0_1, (`LH_N)))))))))
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
              (failwith "error")))
        and unExpr_0 = (fun _lh_unExpr_arg1_0 -> 
          (match _lh_unExpr_arg1_0 with
            | `Expr(_lh_unExpr_Expr_0_0) -> 
              _lh_unExpr_Expr_0_0
            | _ -> 
              (failwith "error")))
        and opsym_0 = (fun _lh_opsym_arg1_0 -> 
          ((fun x_1 -> 
            ((inList_d5 x_1) (let rec _lh_inList_LH_C_0_0 = '*' in
              (let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_0_1 = '+' in
                (let rec _lh_inList_LH_C_1_1 = (let rec _lh_inList_LH_C_0_2 = '%' in
                  (let rec _lh_inList_LH_C_1_2 = (let rec _lh_inList_LH_C_0_3 = '@' in
                    (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_0_4 = '-' in
                      (let rec _lh_inList_LH_C_1_4 = (let rec _lh_inList_LH_C_0_5 = '/' in
                        (let rec _lh_inList_LH_C_1_5 = (let rec _lh_inList_LH_C_0_6 = '?' in
                          (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_0_7 = ':' in
                            (let rec _lh_inList_LH_C_1_7 = (fun _lh_inList_arg1_0 -> 
                              false) in
                              (fun _lh_inList_arg1_1 -> 
                                (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_7) then
                                  true
                                else
                                  ((inList_d5 _lh_inList_arg1_1) _lh_inList_LH_C_1_7))))) in
                            (fun _lh_inList_arg1_2 -> 
                              (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_6) then
                                true
                              else
                                ((inList_d5 _lh_inList_arg1_2) _lh_inList_LH_C_1_6))))) in
                          (fun _lh_inList_arg1_3 -> 
                            (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_5) then
                              true
                            else
                              ((inList_d5 _lh_inList_arg1_3) _lh_inList_LH_C_1_5))))) in
                        (fun _lh_inList_arg1_4 -> 
                          (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
                            true
                          else
                            ((inList_d5 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))))) in
                      (fun _lh_inList_arg1_5 -> 
                        (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_3) then
                          true
                        else
                          ((inList_d5 _lh_inList_arg1_5) _lh_inList_LH_C_1_3))))) in
                    (fun _lh_inList_arg1_6 -> 
                      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_2) then
                        true
                      else
                        ((inList_d5 _lh_inList_arg1_6) _lh_inList_LH_C_1_2))))) in
                  (fun _lh_inList_arg1_7 -> 
                    (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_1) then
                      true
                    else
                      ((inList_d5 _lh_inList_arg1_7) _lh_inList_LH_C_1_1))))) in
                (fun _lh_inList_arg1_8 -> 
                  (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_0) then
                    true
                  else
                    ((inList_d5 _lh_inList_arg1_8) _lh_inList_LH_C_1_0))))))) _lh_opsym_arg1_0))
        and resolve_0 = (fun _lh_resolve_arg1_0 _lh_resolve_arg2_0 -> 
          (let rec lhs'_0 = ((simplify_d2 _lh_resolve_arg1_0) (fst_d2 _lh_resolve_arg2_0)) in
            (let rec rhs'_0 = ((simplify_d3 _lh_resolve_arg1_0) (snd_d2 _lh_resolve_arg2_0)) in
              (if ((eqExpr_d0 lhs'_0) rhs'_0) then
                croak_d0
              else
                (succeed_d5 (`LH_P2(lhs'_0, rhs'_0)))))))
        and p_term_0 = (fun _lh_p_term_arg1_0 -> 
          (((orElseMap_d3 ((seQ_0 q_func_0) (let rec h_1_6 = p_ident_0 in
            (let rec t_1_6 = (let rec h_1_7 = (look_for_0 '(') in
              (let rec t_1_7 = (let rec h_1_8 = ((list_of_0 p_expr_0) ',') in
                (let rec t_1_8 = (let rec h_1_9 = (look_for_0 ')') in
                  (let rec t_1_9 = (fun f_1_9 i_1_5 -> 
                    i_1_5) in
                    (fun f_2_0 i_1_6 -> 
                      ((f_2_0 h_1_9) (((foldr_d1 f_2_0) i_1_6) t_1_9))))) in
                  (fun f_2_1 i_1_7 -> 
                    ((f_2_1 h_1_8) (((foldr_d1 f_2_1) i_1_7) t_1_8))))) in
                (fun f_2_2 i_1_8 -> 
                  ((f_2_2 h_1_7) (((foldr_d1 f_2_2) i_1_8) t_1_7))))) in
              (fun f_2_3 i_1_9 -> 
                ((f_2_3 h_1_6) (((foldr_d1 f_2_3) i_1_9) t_1_6))))))) p_prim_0) _lh_p_term_arg1_0))
        and add_eqn_0 = (fun _lh_add_eqn_arg1_0 _lh_add_eqn_arg2_0 -> 
          (((thread_0 (preorder_0 (g_init_0 (lhs_d4 _lh_add_eqn_arg2_0)))) _lh_add_eqn_arg2_0) _lh_add_eqn_arg1_0))
        and thread_0 = (fun _lh_thread_arg1_0 _lh_thread_arg2_0 _lh_thread_arg3_0 -> 
          (match _lh_thread_arg1_0 with
            | `LH_C(_lh_thread_LH_C_0_0, _lh_thread_LH_C_1_0) -> 
              (match _lh_thread_LH_C_0_0 with
                | `Afunc(_lh_thread_Afunc_0_0) -> 
                  (match _lh_thread_arg3_0 with
                    | `Switch(_lh_thread_Switch_0_0, _lh_thread_Switch_1_0) -> 
                      (`Switch(((((update_alist_d0 _lh_thread_Afunc_0_0) ((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0)) empty_net_0) _lh_thread_Switch_0_0), _lh_thread_Switch_1_0))
                    | `Return(_lh_thread_Return_0_0) -> 
                      (((thread_0 (`LH_C((`Afunc(_lh_thread_Afunc_0_0)), _lh_thread_LH_C_1_0))) _lh_thread_arg2_0) (`Switch((`LH_N), (`Return(_lh_thread_Return_0_0)))))
                    | _ -> 
                      (failwith "error"))
                | `Avar -> 
                  (match _lh_thread_arg3_0 with
                    | `Switch(_lh_thread_Switch_0_1, _lh_thread_Switch_1_1) -> 
                      (`Switch(_lh_thread_Switch_0_1, (((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0) _lh_thread_Switch_1_1)))
                    | `Return(_lh_thread_Return_0_1) -> 
                      (let rec d'_0 = (((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0) (`Return(_lh_thread_Return_0_1))) in
                        (if (is_switch_0 d'_0) then
                          (`Switch((`LH_N), d'_0))
                        else
                          d'_0))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | `LH_N -> 
              (match _lh_thread_arg3_0 with
                | `Return(_lh_thread_Return_0_2) -> 
                  (`Return((`LH_C(_lh_thread_arg2_0, _lh_thread_Return_0_2))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and item_cost_0 = (fun _lh_item_cost_arg1_0 -> 
          (match _lh_item_cost_arg1_0 with
            | `Item(_lh_item_cost_Item_0_0, _lh_item_cost_Item_1_0) -> 
              _lh_item_cost_Item_0_0
            | _ -> 
              (failwith "error")))
        and g_rest_0 = (fun _lh_g_rest_arg1_0 -> 
          (match _lh_g_rest_arg1_0 with
            | `LH_C(_lh_g_rest_LH_C_0_0, _lh_g_rest_LH_C_1_0) -> 
              (match _lh_g_rest_LH_C_0_0 with
                | `Func(_lh_g_rest_Func_0_0, _lh_g_rest_Func_1_0) -> 
                  ((mappend_d7 _lh_g_rest_Func_1_0) _lh_g_rest_LH_C_1_0)
                | `Var(_lh_g_rest_Var_0_0) -> 
                  _lh_g_rest_LH_C_1_0
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and lex_ext_0 = (fun _lh_lex_ext_arg1_0 _lh_lex_ext_arg2_0 -> 
          (match _lh_lex_ext_arg2_0 with
            | `LH_P2(_lh_lex_ext_LH_P2_0_0, _lh_lex_ext_LH_P2_1_0) -> 
              (match _lh_lex_ext_LH_P2_0_0 with
                | `Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0) -> 
                  (match _lh_lex_ext_LH_P2_1_0 with
                    | `Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1) -> 
                      (let rec estimate_0 = ((lexico_0 _lh_lex_ext_arg1_0) (`LH_P2(_lh_lex_ext_Func_1_0, _lh_lex_ext_Func_1_1))) in
                        (let rec confirm_0 = (fun x_9 -> 
                          (let rec _lh_matchIdent_1_1 = x_9 in
                            (match _lh_matchIdent_1_1 with
                              | `Equal -> 
                                true
                              | `Greater -> 
                                ((((quant_d0 all_d1) (ltRewrite_d0 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1)
                              | `Less -> 
                                ((((quant_d1 all_d2) (ltRewrite_d1 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0)
                              | `Unrelated -> 
                                false
                              | _ -> 
                                (failwith "error")))) in
                          (if (confirm_0 estimate_0) then
                            estimate_0
                          else
                            (if ((((quant_d2 any_d0) (geRewrite_d0 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0) then
                              (`Greater)
                            else
                              (if ((((quant_d3 any_d1) (geRewrite_d1 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1) then
                                (`Less)
                              else
                                (`Unrelated))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and empty_0 = (fun _lh_empty_arg1_0 -> 
          (succeed_d4 (`LH_P2((`List((`LH_N))), _lh_empty_arg1_0))))
        and g_skip_0 = (fun _lh_g_skip_arg1_0 -> 
          (tail_d0 _lh_g_skip_arg1_0))
        and super_reduce_0 = (fun _lh_super_reduce_arg1_0 -> 
          (inside_d0 (dnet_reduce_0 _lh_super_reduce_arg1_0)))
        and unString_0 = (fun _lh_unString_arg1_0 -> 
          (match _lh_unString_arg1_0 with
            | `MkString(_lh_unString_MkString_0_0) -> 
              _lh_unString_MkString_0_0
            | _ -> 
              (failwith "error")))
        and look_for_0 = (fun _lh_look_for_arg1_0 -> 
          (sp_0 (pchar_0 (fun x_5 -> 
            (x_5 = _lh_look_for_arg1_0)))))
        and mk_crit_0 = (fun _lh_mk_crit_arg1_0 _lh_mk_crit_arg2_0 _lh_mk_crit_arg3_0 -> 
          (match _lh_mk_crit_arg1_0 with
            | `Eqn(_lh_mk_crit_Eqn_0_0, _lh_mk_crit_Eqn_1_0) -> 
              (match _lh_mk_crit_Eqn_1_0 with
                | `LH_P2(_lh_mk_crit_LH_P2_0_0, _lh_mk_crit_LH_P2_1_0) -> 
                  (match _lh_mk_crit_arg2_0 with
                    | `Eqn(_lh_mk_crit_Eqn_0_1, _lh_mk_crit_Eqn_1_1) -> 
                      (match _lh_mk_crit_Eqn_1_1 with
                        | `LH_P2(_lh_mk_crit_LH_P2_0_1, _lh_mk_crit_LH_P2_1_1) -> 
                          (match _lh_mk_crit_arg3_0 with
                            | `LH_P2(_lh_mk_crit_LH_P2_0_2, _lh_mk_crit_LH_P2_1_2) -> 
                              (`LH_P2(((sub_d2 (((replace_d2 _lh_mk_crit_LH_P2_0_1) _lh_mk_crit_LH_P2_0_2) _lh_mk_crit_LH_P2_1_0)) _lh_mk_crit_LH_P2_1_2), ((sub_d3 _lh_mk_crit_LH_P2_1_1) _lh_mk_crit_LH_P2_1_2)))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and list_of_0 = (fun _lh_list_of_arg1_0 _lh_list_of_arg2_0 -> 
          (let rec p'_0 = (lazy (((seq2_0 mk_cons_0) _lh_list_of_arg1_0) ((orElseMap_d0 (((seq2Lzq_0 (fun x_2 y_1 -> 
            y_1)) (look_for_0 _lh_list_of_arg2_0)) p'_0)) empty_0))) in
            (Lazy.force p'_0)))
        and seQ_0 = (fun _lh_seQ_arg1_0 _lh_seQ_arg2_0 -> 
          ((build_0 (mk_list_0 _lh_seQ_arg1_0)) (((foldr_d1 (seq2_0 mk_cons_0)) empty_0) _lh_seQ_arg2_0)))
        and q_name_0 = (fun _lh_q_name_arg1_0 -> 
          (match _lh_q_name_arg1_0 with
            | `MkString(_lh_q_name_MkString_0_0) -> 
              (if (((int_of_char ((atIndex_d0 0) _lh_q_name_MkString_0_0)) >= (int_of_char 'a')) && ((int_of_char ((atIndex_d1 0) _lh_q_name_MkString_0_0)) <= (int_of_char 'z'))) then
                (`Expr((`Var(_lh_q_name_MkString_0_0))))
              else
                (`Expr((`Func(_lh_q_name_MkString_0_0, (`LH_N))))))
            | _ -> 
              (failwith "error")))
        and lex_combine_0 = (fun _lh_lex_combine_arg1_0 _lh_lex_combine_arg2_0 -> 
          (match _lh_lex_combine_arg1_0 with
            | `Equal -> 
              _lh_lex_combine_arg2_0
            | `Greater -> 
              (`Greater)
            | `Less -> 
              (`Less)
            | `Unrelated -> 
              (`Unrelated)
            | _ -> 
              (failwith "error")))
        and num_order_0 = (fun _lh_num_order_arg1_0 -> 
          (match _lh_num_order_arg1_0 with
            | `LH_P2(_lh_num_order_LH_P2_0_0, _lh_num_order_LH_P2_1_0) -> 
              (if (_lh_num_order_LH_P2_0_0 > _lh_num_order_LH_P2_1_0) then
                (`Greater)
              else
                (if (_lh_num_order_LH_P2_0_0 < _lh_num_order_LH_P2_1_0) then
                  (`Less)
                else
                  (`Equal)))
            | _ -> 
              (failwith "error")))
        and pchar_0 = (fun _lh_pchar_arg1_0 _lh_pchar_arg2_0 -> 
          (match _lh_pchar_arg2_0 with
            | `LH_N -> 
              croak_d2
            | `LH_C(_lh_pchar_LH_C_0_0, _lh_pchar_LH_C_1_0) -> 
              (if (_lh_pchar_arg1_0 _lh_pchar_LH_C_0_0) then
                (succeed_d7 (`LH_P2((`MkString((`LH_C(_lh_pchar_LH_C_0_0, (`LH_N))))), _lh_pchar_LH_C_1_0)))
              else
                croak_d3)
            | _ -> 
              (failwith "error")))
        and crit_pairs_0 = (fun _lh_crit_pairs_arg1_0 _lh_crit_pairs_arg2_0 -> 
          ((mappend_d3 ((map_d4 ((mk_crit_0 _lh_crit_pairs_arg1_0) _lh_crit_pairs_arg2_0)) ((superpose_0 (lhs_d0 _lh_crit_pairs_arg1_0)) (lhs_d1 _lh_crit_pairs_arg2_0)))) ((map_d5 ((mk_crit_0 _lh_crit_pairs_arg2_0) _lh_crit_pairs_arg1_0)) ((strict_super_0 (lhs_d2 _lh_crit_pairs_arg2_0)) (lhs_d3 _lh_crit_pairs_arg1_0)))))
        and strict_super_0 = (fun _lh_strict_super_arg1_0 _lh_strict_super_arg2_0 -> 
          (match _lh_strict_super_arg2_0 with
            | `Func(_lh_strict_super_Func_0_0, _lh_strict_super_Func_1_0) -> 
              (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                (((_lh_listcomp_fun_para_3 _lh_listcomp_fun_3) _lh_strict_super_arg1_0) superpose_0)) in
                (_lh_listcomp_fun_3 ((zip_lz_nl_d3 (enumFrom_d0 0)) _lh_strict_super_Func_1_0)))
            | _ -> 
              (failwith "error")))
        and dominates_0 = (fun _lh_dominates_arg1_0 -> 
          ((quant_d4 all_d3) ((quant_d5 any_d2) (gtRewrite_d0 _lh_dominates_arg1_0))))
        and knuth_bendix1_0 = (fun _lh_knuth_bendix1_arg1_0 _lh_knuth_bendix1_arg2_0 -> 
          (((((process_0 _lh_knuth_bendix1_arg1_0) 1) (`LH_N)) empty_net_0) (((add_agenda_0 (snd_d0 _lh_knuth_bendix1_arg1_0)) _lh_knuth_bendix1_arg2_0) (`LH_N))))
        and mk_item_0 = (fun _lh_mk_item_arg1_0 _lh_mk_item_arg2_0 -> 
          (`Item((_lh_mk_item_arg1_0 _lh_mk_item_arg2_0), _lh_mk_item_arg2_0)))
        and sp_0 = (fun _lh_sp_arg1_0 _lh_funcomp_x_0 -> 
          (_lh_sp_arg1_0 ((dropWhile_d0 (fun x_3 -> 
            (x_3 = ' '))) _lh_funcomp_x_0)))
        and p_eqn_0 = (fun _lh_p_eqn_arg1_0 -> 
          (((seQ_0 q_eqn_0) (let rec h_7 = p_expr_0 in
            (let rec t_7 = (let rec h_8 = (look_for_0 '=') in
              (let rec t_8 = (let rec h_9 = p_expr_0 in
                (let rec t_9 = (fun f_7 i_3 -> 
                  i_3) in
                  (fun f_8 i_4 -> 
                    ((f_8 h_9) (((foldr_d1 f_8) i_4) t_9))))) in
                (fun f_9 i_5 -> 
                  ((f_9 h_8) (((foldr_d1 f_9) i_5) t_8))))) in
              (fun f_1_0 i_6 -> 
                ((f_1_0 h_7) (((foldr_d1 f_1_0) i_6) t_7)))))) _lh_p_eqn_arg1_0))
        and p_ident_0 = (fun _lh_p_ident_arg1_0 -> 
          ((sp_0 (string_of_0 alphanum_0)) _lh_p_ident_arg1_0))
        and process2_0 = (fun _lh_process2_arg1_1 _lh_process2_arg2_1 _lh_process2_arg3_0 _lh_process2_arg4_1 _lh_process2_arg5_1 _lh_process2_arg6_1 -> 
          (let rec _lh_matchIdent_8 = ((split_0 (reducible_0 (reduce1_d0 _lh_process2_arg6_1))) _lh_process2_arg3_0) in
            (((((((((((_lh_matchIdent_8 _lh_process2_arg1_1) _lh_process2_arg2_1) _lh_process2_arg4_1) _lh_process2_arg5_1) _lh_process2_arg6_1) add_agenda_0) add_eqn_0) all_crit_pairs_0) process_0) resolve_0) super_reduce_0)))
        and dnet_reduce_0 = (fun _lh_dnet_reduce_arg1_0 _lh_dnet_reduce_arg2_0 -> 
          ((try_all_d0 ((map_d1_d0 rewrite_d1) ((find_0 _lh_dnet_reduce_arg2_0) _lh_dnet_reduce_arg1_0))) _lh_dnet_reduce_arg2_0))
        and find'_0 = (fun _lh_find'_arg1_0 _lh_find'_arg2_0 -> 
          (match _lh_find'_arg2_0 with
            | `Return(_lh_find'_Return_0_0) -> 
              _lh_find'_Return_0_0
            | `Switch(_lh_find'_Switch_0_0, _lh_find'_Switch_1_0) -> 
              ((mappend_d2 (((find_assoc_0 (g_first_0 _lh_find'_arg1_0)) (g_rest_0 _lh_find'_arg1_0)) _lh_find'_Switch_0_0)) ((find'_0 (g_skip_0 _lh_find'_arg1_0)) _lh_find'_Switch_1_0))
            | _ -> 
              (failwith "error")))
        and multi_ext_0 = (fun _lh_multi_ext_arg1_0 _lh_multi_ext_arg2_0 -> 
          (match _lh_multi_ext_arg2_0 with
            | `LH_P2(_lh_multi_ext_LH_P2_0_0, _lh_multi_ext_LH_P2_1_0) -> 
              (match _lh_multi_ext_LH_P2_0_0 with
                | `Func(_lh_multi_ext_Func_0_0, _lh_multi_ext_Func_1_0) -> 
                  (match _lh_multi_ext_LH_P2_1_0 with
                    | `Func(_lh_multi_ext_Func_0_1, _lh_multi_ext_Func_1_1) -> 
                      ((multi_0 _lh_multi_ext_arg1_0) (let rec _lh_multi_LH_P2_0_0 = _lh_multi_ext_Func_1_0 in
                        (let rec _lh_multi_LH_P2_1_0 = _lh_multi_ext_Func_1_1 in
                          (fun _lh_multi_arg1_0 dominates_1 rem_eq_1 -> 
                            (let rec _lh_matchIdent_4 = ((rem_eq_1 (eqRewrite_d0 _lh_multi_arg1_0)) (`LH_P2(_lh_multi_LH_P2_0_0, _lh_multi_LH_P2_1_0))) in
                              (match _lh_matchIdent_4 with
                                | `LH_P2(_lh_multi_LH_P2_0_1, _lh_multi_LH_P2_1_1) -> 
                                  (if (((dominates_1 _lh_multi_arg1_0) _lh_multi_LH_P2_0_1) _lh_multi_LH_P2_1_1) then
                                    (`Greater)
                                  else
                                    (if (((dominates_1 _lh_multi_arg1_0) _lh_multi_LH_P2_1_1) _lh_multi_LH_P2_0_1) then
                                      (`Less)
                                    else
                                      (`Unrelated)))
                                | _ -> 
                                  (failwith "error")))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and seq2_0 = (fun _lh_seq2_arg1_0 _lh_seq2_arg2_0 _lh_seq2_arg3_0 -> 
          (let rec g_0 = (fun xs_1 -> 
            (let rec _lh_matchIdent_1 = xs_1 in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_seq2_LH_P2_0_0, _lh_seq2_LH_P2_1_0) -> 
                  ((lift_d2 ((cross_d0 (_lh_seq2_arg1_0 _lh_seq2_LH_P2_0_0)) (fun x_4 -> 
                    x_4))) (_lh_seq2_arg3_0 _lh_seq2_LH_P2_1_0))
                | _ -> 
                  (failwith "error")))) in
            (fun _lh_funcomp_x_1 -> 
              ((fun _lh_funcomp_x_2 -> 
                (squash_d0 ((lift_d3 g_0) _lh_funcomp_x_2))) (_lh_seq2_arg2_0 _lh_funcomp_x_1)))))
        and g_first_0 = (fun _lh_g_first_arg1_0 -> 
          (match _lh_g_first_arg1_0 with
            | `LH_C(_lh_g_first_LH_C_0_0, _lh_g_first_LH_C_1_0) -> 
              (match _lh_g_first_LH_C_0_0 with
                | `Func(_lh_g_first_Func_0_0, _lh_g_first_Func_1_0) -> 
                  (`Afunc(_lh_g_first_Func_0_0))
                | `Var(_lh_g_first_Var_0_0) -> 
                  (`Avar)
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and p_expr_0 = (fun _lh_p_expr_arg1_0 -> 
          (((orElseMap_d2 ((seQ_0 q_op_0) (let rec h_1_3 = p_term_0 in
            (let rec t_1_3 = (let rec h_1_4 = p_op_0 in
              (let rec t_1_4 = (let rec h_1_5 = p_term_0 in
                (let rec t_1_5 = (fun f_1_5 i_1_1 -> 
                  i_1_1) in
                  (fun f_1_6 i_1_2 -> 
                    ((f_1_6 h_1_5) (((foldr_d1 f_1_6) i_1_2) t_1_5))))) in
                (fun f_1_7 i_1_3 -> 
                  ((f_1_7 h_1_4) (((foldr_d1 f_1_7) i_1_3) t_1_4))))) in
              (fun f_1_8 i_1_4 -> 
                ((f_1_8 h_1_3) (((foldr_d1 f_1_8) i_1_4) t_1_3))))))) p_term_0) _lh_p_expr_arg1_0))
        and all_crit_pairs_0 = (fun _lh_all_crit_pairs_arg1_0 _lh_all_crit_pairs_arg2_0 -> 
          (let rec eqn'_0 = ((stand_eqn_d0 (`LH_C('1', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
            (let rec eqn''_0 = ((stand_eqn_d1 (`LH_C('2', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
              (let rec theory''_0 = ((map_d7 (stand_eqn_d2 (`LH_C('2', (`LH_N))))) _lh_all_crit_pairs_arg2_0) in
                ((mappend_d4 ((map_d8 ((mk_crit_0 eqn'_0) eqn''_0)) ((strict_super_0 (lhs_d5 eqn'_0)) (lhs_d6 eqn''_0)))) (concat_d0 ((map_d9 (crit_pairs_0 eqn'_0)) theory''_0)))))))
        and parse_0 = (fun _lh_parse_arg1_0 -> 
          ((fun _lh_funcomp_x_3 -> 
            ((fun _lh_funcomp_x_4 -> 
              ((fun _lh_funcomp_x_5 -> 
                (unExpr_0 (fst_d1 _lh_funcomp_x_5))) (the_d2 _lh_funcomp_x_4))) (p_expr_0 _lh_funcomp_x_3))) _lh_parse_arg1_0))
        and mk_cons_0 = (fun _lh_mk_cons_arg1_0 _lh_mk_cons_arg2_0 -> 
          (match _lh_mk_cons_arg2_0 with
            | `List(_lh_mk_cons_List_0_0) -> 
              (`List((`LH_C(_lh_mk_cons_arg1_0, _lh_mk_cons_List_0_0))))
            | _ -> 
              (failwith "error")))
        and string_of_0 = (fun _lh_string_of_arg1_0 _lh_string_of_arg2_0 -> 
          (let rec chars_0 = ((takeWhile_d0 _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
            (let rec s'_0 = ((dropWhile_d1 _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
              ((maybeX_d1 (chars_0 <> (`LH_N))) (`LH_P2((`MkString(chars_0)), s'_0))))))
        and preorder_0 = (fun _lh_preorder_arg1_0 -> 
          (if ((eqListExpr_d2 _lh_preorder_arg1_0) (`LH_N)) then
            (`LH_N)
          else
            ((mappend_d8 (let rec h_4 = (g_first_0 _lh_preorder_arg1_0) in
              (let rec t_4 = (fun ys_1 -> 
                ys_1) in
                (fun ys_2 -> 
                  (`LH_C(h_4, ((mappend_d8 t_4) ys_2))))))) (preorder_0 (g_rest_0 _lh_preorder_arg1_0)))))
        and alphanum_0 = (fun _lh_alphanum_arg1_0 -> 
          (((((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'A')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'Z'))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'a')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'z')))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char '0')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char '9')))))
        and preprocess_0 = (fun _lh_preprocess_arg1_0 _lh_preprocess_arg2_0 -> 
          (match _lh_preprocess_arg2_0 with
            | `LH_P2(_lh_preprocess_LH_P2_0_0, _lh_preprocess_LH_P2_1_0) -> 
              (let rec _lh_process1_LH_P2_0_0 = ((simplify_d0 (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_0_0) in
                (let rec _lh_process1_LH_P2_1_0 = ((simplify_d1 (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_1_0) in
                  (fun _lh_process1_arg1_1 _lh_process1_arg2_1 _lh_process1_arg3_1 _lh_process1_arg4_1 _lh_process1_arg5_1 add_agenda_2 process2_1 process_2 -> 
                    (let rec o_0 = ((fst_d0 _lh_process1_arg1_1) (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))) in
                      (let rec _lh_matchIdent_6 = o_0 in
                        (match _lh_matchIdent_6 with
                          | `Unrelated -> 
                            (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) (((add_agenda_2 (fun dum_0 -> 
                              1000)) (`LH_C((`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0)), (`LH_N)))) _lh_process1_arg5_1))
                          | `Equal -> 
                            (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1)
                          | _ -> 
                            (let rec eqn_0 = (let rec _lh_matchIdent_7 = o_0 in
                              (match _lh_matchIdent_7 with
                                | `Greater -> 
                                  (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))))
                                | `Less -> 
                                  (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_1_0, _lh_process1_LH_P2_0_0))))
                                | _ -> 
                                  (failwith "error"))) in
                              ((((((process2_1 _lh_process1_arg1_1) (_lh_process1_arg2_1 + 1)) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1) eqn_0))))))))
            | _ -> 
              (failwith "error")))
        and empty_net_0 = (`Return((`LH_N)))
        and process_0 = (fun _lh_process_arg1_0 _lh_process_arg2_0 _lh_process_arg3_0 _lh_process_arg4_0 _lh_process_arg5_0 -> 
          (match _lh_process_arg5_0 with
            | `LH_N -> 
              _lh_process_arg4_0
            | `LH_C(_lh_process_LH_C_0_0, _lh_process_LH_C_1_0) -> 
              (match _lh_process_LH_C_0_0 with
                | `Item(_lh_process_Item_0_0, _lh_process_Item_1_0) -> 
                  ((((((process1_0 _lh_process_arg1_0) _lh_process_arg2_0) _lh_process_arg3_0) _lh_process_arg4_0) _lh_process_LH_C_1_0) ((preprocess_0 _lh_process_arg4_0) _lh_process_Item_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        in (let rec group_completion_0 = ((knuth_bendix_0 ((rpo_0 (rank_order_0 rank_0)) lex_ext_0)) ((map_d1_d5 parse_eqn_0) (let rec h_2_0 = (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))) in
          (let rec t_2_0 = (let rec h_2_1 = (`LH_C('E', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('x', (`LH_N))))))))))))))))))) in
            (let rec t_2_1 = (let rec h_2_2 = (`LH_C('I', (`LH_C('(', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('E', (`LH_N))))))))))))))))))))))))) in
              (let rec t_2_2 = (fun f_2_4 -> 
                (`LH_N)) in
                (fun f_2_5 -> 
                  (`LH_C((f_2_5 h_2_2), ((map_d1_d5 f_2_5) t_2_2)))))) in
              (fun f_2_6 -> 
                (`LH_C((f_2_6 h_2_1), ((map_d1_d5 f_2_6) t_2_1)))))) in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_2_0), ((map_d1_d5 f_2_7) t_2_0)))))))) in
          ((eqExpr_d1 ((simplify_d4 (super_reduce_0 group_completion_0)) (parse_0 _lh_result_LH_P2_0_0))) (parse_0 _lh_result_LH_P2_1_0))))))))
and try_all_d0 _lh_try_all_arg1_0 =
  (((foldr_d1_d1 orElseMap_d4) (fun dum_6 -> 
    croak_d1_d0)) _lh_try_all_arg1_0)
and unify_d0 _lh_unify_arg1_0 _lh_unify_arg2_0 =
  ((unify'_d0 (`LH_N)) (let rec _lh_unify'_LH_P2_0_1 = _lh_unify_arg1_0 in
    (let rec _lh_unify'_LH_P2_1_1 = _lh_unify_arg2_0 in
      (fun _lh_unify'_arg1_2 -> 
        (match _lh_unify'_LH_P2_0_1 with
          | `Var(_lh_unify'_Var_0_2) -> 
            (((univar_d0 _lh_unify'_arg1_2) _lh_unify'_Var_0_2) _lh_unify'_LH_P2_1_1)
          | `Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2) -> 
            (match _lh_unify'_LH_P2_1_1 with
              | `Var(_lh_unify'_Var_0_3) -> 
                (((univar_d1 _lh_unify'_arg1_2) _lh_unify'_Var_0_3) (`Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2)))
              | `Func(_lh_unify'_Func_0_3, _lh_unify'_Func_1_3) -> 
                (if (_lh_unify'_Func_0_2 = _lh_unify'_Func_0_3) then
                  (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_2) ((zip_d2 _lh_unify'_Func_1_2) _lh_unify'_Func_1_3))
                else
                  croak_d1_d1)
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))))))
and univar_d0 _lh_univar_arg1_1 _lh_univar_arg2_1 _lh_univar_arg3_1 =
  (let rec t_1_2_7 = ((assoc_d7 _lh_univar_arg1_1) _lh_univar_arg2_1) in
    (if (exists_d4 t_1_2_7) then
      ((unify'_d0 _lh_univar_arg1_1) (let rec _lh_unify'_LH_P2_0_3 = (the_d4 t_1_2_7) in
        (let rec _lh_unify'_LH_P2_1_3 = _lh_univar_arg3_1 in
          (fun _lh_unify'_arg1_4 -> 
            (match _lh_unify'_LH_P2_0_3 with
              | `Var(_lh_unify'_Var_0_6) -> 
                (((univar_d0 _lh_unify'_arg1_4) _lh_unify'_Var_0_6) _lh_unify'_LH_P2_1_3)
              | `Func(_lh_unify'_Func_0_6, _lh_unify'_Func_1_6) -> 
                (match _lh_unify'_LH_P2_1_3 with
                  | `Var(_lh_unify'_Var_0_7) -> 
                    (((univar_d1 _lh_unify'_arg1_4) _lh_unify'_Var_0_7) (`Func(_lh_unify'_Func_0_6, _lh_unify'_Func_1_6)))
                  | `Func(_lh_unify'_Func_0_7, _lh_unify'_Func_1_7) -> 
                    (if (_lh_unify'_Func_0_6 = _lh_unify'_Func_0_7) then
                      (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_4) ((zip_d2 _lh_unify'_Func_1_6) _lh_unify'_Func_1_7))
                    else
                      croak_d1_d1)
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))))))
    else
      (if ((eqExpr_d5 _lh_univar_arg3_1) (`Var(_lh_univar_arg2_1))) then
        (succeed_d8 _lh_univar_arg1_1)
      else
        (let rec u'_1 = ((sub_d5 _lh_univar_arg3_1) _lh_univar_arg1_1) in
          (if (not ((occurs_d2 _lh_univar_arg2_1) u'_1)) then
            (succeed_d9 ((comp_sub_d0 (`LH_C((`LH_P2(_lh_univar_arg2_1, u'_1)), (`LH_N)))) _lh_univar_arg1_1))
          else
            croak_d1_d2)))))
and univar_d1 _lh_univar_arg1_0 _lh_univar_arg2_0 _lh_univar_arg3_0 =
  (let rec t_7_6 = ((assoc_d1_d0 _lh_univar_arg1_0) _lh_univar_arg2_0) in
    (if (exists_d5 t_7_6) then
      ((unify'_d0 _lh_univar_arg1_0) (let rec _lh_unify'_LH_P2_0_0 = (the_d5 t_7_6) in
        (let rec _lh_unify'_LH_P2_1_0 = _lh_univar_arg3_0 in
          (fun _lh_unify'_arg1_1 -> 
            (match _lh_unify'_LH_P2_0_0 with
              | `Var(_lh_unify'_Var_0_0) -> 
                (((univar_d0 _lh_unify'_arg1_1) _lh_unify'_Var_0_0) _lh_unify'_LH_P2_1_0)
              | `Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0) -> 
                (match _lh_unify'_LH_P2_1_0 with
                  | `Var(_lh_unify'_Var_0_1) -> 
                    (((univar_d1 _lh_unify'_arg1_1) _lh_unify'_Var_0_1) (`Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0)))
                  | `Func(_lh_unify'_Func_0_1, _lh_unify'_Func_1_1) -> 
                    (if (_lh_unify'_Func_0_0 = _lh_unify'_Func_0_1) then
                      (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_1) ((zip_d2 _lh_unify'_Func_1_0) _lh_unify'_Func_1_1))
                    else
                      croak_d1_d1)
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))))))
    else
      (if ((eqExpr_d6 _lh_univar_arg3_0) (`Var(_lh_univar_arg2_0))) then
        (succeed_d1_d0 _lh_univar_arg1_0)
      else
        (let rec u'_0 = ((sub_d7 _lh_univar_arg3_0) _lh_univar_arg1_0) in
          (if (not ((occurs_d3 _lh_univar_arg2_0) u'_0)) then
            (succeed_d1_d1 ((comp_sub_d1 (`LH_C((`LH_P2(_lh_univar_arg2_0, u'_0)), (`LH_N)))) _lh_univar_arg1_0))
          else
            croak_d1_d3)))))
and zip_d0 xs_1_7 ys_3_5 =
  (match xs_1_7 with
    | `LH_C(hx_5, tx_5) -> 
      (match ys_3_5 with
        | `LH_C(hy_6, ty_6) -> 
          (let rec _lh_prop_fold_LH_C_0_0 = (let rec _lh_match'_LH_P2_0_1 = hx_5 in
            (let rec _lh_match'_LH_P2_1_1 = hy_6 in
              (fun _lh_match'_arg1_2 -> 
                (match _lh_match'_LH_P2_0_1 with
                  | `Var(_lh_match'_Var_0_2) -> 
                    (let rec u_1 = ((assoc_d1 _lh_match'_arg1_2) _lh_match'_Var_0_2) in
                      (if (not (exists_d2 u_1)) then
                        (succeed_d0 (`LH_C((`LH_P2(_lh_match'_Var_0_2, _lh_match'_LH_P2_1_1)), _lh_match'_arg1_2)))
                      else
                        (if ((eqExpr_d3 (the_d0 u_1)) _lh_match'_LH_P2_1_1) then
                          (succeed_d1 _lh_match'_arg1_2)
                        else
                          croak_d4)))
                  | `Func(_lh_match'_Func_0_2, _lh_match'_Func_1_2) -> 
                    (match _lh_match'_LH_P2_1_1 with
                      | `Func(_lh_match'_Func_0_3, _lh_match'_Func_1_3) -> 
                        (if (_lh_match'_Func_0_2 = _lh_match'_Func_0_3) then
                          (((prop_fold_d0 match'_d0) _lh_match'_arg1_2) ((zip_d0 _lh_match'_Func_1_2) _lh_match'_Func_1_3))
                        else
                          croak_d5)
                      | `Var(_lh_match'_Var_0_3) -> 
                        croak_d6
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_prop_fold_LH_C_1_0 = ((zip_d0 tx_5) ty_6) in
              (fun _lh_prop_fold_arg2_3 _lh_prop_fold_arg1_3 -> 
                (((prop2_d0 (prop_fold_d0 _lh_prop_fold_arg1_3)) ((_lh_prop_fold_arg1_3 _lh_prop_fold_arg2_3) _lh_prop_fold_LH_C_0_0)) _lh_prop_fold_LH_C_1_0))))
        | `LH_N -> 
          (fun _lh_prop_fold_arg2_4 _lh_prop_fold_arg1_4 -> 
            (`Just(_lh_prop_fold_arg2_4))))
    | `LH_N -> 
      (fun _lh_prop_fold_arg2_5 _lh_prop_fold_arg1_5 -> 
        (`Just(_lh_prop_fold_arg2_5))))
and zip_d1 xs_2_3 ys_4_6 =
  (match xs_2_3 with
    | `LH_C(hx_6, tx_6) -> 
      (match ys_4_6 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (let rec _lh_prop_fold_LH_C_0_1 = (let rec _lh_match'_LH_P2_0_2 = hx_6 in
            (let rec _lh_match'_LH_P2_1_2 = hy_1_0 in
              (fun _lh_match'_arg1_3 -> 
                (match _lh_match'_LH_P2_0_2 with
                  | `Var(_lh_match'_Var_0_4) -> 
                    (let rec u_2 = ((assoc_d3 _lh_match'_arg1_3) _lh_match'_Var_0_4) in
                      (if (not (exists_d3 u_2)) then
                        (succeed_d2 (`LH_C((`LH_P2(_lh_match'_Var_0_4, _lh_match'_LH_P2_1_2)), _lh_match'_arg1_3)))
                      else
                        (if ((eqExpr_d4 (the_d1 u_2)) _lh_match'_LH_P2_1_2) then
                          (succeed_d3 _lh_match'_arg1_3)
                        else
                          croak_d7)))
                  | `Func(_lh_match'_Func_0_4, _lh_match'_Func_1_4) -> 
                    (match _lh_match'_LH_P2_1_2 with
                      | `Func(_lh_match'_Func_0_5, _lh_match'_Func_1_5) -> 
                        (if (_lh_match'_Func_0_4 = _lh_match'_Func_0_5) then
                          (((prop_fold_d1 match'_d1) _lh_match'_arg1_3) ((zip_d1 _lh_match'_Func_1_4) _lh_match'_Func_1_5))
                        else
                          croak_d8)
                      | `Var(_lh_match'_Var_0_5) -> 
                        croak_d9
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_prop_fold_LH_C_1_1 = ((zip_d1 tx_6) ty_1_0) in
              (fun _lh_prop_fold_arg2_6 _lh_prop_fold_arg1_6 -> 
                (((prop2_d1 (prop_fold_d1 _lh_prop_fold_arg1_6)) ((_lh_prop_fold_arg1_6 _lh_prop_fold_arg2_6) _lh_prop_fold_LH_C_0_1)) _lh_prop_fold_LH_C_1_1))))
        | `LH_N -> 
          (fun _lh_prop_fold_arg2_7 _lh_prop_fold_arg1_7 -> 
            (`Just(_lh_prop_fold_arg2_7))))
    | `LH_N -> 
      (fun _lh_prop_fold_arg2_8 _lh_prop_fold_arg1_8 -> 
        (`Just(_lh_prop_fold_arg2_8))))
and zip_d2 xs_3_0 ys_5_5 =
  (match xs_3_0 with
    | `LH_C(hx_7, tx_7) -> 
      (match ys_5_5 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (let rec _lh_prop_fold_LH_C_0_2 = (let rec _lh_unify'_LH_P2_0_2 = hx_7 in
            (let rec _lh_unify'_LH_P2_1_2 = hy_1_1 in
              (fun _lh_unify'_arg1_3 -> 
                (match _lh_unify'_LH_P2_0_2 with
                  | `Var(_lh_unify'_Var_0_4) -> 
                    (((univar_d0 _lh_unify'_arg1_3) _lh_unify'_Var_0_4) _lh_unify'_LH_P2_1_2)
                  | `Func(_lh_unify'_Func_0_4, _lh_unify'_Func_1_4) -> 
                    (match _lh_unify'_LH_P2_1_2 with
                      | `Var(_lh_unify'_Var_0_5) -> 
                        (((univar_d1 _lh_unify'_arg1_3) _lh_unify'_Var_0_5) (`Func(_lh_unify'_Func_0_4, _lh_unify'_Func_1_4)))
                      | `Func(_lh_unify'_Func_0_5, _lh_unify'_Func_1_5) -> 
                        (if (_lh_unify'_Func_0_4 = _lh_unify'_Func_0_5) then
                          (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_3) ((zip_d2 _lh_unify'_Func_1_4) _lh_unify'_Func_1_5))
                        else
                          croak_d1_d1)
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_prop_fold_LH_C_1_2 = ((zip_d2 tx_7) ty_1_1) in
              (fun _lh_prop_fold_arg2_9 _lh_prop_fold_arg1_9 -> 
                (((prop2_d2 (prop_fold_d2 _lh_prop_fold_arg1_9)) ((_lh_prop_fold_arg1_9 _lh_prop_fold_arg2_9) _lh_prop_fold_LH_C_0_2)) _lh_prop_fold_LH_C_1_2))))
        | `LH_N -> 
          (fun _lh_prop_fold_arg2_1_0 _lh_prop_fold_arg1_1_0 -> 
            (`Just(_lh_prop_fold_arg2_1_0))))
    | `LH_N -> 
      (fun _lh_prop_fold_arg2_1_1 _lh_prop_fold_arg1_1_1 -> 
        (`Just(_lh_prop_fold_arg2_1_1))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec all_d0 _lh_all_arg1_6 _lh_all_arg2_4 =
  (_lh_all_arg2_4 _lh_all_arg1_6);;
let rec all_d1 _lh_all_arg1_2 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_2 _lh_all_LH_C_0_1) then
        ((all_d1 _lh_all_arg1_2) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d2 _lh_all_arg1_4 _lh_all_arg2_2 =
  (match _lh_all_arg2_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_3, _lh_all_LH_C_1_3) -> 
      (if (_lh_all_arg1_4 _lh_all_LH_C_0_3) then
        ((all_d2 _lh_all_arg1_4) _lh_all_LH_C_1_3)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d3 _lh_all_arg1_7 _lh_all_arg2_5 =
  (match _lh_all_arg2_5 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_5, _lh_all_LH_C_1_5) -> 
      (if (_lh_all_arg1_7 _lh_all_LH_C_0_5) then
        ((all_d3 _lh_all_arg1_7) _lh_all_LH_C_1_5)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d4 _lh_all_arg1_3 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_2, _lh_all_LH_C_1_2) -> 
      (if (_lh_all_arg1_3 _lh_all_LH_C_0_2) then
        ((all_d4 _lh_all_arg1_3) _lh_all_LH_C_1_2)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec all_d5 _lh_all_arg1_5 _lh_all_arg2_3 =
  (match _lh_all_arg2_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_4, _lh_all_LH_C_1_4) -> 
      (if (_lh_all_arg1_5 _lh_all_LH_C_0_4) then
        ((all_d5 _lh_all_arg1_5) _lh_all_LH_C_1_4)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec any_d0 _lh_any_arg1_2 _lh_any_arg2_2 =
  (match _lh_any_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_2, _lh_any_LH_C_1_2) -> 
      (if (_lh_any_arg1_2 _lh_any_LH_C_0_2) then
        true
      else
        ((any_d0 _lh_any_arg1_2) _lh_any_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec any_d1 _lh_any_arg1_1 _lh_any_arg2_1 =
  (match _lh_any_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_1, _lh_any_LH_C_1_1) -> 
      (if (_lh_any_arg1_1 _lh_any_LH_C_0_1) then
        true
      else
        ((any_d1 _lh_any_arg1_1) _lh_any_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec any_d2 _lh_any_arg1_0 _lh_any_arg2_0 =
  (match _lh_any_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_0, _lh_any_LH_C_1_0) -> 
      (if (_lh_any_arg1_0 _lh_any_LH_C_0_0) then
        true
      else
        ((any_d2 _lh_any_arg1_0) _lh_any_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec any_d3 _lh_any_arg1_3 _lh_any_arg2_3 =
  (match _lh_any_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_3, _lh_any_LH_C_1_3) -> 
      (if (_lh_any_arg1_3 _lh_any_LH_C_0_3) then
        true
      else
        ((any_d3 _lh_any_arg1_3) _lh_any_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec any_d4 _lh_any_arg1_4 _lh_any_arg2_4 =
  (match _lh_any_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_any_LH_C_0_4, _lh_any_LH_C_1_4) -> 
      (if (_lh_any_arg1_4 _lh_any_LH_C_0_4) then
        true
      else
        ((any_d4 _lh_any_arg1_4) _lh_any_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec atIndex_d0 n_1 ls_4_1 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_4_1 with
      | `LH_C(h_7_9, t_8_4) -> 
        (if (n_1 = 0) then
          h_7_9
        else
          ((atIndex_d0 (n_1 - 1)) t_8_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_d1 n_0 ls_1_8 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match ls_1_8 with
      | `LH_C(h_4_3, t_4_4) -> 
        (if (n_0 = 0) then
          h_4_3
        else
          ((atIndex_d1 (n_0 - 1)) t_4_4))
      | `LH_N -> 
        (failwith "error")));;
let rec atIndex_d2 n_2 ls_5_9 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_5_9 with
      | `LH_C(h_1_0_2, t_1_0_7) -> 
        (if (n_2 = 0) then
          h_1_0_2
        else
          ((atIndex_d2 (n_2 - 1)) t_1_0_7))
      | `LH_N -> 
        (failwith "error")));;
let rec concat_d0 lss_2 =
  (lss_2 99);;
let rec concat_d1 lss_1 =
  (lss_1 99);;
let rec concat_d2 lss_0 =
  (lss_0 99);;
let rec croak_d0 _lh_lift_arg1_2_1 _lh_getOrElse_arg2_2_8 =
  _lh_getOrElse_arg2_2_8;;
let rec croak_d1 =
  (`Nothing);;
let rec croak_d1_d0 =
  (`Nothing);;
let rec croak_d1_d1 =
  (`Nothing);;
let rec croak_d1_d2 =
  (`Nothing);;
let rec croak_d1_d3 =
  (`Nothing);;
let rec croak_d2 =
  (`Nothing);;
let rec croak_d3 =
  (`Nothing);;
let rec croak_d4 =
  (`Nothing);;
let rec croak_d5 =
  (`Nothing);;
let rec croak_d6 =
  (`Nothing);;
let rec croak_d7 =
  (`Nothing);;
let rec croak_d8 =
  (`Nothing);;
let rec croak_d9 =
  (`Nothing);;
let rec cross_d0 _lh_cross_arg1_3 _lh_cross_arg2_3 _lh_cross_arg3_3 =
  (match _lh_cross_arg3_3 with
    | `LH_P2(_lh_cross_LH_P2_0_3, _lh_cross_LH_P2_1_3) -> 
      (`LH_P2((_lh_cross_arg1_3 _lh_cross_LH_P2_0_3), (_lh_cross_arg2_3 _lh_cross_LH_P2_1_3)))
    | _ -> 
      (failwith "error"));;
let rec cross_d1 _lh_cross_arg1_2 _lh_cross_arg2_2 _lh_cross_arg3_2 =
  (match _lh_cross_arg3_2 with
    | `LH_P2(_lh_cross_LH_P2_0_2, _lh_cross_LH_P2_1_2) -> 
      (`LH_P2((_lh_cross_arg1_2 _lh_cross_LH_P2_0_2), (_lh_cross_arg2_2 _lh_cross_LH_P2_1_2)))
    | _ -> 
      (failwith "error"));;
let rec cross_d2 _lh_cross_arg1_0 _lh_cross_arg2_0 _lh_cross_arg3_0 =
  (match _lh_cross_arg3_0 with
    | `LH_P2(_lh_cross_LH_P2_0_0, _lh_cross_LH_P2_1_0) -> 
      (`LH_P2((_lh_cross_arg1_0 _lh_cross_LH_P2_0_0), (_lh_cross_arg2_0 _lh_cross_LH_P2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec cross_d3 _lh_cross_arg1_1 _lh_cross_arg2_1 _lh_cross_arg3_1 =
  (match _lh_cross_arg3_1 with
    | `LH_P2(_lh_cross_LH_P2_0_1, _lh_cross_LH_P2_1_1) -> 
      (`LH_P2((_lh_cross_arg1_1 _lh_cross_LH_P2_0_1), (_lh_cross_arg2_1 _lh_cross_LH_P2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile_d0 _lh_dropWhile_arg1_0 _lh_dropWhile_arg2_0 =
  (match _lh_dropWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0) -> 
      (if (_lh_dropWhile_arg1_0 _lh_dropWhile_LH_C_0_0) then
        ((dropWhile_d0 _lh_dropWhile_arg1_0) _lh_dropWhile_LH_C_1_0)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_0, _lh_dropWhile_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec dropWhile_d1 _lh_dropWhile_arg1_1 _lh_dropWhile_arg2_1 =
  (match _lh_dropWhile_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1) -> 
      (if (_lh_dropWhile_arg1_1 _lh_dropWhile_LH_C_0_1) then
        ((dropWhile_d1 _lh_dropWhile_arg1_1) _lh_dropWhile_LH_C_1_1)
      else
        (`LH_C(_lh_dropWhile_LH_C_0_1, _lh_dropWhile_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec eqRewrite_d0 _lh_eqRewrite_arg1_0 _lh_eqRewrite_arg2_0 _lh_eqRewrite_arg3_0 =
  ((_lh_eqRewrite_arg1_0 (`LH_P2(_lh_eqRewrite_arg2_0, _lh_eqRewrite_arg3_0))) = (`Equal));;
let rec eqno_d0 _lh_eqno_arg1_1 =
  (match _lh_eqno_arg1_1 with
    | `Eqn(_lh_eqno_Eqn_0_1, _lh_eqno_Eqn_1_1) -> 
      (match _lh_eqno_Eqn_1_1 with
        | `LH_P2(_lh_eqno_LH_P2_0_1, _lh_eqno_LH_P2_1_1) -> 
          _lh_eqno_Eqn_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqno_d1 _lh_eqno_arg1_0 =
  (match _lh_eqno_arg1_0 with
    | `Eqn(_lh_eqno_Eqn_0_0, _lh_eqno_Eqn_1_0) -> 
      (match _lh_eqno_Eqn_1_0 with
        | `LH_P2(_lh_eqno_LH_P2_0_0, _lh_eqno_LH_P2_1_0) -> 
          _lh_eqno_Eqn_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqpr_d0 _lh_eqpr_arg1_0 =
  (match _lh_eqpr_arg1_0 with
    | `Eqn(_lh_eqpr_Eqn_0_0, _lh_eqpr_Eqn_1_0) -> 
      _lh_eqpr_Eqn_1_0
    | _ -> 
      (failwith "error"));;
let rec exists_d0 _lh_exists_arg1_3 =
  (match _lh_exists_arg1_3 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d1 _lh_exists_arg1_1 =
  (match _lh_exists_arg1_1 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d2 _lh_exists_arg1_4 =
  (match _lh_exists_arg1_4 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d3 _lh_exists_arg1_0 =
  (match _lh_exists_arg1_0 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d4 _lh_exists_arg1_2 =
  (match _lh_exists_arg1_2 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec exists_d5 _lh_exists_arg1_5 =
  (match _lh_exists_arg1_5 with
    | `Nothing -> 
      false
    | _ -> 
      true);;
let rec filter_d0 f_8_9 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_8_2, t_8_7) -> 
      (if (f_8_9 h_8_2) then
        (`LH_C(h_8_2, ((filter_d0 f_8_9) t_8_7)))
      else
        ((filter_d0 f_8_9) t_8_7))
    | `LH_N -> 
      (`LH_N));;
let rec foldl_d0 f_8_8 i_4_8 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_8_1, t_8_6) -> 
      (((foldl_d0 f_8_8) ((f_8_8 i_4_8) h_8_1)) t_8_6)
    | `LH_N -> 
      i_4_8);;
let rec foldr_d0 f_9_6 i_5_2 ls_4_9 =
  ((ls_4_9 f_9_6) i_5_2);;
let rec foldr_d1 f_4_3 i_2_9 ls_1_4 =
  ((ls_1_4 f_4_3) i_2_9);;
let rec foldr_d1_d0 f_7_7 i_4_2 ls_3_7 =
  ((ls_3_7 f_7_7) i_4_2);;
let rec foldr_d1_d1 f_7_8 i_4_3 ls_3_8 =
  ((ls_3_8 f_7_8) i_4_3);;
let rec foldr_d1_d2 f_7_3 i_4_1 ls_3_5 =
  ((ls_3_5 f_7_3) i_4_1);;
let rec foldr_d1_d3 f_3_6 i_2_5 ls_9 =
  ((ls_9 f_3_6) i_2_5);;
let rec foldr_d1_d4 f_3_4 i_2_4 ls_7 =
  ((ls_7 f_3_4) i_2_4);;
let rec foldr_d1_d5 f_5_3 i_3_2 ls_2_1 =
  ((ls_2_1 f_5_3) i_3_2);;
let rec foldr_d1_d6 f_1 i_0 ls_2 =
  ((ls_2 f_1) i_0);;
let rec foldr_d1_d7 f_1_3_0 i_6_4 ls_6_8 =
  ((ls_6_8 f_1_3_0) i_6_4);;
let rec foldr_d2 f_1_0_9 i_5_7 ls_5_6 =
  ((ls_5_6 f_1_0_9) i_5_7);;
let rec foldr_d3 f_1_2_6 i_6_3 ls_6_5 =
  ((ls_6_5 f_1_2_6) i_6_3);;
let rec foldr_d4 f_1_3_5 i_6_7 ls_7_1 =
  ((ls_7_1 f_1_3_5) i_6_7);;
let rec foldr_d5 f_6_8 i_3_8 ls_3_2 =
  ((ls_3_2 f_6_8) i_3_8);;
let rec foldr_d6 f_3_7 i_2_6 ls_1_0 =
  ((ls_1_0 f_3_7) i_2_6);;
let rec foldr_d7 f_1_2_2 i_6_0 ls_6_3 =
  ((ls_6_3 f_1_2_2) i_6_0);;
let rec foldr_d8 f_9_2 i_4_9 ls_4_7 =
  ((ls_4_7 f_9_2) i_4_9);;
let rec foldr_d9 f_6_5 i_3_7 ls_2_9 =
  ((ls_2_9 f_6_5) i_3_7);;
let rec fst_d0 _lh_fst_arg1_2 =
  (match _lh_fst_arg1_2 with
    | `LH_P2(_lh_fst_LH_P2_0_2, _lh_fst_LH_P2_1_2) -> 
      _lh_fst_LH_P2_0_2
    | _ -> 
      (failwith "error"));;
let rec fst_d1 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec fst_d2 _lh_fst_arg1_3 =
  (match _lh_fst_arg1_3 with
    | `LH_P2(_lh_fst_LH_P2_0_3, _lh_fst_LH_P2_1_3) -> 
      _lh_fst_LH_P2_0_3
    | _ -> 
      (failwith "error"));;
let rec fst_d3 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d0 _lh_getOrElse_arg1_8 _lh_getOrElse_arg2_2_1 =
  (_lh_getOrElse_arg1_8 _lh_getOrElse_arg2_2_1);;
let rec getOrElse_d1 _lh_getOrElse_arg1_1_5 _lh_getOrElse_arg2_3_3 =
  (_lh_getOrElse_arg1_1_5 _lh_getOrElse_arg2_3_3);;
let rec getOrElse_d1_d0 _lh_getOrElse_arg1_1_2 _lh_getOrElse_arg2_2_5 =
  (_lh_getOrElse_arg1_1_2 _lh_getOrElse_arg2_2_5);;
let rec getOrElse_d1_d1 _lh_getOrElse_arg1_1_6 _lh_getOrElse_arg2_3_4 =
  (match _lh_getOrElse_arg1_1_6 with
    | `Just(_lh_getOrElse_Just_0_1_6) -> 
      _lh_getOrElse_Just_0_1_6
    | `Nothing -> 
      _lh_getOrElse_arg2_3_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d2 _lh_getOrElse_arg1_2 _lh_getOrElse_arg2_4 =
  (match _lh_getOrElse_arg1_2 with
    | `Just(_lh_getOrElse_Just_0_2) -> 
      _lh_getOrElse_Just_0_2
    | `Nothing -> 
      _lh_getOrElse_arg2_4
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d3 _lh_getOrElse_arg1_3 _lh_getOrElse_arg2_5 =
  (match _lh_getOrElse_arg1_3 with
    | `Just(_lh_getOrElse_Just_0_3) -> 
      _lh_getOrElse_Just_0_3
    | `Nothing -> 
      _lh_getOrElse_arg2_5
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d4 _lh_getOrElse_arg1_6 _lh_getOrElse_arg2_1_9 =
  (match _lh_getOrElse_arg1_6 with
    | `Just(_lh_getOrElse_Just_0_1_1) -> 
      _lh_getOrElse_Just_0_1_1
    | `Nothing -> 
      _lh_getOrElse_arg2_1_9
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d5 _lh_getOrElse_arg1_7 _lh_getOrElse_arg2_2_0 =
  (match _lh_getOrElse_arg1_7 with
    | `Just(_lh_getOrElse_Just_0_1_2) -> 
      _lh_getOrElse_Just_0_1_2
    | `Nothing -> 
      _lh_getOrElse_arg2_2_0
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d1_d6 _lh_getOrElse_arg1_9 _lh_getOrElse_arg2_2_2 =
  (match _lh_getOrElse_arg1_9 with
    | `Just(_lh_getOrElse_Just_0_1_3) -> 
      _lh_getOrElse_Just_0_1_3
    | `Nothing -> 
      _lh_getOrElse_arg2_2_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d2 _lh_getOrElse_arg1_0 _lh_getOrElse_arg2_2 =
  (match _lh_getOrElse_arg1_0 with
    | `Just(_lh_getOrElse_Just_0_1) -> 
      _lh_getOrElse_Just_0_1
    | `Nothing -> 
      _lh_getOrElse_arg2_2
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d3 _lh_getOrElse_arg1_5 _lh_getOrElse_arg2_1_8 =
  (match _lh_getOrElse_arg1_5 with
    | `Just(_lh_getOrElse_Just_0_1_0) -> 
      _lh_getOrElse_Just_0_1_0
    | `Nothing -> 
      _lh_getOrElse_arg2_1_8
    | _ -> 
      (failwith "error"));;
let rec getOrElse_d4 _lh_getOrElse_arg1_1_4 _lh_getOrElse_arg2_2_7 =
  (_lh_getOrElse_arg1_1_4 _lh_getOrElse_arg2_2_7);;
let rec getOrElse_d5 _lh_getOrElse_arg1_1_0 _lh_getOrElse_arg2_2_3 =
  (_lh_getOrElse_arg1_1_0 _lh_getOrElse_arg2_2_3);;
let rec getOrElse_d6 _lh_getOrElse_arg1_1_1 _lh_getOrElse_arg2_2_4 =
  (_lh_getOrElse_arg1_1_1 _lh_getOrElse_arg2_2_4);;
let rec getOrElse_d7 _lh_getOrElse_arg1_4 _lh_getOrElse_arg2_1_1 =
  (_lh_getOrElse_arg1_4 _lh_getOrElse_arg2_1_1);;
let rec getOrElse_d8 _lh_getOrElse_arg1_1_3 _lh_getOrElse_arg2_2_6 =
  (_lh_getOrElse_arg1_1_3 _lh_getOrElse_arg2_2_6);;
let rec getOrElse_d9 _lh_getOrElse_arg1_1 _lh_getOrElse_arg2_3 =
  (_lh_getOrElse_arg1_1 _lh_getOrElse_arg2_3);;
let rec gtRewrite_d0 _lh_gtRewrite_arg1_0 _lh_gtRewrite_arg2_0 _lh_gtRewrite_arg3_0 =
  ((_lh_gtRewrite_arg1_0 (`LH_P2(_lh_gtRewrite_arg2_0, _lh_gtRewrite_arg3_0))) = (`Greater));;
let rec inList_d0 _lh_inList_arg1_2_3 _lh_inList_arg2_5 =
  (_lh_inList_arg2_5 _lh_inList_arg1_2_3);;
let rec inList_d1 _lh_inList_arg1_1_2 _lh_inList_arg2_0 =
  (_lh_inList_arg2_0 _lh_inList_arg1_1_2);;
let rec inList_d2 _lh_inList_arg1_1_4 _lh_inList_arg2_2 =
  (_lh_inList_arg2_2 _lh_inList_arg1_1_4);;
let rec inList_d3 _lh_inList_arg1_1_9 _lh_inList_arg2_4 =
  (_lh_inList_arg2_4 _lh_inList_arg1_1_9);;
let rec inList_d4 _lh_inList_arg1_1_5 _lh_inList_arg2_3 =
  (_lh_inList_arg2_3 _lh_inList_arg1_1_5);;
let rec inList_d5 _lh_inList_arg1_1_3 _lh_inList_arg2_1 =
  (_lh_inList_arg2_1 _lh_inList_arg1_1_3);;
let rec lhs_d0 _lh_lhs_arg1_4 =
  (match _lh_lhs_arg1_4 with
    | `Eqn(_lh_lhs_Eqn_0_4, _lh_lhs_Eqn_1_4) -> 
      (match _lh_lhs_Eqn_1_4 with
        | `LH_P2(_lh_lhs_LH_P2_0_4, _lh_lhs_LH_P2_1_4) -> 
          _lh_lhs_LH_P2_0_4
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d1 _lh_lhs_arg1_1 =
  (match _lh_lhs_arg1_1 with
    | `Eqn(_lh_lhs_Eqn_0_1, _lh_lhs_Eqn_1_1) -> 
      (match _lh_lhs_Eqn_1_1 with
        | `LH_P2(_lh_lhs_LH_P2_0_1, _lh_lhs_LH_P2_1_1) -> 
          _lh_lhs_LH_P2_0_1
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d2 _lh_lhs_arg1_2 =
  (match _lh_lhs_arg1_2 with
    | `Eqn(_lh_lhs_Eqn_0_2, _lh_lhs_Eqn_1_2) -> 
      (match _lh_lhs_Eqn_1_2 with
        | `LH_P2(_lh_lhs_LH_P2_0_2, _lh_lhs_LH_P2_1_2) -> 
          _lh_lhs_LH_P2_0_2
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d3 _lh_lhs_arg1_0 =
  (match _lh_lhs_arg1_0 with
    | `Eqn(_lh_lhs_Eqn_0_0, _lh_lhs_Eqn_1_0) -> 
      (match _lh_lhs_Eqn_1_0 with
        | `LH_P2(_lh_lhs_LH_P2_0_0, _lh_lhs_LH_P2_1_0) -> 
          _lh_lhs_LH_P2_0_0
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d4 _lh_lhs_arg1_6 =
  (match _lh_lhs_arg1_6 with
    | `Eqn(_lh_lhs_Eqn_0_6, _lh_lhs_Eqn_1_6) -> 
      (match _lh_lhs_Eqn_1_6 with
        | `LH_P2(_lh_lhs_LH_P2_0_6, _lh_lhs_LH_P2_1_6) -> 
          _lh_lhs_LH_P2_0_6
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d5 _lh_lhs_arg1_3 =
  (match _lh_lhs_arg1_3 with
    | `Eqn(_lh_lhs_Eqn_0_3, _lh_lhs_Eqn_1_3) -> 
      (match _lh_lhs_Eqn_1_3 with
        | `LH_P2(_lh_lhs_LH_P2_0_3, _lh_lhs_LH_P2_1_3) -> 
          _lh_lhs_LH_P2_0_3
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lhs_d6 _lh_lhs_arg1_5 =
  (match _lh_lhs_arg1_5 with
    | `Eqn(_lh_lhs_Eqn_0_5, _lh_lhs_Eqn_1_5) -> 
      (match _lh_lhs_Eqn_1_5 with
        | `LH_P2(_lh_lhs_LH_P2_0_5, _lh_lhs_LH_P2_1_5) -> 
          _lh_lhs_LH_P2_0_5
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lift_d0 _lh_lift_arg1_1_3 _lh_lift_arg2_1_0 =
  (match _lh_lift_arg2_1_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_0) -> 
      (`Just((_lh_lift_arg1_1_3 _lh_lift_Just_0_1_0)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1 _lh_lift_arg1_6 _lh_lift_arg2_5 =
  (match _lh_lift_arg2_5 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_7 -> 
        _lh_getOrElse_arg2_7)
    | `Just(_lh_lift_Just_0_4) -> 
      (let rec _lh_getOrElse_Just_0_5 = (_lh_lift_arg1_6 _lh_lift_Just_0_4) in
        (fun _lh_getOrElse_arg2_8 -> 
          _lh_getOrElse_Just_0_5))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d0 _lh_lift_arg1_1_6 _lh_lift_arg2_1_3 =
  (_lh_lift_arg2_1_3 _lh_lift_arg1_1_6);;
let rec lift_d1_d1 _lh_lift_arg1_1_8 _lh_lift_arg2_1_5 =
  (match _lh_lift_arg2_1_5 with
    | `Nothing -> 
      (fun _lh_lift_arg1_1_9 -> 
        (`Nothing))
    | `Just(_lh_lift_Just_0_1_4) -> 
      (let rec _lh_lift_Just_0_1_5 = (_lh_lift_arg1_1_8 _lh_lift_Just_0_1_4) in
        (fun _lh_lift_arg1_2_0 -> 
          (`Just((_lh_lift_arg1_2_0 _lh_lift_Just_0_1_5)))))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d2 _lh_lift_arg1_1_7 _lh_lift_arg2_1_4 =
  (match _lh_lift_arg2_1_4 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_3) -> 
      (`Just((_lh_lift_arg1_1_7 _lh_lift_Just_0_1_3)))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d3 _lh_lift_arg1_4 _lh_lift_arg2_4 =
  (_lh_lift_arg2_4 _lh_lift_arg1_4);;
let rec lift_d1_d4 _lh_lift_arg1_3 _lh_lift_arg2_3 =
  (_lh_lift_arg2_3 _lh_lift_arg1_3);;
let rec lift_d1_d5 _lh_lift_arg1_1_1 _lh_lift_arg2_8 =
  (match _lh_lift_arg2_8 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1_2 -> 
        _lh_getOrElse_arg2_1_2)
    | `Just(_lh_lift_Just_0_8) -> 
      (let rec _lh_getOrElse_Just_0_7 = (_lh_lift_arg1_1_1 _lh_lift_Just_0_8) in
        (fun _lh_getOrElse_arg2_1_3 -> 
          _lh_getOrElse_Just_0_7))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d6 _lh_lift_arg1_1_2 _lh_lift_arg2_9 =
  (match _lh_lift_arg2_9 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1_4 -> 
        _lh_getOrElse_arg2_1_4)
    | `Just(_lh_lift_Just_0_9) -> 
      (let rec _lh_getOrElse_Just_0_8 = (_lh_lift_arg1_1_2 _lh_lift_Just_0_9) in
        (fun _lh_getOrElse_arg2_1_5 -> 
          _lh_getOrElse_Just_0_8))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d7 _lh_lift_arg1_2_3 _lh_lift_arg2_1_7 =
  (match _lh_lift_arg2_1_7 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_3_1 -> 
        _lh_getOrElse_arg2_3_1)
    | `Just(_lh_lift_Just_0_1_7) -> 
      (let rec _lh_getOrElse_Just_0_1_5 = (_lh_lift_arg1_2_3 _lh_lift_Just_0_1_7) in
        (fun _lh_getOrElse_arg2_3_2 -> 
          _lh_getOrElse_Just_0_1_5))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d8 _lh_lift_arg1_0 _lh_lift_arg2_0 =
  (match _lh_lift_arg2_0 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_0 -> 
        _lh_getOrElse_arg2_0)
    | `Just(_lh_lift_Just_0_0) -> 
      (let rec _lh_getOrElse_Just_0_0 = (_lh_lift_arg1_0 _lh_lift_Just_0_0) in
        (fun _lh_getOrElse_arg2_1 -> 
          _lh_getOrElse_Just_0_0))
    | _ -> 
      (failwith "error"));;
let rec lift_d1_d9 _lh_lift_arg1_2_2 _lh_lift_arg2_1_6 =
  (match _lh_lift_arg2_1_6 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_2_9 -> 
        _lh_getOrElse_arg2_2_9)
    | `Just(_lh_lift_Just_0_1_6) -> 
      (let rec _lh_getOrElse_Just_0_1_4 = (_lh_lift_arg1_2_2 _lh_lift_Just_0_1_6) in
        (fun _lh_getOrElse_arg2_3_0 -> 
          _lh_getOrElse_Just_0_1_4))
    | _ -> 
      (failwith "error"));;
let rec lift_d2 _lh_lift_arg1_1 _lh_lift_arg2_1 =
  (match _lh_lift_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1) -> 
      (`Just((_lh_lift_arg1_1 _lh_lift_Just_0_1)))
    | _ -> 
      (failwith "error"));;
let rec lift_d3 _lh_lift_arg1_2_4 _lh_lift_arg2_1_8 =
  (match _lh_lift_arg2_1_8 with
    | `Nothing -> 
      (fun _lh_dummy_1_8 -> 
        (`Nothing))
    | `Just(_lh_lift_Just_0_1_8) -> 
      (let rec _lh_squash_Just_0_1 = (_lh_lift_arg1_2_4 _lh_lift_Just_0_1_8) in
        (fun _lh_dummy_1_9 -> 
          _lh_squash_Just_0_1))
    | _ -> 
      (failwith "error"));;
let rec lift_d4 _lh_lift_arg1_1_5 _lh_lift_arg2_1_2 =
  (match _lh_lift_arg2_1_2 with
    | `Nothing -> 
      (fun _lh_getOrElse_arg2_1_6 -> 
        _lh_getOrElse_arg2_1_6)
    | `Just(_lh_lift_Just_0_1_2) -> 
      (let rec _lh_getOrElse_Just_0_9 = (_lh_lift_arg1_1_5 _lh_lift_Just_0_1_2) in
        (fun _lh_getOrElse_arg2_1_7 -> 
          _lh_getOrElse_Just_0_9))
    | _ -> 
      (failwith "error"));;
let rec lift_d5 _lh_lift_arg1_7 _lh_lift_arg2_6 =
  (match _lh_lift_arg2_6 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_5) -> 
      (`Just((_lh_lift_arg1_7 _lh_lift_Just_0_5)))
    | _ -> 
      (failwith "error"));;
let rec lift_d6 _lh_lift_arg1_1_4 _lh_lift_arg2_1_1 =
  (match _lh_lift_arg2_1_1 with
    | `Nothing -> 
      (fun _lh_dummy_6 -> 
        (`Nothing))
    | `Just(_lh_lift_Just_0_1_1) -> 
      (let rec _lh_squash_Just_0_0 = (_lh_lift_arg1_1_4 _lh_lift_Just_0_1_1) in
        (fun _lh_dummy_7 -> 
          _lh_squash_Just_0_0))
    | _ -> 
      (failwith "error"));;
let rec lift_d7 _lh_lift_arg1_8 _lh_lift_arg2_7 =
  (match _lh_lift_arg2_7 with
    | `Nothing -> 
      (fun _lh_lift_arg1_9 _lh_getOrElse_arg2_9 -> 
        _lh_getOrElse_arg2_9)
    | `Just(_lh_lift_Just_0_6) -> 
      (let rec _lh_lift_Just_0_7 = (_lh_lift_arg1_8 _lh_lift_Just_0_6) in
        (fun _lh_lift_arg1_1_0 -> 
          (let rec _lh_getOrElse_Just_0_6 = (_lh_lift_arg1_1_0 _lh_lift_Just_0_7) in
            (fun _lh_getOrElse_arg2_1_0 -> 
              _lh_getOrElse_Just_0_6))))
    | _ -> 
      (failwith "error"));;
let rec lift_d8 _lh_lift_arg1_2_5 _lh_lift_arg2_1_9 =
  (match _lh_lift_arg2_1_9 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_1_9) -> 
      (`Just((_lh_lift_arg1_2_5 _lh_lift_Just_0_1_9)))
    | _ -> 
      (failwith "error"));;
let rec lift_d9 _lh_lift_arg1_2 _lh_lift_arg2_2 =
  (match _lh_lift_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_lift_Just_0_2) -> 
      (`Just((_lh_lift_arg1_2 _lh_lift_Just_0_2)))
    | _ -> 
      (failwith "error"));;
let rec ltRewrite_d0 _lh_ltRewrite_arg1_1 _lh_ltRewrite_arg2_1 _lh_ltRewrite_arg3_1 =
  ((_lh_ltRewrite_arg1_1 (`LH_P2(_lh_ltRewrite_arg2_1, _lh_ltRewrite_arg3_1))) = (`Less));;
let rec ltRewrite_d1 _lh_ltRewrite_arg1_0 _lh_ltRewrite_arg2_0 _lh_ltRewrite_arg3_0 =
  ((_lh_ltRewrite_arg1_0 (`LH_P2(_lh_ltRewrite_arg2_0, _lh_ltRewrite_arg3_0))) = (`Less));;
let rec ltRewrite_d2 _lh_ltRewrite_arg1_2 _lh_ltRewrite_arg2_2 _lh_ltRewrite_arg3_2 =
  ((_lh_ltRewrite_arg1_2 (`LH_P2(_lh_ltRewrite_arg2_2, _lh_ltRewrite_arg3_2))) = (`Less));;
let rec ltRewrite_d3 _lh_ltRewrite_arg1_3 _lh_ltRewrite_arg2_3 _lh_ltRewrite_arg3_3 =
  ((_lh_ltRewrite_arg1_3 (`LH_P2(_lh_ltRewrite_arg2_3, _lh_ltRewrite_arg3_3))) = (`Less));;
let rec mappend_d0 xs_2_9 ys_5_4 =
  (xs_2_9 ys_5_4);;
let rec mappend_d1 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec mappend_d1_d0 xs_1_3 ys_2_2 =
  (xs_1_3 ys_2_2);;
let rec mappend_d1_d1 xs_2_1 ys_4_4 =
  (xs_2_1 ys_4_4);;
let rec mappend_d1_d2 xs_1_5 ys_3_1 =
  (match xs_1_5 with
    | `LH_C(h_7_0, t_7_4) -> 
      (`LH_C(h_7_0, ((mappend_d1_d2 t_7_4) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend_d1_d3 xs_1_4 ys_2_5 =
  (match xs_1_4 with
    | `LH_C(h_6_0, t_6_4) -> 
      (`LH_C(h_6_0, ((mappend_d1_d3 t_6_4) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend_d1_d4 xs_1_2 ys_2_1 =
  (match xs_1_2 with
    | `LH_C(h_5_6, t_5_9) -> 
      (`LH_C(h_5_6, ((mappend_d1_d4 t_5_9) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_d1_d5 xs_2_4 ys_4_7 =
  (match xs_2_4 with
    | `LH_C(h_9_6, t_1_0_1) -> 
      (`LH_C(h_9_6, ((mappend_d1_d5 t_1_0_1) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend_d1_d6 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C(h_2_8, ((mappend_d1_d6 t_2_8) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_d1_d7 xs_2_8 ys_5_3 =
  (match xs_2_8 with
    | `LH_C(h_1_0_5, t_1_1_1) -> 
      (`LH_C(h_1_0_5, ((mappend_d1_d7 t_1_1_1) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mappend_d1_d8 xs_7 ys_9 =
  (xs_7 ys_9);;
let rec mappend_d1_d9 xs_2_7 ys_5_0 =
  (xs_2_7 ys_5_0);;
let rec mappend_d2 xs_1_1 ys_2_0 =
  (match xs_1_1 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend_d2 t_5_4) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_d2_d0 xs_1_0 ys_1_9 =
  (xs_1_0 ys_1_9);;
let rec mappend_d3 xs_8 ys_1_0 =
  (xs_8 ys_1_0);;
let rec mappend_d4 xs_2_5 ys_4_8 =
  (xs_2_5 ys_4_8);;
let rec mappend_d5 xs_2_6 ys_4_9 =
  (xs_2_6 ys_4_9);;
let rec mappend_d6 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_2_5, t_2_5) -> 
      (`LH_C(h_2_5, ((mappend_d6 t_2_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_d7 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_d7 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_d8 xs_2_0 ys_4_1 =
  (xs_2_0 ys_4_1);;
let rec mappend_d9 xs_9 ys_1_1 =
  (xs_9 ys_1_1);;
let rec map_d1_d4 f_9_0 ls_4_5 =
  (ls_4_5 f_9_0);;
let rec map_d1_d5 f_1_3_9 ls_7_3 =
  (ls_7_3 f_1_3_9);;
let rec map_d2 f_1_1_6 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_1_0_3, t_1_0_8) -> 
      (`LH_C((f_1_1_6 h_1_0_3), ((map_d2 f_1_1_6) t_1_0_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d0 f_1_2_8 ls_6_6 =
  (match ls_6_6 with
    | `LH_C(h_1_1_1, t_1_1_9) -> 
      (`LH_C((f_1_2_8 h_1_1_1), ((map_d2_d0 f_1_2_8) t_1_1_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d3 f_6_0 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C((f_6_0 h_5_1), ((map_d2_d3 f_6_0) t_5_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d4 f_1_1_5 ls_5_8 =
  (ls_5_8 f_1_1_5);;
let rec map_d2_d5 f_8_1 ls_3_9 =
  (ls_3_9 f_8_1);;
let rec map_d2_d6 f_9_1 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_8_3, t_8_8) -> 
      (`LH_C((f_9_1 h_8_3), ((map_d2_d6 f_9_1) t_8_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d7 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_d2_d7 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d8 f_5_6 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C((f_5_6 h_4_7), ((map_d2_d8 f_5_6) t_4_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2_d9 f_4_8 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_4_0, t_4_1) -> 
      (`LH_C((f_4_8 h_4_0), ((map_d2_d9 f_4_8) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3 f_4_2 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_3_4, t_3_4) -> 
      (`LH_C((f_4_2 h_3_4), ((map_d3 f_4_2) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d0 f_3_5 ls_8 =
  (match ls_8 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C((f_3_5 h_3_0), ((map_d3_d0 f_3_5) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d1 f_1_0_8 ls_5_5 =
  (match ls_5_5 with
    | `LH_C(h_9_8, t_1_0_3) -> 
      (`LH_C((f_1_0_8 h_9_8), ((map_d3_d1 f_1_0_8) t_1_0_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d3 f_1_2_1 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_1_0_8, t_1_1_5) -> 
      (`LH_C((f_1_2_1 h_1_0_8), ((map_d3_d3 f_1_2_1) t_1_1_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d5 f_6_9 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_8, t_6_2) -> 
      (`LH_C((f_6_9 h_5_8), ((map_d3_d5 f_6_9) t_6_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3_d8 f_6_1 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C((f_6_1 h_5_3), ((map_d3_d8 f_6_1) t_5_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d1 f_6_7 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_5_7, t_6_0) -> 
      (`LH_C((f_6_7 h_5_7), ((map_d4_d1 f_6_7) t_6_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d4 f_5_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_4_6, t_4_7) -> 
      (`LH_C((f_5_4 h_4_6), ((map_d4_d4 f_5_4) t_4_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4_d7 f_1_3_4 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_1_1_6, t_1_2_4) -> 
      (`LH_C((f_1_3_4 h_1_1_6), ((map_d4_d7 f_1_3_4) t_1_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d9 f_6_6 ls_3_0 =
  (ls_3_0 f_6_6);;
let rec match'_d0 _lh_match'_arg1_0 _lh_match'_arg2_0 =
  (_lh_match'_arg2_0 _lh_match'_arg1_0);;
let rec match'_d1 _lh_match'_arg1_5 _lh_match'_arg2_1 =
  (_lh_match'_arg2_1 _lh_match'_arg1_5);;
let rec maybeX_d0 _lh_maybeX_arg1_1 _lh_maybeX_arg2_1 =
  (if _lh_maybeX_arg1_1 then
    (`Just(_lh_maybeX_arg2_1))
  else
    (`Nothing));;
let rec maybeX_d1 _lh_maybeX_arg1_1_1 _lh_maybeX_arg2_1_1 =
  (if _lh_maybeX_arg1_1_1 then
    (`Just(_lh_maybeX_arg2_1_1))
  else
    (`Nothing));;
let rec maybeX_d1_d0 _lh_maybeX_arg1_4 _lh_maybeX_arg2_4 =
  (if _lh_maybeX_arg1_4 then
    (`Just(_lh_maybeX_arg2_4))
  else
    (`Nothing));;
let rec maybeX_d1_d1 _lh_maybeX_arg1_6 _lh_maybeX_arg2_6 =
  (if _lh_maybeX_arg1_6 then
    (`Just(_lh_maybeX_arg2_6))
  else
    (`Nothing));;
let rec maybeX_d1_d2 _lh_maybeX_arg1_1_3 _lh_maybeX_arg2_1_3 =
  (if _lh_maybeX_arg1_1_3 then
    (`Just(_lh_maybeX_arg2_1_3))
  else
    (`Nothing));;
let rec maybeX_d1_d3 _lh_maybeX_arg1_0 _lh_maybeX_arg2_0 =
  (if _lh_maybeX_arg1_0 then
    (`Just(_lh_maybeX_arg2_0))
  else
    (`Nothing));;
let rec maybeX_d2 _lh_maybeX_arg1_7 _lh_maybeX_arg2_7 =
  (if _lh_maybeX_arg1_7 then
    (`Just(_lh_maybeX_arg2_7))
  else
    (`Nothing));;
let rec maybeX_d3 _lh_maybeX_arg1_9 _lh_maybeX_arg2_9 =
  (if _lh_maybeX_arg1_9 then
    (`Just(_lh_maybeX_arg2_9))
  else
    (`Nothing));;
let rec maybeX_d4 _lh_maybeX_arg1_8 _lh_maybeX_arg2_8 =
  (if _lh_maybeX_arg1_8 then
    (`Just(_lh_maybeX_arg2_8))
  else
    (`Nothing));;
let rec maybeX_d5 _lh_maybeX_arg1_1_0 _lh_maybeX_arg2_1_0 =
  (if _lh_maybeX_arg1_1_0 then
    (`Just(_lh_maybeX_arg2_1_0))
  else
    (`Nothing));;
let rec maybeX_d6 _lh_maybeX_arg1_2 _lh_maybeX_arg2_2 =
  (if _lh_maybeX_arg1_2 then
    (`Just(_lh_maybeX_arg2_2))
  else
    (`Nothing));;
let rec maybeX_d7 _lh_maybeX_arg1_1_2 _lh_maybeX_arg2_1_2 =
  (if _lh_maybeX_arg1_1_2 then
    (`Just(_lh_maybeX_arg2_1_2))
  else
    (`Nothing));;
let rec maybeX_d8 _lh_maybeX_arg1_3 _lh_maybeX_arg2_3 =
  (if _lh_maybeX_arg1_3 then
    (`Just(_lh_maybeX_arg2_3))
  else
    (`Nothing));;
let rec maybeX_d9 _lh_maybeX_arg1_5 _lh_maybeX_arg2_5 =
  (if _lh_maybeX_arg1_5 then
    (`Just(_lh_maybeX_arg2_5))
  else
    (`Nothing));;
let rec modify_d0 _lh_modify_arg1_0 _lh_modify_arg2_0 _lh_modify_arg3_0 =
  (match _lh_modify_arg1_0 with
    | `LH_C(_lh_modify_LH_C_0_0, _lh_modify_LH_C_1_0) -> 
      (match _lh_modify_arg2_0 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_0 _lh_modify_LH_C_0_0), _lh_modify_LH_C_1_0))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_0, (((modify_d0 _lh_modify_LH_C_1_0) (_lh_modify_arg2_0 - 1)) _lh_modify_arg3_0))))
    | _ -> 
      (failwith "error"));;
let rec modify_d1 _lh_modify_arg1_1 _lh_modify_arg2_1 _lh_modify_arg3_1 =
  (match _lh_modify_arg1_1 with
    | `LH_C(_lh_modify_LH_C_0_1, _lh_modify_LH_C_1_1) -> 
      (match _lh_modify_arg2_1 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_1 _lh_modify_LH_C_0_1), _lh_modify_LH_C_1_1))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_1, (((modify_d1 _lh_modify_LH_C_1_1) (_lh_modify_arg2_1 - 1)) _lh_modify_arg3_1))))
    | _ -> 
      (failwith "error"));;
let rec modify_d2 _lh_modify_arg1_2 _lh_modify_arg2_2 _lh_modify_arg3_2 =
  (match _lh_modify_arg1_2 with
    | `LH_C(_lh_modify_LH_C_0_2, _lh_modify_LH_C_1_2) -> 
      (match _lh_modify_arg2_2 with
        | 0 -> 
          (`LH_C((_lh_modify_arg3_2 _lh_modify_LH_C_0_2), _lh_modify_LH_C_1_2))
        | _ -> 
          (`LH_C(_lh_modify_LH_C_0_2, (((modify_d2 _lh_modify_LH_C_1_2) (_lh_modify_arg2_2 - 1)) _lh_modify_arg3_2))))
    | _ -> 
      (failwith "error"));;
let rec orElse_d0 _lh_orElse_arg1_9 _lh_orElse_arg2_9 =
  (match _lh_orElse_arg1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_9
    | _ -> 
      _lh_orElse_arg1_9);;
let rec orElse_d1 _lh_orElse_arg1_1_7 _lh_orElse_arg2_1_7 =
  (match _lh_orElse_arg1_1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_1_7
    | _ -> 
      _lh_orElse_arg1_1_7);;
let rec orElse_d1_d0 _lh_orElse_arg1_1_1 _lh_orElse_arg2_1_1 =
  (match _lh_orElse_arg1_1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1_1
    | _ -> 
      _lh_orElse_arg1_1_1);;
let rec orElse_d1_d1 _lh_orElse_arg1_7 _lh_orElse_arg2_7 =
  (match _lh_orElse_arg1_7 with
    | `Nothing -> 
      _lh_orElse_arg2_7
    | _ -> 
      _lh_orElse_arg1_7);;
let rec orElse_d1_d2 _lh_orElse_arg1_1_8 _lh_orElse_arg2_1_8 =
  (match _lh_orElse_arg1_1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_1_8
    | _ -> 
      _lh_orElse_arg1_1_8);;
let rec orElse_d1_d3 _lh_orElse_arg1_1_6 _lh_orElse_arg2_1_6 =
  (match _lh_orElse_arg1_1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_1_6
    | _ -> 
      _lh_orElse_arg1_1_6);;
let rec orElse_d1_d4 _lh_orElse_arg1_1_2 _lh_orElse_arg2_1_2 =
  (match _lh_orElse_arg1_1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_1_2
    | _ -> 
      _lh_orElse_arg1_1_2);;
let rec orElse_d1_d5 _lh_orElse_arg1_1_9 _lh_orElse_arg2_1_9 =
  (match _lh_orElse_arg1_1_9 with
    | `Nothing -> 
      _lh_orElse_arg2_1_9
    | _ -> 
      _lh_orElse_arg1_1_9);;
let rec orElse_d1_d6 _lh_orElse_arg1_2 _lh_orElse_arg2_2 =
  (match _lh_orElse_arg1_2 with
    | `Nothing -> 
      _lh_orElse_arg2_2
    | _ -> 
      _lh_orElse_arg1_2);;
let rec orElse_d1_d7 _lh_orElse_arg1_4 _lh_orElse_arg2_4 =
  (match _lh_orElse_arg1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_4
    | _ -> 
      _lh_orElse_arg1_4);;
let rec orElse_d1_d8 _lh_orElse_arg1_1_5 _lh_orElse_arg2_1_5 =
  (match _lh_orElse_arg1_1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_1_5
    | _ -> 
      _lh_orElse_arg1_1_5);;
let rec orElse_d1_d9 _lh_orElse_arg1_1_4 _lh_orElse_arg2_1_4 =
  (match _lh_orElse_arg1_1_4 with
    | `Nothing -> 
      _lh_orElse_arg2_1_4
    | _ -> 
      _lh_orElse_arg1_1_4);;
let rec orElse_d2 _lh_orElse_arg1_5 _lh_orElse_arg2_5 =
  (match _lh_orElse_arg1_5 with
    | `Nothing -> 
      _lh_orElse_arg2_5
    | _ -> 
      _lh_orElse_arg1_5);;
let rec orElse_d3 _lh_orElse_arg1_1 _lh_orElse_arg2_1 =
  (match _lh_orElse_arg1_1 with
    | `Nothing -> 
      _lh_orElse_arg2_1
    | _ -> 
      _lh_orElse_arg1_1);;
let rec orElse_d4 _lh_orElse_arg1_1_3 _lh_orElse_arg2_1_3 =
  (match _lh_orElse_arg1_1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_1_3
    | _ -> 
      _lh_orElse_arg1_1_3);;
let rec orElse_d5 _lh_orElse_arg1_0 _lh_orElse_arg2_0 =
  (match _lh_orElse_arg1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_0
    | _ -> 
      _lh_orElse_arg1_0);;
let rec orElse_d6 _lh_orElse_arg1_6 _lh_orElse_arg2_6 =
  (match _lh_orElse_arg1_6 with
    | `Nothing -> 
      _lh_orElse_arg2_6
    | _ -> 
      _lh_orElse_arg1_6);;
let rec orElse_d7 _lh_orElse_arg1_1_0 _lh_orElse_arg2_1_0 =
  (match _lh_orElse_arg1_1_0 with
    | `Nothing -> 
      _lh_orElse_arg2_1_0
    | _ -> 
      _lh_orElse_arg1_1_0);;
let rec orElse_d8 _lh_orElse_arg1_3 _lh_orElse_arg2_3 =
  (match _lh_orElse_arg1_3 with
    | `Nothing -> 
      _lh_orElse_arg2_3
    | _ -> 
      _lh_orElse_arg1_3);;
let rec orElse_d9 _lh_orElse_arg1_8 _lh_orElse_arg2_8 =
  (match _lh_orElse_arg1_8 with
    | `Nothing -> 
      _lh_orElse_arg2_8
    | _ -> 
      _lh_orElse_arg1_8);;
let rec or_d0 _lh_or_arg1_2 =
  (_lh_or_arg1_2 99);;
let rec or_d1 _lh_or_arg1_1 =
  (_lh_or_arg1_1 99);;
let rec or_d2 _lh_or_arg1_3 =
  (_lh_or_arg1_3 99);;
let rec or_d3 _lh_or_arg1_0 =
  (_lh_or_arg1_0 99);;
let rec pair_d0 _lh_pair_arg1_0 _lh_pair_arg2_0 =
  (`LH_P2(_lh_pair_arg1_0, _lh_pair_arg2_0));;
let rec pair_d1 _lh_pair_arg1_1 _lh_pair_arg2_1 =
  (`LH_P2(_lh_pair_arg1_1, _lh_pair_arg2_1));;
let rec prop2_d0 _lh_prop2_arg1_1 _lh_prop2_arg2_1 _lh_prop2_arg3_1 =
  (match _lh_prop2_arg2_1 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_1) -> 
      ((_lh_prop2_arg1_1 _lh_prop2_Just_0_1) _lh_prop2_arg3_1)
    | _ -> 
      (failwith "error"));;
let rec prop2_d1 _lh_prop2_arg1_2 _lh_prop2_arg2_2 _lh_prop2_arg3_2 =
  (match _lh_prop2_arg2_2 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_2) -> 
      ((_lh_prop2_arg1_2 _lh_prop2_Just_0_2) _lh_prop2_arg3_2)
    | _ -> 
      (failwith "error"));;
let rec prop2_d2 _lh_prop2_arg1_0 _lh_prop2_arg2_0 _lh_prop2_arg3_0 =
  (match _lh_prop2_arg2_0 with
    | `Nothing -> 
      (`Nothing)
    | `Just(_lh_prop2_Just_0_0) -> 
      ((_lh_prop2_arg1_0 _lh_prop2_Just_0_0) _lh_prop2_arg3_0)
    | _ -> 
      (failwith "error"));;
let rec prop_fold_d0 _lh_prop_fold_arg1_1 _lh_prop_fold_arg2_1 _lh_prop_fold_arg3_1 =
  ((_lh_prop_fold_arg3_1 _lh_prop_fold_arg2_1) _lh_prop_fold_arg1_1);;
let rec prop_fold_d1 _lh_prop_fold_arg1_0 _lh_prop_fold_arg2_0 _lh_prop_fold_arg3_0 =
  ((_lh_prop_fold_arg3_0 _lh_prop_fold_arg2_0) _lh_prop_fold_arg1_0);;
let rec prop_fold_d2 _lh_prop_fold_arg1_2 _lh_prop_fold_arg2_2 _lh_prop_fold_arg3_2 =
  ((_lh_prop_fold_arg3_2 _lh_prop_fold_arg2_2) _lh_prop_fold_arg1_2);;
let rec quant_d0 _lh_quant_arg1_8 _lh_quant_arg2_8 _lh_quant_arg3_8 _lh_quant_arg4_8 =
  (let rec p_8 = (fun x_3_5 -> 
    ((_lh_quant_arg2_8 x_3_5) _lh_quant_arg3_8)) in
    ((_lh_quant_arg1_8 p_8) _lh_quant_arg4_8));;
let rec quant_d1 _lh_quant_arg1_3 _lh_quant_arg2_3 _lh_quant_arg3_3 _lh_quant_arg4_3 =
  (let rec p_3 = (fun x_2_3 -> 
    ((_lh_quant_arg2_3 x_2_3) _lh_quant_arg3_3)) in
    ((_lh_quant_arg1_3 p_3) _lh_quant_arg4_3));;
let rec quant_d2 _lh_quant_arg1_7 _lh_quant_arg2_7 _lh_quant_arg3_7 _lh_quant_arg4_7 =
  (let rec p_7 = (fun x_3_4 -> 
    ((_lh_quant_arg2_7 x_3_4) _lh_quant_arg3_7)) in
    ((_lh_quant_arg1_7 p_7) _lh_quant_arg4_7));;
let rec quant_d3 _lh_quant_arg1_5 _lh_quant_arg2_5 _lh_quant_arg3_5 _lh_quant_arg4_5 =
  (let rec p_5 = (fun x_2_7 -> 
    ((_lh_quant_arg2_5 x_2_7) _lh_quant_arg3_5)) in
    ((_lh_quant_arg1_5 p_5) _lh_quant_arg4_5));;
let rec quant_d4 _lh_quant_arg1_6 _lh_quant_arg2_6 _lh_quant_arg3_6 _lh_quant_arg4_6 =
  (let rec p_6 = (fun x_3_1 -> 
    ((_lh_quant_arg2_6 x_3_1) _lh_quant_arg3_6)) in
    ((_lh_quant_arg1_6 p_6) _lh_quant_arg4_6));;
let rec quant_d5 _lh_quant_arg1_0 _lh_quant_arg2_0 _lh_quant_arg3_0 _lh_quant_arg4_0 =
  (let rec p_0 = (fun x_1_2 -> 
    ((_lh_quant_arg2_0 x_1_2) _lh_quant_arg3_0)) in
    ((_lh_quant_arg1_0 p_0) _lh_quant_arg4_0));;
let rec quant_d6 _lh_quant_arg1_2 _lh_quant_arg2_2 _lh_quant_arg3_2 _lh_quant_arg4_2 =
  (let rec p_2 = (fun x_1_7 -> 
    ((_lh_quant_arg2_2 x_1_7) _lh_quant_arg3_2)) in
    ((_lh_quant_arg1_2 p_2) _lh_quant_arg4_2));;
let rec quant_d7 _lh_quant_arg1_1 _lh_quant_arg2_1 _lh_quant_arg3_1 _lh_quant_arg4_1 =
  (let rec p_1 = (fun x_1_4 -> 
    ((_lh_quant_arg2_1 x_1_4) _lh_quant_arg3_1)) in
    ((_lh_quant_arg1_1 p_1) _lh_quant_arg4_1));;
let rec quant_d8 _lh_quant_arg1_9 _lh_quant_arg2_9 _lh_quant_arg3_9 _lh_quant_arg4_9 =
  (let rec p_9 = (fun x_3_8 -> 
    ((_lh_quant_arg2_9 x_3_8) _lh_quant_arg3_9)) in
    ((_lh_quant_arg1_9 p_9) _lh_quant_arg4_9));;
let rec quant_d9 _lh_quant_arg1_4 _lh_quant_arg2_4 _lh_quant_arg3_4 _lh_quant_arg4_4 =
  (let rec p_4 = (fun x_2_4 -> 
    ((_lh_quant_arg2_4 x_2_4) _lh_quant_arg3_4)) in
    ((_lh_quant_arg1_4 p_4) _lh_quant_arg4_4));;
let rec result_d0 _lh_result_arg1_0 =
  (_lh_result_arg1_0 99);;
let rec snd_d0 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec snd_d1 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd_d2 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec squash_d0 _lh_squash_arg1_1 =
  (_lh_squash_arg1_1 99);;
let rec squash_d1 _lh_squash_arg1_0 =
  (_lh_squash_arg1_0 99);;
let rec succeed_d0 _lh_succeed_arg1_6 =
  (`Just(_lh_succeed_arg1_6));;
let rec succeed_d1 _lh_succeed_arg1_2 =
  (`Just(_lh_succeed_arg1_2));;
let rec succeed_d1_d0 _lh_succeed_arg1_1_0 =
  (`Just(_lh_succeed_arg1_1_0));;
let rec succeed_d1_d1 _lh_succeed_arg1_1_1 =
  (`Just(_lh_succeed_arg1_1_1));;
let rec succeed_d2 _lh_succeed_arg1_9 =
  (`Just(_lh_succeed_arg1_9));;
let rec succeed_d3 _lh_succeed_arg1_8 =
  (`Just(_lh_succeed_arg1_8));;
let rec succeed_d4 _lh_succeed_arg1_0 =
  (`Just(_lh_succeed_arg1_0));;
let rec succeed_d5 _lh_succeed_arg1_4 _lh_lift_arg1_5 _lh_getOrElse_arg2_6 =
  (let rec _lh_lift_Just_0_3 = _lh_succeed_arg1_4 in
    (let rec _lh_getOrElse_Just_0_4 = (_lh_lift_arg1_5 _lh_lift_Just_0_3) in
      _lh_getOrElse_Just_0_4));;
let rec succeed_d6 _lh_succeed_arg1_3 =
  (`Just(_lh_succeed_arg1_3));;
let rec succeed_d7 _lh_succeed_arg1_1 =
  (`Just(_lh_succeed_arg1_1));;
let rec succeed_d8 _lh_succeed_arg1_7 =
  (`Just(_lh_succeed_arg1_7));;
let rec succeed_d9 _lh_succeed_arg1_5 =
  (`Just(_lh_succeed_arg1_5));;
let rec sum_d0 ls_2_0 =
  (ls_2_0 99);;
let rec tail_d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_5_0, t_5_2) -> 
      t_5_2
    | `LH_N -> 
      (failwith "error"));;
let rec takeWhile_d0 _lh_takeWhile_arg1_0 _lh_takeWhile_arg2_0 =
  (match _lh_takeWhile_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_takeWhile_LH_C_0_0, _lh_takeWhile_LH_C_1_0) -> 
      (if (_lh_takeWhile_arg1_0 _lh_takeWhile_LH_C_0_0) then
        (`LH_C(_lh_takeWhile_LH_C_0_0, ((takeWhile_d0 _lh_takeWhile_arg1_0) _lh_takeWhile_LH_C_1_0)))
      else
        (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec the_d0 _lh_the_arg1_3 =
  (match _lh_the_arg1_3 with
    | `Just(_lh_the_Just_0_3) -> 
      _lh_the_Just_0_3
    | _ -> 
      (failwith "error"));;
let rec the_d1 _lh_the_arg1_0 =
  (match _lh_the_arg1_0 with
    | `Just(_lh_the_Just_0_0) -> 
      _lh_the_Just_0_0
    | _ -> 
      (failwith "error"));;
let rec the_d2 _lh_the_arg1_5 =
  (match _lh_the_arg1_5 with
    | `Just(_lh_the_Just_0_5) -> 
      _lh_the_Just_0_5
    | _ -> 
      (failwith "error"));;
let rec the_d3 _lh_the_arg1_4 =
  (match _lh_the_arg1_4 with
    | `Just(_lh_the_Just_0_4) -> 
      _lh_the_Just_0_4
    | _ -> 
      (failwith "error"));;
let rec the_d4 _lh_the_arg1_2 =
  (match _lh_the_arg1_2 with
    | `Just(_lh_the_Just_0_2) -> 
      _lh_the_Just_0_2
    | _ -> 
      (failwith "error"));;
let rec the_d5 _lh_the_arg1_1 =
  (match _lh_the_arg1_1 with
    | `Just(_lh_the_Just_0_1) -> 
      _lh_the_Just_0_1
    | _ -> 
      (failwith "error"));;
let rec unify'_d0 _lh_unify'_arg1_0 _lh_unify'_arg2_0 =
  (_lh_unify'_arg2_0 _lh_unify'_arg1_0);;
let rec update_alist_d0 _lh_update_alist_arg1_0 _lh_update_alist_arg2_0 _lh_update_alist_arg3_0 =
  (let rec upd_0 = (fun ls_1 -> 
    (let rec _lh_matchIdent_0 = ls_1 in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (`LH_C((`LH_P2(_lh_update_alist_arg1_0, (_lh_update_alist_arg2_0 _lh_update_alist_arg3_0))), (`LH_N)))
        | `LH_C(_lh_update_alist_LH_C_0_0, _lh_update_alist_LH_C_1_0) -> 
          (match _lh_update_alist_LH_C_0_0 with
            | `LH_P2(_lh_update_alist_LH_P2_0_0, _lh_update_alist_LH_P2_1_0) -> 
              (if (_lh_update_alist_arg1_0 = _lh_update_alist_LH_P2_0_0) then
                (`LH_C((`LH_P2(_lh_update_alist_arg1_0, (_lh_update_alist_arg2_0 _lh_update_alist_LH_P2_1_0))), _lh_update_alist_LH_C_1_0))
              else
                (`LH_C((`LH_P2(_lh_update_alist_LH_P2_0_0, _lh_update_alist_LH_P2_1_0)), (upd_0 _lh_update_alist_LH_C_1_0))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))) in
    upd_0);;
let rec zip_lz_nl_d0 xs_1_8 ys_3_9 =
  (match ys_3_9 with
    | `LH_C(hy_7, ty_7) -> 
      (((Lazy.force xs_1_8) hy_7) ty_7)
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_2 -> 
        (`LH_N)));;
let rec zip_lz_nl_d1 xs_1_9 ys_4_0 =
  (match ys_4_0 with
    | `LH_C(hy_8, ty_8) -> 
      (((Lazy.force xs_1_9) hy_8) ty_8)
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_3 -> 
        (`LH_N)));;
let rec zip_lz_nl_d2 xs_6 ys_8 =
  (match ys_8 with
    | `LH_C(hy_1, ty_1) -> 
      (((Lazy.force xs_6) hy_1) ty_1)
    | `LH_N -> 
      (fun _lh_listcomp_fun_7 -> 
        (`LH_N)));;
let rec zip_lz_nl_d3 xs_2_2 ys_4_5 =
  (match ys_4_5 with
    | `LH_C(hy_9, ty_9) -> 
      (((Lazy.force xs_2_2) hy_9) ty_9)
    | `LH_N -> 
      (fun _lh_listcomp_fun_2_4 _lh_strict_super_arg1_3 superpose_3 -> 
        (`LH_N)));;
let rec zip_d3 xs_1_6 ys_3_2 =
  (xs_1_6 ys_3_2);;
let rec apply_d0 _lh_apply_arg1_7 _lh_apply_arg2_7 =
  ((getOrElse_d2 ((assoc_d2 _lh_apply_arg1_7) _lh_apply_arg2_7)) (`Var(_lh_apply_arg2_7)))
and apply_d1 _lh_apply_arg1_5 _lh_apply_arg2_5 =
  ((getOrElse_d3 ((assoc_d4 _lh_apply_arg1_5) _lh_apply_arg2_5)) (`Var(_lh_apply_arg2_5)))
and apply_d2 _lh_apply_arg1_6 _lh_apply_arg2_6 =
  ((getOrElse_d1_d1 ((assoc_d5 _lh_apply_arg1_6) _lh_apply_arg2_6)) (`Var(_lh_apply_arg2_6)))
and apply_d3 _lh_apply_arg1_0 _lh_apply_arg2_0 =
  ((getOrElse_d1_d2 ((assoc_d6 _lh_apply_arg1_0) _lh_apply_arg2_0)) (`Var(_lh_apply_arg2_0)))
and apply_d4 _lh_apply_arg1_3 _lh_apply_arg2_3 =
  ((getOrElse_d1_d3 ((assoc_d8 _lh_apply_arg1_3) _lh_apply_arg2_3)) (`Var(_lh_apply_arg2_3)))
and apply_d5 _lh_apply_arg1_4 _lh_apply_arg2_4 =
  ((getOrElse_d1_d4 ((assoc_d9 _lh_apply_arg1_4) _lh_apply_arg2_4)) (`Var(_lh_apply_arg2_4)))
and apply_d6 _lh_apply_arg1_1 _lh_apply_arg2_1 =
  ((getOrElse_d1_d5 ((assoc_d1_d1 _lh_apply_arg1_1) _lh_apply_arg2_1)) (`Var(_lh_apply_arg2_1)))
and apply_d7 _lh_apply_arg1_2 _lh_apply_arg2_2 =
  ((getOrElse_d1_d6 ((assoc_d1_d2 _lh_apply_arg1_2) _lh_apply_arg2_2)) (`Var(_lh_apply_arg2_2)))
and assoc_d0 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (let rec match_x_0 = (fun uv_0 -> 
    (let rec _lh_matchIdent_1_3 = uv_0 in
      (match _lh_matchIdent_1_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          ((maybeX_d0 (_lh_assoc_arg2_0 = _lh_assoc_LH_P2_0_0)) _lh_assoc_LH_P2_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d0 ((map_d0 match_x_0) _lh_assoc_arg1_0)))
and assoc_d1 _lh_assoc_arg1_6 _lh_assoc_arg2_6 =
  (let rec match_x_6 = (fun uv_6 -> 
    (let rec _lh_matchIdent_1_9 = uv_6 in
      (match _lh_matchIdent_1_9 with
        | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
          ((maybeX_d2 (_lh_assoc_arg2_6 = _lh_assoc_LH_P2_0_6)) _lh_assoc_LH_P2_1_6)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d3 ((map_d1_d8 match_x_6) _lh_assoc_arg1_6)))
and assoc_d1_d0 _lh_assoc_arg1_1_0 _lh_assoc_arg2_1_0 =
  (let rec match_x_1_0 = (fun uv_1_0 -> 
    (let rec _lh_matchIdent_2_3 = uv_1_0 in
      (match _lh_matchIdent_2_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
          ((maybeX_d1_d1 (_lh_assoc_arg2_1_0 = _lh_assoc_LH_P2_0_1_0)) _lh_assoc_LH_P2_1_1_0)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d2 ((map_d4_d2 match_x_1_0) _lh_assoc_arg1_1_0)))
and assoc_d1_d1 _lh_assoc_arg1_1_2 _lh_assoc_arg2_1_2 =
  (let rec match_x_1_2 = (fun uv_1_2 -> 
    (let rec _lh_matchIdent_2_5 = uv_1_2 in
      (match _lh_matchIdent_2_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_2, _lh_assoc_LH_P2_1_1_2) -> 
          ((maybeX_d1_d2 (_lh_assoc_arg2_1_2 = _lh_assoc_LH_P2_0_1_2)) _lh_assoc_LH_P2_1_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d3 ((map_d4_d3 match_x_1_2) _lh_assoc_arg1_1_2)))
and assoc_d1_d2 _lh_assoc_arg1_8 _lh_assoc_arg2_8 =
  (let rec match_x_8 = (fun uv_8 -> 
    (let rec _lh_matchIdent_2_1 = uv_8 in
      (match _lh_matchIdent_2_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
          ((maybeX_d1_d3 (_lh_assoc_arg2_8 = _lh_assoc_LH_P2_0_8)) _lh_assoc_LH_P2_1_8)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d4 ((map_d4_d6 match_x_8) _lh_assoc_arg1_8)))
and assoc_d2 _lh_assoc_arg1_5 _lh_assoc_arg2_5 =
  (let rec match_x_5 = (fun uv_5 -> 
    (let rec _lh_matchIdent_1_8 = uv_5 in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
          ((maybeX_d3 (_lh_assoc_arg2_5 = _lh_assoc_LH_P2_0_5)) _lh_assoc_LH_P2_1_5)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d4 ((map_d1_d9 match_x_5) _lh_assoc_arg1_5)))
and assoc_d3 _lh_assoc_arg1_7 _lh_assoc_arg2_7 =
  (let rec match_x_7 = (fun uv_7 -> 
    (let rec _lh_matchIdent_2_0 = uv_7 in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
          ((maybeX_d4 (_lh_assoc_arg2_7 = _lh_assoc_LH_P2_0_7)) _lh_assoc_LH_P2_1_7)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d5 ((map_d2_d1 match_x_7) _lh_assoc_arg1_7)))
and assoc_d4 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (let rec match_x_2 = (fun uv_2 -> 
    (let rec _lh_matchIdent_1_5 = uv_2 in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          ((maybeX_d5 (_lh_assoc_arg2_2 = _lh_assoc_LH_P2_0_2)) _lh_assoc_LH_P2_1_2)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d6 ((map_d2_d2 match_x_2) _lh_assoc_arg1_2)))
and assoc_d5 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (let rec match_x_3 = (fun uv_3 -> 
    (let rec _lh_matchIdent_1_6 = uv_3 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          ((maybeX_d6 (_lh_assoc_arg2_3 = _lh_assoc_LH_P2_0_3)) _lh_assoc_LH_P2_1_3)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d7 ((map_d3_d2 match_x_3) _lh_assoc_arg1_3)))
and assoc_d6 _lh_assoc_arg1_4 _lh_assoc_arg2_4 =
  (let rec match_x_4 = (fun uv_4 -> 
    (let rec _lh_matchIdent_1_7 = uv_4 in
      (match _lh_matchIdent_1_7 with
        | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
          ((maybeX_d7 (_lh_assoc_arg2_4 = _lh_assoc_LH_P2_0_4)) _lh_assoc_LH_P2_1_4)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d8 ((map_d3_d4 match_x_4) _lh_assoc_arg1_4)))
and assoc_d7 _lh_assoc_arg1_9 _lh_assoc_arg2_9 =
  (let rec match_x_9 = (fun uv_9 -> 
    (let rec _lh_matchIdent_2_2 = uv_9 in
      (match _lh_matchIdent_2_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
          ((maybeX_d8 (_lh_assoc_arg2_9 = _lh_assoc_LH_P2_0_9)) _lh_assoc_LH_P2_1_9)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d9 ((map_d3_d6 match_x_9) _lh_assoc_arg1_9)))
and assoc_d8 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (let rec match_x_1 = (fun uv_1 -> 
    (let rec _lh_matchIdent_1_4 = uv_1 in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          ((maybeX_d9 (_lh_assoc_arg2_1 = _lh_assoc_LH_P2_0_1)) _lh_assoc_LH_P2_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d0 ((map_d3_d7 match_x_1) _lh_assoc_arg1_1)))
and assoc_d9 _lh_assoc_arg1_1_1 _lh_assoc_arg2_1_1 =
  (let rec match_x_1_1 = (fun uv_1_1 -> 
    (let rec _lh_matchIdent_2_4 = uv_1_1 in
      (match _lh_matchIdent_2_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
          ((maybeX_d1_d0 (_lh_assoc_arg2_1_1 = _lh_assoc_LH_P2_0_1_1)) _lh_assoc_LH_P2_1_1_1)
        | _ -> 
          (failwith "error")))) in
    (first_ok_d1_d1 ((map_d4_d0 match_x_1_1) _lh_assoc_arg1_1_1)))
and box_d0 _lh_box_arg1_0 ys_7 =
  (let rec h_2_9 = _lh_box_arg1_0 in
    (let rec t_2_9 = (fun ys_6 -> 
      ys_6) in
      (`LH_C(h_2_9, ((mappend_d1_d0 t_2_9) ys_7)))))
and box_d1 _lh_box_arg1_1 ys_1_7 =
  (let rec h_4_5 = _lh_box_arg1_1 in
    (let rec t_4_6 = (fun ys_1_6 -> 
      ys_1_6) in
      (`LH_C(h_4_5, ((mappend_d1_d1 t_4_6) ys_1_7)))))
and comp_sub_d0 _lh_comp_sub_arg1_0 _lh_comp_sub_arg2_0 =
  ((mappend_d1_d9 (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_0, _lh_comp_sub_LH_P2_1_0) -> 
            (let rec h_5_9 = (`LH_P2(_lh_comp_sub_LH_P2_0_0, ((sub_d4 _lh_comp_sub_LH_P2_1_0) _lh_comp_sub_arg1_0))) in
              (let rec t_6_3 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2) in
                (fun ys_2_3 -> 
                  (`LH_C(h_5_9, ((mappend_d1_d9 t_6_3) ys_2_3))))))
          | _ -> 
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (fun ys_2_4 -> 
          ys_2_4))) in
    (_lh_listcomp_fun_1_4 _lh_comp_sub_arg2_0))) _lh_comp_sub_arg1_0)
and comp_sub_d1 _lh_comp_sub_arg1_1 _lh_comp_sub_arg2_1 =
  ((mappend_d2_d0 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_3) -> 
        (match _lh_listcomp_fun_ls_h_1_0 with
          | `LH_P2(_lh_comp_sub_LH_P2_0_1, _lh_comp_sub_LH_P2_1_1) -> 
            (let rec h_6_3 = (`LH_P2(_lh_comp_sub_LH_P2_0_1, ((sub_d6 _lh_comp_sub_LH_P2_1_1) _lh_comp_sub_arg1_1))) in
              (let rec t_6_7 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_3) in
                (fun ys_2_6 -> 
                  (`LH_C(h_6_3, ((mappend_d2_d0 t_6_7) ys_2_6))))))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_3))
      | `LH_N -> 
        (fun ys_2_7 -> 
          ys_2_7))) in
    (_lh_listcomp_fun_1_5 _lh_comp_sub_arg2_1))) _lh_comp_sub_arg1_1)
and copy_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 _lh_popOutId_0_8 =
  (if (_lh_copy_arg1_0 <= 0) then
    true
  else
    (let rec _lh_all_LH_C_0_0 = _lh_copy_arg2_0 in
      (let rec _lh_all_LH_C_1_0 = ((copy_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
        (if (_lh_popOutId_0_8 _lh_all_LH_C_0_0) then
          ((all_d0 _lh_popOutId_0_8) _lh_all_LH_C_1_0)
        else
          false))))
and cost_d0 _lh_cost_arg1_0 =
  (match _lh_cost_arg1_0 with
    | `LH_P2(_lh_cost_LH_P2_0_0, _lh_cost_LH_P2_1_0) -> 
      (let rec size_0 = (fun _lh_size_arg1_0 -> 
        (((expr_fold_d0 (fun x_1_5 a_0 -> 
          ((sum_d0 a_0) + 1))) (fun dum_1 -> 
          0)) _lh_size_arg1_0)) in
        ((size_0 _lh_cost_LH_P2_0_0) + (size_0 _lh_cost_LH_P2_1_0)))
    | _ -> 
      (failwith "error"))
and delete_eqns_d0 _lh_delete_eqns_arg1_0 =
  (let rec ok_0 = (fun e_0 -> 
    (not ((inList_d0 (eqno_d0 e_0)) _lh_delete_eqns_arg1_0))) in
    (map_dnet_d0 (filter_d0 ok_0)))
and enumFrom_d0 a_2 =
  (lazy (let rec hx_1 = a_2 in
    (let rec tx_1 = (enumFrom_d0 (a_2 + 1)) in
      (fun hy_2 ty_2 -> 
        (let rec _lh_listcomp_fun_ls_h_5 = (let rec _lh_strict_super_LH_P2_0_0 = hx_1 in
          (let rec _lh_strict_super_LH_P2_1_0 = hy_2 in
            (fun _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_8 _lh_strict_super_arg1_1 superpose_1 -> 
              (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_5 -> 
                (match _lh_listcomp_fun_para_5 with
                  | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_7) -> 
                    (match _lh_listcomp_fun_ls_h_6 with
                      | `LH_P2(_lh_strict_super_LH_P2_0_1, _lh_strict_super_LH_P2_1_1) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_strict_super_LH_P2_0_0, _lh_strict_super_LH_P2_0_1)), _lh_strict_super_LH_P2_1_1)), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7)))
                      | _ -> 
                        (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7))
                  | `LH_N -> 
                    (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6))) in
                (_lh_listcomp_fun_9 ((superpose_1 _lh_strict_super_arg1_1) _lh_strict_super_LH_P2_1_0)))))) in
          (let rec _lh_listcomp_fun_ls_t_8 = ((zip_lz_nl_d3 tx_1) ty_2) in
            (fun _lh_listcomp_fun_1_0 _lh_strict_super_arg1_2 superpose_2 -> 
              ((((_lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_ls_t_8) _lh_listcomp_fun_1_0) _lh_strict_super_arg1_2) superpose_2))))))))
and enumFrom_d1 a_4 =
  (lazy (let rec hx_4 = a_4 in
    (let rec tx_4 = (enumFrom_d1 (a_4 + 1)) in
      (fun hy_5 ty_5 -> 
        (let rec _lh_listcomp_fun_ls_h_1_1 = (let rec _lh_subterms_LH_P2_0_4 = hx_4 in
          (let rec _lh_subterms_LH_P2_1_4 = hy_5 in
            (fun _lh_listcomp_fun_ls_t_1_4 _lh_listcomp_fun_1_6 -> 
              (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_9 -> 
                (match _lh_listcomp_fun_para_9 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_5) -> 
                    (match _lh_listcomp_fun_ls_h_1_2 with
                      | `LH_P2(_lh_subterms_LH_P2_0_5, _lh_subterms_LH_P2_1_5) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_4, _lh_subterms_LH_P2_0_5)), _lh_subterms_LH_P2_1_5)), (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5)))
                      | _ -> 
                        (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_5))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_4))) in
                (_lh_listcomp_fun_1_7 (subterms_d0 _lh_subterms_LH_P2_1_4)))))) in
          (let rec _lh_listcomp_fun_ls_t_1_6 = ((zip_lz_nl_d0 tx_4) ty_5) in
            (fun _lh_listcomp_fun_1_8 -> 
              ((_lh_listcomp_fun_ls_h_1_1 _lh_listcomp_fun_ls_t_1_6) _lh_listcomp_fun_1_8))))))))
and enumFrom_d2 a_1 =
  (lazy (let rec hx_0 = a_1 in
    (let rec tx_0 = (enumFrom_d2 (a_1 + 1)) in
      (fun hy_0 ty_0 -> 
        (let rec _lh_listcomp_fun_ls_h_3 = (let rec _lh_subterms_LH_P2_0_0 = hx_0 in
          (let rec _lh_subterms_LH_P2_1_0 = hy_0 in
            (fun _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_4 -> 
              (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_4 -> 
                (match _lh_listcomp_fun_para_4 with
                  | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                    (match _lh_listcomp_fun_ls_h_4 with
                      | `LH_P2(_lh_subterms_LH_P2_0_1, _lh_subterms_LH_P2_1_1) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_0, _lh_subterms_LH_P2_0_1)), _lh_subterms_LH_P2_1_1)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4)))
                      | _ -> 
                        (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4))
                  | `LH_N -> 
                    (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3))) in
                (_lh_listcomp_fun_5 (subterms_d1 _lh_subterms_LH_P2_1_0)))))) in
          (let rec _lh_listcomp_fun_ls_t_5 = ((zip_lz_nl_d1 tx_0) ty_0) in
            (fun _lh_listcomp_fun_6 -> 
              ((_lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_ls_t_5) _lh_listcomp_fun_6))))))))
and enumFrom_d3 a_3 =
  (lazy (let rec hx_3 = a_3 in
    (let rec tx_3 = (enumFrom_d3 (a_3 + 1)) in
      (fun hy_4 ty_4 -> 
        (let rec _lh_listcomp_fun_ls_h_7 = (let rec _lh_subterms_LH_P2_0_2 = hx_3 in
          (let rec _lh_subterms_LH_P2_1_2 = hy_4 in
            (fun _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_1 -> 
              (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_6 -> 
                (match _lh_listcomp_fun_para_6 with
                  | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_1_0) -> 
                    (match _lh_listcomp_fun_ls_h_8 with
                      | `LH_P2(_lh_subterms_LH_P2_0_3, _lh_subterms_LH_P2_1_3) -> 
                        (`LH_C((`LH_P2((`LH_C(_lh_subterms_LH_P2_0_2, _lh_subterms_LH_P2_0_3)), _lh_subterms_LH_P2_1_3)), (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_0)))
                      | _ -> 
                        (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_0))
                  | `LH_N -> 
                    (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_9))) in
                (_lh_listcomp_fun_1_2 (subterms_d2 _lh_subterms_LH_P2_1_2)))))) in
          (let rec _lh_listcomp_fun_ls_t_1_1 = ((zip_lz_nl_d2 tx_3) ty_4) in
            (fun _lh_listcomp_fun_1_3 -> 
              ((_lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_ls_t_1_1) _lh_listcomp_fun_1_3))))))))
and eqExpr_d0 _lh_eqExpr_arg1_6 _lh_eqExpr_arg2_6 =
  (match _lh_eqExpr_arg1_6 with
    | `Func(_lh_eqExpr_Func_0_1_2, _lh_eqExpr_Func_1_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Func(_lh_eqExpr_Func_0_1_3, _lh_eqExpr_Func_1_1_3) -> 
          ((_lh_eqExpr_Func_0_1_2 = _lh_eqExpr_Func_0_1_3) && ((eqListExpr_d0 _lh_eqExpr_Func_1_1_2) _lh_eqExpr_Func_1_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_2) -> 
      (match _lh_eqExpr_arg2_6 with
        | `Var(_lh_eqExpr_Var_0_1_3) -> 
          (_lh_eqExpr_Var_0_1_2 = _lh_eqExpr_Var_0_1_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d1 _lh_eqExpr_arg1_3 _lh_eqExpr_arg2_3 =
  (match _lh_eqExpr_arg1_3 with
    | `Func(_lh_eqExpr_Func_0_6, _lh_eqExpr_Func_1_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Func(_lh_eqExpr_Func_0_7, _lh_eqExpr_Func_1_7) -> 
          ((_lh_eqExpr_Func_0_6 = _lh_eqExpr_Func_0_7) && ((eqListExpr_d1 _lh_eqExpr_Func_1_6) _lh_eqExpr_Func_1_7))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_6) -> 
      (match _lh_eqExpr_arg2_3 with
        | `Var(_lh_eqExpr_Var_0_7) -> 
          (_lh_eqExpr_Var_0_6 = _lh_eqExpr_Var_0_7)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d2 _lh_eqExpr_arg1_2 _lh_eqExpr_arg2_2 =
  (match _lh_eqExpr_arg1_2 with
    | `Func(_lh_eqExpr_Func_0_4, _lh_eqExpr_Func_1_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Func(_lh_eqExpr_Func_0_5, _lh_eqExpr_Func_1_5) -> 
          ((_lh_eqExpr_Func_0_4 = _lh_eqExpr_Func_0_5) && ((eqListExpr_d2 _lh_eqExpr_Func_1_4) _lh_eqExpr_Func_1_5))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_4) -> 
      (match _lh_eqExpr_arg2_2 with
        | `Var(_lh_eqExpr_Var_0_5) -> 
          (_lh_eqExpr_Var_0_4 = _lh_eqExpr_Var_0_5)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d3 _lh_eqExpr_arg1_0 _lh_eqExpr_arg2_0 =
  (match _lh_eqExpr_arg1_0 with
    | `Func(_lh_eqExpr_Func_0_0, _lh_eqExpr_Func_1_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Func(_lh_eqExpr_Func_0_1, _lh_eqExpr_Func_1_1) -> 
          ((_lh_eqExpr_Func_0_0 = _lh_eqExpr_Func_0_1) && ((eqListExpr_d3 _lh_eqExpr_Func_1_0) _lh_eqExpr_Func_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_0) -> 
      (match _lh_eqExpr_arg2_0 with
        | `Var(_lh_eqExpr_Var_0_1) -> 
          (_lh_eqExpr_Var_0_0 = _lh_eqExpr_Var_0_1)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d4 _lh_eqExpr_arg1_5 _lh_eqExpr_arg2_5 =
  (match _lh_eqExpr_arg1_5 with
    | `Func(_lh_eqExpr_Func_0_1_0, _lh_eqExpr_Func_1_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Func(_lh_eqExpr_Func_0_1_1, _lh_eqExpr_Func_1_1_1) -> 
          ((_lh_eqExpr_Func_0_1_0 = _lh_eqExpr_Func_0_1_1) && ((eqListExpr_d4 _lh_eqExpr_Func_1_1_0) _lh_eqExpr_Func_1_1_1))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_1_0) -> 
      (match _lh_eqExpr_arg2_5 with
        | `Var(_lh_eqExpr_Var_0_1_1) -> 
          (_lh_eqExpr_Var_0_1_0 = _lh_eqExpr_Var_0_1_1)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d5 _lh_eqExpr_arg1_1 _lh_eqExpr_arg2_1 =
  (match _lh_eqExpr_arg1_1 with
    | `Func(_lh_eqExpr_Func_0_2, _lh_eqExpr_Func_1_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Func(_lh_eqExpr_Func_0_3, _lh_eqExpr_Func_1_3) -> 
          ((_lh_eqExpr_Func_0_2 = _lh_eqExpr_Func_0_3) && ((eqListExpr_d5 _lh_eqExpr_Func_1_2) _lh_eqExpr_Func_1_3))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_2) -> 
      (match _lh_eqExpr_arg2_1 with
        | `Var(_lh_eqExpr_Var_0_3) -> 
          (_lh_eqExpr_Var_0_2 = _lh_eqExpr_Var_0_3)
        | _ -> 
          false)
    | _ -> 
      false)
and eqExpr_d6 _lh_eqExpr_arg1_4 _lh_eqExpr_arg2_4 =
  (match _lh_eqExpr_arg1_4 with
    | `Func(_lh_eqExpr_Func_0_8, _lh_eqExpr_Func_1_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Func(_lh_eqExpr_Func_0_9, _lh_eqExpr_Func_1_9) -> 
          ((_lh_eqExpr_Func_0_8 = _lh_eqExpr_Func_0_9) && ((eqListExpr_d6 _lh_eqExpr_Func_1_8) _lh_eqExpr_Func_1_9))
        | _ -> 
          false)
    | `Var(_lh_eqExpr_Var_0_8) -> 
      (match _lh_eqExpr_arg2_4 with
        | `Var(_lh_eqExpr_Var_0_9) -> 
          (_lh_eqExpr_Var_0_8 = _lh_eqExpr_Var_0_9)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d0 _lh_eqListExpr_arg1_2 _lh_eqListExpr_arg2_2 =
  (match _lh_eqListExpr_arg1_2 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_4, _lh_eqListExpr_LH_C_1_4) -> 
      (match _lh_eqListExpr_arg2_2 with
        | `LH_C(_lh_eqListExpr_LH_C_0_5, _lh_eqListExpr_LH_C_1_5) -> 
          (if ((eqExpr_d0 _lh_eqListExpr_LH_C_0_4) _lh_eqListExpr_LH_C_0_5) then
            ((eqListExpr_d0 _lh_eqListExpr_LH_C_1_4) _lh_eqListExpr_LH_C_1_5)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d1 _lh_eqListExpr_arg1_3 _lh_eqListExpr_arg2_3 =
  (match _lh_eqListExpr_arg1_3 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_6, _lh_eqListExpr_LH_C_1_6) -> 
      (match _lh_eqListExpr_arg2_3 with
        | `LH_C(_lh_eqListExpr_LH_C_0_7, _lh_eqListExpr_LH_C_1_7) -> 
          (if ((eqExpr_d1 _lh_eqListExpr_LH_C_0_6) _lh_eqListExpr_LH_C_0_7) then
            ((eqListExpr_d1 _lh_eqListExpr_LH_C_1_6) _lh_eqListExpr_LH_C_1_7)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d2 _lh_eqListExpr_arg1_6 _lh_eqListExpr_arg2_6 =
  (match _lh_eqListExpr_arg1_6 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_2, _lh_eqListExpr_LH_C_1_1_2) -> 
      (match _lh_eqListExpr_arg2_6 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_3, _lh_eqListExpr_LH_C_1_1_3) -> 
          (if ((eqExpr_d2 _lh_eqListExpr_LH_C_0_1_2) _lh_eqListExpr_LH_C_0_1_3) then
            ((eqListExpr_d2 _lh_eqListExpr_LH_C_1_1_2) _lh_eqListExpr_LH_C_1_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d3 _lh_eqListExpr_arg1_0 _lh_eqListExpr_arg2_0 =
  (match _lh_eqListExpr_arg1_0 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_0, _lh_eqListExpr_LH_C_1_0) -> 
      (match _lh_eqListExpr_arg2_0 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1, _lh_eqListExpr_LH_C_1_1) -> 
          (if ((eqExpr_d3 _lh_eqListExpr_LH_C_0_0) _lh_eqListExpr_LH_C_0_1) then
            ((eqListExpr_d3 _lh_eqListExpr_LH_C_1_0) _lh_eqListExpr_LH_C_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d4 _lh_eqListExpr_arg1_5 _lh_eqListExpr_arg2_5 =
  (match _lh_eqListExpr_arg1_5 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_1_0, _lh_eqListExpr_LH_C_1_1_0) -> 
      (match _lh_eqListExpr_arg2_5 with
        | `LH_C(_lh_eqListExpr_LH_C_0_1_1, _lh_eqListExpr_LH_C_1_1_1) -> 
          (if ((eqExpr_d4 _lh_eqListExpr_LH_C_0_1_0) _lh_eqListExpr_LH_C_0_1_1) then
            ((eqListExpr_d4 _lh_eqListExpr_LH_C_1_1_0) _lh_eqListExpr_LH_C_1_1_1)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d5 _lh_eqListExpr_arg1_4 _lh_eqListExpr_arg2_4 =
  (match _lh_eqListExpr_arg1_4 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_8, _lh_eqListExpr_LH_C_1_8) -> 
      (match _lh_eqListExpr_arg2_4 with
        | `LH_C(_lh_eqListExpr_LH_C_0_9, _lh_eqListExpr_LH_C_1_9) -> 
          (if ((eqExpr_d5 _lh_eqListExpr_LH_C_0_8) _lh_eqListExpr_LH_C_0_9) then
            ((eqListExpr_d5 _lh_eqListExpr_LH_C_1_8) _lh_eqListExpr_LH_C_1_9)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and eqListExpr_d6 _lh_eqListExpr_arg1_1 _lh_eqListExpr_arg2_1 =
  (match _lh_eqListExpr_arg1_1 with
    | `LH_N -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          false)
    | `LH_C(_lh_eqListExpr_LH_C_0_2, _lh_eqListExpr_LH_C_1_2) -> 
      (match _lh_eqListExpr_arg2_1 with
        | `LH_C(_lh_eqListExpr_LH_C_0_3, _lh_eqListExpr_LH_C_1_3) -> 
          (if ((eqExpr_d6 _lh_eqListExpr_LH_C_0_2) _lh_eqListExpr_LH_C_0_3) then
            ((eqListExpr_d6 _lh_eqListExpr_LH_C_1_2) _lh_eqListExpr_LH_C_1_3)
          else
            false)
        | _ -> 
          false)
    | _ -> 
      false)
and expr_fold_d0 _lh_expr_fold_arg1_7 _lh_expr_fold_arg2_7 _lh_expr_fold_arg3_7 =
  (match _lh_expr_fold_arg3_7 with
    | `Var(_lh_expr_fold_Var_0_7) -> 
      (_lh_expr_fold_arg2_7 _lh_expr_fold_Var_0_7)
    | `Func(_lh_expr_fold_Func_0_7, _lh_expr_fold_Func_1_7) -> 
      ((_lh_expr_fold_arg1_7 _lh_expr_fold_Func_0_7) ((map_d1 ((expr_fold_d0 _lh_expr_fold_arg1_7) _lh_expr_fold_arg2_7)) _lh_expr_fold_Func_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold_d1 _lh_expr_fold_arg1_9 _lh_expr_fold_arg2_9 _lh_expr_fold_arg3_9 =
  (match _lh_expr_fold_arg3_9 with
    | `Var(_lh_expr_fold_Var_0_9) -> 
      (_lh_expr_fold_arg2_9 _lh_expr_fold_Var_0_9)
    | `Func(_lh_expr_fold_Func_0_9, _lh_expr_fold_Func_1_9) -> 
      ((_lh_expr_fold_arg1_9 _lh_expr_fold_Func_0_9) ((map_d1_d6 ((expr_fold_d1 _lh_expr_fold_arg1_9) _lh_expr_fold_arg2_9)) _lh_expr_fold_Func_1_9))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d0 _lh_expr_fold_arg1_0 _lh_expr_fold_arg2_0 _lh_expr_fold_arg3_0 =
  (match _lh_expr_fold_arg3_0 with
    | `Var(_lh_expr_fold_Var_0_0) -> 
      (_lh_expr_fold_arg2_0 _lh_expr_fold_Var_0_0)
    | `Func(_lh_expr_fold_Func_0_0, _lh_expr_fold_Func_1_0) -> 
      ((_lh_expr_fold_arg1_0 _lh_expr_fold_Func_0_0) ((map_d3_d1 ((expr_fold_d1_d0 _lh_expr_fold_arg1_0) _lh_expr_fold_arg2_0)) _lh_expr_fold_Func_1_0))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d1 _lh_expr_fold_arg1_1_6 _lh_expr_fold_arg2_1_6 _lh_expr_fold_arg3_1_6 =
  (match _lh_expr_fold_arg3_1_6 with
    | `Var(_lh_expr_fold_Var_0_1_6) -> 
      (_lh_expr_fold_arg2_1_6 _lh_expr_fold_Var_0_1_6)
    | `Func(_lh_expr_fold_Func_0_1_6, _lh_expr_fold_Func_1_1_6) -> 
      ((_lh_expr_fold_arg1_1_6 _lh_expr_fold_Func_0_1_6) ((map_d3_d3 ((expr_fold_d1_d1 _lh_expr_fold_arg1_1_6) _lh_expr_fold_arg2_1_6)) _lh_expr_fold_Func_1_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d2 _lh_expr_fold_arg1_1_8 _lh_expr_fold_arg2_1_8 _lh_expr_fold_arg3_1_8 =
  (match _lh_expr_fold_arg3_1_8 with
    | `Var(_lh_expr_fold_Var_0_1_8) -> 
      (_lh_expr_fold_arg2_1_8 _lh_expr_fold_Var_0_1_8)
    | `Func(_lh_expr_fold_Func_0_1_8, _lh_expr_fold_Func_1_1_8) -> 
      ((_lh_expr_fold_arg1_1_8 _lh_expr_fold_Func_0_1_8) ((map_d3_d5 ((expr_fold_d1_d2 _lh_expr_fold_arg1_1_8) _lh_expr_fold_arg2_1_8)) _lh_expr_fold_Func_1_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d3 _lh_expr_fold_arg1_1 _lh_expr_fold_arg2_1 _lh_expr_fold_arg3_1 =
  (match _lh_expr_fold_arg3_1 with
    | `Var(_lh_expr_fold_Var_0_1) -> 
      (_lh_expr_fold_arg2_1 _lh_expr_fold_Var_0_1)
    | `Func(_lh_expr_fold_Func_0_1, _lh_expr_fold_Func_1_1) -> 
      ((_lh_expr_fold_arg1_1 _lh_expr_fold_Func_0_1) ((map_d3_d8 ((expr_fold_d1_d3 _lh_expr_fold_arg1_1) _lh_expr_fold_arg2_1)) _lh_expr_fold_Func_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d4 _lh_expr_fold_arg1_1_0 _lh_expr_fold_arg2_1_0 _lh_expr_fold_arg3_1_0 =
  (match _lh_expr_fold_arg3_1_0 with
    | `Var(_lh_expr_fold_Var_0_1_0) -> 
      (_lh_expr_fold_arg2_1_0 _lh_expr_fold_Var_0_1_0)
    | `Func(_lh_expr_fold_Func_0_1_0, _lh_expr_fold_Func_1_1_0) -> 
      ((_lh_expr_fold_arg1_1_0 _lh_expr_fold_Func_0_1_0) ((map_d3_d9 ((expr_fold_d1_d4 _lh_expr_fold_arg1_1_0) _lh_expr_fold_arg2_1_0)) _lh_expr_fold_Func_1_1_0))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d5 _lh_expr_fold_arg1_2 _lh_expr_fold_arg2_2 _lh_expr_fold_arg3_2 =
  (match _lh_expr_fold_arg3_2 with
    | `Var(_lh_expr_fold_Var_0_2) -> 
      (_lh_expr_fold_arg2_2 _lh_expr_fold_Var_0_2)
    | `Func(_lh_expr_fold_Func_0_2, _lh_expr_fold_Func_1_2) -> 
      ((_lh_expr_fold_arg1_2 _lh_expr_fold_Func_0_2) ((map_d4_d1 ((expr_fold_d1_d5 _lh_expr_fold_arg1_2) _lh_expr_fold_arg2_2)) _lh_expr_fold_Func_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d6 _lh_expr_fold_arg1_1_4 _lh_expr_fold_arg2_1_4 _lh_expr_fold_arg3_1_4 =
  (match _lh_expr_fold_arg3_1_4 with
    | `Var(_lh_expr_fold_Var_0_1_4) -> 
      (_lh_expr_fold_arg2_1_4 _lh_expr_fold_Var_0_1_4)
    | `Func(_lh_expr_fold_Func_0_1_4, _lh_expr_fold_Func_1_1_4) -> 
      ((_lh_expr_fold_arg1_1_4 _lh_expr_fold_Func_0_1_4) ((map_d4_d4 ((expr_fold_d1_d6 _lh_expr_fold_arg1_1_4) _lh_expr_fold_arg2_1_4)) _lh_expr_fold_Func_1_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d7 _lh_expr_fold_arg1_1_2 _lh_expr_fold_arg2_1_2 _lh_expr_fold_arg3_1_2 =
  (match _lh_expr_fold_arg3_1_2 with
    | `Var(_lh_expr_fold_Var_0_1_2) -> 
      (_lh_expr_fold_arg2_1_2 _lh_expr_fold_Var_0_1_2)
    | `Func(_lh_expr_fold_Func_0_1_2, _lh_expr_fold_Func_1_1_2) -> 
      ((_lh_expr_fold_arg1_1_2 _lh_expr_fold_Func_0_1_2) ((map_d4_d5 ((expr_fold_d1_d7 _lh_expr_fold_arg1_1_2) _lh_expr_fold_arg2_1_2)) _lh_expr_fold_Func_1_1_2))
    | _ -> 
      (failwith "error"))
and expr_fold_d1_d8 _lh_expr_fold_arg1_1_7 _lh_expr_fold_arg2_1_7 _lh_expr_fold_arg3_1_7 =
  (match _lh_expr_fold_arg3_1_7 with
    | `Var(_lh_expr_fold_Var_0_1_7) -> 
      (_lh_expr_fold_arg2_1_7 _lh_expr_fold_Var_0_1_7)
    | `Func(_lh_expr_fold_Func_0_1_7, _lh_expr_fold_Func_1_1_7) -> 
      ((_lh_expr_fold_arg1_1_7 _lh_expr_fold_Func_0_1_7) ((map_d4_d7 ((expr_fold_d1_d8 _lh_expr_fold_arg1_1_7) _lh_expr_fold_arg2_1_7)) _lh_expr_fold_Func_1_1_7))
    | _ -> 
      (failwith "error"))
and expr_fold_d2 _lh_expr_fold_arg1_3 _lh_expr_fold_arg2_3 _lh_expr_fold_arg3_3 =
  (match _lh_expr_fold_arg3_3 with
    | `Var(_lh_expr_fold_Var_0_3) -> 
      (_lh_expr_fold_arg2_3 _lh_expr_fold_Var_0_3)
    | `Func(_lh_expr_fold_Func_0_3, _lh_expr_fold_Func_1_3) -> 
      ((_lh_expr_fold_arg1_3 _lh_expr_fold_Func_0_3) ((map_d1_d7 ((expr_fold_d2 _lh_expr_fold_arg1_3) _lh_expr_fold_arg2_3)) _lh_expr_fold_Func_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold_d3 _lh_expr_fold_arg1_1_3 _lh_expr_fold_arg2_1_3 _lh_expr_fold_arg3_1_3 =
  (match _lh_expr_fold_arg3_1_3 with
    | `Var(_lh_expr_fold_Var_0_1_3) -> 
      (_lh_expr_fold_arg2_1_3 _lh_expr_fold_Var_0_1_3)
    | `Func(_lh_expr_fold_Func_0_1_3, _lh_expr_fold_Func_1_1_3) -> 
      ((_lh_expr_fold_arg1_1_3 _lh_expr_fold_Func_0_1_3) ((map_d2_d0 ((expr_fold_d3 _lh_expr_fold_arg1_1_3) _lh_expr_fold_arg2_1_3)) _lh_expr_fold_Func_1_1_3))
    | _ -> 
      (failwith "error"))
and expr_fold_d4 _lh_expr_fold_arg1_1_5 _lh_expr_fold_arg2_1_5 _lh_expr_fold_arg3_1_5 =
  (match _lh_expr_fold_arg3_1_5 with
    | `Var(_lh_expr_fold_Var_0_1_5) -> 
      (_lh_expr_fold_arg2_1_5 _lh_expr_fold_Var_0_1_5)
    | `Func(_lh_expr_fold_Func_0_1_5, _lh_expr_fold_Func_1_1_5) -> 
      ((_lh_expr_fold_arg1_1_5 _lh_expr_fold_Func_0_1_5) ((map_d2_d3 ((expr_fold_d4 _lh_expr_fold_arg1_1_5) _lh_expr_fold_arg2_1_5)) _lh_expr_fold_Func_1_1_5))
    | _ -> 
      (failwith "error"))
and expr_fold_d5 _lh_expr_fold_arg1_4 _lh_expr_fold_arg2_4 _lh_expr_fold_arg3_4 =
  (match _lh_expr_fold_arg3_4 with
    | `Var(_lh_expr_fold_Var_0_4) -> 
      (_lh_expr_fold_arg2_4 _lh_expr_fold_Var_0_4)
    | `Func(_lh_expr_fold_Func_0_4, _lh_expr_fold_Func_1_4) -> 
      ((_lh_expr_fold_arg1_4 _lh_expr_fold_Func_0_4) ((map_d2_d6 ((expr_fold_d5 _lh_expr_fold_arg1_4) _lh_expr_fold_arg2_4)) _lh_expr_fold_Func_1_4))
    | _ -> 
      (failwith "error"))
and expr_fold_d6 _lh_expr_fold_arg1_1_1 _lh_expr_fold_arg2_1_1 _lh_expr_fold_arg3_1_1 =
  (match _lh_expr_fold_arg3_1_1 with
    | `Var(_lh_expr_fold_Var_0_1_1) -> 
      (_lh_expr_fold_arg2_1_1 _lh_expr_fold_Var_0_1_1)
    | `Func(_lh_expr_fold_Func_0_1_1, _lh_expr_fold_Func_1_1_1) -> 
      ((_lh_expr_fold_arg1_1_1 _lh_expr_fold_Func_0_1_1) ((map_d2_d7 ((expr_fold_d6 _lh_expr_fold_arg1_1_1) _lh_expr_fold_arg2_1_1)) _lh_expr_fold_Func_1_1_1))
    | _ -> 
      (failwith "error"))
and expr_fold_d7 _lh_expr_fold_arg1_6 _lh_expr_fold_arg2_6 _lh_expr_fold_arg3_6 =
  (match _lh_expr_fold_arg3_6 with
    | `Var(_lh_expr_fold_Var_0_6) -> 
      (_lh_expr_fold_arg2_6 _lh_expr_fold_Var_0_6)
    | `Func(_lh_expr_fold_Func_0_6, _lh_expr_fold_Func_1_6) -> 
      ((_lh_expr_fold_arg1_6 _lh_expr_fold_Func_0_6) ((map_d2_d8 ((expr_fold_d7 _lh_expr_fold_arg1_6) _lh_expr_fold_arg2_6)) _lh_expr_fold_Func_1_6))
    | _ -> 
      (failwith "error"))
and expr_fold_d8 _lh_expr_fold_arg1_8 _lh_expr_fold_arg2_8 _lh_expr_fold_arg3_8 =
  (match _lh_expr_fold_arg3_8 with
    | `Var(_lh_expr_fold_Var_0_8) -> 
      (_lh_expr_fold_arg2_8 _lh_expr_fold_Var_0_8)
    | `Func(_lh_expr_fold_Func_0_8, _lh_expr_fold_Func_1_8) -> 
      ((_lh_expr_fold_arg1_8 _lh_expr_fold_Func_0_8) ((map_d2_d9 ((expr_fold_d8 _lh_expr_fold_arg1_8) _lh_expr_fold_arg2_8)) _lh_expr_fold_Func_1_8))
    | _ -> 
      (failwith "error"))
and expr_fold_d9 _lh_expr_fold_arg1_5 _lh_expr_fold_arg2_5 _lh_expr_fold_arg3_5 =
  (match _lh_expr_fold_arg3_5 with
    | `Var(_lh_expr_fold_Var_0_5) -> 
      (_lh_expr_fold_arg2_5 _lh_expr_fold_Var_0_5)
    | `Func(_lh_expr_fold_Func_0_5, _lh_expr_fold_Func_1_5) -> 
      ((_lh_expr_fold_arg1_5 _lh_expr_fold_Func_0_5) ((map_d3_d0 ((expr_fold_d9 _lh_expr_fold_arg1_5) _lh_expr_fold_arg2_5)) _lh_expr_fold_Func_1_5))
    | _ -> 
      (failwith "error"))
and first_ok_d0 _lh_first_ok_arg1_3 =
  (((foldr_d0 orElse_d0) (`Nothing)) _lh_first_ok_arg1_3)
and first_ok_d1 _lh_first_ok_arg1_1_2 =
  (((foldr_d3 orElse_d1) (`Nothing)) _lh_first_ok_arg1_1_2)
and first_ok_d1_d0 _lh_first_ok_arg1_9 =
  (((foldr_d1_d3 orElse_d1_d5) (`Nothing)) _lh_first_ok_arg1_9)
and first_ok_d1_d1 _lh_first_ok_arg1_2 =
  (((foldr_d1_d4 orElse_d1_d6) (`Nothing)) _lh_first_ok_arg1_2)
and first_ok_d1_d2 _lh_first_ok_arg1_6 =
  (((foldr_d1_d5 orElse_d1_d7) (`Nothing)) _lh_first_ok_arg1_6)
and first_ok_d1_d3 _lh_first_ok_arg1_1_1 =
  (((foldr_d1_d6 orElse_d1_d8) (`Nothing)) _lh_first_ok_arg1_1_1)
and first_ok_d1_d4 _lh_first_ok_arg1_1_3 =
  (((foldr_d1_d7 orElse_d1_d9) (`Nothing)) _lh_first_ok_arg1_1_3)
and first_ok_d2 _lh_first_ok_arg1_0 =
  (((foldr_d4 orElse_d6) (`Nothing)) _lh_first_ok_arg1_0)
and first_ok_d3 _lh_first_ok_arg1_1_0 =
  (((foldr_d5 orElse_d7) (`Nothing)) _lh_first_ok_arg1_1_0)
and first_ok_d4 _lh_first_ok_arg1_1_4 =
  (((foldr_d6 orElse_d8) (`Nothing)) _lh_first_ok_arg1_1_4)
and first_ok_d5 _lh_first_ok_arg1_1 =
  (((foldr_d7 orElse_d9) (`Nothing)) _lh_first_ok_arg1_1)
and first_ok_d6 _lh_first_ok_arg1_5 =
  (((foldr_d8 orElse_d1_d0) (`Nothing)) _lh_first_ok_arg1_5)
and first_ok_d7 _lh_first_ok_arg1_7 =
  (((foldr_d9 orElse_d1_d1) (`Nothing)) _lh_first_ok_arg1_7)
and first_ok_d8 _lh_first_ok_arg1_8 =
  (((foldr_d1_d0 orElse_d1_d2) (`Nothing)) _lh_first_ok_arg1_8)
and first_ok_d9 _lh_first_ok_arg1_4 =
  (((foldr_d1_d2 orElse_d1_d4) (`Nothing)) _lh_first_ok_arg1_4)
and geRewrite_d0 _lh_geRewrite_arg1_1 _lh_geRewrite_arg2_1 _lh_geRewrite_arg3_1 =
  ((inList_d1 (_lh_geRewrite_arg1_1 (`LH_P2(_lh_geRewrite_arg2_1, _lh_geRewrite_arg3_1)))) (let rec _lh_inList_LH_C_0_1_0 = (`Greater) in
    (let rec _lh_inList_LH_C_1_1_0 = (let rec _lh_inList_LH_C_0_1_1 = (`Equal) in
      (let rec _lh_inList_LH_C_1_1_1 = (fun _lh_inList_arg1_1_6 -> 
        false) in
        (fun _lh_inList_arg1_1_7 -> 
          (if (_lh_inList_arg1_1_7 = _lh_inList_LH_C_0_1_1) then
            true
          else
            ((inList_d1 _lh_inList_arg1_1_7) _lh_inList_LH_C_1_1_1))))) in
      (fun _lh_inList_arg1_1_8 -> 
        (if (_lh_inList_arg1_1_8 = _lh_inList_LH_C_0_1_0) then
          true
        else
          ((inList_d1 _lh_inList_arg1_1_8) _lh_inList_LH_C_1_1_0))))))
and geRewrite_d1 _lh_geRewrite_arg1_2 _lh_geRewrite_arg2_2 _lh_geRewrite_arg3_2 =
  ((inList_d2 (_lh_geRewrite_arg1_2 (`LH_P2(_lh_geRewrite_arg2_2, _lh_geRewrite_arg3_2)))) (let rec _lh_inList_LH_C_0_1_2 = (`Greater) in
    (let rec _lh_inList_LH_C_1_1_2 = (let rec _lh_inList_LH_C_0_1_3 = (`Equal) in
      (let rec _lh_inList_LH_C_1_1_3 = (fun _lh_inList_arg1_2_0 -> 
        false) in
        (fun _lh_inList_arg1_2_1 -> 
          (if (_lh_inList_arg1_2_1 = _lh_inList_LH_C_0_1_3) then
            true
          else
            ((inList_d2 _lh_inList_arg1_2_1) _lh_inList_LH_C_1_1_3))))) in
      (fun _lh_inList_arg1_2_2 -> 
        (if (_lh_inList_arg1_2_2 = _lh_inList_LH_C_0_1_2) then
          true
        else
          ((inList_d2 _lh_inList_arg1_2_2) _lh_inList_LH_C_1_1_2))))))
and geRewrite_d2 _lh_geRewrite_arg1_0 _lh_geRewrite_arg2_0 _lh_geRewrite_arg3_0 =
  ((inList_d3 (_lh_geRewrite_arg1_0 (`LH_P2(_lh_geRewrite_arg2_0, _lh_geRewrite_arg3_0)))) (let rec _lh_inList_LH_C_0_8 = (`Greater) in
    (let rec _lh_inList_LH_C_1_8 = (let rec _lh_inList_LH_C_0_9 = (`Equal) in
      (let rec _lh_inList_LH_C_1_9 = (fun _lh_inList_arg1_9 -> 
        false) in
        (fun _lh_inList_arg1_1_0 -> 
          (if (_lh_inList_arg1_1_0 = _lh_inList_LH_C_0_9) then
            true
          else
            ((inList_d3 _lh_inList_arg1_1_0) _lh_inList_LH_C_1_9))))) in
      (fun _lh_inList_arg1_1_1 -> 
        (if (_lh_inList_arg1_1_1 = _lh_inList_LH_C_0_8) then
          true
        else
          ((inList_d3 _lh_inList_arg1_1_1) _lh_inList_LH_C_1_8))))))
and geRewrite_d3 _lh_geRewrite_arg1_3 _lh_geRewrite_arg2_3 _lh_geRewrite_arg3_3 =
  ((inList_d4 (_lh_geRewrite_arg1_3 (`LH_P2(_lh_geRewrite_arg2_3, _lh_geRewrite_arg3_3)))) (let rec _lh_inList_LH_C_0_1_4 = (`Greater) in
    (let rec _lh_inList_LH_C_1_1_4 = (let rec _lh_inList_LH_C_0_1_5 = (`Equal) in
      (let rec _lh_inList_LH_C_1_1_5 = (fun _lh_inList_arg1_2_4 -> 
        false) in
        (fun _lh_inList_arg1_2_5 -> 
          (if (_lh_inList_arg1_2_5 = _lh_inList_LH_C_0_1_5) then
            true
          else
            ((inList_d4 _lh_inList_arg1_2_5) _lh_inList_LH_C_1_1_5))))) in
      (fun _lh_inList_arg1_2_6 -> 
        (if (_lh_inList_arg1_2_6 = _lh_inList_LH_C_0_1_4) then
          true
        else
          ((inList_d4 _lh_inList_arg1_2_6) _lh_inList_LH_C_1_1_4))))))
and inside_d0 _lh_inside_arg1_0 _lh_inside_arg2_0 =
  (first_ok_d1 (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_7) -> 
        (match _lh_listcomp_fun_ls_h_1_3 with
          | `LH_P2(_lh_inside_LH_P2_0_0, _lh_inside_LH_P2_1_0) -> 
            (let rec h_7_2 = ((lift_d0 ((replace_d0 _lh_inside_arg2_0) _lh_inside_LH_P2_0_0)) (_lh_inside_arg1_0 _lh_inside_LH_P2_1_0)) in
              (let rec t_7_7 = (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_7) in
                (fun f_7_9 i_4_4 -> 
                  ((f_7_9 h_7_2) (((foldr_d3 f_7_9) i_4_4) t_7_7)))))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_7))
      | `LH_N -> 
        (fun f_8_0 i_4_5 -> 
          i_4_5))) in
    (_lh_listcomp_fun_2_0 (subterms_d0 _lh_inside_arg2_0))))
and inside_d1 _lh_inside_arg1_1 _lh_inside_arg2_1 =
  (first_ok_d2 (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_1_2 -> 
    (match _lh_listcomp_fun_para_1_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_8) -> 
        (match _lh_listcomp_fun_ls_h_1_4 with
          | `LH_P2(_lh_inside_LH_P2_0_1, _lh_inside_LH_P2_1_1) -> 
            (let rec h_7_8 = ((lift_d1_d0 ((replace_d1 _lh_inside_arg2_1) _lh_inside_LH_P2_0_1)) (_lh_inside_arg1_1 _lh_inside_LH_P2_1_1)) in
              (let rec t_8_3 = (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_8) in
                (fun f_8_5 i_4_6 -> 
                  ((f_8_5 h_7_8) (((foldr_d4 f_8_5) i_4_6) t_8_3)))))
          | _ -> 
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_1_8))
      | `LH_N -> 
        (fun f_8_6 i_4_7 -> 
          i_4_7))) in
    (_lh_listcomp_fun_2_1 (subterms_d1 _lh_inside_arg2_1))))
and listify_d0 _lh_listify_arg1_0 =
  ((getOrElse_d4 ((lift_d1_d3 box_d0) _lh_listify_arg1_0)) (fun ys_1_8 -> 
    ys_1_8))
and listify_d1 _lh_listify_arg1_1 =
  ((getOrElse_d5 ((lift_d1_d4 box_d1) _lh_listify_arg1_1)) (fun ys_3_6 -> 
    ys_3_6))
and map_dnet_d0 _lh_map_dnet_arg1_0 _lh_map_dnet_arg2_0 =
  (match _lh_map_dnet_arg2_0 with
    | `Switch(_lh_map_dnet_Switch_0_0, _lh_map_dnet_Switch_1_0) -> 
      (`Switch(((map_d2 ((cross_d3 (fun x_2_0 -> 
        x_2_0)) (map_dnet_d0 _lh_map_dnet_arg1_0))) _lh_map_dnet_Switch_0_0), ((map_dnet_d0 _lh_map_dnet_arg1_0) _lh_map_dnet_Switch_1_0)))
    | `Return(_lh_map_dnet_Return_0_0) -> 
      (`Return((_lh_map_dnet_arg1_0 _lh_map_dnet_Return_0_0)))
    | _ -> 
      (failwith "error"))
and map_d0 f_1_2_3 ls_6_4 _lh_popOutId_0_2_7 _lh_popOutId_1_1_7 =
  (match ls_6_4 with
    | `LH_C(h_1_0_9, t_1_1_6) -> 
      (let rec h_1_1_0 = (f_1_2_3 h_1_0_9) in
        (let rec t_1_1_7 = ((map_d0 f_1_2_3) t_1_1_6) in
          ((_lh_popOutId_0_2_7 h_1_1_0) (((foldr_d0 _lh_popOutId_0_2_7) _lh_popOutId_1_1_7) t_1_1_7))))
    | `LH_N -> 
      _lh_popOutId_1_1_7)
and map_d1 f_1_2_9 ls_6_7 _lh_popOutId_0_3_0 =
  (match ls_6_7 with
    | `LH_C(h_1_1_2, t_1_2_0) -> 
      (let rec h_1_1_3 = (f_1_2_9 h_1_1_2) in
        (let rec t_1_2_1 = ((map_d1 f_1_2_9) t_1_2_0) in
          (h_1_1_3 + (sum_d0 t_1_2_1))))
    | `LH_N -> 
      0)
and map_d1_d0 f_9_3 ls_4_8 _lh_popOutId_0_1_7 _lh_popOutId_1_1_0 =
  (match ls_4_8 with
    | `LH_C(h_8_4, t_8_9) -> 
      (let rec h_8_5 = (f_9_3 h_8_4) in
        (let rec t_9_0 = ((map_d1_d0 f_9_3) t_8_9) in
          ((_lh_popOutId_0_1_7 h_8_5) (((foldr_d1_d1 _lh_popOutId_0_1_7) _lh_popOutId_1_1_0) t_9_0))))
    | `LH_N -> 
      _lh_popOutId_1_1_0)
and map_d1_d1 f_5_2 ls_1_9 _lh_popOutId_0_7 =
  (match ls_1_9 with
    | `LH_C(h_4_4, t_4_5) -> 
      (let rec hx_2 = (f_5_2 h_4_4) in
        (let rec tx_2 = ((map_d1_d1 f_5_2) t_4_5) in
          (match _lh_popOutId_0_7 with
            | `LH_C(hy_3, ty_3) -> 
              (`LH_C((`LH_P2(hx_2, hy_3)), ((zip_d3 tx_2) ty_3)))
            | `LH_N -> 
              (`LH_N))))
    | `LH_N -> 
      (`LH_N))
and map_d1_d2 f_1_0_7 ls_5_4 _lh_popOutId_0_2_4 =
  (match ls_5_4 with
    | `LH_C(h_9_7, t_1_0_2) -> 
      (let rec _lh_inList_LH_C_0_1_6 = (f_1_0_7 h_9_7) in
        (let rec _lh_inList_LH_C_1_1_6 = ((map_d1_d2 f_1_0_7) t_1_0_2) in
          (if (_lh_popOutId_0_2_4 = _lh_inList_LH_C_0_1_6) then
            true
          else
            ((inList_d0 _lh_popOutId_0_2_4) _lh_inList_LH_C_1_1_6))))
    | `LH_N -> 
      false)
and map_d1_d3 f_4_5 ls_1_5 _lh_popOutId_0_5 =
  (match ls_1_5 with
    | `LH_C(h_3_5, t_3_6) -> 
      (fun f_4_6 f_4_7 _lh_dummy_5 -> 
        (let rec h_3_6 = (f_4_5 h_3_5) in
          (let rec t_3_7 = ((map_d1_d3 f_4_5) t_3_6) in
            (let rec h_3_7 = h_3_6 in
              (let rec t_3_8 = ((mappend_d5 t_3_7) _lh_popOutId_0_5) in
                (let rec h_3_8 = (f_4_6 h_3_7) in
                  (let rec t_3_9 = ((map_d1_d4 f_4_6) t_3_8) in
                    (let rec h_3_9 = (f_4_7 h_3_8) in
                      (let rec t_4_0 = ((map_d2_d5 f_4_7) t_3_9) in
                        ((mappend_d1_d1 h_3_9) (concat_d2 t_4_0)))))))))))
    | `LH_N -> 
      _lh_popOutId_0_5)
and map_d1_d6 f_1_0_3 ls_5_2 _lh_popOutId_0_2_0 =
  (match ls_5_2 with
    | `LH_C(h_9_3, t_9_8) -> 
      (let rec _lh_or_LH_C_0_2 = (f_1_0_3 h_9_3) in
        (let rec _lh_or_LH_C_1_2 = ((map_d1_d6 f_1_0_3) t_9_8) in
          (if _lh_or_LH_C_0_2 then
            true
          else
            (or_d0 _lh_or_LH_C_1_2))))
    | `LH_N -> 
      false)
and map_d1_d7 f_1_4_1 ls_7_4 _lh_popOutId_0_3_3 =
  (match ls_7_4 with
    | `LH_C(h_1_2_0, t_1_3_0) -> 
      (let rec _lh_or_LH_C_0_3 = (f_1_4_1 h_1_2_0) in
        (let rec _lh_or_LH_C_1_3 = ((map_d1_d7 f_1_4_1) t_1_3_0) in
          (if _lh_or_LH_C_0_3 then
            true
          else
            (or_d1 _lh_or_LH_C_1_3))))
    | `LH_N -> 
      false)
and map_d1_d8 f_4_9 ls_1_7 _lh_popOutId_0_6 _lh_popOutId_1_4 =
  (match ls_1_7 with
    | `LH_C(h_4_1, t_4_2) -> 
      (let rec h_4_2 = (f_4_9 h_4_1) in
        (let rec t_4_3 = ((map_d1_d8 f_4_9) t_4_2) in
          ((_lh_popOutId_0_6 h_4_2) (((foldr_d5 _lh_popOutId_0_6) _lh_popOutId_1_4) t_4_3))))
    | `LH_N -> 
      _lh_popOutId_1_4)
and map_d1_d9 f_3_1 ls_6 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (match ls_6 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec h_2_7 = (f_3_1 h_2_6) in
        (let rec t_2_7 = ((map_d1_d9 f_3_1) t_2_6) in
          ((_lh_popOutId_0_2 h_2_7) (((foldr_d6 _lh_popOutId_0_2) _lh_popOutId_1_2) t_2_7))))
    | `LH_N -> 
      _lh_popOutId_1_2)
and map_d2_d1 f_1_3_1 ls_6_9 _lh_popOutId_0_3_1 _lh_popOutId_1_2_0 =
  (match ls_6_9 with
    | `LH_C(h_1_1_4, t_1_2_2) -> 
      (let rec h_1_1_5 = (f_1_3_1 h_1_1_4) in
        (let rec t_1_2_3 = ((map_d2_d1 f_1_3_1) t_1_2_2) in
          ((_lh_popOutId_0_3_1 h_1_1_5) (((foldr_d7 _lh_popOutId_0_3_1) _lh_popOutId_1_2_0) t_1_2_3))))
    | `LH_N -> 
      _lh_popOutId_1_2_0)
and map_d2_d2 f_2_8 ls_5 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (match ls_5 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec h_2_4 = (f_2_8 h_2_3) in
        (let rec t_2_4 = ((map_d2_d2 f_2_8) t_2_3) in
          ((_lh_popOutId_0_1 h_2_4) (((foldr_d8 _lh_popOutId_0_1) _lh_popOutId_1_1) t_2_4))))
    | `LH_N -> 
      _lh_popOutId_1_1)
and map_d3_d2 f_7_0 ls_3_4 _lh_popOutId_0_1_1 _lh_popOutId_1_7 =
  (match ls_3_4 with
    | `LH_C(h_6_1, t_6_5) -> 
      (let rec h_6_2 = (f_7_0 h_6_1) in
        (let rec t_6_6 = ((map_d3_d2 f_7_0) t_6_5) in
          ((_lh_popOutId_0_1_1 h_6_2) (((foldr_d9 _lh_popOutId_0_1_1) _lh_popOutId_1_7) t_6_6))))
    | `LH_N -> 
      _lh_popOutId_1_7)
and map_d3_d4 f_1_0_0 ls_5_1 _lh_popOutId_0_1_9 _lh_popOutId_1_1_1 =
  (match ls_5_1 with
    | `LH_C(h_9_1, t_9_6) -> 
      (let rec h_9_2 = (f_1_0_0 h_9_1) in
        (let rec t_9_7 = ((map_d3_d4 f_1_0_0) t_9_6) in
          ((_lh_popOutId_0_1_9 h_9_2) (((foldr_d1_d0 _lh_popOutId_0_1_9) _lh_popOutId_1_1_1) t_9_7))))
    | `LH_N -> 
      _lh_popOutId_1_1_1)
and map_d3_d6 f_6_2 ls_2_8 _lh_popOutId_0_1_0 _lh_popOutId_1_6 =
  (match ls_2_8 with
    | `LH_C(h_5_4, t_5_7) -> 
      (let rec h_5_5 = (f_6_2 h_5_4) in
        (let rec t_5_8 = ((map_d3_d6 f_6_2) t_5_7) in
          ((_lh_popOutId_0_1_0 h_5_5) (((foldr_d1_d2 _lh_popOutId_0_1_0) _lh_popOutId_1_6) t_5_8))))
    | `LH_N -> 
      _lh_popOutId_1_6)
and map_d3_d7 f_1_1_8 ls_6_1 _lh_popOutId_0_2_6 _lh_popOutId_1_1_6 =
  (match ls_6_1 with
    | `LH_C(h_1_0_6, t_1_1_3) -> 
      (let rec h_1_0_7 = (f_1_1_8 h_1_0_6) in
        (let rec t_1_1_4 = ((map_d3_d7 f_1_1_8) t_1_1_3) in
          ((_lh_popOutId_0_2_6 h_1_0_7) (((foldr_d1_d3 _lh_popOutId_0_2_6) _lh_popOutId_1_1_6) t_1_1_4))))
    | `LH_N -> 
      _lh_popOutId_1_1_6)
and map_d3_d9 f_8_7 ls_4_2 _lh_popOutId_0_1_6 =
  (match ls_4_2 with
    | `LH_C(h_8_0, t_8_5) -> 
      (let rec _lh_or_LH_C_0_1 = (f_8_7 h_8_0) in
        (let rec _lh_or_LH_C_1_1 = ((map_d3_d9 f_8_7) t_8_5) in
          (if _lh_or_LH_C_0_1 then
            true
          else
            (or_d2 _lh_or_LH_C_1_1))))
    | `LH_N -> 
      false)
and map_d4 f_7_4 ls_3_6 _lh_popOutId_0_1_2 =
  (match ls_3_6 with
    | `LH_C(h_6_4, t_6_8) -> 
      (fun ys_2_9 f_7_5 f_7_6 _lh_dummy_8 -> 
        (let rec h_6_5 = (f_7_4 h_6_4) in
          (let rec t_6_9 = ((map_d4 f_7_4) t_6_8) in
            (let rec h_6_6 = h_6_5 in
              (let rec t_7_0 = ((mappend_d3 t_6_9) _lh_popOutId_0_1_2) in
                (let rec h_6_7 = h_6_6 in
                  (let rec t_7_1 = ((mappend_d0 t_7_0) ys_2_9) in
                    (let rec h_6_8 = (f_7_5 h_6_7) in
                      (let rec t_7_2 = ((map_d1_d4 f_7_5) t_7_1) in
                        (let rec h_6_9 = (f_7_6 h_6_8) in
                          (let rec t_7_3 = ((map_d2_d5 f_7_6) t_7_2) in
                            ((mappend_d1_d1 h_6_9) (concat_d2 t_7_3)))))))))))))
    | `LH_N -> 
      _lh_popOutId_0_1_2)
and map_d4_d0 f_3_8 ls_1_1 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (match ls_1_1 with
    | `LH_C(h_3_1, t_3_1) -> 
      (let rec h_3_2 = (f_3_8 h_3_1) in
        (let rec t_3_2 = ((map_d4_d0 f_3_8) t_3_1) in
          ((_lh_popOutId_0_3 h_3_2) (((foldr_d1_d4 _lh_popOutId_0_3) _lh_popOutId_1_3) t_3_2))))
    | `LH_N -> 
      _lh_popOutId_1_3)
and map_d4_d2 f_1_3_6 ls_7_2 _lh_popOutId_0_3_2 _lh_popOutId_1_2_1 =
  (match ls_7_2 with
    | `LH_C(h_1_1_7, t_1_2_5) -> 
      (let rec h_1_1_8 = (f_1_3_6 h_1_1_7) in
        (let rec t_1_2_6 = ((map_d4_d2 f_1_3_6) t_1_2_5) in
          ((_lh_popOutId_0_3_2 h_1_1_8) (((foldr_d1_d5 _lh_popOutId_0_3_2) _lh_popOutId_1_2_1) t_1_2_6))))
    | `LH_N -> 
      _lh_popOutId_1_2_1)
and map_d4_d3 f_5_7 ls_2_4 _lh_popOutId_0_9 _lh_popOutId_1_5 =
  (match ls_2_4 with
    | `LH_C(h_4_8, t_5_0) -> 
      (let rec h_4_9 = (f_5_7 h_4_8) in
        (let rec t_5_1 = ((map_d4_d3 f_5_7) t_5_0) in
          ((_lh_popOutId_0_9 h_4_9) (((foldr_d1_d6 _lh_popOutId_0_9) _lh_popOutId_1_5) t_5_1))))
    | `LH_N -> 
      _lh_popOutId_1_5)
and map_d4_d5 f_4_1 ls_1_2 _lh_popOutId_0_4 =
  (match ls_1_2 with
    | `LH_C(h_3_3, t_3_3) -> 
      (let rec _lh_or_LH_C_0_0 = (f_4_1 h_3_3) in
        (let rec _lh_or_LH_C_1_0 = ((map_d4_d5 f_4_1) t_3_3) in
          (if _lh_or_LH_C_0_0 then
            true
          else
            (or_d3 _lh_or_LH_C_1_0))))
    | `LH_N -> 
      false)
and map_d4_d6 f_1_0_4 ls_5_3 _lh_popOutId_0_2_3 _lh_popOutId_1_1_4 =
  (match ls_5_3 with
    | `LH_C(h_9_4, t_9_9) -> 
      (let rec h_9_5 = (f_1_0_4 h_9_4) in
        (let rec t_1_0_0 = ((map_d4_d6 f_1_0_4) t_9_9) in
          ((_lh_popOutId_0_2_3 h_9_5) (((foldr_d1_d7 _lh_popOutId_0_2_3) _lh_popOutId_1_1_4) t_1_0_0))))
    | `LH_N -> 
      _lh_popOutId_1_1_4)
and map_d5 f_9_7 ls_5_0 _lh_popOutId_0_1_8 =
  (match ls_5_0 with
    | `LH_C(h_8_6, t_9_1) -> 
      (fun f_9_8 f_9_9 _lh_dummy_1_2 -> 
        (let rec h_8_7 = (f_9_7 h_8_6) in
          (let rec t_9_2 = ((map_d5 f_9_7) t_9_1) in
            (let rec h_8_8 = h_8_7 in
              (let rec t_9_3 = ((mappend_d0 t_9_2) _lh_popOutId_0_1_8) in
                (let rec h_8_9 = (f_9_8 h_8_8) in
                  (let rec t_9_4 = ((map_d1_d4 f_9_8) t_9_3) in
                    (let rec h_9_0 = (f_9_9 h_8_9) in
                      (let rec t_9_5 = ((map_d2_d5 f_9_9) t_9_4) in
                        ((mappend_d1_d1 h_9_0) (concat_d2 t_9_5)))))))))))
    | `LH_N -> 
      _lh_popOutId_0_1_8)
and map_d6 f_2 ls_3 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      (let rec h_3 = (f_2 h_2) in
        (let rec t_3 = ((map_d6 f_2) t_2) in
          ((_lh_popOutId_0_0 h_3) (((foldr_d2 _lh_popOutId_0_0) _lh_popOutId_1_0) t_3))))
    | `LH_N -> 
      _lh_popOutId_1_0)
and map_d7 f_1_1_0 ls_5_7 _lh_popOutId_0_2_5 _lh_popOutId_1_1_5 =
  (match ls_5_7 with
    | `LH_C(h_9_9, t_1_0_4) -> 
      (let rec h_1_0_0 = (f_1_1_0 h_9_9) in
        (let rec t_1_0_5 = ((map_d7 f_1_1_0) t_1_0_4) in
          (let rec h_1_0_1 = (_lh_popOutId_0_2_5 h_1_0_0) in
            (let rec t_1_0_6 = ((map_d9 _lh_popOutId_0_2_5) t_1_0_5) in
              ((mappend_d0 h_1_0_1) (concat_d0 t_1_0_6))))))
    | `LH_N -> 
      (fun f_1_1_3 f_1_1_4 _lh_dummy_1_7 -> 
        (`LH_N)))
and map_d8 f_8_2 ls_4_0 _lh_popOutId_0_1_5 =
  (match ls_4_0 with
    | `LH_C(h_7_3, t_7_8) -> 
      (fun f_8_3 f_8_4 _lh_dummy_9 -> 
        (let rec h_7_4 = (f_8_2 h_7_3) in
          (let rec t_7_9 = ((map_d8 f_8_2) t_7_8) in
            (let rec h_7_5 = h_7_4 in
              (let rec t_8_0 = ((mappend_d4 t_7_9) _lh_popOutId_0_1_5) in
                (let rec h_7_6 = (f_8_3 h_7_5) in
                  (let rec t_8_1 = ((map_d1_d4 f_8_3) t_8_0) in
                    (let rec h_7_7 = (f_8_4 h_7_6) in
                      (let rec t_8_2 = ((map_d2_d5 f_8_4) t_8_1) in
                        ((mappend_d1_d1 h_7_7) (concat_d2 t_8_2)))))))))))
    | `LH_N -> 
      _lh_popOutId_0_1_5)
and match_d0 _lh_match_arg1_1 _lh_match_arg2_1 =
  ((match'_d0 (`LH_N)) (let rec _lh_match'_LH_P2_0_3 = _lh_match_arg1_1 in
    (let rec _lh_match'_LH_P2_1_3 = _lh_match_arg2_1 in
      (fun _lh_match'_arg1_4 -> 
        (match _lh_match'_LH_P2_0_3 with
          | `Var(_lh_match'_Var_0_6) -> 
            (let rec u_3 = ((assoc_d1 _lh_match'_arg1_4) _lh_match'_Var_0_6) in
              (if (not (exists_d2 u_3)) then
                (succeed_d0 (`LH_C((`LH_P2(_lh_match'_Var_0_6, _lh_match'_LH_P2_1_3)), _lh_match'_arg1_4)))
              else
                (if ((eqExpr_d3 (the_d0 u_3)) _lh_match'_LH_P2_1_3) then
                  (succeed_d1 _lh_match'_arg1_4)
                else
                  croak_d4)))
          | `Func(_lh_match'_Func_0_6, _lh_match'_Func_1_6) -> 
            (match _lh_match'_LH_P2_1_3 with
              | `Func(_lh_match'_Func_0_7, _lh_match'_Func_1_7) -> 
                (if (_lh_match'_Func_0_6 = _lh_match'_Func_0_7) then
                  (((prop_fold_d0 match'_d0) _lh_match'_arg1_4) ((zip_d0 _lh_match'_Func_1_6) _lh_match'_Func_1_7))
                else
                  croak_d5)
              | `Var(_lh_match'_Var_0_7) -> 
                croak_d6
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))))))
and match_d1 _lh_match_arg1_0 _lh_match_arg2_0 =
  ((match'_d1 (`LH_N)) (let rec _lh_match'_LH_P2_0_0 = _lh_match_arg1_0 in
    (let rec _lh_match'_LH_P2_1_0 = _lh_match_arg2_0 in
      (fun _lh_match'_arg1_1 -> 
        (match _lh_match'_LH_P2_0_0 with
          | `Var(_lh_match'_Var_0_0) -> 
            (let rec u_0 = ((assoc_d3 _lh_match'_arg1_1) _lh_match'_Var_0_0) in
              (if (not (exists_d3 u_0)) then
                (succeed_d2 (`LH_C((`LH_P2(_lh_match'_Var_0_0, _lh_match'_LH_P2_1_0)), _lh_match'_arg1_1)))
              else
                (if ((eqExpr_d4 (the_d1 u_0)) _lh_match'_LH_P2_1_0) then
                  (succeed_d3 _lh_match'_arg1_1)
                else
                  croak_d7)))
          | `Func(_lh_match'_Func_0_0, _lh_match'_Func_1_0) -> 
            (match _lh_match'_LH_P2_1_0 with
              | `Func(_lh_match'_Func_0_1, _lh_match'_Func_1_1) -> 
                (if (_lh_match'_Func_0_0 = _lh_match'_Func_0_1) then
                  (((prop_fold_d1 match'_d1) _lh_match'_arg1_1) ((zip_d1 _lh_match'_Func_1_0) _lh_match'_Func_1_1))
                else
                  croak_d8)
              | `Var(_lh_match'_Var_0_1) -> 
                croak_d9
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))))))
and occurs_d0 _lh_occurs_arg1_2 =
  ((expr_fold_d1 (fun dum_4 -> 
    or_d0)) (fun x_2_6 -> 
    (x_2_6 = _lh_occurs_arg1_2)))
and occurs_d1 _lh_occurs_arg1_3 =
  ((expr_fold_d2 (fun dum_5 -> 
    or_d1)) (fun x_3_7 -> 
    (x_3_7 = _lh_occurs_arg1_3)))
and occurs_d2 _lh_occurs_arg1_0 =
  ((expr_fold_d1_d4 (fun dum_2 -> 
    or_d2)) (fun x_2_1 -> 
    (x_2_1 = _lh_occurs_arg1_0)))
and occurs_d3 _lh_occurs_arg1_1 =
  ((expr_fold_d1_d7 (fun dum_3 -> 
    or_d3)) (fun x_2_2 -> 
    (x_2_2 = _lh_occurs_arg1_1)))
and orElseMap_d0 _lh_orElseMap_arg1_1 _lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1 =
  ((orElse_d2 (_lh_orElseMap_arg1_1 _lh_orElseMap_arg3_1)) (_lh_orElseMap_arg2_1 _lh_orElseMap_arg3_1))
and orElseMap_d1 _lh_orElseMap_arg1_4 _lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4 =
  ((orElse_d3 (_lh_orElseMap_arg1_4 _lh_orElseMap_arg3_4)) (_lh_orElseMap_arg2_4 _lh_orElseMap_arg3_4))
and orElseMap_d2 _lh_orElseMap_arg1_3 _lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3 =
  ((orElse_d4 (_lh_orElseMap_arg1_3 _lh_orElseMap_arg3_3)) (_lh_orElseMap_arg2_3 _lh_orElseMap_arg3_3))
and orElseMap_d3 _lh_orElseMap_arg1_2 _lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2 =
  ((orElse_d5 (_lh_orElseMap_arg1_2 _lh_orElseMap_arg3_2)) (_lh_orElseMap_arg2_2 _lh_orElseMap_arg3_2))
and orElseMap_d4 _lh_orElseMap_arg1_0 _lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0 =
  ((orElse_d1_d3 (_lh_orElseMap_arg1_0 _lh_orElseMap_arg3_0)) (_lh_orElseMap_arg2_0 _lh_orElseMap_arg3_0))
and reduce1_d0 _lh_reduce1_arg1_0 =
  (inside_d1 (rewrite_d0 _lh_reduce1_arg1_0))
and replace_d0 _lh_replace_arg1_2 _lh_replace_arg2_2 _lh_replace_arg3_2 =
  (match _lh_replace_arg2_2 with
    | `LH_N -> 
      _lh_replace_arg3_2
    | _ -> 
      (match _lh_replace_arg1_2 with
        | `Func(_lh_replace_Func_0_2, _lh_replace_Func_1_2) -> 
          (match _lh_replace_arg2_2 with
            | `LH_C(_lh_replace_LH_C_0_2, _lh_replace_LH_C_1_2) -> 
              (`Func(_lh_replace_Func_0_2, (((modify_d0 _lh_replace_Func_1_2) _lh_replace_LH_C_0_2) (fun t_1_1_2 -> 
                (((replace_d0 t_1_1_2) _lh_replace_LH_C_1_2) _lh_replace_arg3_2)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace_d1 _lh_replace_arg1_1 _lh_replace_arg2_1 _lh_replace_arg3_1 =
  (match _lh_replace_arg2_1 with
    | `LH_N -> 
      _lh_replace_arg3_1
    | _ -> 
      (match _lh_replace_arg1_1 with
        | `Func(_lh_replace_Func_0_1, _lh_replace_Func_1_1) -> 
          (match _lh_replace_arg2_1 with
            | `LH_C(_lh_replace_LH_C_0_1, _lh_replace_LH_C_1_1) -> 
              (`Func(_lh_replace_Func_0_1, (((modify_d1 _lh_replace_Func_1_1) _lh_replace_LH_C_0_1) (fun t_6_1 -> 
                (((replace_d1 t_6_1) _lh_replace_LH_C_1_1) _lh_replace_arg3_1)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and replace_d2 _lh_replace_arg1_0 _lh_replace_arg2_0 _lh_replace_arg3_0 =
  (match _lh_replace_arg2_0 with
    | `LH_N -> 
      _lh_replace_arg3_0
    | _ -> 
      (match _lh_replace_arg1_0 with
        | `Func(_lh_replace_Func_0_0, _lh_replace_Func_1_0) -> 
          (match _lh_replace_arg2_0 with
            | `LH_C(_lh_replace_LH_C_0_0, _lh_replace_LH_C_1_0) -> 
              (`Func(_lh_replace_Func_0_0, (((modify_d2 _lh_replace_Func_1_0) _lh_replace_LH_C_0_0) (fun t_5_6 -> 
                (((replace_d2 t_5_6) _lh_replace_LH_C_1_0) _lh_replace_arg3_0)))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error")))
and rewrite_d0 _lh_rewrite_arg1_1 =
  (match _lh_rewrite_arg1_1 with
    | `Eqn(_lh_rewrite_Eqn_0_1, _lh_rewrite_Eqn_1_1) -> 
      (match _lh_rewrite_Eqn_1_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (fun _lh_funcomp_x_1_3 -> 
            ((lift_d1_d1 (sub_d0 _lh_rewrite_LH_P2_1_1)) ((match_d0 _lh_rewrite_LH_P2_0_1) _lh_funcomp_x_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewrite_d1 _lh_rewrite_arg1_0 =
  (match _lh_rewrite_arg1_0 with
    | `Eqn(_lh_rewrite_Eqn_0_0, _lh_rewrite_Eqn_1_0) -> 
      (match _lh_rewrite_Eqn_1_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (fun _lh_funcomp_x_1_1 -> 
            ((lift_d1_d2 (sub_d1 _lh_rewrite_LH_P2_1_0)) ((match_d1 _lh_rewrite_LH_P2_0_0) _lh_funcomp_x_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and sift_d0 _lh_sift_arg1_1 =
  ((fun _lh_funcomp_x_1_2 -> 
    (concat_d1 ((map_d2_d4 listify_d0) _lh_funcomp_x_1_2))) _lh_sift_arg1_1)
and sift_d1 _lh_sift_arg1_0 =
  ((fun _lh_funcomp_x_1_0 -> 
    (concat_d2 ((map_d2_d5 listify_d1) _lh_funcomp_x_1_0))) _lh_sift_arg1_0)
and simplify_d0 _lh_simplify_arg1_1 =
  (let rec f_5_5 = (fun t_4_8 -> 
    ((getOrElse_d6 ((lift_d1_d5 f_5_5) (_lh_simplify_arg1_1 t_4_8))) t_4_8)) in
    f_5_5)
and simplify_d1 _lh_simplify_arg1_2 =
  (let rec f_1_1_7 = (fun t_1_1_0 -> 
    ((getOrElse_d7 ((lift_d1_d6 f_1_1_7) (_lh_simplify_arg1_2 t_1_1_0))) t_1_1_0)) in
    f_1_1_7)
and simplify_d2 _lh_simplify_arg1_4 =
  (let rec f_1_4_0 = (fun t_1_2_9 -> 
    ((getOrElse_d8 ((lift_d1_d7 f_1_4_0) (_lh_simplify_arg1_4 t_1_2_9))) t_1_2_9)) in
    f_1_4_0)
and simplify_d3 _lh_simplify_arg1_0 =
  (let rec f_4_4 = (fun t_3_5 -> 
    ((getOrElse_d9 ((lift_d1_d8 f_4_4) (_lh_simplify_arg1_0 t_3_5))) t_3_5)) in
    f_4_4)
and simplify_d4 _lh_simplify_arg1_3 =
  (let rec f_1_2_7 = (fun t_1_1_8 -> 
    ((getOrElse_d1_d0 ((lift_d1_d9 f_1_2_7) (_lh_simplify_arg1_3 t_1_1_8))) t_1_1_8)) in
    f_1_2_7)
and stand_eqn_d0 _lh_stand_eqn_arg1_1 _lh_stand_eqn_arg2_1 =
  (match _lh_stand_eqn_arg2_1 with
    | `Eqn(_lh_stand_eqn_Eqn_0_1, _lh_stand_eqn_Eqn_1_1) -> 
      (match _lh_stand_eqn_Eqn_1_1 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_1, _lh_stand_eqn_LH_P2_1_1) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_1, (`LH_P2(((stand_d0 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_0_1), ((stand_d1 _lh_stand_eqn_arg1_1) _lh_stand_eqn_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn_d1 _lh_stand_eqn_arg1_2 _lh_stand_eqn_arg2_2 =
  (match _lh_stand_eqn_arg2_2 with
    | `Eqn(_lh_stand_eqn_Eqn_0_2, _lh_stand_eqn_Eqn_1_2) -> 
      (match _lh_stand_eqn_Eqn_1_2 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_2, _lh_stand_eqn_LH_P2_1_2) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_2, (`LH_P2(((stand_d2 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_0_2), ((stand_d3 _lh_stand_eqn_arg1_2) _lh_stand_eqn_LH_P2_1_2)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_eqn_d2 _lh_stand_eqn_arg1_0 _lh_stand_eqn_arg2_0 =
  (match _lh_stand_eqn_arg2_0 with
    | `Eqn(_lh_stand_eqn_Eqn_0_0, _lh_stand_eqn_Eqn_1_0) -> 
      (match _lh_stand_eqn_Eqn_1_0 with
        | `LH_P2(_lh_stand_eqn_LH_P2_0_0, _lh_stand_eqn_LH_P2_1_0) -> 
          (`Eqn(_lh_stand_eqn_Eqn_0_0, (`LH_P2(((stand_d4 _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_0_0), ((stand_d5 _lh_stand_eqn_arg1_0) _lh_stand_eqn_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stand_d0 _lh_stand_arg1_4 =
  ((expr_fold_d5 (fun x_3_3 y_1_1 -> 
    (`Func(x_3_3, y_1_1)))) (fun v_4 -> 
    (`Var(((mappend_d1_d2 v_4) _lh_stand_arg1_4)))))
and stand_d1 _lh_stand_arg1_3 =
  ((expr_fold_d6 (fun x_3_0 y_9 -> 
    (`Func(x_3_0, y_9)))) (fun v_3 -> 
    (`Var(((mappend_d1_d3 v_3) _lh_stand_arg1_3)))))
and stand_d2 _lh_stand_arg1_5 =
  ((expr_fold_d7 (fun x_3_9 y_1_3 -> 
    (`Func(x_3_9, y_1_3)))) (fun v_5 -> 
    (`Var(((mappend_d1_d4 v_5) _lh_stand_arg1_5)))))
and stand_d3 _lh_stand_arg1_1 =
  ((expr_fold_d8 (fun x_1_6 y_3 -> 
    (`Func(x_1_6, y_3)))) (fun v_1 -> 
    (`Var(((mappend_d1_d5 v_1) _lh_stand_arg1_1)))))
and stand_d4 _lh_stand_arg1_0 =
  ((expr_fold_d9 (fun x_1_3 y_2 -> 
    (`Func(x_1_3, y_2)))) (fun v_0 -> 
    (`Var(((mappend_d1_d6 v_0) _lh_stand_arg1_0)))))
and stand_d5 _lh_stand_arg1_2 =
  ((expr_fold_d1_d0 (fun x_2_9 y_8 -> 
    (`Func(x_2_9, y_8)))) (fun v_2 -> 
    (`Var(((mappend_d1_d7 v_2) _lh_stand_arg1_2)))))
and subterms_d0 _lh_subterms_arg1_0 =
  (match _lh_subterms_arg1_0 with
    | `Var(_lh_subterms_Var_0_0) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0) -> 
      ((mappend_d1 (let rec h_7_1 = (`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_0, _lh_subterms_Func_1_0)))) in
        (let rec t_7_5 = (fun ys_3_3 -> 
          ys_3_3) in
          (fun ys_3_4 -> 
            (`LH_C(h_7_1, ((mappend_d1 t_7_5) ys_3_4))))))) (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_0 -> 
        (_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_1_9)) in
        (_lh_listcomp_fun_1_9 ((zip_lz_nl_d0 (enumFrom_d1 0)) _lh_subterms_Func_1_0))))
    | _ -> 
      (failwith "error"))
and subterms_d1 _lh_subterms_arg1_1 =
  (match _lh_subterms_arg1_1 with
    | `Var(_lh_subterms_Var_0_1) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1) -> 
      ((mappend_d9 (let rec h_1_0_4 = (`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_1, _lh_subterms_Func_1_1)))) in
        (let rec t_1_0_9 = (fun ys_5_1 -> 
          ys_5_1) in
          (fun ys_5_2 -> 
            (`LH_C(h_1_0_4, ((mappend_d9 t_1_0_9) ys_5_2))))))) (let rec _lh_listcomp_fun_2_5 = (fun _lh_listcomp_fun_para_1_3 -> 
        (_lh_listcomp_fun_para_1_3 _lh_listcomp_fun_2_5)) in
        (_lh_listcomp_fun_2_5 ((zip_lz_nl_d1 (enumFrom_d2 0)) _lh_subterms_Func_1_1))))
    | _ -> 
      (failwith "error"))
and subterms_d2 _lh_subterms_arg1_2 =
  (match _lh_subterms_arg1_2 with
    | `Var(_lh_subterms_Var_0_2) -> 
      (`LH_N)
    | `Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2) -> 
      ((mappend_d1_d8 (let rec h_1_1_9 = (`LH_P2((`LH_N), (`Func(_lh_subterms_Func_0_2, _lh_subterms_Func_1_2)))) in
        (let rec t_1_2_8 = (fun ys_5_6 -> 
          ys_5_6) in
          (fun ys_5_7 -> 
            (`LH_C(h_1_1_9, ((mappend_d1_d8 t_1_2_8) ys_5_7))))))) (let rec _lh_listcomp_fun_2_6 = (fun _lh_listcomp_fun_para_1_4 -> 
        (_lh_listcomp_fun_para_1_4 _lh_listcomp_fun_2_6)) in
        (_lh_listcomp_fun_2_6 ((zip_lz_nl_d2 (enumFrom_d3 0)) _lh_subterms_Func_1_2))))
    | _ -> 
      (failwith "error"))
and sub_d0 _lh_sub_arg1_1 _lh_sub_arg2_1 =
  (((expr_fold_d3 (fun x_1_8 y_4 -> 
    (`Func(x_1_8, y_4)))) (apply_d0 _lh_sub_arg2_1)) _lh_sub_arg1_1)
and sub_d1 _lh_sub_arg1_4 _lh_sub_arg2_4 =
  (((expr_fold_d4 (fun x_2_8 y_7 -> 
    (`Func(x_2_8, y_7)))) (apply_d1 _lh_sub_arg2_4)) _lh_sub_arg1_4)
and sub_d2 _lh_sub_arg1_6 _lh_sub_arg2_6 =
  (((expr_fold_d1_d1 (fun x_3_6 y_1_2 -> 
    (`Func(x_3_6, y_1_2)))) (apply_d2 _lh_sub_arg2_6)) _lh_sub_arg1_6)
and sub_d3 _lh_sub_arg1_0 _lh_sub_arg2_0 =
  (((expr_fold_d1_d2 (fun x_0 y_0 -> 
    (`Func(x_0, y_0)))) (apply_d3 _lh_sub_arg2_0)) _lh_sub_arg1_0)
and sub_d4 _lh_sub_arg1_7 _lh_sub_arg2_7 =
  (((expr_fold_d1_d3 (fun x_4_0 y_1_4 -> 
    (`Func(x_4_0, y_1_4)))) (apply_d4 _lh_sub_arg2_7)) _lh_sub_arg1_7)
and sub_d5 _lh_sub_arg1_3 _lh_sub_arg2_3 =
  (((expr_fold_d1_d5 (fun x_2_5 y_6 -> 
    (`Func(x_2_5, y_6)))) (apply_d5 _lh_sub_arg2_3)) _lh_sub_arg1_3)
and sub_d6 _lh_sub_arg1_5 _lh_sub_arg2_5 =
  (((expr_fold_d1_d6 (fun x_3_2 y_1_0 -> 
    (`Func(x_3_2, y_1_0)))) (apply_d6 _lh_sub_arg2_5)) _lh_sub_arg1_5)
and sub_d7 _lh_sub_arg1_2 _lh_sub_arg2_2 =
  (((expr_fold_d1_d8 (fun x_1_9 y_5 -> 
    (`Func(x_1_9, y_5)))) (apply_d7 _lh_sub_arg2_2)) _lh_sub_arg1_2)
and testRewrite_nofib_d0 _lh_testRewrite_nofib_arg1_0 =
  ((all_d0 result_d0) ((copy_d0 _lh_testRewrite_nofib_arg1_0) (let rec _lh_result_LH_P2_0_0 = (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_N))))))))))))))))) in
    (let rec _lh_result_LH_P2_1_0 = (`LH_C('I', (`LH_C('(', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('I', (`LH_C('(', (`LH_C('a', (`LH_C(')', (`LH_N))))))))))))))))))))))) in
      (fun _lh_dummy_0 -> 
        let rec multi_0 = (fun _lh_multi_arg1_0 _lh_multi_arg2_0 -> 
          (((_lh_multi_arg2_0 _lh_multi_arg1_0) dominates_0) rem_eq_0))
        and rank_order_0 = (fun _lh_rank_order_arg1_0 _lh_rank_order_arg2_0 -> 
          ((_lh_rank_order_arg2_0 _lh_rank_order_arg1_0) num_order_0))
        and superpose_0 = (fun _lh_superpose_arg1_0 _lh_superpose_arg2_0 -> 
          (sift_d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_P2(_lh_superpose_LH_P2_0_0, _lh_superpose_LH_P2_1_0) -> 
                    (let rec h_4 = ((lift_d7 (pair_d1 _lh_superpose_LH_P2_0_0)) ((unify_d0 _lh_superpose_arg1_0) _lh_superpose_LH_P2_1_0)) in
                      (let rec t_4 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
                        (fun f_5 -> 
                          (let rec h_5 = (f_5 h_4) in
                            (let rec t_5 = ((map_d2_d4 f_5) t_4) in
                              (fun _lh_dummy_1 -> 
                                ((mappend_d1_d0 h_5) (concat_d1 t_5))))))))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (fun f_6 _lh_dummy_2 -> 
                  (`LH_N)))) in
            (_lh_listcomp_fun_0 (subterms_d2 _lh_superpose_arg2_0)))))
        and delete_0 = (fun _lh_delete_arg1_0 _lh_delete_arg2_0 _lh_delete_arg3_0 -> 
          (match _lh_delete_arg3_0 with
            | `LH_N -> 
              croak_d1
            | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
              (if ((_lh_delete_arg1_0 _lh_delete_arg2_0) _lh_delete_LH_C_0_0) then
                (succeed_d6 _lh_delete_LH_C_1_0)
              else
                ((lift_d9 (fun x_1 -> 
                  (`LH_C(_lh_delete_LH_C_0_0, x_1)))) (((delete_0 _lh_delete_arg1_0) _lh_delete_arg2_0) _lh_delete_LH_C_1_0)))
            | _ -> 
              (failwith "error")))
        and rem_eq_0 = (fun _lh_rem_eq_arg1_0 _lh_rem_eq_arg2_0 -> 
          (match _lh_rem_eq_arg2_0 with
            | `LH_P2(_lh_rem_eq_LH_P2_0_0, _lh_rem_eq_LH_P2_1_0) -> 
              (match _lh_rem_eq_LH_P2_0_0 with
                | `LH_N -> 
                  (`LH_P2((`LH_N), _lh_rem_eq_LH_P2_1_0))
                | `LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_C_1_0) -> 
                  (let rec add_x_0 = (fun xsys_0 -> 
                    (let rec _lh_matchIdent_1 = xsys_0 in
                      (match _lh_matchIdent_1 with
                        | `LH_P2(_lh_rem_eq_LH_P2_0_1, _lh_rem_eq_LH_P2_1_1) -> 
                          (`LH_P2((`LH_C(_lh_rem_eq_LH_C_0_0, _lh_rem_eq_LH_P2_0_1)), _lh_rem_eq_LH_P2_1_1))
                        | _ -> 
                          (failwith "error")))) in
                    ((getOrElse_d1 ((lift_d4 (fun _lh_funcomp_x_0 -> 
                      ((rem_eq_0 _lh_rem_eq_arg1_0) ((pair_d0 _lh_rem_eq_LH_C_1_0) _lh_funcomp_x_0)))) (((delete_0 _lh_rem_eq_arg1_0) _lh_rem_eq_LH_C_0_0) _lh_rem_eq_LH_P2_1_0))) (add_x_0 ((rem_eq_0 _lh_rem_eq_arg1_0) (`LH_P2(_lh_rem_eq_LH_C_1_0, _lh_rem_eq_LH_P2_1_0))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and q_eqn_0 = (fun _lh_q_eqn_arg1_0 -> 
          (match _lh_q_eqn_arg1_0 with
            | `LH_C(_lh_q_eqn_LH_C_0_0, _lh_q_eqn_LH_C_1_0) -> 
              (match _lh_q_eqn_LH_C_1_0 with
                | `LH_C(_lh_q_eqn_LH_C_0_1, _lh_q_eqn_LH_C_1_1) -> 
                  (match _lh_q_eqn_LH_C_1_1 with
                    | `LH_C(_lh_q_eqn_LH_C_0_2, _lh_q_eqn_LH_C_1_2) -> 
                      (match _lh_q_eqn_LH_C_1_2 with
                        | `LH_N -> 
                          (`List((`LH_C(_lh_q_eqn_LH_C_0_0, (`LH_C(_lh_q_eqn_LH_C_0_2, (`LH_N)))))))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and parse_eqn_0 = (fun _lh_parse_eqn_arg1_0 -> 
          (let rec _lh_matchIdent_2 = (fst_d3 (the_d3 (p_eqn_0 _lh_parse_eqn_arg1_0))) in
            (match _lh_matchIdent_2 with
              | `List(_lh_parse_eqn_List_0_0) -> 
                (match _lh_parse_eqn_List_0_0 with
                  | `LH_C(_lh_parse_eqn_LH_C_0_0, _lh_parse_eqn_LH_C_1_0) -> 
                    (match _lh_parse_eqn_LH_C_0_0 with
                      | `Expr(_lh_parse_eqn_Expr_0_0) -> 
                        (match _lh_parse_eqn_LH_C_1_0 with
                          | `LH_C(_lh_parse_eqn_LH_C_0_1, _lh_parse_eqn_LH_C_1_1) -> 
                            (match _lh_parse_eqn_LH_C_0_1 with
                              | `Expr(_lh_parse_eqn_Expr_0_1) -> 
                                (match _lh_parse_eqn_LH_C_1_1 with
                                  | `LH_N -> 
                                    (`LH_P2(_lh_parse_eqn_Expr_0_0, _lh_parse_eqn_Expr_0_1))
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
                (failwith "error"))))
        and addby_0 = (fun _lh_addby_arg1_0 _lh_addby_arg2_0 _lh_addby_arg3_0 -> 
          (let rec insert_0 = (fun x_2 ls_4 -> 
            (let rec _lh_matchIdent_3 = ls_4 in
              (match _lh_matchIdent_3 with
                | `LH_N -> 
                  (`LH_C(x_2, (`LH_N)))
                | `LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0) -> 
                  (if ((_lh_addby_arg1_0 x_2) <= (_lh_addby_arg1_0 _lh_addby_LH_C_0_0)) then
                    (`LH_C(x_2, (`LH_C(_lh_addby_LH_C_0_0, _lh_addby_LH_C_1_0))))
                  else
                    (`LH_C(_lh_addby_LH_C_0_0, ((insert_0 x_2) _lh_addby_LH_C_1_0))))
                | _ -> 
                  (failwith "error")))) in
            (((foldr_d2 insert_0) _lh_addby_arg3_0) _lh_addby_arg2_0)))
        and seq2Lzq_0 = (fun _lh_seq2Lzq_arg1_0 _lh_seq2Lzq_arg2_0 _lh_seq2Lzq_arg3_0 -> 
          (let rec g_0 = (fun xs_1 -> 
            (let rec _lh_matchIdent_4 = xs_1 in
              (match _lh_matchIdent_4 with
                | `LH_P2(_lh_seq2Lzq_LH_P2_0_0, _lh_seq2Lzq_LH_P2_1_0) -> 
                  ((lift_d5 ((cross_d1 (_lh_seq2Lzq_arg1_0 _lh_seq2Lzq_LH_P2_0_0)) (fun x_3 -> 
                    x_3))) ((Lazy.force _lh_seq2Lzq_arg3_0) _lh_seq2Lzq_LH_P2_1_0))
                | _ -> 
                  (failwith "error")))) in
            (fun _lh_funcomp_x_1 -> 
              ((fun _lh_funcomp_x_2 -> 
                (squash_d1 ((lift_d6 g_0) _lh_funcomp_x_2))) (_lh_seq2Lzq_arg2_0 _lh_funcomp_x_1)))))
        and find_assoc_0 = (fun _lh_find_assoc_arg1_0 _lh_find_assoc_arg2_0 _lh_find_assoc_arg3_0 -> 
          (match _lh_find_assoc_arg1_0 with
            | `Afunc(_lh_find_assoc_Afunc_0_0) -> 
              ((getOrElse_d0 ((lift_d1 (find'_0 _lh_find_assoc_arg2_0)) ((assoc_d0 _lh_find_assoc_arg3_0) _lh_find_assoc_Afunc_0_0))) (`LH_N))
            | `Avar -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
        and rpo_0 = (fun _lh_rpo_arg1_0 _lh_rpo_arg2_0 -> 
          (let rec rpo'_0 = (fun param_0 -> 
            (let rec _lh_matchIdent_5 = param_0 in
              (match _lh_matchIdent_5 with
                | `LH_P2(_lh_rpo_LH_P2_0_0, _lh_rpo_LH_P2_1_0) -> 
                  (match _lh_rpo_LH_P2_0_0 with
                    | `Var(_lh_rpo_Var_0_0) -> 
                      (match _lh_rpo_LH_P2_1_0 with
                        | `Var(_lh_rpo_Var_0_1) -> 
                          (if (_lh_rpo_Var_0_0 = _lh_rpo_Var_0_1) then
                            (`Equal)
                          else
                            (`Unrelated))
                        | `Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0) -> 
                          (if ((occurs_d0 _lh_rpo_Var_0_0) (`Func(_lh_rpo_Func_0_0, _lh_rpo_Func_1_0))) then
                            (`Less)
                          else
                            (`Unrelated))
                        | _ -> 
                          ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                    | `Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1) -> 
                      (match _lh_rpo_LH_P2_1_0 with
                        | `Var(_lh_rpo_Var_0_2) -> 
                          (if ((occurs_d1 _lh_rpo_Var_0_2) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) then
                            (`Greater)
                          else
                            (`Unrelated))
                        | `Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2) -> 
                          (let rec _lh_matchIdent_6 = (_lh_rpo_arg1_0 (let rec _lh_rank_order_LH_P2_0_0 = _lh_rpo_Func_0_1 in
                            (let rec _lh_rank_order_LH_P2_1_0 = _lh_rpo_Func_0_2 in
                              (fun _lh_rank_order_arg1_1 num_order_1 -> 
                                (num_order_1 (`LH_P2((_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_0_0), (_lh_rank_order_arg1_1 _lh_rank_order_LH_P2_1_0)))))))) in
                            (match _lh_matchIdent_6 with
                              | `Equal -> 
                                ((_lh_rpo_arg2_0 rpo'_0) (`LH_P2((`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1)), (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2)))))
                              | `Greater -> 
                                (if ((((quant_d6 all_d4) (ltRewrite_d2 rpo'_0)) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) _lh_rpo_Func_1_2) then
                                  (`Greater)
                                else
                                  (if ((((quant_d7 any_d3) (geRewrite_d2 rpo'_0)) (`Func(_lh_rpo_Func_0_1, _lh_rpo_Func_1_1))) _lh_rpo_Func_1_2) then
                                    (`Less)
                                  else
                                    (`Unrelated)))
                              | `Less -> 
                                (if ((((quant_d8 all_d5) (ltRewrite_d3 rpo'_0)) (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2))) _lh_rpo_Func_1_1) then
                                  (`Less)
                                else
                                  (if ((((quant_d9 any_d4) (geRewrite_d3 rpo'_0)) (`Func(_lh_rpo_Func_0_2, _lh_rpo_Func_1_2))) _lh_rpo_Func_1_1) then
                                    (`Greater)
                                  else
                                    (`Unrelated)))
                              | `Unrelated -> 
                                (`Unrelated)
                              | _ -> 
                                (failwith "error")))
                        | _ -> 
                          ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                    | _ -> 
                      ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N)))))))))))))
                | _ -> 
                  ((failwith "error") (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_N))))))))))))))) in
            rpo'_0))
        and split_0 = (fun _lh_split_arg1_0 _lh_split_arg2_0 -> 
          (let rec tmp_0 = ((zip_d3 ((map_d1_d1 _lh_split_arg1_0) _lh_split_arg2_0)) _lh_split_arg2_0) in
            (let rec _lh_process2_LH_P2_0_0 = (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (match _lh_listcomp_fun_ls_h_1 with
                    | `LH_P2(_lh_split_LH_P2_0_0, _lh_split_LH_P2_1_0) -> 
                      (if _lh_split_LH_P2_0_0 then
                        (`LH_C(_lh_split_LH_P2_1_0, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                      else
                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                    | _ -> 
                      (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1 tmp_0)) in
              (let rec _lh_process2_LH_P2_1_0 = (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                (match _lh_listcomp_fun_para_2 with
                  | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                    (match _lh_listcomp_fun_ls_h_2 with
                      | `LH_P2(_lh_split_LH_P2_0_1, _lh_split_LH_P2_1_1) -> 
                        (if (not _lh_split_LH_P2_0_1) then
                          (`LH_C(_lh_split_LH_P2_1_1, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
                        else
                          (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                      | _ -> 
                        (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_2 tmp_0)) in
                (fun _lh_process2_arg1_0 _lh_process2_arg2_0 _lh_process2_arg4_0 _lh_process2_arg5_0 _lh_process2_arg6_0 add_agenda_1 add_eqn_1 all_crit_pairs_1 process_1 resolve_1 super_reduce_1 -> 
                  (let rec net'_0 = ((add_eqn_1 ((delete_eqns_d0 ((map_d1_d2 eqno_d1) _lh_process2_LH_P2_0_0)) _lh_process2_arg4_0)) _lh_process2_arg6_0) in
                    (let rec deletions_0 = ((map_d1_d3 eqpr_d0) _lh_process2_LH_P2_0_0) in
                      (let rec critical_0 = ((all_crit_pairs_1 _lh_process2_arg6_0) _lh_process2_LH_P2_1_0) in
                        (let rec new_agenda_0 = (sift_d1 ((map_d1_d4 (resolve_1 (super_reduce_1 net'_0))) ((mappend_d5 deletions_0) critical_0))) in
                          (let rec todo'_0 = (((add_agenda_1 (snd_d1 _lh_process2_arg1_0)) new_agenda_0) _lh_process2_arg5_0) in
                            (((((process_1 _lh_process2_arg1_0) _lh_process2_arg2_0) ((mappend_d6 _lh_process2_LH_P2_1_0) (`LH_C(_lh_process2_arg6_0, (`LH_N))))) net'_0) todo'_0)))))))))))
        and build_0 = (fun _lh_build_arg1_0 _lh_build_arg2_0 _lh_funcomp_x_3 -> 
          ((lift_d8 ((cross_d2 _lh_build_arg1_0) (fun x_4 -> 
            x_4))) (_lh_build_arg2_0 _lh_funcomp_x_3)))
        and process1_0 = (fun _lh_process1_arg1_0 _lh_process1_arg2_0 _lh_process1_arg3_0 _lh_process1_arg4_0 _lh_process1_arg5_0 _lh_process1_arg6_0 -> 
          ((((((((_lh_process1_arg6_0 _lh_process1_arg1_0) _lh_process1_arg2_0) _lh_process1_arg3_0) _lh_process1_arg4_0) _lh_process1_arg5_0) add_agenda_0) process2_0) process_0))
        and p_op_0 = (fun _lh_p_op_arg1_0 -> 
          ((sp_0 (string_of_0 opsym_0)) _lh_p_op_arg1_0))
        and p_prim_0 = (fun _lh_p_prim_arg1_0 -> 
          (((orElseMap_d1 p_name_0) ((seQ_0 (fun x_5 -> 
            ((atIndex_d2 1) x_5))) (let rec h_6 = (look_for_0 '(') in
            (let rec t_6 = (let rec h_7 = p_expr_0 in
              (let rec t_7 = (let rec h_8 = (look_for_0 ')') in
                (let rec t_8 = (fun f_7 i_3 -> 
                  i_3) in
                  (fun f_8 i_4 -> 
                    ((f_8 h_8) (((foldr_d1 f_8) i_4) t_8))))) in
                (fun f_9 i_5 -> 
                  ((f_9 h_7) (((foldr_d1 f_9) i_5) t_7))))) in
              (fun f_1_0 i_6 -> 
                ((f_1_0 h_6) (((foldr_d1 f_1_0) i_6) t_6))))))) _lh_p_prim_arg1_0))
        and reducible_0 = (fun _lh_reducible_arg1_0 _lh_reducible_arg2_0 -> 
          (match _lh_reducible_arg2_0 with
            | `Eqn(_lh_reducible_Eqn_0_0, _lh_reducible_Eqn_1_0) -> 
              (match _lh_reducible_Eqn_1_0 with
                | `LH_P2(_lh_reducible_LH_P2_0_0, _lh_reducible_LH_P2_1_0) -> 
                  ((exists_d0 (_lh_reducible_arg1_0 _lh_reducible_LH_P2_0_0)) || (exists_d1 (_lh_reducible_arg1_0 _lh_reducible_LH_P2_1_0)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and mk_list_0 = (fun _lh_mk_list_arg1_0 _lh_mk_list_arg2_0 -> 
          (match _lh_mk_list_arg2_0 with
            | `List(_lh_mk_list_List_0_0) -> 
              (_lh_mk_list_arg1_0 _lh_mk_list_List_0_0)
            | _ -> 
              (failwith "error")))
        and lexico_0 = (fun _lh_lexico_arg1_0 _lh_lexico_arg2_0 -> 
          (match _lh_lexico_arg2_0 with
            | `LH_P2(_lh_lexico_LH_P2_0_0, _lh_lexico_LH_P2_1_0) -> 
              (match _lh_lexico_LH_P2_0_0 with
                | `LH_N -> 
                  (match _lh_lexico_LH_P2_1_0 with
                    | `LH_N -> 
                      (`Equal)
                    | `LH_C(_lh_lexico_LH_C_0_0, _lh_lexico_LH_C_1_0) -> 
                      (`Less)
                    | _ -> 
                      (failwith "error"))
                | `LH_C(_lh_lexico_LH_C_0_1, _lh_lexico_LH_C_1_1) -> 
                  (match _lh_lexico_LH_P2_1_0 with
                    | `LH_N -> 
                      (`Greater)
                    | `LH_C(_lh_lexico_LH_C_0_2, _lh_lexico_LH_C_1_2) -> 
                      ((lex_combine_0 (_lh_lexico_arg1_0 (`LH_P2(_lh_lexico_LH_C_0_1, _lh_lexico_LH_C_0_2)))) ((lexico_0 _lh_lexico_arg1_0) (`LH_P2(_lh_lexico_LH_C_1_1, _lh_lexico_LH_C_1_2))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and find_0 = (fun _lh_find_arg1_0 _lh_find_arg2_0 -> 
          ((find'_0 (g_init_0 _lh_find_arg1_0)) _lh_find_arg2_0))
        and rank_0 = (fun _lh_rank_arg1_0 -> 
          (match _lh_rank_arg1_0 with
            | `LH_C(_lh_rank_LH_C_0_0, _lh_rank_LH_C_1_0) -> 
              (match _lh_rank_LH_C_0_0 with
                | 'E' -> 
                  (match _lh_rank_LH_C_1_0 with
                    | `LH_N -> 
                      1
                    | _ -> 
                      (failwith "error"))
                | '*' -> 
                  (match _lh_rank_LH_C_1_0 with
                    | `LH_N -> 
                      2
                    | _ -> 
                      (failwith "error"))
                | 'I' -> 
                  (match _lh_rank_LH_C_1_0 with
                    | `LH_N -> 
                      3
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and is_switch_0 = (fun _lh_is_switch_arg1_0 -> 
          (match _lh_is_switch_arg1_0 with
            | `Switch(_lh_is_switch_Switch_0_0, _lh_is_switch_Switch_1_0) -> 
              true
            | `Return(_lh_is_switch_Return_0_0) -> 
              false
            | _ -> 
              (failwith "error")))
        and q_func_0 = (fun _lh_q_func_arg1_0 -> 
          (match _lh_q_func_arg1_0 with
            | `LH_C(_lh_q_func_LH_C_0_0, _lh_q_func_LH_C_1_0) -> 
              (match _lh_q_func_LH_C_0_0 with
                | `MkString(_lh_q_func_MkString_0_0) -> 
                  (match _lh_q_func_LH_C_1_0 with
                    | `LH_C(_lh_q_func_LH_C_0_1, _lh_q_func_LH_C_1_1) -> 
                      (match _lh_q_func_LH_C_1_1 with
                        | `LH_C(_lh_q_func_LH_C_0_2, _lh_q_func_LH_C_1_2) -> 
                          (match _lh_q_func_LH_C_0_2 with
                            | `List(_lh_q_func_List_0_0) -> 
                              (match _lh_q_func_LH_C_1_2 with
                                | `LH_C(_lh_q_func_LH_C_0_3, _lh_q_func_LH_C_1_3) -> 
                                  (match _lh_q_func_LH_C_1_3 with
                                    | `LH_N -> 
                                      (`Expr((`Func(_lh_q_func_MkString_0_0, ((map_d3 unExpr_0) _lh_q_func_List_0_0)))))
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
              (failwith "error")))
        and knuth_bendix_0 = (fun _lh_knuth_bendix_arg1_0 _lh_knuth_bendix_arg2_0 -> 
          ((knuth_bendix1_0 (`LH_P2(_lh_knuth_bendix_arg1_0, cost_d0))) _lh_knuth_bendix_arg2_0))
        and add_agenda_0 = (fun _lh_add_agenda_arg1_0 _lh_add_agenda_arg2_0 -> 
          ((addby_0 item_cost_0) ((map_d6 (mk_item_0 _lh_add_agenda_arg1_0)) _lh_add_agenda_arg2_0)))
        and g_init_0 = (fun _lh_g_init_arg1_0 -> 
          (`LH_C(_lh_g_init_arg1_0, (`LH_N))))
        and mk_dnet_0 = (fun _lh_mk_dnet_arg1_0 -> 
          (((foldl_d0 add_eqn_0) empty_net_0) _lh_mk_dnet_arg1_0))
        and p_name_0 = (fun _lh_p_name_arg1_0 -> 
          (((build_0 q_name_0) p_ident_0) _lh_p_name_arg1_0))
        and q_op_0 = (fun _lh_q_op_arg1_0 -> 
          (match _lh_q_op_arg1_0 with
            | `LH_C(_lh_q_op_LH_C_0_0, _lh_q_op_LH_C_1_0) -> 
              (match _lh_q_op_LH_C_0_0 with
                | `Expr(_lh_q_op_Expr_0_0) -> 
                  (match _lh_q_op_LH_C_1_0 with
                    | `LH_C(_lh_q_op_LH_C_0_1, _lh_q_op_LH_C_1_1) -> 
                      (match _lh_q_op_LH_C_0_1 with
                        | `MkString(_lh_q_op_MkString_0_0) -> 
                          (match _lh_q_op_LH_C_1_1 with
                            | `LH_C(_lh_q_op_LH_C_0_2, _lh_q_op_LH_C_1_2) -> 
                              (match _lh_q_op_LH_C_0_2 with
                                | `Expr(_lh_q_op_Expr_0_1) -> 
                                  (match _lh_q_op_LH_C_1_2 with
                                    | `LH_N -> 
                                      (`Expr((`Func(_lh_q_op_MkString_0_0, (`LH_C(_lh_q_op_Expr_0_0, (`LH_C(_lh_q_op_Expr_0_1, (`LH_N)))))))))
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
              (failwith "error")))
        and unExpr_0 = (fun _lh_unExpr_arg1_0 -> 
          (match _lh_unExpr_arg1_0 with
            | `Expr(_lh_unExpr_Expr_0_0) -> 
              _lh_unExpr_Expr_0_0
            | _ -> 
              (failwith "error")))
        and opsym_0 = (fun _lh_opsym_arg1_0 -> 
          ((fun x_6 -> 
            ((inList_d5 x_6) (let rec _lh_inList_LH_C_0_0 = '*' in
              (let rec _lh_inList_LH_C_1_0 = (let rec _lh_inList_LH_C_0_1 = '+' in
                (let rec _lh_inList_LH_C_1_1 = (let rec _lh_inList_LH_C_0_2 = '%' in
                  (let rec _lh_inList_LH_C_1_2 = (let rec _lh_inList_LH_C_0_3 = '@' in
                    (let rec _lh_inList_LH_C_1_3 = (let rec _lh_inList_LH_C_0_4 = '-' in
                      (let rec _lh_inList_LH_C_1_4 = (let rec _lh_inList_LH_C_0_5 = '/' in
                        (let rec _lh_inList_LH_C_1_5 = (let rec _lh_inList_LH_C_0_6 = '?' in
                          (let rec _lh_inList_LH_C_1_6 = (let rec _lh_inList_LH_C_0_7 = ':' in
                            (let rec _lh_inList_LH_C_1_7 = (fun _lh_inList_arg1_0 -> 
                              false) in
                              (fun _lh_inList_arg1_1 -> 
                                (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_7) then
                                  true
                                else
                                  ((inList_d5 _lh_inList_arg1_1) _lh_inList_LH_C_1_7))))) in
                            (fun _lh_inList_arg1_2 -> 
                              (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_6) then
                                true
                              else
                                ((inList_d5 _lh_inList_arg1_2) _lh_inList_LH_C_1_6))))) in
                          (fun _lh_inList_arg1_3 -> 
                            (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_5) then
                              true
                            else
                              ((inList_d5 _lh_inList_arg1_3) _lh_inList_LH_C_1_5))))) in
                        (fun _lh_inList_arg1_4 -> 
                          (if (_lh_inList_arg1_4 = _lh_inList_LH_C_0_4) then
                            true
                          else
                            ((inList_d5 _lh_inList_arg1_4) _lh_inList_LH_C_1_4))))) in
                      (fun _lh_inList_arg1_5 -> 
                        (if (_lh_inList_arg1_5 = _lh_inList_LH_C_0_3) then
                          true
                        else
                          ((inList_d5 _lh_inList_arg1_5) _lh_inList_LH_C_1_3))))) in
                    (fun _lh_inList_arg1_6 -> 
                      (if (_lh_inList_arg1_6 = _lh_inList_LH_C_0_2) then
                        true
                      else
                        ((inList_d5 _lh_inList_arg1_6) _lh_inList_LH_C_1_2))))) in
                  (fun _lh_inList_arg1_7 -> 
                    (if (_lh_inList_arg1_7 = _lh_inList_LH_C_0_1) then
                      true
                    else
                      ((inList_d5 _lh_inList_arg1_7) _lh_inList_LH_C_1_1))))) in
                (fun _lh_inList_arg1_8 -> 
                  (if (_lh_inList_arg1_8 = _lh_inList_LH_C_0_0) then
                    true
                  else
                    ((inList_d5 _lh_inList_arg1_8) _lh_inList_LH_C_1_0))))))) _lh_opsym_arg1_0))
        and resolve_0 = (fun _lh_resolve_arg1_0 _lh_resolve_arg2_0 -> 
          (let rec lhs'_0 = ((simplify_d2 _lh_resolve_arg1_0) (fst_d2 _lh_resolve_arg2_0)) in
            (let rec rhs'_0 = ((simplify_d3 _lh_resolve_arg1_0) (snd_d2 _lh_resolve_arg2_0)) in
              (if ((eqExpr_d0 lhs'_0) rhs'_0) then
                croak_d0
              else
                (succeed_d5 (`LH_P2(lhs'_0, rhs'_0)))))))
        and p_term_0 = (fun _lh_p_term_arg1_0 -> 
          (((orElseMap_d3 ((seQ_0 q_func_0) (let rec h_9 = p_ident_0 in
            (let rec t_9 = (let rec h_1_0 = (look_for_0 '(') in
              (let rec t_1_0 = (let rec h_1_1 = ((list_of_0 p_expr_0) ',') in
                (let rec t_1_1 = (let rec h_1_2 = (look_for_0 ')') in
                  (let rec t_1_2 = (fun f_1_1 i_7 -> 
                    i_7) in
                    (fun f_1_2 i_8 -> 
                      ((f_1_2 h_1_2) (((foldr_d1 f_1_2) i_8) t_1_2))))) in
                  (fun f_1_3 i_9 -> 
                    ((f_1_3 h_1_1) (((foldr_d1 f_1_3) i_9) t_1_1))))) in
                (fun f_1_4 i_1_0 -> 
                  ((f_1_4 h_1_0) (((foldr_d1 f_1_4) i_1_0) t_1_0))))) in
              (fun f_1_5 i_1_1 -> 
                ((f_1_5 h_9) (((foldr_d1 f_1_5) i_1_1) t_9))))))) p_prim_0) _lh_p_term_arg1_0))
        and add_eqn_0 = (fun _lh_add_eqn_arg1_0 _lh_add_eqn_arg2_0 -> 
          (((thread_0 (preorder_0 (g_init_0 (lhs_d4 _lh_add_eqn_arg2_0)))) _lh_add_eqn_arg2_0) _lh_add_eqn_arg1_0))
        and thread_0 = (fun _lh_thread_arg1_0 _lh_thread_arg2_0 _lh_thread_arg3_0 -> 
          (match _lh_thread_arg1_0 with
            | `LH_C(_lh_thread_LH_C_0_0, _lh_thread_LH_C_1_0) -> 
              (match _lh_thread_LH_C_0_0 with
                | `Afunc(_lh_thread_Afunc_0_0) -> 
                  (match _lh_thread_arg3_0 with
                    | `Switch(_lh_thread_Switch_0_0, _lh_thread_Switch_1_0) -> 
                      (`Switch(((((update_alist_d0 _lh_thread_Afunc_0_0) ((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0)) empty_net_0) _lh_thread_Switch_0_0), _lh_thread_Switch_1_0))
                    | `Return(_lh_thread_Return_0_0) -> 
                      (((thread_0 (`LH_C((`Afunc(_lh_thread_Afunc_0_0)), _lh_thread_LH_C_1_0))) _lh_thread_arg2_0) (`Switch((`LH_N), (`Return(_lh_thread_Return_0_0)))))
                    | _ -> 
                      (failwith "error"))
                | `Avar -> 
                  (match _lh_thread_arg3_0 with
                    | `Switch(_lh_thread_Switch_0_1, _lh_thread_Switch_1_1) -> 
                      (`Switch(_lh_thread_Switch_0_1, (((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0) _lh_thread_Switch_1_1)))
                    | `Return(_lh_thread_Return_0_1) -> 
                      (let rec d'_0 = (((thread_0 _lh_thread_LH_C_1_0) _lh_thread_arg2_0) (`Return(_lh_thread_Return_0_1))) in
                        (if (is_switch_0 d'_0) then
                          (`Switch((`LH_N), d'_0))
                        else
                          d'_0))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | `LH_N -> 
              (match _lh_thread_arg3_0 with
                | `Return(_lh_thread_Return_0_2) -> 
                  (`Return((`LH_C(_lh_thread_arg2_0, _lh_thread_Return_0_2))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and item_cost_0 = (fun _lh_item_cost_arg1_0 -> 
          (match _lh_item_cost_arg1_0 with
            | `Item(_lh_item_cost_Item_0_0, _lh_item_cost_Item_1_0) -> 
              _lh_item_cost_Item_0_0
            | _ -> 
              (failwith "error")))
        and g_rest_0 = (fun _lh_g_rest_arg1_0 -> 
          (match _lh_g_rest_arg1_0 with
            | `LH_C(_lh_g_rest_LH_C_0_0, _lh_g_rest_LH_C_1_0) -> 
              (match _lh_g_rest_LH_C_0_0 with
                | `Func(_lh_g_rest_Func_0_0, _lh_g_rest_Func_1_0) -> 
                  ((mappend_d7 _lh_g_rest_Func_1_0) _lh_g_rest_LH_C_1_0)
                | `Var(_lh_g_rest_Var_0_0) -> 
                  _lh_g_rest_LH_C_1_0
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and lex_ext_0 = (fun _lh_lex_ext_arg1_0 _lh_lex_ext_arg2_0 -> 
          (match _lh_lex_ext_arg2_0 with
            | `LH_P2(_lh_lex_ext_LH_P2_0_0, _lh_lex_ext_LH_P2_1_0) -> 
              (match _lh_lex_ext_LH_P2_0_0 with
                | `Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0) -> 
                  (match _lh_lex_ext_LH_P2_1_0 with
                    | `Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1) -> 
                      (let rec estimate_0 = ((lexico_0 _lh_lex_ext_arg1_0) (`LH_P2(_lh_lex_ext_Func_1_0, _lh_lex_ext_Func_1_1))) in
                        (let rec confirm_0 = (fun x_7 -> 
                          (let rec _lh_matchIdent_7 = x_7 in
                            (match _lh_matchIdent_7 with
                              | `Equal -> 
                                true
                              | `Greater -> 
                                ((((quant_d0 all_d1) (ltRewrite_d0 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1)
                              | `Less -> 
                                ((((quant_d1 all_d2) (ltRewrite_d1 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0)
                              | `Unrelated -> 
                                false
                              | _ -> 
                                (failwith "error")))) in
                          (if (confirm_0 estimate_0) then
                            estimate_0
                          else
                            (if ((((quant_d2 any_d0) (geRewrite_d0 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_1, _lh_lex_ext_Func_1_1))) _lh_lex_ext_Func_1_0) then
                              (`Greater)
                            else
                              (if ((((quant_d3 any_d1) (geRewrite_d1 _lh_lex_ext_arg1_0)) (`Func(_lh_lex_ext_Func_0_0, _lh_lex_ext_Func_1_0))) _lh_lex_ext_Func_1_1) then
                                (`Less)
                              else
                                (`Unrelated))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and empty_0 = (fun _lh_empty_arg1_0 -> 
          (succeed_d4 (`LH_P2((`List((`LH_N))), _lh_empty_arg1_0))))
        and g_skip_0 = (fun _lh_g_skip_arg1_0 -> 
          (tail_d0 _lh_g_skip_arg1_0))
        and super_reduce_0 = (fun _lh_super_reduce_arg1_0 -> 
          (inside_d0 (dnet_reduce_0 _lh_super_reduce_arg1_0)))
        and unString_0 = (fun _lh_unString_arg1_0 -> 
          (match _lh_unString_arg1_0 with
            | `MkString(_lh_unString_MkString_0_0) -> 
              _lh_unString_MkString_0_0
            | _ -> 
              (failwith "error")))
        and look_for_0 = (fun _lh_look_for_arg1_0 -> 
          (sp_0 (pchar_0 (fun x_8 -> 
            (x_8 = _lh_look_for_arg1_0)))))
        and mk_crit_0 = (fun _lh_mk_crit_arg1_0 _lh_mk_crit_arg2_0 _lh_mk_crit_arg3_0 -> 
          (match _lh_mk_crit_arg1_0 with
            | `Eqn(_lh_mk_crit_Eqn_0_0, _lh_mk_crit_Eqn_1_0) -> 
              (match _lh_mk_crit_Eqn_1_0 with
                | `LH_P2(_lh_mk_crit_LH_P2_0_0, _lh_mk_crit_LH_P2_1_0) -> 
                  (match _lh_mk_crit_arg2_0 with
                    | `Eqn(_lh_mk_crit_Eqn_0_1, _lh_mk_crit_Eqn_1_1) -> 
                      (match _lh_mk_crit_Eqn_1_1 with
                        | `LH_P2(_lh_mk_crit_LH_P2_0_1, _lh_mk_crit_LH_P2_1_1) -> 
                          (match _lh_mk_crit_arg3_0 with
                            | `LH_P2(_lh_mk_crit_LH_P2_0_2, _lh_mk_crit_LH_P2_1_2) -> 
                              (`LH_P2(((sub_d2 (((replace_d2 _lh_mk_crit_LH_P2_0_1) _lh_mk_crit_LH_P2_0_2) _lh_mk_crit_LH_P2_1_0)) _lh_mk_crit_LH_P2_1_2), ((sub_d3 _lh_mk_crit_LH_P2_1_1) _lh_mk_crit_LH_P2_1_2)))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and list_of_0 = (fun _lh_list_of_arg1_0 _lh_list_of_arg2_0 -> 
          (let rec p'_0 = (lazy (((seq2_0 mk_cons_0) _lh_list_of_arg1_0) ((orElseMap_d0 (((seq2Lzq_0 (fun x_9 y_1 -> 
            y_1)) (look_for_0 _lh_list_of_arg2_0)) p'_0)) empty_0))) in
            (Lazy.force p'_0)))
        and seQ_0 = (fun _lh_seQ_arg1_0 _lh_seQ_arg2_0 -> 
          ((build_0 (mk_list_0 _lh_seQ_arg1_0)) (((foldr_d1 (seq2_0 mk_cons_0)) empty_0) _lh_seQ_arg2_0)))
        and q_name_0 = (fun _lh_q_name_arg1_0 -> 
          (match _lh_q_name_arg1_0 with
            | `MkString(_lh_q_name_MkString_0_0) -> 
              (if (((int_of_char ((atIndex_d0 0) _lh_q_name_MkString_0_0)) >= (int_of_char 'a')) && ((int_of_char ((atIndex_d1 0) _lh_q_name_MkString_0_0)) <= (int_of_char 'z'))) then
                (`Expr((`Var(_lh_q_name_MkString_0_0))))
              else
                (`Expr((`Func(_lh_q_name_MkString_0_0, (`LH_N))))))
            | _ -> 
              (failwith "error")))
        and lex_combine_0 = (fun _lh_lex_combine_arg1_0 _lh_lex_combine_arg2_0 -> 
          (match _lh_lex_combine_arg1_0 with
            | `Equal -> 
              _lh_lex_combine_arg2_0
            | `Greater -> 
              (`Greater)
            | `Less -> 
              (`Less)
            | `Unrelated -> 
              (`Unrelated)
            | _ -> 
              (failwith "error")))
        and num_order_0 = (fun _lh_num_order_arg1_0 -> 
          (match _lh_num_order_arg1_0 with
            | `LH_P2(_lh_num_order_LH_P2_0_0, _lh_num_order_LH_P2_1_0) -> 
              (if (_lh_num_order_LH_P2_0_0 > _lh_num_order_LH_P2_1_0) then
                (`Greater)
              else
                (if (_lh_num_order_LH_P2_0_0 < _lh_num_order_LH_P2_1_0) then
                  (`Less)
                else
                  (`Equal)))
            | _ -> 
              (failwith "error")))
        and pchar_0 = (fun _lh_pchar_arg1_0 _lh_pchar_arg2_0 -> 
          (match _lh_pchar_arg2_0 with
            | `LH_N -> 
              croak_d2
            | `LH_C(_lh_pchar_LH_C_0_0, _lh_pchar_LH_C_1_0) -> 
              (if (_lh_pchar_arg1_0 _lh_pchar_LH_C_0_0) then
                (succeed_d7 (`LH_P2((`MkString((`LH_C(_lh_pchar_LH_C_0_0, (`LH_N))))), _lh_pchar_LH_C_1_0)))
              else
                croak_d3)
            | _ -> 
              (failwith "error")))
        and crit_pairs_0 = (fun _lh_crit_pairs_arg1_0 _lh_crit_pairs_arg2_0 -> 
          ((mappend_d3 ((map_d4 ((mk_crit_0 _lh_crit_pairs_arg1_0) _lh_crit_pairs_arg2_0)) ((superpose_0 (lhs_d0 _lh_crit_pairs_arg1_0)) (lhs_d1 _lh_crit_pairs_arg2_0)))) ((map_d5 ((mk_crit_0 _lh_crit_pairs_arg2_0) _lh_crit_pairs_arg1_0)) ((strict_super_0 (lhs_d2 _lh_crit_pairs_arg2_0)) (lhs_d3 _lh_crit_pairs_arg1_0)))))
        and strict_super_0 = (fun _lh_strict_super_arg1_0 _lh_strict_super_arg2_0 -> 
          (match _lh_strict_super_arg2_0 with
            | `Func(_lh_strict_super_Func_0_0, _lh_strict_super_Func_1_0) -> 
              (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                (((_lh_listcomp_fun_para_3 _lh_listcomp_fun_3) _lh_strict_super_arg1_0) superpose_0)) in
                (_lh_listcomp_fun_3 ((zip_lz_nl_d3 (enumFrom_d0 0)) _lh_strict_super_Func_1_0)))
            | _ -> 
              (failwith "error")))
        and dominates_0 = (fun _lh_dominates_arg1_0 -> 
          ((quant_d4 all_d3) ((quant_d5 any_d2) (gtRewrite_d0 _lh_dominates_arg1_0))))
        and knuth_bendix1_0 = (fun _lh_knuth_bendix1_arg1_0 _lh_knuth_bendix1_arg2_0 -> 
          (((((process_0 _lh_knuth_bendix1_arg1_0) 1) (`LH_N)) empty_net_0) (((add_agenda_0 (snd_d0 _lh_knuth_bendix1_arg1_0)) _lh_knuth_bendix1_arg2_0) (`LH_N))))
        and mk_item_0 = (fun _lh_mk_item_arg1_0 _lh_mk_item_arg2_0 -> 
          (`Item((_lh_mk_item_arg1_0 _lh_mk_item_arg2_0), _lh_mk_item_arg2_0)))
        and sp_0 = (fun _lh_sp_arg1_0 _lh_funcomp_x_4 -> 
          (_lh_sp_arg1_0 ((dropWhile_d0 (fun x_1_0 -> 
            (x_1_0 = ' '))) _lh_funcomp_x_4)))
        and p_eqn_0 = (fun _lh_p_eqn_arg1_0 -> 
          (((seQ_0 q_eqn_0) (let rec h_1_3 = p_expr_0 in
            (let rec t_1_3 = (let rec h_1_4 = (look_for_0 '=') in
              (let rec t_1_4 = (let rec h_1_5 = p_expr_0 in
                (let rec t_1_5 = (fun f_1_6 i_1_2 -> 
                  i_1_2) in
                  (fun f_1_7 i_1_3 -> 
                    ((f_1_7 h_1_5) (((foldr_d1 f_1_7) i_1_3) t_1_5))))) in
                (fun f_1_8 i_1_4 -> 
                  ((f_1_8 h_1_4) (((foldr_d1 f_1_8) i_1_4) t_1_4))))) in
              (fun f_1_9 i_1_5 -> 
                ((f_1_9 h_1_3) (((foldr_d1 f_1_9) i_1_5) t_1_3)))))) _lh_p_eqn_arg1_0))
        and p_ident_0 = (fun _lh_p_ident_arg1_0 -> 
          ((sp_0 (string_of_0 alphanum_0)) _lh_p_ident_arg1_0))
        and process2_0 = (fun _lh_process2_arg1_1 _lh_process2_arg2_1 _lh_process2_arg3_0 _lh_process2_arg4_1 _lh_process2_arg5_1 _lh_process2_arg6_1 -> 
          (let rec _lh_matchIdent_8 = ((split_0 (reducible_0 (reduce1_d0 _lh_process2_arg6_1))) _lh_process2_arg3_0) in
            (((((((((((_lh_matchIdent_8 _lh_process2_arg1_1) _lh_process2_arg2_1) _lh_process2_arg4_1) _lh_process2_arg5_1) _lh_process2_arg6_1) add_agenda_0) add_eqn_0) all_crit_pairs_0) process_0) resolve_0) super_reduce_0)))
        and dnet_reduce_0 = (fun _lh_dnet_reduce_arg1_0 _lh_dnet_reduce_arg2_0 -> 
          ((try_all_d0 ((map_d1_d0 rewrite_d1) ((find_0 _lh_dnet_reduce_arg2_0) _lh_dnet_reduce_arg1_0))) _lh_dnet_reduce_arg2_0))
        and find'_0 = (fun _lh_find'_arg1_0 _lh_find'_arg2_0 -> 
          (match _lh_find'_arg2_0 with
            | `Return(_lh_find'_Return_0_0) -> 
              _lh_find'_Return_0_0
            | `Switch(_lh_find'_Switch_0_0, _lh_find'_Switch_1_0) -> 
              ((mappend_d2 (((find_assoc_0 (g_first_0 _lh_find'_arg1_0)) (g_rest_0 _lh_find'_arg1_0)) _lh_find'_Switch_0_0)) ((find'_0 (g_skip_0 _lh_find'_arg1_0)) _lh_find'_Switch_1_0))
            | _ -> 
              (failwith "error")))
        and multi_ext_0 = (fun _lh_multi_ext_arg1_0 _lh_multi_ext_arg2_0 -> 
          (match _lh_multi_ext_arg2_0 with
            | `LH_P2(_lh_multi_ext_LH_P2_0_0, _lh_multi_ext_LH_P2_1_0) -> 
              (match _lh_multi_ext_LH_P2_0_0 with
                | `Func(_lh_multi_ext_Func_0_0, _lh_multi_ext_Func_1_0) -> 
                  (match _lh_multi_ext_LH_P2_1_0 with
                    | `Func(_lh_multi_ext_Func_0_1, _lh_multi_ext_Func_1_1) -> 
                      ((multi_0 _lh_multi_ext_arg1_0) (let rec _lh_multi_LH_P2_0_0 = _lh_multi_ext_Func_1_0 in
                        (let rec _lh_multi_LH_P2_1_0 = _lh_multi_ext_Func_1_1 in
                          (fun _lh_multi_arg1_1 dominates_1 rem_eq_1 -> 
                            (let rec _lh_matchIdent_9 = ((rem_eq_1 (eqRewrite_d0 _lh_multi_arg1_1)) (`LH_P2(_lh_multi_LH_P2_0_0, _lh_multi_LH_P2_1_0))) in
                              (match _lh_matchIdent_9 with
                                | `LH_P2(_lh_multi_LH_P2_0_1, _lh_multi_LH_P2_1_1) -> 
                                  (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_0_1) _lh_multi_LH_P2_1_1) then
                                    (`Greater)
                                  else
                                    (if (((dominates_1 _lh_multi_arg1_1) _lh_multi_LH_P2_1_1) _lh_multi_LH_P2_0_1) then
                                      (`Less)
                                    else
                                      (`Unrelated)))
                                | _ -> 
                                  (failwith "error")))))))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and seq2_0 = (fun _lh_seq2_arg1_0 _lh_seq2_arg2_0 _lh_seq2_arg3_0 -> 
          (let rec g_1 = (fun xs_2 -> 
            (let rec _lh_matchIdent_1_0 = xs_2 in
              (match _lh_matchIdent_1_0 with
                | `LH_P2(_lh_seq2_LH_P2_0_0, _lh_seq2_LH_P2_1_0) -> 
                  ((lift_d2 ((cross_d0 (_lh_seq2_arg1_0 _lh_seq2_LH_P2_0_0)) (fun x_1_1 -> 
                    x_1_1))) (_lh_seq2_arg3_0 _lh_seq2_LH_P2_1_0))
                | _ -> 
                  (failwith "error")))) in
            (fun _lh_funcomp_x_5 -> 
              ((fun _lh_funcomp_x_6 -> 
                (squash_d0 ((lift_d3 g_1) _lh_funcomp_x_6))) (_lh_seq2_arg2_0 _lh_funcomp_x_5)))))
        and g_first_0 = (fun _lh_g_first_arg1_0 -> 
          (match _lh_g_first_arg1_0 with
            | `LH_C(_lh_g_first_LH_C_0_0, _lh_g_first_LH_C_1_0) -> 
              (match _lh_g_first_LH_C_0_0 with
                | `Func(_lh_g_first_Func_0_0, _lh_g_first_Func_1_0) -> 
                  (`Afunc(_lh_g_first_Func_0_0))
                | `Var(_lh_g_first_Var_0_0) -> 
                  (`Avar)
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        and p_expr_0 = (fun _lh_p_expr_arg1_0 -> 
          (((orElseMap_d2 ((seQ_0 q_op_0) (let rec h_1_6 = p_term_0 in
            (let rec t_1_6 = (let rec h_1_7 = p_op_0 in
              (let rec t_1_7 = (let rec h_1_8 = p_term_0 in
                (let rec t_1_8 = (fun f_2_0 i_1_6 -> 
                  i_1_6) in
                  (fun f_2_1 i_1_7 -> 
                    ((f_2_1 h_1_8) (((foldr_d1 f_2_1) i_1_7) t_1_8))))) in
                (fun f_2_2 i_1_8 -> 
                  ((f_2_2 h_1_7) (((foldr_d1 f_2_2) i_1_8) t_1_7))))) in
              (fun f_2_3 i_1_9 -> 
                ((f_2_3 h_1_6) (((foldr_d1 f_2_3) i_1_9) t_1_6))))))) p_term_0) _lh_p_expr_arg1_0))
        and all_crit_pairs_0 = (fun _lh_all_crit_pairs_arg1_0 _lh_all_crit_pairs_arg2_0 -> 
          (let rec eqn'_0 = ((stand_eqn_d0 (`LH_C('1', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
            (let rec eqn''_0 = ((stand_eqn_d1 (`LH_C('2', (`LH_N)))) _lh_all_crit_pairs_arg1_0) in
              (let rec theory''_0 = ((map_d7 (stand_eqn_d2 (`LH_C('2', (`LH_N))))) _lh_all_crit_pairs_arg2_0) in
                ((mappend_d4 ((map_d8 ((mk_crit_0 eqn'_0) eqn''_0)) ((strict_super_0 (lhs_d5 eqn'_0)) (lhs_d6 eqn''_0)))) (concat_d0 ((map_d9 (crit_pairs_0 eqn'_0)) theory''_0)))))))
        and parse_0 = (fun _lh_parse_arg1_0 -> 
          ((fun _lh_funcomp_x_7 -> 
            ((fun _lh_funcomp_x_8 -> 
              ((fun _lh_funcomp_x_9 -> 
                (unExpr_0 (fst_d1 _lh_funcomp_x_9))) (the_d2 _lh_funcomp_x_8))) (p_expr_0 _lh_funcomp_x_7))) _lh_parse_arg1_0))
        and mk_cons_0 = (fun _lh_mk_cons_arg1_0 _lh_mk_cons_arg2_0 -> 
          (match _lh_mk_cons_arg2_0 with
            | `List(_lh_mk_cons_List_0_0) -> 
              (`List((`LH_C(_lh_mk_cons_arg1_0, _lh_mk_cons_List_0_0))))
            | _ -> 
              (failwith "error")))
        and string_of_0 = (fun _lh_string_of_arg1_0 _lh_string_of_arg2_0 -> 
          (let rec chars_0 = ((takeWhile_d0 _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
            (let rec s'_0 = ((dropWhile_d1 _lh_string_of_arg1_0) _lh_string_of_arg2_0) in
              ((maybeX_d1 (chars_0 <> (`LH_N))) (`LH_P2((`MkString(chars_0)), s'_0))))))
        and preorder_0 = (fun _lh_preorder_arg1_0 -> 
          (if ((eqListExpr_d2 _lh_preorder_arg1_0) (`LH_N)) then
            (`LH_N)
          else
            ((mappend_d8 (let rec h_1_9 = (g_first_0 _lh_preorder_arg1_0) in
              (let rec t_1_9 = (fun ys_1 -> 
                ys_1) in
                (fun ys_2 -> 
                  (`LH_C(h_1_9, ((mappend_d8 t_1_9) ys_2))))))) (preorder_0 (g_rest_0 _lh_preorder_arg1_0)))))
        and alphanum_0 = (fun _lh_alphanum_arg1_0 -> 
          (((((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'A')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'Z'))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char 'a')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char 'z')))) || (((int_of_char _lh_alphanum_arg1_0) >= (int_of_char '0')) && ((int_of_char _lh_alphanum_arg1_0) <= (int_of_char '9')))))
        and preprocess_0 = (fun _lh_preprocess_arg1_0 _lh_preprocess_arg2_0 -> 
          (match _lh_preprocess_arg2_0 with
            | `LH_P2(_lh_preprocess_LH_P2_0_0, _lh_preprocess_LH_P2_1_0) -> 
              (let rec _lh_process1_LH_P2_0_0 = ((simplify_d0 (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_0_0) in
                (let rec _lh_process1_LH_P2_1_0 = ((simplify_d1 (super_reduce_0 _lh_preprocess_arg1_0)) _lh_preprocess_LH_P2_1_0) in
                  (fun _lh_process1_arg1_1 _lh_process1_arg2_1 _lh_process1_arg3_1 _lh_process1_arg4_1 _lh_process1_arg5_1 add_agenda_2 process2_1 process_2 -> 
                    (let rec o_0 = ((fst_d0 _lh_process1_arg1_1) (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))) in
                      (let rec _lh_matchIdent_1_1 = o_0 in
                        (match _lh_matchIdent_1_1 with
                          | `Unrelated -> 
                            (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) (((add_agenda_2 (fun dum_0 -> 
                              1000)) (`LH_C((`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0)), (`LH_N)))) _lh_process1_arg5_1))
                          | `Equal -> 
                            (((((process_2 _lh_process1_arg1_1) _lh_process1_arg2_1) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1)
                          | _ -> 
                            (let rec eqn_0 = (let rec _lh_matchIdent_1_2 = o_0 in
                              (match _lh_matchIdent_1_2 with
                                | `Greater -> 
                                  (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_0_0, _lh_process1_LH_P2_1_0))))
                                | `Less -> 
                                  (`Eqn(_lh_process1_arg2_1, (`LH_P2(_lh_process1_LH_P2_1_0, _lh_process1_LH_P2_0_0))))
                                | _ -> 
                                  (failwith "error"))) in
                              ((((((process2_1 _lh_process1_arg1_1) (_lh_process1_arg2_1 + 1)) _lh_process1_arg3_1) _lh_process1_arg4_1) _lh_process1_arg5_1) eqn_0))))))))
            | _ -> 
              (failwith "error")))
        and empty_net_0 = (`Return((`LH_N)))
        and process_0 = (fun _lh_process_arg1_0 _lh_process_arg2_0 _lh_process_arg3_0 _lh_process_arg4_0 _lh_process_arg5_0 -> 
          (match _lh_process_arg5_0 with
            | `LH_N -> 
              _lh_process_arg4_0
            | `LH_C(_lh_process_LH_C_0_0, _lh_process_LH_C_1_0) -> 
              (match _lh_process_LH_C_0_0 with
                | `Item(_lh_process_Item_0_0, _lh_process_Item_1_0) -> 
                  ((((((process1_0 _lh_process_arg1_0) _lh_process_arg2_0) _lh_process_arg3_0) _lh_process_arg4_0) _lh_process_LH_C_1_0) ((preprocess_0 _lh_process_arg4_0) _lh_process_Item_1_0))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
        in (let rec group_completion_0 = ((knuth_bendix_0 ((rpo_0 (rank_order_0 rank_0)) lex_ext_0)) ((map_d1_d5 parse_eqn_0) (let rec h_2_0 = (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))) in
          (let rec t_2_0 = (let rec h_2_1 = (`LH_C('E', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('x', (`LH_N))))))))))))))))))) in
            (let rec t_2_1 = (let rec h_2_2 = (`LH_C('I', (`LH_C('(', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('*', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('E', (`LH_N))))))))))))))))))))))))) in
              (let rec t_2_2 = (fun f_2_4 -> 
                (`LH_N)) in
                (fun f_2_5 -> 
                  (`LH_C((f_2_5 h_2_2), ((map_d1_d5 f_2_5) t_2_2)))))) in
              (fun f_2_6 -> 
                (`LH_C((f_2_6 h_2_1), ((map_d1_d5 f_2_6) t_2_1)))))) in
            (fun f_2_7 -> 
              (`LH_C((f_2_7 h_2_0), ((map_d1_d5 f_2_7) t_2_0)))))))) in
          ((eqExpr_d1 ((simplify_d4 (super_reduce_0 group_completion_0)) (parse_0 _lh_result_LH_P2_0_0))) (parse_0 _lh_result_LH_P2_1_0))))))))
and try_all_d0 _lh_try_all_arg1_0 =
  (((foldr_d1_d1 orElseMap_d4) (fun dum_6 -> 
    croak_d1_d0)) _lh_try_all_arg1_0)
and unify_d0 _lh_unify_arg1_0 _lh_unify_arg2_0 =
  ((unify'_d0 (`LH_N)) (let rec _lh_unify'_LH_P2_0_1 = _lh_unify_arg1_0 in
    (let rec _lh_unify'_LH_P2_1_1 = _lh_unify_arg2_0 in
      (fun _lh_unify'_arg1_2 -> 
        (match _lh_unify'_LH_P2_0_1 with
          | `Var(_lh_unify'_Var_0_2) -> 
            (((univar_d0 _lh_unify'_arg1_2) _lh_unify'_Var_0_2) _lh_unify'_LH_P2_1_1)
          | `Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2) -> 
            (match _lh_unify'_LH_P2_1_1 with
              | `Var(_lh_unify'_Var_0_3) -> 
                (((univar_d1 _lh_unify'_arg1_2) _lh_unify'_Var_0_3) (`Func(_lh_unify'_Func_0_2, _lh_unify'_Func_1_2)))
              | `Func(_lh_unify'_Func_0_3, _lh_unify'_Func_1_3) -> 
                (if (_lh_unify'_Func_0_2 = _lh_unify'_Func_0_3) then
                  (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_2) ((zip_d2 _lh_unify'_Func_1_2) _lh_unify'_Func_1_3))
                else
                  croak_d1_d1)
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))))))
and univar_d0 _lh_univar_arg1_1 _lh_univar_arg2_1 _lh_univar_arg3_1 =
  (let rec t_1_2_7 = ((assoc_d7 _lh_univar_arg1_1) _lh_univar_arg2_1) in
    (if (exists_d4 t_1_2_7) then
      ((unify'_d0 _lh_univar_arg1_1) (let rec _lh_unify'_LH_P2_0_3 = (the_d4 t_1_2_7) in
        (let rec _lh_unify'_LH_P2_1_3 = _lh_univar_arg3_1 in
          (fun _lh_unify'_arg1_4 -> 
            (match _lh_unify'_LH_P2_0_3 with
              | `Var(_lh_unify'_Var_0_6) -> 
                (((univar_d0 _lh_unify'_arg1_4) _lh_unify'_Var_0_6) _lh_unify'_LH_P2_1_3)
              | `Func(_lh_unify'_Func_0_6, _lh_unify'_Func_1_6) -> 
                (match _lh_unify'_LH_P2_1_3 with
                  | `Var(_lh_unify'_Var_0_7) -> 
                    (((univar_d1 _lh_unify'_arg1_4) _lh_unify'_Var_0_7) (`Func(_lh_unify'_Func_0_6, _lh_unify'_Func_1_6)))
                  | `Func(_lh_unify'_Func_0_7, _lh_unify'_Func_1_7) -> 
                    (if (_lh_unify'_Func_0_6 = _lh_unify'_Func_0_7) then
                      (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_4) ((zip_d2 _lh_unify'_Func_1_6) _lh_unify'_Func_1_7))
                    else
                      croak_d1_d1)
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))))))
    else
      (if ((eqExpr_d5 _lh_univar_arg3_1) (`Var(_lh_univar_arg2_1))) then
        (succeed_d8 _lh_univar_arg1_1)
      else
        (let rec u'_1 = ((sub_d5 _lh_univar_arg3_1) _lh_univar_arg1_1) in
          (if (not ((occurs_d2 _lh_univar_arg2_1) u'_1)) then
            (succeed_d9 ((comp_sub_d0 (`LH_C((`LH_P2(_lh_univar_arg2_1, u'_1)), (`LH_N)))) _lh_univar_arg1_1))
          else
            croak_d1_d2)))))
and univar_d1 _lh_univar_arg1_0 _lh_univar_arg2_0 _lh_univar_arg3_0 =
  (let rec t_7_6 = ((assoc_d1_d0 _lh_univar_arg1_0) _lh_univar_arg2_0) in
    (if (exists_d5 t_7_6) then
      ((unify'_d0 _lh_univar_arg1_0) (let rec _lh_unify'_LH_P2_0_0 = (the_d5 t_7_6) in
        (let rec _lh_unify'_LH_P2_1_0 = _lh_univar_arg3_0 in
          (fun _lh_unify'_arg1_1 -> 
            (match _lh_unify'_LH_P2_0_0 with
              | `Var(_lh_unify'_Var_0_0) -> 
                (((univar_d0 _lh_unify'_arg1_1) _lh_unify'_Var_0_0) _lh_unify'_LH_P2_1_0)
              | `Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0) -> 
                (match _lh_unify'_LH_P2_1_0 with
                  | `Var(_lh_unify'_Var_0_1) -> 
                    (((univar_d1 _lh_unify'_arg1_1) _lh_unify'_Var_0_1) (`Func(_lh_unify'_Func_0_0, _lh_unify'_Func_1_0)))
                  | `Func(_lh_unify'_Func_0_1, _lh_unify'_Func_1_1) -> 
                    (if (_lh_unify'_Func_0_0 = _lh_unify'_Func_0_1) then
                      (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_1) ((zip_d2 _lh_unify'_Func_1_0) _lh_unify'_Func_1_1))
                    else
                      croak_d1_d1)
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error"))))))
    else
      (if ((eqExpr_d6 _lh_univar_arg3_0) (`Var(_lh_univar_arg2_0))) then
        (succeed_d1_d0 _lh_univar_arg1_0)
      else
        (let rec u'_0 = ((sub_d7 _lh_univar_arg3_0) _lh_univar_arg1_0) in
          (if (not ((occurs_d3 _lh_univar_arg2_0) u'_0)) then
            (succeed_d1_d1 ((comp_sub_d1 (`LH_C((`LH_P2(_lh_univar_arg2_0, u'_0)), (`LH_N)))) _lh_univar_arg1_0))
          else
            croak_d1_d3)))))
and zip_d0 xs_1_7 ys_3_5 _lh_popOutId_0_1_4 _lh_popOutId_1_9 =
  (match xs_1_7 with
    | `LH_C(hx_5, tx_5) -> 
      (match ys_3_5 with
        | `LH_C(hy_6, ty_6) -> 
          (let rec _lh_prop_fold_LH_C_0_0 = (let rec _lh_match'_LH_P2_0_1 = hx_5 in
            (let rec _lh_match'_LH_P2_1_1 = hy_6 in
              (fun _lh_match'_arg1_2 -> 
                (match _lh_match'_LH_P2_0_1 with
                  | `Var(_lh_match'_Var_0_2) -> 
                    (let rec u_1 = ((assoc_d1 _lh_match'_arg1_2) _lh_match'_Var_0_2) in
                      (if (not (exists_d2 u_1)) then
                        (succeed_d0 (`LH_C((`LH_P2(_lh_match'_Var_0_2, _lh_match'_LH_P2_1_1)), _lh_match'_arg1_2)))
                      else
                        (if ((eqExpr_d3 (the_d0 u_1)) _lh_match'_LH_P2_1_1) then
                          (succeed_d1 _lh_match'_arg1_2)
                        else
                          croak_d4)))
                  | `Func(_lh_match'_Func_0_2, _lh_match'_Func_1_2) -> 
                    (match _lh_match'_LH_P2_1_1 with
                      | `Func(_lh_match'_Func_0_3, _lh_match'_Func_1_3) -> 
                        (if (_lh_match'_Func_0_2 = _lh_match'_Func_0_3) then
                          (((prop_fold_d0 match'_d0) _lh_match'_arg1_2) ((zip_d0 _lh_match'_Func_1_2) _lh_match'_Func_1_3))
                        else
                          croak_d5)
                      | `Var(_lh_match'_Var_0_3) -> 
                        croak_d6
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_prop_fold_LH_C_1_0 = ((zip_d0 tx_5) ty_6) in
              (((prop2_d0 (prop_fold_d0 _lh_popOutId_1_9)) ((_lh_popOutId_1_9 _lh_popOutId_0_1_4) _lh_prop_fold_LH_C_0_0)) _lh_prop_fold_LH_C_1_0)))
        | `LH_N -> 
          (`Just(_lh_popOutId_0_1_4)))
    | `LH_N -> 
      (`Just(_lh_popOutId_0_1_4)))
and zip_d1 xs_2_3 ys_4_6 _lh_popOutId_0_2_2 _lh_popOutId_1_1_3 =
  (match xs_2_3 with
    | `LH_C(hx_6, tx_6) -> 
      (match ys_4_6 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (let rec _lh_prop_fold_LH_C_0_1 = (let rec _lh_match'_LH_P2_0_2 = hx_6 in
            (let rec _lh_match'_LH_P2_1_2 = hy_1_0 in
              (fun _lh_match'_arg1_3 -> 
                (match _lh_match'_LH_P2_0_2 with
                  | `Var(_lh_match'_Var_0_4) -> 
                    (let rec u_2 = ((assoc_d3 _lh_match'_arg1_3) _lh_match'_Var_0_4) in
                      (if (not (exists_d3 u_2)) then
                        (succeed_d2 (`LH_C((`LH_P2(_lh_match'_Var_0_4, _lh_match'_LH_P2_1_2)), _lh_match'_arg1_3)))
                      else
                        (if ((eqExpr_d4 (the_d1 u_2)) _lh_match'_LH_P2_1_2) then
                          (succeed_d3 _lh_match'_arg1_3)
                        else
                          croak_d7)))
                  | `Func(_lh_match'_Func_0_4, _lh_match'_Func_1_4) -> 
                    (match _lh_match'_LH_P2_1_2 with
                      | `Func(_lh_match'_Func_0_5, _lh_match'_Func_1_5) -> 
                        (if (_lh_match'_Func_0_4 = _lh_match'_Func_0_5) then
                          (((prop_fold_d1 match'_d1) _lh_match'_arg1_3) ((zip_d1 _lh_match'_Func_1_4) _lh_match'_Func_1_5))
                        else
                          croak_d8)
                      | `Var(_lh_match'_Var_0_5) -> 
                        croak_d9
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_prop_fold_LH_C_1_1 = ((zip_d1 tx_6) ty_1_0) in
              (((prop2_d1 (prop_fold_d1 _lh_popOutId_1_1_3)) ((_lh_popOutId_1_1_3 _lh_popOutId_0_2_2) _lh_prop_fold_LH_C_0_1)) _lh_prop_fold_LH_C_1_1)))
        | `LH_N -> 
          (`Just(_lh_popOutId_0_2_2)))
    | `LH_N -> 
      (`Just(_lh_popOutId_0_2_2)))
and zip_d2 xs_3_0 ys_5_5 _lh_popOutId_0_2_9 _lh_popOutId_1_1_9 =
  (match xs_3_0 with
    | `LH_C(hx_7, tx_7) -> 
      (match ys_5_5 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (let rec _lh_prop_fold_LH_C_0_2 = (let rec _lh_unify'_LH_P2_0_2 = hx_7 in
            (let rec _lh_unify'_LH_P2_1_2 = hy_1_1 in
              (fun _lh_unify'_arg1_3 -> 
                (match _lh_unify'_LH_P2_0_2 with
                  | `Var(_lh_unify'_Var_0_4) -> 
                    (((univar_d0 _lh_unify'_arg1_3) _lh_unify'_Var_0_4) _lh_unify'_LH_P2_1_2)
                  | `Func(_lh_unify'_Func_0_4, _lh_unify'_Func_1_4) -> 
                    (match _lh_unify'_LH_P2_1_2 with
                      | `Var(_lh_unify'_Var_0_5) -> 
                        (((univar_d1 _lh_unify'_arg1_3) _lh_unify'_Var_0_5) (`Func(_lh_unify'_Func_0_4, _lh_unify'_Func_1_4)))
                      | `Func(_lh_unify'_Func_0_5, _lh_unify'_Func_1_5) -> 
                        (if (_lh_unify'_Func_0_4 = _lh_unify'_Func_0_5) then
                          (((prop_fold_d2 unify'_d0) _lh_unify'_arg1_3) ((zip_d2 _lh_unify'_Func_1_4) _lh_unify'_Func_1_5))
                        else
                          croak_d1_d1)
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_prop_fold_LH_C_1_2 = ((zip_d2 tx_7) ty_1_1) in
              (((prop2_d2 (prop_fold_d2 _lh_popOutId_1_1_9)) ((_lh_popOutId_1_1_9 _lh_popOutId_0_2_9) _lh_prop_fold_LH_C_0_2)) _lh_prop_fold_LH_C_1_2)))
        | `LH_N -> 
          (`Just(_lh_popOutId_0_2_9)))
    | `LH_N -> 
      (`Just(_lh_popOutId_0_2_9)));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Rewrite_nofib" (fun () -> ignore (let open Module_original in ((testRewrite_nofib_d0 50))));
  Bench.Test.create ~name:"lumberhack_Rewrite_nofib" (fun () -> ignore (let open Module_lumberhack in ((testRewrite_nofib_d0 50))));
  Bench.Test.create ~name:"lumberhack_pop_out_Rewrite_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testRewrite_nofib_d0 50))));
])