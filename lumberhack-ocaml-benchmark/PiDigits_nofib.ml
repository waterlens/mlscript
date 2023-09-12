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
let rec ampOp_d0 _lh_ampOp_arg1_1 _lh_ampOp_arg2_1 =
  (match _lh_ampOp_arg2_1 with
    | `LH_P3(_lh_ampOp_LH_P3_0_1, _lh_ampOp_LH_P3_1_1, _lh_ampOp_LH_P3_2_1) -> 
      (let rec y_1 = ((_lh_ampOp_arg1_1 * 2) + 1) in
        (`LH_P3((_lh_ampOp_LH_P3_0_1 * _lh_ampOp_arg1_1), ((_lh_ampOp_LH_P3_1_1 + (_lh_ampOp_LH_P3_0_1 * 2)) * y_1), (_lh_ampOp_LH_P3_2_1 * y_1))))
    | _ -> 
      (failwith "error"));;
let rec divmod_d0 _lh_divmod_arg1_1 _lh_divmod_arg2_1 =
  (`LH_P2((_lh_divmod_arg1_1 / _lh_divmod_arg2_1), (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1)));;
let rec drop_lz_d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (if (_lh_drop_lz_arg1_1 > 0) then
    (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_drop_lz_arg2_1) in
      (match _lh_matchIdent_5 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
          (Lazy.force ((drop_lz_d0 (_lh_drop_lz_arg1_1 - 1)) _lh_drop_lz_LH_C_1_1))
        | _ -> 
          (failwith "error"))))
  else
    _lh_drop_lz_arg2_1);;
let rec mappend_d0 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend_d0 t_2_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend_d1 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d2 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend_d2 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d3 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend_d3 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend_d4 t_2_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d5 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend_d5 t_3_0) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec min_d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec replicate_d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 =
  (if (_lh_replicate_arg1_1 > 0) then
    (`LH_C(_lh_replicate_arg2_1, ((replicate_d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1)))
  else
    (`LH_N));;
let rec take_lz_d0 n_5 ls_2_0 =
  (if (n_5 > 0) then
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_7, t_2_9) -> 
        (`LH_C(h_2_7, ((take_lz_d0 (n_5 - 1)) t_2_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_lz_d1 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_2, t_2_4) -> 
        (`LH_C(h_2_2, ((take_lz_d1 (n_4 - 1)) t_2_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_6, t_2_8) -> 
      ((mappend_d0 h_2_6) (concat_d0 t_2_8))
    | `LH_N -> 
      (`LH_N))
and hashOp_d0 _lh_hashOp_arg1_1 _lh_hashOp_arg2_1 =
  (lazy (let rec k_3 = (_lh_hashOp_arg1_1 + 1) in
    (let rec _lh_matchIdent_6 = ((ampOp_d0 k_3) _lh_hashOp_arg2_1) in
      (match _lh_matchIdent_6 with
        | `LH_P3(_lh_hashOp_LH_P3_0_1, _lh_hashOp_LH_P3_1_1, _lh_hashOp_LH_P3_2_1) -> 
          (let rec _lh_matchIdent_7 = ((divmod_d0 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
            (match _lh_matchIdent_7 with
              | `LH_P2(_lh_hashOp_LH_P2_0_1, _lh_hashOp_LH_P2_1_1) -> 
                (if ((_lh_hashOp_LH_P3_0_1 > _lh_hashOp_LH_P3_1_1) || ((_lh_hashOp_LH_P2_1_1 + _lh_hashOp_LH_P3_0_1) >= _lh_hashOp_LH_P3_2_1)) then
                  (Lazy.force ((hashOp_d0 k_3) (`LH_P3(_lh_hashOp_LH_P3_0_1, _lh_hashOp_LH_P3_1_1, _lh_hashOp_LH_P3_2_1))))
                else
                  (`LH_C((string_of_int _lh_hashOp_LH_P2_0_1), ((hashOp_d0 k_3) (`LH_P3((_lh_hashOp_LH_P3_0_1 * 10), ((_lh_hashOp_LH_P3_1_1 - (_lh_hashOp_LH_P2_0_1 * _lh_hashOp_LH_P3_2_1)) * 10), _lh_hashOp_LH_P3_2_1))))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))))
and percOp_d0 _lh_percOp_arg1_1 _lh_percOp_arg2_1 _lh_percOp_arg3_1 =
  (if (_lh_percOp_arg1_1 >= _lh_percOp_arg3_1) then
    (`LH_N)
  else
    (let rec k_2 = (_lh_percOp_arg1_1 + 10) in
      (let rec j_1 = ((min_d0 _lh_percOp_arg3_1) k_2) in
        (let rec _lh_matchIdent_4 = (if (k_2 > _lh_percOp_arg3_1) then
          (`LH_P2(((mappend_d1 ((take_lz_d1 (_lh_percOp_arg3_1 mod 10)) _lh_percOp_arg2_1)) ((replicate_d0 (k_2 - _lh_percOp_arg3_1)) (`LH_C(' ', (`LH_N))))), (lazy (`LH_N))))
        else
          ((splitAt_lz_d0 10) _lh_percOp_arg2_1)) in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_percOp_LH_P2_0_1, _lh_percOp_LH_P2_1_1) -> 
              ((mappend_d2 ((mappend_d3 (concat_d0 _lh_percOp_LH_P2_0_1)) ((mappend_d4 (`LH_C('t', (`LH_C(':', (`LH_N)))))) ((mappend_d5 (string_of_int j_1)) (`LH_C('n', (`LH_N))))))) (((percOp_d0 j_1) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_1))
            | _ -> 
              (failwith "error"))))))
