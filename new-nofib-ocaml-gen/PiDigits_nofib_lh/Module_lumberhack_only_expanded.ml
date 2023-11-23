

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec ampOp__d0 _lh_ampOp_arg1_1 _lh_ampOp_arg2_1 =
  (match _lh_ampOp_arg2_1 with
    | `LH_P3(_lh_ampOp_LH_P3_0_1, _lh_ampOp_LH_P3_1_1, _lh_ampOp_LH_P3_2_1) -> 
      (let rec y_1 = ((_lh_ampOp_arg1_1 * 2) + 1) in
        (`LH_P3((_lh_ampOp_LH_P3_0_1 * _lh_ampOp_arg1_1), ((_lh_ampOp_LH_P3_1_1 + (_lh_ampOp_LH_P3_0_1 * 2)) * y_1), (_lh_ampOp_LH_P3_2_1 * y_1))))
    | _ -> 
      (failwith "error"));;
let rec divmod__d0 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (`LH_P2((_lh_divmod_arg1_1 / _lh_divmod_arg2_1), (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1)));;
let rec drop_lz__d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (if (_lh_drop_lz_arg1_1 > 0) then
    (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_drop_lz_arg2_1) in
      (match _lh_matchIdent_5 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
          (Lazy.force ((drop_lz__d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_1);;
let rec mappend__d0 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d0 t_2_7) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d1 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d1 t_2_9) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d2 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d3 t_2_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d4 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d4 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d5 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d5 t_2_6) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec min__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec replicate__d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 =
  (if (_lh_replicate_arg1_1 > 0) then
    (`LH_C(_lh_replicate_arg2_1, ((replicate__d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1)))
  else
    (`LH_N));;
let rec take_lz__d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_3, t_2_5) -> 
        (`LH_C(h_2_3, ((take_lz__d0 (n_4 - 1)) t_2_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz__d1 n_5 ls_2_0 =
  (if (n_5 > 0) then
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_8, t_3_0) -> 
        (`LH_C(h_2_8, ((take_lz__d1 (n_5 - 1)) t_3_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      ((mappend__d0 h_2_2) (concat__d0 t_2_4))
    | `LH_N -> 
      (`LH_N))
and hashOp__d0 _lh_hashOp_arg1_1 _lh_hashOp_arg2_1 =
  (lazy (let rec k_3 = (_lh_hashOp_arg1_1 + 1) in
    (let rec _lh_matchIdent_6 = ((ampOp__d0 k_3) _lh_hashOp_arg2_1) in
      (match _lh_matchIdent_6 with
        | `LH_P3(_lh_hashOp_LH_P3_0_1, _lh_hashOp_LH_P3_1_1, _lh_hashOp_LH_P3_2_1) -> 
          (let rec _lh_matchIdent_7 = ((divmod__d0 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
            (match _lh_matchIdent_7 with
              | `LH_P2(_lh_hashOp_LH_P2_0_1, _lh_hashOp_LH_P2_1_1) -> 
                (if ((_lh_hashOp_LH_P3_0_1 > _lh_hashOp_LH_P3_1_1) || ((_lh_hashOp_LH_P2_1_1 + _lh_hashOp_LH_P3_0_1) >= _lh_hashOp_LH_P3_2_1)) then
                  (Lazy.force ((hashOp__d0 k_3) (`LH_P3(_lh_hashOp_LH_P3_0_1, _lh_hashOp_LH_P3_1_1, _lh_hashOp_LH_P3_2_1))))
                else
                  (`LH_C((string_of_int _lh_hashOp_LH_P2_0_1), ((hashOp__d0 k_3) (`LH_P3((_lh_hashOp_LH_P3_0_1 * 10), ((_lh_hashOp_LH_P3_1_1 - (_lh_hashOp_LH_P2_0_1 * _lh_hashOp_LH_P3_2_1)) * 10), _lh_hashOp_LH_P3_2_1))))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))))
and percOp__d0 _lh_percOp_arg1_1 _lh_percOp_arg2_1 _lh_percOp_arg3_1 =
  (if (_lh_percOp_arg1_1 >= _lh_percOp_arg3_1) then
    (`LH_N)
  else
    (let rec k_2 = (_lh_percOp_arg1_1 + 10) in
      (let rec j_1 = ((min__d0 _lh_percOp_arg3_1) k_2) in
        (let rec _lh_matchIdent_4 = (if (k_2 > _lh_percOp_arg3_1) then
          (`LH_P2(((mappend__d1 ((take_lz__d1 (_lh_percOp_arg3_1 mod 10)) _lh_percOp_arg2_1)) ((replicate__d0 (k_2 - _lh_percOp_arg3_1)) (`LH_C(' ', (`LH_N))))), (lazy (`LH_N))))
        else
          ((splitAt_lz__d0 10) _lh_percOp_arg2_1)) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_percOp_LH_P2_0_1, _lh_percOp_LH_P2_1_1) -> 
              ((mappend__d2 ((mappend__d3 (concat__d0 _lh_percOp_LH_P2_0_1)) ((mappend__d4 (`LH_C('t', (`LH_C(':', (`LH_N)))))) ((mappend__d5 (string_of_int j_1)) (`LH_C('n', (`LH_N))))))) (((percOp__d0 j_1) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_1))
            | _ -> 
              (failwith "error"))))))
and pidgits__d0 _lh_pidgits_arg1_1 =
  (((percOp__d0 0) ((hashOp__d0 0) (`LH_P3(1, 0, 1)))) _lh_pidgits_arg1_1)
and splitAt_lz__d0 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 =
  (`LH_P2(((take_lz__d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1), ((drop_lz__d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1)))
and testPiDigits_nofib__d0 _lh_testPiDigits_nofib_arg1_1 =
  (pidgits__d0 _lh_testPiDigits_nofib_arg1_1);;
end;;

