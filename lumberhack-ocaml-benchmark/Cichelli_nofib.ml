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
let rec all__d0 _lh_all_arg1_1 _lh_all_arg2_1 =
  (match _lh_all_arg2_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_1, _lh_all_LH_C_1_1) -> 
      (if (_lh_all_arg1_1 _lh_all_LH_C_0_1) then
        ((all__d0 _lh_all_arg1_1) _lh_all_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec assoc__d0 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (match _lh_assoc_arg2_2 with
    | `LH_C(_lh_assoc_LH_C_0_2, _lh_assoc_LH_C_1_2) -> 
      (match _lh_assoc_LH_C_0_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          (if (_lh_assoc_arg1_2 = _lh_assoc_LH_P2_0_2) then
            _lh_assoc_LH_P2_1_2
          else
            ((assoc__d0 _lh_assoc_arg1_2) _lh_assoc_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc__d1 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d0 _lh_assocm_arg1_2 _lh_assocm_arg2_2 =
  (match _lh_assocm_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_2, _lh_assocm_LH_C_1_2) -> 
      (match _lh_assocm_LH_C_0_2 with
        | `LH_P2(_lh_assocm_LH_P2_0_2, _lh_assocm_LH_P2_1_2) -> 
          (if (_lh_assocm_arg1_2 = _lh_assocm_LH_P2_0_2) then
            (`Just(_lh_assocm_LH_P2_1_2))
          else
            ((assocm__d0 _lh_assocm_arg1_2) _lh_assocm_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (`Just(_lh_assocm_LH_P2_1_1))
          else
            ((assocm__d1 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ends__d0 _lh_ends_arg1_1 =
  (match _lh_ends_arg1_1 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_1) -> 
      (`LH_C(_lh_ends_K_1_1, (`LH_C(_lh_ends_K_2_1, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec ends__d1 _lh_ends_arg1_3 =
  (match _lh_ends_arg1_3 with
    | `K(_lh_ends_K_0_3, _lh_ends_K_1_3, _lh_ends_K_2_3, _lh_ends_K_3_3) -> 
      (`LH_C(_lh_ends_K_1_3, (`LH_C(_lh_ends_K_2_3, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec ends__d2 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_2, _lh_ends_K_1_2, _lh_ends_K_2_2, _lh_ends_K_3_2) -> 
      (`LH_C(_lh_ends_K_1_2, (`LH_C(_lh_ends_K_2_2, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_8 b_5 =
  (if (a_8 <= b_5) then
    (`LH_C(a_8, ((enumFromTo__d0 (a_8 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d1 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo__d2 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_9 b_6 =
  (if (a_9 <= b_6) then
    (`LH_C(a_9, ((enumFromTo__d3 (a_9 + 1)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo__d4 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d4 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec first__d0 _lh_first_arg1_4 _lh_first_arg2_4 =
  (match _lh_first_arg2_4 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_4))
    | `LH_C(_lh_first_LH_C_0_4, _lh_first_LH_C_1_4) -> 
      (let rec _lh_matchIdent_1_2 = _lh_first_LH_C_0_4 in
        (match _lh_matchIdent_1_2 with
          | `YesIts(_lh_first_YesIts_0_4, _lh_first_YesIts_1_4) -> 
            (`YesIts((_lh_first_arg1_4 + _lh_first_YesIts_0_4), _lh_first_YesIts_1_4))
          | `NotEver(_lh_first_NotEver_0_4) -> 
            ((first__d0 (_lh_first_arg1_4 + _lh_first_NotEver_0_4)) _lh_first_LH_C_1_4)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first__d1 _lh_first_arg1_1 _lh_first_arg2_1 =
  (match _lh_first_arg2_1 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_1))
    | `LH_C(_lh_first_LH_C_0_1, _lh_first_LH_C_1_1) -> 
      (let rec _lh_matchIdent_8 = _lh_first_LH_C_0_1 in
        (match _lh_matchIdent_8 with
          | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
            (`YesIts((_lh_first_arg1_1 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
          | `NotEver(_lh_first_NotEver_0_1) -> 
            ((first__d1 (_lh_first_arg1_1 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first__d2 _lh_first_arg1_3 _lh_first_arg2_3 =
  (match _lh_first_arg2_3 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_3))
    | `LH_C(_lh_first_LH_C_0_3, _lh_first_LH_C_1_3) -> 
      (let rec _lh_matchIdent_1_1 = _lh_first_LH_C_0_3 in
        (match _lh_matchIdent_1_1 with
          | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
            (`YesIts((_lh_first_arg1_3 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
          | `NotEver(_lh_first_NotEver_0_3) -> 
            ((first__d2 (_lh_first_arg1_3 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first__d3 _lh_first_arg1_2 _lh_first_arg2_2 =
  (match _lh_first_arg2_2 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_2))
    | `LH_C(_lh_first_LH_C_0_2, _lh_first_LH_C_1_2) -> 
      (let rec _lh_matchIdent_1_0 = _lh_first_LH_C_0_2 in
        (match _lh_matchIdent_1_0 with
          | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
            (`YesIts((_lh_first_arg1_2 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
          | `NotEver(_lh_first_NotEver_0_2) -> 
            ((first__d3 (_lh_first_arg1_2 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1_5 i_3 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((f_1_5 h_2_6) (((foldr__d0 f_1_5) i_3) t_2_8))
    | `LH_N -> 
      i_3);;
let rec foldr__d1 f_1_9 i_4 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_3, t_3_5) -> 
      ((f_1_9 h_3_3) (((foldr__d1 f_1_9) i_4) t_3_5))
    | `LH_N -> 
      i_4);;
let rec freqsorted__d0 _lh_freqsorted_arg1_1 =
  _lh_freqsorted_arg1_1;;
let rec head__d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_4, t_3_6) -> 
      h_3_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      h_2_0
    | `LH_N -> 
      (failwith "error"));;
let rec histins__d0 _lh_histins_arg1_1 _lh_histins_arg2_1 =
  (match _lh_histins_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_1, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_1, _lh_histins_LH_C_1_1) -> 
      (match _lh_histins_LH_C_0_1 with
        | `LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1) -> 
          (if (_lh_histins_arg1_1 = _lh_histins_LH_P2_0_1) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, (_lh_histins_LH_P2_1_1 + 1))), _lh_histins_LH_C_1_1))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1)), ((histins__d0 _lh_histins_arg1_1) _lh_histins_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec keys__d0 _lh_keys_arg1_3 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys__d1 _lh_keys_arg1_1 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys__d2 _lh_keys_arg1_2 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys__d3 _lh_keys_arg1_4 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec last__d0 _lh_last_arg1_2 =
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
let rec last__d1 _lh_last_arg1_1 =
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
let rec length__d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d0 t_2_9))
    | `LH_N -> 
      0);;
let rec length__d1 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_3_8, t_4_0) -> 
      (1 + (length__d1 t_4_0))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_1, t_3_3) -> 
      (1 + (length__d2 t_3_3))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (1 + (length__d3 t_2_6))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_3 h_2_2), ((map__d0 f_1_3) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_8 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C((f_1_8 h_3_2), ((map__d1 f_1_8) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_7 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_7 h_2_9), ((map__d2 f_1_7) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_2 h_2_1), ((map__d3 f_1_2) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C((f_1_4 h_2_3), ((map__d4 f_1_4) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_2_0 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C((f_2_0 h_3_5), ((map__d5 f_2_0) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_1_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C((f_1_6 h_2_8), ((map__d6 f_1_6) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d0 t_2_7) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d1 t_3_2) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d2 t_3_9) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d3 t_4_3) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d4 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C(h_3_6, ((mappend__d4 t_3_8) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec max__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec member__d0 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member__d0 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec member__d1 _lh_member_arg1_3 _lh_member_arg2_3 =
  (match _lh_member_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_3, _lh_member_LH_C_1_3) -> 
      ((_lh_member_arg1_3 = _lh_member_LH_C_0_3) || ((member__d1 _lh_member_arg1_3) _lh_member_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec member__d2 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member__d2 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec min__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec select__d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_0_1)), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"));;
let rec take__d0 n_6 ls_3_4 =
  (if (n_6 > 0) then
    (match ls_3_4 with
      | `LH_C(h_4_0, t_4_2) -> 
        (`LH_C(h_4_0, ((take__d0 (n_6 - 1)) t_4_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec attribkeys__d0 _lh_attribkeys_arg1_2 =
  ((map__d0 (fun k_2 -> 
    (`K(k_2, (head__d0 k_2), (last__d0 k_2), (length__d0 k_2))))) _lh_attribkeys_arg1_2)
and attribkeys__d1 _lh_attribkeys_arg1_1 =
  ((map__d5 (fun k_1 -> 
    (`K(k_1, (head__d1 k_1), (last__d1 k_1), (length__d1 k_1))))) _lh_attribkeys_arg1_1)
and blocked'__d0 _lh_blocked'_arg1_1 _lh_blocked'_arg2_1 =
  (match _lh_blocked'_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_C_1_1) -> 
      (let rec ds'_1 = ((union__d0 _lh_blocked'_arg1_1) (ends__d0 _lh_blocked'_LH_C_0_1)) in
        (let rec _lh_matchIdent_9 = ((partition'__d0 (fun x_4 -> 
          ((subset__d0 (ends__d1 x_4)) ds'_1))) _lh_blocked'_LH_C_1_1) in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_blocked'_LH_P2_0_1, _lh_blocked'_LH_P2_1_1) -> 
              ((mappend__d0 (`LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_P2_0_1))) ((blocked'__d0 ds'_1) _lh_blocked'_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and blocked__d0 _lh_blocked_arg1_1 =
  ((blocked'__d0 (`LH_N)) _lh_blocked_arg1_1)
and cichelli__d0 _lh_cichelli_arg1_1 =
  (let rec attribkeys'_1 = (attribkeys__d0 ((mappend__d4 (keys__d2 0)) ((take__d0 (_lh_cichelli_arg1_1 mod 2)) (keys__d3 0)))) in
    (let rec hashkeys_1 = ((fun _lh_funcomp_x_1 -> 
      (blocked__d0 (freqsorted__d0 _lh_funcomp_x_1))) attribkeys'_1) in
      (findhash__d0 hashkeys_1)))
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_9, t_4_1) -> 
      ((mappend__d2 h_3_9) (concat__d0 t_4_1))
    | `LH_N -> 
      (`LH_N))
and findhash'__d0 _lh_findhash'_arg1_1 _lh_findhash'_arg2_1 _lh_findhash'_arg3_1 =
  (match _lh_findhash'_arg3_1 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_1))
    | `LH_C(_lh_findhash'_LH_C_0_1, _lh_findhash'_LH_C_1_1) -> 
      (match _lh_findhash'_LH_C_0_1 with
        | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_1, _lh_findhash'_K_2_1, _lh_findhash'_K_3_1) -> 
          (let rec try_1 = (fun newAssocs_1 -> 
            (let rec newCharAssocs_1 = ((mappend__d3 newAssocs_1) _lh_findhash'_arg2_1) in
              (let rec _lh_matchIdent_5 = ((hinsert__d0 ((hash__d0 newCharAssocs_1) (`K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_1, _lh_findhash'_K_2_1, _lh_findhash'_K_3_1)))) _lh_findhash'_arg1_1) in
                (match _lh_matchIdent_5 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_4) -> 
                    (((findhash'__d0 _lh_findhash'_Just_0_4) newCharAssocs_1) _lh_findhash'_LH_C_1_1)
                  | _ -> 
                    (failwith "error"))))) in
            (let rec maxval_1 = (length__d3 (freqtab__d0 0)) in
              (let rec _lh_matchIdent_6 = (`LH_P2(((assocm__d0 _lh_findhash'_K_1_1) _lh_findhash'_arg2_1), ((assocm__d1 _lh_findhash'_K_2_1) _lh_findhash'_arg2_1))) in
                (match _lh_matchIdent_6 with
                  | `LH_P2(_lh_findhash'_LH_P2_0_2, _lh_findhash'_LH_P2_1_2) -> 
                    (match _lh_findhash'_LH_P2_0_2 with
                      | `Nothing -> 
                        (match _lh_findhash'_LH_P2_1_2 with
                          | `Nothing -> 
                            (if (_lh_findhash'_K_1_1 = _lh_findhash'_K_2_1) then
                              ((firstSuccess__d2 (fun m_2 -> 
                                (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_1_1, m_2)), (`LH_N)))))) ((enumFromTo__d2 0) maxval_1))
                            else
                              ((firstSuccess__d3 (fun mn_1 -> 
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
                                      (_lh_listcomp_fun_4 ((enumFromTo__d4 0) maxval_1)))
                                  | `LH_N -> 
                                    (`LH_N))) in
                                (_lh_listcomp_fun_3 ((enumFromTo__d3 0) maxval_1)))))
                          | `Just(_lh_findhash'_Just_0_5) -> 
                            ((firstSuccess__d0 (fun m_3 -> 
                              (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_1_1, m_3)), (`LH_N)))))) ((enumFromTo__d0 0) maxval_1))
                          | _ -> 
                            (failwith "error"))
                      | `Just(_lh_findhash'_Just_0_6) -> 
                        (match _lh_findhash'_LH_P2_1_2 with
                          | `Nothing -> 
                            ((firstSuccess__d1 (fun n_5 -> 
                              (try_1 (`LH_C((`LH_P2(_lh_findhash'_K_2_1, n_5)), (`LH_N)))))) ((enumFromTo__d1 0) maxval_1))
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
and findhash__d0 _lh_findhash_arg1_1 =
  (((findhash'__d0 (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_1)
and firstSuccess__d0 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first__d0 0) ((map__d1 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess__d1 _lh_firstSuccess_arg1_4 _lh_firstSuccess_arg2_4 =
  ((first__d1 0) ((map__d2 _lh_firstSuccess_arg1_4) _lh_firstSuccess_arg2_4))
and firstSuccess__d2 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first__d2 0) ((map__d3 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess__d3 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first__d3 0) ((map__d4 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and freqtab__d0 _lh_freqtab_arg1_1 =
  (histo__d0 (concat__d0 ((map__d6 ends__d2) (attribkeys__d1 (keys__d0 0)))))
and hash__d0 _lh_hash_arg1_1 _lh_hash_arg2_1 =
  (match _lh_hash_arg2_1 with
    | `K(_lh_hash_K_0_1, _lh_hash_K_1_1, _lh_hash_K_2_1, _lh_hash_K_3_1) -> 
      ((_lh_hash_K_3_1 + ((assoc__d0 _lh_hash_K_1_1) _lh_hash_arg1_1)) + ((assoc__d1 _lh_hash_K_2_1) _lh_hash_arg1_1))
    | _ -> 
      (failwith "error"))
and hinsert__d0 _lh_hinsert_arg1_1 _lh_hinsert_arg2_1 =
  (match _lh_hinsert_arg2_1 with
    | `H(_lh_hinsert_H_0_1, _lh_hinsert_H_1_1, _lh_hinsert_H_2_1) -> 
      (let rec lo'_1 = ((minm__d0 _lh_hinsert_H_0_1) _lh_hinsert_arg1_1) in
        (let rec hi'_1 = ((maxm__d0 _lh_hinsert_H_1_1) _lh_hinsert_arg1_1) in
          (if (((member__d2 _lh_hinsert_arg1_1) _lh_hinsert_H_2_1) || (((1 + hi'_1) - lo'_1) > (length__d2 (keys__d1 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_1)), (`Just(hi'_1)), (`LH_C(_lh_hinsert_arg1_1, _lh_hinsert_H_2_1)))))))))
    | _ -> 
      (failwith "error"))
and histo__d0 _lh_histo_arg1_1 =
  (((foldr__d1 histins__d0) (`LH_N)) _lh_histo_arg1_1)
and maxm__d0 _lh_maxm_arg1_1 _lh_maxm_arg2_1 =
  (match _lh_maxm_arg1_1 with
    | `Nothing -> 
      _lh_maxm_arg2_1
    | `Just(_lh_maxm_Just_0_1) -> 
      ((max__d0 _lh_maxm_Just_0_1) _lh_maxm_arg2_1)
    | _ -> 
      (failwith "error"))
and minm__d0 _lh_minm_arg1_1 _lh_minm_arg2_1 =
  (match _lh_minm_arg1_1 with
    | `Nothing -> 
      _lh_minm_arg2_1
    | `Just(_lh_minm_Just_0_1) -> 
      ((min__d0 _lh_minm_Just_0_1) _lh_minm_arg2_1)
    | _ -> 
      (failwith "error"))
and partition'__d0 _lh_partition'_arg1_1 =
  ((foldr__d0 (select__d0 _lh_partition'_arg1_1)) (`LH_P2((`LH_N), (`LH_N))))
and prog__d0 _lh_prog_arg1_1 =
  (cichelli__d0 _lh_prog_arg1_1)
and subset__d0 _lh_subset_arg1_1 _lh_subset_arg2_1 =
  ((all__d0 (fun x_5 -> 
    ((member__d0 x_5) _lh_subset_arg2_1))) _lh_subset_arg1_1)
and testCichelli_nofib__d0 _lh_testCichelli_nofib_arg1_1 =
  (prog__d0 _lh_testCichelli_nofib_arg1_1)
and union__d0 _lh_union_arg1_1 _lh_union_arg2_1 =
  ((mappend__d1 _lh_union_arg1_1) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (if (not ((member__d1 _lh_listcomp_fun_ls_h_5) _lh_union_arg1_1)) then
          (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
        else
          (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 _lh_union_arg2_1)));;

(* lumberhack *)
let rec all__d0__d0 _lh_all_arg1_0 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_0);;
let rec assoc__d0__d0 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (match _lh_assoc_arg2_0 with
    | `LH_C(_lh_assoc_LH_C_0_0, _lh_assoc_LH_C_1_0) -> 
      (match _lh_assoc_LH_C_0_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          (if (_lh_assoc_arg1_0 = _lh_assoc_LH_P2_0_0) then
            _lh_assoc_LH_P2_1_0
          else
            ((assoc__d0__d0 _lh_assoc_arg1_0) _lh_assoc_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d0__d1 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (match _lh_assoc_arg2_2 with
    | `LH_C(_lh_assoc_LH_C_0_2, _lh_assoc_LH_C_1_2) -> 
      (match _lh_assoc_LH_C_0_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          (if (_lh_assoc_arg1_2 = _lh_assoc_LH_P2_0_2) then
            _lh_assoc_LH_P2_1_2
          else
            ((assoc__d0__d1 _lh_assoc_arg1_2) _lh_assoc_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1__d0 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (match _lh_assoc_arg2_3 with
    | `LH_C(_lh_assoc_LH_C_0_3, _lh_assoc_LH_C_1_3) -> 
      (match _lh_assoc_LH_C_0_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          (if (_lh_assoc_arg1_3 = _lh_assoc_LH_P2_0_3) then
            _lh_assoc_LH_P2_1_3
          else
            ((assoc__d1__d0 _lh_assoc_arg1_3) _lh_assoc_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1__d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc__d1__d1 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1__d0 _lh_assocm_arg1_2 _lh_assocm_arg2_2 =
  (match _lh_assocm_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_2, _lh_assocm_LH_C_1_2) -> 
      (match _lh_assocm_LH_C_0_2 with
        | `LH_P2(_lh_assocm_LH_P2_0_2, _lh_assocm_LH_P2_1_2) -> 
          (if (_lh_assocm_arg1_2 = _lh_assocm_LH_P2_0_2) then
            (`Just(_lh_assocm_LH_P2_1_2))
          else
            ((assocm__d1__d0 _lh_assocm_arg1_2) _lh_assocm_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1__d1 _lh_assocm_arg1_3 _lh_assocm_arg2_3 =
  (match _lh_assocm_arg2_3 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_3, _lh_assocm_LH_C_1_3) -> 
      (match _lh_assocm_LH_C_0_3 with
        | `LH_P2(_lh_assocm_LH_P2_0_3, _lh_assocm_LH_P2_1_3) -> 
          (if (_lh_assocm_arg1_3 = _lh_assocm_LH_P2_0_3) then
            (`Just(_lh_assocm_LH_P2_1_3))
          else
            ((assocm__d1__d1 _lh_assocm_arg1_3) _lh_assocm_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat__d0__d0 lss_1 =
  (lss_1 99);;
let rec concat__d0__d1 lss_0 =
  (lss_0 99);;
let rec ends__d2__d0 _lh_ends_arg1_1 =
  _lh_ends_arg1_1;;
let rec ends__d2__d1 _lh_ends_arg1_0 =
  _lh_ends_arg1_0;;
let rec first__d0__d0 _lh_first_arg1_2_3 _lh_first_arg2_7 =
  (_lh_first_arg2_7 _lh_first_arg1_2_3);;
let rec first__d0__d1 _lh_first_arg1_9 _lh_first_arg2_4 =
  (_lh_first_arg2_4 _lh_first_arg1_9);;
let rec first__d1__d0 _lh_first_arg1_3 _lh_first_arg2_2 =
  (_lh_first_arg2_2 _lh_first_arg1_3);;
let rec first__d1__d1 _lh_first_arg1_2_2 _lh_first_arg2_6 =
  (_lh_first_arg2_6 _lh_first_arg1_2_2);;
let rec first__d2__d0 _lh_first_arg1_0 _lh_first_arg2_0 =
  (_lh_first_arg2_0 _lh_first_arg1_0);;
let rec first__d2__d1 _lh_first_arg1_1_9 _lh_first_arg2_5 =
  (_lh_first_arg2_5 _lh_first_arg1_1_9);;
let rec first__d3__d0 _lh_first_arg1_1 _lh_first_arg2_1 =
  (_lh_first_arg2_1 _lh_first_arg1_1);;
let rec first__d3__d1 _lh_first_arg1_4 _lh_first_arg2_3 =
  (_lh_first_arg2_3 _lh_first_arg1_4);;
let rec foldr__d0__d0 f_6_2 i_6 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_6_1, t_6_9) -> 
      ((f_6_2 h_6_1) (((foldr__d0__d0 f_6_2) i_6) t_6_9))
    | `LH_N -> 
      i_6);;
let rec foldr__d1__d0 f_3_9 i_1 ls_1_6 =
  ((ls_1_6 f_3_9) i_1);;
let rec foldr__d1__d1 f_4_6 i_4 ls_1_9 =
  ((ls_1_9 f_4_6) i_4);;
let rec freqsorted__d0__d0 _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec hash__d0__d0 _lh_hash_arg1_0 _lh_hash_arg2_0 =
  (_lh_hash_arg2_0 _lh_hash_arg1_0);;
let rec hash__d0__d1 _lh_hash_arg1_1 _lh_hash_arg2_1 =
  (_lh_hash_arg2_1 _lh_hash_arg1_1);;
let rec head__d0__d0 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_4, t_1_8) -> 
      h_1_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1__d1 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_5, t_2_3) -> 
      h_1_5
    | `LH_N -> 
      (failwith "error"));;
let rec hinsert__d0__d1 _lh_hinsert_arg1_2 _lh_hinsert_arg2_1 =
  (_lh_hinsert_arg2_1 _lh_hinsert_arg1_2);;
let rec histins__d0__d0 _lh_histins_arg1_1 _lh_histins_arg2_1 =
  (match _lh_histins_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_1, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_1, _lh_histins_LH_C_1_1) -> 
      (match _lh_histins_LH_C_0_1 with
        | `LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1) -> 
          (if (_lh_histins_arg1_1 = _lh_histins_LH_P2_0_1) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, (_lh_histins_LH_P2_1_1 + 1))), _lh_histins_LH_C_1_1))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1)), ((histins__d0__d0 _lh_histins_arg1_1) _lh_histins_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec histins__d0__d1 _lh_histins_arg1_0 _lh_histins_arg2_0 =
  (match _lh_histins_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_0, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_0, _lh_histins_LH_C_1_0) -> 
      (match _lh_histins_LH_C_0_0 with
        | `LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0) -> 
          (if (_lh_histins_arg1_0 = _lh_histins_LH_P2_0_0) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, (_lh_histins_LH_P2_1_0 + 1))), _lh_histins_LH_C_1_0))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0)), ((histins__d0__d1 _lh_histins_arg1_0) _lh_histins_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec last__d0__d0 _lh_last_arg1_0 =
  (match _lh_last_arg1_0 with
    | `LH_C(_lh_last_LH_C_0_0, _lh_last_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
        (match _lh_go_arg2_0 with
          | `LH_N -> 
            _lh_go_arg1_0
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            ((go_0 _lh_go_LH_C_0_0) _lh_go_LH_C_1_0)
          | _ -> 
            (failwith "error"))) in
        ((go_0 _lh_last_LH_C_0_0) _lh_last_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec last__d1__d0 _lh_last_arg1_2 =
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
let rec last__d1__d1 _lh_last_arg1_1 =
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
let rec length__d0__d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length__d0__d0 t_3))
    | `LH_N -> 
      0);;
let rec length__d1__d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_3, t_1_7) -> 
      (1 + (length__d1__d0 t_1_7))
    | `LH_N -> 
      0);;
let rec length__d1__d1 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_4_1, t_4_9) -> 
      (1 + (length__d1__d1 t_4_9))
    | `LH_N -> 
      0);;
let rec length__d2__d0 ls_1_0 =
  (ls_1_0 99);;
let rec length__d2__d1 ls_7 =
  (ls_7 99);;
let rec length__d3__d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_6_8, t_7_6) -> 
      (1 + (length__d3__d0 t_7_6))
    | `LH_N -> 
      0);;
let rec length__d3__d1 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_6_9, t_7_7) -> 
      (1 + (length__d3__d1 t_7_7))
    | `LH_N -> 
      0);;
let rec map__d0__d0 f_3_4 ls_1_2 =
  (ls_1_2 f_3_4);;
let rec map__d1__d0 f_0 ls_1 =
  (ls_1 f_0);;
let rec map__d1__d1 f_4_3 ls_1_8 =
  (ls_1_8 f_4_3);;
let rec map__d2__d0 f_3_1 ls_1_1 =
  (ls_1_1 f_3_1);;
let rec map__d2__d1 f_1 ls_2 =
  (ls_2 f_1);;
let rec map__d3__d0 f_1_4 ls_8 =
  (ls_8 f_1_4);;
let rec map__d3__d1 f_4_0 ls_1_7 =
  (ls_1_7 f_4_0);;
let rec map__d4__d0 f_6_7 ls_2_4 =
  (ls_2_4 f_6_7);;
let rec map__d4__d1 f_3_7 ls_1_3 =
  (ls_1_3 f_3_7);;
let rec map__d5__d0 f_6_3 ls_2_3 =
  (ls_2_3 f_6_3);;
let rec map__d5__d1 f_3_8 ls_1_4 =
  (ls_1_4 f_3_8);;
let rec map__d6__d0 f_4_8 ls_2_0 =
  (ls_2_0 f_4_8);;
let rec map__d6__d1 f_4_9 ls_2_1 =
  (ls_2_1 f_4_9);;
let rec mappend__d0__d0 xs_2 ys_8 =
  (xs_2 ys_8);;
let rec mappend__d1__d0 xs_6 ys_1_5 =
  (match xs_6 with
    | `LH_C(h_4_8, t_5_6) -> 
      (`LH_C(h_4_8, ((mappend__d1__d0 t_5_6) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d2__d0 xs_4 ys_1_3 =
  (xs_4 ys_1_3);;
let rec mappend__d2__d1 xs_3 ys_9 =
  (xs_3 ys_9);;
let rec mappend__d3__d0 xs_0 ys_1 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend__d3__d0 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend__d3__d1 xs_5 ys_1_4 =
  (match xs_5 with
    | `LH_C(h_4_7, t_5_5) -> 
      (`LH_C(h_4_7, ((mappend__d3__d1 t_5_5) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d4__d0 xs_1 ys_7 =
  (xs_1 ys_7);;
let rec max__d0__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec max__d0__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec maxm__d0__d1 _lh_maxm_arg1_0 _lh_maxm_arg2_1 =
  (_lh_maxm_arg1_0 _lh_maxm_arg2_1);;
let rec member__d0__d0 _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member__d0__d0 _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec member__d1__d0 _lh_member_arg1_3 _lh_member_arg2_3 =
  (match _lh_member_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_3, _lh_member_LH_C_1_3) -> 
      ((_lh_member_arg1_3 = _lh_member_LH_C_0_3) || ((member__d1__d0 _lh_member_arg1_3) _lh_member_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec member__d2__d0 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member__d2__d0 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec member__d2__d1 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member__d2__d1 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec min__d0__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec min__d0__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec minm__d0__d1 _lh_minm_arg1_1 _lh_minm_arg2_2 =
  (_lh_minm_arg1_1 _lh_minm_arg2_2);;
let rec take__d0__d0 n_5 ls_9 =
  (if (n_5 > 0) then
    (ls_9 n_5)
  else
    (fun f_1_5 -> 
      (`LH_N)));;
let rec assocm__d0__d0 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_5 _lh_findhash'_K_2_5 _lh_findhash'_LH_P2_1_4 maxval_4 try_5 -> 
        (match _lh_findhash'_LH_P2_1_4 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_5 = _lh_findhash'_K_2_5) then
              ((firstSuccess__d2__d1 (fun m_2 -> 
                (try_5 (`LH_C((`LH_P2(_lh_findhash'_K_1_5, m_2)), (`LH_N)))))) ((enumFromTo__d2__d0 0) maxval_4))
            else
              ((firstSuccess__d3__d1 (fun mn_1 -> 
                (let rec _lh_matchIdent_8 = mn_1 in
                  (((_lh_matchIdent_8 _lh_findhash'_K_1_5) _lh_findhash'_K_2_5) try_5)))) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_5) maxval_4)) in
                (_lh_listcomp_fun_5 ((enumFromTo__d3__d0 0) maxval_4)))))
          | `Just(_lh_findhash'_Just_0_3) -> 
            ((firstSuccess__d0__d1 (fun m_3 -> 
              (try_5 (`LH_C((`LH_P2(_lh_findhash'_K_1_5, m_3)), (`LH_N)))))) ((enumFromTo__d0__d0 0) maxval_4))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (fun _lh_findhash'_K_1_6 _lh_findhash'_K_2_6 _lh_findhash'_LH_P2_1_5 maxval_5 try_6 -> 
              (match _lh_findhash'_LH_P2_1_5 with
                | `Nothing -> 
                  ((firstSuccess__d1__d1 (fun n_7 -> 
                    (try_6 (`LH_C((`LH_P2(_lh_findhash'_K_2_6, n_7)), (`LH_N)))))) ((enumFromTo__d1__d0 0) maxval_5))
                | `Just(_lh_findhash'_Just_0_4) -> 
                  (try_6 (`LH_N))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0__d0 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and assocm__d0__d1 _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_3 _lh_findhash'_K_2_3 _lh_findhash'_LH_P2_1_2 maxval_2 try_3 -> 
        (match _lh_findhash'_LH_P2_1_2 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_3 = _lh_findhash'_K_2_3) then
              ((firstSuccess__d2__d0 (fun m_0 -> 
                (try_3 (`LH_C((`LH_P2(_lh_findhash'_K_1_3, m_0)), (`LH_N)))))) ((enumFromTo__d2__d1 0) maxval_2))
            else
              ((firstSuccess__d3__d0 (fun mn_0 -> 
                (let rec _lh_matchIdent_5 = mn_0 in
                  (((_lh_matchIdent_5 _lh_findhash'_K_1_3) _lh_findhash'_K_2_3) try_3)))) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
                ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_4) maxval_2)) in
                (_lh_listcomp_fun_4 ((enumFromTo__d3__d1 0) maxval_2)))))
          | `Just(_lh_findhash'_Just_0_1) -> 
            ((firstSuccess__d0__d0 (fun m_1 -> 
              (try_3 (`LH_C((`LH_P2(_lh_findhash'_K_1_3, m_1)), (`LH_N)))))) ((enumFromTo__d0__d1 0) maxval_2))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (fun _lh_findhash'_K_1_4 _lh_findhash'_K_2_4 _lh_findhash'_LH_P2_1_3 maxval_3 try_4 -> 
              (match _lh_findhash'_LH_P2_1_3 with
                | `Nothing -> 
                  ((firstSuccess__d1__d0 (fun n_6 -> 
                    (try_4 (`LH_C((`LH_P2(_lh_findhash'_K_2_4, n_6)), (`LH_N)))))) ((enumFromTo__d1__d1 0) maxval_3))
                | `Just(_lh_findhash'_Just_0_2) -> 
                  (try_4 (`LH_N))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0__d1 _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and attribkeys__d0__d0 _lh_attribkeys_arg1_2 =
  ((map__d0__d0 (fun k_2 -> 
    (`K(k_2, (head__d0__d0 k_2), (last__d0__d0 k_2), (length__d0__d0 k_2))))) _lh_attribkeys_arg1_2)
and attribkeys__d1__d0 _lh_attribkeys_arg1_1 =
  ((map__d5__d0 (fun k_1 -> 
    (let rec _lh_ends_K_2_2 = (last__d1__d0 k_1) in
      (let rec _lh_ends_K_1_2 = (head__d1__d0 k_1) in
        (let rec t_7_1 = (let rec t_7_2 = (fun ys_1_7 -> 
          ys_1_7) in
          (let rec h_6_3 = _lh_ends_K_2_2 in
            (fun ys_1_8 -> 
              (let rec t_7_3 = ((mappend__d2__d0 t_7_2) ys_1_8) in
                (let rec h_6_4 = h_6_3 in
                  (fun f_6_5 i_7 -> 
                    ((f_6_5 h_6_4) (((foldr__d1__d0 f_6_5) i_7) t_7_3)))))))) in
          (let rec h_6_5 = _lh_ends_K_1_2 in
            (fun ys_1_9 -> 
              (let rec t_7_4 = ((mappend__d2__d0 t_7_1) ys_1_9) in
                (let rec h_6_6 = h_6_5 in
                  (fun f_6_6 i_8 -> 
                    ((f_6_6 h_6_6) (((foldr__d1__d0 f_6_6) i_8) t_7_4)))))))))))) _lh_attribkeys_arg1_1)
and attribkeys__d1__d1 _lh_attribkeys_arg1_0 =
  ((map__d5__d1 (fun k_0 -> 
    (let rec _lh_ends_K_2_0 = (last__d1__d1 k_0) in
      (let rec _lh_ends_K_1_0 = (head__d1__d1 k_0) in
        (let rec t_5_0 = (let rec t_5_1 = (fun ys_1_0 -> 
          ys_1_0) in
          (let rec h_4_2 = _lh_ends_K_2_0 in
            (fun ys_1_1 -> 
              (let rec t_5_2 = ((mappend__d2__d1 t_5_1) ys_1_1) in
                (let rec h_4_3 = h_4_2 in
                  (fun f_4_1 i_2 -> 
                    ((f_4_1 h_4_3) (((foldr__d1__d1 f_4_1) i_2) t_5_2)))))))) in
          (let rec h_4_4 = _lh_ends_K_1_0 in
            (fun ys_1_2 -> 
              (let rec t_5_3 = ((mappend__d2__d1 t_5_0) ys_1_2) in
                (let rec h_4_5 = h_4_4 in
                  (fun f_4_2 i_3 -> 
                    ((f_4_2 h_4_5) (((foldr__d1__d1 f_4_2) i_3) t_5_3)))))))))))) _lh_attribkeys_arg1_0)
and blocked'__d0__d0 _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union__d0__d0 _lh_blocked'_arg1_0) (ends__d0__d0 _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_1_4 = ((partition'__d0__d0 (fun x_1 -> 
          ((subset__d0__d0 (ends__d1__d0 x_1)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_1_4 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend__d0__d0 (let rec t_7_5 = _lh_blocked'_LH_P2_0_0 in
                (let rec h_6_7 = _lh_blocked'_LH_C_0_0 in
                  (fun ys_2_0 -> 
                    (`LH_C(h_6_7, ((mappend__d0__d0 t_7_5) ys_2_0))))))) ((blocked'__d0__d0 ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and blocked__d0__d0 _lh_blocked_arg1_0 =
  ((blocked'__d0__d0 (`LH_N)) _lh_blocked_arg1_0)
and cichelli__d0__d0 _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys__d0__d0 ((mappend__d4__d0 (keys__d2__d0 0)) ((take__d0__d0 (_lh_cichelli_arg1_0 mod 2)) (keys__d3__d0 0)))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked__d0__d0 (freqsorted__d0__d0 _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash__d0__d0 hashkeys_0)))
and ends__d0__d0 _lh_ends_arg1_3 =
  (match _lh_ends_arg1_3 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_3, _lh_ends_K_2_3, _lh_ends_K_3_1) -> 
      (let rec _lh_listcomp_fun_ls_t_8 = (let rec _lh_listcomp_fun_ls_t_9 = (fun _lh_listcomp_fun_1_7 _lh_union_arg1_1 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_8 = _lh_ends_K_2_3 in
          (fun _lh_listcomp_fun_1_8 _lh_union_arg1_2 -> 
            (if (not ((member__d1__d0 _lh_listcomp_fun_ls_h_8) _lh_union_arg1_2)) then
              (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9)))
            else
              (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9))))) in
        (let rec _lh_listcomp_fun_ls_h_9 = _lh_ends_K_1_3 in
          (fun _lh_listcomp_fun_1_9 _lh_union_arg1_3 -> 
            (if (not ((member__d1__d0 _lh_listcomp_fun_ls_h_9) _lh_union_arg1_3)) then
              (`LH_C(_lh_listcomp_fun_ls_h_9, (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_8)))
            else
              (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_8)))))
    | _ -> 
      (failwith "error"))
and ends__d1__d0 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_0) -> 
      (let rec _lh_all_LH_C_1_0 = (let rec _lh_all_LH_C_1_1 = (fun _lh_all_arg1_1 -> 
        true) in
        (let rec _lh_all_LH_C_0_0 = _lh_ends_K_2_1 in
          (fun _lh_all_arg1_2 -> 
            (if (_lh_all_arg1_2 _lh_all_LH_C_0_0) then
              ((all__d0__d0 _lh_all_arg1_2) _lh_all_LH_C_1_1)
            else
              false)))) in
        (let rec _lh_all_LH_C_0_1 = _lh_ends_K_1_1 in
          (fun _lh_all_arg1_3 -> 
            (if (_lh_all_arg1_3 _lh_all_LH_C_0_1) then
              ((all__d0__d0 _lh_all_arg1_3) _lh_all_LH_C_1_0)
            else
              false))))
    | _ -> 
      (failwith "error"))
and enumFromTo__d0__d0 a_6 b_6 =
  (if (a_6 <= b_6) then
    (let rec t_5_4 = ((enumFromTo__d0__d0 (a_6 + 1)) b_6) in
      (let rec h_4_6 = a_6 in
        (fun f_4_4 -> 
          (let rec _lh_first_LH_C_1_6 = ((map__d1__d1 f_4_4) t_5_4) in
            (let rec _lh_first_LH_C_0_6 = (f_4_4 h_4_6) in
              (fun _lh_first_arg1_1_6 -> 
                (let rec _lh_matchIdent_1_2 = _lh_first_LH_C_0_6 in
                  (match _lh_matchIdent_1_2 with
                    | `YesIts(_lh_first_YesIts_0_6, _lh_first_YesIts_1_6) -> 
                      (`YesIts((_lh_first_arg1_1_6 + _lh_first_YesIts_0_6), _lh_first_YesIts_1_6))
                    | `NotEver(_lh_first_NotEver_0_6) -> 
                      ((first__d0__d1 (_lh_first_arg1_1_6 + _lh_first_NotEver_0_6)) _lh_first_LH_C_1_6)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_4_5 _lh_first_arg1_1_7 -> 
      (`NotEver(_lh_first_arg1_1_7))))
and enumFromTo__d0__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec t_3_2 = ((enumFromTo__d0__d1 (a_1 + 1)) b_1) in
      (let rec h_2_4 = a_1 in
        (fun f_1_2 -> 
          (let rec _lh_first_LH_C_1_1 = ((map__d1__d0 f_1_2) t_3_2) in
            (let rec _lh_first_LH_C_0_1 = (f_1_2 h_2_4) in
              (fun _lh_first_arg1_5 -> 
                (let rec _lh_matchIdent_1 = _lh_first_LH_C_0_1 in
                  (match _lh_matchIdent_1 with
                    | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
                      (`YesIts((_lh_first_arg1_5 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
                    | `NotEver(_lh_first_NotEver_0_1) -> 
                      ((first__d0__d0 (_lh_first_arg1_5 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_1_3 _lh_first_arg1_6 -> 
      (`NotEver(_lh_first_arg1_6))))
and enumFromTo__d1__d0 a_5 b_5 =
  (if (a_5 <= b_5) then
    (let rec t_4_8 = ((enumFromTo__d1__d0 (a_5 + 1)) b_5) in
      (let rec h_4_0 = a_5 in
        (fun f_3_5 -> 
          (let rec _lh_first_LH_C_1_5 = ((map__d2__d1 f_3_5) t_4_8) in
            (let rec _lh_first_LH_C_0_5 = (f_3_5 h_4_0) in
              (fun _lh_first_arg1_1_4 -> 
                (let rec _lh_matchIdent_1_1 = _lh_first_LH_C_0_5 in
                  (match _lh_matchIdent_1_1 with
                    | `YesIts(_lh_first_YesIts_0_5, _lh_first_YesIts_1_5) -> 
                      (`YesIts((_lh_first_arg1_1_4 + _lh_first_YesIts_0_5), _lh_first_YesIts_1_5))
                    | `NotEver(_lh_first_NotEver_0_5) -> 
                      ((first__d1__d1 (_lh_first_arg1_1_4 + _lh_first_NotEver_0_5)) _lh_first_LH_C_1_5)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_3_6 _lh_first_arg1_1_5 -> 
      (`NotEver(_lh_first_arg1_1_5))))
and enumFromTo__d1__d1 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec t_4_6 = ((enumFromTo__d1__d1 (a_3 + 1)) b_3) in
      (let rec h_3_8 = a_3 in
        (fun f_2_9 -> 
          (let rec _lh_first_LH_C_1_3 = ((map__d2__d0 f_2_9) t_4_6) in
            (let rec _lh_first_LH_C_0_3 = (f_2_9 h_3_8) in
              (fun _lh_first_arg1_1_0 -> 
                (let rec _lh_matchIdent_6 = _lh_first_LH_C_0_3 in
                  (match _lh_matchIdent_6 with
                    | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
                      (`YesIts((_lh_first_arg1_1_0 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
                    | `NotEver(_lh_first_NotEver_0_3) -> 
                      ((first__d1__d0 (_lh_first_arg1_1_0 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_3_0 _lh_first_arg1_1_1 -> 
      (`NotEver(_lh_first_arg1_1_1))))
and enumFromTo__d2__d0 a_4 b_4 =
  (if (a_4 <= b_4) then
    (let rec t_4_7 = ((enumFromTo__d2__d0 (a_4 + 1)) b_4) in
      (let rec h_3_9 = a_4 in
        (fun f_3_2 -> 
          (let rec _lh_first_LH_C_1_4 = ((map__d3__d1 f_3_2) t_4_7) in
            (let rec _lh_first_LH_C_0_4 = (f_3_2 h_3_9) in
              (fun _lh_first_arg1_1_2 -> 
                (let rec _lh_matchIdent_7 = _lh_first_LH_C_0_4 in
                  (match _lh_matchIdent_7 with
                    | `YesIts(_lh_first_YesIts_0_4, _lh_first_YesIts_1_4) -> 
                      (`YesIts((_lh_first_arg1_1_2 + _lh_first_YesIts_0_4), _lh_first_YesIts_1_4))
                    | `NotEver(_lh_first_NotEver_0_4) -> 
                      ((first__d2__d1 (_lh_first_arg1_1_2 + _lh_first_NotEver_0_4)) _lh_first_LH_C_1_4)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_3_3 _lh_first_arg1_1_3 -> 
      (`NotEver(_lh_first_arg1_1_3))))
and enumFromTo__d2__d1 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec t_3_3 = ((enumFromTo__d2__d1 (a_2 + 1)) b_2) in
      (let rec h_2_5 = a_2 in
        (fun f_1_6 -> 
          (let rec _lh_first_LH_C_1_2 = ((map__d3__d0 f_1_6) t_3_3) in
            (let rec _lh_first_LH_C_0_2 = (f_1_6 h_2_5) in
              (fun _lh_first_arg1_7 -> 
                (let rec _lh_matchIdent_4 = _lh_first_LH_C_0_2 in
                  (match _lh_matchIdent_4 with
                    | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
                      (`YesIts((_lh_first_arg1_7 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
                    | `NotEver(_lh_first_NotEver_0_2) -> 
                      ((first__d2__d0 (_lh_first_arg1_7 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_1_7 _lh_first_arg1_8 -> 
      (`NotEver(_lh_first_arg1_8))))
and enumFromTo__d3__d0 a_7 b_7 =
  (if (a_7 <= b_7) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d3__d0 (a_7 + 1)) b_7) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_7 in
        (fun _lh_listcomp_fun_6 maxval_8 -> 
          (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_2 -> 
            ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_7) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_6)) in
            (_lh_listcomp_fun_7 ((enumFromTo__d4__d0 0) maxval_8))))))
  else
    (fun _lh_listcomp_fun_8 maxval_9 f_4_7 _lh_first_arg1_1_8 -> 
      (`NotEver(_lh_first_arg1_1_8))))
and enumFromTo__d3__d1 a_8 b_8 =
  (if (a_8 <= b_8) then
    (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo__d3__d1 (a_8 + 1)) b_8) in
      (let rec _lh_listcomp_fun_ls_h_4 = a_8 in
        (fun _lh_listcomp_fun_9 maxval_1_0 -> 
          (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_3 -> 
            ((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_4) _lh_listcomp_fun_1_0) _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_9)) in
            (_lh_listcomp_fun_1_0 ((enumFromTo__d4__d1 0) maxval_1_0))))))
  else
    (fun _lh_listcomp_fun_1_1 maxval_1_1 f_5_0 _lh_first_arg1_2_0 -> 
      (`NotEver(_lh_first_arg1_2_0))))
and enumFromTo__d4__d0 a_9 b_9 =
  (if (a_9 <= b_9) then
    (let rec _lh_listcomp_fun_ls_t_5 = ((enumFromTo__d4__d0 (a_9 + 1)) b_9) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_9 in
        (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_4 -> 
          (let rec t_7_0 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_5) in
            (let rec h_6_2 = (let rec _lh_findhash'_LH_P2_1_7 = _lh_listcomp_fun_ls_h_5 in
              (let rec _lh_findhash'_LH_P2_0_3 = _lh_listcomp_fun_ls_h_6 in
                (fun _lh_findhash'_K_1_9 _lh_findhash'_K_2_9 try_9 -> 
                  (try_9 (`LH_C((`LH_P2(_lh_findhash'_K_1_9, _lh_findhash'_LH_P2_0_3)), (`LH_C((`LH_P2(_lh_findhash'_K_2_9, _lh_findhash'_LH_P2_1_7)), (`LH_N))))))))) in
              (fun f_6_4 -> 
                (let rec _lh_first_LH_C_1_7 = ((map__d4__d1 f_6_4) t_7_0) in
                  (let rec _lh_first_LH_C_0_7 = (f_6_4 h_6_2) in
                    (fun _lh_first_arg1_2_1 -> 
                      (let rec _lh_matchIdent_1_3 = _lh_first_LH_C_0_7 in
                        (match _lh_matchIdent_1_3 with
                          | `YesIts(_lh_first_YesIts_0_7, _lh_first_YesIts_1_7) -> 
                            (`YesIts((_lh_first_arg1_2_1 + _lh_first_YesIts_0_7), _lh_first_YesIts_1_7))
                          | `NotEver(_lh_first_NotEver_0_7) -> 
                            ((first__d3__d1 (_lh_first_arg1_2_1 + _lh_first_NotEver_0_7)) _lh_first_LH_C_1_7)
                          | _ -> 
                            (failwith "error"))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_1_6 -> 
      (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_7)))
and enumFromTo__d4__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d4__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (let rec t_4 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_4 = (let rec _lh_findhash'_LH_P2_1_0 = _lh_listcomp_fun_ls_h_0 in
              (let rec _lh_findhash'_LH_P2_0_0 = _lh_listcomp_fun_ls_h_1 in
                (fun _lh_findhash'_K_1_0 _lh_findhash'_K_2_0 try_0 -> 
                  (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, _lh_findhash'_LH_P2_0_0)), (`LH_C((`LH_P2(_lh_findhash'_K_2_0, _lh_findhash'_LH_P2_1_0)), (`LH_N))))))))) in
              (fun f_2 -> 
                (let rec _lh_first_LH_C_1_0 = ((map__d4__d0 f_2) t_4) in
                  (let rec _lh_first_LH_C_0_0 = (f_2 h_4) in
                    (fun _lh_first_arg1_2 -> 
                      (let rec _lh_matchIdent_0 = _lh_first_LH_C_0_0 in
                        (match _lh_matchIdent_0 with
                          | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
                            (`YesIts((_lh_first_arg1_2 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
                          | `NotEver(_lh_first_NotEver_0_0) -> 
                            ((first__d3__d0 (_lh_first_arg1_2 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
                          | _ -> 
                            (failwith "error"))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)))
and findhash'__d0__d0 _lh_findhash'_arg1_0 _lh_findhash'_arg2_0 _lh_findhash'_arg3_0 =
  (match _lh_findhash'_arg3_0 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_0))
    | `LH_C(_lh_findhash'_LH_C_0_0, _lh_findhash'_LH_C_1_2) -> 
      (match _lh_findhash'_LH_C_0_0 with
        | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_1, _lh_findhash'_K_2_1, _lh_findhash'_K_3_0) -> 
          (let rec try_1 = (fun newAssocs_0 -> 
            (let rec newCharAssocs_2 = ((mappend__d3__d1 newAssocs_0) _lh_findhash'_arg2_0) in
              (let rec _lh_matchIdent_2 = ((hinsert__d0__d1 ((hash__d0__d1 newCharAssocs_2) (let rec _lh_hash_K_3_0 = _lh_findhash'_K_3_0 in
                (let rec _lh_hash_K_2_0 = _lh_findhash'_K_2_1 in
                  (let rec _lh_hash_K_1_0 = _lh_findhash'_K_1_1 in
                    (fun _lh_hash_arg1_2 -> 
                      ((_lh_hash_K_3_0 + ((assoc__d0__d1 _lh_hash_K_1_0) _lh_hash_arg1_2)) + ((assoc__d1__d1 _lh_hash_K_2_0) _lh_hash_arg1_2)))))))) _lh_findhash'_arg1_0) in
                ((_lh_matchIdent_2 _lh_findhash'_LH_C_1_2) newCharAssocs_2)))) in
            (let rec maxval_0 = (length__d3__d1 (freqtab__d0__d1 0)) in
              (let rec _lh_matchIdent_3 = (let rec _lh_findhash'_LH_P2_1_1 = ((assocm__d1__d0 _lh_findhash'_K_2_1) _lh_findhash'_arg2_0) in
                (let rec _lh_findhash'_LH_P2_0_1 = ((assocm__d0__d0 _lh_findhash'_K_1_1) _lh_findhash'_arg2_0) in
                  (fun _lh_findhash'_K_1_2 _lh_findhash'_K_2_2 maxval_1 try_2 -> 
                    (((((_lh_findhash'_LH_P2_0_1 _lh_findhash'_K_1_2) _lh_findhash'_K_2_2) _lh_findhash'_LH_P2_1_1) maxval_1) try_2)))) in
                ((((_lh_matchIdent_3 _lh_findhash'_K_1_1) _lh_findhash'_K_2_1) maxval_0) try_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and findhash'__d0__d1 _lh_findhash'_arg1_1 _lh_findhash'_arg2_1 _lh_findhash'_arg3_1 =
  (match _lh_findhash'_arg3_1 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_1))
    | `LH_C(_lh_findhash'_LH_C_0_1, _lh_findhash'_LH_C_1_3) -> 
      (match _lh_findhash'_LH_C_0_1 with
        | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_7, _lh_findhash'_K_2_7, _lh_findhash'_K_3_1) -> 
          (let rec try_7 = (fun newAssocs_1 -> 
            (let rec newCharAssocs_3 = ((mappend__d3__d0 newAssocs_1) _lh_findhash'_arg2_1) in
              (let rec _lh_matchIdent_9 = ((hinsert__d0__d0 ((hash__d0__d0 newCharAssocs_3) (let rec _lh_hash_K_3_1 = _lh_findhash'_K_3_1 in
                (let rec _lh_hash_K_2_1 = _lh_findhash'_K_2_7 in
                  (let rec _lh_hash_K_1_1 = _lh_findhash'_K_1_7 in
                    (fun _lh_hash_arg1_3 -> 
                      ((_lh_hash_K_3_1 + ((assoc__d0__d0 _lh_hash_K_1_1) _lh_hash_arg1_3)) + ((assoc__d1__d0 _lh_hash_K_2_1) _lh_hash_arg1_3)))))))) _lh_findhash'_arg1_1) in
                (match _lh_matchIdent_9 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_5) -> 
                    (((findhash'__d0__d1 _lh_findhash'_Just_0_5) newCharAssocs_3) _lh_findhash'_LH_C_1_3)
                  | _ -> 
                    (failwith "error"))))) in
            (let rec maxval_6 = (length__d3__d0 (freqtab__d0__d0 0)) in
              (let rec _lh_matchIdent_1_0 = (let rec _lh_findhash'_LH_P2_1_6 = ((assocm__d1__d1 _lh_findhash'_K_2_7) _lh_findhash'_arg2_1) in
                (let rec _lh_findhash'_LH_P2_0_2 = ((assocm__d0__d1 _lh_findhash'_K_1_7) _lh_findhash'_arg2_1) in
                  (fun _lh_findhash'_K_1_8 _lh_findhash'_K_2_8 maxval_7 try_8 -> 
                    (((((_lh_findhash'_LH_P2_0_2 _lh_findhash'_K_1_8) _lh_findhash'_K_2_8) _lh_findhash'_LH_P2_1_6) maxval_7) try_8)))) in
                ((((_lh_matchIdent_1_0 _lh_findhash'_K_1_7) _lh_findhash'_K_2_7) maxval_6) try_7))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and findhash__d0__d0 _lh_findhash_arg1_0 =
  (((findhash'__d0__d0 (let rec _lh_hinsert_H_2_0 = (`LH_N) in
    (let rec _lh_hinsert_H_1_0 = (fun _lh_maxm_arg2_0 -> 
      _lh_maxm_arg2_0) in
      (let rec _lh_hinsert_H_0_0 = (fun _lh_minm_arg2_1 -> 
        _lh_minm_arg2_1) in
        (fun _lh_hinsert_arg1_0 -> 
          (let rec lo'_0 = ((minm__d0__d1 _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
            (let rec hi'_0 = ((maxm__d0__d1 _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
              (if (((member__d2__d1 _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > (length__d2__d1 (keys__d1__d1 0)))) then
                (fun _lh_findhash'_LH_C_1_0 newCharAssocs_0 -> 
                  (`NotEver(1)))
              else
                (let rec _lh_findhash'_Just_0_0 = (`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))) in
                  (fun _lh_findhash'_LH_C_1_1 newCharAssocs_1 -> 
                    (((findhash'__d0__d1 _lh_findhash'_Just_0_0) newCharAssocs_1) _lh_findhash'_LH_C_1_1))))))))))) (`LH_N)) _lh_findhash_arg1_0)
and firstSuccess__d0__d0 _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first__d0__d0 0) ((map__d1__d0 _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0))
and firstSuccess__d0__d1 _lh_firstSuccess_arg1_7 _lh_firstSuccess_arg2_7 =
  ((first__d0__d1 0) ((map__d1__d1 _lh_firstSuccess_arg1_7) _lh_firstSuccess_arg2_7))
and firstSuccess__d1__d0 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first__d1__d0 0) ((map__d2__d0 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess__d1__d1 _lh_firstSuccess_arg1_5 _lh_firstSuccess_arg2_5 =
  ((first__d1__d1 0) ((map__d2__d1 _lh_firstSuccess_arg1_5) _lh_firstSuccess_arg2_5))
and firstSuccess__d2__d0 _lh_firstSuccess_arg1_6 _lh_firstSuccess_arg2_6 =
  ((first__d2__d0 0) ((map__d3__d0 _lh_firstSuccess_arg1_6) _lh_firstSuccess_arg2_6))
and firstSuccess__d2__d1 _lh_firstSuccess_arg1_4 _lh_firstSuccess_arg2_4 =
  ((first__d2__d1 0) ((map__d3__d1 _lh_firstSuccess_arg1_4) _lh_firstSuccess_arg2_4))
and firstSuccess__d3__d0 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first__d3__d0 0) ((map__d4__d0 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess__d3__d1 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first__d3__d1 0) ((map__d4__d1 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and freqtab__d0__d0 _lh_freqtab_arg1_1 =
  (histo__d0__d0 (concat__d0__d0 ((map__d6__d0 ends__d2__d0) (attribkeys__d1__d0 (keys__d0__d0 0)))))
and freqtab__d0__d1 _lh_freqtab_arg1_0 =
  (histo__d0__d1 (concat__d0__d1 ((map__d6__d1 ends__d2__d1) (attribkeys__d1__d1 (keys__d0__d1 0)))))
and hinsert__d0__d0 _lh_hinsert_arg1_1 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_1, _lh_hinsert_H_1_1, _lh_hinsert_H_2_1) -> 
      (let rec lo'_1 = ((minm__d0__d0 _lh_hinsert_H_0_1) _lh_hinsert_arg1_1) in
        (let rec hi'_1 = ((maxm__d0__d0 _lh_hinsert_H_1_1) _lh_hinsert_arg1_1) in
          (if (((member__d2__d0 _lh_hinsert_arg1_1) _lh_hinsert_H_2_1) || (((1 + hi'_1) - lo'_1) > (length__d2__d0 (keys__d1__d0 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_1)), (`Just(hi'_1)), (`LH_C(_lh_hinsert_arg1_1, _lh_hinsert_H_2_1)))))))))
    | _ -> 
      (failwith "error"))
and histo__d0__d0 _lh_histo_arg1_1 =
  (((foldr__d1__d0 histins__d0__d0) (`LH_N)) _lh_histo_arg1_1)
and histo__d0__d1 _lh_histo_arg1_0 =
  (((foldr__d1__d1 histins__d0__d1) (`LH_N)) _lh_histo_arg1_0)
and keys__d0__d0 _lh_keys_arg1_5 =
  (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (fun f_5_1 f_5_2 _lh_dummy_1_5 f_5_3 i_5 -> 
    i_5) in
    (let rec h_4_9 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_5_4 -> 
        (let rec t_6_1 = ((map__d5__d0 f_5_4) t_6_0) in
          (let rec h_5_0 = (f_5_4 h_4_9) in
            (fun f_5_5 -> 
              (let rec t_6_2 = ((map__d6__d0 f_5_5) t_6_1) in
                (let rec h_5_1 = (f_5_5 h_5_0) in
                  (fun _lh_dummy_1_6 -> 
                    ((mappend__d2__d0 h_5_1) (concat__d0__d0 t_6_2))))))))))) in
    (let rec h_5_2 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_5_6 -> 
        (let rec t_6_3 = ((map__d5__d0 f_5_6) t_5_9) in
          (let rec h_5_3 = (f_5_6 h_5_2) in
            (fun f_5_7 -> 
              (let rec t_6_4 = ((map__d6__d0 f_5_7) t_6_3) in
                (let rec h_5_4 = (f_5_7 h_5_3) in
                  (fun _lh_dummy_1_7 -> 
                    ((mappend__d2__d0 h_5_4) (concat__d0__d0 t_6_4))))))))))) in
    (let rec h_5_5 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_5_8 -> 
        (let rec t_6_5 = ((map__d5__d0 f_5_8) t_5_8) in
          (let rec h_5_6 = (f_5_8 h_5_5) in
            (fun f_5_9 -> 
              (let rec t_6_6 = ((map__d6__d0 f_5_9) t_6_5) in
                (let rec h_5_7 = (f_5_9 h_5_6) in
                  (fun _lh_dummy_1_8 -> 
                    ((mappend__d2__d0 h_5_7) (concat__d0__d0 t_6_6))))))))))) in
    (let rec h_5_8 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun f_6_0 -> 
        (let rec t_6_7 = ((map__d5__d0 f_6_0) t_5_7) in
          (let rec h_5_9 = (f_6_0 h_5_8) in
            (fun f_6_1 -> 
              (let rec t_6_8 = ((map__d6__d0 f_6_1) t_6_7) in
                (let rec h_6_0 = (f_6_1 h_5_9) in
                  (fun _lh_dummy_1_9 -> 
                    ((mappend__d2__d0 h_6_0) (concat__d0__d0 t_6_8)))))))))))
and keys__d0__d1 _lh_keys_arg1_4 =
  (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (fun f_1_8 f_1_9 _lh_dummy_1_0 f_2_0 i_0 -> 
    i_0) in
    (let rec h_2_6 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_2_1 -> 
        (let rec t_3_8 = ((map__d5__d1 f_2_1) t_3_7) in
          (let rec h_2_7 = (f_2_1 h_2_6) in
            (fun f_2_2 -> 
              (let rec t_3_9 = ((map__d6__d1 f_2_2) t_3_8) in
                (let rec h_2_8 = (f_2_2 h_2_7) in
                  (fun _lh_dummy_1_1 -> 
                    ((mappend__d2__d1 h_2_8) (concat__d0__d1 t_3_9))))))))))) in
    (let rec h_2_9 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_2_3 -> 
        (let rec t_4_0 = ((map__d5__d1 f_2_3) t_3_6) in
          (let rec h_3_0 = (f_2_3 h_2_9) in
            (fun f_2_4 -> 
              (let rec t_4_1 = ((map__d6__d1 f_2_4) t_4_0) in
                (let rec h_3_1 = (f_2_4 h_3_0) in
                  (fun _lh_dummy_1_2 -> 
                    ((mappend__d2__d1 h_3_1) (concat__d0__d1 t_4_1))))))))))) in
    (let rec h_3_2 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_2_5 -> 
        (let rec t_4_2 = ((map__d5__d1 f_2_5) t_3_5) in
          (let rec h_3_3 = (f_2_5 h_3_2) in
            (fun f_2_6 -> 
              (let rec t_4_3 = ((map__d6__d1 f_2_6) t_4_2) in
                (let rec h_3_4 = (f_2_6 h_3_3) in
                  (fun _lh_dummy_1_3 -> 
                    ((mappend__d2__d1 h_3_4) (concat__d0__d1 t_4_3))))))))))) in
    (let rec h_3_5 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun f_2_7 -> 
        (let rec t_4_4 = ((map__d5__d1 f_2_7) t_3_4) in
          (let rec h_3_6 = (f_2_7 h_3_5) in
            (fun f_2_8 -> 
              (let rec t_4_5 = ((map__d6__d1 f_2_8) t_4_4) in
                (let rec h_3_7 = (f_2_8 h_3_6) in
                  (fun _lh_dummy_1_4 -> 
                    ((mappend__d2__d1 h_3_7) (concat__d0__d1 t_4_5)))))))))))
and keys__d1__d0 _lh_keys_arg1_0 =
  (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (fun _lh_dummy_0 -> 
    0) in
    (fun _lh_dummy_1 -> 
      (1 + (length__d2__d0 t_8)))) in
    (fun _lh_dummy_2 -> 
      (1 + (length__d2__d0 t_7)))) in
    (fun _lh_dummy_3 -> 
      (1 + (length__d2__d0 t_6)))) in
    (fun _lh_dummy_4 -> 
      (1 + (length__d2__d0 t_5))))
and keys__d1__d1 _lh_keys_arg1_2 =
  (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (fun _lh_dummy_5 -> 
    0) in
    (fun _lh_dummy_6 -> 
      (1 + (length__d2__d1 t_2_2)))) in
    (fun _lh_dummy_7 -> 
      (1 + (length__d2__d1 t_2_1)))) in
    (fun _lh_dummy_8 -> 
      (1 + (length__d2__d1 t_2_0)))) in
    (fun _lh_dummy_9 -> 
      (1 + (length__d2__d1 t_1_9))))
and keys__d2__d0 _lh_keys_arg1_1 =
  (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (fun ys_2 -> 
    ys_2) in
    (let rec h_5 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun ys_3 -> 
        (let rec t_1_3 = ((mappend__d4__d0 t_1_2) ys_3) in
          (let rec h_6 = h_5 in
            (fun f_3 -> 
              (`LH_C((f_3 h_6), ((map__d0__d0 f_3) t_1_3))))))))) in
    (let rec h_7 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun ys_4 -> 
        (let rec t_1_4 = ((mappend__d4__d0 t_1_1) ys_4) in
          (let rec h_8 = h_7 in
            (fun f_4 -> 
              (`LH_C((f_4 h_8), ((map__d0__d0 f_4) t_1_4))))))))) in
    (let rec h_9 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun ys_5 -> 
        (let rec t_1_5 = ((mappend__d4__d0 t_1_0) ys_5) in
          (let rec h_1_0 = h_9 in
            (fun f_5 -> 
              (`LH_C((f_5 h_1_0), ((map__d0__d0 f_5) t_1_5))))))))) in
    (let rec h_1_1 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun ys_6 -> 
        (let rec t_1_6 = ((mappend__d4__d0 t_9) ys_6) in
          (let rec h_1_2 = h_1_1 in
            (fun f_6 -> 
              (`LH_C((f_6 h_1_2), ((map__d0__d0 f_6) t_1_6)))))))))
and keys__d3__d0 _lh_keys_arg1_3 =
  (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (fun n_0 f_7 -> 
    (`LH_N)) in
    (let rec h_1_6 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun n_1 -> 
        (let rec t_2_8 = ((take__d0__d0 (n_1 - 1)) t_2_7) in
          (let rec h_1_7 = h_1_6 in
            (fun f_8 -> 
              (`LH_C((f_8 h_1_7), ((map__d0__d0 f_8) t_2_8))))))))) in
    (let rec h_1_8 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun n_2 -> 
        (let rec t_2_9 = ((take__d0__d0 (n_2 - 1)) t_2_6) in
          (let rec h_1_9 = h_1_8 in
            (fun f_9 -> 
              (`LH_C((f_9 h_1_9), ((map__d0__d0 f_9) t_2_9))))))))) in
    (let rec h_2_0 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun n_3 -> 
        (let rec t_3_0 = ((take__d0__d0 (n_3 - 1)) t_2_5) in
          (let rec h_2_1 = h_2_0 in
            (fun f_1_0 -> 
              (`LH_C((f_1_0 h_2_1), ((map__d0__d0 f_1_0) t_3_0))))))))) in
    (let rec h_2_2 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun n_4 -> 
        (let rec t_3_1 = ((take__d0__d0 (n_4 - 1)) t_2_4) in
          (let rec h_2_3 = h_2_2 in
            (fun f_1_1 -> 
              (`LH_C((f_1_1 h_2_3), ((map__d0__d0 f_1_1) t_3_1)))))))))
and maxm__d0__d0 _lh_maxm_arg1_1 _lh_maxm_arg2_2 =
  (match _lh_maxm_arg1_1 with
    | `Nothing -> 
      _lh_maxm_arg2_2
    | `Just(_lh_maxm_Just_0_0) -> 
      ((max__d0__d0 _lh_maxm_Just_0_0) _lh_maxm_arg2_2)
    | _ -> 
      (failwith "error"))
and minm__d0__d0 _lh_minm_arg1_0 _lh_minm_arg2_0 =
  (match _lh_minm_arg1_0 with
    | `Nothing -> 
      _lh_minm_arg2_0
    | `Just(_lh_minm_Just_0_0) -> 
      ((min__d0__d0 _lh_minm_Just_0_0) _lh_minm_arg2_0)
    | _ -> 
      (failwith "error"))
and partition'__d0__d0 _lh_partition'_arg1_0 =
  ((foldr__d0__d0 (select__d0__d0 _lh_partition'_arg1_0)) (`LH_P2((fun ys_1_6 -> 
    ys_1_6), (`LH_N))))
and prog__d0__d0 _lh_prog_arg1_0 =
  (cichelli__d0__d0 _lh_prog_arg1_0)
and select__d0__d0 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((let rec t_1 = _lh_select_LH_P2_0_0 in
          (let rec h_1 = _lh_select_arg2_0 in
            (fun ys_0 -> 
              (`LH_C(h_1, ((mappend__d0__d0 t_1) ys_0)))))), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"))
and subset__d0__d0 _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all__d0__d0 (fun x_0 -> 
    ((member__d0__d0 x_0) _lh_subset_arg2_0))) _lh_subset_arg1_0)
and testCichelli_nofib__d0__d0 _lh_testCichelli_nofib_arg1_0 =
  (prog__d0__d0 _lh_testCichelli_nofib_arg1_0)
and union__d0__d0 _lh_union_arg1_0 _lh_union_arg2_0 =
  ((mappend__d1__d0 _lh_union_arg1_0) (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_4 -> 
    ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_2) _lh_union_arg1_0)) in
    (_lh_listcomp_fun_1_2 _lh_union_arg2_0)));;

(* lumberhack_pop_out *)
let rec all__d0__d0__d0 _lh_all_arg1_9 _lh_all_arg2_3 =
  (_lh_all_arg2_3 _lh_all_arg1_9);;
let rec all__d0__d0__d1 _lh_all_arg1_4 _lh_all_arg2_1 =
  (_lh_all_arg2_1 _lh_all_arg1_4);;
let rec all__d0__d0__d2 _lh_all_arg1_8 _lh_all_arg2_2 =
  (_lh_all_arg2_2 _lh_all_arg1_8);;
let rec assoc__d0__d0__d0 _lh_assoc_arg1_6 _lh_assoc_arg2_6 =
  (match _lh_assoc_arg2_6 with
    | `LH_C(_lh_assoc_LH_C_0_6, _lh_assoc_LH_C_1_6) -> 
      (match _lh_assoc_LH_C_0_6 with
        | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
          (if (_lh_assoc_arg1_6 = _lh_assoc_LH_P2_0_6) then
            _lh_assoc_LH_P2_1_6
          else
            ((assoc__d0__d0__d0 _lh_assoc_arg1_6) _lh_assoc_LH_C_1_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d0__d1__d0 _lh_assoc_arg1_7 _lh_assoc_arg2_7 =
  (match _lh_assoc_arg2_7 with
    | `LH_C(_lh_assoc_LH_C_0_7, _lh_assoc_LH_C_1_7) -> 
      (match _lh_assoc_LH_C_0_7 with
        | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
          (if (_lh_assoc_arg1_7 = _lh_assoc_LH_P2_0_7) then
            _lh_assoc_LH_P2_1_7
          else
            ((assoc__d0__d1__d0 _lh_assoc_arg1_7) _lh_assoc_LH_C_1_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1__d0__d0 _lh_assoc_arg1_4 _lh_assoc_arg2_4 =
  (match _lh_assoc_arg2_4 with
    | `LH_C(_lh_assoc_LH_C_0_4, _lh_assoc_LH_C_1_4) -> 
      (match _lh_assoc_LH_C_0_4 with
        | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
          (if (_lh_assoc_arg1_4 = _lh_assoc_LH_P2_0_4) then
            _lh_assoc_LH_P2_1_4
          else
            ((assoc__d1__d0__d0 _lh_assoc_arg1_4) _lh_assoc_LH_C_1_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1__d1__d0 _lh_assoc_arg1_5 _lh_assoc_arg2_5 =
  (match _lh_assoc_arg2_5 with
    | `LH_C(_lh_assoc_LH_C_0_5, _lh_assoc_LH_C_1_5) -> 
      (match _lh_assoc_LH_C_0_5 with
        | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
          (if (_lh_assoc_arg1_5 = _lh_assoc_LH_P2_0_5) then
            _lh_assoc_LH_P2_1_5
          else
            ((assoc__d1__d1__d0 _lh_assoc_arg1_5) _lh_assoc_LH_C_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1__d0__d0 _lh_assocm_arg1_7 _lh_assocm_arg2_7 =
  (match _lh_assocm_arg2_7 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_7, _lh_assocm_LH_C_1_7) -> 
      (match _lh_assocm_LH_C_0_7 with
        | `LH_P2(_lh_assocm_LH_P2_0_7, _lh_assocm_LH_P2_1_7) -> 
          (if (_lh_assocm_arg1_7 = _lh_assocm_LH_P2_0_7) then
            (`Just(_lh_assocm_LH_P2_1_7))
          else
            ((assocm__d1__d0__d0 _lh_assocm_arg1_7) _lh_assocm_LH_C_1_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1__d1__d0 _lh_assocm_arg1_5 _lh_assocm_arg2_5 =
  (match _lh_assocm_arg2_5 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_5, _lh_assocm_LH_C_1_5) -> 
      (match _lh_assocm_LH_C_0_5 with
        | `LH_P2(_lh_assocm_LH_P2_0_5, _lh_assocm_LH_P2_1_5) -> 
          (if (_lh_assocm_arg1_5 = _lh_assocm_LH_P2_0_5) then
            (`Just(_lh_assocm_LH_P2_1_5))
          else
            ((assocm__d1__d1__d0 _lh_assocm_arg1_5) _lh_assocm_LH_C_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat__d0__d0__d0 lss_8 =
  (lss_8 99);;
let rec concat__d0__d0__d1 lss_1_1 =
  (lss_1_1 99);;
let rec concat__d0__d0__d2 lss_2 =
  (lss_2 99);;
let rec concat__d0__d0__d3 lss_4 =
  (lss_4 99);;
let rec concat__d0__d0__d4 lss_7 =
  (lss_7 99);;
let rec concat__d0__d1__d0 lss_9 =
  (lss_9 99);;
let rec concat__d0__d1__d1 lss_1_0 =
  (lss_1_0 99);;
let rec concat__d0__d1__d2 lss_6 =
  (lss_6 99);;
let rec concat__d0__d1__d3 lss_3 =
  (lss_3 99);;
let rec concat__d0__d1__d4 lss_5 =
  (lss_5 99);;
let rec ends__d2__d0__d0 _lh_ends_arg1_5 =
  _lh_ends_arg1_5;;
let rec ends__d2__d1__d0 _lh_ends_arg1_7 =
  _lh_ends_arg1_7;;
let rec first__d0__d0__d0 _lh_first_arg1_5_1 _lh_first_arg2_2_0 =
  (_lh_first_arg2_2_0 _lh_first_arg1_5_1);;
let rec first__d0__d0__d1 _lh_first_arg1_5_4 _lh_first_arg2_2_2 =
  (_lh_first_arg2_2_2 _lh_first_arg1_5_4);;
let rec first__d0__d1__d0 _lh_first_arg1_4_2 _lh_first_arg2_1_5 =
  (_lh_first_arg2_1_5 _lh_first_arg1_4_2);;
let rec first__d0__d1__d1 _lh_first_arg1_4_5 _lh_first_arg2_1_6 =
  (_lh_first_arg2_1_6 _lh_first_arg1_4_5);;
let rec first__d1__d0__d0 _lh_first_arg1_4_0 _lh_first_arg2_1_3 =
  (_lh_first_arg2_1_3 _lh_first_arg1_4_0);;
let rec first__d1__d0__d1 _lh_first_arg1_4_6 _lh_first_arg2_1_7 =
  (_lh_first_arg2_1_7 _lh_first_arg1_4_6);;
let rec first__d1__d1__d0 _lh_first_arg1_2_6 _lh_first_arg2_8 =
  (_lh_first_arg2_8 _lh_first_arg1_2_6);;
let rec first__d1__d1__d1 _lh_first_arg1_5_3 _lh_first_arg2_2_1 =
  (_lh_first_arg2_2_1 _lh_first_arg1_5_3);;
let rec first__d2__d0__d0 _lh_first_arg1_3_7 _lh_first_arg2_1_1 =
  (_lh_first_arg2_1_1 _lh_first_arg1_3_7);;
let rec first__d2__d0__d1 _lh_first_arg1_5_5 _lh_first_arg2_2_3 =
  (_lh_first_arg2_2_3 _lh_first_arg1_5_5);;
let rec first__d2__d1__d0 _lh_first_arg1_4_8 _lh_first_arg2_1_9 =
  (_lh_first_arg2_1_9 _lh_first_arg1_4_8);;
let rec first__d2__d1__d1 _lh_first_arg1_3_8 _lh_first_arg2_1_2 =
  (_lh_first_arg2_1_2 _lh_first_arg1_3_8);;
let rec first__d3__d0__d0 _lh_first_arg1_4_7 _lh_first_arg2_1_8 =
  (_lh_first_arg2_1_8 _lh_first_arg1_4_7);;
let rec first__d3__d0__d1 _lh_first_arg1_2_9 _lh_first_arg2_9 =
  (_lh_first_arg2_9 _lh_first_arg1_2_9);;
let rec first__d3__d1__d0 _lh_first_arg1_3_2 _lh_first_arg2_1_0 =
  (_lh_first_arg2_1_0 _lh_first_arg1_3_2);;
let rec first__d3__d1__d1 _lh_first_arg1_4_1 _lh_first_arg2_1_4 =
  (_lh_first_arg2_1_4 _lh_first_arg1_4_1);;
let rec foldr__d0__d0__d0 f_9_5 i_1_2 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_8_9, t_9_7) -> 
      ((f_9_5 h_8_9) (((foldr__d0__d0__d0 f_9_5) i_1_2) t_9_7))
    | `LH_N -> 
      i_1_2);;
let rec foldr__d1__d0__d0 f_1_2_5 i_1_8 ls_5_4 =
  ((ls_5_4 f_1_2_5) i_1_8);;
let rec foldr__d1__d0__d1 f_9_1 i_1_0 ls_3_7 =
  ((ls_3_7 f_9_1) i_1_0);;
let rec foldr__d1__d0__d2 f_1_7_1 i_2_1 ls_9_3 =
  ((ls_9_3 f_1_7_1) i_2_1);;
let rec foldr__d1__d1__d0 f_1_6_2 i_2_0 ls_8_7 =
  ((ls_8_7 f_1_6_2) i_2_0);;
let rec foldr__d1__d1__d1 f_9_2 i_1_1 ls_3_8 =
  ((ls_3_8 f_9_2) i_1_1);;
let rec foldr__d1__d1__d2 f_1_3_7 i_1_9 ls_6_7 =
  ((ls_6_7 f_1_3_7) i_1_9);;
let rec freqsorted__d0__d0__d0 _lh_freqsorted_arg1_1 =
  _lh_freqsorted_arg1_1;;
let rec hash__d0__d0__d0 _lh_hash_arg1_4 _lh_hash_arg2_2 =
  (_lh_hash_arg2_2 _lh_hash_arg1_4);;
let rec hash__d0__d1__d0 _lh_hash_arg1_5 _lh_hash_arg2_3 =
  (_lh_hash_arg2_3 _lh_hash_arg1_5);;
let rec head__d0__d0__d0 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_1_1_5, t_1_2_7) -> 
      h_1_1_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1__d0__d0 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_7_0, t_7_8) -> 
      h_7_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1__d1__d0 ls_8_6 =
  (match ls_8_6 with
    | `LH_C(h_1_2_6, t_1_3_8) -> 
      h_1_2_6
    | `LH_N -> 
      (failwith "error"));;
let rec hinsert__d0__d1__d0 _lh_hinsert_arg1_5 _lh_hinsert_arg2_3 =
  (_lh_hinsert_arg2_3 _lh_hinsert_arg1_5);;
let rec histins__d0__d0__d0 _lh_histins_arg1_2 _lh_histins_arg2_2 =
  (match _lh_histins_arg2_2 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_2, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_2, _lh_histins_LH_C_1_2) -> 
      (match _lh_histins_LH_C_0_2 with
        | `LH_P2(_lh_histins_LH_P2_0_2, _lh_histins_LH_P2_1_2) -> 
          (if (_lh_histins_arg1_2 = _lh_histins_LH_P2_0_2) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_2, (_lh_histins_LH_P2_1_2 + 1))), _lh_histins_LH_C_1_2))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_2, _lh_histins_LH_P2_1_2)), ((histins__d0__d0__d0 _lh_histins_arg1_2) _lh_histins_LH_C_1_2))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec histins__d0__d1__d0 _lh_histins_arg1_3 _lh_histins_arg2_3 =
  (match _lh_histins_arg2_3 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_3, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_3, _lh_histins_LH_C_1_3) -> 
      (match _lh_histins_LH_C_0_3 with
        | `LH_P2(_lh_histins_LH_P2_0_3, _lh_histins_LH_P2_1_3) -> 
          (if (_lh_histins_arg1_3 = _lh_histins_LH_P2_0_3) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_3, (_lh_histins_LH_P2_1_3 + 1))), _lh_histins_LH_C_1_3))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_3, _lh_histins_LH_P2_1_3)), ((histins__d0__d1__d0 _lh_histins_arg1_3) _lh_histins_LH_C_1_3))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec last__d0__d0__d0 _lh_last_arg1_4 =
  (match _lh_last_arg1_4 with
    | `LH_C(_lh_last_LH_C_0_4, _lh_last_LH_C_1_4) -> 
      (let rec go_4 = (fun _lh_go_arg1_4 _lh_go_arg2_4 -> 
        (match _lh_go_arg2_4 with
          | `LH_N -> 
            _lh_go_arg1_4
          | `LH_C(_lh_go_LH_C_0_4, _lh_go_LH_C_1_4) -> 
            ((go_4 _lh_go_LH_C_0_4) _lh_go_LH_C_1_4)
          | _ -> 
            (failwith "error"))) in
        ((go_4 _lh_last_LH_C_0_4) _lh_last_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec last__d1__d0__d0 _lh_last_arg1_3 =
  (match _lh_last_arg1_3 with
    | `LH_C(_lh_last_LH_C_0_3, _lh_last_LH_C_1_3) -> 
      (let rec go_3 = (fun _lh_go_arg1_3 _lh_go_arg2_3 -> 
        (match _lh_go_arg2_3 with
          | `LH_N -> 
            _lh_go_arg1_3
          | `LH_C(_lh_go_LH_C_0_3, _lh_go_LH_C_1_3) -> 
            ((go_3 _lh_go_LH_C_0_3) _lh_go_LH_C_1_3)
          | _ -> 
            (failwith "error"))) in
        ((go_3 _lh_last_LH_C_0_3) _lh_last_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec last__d1__d1__d0 _lh_last_arg1_5 =
  (match _lh_last_arg1_5 with
    | `LH_C(_lh_last_LH_C_0_5, _lh_last_LH_C_1_5) -> 
      (let rec go_5 = (fun _lh_go_arg1_5 _lh_go_arg2_5 -> 
        (match _lh_go_arg2_5 with
          | `LH_N -> 
            _lh_go_arg1_5
          | `LH_C(_lh_go_LH_C_0_5, _lh_go_LH_C_1_5) -> 
            ((go_5 _lh_go_LH_C_0_5) _lh_go_LH_C_1_5)
          | _ -> 
            (failwith "error"))) in
        ((go_5 _lh_last_LH_C_0_5) _lh_last_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec length__d0__d0__d0 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_1_0_8, t_1_1_6) -> 
      (1 + (length__d0__d0__d0 t_1_1_6))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d0 ls_2_8 =
  (ls_2_8 99);;
let rec length__d2__d0__d1 ls_3_9 =
  (ls_3_9 99);;
let rec length__d2__d0__d2 ls_2_9 =
  (ls_2_9 99);;
let rec length__d2__d0__d3 ls_5_1 =
  (ls_5_1 99);;
let rec length__d2__d0__d4 ls_6_0 =
  (ls_6_0 99);;
let rec length__d2__d1__d0 ls_3_6 =
  (ls_3_6 99);;
let rec length__d2__d1__d1 ls_6_2 =
  (ls_6_2 99);;
let rec length__d2__d1__d2 ls_9_8 =
  (ls_9_8 99);;
let rec length__d2__d1__d3 ls_8_4 =
  (ls_8_4 99);;
let rec length__d2__d1__d4 ls_9_6 =
  (ls_9_6 99);;
let rec length__d3__d0__d0 ls_6_3 =
  (match ls_6_3 with
    | `LH_C(h_1_1_4, t_1_2_2) -> 
      (1 + (length__d3__d0__d0 t_1_2_2))
    | `LH_N -> 
      0);;
let rec length__d3__d1__d0 ls_8_9 =
  (match ls_8_9 with
    | `LH_C(h_1_2_8, t_1_4_0) -> 
      (1 + (length__d3__d1__d0 t_1_4_0))
    | `LH_N -> 
      0);;
let rec map__d0__d0__d0 f_1_7_3 ls_9_5 =
  (ls_9_5 f_1_7_3);;
let rec map__d0__d0__d1 f_1_3_8 ls_6_8 =
  (ls_6_8 f_1_3_8);;
let rec map__d0__d0__d2 f_1_5_3 ls_7_7 =
  (ls_7_7 f_1_5_3);;
let rec map__d0__d0__d3 f_7_0 ls_3_0 =
  (ls_3_0 f_7_0);;
let rec map__d0__d0__d4 f_9_3 ls_4_0 =
  (ls_4_0 f_9_3);;
let rec map__d0__d0__d5 f_1_4_2 ls_7_3 =
  (ls_7_3 f_1_4_2);;
let rec map__d0__d0__d6 f_1_5_6 ls_7_9 =
  (ls_7_9 f_1_5_6);;
let rec map__d0__d0__d7 f_1_5_9 ls_8_2 =
  (ls_8_2 f_1_5_9);;
let rec map__d0__d0__d8 f_8_5 ls_3_3 =
  (ls_3_3 f_8_5);;
let rec map__d1__d0__d0 f_8_7 ls_3_4 =
  (ls_3_4 f_8_7);;
let rec map__d1__d0__d1 f_1_7_2 ls_9_4 =
  (ls_9_4 f_1_7_2);;
let rec map__d1__d1__d0 f_1_4_1 ls_7_2 =
  (ls_7_2 f_1_4_1);;
let rec map__d1__d1__d1 f_1_3_4 ls_6_4 =
  (ls_6_4 f_1_3_4);;
let rec map__d2__d0__d0 f_1_5_8 ls_8_1 =
  (ls_8_1 f_1_5_8);;
let rec map__d2__d0__d1 f_1_7_4 ls_9_7 =
  (ls_9_7 f_1_7_4);;
let rec map__d2__d1__d0 f_1_1_8 ls_4_7 =
  (ls_4_7 f_1_1_8);;
let rec map__d2__d1__d1 f_1_3_5 ls_6_5 =
  (ls_6_5 f_1_3_5);;
let rec map__d3__d0__d0 f_8_3 ls_3_2 =
  (ls_3_2 f_8_3);;
let rec map__d3__d0__d1 f_1_6_9 ls_9_1 =
  (ls_9_1 f_1_6_9);;
let rec map__d3__d1__d0 f_1_7_0 ls_9_2 =
  (ls_9_2 f_1_7_0);;
let rec map__d3__d1__d1 f_1_5_2 ls_7_6 =
  (ls_7_6 f_1_5_2);;
let rec map__d4__d0__d0 f_1_4_6 ls_7_5 =
  (ls_7_5 f_1_4_6);;
let rec map__d4__d0__d1 f_1_3_9 ls_6_9 =
  (ls_6_9 f_1_3_9);;
let rec map__d4__d1__d0 f_1_1_7 ls_4_6 =
  (ls_4_6 f_1_1_7);;
let rec map__d4__d1__d1 f_1_4_0 ls_7_1 =
  (ls_7_1 f_1_4_0);;
let rec map__d5__d0__d0 f_1_3_6 ls_6_6 =
  (ls_6_6 f_1_3_6);;
let rec map__d5__d0__d1 f_1_2_3 ls_5_2 =
  (ls_5_2 f_1_2_3);;
let rec map__d5__d0__d2 f_1_6_3 ls_8_8 =
  (ls_8_8 f_1_6_3);;
let rec map__d5__d0__d3 f_1_6_0 ls_8_3 =
  (ls_8_3 f_1_6_0);;
let rec map__d5__d0__d4 f_1_2_1 ls_4_9 =
  (ls_4_9 f_1_2_1);;
let rec map__d5__d1__d0 f_1_3_3 ls_6_1 =
  (ls_6_1 f_1_3_3);;
let rec map__d5__d1__d1 f_1_2_7 ls_5_6 =
  (ls_5_6 f_1_2_7);;
let rec map__d5__d1__d2 f_1_2_9 ls_5_8 =
  (ls_5_8 f_1_2_9);;
let rec map__d5__d1__d3 f_1_2_4 ls_5_3 =
  (ls_5_3 f_1_2_4);;
let rec map__d5__d1__d4 f_1_6_1 ls_8_5 =
  (ls_8_5 f_1_6_1);;
let rec map__d6__d0__d0 f_1_2_2 ls_5_0 =
  (ls_5_0 f_1_2_2);;
let rec map__d6__d0__d1 f_1_2_6 ls_5_5 =
  (ls_5_5 f_1_2_6);;
let rec map__d6__d0__d2 f_1_2_8 ls_5_7 =
  (ls_5_7 f_1_2_8);;
let rec map__d6__d0__d3 f_8_2 ls_3_1 =
  (ls_3_1 f_8_2);;
let rec map__d6__d0__d4 f_1_5_5 ls_7_8 =
  (ls_7_8 f_1_5_5);;
let rec map__d6__d1__d0 f_1_1_4 ls_4_4 =
  (ls_4_4 f_1_1_4);;
let rec map__d6__d1__d1 f_1_5_7 ls_8_0 =
  (ls_8_0 f_1_5_7);;
let rec map__d6__d1__d2 f_8_8 ls_3_5 =
  (ls_3_5 f_8_8);;
let rec map__d6__d1__d3 f_9_4 ls_4_1 =
  (ls_4_1 f_9_4);;
let rec map__d6__d1__d4 f_1_7_5 ls_9_9 =
  (ls_9_9 f_1_7_5);;
let rec mappend__d0__d0__d0 xs_2_2 ys_4_3 =
  (xs_2_2 ys_4_3);;
let rec mappend__d0__d0__d1 xs_1_7 ys_3_7 =
  (xs_1_7 ys_3_7);;
let rec mappend__d0__d0__d2 xs_2_7 ys_4_9 =
  (xs_2_7 ys_4_9);;
let rec mappend__d1__d0__d0 xs_1_2 ys_2_6 =
  (match xs_1_2 with
    | `LH_C(h_8_6, t_9_4) -> 
      (`LH_C(h_8_6, ((mappend__d1__d0__d0 t_9_4) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d2__d0__d0 xs_1_1 ys_2_5 =
  (xs_1_1 ys_2_5);;
let rec mappend__d2__d0__d1 xs_2_9 ys_5_7 =
  (xs_2_9 ys_5_7);;
let rec mappend__d2__d0__d2 xs_1_5 ys_3_2 =
  (xs_1_5 ys_3_2);;
let rec mappend__d2__d0__d3 xs_1_9 ys_3_9 =
  (xs_1_9 ys_3_9);;
let rec mappend__d2__d0__d4 xs_1_6 ys_3_6 =
  (xs_1_6 ys_3_6);;
let rec mappend__d2__d0__d5 xs_2_4 ys_4_6 =
  (xs_2_4 ys_4_6);;
let rec mappend__d2__d1__d0 xs_2_0 ys_4_1 =
  (xs_2_0 ys_4_1);;
let rec mappend__d2__d1__d1 xs_1_4 ys_3_1 =
  (xs_1_4 ys_3_1);;
let rec mappend__d2__d1__d2 xs_1_3 ys_2_7 =
  (xs_1_3 ys_2_7);;
let rec mappend__d2__d1__d3 xs_2_1 ys_4_2 =
  (xs_2_1 ys_4_2);;
let rec mappend__d2__d1__d4 xs_2_6 ys_4_8 =
  (xs_2_6 ys_4_8);;
let rec mappend__d2__d1__d5 xs_9 ys_2_3 =
  (xs_9 ys_2_3);;
let rec mappend__d3__d0__d0 xs_8 ys_2_2 =
  (match xs_8 with
    | `LH_C(h_7_2, t_8_0) -> 
      (`LH_C(h_7_2, ((mappend__d3__d0__d0 t_8_0) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d3__d1__d0 xs_2_5 ys_4_7 =
  (match xs_2_5 with
    | `LH_C(h_1_2_7, t_1_3_9) -> 
      (`LH_C(h_1_2_7, ((mappend__d3__d1__d0 t_1_3_9) ys_4_7)))
    | `LH_N -> 
      ys_4_7);;
let rec mappend__d4__d0__d0 xs_2_8 ys_5_5 =
  (xs_2_8 ys_5_5);;
let rec mappend__d4__d0__d1 xs_1_0 ys_2_4 =
  (xs_1_0 ys_2_4);;
let rec mappend__d4__d0__d2 xs_2_3 ys_4_5 =
  (xs_2_3 ys_4_5);;
let rec mappend__d4__d0__d3 xs_1_8 ys_3_8 =
  (xs_1_8 ys_3_8);;
let rec mappend__d4__d0__d4 xs_7 ys_2_1 =
  (xs_7 ys_2_1);;
let rec max__d0__d0__d0 _lh_max_arg1_2 _lh_max_arg2_2 =
  (if (_lh_max_arg1_2 > _lh_max_arg2_2) then
    _lh_max_arg1_2
  else
    _lh_max_arg2_2);;
let rec maxm__d0__d1__d0 _lh_maxm_arg1_2 _lh_maxm_arg2_3 =
  (_lh_maxm_arg1_2 _lh_maxm_arg2_3);;
let rec member__d0__d0__d0 _lh_member_arg1_5 _lh_member_arg2_5 =
  (match _lh_member_arg2_5 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_5, _lh_member_LH_C_1_5) -> 
      ((_lh_member_arg1_5 = _lh_member_LH_C_0_5) || ((member__d0__d0__d0 _lh_member_arg1_5) _lh_member_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec member__d1__d0__d0 _lh_member_arg1_6 _lh_member_arg2_6 =
  (match _lh_member_arg2_6 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_6, _lh_member_LH_C_1_6) -> 
      ((_lh_member_arg1_6 = _lh_member_LH_C_0_6) || ((member__d1__d0__d0 _lh_member_arg1_6) _lh_member_LH_C_1_6))
    | _ -> 
      (failwith "error"));;
let rec member__d1__d0__d1 _lh_member_arg1_4 _lh_member_arg2_4 =
  (match _lh_member_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_4, _lh_member_LH_C_1_4) -> 
      ((_lh_member_arg1_4 = _lh_member_LH_C_0_4) || ((member__d1__d0__d1 _lh_member_arg1_4) _lh_member_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec member__d2__d0__d0 _lh_member_arg1_8 _lh_member_arg2_8 =
  (match _lh_member_arg2_8 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_8, _lh_member_LH_C_1_8) -> 
      ((_lh_member_arg1_8 = _lh_member_LH_C_0_8) || ((member__d2__d0__d0 _lh_member_arg1_8) _lh_member_LH_C_1_8))
    | _ -> 
      (failwith "error"));;
let rec member__d2__d1__d0 _lh_member_arg1_7 _lh_member_arg2_7 =
  (match _lh_member_arg2_7 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_7, _lh_member_LH_C_1_7) -> 
      ((_lh_member_arg1_7 = _lh_member_LH_C_0_7) || ((member__d2__d1__d0 _lh_member_arg1_7) _lh_member_LH_C_1_7))
    | _ -> 
      (failwith "error"));;
let rec min__d0__d0__d0 _lh_min_arg1_2 _lh_min_arg2_2 =
  (if (_lh_min_arg1_2 < _lh_min_arg2_2) then
    _lh_min_arg1_2
  else
    _lh_min_arg2_2);;
let rec minm__d0__d1__d0 _lh_minm_arg1_2 _lh_minm_arg2_3 =
  (_lh_minm_arg1_2 _lh_minm_arg2_3);;
let rec take__d0__d0__d0 n_1_9 ls_9_0 =
  (if (n_1_9 > 0) then
    (ls_9_0 n_1_9)
  else
    (fun f_1_6_8 -> 
      (`LH_N)));;
let rec take__d0__d0__d1 n_1_3 ls_7_4 =
  (if (n_1_3 > 0) then
    (ls_7_4 n_1_3)
  else
    (fun f_1_4_3 -> 
      (`LH_N)));;
let rec take__d0__d0__d2 n_1_2 ls_5_9 =
  (if (n_1_2 > 0) then
    (ls_5_9 n_1_2)
  else
    (fun f_1_3_2 -> 
      (`LH_N)));;
let rec take__d0__d0__d3 n_1_0 ls_4_5 =
  (if (n_1_0 > 0) then
    (ls_4_5 n_1_0)
  else
    (fun f_1_1_6 -> 
      (`LH_N)));;
let rec take__d0__d0__d4 n_9 ls_4_3 =
  (if (n_9 > 0) then
    (ls_4_3 n_9)
  else
    (fun f_1_1_1 -> 
      (`LH_N)));;
let rec assocm__d0__d0__d0 _lh_assocm_arg1_4 _lh_assocm_arg2_4 =
  (match _lh_assocm_arg2_4 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_1_2 _lh_findhash'_K_2_1_2 _lh_findhash'_LH_P2_1_1_0 maxval_1_2 try_1_2 -> 
        (match _lh_findhash'_LH_P2_1_1_0 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_1_2 = _lh_findhash'_K_2_1_2) then
              ((firstSuccess__d2__d1__d0 (fun m_4 -> 
                (try_1_2 (`LH_C((`LH_P2(_lh_findhash'_K_1_1_2, m_4)), (`LH_N)))))) ((enumFromTo__d2__d0__d0 0) maxval_1_2))
            else
              ((firstSuccess__d3__d1__d0 (fun mn_2 -> 
                (let rec _lh_matchIdent_1_9 = mn_2 in
                  (((_lh_matchIdent_1_9 _lh_findhash'_K_1_1_2) _lh_findhash'_K_2_1_2) try_1_2)))) (let rec _lh_listcomp_fun_2_9 = (fun _lh_listcomp_fun_para_6 -> 
                ((_lh_listcomp_fun_para_6 _lh_listcomp_fun_2_9) maxval_1_2)) in
                (_lh_listcomp_fun_2_9 ((enumFromTo__d3__d0__d0 0) maxval_1_2)))))
          | `Just(_lh_findhash'_Just_0_6) -> 
            ((firstSuccess__d0__d1__d0 (fun m_5 -> 
              (try_1_2 (`LH_C((`LH_P2(_lh_findhash'_K_1_1_2, m_5)), (`LH_N)))))) ((enumFromTo__d0__d0__d0 0) maxval_1_2))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_4, _lh_assocm_LH_C_1_4) -> 
      (match _lh_assocm_LH_C_0_4 with
        | `LH_P2(_lh_assocm_LH_P2_0_4, _lh_assocm_LH_P2_1_4) -> 
          (if (_lh_assocm_arg1_4 = _lh_assocm_LH_P2_0_4) then
            (fun _lh_findhash'_K_1_1_3 _lh_findhash'_K_2_1_3 _lh_findhash'_LH_P2_1_1_1 maxval_1_3 try_1_3 -> 
              (match _lh_findhash'_LH_P2_1_1_1 with
                | `Nothing -> 
                  ((firstSuccess__d1__d1__d0 (fun n_8 -> 
                    (try_1_3 (`LH_C((`LH_P2(_lh_findhash'_K_2_1_3, n_8)), (`LH_N)))))) ((enumFromTo__d1__d0__d0 0) maxval_1_3))
                | `Just(_lh_findhash'_Just_0_7) -> 
                  (try_1_3 (`LH_N))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0__d0__d0 _lh_assocm_arg1_4) _lh_assocm_LH_C_1_4))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and assocm__d0__d1__d0 _lh_assocm_arg1_6 _lh_assocm_arg2_6 =
  (match _lh_assocm_arg2_6 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_1_4 _lh_findhash'_K_2_1_4 _lh_findhash'_LH_P2_1_1_2 maxval_1_6 try_1_4 -> 
        (match _lh_findhash'_LH_P2_1_1_2 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_1_4 = _lh_findhash'_K_2_1_4) then
              ((firstSuccess__d2__d0__d0 (fun m_6 -> 
                (try_1_4 (`LH_C((`LH_P2(_lh_findhash'_K_1_1_4, m_6)), (`LH_N)))))) ((enumFromTo__d2__d1__d0 0) maxval_1_6))
            else
              ((firstSuccess__d3__d0__d0 (fun mn_3 -> 
                (let rec _lh_matchIdent_2_2 = mn_3 in
                  (((_lh_matchIdent_2_2 _lh_findhash'_K_1_1_4) _lh_findhash'_K_2_1_4) try_1_4)))) (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_8 -> 
                ((_lh_listcomp_fun_para_8 _lh_listcomp_fun_3_3) maxval_1_6)) in
                (_lh_listcomp_fun_3_3 ((enumFromTo__d3__d1__d0 0) maxval_1_6)))))
          | `Just(_lh_findhash'_Just_0_8) -> 
            ((firstSuccess__d0__d0__d0 (fun m_7 -> 
              (try_1_4 (`LH_C((`LH_P2(_lh_findhash'_K_1_1_4, m_7)), (`LH_N)))))) ((enumFromTo__d0__d1__d0 0) maxval_1_6))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_6, _lh_assocm_LH_C_1_6) -> 
      (match _lh_assocm_LH_C_0_6 with
        | `LH_P2(_lh_assocm_LH_P2_0_6, _lh_assocm_LH_P2_1_6) -> 
          (if (_lh_assocm_arg1_6 = _lh_assocm_LH_P2_0_6) then
            (fun _lh_findhash'_K_1_1_5 _lh_findhash'_K_2_1_5 _lh_findhash'_LH_P2_1_1_3 maxval_1_7 try_1_5 -> 
              (match _lh_findhash'_LH_P2_1_1_3 with
                | `Nothing -> 
                  ((firstSuccess__d1__d0__d0 (fun n_1_1 -> 
                    (try_1_5 (`LH_C((`LH_P2(_lh_findhash'_K_2_1_5, n_1_1)), (`LH_N)))))) ((enumFromTo__d1__d1__d0 0) maxval_1_7))
                | `Just(_lh_findhash'_Just_0_9) -> 
                  (try_1_5 (`LH_N))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0__d1__d0 _lh_assocm_arg1_6) _lh_assocm_LH_C_1_6))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and attribkeys__d0__d0__d0 _lh_attribkeys_arg1_5 =
  ((map__d0__d0__d0 (fun k_5 -> 
    (`K(k_5, (head__d0__d0__d0 k_5), (last__d0__d0__d0 k_5), (length__d0__d0__d0 k_5))))) _lh_attribkeys_arg1_5)
and attribkeys__d1__d0__d0 _lh_attribkeys_arg1_3 =
  ((map__d5__d0__d0 (fun k_3 -> 
    (let rec _lh_ends_K_2_5 = (last__d1__d0__d0 k_3) in
      (let rec _lh_ends_K_1_5 = (head__d1__d0__d0 k_3) in
        (let rec t_1_1_1 = (let rec t_1_1_2 = (fun ys_2_8 -> 
          ys_2_8) in
          (let rec h_1_0_3 = _lh_ends_K_2_5 in
            (fun ys_2_9 -> 
              (let rec t_1_1_3 = ((mappend__d2__d0__d0 t_1_1_2) ys_2_9) in
                (let rec h_1_0_4 = h_1_0_3 in
                  (fun f_1_0_9 i_1_4 -> 
                    ((f_1_0_9 h_1_0_4) (((foldr__d1__d0__d0 f_1_0_9) i_1_4) t_1_1_3)))))))) in
          (let rec h_1_0_5 = _lh_ends_K_1_5 in
            (fun ys_3_0 -> 
              (let rec t_1_1_4 = ((mappend__d2__d0__d1 t_1_1_1) ys_3_0) in
                (let rec h_1_0_6 = h_1_0_5 in
                  (fun f_1_1_0 i_1_5 -> 
                    ((f_1_1_0 h_1_0_6) (((foldr__d1__d0__d1 f_1_1_0) i_1_5) t_1_1_4)))))))))))) _lh_attribkeys_arg1_3)
and attribkeys__d1__d1__d0 _lh_attribkeys_arg1_4 =
  ((map__d5__d1__d0 (fun k_4 -> 
    (let rec _lh_ends_K_2_6 = (last__d1__d1__d0 k_4) in
      (let rec _lh_ends_K_1_6 = (head__d1__d1__d0 k_4) in
        (let rec t_1_1_7 = (let rec t_1_1_8 = (fun ys_3_3 -> 
          ys_3_3) in
          (let rec h_1_0_9 = _lh_ends_K_2_6 in
            (fun ys_3_4 -> 
              (let rec t_1_1_9 = ((mappend__d2__d1__d0 t_1_1_8) ys_3_4) in
                (let rec h_1_1_0 = h_1_0_9 in
                  (fun f_1_1_9 i_1_6 -> 
                    ((f_1_1_9 h_1_1_0) (((foldr__d1__d1__d0 f_1_1_9) i_1_6) t_1_1_9)))))))) in
          (let rec h_1_1_1 = _lh_ends_K_1_6 in
            (fun ys_3_5 -> 
              (let rec t_1_2_0 = ((mappend__d2__d1__d1 t_1_1_7) ys_3_5) in
                (let rec h_1_1_2 = h_1_1_1 in
                  (fun f_1_2_0 i_1_7 -> 
                    ((f_1_2_0 h_1_1_2) (((foldr__d1__d1__d1 f_1_2_0) i_1_7) t_1_2_0)))))))))))) _lh_attribkeys_arg1_4)
and blocked'__d0__d0__d0 _lh_blocked'_arg1_1 _lh_blocked'_arg2_1 =
  (match _lh_blocked'_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_C_1_1) -> 
      (let rec ds'_1 = ((union__d0__d0__d0 _lh_blocked'_arg1_1) (ends__d0__d0__d0 _lh_blocked'_LH_C_0_1)) in
        (let rec _lh_matchIdent_2_7 = ((partition'__d0__d0__d0 (fun x_3 -> 
          ((subset__d0__d0__d0 (ends__d1__d0__d0 x_3)) ds'_1))) _lh_blocked'_LH_C_1_1) in
          (match _lh_matchIdent_2_7 with
            | `LH_P2(_lh_blocked'_LH_P2_0_1, _lh_blocked'_LH_P2_1_1) -> 
              ((mappend__d0__d0__d0 (let rec t_1_3_7 = _lh_blocked'_LH_P2_0_1 in
                (let rec h_1_2_5 = _lh_blocked'_LH_C_0_1 in
                  (fun ys_4_4 -> 
                    (`LH_C(h_1_2_5, ((mappend__d0__d0__d1 t_1_3_7) ys_4_4))))))) ((blocked'__d0__d0__d0 ds'_1) _lh_blocked'_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and blocked__d0__d0__d0 _lh_blocked_arg1_1 =
  ((blocked'__d0__d0__d0 (`LH_N)) _lh_blocked_arg1_1)
and cichelli__d0__d0__d0 _lh_cichelli_arg1_1 =
  (let rec attribkeys'_1 = (attribkeys__d0__d0__d0 ((mappend__d4__d0__d4 (keys__d2__d0__d0 0)) ((take__d0__d0__d4 (_lh_cichelli_arg1_1 mod 2)) (keys__d3__d0__d0 0)))) in
    (let rec hashkeys_1 = ((fun _lh_funcomp_x_1 -> 
      (blocked__d0__d0__d0 (freqsorted__d0__d0__d0 _lh_funcomp_x_1))) attribkeys'_1) in
      (findhash__d0__d0__d0 hashkeys_1)))
and ends__d0__d0__d0 _lh_ends_arg1_6 =
  (match _lh_ends_arg1_6 with
    | `K(_lh_ends_K_0_3, _lh_ends_K_1_7, _lh_ends_K_2_7, _lh_ends_K_3_3) -> 
      (let rec _lh_listcomp_fun_ls_t_1_7 = (let rec _lh_listcomp_fun_ls_t_1_8 = (fun _lh_listcomp_fun_3_4 _lh_union_arg1_5 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_1_7 = _lh_ends_K_2_7 in
          (fun _lh_listcomp_fun_3_5 _lh_union_arg1_6 -> 
            (if (not ((member__d1__d0__d0 _lh_listcomp_fun_ls_h_1_7) _lh_union_arg1_6)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_7, (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_1_8)))
            else
              (_lh_listcomp_fun_3_5 _lh_listcomp_fun_ls_t_1_8))))) in
        (let rec _lh_listcomp_fun_ls_h_1_8 = _lh_ends_K_1_7 in
          (fun _lh_listcomp_fun_3_6 _lh_union_arg1_7 -> 
            (if (not ((member__d1__d0__d1 _lh_listcomp_fun_ls_h_1_8) _lh_union_arg1_7)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1_8, (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_1_7)))
            else
              (_lh_listcomp_fun_3_6 _lh_listcomp_fun_ls_t_1_7)))))
    | _ -> 
      (failwith "error"))
and ends__d1__d0__d0 _lh_ends_arg1_4 =
  (match _lh_ends_arg1_4 with
    | `K(_lh_ends_K_0_2, _lh_ends_K_1_4, _lh_ends_K_2_4, _lh_ends_K_3_2) -> 
      (let rec _lh_all_LH_C_1_2 = (let rec _lh_all_LH_C_1_3 = (fun _lh_all_arg1_5 -> 
        true) in
        (let rec _lh_all_LH_C_0_2 = _lh_ends_K_2_4 in
          (fun _lh_all_arg1_6 -> 
            (if (_lh_all_arg1_6 _lh_all_LH_C_0_2) then
              ((all__d0__d0__d0 _lh_all_arg1_6) _lh_all_LH_C_1_3)
            else
              false)))) in
        (let rec _lh_all_LH_C_0_3 = _lh_ends_K_1_4 in
          (fun _lh_all_arg1_7 -> 
            (if (_lh_all_arg1_7 _lh_all_LH_C_0_3) then
              ((all__d0__d0__d1 _lh_all_arg1_7) _lh_all_LH_C_1_2)
            else
              false))))
    | _ -> 
      (failwith "error"))
and enumFromTo__d0__d0__d0 a_1_7 b_1_7 _lh_popOutId_0_7 _lh_popOutId_1_7 =
  (if (a_1_7 <= b_1_7) then
    (let rec t_1_2_1 = ((enumFromTo__d0__d0__d0 (a_1_7 + 1)) b_1_7) in
      (let rec h_1_1_3 = a_1_7 in
        (let rec _lh_first_LH_C_1_1_4 = ((map__d1__d1__d0 _lh_popOutId_0_7) t_1_2_1) in
          (let rec _lh_first_LH_C_0_1_4 = (_lh_popOutId_0_7 h_1_1_3) in
            (let rec _lh_matchIdent_2_3 = _lh_first_LH_C_0_1_4 in
              (match _lh_matchIdent_2_3 with
                | `YesIts(_lh_first_YesIts_0_1_4, _lh_first_YesIts_1_1_4) -> 
                  (`YesIts((_lh_popOutId_1_7 + _lh_first_YesIts_0_1_4), _lh_first_YesIts_1_1_4))
                | `NotEver(_lh_first_NotEver_0_1_4) -> 
                  ((first__d0__d1__d0 (_lh_popOutId_1_7 + _lh_first_NotEver_0_1_4)) _lh_first_LH_C_1_1_4)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_7)))
and enumFromTo__d0__d1__d0 a_1_8 b_1_8 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (a_1_8 <= b_1_8) then
    (let rec t_1_2_8 = ((enumFromTo__d0__d1__d0 (a_1_8 + 1)) b_1_8) in
      (let rec h_1_1_6 = a_1_8 in
        (let rec _lh_first_LH_C_1_1_5 = ((map__d1__d0__d0 _lh_popOutId_0_0) t_1_2_8) in
          (let rec _lh_first_LH_C_0_1_5 = (_lh_popOutId_0_0 h_1_1_6) in
            (let rec _lh_matchIdent_2_4 = _lh_first_LH_C_0_1_5 in
              (match _lh_matchIdent_2_4 with
                | `YesIts(_lh_first_YesIts_0_1_5, _lh_first_YesIts_1_1_5) -> 
                  (`YesIts((_lh_popOutId_1_0 + _lh_first_YesIts_0_1_5), _lh_first_YesIts_1_1_5))
                | `NotEver(_lh_first_NotEver_0_1_5) -> 
                  ((first__d0__d0__d0 (_lh_popOutId_1_0 + _lh_first_NotEver_0_1_5)) _lh_first_LH_C_1_1_5)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_0)))
and enumFromTo__d1__d0__d0 a_1_4 b_1_4 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (if (a_1_4 <= b_1_4) then
    (let rec t_9_8 = ((enumFromTo__d1__d0__d0 (a_1_4 + 1)) b_1_4) in
      (let rec h_9_0 = a_1_4 in
        (let rec _lh_first_LH_C_1_1_2 = ((map__d2__d1__d0 _lh_popOutId_0_4) t_9_8) in
          (let rec _lh_first_LH_C_0_1_2 = (_lh_popOutId_0_4 h_9_0) in
            (let rec _lh_matchIdent_2_0 = _lh_first_LH_C_0_1_2 in
              (match _lh_matchIdent_2_0 with
                | `YesIts(_lh_first_YesIts_0_1_2, _lh_first_YesIts_1_1_2) -> 
                  (`YesIts((_lh_popOutId_1_4 + _lh_first_YesIts_0_1_2), _lh_first_YesIts_1_1_2))
                | `NotEver(_lh_first_NotEver_0_1_2) -> 
                  ((first__d1__d1__d0 (_lh_popOutId_1_4 + _lh_first_NotEver_0_1_2)) _lh_first_LH_C_1_1_2)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_4)))
and enumFromTo__d1__d1__d0 a_1_5 b_1_5 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (if (a_1_5 <= b_1_5) then
    (let rec t_1_1_5 = ((enumFromTo__d1__d1__d0 (a_1_5 + 1)) b_1_5) in
      (let rec h_1_0_7 = a_1_5 in
        (let rec _lh_first_LH_C_1_1_3 = ((map__d2__d0__d0 _lh_popOutId_0_2) t_1_1_5) in
          (let rec _lh_first_LH_C_0_1_3 = (_lh_popOutId_0_2 h_1_0_7) in
            (let rec _lh_matchIdent_2_1 = _lh_first_LH_C_0_1_3 in
              (match _lh_matchIdent_2_1 with
                | `YesIts(_lh_first_YesIts_0_1_3, _lh_first_YesIts_1_1_3) -> 
                  (`YesIts((_lh_popOutId_1_2 + _lh_first_YesIts_0_1_3), _lh_first_YesIts_1_1_3))
                | `NotEver(_lh_first_NotEver_0_1_3) -> 
                  ((first__d1__d0__d0 (_lh_popOutId_1_2 + _lh_first_NotEver_0_1_3)) _lh_first_LH_C_1_1_3)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_2)))
and enumFromTo__d2__d0__d0 a_1_3 b_1_3 _lh_popOutId_0_9 _lh_popOutId_1_9 =
  (if (a_1_3 <= b_1_3) then
    (let rec t_9_6 = ((enumFromTo__d2__d0__d0 (a_1_3 + 1)) b_1_3) in
      (let rec h_8_8 = a_1_3 in
        (let rec _lh_first_LH_C_1_1_1 = ((map__d3__d1__d0 _lh_popOutId_0_9) t_9_6) in
          (let rec _lh_first_LH_C_0_1_1 = (_lh_popOutId_0_9 h_8_8) in
            (let rec _lh_matchIdent_1_8 = _lh_first_LH_C_0_1_1 in
              (match _lh_matchIdent_1_8 with
                | `YesIts(_lh_first_YesIts_0_1_1, _lh_first_YesIts_1_1_1) -> 
                  (`YesIts((_lh_popOutId_1_9 + _lh_first_YesIts_0_1_1), _lh_first_YesIts_1_1_1))
                | `NotEver(_lh_first_NotEver_0_1_1) -> 
                  ((first__d2__d1__d0 (_lh_popOutId_1_9 + _lh_first_NotEver_0_1_1)) _lh_first_LH_C_1_1_1)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_9)))
and enumFromTo__d2__d1__d0 a_1_0 b_1_0 _lh_popOutId_0_5 _lh_popOutId_1_5 =
  (if (a_1_0 <= b_1_0) then
    (let rec t_7_9 = ((enumFromTo__d2__d1__d0 (a_1_0 + 1)) b_1_0) in
      (let rec h_7_1 = a_1_0 in
        (let rec _lh_first_LH_C_1_8 = ((map__d3__d0__d0 _lh_popOutId_0_5) t_7_9) in
          (let rec _lh_first_LH_C_0_8 = (_lh_popOutId_0_5 h_7_1) in
            (let rec _lh_matchIdent_1_5 = _lh_first_LH_C_0_8 in
              (match _lh_matchIdent_1_5 with
                | `YesIts(_lh_first_YesIts_0_8, _lh_first_YesIts_1_8) -> 
                  (`YesIts((_lh_popOutId_1_5 + _lh_first_YesIts_0_8), _lh_first_YesIts_1_8))
                | `NotEver(_lh_first_NotEver_0_8) -> 
                  ((first__d2__d0__d0 (_lh_popOutId_1_5 + _lh_first_NotEver_0_8)) _lh_first_LH_C_1_8)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_5)))
and enumFromTo__d3__d0__d0 a_1_6 b_1_6 _lh_popOutId_0_6 _lh_popOutId_1_6 =
  (if (a_1_6 <= b_1_6) then
    (let rec _lh_listcomp_fun_ls_t_1_6 = ((enumFromTo__d3__d0__d0 (a_1_6 + 1)) b_1_6) in
      (let rec _lh_listcomp_fun_ls_h_1_6 = a_1_6 in
        (let rec _lh_listcomp_fun_3_1 = (fun _lh_listcomp_fun_para_7 -> 
          ((((_lh_listcomp_fun_para_7 _lh_listcomp_fun_ls_h_1_6) _lh_listcomp_fun_3_1) _lh_listcomp_fun_ls_t_1_6) _lh_popOutId_0_6)) in
          (_lh_listcomp_fun_3_1 ((enumFromTo__d4__d0__d0 0) _lh_popOutId_1_6)))))
  else
    (fun f_1_1_5 _lh_first_arg1_3_9 -> 
      (`NotEver(_lh_first_arg1_3_9))))
and enumFromTo__d3__d1__d0 a_1_9 b_1_9 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (a_1_9 <= b_1_9) then
    (let rec _lh_listcomp_fun_ls_t_1_9 = ((enumFromTo__d3__d1__d0 (a_1_9 + 1)) b_1_9) in
      (let rec _lh_listcomp_fun_ls_h_1_9 = a_1_9 in
        (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_9 -> 
          ((((_lh_listcomp_fun_para_9 _lh_listcomp_fun_ls_h_1_9) _lh_listcomp_fun_3_8) _lh_listcomp_fun_ls_t_1_9) _lh_popOutId_0_3)) in
          (_lh_listcomp_fun_3_8 ((enumFromTo__d4__d1__d0 0) _lh_popOutId_1_3)))))
  else
    (fun f_1_5_4 _lh_first_arg1_5_2 -> 
      (`NotEver(_lh_first_arg1_5_2))))
and enumFromTo__d4__d0__d0 a_1_1 b_1_1 _lh_popOutId_0_8 _lh_popOutId_1_8 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (a_1_1 <= b_1_1) then
    (fun f_8_4 _lh_first_arg1_2_7 -> 
      (let rec _lh_listcomp_fun_ls_t_1_0 = ((enumFromTo__d4__d0__d0 (a_1_1 + 1)) b_1_1) in
        (let rec _lh_listcomp_fun_ls_h_1_0 = a_1_1 in
          (let rec t_9_3 = (_lh_popOutId_1_8 _lh_listcomp_fun_ls_t_1_0) in
            (let rec h_8_5 = (let rec _lh_findhash'_LH_P2_1_8 = _lh_listcomp_fun_ls_h_1_0 in
              (let rec _lh_findhash'_LH_P2_0_4 = _lh_popOutId_0_8 in
                (fun _lh_findhash'_K_1_1_0 _lh_findhash'_K_2_1_0 try_1_0 -> 
                  (try_1_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_1_0, _lh_findhash'_LH_P2_0_4)), (`LH_C((`LH_P2(_lh_findhash'_K_2_1_0, _lh_findhash'_LH_P2_1_8)), (`LH_N))))))))) in
              (let rec _lh_first_LH_C_1_9 = ((map__d4__d1__d0 f_8_4) t_9_3) in
                (let rec _lh_first_LH_C_0_9 = (f_8_4 h_8_5) in
                  (let rec _lh_matchIdent_1_6 = _lh_first_LH_C_0_9 in
                    (match _lh_matchIdent_1_6 with
                      | `YesIts(_lh_first_YesIts_0_9, _lh_first_YesIts_1_9) -> 
                        (`YesIts((_lh_first_arg1_2_7 + _lh_first_YesIts_0_9), _lh_first_YesIts_1_9))
                      | `NotEver(_lh_first_NotEver_0_9) -> 
                        ((first__d3__d1__d0 (_lh_first_arg1_2_7 + _lh_first_NotEver_0_9)) _lh_first_LH_C_1_9)
                      | _ -> 
                        (failwith "error"))))))))))
  else
    (_lh_popOutId_3_1 _lh_popOutId_2_1))
and enumFromTo__d4__d1__d0 a_1_2 b_1_2 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_1_2 <= b_1_2) then
    (fun f_8_6 _lh_first_arg1_2_8 -> 
      (let rec _lh_listcomp_fun_ls_t_1_3 = ((enumFromTo__d4__d1__d0 (a_1_2 + 1)) b_1_2) in
        (let rec _lh_listcomp_fun_ls_h_1_3 = a_1_2 in
          (let rec t_9_5 = (_lh_popOutId_1_1 _lh_listcomp_fun_ls_t_1_3) in
            (let rec h_8_7 = (let rec _lh_findhash'_LH_P2_1_9 = _lh_listcomp_fun_ls_h_1_3 in
              (let rec _lh_findhash'_LH_P2_0_5 = _lh_popOutId_0_1 in
                (fun _lh_findhash'_K_1_1_1 _lh_findhash'_K_2_1_1 try_1_1 -> 
                  (try_1_1 (`LH_C((`LH_P2(_lh_findhash'_K_1_1_1, _lh_findhash'_LH_P2_0_5)), (`LH_C((`LH_P2(_lh_findhash'_K_2_1_1, _lh_findhash'_LH_P2_1_9)), (`LH_N))))))))) in
              (let rec _lh_first_LH_C_1_1_0 = ((map__d4__d0__d0 f_8_6) t_9_5) in
                (let rec _lh_first_LH_C_0_1_0 = (f_8_6 h_8_7) in
                  (let rec _lh_matchIdent_1_7 = _lh_first_LH_C_0_1_0 in
                    (match _lh_matchIdent_1_7 with
                      | `YesIts(_lh_first_YesIts_0_1_0, _lh_first_YesIts_1_1_0) -> 
                        (`YesIts((_lh_first_arg1_2_8 + _lh_first_YesIts_0_1_0), _lh_first_YesIts_1_1_0))
                      | `NotEver(_lh_first_NotEver_0_1_0) -> 
                        ((first__d3__d0__d0 (_lh_first_arg1_2_8 + _lh_first_NotEver_0_1_0)) _lh_first_LH_C_1_1_0)
                      | _ -> 
                        (failwith "error"))))))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and findhash'__d0__d0__d0 _lh_findhash'_arg1_3 _lh_findhash'_arg2_3 _lh_findhash'_arg3_3 =
  (match _lh_findhash'_arg3_3 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_3))
    | `LH_C(_lh_findhash'_LH_C_0_3, _lh_findhash'_LH_C_1_5) -> 
      (match _lh_findhash'_LH_C_0_3 with
        | `K(_lh_findhash'_K_0_3, _lh_findhash'_K_1_1_8, _lh_findhash'_K_2_1_8, _lh_findhash'_K_3_3) -> 
          (let rec try_1_8 = (fun newAssocs_3 -> 
            (let rec newCharAssocs_5 = ((mappend__d3__d1__d0 newAssocs_3) _lh_findhash'_arg2_3) in
              (let rec _lh_matchIdent_2_8 = ((hinsert__d0__d1__d0 ((hash__d0__d1__d0 newCharAssocs_5) (let rec _lh_hash_K_3_3 = _lh_findhash'_K_3_3 in
                (let rec _lh_hash_K_2_3 = _lh_findhash'_K_2_1_8 in
                  (let rec _lh_hash_K_1_3 = _lh_findhash'_K_1_1_8 in
                    (fun _lh_hash_arg1_7 -> 
                      ((_lh_hash_K_3_3 + ((assoc__d0__d1__d0 _lh_hash_K_1_3) _lh_hash_arg1_7)) + ((assoc__d1__d1__d0 _lh_hash_K_2_3) _lh_hash_arg1_7)))))))) _lh_findhash'_arg1_3) in
                ((_lh_matchIdent_2_8 _lh_findhash'_LH_C_1_5) newCharAssocs_5)))) in
            (let rec maxval_2_2 = (length__d3__d1__d0 (freqtab__d0__d1__d0 0)) in
              (let rec _lh_matchIdent_2_9 = (let rec _lh_findhash'_LH_P2_1_1_5 = ((assocm__d1__d0__d0 _lh_findhash'_K_2_1_8) _lh_findhash'_arg2_3) in
                (let rec _lh_findhash'_LH_P2_0_7 = ((assocm__d0__d0__d0 _lh_findhash'_K_1_1_8) _lh_findhash'_arg2_3) in
                  (fun _lh_findhash'_K_1_1_9 _lh_findhash'_K_2_1_9 maxval_2_3 try_1_9 -> 
                    (((((_lh_findhash'_LH_P2_0_7 _lh_findhash'_K_1_1_9) _lh_findhash'_K_2_1_9) _lh_findhash'_LH_P2_1_1_5) maxval_2_3) try_1_9)))) in
                ((((_lh_matchIdent_2_9 _lh_findhash'_K_1_1_8) _lh_findhash'_K_2_1_8) maxval_2_2) try_1_8))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and findhash'__d0__d1__d0 _lh_findhash'_arg1_2 _lh_findhash'_arg2_2 _lh_findhash'_arg3_2 =
  (match _lh_findhash'_arg3_2 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_2))
    | `LH_C(_lh_findhash'_LH_C_0_2, _lh_findhash'_LH_C_1_4) -> 
      (match _lh_findhash'_LH_C_0_2 with
        | `K(_lh_findhash'_K_0_2, _lh_findhash'_K_1_1_6, _lh_findhash'_K_2_1_6, _lh_findhash'_K_3_2) -> 
          (let rec try_1_6 = (fun newAssocs_2 -> 
            (let rec newCharAssocs_4 = ((mappend__d3__d0__d0 newAssocs_2) _lh_findhash'_arg2_2) in
              (let rec _lh_matchIdent_2_5 = ((hinsert__d0__d0__d0 ((hash__d0__d0__d0 newCharAssocs_4) (let rec _lh_hash_K_3_2 = _lh_findhash'_K_3_2 in
                (let rec _lh_hash_K_2_2 = _lh_findhash'_K_2_1_6 in
                  (let rec _lh_hash_K_1_2 = _lh_findhash'_K_1_1_6 in
                    (fun _lh_hash_arg1_6 -> 
                      ((_lh_hash_K_3_2 + ((assoc__d0__d0__d0 _lh_hash_K_1_2) _lh_hash_arg1_6)) + ((assoc__d1__d0__d0 _lh_hash_K_2_2) _lh_hash_arg1_6)))))))) _lh_findhash'_arg1_2) in
                (match _lh_matchIdent_2_5 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_1_0) -> 
                    (((findhash'__d0__d1__d0 _lh_findhash'_Just_0_1_0) newCharAssocs_4) _lh_findhash'_LH_C_1_4)
                  | _ -> 
                    (failwith "error"))))) in
            (let rec maxval_1_8 = (length__d3__d0__d0 (freqtab__d0__d0__d0 0)) in
              (let rec _lh_matchIdent_2_6 = (let rec _lh_findhash'_LH_P2_1_1_4 = ((assocm__d1__d1__d0 _lh_findhash'_K_2_1_6) _lh_findhash'_arg2_2) in
                (let rec _lh_findhash'_LH_P2_0_6 = ((assocm__d0__d1__d0 _lh_findhash'_K_1_1_6) _lh_findhash'_arg2_2) in
                  (fun _lh_findhash'_K_1_1_7 _lh_findhash'_K_2_1_7 maxval_1_9 try_1_7 -> 
                    (((((_lh_findhash'_LH_P2_0_6 _lh_findhash'_K_1_1_7) _lh_findhash'_K_2_1_7) _lh_findhash'_LH_P2_1_1_4) maxval_1_9) try_1_7)))) in
                ((((_lh_matchIdent_2_6 _lh_findhash'_K_1_1_6) _lh_findhash'_K_2_1_6) maxval_1_8) try_1_6))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and findhash__d0__d0__d0 _lh_findhash_arg1_1 =
  (((findhash'__d0__d0__d0 (let rec _lh_hinsert_H_2_3 = (`LH_N) in
    (let rec _lh_hinsert_H_1_3 = (fun _lh_maxm_arg2_5 -> 
      _lh_maxm_arg2_5) in
      (let rec _lh_hinsert_H_0_3 = (fun _lh_minm_arg2_5 -> 
        _lh_minm_arg2_5) in
        (fun _lh_hinsert_arg1_4 -> 
          (let rec lo'_3 = ((minm__d0__d1__d0 _lh_hinsert_H_0_3) _lh_hinsert_arg1_4) in
            (let rec hi'_3 = ((maxm__d0__d1__d0 _lh_hinsert_H_1_3) _lh_hinsert_arg1_4) in
              (if (((member__d2__d1__d0 _lh_hinsert_arg1_4) _lh_hinsert_H_2_3) || (((1 + hi'_3) - lo'_3) > (length__d2__d1__d4 (keys__d1__d1__d0 0)))) then
                (fun _lh_findhash'_LH_C_1_6 newCharAssocs_6 -> 
                  (`NotEver(1)))
              else
                (let rec _lh_findhash'_Just_0_1_1 = (`H((`Just(lo'_3)), (`Just(hi'_3)), (`LH_C(_lh_hinsert_arg1_4, _lh_hinsert_H_2_3)))) in
                  (fun _lh_findhash'_LH_C_1_7 newCharAssocs_7 -> 
                    (((findhash'__d0__d1__d0 _lh_findhash'_Just_0_1_1) newCharAssocs_7) _lh_findhash'_LH_C_1_7))))))))))) (`LH_N)) _lh_findhash_arg1_1)
and firstSuccess__d0__d0__d0 _lh_firstSuccess_arg1_1_3 _lh_firstSuccess_arg2_1_3 =
  ((first__d0__d0__d1 0) ((map__d1__d0__d1 _lh_firstSuccess_arg1_1_3) _lh_firstSuccess_arg2_1_3))
and firstSuccess__d0__d1__d0 _lh_firstSuccess_arg1_8 _lh_firstSuccess_arg2_8 =
  ((first__d0__d1__d1 0) ((map__d1__d1__d1 _lh_firstSuccess_arg1_8) _lh_firstSuccess_arg2_8))
and firstSuccess__d1__d0__d0 _lh_firstSuccess_arg1_1_1 _lh_firstSuccess_arg2_1_1 =
  ((first__d1__d0__d1 0) ((map__d2__d0__d1 _lh_firstSuccess_arg1_1_1) _lh_firstSuccess_arg2_1_1))
and firstSuccess__d1__d1__d0 _lh_firstSuccess_arg1_1_0 _lh_firstSuccess_arg2_1_0 =
  ((first__d1__d1__d1 0) ((map__d2__d1__d1 _lh_firstSuccess_arg1_1_0) _lh_firstSuccess_arg2_1_0))
and firstSuccess__d2__d0__d0 _lh_firstSuccess_arg1_9 _lh_firstSuccess_arg2_9 =
  ((first__d2__d0__d1 0) ((map__d3__d0__d1 _lh_firstSuccess_arg1_9) _lh_firstSuccess_arg2_9))
and firstSuccess__d2__d1__d0 _lh_firstSuccess_arg1_1_4 _lh_firstSuccess_arg2_1_4 =
  ((first__d2__d1__d1 0) ((map__d3__d1__d1 _lh_firstSuccess_arg1_1_4) _lh_firstSuccess_arg2_1_4))
and firstSuccess__d3__d0__d0 _lh_firstSuccess_arg1_1_5 _lh_firstSuccess_arg2_1_5 =
  ((first__d3__d0__d1 0) ((map__d4__d0__d1 _lh_firstSuccess_arg1_1_5) _lh_firstSuccess_arg2_1_5))
and firstSuccess__d3__d1__d0 _lh_firstSuccess_arg1_1_2 _lh_firstSuccess_arg2_1_2 =
  ((first__d3__d1__d1 0) ((map__d4__d1__d1 _lh_firstSuccess_arg1_1_2) _lh_firstSuccess_arg2_1_2))
and freqtab__d0__d0__d0 _lh_freqtab_arg1_3 =
  (histo__d0__d0__d0 (concat__d0__d0__d0 ((map__d6__d0__d4 ends__d2__d0__d0) (attribkeys__d1__d0__d0 (keys__d0__d0__d0 0)))))
and freqtab__d0__d1__d0 _lh_freqtab_arg1_2 =
  (histo__d0__d1__d0 (concat__d0__d1__d0 ((map__d6__d1__d4 ends__d2__d1__d0) (attribkeys__d1__d1__d0 (keys__d0__d1__d0 0)))))
and hinsert__d0__d0__d0 _lh_hinsert_arg1_3 _lh_hinsert_arg2_2 =
  (match _lh_hinsert_arg2_2 with
    | `H(_lh_hinsert_H_0_2, _lh_hinsert_H_1_2, _lh_hinsert_H_2_2) -> 
      (let rec lo'_2 = ((minm__d0__d0__d0 _lh_hinsert_H_0_2) _lh_hinsert_arg1_3) in
        (let rec hi'_2 = ((maxm__d0__d0__d0 _lh_hinsert_H_1_2) _lh_hinsert_arg1_3) in
          (if (((member__d2__d0__d0 _lh_hinsert_arg1_3) _lh_hinsert_H_2_2) || (((1 + hi'_2) - lo'_2) > (length__d2__d0__d4 (keys__d1__d0__d0 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_2)), (`Just(hi'_2)), (`LH_C(_lh_hinsert_arg1_3, _lh_hinsert_H_2_2)))))))))
    | _ -> 
      (failwith "error"))
and histo__d0__d0__d0 _lh_histo_arg1_2 =
  (((foldr__d1__d0__d2 histins__d0__d0__d0) (`LH_N)) _lh_histo_arg1_2)
and histo__d0__d1__d0 _lh_histo_arg1_3 =
  (((foldr__d1__d1__d2 histins__d0__d1__d0) (`LH_N)) _lh_histo_arg1_3)
and keys__d0__d0__d0 _lh_keys_arg1_7 f_1_0_7 f_1_0_8 _lh_dummy_2_9 =
  (let rec t_9_9 = (let rec t_1_0_0 = (let rec t_1_0_1 = (let rec t_1_0_2 = (fun f_9_8 f_9_9 _lh_dummy_2_5 f_1_0_0 i_1_3 -> 
    i_1_3) in
    (let rec h_9_1 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_1_0_1 -> 
        (let rec t_1_0_3 = ((map__d5__d0__d1 f_1_0_1) t_1_0_2) in
          (let rec h_9_2 = (f_1_0_1 h_9_1) in
            (fun f_1_0_2 -> 
              (let rec t_1_0_4 = ((map__d6__d0__d0 f_1_0_2) t_1_0_3) in
                (let rec h_9_3 = (f_1_0_2 h_9_2) in
                  (fun _lh_dummy_2_6 -> 
                    ((mappend__d2__d0__d2 h_9_3) (concat__d0__d0__d1 t_1_0_4))))))))))) in
    (let rec h_9_4 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_1_0_3 -> 
        (let rec t_1_0_5 = ((map__d5__d0__d2 f_1_0_3) t_1_0_1) in
          (let rec h_9_5 = (f_1_0_3 h_9_4) in
            (fun f_1_0_4 -> 
              (let rec t_1_0_6 = ((map__d6__d0__d1 f_1_0_4) t_1_0_5) in
                (let rec h_9_6 = (f_1_0_4 h_9_5) in
                  (fun _lh_dummy_2_7 -> 
                    ((mappend__d2__d0__d3 h_9_6) (concat__d0__d0__d2 t_1_0_6))))))))))) in
    (let rec h_9_7 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_1_0_5 -> 
        (let rec t_1_0_7 = ((map__d5__d0__d3 f_1_0_5) t_1_0_0) in
          (let rec h_9_8 = (f_1_0_5 h_9_7) in
            (fun f_1_0_6 -> 
              (let rec t_1_0_8 = ((map__d6__d0__d2 f_1_0_6) t_1_0_7) in
                (let rec h_9_9 = (f_1_0_6 h_9_8) in
                  (fun _lh_dummy_2_8 -> 
                    ((mappend__d2__d0__d4 h_9_9) (concat__d0__d0__d3 t_1_0_8))))))))))) in
    (let rec h_1_0_0 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_1_0_9 = ((map__d5__d0__d4 f_1_0_7) t_9_9) in
        (let rec h_1_0_1 = (f_1_0_7 h_1_0_0) in
          (let rec t_1_1_0 = ((map__d6__d0__d3 f_1_0_8) t_1_0_9) in
            (let rec h_1_0_2 = (f_1_0_8 h_1_0_1) in
              ((mappend__d2__d0__d5 h_1_0_2) (concat__d0__d0__d4 t_1_1_0))))))))
and keys__d0__d1__d0 _lh_keys_arg1_6 f_8_0 f_8_1 _lh_dummy_2_4 =
  (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (fun f_7_1 f_7_2 _lh_dummy_2_0 f_7_3 i_9 -> 
    i_9) in
    (let rec h_7_3 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_7_4 -> 
        (let rec t_8_5 = ((map__d5__d1__d1 f_7_4) t_8_4) in
          (let rec h_7_4 = (f_7_4 h_7_3) in
            (fun f_7_5 -> 
              (let rec t_8_6 = ((map__d6__d1__d0 f_7_5) t_8_5) in
                (let rec h_7_5 = (f_7_5 h_7_4) in
                  (fun _lh_dummy_2_1 -> 
                    ((mappend__d2__d1__d2 h_7_5) (concat__d0__d1__d1 t_8_6))))))))))) in
    (let rec h_7_6 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_7_6 -> 
        (let rec t_8_7 = ((map__d5__d1__d2 f_7_6) t_8_3) in
          (let rec h_7_7 = (f_7_6 h_7_6) in
            (fun f_7_7 -> 
              (let rec t_8_8 = ((map__d6__d1__d1 f_7_7) t_8_7) in
                (let rec h_7_8 = (f_7_7 h_7_7) in
                  (fun _lh_dummy_2_2 -> 
                    ((mappend__d2__d1__d3 h_7_8) (concat__d0__d1__d2 t_8_8))))))))))) in
    (let rec h_7_9 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_7_8 -> 
        (let rec t_8_9 = ((map__d5__d1__d3 f_7_8) t_8_2) in
          (let rec h_8_0 = (f_7_8 h_7_9) in
            (fun f_7_9 -> 
              (let rec t_9_0 = ((map__d6__d1__d2 f_7_9) t_8_9) in
                (let rec h_8_1 = (f_7_9 h_8_0) in
                  (fun _lh_dummy_2_3 -> 
                    ((mappend__d2__d1__d4 h_8_1) (concat__d0__d1__d3 t_9_0))))))))))) in
    (let rec h_8_2 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_9_1 = ((map__d5__d1__d4 f_8_0) t_8_1) in
        (let rec h_8_3 = (f_8_0 h_8_2) in
          (let rec t_9_2 = ((map__d6__d1__d3 f_8_1) t_9_1) in
            (let rec h_8_4 = (f_8_1 h_8_3) in
              ((mappend__d2__d1__d5 h_8_4) (concat__d0__d1__d4 t_9_2))))))))
and keys__d1__d0__d0 _lh_keys_arg1_8 _lh_dummy_3_4 =
  (let rec t_1_2_3 = (let rec t_1_2_4 = (let rec t_1_2_5 = (let rec t_1_2_6 = (fun _lh_dummy_3_0 -> 
    0) in
    (fun _lh_dummy_3_1 -> 
      (1 + (length__d2__d0__d0 t_1_2_6)))) in
    (fun _lh_dummy_3_2 -> 
      (1 + (length__d2__d0__d1 t_1_2_5)))) in
    (fun _lh_dummy_3_3 -> 
      (1 + (length__d2__d0__d2 t_1_2_4)))) in
    (1 + (length__d2__d0__d3 t_1_2_3)))
and keys__d1__d1__d0 _lh_keys_arg1_1_1 _lh_dummy_3_9 =
  (let rec t_1_4_9 = (let rec t_1_5_0 = (let rec t_1_5_1 = (let rec t_1_5_2 = (fun _lh_dummy_3_5 -> 
    0) in
    (fun _lh_dummy_3_6 -> 
      (1 + (length__d2__d1__d0 t_1_5_2)))) in
    (fun _lh_dummy_3_7 -> 
      (1 + (length__d2__d1__d1 t_1_5_1)))) in
    (fun _lh_dummy_3_8 -> 
      (1 + (length__d2__d1__d2 t_1_5_0)))) in
    (1 + (length__d2__d1__d3 t_1_4_9)))
and keys__d2__d0__d0 _lh_keys_arg1_1_0 ys_5_4 f_1_6_7 =
  (let rec t_1_4_1 = (let rec t_1_4_2 = (let rec t_1_4_3 = (let rec t_1_4_4 = (fun ys_5_0 -> 
    ys_5_0) in
    (let rec h_1_2_9 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun ys_5_1 -> 
        (let rec t_1_4_5 = ((mappend__d4__d0__d0 t_1_4_4) ys_5_1) in
          (let rec h_1_3_0 = h_1_2_9 in
            (fun f_1_6_4 -> 
              (`LH_C((f_1_6_4 h_1_3_0), ((map__d0__d0__d1 f_1_6_4) t_1_4_5))))))))) in
    (let rec h_1_3_1 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun ys_5_2 -> 
        (let rec t_1_4_6 = ((mappend__d4__d0__d1 t_1_4_3) ys_5_2) in
          (let rec h_1_3_2 = h_1_3_1 in
            (fun f_1_6_5 -> 
              (`LH_C((f_1_6_5 h_1_3_2), ((map__d0__d0__d2 f_1_6_5) t_1_4_6))))))))) in
    (let rec h_1_3_3 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun ys_5_3 -> 
        (let rec t_1_4_7 = ((mappend__d4__d0__d2 t_1_4_2) ys_5_3) in
          (let rec h_1_3_4 = h_1_3_3 in
            (fun f_1_6_6 -> 
              (`LH_C((f_1_6_6 h_1_3_4), ((map__d0__d0__d3 f_1_6_6) t_1_4_7))))))))) in
    (let rec h_1_3_5 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_1_4_8 = ((mappend__d4__d0__d3 t_1_4_1) ys_5_4) in
        (let rec h_1_3_6 = h_1_3_5 in
          (`LH_C((f_1_6_7 h_1_3_6), ((map__d0__d0__d4 f_1_6_7) t_1_4_8)))))))
and keys__d3__d0__d0 _lh_keys_arg1_9 n_1_8 f_1_5_1 =
  (let rec t_1_2_9 = (let rec t_1_3_0 = (let rec t_1_3_1 = (let rec t_1_3_2 = (fun n_1_4 f_1_4_7 -> 
    (`LH_N)) in
    (let rec h_1_1_7 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun n_1_5 -> 
        (let rec t_1_3_3 = ((take__d0__d0__d0 (n_1_5 - 1)) t_1_3_2) in
          (let rec h_1_1_8 = h_1_1_7 in
            (fun f_1_4_8 -> 
              (`LH_C((f_1_4_8 h_1_1_8), ((map__d0__d0__d5 f_1_4_8) t_1_3_3))))))))) in
    (let rec h_1_1_9 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun n_1_6 -> 
        (let rec t_1_3_4 = ((take__d0__d0__d1 (n_1_6 - 1)) t_1_3_1) in
          (let rec h_1_2_0 = h_1_1_9 in
            (fun f_1_4_9 -> 
              (`LH_C((f_1_4_9 h_1_2_0), ((map__d0__d0__d6 f_1_4_9) t_1_3_4))))))))) in
    (let rec h_1_2_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun n_1_7 -> 
        (let rec t_1_3_5 = ((take__d0__d0__d2 (n_1_7 - 1)) t_1_3_0) in
          (let rec h_1_2_2 = h_1_2_1 in
            (fun f_1_5_0 -> 
              (`LH_C((f_1_5_0 h_1_2_2), ((map__d0__d0__d7 f_1_5_0) t_1_3_5))))))))) in
    (let rec h_1_2_3 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_1_3_6 = ((take__d0__d0__d3 (n_1_8 - 1)) t_1_2_9) in
        (let rec h_1_2_4 = h_1_2_3 in
          (`LH_C((f_1_5_1 h_1_2_4), ((map__d0__d0__d8 f_1_5_1) t_1_3_6)))))))
and maxm__d0__d0__d0 _lh_maxm_arg1_3 _lh_maxm_arg2_4 =
  (match _lh_maxm_arg1_3 with
    | `Nothing -> 
      _lh_maxm_arg2_4
    | `Just(_lh_maxm_Just_0_1) -> 
      ((max__d0__d0__d0 _lh_maxm_Just_0_1) _lh_maxm_arg2_4)
    | _ -> 
      (failwith "error"))
and minm__d0__d0__d0 _lh_minm_arg1_3 _lh_minm_arg2_4 =
  (match _lh_minm_arg1_3 with
    | `Nothing -> 
      _lh_minm_arg2_4
    | `Just(_lh_minm_Just_0_1) -> 
      ((min__d0__d0__d0 _lh_minm_Just_0_1) _lh_minm_arg2_4)
    | _ -> 
      (failwith "error"))
and partition'__d0__d0__d0 _lh_partition'_arg1_1 =
  ((foldr__d0__d0__d0 (select__d0__d0__d0 _lh_partition'_arg1_1)) (`LH_P2((fun ys_4_0 -> 
    ys_4_0), (`LH_N))))
and prog__d0__d0__d0 _lh_prog_arg1_1 =
  (cichelli__d0__d0__d0 _lh_prog_arg1_1)
and select__d0__d0__d0 _lh_select_arg1_1 _lh_select_arg2_1 _lh_select_arg3_1 =
  (match _lh_select_arg3_1 with
    | `LH_P2(_lh_select_LH_P2_0_1, _lh_select_LH_P2_1_1) -> 
      (if (_lh_select_arg1_1 _lh_select_arg2_1) then
        (`LH_P2((let rec t_1_5_3 = _lh_select_LH_P2_0_1 in
          (let rec h_1_3_7 = _lh_select_arg2_1 in
            (fun ys_5_6 -> 
              (`LH_C(h_1_3_7, ((mappend__d0__d0__d2 t_1_5_3) ys_5_6)))))), _lh_select_LH_P2_1_1))
      else
        (`LH_P2(_lh_select_LH_P2_0_1, (`LH_C(_lh_select_arg2_1, _lh_select_LH_P2_1_1)))))
    | _ -> 
      (failwith "error"))
and subset__d0__d0__d0 _lh_subset_arg1_1 _lh_subset_arg2_1 =
  ((all__d0__d0__d2 (fun x_2 -> 
    ((member__d0__d0__d0 x_2) _lh_subset_arg2_1))) _lh_subset_arg1_1)
and testCichelli_nofib__d0__d0__d0 _lh_testCichelli_nofib_arg1_1 =
  (prog__d0__d0__d0 _lh_testCichelli_nofib_arg1_1)
and union__d0__d0__d0 _lh_union_arg1_4 _lh_union_arg2_1 =
  ((mappend__d1__d0__d0 _lh_union_arg1_4) (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_5 -> 
    ((_lh_listcomp_fun_para_5 _lh_listcomp_fun_2_8) _lh_union_arg1_4)) in
    (_lh_listcomp_fun_2_8 _lh_union_arg2_1)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Cichelli_nofib" (fun () -> ignore ((testCichelli_nofib__d0 6)));
  Bench.Test.create ~name:"lumberhack_Cichelli_nofib" (fun () -> ignore ((testCichelli_nofib__d0__d0 6)));
  Bench.Test.create ~name:"lumberhack_pop_out_Cichelli_nofib" (fun () -> ignore ((testCichelli_nofib__d0__d0__d0 6)));
])