and pidgits_d0 _lh_pidgits_arg1_1 =
  (((percOp_d0 0) ((hashOp_d0 0) (`LH_P3(1, 0, 1)))) _lh_pidgits_arg1_1)
and splitAt_lz_d0 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 =
  (`LH_P2(((take_lz_d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1), ((drop_lz_d0 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1)))
and testPiDigits_nofib_d0 _lh_testPiDigits_nofib_arg1_1 =
  (pidgits_d0 _lh_testPiDigits_nofib_arg1_1);;

(* lumberhack *)
let rec ampOp_d0_d0_d0 _lh_ampOp_arg1_0 _lh_ampOp_arg2_0 =
  (_lh_ampOp_arg2_0 _lh_ampOp_arg1_0);;
let rec concat_d0_d0_d0 lss_4 =
  (lss_4 99);;
let rec concat_d0_d0_d1 lss_7 =
  (lss_7 99);;
let rec concat_d0_d0_d2 lss_1_4 =
  (lss_1_4 99);;
let rec concat_d0_d0_d3 lss_3 =
  (lss_3 99);;
let rec concat_d0_d0_d4 lss_1 =
  (lss_1 99);;
let rec concat_d0_d1_d0 lss_8 =
  (lss_8 99);;
let rec concat_d0_d1_d1 lss_1_2 =
  (lss_1_2 99);;
let rec concat_d0_d1_d2 lss_6 =
  (lss_6 99);;
let rec concat_d0_d1_d3 lss_0 =
  (lss_0 99);;
let rec concat_d0_d1_d4 lss_1_0 =
  (lss_1_0 99);;
let rec concat_d0_d1_d5 lss_9 =
  (lss_9 99);;
let rec concat_d0_d1_d6 lss_2 =
  (lss_2 99);;
let rec concat_d0_d1_d7 lss_5 =
  (lss_5 99);;
let rec concat_d0_d1_d8 lss_1_1 =
  (lss_1_1 99);;
let rec concat_d0_d1_d9 lss_1_3 =
  (lss_1_3 99);;
let rec drop_lz_d0_d0_d0 _lh_drop_lz_arg1_1 _lh_drop_lz_arg2_1 =
  (if (_lh_drop_lz_arg1_1 > 0) then
    (lazy (let rec _lh_matchIdent_2 = (Lazy.force _lh_drop_lz_arg2_1) in
      (match _lh_matchIdent_2 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_1, _lh_drop_lz_LH_C_1_1) -> 
          (Obj.magic 99)
        | _ -> 
          (Obj.magic 99))))
  else
    _lh_drop_lz_arg2_1);;
let rec drop_lz_d0_d0_d1 _lh_drop_lz_arg1_2 _lh_drop_lz_arg2_2 =
  (if (_lh_drop_lz_arg1_2 > 0) then
    (lazy (let rec _lh_matchIdent_7 = (Lazy.force _lh_drop_lz_arg2_2) in
      (match _lh_matchIdent_7 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_2, _lh_drop_lz_LH_C_1_2) -> 
          (Lazy.force ((drop_lz_d0_d0_d1 (_lh_drop_lz_arg1_2 - 1)) _lh_drop_lz_LH_C_1_2))
        | _ -> 
          (Obj.magic 99))))
  else
    _lh_drop_lz_arg2_2);;
let rec drop_lz_d0_d1_d0 _lh_drop_lz_arg1_0 _lh_drop_lz_arg2_0 =
  (if (_lh_drop_lz_arg1_0 > 0) then
    (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_drop_lz_arg2_0) in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          (Obj.magic 99)
        | `LH_C(_lh_drop_lz_LH_C_0_0, _lh_drop_lz_LH_C_1_0) -> 
          (Lazy.force ((drop_lz_d0_d1_d0 (_lh_drop_lz_arg1_0 - 1)) _lh_drop_lz_LH_C_1_0))
        | _ -> 
          (Obj.magic 99))))
  else
    _lh_drop_lz_arg2_0);;
let rec mappend_d0_d0_d0 xs_8_7 ys_1_7_4 =
  (xs_8_7 ys_1_7_4);;
let rec mappend_d0_d1_d0 xs_8_3 ys_1_7_0 =
  (xs_8_3 ys_1_7_0);;
let rec mappend_d0_d1_d3 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec mappend_d1_d0_d0 xs_3 ys_3 =
  (xs_3 ys_3);;
let rec mappend_d1_d0_d1 xs_2_5 ys_4_1 =
  (xs_2_5 ys_4_1);;
let rec mappend_d1_d1_d0 xs_3_8 ys_7_6 =
  (xs_3_8 ys_7_6);;
let rec mappend_d1_d1_d1 xs_8_8 ys_1_7_5 =
  (xs_8_8 ys_1_7_5);;
let rec mappend_d1_d1_d2 xs_5_9 ys_1_2_5 =
  (xs_5_9 ys_1_2_5);;
let rec mappend_d1_d1_d3 xs_6_6 ys_1_3_3 =
  (xs_6_6 ys_1_3_3);;
let rec mappend_d2_d0_d0 xs_4_8 ys_1_0_0 =
  (xs_4_8 ys_1_0_0);;
let rec mappend_d2_d0_d1 xs_8_2 ys_1_6_9 =
  (xs_8_2 ys_1_6_9);;
let rec mappend_d2_d0_d1_d0 xs_6 ys_6 =
  (xs_6 ys_6);;
let rec mappend_d2_d0_d1_d1 xs_6_3 ys_1_2_9 =
  (xs_6_3 ys_1_2_9);;
let rec mappend_d2_d0_d1_d2 xs_3_7 ys_7_5 =
  (xs_3_7 ys_7_5);;
let rec mappend_d2_d0_d2 xs_6_0 ys_1_2_6 =
  (xs_6_0 ys_1_2_6);;
let rec mappend_d2_d0_d3 xs_7_3 ys_1_4_3 =
  (xs_7_3 ys_1_4_3);;
let rec mappend_d2_d0_d4 xs_8_9 ys_1_7_6 =
  (xs_8_9 ys_1_7_6);;
let rec mappend_d2_d0_d5 xs_3_4 ys_7_2 =
  (xs_3_4 ys_7_2);;
let rec mappend_d2_d0_d6 xs_1_3 ys_1_5 =
  (xs_1_3 ys_1_5);;
let rec mappend_d2_d0_d7 xs_1_2 ys_1_4 =
  (xs_1_2 ys_1_4);;
let rec mappend_d2_d0_d8 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend_d2_d0_d9 xs_4_1 ys_9_3 =
  (xs_4_1 ys_9_3);;
let rec mappend_d2_d1_d0 xs_8_4 ys_1_7_1 =
  (xs_8_4 ys_1_7_1);;
let rec mappend_d2_d1_d1 xs_3_9 ys_7_7 =
  (xs_3_9 ys_7_7);;
let rec mappend_d2_d1_d1_d0 xs_4_6 ys_9_8 =
  (xs_4_6 ys_9_8);;
let rec mappend_d2_d1_d1_d1 xs_6_9 ys_1_3_9 =
  (xs_6_9 ys_1_3_9);;
let rec mappend_d2_d1_d1_d2 xs_7 ys_7 =
  (xs_7 ys_7);;
let rec mappend_d2_d1_d1_d3 xs_3_6 ys_7_4 =
  (xs_3_6 ys_7_4);;
let rec mappend_d2_d1_d1_d4 xs_5_0 ys_1_0_2 =
  (xs_5_0 ys_1_0_2);;
let rec mappend_d2_d1_d1_d5 xs_6_2 ys_1_2_8 =
  (xs_6_2 ys_1_2_8);;
let rec mappend_d2_d1_d1_d6 xs_8_0 ys_1_5_4 =
  (xs_8_0 ys_1_5_4);;
let rec mappend_d2_d1_d1_d7 xs_7_1 ys_1_4_1 =
  (xs_7_1 ys_1_4_1);;
let rec mappend_d2_d1_d1_d8 xs_1_0 ys_1_0 =
  (xs_1_0 ys_1_0);;
let rec mappend_d2_d1_d1_d9 xs_1_5 ys_2_4 =
  (xs_1_5 ys_2_4);;
let rec mappend_d2_d1_d2 xs_2_4 ys_4_0 =
  (xs_2_4 ys_4_0);;
let rec mappend_d2_d1_d2_d0 xs_2_0 ys_3_4 =
  (xs_2_0 ys_3_4);;
let rec mappend_d2_d1_d2_d1 xs_9_0 ys_1_7_7 =
  (xs_9_0 ys_1_7_7);;
let rec mappend_d2_d1_d2_d2 xs_5_4 ys_1_1_7 =
  (xs_5_4 ys_1_1_7);;
let rec mappend_d2_d1_d2_d3 xs_4_3 ys_9_5 =
  (xs_4_3 ys_9_5);;
let rec mappend_d2_d1_d2_d4 xs_7_5 ys_1_4_5 =
  (xs_7_5 ys_1_4_5);;
let rec mappend_d2_d1_d2_d5 xs_4_7 ys_9_9 =
  (xs_4_7 ys_9_9);;
let rec mappend_d2_d1_d3 xs_4_5 ys_9_7 =
  (xs_4_5 ys_9_7);;
let rec mappend_d2_d1_d4 xs_1_6 ys_2_5 =
  (xs_1_6 ys_2_5);;
let rec mappend_d2_d1_d5 xs_4_0 ys_7_8 =
  (xs_4_0 ys_7_8);;
let rec mappend_d2_d1_d6 xs_6_1 ys_1_2_7 =
  (xs_6_1 ys_1_2_7);;
let rec mappend_d2_d1_d7 xs_1_9 ys_3_0 =
  (xs_1_9 ys_3_0);;
let rec mappend_d2_d1_d8 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend_d2_d1_d9 xs_2_6 ys_4_2 =
  (xs_2_6 ys_4_2);;
let rec mappend_d3_d0_d0 xs_7_4 ys_1_4_4 =
  (xs_7_4 ys_1_4_4);;
let rec mappend_d3_d0_d1 xs_4_4 ys_9_6 =
  (xs_4_4 ys_9_6);;
let rec mappend_d3_d0_d2 xs_2_9 ys_6_5 =
  (xs_2_9 ys_6_5);;
let rec mappend_d3_d0_d3 xs_5_7 ys_1_2_3 =
  (xs_5_7 ys_1_2_3);;
let rec mappend_d3_d0_d4 xs_4_2 ys_9_4 =
  (xs_4_2 ys_9_4);;
let rec mappend_d3_d1_d0 xs_1_8 ys_2_9 =
  (xs_1_8 ys_2_9);;
let rec mappend_d3_d1_d1 xs_7_8 ys_1_5_0 =
  (xs_7_8 ys_1_5_0);;
let rec mappend_d3_d1_d2 xs_5_6 ys_1_2_2 =
  (xs_5_6 ys_1_2_2);;
let rec mappend_d3_d1_d3 xs_9_2 ys_1_8_2 =
  (xs_9_2 ys_1_8_2);;
let rec mappend_d3_d1_d4 xs_2_2 ys_3_6 =
  (xs_2_2 ys_3_6);;
let rec mappend_d3_d1_d5 xs_2_8 ys_6_4 =
  (xs_2_8 ys_6_4);;
let rec mappend_d3_d1_d6 xs_5_5 ys_1_2_1 =
  (xs_5_5 ys_1_2_1);;
let rec mappend_d3_d1_d7 xs_5_3 ys_1_1_6 =
  (xs_5_3 ys_1_1_6);;
let rec mappend_d3_d1_d8 xs_2_1 ys_3_5 =
  (xs_2_1 ys_3_5);;
let rec mappend_d3_d1_d9 xs_3_1 ys_6_8 =
  (xs_3_1 ys_6_8);;
let rec mappend_d4_d0_d0 xs_3_2 ys_6_9 =
  (xs_3_2 ys_6_9);;
let rec mappend_d4_d0_d1 xs_2_3 ys_3_9 =
  (xs_2_3 ys_3_9);;
let rec mappend_d4_d0_d2 xs_7_0 ys_1_4_0 =
  (xs_7_0 ys_1_4_0);;
let rec mappend_d4_d0_d3 xs_5_8 ys_1_2_4 =
  (xs_5_8 ys_1_2_4);;
let rec mappend_d4_d0_d4 xs_6_8 ys_1_3_5 =
  (xs_6_8 ys_1_3_5);;
let rec mappend_d4_d0_d5 xs_5 ys_5 =
  (xs_5 ys_5);;
let rec mappend_d4_d1_d0 xs_6_7 ys_1_3_4 =
  (xs_6_7 ys_1_3_4);;
let rec mappend_d4_d1_d1 xs_7_2 ys_1_4_2 =
  (xs_7_2 ys_1_4_2);;
let rec mappend_d4_d1_d1_d0 xs_6_5 ys_1_3_2 =
  (xs_6_5 ys_1_3_2);;
let rec mappend_d4_d1_d1_d1 xs_8_6 ys_1_7_3 =
  (xs_8_6 ys_1_7_3);;
let rec mappend_d4_d1_d2 xs_8 ys_8 =
  (xs_8 ys_8);;
let rec mappend_d4_d1_d3 xs_3_5 ys_7_3 =
  (xs_3_5 ys_7_3);;
let rec mappend_d4_d1_d4 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec mappend_d4_d1_d5 xs_4_9 ys_1_0_1 =
  (xs_4_9 ys_1_0_1);;
let rec mappend_d4_d1_d6 xs_9 ys_9 =
  (xs_9 ys_9);;
let rec mappend_d4_d1_d7 xs_8_5 ys_1_7_2 =
  (xs_8_5 ys_1_7_2);;
let rec mappend_d4_d1_d8 xs_5_2 ys_1_1_5 =
  (xs_5_2 ys_1_1_5);;
let rec mappend_d4_d1_d9 xs_5_1 ys_1_0_3 =
  (xs_5_1 ys_1_0_3);;
let rec min_d0_d0_d0 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 > _lh_min_arg2_0) then
    _lh_min_arg2_0
  else
    _lh_min_arg1_0);;
let rec min_d0_d1_d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 > _lh_min_arg2_1) then
    _lh_min_arg2_1
  else
    _lh_min_arg1_1);;
let rec min_d0_d1_d1 _lh_min_arg1_2 _lh_min_arg2_2 =
  (if (_lh_min_arg1_2 > _lh_min_arg2_2) then
    _lh_min_arg2_2
  else
    _lh_min_arg1_2);;
let rec divmod_d0_d0_d0 _lh_divmod_arg1_0 _lh_divmod_arg2_0 =
  (let rec _lh_hashOp_LH_P2_0_0 = (_lh_divmod_arg1_0 / _lh_divmod_arg2_0) in
    (let rec _lh_hashOp_LH_P2_1_0 = (_lh_divmod_arg1_0 mod _lh_divmod_arg2_0) in
      (fun _lh_hashOp_LH_P3_0_0 _lh_hashOp_LH_P3_1_0 _lh_hashOp_LH_P3_2_0 k_1 -> 
        (if ((_lh_hashOp_LH_P3_0_0 > _lh_hashOp_LH_P3_1_0) || ((_lh_hashOp_LH_P2_1_0 + _lh_hashOp_LH_P3_0_0) >= _lh_hashOp_LH_P3_2_0)) then
          (Lazy.force ((hashOp_d0_d0_d0 k_1) (let rec _lh_ampOp_LH_P3_0_0 = _lh_hashOp_LH_P3_0_0 in
            (let rec _lh_ampOp_LH_P3_1_0 = _lh_hashOp_LH_P3_1_0 in
              (let rec _lh_ampOp_LH_P3_2_0 = _lh_hashOp_LH_P3_2_0 in
                (fun _lh_ampOp_arg1_1 -> 
                  (let rec y_0 = ((_lh_ampOp_arg1_1 * 2) + 1) in
                    (let rec _lh_hashOp_LH_P3_0_1 = (_lh_ampOp_LH_P3_0_0 * _lh_ampOp_arg1_1) in
                      (let rec _lh_hashOp_LH_P3_1_1 = ((_lh_ampOp_LH_P3_1_0 + (_lh_ampOp_LH_P3_0_0 * 2)) * y_0) in
                        (let rec _lh_hashOp_LH_P3_2_1 = (_lh_ampOp_LH_P3_2_0 * y_0) in
                          (fun k_2 -> 
                            (let rec _lh_matchIdent_3 = ((divmod_d0_d0_d0 ((_lh_hashOp_LH_P3_0_1 * 3) + _lh_hashOp_LH_P3_1_1)) _lh_hashOp_LH_P3_2_1) in
                              ((((_lh_matchIdent_3 _lh_hashOp_LH_P3_0_1) _lh_hashOp_LH_P3_1_1) _lh_hashOp_LH_P3_2_1) k_2)))))))))))))
        else
          (`LH_C((string_of_int _lh_hashOp_LH_P2_0_0), ((hashOp_d0_d0_d0 k_1) (let rec _lh_ampOp_LH_P3_0_1 = (_lh_hashOp_LH_P3_0_0 * 10) in
            (let rec _lh_ampOp_LH_P3_1_1 = ((_lh_hashOp_LH_P3_1_0 - (_lh_hashOp_LH_P2_0_0 * _lh_hashOp_LH_P3_2_0)) * 10) in
              (let rec _lh_ampOp_LH_P3_2_1 = _lh_hashOp_LH_P3_2_0 in
                (fun _lh_ampOp_arg1_2 -> 
                  (let rec y_1 = ((_lh_ampOp_arg1_2 * 2) + 1) in
                    (let rec _lh_hashOp_LH_P3_0_2 = (_lh_ampOp_LH_P3_0_1 * _lh_ampOp_arg1_2) in
                      (let rec _lh_hashOp_LH_P3_1_2 = ((_lh_ampOp_LH_P3_1_1 + (_lh_ampOp_LH_P3_0_1 * 2)) * y_1) in
                        (let rec _lh_hashOp_LH_P3_2_2 = (_lh_ampOp_LH_P3_2_1 * y_1) in
                          (fun k_3 -> 
                            (let rec _lh_matchIdent_4 = ((divmod_d0_d0_d0 ((_lh_hashOp_LH_P3_0_2 * 3) + _lh_hashOp_LH_P3_1_2)) _lh_hashOp_LH_P3_2_2) in
                              ((((_lh_matchIdent_4 _lh_hashOp_LH_P3_0_2) _lh_hashOp_LH_P3_1_2) _lh_hashOp_LH_P3_2_2) k_3))))))))))))))))))
and hashOp_d0_d0_d0 _lh_hashOp_arg1_0 _lh_hashOp_arg2_0 =
  (lazy (let rec k_6 = (_lh_hashOp_arg1_0 + 1) in
    (let rec _lh_matchIdent_8 = ((ampOp_d0_d0_d0 k_6) _lh_hashOp_arg2_0) in
      (_lh_matchIdent_8 k_6))))
