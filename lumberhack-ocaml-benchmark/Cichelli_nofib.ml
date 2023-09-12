(*
touch ./Cichelli_nofib.mli && ocamlc ./Cichelli_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Cichelli_nofib.ml -o "./Cichelli_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Cichelli_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec all_d0 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all_d0 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec assocm_d0 _lh_assocm_arg1_2 _lh_assocm_arg2_2 =
  (match _lh_assocm_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_2, _lh_assocm_LH_C_1_2) -> 
      (match _lh_assocm_LH_C_0_2 with
        | `LH_P2(_lh_assocm_LH_P2_0_2, _lh_assocm_LH_P2_1_2) -> 
          (if (_lh_assocm_arg1_2 = _lh_assocm_LH_P2_0_2) then
            (`Just(_lh_assocm_LH_P2_1_2))
          else
            ((assocm_d0 _lh_assocm_arg1_2) _lh_assocm_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm_d1 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (`Just(_lh_assocm_LH_P2_1_1))
          else
            ((assocm_d1 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc_d0 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (match _lh_assoc_arg2_2 with
    | `LH_C(_lh_assoc_LH_C_0_2, _lh_assoc_LH_C_1_2) -> 
      (match _lh_assoc_LH_C_0_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          (if (_lh_assoc_arg1_2 = _lh_assoc_LH_P2_0_2) then
            _lh_assoc_LH_P2_1_2
          else
            ((assoc_d0 _lh_assoc_arg1_2) _lh_assoc_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc_d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc_d1 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ends_d0 _lh_ends_arg1_1 =
  (match _lh_ends_arg1_1 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_1) -> 
      (`LH_C(_lh_ends_K_1_1, (`LH_C(_lh_ends_K_2_1, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec ends_d1 _lh_ends_arg1_3 =
  (match _lh_ends_arg1_3 with
    | `K(_lh_ends_K_0_3, _lh_ends_K_1_3, _lh_ends_K_2_3, _lh_ends_K_3_3) -> 
      (`LH_C(_lh_ends_K_1_3, (`LH_C(_lh_ends_K_2_3, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec ends_d2 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_2, _lh_ends_K_1_2, _lh_ends_K_2_2, _lh_ends_K_3_2) -> 
      (`LH_C(_lh_ends_K_1_2, (`LH_C(_lh_ends_K_2_2, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_d0 a_8 b_5 =
  (if (a_8 <= b_5) then
    (`LH_C(a_8, ((enumFromTo_d0 (a_8 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo_d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo_d2 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo_d2 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo_d3 a_9 b_6 =
  (if (a_9 <= b_6) then
    (`LH_C(a_9, ((enumFromTo_d3 (a_9 + 1)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo_d4 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo_d4 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec first_d0 _lh_first_arg1_4 _lh_first_arg2_4 =
  (match _lh_first_arg2_4 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_4))
    | `LH_C(_lh_first_LH_C_0_4, _lh_first_LH_C_1_4) -> 
      (let rec _lh_matchIdent_1_2 = _lh_first_LH_C_0_4 in
        (match _lh_matchIdent_1_2 with
          | `YesIts(_lh_first_YesIts_0_4, _lh_first_YesIts_1_4) -> 
            (`YesIts((_lh_first_arg1_4 + _lh_first_YesIts_0_4), _lh_first_YesIts_1_4))
          | `NotEver(_lh_first_NotEver_0_4) -> 
            ((first_d0 (_lh_first_arg1_4 + _lh_first_NotEver_0_4)) _lh_first_LH_C_1_4)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first_d1 _lh_first_arg1_1 _lh_first_arg2_1 =
  (match _lh_first_arg2_1 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_1))
    | `LH_C(_lh_first_LH_C_0_1, _lh_first_LH_C_1_1) -> 
      (let rec _lh_matchIdent_8 = _lh_first_LH_C_0_1 in
        (match _lh_matchIdent_8 with
          | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
            (`YesIts((_lh_first_arg1_1 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
          | `NotEver(_lh_first_NotEver_0_1) -> 
            ((first_d1 (_lh_first_arg1_1 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first_d2 _lh_first_arg1_3 _lh_first_arg2_3 =
  (match _lh_first_arg2_3 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_3))
    | `LH_C(_lh_first_LH_C_0_3, _lh_first_LH_C_1_3) -> 
      (let rec _lh_matchIdent_1_1 = _lh_first_LH_C_0_3 in
        (match _lh_matchIdent_1_1 with
          | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
            (`YesIts((_lh_first_arg1_3 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
          | `NotEver(_lh_first_NotEver_0_3) -> 
            ((first_d2 (_lh_first_arg1_3 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first_d3 _lh_first_arg1_2 _lh_first_arg2_2 =
  (match _lh_first_arg2_2 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_2))
    | `LH_C(_lh_first_LH_C_0_2, _lh_first_LH_C_1_2) -> 
      (let rec _lh_matchIdent_1_0 = _lh_first_LH_C_0_2 in
        (match _lh_matchIdent_1_0 with
          | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
            (`YesIts((_lh_first_arg1_2 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
          | `NotEver(_lh_first_NotEver_0_2) -> 
            ((first_d3 (_lh_first_arg1_2 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec foldr_d0 f_1_5 i_3 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((f_1_5 h_2_6) (((foldr_d0 f_1_5) i_3) t_2_8))
    | `LH_N -> 
      i_3);;
let rec foldr_d1 f_1_9 i_4 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_3, t_3_5) -> 
      ((f_1_9 h_3_3) (((foldr_d1 f_1_9) i_4) t_3_5))
    | `LH_N -> 
      i_4);;
let rec freqsorted_d0 _lh_freqsorted_arg1_1 =
  _lh_freqsorted_arg1_1;;
let rec head_d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_4, t_3_6) -> 
      h_3_4
    | `LH_N -> 
      (failwith "error"));;
let rec head_d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      h_2_0
    | `LH_N -> 
      (failwith "error"));;
let rec histins_d0 _lh_histins_arg1_1 _lh_histins_arg2_1 =
  (match _lh_histins_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_1, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_1, _lh_histins_LH_C_1_1) -> 
      (match _lh_histins_LH_C_0_1 with
        | `LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1) -> 
          (if (_lh_histins_arg1_1 = _lh_histins_LH_P2_0_1) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, (_lh_histins_LH_P2_1_1 + 1))), _lh_histins_LH_C_1_1))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1)), ((histins_d0 _lh_histins_arg1_1) _lh_histins_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec keys_d0 _lh_keys_arg1_3 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys_d1 _lh_keys_arg1_1 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys_d2 _lh_keys_arg1_2 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys_d3 _lh_keys_arg1_4 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec last_d0 _lh_last_arg1_2 =
  (match _lh_last_arg1_2 with
    | `LH_C(_lh_last_LH_C_0_2, _lh_last_LH_C_1_2) -> 
      (let rec go_2 = (fun _lh_go_arg1_2 _lh_go_arg2_2 -> 
        (match _lh_go_arg2_2 with
          | `LH_N -> 
            _lh_go_arg1_2
          | `LH_C(_lh_go_LH_C_0_2, _lh_go_LH_C_1_2) -> 
            ((go_2 _lh_go_LH_C_0_2) _lh_go_LH_C_1_2)
          | _ -> 
            (failwith "error"))) in
        ((go_2 _lh_last_LH_C_0_2) _lh_last_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec last_d1 _lh_last_arg1_1 =
  (match _lh_last_arg1_1 with
    | `LH_C(_lh_last_LH_C_0_1, _lh_last_LH_C_1_1) -> 
      (let rec go_1 = (fun _lh_go_arg1_1 _lh_go_arg2_1 -> 
        (match _lh_go_arg2_1 with
          | `LH_N -> 
            _lh_go_arg1_1
          | `LH_C(_lh_go_LH_C_0_1, _lh_go_LH_C_1_1) -> 
            ((go_1 _lh_go_LH_C_0_1) _lh_go_LH_C_1_1)
          | _ -> 
            (failwith "error"))) in
        ((go_1 _lh_last_LH_C_0_1) _lh_last_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec length_d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length_d0 t_2_9))
    | `LH_N -> 
      0);;
let rec length_d1 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_3_8, t_4_0) -> 
      (1 + (length_d1 t_4_0))
    | `LH_N -> 
      0);;
let rec length_d2 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_1, t_3_3) -> 
      (1 + (length_d2 t_3_3))
    | `LH_N -> 
      0);;
let rec length_d3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (1 + (length_d3 t_2_6))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend_d0 t_2_7) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend_d1 t_3_2) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend_d2 t_3_9) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend_d3 t_4_3) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d4 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend_d4 t_3_8) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec map_d0 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_3 h_2_2), ((map_d0 f_1_3) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_1_8 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C((f_1_8 h_3_2), ((map_d1 f_1_8) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2 f_1_7 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_7 h_2_9), ((map_d2 f_1_7) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_2 h_2_1), ((map_d3 f_1_2) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C((f_1_4 h_2_3), ((map_d4 f_1_4) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d5 f_2_0 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C((f_2_0 h_3_5), ((map_d5 f_2_0) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d6 f_1_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C((f_1_6 h_2_8), ((map_d6 f_1_6) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec max_d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec member_d0 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member_d0 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec member_d1 _lh_member_arg1_3 _lh_member_arg2_3 =
  (match _lh_member_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_3, _lh_member_LH_C_1_3) -> 
      ((_lh_member_arg1_3 = _lh_member_LH_C_0_3) || ((member_d1 _lh_member_arg1_3) _lh_member_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec member_d2 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member_d2 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec min_d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec select_d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_0_1)), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec take_d0 n_6 ls_3_4 =
  (if (n_6 > 0) then
    (match ls_3_4 with
      | `LH_C(h_4_0, t_4_2) -> 
        (`LH_C(h_4_0, ((take_d0 (n_6 - 1)) t_4_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec attribkeys_d0 _lh_attribkeys_arg1_2 =
  ((map_d0 (fun k_2 -> 
    (`K(k_2, (head_d0 k_2), (last_d0 k_2), (length_d0 k_2))))) _lh_attribkeys_arg1_2)
and attribkeys_d1 _lh_attribkeys_arg1_1 =
  ((map_d5 (fun k_1 -> 
    (`K(k_1, (head_d1 k_1), (last_d1 k_1), (length_d1 k_1))))) _lh_attribkeys_arg1_1)
and blocked'_d0 _lh_blocked'_arg1_1 _lh_blocked'_arg2_1 =
  (match _lh_blocked'_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_C_1_1) -> 
      (let rec ds'_1 = ((union_d0 _lh_blocked'_arg1_1) (ends_d0 _lh_blocked'_LH_C_0_1)) in
        (let rec _lh_matchIdent_9 = ((partition'_d0 (fun x_4 -> 
          ((subset_d0 (ends_d1 x_4)) ds'_1))) _lh_blocked'_LH_C_1_1) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_blocked'_LH_P2_0_1, _lh_blocked'_LH_P2_1_1) -> 
              ((mappend_d0 (`LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_P2_0_1))) ((blocked'_d0 ds'_1) _lh_blocked'_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and blocked_d0 _lh_blocked_arg1_1 =
  ((blocked'_d0 (`LH_N)) _lh_blocked_arg1_1)
and cichelli_d0 _lh_cichelli_arg1_1 =
  (let rec attribkeys'_1 = (attribkeys_d0 ((mappend_d4 (keys_d2 0)) ((take_d0 (_lh_cichelli_arg1_1 mod 2)) (keys_d3 0)))) in
    (let rec hashkeys_1 = ((fun _lh_funcomp_x_1 -> 
      (blocked_d0 (freqsorted_d0 _lh_funcomp_x_1))) attribkeys'_1) in
      (findhash_d0 hashkeys_1)))
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_9, t_4_1) -> 
      ((mappend_d2 h_3_9) (concat_d0 t_4_1))
    | `LH_N -> 
      (`LH_N))
and findhash'_d0 _lh_findhash'_arg1_1 _lh_findhash'_arg2_1 _lh_findhash'_arg3_1 =
  (match _lh_findhash'_arg3_1 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_1))
    | `LH_C(_lh_findhash'_LH_C_0_1, _lh_findhash'_LH_C_1_1) -> 
      (match _lh_findhash'_LH_C_0_1 with
        | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_1, _lh_findhash'_K_2_1, _lh_findhash'_K_3_1) -> 
          (let rec try_1 = (fun newAssocs_1 -> 
            (let rec newCharAssocs_1 = ((mappend_d3 newAssocs_1) _lh_findhash'_arg2_1) in
              (let rec _lh_matchIdent_5 = ((hinsert_d0 ((hash_d0 newCharAssocs_1) (`K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_1, _lh_findhash'_K_2_1, _lh_findhash'_K_3_1)))) _lh_findhash'_arg1_1) in
                (match _lh_matchIdent_5 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_4) -> 
                    (((findhash'_d0 _lh_findhash'_Just_0_4) newCharAssocs_1) _lh_findhash'_LH_C_1_1)
                  | _ -> 
                    (failwith "error"))))) in
            (let rec maxval_1 = (length_d3 (freqtab_d0 0)) in
              (let rec _lh_matchIdent_6 = (`LH_P2(((assocm_d0 _lh_findhash'_K_1_1) _lh_findhash'_arg2_1), ((assocm_d1 _lh_findhash'_K_2_1) _lh_findhash'_arg2_1))) in
                (match _lh_matchIdent_6 with
                  | `LH_P2(_lh_findhash'_LH_P2_0_2, _lh_findhash'_LH_P2_1_2) -> 
                    (match _lh_findhash'_LH_P2_0_2 with
                      | `Nothing -> 
                        (match _lh_findhash'_LH_P2_1_2 with
                          | `Nothing -> 
                            (if (_lh_findhash'_K_1_1 = _lh_findhash'_K_2_1) then
                              ((firstSuccess_d2 (fun m_2 -> 
                                (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_1_1, m_2)), (`LH_N)))))) ((enumFromTo_d2 0) maxval_1))
                            else
                              ((firstSuccess_d3 (fun mn_1 -> 
                                (let rec _lh_matchIdent_7 = mn_1 in
                                  (match _lh_matchIdent_7 with
                                    | `LH_P2(_lh_findhash'_LH_P2_0_3, _lh_findhash'_LH_P2_1_3) -> 
                                      (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_1_1, _lh_findhash'_LH_P2_0_3)), (`LH_C((`LH_P2(_lh_findhash'_K_2_1, _lh_findhash'_LH_P2_1_3)), (`LH_N))))))
                                    | _ -> 
                                      (failwith "error"))))) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
                                (match _lh_listcomp_fun_para_3 with
                                  | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                                    (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
                                      (match _lh_listcomp_fun_para_4 with
                                        | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                                          (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_h_4)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
                                        | `LH_N -> 
                                          (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))) in
                                      (_lh_listcomp_fun_4 ((enumFromTo_d4 0) maxval_1)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_3 ((enumFromTo_d3 0) maxval_1)))))
                          | `Just(_lh_findhash'_Just_0_5) -> 
                            ((firstSuccess_d0 (fun m_3 -> 
                              (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_1_1, m_3)), (`LH_N)))))) ((enumFromTo_d0 0) maxval_1))
                          | _ -> 
                            (failwith "error"))
                      | `Just(_lh_findhash'_Just_0_6) -> 
                        (match _lh_findhash'_LH_P2_1_2 with
                          | `Nothing -> 
                            ((firstSuccess_d1 (fun n_5 -> 
                              (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_2_1, n_5)), (`LH_N)))))) ((enumFromTo_d1 0) maxval_1))
                          | `Just(_lh_findhash'_Just_0_7) -> 
                            (try_1 (`LH_N))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error")))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and findhash_d0 _lh_findhash_arg1_1 =
  (((findhash'_d0 (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_1)
and firstSuccess_d0 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first_d0 0) ((map_d1 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess_d1 _lh_firstSuccess_arg1_4 _lh_firstSuccess_arg2_4 =
  ((first_d1 0) ((map_d2 _lh_firstSuccess_arg1_4) _lh_firstSuccess_arg2_4))
and firstSuccess_d2 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first_d2 0) ((map_d3 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess_d3 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first_d3 0) ((map_d4 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and freqtab_d0 _lh_freqtab_arg1_1 =
  (histo_d0 (concat_d0 ((map_d6 ends_d2) (attribkeys_d1 (keys_d0 0)))))
and hash_d0 _lh_hash_arg1_1 _lh_hash_arg2_1 =
  (match _lh_hash_arg2_1 with
    | `K(_lh_hash_K_0_1, _lh_hash_K_1_1, _lh_hash_K_2_1, _lh_hash_K_3_1) -> 
      ((_lh_hash_K_3_1 + ((assoc_d0 _lh_hash_K_1_1) _lh_hash_arg1_1)) + ((assoc_d1 _lh_hash_K_2_1) _lh_hash_arg1_1))
    | _ -> 
      (failwith "error"))
and hinsert_d0 _lh_hinsert_arg1_1 _lh_hinsert_arg2_1 =
  (match _lh_hinsert_arg2_1 with
    | `H(_lh_hinsert_H_0_1, _lh_hinsert_H_1_1, _lh_hinsert_H_2_1) -> 
      (let rec lo'_1 = ((minm_d0 _lh_hinsert_H_0_1) _lh_hinsert_arg1_1) in
        (let rec hi'_1 = ((maxm_d0 _lh_hinsert_H_1_1) _lh_hinsert_arg1_1) in
          (if (((member_d2 _lh_hinsert_arg1_1) _lh_hinsert_H_2_1) || (((1 + hi'_1) - lo'_1) > (length_d2 (keys_d1 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_1)), (`Just(hi'_1)), (`LH_C(_lh_hinsert_arg1_1, _lh_hinsert_H_2_1)))))))))
    | _ -> 
      (failwith "error"))
and histo_d0 _lh_histo_arg1_1 =
  (((foldr_d1 histins_d0) (`LH_N)) _lh_histo_arg1_1)
and maxm_d0 _lh_maxm_arg1_1 _lh_maxm_arg2_1 =
  (match _lh_maxm_arg1_1 with
    | `Nothing -> 
      _lh_maxm_arg2_1
    | `Just(_lh_maxm_Just_0_1) -> 
      ((max_d0 _lh_maxm_Just_0_1) _lh_maxm_arg2_1)
    | _ -> 
      (failwith "error"))
and minm_d0 _lh_minm_arg1_1 _lh_minm_arg2_1 =
  (match _lh_minm_arg1_1 with
    | `Nothing -> 
      _lh_minm_arg2_1
    | `Just(_lh_minm_Just_0_1) -> 
      ((min_d0 _lh_minm_Just_0_1) _lh_minm_arg2_1)
    | _ -> 
      (failwith "error"))
and partition'_d0 _lh_partition'_arg1_1 =
  ((foldr_d0 (select_d0 _lh_partition'_arg1_1)) (`LH_P2((`LH_N), (`LH_N))))
and prog_d0 _lh_prog_arg1_1 =
  (cichelli_d0 _lh_prog_arg1_1)
and subset_d0 _lh_subset_arg1_1 _lh_subset_arg2_1 =
  ((all_d0 (fun x_5 -> 
    ((member_d0 x_5) _lh_subset_arg2_1))) _lh_subset_arg1_1)
and testCichelli_nofib_d0 _lh_testCichelli_nofib_arg1_1 =
  (prog_d0 _lh_testCichelli_nofib_arg1_1)
and union_d0 _lh_union_arg1_1 _lh_union_arg2_1 =
  ((mappend_d1 _lh_union_arg1_1) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (if (not ((member_d1 _lh_listcomp_fun_ls_h_5) _lh_union_arg1_1)) then
          (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
        else
          (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 _lh_union_arg2_1)));;

(* lumberhack *)
let rec all_d0_d0_d0 _lh_all_arg1_4 _lh_all_arg2_1 =
  (_lh_all_arg2_1 (Obj.magic 99));;
let rec all_d0_d0_d1 _lh_all_arg1_3 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_3);;
let rec all_d0_d0_d2 _lh_all_arg1_5 _lh_all_arg2_2 =
  (_lh_all_arg2_2 _lh_all_arg1_5);;
let rec assocm_d1_d0_d0 _lh_assocm_arg1_2 _lh_assocm_arg2_2 =
  (match _lh_assocm_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_2, _lh_assocm_LH_C_1_2) -> 
      (Obj.magic 99)
    | _ -> 
      (Obj.magic 99));;
let rec assocm_d1_d1_d0 _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (`Just((Obj.magic 99)))
          else
            ((assocm_d1_d1_d0 _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d0_d0_d0 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (match _lh_assoc_arg2_0 with
    | `LH_C(_lh_assoc_LH_C_0_0, _lh_assoc_LH_C_1_0) -> 
      (match _lh_assoc_LH_C_0_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          (if (_lh_assoc_arg1_0 = _lh_assoc_LH_P2_0_0) then
            _lh_assoc_LH_P2_1_0
          else
            ((assoc_d0_d0_d0 _lh_assoc_arg1_0) _lh_assoc_LH_C_1_0))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d0_d1_d0 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (match _lh_assoc_arg2_2 with
    | `LH_C(_lh_assoc_LH_C_0_2, _lh_assoc_LH_C_1_2) -> 
      (match _lh_assoc_LH_C_0_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          (if (_lh_assoc_arg1_2 = _lh_assoc_LH_P2_0_2) then
            _lh_assoc_LH_P2_1_2
          else
            ((assoc_d0_d1_d0 _lh_assoc_arg1_2) _lh_assoc_LH_C_1_2))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d1_d0_d0 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc_d1_d0_d0 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d1_d1_d0 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (match _lh_assoc_arg2_3 with
    | `LH_C(_lh_assoc_LH_C_0_3, _lh_assoc_LH_C_1_3) -> 
      (match _lh_assoc_LH_C_0_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          (if (_lh_assoc_arg1_3 = _lh_assoc_LH_P2_0_3) then
            _lh_assoc_LH_P2_1_3
          else
            ((assoc_d1_d1_d0 _lh_assoc_arg1_3) _lh_assoc_LH_C_1_3))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec concat_d0_d0_d0 lss_2 =
  (lss_2 99);;
let rec concat_d0_d0_d1 lss_4 =
  (lss_4 99);;
let rec concat_d0_d0_d2 lss_9 =
  (lss_9 99);;
let rec concat_d0_d0_d3 lss_1 =
  (lss_1 99);;
let rec concat_d0_d0_d4 lss_0 =
  (lss_0 99);;
let rec concat_d0_d1_d0 lss_5 =
  (lss_5 99);;
let rec concat_d0_d1_d1 lss_8 =
  (lss_8 99);;
let rec concat_d0_d1_d2 lss_3 =
  (lss_3 99);;
let rec concat_d0_d1_d3 lss_7 =
  (lss_7 99);;
let rec concat_d0_d1_d4 lss_6 =
  (lss_6 99);;
let rec ends_d2_d0_d0 _lh_ends_arg1_3 =
  (_lh_ends_arg1_3 99);;
let rec ends_d2_d1_d0 _lh_ends_arg1_2 =
  (_lh_ends_arg1_2 99);;
let rec first_d0_d0_d0 _lh_first_arg1_2_1 _lh_first_arg2_9 =
  (_lh_first_arg2_9 _lh_first_arg1_2_1);;
let rec first_d0_d0_d1 _lh_first_arg1_2_5 _lh_first_arg2_1_2 =
  (_lh_first_arg2_1_2 _lh_first_arg1_2_5);;
let rec first_d0_d1_d0 _lh_first_arg1_2_8 _lh_first_arg2_1_4 =
  (_lh_first_arg2_1_4 _lh_first_arg1_2_8);;
let rec first_d0_d1_d1 _lh_first_arg1_2_9 _lh_first_arg2_1_5 =
  (_lh_first_arg2_1_5 _lh_first_arg1_2_9);;
let rec first_d1_d0_d0 _lh_first_arg1_5 _lh_first_arg2_1 =
  (_lh_first_arg2_1 _lh_first_arg1_5);;
let rec first_d1_d0_d1 _lh_first_arg1_1_4 _lh_first_arg2_6 =
  (_lh_first_arg2_6 _lh_first_arg1_1_4);;
let rec first_d1_d1_d0 _lh_first_arg1_1_6 _lh_first_arg2_8 =
  (_lh_first_arg2_8 _lh_first_arg1_1_6);;
let rec first_d1_d1_d1 _lh_first_arg1_2 _lh_first_arg2_0 =
  (_lh_first_arg2_0 _lh_first_arg1_2);;
let rec first_d2_d0_d0 _lh_first_arg1_7 _lh_first_arg2_3 =
  (_lh_first_arg2_3 _lh_first_arg1_7);;
let rec first_d2_d0_d1 _lh_first_arg1_6 _lh_first_arg2_2 =
  (_lh_first_arg2_2 _lh_first_arg1_6);;
let rec first_d2_d1_d0 _lh_first_arg1_1_5 _lh_first_arg2_7 =
  (_lh_first_arg2_7 _lh_first_arg1_1_5);;
let rec first_d2_d1_d1 _lh_first_arg1_1_3 _lh_first_arg2_5 =
  (_lh_first_arg2_5 _lh_first_arg1_1_3);;
let rec first_d3_d0_d0 _lh_first_arg1_2_6 _lh_first_arg2_1_3 =
  (_lh_first_arg2_1_3 _lh_first_arg1_2_6);;
let rec first_d3_d0_d1 _lh_first_arg1_2_2 _lh_first_arg2_1_0 =
  (_lh_first_arg2_1_0 _lh_first_arg1_2_2);;
let rec first_d3_d1_d0 _lh_first_arg1_1_2 _lh_first_arg2_4 =
  (_lh_first_arg2_4 _lh_first_arg1_1_2);;
let rec first_d3_d1_d1 _lh_first_arg1_2_3 _lh_first_arg2_1_1 =
  (_lh_first_arg2_1_1 _lh_first_arg1_2_3);;
let rec foldr_d0_d0_d0 f_9_8 i_1_0 ls_6_5 =
  (match ls_6_5 with
    | `LH_C(h_6_1, t_6_9) -> 
      ((f_9_8 h_6_1) (((foldr_d0_d0_d0 f_9_8) i_1_0) t_6_9))
    | `LH_N -> 
      i_1_0);;
let rec foldr_d1_d0_d0 f_2_1 i_1 ls_2_0 =
  ((ls_2_0 f_2_1) i_1);;
let rec foldr_d1_d0_d1 f_8 i_0 ls_5 =
  ((ls_5 f_8) i_0);;
let rec foldr_d1_d0_d2 f_3_9 i_4 ls_3_4 =
  ((ls_3_4 f_3_9) i_4);;
let rec foldr_d1_d1_d0 f_9_3 i_9 ls_6_1 =
  ((ls_6_1 f_9_3) i_9);;
let rec foldr_d1_d1_d1 f_4_4 i_5 ls_3_5 =
  ((ls_3_5 f_4_4) i_5);;
let rec foldr_d1_d1_d2 f_6_8 i_7 ls_4_6 =
  ((ls_4_6 f_6_8) i_7);;
let rec freqsorted_d0_d0_d0 _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec hash_d0_d0_d0 _lh_hash_arg1_1 _lh_hash_arg2_0 =
  (_lh_hash_arg2_0 _lh_hash_arg1_1);;
let rec hash_d0_d1_d0 _lh_hash_arg1_3 _lh_hash_arg2_1 =
  (_lh_hash_arg2_1 _lh_hash_arg1_3);;
let rec head_d0_d0_d0 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_4_8, t_5_6) -> 
      h_4_8
    | `LH_N -> 
      (Obj.magic 99));;
let rec head_d1_d0_d0 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_3_9, t_4_7) -> 
      h_3_9
    | `LH_N -> 
      (Obj.magic 99));;
let rec head_d1_d1_d0 ls_6_7 =
  (match ls_6_7 with
    | `LH_C(h_6_2, t_7_0) -> 
      h_6_2
    | `LH_N -> 
      (Obj.magic 99));;
let rec hinsert_d0_d1_d0 _lh_hinsert_arg1_1 _lh_hinsert_arg2_1 =
  (_lh_hinsert_arg2_1 _lh_hinsert_arg1_1);;
let rec histins_d0_d0_d0 _lh_histins_arg1_1 _lh_histins_arg2_1 =
  (match _lh_histins_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_1, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_1, _lh_histins_LH_C_1_1) -> 
      (match _lh_histins_LH_C_0_1 with
        | `LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1) -> 
          (if (_lh_histins_arg1_1 = _lh_histins_LH_P2_0_1) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, (_lh_histins_LH_P2_1_1 + 1))), _lh_histins_LH_C_1_1))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1)), ((histins_d0_d0_d0 _lh_histins_arg1_1) _lh_histins_LH_C_1_1))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec histins_d0_d1_d0 _lh_histins_arg1_0 _lh_histins_arg2_0 =
  (match _lh_histins_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_0, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_0, _lh_histins_LH_C_1_0) -> 
      (match _lh_histins_LH_C_0_0 with
        | `LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0) -> 
          (if (_lh_histins_arg1_0 = _lh_histins_LH_P2_0_0) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, (_lh_histins_LH_P2_1_0 + 1))), _lh_histins_LH_C_1_0))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0)), ((histins_d0_d1_d0 _lh_histins_arg1_0) _lh_histins_LH_C_1_0))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec last_d0_d0_d0 _lh_last_arg1_2 =
  (match _lh_last_arg1_2 with
    | `LH_C(_lh_last_LH_C_0_2, _lh_last_LH_C_1_2) -> 
      (let rec go_2_5 = (fun _lh_go_arg1_2_5 _lh_go_arg2_2 -> 
        (match _lh_go_arg2_2 with
          | `LH_N -> 
            _lh_go_arg1_2_5
          | `LH_C(_lh_go_LH_C_0_1_9, _lh_go_LH_C_1_1_9) -> 
            ((go_2_5 _lh_go_LH_C_0_1_9) _lh_go_LH_C_1_1_9)
          | _ -> 
            (Obj.magic 99))) in
        ((go_2_5 _lh_last_LH_C_0_2) _lh_last_LH_C_1_2))
    | _ -> 
      (Obj.magic 99));;
let rec last_d1_d0_d0 _lh_last_arg1_1 =
  (match _lh_last_arg1_1 with
    | `LH_C(_lh_last_LH_C_0_1, _lh_last_LH_C_1_1) -> 
      (let rec go_1 = (fun _lh_go_arg1_1 _lh_go_arg2_1 -> 
        ((_lh_go_arg2_1 _lh_go_arg1_1) go_1)) in
        ((go_1 _lh_last_LH_C_0_1) _lh_last_LH_C_1_1))
    | _ -> 
      (Obj.magic 99));;
let rec last_d1_d1_d0 _lh_last_arg1_0 =
  (match _lh_last_arg1_0 with
    | `LH_C(_lh_last_LH_C_0_0, _lh_last_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
        ((_lh_go_arg2_0 _lh_go_arg1_0) go_0)) in
        ((go_0 _lh_last_LH_C_0_0) _lh_last_LH_C_1_0))
    | _ -> 
      (Obj.magic 99));;
let rec length_d0_d0_d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_0, t_1_0) -> 
      (1 + (length_d0_d0_d0 t_1_0))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d0 ls_6 =
  (ls_6 99);;
let rec length_d2_d0_d1 ls_7_1 =
  (ls_7_1 99);;
let rec length_d2_d0_d2 ls_5_0 =
  (ls_5_0 99);;
let rec length_d2_d0_d3 ls_8 =
  (ls_8 99);;
let rec length_d2_d0_d4 ls_1_5 =
  (ls_1_5 99);;
let rec length_d2_d1_d0 ls_2 =
  (ls_2 99);;
let rec length_d2_d1_d1 ls_5_7 =
  (ls_5_7 99);;
let rec length_d2_d1_d2 ls_1_8 =
  (ls_1_8 99);;
let rec length_d2_d1_d3 ls_2_2 =
  (ls_2_2 99);;
let rec length_d2_d1_d4 ls_9 =
  (ls_9 99);;
let rec length_d3_d0_d0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_2_0, t_2_8) -> 
      (1 + (length_d3_d0_d0 t_2_8))
    | `LH_N -> 
      0);;
let rec length_d3_d1_d0 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_1, t_1_1) -> 
      (1 + (length_d3_d1_d0 t_1_1))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0 xs_2_1 ys_3_9 =
  (xs_2_1 ys_3_9);;
let rec mappend_d0_d0_d1 xs_1_8 ys_3_6 =
  (xs_1_8 ys_3_6);;
let rec mappend_d0_d0_d2 xs_5 ys_6 =
  (xs_5 ys_6);;
let rec mappend_d1_d0_d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_d1_d0_d0 t_8) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_d2_d0_d0 xs_1_1 ys_1_6 =
  (xs_1_1 ys_1_6);;
let rec mappend_d2_d0_d1 xs_1_9 ys_3_7 =
  (xs_1_9 ys_3_7);;
let rec mappend_d2_d0_d2 xs_1_3 ys_3_1 =
  (xs_1_3 ys_3_1);;
let rec mappend_d2_d0_d3 xs_1_6 ys_3_4 =
  (xs_1_6 ys_3_4);;
let rec mappend_d2_d0_d4 xs_2_2 ys_4_3 =
  (xs_2_2 ys_4_3);;
let rec mappend_d2_d0_d5 xs_7 ys_8 =
  (xs_7 ys_8);;
let rec mappend_d2_d1_d0 xs_2_0 ys_3_8 =
  (xs_2_0 ys_3_8);;
let rec mappend_d2_d1_d1 xs_8 ys_9 =
  (xs_8 ys_9);;
let rec mappend_d2_d1_d2 xs_4 ys_5 =
  (xs_4 ys_5);;
let rec mappend_d2_d1_d3 xs_1_0 ys_1_5 =
  (xs_1_0 ys_1_5);;
let rec mappend_d2_d1_d4 xs_1 ys_2 =
  (xs_1 ys_2);;
let rec mappend_d2_d1_d5 xs_9 ys_1_0 =
  (xs_9 ys_1_0);;
let rec mappend_d3_d0_d0 xs_1_7 ys_3_5 =
  (xs_1_7 ys_3_5);;
let rec mappend_d3_d1_d0 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec mappend_d4_d0_d0 xs_6 ys_7 =
  (xs_6 ys_7);;
let rec mappend_d4_d0_d1 xs_3 ys_4 =
  (xs_3 ys_4);;
let rec mappend_d4_d0_d2 xs_1_5 ys_3_3 =
  (xs_1_5 ys_3_3);;
let rec mappend_d4_d0_d3 xs_1_2 ys_2_5 =
  (xs_1_2 ys_2_5);;
let rec mappend_d4_d0_d4 xs_1_4 ys_3_2 =
  (xs_1_4 ys_3_2);;
let rec map_d0_d0_d0 f_6_4 ls_4_2 =
  (ls_4_2 f_6_4);;
let rec map_d0_d0_d1 f_1_2 ls_1_2 =
  (ls_1_2 f_1_2);;
let rec map_d0_d0_d2 f_9_4 ls_6_2 =
  (ls_6_2 f_9_4);;
let rec map_d0_d0_d3 f_9_1 ls_5_9 =
  (ls_5_9 f_9_1);;
let rec map_d0_d0_d4 f_9_0 ls_5_8 =
  (ls_5_8 f_9_0);;
let rec map_d0_d0_d5 f_8_7 ls_5_4 =
  (ls_5_4 (Obj.magic 99));;
let rec map_d0_d0_d6 f_3_4 ls_2_8 =
  (ls_2_8 f_3_4);;
let rec map_d0_d0_d7 f_9_9 ls_6_6 =
  (ls_6_6 f_9_9);;
let rec map_d0_d0_d8 f_8_8 ls_5_5 =
  (ls_5_5 f_8_8);;
let rec map_d1_d0_d0 f_5_7 ls_3_8 =
  (ls_3_8 f_5_7);;
let rec map_d1_d0_d1 f_1_0_2 ls_7_0 =
  (ls_7_0 f_1_0_2);;
let rec map_d1_d1_d0 f_2_4 ls_2_4 =
  (ls_2_4 f_2_4);;
let rec map_d1_d1_d1 f_7 ls_4 =
  (ls_4 f_7);;
let rec map_d2_d0_d0 f_8_6 ls_5_3 =
  (ls_5_3 f_8_6);;
let rec map_d2_d0_d1 f_3_7 ls_3_2 =
  (ls_3_2 f_3_7);;
let rec map_d2_d1_d0 f_3_5 ls_3_0 =
  (ls_3_0 f_3_5);;
let rec map_d2_d1_d1 f_1_3 ls_1_3 =
  (ls_1_3 f_1_3);;
let rec map_d3_d0_d0 f_9_7 ls_6_4 =
  (ls_6_4 f_9_7);;
let rec map_d3_d0_d1 f_9_2 ls_6_0 =
  (ls_6_0 f_9_2);;
let rec map_d3_d1_d0 f_6_9 ls_4_7 =
  (ls_4_7 f_6_9);;
let rec map_d3_d1_d1 f_3_6 ls_3_1 =
  (ls_3_1 f_3_6);;
let rec map_d4_d0_d0 f_1_7 ls_1_7 =
  (ls_1_7 f_1_7);;
let rec map_d4_d0_d1 f_6_7 ls_4_5 =
  (ls_4_5 f_6_7);;
let rec map_d4_d1_d0 f_1_0_6 ls_7_2 =
  (ls_7_2 f_1_0_6);;
let rec map_d4_d1_d1 f_8_4 ls_5_1 =
  (ls_5_1 f_8_4);;
let rec map_d5_d0_d0 f_2_2 ls_2_1 =
  (ls_2_1 f_2_2);;
let rec map_d5_d0_d1 f_6_5 ls_4_3 =
  (ls_4_3 (Obj.magic 99));;
let rec map_d5_d0_d2 f_1_6 ls_1_6 =
  (ls_1_6 f_1_6);;
let rec map_d5_d0_d3 f_6 ls_1 =
  (ls_1 f_6);;
let rec map_d5_d0_d4 f_1_0_1 ls_6_9 =
  (ls_6_9 f_1_0_1);;
let rec map_d5_d1_d0 f_9_5 ls_6_3 =
  (ls_6_3 f_9_5);;
let rec map_d5_d1_d1 f_1_0 ls_1_0 =
  (ls_1_0 (Obj.magic 99));;
let rec map_d5_d1_d2 f_2_0 ls_1_9 =
  (ls_1_9 f_2_0);;
let rec map_d5_d1_d3 f_7_0 ls_4_8 =
  (ls_4_8 f_7_0);;
let rec map_d5_d1_d4 f_6_2 ls_3_9 =
  (ls_3_9 f_6_2);;
let rec map_d6_d0_d0 f_2_3 ls_2_3 =
  (ls_2_3 (Obj.magic 99));;
let rec map_d6_d0_d1 f_6_6 ls_4_4 =
  (ls_4_4 f_6_6);;
let rec map_d6_d0_d2 f_1_0_0 ls_6_8 =
  (ls_6_8 f_1_0_0);;
let rec map_d6_d0_d3 f_3_2 ls_2_6 =
  (ls_2_6 f_3_2);;
let rec map_d6_d0_d4 f_4_5 ls_3_6 =
  (ls_3_6 f_4_5);;
let rec map_d6_d1_d0 f_8_5 ls_5_2 =
  (ls_5_2 (Obj.magic 99));;
let rec map_d6_d1_d1 f_2_5 ls_2_5 =
  (ls_2_5 f_2_5);;
let rec map_d6_d1_d2 f_3_3 ls_2_7 =
  (ls_2_7 f_3_3);;
let rec map_d6_d1_d3 f_9 ls_7 =
  (ls_7 f_9);;
let rec map_d6_d1_d4 f_8_9 ls_5_6 =
  (ls_5_6 f_8_9);;
let rec maxm_d0_d1_d0 _lh_maxm_arg1_1 _lh_maxm_arg2_1 =
  (_lh_maxm_arg1_1 _lh_maxm_arg2_1);;
let rec max_d0_d0_d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec member_d0_d0_d0 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member_d0_d0_d0 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (Obj.magic 99));;
let rec member_d1_d0_d0 _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member_d1_d0_d0 _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (Obj.magic 99));;
let rec member_d1_d0_d1 _lh_member_arg1_4 _lh_member_arg2_4 =
  (match _lh_member_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_4, _lh_member_LH_C_1_4) -> 
      ((_lh_member_arg1_4 = _lh_member_LH_C_0_4) || ((member_d1_d0_d1 _lh_member_arg1_4) _lh_member_LH_C_1_4))
    | _ -> 
      (Obj.magic 99));;
let rec member_d2_d0_d0 _lh_member_arg1_3 _lh_member_arg2_3 =
  (match _lh_member_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_3, _lh_member_LH_C_1_3) -> 
      ((_lh_member_arg1_3 = _lh_member_LH_C_0_3) || ((member_d2_d0_d0 _lh_member_arg1_3) _lh_member_LH_C_1_3))
    | _ -> 
      (Obj.magic 99));;
let rec member_d2_d1_d0 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      (Obj.magic 99)
    | _ -> 
      (Obj.magic 99));;
let rec minm_d0_d1_d0 _lh_minm_arg1_0 _lh_minm_arg2_0 =
  (_lh_minm_arg1_0 _lh_minm_arg2_0);;
let rec min_d0_d0_d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec take_d0_d0_d0 n_5 ls_0 =
  (if (n_5 > 0) then
    (ls_0 n_5)
  else
    (fun f_5 -> 
      (`LH_N)));;
let rec take_d0_d0_d1 n_9 ls_4_0 =
  (if (n_9 > 0) then
    (ls_4_0 n_9)
  else
    (fun f_6_3 -> 
      (`LH_N)));;
let rec take_d0_d0_d2 n_1_0 ls_4_9 =
  (if (n_1_0 > 0) then
    (ls_4_9 n_1_0)
  else
    (fun f_7_1 -> 
      (`LH_N)));;
let rec take_d0_d0_d3 n_7 ls_3_3 =
  (if (n_7 > 0) then
    (ls_3_3 n_7)
  else
    (fun f_3_8 -> 
      (`LH_N)));;
let rec take_d0_d0_d4 n_6 ls_1_1 =
  (if (n_6 > 0) then
    (ls_1_1 n_6)
  else
    (fun f_1_1 -> 
      (`LH_N)));;
let rec assocm_d0_d0_d0 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_2 _lh_findhash'_K_2_2 _lh_findhash'_LH_P2_1_1 maxval_2 try_2 -> 
        (match _lh_findhash'_LH_P2_1_1 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_2 = _lh_findhash'_K_2_2) then
              ((firstSuccess_d2_d1_d0 (fun m_0 -> 
                (try_2 (let rec h_2_2 = (`LH_P2(_lh_findhash'_K_1_2, m_0)) in
                  (let rec t_3_0 = (fun ys_1_8 -> 
                    ys_1_8) in
                    (fun ys_1_9 -> 
                      (`LH_C(h_2_2, ((mappend_d3_d1_d0 t_3_0) ys_1_9))))))))) ((enumFromTo_d2_d0_d0 0) maxval_2))
            else
              ((firstSuccess_d3_d1_d0 (fun mn_0 -> 
                (let rec _lh_matchIdent_7 = mn_0 in
                  (((_lh_matchIdent_7 _lh_findhash'_K_1_2) _lh_findhash'_K_2_2) try_2)))) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_4) maxval_2)) in
                (_lh_listcomp_fun_4 ((enumFromTo_d3_d0_d0 0) maxval_2)))))
          | `Just(_lh_findhash'_Just_0_0) -> 
            ((firstSuccess_d0_d1_d0 (fun m_1 -> 
              (try_2 (let rec h_2_3 = (`LH_P2(_lh_findhash'_K_1_2, m_1)) in
                (let rec t_3_1 = (fun ys_2_0 -> 
                  ys_2_0) in
                  (fun ys_2_1 -> 
                    (`LH_C(h_2_3, ((mappend_d3_d1_d0 t_3_1) ys_2_1))))))))) ((enumFromTo_d0_d0_d0 0) maxval_2))
          | _ -> 
            (Obj.magic 99)))
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (Obj.magic 99)
    | _ -> 
      (Obj.magic 99))
and assocm_d0_d1_d0 _lh_assocm_arg1_3 _lh_assocm_arg2_3 =
  (match _lh_assocm_arg2_3 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_7 _lh_findhash'_K_2_7 _lh_findhash'_LH_P2_1_5 maxval_1_0 try_7 -> 
        (match _lh_findhash'_LH_P2_1_5 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_7 = _lh_findhash'_K_2_7) then
              ((firstSuccess_d2_d0_d0 (fun m_2 -> 
                (try_7 (let rec h_6_6 = (`LH_P2(_lh_findhash'_K_1_7, m_2)) in
                  (let rec t_7_4 = (fun ys_4_4 -> 
                    ys_4_4) in
                    (fun ys_4_5 -> 
                      (`LH_C(h_6_6, ((mappend_d3_d0_d0 t_7_4) ys_4_5))))))))) ((enumFromTo_d2_d1_d0 0) maxval_1_0))
            else
              ((firstSuccess_d3_d0_d0 (fun mn_1 -> 
                (let rec _lh_matchIdent_1_3 = mn_1 in
                  (((_lh_matchIdent_1_3 _lh_findhash'_K_1_7) _lh_findhash'_K_2_7) try_7)))) (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_4 -> 
                ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_5) maxval_1_0)) in
                (_lh_listcomp_fun_1_5 ((enumFromTo_d3_d1_d0 0) maxval_1_0)))))
          | `Just(_lh_findhash'_Just_0_3) -> 
            ((firstSuccess_d0_d0_d0 (fun m_3 -> 
              (try_7 (let rec h_6_7 = (`LH_P2(_lh_findhash'_K_1_7, m_3)) in
                (let rec t_7_5 = (fun ys_4_6 -> 
                  ys_4_6) in
                  (fun ys_4_7 -> 
                    (`LH_C(h_6_7, ((mappend_d3_d0_d0 t_7_5) ys_4_7))))))))) ((enumFromTo_d0_d1_d0 0) maxval_1_0))
          | _ -> 
            (Obj.magic 99)))
    | `LH_C(_lh_assocm_LH_C_0_3, _lh_assocm_LH_C_1_3) -> 
      (match _lh_assocm_LH_C_0_3 with
        | `LH_P2(_lh_assocm_LH_P2_0_3, _lh_assocm_LH_P2_1_3) -> 
          (if (_lh_assocm_arg1_3 = _lh_assocm_LH_P2_0_3) then
            (fun _lh_findhash'_K_1_8 _lh_findhash'_K_2_8 _lh_findhash'_LH_P2_1_6 maxval_1_1 try_8 -> 
              (match _lh_findhash'_LH_P2_1_6 with
                | `Nothing -> 
                  ((firstSuccess_d1_d0_d0 (fun n_1_1 -> 
                    (try_8 (let rec h_6_8 = (`LH_P2(_lh_findhash'_K_2_8, n_1_1)) in
                      (let rec t_7_6 = (fun ys_4_8 -> 
                        ys_4_8) in
                        (fun ys_4_9 -> 
                          (`LH_C(h_6_8, ((mappend_d3_d0_d0 t_7_6) ys_4_9))))))))) ((enumFromTo_d1_d1_d0 0) maxval_1_1))
                | `Just(_lh_findhash'_Just_0_4) -> 
                  (try_8 (fun ys_5_0 -> 
                    ys_5_0))
                | _ -> 
                  (Obj.magic 99)))
          else
            ((assocm_d0_d1_d0 _lh_assocm_arg1_3) _lh_assocm_LH_C_1_3))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and attribkeys_d0_d0_d0 _lh_attribkeys_arg1_2 =
  ((map_d0_d0_d0 (fun k_2 -> 
    (`K(k_2, (head_d0_d0_d0 k_2), (last_d0_d0_d0 k_2), (length_d0_d0_d0 k_2))))) _lh_attribkeys_arg1_2)
and attribkeys_d1_d0_d0 _lh_attribkeys_arg1_0 =
  ((map_d5_d0_d0 (fun k_0 -> 
    (let rec _lh_ends_K_1_2 = (head_d1_d0_d0 k_0) in
      (let rec _lh_ends_K_2_2 = (last_d1_d0_d0 k_0) in
        (fun _lh_dummy_0 -> 
          (let rec h_1_5 = _lh_ends_K_1_2 in
            (let rec t_1_5 = (let rec h_1_6 = _lh_ends_K_2_2 in
              (let rec t_1_6 = (fun ys_1_1 -> 
                ys_1_1) in
                (fun ys_1_2 -> 
                  (let rec h_1_7 = h_1_6 in
                    (let rec t_1_7 = ((mappend_d2_d0_d0 t_1_6) ys_1_2) in
                      (fun f_2_8 i_2 -> 
                        ((f_2_8 h_1_7) (((foldr_d1_d0_d0 f_2_8) i_2) t_1_7)))))))) in
              (fun ys_1_3 -> 
                (let rec h_1_8 = h_1_5 in
                  (let rec t_1_8 = ((mappend_d2_d0_d1 t_1_5) ys_1_3) in
                    (fun f_2_9 i_3 -> 
                      ((f_2_9 h_1_8) (((foldr_d1_d0_d1 f_2_9) i_3) t_1_8))))))))))))) _lh_attribkeys_arg1_0)
and attribkeys_d1_d1_d0 _lh_attribkeys_arg1_1 =
  ((map_d5_d1_d0 (fun k_1 -> 
    (let rec _lh_ends_K_1_3 = (head_d1_d1_d0 k_1) in
      (let rec _lh_ends_K_2_3 = (last_d1_d1_d0 k_1) in
        (fun _lh_dummy_2_1 -> 
          (let rec h_6_9 = _lh_ends_K_1_3 in
            (let rec t_7_7 = (let rec h_7_0 = _lh_ends_K_2_3 in
              (let rec t_7_8 = (fun ys_5_1 -> 
                ys_5_1) in
                (fun ys_5_2 -> 
                  (let rec h_7_1 = h_7_0 in
                    (let rec t_7_9 = ((mappend_d2_d1_d0 t_7_8) ys_5_2) in
                      (fun f_1_0_4 i_1_1 -> 
                        ((f_1_0_4 h_7_1) (((foldr_d1_d1_d0 f_1_0_4) i_1_1) t_7_9)))))))) in
              (fun ys_5_3 -> 
                (let rec h_7_2 = h_6_9 in
                  (let rec t_8_0 = ((mappend_d2_d1_d1 t_7_7) ys_5_3) in
                    (fun f_1_0_5 i_1_2 -> 
                      ((f_1_0_5 h_7_2) (((foldr_d1_d1_d1 f_1_0_5) i_1_2) t_8_0))))))))))))) _lh_attribkeys_arg1_1)
and blocked'_d0_d0_d0 _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union_d0_d0_d0 _lh_blocked'_arg1_0) (ends_d0_d0_d0 _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_0 = ((partition'_d0_d0_d0 (fun x_0 -> 
          ((subset_d0_d0_d0 (ends_d1_d0_d0 x_0)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend_d0_d0_d0 (let rec h_9 = _lh_blocked'_LH_C_0_0 in
                (let rec t_9 = _lh_blocked'_LH_P2_0_0 in
                  (fun ys_1 -> 
                    (`LH_C(h_9, ((mappend_d0_d0_d1 t_9) ys_1))))))) ((blocked'_d0_d0_d0 ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (Obj.magic 99))))
    | _ -> 
      (Obj.magic 99))
and blocked_d0_d0_d0 _lh_blocked_arg1_0 =
  ((blocked'_d0_d0_d0 (`LH_N)) _lh_blocked_arg1_0)
and cichelli_d0_d0_d0 _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys_d0_d0_d0 ((mappend_d4_d0_d4 (keys_d2_d0_d0 0)) ((take_d0_d0_d4 (_lh_cichelli_arg1_0 mod 2)) (keys_d3_d0_d0 0)))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked_d0_d0_d0 (freqsorted_d0_d0_d0 _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash_d0_d0_d0 hashkeys_0)))
and ends_d0_d0_d0 _lh_ends_arg1_0 =
  (match _lh_ends_arg1_0 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_0, _lh_ends_K_2_0, _lh_ends_K_3_0) -> 
      (let rec _lh_listcomp_fun_ls_h_0 = _lh_ends_K_1_0 in
        (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_h_1 = _lh_ends_K_2_0 in
          (let rec _lh_listcomp_fun_ls_t_1 = (fun _lh_listcomp_fun_0 _lh_union_arg1_0 -> 
            (`LH_N)) in
            (fun _lh_listcomp_fun_1 _lh_union_arg1_1 -> 
              (if (not ((member_d1_d0_d0 _lh_listcomp_fun_ls_h_1) _lh_union_arg1_1)) then
                (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
              else
                (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))))) in
          (fun _lh_listcomp_fun_2 _lh_union_arg1_2 -> 
            (if (not ((member_d1_d0_d1 _lh_listcomp_fun_ls_h_0) _lh_union_arg1_2)) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_0)))))
    | _ -> 
      (Obj.magic 99))
and ends_d1_d0_d0 _lh_ends_arg1_1 =
  (match _lh_ends_arg1_1 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_1) -> 
      (let rec _lh_all_LH_C_0_0 = _lh_ends_K_1_1 in
        (let rec _lh_all_LH_C_1_0 = (let rec _lh_all_LH_C_0_1 = _lh_ends_K_2_1 in
          (let rec _lh_all_LH_C_1_1 = (fun _lh_all_arg1_0 -> 
            true) in
            (fun _lh_all_arg1_1 -> 
              (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
                ((all_d0_d0_d0 _lh_all_arg1_1) _lh_all_LH_C_1_1)
              else
                false)))) in
          (fun _lh_all_arg1_2 -> 
            (if (_lh_all_arg1_2 _lh_all_LH_C_0_0) then
              ((all_d0_d0_d1 _lh_all_arg1_2) _lh_all_LH_C_1_0)
            else
              false))))
    | _ -> 
      (Obj.magic 99))
and enumFromTo_d0_d0_d0 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec h_1_4 = a_2 in
      (let rec t_1_4 = ((enumFromTo_d0_d0_d0 (a_2 + 1)) b_2) in
        (fun f_2_6 -> 
          (let rec _lh_first_LH_C_0_2 = (f_2_6 h_1_4) in
            (let rec _lh_first_LH_C_1_2 = ((map_d1_d1_d0 f_2_6) t_1_4) in
              (fun _lh_first_arg1_8 -> 
                (let rec _lh_matchIdent_3 = _lh_first_LH_C_0_2 in
                  (match _lh_matchIdent_3 with
                    | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
                      (`YesIts((_lh_first_arg1_8 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
                    | `NotEver(_lh_first_NotEver_0_2) -> 
                      ((first_d0_d1_d0 (_lh_first_arg1_8 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
                    | _ -> 
                      (Obj.magic 99)))))))))
  else
    (fun f_2_7 _lh_first_arg1_9 -> 
      (`NotEver(_lh_first_arg1_9))))
and enumFromTo_d0_d1_d0 a_4 b_4 =
  (if (a_4 <= b_4) then
    (let rec h_2_5 = a_4 in
      (let rec t_3_3 = ((enumFromTo_d0_d1_d0 (a_4 + 1)) b_4) in
        (fun f_4_0 -> 
          (let rec _lh_first_LH_C_0_4 = (f_4_0 h_2_5) in
            (let rec _lh_first_LH_C_1_4 = ((map_d1_d0_d0 f_4_0) t_3_3) in
              (fun _lh_first_arg1_1_7 -> 
                (let rec _lh_matchIdent_8 = _lh_first_LH_C_0_4 in
                  (match _lh_matchIdent_8 with
                    | `YesIts(_lh_first_YesIts_0_4, _lh_first_YesIts_1_4) -> 
                      (`YesIts((_lh_first_arg1_1_7 + _lh_first_YesIts_0_4), _lh_first_YesIts_1_4))
                    | `NotEver(_lh_first_NotEver_0_4) -> 
                      ((first_d0_d0_d0 (_lh_first_arg1_1_7 + _lh_first_NotEver_0_4)) _lh_first_LH_C_1_4)
                    | _ -> 
                      (Obj.magic 99)))))))))
  else
    (fun f_4_1 _lh_first_arg1_1_8 -> 
      (`NotEver(_lh_first_arg1_1_8))))
and enumFromTo_d1_d0_d0 a_5 b_5 =
  (if (a_5 <= b_5) then
    (let rec h_2_6 = a_5 in
      (let rec t_3_4 = ((enumFromTo_d1_d0_d0 (a_5 + 1)) b_5) in
        (fun f_4_2 -> 
          (let rec _lh_first_LH_C_0_5 = (f_4_2 h_2_6) in
            (let rec _lh_first_LH_C_1_5 = ((map_d2_d1_d0 f_4_2) t_3_4) in
              (fun _lh_first_arg1_1_9 -> 
                (let rec _lh_matchIdent_9 = _lh_first_LH_C_0_5 in
                  (match _lh_matchIdent_9 with
                    | `YesIts(_lh_first_YesIts_0_5, _lh_first_YesIts_1_5) -> 
                      (`YesIts((_lh_first_arg1_1_9 + _lh_first_YesIts_0_5), _lh_first_YesIts_1_5))
                    | `NotEver(_lh_first_NotEver_0_5) -> 
                      ((first_d1_d1_d0 (_lh_first_arg1_1_9 + _lh_first_NotEver_0_5)) _lh_first_LH_C_1_5)
                    | _ -> 
                      (Obj.magic 99)))))))))
  else
    (fun f_4_3 _lh_first_arg1_2_0 -> 
      (`NotEver(_lh_first_arg1_2_0))))
and enumFromTo_d1_d1_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec h_1_3 = a_1 in
      (let rec t_1_3 = ((enumFromTo_d1_d1_d0 (a_1 + 1)) b_1) in
        (fun f_1_8 -> 
          (let rec _lh_first_LH_C_0_1 = (f_1_8 h_1_3) in
            (let rec _lh_first_LH_C_1_1 = ((map_d2_d0_d0 f_1_8) t_1_3) in
              (fun _lh_first_arg1_3 -> 
                (let rec _lh_matchIdent_2 = _lh_first_LH_C_0_1 in
                  (match _lh_matchIdent_2 with
                    | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
                      (`YesIts((_lh_first_arg1_3 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
                    | `NotEver(_lh_first_NotEver_0_1) -> 
                      ((first_d1_d0_d0 (_lh_first_arg1_3 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
                    | _ -> 
                      (Obj.magic 99)))))))))
  else
    (fun f_1_9 _lh_first_arg1_4 -> 
      (`NotEver(_lh_first_arg1_4))))
and enumFromTo_d2_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec h_1_2 = a_0 in
      (let rec t_1_2 = ((enumFromTo_d2_d0_d0 (a_0 + 1)) b_0) in
        (fun f_1_4 -> 
          (let rec _lh_first_LH_C_0_0 = (f_1_4 h_1_2) in
            (let rec _lh_first_LH_C_1_0 = ((map_d3_d1_d0 f_1_4) t_1_2) in
              (fun _lh_first_arg1_0 -> 
                (let rec _lh_matchIdent_1 = _lh_first_LH_C_0_0 in
                  (match _lh_matchIdent_1 with
                    | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
                      (`YesIts((_lh_first_arg1_0 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
                    | `NotEver(_lh_first_NotEver_0_0) -> 
                      ((first_d2_d1_d0 (_lh_first_arg1_0 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
                    | _ -> 
                      (Obj.magic 99)))))))))
  else
    (fun f_1_5 _lh_first_arg1_1 -> 
      (`NotEver(_lh_first_arg1_1))))
and enumFromTo_d2_d1_d0 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec h_1_9 = a_3 in
      (let rec t_1_9 = ((enumFromTo_d2_d1_d0 (a_3 + 1)) b_3) in
        (fun f_3_0 -> 
          (let rec _lh_first_LH_C_0_3 = (f_3_0 h_1_9) in
            (let rec _lh_first_LH_C_1_3 = ((map_d3_d0_d0 f_3_0) t_1_9) in
              (fun _lh_first_arg1_1_0 -> 
                (let rec _lh_matchIdent_4 = _lh_first_LH_C_0_3 in
                  (match _lh_matchIdent_4 with
                    | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
                      (`YesIts((_lh_first_arg1_1_0 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
                    | `NotEver(_lh_first_NotEver_0_3) -> 
                      ((first_d2_d0_d0 (_lh_first_arg1_1_0 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
                    | _ -> 
                      (Obj.magic 99)))))))))
  else
    (fun f_3_1 _lh_first_arg1_1_1 -> 
      (`NotEver(_lh_first_arg1_1_1))))
and enumFromTo_d3_d0_d0 a_6 b_6 =
  (if (a_6 <= b_6) then
    (let rec _lh_listcomp_fun_ls_h_2 = a_6 in
      (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo_d3_d0_d0 (a_6 + 1)) b_6) in
        (fun _lh_listcomp_fun_5 maxval_4 -> 
          (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_2 -> 
            ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_2) _lh_listcomp_fun_6) _lh_listcomp_fun_ls_t_2) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_6 ((enumFromTo_d4_d0_d0 0) maxval_4))))))
  else
    (fun _lh_listcomp_fun_7 maxval_5 f_7_2 _lh_first_arg1_2_4 -> 
      (`NotEver(_lh_first_arg1_2_4))))
and enumFromTo_d3_d1_d0 a_7 b_7 =
  (if (a_7 <= b_7) then
    (let rec _lh_listcomp_fun_ls_h_3 = a_7 in
      (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_d3_d1_d0 (a_7 + 1)) b_7) in
        (fun _lh_listcomp_fun_8 maxval_8 -> 
          (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_3 -> 
            ((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_9) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_8)) in
            (_lh_listcomp_fun_9 ((enumFromTo_d4_d1_d0 0) maxval_8))))))
  else
    (fun _lh_listcomp_fun_1_0 maxval_9 f_9_6 _lh_first_arg1_2_7 -> 
      (`NotEver(_lh_first_arg1_2_7))))
and enumFromTo_d4_d0_d0 a_9 b_9 =
  (if (a_9 <= b_9) then
    (let rec _lh_listcomp_fun_ls_h_7 = a_9 in
      (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo_d4_d0_d0 (a_9 + 1)) b_9) in
        (fun _lh_listcomp_fun_ls_h_8 _lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_8 _lh_listcomp_fun_1_7 -> 
          (let rec h_7_3 = (let rec _lh_findhash'_LH_P2_0_3 = _lh_listcomp_fun_ls_h_8 in
            (let rec _lh_findhash'_LH_P2_1_7 = _lh_listcomp_fun_ls_h_7 in
              (fun _lh_findhash'_K_1_9 _lh_findhash'_K_2_9 try_9 -> 
                (try_9 (let rec h_7_4 = (`LH_P2(_lh_findhash'_K_1_9, _lh_findhash'_LH_P2_0_3)) in
                  (let rec t_8_1 = (let rec h_7_5 = (`LH_P2(_lh_findhash'_K_2_9, _lh_findhash'_LH_P2_1_7)) in
                    (let rec t_8_2 = (fun ys_5_4 -> 
                      ys_5_4) in
                      (fun ys_5_5 -> 
                        (`LH_C(h_7_5, ((mappend_d3_d1_d0 t_8_2) ys_5_5)))))) in
                    (fun ys_5_6 -> 
                      (`LH_C(h_7_4, ((mappend_d3_d1_d0 t_8_1) ys_5_6)))))))))) in
            (let rec t_8_3 = (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_7) in
              (fun f_1_0_7 -> 
                (let rec _lh_first_LH_C_0_7 = (f_1_0_7 h_7_3) in
                  (let rec _lh_first_LH_C_1_7 = ((map_d4_d1_d0 f_1_0_7) t_8_3) in
                    (fun _lh_first_arg1_3_1 -> 
                      (let rec _lh_matchIdent_1_4 = _lh_first_LH_C_0_7 in
                        (match _lh_matchIdent_1_4 with
                          | `YesIts(_lh_first_YesIts_0_7, _lh_first_YesIts_1_7) -> 
                            (`YesIts((_lh_first_arg1_3_1 + _lh_first_YesIts_0_7), _lh_first_YesIts_1_7))
                          | `NotEver(_lh_first_NotEver_0_7) -> 
                            ((first_d3_d1_d0 (_lh_first_arg1_3_1 + _lh_first_NotEver_0_7)) _lh_first_LH_C_1_7)
                          | _ -> 
                            (Obj.magic 99))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_9 -> 
      (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_9)))
and enumFromTo_d4_d1_d0 a_8 b_8 =
  (if (a_8 <= b_8) then
    (let rec _lh_listcomp_fun_ls_h_4 = a_8 in
      (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo_d4_d1_d0 (a_8 + 1)) b_8) in
        (fun _lh_listcomp_fun_ls_h_5 _lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_5 _lh_listcomp_fun_1_2 -> 
          (let rec h_6_3 = (let rec _lh_findhash'_LH_P2_0_2 = _lh_listcomp_fun_ls_h_5 in
            (let rec _lh_findhash'_LH_P2_1_4 = _lh_listcomp_fun_ls_h_4 in
              (fun _lh_findhash'_K_1_6 _lh_findhash'_K_2_6 try_6 -> 
                (try_6 (let rec h_6_4 = (`LH_P2(_lh_findhash'_K_1_6, _lh_findhash'_LH_P2_0_2)) in
                  (let rec t_7_1 = (let rec h_6_5 = (`LH_P2(_lh_findhash'_K_2_6, _lh_findhash'_LH_P2_1_4)) in
                    (let rec t_7_2 = (fun ys_4_0 -> 
                      ys_4_0) in
                      (fun ys_4_1 -> 
                        (`LH_C(h_6_5, ((mappend_d3_d0_d0 t_7_2) ys_4_1)))))) in
                    (fun ys_4_2 -> 
                      (`LH_C(h_6_4, ((mappend_d3_d0_d0 t_7_1) ys_4_2)))))))))) in
            (let rec t_7_3 = (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_4) in
              (fun f_1_0_3 -> 
                (let rec _lh_first_LH_C_0_6 = (f_1_0_3 h_6_3) in
                  (let rec _lh_first_LH_C_1_6 = ((map_d4_d0_d0 f_1_0_3) t_7_3) in
                    (fun _lh_first_arg1_3_0 -> 
                      (let rec _lh_matchIdent_1_2 = _lh_first_LH_C_0_6 in
                        (match _lh_matchIdent_1_2 with
                          | `YesIts(_lh_first_YesIts_0_6, _lh_first_YesIts_1_6) -> 
                            (`YesIts((_lh_first_arg1_3_0 + _lh_first_YesIts_0_6), _lh_first_YesIts_1_6))
                          | `NotEver(_lh_first_NotEver_0_6) -> 
                            ((first_d3_d0_d0 (_lh_first_arg1_3_0 + _lh_first_NotEver_0_6)) _lh_first_LH_C_1_6)
                          | _ -> 
                            (Obj.magic 99))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_4 -> 
      (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_6)))
and findhash'_d0_d0_d0 _lh_findhash'_arg1_0 _lh_findhash'_arg2_0 _lh_findhash'_arg3_0 =
  (match _lh_findhash'_arg3_0 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_0))
    | `LH_C(_lh_findhash'_LH_C_0_0, _lh_findhash'_LH_C_1_0) -> 
      (match _lh_findhash'_LH_C_0_0 with
        | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0) -> 
          (let rec try_0 = (fun newAssocs_0 -> 
            (let rec newCharAssocs_0 = ((mappend_d3_d1_d0 newAssocs_0) _lh_findhash'_arg2_0) in
              (let rec _lh_matchIdent_5 = ((hinsert_d0_d1_d0 ((hash_d0_d1_d0 newCharAssocs_0) (let rec _lh_hash_K_1_0 = _lh_findhash'_K_1_0 in
                (let rec _lh_hash_K_2_0 = _lh_findhash'_K_2_0 in
                  (let rec _lh_hash_K_3_0 = _lh_findhash'_K_3_0 in
                    (fun _lh_hash_arg1_0 -> 
                      ((_lh_hash_K_3_0 + ((assoc_d0_d1_d0 _lh_hash_K_1_0) _lh_hash_arg1_0)) + ((assoc_d1_d1_d0 _lh_hash_K_2_0) _lh_hash_arg1_0)))))))) _lh_findhash'_arg1_0) in
                ((_lh_matchIdent_5 _lh_findhash'_LH_C_1_0) newCharAssocs_0)))) in
            (let rec maxval_0 = (length_d3_d1_d0 (freqtab_d0_d1_d0 0)) in
              (let rec _lh_matchIdent_6 = (let rec _lh_findhash'_LH_P2_0_0 = ((assocm_d0_d0_d0 _lh_findhash'_K_1_0) _lh_findhash'_arg2_0) in
                (let rec _lh_findhash'_LH_P2_1_0 = ((assocm_d1_d0_d0 _lh_findhash'_K_2_0) _lh_findhash'_arg2_0) in
                  (fun _lh_findhash'_K_1_1 _lh_findhash'_K_2_1 maxval_1 try_1 -> 
                    (((((_lh_findhash'_LH_P2_0_0 _lh_findhash'_K_1_1) _lh_findhash'_K_2_1) _lh_findhash'_LH_P2_1_0) maxval_1) try_1)))) in
                ((((_lh_matchIdent_6 _lh_findhash'_K_1_0) _lh_findhash'_K_2_0) maxval_0) try_0))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and findhash'_d0_d1_d0 _lh_findhash'_arg1_1 _lh_findhash'_arg2_1 _lh_findhash'_arg3_1 =
  (match _lh_findhash'_arg3_1 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_1))
    | `LH_C(_lh_findhash'_LH_C_0_1, _lh_findhash'_LH_C_1_1) -> 
      (match _lh_findhash'_LH_C_0_1 with
        | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_4, _lh_findhash'_K_2_4, _lh_findhash'_K_3_1) -> 
          (let rec try_4 = (fun newAssocs_1 -> 
            (let rec newCharAssocs_1 = ((mappend_d3_d0_d0 newAssocs_1) _lh_findhash'_arg2_1) in
              (let rec _lh_matchIdent_1_0 = ((hinsert_d0_d0_d0 ((hash_d0_d0_d0 newCharAssocs_1) (let rec _lh_hash_K_1_1 = _lh_findhash'_K_1_4 in
                (let rec _lh_hash_K_2_1 = _lh_findhash'_K_2_4 in
                  (let rec _lh_hash_K_3_1 = _lh_findhash'_K_3_1 in
                    (fun _lh_hash_arg1_2 -> 
                      ((_lh_hash_K_3_1 + ((assoc_d0_d0_d0 _lh_hash_K_1_1) _lh_hash_arg1_2)) + ((assoc_d1_d0_d0 _lh_hash_K_2_1) _lh_hash_arg1_2)))))))) _lh_findhash'_arg1_1) in
                (match _lh_matchIdent_1_0 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_2) -> 
                    (((findhash'_d0_d1_d0 _lh_findhash'_Just_0_2) newCharAssocs_1) _lh_findhash'_LH_C_1_1)
                  | _ -> 
                    (Obj.magic 99))))) in
            (let rec maxval_6 = (length_d3_d0_d0 (freqtab_d0_d0_d0 0)) in
              (let rec _lh_matchIdent_1_1 = (let rec _lh_findhash'_LH_P2_0_1 = ((assocm_d0_d1_d0 _lh_findhash'_K_1_4) _lh_findhash'_arg2_1) in
                (let rec _lh_findhash'_LH_P2_1_3 = ((assocm_d1_d1_d0 _lh_findhash'_K_2_4) _lh_findhash'_arg2_1) in
                  (fun _lh_findhash'_K_1_5 _lh_findhash'_K_2_5 maxval_7 try_5 -> 
                    (((((_lh_findhash'_LH_P2_0_1 _lh_findhash'_K_1_5) _lh_findhash'_K_2_5) _lh_findhash'_LH_P2_1_3) maxval_7) try_5)))) in
                ((((_lh_matchIdent_1_1 _lh_findhash'_K_1_4) _lh_findhash'_K_2_4) maxval_6) try_4))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and findhash_d0_d0_d0 _lh_findhash_arg1_0 =
  (((findhash'_d0_d0_d0 (let rec _lh_hinsert_H_0_1 = (fun _lh_minm_arg2_2 -> 
    _lh_minm_arg2_2) in
    (let rec _lh_hinsert_H_1_1 = (fun _lh_maxm_arg2_2 -> 
      _lh_maxm_arg2_2) in
      (let rec _lh_hinsert_H_2_1 = (`LH_N) in
        (fun _lh_hinsert_arg1_2 -> 
          (let rec lo'_1 = ((minm_d0_d1_d0 _lh_hinsert_H_0_1) _lh_hinsert_arg1_2) in
            (let rec hi'_1 = ((maxm_d0_d1_d0 _lh_hinsert_H_1_1) _lh_hinsert_arg1_2) in
              (if (((member_d2_d1_d0 _lh_hinsert_arg1_2) _lh_hinsert_H_2_1) || (((1 + hi'_1) - lo'_1) > (length_d2_d1_d4 (keys_d1_d1_d0 0)))) then
                (fun _lh_findhash'_LH_C_1_2 newCharAssocs_2 -> 
                  (`NotEver(1)))
              else
                (let rec _lh_findhash'_Just_0_5 = (`H((`Just(lo'_1)), (`Just(hi'_1)), (`LH_C(_lh_hinsert_arg1_2, _lh_hinsert_H_2_1)))) in
                  (fun _lh_findhash'_LH_C_1_3 newCharAssocs_3 -> 
                    (((findhash'_d0_d1_d0 _lh_findhash'_Just_0_5) newCharAssocs_3) _lh_findhash'_LH_C_1_3))))))))))) (`LH_N)) _lh_findhash_arg1_0)
and firstSuccess_d0_d0_d0 _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first_d0_d0_d1 0) ((map_d1_d0_d1 _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0))
and firstSuccess_d0_d1_d0 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first_d0_d1_d1 0) ((map_d1_d1_d1 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess_d1_d0_d0 _lh_firstSuccess_arg1_7 _lh_firstSuccess_arg2_7 =
  ((first_d1_d0_d1 0) ((map_d2_d0_d1 _lh_firstSuccess_arg1_7) _lh_firstSuccess_arg2_7))
and firstSuccess_d1_d1_d0 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first_d1_d1_d1 0) ((map_d2_d1_d1 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and firstSuccess_d2_d0_d0 _lh_firstSuccess_arg1_6 _lh_firstSuccess_arg2_6 =
  ((first_d2_d0_d1 0) ((map_d3_d0_d1 _lh_firstSuccess_arg1_6) _lh_firstSuccess_arg2_6))
and firstSuccess_d2_d1_d0 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first_d2_d1_d1 0) ((map_d3_d1_d1 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess_d3_d0_d0 _lh_firstSuccess_arg1_5 _lh_firstSuccess_arg2_5 =
  ((first_d3_d0_d1 0) ((map_d4_d0_d1 _lh_firstSuccess_arg1_5) _lh_firstSuccess_arg2_5))
and firstSuccess_d3_d1_d0 _lh_firstSuccess_arg1_4 _lh_firstSuccess_arg2_4 =
  ((first_d3_d1_d1 0) ((map_d4_d1_d1 _lh_firstSuccess_arg1_4) _lh_firstSuccess_arg2_4))
and freqtab_d0_d0_d0 _lh_freqtab_arg1_0 =
  (histo_d0_d0_d0 (concat_d0_d0_d0 ((map_d6_d0_d4 ends_d2_d0_d0) (attribkeys_d1_d0_d0 (keys_d0_d0_d0 0)))))
and freqtab_d0_d1_d0 _lh_freqtab_arg1_1 =
  (histo_d0_d1_d0 (concat_d0_d1_d0 ((map_d6_d1_d4 ends_d2_d1_d0) (attribkeys_d1_d1_d0 (keys_d0_d1_d0 0)))))
and hinsert_d0_d0_d0 _lh_hinsert_arg1_0 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_0, _lh_hinsert_H_1_0, _lh_hinsert_H_2_0) -> 
      (let rec lo'_0 = ((minm_d0_d0_d0 _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
        (let rec hi'_0 = ((maxm_d0_d0_d0 _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
          (if (((member_d2_d0_d0 _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > (length_d2_d0_d4 (keys_d1_d0_d0 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))))))))
    | _ -> 
      (Obj.magic 99))
and histo_d0_d0_d0 _lh_histo_arg1_0 =
  (((foldr_d1_d0_d2 histins_d0_d0_d0) (`LH_N)) _lh_histo_arg1_0)
and histo_d0_d1_d0 _lh_histo_arg1_1 =
  (((foldr_d1_d1_d2 histins_d0_d1_d0) (`LH_N)) _lh_histo_arg1_1)
and keys_d0_d0_d0 _lh_keys_arg1_5 =
  (let rec h_4_9 = (`LH_C('a', (let rec _lh_go_LH_C_0_2_0 = 'p' in
    (let rec _lh_go_LH_C_1_2_0 = (let rec _lh_go_LH_C_0_2_1 = 'p' in
      (let rec _lh_go_LH_C_1_2_1 = (let rec _lh_go_LH_C_0_2_2 = 'l' in
        (let rec _lh_go_LH_C_1_2_2 = (let rec _lh_go_LH_C_0_2_3 = 'e' in
          (let rec _lh_go_LH_C_1_2_3 = (fun _lh_go_arg1_2_6 go_2_6 -> 
            _lh_go_arg1_2_6) in
            (fun _lh_go_arg1_2_7 go_2_7 -> 
              ((go_2_7 _lh_go_LH_C_0_2_3) _lh_go_LH_C_1_2_3)))) in
          (fun _lh_go_arg1_2_8 go_2_8 -> 
            ((go_2_8 _lh_go_LH_C_0_2_2) _lh_go_LH_C_1_2_2)))) in
        (fun _lh_go_arg1_2_9 go_2_9 -> 
          ((go_2_9 _lh_go_LH_C_0_2_1) _lh_go_LH_C_1_2_1)))) in
      (fun _lh_go_arg1_3_0 go_3_0 -> 
        ((go_3_0 _lh_go_LH_C_0_2_0) _lh_go_LH_C_1_2_0)))))) in
    (let rec t_5_7 = (let rec h_5_0 = (`LH_C('b', (let rec _lh_go_LH_C_0_2_4 = 'a' in
      (let rec _lh_go_LH_C_1_2_4 = (let rec _lh_go_LH_C_0_2_5 = 'n' in
        (let rec _lh_go_LH_C_1_2_5 = (let rec _lh_go_LH_C_0_2_6 = 'a' in
          (let rec _lh_go_LH_C_1_2_6 = (let rec _lh_go_LH_C_0_2_7 = 'n' in
            (let rec _lh_go_LH_C_1_2_7 = (let rec _lh_go_LH_C_0_2_8 = 'a' in
              (let rec _lh_go_LH_C_1_2_8 = (fun _lh_go_arg1_3_1 go_3_1 -> 
                _lh_go_arg1_3_1) in
                (fun _lh_go_arg1_3_2 go_3_2 -> 
                  ((go_3_2 _lh_go_LH_C_0_2_8) _lh_go_LH_C_1_2_8)))) in
              (fun _lh_go_arg1_3_3 go_3_3 -> 
                ((go_3_3 _lh_go_LH_C_0_2_7) _lh_go_LH_C_1_2_7)))) in
            (fun _lh_go_arg1_3_4 go_3_4 -> 
              ((go_3_4 _lh_go_LH_C_0_2_6) _lh_go_LH_C_1_2_6)))) in
          (fun _lh_go_arg1_3_5 go_3_5 -> 
            ((go_3_5 _lh_go_LH_C_0_2_5) _lh_go_LH_C_1_2_5)))) in
        (fun _lh_go_arg1_3_6 go_3_6 -> 
          ((go_3_6 _lh_go_LH_C_0_2_4) _lh_go_LH_C_1_2_4)))))) in
      (let rec t_5_8 = (let rec h_5_1 = (`LH_C('p', (let rec _lh_go_LH_C_0_2_9 = 'e' in
        (let rec _lh_go_LH_C_1_2_9 = (let rec _lh_go_LH_C_0_3_0 = 'a' in
          (let rec _lh_go_LH_C_1_3_0 = (let rec _lh_go_LH_C_0_3_1 = 'c' in
            (let rec _lh_go_LH_C_1_3_1 = (let rec _lh_go_LH_C_0_3_2 = 'h' in
              (let rec _lh_go_LH_C_1_3_2 = (fun _lh_go_arg1_3_7 go_3_7 -> 
                _lh_go_arg1_3_7) in
                (fun _lh_go_arg1_3_8 go_3_8 -> 
                  ((go_3_8 _lh_go_LH_C_0_3_2) _lh_go_LH_C_1_3_2)))) in
              (fun _lh_go_arg1_3_9 go_3_9 -> 
                ((go_3_9 _lh_go_LH_C_0_3_1) _lh_go_LH_C_1_3_1)))) in
            (fun _lh_go_arg1_4_0 go_4_0 -> 
              ((go_4_0 _lh_go_LH_C_0_3_0) _lh_go_LH_C_1_3_0)))) in
          (fun _lh_go_arg1_4_1 go_4_1 -> 
            ((go_4_1 _lh_go_LH_C_0_2_9) _lh_go_LH_C_1_2_9)))))) in
        (let rec t_5_9 = (let rec h_5_2 = (`LH_C('a', (let rec _lh_go_LH_C_0_3_3 = 'p' in
          (let rec _lh_go_LH_C_1_3_3 = (let rec _lh_go_LH_C_0_3_4 = 'r' in
            (let rec _lh_go_LH_C_1_3_4 = (let rec _lh_go_LH_C_0_3_5 = 'i' in
              (let rec _lh_go_LH_C_1_3_5 = (let rec _lh_go_LH_C_0_3_6 = 'c' in
                (let rec _lh_go_LH_C_1_3_6 = (let rec _lh_go_LH_C_0_3_7 = 'o' in
                  (let rec _lh_go_LH_C_1_3_7 = (let rec _lh_go_LH_C_0_3_8 = 't' in
                    (let rec _lh_go_LH_C_1_3_8 = (fun _lh_go_arg1_4_2 go_4_2 -> 
                      _lh_go_arg1_4_2) in
                      (fun _lh_go_arg1_4_3 go_4_3 -> 
                        ((go_4_3 _lh_go_LH_C_0_3_8) _lh_go_LH_C_1_3_8)))) in
                    (fun _lh_go_arg1_4_4 go_4_4 -> 
                      ((go_4_4 _lh_go_LH_C_0_3_7) _lh_go_LH_C_1_3_7)))) in
                  (fun _lh_go_arg1_4_5 go_4_5 -> 
                    ((go_4_5 _lh_go_LH_C_0_3_6) _lh_go_LH_C_1_3_6)))) in
                (fun _lh_go_arg1_4_6 go_4_6 -> 
                  ((go_4_6 _lh_go_LH_C_0_3_5) _lh_go_LH_C_1_3_5)))) in
              (fun _lh_go_arg1_4_7 go_4_7 -> 
                ((go_4_7 _lh_go_LH_C_0_3_4) _lh_go_LH_C_1_3_4)))) in
            (fun _lh_go_arg1_4_8 go_4_8 -> 
              ((go_4_8 _lh_go_LH_C_0_3_3) _lh_go_LH_C_1_3_3)))))) in
          (let rec t_6_0 = (fun f_7_3 f_7_4 _lh_dummy_1_6 f_7_5 i_8 -> 
            i_8) in
            (fun f_7_6 -> 
              (let rec h_5_3 = (f_7_6 h_5_2) in
                (let rec t_6_1 = ((map_d5_d0_d1 f_7_6) t_6_0) in
                  (fun f_7_7 -> 
                    (let rec h_5_4 = (f_7_7 h_5_3) in
                      (let rec t_6_2 = ((map_d6_d0_d0 f_7_7) t_6_1) in
                        (fun _lh_dummy_1_7 -> 
                          ((mappend_d2_d0_d2 h_5_4) (concat_d0_d0_d1 t_6_2))))))))))) in
          (fun f_7_8 -> 
            (let rec h_5_5 = (f_7_8 h_5_1) in
              (let rec t_6_3 = ((map_d5_d0_d2 f_7_8) t_5_9) in
                (fun f_7_9 -> 
                  (let rec h_5_6 = (f_7_9 h_5_5) in
                    (let rec t_6_4 = ((map_d6_d0_d1 f_7_9) t_6_3) in
                      (fun _lh_dummy_1_8 -> 
                        ((mappend_d2_d0_d3 h_5_6) (concat_d0_d0_d2 t_6_4))))))))))) in
        (fun f_8_0 -> 
          (let rec h_5_7 = (f_8_0 h_5_0) in
            (let rec t_6_5 = ((map_d5_d0_d3 f_8_0) t_5_8) in
              (fun f_8_1 -> 
                (let rec h_5_8 = (f_8_1 h_5_7) in
                  (let rec t_6_6 = ((map_d6_d0_d2 f_8_1) t_6_5) in
                    (fun _lh_dummy_1_9 -> 
                      ((mappend_d2_d0_d4 h_5_8) (concat_d0_d0_d3 t_6_6))))))))))) in
      (fun f_8_2 -> 
        (let rec h_5_9 = (f_8_2 h_4_9) in
          (let rec t_6_7 = ((map_d5_d0_d4 f_8_2) t_5_7) in
            (fun f_8_3 -> 
              (let rec h_6_0 = (f_8_3 h_5_9) in
                (let rec t_6_8 = ((map_d6_d0_d3 f_8_3) t_6_7) in
                  (fun _lh_dummy_2_0 -> 
                    ((mappend_d2_d0_d5 h_6_0) (concat_d0_d0_d4 t_6_8)))))))))))
and keys_d0_d1_d0 _lh_keys_arg1_3 =
  (let rec h_2_7 = (`LH_C('a', (let rec _lh_go_LH_C_0_0 = 'p' in
    (let rec _lh_go_LH_C_1_0 = (let rec _lh_go_LH_C_0_1 = 'p' in
      (let rec _lh_go_LH_C_1_1 = (let rec _lh_go_LH_C_0_2 = 'l' in
        (let rec _lh_go_LH_C_1_2 = (let rec _lh_go_LH_C_0_3 = 'e' in
          (let rec _lh_go_LH_C_1_3 = (fun _lh_go_arg1_2 go_2 -> 
            _lh_go_arg1_2) in
            (fun _lh_go_arg1_3 go_3 -> 
              ((go_3 _lh_go_LH_C_0_3) _lh_go_LH_C_1_3)))) in
          (fun _lh_go_arg1_4 go_4 -> 
            ((go_4 _lh_go_LH_C_0_2) _lh_go_LH_C_1_2)))) in
        (fun _lh_go_arg1_5 go_5 -> 
          ((go_5 _lh_go_LH_C_0_1) _lh_go_LH_C_1_1)))) in
      (fun _lh_go_arg1_6 go_6 -> 
        ((go_6 _lh_go_LH_C_0_0) _lh_go_LH_C_1_0)))))) in
    (let rec t_3_5 = (let rec h_2_8 = (`LH_C('b', (let rec _lh_go_LH_C_0_4 = 'a' in
      (let rec _lh_go_LH_C_1_4 = (let rec _lh_go_LH_C_0_5 = 'n' in
        (let rec _lh_go_LH_C_1_5 = (let rec _lh_go_LH_C_0_6 = 'a' in
          (let rec _lh_go_LH_C_1_6 = (let rec _lh_go_LH_C_0_7 = 'n' in
            (let rec _lh_go_LH_C_1_7 = (let rec _lh_go_LH_C_0_8 = 'a' in
              (let rec _lh_go_LH_C_1_8 = (fun _lh_go_arg1_7 go_7 -> 
                _lh_go_arg1_7) in
                (fun _lh_go_arg1_8 go_8 -> 
                  ((go_8 _lh_go_LH_C_0_8) _lh_go_LH_C_1_8)))) in
              (fun _lh_go_arg1_9 go_9 -> 
                ((go_9 _lh_go_LH_C_0_7) _lh_go_LH_C_1_7)))) in
            (fun _lh_go_arg1_1_0 go_1_0 -> 
              ((go_1_0 _lh_go_LH_C_0_6) _lh_go_LH_C_1_6)))) in
          (fun _lh_go_arg1_1_1 go_1_1 -> 
            ((go_1_1 _lh_go_LH_C_0_5) _lh_go_LH_C_1_5)))) in
        (fun _lh_go_arg1_1_2 go_1_2 -> 
          ((go_1_2 _lh_go_LH_C_0_4) _lh_go_LH_C_1_4)))))) in
      (let rec t_3_6 = (let rec h_2_9 = (`LH_C('p', (let rec _lh_go_LH_C_0_9 = 'e' in
        (let rec _lh_go_LH_C_1_9 = (let rec _lh_go_LH_C_0_1_0 = 'a' in
          (let rec _lh_go_LH_C_1_1_0 = (let rec _lh_go_LH_C_0_1_1 = 'c' in
            (let rec _lh_go_LH_C_1_1_1 = (let rec _lh_go_LH_C_0_1_2 = 'h' in
              (let rec _lh_go_LH_C_1_1_2 = (fun _lh_go_arg1_1_3 go_1_3 -> 
                _lh_go_arg1_1_3) in
                (fun _lh_go_arg1_1_4 go_1_4 -> 
                  ((go_1_4 _lh_go_LH_C_0_1_2) _lh_go_LH_C_1_1_2)))) in
              (fun _lh_go_arg1_1_5 go_1_5 -> 
                ((go_1_5 _lh_go_LH_C_0_1_1) _lh_go_LH_C_1_1_1)))) in
            (fun _lh_go_arg1_1_6 go_1_6 -> 
              ((go_1_6 _lh_go_LH_C_0_1_0) _lh_go_LH_C_1_1_0)))) in
          (fun _lh_go_arg1_1_7 go_1_7 -> 
            ((go_1_7 _lh_go_LH_C_0_9) _lh_go_LH_C_1_9)))))) in
        (let rec t_3_7 = (let rec h_3_0 = (`LH_C('a', (let rec _lh_go_LH_C_0_1_3 = 'p' in
          (let rec _lh_go_LH_C_1_1_3 = (let rec _lh_go_LH_C_0_1_4 = 'r' in
            (let rec _lh_go_LH_C_1_1_4 = (let rec _lh_go_LH_C_0_1_5 = 'i' in
              (let rec _lh_go_LH_C_1_1_5 = (let rec _lh_go_LH_C_0_1_6 = 'c' in
                (let rec _lh_go_LH_C_1_1_6 = (let rec _lh_go_LH_C_0_1_7 = 'o' in
                  (let rec _lh_go_LH_C_1_1_7 = (let rec _lh_go_LH_C_0_1_8 = 't' in
                    (let rec _lh_go_LH_C_1_1_8 = (fun _lh_go_arg1_1_8 go_1_8 -> 
                      _lh_go_arg1_1_8) in
                      (fun _lh_go_arg1_1_9 go_1_9 -> 
                        ((go_1_9 _lh_go_LH_C_0_1_8) _lh_go_LH_C_1_1_8)))) in
                    (fun _lh_go_arg1_2_0 go_2_0 -> 
                      ((go_2_0 _lh_go_LH_C_0_1_7) _lh_go_LH_C_1_1_7)))) in
                  (fun _lh_go_arg1_2_1 go_2_1 -> 
                    ((go_2_1 _lh_go_LH_C_0_1_6) _lh_go_LH_C_1_1_6)))) in
                (fun _lh_go_arg1_2_2 go_2_2 -> 
                  ((go_2_2 _lh_go_LH_C_0_1_5) _lh_go_LH_C_1_1_5)))) in
              (fun _lh_go_arg1_2_3 go_2_3 -> 
                ((go_2_3 _lh_go_LH_C_0_1_4) _lh_go_LH_C_1_1_4)))) in
            (fun _lh_go_arg1_2_4 go_2_4 -> 
              ((go_2_4 _lh_go_LH_C_0_1_3) _lh_go_LH_C_1_1_3)))))) in
          (let rec t_3_8 = (fun f_4_6 f_4_7 _lh_dummy_1_1 f_4_8 i_6 -> 
            i_6) in
            (fun f_4_9 -> 
              (let rec h_3_1 = (f_4_9 h_3_0) in
                (let rec t_3_9 = ((map_d5_d1_d1 f_4_9) t_3_8) in
                  (fun f_5_0 -> 
                    (let rec h_3_2 = (f_5_0 h_3_1) in
                      (let rec t_4_0 = ((map_d6_d1_d0 f_5_0) t_3_9) in
                        (fun _lh_dummy_1_2 -> 
                          ((mappend_d2_d1_d2 h_3_2) (concat_d0_d1_d1 t_4_0))))))))))) in
          (fun f_5_1 -> 
            (let rec h_3_3 = (f_5_1 h_2_9) in
              (let rec t_4_1 = ((map_d5_d1_d2 f_5_1) t_3_7) in
                (fun f_5_2 -> 
                  (let rec h_3_4 = (f_5_2 h_3_3) in
                    (let rec t_4_2 = ((map_d6_d1_d1 f_5_2) t_4_1) in
                      (fun _lh_dummy_1_3 -> 
                        ((mappend_d2_d1_d3 h_3_4) (concat_d0_d1_d2 t_4_2))))))))))) in
        (fun f_5_3 -> 
          (let rec h_3_5 = (f_5_3 h_2_8) in
            (let rec t_4_3 = ((map_d5_d1_d3 f_5_3) t_3_6) in
              (fun f_5_4 -> 
                (let rec h_3_6 = (f_5_4 h_3_5) in
                  (let rec t_4_4 = ((map_d6_d1_d2 f_5_4) t_4_3) in
                    (fun _lh_dummy_1_4 -> 
                      ((mappend_d2_d1_d4 h_3_6) (concat_d0_d1_d3 t_4_4))))))))))) in
      (fun f_5_5 -> 
        (let rec h_3_7 = (f_5_5 h_2_7) in
          (let rec t_4_5 = ((map_d5_d1_d4 f_5_5) t_3_5) in
            (fun f_5_6 -> 
              (let rec h_3_8 = (f_5_6 h_3_7) in
                (let rec t_4_6 = ((map_d6_d1_d3 f_5_6) t_4_5) in
                  (fun _lh_dummy_1_5 -> 
                    ((mappend_d2_d1_d5 h_3_8) (concat_d0_d1_d4 t_4_6)))))))))))
and keys_d1_d0_d0 _lh_keys_arg1_2 =
  (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (fun _lh_dummy_6 -> 
    0) in
    (fun _lh_dummy_7 -> 
      (1 + (length_d2_d0_d0 t_2_7)))) in
    (fun _lh_dummy_8 -> 
      (1 + (length_d2_d0_d1 t_2_6)))) in
    (fun _lh_dummy_9 -> 
      (1 + (length_d2_d0_d2 t_2_5)))) in
    (fun _lh_dummy_1_0 -> 
      (1 + (length_d2_d0_d3 t_2_4))))
and keys_d1_d1_d0 _lh_keys_arg1_1 =
  (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (fun _lh_dummy_1 -> 
    0) in
    (fun _lh_dummy_2 -> 
      (1 + (length_d2_d1_d0 t_2_3)))) in
    (fun _lh_dummy_3 -> 
      (1 + (length_d2_d1_d1 t_2_2)))) in
    (fun _lh_dummy_4 -> 
      (1 + (length_d2_d1_d2 t_2_1)))) in
    (fun _lh_dummy_5 -> 
      (1 + (length_d2_d1_d3 t_2_0))))
and keys_d2_d0_d0 _lh_keys_arg1_4 =
  (let rec h_4_0 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
    (let rec t_4_8 = (let rec h_4_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (let rec t_4_9 = (let rec h_4_2 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
        (let rec t_5_0 = (let rec h_4_3 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
          (let rec t_5_1 = (fun ys_2_6 -> 
            ys_2_6) in
            (fun ys_2_7 -> 
              (let rec h_4_4 = h_4_3 in
                (let rec t_5_2 = ((mappend_d4_d0_d1 t_5_1) ys_2_7) in
                  (fun f_5_8 -> 
                    (`LH_C((f_5_8 h_4_4), ((map_d0_d0_d2 f_5_8) t_5_2))))))))) in
          (fun ys_2_8 -> 
            (let rec h_4_5 = h_4_2 in
              (let rec t_5_3 = ((mappend_d4_d0_d2 t_5_0) ys_2_8) in
                (fun f_5_9 -> 
                  (`LH_C((f_5_9 h_4_5), ((map_d0_d0_d3 f_5_9) t_5_3))))))))) in
        (fun ys_2_9 -> 
          (let rec h_4_6 = h_4_1 in
            (let rec t_5_4 = ((mappend_d4_d0_d3 t_4_9) ys_2_9) in
              (fun f_6_0 -> 
                (`LH_C((f_6_0 h_4_6), ((map_d0_d0_d4 f_6_0) t_5_4))))))))) in
      (fun ys_3_0 -> 
        (let rec h_4_7 = h_4_0 in
          (let rec t_5_5 = ((mappend_d4_d0_d0 t_4_8) ys_3_0) in
            (fun f_6_1 -> 
              (`LH_C((f_6_1 h_4_7), ((map_d0_d0_d1 f_6_1) t_5_5)))))))))
and keys_d3_d0_d0 _lh_keys_arg1_0 =
  (let rec h_0 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
    (let rec t_0 = (let rec h_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (let rec t_1 = (let rec h_2 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
        (let rec t_2 = (let rec h_3 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
          (let rec t_3 = (fun n_0 f_0 -> 
            (`LH_N)) in
            (fun n_1 -> 
              (let rec h_4 = h_3 in
                (let rec t_4 = ((take_d0_d0_d0 (n_1 - 1)) t_3) in
                  (fun f_1 -> 
                    (`LH_C((f_1 h_4), ((map_d0_d0_d5 f_1) t_4))))))))) in
          (fun n_2 -> 
            (let rec h_5 = h_2 in
              (let rec t_5 = ((take_d0_d0_d1 (n_2 - 1)) t_2) in
                (fun f_2 -> 
                  (`LH_C((f_2 h_5), ((map_d0_d0_d6 f_2) t_5))))))))) in
        (fun n_3 -> 
          (let rec h_6 = h_1 in
            (let rec t_6 = ((take_d0_d0_d2 (n_3 - 1)) t_1) in
              (fun f_3 -> 
                (`LH_C((f_3 h_6), ((map_d0_d0_d7 f_3) t_6))))))))) in
      (fun n_4 -> 
        (let rec h_7 = h_0 in
          (let rec t_7 = ((take_d0_d0_d3 (n_4 - 1)) t_0) in
            (fun f_4 -> 
              (`LH_C((f_4 h_7), ((map_d0_d0_d8 f_4) t_7)))))))))
and maxm_d0_d0_d0 _lh_maxm_arg1_0 _lh_maxm_arg2_0 =
  (match _lh_maxm_arg1_0 with
    | `Nothing -> 
      (Obj.magic 99)
    | `Just(_lh_maxm_Just_0_0) -> 
      ((max_d0_d0_d0 _lh_maxm_Just_0_0) _lh_maxm_arg2_0)
    | _ -> 
      (Obj.magic 99))
and minm_d0_d0_d0 _lh_minm_arg1_1 _lh_minm_arg2_1 =
  (match _lh_minm_arg1_1 with
    | `Nothing -> 
      (Obj.magic 99)
    | `Just(_lh_minm_Just_0_0) -> 
      ((min_d0_d0_d0 _lh_minm_Just_0_0) _lh_minm_arg2_1)
    | _ -> 
      (Obj.magic 99))
and partition'_d0_d0_d0 _lh_partition'_arg1_0 =
  ((foldr_d0_d0_d0 (select_d0_d0_d0 _lh_partition'_arg1_0)) (`LH_P2((fun ys_1_4 -> 
    ys_1_4), (`LH_N))))
and prog_d0_d0_d0 _lh_prog_arg1_0 =
  (cichelli_d0_d0_d0 _lh_prog_arg1_0)
and select_d0_d0_d0 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((let rec h_2_1 = _lh_select_arg2_0 in
          (let rec t_2_9 = _lh_select_LH_P2_0_0 in
            (fun ys_1_7 -> 
              (`LH_C(h_2_1, ((mappend_d0_d0_d2 t_2_9) ys_1_7)))))), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (Obj.magic 99))
and subset_d0_d0_d0 _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all_d0_d0_d2 (fun x_1 -> 
    ((member_d0_d0_d0 x_1) _lh_subset_arg2_0))) _lh_subset_arg1_0)
and testCichelli_nofib_d0_d0_d0 _lh_testCichelli_nofib_arg1_0 =
  (prog_d0_d0_d0 _lh_testCichelli_nofib_arg1_0)
and union_d0_d0_d0 _lh_union_arg1_3 _lh_union_arg2_0 =
  ((mappend_d1_d0_d0 _lh_union_arg1_3) (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_0 -> 
    ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_3) _lh_union_arg1_3)) in
    (_lh_listcomp_fun_3 _lh_union_arg2_0)));;

(* lumberhack_pop_out *)
let rec all_d0_d0_d0_d0 _lh_all_arg1_7 _lh_all_arg2_4 =
  (_lh_all_arg2_4 (Obj.magic 99));;
let rec all_d0_d0_d1_d0 _lh_all_arg1_6 _lh_all_arg2_3 =
  (_lh_all_arg2_3 _lh_all_arg1_6);;
let rec all_d0_d0_d2_d0 _lh_all_arg1_1_1 _lh_all_arg2_5 =
  (_lh_all_arg2_5 _lh_all_arg1_1_1);;
let rec assocm_d1_d0_d0_d0 _lh_assocm_arg1_4 _lh_assocm_arg2_4 =
  (match _lh_assocm_arg2_4 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_4, _lh_assocm_LH_C_1_4) -> 
      (Obj.magic 99)
    | _ -> 
      (Obj.magic 99));;
let rec assocm_d1_d1_d0_d0 _lh_assocm_arg1_5 _lh_assocm_arg2_5 =
  (match _lh_assocm_arg2_5 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_5, _lh_assocm_LH_C_1_5) -> 
      (match _lh_assocm_LH_C_0_5 with
        | `LH_P2(_lh_assocm_LH_P2_0_2, _lh_assocm_LH_P2_1_2) -> 
          (if (_lh_assocm_arg1_5 = _lh_assocm_LH_P2_0_2) then
            (`Just((Obj.magic 99)))
          else
            ((assocm_d1_d1_d0_d0 _lh_assocm_arg1_5) _lh_assocm_LH_C_1_5))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d0_d0_d0_d0 _lh_assoc_arg1_7 _lh_assoc_arg2_7 =
  (match _lh_assoc_arg2_7 with
    | `LH_C(_lh_assoc_LH_C_0_7, _lh_assoc_LH_C_1_7) -> 
      (match _lh_assoc_LH_C_0_7 with
        | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
          (if (_lh_assoc_arg1_7 = _lh_assoc_LH_P2_0_7) then
            _lh_assoc_LH_P2_1_7
          else
            ((assoc_d0_d0_d0_d0 _lh_assoc_arg1_7) _lh_assoc_LH_C_1_7))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d0_d1_d0_d0 _lh_assoc_arg1_5 _lh_assoc_arg2_5 =
  (match _lh_assoc_arg2_5 with
    | `LH_C(_lh_assoc_LH_C_0_5, _lh_assoc_LH_C_1_5) -> 
      (match _lh_assoc_LH_C_0_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
          (if (_lh_assoc_arg1_5 = _lh_assoc_LH_P2_0_5) then
            _lh_assoc_LH_P2_1_5
          else
            ((assoc_d0_d1_d0_d0 _lh_assoc_arg1_5) _lh_assoc_LH_C_1_5))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d1_d0_d0_d0 _lh_assoc_arg1_4 _lh_assoc_arg2_4 =
  (match _lh_assoc_arg2_4 with
    | `LH_C(_lh_assoc_LH_C_0_4, _lh_assoc_LH_C_1_4) -> 
      (match _lh_assoc_LH_C_0_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
          (if (_lh_assoc_arg1_4 = _lh_assoc_LH_P2_0_4) then
            _lh_assoc_LH_P2_1_4
          else
            ((assoc_d1_d0_d0_d0 _lh_assoc_arg1_4) _lh_assoc_LH_C_1_4))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec assoc_d1_d1_d0_d0 _lh_assoc_arg1_6 _lh_assoc_arg2_6 =
  (match _lh_assoc_arg2_6 with
    | `LH_C(_lh_assoc_LH_C_0_6, _lh_assoc_LH_C_1_6) -> 
      (match _lh_assoc_LH_C_0_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
          (if (_lh_assoc_arg1_6 = _lh_assoc_LH_P2_0_6) then
            _lh_assoc_LH_P2_1_6
          else
            ((assoc_d1_d1_d0_d0 _lh_assoc_arg1_6) _lh_assoc_LH_C_1_6))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec concat_d0_d0_d0_d0 lss_1_2 =
  (lss_1_2 99);;
let rec concat_d0_d0_d1_d0 lss_1_1 =
  (lss_1_1 99);;
let rec concat_d0_d0_d2_d0 lss_1_6 =
  (lss_1_6 99);;
let rec concat_d0_d0_d3_d0 lss_1_0 =
  (lss_1_0 99);;
let rec concat_d0_d0_d4_d0 lss_1_7 =
  (lss_1_7 99);;
let rec concat_d0_d1_d0_d0 lss_1_9 =
  (lss_1_9 99);;
let rec concat_d0_d1_d1_d0 lss_1_3 =
  (lss_1_3 99);;
let rec concat_d0_d1_d2_d0 lss_1_4 =
  (lss_1_4 99);;
let rec concat_d0_d1_d3_d0 lss_1_5 =
  (lss_1_5 99);;
let rec concat_d0_d1_d4_d0 lss_1_8 =
  (lss_1_8 99);;
let rec ends_d2_d0_d0_d0 _lh_ends_arg1_4 =
  (_lh_ends_arg1_4 99);;
let rec ends_d2_d1_d0_d0 _lh_ends_arg1_7 =
  (_lh_ends_arg1_7 99);;
let rec first_d0_d0_d0_d0 _lh_first_arg1_4_1 _lh_first_arg2_1_9 =
  (_lh_first_arg2_1_9 _lh_first_arg1_4_1);;
let rec first_d0_d0_d1_d0 _lh_first_arg1_5_2 _lh_first_arg2_2_6 =
  (_lh_first_arg2_2_6 _lh_first_arg1_5_2);;
let rec first_d0_d1_d0_d0 _lh_first_arg1_3_5 _lh_first_arg2_1_7 =
  (_lh_first_arg2_1_7 _lh_first_arg1_3_5);;
let rec first_d0_d1_d1_d0 _lh_first_arg1_4_3 _lh_first_arg2_2_0 =
  (_lh_first_arg2_2_0 _lh_first_arg1_4_3);;
let rec first_d1_d0_d0_d0 _lh_first_arg1_5_0 _lh_first_arg2_2_4 =
  (_lh_first_arg2_2_4 _lh_first_arg1_5_0);;
let rec first_d1_d0_d1_d0 _lh_first_arg1_5_8 _lh_first_arg2_2_9 =
  (_lh_first_arg2_2_9 _lh_first_arg1_5_8);;
let rec first_d2_d0_d0_d0 _lh_first_arg1_4_8 _lh_first_arg2_2_3 =
  (_lh_first_arg2_2_3 _lh_first_arg1_4_8);;
let rec first_d2_d0_d1_d0 _lh_first_arg1_3_4 _lh_first_arg2_1_6 =
  (_lh_first_arg2_1_6 _lh_first_arg1_3_4);;
let rec first_d2_d1_d0_d0 _lh_first_arg1_5_5 _lh_first_arg2_2_8 =
  (_lh_first_arg2_2_8 _lh_first_arg1_5_5);;
let rec first_d2_d1_d1_d0 _lh_first_arg1_5_4 _lh_first_arg2_2_7 =
  (_lh_first_arg2_2_7 _lh_first_arg1_5_4);;
let rec first_d3_d0_d0_d0 _lh_first_arg1_4_4 _lh_first_arg2_2_1 =
  (_lh_first_arg2_2_1 _lh_first_arg1_4_4);;
let rec first_d3_d0_d1_d0 _lh_first_arg1_3_6 _lh_first_arg2_1_8 =
  (_lh_first_arg2_1_8 _lh_first_arg1_3_6);;
let rec first_d3_d1_d0_d0 _lh_first_arg1_4_7 _lh_first_arg2_2_2 =
  (_lh_first_arg2_2_2 _lh_first_arg1_4_7);;
let rec first_d3_d1_d1_d0 _lh_first_arg1_5_1 _lh_first_arg2_2_5 =
  (_lh_first_arg2_2_5 _lh_first_arg1_5_1);;
let rec foldr_d0_d0_d0_d0 f_1_7_5 i_2_0 ls_1_1_7 =
  (match ls_1_1_7 with
    | `LH_C(h_1_2_2, t_1_3_0) -> 
      ((f_1_7_5 h_1_2_2) (((foldr_d0_d0_d0_d0 f_1_7_5) i_2_0) t_1_3_0))
    | `LH_N -> 
      i_2_0);;
let rec foldr_d1_d0_d0_d0 f_1_4_4 i_1_6 ls_9_6 =
  ((ls_9_6 f_1_4_4) i_1_6);;
let rec foldr_d1_d0_d1_d0 f_1_7_8 i_2_1 ls_1_2_0 =
  ((ls_1_2_0 f_1_7_8) i_2_1);;
let rec foldr_d1_d0_d2_d0 f_1_7_0 i_1_7 ls_1_1_3 =
  ((ls_1_1_3 f_1_7_0) i_1_7);;
let rec foldr_d1_d1_d0_d0 f_2_1_1 i_2_5 ls_1_4_3 =
  ((ls_1_4_3 f_2_1_1) i_2_5);;
let rec foldr_d1_d1_d1_d0 f_2_0_3 i_2_3 ls_1_3_7 =
  ((ls_1_3_7 f_2_0_3) i_2_3);;
let rec foldr_d1_d1_d2_d0 f_2_0_7 i_2_4 ls_1_3_9 =
  ((ls_1_3_9 f_2_0_7) i_2_4);;
let rec freqsorted_d0_d0_d0_d0 _lh_freqsorted_arg1_1 =
  _lh_freqsorted_arg1_1;;
let rec hash_d0_d0_d0_d0 _lh_hash_arg1_4 _lh_hash_arg2_2 =
  (_lh_hash_arg2_2 _lh_hash_arg1_4);;
let rec hash_d0_d1_d0_d0 _lh_hash_arg1_7 _lh_hash_arg2_3 =
  (_lh_hash_arg2_3 _lh_hash_arg1_7);;
let rec head_d0_d0_d0_d0 ls_1_1_1 =
  (match ls_1_1_1 with
    | `LH_C(h_1_1_7, t_1_2_5) -> 
      h_1_1_7
    | `LH_N -> 
      (Obj.magic 99));;
let rec head_d1_d0_d0_d0 ls_1_0_2 =
  (match ls_1_0_2 with
    | `LH_C(h_1_0_7, t_1_1_5) -> 
      h_1_0_7
    | `LH_N -> 
      (Obj.magic 99));;
let rec head_d1_d1_d0_d0 ls_1_2_4 =
  (match ls_1_2_4 with
    | `LH_C(h_1_2_8, t_1_4_0) -> 
      h_1_2_8
    | `LH_N -> 
      (Obj.magic 99));;
let rec hinsert_d0_d1_d0_d0 _lh_hinsert_arg1_3 _lh_hinsert_arg2_2 =
  (_lh_hinsert_arg2_2 _lh_hinsert_arg1_3);;
let rec histins_d0_d0_d0_d0 _lh_histins_arg1_2 _lh_histins_arg2_2 =
  (match _lh_histins_arg2_2 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_2, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_2, _lh_histins_LH_C_1_2) -> 
      (match _lh_histins_LH_C_0_2 with
        | `LH_P2(_lh_histins_LH_P2_0_2, _lh_histins_LH_P2_1_2) -> 
          (if (_lh_histins_arg1_2 = _lh_histins_LH_P2_0_2) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_2, (_lh_histins_LH_P2_1_2 + 1))), _lh_histins_LH_C_1_2))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_2, _lh_histins_LH_P2_1_2)), ((histins_d0_d0_d0_d0 _lh_histins_arg1_2) _lh_histins_LH_C_1_2))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec histins_d0_d1_d0_d0 _lh_histins_arg1_3 _lh_histins_arg2_3 =
  (match _lh_histins_arg2_3 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_3, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_3, _lh_histins_LH_C_1_3) -> 
      (match _lh_histins_LH_C_0_3 with
        | `LH_P2(_lh_histins_LH_P2_0_3, _lh_histins_LH_P2_1_3) -> 
          (if (_lh_histins_arg1_3 = _lh_histins_LH_P2_0_3) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_3, (_lh_histins_LH_P2_1_3 + 1))), _lh_histins_LH_C_1_3))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_3, _lh_histins_LH_P2_1_3)), ((histins_d0_d1_d0_d0 _lh_histins_arg1_3) _lh_histins_LH_C_1_3))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec last_d0_d0_d0_d0 _lh_last_arg1_4 =
  (match _lh_last_arg1_4 with
    | `LH_C(_lh_last_LH_C_0_4, _lh_last_LH_C_1_4) -> 
      (let rec go_7_3 = (fun _lh_go_arg1_7_3 _lh_go_arg2_4 -> 
        (match _lh_go_arg2_4 with
          | `LH_N -> 
            _lh_go_arg1_7_3
          | `LH_C(_lh_go_LH_C_0_5_8, _lh_go_LH_C_1_5_8) -> 
            ((go_7_3 _lh_go_LH_C_0_5_8) _lh_go_LH_C_1_5_8)
          | _ -> 
            (Obj.magic 99))) in
        ((go_7_3 _lh_last_LH_C_0_4) _lh_last_LH_C_1_4))
    | _ -> 
      (Obj.magic 99));;
let rec last_d1_d0_d0_d0 _lh_last_arg1_5 =
  (match _lh_last_arg1_5 with
    | `LH_C(_lh_last_LH_C_0_5, _lh_last_LH_C_1_5) -> 
      (let rec go_9_7 = (fun _lh_go_arg1_9_7 _lh_go_arg2_5 -> 
        ((_lh_go_arg2_5 _lh_go_arg1_9_7) go_9_7)) in
        ((go_9_7 _lh_last_LH_C_0_5) _lh_last_LH_C_1_5))
    | _ -> 
      (Obj.magic 99));;
let rec last_d1_d1_d0_d0 _lh_last_arg1_3 =
  (match _lh_last_arg1_3 with
    | `LH_C(_lh_last_LH_C_0_3, _lh_last_LH_C_1_3) -> 
      (let rec go_7_2 = (fun _lh_go_arg1_7_2 _lh_go_arg2_3 -> 
        ((_lh_go_arg2_3 _lh_go_arg1_7_2) go_7_2)) in
        ((go_7_2 _lh_last_LH_C_0_3) _lh_last_LH_C_1_3))
    | _ -> 
      (Obj.magic 99));;
let rec length_d0_d0_d0_d0 ls_1_2_9 =
  (match ls_1_2_9 with
    | `LH_C(h_1_4_2, t_1_5_4) -> 
      (1 + (length_d0_d0_d0_d0 t_1_5_4))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d0_d0 ls_7_5 =
  (ls_7_5 99);;
let rec length_d2_d0_d1_d0 ls_1_3_3 =
  (ls_1_3_3 99);;
let rec length_d2_d0_d2_d0 ls_7_3 =
  (ls_7_3 99);;
let rec length_d2_d0_d3_d0 ls_8_1 =
  (ls_8_1 99);;
let rec length_d2_d0_d4_d0 ls_1_1_6 =
  (ls_1_1_6 99);;
let rec length_d2_d1_d0_d0 ls_1_3_1 =
  (ls_1_3_1 99);;
let rec length_d2_d1_d1_d0 ls_8_5 =
  (ls_8_5 99);;
let rec length_d2_d1_d2_d0 ls_1_3_4 =
  (ls_1_3_4 99);;
let rec length_d2_d1_d3_d0 ls_1_4_2 =
  (ls_1_4_2 99);;
let rec length_d2_d1_d4_d0 ls_8_9 =
  (ls_8_9 99);;
let rec length_d3_d0_d0_d0 ls_9_0 =
  (match ls_9_0 with
    | `LH_C(h_8_2, t_9_0) -> 
      (1 + (length_d3_d0_d0_d0 t_9_0))
    | `LH_N -> 
      0);;
let rec length_d3_d1_d0_d0 ls_8_3 =
  (match ls_8_3 with
    | `LH_C(h_7_6, t_8_4) -> 
      (1 + (length_d3_d1_d0_d0 t_8_4))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0_d0 xs_4_5 ys_9_9 =
  (xs_4_5 ys_9_9);;
let rec mappend_d0_d0_d1_d0 xs_2_9 ys_6_6 =
  (xs_2_9 ys_6_6);;
let rec mappend_d0_d0_d2_d0 xs_2_5 ys_5_6 =
  (xs_2_5 ys_5_6);;
let rec mappend_d1_d0_d0_d0 xs_4_9 ys_1_1_1 =
  (match xs_4_9 with
    | `LH_C(h_1_4_8, t_1_6_4) -> 
      (`LH_C(h_1_4_8, ((mappend_d1_d0_d0_d0 t_1_6_4) ys_1_1_1)))
    | `LH_N -> 
      ys_1_1_1);;
let rec mappend_d2_d0_d0_d0 xs_4_3 ys_9_6 =
  (xs_4_3 ys_9_6);;
let rec mappend_d2_d0_d1_d0 xs_3_7 ys_8_9 =
  (xs_3_7 ys_8_9);;
let rec mappend_d2_d0_d2_d0 xs_4_1 ys_9_4 =
  (xs_4_1 ys_9_4);;
let rec mappend_d2_d0_d3_d0 xs_4_4 ys_9_8 =
  (xs_4_4 ys_9_8);;
let rec mappend_d2_d0_d4_d0 xs_2_7 ys_6_1 =
  (xs_2_7 ys_6_1);;
let rec mappend_d2_d0_d5_d0 xs_3_0 ys_6_7 =
  (xs_3_0 ys_6_7);;
let rec mappend_d2_d1_d0_d0 xs_5_3 ys_1_1_5 =
  (xs_5_3 ys_1_1_5);;
let rec mappend_d2_d1_d1_d0 xs_4_7 ys_1_0_8 =
  (xs_4_7 ys_1_0_8);;
let rec mappend_d2_d1_d2_d0 xs_5_2 ys_1_1_4 =
  (xs_5_2 ys_1_1_4);;
let rec mappend_d2_d1_d3_d0 xs_3_8 ys_9_0 =
  (xs_3_8 ys_9_0);;
let rec mappend_d2_d1_d4_d0 xs_2_6 ys_5_7 =
  (xs_2_6 ys_5_7);;
let rec mappend_d2_d1_d5_d0 xs_5_1 ys_1_1_3 =
  (xs_5_1 ys_1_1_3);;
let rec mappend_d3_d0_d0_d0 xs_3_1 ys_6_8 =
  (xs_3_1 ys_6_8);;
let rec mappend_d3_d0_d0_d1 xs_4_0 ys_9_3 =
  (xs_4_0 ys_9_3);;
let rec mappend_d3_d0_d0_d2 xs_2_3 ys_5_4 =
  (xs_2_3 ys_5_4);;
let rec mappend_d3_d0_d0_d3 xs_3_3 ys_7_5 =
  (xs_3_3 ys_7_5);;
let rec mappend_d3_d0_d0_d4 xs_3_6 ys_7_8 =
  (xs_3_6 ys_7_8);;
let rec mappend_d3_d0_d0_d5 xs_3_2 ys_6_9 =
  (xs_3_2 ys_6_9);;
let rec mappend_d3_d1_d0_d0 xs_5_4 ys_1_1_6 =
  (xs_5_4 ys_1_1_6);;
let rec mappend_d3_d1_d0_d1 xs_2_4 ys_5_5 =
  (xs_2_4 ys_5_5);;
let rec mappend_d3_d1_d0_d2 xs_3_4 ys_7_6 =
  (xs_3_4 ys_7_6);;
let rec mappend_d3_d1_d0_d3 xs_4_2 ys_9_5 =
  (xs_4_2 ys_9_5);;
let rec mappend_d3_d1_d0_d4 xs_3_9 ys_9_2 =
  (xs_3_9 ys_9_2);;
let rec mappend_d4_d0_d0_d0 xs_5_0 ys_1_1_2 =
  (xs_5_0 ys_1_1_2);;
let rec mappend_d4_d0_d1_d0 xs_4_6 ys_1_0_7 =
  (xs_4_6 ys_1_0_7);;
let rec mappend_d4_d0_d2_d0 xs_3_5 ys_7_7 =
  (xs_3_5 ys_7_7);;
let rec mappend_d4_d0_d3_d0 xs_2_8 ys_6_2 =
  (xs_2_8 ys_6_2);;
let rec mappend_d4_d0_d4_d0 xs_4_8 ys_1_1_0 =
  (xs_4_8 ys_1_1_0);;
let rec map_d0_d0_d0_d0 f_1_7_7 ls_1_1_9 =
  (ls_1_1_9 f_1_7_7);;
let rec map_d0_d0_d1_d0 f_1_1_6 ls_8_2 =
  (ls_8_2 f_1_1_6);;
let rec map_d0_d0_d2_d0 f_1_8_3 ls_1_2_5 =
  (ls_1_2_5 f_1_8_3);;
let rec map_d0_d0_d3_d0 f_1_6_3 ls_1_0_7 =
  (ls_1_0_7 f_1_6_3);;
let rec map_d0_d0_d4_d0 f_1_1_8 ls_8_6 =
  (ls_8_6 f_1_1_8);;
let rec map_d0_d0_d5_d0 f_1_1_7 ls_8_4 =
  (ls_8_4 (Obj.magic 99));;
let rec map_d0_d0_d6_d0 f_1_2_4 ls_8_8 =
  (ls_8_8 f_1_2_4);;
let rec map_d0_d0_d7_d0 f_1_5_4 ls_1_0_1 =
  (ls_1_0_1 f_1_5_4);;
let rec map_d0_d0_d8_d0 f_1_2_9 ls_9_3 =
  (ls_9_3 f_1_2_9);;
let rec map_d1_d0_d0_d0 f_1_1_5 ls_8_0 =
  (ls_8_0 f_1_1_5);;
let rec map_d1_d0_d1_d0 f_1_4_2 ls_9_4 =
  (ls_9_4 f_1_4_2);;
let rec map_d1_d1_d0_d0 f_1_4_6 ls_9_8 =
  (ls_9_8 f_1_4_6);;
let rec map_d1_d1_d1_d0 f_1_4_5 ls_9_7 =
  (ls_9_7 f_1_4_5);;
let rec map_d2_d0_d0_d0 f_2_0_0 ls_1_3_2 =
  (ls_1_3_2 f_2_0_0);;
let rec map_d2_d0_d1_d0 f_1_1_4 ls_7_9 =
  (ls_7_9 f_1_1_4);;
let rec map_d3_d0_d0_d0 f_1_1_3 ls_7_8 =
  (ls_7_8 f_1_1_3);;
let rec map_d3_d0_d1_d0 f_2_0_4 ls_1_3_8 =
  (ls_1_3_8 f_2_0_4);;
let rec map_d3_d1_d0_d0 f_1_9_9 ls_1_3_0 =
  (ls_1_3_0 f_1_9_9);;
let rec map_d3_d1_d1_d0 f_2_0_2 ls_1_3_6 =
  (ls_1_3_6 f_2_0_2);;
let rec map_d4_d0_d0_d0 f_1_2_7 ls_9_1 =
  (ls_9_1 f_1_2_7);;
let rec map_d4_d0_d1_d0 f_1_9_8 ls_1_2_8 =
  (ls_1_2_8 f_1_9_8);;
let rec map_d4_d1_d0_d0 f_1_5_7 ls_1_0_5 =
  (ls_1_0_5 f_1_5_7);;
let rec map_d4_d1_d1_d0 f_1_8_2 ls_1_2_3 =
  (ls_1_2_3 f_1_8_2);;
let rec map_d5_d0_d0_d0 f_1_6_7 ls_1_0_9 =
  (ls_1_0_9 f_1_6_7);;
let rec map_d5_d0_d1_d0 f_1_8_6 ls_1_2_7 =
  (ls_1_2_7 (Obj.magic 99));;
let rec map_d5_d0_d2_d0 f_1_8_1 ls_1_2_2 =
  (ls_1_2_2 f_1_8_1);;
let rec map_d5_d0_d3_d0 f_1_4_3 ls_9_5 =
  (ls_9_5 f_1_4_3);;
let rec map_d5_d0_d4_d0 f_1_5_5 ls_1_0_3 =
  (ls_1_0_3 f_1_5_5);;
let rec map_d5_d1_d0_d0 f_1_6_9 ls_1_1_2 =
  (ls_1_1_2 f_1_6_9);;
let rec map_d5_d1_d1_d0 f_1_1_0 ls_7_4 =
  (ls_7_4 (Obj.magic 99));;
let rec map_d5_d1_d2_d0 f_1_1_9 ls_8_7 =
  (ls_8_7 f_1_1_9);;
let rec map_d5_d1_d3_d0 f_1_5_8 ls_1_0_6 =
  (ls_1_0_6 f_1_5_8);;
let rec map_d5_d1_d4_d0 f_2_0_1 ls_1_3_5 =
  (ls_1_3_5 f_2_0_1);;
let rec map_d6_d0_d0_d0 f_1_6_4 ls_1_0_8 =
  (ls_1_0_8 (Obj.magic 99));;
let rec map_d6_d0_d1_d0 f_1_4_8 ls_1_0_0 =
  (ls_1_0_0 f_1_4_8);;
let rec map_d6_d0_d2_d0 f_1_6_8 ls_1_1_0 =
  (ls_1_1_0 f_1_6_8);;
let rec map_d6_d0_d3_d0 f_1_7_6 ls_1_1_8 =
  (ls_1_1_8 f_1_7_6);;
let rec map_d6_d0_d4_d0 f_1_8_0 ls_1_2_1 =
  (ls_1_2_1 f_1_8_0);;
let rec map_d6_d1_d0_d0 f_1_1_2 ls_7_7 =
  (ls_7_7 (Obj.magic 99));;
let rec map_d6_d1_d1_d0 f_1_4_7 ls_9_9 =
  (ls_9_9 f_1_4_7);;
let rec map_d6_d1_d2_d0 f_1_2_8 ls_9_2 =
  (ls_9_2 f_1_2_8);;
let rec map_d6_d1_d3_d0 f_1_1_1 ls_7_6 =
  (ls_7_6 f_1_1_1);;
let rec map_d6_d1_d4_d0 f_2_0_8 ls_1_4_0 =
  (ls_1_4_0 f_2_0_8);;
let rec maxm_d0_d1_d0_d0 _lh_maxm_arg1_2 _lh_maxm_arg2_3 =
  (_lh_maxm_arg1_2 _lh_maxm_arg2_3);;
let rec max_d0_d0_d0_d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec member_d0_d0_d0_d0 _lh_member_arg1_5 _lh_member_arg2_5 =
  (match _lh_member_arg2_5 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_5, _lh_member_LH_C_1_5) -> 
      ((_lh_member_arg1_5 = _lh_member_LH_C_0_5) || ((member_d0_d0_d0_d0 _lh_member_arg1_5) _lh_member_LH_C_1_5))
    | _ -> 
      (Obj.magic 99));;
let rec member_d1_d0_d0_d0 _lh_member_arg1_7 _lh_member_arg2_7 =
  (match _lh_member_arg2_7 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_7, _lh_member_LH_C_1_7) -> 
      ((_lh_member_arg1_7 = _lh_member_LH_C_0_7) || ((member_d1_d0_d0_d0 _lh_member_arg1_7) _lh_member_LH_C_1_7))
    | _ -> 
      (Obj.magic 99));;
let rec member_d1_d0_d1_d0 _lh_member_arg1_9 _lh_member_arg2_9 =
  (match _lh_member_arg2_9 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_9, _lh_member_LH_C_1_9) -> 
      ((_lh_member_arg1_9 = _lh_member_LH_C_0_9) || ((member_d1_d0_d1_d0 _lh_member_arg1_9) _lh_member_LH_C_1_9))
    | _ -> 
      (Obj.magic 99));;
let rec member_d2_d0_d0_d0 _lh_member_arg1_8 _lh_member_arg2_8 =
  (match _lh_member_arg2_8 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_8, _lh_member_LH_C_1_8) -> 
      ((_lh_member_arg1_8 = _lh_member_LH_C_0_8) || ((member_d2_d0_d0_d0 _lh_member_arg1_8) _lh_member_LH_C_1_8))
    | _ -> 
      (Obj.magic 99));;
let rec member_d2_d1_d0_d0 _lh_member_arg1_6 _lh_member_arg2_6 =
  (match _lh_member_arg2_6 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_6, _lh_member_LH_C_1_6) -> 
      (Obj.magic 99)
    | _ -> 
      (Obj.magic 99));;
let rec minm_d0_d1_d0_d0 _lh_minm_arg1_2 _lh_minm_arg2_3 =
  (_lh_minm_arg1_2 _lh_minm_arg2_3);;
let rec min_d0_d0_d0_d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec take_d0_d0_d0_d0 n_1_8 ls_1_1_5 =
  (if (n_1_8 > 0) then
    (ls_1_1_5 n_1_8)
  else
    (fun f_1_7_4 -> 
      (`LH_N)));;
let rec take_d0_d0_d1_d0 n_1_7 ls_1_1_4 =
  (if (n_1_7 > 0) then
    (ls_1_1_4 n_1_7)
  else
    (fun f_1_7_3 -> 
      (`LH_N)));;
let rec take_d0_d0_d2_d0 n_1_6 ls_1_0_4 =
  (if (n_1_6 > 0) then
    (ls_1_0_4 n_1_6)
  else
    (fun f_1_5_6 -> 
      (`LH_N)));;
let rec take_d0_d0_d3_d0 n_2_1 ls_1_4_1 =
  (if (n_2_1 > 0) then
    (ls_1_4_1 n_2_1)
  else
    (fun f_2_0_9 -> 
      (`LH_N)));;
let rec take_d0_d0_d4_d0 n_1_9 ls_1_2_6 =
  (if (n_1_9 > 0) then
    (ls_1_2_6 n_1_9)
  else
    (fun f_1_8_4 -> 
      (`LH_N)));;
let rec assocm_d0_d0_d0_d0 _lh_assocm_arg1_6 _lh_assocm_arg2_6 =
  (match _lh_assocm_arg2_6 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_1_3 _lh_findhash'_K_2_1_3 _lh_findhash'_LH_P2_1_1_0 maxval_1_3 try_1_3 -> 
        (match _lh_findhash'_LH_P2_1_1_0 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_1_3 = _lh_findhash'_K_2_1_3) then
              ((firstSuccess_d2_d1_d0_d0 (fun m_4 -> 
                (try_1_3 (let rec h_1_2_6 = (`LH_P2(_lh_findhash'_K_1_1_3, m_4)) in
                  (let rec t_1_3_8 = (fun ys_8_5 -> 
                    ys_8_5) in
                    (fun ys_8_6 -> 
                      (`LH_C(h_1_2_6, ((mappend_d3_d1_d0_d2 t_1_3_8) ys_8_6))))))))) ((enumFromTo_d2_d0_d0_d0 0) maxval_1_3))
            else
              ((firstSuccess_d3_d1_d0_d0 (fun mn_2 -> 
                (let rec _lh_matchIdent_2_3 = mn_2 in
                  (((_lh_matchIdent_2_3 _lh_findhash'_K_1_1_3) _lh_findhash'_K_2_1_3) try_1_3)))) (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_5 -> 
                ((_lh_listcomp_fun_para_5 _lh_listcomp_fun_2_8) maxval_1_3)) in
                (_lh_listcomp_fun_2_8 ((enumFromTo_d3_d0_d0_d0 0) maxval_1_3)))))
          | `Just(_lh_findhash'_Just_0_6) -> 
            ((firstSuccess_d0_d1_d0_d0 (fun m_5 -> 
              (try_1_3 (let rec h_1_2_7 = (`LH_P2(_lh_findhash'_K_1_1_3, m_5)) in
                (let rec t_1_3_9 = (fun ys_8_7 -> 
                  ys_8_7) in
                  (fun ys_8_8 -> 
                    (`LH_C(h_1_2_7, ((mappend_d3_d1_d0_d3 t_1_3_9) ys_8_8))))))))) ((enumFromTo_d0_d0_d0_d0 0) maxval_1_3))
          | _ -> 
            (Obj.magic 99)))
    | `LH_C(_lh_assocm_LH_C_0_6, _lh_assocm_LH_C_1_6) -> 
      (Obj.magic 99)
    | _ -> 
      (Obj.magic 99))
and assocm_d0_d1_d0_d0 _lh_assocm_arg1_7 _lh_assocm_arg2_7 =
  (match _lh_assocm_arg2_7 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_1_6 _lh_findhash'_K_2_1_6 _lh_findhash'_LH_P2_1_1_2 maxval_1_8 try_1_6 -> 
        (match _lh_findhash'_LH_P2_1_1_2 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_1_6 = _lh_findhash'_K_2_1_6) then
              ((firstSuccess_d2_d0_d0_d0 (fun m_6 -> 
                (try_1_6 (let rec h_1_4_3 = (`LH_P2(_lh_findhash'_K_1_1_6, m_6)) in
                  (let rec t_1_5_5 = (fun ys_1_0_0 -> 
                    ys_1_0_0) in
                    (fun ys_1_0_1 -> 
                      (`LH_C(h_1_4_3, ((mappend_d3_d0_d0_d2 t_1_5_5) ys_1_0_1))))))))) ((enumFromTo_d2_d1_d0_d0 0) maxval_1_8))
            else
              ((firstSuccess_d3_d0_d0_d0 (fun mn_3 -> 
                (let rec _lh_matchIdent_2_7 = mn_3 in
                  (((_lh_matchIdent_2_7 _lh_findhash'_K_1_1_6) _lh_findhash'_K_2_1_6) try_1_6)))) (let rec _lh_listcomp_fun_3_6 = (fun _lh_listcomp_fun_para_8 -> 
                ((_lh_listcomp_fun_para_8 _lh_listcomp_fun_3_6) maxval_1_8)) in
                (_lh_listcomp_fun_3_6 ((enumFromTo_d3_d1_d0_d0 0) maxval_1_8)))))
          | `Just(_lh_findhash'_Just_0_8) -> 
            ((firstSuccess_d0_d0_d0_d0 (fun m_7 -> 
              (try_1_6 (let rec h_1_4_4 = (`LH_P2(_lh_findhash'_K_1_1_6, m_7)) in
                (let rec t_1_5_6 = (fun ys_1_0_2 -> 
                  ys_1_0_2) in
                  (fun ys_1_0_3 -> 
                    (`LH_C(h_1_4_4, ((mappend_d3_d0_d0_d3 t_1_5_6) ys_1_0_3))))))))) ((enumFromTo_d0_d1_d0_d0 0) maxval_1_8))
          | _ -> 
            (Obj.magic 99)))
    | `LH_C(_lh_assocm_LH_C_0_7, _lh_assocm_LH_C_1_7) -> 
      (match _lh_assocm_LH_C_0_7 with
        | `LH_P2(_lh_assocm_LH_P2_0_3, _lh_assocm_LH_P2_1_3) -> 
          (if (_lh_assocm_arg1_7 = _lh_assocm_LH_P2_0_3) then
            (fun _lh_findhash'_K_1_1_7 _lh_findhash'_K_2_1_7 _lh_findhash'_LH_P2_1_1_3 maxval_1_9 try_1_7 -> 
              (match _lh_findhash'_LH_P2_1_1_3 with
                | `Nothing -> 
                  ((firstSuccess_d1_d0_d0_d0 (fun n_2_0 -> 
                    (try_1_7 (let rec h_1_4_5 = (`LH_P2(_lh_findhash'_K_2_1_7, n_2_0)) in
                      (let rec t_1_5_7 = (fun ys_1_0_4 -> 
                        ys_1_0_4) in
                        (fun ys_1_0_5 -> 
                          (`LH_C(h_1_4_5, ((mappend_d3_d0_d0_d4 t_1_5_7) ys_1_0_5))))))))) ((enumFromTo_d1_d1_d0_d0 0) maxval_1_9))
                | `Just(_lh_findhash'_Just_0_9) -> 
                  (try_1_7 (fun ys_1_0_6 -> 
                    ys_1_0_6))
                | _ -> 
                  (Obj.magic 99)))
          else
            ((assocm_d0_d1_d0_d0 _lh_assocm_arg1_7) _lh_assocm_LH_C_1_7))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and attribkeys_d0_d0_d0_d0 _lh_attribkeys_arg1_5 =
  ((map_d0_d0_d0_d0 (fun k_5 -> 
    (`K(k_5, (head_d0_d0_d0_d0 k_5), (last_d0_d0_d0_d0 k_5), (length_d0_d0_d0_d0 k_5))))) _lh_attribkeys_arg1_5)
and attribkeys_d1_d0_d0_d0 _lh_attribkeys_arg1_4 =
  ((map_d5_d0_d0_d0 (fun k_4 -> 
    (let rec _lh_ends_K_1_6 = (head_d1_d0_d0_d0 k_4) in
      (let rec _lh_ends_K_2_6 = (last_d1_d0_d0_d0 k_4) in
        (fun _lh_dummy_2_8 -> 
          (let rec h_1_1_8 = _lh_ends_K_1_6 in
            (let rec t_1_2_6 = (let rec h_1_1_9 = _lh_ends_K_2_6 in
              (let rec t_1_2_7 = (fun ys_7_9 -> 
                ys_7_9) in
                (fun ys_8_0 -> 
                  (let rec h_1_2_0 = h_1_1_9 in
                    (let rec t_1_2_8 = ((mappend_d2_d0_d0_d0 t_1_2_7) ys_8_0) in
                      (fun f_1_7_1 i_1_8 -> 
                        ((f_1_7_1 h_1_2_0) (((foldr_d1_d0_d0_d0 f_1_7_1) i_1_8) t_1_2_8)))))))) in
              (fun ys_8_1 -> 
                (let rec h_1_2_1 = h_1_1_8 in
                  (let rec t_1_2_9 = ((mappend_d2_d0_d1_d0 t_1_2_6) ys_8_1) in
                    (fun f_1_7_2 i_1_9 -> 
                      ((f_1_7_2 h_1_2_1) (((foldr_d1_d0_d1_d0 f_1_7_2) i_1_9) t_1_2_9))))))))))))) _lh_attribkeys_arg1_4)
and attribkeys_d1_d1_d0_d0 _lh_attribkeys_arg1_3 =
  ((map_d5_d1_d0_d0 (fun k_3 -> 
    (let rec _lh_ends_K_1_4 = (head_d1_d1_d0_d0 k_3) in
      (let rec _lh_ends_K_2_4 = (last_d1_d1_d0_d0 k_3) in
        (fun _lh_dummy_2_2 -> 
          (let rec h_7_7 = _lh_ends_K_1_4 in
            (let rec t_8_5 = (let rec h_7_8 = _lh_ends_K_2_4 in
              (let rec t_8_6 = (fun ys_5_8 -> 
                ys_5_8) in
                (fun ys_5_9 -> 
                  (let rec h_7_9 = h_7_8 in
                    (let rec t_8_7 = ((mappend_d2_d1_d0_d0 t_8_6) ys_5_9) in
                      (fun f_1_2_0 i_1_3 -> 
                        ((f_1_2_0 h_7_9) (((foldr_d1_d1_d0_d0 f_1_2_0) i_1_3) t_8_7)))))))) in
              (fun ys_6_0 -> 
                (let rec h_8_0 = h_7_7 in
                  (let rec t_8_8 = ((mappend_d2_d1_d1_d0 t_8_5) ys_6_0) in
                    (fun f_1_2_1 i_1_4 -> 
                      ((f_1_2_1 h_8_0) (((foldr_d1_d1_d1_d0 f_1_2_1) i_1_4) t_8_8))))))))))))) _lh_attribkeys_arg1_3)
and blocked'_d0_d0_d0_d0 _lh_blocked'_arg1_1 _lh_blocked'_arg2_1 =
  (match _lh_blocked'_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_C_1_1) -> 
      (let rec ds'_1 = ((union_d0_d0_d0_d0 _lh_blocked'_arg1_1) (ends_d0_d0_d0_d0 _lh_blocked'_LH_C_0_1)) in
        (let rec _lh_matchIdent_2_6 = ((partition'_d0_d0_d0_d0 (fun x_2 -> 
          ((subset_d0_d0_d0_d0 (ends_d1_d0_d0_d0 x_2)) ds'_1))) _lh_blocked'_LH_C_1_1) in
          (match _lh_matchIdent_2_6 with
            | `LH_P2(_lh_blocked'_LH_P2_0_1, _lh_blocked'_LH_P2_1_1) -> 
              ((mappend_d0_d0_d0_d0 (let rec h_1_4_1 = _lh_blocked'_LH_C_0_1 in
                (let rec t_1_5_3 = _lh_blocked'_LH_P2_0_1 in
                  (fun ys_9_7 -> 
                    (`LH_C(h_1_4_1, ((mappend_d0_d0_d1_d0 t_1_5_3) ys_9_7))))))) ((blocked'_d0_d0_d0_d0 ds'_1) _lh_blocked'_LH_P2_1_1))
            | _ -> 
              (Obj.magic 99))))
    | _ -> 
      (Obj.magic 99))
and blocked_d0_d0_d0_d0 _lh_blocked_arg1_1 =
  ((blocked'_d0_d0_d0_d0 (`LH_N)) _lh_blocked_arg1_1)
and cichelli_d0_d0_d0_d0 _lh_cichelli_arg1_1 =
  (let rec attribkeys'_1 = (attribkeys_d0_d0_d0_d0 ((mappend_d4_d0_d4_d0 (keys_d2_d0_d0_d0 0)) ((take_d0_d0_d4_d0 (_lh_cichelli_arg1_1 mod 2)) (keys_d3_d0_d0_d0 0)))) in
    (let rec hashkeys_1 = ((fun _lh_funcomp_x_1 -> 
      (blocked_d0_d0_d0_d0 (freqsorted_d0_d0_d0_d0 _lh_funcomp_x_1))) attribkeys'_1) in
      (findhash_d0_d0_d0_d0 hashkeys_1)))
and ends_d0_d0_d0_d0 _lh_ends_arg1_6 =
  (match _lh_ends_arg1_6 with
    | `K(_lh_ends_K_0_3, _lh_ends_K_1_7, _lh_ends_K_2_7, _lh_ends_K_3_3) -> 
      (let rec _lh_listcomp_fun_ls_h_1_6 = _lh_ends_K_1_7 in
        (let rec _lh_listcomp_fun_ls_t_1_6 = (let rec _lh_listcomp_fun_ls_h_1_7 = _lh_ends_K_2_7 in
          (let rec _lh_listcomp_fun_ls_t_1_7 = (fun _lh_listcomp_fun_3_0 _lh_union_arg1_5 -> 
            (`LH_N)) in
            (fun _lh_listcomp_fun_3_1 _lh_union_arg1_6 -> 
              (if (not ((member_d1_d0_d0_d0 _lh_listcomp_fun_ls_h_1_7) _lh_union_arg1_6)) then
                (`LH_C(_lh_listcomp_fun_ls_h_1_7, (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_1_7)))
              else
                (_lh_listcomp_fun_3_1 _lh_listcomp_fun_ls_t_1_7))))) in
          (fun _lh_listcomp_fun_3_2 _lh_union_arg1_7 -> 
            (if (not ((member_d1_d0_d1_d0 _lh_listcomp_fun_ls_h_1_6) _lh_union_arg1_7)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_6, (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_1_6)))
            else
              (_lh_listcomp_fun_3_2 _lh_listcomp_fun_ls_t_1_6)))))
    | _ -> 
      (Obj.magic 99))
and ends_d1_d0_d0_d0 _lh_ends_arg1_5 =
  (match _lh_ends_arg1_5 with
    | `K(_lh_ends_K_0_2, _lh_ends_K_1_5, _lh_ends_K_2_5, _lh_ends_K_3_2) -> 
      (let rec _lh_all_LH_C_0_2 = _lh_ends_K_1_5 in
        (let rec _lh_all_LH_C_1_2 = (let rec _lh_all_LH_C_0_3 = _lh_ends_K_2_5 in
          (let rec _lh_all_LH_C_1_3 = (fun _lh_all_arg1_8 -> 
            true) in
            (fun _lh_all_arg1_9 -> 
              (if (_lh_all_arg1_9 _lh_all_LH_C_0_3) then
                ((all_d0_d0_d0_d0 _lh_all_arg1_9) _lh_all_LH_C_1_3)
              else
                false)))) in
          (fun _lh_all_arg1_1_0 -> 
            (if (_lh_all_arg1_1_0 _lh_all_LH_C_0_2) then
              ((all_d0_d0_d1_d0 _lh_all_arg1_1_0) _lh_all_LH_C_1_2)
            else
              false))))
    | _ -> 
      (Obj.magic 99))
and enumFromTo_d0_d0_d0_d0 a_1_0 b_1_0 _lh_popOutId_0_6 _lh_popOutId_1_6 =
  (if (a_1_0 <= b_1_0) then
    (let rec h_7_5 = a_1_0 in
      (let rec t_8_3 = ((enumFromTo_d0_d0_d0_d0 (a_1_0 + 1)) b_1_0) in
        (let rec _lh_first_LH_C_0_8 = (_lh_popOutId_0_6 h_7_5) in
          (let rec _lh_first_LH_C_1_8 = ((map_d1_d1_d0_d0 _lh_popOutId_0_6) t_8_3) in
            (let rec _lh_matchIdent_1_5 = _lh_first_LH_C_0_8 in
              (match _lh_matchIdent_1_5 with
                | `YesIts(_lh_first_YesIts_0_8, _lh_first_YesIts_1_8) -> 
                  (`YesIts((_lh_popOutId_1_6 + _lh_first_YesIts_0_8), _lh_first_YesIts_1_8))
                | `NotEver(_lh_first_NotEver_0_8) -> 
                  ((first_d0_d1_d0_d0 (_lh_popOutId_1_6 + _lh_first_NotEver_0_8)) _lh_first_LH_C_1_8)
                | _ -> 
                  (Obj.magic 99)))))))
  else
    (`NotEver(_lh_popOutId_1_6)))
and enumFromTo_d0_d1_d0_d0 a_1_1 b_1_1 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (if (a_1_1 <= b_1_1) then
    (let rec h_8_1 = a_1_1 in
      (let rec t_8_9 = ((enumFromTo_d0_d1_d0_d0 (a_1_1 + 1)) b_1_1) in
        (let rec _lh_first_LH_C_0_9 = (_lh_popOutId_0_2 h_8_1) in
          (let rec _lh_first_LH_C_1_9 = ((map_d1_d0_d0_d0 _lh_popOutId_0_2) t_8_9) in
            (let rec _lh_matchIdent_1_6 = _lh_first_LH_C_0_9 in
              (match _lh_matchIdent_1_6 with
                | `YesIts(_lh_first_YesIts_0_9, _lh_first_YesIts_1_9) -> 
                  (`YesIts((_lh_popOutId_1_2 + _lh_first_YesIts_0_9), _lh_first_YesIts_1_9))
                | `NotEver(_lh_first_NotEver_0_9) -> 
                  ((first_d0_d0_d0_d0 (_lh_popOutId_1_2 + _lh_first_NotEver_0_9)) _lh_first_LH_C_1_9)
                | _ -> 
                  (Obj.magic 99)))))))
  else
    (`NotEver(_lh_popOutId_1_2)))
and enumFromTo_d1_d1_d0_d0 a_1_2 b_1_2 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (if (a_1_2 <= b_1_2) then
    (let rec h_8_3 = a_1_2 in
      (let rec t_9_1 = ((enumFromTo_d1_d1_d0_d0 (a_1_2 + 1)) b_1_2) in
        (let rec _lh_first_LH_C_0_1_0 = (_lh_popOutId_0_4 h_8_3) in
          (let rec _lh_first_LH_C_1_1_0 = ((map_d2_d0_d0_d0 _lh_popOutId_0_4) t_9_1) in
            (let rec _lh_matchIdent_1_7 = _lh_first_LH_C_0_1_0 in
              (match _lh_matchIdent_1_7 with
                | `YesIts(_lh_first_YesIts_0_1_0, _lh_first_YesIts_1_1_0) -> 
                  (`YesIts((_lh_popOutId_1_4 + _lh_first_YesIts_0_1_0), _lh_first_YesIts_1_1_0))
                | `NotEver(_lh_first_NotEver_0_1_0) -> 
                  ((first_d1_d0_d0_d0 (_lh_popOutId_1_4 + _lh_first_NotEver_0_1_0)) _lh_first_LH_C_1_1_0)
                | _ -> 
                  (Obj.magic 99)))))))
  else
    (`NotEver(_lh_popOutId_1_4)))
and enumFromTo_d2_d0_d0_d0 a_1_4 b_1_4 _lh_popOutId_0_7 _lh_popOutId_1_7 =
  (if (a_1_4 <= b_1_4) then
    (let rec h_1_1_6 = a_1_4 in
      (let rec t_1_2_4 = ((enumFromTo_d2_d0_d0_d0 (a_1_4 + 1)) b_1_4) in
        (let rec _lh_first_LH_C_0_1_2 = (_lh_popOutId_0_7 h_1_1_6) in
          (let rec _lh_first_LH_C_1_1_2 = ((map_d3_d1_d0_d0 _lh_popOutId_0_7) t_1_2_4) in
            (let rec _lh_matchIdent_2_1 = _lh_first_LH_C_0_1_2 in
              (match _lh_matchIdent_2_1 with
                | `YesIts(_lh_first_YesIts_0_1_2, _lh_first_YesIts_1_1_2) -> 
                  (`YesIts((_lh_popOutId_1_7 + _lh_first_YesIts_0_1_2), _lh_first_YesIts_1_1_2))
                | `NotEver(_lh_first_NotEver_0_1_2) -> 
                  ((first_d2_d1_d0_d0 (_lh_popOutId_1_7 + _lh_first_NotEver_0_1_2)) _lh_first_LH_C_1_1_2)
                | _ -> 
                  (Obj.magic 99)))))))
  else
    (`NotEver(_lh_popOutId_1_7)))
and enumFromTo_d2_d1_d0_d0 a_1_7 b_1_7 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (a_1_7 <= b_1_7) then
    (let rec h_1_4_7 = a_1_7 in
      (let rec t_1_6_3 = ((enumFromTo_d2_d1_d0_d0 (a_1_7 + 1)) b_1_7) in
        (let rec _lh_first_LH_C_0_1_4 = (_lh_popOutId_0_3 h_1_4_7) in
          (let rec _lh_first_LH_C_1_1_4 = ((map_d3_d0_d0_d0 _lh_popOutId_0_3) t_1_6_3) in
            (let rec _lh_matchIdent_2_8 = _lh_first_LH_C_0_1_4 in
              (match _lh_matchIdent_2_8 with
                | `YesIts(_lh_first_YesIts_0_1_4, _lh_first_YesIts_1_1_4) -> 
                  (`YesIts((_lh_popOutId_1_3 + _lh_first_YesIts_0_1_4), _lh_first_YesIts_1_1_4))
                | `NotEver(_lh_first_NotEver_0_1_4) -> 
                  ((first_d2_d0_d0_d0 (_lh_popOutId_1_3 + _lh_first_NotEver_0_1_4)) _lh_first_LH_C_1_1_4)
                | _ -> 
                  (Obj.magic 99)))))))
  else
    (`NotEver(_lh_popOutId_1_3)))
and enumFromTo_d3_d0_d0_d0 a_1_8 b_1_8 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_1_8 <= b_1_8) then
    (let rec _lh_listcomp_fun_ls_h_1_9 = a_1_8 in
      (let rec _lh_listcomp_fun_ls_t_1_9 = ((enumFromTo_d3_d0_d0_d0 (a_1_8 + 1)) b_1_8) in
        (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_9 -> 
          ((((_lh_listcomp_fun_para_9 _lh_listcomp_fun_ls_h_1_9) _lh_listcomp_fun_3_8) _lh_listcomp_fun_ls_t_1_9) _lh_popOutId_0_0)) in
          (_lh_listcomp_fun_3_8 ((enumFromTo_d4_d0_d0_d0 0) _lh_popOutId_1_0)))))
  else
    (fun f_2_1_0 _lh_first_arg1_5_9 -> 
      (`NotEver(_lh_first_arg1_5_9))))
and enumFromTo_d3_d1_d0_d0 a_1_6 b_1_6 _lh_popOutId_0_8 _lh_popOutId_1_8 =
  (if (a_1_6 <= b_1_6) then
    (let rec _lh_listcomp_fun_ls_h_1_8 = a_1_6 in
      (let rec _lh_listcomp_fun_ls_t_1_8 = ((enumFromTo_d3_d1_d0_d0 (a_1_6 + 1)) b_1_6) in
        (let rec _lh_listcomp_fun_3_4 = (fun _lh_listcomp_fun_para_7 -> 
          ((((_lh_listcomp_fun_para_7 _lh_listcomp_fun_ls_h_1_8) _lh_listcomp_fun_3_4) _lh_listcomp_fun_ls_t_1_8) _lh_popOutId_0_8)) in
          (_lh_listcomp_fun_3_4 ((enumFromTo_d4_d1_d0_d0 0) _lh_popOutId_1_8)))))
  else
    (fun f_1_8_5 _lh_first_arg1_5_3 -> 
      (`NotEver(_lh_first_arg1_5_3))))
and enumFromTo_d4_d0_d0_d0 a_1_5 b_1_5 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_1_5 <= b_1_5) then
    (fun f_1_7_9 _lh_first_arg1_4_9 -> 
      (let rec _lh_listcomp_fun_ls_h_1_3 = a_1_5 in
        (let rec _lh_listcomp_fun_ls_t_1_3 = ((enumFromTo_d4_d0_d0_d0 (a_1_5 + 1)) b_1_5) in
          (let rec h_1_2_3 = (let rec _lh_findhash'_LH_P2_0_6 = _lh_popOutId_0_1 in
            (let rec _lh_findhash'_LH_P2_1_9 = _lh_listcomp_fun_ls_h_1_3 in
              (fun _lh_findhash'_K_1_1_2 _lh_findhash'_K_2_1_2 try_1_2 -> 
                (try_1_2 (let rec h_1_2_4 = (`LH_P2(_lh_findhash'_K_1_1_2, _lh_findhash'_LH_P2_0_6)) in
                  (let rec t_1_3_5 = (let rec h_1_2_5 = (`LH_P2(_lh_findhash'_K_2_1_2, _lh_findhash'_LH_P2_1_9)) in
                    (let rec t_1_3_6 = (fun ys_8_2 -> 
                      ys_8_2) in
                      (fun ys_8_3 -> 
                        (`LH_C(h_1_2_5, ((mappend_d3_d1_d0_d0 t_1_3_6) ys_8_3)))))) in
                    (fun ys_8_4 -> 
                      (`LH_C(h_1_2_4, ((mappend_d3_d1_d0_d1 t_1_3_5) ys_8_4)))))))))) in
            (let rec t_1_3_7 = (_lh_popOutId_1_1 _lh_listcomp_fun_ls_t_1_3) in
              (let rec _lh_first_LH_C_0_1_3 = (f_1_7_9 h_1_2_3) in
                (let rec _lh_first_LH_C_1_1_3 = ((map_d4_d1_d0_d0 f_1_7_9) t_1_3_7) in
                  (let rec _lh_matchIdent_2_2 = _lh_first_LH_C_0_1_3 in
                    (match _lh_matchIdent_2_2 with
                      | `YesIts(_lh_first_YesIts_0_1_3, _lh_first_YesIts_1_1_3) -> 
                        (`YesIts((_lh_first_arg1_4_9 + _lh_first_YesIts_0_1_3), _lh_first_YesIts_1_1_3))
                      | `NotEver(_lh_first_NotEver_0_1_3) -> 
                        ((first_d3_d1_d0_d0 (_lh_first_arg1_4_9 + _lh_first_NotEver_0_1_3)) _lh_first_LH_C_1_1_3)
                      | _ -> 
                        (Obj.magic 99))))))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and enumFromTo_d4_d1_d0_d0 a_1_3 b_1_3 _lh_popOutId_0_5 _lh_popOutId_1_5 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (a_1_3 <= b_1_3) then
    (fun f_1_3_0 _lh_first_arg1_4_2 -> 
      (let rec _lh_listcomp_fun_ls_h_1_0 = a_1_3 in
        (let rec _lh_listcomp_fun_ls_t_1_0 = ((enumFromTo_d4_d1_d0_d0 (a_1_3 + 1)) b_1_3) in
          (let rec h_8_4 = (let rec _lh_findhash'_LH_P2_0_4 = _lh_popOutId_0_5 in
            (let rec _lh_findhash'_LH_P2_1_7 = _lh_listcomp_fun_ls_h_1_0 in
              (fun _lh_findhash'_K_1_9 _lh_findhash'_K_2_9 try_9 -> 
                (try_9 (let rec h_8_5 = (`LH_P2(_lh_findhash'_K_1_9, _lh_findhash'_LH_P2_0_4)) in
                  (let rec t_9_2 = (let rec h_8_6 = (`LH_P2(_lh_findhash'_K_2_9, _lh_findhash'_LH_P2_1_7)) in
                    (let rec t_9_3 = (fun ys_6_3 -> 
                      ys_6_3) in
                      (fun ys_6_4 -> 
                        (`LH_C(h_8_6, ((mappend_d3_d0_d0_d0 t_9_3) ys_6_4)))))) in
                    (fun ys_6_5 -> 
                      (`LH_C(h_8_5, ((mappend_d3_d0_d0_d1 t_9_2) ys_6_5)))))))))) in
            (let rec t_9_4 = (_lh_popOutId_1_5 _lh_listcomp_fun_ls_t_1_0) in
              (let rec _lh_first_LH_C_0_1_1 = (f_1_3_0 h_8_4) in
                (let rec _lh_first_LH_C_1_1_1 = ((map_d4_d0_d0_d0 f_1_3_0) t_9_4) in
                  (let rec _lh_matchIdent_1_8 = _lh_first_LH_C_0_1_1 in
                    (match _lh_matchIdent_1_8 with
                      | `YesIts(_lh_first_YesIts_0_1_1, _lh_first_YesIts_1_1_1) -> 
                        (`YesIts((_lh_first_arg1_4_2 + _lh_first_YesIts_0_1_1), _lh_first_YesIts_1_1_1))
                      | `NotEver(_lh_first_NotEver_0_1_1) -> 
                        ((first_d3_d0_d0_d0 (_lh_first_arg1_4_2 + _lh_first_NotEver_0_1_1)) _lh_first_LH_C_1_1_1)
                      | _ -> 
                        (Obj.magic 99))))))))))
  else
    (_lh_popOutId_3_1 _lh_popOutId_2_1))
and findhash'_d0_d0_d0_d0 _lh_findhash'_arg1_3 _lh_findhash'_arg2_3 _lh_findhash'_arg3_3 =
  (match _lh_findhash'_arg3_3 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_3))
    | `LH_C(_lh_findhash'_LH_C_0_3, _lh_findhash'_LH_C_1_5) -> 
      (match _lh_findhash'_LH_C_0_3 with
        | `K(_lh_findhash'_K_0_3, _lh_findhash'_K_1_1_4, _lh_findhash'_K_2_1_4, _lh_findhash'_K_3_3) -> 
          (let rec try_1_4 = (fun newAssocs_3 -> 
            (let rec newCharAssocs_5 = ((mappend_d3_d1_d0_d4 newAssocs_3) _lh_findhash'_arg2_3) in
              (let rec _lh_matchIdent_2_4 = ((hinsert_d0_d1_d0_d0 ((hash_d0_d1_d0_d0 newCharAssocs_5) (let rec _lh_hash_K_1_3 = _lh_findhash'_K_1_1_4 in
                (let rec _lh_hash_K_2_3 = _lh_findhash'_K_2_1_4 in
                  (let rec _lh_hash_K_3_3 = _lh_findhash'_K_3_3 in
                    (fun _lh_hash_arg1_6 -> 
                      ((_lh_hash_K_3_3 + ((assoc_d0_d1_d0_d0 _lh_hash_K_1_3) _lh_hash_arg1_6)) + ((assoc_d1_d1_d0_d0 _lh_hash_K_2_3) _lh_hash_arg1_6)))))))) _lh_findhash'_arg1_3) in
                ((_lh_matchIdent_2_4 _lh_findhash'_LH_C_1_5) newCharAssocs_5)))) in
            (let rec maxval_1_4 = (length_d3_d1_d0_d0 (freqtab_d0_d1_d0_d0 0)) in
              (let rec _lh_matchIdent_2_5 = (let rec _lh_findhash'_LH_P2_0_7 = ((assocm_d0_d0_d0_d0 _lh_findhash'_K_1_1_4) _lh_findhash'_arg2_3) in
                (let rec _lh_findhash'_LH_P2_1_1_1 = ((assocm_d1_d0_d0_d0 _lh_findhash'_K_2_1_4) _lh_findhash'_arg2_3) in
                  (fun _lh_findhash'_K_1_1_5 _lh_findhash'_K_2_1_5 maxval_1_5 try_1_5 -> 
                    (((((_lh_findhash'_LH_P2_0_7 _lh_findhash'_K_1_1_5) _lh_findhash'_K_2_1_5) _lh_findhash'_LH_P2_1_1_1) maxval_1_5) try_1_5)))) in
                ((((_lh_matchIdent_2_5 _lh_findhash'_K_1_1_4) _lh_findhash'_K_2_1_4) maxval_1_4) try_1_4))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and findhash'_d0_d1_d0_d0 _lh_findhash'_arg1_2 _lh_findhash'_arg2_2 _lh_findhash'_arg3_2 =
  (match _lh_findhash'_arg3_2 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_2))
    | `LH_C(_lh_findhash'_LH_C_0_2, _lh_findhash'_LH_C_1_4) -> 
      (match _lh_findhash'_LH_C_0_2 with
        | `K(_lh_findhash'_K_0_2, _lh_findhash'_K_1_1_0, _lh_findhash'_K_2_1_0, _lh_findhash'_K_3_2) -> 
          (let rec try_1_0 = (fun newAssocs_2 -> 
            (let rec newCharAssocs_4 = ((mappend_d3_d0_d0_d5 newAssocs_2) _lh_findhash'_arg2_2) in
              (let rec _lh_matchIdent_1_9 = ((hinsert_d0_d0_d0_d0 ((hash_d0_d0_d0_d0 newCharAssocs_4) (let rec _lh_hash_K_1_2 = _lh_findhash'_K_1_1_0 in
                (let rec _lh_hash_K_2_2 = _lh_findhash'_K_2_1_0 in
                  (let rec _lh_hash_K_3_2 = _lh_findhash'_K_3_2 in
                    (fun _lh_hash_arg1_5 -> 
                      ((_lh_hash_K_3_2 + ((assoc_d0_d0_d0_d0 _lh_hash_K_1_2) _lh_hash_arg1_5)) + ((assoc_d1_d0_d0_d0 _lh_hash_K_2_2) _lh_hash_arg1_5)))))))) _lh_findhash'_arg1_2) in
                (match _lh_matchIdent_1_9 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_5) -> 
                    (((findhash'_d0_d1_d0_d0 _lh_findhash'_Just_0_5) newCharAssocs_4) _lh_findhash'_LH_C_1_4)
                  | _ -> 
                    (Obj.magic 99))))) in
            (let rec maxval_1_1 = (length_d3_d0_d0_d0 (freqtab_d0_d0_d0_d0 0)) in
              (let rec _lh_matchIdent_2_0 = (let rec _lh_findhash'_LH_P2_0_5 = ((assocm_d0_d1_d0_d0 _lh_findhash'_K_1_1_0) _lh_findhash'_arg2_2) in
                (let rec _lh_findhash'_LH_P2_1_8 = ((assocm_d1_d1_d0_d0 _lh_findhash'_K_2_1_0) _lh_findhash'_arg2_2) in
                  (fun _lh_findhash'_K_1_1_1 _lh_findhash'_K_2_1_1 maxval_1_2 try_1_1 -> 
                    (((((_lh_findhash'_LH_P2_0_5 _lh_findhash'_K_1_1_1) _lh_findhash'_K_2_1_1) _lh_findhash'_LH_P2_1_8) maxval_1_2) try_1_1)))) in
                ((((_lh_matchIdent_2_0 _lh_findhash'_K_1_1_0) _lh_findhash'_K_2_1_0) maxval_1_1) try_1_0))))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and findhash_d0_d0_d0_d0 _lh_findhash_arg1_1 =
  (((findhash'_d0_d0_d0_d0 (let rec _lh_hinsert_H_0_3 = (fun _lh_minm_arg2_5 -> 
    _lh_minm_arg2_5) in
    (let rec _lh_hinsert_H_1_3 = (fun _lh_maxm_arg2_5 -> 
      _lh_maxm_arg2_5) in
      (let rec _lh_hinsert_H_2_3 = (`LH_N) in
        (fun _lh_hinsert_arg1_5 -> 
          (let rec lo'_3 = ((minm_d0_d1_d0_d0 _lh_hinsert_H_0_3) _lh_hinsert_arg1_5) in
            (let rec hi'_3 = ((maxm_d0_d1_d0_d0 _lh_hinsert_H_1_3) _lh_hinsert_arg1_5) in
              (if (((member_d2_d1_d0_d0 _lh_hinsert_arg1_5) _lh_hinsert_H_2_3) || (((1 + hi'_3) - lo'_3) > (length_d2_d1_d4_d0 (keys_d1_d1_d0_d0 0)))) then
                (fun _lh_findhash'_LH_C_1_6 newCharAssocs_6 -> 
                  (`NotEver(1)))
              else
                (let rec _lh_findhash'_Just_0_7 = (`H((`Just(lo'_3)), (`Just(hi'_3)), (`LH_C(_lh_hinsert_arg1_5, _lh_hinsert_H_2_3)))) in
                  (fun _lh_findhash'_LH_C_1_7 newCharAssocs_7 -> 
                    (((findhash'_d0_d1_d0_d0 _lh_findhash'_Just_0_7) newCharAssocs_7) _lh_findhash'_LH_C_1_7))))))))))) (`LH_N)) _lh_findhash_arg1_1)
and firstSuccess_d0_d0_d0_d0 _lh_firstSuccess_arg1_8 _lh_firstSuccess_arg2_8 =
  ((first_d0_d0_d1_d0 0) ((map_d1_d0_d1_d0 _lh_firstSuccess_arg1_8) _lh_firstSuccess_arg2_8))
and firstSuccess_d0_d1_d0_d0 _lh_firstSuccess_arg1_1_4 _lh_firstSuccess_arg2_1_4 =
  ((first_d0_d1_d1_d0 0) ((map_d1_d1_d1_d0 _lh_firstSuccess_arg1_1_4) _lh_firstSuccess_arg2_1_4))
and firstSuccess_d1_d0_d0_d0 _lh_firstSuccess_arg1_1_1 _lh_firstSuccess_arg2_1_1 =
  ((first_d1_d0_d1_d0 0) ((map_d2_d0_d1_d0 _lh_firstSuccess_arg1_1_1) _lh_firstSuccess_arg2_1_1))
and firstSuccess_d2_d0_d0_d0 _lh_firstSuccess_arg1_1_2 _lh_firstSuccess_arg2_1_2 =
  ((first_d2_d0_d1_d0 0) ((map_d3_d0_d1_d0 _lh_firstSuccess_arg1_1_2) _lh_firstSuccess_arg2_1_2))
and firstSuccess_d2_d1_d0_d0 _lh_firstSuccess_arg1_9 _lh_firstSuccess_arg2_9 =
  ((first_d2_d1_d1_d0 0) ((map_d3_d1_d1_d0 _lh_firstSuccess_arg1_9) _lh_firstSuccess_arg2_9))
and firstSuccess_d3_d0_d0_d0 _lh_firstSuccess_arg1_1_3 _lh_firstSuccess_arg2_1_3 =
  ((first_d3_d0_d1_d0 0) ((map_d4_d0_d1_d0 _lh_firstSuccess_arg1_1_3) _lh_firstSuccess_arg2_1_3))
and firstSuccess_d3_d1_d0_d0 _lh_firstSuccess_arg1_1_0 _lh_firstSuccess_arg2_1_0 =
  ((first_d3_d1_d1_d0 0) ((map_d4_d1_d1_d0 _lh_firstSuccess_arg1_1_0) _lh_firstSuccess_arg2_1_0))
and freqtab_d0_d0_d0_d0 _lh_freqtab_arg1_3 =
  (histo_d0_d0_d0_d0 (concat_d0_d0_d0_d0 ((map_d6_d0_d4_d0 ends_d2_d0_d0_d0) (attribkeys_d1_d0_d0_d0 (keys_d0_d0_d0_d0 0)))))
and freqtab_d0_d1_d0_d0 _lh_freqtab_arg1_2 =
  (histo_d0_d1_d0_d0 (concat_d0_d1_d0_d0 ((map_d6_d1_d4_d0 ends_d2_d1_d0_d0) (attribkeys_d1_d1_d0_d0 (keys_d0_d1_d0_d0 0)))))
and hinsert_d0_d0_d0_d0 _lh_hinsert_arg1_4 _lh_hinsert_arg2_3 =
  (match _lh_hinsert_arg2_3 with
    | `H(_lh_hinsert_H_0_2, _lh_hinsert_H_1_2, _lh_hinsert_H_2_2) -> 
      (let rec lo'_2 = ((minm_d0_d0_d0_d0 _lh_hinsert_H_0_2) _lh_hinsert_arg1_4) in
        (let rec hi'_2 = ((maxm_d0_d0_d0_d0 _lh_hinsert_H_1_2) _lh_hinsert_arg1_4) in
          (if (((member_d2_d0_d0_d0 _lh_hinsert_arg1_4) _lh_hinsert_H_2_2) || (((1 + hi'_2) - lo'_2) > (length_d2_d0_d4_d0 (keys_d1_d0_d0_d0 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_2)), (`Just(hi'_2)), (`LH_C(_lh_hinsert_arg1_4, _lh_hinsert_H_2_2)))))))))
    | _ -> 
      (Obj.magic 99))
and histo_d0_d0_d0_d0 _lh_histo_arg1_2 =
  (((foldr_d1_d0_d2_d0 histins_d0_d0_d0_d0) (`LH_N)) _lh_histo_arg1_2)
and histo_d0_d1_d0_d0 _lh_histo_arg1_3 =
  (((foldr_d1_d1_d2_d0 histins_d0_d1_d0_d0) (`LH_N)) _lh_histo_arg1_3)
and keys_d0_d0_d0_d0 _lh_keys_arg1_6 f_1_4_0 f_1_4_1 _lh_dummy_2_7 =
  (let rec h_8_7 = (`LH_C('a', (let rec _lh_go_LH_C_0_3_9 = 'p' in
    (let rec _lh_go_LH_C_1_3_9 = (let rec _lh_go_LH_C_0_4_0 = 'p' in
      (let rec _lh_go_LH_C_1_4_0 = (let rec _lh_go_LH_C_0_4_1 = 'l' in
        (let rec _lh_go_LH_C_1_4_1 = (let rec _lh_go_LH_C_0_4_2 = 'e' in
          (let rec _lh_go_LH_C_1_4_2 = (fun _lh_go_arg1_4_9 go_4_9 -> 
            _lh_go_arg1_4_9) in
            (fun _lh_go_arg1_5_0 go_5_0 -> 
              ((go_5_0 _lh_go_LH_C_0_4_2) _lh_go_LH_C_1_4_2)))) in
          (fun _lh_go_arg1_5_1 go_5_1 -> 
            ((go_5_1 _lh_go_LH_C_0_4_1) _lh_go_LH_C_1_4_1)))) in
        (fun _lh_go_arg1_5_2 go_5_2 -> 
          ((go_5_2 _lh_go_LH_C_0_4_0) _lh_go_LH_C_1_4_0)))) in
      (fun _lh_go_arg1_5_3 go_5_3 -> 
        ((go_5_3 _lh_go_LH_C_0_3_9) _lh_go_LH_C_1_3_9)))))) in
    (let rec t_9_5 = (let rec h_8_8 = (`LH_C('b', (let rec _lh_go_LH_C_0_4_3 = 'a' in
      (let rec _lh_go_LH_C_1_4_3 = (let rec _lh_go_LH_C_0_4_4 = 'n' in
        (let rec _lh_go_LH_C_1_4_4 = (let rec _lh_go_LH_C_0_4_5 = 'a' in
          (let rec _lh_go_LH_C_1_4_5 = (let rec _lh_go_LH_C_0_4_6 = 'n' in
            (let rec _lh_go_LH_C_1_4_6 = (let rec _lh_go_LH_C_0_4_7 = 'a' in
              (let rec _lh_go_LH_C_1_4_7 = (fun _lh_go_arg1_5_4 go_5_4 -> 
                _lh_go_arg1_5_4) in
                (fun _lh_go_arg1_5_5 go_5_5 -> 
                  ((go_5_5 _lh_go_LH_C_0_4_7) _lh_go_LH_C_1_4_7)))) in
              (fun _lh_go_arg1_5_6 go_5_6 -> 
                ((go_5_6 _lh_go_LH_C_0_4_6) _lh_go_LH_C_1_4_6)))) in
            (fun _lh_go_arg1_5_7 go_5_7 -> 
              ((go_5_7 _lh_go_LH_C_0_4_5) _lh_go_LH_C_1_4_5)))) in
          (fun _lh_go_arg1_5_8 go_5_8 -> 
            ((go_5_8 _lh_go_LH_C_0_4_4) _lh_go_LH_C_1_4_4)))) in
        (fun _lh_go_arg1_5_9 go_5_9 -> 
          ((go_5_9 _lh_go_LH_C_0_4_3) _lh_go_LH_C_1_4_3)))))) in
      (let rec t_9_6 = (let rec h_8_9 = (`LH_C('p', (let rec _lh_go_LH_C_0_4_8 = 'e' in
        (let rec _lh_go_LH_C_1_4_8 = (let rec _lh_go_LH_C_0_4_9 = 'a' in
          (let rec _lh_go_LH_C_1_4_9 = (let rec _lh_go_LH_C_0_5_0 = 'c' in
            (let rec _lh_go_LH_C_1_5_0 = (let rec _lh_go_LH_C_0_5_1 = 'h' in
              (let rec _lh_go_LH_C_1_5_1 = (fun _lh_go_arg1_6_0 go_6_0 -> 
                _lh_go_arg1_6_0) in
                (fun _lh_go_arg1_6_1 go_6_1 -> 
                  ((go_6_1 _lh_go_LH_C_0_5_1) _lh_go_LH_C_1_5_1)))) in
              (fun _lh_go_arg1_6_2 go_6_2 -> 
                ((go_6_2 _lh_go_LH_C_0_5_0) _lh_go_LH_C_1_5_0)))) in
            (fun _lh_go_arg1_6_3 go_6_3 -> 
              ((go_6_3 _lh_go_LH_C_0_4_9) _lh_go_LH_C_1_4_9)))) in
          (fun _lh_go_arg1_6_4 go_6_4 -> 
            ((go_6_4 _lh_go_LH_C_0_4_8) _lh_go_LH_C_1_4_8)))))) in
        (let rec t_9_7 = (let rec h_9_0 = (`LH_C('a', (let rec _lh_go_LH_C_0_5_2 = 'p' in
          (let rec _lh_go_LH_C_1_5_2 = (let rec _lh_go_LH_C_0_5_3 = 'r' in
            (let rec _lh_go_LH_C_1_5_3 = (let rec _lh_go_LH_C_0_5_4 = 'i' in
              (let rec _lh_go_LH_C_1_5_4 = (let rec _lh_go_LH_C_0_5_5 = 'c' in
                (let rec _lh_go_LH_C_1_5_5 = (let rec _lh_go_LH_C_0_5_6 = 'o' in
                  (let rec _lh_go_LH_C_1_5_6 = (let rec _lh_go_LH_C_0_5_7 = 't' in
                    (let rec _lh_go_LH_C_1_5_7 = (fun _lh_go_arg1_6_5 go_6_5 -> 
                      _lh_go_arg1_6_5) in
                      (fun _lh_go_arg1_6_6 go_6_6 -> 
                        ((go_6_6 _lh_go_LH_C_0_5_7) _lh_go_LH_C_1_5_7)))) in
                    (fun _lh_go_arg1_6_7 go_6_7 -> 
                      ((go_6_7 _lh_go_LH_C_0_5_6) _lh_go_LH_C_1_5_6)))) in
                  (fun _lh_go_arg1_6_8 go_6_8 -> 
                    ((go_6_8 _lh_go_LH_C_0_5_5) _lh_go_LH_C_1_5_5)))) in
                (fun _lh_go_arg1_6_9 go_6_9 -> 
                  ((go_6_9 _lh_go_LH_C_0_5_4) _lh_go_LH_C_1_5_4)))) in
              (fun _lh_go_arg1_7_0 go_7_0 -> 
                ((go_7_0 _lh_go_LH_C_0_5_3) _lh_go_LH_C_1_5_3)))) in
            (fun _lh_go_arg1_7_1 go_7_1 -> 
              ((go_7_1 _lh_go_LH_C_0_5_2) _lh_go_LH_C_1_5_2)))))) in
          (let rec t_9_8 = (fun f_1_3_1 f_1_3_2 _lh_dummy_2_3 f_1_3_3 i_1_5 -> 
            i_1_5) in
            (fun f_1_3_4 -> 
              (let rec h_9_1 = (f_1_3_4 h_9_0) in
                (let rec t_9_9 = ((map_d5_d0_d1_d0 f_1_3_4) t_9_8) in
                  (fun f_1_3_5 -> 
                    (let rec h_9_2 = (f_1_3_5 h_9_1) in
                      (let rec t_1_0_0 = ((map_d6_d0_d0_d0 f_1_3_5) t_9_9) in
                        (fun _lh_dummy_2_4 -> 
                          ((mappend_d2_d0_d2_d0 h_9_2) (concat_d0_d0_d1_d0 t_1_0_0))))))))))) in
          (fun f_1_3_6 -> 
            (let rec h_9_3 = (f_1_3_6 h_8_9) in
              (let rec t_1_0_1 = ((map_d5_d0_d2_d0 f_1_3_6) t_9_7) in
                (fun f_1_3_7 -> 
                  (let rec h_9_4 = (f_1_3_7 h_9_3) in
                    (let rec t_1_0_2 = ((map_d6_d0_d1_d0 f_1_3_7) t_1_0_1) in
                      (fun _lh_dummy_2_5 -> 
                        ((mappend_d2_d0_d3_d0 h_9_4) (concat_d0_d0_d2_d0 t_1_0_2))))))))))) in
        (fun f_1_3_8 -> 
          (let rec h_9_5 = (f_1_3_8 h_8_8) in
            (let rec t_1_0_3 = ((map_d5_d0_d3_d0 f_1_3_8) t_9_6) in
              (fun f_1_3_9 -> 
                (let rec h_9_6 = (f_1_3_9 h_9_5) in
                  (let rec t_1_0_4 = ((map_d6_d0_d2_d0 f_1_3_9) t_1_0_3) in
                    (fun _lh_dummy_2_6 -> 
                      ((mappend_d2_d0_d4_d0 h_9_6) (concat_d0_d0_d3_d0 t_1_0_4))))))))))) in
      (let rec h_9_7 = (f_1_4_0 h_8_7) in
        (let rec t_1_0_5 = ((map_d5_d0_d4_d0 f_1_4_0) t_9_5) in
          (let rec h_9_8 = (f_1_4_1 h_9_7) in
            (let rec t_1_0_6 = ((map_d6_d0_d3_d0 f_1_4_1) t_1_0_5) in
              ((mappend_d2_d0_d5_d0 h_9_8) (concat_d0_d0_d4_d0 t_1_0_6))))))))
and keys_d0_d1_d0_d0 _lh_keys_arg1_1_0 f_1_9_6 f_1_9_7 _lh_dummy_3_8 =
  (let rec h_1_2_9 = (`LH_C('a', (let rec _lh_go_LH_C_0_5_9 = 'p' in
    (let rec _lh_go_LH_C_1_5_9 = (let rec _lh_go_LH_C_0_6_0 = 'p' in
      (let rec _lh_go_LH_C_1_6_0 = (let rec _lh_go_LH_C_0_6_1 = 'l' in
        (let rec _lh_go_LH_C_1_6_1 = (let rec _lh_go_LH_C_0_6_2 = 'e' in
          (let rec _lh_go_LH_C_1_6_2 = (fun _lh_go_arg1_7_4 go_7_4 -> 
            _lh_go_arg1_7_4) in
            (fun _lh_go_arg1_7_5 go_7_5 -> 
              ((go_7_5 _lh_go_LH_C_0_6_2) _lh_go_LH_C_1_6_2)))) in
          (fun _lh_go_arg1_7_6 go_7_6 -> 
            ((go_7_6 _lh_go_LH_C_0_6_1) _lh_go_LH_C_1_6_1)))) in
        (fun _lh_go_arg1_7_7 go_7_7 -> 
          ((go_7_7 _lh_go_LH_C_0_6_0) _lh_go_LH_C_1_6_0)))) in
      (fun _lh_go_arg1_7_8 go_7_8 -> 
        ((go_7_8 _lh_go_LH_C_0_5_9) _lh_go_LH_C_1_5_9)))))) in
    (let rec t_1_4_1 = (let rec h_1_3_0 = (`LH_C('b', (let rec _lh_go_LH_C_0_6_3 = 'a' in
      (let rec _lh_go_LH_C_1_6_3 = (let rec _lh_go_LH_C_0_6_4 = 'n' in
        (let rec _lh_go_LH_C_1_6_4 = (let rec _lh_go_LH_C_0_6_5 = 'a' in
          (let rec _lh_go_LH_C_1_6_5 = (let rec _lh_go_LH_C_0_6_6 = 'n' in
            (let rec _lh_go_LH_C_1_6_6 = (let rec _lh_go_LH_C_0_6_7 = 'a' in
              (let rec _lh_go_LH_C_1_6_7 = (fun _lh_go_arg1_7_9 go_7_9 -> 
                _lh_go_arg1_7_9) in
                (fun _lh_go_arg1_8_0 go_8_0 -> 
                  ((go_8_0 _lh_go_LH_C_0_6_7) _lh_go_LH_C_1_6_7)))) in
              (fun _lh_go_arg1_8_1 go_8_1 -> 
                ((go_8_1 _lh_go_LH_C_0_6_6) _lh_go_LH_C_1_6_6)))) in
            (fun _lh_go_arg1_8_2 go_8_2 -> 
              ((go_8_2 _lh_go_LH_C_0_6_5) _lh_go_LH_C_1_6_5)))) in
          (fun _lh_go_arg1_8_3 go_8_3 -> 
            ((go_8_3 _lh_go_LH_C_0_6_4) _lh_go_LH_C_1_6_4)))) in
        (fun _lh_go_arg1_8_4 go_8_4 -> 
          ((go_8_4 _lh_go_LH_C_0_6_3) _lh_go_LH_C_1_6_3)))))) in
      (let rec t_1_4_2 = (let rec h_1_3_1 = (`LH_C('p', (let rec _lh_go_LH_C_0_6_8 = 'e' in
        (let rec _lh_go_LH_C_1_6_8 = (let rec _lh_go_LH_C_0_6_9 = 'a' in
          (let rec _lh_go_LH_C_1_6_9 = (let rec _lh_go_LH_C_0_7_0 = 'c' in
            (let rec _lh_go_LH_C_1_7_0 = (let rec _lh_go_LH_C_0_7_1 = 'h' in
              (let rec _lh_go_LH_C_1_7_1 = (fun _lh_go_arg1_8_5 go_8_5 -> 
                _lh_go_arg1_8_5) in
                (fun _lh_go_arg1_8_6 go_8_6 -> 
                  ((go_8_6 _lh_go_LH_C_0_7_1) _lh_go_LH_C_1_7_1)))) in
              (fun _lh_go_arg1_8_7 go_8_7 -> 
                ((go_8_7 _lh_go_LH_C_0_7_0) _lh_go_LH_C_1_7_0)))) in
            (fun _lh_go_arg1_8_8 go_8_8 -> 
              ((go_8_8 _lh_go_LH_C_0_6_9) _lh_go_LH_C_1_6_9)))) in
          (fun _lh_go_arg1_8_9 go_8_9 -> 
            ((go_8_9 _lh_go_LH_C_0_6_8) _lh_go_LH_C_1_6_8)))))) in
        (let rec t_1_4_3 = (let rec h_1_3_2 = (`LH_C('a', (let rec _lh_go_LH_C_0_7_2 = 'p' in
          (let rec _lh_go_LH_C_1_7_2 = (let rec _lh_go_LH_C_0_7_3 = 'r' in
            (let rec _lh_go_LH_C_1_7_3 = (let rec _lh_go_LH_C_0_7_4 = 'i' in
              (let rec _lh_go_LH_C_1_7_4 = (let rec _lh_go_LH_C_0_7_5 = 'c' in
                (let rec _lh_go_LH_C_1_7_5 = (let rec _lh_go_LH_C_0_7_6 = 'o' in
                  (let rec _lh_go_LH_C_1_7_6 = (let rec _lh_go_LH_C_0_7_7 = 't' in
                    (let rec _lh_go_LH_C_1_7_7 = (fun _lh_go_arg1_9_0 go_9_0 -> 
                      _lh_go_arg1_9_0) in
                      (fun _lh_go_arg1_9_1 go_9_1 -> 
                        ((go_9_1 _lh_go_LH_C_0_7_7) _lh_go_LH_C_1_7_7)))) in
                    (fun _lh_go_arg1_9_2 go_9_2 -> 
                      ((go_9_2 _lh_go_LH_C_0_7_6) _lh_go_LH_C_1_7_6)))) in
                  (fun _lh_go_arg1_9_3 go_9_3 -> 
                    ((go_9_3 _lh_go_LH_C_0_7_5) _lh_go_LH_C_1_7_5)))) in
                (fun _lh_go_arg1_9_4 go_9_4 -> 
                  ((go_9_4 _lh_go_LH_C_0_7_4) _lh_go_LH_C_1_7_4)))) in
              (fun _lh_go_arg1_9_5 go_9_5 -> 
                ((go_9_5 _lh_go_LH_C_0_7_3) _lh_go_LH_C_1_7_3)))) in
            (fun _lh_go_arg1_9_6 go_9_6 -> 
              ((go_9_6 _lh_go_LH_C_0_7_2) _lh_go_LH_C_1_7_2)))))) in
          (let rec t_1_4_4 = (fun f_1_8_7 f_1_8_8 _lh_dummy_3_4 f_1_8_9 i_2_2 -> 
            i_2_2) in
            (fun f_1_9_0 -> 
              (let rec h_1_3_3 = (f_1_9_0 h_1_3_2) in
                (let rec t_1_4_5 = ((map_d5_d1_d1_d0 f_1_9_0) t_1_4_4) in
                  (fun f_1_9_1 -> 
                    (let rec h_1_3_4 = (f_1_9_1 h_1_3_3) in
                      (let rec t_1_4_6 = ((map_d6_d1_d0_d0 f_1_9_1) t_1_4_5) in
                        (fun _lh_dummy_3_5 -> 
                          ((mappend_d2_d1_d2_d0 h_1_3_4) (concat_d0_d1_d1_d0 t_1_4_6))))))))))) in
          (fun f_1_9_2 -> 
            (let rec h_1_3_5 = (f_1_9_2 h_1_3_1) in
              (let rec t_1_4_7 = ((map_d5_d1_d2_d0 f_1_9_2) t_1_4_3) in
                (fun f_1_9_3 -> 
                  (let rec h_1_3_6 = (f_1_9_3 h_1_3_5) in
                    (let rec t_1_4_8 = ((map_d6_d1_d1_d0 f_1_9_3) t_1_4_7) in
                      (fun _lh_dummy_3_6 -> 
                        ((mappend_d2_d1_d3_d0 h_1_3_6) (concat_d0_d1_d2_d0 t_1_4_8))))))))))) in
        (fun f_1_9_4 -> 
          (let rec h_1_3_7 = (f_1_9_4 h_1_3_0) in
            (let rec t_1_4_9 = ((map_d5_d1_d3_d0 f_1_9_4) t_1_4_2) in
              (fun f_1_9_5 -> 
                (let rec h_1_3_8 = (f_1_9_5 h_1_3_7) in
                  (let rec t_1_5_0 = ((map_d6_d1_d2_d0 f_1_9_5) t_1_4_9) in
                    (fun _lh_dummy_3_7 -> 
                      ((mappend_d2_d1_d4_d0 h_1_3_8) (concat_d0_d1_d3_d0 t_1_5_0))))))))))) in
      (let rec h_1_3_9 = (f_1_9_6 h_1_2_9) in
        (let rec t_1_5_1 = ((map_d5_d1_d4_d0 f_1_9_6) t_1_4_1) in
          (let rec h_1_4_0 = (f_1_9_7 h_1_3_9) in
            (let rec t_1_5_2 = ((map_d6_d1_d3_d0 f_1_9_7) t_1_5_1) in
              ((mappend_d2_d1_d5_d0 h_1_4_0) (concat_d0_d1_d4_d0 t_1_5_2))))))))
and keys_d1_d0_d0_d0 _lh_keys_arg1_1_1 _lh_dummy_4_3 =
  (let rec t_1_5_8 = (let rec t_1_5_9 = (let rec t_1_6_0 = (let rec t_1_6_1 = (fun _lh_dummy_3_9 -> 
    0) in
    (fun _lh_dummy_4_0 -> 
      (1 + (length_d2_d0_d0_d0 t_1_6_1)))) in
    (fun _lh_dummy_4_1 -> 
      (1 + (length_d2_d0_d1_d0 t_1_6_0)))) in
    (fun _lh_dummy_4_2 -> 
      (1 + (length_d2_d0_d2_d0 t_1_5_9)))) in
    (1 + (length_d2_d0_d3_d0 t_1_5_8)))
and keys_d1_d1_d0_d0 _lh_keys_arg1_9 _lh_dummy_3_3 =
  (let rec t_1_3_1 = (let rec t_1_3_2 = (let rec t_1_3_3 = (let rec t_1_3_4 = (fun _lh_dummy_2_9 -> 
    0) in
    (fun _lh_dummy_3_0 -> 
      (1 + (length_d2_d1_d0_d0 t_1_3_4)))) in
    (fun _lh_dummy_3_1 -> 
      (1 + (length_d2_d1_d1_d0 t_1_3_3)))) in
    (fun _lh_dummy_3_2 -> 
      (1 + (length_d2_d1_d2_d0 t_1_3_2)))) in
    (1 + (length_d2_d1_d3_d0 t_1_3_1)))
and keys_d2_d0_d0_d0 _lh_keys_arg1_8 ys_7_4 f_1_6_2 =
  (let rec h_1_0_8 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
    (let rec t_1_1_6 = (let rec h_1_0_9 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (let rec t_1_1_7 = (let rec h_1_1_0 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
        (let rec t_1_1_8 = (let rec h_1_1_1 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
          (let rec t_1_1_9 = (fun ys_7_0 -> 
            ys_7_0) in
            (fun ys_7_1 -> 
              (let rec h_1_1_2 = h_1_1_1 in
                (let rec t_1_2_0 = ((mappend_d4_d0_d1_d0 t_1_1_9) ys_7_1) in
                  (fun f_1_5_9 -> 
                    (`LH_C((f_1_5_9 h_1_1_2), ((map_d0_d0_d2_d0 f_1_5_9) t_1_2_0))))))))) in
          (fun ys_7_2 -> 
            (let rec h_1_1_3 = h_1_1_0 in
              (let rec t_1_2_1 = ((mappend_d4_d0_d2_d0 t_1_1_8) ys_7_2) in
                (fun f_1_6_0 -> 
                  (`LH_C((f_1_6_0 h_1_1_3), ((map_d0_d0_d3_d0 f_1_6_0) t_1_2_1))))))))) in
        (fun ys_7_3 -> 
          (let rec h_1_1_4 = h_1_0_9 in
            (let rec t_1_2_2 = ((mappend_d4_d0_d3_d0 t_1_1_7) ys_7_3) in
              (fun f_1_6_1 -> 
                (`LH_C((f_1_6_1 h_1_1_4), ((map_d0_d0_d4_d0 f_1_6_1) t_1_2_2))))))))) in
      (let rec h_1_1_5 = h_1_0_8 in
        (let rec t_1_2_3 = ((mappend_d4_d0_d0_d0 t_1_1_6) ys_7_4) in
          (`LH_C((f_1_6_2 h_1_1_5), ((map_d0_d0_d1_d0 f_1_6_2) t_1_2_3)))))))
and keys_d3_d0_d0_d0 _lh_keys_arg1_7 n_1_5 f_1_5_3 =
  (let rec h_9_9 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
    (let rec t_1_0_7 = (let rec h_1_0_0 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (let rec t_1_0_8 = (let rec h_1_0_1 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
        (let rec t_1_0_9 = (let rec h_1_0_2 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
          (let rec t_1_1_0 = (fun n_1_1 f_1_4_9 -> 
            (`LH_N)) in
            (fun n_1_2 -> 
              (let rec h_1_0_3 = h_1_0_2 in
                (let rec t_1_1_1 = ((take_d0_d0_d0_d0 (n_1_2 - 1)) t_1_1_0) in
                  (fun f_1_5_0 -> 
                    (`LH_C((f_1_5_0 h_1_0_3), ((map_d0_d0_d5_d0 f_1_5_0) t_1_1_1))))))))) in
          (fun n_1_3 -> 
            (let rec h_1_0_4 = h_1_0_1 in
              (let rec t_1_1_2 = ((take_d0_d0_d1_d0 (n_1_3 - 1)) t_1_0_9) in
                (fun f_1_5_1 -> 
                  (`LH_C((f_1_5_1 h_1_0_4), ((map_d0_d0_d6_d0 f_1_5_1) t_1_1_2))))))))) in
        (fun n_1_4 -> 
          (let rec h_1_0_5 = h_1_0_0 in
            (let rec t_1_1_3 = ((take_d0_d0_d2_d0 (n_1_4 - 1)) t_1_0_8) in
              (fun f_1_5_2 -> 
                (`LH_C((f_1_5_2 h_1_0_5), ((map_d0_d0_d7_d0 f_1_5_2) t_1_1_3))))))))) in
      (let rec h_1_0_6 = h_9_9 in
        (let rec t_1_1_4 = ((take_d0_d0_d3_d0 (n_1_5 - 1)) t_1_0_7) in
          (`LH_C((f_1_5_3 h_1_0_6), ((map_d0_d0_d8_d0 f_1_5_3) t_1_1_4)))))))
and maxm_d0_d0_d0_d0 _lh_maxm_arg1_3 _lh_maxm_arg2_4 =
  (match _lh_maxm_arg1_3 with
    | `Nothing -> 
      (Obj.magic 99)
    | `Just(_lh_maxm_Just_0_1) -> 
      ((max_d0_d0_d0_d0 _lh_maxm_Just_0_1) _lh_maxm_arg2_4)
    | _ -> 
      (Obj.magic 99))
and minm_d0_d0_d0_d0 _lh_minm_arg1_3 _lh_minm_arg2_4 =
  (match _lh_minm_arg1_3 with
    | `Nothing -> 
      (Obj.magic 99)
    | `Just(_lh_minm_Just_0_1) -> 
      ((min_d0_d0_d0_d0 _lh_minm_Just_0_1) _lh_minm_arg2_4)
    | _ -> 
      (Obj.magic 99))
and partition'_d0_d0_d0_d0 _lh_partition'_arg1_1 =
  ((foldr_d0_d0_d0_d0 (select_d0_d0_d0_d0 _lh_partition'_arg1_1)) (`LH_P2((fun ys_9_1 -> 
    ys_9_1), (`LH_N))))
and prog_d0_d0_d0_d0 _lh_prog_arg1_1 =
  (cichelli_d0_d0_d0_d0 _lh_prog_arg1_1)
and select_d0_d0_d0_d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((let rec h_1_4_6 = _lh_select_arg2_1 in
          (let rec t_1_6_2 = _lh_select_LH_P2_0_1 in
            (fun ys_1_0_9 -> 
              (`LH_C(h_1_4_6, ((mappend_d0_d0_d2_d0 t_1_6_2) ys_1_0_9)))))), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (Obj.magic 99))
and subset_d0_d0_d0_d0 _lh_subset_arg1_1 _lh_subset_arg2_1 =
  ((all_d0_d0_d2_d0 (fun x_3 -> 
    ((member_d0_d0_d0_d0 x_3) _lh_subset_arg2_1))) _lh_subset_arg1_1)
and testCichelli_nofib_d0_d0_d0_d0 _lh_testCichelli_nofib_arg1_1 =
  (prog_d0_d0_d0_d0 _lh_testCichelli_nofib_arg1_1)
and union_d0_d0_d0_d0 _lh_union_arg1_4 _lh_union_arg2_1 =
  ((mappend_d1_d0_d0_d0 _lh_union_arg1_4) (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_6 -> 
    ((_lh_listcomp_fun_para_6 _lh_listcomp_fun_2_9) _lh_union_arg1_4)) in
    (_lh_listcomp_fun_2_9 _lh_union_arg2_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Cichelli_nofib" (fun () -> ignore ((testCichelli_nofib_d0 6)));
  Bench.Test.create ~name:"lumberhack_Cichelli_nofib" (fun () -> ignore ((testCichelli_nofib_d0_d0_d0 6)));
  Bench.Test.create ~name:"lumberhack_pop_out_Cichelli_nofib" (fun () -> ignore ((testCichelli_nofib_d0_d0_d0_d0 6)));
])
