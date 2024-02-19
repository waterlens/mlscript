

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec freqsorted_lh__d1 _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec mappend_lh__d1 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C(h_2_2, ((mappend_lh__d1 t_2_2) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec first_lh__d1 _lh_first_arg1_3 _lh_first_arg2_3 =
  (let rec _lh_matchIdent_6 = (Lazy.force _lh_first_arg2_3) in
    (match _lh_matchIdent_6 with
      | `LH_N -> 
        (`NotEver(_lh_first_arg1_3))
      | `LH_C(_lh_first_LH_C_0_3, _lh_first_LH_C_1_3) -> 
        (let rec _lh_matchIdent_7 = _lh_first_LH_C_0_3 in
          (match _lh_matchIdent_7 with
            | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
              (`YesIts((_lh_first_arg1_3 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
            | `NotEver(_lh_first_NotEver_0_3) -> 
              ((first_lh__d1 (_lh_first_arg1_3 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz_lh__d1 f_6 ls_1_0 =
  (lazy (match (Lazy.force ls_1_0) with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C((f_6 h_1_2), ((map_lz_lh__d1 f_6) t_1_2)))
    | `LH_N -> 
      (`LH_N)));;
let rec firstSuccess_lh__d1 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first_lh__d1 0) ((map_lz_lh__d1 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3));;
let rec assocm_lh__d1 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (`Just(_lh_assocm_LH_P2_1_1))
          else
            ((assocm_lh__d1 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lz_lh__d1 _lh_enumFromTo_lz_arg1_4 _lh_enumFromTo_lz_arg2_4 =
  (lazy (if (_lh_enumFromTo_lz_arg1_4 <= _lh_enumFromTo_lz_arg2_4) then
    (`LH_C(_lh_enumFromTo_lz_arg1_4, ((enumFromTo_lz_lh__d1 (_lh_enumFromTo_lz_arg1_4 + 1)) _lh_enumFromTo_lz_arg2_4)))
  else
    (`LH_N)));;
let rec first_lh__d3 _lh_first_arg1_1 _lh_first_arg2_1 =
  (let rec _lh_matchIdent_2 = (Lazy.force _lh_first_arg2_1) in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (`NotEver(_lh_first_arg1_1))
      | `LH_C(_lh_first_LH_C_0_1, _lh_first_LH_C_1_1) -> 
        (let rec _lh_matchIdent_3 = _lh_first_LH_C_0_1 in
          (match _lh_matchIdent_3 with
            | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
              (`YesIts((_lh_first_arg1_1 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
            | `NotEver(_lh_first_NotEver_0_1) -> 
              ((first_lh__d3 (_lh_first_arg1_1 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz_lh__d3 f_4 ls_5 =
  (lazy (match (Lazy.force ls_5) with
    | `LH_C(h_7, t_7) -> 
      (`LH_C((f_4 h_7), ((map_lz_lh__d3 f_4) t_7)))
    | `LH_N -> 
      (`LH_N)));;
let rec firstSuccess_lh__d3 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first_lh__d3 0) ((map_lz_lh__d3 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1));;
let rec enumFromTo_lz_lh__d4 _lh_enumFromTo_lz_arg1_1 _lh_enumFromTo_lz_arg2_1 =
  (lazy (if (_lh_enumFromTo_lz_arg1_1 <= _lh_enumFromTo_lz_arg2_1) then
    (`LH_C(_lh_enumFromTo_lz_arg1_1, ((enumFromTo_lz_lh__d4 (_lh_enumFromTo_lz_arg1_1 + 1)) _lh_enumFromTo_lz_arg2_1)))
  else
    (`LH_N)));;
let rec keys_lh__d3 =
  (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_N))))))))))), (`LH_C((`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_N))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('a', (`LH_C('u', (`LH_C('l', (`LH_C('t', (`LH_N))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('h', (`LH_C('i', (`LH_C('d', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_N))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C('l', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_N))))))), (`LH_C((`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))))), (`LH_C((`LH_C('o', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_N))))))))), (`LH_C((`LH_C('t', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))));;
