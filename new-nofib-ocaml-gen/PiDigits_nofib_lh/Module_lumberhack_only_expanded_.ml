

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec ampOp_lh__d1 _lh_ampOp_arg1_0 _lh_ampOp_arg2_0 =
  (match _lh_ampOp_arg2_0 with
    | `LH_P3(_lh_ampOp_LH_P3_0_0, _lh_ampOp_LH_P3_1_0, _lh_ampOp_LH_P3_2_0) -> 
      (let rec y_0 = ((_lh_ampOp_arg1_0 * 2) + 1) in
        (`LH_P3((_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_0), ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0), (_lh_ampOp_LH_P3_2_0 * y_0))))
    | _ -> 
      (failwith "error"));;
let rec divmod_lh__d1 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (`LH_P2((_lh_divmod_arg1_0 / _lh_divmod_arg2_0), (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0)));;
let rec hashOp_lh__d1 _lh_hashOp_arg1_0 _lh_hashOp_arg2_0 =
  (lazy (let rec k_0 = (_lh_hashOp_arg1_0 + 1) in
    (let rec _lh_matchIdent_1 = ((ampOp_lh__d1 k_0) _lh_hashOp_arg2_0) in
      (match _lh_matchIdent_1 with
        | `LH_P3(_lh_hashOp_LH_P3_0_0, _lh_hashOp_LH_P3_1_0, _lh_hashOp_LH_P3_2_0) -> 
          (let rec _lh_matchIdent_2 = ((divmod_lh__d1 ((_lh_hashOp_LH_P3_0_0 * 3) + _lh_hashOp_LH_P3_1_0)) _lh_hashOp_LH_P3_2_0) in
            (match _lh_matchIdent_2 with
              | `LH_P2(_lh_hashOp_LH_P2_0_0, _lh_hashOp_LH_P2_1_0) -> 
                (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
                  (Lazy.force ((hashOp_lh__d1 k_0) (`LH_P3(_lh_hashOp_LH_P3_0_0, _lh_hashOp_LH_P3_1_0, _lh_hashOp_LH_P3_2_0))))
                else
                  (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), ((hashOp_lh__d1 k_0) (`LH_P3((_lh_hashOp_LH_P3_0_0 * 10), ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10), _lh_hashOp_LH_P3_2_0))))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))));;
let rec mappend_lh__d1 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d1 t_6) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec drop_lz_lh__d1 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz_lh__d1 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_0);;
let rec take_lz_lh__d2 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (`LH_C(h_0, ((take_lz_lh__d2 (n_0 - 1)) t_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec splitAt_lz_lh__d1 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (`LH_P2(((take_lz_lh__d2 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0), ((drop_lz_lh__d1 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0)));;
let rec mappend_lh__d2 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d2 t_5) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d5 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d5 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend_lh__d4 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d4 t_3) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec min_lh__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec take_lz_lh__d1 n_1 ls_1 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_7, t_7) -> 
        (`LH_C(h_7, ((take_lz_lh__d1 (n_1 - 1)) t_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec mappend_lh__d6 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d6 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_8) -> 
      ((mappend_lh__d6 h_8) (concat_lh__d1 t_8))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d3 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d3 t_4) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec replicate_lh__d1 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 > 0) then
    (`LH_C(_lh_replicate_arg2_0, ((replicate_lh__d1 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0)))
  else
    (`LH_N));;
let rec percOp_lh__d1 _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_0 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_0) then
    (`LH_N)
  else
    (let rec k_1 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_0 = ((min_lh__d1 _lh_percOp_arg3_0) k_1) in
        (let rec _lh_matchIdent_3 = (if (k_1 > _lh_percOp_arg3_0) then
          (`LH_P2(((mappend_lh__d4 ((take_lz_lh__d1 (_lh_percOp_arg3_0 mod 10)) _lh_percOp_arg2_0)) ((replicate_lh__d1 (k_1 - _lh_percOp_arg3_0)) (`LH_C(' ', (`LH_N))))), (lazy (`LH_N))))
        else
          ((splitAt_lz_lh__d1 10) _lh_percOp_arg2_0)) in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_percOp_LH_P2_0_0, _lh_percOp_LH_P2_1_0) -> 
              ((mappend_lh__d5 ((mappend_lh__d2 (concat_lh__d1 _lh_percOp_LH_P2_0_0)) ((mappend_lh__d3 (`LH_C('t', (`LH_C(':', (`LH_N)))))) ((mappend_lh__d1 (string_of_int j_0)) (`LH_C('n', (`LH_N))))))) (((percOp_lh__d1 j_0) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_0))
            | _ -> 
              (failwith "error"))))));;
let rec pidgits_lh__d1 _lh_pidgits_arg1_0 =
  (((percOp_lh__d1 0) ((hashOp_lh__d1 0) (`LH_P3(1, 0, 1)))) _lh_pidgits_arg1_0);;
let rec testPiDigits_nofib_lh__d1 _lh_testPiDigits_nofib_arg1_0 =
  (pidgits_lh__d1 _lh_testPiDigits_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testPiDigits_nofib_lh__d1 5000)));
end;;

