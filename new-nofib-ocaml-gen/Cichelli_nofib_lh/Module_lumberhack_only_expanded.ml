

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
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
let rec assoc__d0 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc__d0 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (match _lh_assoc_arg2_2 with
    | `LH_C(_lh_assoc_LH_C_0_2, _lh_assoc_LH_C_1_2) -> 
      (match _lh_assoc_LH_C_0_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          (if (_lh_assoc_arg1_2 = _lh_assoc_LH_P2_0_2) then
            _lh_assoc_LH_P2_1_2
          else
            ((assoc__d1 _lh_assoc_arg1_2) _lh_assoc_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d0 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (`Just(_lh_assocm_LH_P2_1_1))
          else
            ((assocm__d0 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1 _lh_assocm_arg1_2 _lh_assocm_arg2_2 =
  (match _lh_assocm_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_2, _lh_assocm_LH_C_1_2) -> 
      (match _lh_assocm_LH_C_0_2 with
        | `LH_P2(_lh_assocm_LH_P2_0_2, _lh_assocm_LH_P2_1_2) -> 
          (if (_lh_assocm_arg1_2 = _lh_assocm_LH_P2_0_2) then
            (`Just(_lh_assocm_LH_P2_1_2))
          else
            ((assocm__d1 _lh_assocm_arg1_2) _lh_assocm_LH_C_1_2))
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
let rec ends__d1 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_2, _lh_ends_K_1_2, _lh_ends_K_2_2, _lh_ends_K_3_2) -> 
      (`LH_C(_lh_ends_K_1_2, (`LH_C(_lh_ends_K_2_2, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec ends__d2 _lh_ends_arg1_3 =
  (match _lh_ends_arg1_3 with
    | `K(_lh_ends_K_0_3, _lh_ends_K_1_3, _lh_ends_K_2_3, _lh_ends_K_3_3) -> 
      (`LH_C(_lh_ends_K_1_3, (`LH_C(_lh_ends_K_2_3, (`LH_N)))))
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
let rec enumFromTo__d2 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d2 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_9 b_6 =
  (if (a_9 <= b_6) then
    (`LH_C(a_9, ((enumFromTo__d3 (a_9 + 1)) b_6)))
  else
    (`LH_N));;