let rec ends_lh__d3 _lh_ends_arg1_1 =
  (match _lh_ends_arg1_1 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_1) -> 
      (`LH_C(_lh_ends_K_1_1, (`LH_C(_lh_ends_K_2_1, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d2 f_2 ls_2 =
  (match ls_2 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_2 h_4), ((map_lh__d2 f_2) t_4)))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh__d1 f_7 i_0 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_5, t_1_5) -> 
      ((f_7 h_1_5) (((foldr_lh__d1 f_7) i_0) t_1_5))
    | `LH_N -> 
      i_0);;
let rec histins_lh__d1 _lh_histins_arg1_0 _lh_histins_arg2_0 =
  (match _lh_histins_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_0, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_0, _lh_histins_LH_C_1_0) -> 
      (match _lh_histins_LH_C_0_0 with
        | `LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0) -> 
          (if (_lh_histins_arg1_0 = _lh_histins_LH_P2_0_0) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, (_lh_histins_LH_P2_1_0 + 1))), _lh_histins_LH_C_1_0))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0)), ((histins_lh__d1 _lh_histins_arg1_0) _lh_histins_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec histo_lh__d1 _lh_histo_arg1_1 =
  (((foldr_lh__d1 histins_lh__d1) (`LH_N)) _lh_histo_arg1_1);;
let rec length_lh__d6 ls_3 =
  (match ls_3 with
    | `LH_C(h_5, t_5) -> 
      (1 + (length_lh__d6 t_5))
    | `LH_N -> 
      0);;
let rec head_lh__d1 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_9, t_1_9) -> 
      h_1_9
    | `LH_N -> 
      (failwith "error"));;
let rec map_lh__d4 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh__d4 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec last_lh__d1 _lh_last_arg1_0 =
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
let rec attribkeys_lh__d2 _lh_attribkeys_arg1_2 =
  ((map_lh__d4 (fun k_2 -> 
    (`K(k_2, (head_lh__d1 k_2), (last_lh__d1 k_2), (length_lh__d6 k_2))))) _lh_attribkeys_arg1_2);;
let rec mappend_lh__d4 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend_lh__d4 t_1_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_lh__d4 h_3) (concat_lh__d1 t_3))
    | `LH_N -> 
      (`LH_N));;
let rec freqtab_lh__d1 =
  (histo_lh__d1 (concat_lh__d1 ((map_lh__d2 ends_lh__d3) (attribkeys_lh__d2 keys_lh__d3))));;
let rec length_lh__d2 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_1_3, t_1_3) -> 
      (1 + (length_lh__d2 t_1_3))
    | `LH_N -> 
      0);;
let rec maxval_lh__d1 =
  (length_lh__d2 freqtab_lh__d1);;
let rec length_lh__d3 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_1, t_1_1) -> 
      (1 + (length_lh__d3 t_1_1))
    | `LH_N -> 
      0);;
let rec attribkeys_lh__d3 _lh_attribkeys_arg1_1 =
  ((map_lh__d4 (fun k_1 -> 
    (`K(k_1, (head_lh__d1 k_1), (last_lh__d1 k_1), (length_lh__d6 k_1))))) _lh_attribkeys_arg1_1);;
let rec concat_lh__d2 lss_0 =
  (match lss_0 with
    | `LH_C(h_1, t_1) -> 
      ((mappend_lh__d4 h_1) (concat_lh__d2 t_1))
    | `LH_N -> 
      (`LH_N));;
let rec histo_lh__d2 _lh_histo_arg1_0 =
  (((foldr_lh__d1 histins_lh__d1) (`LH_N)) _lh_histo_arg1_0);;
let rec keys_lh__d4 =
  (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_N))))))))))), (`LH_C((`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_N))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('a', (`LH_C('u', (`LH_C('l', (`LH_C('t', (`LH_N))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('h', (`LH_C('i', (`LH_C('d', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_N))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C('l', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_N))))))), (`LH_C((`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))))), (`LH_C((`LH_C('o', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_N))))))))), (`LH_C((`LH_C('t', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))));;
let rec map_lh__d3 f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_1 h_2), ((map_lh__d3 f_1) t_2)))
    | `LH_N -> 
      (`LH_N));;
