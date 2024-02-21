
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec take_lz_lh n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (`LH_C(h_0, ((take_lz_lh (n_0 - 1)) t_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec min_lh _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec drop_lz_lh _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz_lh (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_0);;
let rec splitAt_lz_lh _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (`LH_P2(((take_lz_lh _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0), ((drop_lz_lh _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0)));;
let rec replicate_lh _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 > 0) then
    (`LH_C(_lh_replicate_arg2_0, ((replicate_lh (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0)))
  else
    (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_2, t_2) -> 
      ((mappend_lh h_2) (concat_lh t_2))
    | `LH_N -> 
      (`LH_N));;
let rec percOp_lh _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_0 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_0) then
    (`LH_N)
  else
    (let rec k_0 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_0 = ((min_lh _lh_percOp_arg3_0) k_0) in
        (let rec _lh_matchIdent_1 = (if (k_0 > _lh_percOp_arg3_0) then
          (`LH_P2(((mappend_lh ((take_lz_lh (_lh_percOp_arg3_0 mod 10)) _lh_percOp_arg2_0)) ((replicate_lh (k_0 - _lh_percOp_arg3_0)) (`LH_C(' ', (`LH_N))))), (lazy (`LH_N))))
        else
          ((splitAt_lz_lh 10) _lh_percOp_arg2_0)) in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_percOp_LH_P2_0_0, _lh_percOp_LH_P2_1_0) -> 
              ((mappend_lh ((mappend_lh (concat_lh _lh_percOp_LH_P2_0_0)) ((mappend_lh (`LH_C('t', (`LH_C(':', (`LH_N)))))) ((mappend_lh (string_of_int j_0)) (`LH_C('n', (`LH_N))))))) (((percOp_lh j_0) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_0))
            | _ -> 
              (failwith "error"))))));;
let rec divmod_lh _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (`LH_P2((_lh_divmod_arg1_0 / _lh_divmod_arg2_0), (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0)));;
let rec ampOp_lh _lh_ampOp_arg1_0 _lh_ampOp_arg2_0 =
  (match _lh_ampOp_arg2_0 with
    | `LH_P3(_lh_ampOp_LH_P3_0_0, _lh_ampOp_LH_P3_1_0, _lh_ampOp_LH_P3_2_0) -> 
      (let rec y_0 = ((_lh_ampOp_arg1_0 * 2) + 1) in
        (`LH_P3((_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_0), ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0), (_lh_ampOp_LH_P3_2_0 * y_0))))
    | _ -> 
      (failwith "error"));;
let rec hashOp_lh _lh_hashOp_arg1_0 _lh_hashOp_arg2_0 =
  (lazy (let rec k_1 = (_lh_hashOp_arg1_0 + 1) in
    (let rec _lh_matchIdent_2 = ((ampOp_lh k_1) _lh_hashOp_arg2_0) in
      (match _lh_matchIdent_2 with
        | `LH_P3(_lh_hashOp_LH_P3_0_0, _lh_hashOp_LH_P3_1_0, _lh_hashOp_LH_P3_2_0) -> 
          (let rec _lh_matchIdent_3 = ((divmod_lh ((_lh_hashOp_LH_P3_0_0 * 3) + _lh_hashOp_LH_P3_1_0)) _lh_hashOp_LH_P3_2_0) in
            (match _lh_matchIdent_3 with
              | `LH_P2(_lh_hashOp_LH_P2_0_0, _lh_hashOp_LH_P2_1_0) -> 
                (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
                  (Lazy.force ((hashOp_lh k_1) (`LH_P3(_lh_hashOp_LH_P3_0_0, _lh_hashOp_LH_P3_1_0, _lh_hashOp_LH_P3_2_0))))
                else
                  (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), ((hashOp_lh k_1) (`LH_P3((_lh_hashOp_LH_P3_0_0 * 10), ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10), _lh_hashOp_LH_P3_2_0))))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))));;
let rec pidgits_lh _lh_pidgits_arg1_0 =
  (((percOp_lh 0) ((hashOp_lh 0) (`LH_P3(1, 0, 1)))) _lh_pidgits_arg1_0);;
let rec testPiDigits_nofib_lh _lh_testPiDigits_nofib_arg1_0 =
  (pidgits_lh _lh_testPiDigits_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testPiDigits_nofib_lh 5000)));
end;;

