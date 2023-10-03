(*
touch ./Calendar_nofib.mli && ocamlc ./Calendar_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Calendar_nofib.ml -o "./Calendar_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Calendar_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec copy_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy_d1 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (`LH_C(_lh_copy_arg2_5, ((copy_d1 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5)))
  else
    (`LH_N));;
let rec copy_d1_d0 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy_d1_d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec copy_d1_d1 _lh_copy_arg1_1_3 _lh_copy_arg2_1_3 =
  (if (_lh_copy_arg1_1_3 > 0) then
    (`LH_C(_lh_copy_arg2_1_3, ((copy_d1_d1 (_lh_copy_arg1_1_3 - 1)) _lh_copy_arg2_1_3)))
  else
    (`LH_N));;
let rec copy_d1_d2 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (`LH_C(_lh_copy_arg2_1_0, ((copy_d1_d2 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0)))
  else
    (`LH_N));;
let rec copy_d2 _lh_copy_arg1_9 _lh_copy_arg2_9 =
  (if (_lh_copy_arg1_9 > 0) then
    (`LH_C(_lh_copy_arg2_9, ((copy_d2 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9)))
  else
    (`LH_N));;
let rec copy_d3 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_d3 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy_d4 _lh_copy_arg1_1_1 _lh_copy_arg2_1_1 =
  (if (_lh_copy_arg1_1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1_1, ((copy_d4 (_lh_copy_arg1_1_1 - 1)) _lh_copy_arg2_1_1)))
  else
    (`LH_N));;
let rec copy_d5 _lh_copy_arg1_1_2 _lh_copy_arg2_1_2 =
  (if (_lh_copy_arg1_1_2 > 0) then
    (`LH_C(_lh_copy_arg2_1_2, ((copy_d5 (_lh_copy_arg1_1_2 - 1)) _lh_copy_arg2_1_2)))
  else
    (`LH_N));;
let rec copy_d6 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy_d6 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy_d7 _lh_copy_arg1_6 _lh_copy_arg2_6 =
  (if (_lh_copy_arg1_6 > 0) then
    (`LH_C(_lh_copy_arg2_6, ((copy_d7 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6)))
  else
    (`LH_N));;
let rec copy_d8 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (if (_lh_copy_arg1_7 > 0) then
    (`LH_C(_lh_copy_arg2_7, ((copy_d8 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7)))
  else
    (`LH_N));;
let rec copy_d9 _lh_copy_arg1_8 _lh_copy_arg2_8 =
  (if (_lh_copy_arg1_8 > 0) then
    (`LH_C(_lh_copy_arg2_8, ((copy_d9 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8)))
  else
    (`LH_N));;
let rec daynames_d0 =
  (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))), (`LH_N)));;
let rec drop_d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop_d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        _lh_drop_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec drop_d1 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop_d1 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_d0 a_9 b_5 =
  (if (a_9 <= b_5) then
    (`LH_C(a_9, ((enumFromTo_d0 (a_9 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_1_5 b_1_0 =
  (if (a_1_5 <= b_1_0) then
    (`LH_C(a_1_5, ((enumFromTo_d1 (a_1_5 + 1)) b_1_0)))
  else
    (`LH_N));;
let rec foldr_d0 f_2_6 i_6 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_5_6, t_5_7) -> 
      ((f_2_6 h_5_6) (((foldr_d0 f_2_6) i_6) t_5_7))
    | `LH_N -> 
      i_6);;
let rec foldr_d1 f_2_4 i_4 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_1, t_5_2) -> 
      ((f_2_4 h_5_1) (((foldr_d1 f_2_4) i_4) t_5_2))
    | `LH_N -> 
      i_4);;
let rec foldr_d2 f_2_5 i_5 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_5_4, t_5_5) -> 
      ((f_2_5 h_5_4) (((foldr_d2 f_2_5) i_5) t_5_5))
    | `LH_N -> 
      i_5);;
let rec foldr_d3 f_1_3 i_3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_5, t_2_6) -> 
      ((f_1_3 h_2_5) (((foldr_d3 f_1_3) i_3) t_2_6))
    | `LH_N -> 
      i_3);;
let rec jan1st_d0 _lh_jan1st_arg1_1 =
  (let rec last_1 = (_lh_jan1st_arg1_1 - 1) in
    (((((((_lh_jan1st_arg1_1 + last_1) / 4) - last_1) / 100) + last_1) / 400) mod 7));;
let rec leap_d0 _lh_leap_arg1_1 =
  (if ((_lh_leap_arg1_1 mod 100) = 0) then
    ((_lh_leap_arg1_1 mod 400) = 0)
  else
    ((_lh_leap_arg1_1 mod 4) = 0));;
let rec leap_d1 _lh_leap_arg1_2 =
  (if ((_lh_leap_arg1_2 mod 100) = 0) then
    ((_lh_leap_arg1_2 mod 400) = 0)
  else
    ((_lh_leap_arg1_2 mod 4) = 0));;
let rec length_d0 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_7, t_4_8) -> 
      (1 + (length_d0 t_4_8))
    | `LH_N -> 
      0);;
let rec length_d1 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_4, t_3_5) -> 
      (1 + (length_d1 t_3_5))
    | `LH_N -> 
      0);;
let rec length_d2 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_8, t_2_9) -> 
      (1 + (length_d2 t_2_9))
    | `LH_N -> 
      0);;
let rec length_d3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_3, t_3_4) -> 
      (1 + (length_d3 t_3_4))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_3) -> 
      (`LH_C(h_2_2, ((mappend_d0 t_2_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d1 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_7, t_3_8) -> 
      (`LH_C(h_3_7, ((mappend_d1 t_3_8) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_d1_d0 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_2, t_3_3) -> 
      (`LH_C(h_3_2, ((mappend_d1_d0 t_3_3) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_d1_d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_2) -> 
      (`LH_C(h_2_1, ((mappend_d1_d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d1_d2 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_5_7, t_5_8) -> 
      (`LH_C(h_5_7, ((mappend_d1_d2 t_5_8) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend_d1_d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_4, t_2_5) -> 
      (`LH_C(h_2_4, ((mappend_d1_d3 t_2_5) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d1_d4 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_0, t_3_1) -> 
      (`LH_C(h_3_0, ((mappend_d1_d4 t_3_1) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d1_d5 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_4_1, t_4_2) -> 
      (`LH_C(h_4_1, ((mappend_d1_d5 t_4_2) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend_d1_d6 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_6, t_4_7) -> 
      (`LH_C(h_4_6, ((mappend_d1_d6 t_4_7) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend_d1_d7 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_8, t_3_9) -> 
      (`LH_C(h_3_8, ((mappend_d1_d7 t_3_9) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend_d2 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_9, t_4_0) -> 
      (`LH_C(h_3_9, ((mappend_d2 t_4_0) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_d3 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_5_3, t_5_4) -> 
      (`LH_C(h_5_3, ((mappend_d3 t_5_4) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend_d4 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_5, t_4_6) -> 
      (`LH_C(h_4_5, ((mappend_d4 t_4_6) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend_d5 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_6, t_3_7) -> 
      (`LH_C(h_3_6, ((mappend_d5 t_3_7) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend_d6 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_1, t_3_2) -> 
      (`LH_C(h_3_1, ((mappend_d6 t_3_2) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_d7 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_4) -> 
      (`LH_C(h_2_3, ((mappend_d7 t_2_4) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_d8 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_5_0, t_5_1) -> 
      (`LH_C(h_5_0, ((mappend_d8 t_5_1) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend_d9 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_5_5, t_5_6) -> 
      (`LH_C(h_5_5, ((mappend_d9 t_5_6) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec map_d0 f_1_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_4_0, t_4_1) -> 
      (`LH_C((f_1_6 h_4_0), ((map_d0 f_1_6) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_1_7 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_4_2, t_4_3) -> 
      (`LH_C((f_1_7 h_4_2), ((map_d1 f_1_7) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d2 f_2_0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_4, t_4_5) -> 
      (`LH_C((f_2_0 h_4_4), ((map_d2 f_2_0) t_4_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d3 f_1_9 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_3, t_4_4) -> 
      (`LH_C((f_1_9 h_4_3), ((map_d3 f_1_9) t_4_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d4 f_1_5 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_9, t_3_0) -> 
      (`LH_C((f_1_5 h_2_9), ((map_d4 f_1_5) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d5 f_2_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_4_9, t_5_0) -> 
      (`LH_C((f_2_3 h_4_9), ((map_d5 f_2_3) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d6 f_1_4 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_7, t_2_8) -> 
      (`LH_C((f_1_4 h_2_7), ((map_d6 f_1_4) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec monthNames_d0 =
  (`LH_C((`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))), (`LH_C((`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))), (`LH_C((`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_N)))))))))))))))))))))))));;
let rec scanl_d0 _lh_scanl_arg1_1 _lh_scanl_arg2_1 _lh_scanl_arg3_1 =
  (`LH_C(_lh_scanl_arg2_1, (let rec _lh_matchIdent_4 = _lh_scanl_arg3_1 in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_1, _lh_scanl_LH_C_1_1) -> 
        (((scanl_d0 _lh_scanl_arg1_1) ((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_1)
      | _ -> 
        (failwith "error")))));;
let rec take_d0 n_8 ls_3_4 =
  (if (n_8 > 0) then
    (match ls_3_4 with
      | `LH_C(h_5_2, t_5_3) -> 
        (`LH_C(h_5_2, ((take_d0 (n_8 - 1)) t_5_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d1 n_6 ls_2_5 =
  (if (n_6 > 0) then
    (match ls_2_5 with
      | `LH_C(h_3_5, t_3_6) -> 
        (`LH_C(h_3_5, ((take_d1 (n_6 - 1)) t_3_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2 n_7 ls_3_1 =
  (if (n_7 > 0) then
    (match ls_3_1 with
      | `LH_C(h_4_8, t_4_9) -> 
        (`LH_C(h_4_8, ((take_d2 (n_7 - 1)) t_4_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3_d0 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_5 = _lh_zip3_arg1_1 in
    (match _lh_matchIdent_5 with
      | `LH_C(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_6 = _lh_zip3_arg2_1 in
          (match _lh_matchIdent_6 with
            | `LH_C(_lh_zip3_LH_C_0_4, _lh_zip3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_7 = _lh_zip3_arg3_1 in
                (match _lh_matchIdent_7 with
                  | `LH_C(_lh_zip3_LH_C_0_5, _lh_zip3_LH_C_1_5) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_0_4, _lh_zip3_LH_C_0_5)), (((zip3_d0 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_5)))
                  | `LH_N -> 
                    (`LH_N)
                  | _ -> 
                    (failwith "error")))
            | `LH_N -> 
              (`LH_N)
            | _ -> 
              (failwith "error")))
      | `LH_N -> 
        (`LH_N)
      | _ -> 
        (failwith "error")));;
let rec zipWith_d0 f_2_1 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_2_5 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_2_1 hx_1_0) hy_1_0), (((zipWith_d0 f_2_1) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d1 f_1_2 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_1_0 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith_d1 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d2 f_2_2 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match ys_2_6 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_2_2 hx_1_1) hy_1_1), (((zipWith_d2 f_2_2) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3 f_1_8 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_2_2 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_8 hx_9) hy_9), (((zipWith_d3 f_1_8) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner_d0 _lh_banner_arg1_1 =
  ((mappend_d2 (`LH_C(((cjustify_d0 75) (string_of_int _lh_banner_arg1_1)), (`LH_N)))) (emptyPic_d0 (`LH_P2(1, 75))))
and block_d0 _lh_block_arg1_1 _lh_funcomp_x_1_0 =
  ((fun _lh_funcomp_x_1_1 -> 
    (stack_d0 ((map_d0 spread_d0) _lh_funcomp_x_1_1))) ((groop_d0 _lh_block_arg1_1) _lh_funcomp_x_1_0))
and block_d1 _lh_block_arg1_2 _lh_funcomp_x_1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (stack_d1 ((map_d3 spread_d1) _lh_funcomp_x_1_3))) ((groop_d1 _lh_block_arg1_2) _lh_funcomp_x_1_2))
and body_d0 _lh_funcomp_x_7 =
  ((fun _lh_funcomp_x_8 -> 
    ((block_d0 3) ((map_d1 (fun _lh_funcomp_x_9 -> 
      (pad_d0 (pic_d0 _lh_funcomp_x_9)))) _lh_funcomp_x_8))) (months_d0 _lh_funcomp_x_7))
and cal_d0 _lh_cal_arg1_1 =
  (unlines_d0 ((mappend_d1_d5 (banner_d0 _lh_cal_arg1_1)) (body_d0 _lh_cal_arg1_1)))
and cjustify_d0 _lh_cjustify_arg1_2 _lh_cjustify_arg2_2 =
  (let rec m_2 = (_lh_cjustify_arg1_2 - (length_d0 _lh_cjustify_arg2_2)) in
    (let rec halfm_2 = (m_2 / 2) in
      ((mappend_d0 ((mappend_d1 (space_d0 halfm_2)) _lh_cjustify_arg2_2)) (space_d1 (m_2 - halfm_2)))))
and cjustify_d1 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length_d2 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend_d1_d3 ((mappend_d1_d4 (space_d3 halfm_1)) _lh_cjustify_arg2_1)) (space_d4 (m_1 - halfm_1)))))
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_6, t_2_7) -> 
      ((mappend_d1_d6 h_2_6) (concat_d0 t_2_7))
    | `LH_N -> 
      (`LH_N))
and dates_d0 _lh_dates_arg1_1 _lh_dates_arg2_1 =
  ((map_d4 (fun d_1 -> 
    ((date_d0 _lh_dates_arg2_1) d_1))) ((enumFromTo_d0 (1 - _lh_dates_arg1_1)) (42 - _lh_dates_arg1_1)))
and date_d0 _lh_date_arg1_1 _lh_date_arg2_1 =
  (if ((_lh_date_arg2_1 < 1) || (_lh_date_arg1_1 < _lh_date_arg2_1)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0 3) (string_of_int _lh_date_arg2_1)), (`LH_N))))
and emptyPic_d0 _lh_emptyPic_arg1_4 =
  (match _lh_emptyPic_arg1_4 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_4, _lh_emptyPic_LH_P2_1_4) -> 
      ((copy_d2 _lh_emptyPic_LH_P2_0_4) ((copy_d3 _lh_emptyPic_LH_P2_1_4) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic_d1 _lh_emptyPic_arg1_3 =
  (match _lh_emptyPic_arg1_3 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_3, _lh_emptyPic_LH_P2_1_3) -> 
      ((copy_d4 _lh_emptyPic_LH_P2_0_3) ((copy_d5 _lh_emptyPic_LH_P2_1_3) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic_d2 _lh_emptyPic_arg1_2 =
  (match _lh_emptyPic_arg1_2 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_2, _lh_emptyPic_LH_P2_1_2) -> 
      ((copy_d6 _lh_emptyPic_LH_P2_0_2) ((copy_d7 _lh_emptyPic_LH_P2_1_2) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic_d3 _lh_emptyPic_arg1_1 =
  (match _lh_emptyPic_arg1_1 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_1, _lh_emptyPic_LH_P2_1_1) -> 
      ((copy_d8 _lh_emptyPic_LH_P2_0_1) ((copy_d9 _lh_emptyPic_LH_P2_1_1) ' '))
    | _ -> 
      (failwith "error"))
and end_d0 _lh_end_arg1_1 =
  (emptyPic_d1 (`LH_P2(1, 25)))
and entries_d0 _lh_entries_arg1_1 _lh_entries_arg2_1 =
  ((block_d1 7) ((dates_d0 _lh_entries_arg1_1) _lh_entries_arg2_1))
and firstDays_d0 _lh_firstDays_arg1_1 =
  ((take_d1 12) ((map_d2 (fun a_1_2 -> 
    (a_1_2 mod 7))) (((scanl_d0 (fun a_1_3 b_8 -> 
    (a_1_3 + b_8))) (jan1st_d0 _lh_firstDays_arg1_1)) (monthLengths_d0 _lh_firstDays_arg1_1))))
and foldr1_d0 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (((foldr_d0 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_0_2) _lh_foldr1_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and foldr1_d1 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr_d1 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and foldr1_d2 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (((foldr_d2 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_0_3) _lh_foldr1_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and foldr1_d3 _lh_foldr1_arg1_4 _lh_foldr1_arg2_4 =
  (match _lh_foldr1_arg2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_4, _lh_foldr1_LH_C_1_4) -> 
      (((foldr_d3 _lh_foldr1_arg1_4) _lh_foldr1_LH_C_0_4) _lh_foldr1_LH_C_1_4)
    | _ -> 
      (failwith "error"))
and groop_d0 _lh_groop_arg1_1 _lh_groop_arg2_1 =
  (match _lh_groop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take_d0 _lh_groop_arg1_1) _lh_groop_arg2_1), ((groop_d0 _lh_groop_arg1_1) ((drop_d0 _lh_groop_arg1_1) _lh_groop_arg2_1)))))
and groop_d1 _lh_groop_arg1_2 _lh_groop_arg2_2 =
  (match _lh_groop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take_d2 _lh_groop_arg1_2) _lh_groop_arg2_2), ((groop_d1 _lh_groop_arg1_2) ((drop_d1 _lh_groop_arg1_2) _lh_groop_arg2_2)))))
and monthLengths_d0 _lh_monthLengths_arg1_2 =
  (let rec feb_2 = (if (leap_d0 _lh_monthLengths_arg1_2) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_2, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))))
and monthLengths_d1 _lh_monthLengths_arg1_1 =
  (let rec feb_1 = (if (leap_d1 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_1, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))))
and months_d0 _lh_months_arg1_1 =
  (((zip3_d0 monthNames_d0) (firstDays_d0 _lh_months_arg1_1)) (monthLengths_d1 _lh_months_arg1_1))
and pad_d0 _lh_pad_arg1_1 =
  ((mappend_d5 (((zipWith_d1 mappend_d6) (((zipWith_d2 mappend_d7) (side_d0 0)) _lh_pad_arg1_1)) (side_d1 0))) (end_d0 0))
and pic_d0 _lh_pic_arg1_1 =
  (match _lh_pic_arg1_1 with
    | `LH_P3(_lh_pic_LH_P3_0_1, _lh_pic_LH_P3_1_1, _lh_pic_LH_P3_2_1) -> 
      ((mappend_d8 (title_d0 _lh_pic_LH_P3_0_1)) ((table_d0 _lh_pic_LH_P3_1_1) _lh_pic_LH_P3_2_1))
    | _ -> 
      (failwith "error"))
and rjustify_d0 _lh_rjustify_arg1_1 _lh_rjustify_arg2_1 =
  ((mappend_d1_d1 (space_d2 (_lh_rjustify_arg1_1 - (length_d1 _lh_rjustify_arg2_1)))) _lh_rjustify_arg2_1)
and side_d0 _lh_side_arg1_1 =
  (emptyPic_d2 (`LH_P2(8, 2)))
and side_d1 _lh_side_arg1_2 =
  (emptyPic_d3 (`LH_P2(8, 2)))
and space_d0 _lh_space_arg1_1 =
  ((copy_d0 _lh_space_arg1_1) ' ')
and space_d1 _lh_space_arg1_2 =
  ((copy_d1 _lh_space_arg1_2) ' ')
and space_d2 _lh_space_arg1_4 =
  ((copy_d1_d0 _lh_space_arg1_4) ' ')
and space_d3 _lh_space_arg1_3 =
  ((copy_d1_d1 _lh_space_arg1_3) ' ')
and space_d4 _lh_space_arg1_5 =
  ((copy_d1_d2 _lh_space_arg1_5) ' ')
and spread_d0 _lh_spread_arg1_1 =
  ((foldr1_d0 (fun a_1_0 b_6 -> 
    (((zipWith_d0 mappend_d3) a_1_0) b_6))) _lh_spread_arg1_1)
and spread_d1 _lh_spread_arg1_2 =
  ((foldr1_d2 (fun a_1_6 b_1_1 -> 
    (((zipWith_d3 mappend_d9) a_1_6) b_1_1))) _lh_spread_arg1_2)
and stack_d0 _lh_stack_arg1_2 =
  ((foldr1_d1 (fun a_1_4 b_9 -> 
    ((mappend_d4 a_1_4) b_9))) _lh_stack_arg1_2)
and stack_d1 _lh_stack_arg1_1 =
  ((foldr1_d3 (fun a_1_1 b_7 -> 
    ((mappend_d1_d0 a_1_1) b_7))) _lh_stack_arg1_1)
and table_d0 _lh_table_arg1_1 _lh_table_arg2_1 =
  ((mappend_d1_d2 daynames_d0) ((entries_d0 _lh_table_arg1_1) _lh_table_arg2_1))
and testCalendar_nofib_d0 _lh_testCalendar_nofib_arg1_1 =
  ((map_d6 (fun n_5 -> 
    (length_d3 (cal_d0 n_5)))) ((enumFromTo_d1 2008) (2008 + _lh_testCalendar_nofib_arg1_1)))
and title_d0 _lh_title_arg1_1 =
  (`LH_C(((cjustify_d1 21) _lh_title_arg1_1), (`LH_N)))
and unlines_d0 _lh_unlines_arg1_1 =
  (concat_d0 ((map_d5 (fun l_1 -> 
    ((mappend_d1_d7 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;

(* lumberhack *)
let rec concat_d0_d0 lss_0 =
  (lss_0 99);;
let rec copy_d1_d0 _lh_copy_arg1_6 _lh_copy_arg2_6 =
  (if (_lh_copy_arg1_6 > 0) then
    (`LH_C(_lh_copy_arg2_6, ((copy_d1_d0 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0 _lh_copy_arg1_1_1 _lh_copy_arg2_1_1 =
  (if (_lh_copy_arg1_1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1_1, ((copy_d1_d2_d0 (_lh_copy_arg1_1_1 - 1)) _lh_copy_arg2_1_1)))
  else
    (`LH_N));;
let rec copy_d3_d0 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy_d3_d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec copy_d4_d0 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (`LH_C(_lh_copy_arg2_1_0, ((copy_d4_d0 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0)))
  else
    (`LH_N));;
let rec copy_d5_d0 _lh_copy_arg1_8 _lh_copy_arg2_8 =
  (if (_lh_copy_arg1_8 > 0) then
    (`LH_C(_lh_copy_arg2_8, ((copy_d5_d0 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8)))
  else
    (`LH_N));;
let rec copy_d9_d0 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy_d9_d0 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec drop_d0_d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_d0_d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop_d1_d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec emptyPic_d0_d0 _lh_emptyPic_arg1_0 =
  (_lh_emptyPic_arg1_0 99);;
let rec emptyPic_d1_d0 _lh_emptyPic_arg1_3 =
  (_lh_emptyPic_arg1_3 99);;
let rec emptyPic_d2_d0 _lh_emptyPic_arg1_1 =
  (_lh_emptyPic_arg1_1 99);;
let rec emptyPic_d3_d0 _lh_emptyPic_arg1_2 =
  (_lh_emptyPic_arg1_2 99);;
let rec enumFromTo_d1_d0 a_5 b_4 =
  (if (a_5 <= b_4) then
    (`LH_C(a_5, ((enumFromTo_d1_d0 (a_5 + 1)) b_4)))
  else
    (`LH_N));;
let rec foldr_d0_d0 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_1, t_1) -> 
      ((f_0 h_1) (((foldr_d0_d0 f_0) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec foldr_d1_d0 f_3_7 i_3 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_3_9, t_4_0) -> 
      ((f_3_7 h_3_9) (((foldr_d1_d0 f_3_7) i_3) t_4_0))
    | `LH_N -> 
      i_3);;
let rec foldr_d2_d0 f_5 i_2 ls_3 =
  (match ls_3 with
    | `LH_C(h_6, t_6) -> 
      ((f_5 h_6) (((foldr_d2_d0 f_5) i_2) t_6))
    | `LH_N -> 
      i_2);;
let rec foldr_d3_d0 f_3 i_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_3, t_3) -> 
      ((f_3 h_3) (((foldr_d3_d0 f_3) i_1) t_3))
    | `LH_N -> 
      i_1);;
let rec jan1st_d0_d0 _lh_jan1st_arg1_0 =
  (let rec last_0 = (_lh_jan1st_arg1_0 - 1) in
    (((((((_lh_jan1st_arg1_0 + last_0) / 4) - last_0) / 100) + last_0) / 400) mod 7));;
let rec leap_d0_d0 _lh_leap_arg1_1 =
  (if ((_lh_leap_arg1_1 mod 100) = 0) then
    ((_lh_leap_arg1_1 mod 400) = 0)
  else
    ((_lh_leap_arg1_1 mod 4) = 0));;
let rec leap_d1_d0 _lh_leap_arg1_0 =
  (if ((_lh_leap_arg1_0 mod 100) = 0) then
    ((_lh_leap_arg1_0 mod 400) = 0)
  else
    ((_lh_leap_arg1_0 mod 4) = 0));;
let rec length_d0_d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_9, t_1_0) -> 
      (1 + (length_d0_d0 t_1_0))
    | `LH_N -> 
      0);;
let rec length_d1_d0 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_4_1, t_4_3) -> 
      (1 + (length_d1_d0 t_4_3))
    | `LH_N -> 
      0);;
let rec length_d2_d0 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_8, t_3_9) -> 
      (1 + (length_d2_d0 t_3_9))
    | `LH_N -> 
      0);;
let rec length_d3_d0 ls_2 =
  (ls_2 99);;
let rec mappend_d0_d0 xs_2_0 ys_4_9 =
  (match xs_2_0 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend_d0_d0 t_5_0) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend_d1_d0 xs_1_2 ys_2_6 =
  (xs_1_2 ys_2_6);;
let rec mappend_d1_d0_d0 xs_0 ys_4 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_d1_d0_d0 t_4) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_d1_d1_d0 xs_7 ys_1_9 =
  (xs_7 ys_1_9);;
let rec mappend_d1_d2_d0 xs_2_1 ys_5_0 =
  (xs_2_1 ys_5_0);;
let rec mappend_d1_d3_d0 xs_1_7 ys_3_9 =
  (match xs_1_7 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend_d1_d3_d0 t_4_7) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend_d1_d4_d0 xs_1_5 ys_3_1 =
  (xs_1_5 ys_3_1);;
let rec mappend_d1_d5_d0 xs_1_0 ys_2_4 =
  (xs_1_0 ys_2_4);;
let rec mappend_d1_d6_d0 xs_1_6 ys_3_6 =
  (xs_1_6 ys_3_6);;
let rec mappend_d2_d0 xs_8 ys_2_0 =
  (xs_8 ys_2_0);;
let rec mappend_d3_d0 xs_1_3 ys_2_9 =
  (match xs_1_3 with
    | `LH_C(h_3_7, t_3_8) -> 
      (`LH_C(h_3_7, ((mappend_d3_d0 t_3_8) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend_d4_d0 xs_1_1 ys_2_5 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_3) -> 
      (`LH_C(h_2_2, ((mappend_d4_d0 t_2_3) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend_d5_d0 xs_1_8 ys_4_0 =
  (xs_1_8 ys_4_0);;
let rec mappend_d6_d0 xs_5 ys_1_4 =
  (match xs_5 with
    | `LH_C(h_1_6, t_1_7) -> 
      (`LH_C(h_1_6, ((mappend_d6_d0 t_1_7) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend_d7_d0 xs_6 ys_1_8 =
  (xs_6 ys_1_8);;
let rec mappend_d8_d0 xs_2 ys_8 =
  (xs_2 ys_8);;
let rec mappend_d9_d0 xs_1_9 ys_4_8 =
  (match xs_1_9 with
    | `LH_C(h_4_7, t_4_9) -> 
      (`LH_C(h_4_7, ((mappend_d9_d0 t_4_9) ys_4_8)))
    | `LH_N -> 
      ys_4_8);;
let rec map_d0_d0 f_1_9 ls_9 =
  (ls_9 f_1_9);;
let rec map_d1_d0 f_3_8 ls_1_5 =
  (ls_1_5 f_3_8);;
let rec map_d2_d0 f_4_4 ls_1_7 =
  (ls_1_7 f_4_4);;
let rec map_d3_d0 f_6 ls_5 =
  (ls_5 f_6);;
let rec map_d4_d0 f_9 ls_6 =
  (ls_6 f_9);;
let rec map_d6_d0 f_2_2 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_2_3, t_2_4) -> 
      (`LH_C((f_2_2 h_2_3), ((map_d6_d0 f_2_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec monthNames_d0_d0 =
  (let rec _lh_zip3_LH_C_1_4_2 = (let rec _lh_zip3_LH_C_1_4_3 = (let rec _lh_zip3_LH_C_1_4_4 = (let rec _lh_zip3_LH_C_1_4_5 = (let rec _lh_zip3_LH_C_1_4_6 = (let rec _lh_zip3_LH_C_1_4_7 = (let rec _lh_zip3_LH_C_1_4_8 = (let rec _lh_zip3_LH_C_1_4_9 = (let rec _lh_zip3_LH_C_1_5_0 = (let rec _lh_zip3_LH_C_1_5_1 = (let rec _lh_zip3_LH_C_1_5_2 = (let rec _lh_zip3_LH_C_1_5_3 = (fun _lh_zip3_arg2_1 _lh_zip3_arg3_4 f_4_5 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_4_2 = (`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2 _lh_zip3_arg3_5 -> 
        (let rec _lh_matchIdent_3 = _lh_zip3_arg2_2 in
          (((_lh_matchIdent_3 _lh_zip3_LH_C_0_4_2) _lh_zip3_LH_C_1_5_3) _lh_zip3_arg3_5))))) in
    (let rec _lh_zip3_LH_C_0_4_3 = (`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_3 _lh_zip3_arg3_6 -> 
        (let rec _lh_matchIdent_4 = _lh_zip3_arg2_3 in
          (((_lh_matchIdent_4 _lh_zip3_LH_C_0_4_3) _lh_zip3_LH_C_1_5_2) _lh_zip3_arg3_6))))) in
    (let rec _lh_zip3_LH_C_0_4_4 = (`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_4 _lh_zip3_arg3_7 -> 
        (let rec _lh_matchIdent_5 = _lh_zip3_arg2_4 in
          (((_lh_matchIdent_5 _lh_zip3_LH_C_0_4_4) _lh_zip3_LH_C_1_5_1) _lh_zip3_arg3_7))))) in
    (let rec _lh_zip3_LH_C_0_4_5 = (`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))) in
      (fun _lh_zip3_arg2_5 _lh_zip3_arg3_8 -> 
        (let rec _lh_matchIdent_6 = _lh_zip3_arg2_5 in
          (((_lh_matchIdent_6 _lh_zip3_LH_C_0_4_5) _lh_zip3_LH_C_1_5_0) _lh_zip3_arg3_8))))) in
    (let rec _lh_zip3_LH_C_0_4_6 = (`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))) in
      (fun _lh_zip3_arg2_6 _lh_zip3_arg3_9 -> 
        (let rec _lh_matchIdent_7 = _lh_zip3_arg2_6 in
          (((_lh_matchIdent_7 _lh_zip3_LH_C_0_4_6) _lh_zip3_LH_C_1_4_9) _lh_zip3_arg3_9))))) in
    (let rec _lh_zip3_LH_C_0_4_7 = (`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_7 _lh_zip3_arg3_1_0 -> 
        (let rec _lh_matchIdent_8 = _lh_zip3_arg2_7 in
          (((_lh_matchIdent_8 _lh_zip3_LH_C_0_4_7) _lh_zip3_LH_C_1_4_8) _lh_zip3_arg3_1_0))))) in
    (let rec _lh_zip3_LH_C_0_4_8 = (`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_8 _lh_zip3_arg3_1_1 -> 
        (let rec _lh_matchIdent_9 = _lh_zip3_arg2_8 in
          (((_lh_matchIdent_9 _lh_zip3_LH_C_0_4_8) _lh_zip3_LH_C_1_4_7) _lh_zip3_arg3_1_1))))) in
    (let rec _lh_zip3_LH_C_0_4_9 = (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))) in
      (fun _lh_zip3_arg2_9 _lh_zip3_arg3_1_2 -> 
        (let rec _lh_matchIdent_1_0 = _lh_zip3_arg2_9 in
          (((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_4_9) _lh_zip3_LH_C_1_4_6) _lh_zip3_arg3_1_2))))) in
    (let rec _lh_zip3_LH_C_0_5_0 = (`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_3 -> 
        (let rec _lh_matchIdent_1_1 = _lh_zip3_arg2_1_0 in
          (((_lh_matchIdent_1_1 _lh_zip3_LH_C_0_5_0) _lh_zip3_LH_C_1_4_5) _lh_zip3_arg3_1_3))))) in
    (let rec _lh_zip3_LH_C_0_5_1 = (`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_4 -> 
        (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_1_1 in
          (((_lh_matchIdent_1_2 _lh_zip3_LH_C_0_5_1) _lh_zip3_LH_C_1_4_4) _lh_zip3_arg3_1_4))))) in
    (let rec _lh_zip3_LH_C_0_5_2 = (`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_5 -> 
        (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_1_2 in
          (((_lh_matchIdent_1_3 _lh_zip3_LH_C_0_5_2) _lh_zip3_LH_C_1_4_3) _lh_zip3_arg3_1_5))))) in
    (let rec _lh_zip3_LH_C_0_5_3 = (`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_1_3 _lh_zip3_arg3_1_6 -> 
        (let rec _lh_matchIdent_1_4 = _lh_zip3_arg2_1_3 in
          (((_lh_matchIdent_1_4 _lh_zip3_LH_C_0_5_3) _lh_zip3_LH_C_1_4_2) _lh_zip3_arg3_1_6)))));;
let rec pic_d0_d0 _lh_pic_arg1_0 =
  (_lh_pic_arg1_0 99);;
let rec take_d0_d0 n_4 ls_1_6 =
  (if (n_4 > 0) then
    (match ls_1_6 with
      | `LH_C(h_4_6, t_4_8) -> 
        (`LH_C(h_4_6, ((take_d0_d0 (n_4 - 1)) t_4_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d1_d0 n_0 ls_7 =
  (if (n_0 > 0) then
    (ls_7 n_0)
  else
    (fun _lh_zip3_LH_C_0_0 _lh_zip3_LH_C_1_0 _lh_zip3_arg3_0 f_1_0 -> 
      (`LH_N)));;
let rec take_d2_d0 n_3 ls_1_4 =
  (if (n_3 > 0) then
    (match ls_1_4 with
      | `LH_C(h_4_3, t_4_5) -> 
        (`LH_C(h_4_3, ((take_d2_d0 (n_3 - 1)) t_4_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3_d0_d0 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_3 =
  (let rec _lh_matchIdent_2 = _lh_zip3_arg1_0 in
    ((_lh_matchIdent_2 _lh_zip3_arg2_0) _lh_zip3_arg3_3));;
let rec zipWith_d0_d0 f_4 xs_1 ys_5 =
  (match xs_1 with
    | `LH_C(hx_2, tx_2) -> 
      (match ys_5 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_4 hx_2) hy_1), (((zipWith_d0_d0 f_4) tx_2) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d1_d0 f_3_6 xs_1_4 ys_3_0 =
  ((xs_1_4 f_3_6) ys_3_0);;
let rec zipWith_d2_d0 f_1_8 xs_9 ys_2_3 =
  ((xs_9 f_1_8) ys_2_3);;
let rec zipWith_d3_d0 f_1_3 xs_4 ys_1_1 =
  (match xs_4 with
    | `LH_C(hx_3, tx_3) -> 
      (match ys_1_1 with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C(((f_1_3 hx_3) hy_2), (((zipWith_d3_d0 f_1_3) tx_3) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner_d0_d0 _lh_banner_arg1_0 =
  ((mappend_d2_d0 (let rec t_1_8 = (fun ys_1_5 -> 
    ys_1_5) in
    (let rec h_1_7 = ((cjustify_d0_d0 75) (string_of_int _lh_banner_arg1_0)) in
      (fun ys_1_6 -> 
        (let rec t_1_9 = ((mappend_d2_d0 t_1_8) ys_1_6) in
          (let rec h_1_8 = h_1_7 in
            (fun ys_1_7 -> 
              (`LH_C(h_1_8, ((mappend_d1_d5_d0 t_1_9) ys_1_7)))))))))) (emptyPic_d0_d0 (let rec _lh_emptyPic_LH_P2_1_1 = 75 in
    (let rec _lh_emptyPic_LH_P2_0_1 = 1 in
      (fun _lh_dummy_5 -> 
        ((copy_d2_d0 _lh_emptyPic_LH_P2_0_1) ((copy_d3_d0 _lh_emptyPic_LH_P2_1_1) ' ')))))))
and block_d0_d0 _lh_block_arg1_1 _lh_funcomp_x_5 =
  ((fun _lh_funcomp_x_6 -> 
    (stack_d0_d0 ((map_d0_d0 spread_d0_d0) _lh_funcomp_x_6))) ((groop_d0_d0 _lh_block_arg1_1) _lh_funcomp_x_5))
and block_d1_d0 _lh_block_arg1_0 _lh_funcomp_x_3 =
  ((fun _lh_funcomp_x_4 -> 
    (stack_d1_d0 ((map_d3_d0 spread_d1_d0) _lh_funcomp_x_4))) ((groop_d1_d0 _lh_block_arg1_0) _lh_funcomp_x_3))
and body_d0_d0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((block_d0_d0 3) ((map_d1_d0 (fun _lh_funcomp_x_2 -> 
      (pad_d0_d0 (pic_d0_d0 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) (months_d0_d0 _lh_funcomp_x_0))
and cal_d0_d0 _lh_cal_arg1_0 =
  (unlines_d0_d0 ((mappend_d1_d5_d0 (banner_d0_d0 _lh_cal_arg1_0)) (body_d0_d0 _lh_cal_arg1_0)))
and cjustify_d0_d0 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length_d0_d0 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend_d0_d0 ((mappend_d1_d0 (space_d0_d0 halfm_1)) _lh_cjustify_arg2_1)) (space_d1_d0 (m_1 - halfm_1)))))
and cjustify_d1_d0 _lh_cjustify_arg1_0 _lh_cjustify_arg2_0 =
  (let rec m_0 = (_lh_cjustify_arg1_0 - (length_d2_d0 _lh_cjustify_arg2_0)) in
    (let rec halfm_0 = (m_0 / 2) in
      ((mappend_d1_d3_d0 ((mappend_d1_d4_d0 (space_d3_d0 halfm_0)) _lh_cjustify_arg2_0)) (space_d4_d0 (m_0 - halfm_0)))))
and copy_d0_d0 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (let rec t_2_2 = ((copy_d0_d0 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5) in
      (let rec h_2_1 = _lh_copy_arg2_5 in
        (fun ys_2_1 -> 
          (`LH_C(h_2_1, ((mappend_d1_d0 t_2_2) ys_2_1))))))
  else
    (fun ys_2_2 -> 
      ys_2_2))
and copy_d1_d0_d0 _lh_copy_arg1_9 _lh_copy_arg2_9 =
  (if (_lh_copy_arg1_9 > 0) then
    (let rec t_4_4 = ((copy_d1_d0_d0 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9) in
      (let rec h_4_2 = _lh_copy_arg2_9 in
        (fun ys_3_4 -> 
          (`LH_C(h_4_2, ((mappend_d1_d1_d0 t_4_4) ys_3_4))))))
  else
    (fun ys_3_5 -> 
      ys_3_5))
and copy_d1_d1_d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (let rec t_5 = ((copy_d1_d1_d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
      (let rec h_5 = _lh_copy_arg2_2 in
        (fun ys_6 -> 
          (`LH_C(h_5, ((mappend_d1_d4_d0 t_5) ys_6))))))
  else
    (fun ys_7 -> 
      ys_7))
and copy_d2_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec t_0 = ((copy_d2_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_0 = _lh_copy_arg2_0 in
        (fun ys_0 -> 
          (`LH_C(h_0, ((mappend_d1_d5_d0 t_0) ys_0))))))
  else
    (fun ys_1 -> 
      ys_1))
and copy_d6_d0 _lh_copy_arg1_1_2 _lh_copy_arg2_1_2 =
  (if (_lh_copy_arg1_1_2 > 0) then
    (let rec tx_4 = ((copy_d6_d0 (_lh_copy_arg1_1_2 - 1)) _lh_copy_arg2_1_2) in
      (let rec hx_4 = _lh_copy_arg2_1_2 in
        (fun f_3_9 ys_4_1 -> 
          (match ys_4_1 with
            | `LH_C(hy_3, ty_3) -> 
              (let rec tx_5 = (((zipWith_d2_d0 f_3_9) tx_4) ty_3) in
                (let rec hx_5 = ((f_3_9 hx_4) hy_3) in
                  (fun f_4_0 ys_4_2 -> 
                    (((ys_4_2 f_4_0) hx_5) tx_5))))
            | `LH_N -> 
              (fun f_4_1 ys_4_3 ys_4_4 -> 
                ys_4_4)))))
  else
    (fun f_4_2 ys_4_5 f_4_3 ys_4_6 ys_4_7 -> 
      ys_4_7))
and copy_d7_d0 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (if (_lh_copy_arg1_7 > 0) then
    (let rec t_2_5 = ((copy_d7_d0 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7) in
      (let rec h_2_4 = _lh_copy_arg2_7 in
        (fun ys_2_7 -> 
          (`LH_C(h_2_4, ((mappend_d7_d0 t_2_5) ys_2_7))))))
  else
    (fun ys_2_8 -> 
      ys_2_8))
and copy_d8_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (let rec ty_0 = ((copy_d8_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
      (let rec hy_0 = _lh_copy_arg2_1 in
        (fun f_1 hx_0 tx_0 -> 
          (let rec t_2 = (((zipWith_d1_d0 f_1) tx_0) ty_0) in
            (let rec h_2 = ((f_1 hx_0) hy_0) in
              (fun ys_2 -> 
                (`LH_C(h_2, ((mappend_d5_d0 t_2) ys_2)))))))))
  else
    (fun f_2 hx_1 tx_1 ys_3 -> 
      ys_3))
and dates_d0_d0 _lh_dates_arg1_0 _lh_dates_arg2_0 =
  ((map_d4_d0 (fun d_0 -> 
    ((date_d0_d0 _lh_dates_arg2_0) d_0))) ((enumFromTo_d0_d0 (1 - _lh_dates_arg1_0)) (42 - _lh_dates_arg1_0)))
and date_d0_d0 _lh_date_arg1_0 _lh_date_arg2_0 =
  (if ((_lh_date_arg2_0 < 1) || (_lh_date_arg1_0 < _lh_date_arg2_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0 3) (string_of_int _lh_date_arg2_0)), (`LH_N))))
and daynames_d0_d0 =
  (let rec t_1_3 = (fun ys_1_2 -> 
    ys_1_2) in
    (let rec h_1_2 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (fun ys_1_3 -> 
        (`LH_C(h_1_2, ((mappend_d1_d2_d0 t_1_3) ys_1_3))))))
and end_d0_d0 _lh_end_arg1_0 =
  (emptyPic_d1_d0 (let rec _lh_emptyPic_LH_P2_1_0 = 25 in
    (let rec _lh_emptyPic_LH_P2_0_0 = 1 in
      (fun _lh_dummy_1 -> 
        ((copy_d4_d0 _lh_emptyPic_LH_P2_0_0) ((copy_d5_d0 _lh_emptyPic_LH_P2_1_0) ' '))))))
and entries_d0_d0 _lh_entries_arg1_0 _lh_entries_arg2_0 =
  ((block_d1_d0 7) ((dates_d0_d0 _lh_entries_arg1_0) _lh_entries_arg2_0))
and enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_1_6 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
      (let rec h_1_5 = a_0 in
        (fun f_1_5 -> 
          (`LH_C((f_1_5 h_1_5), ((map_d4_d0 f_1_5) t_1_6))))))
  else
    (fun f_1_6 -> 
      (`LH_N)))
and firstDays_d0_d0 _lh_firstDays_arg1_0 =
  ((take_d1_d0 12) ((map_d2_d0 (fun a_2 -> 
    (a_2 mod 7))) (((scanl_d0_d0 (fun a_3 b_2 -> 
    (a_3 + b_2))) (jan1st_d0_d0 _lh_firstDays_arg1_0)) (monthLengths_d0_d0 _lh_firstDays_arg1_0))))
and foldr1_d0_d0 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (((foldr_d0_d0 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_0_3) _lh_foldr1_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and foldr1_d1_d0 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (((foldr_d1_d0 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_0_2) _lh_foldr1_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (((foldr_d2_d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_0_0) _lh_foldr1_LH_C_1_0)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr_d3_d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and groop_d0_d0 _lh_groop_arg1_0 _lh_groop_arg2_0 =
  (match _lh_groop_arg2_0 with
    | `LH_N -> 
      (fun f_7 -> 
        (`LH_N))
    | _ -> 
      (let rec t_1_1 = ((groop_d0_d0 _lh_groop_arg1_0) ((drop_d0_d0 _lh_groop_arg1_0) _lh_groop_arg2_0)) in
        (let rec h_1_0 = ((take_d0_d0 _lh_groop_arg1_0) _lh_groop_arg2_0) in
          (fun f_8 -> 
            (`LH_C((f_8 h_1_0), ((map_d0_d0 f_8) t_1_1)))))))
and groop_d1_d0 _lh_groop_arg1_1 _lh_groop_arg2_1 =
  (match _lh_groop_arg2_1 with
    | `LH_N -> 
      (fun f_1_1 -> 
        (`LH_N))
    | _ -> 
      (let rec t_1_2 = ((groop_d1_d0 _lh_groop_arg1_1) ((drop_d1_d0 _lh_groop_arg1_1) _lh_groop_arg2_1)) in
        (let rec h_1_1 = ((take_d2_d0 _lh_groop_arg1_1) _lh_groop_arg2_1) in
          (fun f_1_2 -> 
            (`LH_C((f_1_2 h_1_1), ((map_d3_d0 f_1_2) t_1_2)))))))
and mappend_d1_d7_d0 xs_3 ys_9 =
  (match xs_3 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((mappend_d1_d7_d0 t_7) ys_9) in
        (let rec h_8 = h_7 in
          (fun ys_1_0 -> 
            (let rec t_9 = ((mappend_d1_d6_d0 t_8) ys_1_0) in
              (fun _lh_dummy_0 -> 
                (1 + (length_d3_d0 t_9)))))))
    | `LH_N -> 
      ys_9)
and map_d5_d0 f_1_4 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_3, t_1_4) -> 
      (let rec t_1_5 = ((map_d5_d0 f_1_4) t_1_4) in
        (let rec h_1_4 = (f_1_4 h_1_3) in
          (fun _lh_dummy_2 -> 
            ((mappend_d1_d6_d0 h_1_4) (concat_d0_d0 t_1_5)))))
    | `LH_N -> 
      (fun _lh_dummy_3 _lh_dummy_4 -> 
        0))
and monthLengths_d0_d0 _lh_monthLengths_arg1_0 =
  (let rec feb_0 = (if (leap_d0_d0 _lh_monthLengths_arg1_0) then
    29
  else
    28) in
    (let rec _lh_scanl_LH_C_1_0 = (let rec _lh_scanl_LH_C_1_1 = (let rec _lh_scanl_LH_C_1_2 = (let rec _lh_scanl_LH_C_1_3 = (let rec _lh_scanl_LH_C_1_4 = (let rec _lh_scanl_LH_C_1_5 = (let rec _lh_scanl_LH_C_1_6 = (let rec _lh_scanl_LH_C_1_7 = (let rec _lh_scanl_LH_C_1_8 = (let rec _lh_scanl_LH_C_1_9 = (let rec _lh_scanl_LH_C_1_1_0 = (let rec _lh_scanl_LH_C_1_1_1 = (fun _lh_scanl_arg1_1 _lh_scanl_arg2_1 f_2_0 n_2 _lh_zip3_LH_C_0_3 _lh_zip3_LH_C_1_3 _lh_zip3_arg3_2 f_2_1 -> 
      (`LH_N)) in
      (let rec _lh_scanl_LH_C_0_0 = 31 in
        (fun _lh_scanl_arg1_2 _lh_scanl_arg2_2 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_2) ((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_1_1)))) in
      (let rec _lh_scanl_LH_C_0_1 = 30 in
        (fun _lh_scanl_arg1_3 _lh_scanl_arg2_3 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_3) ((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_1_0)))) in
      (let rec _lh_scanl_LH_C_0_2 = 31 in
        (fun _lh_scanl_arg1_4 _lh_scanl_arg2_4 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_4) ((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_2)) _lh_scanl_LH_C_1_9)))) in
      (let rec _lh_scanl_LH_C_0_3 = 30 in
        (fun _lh_scanl_arg1_5 _lh_scanl_arg2_5 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_5) ((_lh_scanl_arg1_5 _lh_scanl_arg2_5) _lh_scanl_LH_C_0_3)) _lh_scanl_LH_C_1_8)))) in
      (let rec _lh_scanl_LH_C_0_4 = 31 in
        (fun _lh_scanl_arg1_6 _lh_scanl_arg2_6 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_6) ((_lh_scanl_arg1_6 _lh_scanl_arg2_6) _lh_scanl_LH_C_0_4)) _lh_scanl_LH_C_1_7)))) in
      (let rec _lh_scanl_LH_C_0_5 = 31 in
        (fun _lh_scanl_arg1_7 _lh_scanl_arg2_7 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_7) ((_lh_scanl_arg1_7 _lh_scanl_arg2_7) _lh_scanl_LH_C_0_5)) _lh_scanl_LH_C_1_6)))) in
      (let rec _lh_scanl_LH_C_0_6 = 30 in
        (fun _lh_scanl_arg1_8 _lh_scanl_arg2_8 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_8) ((_lh_scanl_arg1_8 _lh_scanl_arg2_8) _lh_scanl_LH_C_0_6)) _lh_scanl_LH_C_1_5)))) in
      (let rec _lh_scanl_LH_C_0_7 = 31 in
        (fun _lh_scanl_arg1_9 _lh_scanl_arg2_9 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_9) ((_lh_scanl_arg1_9 _lh_scanl_arg2_9) _lh_scanl_LH_C_0_7)) _lh_scanl_LH_C_1_4)))) in
      (let rec _lh_scanl_LH_C_0_8 = 30 in
        (fun _lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_1_0) ((_lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0) _lh_scanl_LH_C_0_8)) _lh_scanl_LH_C_1_3)))) in
      (let rec _lh_scanl_LH_C_0_9 = 31 in
        (fun _lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_1_1) ((_lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1) _lh_scanl_LH_C_0_9)) _lh_scanl_LH_C_1_2)))) in
      (let rec _lh_scanl_LH_C_0_1_0 = feb_0 in
        (fun _lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_1_2) ((_lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2) _lh_scanl_LH_C_0_1_0)) _lh_scanl_LH_C_1_1)))) in
      (let rec _lh_scanl_LH_C_0_1_1 = 31 in
        (fun _lh_scanl_arg1_1_3 _lh_scanl_arg2_1_3 -> 
          (((scanl_d0_d0 _lh_scanl_arg1_1_3) ((_lh_scanl_arg1_1_3 _lh_scanl_arg2_1_3) _lh_scanl_LH_C_0_1_1)) _lh_scanl_LH_C_1_0)))))
