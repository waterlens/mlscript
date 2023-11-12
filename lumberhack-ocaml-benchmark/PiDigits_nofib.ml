(*
touch ./PiDigits_nofib.mli && ocamlc ./PiDigits_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./PiDigits_nofib.ml -o "./PiDigits_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./PiDigits_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
module Module_original = struct
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
let rec mappend__d0 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d0 t_2_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d1 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d2 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d2 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d3 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d3 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d4 t_2_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d5 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d5 t_3_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
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
let rec take_lz__d0 n_5 ls_2_0 =
  (if (n_5 > 0) then
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_7, t_2_9) -> 
        (`LH_C(h_2_7, ((take_lz__d0 (n_5 - 1)) t_2_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz__d1 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_2, t_2_4) -> 
        (`LH_C(h_2_2, ((take_lz__d1 (n_4 - 1)) t_2_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((mappend__d0 h_2_6) (concat__d0 t_2_8))
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


(* lumberhack *)
module Module_lumberhack = struct
let rec ampOp__d0__d0 _lh_ampOp_arg1_3 _lh_ampOp_arg2_0 =
  (_lh_ampOp_arg2_0 _lh_ampOp_arg1_3);;
let rec concat__d0__d0 lss_2 =
  (lss_2 99);;
let rec concat__d0__d1 lss_1 =
  (lss_1 99);;
let rec concat__d0__d2 lss_0 =
  (lss_0 99);;
let rec concat__d0__d3 lss_3 =
  (lss_3 99);;
let rec concat__d0__d4 lss_4 =
  (lss_4 99);;
let rec drop_lz__d0__d0 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_4 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz__d0__d0 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_0);;
let rec mappend__d0__d0 xs_1_3 ys_3_5 =
  (xs_1_3 ys_3_5);;
let rec mappend__d1__d0 xs_2_5 ys_5_1 =
  (xs_2_5 ys_5_1);;
let rec mappend__d1__d1 xs_1_6 ys_4_1 =
  (xs_1_6 ys_4_1);;
let rec mappend__d2__d0 xs_2_0 ys_4_5 =
  (xs_2_0 ys_4_5);;
let rec mappend__d2__d1 xs_1_8 ys_4_3 =
  (xs_1_8 ys_4_3);;
let rec mappend__d2__d1_d0 xs_2_6 ys_5_2 =
  (xs_2_6 ys_5_2);;
let rec mappend__d2__d1_d1 xs_1_4 ys_3_9 =
  (xs_1_4 ys_3_9);;
let rec mappend__d2__d1_d2 xs_2_8 ys_5_6 =
  (xs_2_8 ys_5_6);;
let rec mappend__d2__d2 xs_1_2 ys_3_4 =
  (xs_1_2 ys_3_4);;
let rec mappend__d2__d3 xs_2_2 ys_4_7 =
  (xs_2_2 ys_4_7);;
let rec mappend__d2__d4 xs_6 ys_1_0 =
  (xs_6 ys_1_0);;
let rec mappend__d2__d5 xs_2_4 ys_5_0 =
  (xs_2_4 ys_5_0);;
let rec mappend__d2__d6 xs_5 ys_9 =
  (xs_5 ys_9);;
let rec mappend__d2__d7 xs_4 ys_8 =
  (xs_4 ys_8);;
let rec mappend__d2__d8 xs_7 ys_1_1 =
  (xs_7 ys_1_1);;
let rec mappend__d2__d9 xs_1_9 ys_4_4 =
  (xs_1_9 ys_4_4);;
let rec mappend__d3__d0 xs_1_0 ys_1_4 =
  (xs_1_0 ys_1_4);;
let rec mappend__d3__d1 xs_2 ys_6 =
  (xs_2 ys_6);;
let rec mappend__d3__d2 xs_1_7 ys_4_2 =
  (xs_1_7 ys_4_2);;
let rec mappend__d3__d3 xs_8 ys_1_2 =
  (xs_8 ys_1_2);;
let rec mappend__d3__d4 xs_3_0 ys_6_0 =
  (xs_3_0 ys_6_0);;
let rec mappend__d4__d0 xs_0 ys_3 =
  (xs_0 ys_3);;
let rec mappend__d4__d1 xs_3 ys_7 =
  (xs_3 ys_7);;
let rec mappend__d4__d2 xs_1_5 ys_4_0 =
  (xs_1_5 ys_4_0);;
let rec mappend__d4__d3 xs_1_1 ys_1_5 =
  (xs_1_1 ys_1_5);;
let rec mappend__d4__d4 xs_9 ys_1_3 =
  (xs_9 ys_1_3);;
let rec mappend__d4__d5 xs_2_1 ys_4_6 =
  (xs_2_1 ys_4_6);;
let rec min__d0__d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec divmod__d0__d0 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (let rec _lh_hashOp_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_hashOp_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (fun _lh_hashOp_LH_P3_0_0 _lh_hashOp_LH_P3_1_0 _lh_hashOp_LH_P3_2_0 k_0 -> 
        (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
          (Lazy.force ((hashOp__d0__d0 k_0) (let rec _lh_ampOp_LH_P3_2_0 = _lh_hashOp_LH_P3_2_0 in
            (let rec _lh_ampOp_LH_P3_1_0 = _lh_hashOp_LH_P3_1_0 in
              (let rec _lh_ampOp_LH_P3_0_0 = _lh_hashOp_LH_P3_0_0 in
                (fun _lh_ampOp_arg1_0 -> 
                  (let rec y_0 = ((_lh_ampOp_arg1_0 * 2) + 1) in
                    (let rec _lh_hashOp_LH_P3_2_1 = (_lh_ampOp_LH_P3_2_0 * y_0) in
                      (let rec _lh_hashOp_LH_P3_1_1 = ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0) in
                        (let rec _lh_hashOp_LH_P3_0_1 = (_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_0) in
                          (fun k_1 -> 
                            (let rec _lh_matchIdent_0 = ((divmod__d0__d0 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
                              ((((_lh_matchIdent_0 _lh_hashOp_LH_P3_0_1) _lh_hashOp_LH_P3_1_1) _lh_hashOp_LH_P3_2_1) k_1)))))))))))))
        else
          (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), ((hashOp__d0__d0 k_0) (let rec _lh_ampOp_LH_P3_2_1 = _lh_hashOp_LH_P3_2_0 in
            (let rec _lh_ampOp_LH_P3_1_1 = ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10) in
              (let rec _lh_ampOp_LH_P3_0_1 = (_lh_hashOp_LH_P3_0_0 * 10) in
                (fun _lh_ampOp_arg1_1 -> 
                  (let rec y_1 = ((_lh_ampOp_arg1_1 * 2) + 1) in
                    (let rec _lh_hashOp_LH_P3_2_2 = (_lh_ampOp_LH_P3_2_1 * y_1) in
                      (let rec _lh_hashOp_LH_P3_1_2 = ((_lh_ampOp_LH_P3_1_1 + (_lh_ampOp_LH_P3_0_1 * 2)) * y_1) in
                        (let rec _lh_hashOp_LH_P3_0_2 = (_lh_ampOp_LH_P3_0_1 * _lh_ampOp_arg1_1) in
                          (fun k_2 -> 
                            (let rec _lh_matchIdent_1 = ((divmod__d0__d0 ((_lh_hashOp_LH_P3_0_2 * 3) + _lh_hashOp_LH_P3_1_2)) _lh_hashOp_LH_P3_2_2) in
                              ((((_lh_matchIdent_1 _lh_hashOp_LH_P3_0_2) _lh_hashOp_LH_P3_1_2) _lh_hashOp_LH_P3_2_2) k_2))))))))))))))))))