and mappend_d0_d0_d1 xs_8_1 ys_1_5_5 =
  (match xs_8_1 with
    | `LH_C(h_7_2, t_7_2) -> 
      (let rec h_7_3 = h_7_2 in
        (let rec t_7_3 = ((mappend_d0_d0_d1 t_7_2) ys_1_5_5) in
          (fun ys_1_5_6 -> 
            (let rec h_7_4 = h_7_3 in
              (let rec t_7_4 = ((mappend_d3_d0_d3 t_7_3) ys_1_5_6) in
                (fun ys_1_5_7 -> 
                  (`LH_C(h_7_4, ((mappend_d2_d0_d1_d1 t_7_4) ys_1_5_7)))))))))
    | `LH_N -> 
      ys_1_5_5)
and mappend_d0_d0_d2 xs_2_7 ys_6_1 =
  (match xs_2_7 with
    | `LH_C(h_3_2, t_3_2) -> 
      (let rec h_3_3 = h_3_2 in
        (let rec t_3_3 = ((mappend_d0_d0_d2 t_3_2) ys_6_1) in
          (fun ys_6_2 -> 
            (let rec h_3_4 = h_3_3 in
              (let rec t_3_4 = ((mappend_d3_d0_d4 t_3_3) ys_6_2) in
                (fun ys_6_3 -> 
                  (`LH_C(h_3_4, ((mappend_d2_d0_d1_d2 t_3_4) ys_6_3)))))))))
    | `LH_N -> 
      ys_6_1)
and mappend_d0_d1_d1 xs_1_4 ys_2_1 =
  (match xs_1_4 with
    | `LH_C(h_8, t_8) -> 
      (let rec h_9 = h_8 in
        (let rec t_9 = ((mappend_d0_d1_d1 t_8) ys_2_1) in
          (fun ys_2_2 -> 
            (let rec h_1_0 = h_9 in
              (let rec t_1_0 = ((mappend_d3_d1_d3 t_9) ys_2_2) in
                (fun ys_2_3 -> 
                  (`LH_C(h_1_0, ((mappend_d2_d1_d1_d1 t_1_0) ys_2_3)))))))))
    | `LH_N -> 
      ys_2_1)
and mappend_d0_d1_d2 xs_7_9 ys_1_5_1 =
  (match xs_7_9 with
    | `LH_C(h_6_9, t_6_9) -> 
      (let rec h_7_0 = h_6_9 in
        (let rec t_7_0 = ((mappend_d0_d1_d2 t_6_9) ys_1_5_1) in
          (fun ys_1_5_2 -> 
            (let rec h_7_1 = h_7_0 in
              (let rec t_7_1 = ((mappend_d3_d1_d4 t_7_0) ys_1_5_2) in
                (fun ys_1_5_3 -> 
                  (`LH_C(h_7_1, ((mappend_d2_d1_d1_d2 t_7_1) ys_1_5_3)))))))))
    | `LH_N -> 
      ys_1_5_1)
and mappend_d0_d1_d4 xs_1_7 ys_2_6 =
  (match xs_1_7 with
    | `LH_C(h_1_1, t_1_1) -> 
      (let rec h_1_2 = h_1_1 in
        (let rec t_1_2 = ((mappend_d0_d1_d4 t_1_1) ys_2_6) in
          (fun ys_2_7 -> 
            (let rec h_1_3 = h_1_2 in
              (let rec t_1_3 = ((mappend_d3_d1_d8 t_1_2) ys_2_7) in
                (fun ys_2_8 -> 
                  (`LH_C(h_1_3, ((mappend_d2_d1_d2_d4 t_1_3) ys_2_8)))))))))
    | `LH_N -> 
      ys_2_6)
and mappend_d0_d1_d5 xs_9_1 ys_1_7_8 =
  (match xs_9_1 with
    | `LH_C(h_8_3, t_8_3) -> 
      (let rec h_8_4 = h_8_3 in
        (let rec t_8_4 = ((mappend_d0_d1_d5 t_8_3) ys_1_7_8) in
          (fun ys_1_7_9 -> 
            (let rec h_8_5 = h_8_4 in
              (let rec t_8_5 = ((mappend_d3_d1_d9 t_8_4) ys_1_7_9) in
                (fun ys_1_8_0 -> 
                  (`LH_C(h_8_5, ((mappend_d2_d1_d2_d5 t_8_5) ys_1_8_0)))))))))
    | `LH_N -> 
      ys_1_7_8)
and mappend_d5_d0_d0 xs_7_6 ys_1_4_6 =
  (match xs_7_6 with
    | `LH_C(h_6_5, t_6_5) -> 
      (let rec h_6_6 = h_6_5 in
        (let rec t_6_6 = ((mappend_d5_d0_d0 t_6_5) ys_1_4_6) in
          (fun ys_1_4_7 -> 
            (`LH_C(h_6_6, ((mappend_d2_d0_d4 t_6_6) ys_1_4_7))))))
    | `LH_N -> 
      ys_1_4_6)
and mappend_d5_d0_d1 xs_3_0 ys_6_6 =
  (match xs_3_0 with
    | `LH_C(h_3_5, t_3_5) -> 
      (let rec h_3_6 = h_3_5 in
        (let rec t_3_6 = ((mappend_d5_d0_d1 t_3_5) ys_6_6) in
          (fun ys_6_7 -> 
            (`LH_C(h_3_6, ((mappend_d2_d0_d1_d0 t_3_6) ys_6_7))))))
    | `LH_N -> 
      ys_6_6)
and mappend_d5_d1_d0 xs_3_3 ys_7_0 =
  (match xs_3_3 with
    | `LH_C(h_3_7, t_3_7) -> 
      (let rec h_3_8 = h_3_7 in
        (let rec t_3_8 = ((mappend_d5_d1_d0 t_3_7) ys_7_0) in
          (fun ys_7_1 -> 
            (`LH_C(h_3_8, ((mappend_d2_d1_d4 t_3_8) ys_7_1))))))
    | `LH_N -> 
      ys_7_0)
and mappend_d5_d1_d1 xs_7_7 ys_1_4_8 =
  (match xs_7_7 with
    | `LH_C(h_6_7, t_6_7) -> 
      (let rec h_6_8 = h_6_7 in
        (let rec t_6_8 = ((mappend_d5_d1_d1 t_6_7) ys_1_4_8) in
          (fun ys_1_4_9 -> 
            (`LH_C(h_6_8, ((mappend_d2_d1_d1_d0 t_6_8) ys_1_4_9))))))
    | `LH_N -> 
      ys_1_4_8)
and mappend_d5_d1_d2 xs_6_4 ys_1_3_0 =
  (match xs_6_4 with
    | `LH_C(h_6_0, t_6_0) -> 
      (let rec h_6_1 = h_6_0 in
        (let rec t_6_1 = ((mappend_d5_d1_d2 t_6_0) ys_1_3_0) in
          (fun ys_1_3_1 -> 
            (`LH_C(h_6_1, ((mappend_d2_d1_d1_d7 t_6_1) ys_1_3_1))))))
    | `LH_N -> 
      ys_1_3_0)
and mappend_d5_d1_d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec h_1 = h_0 in
        (let rec t_1 = ((mappend_d5_d1_d3 t_0) ys_1_1) in
          (fun ys_1_2 -> 
            (`LH_C(h_1, ((mappend_d2_d1_d2_d3 t_1) ys_1_2))))))
    | `LH_N -> 
      ys_1_1)
and percOp_d0_d0_d0 _lh_percOp_arg1_2 _lh_percOp_arg2_2 _lh_percOp_arg3_7 =
  (if (_lh_percOp_arg1_2 >= _lh_percOp_arg3_7) then
    (`LH_N)
  else
    (let rec k_7 = (_lh_percOp_arg1_2 + 10) in
      (let rec j_7 = ((min_d0_d0_d0 _lh_percOp_arg3_7) k_7) in
        (let rec _lh_matchIdent_9 = (if (k_7 > _lh_percOp_arg3_7) then
          (let rec _lh_percOp_LH_P2_0_5 = ((mappend_d1_d0_d0 ((take_lz_d1_d1_d0 (_lh_percOp_arg3_7 mod 10)) _lh_percOp_arg2_2)) ((replicate_d0_d1_d0 (k_7 - _lh_percOp_arg3_7)) (let rec h_7_5 = ' ' in
            (let rec t_7_5 = (fun ys_1_5_8 -> 
              ys_1_5_8) in
              (fun ys_1_5_9 -> 
                (let rec h_7_6 = h_7_5 in
                  (let rec t_7_6 = ((mappend_d0_d0_d0 t_7_5) ys_1_5_9) in
                    (fun ys_1_6_0 -> 
                      (let rec h_7_7 = h_7_6 in
                        (let rec t_7_7 = ((mappend_d3_d0_d1 t_7_6) ys_1_6_0) in
                          (fun ys_1_6_1 -> 
                            (`LH_C(h_7_7, ((mappend_d2_d0_d5 t_7_7) ys_1_6_1)))))))))))))) in
            (let rec _lh_percOp_LH_P2_1_5 = (lazy (`LH_N)) in
              (fun _lh_percOp_arg3_8 j_8 -> 
                ((mappend_d2_d0_d0 ((mappend_d3_d0_d0 (concat_d0_d0_d0 _lh_percOp_LH_P2_0_5)) ((mappend_d4_d0_d0 (let rec h_7_8 = 't' in
                  (let rec t_7_8 = (let rec h_7_9 = ':' in
                    (let rec t_7_9 = (fun ys_1_6_2 -> 
                      ys_1_6_2) in
                      (fun ys_1_6_3 -> 
                        (let rec h_8_0 = h_7_9 in
                          (let rec t_8_0 = ((mappend_d4_d0_d1 t_7_9) ys_1_6_3) in
                            (fun ys_1_6_4 -> 
                              (`LH_C(h_8_0, ((mappend_d2_d0_d1 t_8_0) ys_1_6_4))))))))) in
                    (fun ys_1_6_5 -> 
                      (let rec h_8_1 = h_7_8 in
                        (let rec t_8_1 = ((mappend_d4_d0_d2 t_7_8) ys_1_6_5) in
                          (fun ys_1_6_6 -> 
                            (`LH_C(h_8_1, ((mappend_d2_d0_d2 t_8_1) ys_1_6_6)))))))))) ((mappend_d5_d0_d0 (string_of_int j_8)) (let rec h_8_2 = 'n' in
                  (let rec t_8_2 = (fun ys_1_6_7 -> 
                    ys_1_6_7) in
                    (fun ys_1_6_8 -> 
                      (`LH_C(h_8_2, ((mappend_d2_d0_d3 t_8_2) ys_1_6_8)))))))))) (((percOp_d0_d1_d0 j_8) _lh_percOp_LH_P2_1_5) _lh_percOp_arg3_8)))))
        else
          ((splitAt_lz_d0_d1_d0 10) _lh_percOp_arg2_2)) in
          ((_lh_matchIdent_9 _lh_percOp_arg3_7) j_7)))))
and percOp_d0_d1_d0 _lh_percOp_arg1_1 _lh_percOp_arg2_1 _lh_percOp_arg3_5 =
  (if (_lh_percOp_arg1_1 >= _lh_percOp_arg3_5) then
    (`LH_N)
  else
    (let rec k_4 = (_lh_percOp_arg1_1 + 10) in
      (let rec j_5 = ((min_d0_d1_d0 _lh_percOp_arg3_5) k_4) in
        (let rec _lh_matchIdent_5 = (if (k_4 > _lh_percOp_arg3_5) then
          (let rec _lh_percOp_LH_P2_0_4 = ((mappend_d1_d1_d0 ((take_lz_d1_d0_d0 (_lh_percOp_arg3_5 mod 10)) _lh_percOp_arg2_1)) ((replicate_d0_d0_d0 (k_4 - _lh_percOp_arg3_5)) (let rec h_4_9 = ' ' in
            (let rec t_4_9 = (fun ys_1_0_4 -> 
              ys_1_0_4) in
              (fun ys_1_0_5 -> 
                (let rec h_5_0 = h_4_9 in
                  (let rec t_5_0 = ((mappend_d0_d1_d0 t_4_9) ys_1_0_5) in
                    (fun ys_1_0_6 -> 
                      (let rec h_5_1 = h_5_0 in
                        (let rec t_5_1 = ((mappend_d3_d1_d1 t_5_0) ys_1_0_6) in
                          (fun ys_1_0_7 -> 
                            (`LH_C(h_5_1, ((mappend_d2_d1_d5 t_5_1) ys_1_0_7)))))))))))))) in
            (let rec _lh_percOp_LH_P2_1_4 = (lazy (`LH_N)) in
              (fun _lh_percOp_arg3_6 j_6 -> 
                ((mappend_d2_d1_d1 ((mappend_d3_d1_d0 (concat_d0_d1_d0 _lh_percOp_LH_P2_0_4)) ((mappend_d4_d1_d0 (let rec h_5_2 = 't' in
                  (let rec t_5_2 = (let rec h_5_3 = ':' in
                    (let rec t_5_3 = (fun ys_1_0_8 -> 
                      ys_1_0_8) in
                      (fun ys_1_0_9 -> 
                        (let rec h_5_4 = h_5_3 in
                          (let rec t_5_4 = ((mappend_d4_d1_d1 t_5_3) ys_1_0_9) in
                            (fun ys_1_1_0 -> 
                              (`LH_C(h_5_4, ((mappend_d2_d1_d2 t_5_4) ys_1_1_0))))))))) in
                    (fun ys_1_1_1 -> 
                      (let rec h_5_5 = h_5_2 in
                        (let rec t_5_5 = ((mappend_d4_d1_d2 t_5_2) ys_1_1_1) in
                          (fun ys_1_1_2 -> 
                            (`LH_C(h_5_5, ((mappend_d2_d1_d3 t_5_5) ys_1_1_2)))))))))) ((mappend_d5_d1_d0 (string_of_int j_6)) (let rec h_5_6 = 'n' in
                  (let rec t_5_6 = (fun ys_1_1_3 -> 
                    ys_1_1_3) in
                    (fun ys_1_1_4 -> 
                      (`LH_C(h_5_6, ((mappend_d2_d1_d0 t_5_6) ys_1_1_4)))))))))) (((percOp_d0_d1_d0 j_6) _lh_percOp_LH_P2_1_4) _lh_percOp_arg3_6)))))
        else
          ((splitAt_lz_d0_d0_d0 10) _lh_percOp_arg2_1)) in
          ((_lh_matchIdent_5 _lh_percOp_arg3_5) j_5)))))
and percOp_d0_d1_d1 _lh_percOp_arg1_0 _lh_percOp_arg2_0 _lh_percOp_arg3_1 =
  (if (_lh_percOp_arg1_0 >= _lh_percOp_arg3_1) then
    (`LH_N)
  else
    (let rec k_0 = (_lh_percOp_arg1_0 + 10) in
      (let rec j_1 = ((min_d0_d1_d1 _lh_percOp_arg3_1) k_0) in
        (let rec _lh_matchIdent_1 = (if (k_0 > _lh_percOp_arg3_1) then
          (let rec _lh_percOp_LH_P2_0_1 = ((mappend_d1_d1_d2 ((take_lz_d1_d0_d1 (_lh_percOp_arg3_1 mod 10)) _lh_percOp_arg2_0)) ((replicate_d0_d0_d1 (k_0 - _lh_percOp_arg3_1)) (let rec h_2_4 = ' ' in
            (let rec t_2_4 = (fun ys_5_0 -> 
              ys_5_0) in
              (fun ys_5_1 -> 
                (let rec h_2_5 = h_2_4 in
                  (let rec t_2_5 = ((mappend_d0_d1_d3 t_2_4) ys_5_1) in
                    (fun ys_5_2 -> 
                      (let rec h_2_6 = h_2_5 in
                        (let rec t_2_6 = ((mappend_d3_d1_d6 t_2_5) ys_5_2) in
                          (fun ys_5_3 -> 
                            (`LH_C(h_2_6, ((mappend_d2_d1_d1_d8 t_2_6) ys_5_3)))))))))))))) in
            (let rec _lh_percOp_LH_P2_1_1 = (lazy (`LH_N)) in
              (fun _lh_percOp_arg3_2 j_2 -> 
                ((mappend_d2_d1_d1_d4 ((mappend_d3_d1_d5 (concat_d0_d1_d5 _lh_percOp_LH_P2_0_1)) ((mappend_d4_d1_d6 (let rec h_2_7 = 't' in
                  (let rec t_2_7 = (let rec h_2_8 = ':' in
                    (let rec t_2_8 = (fun ys_5_4 -> 
                      ys_5_4) in
                      (fun ys_5_5 -> 
                        (let rec h_2_9 = h_2_8 in
                          (let rec t_2_9 = ((mappend_d4_d1_d7 t_2_8) ys_5_5) in
                            (fun ys_5_6 -> 
                              (`LH_C(h_2_9, ((mappend_d2_d1_d1_d5 t_2_9) ys_5_6))))))))) in
                    (fun ys_5_7 -> 
                      (let rec h_3_0 = h_2_7 in
                        (let rec t_3_0 = ((mappend_d4_d1_d8 t_2_7) ys_5_7) in
                          (fun ys_5_8 -> 
                            (`LH_C(h_3_0, ((mappend_d2_d1_d1_d6 t_3_0) ys_5_8)))))))))) ((mappend_d5_d1_d2 (string_of_int j_2)) (let rec h_3_1 = 'n' in
                  (let rec t_3_1 = (fun ys_5_9 -> 
                    ys_5_9) in
                    (fun ys_6_0 -> 
                      (`LH_C(h_3_1, ((mappend_d2_d1_d1_d3 t_3_1) ys_6_0)))))))))) (((percOp_d0_d1_d1 j_2) _lh_percOp_LH_P2_1_1) _lh_percOp_arg3_2)))))
        else
          ((splitAt_lz_d0_d0_d1 10) _lh_percOp_arg2_0)) in
          ((_lh_matchIdent_1 _lh_percOp_arg3_1) j_1)))))
and pidgits_d0_d0_d0 _lh_pidgits_arg1_0 =
  (((percOp_d0_d0_d0 0) ((hashOp_d0_d0_d0 0) (let rec _lh_ampOp_LH_P3_0_2 = 1 in
    (let rec _lh_ampOp_LH_P3_1_2 = 0 in
      (let rec _lh_ampOp_LH_P3_2_2 = 1 in
        (fun _lh_ampOp_arg1_3 -> 
          (let rec y_2 = ((_lh_ampOp_arg1_3 * 2) + 1) in
            (let rec _lh_hashOp_LH_P3_0_3 = (_lh_ampOp_LH_P3_0_2 * _lh_ampOp_arg1_3) in
              (let rec _lh_hashOp_LH_P3_1_3 = ((_lh_ampOp_LH_P3_1_2 + (_lh_ampOp_LH_P3_0_2 * 2)) * y_2) in
                (let rec _lh_hashOp_LH_P3_2_3 = (_lh_ampOp_LH_P3_2_2 * y_2) in
                  (fun k_5 -> 
                    (let rec _lh_matchIdent_6 = ((divmod_d0_d0_d0 ((_lh_hashOp_LH_P3_0_3 * 3) + _lh_hashOp_LH_P3_1_3)) _lh_hashOp_LH_P3_2_3) in
                      ((((_lh_matchIdent_6 _lh_hashOp_LH_P3_0_3) _lh_hashOp_LH_P3_1_3) _lh_hashOp_LH_P3_2_3) k_5))))))))))))) _lh_pidgits_arg1_0)
and replicate_d0_d0_d0 _lh_replicate_arg1_1 _lh_replicate_arg2_1 =
  (if (_lh_replicate_arg1_1 > 0) then
    (let rec h_5_7 = _lh_replicate_arg2_1 in
      (let rec t_5_7 = ((replicate_d0_d0_d0 (_lh_replicate_arg1_1 - 1)) _lh_replicate_arg2_1) in
        (fun _lh_dummy_1_0 -> 
          ((mappend_d0_d1_d0 h_5_7) (concat_d0_d1_d1 t_5_7)))))
  else
    (fun _lh_dummy_1_1 ys_1_1_8 -> 
      ys_1_1_8))
and replicate_d0_d0_d1 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 > 0) then
    (let rec h_2 = _lh_replicate_arg2_0 in
      (let rec t_2 = ((replicate_d0_d0_d1 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0) in
        (fun _lh_dummy_0 -> 
          ((mappend_d0_d1_d3 h_2) (concat_d0_d1_d6 t_2)))))
  else
    (fun _lh_dummy_1 ys_1_3 -> 
      ys_1_3))
and replicate_d0_d1_d0 _lh_replicate_arg1_2 _lh_replicate_arg2_2 =
  (if (_lh_replicate_arg1_2 > 0) then
    (let rec h_8_6 = _lh_replicate_arg2_2 in
      (let rec t_8_6 = ((replicate_d0_d1_d0 (_lh_replicate_arg1_2 - 1)) _lh_replicate_arg2_2) in
        (fun _lh_dummy_1_6 -> 
          ((mappend_d0_d0_d0 h_8_6) (concat_d0_d0_d1 t_8_6)))))
  else
    (fun _lh_dummy_1_7 ys_1_8_1 -> 
      ys_1_8_1))
and splitAt_lz_d0_d0_d0 _lh_splitAt_lz_arg1_2 _lh_splitAt_lz_arg2_2 =
  (let rec _lh_percOp_LH_P2_0_3 = ((take_lz_d0_d0_d0 _lh_splitAt_lz_arg1_2) _lh_splitAt_lz_arg2_2) in
    (let rec _lh_percOp_LH_P2_1_3 = ((drop_lz_d0_d0_d0 _lh_splitAt_lz_arg1_2) _lh_splitAt_lz_arg2_2) in
      (fun _lh_percOp_arg3_4 j_4 -> 
        ((mappend_d2_d1_d6 ((mappend_d3_d1_d2 (concat_d0_d1_d2 _lh_percOp_LH_P2_0_3)) ((mappend_d4_d1_d3 (let rec h_4_4 = 't' in
          (let rec t_4_4 = (let rec h_4_5 = ':' in
            (let rec t_4_5 = (fun ys_8_6 -> 
              ys_8_6) in
              (fun ys_8_7 -> 
                (let rec h_4_6 = h_4_5 in
                  (let rec t_4_6 = ((mappend_d4_d1_d4 t_4_5) ys_8_7) in
                    (fun ys_8_8 -> 
                      (`LH_C(h_4_6, ((mappend_d2_d1_d7 t_4_6) ys_8_8))))))))) in
            (fun ys_8_9 -> 
              (let rec h_4_7 = h_4_4 in
                (let rec t_4_7 = ((mappend_d4_d1_d5 t_4_4) ys_8_9) in
                  (fun ys_9_0 -> 
                    (`LH_C(h_4_7, ((mappend_d2_d1_d8 t_4_7) ys_9_0)))))))))) ((mappend_d5_d1_d1 (string_of_int j_4)) (let rec h_4_8 = 'n' in
          (let rec t_4_8 = (fun ys_9_1 -> 
            ys_9_1) in
            (fun ys_9_2 -> 
              (`LH_C(h_4_8, ((mappend_d2_d1_d9 t_4_8) ys_9_2)))))))))) (((percOp_d0_d1_d0 j_4) _lh_percOp_LH_P2_1_3) _lh_percOp_arg3_4)))))
and splitAt_lz_d0_d0_d1 _lh_splitAt_lz_arg1_1 _lh_splitAt_lz_arg2_1 =
  (let rec _lh_percOp_LH_P2_0_2 = ((take_lz_d0_d0_d1 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1) in
    (let rec _lh_percOp_LH_P2_1_2 = ((drop_lz_d0_d0_d1 _lh_splitAt_lz_arg1_1) _lh_splitAt_lz_arg2_1) in
      (fun _lh_percOp_arg3_3 j_3 -> 
        ((mappend_d2_d1_d1_d9 ((mappend_d3_d1_d7 (concat_d0_d1_d7 _lh_percOp_LH_P2_0_2)) ((mappend_d4_d1_d9 (let rec h_3_9 = 't' in
          (let rec t_3_9 = (let rec h_4_0 = ':' in
            (let rec t_4_0 = (fun ys_7_9 -> 
              ys_7_9) in
              (fun ys_8_0 -> 
                (let rec h_4_1 = h_4_0 in
                  (let rec t_4_1 = ((mappend_d4_d1_d1_d0 t_4_0) ys_8_0) in
                    (fun ys_8_1 -> 
                      (`LH_C(h_4_1, ((mappend_d2_d1_d2_d0 t_4_1) ys_8_1))))))))) in
            (fun ys_8_2 -> 
              (let rec h_4_2 = h_3_9 in
                (let rec t_4_2 = ((mappend_d4_d1_d1_d1 t_3_9) ys_8_2) in
                  (fun ys_8_3 -> 
                    (`LH_C(h_4_2, ((mappend_d2_d1_d2_d1 t_4_2) ys_8_3)))))))))) ((mappend_d5_d1_d3 (string_of_int j_3)) (let rec h_4_3 = 'n' in
          (let rec t_4_3 = (fun ys_8_4 -> 
            ys_8_4) in
            (fun ys_8_5 -> 
              (`LH_C(h_4_3, ((mappend_d2_d1_d2_d2 t_4_3) ys_8_5)))))))))) (((percOp_d0_d1_d1 j_3) _lh_percOp_LH_P2_1_2) _lh_percOp_arg3_3)))))
and splitAt_lz_d0_d1_d0 _lh_splitAt_lz_arg1_0 _lh_splitAt_lz_arg2_0 =
  (let rec _lh_percOp_LH_P2_0_0 = ((take_lz_d0_d1_d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
    (let rec _lh_percOp_LH_P2_1_0 = ((drop_lz_d0_d1_d0 _lh_splitAt_lz_arg1_0) _lh_splitAt_lz_arg2_0) in
      (fun _lh_percOp_arg3_0 j_0 -> 
        ((mappend_d2_d0_d6 ((mappend_d3_d0_d2 (concat_d0_d0_d2 _lh_percOp_LH_P2_0_0)) ((mappend_d4_d0_d3 (let rec h_1_9 = 't' in
          (let rec t_1_9 = (let rec h_2_0 = ':' in
            (let rec t_2_0 = (fun ys_4_3 -> 
              ys_4_3) in
              (fun ys_4_4 -> 
                (let rec h_2_1 = h_2_0 in
                  (let rec t_2_1 = ((mappend_d4_d0_d4 t_2_0) ys_4_4) in
                    (fun ys_4_5 -> 
                      (`LH_C(h_2_1, ((mappend_d2_d0_d7 t_2_1) ys_4_5))))))))) in
            (fun ys_4_6 -> 
              (let rec h_2_2 = h_1_9 in
                (let rec t_2_2 = ((mappend_d4_d0_d5 t_1_9) ys_4_6) in
                  (fun ys_4_7 -> 
                    (`LH_C(h_2_2, ((mappend_d2_d0_d8 t_2_2) ys_4_7)))))))))) ((mappend_d5_d0_d1 (string_of_int j_0)) (let rec h_2_3 = 'n' in
          (let rec t_2_3 = (fun ys_4_8 -> 
            ys_4_8) in
            (fun ys_4_9 -> 
              (`LH_C(h_2_3, ((mappend_d2_d0_d9 t_2_3) ys_4_9)))))))))) (((percOp_d0_d1_d1 j_0) _lh_percOp_LH_P2_1_0) _lh_percOp_arg3_0)))))
and take_lz_d0_d0_d0 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_3, t_3) -> 
        (Obj.magic 99)
      | `LH_N -> 
        (fun _lh_dummy_3 ys_1_6 -> 
          ys_1_6))
  else
    (fun _lh_dummy_4 ys_1_7 -> 
      ys_1_7))
and take_lz_d0_d0_d1 n_3 ls_3 =
  (if (n_3 > 0) then
    (match (Lazy.force ls_3) with
      | `LH_C(h_1_7, t_1_7) -> 
        (let rec h_1_8 = h_1_7 in
          (let rec t_1_8 = ((take_lz_d0_d0_d1 (n_3 - 1)) t_1_7) in
            (fun _lh_dummy_7 -> 
              ((mappend_d0_d1_d4 h_1_8) (concat_d0_d1_d8 t_1_8)))))
      | `LH_N -> 
        (fun _lh_dummy_8 ys_3_7 -> 
          ys_3_7))
  else
    (fun _lh_dummy_9 ys_3_8 -> 
      ys_3_8))
and take_lz_d0_d1_d0 n_4 ls_4 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_4) with
      | `LH_C(h_5_8, t_5_8) -> 
        (let rec h_5_9 = h_5_8 in
          (let rec t_5_9 = ((take_lz_d0_d1_d0 (n_4 - 1)) t_5_8) in
            (fun _lh_dummy_1_2 -> 
              ((mappend_d0_d0_d1 h_5_9) (concat_d0_d0_d3 t_5_9)))))
      | `LH_N -> 
        (Obj.magic 99))
  else
    (fun _lh_dummy_1_4 ys_1_2_0 -> 
      ys_1_2_0))
and take_lz_d1_d0_d0 n_2 ls_2 =
  (if (n_2 > 0) then
    (match (Lazy.force ls_2) with
      | `LH_C(h_1_4, t_1_4) -> 
        (Obj.magic 99)
      | `LH_N -> 
        (fun ys_3_2 -> 
          ys_3_2))
  else
    (fun ys_3_3 -> 
      ys_3_3))
and take_lz_d1_d0_d1 n_5 ls_5 =
  (if (n_5 > 0) then
    (match (Lazy.force ls_5) with
      | `LH_C(h_6_2, t_6_2) -> 
        (let rec h_6_3 = h_6_2 in
          (let rec t_6_3 = ((take_lz_d1_d0_d1 (n_5 - 1)) t_6_2) in
            (fun ys_1_3_6 -> 
              (let rec h_6_4 = h_6_3 in
                (let rec t_6_4 = ((mappend_d1_d1_d3 t_6_3) ys_1_3_6) in
                  (fun _lh_dummy_1_5 -> 
                    ((mappend_d0_d1_d5 h_6_4) (concat_d0_d1_d9 t_6_4))))))))
      | `LH_N -> 
        (fun ys_1_3_7 -> 
          ys_1_3_7))
  else
    (fun ys_1_3_8 -> 
      ys_1_3_8))
and take_lz_d1_d1_d0 n_1 ls_1 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_5, t_5) -> 
        (let rec h_6 = h_5 in
          (let rec t_6 = ((take_lz_d1_d1_d0 (n_1 - 1)) t_5) in
            (fun ys_1_8 -> 
              (let rec h_7 = h_6 in
                (let rec t_7 = ((mappend_d1_d0_d1 t_6) ys_1_8) in
                  (fun _lh_dummy_5 -> 
                    ((mappend_d0_d0_d2 h_7) (concat_d0_d0_d4 t_7))))))))
      | `LH_N -> 
        (Obj.magic 99))
  else
    (fun ys_2_0 -> 
      ys_2_0))
and testPiDigits_nofib_d0_d0_d0 _lh_testPiDigits_nofib_arg1_0 =
  (pidgits_d0_d0_d0 _lh_testPiDigits_nofib_arg1_0);;

(* lumberhack_pop_out *)
let rec ampOp_d0_d0_d0_d0 _lh_ampOp_arg1_4 _lh_ampOp_arg2_1 =
  (_lh_ampOp_arg2_1 _lh_ampOp_arg1_4);;
let rec ampOp_d0_d0_d0_d1 _lh_ampOp_arg1_7 _lh_ampOp_arg2_3 =
  (_lh_ampOp_arg2_3 _lh_ampOp_arg1_7);;
let rec ampOp_d0_d0_d0_d2 _lh_ampOp_arg1_5 _lh_ampOp_arg2_2 =
  (_lh_ampOp_arg2_2 _lh_ampOp_arg1_5);;
let rec concat_d0_d0_d0_d0 lss_2_3 =
  (lss_2_3 99);;
let rec concat_d0_d0_d1_d0 lss_2_4 =
  (lss_2_4 99);;
let rec concat_d0_d0_d2_d0 lss_2_5 =
  (lss_2_5 99);;
let rec concat_d0_d0_d3_d0 lss_1_6 =
  (lss_1_6 99);;
let rec concat_d0_d0_d4_d0 lss_1_8 =
  (lss_1_8 99);;
let rec concat_d0_d1_d0_d0 lss_1_5 =
  (lss_1_5 99);;
let rec concat_d0_d1_d1_d0 lss_2_6 =
  (lss_2_6 99);;
let rec concat_d0_d1_d2_d0 lss_2_0 =
  (lss_2_0 99);;
let rec concat_d0_d1_d5_d0 lss_1_7 =
  (lss_1_7 99);;
let rec concat_d0_d1_d6_d0 lss_2_2 =
  (lss_2_2 99);;
let rec concat_d0_d1_d7_d0 lss_1_9 =
  (lss_1_9 99);;
let rec concat_d0_d1_d8_d0 lss_2_7 =
  (lss_2_7 99);;
let rec concat_d0_d1_d9_d0 lss_2_1 =
  (lss_2_1 99);;
let rec drop_lz_d0_d0_d0_d0 _lh_drop_lz_arg1_3 _lh_drop_lz_arg2_3 =
  (if (_lh_drop_lz_arg1_3 > 0) then
    (lazy (let rec _lh_matchIdent_1_3 = (Lazy.force _lh_drop_lz_arg2_3) in
      (match _lh_matchIdent_1_3 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_3, _lh_drop_lz_LH_C_1_3) -> 
          (Obj.magic 99)
        | _ -> 
          (Obj.magic 99))))
  else
    _lh_drop_lz_arg2_3);;
let rec drop_lz_d0_d0_d1_d0 _lh_drop_lz_arg1_4 _lh_drop_lz_arg2_4 =
  (if (_lh_drop_lz_arg1_4 > 0) then
    (lazy (let rec _lh_matchIdent_1_6 = (Lazy.force _lh_drop_lz_arg2_4) in
      (match _lh_matchIdent_1_6 with
        | `LH_N -> 
          (`LH_N)
        | `LH_C(_lh_drop_lz_LH_C_0_4, _lh_drop_lz_LH_C_1_4) -> 
          (Lazy.force ((drop_lz_d0_d0_d1_d0 (_lh_drop_lz_arg1_4 - 1)) _lh_drop_lz_LH_C_1_4))
        | _ -> 
          (Obj.magic 99))))
  else
    _lh_drop_lz_arg2_4);;
let rec drop_lz_d0_d1_d0_d0 _lh_drop_lz_arg1_5 _lh_drop_lz_arg2_5 =
  (if (_lh_drop_lz_arg1_5 > 0) then
    (lazy (let rec _lh_matchIdent_1_9 = (Lazy.force _lh_drop_lz_arg2_5) in
      (match _lh_matchIdent_1_9 with
        | `LH_N -> 
          (Obj.magic 99)
        | `LH_C(_lh_drop_lz_LH_C_0_5, _lh_drop_lz_LH_C_1_5) -> 
          (Lazy.force ((drop_lz_d0_d1_d0_d0 (_lh_drop_lz_arg1_5 - 1)) _lh_drop_lz_LH_C_1_5))
        | _ -> 
          (Obj.magic 99))))
  else
    _lh_drop_lz_arg2_5);;
let rec mappend_d0_d0_d0_d0 xs_1_4_5 ys_2_7_5 =
  (xs_1_4_5 ys_2_7_5);;
let rec mappend_d0_d0_d0_d1 xs_1_4_6 ys_2_7_6 =
  (xs_1_4_6 ys_2_7_6);;
let rec mappend_d0_d1_d0_d0 xs_1_5_9 ys_3_1_8 =
  (xs_1_5_9 ys_3_1_8);;
let rec mappend_d0_d1_d0_d1 xs_1_7_3 ys_3_4_3 =
  (xs_1_7_3 ys_3_4_3);;
let rec mappend_d0_d1_d3_d0 xs_1_2_1 ys_2_4_3 =
  (xs_1_2_1 ys_2_4_3);;
let rec mappend_d0_d1_d3_d1 xs_1_4_1 ys_2_6_9 =
  (xs_1_4_1 ys_2_6_9);;
let rec mappend_d1_d0_d0_d0 xs_9_9 ys_2_0_2 =
  (xs_9_9 ys_2_0_2);;
let rec mappend_d1_d0_d1_d0 xs_1_7_4 ys_3_4_4 =
  (xs_1_7_4 ys_3_4_4);;
let rec mappend_d1_d1_d0_d0 xs_1_1_1 ys_2_2_5 =
  (xs_1_1_1 ys_2_2_5);;
let rec mappend_d1_d1_d2_d0 xs_1_3_2 ys_2_5_6 =
  (xs_1_3_2 ys_2_5_6);;
let rec mappend_d1_d1_d3_d0 xs_1_6_9 ys_3_3_9 =
  (xs_1_6_9 ys_3_3_9);;
let rec mappend_d2_d0_d0_d0 xs_1_1_9 ys_2_4_1 =
  (xs_1_1_9 ys_2_4_1);;
let rec mappend_d2_d0_d1_d0 xs_1_3_7 ys_2_6_3 =
  (xs_1_3_7 ys_2_6_3);;
let rec mappend_d2_d0_d1_d0_d0 xs_1_0_0 ys_2_0_3 =
  (xs_1_0_0 ys_2_0_3);;
let rec mappend_d2_d0_d1_d1_d0 xs_1_1_2 ys_2_2_6 =
  (xs_1_1_2 ys_2_2_6);;
let rec mappend_d2_d0_d1_d2_d0 xs_9_3 ys_1_9_1 =
  (xs_9_3 ys_1_9_1);;
let rec mappend_d2_d0_d2_d0 xs_1_4_2 ys_2_7_0 =
  (xs_1_4_2 ys_2_7_0);;
let rec mappend_d2_d0_d3_d0 xs_1_5_1 ys_2_8_4 =
  (xs_1_5_1 ys_2_8_4);;
let rec mappend_d2_d0_d4_d0 xs_1_4_8 ys_2_7_8 =
  (xs_1_4_8 ys_2_7_8);;
let rec mappend_d2_d0_d5_d0 xs_1_0_8 ys_2_2_1 =
  (xs_1_0_8 ys_2_2_1);;
let rec mappend_d2_d0_d6_d0 xs_1_3_6 ys_2_6_2 =
  (xs_1_3_6 ys_2_6_2);;
let rec mappend_d2_d0_d7_d0 xs_1_4_7 ys_2_7_7 =
  (xs_1_4_7 ys_2_7_7);;
let rec mappend_d2_d0_d8_d0 xs_9_4 ys_1_9_2 =
  (xs_9_4 ys_1_9_2);;
let rec mappend_d2_d0_d9_d0 xs_1_2_0 ys_2_4_2 =
  (xs_1_2_0 ys_2_4_2);;
let rec mappend_d2_d1_d0_d0 xs_1_0_6 ys_2_1_0 =
  (xs_1_0_6 ys_2_1_0);;
let rec mappend_d2_d1_d1_d0 xs_1_7_2 ys_3_4_2 =
  (xs_1_7_2 ys_3_4_2);;
let rec mappend_d2_d1_d1_d0_d0 xs_1_5_5 ys_3_1_1 =
  (xs_1_5_5 ys_3_1_1);;
let rec mappend_d2_d1_d1_d3_d0 xs_1_0_5 ys_2_0_9 =
  (xs_1_0_5 ys_2_0_9);;
let rec mappend_d2_d1_d1_d4_d0 xs_1_7_7 ys_3_4_7 =
  (xs_1_7_7 ys_3_4_7);;
let rec mappend_d2_d1_d1_d5_d0 xs_9_8 ys_2_0_1 =
  (xs_9_8 ys_2_0_1);;
let rec mappend_d2_d1_d1_d6_d0 xs_1_2_9 ys_2_5_1 =
  (xs_1_2_9 ys_2_5_1);;
let rec mappend_d2_d1_d1_d7_d0 xs_1_2_4 ys_2_4_6 =
  (xs_1_2_4 ys_2_4_6);;
let rec mappend_d2_d1_d1_d8_d0 xs_1_0_7 ys_2_1_1 =
  (xs_1_0_7 ys_2_1_1);;
let rec mappend_d2_d1_d1_d9_d0 xs_1_5_4 ys_2_9_9 =
  (xs_1_5_4 ys_2_9_9);;
let rec mappend_d2_d1_d2_d0 xs_1_2_6 ys_2_4_8 =
  (xs_1_2_6 ys_2_4_8);;
let rec mappend_d2_d1_d2_d0_d0 xs_1_0_1 ys_2_0_4 =
  (xs_1_0_1 ys_2_0_4);;
let rec mappend_d2_d1_d2_d1_d0 xs_1_5_3 ys_2_9_8 =
  (xs_1_5_3 ys_2_9_8);;
let rec mappend_d2_d1_d2_d2_d0 xs_1_2_3 ys_2_4_5 =
  (xs_1_2_3 ys_2_4_5);;
let rec mappend_d2_d1_d2_d3_d0 xs_1_5_2 ys_2_9_7 =
  (xs_1_5_2 ys_2_9_7);;
let rec mappend_d2_d1_d2_d4_d0 xs_1_7_8 ys_3_4_8 =
  (xs_1_7_8 ys_3_4_8);;
let rec mappend_d2_d1_d2_d5_d0 xs_1_7_6 ys_3_4_6 =
  (xs_1_7_6 ys_3_4_6);;
let rec mappend_d2_d1_d3_d0 xs_1_5_7 ys_3_1_3 =
  (xs_1_5_7 ys_3_1_3);;
let rec mappend_d2_d1_d4_d0 xs_1_3_3 ys_2_5_8 =
  (xs_1_3_3 ys_2_5_8);;
let rec mappend_d2_d1_d5_d0 xs_1_6_7 ys_3_3_7 =
  (xs_1_6_7 ys_3_3_7);;
let rec mappend_d2_d1_d6_d0 xs_1_4_3 ys_2_7_1 =
  (xs_1_4_3 ys_2_7_1);;
let rec mappend_d2_d1_d7_d0 xs_1_7_1 ys_3_4_1 =
  (xs_1_7_1 ys_3_4_1);;
let rec mappend_d2_d1_d8_d0 xs_1_1_3 ys_2_2_7 =
  (xs_1_1_3 ys_2_2_7);;
let rec mappend_d2_d1_d9_d0 xs_1_8_0 ys_3_5_0 =
  (xs_1_8_0 ys_3_5_0);;
let rec mappend_d3_d0_d0_d0 xs_1_7_9 ys_3_4_9 =
  (xs_1_7_9 ys_3_4_9);;
let rec mappend_d3_d0_d1_d0 xs_1_2_5 ys_2_4_7 =
  (xs_1_2_5 ys_2_4_7);;
let rec mappend_d3_d0_d2_d0 xs_1_1_0 ys_2_2_4 =
  (xs_1_1_0 ys_2_2_4);;
let rec mappend_d3_d0_d3_d0 xs_1_5_6 ys_3_1_2 =
  (xs_1_5_6 ys_3_1_2);;
let rec mappend_d3_d0_d4_d0 xs_9_6 ys_1_9_4 =
  (xs_9_6 ys_1_9_4);;
let rec mappend_d3_d1_d0_d0 xs_1_1_4 ys_2_3_5 =
  (xs_1_1_4 ys_2_3_5);;
let rec mappend_d3_d1_d1_d0 xs_1_3_1 ys_2_5_5 =
  (xs_1_3_1 ys_2_5_5);;
let rec mappend_d3_d1_d2_d0 xs_1_0_4 ys_2_0_8 =
  (xs_1_0_4 ys_2_0_8);;
let rec mappend_d3_d1_d5_d0 xs_1_8_1 ys_3_5_1 =
  (xs_1_8_1 ys_3_5_1);;
let rec mappend_d3_d1_d6_d0 xs_1_2_8 ys_2_5_0 =
  (xs_1_2_8 ys_2_5_0);;
let rec mappend_d3_d1_d7_d0 xs_1_6_8 ys_3_3_8 =
  (xs_1_6_8 ys_3_3_8);;
let rec mappend_d3_d1_d8_d0 xs_1_7_0 ys_3_4_0 =
  (xs_1_7_0 ys_3_4_0);;
let rec mappend_d3_d1_d9_d0 xs_1_2_2 ys_2_4_4 =
  (xs_1_2_2 ys_2_4_4);;
let rec mappend_d4_d0_d0_d0 xs_1_6_0 ys_3_1_9 =
  (xs_1_6_0 ys_3_1_9);;
let rec mappend_d4_d0_d1_d0 xs_1_6_2 ys_3_2_2 =
  (xs_1_6_2 ys_3_2_2);;
let rec mappend_d4_d0_d2_d0 xs_1_3_9 ys_2_6_5 =
  (xs_1_3_9 ys_2_6_5);;
let rec mappend_d4_d0_d3_d0 xs_1_7_5 ys_3_4_5 =
  (xs_1_7_5 ys_3_4_5);;
let rec mappend_d4_d0_d4_d0 xs_1_0_3 ys_2_0_6 =
  (xs_1_0_3 ys_2_0_6);;
let rec mappend_d4_d0_d5_d0 xs_9_5 ys_1_9_3 =
  (xs_9_5 ys_1_9_3);;
let rec mappend_d4_d1_d0_d0 xs_1_3_4 ys_2_5_9 =
  (xs_1_3_4 ys_2_5_9);;
let rec mappend_d4_d1_d1_d0 xs_9_7 ys_1_9_5 =
  (xs_9_7 ys_1_9_5);;
let rec mappend_d4_d1_d1_d0_d0 xs_1_3_8 ys_2_6_4 =
  (xs_1_3_8 ys_2_6_4);;
let rec mappend_d4_d1_d1_d1_d0 xs_1_6_5 ys_3_2_8 =
  (xs_1_6_5 ys_3_2_8);;
let rec mappend_d4_d1_d2_d0 xs_1_2_7 ys_2_4_9 =
  (xs_1_2_7 ys_2_4_9);;
let rec mappend_d4_d1_d3_d0 xs_1_6_6 ys_3_2_9 =
  (xs_1_6_6 ys_3_2_9);;
let rec mappend_d4_d1_d4_d0 xs_1_1_7 ys_2_3_9 =
  (xs_1_1_7 ys_2_3_9);;
let rec mappend_d4_d1_d5_d0 xs_1_0_2 ys_2_0_5 =
  (xs_1_0_2 ys_2_0_5);;
let rec mappend_d4_d1_d6_d0 xs_1_4_9 ys_2_7_9 =
  (xs_1_4_9 ys_2_7_9);;
let rec mappend_d4_d1_d7_d0 xs_1_6_4 ys_3_2_7 =
  (xs_1_6_4 ys_3_2_7);;
let rec mappend_d4_d1_d8_d0 xs_1_1_5 ys_2_3_6 =
  (xs_1_1_5 ys_2_3_6);;
let rec mappend_d4_d1_d9_d0 xs_1_1_8 ys_2_4_0 =
  (xs_1_1_8 ys_2_4_0);;
let rec min_d0_d0_d0_d0 _lh_min_arg1_5 _lh_min_arg2_5 =
  (if (_lh_min_arg1_5 > _lh_min_arg2_5) then
    _lh_min_arg2_5
  else
    _lh_min_arg1_5);;
let rec min_d0_d1_d0_d0 _lh_min_arg1_4 _lh_min_arg2_4 =
  (if (_lh_min_arg1_4 > _lh_min_arg2_4) then
    _lh_min_arg2_4
  else
    _lh_min_arg1_4);;
let rec min_d0_d1_d1_d0 _lh_min_arg1_3 _lh_min_arg2_3 =
  (if (_lh_min_arg1_3 > _lh_min_arg2_3) then
    _lh_min_arg2_3
  else
    _lh_min_arg1_3);;
let rec take_lz_d0_d0_d0_d0 n_6 ls_6 =
  (if (n_6 > 0) then
    (match (Lazy.force ls_6) with
      | `LH_C(h_9_2, t_9_2) -> 
        (Obj.magic 99)
      | `LH_N -> 
        (fun _lh_dummy_1_5 ys_1_9_6 -> 
          ys_1_9_6))
  else
    (fun _lh_dummy_1_6 ys_1_9_7 -> 
      ys_1_9_7));;
let rec take_lz_d1_d0_d0_d0 n_9 ls_9 =
  (if (n_9 > 0) then
    (match (Lazy.force ls_9) with
      | `LH_C(h_9_8, t_9_8) -> 
        (Obj.magic 99)
      | `LH_N -> 
        (fun ys_2_1_2 -> 
          ys_2_1_2))
  else
    (fun ys_2_1_3 -> 
      ys_2_1_3));;
let rec divmod_d0_d0_d0_d0 _lh_divmod_arg1_1 _lh_divmod_arg2_1 _lh_hashOp_LH_P3_0_5 _lh_hashOp_LH_P3_1_5 _lh_hashOp_LH_P3_2_5 k_1_5 =
  (let rec _lh_hashOp_LH_P2_0_1 = (_lh_divmod_arg1_1 / _lh_divmod_arg2_1) in
    (let rec _lh_hashOp_LH_P2_1_1 = (_lh_divmod_arg1_1 mod _lh_divmod_arg2_1) in
      (if ((_lh_hashOp_LH_P3_0_5 > _lh_hashOp_LH_P3_1_5) || ((_lh_hashOp_LH_P2_1_1 + _lh_hashOp_LH_P3_0_5) >= _lh_hashOp_LH_P3_2_5)) then
        (Lazy.force ((hashOp_d0_d0_d0_d0 k_1_5) (let rec _lh_ampOp_LH_P3_0_4 = _lh_hashOp_LH_P3_0_5 in
          (let rec _lh_ampOp_LH_P3_1_4 = _lh_hashOp_LH_P3_1_5 in
            (let rec _lh_ampOp_LH_P3_2_4 = _lh_hashOp_LH_P3_2_5 in
              (fun _lh_ampOp_arg1_8 -> 
                (let rec y_4 = ((_lh_ampOp_arg1_8 * 2) + 1) in
                  (let rec _lh_hashOp_LH_P3_0_6 = (_lh_ampOp_LH_P3_0_4 * _lh_ampOp_arg1_8) in
                    (let rec _lh_hashOp_LH_P3_1_6 = ((_lh_ampOp_LH_P3_1_4 + (_lh_ampOp_LH_P3_0_4 * 2)) * y_4) in
                      (let rec _lh_hashOp_LH_P3_2_6 = (_lh_ampOp_LH_P3_2_4 * y_4) in
                        (fun k_1_6 -> 
                          (let rec _lh_matchIdent_2_0 = ((divmod_d0_d0_d0_d0 ((_lh_hashOp_LH_P3_0_6 * 3) + _lh_hashOp_LH_P3_1_6)) _lh_hashOp_LH_P3_2_6) in
                            ((((_lh_matchIdent_2_0 _lh_hashOp_LH_P3_0_6) _lh_hashOp_LH_P3_1_6) _lh_hashOp_LH_P3_2_6) k_1_6)))))))))))))
      else
        (`LH_C((string_of_int _lh_hashOp_LH_P2_0_1), ((hashOp_d0_d0_d0_d1 k_1_5) (let rec _lh_ampOp_LH_P3_0_5 = (_lh_hashOp_LH_P3_0_5 * 10) in
          (let rec _lh_ampOp_LH_P3_1_5 = ((_lh_hashOp_LH_P3_1_5 - (_lh_hashOp_LH_P2_0_1 * _lh_hashOp_LH_P3_2_5)) * 10) in
            (let rec _lh_ampOp_LH_P3_2_5 = _lh_hashOp_LH_P3_2_5 in
              (fun _lh_ampOp_arg1_9 -> 
                (let rec y_5 = ((_lh_ampOp_arg1_9 * 2) + 1) in
                  (let rec _lh_hashOp_LH_P3_0_7 = (_lh_ampOp_LH_P3_0_5 * _lh_ampOp_arg1_9) in
                    (let rec _lh_hashOp_LH_P3_1_7 = ((_lh_ampOp_LH_P3_1_5 + (_lh_ampOp_LH_P3_0_5 * 2)) * y_5) in
                      (let rec _lh_hashOp_LH_P3_2_7 = (_lh_ampOp_LH_P3_2_5 * y_5) in
                        (fun k_1_7 -> 
                          (let rec _lh_matchIdent_2_1 = ((divmod_d0_d0_d0_d0 ((_lh_hashOp_LH_P3_0_7 * 3) + _lh_hashOp_LH_P3_1_7)) _lh_hashOp_LH_P3_2_7) in
                            ((((_lh_matchIdent_2_1 _lh_hashOp_LH_P3_0_7) _lh_hashOp_LH_P3_1_7) _lh_hashOp_LH_P3_2_7) k_1_7)))))))))))))))))
and hashOp_d0_d0_d0_d0 _lh_hashOp_arg1_2 _lh_hashOp_arg2_2 =
  (lazy (let rec k_1_1 = (_lh_hashOp_arg1_2 + 1) in
    (let rec _lh_matchIdent_1_4 = ((ampOp_d0_d0_d0_d0 k_1_1) _lh_hashOp_arg2_2) in
      (_lh_matchIdent_1_4 k_1_1))))
and hashOp_d0_d0_d0_d1 _lh_hashOp_arg1_1 _lh_hashOp_arg2_1 =
  (lazy (let rec k_9 = (_lh_hashOp_arg1_1 + 1) in
    (let rec _lh_matchIdent_1_1 = ((ampOp_d0_d0_d0_d1 k_9) _lh_hashOp_arg2_1) in
      (_lh_matchIdent_1_1 k_9))))
and hashOp_d0_d0_d0_d2 _lh_hashOp_arg1_3 _lh_hashOp_arg2_3 =
  (lazy (let rec k_1_2 = (_lh_hashOp_arg1_3 + 1) in
    (let rec _lh_matchIdent_1_5 = ((ampOp_d0_d0_d0_d2 k_1_2) _lh_hashOp_arg2_3) in
      (_lh_matchIdent_1_5 k_1_2))))
and mappend_d0_d0_d1_d0 xs_1_4_0 ys_2_6_6 =
  (match xs_1_4_0 with
    | `LH_C(h_1_1_9, t_1_1_9) -> 
      (let rec h_1_2_0 = h_1_1_9 in
        (let rec t_1_2_0 = ((mappend_d0_d0_d1_d0 t_1_1_9) ys_2_6_6) in
          (fun ys_2_6_7 -> 
            (let rec h_1_2_1 = h_1_2_0 in
              (let rec t_1_2_1 = ((mappend_d3_d0_d3_d0 t_1_2_0) ys_2_6_7) in
                (fun ys_2_6_8 -> 
                  (`LH_C(h_1_2_1, ((mappend_d2_d0_d1_d1_d0 t_1_2_1) ys_2_6_8)))))))))
    | `LH_N -> 
      ys_2_6_6)
and mappend_d0_d0_d2_d0 xs_1_3_0 ys_2_5_2 =
  (match xs_1_3_0 with
    | `LH_C(h_1_1_3, t_1_1_3) -> 
      (let rec h_1_1_4 = h_1_1_3 in
        (let rec t_1_1_4 = ((mappend_d0_d0_d2_d0 t_1_1_3) ys_2_5_2) in
          (fun ys_2_5_3 -> 
            (let rec h_1_1_5 = h_1_1_4 in
              (let rec t_1_1_5 = ((mappend_d3_d0_d4_d0 t_1_1_4) ys_2_5_3) in
                (fun ys_2_5_4 -> 
                  (`LH_C(h_1_1_5, ((mappend_d2_d0_d1_d2_d0 t_1_1_5) ys_2_5_4)))))))))
    | `LH_N -> 
      ys_2_5_2)
and mappend_d0_d1_d4_d0 xs_1_6_3 ys_3_2_4 =
  (match xs_1_6_3 with
    | `LH_C(h_1_5_4, t_1_5_4) -> 
      (let rec h_1_5_5 = h_1_5_4 in
        (let rec t_1_5_5 = ((mappend_d0_d1_d4_d0 t_1_5_4) ys_3_2_4) in
          (fun ys_3_2_5 -> 
            (let rec h_1_5_6 = h_1_5_5 in
              (let rec t_1_5_6 = ((mappend_d3_d1_d8_d0 t_1_5_5) ys_3_2_5) in
                (fun ys_3_2_6 -> 
                  (`LH_C(h_1_5_6, ((mappend_d2_d1_d2_d4_d0 t_1_5_6) ys_3_2_6)))))))))
    | `LH_N -> 
      ys_3_2_4)
and mappend_d0_d1_d5_d0 xs_1_4_4 ys_2_7_2 =
  (match xs_1_4_4 with
    | `LH_C(h_1_2_2, t_1_2_2) -> 
      (let rec h_1_2_3 = h_1_2_2 in
        (let rec t_1_2_3 = ((mappend_d0_d1_d5_d0 t_1_2_2) ys_2_7_2) in
          (fun ys_2_7_3 -> 
            (let rec h_1_2_4 = h_1_2_3 in
              (let rec t_1_2_4 = ((mappend_d3_d1_d9_d0 t_1_2_3) ys_2_7_3) in
                (fun ys_2_7_4 -> 
                  (`LH_C(h_1_2_4, ((mappend_d2_d1_d2_d5_d0 t_1_2_4) ys_2_7_4)))))))))
    | `LH_N -> 
      ys_2_7_2)
and mappend_d5_d0_d0_d0 xs_1_0_9 ys_2_2_2 =
  (match xs_1_0_9 with
    | `LH_C(h_1_0_4, t_1_0_4) -> 
      (let rec h_1_0_5 = h_1_0_4 in
        (let rec t_1_0_5 = ((mappend_d5_d0_d0_d0 t_1_0_4) ys_2_2_2) in
          (fun ys_2_2_3 -> 
            (`LH_C(h_1_0_5, ((mappend_d2_d0_d4_d0 t_1_0_5) ys_2_2_3))))))
    | `LH_N -> 
      ys_2_2_2)
and mappend_d5_d0_d1_d0 xs_1_5_8 ys_3_1_4 =
  (match xs_1_5_8 with
    | `LH_C(h_1_4_7, t_1_4_7) -> 
      (let rec h_1_4_8 = h_1_4_7 in
        (let rec t_1_4_8 = ((mappend_d5_d0_d1_d0 t_1_4_7) ys_3_1_4) in
          (fun ys_3_1_5 -> 
            (`LH_C(h_1_4_8, ((mappend_d2_d0_d1_d0_d0 t_1_4_8) ys_3_1_5))))))
    | `LH_N -> 
      ys_3_1_4)
and mappend_d5_d1_d0_d0 xs_1_6_1 ys_3_2_0 =
  (match xs_1_6_1 with
    | `LH_C(h_1_5_1, t_1_5_1) -> 
      (let rec h_1_5_2 = h_1_5_1 in
        (let rec t_1_5_2 = ((mappend_d5_d1_d0_d0 t_1_5_1) ys_3_2_0) in
          (fun ys_3_2_1 -> 
            (`LH_C(h_1_5_2, ((mappend_d2_d1_d4_d0 t_1_5_2) ys_3_2_1))))))
    | `LH_N -> 
      ys_3_2_0)
and mappend_d5_d1_d1_d0 xs_1_1_6 ys_2_3_7 =
  (match xs_1_1_6 with
    | `LH_C(h_1_1_1, t_1_1_1) -> 
      (let rec h_1_1_2 = h_1_1_1 in
        (let rec t_1_1_2 = ((mappend_d5_d1_d1_d0 t_1_1_1) ys_2_3_7) in
          (fun ys_2_3_8 -> 
            (`LH_C(h_1_1_2, ((mappend_d2_d1_d1_d0_d0 t_1_1_2) ys_2_3_8))))))
    | `LH_N -> 
      ys_2_3_7)
and mappend_d5_d1_d2_d0 xs_1_3_5 ys_2_6_0 =
  (match xs_1_3_5 with
    | `LH_C(h_1_1_7, t_1_1_7) -> 
      (let rec h_1_1_8 = h_1_1_7 in
        (let rec t_1_1_8 = ((mappend_d5_d1_d2_d0 t_1_1_7) ys_2_6_0) in
          (fun ys_2_6_1 -> 
            (`LH_C(h_1_1_8, ((mappend_d2_d1_d1_d7_d0 t_1_1_8) ys_2_6_1))))))
    | `LH_N -> 
      ys_2_6_0)
and mappend_d5_d1_d3_d0 xs_1_5_0 ys_2_8_2 =
  (match xs_1_5_0 with
    | `LH_C(h_1_2_8, t_1_2_8) -> 
      (let rec h_1_2_9 = h_1_2_8 in
        (let rec t_1_2_9 = ((mappend_d5_d1_d3_d0 t_1_2_8) ys_2_8_2) in
          (fun ys_2_8_3 -> 
            (`LH_C(h_1_2_9, ((mappend_d2_d1_d2_d3_d0 t_1_2_9) ys_2_8_3))))))
    | `LH_N -> 
      ys_2_8_2)
and percOp_d0_d0_d0_d0 _lh_percOp_arg1_5 _lh_percOp_arg2_5 _lh_percOp_arg3_1_5 =
  (if (_lh_percOp_arg1_5 >= _lh_percOp_arg3_1_5) then
    (`LH_N)
  else
    (let rec k_1_4 = (_lh_percOp_arg1_5 + 10) in
      (let rec j_1_5 = ((min_d0_d0_d0_d0 _lh_percOp_arg3_1_5) k_1_4) in
        (let rec _lh_matchIdent_1_8 = (if (k_1_4 > _lh_percOp_arg3_1_5) then
          (let rec _lh_percOp_LH_P2_0_1_0 = ((mappend_d1_d0_d0_d0 ((take_lz_d1_d1_d0_d0 (_lh_percOp_arg3_1_5 mod 10)) _lh_percOp_arg2_5)) ((replicate_d0_d1_d0_d0 (k_1_4 - _lh_percOp_arg3_1_5)) (let rec h_1_3_9 = ' ' in
            (let rec t_1_3_9 = (fun ys_3_0_0 -> 
              ys_3_0_0) in
              (fun ys_3_0_1 -> 
                (let rec h_1_4_0 = h_1_3_9 in
                  (let rec t_1_4_0 = ((mappend_d0_d0_d0_d0 t_1_3_9) ys_3_0_1) in
                    (fun ys_3_0_2 -> 
                      (let rec h_1_4_1 = h_1_4_0 in
                        (let rec t_1_4_1 = ((mappend_d3_d0_d1_d0 t_1_4_0) ys_3_0_2) in
                          (fun ys_3_0_3 -> 
                            (`LH_C(h_1_4_1, ((mappend_d2_d0_d5_d0 t_1_4_1) ys_3_0_3)))))))))))))) in
            (let rec _lh_percOp_LH_P2_1_1_0 = (lazy (`LH_N)) in
              (fun _lh_percOp_arg3_1_6 j_1_6 -> 
                ((mappend_d2_d0_d0_d0 ((mappend_d3_d0_d0_d0 (concat_d0_d0_d0_d0 _lh_percOp_LH_P2_0_1_0)) ((mappend_d4_d0_d0_d0 (let rec h_1_4_2 = 't' in
                  (let rec t_1_4_2 = (let rec h_1_4_3 = ':' in
                    (let rec t_1_4_3 = (fun ys_3_0_4 -> 
                      ys_3_0_4) in
                      (fun ys_3_0_5 -> 
                        (let rec h_1_4_4 = h_1_4_3 in
                          (let rec t_1_4_4 = ((mappend_d4_d0_d1_d0 t_1_4_3) ys_3_0_5) in
                            (fun ys_3_0_6 -> 
                              (`LH_C(h_1_4_4, ((mappend_d2_d0_d1_d0 t_1_4_4) ys_3_0_6))))))))) in
                    (fun ys_3_0_7 -> 
                      (let rec h_1_4_5 = h_1_4_2 in
                        (let rec t_1_4_5 = ((mappend_d4_d0_d2_d0 t_1_4_2) ys_3_0_7) in
                          (fun ys_3_0_8 -> 
                            (`LH_C(h_1_4_5, ((mappend_d2_d0_d2_d0 t_1_4_5) ys_3_0_8)))))))))) ((mappend_d5_d0_d0_d0 (string_of_int j_1_6)) (let rec h_1_4_6 = 'n' in
                  (let rec t_1_4_6 = (fun ys_3_0_9 -> 
                    ys_3_0_9) in
                    (fun ys_3_1_0 -> 
                      (`LH_C(h_1_4_6, ((mappend_d2_d0_d3_d0 t_1_4_6) ys_3_1_0)))))))))) (((percOp_d0_d1_d0_d0 j_1_6) _lh_percOp_LH_P2_1_1_0) _lh_percOp_arg3_1_6)))))
        else
          ((splitAt_lz_d0_d1_d0_d0 10) _lh_percOp_arg2_5)) in
          ((_lh_matchIdent_1_8 _lh_percOp_arg3_1_5) j_1_5)))))
and percOp_d0_d1_d0_d0 _lh_percOp_arg1_4 _lh_percOp_arg2_4 _lh_percOp_arg3_1_3 =
  (if (_lh_percOp_arg1_4 >= _lh_percOp_arg3_1_3) then
    (`LH_N)
  else
    (let rec k_1_3 = (_lh_percOp_arg1_4 + 10) in
      (let rec j_1_3 = ((min_d0_d1_d0_d0 _lh_percOp_arg3_1_3) k_1_3) in
        (let rec _lh_matchIdent_1_7 = (if (k_1_3 > _lh_percOp_arg3_1_3) then
          (let rec _lh_percOp_LH_P2_0_9 = ((mappend_d1_d1_d0_d0 ((take_lz_d1_d0_d0_d0 (_lh_percOp_arg3_1_3 mod 10)) _lh_percOp_arg2_4)) ((replicate_d0_d0_d0_d0 (k_1_3 - _lh_percOp_arg3_1_3)) (let rec h_1_3_0 = ' ' in
            (let rec t_1_3_0 = (fun ys_2_8_5 -> 
              ys_2_8_5) in
              (fun ys_2_8_6 -> 
                (let rec h_1_3_1 = h_1_3_0 in
                  (let rec t_1_3_1 = ((mappend_d0_d1_d0_d0 t_1_3_0) ys_2_8_6) in
                    (fun ys_2_8_7 -> 
                      (let rec h_1_3_2 = h_1_3_1 in
                        (let rec t_1_3_2 = ((mappend_d3_d1_d1_d0 t_1_3_1) ys_2_8_7) in
                          (fun ys_2_8_8 -> 
                            (`LH_C(h_1_3_2, ((mappend_d2_d1_d5_d0 t_1_3_2) ys_2_8_8)))))))))))))) in
            (let rec _lh_percOp_LH_P2_1_9 = (lazy (`LH_N)) in
              (fun _lh_percOp_arg3_1_4 j_1_4 -> 
                ((mappend_d2_d1_d1_d0 ((mappend_d3_d1_d0_d0 (concat_d0_d1_d0_d0 _lh_percOp_LH_P2_0_9)) ((mappend_d4_d1_d0_d0 (let rec h_1_3_3 = 't' in
                  (let rec t_1_3_3 = (let rec h_1_3_4 = ':' in
                    (let rec t_1_3_4 = (fun ys_2_8_9 -> 
                      ys_2_8_9) in
                      (fun ys_2_9_0 -> 
                        (let rec h_1_3_5 = h_1_3_4 in
                          (let rec t_1_3_5 = ((mappend_d4_d1_d1_d0 t_1_3_4) ys_2_9_0) in
                            (fun ys_2_9_1 -> 
                              (`LH_C(h_1_3_5, ((mappend_d2_d1_d2_d0 t_1_3_5) ys_2_9_1))))))))) in
                    (fun ys_2_9_2 -> 
                      (let rec h_1_3_6 = h_1_3_3 in
                        (let rec t_1_3_6 = ((mappend_d4_d1_d2_d0 t_1_3_3) ys_2_9_2) in
                          (fun ys_2_9_3 -> 
                            (`LH_C(h_1_3_6, ((mappend_d2_d1_d3_d0 t_1_3_6) ys_2_9_3)))))))))) ((mappend_d5_d1_d0_d0 (string_of_int j_1_4)) (let rec h_1_3_7 = 'n' in
                  (let rec t_1_3_7 = (fun ys_2_9_4 -> 
                    ys_2_9_4) in
                    (fun ys_2_9_5 -> 
                      (`LH_C(h_1_3_7, ((mappend_d2_d1_d0_d0 t_1_3_7) ys_2_9_5)))))))))) (((percOp_d0_d1_d0_d0 j_1_4) _lh_percOp_LH_P2_1_9) _lh_percOp_arg3_1_4)))))
        else
          ((splitAt_lz_d0_d0_d0_d0 10) _lh_percOp_arg2_4)) in
          ((_lh_matchIdent_1_7 _lh_percOp_arg3_1_3) j_1_3)))))
and percOp_d0_d1_d1_d0 _lh_percOp_arg1_3 _lh_percOp_arg2_3 _lh_percOp_arg3_9 =
  (if (_lh_percOp_arg1_3 >= _lh_percOp_arg3_9) then
    (`LH_N)
  else
    (let rec k_8 = (_lh_percOp_arg1_3 + 10) in
      (let rec j_9 = ((min_d0_d1_d1_d0 _lh_percOp_arg3_9) k_8) in
        (let rec _lh_matchIdent_1_0 = (if (k_8 > _lh_percOp_arg3_9) then
          (let rec _lh_percOp_LH_P2_0_6 = ((mappend_d1_d1_d2_d0 ((take_lz_d1_d0_d1_d0 (_lh_percOp_arg3_9 mod 10)) _lh_percOp_arg2_3)) ((replicate_d0_d0_d1_d0 (k_8 - _lh_percOp_arg3_9)) (let rec h_8_4 = ' ' in
            (let rec t_8_4 = (fun ys_1_8_0 -> 
              ys_1_8_0) in
              (fun ys_1_8_1 -> 
                (let rec h_8_5 = h_8_4 in
                  (let rec t_8_5 = ((mappend_d0_d1_d3_d0 t_8_4) ys_1_8_1) in
                    (fun ys_1_8_2 -> 
                      (let rec h_8_6 = h_8_5 in
                        (let rec t_8_6 = ((mappend_d3_d1_d6_d0 t_8_5) ys_1_8_2) in
                          (fun ys_1_8_3 -> 
                            (`LH_C(h_8_6, ((mappend_d2_d1_d1_d8_d0 t_8_6) ys_1_8_3)))))))))))))) in
            (let rec _lh_percOp_LH_P2_1_6 = (lazy (`LH_N)) in
              (fun _lh_percOp_arg3_1_0 j_1_0 -> 
                ((mappend_d2_d1_d1_d4_d0 ((mappend_d3_d1_d5_d0 (concat_d0_d1_d5_d0 _lh_percOp_LH_P2_0_6)) ((mappend_d4_d1_d6_d0 (let rec h_8_7 = 't' in
                  (let rec t_8_7 = (let rec h_8_8 = ':' in
                    (let rec t_8_8 = (fun ys_1_8_4 -> 
                      ys_1_8_4) in
                      (fun ys_1_8_5 -> 
                        (let rec h_8_9 = h_8_8 in
                          (let rec t_8_9 = ((mappend_d4_d1_d7_d0 t_8_8) ys_1_8_5) in
                            (fun ys_1_8_6 -> 
                              (`LH_C(h_8_9, ((mappend_d2_d1_d1_d5_d0 t_8_9) ys_1_8_6))))))))) in
                    (fun ys_1_8_7 -> 
                      (let rec h_9_0 = h_8_7 in
                        (let rec t_9_0 = ((mappend_d4_d1_d8_d0 t_8_7) ys_1_8_7) in
                          (fun ys_1_8_8 -> 
                            (`LH_C(h_9_0, ((mappend_d2_d1_d1_d6_d0 t_9_0) ys_1_8_8)))))))))) ((mappend_d5_d1_d2_d0 (string_of_int j_1_0)) (let rec h_9_1 = 'n' in
                  (let rec t_9_1 = (fun ys_1_8_9 -> 
                    ys_1_8_9) in
                    (fun ys_1_9_0 -> 
                      (`LH_C(h_9_1, ((mappend_d2_d1_d1_d3_d0 t_9_1) ys_1_9_0)))))))))) (((percOp_d0_d1_d1_d0 j_1_0) _lh_percOp_LH_P2_1_6) _lh_percOp_arg3_1_0)))))
        else
          ((splitAt_lz_d0_d0_d1_d0 10) _lh_percOp_arg2_3)) in
          ((_lh_matchIdent_1_0 _lh_percOp_arg3_9) j_9)))))