let rec enumFromTo__d4 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo__d4 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec first__d0 _lh_first_arg1_2 _lh_first_arg2_2 =
  (match _lh_first_arg2_2 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_2))
    | `LH_C(_lh_first_LH_C_0_2, _lh_first_LH_C_1_2) -> 
      (let rec _lh_matchIdent_1_0 = _lh_first_LH_C_0_2 in
        (match _lh_matchIdent_1_0 with
          | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
            (`YesIts((_lh_first_arg1_2 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
          | `NotEver(_lh_first_NotEver_0_2) -> 
            ((first__d0 (_lh_first_arg1_2 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec first__d1 _lh_first_arg1_4 _lh_first_arg2_4 =
  (match _lh_first_arg2_4 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_4))
    | `LH_C(_lh_first_LH_C_0_4, _lh_first_LH_C_1_4) -> 
      (let rec _lh_matchIdent_1_2 = _lh_first_LH_C_0_4 in
        (match _lh_matchIdent_1_2 with
          | `YesIts(_lh_first_YesIts_0_4, _lh_first_YesIts_1_4) -> 
            (`YesIts((_lh_first_arg1_4 + _lh_first_YesIts_0_4), _lh_first_YesIts_1_4))
          | `NotEver(_lh_first_NotEver_0_4) -> 
            ((first__d1 (_lh_first_arg1_4 + _lh_first_NotEver_0_4)) _lh_first_LH_C_1_4)
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
let rec first__d3 _lh_first_arg1_1 _lh_first_arg2_1 =
  (match _lh_first_arg2_1 with
    | `LH_N -> 
      (`NotEver(_lh_first_arg1_1))
    | `LH_C(_lh_first_LH_C_0_1, _lh_first_LH_C_1_1) -> 
      (let rec _lh_matchIdent_9 = _lh_first_LH_C_0_1 in
        (match _lh_matchIdent_9 with
          | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
            (`YesIts((_lh_first_arg1_1 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
          | `NotEver(_lh_first_NotEver_0_1) -> 
            ((first__d3 (_lh_first_arg1_1 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"));;
let rec foldr__d0 f_1_5 i_3 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_0, t_3_2) -> 
      ((f_1_5 h_3_0) (((foldr__d0 f_1_5) i_3) t_3_2))
    | `LH_N -> 
      i_3);;
let rec foldr__d1 f_1_9 i_4 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_9, t_4_1) -> 
      ((f_1_9 h_3_9) (((foldr__d1 f_1_9) i_4) t_4_1))
    | `LH_N -> 
      i_4);;
let rec freqsorted__d0 _lh_freqsorted_arg1_1 =
  _lh_freqsorted_arg1_1;;
let rec head__d0 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_5, t_3_7) -> 
      h_3_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_4_0, t_4_2) -> 
      h_4_0
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
let rec keys__d2 _lh_keys_arg1_4 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec keys__d3 _lh_keys_arg1_2 =
  (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))), (`LH_C((`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))), (`LH_C((`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))), (`LH_N)))))))));;
let rec last__d0 _lh_last_arg1_1 =
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
let rec last__d1 _lh_last_arg1_2 =
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
let rec length__d0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_6, t_3_8) -> 
      (1 + (length__d0 t_3_8))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_8, t_3_0) -> 
      (1 + (length__d1 t_3_0))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d2 t_2_9))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_3, t_3_5) -> 
      (1 + (length__d3 t_3_5))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C((f_1_2 h_2_3), ((map__d0 f_1_2) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_4 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_4 h_2_9), ((map__d1 f_1_4) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_3 h_2_5), ((map__d2 f_1_3) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_2_0 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C((f_2_0 h_4_1), ((map__d3 f_2_0) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C((f_1_6 h_3_2), ((map__d4 f_1_6) t_3_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_1_7 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C((f_1_7 h_3_7), ((map__d5 f_1_7) t_3_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_1_8 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C((f_1_8 h_3_8), ((map__d6 f_1_8) t_4_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d0 t_2_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d2 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d2 t_2_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d3 t_2_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d4 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d4 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
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
let rec member__d1 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member__d1 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec member__d2 _lh_member_arg1_3 _lh_member_arg2_3 =
  (match _lh_member_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_3, _lh_member_LH_C_1_3) -> 
      ((_lh_member_arg1_3 = _lh_member_LH_C_0_3) || ((member__d2 _lh_member_arg1_3) _lh_member_LH_C_1_3))
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
let rec take__d0 n_6 ls_2_5 =
  (if (n_6 > 0) then
    (match ls_2_5 with
      | `LH_C(h_3_1, t_3_3) -> 
        (`LH_C(h_3_1, ((take__d0 (n_6 - 1)) t_3_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec attribkeys__d0 _lh_attribkeys_arg1_1 =
  ((map__d0 (fun k_1 -> 
    (`K(k_1, (head__d0 k_1), (last__d0 k_1), (length__d0 k_1))))) _lh_attribkeys_arg1_1)
and attribkeys__d1 _lh_attribkeys_arg1_2 =
  ((map__d5 (fun k_2 -> 
    (`K(k_2, (head__d1 k_2), (last__d1 k_2), (length__d1 k_2))))) _lh_attribkeys_arg1_2)
and blocked'__d0 _lh_blocked'_arg1_1 _lh_blocked'_arg2_1 =
  (match _lh_blocked'_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_1, _lh_blocked'_LH_C_1_1) -> 
      (let rec ds'_1 = ((union__d0 _lh_blocked'_arg1_1) (ends__d0 _lh_blocked'_LH_C_0_1)) in
        (let rec _lh_matchIdent_8 = ((partition'__d0 (fun x_5 -> 
          ((subset__d0 (ends__d1 x_5)) ds'_1))) _lh_blocked'_LH_C_1_1) in
          (match _lh_matchIdent_8 with
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
    | `LH_C(h_3_4, t_3_6) -> 
      ((mappend__d2 h_3_4) (concat__d0 t_3_6))
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
and firstSuccess__d0 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first__d0 0) ((map__d1 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess__d1 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first__d1 0) ((map__d2 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and firstSuccess__d2 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first__d2 0) ((map__d3 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess__d3 _lh_firstSuccess_arg1_4 _lh_firstSuccess_arg2_4 =
  ((first__d3 0) ((map__d4 _lh_firstSuccess_arg1_4) _lh_firstSuccess_arg2_4))
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
  ((all__d0 (fun x_4 -> 
    ((member__d0 x_4) _lh_subset_arg2_1))) _lh_subset_arg1_1)
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
end;;

