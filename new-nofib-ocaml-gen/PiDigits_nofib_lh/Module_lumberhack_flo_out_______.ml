

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end) = struct
let rec ampOp_lh__d1 _lh_ampOp_arg1_0 _lh_ampOp_arg2_0 =
  (match _lh_ampOp_arg2_0 with
    | `LH_P3(_lh_ampOp_LH_P3_0_0, _lh_ampOp_LH_P3_1_0, _lh_ampOp_LH_P3_2_0) -> 
      (let rec y_0 = ((_lh_ampOp_arg1_0 * 2) + 1) in
        (`LH_P3((_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_0), ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0), (_lh_ampOp_LH_P3_2_0 * y_0))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d6 xs_4 ys_2_2 =
  (match xs_4 with
    | `LH_C(h_1_8, t_1_8) -> 
      (let rec t_1_9 = ((mappend_lh__d6 t_1_8) ys_2_2) in
        (let rec h_1_9 = h_1_8 in
          (fun ys_2_3 -> 
            (let rec t_2_0 = (t_1_9 ys_2_3) in
              (let rec h_2_0 = h_1_9 in
                (fun ys_2_4 -> 
                  (`LH_C(h_2_0, (t_2_0 ys_2_4)))))))))
    | `LH_N -> 
      ys_2_2);;
let rec replicate_lh__d1 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 > 0) then
    (let rec t_1_7 = ((replicate_lh__d1 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_1_7 = _lh_replicate_arg2_0 in
        (fun _lh_dummy_1 -> 
          ((mappend_lh__d6 h_1_7) (t_1_7 99)))))
  else
    (fun _lh_dummy_2 ys_2_1 -> 
      ys_2_1));;
let rec mappend_lh__d1 xs_0 ys_7 =
  (match xs_0 with
    | `LH_C(h_5, t_5) -> 
      (let rec t_6 = ((mappend_lh__d1 t_5) ys_7) in
        (let rec h_6 = h_5 in
          (fun ys_8 -> 
            (`LH_C(h_6, (t_6 ys_8))))))
    | `LH_N -> 
      ys_7);;
let rec take_lz_lh__d2 n_1 ls_1 _lh_popOutId_0_1 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1_5, t_1_5) -> 
        (let rec t_1_6 = ((take_lz_lh__d2 (n_1 - 1)) t_1_5) in
          (let rec h_1_6 = h_1_5 in
            ((mappend_lh__d6 h_1_6) (t_1_6 99))))
      | `LH_N -> 
        (fun ys_1_8 -> 
          ys_1_8))
  else
    (fun ys_1_9 -> 
      ys_1_9));;
let rec drop_lz_lh__d1 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_1 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz_lh__d1 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_0);;
let rec min_lh__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec take_lz_lh__d1 n_0 ls_0 _lh_popOutId_0_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_1_2, t_1_2) -> 
        (fun _lh_dummy_0 -> 
          (let rec t_1_3 = ((take_lz_lh__d1 (n_0 - 1)) t_1_2) in
            (let rec h_1_3 = h_1_2 in
              (let rec t_1_4 = (t_1_3 _lh_popOutId_0_0) in
                (let rec h_1_4 = h_1_3 in
                  ((mappend_lh__d6 h_1_4) (t_1_4 99)))))))
      | `LH_N -> 
        _lh_popOutId_0_0)
  else
    _lh_popOutId_0_0);;
let rec percOp_lh__d1 _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_0 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_0) then
    (`LH_N)
  else
    (let rec k_0 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_0 = ((min_lh__d1 _lh_percOp_arg3_0) k_0) in
        (let rec _lh_matchIdent_0 = (if (k_0 > _lh_percOp_arg3_0) then
          (let rec _lh_percOp_LH_P2_1_0 = (lazy (`LH_N)) in
            (let rec _lh_percOp_LH_P2_0_0 = (((take_lz_lh__d1 (_lh_percOp_arg3_0 mod 10)) _lh_percOp_arg2_0) ((replicate_lh__d1 (k_0 - _lh_percOp_arg3_0)) (`LH_C(' ', (`LH_N))))) in
              (fun _lh_percOp_arg3_1 j_1 -> 
                (((_lh_percOp_LH_P2_0_0 99) ((let rec t_0 = (let rec t_1 = (fun ys_0 -> 
                  ys_0) in
                  (let rec h_0 = ':' in
                    (fun ys_1 -> 
                      (let rec t_2 = (t_1 ys_1) in
                        (let rec h_1 = h_0 in
                          (fun ys_2 -> 
                            (`LH_C(h_1, (t_2 ys_2))))))))) in
                  (let rec h_2 = 't' in
                    (fun ys_3 -> 
                      (let rec t_3 = (t_0 ys_3) in
                        (let rec h_3 = h_2 in
                          (fun ys_4 -> 
                            (`LH_C(h_3, (t_3 ys_4))))))))) ((mappend_lh__d1 (string_of_int j_1)) (let rec t_4 = (fun ys_5 -> 
                  ys_5) in
                  (let rec h_4 = 'n' in
                    (fun ys_6 -> 
                      (`LH_C(h_4, (t_4 ys_6))))))))) (((percOp_lh__d1 j_1) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_1)))))
        else
          ((splitAt_lz_lh__d1 10) _lh_percOp_arg2_0)) in
          ((_lh_matchIdent_0 _lh_percOp_arg3_0) j_0)))))
and
splitAt_lz_lh__d1 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_percOp_LH_P2_1_1 = ((drop_lz_lh__d1 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_percOp_LH_P2_0_1 = ((take_lz_lh__d2 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun _lh_percOp_arg3_2 j_2 -> 
        (((_lh_percOp_LH_P2_0_1 99) ((let rec t_7 = (let rec t_8 = (fun ys_9 -> 
          ys_9) in
          (let rec h_7 = ':' in
            (fun ys_1_0 -> 
              (let rec t_9 = (t_8 ys_1_0) in
                (let rec h_8 = h_7 in
                  (fun ys_1_1 -> 
                    (`LH_C(h_8, (t_9 ys_1_1))))))))) in
          (let rec h_9 = 't' in
            (fun ys_1_2 -> 
              (let rec t_1_0 = (t_7 ys_1_2) in
                (let rec h_1_0 = h_9 in
                  (fun ys_1_3 -> 
                    (`LH_C(h_1_0, (t_1_0 ys_1_3))))))))) ((mappend_lh__d1 (string_of_int j_2)) (let rec t_1_1 = (fun ys_1_4 -> 
          ys_1_4) in
          (let rec h_1_1 = 'n' in
            (fun ys_1_5 -> 
              (`LH_C(h_1_1, (t_1_1 ys_1_5))))))))) (((percOp_lh__d1 j_2) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_2)))));;
