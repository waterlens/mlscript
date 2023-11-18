

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec ampOp__d0 _lh_ampOp_arg1_0 _lh_ampOp_arg2_0 =
  (match _lh_ampOp_arg2_0 with
    | `LH_P3(_lh_ampOp_LH_P3_0_0, _lh_ampOp_LH_P3_1_0, _lh_ampOp_LH_P3_2_0) -> 
      (let rec y_0 = ((_lh_ampOp_arg1_0 * 2) + 1) in
        (`LH_P3((_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_0), ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0), (_lh_ampOp_LH_P3_2_0 * y_0))))
    | _ -> 
      (failwith "error"));;
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec drop_lz__d0 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz__d0 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_0);;
let rec mappend__d1 xs_3 ys_1_6 =
  (xs_3 ys_1_6);;
let rec mappend__d2 xs_4 ys_1_7 =
  (xs_4 ys_1_7);;
let rec mappend__d3 xs_5 ys_2_5 =
  (xs_5 ys_2_5);;
let rec mappend__d4 xs_1 ys_1_3 =
  (xs_1 ys_1_3);;
let rec min__d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec divmod__d0 _lh_divmod_arg1_0 _lh_divmod_arg2_0 _lh_hashOp_LH_P3_0_0 _lh_hashOp_LH_P3_1_0 _lh_hashOp_LH_P3_2_0 k_0 =
  (let rec _lh_hashOp_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_hashOp_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
        (Lazy.force ((hashOp__d0 k_0) (`LH_P3(_lh_hashOp_LH_P3_0_0, _lh_hashOp_LH_P3_1_0, _lh_hashOp_LH_P3_2_0))))
      else
        (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), ((hashOp__d0 k_0) (`LH_P3((_lh_hashOp_LH_P3_0_0 * 10), ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10), _lh_hashOp_LH_P3_2_0))))))))
and hashOp__d0 _lh_hashOp_arg1_0 _lh_hashOp_arg2_0 =
  (lazy (let rec k_2 = (_lh_hashOp_arg1_0 + 1) in
    (let rec _lh_matchIdent_2 = ((ampOp__d0 k_2) _lh_hashOp_arg2_0) in
      (match _lh_matchIdent_2 with
        | `LH_P3(_lh_hashOp_LH_P3_0_1, _lh_hashOp_LH_P3_1_1, _lh_hashOp_LH_P3_2_1) -> 
          (let rec _lh_matchIdent_3 = ((divmod__d0 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
            ((((_lh_matchIdent_3 _lh_hashOp_LH_P3_0_1) _lh_hashOp_LH_P3_1_1) _lh_hashOp_LH_P3_2_1) k_2))
        | _ -> 
          (failwith "error")))))
and mappend__d0 xs_0 ys_3 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (let rec t_4 = ((mappend__d0 t_3) ys_3) in
        (let rec h_4 = h_3 in
          (fun ys_4 -> 
            (let rec t_5 = ((mappend__d3 t_4) ys_4) in
              (let rec h_5 = h_4 in
                (fun ys_5 -> 
                  (`LH_C(h_5, ((mappend__d2 t_5) ys_5)))))))))
    | `LH_N -> 
      ys_3)
and mappend__d5 xs_2 ys_1_4 =
  (match xs_2 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec t_1_2 = ((mappend__d5 t_1_1) ys_1_4) in
        (let rec h_1_2 = h_1_1 in
          (fun ys_1_5 -> 
            (`LH_C(h_1_2, ((mappend__d2 t_1_2) ys_1_5))))))
    | `LH_N -> 
      ys_1_4)
and percOp__d0 _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_1 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_1) then
    (`LH_N)
  else
    (let rec k_1 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_1 = ((min__d0 _lh_percOp_arg3_1) k_1) in
        (let rec _lh_matchIdent_1 = (if (k_1 > _lh_percOp_arg3_1) then
          (let rec _lh_percOp_LH_P2_1_1 = (lazy (`LH_N)) in
            (let rec _lh_percOp_LH_P2_0_1 = ((mappend__d1 ((take_lz__d1 (_lh_percOp_arg3_1 mod 10)) _lh_percOp_arg2_0)) ((replicate__d0 (k_1 - _lh_percOp_arg3_1)) (`LH_C(' ', (`LH_N))))) in
              (fun _lh_percOp_arg3_2 j_2 -> 
                ((mappend__d2 ((mappend__d3 (concat__d0 _lh_percOp_LH_P2_0_1)) ((mappend__d4 (let rec t_1_3 = (let rec t_1_4 = (fun ys_1_8 -> 
                  ys_1_8) in
                  (let rec h_1_3 = ':' in
                    (fun ys_1_9 -> 
                      (let rec t_1_5 = ((mappend__d4 t_1_4) ys_1_9) in
                        (let rec h_1_4 = h_1_3 in
                          (fun ys_2_0 -> 
                            (`LH_C(h_1_4, ((mappend__d2 t_1_5) ys_2_0))))))))) in
                  (let rec h_1_5 = 't' in
                    (fun ys_2_1 -> 
                      (let rec t_1_6 = ((mappend__d4 t_1_3) ys_2_1) in
                        (let rec h_1_6 = h_1_5 in
                          (fun ys_2_2 -> 
                            (`LH_C(h_1_6, ((mappend__d2 t_1_6) ys_2_2)))))))))) ((mappend__d5 (string_of_int j_2)) (let rec t_1_7 = (fun ys_2_3 -> 
                  ys_2_3) in
                  (let rec h_1_7 = 'n' in
                    (fun ys_2_4 -> 
                      (`LH_C(h_1_7, ((mappend__d2 t_1_7) ys_2_4)))))))))) (((percOp__d0 j_2) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_2)))))
        else
          ((splitAt_lz__d0 10) _lh_percOp_arg2_0)) in
          ((_lh_matchIdent_1 _lh_percOp_arg3_1) j_1)))))