and hashOp__d0__d0 _lh_hashOp_arg1_0 _lh_hashOp_arg2_0 =
  (lazy (let rec k_5 = (_lh_hashOp_arg1_0 + 1) in
    (let rec _lh_matchIdent_5 = ((ampOp__d0__d0 k_5) _lh_hashOp_arg2_0) in
      (_lh_matchIdent_5 k_5))))
and mappend__d0__d1 xs_2_7 ys_5_3 =
  (match xs_2_7 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec t_2_4 = ((mappend__d0__d1 t_2_3) ys_5_3) in
        (let rec h_2_4 = h_2_3 in
          (fun ys_5_4 -> 
            (let rec t_2_5 = ((mappend__d3__d3 t_2_4) ys_5_4) in
              (let rec h_2_5 = h_2_4 in
                (fun ys_5_5 -> 
                  (`LH_C(h_2_5, ((mappend__d2__d1_d1 t_2_5) ys_5_5)))))))))
    | `LH_N -> 
      ys_5_3)
and mappend__d0__d2 xs_2_9 ys_5_7 =
  (match xs_2_9 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec t_2_7 = ((mappend__d0__d2 t_2_6) ys_5_7) in
        (let rec h_2_7 = h_2_6 in
          (fun ys_5_8 -> 
            (let rec t_2_8 = ((mappend__d3__d4 t_2_7) ys_5_8) in
              (let rec h_2_8 = h_2_7 in
                (fun ys_5_9 -> 
                  (`LH_C(h_2_8, ((mappend__d2__d1_d2 t_2_8) ys_5_9)))))))))
    | `LH_N -> 
      ys_5_7)
and mappend__d5__d0 xs_1 ys_4 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (let rec t_4 = ((mappend__d5__d0 t_3) ys_4) in
        (let rec h_4 = h_3 in
          (fun ys_5 -> 
            (`LH_C(h_4, ((mappend__d2__d4 t_4) ys_5))))))
    | `LH_N -> 
      ys_4)
and mappend__d5__d1 xs_2_3 ys_4_8 =
  (match xs_2_3 with
    | `LH_C(h_2_1, t_2_1) -> 
      (let rec t_2_2 = ((mappend__d5__d1 t_2_1) ys_4_8) in
        (let rec h_2_2 = h_2_1 in
          (fun ys_4_9 -> 
            (`LH_C(h_2_2, ((mappend__d2__d1_d0 t_2_2) ys_4_9))))))
    | `LH_N -> 
      ys_4_8)
and percOp__d0__d0 _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_1 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_1) then
    (`LH_N)
  else
    (let rec k_4 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_1 = ((min__d0__d0 _lh_percOp_arg3_1) k_4) in
        (let rec _lh_matchIdent_3 = (if (k_4 > _lh_percOp_arg3_1) then
          (let rec _lh_percOp_LH_P2_1_1 = (lazy (`LH_N)) in
            (let rec _lh_percOp_LH_P2_0_1 = ((mappend__d1__d0 ((take_lz__d1__d0 (_lh_percOp_arg3_1 mod 10)) _lh_percOp_arg2_0)) ((replicate__d0__d0 (k_4 - _lh_percOp_arg3_1)) (let rec t_1_0 = (fun ys_2_3 -> 
              ys_2_3) in
              (let rec h_1_0 = ' ' in
                (fun ys_2_4 -> 
                  (let rec t_1_1 = ((mappend__d0__d0 t_1_0) ys_2_4) in
                    (let rec h_1_1 = h_1_0 in
                      (fun ys_2_5 -> 
                        (let rec t_1_2 = ((mappend__d3__d1 t_1_1) ys_2_5) in
                          (let rec h_1_2 = h_1_1 in
                            (fun ys_2_6 -> 
                              (`LH_C(h_1_2, ((mappend__d2__d5 t_1_2) ys_2_6)))))))))))))) in
              (fun _lh_percOp_arg3_2 j_2 -> 
                ((mappend__d2__d0 ((mappend__d3__d0 (concat__d0__d0 _lh_percOp_LH_P2_0_1)) ((mappend__d4__d0 (let rec t_1_3 = (let rec t_1_4 = (fun ys_2_7 -> 
                  ys_2_7) in
                  (let rec h_1_3 = ':' in
                    (fun ys_2_8 -> 
                      (let rec t_1_5 = ((mappend__d4__d1 t_1_4) ys_2_8) in
                        (let rec h_1_4 = h_1_3 in
                          (fun ys_2_9 -> 
                            (`LH_C(h_1_4, ((mappend__d2__d1 t_1_5) ys_2_9))))))))) in
                  (let rec h_1_5 = 't' in
                    (fun ys_3_0 -> 
                      (let rec t_1_6 = ((mappend__d4__d2 t_1_3) ys_3_0) in
                        (let rec h_1_6 = h_1_5 in
                          (fun ys_3_1 -> 
                            (`LH_C(h_1_6, ((mappend__d2__d2 t_1_6) ys_3_1)))))))))) ((mappend__d5__d0 (string_of_int j_2)) (let rec t_1_7 = (fun ys_3_2 -> 
                  ys_3_2) in
                  (let rec h_1_7 = 'n' in
                    (fun ys_3_3 -> 
                      (`LH_C(h_1_7, ((mappend__d2__d3 t_1_7) ys_3_3)))))))))) (((percOp__d0__d0 j_2) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_2)))))
        else
          ((splitAt_lz__d0__d0 10) _lh_percOp_arg2_0)) in
          ((_lh_matchIdent_3 _lh_percOp_arg3_1) j_1)))))
and pidgits__d0__d0 _lh_pidgits_arg1_0 =
  (((percOp__d0__d0 0) ((hashOp__d0__d0 0) (let rec _lh_ampOp_LH_P3_2_2 = 1 in
    (let rec _lh_ampOp_LH_P3_1_2 = 0 in
      (let rec _lh_ampOp_LH_P3_0_2 = 1 in
        (fun _lh_ampOp_arg1_2 -> 
          (let rec y_2 = ((_lh_ampOp_arg1_2 * 2) + 1) in
            (let rec _lh_hashOp_LH_P3_2_3 = (_lh_ampOp_LH_P3_2_2 * y_2) in
              (let rec _lh_hashOp_LH_P3_1_3 = ((_lh_ampOp_LH_P3_1_2 + (_lh_ampOp_LH_P3_0_2 * 2)) * y_2) in
                (let rec _lh_hashOp_LH_P3_0_3 = (_lh_ampOp_LH_P3_0_2 * _lh_ampOp_arg1_2) in
                  (fun k_3 -> 
                    (let rec _lh_matchIdent_2 = ((divmod__d0__d0 ((_lh_hashOp_LH_P3_0_3 * 3) + _lh_hashOp_LH_P3_1_3)) _lh_hashOp_LH_P3_2_3) in
                      ((((_lh_matchIdent_2 _lh_hashOp_LH_P3_0_3) _lh_hashOp_LH_P3_1_3) _lh_hashOp_LH_P3_2_3) k_3))))))))))))) _lh_pidgits_arg1_0)
and replicate__d0__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 > 0) then
    (let rec t_2 = ((replicate__d0__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_2 = _lh_replicate_arg2_0 in
        (fun _lh_dummy_3 -> 
          ((mappend__d0__d0 h_2) (concat__d0__d1 t_2)))))
  else
    (fun _lh_dummy_4 ys_2 -> 
      ys_2))
and splitAt_lz__d0__d0 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_percOp_LH_P2_1_0 = ((drop_lz__d0__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_percOp_LH_P2_0_0 = ((take_lz__d0__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun _lh_percOp_arg3_0 j_0 -> 
        ((mappend__d2__d6 ((mappend__d3__d2 (concat__d0__d2 _lh_percOp_LH_P2_0_0)) ((mappend__d4__d3 (let rec t_5 = (let rec t_6 = (fun ys_1_6 -> 
          ys_1_6) in
          (let rec h_5 = ':' in
            (fun ys_1_7 -> 
              (let rec t_7 = ((mappend__d4__d4 t_6) ys_1_7) in
                (let rec h_6 = h_5 in
                  (fun ys_1_8 -> 
                    (`LH_C(h_6, ((mappend__d2__d7 t_7) ys_1_8))))))))) in
          (let rec h_7 = 't' in
            (fun ys_1_9 -> 
              (let rec t_8 = ((mappend__d4__d5 t_5) ys_1_9) in
                (let rec h_8 = h_7 in
                  (fun ys_2_0 -> 
                    (`LH_C(h_8, ((mappend__d2__d8 t_8) ys_2_0)))))))))) ((mappend__d5__d1 (string_of_int j_0)) (let rec t_9 = (fun ys_2_1 -> 
          ys_2_1) in
          (let rec h_9 = 'n' in
            (fun ys_2_2 -> 
              (`LH_C(h_9, ((mappend__d2__d9 t_9) ys_2_2)))))))))) (((percOp__d0__d0 j_0) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_0)))))
and take_lz__d0__d0 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (let rec t_1 = ((take_lz__d0__d0 (n_0 - 1)) t_0) in
          (let rec h_1 = h_0 in
            (fun _lh_dummy_0 -> 
              ((mappend__d0__d1 h_1) (concat__d0__d3 t_1)))))
      | `LH_N -> 
        (fun _lh_dummy_1 ys_0 -> 
          ys_0))
  else
    (fun _lh_dummy_2 ys_1 -> 
      ys_1))
and take_lz__d1__d0 n_1 ls_1 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1_8, t_1_8) -> 
        (let rec t_1_9 = ((take_lz__d1__d0 (n_1 - 1)) t_1_8) in
          (let rec h_1_9 = h_1_8 in
            (fun ys_3_6 -> 
              (let rec t_2_0 = ((mappend__d1__d1 t_1_9) ys_3_6) in
                (let rec h_2_0 = h_1_9 in
                  (fun _lh_dummy_5 -> 
                    ((mappend__d0__d2 h_2_0) (concat__d0__d4 t_2_0))))))))
      | `LH_N -> 
        (fun ys_3_7 -> 
          ys_3_7))
  else
    (fun ys_3_8 -> 
      ys_3_8))
and testPiDigits_nofib__d0__d0 _lh_testPiDigits_nofib_arg1_0 =
  (pidgits__d0__d0 _lh_testPiDigits_nofib_arg1_0);;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec ampOp__d0__d0 _lh_ampOp_arg1_3 _lh_ampOp_arg2_0 =
  (_lh_ampOp_arg2_0 _lh_ampOp_arg1_3);;
let rec concat__d0__d0 lss_2 =
  (lss_2 99);;
let rec concat__d0__d1 lss_1 =
  (lss_1 99);;
let rec concat__d0__d2 lss_0 =
  (lss_0 99);;
let rec concat__d0__d3 lss_3 =
  (lss_3 99);;
let rec concat__d0__d4 lss_4 =
  (lss_4 99);;
let rec drop_lz__d0__d0 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_4 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz__d0__d0 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_0);;
let rec mappend__d0__d0 xs_1_3 ys_3_5 =
  (xs_1_3 ys_3_5);;
let rec mappend__d1__d0 xs_2_5 ys_5_1 =
  (xs_2_5 ys_5_1);;
let rec mappend__d1__d1 xs_1_6 ys_4_1 =
  (xs_1_6 ys_4_1);;
let rec mappend__d2__d0 xs_2_0 ys_4_5 =
  (xs_2_0 ys_4_5);;
let rec mappend__d2__d1 xs_1_8 ys_4_3 =
  (xs_1_8 ys_4_3);;
let rec mappend__d2__d1_d0 xs_2_6 ys_5_2 =
  (xs_2_6 ys_5_2);;
let rec mappend__d2__d1_d1 xs_1_4 ys_3_9 =
  (xs_1_4 ys_3_9);;
let rec mappend__d2__d1_d2 xs_2_8 ys_5_6 =
  (xs_2_8 ys_5_6);;
let rec mappend__d2__d2 xs_1_2 ys_3_4 =
  (xs_1_2 ys_3_4);;
let rec mappend__d2__d3 xs_2_2 ys_4_7 =
  (xs_2_2 ys_4_7);;
let rec mappend__d2__d4 xs_6 ys_1_0 =
  (xs_6 ys_1_0);;
let rec mappend__d2__d5 xs_2_4 ys_5_0 =
  (xs_2_4 ys_5_0);;
let rec mappend__d2__d6 xs_5 ys_9 =
  (xs_5 ys_9);;
let rec mappend__d2__d7 xs_4 ys_8 =
  (xs_4 ys_8);;
let rec mappend__d2__d8 xs_7 ys_1_1 =
  (xs_7 ys_1_1);;
let rec mappend__d2__d9 xs_1_9 ys_4_4 =
  (xs_1_9 ys_4_4);;
let rec mappend__d3__d0 xs_1_0 ys_1_4 =
  (xs_1_0 ys_1_4);;
let rec mappend__d3__d1 xs_2 ys_6 =
  (xs_2 ys_6);;
let rec mappend__d3__d2 xs_1_7 ys_4_2 =
  (xs_1_7 ys_4_2);;
let rec mappend__d3__d3 xs_8 ys_1_2 =
  (xs_8 ys_1_2);;
let rec mappend__d3__d4 xs_3_0 ys_6_0 =
  (xs_3_0 ys_6_0);;
let rec mappend__d4__d0 xs_0 ys_3 =
  (xs_0 ys_3);;
let rec mappend__d4__d1 xs_3 ys_7 =
  (xs_3 ys_7);;
let rec mappend__d4__d2 xs_1_5 ys_4_0 =
  (xs_1_5 ys_4_0);;
let rec mappend__d4__d3 xs_1_1 ys_1_5 =
  (xs_1_1 ys_1_5);;
let rec mappend__d4__d4 xs_9 ys_1_3 =
  (xs_9 ys_1_3);;
let rec mappend__d4__d5 xs_2_1 ys_4_6 =
  (xs_2_1 ys_4_6);;
let rec min__d0__d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec divmod__d0__d0 _lh_divmod_arg1_0 _lh_divmod_arg2_0 _lh_hashOp_LH_P3_0_0 _lh_hashOp_LH_P3_1_0 _lh_hashOp_LH_P3_2_0 k_0 =
  (let rec _lh_hashOp_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
    (let rec _lh_hashOp_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
      (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
        (Lazy.force ((hashOp__d0__d0 k_0) (let rec _lh_ampOp_LH_P3_2_0 = _lh_hashOp_LH_P3_2_0 in
          (let rec _lh_ampOp_LH_P3_1_0 = _lh_hashOp_LH_P3_1_0 in
            (let rec _lh_ampOp_LH_P3_0_0 = _lh_hashOp_LH_P3_0_0 in
              (fun _lh_ampOp_arg1_0 -> 
                (let rec y_0 = ((_lh_ampOp_arg1_0 * 2) + 1) in
                  (let rec _lh_hashOp_LH_P3_2_1 = (_lh_ampOp_LH_P3_2_0 * y_0) in
                    (let rec _lh_hashOp_LH_P3_1_1 = ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0) in
                      (let rec _lh_hashOp_LH_P3_0_1 = (_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_0) in
                        (fun k_1 -> 
                          (let rec _lh_matchIdent_0 = ((divmod__d0__d0 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
                            ((((_lh_matchIdent_0 _lh_hashOp_LH_P3_0_1) _lh_hashOp_LH_P3_1_1) _lh_hashOp_LH_P3_2_1) k_1)))))))))))))
      else
        (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), ((hashOp__d0__d0 k_0) (let rec _lh_ampOp_LH_P3_2_1 = _lh_hashOp_LH_P3_2_0 in
          (let rec _lh_ampOp_LH_P3_1_1 = ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10) in
            (let rec _lh_ampOp_LH_P3_0_1 = (_lh_hashOp_LH_P3_0_0 * 10) in
              (fun _lh_ampOp_arg1_1 -> 
                (let rec y_1 = ((_lh_ampOp_arg1_1 * 2) + 1) in
                  (let rec _lh_hashOp_LH_P3_2_2 = (_lh_ampOp_LH_P3_2_1 * y_1) in
                    (let rec _lh_hashOp_LH_P3_1_2 = ((_lh_ampOp_LH_P3_1_1 + (_lh_ampOp_LH_P3_0_1 * 2)) * y_1) in
                      (let rec _lh_hashOp_LH_P3_0_2 = (_lh_ampOp_LH_P3_0_1 * _lh_ampOp_arg1_1) in
                        (fun k_2 -> 
                          (let rec _lh_matchIdent_1 = ((divmod__d0__d0 ((_lh_hashOp_LH_P3_0_2 * 3) + _lh_hashOp_LH_P3_1_2)) _lh_hashOp_LH_P3_2_2) in
                            ((((_lh_matchIdent_1 _lh_hashOp_LH_P3_0_2) _lh_hashOp_LH_P3_1_2) _lh_hashOp_LH_P3_2_2) k_2)))))))))))))))))