let rec divmod_lh__d1 _lh_divmod_arg1_0 _lh_divmod_arg2_0 _lh_hashOp_LH_P3_0_0 _lh_hashOp_LH_P3_1_0 _lh_hashOp_LH_P3_2_0 k_1 =
  (let rec _lh_hashOp_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_hashOp_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
        (Lazy.force (lazy (let rec k_2 = (k_1 + 1) in
          (let rec _lh_matchIdent_2 = ((ampOp_lh__d1 k_2) (`LH_P3(_lh_hashOp_LH_P3_0_0, _lh_hashOp_LH_P3_1_0, _lh_hashOp_LH_P3_2_0))) in
            (match _lh_matchIdent_2 with
              | `LH_P3(_lh_hashOp_LH_P3_0_1, _lh_hashOp_LH_P3_1_1, _lh_hashOp_LH_P3_2_1) -> 
                (let rec _lh_matchIdent_3 = ((divmod_lh__d1 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
                  ((((_lh_matchIdent_3 _lh_hashOp_LH_P3_0_1) _lh_hashOp_LH_P3_1_1) _lh_hashOp_LH_P3_2_1) k_2))
              | _ -> 
                (failwith "error"))))))
      else
        (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), (lazy (let rec k_3 = (k_1 + 1) in
          (let rec _lh_matchIdent_4 = ((ampOp_lh__d1 k_3) (`LH_P3((_lh_hashOp_LH_P3_0_0 * 10), ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10), _lh_hashOp_LH_P3_2_0))) in
            (match _lh_matchIdent_4 with
              | `LH_P3(_lh_hashOp_LH_P3_0_2, _lh_hashOp_LH_P3_1_2, _lh_hashOp_LH_P3_2_2) -> 
                (let rec _lh_matchIdent_5 = ((divmod_lh__d1 ((_lh_hashOp_LH_P3_0_2 * 3) + _lh_hashOp_LH_P3_1_2)) _lh_hashOp_LH_P3_2_2) in
                  ((((_lh_matchIdent_5 _lh_hashOp_LH_P3_0_2) _lh_hashOp_LH_P3_1_2) _lh_hashOp_LH_P3_2_2) k_3))
              | _ -> 
                (failwith "error"))))))))));;
let rec pidgits_lh__d1 _lh_pidgits_arg1_0 =
  (((percOp_lh__d1 0) (lazy (let rec k_4 = (0 + 1) in
    (let rec _lh_matchIdent_6 = ((ampOp_lh__d1 k_4) (`LH_P3(1, 0, 1))) in
      (match _lh_matchIdent_6 with
        | `LH_P3(_lh_hashOp_LH_P3_0_3, _lh_hashOp_LH_P3_1_3, _lh_hashOp_LH_P3_2_3) -> 
          (let rec _lh_matchIdent_7 = ((divmod_lh__d1 ((_lh_hashOp_LH_P3_0_3 * 3) + _lh_hashOp_LH_P3_1_3)) _lh_hashOp_LH_P3_2_3) in
            ((((_lh_matchIdent_7 _lh_hashOp_LH_P3_0_3) _lh_hashOp_LH_P3_1_3) _lh_hashOp_LH_P3_2_3) k_4))
        | _ -> 
          (failwith "error")))))) _lh_pidgits_arg1_0);;
let rec testPiDigits_nofib_lh__d1 _lh_testPiDigits_nofib_arg1_0 =
  (pidgits_lh__d1 _lh_testPiDigits_nofib_arg1_0);;
end;;

