

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________ = struct
let rec freqsorted_lh__d1 _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec mappend_lh__d1 xs_1 ys_2 =
  (xs_1 ys_2);;
let rec findhash'_lh__d1 _lh_findhash'_arg1_1 _lh_findhash'_arg2_1 _lh_findhash'_arg3_0 =
  ((_lh_findhash'_arg3_0 _lh_findhash'_arg2_1) _lh_findhash'_arg1_1);;
let rec findhash_lh__d1 _lh_findhash_arg1_0 =
  (((findhash'_lh__d1 (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_0);;
let rec take_lh__d1 n_0 ls_7 =
  (if (n_0 > 0) then
    (ls_7 n_0)
  else
    (fun f_1_7 -> 
      (`LH_N)));;
let rec map_lh__d1 f_1_9 ls_9 =
  (ls_9 f_1_9);;
let rec last_lh__d1 _lh_last_arg1_1 =
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
let rec head_lh__d1 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_3_6, t_4_0) -> 
      h_3_6
    | `LH_N -> 
      (failwith "error"));;
let rec length_lh__d1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_2_1, t_2_5) -> 
      (1 + (length_lh__d1 t_2_5))
    | `LH_N -> 
      0);;
let rec attribkeys_lh__d1 _lh_attribkeys_arg1_0 =
  ((map_lh__d1 (fun k_0 -> 
    (`K(k_0, (head_lh__d1 k_0), (last_lh__d1 k_0), (length_lh__d1 k_0))))) _lh_attribkeys_arg1_0);;
let rec keys_lh__d1 _lh_keys_arg1_2 =
  (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (let rec t_3_5 = (fun n_2 f_2_8 -> 
    (`LH_N)) in
    (let rec h_2_8 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun n_3 -> 
        (let rec t_3_6 = ((take_lh__d1 (n_3 - 1)) t_3_5) in
          (let rec h_2_9 = h_2_8 in
            (fun f_2_9 -> 
              (`LH_C((f_2_9 h_2_9), ((map_lh__d1 f_2_9) t_3_6))))))))) in
    (let rec h_3_0 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun n_4 -> 
        (let rec t_3_7 = ((take_lh__d1 (n_4 - 1)) t_3_4) in
          (let rec h_3_1 = h_3_0 in
            (fun f_3_0 -> 
              (`LH_C((f_3_0 h_3_1), ((map_lh__d1 f_3_0) t_3_7))))))))) in
    (let rec h_3_2 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun n_5 -> 
        (let rec t_3_8 = ((take_lh__d1 (n_5 - 1)) t_3_3) in
          (let rec h_3_3 = h_3_2 in
            (fun f_3_1 -> 
              (`LH_C((f_3_1 h_3_3), ((map_lh__d1 f_3_1) t_3_8))))))))) in
    (let rec h_3_4 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun n_6 -> 
        (let rec t_3_9 = ((take_lh__d1 (n_6 - 1)) t_3_2) in
          (let rec h_3_5 = h_3_4 in
            (fun f_3_2 -> 
              (`LH_C((f_3_2 h_3_5), ((map_lh__d1 f_3_2) t_3_9)))))))));;
let rec assocm_lh__d1 _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (`Just(_lh_assocm_LH_P2_1_0))
          else
            ((assocm_lh__d1 _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d3 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec all_lh__d1 _lh_all_arg1_3 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_3);;
let rec ends_lh__d1 _lh_ends_arg1_0 =
  (match _lh_ends_arg1_0 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_0, _lh_ends_K_2_0, _lh_ends_K_3_0) -> 
      (let rec _lh_all_LH_C_1_0 = (let rec _lh_all_LH_C_1_1 = (fun _lh_all_arg1_0 -> 
        true) in
        (let rec _lh_all_LH_C_0_0 = _lh_ends_K_2_0 in
          (fun _lh_all_arg1_1 -> 
            (if (_lh_all_arg1_1 _lh_all_LH_C_0_0) then
              ((all_lh__d1 _lh_all_arg1_1) _lh_all_LH_C_1_1)
            else
              false)))) in
        (let rec _lh_all_LH_C_0_1 = _lh_ends_K_1_0 in
          (fun _lh_all_arg1_2 -> 
            (if (_lh_all_arg1_2 _lh_all_LH_C_0_1) then
              ((all_lh__d1 _lh_all_arg1_2) _lh_all_LH_C_1_0)
            else
              false))))
    | _ -> 
      (failwith "error"));;
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
let rec first_lh__d1 _lh_first_arg1_0 _lh_first_arg2_0 =
  (_lh_first_arg2_0 _lh_first_arg1_0);;
let rec map_lh__d3 f_2_5 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_2_3, t_2_7) -> 
      (let rec _lh_first_LH_C_1_3 = ((map_lh__d3 f_2_5) t_2_7) in
        (let rec _lh_first_LH_C_0_3 = (f_2_5 h_2_3) in
          (fun _lh_first_arg1_1_0 -> 
            (let rec _lh_matchIdent_5 = _lh_first_LH_C_0_3 in
              (match _lh_matchIdent_5 with
                | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
                  (`YesIts((_lh_first_arg1_1_0 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
                | `NotEver(_lh_first_NotEver_0_3) -> 
                  ((first_lh__d1 (_lh_first_arg1_1_0 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
                | _ -> 
                  (failwith "error"))))))
    | `LH_N -> 
      (fun _lh_first_arg1_1_1 -> 
        (`NotEver(_lh_first_arg1_1_1))));;
let rec firstSuccess_lh__d1 _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first_lh__d1 0) ((map_lh__d3 _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0));;
let rec map_lh__d6 f_1_6 ls_6 =
  (ls_6 f_1_6);;
let rec first_lh__d4 _lh_first_arg1_5 _lh_first_arg2_3 =
  (_lh_first_arg2_3 _lh_first_arg1_5);;
let rec enumFromTo_lh__d4 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_4 = ((enumFromTo_lh__d4 (a_0 + 1)) b_0) in
      (let rec h_4 = a_0 in
        (fun f_1 -> 
          (let rec _lh_first_LH_C_1_0 = ((map_lh__d6 f_1) t_4) in
            (let rec _lh_first_LH_C_0_0 = (f_1 h_4) in
              (fun _lh_first_arg1_2 -> 
                (let rec _lh_matchIdent_2 = _lh_first_LH_C_0_0 in
                  (match _lh_matchIdent_2 with
                    | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
                      (`YesIts((_lh_first_arg1_2 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
                    | `NotEver(_lh_first_NotEver_0_0) -> 
                      ((first_lh__d4 (_lh_first_arg1_2 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_2 _lh_first_arg1_3 -> 
      (`NotEver(_lh_first_arg1_3))));;
let rec first_lh__d3 _lh_first_arg1_4 _lh_first_arg2_2 =
  (_lh_first_arg2_2 _lh_first_arg1_4);;
let rec map_lh__d5 f_2_2 ls_1_0 =
  (ls_1_0 f_2_2);;
let rec firstSuccess_lh__d3 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first_lh__d3 0) ((map_lh__d5 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1));;
let rec enumFromTo_lh__d1 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_lh__d1 (a_2 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_2 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_5 -> 
          (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_1))))))
  else
    (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_7 -> 
      (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)));;
let rec enumFromTo_lh__d2 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d2 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_1 in
        (fun _lh_listcomp_fun_1 maxval_2 -> 
          (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_1 -> 
            ((((_lh_listcomp_fun_para_1 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_2) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_1)) in
            (_lh_listcomp_fun_2 ((enumFromTo_lh__d1 0) maxval_2))))))
  else
    (fun _lh_listcomp_fun_3 maxval_3 -> 
      (`LH_N)));;
let rec map_lh__d4 f_3_3 ls_1_4 =
  (ls_1_4 f_3_3);;
let rec first_lh__d2 _lh_first_arg1_1 _lh_first_arg2_1 =
  (_lh_first_arg2_1 _lh_first_arg1_1);;
let rec enumFromTo_lh__d3 a_4 b_4 =
  (if (a_4 <= b_4) then
    (let rec t_2_6 = ((enumFromTo_lh__d3 (a_4 + 1)) b_4) in
      (let rec h_2_2 = a_4 in
        (fun f_2_3 -> 
          (let rec _lh_first_LH_C_1_2 = ((map_lh__d4 f_2_3) t_2_6) in
            (let rec _lh_first_LH_C_0_2 = (f_2_3 h_2_2) in
              (fun _lh_first_arg1_8 -> 
                (let rec _lh_matchIdent_4 = _lh_first_LH_C_0_2 in
                  (match _lh_matchIdent_4 with
                    | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
                      (`YesIts((_lh_first_arg1_8 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
                    | `NotEver(_lh_first_NotEver_0_2) -> 
                      ((first_lh__d2 (_lh_first_arg1_8 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_2_4 _lh_first_arg1_9 -> 
      (`NotEver(_lh_first_arg1_9))));;
let rec firstSuccess_lh__d2 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first_lh__d2 0) ((map_lh__d4 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3));;
let rec firstSuccess_lh__d4 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first_lh__d4 0) ((map_lh__d6 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2));;
let rec enumFromTo_lh__d5 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec t_2_3 = ((enumFromTo_lh__d5 (a_3 + 1)) b_3) in
      (let rec h_1_9 = a_3 in
        (fun f_2_0 -> 
          (let rec _lh_first_LH_C_1_1 = ((map_lh__d5 f_2_0) t_2_3) in
            (let rec _lh_first_LH_C_0_1 = (f_2_0 h_1_9) in
              (fun _lh_first_arg1_6 -> 
                (let rec _lh_matchIdent_3 = _lh_first_LH_C_0_1 in
                  (match _lh_matchIdent_3 with
                    | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
                      (`YesIts((_lh_first_arg1_6 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
                    | `NotEver(_lh_first_NotEver_0_1) -> 
                      ((first_lh__d3 (_lh_first_arg1_6 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_2_1 _lh_first_arg1_7 -> 
      (`NotEver(_lh_first_arg1_7))));;
let rec assocm_lh__d2 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_2 _lh_findhash'_K_2_2 _lh_findhash'_LH_P2_1_1 maxval_4 try_2 -> 
        (match _lh_findhash'_LH_P2_1_1 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_2 = _lh_findhash'_K_2_2) then
              ((firstSuccess_lh__d4 (fun m_0 -> 
                (try_2 (`LH_C((`LH_P2(_lh_findhash'_K_1_2, m_0)), (`LH_N)))))) ((enumFromTo_lh__d4 0) maxval_4))
            else
              ((firstSuccess_lh__d1 (fun mn_0 -> 
                (let rec _lh_matchIdent_6 = mn_0 in
                  (match _lh_matchIdent_6 with
                    | `LH_P2(_lh_findhash'_LH_P2_0_1, _lh_findhash'_LH_P2_1_2) -> 
                      (try_2 (`LH_C((`LH_P2(_lh_findhash'_K_1_2, _lh_findhash'_LH_P2_0_1)), (`LH_C((`LH_P2(_lh_findhash'_K_2_2, _lh_findhash'_LH_P2_1_2)), (`LH_N))))))
                    | _ -> 
                      (failwith "error"))))) (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_2 -> 
                ((_lh_listcomp_fun_para_2 _lh_listcomp_fun_1_1) maxval_4)) in
                (_lh_listcomp_fun_1_1 ((enumFromTo_lh__d2 0) maxval_4)))))
          | `Just(_lh_findhash'_Just_0_1) -> 
            ((firstSuccess_lh__d3 (fun m_1 -> 
              (try_2 (`LH_C((`LH_P2(_lh_findhash'_K_1_2, m_1)), (`LH_N)))))) ((enumFromTo_lh__d5 0) maxval_4))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (fun _lh_findhash'_K_1_3 _lh_findhash'_K_2_3 _lh_findhash'_LH_P2_1_3 maxval_5 try_3 -> 
              (match _lh_findhash'_LH_P2_1_3 with
                | `Nothing -> 
                  ((firstSuccess_lh__d2 (fun n_1 -> 
                    (try_3 (`LH_C((`LH_P2(_lh_findhash'_K_2_3, n_1)), (`LH_N)))))) ((enumFromTo_lh__d3 0) maxval_5))
                | `Just(_lh_findhash'_Just_0_2) -> 
                  (try_3 (`LH_N))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm_lh__d2 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec member_lh__d1 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member_lh__d1 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec subset_lh__d1 _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all_lh__d1 (fun x_0 -> 
    ((member_lh__d1 x_0) _lh_subset_arg2_0))) _lh_subset_arg1_0);;
let rec length_lh__d2 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh__d2 t_0))
    | `LH_N -> 
      0);;
let rec mappend_lh__d4 xs_4 ys_6 =
  (match xs_4 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_lh__d4 t_1_8) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec union_lh__d1 _lh_union_arg1_0 _lh_union_arg2_0 =
  ((mappend_lh__d4 _lh_union_arg1_0) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) _lh_union_arg1_0)) in
    (_lh_listcomp_fun_0 _lh_union_arg2_0)));;
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
let rec length_lh__d3 ls_0 =
  (ls_0 99);;
let rec keys_lh__d4 _lh_keys_arg1_1 =
  (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (fun _lh_dummy_5 -> 
    0) in
    (fun _lh_dummy_6 -> 
      (1 + (length_lh__d3 t_2_2)))) in
    (fun _lh_dummy_7 -> 
      (1 + (length_lh__d3 t_2_1)))) in
    (fun _lh_dummy_8 -> 
      (1 + (length_lh__d3 t_2_0)))) in
    (fun _lh_dummy_9 -> 
      (1 + (length_lh__d3 t_1_9))));;
let rec member_lh__d3 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member_lh__d3 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec hinsert_lh__d1 _lh_hinsert_arg1_0 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_0, _lh_hinsert_H_1_0, _lh_hinsert_H_2_0) -> 
      (let rec lo'_0 = ((minm_lh__d1 _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
        (let rec hi'_0 = ((maxm_lh__d1 _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
          (if (((member_lh__d3 _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > (length_lh__d3 (keys_lh__d4 0)))) then
            (`Nothing)
          else
            (`Just((`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))))))))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d1 f_1_4 i_1 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_7, t_1_7) -> 
      ((f_1_4 h_1_7) (((foldr_lh__d1 f_1_4) i_1) t_1_7))
    | `LH_N -> 
      i_1);;
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
let rec mappend_lh__d2 xs_2 ys_4 =
  (xs_2 ys_4);;
let rec map_lh__d7 f_0 ls_2 =
  (ls_2 f_0);;
let rec mappend_lh__d5 xs_3 ys_5 =
  (xs_3 ys_5);;
let rec map_lh__d2 f_1_8 ls_8 =
  (ls_8 f_1_8);;
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec keys_lh__d3 _lh_keys_arg1_0 =
  (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (fun f_3 f_4 _lh_dummy_0 f_5 i_0 -> 
    i_0) in
    (let rec h_5 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_6 -> 
        (let rec t_9 = ((map_lh__d7 f_6) t_8) in
          (let rec h_6 = (f_6 h_5) in
            (fun f_7 -> 
              (let rec t_1_0 = ((map_lh__d2 f_7) t_9) in
                (let rec h_7 = (f_7 h_6) in
                  (fun _lh_dummy_1 -> 
                    ((mappend_lh__d5 h_7) (concat_lh__d1 t_1_0))))))))))) in
    (let rec h_8 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_8 -> 
        (let rec t_1_1 = ((map_lh__d7 f_8) t_7) in
          (let rec h_9 = (f_8 h_8) in
            (fun f_9 -> 
              (let rec t_1_2 = ((map_lh__d2 f_9) t_1_1) in
                (let rec h_1_0 = (f_9 h_9) in
                  (fun _lh_dummy_2 -> 
                    ((mappend_lh__d5 h_1_0) (concat_lh__d1 t_1_2))))))))))) in
    (let rec h_1_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_1_0 -> 
        (let rec t_1_3 = ((map_lh__d7 f_1_0) t_6) in
          (let rec h_1_2 = (f_1_0 h_1_1) in
            (fun f_1_1 -> 
              (let rec t_1_4 = ((map_lh__d2 f_1_1) t_1_3) in
                (let rec h_1_3 = (f_1_1 h_1_2) in
                  (fun _lh_dummy_3 -> 
                    ((mappend_lh__d5 h_1_3) (concat_lh__d1 t_1_4))))))))))) in
    (let rec h_1_4 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun f_1_2 -> 
        (let rec t_1_5 = ((map_lh__d7 f_1_2) t_5) in
          (let rec h_1_5 = (f_1_2 h_1_4) in
            (fun f_1_3 -> 
              (let rec t_1_6 = ((map_lh__d2 f_1_3) t_1_5) in
                (let rec h_1_6 = (f_1_3 h_1_5) in
                  (fun _lh_dummy_4 -> 
                    ((mappend_lh__d5 h_1_6) (concat_lh__d1 t_1_6)))))))))));;
let rec ends_lh__d3 _lh_ends_arg1_1 =
  _lh_ends_arg1_1;;
let rec foldr_lh__d2 f_1_5 i_2 ls_5 =
  ((ls_5 f_1_5) i_2);;
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
let rec histo_lh__d1 _lh_histo_arg1_0 =
  (((foldr_lh__d2 histins_lh__d1) (`LH_N)) _lh_histo_arg1_0);;
let rec last_lh__d2 _lh_last_arg1_0 =
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
let rec head_lh__d2 ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec attribkeys_lh__d2 _lh_attribkeys_arg1_1 =
  ((map_lh__d7 (fun k_1 -> 
    (let rec _lh_ends_K_2_2 = (last_lh__d2 k_1) in
      (let rec _lh_ends_K_1_2 = (head_lh__d2 k_1) in
        (let rec t_2_8 = (let rec t_2_9 = (fun ys_7 -> 
          ys_7) in
          (let rec h_2_4 = _lh_ends_K_2_2 in
            (fun ys_8 -> 
              (let rec t_3_0 = ((mappend_lh__d5 t_2_9) ys_8) in
                (let rec h_2_5 = h_2_4 in
                  (fun f_2_6 i_3 -> 
                    ((f_2_6 h_2_5) (((foldr_lh__d2 f_2_6) i_3) t_3_0)))))))) in
          (let rec h_2_6 = _lh_ends_K_1_2 in
            (fun ys_9 -> 
              (let rec t_3_1 = ((mappend_lh__d5 t_2_8) ys_9) in
                (let rec h_2_7 = h_2_6 in
                  (fun f_2_7 i_4 -> 
                    ((f_2_7 h_2_7) (((foldr_lh__d2 f_2_7) i_4) t_3_1)))))))))))) _lh_attribkeys_arg1_1);;
let rec freqtab_lh__d1 _lh_freqtab_arg1_0 =
  (histo_lh__d1 (concat_lh__d1 ((map_lh__d2 ends_lh__d3) (attribkeys_lh__d2 (keys_lh__d3 0)))));;
let rec hash_lh__d1 _lh_hash_arg1_1 _lh_hash_arg2_0 =
  (_lh_hash_arg2_0 _lh_hash_arg1_1);;
let rec select_lh__d1 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((let rec t_2 = _lh_select_LH_P2_0_0 in
          (let rec h_2 = _lh_select_arg2_0 in
            (fun ys_1 -> 
              (let rec _lh_findhash'_LH_C_1_0 = ((mappend_lh__d2 t_2) ys_1) in
                (let rec _lh_findhash'_LH_C_0_0 = h_2 in
                  (fun _lh_findhash'_arg2_0 _lh_findhash'_arg1_0 -> 
                    (match _lh_findhash'_LH_C_0_0 with
                      | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0) -> 
                        (let rec try_0 = (fun newAssocs_0 -> 
                          (let rec newCharAssocs_0 = ((mappend_lh__d3 newAssocs_0) _lh_findhash'_arg2_0) in
                            (let rec _lh_matchIdent_0 = ((hinsert_lh__d1 ((hash_lh__d1 newCharAssocs_0) (let rec _lh_hash_K_3_0 = _lh_findhash'_K_3_0 in
                              (let rec _lh_hash_K_2_0 = _lh_findhash'_K_2_0 in
                                (let rec _lh_hash_K_1_0 = _lh_findhash'_K_1_0 in
                                  (fun _lh_hash_arg1_0 -> 
                                    ((_lh_hash_K_3_0 + ((assoc_lh__d2 _lh_hash_K_1_0) _lh_hash_arg1_0)) + ((assoc_lh__d1 _lh_hash_K_2_0) _lh_hash_arg1_0)))))))) _lh_findhash'_arg1_0) in
                              (match _lh_matchIdent_0 with
                                | `Nothing -> 
                                  (`NotEver(1))
                                | `Just(_lh_findhash'_Just_0_0) -> 
                                  (((findhash'_lh__d1 _lh_findhash'_Just_0_0) newCharAssocs_0) _lh_findhash'_LH_C_1_0)
                                | _ -> 
                                  (failwith "error"))))) in
                          (let rec maxval_0 = (length_lh__d2 (freqtab_lh__d1 0)) in
                            (let rec _lh_matchIdent_1 = (let rec _lh_findhash'_LH_P2_1_0 = ((assocm_lh__d1 _lh_findhash'_K_2_0) _lh_findhash'_arg2_0) in
                              (let rec _lh_findhash'_LH_P2_0_0 = ((assocm_lh__d2 _lh_findhash'_K_1_0) _lh_findhash'_arg2_0) in
                                (fun _lh_findhash'_K_1_1 _lh_findhash'_K_2_1 maxval_1 try_1 -> 
                                  (((((_lh_findhash'_LH_P2_0_0 _lh_findhash'_K_1_1) _lh_findhash'_K_2_1) _lh_findhash'_LH_P2_1_0) maxval_1) try_1)))) in
                              ((((_lh_matchIdent_1 _lh_findhash'_K_1_0) _lh_findhash'_K_2_0) maxval_0) try_0))))
                      | _ -> 
                        (failwith "error")))))))), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"));;
let rec partition'_lh__d1 _lh_partition'_arg1_0 =
  ((foldr_lh__d1 (select_lh__d1 _lh_partition'_arg1_0)) (`LH_P2((fun ys_3 -> 
    ys_3), (`LH_N))));;
let rec member_lh__d2 _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member_lh__d2 _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec ends_lh__d2 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_1) -> 
      (let rec _lh_listcomp_fun_ls_t_4 = (let rec _lh_listcomp_fun_ls_t_5 = (fun _lh_listcomp_fun_8 _lh_union_arg1_1 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_4 = _lh_ends_K_2_1 in
          (fun _lh_listcomp_fun_9 _lh_union_arg1_2 -> 
            (if (not ((member_lh__d2 _lh_listcomp_fun_ls_h_4) _lh_union_arg1_2)) then
              (`LH_C(_lh_listcomp_fun_ls_h_4, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_5)))
            else
              (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_5))))) in
        (let rec _lh_listcomp_fun_ls_h_5 = _lh_ends_K_1_1 in
          (fun _lh_listcomp_fun_1_0 _lh_union_arg1_3 -> 
            (if (not ((member_lh__d2 _lh_listcomp_fun_ls_h_5) _lh_union_arg1_3)) then
              (`LH_C(_lh_listcomp_fun_ls_h_5, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_4)))
            else
              (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_4)))))
    | _ -> 
      (failwith "error"));;
let rec blocked'_lh__d1 _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (fun _lh_findhash'_arg2_2 _lh_findhash'_arg1_2 -> 
        (`YesIts(1, _lh_findhash'_arg2_2)))
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union_lh__d1 _lh_blocked'_arg1_0) (ends_lh__d2 _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_7 = ((partition'_lh__d1 (fun x_1 -> 
          ((subset_lh__d1 (ends_lh__d1 x_1)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_7 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend_lh__d2 (let rec t_4_9 = _lh_blocked'_LH_P2_0_0 in
                (let rec h_4_5 = _lh_blocked'_LH_C_0_0 in
                  (fun ys_1_5 -> 
                    (let rec _lh_findhash'_LH_C_1_1 = ((mappend_lh__d2 t_4_9) ys_1_5) in
                      (let rec _lh_findhash'_LH_C_0_1 = h_4_5 in
                        (fun _lh_findhash'_arg2_3 _lh_findhash'_arg1_3 -> 
                          (match _lh_findhash'_LH_C_0_1 with
                            | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_4, _lh_findhash'_K_2_4, _lh_findhash'_K_3_1) -> 
                              (let rec try_4 = (fun newAssocs_1 -> 
                                (let rec newCharAssocs_1 = ((mappend_lh__d3 newAssocs_1) _lh_findhash'_arg2_3) in
                                  (let rec _lh_matchIdent_8 = ((hinsert_lh__d1 ((hash_lh__d1 newCharAssocs_1) (let rec _lh_hash_K_3_1 = _lh_findhash'_K_3_1 in
                                    (let rec _lh_hash_K_2_1 = _lh_findhash'_K_2_4 in
                                      (let rec _lh_hash_K_1_1 = _lh_findhash'_K_1_4 in
                                        (fun _lh_hash_arg1_2 -> 
                                          ((_lh_hash_K_3_1 + ((assoc_lh__d2 _lh_hash_K_1_1) _lh_hash_arg1_2)) + ((assoc_lh__d1 _lh_hash_K_2_1) _lh_hash_arg1_2)))))))) _lh_findhash'_arg1_3) in
                                    (match _lh_matchIdent_8 with
                                      | `Nothing -> 
                                        (`NotEver(1))
                                      | `Just(_lh_findhash'_Just_0_3) -> 
                                        (((findhash'_lh__d1 _lh_findhash'_Just_0_3) newCharAssocs_1) _lh_findhash'_LH_C_1_1)
                                      | _ -> 
                                        (failwith "error"))))) in
                                (let rec maxval_6 = (length_lh__d2 (freqtab_lh__d1 0)) in
                                  (let rec _lh_matchIdent_9 = (let rec _lh_findhash'_LH_P2_1_4 = ((assocm_lh__d1 _lh_findhash'_K_2_4) _lh_findhash'_arg2_3) in
                                    (let rec _lh_findhash'_LH_P2_0_2 = ((assocm_lh__d2 _lh_findhash'_K_1_4) _lh_findhash'_arg2_3) in
                                      (fun _lh_findhash'_K_1_5 _lh_findhash'_K_2_5 maxval_7 try_5 -> 
                                        (((((_lh_findhash'_LH_P2_0_2 _lh_findhash'_K_1_5) _lh_findhash'_K_2_5) _lh_findhash'_LH_P2_1_4) maxval_7) try_5)))) in
                                    ((((_lh_matchIdent_9 _lh_findhash'_K_1_4) _lh_findhash'_K_2_4) maxval_6) try_4))))
                            | _ -> 
                              (failwith "error"))))))))) ((blocked'_lh__d1 ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec blocked_lh__d1 _lh_blocked_arg1_0 =
  ((blocked'_lh__d1 (`LH_N)) _lh_blocked_arg1_0);;
let rec keys_lh__d2 _lh_keys_arg1_3 =
  (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (fun ys_1_0 -> 
    ys_1_0) in
    (let rec h_3_7 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun ys_1_1 -> 
        (let rec t_4_5 = ((mappend_lh__d1 t_4_4) ys_1_1) in
          (let rec h_3_8 = h_3_7 in
            (fun f_3_4 -> 
              (`LH_C((f_3_4 h_3_8), ((map_lh__d1 f_3_4) t_4_5))))))))) in
    (let rec h_3_9 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun ys_1_2 -> 
        (let rec t_4_6 = ((mappend_lh__d1 t_4_3) ys_1_2) in
          (let rec h_4_0 = h_3_9 in
            (fun f_3_5 -> 
              (`LH_C((f_3_5 h_4_0), ((map_lh__d1 f_3_5) t_4_6))))))))) in
    (let rec h_4_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun ys_1_3 -> 
        (let rec t_4_7 = ((mappend_lh__d1 t_4_2) ys_1_3) in
          (let rec h_4_2 = h_4_1 in
            (fun f_3_6 -> 
              (`LH_C((f_3_6 h_4_2), ((map_lh__d1 f_3_6) t_4_7))))))))) in
    (let rec h_4_3 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun ys_1_4 -> 
        (let rec t_4_8 = ((mappend_lh__d1 t_4_1) ys_1_4) in
          (let rec h_4_4 = h_4_3 in
            (fun f_3_7 -> 
              (`LH_C((f_3_7 h_4_4), ((map_lh__d1 f_3_7) t_4_8)))))))));;
let rec cichelli_lh__d1 _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys_lh__d1 ((mappend_lh__d1 (keys_lh__d2 0)) ((take_lh__d1 (_lh_cichelli_arg1_0 mod 2)) (keys_lh__d1 0)))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked_lh__d1 (freqsorted_lh__d1 _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash_lh__d1 hashkeys_0)));;
let rec prog_lh__d1 _lh_prog_arg1_0 =
  (cichelli_lh__d1 _lh_prog_arg1_0);;
let rec testCichelli_nofib_lh__d1 _lh_testCichelli_nofib_arg1_0 =
  (prog_lh__d1 _lh_testCichelli_nofib_arg1_0);;
end;;