and hashOp__d0__d0 _lh_hashOp_arg1_0 _lh_hashOp_arg2_0 =
  (lazy (let rec k_5 = (_lh_hashOp_arg1_0 + 1) in
    (let rec _lh_matchIdent_5 = ((ampOp__d0__d0 k_5) _lh_hashOp_arg2_0) in
      (_lh_matchIdent_5 k_5))))
and mappend__d0__d1 xs_2_7 ys_5_3 =
  (match xs_2_7 with
    | `LH_C(h_2_3, t_2_3) -> 
      (let rec t_2_4 = ((mappend__d0__d1 t_2_3) ys_5_3) in
        (let rec h_2_4 = h_2_3 in
          (fun ys_5_4 -> 
            (let rec t_2_5 = ((mappend__d3__d3 t_2_4) ys_5_4) in
              (let rec h_2_5 = h_2_4 in
                (fun ys_5_5 -> 
                  (`LH_C(h_2_5, ((mappend__d2__d1_d1 t_2_5) ys_5_5)))))))))
    | `LH_N -> 
      ys_5_3)
and mappend__d0__d2 xs_2_9 ys_5_7 =
  (match xs_2_9 with
    | `LH_C(h_2_6, t_2_6) -> 
      (let rec t_2_7 = ((mappend__d0__d2 t_2_6) ys_5_7) in
        (let rec h_2_7 = h_2_6 in
          (fun ys_5_8 -> 
            (let rec t_2_8 = ((mappend__d3__d4 t_2_7) ys_5_8) in
              (let rec h_2_8 = h_2_7 in
                (fun ys_5_9 -> 
                  (`LH_C(h_2_8, ((mappend__d2__d1_d2 t_2_8) ys_5_9)))))))))
    | `LH_N -> 
      ys_5_7)
and mappend__d5__d0 xs_1 ys_4 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (let rec t_4 = ((mappend__d5__d0 t_3) ys_4) in
        (let rec h_4 = h_3 in
          (fun ys_5 -> 
            (`LH_C(h_4, ((mappend__d2__d4 t_4) ys_5))))))
    | `LH_N -> 
      ys_4)
and mappend__d5__d1 xs_2_3 ys_4_8 =
  (match xs_2_3 with
    | `LH_C(h_2_1, t_2_1) -> 
      (let rec t_2_2 = ((mappend__d5__d1 t_2_1) ys_4_8) in
        (let rec h_2_2 = h_2_1 in
          (fun ys_4_9 -> 
            (`LH_C(h_2_2, ((mappend__d2__d1_d0 t_2_2) ys_4_9))))))
    | `LH_N -> 
      ys_4_8)
and percOp__d0__d0 _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_1 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_1) then
    (`LH_N)
  else
    (let rec k_4 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_1 = ((min__d0__d0 _lh_percOp_arg3_1) k_4) in
        (let rec _lh_matchIdent_3 = (if (k_4 > _lh_percOp_arg3_1) then
          (let rec _lh_percOp_LH_P2_1_1 = (lazy (`LH_N)) in
            (let rec _lh_percOp_LH_P2_0_1 = ((mappend__d1__d0 ((take_lz__d1__d0 (_lh_percOp_arg3_1 mod 10)) _lh_percOp_arg2_0)) ((replicate__d0__d0 (k_4 - _lh_percOp_arg3_1)) (let rec t_1_0 = (fun ys_2_3 -> 
              ys_2_3) in
              (let rec h_1_0 = ' ' in
                (fun ys_2_4 -> 
                  (let rec t_1_1 = ((mappend__d0__d0 t_1_0) ys_2_4) in
                    (let rec h_1_1 = h_1_0 in
                      (fun ys_2_5 -> 
                        (let rec t_1_2 = ((mappend__d3__d1 t_1_1) ys_2_5) in
                          (let rec h_1_2 = h_1_1 in
                            (fun ys_2_6 -> 
                              (`LH_C(h_1_2, ((mappend__d2__d5 t_1_2) ys_2_6)))))))))))))) in
              (fun _lh_percOp_arg3_2 j_2 -> 
                ((mappend__d2__d0 ((mappend__d3__d0 (concat__d0__d0 _lh_percOp_LH_P2_0_1)) ((mappend__d4__d0 (let rec t_1_3 = (let rec t_1_4 = (fun ys_2_7 -> 
                  ys_2_7) in
                  (let rec h_1_3 = ':' in
                    (fun ys_2_8 -> 
                      (let rec t_1_5 = ((mappend__d4__d1 t_1_4) ys_2_8) in
                        (let rec h_1_4 = h_1_3 in
                          (fun ys_2_9 -> 
                            (`LH_C(h_1_4, ((mappend__d2__d1 t_1_5) ys_2_9))))))))) in
                  (let rec h_1_5 = 't' in
                    (fun ys_3_0 -> 
                      (let rec t_1_6 = ((mappend__d4__d2 t_1_3) ys_3_0) in
                        (let rec h_1_6 = h_1_5 in
                          (fun ys_3_1 -> 
                            (`LH_C(h_1_6, ((mappend__d2__d2 t_1_6) ys_3_1)))))))))) ((mappend__d5__d0 (string_of_int j_2)) (let rec t_1_7 = (fun ys_3_2 -> 
                  ys_3_2) in
                  (let rec h_1_7 = 'n' in
                    (fun ys_3_3 -> 
                      (`LH_C(h_1_7, ((mappend__d2__d3 t_1_7) ys_3_3)))))))))) (((percOp__d0__d0 j_2) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_2)))))
        else
          ((splitAt_lz__d0__d0 10) _lh_percOp_arg2_0)) in
          ((_lh_matchIdent_3 _lh_percOp_arg3_1) j_1)))))
and pidgits__d0__d0 _lh_pidgits_arg1_0 =
  (((percOp__d0__d0 0) ((hashOp__d0__d0 0) (let rec _lh_ampOp_LH_P3_2_2 = 1 in
    (let rec _lh_ampOp_LH_P3_1_2 = 0 in
      (let rec _lh_ampOp_LH_P3_0_2 = 1 in
        (fun _lh_ampOp_arg1_2 -> 
          (let rec y_2 = ((_lh_ampOp_arg1_2 * 2) + 1) in
            (let rec _lh_hashOp_LH_P3_2_3 = (_lh_ampOp_LH_P3_2_2 * y_2) in
              (let rec _lh_hashOp_LH_P3_1_3 = ((_lh_ampOp_LH_P3_1_2 + (_lh_ampOp_LH_P3_0_2 * 2)) * y_2) in
                (let rec _lh_hashOp_LH_P3_0_3 = (_lh_ampOp_LH_P3_0_2 * _lh_ampOp_arg1_2) in
                  (fun k_3 -> 
                    (let rec _lh_matchIdent_2 = ((divmod__d0__d0 ((_lh_hashOp_LH_P3_0_3 * 3) + _lh_hashOp_LH_P3_1_3)) _lh_hashOp_LH_P3_2_3) in
                      ((((_lh_matchIdent_2 _lh_hashOp_LH_P3_0_3) _lh_hashOp_LH_P3_1_3) _lh_hashOp_LH_P3_2_3) k_3))))))))))))) _lh_pidgits_arg1_0)
and replicate__d0__d0 _lh_replicate_arg1_0 _lh_replicate_arg2_0 _lh_popOutId_0_2 =
  (if (_lh_replicate_arg1_0 > 0) then
    (let rec t_2 = ((replicate__d0__d0 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
      (let rec h_2 = _lh_replicate_arg2_0 in
        ((mappend__d0__d0 h_2) (concat__d0__d1 t_2))))
  else
    (fun ys_2 -> 
      ys_2))
and splitAt_lz__d0__d0 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 _lh_percOp_arg3_0 j_0 =
  (let rec _lh_percOp_LH_P2_1_0 = ((drop_lz__d0__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_percOp_LH_P2_0_0 = ((take_lz__d0__d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      ((mappend__d2__d6 ((mappend__d3__d2 (concat__d0__d2 _lh_percOp_LH_P2_0_0)) ((mappend__d4__d3 (let rec t_5 = (let rec t_6 = (fun ys_1_6 -> 
        ys_1_6) in
        (let rec h_5 = ':' in
          (fun ys_1_7 -> 
            (let rec t_7 = ((mappend__d4__d4 t_6) ys_1_7) in
              (let rec h_6 = h_5 in
                (fun ys_1_8 -> 
                  (`LH_C(h_6, ((mappend__d2__d7 t_7) ys_1_8))))))))) in
        (let rec h_7 = 't' in
          (fun ys_1_9 -> 
            (let rec t_8 = ((mappend__d4__d5 t_5) ys_1_9) in
              (let rec h_8 = h_7 in
                (fun ys_2_0 -> 
                  (`LH_C(h_8, ((mappend__d2__d8 t_8) ys_2_0)))))))))) ((mappend__d5__d1 (string_of_int j_0)) (let rec t_9 = (fun ys_2_1 -> 
        ys_2_1) in
        (let rec h_9 = 'n' in
          (fun ys_2_2 -> 
            (`LH_C(h_9, ((mappend__d2__d9 t_9) ys_2_2)))))))))) (((percOp__d0__d0 j_0) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_0))))
