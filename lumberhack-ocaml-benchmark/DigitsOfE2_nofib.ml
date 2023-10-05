(*
touch ./DigitsOfE2_nofib.mli && ocamlc ./DigitsOfE2_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./DigitsOfE2_nofib.ml -o "./DigitsOfE2_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./DigitsOfE2_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
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

(* lumberhack *)
let rec append_lz__d0__d0 _lh_append_lz_arg1_0 _lh_append_lz_arg2_3 =
  (let rec _lh_matchIdent_2 = _lh_append_lz_arg1_0 in
    (_lh_matchIdent_2 _lh_append_lz_arg2_3));;
let rec append_lz__d1__d0 _lh_append_lz_arg1_1 _lh_append_lz_arg2_4 =
  (let rec _lh_matchIdent_3 = _lh_append_lz_arg1_1 in
    (match _lh_matchIdent_3 with
      | `LH_C(_lh_append_lz_LH_C_0_2, _lh_append_lz_LH_C_1_2) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_2, ((append_lz__d1__d0 _lh_append_lz_LH_C_1_2) _lh_append_lz_arg2_4))))
      | `LH_N -> 
        _lh_append_lz_arg2_4
      | _ -> 
        (failwith "error")));;
let rec carryPropagate__d0__d0 _lh_carryPropagate_arg1_2 _lh_carryPropagate_arg2_0 =
  (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_carryPropagate_arg2_0) in
    (_lh_matchIdent_5 _lh_carryPropagate_arg1_2)));;
let rec concat_lz__d0__d0 _lh_concat_lz_arg1_0 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_concat_lz_arg1_0) in
    (_lh_matchIdent_4 99)));;
