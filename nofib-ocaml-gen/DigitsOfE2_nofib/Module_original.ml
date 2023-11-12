
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec append_lz__d0 _lh_append_lz_arg1_2 _lh_append_lz_arg2_2 =
  (let rec _lh_matchIdent_1_0 = _lh_append_lz_arg1_2 in
    (match _lh_matchIdent_1_0 with
      | `LH_C(_lh_append_lz_LH_C_0_2, _lh_append_lz_LH_C_1_2) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_2, ((append_lz__d0 _lh_append_lz_LH_C_1_2) _lh_append_lz_arg2_2))))
      | `LH_N -> 
        _lh_append_lz_arg2_2
      | _ -> 
        (failwith "error")));;
let rec append_lz__d1 _lh_append_lz_arg1_1 _lh_append_lz_arg2_1 =
  (let rec _lh_matchIdent_8 = _lh_append_lz_arg1_1 in
    (match _lh_matchIdent_8 with
      | `LH_C(_lh_append_lz_LH_C_0_1, _lh_append_lz_LH_C_1_1) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_1, ((append_lz__d1 _lh_append_lz_LH_C_1_1) _lh_append_lz_arg2_1))))
      | `LH_N -> 
        _lh_append_lz_arg2_1
      | _ -> 
        (failwith "error")));;
let rec carryPropagate__d0 _lh_carryPropagate_arg1_1 _lh_carryPropagate_arg2_1 =
  (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_carryPropagate_arg2_1) in
    (match _lh_matchIdent_5 with
      | `LH_C(_lh_carryPropagate_LH_C_0_3, _lh_carryPropagate_LH_C_1_3) -> 
        (let rec carryguess_1 = (_lh_carryPropagate_LH_C_0_3 / _lh_carryPropagate_arg1_1) in
          (let rec remainder_1 = (_lh_carryPropagate_LH_C_0_3 mod _lh_carryPropagate_arg1_1) in
            (let rec recRes_1 = ((carryPropagate__d0 (_lh_carryPropagate_arg1_1 + 1)) _lh_carryPropagate_LH_C_1_3) in
              (if (carryguess_1 = ((_lh_carryPropagate_LH_C_0_3 + 9) / _lh_carryPropagate_arg1_1)) then
                (let rec tail_2 = (lazy (let rec _lh_matchIdent_6 = (Lazy.force recRes_1) in
                  (match _lh_matchIdent_6 with
                    | `LH_C(_lh_carryPropagate_LH_C_0_4, _lh_carryPropagate_LH_C_1_4) -> 
                      (`LH_C((remainder_1 + _lh_carryPropagate_LH_C_0_4), _lh_carryPropagate_LH_C_1_4))
                    | _ -> 
                      (failwith "error")))) in
                  (`LH_C(carryguess_1, tail_2)))
              else
                (let rec _lh_matchIdent_7 = (Lazy.force recRes_1) in
                  (match _lh_matchIdent_7 with
                    | `LH_C(_lh_carryPropagate_LH_C_0_5, _lh_carryPropagate_LH_C_1_5) -> 
                      (let rec dCorrected_1 = (_lh_carryPropagate_LH_C_0_3 + _lh_carryPropagate_LH_C_0_5) in
                        (`LH_C((dCorrected_1 / _lh_carryPropagate_arg1_1), (lazy (`LH_C((dCorrected_1 mod _lh_carryPropagate_arg1_1), _lh_carryPropagate_LH_C_1_5))))))
                    | _ -> 
                      (failwith "error")))))))
      | _ -> 
        (failwith "error"))));;
let rec enumFromThen__d0 a_6 t_2_2 =
  (lazy (`LH_C(a_6, ((enumFromThen__d0 t_2_2) ((2 * t_2_2) - a_6)))));;
let rec head_lz__d0 ls_2_1 =
  (match (Lazy.force ls_2_1) with
    | `LH_C(h_2_2, t_2_5) -> 
      h_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec iterate__d0 f_1_4 x_2 =
  (lazy (`LH_C(x_2, ((iterate__d0 f_1_4) (f_1_4 x_2)))));;
let rec map_lz__d0 f_1_3 ls_2_0 =
  (lazy (match (Lazy.force ls_2_0) with
    | `LH_C(h_2_1, t_2_4) -> 
      (`LH_C((f_1_3 h_2_1), ((map_lz__d0 f_1_3) t_2_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d1 f_1_2 ls_1_9 =
  (lazy (match (Lazy.force ls_1_9) with
    | `LH_C(h_2_0, t_2_3) -> 
      (`LH_C((f_1_2 h_2_0), ((map_lz__d1 f_1_2) t_2_3)))
    | `LH_N -> 
      (`LH_N)));;
let rec tail_lz__d0 ls_2_3 =
  (match (Lazy.force ls_2_3) with
    | `LH_C(h_2_4, t_2_7) -> 
      t_2_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1 ls_2_4 =
  (match (Lazy.force ls_2_4) with
    | `LH_C(h_2_5, t_2_8) -> 
      t_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz__d0 n_4 ls_2_2 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_2_2) with
      | `LH_C(h_2_3, t_2_6) -> 
        (`LH_C(h_2_3, ((take_lz__d0 (n_4 - 1)) t_2_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec concat_lz__d0 _lh_concat_lz_arg1_1 =
  (lazy (let rec _lh_matchIdent_9 = (Lazy.force _lh_concat_lz_arg1_1) in
    (match _lh_matchIdent_9 with
      | `LH_C(_lh_concat_lz_LH_C_0_1, _lh_concat_lz_LH_C_1_1) -> 
        (Lazy.force ((append_lz__d1 _lh_concat_lz_LH_C_0_1) (concat_lz__d0 _lh_concat_lz_LH_C_1_1)))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error"))))
and e__d0 _lh_e_arg1_1 =
  ((take_lz__d0 _lh_e_arg1_1) ((fun b_3 -> 
    ((append_lz__d0 (`LH_C('2', (`LH_C('.', (`LH_N)))))) b_3)) ((fun _lh_funcomp_x_4 -> 
    (tail_lz__d0 (concat_lz__d0 _lh_funcomp_x_4))) ((map_lz__d0 (fun _lh_funcomp_x_5 -> 
    (string_of_int (head_lz__d0 _lh_funcomp_x_5)))) ((iterate__d0 (fun _lh_funcomp_x_6 -> 
    ((fun _lh_funcomp_x_7 -> 
      ((carryPropagate__d0 2) ((map_lz__d1 (fun a_7 -> 
        (10 * a_7))) _lh_funcomp_x_7))) (tail_lz__d1 _lh_funcomp_x_6)))) (lazy (`LH_C(2, ((enumFromThen__d0 1) 1)))))))))
and testDigitsOfE2_nofib__d0 _lh_testDigitsOfE2_nofib_arg1_1 =
  (e__d0 _lh_testDigitsOfE2_nofib_arg1_1);;
end;;