let rec ends_lh__d4 _lh_ends_arg1_0 =
  (match _lh_ends_arg1_0 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_0, _lh_ends_K_2_0, _lh_ends_K_3_0) -> 
      (`LH_C(_lh_ends_K_1_0, (`LH_C(_lh_ends_K_2_0, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec freqtab_lh__d2 =
  (histo_lh__d2 (concat_lh__d2 ((map_lh__d3 ends_lh__d4) (attribkeys_lh__d3 keys_lh__d4))));;
let rec maxval_lh__d2 =
  (length_lh__d3 freqtab_lh__d2);;
let rec attribkeys_lh__d4 _lh_attribkeys_arg1_0 =
  ((map_lh__d4 (fun k_0 -> 
    (`K(k_0, (head_lh__d1 k_0), (last_lh__d1 k_0), (length_lh__d6 k_0))))) _lh_attribkeys_arg1_0);;
let rec freqtab_lh__d5 =
  (histo_lh__d2 (concat_lh__d2 ((map_lh__d4 ends_lh__d4) (attribkeys_lh__d4 keys_lh__d4))));;
let rec maxval_lh__d5 =
  (length_lh__d6 freqtab_lh__d5);;
let rec first_lh__d4 _lh_first_arg1_0 _lh_first_arg2_0 =
  (let rec _lh_matchIdent_0 = (Lazy.force _lh_first_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (`NotEver(_lh_first_arg1_0))
      | `LH_C(_lh_first_LH_C_0_0, _lh_first_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1 = _lh_first_LH_C_0_0 in
          (match _lh_matchIdent_1 with
            | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
              (`YesIts((_lh_first_arg1_0 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
            | `NotEver(_lh_first_NotEver_0_0) -> 
              ((first_lh__d4 (_lh_first_arg1_0 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz_lh__d4 f_3 ls_4 =
  (lazy (match (Lazy.force ls_4) with
    | `LH_C(h_6, t_6) -> 
      (`LH_C((f_3 h_6), ((map_lz_lh__d4 f_3) t_6)))
    | `LH_N -> 
      (`LH_N)));;
let rec firstSuccess_lh__d4 _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first_lh__d4 0) ((map_lz_lh__d4 _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0));;
let rec assocm_lh__d2 _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (`Just(_lh_assocm_LH_P2_1_0))
          else
            ((assocm_lh__d2 _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lz_lh__d2 f_5 ls_6 =
  (lazy (match (Lazy.force ls_6) with
    | `LH_C(h_8, t_8) -> 
      (`LH_C((f_5 h_8), ((map_lz_lh__d2 f_5) t_8)))
    | `LH_N -> 
      (`LH_N)));;
let rec first_lh__d2 _lh_first_arg1_2 _lh_first_arg2_2 =
  (let rec _lh_matchIdent_4 = (Lazy.force _lh_first_arg2_2) in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (`NotEver(_lh_first_arg1_2))
      | `LH_C(_lh_first_LH_C_0_2, _lh_first_LH_C_1_2) -> 
        (let rec _lh_matchIdent_5 = _lh_first_LH_C_0_2 in
          (match _lh_matchIdent_5 with
            | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
              (`YesIts((_lh_first_arg1_2 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
            | `NotEver(_lh_first_NotEver_0_2) -> 
              ((first_lh__d2 (_lh_first_arg1_2 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec firstSuccess_lh__d2 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first_lh__d2 0) ((map_lz_lh__d2 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2));;
let rec enumFromTo_lz_lh__d2 _lh_enumFromTo_lz_arg1_3 _lh_enumFromTo_lz_arg2_3 =
  (lazy (if (_lh_enumFromTo_lz_arg1_3 <= _lh_enumFromTo_lz_arg2_3) then
    (`LH_C(_lh_enumFromTo_lz_arg1_3, ((enumFromTo_lz_lh__d2 (_lh_enumFromTo_lz_arg1_3 + 1)) _lh_enumFromTo_lz_arg2_3)))
  else
    (`LH_N)));;
let rec length_lh__d5 ls_7 =
  (match ls_7 with
    | `LH_C(h_9, t_9) -> 
      (1 + (length_lh__d5 t_9))
    | `LH_N -> 
      0);;
let rec freqtab_lh__d4 =
  (histo_lh__d2 (concat_lh__d2 ((map_lh__d4 ends_lh__d4) (attribkeys_lh__d4 keys_lh__d4))));;
let rec maxval_lh__d4 =
  (length_lh__d5 freqtab_lh__d4);;
let rec min_lh__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec minm_lh__d1 _lh_minm_arg1_0 _lh_minm_arg2_0 =
  (match _lh_minm_arg1_0 with
    | `Nothing -> 
      _lh_minm_arg2_0
    | `Just(_lh_minm_Just_0_0) -> 
      ((min_lh__d1 _lh_minm_Just_0_0) _lh_minm_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec max_lh__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec maxm_lh__d1 _lh_maxm_arg1_0 _lh_maxm_arg2_0 =
  (match _lh_maxm_arg1_0 with
    | `Nothing -> 
      _lh_maxm_arg2_0
    | `Just(_lh_maxm_Just_0_0) -> 
      ((max_lh__d1 _lh_maxm_Just_0_0) _lh_maxm_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec member_lh__d3 _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member_lh__d3 _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec numberofkeys_lh__d1 =
  (length_lh__d6 keys_lh__d4);;
let rec hinsert_lh__d1 _lh_hinsert_arg1_0 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_0, _lh_hinsert_H_1_0, _lh_hinsert_H_2_0) -> 
      (let rec lo'_0 = ((minm_lh__d1 _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
        (let rec hi'_0 = ((maxm_lh__d1 _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
          (if (((member_lh__d3 _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > numberofkeys_lh__d1)) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d3 t_1_6) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec freqtab_lh__d3 =
  (histo_lh__d2 (concat_lh__d2 ((map_lh__d4 ends_lh__d4) (attribkeys_lh__d4 keys_lh__d4))));;
let rec length_lh__d4 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_0, t_1_0) -> 
      (1 + (length_lh__d4 t_1_0))
    | `LH_N -> 
      0);;
let rec maxval_lh__d3 =
  (length_lh__d4 freqtab_lh__d3);;
let rec enumFromTo_lz_lh__d5 _lh_enumFromTo_lz_arg1_0 _lh_enumFromTo_lz_arg2_0 =
  (lazy (if (_lh_enumFromTo_lz_arg1_0 <= _lh_enumFromTo_lz_arg2_0) then
    (`LH_C(_lh_enumFromTo_lz_arg1_0, ((enumFromTo_lz_lh__d5 (_lh_enumFromTo_lz_arg1_0 + 1)) _lh_enumFromTo_lz_arg2_0)))
  else
    (`LH_N)));;
let rec assoc_lh__d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc_lh__d1 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc_lh__d2 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (match _lh_assoc_arg2_0 with
    | `LH_C(_lh_assoc_LH_C_0_0, _lh_assoc_LH_C_1_0) -> 
      (match _lh_assoc_LH_C_0_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          (if (_lh_assoc_arg1_0 = _lh_assoc_LH_P2_0_0) then
            _lh_assoc_LH_P2_1_0
          else
            ((assoc_lh__d2 _lh_assoc_arg1_0) _lh_assoc_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec hash_lh__d1 _lh_hash_arg1_0 _lh_hash_arg2_0 =
  (match _lh_hash_arg2_0 with
    | `K(_lh_hash_K_0_0, _lh_hash_K_1_0, _lh_hash_K_2_0, _lh_hash_K_3_0) -> 
      ((_lh_hash_K_3_0 + ((assoc_lh__d1 _lh_hash_K_1_0) _lh_hash_arg1_0)) + ((assoc_lh__d2 _lh_hash_K_2_0) _lh_hash_arg1_0))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lz_lh__d3 _lh_enumFromTo_lz_arg1_2 _lh_enumFromTo_lz_arg2_2 =
  (lazy (if (_lh_enumFromTo_lz_arg1_2 <= _lh_enumFromTo_lz_arg2_2) then
    (`LH_C(_lh_enumFromTo_lz_arg1_2, ((enumFromTo_lz_lh__d3 (_lh_enumFromTo_lz_arg1_2 + 1)) _lh_enumFromTo_lz_arg2_2)))
  else
    (`LH_N)));;
let rec findhash'_lh__d1 _lh_findhash'_arg1_0 _lh_findhash'_arg2_0 _lh_findhash'_arg3_0 =
  (match _lh_findhash'_arg3_0 with
    | `LH_N -> 
      (`YesIts(1, _lh_findhash'_arg2_0))
    | `LH_C(_lh_findhash'_LH_C_0_0, _lh_findhash'_LH_C_1_0) -> 
      (match _lh_findhash'_LH_C_0_0 with
        | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0) -> 
          (let rec try_0 = (fun newAssocs_0 -> 
            (let rec newCharAssocs_0 = ((mappend_lh__d3 newAssocs_0) _lh_findhash'_arg2_0) in
              (let rec _lh_matchIdent_8 = ((hinsert_lh__d1 ((hash_lh__d1 newCharAssocs_0) (`K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0)))) _lh_findhash'_arg1_0) in
                (match _lh_matchIdent_8 with
                  | `Nothing -> 
                    (`NotEver(1))
                  | `Just(_lh_findhash'_Just_0_0) -> 
                    (((findhash'_lh__d1 _lh_findhash'_Just_0_0) newCharAssocs_0) _lh_findhash'_LH_C_1_0)
                  | _ -> 
                    (failwith "error"))))) in
            (let rec _lh_matchIdent_9 = (`LH_P2(((assocm_lh__d1 _lh_findhash'_K_1_0) _lh_findhash'_arg2_0), ((assocm_lh__d2 _lh_findhash'_K_2_0) _lh_findhash'_arg2_0))) in
              (match _lh_matchIdent_9 with
                | `LH_P2(_lh_findhash'_LH_P2_0_0, _lh_findhash'_LH_P2_1_0) -> 
                  (match _lh_findhash'_LH_P2_0_0 with
                    | `Nothing -> 
                      (match _lh_findhash'_LH_P2_1_0 with
                        | `Nothing -> 
                          (if (_lh_findhash'_K_1_0 = _lh_findhash'_K_2_0) then
                            ((firstSuccess_lh__d3 (fun m_0 -> 
                              (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, m_0)), (`LH_N)))))) ((enumFromTo_lz_lh__d3 0) maxval_lh__d3))
                          else
                            ((firstSuccess_lh__d4 (fun mn_0 -> 
                              (let rec _lh_matchIdent_1_0 = mn_0 in
                                (match _lh_matchIdent_1_0 with
                                  | `LH_P2(_lh_findhash'_LH_P2_0_1, _lh_findhash'_LH_P2_1_1) -> 
                                    (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, _lh_findhash'_LH_P2_0_1)), (`LH_C((`LH_P2(_lh_findhash'_K_2_0, _lh_findhash'_LH_P2_1_1)), (`LH_N))))))
                                  | _ -> 
                                    (failwith "error"))))) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                              (match (Lazy.force _lh_listcomp_fun_para_1) with
                                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                                  (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                                    (match (Lazy.force _lh_listcomp_fun_para_2) with
                                      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                                        (lazy (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_h_2)), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))))
                                      | `LH_N -> 
                                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))) in
                                    (_lh_listcomp_fun_2 ((enumFromTo_lz_lh__d4 0) maxval_lh__d2)))
                                | `LH_N -> 
                                  (lazy (`LH_N)))) in
                              (_lh_listcomp_fun_1 ((enumFromTo_lz_lh__d5 0) maxval_lh__d5)))))
                        | `Just(_lh_findhash'_Just_0_1) -> 
                          ((firstSuccess_lh__d1 (fun m_1 -> 
                            (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_1_0, m_1)), (`LH_N)))))) ((enumFromTo_lz_lh__d1 0) maxval_lh__d4))
                        | _ -> 
                          (failwith "error"))
                    | `Just(_lh_findhash'_Just_0_2) -> 
                      (match _lh_findhash'_LH_P2_1_0 with
                        | `Nothing -> 
                          ((firstSuccess_lh__d2 (fun n_0 -> 
                            (try_0 (`LH_C((`LH_P2(_lh_findhash'_K_2_0, n_0)), (`LH_N)))))) ((enumFromTo_lz_lh__d2 0) maxval_lh__d1))
                        | `Just(_lh_findhash'_Just_0_3) -> 
                          (try_0 (`LH_N))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec findhash_lh__d1 _lh_findhash_arg1_0 =
  (((findhash'_lh__d1 (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_0);;
let rec take_lh__d1 n_1 ls_1_6 =
  (if (n_1 > 0) then
    (match ls_1_6 with
      | `LH_C(h_2_1, t_2_1) -> 
        (`LH_C(h_2_1, ((take_lh__d1 (n_1 - 1)) t_2_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh__d1 f_8 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C((f_8 h_1_8), ((map_lh__d1 f_8) t_1_8)))
    | `LH_N -> 
      (`LH_N));;
let rec length_lh__d1 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_2_0, t_2_0) -> 
      (1 + (length_lh__d1 t_2_0))
    | `LH_N -> 
      0);;
let rec attribkeys_lh__d1 _lh_attribkeys_arg1_3 =
  ((map_lh__d1 (fun k_3 -> 
    (`K(k_3, (head_lh__d1 k_3), (last_lh__d1 k_3), (length_lh__d1 k_3))))) _lh_attribkeys_arg1_3);;
let rec keys_lh__d1 =
  (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_N))))))))))), (`LH_C((`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_N))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('a', (`LH_C('u', (`LH_C('l', (`LH_C('t', (`LH_N))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('h', (`LH_C('i', (`LH_C('d', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_N))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C('l', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_N))))))), (`LH_C((`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))))), (`LH_C((`LH_C('o', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_N))))))))), (`LH_C((`LH_C('t', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))));;
let rec member_lh__d2 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member_lh__d2 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec union_lh__d1 _lh_union_arg1_0 _lh_union_arg2_0 =
  ((mappend_lh__d4 _lh_union_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (if (not ((member_lh__d2 _lh_listcomp_fun_ls_h_0) _lh_union_arg1_0)) then
          (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
        else
          (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_union_arg2_0)));;
let rec ends_lh__d1 _lh_ends_arg1_3 =
  (match _lh_ends_arg1_3 with
    | `K(_lh_ends_K_0_3, _lh_ends_K_1_3, _lh_ends_K_2_3, _lh_ends_K_3_3) -> 
      (`LH_C(_lh_ends_K_1_3, (`LH_C(_lh_ends_K_2_3, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec ends_lh__d2 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_2, _lh_ends_K_1_2, _lh_ends_K_2_2, _lh_ends_K_3_2) -> 
      (`LH_C(_lh_ends_K_1_2, (`LH_C(_lh_ends_K_2_2, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec all_lh__d1 _lh_all_arg1_0 _lh_all_arg2_0 =
  (match _lh_all_arg2_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_all_LH_C_0_0, _lh_all_LH_C_1_0) -> 
      (if (_lh_all_arg1_0 _lh_all_LH_C_0_0) then
        ((all_lh__d1 _lh_all_arg1_0) _lh_all_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec member_lh__d1 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member_lh__d1 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec subset_lh__d1 _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all_lh__d1 (fun x_0 -> 
    ((member_lh__d1 x_0) _lh_subset_arg2_0))) _lh_subset_arg1_0);;
let rec select_lh__d1 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_0_0)), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec partition'_lh__d1 _lh_partition'_arg1_0 =
  ((foldr_lh__d1 (select_lh__d1 _lh_partition'_arg1_0)) (`LH_P2((`LH_N), (`LH_N))));;
let rec mappend_lh__d2 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend_lh__d2 t_1_7) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec blocked'_lh__d1 _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union_lh__d1 _lh_blocked'_arg1_0) (ends_lh__d1 _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_1_1 = ((partition'_lh__d1 (fun x_1 -> 
          ((subset_lh__d1 (ends_lh__d2 x_1)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_1_1 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend_lh__d2 (`LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_P2_0_0))) ((blocked'_lh__d1 ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec blocked_lh__d1 _lh_blocked_arg1_0 =
  ((blocked'_lh__d1 (`LH_N)) _lh_blocked_arg1_0);;
let rec keys_lh__d2 =
  (`LH_C((`LH_C('c', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('c', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_N))))))))))), (`LH_C((`LH_C('d', (`LH_C('a', (`LH_C('t', (`LH_C('a', (`LH_N))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('a', (`LH_C('u', (`LH_C('l', (`LH_C('t', (`LH_N))))))))))))))), (`LH_C((`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('e', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('h', (`LH_C('i', (`LH_C('d', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_N))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_N))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C('l', (`LH_N))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('s', (`LH_C('t', (`LH_C('a', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))), (`LH_C((`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('e', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_N))))))), (`LH_C((`LH_C('m', (`LH_C('o', (`LH_C('d', (`LH_C('u', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))))), (`LH_C((`LH_C('o', (`LH_C('f', (`LH_N))))), (`LH_C((`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('a', (`LH_C('m', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_N))))))))))))))))), (`LH_C((`LH_C('t', (`LH_C('h', (`LH_C('e', (`LH_C('n', (`LH_N))))))))), (`LH_C((`LH_C('t', (`LH_C('o', (`LH_N))))), (`LH_C((`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('w', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))));;
let rec cichelli_lh__d1 _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys_lh__d1 ((mappend_lh__d1 keys_lh__d2) ((take_lh__d1 (_lh_cichelli_arg1_0 mod 2)) keys_lh__d1))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked_lh__d1 (freqsorted_lh__d1 _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash_lh__d1 hashkeys_0)));;
let rec prog_lh__d1 _lh_prog_arg1_0 =
  (cichelli_lh__d1 _lh_prog_arg1_0);;
let rec testCichelli_nofib_lh__d1 _lh_testCichelli_nofib_arg1_0 =
  (prog_lh__d1 _lh_testCichelli_nofib_arg1_0);;
end;;