let rec enumFromThen__d0__d0 a_1 t_5 =
  (lazy (`LH_C(a_1, ((enumFromThen__d0__d0 t_5) ((2 * t_5) - a_1)))));;
let rec head_lz__d0__d0 ls_3 =
  (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d0__d0 f_1 ls_5 =
  (lazy ((Lazy.force ls_5) f_1));;
let rec tail_lz__d0__d0 ls_2 =
  (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_2) -> 
      t_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1__d0 ls_4 =
  (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_4) -> 
      t_4
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz__d0__d0 n_0 ls_1 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1, t_1) -> 
        (`LH_C(h_1, ((take_lz__d0__d0 (n_0 - 1)) t_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec e__d0__d0 _lh_e_arg1_0 =
  ((take_lz__d0__d0 _lh_e_arg1_0) ((fun b_0 -> 
    ((append_lz__d0__d0 (let rec _lh_append_lz_LH_C_1_0 = (let rec _lh_append_lz_LH_C_1_1 = (fun _lh_append_lz_arg2_0 -> 
      _lh_append_lz_arg2_0) in
      (let rec _lh_append_lz_LH_C_0_0 = '.' in
        (fun _lh_append_lz_arg2_1 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_0, ((append_lz__d0__d0 _lh_append_lz_LH_C_1_1) _lh_append_lz_arg2_1))))))) in
      (let rec _lh_append_lz_LH_C_0_1 = '2' in
        (fun _lh_append_lz_arg2_2 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_1, ((append_lz__d0__d0 _lh_append_lz_LH_C_1_0) _lh_append_lz_arg2_2)))))))) b_0)) ((fun _lh_funcomp_x_0 -> 
    (tail_lz__d0__d0 (concat_lz__d0__d0 _lh_funcomp_x_0))) ((map_lz__d0__d0 (fun _lh_funcomp_x_1 -> 
    (string_of_int (head_lz__d0__d0 _lh_funcomp_x_1)))) ((iterate__d0__d0 (fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((carryPropagate__d0__d0 2) ((map_lz__d1__d0 (fun a_0 -> 
        (10 * a_0))) _lh_funcomp_x_3))) (tail_lz__d1__d0 _lh_funcomp_x_2)))) (lazy (`LH_C(2, ((enumFromThen__d0__d0 1) 1)))))))))
and iterate__d0__d0 f_2 x_0 =
  (lazy (let rec t_6 = ((iterate__d0__d0 f_2) (f_2 x_0)) in
    (let rec h_5 = x_0 in
      (fun f_3 -> 
        (let rec _lh_concat_lz_LH_C_1_0 = ((map_lz__d0__d0 f_3) t_6) in
          (let rec _lh_concat_lz_LH_C_0_0 = (f_3 h_5) in
            (fun _lh_dummy_0 -> 
              (Lazy.force ((append_lz__d1__d0 _lh_concat_lz_LH_C_0_0) (concat_lz__d0__d0 _lh_concat_lz_LH_C_1_0))))))))))
and map_lz__d1__d0 f_0 ls_0 =
  (lazy (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      (let rec _lh_carryPropagate_LH_C_1_0 = ((map_lz__d1__d0 f_0) t_0) in
        (let rec _lh_carryPropagate_LH_C_0_0 = (f_0 h_0) in
          (fun _lh_carryPropagate_arg1_0 -> 
            (let rec carryguess_0 = (_lh_carryPropagate_LH_C_0_0 / _lh_carryPropagate_arg1_0) in
              (let rec remainder_0 = (_lh_carryPropagate_LH_C_0_0 mod _lh_carryPropagate_arg1_0) in
                (let rec recRes_0 = ((carryPropagate__d0__d0 (_lh_carryPropagate_arg1_0 + 1)) _lh_carryPropagate_LH_C_1_0) in
                  (if (carryguess_0 = ((_lh_carryPropagate_LH_C_0_0 + 9) / _lh_carryPropagate_arg1_0)) then
                    (let rec tail_0 = (lazy (let rec _lh_matchIdent_0 = (Lazy.force recRes_0) in
                      (match _lh_matchIdent_0 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_1, _lh_carryPropagate_LH_C_1_1) -> 
                          (`LH_C((remainder_0 + _lh_carryPropagate_LH_C_0_1), _lh_carryPropagate_LH_C_1_1))
                        | _ -> 
                          (failwith "error")))) in
                      (`LH_C(carryguess_0, tail_0)))
                  else
                    (let rec _lh_matchIdent_1 = (Lazy.force recRes_0) in
                      (match _lh_matchIdent_1 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_2, _lh_carryPropagate_LH_C_1_2) -> 
                          (let rec dCorrected_0 = (_lh_carryPropagate_LH_C_0_0 + _lh_carryPropagate_LH_C_0_2) in
                            (`LH_C((dCorrected_0 / _lh_carryPropagate_arg1_0), (lazy (`LH_C((dCorrected_0 mod _lh_carryPropagate_arg1_0), _lh_carryPropagate_LH_C_1_2))))))
                        | _ -> 
                          (failwith "error"))))))))))
    | `LH_N -> 
      (fun _lh_carryPropagate_arg1_1 -> 
        (failwith "error"))))
and testDigitsOfE2_nofib__d0__d0 _lh_testDigitsOfE2_nofib_arg1_0 =
  (e__d0__d0 _lh_testDigitsOfE2_nofib_arg1_0);;

(* lumberhack_pop_out *)
let rec append_lz__d0__d0__d0 _lh_append_lz_arg1_3 _lh_append_lz_arg2_9 =
  (let rec _lh_matchIdent_8 = _lh_append_lz_arg1_3 in
    (_lh_matchIdent_8 _lh_append_lz_arg2_9));;
let rec append_lz__d0__d0__d1 _lh_append_lz_arg1_2 _lh_append_lz_arg2_8 =
  (let rec _lh_matchIdent_6 = _lh_append_lz_arg1_2 in
    (_lh_matchIdent_6 _lh_append_lz_arg2_8));;
let rec append_lz__d0__d0__d2 _lh_append_lz_arg1_4 _lh_append_lz_arg2_1_0 =
  (let rec _lh_matchIdent_1_0 = _lh_append_lz_arg1_4 in
    (_lh_matchIdent_1_0 _lh_append_lz_arg2_1_0));;
let rec append_lz__d1__d0__d0 _lh_append_lz_arg1_5 _lh_append_lz_arg2_1_1 =
  (let rec _lh_matchIdent_1_2 = _lh_append_lz_arg1_5 in
    (match _lh_matchIdent_1_2 with
      | `LH_C(_lh_append_lz_LH_C_0_5, _lh_append_lz_LH_C_1_5) -> 
        (lazy (`LH_C(_lh_append_lz_LH_C_0_5, ((append_lz__d1__d0__d0 _lh_append_lz_LH_C_1_5) _lh_append_lz_arg2_1_1))))
      | `LH_N -> 
        _lh_append_lz_arg2_1_1
      | _ -> 
        (failwith "error")));;
let rec carryPropagate__d0__d0__d0 _lh_carryPropagate_arg1_4 _lh_carryPropagate_arg2_2 =
  (lazy (let rec _lh_matchIdent_1_1 = (Lazy.force _lh_carryPropagate_arg2_2) in
    (_lh_matchIdent_1_1 _lh_carryPropagate_arg1_4)));;
let rec carryPropagate__d0__d0__d1 _lh_carryPropagate_arg1_3 _lh_carryPropagate_arg2_1 =
  (lazy (let rec _lh_matchIdent_9 = (Lazy.force _lh_carryPropagate_arg2_1) in
    (_lh_matchIdent_9 _lh_carryPropagate_arg1_3)));;
let rec concat_lz__d0__d0__d0 _lh_concat_lz_arg1_2 =
  (lazy (let rec _lh_matchIdent_1_5 = (Lazy.force _lh_concat_lz_arg1_2) in
    (_lh_matchIdent_1_5 99)));;
let rec concat_lz__d0__d0__d1 _lh_concat_lz_arg1_1 =
  (lazy (let rec _lh_matchIdent_7 = (Lazy.force _lh_concat_lz_arg1_1) in
    (_lh_matchIdent_7 99)));;
let rec enumFromThen__d0__d0__d0 a_3 t_1_1 =
  (lazy (`LH_C(a_3, ((enumFromThen__d0__d0__d0 t_1_1) ((2 * t_1_1) - a_3)))));;