and monthLengths_d1_d0 _lh_monthLengths_arg1_1 =
  (let rec feb_1 = (if (leap_d1_d0 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (let rec _lh_zip3_LH_C_1_4 = (let rec _lh_zip3_LH_C_1_5 = (let rec _lh_zip3_LH_C_1_6 = (let rec _lh_zip3_LH_C_1_7 = (let rec _lh_zip3_LH_C_1_8 = (let rec _lh_zip3_LH_C_1_9 = (let rec _lh_zip3_LH_C_1_1_0 = (let rec _lh_zip3_LH_C_1_1_1 = (let rec _lh_zip3_LH_C_1_1_2 = (let rec _lh_zip3_LH_C_1_1_3 = (let rec _lh_zip3_LH_C_1_1_4 = (let rec _lh_zip3_LH_C_1_1_5 = (fun _lh_zip3_LH_C_0_4 _lh_zip3_LH_C_0_5 _lh_zip3_LH_C_1_1_6 _lh_zip3_LH_C_1_1_7 f_2_3 -> 
      (`LH_N)) in
      (let rec _lh_zip3_LH_C_0_6 = 31 in
        (fun _lh_zip3_LH_C_0_7 _lh_zip3_LH_C_0_8 _lh_zip3_LH_C_1_1_8 _lh_zip3_LH_C_1_1_9 -> 
          (let rec t_2_6 = (((zip3_d0_d0 _lh_zip3_LH_C_1_1_8) _lh_zip3_LH_C_1_1_9) _lh_zip3_LH_C_1_1_5) in
            (let rec h_2_5 = (let rec _lh_pic_LH_P3_2_0 = _lh_zip3_LH_C_0_6 in
              (let rec _lh_pic_LH_P3_1_0 = _lh_zip3_LH_C_0_8 in
                (let rec _lh_pic_LH_P3_0_0 = _lh_zip3_LH_C_0_7 in
                  (fun _lh_dummy_6 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_0)) ((table_d0_d0 _lh_pic_LH_P3_1_0) _lh_pic_LH_P3_2_0)))))) in
              (fun f_2_4 -> 
                (`LH_C((f_2_4 h_2_5), ((map_d1_d0 f_2_4) t_2_6))))))))) in
      (let rec _lh_zip3_LH_C_0_9 = 30 in
        (fun _lh_zip3_LH_C_0_1_0 _lh_zip3_LH_C_0_1_1 _lh_zip3_LH_C_1_2_0 _lh_zip3_LH_C_1_2_1 -> 
          (let rec t_2_7 = (((zip3_d0_d0 _lh_zip3_LH_C_1_2_0) _lh_zip3_LH_C_1_2_1) _lh_zip3_LH_C_1_1_4) in
            (let rec h_2_6 = (let rec _lh_pic_LH_P3_2_1 = _lh_zip3_LH_C_0_9 in
              (let rec _lh_pic_LH_P3_1_1 = _lh_zip3_LH_C_0_1_1 in
                (let rec _lh_pic_LH_P3_0_1 = _lh_zip3_LH_C_0_1_0 in
                  (fun _lh_dummy_7 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_1)) ((table_d0_d0 _lh_pic_LH_P3_1_1) _lh_pic_LH_P3_2_1)))))) in
              (fun f_2_5 -> 
                (`LH_C((f_2_5 h_2_6), ((map_d1_d0 f_2_5) t_2_7))))))))) in
      (let rec _lh_zip3_LH_C_0_1_2 = 31 in
        (fun _lh_zip3_LH_C_0_1_3 _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_1_2_2 _lh_zip3_LH_C_1_2_3 -> 
          (let rec t_2_8 = (((zip3_d0_d0 _lh_zip3_LH_C_1_2_2) _lh_zip3_LH_C_1_2_3) _lh_zip3_LH_C_1_1_3) in
            (let rec h_2_7 = (let rec _lh_pic_LH_P3_2_2 = _lh_zip3_LH_C_0_1_2 in
              (let rec _lh_pic_LH_P3_1_2 = _lh_zip3_LH_C_0_1_4 in
                (let rec _lh_pic_LH_P3_0_2 = _lh_zip3_LH_C_0_1_3 in
                  (fun _lh_dummy_8 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_2)) ((table_d0_d0 _lh_pic_LH_P3_1_2) _lh_pic_LH_P3_2_2)))))) in
              (fun f_2_6 -> 
                (`LH_C((f_2_6 h_2_7), ((map_d1_d0 f_2_6) t_2_8))))))))) in
      (let rec _lh_zip3_LH_C_0_1_5 = 30 in
        (fun _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_1_2_4 _lh_zip3_LH_C_1_2_5 -> 
          (let rec t_2_9 = (((zip3_d0_d0 _lh_zip3_LH_C_1_2_4) _lh_zip3_LH_C_1_2_5) _lh_zip3_LH_C_1_1_2) in
            (let rec h_2_8 = (let rec _lh_pic_LH_P3_2_3 = _lh_zip3_LH_C_0_1_5 in
              (let rec _lh_pic_LH_P3_1_3 = _lh_zip3_LH_C_0_1_7 in
                (let rec _lh_pic_LH_P3_0_3 = _lh_zip3_LH_C_0_1_6 in
                  (fun _lh_dummy_9 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_3)) ((table_d0_d0 _lh_pic_LH_P3_1_3) _lh_pic_LH_P3_2_3)))))) in
              (fun f_2_7 -> 
                (`LH_C((f_2_7 h_2_8), ((map_d1_d0 f_2_7) t_2_9))))))))) in
      (let rec _lh_zip3_LH_C_0_1_8 = 31 in
        (fun _lh_zip3_LH_C_0_1_9 _lh_zip3_LH_C_0_2_0 _lh_zip3_LH_C_1_2_6 _lh_zip3_LH_C_1_2_7 -> 
          (let rec t_3_0 = (((zip3_d0_d0 _lh_zip3_LH_C_1_2_6) _lh_zip3_LH_C_1_2_7) _lh_zip3_LH_C_1_1_1) in
            (let rec h_2_9 = (let rec _lh_pic_LH_P3_2_4 = _lh_zip3_LH_C_0_1_8 in
              (let rec _lh_pic_LH_P3_1_4 = _lh_zip3_LH_C_0_2_0 in
                (let rec _lh_pic_LH_P3_0_4 = _lh_zip3_LH_C_0_1_9 in
                  (fun _lh_dummy_1_0 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_4)) ((table_d0_d0 _lh_pic_LH_P3_1_4) _lh_pic_LH_P3_2_4)))))) in
              (fun f_2_8 -> 
                (`LH_C((f_2_8 h_2_9), ((map_d1_d0 f_2_8) t_3_0))))))))) in
      (let rec _lh_zip3_LH_C_0_2_1 = 31 in
        (fun _lh_zip3_LH_C_0_2_2 _lh_zip3_LH_C_0_2_3 _lh_zip3_LH_C_1_2_8 _lh_zip3_LH_C_1_2_9 -> 
          (let rec t_3_1 = (((zip3_d0_d0 _lh_zip3_LH_C_1_2_8) _lh_zip3_LH_C_1_2_9) _lh_zip3_LH_C_1_1_0) in
            (let rec h_3_0 = (let rec _lh_pic_LH_P3_2_5 = _lh_zip3_LH_C_0_2_1 in
              (let rec _lh_pic_LH_P3_1_5 = _lh_zip3_LH_C_0_2_3 in
                (let rec _lh_pic_LH_P3_0_5 = _lh_zip3_LH_C_0_2_2 in
                  (fun _lh_dummy_1_1 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_5)) ((table_d0_d0 _lh_pic_LH_P3_1_5) _lh_pic_LH_P3_2_5)))))) in
              (fun f_2_9 -> 
                (`LH_C((f_2_9 h_3_0), ((map_d1_d0 f_2_9) t_3_1))))))))) in
      (let rec _lh_zip3_LH_C_0_2_4 = 30 in
        (fun _lh_zip3_LH_C_0_2_5 _lh_zip3_LH_C_0_2_6 _lh_zip3_LH_C_1_3_0 _lh_zip3_LH_C_1_3_1 -> 
          (let rec t_3_2 = (((zip3_d0_d0 _lh_zip3_LH_C_1_3_0) _lh_zip3_LH_C_1_3_1) _lh_zip3_LH_C_1_9) in
            (let rec h_3_1 = (let rec _lh_pic_LH_P3_2_6 = _lh_zip3_LH_C_0_2_4 in
              (let rec _lh_pic_LH_P3_1_6 = _lh_zip3_LH_C_0_2_6 in
                (let rec _lh_pic_LH_P3_0_6 = _lh_zip3_LH_C_0_2_5 in
                  (fun _lh_dummy_1_2 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_6)) ((table_d0_d0 _lh_pic_LH_P3_1_6) _lh_pic_LH_P3_2_6)))))) in
              (fun f_3_0 -> 
                (`LH_C((f_3_0 h_3_1), ((map_d1_d0 f_3_0) t_3_2))))))))) in
      (let rec _lh_zip3_LH_C_0_2_7 = 31 in
        (fun _lh_zip3_LH_C_0_2_8 _lh_zip3_LH_C_0_2_9 _lh_zip3_LH_C_1_3_2 _lh_zip3_LH_C_1_3_3 -> 
          (let rec t_3_3 = (((zip3_d0_d0 _lh_zip3_LH_C_1_3_2) _lh_zip3_LH_C_1_3_3) _lh_zip3_LH_C_1_8) in
            (let rec h_3_2 = (let rec _lh_pic_LH_P3_2_7 = _lh_zip3_LH_C_0_2_7 in
              (let rec _lh_pic_LH_P3_1_7 = _lh_zip3_LH_C_0_2_9 in
                (let rec _lh_pic_LH_P3_0_7 = _lh_zip3_LH_C_0_2_8 in
                  (fun _lh_dummy_1_3 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_7)) ((table_d0_d0 _lh_pic_LH_P3_1_7) _lh_pic_LH_P3_2_7)))))) in
              (fun f_3_1 -> 
                (`LH_C((f_3_1 h_3_2), ((map_d1_d0 f_3_1) t_3_3))))))))) in
      (let rec _lh_zip3_LH_C_0_3_0 = 30 in
        (fun _lh_zip3_LH_C_0_3_1 _lh_zip3_LH_C_0_3_2 _lh_zip3_LH_C_1_3_4 _lh_zip3_LH_C_1_3_5 -> 
          (let rec t_3_4 = (((zip3_d0_d0 _lh_zip3_LH_C_1_3_4) _lh_zip3_LH_C_1_3_5) _lh_zip3_LH_C_1_7) in
            (let rec h_3_3 = (let rec _lh_pic_LH_P3_2_8 = _lh_zip3_LH_C_0_3_0 in
              (let rec _lh_pic_LH_P3_1_8 = _lh_zip3_LH_C_0_3_2 in
                (let rec _lh_pic_LH_P3_0_8 = _lh_zip3_LH_C_0_3_1 in
                  (fun _lh_dummy_1_4 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_8)) ((table_d0_d0 _lh_pic_LH_P3_1_8) _lh_pic_LH_P3_2_8)))))) in
              (fun f_3_2 -> 
                (`LH_C((f_3_2 h_3_3), ((map_d1_d0 f_3_2) t_3_4))))))))) in
      (let rec _lh_zip3_LH_C_0_3_3 = 31 in
        (fun _lh_zip3_LH_C_0_3_4 _lh_zip3_LH_C_0_3_5 _lh_zip3_LH_C_1_3_6 _lh_zip3_LH_C_1_3_7 -> 
          (let rec t_3_5 = (((zip3_d0_d0 _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_3_7) _lh_zip3_LH_C_1_6) in
            (let rec h_3_4 = (let rec _lh_pic_LH_P3_2_9 = _lh_zip3_LH_C_0_3_3 in
              (let rec _lh_pic_LH_P3_1_9 = _lh_zip3_LH_C_0_3_5 in
                (let rec _lh_pic_LH_P3_0_9 = _lh_zip3_LH_C_0_3_4 in
                  (fun _lh_dummy_1_5 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_9)) ((table_d0_d0 _lh_pic_LH_P3_1_9) _lh_pic_LH_P3_2_9)))))) in
              (fun f_3_3 -> 
                (`LH_C((f_3_3 h_3_4), ((map_d1_d0 f_3_3) t_3_5))))))))) in
      (let rec _lh_zip3_LH_C_0_3_6 = feb_1 in
        (fun _lh_zip3_LH_C_0_3_7 _lh_zip3_LH_C_0_3_8 _lh_zip3_LH_C_1_3_8 _lh_zip3_LH_C_1_3_9 -> 
          (let rec t_3_6 = (((zip3_d0_d0 _lh_zip3_LH_C_1_3_8) _lh_zip3_LH_C_1_3_9) _lh_zip3_LH_C_1_5) in
            (let rec h_3_5 = (let rec _lh_pic_LH_P3_2_1_0 = _lh_zip3_LH_C_0_3_6 in
              (let rec _lh_pic_LH_P3_1_1_0 = _lh_zip3_LH_C_0_3_8 in
                (let rec _lh_pic_LH_P3_0_1_0 = _lh_zip3_LH_C_0_3_7 in
                  (fun _lh_dummy_1_6 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_1_0)) ((table_d0_d0 _lh_pic_LH_P3_1_1_0) _lh_pic_LH_P3_2_1_0)))))) in
              (fun f_3_4 -> 
                (`LH_C((f_3_4 h_3_5), ((map_d1_d0 f_3_4) t_3_6))))))))) in
      (let rec _lh_zip3_LH_C_0_3_9 = 31 in
        (fun _lh_zip3_LH_C_0_4_0 _lh_zip3_LH_C_0_4_1 _lh_zip3_LH_C_1_4_0 _lh_zip3_LH_C_1_4_1 -> 
          (let rec t_3_7 = (((zip3_d0_d0 _lh_zip3_LH_C_1_4_0) _lh_zip3_LH_C_1_4_1) _lh_zip3_LH_C_1_4) in
            (let rec h_3_6 = (let rec _lh_pic_LH_P3_2_1_1 = _lh_zip3_LH_C_0_3_9 in
              (let rec _lh_pic_LH_P3_1_1_1 = _lh_zip3_LH_C_0_4_1 in
                (let rec _lh_pic_LH_P3_0_1_1 = _lh_zip3_LH_C_0_4_0 in
                  (fun _lh_dummy_1_7 -> 
                    ((mappend_d8_d0 (title_d0_d0 _lh_pic_LH_P3_0_1_1)) ((table_d0_d0 _lh_pic_LH_P3_1_1_1) _lh_pic_LH_P3_2_1_1)))))) in
              (fun f_3_5 -> 
                (`LH_C((f_3_5 h_3_6), ((map_d1_d0 f_3_5) t_3_7))))))))))
and months_d0_d0 _lh_months_arg1_0 =
  (((zip3_d0_d0 monthNames_d0_d0) (firstDays_d0_d0 _lh_months_arg1_0)) (monthLengths_d1_d0 _lh_months_arg1_0))
and pad_d0_d0 _lh_pad_arg1_0 =
  ((mappend_d5_d0 (((zipWith_d1_d0 mappend_d6_d0) (((zipWith_d2_d0 mappend_d7_d0) (side_d0_d0 0)) _lh_pad_arg1_0)) (side_d1_d0 0))) (end_d0_d0 0))
and rjustify_d0_d0 _lh_rjustify_arg1_0 _lh_rjustify_arg2_0 =
  ((mappend_d1_d1_d0 (space_d2_d0 (_lh_rjustify_arg1_0 - (length_d1_d0 _lh_rjustify_arg2_0)))) _lh_rjustify_arg2_0)
and scanl_d0_d0 _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (let rec t_2_0 = (let rec _lh_matchIdent_0 = _lh_scanl_arg3_0 in
    ((_lh_matchIdent_0 _lh_scanl_arg1_0) _lh_scanl_arg2_0)) in
    (let rec h_1_9 = _lh_scanl_arg2_0 in
      (fun f_1_7 -> 
        (let rec t_2_1 = ((map_d2_d0 f_1_7) t_2_0) in
          (let rec h_2_0 = (f_1_7 h_1_9) in
            (fun n_1 -> 
              (let rec _lh_zip3_LH_C_1_1 = ((take_d1_d0 (n_1 - 1)) t_2_1) in
                (let rec _lh_zip3_LH_C_0_1 = h_2_0 in
                  (fun _lh_zip3_LH_C_0_2 _lh_zip3_LH_C_1_2 _lh_zip3_arg3_1 -> 
                    (let rec _lh_matchIdent_1 = _lh_zip3_arg3_1 in
                      ((((_lh_matchIdent_1 _lh_zip3_LH_C_0_2) _lh_zip3_LH_C_0_1) _lh_zip3_LH_C_1_2) _lh_zip3_LH_C_1_1)))))))))))
and side_d0_d0 _lh_side_arg1_1 =
  (emptyPic_d2_d0 (let rec _lh_emptyPic_LH_P2_1_3 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_3 = 8 in
      (fun _lh_dummy_2_0 -> 
        ((copy_d6_d0 _lh_emptyPic_LH_P2_0_3) ((copy_d7_d0 _lh_emptyPic_LH_P2_1_3) ' '))))))
and side_d1_d0 _lh_side_arg1_0 =
  (emptyPic_d3_d0 (let rec _lh_emptyPic_LH_P2_1_2 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_2 = 8 in
      (fun _lh_dummy_1_9 -> 
        ((copy_d8_d0 _lh_emptyPic_LH_P2_0_2) ((copy_d9_d0 _lh_emptyPic_LH_P2_1_2) ' '))))))
and space_d0_d0 _lh_space_arg1_3 =
  ((copy_d0_d0 _lh_space_arg1_3) ' ')
and space_d1_d0 _lh_space_arg1_2 =
  ((copy_d1_d0 _lh_space_arg1_2) ' ')
and space_d2_d0 _lh_space_arg1_4 =
  ((copy_d1_d0_d0 _lh_space_arg1_4) ' ')
and space_d3_d0 _lh_space_arg1_0 =
  ((copy_d1_d1_d0 _lh_space_arg1_0) ' ')
and space_d4_d0 _lh_space_arg1_1 =
  ((copy_d1_d2_d0 _lh_space_arg1_1) ' ')
and spread_d0_d0 _lh_spread_arg1_0 =
  ((foldr1_d0_d0 (fun a_1 b_1 -> 
    (((zipWith_d0_d0 mappend_d3_d0) a_1) b_1))) _lh_spread_arg1_0)
and spread_d1_d0 _lh_spread_arg1_1 =
  ((foldr1_d2_d0 (fun a_4 b_3 -> 
    (((zipWith_d3_d0 mappend_d9_d0) a_4) b_3))) _lh_spread_arg1_1)
and stack_d0_d0 _lh_stack_arg1_1 =
  ((foldr1_d1_d0 (fun a_7 b_6 -> 
    ((mappend_d4_d0 a_7) b_6))) _lh_stack_arg1_1)
and stack_d1_d0 _lh_stack_arg1_0 =
  ((foldr1_d3_d0 (fun a_6 b_5 -> 
    ((mappend_d1_d0_d0 a_6) b_5))) _lh_stack_arg1_0)
and table_d0_d0 _lh_table_arg1_0 _lh_table_arg2_0 =
  ((mappend_d1_d2_d0 daynames_d0_d0) ((entries_d0_d0 _lh_table_arg1_0) _lh_table_arg2_0))
and testCalendar_nofib_d0_d0 _lh_testCalendar_nofib_arg1_0 =
  ((map_d6_d0 (fun n_5 -> 
    (length_d3_d0 (cal_d0_d0 n_5)))) ((enumFromTo_d1_d0 2008) (2008 + _lh_testCalendar_nofib_arg1_0)))
and title_d0_d0 _lh_title_arg1_0 =
  (let rec t_4_6 = (fun ys_3_7 -> 
    ys_3_7) in
    (let rec h_4_4 = ((cjustify_d1_d0 21) _lh_title_arg1_0) in
      (fun ys_3_8 -> 
        (`LH_C(h_4_4, ((mappend_d8_d0 t_4_6) ys_3_8))))))
and unlines_d0_d0 _lh_unlines_arg1_0 =
  (concat_d0_d0 ((map_d5_d0 (fun l_0 -> 
    ((mappend_d1_d7_d0 l_0) (let rec t_4_1 = (fun ys_3_2 -> 
      ys_3_2) in
      (let rec h_4_0 = 'n' in
        (fun ys_3_3 -> 
          (let rec t_4_2 = ((mappend_d1_d6_d0 t_4_1) ys_3_3) in
            (fun _lh_dummy_1_8 -> 
              (1 + (length_d3_d0 t_4_2)))))))))) _lh_unlines_arg1_0));;

(* lumberhack_pop_out *)
let rec concat_d0_d0_d0 lss_2 =
  (lss_2 99);;
let rec concat_d0_d0_d1 lss_1 =
  (lss_1 99);;
let rec copy_d1_d0_d0 _lh_copy_arg1_3_0 _lh_copy_arg2_3_0 =
  (if (_lh_copy_arg1_3_0 > 0) then
    (`LH_C(_lh_copy_arg2_3_0, ((copy_d1_d0_d0 (_lh_copy_arg1_3_0 - 1)) _lh_copy_arg2_3_0)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d0 _lh_copy_arg1_1_8 _lh_copy_arg2_1_8 =
  (if (_lh_copy_arg1_1_8 > 0) then
    (`LH_C(_lh_copy_arg2_1_8, ((copy_d1_d2_d0_d0 (_lh_copy_arg1_1_8 - 1)) _lh_copy_arg2_1_8)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d1 _lh_copy_arg1_3_1 _lh_copy_arg2_3_1 =
  (if (_lh_copy_arg1_3_1 > 0) then
    (`LH_C(_lh_copy_arg2_3_1, ((copy_d1_d2_d0_d1 (_lh_copy_arg1_3_1 - 1)) _lh_copy_arg2_3_1)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d1_d0 _lh_copy_arg1_3_9 _lh_copy_arg2_3_9 =
  (if (_lh_copy_arg1_3_9 > 0) then
    (`LH_C(_lh_copy_arg2_3_9, ((copy_d1_d2_d0_d1_d0 (_lh_copy_arg1_3_9 - 1)) _lh_copy_arg2_3_9)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d1_d1 _lh_copy_arg1_2_3 _lh_copy_arg2_2_3 =
  (if (_lh_copy_arg1_2_3 > 0) then
    (`LH_C(_lh_copy_arg2_2_3, ((copy_d1_d2_d0_d1_d1 (_lh_copy_arg1_2_3 - 1)) _lh_copy_arg2_2_3)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d2 _lh_copy_arg1_4_6 _lh_copy_arg2_4_6 =
  (if (_lh_copy_arg1_4_6 > 0) then
    (`LH_C(_lh_copy_arg2_4_6, ((copy_d1_d2_d0_d2 (_lh_copy_arg1_4_6 - 1)) _lh_copy_arg2_4_6)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d3 _lh_copy_arg1_2_1 _lh_copy_arg2_2_1 =
  (if (_lh_copy_arg1_2_1 > 0) then
    (`LH_C(_lh_copy_arg2_2_1, ((copy_d1_d2_d0_d3 (_lh_copy_arg1_2_1 - 1)) _lh_copy_arg2_2_1)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d4 _lh_copy_arg1_3_2 _lh_copy_arg2_3_2 =
  (if (_lh_copy_arg1_3_2 > 0) then
    (`LH_C(_lh_copy_arg2_3_2, ((copy_d1_d2_d0_d4 (_lh_copy_arg1_3_2 - 1)) _lh_copy_arg2_3_2)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d5 _lh_copy_arg1_4_8 _lh_copy_arg2_4_8 =
  (if (_lh_copy_arg1_4_8 > 0) then
    (`LH_C(_lh_copy_arg2_4_8, ((copy_d1_d2_d0_d5 (_lh_copy_arg1_4_8 - 1)) _lh_copy_arg2_4_8)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d6 _lh_copy_arg1_4_3 _lh_copy_arg2_4_3 =
  (if (_lh_copy_arg1_4_3 > 0) then
    (`LH_C(_lh_copy_arg2_4_3, ((copy_d1_d2_d0_d6 (_lh_copy_arg1_4_3 - 1)) _lh_copy_arg2_4_3)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d7 _lh_copy_arg1_4_1 _lh_copy_arg2_4_1 =
  (if (_lh_copy_arg1_4_1 > 0) then
    (`LH_C(_lh_copy_arg2_4_1, ((copy_d1_d2_d0_d7 (_lh_copy_arg1_4_1 - 1)) _lh_copy_arg2_4_1)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d8 _lh_copy_arg1_2_0 _lh_copy_arg2_2_0 =
  (if (_lh_copy_arg1_2_0 > 0) then
    (`LH_C(_lh_copy_arg2_2_0, ((copy_d1_d2_d0_d8 (_lh_copy_arg1_2_0 - 1)) _lh_copy_arg2_2_0)))
  else
    (`LH_N));;
let rec copy_d1_d2_d0_d9 _lh_copy_arg1_2_4 _lh_copy_arg2_2_4 =
  (if (_lh_copy_arg1_2_4 > 0) then
    (`LH_C(_lh_copy_arg2_2_4, ((copy_d1_d2_d0_d9 (_lh_copy_arg1_2_4 - 1)) _lh_copy_arg2_2_4)))
  else
    (`LH_N));;
let rec copy_d3_d0_d0 _lh_copy_arg1_2_7 _lh_copy_arg2_2_7 =
  (if (_lh_copy_arg1_2_7 > 0) then
    (`LH_C(_lh_copy_arg2_2_7, ((copy_d3_d0_d0 (_lh_copy_arg1_2_7 - 1)) _lh_copy_arg2_2_7)))
  else
    (`LH_N));;
let rec copy_d4_d0_d0 _lh_copy_arg1_5_2 _lh_copy_arg2_5_2 =
  (if (_lh_copy_arg1_5_2 > 0) then
    (`LH_C(_lh_copy_arg2_5_2, ((copy_d4_d0_d0 (_lh_copy_arg1_5_2 - 1)) _lh_copy_arg2_5_2)))
  else
    (`LH_N));;
let rec copy_d5_d0_d0 _lh_copy_arg1_1_5 _lh_copy_arg2_1_5 =
  (if (_lh_copy_arg1_1_5 > 0) then
    (`LH_C(_lh_copy_arg2_1_5, ((copy_d5_d0_d0 (_lh_copy_arg1_1_5 - 1)) _lh_copy_arg2_1_5)))
  else
    (`LH_N));;
let rec copy_d9_d0_d0 _lh_copy_arg1_1_9 _lh_copy_arg2_1_9 =
  (if (_lh_copy_arg1_1_9 > 0) then
    (`LH_C(_lh_copy_arg2_1_9, ((copy_d9_d0_d0 (_lh_copy_arg1_1_9 - 1)) _lh_copy_arg2_1_9)))
  else
    (`LH_N));;
let rec drop_d0_d0_d0 _lh_drop_arg1_5 _lh_drop_arg2_5 =
  (match _lh_drop_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_5, _lh_drop_LH_C_1_5) -> 
      (if (_lh_drop_arg1_5 > 0) then
        ((drop_d0_d0_d0 (_lh_drop_arg1_5 - 1)) _lh_drop_LH_C_1_5)
      else
        _lh_drop_LH_C_1_5)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d0 _lh_drop_arg1_7 _lh_drop_arg2_7 =
  (match _lh_drop_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_7, _lh_drop_LH_C_1_7) -> 
      (if (_lh_drop_arg1_7 > 0) then
        ((drop_d1_d0_d0 (_lh_drop_arg1_7 - 1)) _lh_drop_LH_C_1_7)
      else
        _lh_drop_LH_C_1_7)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d1 _lh_drop_arg1_9 _lh_drop_arg2_9 =
  (match _lh_drop_arg2_9 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_9, _lh_drop_LH_C_1_9) -> 
      (if (_lh_drop_arg1_9 > 0) then
        ((drop_d1_d0_d1 (_lh_drop_arg1_9 - 1)) _lh_drop_LH_C_1_9)
      else
        _lh_drop_LH_C_1_9)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d1_d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop_d1_d0_d1_d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        _lh_drop_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d1_d1 _lh_drop_arg1_1_3 _lh_drop_arg2_1_3 =
  (match _lh_drop_arg2_1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_3, _lh_drop_LH_C_1_1_3) -> 
      (if (_lh_drop_arg1_1_3 > 0) then
        ((drop_d1_d0_d1_d1 (_lh_drop_arg1_1_3 - 1)) _lh_drop_LH_C_1_1_3)
      else
        _lh_drop_LH_C_1_1_3)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d2 _lh_drop_arg1_1_4 _lh_drop_arg2_1_4 =
  (match _lh_drop_arg2_1_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_4, _lh_drop_LH_C_1_1_4) -> 
      (if (_lh_drop_arg1_1_4 > 0) then
        ((drop_d1_d0_d2 (_lh_drop_arg1_1_4 - 1)) _lh_drop_LH_C_1_1_4)
      else
        _lh_drop_LH_C_1_1_4)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d3 _lh_drop_arg1_1_2 _lh_drop_arg2_1_2 =
  (match _lh_drop_arg2_1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_2, _lh_drop_LH_C_1_1_2) -> 
      (if (_lh_drop_arg1_1_2 > 0) then
        ((drop_d1_d0_d3 (_lh_drop_arg1_1_2 - 1)) _lh_drop_LH_C_1_1_2)
      else
        _lh_drop_LH_C_1_1_2)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d4 _lh_drop_arg1_6 _lh_drop_arg2_6 =
  (match _lh_drop_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_6, _lh_drop_LH_C_1_6) -> 
      (if (_lh_drop_arg1_6 > 0) then
        ((drop_d1_d0_d4 (_lh_drop_arg1_6 - 1)) _lh_drop_LH_C_1_6)
      else
        _lh_drop_LH_C_1_6)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d5 _lh_drop_arg1_4 _lh_drop_arg2_4 =
  (match _lh_drop_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_4, _lh_drop_LH_C_1_4) -> 
      (if (_lh_drop_arg1_4 > 0) then
        ((drop_d1_d0_d5 (_lh_drop_arg1_4 - 1)) _lh_drop_LH_C_1_4)
      else
        _lh_drop_LH_C_1_4)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d6 _lh_drop_arg1_1_1 _lh_drop_arg2_1_1 =
  (match _lh_drop_arg2_1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_1, _lh_drop_LH_C_1_1_1) -> 
      (if (_lh_drop_arg1_1_1 > 0) then
        ((drop_d1_d0_d6 (_lh_drop_arg1_1_1 - 1)) _lh_drop_LH_C_1_1_1)
      else
        _lh_drop_LH_C_1_1_1)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d7 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 > 0) then
        ((drop_d1_d0_d7 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3)
      else
        _lh_drop_LH_C_1_3)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d8 _lh_drop_arg1_1_0 _lh_drop_arg2_1_0 =
  (match _lh_drop_arg2_1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_0, _lh_drop_LH_C_1_1_0) -> 
      (if (_lh_drop_arg1_1_0 > 0) then
        ((drop_d1_d0_d8 (_lh_drop_arg1_1_0 - 1)) _lh_drop_LH_C_1_1_0)
      else
        _lh_drop_LH_C_1_1_0)
    | _ -> 
      (failwith "error"));;
let rec drop_d1_d0_d9 _lh_drop_arg1_8 _lh_drop_arg2_8 =
  (match _lh_drop_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_8, _lh_drop_LH_C_1_8) -> 
      (if (_lh_drop_arg1_8 > 0) then
        ((drop_d1_d0_d9 (_lh_drop_arg1_8 - 1)) _lh_drop_LH_C_1_8)
      else
        _lh_drop_LH_C_1_8)
    | _ -> 
      (failwith "error"));;
let rec emptyPic_d0_d0_d0 _lh_emptyPic_arg1_7 =
  (_lh_emptyPic_arg1_7 99);;
let rec emptyPic_d1_d0_d0 _lh_emptyPic_arg1_6 =
  (_lh_emptyPic_arg1_6 99);;
let rec emptyPic_d2_d0_d0 _lh_emptyPic_arg1_5 =
  (_lh_emptyPic_arg1_5 99);;
let rec emptyPic_d3_d0_d0 _lh_emptyPic_arg1_4 =
  (_lh_emptyPic_arg1_4 99);;
let rec enumFromTo_d1_d0_d0 a_3_1 b_2_9 =
  (if (a_3_1 <= b_2_9) then
    (`LH_C(a_3_1, ((enumFromTo_d1_d0_d0 (a_3_1 + 1)) b_2_9)))
  else
    (`LH_N));;
let rec foldr_d0_d0_d0 f_7_9 i_7 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_7_5, t_7_8) -> 
      ((f_7_9 h_7_5) (((foldr_d0_d0_d0 f_7_9) i_7) t_7_8))
    | `LH_N -> 
      i_7);;
let rec foldr_d1_d0_d0 f_2_5_9 i_2_9 ls_1_7_2 =
  (match ls_1_7_2 with
    | `LH_C(h_2_6_2, t_2_6_6) -> 
      ((f_2_5_9 h_2_6_2) (((foldr_d1_d0_d0 f_2_5_9) i_2_9) t_2_6_6))
    | `LH_N -> 
      i_2_9);;
let rec foldr_d2_d0_d0 f_9_5 i_8 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_9_3, t_9_6) -> 
      ((f_9_5 h_9_3) (((foldr_d2_d0_d0 f_9_5) i_8) t_9_6))
    | `LH_N -> 
      i_8);;
let rec foldr_d2_d0_d1 f_2_1_7 i_2_3 ls_1_3_1 =
  (match ls_1_3_1 with
    | `LH_C(h_2_0_5, t_2_0_9) -> 
      ((f_2_1_7 h_2_0_5) (((foldr_d2_d0_d1 f_2_1_7) i_2_3) t_2_0_9))
    | `LH_N -> 
      i_2_3);;
let rec foldr_d2_d0_d1_d0 f_1_1_9 i_1_2 ls_5_8 =
  (match ls_5_8 with
    | `LH_C(h_1_1_4, t_1_1_7) -> 
      ((f_1_1_9 h_1_1_4) (((foldr_d2_d0_d1_d0 f_1_1_9) i_1_2) t_1_1_7))
    | `LH_N -> 
      i_1_2);;
let rec foldr_d2_d0_d1_d1 f_2_4_2 i_2_7 ls_1_5_2 =
  (match ls_1_5_2 with
    | `LH_C(h_2_4_2, t_2_4_6) -> 
      ((f_2_4_2 h_2_4_2) (((foldr_d2_d0_d1_d1 f_2_4_2) i_2_7) t_2_4_6))
    | `LH_N -> 
      i_2_7);;
let rec foldr_d2_d0_d2 f_2_0_0 i_1_9 ls_1_1_9 =
  (match ls_1_1_9 with
    | `LH_C(h_1_8_8, t_1_9_2) -> 
      ((f_2_0_0 h_1_8_8) (((foldr_d2_d0_d2 f_2_0_0) i_1_9) t_1_9_2))
    | `LH_N -> 
      i_1_9);;
let rec foldr_d2_d0_d3 f_1_1_3 i_1_1 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_1_0_9, t_1_1_2) -> 
      ((f_1_1_3 h_1_0_9) (((foldr_d2_d0_d3 f_1_1_3) i_1_1) t_1_1_2))
    | `LH_N -> 
      i_1_1);;
let rec foldr_d2_d0_d4 f_2_0_1 i_2_0 ls_1_2_0 =
  (match ls_1_2_0 with
    | `LH_C(h_1_8_9, t_1_9_3) -> 
      ((f_2_0_1 h_1_8_9) (((foldr_d2_d0_d4 f_2_0_1) i_2_0) t_1_9_3))
    | `LH_N -> 
      i_2_0);;
let rec foldr_d2_d0_d5 f_2_2_4 i_2_5 ls_1_3_7 =
  (match ls_1_3_7 with
    | `LH_C(h_2_1_7, t_2_2_1) -> 
      ((f_2_2_4 h_2_1_7) (((foldr_d2_d0_d5 f_2_2_4) i_2_5) t_2_2_1))
    | `LH_N -> 
      i_2_5);;
let rec foldr_d2_d0_d6 f_9_7 i_9 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_9_8, t_1_0_1) -> 
      ((f_9_7 h_9_8) (((foldr_d2_d0_d6 f_9_7) i_9) t_1_0_1))
    | `LH_N -> 
      i_9);;
let rec foldr_d2_d0_d7 f_1_7_8 i_1_6 ls_1_0_0 =
  (match ls_1_0_0 with
    | `LH_C(h_1_7_1, t_1_7_5) -> 
      ((f_1_7_8 h_1_7_1) (((foldr_d2_d0_d7 f_1_7_8) i_1_6) t_1_7_5))
    | `LH_N -> 
      i_1_6);;
let rec foldr_d2_d0_d8 f_2_3_3 i_2_6 ls_1_4_8 =
  (match ls_1_4_8 with
    | `LH_C(h_2_3_3, t_2_3_7) -> 
      ((f_2_3_3 h_2_3_3) (((foldr_d2_d0_d8 f_2_3_3) i_2_6) t_2_3_7))
    | `LH_N -> 
      i_2_6);;
let rec foldr_d2_d0_d9 f_4_7 i_4 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_5_0, t_5_2) -> 
      ((f_4_7 h_5_0) (((foldr_d2_d0_d9 f_4_7) i_4) t_5_2))
    | `LH_N -> 
      i_4);;
let rec foldr_d3_d0_d0 f_2_4_5 i_2_8 ls_1_5_5 =
  (match ls_1_5_5 with
    | `LH_C(h_2_4_3, t_2_4_7) -> 
      ((f_2_4_5 h_2_4_3) (((foldr_d3_d0_d0 f_2_4_5) i_2_8) t_2_4_7))
    | `LH_N -> 
      i_2_8);;
let rec foldr_d3_d0_d1 f_1_4_3 i_1_4 ls_7_2 =
  (match ls_7_2 with
    | `LH_C(h_1_4_0, t_1_4_4) -> 
      ((f_1_4_3 h_1_4_0) (((foldr_d3_d0_d1 f_1_4_3) i_1_4) t_1_4_4))
    | `LH_N -> 
      i_1_4);;
let rec foldr_d3_d0_d1_d0 f_6_0 i_5 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_6_3, t_6_5) -> 
      ((f_6_0 h_6_3) (((foldr_d3_d0_d1_d0 f_6_0) i_5) t_6_5))
    | `LH_N -> 
      i_5);;
let rec foldr_d3_d0_d1_d1 f_7_1 i_6 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_6_6, t_6_8) -> 
      ((f_7_1 h_6_6) (((foldr_d3_d0_d1_d1 f_7_1) i_6) t_6_8))
    | `LH_N -> 
      i_6);;
let rec foldr_d3_d0_d2 f_1_1_1 i_1_0 ls_5_2 =
  (match ls_5_2 with
    | `LH_C(h_1_0_7, t_1_1_0) -> 
      ((f_1_1_1 h_1_0_7) (((foldr_d3_d0_d2 f_1_1_1) i_1_0) t_1_1_0))
    | `LH_N -> 
      i_1_0);;
let rec foldr_d3_d0_d3 f_2_2_3 i_2_4 ls_1_3_6 =
  (match ls_1_3_6 with
    | `LH_C(h_2_1_6, t_2_2_0) -> 
      ((f_2_2_3 h_2_1_6) (((foldr_d3_d0_d3 f_2_2_3) i_2_4) t_2_2_0))
    | `LH_N -> 
      i_2_4);;
let rec foldr_d3_d0_d4 f_2_0_9 i_2_1 ls_1_2_6 =
  (match ls_1_2_6 with
    | `LH_C(h_1_9_7, t_2_0_1) -> 
      ((f_2_0_9 h_1_9_7) (((foldr_d3_d0_d4 f_2_0_9) i_2_1) t_2_0_1))
    | `LH_N -> 
      i_2_1);;
let rec foldr_d3_d0_d5 f_2_1_1 i_2_2 ls_1_2_9 =
  (match ls_1_2_9 with
    | `LH_C(h_2_0_2, t_2_0_6) -> 
      ((f_2_1_1 h_2_0_2) (((foldr_d3_d0_d5 f_2_1_1) i_2_2) t_2_0_6))
    | `LH_N -> 
      i_2_2);;
let rec foldr_d3_d0_d6 f_1_5_1 i_1_5 ls_7_9 =
  (match ls_7_9 with
    | `LH_C(h_1_4_7, t_1_5_1) -> 
      ((f_1_5_1 h_1_4_7) (((foldr_d3_d0_d6 f_1_5_1) i_1_5) t_1_5_1))
    | `LH_N -> 
      i_1_5);;
let rec foldr_d3_d0_d7 f_1_2_3 i_1_3 ls_6_1 =
  (match ls_6_1 with
    | `LH_C(h_1_1_8, t_1_2_1) -> 
      ((f_1_2_3 h_1_1_8) (((foldr_d3_d0_d7 f_1_2_3) i_1_3) t_1_2_1))
    | `LH_N -> 
      i_1_3);;
let rec foldr_d3_d0_d8 f_1_9_9 i_1_8 ls_1_1_8 =
  (match ls_1_1_8 with
    | `LH_C(h_1_8_7, t_1_9_1) -> 
      ((f_1_9_9 h_1_8_7) (((foldr_d3_d0_d8 f_1_9_9) i_1_8) t_1_9_1))
    | `LH_N -> 
      i_1_8);;
let rec foldr_d3_d0_d9 f_1_9_1 i_1_7 ls_1_1_2 =
  (match ls_1_1_2 with
    | `LH_C(h_1_7_8, t_1_8_2) -> 
      ((f_1_9_1 h_1_7_8) (((foldr_d3_d0_d9 f_1_9_1) i_1_7) t_1_8_2))
    | `LH_N -> 
      i_1_7);;
let rec jan1st_d0_d0_d0 _lh_jan1st_arg1_1 =
  (let rec last_1 = (_lh_jan1st_arg1_1 - 1) in
    (((((((_lh_jan1st_arg1_1 + last_1) / 4) - last_1) / 100) + last_1) / 400) mod 7));;
let rec leap_d0_d0_d0 _lh_leap_arg1_3 =
  (if ((_lh_leap_arg1_3 mod 100) = 0) then
    ((_lh_leap_arg1_3 mod 400) = 0)
  else
    ((_lh_leap_arg1_3 mod 4) = 0));;
let rec leap_d1_d0_d0 _lh_leap_arg1_2 =
  (if ((_lh_leap_arg1_2 mod 100) = 0) then
    ((_lh_leap_arg1_2 mod 400) = 0)
  else
    ((_lh_leap_arg1_2 mod 4) = 0));;
let rec length_d0_d0_d0 ls_1_3_9 =
  (match ls_1_3_9 with
    | `LH_C(h_2_2_2, t_2_2_6) -> 
      (1 + (length_d0_d0_d0 t_2_2_6))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0 ls_9_2 =
  (match ls_9_2 with
    | `LH_C(h_1_6_3, t_1_6_7) -> 
      (1 + (length_d1_d0_d0 t_1_6_7))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d1 ls_1_6_4 =
  (match ls_1_6_4 with
    | `LH_C(h_2_5_4, t_2_5_8) -> 
      (1 + (length_d1_d0_d1 t_2_5_8))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d1_d0 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_1_1_2, t_1_1_5) -> 
      (1 + (length_d1_d0_d1_d0 t_1_1_5))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d1_d1 ls_1_6_1 =
  (match ls_1_6_1 with
    | `LH_C(h_2_4_9, t_2_5_3) -> 
      (1 + (length_d1_d0_d1_d1 t_2_5_3))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d2 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_6_7, t_6_9) -> 
      (1 + (length_d1_d0_d2 t_6_9))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d3 ls_8_2 =
  (match ls_8_2 with
    | `LH_C(h_1_5_2, t_1_5_6) -> 
      (1 + (length_d1_d0_d3 t_1_5_6))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d4 ls_1_7_0 =
  (match ls_1_7_0 with
    | `LH_C(h_2_5_9, t_2_6_3) -> 
      (1 + (length_d1_d0_d4 t_2_6_3))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d5 ls_1_4_2 =
  (match ls_1_4_2 with
    | `LH_C(h_2_2_9, t_2_3_3) -> 
      (1 + (length_d1_d0_d5 t_2_3_3))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d6 ls_1_4_0 =
  (match ls_1_4_0 with
    | `LH_C(h_2_2_6, t_2_3_0) -> 
      (1 + (length_d1_d0_d6 t_2_3_0))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d7 ls_8_1 =
  (match ls_8_1 with
    | `LH_C(h_1_5_1, t_1_5_5) -> 
      (1 + (length_d1_d0_d7 t_1_5_5))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d8 ls_1_6_2 =
  (match ls_1_6_2 with
    | `LH_C(h_2_5_1, t_2_5_5) -> 
      (1 + (length_d1_d0_d8 t_2_5_5))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_6_2, t_6_4) -> 
      (1 + (length_d1_d0_d9 t_6_4))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d0 ls_1_4_7 =
  (match ls_1_4_7 with
    | `LH_C(h_2_3_2, t_2_3_6) -> 
      (1 + (length_d2_d0_d0 t_2_3_6))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d1 ls_8_4 =
  (match ls_8_4 with
    | `LH_C(h_1_5_5, t_1_5_9) -> 
      (1 + (length_d2_d0_d1 t_1_5_9))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d1_d0 ls_6_0 =
  (match ls_6_0 with
    | `LH_C(h_1_1_7, t_1_2_0) -> 
      (1 + (length_d2_d0_d1_d0 t_1_2_0))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d1_d1 ls_8_7 =
  (match ls_8_7 with
    | `LH_C(h_1_5_7, t_1_6_1) -> 
      (1 + (length_d2_d0_d1_d1 t_1_6_1))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d2 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_1_1_9, t_1_2_2) -> 
      (1 + (length_d2_d0_d2 t_1_2_2))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d3 ls_1_6_8 =
  (match ls_1_6_8 with
    | `LH_C(h_2_5_8, t_2_6_2) -> 
      (1 + (length_d2_d0_d3 t_2_6_2))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d4 ls_1_3_3 =
  (match ls_1_3_3 with
    | `LH_C(h_2_1_1, t_2_1_5) -> 
      (1 + (length_d2_d0_d4 t_2_1_5))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d5 ls_1_5_6 =
  (match ls_1_5_6 with
    | `LH_C(h_2_4_4, t_2_4_8) -> 
      (1 + (length_d2_d0_d5 t_2_4_8))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d6 ls_1_5_9 =
  (match ls_1_5_9 with
    | `LH_C(h_2_4_7, t_2_5_1) -> 
      (1 + (length_d2_d0_d6 t_2_5_1))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d7 ls_1_2_1 =
  (match ls_1_2_1 with
    | `LH_C(h_1_9_0, t_1_9_4) -> 
      (1 + (length_d2_d0_d7 t_1_9_4))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d8 ls_1_1_5 =
  (match ls_1_1_5 with
    | `LH_C(h_1_8_1, t_1_8_5) -> 
      (1 + (length_d2_d0_d8 t_1_8_5))
    | `LH_N -> 
      0);;
let rec length_d2_d0_d9 ls_1_2_8 =
  (match ls_1_2_8 with
    | `LH_C(h_2_0_1, t_2_0_5) -> 
      (1 + (length_d2_d0_d9 t_2_0_5))
    | `LH_N -> 
      0);;
let rec length_d3_d0_d0 ls_1_3_2 =
  (ls_1_3_2 99);;
let rec length_d3_d0_d1 ls_1_1_0 =
  (ls_1_1_0 99);;
let rec length_d3_d0_d2 ls_1_5_8 =
  (ls_1_5_8 99);;
let rec mappend_d0_d0_d0 xs_4_7 ys_9_0 =
  (match xs_4_7 with
    | `LH_C(h_9_2, t_9_5) -> 
      (`LH_C(h_9_2, ((mappend_d0_d0_d0 t_9_5) ys_9_0)))
    | `LH_N -> 
      ys_9_0);;
let rec mappend_d1_d0_d0 xs_1_3_0 ys_2_4_4 =
  (xs_1_3_0 ys_2_4_4);;
let rec mappend_d1_d0_d0_d0 xs_5_0 ys_9_5 =
  (match xs_5_0 with
    | `LH_C(h_9_9, t_1_0_2) -> 
      (`LH_C(h_9_9, ((mappend_d1_d0_d0_d0 t_1_0_2) ys_9_5)))
    | `LH_N -> 
      ys_9_5);;
let rec mappend_d1_d0_d0_d1 xs_1_0_2 ys_1_9_6 =
  (match xs_1_0_2 with
    | `LH_C(h_1_6_7, t_1_7_1) -> 
      (`LH_C(h_1_6_7, ((mappend_d1_d0_d0_d1 t_1_7_1) ys_1_9_6)))
    | `LH_N -> 
      ys_1_9_6);;
let rec mappend_d1_d0_d0_d1_d0 xs_1_5_6 ys_2_8_0 =
  (match xs_1_5_6 with
    | `LH_C(h_2_3_0, t_2_3_4) -> 
      (`LH_C(h_2_3_0, ((mappend_d1_d0_d0_d1_d0 t_2_3_4) ys_2_8_0)))
    | `LH_N -> 
      ys_2_8_0);;
let rec mappend_d1_d0_d0_d1_d1 xs_1_3_3 ys_2_4_9 =
  (match xs_1_3_3 with
    | `LH_C(h_2_0_6, t_2_1_0) -> 
      (`LH_C(h_2_0_6, ((mappend_d1_d0_d0_d1_d1 t_2_1_0) ys_2_4_9)))
    | `LH_N -> 
      ys_2_4_9);;
let rec mappend_d1_d0_d0_d2 xs_4_6 ys_8_9 =
  (match xs_4_6 with
    | `LH_C(h_8_9, t_9_2) -> 
      (`LH_C(h_8_9, ((mappend_d1_d0_d0_d2 t_9_2) ys_8_9)))
    | `LH_N -> 
      ys_8_9);;
let rec mappend_d1_d0_d0_d3 xs_1_6_5 ys_2_9_5 =
  (match xs_1_6_5 with
    | `LH_C(h_2_4_6, t_2_5_0) -> 
      (`LH_C(h_2_4_6, ((mappend_d1_d0_d0_d3 t_2_5_0) ys_2_9_5)))
    | `LH_N -> 
      ys_2_9_5);;
let rec mappend_d1_d0_d0_d4 xs_4_1 ys_8_2 =
  (match xs_4_1 with
    | `LH_C(h_7_2, t_7_5) -> 
      (`LH_C(h_7_2, ((mappend_d1_d0_d0_d4 t_7_5) ys_8_2)))
    | `LH_N -> 
      ys_8_2);;
let rec mappend_d1_d0_d0_d5 xs_9_4 ys_1_7_8 =
  (match xs_9_4 with
    | `LH_C(h_1_5_8, t_1_6_2) -> 
      (`LH_C(h_1_5_8, ((mappend_d1_d0_d0_d5 t_1_6_2) ys_1_7_8)))
    | `LH_N -> 
      ys_1_7_8);;
let rec mappend_d1_d0_d0_d6 xs_1_3_5 ys_2_5_1 =
  (match xs_1_3_5 with
    | `LH_C(h_2_0_7, t_2_1_1) -> 
      (`LH_C(h_2_0_7, ((mappend_d1_d0_d0_d6 t_2_1_1) ys_2_5_1)))
    | `LH_N -> 
      ys_2_5_1);;
let rec mappend_d1_d0_d0_d7 xs_3_5 ys_7_4 =
  (match xs_3_5 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C(h_6_5, ((mappend_d1_d0_d0_d7 t_6_7) ys_7_4)))
    | `LH_N -> 
      ys_7_4);;
let rec mappend_d1_d0_d0_d8 xs_5_2 ys_9_7 =
  (match xs_5_2 with
    | `LH_C(h_1_0_1, t_1_0_4) -> 
      (`LH_C(h_1_0_1, ((mappend_d1_d0_d0_d8 t_1_0_4) ys_9_7)))
    | `LH_N -> 
      ys_9_7);;
let rec mappend_d1_d0_d0_d9 xs_1_7_6 ys_3_1_4 =
  (match xs_1_7_6 with
    | `LH_C(h_2_6_1, t_2_6_5) -> 
      (`LH_C(h_2_6_1, ((mappend_d1_d0_d0_d9 t_2_6_5) ys_3_1_4)))
    | `LH_N -> 
      ys_3_1_4);;
let rec mappend_d1_d0_d1 xs_1_2_5 ys_2_3_7 =
  (xs_1_2_5 ys_2_3_7);;
let rec mappend_d1_d1_d0_d0 xs_5_7 ys_1_0_4 =
  (xs_5_7 ys_1_0_4);;
let rec mappend_d1_d1_d0_d1 xs_7_7 ys_1_4_9 =
  (xs_7_7 ys_1_4_9);;
let rec mappend_d1_d1_d0_d1_d0 xs_1_4_4 ys_2_6_4 =
  (xs_1_4_4 ys_2_6_4);;
let rec mappend_d1_d1_d0_d1_d1 xs_5_5 ys_1_0_2 =
  (xs_5_5 ys_1_0_2);;
let rec mappend_d1_d1_d0_d1_d2 xs_8_4 ys_1_6_0 =
  (xs_8_4 ys_1_6_0);;
let rec mappend_d1_d1_d0_d1_d3 xs_1_2_4 ys_2_3_6 =
  (xs_1_2_4 ys_2_3_6);;
let rec mappend_d1_d1_d0_d1_d4 xs_6_6 ys_1_1_7 =
  (xs_6_6 ys_1_1_7);;
let rec mappend_d1_d1_d0_d1_d5 xs_1_5_0 ys_2_7_2 =
  (xs_1_5_0 ys_2_7_2);;
let rec mappend_d1_d1_d0_d1_d6 xs_1_4_5 ys_2_6_5 =
  (xs_1_4_5 ys_2_6_5);;
let rec mappend_d1_d1_d0_d1_d7 xs_1_6_0 ys_2_9_0 =
  (xs_1_6_0 ys_2_9_0);;
let rec mappend_d1_d1_d0_d1_d8 xs_1_5_2 ys_2_7_6 =
  (xs_1_5_2 ys_2_7_6);;
let rec mappend_d1_d1_d0_d1_d9 xs_7_9 ys_1_5_3 =
  (xs_7_9 ys_1_5_3);;
let rec mappend_d1_d1_d0_d2 xs_7_8 ys_1_5_0 =
  (xs_7_8 ys_1_5_0);;
let rec mappend_d1_d1_d0_d2_d0 xs_1_6_9 ys_3_0_5 =
  (xs_1_6_9 ys_3_0_5);;
let rec mappend_d1_d1_d0_d2_d1 xs_1_7_0 ys_3_0_6 =
  (xs_1_7_0 ys_3_0_6);;
let rec mappend_d1_d1_d0_d2_d2 xs_1_5_4 ys_2_7_8 =
  (xs_1_5_4 ys_2_7_8);;
let rec mappend_d1_d1_d0_d2_d3 xs_6_0 ys_1_0_9 =
  (xs_6_0 ys_1_0_9);;
let rec mappend_d1_d1_d0_d3 xs_2_2 ys_5_5 =
  (xs_2_2 ys_5_5);;
let rec mappend_d1_d1_d0_d4 xs_1_0_1 ys_1_9_5 =
  (xs_1_0_1 ys_1_9_5);;
let rec mappend_d1_d1_d0_d5 xs_1_0_0 ys_1_9_4 =
  (xs_1_0_0 ys_1_9_4);;
let rec mappend_d1_d1_d0_d6 xs_1_3_6 ys_2_5_4 =
  (xs_1_3_6 ys_2_5_4);;
let rec mappend_d1_d1_d0_d7 xs_1_7_7 ys_3_1_5 =
  (xs_1_7_7 ys_3_1_5);;
let rec mappend_d1_d1_d0_d8 xs_1_1_8 ys_2_2_6 =
  (xs_1_1_8 ys_2_2_6);;
let rec mappend_d1_d1_d0_d9 xs_9_7 ys_1_8_5 =
  (xs_9_7 ys_1_8_5);;
let rec mappend_d1_d2_d0_d0 xs_8_6 ys_1_6_2 =
  (xs_8_6 ys_1_6_2);;
let rec mappend_d1_d2_d0_d1 xs_1_0_4 ys_1_9_8 =
  (xs_1_0_4 ys_1_9_8);;
let rec mappend_d1_d2_d0_d1_d0 xs_3_6 ys_7_5 =
  (xs_3_6 ys_7_5);;
let rec mappend_d1_d2_d0_d1_d1 xs_9_5 ys_1_8_1 =
  (xs_9_5 ys_1_8_1);;
let rec mappend_d1_d2_d0_d1_d2 xs_1_0_7 ys_2_0_1 =
  (xs_1_0_7 ys_2_0_1);;
let rec mappend_d1_d2_d0_d1_d3 xs_1_5_1 ys_2_7_3 =
  (xs_1_5_1 ys_2_7_3);;
let rec mappend_d1_d2_d0_d1_d4 xs_1_0_8 ys_2_0_2 =
  (xs_1_0_8 ys_2_0_2);;
let rec mappend_d1_d2_d0_d1_d5 xs_1_8_8 ys_3_3_2 =
  (xs_1_8_8 ys_3_3_2);;
let rec mappend_d1_d2_d0_d1_d6 xs_8_9 ys_1_7_3 =
  (xs_8_9 ys_1_7_3);;
let rec mappend_d1_d2_d0_d1_d7 xs_1_1_7 ys_2_2_3 =
  (xs_1_1_7 ys_2_2_3);;
let rec mappend_d1_d2_d0_d1_d8 xs_7_3 ys_1_2_8 =
  (xs_7_3 ys_1_2_8);;
let rec mappend_d1_d2_d0_d1_d9 xs_1_4_6 ys_2_6_8 =
  (xs_1_4_6 ys_2_6_8);;
let rec mappend_d1_d2_d0_d2 xs_1_7_8 ys_3_1_6 =
  (xs_1_7_8 ys_3_1_6);;
let rec mappend_d1_d2_d0_d2_d0 xs_4_4 ys_8_5 =
  (xs_4_4 ys_8_5);;
let rec mappend_d1_d2_d0_d2_d1 xs_8_5 ys_1_6_1 =
  (xs_8_5 ys_1_6_1);;
let rec mappend_d1_d2_d0_d2_d2 xs_1_0_9 ys_2_0_3 =
  (xs_1_0_9 ys_2_0_3);;
let rec mappend_d1_d2_d0_d2_d3 xs_1_5_5 ys_2_7_9 =
  (xs_1_5_5 ys_2_7_9);;
let rec mappend_d1_d2_d0_d3 xs_7_1 ys_1_2_2 =
  (xs_7_1 ys_1_2_2);;
let rec mappend_d1_d2_d0_d4 xs_1_2_7 ys_2_3_9 =
  (xs_1_2_7 ys_2_3_9);;
let rec mappend_d1_d2_d0_d5 xs_9_6 ys_1_8_2 =
  (xs_9_6 ys_1_8_2);;
let rec mappend_d1_d2_d0_d6 xs_1_1_5 ys_2_2_1 =
  (xs_1_1_5 ys_2_2_1);;
let rec mappend_d1_d2_d0_d7 xs_1_1_4 ys_2_2_0 =
  (xs_1_1_4 ys_2_2_0);;
let rec mappend_d1_d2_d0_d8 xs_5_9 ys_1_0_6 =
  (xs_5_9 ys_1_0_6);;
let rec mappend_d1_d2_d0_d9 xs_1_8_9 ys_3_3_5 =
  (xs_1_8_9 ys_3_3_5);;
let rec mappend_d1_d3_d0_d0 xs_5_1 ys_9_6 =
  (match xs_5_1 with
    | `LH_C(h_1_0_0, t_1_0_3) -> 
      (`LH_C(h_1_0_0, ((mappend_d1_d3_d0_d0 t_1_0_3) ys_9_6)))
    | `LH_N -> 
      ys_9_6);;
let rec mappend_d1_d3_d0_d1 xs_6_4 ys_1_1_5 =
  (match xs_6_4 with
    | `LH_C(h_1_1_3, t_1_1_6) -> 
      (`LH_C(h_1_1_3, ((mappend_d1_d3_d0_d1 t_1_1_6) ys_1_1_5)))
    | `LH_N -> 
      ys_1_1_5);;
let rec mappend_d1_d3_d0_d1_d0 xs_1_8_2 ys_3_2_6 =
  (match xs_1_8_2 with
    | `LH_C(h_2_6_9, t_2_7_3) -> 
      (`LH_C(h_2_6_9, ((mappend_d1_d3_d0_d1_d0 t_2_7_3) ys_3_2_6)))
    | `LH_N -> 
      ys_3_2_6);;
let rec mappend_d1_d3_d0_d1_d1 xs_1_4_9 ys_2_7_1 =
  (match xs_1_4_9 with
    | `LH_C(h_2_2_5, t_2_2_9) -> 
      (`LH_C(h_2_2_5, ((mappend_d1_d3_d0_d1_d1 t_2_2_9) ys_2_7_1)))
    | `LH_N -> 
      ys_2_7_1);;
let rec mappend_d1_d3_d0_d2 xs_1_2_8 ys_2_4_0 =
  (match xs_1_2_8 with
    | `LH_C(h_1_9_8, t_2_0_2) -> 
      (`LH_C(h_1_9_8, ((mappend_d1_d3_d0_d2 t_2_0_2) ys_2_4_0)))
    | `LH_N -> 
      ys_2_4_0);;
let rec mappend_d1_d3_d0_d3 xs_1_1_1 ys_2_1_1 =
  (match xs_1_1_1 with
    | `LH_C(h_1_8_0, t_1_8_4) -> 
      (`LH_C(h_1_8_0, ((mappend_d1_d3_d0_d3 t_1_8_4) ys_2_1_1)))
    | `LH_N -> 
      ys_2_1_1);;
let rec mappend_d1_d3_d0_d4 xs_8_8 ys_1_6_8 =
  (match xs_8_8 with
    | `LH_C(h_1_4_9, t_1_5_3) -> 
      (`LH_C(h_1_4_9, ((mappend_d1_d3_d0_d4 t_1_5_3) ys_1_6_8)))
    | `LH_N -> 
      ys_1_6_8);;
let rec mappend_d1_d3_d0_d5 xs_2_4 ys_5_7 =
  (match xs_2_4 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend_d1_d3_d0_d5 t_5_4) ys_5_7)))
    | `LH_N -> 
      ys_5_7);;
let rec mappend_d1_d3_d0_d6 xs_6_2 ys_1_1_3 =
  (match xs_6_2 with
    | `LH_C(h_1_1_0, t_1_1_3) -> 
      (`LH_C(h_1_1_0, ((mappend_d1_d3_d0_d6 t_1_1_3) ys_1_1_3)))
    | `LH_N -> 
      ys_1_1_3);;
let rec mappend_d1_d3_d0_d7 xs_1_6_8 ys_3_0_2 =
  (match xs_1_6_8 with
    | `LH_C(h_2_5_2, t_2_5_6) -> 
      (`LH_C(h_2_5_2, ((mappend_d1_d3_d0_d7 t_2_5_6) ys_3_0_2)))
    | `LH_N -> 
      ys_3_0_2);;
let rec mappend_d1_d3_d0_d8 xs_1_4_7 ys_2_6_9 =
  (match xs_1_4_7 with
    | `LH_C(h_2_2_4, t_2_2_8) -> 
      (`LH_C(h_2_2_4, ((mappend_d1_d3_d0_d8 t_2_2_8) ys_2_6_9)))
    | `LH_N -> 
      ys_2_6_9);;
let rec mappend_d1_d3_d0_d9 xs_4_0 ys_8_1 =
  (match xs_4_0 with
    | `LH_C(h_7_1, t_7_4) -> 
      (`LH_C(h_7_1, ((mappend_d1_d3_d0_d9 t_7_4) ys_8_1)))
    | `LH_N -> 
      ys_8_1);;
let rec mappend_d1_d4_d0_d0 xs_1_6_4 ys_2_9_4 =
  (xs_1_6_4 ys_2_9_4);;
let rec mappend_d1_d4_d0_d1 xs_1_4_8 ys_2_7_0 =
  (xs_1_4_8 ys_2_7_0);;
let rec mappend_d1_d4_d0_d1_d0 xs_1_3_8 ys_2_5_6 =
  (xs_1_3_8 ys_2_5_6);;
let rec mappend_d1_d4_d0_d1_d1 xs_1_5_7 ys_2_8_1 =
  (xs_1_5_7 ys_2_8_1);;
let rec mappend_d1_d4_d0_d1_d2 xs_1_0_5 ys_1_9_9 =
  (xs_1_0_5 ys_1_9_9);;
let rec mappend_d1_d4_d0_d1_d3 xs_1_6_2 ys_2_9_2 =
  (xs_1_6_2 ys_2_9_2);;
let rec mappend_d1_d4_d0_d1_d4 xs_1_7_9 ys_3_1_9 =
  (xs_1_7_9 ys_3_1_9);;
let rec mappend_d1_d4_d0_d1_d5 xs_9_1 ys_1_7_5 =
  (xs_9_1 ys_1_7_5);;
let rec mappend_d1_d4_d0_d1_d6 xs_1_2_9 ys_2_4_1 =
  (xs_1_2_9 ys_2_4_1);;
let rec mappend_d1_d4_d0_d1_d7 xs_2_6 ys_5_9 =
  (xs_2_6 ys_5_9);;
let rec mappend_d1_d4_d0_d1_d8 xs_1_6_7 ys_3_0_1 =
  (xs_1_6_7 ys_3_0_1);;
let rec mappend_d1_d4_d0_d1_d9 xs_1_0_6 ys_2_0_0 =
  (xs_1_0_6 ys_2_0_0);;
let rec mappend_d1_d4_d0_d2 xs_1_2_1 ys_2_3_1 =
  (xs_1_2_1 ys_2_3_1);;
let rec mappend_d1_d4_d0_d2_d0 xs_1_3_1 ys_2_4_5 =
  (xs_1_3_1 ys_2_4_5);;
let rec mappend_d1_d4_d0_d2_d1 xs_1_2_3 ys_2_3_3 =
  (xs_1_2_3 ys_2_3_3);;
let rec mappend_d1_d4_d0_d2_d2 xs_6_9 ys_1_2_0 =
  (xs_6_9 ys_1_2_0);;
let rec mappend_d1_d4_d0_d2_d3 xs_8_1 ys_1_5_5 =
  (xs_8_1 ys_1_5_5);;
let rec mappend_d1_d4_d0_d3 xs_6_8 ys_1_1_9 =
  (xs_6_8 ys_1_1_9);;
let rec mappend_d1_d4_d0_d4 xs_2_9 ys_6_8 =
  (xs_2_9 ys_6_8);;
let rec mappend_d1_d4_d0_d5 xs_1_8_1 ys_3_2_3 =
  (xs_1_8_1 ys_3_2_3);;
let rec mappend_d1_d4_d0_d6 xs_1_7_4 ys_3_1_2 =
  (xs_1_7_4 ys_3_1_2);;
let rec mappend_d1_d4_d0_d7 xs_5_3 ys_9_8 =
  (xs_5_3 ys_9_8);;
let rec mappend_d1_d4_d0_d8 xs_1_8_3 ys_3_2_7 =
  (xs_1_8_3 ys_3_2_7);;
let rec mappend_d1_d4_d0_d9 xs_1_8_5 ys_3_2_9 =
  (xs_1_8_5 ys_3_2_9);;
let rec mappend_d1_d5_d0_d0 xs_3_9 ys_8_0 =
  (xs_3_9 ys_8_0);;
let rec mappend_d1_d5_d0_d1 xs_1_1_6 ys_2_2_2 =
  (xs_1_1_6 ys_2_2_2);;
let rec mappend_d1_d5_d0_d2 xs_3_8 ys_7_7 =
  (xs_3_8 ys_7_7);;
let rec mappend_d1_d6_d0_d0 xs_9_9 ys_1_9_3 =
  (xs_9_9 ys_1_9_3);;
let rec mappend_d1_d6_d0_d1 xs_3_7 ys_7_6 =
  (xs_3_7 ys_7_6);;
let rec mappend_d1_d6_d0_d2 xs_8_7 ys_1_6_7 =
  (xs_8_7 ys_1_6_7);;
let rec mappend_d2_d0_d0 xs_1_4_1 ys_2_6_1 =
  (xs_1_4_1 ys_2_6_1);;
let rec mappend_d2_d0_d1 xs_9_3 ys_1_7_7 =
  (xs_9_3 ys_1_7_7);;
let rec mappend_d3_d0_d0 xs_7_2 ys_1_2_3 =
  (match xs_7_2 with
    | `LH_C(h_1_2_0, t_1_2_3) -> 
      (`LH_C(h_1_2_0, ((mappend_d3_d0_d0 t_1_2_3) ys_1_2_3)))
    | `LH_N -> 
      ys_1_2_3);;
let rec mappend_d4_d0_d0 xs_1_1_0 ys_2_1_0 =
  (match xs_1_1_0 with
    | `LH_C(h_1_7_9, t_1_8_3) -> 
      (`LH_C(h_1_7_9, ((mappend_d4_d0_d0 t_1_8_3) ys_2_1_0)))
    | `LH_N -> 
      ys_2_1_0);;
let rec mappend_d5_d0_d0 xs_1_5_9 ys_2_8_9 =
  (xs_1_5_9 ys_2_8_9);;
let rec mappend_d5_d0_d1 xs_1_7_1 ys_3_0_7 =
  (xs_1_7_1 ys_3_0_7);;
let rec mappend_d6_d0_d0 xs_1_8_0 ys_3_2_0 =
  (match xs_1_8_0 with
    | `LH_C(h_2_6_6, t_2_7_0) -> 
      (`LH_C(h_2_6_6, ((mappend_d6_d0_d0 t_2_7_0) ys_3_2_0)))
    | `LH_N -> 
      ys_3_2_0);;
let rec mappend_d7_d0_d0 xs_1_2_0 ys_2_2_8 =
  (xs_1_2_0 ys_2_2_8);;
let rec mappend_d7_d0_d1 xs_1_1_3 ys_2_1_3 =
  (xs_1_1_3 ys_2_1_3);;
let rec mappend_d8_d0_d0 xs_3_0 ys_6_9 =
  (xs_3_0 ys_6_9);;
let rec mappend_d8_d0_d1 xs_6_1 ys_1_1_2 =
  (xs_6_1 ys_1_1_2);;
let rec mappend_d8_d0_d1_d0 xs_2_3 ys_5_6 =
  (xs_2_3 ys_5_6);;
let rec mappend_d8_d0_d1_d1 xs_1_3_7 ys_2_5_5 =
  (xs_1_3_7 ys_2_5_5);;
let rec mappend_d8_d0_d1_d2 xs_7_5 ys_1_3_3 =
  (xs_7_5 ys_1_3_3);;
let rec mappend_d8_d0_d1_d3 xs_9_8 ys_1_9_0 =
  (xs_9_8 ys_1_9_0);;
let rec mappend_d8_d0_d1_d4 xs_5_4 ys_1_0_1 =
  (xs_5_4 ys_1_0_1);;
let rec mappend_d8_d0_d1_d5 xs_1_2_2 ys_2_3_2 =
  (xs_1_2_2 ys_2_3_2);;
let rec mappend_d8_d0_d1_d6 xs_3_1 ys_7_0 =
  (xs_3_1 ys_7_0);;
let rec mappend_d8_d0_d1_d7 xs_1_3_2 ys_2_4_8 =
  (xs_1_3_2 ys_2_4_8);;
let rec mappend_d8_d0_d1_d8 xs_1_4_2 ys_2_6_2 =
  (xs_1_4_2 ys_2_6_2);;
let rec mappend_d8_d0_d1_d9 xs_4_5 ys_8_8 =
  (xs_4_5 ys_8_8);;
let rec mappend_d8_d0_d2 xs_4_9 ys_9_2 =
  (xs_4_9 ys_9_2);;
let rec mappend_d8_d0_d2_d0 xs_9_2 ys_1_7_6 =
  (xs_9_2 ys_1_7_6);;
let rec mappend_d8_d0_d2_d1 xs_1_8_4 ys_3_2_8 =
  (xs_1_8_4 ys_3_2_8);;
let rec mappend_d8_d0_d2_d2 xs_1_3_9 ys_2_5_7 =
  (xs_1_3_9 ys_2_5_7);;
let rec mappend_d8_d0_d2_d3 xs_1_6_1 ys_2_9_1 =
  (xs_1_6_1 ys_2_9_1);;
let rec mappend_d8_d0_d3 xs_1_1_9 ys_2_2_7 =
  (xs_1_1_9 ys_2_2_7);;
let rec mappend_d8_d0_d4 xs_6_5 ys_1_1_6 =
  (xs_6_5 ys_1_1_6);;
let rec mappend_d8_d0_d5 xs_1_7_3 ys_3_1_1 =
  (xs_1_7_3 ys_3_1_1);;
let rec mappend_d8_d0_d6 xs_1_6_6 ys_3_0_0 =
  (xs_1_6_6 ys_3_0_0);;
let rec mappend_d8_d0_d7 xs_8_3 ys_1_5_9 =
  (xs_8_3 ys_1_5_9);;
let rec mappend_d8_d0_d8 xs_1_8_7 ys_3_3_1 =
  (xs_1_8_7 ys_3_3_1);;
let rec mappend_d8_d0_d9 xs_8_0 ys_1_5_4 =
  (xs_8_0 ys_1_5_4);;
let rec mappend_d9_d0_d0 xs_1_7_5 ys_3_1_3 =
  (match xs_1_7_5 with
    | `LH_C(h_2_6_0, t_2_6_4) -> 
      (`LH_C(h_2_6_0, ((mappend_d9_d0_d0 t_2_6_4) ys_3_1_3)))
    | `LH_N -> 
      ys_3_1_3);;
let rec mappend_d9_d0_d1 xs_9_0 ys_1_7_4 =
  (match xs_9_0 with
    | `LH_C(h_1_5_6, t_1_6_0) -> 
      (`LH_C(h_1_5_6, ((mappend_d9_d0_d1 t_1_6_0) ys_1_7_4)))
    | `LH_N -> 
      ys_1_7_4);;
let rec mappend_d9_d0_d1_d0 xs_1_2_6 ys_2_3_8 =
  (match xs_1_2_6 with
    | `LH_C(h_1_9_6, t_2_0_0) -> 
      (`LH_C(h_1_9_6, ((mappend_d9_d0_d1_d0 t_2_0_0) ys_2_3_8)))
    | `LH_N -> 
      ys_2_3_8);;
let rec mappend_d9_d0_d1_d1 xs_5_8 ys_1_0_5 =
  (match xs_5_8 with
    | `LH_C(h_1_0_3, t_1_0_6) -> 
      (`LH_C(h_1_0_3, ((mappend_d9_d0_d1_d1 t_1_0_6) ys_1_0_5)))
    | `LH_N -> 
      ys_1_0_5);;
let rec mappend_d9_d0_d2 xs_1_4_0 ys_2_6_0 =
  (match xs_1_4_0 with
    | `LH_C(h_2_1_0, t_2_1_4) -> 
      (`LH_C(h_2_1_0, ((mappend_d9_d0_d2 t_2_1_4) ys_2_6_0)))
    | `LH_N -> 
      ys_2_6_0);;
let rec mappend_d9_d0_d3 xs_1_0_3 ys_1_9_7 =
  (match xs_1_0_3 with
    | `LH_C(h_1_7_0, t_1_7_4) -> 
      (`LH_C(h_1_7_0, ((mappend_d9_d0_d3 t_1_7_4) ys_1_9_7)))
    | `LH_N -> 
      ys_1_9_7);;
let rec mappend_d9_d0_d4 xs_1_4_3 ys_2_6_3 =
  (match xs_1_4_3 with
    | `LH_C(h_2_2_0, t_2_2_4) -> 
      (`LH_C(h_2_2_0, ((mappend_d9_d0_d4 t_2_2_4) ys_2_6_3)))
    | `LH_N -> 
      ys_2_6_3);;
let rec mappend_d9_d0_d5 xs_2_8 ys_6_7 =
  (match xs_2_8 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C(h_5_9, ((mappend_d9_d0_d5 t_6_1) ys_6_7)))
    | `LH_N -> 
      ys_6_7);;
let rec mappend_d9_d0_d6 xs_8_2 ys_1_5_8 =
  (match xs_8_2 with
    | `LH_C(h_1_4_2, t_1_4_6) -> 
      (`LH_C(h_1_4_2, ((mappend_d9_d0_d6 t_1_4_6) ys_1_5_8)))
    | `LH_N -> 
      ys_1_5_8);;
let rec mappend_d9_d0_d7 xs_1_6_3 ys_2_9_3 =
  (match xs_1_6_3 with
    | `LH_C(h_2_4_5, t_2_4_9) -> 
      (`LH_C(h_2_4_5, ((mappend_d9_d0_d7 t_2_4_9) ys_2_9_3)))
    | `LH_N -> 
      ys_2_9_3);;
let rec mappend_d9_d0_d8 xs_1_5_3 ys_2_7_7 =
  (match xs_1_5_3 with
    | `LH_C(h_2_2_8, t_2_3_2) -> 
      (`LH_C(h_2_2_8, ((mappend_d9_d0_d8 t_2_3_2) ys_2_7_7)))
    | `LH_N -> 
      ys_2_7_7);;
let rec mappend_d9_d0_d9 xs_4_8 ys_9_1 =
  (match xs_4_8 with
    | `LH_C(h_9_4, t_9_7) -> 
      (`LH_C(h_9_4, ((mappend_d9_d0_d9 t_9_7) ys_9_1)))
    | `LH_N -> 
      ys_9_1);;
let rec map_d0_d0_d0 f_1_5_0 ls_7_8 =
  (ls_7_8 f_1_5_0);;
let rec map_d0_d0_d1 f_1_5_6 ls_8_0 =
  (ls_8_0 f_1_5_6);;
let rec map_d1_d0_d0 f_6_6 ls_3_0 =
  (ls_3_0 f_6_6);;
let rec map_d1_d0_d1 f_1_5_9 ls_8_3 =
  (ls_8_3 f_1_5_9);;
let rec map_d1_d0_d1_d0 f_1_4_4 ls_7_3 =
  (ls_7_3 f_1_4_4);;
let rec map_d1_d0_d1_d1 f_2_4_3 ls_1_5_3 =
  (ls_1_5_3 f_2_4_3);;
let rec map_d1_d0_d1_d2 f_6_2 ls_2_9 =
  (ls_2_9 f_6_2);;
let rec map_d1_d0_d2 f_1_8_5 ls_1_0_4 =
  (ls_1_0_4 f_1_8_5);;
let rec map_d1_d0_d3 f_2_2_9 ls_1_4_1 =
  (ls_1_4_1 f_2_2_9);;
let rec map_d1_d0_d4 f_2_2_5 ls_1_3_8 =
  (ls_1_3_8 f_2_2_5);;
let rec map_d1_d0_d5 f_1_6_0 ls_8_5 =
  (ls_8_5 f_1_6_0);;
let rec map_d1_d0_d6 f_6_9 ls_3_3 =
  (ls_3_3 f_6_9);;
let rec map_d1_d0_d7 f_7_3 ls_3_8 =
  (ls_3_8 f_7_3);;
let rec map_d1_d0_d8 f_1_6_1 ls_8_6 =
  (ls_8_6 f_1_6_1);;
let rec map_d1_d0_d9 f_1_7_0 ls_9_5 =
  (ls_9_5 f_1_7_0);;
let rec map_d2_d0_d0 f_1_8_3 ls_1_0_2 =
  (ls_1_0_2 f_1_8_3);;
let rec map_d2_d0_d1 f_1_6_5 ls_8_9 =
  (ls_8_9 f_1_6_5);;
let rec map_d2_d0_d1_d0 f_5_7 ls_2_4 =
  (ls_2_4 f_5_7);;
let rec map_d2_d0_d1_d1 f_1_4_6 ls_7_5 =
  (ls_7_5 f_1_4_6);;
let rec map_d2_d0_d1_d2 f_2_2_0 ls_1_3_4 =
  (ls_1_3_4 f_2_2_0);;
let rec map_d2_d0_d1_d3 f_1_0_2 ls_4_9 =
  (ls_4_9 f_1_0_2);;
let rec map_d2_d0_d2 f_1_9_5 ls_1_1_6 =
  (ls_1_1_6 f_1_9_5);;
let rec map_d2_d0_d3 f_1_7_4 ls_9_7 =
  (ls_9_7 f_1_7_4);;
let rec map_d2_d0_d4 f_2_6_2 ls_1_7_4 =
  (ls_1_7_4 f_2_6_2);;
let rec map_d2_d0_d5 f_1_3_4 ls_6_7 =
  (ls_6_7 f_1_3_4);;
let rec map_d2_d0_d6 f_4_6 ls_1_8 =
  (ls_1_8 f_4_6);;
let rec map_d2_d0_d7 f_2_6_1 ls_1_7_3 =
  (ls_1_7_3 f_2_6_1);;
let rec map_d2_d0_d8 f_6_8 ls_3_2 =
  (ls_3_2 f_6_8);;
let rec map_d2_d0_d9 f_1_0_9 ls_5_1 =
  (ls_5_1 f_1_0_9);;
let rec map_d3_d0_d0 f_1_7_1 ls_9_6 =
  (ls_9_6 f_1_7_1);;
let rec map_d3_d0_d1 f_1_0_1 ls_4_8 =
  (ls_4_8 f_1_0_1);;
let rec map_d3_d0_d1_d0 f_2_1_6 ls_1_3_0 =
  (ls_1_3_0 f_2_1_6);;
let rec map_d3_d0_d1_d1 f_2_2_2 ls_1_3_5 =
  (ls_1_3_5 f_2_2_2);;
let rec map_d3_d0_d1_d2 f_2_5_4 ls_1_6_7 =
  (ls_1_6_7 f_2_5_4);;
let rec map_d3_d0_d1_d3 f_9_8 ls_4_5 =
  (ls_4_5 f_9_8);;
let rec map_d3_d0_d1_d4 f_4_8 ls_2_0 =
  (ls_2_0 f_4_8);;
let rec map_d3_d0_d1_d5 f_5_8 ls_2_5 =
  (ls_2_5 f_5_8);;
let rec map_d3_d0_d1_d6 f_1_7_5 ls_9_8 =
  (ls_9_8 f_1_7_5);;
let rec map_d3_d0_d1_d7 f_6_7 ls_3_1 =
  (ls_3_1 f_6_7);;
let rec map_d3_d0_d1_d8 f_2_5_7 ls_1_6_9 =
  (ls_1_6_9 f_2_5_7);;
let rec map_d3_d0_d1_d9 f_1_9_8 ls_1_1_7 =
  (ls_1_1_7 f_1_9_8);;
let rec map_d3_d0_d2 f_1_6_9 ls_9_4 =
  (ls_9_4 f_1_6_9);;
let rec map_d3_d0_d2_d0 f_7_0 ls_3_4 =
  (ls_3_4 f_7_0);;
let rec map_d3_d0_d2_d1 f_1_2_7 ls_6_5 =
  (ls_6_5 f_1_2_7);;
let rec map_d3_d0_d2_d2 f_1_8_8 ls_1_0_7 =
  (ls_1_0_7 f_1_8_8);;
let rec map_d3_d0_d2_d3 f_1_8_6 ls_1_0_5 =
  (ls_1_0_5 f_1_8_6);;
let rec map_d3_d0_d3 f_2_4_8 ls_1_6_3 =
  (ls_1_6_3 f_2_4_8);;
let rec map_d3_d0_d4 f_1_1_8 ls_5_6 =
  (ls_5_6 f_1_1_8);;
let rec map_d3_d0_d5 f_1_7_9 ls_1_0_1 =
  (ls_1_0_1 f_1_7_9);;
let rec map_d3_d0_d6 f_1_6_8 ls_9_3 =
  (ls_9_3 f_1_6_8);;
let rec map_d3_d0_d7 f_2_5_8 ls_1_7_1 =
  (ls_1_7_1 f_2_5_8);;
let rec map_d3_d0_d8 f_1_2_5 ls_6_3 =
  (ls_6_3 f_1_2_5);;
let rec map_d3_d0_d9 f_1_4_5 ls_7_4 =
  (ls_7_4 f_1_4_5);;
let rec map_d4_d0_d0 f_1_4_2 ls_7_1 =
  (ls_7_1 f_1_4_2);;
let rec map_d4_d0_d1 f_1_6_7 ls_9_1 =
  (ls_9_1 f_1_6_7);;
let rec map_d4_d0_d1_d0 f_1_1_2 ls_5_3 =
  (ls_5_3 f_1_1_2);;
let rec map_d4_d0_d1_d1 f_1_2_6 ls_6_4 =
  (ls_6_4 f_1_2_6);;
let rec map_d4_d0_d1_d2 f_1_2_1 ls_5_9 =
  (ls_5_9 f_1_2_1);;
let rec map_d4_d0_d1_d3 f_2_0_2 ls_1_2_2 =
  (ls_1_2_2 f_2_0_2);;
let rec map_d4_d0_d1_d4 f_2_6_3 ls_1_7_5 =
  (ls_1_7_5 f_2_6_3);;
let rec map_d4_d0_d1_d5 f_7_6 ls_4_0 =
  (ls_4_0 f_7_6);;
let rec map_d4_d0_d1_d6 f_1_4_9 ls_7_7 =
  (ls_7_7 f_1_4_9);;
let rec map_d4_d0_d1_d7 f_2_0_7 ls_1_2_5 =
  (ls_1_2_5 f_2_0_7);;
let rec map_d4_d0_d1_d8 f_1_9_2 ls_1_1_3 =
  (ls_1_1_3 f_1_9_2);;
let rec map_d4_d0_d1_d9 f_2_4_4 ls_1_5_4 =
  (ls_1_5_4 f_2_4_4);;
let rec map_d4_d0_d2 f_2_5_3 ls_1_6_6 =
  (ls_1_6_6 f_2_5_3);;
let rec map_d4_d0_d2_d0 f_1_8_7 ls_1_0_6 =
  (ls_1_0_6 f_1_8_7);;
let rec map_d4_d0_d2_d1 f_2_4_7 ls_1_6_0 =
  (ls_1_6_0 f_2_4_7);;
let rec map_d4_d0_d2_d2 f_9_9 ls_4_6 =
  (ls_4_6 f_9_9);;
let rec map_d4_d0_d2_d3 f_2_3_0 ls_1_4_3 =
  (ls_1_4_3 f_2_3_0);;
let rec map_d4_d0_d3 f_1_0_0 ls_4_7 =
  (ls_4_7 f_1_0_0);;
let rec map_d4_d0_d4 f_1_1_4 ls_5_5 =
  (ls_5_5 f_1_1_4);;
let rec map_d4_d0_d5 f_1_8_9 ls_1_0_8 =
  (ls_1_0_8 f_1_8_9);;
let rec map_d4_d0_d6 f_1_9_3 ls_1_1_4 =
  (ls_1_1_4 f_1_9_3);;
let rec map_d4_d0_d7 f_2_3_1 ls_1_4_4 =
  (ls_1_4_4 f_2_3_1);;
let rec map_d4_d0_d8 f_1_4_7 ls_7_6 =
  (ls_7_6 f_1_4_7);;
let rec map_d4_d0_d9 f_2_0_6 ls_1_2_4 =
  (ls_1_2_4 f_2_0_6);;
let rec map_d6_d0_d0 f_5_0 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_5_3, t_5_5) -> 
      (`LH_C((f_5_0 h_5_3), ((map_d6_d0_d0 f_5_0) t_5_5)))
    | `LH_N -> 
      (`LH_N));;
let rec monthNames_d0_d0_d0 _lh_zip3_arg2_2_9 _lh_zip3_arg3_3_5 =
  (let rec _lh_zip3_LH_C_1_9_6 = (let rec _lh_zip3_LH_C_1_9_7 = (let rec _lh_zip3_LH_C_1_9_8 = (let rec _lh_zip3_LH_C_1_9_9 = (let rec _lh_zip3_LH_C_1_1_0_0 = (let rec _lh_zip3_LH_C_1_1_0_1 = (let rec _lh_zip3_LH_C_1_1_0_2 = (let rec _lh_zip3_LH_C_1_1_0_3 = (let rec _lh_zip3_LH_C_1_1_0_4 = (let rec _lh_zip3_LH_C_1_1_0_5 = (let rec _lh_zip3_LH_C_1_1_0_6 = (let rec _lh_zip3_LH_C_1_1_0_7 = (fun _lh_zip3_arg2_1_7 _lh_zip3_arg3_2_3 f_1_1_0 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_9_6 = (`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1_8 _lh_zip3_arg3_2_4 -> 
        (let rec _lh_matchIdent_2_0 = _lh_zip3_arg2_1_8 in
          (((_lh_matchIdent_2_0 _lh_zip3_LH_C_0_9_6) _lh_zip3_LH_C_1_1_0_7) _lh_zip3_arg3_2_4))))) in
    (let rec _lh_zip3_LH_C_0_9_7 = (`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1_9 _lh_zip3_arg3_2_5 -> 
        (let rec _lh_matchIdent_2_1 = _lh_zip3_arg2_1_9 in
          (((_lh_matchIdent_2_1 _lh_zip3_LH_C_0_9_7) _lh_zip3_LH_C_1_1_0_6) _lh_zip3_arg3_2_5))))) in
    (let rec _lh_zip3_LH_C_0_9_8 = (`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_2_0 _lh_zip3_arg3_2_6 -> 
        (let rec _lh_matchIdent_2_2 = _lh_zip3_arg2_2_0 in
          (((_lh_matchIdent_2_2 _lh_zip3_LH_C_0_9_8) _lh_zip3_LH_C_1_1_0_5) _lh_zip3_arg3_2_6))))) in
    (let rec _lh_zip3_LH_C_0_9_9 = (`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))) in
      (fun _lh_zip3_arg2_2_1 _lh_zip3_arg3_2_7 -> 
        (let rec _lh_matchIdent_2_3 = _lh_zip3_arg2_2_1 in
          (((_lh_matchIdent_2_3 _lh_zip3_LH_C_0_9_9) _lh_zip3_LH_C_1_1_0_4) _lh_zip3_arg3_2_7))))) in
    (let rec _lh_zip3_LH_C_0_1_0_0 = (`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))) in
      (fun _lh_zip3_arg2_2_2 _lh_zip3_arg3_2_8 -> 
        (let rec _lh_matchIdent_2_4 = _lh_zip3_arg2_2_2 in
          (((_lh_matchIdent_2_4 _lh_zip3_LH_C_0_1_0_0) _lh_zip3_LH_C_1_1_0_3) _lh_zip3_arg3_2_8))))) in
    (let rec _lh_zip3_LH_C_0_1_0_1 = (`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_2_3 _lh_zip3_arg3_2_9 -> 
        (let rec _lh_matchIdent_2_5 = _lh_zip3_arg2_2_3 in
          (((_lh_matchIdent_2_5 _lh_zip3_LH_C_0_1_0_1) _lh_zip3_LH_C_1_1_0_2) _lh_zip3_arg3_2_9))))) in
    (let rec _lh_zip3_LH_C_0_1_0_2 = (`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_2_4 _lh_zip3_arg3_3_0 -> 
        (let rec _lh_matchIdent_2_6 = _lh_zip3_arg2_2_4 in
          (((_lh_matchIdent_2_6 _lh_zip3_LH_C_0_1_0_2) _lh_zip3_LH_C_1_1_0_1) _lh_zip3_arg3_3_0))))) in
    (let rec _lh_zip3_LH_C_0_1_0_3 = (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))) in
      (fun _lh_zip3_arg2_2_5 _lh_zip3_arg3_3_1 -> 
        (let rec _lh_matchIdent_2_7 = _lh_zip3_arg2_2_5 in
          (((_lh_matchIdent_2_7 _lh_zip3_LH_C_0_1_0_3) _lh_zip3_LH_C_1_1_0_0) _lh_zip3_arg3_3_1))))) in
    (let rec _lh_zip3_LH_C_0_1_0_4 = (`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_2_6 _lh_zip3_arg3_3_2 -> 
        (let rec _lh_matchIdent_2_8 = _lh_zip3_arg2_2_6 in
          (((_lh_matchIdent_2_8 _lh_zip3_LH_C_0_1_0_4) _lh_zip3_LH_C_1_9_9) _lh_zip3_arg3_3_2))))) in
    (let rec _lh_zip3_LH_C_0_1_0_5 = (`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_2_7 _lh_zip3_arg3_3_3 -> 
        (let rec _lh_matchIdent_2_9 = _lh_zip3_arg2_2_7 in
          (((_lh_matchIdent_2_9 _lh_zip3_LH_C_0_1_0_5) _lh_zip3_LH_C_1_9_8) _lh_zip3_arg3_3_3))))) in
    (let rec _lh_zip3_LH_C_0_1_0_6 = (`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2_8 _lh_zip3_arg3_3_4 -> 
        (let rec _lh_matchIdent_3_0 = _lh_zip3_arg2_2_8 in
          (((_lh_matchIdent_3_0 _lh_zip3_LH_C_0_1_0_6) _lh_zip3_LH_C_1_9_7) _lh_zip3_arg3_3_4))))) in
    (let rec _lh_zip3_LH_C_0_1_0_7 = (`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))) in
      (let rec _lh_matchIdent_3_1 = _lh_zip3_arg2_2_9 in
        (((_lh_matchIdent_3_1 _lh_zip3_LH_C_0_1_0_7) _lh_zip3_LH_C_1_9_6) _lh_zip3_arg3_3_5))));;
let rec pic_d0_d0_d0 _lh_pic_arg1_1 =
  (_lh_pic_arg1_1 99);;
let rec take_d0_d0_d0 n_3_7 ls_1_4_6 =
  (if (n_3_7 > 0) then
    (match ls_1_4_6 with
      | `LH_C(h_2_3_1, t_2_3_5) -> 
        (`LH_C(h_2_3_1, ((take_d0_d0_d0 (n_3_7 - 1)) t_2_3_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d1_d0_d0 n_3_0 ls_1_2_3 =
  (if (n_3_0 > 0) then
    (ls_1_2_3 n_3_0)
  else
    (fun _lh_zip3_LH_C_0_1_2_7 _lh_zip3_LH_C_1_1_2_7 _lh_zip3_arg3_5_2 f_2_0_3 -> 
      (`LH_N)));;
let rec take_d1_d0_d1 n_4_2 ls_1_6_5 =
  (if (n_4_2 > 0) then
    (ls_1_6_5 n_4_2)
  else
    (fun _lh_zip3_LH_C_0_1_4_0 _lh_zip3_LH_C_1_1_4_0 _lh_zip3_arg3_6_5 f_2_4_9 -> 
      (`LH_N)));;
let rec take_d1_d0_d1_d0 n_1_2 ls_5_0 =
  (if (n_1_2 > 0) then
    (ls_5_0 n_1_2)
  else
    (fun _lh_zip3_LH_C_0_9_5 _lh_zip3_LH_C_1_9_5 _lh_zip3_arg3_2_0 f_1_0_3 -> 
      (`LH_N)));;
let rec take_d1_d0_d1_d1 n_2_1 ls_8_8 =
  (if (n_2_1 > 0) then
    (ls_8_8 n_2_1)
  else
    (fun _lh_zip3_LH_C_0_1_1_7 _lh_zip3_LH_C_1_1_1_7 _lh_zip3_arg3_4_2 f_1_6_4 -> 
      (`LH_N)));;
let rec take_d1_d0_d1_d2 n_4_1 ls_1_5_7 =
  (if (n_4_1 > 0) then
    (ls_1_5_7 n_4_1)
  else
    (fun _lh_zip3_LH_C_0_1_3_9 _lh_zip3_LH_C_1_1_3_9 _lh_zip3_arg3_6_4 f_2_4_6 -> 
      (`LH_N)));;
let rec take_d1_d0_d1_d3 n_3_2 ls_1_2_7 =
  (if (n_3_2 > 0) then
    (ls_1_2_7 n_3_2)
  else
    (fun _lh_zip3_LH_C_0_1_3_0 _lh_zip3_LH_C_1_1_3_0 _lh_zip3_arg3_5_5 f_2_1_0 -> 
      (`LH_N)));;
let rec take_d1_d0_d2 n_3_6 ls_1_4_5 =
  (if (n_3_6 > 0) then
    (ls_1_4_5 n_3_6)
  else
    (fun _lh_zip3_LH_C_0_1_3_7 _lh_zip3_LH_C_1_1_3_7 _lh_zip3_arg3_6_1 f_2_3_2 -> 
      (`LH_N)));;
let rec take_d1_d0_d3 n_2_3 ls_9_9 =
  (if (n_2_3 > 0) then
    (ls_9_9 n_2_3)
  else
    (fun _lh_zip3_LH_C_0_1_1_9 _lh_zip3_LH_C_1_1_1_9 _lh_zip3_arg3_4_4 f_1_7_6 -> 
      (`LH_N)));;
let rec take_d1_d0_d4 n_2_7 ls_1_0_3 =
  (if (n_2_7 > 0) then
    (ls_1_0_3 n_2_7)
  else
    (fun _lh_zip3_LH_C_0_1_2_5 _lh_zip3_LH_C_1_1_2_5 _lh_zip3_arg3_4_9 f_1_8_4 -> 
      (`LH_N)));;
let rec take_d1_d0_d5 n_2_2 ls_9_0 =
  (if (n_2_2 > 0) then
    (ls_9_0 n_2_2)
  else
    (fun _lh_zip3_LH_C_0_1_1_8 _lh_zip3_LH_C_1_1_1_8 _lh_zip3_arg3_4_3 f_1_6_6 -> 
      (`LH_N)));;
let rec take_d1_d0_d6 n_2_9 ls_1_1_1 =
  (if (n_2_9 > 0) then
    (ls_1_1_1 n_2_9)
  else
    (fun _lh_zip3_LH_C_0_1_2_6 _lh_zip3_LH_C_1_1_2_6 _lh_zip3_arg3_5_0 f_1_9_0 -> 
      (`LH_N)));;
let rec take_d1_d0_d7 n_3_8 ls_1_4_9 =
  (if (n_3_8 > 0) then
    (ls_1_4_9 n_3_8)
  else
    (fun _lh_zip3_LH_C_0_1_3_8 _lh_zip3_LH_C_1_1_3_8 _lh_zip3_arg3_6_3 f_2_3_7 -> 
      (`LH_N)));;
let rec take_d1_d0_d8 n_1_6 ls_6_9 =
  (if (n_1_6 > 0) then
    (ls_6_9 n_1_6)
  else
    (fun _lh_zip3_LH_C_0_1_1_0 _lh_zip3_LH_C_1_1_1_0 _lh_zip3_arg3_3_7 f_1_3_7 -> 
      (`LH_N)));;
let rec take_d1_d0_d9 n_6 ls_2_2 =
  (if (n_6 > 0) then
    (ls_2_2 n_6)
  else
    (fun _lh_zip3_LH_C_0_5_4 _lh_zip3_LH_C_1_5_4 _lh_zip3_arg3_1_7 f_5_1 -> 
      (`LH_N)));;
let rec take_d2_d0_d0 n_1_5 ls_6_8 =
  (if (n_1_5 > 0) then
    (match ls_6_8 with
      | `LH_C(h_1_3_0, t_1_3_4) -> 
        (`LH_C(h_1_3_0, ((take_d2_d0_d0 (n_1_5 - 1)) t_1_3_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d1 n_3_9 ls_1_5_0 =
  (if (n_3_9 > 0) then
    (match ls_1_5_0 with
      | `LH_C(h_2_4_0, t_2_4_4) -> 
        (`LH_C(h_2_4_0, ((take_d2_d0_d1 (n_3_9 - 1)) t_2_4_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d1_d0 n_4_7 ls_1_7_7 =
  (if (n_4_7 > 0) then
    (match ls_1_7_7 with
      | `LH_C(h_2_7_3, t_2_7_7) -> 
        (`LH_C(h_2_7_3, ((take_d2_d0_d1_d0 (n_4_7 - 1)) t_2_7_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d1_d1 n_1_0 ls_4_2 =
  (if (n_1_0 > 0) then
    (match ls_4_2 with
      | `LH_C(h_9_1, t_9_4) -> 
        (`LH_C(h_9_1, ((take_d2_d0_d1_d1 (n_1_0 - 1)) t_9_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d2 n_4_0 ls_1_5_1 =
  (if (n_4_0 > 0) then
    (match ls_1_5_1 with
      | `LH_C(h_2_4_1, t_2_4_5) -> 
        (`LH_C(h_2_4_1, ((take_d2_d0_d2 (n_4_0 - 1)) t_2_4_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d3 n_7 ls_2_3 =
  (if (n_7 > 0) then
    (match ls_2_3 with
      | `LH_C(h_5_6, t_5_8) -> 
        (`LH_C(h_5_6, ((take_d2_d0_d3 (n_7 - 1)) t_5_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d4 n_8 ls_2_6 =
  (if (n_8 > 0) then
    (match ls_2_6 with
      | `LH_C(h_6_1, t_6_3) -> 
        (`LH_C(h_6_1, ((take_d2_d0_d4 (n_8 - 1)) t_6_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d5 n_2_8 ls_1_0_9 =
  (if (n_2_8 > 0) then
    (match ls_1_0_9 with
      | `LH_C(h_1_7_6, t_1_8_0) -> 
        (`LH_C(h_1_7_6, ((take_d2_d0_d5 (n_2_8 - 1)) t_1_8_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d6 n_1_4 ls_6_6 =
  (if (n_1_4 > 0) then
    (match ls_6_6 with
      | `LH_C(h_1_2_5, t_1_2_9) -> 
        (`LH_C(h_1_2_5, ((take_d2_d0_d6 (n_1_4 - 1)) t_1_2_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d7 n_9 ls_3_9 =
  (if (n_9 > 0) then
    (match ls_3_9 with
      | `LH_C(h_7_4, t_7_7) -> 
        (`LH_C(h_7_4, ((take_d2_d0_d7 (n_9 - 1)) t_7_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d8 n_1_9 ls_7_0 =
  (if (n_1_9 > 0) then
    (match ls_7_0 with
      | `LH_C(h_1_3_7, t_1_4_1) -> 
        (`LH_C(h_1_3_7, ((take_d2_d0_d8 (n_1_9 - 1)) t_1_4_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take_d2_d0_d9 n_4_6 ls_1_7_6 =
  (if (n_4_6 > 0) then
    (match ls_1_7_6 with
      | `LH_C(h_2_7_2, t_2_7_6) -> 
        (`LH_C(h_2_7_2, ((take_d2_d0_d9 (n_4_6 - 1)) t_2_7_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3_d0_d0_d0 _lh_zip3_arg1_5 _lh_zip3_arg2_3_1 _lh_zip3_arg3_4_6 =
  (let rec _lh_matchIdent_4_3 = _lh_zip3_arg1_5 in
    ((_lh_matchIdent_4_3 _lh_zip3_arg2_3_1) _lh_zip3_arg3_4_6));;
let rec zip3_d0_d0_d1 _lh_zip3_arg1_1 _lh_zip3_arg2_1_4 _lh_zip3_arg3_1_8 =
  (let rec _lh_matchIdent_1_5 = _lh_zip3_arg1_1 in
    ((_lh_matchIdent_1_5 _lh_zip3_arg2_1_4) _lh_zip3_arg3_1_8));;
let rec zip3_d0_d0_d1_d0 _lh_zip3_arg1_3 _lh_zip3_arg2_1_6 _lh_zip3_arg3_2_2 =
  (let rec _lh_matchIdent_1_9 = _lh_zip3_arg1_3 in
    ((_lh_matchIdent_1_9 _lh_zip3_arg2_1_6) _lh_zip3_arg3_2_2));;
let rec zip3_d0_d0_d1_d1 _lh_zip3_arg1_8 _lh_zip3_arg2_3_4 _lh_zip3_arg3_5_6 =
  (let rec _lh_matchIdent_5_0 = _lh_zip3_arg1_8 in
    ((_lh_matchIdent_5_0 _lh_zip3_arg2_3_4) _lh_zip3_arg3_5_6));;
let rec zip3_d0_d0_d1_d2 _lh_zip3_arg1_1_0 _lh_zip3_arg2_3_6 _lh_zip3_arg3_6_2 =
  (let rec _lh_matchIdent_5_8 = _lh_zip3_arg1_1_0 in
    ((_lh_matchIdent_5_8 _lh_zip3_arg2_3_6) _lh_zip3_arg3_6_2));;
let rec zip3_d0_d0_d2 _lh_zip3_arg1_2 _lh_zip3_arg2_1_5 _lh_zip3_arg3_2_1 =
  (let rec _lh_matchIdent_1_8 = _lh_zip3_arg1_2 in
    ((_lh_matchIdent_1_8 _lh_zip3_arg2_1_5) _lh_zip3_arg3_2_1));;
let rec zip3_d0_d0_d3 _lh_zip3_arg1_9 _lh_zip3_arg2_3_5 _lh_zip3_arg3_6_0 =
  (let rec _lh_matchIdent_5_7 = _lh_zip3_arg1_9 in
    ((_lh_matchIdent_5_7 _lh_zip3_arg2_3_5) _lh_zip3_arg3_6_0));;
let rec zip3_d0_d0_d4 _lh_zip3_arg1_4 _lh_zip3_arg2_3_0 _lh_zip3_arg3_4_1 =
  (let rec _lh_matchIdent_4_0 = _lh_zip3_arg1_4 in
    ((_lh_matchIdent_4_0 _lh_zip3_arg2_3_0) _lh_zip3_arg3_4_1));;
let rec zip3_d0_d0_d5 _lh_zip3_arg1_1_1 _lh_zip3_arg2_3_7 _lh_zip3_arg3_6_7 =
  (let rec _lh_matchIdent_6_1 = _lh_zip3_arg1_1_1 in
    ((_lh_matchIdent_6_1 _lh_zip3_arg2_3_7) _lh_zip3_arg3_6_7));;
let rec zip3_d0_d0_d6 _lh_zip3_arg1_6 _lh_zip3_arg2_3_2 _lh_zip3_arg3_5_1 =
  (let rec _lh_matchIdent_4_6 = _lh_zip3_arg1_6 in
    ((_lh_matchIdent_4_6 _lh_zip3_arg2_3_2) _lh_zip3_arg3_5_1));;
let rec zip3_d0_d0_d7 _lh_zip3_arg1_1_2 _lh_zip3_arg2_3_8 _lh_zip3_arg3_6_8 =
  (let rec _lh_matchIdent_6_2 = _lh_zip3_arg1_1_2 in
    ((_lh_matchIdent_6_2 _lh_zip3_arg2_3_8) _lh_zip3_arg3_6_8));;
let rec zip3_d0_d0_d8 _lh_zip3_arg1_7 _lh_zip3_arg2_3_3 _lh_zip3_arg3_5_4 =
  (let rec _lh_matchIdent_4_9 = _lh_zip3_arg1_7 in
    ((_lh_matchIdent_4_9 _lh_zip3_arg2_3_3) _lh_zip3_arg3_5_4));;
let rec zip3_d0_d0_d9 _lh_zip3_arg1_1_3 _lh_zip3_arg2_3_9 _lh_zip3_arg3_7_0 =
  (let rec _lh_matchIdent_6_5 = _lh_zip3_arg1_1_3 in
    ((_lh_matchIdent_6_5 _lh_zip3_arg2_3_9) _lh_zip3_arg3_7_0));;
let rec zipWith_d0_d0_d0 f_7_7 xs_4_2 ys_8_3 =
  (match xs_4_2 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_8_3 with
        | `LH_C(hy_7, ty_7) -> 
          (`LH_C(((f_7_7 hx_9) hy_7), (((zipWith_d0_d0_d0 f_7_7) tx_9) ty_7)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d1_d0_d0 f_1_0_4 xs_5_6 ys_1_0_3 =
  ((xs_5_6 f_1_0_4) ys_1_0_3);;
let rec zipWith_d1_d0_d1 f_5_9 xs_3_2 ys_7_1 =
  ((xs_3_2 f_5_9) ys_7_1);;
let rec zipWith_d2_d0_d0 f_1_9_4 xs_1_1_2 ys_2_1_2 =
  ((xs_1_1_2 f_1_9_4) ys_2_1_2);;
let rec zipWith_d2_d0_d1 f_5_2 xs_2_7 ys_6_0 =
  ((xs_2_7 f_5_2) ys_6_0);;
let rec zipWith_d3_d0_d0 f_2_1_8 xs_1_3_4 ys_2_5_0 =
  (match xs_1_3_4 with
    | `LH_C(hx_1_9, tx_1_9) -> 
      (match ys_2_5_0 with
        | `LH_C(hy_1_5, ty_1_5) -> 
          (`LH_C(((f_2_1_8 hx_1_9) hy_1_5), (((zipWith_d3_d0_d0 f_2_1_8) tx_1_9) ty_1_5)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d1 f_1_3_3 xs_7_6 ys_1_4_1 =
  (match xs_7_6 with
    | `LH_C(hx_1_6, tx_1_6) -> 
      (match ys_1_4_1 with
        | `LH_C(hy_1_3, ty_1_3) -> 
          (`LH_C(((f_1_3_3 hx_1_6) hy_1_3), (((zipWith_d3_d0_d1 f_1_3_3) tx_1_6) ty_1_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d1_d0 f_4_9 xs_2_5 ys_5_8 =
  (match xs_2_5 with
    | `LH_C(hx_6, tx_6) -> 
      (match ys_5_8 with
        | `LH_C(hy_4, ty_4) -> 
          (`LH_C(((f_4_9 hx_6) hy_4), (((zipWith_d3_d0_d1_d0 f_4_9) tx_6) ty_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d1_d1 f_6_5 xs_3_4 ys_7_3 =
  (match xs_3_4 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_7_3 with
        | `LH_C(hy_6, ty_6) -> 
          (`LH_C(((f_6_5 hx_8) hy_6), (((zipWith_d3_d0_d1_d1 f_6_5) tx_8) ty_6)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d2 f_1_2_4 xs_7_0 ys_1_2_1 =
  (match xs_7_0 with
    | `LH_C(hx_1_3, tx_1_3) -> 
      (match ys_1_2_1 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_1_2_4 hx_1_3) hy_1_1), (((zipWith_d3_d0_d2 f_1_2_4) tx_1_3) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d3 f_1_1_5 xs_6_3 ys_1_1_4 =
  (match xs_6_3 with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match ys_1_1_4 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_1_5 hx_1_1) hy_9), (((zipWith_d3_d0_d3 f_1_1_5) tx_1_1) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d4 f_1_2_2 xs_6_7 ys_1_1_8 =
  (match xs_6_7 with
    | `LH_C(hx_1_2, tx_1_2) -> 
      (match ys_1_1_8 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_1_2_2 hx_1_2) hy_1_0), (((zipWith_d3_d0_d4 f_1_2_2) tx_1_2) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d5 f_7_8 xs_4_3 ys_8_4 =
  (match xs_4_3 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_8_4 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_7_8 hx_1_0) hy_8), (((zipWith_d3_d0_d5 f_7_8) tx_1_0) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d6 f_2_3_4 xs_1_5_8 ys_2_8_2 =
  (match xs_1_5_8 with
    | `LH_C(hx_2_0, tx_2_0) -> 
      (match ys_2_8_2 with
        | `LH_C(hy_1_6, ty_1_6) -> 
          (`LH_C(((f_2_3_4 hx_2_0) hy_1_6), (((zipWith_d3_d0_d6 f_2_3_4) tx_2_0) ty_1_6)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d7 f_2_6_7 xs_1_8_6 ys_3_3_0 =
  (match xs_1_8_6 with
    | `LH_C(hx_2_2, tx_2_2) -> 
      (match ys_3_3_0 with
        | `LH_C(hy_1_8, ty_1_8) -> 
          (`LH_C(((f_2_6_7 hx_2_2) hy_1_8), (((zipWith_d3_d0_d7 f_2_6_7) tx_2_2) ty_1_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d8 f_6_1 xs_3_3 ys_7_2 =
  (match xs_3_3 with
    | `LH_C(hx_7, tx_7) -> 
      (match ys_7_2 with
        | `LH_C(hy_5, ty_5) -> 
          (`LH_C(((f_6_1 hx_7) hy_5), (((zipWith_d3_d0_d8 f_6_1) tx_7) ty_5)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d3_d0_d9 f_2_5_0 xs_1_7_2 ys_3_0_8 =
  (match xs_1_7_2 with
    | `LH_C(hx_2_1, tx_2_1) -> 
      (match ys_3_0_8 with
        | `LH_C(hy_1_7, ty_1_7) -> 
          (`LH_C(((f_2_5_0 hx_2_1) hy_1_7), (((zipWith_d3_d0_d9 f_2_5_0) tx_2_1) ty_1_7)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner_d0_d0_d0 _lh_banner_arg1_1 =
  ((mappend_d2_d0_d0 (let rec t_1_3_1 = (fun ys_1_4_2 -> 
    ys_1_4_2) in
    (let rec h_1_2_7 = ((cjustify_d0_d0_d0 75) (string_of_int _lh_banner_arg1_1)) in
      (fun ys_1_4_3 -> 
        (let rec t_1_3_2 = ((mappend_d2_d0_d1 t_1_3_1) ys_1_4_3) in
          (let rec h_1_2_8 = h_1_2_7 in
            (fun ys_1_4_4 -> 
              (`LH_C(h_1_2_8, ((mappend_d1_d5_d0_d1 t_1_3_2) ys_1_4_4)))))))))) (emptyPic_d0_d0_d0 (let rec _lh_emptyPic_LH_P2_1_4 = 75 in
    (let rec _lh_emptyPic_LH_P2_0_4 = 1 in
      (fun _lh_dummy_3_8 -> 
        ((copy_d2_d0_d0 _lh_emptyPic_LH_P2_0_4) ((copy_d3_d0_d0 _lh_emptyPic_LH_P2_1_4) ' ')))))))
and block_d0_d0_d0 _lh_block_arg1_1_3 _lh_funcomp_x_3_2 =
  ((fun _lh_funcomp_x_3_3 -> 
    (stack_d0_d0_d0 ((map_d0_d0_d1 spread_d0_d0_d0) _lh_funcomp_x_3_3))) ((groop_d0_d0_d0 _lh_block_arg1_1_3) _lh_funcomp_x_3_2))
and block_d1_d0_d0 _lh_block_arg1_9 _lh_funcomp_x_2_4 =
  ((fun _lh_funcomp_x_2_5 -> 
    (stack_d1_d0_d0 ((map_d3_d0_d1 spread_d1_d0_d0) _lh_funcomp_x_2_5))) ((groop_d1_d0_d0 _lh_block_arg1_9) _lh_funcomp_x_2_4))
and block_d1_d0_d1 _lh_block_arg1_7 _lh_funcomp_x_2_0 =
  ((fun _lh_funcomp_x_2_1 -> 
    (stack_d1_d0_d1 ((map_d3_d0_d3 spread_d1_d0_d1) _lh_funcomp_x_2_1))) ((groop_d1_d0_d1 _lh_block_arg1_7) _lh_funcomp_x_2_0))
and block_d1_d0_d1_d0 _lh_block_arg1_4 _lh_funcomp_x_1_4 =
  ((fun _lh_funcomp_x_1_5 -> 
    (stack_d1_d0_d1_d0 ((map_d3_d0_d2_d1 spread_d1_d0_d1_d0) _lh_funcomp_x_1_5))) ((groop_d1_d0_d1_d0 _lh_block_arg1_4) _lh_funcomp_x_1_4))
and block_d1_d0_d1_d1 _lh_block_arg1_8 _lh_funcomp_x_2_2 =
  ((fun _lh_funcomp_x_2_3 -> 
    (stack_d1_d0_d1_d1 ((map_d3_d0_d2_d3 spread_d1_d0_d1_d1) _lh_funcomp_x_2_3))) ((groop_d1_d0_d1_d1 _lh_block_arg1_8) _lh_funcomp_x_2_2))
and block_d1_d0_d2 _lh_block_arg1_1_1 _lh_funcomp_x_2_8 =
  ((fun _lh_funcomp_x_2_9 -> 
    (stack_d1_d0_d2 ((map_d3_d0_d5 spread_d1_d0_d2) _lh_funcomp_x_2_9))) ((groop_d1_d0_d2 _lh_block_arg1_1_1) _lh_funcomp_x_2_8))
and block_d1_d0_d3 _lh_block_arg1_1_0 _lh_funcomp_x_2_6 =
  ((fun _lh_funcomp_x_2_7 -> 
    (stack_d1_d0_d3 ((map_d3_d0_d7 spread_d1_d0_d3) _lh_funcomp_x_2_7))) ((groop_d1_d0_d3 _lh_block_arg1_1_0) _lh_funcomp_x_2_6))
and block_d1_d0_d4 _lh_block_arg1_1_4 _lh_funcomp_x_3_4 =
  ((fun _lh_funcomp_x_3_5 -> 
    (stack_d1_d0_d4 ((map_d3_d0_d9 spread_d1_d0_d4) _lh_funcomp_x_3_5))) ((groop_d1_d0_d4 _lh_block_arg1_1_4) _lh_funcomp_x_3_4))
and block_d1_d0_d5 _lh_block_arg1_6 _lh_funcomp_x_1_8 =
  ((fun _lh_funcomp_x_1_9 -> 
    (stack_d1_d0_d5 ((map_d3_d0_d1_d1 spread_d1_d0_d5) _lh_funcomp_x_1_9))) ((groop_d1_d0_d5 _lh_block_arg1_6) _lh_funcomp_x_1_8))
and block_d1_d0_d6 _lh_block_arg1_1_2 _lh_funcomp_x_3_0 =
  ((fun _lh_funcomp_x_3_1 -> 
    (stack_d1_d0_d6 ((map_d3_d0_d1_d3 spread_d1_d0_d6) _lh_funcomp_x_3_1))) ((groop_d1_d0_d6 _lh_block_arg1_1_2) _lh_funcomp_x_3_0))
and block_d1_d0_d7 _lh_block_arg1_2 _lh_funcomp_x_1_0 =
  ((fun _lh_funcomp_x_1_1 -> 
    (stack_d1_d0_d7 ((map_d3_d0_d1_d5 spread_d1_d0_d7) _lh_funcomp_x_1_1))) ((groop_d1_d0_d7 _lh_block_arg1_2) _lh_funcomp_x_1_0))
and block_d1_d0_d8 _lh_block_arg1_3 _lh_funcomp_x_1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (stack_d1_d0_d8 ((map_d3_d0_d1_d7 spread_d1_d0_d8) _lh_funcomp_x_1_3))) ((groop_d1_d0_d8 _lh_block_arg1_3) _lh_funcomp_x_1_2))
and block_d1_d0_d9 _lh_block_arg1_5 _lh_funcomp_x_1_6 =
  ((fun _lh_funcomp_x_1_7 -> 
    (stack_d1_d0_d9 ((map_d3_d0_d1_d9 spread_d1_d0_d9) _lh_funcomp_x_1_7))) ((groop_d1_d0_d9 _lh_block_arg1_5) _lh_funcomp_x_1_6))
and body_d0_d0_d0 _lh_funcomp_x_7 =
  ((fun _lh_funcomp_x_8 -> 
    ((block_d0_d0_d0 3) ((map_d1_d0_d0 (fun _lh_funcomp_x_9 -> 
      (pad_d0_d0_d0 (pic_d0_d0_d0 _lh_funcomp_x_9)))) _lh_funcomp_x_8))) (months_d0_d0_d0 _lh_funcomp_x_7))
and cal_d0_d0_d0 _lh_cal_arg1_1 =
  (unlines_d0_d0_d0 ((mappend_d1_d5_d0_d2 (banner_d0_d0_d0 _lh_cal_arg1_1)) (body_d0_d0_d0 _lh_cal_arg1_1)))
and cjustify_d0_d0_d0 _lh_cjustify_arg1_9 _lh_cjustify_arg2_9 =
  (let rec m_9 = (_lh_cjustify_arg1_9 - (length_d0_d0_d0 _lh_cjustify_arg2_9)) in
    (let rec halfm_9 = (m_9 / 2) in
      ((mappend_d0_d0_d0 ((mappend_d1_d0_d0 (space_d0_d0_d0 halfm_9)) _lh_cjustify_arg2_9)) (space_d1_d0_d0 (m_9 - halfm_9)))))
and cjustify_d1_d0_d0 _lh_cjustify_arg1_1_4 _lh_cjustify_arg2_1_4 =
  (let rec m_1_4 = (_lh_cjustify_arg1_1_4 - (length_d2_d0_d0 _lh_cjustify_arg2_1_4)) in
    (let rec halfm_1_4 = (m_1_4 / 2) in
      ((mappend_d1_d3_d0_d0 ((mappend_d1_d4_d0_d0 (space_d3_d0_d0 halfm_1_4)) _lh_cjustify_arg2_1_4)) (space_d4_d0_d0 (m_1_4 - halfm_1_4)))))
and cjustify_d1_d0_d1 _lh_cjustify_arg1_1_0 _lh_cjustify_arg2_1_0 =
  (let rec m_1_0 = (_lh_cjustify_arg1_1_0 - (length_d2_d0_d1 _lh_cjustify_arg2_1_0)) in
    (let rec halfm_1_0 = (m_1_0 / 2) in
      ((mappend_d1_d3_d0_d1 ((mappend_d1_d4_d0_d2 (space_d3_d0_d1 halfm_1_0)) _lh_cjustify_arg2_1_0)) (space_d4_d0_d1 (m_1_0 - halfm_1_0)))))
and cjustify_d1_d0_d1_d0 _lh_cjustify_arg1_1_1 _lh_cjustify_arg2_1_1 =
  (let rec m_1_1 = (_lh_cjustify_arg1_1_1 - (length_d2_d0_d1_d0 _lh_cjustify_arg2_1_1)) in
    (let rec halfm_1_1 = (m_1_1 / 2) in
      ((mappend_d1_d3_d0_d1_d0 ((mappend_d1_d4_d0_d2_d0 (space_d3_d0_d1_d0 halfm_1_1)) _lh_cjustify_arg2_1_1)) (space_d4_d0_d1_d0 (m_1_1 - halfm_1_1)))))
and cjustify_d1_d0_d1_d1 _lh_cjustify_arg1_6 _lh_cjustify_arg2_6 =
  (let rec m_6 = (_lh_cjustify_arg1_6 - (length_d2_d0_d1_d1 _lh_cjustify_arg2_6)) in
    (let rec halfm_6 = (m_6 / 2) in
      ((mappend_d1_d3_d0_d1_d1 ((mappend_d1_d4_d0_d2_d2 (space_d3_d0_d1_d1 halfm_6)) _lh_cjustify_arg2_6)) (space_d4_d0_d1_d1 (m_6 - halfm_6)))))
and cjustify_d1_d0_d2 _lh_cjustify_arg1_4 _lh_cjustify_arg2_4 =
  (let rec m_4 = (_lh_cjustify_arg1_4 - (length_d2_d0_d2 _lh_cjustify_arg2_4)) in
    (let rec halfm_4 = (m_4 / 2) in
      ((mappend_d1_d3_d0_d2 ((mappend_d1_d4_d0_d4 (space_d3_d0_d2 halfm_4)) _lh_cjustify_arg2_4)) (space_d4_d0_d2 (m_4 - halfm_4)))))
and cjustify_d1_d0_d3 _lh_cjustify_arg1_8 _lh_cjustify_arg2_8 =
  (let rec m_8 = (_lh_cjustify_arg1_8 - (length_d2_d0_d3 _lh_cjustify_arg2_8)) in
    (let rec halfm_8 = (m_8 / 2) in
      ((mappend_d1_d3_d0_d3 ((mappend_d1_d4_d0_d6 (space_d3_d0_d3 halfm_8)) _lh_cjustify_arg2_8)) (space_d4_d0_d3 (m_8 - halfm_8)))))
and cjustify_d1_d0_d4 _lh_cjustify_arg1_1_3 _lh_cjustify_arg2_1_3 =
  (let rec m_1_3 = (_lh_cjustify_arg1_1_3 - (length_d2_d0_d4 _lh_cjustify_arg2_1_3)) in
    (let rec halfm_1_3 = (m_1_3 / 2) in
      ((mappend_d1_d3_d0_d4 ((mappend_d1_d4_d0_d8 (space_d3_d0_d4 halfm_1_3)) _lh_cjustify_arg2_1_3)) (space_d4_d0_d4 (m_1_3 - halfm_1_3)))))
and cjustify_d1_d0_d5 _lh_cjustify_arg1_7 _lh_cjustify_arg2_7 =
  (let rec m_7 = (_lh_cjustify_arg1_7 - (length_d2_d0_d5 _lh_cjustify_arg2_7)) in
    (let rec halfm_7 = (m_7 / 2) in
      ((mappend_d1_d3_d0_d5 ((mappend_d1_d4_d0_d1_d0 (space_d3_d0_d5 halfm_7)) _lh_cjustify_arg2_7)) (space_d4_d0_d5 (m_7 - halfm_7)))))
and cjustify_d1_d0_d6 _lh_cjustify_arg1_1_2 _lh_cjustify_arg2_1_2 =
  (let rec m_1_2 = (_lh_cjustify_arg1_1_2 - (length_d2_d0_d6 _lh_cjustify_arg2_1_2)) in
    (let rec halfm_1_2 = (m_1_2 / 2) in
      ((mappend_d1_d3_d0_d6 ((mappend_d1_d4_d0_d1_d2 (space_d3_d0_d6 halfm_1_2)) _lh_cjustify_arg2_1_2)) (space_d4_d0_d6 (m_1_2 - halfm_1_2)))))
and cjustify_d1_d0_d7 _lh_cjustify_arg1_5 _lh_cjustify_arg2_5 =
  (let rec m_5 = (_lh_cjustify_arg1_5 - (length_d2_d0_d7 _lh_cjustify_arg2_5)) in
    (let rec halfm_5 = (m_5 / 2) in
      ((mappend_d1_d3_d0_d7 ((mappend_d1_d4_d0_d1_d4 (space_d3_d0_d7 halfm_5)) _lh_cjustify_arg2_5)) (space_d4_d0_d7 (m_5 - halfm_5)))))
and cjustify_d1_d0_d8 _lh_cjustify_arg1_2 _lh_cjustify_arg2_2 =
  (let rec m_2 = (_lh_cjustify_arg1_2 - (length_d2_d0_d8 _lh_cjustify_arg2_2)) in
    (let rec halfm_2 = (m_2 / 2) in
      ((mappend_d1_d3_d0_d8 ((mappend_d1_d4_d0_d1_d6 (space_d3_d0_d8 halfm_2)) _lh_cjustify_arg2_2)) (space_d4_d0_d8 (m_2 - halfm_2)))))
and cjustify_d1_d0_d9 _lh_cjustify_arg1_3 _lh_cjustify_arg2_3 =
  (let rec m_3 = (_lh_cjustify_arg1_3 - (length_d2_d0_d9 _lh_cjustify_arg2_3)) in
    (let rec halfm_3 = (m_3 / 2) in
      ((mappend_d1_d3_d0_d9 ((mappend_d1_d4_d0_d1_d8 (space_d3_d0_d9 halfm_3)) _lh_cjustify_arg2_3)) (space_d4_d0_d9 (m_3 - halfm_3)))))
and copy_d0_d0_d0 _lh_copy_arg1_5_8 _lh_copy_arg2_5_8 _lh_popOutId_0_2_1 =
  (if (_lh_copy_arg1_5_8 > 0) then
    (let rec t_2_7_2 = ((copy_d0_d0_d0 (_lh_copy_arg1_5_8 - 1)) _lh_copy_arg2_5_8) in
      (let rec h_2_6_8 = _lh_copy_arg2_5_8 in
        (`LH_C(h_2_6_8, ((mappend_d1_d0_d1 t_2_7_2) _lh_popOutId_0_2_1)))))
  else
    _lh_popOutId_0_2_1)
and copy_d1_d0_d0_d0 _lh_copy_arg1_2_5 _lh_copy_arg2_2_5 _lh_popOutId_0_2_7 =
  (if (_lh_copy_arg1_2_5 > 0) then
    (let rec t_1_3_0 = ((copy_d1_d0_d0_d0 (_lh_copy_arg1_2_5 - 1)) _lh_copy_arg2_2_5) in
      (let rec h_1_2_6 = _lh_copy_arg2_2_5 in
        (`LH_C(h_1_2_6, ((mappend_d1_d1_d0_d1 t_1_3_0) _lh_popOutId_0_2_7)))))
  else
    _lh_popOutId_0_2_7)
and copy_d1_d0_d0_d1 _lh_copy_arg1_4_9 _lh_copy_arg2_4_9 _lh_popOutId_0_3_5 =
  (if (_lh_copy_arg1_4_9 > 0) then
    (let rec t_2_1_2 = ((copy_d1_d0_d0_d1 (_lh_copy_arg1_4_9 - 1)) _lh_copy_arg2_4_9) in
      (let rec h_2_0_8 = _lh_copy_arg2_4_9 in
        (`LH_C(h_2_0_8, ((mappend_d1_d1_d0_d3 t_2_1_2) _lh_popOutId_0_3_5)))))
  else
    _lh_popOutId_0_3_5)
and copy_d1_d0_d0_d1_d0 _lh_copy_arg1_2_8 _lh_copy_arg2_2_8 _lh_popOutId_0_3_4 =
  (if (_lh_copy_arg1_2_8 > 0) then
    (let rec t_1_4_3 = ((copy_d1_d0_d0_d1_d0 (_lh_copy_arg1_2_8 - 1)) _lh_copy_arg2_2_8) in
      (let rec h_1_3_9 = _lh_copy_arg2_2_8 in
        (`LH_C(h_1_3_9, ((mappend_d1_d1_d0_d2_d1 t_1_4_3) _lh_popOutId_0_3_4)))))
  else
    _lh_popOutId_0_3_4)
and copy_d1_d0_d0_d1_d1 _lh_copy_arg1_4_4 _lh_copy_arg2_4_4 _lh_popOutId_0_4_7 =
  (if (_lh_copy_arg1_4_4 > 0) then
    (let rec t_1_8_6 = ((copy_d1_d0_d0_d1_d1 (_lh_copy_arg1_4_4 - 1)) _lh_copy_arg2_4_4) in
      (let rec h_1_8_2 = _lh_copy_arg2_4_4 in
        (`LH_C(h_1_8_2, ((mappend_d1_d1_d0_d2_d3 t_1_8_6) _lh_popOutId_0_4_7)))))
  else
    _lh_popOutId_0_4_7)
and copy_d1_d0_d0_d2 _lh_copy_arg1_1_6 _lh_copy_arg2_1_6 _lh_popOutId_0_1 =
  (if (_lh_copy_arg1_1_6 > 0) then
    (let rec t_7_9 = ((copy_d1_d0_d0_d2 (_lh_copy_arg1_1_6 - 1)) _lh_copy_arg2_1_6) in
      (let rec h_7_6 = _lh_copy_arg2_1_6 in
        (`LH_C(h_7_6, ((mappend_d1_d1_d0_d5 t_7_9) _lh_popOutId_0_1)))))
  else
    _lh_popOutId_0_1)
and copy_d1_d0_d0_d3 _lh_copy_arg1_5_0 _lh_copy_arg2_5_0 _lh_popOutId_0_2_9 =
  (if (_lh_copy_arg1_5_0 > 0) then
    (let rec t_2_2_7 = ((copy_d1_d0_d0_d3 (_lh_copy_arg1_5_0 - 1)) _lh_copy_arg2_5_0) in
      (let rec h_2_2_3 = _lh_copy_arg2_5_0 in
        (`LH_C(h_2_2_3, ((mappend_d1_d1_d0_d7 t_2_2_7) _lh_popOutId_0_2_9)))))
  else
    _lh_popOutId_0_2_9)
and copy_d1_d0_d0_d4 _lh_copy_arg1_4_5 _lh_copy_arg2_4_5 _lh_popOutId_0_5_0 =
  (if (_lh_copy_arg1_4_5 > 0) then
    (let rec t_1_8_8 = ((copy_d1_d0_d0_d4 (_lh_copy_arg1_4_5 - 1)) _lh_copy_arg2_4_5) in
      (let rec h_1_8_4 = _lh_copy_arg2_4_5 in
        (`LH_C(h_1_8_4, ((mappend_d1_d1_d0_d9 t_1_8_8) _lh_popOutId_0_5_0)))))
  else
    _lh_popOutId_0_5_0)
and copy_d1_d0_d0_d5 _lh_copy_arg1_2_2 _lh_copy_arg2_2_2 _lh_popOutId_0_3 =
  (if (_lh_copy_arg1_2_2 > 0) then
    (let rec t_1_0_9 = ((copy_d1_d0_d0_d5 (_lh_copy_arg1_2_2 - 1)) _lh_copy_arg2_2_2) in
      (let rec h_1_0_6 = _lh_copy_arg2_2_2 in
        (`LH_C(h_1_0_6, ((mappend_d1_d1_d0_d1_d1 t_1_0_9) _lh_popOutId_0_3)))))
  else
    _lh_popOutId_0_3)
and copy_d1_d0_d0_d6 _lh_copy_arg1_1_7 _lh_copy_arg2_1_7 _lh_popOutId_0_3_6 =
  (if (_lh_copy_arg1_1_7 > 0) then
    (let rec t_1_0_0 = ((copy_d1_d0_d0_d6 (_lh_copy_arg1_1_7 - 1)) _lh_copy_arg2_1_7) in
      (let rec h_9_7 = _lh_copy_arg2_1_7 in
        (`LH_C(h_9_7, ((mappend_d1_d1_d0_d1_d3 t_1_0_0) _lh_popOutId_0_3_6)))))
  else
    _lh_popOutId_0_3_6)
and copy_d1_d0_d0_d7 _lh_copy_arg1_3_8 _lh_copy_arg2_3_8 _lh_popOutId_0_1_8 =
  (if (_lh_copy_arg1_3_8 > 0) then
    (let rec t_1_6_9 = ((copy_d1_d0_d0_d7 (_lh_copy_arg1_3_8 - 1)) _lh_copy_arg2_3_8) in
      (let rec h_1_6_5 = _lh_copy_arg2_3_8 in
        (`LH_C(h_1_6_5, ((mappend_d1_d1_d0_d1_d5 t_1_6_9) _lh_popOutId_0_1_8)))))
  else
    _lh_popOutId_0_1_8)
and copy_d1_d0_d0_d8 _lh_copy_arg1_5_3 _lh_copy_arg2_5_3 _lh_popOutId_0_1_3 =
  (if (_lh_copy_arg1_5_3 > 0) then
    (let rec t_2_4_2 = ((copy_d1_d0_d0_d8 (_lh_copy_arg1_5_3 - 1)) _lh_copy_arg2_5_3) in
      (let rec h_2_3_8 = _lh_copy_arg2_5_3 in
        (`LH_C(h_2_3_8, ((mappend_d1_d1_d0_d1_d7 t_2_4_2) _lh_popOutId_0_1_3)))))
  else
    _lh_popOutId_0_1_3)
and copy_d1_d0_d0_d9 _lh_copy_arg1_3_7 _lh_copy_arg2_3_7 _lh_popOutId_0_2_8 =
  (if (_lh_copy_arg1_3_7 > 0) then
    (let rec t_1_6_8 = ((copy_d1_d0_d0_d9 (_lh_copy_arg1_3_7 - 1)) _lh_copy_arg2_3_7) in
      (let rec h_1_6_4 = _lh_copy_arg2_3_7 in
        (`LH_C(h_1_6_4, ((mappend_d1_d1_d0_d1_d9 t_1_6_8) _lh_popOutId_0_2_8)))))
  else
    _lh_popOutId_0_2_8)
and copy_d1_d1_d0_d0 _lh_copy_arg1_4_0 _lh_copy_arg2_4_0 _lh_popOutId_0_1_5 =
  (if (_lh_copy_arg1_4_0 > 0) then
    (let rec t_1_7_8 = ((copy_d1_d1_d0_d0 (_lh_copy_arg1_4_0 - 1)) _lh_copy_arg2_4_0) in
      (let rec h_1_7_4 = _lh_copy_arg2_4_0 in
        (`LH_C(h_1_7_4, ((mappend_d1_d4_d0_d1 t_1_7_8) _lh_popOutId_0_1_5)))))
  else
    _lh_popOutId_0_1_5)
and copy_d1_d1_d0_d1 _lh_copy_arg1_5_6 _lh_copy_arg2_5_6 _lh_popOutId_0_3_0 =
  (if (_lh_copy_arg1_5_6 > 0) then
    (let rec t_2_5_7 = ((copy_d1_d1_d0_d1 (_lh_copy_arg1_5_6 - 1)) _lh_copy_arg2_5_6) in
      (let rec h_2_5_3 = _lh_copy_arg2_5_6 in
        (`LH_C(h_2_5_3, ((mappend_d1_d4_d0_d3 t_2_5_7) _lh_popOutId_0_3_0)))))
  else
    _lh_popOutId_0_3_0)
and copy_d1_d1_d0_d1_d0 _lh_copy_arg1_4_7 _lh_copy_arg2_4_7 _lh_popOutId_0_5_4 =
  (if (_lh_copy_arg1_4_7 > 0) then
    (let rec t_1_9_6 = ((copy_d1_d1_d0_d1_d0 (_lh_copy_arg1_4_7 - 1)) _lh_copy_arg2_4_7) in
      (let rec h_1_9_2 = _lh_copy_arg2_4_7 in
        (`LH_C(h_1_9_2, ((mappend_d1_d4_d0_d2_d1 t_1_9_6) _lh_popOutId_0_5_4)))))
  else
    _lh_popOutId_0_5_4)
and copy_d1_d1_d0_d1_d1 _lh_copy_arg1_5_7 _lh_copy_arg2_5_7 _lh_popOutId_0_8 =
  (if (_lh_copy_arg1_5_7 > 0) then
    (let rec t_2_6_9 = ((copy_d1_d1_d0_d1_d1 (_lh_copy_arg1_5_7 - 1)) _lh_copy_arg2_5_7) in
      (let rec h_2_6_5 = _lh_copy_arg2_5_7 in
        (`LH_C(h_2_6_5, ((mappend_d1_d4_d0_d2_d3 t_2_6_9) _lh_popOutId_0_8)))))
  else
    _lh_popOutId_0_8)
and copy_d1_d1_d0_d2 _lh_copy_arg1_5_1 _lh_copy_arg2_5_1 _lh_popOutId_0_2_4 =
  (if (_lh_copy_arg1_5_1 > 0) then
    (let rec t_2_3_9 = ((copy_d1_d1_d0_d2 (_lh_copy_arg1_5_1 - 1)) _lh_copy_arg2_5_1) in
      (let rec h_2_3_5 = _lh_copy_arg2_5_1 in
        (`LH_C(h_2_3_5, ((mappend_d1_d4_d0_d5 t_2_3_9) _lh_popOutId_0_2_4)))))
  else
    _lh_popOutId_0_2_4)
and copy_d1_d1_d0_d3 _lh_copy_arg1_5_4 _lh_copy_arg2_5_4 _lh_popOutId_0_6 =
  (if (_lh_copy_arg1_5_4 > 0) then
    (let rec t_2_5_2 = ((copy_d1_d1_d0_d3 (_lh_copy_arg1_5_4 - 1)) _lh_copy_arg2_5_4) in
      (let rec h_2_4_8 = _lh_copy_arg2_5_4 in
        (`LH_C(h_2_4_8, ((mappend_d1_d4_d0_d7 t_2_5_2) _lh_popOutId_0_6)))))
  else
    _lh_popOutId_0_6)
and copy_d1_d1_d0_d4 _lh_copy_arg1_3_4 _lh_copy_arg2_3_4 _lh_popOutId_0_4_9 =
  (if (_lh_copy_arg1_3_4 > 0) then
    (let rec t_1_6_3 = ((copy_d1_d1_d0_d4 (_lh_copy_arg1_3_4 - 1)) _lh_copy_arg2_3_4) in
      (let rec h_1_5_9 = _lh_copy_arg2_3_4 in
        (`LH_C(h_1_5_9, ((mappend_d1_d4_d0_d9 t_1_6_3) _lh_popOutId_0_4_9)))))
  else
    _lh_popOutId_0_4_9)
and copy_d1_d1_d0_d5 _lh_copy_arg1_5_5 _lh_copy_arg2_5_5 _lh_popOutId_0_5_1 =
  (if (_lh_copy_arg1_5_5 > 0) then
    (let rec t_2_5_4 = ((copy_d1_d1_d0_d5 (_lh_copy_arg1_5_5 - 1)) _lh_copy_arg2_5_5) in
      (let rec h_2_5_0 = _lh_copy_arg2_5_5 in
        (`LH_C(h_2_5_0, ((mappend_d1_d4_d0_d1_d1 t_2_5_4) _lh_popOutId_0_5_1)))))
  else
    _lh_popOutId_0_5_1)
and copy_d1_d1_d0_d6 _lh_copy_arg1_1_4 _lh_copy_arg2_1_4 _lh_popOutId_0_5 =
  (if (_lh_copy_arg1_1_4 > 0) then
    (let rec t_5_9 = ((copy_d1_d1_d0_d6 (_lh_copy_arg1_1_4 - 1)) _lh_copy_arg2_1_4) in
      (let rec h_5_7 = _lh_copy_arg2_1_4 in
        (`LH_C(h_5_7, ((mappend_d1_d4_d0_d1_d3 t_5_9) _lh_popOutId_0_5)))))
  else
    _lh_popOutId_0_5)
and copy_d1_d1_d0_d7 _lh_copy_arg1_4_2 _lh_copy_arg2_4_2 _lh_popOutId_0_3_1 =
  (if (_lh_copy_arg1_4_2 > 0) then
    (let rec t_1_8_1 = ((copy_d1_d1_d0_d7 (_lh_copy_arg1_4_2 - 1)) _lh_copy_arg2_4_2) in
      (let rec h_1_7_7 = _lh_copy_arg2_4_2 in
        (`LH_C(h_1_7_7, ((mappend_d1_d4_d0_d1_d5 t_1_8_1) _lh_popOutId_0_3_1)))))
  else
    _lh_popOutId_0_3_1)
and copy_d1_d1_d0_d8 _lh_copy_arg1_1_3 _lh_copy_arg2_1_3 _lh_popOutId_0_4_2 =
  (if (_lh_copy_arg1_1_3 > 0) then
    (let rec t_5_1 = ((copy_d1_d1_d0_d8 (_lh_copy_arg1_1_3 - 1)) _lh_copy_arg2_1_3) in
      (let rec h_4_9 = _lh_copy_arg2_1_3 in
        (`LH_C(h_4_9, ((mappend_d1_d4_d0_d1_d7 t_5_1) _lh_popOutId_0_4_2)))))
  else
    _lh_popOutId_0_4_2)
and copy_d1_d1_d0_d9 _lh_copy_arg1_3_6 _lh_copy_arg2_3_6 _lh_popOutId_0_1_4 =
  (if (_lh_copy_arg1_3_6 > 0) then
    (let rec t_1_6_6 = ((copy_d1_d1_d0_d9 (_lh_copy_arg1_3_6 - 1)) _lh_copy_arg2_3_6) in
      (let rec h_1_6_2 = _lh_copy_arg2_3_6 in
        (`LH_C(h_1_6_2, ((mappend_d1_d4_d0_d1_d9 t_1_6_6) _lh_popOutId_0_1_4)))))
  else
    _lh_popOutId_0_1_4)
and copy_d2_d0_d0 _lh_copy_arg1_2_9 _lh_copy_arg2_2_9 _lh_popOutId_0_1_9 =
  (if (_lh_copy_arg1_2_9 > 0) then
    (let rec t_1_4_5 = ((copy_d2_d0_d0 (_lh_copy_arg1_2_9 - 1)) _lh_copy_arg2_2_9) in
      (let rec h_1_4_1 = _lh_copy_arg2_2_9 in
        (`LH_C(h_1_4_1, ((mappend_d1_d5_d0_d0 t_1_4_5) _lh_popOutId_0_1_9)))))
  else
    _lh_popOutId_0_1_9)
and copy_d6_d0_d0 _lh_copy_arg1_2_6 _lh_copy_arg2_2_6 _lh_popOutId_0_1_1 _lh_popOutId_1_1 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (_lh_copy_arg1_2_6 > 0) then
    (let rec tx_1_4 = ((copy_d6_d0_d0 (_lh_copy_arg1_2_6 - 1)) _lh_copy_arg2_2_6) in
      (let rec hx_1_4 = _lh_copy_arg2_2_6 in
        (match _lh_popOutId_1_1 with
          | `LH_C(hy_1_2, ty_1_2) -> 
            (let rec tx_1_5 = (((zipWith_d2_d0_d0 _lh_popOutId_0_1_1) tx_1_4) ty_1_2) in
              (let rec hx_1_5 = ((_lh_popOutId_0_1_1 hx_1_4) hy_1_2) in
                (((_lh_popOutId_3_0 _lh_popOutId_2_0) hx_1_5) tx_1_5)))
          | `LH_N -> 
            (fun ys_1_3_7 -> 
              ys_1_3_7))))
  else
    (fun ys_1_4_0 -> 
      ys_1_4_0))
and copy_d7_d0_d0 _lh_copy_arg1_3_5 _lh_copy_arg2_3_5 _lh_popOutId_0_1_7 =
  (if (_lh_copy_arg1_3_5 > 0) then
    (let rec t_1_6_5 = ((copy_d7_d0_d0 (_lh_copy_arg1_3_5 - 1)) _lh_copy_arg2_3_5) in
      (let rec h_1_6_1 = _lh_copy_arg2_3_5 in
        (`LH_C(h_1_6_1, ((mappend_d7_d0_d1 t_1_6_5) _lh_popOutId_0_1_7)))))
  else
    _lh_popOutId_0_1_7)
and copy_d8_d0_d0 _lh_copy_arg1_3_3 _lh_copy_arg2_3_3 _lh_popOutId_0_2_6 _lh_popOutId_1_2 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (_lh_copy_arg1_3_3 > 0) then
    (let rec ty_1_4 = ((copy_d8_d0_d0 (_lh_copy_arg1_3_3 - 1)) _lh_copy_arg2_3_3) in
      (let rec hy_1_4 = _lh_copy_arg2_3_3 in
        (let rec t_1_5_7 = (((zipWith_d1_d0_d0 _lh_popOutId_0_2_6) _lh_popOutId_2_1) ty_1_4) in
          (let rec h_1_5_3 = ((_lh_popOutId_0_2_6 _lh_popOutId_1_2) hy_1_4) in
            (`LH_C(h_1_5_3, ((mappend_d5_d0_d1 t_1_5_7) _lh_popOutId_3_1)))))))
  else
    _lh_popOutId_3_1)
and dates_d0_d0_d0 _lh_dates_arg1_5 _lh_dates_arg2_5 =
  ((map_d4_d0_d1 (fun d_5 -> 
    ((date_d0_d0_d0 _lh_dates_arg2_5) d_5))) ((enumFromTo_d0_d0_d0 (1 - _lh_dates_arg1_5)) (42 - _lh_dates_arg1_5)))
and dates_d0_d0_d1 _lh_dates_arg1_1_0 _lh_dates_arg2_1_0 =
  ((map_d4_d0_d3 (fun d_1_0 -> 
    ((date_d0_d0_d1 _lh_dates_arg2_1_0) d_1_0))) ((enumFromTo_d0_d0_d1 (1 - _lh_dates_arg1_1_0)) (42 - _lh_dates_arg1_1_0)))
and dates_d0_d0_d1_d0 _lh_dates_arg1_7 _lh_dates_arg2_7 =
  ((map_d4_d0_d2_d1 (fun d_7 -> 
    ((date_d0_d0_d1_d0 _lh_dates_arg2_7) d_7))) ((enumFromTo_d0_d0_d1_d0 (1 - _lh_dates_arg1_7)) (42 - _lh_dates_arg1_7)))
and dates_d0_d0_d1_d1 _lh_dates_arg1_2 _lh_dates_arg2_2 =
  ((map_d4_d0_d2_d3 (fun d_2 -> 
    ((date_d0_d0_d1_d1 _lh_dates_arg2_2) d_2))) ((enumFromTo_d0_d0_d1_d1 (1 - _lh_dates_arg1_2)) (42 - _lh_dates_arg1_2)))
and dates_d0_d0_d2 _lh_dates_arg1_1_2 _lh_dates_arg2_1_2 =
  ((map_d4_d0_d5 (fun d_1_2 -> 
    ((date_d0_d0_d2 _lh_dates_arg2_1_2) d_1_2))) ((enumFromTo_d0_d0_d2 (1 - _lh_dates_arg1_1_2)) (42 - _lh_dates_arg1_1_2)))
and dates_d0_d0_d3 _lh_dates_arg1_8 _lh_dates_arg2_8 =
  ((map_d4_d0_d7 (fun d_8 -> 
    ((date_d0_d0_d3 _lh_dates_arg2_8) d_8))) ((enumFromTo_d0_d0_d3 (1 - _lh_dates_arg1_8)) (42 - _lh_dates_arg1_8)))
and dates_d0_d0_d4 _lh_dates_arg1_1 _lh_dates_arg2_1 =
  ((map_d4_d0_d9 (fun d_1 -> 
    ((date_d0_d0_d4 _lh_dates_arg2_1) d_1))) ((enumFromTo_d0_d0_d4 (1 - _lh_dates_arg1_1)) (42 - _lh_dates_arg1_1)))
and dates_d0_d0_d5 _lh_dates_arg1_9 _lh_dates_arg2_9 =
  ((map_d4_d0_d1_d1 (fun d_9 -> 
    ((date_d0_d0_d5 _lh_dates_arg2_9) d_9))) ((enumFromTo_d0_d0_d5 (1 - _lh_dates_arg1_9)) (42 - _lh_dates_arg1_9)))
and dates_d0_d0_d6 _lh_dates_arg1_6 _lh_dates_arg2_6 =
  ((map_d4_d0_d1_d3 (fun d_6 -> 
    ((date_d0_d0_d6 _lh_dates_arg2_6) d_6))) ((enumFromTo_d0_d0_d6 (1 - _lh_dates_arg1_6)) (42 - _lh_dates_arg1_6)))
and dates_d0_d0_d7 _lh_dates_arg1_3 _lh_dates_arg2_3 =
  ((map_d4_d0_d1_d5 (fun d_3 -> 
    ((date_d0_d0_d7 _lh_dates_arg2_3) d_3))) ((enumFromTo_d0_d0_d7 (1 - _lh_dates_arg1_3)) (42 - _lh_dates_arg1_3)))
and dates_d0_d0_d8 _lh_dates_arg1_1_1 _lh_dates_arg2_1_1 =
  ((map_d4_d0_d1_d7 (fun d_1_1 -> 
    ((date_d0_d0_d8 _lh_dates_arg2_1_1) d_1_1))) ((enumFromTo_d0_d0_d8 (1 - _lh_dates_arg1_1_1)) (42 - _lh_dates_arg1_1_1)))
and dates_d0_d0_d9 _lh_dates_arg1_4 _lh_dates_arg2_4 =
  ((map_d4_d0_d1_d9 (fun d_4 -> 
    ((date_d0_d0_d9 _lh_dates_arg2_4) d_4))) ((enumFromTo_d0_d0_d9 (1 - _lh_dates_arg1_4)) (42 - _lh_dates_arg1_4)))
and date_d0_d0_d0 _lh_date_arg1_5 _lh_date_arg2_5 =
  (if ((_lh_date_arg2_5 < 1) || (_lh_date_arg1_5 < _lh_date_arg2_5)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d0 3) (string_of_int _lh_date_arg2_5)), (`LH_N))))
and date_d0_d0_d1 _lh_date_arg1_1 _lh_date_arg2_1 =
  (if ((_lh_date_arg2_1 < 1) || (_lh_date_arg1_1 < _lh_date_arg2_1)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d1 3) (string_of_int _lh_date_arg2_1)), (`LH_N))))
and date_d0_d0_d1_d0 _lh_date_arg1_3 _lh_date_arg2_3 =
  (if ((_lh_date_arg2_3 < 1) || (_lh_date_arg1_3 < _lh_date_arg2_3)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d1_d0 3) (string_of_int _lh_date_arg2_3)), (`LH_N))))
and date_d0_d0_d1_d1 _lh_date_arg1_1_0 _lh_date_arg2_1_0 =
  (if ((_lh_date_arg2_1_0 < 1) || (_lh_date_arg1_1_0 < _lh_date_arg2_1_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d1_d1 3) (string_of_int _lh_date_arg2_1_0)), (`LH_N))))
and date_d0_d0_d2 _lh_date_arg1_2 _lh_date_arg2_2 =
  (if ((_lh_date_arg2_2 < 1) || (_lh_date_arg1_2 < _lh_date_arg2_2)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d2 3) (string_of_int _lh_date_arg2_2)), (`LH_N))))
and date_d0_d0_d3 _lh_date_arg1_7 _lh_date_arg2_7 =
  (if ((_lh_date_arg2_7 < 1) || (_lh_date_arg1_7 < _lh_date_arg2_7)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d3 3) (string_of_int _lh_date_arg2_7)), (`LH_N))))
and date_d0_d0_d4 _lh_date_arg1_9 _lh_date_arg2_9 =
  (if ((_lh_date_arg2_9 < 1) || (_lh_date_arg1_9 < _lh_date_arg2_9)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d4 3) (string_of_int _lh_date_arg2_9)), (`LH_N))))
and date_d0_d0_d5 _lh_date_arg1_1_2 _lh_date_arg2_1_2 =
  (if ((_lh_date_arg2_1_2 < 1) || (_lh_date_arg1_1_2 < _lh_date_arg2_1_2)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d5 3) (string_of_int _lh_date_arg2_1_2)), (`LH_N))))
and date_d0_d0_d6 _lh_date_arg1_4 _lh_date_arg2_4 =
  (if ((_lh_date_arg2_4 < 1) || (_lh_date_arg1_4 < _lh_date_arg2_4)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d6 3) (string_of_int _lh_date_arg2_4)), (`LH_N))))
and date_d0_d0_d7 _lh_date_arg1_6 _lh_date_arg2_6 =
  (if ((_lh_date_arg2_6 < 1) || (_lh_date_arg1_6 < _lh_date_arg2_6)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d7 3) (string_of_int _lh_date_arg2_6)), (`LH_N))))
and date_d0_d0_d8 _lh_date_arg1_1_1 _lh_date_arg2_1_1 =
  (if ((_lh_date_arg2_1_1 < 1) || (_lh_date_arg1_1_1 < _lh_date_arg2_1_1)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d8 3) (string_of_int _lh_date_arg2_1_1)), (`LH_N))))
and date_d0_d0_d9 _lh_date_arg1_8 _lh_date_arg2_8 =
  (if ((_lh_date_arg2_8 < 1) || (_lh_date_arg1_8 < _lh_date_arg2_8)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_d0_d0_d9 3) (string_of_int _lh_date_arg2_8)), (`LH_N))))
and daynames_d0_d0_d0 ys_1_6_6 =
  (let rec t_1_5_0 = (fun ys_1_6_5 -> 
    ys_1_6_5) in
    (let rec h_1_4_6 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_4_6, ((mappend_d1_d2_d0_d0 t_1_5_0) ys_1_6_6)))))
and daynames_d0_d0_d1 ys_2_8_6 =
  (let rec t_2_4_0 = (fun ys_2_8_5 -> 
    ys_2_8_5) in
    (let rec h_2_3_6 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_3_6, ((mappend_d1_d2_d0_d2 t_2_4_0) ys_2_8_6)))))
and daynames_d0_d0_d1_d0 ys_1_0_0 =
  (let rec t_1_0_5 = (fun ys_9_9 -> 
    ys_9_9) in
    (let rec h_1_0_2 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_0_2, ((mappend_d1_d2_d0_d2_d0 t_1_0_5) ys_1_0_0)))))
and daynames_d0_d0_d1_d1 ys_2_2_5 =
  (let rec t_1_9_0 = (fun ys_2_2_4 -> 
    ys_2_2_4) in
    (let rec h_1_8_6 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_8_6, ((mappend_d1_d2_d0_d2_d2 t_1_9_0) ys_2_2_5)))))
and daynames_d0_d0_d2 ys_6_2 =
  (let rec t_5_6 = (fun ys_6_1 -> 
    ys_6_1) in
    (let rec h_5_4 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_5_4, ((mappend_d1_d2_d0_d4 t_5_6) ys_6_2)))))
and daynames_d0_d0_d3 ys_2_1_7 =
  (let rec t_1_8_7 = (fun ys_2_1_6 -> 
    ys_2_1_6) in
    (let rec h_1_8_3 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_8_3, ((mappend_d1_d2_d0_d6 t_1_8_7) ys_2_1_7)))))
and daynames_d0_d0_d4 ys_1_2_5 =
  (let rec t_1_2_4 = (fun ys_1_2_4 -> 
    ys_1_2_4) in
    (let rec h_1_2_1 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_2_1, ((mappend_d1_d2_d0_d8 t_1_2_4) ys_1_2_5)))))
and daynames_d0_d0_d5 ys_2_4_3 =
  (let rec t_2_0_3 = (fun ys_2_4_2 -> 
    ys_2_4_2) in
    (let rec h_1_9_9 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_9_9, ((mappend_d1_d2_d0_d1_d0 t_2_0_3) ys_2_4_3)))))
and daynames_d0_d0_d6 ys_2_4_7 =
  (let rec t_2_0_4 = (fun ys_2_4_6 -> 
    ys_2_4_6) in
    (let rec h_2_0_0 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_0_0, ((mappend_d1_d2_d0_d1_d2 t_2_0_4) ys_2_4_7)))))
and daynames_d0_d0_d7 ys_2_3_5 =
  (let rec t_1_9_9 = (fun ys_2_3_4 -> 
    ys_2_3_4) in
    (let rec h_1_9_5 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_9_5, ((mappend_d1_d2_d0_d1_d4 t_1_9_9) ys_2_3_5)))))
and daynames_d0_d0_d8 ys_1_4_8 =
  (let rec t_1_3_8 = (fun ys_1_4_7 -> 
    ys_1_4_7) in
    (let rec h_1_3_4 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_3_4, ((mappend_d1_d2_d0_d1_d6 t_1_3_8) ys_1_4_8)))))
and daynames_d0_d0_d9 ys_2_7_5 =
  (let rec t_2_3_1 = (fun ys_2_7_4 -> 
    ys_2_7_4) in
    (let rec h_2_2_7 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_2_7, ((mappend_d1_d2_d0_d1_d8 t_2_3_1) ys_2_7_5)))))
and end_d0_d0_d0 _lh_end_arg1_1 =
  (emptyPic_d1_d0_d0 (let rec _lh_emptyPic_LH_P2_1_5 = 25 in
    (let rec _lh_emptyPic_LH_P2_0_5 = 1 in
      (fun _lh_dummy_3_9 -> 
        ((copy_d4_d0_d0 _lh_emptyPic_LH_P2_0_5) ((copy_d5_d0_d0 _lh_emptyPic_LH_P2_1_5) ' '))))))
and entries_d0_d0_d0 _lh_entries_arg1_9 _lh_entries_arg2_9 =
  ((block_d1_d0_d0 7) ((dates_d0_d0_d0 _lh_entries_arg1_9) _lh_entries_arg2_9))
and entries_d0_d0_d1 _lh_entries_arg1_1_0 _lh_entries_arg2_1_0 =
  ((block_d1_d0_d1 7) ((dates_d0_d0_d1 _lh_entries_arg1_1_0) _lh_entries_arg2_1_0))
and entries_d0_d0_d1_d0 _lh_entries_arg1_8 _lh_entries_arg2_8 =
  ((block_d1_d0_d1_d0 7) ((dates_d0_d0_d1_d0 _lh_entries_arg1_8) _lh_entries_arg2_8))
and entries_d0_d0_d1_d1 _lh_entries_arg1_1_1 _lh_entries_arg2_1_1 =
  ((block_d1_d0_d1_d1 7) ((dates_d0_d0_d1_d1 _lh_entries_arg1_1_1) _lh_entries_arg2_1_1))
and entries_d0_d0_d2 _lh_entries_arg1_2 _lh_entries_arg2_2 =
  ((block_d1_d0_d2 7) ((dates_d0_d0_d2 _lh_entries_arg1_2) _lh_entries_arg2_2))
and entries_d0_d0_d3 _lh_entries_arg1_3 _lh_entries_arg2_3 =
  ((block_d1_d0_d3 7) ((dates_d0_d0_d3 _lh_entries_arg1_3) _lh_entries_arg2_3))
and entries_d0_d0_d4 _lh_entries_arg1_6 _lh_entries_arg2_6 =
  ((block_d1_d0_d4 7) ((dates_d0_d0_d4 _lh_entries_arg1_6) _lh_entries_arg2_6))
and entries_d0_d0_d5 _lh_entries_arg1_1_2 _lh_entries_arg2_1_2 =
  ((block_d1_d0_d5 7) ((dates_d0_d0_d5 _lh_entries_arg1_1_2) _lh_entries_arg2_1_2))
and entries_d0_d0_d6 _lh_entries_arg1_1 _lh_entries_arg2_1 =
  ((block_d1_d0_d6 7) ((dates_d0_d0_d6 _lh_entries_arg1_1) _lh_entries_arg2_1))
and entries_d0_d0_d7 _lh_entries_arg1_4 _lh_entries_arg2_4 =
  ((block_d1_d0_d7 7) ((dates_d0_d0_d7 _lh_entries_arg1_4) _lh_entries_arg2_4))
and entries_d0_d0_d8 _lh_entries_arg1_7 _lh_entries_arg2_7 =
  ((block_d1_d0_d8 7) ((dates_d0_d0_d8 _lh_entries_arg1_7) _lh_entries_arg2_7))
and entries_d0_d0_d9 _lh_entries_arg1_5 _lh_entries_arg2_5 =
  ((block_d1_d0_d9 7) ((dates_d0_d0_d9 _lh_entries_arg1_5) _lh_entries_arg2_5))
and enumFromTo_d0_d0_d0 a_2_4 b_2_2 _lh_popOutId_0_2_2 =
  (if (a_2_4 <= b_2_2) then
    (let rec t_1_5_2 = ((enumFromTo_d0_d0_d0 (a_2_4 + 1)) b_2_2) in
      (let rec h_1_4_8 = a_2_4 in
        (`LH_C((_lh_popOutId_0_2_2 h_1_4_8), ((map_d4_d0_d0 _lh_popOutId_0_2_2) t_1_5_2)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d1 a_2_2 b_2_0 _lh_popOutId_0_3_2 =
  (if (a_2_2 <= b_2_0) then
    (let rec t_1_1_4 = ((enumFromTo_d0_d0_d1 (a_2_2 + 1)) b_2_0) in
      (let rec h_1_1_1 = a_2_2 in
        (`LH_C((_lh_popOutId_0_3_2 h_1_1_1), ((map_d4_d0_d2 _lh_popOutId_0_3_2) t_1_1_4)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d1_d0 a_1_0 b_9 _lh_popOutId_0_1_6 =
  (if (a_1_0 <= b_9) then
    (let rec t_5_7 = ((enumFromTo_d0_d0_d1_d0 (a_1_0 + 1)) b_9) in
      (let rec h_5_5 = a_1_0 in
        (`LH_C((_lh_popOutId_0_1_6 h_5_5), ((map_d4_d0_d2_d0 _lh_popOutId_0_1_6) t_5_7)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d1_d1 a_3_5 b_3_3 _lh_popOutId_0_4_6 =
  (if (a_3_5 <= b_3_3) then
    (let rec t_1_8_9 = ((enumFromTo_d0_d0_d1_d1 (a_3_5 + 1)) b_3_3) in
      (let rec h_1_8_5 = a_3_5 in
        (`LH_C((_lh_popOutId_0_4_6 h_1_8_5), ((map_d4_d0_d2_d2 _lh_popOutId_0_4_6) t_1_8_9)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d2 a_4_2 b_4_0 _lh_popOutId_0_3_9 =
  (if (a_4_2 <= b_4_0) then
    (let rec t_2_4_3 = ((enumFromTo_d0_d0_d2 (a_4_2 + 1)) b_4_0) in
      (let rec h_2_3_9 = a_4_2 in
        (`LH_C((_lh_popOutId_0_3_9 h_2_3_9), ((map_d4_d0_d4 _lh_popOutId_0_3_9) t_2_4_3)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d3 a_3_8 b_3_6 _lh_popOutId_0_9 =
  (if (a_3_8 <= b_3_6) then
    (let rec t_2_2_5 = ((enumFromTo_d0_d0_d3 (a_3_8 + 1)) b_3_6) in
      (let rec h_2_2_1 = a_3_8 in
        (`LH_C((_lh_popOutId_0_9 h_2_2_1), ((map_d4_d0_d6 _lh_popOutId_0_9) t_2_2_5)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d4 a_4_6 b_4_4 _lh_popOutId_0_4_8 =
  (if (a_4_6 <= b_4_4) then
    (let rec t_2_6_0 = ((enumFromTo_d0_d0_d4 (a_4_6 + 1)) b_4_4) in
      (let rec h_2_5_6 = a_4_6 in
        (`LH_C((_lh_popOutId_0_4_8 h_2_5_6), ((map_d4_d0_d8 _lh_popOutId_0_4_8) t_2_6_0)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d5 a_2_6 b_2_4 _lh_popOutId_0_4_0 =
  (if (a_2_6 <= b_2_4) then
    (let rec t_1_6_4 = ((enumFromTo_d0_d0_d5 (a_2_6 + 1)) b_2_4) in
      (let rec h_1_6_0 = a_2_6 in
        (`LH_C((_lh_popOutId_0_4_0 h_1_6_0), ((map_d4_d0_d1_d0 _lh_popOutId_0_4_0) t_1_6_4)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d6 a_4_8 b_4_6 _lh_popOutId_0_5_2 =
  (if (a_4_8 <= b_4_6) then
    (let rec t_2_7_8 = ((enumFromTo_d0_d0_d6 (a_4_8 + 1)) b_4_6) in
      (let rec h_2_7_4 = a_4_8 in
        (`LH_C((_lh_popOutId_0_5_2 h_2_7_4), ((map_d4_d0_d1_d2 _lh_popOutId_0_5_2) t_2_7_8)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d7 a_1_1 b_1_0 _lh_popOutId_0_3_7 =
  (if (a_1_1 <= b_1_0) then
    (let rec t_6_2 = ((enumFromTo_d0_d0_d7 (a_1_1 + 1)) b_1_0) in
      (let rec h_6_0 = a_1_1 in
        (`LH_C((_lh_popOutId_0_3_7 h_6_0), ((map_d4_d0_d1_d4 _lh_popOutId_0_3_7) t_6_2)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d8 a_3_7 b_3_5 _lh_popOutId_0_7 =
  (if (a_3_7 <= b_3_5) then
    (let rec t_2_0_7 = ((enumFromTo_d0_d0_d8 (a_3_7 + 1)) b_3_5) in
      (let rec h_2_0_3 = a_3_7 in
        (`LH_C((_lh_popOutId_0_7 h_2_0_3), ((map_d4_d0_d1_d6 _lh_popOutId_0_7) t_2_0_7)))))
  else
    (`LH_N))
and enumFromTo_d0_d0_d9 a_4_1 b_3_9 _lh_popOutId_0_4_5 =
  (if (a_4_1 <= b_3_9) then
    (let rec t_2_4_1 = ((enumFromTo_d0_d0_d9 (a_4_1 + 1)) b_3_9) in
      (let rec h_2_3_7 = a_4_1 in
        (`LH_C((_lh_popOutId_0_4_5 h_2_3_7), ((map_d4_d0_d1_d8 _lh_popOutId_0_4_5) t_2_4_1)))))
  else
    (`LH_N))
and firstDays_d0_d0_d0 _lh_firstDays_arg1_1 =
  ((take_d1_d0_d1_d3 12) ((map_d2_d0_d0 (fun a_1_9 -> 
    (a_1_9 mod 7))) (((scanl_d0_d0_d1_d2 (fun a_2_0 b_1_8 -> 
    (a_2_0 + b_1_8))) (jan1st_d0_d0_d0 _lh_firstDays_arg1_1)) (monthLengths_d0_d0_d0 _lh_firstDays_arg1_1))))
and foldr1_d0_d0_d0 _lh_foldr1_arg1_2_4 _lh_foldr1_arg2_2_4 =
  (match _lh_foldr1_arg2_2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_2_4, _lh_foldr1_LH_C_1_2_4) -> 
      (((foldr_d0_d0_d0 _lh_foldr1_arg1_2_4) _lh_foldr1_LH_C_0_2_4) _lh_foldr1_LH_C_1_2_4)
    | _ -> 
      (failwith "error"))
and foldr1_d1_d0_d0 _lh_foldr1_arg1_2_2 _lh_foldr1_arg2_2_2 =
  (match _lh_foldr1_arg2_2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2_2, _lh_foldr1_LH_C_1_2_2) -> 
      (((foldr_d1_d0_d0 _lh_foldr1_arg1_2_2) _lh_foldr1_LH_C_0_2_2) _lh_foldr1_LH_C_1_2_2)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d0 _lh_foldr1_arg1_1_0 _lh_foldr1_arg2_1_0 =
  (match _lh_foldr1_arg2_1_0 with
    | `LH_C(_lh_foldr1_LH_C_0_1_0, _lh_foldr1_LH_C_1_1_0) -> 
      (((foldr_d2_d0_d0 _lh_foldr1_arg1_1_0) _lh_foldr1_LH_C_0_1_0) _lh_foldr1_LH_C_1_1_0)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d1 _lh_foldr1_arg1_9 _lh_foldr1_arg2_9 =
  (match _lh_foldr1_arg2_9 with
    | `LH_C(_lh_foldr1_LH_C_0_9, _lh_foldr1_LH_C_1_9) -> 
      (((foldr_d2_d0_d1 _lh_foldr1_arg1_9) _lh_foldr1_LH_C_0_9) _lh_foldr1_LH_C_1_9)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d1_d0 _lh_foldr1_arg1_4 _lh_foldr1_arg2_4 =
  (match _lh_foldr1_arg2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_4, _lh_foldr1_LH_C_1_4) -> 
      (((foldr_d2_d0_d1_d0 _lh_foldr1_arg1_4) _lh_foldr1_LH_C_0_4) _lh_foldr1_LH_C_1_4)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d1_d1 _lh_foldr1_arg1_2_8 _lh_foldr1_arg2_2_8 =
  (match _lh_foldr1_arg2_2_8 with
    | `LH_C(_lh_foldr1_LH_C_0_2_8, _lh_foldr1_LH_C_1_2_8) -> 
      (((foldr_d2_d0_d1_d1 _lh_foldr1_arg1_2_8) _lh_foldr1_LH_C_0_2_8) _lh_foldr1_LH_C_1_2_8)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d2 _lh_foldr1_arg1_1_6 _lh_foldr1_arg2_1_6 =
  (match _lh_foldr1_arg2_1_6 with
    | `LH_C(_lh_foldr1_LH_C_0_1_6, _lh_foldr1_LH_C_1_1_6) -> 
      (((foldr_d2_d0_d2 _lh_foldr1_arg1_1_6) _lh_foldr1_LH_C_0_1_6) _lh_foldr1_LH_C_1_1_6)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d3 _lh_foldr1_arg1_2_1 _lh_foldr1_arg2_2_1 =
  (match _lh_foldr1_arg2_2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_2_1, _lh_foldr1_LH_C_1_2_1) -> 
      (((foldr_d2_d0_d3 _lh_foldr1_arg1_2_1) _lh_foldr1_LH_C_0_2_1) _lh_foldr1_LH_C_1_2_1)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d4 _lh_foldr1_arg1_7 _lh_foldr1_arg2_7 =
  (match _lh_foldr1_arg2_7 with
    | `LH_C(_lh_foldr1_LH_C_0_7, _lh_foldr1_LH_C_1_7) -> 
      (((foldr_d2_d0_d4 _lh_foldr1_arg1_7) _lh_foldr1_LH_C_0_7) _lh_foldr1_LH_C_1_7)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d5 _lh_foldr1_arg1_1_3 _lh_foldr1_arg2_1_3 =
  (match _lh_foldr1_arg2_1_3 with
    | `LH_C(_lh_foldr1_LH_C_0_1_3, _lh_foldr1_LH_C_1_1_3) -> 
      (((foldr_d2_d0_d5 _lh_foldr1_arg1_1_3) _lh_foldr1_LH_C_0_1_3) _lh_foldr1_LH_C_1_1_3)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d6 _lh_foldr1_arg1_2_5 _lh_foldr1_arg2_2_5 =
  (match _lh_foldr1_arg2_2_5 with
    | `LH_C(_lh_foldr1_LH_C_0_2_5, _lh_foldr1_LH_C_1_2_5) -> 
      (((foldr_d2_d0_d6 _lh_foldr1_arg1_2_5) _lh_foldr1_LH_C_0_2_5) _lh_foldr1_LH_C_1_2_5)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d7 _lh_foldr1_arg1_8 _lh_foldr1_arg2_8 =
  (match _lh_foldr1_arg2_8 with
    | `LH_C(_lh_foldr1_LH_C_0_8, _lh_foldr1_LH_C_1_8) -> 
      (((foldr_d2_d0_d7 _lh_foldr1_arg1_8) _lh_foldr1_LH_C_0_8) _lh_foldr1_LH_C_1_8)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d8 _lh_foldr1_arg1_1_2 _lh_foldr1_arg2_1_2 =
  (match _lh_foldr1_arg2_1_2 with
    | `LH_C(_lh_foldr1_LH_C_0_1_2, _lh_foldr1_LH_C_1_1_2) -> 
      (((foldr_d2_d0_d8 _lh_foldr1_arg1_1_2) _lh_foldr1_LH_C_0_1_2) _lh_foldr1_LH_C_1_1_2)
    | _ -> 
      (failwith "error"))
and foldr1_d2_d0_d9 _lh_foldr1_arg1_2_7 _lh_foldr1_arg2_2_7 =
  (match _lh_foldr1_arg2_2_7 with
    | `LH_C(_lh_foldr1_LH_C_0_2_7, _lh_foldr1_LH_C_1_2_7) -> 
      (((foldr_d2_d0_d9 _lh_foldr1_arg1_2_7) _lh_foldr1_LH_C_0_2_7) _lh_foldr1_LH_C_1_2_7)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d0 _lh_foldr1_arg1_2_0 _lh_foldr1_arg2_2_0 =
  (match _lh_foldr1_arg2_2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_2_0, _lh_foldr1_LH_C_1_2_0) -> 
      (((foldr_d3_d0_d0 _lh_foldr1_arg1_2_0) _lh_foldr1_LH_C_0_2_0) _lh_foldr1_LH_C_1_2_0)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d1 _lh_foldr1_arg1_1_7 _lh_foldr1_arg2_1_7 =
  (match _lh_foldr1_arg2_1_7 with
    | `LH_C(_lh_foldr1_LH_C_0_1_7, _lh_foldr1_LH_C_1_1_7) -> 
      (((foldr_d3_d0_d1 _lh_foldr1_arg1_1_7) _lh_foldr1_LH_C_0_1_7) _lh_foldr1_LH_C_1_1_7)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d1_d0 _lh_foldr1_arg1_2_9 _lh_foldr1_arg2_2_9 =
  (match _lh_foldr1_arg2_2_9 with
    | `LH_C(_lh_foldr1_LH_C_0_2_9, _lh_foldr1_LH_C_1_2_9) -> 
      (((foldr_d3_d0_d1_d0 _lh_foldr1_arg1_2_9) _lh_foldr1_LH_C_0_2_9) _lh_foldr1_LH_C_1_2_9)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d1_d1 _lh_foldr1_arg1_1_9 _lh_foldr1_arg2_1_9 =
  (match _lh_foldr1_arg2_1_9 with
    | `LH_C(_lh_foldr1_LH_C_0_1_9, _lh_foldr1_LH_C_1_1_9) -> 
      (((foldr_d3_d0_d1_d1 _lh_foldr1_arg1_1_9) _lh_foldr1_LH_C_0_1_9) _lh_foldr1_LH_C_1_1_9)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d2 _lh_foldr1_arg1_1_1 _lh_foldr1_arg2_1_1 =
  (match _lh_foldr1_arg2_1_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1_1, _lh_foldr1_LH_C_1_1_1) -> 
      (((foldr_d3_d0_d2 _lh_foldr1_arg1_1_1) _lh_foldr1_LH_C_0_1_1) _lh_foldr1_LH_C_1_1_1)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d3 _lh_foldr1_arg1_1_8 _lh_foldr1_arg2_1_8 =
  (match _lh_foldr1_arg2_1_8 with
    | `LH_C(_lh_foldr1_LH_C_0_1_8, _lh_foldr1_LH_C_1_1_8) -> 
      (((foldr_d3_d0_d3 _lh_foldr1_arg1_1_8) _lh_foldr1_LH_C_0_1_8) _lh_foldr1_LH_C_1_1_8)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d4 _lh_foldr1_arg1_1_4 _lh_foldr1_arg2_1_4 =
  (match _lh_foldr1_arg2_1_4 with
    | `LH_C(_lh_foldr1_LH_C_0_1_4, _lh_foldr1_LH_C_1_1_4) -> 
      (((foldr_d3_d0_d4 _lh_foldr1_arg1_1_4) _lh_foldr1_LH_C_0_1_4) _lh_foldr1_LH_C_1_1_4)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d5 _lh_foldr1_arg1_2_3 _lh_foldr1_arg2_2_3 =
  (match _lh_foldr1_arg2_2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_2_3, _lh_foldr1_LH_C_1_2_3) -> 
      (((foldr_d3_d0_d5 _lh_foldr1_arg1_2_3) _lh_foldr1_LH_C_0_2_3) _lh_foldr1_LH_C_1_2_3)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d6 _lh_foldr1_arg1_5 _lh_foldr1_arg2_5 =
  (match _lh_foldr1_arg2_5 with
    | `LH_C(_lh_foldr1_LH_C_0_5, _lh_foldr1_LH_C_1_5) -> 
      (((foldr_d3_d0_d6 _lh_foldr1_arg1_5) _lh_foldr1_LH_C_0_5) _lh_foldr1_LH_C_1_5)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d7 _lh_foldr1_arg1_1_5 _lh_foldr1_arg2_1_5 =
  (match _lh_foldr1_arg2_1_5 with
    | `LH_C(_lh_foldr1_LH_C_0_1_5, _lh_foldr1_LH_C_1_1_5) -> 
      (((foldr_d3_d0_d7 _lh_foldr1_arg1_1_5) _lh_foldr1_LH_C_0_1_5) _lh_foldr1_LH_C_1_1_5)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d8 _lh_foldr1_arg1_6 _lh_foldr1_arg2_6 =
  (match _lh_foldr1_arg2_6 with
    | `LH_C(_lh_foldr1_LH_C_0_6, _lh_foldr1_LH_C_1_6) -> 
      (((foldr_d3_d0_d8 _lh_foldr1_arg1_6) _lh_foldr1_LH_C_0_6) _lh_foldr1_LH_C_1_6)
    | _ -> 
      (failwith "error"))
and foldr1_d3_d0_d9 _lh_foldr1_arg1_2_6 _lh_foldr1_arg2_2_6 =
  (match _lh_foldr1_arg2_2_6 with
    | `LH_C(_lh_foldr1_LH_C_0_2_6, _lh_foldr1_LH_C_1_2_6) -> 
      (((foldr_d3_d0_d9 _lh_foldr1_arg1_2_6) _lh_foldr1_LH_C_0_2_6) _lh_foldr1_LH_C_1_2_6)
    | _ -> 
      (failwith "error"))
and groop_d0_d0_d0 _lh_groop_arg1_4 _lh_groop_arg2_4 _lh_popOutId_0_2_5 =
  (match _lh_groop_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_9_3 = ((groop_d0_d0_d0 _lh_groop_arg1_4) ((drop_d0_d0_d0 _lh_groop_arg1_4) _lh_groop_arg2_4)) in
        (let rec h_9_0 = ((take_d0_d0_d0 _lh_groop_arg1_4) _lh_groop_arg2_4) in
          (`LH_C((_lh_popOutId_0_2_5 h_9_0), ((map_d0_d0_d0 _lh_popOutId_0_2_5) t_9_3))))))
and groop_d1_d0_d0 _lh_groop_arg1_6 _lh_groop_arg2_6 _lh_popOutId_0_4_4 =
  (match _lh_groop_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_0_8 = ((groop_d1_d0_d0 _lh_groop_arg1_6) ((drop_d1_d0_d0 _lh_groop_arg1_6) _lh_groop_arg2_6)) in
        (let rec h_1_0_5 = ((take_d2_d0_d0 _lh_groop_arg1_6) _lh_groop_arg2_6) in
          (`LH_C((_lh_popOutId_0_4_4 h_1_0_5), ((map_d3_d0_d0 _lh_popOutId_0_4_4) t_1_0_8))))))
and groop_d1_d0_d1 _lh_groop_arg1_1_2 _lh_groop_arg2_1_2 _lh_popOutId_0_4_3 =
  (match _lh_groop_arg2_1_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_0_8 = ((groop_d1_d0_d1 _lh_groop_arg1_1_2) ((drop_d1_d0_d1 _lh_groop_arg1_1_2) _lh_groop_arg2_1_2)) in
        (let rec h_2_0_4 = ((take_d2_d0_d1 _lh_groop_arg1_1_2) _lh_groop_arg2_1_2) in
          (`LH_C((_lh_popOutId_0_4_3 h_2_0_4), ((map_d3_d0_d2 _lh_popOutId_0_4_3) t_2_0_8))))))
and groop_d1_d0_d1_d0 _lh_groop_arg1_1_4 _lh_groop_arg2_1_4 _lh_popOutId_0_1_2 =
  (match _lh_groop_arg2_1_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_5_9 = ((groop_d1_d0_d1_d0 _lh_groop_arg1_1_4) ((drop_d1_d0_d1_d0 _lh_groop_arg1_1_4) _lh_groop_arg2_1_4)) in
        (let rec h_2_5_5 = ((take_d2_d0_d1_d0 _lh_groop_arg1_1_4) _lh_groop_arg2_1_4) in
          (`LH_C((_lh_popOutId_0_1_2 h_2_5_5), ((map_d3_d0_d2_d0 _lh_popOutId_0_1_2) t_2_5_9))))))
and groop_d1_d0_d1_d1 _lh_groop_arg1_3 _lh_groop_arg2_3 _lh_popOutId_0_4 =
  (match _lh_groop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_7_6 = ((groop_d1_d0_d1_d1 _lh_groop_arg1_3) ((drop_d1_d0_d1_d1 _lh_groop_arg1_3) _lh_groop_arg2_3)) in
        (let rec h_7_3 = ((take_d2_d0_d1_d1 _lh_groop_arg1_3) _lh_groop_arg2_3) in
          (`LH_C((_lh_popOutId_0_4 h_7_3), ((map_d3_d0_d2_d2 _lh_popOutId_0_4) t_7_6))))))
and groop_d1_d0_d2 _lh_groop_arg1_5 _lh_groop_arg2_5 _lh_popOutId_0_3_3 =
  (match _lh_groop_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_0_7 = ((groop_d1_d0_d2 _lh_groop_arg1_5) ((drop_d1_d0_d2 _lh_groop_arg1_5) _lh_groop_arg2_5)) in
        (let rec h_1_0_4 = ((take_d2_d0_d2 _lh_groop_arg1_5) _lh_groop_arg2_5) in
          (`LH_C((_lh_popOutId_0_3_3 h_1_0_4), ((map_d3_d0_d4 _lh_popOutId_0_3_3) t_1_0_7))))))
and groop_d1_d0_d3 _lh_groop_arg1_1_3 _lh_groop_arg2_1_3 _lh_popOutId_0_5_5 =
  (match _lh_groop_arg2_1_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_3_8 = ((groop_d1_d0_d3 _lh_groop_arg1_1_3) ((drop_d1_d0_d3 _lh_groop_arg1_1_3) _lh_groop_arg2_1_3)) in
        (let rec h_2_3_4 = ((take_d2_d0_d3 _lh_groop_arg1_1_3) _lh_groop_arg2_1_3) in
          (`LH_C((_lh_popOutId_0_5_5 h_2_3_4), ((map_d3_d0_d6 _lh_popOutId_0_5_5) t_2_3_8))))))
and groop_d1_d0_d4 _lh_groop_arg1_2 _lh_groop_arg2_2 _lh_popOutId_0_3_8 =
  (match _lh_groop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_6_6 = ((groop_d1_d0_d4 _lh_groop_arg1_2) ((drop_d1_d0_d4 _lh_groop_arg1_2) _lh_groop_arg2_2)) in
        (let rec h_6_4 = ((take_d2_d0_d4 _lh_groop_arg1_2) _lh_groop_arg2_2) in
          (`LH_C((_lh_popOutId_0_3_8 h_6_4), ((map_d3_d0_d8 _lh_popOutId_0_3_8) t_6_6))))))
and groop_d1_d0_d5 _lh_groop_arg1_1_1 _lh_groop_arg2_1_1 _lh_popOutId_0_2_0 =
  (match _lh_groop_arg2_1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_9_5 = ((groop_d1_d0_d5 _lh_groop_arg1_1_1) ((drop_d1_d0_d5 _lh_groop_arg1_1_1) _lh_groop_arg2_1_1)) in
        (let rec h_1_9_1 = ((take_d2_d0_d5 _lh_groop_arg1_1_1) _lh_groop_arg2_1_1) in
          (`LH_C((_lh_popOutId_0_2_0 h_1_9_1), ((map_d3_d0_d1_d0 _lh_popOutId_0_2_0) t_1_9_5))))))
and groop_d1_d0_d6 _lh_groop_arg1_7 _lh_groop_arg2_7 _lh_popOutId_0_0 =
  (match _lh_groop_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_3_5 = ((groop_d1_d0_d6 _lh_groop_arg1_7) ((drop_d1_d0_d6 _lh_groop_arg1_7) _lh_groop_arg2_7)) in
        (let rec h_1_3_1 = ((take_d2_d0_d6 _lh_groop_arg1_7) _lh_groop_arg2_7) in
          (`LH_C((_lh_popOutId_0_0 h_1_3_1), ((map_d3_d0_d1_d2 _lh_popOutId_0_0) t_1_3_5))))))
and groop_d1_d0_d7 _lh_groop_arg1_9 _lh_groop_arg2_9 _lh_popOutId_0_2 =
  (match _lh_groop_arg2_9 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_5_4 = ((groop_d1_d0_d7 _lh_groop_arg1_9) ((drop_d1_d0_d7 _lh_groop_arg1_9) _lh_groop_arg2_9)) in
        (let rec h_1_5_0 = ((take_d2_d0_d7 _lh_groop_arg1_9) _lh_groop_arg2_9) in
          (`LH_C((_lh_popOutId_0_2 h_1_5_0), ((map_d3_d0_d1_d4 _lh_popOutId_0_2) t_1_5_4))))))
and groop_d1_d0_d8 _lh_groop_arg1_1_0 _lh_groop_arg2_1_0 _lh_popOutId_0_4_1 =
  (match _lh_groop_arg2_1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_7_0 = ((groop_d1_d0_d8 _lh_groop_arg1_1_0) ((drop_d1_d0_d8 _lh_groop_arg1_1_0) _lh_groop_arg2_1_0)) in
        (let rec h_1_6_6 = ((take_d2_d0_d8 _lh_groop_arg1_1_0) _lh_groop_arg2_1_0) in
          (`LH_C((_lh_popOutId_0_4_1 h_1_6_6), ((map_d3_d0_d1_d6 _lh_popOutId_0_4_1) t_1_7_0))))))
and groop_d1_d0_d9 _lh_groop_arg1_8 _lh_groop_arg2_8 _lh_popOutId_0_5_3 =
  (match _lh_groop_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_4_2 = ((groop_d1_d0_d9 _lh_groop_arg1_8) ((drop_d1_d0_d9 _lh_groop_arg1_8) _lh_groop_arg2_8)) in
        (let rec h_1_3_8 = ((take_d2_d0_d9 _lh_groop_arg1_8) _lh_groop_arg2_8) in
          (`LH_C((_lh_popOutId_0_5_3 h_1_3_8), ((map_d3_d0_d1_d8 _lh_popOutId_0_5_3) t_1_4_2))))))
and mappend_d1_d7_d0_d0 xs_7_4 ys_1_2_9 =
  (match xs_7_4 with
    | `LH_C(h_1_2_3, t_1_2_6) -> 
      (let rec t_1_2_7 = ((mappend_d1_d7_d0_d0 t_1_2_6) ys_1_2_9) in
        (let rec h_1_2_4 = h_1_2_3 in
          (fun ys_1_3_0 -> 
            (let rec t_1_2_8 = ((mappend_d1_d6_d0_d1 t_1_2_7) ys_1_3_0) in
              (fun _lh_dummy_3_7 -> 
                (1 + (length_d3_d0_d1 t_1_2_8)))))))
    | `LH_N -> 
      ys_1_2_9)
and map_d5_d0_d0 f_7_2 ls_3_7 _lh_popOutId_0_2_3 =
  (match ls_3_7 with
    | `LH_C(h_6_8, t_7_0) -> 
      (let rec t_7_1 = ((map_d5_d0_d0 f_7_2) t_7_0) in
        (let rec h_6_9 = (f_7_2 h_6_8) in
          ((mappend_d1_d6_d0_d2 h_6_9) (concat_d0_d0_d1 t_7_1))))
    | `LH_N -> 
      (fun _lh_dummy_2_3 -> 
        0))
and monthLengths_d0_d0_d0 _lh_monthLengths_arg1_3 _lh_scanl_arg1_3_2 _lh_scanl_arg2_3_2 =
  (let rec feb_3 = (if (leap_d0_d0_d0 _lh_monthLengths_arg1_3) then
    29
  else
    28) in
    (let rec _lh_scanl_LH_C_1_1_2 = (let rec _lh_scanl_LH_C_1_1_3 = (let rec _lh_scanl_LH_C_1_1_4 = (let rec _lh_scanl_LH_C_1_1_5 = (let rec _lh_scanl_LH_C_1_1_6 = (let rec _lh_scanl_LH_C_1_1_7 = (let rec _lh_scanl_LH_C_1_1_8 = (let rec _lh_scanl_LH_C_1_1_9 = (let rec _lh_scanl_LH_C_1_2_0 = (let rec _lh_scanl_LH_C_1_2_1 = (let rec _lh_scanl_LH_C_1_2_2 = (let rec _lh_scanl_LH_C_1_2_3 = (fun _lh_scanl_arg1_2_0 _lh_scanl_arg2_2_0 f_1_8_0 n_2_5 _lh_zip3_LH_C_0_1_2_2 _lh_zip3_LH_C_1_1_2_2 _lh_zip3_arg3_4_7 f_1_8_1 -> 
      (`LH_N)) in
      (let rec _lh_scanl_LH_C_0_1_2 = 31 in
        (fun _lh_scanl_arg1_2_1 _lh_scanl_arg2_2_1 -> 
          (((scanl_d0_d0_d0 _lh_scanl_arg1_2_1) ((_lh_scanl_arg1_2_1 _lh_scanl_arg2_2_1) _lh_scanl_LH_C_0_1_2)) _lh_scanl_LH_C_1_2_3)))) in
      (let rec _lh_scanl_LH_C_0_1_3 = 30 in
        (fun _lh_scanl_arg1_2_2 _lh_scanl_arg2_2_2 -> 
          (((scanl_d0_d0_d1 _lh_scanl_arg1_2_2) ((_lh_scanl_arg1_2_2 _lh_scanl_arg2_2_2) _lh_scanl_LH_C_0_1_3)) _lh_scanl_LH_C_1_2_2)))) in
      (let rec _lh_scanl_LH_C_0_1_4 = 31 in
        (fun _lh_scanl_arg1_2_3 _lh_scanl_arg2_2_3 -> 
          (((scanl_d0_d0_d2 _lh_scanl_arg1_2_3) ((_lh_scanl_arg1_2_3 _lh_scanl_arg2_2_3) _lh_scanl_LH_C_0_1_4)) _lh_scanl_LH_C_1_2_1)))) in
      (let rec _lh_scanl_LH_C_0_1_5 = 30 in
        (fun _lh_scanl_arg1_2_4 _lh_scanl_arg2_2_4 -> 
          (((scanl_d0_d0_d3 _lh_scanl_arg1_2_4) ((_lh_scanl_arg1_2_4 _lh_scanl_arg2_2_4) _lh_scanl_LH_C_0_1_5)) _lh_scanl_LH_C_1_2_0)))) in
      (let rec _lh_scanl_LH_C_0_1_6 = 31 in
        (fun _lh_scanl_arg1_2_5 _lh_scanl_arg2_2_5 -> 
          (((scanl_d0_d0_d4 _lh_scanl_arg1_2_5) ((_lh_scanl_arg1_2_5 _lh_scanl_arg2_2_5) _lh_scanl_LH_C_0_1_6)) _lh_scanl_LH_C_1_1_9)))) in
      (let rec _lh_scanl_LH_C_0_1_7 = 31 in
        (fun _lh_scanl_arg1_2_6 _lh_scanl_arg2_2_6 -> 
          (((scanl_d0_d0_d5 _lh_scanl_arg1_2_6) ((_lh_scanl_arg1_2_6 _lh_scanl_arg2_2_6) _lh_scanl_LH_C_0_1_7)) _lh_scanl_LH_C_1_1_8)))) in
      (let rec _lh_scanl_LH_C_0_1_8 = 30 in
        (fun _lh_scanl_arg1_2_7 _lh_scanl_arg2_2_7 -> 
          (((scanl_d0_d0_d6 _lh_scanl_arg1_2_7) ((_lh_scanl_arg1_2_7 _lh_scanl_arg2_2_7) _lh_scanl_LH_C_0_1_8)) _lh_scanl_LH_C_1_1_7)))) in
      (let rec _lh_scanl_LH_C_0_1_9 = 31 in
        (fun _lh_scanl_arg1_2_8 _lh_scanl_arg2_2_8 -> 
          (((scanl_d0_d0_d7 _lh_scanl_arg1_2_8) ((_lh_scanl_arg1_2_8 _lh_scanl_arg2_2_8) _lh_scanl_LH_C_0_1_9)) _lh_scanl_LH_C_1_1_6)))) in
      (let rec _lh_scanl_LH_C_0_2_0 = 30 in
        (fun _lh_scanl_arg1_2_9 _lh_scanl_arg2_2_9 -> 
          (((scanl_d0_d0_d8 _lh_scanl_arg1_2_9) ((_lh_scanl_arg1_2_9 _lh_scanl_arg2_2_9) _lh_scanl_LH_C_0_2_0)) _lh_scanl_LH_C_1_1_5)))) in
      (let rec _lh_scanl_LH_C_0_2_1 = 31 in
        (fun _lh_scanl_arg1_3_0 _lh_scanl_arg2_3_0 -> 
          (((scanl_d0_d0_d9 _lh_scanl_arg1_3_0) ((_lh_scanl_arg1_3_0 _lh_scanl_arg2_3_0) _lh_scanl_LH_C_0_2_1)) _lh_scanl_LH_C_1_1_4)))) in
      (let rec _lh_scanl_LH_C_0_2_2 = feb_3 in
        (fun _lh_scanl_arg1_3_1 _lh_scanl_arg2_3_1 -> 
          (((scanl_d0_d0_d1_d0 _lh_scanl_arg1_3_1) ((_lh_scanl_arg1_3_1 _lh_scanl_arg2_3_1) _lh_scanl_LH_C_0_2_2)) _lh_scanl_LH_C_1_1_3)))) in
      (let rec _lh_scanl_LH_C_0_2_3 = 31 in
        (((scanl_d0_d0_d1_d1 _lh_scanl_arg1_3_2) ((_lh_scanl_arg1_3_2 _lh_scanl_arg2_3_2) _lh_scanl_LH_C_0_2_3)) _lh_scanl_LH_C_1_1_2))))
and monthLengths_d1_d0_d0 _lh_monthLengths_arg1_2 _lh_zip3_LH_C_0_9_1 _lh_zip3_LH_C_0_9_2 _lh_zip3_LH_C_1_9_1 _lh_zip3_LH_C_1_9_2 f_9_2 =
  (let rec feb_2 = (if (leap_d1_d0_d0 _lh_monthLengths_arg1_2) then
    29
  else
    28) in
    (let rec _lh_zip3_LH_C_1_5_5 = (let rec _lh_zip3_LH_C_1_5_6 = (let rec _lh_zip3_LH_C_1_5_7 = (let rec _lh_zip3_LH_C_1_5_8 = (let rec _lh_zip3_LH_C_1_5_9 = (let rec _lh_zip3_LH_C_1_6_0 = (let rec _lh_zip3_LH_C_1_6_1 = (let rec _lh_zip3_LH_C_1_6_2 = (let rec _lh_zip3_LH_C_1_6_3 = (let rec _lh_zip3_LH_C_1_6_4 = (let rec _lh_zip3_LH_C_1_6_5 = (let rec _lh_zip3_LH_C_1_6_6 = (fun _lh_zip3_LH_C_0_5_5 _lh_zip3_LH_C_0_5_6 _lh_zip3_LH_C_1_6_7 _lh_zip3_LH_C_1_6_8 f_8_0 -> 
      (`LH_N)) in
      (let rec _lh_zip3_LH_C_0_5_7 = 31 in
        (fun _lh_zip3_LH_C_0_5_8 _lh_zip3_LH_C_0_5_9 _lh_zip3_LH_C_1_6_9 _lh_zip3_LH_C_1_7_0 -> 
          (let rec t_8_0 = (((zip3_d0_d0_d0 _lh_zip3_LH_C_1_6_9) _lh_zip3_LH_C_1_7_0) _lh_zip3_LH_C_1_6_6) in
            (let rec h_7_7 = (let rec _lh_pic_LH_P3_2_1_2 = _lh_zip3_LH_C_0_5_7 in
              (let rec _lh_pic_LH_P3_1_1_2 = _lh_zip3_LH_C_0_5_9 in
                (let rec _lh_pic_LH_P3_0_1_2 = _lh_zip3_LH_C_0_5_8 in
                  (fun _lh_dummy_2_5 -> 
                    ((mappend_d8_d0_d0 (title_d0_d0_d0 _lh_pic_LH_P3_0_1_2)) ((table_d0_d0_d0 _lh_pic_LH_P3_1_1_2) _lh_pic_LH_P3_2_1_2)))))) in
              (fun f_8_1 -> 
                (`LH_C((f_8_1 h_7_7), ((map_d1_d0_d1 f_8_1) t_8_0))))))))) in
      (let rec _lh_zip3_LH_C_0_6_0 = 30 in
        (fun _lh_zip3_LH_C_0_6_1 _lh_zip3_LH_C_0_6_2 _lh_zip3_LH_C_1_7_1 _lh_zip3_LH_C_1_7_2 -> 
          (let rec t_8_1 = (((zip3_d0_d0_d1 _lh_zip3_LH_C_1_7_1) _lh_zip3_LH_C_1_7_2) _lh_zip3_LH_C_1_6_5) in
            (let rec h_7_8 = (let rec _lh_pic_LH_P3_2_1_3 = _lh_zip3_LH_C_0_6_0 in
              (let rec _lh_pic_LH_P3_1_1_3 = _lh_zip3_LH_C_0_6_2 in
                (let rec _lh_pic_LH_P3_0_1_3 = _lh_zip3_LH_C_0_6_1 in
                  (fun _lh_dummy_2_6 -> 
                    ((mappend_d8_d0_d1 (title_d0_d0_d1 _lh_pic_LH_P3_0_1_3)) ((table_d0_d0_d1 _lh_pic_LH_P3_1_1_3) _lh_pic_LH_P3_2_1_3)))))) in
              (fun f_8_2 -> 
                (`LH_C((f_8_2 h_7_8), ((map_d1_d0_d2 f_8_2) t_8_1))))))))) in
      (let rec _lh_zip3_LH_C_0_6_3 = 31 in
        (fun _lh_zip3_LH_C_0_6_4 _lh_zip3_LH_C_0_6_5 _lh_zip3_LH_C_1_7_3 _lh_zip3_LH_C_1_7_4 -> 
          (let rec t_8_2 = (((zip3_d0_d0_d2 _lh_zip3_LH_C_1_7_3) _lh_zip3_LH_C_1_7_4) _lh_zip3_LH_C_1_6_4) in
            (let rec h_7_9 = (let rec _lh_pic_LH_P3_2_1_4 = _lh_zip3_LH_C_0_6_3 in
              (let rec _lh_pic_LH_P3_1_1_4 = _lh_zip3_LH_C_0_6_5 in
                (let rec _lh_pic_LH_P3_0_1_4 = _lh_zip3_LH_C_0_6_4 in
                  (fun _lh_dummy_2_7 -> 
                    ((mappend_d8_d0_d2 (title_d0_d0_d2 _lh_pic_LH_P3_0_1_4)) ((table_d0_d0_d2 _lh_pic_LH_P3_1_1_4) _lh_pic_LH_P3_2_1_4)))))) in
              (fun f_8_3 -> 
                (`LH_C((f_8_3 h_7_9), ((map_d1_d0_d3 f_8_3) t_8_2))))))))) in
      (let rec _lh_zip3_LH_C_0_6_6 = 30 in
        (fun _lh_zip3_LH_C_0_6_7 _lh_zip3_LH_C_0_6_8 _lh_zip3_LH_C_1_7_5 _lh_zip3_LH_C_1_7_6 -> 
          (let rec t_8_3 = (((zip3_d0_d0_d3 _lh_zip3_LH_C_1_7_5) _lh_zip3_LH_C_1_7_6) _lh_zip3_LH_C_1_6_3) in
            (let rec h_8_0 = (let rec _lh_pic_LH_P3_2_1_5 = _lh_zip3_LH_C_0_6_6 in
              (let rec _lh_pic_LH_P3_1_1_5 = _lh_zip3_LH_C_0_6_8 in
                (let rec _lh_pic_LH_P3_0_1_5 = _lh_zip3_LH_C_0_6_7 in
                  (fun _lh_dummy_2_8 -> 
                    ((mappend_d8_d0_d3 (title_d0_d0_d3 _lh_pic_LH_P3_0_1_5)) ((table_d0_d0_d3 _lh_pic_LH_P3_1_1_5) _lh_pic_LH_P3_2_1_5)))))) in
              (fun f_8_4 -> 
                (`LH_C((f_8_4 h_8_0), ((map_d1_d0_d4 f_8_4) t_8_3))))))))) in
      (let rec _lh_zip3_LH_C_0_6_9 = 31 in
        (fun _lh_zip3_LH_C_0_7_0 _lh_zip3_LH_C_0_7_1 _lh_zip3_LH_C_1_7_7 _lh_zip3_LH_C_1_7_8 -> 
          (let rec t_8_4 = (((zip3_d0_d0_d4 _lh_zip3_LH_C_1_7_7) _lh_zip3_LH_C_1_7_8) _lh_zip3_LH_C_1_6_2) in
            (let rec h_8_1 = (let rec _lh_pic_LH_P3_2_1_6 = _lh_zip3_LH_C_0_6_9 in
              (let rec _lh_pic_LH_P3_1_1_6 = _lh_zip3_LH_C_0_7_1 in
                (let rec _lh_pic_LH_P3_0_1_6 = _lh_zip3_LH_C_0_7_0 in
                  (fun _lh_dummy_2_9 -> 
                    ((mappend_d8_d0_d4 (title_d0_d0_d4 _lh_pic_LH_P3_0_1_6)) ((table_d0_d0_d4 _lh_pic_LH_P3_1_1_6) _lh_pic_LH_P3_2_1_6)))))) in
              (fun f_8_5 -> 
                (`LH_C((f_8_5 h_8_1), ((map_d1_d0_d5 f_8_5) t_8_4))))))))) in
      (let rec _lh_zip3_LH_C_0_7_2 = 31 in
        (fun _lh_zip3_LH_C_0_7_3 _lh_zip3_LH_C_0_7_4 _lh_zip3_LH_C_1_7_9 _lh_zip3_LH_C_1_8_0 -> 
          (let rec t_8_5 = (((zip3_d0_d0_d5 _lh_zip3_LH_C_1_7_9) _lh_zip3_LH_C_1_8_0) _lh_zip3_LH_C_1_6_1) in
            (let rec h_8_2 = (let rec _lh_pic_LH_P3_2_1_7 = _lh_zip3_LH_C_0_7_2 in
              (let rec _lh_pic_LH_P3_1_1_7 = _lh_zip3_LH_C_0_7_4 in
                (let rec _lh_pic_LH_P3_0_1_7 = _lh_zip3_LH_C_0_7_3 in
                  (fun _lh_dummy_3_0 -> 
                    ((mappend_d8_d0_d5 (title_d0_d0_d5 _lh_pic_LH_P3_0_1_7)) ((table_d0_d0_d5 _lh_pic_LH_P3_1_1_7) _lh_pic_LH_P3_2_1_7)))))) in
              (fun f_8_6 -> 
                (`LH_C((f_8_6 h_8_2), ((map_d1_d0_d6 f_8_6) t_8_5))))))))) in
      (let rec _lh_zip3_LH_C_0_7_5 = 30 in
        (fun _lh_zip3_LH_C_0_7_6 _lh_zip3_LH_C_0_7_7 _lh_zip3_LH_C_1_8_1 _lh_zip3_LH_C_1_8_2 -> 
          (let rec t_8_6 = (((zip3_d0_d0_d6 _lh_zip3_LH_C_1_8_1) _lh_zip3_LH_C_1_8_2) _lh_zip3_LH_C_1_6_0) in
            (let rec h_8_3 = (let rec _lh_pic_LH_P3_2_1_8 = _lh_zip3_LH_C_0_7_5 in
              (let rec _lh_pic_LH_P3_1_1_8 = _lh_zip3_LH_C_0_7_7 in
                (let rec _lh_pic_LH_P3_0_1_8 = _lh_zip3_LH_C_0_7_6 in
                  (fun _lh_dummy_3_1 -> 
                    ((mappend_d8_d0_d6 (title_d0_d0_d6 _lh_pic_LH_P3_0_1_8)) ((table_d0_d0_d6 _lh_pic_LH_P3_1_1_8) _lh_pic_LH_P3_2_1_8)))))) in
              (fun f_8_7 -> 
                (`LH_C((f_8_7 h_8_3), ((map_d1_d0_d7 f_8_7) t_8_6))))))))) in
      (let rec _lh_zip3_LH_C_0_7_8 = 31 in
        (fun _lh_zip3_LH_C_0_7_9 _lh_zip3_LH_C_0_8_0 _lh_zip3_LH_C_1_8_3 _lh_zip3_LH_C_1_8_4 -> 
          (let rec t_8_7 = (((zip3_d0_d0_d7 _lh_zip3_LH_C_1_8_3) _lh_zip3_LH_C_1_8_4) _lh_zip3_LH_C_1_5_9) in
            (let rec h_8_4 = (let rec _lh_pic_LH_P3_2_1_9 = _lh_zip3_LH_C_0_7_8 in
              (let rec _lh_pic_LH_P3_1_1_9 = _lh_zip3_LH_C_0_8_0 in
                (let rec _lh_pic_LH_P3_0_1_9 = _lh_zip3_LH_C_0_7_9 in
                  (fun _lh_dummy_3_2 -> 
                    ((mappend_d8_d0_d7 (title_d0_d0_d7 _lh_pic_LH_P3_0_1_9)) ((table_d0_d0_d7 _lh_pic_LH_P3_1_1_9) _lh_pic_LH_P3_2_1_9)))))) in
              (fun f_8_8 -> 
                (`LH_C((f_8_8 h_8_4), ((map_d1_d0_d8 f_8_8) t_8_7))))))))) in
      (let rec _lh_zip3_LH_C_0_8_1 = 30 in
        (fun _lh_zip3_LH_C_0_8_2 _lh_zip3_LH_C_0_8_3 _lh_zip3_LH_C_1_8_5 _lh_zip3_LH_C_1_8_6 -> 
          (let rec t_8_8 = (((zip3_d0_d0_d8 _lh_zip3_LH_C_1_8_5) _lh_zip3_LH_C_1_8_6) _lh_zip3_LH_C_1_5_8) in
            (let rec h_8_5 = (let rec _lh_pic_LH_P3_2_2_0 = _lh_zip3_LH_C_0_8_1 in
              (let rec _lh_pic_LH_P3_1_2_0 = _lh_zip3_LH_C_0_8_3 in
                (let rec _lh_pic_LH_P3_0_2_0 = _lh_zip3_LH_C_0_8_2 in
                  (fun _lh_dummy_3_3 -> 
                    ((mappend_d8_d0_d8 (title_d0_d0_d8 _lh_pic_LH_P3_0_2_0)) ((table_d0_d0_d8 _lh_pic_LH_P3_1_2_0) _lh_pic_LH_P3_2_2_0)))))) in
              (fun f_8_9 -> 
                (`LH_C((f_8_9 h_8_5), ((map_d1_d0_d9 f_8_9) t_8_8))))))))) in
      (let rec _lh_zip3_LH_C_0_8_4 = 31 in
        (fun _lh_zip3_LH_C_0_8_5 _lh_zip3_LH_C_0_8_6 _lh_zip3_LH_C_1_8_7 _lh_zip3_LH_C_1_8_8 -> 
          (let rec t_8_9 = (((zip3_d0_d0_d9 _lh_zip3_LH_C_1_8_7) _lh_zip3_LH_C_1_8_8) _lh_zip3_LH_C_1_5_7) in
            (let rec h_8_6 = (let rec _lh_pic_LH_P3_2_2_1 = _lh_zip3_LH_C_0_8_4 in
              (let rec _lh_pic_LH_P3_1_2_1 = _lh_zip3_LH_C_0_8_6 in
                (let rec _lh_pic_LH_P3_0_2_1 = _lh_zip3_LH_C_0_8_5 in
                  (fun _lh_dummy_3_4 -> 
                    ((mappend_d8_d0_d9 (title_d0_d0_d9 _lh_pic_LH_P3_0_2_1)) ((table_d0_d0_d9 _lh_pic_LH_P3_1_2_1) _lh_pic_LH_P3_2_2_1)))))) in
              (fun f_9_0 -> 
                (`LH_C((f_9_0 h_8_6), ((map_d1_d0_d1_d0 f_9_0) t_8_9))))))))) in
      (let rec _lh_zip3_LH_C_0_8_7 = feb_2 in
        (fun _lh_zip3_LH_C_0_8_8 _lh_zip3_LH_C_0_8_9 _lh_zip3_LH_C_1_8_9 _lh_zip3_LH_C_1_9_0 -> 
          (let rec t_9_0 = (((zip3_d0_d0_d1_d0 _lh_zip3_LH_C_1_8_9) _lh_zip3_LH_C_1_9_0) _lh_zip3_LH_C_1_5_6) in
            (let rec h_8_7 = (let rec _lh_pic_LH_P3_2_2_2 = _lh_zip3_LH_C_0_8_7 in
              (let rec _lh_pic_LH_P3_1_2_2 = _lh_zip3_LH_C_0_8_9 in
                (let rec _lh_pic_LH_P3_0_2_2 = _lh_zip3_LH_C_0_8_8 in
                  (fun _lh_dummy_3_5 -> 
                    ((mappend_d8_d0_d1_d0 (title_d0_d0_d1_d0 _lh_pic_LH_P3_0_2_2)) ((table_d0_d0_d1_d0 _lh_pic_LH_P3_1_2_2) _lh_pic_LH_P3_2_2_2)))))) in
              (fun f_9_1 -> 
                (`LH_C((f_9_1 h_8_7), ((map_d1_d0_d1_d1 f_9_1) t_9_0))))))))) in
      (let rec _lh_zip3_LH_C_0_9_0 = 31 in
        (let rec t_9_1 = (((zip3_d0_d0_d1_d1 _lh_zip3_LH_C_1_9_1) _lh_zip3_LH_C_1_9_2) _lh_zip3_LH_C_1_5_5) in
          (let rec h_8_8 = (let rec _lh_pic_LH_P3_2_2_3 = _lh_zip3_LH_C_0_9_0 in
            (let rec _lh_pic_LH_P3_1_2_3 = _lh_zip3_LH_C_0_9_2 in
              (let rec _lh_pic_LH_P3_0_2_3 = _lh_zip3_LH_C_0_9_1 in
                (fun _lh_dummy_3_6 -> 
                  ((mappend_d8_d0_d1_d1 (title_d0_d0_d1_d1 _lh_pic_LH_P3_0_2_3)) ((table_d0_d0_d1_d1 _lh_pic_LH_P3_1_2_3) _lh_pic_LH_P3_2_2_3)))))) in
            (`LH_C((f_9_2 h_8_8), ((map_d1_d0_d1_d2 f_9_2) t_9_1))))))))
and months_d0_d0_d0 _lh_months_arg1_1 =
  (((zip3_d0_d0_d1_d2 monthNames_d0_d0_d0) (firstDays_d0_d0_d0 _lh_months_arg1_1)) (monthLengths_d1_d0_d0 _lh_months_arg1_1))
and pad_d0_d0_d0 _lh_pad_arg1_1 =
  ((mappend_d5_d0_d0 (((zipWith_d1_d0_d1 mappend_d6_d0_d0) (((zipWith_d2_d0_d1 mappend_d7_d0_d0) (side_d0_d0_d0 0)) _lh_pad_arg1_1)) (side_d1_d0_d0 0))) (end_d0_d0_d0 0))
and rjustify_d0_d0_d0 _lh_rjustify_arg1_8 _lh_rjustify_arg2_8 =
  ((mappend_d1_d1_d0_d0 (space_d2_d0_d0 (_lh_rjustify_arg1_8 - (length_d1_d0_d0 _lh_rjustify_arg2_8)))) _lh_rjustify_arg2_8)
and rjustify_d0_d0_d1 _lh_rjustify_arg1_9 _lh_rjustify_arg2_9 =
  ((mappend_d1_d1_d0_d2 (space_d2_d0_d1 (_lh_rjustify_arg1_9 - (length_d1_d0_d1 _lh_rjustify_arg2_9)))) _lh_rjustify_arg2_9)
and rjustify_d0_d0_d1_d0 _lh_rjustify_arg1_4 _lh_rjustify_arg2_4 =
  ((mappend_d1_d1_d0_d2_d0 (space_d2_d0_d1_d0 (_lh_rjustify_arg1_4 - (length_d1_d0_d1_d0 _lh_rjustify_arg2_4)))) _lh_rjustify_arg2_4)
and rjustify_d0_d0_d1_d1 _lh_rjustify_arg1_1_2 _lh_rjustify_arg2_1_2 =
  ((mappend_d1_d1_d0_d2_d2 (space_d2_d0_d1_d1 (_lh_rjustify_arg1_1_2 - (length_d1_d0_d1_d1 _lh_rjustify_arg2_1_2)))) _lh_rjustify_arg2_1_2)
and rjustify_d0_d0_d2 _lh_rjustify_arg1_1 _lh_rjustify_arg2_1 =
  ((mappend_d1_d1_d0_d4 (space_d2_d0_d2 (_lh_rjustify_arg1_1 - (length_d1_d0_d2 _lh_rjustify_arg2_1)))) _lh_rjustify_arg2_1)
and rjustify_d0_d0_d3 _lh_rjustify_arg1_7 _lh_rjustify_arg2_7 =
  ((mappend_d1_d1_d0_d6 (space_d2_d0_d3 (_lh_rjustify_arg1_7 - (length_d1_d0_d3 _lh_rjustify_arg2_7)))) _lh_rjustify_arg2_7)
and rjustify_d0_d0_d4 _lh_rjustify_arg1_2 _lh_rjustify_arg2_2 =
  ((mappend_d1_d1_d0_d8 (space_d2_d0_d4 (_lh_rjustify_arg1_2 - (length_d1_d0_d4 _lh_rjustify_arg2_2)))) _lh_rjustify_arg2_2)
and rjustify_d0_d0_d5 _lh_rjustify_arg1_5 _lh_rjustify_arg2_5 =
  ((mappend_d1_d1_d0_d1_d0 (space_d2_d0_d5 (_lh_rjustify_arg1_5 - (length_d1_d0_d5 _lh_rjustify_arg2_5)))) _lh_rjustify_arg2_5)
and rjustify_d0_d0_d6 _lh_rjustify_arg1_6 _lh_rjustify_arg2_6 =
  ((mappend_d1_d1_d0_d1_d2 (space_d2_d0_d6 (_lh_rjustify_arg1_6 - (length_d1_d0_d6 _lh_rjustify_arg2_6)))) _lh_rjustify_arg2_6)
and rjustify_d0_d0_d7 _lh_rjustify_arg1_1_0 _lh_rjustify_arg2_1_0 =
  ((mappend_d1_d1_d0_d1_d4 (space_d2_d0_d7 (_lh_rjustify_arg1_1_0 - (length_d1_d0_d7 _lh_rjustify_arg2_1_0)))) _lh_rjustify_arg2_1_0)
and rjustify_d0_d0_d8 _lh_rjustify_arg1_1_1 _lh_rjustify_arg2_1_1 =
  ((mappend_d1_d1_d0_d1_d6 (space_d2_d0_d8 (_lh_rjustify_arg1_1_1 - (length_d1_d0_d8 _lh_rjustify_arg2_1_1)))) _lh_rjustify_arg2_1_1)
and rjustify_d0_d0_d9 _lh_rjustify_arg1_3 _lh_rjustify_arg2_3 =
  ((mappend_d1_d1_d0_d1_d8 (space_d2_d0_d9 (_lh_rjustify_arg1_3 - (length_d1_d0_d9 _lh_rjustify_arg2_3)))) _lh_rjustify_arg2_3)
and scanl_d0_d0_d0 _lh_scanl_arg1_3_7 _lh_scanl_arg2_3_7 _lh_scanl_arg3_1_1 f_2_2_6 n_3_5 _lh_zip3_LH_C_0_1_3_6 _lh_zip3_LH_C_1_1_3_6 _lh_zip3_arg3_5_9 =
  (let rec t_2_2_2 = (let rec _lh_matchIdent_5_5 = _lh_scanl_arg3_1_1 in
    ((_lh_matchIdent_5_5 _lh_scanl_arg1_3_7) _lh_scanl_arg2_3_7)) in
    (let rec h_2_1_8 = _lh_scanl_arg2_3_7 in
      (let rec t_2_2_3 = ((map_d2_d0_d1 f_2_2_6) t_2_2_2) in
        (let rec h_2_1_9 = (f_2_2_6 h_2_1_8) in
          (let rec _lh_zip3_LH_C_1_1_3_5 = ((take_d1_d0_d0 (n_3_5 - 1)) t_2_2_3) in
            (let rec _lh_zip3_LH_C_0_1_3_5 = h_2_1_9 in
              (let rec _lh_matchIdent_5_6 = _lh_zip3_arg3_5_9 in
                ((((_lh_matchIdent_5_6 _lh_zip3_LH_C_0_1_3_6) _lh_zip3_LH_C_0_1_3_5) _lh_zip3_LH_C_1_1_3_6) _lh_zip3_LH_C_1_1_3_5))))))))
and scanl_d0_d0_d1 _lh_scanl_arg1_3_3 _lh_scanl_arg2_3_3 _lh_scanl_arg3_7 f_1_8_2 n_2_6 _lh_zip3_LH_C_0_1_2_4 _lh_zip3_LH_C_1_1_2_4 _lh_zip3_arg3_4_8 =
  (let rec t_1_7_6 = (let rec _lh_matchIdent_4_4 = _lh_scanl_arg3_7 in
    ((_lh_matchIdent_4_4 _lh_scanl_arg1_3_3) _lh_scanl_arg2_3_3)) in
    (let rec h_1_7_2 = _lh_scanl_arg2_3_3 in
      (let rec t_1_7_7 = ((map_d2_d0_d2 f_1_8_2) t_1_7_6) in
        (let rec h_1_7_3 = (f_1_8_2 h_1_7_2) in
          (let rec _lh_zip3_LH_C_1_1_2_3 = ((take_d1_d0_d1 (n_2_6 - 1)) t_1_7_7) in
            (let rec _lh_zip3_LH_C_0_1_2_3 = h_1_7_3 in
              (let rec _lh_matchIdent_4_5 = _lh_zip3_arg3_4_8 in
                ((((_lh_matchIdent_4_5 _lh_zip3_LH_C_0_1_2_4) _lh_zip3_LH_C_0_1_2_3) _lh_zip3_LH_C_1_1_2_4) _lh_zip3_LH_C_1_1_2_3))))))))
and scanl_d0_d0_d1_d0 _lh_scanl_arg1_3_6 _lh_scanl_arg2_3_6 _lh_scanl_arg3_1_0 f_2_2_1 n_3_4 _lh_zip3_LH_C_0_1_3_4 _lh_zip3_LH_C_1_1_3_4 _lh_zip3_arg3_5_8 =
  (let rec t_2_1_8 = (let rec _lh_matchIdent_5_3 = _lh_scanl_arg3_1_0 in
    ((_lh_matchIdent_5_3 _lh_scanl_arg1_3_6) _lh_scanl_arg2_3_6)) in
    (let rec h_2_1_4 = _lh_scanl_arg2_3_6 in
      (let rec t_2_1_9 = ((map_d2_d0_d1_d1 f_2_2_1) t_2_1_8) in
        (let rec h_2_1_5 = (f_2_2_1 h_2_1_4) in
          (let rec _lh_zip3_LH_C_1_1_3_3 = ((take_d1_d0_d1_d0 (n_3_4 - 1)) t_2_1_9) in
            (let rec _lh_zip3_LH_C_0_1_3_3 = h_2_1_5 in
              (let rec _lh_matchIdent_5_4 = _lh_zip3_arg3_5_8 in
                ((((_lh_matchIdent_5_4 _lh_zip3_LH_C_0_1_3_4) _lh_zip3_LH_C_0_1_3_3) _lh_zip3_LH_C_1_1_3_4) _lh_zip3_LH_C_1_1_3_3))))))))
and scanl_d0_d0_d1_d1 _lh_scanl_arg1_1_4 _lh_scanl_arg2_1_4 _lh_scanl_arg3_1 f_9_6 n_1_1 _lh_zip3_LH_C_0_9_4 _lh_zip3_LH_C_1_9_4 _lh_zip3_arg3_1_9 =
  (let rec t_9_8 = (let rec _lh_matchIdent_1_6 = _lh_scanl_arg3_1 in
    ((_lh_matchIdent_1_6 _lh_scanl_arg1_1_4) _lh_scanl_arg2_1_4)) in
    (let rec h_9_5 = _lh_scanl_arg2_1_4 in
      (let rec t_9_9 = ((map_d2_d0_d1_d2 f_9_6) t_9_8) in
        (let rec h_9_6 = (f_9_6 h_9_5) in
          (let rec _lh_zip3_LH_C_1_9_3 = ((take_d1_d0_d1_d1 (n_1_1 - 1)) t_9_9) in
            (let rec _lh_zip3_LH_C_0_9_3 = h_9_6 in
              (let rec _lh_matchIdent_1_7 = _lh_zip3_arg3_1_9 in
                ((((_lh_matchIdent_1_7 _lh_zip3_LH_C_0_9_4) _lh_zip3_LH_C_0_9_3) _lh_zip3_LH_C_1_9_4) _lh_zip3_LH_C_1_9_3))))))))
and scanl_d0_d0_d1_d2 _lh_scanl_arg1_1_5 _lh_scanl_arg2_1_5 _lh_scanl_arg3_2 f_1_2_0 n_1_3 _lh_zip3_LH_C_0_1_0_9 _lh_zip3_LH_C_1_1_0_9 _lh_zip3_arg3_3_6 =
  (let rec t_1_1_8 = (let rec _lh_matchIdent_3_2 = _lh_scanl_arg3_2 in
    ((_lh_matchIdent_3_2 _lh_scanl_arg1_1_5) _lh_scanl_arg2_1_5)) in
    (let rec h_1_1_5 = _lh_scanl_arg2_1_5 in
      (let rec t_1_1_9 = ((map_d2_d0_d1_d3 f_1_2_0) t_1_1_8) in
        (let rec h_1_1_6 = (f_1_2_0 h_1_1_5) in
          (let rec _lh_zip3_LH_C_1_1_0_8 = ((take_d1_d0_d1_d2 (n_1_3 - 1)) t_1_1_9) in
            (let rec _lh_zip3_LH_C_0_1_0_8 = h_1_1_6 in
              (let rec _lh_matchIdent_3_3 = _lh_zip3_arg3_3_6 in
                ((((_lh_matchIdent_3_3 _lh_zip3_LH_C_0_1_0_9) _lh_zip3_LH_C_0_1_0_8) _lh_zip3_LH_C_1_1_0_9) _lh_zip3_LH_C_1_1_0_8))))))))
and scanl_d0_d0_d2 _lh_scanl_arg1_3_8 _lh_scanl_arg2_3_8 _lh_scanl_arg3_1_2 f_2_6_0 n_4_3 _lh_zip3_LH_C_0_1_4_2 _lh_zip3_LH_C_1_1_4_2 _lh_zip3_arg3_6_6 =
  (let rec t_2_6_7 = (let rec _lh_matchIdent_5_9 = _lh_scanl_arg3_1_2 in
    ((_lh_matchIdent_5_9 _lh_scanl_arg1_3_8) _lh_scanl_arg2_3_8)) in
    (let rec h_2_6_3 = _lh_scanl_arg2_3_8 in
      (let rec t_2_6_8 = ((map_d2_d0_d3 f_2_6_0) t_2_6_7) in
        (let rec h_2_6_4 = (f_2_6_0 h_2_6_3) in
          (let rec _lh_zip3_LH_C_1_1_4_1 = ((take_d1_d0_d2 (n_4_3 - 1)) t_2_6_8) in
            (let rec _lh_zip3_LH_C_0_1_4_1 = h_2_6_4 in
              (let rec _lh_matchIdent_6_0 = _lh_zip3_arg3_6_6 in
                ((((_lh_matchIdent_6_0 _lh_zip3_LH_C_0_1_4_2) _lh_zip3_LH_C_0_1_4_1) _lh_zip3_LH_C_1_1_4_2) _lh_zip3_LH_C_1_1_4_1))))))))
and scanl_d0_d0_d3 _lh_scanl_arg1_3_9 _lh_scanl_arg2_3_9 _lh_scanl_arg3_1_3 f_2_6_4 n_4_5 _lh_zip3_LH_C_0_1_4_4 _lh_zip3_LH_C_1_1_4_4 _lh_zip3_arg3_6_9 =
  (let rec t_2_7_4 = (let rec _lh_matchIdent_6_3 = _lh_scanl_arg3_1_3 in
    ((_lh_matchIdent_6_3 _lh_scanl_arg1_3_9) _lh_scanl_arg2_3_9)) in
    (let rec h_2_7_0 = _lh_scanl_arg2_3_9 in
      (let rec t_2_7_5 = ((map_d2_d0_d4 f_2_6_4) t_2_7_4) in
        (let rec h_2_7_1 = (f_2_6_4 h_2_7_0) in
          (let rec _lh_zip3_LH_C_1_1_4_3 = ((take_d1_d0_d3 (n_4_5 - 1)) t_2_7_5) in
            (let rec _lh_zip3_LH_C_0_1_4_3 = h_2_7_1 in
              (let rec _lh_matchIdent_6_4 = _lh_zip3_arg3_6_9 in
                ((((_lh_matchIdent_6_4 _lh_zip3_LH_C_0_1_4_4) _lh_zip3_LH_C_0_1_4_3) _lh_zip3_LH_C_1_1_4_4) _lh_zip3_LH_C_1_1_4_3))))))))
and scanl_d0_d0_d4 _lh_scanl_arg1_3_5 _lh_scanl_arg2_3_5 _lh_scanl_arg3_9 f_2_1_9 n_3_3 _lh_zip3_LH_C_0_1_3_2 _lh_zip3_LH_C_1_1_3_2 _lh_zip3_arg3_5_7 =
  (let rec t_2_1_6 = (let rec _lh_matchIdent_5_1 = _lh_scanl_arg3_9 in
    ((_lh_matchIdent_5_1 _lh_scanl_arg1_3_5) _lh_scanl_arg2_3_5)) in
    (let rec h_2_1_2 = _lh_scanl_arg2_3_5 in
      (let rec t_2_1_7 = ((map_d2_d0_d5 f_2_1_9) t_2_1_6) in
        (let rec h_2_1_3 = (f_2_1_9 h_2_1_2) in
          (let rec _lh_zip3_LH_C_1_1_3_1 = ((take_d1_d0_d4 (n_3_3 - 1)) t_2_1_7) in
            (let rec _lh_zip3_LH_C_0_1_3_1 = h_2_1_3 in
              (let rec _lh_matchIdent_5_2 = _lh_zip3_arg3_5_7 in
                ((((_lh_matchIdent_5_2 _lh_zip3_LH_C_0_1_3_2) _lh_zip3_LH_C_0_1_3_1) _lh_zip3_LH_C_1_1_3_2) _lh_zip3_LH_C_1_1_3_1))))))))
and scanl_d0_d0_d5 _lh_scanl_arg1_3_4 _lh_scanl_arg2_3_4 _lh_scanl_arg3_8 f_2_0_8 n_3_1 _lh_zip3_LH_C_0_1_2_9 _lh_zip3_LH_C_1_1_2_9 _lh_zip3_arg3_5_3 =
  (let rec t_1_9_7 = (let rec _lh_matchIdent_4_7 = _lh_scanl_arg3_8 in
    ((_lh_matchIdent_4_7 _lh_scanl_arg1_3_4) _lh_scanl_arg2_3_4)) in
    (let rec h_1_9_3 = _lh_scanl_arg2_3_4 in
      (let rec t_1_9_8 = ((map_d2_d0_d6 f_2_0_8) t_1_9_7) in
        (let rec h_1_9_4 = (f_2_0_8 h_1_9_3) in
          (let rec _lh_zip3_LH_C_1_1_2_8 = ((take_d1_d0_d5 (n_3_1 - 1)) t_1_9_8) in
            (let rec _lh_zip3_LH_C_0_1_2_8 = h_1_9_4 in
              (let rec _lh_matchIdent_4_8 = _lh_zip3_arg3_5_3 in
                ((((_lh_matchIdent_4_8 _lh_zip3_LH_C_0_1_2_9) _lh_zip3_LH_C_0_1_2_8) _lh_zip3_LH_C_1_1_2_9) _lh_zip3_LH_C_1_1_2_8))))))))
and scanl_d0_d0_d6 _lh_scanl_arg1_1_7 _lh_scanl_arg2_1_7 _lh_scanl_arg3_4 f_1_3_9 n_1_8 _lh_zip3_LH_C_0_1_1_4 _lh_zip3_LH_C_1_1_1_4 _lh_zip3_arg3_3_9 =
  (let rec t_1_3_9 = (let rec _lh_matchIdent_3_6 = _lh_scanl_arg3_4 in
    ((_lh_matchIdent_3_6 _lh_scanl_arg1_1_7) _lh_scanl_arg2_1_7)) in
    (let rec h_1_3_5 = _lh_scanl_arg2_1_7 in
      (let rec t_1_4_0 = ((map_d2_d0_d7 f_1_3_9) t_1_3_9) in
        (let rec h_1_3_6 = (f_1_3_9 h_1_3_5) in
          (let rec _lh_zip3_LH_C_1_1_1_3 = ((take_d1_d0_d6 (n_1_8 - 1)) t_1_4_0) in
            (let rec _lh_zip3_LH_C_0_1_1_3 = h_1_3_6 in
              (let rec _lh_matchIdent_3_7 = _lh_zip3_arg3_3_9 in
                ((((_lh_matchIdent_3_7 _lh_zip3_LH_C_0_1_1_4) _lh_zip3_LH_C_0_1_1_3) _lh_zip3_LH_C_1_1_1_4) _lh_zip3_LH_C_1_1_1_3))))))))
and scanl_d0_d0_d7 _lh_scanl_arg1_1_8 _lh_scanl_arg2_1_8 _lh_scanl_arg3_5 f_1_4_8 n_2_0 _lh_zip3_LH_C_0_1_1_6 _lh_zip3_LH_C_1_1_1_6 _lh_zip3_arg3_4_0 =
  (let rec t_1_4_7 = (let rec _lh_matchIdent_3_8 = _lh_scanl_arg3_5 in
    ((_lh_matchIdent_3_8 _lh_scanl_arg1_1_8) _lh_scanl_arg2_1_8)) in
    (let rec h_1_4_3 = _lh_scanl_arg2_1_8 in
      (let rec t_1_4_8 = ((map_d2_d0_d8 f_1_4_8) t_1_4_7) in
        (let rec h_1_4_4 = (f_1_4_8 h_1_4_3) in
          (let rec _lh_zip3_LH_C_1_1_1_5 = ((take_d1_d0_d7 (n_2_0 - 1)) t_1_4_8) in
            (let rec _lh_zip3_LH_C_0_1_1_5 = h_1_4_4 in
              (let rec _lh_matchIdent_3_9 = _lh_zip3_arg3_4_0 in
                ((((_lh_matchIdent_3_9 _lh_zip3_LH_C_0_1_1_6) _lh_zip3_LH_C_0_1_1_5) _lh_zip3_LH_C_1_1_1_6) _lh_zip3_LH_C_1_1_1_5))))))))
and scanl_d0_d0_d8 _lh_scanl_arg1_1_6 _lh_scanl_arg2_1_6 _lh_scanl_arg3_3 f_1_3_8 n_1_7 _lh_zip3_LH_C_0_1_1_2 _lh_zip3_LH_C_1_1_1_2 _lh_zip3_arg3_3_8 =
  (let rec t_1_3_6 = (let rec _lh_matchIdent_3_4 = _lh_scanl_arg3_3 in
    ((_lh_matchIdent_3_4 _lh_scanl_arg1_1_6) _lh_scanl_arg2_1_6)) in
    (let rec h_1_3_2 = _lh_scanl_arg2_1_6 in
      (let rec t_1_3_7 = ((map_d2_d0_d9 f_1_3_8) t_1_3_6) in
        (let rec h_1_3_3 = (f_1_3_8 h_1_3_2) in
          (let rec _lh_zip3_LH_C_1_1_1_1 = ((take_d1_d0_d8 (n_1_7 - 1)) t_1_3_7) in
            (let rec _lh_zip3_LH_C_0_1_1_1 = h_1_3_3 in
              (let rec _lh_matchIdent_3_5 = _lh_zip3_arg3_3_8 in
                ((((_lh_matchIdent_3_5 _lh_zip3_LH_C_0_1_1_2) _lh_zip3_LH_C_0_1_1_1) _lh_zip3_LH_C_1_1_1_2) _lh_zip3_LH_C_1_1_1_1))))))))
and scanl_d0_d0_d9 _lh_scanl_arg1_1_9 _lh_scanl_arg2_1_9 _lh_scanl_arg3_6 f_1_7_7 n_2_4 _lh_zip3_LH_C_0_1_2_1 _lh_zip3_LH_C_1_1_2_1 _lh_zip3_arg3_4_5 =
  (let rec t_1_7_2 = (let rec _lh_matchIdent_4_1 = _lh_scanl_arg3_6 in
    ((_lh_matchIdent_4_1 _lh_scanl_arg1_1_9) _lh_scanl_arg2_1_9)) in
    (let rec h_1_6_8 = _lh_scanl_arg2_1_9 in
      (let rec t_1_7_3 = ((map_d2_d0_d1_d0 f_1_7_7) t_1_7_2) in
        (let rec h_1_6_9 = (f_1_7_7 h_1_6_8) in
          (let rec _lh_zip3_LH_C_1_1_2_0 = ((take_d1_d0_d9 (n_2_4 - 1)) t_1_7_3) in
            (let rec _lh_zip3_LH_C_0_1_2_0 = h_1_6_9 in
              (let rec _lh_matchIdent_4_2 = _lh_zip3_arg3_4_5 in
                ((((_lh_matchIdent_4_2 _lh_zip3_LH_C_0_1_2_1) _lh_zip3_LH_C_0_1_2_0) _lh_zip3_LH_C_1_1_2_1) _lh_zip3_LH_C_1_1_2_0))))))))
and side_d0_d0_d0 _lh_side_arg1_3 =
  (emptyPic_d2_d0_d0 (let rec _lh_emptyPic_LH_P2_1_7 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_7 = 8 in
      (fun _lh_dummy_4_1 -> 
        ((copy_d6_d0_d0 _lh_emptyPic_LH_P2_0_7) ((copy_d7_d0_d0 _lh_emptyPic_LH_P2_1_7) ' '))))))
and side_d1_d0_d0 _lh_side_arg1_2 =
  (emptyPic_d3_d0_d0 (let rec _lh_emptyPic_LH_P2_1_6 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_6 = 8 in
      (fun _lh_dummy_4_0 -> 
        ((copy_d8_d0_d0 _lh_emptyPic_LH_P2_0_6) ((copy_d9_d0_d0 _lh_emptyPic_LH_P2_1_6) ' '))))))
and space_d0_d0_d0 _lh_space_arg1_3_4 =
  ((copy_d0_d0_d0 _lh_space_arg1_3_4) ' ')
and space_d1_d0_d0 _lh_space_arg1_3_7 =
  ((copy_d1_d0_d0 _lh_space_arg1_3_7) ' ')
and space_d2_d0_d0 _lh_space_arg1_2_4 =
  ((copy_d1_d0_d0_d0 _lh_space_arg1_2_4) ' ')
and space_d2_d0_d1 _lh_space_arg1_1_5 =
  ((copy_d1_d0_d0_d1 _lh_space_arg1_1_5) ' ')
and space_d2_d0_d1_d0 _lh_space_arg1_3_1 =
  ((copy_d1_d0_d0_d1_d0 _lh_space_arg1_3_1) ' ')
and space_d2_d0_d1_d1 _lh_space_arg1_1_3 =
  ((copy_d1_d0_d0_d1_d1 _lh_space_arg1_1_3) ' ')
and space_d2_d0_d2 _lh_space_arg1_3_5 =
  ((copy_d1_d0_d0_d2 _lh_space_arg1_3_5) ' ')
and space_d2_d0_d3 _lh_space_arg1_3_3 =
  ((copy_d1_d0_d0_d3 _lh_space_arg1_3_3) ' ')
and space_d2_d0_d4 _lh_space_arg1_4_0 =
  ((copy_d1_d0_d0_d4 _lh_space_arg1_4_0) ' ')
and space_d2_d0_d5 _lh_space_arg1_1_7 =
  ((copy_d1_d0_d0_d5 _lh_space_arg1_1_7) ' ')
and space_d2_d0_d6 _lh_space_arg1_9 =
  ((copy_d1_d0_d0_d6 _lh_space_arg1_9) ' ')
and space_d2_d0_d7 _lh_space_arg1_6 =
  ((copy_d1_d0_d0_d7 _lh_space_arg1_6) ' ')
and space_d2_d0_d8 _lh_space_arg1_3_6 =
  ((copy_d1_d0_d0_d8 _lh_space_arg1_3_6) ' ')
and space_d2_d0_d9 _lh_space_arg1_2_1 =
  ((copy_d1_d0_d0_d9 _lh_space_arg1_2_1) ' ')
and space_d3_d0_d0 _lh_space_arg1_1_6 =
  ((copy_d1_d1_d0_d0 _lh_space_arg1_1_6) ' ')
and space_d3_d0_d1 _lh_space_arg1_1_1 =
  ((copy_d1_d1_d0_d1 _lh_space_arg1_1_1) ' ')
and space_d3_d0_d1_d0 _lh_space_arg1_5 =
  ((copy_d1_d1_d0_d1_d0 _lh_space_arg1_5) ' ')
and space_d3_d0_d1_d1 _lh_space_arg1_8 =
  ((copy_d1_d1_d0_d1_d1 _lh_space_arg1_8) ' ')
and space_d3_d0_d2 _lh_space_arg1_3_0 =
  ((copy_d1_d1_d0_d2 _lh_space_arg1_3_0) ' ')
and space_d3_d0_d3 _lh_space_arg1_1_8 =
  ((copy_d1_d1_d0_d3 _lh_space_arg1_1_8) ' ')
and space_d3_d0_d4 _lh_space_arg1_1_4 =
  ((copy_d1_d1_d0_d4 _lh_space_arg1_1_4) ' ')
and space_d3_d0_d5 _lh_space_arg1_3_8 =
  ((copy_d1_d1_d0_d5 _lh_space_arg1_3_8) ' ')
and space_d3_d0_d6 _lh_space_arg1_4_1 =
  ((copy_d1_d1_d0_d6 _lh_space_arg1_4_1) ' ')
and space_d3_d0_d7 _lh_space_arg1_4_2 =
  ((copy_d1_d1_d0_d7 _lh_space_arg1_4_2) ' ')
and space_d3_d0_d8 _lh_space_arg1_3_9 =
  ((copy_d1_d1_d0_d8 _lh_space_arg1_3_9) ' ')
and space_d3_d0_d9 _lh_space_arg1_7 =
  ((copy_d1_d1_d0_d9 _lh_space_arg1_7) ' ')
and space_d4_d0_d0 _lh_space_arg1_3_2 =
  ((copy_d1_d2_d0_d0 _lh_space_arg1_3_2) ' ')
and space_d4_d0_d1 _lh_space_arg1_2_0 =
  ((copy_d1_d2_d0_d1 _lh_space_arg1_2_0) ' ')
and space_d4_d0_d1_d0 _lh_space_arg1_1_9 =
  ((copy_d1_d2_d0_d1_d0 _lh_space_arg1_1_9) ' ')
and space_d4_d0_d1_d1 _lh_space_arg1_2_2 =
  ((copy_d1_d2_d0_d1_d1 _lh_space_arg1_2_2) ' ')
and space_d4_d0_d2 _lh_space_arg1_2_8 =
  ((copy_d1_d2_d0_d2 _lh_space_arg1_2_8) ' ')
and space_d4_d0_d3 _lh_space_arg1_2_6 =
  ((copy_d1_d2_d0_d3 _lh_space_arg1_2_6) ' ')
and space_d4_d0_d4 _lh_space_arg1_2_9 =
  ((copy_d1_d2_d0_d4 _lh_space_arg1_2_9) ' ')
and space_d4_d0_d5 _lh_space_arg1_2_5 =
  ((copy_d1_d2_d0_d5 _lh_space_arg1_2_5) ' ')
and space_d4_d0_d6 _lh_space_arg1_1_0 =
  ((copy_d1_d2_d0_d6 _lh_space_arg1_1_0) ' ')
and space_d4_d0_d7 _lh_space_arg1_2_3 =
  ((copy_d1_d2_d0_d7 _lh_space_arg1_2_3) ' ')
and space_d4_d0_d8 _lh_space_arg1_1_2 =
  ((copy_d1_d2_d0_d8 _lh_space_arg1_1_2) ' ')
and space_d4_d0_d9 _lh_space_arg1_2_7 =
  ((copy_d1_d2_d0_d9 _lh_space_arg1_2_7) ' ')
and spread_d0_d0_d0 _lh_spread_arg1_2 =
  ((foldr1_d0_d0_d0 (fun a_9 b_8 -> 
    (((zipWith_d0_d0_d0 mappend_d3_d0_d0) a_9) b_8))) _lh_spread_arg1_2)
and spread_d1_d0_d0 _lh_spread_arg1_6 =
  ((foldr1_d2_d0_d0 (fun a_1_8 b_1_7 -> 
    (((zipWith_d3_d0_d0 mappend_d9_d0_d0) a_1_8) b_1_7))) _lh_spread_arg1_6)
and spread_d1_d0_d1 _lh_spread_arg1_1_0 =
  ((foldr1_d2_d0_d1 (fun a_3_3 b_3_1 -> 
    (((zipWith_d3_d0_d1 mappend_d9_d0_d1) a_3_3) b_3_1))) _lh_spread_arg1_1_0)
and spread_d1_d0_d1_d0 _lh_spread_arg1_1_3 =
  ((foldr1_d2_d0_d1_d0 (fun a_4_4 b_4_2 -> 
    (((zipWith_d3_d0_d1_d0 mappend_d9_d0_d1_d0) a_4_4) b_4_2))) _lh_spread_arg1_1_3)
and spread_d1_d0_d1_d1 _lh_spread_arg1_8 =
  ((foldr1_d2_d0_d1_d1 (fun a_2_3 b_2_1 -> 
    (((zipWith_d3_d0_d1_d1 mappend_d9_d0_d1_d1) a_2_3) b_2_1))) _lh_spread_arg1_8)
and spread_d1_d0_d2 _lh_spread_arg1_1_4 =
  ((foldr1_d2_d0_d2 (fun a_4_7 b_4_5 -> 
    (((zipWith_d3_d0_d2 mappend_d9_d0_d2) a_4_7) b_4_5))) _lh_spread_arg1_1_4)
and spread_d1_d0_d3 _lh_spread_arg1_3 =
  ((foldr1_d2_d0_d3 (fun a_1_3 b_1_2 -> 
    (((zipWith_d3_d0_d3 mappend_d9_d0_d3) a_1_3) b_1_2))) _lh_spread_arg1_3)
and spread_d1_d0_d4 _lh_spread_arg1_5 =
  ((foldr1_d2_d0_d4 (fun a_1_7 b_1_6 -> 
    (((zipWith_d3_d0_d4 mappend_d9_d0_d4) a_1_7) b_1_6))) _lh_spread_arg1_5)
and spread_d1_d0_d5 _lh_spread_arg1_1_2 =
  ((foldr1_d2_d0_d5 (fun a_4_3 b_4_1 -> 
    (((zipWith_d3_d0_d5 mappend_d9_d0_d5) a_4_3) b_4_1))) _lh_spread_arg1_1_2)
and spread_d1_d0_d6 _lh_spread_arg1_9 =
  ((foldr1_d2_d0_d6 (fun a_3_2 b_3_0 -> 
    (((zipWith_d3_d0_d6 mappend_d9_d0_d6) a_3_2) b_3_0))) _lh_spread_arg1_9)
and spread_d1_d0_d7 _lh_spread_arg1_1_1 =
  ((foldr1_d2_d0_d7 (fun a_3_6 b_3_4 -> 
    (((zipWith_d3_d0_d7 mappend_d9_d0_d7) a_3_6) b_3_4))) _lh_spread_arg1_1_1)
and spread_d1_d0_d8 _lh_spread_arg1_7 =
  ((foldr1_d2_d0_d8 (fun a_2_1 b_1_9 -> 
    (((zipWith_d3_d0_d8 mappend_d9_d0_d8) a_2_1) b_1_9))) _lh_spread_arg1_7)
and spread_d1_d0_d9 _lh_spread_arg1_4 =
  ((foldr1_d2_d0_d9 (fun a_1_6 b_1_5 -> 
    (((zipWith_d3_d0_d9 mappend_d9_d0_d9) a_1_6) b_1_5))) _lh_spread_arg1_4)
and stack_d0_d0_d0 _lh_stack_arg1_1_0 =
  ((foldr1_d1_d0_d0 (fun a_3_0 b_2_8 -> 
    ((mappend_d4_d0_d0 a_3_0) b_2_8))) _lh_stack_arg1_1_0)
and stack_d1_d0_d0 _lh_stack_arg1_8 =
  ((foldr1_d3_d0_d0 (fun a_2_8 b_2_6 -> 
    ((mappend_d1_d0_d0_d0 a_2_8) b_2_6))) _lh_stack_arg1_8)
and stack_d1_d0_d1 _lh_stack_arg1_1_2 =
  ((foldr1_d3_d0_d1 (fun a_3_9 b_3_7 -> 
    ((mappend_d1_d0_d0_d1 a_3_9) b_3_7))) _lh_stack_arg1_1_2)
and stack_d1_d0_d1_d0 _lh_stack_arg1_4 =
  ((foldr1_d3_d0_d1_d0 (fun a_1_4 b_1_3 -> 
    ((mappend_d1_d0_d0_d1_d0 a_1_4) b_1_3))) _lh_stack_arg1_4)
and stack_d1_d0_d1_d1 _lh_stack_arg1_2 =
  ((foldr1_d3_d0_d1_d1 (fun a_8 b_7 -> 
    ((mappend_d1_d0_d0_d1_d1 a_8) b_7))) _lh_stack_arg1_2)
and stack_d1_d0_d2 _lh_stack_arg1_1_1 =
  ((foldr1_d3_d0_d2 (fun a_3_4 b_3_2 -> 
    ((mappend_d1_d0_d0_d2 a_3_4) b_3_2))) _lh_stack_arg1_1_1)
and stack_d1_d0_d3 _lh_stack_arg1_6 =
  ((foldr1_d3_d0_d3 (fun a_2_5 b_2_3 -> 
    ((mappend_d1_d0_d0_d3 a_2_5) b_2_3))) _lh_stack_arg1_6)
and stack_d1_d0_d4 _lh_stack_arg1_3 =
  ((foldr1_d3_d0_d4 (fun a_1_2 b_1_1 -> 
    ((mappend_d1_d0_d0_d4 a_1_2) b_1_1))) _lh_stack_arg1_3)
and stack_d1_d0_d5 _lh_stack_arg1_5 =
  ((foldr1_d3_d0_d5 (fun a_1_5 b_1_4 -> 
    ((mappend_d1_d0_d0_d5 a_1_5) b_1_4))) _lh_stack_arg1_5)
and stack_d1_d0_d6 _lh_stack_arg1_7 =
  ((foldr1_d3_d0_d6 (fun a_2_7 b_2_5 -> 
    ((mappend_d1_d0_d0_d6 a_2_7) b_2_5))) _lh_stack_arg1_7)
and stack_d1_d0_d7 _lh_stack_arg1_1_3 =
  ((foldr1_d3_d0_d7 (fun a_4_0 b_3_8 -> 
    ((mappend_d1_d0_d0_d7 a_4_0) b_3_8))) _lh_stack_arg1_1_3)
and stack_d1_d0_d8 _lh_stack_arg1_1_4 =
  ((foldr1_d3_d0_d8 (fun a_4_5 b_4_3 -> 
    ((mappend_d1_d0_d0_d8 a_4_5) b_4_3))) _lh_stack_arg1_1_4)
and stack_d1_d0_d9 _lh_stack_arg1_9 =
  ((foldr1_d3_d0_d9 (fun a_2_9 b_2_7 -> 
    ((mappend_d1_d0_d0_d9 a_2_9) b_2_7))) _lh_stack_arg1_9)
and table_d0_d0_d0 _lh_table_arg1_1 _lh_table_arg2_1 =
  ((mappend_d1_d2_d0_d1 daynames_d0_d0_d0) ((entries_d0_d0_d0 _lh_table_arg1_1) _lh_table_arg2_1))
and table_d0_d0_d1 _lh_table_arg1_2 _lh_table_arg2_2 =
  ((mappend_d1_d2_d0_d3 daynames_d0_d0_d1) ((entries_d0_d0_d1 _lh_table_arg1_2) _lh_table_arg2_2))
and table_d0_d0_d1_d0 _lh_table_arg1_7 _lh_table_arg2_7 =
  ((mappend_d1_d2_d0_d2_d1 daynames_d0_d0_d1_d0) ((entries_d0_d0_d1_d0 _lh_table_arg1_7) _lh_table_arg2_7))
and table_d0_d0_d1_d1 _lh_table_arg1_5 _lh_table_arg2_5 =
  ((mappend_d1_d2_d0_d2_d3 daynames_d0_d0_d1_d1) ((entries_d0_d0_d1_d1 _lh_table_arg1_5) _lh_table_arg2_5))
and table_d0_d0_d2 _lh_table_arg1_1_1 _lh_table_arg2_1_1 =
  ((mappend_d1_d2_d0_d5 daynames_d0_d0_d2) ((entries_d0_d0_d2 _lh_table_arg1_1_1) _lh_table_arg2_1_1))
and table_d0_d0_d3 _lh_table_arg1_4 _lh_table_arg2_4 =
  ((mappend_d1_d2_d0_d7 daynames_d0_d0_d3) ((entries_d0_d0_d3 _lh_table_arg1_4) _lh_table_arg2_4))
and table_d0_d0_d4 _lh_table_arg1_1_2 _lh_table_arg2_1_2 =
  ((mappend_d1_d2_d0_d9 daynames_d0_d0_d4) ((entries_d0_d0_d4 _lh_table_arg1_1_2) _lh_table_arg2_1_2))
and table_d0_d0_d5 _lh_table_arg1_3 _lh_table_arg2_3 =
  ((mappend_d1_d2_d0_d1_d1 daynames_d0_d0_d5) ((entries_d0_d0_d5 _lh_table_arg1_3) _lh_table_arg2_3))
and table_d0_d0_d6 _lh_table_arg1_1_0 _lh_table_arg2_1_0 =
  ((mappend_d1_d2_d0_d1_d3 daynames_d0_d0_d6) ((entries_d0_d0_d6 _lh_table_arg1_1_0) _lh_table_arg2_1_0))
and table_d0_d0_d7 _lh_table_arg1_6 _lh_table_arg2_6 =
  ((mappend_d1_d2_d0_d1_d5 daynames_d0_d0_d7) ((entries_d0_d0_d7 _lh_table_arg1_6) _lh_table_arg2_6))
and table_d0_d0_d8 _lh_table_arg1_9 _lh_table_arg2_9 =
  ((mappend_d1_d2_d0_d1_d7 daynames_d0_d0_d8) ((entries_d0_d0_d8 _lh_table_arg1_9) _lh_table_arg2_9))
and table_d0_d0_d9 _lh_table_arg1_8 _lh_table_arg2_8 =
  ((mappend_d1_d2_d0_d1_d9 daynames_d0_d0_d9) ((entries_d0_d0_d9 _lh_table_arg1_8) _lh_table_arg2_8))
and testCalendar_nofib_d0_d0_d0 _lh_testCalendar_nofib_arg1_1 =
  ((map_d6_d0_d0 (fun n_4_4 -> 
    (length_d3_d0_d2 (cal_d0_d0_d0 n_4_4)))) ((enumFromTo_d1_d0_d0 2008) (2008 + _lh_testCalendar_nofib_arg1_1)))
and title_d0_d0_d0 _lh_title_arg1_3 ys_1_1_1 =
  (let rec t_1_1_1 = (fun ys_1_1_0 -> 
    ys_1_1_0) in
    (let rec h_1_0_8 = ((cjustify_d1_d0_d0 21) _lh_title_arg1_3) in
      (`LH_C(h_1_0_8, ((mappend_d8_d0_d1_d2 t_1_1_1) ys_1_1_1)))))
and title_d0_d0_d1 _lh_title_arg1_1_0 ys_3_1_0 =
  (let rec t_2_6_1 = (fun ys_3_0_9 -> 
    ys_3_0_9) in
    (let rec h_2_5_7 = ((cjustify_d1_d0_d1 21) _lh_title_arg1_1_0) in
      (`LH_C(h_2_5_7, ((mappend_d8_d0_d1_d3 t_2_6_1) ys_3_1_0)))))
and title_d0_d0_d1_d0 _lh_title_arg1_1 ys_5_4 =
  (let rec t_5_3 = (fun ys_5_3 -> 
    ys_5_3) in
    (let rec h_5_1 = ((cjustify_d1_d0_d1_d0 21) _lh_title_arg1_1) in
      (`LH_C(h_5_1, ((mappend_d8_d0_d2_d2 t_5_3) ys_5_4)))))
and title_d0_d0_d1_d1 _lh_title_arg1_8 ys_2_0_7 =
  (let rec t_1_7_9 = (fun ys_2_0_6 -> 
    ys_2_0_6) in
    (let rec h_1_7_5 = ((cjustify_d1_d0_d1_d1 21) _lh_title_arg1_8) in
      (`LH_C(h_1_7_5, ((mappend_d8_d0_d2_d3 t_1_7_9) ys_2_0_7)))))
and title_d0_d0_d2 _lh_title_arg1_2 ys_6_6 =
  (let rec t_6_0 = (fun ys_6_5 -> 
    ys_6_5) in
    (let rec h_5_8 = ((cjustify_d1_d0_d2 21) _lh_title_arg1_2) in
      (`LH_C(h_5_8, ((mappend_d8_d0_d1_d4 t_6_0) ys_6_6)))))
and title_d0_d0_d3 _lh_title_arg1_5 ys_1_4_6 =
  (let rec t_1_3_3 = (fun ys_1_4_5 -> 
    ys_1_4_5) in
    (let rec h_1_2_9 = ((cjustify_d1_d0_d3 21) _lh_title_arg1_5) in
      (`LH_C(h_1_2_9, ((mappend_d8_d0_d1_d5 t_1_3_3) ys_1_4_6)))))
and title_d0_d0_d4 _lh_title_arg1_6 ys_1_6_4 =
  (let rec t_1_4_9 = (fun ys_1_6_3 -> 
    ys_1_6_3) in
    (let rec h_1_4_5 = ((cjustify_d1_d0_d4 21) _lh_title_arg1_6) in
      (`LH_C(h_1_4_5, ((mappend_d8_d0_d1_d6 t_1_4_9) ys_1_6_4)))))
and title_d0_d0_d5 _lh_title_arg1_9 ys_2_5_9 =
  (let rec t_2_1_3 = (fun ys_2_5_8 -> 
    ys_2_5_8) in
    (let rec h_2_0_9 = ((cjustify_d1_d0_d5 21) _lh_title_arg1_9) in
      (`LH_C(h_2_0_9, ((mappend_d8_d0_d1_d7 t_2_1_3) ys_2_5_9)))))
and title_d0_d0_d6 _lh_title_arg1_4 ys_1_2_7 =
  (let rec t_1_2_5 = (fun ys_1_2_6 -> 
    ys_1_2_6) in
    (let rec h_1_2_2 = ((cjustify_d1_d0_d6 21) _lh_title_arg1_4) in
      (`LH_C(h_1_2_2, ((mappend_d8_d0_d1_d8 t_1_2_5) ys_1_2_7)))))
and title_d0_d0_d7 _lh_title_arg1_1_2 ys_3_3_4 =
  (let rec t_2_7_9 = (fun ys_3_3_3 -> 
    ys_3_3_3) in
    (let rec h_2_7_5 = ((cjustify_d1_d0_d7 21) _lh_title_arg1_1_2) in
      (`LH_C(h_2_7_5, ((mappend_d8_d0_d1_d9 t_2_7_9) ys_3_3_4)))))
and title_d0_d0_d8 _lh_title_arg1_1_1 ys_3_2_2 =
  (let rec t_2_7_1 = (fun ys_3_2_1 -> 
    ys_3_2_1) in
    (let rec h_2_6_7 = ((cjustify_d1_d0_d8 21) _lh_title_arg1_1_1) in
      (`LH_C(h_2_6_7, ((mappend_d8_d0_d2_d0 t_2_7_1) ys_3_2_2)))))
and title_d0_d0_d9 _lh_title_arg1_7 ys_1_7_2 =
  (let rec t_1_5_8 = (fun ys_1_7_1 -> 
    ys_1_7_1) in
    (let rec h_1_5_4 = ((cjustify_d1_d0_d9 21) _lh_title_arg1_7) in
      (`LH_C(h_1_5_4, ((mappend_d8_d0_d2_d1 t_1_5_8) ys_1_7_2)))))
and unlines_d0_d0_d0 _lh_unlines_arg1_1 =
  (concat_d0_d0_d0 ((map_d5_d0_d0 (fun l_1 -> 
    ((mappend_d1_d7_d0_d0 l_1) (let rec t_7_2 = (fun ys_7_8 -> 
      ys_7_8) in
      (let rec h_7_0 = 'n' in
        (fun ys_7_9 -> 
          (let rec t_7_3 = ((mappend_d1_d6_d0_d0 t_7_2) ys_7_9) in
            (fun _lh_dummy_2_4 -> 
              (1 + (length_d3_d0_d0 t_7_3)))))))))) _lh_unlines_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Calendar_nofib" (fun () -> ignore ((testCalendar_nofib_d0 100)));
  Bench.Test.create ~name:"lumberhack_Calendar_nofib" (fun () -> ignore ((testCalendar_nofib_d0_d0 100)));
  Bench.Test.create ~name:"lumberhack_pop_out_Calendar_nofib" (fun () -> ignore ((testCalendar_nofib_d0_d0_d0 100)));
])