and take_lz__d0__d0 n_0 ls_0 _lh_popOutId_0_1 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (let rec t_1 = ((take_lz__d0__d0 (n_0 - 1)) t_0) in
          (let rec h_1 = h_0 in
            ((mappend__d0__d1 h_1) (concat__d0__d3 t_1))))
      | `LH_N -> 
        (fun ys_0 -> 
          ys_0))
  else
    (fun ys_1 -> 
      ys_1))
and take_lz__d1__d0 n_1 ls_1 _lh_popOutId_0_4 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1_8, t_1_8) -> 
        (fun _lh_dummy_5 -> 
          (let rec t_1_9 = ((take_lz__d1__d0 (n_1 - 1)) t_1_8) in
            (let rec h_1_9 = h_1_8 in
              (let rec t_2_0 = ((mappend__d1__d1 t_1_9) _lh_popOutId_0_4) in
                (let rec h_2_0 = h_1_9 in
                  ((mappend__d0__d2 h_2_0) (concat__d0__d4 t_2_0)))))))
      | `LH_N -> 
        _lh_popOutId_0_4)
  else
    _lh_popOutId_0_4)
and testPiDigits_nofib__d0__d0 _lh_testPiDigits_nofib_arg1_0 =
  (pidgits__d0__d0 _lh_testPiDigits_nofib_arg1_0);;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_PiDigits_nofib" (fun () -> ignore (let open Module_original in ((testPiDigits_nofib__d0 5000))));
  Bench.Test.create ~name:"lumberhack_PiDigits_nofib" (fun () -> ignore (let open Module_lumberhack in ((testPiDigits_nofib__d0__d0 5000))));
  Bench.Test.create ~name:"lumberhack_pop_out_PiDigits_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testPiDigits_nofib__d0__d0 5000))));
])
