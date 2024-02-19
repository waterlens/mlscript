

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______(LH_Dum: sig end) = struct
let rec enumFromThen_lh__d1 a_0 t_0 =
  (lazy (`LH_C(a_0, ((enumFromThen_lh__d1 t_0) ((2 * t_0) - a_0)))));;
let rec head_lz_lh__d1 ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_0, t_1) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec append_lz_lh__d2 _lh_append_lz_arg1_1 _lh_append_lz_arg2_4 =
  (let rec _lh_matchIdent_7 = _lh_append_lz_arg1_1 in
    (match _lh_matchIdent_7 with
      | `LH_C(_lh_append_lz_LH_C_0_2, _lh_append_lz_LH_C_1_2) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_2, ((append_lz_lh__d2 _lh_append_lz_LH_C_1_2) _lh_append_lz_arg2_4))))
      | `LH_N -> 
        _lh_append_lz_arg2_4
      | _ -> 
        (failwith "error")));;
let rec iterate_lh__d1 f_1 x_0 =
  (lazy (let rec t_2 = ((iterate_lh__d1 f_1) (f_1 x_0)) in
    (let rec h_1 = x_0 in
      (fun f_2 -> 
        (let rec _lh_concat_lz_LH_C_1_0 = (lazy ((Lazy.force t_2) f_2)) in
          (let rec _lh_concat_lz_LH_C_0_0 = (f_2 h_1) in
            (fun _lh_dummy_0 -> 
              (Lazy.force ((append_lz_lh__d2 _lh_concat_lz_LH_C_0_0) (lazy (let rec _lh_matchIdent_8 = (Lazy.force _lh_concat_lz_LH_C_1_0) in
                (_lh_matchIdent_8 99))))))))))));;
let rec map_lz_lh__d2 f_3 ls_2 =
  (lazy (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_3) -> 
      (let rec _lh_carryPropagate_LH_C_1_0 = ((map_lz_lh__d2 f_3) t_3) in
        (let rec _lh_carryPropagate_LH_C_0_0 = (f_3 h_2) in
          (fun _lh_carryPropagate_arg1_1 -> 
            (let rec carryguess_0 = (_lh_carryPropagate_LH_C_0_0 / _lh_carryPropagate_arg1_1) in
              (let rec remainder_0 = (_lh_carryPropagate_LH_C_0_0 mod _lh_carryPropagate_arg1_1) in
                (let rec recRes_0 = (lazy (let rec _lh_matchIdent_9 = (Lazy.force _lh_carryPropagate_LH_C_1_0) in
                  (_lh_matchIdent_9 (_lh_carryPropagate_arg1_1 + 1)))) in
                  (if (carryguess_0 = ((_lh_carryPropagate_LH_C_0_0 + 9) / _lh_carryPropagate_arg1_1)) then
                    (let rec tail_0 = (lazy (let rec _lh_matchIdent_1_0 = (Lazy.force recRes_0) in
                      (match _lh_matchIdent_1_0 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_1, _lh_carryPropagate_LH_C_1_1) -> 
                          (`LH_C((remainder_0 + _lh_carryPropagate_LH_C_0_1), _lh_carryPropagate_LH_C_1_1))
                        | _ -> 
                          (failwith "error")))) in
                      (`LH_C(carryguess_0, tail_0)))
                  else
                    (let rec _lh_matchIdent_1_1 = (Lazy.force recRes_0) in
                      (match _lh_matchIdent_1_1 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_2, _lh_carryPropagate_LH_C_1_2) -> 
                          (let rec dCorrected_0 = (_lh_carryPropagate_LH_C_0_0 + _lh_carryPropagate_LH_C_0_2) in
                            (`LH_C((dCorrected_0 / _lh_carryPropagate_arg1_1), (lazy (`LH_C((dCorrected_0 mod _lh_carryPropagate_arg1_1), _lh_carryPropagate_LH_C_1_2))))))
                        | _ -> 
                          (failwith "error"))))))))))
    | `LH_N -> 
      (fun _lh_carryPropagate_arg1_2 -> 
        (failwith "error"))));;
let rec tail_lz_lh__d2 ls_3 =
  (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_lh__d1 ls_4 =
  (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_5) -> 
      t_5
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz_lh__d1 n_0 ls_5 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_5) with
      | `LH_C(h_5, t_6) -> 
        (`LH_C(h_5, ((take_lz_lh__d1 (n_0 - 1)) t_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec e_lh__d1 _lh_e_arg1_0 =
  ((take_lz_lh__d1 _lh_e_arg1_0) ((fun b_0 -> 
    (let rec _lh_matchIdent_2 = (let rec _lh_append_lz_LH_C_1_0 = (let rec _lh_append_lz_LH_C_1_1 = (fun _lh_append_lz_arg2_1 -> 
      _lh_append_lz_arg2_1) in
      (let rec _lh_append_lz_LH_C_0_0 = '.' in
        (fun _lh_append_lz_arg2_2 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_0, (let rec _lh_matchIdent_3 = _lh_append_lz_LH_C_1_1 in
            (_lh_matchIdent_3 _lh_append_lz_arg2_2)))))))) in
      (let rec _lh_append_lz_LH_C_0_1 = '2' in
        (fun _lh_append_lz_arg2_3 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_1, (let rec _lh_matchIdent_4 = _lh_append_lz_LH_C_1_0 in
            (_lh_matchIdent_4 _lh_append_lz_arg2_3)))))))) in
      (_lh_matchIdent_2 b_0))) ((fun _lh_funcomp_x_0 -> 
    (tail_lz_lh__d2 (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_funcomp_x_0) in
      (_lh_matchIdent_5 99))))) (lazy ((Lazy.force ((iterate_lh__d1 (fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      (lazy (let rec _lh_matchIdent_6 = (Lazy.force ((map_lz_lh__d2 (fun a_1 -> 
        (10 * a_1))) _lh_funcomp_x_2)) in
        (_lh_matchIdent_6 2)))) (tail_lz_lh__d1 _lh_funcomp_x_1)))) (lazy (`LH_C(2, ((enumFromThen_lh__d1 1) 1)))))) (fun _lh_funcomp_x_3 -> 
    (string_of_int (head_lz_lh__d1 _lh_funcomp_x_3))))))));;
let rec testDigitsOfE2_nofib_lh__d1 _lh_testDigitsOfE2_nofib_arg1_0 =
  (e_lh__d1 _lh_testDigitsOfE2_nofib_arg1_0);;
end;;