and pidgits_d0_d0_d0_d0 _lh_pidgits_arg1_1 =
  (((percOp_d0_d0_d0_d0 0) ((hashOp_d0_d0_d0_d2 0) (let rec _lh_ampOp_LH_P3_0_3 = 1 in
    (let rec _lh_ampOp_LH_P3_1_3 = 0 in
      (let rec _lh_ampOp_LH_P3_2_3 = 1 in
        (fun _lh_ampOp_arg1_6 -> 
          (let rec y_3 = ((_lh_ampOp_arg1_6 * 2) + 1) in
            (let rec _lh_hashOp_LH_P3_0_4 = (_lh_ampOp_LH_P3_0_3 * _lh_ampOp_arg1_6) in
              (let rec _lh_hashOp_LH_P3_1_4 = ((_lh_ampOp_LH_P3_1_3 + (_lh_ampOp_LH_P3_0_3 * 2)) * y_3) in
                (let rec _lh_hashOp_LH_P3_2_4 = (_lh_ampOp_LH_P3_2_3 * y_3) in
                  (fun k_1_0 -> 
                    (let rec _lh_matchIdent_1_2 = ((divmod_d0_d0_d0_d0 ((_lh_hashOp_LH_P3_0_4 * 3) + _lh_hashOp_LH_P3_1_4)) _lh_hashOp_LH_P3_2_4) in
                      ((((_lh_matchIdent_1_2 _lh_hashOp_LH_P3_0_4) _lh_hashOp_LH_P3_1_4) _lh_hashOp_LH_P3_2_4) k_1_0))))))))))))) _lh_pidgits_arg1_1)
