

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec all__d0 _lh_all_arg1_0 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_0);;
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
let rec assoc__d1 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (match _lh_assoc_arg2_0 with
    | `LH_C(_lh_assoc_LH_C_0_0, _lh_assoc_LH_C_1_0) -> 
      (match _lh_assoc_LH_C_0_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          (if (_lh_assoc_arg1_0 = _lh_assoc_LH_P2_0_0) then
            _lh_assoc_LH_P2_1_0
          else
            ((assoc__d1 _lh_assoc_arg1_0) _lh_assoc_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1 _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (`Just(_lh_assocm_LH_P2_1_0))
          else
            ((assocm__d1 _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec ends__d2 _lh_ends_arg1_2 =
  _lh_ends_arg1_2;;
let rec enumFromTo__d4 a_4 b_4 _lh_popOutId_0_5 _lh_popOutId_1_4 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_4 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d4 (a_4 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_4 in
        (`LH_C((`LH_P2(_lh_popOutId_0_5, _lh_listcomp_fun_ls_h_3)), (_lh_popOutId_1_4 _lh_listcomp_fun_ls_t_3)))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0));;
let rec findhash'__d0 _lh_findhash'_arg1_2 _lh_findhash'_arg2_2 _lh_findhash'_arg3_0 =
  ((_lh_findhash'_arg3_0 _lh_findhash'_arg2_2) _lh_findhash'_arg1_2);;
let rec first__d0 _lh_first_arg1_6 _lh_first_arg2_2 =
  (_lh_first_arg2_2 _lh_first_arg1_6);;
let rec first__d1 _lh_first_arg1_5 _lh_first_arg2_1 =
  (_lh_first_arg2_1 _lh_first_arg1_5);;
let rec first__d2 _lh_first_arg1_0 _lh_first_arg2_0 =
  (_lh_first_arg2_0 _lh_first_arg1_0);;
let rec first__d3 _lh_first_arg1_9 _lh_first_arg2_3 =
  (_lh_first_arg2_3 _lh_first_arg1_9);;
let rec foldr__d0 f_8 i_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_8, t_8) -> 
      ((f_8 h_8) (((foldr__d0 f_8) i_1) t_8))
    | `LH_N -> 
      i_1);;
let rec foldr__d1 f_7 i_0 ls_2 =
  ((ls_2 f_7) i_0);;
let rec freqsorted__d0 _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec hash__d0 _lh_hash_arg1_0 _lh_hash_arg2_0 =
  (_lh_hash_arg2_0 _lh_hash_arg1_0);;
let rec head__d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_6, t_1_6) -> 
      h_1_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_0, t_1_0) -> 
      h_1_0
    | `LH_N -> 
      (failwith "error"));;
let rec histins__d0 _lh_histins_arg1_0 _lh_histins_arg2_0 =
  (match _lh_histins_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_0, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_0, _lh_histins_LH_C_1_0) -> 
      (match _lh_histins_LH_C_0_0 with
        | `LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0) -> 
          (if (_lh_histins_arg1_0 = _lh_histins_LH_P2_0_0) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, (_lh_histins_LH_P2_1_0 + 1))), _lh_histins_LH_C_1_0))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0)), ((histins__d0 _lh_histins_arg1_0) _lh_histins_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
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
let rec last__d1 _lh_last_arg1_0 =
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
let rec length__d0 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_4_4, t_4_4) -> 
      (1 + (length__d0 t_4_4))
    | `LH_N -> 
      0);;
let rec length__d1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_3_1, t_3_1) -> 
      (1 + (length__d1 t_3_1))
    | `LH_N -> 
      0);;
let rec length__d2 ls_8 =
  (ls_8 99);;
let rec length__d3 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_2_8, t_2_8) -> 
      (1 + (length__d3 t_2_8))
    | `LH_N -> 
      0);;
let rec map__d0 f_9 ls_4 =
  (ls_4 f_9);;
let rec map__d1 f_3_7 ls_1_5 =
  (ls_1_5 f_3_7);;
let rec map__d2 f_1 ls_1 =
  (ls_1 f_1);;
let rec map__d3 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d5 f_3_6 ls_1_4 =
  (ls_1_4 f_3_6);;
let rec map__d6 f_1_0 ls_5 =
  (ls_5 f_1_0);;