let rec head_lz__d0__d0__d0 ls_8 =
  (match (Lazy.force ls_8) with
    | `LH_C(h_9, t_1_0) -> 
      h_9
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d0__d0__d0 f_6 ls_9 =
  (lazy ((Lazy.force ls_9) f_6));;
let rec map_lz__d0__d0__d1 f_7 ls_1_0 =
  (lazy ((Lazy.force ls_1_0) f_7));;
let rec tail_lz__d0__d0__d0 ls_1_1 =
  (match (Lazy.force ls_1_1) with
    | `LH_C(h_1_0, t_1_2) -> 
      t_1_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1__d0__d0 ls_6 =
  (match (Lazy.force ls_6) with
    | `LH_C(h_7, t_8) -> 
      t_8
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz__d0__d0__d0 n_1 ls_7 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_7) with
      | `LH_C(h_8, t_9) -> 
        (`LH_C(h_8, ((take_lz__d0__d0__d0 (n_1 - 1)) t_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec e__d0__d0__d0 _lh_e_arg1_1 =
  ((take_lz__d0__d0__d0 _lh_e_arg1_1) ((fun b_1 -> 
    ((append_lz__d0__d0__d0 (let rec _lh_append_lz_LH_C_1_3 = (let rec _lh_append_lz_LH_C_1_4 = (fun _lh_append_lz_arg2_5 -> 
      _lh_append_lz_arg2_5) in
      (let rec _lh_append_lz_LH_C_0_3 = '.' in
        (fun _lh_append_lz_arg2_6 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_3, ((append_lz__d0__d0__d1 _lh_append_lz_LH_C_1_4) _lh_append_lz_arg2_6))))))) in
      (let rec _lh_append_lz_LH_C_0_4 = '2' in
        (fun _lh_append_lz_arg2_7 -> 
          (lazy (`LH_C(_lh_append_lz_LH_C_0_4, ((append_lz__d0__d0__d2 _lh_append_lz_LH_C_1_3) _lh_append_lz_arg2_7)))))))) b_1)) ((fun _lh_funcomp_x_4 -> 
    (tail_lz__d0__d0__d0 (concat_lz__d0__d0__d0 _lh_funcomp_x_4))) ((map_lz__d0__d0__d1 (fun _lh_funcomp_x_5 -> 
    (string_of_int (head_lz__d0__d0__d0 _lh_funcomp_x_5)))) ((iterate__d0__d0__d0 (fun _lh_funcomp_x_6 -> 
    ((fun _lh_funcomp_x_7 -> 
      ((carryPropagate__d0__d0__d0 2) ((map_lz__d1__d0__d0 (fun a_2 -> 
        (10 * a_2))) _lh_funcomp_x_7))) (tail_lz__d1__d0__d0 _lh_funcomp_x_6)))) (lazy (`LH_C(2, ((enumFromThen__d0__d0__d0 1) 1)))))))))
and iterate__d0__d0__d0 f_4 x_1 =
  (lazy (let rec t_7 = ((iterate__d0__d0__d0 f_4) (f_4 x_1)) in
    (let rec h_6 = x_1 in
      (fun f_5 -> 
        (let rec _lh_concat_lz_LH_C_1_1 = ((map_lz__d0__d0__d0 f_5) t_7) in
          (let rec _lh_concat_lz_LH_C_0_1 = (f_5 h_6) in
            (fun _lh_dummy_1 -> 
              (Lazy.force ((append_lz__d1__d0__d0 _lh_concat_lz_LH_C_0_1) (concat_lz__d0__d0__d1 _lh_concat_lz_LH_C_1_1))))))))))
and map_lz__d1__d0__d0 f_8 ls_1_2 =
  (lazy (match (Lazy.force ls_1_2) with
    | `LH_C(h_1_1, t_1_3) -> 
      (let rec _lh_carryPropagate_LH_C_1_3 = ((map_lz__d1__d0__d0 f_8) t_1_3) in
        (let rec _lh_carryPropagate_LH_C_0_3 = (f_8 h_1_1) in
          (fun _lh_carryPropagate_arg1_5 -> 
            (let rec carryguess_1 = (_lh_carryPropagate_LH_C_0_3 / _lh_carryPropagate_arg1_5) in
              (let rec remainder_1 = (_lh_carryPropagate_LH_C_0_3 mod _lh_carryPropagate_arg1_5) in
                (let rec recRes_1 = ((carryPropagate__d0__d0__d1 (_lh_carryPropagate_arg1_5 + 1)) _lh_carryPropagate_LH_C_1_3) in
                  (if (carryguess_1 = ((_lh_carryPropagate_LH_C_0_3 + 9) / _lh_carryPropagate_arg1_5)) then
                    (let rec tail_1 = (lazy (let rec _lh_matchIdent_1_3 = (Lazy.force recRes_1) in
                      (match _lh_matchIdent_1_3 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_4, _lh_carryPropagate_LH_C_1_4) -> 
                          (`LH_C((remainder_1 + _lh_carryPropagate_LH_C_0_4), _lh_carryPropagate_LH_C_1_4))
                        | _ -> 
                          (failwith "error")))) in
                      (`LH_C(carryguess_1, tail_1)))
                  else
                    (let rec _lh_matchIdent_1_4 = (Lazy.force recRes_1) in
                      (match _lh_matchIdent_1_4 with
                        | `LH_C(_lh_carryPropagate_LH_C_0_5, _lh_carryPropagate_LH_C_1_5) -> 
                          (let rec dCorrected_1 = (_lh_carryPropagate_LH_C_0_3 + _lh_carryPropagate_LH_C_0_5) in
                            (`LH_C((dCorrected_1 / _lh_carryPropagate_arg1_5), (lazy (`LH_C((dCorrected_1 mod _lh_carryPropagate_arg1_5), _lh_carryPropagate_LH_C_1_5))))))
                        | _ -> 
                          (failwith "error"))))))))))
    | `LH_N -> 
      (fun _lh_carryPropagate_arg1_6 -> 
        (failwith "error"))))
and testDigitsOfE2_nofib__d0__d0__d0 _lh_testDigitsOfE2_nofib_arg1_1 =
  (e__d0__d0__d0 _lh_testDigitsOfE2_nofib_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_DigitsOfE2_nofib" (fun () -> ignore ((testDigitsOfE2_nofib__d0 500)));
  Bench.Test.create ~name:"lumberhack_DigitsOfE2_nofib" (fun () -> ignore ((testDigitsOfE2_nofib__d0__d0 500)));
  Bench.Test.create ~name:"lumberhack_pop_out_DigitsOfE2_nofib" (fun () -> ignore ((testDigitsOfE2_nofib__d0__d0__d0 500)));
])