and replicate_d0_d0_d0_d0 _lh_replicate_arg1_4 _lh_replicate_arg2_4 _lh_popOutId_0_1 =
  (if (_lh_replicate_arg1_4 > 0) then
    (let rec h_1_3_8 = _lh_replicate_arg2_4 in
      (let rec t_1_3_8 = ((replicate_d0_d0_d0_d0 (_lh_replicate_arg1_4 - 1)) _lh_replicate_arg2_4) in
        ((mappend_d0_d1_d0_d1 h_1_3_8) (concat_d0_d1_d1_d0 t_1_3_8))))
  else
    (fun ys_2_9_6 -> 
      ys_2_9_6))
and replicate_d0_d0_d1_d0 _lh_replicate_arg1_5 _lh_replicate_arg2_5 _lh_popOutId_0_0 =
  (if (_lh_replicate_arg1_5 > 0) then
    (let rec h_1_5_3 = _lh_replicate_arg2_5 in
      (let rec t_1_5_3 = ((replicate_d0_d0_d1_d0 (_lh_replicate_arg1_5 - 1)) _lh_replicate_arg2_5) in
        ((mappend_d0_d1_d3_d1 h_1_5_3) (concat_d0_d1_d6_d0 t_1_5_3))))
  else
    (fun ys_3_2_3 -> 
      ys_3_2_3))