let rec mappend__d0 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d1 xs_2 ys_1_1 =
  (match xs_2 with
    | `LH_C(h_2_5, t_2_5) -> 
      (`LH_C(h_2_5, ((mappend__d1 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d2 xs_3 ys_1_2 =
  (xs_3 ys_1_2);;
let rec mappend__d3 xs_4 ys_1_4 =
  (match xs_4 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C(h_3_0, ((mappend__d3 t_3_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d4 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec max__d0 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec member__d0 _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member__d0 _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec member__d1 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member__d1 _lh_member_arg1_1) _lh_member_LH_C_1_1))
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
let rec min__d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec take__d0 n_5 ls_1_0 =
  (if (n_5 > 0) then
    (ls_1_0 n_5)
  else
    (fun f_1_6 -> 
      (`LH_N)));;
let rec assocm__d0 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_4 _lh_findhash'_K_2_4 _lh_findhash'_LH_P2_1_2 maxval_6 try_4 -> 
        (match _lh_findhash'_LH_P2_1_2 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_4 = _lh_findhash'_K_2_4) then
              ((firstSuccess__d2 (fun m_0 -> 
                (try_4 (`LH_C((`LH_P2(_lh_findhash'_K_1_4, m_0)), (`LH_N)))))) ((enumFromTo__d2 0) maxval_6))
            else
              ((firstSuccess__d3 (fun mn_0 -> 
                (let rec _lh_matchIdent_9 = mn_0 in
                  (match _lh_matchIdent_9 with
                    | `LH_P2(_lh_findhash'_LH_P2_0_2, _lh_findhash'_LH_P2_1_3) -> 
                      (try_4 (`LH_C((`LH_P2(_lh_findhash'_K_1_4, _lh_findhash'_LH_P2_0_2)), (`LH_C((`LH_P2(_lh_findhash'_K_2_4, _lh_findhash'_LH_P2_1_3)), (`LH_N))))))
                    | _ -> 
                      (failwith "error"))))) (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_2 -> 
                ((_lh_listcomp_fun_para_2 _lh_listcomp_fun_1_1) maxval_6)) in
                (_lh_listcomp_fun_1_1 ((enumFromTo__d3 0) maxval_6)))))
          | `Just(_lh_findhash'_Just_0_2) -> 
            ((firstSuccess__d0 (fun m_1 -> 
              (try_4 (`LH_C((`LH_P2(_lh_findhash'_K_1_4, m_1)), (`LH_N)))))) ((enumFromTo__d0 0) maxval_6))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (fun _lh_findhash'_K_1_5 _lh_findhash'_K_2_5 _lh_findhash'_LH_P2_1_4 maxval_7 try_5 -> 
              (match _lh_findhash'_LH_P2_1_4 with
                | `Nothing -> 
                  ((firstSuccess__d1 (fun n_6 -> 
                    (try_5 (`LH_C((`LH_P2(_lh_findhash'_K_2_5, n_6)), (`LH_N)))))) ((enumFromTo__d1 0) maxval_7))
                | `Just(_lh_findhash'_Just_0_3) -> 
                  (try_5 (`LH_N))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and attribkeys__d0 _lh_attribkeys_arg1_1 =
  ((map__d0 (fun k_1 -> 
    (`K(k_1, (head__d0 k_1), (last__d0 k_1), (length__d0 k_1))))) _lh_attribkeys_arg1_1)
and attribkeys__d1 _lh_attribkeys_arg1_0 =
  ((map__d5 (fun k_0 -> 
    (let rec _lh_ends_K_2_1 = (last__d1 k_0) in
      (let rec _lh_ends_K_1_1 = (head__d1 k_0) in
        (let rec t_1_2 = (let rec t_1_3 = (fun ys_3 -> 
          ys_3) in
          (let rec h_1_2 = _lh_ends_K_2_1 in
            (fun ys_4 -> 
              (let rec t_1_4 = ((mappend__d2 t_1_3) ys_4) in
                (let rec h_1_3 = h_1_2 in
                  (fun f_1_4 i_2 -> 
                    ((f_1_4 h_1_3) (((foldr__d1 f_1_4) i_2) t_1_4)))))))) in
          (let rec h_1_4 = _lh_ends_K_1_1 in
            (fun ys_5 -> 
              (let rec t_1_5 = ((mappend__d2 t_1_2) ys_5) in
                (let rec h_1_5 = h_1_4 in
                  (fun f_1_5 i_3 -> 
                    ((f_1_5 h_1_5) (((foldr__d1 f_1_5) i_3) t_1_5)))))))))))) _lh_attribkeys_arg1_0)
and blocked'__d0 _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (fun _lh_findhash'_arg2_0 _lh_findhash'_arg1_0 -> 
        (`YesIts(1, _lh_findhash'_arg2_0)))
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union__d0 _lh_blocked'_arg1_0) (ends__d0 _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_4 = ((partition'__d0 (fun x_1 -> 
          ((subset__d0 (ends__d1 x_1)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend__d0 (let rec t_2_9 = _lh_blocked'_LH_P2_0_0 in
                (let rec h_2_9 = _lh_blocked'_LH_C_0_0 in
                  (fun ys_1_3 -> 
                    (let rec _lh_findhash'_LH_C_1_0 = ((mappend__d0 t_2_9) ys_1_3) in
                      (let rec _lh_findhash'_LH_C_0_0 = h_2_9 in
                        (fun _lh_findhash'_arg2_1 _lh_findhash'_arg1_1 -> 
                          (match _lh_findhash'_LH_C_0_0 with
                            | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0) -> 
                              (let rec try_0 = (fun newAssocs_0 -> 
                                (let rec newCharAssocs_0 = ((mappend__d3 newAssocs_0) _lh_findhash'_arg2_1) in
                                  (let rec _lh_matchIdent_5 = ((hinsert__d0 ((hash__d0 newCharAssocs_0) (let rec _lh_hash_K_3_0 = _lh_findhash'_K_3_0 in
                                    (let rec _lh_hash_K_2_0 = _lh_findhash'_K_2_0 in
                                      (let rec _lh_hash_K_1_0 = _lh_findhash'_K_1_0 in
                                        (fun _lh_hash_arg1_1 -> 
                                          ((_lh_hash_K_3_0 + ((assoc__d0 _lh_hash_K_1_0) _lh_hash_arg1_1)) + ((assoc__d1 _lh_hash_K_2_0) _lh_hash_arg1_1)))))))) _lh_findhash'_arg1_1) in
                                    (match _lh_matchIdent_5 with
                                      | `Nothing -> 
                                        (`NotEver(1))
                                      | `Just(_lh_findhash'_Just_0_0) -> 
                                        (((findhash'__d0 _lh_findhash'_Just_0_0) newCharAssocs_0) _lh_findhash'_LH_C_1_0)
                                      | _ -> 
                                        (failwith "error"))))) in
                                (let rec maxval_2 = (length__d3 (freqtab__d0 0)) in
                                  (let rec _lh_matchIdent_6 = (let rec _lh_findhash'_LH_P2_1_0 = ((assocm__d1 _lh_findhash'_K_2_0) _lh_findhash'_arg2_1) in
                                    (let rec _lh_findhash'_LH_P2_0_0 = ((assocm__d0 _lh_findhash'_K_1_0) _lh_findhash'_arg2_1) in
                                      (fun _lh_findhash'_K_1_1 _lh_findhash'_K_2_1 maxval_3 try_1 -> 
                                        (((((_lh_findhash'_LH_P2_0_0 _lh_findhash'_K_1_1) _lh_findhash'_K_2_1) _lh_findhash'_LH_P2_1_0) maxval_3) try_1)))) in
                                    ((((_lh_matchIdent_6 _lh_findhash'_K_1_0) _lh_findhash'_K_2_0) maxval_2) try_0))))
                            | _ -> 
                              (failwith "error"))))))))) ((blocked'__d0 ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and blocked__d0 _lh_blocked_arg1_0 =
  ((blocked'__d0 (`LH_N)) _lh_blocked_arg1_0)
and cichelli__d0 _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys__d0 ((mappend__d4 (keys__d2 0)) ((take__d0 (_lh_cichelli_arg1_0 mod 2)) (keys__d3 0)))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked__d0 (freqsorted__d0 _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash__d0 hashkeys_0)))
and ends__d0 _lh_ends_arg1_0 =
  (match _lh_ends_arg1_0 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_0, _lh_ends_K_2_0, _lh_ends_K_3_0) -> 
      (let rec _lh_listcomp_fun_ls_t_0 = (let rec _lh_listcomp_fun_ls_t_1 = (fun _lh_listcomp_fun_1 _lh_union_arg1_1 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_0 = _lh_ends_K_2_0 in
          (fun _lh_listcomp_fun_2 _lh_union_arg1_2 -> 
            (if (not ((member__d1 _lh_listcomp_fun_ls_h_0) _lh_union_arg1_2)) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1))))) in
        (let rec _lh_listcomp_fun_ls_h_1 = _lh_ends_K_1_0 in
          (fun _lh_listcomp_fun_3 _lh_union_arg1_3 -> 
            (if (not ((member__d1 _lh_listcomp_fun_ls_h_1) _lh_union_arg1_3)) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_0)))))
    | _ -> 
      (failwith "error"))
and ends__d1 _lh_ends_arg1_1 =
  (match _lh_ends_arg1_1 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_2, _lh_ends_K_2_2, _lh_ends_K_3_1) -> 
      (let rec _lh_all_LH_C_1_0 = (let rec _lh_all_LH_C_1_1 = (fun _lh_all_arg1_1 -> 
        true) in
        (let rec _lh_all_LH_C_0_0 = _lh_ends_K_2_2 in
          (fun _lh_all_arg1_2 -> 
            (if (_lh_all_arg1_2 _lh_all_LH_C_0_0) then
              ((all__d0 _lh_all_arg1_2) _lh_all_LH_C_1_1)
            else
              false)))) in
        (let rec _lh_all_LH_C_0_1 = _lh_ends_K_1_2 in
          (fun _lh_all_arg1_3 -> 
            (if (_lh_all_arg1_3 _lh_all_LH_C_0_1) then
              ((all__d0 _lh_all_arg1_3) _lh_all_LH_C_1_0)
            else
              false))))
    | _ -> 
      (failwith "error"))
and enumFromTo__d0 a_1 b_1 _lh_popOutId_0_2 _lh_popOutId_1_1 =
  (if (a_1 <= b_1) then
    (let rec t_2_6 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec h_2_6 = a_1 in
        (let rec _lh_first_LH_C_1_2 = ((map__d1 _lh_popOutId_0_2) t_2_6) in
          (let rec _lh_first_LH_C_0_2 = (_lh_popOutId_0_2 h_2_6) in
            (let rec _lh_matchIdent_2 = _lh_first_LH_C_0_2 in
              (match _lh_matchIdent_2 with
                | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
                  (`YesIts((_lh_popOutId_1_1 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
                | `NotEver(_lh_first_NotEver_0_2) -> 
                  ((first__d0 (_lh_popOutId_1_1 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_1)))
and enumFromTo__d1 a_0 b_0 _lh_popOutId_0_1 _lh_popOutId_1_0 =
  (if (a_0 <= b_0) then
    (let rec t_1_1 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec h_1_1 = a_0 in
        (let rec _lh_first_LH_C_1_1 = ((map__d2 _lh_popOutId_0_1) t_1_1) in
          (let rec _lh_first_LH_C_0_1 = (_lh_popOutId_0_1 h_1_1) in
            (let rec _lh_matchIdent_1 = _lh_first_LH_C_0_1 in
              (match _lh_matchIdent_1 with
                | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
                  (`YesIts((_lh_popOutId_1_0 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
                | `NotEver(_lh_first_NotEver_0_1) -> 
                  ((first__d1 (_lh_popOutId_1_0 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_0)))
and enumFromTo__d2 a_3 b_3 _lh_popOutId_0_4 _lh_popOutId_1_3 =
  (if (a_3 <= b_3) then
    (let rec t_2_7 = ((enumFromTo__d2 (a_3 + 1)) b_3) in
      (let rec h_2_7 = a_3 in
        (let rec _lh_first_LH_C_1_3 = ((map__d3 _lh_popOutId_0_4) t_2_7) in
          (let rec _lh_first_LH_C_0_3 = (_lh_popOutId_0_4 h_2_7) in
            (let rec _lh_matchIdent_3 = _lh_first_LH_C_0_3 in
              (match _lh_matchIdent_3 with
                | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
                  (`YesIts((_lh_popOutId_1_3 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
                | `NotEver(_lh_first_NotEver_0_3) -> 
                  ((first__d2 (_lh_popOutId_1_3 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
                | _ -> 
                  (failwith "error")))))))
  else
    (`NotEver(_lh_popOutId_1_3)))
and enumFromTo__d3 a_2 b_2 _lh_popOutId_0_3 _lh_popOutId_1_2 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo__d3 (a_2 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_2 in
        (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
          ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_2) _lh_listcomp_fun_5) _lh_listcomp_fun_ls_t_2) _lh_popOutId_0_3)) in
          (_lh_listcomp_fun_5 ((enumFromTo__d4 0) _lh_popOutId_1_2)))))
  else
    (`LH_N))
and findhash__d0 _lh_findhash_arg1_0 =
  (((findhash'__d0 (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_0)
and firstSuccess__d0 _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first__d0 0) ((map__d1 _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0))
and firstSuccess__d1 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first__d1 0) ((map__d2 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess__d2 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first__d2 0) ((map__d3 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess__d3 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first__d3 0) ((map__d4 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and freqtab__d0 _lh_freqtab_arg1_0 =
  (histo__d0 (concat__d0 ((map__d6 ends__d2) (attribkeys__d1 (keys__d0 0)))))
and hinsert__d0 _lh_hinsert_arg1_0 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_0, _lh_hinsert_H_1_0, _lh_hinsert_H_2_0) -> 
      (let rec lo'_0 = ((minm__d0 _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
        (let rec hi'_0 = ((maxm__d0 _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
          (if (((member__d2 _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > (length__d2 (keys__d1 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))))))))
    | _ -> 
      (failwith "error"))
and histo__d0 _lh_histo_arg1_0 =
  (((foldr__d1 histins__d0) (`LH_N)) _lh_histo_arg1_0)
and keys__d0 _lh_keys_arg1_2 f_3_4 f_3_5 _lh_dummy_4 =
  (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (fun f_2_5 f_2_6 _lh_dummy_0 f_2_7 i_4 -> 
    i_4) in
    (let rec h_3_2 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_2_8 -> 
        (let rec t_3_6 = ((map__d5 f_2_8) t_3_5) in
          (let rec h_3_3 = (f_2_8 h_3_2) in
            (fun f_2_9 -> 
              (let rec t_3_7 = ((map__d6 f_2_9) t_3_6) in
                (let rec h_3_4 = (f_2_9 h_3_3) in
                  (fun _lh_dummy_1 -> 
                    ((mappend__d2 h_3_4) (concat__d0 t_3_7))))))))))) in
    (let rec h_3_5 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_3_0 -> 
        (let rec t_3_8 = ((map__d5 f_3_0) t_3_4) in
          (let rec h_3_6 = (f_3_0 h_3_5) in
            (fun f_3_1 -> 
              (let rec t_3_9 = ((map__d6 f_3_1) t_3_8) in
                (let rec h_3_7 = (f_3_1 h_3_6) in
                  (fun _lh_dummy_2 -> 
                    ((mappend__d2 h_3_7) (concat__d0 t_3_9))))))))))) in
    (let rec h_3_8 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_3_2 -> 
        (let rec t_4_0 = ((map__d5 f_3_2) t_3_3) in
          (let rec h_3_9 = (f_3_2 h_3_8) in
            (fun f_3_3 -> 
              (let rec t_4_1 = ((map__d6 f_3_3) t_4_0) in
                (let rec h_4_0 = (f_3_3 h_3_9) in
                  (fun _lh_dummy_3 -> 
                    ((mappend__d2 h_4_0) (concat__d0 t_4_1))))))))))) in
    (let rec h_4_1 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_4_2 = ((map__d5 f_3_4) t_3_2) in
        (let rec h_4_2 = (f_3_4 h_4_1) in
          (let rec t_4_3 = ((map__d6 f_3_5) t_4_2) in
            (let rec h_4_3 = (f_3_5 h_4_2) in
              ((mappend__d2 h_4_3) (concat__d0 t_4_3))))))))
and keys__d1 _lh_keys_arg1_3 _lh_dummy_9 =
  (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (fun _lh_dummy_5 -> 
    0) in
    (fun _lh_dummy_6 -> 
      (1 + (length__d2 t_4_9)))) in
    (fun _lh_dummy_7 -> 
      (1 + (length__d2 t_4_8)))) in
    (fun _lh_dummy_8 -> 
      (1 + (length__d2 t_4_7)))) in
    (1 + (length__d2 t_4_6)))
and keys__d2 _lh_keys_arg1_1 ys_1_0 f_2_0 =
  (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (fun ys_6 -> 
    ys_6) in
    (let rec h_1_7 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun ys_7 -> 
        (let rec t_2_1 = ((mappend__d4 t_2_0) ys_7) in
          (let rec h_1_8 = h_1_7 in
            (fun f_1_7 -> 
              (`LH_C((f_1_7 h_1_8), ((map__d0 f_1_7) t_2_1))))))))) in
    (let rec h_1_9 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun ys_8 -> 
        (let rec t_2_2 = ((mappend__d4 t_1_9) ys_8) in
          (let rec h_2_0 = h_1_9 in
            (fun f_1_8 -> 
              (`LH_C((f_1_8 h_2_0), ((map__d0 f_1_8) t_2_2))))))))) in
    (let rec h_2_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun ys_9 -> 
        (let rec t_2_3 = ((mappend__d4 t_1_8) ys_9) in
          (let rec h_2_2 = h_2_1 in
            (fun f_1_9 -> 
              (`LH_C((f_1_9 h_2_2), ((map__d0 f_1_9) t_2_3))))))))) in
    (let rec h_2_3 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_2_4 = ((mappend__d4 t_1_7) ys_1_0) in
        (let rec h_2_4 = h_2_3 in
          (`LH_C((f_2_0 h_2_4), ((map__d0 f_2_0) t_2_4)))))))
and keys__d3 _lh_keys_arg1_0 n_4 f_6 =
  (let rec t_0 = (let rec t_1 = (let rec t_2 = (let rec t_3 = (fun n_0 f_2 -> 
    (`LH_N)) in
    (let rec h_0 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun n_1 -> 
        (let rec t_4 = ((take__d0 (n_1 - 1)) t_3) in
          (let rec h_1 = h_0 in
            (fun f_3 -> 
              (`LH_C((f_3 h_1), ((map__d0 f_3) t_4))))))))) in
    (let rec h_2 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun n_2 -> 
        (let rec t_5 = ((take__d0 (n_2 - 1)) t_2) in
          (let rec h_3 = h_2 in
            (fun f_4 -> 
              (`LH_C((f_4 h_3), ((map__d0 f_4) t_5))))))))) in
    (let rec h_4 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun n_3 -> 
        (let rec t_6 = ((take__d0 (n_3 - 1)) t_1) in
          (let rec h_5 = h_4 in
            (fun f_5 -> 
              (`LH_C((f_5 h_5), ((map__d0 f_5) t_6))))))))) in
    (let rec h_6 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (let rec t_7 = ((take__d0 (n_4 - 1)) t_0) in
        (let rec h_7 = h_6 in
          (`LH_C((f_6 h_7), ((map__d0 f_6) t_7)))))))
and map__d4 f_1_1 ls_6 _lh_popOutId_0_0 =
  (match ls_6 with
    | `LH_C(h_9, t_9) -> 
      (let rec _lh_first_LH_C_1_0 = ((map__d4 f_1_1) t_9) in
        (let rec _lh_first_LH_C_0_0 = (f_1_1 h_9) in
          (let rec _lh_matchIdent_0 = _lh_first_LH_C_0_0 in
            (match _lh_matchIdent_0 with
              | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
                (`YesIts((_lh_popOutId_0_0 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
              | `NotEver(_lh_first_NotEver_0_0) -> 
                ((first__d3 (_lh_popOutId_0_0 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
              | _ -> 
                (failwith "error")))))
    | `LH_N -> 
      (`NotEver(_lh_popOutId_0_0)))
and maxm__d0 _lh_maxm_arg1_0 _lh_maxm_arg2_0 =
  (match _lh_maxm_arg1_0 with
    | `Nothing -> 
      _lh_maxm_arg2_0
    | `Just(_lh_maxm_Just_0_0) -> 
      ((max__d0 _lh_maxm_Just_0_0) _lh_maxm_arg2_0)
    | _ -> 
      (failwith "error"))
and minm__d0 _lh_minm_arg1_0 _lh_minm_arg2_0 =
  (match _lh_minm_arg1_0 with
    | `Nothing -> 
      _lh_minm_arg2_0
    | `Just(_lh_minm_Just_0_0) -> 
      ((min__d0 _lh_minm_Just_0_0) _lh_minm_arg2_0)
    | _ -> 
      (failwith "error"))
and partition'__d0 _lh_partition'_arg1_0 =
  ((foldr__d0 (select__d0 _lh_partition'_arg1_0)) (`LH_P2((fun ys_2 -> 
    ys_2), (`LH_N))))
and prog__d0 _lh_prog_arg1_0 =
  (cichelli__d0 _lh_prog_arg1_0)
and select__d0 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((let rec t_4_5 = _lh_select_LH_P2_0_0 in
          (let rec h_4_5 = _lh_select_arg2_0 in
            (fun ys_1_5 -> 
              (let rec _lh_findhash'_LH_C_1_1 = ((mappend__d0 t_4_5) ys_1_5) in
                (let rec _lh_findhash'_LH_C_0_1 = h_4_5 in
                  (fun _lh_findhash'_arg2_3 _lh_findhash'_arg1_3 -> 
                    (match _lh_findhash'_LH_C_0_1 with
                      | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_2, _lh_findhash'_K_2_2, _lh_findhash'_K_3_1) -> 
                        (let rec try_2 = (fun newAssocs_1 -> 
                          (let rec newCharAssocs_1 = ((mappend__d3 newAssocs_1) _lh_findhash'_arg2_3) in
                            (let rec _lh_matchIdent_7 = ((hinsert__d0 ((hash__d0 newCharAssocs_1) (let rec _lh_hash_K_3_1 = _lh_findhash'_K_3_1 in
                              (let rec _lh_hash_K_2_1 = _lh_findhash'_K_2_2 in
                                (let rec _lh_hash_K_1_1 = _lh_findhash'_K_1_2 in
                                  (fun _lh_hash_arg1_2 -> 
                                    ((_lh_hash_K_3_1 + ((assoc__d0 _lh_hash_K_1_1) _lh_hash_arg1_2)) + ((assoc__d1 _lh_hash_K_2_1) _lh_hash_arg1_2)))))))) _lh_findhash'_arg1_3) in
                              (match _lh_matchIdent_7 with
                                | `Nothing -> 
                                  (`NotEver(1))
                                | `Just(_lh_findhash'_Just_0_1) -> 
                                  (((findhash'__d0 _lh_findhash'_Just_0_1) newCharAssocs_1) _lh_findhash'_LH_C_1_1)
                                | _ -> 
                                  (failwith "error"))))) in
                          (let rec maxval_4 = (length__d3 (freqtab__d0 0)) in
                            (let rec _lh_matchIdent_8 = (let rec _lh_findhash'_LH_P2_1_1 = ((assocm__d1 _lh_findhash'_K_2_2) _lh_findhash'_arg2_3) in
                              (let rec _lh_findhash'_LH_P2_0_1 = ((assocm__d0 _lh_findhash'_K_1_2) _lh_findhash'_arg2_3) in
                                (fun _lh_findhash'_K_1_3 _lh_findhash'_K_2_3 maxval_5 try_3 -> 
                                  (((((_lh_findhash'_LH_P2_0_1 _lh_findhash'_K_1_3) _lh_findhash'_K_2_3) _lh_findhash'_LH_P2_1_1) maxval_5) try_3)))) in
                              ((((_lh_matchIdent_8 _lh_findhash'_K_1_2) _lh_findhash'_K_2_2) maxval_4) try_2))))
                      | _ -> 
                        (failwith "error")))))))), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"))
and subset__d0 _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all__d0 (fun x_0 -> 
    ((member__d0 x_0) _lh_subset_arg2_0))) _lh_subset_arg1_0)
and testCichelli_nofib__d0 _lh_testCichelli_nofib_arg1_0 =
  (prog__d0 _lh_testCichelli_nofib_arg1_0)
and union__d0 _lh_union_arg1_0 _lh_union_arg2_0 =
  ((mappend__d1 _lh_union_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_union_arg1_0)) in
    (_lh_listcomp_fun_0 _lh_union_arg2_0)));;
end;;