and pidgits__d0 _lh_pidgits_arg1_0 =
  (((percOp__d0 0) ((hashOp__d0 0) (`LH_P3(1, 0, 1)))) _lh_pidgits_arg1_0)
and replicate__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 _lh_popOutId_0_2 =
  (if (_lh_replicate_arg1_0 > 0) then
    (let rec t_1_8 = ((replicate__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_1_8 = _lh_replicate_arg2_0 in
        ((mappend__d0 h_1_8) (concat__d0 t_1_8))))
  else
    (fun ys_2_6 -> 
      ys_2_6))
and splitAt_lz__d0 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 _lh_percOp_arg3_0 j_0 =
  (let rec _lh_percOp_LH_P2_1_0 = ((drop_lz__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_percOp_LH_P2_0_0 = ((take_lz__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      ((mappend__d2 ((mappend__d3 (concat__d0 _lh_percOp_LH_P2_0_0)) ((mappend__d4 (let rec t_6 = (let rec t_7 = (fun ys_6 -> 
        ys_6) in
        (let rec h_6 = ':' in
          (fun ys_7 -> 
            (let rec t_8 = ((mappend__d4 t_7) ys_7) in
              (let rec h_7 = h_6 in
                (fun ys_8 -> 
                  (`LH_C(h_7, ((mappend__d2 t_8) ys_8))))))))) in
        (let rec h_8 = 't' in
          (fun ys_9 -> 
            (let rec t_9 = ((mappend__d4 t_6) ys_9) in
              (let rec h_9 = h_8 in
                (fun ys_1_0 -> 
                  (`LH_C(h_9, ((mappend__d2 t_9) ys_1_0)))))))))) ((mappend__d5 (string_of_int j_0)) (let rec t_1_0 = (fun ys_1_1 -> 
        ys_1_1) in
        (let rec h_1_0 = 'n' in
          (fun ys_1_2 -> 
            (`LH_C(h_1_0, ((mappend__d2 t_1_0) ys_1_2)))))))))) (((percOp__d0 j_0) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_0))))
and take_lz__d0 n_1 ls_1 _lh_popOutId_0_4 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1_9, t_1_9) -> 
        (let rec t_2_0 = ((take_lz__d0 (n_1 - 1)) t_1_9) in
          (let rec h_2_0 = h_1_9 in
            ((mappend__d0 h_2_0) (concat__d0 t_2_0))))
      | `LH_N -> 
        (fun ys_2_7 -> 
          ys_2_7))
  else
    (fun ys_2_8 -> 
      ys_2_8))
and take_lz__d1 n_0 ls_0 _lh_popOutId_0_1 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (fun _lh_dummy_0 -> 
          (let rec t_1 = ((take_lz__d1 (n_0 - 1)) t_0) in
            (let rec h_1 = h_0 in
              (let rec t_2 = ((mappend__d1 t_1) _lh_popOutId_0_1) in
                (let rec h_2 = h_1 in
                  ((mappend__d0 h_2) (concat__d0 t_2)))))))
      | `LH_N -> 
        _lh_popOutId_0_1)
  else
    _lh_popOutId_0_1)
and testPiDigits_nofib__d0 _lh_testPiDigits_nofib_arg1_0 =
  (pidgits__d0 _lh_testPiDigits_nofib_arg1_0);;
end;;