and replicate_d0_d1_d0_d0 _lh_replicate_arg1_3 _lh_replicate_arg2_3 _lh_popOutId_0_2 =
  (if (_lh_replicate_arg1_3 > 0) then
    (let rec h_1_1_6 = _lh_replicate_arg2_3 in
      (let rec t_1_1_6 = ((replicate_d0_d1_d0_d0 (_lh_replicate_arg1_3 - 1)) _lh_replicate_arg2_3) in
        ((mappend_d0_d0_d0_d1 h_1_1_6) (concat_d0_d0_d1_d0 t_1_1_6))))
  else
    (fun ys_2_5_7 -> 
      ys_2_5_7))
and splitAt_lz_d0_d0_d0_d0 _lh_splitAt_lz_arg1_4 _lh_splitAt_lz_arg2_4 _lh_percOp_arg3_1_2 j_1_2 =
  (let rec _lh_percOp_LH_P2_0_8 = ((take_lz_d0_d0_d0_d0 _lh_splitAt_lz_arg1_4) _lh_splitAt_lz_arg2_4) in
    (let rec _lh_percOp_LH_P2_1_8 = ((drop_lz_d0_d0_d0_d0 _lh_splitAt_lz_arg1_4) _lh_splitAt_lz_arg2_4) in
      ((mappend_d2_d1_d6_d0 ((mappend_d3_d1_d2_d0 (concat_d0_d1_d2_d0 _lh_percOp_LH_P2_0_8)) ((mappend_d4_d1_d3_d0 (let rec h_1_0_6 = 't' in
        (let rec t_1_0_6 = (let rec h_1_0_7 = ':' in
          (let rec t_1_0_7 = (fun ys_2_2_8 -> 
            ys_2_2_8) in
            (fun ys_2_2_9 -> 
              (let rec h_1_0_8 = h_1_0_7 in
                (let rec t_1_0_8 = ((mappend_d4_d1_d4_d0 t_1_0_7) ys_2_2_9) in
                  (fun ys_2_3_0 -> 
                    (`LH_C(h_1_0_8, ((mappend_d2_d1_d7_d0 t_1_0_8) ys_2_3_0))))))))) in
          (fun ys_2_3_1 -> 
            (let rec h_1_0_9 = h_1_0_6 in
              (let rec t_1_0_9 = ((mappend_d4_d1_d5_d0 t_1_0_6) ys_2_3_1) in
                (fun ys_2_3_2 -> 
                  (`LH_C(h_1_0_9, ((mappend_d2_d1_d8_d0 t_1_0_9) ys_2_3_2)))))))))) ((mappend_d5_d1_d1_d0 (string_of_int j_1_2)) (let rec h_1_1_0 = 'n' in
        (let rec t_1_1_0 = (fun ys_2_3_3 -> 
          ys_2_3_3) in
          (fun ys_2_3_4 -> 
            (`LH_C(h_1_1_0, ((mappend_d2_d1_d9_d0 t_1_1_0) ys_2_3_4)))))))))) (((percOp_d0_d1_d0_d0 j_1_2) _lh_percOp_LH_P2_1_8) _lh_percOp_arg3_1_2))))
and splitAt_lz_d0_d0_d1_d0 _lh_splitAt_lz_arg1_5 _lh_splitAt_lz_arg2_5 _lh_percOp_arg3_1_7 j_1_7 =
  (let rec _lh_percOp_LH_P2_0_1_1 = ((take_lz_d0_d0_d1_d0 _lh_splitAt_lz_arg1_5) _lh_splitAt_lz_arg2_5) in
    (let rec _lh_percOp_LH_P2_1_1_1 = ((drop_lz_d0_d0_d1_d0 _lh_splitAt_lz_arg1_5) _lh_splitAt_lz_arg2_5) in
      ((mappend_d2_d1_d1_d9_d0 ((mappend_d3_d1_d7_d0 (concat_d0_d1_d7_d0 _lh_percOp_LH_P2_0_1_1)) ((mappend_d4_d1_d9_d0 (let rec h_1_5_7 = 't' in
        (let rec t_1_5_7 = (let rec h_1_5_8 = ':' in
          (let rec t_1_5_8 = (fun ys_3_3_0 -> 
            ys_3_3_0) in
            (fun ys_3_3_1 -> 
              (let rec h_1_5_9 = h_1_5_8 in
                (let rec t_1_5_9 = ((mappend_d4_d1_d1_d0_d0 t_1_5_8) ys_3_3_1) in
                  (fun ys_3_3_2 -> 
                    (`LH_C(h_1_5_9, ((mappend_d2_d1_d2_d0_d0 t_1_5_9) ys_3_3_2))))))))) in
          (fun ys_3_3_3 -> 
            (let rec h_1_6_0 = h_1_5_7 in
              (let rec t_1_6_0 = ((mappend_d4_d1_d1_d1_d0 t_1_5_7) ys_3_3_3) in
                (fun ys_3_3_4 -> 
                  (`LH_C(h_1_6_0, ((mappend_d2_d1_d2_d1_d0 t_1_6_0) ys_3_3_4)))))))))) ((mappend_d5_d1_d3_d0 (string_of_int j_1_7)) (let rec h_1_6_1 = 'n' in
        (let rec t_1_6_1 = (fun ys_3_3_5 -> 
          ys_3_3_5) in
          (fun ys_3_3_6 -> 
            (`LH_C(h_1_6_1, ((mappend_d2_d1_d2_d2_d0 t_1_6_1) ys_3_3_6)))))))))) (((percOp_d0_d1_d1_d0 j_1_7) _lh_percOp_LH_P2_1_1_1) _lh_percOp_arg3_1_7))))
