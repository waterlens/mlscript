

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec append_lz__d0 _lh_append_lz_arg1_0 _lh_append_lz_arg2_0 =
  (let rec _lh_matchIdent_1 = _lh_append_lz_arg1_0 in
    (_lh_matchIdent_1 _lh_append_lz_arg2_0));;
let rec append_lz__d1 _lh_append_lz_arg1_1 _lh_append_lz_arg2_1 =
  (let rec _lh_matchIdent_2 = _lh_append_lz_arg1_1 in
    (match _lh_matchIdent_2 with
      | `LH_C(_lh_append_lz_LH_C_0_0, _lh_append_lz_LH_C_1_0) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_0, ((append_lz__d1 _lh_append_lz_LH_C_1_0) _lh_append_lz_arg2_1))))
      | `LH_N -> 
        _lh_append_lz_arg2_1
      | _ -> 
        (failwith "error")));;
let rec carryPropagate__d0 _lh_carryPropagate_arg1_0 _lh_carryPropagate_arg2_0 =
  (lazy (let rec _lh_matchIdent_3 = (Lazy.force _lh_carryPropagate_arg2_0) in
    (_lh_matchIdent_3 _lh_carryPropagate_arg1_0)));;
let rec concat_lz__d0 _lh_concat_lz_arg1_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_concat_lz_arg1_0) in
    (_lh_matchIdent_0 99)));;
let rec enumFromThen__d0 a_0 t_0 =
  (lazy (`LH_C(a_0, ((enumFromThen__d0 t_0) ((2 * t_0) - a_0)))));;
let rec head_lz__d0 ls_0 =
  (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_1) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d0 f_2 ls_2 =
  (lazy ((Lazy.force ls_2) f_2));;
let rec tail_lz__d0 ls_4 =
  (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_5) -> 
      t_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1 ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_2) -> 
      t_2
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz__d0 n_0 ls_3 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_3) with
      | `LH_C(h_3, t_4) -> 
        (`LH_C(h_3, ((take_lz__d0 (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec e__d0 _lh_e_arg1_0 =
  ((take_lz__d0 _lh_e_arg1_0) ((fun b_0 -> 
    ((append_lz__d0 (let rec _lh_append_lz_LH_C_1_1 = (let rec _lh_append_lz_LH_C_1_2 = (fun _lh_append_lz_arg2_2 -> 
      _lh_append_lz_arg2_2) in
      (let rec _lh_append_lz_LH_C_0_1 = '.' in
        (fun _lh_append_lz_arg2_3 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_1, ((append_lz__d0 _lh_append_lz_LH_C_1_2) _lh_append_lz_arg2_3))))))) in
      (let rec _lh_append_lz_LH_C_0_2 = '2' in
        (fun _lh_append_lz_arg2_4 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_2, ((append_lz__d0 _lh_append_lz_LH_C_1_1) _lh_append_lz_arg2_4)))))))) b_0)) ((fun _lh_funcomp_x_0 -> 
    (tail_lz__d0 (concat_lz__d0 _lh_funcomp_x_0))) ((map_lz__d0 (fun _lh_funcomp_x_1 -> 
    (string_of_int (head_lz__d0 _lh_funcomp_x_1)))) ((iterate__d0 (fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((carryPropagate__d0 2) ((map_lz__d1 (fun a_1 -> 
        (10 * a_1))) _lh_funcomp_x_3))) (tail_lz__d1 _lh_funcomp_x_2)))) (lazy (`LH_C(2, ((enumFromThen__d0 1) 1)))))))))
and iterate__d0 f_0 x_0 =
  (lazy (let rec t_3 = ((iterate__d0 f_0) (f_0 x_0)) in
    (let rec h_2 = x_0 in
      (fun f_1 -> 
        (let rec _lh_concat_lz_LH_C_1_0 = ((map_lz__d0 f_1) t_3) in
          (let rec _lh_concat_lz_LH_C_0_0 = (f_1 h_2) in
            (fun _lh_dummy_0 -> 
              (Lazy.force ((append_lz__d1 _lh_concat_lz_LH_C_0_0) (concat_lz__d0 _lh_concat_lz_LH_C_1_0))))))))))
and map_lz__d1 f_3 ls_5 =
  (lazy (match (Lazy.force ls_5) with
    | `LH_C(h_5, t_6) -> 
      (let rec _lh_carryPropagate_LH_C_1_0 = ((map_lz__d1 f_3) t_6) in
        (let rec _lh_carryPropagate_LH_C_0_0 = (f_3 h_5) in
          (fun _lh_carryPropagate_arg1_1 -> 
            (let rec carryguess_0 = (_lh_carryPropagate_LH_C_0_0 / _lh_carryPropagate_arg1_1) in
              (let rec remainder_0 = (_lh_carryPropagate_LH_C_0_0 mod _lh_carryPropagate_arg1_1) in
                (let rec recRes_0 = ((carryPropagate__d0 (_lh_carryPropagate_arg1_1 + 1)) _lh_carryPropagate_LH_C_1_0) in
                  (if (carryguess_0 = ((_lh_carryPropagate_LH_C_0_0 + 9) / _lh_carryPropagate_arg1_1)) then
                    (let rec tail_0 = (lazy (let rec _lh_matchIdent_4 = (Lazy.force recRes_0) in
                      (match _lh_matchIdent_4 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_1, _lh_carryPropagate_LH_C_1_1) -> 
                          (`LH_C((remainder_0 + _lh_carryPropagate_LH_C_0_1), _lh_carryPropagate_LH_C_1_1))
                        | _ -> 
                          (failwith "error")))) in
                      (`LH_C(carryguess_0, tail_0)))
                  else
                    (let rec _lh_matchIdent_5 = (Lazy.force recRes_0) in
                      (match _lh_matchIdent_5 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_2, _lh_carryPropagate_LH_C_1_2) -> 
                          (let rec dCorrected_0 = (_lh_carryPropagate_LH_C_0_0 + _lh_carryPropagate_LH_C_0_2) in
                            (`LH_C((dCorrected_0 / _lh_carryPropagate_arg1_1), (lazy (`LH_C((dCorrected_0 mod _lh_carryPropagate_arg1_1), _lh_carryPropagate_LH_C_1_2))))))
                        | _ -> 
                          (failwith "error"))))))))))
    | `LH_N -> 
      (fun _lh_carryPropagate_arg1_2 -> 
        (failwith "error"))))
and testDigitsOfE2_nofib__d0 _lh_testDigitsOfE2_nofib_arg1_0 =
  (e__d0 _lh_testDigitsOfE2_nofib_arg1_0);;
end;;

