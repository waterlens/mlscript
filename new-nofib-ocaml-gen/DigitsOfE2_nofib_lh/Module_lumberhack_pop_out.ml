

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec head_lz_lh ls_0 =
  (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec enumFromThen_lh a_1 t_1 =
  (lazy (`LH_C(a_1, ((enumFromThen_lh t_1) ((2 * t_1) - a_1)))));;
let rec carryPropagate_lh _lh_carryPropagate_arg1_0 _lh_carryPropagate_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_carryPropagate_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_carryPropagate_LH_C_0_0, _lh_carryPropagate_LH_C_1_0) -> 
        (let rec carryguess_0 = (_lh_carryPropagate_LH_C_0_0 / _lh_carryPropagate_arg1_0) in
          (let rec remainder_0 = (_lh_carryPropagate_LH_C_0_0 mod _lh_carryPropagate_arg1_0) in
            (let rec recRes_0 = ((carryPropagate_lh (_lh_carryPropagate_arg1_0 + 1)) _lh_carryPropagate_LH_C_1_0) in
              (if (carryguess_0 = ((_lh_carryPropagate_LH_C_0_0 + 9) / _lh_carryPropagate_arg1_0)) then
                (let rec tail_0 = (lazy (let rec _lh_matchIdent_1 = (Lazy.force recRes_0) in
                  (match _lh_matchIdent_1 with
                    | `LH_C(_lh_carryPropagate_LH_C_0_1, _lh_carryPropagate_LH_C_1_1) -> 
                      (`LH_C((remainder_0 + _lh_carryPropagate_LH_C_0_1), _lh_carryPropagate_LH_C_1_1))
                    | _ -> 
                      (failwith "error")))) in
                  (`LH_C(carryguess_0, tail_0)))
              else
                (let rec _lh_matchIdent_2 = (Lazy.force recRes_0) in
                  (match _lh_matchIdent_2 with
                    | `LH_C(_lh_carryPropagate_LH_C_0_2, _lh_carryPropagate_LH_C_1_2) -> 
                      (let rec dCorrected_0 = (_lh_carryPropagate_LH_C_0_0 + _lh_carryPropagate_LH_C_0_2) in
                        (`LH_C((dCorrected_0 / _lh_carryPropagate_arg1_0), (lazy (`LH_C((dCorrected_0 mod _lh_carryPropagate_arg1_0), _lh_carryPropagate_LH_C_1_2))))))
                    | _ -> 
                      (failwith "error")))))))
      | _ -> 
        (failwith "error"))));;
let rec map_lz_lh f_0 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_2) -> 
      (`LH_C((f_0 h_1), ((map_lz_lh f_0) t_2)))
    | `LH_N -> 
      (`LH_N)));;
let rec append_lz_lh _lh_append_lz_arg1_0 _lh_append_lz_arg2_0 =
  (let rec _lh_matchIdent_3 = _lh_append_lz_arg1_0 in
    (match _lh_matchIdent_3 with
      | `LH_C(_lh_append_lz_LH_C_0_0, _lh_append_lz_LH_C_1_0) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_0, ((append_lz_lh _lh_append_lz_LH_C_1_0) _lh_append_lz_arg2_0))))
      | `LH_N -> 
        _lh_append_lz_arg2_0
      | _ -> 
        (failwith "error")));;
let rec take_lz_lh n_0 ls_2 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_2) with
      | `LH_C(h_2, t_3) -> 
        (`LH_C(h_2, ((take_lz_lh (n_0 - 1)) t_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec iterate_lh f_1 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh f_1) (f_1 x_0)))));;
let rec tail_lz_lh ls_3 =
  (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec concat_lz_lh _lh_concat_lz_arg1_0 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_concat_lz_arg1_0) in
    (match _lh_matchIdent_4 with
      | `LH_C(_lh_concat_lz_LH_C_0_0, _lh_concat_lz_LH_C_1_0) -> 
        (Lazy.force ((append_lz_lh _lh_concat_lz_LH_C_0_0) (concat_lz_lh _lh_concat_lz_LH_C_1_0)))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error"))));;
let rec e_lh _lh_e_arg1_0 =
  ((take_lz_lh _lh_e_arg1_0) ((fun b_0 -> 
    ((append_lz_lh (`LH_C('2', (`LH_C('.', (`LH_N)))))) b_0)) ((fun _lh_funcomp_x_0 -> 
    (tail_lz_lh (concat_lz_lh _lh_funcomp_x_0))) ((map_lz_lh (fun _lh_funcomp_x_1 -> 
    (string_of_int (head_lz_lh _lh_funcomp_x_1)))) ((iterate_lh (fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((carryPropagate_lh 2) ((map_lz_lh (fun a_0 -> 
        (10 * a_0))) _lh_funcomp_x_3))) (tail_lz_lh _lh_funcomp_x_2)))) (lazy (`LH_C(2, ((enumFromThen_lh 1) 1)))))))));;
let rec testDigitsOfE2_nofib_lh _lh_testDigitsOfE2_nofib_arg1_0 =
  (e_lh _lh_testDigitsOfE2_nofib_arg1_0);;
end;;