and splitAt_lz_d0_d1_d0_d0 _lh_splitAt_lz_arg1_3 _lh_splitAt_lz_arg2_3 _lh_percOp_arg3_1_1 j_1_1 =
  (let rec _lh_percOp_LH_P2_0_7 = ((take_lz_d0_d1_d0_d0 _lh_splitAt_lz_arg1_3) _lh_splitAt_lz_arg2_3) in
    (let rec _lh_percOp_LH_P2_1_7 = ((drop_lz_d0_d1_d0_d0 _lh_splitAt_lz_arg1_3) _lh_splitAt_lz_arg2_3) in
      ((mappend_d2_d0_d6_d0 ((mappend_d3_d0_d2_d0 (concat_d0_d0_d2_d0 _lh_percOp_LH_P2_0_7)) ((mappend_d4_d0_d3_d0 (let rec h_9_9 = 't' in
        (let rec t_9_9 = (let rec h_1_0_0 = ':' in
          (let rec t_1_0_0 = (fun ys_2_1_4 -> 
            ys_2_1_4) in
            (fun ys_2_1_5 -> 
              (let rec h_1_0_1 = h_1_0_0 in
                (let rec t_1_0_1 = ((mappend_d4_d0_d4_d0 t_1_0_0) ys_2_1_5) in
                  (fun ys_2_1_6 -> 
                    (`LH_C(h_1_0_1, ((mappend_d2_d0_d7_d0 t_1_0_1) ys_2_1_6))))))))) in
          (fun ys_2_1_7 -> 
            (let rec h_1_0_2 = h_9_9 in
              (let rec t_1_0_2 = ((mappend_d4_d0_d5_d0 t_9_9) ys_2_1_7) in
                (fun ys_2_1_8 -> 
                  (`LH_C(h_1_0_2, ((mappend_d2_d0_d8_d0 t_1_0_2) ys_2_1_8)))))))))) ((mappend_d5_d0_d1_d0 (string_of_int j_1_1)) (let rec h_1_0_3 = 'n' in
        (let rec t_1_0_3 = (fun ys_2_1_9 -> 
          ys_2_1_9) in
          (fun ys_2_2_0 -> 
            (`LH_C(h_1_0_3, ((mappend_d2_d0_d9_d0 t_1_0_3) ys_2_2_0)))))))))) (((percOp_d0_d1_d1_d0 j_1_1) _lh_percOp_LH_P2_1_7) _lh_percOp_arg3_1_1))))
and take_lz_d0_d0_d1_d0 n_1_1 ls_1_1 _lh_popOutId_0_6 =
  (if (n_1_1 > 0) then
    (match (Lazy.force ls_1_1) with
      | `LH_C(h_1_4_9, t_1_4_9) -> 
        (let rec h_1_5_0 = h_1_4_9 in
          (let rec t_1_5_0 = ((take_lz_d0_d0_d1_d0 (n_1_1 - 1)) t_1_4_9) in
            ((mappend_d0_d1_d4_d0 h_1_5_0) (concat_d0_d1_d8_d0 t_1_5_0))))
      | `LH_N -> 
        (fun ys_3_1_6 -> 
          ys_3_1_6))
  else
    (fun ys_3_1_7 -> 
      ys_3_1_7))
and take_lz_d0_d1_d0_d0 n_8 ls_8 =
  (if (n_8 > 0) then
    (match (Lazy.force ls_8) with
      | `LH_C(h_9_6, t_9_6) -> 
        (let rec h_9_7 = h_9_6 in
          (let rec t_9_7 = ((take_lz_d0_d1_d0_d0 (n_8 - 1)) t_9_6) in
            (fun _lh_dummy_1_8 -> 
              ((mappend_d0_d0_d1_d0 h_9_7) (concat_d0_d0_d3_d0 t_9_7)))))
      | `LH_N -> 
        (Obj.magic 99))
  else
    (fun _lh_dummy_1_9 ys_2_0_7 -> 
      ys_2_0_7))
and take_lz_d1_d0_d1_d0 n_7 ls_7 _lh_popOutId_0_4 =
  (if (n_7 > 0) then
    (match (Lazy.force ls_7) with
      | `LH_C(h_9_3, t_9_3) -> 
        (fun _lh_dummy_1_7 -> 
          (let rec h_9_4 = h_9_3 in
            (let rec t_9_4 = ((take_lz_d1_d0_d1_d0 (n_7 - 1)) t_9_3) in
              (let rec h_9_5 = h_9_4 in
                (let rec t_9_5 = ((mappend_d1_d1_d3_d0 t_9_4) _lh_popOutId_0_4) in
                  ((mappend_d0_d1_d5_d0 h_9_5) (concat_d0_d1_d9_d0 t_9_5)))))))
      | `LH_N -> 
        _lh_popOutId_0_4)
  else
    _lh_popOutId_0_4)
and take_lz_d1_d1_d0_d0 n_1_0 ls_1_0 =
  (if (n_1_0 > 0) then
    (match (Lazy.force ls_1_0) with
      | `LH_C(h_1_2_5, t_1_2_5) -> 
        (let rec h_1_2_6 = h_1_2_5 in
          (let rec t_1_2_6 = ((take_lz_d1_d1_d0_d0 (n_1_0 - 1)) t_1_2_5) in
            (fun ys_2_8_0 -> 
              (let rec h_1_2_7 = h_1_2_6 in
                (let rec t_1_2_7 = ((mappend_d1_d0_d1_d0 t_1_2_6) ys_2_8_0) in
                  (fun _lh_dummy_2_2 -> 
                    ((mappend_d0_d0_d2_d0 h_1_2_7) (concat_d0_d0_d4_d0 t_1_2_7))))))))
      | `LH_N -> 
        (Obj.magic 99))
  else
    (fun ys_2_8_1 -> 
      ys_2_8_1))
and testPiDigits_nofib_d0_d0_d0_d0 _lh_testPiDigits_nofib_arg1_1 =
  (pidgits_d0_d0_d0_d0 _lh_testPiDigits_nofib_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_PiDigits_nofib" (fun () -> ignore ((testPiDigits_nofib_d0 5000)));
  Bench.Test.create ~name:"lumberhack_PiDigits_nofib" (fun () -> ignore ((testPiDigits_nofib_d0_d0_d0 5000)));
  Bench.Test.create ~name:"lumberhack_pop_out_PiDigits_nofib" (fun () -> ignore ((testPiDigits_nofib_d0_d0_d0_d0 5000)));
])
