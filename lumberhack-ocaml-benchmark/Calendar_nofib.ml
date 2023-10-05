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
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy__d1 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (`LH_C(_lh_copy_arg2_5, ((copy__d1 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5)))
  else
    (`LH_N));;
let rec copy__d1_d0 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy__d1_d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec copy__d1_d1 _lh_copy_arg1_1_3 _lh_copy_arg2_1_3 =
  (if (_lh_copy_arg1_1_3 > 0) then
    (`LH_C(_lh_copy_arg2_1_3, ((copy__d1_d1 (_lh_copy_arg1_1_3 - 1)) _lh_copy_arg2_1_3)))
  else
    (`LH_N));;
let rec copy__d1_d2 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (`LH_C(_lh_copy_arg2_1_0, ((copy__d1_d2 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0)))
  else
    (`LH_N));;
let rec copy__d2 _lh_copy_arg1_9 _lh_copy_arg2_9 =
  (if (_lh_copy_arg1_9 > 0) then
    (`LH_C(_lh_copy_arg2_9, ((copy__d2 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9)))
  else
    (`LH_N));;
let rec copy__d3 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d3 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy__d4 _lh_copy_arg1_1_1 _lh_copy_arg2_1_1 =
  (if (_lh_copy_arg1_1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1_1, ((copy__d4 (_lh_copy_arg1_1_1 - 1)) _lh_copy_arg2_1_1)))
  else
    (`LH_N));;
let rec copy__d5 _lh_copy_arg1_1_2 _lh_copy_arg2_1_2 =
  (if (_lh_copy_arg1_1_2 > 0) then
    (`LH_C(_lh_copy_arg2_1_2, ((copy__d5 (_lh_copy_arg1_1_2 - 1)) _lh_copy_arg2_1_2)))
  else
    (`LH_N));;
let rec copy__d6 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy__d6 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy__d7 _lh_copy_arg1_6 _lh_copy_arg2_6 =
  (if (_lh_copy_arg1_6 > 0) then
    (`LH_C(_lh_copy_arg2_6, ((copy__d7 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6)))
  else
    (`LH_N));;
let rec copy__d8 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (if (_lh_copy_arg1_7 > 0) then
    (`LH_C(_lh_copy_arg2_7, ((copy__d8 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7)))
  else
    (`LH_N));;
let rec copy__d9 _lh_copy_arg1_8 _lh_copy_arg2_8 =
  (if (_lh_copy_arg1_8 > 0) then
    (`LH_C(_lh_copy_arg2_8, ((copy__d9 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8)))
  else
    (`LH_N));;
let rec daynames__d0 =
  (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))), (`LH_N)));;
let rec drop__d0 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop__d0 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        _lh_drop_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d1 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_9 b_5 =
  (if (a_9 <= b_5) then
    (`LH_C(a_9, ((enumFromTo__d0 (a_9 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_1_5 b_1_0 =
  (if (a_1_5 <= b_1_0) then
    (`LH_C(a_1_5, ((enumFromTo__d1 (a_1_5 + 1)) b_1_0)))
  else
    (`LH_N));;
let rec foldr__d0 f_2_6 i_6 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_5_6, t_5_7) -> 
      ((f_2_6 h_5_6) (((foldr__d0 f_2_6) i_6) t_5_7))
    | `LH_N -> 
      i_6);;
let rec foldr__d1 f_2_4 i_4 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_1, t_5_2) -> 
      ((f_2_4 h_5_1) (((foldr__d1 f_2_4) i_4) t_5_2))
    | `LH_N -> 
      i_4);;
let rec foldr__d2 f_2_5 i_5 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_5_4, t_5_5) -> 
      ((f_2_5 h_5_4) (((foldr__d2 f_2_5) i_5) t_5_5))
    | `LH_N -> 
      i_5);;
let rec foldr__d3 f_1_3 i_3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_5, t_2_6) -> 
      ((f_1_3 h_2_5) (((foldr__d3 f_1_3) i_3) t_2_6))
    | `LH_N -> 
      i_3);;
let rec jan1st__d0 _lh_jan1st_arg1_1 =
  (let rec last_1 = (_lh_jan1st_arg1_1 - 1) in
    (((((((_lh_jan1st_arg1_1 + last_1) / 4) - last_1) / 100) + last_1) / 400) mod 7));;
let rec leap__d0 _lh_leap_arg1_1 =
  (if ((_lh_leap_arg1_1 mod 100) = 0) then
    ((_lh_leap_arg1_1 mod 400) = 0)
  else
    ((_lh_leap_arg1_1 mod 4) = 0));;
let rec leap__d1 _lh_leap_arg1_2 =
  (if ((_lh_leap_arg1_2 mod 100) = 0) then
    ((_lh_leap_arg1_2 mod 400) = 0)
  else
    ((_lh_leap_arg1_2 mod 4) = 0));;
let rec length__d0 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_7, t_4_8) -> 
      (1 + (length__d0 t_4_8))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_4, t_3_5) -> 
      (1 + (length__d1 t_3_5))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_8, t_2_9) -> 
      (1 + (length__d2 t_2_9))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_3, t_3_4) -> 
      (1 + (length__d3 t_3_4))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_6 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_4_0, t_4_1) -> 
      (`LH_C((f_1_6 h_4_0), ((map__d0 f_1_6) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_7 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_4_2, t_4_3) -> 
      (`LH_C((f_1_7 h_4_2), ((map__d1 f_1_7) t_4_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_2_0 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_4, t_4_5) -> 
      (`LH_C((f_2_0 h_4_4), ((map__d2 f_2_0) t_4_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_9 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_3, t_4_4) -> 
      (`LH_C((f_1_9 h_4_3), ((map__d3 f_1_9) t_4_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_5 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_9, t_3_0) -> 
      (`LH_C((f_1_5 h_2_9), ((map__d4 f_1_5) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_2_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_4_9, t_5_0) -> 
      (`LH_C((f_2_3 h_4_9), ((map__d5 f_2_3) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_1_4 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_7, t_2_8) -> 
      (`LH_C((f_1_4 h_2_7), ((map__d6 f_1_4) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_3) -> 
      (`LH_C(h_2_2, ((mappend__d0 t_2_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_7, t_3_8) -> 
      (`LH_C(h_3_7, ((mappend__d1 t_3_8) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d0 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_2, t_3_3) -> 
      (`LH_C(h_3_2, ((mappend__d1_d0 t_3_3) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1_d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_2) -> 
      (`LH_C(h_2_1, ((mappend__d1_d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1_d2 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_5_7, t_5_8) -> 
      (`LH_C(h_5_7, ((mappend__d1_d2 t_5_8) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d1_d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_4, t_2_5) -> 
      (`LH_C(h_2_4, ((mappend__d1_d3 t_2_5) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1_d4 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_0, t_3_1) -> 
      (`LH_C(h_3_0, ((mappend__d1_d4 t_3_1) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1_d5 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_4_1, t_4_2) -> 
      (`LH_C(h_4_1, ((mappend__d1_d5 t_4_2) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d1_d6 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_6, t_4_7) -> 
      (`LH_C(h_4_6, ((mappend__d1_d6 t_4_7) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d1_d7 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_8, t_3_9) -> 
      (`LH_C(h_3_8, ((mappend__d1_d7 t_3_9) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d2 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_9, t_4_0) -> 
      (`LH_C(h_3_9, ((mappend__d2 t_4_0) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d3 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_5_3, t_5_4) -> 
      (`LH_C(h_5_3, ((mappend__d3 t_5_4) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d4 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_5, t_4_6) -> 
      (`LH_C(h_4_5, ((mappend__d4 t_4_6) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d5 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_6, t_3_7) -> 
      (`LH_C(h_3_6, ((mappend__d5 t_3_7) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d6 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_1, t_3_2) -> 
      (`LH_C(h_3_1, ((mappend__d6 t_3_2) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d7 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_4) -> 
      (`LH_C(h_2_3, ((mappend__d7 t_2_4) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d8 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_5_0, t_5_1) -> 
      (`LH_C(h_5_0, ((mappend__d8 t_5_1) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d9 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_5_5, t_5_6) -> 
      (`LH_C(h_5_5, ((mappend__d9 t_5_6) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec monthNames__d0 =
  (`LH_C((`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))), (`LH_C((`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))), (`LH_C((`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_N)))))))))))))))))))))))));;
let rec scanl__d0 _lh_scanl_arg1_1 _lh_scanl_arg2_1 _lh_scanl_arg3_1 =
  (`LH_C(_lh_scanl_arg2_1, (let rec _lh_matchIdent_4 = _lh_scanl_arg3_1 in
    (match _lh_matchIdent_4 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_1, _lh_scanl_LH_C_1_1) -> 
        (((scanl__d0 _lh_scanl_arg1_1) ((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_1)
      | _ -> 
        (failwith "error")))));;
let rec take__d0 n_8 ls_3_4 =
  (if (n_8 > 0) then
    (match ls_3_4 with
      | `LH_C(h_5_2, t_5_3) -> 
        (`LH_C(h_5_2, ((take__d0 (n_8 - 1)) t_5_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_6 ls_2_5 =
  (if (n_6 > 0) then
    (match ls_2_5 with
      | `LH_C(h_3_5, t_3_6) -> 
        (`LH_C(h_3_5, ((take__d1 (n_6 - 1)) t_3_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_7 ls_3_1 =
  (if (n_7 > 0) then
    (match ls_3_1 with
      | `LH_C(h_4_8, t_4_9) -> 
        (`LH_C(h_4_8, ((take__d2 (n_7 - 1)) t_4_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3__d0 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_5 = _lh_zip3_arg1_1 in
    (match _lh_matchIdent_5 with
      | `LH_C(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_6 = _lh_zip3_arg2_1 in
          (match _lh_matchIdent_6 with
            | `LH_C(_lh_zip3_LH_C_0_4, _lh_zip3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_7 = _lh_zip3_arg3_1 in
                (match _lh_matchIdent_7 with
                  | `LH_C(_lh_zip3_LH_C_0_5, _lh_zip3_LH_C_1_5) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_0_4, _lh_zip3_LH_C_0_5)), (((zip3__d0 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_5)))
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
let rec zipWith__d0 f_2_1 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_2_5 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_2_1 hx_1_0) hy_1_0), (((zipWith__d0 f_2_1) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d1 f_1_2 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_1_0 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith__d1 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d2 f_2_2 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match ys_2_6 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_2_2 hx_1_1) hy_1_1), (((zipWith__d2 f_2_2) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3 f_1_8 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_2_2 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_8 hx_9) hy_9), (((zipWith__d3 f_1_8) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner__d0 _lh_banner_arg1_1 =
  ((mappend__d2 (`LH_C(((cjustify__d0 75) (string_of_int _lh_banner_arg1_1)), (`LH_N)))) (emptyPic__d0 (`LH_P2(1, 75))))
and block__d0 _lh_block_arg1_1 _lh_funcomp_x_1_0 =
  ((fun _lh_funcomp_x_1_1 -> 
    (stack__d0 ((map__d0 spread__d0) _lh_funcomp_x_1_1))) ((groop__d0 _lh_block_arg1_1) _lh_funcomp_x_1_0))
and block__d1 _lh_block_arg1_2 _lh_funcomp_x_1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (stack__d1 ((map__d3 spread__d1) _lh_funcomp_x_1_3))) ((groop__d1 _lh_block_arg1_2) _lh_funcomp_x_1_2))
and body__d0 _lh_funcomp_x_7 =
  ((fun _lh_funcomp_x_8 -> 
    ((block__d0 3) ((map__d1 (fun _lh_funcomp_x_9 -> 
      (pad__d0 (pic__d0 _lh_funcomp_x_9)))) _lh_funcomp_x_8))) (months__d0 _lh_funcomp_x_7))
and cal__d0 _lh_cal_arg1_1 =
  (unlines__d0 ((mappend__d1_d5 (banner__d0 _lh_cal_arg1_1)) (body__d0 _lh_cal_arg1_1)))
and cjustify__d0 _lh_cjustify_arg1_2 _lh_cjustify_arg2_2 =
  (let rec m_2 = (_lh_cjustify_arg1_2 - (length__d0 _lh_cjustify_arg2_2)) in
    (let rec halfm_2 = (m_2 / 2) in
      ((mappend__d0 ((mappend__d1 (space__d0 halfm_2)) _lh_cjustify_arg2_2)) (space__d1 (m_2 - halfm_2)))))
and cjustify__d1 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length__d2 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend__d1_d3 ((mappend__d1_d4 (space__d3 halfm_1)) _lh_cjustify_arg2_1)) (space__d4 (m_1 - halfm_1)))))
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_6, t_2_7) -> 
      ((mappend__d1_d6 h_2_6) (concat__d0 t_2_7))
    | `LH_N -> 
      (`LH_N))
and date__d0 _lh_date_arg1_1 _lh_date_arg2_1 =
  (if ((_lh_date_arg2_1 < 1) || (_lh_date_arg1_1 < _lh_date_arg2_1)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0 3) (string_of_int _lh_date_arg2_1)), (`LH_N))))
and dates__d0 _lh_dates_arg1_1 _lh_dates_arg2_1 =
  ((map__d4 (fun d_1 -> 
    ((date__d0 _lh_dates_arg2_1) d_1))) ((enumFromTo__d0 (1 - _lh_dates_arg1_1)) (42 - _lh_dates_arg1_1)))
and emptyPic__d0 _lh_emptyPic_arg1_4 =
  (match _lh_emptyPic_arg1_4 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_4, _lh_emptyPic_LH_P2_1_4) -> 
      ((copy__d2 _lh_emptyPic_LH_P2_0_4) ((copy__d3 _lh_emptyPic_LH_P2_1_4) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic__d1 _lh_emptyPic_arg1_3 =
  (match _lh_emptyPic_arg1_3 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_3, _lh_emptyPic_LH_P2_1_3) -> 
      ((copy__d4 _lh_emptyPic_LH_P2_0_3) ((copy__d5 _lh_emptyPic_LH_P2_1_3) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic__d2 _lh_emptyPic_arg1_2 =
  (match _lh_emptyPic_arg1_2 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_2, _lh_emptyPic_LH_P2_1_2) -> 
      ((copy__d6 _lh_emptyPic_LH_P2_0_2) ((copy__d7 _lh_emptyPic_LH_P2_1_2) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic__d3 _lh_emptyPic_arg1_1 =
  (match _lh_emptyPic_arg1_1 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_1, _lh_emptyPic_LH_P2_1_1) -> 
      ((copy__d8 _lh_emptyPic_LH_P2_0_1) ((copy__d9 _lh_emptyPic_LH_P2_1_1) ' '))
    | _ -> 
      (failwith "error"))
and end__d0 _lh_end_arg1_1 =
  (emptyPic__d1 (`LH_P2(1, 25)))
and entries__d0 _lh_entries_arg1_1 _lh_entries_arg2_1 =
  ((block__d1 7) ((dates__d0 _lh_entries_arg1_1) _lh_entries_arg2_1))
and firstDays__d0 _lh_firstDays_arg1_1 =
  ((take__d1 12) ((map__d2 (fun a_1_2 -> 
    (a_1_2 mod 7))) (((scanl__d0 (fun a_1_3 b_8 -> 
    (a_1_3 + b_8))) (jan1st__d0 _lh_firstDays_arg1_1)) (monthLengths__d0 _lh_firstDays_arg1_1))))
and foldr1__d0 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (((foldr__d0 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_0_2) _lh_foldr1_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and foldr1__d1 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr__d1 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and foldr1__d2 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (((foldr__d2 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_0_3) _lh_foldr1_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and foldr1__d3 _lh_foldr1_arg1_4 _lh_foldr1_arg2_4 =
  (match _lh_foldr1_arg2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_4, _lh_foldr1_LH_C_1_4) -> 
      (((foldr__d3 _lh_foldr1_arg1_4) _lh_foldr1_LH_C_0_4) _lh_foldr1_LH_C_1_4)
    | _ -> 
      (failwith "error"))
and groop__d0 _lh_groop_arg1_1 _lh_groop_arg2_1 =
  (match _lh_groop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take__d0 _lh_groop_arg1_1) _lh_groop_arg2_1), ((groop__d0 _lh_groop_arg1_1) ((drop__d0 _lh_groop_arg1_1) _lh_groop_arg2_1)))))
and groop__d1 _lh_groop_arg1_2 _lh_groop_arg2_2 =
  (match _lh_groop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take__d2 _lh_groop_arg1_2) _lh_groop_arg2_2), ((groop__d1 _lh_groop_arg1_2) ((drop__d1 _lh_groop_arg1_2) _lh_groop_arg2_2)))))
and monthLengths__d0 _lh_monthLengths_arg1_2 =
  (let rec feb_2 = (if (leap__d0 _lh_monthLengths_arg1_2) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_2, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))))
and monthLengths__d1 _lh_monthLengths_arg1_1 =
  (let rec feb_1 = (if (leap__d1 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_1, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))))
and months__d0 _lh_months_arg1_1 =
  (((zip3__d0 monthNames__d0) (firstDays__d0 _lh_months_arg1_1)) (monthLengths__d1 _lh_months_arg1_1))
and pad__d0 _lh_pad_arg1_1 =
  ((mappend__d5 (((zipWith__d1 mappend__d6) (((zipWith__d2 mappend__d7) (side__d0 0)) _lh_pad_arg1_1)) (side__d1 0))) (end__d0 0))
and pic__d0 _lh_pic_arg1_1 =
  (match _lh_pic_arg1_1 with
    | `LH_P3(_lh_pic_LH_P3_0_1, _lh_pic_LH_P3_1_1, _lh_pic_LH_P3_2_1) -> 
      ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_1)) ((table__d0 _lh_pic_LH_P3_1_1) _lh_pic_LH_P3_2_1))
    | _ -> 
      (failwith "error"))
and rjustify__d0 _lh_rjustify_arg1_1 _lh_rjustify_arg2_1 =
  ((mappend__d1_d1 (space__d2 (_lh_rjustify_arg1_1 - (length__d1 _lh_rjustify_arg2_1)))) _lh_rjustify_arg2_1)
and side__d0 _lh_side_arg1_1 =
  (emptyPic__d2 (`LH_P2(8, 2)))
and side__d1 _lh_side_arg1_2 =
  (emptyPic__d3 (`LH_P2(8, 2)))
and space__d0 _lh_space_arg1_1 =
  ((copy__d0 _lh_space_arg1_1) ' ')
and space__d1 _lh_space_arg1_2 =
  ((copy__d1 _lh_space_arg1_2) ' ')
and space__d2 _lh_space_arg1_4 =
  ((copy__d1_d0 _lh_space_arg1_4) ' ')
and space__d3 _lh_space_arg1_3 =
  ((copy__d1_d1 _lh_space_arg1_3) ' ')
and space__d4 _lh_space_arg1_5 =
  ((copy__d1_d2 _lh_space_arg1_5) ' ')
and spread__d0 _lh_spread_arg1_1 =
  ((foldr1__d0 (fun a_1_0 b_6 -> 
    (((zipWith__d0 mappend__d3) a_1_0) b_6))) _lh_spread_arg1_1)
and spread__d1 _lh_spread_arg1_2 =
  ((foldr1__d2 (fun a_1_6 b_1_1 -> 
    (((zipWith__d3 mappend__d9) a_1_6) b_1_1))) _lh_spread_arg1_2)
and stack__d0 _lh_stack_arg1_2 =
  ((foldr1__d1 (fun a_1_4 b_9 -> 
    ((mappend__d4 a_1_4) b_9))) _lh_stack_arg1_2)
and stack__d1 _lh_stack_arg1_1 =
  ((foldr1__d3 (fun a_1_1 b_7 -> 
    ((mappend__d1_d0 a_1_1) b_7))) _lh_stack_arg1_1)
and table__d0 _lh_table_arg1_1 _lh_table_arg2_1 =
  ((mappend__d1_d2 daynames__d0) ((entries__d0 _lh_table_arg1_1) _lh_table_arg2_1))
and testCalendar_nofib__d0 _lh_testCalendar_nofib_arg1_1 =
  ((map__d6 (fun n_5 -> 
    (length__d3 (cal__d0 n_5)))) ((enumFromTo__d1 2008) (2008 + _lh_testCalendar_nofib_arg1_1)))
and title__d0 _lh_title_arg1_1 =
  (`LH_C(((cjustify__d1 21) _lh_title_arg1_1), (`LH_N)))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d0 ((map__d5 (fun l_1 -> 
    ((mappend__d1_d7 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;

(* lumberhack *)
let rec concat__d0__d0 lss_0 =
  (lss_0 99);;
let rec copy__d1__d0 _lh_copy_arg1_6 _lh_copy_arg2_6 =
  (if (_lh_copy_arg1_6 > 0) then
    (`LH_C(_lh_copy_arg2_6, ((copy__d1__d0 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d1_d2__d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy__d3__d0 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy__d3__d0 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy__d4__d0 _lh_copy_arg1_1_1 _lh_copy_arg2_1_1 =
  (if (_lh_copy_arg1_1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1_1, ((copy__d4__d0 (_lh_copy_arg1_1_1 - 1)) _lh_copy_arg2_1_1)))
  else
    (`LH_N));;
let rec copy__d5__d0 _lh_copy_arg1_1_2 _lh_copy_arg2_1_2 =
  (if (_lh_copy_arg1_1_2 > 0) then
    (`LH_C(_lh_copy_arg2_1_2, ((copy__d5__d0 (_lh_copy_arg1_1_2 - 1)) _lh_copy_arg2_1_2)))
  else
    (`LH_N));;
let rec copy__d9__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d9__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec drop__d0__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d1__d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec emptyPic__d0__d0 _lh_emptyPic_arg1_3 =
  (_lh_emptyPic_arg1_3 99);;
let rec emptyPic__d1__d0 _lh_emptyPic_arg1_2 =
  (_lh_emptyPic_arg1_2 99);;
let rec emptyPic__d2__d0 _lh_emptyPic_arg1_0 =
  (_lh_emptyPic_arg1_0 99);;
let rec emptyPic__d3__d0 _lh_emptyPic_arg1_1 =
  (_lh_emptyPic_arg1_1 99);;
let rec enumFromTo__d1__d0 a_3 b_2 =
  (if (a_3 <= b_2) then
    (`LH_C(a_3, ((enumFromTo__d1__d0 (a_3 + 1)) b_2)))
  else
    (`LH_N));;
let rec foldr__d0__d0 f_3_5 i_3 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_4_2, t_4_4) -> 
      ((f_3_5 h_4_2) (((foldr__d0__d0 f_3_5) i_3) t_4_4))
    | `LH_N -> 
      i_3);;
let rec foldr__d1__d0 f_2_7 i_1 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_5, t_3_6) -> 
      ((f_2_7 h_3_5) (((foldr__d1__d0 f_2_7) i_1) t_3_6))
    | `LH_N -> 
      i_1);;
let rec foldr__d2__d0 f_2_6 i_0 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_3_3, t_3_4) -> 
      ((f_2_6 h_3_3) (((foldr__d2__d0 f_2_6) i_0) t_3_4))
    | `LH_N -> 
      i_0);;
let rec foldr__d3__d0 f_3_1 i_2 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_3_9, t_4_1) -> 
      ((f_3_1 h_3_9) (((foldr__d3__d0 f_3_1) i_2) t_4_1))
    | `LH_N -> 
      i_2);;
let rec jan1st__d0__d0 _lh_jan1st_arg1_0 =
  (let rec last_0 = (_lh_jan1st_arg1_0 - 1) in
    (((((((_lh_jan1st_arg1_0 + last_0) / 4) - last_0) / 100) + last_0) / 400) mod 7));;
let rec leap__d0__d0 _lh_leap_arg1_1 =
  (if ((_lh_leap_arg1_1 mod 100) = 0) then
    ((_lh_leap_arg1_1 mod 400) = 0)
  else
    ((_lh_leap_arg1_1 mod 4) = 0));;
let rec leap__d1__d0 _lh_leap_arg1_0 =
  (if ((_lh_leap_arg1_0 mod 100) = 0) then
    ((_lh_leap_arg1_0 mod 400) = 0)
  else
    ((_lh_leap_arg1_0 mod 4) = 0));;
let rec length__d0__d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1_0, t_1_1) -> 
      (1 + (length__d0__d0 t_1_1))
    | `LH_N -> 
      0);;
let rec length__d1__d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_3, t_1_4) -> 
      (1 + (length__d1__d0 t_1_4))
    | `LH_N -> 
      0);;
let rec length__d2__d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_3_2, t_3_3) -> 
      (1 + (length__d2__d0 t_3_3))
    | `LH_N -> 
      0);;
let rec length__d3__d0 ls_1_7 =
  (ls_1_7 99);;
let rec map__d0__d0 f_2_5 ls_9 =
  (ls_9 f_2_5);;
let rec map__d1__d0 f_1 ls_0 =
  (ls_0 f_1);;
let rec map__d2__d0 f_2_3 ls_8 =
  (ls_8 f_2_3);;
let rec map__d3__d0 f_6 ls_4 =
  (ls_4 f_6);;
let rec map__d4__d0 f_4_4 ls_1_6 =
  (ls_1_6 f_4_4);;
let rec map__d6__d0 f_3_4 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C((f_3_4 h_4_0), ((map__d6__d0 f_3_4) t_4_2)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0__d0 xs_6 ys_1_6 =
  (match xs_6 with
    | `LH_C(h_1_7, t_1_8) -> 
      (`LH_C(h_1_7, ((mappend__d0__d0 t_1_8) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1__d0 xs_1_5 ys_3_3 =
  (xs_1_5 ys_3_3);;
let rec mappend__d1_d0__d0 xs_2 ys_1_0 =
  (match xs_2 with
    | `LH_C(h_9, t_1_0) -> 
      (`LH_C(h_9, ((mappend__d1_d0__d0 t_1_0) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d1__d0 xs_9 ys_1_9 =
  (xs_9 ys_1_9);;
let rec mappend__d1_d2__d0 xs_1_4 ys_3_0 =
  (xs_1_4 ys_3_0);;
let rec mappend__d1_d3__d0 xs_3 ys_1_1 =
  (match xs_3 with
    | `LH_C(h_1_1, t_1_2) -> 
      (`LH_C(h_1_1, ((mappend__d1_d3__d0 t_1_2) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d4__d0 xs_1_7 ys_3_5 =
  (xs_1_7 ys_3_5);;
let rec mappend__d1_d5__d0 xs_1_6 ys_3_4 =
  (xs_1_6 ys_3_4);;
let rec mappend__d1_d6__d0 xs_1_9 ys_4_4 =
  (xs_1_9 ys_4_4);;
let rec mappend__d2__d0 xs_1_3 ys_2_7 =
  (xs_1_3 ys_2_7);;
let rec mappend__d3__d0 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend__d3__d0 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend__d4__d0 xs_5 ys_1_5 =
  (match xs_5 with
    | `LH_C(h_1_6, t_1_7) -> 
      (`LH_C(h_1_6, ((mappend__d4__d0 t_1_7) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d5__d0 xs_8 ys_1_8 =
  (xs_8 ys_1_8);;
let rec mappend__d6__d0 xs_2_0 ys_4_9 =
  (match xs_2_0 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d6__d0 t_5_0) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend__d7__d0 xs_7 ys_1_7 =
  (xs_7 ys_1_7);;
let rec mappend__d8__d0 xs_1_1 ys_2_1 =
  (xs_1_1 ys_2_1);;
let rec mappend__d9__d0 xs_1_8 ys_3_6 =
  (match xs_1_8 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d9__d0 t_4_7) ys_3_6)))
    | `LH_N -> 
      ys_3_6);;
let rec monthNames__d0__d0 =
  (let rec _lh_zip3_LH_C_1_2 = (let rec _lh_zip3_LH_C_1_3 = (let rec _lh_zip3_LH_C_1_4 = (let rec _lh_zip3_LH_C_1_5 = (let rec _lh_zip3_LH_C_1_6 = (let rec _lh_zip3_LH_C_1_7 = (let rec _lh_zip3_LH_C_1_8 = (let rec _lh_zip3_LH_C_1_9 = (let rec _lh_zip3_LH_C_1_1_0 = (let rec _lh_zip3_LH_C_1_1_1 = (let rec _lh_zip3_LH_C_1_1_2 = (let rec _lh_zip3_LH_C_1_1_3 = (fun _lh_zip3_arg2_0 _lh_zip3_arg3_1 f_5 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2 = (`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1 _lh_zip3_arg3_2 -> 
        (let rec _lh_matchIdent_2 = _lh_zip3_arg2_1 in
          (((_lh_matchIdent_2 _lh_zip3_LH_C_0_2) _lh_zip3_LH_C_1_1_3) _lh_zip3_arg3_2))))) in
    (let rec _lh_zip3_LH_C_0_3 = (`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2 _lh_zip3_arg3_3 -> 
        (let rec _lh_matchIdent_3 = _lh_zip3_arg2_2 in
          (((_lh_matchIdent_3 _lh_zip3_LH_C_0_3) _lh_zip3_LH_C_1_1_2) _lh_zip3_arg3_3))))) in
    (let rec _lh_zip3_LH_C_0_4 = (`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_3 _lh_zip3_arg3_4 -> 
        (let rec _lh_matchIdent_4 = _lh_zip3_arg2_3 in
          (((_lh_matchIdent_4 _lh_zip3_LH_C_0_4) _lh_zip3_LH_C_1_1_1) _lh_zip3_arg3_4))))) in
    (let rec _lh_zip3_LH_C_0_5 = (`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))) in
      (fun _lh_zip3_arg2_4 _lh_zip3_arg3_5 -> 
        (let rec _lh_matchIdent_5 = _lh_zip3_arg2_4 in
          (((_lh_matchIdent_5 _lh_zip3_LH_C_0_5) _lh_zip3_LH_C_1_1_0) _lh_zip3_arg3_5))))) in
    (let rec _lh_zip3_LH_C_0_6 = (`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))) in
      (fun _lh_zip3_arg2_5 _lh_zip3_arg3_6 -> 
        (let rec _lh_matchIdent_6 = _lh_zip3_arg2_5 in
          (((_lh_matchIdent_6 _lh_zip3_LH_C_0_6) _lh_zip3_LH_C_1_9) _lh_zip3_arg3_6))))) in
    (let rec _lh_zip3_LH_C_0_7 = (`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_6 _lh_zip3_arg3_7 -> 
        (let rec _lh_matchIdent_7 = _lh_zip3_arg2_6 in
          (((_lh_matchIdent_7 _lh_zip3_LH_C_0_7) _lh_zip3_LH_C_1_8) _lh_zip3_arg3_7))))) in
    (let rec _lh_zip3_LH_C_0_8 = (`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_7 _lh_zip3_arg3_8 -> 
        (let rec _lh_matchIdent_8 = _lh_zip3_arg2_7 in
          (((_lh_matchIdent_8 _lh_zip3_LH_C_0_8) _lh_zip3_LH_C_1_7) _lh_zip3_arg3_8))))) in
    (let rec _lh_zip3_LH_C_0_9 = (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))) in
      (fun _lh_zip3_arg2_8 _lh_zip3_arg3_9 -> 
        (let rec _lh_matchIdent_9 = _lh_zip3_arg2_8 in
          (((_lh_matchIdent_9 _lh_zip3_LH_C_0_9) _lh_zip3_LH_C_1_6) _lh_zip3_arg3_9))))) in
    (let rec _lh_zip3_LH_C_0_1_0 = (`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_9 _lh_zip3_arg3_1_0 -> 
        (let rec _lh_matchIdent_1_0 = _lh_zip3_arg2_9 in
          (((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_1_0) _lh_zip3_LH_C_1_5) _lh_zip3_arg3_1_0))))) in
    (let rec _lh_zip3_LH_C_0_1_1 = (`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_1 -> 
        (let rec _lh_matchIdent_1_1 = _lh_zip3_arg2_1_0 in
          (((_lh_matchIdent_1_1 _lh_zip3_LH_C_0_1_1) _lh_zip3_LH_C_1_4) _lh_zip3_arg3_1_1))))) in
    (let rec _lh_zip3_LH_C_0_1_2 = (`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_2 -> 
        (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_1_1 in
          (((_lh_matchIdent_1_2 _lh_zip3_LH_C_0_1_2) _lh_zip3_LH_C_1_3) _lh_zip3_arg3_1_2))))) in
    (let rec _lh_zip3_LH_C_0_1_3 = (`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_3 -> 
        (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_1_2 in
          (((_lh_matchIdent_1_3 _lh_zip3_LH_C_0_1_3) _lh_zip3_LH_C_1_2) _lh_zip3_arg3_1_3)))));;
let rec pic__d0__d0 _lh_pic_arg1_0 =
  (_lh_pic_arg1_0 99);;
let rec take__d0__d0 n_3 ls_5 =
  (if (n_3 > 0) then
    (match ls_5 with
      | `LH_C(h_1_8, t_1_9) -> 
        (`LH_C(h_1_8, ((take__d0__d0 (n_3 - 1)) t_1_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1__d0 n_4 ls_7 =
  (if (n_4 > 0) then
    (ls_7 n_4)
  else
    (fun _lh_zip3_LH_C_0_5_2 _lh_zip3_LH_C_1_5_2 _lh_zip3_arg3_1_5 f_2_2 -> 
      (`LH_N)));;
let rec take__d2__d0 n_1 ls_2 =
  (if (n_1 > 0) then
    (match ls_2 with
      | `LH_C(h_1_2, t_1_3) -> 
        (`LH_C(h_1_2, ((take__d2__d0 (n_1 - 1)) t_1_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3__d0__d0 _lh_zip3_arg1_0 _lh_zip3_arg2_1_3 _lh_zip3_arg3_1_4 =
  (let rec _lh_matchIdent_1_4 = _lh_zip3_arg1_0 in
    ((_lh_matchIdent_1_4 _lh_zip3_arg2_1_3) _lh_zip3_arg3_1_4));;
let rec zipWith__d0__d0 f_2_4 xs_1_0 ys_2_0 =
  (match xs_1_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_2_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_2_4 hx_0) hy_0), (((zipWith__d0__d0 f_2_4) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d1__d0 f_2 xs_4 ys_1_2 =
  ((xs_4 f_2) ys_1_2);;
let rec zipWith__d2__d0 f_2_8 xs_1_2 ys_2_6 =
  ((xs_1_2 f_2_8) ys_2_6);;
let rec zipWith__d3__d0 f_4_5 xs_2_1 ys_5_0 =
  (match xs_2_1 with
    | `LH_C(hx_5, tx_5) -> 
      (match ys_5_0 with
        | `LH_C(hy_3, ty_3) -> 
          (`LH_C(((f_4_5 hx_5) hy_3), (((zipWith__d3__d0 f_4_5) tx_5) ty_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner__d0__d0 _lh_banner_arg1_0 =
  ((mappend__d2__d0 (let rec t_1 = (fun ys_1 -> 
    ys_1) in
    (let rec h_1 = ((cjustify__d0__d0 75) (string_of_int _lh_banner_arg1_0)) in
      (fun ys_2 -> 
        (let rec t_2 = ((mappend__d2__d0 t_1) ys_2) in
          (let rec h_2 = h_1 in
            (fun ys_3 -> 
              (`LH_C(h_2, ((mappend__d1_d5__d0 t_2) ys_3)))))))))) (emptyPic__d0__d0 (let rec _lh_emptyPic_LH_P2_1_0 = 75 in
    (let rec _lh_emptyPic_LH_P2_0_0 = 1 in
      (fun _lh_dummy_0 -> 
        ((copy__d2__d0 _lh_emptyPic_LH_P2_0_0) ((copy__d3__d0 _lh_emptyPic_LH_P2_1_0) ' ')))))))
and block__d0__d0 _lh_block_arg1_1 _lh_funcomp_x_2 =
  ((fun _lh_funcomp_x_3 -> 
    (stack__d0__d0 ((map__d0__d0 spread__d0__d0) _lh_funcomp_x_3))) ((groop__d0__d0 _lh_block_arg1_1) _lh_funcomp_x_2))
and block__d1__d0 _lh_block_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (stack__d1__d0 ((map__d3__d0 spread__d1__d0) _lh_funcomp_x_1))) ((groop__d1__d0 _lh_block_arg1_0) _lh_funcomp_x_0))
and body__d0__d0 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    ((block__d0__d0 3) ((map__d1__d0 (fun _lh_funcomp_x_6 -> 
      (pad__d0__d0 (pic__d0__d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) (months__d0__d0 _lh_funcomp_x_4))
and cal__d0__d0 _lh_cal_arg1_0 =
  (unlines__d0__d0 ((mappend__d1_d5__d0 (banner__d0__d0 _lh_cal_arg1_0)) (body__d0__d0 _lh_cal_arg1_0)))
and cjustify__d0__d0 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length__d0__d0 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend__d0__d0 ((mappend__d1__d0 (space__d0__d0 halfm_1)) _lh_cjustify_arg2_1)) (space__d1__d0 (m_1 - halfm_1)))))
and cjustify__d1__d0 _lh_cjustify_arg1_0 _lh_cjustify_arg2_0 =
  (let rec m_0 = (_lh_cjustify_arg1_0 - (length__d2__d0 _lh_cjustify_arg2_0)) in
    (let rec halfm_0 = (m_0 / 2) in
      ((mappend__d1_d3__d0 ((mappend__d1_d4__d0 (space__d3__d0 halfm_0)) _lh_cjustify_arg2_0)) (space__d4__d0 (m_0 - halfm_0)))))
and copy__d0__d0 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (let rec t_1_5 = ((copy__d0__d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
      (let rec h_1_4 = _lh_copy_arg2_3 in
        (fun ys_1_3 -> 
          (`LH_C(h_1_4, ((mappend__d1__d0 t_1_5) ys_1_3))))))
  else
    (fun ys_1_4 -> 
      ys_1_4))
and copy__d1_d0__d0 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (let rec t_3_9 = ((copy__d1_d0__d0 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5) in
      (let rec h_3_7 = _lh_copy_arg2_5 in
        (fun ys_2_8 -> 
          (`LH_C(h_3_7, ((mappend__d1_d1__d0 t_3_9) ys_2_8))))))
  else
    (fun ys_2_9 -> 
      ys_2_9))
and copy__d1_d1__d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec t_6 = ((copy__d1_d1__d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_6 = _lh_copy_arg2_0 in
        (fun ys_6 -> 
          (`LH_C(h_6, ((mappend__d1_d4__d0 t_6) ys_6))))))
  else
    (fun ys_7 -> 
      ys_7))
and copy__d2__d0 _lh_copy_arg1_9 _lh_copy_arg2_9 =
  (if (_lh_copy_arg1_9 > 0) then
    (let rec t_4_8 = ((copy__d2__d0 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9) in
      (let rec h_4_6 = _lh_copy_arg2_9 in
        (fun ys_4_5 -> 
          (`LH_C(h_4_6, ((mappend__d1_d5__d0 t_4_8) ys_4_5))))))
  else
    (fun ys_4_6 -> 
      ys_4_6))
and copy__d6__d0 _lh_copy_arg1_8 _lh_copy_arg2_8 =
  (if (_lh_copy_arg1_8 > 0) then
    (let rec tx_1 = ((copy__d6__d0 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8) in
      (let rec hx_1 = _lh_copy_arg2_8 in
        (fun f_3_7 ys_3_7 -> 
          (match ys_3_7 with
            | `LH_C(hy_1, ty_1) -> 
              (let rec tx_2 = (((zipWith__d2__d0 f_3_7) tx_1) ty_1) in
                (let rec hx_2 = ((f_3_7 hx_1) hy_1) in
                  (fun f_3_8 ys_3_8 -> 
                    (((ys_3_8 f_3_8) hx_2) tx_2))))
            | `LH_N -> 
              (fun f_3_9 ys_3_9 ys_4_0 -> 
                ys_4_0)))))
  else
    (fun f_4_0 ys_4_1 f_4_1 ys_4_2 ys_4_3 -> 
      ys_4_3))
and copy__d7__d0 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (if (_lh_copy_arg1_7 > 0) then
    (let rec t_4_3 = ((copy__d7__d0 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7) in
      (let rec h_4_1 = _lh_copy_arg2_7 in
        (fun ys_3_1 -> 
          (`LH_C(h_4_1, ((mappend__d7__d0 t_4_3) ys_3_1))))))
  else
    (fun ys_3_2 -> 
      ys_3_2))
and copy__d8__d0 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (let rec ty_2 = ((copy__d8__d0 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0) in
      (let rec hy_2 = _lh_copy_arg2_1_0 in
        (fun f_4_2 hx_3 tx_3 -> 
          (let rec t_4_9 = (((zipWith__d1__d0 f_4_2) tx_3) ty_2) in
            (let rec h_4_7 = ((f_4_2 hx_3) hy_2) in
              (fun ys_4_7 -> 
                (`LH_C(h_4_7, ((mappend__d5__d0 t_4_9) ys_4_7)))))))))
  else
    (fun f_4_3 hx_4 tx_4 ys_4_8 -> 
      ys_4_8))
and date__d0__d0 _lh_date_arg1_0 _lh_date_arg2_0 =
  (if ((_lh_date_arg2_0 < 1) || (_lh_date_arg1_0 < _lh_date_arg2_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0 3) (string_of_int _lh_date_arg2_0)), (`LH_N))))
and dates__d0__d0 _lh_dates_arg1_0 _lh_dates_arg2_0 =
  ((map__d4__d0 (fun d_0 -> 
    ((date__d0__d0 _lh_dates_arg2_0) d_0))) ((enumFromTo__d0__d0 (1 - _lh_dates_arg1_0)) (42 - _lh_dates_arg1_0)))
and daynames__d0__d0 =
  (let rec t_3_5 = (fun ys_2_2 -> 
    ys_2_2) in
    (let rec h_3_4 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (fun ys_2_3 -> 
        (`LH_C(h_3_4, ((mappend__d1_d2__d0 t_3_5) ys_2_3))))))
and end__d0__d0 _lh_end_arg1_0 =
  (emptyPic__d1__d0 (let rec _lh_emptyPic_LH_P2_1_2 = 25 in
    (let rec _lh_emptyPic_LH_P2_0_2 = 1 in
      (fun _lh_dummy_1_5 -> 
        ((copy__d4__d0 _lh_emptyPic_LH_P2_0_2) ((copy__d5__d0 _lh_emptyPic_LH_P2_1_2) ' '))))))
and entries__d0__d0 _lh_entries_arg1_0 _lh_entries_arg2_0 =
  ((block__d1__d0 7) ((dates__d0__d0 _lh_entries_arg1_0) _lh_entries_arg2_0))
and enumFromTo__d0__d0 a_5 b_4 =
  (if (a_5 <= b_4) then
    (let rec t_4_0 = ((enumFromTo__d0__d0 (a_5 + 1)) b_4) in
      (let rec h_3_8 = a_5 in
        (fun f_2_9 -> 
          (`LH_C((f_2_9 h_3_8), ((map__d4__d0 f_2_9) t_4_0))))))
  else
    (fun f_3_0 -> 
      (`LH_N)))
and firstDays__d0__d0 _lh_firstDays_arg1_0 =
  ((take__d1__d0 12) ((map__d2__d0 (fun a_1 -> 
    (a_1 mod 7))) (((scanl__d0__d0 (fun a_2 b_1 -> 
    (a_2 + b_1))) (jan1st__d0__d0 _lh_firstDays_arg1_0)) (monthLengths__d0__d0 _lh_firstDays_arg1_0))))
and foldr1__d0__d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr__d0__d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and foldr1__d1__d0 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (((foldr__d1__d0 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_0_0) _lh_foldr1_LH_C_1_0)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (((foldr__d2__d0 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_0_3) _lh_foldr1_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (((foldr__d3__d0 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_0_2) _lh_foldr1_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and groop__d0__d0 _lh_groop_arg1_1 _lh_groop_arg2_1 =
  (match _lh_groop_arg2_1 with
    | `LH_N -> 
      (fun f_7 -> 
        (`LH_N))
    | _ -> 
      (let rec t_2_0 = ((groop__d0__d0 _lh_groop_arg1_1) ((drop__d0__d0 _lh_groop_arg1_1) _lh_groop_arg2_1)) in
        (let rec h_1_9 = ((take__d0__d0 _lh_groop_arg1_1) _lh_groop_arg2_1) in
          (fun f_8 -> 
            (`LH_C((f_8 h_1_9), ((map__d0__d0 f_8) t_2_0)))))))
and groop__d1__d0 _lh_groop_arg1_0 _lh_groop_arg2_0 =
  (match _lh_groop_arg2_0 with
    | `LH_N -> 
      (fun f_3 -> 
        (`LH_N))
    | _ -> 
      (let rec t_1_6 = ((groop__d1__d0 _lh_groop_arg1_0) ((drop__d1__d0 _lh_groop_arg1_0) _lh_groop_arg2_0)) in
        (let rec h_1_5 = ((take__d2__d0 _lh_groop_arg1_0) _lh_groop_arg2_0) in
          (fun f_4 -> 
            (`LH_C((f_4 h_1_5), ((map__d3__d0 f_4) t_1_6)))))))
and map__d5__d0 f_3_6 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_4_3, t_4_5) -> 
      (let rec t_4_6 = ((map__d5__d0 f_3_6) t_4_5) in
        (let rec h_4_4 = (f_3_6 h_4_3) in
          (fun _lh_dummy_1_7 -> 
            ((mappend__d1_d6__d0 h_4_4) (concat__d0__d0 t_4_6)))))
    | `LH_N -> 
      (fun _lh_dummy_1_8 _lh_dummy_1_9 -> 
        0))
and mappend__d1_d7__d0 xs_1 ys_8 =
  (match xs_1 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((mappend__d1_d7__d0 t_7) ys_8) in
        (let rec h_8 = h_7 in
          (fun ys_9 -> 
            (let rec t_9 = ((mappend__d1_d6__d0 t_8) ys_9) in
              (fun _lh_dummy_1 -> 
                (1 + (length__d3__d0 t_9)))))))
    | `LH_N -> 
      ys_8)
and monthLengths__d0__d0 _lh_monthLengths_arg1_1 =
  (let rec feb_1 = (if (leap__d0__d0 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (let rec _lh_scanl_LH_C_1_0 = (let rec _lh_scanl_LH_C_1_1 = (let rec _lh_scanl_LH_C_1_2 = (let rec _lh_scanl_LH_C_1_3 = (let rec _lh_scanl_LH_C_1_4 = (let rec _lh_scanl_LH_C_1_5 = (let rec _lh_scanl_LH_C_1_6 = (let rec _lh_scanl_LH_C_1_7 = (let rec _lh_scanl_LH_C_1_8 = (let rec _lh_scanl_LH_C_1_9 = (let rec _lh_scanl_LH_C_1_1_0 = (let rec _lh_scanl_LH_C_1_1_1 = (fun _lh_scanl_arg1_1 _lh_scanl_arg2_1 f_3_2 n_5 _lh_zip3_LH_C_0_5_3 _lh_zip3_LH_C_1_5_3 _lh_zip3_arg3_1_6 f_3_3 -> 
      (`LH_N)) in
      (let rec _lh_scanl_LH_C_0_0 = 31 in
        (fun _lh_scanl_arg1_2 _lh_scanl_arg2_2 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_2) ((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_1_1)))) in
      (let rec _lh_scanl_LH_C_0_1 = 30 in
        (fun _lh_scanl_arg1_3 _lh_scanl_arg2_3 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_3) ((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_1_0)))) in
      (let rec _lh_scanl_LH_C_0_2 = 31 in
        (fun _lh_scanl_arg1_4 _lh_scanl_arg2_4 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_4) ((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_2)) _lh_scanl_LH_C_1_9)))) in
      (let rec _lh_scanl_LH_C_0_3 = 30 in
        (fun _lh_scanl_arg1_5 _lh_scanl_arg2_5 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_5) ((_lh_scanl_arg1_5 _lh_scanl_arg2_5) _lh_scanl_LH_C_0_3)) _lh_scanl_LH_C_1_8)))) in
      (let rec _lh_scanl_LH_C_0_4 = 31 in
        (fun _lh_scanl_arg1_6 _lh_scanl_arg2_6 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_6) ((_lh_scanl_arg1_6 _lh_scanl_arg2_6) _lh_scanl_LH_C_0_4)) _lh_scanl_LH_C_1_7)))) in
      (let rec _lh_scanl_LH_C_0_5 = 31 in
        (fun _lh_scanl_arg1_7 _lh_scanl_arg2_7 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_7) ((_lh_scanl_arg1_7 _lh_scanl_arg2_7) _lh_scanl_LH_C_0_5)) _lh_scanl_LH_C_1_6)))) in
      (let rec _lh_scanl_LH_C_0_6 = 30 in
        (fun _lh_scanl_arg1_8 _lh_scanl_arg2_8 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_8) ((_lh_scanl_arg1_8 _lh_scanl_arg2_8) _lh_scanl_LH_C_0_6)) _lh_scanl_LH_C_1_5)))) in
      (let rec _lh_scanl_LH_C_0_7 = 31 in
        (fun _lh_scanl_arg1_9 _lh_scanl_arg2_9 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_9) ((_lh_scanl_arg1_9 _lh_scanl_arg2_9) _lh_scanl_LH_C_0_7)) _lh_scanl_LH_C_1_4)))) in
      (let rec _lh_scanl_LH_C_0_8 = 30 in
        (fun _lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_1_0) ((_lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0) _lh_scanl_LH_C_0_8)) _lh_scanl_LH_C_1_3)))) in
      (let rec _lh_scanl_LH_C_0_9 = 31 in
        (fun _lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_1_1) ((_lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1) _lh_scanl_LH_C_0_9)) _lh_scanl_LH_C_1_2)))) in
      (let rec _lh_scanl_LH_C_0_1_0 = feb_1 in
        (fun _lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_1_2) ((_lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2) _lh_scanl_LH_C_0_1_0)) _lh_scanl_LH_C_1_1)))) in
      (let rec _lh_scanl_LH_C_0_1_1 = 31 in
        (fun _lh_scanl_arg1_1_3 _lh_scanl_arg2_1_3 -> 
          (((scanl__d0__d0 _lh_scanl_arg1_1_3) ((_lh_scanl_arg1_1_3 _lh_scanl_arg2_1_3) _lh_scanl_LH_C_0_1_1)) _lh_scanl_LH_C_1_0)))))
and monthLengths__d1__d0 _lh_monthLengths_arg1_0 =
  (let rec feb_0 = (if (leap__d1__d0 _lh_monthLengths_arg1_0) then
    29
  else
    28) in
    (let rec _lh_zip3_LH_C_1_1_4 = (let rec _lh_zip3_LH_C_1_1_5 = (let rec _lh_zip3_LH_C_1_1_6 = (let rec _lh_zip3_LH_C_1_1_7 = (let rec _lh_zip3_LH_C_1_1_8 = (let rec _lh_zip3_LH_C_1_1_9 = (let rec _lh_zip3_LH_C_1_2_0 = (let rec _lh_zip3_LH_C_1_2_1 = (let rec _lh_zip3_LH_C_1_2_2 = (let rec _lh_zip3_LH_C_1_2_3 = (let rec _lh_zip3_LH_C_1_2_4 = (let rec _lh_zip3_LH_C_1_2_5 = (fun _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_0_1_5 _lh_zip3_LH_C_1_2_6 _lh_zip3_LH_C_1_2_7 f_9 -> 
      (`LH_N)) in
      (let rec _lh_zip3_LH_C_0_1_6 = 31 in
        (fun _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_0_1_8 _lh_zip3_LH_C_1_2_8 _lh_zip3_LH_C_1_2_9 -> 
          (let rec t_2_1 = (((zip3__d0__d0 _lh_zip3_LH_C_1_2_8) _lh_zip3_LH_C_1_2_9) _lh_zip3_LH_C_1_2_5) in
            (let rec h_2_0 = (let rec _lh_pic_LH_P3_2_0 = _lh_zip3_LH_C_0_1_6 in
              (let rec _lh_pic_LH_P3_1_0 = _lh_zip3_LH_C_0_1_8 in
                (let rec _lh_pic_LH_P3_0_0 = _lh_zip3_LH_C_0_1_7 in
                  (fun _lh_dummy_3 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_0)) ((table__d0__d0 _lh_pic_LH_P3_1_0) _lh_pic_LH_P3_2_0)))))) in
              (fun f_1_0 -> 
                (`LH_C((f_1_0 h_2_0), ((map__d1__d0 f_1_0) t_2_1))))))))) in
      (let rec _lh_zip3_LH_C_0_1_9 = 30 in
        (fun _lh_zip3_LH_C_0_2_0 _lh_zip3_LH_C_0_2_1 _lh_zip3_LH_C_1_3_0 _lh_zip3_LH_C_1_3_1 -> 
          (let rec t_2_2 = (((zip3__d0__d0 _lh_zip3_LH_C_1_3_0) _lh_zip3_LH_C_1_3_1) _lh_zip3_LH_C_1_2_4) in
            (let rec h_2_1 = (let rec _lh_pic_LH_P3_2_1 = _lh_zip3_LH_C_0_1_9 in
              (let rec _lh_pic_LH_P3_1_1 = _lh_zip3_LH_C_0_2_1 in
                (let rec _lh_pic_LH_P3_0_1 = _lh_zip3_LH_C_0_2_0 in
                  (fun _lh_dummy_4 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_1)) ((table__d0__d0 _lh_pic_LH_P3_1_1) _lh_pic_LH_P3_2_1)))))) in
              (fun f_1_1 -> 
                (`LH_C((f_1_1 h_2_1), ((map__d1__d0 f_1_1) t_2_2))))))))) in
      (let rec _lh_zip3_LH_C_0_2_2 = 31 in
        (fun _lh_zip3_LH_C_0_2_3 _lh_zip3_LH_C_0_2_4 _lh_zip3_LH_C_1_3_2 _lh_zip3_LH_C_1_3_3 -> 
          (let rec t_2_3 = (((zip3__d0__d0 _lh_zip3_LH_C_1_3_2) _lh_zip3_LH_C_1_3_3) _lh_zip3_LH_C_1_2_3) in
            (let rec h_2_2 = (let rec _lh_pic_LH_P3_2_2 = _lh_zip3_LH_C_0_2_2 in
              (let rec _lh_pic_LH_P3_1_2 = _lh_zip3_LH_C_0_2_4 in
                (let rec _lh_pic_LH_P3_0_2 = _lh_zip3_LH_C_0_2_3 in
                  (fun _lh_dummy_5 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_2)) ((table__d0__d0 _lh_pic_LH_P3_1_2) _lh_pic_LH_P3_2_2)))))) in
              (fun f_1_2 -> 
                (`LH_C((f_1_2 h_2_2), ((map__d1__d0 f_1_2) t_2_3))))))))) in
      (let rec _lh_zip3_LH_C_0_2_5 = 30 in
        (fun _lh_zip3_LH_C_0_2_6 _lh_zip3_LH_C_0_2_7 _lh_zip3_LH_C_1_3_4 _lh_zip3_LH_C_1_3_5 -> 
          (let rec t_2_4 = (((zip3__d0__d0 _lh_zip3_LH_C_1_3_4) _lh_zip3_LH_C_1_3_5) _lh_zip3_LH_C_1_2_2) in
            (let rec h_2_3 = (let rec _lh_pic_LH_P3_2_3 = _lh_zip3_LH_C_0_2_5 in
              (let rec _lh_pic_LH_P3_1_3 = _lh_zip3_LH_C_0_2_7 in
                (let rec _lh_pic_LH_P3_0_3 = _lh_zip3_LH_C_0_2_6 in
                  (fun _lh_dummy_6 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_3)) ((table__d0__d0 _lh_pic_LH_P3_1_3) _lh_pic_LH_P3_2_3)))))) in
              (fun f_1_3 -> 
                (`LH_C((f_1_3 h_2_3), ((map__d1__d0 f_1_3) t_2_4))))))))) in
      (let rec _lh_zip3_LH_C_0_2_8 = 31 in
        (fun _lh_zip3_LH_C_0_2_9 _lh_zip3_LH_C_0_3_0 _lh_zip3_LH_C_1_3_6 _lh_zip3_LH_C_1_3_7 -> 
          (let rec t_2_5 = (((zip3__d0__d0 _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_3_7) _lh_zip3_LH_C_1_2_1) in
            (let rec h_2_4 = (let rec _lh_pic_LH_P3_2_4 = _lh_zip3_LH_C_0_2_8 in
              (let rec _lh_pic_LH_P3_1_4 = _lh_zip3_LH_C_0_3_0 in
                (let rec _lh_pic_LH_P3_0_4 = _lh_zip3_LH_C_0_2_9 in
                  (fun _lh_dummy_7 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_4)) ((table__d0__d0 _lh_pic_LH_P3_1_4) _lh_pic_LH_P3_2_4)))))) in
              (fun f_1_4 -> 
                (`LH_C((f_1_4 h_2_4), ((map__d1__d0 f_1_4) t_2_5))))))))) in
      (let rec _lh_zip3_LH_C_0_3_1 = 31 in
        (fun _lh_zip3_LH_C_0_3_2 _lh_zip3_LH_C_0_3_3 _lh_zip3_LH_C_1_3_8 _lh_zip3_LH_C_1_3_9 -> 
          (let rec t_2_6 = (((zip3__d0__d0 _lh_zip3_LH_C_1_3_8) _lh_zip3_LH_C_1_3_9) _lh_zip3_LH_C_1_2_0) in
            (let rec h_2_5 = (let rec _lh_pic_LH_P3_2_5 = _lh_zip3_LH_C_0_3_1 in
              (let rec _lh_pic_LH_P3_1_5 = _lh_zip3_LH_C_0_3_3 in
                (let rec _lh_pic_LH_P3_0_5 = _lh_zip3_LH_C_0_3_2 in
                  (fun _lh_dummy_8 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_5)) ((table__d0__d0 _lh_pic_LH_P3_1_5) _lh_pic_LH_P3_2_5)))))) in
              (fun f_1_5 -> 
                (`LH_C((f_1_5 h_2_5), ((map__d1__d0 f_1_5) t_2_6))))))))) in
      (let rec _lh_zip3_LH_C_0_3_4 = 30 in
        (fun _lh_zip3_LH_C_0_3_5 _lh_zip3_LH_C_0_3_6 _lh_zip3_LH_C_1_4_0 _lh_zip3_LH_C_1_4_1 -> 
          (let rec t_2_7 = (((zip3__d0__d0 _lh_zip3_LH_C_1_4_0) _lh_zip3_LH_C_1_4_1) _lh_zip3_LH_C_1_1_9) in
            (let rec h_2_6 = (let rec _lh_pic_LH_P3_2_6 = _lh_zip3_LH_C_0_3_4 in
              (let rec _lh_pic_LH_P3_1_6 = _lh_zip3_LH_C_0_3_6 in
                (let rec _lh_pic_LH_P3_0_6 = _lh_zip3_LH_C_0_3_5 in
                  (fun _lh_dummy_9 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_6)) ((table__d0__d0 _lh_pic_LH_P3_1_6) _lh_pic_LH_P3_2_6)))))) in
              (fun f_1_6 -> 
                (`LH_C((f_1_6 h_2_6), ((map__d1__d0 f_1_6) t_2_7))))))))) in
      (let rec _lh_zip3_LH_C_0_3_7 = 31 in
        (fun _lh_zip3_LH_C_0_3_8 _lh_zip3_LH_C_0_3_9 _lh_zip3_LH_C_1_4_2 _lh_zip3_LH_C_1_4_3 -> 
          (let rec t_2_8 = (((zip3__d0__d0 _lh_zip3_LH_C_1_4_2) _lh_zip3_LH_C_1_4_3) _lh_zip3_LH_C_1_1_8) in
            (let rec h_2_7 = (let rec _lh_pic_LH_P3_2_7 = _lh_zip3_LH_C_0_3_7 in
              (let rec _lh_pic_LH_P3_1_7 = _lh_zip3_LH_C_0_3_9 in
                (let rec _lh_pic_LH_P3_0_7 = _lh_zip3_LH_C_0_3_8 in
                  (fun _lh_dummy_1_0 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_7)) ((table__d0__d0 _lh_pic_LH_P3_1_7) _lh_pic_LH_P3_2_7)))))) in
              (fun f_1_7 -> 
                (`LH_C((f_1_7 h_2_7), ((map__d1__d0 f_1_7) t_2_8))))))))) in
      (let rec _lh_zip3_LH_C_0_4_0 = 30 in
        (fun _lh_zip3_LH_C_0_4_1 _lh_zip3_LH_C_0_4_2 _lh_zip3_LH_C_1_4_4 _lh_zip3_LH_C_1_4_5 -> 
          (let rec t_2_9 = (((zip3__d0__d0 _lh_zip3_LH_C_1_4_4) _lh_zip3_LH_C_1_4_5) _lh_zip3_LH_C_1_1_7) in
            (let rec h_2_8 = (let rec _lh_pic_LH_P3_2_8 = _lh_zip3_LH_C_0_4_0 in
              (let rec _lh_pic_LH_P3_1_8 = _lh_zip3_LH_C_0_4_2 in
                (let rec _lh_pic_LH_P3_0_8 = _lh_zip3_LH_C_0_4_1 in
                  (fun _lh_dummy_1_1 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_8)) ((table__d0__d0 _lh_pic_LH_P3_1_8) _lh_pic_LH_P3_2_8)))))) in
              (fun f_1_8 -> 
                (`LH_C((f_1_8 h_2_8), ((map__d1__d0 f_1_8) t_2_9))))))))) in
      (let rec _lh_zip3_LH_C_0_4_3 = 31 in
        (fun _lh_zip3_LH_C_0_4_4 _lh_zip3_LH_C_0_4_5 _lh_zip3_LH_C_1_4_6 _lh_zip3_LH_C_1_4_7 -> 
          (let rec t_3_0 = (((zip3__d0__d0 _lh_zip3_LH_C_1_4_6) _lh_zip3_LH_C_1_4_7) _lh_zip3_LH_C_1_1_6) in
            (let rec h_2_9 = (let rec _lh_pic_LH_P3_2_9 = _lh_zip3_LH_C_0_4_3 in
              (let rec _lh_pic_LH_P3_1_9 = _lh_zip3_LH_C_0_4_5 in
                (let rec _lh_pic_LH_P3_0_9 = _lh_zip3_LH_C_0_4_4 in
                  (fun _lh_dummy_1_2 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_9)) ((table__d0__d0 _lh_pic_LH_P3_1_9) _lh_pic_LH_P3_2_9)))))) in
              (fun f_1_9 -> 
                (`LH_C((f_1_9 h_2_9), ((map__d1__d0 f_1_9) t_3_0))))))))) in
      (let rec _lh_zip3_LH_C_0_4_6 = feb_0 in
        (fun _lh_zip3_LH_C_0_4_7 _lh_zip3_LH_C_0_4_8 _lh_zip3_LH_C_1_4_8 _lh_zip3_LH_C_1_4_9 -> 
          (let rec t_3_1 = (((zip3__d0__d0 _lh_zip3_LH_C_1_4_8) _lh_zip3_LH_C_1_4_9) _lh_zip3_LH_C_1_1_5) in
            (let rec h_3_0 = (let rec _lh_pic_LH_P3_2_1_0 = _lh_zip3_LH_C_0_4_6 in
              (let rec _lh_pic_LH_P3_1_1_0 = _lh_zip3_LH_C_0_4_8 in
                (let rec _lh_pic_LH_P3_0_1_0 = _lh_zip3_LH_C_0_4_7 in
                  (fun _lh_dummy_1_3 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_1_0)) ((table__d0__d0 _lh_pic_LH_P3_1_1_0) _lh_pic_LH_P3_2_1_0)))))) in
              (fun f_2_0 -> 
                (`LH_C((f_2_0 h_3_0), ((map__d1__d0 f_2_0) t_3_1))))))))) in
      (let rec _lh_zip3_LH_C_0_4_9 = 31 in
        (fun _lh_zip3_LH_C_0_5_0 _lh_zip3_LH_C_0_5_1 _lh_zip3_LH_C_1_5_0 _lh_zip3_LH_C_1_5_1 -> 
          (let rec t_3_2 = (((zip3__d0__d0 _lh_zip3_LH_C_1_5_0) _lh_zip3_LH_C_1_5_1) _lh_zip3_LH_C_1_1_4) in
            (let rec h_3_1 = (let rec _lh_pic_LH_P3_2_1_1 = _lh_zip3_LH_C_0_4_9 in
              (let rec _lh_pic_LH_P3_1_1_1 = _lh_zip3_LH_C_0_5_1 in
                (let rec _lh_pic_LH_P3_0_1_1 = _lh_zip3_LH_C_0_5_0 in
                  (fun _lh_dummy_1_4 -> 
                    ((mappend__d8__d0 (title__d0__d0 _lh_pic_LH_P3_0_1_1)) ((table__d0__d0 _lh_pic_LH_P3_1_1_1) _lh_pic_LH_P3_2_1_1)))))) in
              (fun f_2_1 -> 
                (`LH_C((f_2_1 h_3_1), ((map__d1__d0 f_2_1) t_3_2))))))))))
and months__d0__d0 _lh_months_arg1_0 =
  (((zip3__d0__d0 monthNames__d0__d0) (firstDays__d0__d0 _lh_months_arg1_0)) (monthLengths__d1__d0 _lh_months_arg1_0))
and pad__d0__d0 _lh_pad_arg1_0 =
  ((mappend__d5__d0 (((zipWith__d1__d0 mappend__d6__d0) (((zipWith__d2__d0 mappend__d7__d0) (side__d0__d0 0)) _lh_pad_arg1_0)) (side__d1__d0 0))) (end__d0__d0 0))
and rjustify__d0__d0 _lh_rjustify_arg1_0 _lh_rjustify_arg2_0 =
  ((mappend__d1_d1__d0 (space__d2__d0 (_lh_rjustify_arg1_0 - (length__d1__d0 _lh_rjustify_arg2_0)))) _lh_rjustify_arg2_0)
and scanl__d0__d0 _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (let rec t_3 = (let rec _lh_matchIdent_0 = _lh_scanl_arg3_0 in
    ((_lh_matchIdent_0 _lh_scanl_arg1_0) _lh_scanl_arg2_0)) in
    (let rec h_3 = _lh_scanl_arg2_0 in
      (fun f_0 -> 
        (let rec t_4 = ((map__d2__d0 f_0) t_3) in
          (let rec h_4 = (f_0 h_3) in
            (fun n_0 -> 
              (let rec _lh_zip3_LH_C_1_0 = ((take__d1__d0 (n_0 - 1)) t_4) in
                (let rec _lh_zip3_LH_C_0_0 = h_4 in
                  (fun _lh_zip3_LH_C_0_1 _lh_zip3_LH_C_1_1 _lh_zip3_arg3_0 -> 
                    (let rec _lh_matchIdent_1 = _lh_zip3_arg3_0 in
                      ((((_lh_matchIdent_1 _lh_zip3_LH_C_0_1) _lh_zip3_LH_C_0_0) _lh_zip3_LH_C_1_1) _lh_zip3_LH_C_1_0)))))))))))
and side__d0__d0 _lh_side_arg1_1 =
  (emptyPic__d2__d0 (let rec _lh_emptyPic_LH_P2_1_3 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_3 = 8 in
      (fun _lh_dummy_2_0 -> 
        ((copy__d6__d0 _lh_emptyPic_LH_P2_0_3) ((copy__d7__d0 _lh_emptyPic_LH_P2_1_3) ' '))))))
and side__d1__d0 _lh_side_arg1_0 =
  (emptyPic__d3__d0 (let rec _lh_emptyPic_LH_P2_1_1 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_1 = 8 in
      (fun _lh_dummy_2 -> 
        ((copy__d8__d0 _lh_emptyPic_LH_P2_0_1) ((copy__d9__d0 _lh_emptyPic_LH_P2_1_1) ' '))))))
and space__d0__d0 _lh_space_arg1_2 =
  ((copy__d0__d0 _lh_space_arg1_2) ' ')
and space__d1__d0 _lh_space_arg1_1 =
  ((copy__d1__d0 _lh_space_arg1_1) ' ')
and space__d2__d0 _lh_space_arg1_0 =
  ((copy__d1_d0__d0 _lh_space_arg1_0) ' ')
and space__d3__d0 _lh_space_arg1_3 =
  ((copy__d1_d1__d0 _lh_space_arg1_3) ' ')
and space__d4__d0 _lh_space_arg1_4 =
  ((copy__d1_d2__d0 _lh_space_arg1_4) ' ')
and spread__d0__d0 _lh_spread_arg1_1 =
  ((foldr1__d0__d0 (fun a_7 b_6 -> 
    (((zipWith__d0__d0 mappend__d3__d0) a_7) b_6))) _lh_spread_arg1_1)
and spread__d1__d0 _lh_spread_arg1_0 =
  ((foldr1__d2__d0 (fun a_6 b_5 -> 
    (((zipWith__d3__d0 mappend__d9__d0) a_6) b_5))) _lh_spread_arg1_0)
and stack__d0__d0 _lh_stack_arg1_0 =
  ((foldr1__d1__d0 (fun a_0 b_0 -> 
    ((mappend__d4__d0 a_0) b_0))) _lh_stack_arg1_0)
and stack__d1__d0 _lh_stack_arg1_1 =
  ((foldr1__d3__d0 (fun a_4 b_3 -> 
    ((mappend__d1_d0__d0 a_4) b_3))) _lh_stack_arg1_1)
and table__d0__d0 _lh_table_arg1_0 _lh_table_arg2_0 =
  ((mappend__d1_d2__d0 daynames__d0__d0) ((entries__d0__d0 _lh_table_arg1_0) _lh_table_arg2_0))
and testCalendar_nofib__d0__d0 _lh_testCalendar_nofib_arg1_0 =
  ((map__d6__d0 (fun n_2 -> 
    (length__d3__d0 (cal__d0__d0 n_2)))) ((enumFromTo__d1__d0 2008) (2008 + _lh_testCalendar_nofib_arg1_0)))
and title__d0__d0 _lh_title_arg1_0 =
  (let rec t_5 = (fun ys_4 -> 
    ys_4) in
    (let rec h_5 = ((cjustify__d1__d0 21) _lh_title_arg1_0) in
      (fun ys_5 -> 
        (`LH_C(h_5, ((mappend__d8__d0 t_5) ys_5))))))
and unlines__d0__d0 _lh_unlines_arg1_0 =
  (concat__d0__d0 ((map__d5__d0 (fun l_0 -> 
    ((mappend__d1_d7__d0 l_0) (let rec t_3_7 = (fun ys_2_4 -> 
      ys_2_4) in
      (let rec h_3_6 = 'n' in
        (fun ys_2_5 -> 
          (let rec t_3_8 = ((mappend__d1_d6__d0 t_3_7) ys_2_5) in
            (fun _lh_dummy_1_6 -> 
              (1 + (length__d3__d0 t_3_8)))))))))) _lh_unlines_arg1_0));;

(* lumberhack_pop_out *)
let rec concat__d0__d0__d0 lss_1 =
  (lss_1 99);;
let rec concat__d0__d0__d1 lss_2 =
  (lss_2 99);;
let rec copy__d1__d0__d0 _lh_copy_arg1_1_4 _lh_copy_arg2_1_4 =
  (if (_lh_copy_arg1_1_4 > 0) then
    (`LH_C(_lh_copy_arg2_1_4, ((copy__d1__d0__d0 (_lh_copy_arg1_1_4 - 1)) _lh_copy_arg2_1_4)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d0 _lh_copy_arg1_2_6 _lh_copy_arg2_2_6 =
  (if (_lh_copy_arg1_2_6 > 0) then
    (`LH_C(_lh_copy_arg2_2_6, ((copy__d1_d2__d0__d0 (_lh_copy_arg1_2_6 - 1)) _lh_copy_arg2_2_6)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d1 _lh_copy_arg1_3_5 _lh_copy_arg2_3_5 =
  (if (_lh_copy_arg1_3_5 > 0) then
    (`LH_C(_lh_copy_arg2_3_5, ((copy__d1_d2__d0__d1 (_lh_copy_arg1_3_5 - 1)) _lh_copy_arg2_3_5)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d1_d0 _lh_copy_arg1_1_8 _lh_copy_arg2_1_8 =
  (if (_lh_copy_arg1_1_8 > 0) then
    (`LH_C(_lh_copy_arg2_1_8, ((copy__d1_d2__d0__d1_d0 (_lh_copy_arg1_1_8 - 1)) _lh_copy_arg2_1_8)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d1_d1 _lh_copy_arg1_5_8 _lh_copy_arg2_5_8 =
  (if (_lh_copy_arg1_5_8 > 0) then
    (`LH_C(_lh_copy_arg2_5_8, ((copy__d1_d2__d0__d1_d1 (_lh_copy_arg1_5_8 - 1)) _lh_copy_arg2_5_8)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d2 _lh_copy_arg1_2_5 _lh_copy_arg2_2_5 =
  (if (_lh_copy_arg1_2_5 > 0) then
    (`LH_C(_lh_copy_arg2_2_5, ((copy__d1_d2__d0__d2 (_lh_copy_arg1_2_5 - 1)) _lh_copy_arg2_2_5)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d3 _lh_copy_arg1_4_1 _lh_copy_arg2_4_1 =
  (if (_lh_copy_arg1_4_1 > 0) then
    (`LH_C(_lh_copy_arg2_4_1, ((copy__d1_d2__d0__d3 (_lh_copy_arg1_4_1 - 1)) _lh_copy_arg2_4_1)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d4 _lh_copy_arg1_3_2 _lh_copy_arg2_3_2 =
  (if (_lh_copy_arg1_3_2 > 0) then
    (`LH_C(_lh_copy_arg2_3_2, ((copy__d1_d2__d0__d4 (_lh_copy_arg1_3_2 - 1)) _lh_copy_arg2_3_2)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d5 _lh_copy_arg1_5_6 _lh_copy_arg2_5_6 =
  (if (_lh_copy_arg1_5_6 > 0) then
    (`LH_C(_lh_copy_arg2_5_6, ((copy__d1_d2__d0__d5 (_lh_copy_arg1_5_6 - 1)) _lh_copy_arg2_5_6)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d6 _lh_copy_arg1_4_0 _lh_copy_arg2_4_0 =
  (if (_lh_copy_arg1_4_0 > 0) then
    (`LH_C(_lh_copy_arg2_4_0, ((copy__d1_d2__d0__d6 (_lh_copy_arg1_4_0 - 1)) _lh_copy_arg2_4_0)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d7 _lh_copy_arg1_3_0 _lh_copy_arg2_3_0 =
  (if (_lh_copy_arg1_3_0 > 0) then
    (`LH_C(_lh_copy_arg2_3_0, ((copy__d1_d2__d0__d7 (_lh_copy_arg1_3_0 - 1)) _lh_copy_arg2_3_0)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d8 _lh_copy_arg1_5_5 _lh_copy_arg2_5_5 =
  (if (_lh_copy_arg1_5_5 > 0) then
    (`LH_C(_lh_copy_arg2_5_5, ((copy__d1_d2__d0__d8 (_lh_copy_arg1_5_5 - 1)) _lh_copy_arg2_5_5)))
  else
    (`LH_N));;
let rec copy__d1_d2__d0__d9 _lh_copy_arg1_4_4 _lh_copy_arg2_4_4 =
  (if (_lh_copy_arg1_4_4 > 0) then
    (`LH_C(_lh_copy_arg2_4_4, ((copy__d1_d2__d0__d9 (_lh_copy_arg1_4_4 - 1)) _lh_copy_arg2_4_4)))
  else
    (`LH_N));;
let rec copy__d3__d0__d0 _lh_copy_arg1_1_5 _lh_copy_arg2_1_5 =
  (if (_lh_copy_arg1_1_5 > 0) then
    (`LH_C(_lh_copy_arg2_1_5, ((copy__d3__d0__d0 (_lh_copy_arg1_1_5 - 1)) _lh_copy_arg2_1_5)))
  else
    (`LH_N));;
let rec copy__d4__d0__d0 _lh_copy_arg1_1_7 _lh_copy_arg2_1_7 =
  (if (_lh_copy_arg1_1_7 > 0) then
    (`LH_C(_lh_copy_arg2_1_7, ((copy__d4__d0__d0 (_lh_copy_arg1_1_7 - 1)) _lh_copy_arg2_1_7)))
  else
    (`LH_N));;
let rec copy__d5__d0__d0 _lh_copy_arg1_3_7 _lh_copy_arg2_3_7 =
  (if (_lh_copy_arg1_3_7 > 0) then
    (`LH_C(_lh_copy_arg2_3_7, ((copy__d5__d0__d0 (_lh_copy_arg1_3_7 - 1)) _lh_copy_arg2_3_7)))
  else
    (`LH_N));;
let rec copy__d9__d0__d0 _lh_copy_arg1_1_3 _lh_copy_arg2_1_3 =
  (if (_lh_copy_arg1_1_3 > 0) then
    (`LH_C(_lh_copy_arg2_1_3, ((copy__d9__d0__d0 (_lh_copy_arg1_1_3 - 1)) _lh_copy_arg2_1_3)))
  else
    (`LH_N));;
let rec drop__d0__d0__d0 _lh_drop_arg1_4 _lh_drop_arg2_4 =
  (match _lh_drop_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_4, _lh_drop_LH_C_1_4) -> 
      (if (_lh_drop_arg1_4 > 0) then
        ((drop__d0__d0__d0 (_lh_drop_arg1_4 - 1)) _lh_drop_LH_C_1_4)
      else
        _lh_drop_LH_C_1_4)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d0 _lh_drop_arg1_1_1 _lh_drop_arg2_1_1 =
  (match _lh_drop_arg2_1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_1, _lh_drop_LH_C_1_1_1) -> 
      (if (_lh_drop_arg1_1_1 > 0) then
        ((drop__d1__d0__d0 (_lh_drop_arg1_1_1 - 1)) _lh_drop_LH_C_1_1_1)
      else
        _lh_drop_LH_C_1_1_1)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d1 _lh_drop_arg1_3 _lh_drop_arg2_3 =
  (match _lh_drop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_3, _lh_drop_LH_C_1_3) -> 
      (if (_lh_drop_arg1_3 > 0) then
        ((drop__d1__d0__d1 (_lh_drop_arg1_3 - 1)) _lh_drop_LH_C_1_3)
      else
        _lh_drop_LH_C_1_3)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d1_d0 _lh_drop_arg1_9 _lh_drop_arg2_9 =
  (match _lh_drop_arg2_9 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_9, _lh_drop_LH_C_1_9) -> 
      (if (_lh_drop_arg1_9 > 0) then
        ((drop__d1__d0__d1_d0 (_lh_drop_arg1_9 - 1)) _lh_drop_LH_C_1_9)
      else
        _lh_drop_LH_C_1_9)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d1_d1 _lh_drop_arg1_5 _lh_drop_arg2_5 =
  (match _lh_drop_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_5, _lh_drop_LH_C_1_5) -> 
      (if (_lh_drop_arg1_5 > 0) then
        ((drop__d1__d0__d1_d1 (_lh_drop_arg1_5 - 1)) _lh_drop_LH_C_1_5)
      else
        _lh_drop_LH_C_1_5)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d2 _lh_drop_arg1_6 _lh_drop_arg2_6 =
  (match _lh_drop_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_6, _lh_drop_LH_C_1_6) -> 
      (if (_lh_drop_arg1_6 > 0) then
        ((drop__d1__d0__d2 (_lh_drop_arg1_6 - 1)) _lh_drop_LH_C_1_6)
      else
        _lh_drop_LH_C_1_6)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d3 _lh_drop_arg1_8 _lh_drop_arg2_8 =
  (match _lh_drop_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_8, _lh_drop_LH_C_1_8) -> 
      (if (_lh_drop_arg1_8 > 0) then
        ((drop__d1__d0__d3 (_lh_drop_arg1_8 - 1)) _lh_drop_LH_C_1_8)
      else
        _lh_drop_LH_C_1_8)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d4 _lh_drop_arg1_1_2 _lh_drop_arg2_1_2 =
  (match _lh_drop_arg2_1_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_2, _lh_drop_LH_C_1_1_2) -> 
      (if (_lh_drop_arg1_1_2 > 0) then
        ((drop__d1__d0__d4 (_lh_drop_arg1_1_2 - 1)) _lh_drop_LH_C_1_1_2)
      else
        _lh_drop_LH_C_1_1_2)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d5 _lh_drop_arg1_2 _lh_drop_arg2_2 =
  (match _lh_drop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_2, _lh_drop_LH_C_1_2) -> 
      (if (_lh_drop_arg1_2 > 0) then
        ((drop__d1__d0__d5 (_lh_drop_arg1_2 - 1)) _lh_drop_LH_C_1_2)
      else
        _lh_drop_LH_C_1_2)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d6 _lh_drop_arg1_1_0 _lh_drop_arg2_1_0 =
  (match _lh_drop_arg2_1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_0, _lh_drop_LH_C_1_1_0) -> 
      (if (_lh_drop_arg1_1_0 > 0) then
        ((drop__d1__d0__d6 (_lh_drop_arg1_1_0 - 1)) _lh_drop_LH_C_1_1_0)
      else
        _lh_drop_LH_C_1_1_0)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d7 _lh_drop_arg1_1_4 _lh_drop_arg2_1_4 =
  (match _lh_drop_arg2_1_4 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_4, _lh_drop_LH_C_1_1_4) -> 
      (if (_lh_drop_arg1_1_4 > 0) then
        ((drop__d1__d0__d7 (_lh_drop_arg1_1_4 - 1)) _lh_drop_LH_C_1_1_4)
      else
        _lh_drop_LH_C_1_1_4)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d8 _lh_drop_arg1_7 _lh_drop_arg2_7 =
  (match _lh_drop_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_7, _lh_drop_LH_C_1_7) -> 
      (if (_lh_drop_arg1_7 > 0) then
        ((drop__d1__d0__d8 (_lh_drop_arg1_7 - 1)) _lh_drop_LH_C_1_7)
      else
        _lh_drop_LH_C_1_7)
    | _ -> 
      (failwith "error"));;
let rec drop__d1__d0__d9 _lh_drop_arg1_1_3 _lh_drop_arg2_1_3 =
  (match _lh_drop_arg2_1_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1_3, _lh_drop_LH_C_1_1_3) -> 
      (if (_lh_drop_arg1_1_3 > 0) then
        ((drop__d1__d0__d9 (_lh_drop_arg1_1_3 - 1)) _lh_drop_LH_C_1_1_3)
      else
        _lh_drop_LH_C_1_1_3)
    | _ -> 
      (failwith "error"));;
let rec emptyPic__d0__d0__d0 _lh_emptyPic_arg1_6 =
  (_lh_emptyPic_arg1_6 99);;
let rec emptyPic__d1__d0__d0 _lh_emptyPic_arg1_7 =
  (_lh_emptyPic_arg1_7 99);;
let rec emptyPic__d2__d0__d0 _lh_emptyPic_arg1_4 =
  (_lh_emptyPic_arg1_4 99);;
let rec emptyPic__d3__d0__d0 _lh_emptyPic_arg1_5 =
  (_lh_emptyPic_arg1_5 99);;
let rec enumFromTo__d1__d0__d0 a_3_5 b_3_4 =
  (if (a_3_5 <= b_3_4) then
    (`LH_C(a_3_5, ((enumFromTo__d1__d0__d0 (a_3_5 + 1)) b_3_4)))
  else
    (`LH_N));;
let rec foldr__d0__d0__d0 f_1_9_7 i_2_3 ls_1_3_0 =
  (match ls_1_3_0 with
    | `LH_C(h_2_1_6, t_2_1_9) -> 
      ((f_1_9_7 h_2_1_6) (((foldr__d0__d0__d0 f_1_9_7) i_2_3) t_2_1_9))
    | `LH_N -> 
      i_2_3);;
let rec foldr__d1__d0__d0 f_4_9 i_4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_5_0, t_5_2) -> 
      ((f_4_9 h_5_0) (((foldr__d1__d0__d0 f_4_9) i_4) t_5_2))
    | `LH_N -> 
      i_4);;
let rec foldr__d2__d0__d0 f_9_3 i_1_0 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_9_7, t_1_0_0) -> 
      ((f_9_3 h_9_7) (((foldr__d2__d0__d0 f_9_3) i_1_0) t_1_0_0))
    | `LH_N -> 
      i_1_0);;
let rec foldr__d2__d0__d1 f_8_1 i_8 ls_4_9 =
  (match ls_4_9 with
    | `LH_C(h_8_2, t_8_5) -> 
      ((f_8_1 h_8_2) (((foldr__d2__d0__d1 f_8_1) i_8) t_8_5))
    | `LH_N -> 
      i_8);;
let rec foldr__d2__d0__d1_d0 f_7_0 i_7 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_7_5, t_7_8) -> 
      ((f_7_0 h_7_5) (((foldr__d2__d0__d1_d0 f_7_0) i_7) t_7_8))
    | `LH_N -> 
      i_7);;
let rec foldr__d2__d0__d1_d1 f_1_3_9 i_1_7 ls_9_4 =
  (match ls_9_4 with
    | `LH_C(h_1_5_0, t_1_5_3) -> 
      ((f_1_3_9 h_1_5_0) (((foldr__d2__d0__d1_d1 f_1_3_9) i_1_7) t_1_5_3))
    | `LH_N -> 
      i_1_7);;
let rec foldr__d2__d0__d2 f_1_4_7 i_1_9 ls_1_0_1 =
  (match ls_1_0_1 with
    | `LH_C(h_1_6_2, t_1_6_5) -> 
      ((f_1_4_7 h_1_6_2) (((foldr__d2__d0__d2 f_1_4_7) i_1_9) t_1_6_5))
    | `LH_N -> 
      i_1_9);;
let rec foldr__d2__d0__d3 f_6_4 i_6 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_7_0, t_7_3) -> 
      ((f_6_4 h_7_0) (((foldr__d2__d0__d3 f_6_4) i_6) t_7_3))
    | `LH_N -> 
      i_6);;
let rec foldr__d2__d0__d4 f_1_9_9 i_2_4 ls_1_3_2 =
  (match ls_1_3_2 with
    | `LH_C(h_2_1_7, t_2_2_0) -> 
      ((f_1_9_9 h_2_1_7) (((foldr__d2__d0__d4 f_1_9_9) i_2_4) t_2_2_0))
    | `LH_N -> 
      i_2_4);;
let rec foldr__d2__d0__d5 f_2_2_9 i_2_8 ls_1_5_3 =
  (match ls_1_5_3 with
    | `LH_C(h_2_4_7, t_2_5_1) -> 
      ((f_2_2_9 h_2_4_7) (((foldr__d2__d0__d5 f_2_2_9) i_2_8) t_2_5_1))
    | `LH_N -> 
      i_2_8);;
let rec foldr__d2__d0__d6 f_1_0_2 i_1_1 ls_6_7 =
  (match ls_6_7 with
    | `LH_C(h_1_0_5, t_1_0_8) -> 
      ((f_1_0_2 h_1_0_5) (((foldr__d2__d0__d6 f_1_0_2) i_1_1) t_1_0_8))
    | `LH_N -> 
      i_1_1);;
let rec foldr__d2__d0__d7 f_1_3_2 i_1_5 ls_8_9 =
  (match ls_8_9 with
    | `LH_C(h_1_4_2, t_1_4_5) -> 
      ((f_1_3_2 h_1_4_2) (((foldr__d2__d0__d7 f_1_3_2) i_1_5) t_1_4_5))
    | `LH_N -> 
      i_1_5);;
let rec foldr__d2__d0__d8 f_1_1_0 i_1_3 ls_7_4 =
  (match ls_7_4 with
    | `LH_C(h_1_1_5, t_1_1_8) -> 
      ((f_1_1_0 h_1_1_5) (((foldr__d2__d0__d8 f_1_1_0) i_1_3) t_1_1_8))
    | `LH_N -> 
      i_1_3);;
let rec foldr__d2__d0__d9 f_1_3_0 i_1_4 ls_8_8 =
  (match ls_8_8 with
    | `LH_C(h_1_3_8, t_1_4_1) -> 
      ((f_1_3_0 h_1_3_8) (((foldr__d2__d0__d9 f_1_3_0) i_1_4) t_1_4_1))
    | `LH_N -> 
      i_1_4);;
let rec foldr__d3__d0__d0 f_2_2_7 i_2_7 ls_1_5_1 =
  (match ls_1_5_1 with
    | `LH_C(h_2_4_3, t_2_4_7) -> 
      ((f_2_2_7 h_2_4_3) (((foldr__d3__d0__d0 f_2_2_7) i_2_7) t_2_4_7))
    | `LH_N -> 
      i_2_7);;
let rec foldr__d3__d0__d1 f_8_5 i_9 ls_5_4 =
  (match ls_5_4 with
    | `LH_C(h_8_8, t_9_1) -> 
      ((f_8_5 h_8_8) (((foldr__d3__d0__d1 f_8_5) i_9) t_9_1))
    | `LH_N -> 
      i_9);;
let rec foldr__d3__d0__d1_d0 f_1_6_2 i_2_0 ls_1_1_0 =
  (match ls_1_1_0 with
    | `LH_C(h_1_8_0, t_1_8_3) -> 
      ((f_1_6_2 h_1_8_0) (((foldr__d3__d0__d1_d0 f_1_6_2) i_2_0) t_1_8_3))
    | `LH_N -> 
      i_2_0);;
let rec foldr__d3__d0__d1_d1 f_2_0_9 i_2_5 ls_1_3_8 =
  (match ls_1_3_8 with
    | `LH_C(h_2_3_1, t_2_3_5) -> 
      ((f_2_0_9 h_2_3_1) (((foldr__d3__d0__d1_d1 f_2_0_9) i_2_5) t_2_3_5))
    | `LH_N -> 
      i_2_5);;
let rec foldr__d3__d0__d2 f_2_1_0 i_2_6 ls_1_3_9 =
  (match ls_1_3_9 with
    | `LH_C(h_2_3_2, t_2_3_6) -> 
      ((f_2_1_0 h_2_3_2) (((foldr__d3__d0__d2 f_2_1_0) i_2_6) t_2_3_6))
    | `LH_N -> 
      i_2_6);;
let rec foldr__d3__d0__d3 f_1_8_5 i_2_1 ls_1_1_9 =
  (match ls_1_1_9 with
    | `LH_C(h_2_0_6, t_2_0_9) -> 
      ((f_1_8_5 h_2_0_6) (((foldr__d3__d0__d3 f_1_8_5) i_2_1) t_2_0_9))
    | `LH_N -> 
      i_2_1);;
let rec foldr__d3__d0__d4 f_2_5_2 i_2_9 ls_1_6_6 =
  (match ls_1_6_6 with
    | `LH_C(h_2_6_6, t_2_7_0) -> 
      ((f_2_5_2 h_2_6_6) (((foldr__d3__d0__d4 f_2_5_2) i_2_9) t_2_7_0))
    | `LH_N -> 
      i_2_9);;
let rec foldr__d3__d0__d5 f_1_3_6 i_1_6 ls_9_2 =
  (match ls_9_2 with
    | `LH_C(h_1_4_5, t_1_4_8) -> 
      ((f_1_3_6 h_1_4_5) (((foldr__d3__d0__d5 f_1_3_6) i_1_6) t_1_4_8))
    | `LH_N -> 
      i_1_6);;
let rec foldr__d3__d0__d6 f_1_0_3 i_1_2 ls_6_8 =
  (match ls_6_8 with
    | `LH_C(h_1_0_6, t_1_0_9) -> 
      ((f_1_0_3 h_1_0_6) (((foldr__d3__d0__d6 f_1_0_3) i_1_2) t_1_0_9))
    | `LH_N -> 
      i_1_2);;
let rec foldr__d3__d0__d7 f_5_1 i_5 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_5_2, t_5_4) -> 
      ((f_5_1 h_5_2) (((foldr__d3__d0__d7 f_5_1) i_5) t_5_4))
    | `LH_N -> 
      i_5);;
let rec foldr__d3__d0__d8 f_1_8_9 i_2_2 ls_1_2_4 =
  (match ls_1_2_4 with
    | `LH_C(h_2_1_2, t_2_1_5) -> 
      ((f_1_8_9 h_2_1_2) (((foldr__d3__d0__d8 f_1_8_9) i_2_2) t_2_1_5))
    | `LH_N -> 
      i_2_2);;
let rec foldr__d3__d0__d9 f_1_4_2 i_1_8 ls_9_8 =
  (match ls_9_8 with
    | `LH_C(h_1_6_0, t_1_6_3) -> 
      ((f_1_4_2 h_1_6_0) (((foldr__d3__d0__d9 f_1_4_2) i_1_8) t_1_6_3))
    | `LH_N -> 
      i_1_8);;
let rec jan1st__d0__d0__d0 _lh_jan1st_arg1_1 =
  (let rec last_1 = (_lh_jan1st_arg1_1 - 1) in
    (((((((_lh_jan1st_arg1_1 + last_1) / 4) - last_1) / 100) + last_1) / 400) mod 7));;
let rec leap__d0__d0__d0 _lh_leap_arg1_3 =
  (if ((_lh_leap_arg1_3 mod 100) = 0) then
    ((_lh_leap_arg1_3 mod 400) = 0)
  else
    ((_lh_leap_arg1_3 mod 4) = 0));;
let rec leap__d1__d0__d0 _lh_leap_arg1_2 =
  (if ((_lh_leap_arg1_2 mod 100) = 0) then
    ((_lh_leap_arg1_2 mod 400) = 0)
  else
    ((_lh_leap_arg1_2 mod 4) = 0));;
let rec length__d0__d0__d0 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_6_1, t_6_4) -> 
      (1 + (length__d0__d0__d0 t_6_4))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d0 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_5_4, t_5_6) -> 
      (1 + (length__d1__d0__d0 t_5_6))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d1 ls_7_1 =
  (match ls_7_1 with
    | `LH_C(h_1_1_2, t_1_1_5) -> 
      (1 + (length__d1__d0__d1 t_1_1_5))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d1_d0 ls_1_6_8 =
  (match ls_1_6_8 with
    | `LH_C(h_2_6_7, t_2_7_1) -> 
      (1 + (length__d1__d0__d1_d0 t_2_7_1))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d1_d1 ls_1_7_1 =
  (match ls_1_7_1 with
    | `LH_C(h_2_7_2, t_2_7_6) -> 
      (1 + (length__d1__d0__d1_d1 t_2_7_6))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d2 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_5_5, t_5_7) -> 
      (1 + (length__d1__d0__d2 t_5_7))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d3 ls_1_6_5 =
  (match ls_1_6_5 with
    | `LH_C(h_2_6_4, t_2_6_8) -> 
      (1 + (length__d1__d0__d3 t_2_6_8))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d4 ls_1_6_0 =
  (match ls_1_6_0 with
    | `LH_C(h_2_5_9, t_2_6_3) -> 
      (1 + (length__d1__d0__d4 t_2_6_3))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d5 ls_1_1_6 =
  (match ls_1_1_6 with
    | `LH_C(h_2_0_4, t_2_0_7) -> 
      (1 + (length__d1__d0__d5 t_2_0_7))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d6 ls_1_5_0 =
  (match ls_1_5_0 with
    | `LH_C(h_2_4_1, t_2_4_5) -> 
      (1 + (length__d1__d0__d6 t_2_4_5))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d7 ls_6_9 =
  (match ls_6_9 with
    | `LH_C(h_1_0_7, t_1_1_0) -> 
      (1 + (length__d1__d0__d7 t_1_1_0))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d8 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_7_4, t_7_7) -> 
      (1 + (length__d1__d0__d8 t_7_7))
    | `LH_N -> 
      0);;
let rec length__d1__d0__d9 ls_1_2_3 =
  (match ls_1_2_3 with
    | `LH_C(h_2_0_9, t_2_1_2) -> 
      (1 + (length__d1__d0__d9 t_2_1_2))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d0 ls_1_4_0 =
  (match ls_1_4_0 with
    | `LH_C(h_2_3_3, t_2_3_7) -> 
      (1 + (length__d2__d0__d0 t_2_3_7))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d1 ls_9_3 =
  (match ls_9_3 with
    | `LH_C(h_1_4_9, t_1_5_2) -> 
      (1 + (length__d2__d0__d1 t_1_5_2))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d1_d0 ls_1_7_0 =
  (match ls_1_7_0 with
    | `LH_C(h_2_7_1, t_2_7_5) -> 
      (1 + (length__d2__d0__d1_d0 t_2_7_5))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d1_d1 ls_5_2 =
  (match ls_5_2 with
    | `LH_C(h_8_7, t_9_0) -> 
      (1 + (length__d2__d0__d1_d1 t_9_0))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d2 ls_1_6_4 =
  (match ls_1_6_4 with
    | `LH_C(h_2_6_1, t_2_6_5) -> 
      (1 + (length__d2__d0__d2 t_2_6_5))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d3 ls_1_4_1 =
  (match ls_1_4_1 with
    | `LH_C(h_2_3_4, t_2_3_8) -> 
      (1 + (length__d2__d0__d3 t_2_3_8))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d4 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_6_2, t_6_5) -> 
      (1 + (length__d2__d0__d4 t_6_5))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d5 ls_1_3_5 =
  (match ls_1_3_5 with
    | `LH_C(h_2_2_5, t_2_2_8) -> 
      (1 + (length__d2__d0__d5 t_2_2_8))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d6 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_8_0, t_8_3) -> 
      (1 + (length__d2__d0__d6 t_8_3))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d7 ls_7_2 =
  (match ls_7_2 with
    | `LH_C(h_1_1_3, t_1_1_6) -> 
      (1 + (length__d2__d0__d7 t_1_1_6))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d8 ls_1_2_1 =
  (match ls_1_2_1 with
    | `LH_C(h_2_0_8, t_2_1_1) -> 
      (1 + (length__d2__d0__d8 t_2_1_1))
    | `LH_N -> 
      0);;
let rec length__d2__d0__d9 ls_1_1_1 =
  (match ls_1_1_1 with
    | `LH_C(h_1_8_1, t_1_8_4) -> 
      (1 + (length__d2__d0__d9 t_1_8_4))
    | `LH_N -> 
      0);;
let rec length__d3__d0__d0 ls_1_3_4 =
  (ls_1_3_4 99);;
let rec length__d3__d0__d1 ls_9_5 =
  (ls_9_5 99);;
let rec length__d3__d0__d2 ls_2_7 =
  (ls_2_7 99);;
let rec map__d0__d0__d0 f_1_6_8 ls_1_1_5 =
  (ls_1_1_5 f_1_6_8);;
let rec map__d0__d0__d1 f_2_4_4 ls_1_5_9 =
  (ls_1_5_9 f_2_4_4);;
let rec map__d1__d0__d0 f_1_4_1 ls_9_7 =
  (ls_9_7 f_1_4_1);;
let rec map__d1__d0__d1 f_1_0_5 ls_7_0 =
  (ls_7_0 f_1_0_5);;
let rec map__d1__d0__d1_d0 f_2_6_7 ls_1_7_7 =
  (ls_1_7_7 f_2_6_7);;
let rec map__d1__d0__d1_d1 f_5_6 ls_3_1 =
  (ls_3_1 f_5_6);;
let rec map__d1__d0__d1_d2 f_1_3_3 ls_9_0 =
  (ls_9_0 f_1_3_3);;
let rec map__d1__d0__d2 f_2_1_3 ls_1_4_4 =
  (ls_1_4_4 f_2_1_3);;
let rec map__d1__d0__d3 f_4_6 ls_1_8 =
  (ls_1_8 f_4_6);;
let rec map__d1__d0__d4 f_1_8_4 ls_1_1_8 =
  (ls_1_1_8 f_1_8_4);;
let rec map__d1__d0__d5 f_7_4 ls_4_6 =
  (ls_4_6 f_7_4);;
let rec map__d1__d0__d6 f_2_4_2 ls_1_5_7 =
  (ls_1_5_7 f_2_4_2);;
let rec map__d1__d0__d7 f_2_1_2 ls_1_4_3 =
  (ls_1_4_3 f_2_1_2);;
let rec map__d1__d0__d8 f_1_2_3 ls_8_1 =
  (ls_8_1 f_1_2_3);;
let rec map__d1__d0__d9 f_2_4_6 ls_1_6_2 =
  (ls_1_6_2 f_2_4_6);;
let rec map__d2__d0__d0 f_9_5 ls_6_1 =
  (ls_6_1 f_9_5);;
let rec map__d2__d0__d1 f_2_0_6 ls_1_3_7 =
  (ls_1_3_7 f_2_0_6);;
let rec map__d2__d0__d1_d0 f_2_2_8 ls_1_5_2 =
  (ls_1_5_2 f_2_2_8);;
let rec map__d2__d0__d1_d1 f_1_6_7 ls_1_1_4 =
  (ls_1_1_4 f_1_6_7);;
let rec map__d2__d0__d1_d2 f_2_6_1 ls_1_7_5 =
  (ls_1_7_5 f_2_6_1);;
let rec map__d2__d0__d1_d3 f_2_4_7 ls_1_6_3 =
  (ls_1_6_3 f_2_4_7);;
let rec map__d2__d0__d2 f_1_9_4 ls_1_2_9 =
  (ls_1_2_9 f_1_9_4);;
let rec map__d2__d0__d3 f_1_4_9 ls_1_0_2 =
  (ls_1_0_2 f_1_4_9);;
let rec map__d2__d0__d4 f_2_1_8 ls_1_4_7 =
  (ls_1_4_7 f_2_1_8);;
let rec map__d2__d0__d5 f_1_9_8 ls_1_3_1 =
  (ls_1_3_1 f_1_9_8);;
let rec map__d2__d0__d6 f_1_9_0 ls_1_2_5 =
  (ls_1_2_5 f_1_9_0);;
let rec map__d2__d0__d7 f_1_8_8 ls_1_2_2 =
  (ls_1_2_2 f_1_8_8);;
let rec map__d2__d0__d8 f_7_3 ls_4_5 =
  (ls_4_5 f_7_3);;
let rec map__d2__d0__d9 f_5_2 ls_2_5 =
  (ls_2_5 f_5_2);;
let rec map__d3__d0__d0 f_2_5_8 ls_1_7_2 =
  (ls_1_7_2 f_2_5_8);;
let rec map__d3__d0__d1 f_1_1_5 ls_7_7 =
  (ls_7_7 f_1_1_5);;
let rec map__d3__d0__d1_d0 f_1_8_3 ls_1_1_7 =
  (ls_1_1_7 f_1_8_3);;
let rec map__d3__d0__d1_d1 f_1_2_9 ls_8_7 =
  (ls_8_7 f_1_2_9);;
let rec map__d3__d0__d1_d2 f_1_0_9 ls_7_3 =
  (ls_7_3 f_1_0_9);;
let rec map__d3__d0__d1_d3 f_2_5_4 ls_1_6_9 =
  (ls_1_6_9 f_2_5_4);;
let rec map__d3__d0__d1_d4 f_6_2 ls_3_7 =
  (ls_3_7 f_6_2);;
let rec map__d3__d0__d1_d5 f_2_1_9 ls_1_4_8 =
  (ls_1_4_8 f_2_1_9);;
let rec map__d3__d0__d1_d6 f_2_6_0 ls_1_7_4 =
  (ls_1_7_4 f_2_6_0);;
let rec map__d3__d0__d1_d7 f_1_5_8 ls_1_0_5 =
  (ls_1_0_5 f_1_5_8);;
let rec map__d3__d0__d1_d8 f_9_4 ls_6_0 =
  (ls_6_0 f_9_4);;
let rec map__d3__d0__d1_d9 f_9_6 ls_6_2 =
  (ls_6_2 f_9_6);;
let rec map__d3__d0__d2 f_1_2_6 ls_8_4 =
  (ls_8_4 f_1_2_6);;
let rec map__d3__d0__d2_d0 f_9_1 ls_5_8 =
  (ls_5_8 f_9_1);;
let rec map__d3__d0__d2_d1 f_2_5_9 ls_1_7_3 =
  (ls_1_7_3 f_2_5_9);;
let rec map__d3__d0__d2_d2 f_1_0_0 ls_6_5 =
  (ls_6_5 f_1_0_0);;
let rec map__d3__d0__d2_d3 f_2_3_4 ls_1_5_4 =
  (ls_1_5_4 f_2_3_4);;
let rec map__d3__d0__d3 f_9_0 ls_5_6 =
  (ls_5_6 f_9_0);;
let rec map__d3__d0__d4 f_2_5_3 ls_1_6_7 =
  (ls_1_6_7 f_2_5_3);;
let rec map__d3__d0__d5 f_2_4_5 ls_1_6_1 =
  (ls_1_6_1 f_2_4_5);;
let rec map__d3__d0__d6 f_1_1_3 ls_7_5 =
  (ls_7_5 f_1_1_3);;
let rec map__d3__d0__d7 f_4_7 ls_1_9 =
  (ls_1_9 f_4_7);;
let rec map__d3__d0__d8 f_2_1_1 ls_1_4_2 =
  (ls_1_4_2 f_2_1_1);;
let rec map__d3__d0__d9 f_1_2_5 ls_8_3 =
  (ls_8_3 f_1_2_5);;
let rec map__d4__d0__d0 f_2_0_5 ls_1_3_6 =
  (ls_1_3_6 f_2_0_5);;
let rec map__d4__d0__d1 f_6_5 ls_4_0 =
  (ls_4_0 f_6_5);;
let rec map__d4__d0__d1_d0 f_1_2_7 ls_8_6 =
  (ls_8_6 f_1_2_7);;
let rec map__d4__d0__d1_d1 f_1_0_1 ls_6_6 =
  (ls_6_6 f_1_0_1);;
let rec map__d4__d0__d1_d2 f_1_3_5 ls_9_1 =
  (ls_9_1 f_1_3_5);;
let rec map__d4__d0__d1_d3 f_9_7 ls_6_4 =
  (ls_6_4 f_9_7);;
let rec map__d4__d0__d1_d4 f_2_0_0 ls_1_3_3 =
  (ls_1_3_3 f_2_0_0);;
let rec map__d4__d0__d1_d5 f_1_5_2 ls_1_0_3 =
  (ls_1_0_3 f_1_5_2);;
let rec map__d4__d0__d1_d6 f_2_4_3 ls_1_5_8 =
  (ls_1_5_8 f_2_4_3);;
let rec map__d4__d0__d1_d7 f_5_3 ls_2_9 =
  (ls_2_9 f_5_3);;
let rec map__d4__d0__d1_d8 f_1_5_9 ls_1_0_6 =
  (ls_1_0_6 f_1_5_9);;
let rec map__d4__d0__d1_d9 f_6_3 ls_3_8 =
  (ls_3_8 f_6_3);;
let rec map__d4__d0__d2 f_5_0 ls_2_2 =
  (ls_2_2 f_5_0);;
let rec map__d4__d0__d2_d0 f_2_3_9 ls_1_5_6 =
  (ls_1_5_6 f_2_3_9);;
let rec map__d4__d0__d2_d1 f_1_8_6 ls_1_2_0 =
  (ls_1_2_0 f_1_8_6);;
let rec map__d4__d0__d2_d2 f_6_9 ls_4_3 =
  (ls_4_3 f_6_9);;
let rec map__d4__d0__d2_d3 f_2_1_4 ls_1_4_5 =
  (ls_1_4_5 f_2_1_4);;
let rec map__d4__d0__d3 f_5_8 ls_3_3 =
  (ls_3_3 f_5_8);;
let rec map__d4__d0__d4 f_1_2_4 ls_8_2 =
  (ls_8_2 f_1_2_4);;
let rec map__d4__d0__d5 f_5_7 ls_3_2 =
  (ls_3_2 f_5_7);;
let rec map__d4__d0__d6 f_1_6_0 ls_1_0_7 =
  (ls_1_0_7 f_1_6_0);;
let rec map__d4__d0__d7 f_2_3_7 ls_1_5_5 =
  (ls_1_5_5 f_2_3_7);;
let rec map__d4__d0__d8 f_1_1_4 ls_7_6 =
  (ls_7_6 f_1_1_4);;
let rec map__d4__d0__d9 f_1_1_8 ls_7_8 =
  (ls_7_8 f_1_1_8);;
let rec map__d6__d0__d0 f_2_1_5 ls_1_4_6 =
  (match ls_1_4_6 with
    | `LH_C(h_2_3_7, t_2_4_1) -> 
      (`LH_C((f_2_1_5 h_2_3_7), ((map__d6__d0__d0 f_2_1_5) t_2_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0__d0__d0 xs_1_2_0 ys_2_1_2 =
  (match xs_1_2_0 with
    | `LH_C(h_1_7_7, t_1_8_0) -> 
      (`LH_C(h_1_7_7, ((mappend__d0__d0__d0 t_1_8_0) ys_2_1_2)))
    | `LH_N -> 
      ys_2_1_2);;
let rec mappend__d1__d0__d0 xs_1_4_7 ys_2_5_1 =
  (xs_1_4_7 ys_2_5_1);;
let rec mappend__d1__d0__d1 xs_1_4_8 ys_2_5_2 =
  (xs_1_4_8 ys_2_5_2);;
let rec mappend__d1_d0__d0__d0 xs_1_4_9 ys_2_5_3 =
  (match xs_1_4_9 with
    | `LH_C(h_2_1_8, t_2_2_1) -> 
      (`LH_C(h_2_1_8, ((mappend__d1_d0__d0__d0 t_2_2_1) ys_2_5_3)))
    | `LH_N -> 
      ys_2_5_3);;
let rec mappend__d1_d0__d0__d1 xs_1_6_2 ys_2_7_5 =
  (match xs_1_6_2 with
    | `LH_C(h_2_3_5, t_2_3_9) -> 
      (`LH_C(h_2_3_5, ((mappend__d1_d0__d0__d1 t_2_3_9) ys_2_7_5)))
    | `LH_N -> 
      ys_2_7_5);;
let rec mappend__d1_d0__d0__d1_d0 xs_1_1_8 ys_2_0_8 =
  (match xs_1_1_8 with
    | `LH_C(h_1_7_3, t_1_7_6) -> 
      (`LH_C(h_1_7_3, ((mappend__d1_d0__d0__d1_d0 t_1_7_6) ys_2_0_8)))
    | `LH_N -> 
      ys_2_0_8);;
let rec mappend__d1_d0__d0__d1_d1 xs_8_2 ys_1_5_0 =
  (match xs_8_2 with
    | `LH_C(h_1_3_3, t_1_3_6) -> 
      (`LH_C(h_1_3_3, ((mappend__d1_d0__d0__d1_d1 t_1_3_6) ys_1_5_0)))
    | `LH_N -> 
      ys_1_5_0);;
let rec mappend__d1_d0__d0__d2 xs_1_0_9 ys_1_9_5 =
  (match xs_1_0_9 with
    | `LH_C(h_1_6_5, t_1_6_8) -> 
      (`LH_C(h_1_6_5, ((mappend__d1_d0__d0__d2 t_1_6_8) ys_1_9_5)))
    | `LH_N -> 
      ys_1_9_5);;
let rec mappend__d1_d0__d0__d3 xs_1_7_4 ys_3_0_6 =
  (match xs_1_7_4 with
    | `LH_C(h_2_5_5, t_2_5_9) -> 
      (`LH_C(h_2_5_5, ((mappend__d1_d0__d0__d3 t_2_5_9) ys_3_0_6)))
    | `LH_N -> 
      ys_3_0_6);;
let rec mappend__d1_d0__d0__d4 xs_1_1_4 ys_2_0_2 =
  (match xs_1_1_4 with
    | `LH_C(h_1_6_8, t_1_7_1) -> 
      (`LH_C(h_1_6_8, ((mappend__d1_d0__d0__d4 t_1_7_1) ys_2_0_2)))
    | `LH_N -> 
      ys_2_0_2);;
let rec mappend__d1_d0__d0__d5 xs_9_6 ys_1_6_8 =
  (match xs_9_6 with
    | `LH_C(h_1_4_8, t_1_5_1) -> 
      (`LH_C(h_1_4_8, ((mappend__d1_d0__d0__d5 t_1_5_1) ys_1_6_8)))
    | `LH_N -> 
      ys_1_6_8);;
let rec mappend__d1_d0__d0__d6 xs_6_0 ys_1_1_3 =
  (match xs_6_0 with
    | `LH_C(h_1_0_4, t_1_0_7) -> 
      (`LH_C(h_1_0_4, ((mappend__d1_d0__d0__d6 t_1_0_7) ys_1_1_3)))
    | `LH_N -> 
      ys_1_1_3);;
let rec mappend__d1_d0__d0__d7 xs_1_7_3 ys_3_0_5 =
  (match xs_1_7_3 with
    | `LH_C(h_2_5_4, t_2_5_8) -> 
      (`LH_C(h_2_5_4, ((mappend__d1_d0__d0__d7 t_2_5_8) ys_3_0_5)))
    | `LH_N -> 
      ys_3_0_5);;
let rec mappend__d1_d0__d0__d8 xs_9_4 ys_1_6_6 =
  (match xs_9_4 with
    | `LH_C(h_1_4_7, t_1_5_0) -> 
      (`LH_C(h_1_4_7, ((mappend__d1_d0__d0__d8 t_1_5_0) ys_1_6_6)))
    | `LH_N -> 
      ys_1_6_6);;
let rec mappend__d1_d0__d0__d9 xs_8_0 ys_1_4_4 =
  (match xs_8_0 with
    | `LH_C(h_1_2_9, t_1_3_2) -> 
      (`LH_C(h_1_2_9, ((mappend__d1_d0__d0__d9 t_1_3_2) ys_1_4_4)))
    | `LH_N -> 
      ys_1_4_4);;
let rec mappend__d1_d1__d0__d0 xs_1_8_0 ys_3_1_4 =
  (xs_1_8_0 ys_3_1_4);;
let rec mappend__d1_d1__d0__d1 xs_3_8 ys_8_5 =
  (xs_3_8 ys_8_5);;
let rec mappend__d1_d1__d0__d1_d0 xs_3_7 ys_8_4 =
  (xs_3_7 ys_8_4);;
let rec mappend__d1_d1__d0__d1_d1 xs_5_9 ys_1_1_2 =
  (xs_5_9 ys_1_1_2);;
let rec mappend__d1_d1__d0__d1_d2 xs_1_1_2 ys_1_9_8 =
  (xs_1_1_2 ys_1_9_8);;
let rec mappend__d1_d1__d0__d1_d3 xs_1_5_4 ys_2_6_0 =
  (xs_1_5_4 ys_2_6_0);;
let rec mappend__d1_d1__d0__d1_d4 xs_2_9 ys_6_6 =
  (xs_2_9 ys_6_6);;
let rec mappend__d1_d1__d0__d1_d5 xs_1_4_3 ys_2_4_5 =
  (xs_1_4_3 ys_2_4_5);;
let rec mappend__d1_d1__d0__d1_d6 xs_4_3 ys_9_2 =
  (xs_4_3 ys_9_2);;
let rec mappend__d1_d1__d0__d1_d7 xs_1_5_1 ys_2_5_5 =
  (xs_1_5_1 ys_2_5_5);;
let rec mappend__d1_d1__d0__d1_d8 xs_1_7_5 ys_3_0_9 =
  (xs_1_7_5 ys_3_0_9);;
let rec mappend__d1_d1__d0__d1_d9 xs_6_9 ys_1_2_4 =
  (xs_6_9 ys_1_2_4);;
let rec mappend__d1_d1__d0__d2 xs_2_3 ys_5_2 =
  (xs_2_3 ys_5_2);;
let rec mappend__d1_d1__d0__d2_d0 xs_9_7 ys_1_6_9 =
  (xs_9_7 ys_1_6_9);;
let rec mappend__d1_d1__d0__d2_d1 xs_4_7 ys_9_8 =
  (xs_4_7 ys_9_8);;
let rec mappend__d1_d1__d0__d2_d2 xs_5_1 ys_1_0_2 =
  (xs_5_1 ys_1_0_2);;
let rec mappend__d1_d1__d0__d2_d3 xs_1_2_6 ys_2_2_0 =
  (xs_1_2_6 ys_2_2_0);;
let rec mappend__d1_d1__d0__d3 xs_6_7 ys_1_2_2 =
  (xs_6_7 ys_1_2_2);;
let rec mappend__d1_d1__d0__d4 xs_3_6 ys_8_3 =
  (xs_3_6 ys_8_3);;
let rec mappend__d1_d1__d0__d5 xs_1_3_6 ys_2_3_4 =
  (xs_1_3_6 ys_2_3_4);;
let rec mappend__d1_d1__d0__d6 xs_4_1 ys_9_0 =
  (xs_4_1 ys_9_0);;
let rec mappend__d1_d1__d0__d7 xs_1_8_5 ys_3_2_9 =
  (xs_1_8_5 ys_3_2_9);;
let rec mappend__d1_d1__d0__d8 xs_6_6 ys_1_2_1 =
  (xs_6_6 ys_1_2_1);;
let rec mappend__d1_d1__d0__d9 xs_6_4 ys_1_1_7 =
  (xs_6_4 ys_1_1_7);;
let rec mappend__d1_d2__d0__d0 xs_1_2_4 ys_2_1_8 =
  (xs_1_2_4 ys_2_1_8);;
let rec mappend__d1_d2__d0__d1 xs_5_5 ys_1_0_8 =
  (xs_5_5 ys_1_0_8);;
let rec mappend__d1_d2__d0__d1_d0 xs_1_5_2 ys_2_5_8 =
  (xs_1_5_2 ys_2_5_8);;
let rec mappend__d1_d2__d0__d1_d1 xs_1_6_4 ys_2_7_7 =
  (xs_1_6_4 ys_2_7_7);;
let rec mappend__d1_d2__d0__d1_d2 xs_1_8_7 ys_3_3_1 =
  (xs_1_8_7 ys_3_3_1);;
let rec mappend__d1_d2__d0__d1_d3 xs_3_1 ys_7_6 =
  (xs_3_1 ys_7_6);;
let rec mappend__d1_d2__d0__d1_d4 xs_1_4_5 ys_2_4_7 =
  (xs_1_4_5 ys_2_4_7);;
let rec mappend__d1_d2__d0__d1_d5 xs_1_4_1 ys_2_4_1 =
  (xs_1_4_1 ys_2_4_1);;
let rec mappend__d1_d2__d0__d1_d6 xs_1_5_8 ys_2_7_0 =
  (xs_1_5_8 ys_2_7_0);;
let rec mappend__d1_d2__d0__d1_d7 xs_9_3 ys_1_6_5 =
  (xs_9_3 ys_1_6_5);;
let rec mappend__d1_d2__d0__d1_d8 xs_1_1_1 ys_1_9_7 =
  (xs_1_1_1 ys_1_9_7);;
let rec mappend__d1_d2__d0__d1_d9 xs_4_5 ys_9_4 =
  (xs_4_5 ys_9_4);;
let rec mappend__d1_d2__d0__d2 xs_1_0_8 ys_1_9_4 =
  (xs_1_0_8 ys_1_9_4);;
let rec mappend__d1_d2__d0__d2_d0 xs_4_6 ys_9_5 =
  (xs_4_6 ys_9_5);;
let rec mappend__d1_d2__d0__d2_d1 xs_1_8_6 ys_3_3_0 =
  (xs_1_8_6 ys_3_3_0);;
let rec mappend__d1_d2__d0__d2_d2 xs_6_5 ys_1_2_0 =
  (xs_6_5 ys_1_2_0);;
let rec mappend__d1_d2__d0__d2_d3 xs_1_3_3 ys_2_3_1 =
  (xs_1_3_3 ys_2_3_1);;
let rec mappend__d1_d2__d0__d3 xs_1_8_8 ys_3_3_2 =
  (xs_1_8_8 ys_3_3_2);;
let rec mappend__d1_d2__d0__d4 xs_8_1 ys_1_4_9 =
  (xs_8_1 ys_1_4_9);;
let rec mappend__d1_d2__d0__d5 xs_1_7_7 ys_3_1_1 =
  (xs_1_7_7 ys_3_1_1);;
let rec mappend__d1_d2__d0__d6 xs_1_6_7 ys_2_8_0 =
  (xs_1_6_7 ys_2_8_0);;
let rec mappend__d1_d2__d0__d7 xs_1_8_3 ys_3_2_1 =
  (xs_1_8_3 ys_3_2_1);;
let rec mappend__d1_d2__d0__d8 xs_1_5_7 ys_2_6_5 =
  (xs_1_5_7 ys_2_6_5);;
let rec mappend__d1_d2__d0__d9 xs_1_6_1 ys_2_7_4 =
  (xs_1_6_1 ys_2_7_4);;
let rec mappend__d1_d3__d0__d0 xs_1_1_6 ys_2_0_4 =
  (match xs_1_1_6 with
    | `LH_C(h_1_7_0, t_1_7_3) -> 
      (`LH_C(h_1_7_0, ((mappend__d1_d3__d0__d0 t_1_7_3) ys_2_0_4)))
    | `LH_N -> 
      ys_2_0_4);;
let rec mappend__d1_d3__d0__d1 xs_7_6 ys_1_3_5 =
  (match xs_7_6 with
    | `LH_C(h_1_2_2, t_1_2_5) -> 
      (`LH_C(h_1_2_2, ((mappend__d1_d3__d0__d1 t_1_2_5) ys_1_3_5)))
    | `LH_N -> 
      ys_1_3_5);;
let rec mappend__d1_d3__d0__d1_d0 xs_9_1 ys_1_5_9 =
  (match xs_9_1 with
    | `LH_C(h_1_3_9, t_1_4_2) -> 
      (`LH_C(h_1_3_9, ((mappend__d1_d3__d0__d1_d0 t_1_4_2) ys_1_5_9)))
    | `LH_N -> 
      ys_1_5_9);;
let rec mappend__d1_d3__d0__d1_d1 xs_4_2 ys_9_1 =
  (match xs_4_2 with
    | `LH_C(h_9_0, t_9_3) -> 
      (`LH_C(h_9_0, ((mappend__d1_d3__d0__d1_d1 t_9_3) ys_9_1)))
    | `LH_N -> 
      ys_9_1);;
let rec mappend__d1_d3__d0__d2 xs_5_7 ys_1_1_0 =
  (match xs_5_7 with
    | `LH_C(h_1_0_1, t_1_0_4) -> 
      (`LH_C(h_1_0_1, ((mappend__d1_d3__d0__d2 t_1_0_4) ys_1_1_0)))
    | `LH_N -> 
      ys_1_1_0);;
let rec mappend__d1_d3__d0__d3 xs_7_9 ys_1_4_1 =
  (match xs_7_9 with
    | `LH_C(h_1_2_7, t_1_3_0) -> 
      (`LH_C(h_1_2_7, ((mappend__d1_d3__d0__d3 t_1_3_0) ys_1_4_1)))
    | `LH_N -> 
      ys_1_4_1);;
let rec mappend__d1_d3__d0__d4 xs_5_0 ys_1_0_1 =
  (match xs_5_0 with
    | `LH_C(h_9_8, t_1_0_1) -> 
      (`LH_C(h_9_8, ((mappend__d1_d3__d0__d4 t_1_0_1) ys_1_0_1)))
    | `LH_N -> 
      ys_1_0_1);;
let rec mappend__d1_d3__d0__d5 xs_9_9 ys_1_7_5 =
  (match xs_9_9 with
    | `LH_C(h_1_5_4, t_1_5_7) -> 
      (`LH_C(h_1_5_4, ((mappend__d1_d3__d0__d5 t_1_5_7) ys_1_7_5)))
    | `LH_N -> 
      ys_1_7_5);;
let rec mappend__d1_d3__d0__d6 xs_1_7_1 ys_2_9_5 =
  (match xs_1_7_1 with
    | `LH_C(h_2_4_5, t_2_4_9) -> 
      (`LH_C(h_2_4_5, ((mappend__d1_d3__d0__d6 t_2_4_9) ys_2_9_5)))
    | `LH_N -> 
      ys_2_9_5);;
let rec mappend__d1_d3__d0__d7 xs_8_8 ys_1_5_6 =
  (match xs_8_8 with
    | `LH_C(h_1_3_7, t_1_4_0) -> 
      (`LH_C(h_1_3_7, ((mappend__d1_d3__d0__d7 t_1_4_0) ys_1_5_6)))
    | `LH_N -> 
      ys_1_5_6);;
let rec mappend__d1_d3__d0__d8 xs_1_2_8 ys_2_2_2 =
  (match xs_1_2_8 with
    | `LH_C(h_1_8_7, t_1_9_0) -> 
      (`LH_C(h_1_8_7, ((mappend__d1_d3__d0__d8 t_1_9_0) ys_2_2_2)))
    | `LH_N -> 
      ys_2_2_2);;
let rec mappend__d1_d3__d0__d9 xs_1_3_5 ys_2_3_3 =
  (match xs_1_3_5 with
    | `LH_C(h_2_0_5, t_2_0_8) -> 
      (`LH_C(h_2_0_5, ((mappend__d1_d3__d0__d9 t_2_0_8) ys_2_3_3)))
    | `LH_N -> 
      ys_2_3_3);;
let rec mappend__d1_d4__d0__d0 xs_3_0 ys_7_5 =
  (xs_3_0 ys_7_5);;
let rec mappend__d1_d4__d0__d1 xs_1_6_8 ys_2_8_3 =
  (xs_1_6_8 ys_2_8_3);;
let rec mappend__d1_d4__d0__d1_d0 xs_4_4 ys_9_3 =
  (xs_4_4 ys_9_3);;
let rec mappend__d1_d4__d0__d1_d1 xs_1_0_3 ys_1_8_3 =
  (xs_1_0_3 ys_1_8_3);;
let rec mappend__d1_d4__d0__d1_d2 xs_6_8 ys_1_2_3 =
  (xs_6_8 ys_1_2_3);;
let rec mappend__d1_d4__d0__d1_d3 xs_1_7_2 ys_2_9_8 =
  (xs_1_7_2 ys_2_9_8);;
let rec mappend__d1_d4__d0__d1_d4 xs_1_1_3 ys_1_9_9 =
  (xs_1_1_3 ys_1_9_9);;
let rec mappend__d1_d4__d0__d1_d5 xs_4_9 ys_1_0_0 =
  (xs_4_9 ys_1_0_0);;
let rec mappend__d1_d4__d0__d1_d6 xs_1_6_6 ys_2_7_9 =
  (xs_1_6_6 ys_2_7_9);;
let rec mappend__d1_d4__d0__d1_d7 xs_1_6_5 ys_2_7_8 =
  (xs_1_6_5 ys_2_7_8);;
let rec mappend__d1_d4__d0__d1_d8 xs_1_2_2 ys_2_1_6 =
  (xs_1_2_2 ys_2_1_6);;
let rec mappend__d1_d4__d0__d1_d9 xs_1_7_0 ys_2_9_4 =
  (xs_1_7_0 ys_2_9_4);;
let rec mappend__d1_d4__d0__d2 xs_1_1_9 ys_2_1_1 =
  (xs_1_1_9 ys_2_1_1);;
let rec mappend__d1_d4__d0__d2_d0 xs_1_2_7 ys_2_2_1 =
  (xs_1_2_7 ys_2_2_1);;
let rec mappend__d1_d4__d0__d2_d1 xs_1_8_2 ys_3_2_0 =
  (xs_1_8_2 ys_3_2_0);;
let rec mappend__d1_d4__d0__d2_d2 xs_3_5 ys_8_2 =
  (xs_3_5 ys_8_2);;
let rec mappend__d1_d4__d0__d2_d3 xs_7_5 ys_1_3_4 =
  (xs_7_5 ys_1_3_4);;
let rec mappend__d1_d4__d0__d3 xs_5_8 ys_1_1_1 =
  (xs_5_8 ys_1_1_1);;
let rec mappend__d1_d4__d0__d4 xs_1_2_5 ys_2_1_9 =
  (xs_1_2_5 ys_2_1_9);;
let rec mappend__d1_d4__d0__d5 xs_1_3_2 ys_2_3_0 =
  (xs_1_3_2 ys_2_3_0);;
let rec mappend__d1_d4__d0__d6 xs_2_5 ys_5_4 =
  (xs_2_5 ys_5_4);;
let rec mappend__d1_d4__d0__d7 xs_1_5_6 ys_2_6_2 =
  (xs_1_5_6 ys_2_6_2);;
let rec mappend__d1_d4__d0__d8 xs_1_7_6 ys_3_1_0 =
  (xs_1_7_6 ys_3_1_0);;
let rec mappend__d1_d4__d0__d9 xs_7_3 ys_1_3_0 =
  (xs_7_3 ys_1_3_0);;
let rec mappend__d1_d5__d0__d0 xs_1_3_1 ys_2_2_9 =
  (xs_1_3_1 ys_2_2_9);;
let rec mappend__d1_d5__d0__d1 xs_1_2_1 ys_2_1_5 =
  (xs_1_2_1 ys_2_1_5);;
let rec mappend__d1_d5__d0__d2 xs_5_4 ys_1_0_7 =
  (xs_5_4 ys_1_0_7);;
let rec mappend__d1_d6__d0__d0 xs_3_2 ys_7_9 =
  (xs_3_2 ys_7_9);;
let rec mappend__d1_d6__d0__d1 xs_6_3 ys_1_1_6 =
  (xs_6_3 ys_1_1_6);;
let rec mappend__d1_d6__d0__d2 xs_1_2_9 ys_2_2_5 =
  (xs_1_2_9 ys_2_2_5);;
let rec mappend__d2__d0__d0 xs_2_6 ys_5_9 =
  (xs_2_6 ys_5_9);;
let rec mappend__d2__d0__d1 xs_8_9 ys_1_5_7 =
  (xs_8_9 ys_1_5_7);;
let rec mappend__d3__d0__d0 xs_7_7 ys_1_3_6 =
  (match xs_7_7 with
    | `LH_C(h_1_2_3, t_1_2_6) -> 
      (`LH_C(h_1_2_3, ((mappend__d3__d0__d0 t_1_2_6) ys_1_3_6)))
    | `LH_N -> 
      ys_1_3_6);;
let rec mappend__d4__d0__d0 xs_7_2 ys_1_2_9 =
  (match xs_7_2 with
    | `LH_C(h_1_1_7, t_1_2_0) -> 
      (`LH_C(h_1_1_7, ((mappend__d4__d0__d0 t_1_2_0) ys_1_2_9)))
    | `LH_N -> 
      ys_1_2_9);;
let rec mappend__d5__d0__d0 xs_1_6_9 ys_2_9_1 =
  (xs_1_6_9 ys_2_9_1);;
let rec mappend__d5__d0__d1 xs_9_5 ys_1_6_7 =
  (xs_9_5 ys_1_6_7);;
let rec mappend__d6__d0__d0 xs_8_4 ys_1_5_2 =
  (match xs_8_4 with
    | `LH_C(h_1_3_5, t_1_3_8) -> 
      (`LH_C(h_1_3_5, ((mappend__d6__d0__d0 t_1_3_8) ys_1_5_2)))
    | `LH_N -> 
      ys_1_5_2);;
let rec mappend__d7__d0__d0 xs_1_3_8 ys_2_3_6 =
  (xs_1_3_8 ys_2_3_6);;
let rec mappend__d7__d0__d1 xs_1_0_4 ys_1_8_6 =
  (xs_1_0_4 ys_1_8_6);;
let rec mappend__d8__d0__d0 xs_1_4_6 ys_2_4_8 =
  (xs_1_4_6 ys_2_4_8);;
let rec mappend__d8__d0__d1 xs_1_8_1 ys_3_1_7 =
  (xs_1_8_1 ys_3_1_7);;
let rec mappend__d8__d0__d1_d0 xs_1_5_9 ys_2_7_1 =
  (xs_1_5_9 ys_2_7_1);;
let rec mappend__d8__d0__d1_d1 xs_5_2 ys_1_0_3 =
  (xs_5_2 ys_1_0_3);;
let rec mappend__d8__d0__d1_d2 xs_6_1 ys_1_1_4 =
  (xs_6_1 ys_1_1_4);;
let rec mappend__d8__d0__d1_d3 xs_7_4 ys_1_3_3 =
  (xs_7_4 ys_1_3_3);;
let rec mappend__d8__d0__d1_d4 xs_1_8_9 ys_3_3_5 =
  (xs_1_8_9 ys_3_3_5);;
let rec mappend__d8__d0__d1_d5 xs_9_8 ys_1_7_4 =
  (xs_9_8 ys_1_7_4);;
let rec mappend__d8__d0__d1_d6 xs_2_7 ys_6_0 =
  (xs_2_7 ys_6_0);;
let rec mappend__d8__d0__d1_d7 xs_1_3_0 ys_2_2_6 =
  (xs_1_3_0 ys_2_2_6);;
let rec mappend__d8__d0__d1_d8 xs_2_2 ys_5_1 =
  (xs_2_2 ys_5_1);;
let rec mappend__d8__d0__d1_d9 xs_3_9 ys_8_8 =
  (xs_3_9 ys_8_8);;
let rec mappend__d8__d0__d2 xs_1_3_4 ys_2_3_2 =
  (xs_1_3_4 ys_2_3_2);;
let rec mappend__d8__d0__d2_d0 xs_1_1_5 ys_2_0_3 =
  (xs_1_1_5 ys_2_0_3);;
let rec mappend__d8__d0__d2_d1 xs_8_3 ys_1_5_1 =
  (xs_8_3 ys_1_5_1);;
let rec mappend__d8__d0__d2_d2 xs_1_5_3 ys_2_5_9 =
  (xs_1_5_3 ys_2_5_9);;
let rec mappend__d8__d0__d2_d3 xs_1_1_0 ys_1_9_6 =
  (xs_1_1_0 ys_1_9_6);;
let rec mappend__d8__d0__d3 xs_6_2 ys_1_1_5 =
  (xs_6_2 ys_1_1_5);;
let rec mappend__d8__d0__d4 xs_4_0 ys_8_9 =
  (xs_4_0 ys_8_9);;
let rec mappend__d8__d0__d5 xs_4_8 ys_9_9 =
  (xs_4_8 ys_9_9);;
let rec mappend__d8__d0__d6 xs_9_0 ys_1_5_8 =
  (xs_9_0 ys_1_5_8);;
let rec mappend__d8__d0__d7 xs_5_3 ys_1_0_6 =
  (xs_5_3 ys_1_0_6);;
let rec mappend__d8__d0__d8 xs_8_5 ys_1_5_3 =
  (xs_8_5 ys_1_5_3);;
let rec mappend__d8__d0__d9 xs_1_4_2 ys_2_4_4 =
  (xs_1_4_2 ys_2_4_4);;
let rec mappend__d9__d0__d0 xs_8_7 ys_1_5_5 =
  (match xs_8_7 with
    | `LH_C(h_1_3_6, t_1_3_9) -> 
      (`LH_C(h_1_3_6, ((mappend__d9__d0__d0 t_1_3_9) ys_1_5_5)))
    | `LH_N -> 
      ys_1_5_5);;
let rec mappend__d9__d0__d1 xs_1_1_7 ys_2_0_5 =
  (match xs_1_1_7 with
    | `LH_C(h_1_7_1, t_1_7_4) -> 
      (`LH_C(h_1_7_1, ((mappend__d9__d0__d1 t_1_7_4) ys_2_0_5)))
    | `LH_N -> 
      ys_2_0_5);;
let rec mappend__d9__d0__d1_d0 xs_1_0_0 ys_1_7_6 =
  (match xs_1_0_0 with
    | `LH_C(h_1_5_5, t_1_5_8) -> 
      (`LH_C(h_1_5_5, ((mappend__d9__d0__d1_d0 t_1_5_8) ys_1_7_6)))
    | `LH_N -> 
      ys_1_7_6);;
let rec mappend__d9__d0__d1_d1 xs_1_6_3 ys_2_7_6 =
  (match xs_1_6_3 with
    | `LH_C(h_2_3_6, t_2_4_0) -> 
      (`LH_C(h_2_3_6, ((mappend__d9__d0__d1_d1 t_2_4_0) ys_2_7_6)))
    | `LH_N -> 
      ys_2_7_6);;
let rec mappend__d9__d0__d2 xs_1_5_5 ys_2_6_1 =
  (match xs_1_5_5 with
    | `LH_C(h_2_2_3, t_2_2_6) -> 
      (`LH_C(h_2_2_3, ((mappend__d9__d0__d2 t_2_2_6) ys_2_6_1)))
    | `LH_N -> 
      ys_2_6_1);;
let rec mappend__d9__d0__d3 xs_1_0_1 ys_1_7_9 =
  (match xs_1_0_1 with
    | `LH_C(h_1_5_7, t_1_6_0) -> 
      (`LH_C(h_1_5_7, ((mappend__d9__d0__d3 t_1_6_0) ys_1_7_9)))
    | `LH_N -> 
      ys_1_7_9);;
let rec mappend__d9__d0__d4 xs_1_3_7 ys_2_3_5 =
  (match xs_1_3_7 with
    | `LH_C(h_2_0_7, t_2_1_0) -> 
      (`LH_C(h_2_0_7, ((mappend__d9__d0__d4 t_2_1_0) ys_2_3_5)))
    | `LH_N -> 
      ys_2_3_5);;
let rec mappend__d9__d0__d5 xs_5_6 ys_1_0_9 =
  (match xs_5_6 with
    | `LH_C(h_1_0_0, t_1_0_3) -> 
      (`LH_C(h_1_0_0, ((mappend__d9__d0__d5 t_1_0_3) ys_1_0_9)))
    | `LH_N -> 
      ys_1_0_9);;
let rec mappend__d9__d0__d6 xs_2_4 ys_5_3 =
  (match xs_2_4 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C(h_4_9, ((mappend__d9__d0__d6 t_5_1) ys_5_3)))
    | `LH_N -> 
      ys_5_3);;
let rec mappend__d9__d0__d7 xs_1_5_0 ys_2_5_4 =
  (match xs_1_5_0 with
    | `LH_C(h_2_1_9, t_2_2_2) -> 
      (`LH_C(h_2_1_9, ((mappend__d9__d0__d7 t_2_2_2) ys_2_5_4)))
    | `LH_N -> 
      ys_2_5_4);;
let rec mappend__d9__d0__d8 xs_7_0 ys_1_2_7 =
  (match xs_7_0 with
    | `LH_C(h_1_1_6, t_1_1_9) -> 
      (`LH_C(h_1_1_6, ((mappend__d9__d0__d8 t_1_1_9) ys_1_2_7)))
    | `LH_N -> 
      ys_1_2_7);;
let rec mappend__d9__d0__d9 xs_1_4_0 ys_2_4_0 =
  (match xs_1_4_0 with
    | `LH_C(h_2_1_1, t_2_1_4) -> 
      (`LH_C(h_2_1_1, ((mappend__d9__d0__d9 t_2_1_4) ys_2_4_0)))
    | `LH_N -> 
      ys_2_4_0);;
let rec monthNames__d0__d0__d0 _lh_zip3_arg2_3_1 _lh_zip3_arg3_4_7 =
  (let rec _lh_zip3_LH_C_1_7_4 = (let rec _lh_zip3_LH_C_1_7_5 = (let rec _lh_zip3_LH_C_1_7_6 = (let rec _lh_zip3_LH_C_1_7_7 = (let rec _lh_zip3_LH_C_1_7_8 = (let rec _lh_zip3_LH_C_1_7_9 = (let rec _lh_zip3_LH_C_1_8_0 = (let rec _lh_zip3_LH_C_1_8_1 = (let rec _lh_zip3_LH_C_1_8_2 = (let rec _lh_zip3_LH_C_1_8_3 = (let rec _lh_zip3_LH_C_1_8_4 = (let rec _lh_zip3_LH_C_1_8_5 = (fun _lh_zip3_arg2_1_9 _lh_zip3_arg3_3_5 f_1_0_8 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_7_4 = (`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2_0 _lh_zip3_arg3_3_6 -> 
        (let rec _lh_matchIdent_3_4 = _lh_zip3_arg2_2_0 in
          (((_lh_matchIdent_3_4 _lh_zip3_LH_C_0_7_4) _lh_zip3_LH_C_1_8_5) _lh_zip3_arg3_3_6))))) in
    (let rec _lh_zip3_LH_C_0_7_5 = (`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2_1 _lh_zip3_arg3_3_7 -> 
        (let rec _lh_matchIdent_3_5 = _lh_zip3_arg2_2_1 in
          (((_lh_matchIdent_3_5 _lh_zip3_LH_C_0_7_5) _lh_zip3_LH_C_1_8_4) _lh_zip3_arg3_3_7))))) in
    (let rec _lh_zip3_LH_C_0_7_6 = (`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_2_2 _lh_zip3_arg3_3_8 -> 
        (let rec _lh_matchIdent_3_6 = _lh_zip3_arg2_2_2 in
          (((_lh_matchIdent_3_6 _lh_zip3_LH_C_0_7_6) _lh_zip3_LH_C_1_8_3) _lh_zip3_arg3_3_8))))) in
    (let rec _lh_zip3_LH_C_0_7_7 = (`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))) in
      (fun _lh_zip3_arg2_2_3 _lh_zip3_arg3_3_9 -> 
        (let rec _lh_matchIdent_3_7 = _lh_zip3_arg2_2_3 in
          (((_lh_matchIdent_3_7 _lh_zip3_LH_C_0_7_7) _lh_zip3_LH_C_1_8_2) _lh_zip3_arg3_3_9))))) in
    (let rec _lh_zip3_LH_C_0_7_8 = (`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))) in
      (fun _lh_zip3_arg2_2_4 _lh_zip3_arg3_4_0 -> 
        (let rec _lh_matchIdent_3_8 = _lh_zip3_arg2_2_4 in
          (((_lh_matchIdent_3_8 _lh_zip3_LH_C_0_7_8) _lh_zip3_LH_C_1_8_1) _lh_zip3_arg3_4_0))))) in
    (let rec _lh_zip3_LH_C_0_7_9 = (`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_2_5 _lh_zip3_arg3_4_1 -> 
        (let rec _lh_matchIdent_3_9 = _lh_zip3_arg2_2_5 in
          (((_lh_matchIdent_3_9 _lh_zip3_LH_C_0_7_9) _lh_zip3_LH_C_1_8_0) _lh_zip3_arg3_4_1))))) in
    (let rec _lh_zip3_LH_C_0_8_0 = (`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_2_6 _lh_zip3_arg3_4_2 -> 
        (let rec _lh_matchIdent_4_0 = _lh_zip3_arg2_2_6 in
          (((_lh_matchIdent_4_0 _lh_zip3_LH_C_0_8_0) _lh_zip3_LH_C_1_7_9) _lh_zip3_arg3_4_2))))) in
    (let rec _lh_zip3_LH_C_0_8_1 = (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))) in
      (fun _lh_zip3_arg2_2_7 _lh_zip3_arg3_4_3 -> 
        (let rec _lh_matchIdent_4_1 = _lh_zip3_arg2_2_7 in
          (((_lh_matchIdent_4_1 _lh_zip3_LH_C_0_8_1) _lh_zip3_LH_C_1_7_8) _lh_zip3_arg3_4_3))))) in
    (let rec _lh_zip3_LH_C_0_8_2 = (`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_2_8 _lh_zip3_arg3_4_4 -> 
        (let rec _lh_matchIdent_4_2 = _lh_zip3_arg2_2_8 in
          (((_lh_matchIdent_4_2 _lh_zip3_LH_C_0_8_2) _lh_zip3_LH_C_1_7_7) _lh_zip3_arg3_4_4))))) in
    (let rec _lh_zip3_LH_C_0_8_3 = (`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_2_9 _lh_zip3_arg3_4_5 -> 
        (let rec _lh_matchIdent_4_3 = _lh_zip3_arg2_2_9 in
          (((_lh_matchIdent_4_3 _lh_zip3_LH_C_0_8_3) _lh_zip3_LH_C_1_7_6) _lh_zip3_arg3_4_5))))) in
    (let rec _lh_zip3_LH_C_0_8_4 = (`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_3_0 _lh_zip3_arg3_4_6 -> 
        (let rec _lh_matchIdent_4_4 = _lh_zip3_arg2_3_0 in
          (((_lh_matchIdent_4_4 _lh_zip3_LH_C_0_8_4) _lh_zip3_LH_C_1_7_5) _lh_zip3_arg3_4_6))))) in
    (let rec _lh_zip3_LH_C_0_8_5 = (`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))) in
      (let rec _lh_matchIdent_4_5 = _lh_zip3_arg2_3_1 in
        (((_lh_matchIdent_4_5 _lh_zip3_LH_C_0_8_5) _lh_zip3_LH_C_1_7_4) _lh_zip3_arg3_4_7))));;
let rec pic__d0__d0__d0 _lh_pic_arg1_1 =
  (_lh_pic_arg1_1 99);;
let rec take__d0__d0__d0 n_2_1 ls_5_7 =
  (if (n_2_1 > 0) then
    (match ls_5_7 with
      | `LH_C(h_9_4, t_9_7) -> 
        (`LH_C(h_9_4, ((take__d0__d0__d0 (n_2_1 - 1)) t_9_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1__d0__d0 n_1_6 ls_5_0 =
  (if (n_1_6 > 0) then
    (ls_5_0 n_1_6)
  else
    (fun _lh_zip3_LH_C_0_6_5 _lh_zip3_LH_C_1_6_5 _lh_zip3_arg3_2_8 f_8_3 -> 
      (`LH_N)));;
let rec take__d1__d0__d1 n_3_2 ls_1_0_0 =
  (if (n_3_2 > 0) then
    (ls_1_0_0 n_3_2)
  else
    (fun _lh_zip3_LH_C_0_9_2 _lh_zip3_LH_C_1_9_2 _lh_zip3_arg3_5_5 f_1_4_6 -> 
      (`LH_N)));;
let rec take__d1__d0__d1_d0 n_3_1 ls_9_9 =
  (if (n_3_1 > 0) then
    (ls_9_9 n_3_1)
  else
    (fun _lh_zip3_LH_C_0_9_1 _lh_zip3_LH_C_1_9_1 _lh_zip3_arg3_5_4 f_1_4_5 -> 
      (`LH_N)));;
let rec take__d1__d0__d1_d1 n_3_7 ls_1_1_2 =
  (if (n_3_7 > 0) then
    (ls_1_1_2 n_3_7)
  else
    (fun _lh_zip3_LH_C_0_9_8 _lh_zip3_LH_C_1_9_8 _lh_zip3_arg3_6_0 f_1_6_6 -> 
      (`LH_N)));;
let rec take__d1__d0__d1_d2 n_4_7 ls_1_7_6 =
  (if (n_4_7 > 0) then
    (ls_1_7_6 n_4_7)
  else
    (fun _lh_zip3_LH_C_0_1_4_4 _lh_zip3_LH_C_1_1_4_4 _lh_zip3_arg3_7_0 f_2_6_2 -> 
      (`LH_N)));;
let rec take__d1__d0__d1_d3 n_6 ls_2_0 =
  (if (n_6 > 0) then
    (ls_2_0 n_6)
  else
    (fun _lh_zip3_LH_C_0_5_4 _lh_zip3_LH_C_1_5_4 _lh_zip3_arg3_1_7 f_4_8 -> 
      (`LH_N)));;
let rec take__d1__d0__d2 n_2_7 ls_8_0 =
  (if (n_2_7 > 0) then
    (ls_8_0 n_2_7)
  else
    (fun _lh_zip3_LH_C_0_8_8 _lh_zip3_LH_C_1_8_8 _lh_zip3_arg3_5_0 f_1_2_0 -> 
      (`LH_N)));;
let rec take__d1__d0__d3 n_1_2 ls_4_1 =
  (if (n_1_2 > 0) then
    (ls_4_1 n_1_2)
  else
    (fun _lh_zip3_LH_C_0_5_9 _lh_zip3_LH_C_1_5_9 _lh_zip3_arg3_2_2 f_6_6 -> 
      (`LH_N)));;
let rec take__d1__d0__d4 n_4_1 ls_1_2_7 =
  (if (n_4_1 > 0) then
    (ls_1_2_7 n_4_1)
  else
    (fun _lh_zip3_LH_C_0_1_4_0 _lh_zip3_LH_C_1_1_4_0 _lh_zip3_arg3_6_4 f_1_9_2 -> 
      (`LH_N)));;
let rec take__d1__d0__d5 n_3_3 ls_1_0_4 =
  (if (n_3_3 > 0) then
    (ls_1_0_4 n_3_3)
  else
    (fun _lh_zip3_LH_C_0_9_3 _lh_zip3_LH_C_1_9_3 _lh_zip3_arg3_5_6 f_1_5_3 -> 
      (`LH_N)));;
let rec take__d1__d0__d6 n_4_0 ls_1_2_6 =
  (if (n_4_0 > 0) then
    (ls_1_2_6 n_4_0)
  else
    (fun _lh_zip3_LH_C_0_1_3_9 _lh_zip3_LH_C_1_1_3_9 _lh_zip3_arg3_6_3 f_1_9_1 -> 
      (`LH_N)));;
let rec take__d1__d0__d7 n_1_8 ls_5_3 =
  (if (n_1_8 > 0) then
    (ls_5_3 n_1_8)
  else
    (fun _lh_zip3_LH_C_0_6_6 _lh_zip3_LH_C_1_6_6 _lh_zip3_arg3_2_9 f_8_4 -> 
      (`LH_N)));;
let rec take__d1__d0__d8 n_1_4 ls_4_7 =
  (if (n_1_4 > 0) then
    (ls_4_7 n_1_4)
  else
    (fun _lh_zip3_LH_C_0_6_2 _lh_zip3_LH_C_1_6_2 _lh_zip3_arg3_2_4 f_7_8 -> 
      (`LH_N)));;
let rec take__d1__d0__d9 n_2_0 ls_5_5 =
  (if (n_2_0 > 0) then
    (ls_5_5 n_2_0)
  else
    (fun _lh_zip3_LH_C_0_6_9 _lh_zip3_LH_C_1_6_9 _lh_zip3_arg3_3_1 f_8_9 -> 
      (`LH_N)));;
let rec take__d2__d0__d0 n_4_2 ls_1_2_8 =
  (if (n_4_2 > 0) then
    (match ls_1_2_8 with
      | `LH_C(h_2_1_5, t_2_1_8) -> 
        (`LH_C(h_2_1_5, ((take__d2__d0__d0 (n_4_2 - 1)) t_2_1_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d1 n_1_7 ls_5_1 =
  (if (n_1_7 > 0) then
    (match ls_5_1 with
      | `LH_C(h_8_5, t_8_8) -> 
        (`LH_C(h_8_5, ((take__d2__d0__d1 (n_1_7 - 1)) t_8_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d1_d0 n_3_4 ls_1_0_9 =
  (if (n_3_4 > 0) then
    (match ls_1_0_9 with
      | `LH_C(h_1_7_9, t_1_8_2) -> 
        (`LH_C(h_1_7_9, ((take__d2__d0__d1_d0 (n_3_4 - 1)) t_1_8_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d1_d1 n_3_0 ls_9_6 =
  (if (n_3_0 > 0) then
    (match ls_9_6 with
      | `LH_C(h_1_5_3, t_1_5_6) -> 
        (`LH_C(h_1_5_3, ((take__d2__d0__d1_d1 (n_3_0 - 1)) t_1_5_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d2 n_7 ls_2_3 =
  (if (n_7 > 0) then
    (match ls_2_3 with
      | `LH_C(h_5_1, t_5_3) -> 
        (`LH_C(h_5_1, ((take__d2__d0__d2 (n_7 - 1)) t_5_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d3 n_2_6 ls_7_9 =
  (if (n_2_6 > 0) then
    (match ls_7_9 with
      | `LH_C(h_1_2_4, t_1_2_7) -> 
        (`LH_C(h_1_2_4, ((take__d2__d0__d3 (n_2_6 - 1)) t_1_2_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d4 n_4_4 ls_1_4_9 =
  (if (n_4_4 > 0) then
    (match ls_1_4_9 with
      | `LH_C(h_2_4_0, t_2_4_4) -> 
        (`LH_C(h_2_4_0, ((take__d2__d0__d4 (n_4_4 - 1)) t_2_4_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d5 n_1_0 ls_3_5 =
  (if (n_1_0 > 0) then
    (match ls_3_5 with
      | `LH_C(h_6_3, t_6_6) -> 
        (`LH_C(h_6_3, ((take__d2__d0__d5 (n_1_0 - 1)) t_6_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d6 n_3_8 ls_1_1_3 =
  (if (n_3_8 > 0) then
    (match ls_1_1_3 with
      | `LH_C(h_1_8_6, t_1_8_9) -> 
        (`LH_C(h_1_8_6, ((take__d2__d0__d6 (n_3_8 - 1)) t_1_8_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d7 n_2_8 ls_8_5 =
  (if (n_2_8 > 0) then
    (match ls_8_5 with
      | `LH_C(h_1_3_4, t_1_3_7) -> 
        (`LH_C(h_1_3_4, ((take__d2__d0__d7 (n_2_8 - 1)) t_1_3_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d8 n_2_3 ls_6_3 =
  (if (n_2_3 > 0) then
    (match ls_6_3 with
      | `LH_C(h_1_0_2, t_1_0_5) -> 
        (`LH_C(h_1_0_2, ((take__d2__d0__d8 (n_2_3 - 1)) t_1_0_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2__d0__d9 n_1_1 ls_3_6 =
  (if (n_1_1 > 0) then
    (match ls_3_6 with
      | `LH_C(h_6_6, t_6_9) -> 
        (`LH_C(h_6_6, ((take__d2__d0__d9 (n_1_1 - 1)) t_6_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3__d0__d0__d0 _lh_zip3_arg1_8 _lh_zip3_arg2_3_4 _lh_zip3_arg3_5_3 =
  (let rec _lh_matchIdent_5_2 = _lh_zip3_arg1_8 in
    ((_lh_matchIdent_5_2 _lh_zip3_arg2_3_4) _lh_zip3_arg3_5_3));;
let rec zip3__d0__d0__d1 _lh_zip3_arg1_5 _lh_zip3_arg2_1_8 _lh_zip3_arg3_3_3 =
  (let rec _lh_matchIdent_3_1 = _lh_zip3_arg1_5 in
    ((_lh_matchIdent_3_1 _lh_zip3_arg2_1_8) _lh_zip3_arg3_3_3));;
let rec zip3__d0__d0__d1_d0 _lh_zip3_arg1_2 _lh_zip3_arg2_1_5 _lh_zip3_arg3_2_1 =
  (let rec _lh_matchIdent_2_0 = _lh_zip3_arg1_2 in
    ((_lh_matchIdent_2_0 _lh_zip3_arg2_1_5) _lh_zip3_arg3_2_1));;
let rec zip3__d0__d0__d1_d1 _lh_zip3_arg1_1 _lh_zip3_arg2_1_4 _lh_zip3_arg3_1_8 =
  (let rec _lh_matchIdent_1_5 = _lh_zip3_arg1_1 in
    ((_lh_matchIdent_1_5 _lh_zip3_arg2_1_4) _lh_zip3_arg3_1_8));;
let rec zip3__d0__d0__d1_d2 _lh_zip3_arg1_1_1 _lh_zip3_arg2_3_7 _lh_zip3_arg3_6_6 =
  (let rec _lh_matchIdent_6_1 = _lh_zip3_arg1_1_1 in
    ((_lh_matchIdent_6_1 _lh_zip3_arg2_3_7) _lh_zip3_arg3_6_6));;
let rec zip3__d0__d0__d2 _lh_zip3_arg1_4 _lh_zip3_arg2_1_7 _lh_zip3_arg3_2_6 =
  (let rec _lh_matchIdent_2_4 = _lh_zip3_arg1_4 in
    ((_lh_matchIdent_2_4 _lh_zip3_arg2_1_7) _lh_zip3_arg3_2_6));;
let rec zip3__d0__d0__d3 _lh_zip3_arg1_6 _lh_zip3_arg2_3_2 _lh_zip3_arg3_4_9 =
  (let rec _lh_matchIdent_4_8 = _lh_zip3_arg1_6 in
    ((_lh_matchIdent_4_8 _lh_zip3_arg2_3_2) _lh_zip3_arg3_4_9));;
let rec zip3__d0__d0__d4 _lh_zip3_arg1_1_0 _lh_zip3_arg2_3_6 _lh_zip3_arg3_6_2 =
  (let rec _lh_matchIdent_6_0 = _lh_zip3_arg1_1_0 in
    ((_lh_matchIdent_6_0 _lh_zip3_arg2_3_6) _lh_zip3_arg3_6_2));;
let rec zip3__d0__d0__d5 _lh_zip3_arg1_7 _lh_zip3_arg2_3_3 _lh_zip3_arg3_5_1 =
  (let rec _lh_matchIdent_4_9 = _lh_zip3_arg1_7 in
    ((_lh_matchIdent_4_9 _lh_zip3_arg2_3_3) _lh_zip3_arg3_5_1));;
let rec zip3__d0__d0__d6 _lh_zip3_arg1_1_2 _lh_zip3_arg2_3_8 _lh_zip3_arg3_6_7 =
  (let rec _lh_matchIdent_6_2 = _lh_zip3_arg1_1_2 in
    ((_lh_matchIdent_6_2 _lh_zip3_arg2_3_8) _lh_zip3_arg3_6_7));;
let rec zip3__d0__d0__d7 _lh_zip3_arg1_9 _lh_zip3_arg2_3_5 _lh_zip3_arg3_5_7 =
  (let rec _lh_matchIdent_5_3 = _lh_zip3_arg1_9 in
    ((_lh_matchIdent_5_3 _lh_zip3_arg2_3_5) _lh_zip3_arg3_5_7));;
let rec zip3__d0__d0__d8 _lh_zip3_arg1_1_3 _lh_zip3_arg2_3_9 _lh_zip3_arg3_6_9 =
  (let rec _lh_matchIdent_6_5 = _lh_zip3_arg1_1_3 in
    ((_lh_matchIdent_6_5 _lh_zip3_arg2_3_9) _lh_zip3_arg3_6_9));;
let rec zip3__d0__d0__d9 _lh_zip3_arg1_3 _lh_zip3_arg2_1_6 _lh_zip3_arg3_2_5 =
  (let rec _lh_matchIdent_2_3 = _lh_zip3_arg1_3 in
    ((_lh_matchIdent_2_3 _lh_zip3_arg2_1_6) _lh_zip3_arg3_2_5));;
let rec zipWith__d0__d0__d0 f_1_5_1 xs_1_0_7 ys_1_9_1 =
  (match xs_1_0_7 with
    | `LH_C(hx_1_2, tx_1_2) -> 
      (match ys_1_9_1 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_1_5_1 hx_1_2) hy_1_0), (((zipWith__d0__d0__d0 f_1_5_1) tx_1_2) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d1__d0__d0 f_1_3_4 xs_9_2 ys_1_6_4 =
  ((xs_9_2 f_1_3_4) ys_1_6_4);;
let rec zipWith__d1__d0__d1 f_1_2_8 xs_8_6 ys_1_5_4 =
  ((xs_8_6 f_1_2_8) ys_1_5_4);;
let rec zipWith__d2__d0__d0 f_7_2 xs_3_4 ys_8_1 =
  ((xs_3_4 f_7_2) ys_8_1);;
let rec zipWith__d2__d0__d1 f_1_1_1 xs_7_1 ys_1_2_8 =
  ((xs_7_1 f_1_1_1) ys_1_2_8);;
let rec zipWith__d3__d0__d0 f_1_9_3 xs_1_4_4 ys_2_4_6 =
  (match xs_1_4_4 with
    | `LH_C(hx_1_5, tx_1_5) -> 
      (match ys_2_4_6 with
        | `LH_C(hy_1_3, ty_1_3) -> 
          (`LH_C(((f_1_9_3 hx_1_5) hy_1_3), (((zipWith__d3__d0__d0 f_1_9_3) tx_1_5) ty_1_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d1 f_1_1_9 xs_7_8 ys_1_3_7 =
  (match xs_7_8 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_1_3_7 with
        | `LH_C(hy_6, ty_6) -> 
          (`LH_C(((f_1_1_9 hx_8) hy_6), (((zipWith__d3__d0__d1 f_1_1_9) tx_8) ty_6)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d1_d0 f_1_5_0 xs_1_0_6 ys_1_9_0 =
  (match xs_1_0_6 with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match ys_1_9_0 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_5_0 hx_1_1) hy_9), (((zipWith__d3__d0__d1_d0 f_1_5_0) tx_1_1) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d1_d1 f_5_9 xs_2_8 ys_6_3 =
  (match xs_2_8 with
    | `LH_C(hx_6, tx_6) -> 
      (match ys_6_3 with
        | `LH_C(hy_4, ty_4) -> 
          (`LH_C(((f_5_9 hx_6) hy_4), (((zipWith__d3__d0__d1_d1 f_5_9) tx_6) ty_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d2 f_2_4_1 xs_1_7_9 ys_3_1_3 =
  (match xs_1_7_9 with
    | `LH_C(hx_1_9, tx_1_9) -> 
      (match ys_3_1_3 with
        | `LH_C(hy_1_6, ty_1_6) -> 
          (`LH_C(((f_2_4_1 hx_1_9) hy_1_6), (((zipWith__d3__d0__d2 f_2_4_1) tx_1_9) ty_1_6)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d3 f_2_5_5 xs_1_8_4 ys_3_2_4 =
  (match xs_1_8_4 with
    | `LH_C(hx_2_0, tx_2_0) -> 
      (match ys_3_2_4 with
        | `LH_C(hy_1_7, ty_1_7) -> 
          (`LH_C(((f_2_5_5 hx_2_0) hy_1_7), (((zipWith__d3__d0__d3 f_2_5_5) tx_2_0) ty_1_7)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d4 f_2_4_0 xs_1_7_8 ys_3_1_2 =
  (match xs_1_7_8 with
    | `LH_C(hx_1_8, tx_1_8) -> 
      (match ys_3_1_2 with
        | `LH_C(hy_1_5, ty_1_5) -> 
          (`LH_C(((f_2_4_0 hx_1_8) hy_1_5), (((zipWith__d3__d0__d4 f_2_4_0) tx_1_8) ty_1_5)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d5 f_7_1 xs_3_3 ys_8_0 =
  (match xs_3_3 with
    | `LH_C(hx_7, tx_7) -> 
      (match ys_8_0 with
        | `LH_C(hy_5, ty_5) -> 
          (`LH_C(((f_7_1 hx_7) hy_5), (((zipWith__d3__d0__d5 f_7_1) tx_7) ty_5)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d6 f_1_6_3 xs_1_2_3 ys_2_1_7 =
  (match xs_1_2_3 with
    | `LH_C(hx_1_3, tx_1_3) -> 
      (match ys_2_1_7 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_1_6_3 hx_1_3) hy_1_1), (((zipWith__d3__d0__d6 f_1_6_3) tx_1_3) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d7 f_1_4_0 xs_1_0_2 ys_1_8_0 =
  (match xs_1_0_2 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_1_8_0 with
        | `LH_C(hy_7, ty_7) -> 
          (`LH_C(((f_1_4_0 hx_9) hy_7), (((zipWith__d3__d0__d7 f_1_4_0) tx_9) ty_7)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d8 f_1_8_7 xs_1_3_9 ys_2_3_7 =
  (match xs_1_3_9 with
    | `LH_C(hx_1_4, tx_1_4) -> 
      (match ys_2_3_7 with
        | `LH_C(hy_1_2, ty_1_2) -> 
          (`LH_C(((f_1_8_7 hx_1_4) hy_1_2), (((zipWith__d3__d0__d8 f_1_8_7) tx_1_4) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3__d0__d9 f_1_4_8 xs_1_0_5 ys_1_8_7 =
  (match xs_1_0_5 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_1_8_7 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_4_8 hx_1_0) hy_8), (((zipWith__d3__d0__d9 f_1_4_8) tx_1_0) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner__d0__d0__d0 _lh_banner_arg1_1 =
  ((mappend__d2__d0__d0 (let rec t_1_2_8 = (fun ys_1_3_8 -> 
    ys_1_3_8) in
    (let rec h_1_2_5 = ((cjustify__d0__d0__d0 75) (string_of_int _lh_banner_arg1_1)) in
      (fun ys_1_3_9 -> 
        (let rec t_1_2_9 = ((mappend__d2__d0__d1 t_1_2_8) ys_1_3_9) in
          (let rec h_1_2_6 = h_1_2_5 in
            (fun ys_1_4_0 -> 
              (`LH_C(h_1_2_6, ((mappend__d1_d5__d0__d1 t_1_2_9) ys_1_4_0)))))))))) (emptyPic__d0__d0__d0 (let rec _lh_emptyPic_LH_P2_1_5 = 75 in
    (let rec _lh_emptyPic_LH_P2_0_5 = 1 in
      (fun _lh_dummy_2_3 -> 
        ((copy__d2__d0__d0 _lh_emptyPic_LH_P2_0_5) ((copy__d3__d0__d0 _lh_emptyPic_LH_P2_1_5) ' ')))))))
and block__d0__d0__d0 _lh_block_arg1_4 _lh_funcomp_x_1_1 =
  ((fun _lh_funcomp_x_1_2 -> 
    (stack__d0__d0__d0 ((map__d0__d0__d1 spread__d0__d0__d0) _lh_funcomp_x_1_2))) ((groop__d0__d0__d0 _lh_block_arg1_4) _lh_funcomp_x_1_1))
and block__d1__d0__d0 _lh_block_arg1_1_3 _lh_funcomp_x_3_2 =
  ((fun _lh_funcomp_x_3_3 -> 
    (stack__d1__d0__d0 ((map__d3__d0__d1 spread__d1__d0__d0) _lh_funcomp_x_3_3))) ((groop__d1__d0__d0 _lh_block_arg1_1_3) _lh_funcomp_x_3_2))
and block__d1__d0__d1 _lh_block_arg1_1_0 _lh_funcomp_x_2_3 =
  ((fun _lh_funcomp_x_2_4 -> 
    (stack__d1__d0__d1 ((map__d3__d0__d3 spread__d1__d0__d1) _lh_funcomp_x_2_4))) ((groop__d1__d0__d1 _lh_block_arg1_1_0) _lh_funcomp_x_2_3))
and block__d1__d0__d1_d0 _lh_block_arg1_1_2 _lh_funcomp_x_3_0 =
  ((fun _lh_funcomp_x_3_1 -> 
    (stack__d1__d0__d1_d0 ((map__d3__d0__d2_d1 spread__d1__d0__d1_d0) _lh_funcomp_x_3_1))) ((groop__d1__d0__d1_d0 _lh_block_arg1_1_2) _lh_funcomp_x_3_0))
and block__d1__d0__d1_d1 _lh_block_arg1_7 _lh_funcomp_x_1_7 =
  ((fun _lh_funcomp_x_1_8 -> 
    (stack__d1__d0__d1_d1 ((map__d3__d0__d2_d3 spread__d1__d0__d1_d1) _lh_funcomp_x_1_8))) ((groop__d1__d0__d1_d1 _lh_block_arg1_7) _lh_funcomp_x_1_7))
and block__d1__d0__d2 _lh_block_arg1_1_4 _lh_funcomp_x_3_4 =
  ((fun _lh_funcomp_x_3_5 -> 
    (stack__d1__d0__d2 ((map__d3__d0__d5 spread__d1__d0__d2) _lh_funcomp_x_3_5))) ((groop__d1__d0__d2 _lh_block_arg1_1_4) _lh_funcomp_x_3_4))
and block__d1__d0__d3 _lh_block_arg1_1_1 _lh_funcomp_x_2_5 =
  ((fun _lh_funcomp_x_2_6 -> 
    (stack__d1__d0__d3 ((map__d3__d0__d7 spread__d1__d0__d3) _lh_funcomp_x_2_6))) ((groop__d1__d0__d3 _lh_block_arg1_1_1) _lh_funcomp_x_2_5))
and block__d1__d0__d4 _lh_block_arg1_2 _lh_funcomp_x_7 =
  ((fun _lh_funcomp_x_8 -> 
    (stack__d1__d0__d4 ((map__d3__d0__d9 spread__d1__d0__d4) _lh_funcomp_x_8))) ((groop__d1__d0__d4 _lh_block_arg1_2) _lh_funcomp_x_7))
and block__d1__d0__d5 _lh_block_arg1_6 _lh_funcomp_x_1_5 =
  ((fun _lh_funcomp_x_1_6 -> 
    (stack__d1__d0__d5 ((map__d3__d0__d1_d1 spread__d1__d0__d5) _lh_funcomp_x_1_6))) ((groop__d1__d0__d5 _lh_block_arg1_6) _lh_funcomp_x_1_5))
and block__d1__d0__d6 _lh_block_arg1_9 _lh_funcomp_x_2_1 =
  ((fun _lh_funcomp_x_2_2 -> 
    (stack__d1__d0__d6 ((map__d3__d0__d1_d3 spread__d1__d0__d6) _lh_funcomp_x_2_2))) ((groop__d1__d0__d6 _lh_block_arg1_9) _lh_funcomp_x_2_1))
and block__d1__d0__d7 _lh_block_arg1_5 _lh_funcomp_x_1_3 =
  ((fun _lh_funcomp_x_1_4 -> 
    (stack__d1__d0__d7 ((map__d3__d0__d1_d5 spread__d1__d0__d7) _lh_funcomp_x_1_4))) ((groop__d1__d0__d7 _lh_block_arg1_5) _lh_funcomp_x_1_3))
and block__d1__d0__d8 _lh_block_arg1_3 _lh_funcomp_x_9 =
  ((fun _lh_funcomp_x_1_0 -> 
    (stack__d1__d0__d8 ((map__d3__d0__d1_d7 spread__d1__d0__d8) _lh_funcomp_x_1_0))) ((groop__d1__d0__d8 _lh_block_arg1_3) _lh_funcomp_x_9))
and block__d1__d0__d9 _lh_block_arg1_8 _lh_funcomp_x_1_9 =
  ((fun _lh_funcomp_x_2_0 -> 
    (stack__d1__d0__d9 ((map__d3__d0__d1_d9 spread__d1__d0__d9) _lh_funcomp_x_2_0))) ((groop__d1__d0__d9 _lh_block_arg1_8) _lh_funcomp_x_1_9))
and body__d0__d0__d0 _lh_funcomp_x_2_7 =
  ((fun _lh_funcomp_x_2_8 -> 
    ((block__d0__d0__d0 3) ((map__d1__d0__d0 (fun _lh_funcomp_x_2_9 -> 
      (pad__d0__d0__d0 (pic__d0__d0__d0 _lh_funcomp_x_2_9)))) _lh_funcomp_x_2_8))) (months__d0__d0__d0 _lh_funcomp_x_2_7))
and cal__d0__d0__d0 _lh_cal_arg1_1 =
  (unlines__d0__d0__d0 ((mappend__d1_d5__d0__d2 (banner__d0__d0__d0 _lh_cal_arg1_1)) (body__d0__d0__d0 _lh_cal_arg1_1)))
and cjustify__d0__d0__d0 _lh_cjustify_arg1_2 _lh_cjustify_arg2_2 =
  (let rec m_2 = (_lh_cjustify_arg1_2 - (length__d0__d0__d0 _lh_cjustify_arg2_2)) in
    (let rec halfm_2 = (m_2 / 2) in
      ((mappend__d0__d0__d0 ((mappend__d1__d0__d0 (space__d0__d0__d0 halfm_2)) _lh_cjustify_arg2_2)) (space__d1__d0__d0 (m_2 - halfm_2)))))
and cjustify__d1__d0__d0 _lh_cjustify_arg1_6 _lh_cjustify_arg2_6 =
  (let rec m_6 = (_lh_cjustify_arg1_6 - (length__d2__d0__d0 _lh_cjustify_arg2_6)) in
    (let rec halfm_6 = (m_6 / 2) in
      ((mappend__d1_d3__d0__d0 ((mappend__d1_d4__d0__d0 (space__d3__d0__d0 halfm_6)) _lh_cjustify_arg2_6)) (space__d4__d0__d0 (m_6 - halfm_6)))))
and cjustify__d1__d0__d1 _lh_cjustify_arg1_1_1 _lh_cjustify_arg2_1_1 =
  (let rec m_1_1 = (_lh_cjustify_arg1_1_1 - (length__d2__d0__d1 _lh_cjustify_arg2_1_1)) in
    (let rec halfm_1_1 = (m_1_1 / 2) in
      ((mappend__d1_d3__d0__d1 ((mappend__d1_d4__d0__d2 (space__d3__d0__d1 halfm_1_1)) _lh_cjustify_arg2_1_1)) (space__d4__d0__d1 (m_1_1 - halfm_1_1)))))
and cjustify__d1__d0__d1_d0 _lh_cjustify_arg1_1_2 _lh_cjustify_arg2_1_2 =
  (let rec m_1_2 = (_lh_cjustify_arg1_1_2 - (length__d2__d0__d1_d0 _lh_cjustify_arg2_1_2)) in
    (let rec halfm_1_2 = (m_1_2 / 2) in
      ((mappend__d1_d3__d0__d1_d0 ((mappend__d1_d4__d0__d2_d0 (space__d3__d0__d1_d0 halfm_1_2)) _lh_cjustify_arg2_1_2)) (space__d4__d0__d1_d0 (m_1_2 - halfm_1_2)))))
and cjustify__d1__d0__d1_d1 _lh_cjustify_arg1_5 _lh_cjustify_arg2_5 =
  (let rec m_5 = (_lh_cjustify_arg1_5 - (length__d2__d0__d1_d1 _lh_cjustify_arg2_5)) in
    (let rec halfm_5 = (m_5 / 2) in
      ((mappend__d1_d3__d0__d1_d1 ((mappend__d1_d4__d0__d2_d2 (space__d3__d0__d1_d1 halfm_5)) _lh_cjustify_arg2_5)) (space__d4__d0__d1_d1 (m_5 - halfm_5)))))
and cjustify__d1__d0__d2 _lh_cjustify_arg1_9 _lh_cjustify_arg2_9 =
  (let rec m_9 = (_lh_cjustify_arg1_9 - (length__d2__d0__d2 _lh_cjustify_arg2_9)) in
    (let rec halfm_9 = (m_9 / 2) in
      ((mappend__d1_d3__d0__d2 ((mappend__d1_d4__d0__d4 (space__d3__d0__d2 halfm_9)) _lh_cjustify_arg2_9)) (space__d4__d0__d2 (m_9 - halfm_9)))))
and cjustify__d1__d0__d3 _lh_cjustify_arg1_1_0 _lh_cjustify_arg2_1_0 =
  (let rec m_1_0 = (_lh_cjustify_arg1_1_0 - (length__d2__d0__d3 _lh_cjustify_arg2_1_0)) in
    (let rec halfm_1_0 = (m_1_0 / 2) in
      ((mappend__d1_d3__d0__d3 ((mappend__d1_d4__d0__d6 (space__d3__d0__d3 halfm_1_0)) _lh_cjustify_arg2_1_0)) (space__d4__d0__d3 (m_1_0 - halfm_1_0)))))
and cjustify__d1__d0__d4 _lh_cjustify_arg1_1_3 _lh_cjustify_arg2_1_3 =
  (let rec m_1_3 = (_lh_cjustify_arg1_1_3 - (length__d2__d0__d4 _lh_cjustify_arg2_1_3)) in
    (let rec halfm_1_3 = (m_1_3 / 2) in
      ((mappend__d1_d3__d0__d4 ((mappend__d1_d4__d0__d8 (space__d3__d0__d4 halfm_1_3)) _lh_cjustify_arg2_1_3)) (space__d4__d0__d4 (m_1_3 - halfm_1_3)))))
and cjustify__d1__d0__d5 _lh_cjustify_arg1_3 _lh_cjustify_arg2_3 =
  (let rec m_3 = (_lh_cjustify_arg1_3 - (length__d2__d0__d5 _lh_cjustify_arg2_3)) in
    (let rec halfm_3 = (m_3 / 2) in
      ((mappend__d1_d3__d0__d5 ((mappend__d1_d4__d0__d1_d0 (space__d3__d0__d5 halfm_3)) _lh_cjustify_arg2_3)) (space__d4__d0__d5 (m_3 - halfm_3)))))
and cjustify__d1__d0__d6 _lh_cjustify_arg1_8 _lh_cjustify_arg2_8 =
  (let rec m_8 = (_lh_cjustify_arg1_8 - (length__d2__d0__d6 _lh_cjustify_arg2_8)) in
    (let rec halfm_8 = (m_8 / 2) in
      ((mappend__d1_d3__d0__d6 ((mappend__d1_d4__d0__d1_d2 (space__d3__d0__d6 halfm_8)) _lh_cjustify_arg2_8)) (space__d4__d0__d6 (m_8 - halfm_8)))))
and cjustify__d1__d0__d7 _lh_cjustify_arg1_4 _lh_cjustify_arg2_4 =
  (let rec m_4 = (_lh_cjustify_arg1_4 - (length__d2__d0__d7 _lh_cjustify_arg2_4)) in
    (let rec halfm_4 = (m_4 / 2) in
      ((mappend__d1_d3__d0__d7 ((mappend__d1_d4__d0__d1_d4 (space__d3__d0__d7 halfm_4)) _lh_cjustify_arg2_4)) (space__d4__d0__d7 (m_4 - halfm_4)))))
and cjustify__d1__d0__d8 _lh_cjustify_arg1_1_4 _lh_cjustify_arg2_1_4 =
  (let rec m_1_4 = (_lh_cjustify_arg1_1_4 - (length__d2__d0__d8 _lh_cjustify_arg2_1_4)) in
    (let rec halfm_1_4 = (m_1_4 / 2) in
      ((mappend__d1_d3__d0__d8 ((mappend__d1_d4__d0__d1_d6 (space__d3__d0__d8 halfm_1_4)) _lh_cjustify_arg2_1_4)) (space__d4__d0__d8 (m_1_4 - halfm_1_4)))))
and cjustify__d1__d0__d9 _lh_cjustify_arg1_7 _lh_cjustify_arg2_7 =
  (let rec m_7 = (_lh_cjustify_arg1_7 - (length__d2__d0__d9 _lh_cjustify_arg2_7)) in
    (let rec halfm_7 = (m_7 / 2) in
      ((mappend__d1_d3__d0__d9 ((mappend__d1_d4__d0__d1_d8 (space__d3__d0__d9 halfm_7)) _lh_cjustify_arg2_7)) (space__d4__d0__d9 (m_7 - halfm_7)))))
and copy__d0__d0__d0 _lh_copy_arg1_4_3 _lh_copy_arg2_4_3 _lh_popOutId_0_4_9 =
  (if (_lh_copy_arg1_4_3 > 0) then
    (let rec t_2_3_0 = ((copy__d0__d0__d0 (_lh_copy_arg1_4_3 - 1)) _lh_copy_arg2_4_3) in
      (let rec h_2_2_7 = _lh_copy_arg2_4_3 in
        (`LH_C(h_2_2_7, ((mappend__d1__d0__d1 t_2_3_0) _lh_popOutId_0_4_9)))))
  else
    _lh_popOutId_0_4_9)
and copy__d1_d0__d0__d0 _lh_copy_arg1_2_3 _lh_copy_arg2_2_3 _lh_popOutId_0_5_2 =
  (if (_lh_copy_arg1_2_3 > 0) then
    (let rec t_1_3_1 = ((copy__d1_d0__d0__d0 (_lh_copy_arg1_2_3 - 1)) _lh_copy_arg2_2_3) in
      (let rec h_1_2_8 = _lh_copy_arg2_2_3 in
        (`LH_C(h_1_2_8, ((mappend__d1_d1__d0__d1 t_1_3_1) _lh_popOutId_0_5_2)))))
  else
    _lh_popOutId_0_5_2)
and copy__d1_d0__d0__d1 _lh_copy_arg1_3_9 _lh_copy_arg2_3_9 _lh_popOutId_0_1_9 =
  (if (_lh_copy_arg1_3_9 > 0) then
    (let rec t_2_2_3 = ((copy__d1_d0__d0__d1 (_lh_copy_arg1_3_9 - 1)) _lh_copy_arg2_3_9) in
      (let rec h_2_2_0 = _lh_copy_arg2_3_9 in
        (`LH_C(h_2_2_0, ((mappend__d1_d1__d0__d3 t_2_2_3) _lh_popOutId_0_1_9)))))
  else
    _lh_popOutId_0_1_9)
and copy__d1_d0__d0__d1_d0 _lh_copy_arg1_5_0 _lh_copy_arg2_5_0 _lh_popOutId_0_4_8 =
  (if (_lh_copy_arg1_5_0 > 0) then
    (let rec t_2_5_7 = ((copy__d1_d0__d0__d1_d0 (_lh_copy_arg1_5_0 - 1)) _lh_copy_arg2_5_0) in
      (let rec h_2_5_3 = _lh_copy_arg2_5_0 in
        (`LH_C(h_2_5_3, ((mappend__d1_d1__d0__d2_d1 t_2_5_7) _lh_popOutId_0_4_8)))))
  else
    _lh_popOutId_0_4_8)
and copy__d1_d0__d0__d1_d1 _lh_copy_arg1_1_6 _lh_copy_arg2_1_6 _lh_popOutId_0_2 =
  (if (_lh_copy_arg1_1_6 > 0) then
    (let rec t_6_7 = ((copy__d1_d0__d0__d1_d1 (_lh_copy_arg1_1_6 - 1)) _lh_copy_arg2_1_6) in
      (let rec h_6_4 = _lh_copy_arg2_1_6 in
        (`LH_C(h_6_4, ((mappend__d1_d1__d0__d2_d3 t_6_7) _lh_popOutId_0_2)))))
  else
    _lh_popOutId_0_2)
and copy__d1_d0__d0__d2 _lh_copy_arg1_5_1 _lh_copy_arg2_5_1 _lh_popOutId_0_3_1 =
  (if (_lh_copy_arg1_5_1 > 0) then
    (let rec t_2_6_7 = ((copy__d1_d0__d0__d2 (_lh_copy_arg1_5_1 - 1)) _lh_copy_arg2_5_1) in
      (let rec h_2_6_3 = _lh_copy_arg2_5_1 in
        (`LH_C(h_2_6_3, ((mappend__d1_d1__d0__d5 t_2_6_7) _lh_popOutId_0_3_1)))))
  else
    _lh_popOutId_0_3_1)
and copy__d1_d0__d0__d3 _lh_copy_arg1_2_8 _lh_copy_arg2_2_8 _lh_popOutId_0_2_8 =
  (if (_lh_copy_arg1_2_8 > 0) then
    (let rec t_1_4_7 = ((copy__d1_d0__d0__d3 (_lh_copy_arg1_2_8 - 1)) _lh_copy_arg2_2_8) in
      (let rec h_1_4_4 = _lh_copy_arg2_2_8 in
        (`LH_C(h_1_4_4, ((mappend__d1_d1__d0__d7 t_1_4_7) _lh_popOutId_0_2_8)))))
  else
    _lh_popOutId_0_2_8)
and copy__d1_d0__d0__d4 _lh_copy_arg1_3_8 _lh_copy_arg2_3_8 _lh_popOutId_0_1 =
  (if (_lh_copy_arg1_3_8 > 0) then
    (let rec t_2_1_3 = ((copy__d1_d0__d0__d4 (_lh_copy_arg1_3_8 - 1)) _lh_copy_arg2_3_8) in
      (let rec h_2_1_0 = _lh_copy_arg2_3_8 in
        (`LH_C(h_2_1_0, ((mappend__d1_d1__d0__d9 t_2_1_3) _lh_popOutId_0_1)))))
  else
    _lh_popOutId_0_1)
and copy__d1_d0__d0__d5 _lh_copy_arg1_3_3 _lh_copy_arg2_3_3 _lh_popOutId_0_4_1 =
  (if (_lh_copy_arg1_3_3 > 0) then
    (let rec t_1_7_5 = ((copy__d1_d0__d0__d5 (_lh_copy_arg1_3_3 - 1)) _lh_copy_arg2_3_3) in
      (let rec h_1_7_2 = _lh_copy_arg2_3_3 in
        (`LH_C(h_1_7_2, ((mappend__d1_d1__d0__d1_d1 t_1_7_5) _lh_popOutId_0_4_1)))))
  else
    _lh_popOutId_0_4_1)
and copy__d1_d0__d0__d6 _lh_copy_arg1_2_2 _lh_copy_arg2_2_2 _lh_popOutId_0_5_5 =
  (if (_lh_copy_arg1_2_2 > 0) then
    (let rec t_1_2_3 = ((copy__d1_d0__d0__d6 (_lh_copy_arg1_2_2 - 1)) _lh_copy_arg2_2_2) in
      (let rec h_1_2_0 = _lh_copy_arg2_2_2 in
        (`LH_C(h_1_2_0, ((mappend__d1_d1__d0__d1_d3 t_1_2_3) _lh_popOutId_0_5_5)))))
  else
    _lh_popOutId_0_5_5)
and copy__d1_d0__d0__d7 _lh_copy_arg1_3_4 _lh_copy_arg2_3_4 _lh_popOutId_0_4_3 =
  (if (_lh_copy_arg1_3_4 > 0) then
    (let rec t_1_8_1 = ((copy__d1_d0__d0__d7 (_lh_copy_arg1_3_4 - 1)) _lh_copy_arg2_3_4) in
      (let rec h_1_7_8 = _lh_copy_arg2_3_4 in
        (`LH_C(h_1_7_8, ((mappend__d1_d1__d0__d1_d5 t_1_8_1) _lh_popOutId_0_4_3)))))
  else
    _lh_popOutId_0_4_3)
and copy__d1_d0__d0__d8 _lh_copy_arg1_5_7 _lh_copy_arg2_5_7 _lh_popOutId_0_3_0 =
  (if (_lh_copy_arg1_5_7 > 0) then
    (let rec t_2_7_7 = ((copy__d1_d0__d0__d8 (_lh_copy_arg1_5_7 - 1)) _lh_copy_arg2_5_7) in
      (let rec h_2_7_3 = _lh_copy_arg2_5_7 in
        (`LH_C(h_2_7_3, ((mappend__d1_d1__d0__d1_d7 t_2_7_7) _lh_popOutId_0_3_0)))))
  else
    _lh_popOutId_0_3_0)
and copy__d1_d0__d0__d9 _lh_copy_arg1_2_4 _lh_copy_arg2_2_4 _lh_popOutId_0_6 =
  (if (_lh_copy_arg1_2_4 > 0) then
    (let rec t_1_3_5 = ((copy__d1_d0__d0__d9 (_lh_copy_arg1_2_4 - 1)) _lh_copy_arg2_2_4) in
      (let rec h_1_3_2 = _lh_copy_arg2_2_4 in
        (`LH_C(h_1_3_2, ((mappend__d1_d1__d0__d1_d9 t_1_3_5) _lh_popOutId_0_6)))))
  else
    _lh_popOutId_0_6)
and copy__d1_d1__d0__d0 _lh_copy_arg1_4_9 _lh_copy_arg2_4_9 _lh_popOutId_0_4_6 =
  (if (_lh_copy_arg1_4_9 > 0) then
    (let rec t_2_5_5 = ((copy__d1_d1__d0__d0 (_lh_copy_arg1_4_9 - 1)) _lh_copy_arg2_4_9) in
      (let rec h_2_5_1 = _lh_copy_arg2_4_9 in
        (`LH_C(h_2_5_1, ((mappend__d1_d4__d0__d1 t_2_5_5) _lh_popOutId_0_4_6)))))
  else
    _lh_popOutId_0_4_6)
and copy__d1_d1__d0__d1 _lh_copy_arg1_5_3 _lh_copy_arg2_5_3 _lh_popOutId_0_1_1 =
  (if (_lh_copy_arg1_5_3 > 0) then
    (let rec t_2_7_3 = ((copy__d1_d1__d0__d1 (_lh_copy_arg1_5_3 - 1)) _lh_copy_arg2_5_3) in
      (let rec h_2_6_9 = _lh_copy_arg2_5_3 in
        (`LH_C(h_2_6_9, ((mappend__d1_d4__d0__d3 t_2_7_3) _lh_popOutId_0_1_1)))))
  else
    _lh_popOutId_0_1_1)
and copy__d1_d1__d0__d1_d0 _lh_copy_arg1_2_0 _lh_copy_arg2_2_0 _lh_popOutId_0_1_7 =
  (if (_lh_copy_arg1_2_0 > 0) then
    (let rec t_1_1_3 = ((copy__d1_d1__d0__d1_d0 (_lh_copy_arg1_2_0 - 1)) _lh_copy_arg2_2_0) in
      (let rec h_1_1_0 = _lh_copy_arg2_2_0 in
        (`LH_C(h_1_1_0, ((mappend__d1_d4__d0__d2_d1 t_1_1_3) _lh_popOutId_0_1_7)))))
  else
    _lh_popOutId_0_1_7)
and copy__d1_d1__d0__d1_d1 _lh_copy_arg1_3_6 _lh_copy_arg2_3_6 _lh_popOutId_0_9 =
  (if (_lh_copy_arg1_3_6 > 0) then
    (let rec t_1_9_1 = ((copy__d1_d1__d0__d1_d1 (_lh_copy_arg1_3_6 - 1)) _lh_copy_arg2_3_6) in
      (let rec h_1_8_8 = _lh_copy_arg2_3_6 in
        (`LH_C(h_1_8_8, ((mappend__d1_d4__d0__d2_d3 t_1_9_1) _lh_popOutId_0_9)))))
  else
    _lh_popOutId_0_9)
and copy__d1_d1__d0__d2 _lh_copy_arg1_4_7 _lh_copy_arg2_4_7 _lh_popOutId_0_4_5 =
  (if (_lh_copy_arg1_4_7 > 0) then
    (let rec t_2_5_0 = ((copy__d1_d1__d0__d2 (_lh_copy_arg1_4_7 - 1)) _lh_copy_arg2_4_7) in
      (let rec h_2_4_6 = _lh_copy_arg2_4_7 in
        (`LH_C(h_2_4_6, ((mappend__d1_d4__d0__d5 t_2_5_0) _lh_popOutId_0_4_5)))))
  else
    _lh_popOutId_0_4_5)
and copy__d1_d1__d0__d3 _lh_copy_arg1_4_8 _lh_copy_arg2_4_8 _lh_popOutId_0_5 =
  (if (_lh_copy_arg1_4_8 > 0) then
    (let rec t_2_5_2 = ((copy__d1_d1__d0__d3 (_lh_copy_arg1_4_8 - 1)) _lh_copy_arg2_4_8) in
      (let rec h_2_4_8 = _lh_copy_arg2_4_8 in
        (`LH_C(h_2_4_8, ((mappend__d1_d4__d0__d7 t_2_5_2) _lh_popOutId_0_5)))))
  else
    _lh_popOutId_0_5)
and copy__d1_d1__d0__d4 _lh_copy_arg1_3_1 _lh_copy_arg2_3_1 _lh_popOutId_0_2_6 =
  (if (_lh_copy_arg1_3_1 > 0) then
    (let rec t_1_6_7 = ((copy__d1_d1__d0__d4 (_lh_copy_arg1_3_1 - 1)) _lh_copy_arg2_3_1) in
      (let rec h_1_6_4 = _lh_copy_arg2_3_1 in
        (`LH_C(h_1_6_4, ((mappend__d1_d4__d0__d9 t_1_6_7) _lh_popOutId_0_2_6)))))
  else
    _lh_popOutId_0_2_6)
and copy__d1_d1__d0__d5 _lh_copy_arg1_2_1 _lh_copy_arg2_2_1 _lh_popOutId_0_2_1 =
  (if (_lh_copy_arg1_2_1 > 0) then
    (let rec t_1_1_7 = ((copy__d1_d1__d0__d5 (_lh_copy_arg1_2_1 - 1)) _lh_copy_arg2_2_1) in
      (let rec h_1_1_4 = _lh_copy_arg2_2_1 in
        (`LH_C(h_1_1_4, ((mappend__d1_d4__d0__d1_d1 t_1_1_7) _lh_popOutId_0_2_1)))))
  else
    _lh_popOutId_0_2_1)
and copy__d1_d1__d0__d6 _lh_copy_arg1_2_9 _lh_copy_arg2_2_9 _lh_popOutId_0_1_0 =
  (if (_lh_copy_arg1_2_9 > 0) then
    (let rec t_1_5_9 = ((copy__d1_d1__d0__d6 (_lh_copy_arg1_2_9 - 1)) _lh_copy_arg2_2_9) in
      (let rec h_1_5_6 = _lh_copy_arg2_2_9 in
        (`LH_C(h_1_5_6, ((mappend__d1_d4__d0__d1_d3 t_1_5_9) _lh_popOutId_0_1_0)))))
  else
    _lh_popOutId_0_1_0)
and copy__d1_d1__d0__d7 _lh_copy_arg1_4_2 _lh_copy_arg2_4_2 _lh_popOutId_0_4_2 =
  (if (_lh_copy_arg1_4_2 > 0) then
    (let rec t_2_2_7 = ((copy__d1_d1__d0__d7 (_lh_copy_arg1_4_2 - 1)) _lh_copy_arg2_4_2) in
      (let rec h_2_2_4 = _lh_copy_arg2_4_2 in
        (`LH_C(h_2_2_4, ((mappend__d1_d4__d0__d1_d5 t_2_2_7) _lh_popOutId_0_4_2)))))
  else
    _lh_popOutId_0_4_2)
and copy__d1_d1__d0__d8 _lh_copy_arg1_4_5 _lh_copy_arg2_4_5 _lh_popOutId_0_3_8 =
  (if (_lh_copy_arg1_4_5 > 0) then
    (let rec t_2_4_3 = ((copy__d1_d1__d0__d8 (_lh_copy_arg1_4_5 - 1)) _lh_copy_arg2_4_5) in
      (let rec h_2_3_9 = _lh_copy_arg2_4_5 in
        (`LH_C(h_2_3_9, ((mappend__d1_d4__d0__d1_d7 t_2_4_3) _lh_popOutId_0_3_8)))))
  else
    _lh_popOutId_0_3_8)
and copy__d1_d1__d0__d9 _lh_copy_arg1_2_7 _lh_copy_arg2_2_7 _lh_popOutId_0_1_2 =
  (if (_lh_copy_arg1_2_7 > 0) then
    (let rec t_1_4_6 = ((copy__d1_d1__d0__d9 (_lh_copy_arg1_2_7 - 1)) _lh_copy_arg2_2_7) in
      (let rec h_1_4_3 = _lh_copy_arg2_2_7 in
        (`LH_C(h_1_4_3, ((mappend__d1_d4__d0__d1_d9 t_1_4_6) _lh_popOutId_0_1_2)))))
  else
    _lh_popOutId_0_1_2)
and copy__d2__d0__d0 _lh_copy_arg1_1_9 _lh_copy_arg2_1_9 _lh_popOutId_0_3_7 =
  (if (_lh_copy_arg1_1_9 > 0) then
    (let rec t_9_6 = ((copy__d2__d0__d0 (_lh_copy_arg1_1_9 - 1)) _lh_copy_arg2_1_9) in
      (let rec h_9_3 = _lh_copy_arg2_1_9 in
        (`LH_C(h_9_3, ((mappend__d1_d5__d0__d0 t_9_6) _lh_popOutId_0_3_7)))))
  else
    _lh_popOutId_0_3_7)
and copy__d6__d0__d0 _lh_copy_arg1_4_6 _lh_copy_arg2_4_6 _lh_popOutId_0_3_4 _lh_popOutId_1_1 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (_lh_copy_arg1_4_6 > 0) then
    (let rec tx_1_6 = ((copy__d6__d0__d0 (_lh_copy_arg1_4_6 - 1)) _lh_copy_arg2_4_6) in
      (let rec hx_1_6 = _lh_copy_arg2_4_6 in
        (match _lh_popOutId_1_1 with
          | `LH_C(hy_1_4, ty_1_4) -> 
            (let rec tx_1_7 = (((zipWith__d2__d0__d0 _lh_popOutId_0_3_4) tx_1_6) ty_1_4) in
              (let rec hx_1_7 = ((_lh_popOutId_0_3_4 hx_1_6) hy_1_4) in
                (((_lh_popOutId_3_0 _lh_popOutId_2_0) hx_1_7) tx_1_7)))
          | `LH_N -> 
            (fun ys_2_8_7 -> 
              ys_2_8_7))))
  else
    (fun ys_2_9_0 -> 
      ys_2_9_0))
and copy__d7__d0__d0 _lh_copy_arg1_5_2 _lh_copy_arg2_5_2 _lh_popOutId_0_2_9 =
  (if (_lh_copy_arg1_5_2 > 0) then
    (let rec t_2_7_2 = ((copy__d7__d0__d0 (_lh_copy_arg1_5_2 - 1)) _lh_copy_arg2_5_2) in
      (let rec h_2_6_8 = _lh_copy_arg2_5_2 in
        (`LH_C(h_2_6_8, ((mappend__d7__d0__d1 t_2_7_2) _lh_popOutId_0_2_9)))))
  else
    _lh_popOutId_0_2_9)
and copy__d8__d0__d0 _lh_copy_arg1_5_4 _lh_copy_arg2_5_4 _lh_popOutId_0_4_4 _lh_popOutId_1_2 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (_lh_copy_arg1_5_4 > 0) then
    (let rec ty_1_8 = ((copy__d8__d0__d0 (_lh_copy_arg1_5_4 - 1)) _lh_copy_arg2_5_4) in
      (let rec hy_1_8 = _lh_copy_arg2_5_4 in
        (let rec t_2_7_4 = (((zipWith__d1__d0__d0 _lh_popOutId_0_4_4) _lh_popOutId_2_1) ty_1_8) in
          (let rec h_2_7_0 = ((_lh_popOutId_0_4_4 _lh_popOutId_1_2) hy_1_8) in
            (`LH_C(h_2_7_0, ((mappend__d5__d0__d1 t_2_7_4) _lh_popOutId_3_1)))))))
  else
    _lh_popOutId_3_1)
and date__d0__d0__d0 _lh_date_arg1_5 _lh_date_arg2_5 =
  (if ((_lh_date_arg2_5 < 1) || (_lh_date_arg1_5 < _lh_date_arg2_5)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d0 3) (string_of_int _lh_date_arg2_5)), (`LH_N))))
and date__d0__d0__d1 _lh_date_arg1_1_2 _lh_date_arg2_1_2 =
  (if ((_lh_date_arg2_1_2 < 1) || (_lh_date_arg1_1_2 < _lh_date_arg2_1_2)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d1 3) (string_of_int _lh_date_arg2_1_2)), (`LH_N))))
and date__d0__d0__d1_d0 _lh_date_arg1_1_1 _lh_date_arg2_1_1 =
  (if ((_lh_date_arg2_1_1 < 1) || (_lh_date_arg1_1_1 < _lh_date_arg2_1_1)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d1_d0 3) (string_of_int _lh_date_arg2_1_1)), (`LH_N))))
and date__d0__d0__d1_d1 _lh_date_arg1_6 _lh_date_arg2_6 =
  (if ((_lh_date_arg2_6 < 1) || (_lh_date_arg1_6 < _lh_date_arg2_6)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d1_d1 3) (string_of_int _lh_date_arg2_6)), (`LH_N))))
and date__d0__d0__d2 _lh_date_arg1_2 _lh_date_arg2_2 =
  (if ((_lh_date_arg2_2 < 1) || (_lh_date_arg1_2 < _lh_date_arg2_2)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d2 3) (string_of_int _lh_date_arg2_2)), (`LH_N))))
and date__d0__d0__d3 _lh_date_arg1_7 _lh_date_arg2_7 =
  (if ((_lh_date_arg2_7 < 1) || (_lh_date_arg1_7 < _lh_date_arg2_7)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d3 3) (string_of_int _lh_date_arg2_7)), (`LH_N))))
and date__d0__d0__d4 _lh_date_arg1_8 _lh_date_arg2_8 =
  (if ((_lh_date_arg2_8 < 1) || (_lh_date_arg1_8 < _lh_date_arg2_8)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d4 3) (string_of_int _lh_date_arg2_8)), (`LH_N))))
and date__d0__d0__d5 _lh_date_arg1_1_0 _lh_date_arg2_1_0 =
  (if ((_lh_date_arg2_1_0 < 1) || (_lh_date_arg1_1_0 < _lh_date_arg2_1_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d5 3) (string_of_int _lh_date_arg2_1_0)), (`LH_N))))
and date__d0__d0__d6 _lh_date_arg1_3 _lh_date_arg2_3 =
  (if ((_lh_date_arg2_3 < 1) || (_lh_date_arg1_3 < _lh_date_arg2_3)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d6 3) (string_of_int _lh_date_arg2_3)), (`LH_N))))
and date__d0__d0__d7 _lh_date_arg1_1 _lh_date_arg2_1 =
  (if ((_lh_date_arg2_1 < 1) || (_lh_date_arg1_1 < _lh_date_arg2_1)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d7 3) (string_of_int _lh_date_arg2_1)), (`LH_N))))
and date__d0__d0__d8 _lh_date_arg1_9 _lh_date_arg2_9 =
  (if ((_lh_date_arg2_9 < 1) || (_lh_date_arg1_9 < _lh_date_arg2_9)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d8 3) (string_of_int _lh_date_arg2_9)), (`LH_N))))
and date__d0__d0__d9 _lh_date_arg1_4 _lh_date_arg2_4 =
  (if ((_lh_date_arg2_4 < 1) || (_lh_date_arg1_4 < _lh_date_arg2_4)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0__d0__d9 3) (string_of_int _lh_date_arg2_4)), (`LH_N))))
and dates__d0__d0__d0 _lh_dates_arg1_3 _lh_dates_arg2_3 =
  ((map__d4__d0__d1 (fun d_3 -> 
    ((date__d0__d0__d0 _lh_dates_arg2_3) d_3))) ((enumFromTo__d0__d0__d0 (1 - _lh_dates_arg1_3)) (42 - _lh_dates_arg1_3)))
and dates__d0__d0__d1 _lh_dates_arg1_8 _lh_dates_arg2_8 =
  ((map__d4__d0__d3 (fun d_8 -> 
    ((date__d0__d0__d1 _lh_dates_arg2_8) d_8))) ((enumFromTo__d0__d0__d1 (1 - _lh_dates_arg1_8)) (42 - _lh_dates_arg1_8)))
and dates__d0__d0__d1_d0 _lh_dates_arg1_1 _lh_dates_arg2_1 =
  ((map__d4__d0__d2_d1 (fun d_1 -> 
    ((date__d0__d0__d1_d0 _lh_dates_arg2_1) d_1))) ((enumFromTo__d0__d0__d1_d0 (1 - _lh_dates_arg1_1)) (42 - _lh_dates_arg1_1)))
and dates__d0__d0__d1_d1 _lh_dates_arg1_9 _lh_dates_arg2_9 =
  ((map__d4__d0__d2_d3 (fun d_9 -> 
    ((date__d0__d0__d1_d1 _lh_dates_arg2_9) d_9))) ((enumFromTo__d0__d0__d1_d1 (1 - _lh_dates_arg1_9)) (42 - _lh_dates_arg1_9)))
and dates__d0__d0__d2 _lh_dates_arg1_1_0 _lh_dates_arg2_1_0 =
  ((map__d4__d0__d5 (fun d_1_0 -> 
    ((date__d0__d0__d2 _lh_dates_arg2_1_0) d_1_0))) ((enumFromTo__d0__d0__d2 (1 - _lh_dates_arg1_1_0)) (42 - _lh_dates_arg1_1_0)))
and dates__d0__d0__d3 _lh_dates_arg1_2 _lh_dates_arg2_2 =
  ((map__d4__d0__d7 (fun d_2 -> 
    ((date__d0__d0__d3 _lh_dates_arg2_2) d_2))) ((enumFromTo__d0__d0__d3 (1 - _lh_dates_arg1_2)) (42 - _lh_dates_arg1_2)))
and dates__d0__d0__d4 _lh_dates_arg1_7 _lh_dates_arg2_7 =
  ((map__d4__d0__d9 (fun d_7 -> 
    ((date__d0__d0__d4 _lh_dates_arg2_7) d_7))) ((enumFromTo__d0__d0__d4 (1 - _lh_dates_arg1_7)) (42 - _lh_dates_arg1_7)))
and dates__d0__d0__d5 _lh_dates_arg1_4 _lh_dates_arg2_4 =
  ((map__d4__d0__d1_d1 (fun d_4 -> 
    ((date__d0__d0__d5 _lh_dates_arg2_4) d_4))) ((enumFromTo__d0__d0__d5 (1 - _lh_dates_arg1_4)) (42 - _lh_dates_arg1_4)))
and dates__d0__d0__d6 _lh_dates_arg1_5 _lh_dates_arg2_5 =
  ((map__d4__d0__d1_d3 (fun d_5 -> 
    ((date__d0__d0__d6 _lh_dates_arg2_5) d_5))) ((enumFromTo__d0__d0__d6 (1 - _lh_dates_arg1_5)) (42 - _lh_dates_arg1_5)))
and dates__d0__d0__d7 _lh_dates_arg1_1_1 _lh_dates_arg2_1_1 =
  ((map__d4__d0__d1_d5 (fun d_1_1 -> 
    ((date__d0__d0__d7 _lh_dates_arg2_1_1) d_1_1))) ((enumFromTo__d0__d0__d7 (1 - _lh_dates_arg1_1_1)) (42 - _lh_dates_arg1_1_1)))
and dates__d0__d0__d8 _lh_dates_arg1_6 _lh_dates_arg2_6 =
  ((map__d4__d0__d1_d7 (fun d_6 -> 
    ((date__d0__d0__d8 _lh_dates_arg2_6) d_6))) ((enumFromTo__d0__d0__d8 (1 - _lh_dates_arg1_6)) (42 - _lh_dates_arg1_6)))
and dates__d0__d0__d9 _lh_dates_arg1_1_2 _lh_dates_arg2_1_2 =
  ((map__d4__d0__d1_d9 (fun d_1_2 -> 
    ((date__d0__d0__d9 _lh_dates_arg2_1_2) d_1_2))) ((enumFromTo__d0__d0__d9 (1 - _lh_dates_arg1_1_2)) (42 - _lh_dates_arg1_1_2)))
and daynames__d0__d0__d0 ys_7_4 =
  (let rec t_7_5 = (fun ys_7_3 -> 
    ys_7_3) in
    (let rec h_7_2 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_7_2, ((mappend__d1_d2__d0__d0 t_7_5) ys_7_4)))))
and daynames__d0__d0__d1 ys_1_4_6 =
  (let rec t_1_3_3 = (fun ys_1_4_5 -> 
    ys_1_4_5) in
    (let rec h_1_3_0 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_3_0, ((mappend__d1_d2__d0__d2 t_1_3_3) ys_1_4_6)))))
and daynames__d0__d0__d1_d0 ys_7_2 =
  (let rec t_7_4 = (fun ys_7_1 -> 
    ys_7_1) in
    (let rec h_7_1 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_7_1, ((mappend__d1_d2__d0__d2_d0 t_7_4) ys_7_2)))))
and daynames__d0__d0__d1_d1 ys_1_8_2 =
  (let rec t_1_6_1 = (fun ys_1_8_1 -> 
    ys_1_8_1) in
    (let rec h_1_5_8 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_5_8, ((mappend__d1_d2__d0__d2_d2 t_1_6_1) ys_1_8_2)))))
and daynames__d0__d0__d2 ys_8_7 =
  (let rec t_8_9 = (fun ys_8_6 -> 
    ys_8_6) in
    (let rec h_8_6 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_8_6, ((mappend__d1_d2__d0__d4 t_8_9) ys_8_7)))))
and daynames__d0__d0__d3 ys_2_1_0 =
  (let rec t_1_7_7 = (fun ys_2_0_9 -> 
    ys_2_0_9) in
    (let rec h_1_7_4 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_7_4, ((mappend__d1_d2__d0__d6 t_1_7_7) ys_2_1_0)))))
and daynames__d0__d0__d4 ys_5_6 =
  (let rec t_5_5 = (fun ys_5_5 -> 
    ys_5_5) in
    (let rec h_5_3 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_5_3, ((mappend__d1_d2__d0__d8 t_5_5) ys_5_6)))))
and daynames__d0__d0__d5 ys_3_0_8 =
  (let rec t_2_6_0 = (fun ys_3_0_7 -> 
    ys_3_0_7) in
    (let rec h_2_5_6 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_5_6, ((mappend__d1_d2__d0__d1_d0 t_2_6_0) ys_3_0_8)))))
and daynames__d0__d0__d6 ys_2_0_1 =
  (let rec t_1_7_0 = (fun ys_2_0_0 -> 
    ys_2_0_0) in
    (let rec h_1_6_7 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_6_7, ((mappend__d1_d2__d0__d1_d2 t_1_7_0) ys_2_0_1)))))
and daynames__d0__d0__d7 ys_2_2_8 =
  (let rec t_2_0_6 = (fun ys_2_2_7 -> 
    ys_2_2_7) in
    (let rec h_2_0_3 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_0_3, ((mappend__d1_d2__d0__d1_d4 t_2_0_6) ys_2_2_8)))))
and daynames__d0__d0__d8 ys_1_8_5 =
  (let rec t_1_6_2 = (fun ys_1_8_4 -> 
    ys_1_8_4) in
    (let rec h_1_5_9 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_1_5_9, ((mappend__d1_d2__d0__d1_d6 t_1_6_2) ys_1_8_5)))))
and daynames__d0__d0__d9 ys_2_6_7 =
  (let rec t_2_2_9 = (fun ys_2_6_6 -> 
    ys_2_6_6) in
    (let rec h_2_2_6 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_2_6, ((mappend__d1_d2__d0__d1_d8 t_2_2_9) ys_2_6_7)))))
and end__d0__d0__d0 _lh_end_arg1_1 =
  (emptyPic__d1__d0__d0 (let rec _lh_emptyPic_LH_P2_1_6 = 25 in
    (let rec _lh_emptyPic_LH_P2_0_6 = 1 in
      (fun _lh_dummy_3_9 -> 
        ((copy__d4__d0__d0 _lh_emptyPic_LH_P2_0_6) ((copy__d5__d0__d0 _lh_emptyPic_LH_P2_1_6) ' '))))))
and entries__d0__d0__d0 _lh_entries_arg1_7 _lh_entries_arg2_7 =
  ((block__d1__d0__d0 7) ((dates__d0__d0__d0 _lh_entries_arg1_7) _lh_entries_arg2_7))
and entries__d0__d0__d1 _lh_entries_arg1_9 _lh_entries_arg2_9 =
  ((block__d1__d0__d1 7) ((dates__d0__d0__d1 _lh_entries_arg1_9) _lh_entries_arg2_9))
and entries__d0__d0__d1_d0 _lh_entries_arg1_5 _lh_entries_arg2_5 =
  ((block__d1__d0__d1_d0 7) ((dates__d0__d0__d1_d0 _lh_entries_arg1_5) _lh_entries_arg2_5))
and entries__d0__d0__d1_d1 _lh_entries_arg1_1_2 _lh_entries_arg2_1_2 =
  ((block__d1__d0__d1_d1 7) ((dates__d0__d0__d1_d1 _lh_entries_arg1_1_2) _lh_entries_arg2_1_2))
and entries__d0__d0__d2 _lh_entries_arg1_3 _lh_entries_arg2_3 =
  ((block__d1__d0__d2 7) ((dates__d0__d0__d2 _lh_entries_arg1_3) _lh_entries_arg2_3))
and entries__d0__d0__d3 _lh_entries_arg1_4 _lh_entries_arg2_4 =
  ((block__d1__d0__d3 7) ((dates__d0__d0__d3 _lh_entries_arg1_4) _lh_entries_arg2_4))
and entries__d0__d0__d4 _lh_entries_arg1_1 _lh_entries_arg2_1 =
  ((block__d1__d0__d4 7) ((dates__d0__d0__d4 _lh_entries_arg1_1) _lh_entries_arg2_1))
and entries__d0__d0__d5 _lh_entries_arg1_1_1 _lh_entries_arg2_1_1 =
  ((block__d1__d0__d5 7) ((dates__d0__d0__d5 _lh_entries_arg1_1_1) _lh_entries_arg2_1_1))
and entries__d0__d0__d6 _lh_entries_arg1_6 _lh_entries_arg2_6 =
  ((block__d1__d0__d6 7) ((dates__d0__d0__d6 _lh_entries_arg1_6) _lh_entries_arg2_6))
and entries__d0__d0__d7 _lh_entries_arg1_1_0 _lh_entries_arg2_1_0 =
  ((block__d1__d0__d7 7) ((dates__d0__d0__d7 _lh_entries_arg1_1_0) _lh_entries_arg2_1_0))
and entries__d0__d0__d8 _lh_entries_arg1_8 _lh_entries_arg2_8 =
  ((block__d1__d0__d8 7) ((dates__d0__d0__d8 _lh_entries_arg1_8) _lh_entries_arg2_8))
and entries__d0__d0__d9 _lh_entries_arg1_2 _lh_entries_arg2_2 =
  ((block__d1__d0__d9 7) ((dates__d0__d0__d9 _lh_entries_arg1_2) _lh_entries_arg2_2))
and enumFromTo__d0__d0__d0 a_4_0 b_3_9 _lh_popOutId_0_4_7 =
  (if (a_4_0 <= b_3_9) then
    (let rec t_2_4_2 = ((enumFromTo__d0__d0__d0 (a_4_0 + 1)) b_3_9) in
      (let rec h_2_3_8 = a_4_0 in
        (`LH_C((_lh_popOutId_0_4_7 h_2_3_8), ((map__d4__d0__d0 _lh_popOutId_0_4_7) t_2_4_2)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d1 a_4_8 b_4_6 _lh_popOutId_0_0 =
  (if (a_4_8 <= b_4_6) then
    (let rec t_2_7_8 = ((enumFromTo__d0__d0__d1 (a_4_8 + 1)) b_4_6) in
      (let rec h_2_7_4 = a_4_8 in
        (`LH_C((_lh_popOutId_0_0 h_2_7_4), ((map__d4__d0__d2 _lh_popOutId_0_0) t_2_7_8)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d1_d0 a_4_2 b_4_1 _lh_popOutId_0_5_1 =
  (if (a_4_2 <= b_4_1) then
    (let rec t_2_5_6 = ((enumFromTo__d0__d0__d1_d0 (a_4_2 + 1)) b_4_1) in
      (let rec h_2_5_2 = a_4_2 in
        (`LH_C((_lh_popOutId_0_5_1 h_2_5_2), ((map__d4__d0__d2_d0 _lh_popOutId_0_5_1) t_2_5_6)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d1_d1 a_3_7 b_3_6 _lh_popOutId_0_2_3 =
  (if (a_3_7 <= b_3_6) then
    (let rec t_2_2_4 = ((enumFromTo__d0__d0__d1_d1 (a_3_7 + 1)) b_3_6) in
      (let rec h_2_2_1 = a_3_7 in
        (`LH_C((_lh_popOutId_0_2_3 h_2_2_1), ((map__d4__d0__d2_d2 _lh_popOutId_0_2_3) t_2_2_4)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d2 a_1_6 b_1_5 _lh_popOutId_0_1_5 =
  (if (a_1_6 <= b_1_5) then
    (let rec t_8_4 = ((enumFromTo__d0__d0__d2 (a_1_6 + 1)) b_1_5) in
      (let rec h_8_1 = a_1_6 in
        (`LH_C((_lh_popOutId_0_1_5 h_8_1), ((map__d4__d0__d4 _lh_popOutId_0_1_5) t_8_4)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d3 a_1_4 b_1_3 _lh_popOutId_0_4_0 =
  (if (a_1_4 <= b_1_3) then
    (let rec t_7_6 = ((enumFromTo__d0__d0__d3 (a_1_4 + 1)) b_1_3) in
      (let rec h_7_3 = a_1_4 in
        (`LH_C((_lh_popOutId_0_4_0 h_7_3), ((map__d4__d0__d6 _lh_popOutId_0_4_0) t_7_6)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d4 a_3_8 b_3_7 _lh_popOutId_0_5_0 =
  (if (a_3_8 <= b_3_7) then
    (let rec t_2_3_4 = ((enumFromTo__d0__d0__d4 (a_3_8 + 1)) b_3_7) in
      (let rec h_2_3_0 = a_3_8 in
        (`LH_C((_lh_popOutId_0_5_0 h_2_3_0), ((map__d4__d0__d8 _lh_popOutId_0_5_0) t_2_3_4)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d5 a_1_3 b_1_2 _lh_popOutId_0_2_5 =
  (if (a_1_3 <= b_1_2) then
    (let rec t_6_8 = ((enumFromTo__d0__d0__d5 (a_1_3 + 1)) b_1_2) in
      (let rec h_6_5 = a_1_3 in
        (`LH_C((_lh_popOutId_0_2_5 h_6_5), ((map__d4__d0__d1_d0 _lh_popOutId_0_2_5) t_6_8)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d6 a_4_1 b_4_0 _lh_popOutId_0_4 =
  (if (a_4_1 <= b_4_0) then
    (let rec t_2_4_6 = ((enumFromTo__d0__d0__d6 (a_4_1 + 1)) b_4_0) in
      (let rec h_2_4_2 = a_4_1 in
        (`LH_C((_lh_popOutId_0_4 h_2_4_2), ((map__d4__d0__d1_d2 _lh_popOutId_0_4) t_2_4_6)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d7 a_2_9 b_2_8 _lh_popOutId_0_1_8 =
  (if (a_2_9 <= b_2_8) then
    (let rec t_1_6_9 = ((enumFromTo__d0__d0__d7 (a_2_9 + 1)) b_2_8) in
      (let rec h_1_6_6 = a_2_9 in
        (`LH_C((_lh_popOutId_0_1_8 h_1_6_6), ((map__d4__d0__d1_d4 _lh_popOutId_0_1_8) t_1_6_9)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d8 a_4_5 b_4_3 _lh_popOutId_0_2_2 =
  (if (a_4_5 <= b_4_3) then
    (let rec t_2_6_6 = ((enumFromTo__d0__d0__d8 (a_4_5 + 1)) b_4_3) in
      (let rec h_2_6_2 = a_4_5 in
        (`LH_C((_lh_popOutId_0_2_2 h_2_6_2), ((map__d4__d0__d1_d6 _lh_popOutId_0_2_2) t_2_6_6)))))
  else
    (`LH_N))
and enumFromTo__d0__d0__d9 a_1_5 b_1_4 _lh_popOutId_0_3 =
  (if (a_1_5 <= b_1_4) then
    (let rec t_8_0 = ((enumFromTo__d0__d0__d9 (a_1_5 + 1)) b_1_4) in
      (let rec h_7_7 = a_1_5 in
        (`LH_C((_lh_popOutId_0_3 h_7_7), ((map__d4__d0__d1_d8 _lh_popOutId_0_3) t_8_0)))))
  else
    (`LH_N))
and firstDays__d0__d0__d0 _lh_firstDays_arg1_1 =
  ((take__d1__d0__d1_d3 12) ((map__d2__d0__d0 (fun a_4_3 -> 
    (a_4_3 mod 7))) (((scanl__d0__d0__d1_d2 (fun a_4_4 b_4_2 -> 
    (a_4_4 + b_4_2))) (jan1st__d0__d0__d0 _lh_firstDays_arg1_1)) (monthLengths__d0__d0__d0 _lh_firstDays_arg1_1))))
and foldr1__d0__d0__d0 _lh_foldr1_arg1_1_6 _lh_foldr1_arg2_1_6 =
  (match _lh_foldr1_arg2_1_6 with
    | `LH_C(_lh_foldr1_LH_C_0_1_6, _lh_foldr1_LH_C_1_1_6) -> 
      (((foldr__d0__d0__d0 _lh_foldr1_arg1_1_6) _lh_foldr1_LH_C_0_1_6) _lh_foldr1_LH_C_1_1_6)
    | _ -> 
      (failwith "error"))
and foldr1__d1__d0__d0 _lh_foldr1_arg1_2_0 _lh_foldr1_arg2_2_0 =
  (match _lh_foldr1_arg2_2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_2_0, _lh_foldr1_LH_C_1_2_0) -> 
      (((foldr__d1__d0__d0 _lh_foldr1_arg1_2_0) _lh_foldr1_LH_C_0_2_0) _lh_foldr1_LH_C_1_2_0)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d0 _lh_foldr1_arg1_2_9 _lh_foldr1_arg2_2_9 =
  (match _lh_foldr1_arg2_2_9 with
    | `LH_C(_lh_foldr1_LH_C_0_2_9, _lh_foldr1_LH_C_1_2_9) -> 
      (((foldr__d2__d0__d0 _lh_foldr1_arg1_2_9) _lh_foldr1_LH_C_0_2_9) _lh_foldr1_LH_C_1_2_9)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d1 _lh_foldr1_arg1_8 _lh_foldr1_arg2_8 =
  (match _lh_foldr1_arg2_8 with
    | `LH_C(_lh_foldr1_LH_C_0_8, _lh_foldr1_LH_C_1_8) -> 
      (((foldr__d2__d0__d1 _lh_foldr1_arg1_8) _lh_foldr1_LH_C_0_8) _lh_foldr1_LH_C_1_8)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d1_d0 _lh_foldr1_arg1_1_1 _lh_foldr1_arg2_1_1 =
  (match _lh_foldr1_arg2_1_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1_1, _lh_foldr1_LH_C_1_1_1) -> 
      (((foldr__d2__d0__d1_d0 _lh_foldr1_arg1_1_1) _lh_foldr1_LH_C_0_1_1) _lh_foldr1_LH_C_1_1_1)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d1_d1 _lh_foldr1_arg1_6 _lh_foldr1_arg2_6 =
  (match _lh_foldr1_arg2_6 with
    | `LH_C(_lh_foldr1_LH_C_0_6, _lh_foldr1_LH_C_1_6) -> 
      (((foldr__d2__d0__d1_d1 _lh_foldr1_arg1_6) _lh_foldr1_LH_C_0_6) _lh_foldr1_LH_C_1_6)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d2 _lh_foldr1_arg1_2_6 _lh_foldr1_arg2_2_6 =
  (match _lh_foldr1_arg2_2_6 with
    | `LH_C(_lh_foldr1_LH_C_0_2_6, _lh_foldr1_LH_C_1_2_6) -> 
      (((foldr__d2__d0__d2 _lh_foldr1_arg1_2_6) _lh_foldr1_LH_C_0_2_6) _lh_foldr1_LH_C_1_2_6)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d3 _lh_foldr1_arg1_2_1 _lh_foldr1_arg2_2_1 =
  (match _lh_foldr1_arg2_2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_2_1, _lh_foldr1_LH_C_1_2_1) -> 
      (((foldr__d2__d0__d3 _lh_foldr1_arg1_2_1) _lh_foldr1_LH_C_0_2_1) _lh_foldr1_LH_C_1_2_1)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d4 _lh_foldr1_arg1_1_2 _lh_foldr1_arg2_1_2 =
  (match _lh_foldr1_arg2_1_2 with
    | `LH_C(_lh_foldr1_LH_C_0_1_2, _lh_foldr1_LH_C_1_1_2) -> 
      (((foldr__d2__d0__d4 _lh_foldr1_arg1_1_2) _lh_foldr1_LH_C_0_1_2) _lh_foldr1_LH_C_1_1_2)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d5 _lh_foldr1_arg1_2_3 _lh_foldr1_arg2_2_3 =
  (match _lh_foldr1_arg2_2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_2_3, _lh_foldr1_LH_C_1_2_3) -> 
      (((foldr__d2__d0__d5 _lh_foldr1_arg1_2_3) _lh_foldr1_LH_C_0_2_3) _lh_foldr1_LH_C_1_2_3)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d6 _lh_foldr1_arg1_1_4 _lh_foldr1_arg2_1_4 =
  (match _lh_foldr1_arg2_1_4 with
    | `LH_C(_lh_foldr1_LH_C_0_1_4, _lh_foldr1_LH_C_1_1_4) -> 
      (((foldr__d2__d0__d6 _lh_foldr1_arg1_1_4) _lh_foldr1_LH_C_0_1_4) _lh_foldr1_LH_C_1_1_4)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d7 _lh_foldr1_arg1_1_9 _lh_foldr1_arg2_1_9 =
  (match _lh_foldr1_arg2_1_9 with
    | `LH_C(_lh_foldr1_LH_C_0_1_9, _lh_foldr1_LH_C_1_1_9) -> 
      (((foldr__d2__d0__d7 _lh_foldr1_arg1_1_9) _lh_foldr1_LH_C_0_1_9) _lh_foldr1_LH_C_1_1_9)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d8 _lh_foldr1_arg1_2_7 _lh_foldr1_arg2_2_7 =
  (match _lh_foldr1_arg2_2_7 with
    | `LH_C(_lh_foldr1_LH_C_0_2_7, _lh_foldr1_LH_C_1_2_7) -> 
      (((foldr__d2__d0__d8 _lh_foldr1_arg1_2_7) _lh_foldr1_LH_C_0_2_7) _lh_foldr1_LH_C_1_2_7)
    | _ -> 
      (failwith "error"))
and foldr1__d2__d0__d9 _lh_foldr1_arg1_1_8 _lh_foldr1_arg2_1_8 =
  (match _lh_foldr1_arg2_1_8 with
    | `LH_C(_lh_foldr1_LH_C_0_1_8, _lh_foldr1_LH_C_1_1_8) -> 
      (((foldr__d2__d0__d9 _lh_foldr1_arg1_1_8) _lh_foldr1_LH_C_0_1_8) _lh_foldr1_LH_C_1_1_8)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d0 _lh_foldr1_arg1_2_5 _lh_foldr1_arg2_2_5 =
  (match _lh_foldr1_arg2_2_5 with
    | `LH_C(_lh_foldr1_LH_C_0_2_5, _lh_foldr1_LH_C_1_2_5) -> 
      (((foldr__d3__d0__d0 _lh_foldr1_arg1_2_5) _lh_foldr1_LH_C_0_2_5) _lh_foldr1_LH_C_1_2_5)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d1 _lh_foldr1_arg1_1_3 _lh_foldr1_arg2_1_3 =
  (match _lh_foldr1_arg2_1_3 with
    | `LH_C(_lh_foldr1_LH_C_0_1_3, _lh_foldr1_LH_C_1_1_3) -> 
      (((foldr__d3__d0__d1 _lh_foldr1_arg1_1_3) _lh_foldr1_LH_C_0_1_3) _lh_foldr1_LH_C_1_1_3)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d1_d0 _lh_foldr1_arg1_2_2 _lh_foldr1_arg2_2_2 =
  (match _lh_foldr1_arg2_2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2_2, _lh_foldr1_LH_C_1_2_2) -> 
      (((foldr__d3__d0__d1_d0 _lh_foldr1_arg1_2_2) _lh_foldr1_LH_C_0_2_2) _lh_foldr1_LH_C_1_2_2)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d1_d1 _lh_foldr1_arg1_1_7 _lh_foldr1_arg2_1_7 =
  (match _lh_foldr1_arg2_1_7 with
    | `LH_C(_lh_foldr1_LH_C_0_1_7, _lh_foldr1_LH_C_1_1_7) -> 
      (((foldr__d3__d0__d1_d1 _lh_foldr1_arg1_1_7) _lh_foldr1_LH_C_0_1_7) _lh_foldr1_LH_C_1_1_7)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d2 _lh_foldr1_arg1_2_8 _lh_foldr1_arg2_2_8 =
  (match _lh_foldr1_arg2_2_8 with
    | `LH_C(_lh_foldr1_LH_C_0_2_8, _lh_foldr1_LH_C_1_2_8) -> 
      (((foldr__d3__d0__d2 _lh_foldr1_arg1_2_8) _lh_foldr1_LH_C_0_2_8) _lh_foldr1_LH_C_1_2_8)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d3 _lh_foldr1_arg1_1_5 _lh_foldr1_arg2_1_5 =
  (match _lh_foldr1_arg2_1_5 with
    | `LH_C(_lh_foldr1_LH_C_0_1_5, _lh_foldr1_LH_C_1_1_5) -> 
      (((foldr__d3__d0__d3 _lh_foldr1_arg1_1_5) _lh_foldr1_LH_C_0_1_5) _lh_foldr1_LH_C_1_1_5)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d4 _lh_foldr1_arg1_1_0 _lh_foldr1_arg2_1_0 =
  (match _lh_foldr1_arg2_1_0 with
    | `LH_C(_lh_foldr1_LH_C_0_1_0, _lh_foldr1_LH_C_1_1_0) -> 
      (((foldr__d3__d0__d4 _lh_foldr1_arg1_1_0) _lh_foldr1_LH_C_0_1_0) _lh_foldr1_LH_C_1_1_0)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d5 _lh_foldr1_arg1_7 _lh_foldr1_arg2_7 =
  (match _lh_foldr1_arg2_7 with
    | `LH_C(_lh_foldr1_LH_C_0_7, _lh_foldr1_LH_C_1_7) -> 
      (((foldr__d3__d0__d5 _lh_foldr1_arg1_7) _lh_foldr1_LH_C_0_7) _lh_foldr1_LH_C_1_7)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d6 _lh_foldr1_arg1_4 _lh_foldr1_arg2_4 =
  (match _lh_foldr1_arg2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_4, _lh_foldr1_LH_C_1_4) -> 
      (((foldr__d3__d0__d6 _lh_foldr1_arg1_4) _lh_foldr1_LH_C_0_4) _lh_foldr1_LH_C_1_4)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d7 _lh_foldr1_arg1_5 _lh_foldr1_arg2_5 =
  (match _lh_foldr1_arg2_5 with
    | `LH_C(_lh_foldr1_LH_C_0_5, _lh_foldr1_LH_C_1_5) -> 
      (((foldr__d3__d0__d7 _lh_foldr1_arg1_5) _lh_foldr1_LH_C_0_5) _lh_foldr1_LH_C_1_5)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d8 _lh_foldr1_arg1_9 _lh_foldr1_arg2_9 =
  (match _lh_foldr1_arg2_9 with
    | `LH_C(_lh_foldr1_LH_C_0_9, _lh_foldr1_LH_C_1_9) -> 
      (((foldr__d3__d0__d8 _lh_foldr1_arg1_9) _lh_foldr1_LH_C_0_9) _lh_foldr1_LH_C_1_9)
    | _ -> 
      (failwith "error"))
and foldr1__d3__d0__d9 _lh_foldr1_arg1_2_4 _lh_foldr1_arg2_2_4 =
  (match _lh_foldr1_arg2_2_4 with
    | `LH_C(_lh_foldr1_LH_C_0_2_4, _lh_foldr1_LH_C_1_2_4) -> 
      (((foldr__d3__d0__d9 _lh_foldr1_arg1_2_4) _lh_foldr1_LH_C_0_2_4) _lh_foldr1_LH_C_1_2_4)
    | _ -> 
      (failwith "error"))
and groop__d0__d0__d0 _lh_groop_arg1_8 _lh_groop_arg2_8 _lh_popOutId_0_2_0 =
  (match _lh_groop_arg2_8 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_6_4 = ((groop__d0__d0__d0 _lh_groop_arg1_8) ((drop__d0__d0__d0 _lh_groop_arg1_8) _lh_groop_arg2_8)) in
        (let rec h_1_6_1 = ((take__d0__d0__d0 _lh_groop_arg1_8) _lh_groop_arg2_8) in
          (`LH_C((_lh_popOutId_0_2_0 h_1_6_1), ((map__d0__d0__d0 _lh_popOutId_0_2_0) t_1_6_4))))))
and groop__d1__d0__d0 _lh_groop_arg1_5 _lh_groop_arg2_5 _lh_popOutId_0_2_7 =
  (match _lh_groop_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_2_4 = ((groop__d1__d0__d0 _lh_groop_arg1_5) ((drop__d1__d0__d0 _lh_groop_arg1_5) _lh_groop_arg2_5)) in
        (let rec h_1_2_1 = ((take__d2__d0__d0 _lh_groop_arg1_5) _lh_groop_arg2_5) in
          (`LH_C((_lh_popOutId_0_2_7 h_1_2_1), ((map__d3__d0__d0 _lh_popOutId_0_2_7) t_1_2_4))))))
and groop__d1__d0__d1 _lh_groop_arg1_1_2 _lh_groop_arg2_1_2 _lh_popOutId_0_3_9 =
  (match _lh_groop_arg2_1_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_5_4 = ((groop__d1__d0__d1 _lh_groop_arg1_1_2) ((drop__d1__d0__d1 _lh_groop_arg1_1_2) _lh_groop_arg2_1_2)) in
        (let rec h_2_5_0 = ((take__d2__d0__d1 _lh_groop_arg1_1_2) _lh_groop_arg2_1_2) in
          (`LH_C((_lh_popOutId_0_3_9 h_2_5_0), ((map__d3__d0__d2 _lh_popOutId_0_3_9) t_2_5_4))))))
and groop__d1__d0__d1_d0 _lh_groop_arg1_4 _lh_groop_arg2_4 _lh_popOutId_0_3_2 =
  (match _lh_groop_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_1_4 = ((groop__d1__d0__d1_d0 _lh_groop_arg1_4) ((drop__d1__d0__d1_d0 _lh_groop_arg1_4) _lh_groop_arg2_4)) in
        (let rec h_1_1_1 = ((take__d2__d0__d1_d0 _lh_groop_arg1_4) _lh_groop_arg2_4) in
          (`LH_C((_lh_popOutId_0_3_2 h_1_1_1), ((map__d3__d0__d2_d0 _lh_popOutId_0_3_2) t_1_1_4))))))
and groop__d1__d0__d1_d1 _lh_groop_arg1_1_0 _lh_groop_arg2_1_0 _lh_popOutId_0_1_4 =
  (match _lh_groop_arg2_1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_2_5 = ((groop__d1__d0__d1_d1 _lh_groop_arg1_1_0) ((drop__d1__d0__d1_d1 _lh_groop_arg1_1_0) _lh_groop_arg2_1_0)) in
        (let rec h_2_2_2 = ((take__d2__d0__d1_d1 _lh_groop_arg1_1_0) _lh_groop_arg2_1_0) in
          (`LH_C((_lh_popOutId_0_1_4 h_2_2_2), ((map__d3__d0__d2_d2 _lh_popOutId_0_1_4) t_2_2_5))))))
and groop__d1__d0__d2 _lh_groop_arg1_2 _lh_groop_arg2_2 _lh_popOutId_0_3_6 =
  (match _lh_groop_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_9_2 = ((groop__d1__d0__d2 _lh_groop_arg1_2) ((drop__d1__d0__d2 _lh_groop_arg1_2) _lh_groop_arg2_2)) in
        (let rec h_8_9 = ((take__d2__d0__d2 _lh_groop_arg1_2) _lh_groop_arg2_2) in
          (`LH_C((_lh_popOutId_0_3_6 h_8_9), ((map__d3__d0__d4 _lh_popOutId_0_3_6) t_9_2))))))
and groop__d1__d0__d3 _lh_groop_arg1_3 _lh_groop_arg2_3 _lh_popOutId_0_7 =
  (match _lh_groop_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_0_6 = ((groop__d1__d0__d3 _lh_groop_arg1_3) ((drop__d1__d0__d3 _lh_groop_arg1_3) _lh_groop_arg2_3)) in
        (let rec h_1_0_3 = ((take__d2__d0__d3 _lh_groop_arg1_3) _lh_groop_arg2_3) in
          (`LH_C((_lh_popOutId_0_7 h_1_0_3), ((map__d3__d0__d6 _lh_popOutId_0_7) t_1_0_6))))))
and groop__d1__d0__d4 _lh_groop_arg1_1_1 _lh_groop_arg2_1_1 _lh_popOutId_0_1_6 =
  (match _lh_groop_arg2_1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_5_3 = ((groop__d1__d0__d4 _lh_groop_arg1_1_1) ((drop__d1__d0__d4 _lh_groop_arg1_1_1) _lh_groop_arg2_1_1)) in
        (let rec h_2_4_9 = ((take__d2__d0__d4 _lh_groop_arg1_1_1) _lh_groop_arg2_1_1) in
          (`LH_C((_lh_popOutId_0_1_6 h_2_4_9), ((map__d3__d0__d8 _lh_popOutId_0_1_6) t_2_5_3))))))
and groop__d1__d0__d5 _lh_groop_arg1_1_3 _lh_groop_arg2_1_3 _lh_popOutId_0_5_4 =
  (match _lh_groop_arg2_1_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_6_9 = ((groop__d1__d0__d5 _lh_groop_arg1_1_3) ((drop__d1__d0__d5 _lh_groop_arg1_1_3) _lh_groop_arg2_1_3)) in
        (let rec h_2_6_5 = ((take__d2__d0__d5 _lh_groop_arg1_1_3) _lh_groop_arg2_1_3) in
          (`LH_C((_lh_popOutId_0_5_4 h_2_6_5), ((map__d3__d0__d1_d0 _lh_popOutId_0_5_4) t_2_6_9))))))
and groop__d1__d0__d6 _lh_groop_arg1_1_4 _lh_groop_arg2_1_4 _lh_popOutId_0_8 =
  (match _lh_groop_arg2_1_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2_7_9 = ((groop__d1__d0__d6 _lh_groop_arg1_1_4) ((drop__d1__d0__d6 _lh_groop_arg1_1_4) _lh_groop_arg2_1_4)) in
        (let rec h_2_7_5 = ((take__d2__d0__d6 _lh_groop_arg1_1_4) _lh_groop_arg2_1_4) in
          (`LH_C((_lh_popOutId_0_8 h_2_7_5), ((map__d3__d0__d1_d2 _lh_popOutId_0_8) t_2_7_9))))))
and groop__d1__d0__d7 _lh_groop_arg1_9 _lh_groop_arg2_9 _lh_popOutId_0_1_3 =
  (match _lh_groop_arg2_9 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_7_2 = ((groop__d1__d0__d7 _lh_groop_arg1_9) ((drop__d1__d0__d7 _lh_groop_arg1_9) _lh_groop_arg2_9)) in
        (let rec h_1_6_9 = ((take__d2__d0__d7 _lh_groop_arg1_9) _lh_groop_arg2_9) in
          (`LH_C((_lh_popOutId_0_1_3 h_1_6_9), ((map__d3__d0__d1_d4 _lh_popOutId_0_1_3) t_1_7_2))))))
and groop__d1__d0__d8 _lh_groop_arg1_7 _lh_groop_arg2_7 _lh_popOutId_0_2_4 =
  (match _lh_groop_arg2_7 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_4_9 = ((groop__d1__d0__d8 _lh_groop_arg1_7) ((drop__d1__d0__d8 _lh_groop_arg1_7) _lh_groop_arg2_7)) in
        (let rec h_1_4_6 = ((take__d2__d0__d8 _lh_groop_arg1_7) _lh_groop_arg2_7) in
          (`LH_C((_lh_popOutId_0_2_4 h_1_4_6), ((map__d3__d0__d1_d6 _lh_popOutId_0_2_4) t_1_4_9))))))
and groop__d1__d0__d9 _lh_groop_arg1_6 _lh_groop_arg2_6 _lh_popOutId_0_5_3 =
  (match _lh_groop_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_3_4 = ((groop__d1__d0__d9 _lh_groop_arg1_6) ((drop__d1__d0__d9 _lh_groop_arg1_6) _lh_groop_arg2_6)) in
        (let rec h_1_3_1 = ((take__d2__d0__d9 _lh_groop_arg1_6) _lh_groop_arg2_6) in
          (`LH_C((_lh_popOutId_0_5_3 h_1_3_1), ((map__d3__d0__d1_d8 _lh_popOutId_0_5_3) t_1_3_4))))))
and map__d5__d0__d0 f_1_6_1 ls_1_0_8 _lh_popOutId_0_3_5 =
  (match ls_1_0_8 with
    | `LH_C(h_1_7_5, t_1_7_8) -> 
      (let rec t_1_7_9 = ((map__d5__d0__d0 f_1_6_1) t_1_7_8) in
        (let rec h_1_7_6 = (f_1_6_1 h_1_7_5) in
          ((mappend__d1_d6__d0__d0 h_1_7_6) (concat__d0__d0__d1 t_1_7_9))))
    | `LH_N -> 
      (fun _lh_dummy_2_6 -> 
        0))
and mappend__d1_d7__d0__d0 xs_1_6_0 ys_2_7_2 =
  (match xs_1_6_0 with
    | `LH_C(h_2_2_8, t_2_3_1) -> 
      (let rec t_2_3_2 = ((mappend__d1_d7__d0__d0 t_2_3_1) ys_2_7_2) in
        (let rec h_2_2_9 = h_2_2_8 in
          (fun ys_2_7_3 -> 
            (let rec t_2_3_3 = ((mappend__d1_d6__d0__d2 t_2_3_2) ys_2_7_3) in
              (fun _lh_dummy_4_0 -> 
                (1 + (length__d3__d0__d1 t_2_3_3)))))))
    | `LH_N -> 
      ys_2_7_2)
and monthLengths__d0__d0__d0 _lh_monthLengths_arg1_3 _lh_scanl_arg1_3_8 _lh_scanl_arg2_3_8 =
  (let rec feb_3 = (if (leap__d0__d0__d0 _lh_monthLengths_arg1_3) then
    29
  else
    28) in
    (let rec _lh_scanl_LH_C_1_1_2 = (let rec _lh_scanl_LH_C_1_1_3 = (let rec _lh_scanl_LH_C_1_1_4 = (let rec _lh_scanl_LH_C_1_1_5 = (let rec _lh_scanl_LH_C_1_1_6 = (let rec _lh_scanl_LH_C_1_1_7 = (let rec _lh_scanl_LH_C_1_1_8 = (let rec _lh_scanl_LH_C_1_1_9 = (let rec _lh_scanl_LH_C_1_2_0 = (let rec _lh_scanl_LH_C_1_2_1 = (let rec _lh_scanl_LH_C_1_2_2 = (let rec _lh_scanl_LH_C_1_2_3 = (fun _lh_scanl_arg1_2_6 _lh_scanl_arg2_2_6 f_1_9_5 n_4_3 _lh_zip3_LH_C_0_1_4_1 _lh_zip3_LH_C_1_1_4_1 _lh_zip3_arg3_6_5 f_1_9_6 -> 
      (`LH_N)) in
      (let rec _lh_scanl_LH_C_0_1_2 = 31 in
        (fun _lh_scanl_arg1_2_7 _lh_scanl_arg2_2_7 -> 
          (((scanl__d0__d0__d0 _lh_scanl_arg1_2_7) ((_lh_scanl_arg1_2_7 _lh_scanl_arg2_2_7) _lh_scanl_LH_C_0_1_2)) _lh_scanl_LH_C_1_2_3)))) in
      (let rec _lh_scanl_LH_C_0_1_3 = 30 in
        (fun _lh_scanl_arg1_2_8 _lh_scanl_arg2_2_8 -> 
          (((scanl__d0__d0__d1 _lh_scanl_arg1_2_8) ((_lh_scanl_arg1_2_8 _lh_scanl_arg2_2_8) _lh_scanl_LH_C_0_1_3)) _lh_scanl_LH_C_1_2_2)))) in
      (let rec _lh_scanl_LH_C_0_1_4 = 31 in
        (fun _lh_scanl_arg1_2_9 _lh_scanl_arg2_2_9 -> 
          (((scanl__d0__d0__d2 _lh_scanl_arg1_2_9) ((_lh_scanl_arg1_2_9 _lh_scanl_arg2_2_9) _lh_scanl_LH_C_0_1_4)) _lh_scanl_LH_C_1_2_1)))) in
      (let rec _lh_scanl_LH_C_0_1_5 = 30 in
        (fun _lh_scanl_arg1_3_0 _lh_scanl_arg2_3_0 -> 
          (((scanl__d0__d0__d3 _lh_scanl_arg1_3_0) ((_lh_scanl_arg1_3_0 _lh_scanl_arg2_3_0) _lh_scanl_LH_C_0_1_5)) _lh_scanl_LH_C_1_2_0)))) in
      (let rec _lh_scanl_LH_C_0_1_6 = 31 in
        (fun _lh_scanl_arg1_3_1 _lh_scanl_arg2_3_1 -> 
          (((scanl__d0__d0__d4 _lh_scanl_arg1_3_1) ((_lh_scanl_arg1_3_1 _lh_scanl_arg2_3_1) _lh_scanl_LH_C_0_1_6)) _lh_scanl_LH_C_1_1_9)))) in
      (let rec _lh_scanl_LH_C_0_1_7 = 31 in
        (fun _lh_scanl_arg1_3_2 _lh_scanl_arg2_3_2 -> 
          (((scanl__d0__d0__d5 _lh_scanl_arg1_3_2) ((_lh_scanl_arg1_3_2 _lh_scanl_arg2_3_2) _lh_scanl_LH_C_0_1_7)) _lh_scanl_LH_C_1_1_8)))) in
      (let rec _lh_scanl_LH_C_0_1_8 = 30 in
        (fun _lh_scanl_arg1_3_3 _lh_scanl_arg2_3_3 -> 
          (((scanl__d0__d0__d6 _lh_scanl_arg1_3_3) ((_lh_scanl_arg1_3_3 _lh_scanl_arg2_3_3) _lh_scanl_LH_C_0_1_8)) _lh_scanl_LH_C_1_1_7)))) in
      (let rec _lh_scanl_LH_C_0_1_9 = 31 in
        (fun _lh_scanl_arg1_3_4 _lh_scanl_arg2_3_4 -> 
          (((scanl__d0__d0__d7 _lh_scanl_arg1_3_4) ((_lh_scanl_arg1_3_4 _lh_scanl_arg2_3_4) _lh_scanl_LH_C_0_1_9)) _lh_scanl_LH_C_1_1_6)))) in
      (let rec _lh_scanl_LH_C_0_2_0 = 30 in
        (fun _lh_scanl_arg1_3_5 _lh_scanl_arg2_3_5 -> 
          (((scanl__d0__d0__d8 _lh_scanl_arg1_3_5) ((_lh_scanl_arg1_3_5 _lh_scanl_arg2_3_5) _lh_scanl_LH_C_0_2_0)) _lh_scanl_LH_C_1_1_5)))) in
      (let rec _lh_scanl_LH_C_0_2_1 = 31 in
        (fun _lh_scanl_arg1_3_6 _lh_scanl_arg2_3_6 -> 
          (((scanl__d0__d0__d9 _lh_scanl_arg1_3_6) ((_lh_scanl_arg1_3_6 _lh_scanl_arg2_3_6) _lh_scanl_LH_C_0_2_1)) _lh_scanl_LH_C_1_1_4)))) in
      (let rec _lh_scanl_LH_C_0_2_2 = feb_3 in
        (fun _lh_scanl_arg1_3_7 _lh_scanl_arg2_3_7 -> 
          (((scanl__d0__d0__d1_d0 _lh_scanl_arg1_3_7) ((_lh_scanl_arg1_3_7 _lh_scanl_arg2_3_7) _lh_scanl_LH_C_0_2_2)) _lh_scanl_LH_C_1_1_3)))) in
      (let rec _lh_scanl_LH_C_0_2_3 = 31 in
        (((scanl__d0__d0__d1_d1 _lh_scanl_arg1_3_8) ((_lh_scanl_arg1_3_8 _lh_scanl_arg2_3_8) _lh_scanl_LH_C_0_2_3)) _lh_scanl_LH_C_1_1_2))))
and monthLengths__d1__d0__d0 _lh_monthLengths_arg1_2 _lh_zip3_LH_C_0_1_3_5 _lh_zip3_LH_C_0_1_3_6 _lh_zip3_LH_C_1_1_3_5 _lh_zip3_LH_C_1_1_3_6 f_1_8_1 =
  (let rec feb_2 = (if (leap__d1__d0__d0 _lh_monthLengths_arg1_2) then
    29
  else
    28) in
    (let rec _lh_zip3_LH_C_1_9_9 = (let rec _lh_zip3_LH_C_1_1_0_0 = (let rec _lh_zip3_LH_C_1_1_0_1 = (let rec _lh_zip3_LH_C_1_1_0_2 = (let rec _lh_zip3_LH_C_1_1_0_3 = (let rec _lh_zip3_LH_C_1_1_0_4 = (let rec _lh_zip3_LH_C_1_1_0_5 = (let rec _lh_zip3_LH_C_1_1_0_6 = (let rec _lh_zip3_LH_C_1_1_0_7 = (let rec _lh_zip3_LH_C_1_1_0_8 = (let rec _lh_zip3_LH_C_1_1_0_9 = (let rec _lh_zip3_LH_C_1_1_1_0 = (fun _lh_zip3_LH_C_0_9_9 _lh_zip3_LH_C_0_1_0_0 _lh_zip3_LH_C_1_1_1_1 _lh_zip3_LH_C_1_1_1_2 f_1_6_9 -> 
      (`LH_N)) in
      (let rec _lh_zip3_LH_C_0_1_0_1 = 31 in
        (fun _lh_zip3_LH_C_0_1_0_2 _lh_zip3_LH_C_0_1_0_3 _lh_zip3_LH_C_1_1_1_3 _lh_zip3_LH_C_1_1_1_4 -> 
          (let rec t_1_9_2 = (((zip3__d0__d0__d0 _lh_zip3_LH_C_1_1_1_3) _lh_zip3_LH_C_1_1_1_4) _lh_zip3_LH_C_1_1_1_0) in
            (let rec h_1_8_9 = (let rec _lh_pic_LH_P3_2_1_2 = _lh_zip3_LH_C_0_1_0_1 in
              (let rec _lh_pic_LH_P3_1_1_2 = _lh_zip3_LH_C_0_1_0_3 in
                (let rec _lh_pic_LH_P3_0_1_2 = _lh_zip3_LH_C_0_1_0_2 in
                  (fun _lh_dummy_2_7 -> 
                    ((mappend__d8__d0__d0 (title__d0__d0__d0 _lh_pic_LH_P3_0_1_2)) ((table__d0__d0__d0 _lh_pic_LH_P3_1_1_2) _lh_pic_LH_P3_2_1_2)))))) in
              (fun f_1_7_0 -> 
                (`LH_C((f_1_7_0 h_1_8_9), ((map__d1__d0__d1 f_1_7_0) t_1_9_2))))))))) in
      (let rec _lh_zip3_LH_C_0_1_0_4 = 30 in
        (fun _lh_zip3_LH_C_0_1_0_5 _lh_zip3_LH_C_0_1_0_6 _lh_zip3_LH_C_1_1_1_5 _lh_zip3_LH_C_1_1_1_6 -> 
          (let rec t_1_9_3 = (((zip3__d0__d0__d1 _lh_zip3_LH_C_1_1_1_5) _lh_zip3_LH_C_1_1_1_6) _lh_zip3_LH_C_1_1_0_9) in
            (let rec h_1_9_0 = (let rec _lh_pic_LH_P3_2_1_3 = _lh_zip3_LH_C_0_1_0_4 in
              (let rec _lh_pic_LH_P3_1_1_3 = _lh_zip3_LH_C_0_1_0_6 in
                (let rec _lh_pic_LH_P3_0_1_3 = _lh_zip3_LH_C_0_1_0_5 in
                  (fun _lh_dummy_2_8 -> 
                    ((mappend__d8__d0__d1 (title__d0__d0__d1 _lh_pic_LH_P3_0_1_3)) ((table__d0__d0__d1 _lh_pic_LH_P3_1_1_3) _lh_pic_LH_P3_2_1_3)))))) in
              (fun f_1_7_1 -> 
                (`LH_C((f_1_7_1 h_1_9_0), ((map__d1__d0__d2 f_1_7_1) t_1_9_3))))))))) in
      (let rec _lh_zip3_LH_C_0_1_0_7 = 31 in
        (fun _lh_zip3_LH_C_0_1_0_8 _lh_zip3_LH_C_0_1_0_9 _lh_zip3_LH_C_1_1_1_7 _lh_zip3_LH_C_1_1_1_8 -> 
          (let rec t_1_9_4 = (((zip3__d0__d0__d2 _lh_zip3_LH_C_1_1_1_7) _lh_zip3_LH_C_1_1_1_8) _lh_zip3_LH_C_1_1_0_8) in
            (let rec h_1_9_1 = (let rec _lh_pic_LH_P3_2_1_4 = _lh_zip3_LH_C_0_1_0_7 in
              (let rec _lh_pic_LH_P3_1_1_4 = _lh_zip3_LH_C_0_1_0_9 in
                (let rec _lh_pic_LH_P3_0_1_4 = _lh_zip3_LH_C_0_1_0_8 in
                  (fun _lh_dummy_2_9 -> 
                    ((mappend__d8__d0__d2 (title__d0__d0__d2 _lh_pic_LH_P3_0_1_4)) ((table__d0__d0__d2 _lh_pic_LH_P3_1_1_4) _lh_pic_LH_P3_2_1_4)))))) in
              (fun f_1_7_2 -> 
                (`LH_C((f_1_7_2 h_1_9_1), ((map__d1__d0__d3 f_1_7_2) t_1_9_4))))))))) in
      (let rec _lh_zip3_LH_C_0_1_1_0 = 30 in
        (fun _lh_zip3_LH_C_0_1_1_1 _lh_zip3_LH_C_0_1_1_2 _lh_zip3_LH_C_1_1_1_9 _lh_zip3_LH_C_1_1_2_0 -> 
          (let rec t_1_9_5 = (((zip3__d0__d0__d3 _lh_zip3_LH_C_1_1_1_9) _lh_zip3_LH_C_1_1_2_0) _lh_zip3_LH_C_1_1_0_7) in
            (let rec h_1_9_2 = (let rec _lh_pic_LH_P3_2_1_5 = _lh_zip3_LH_C_0_1_1_0 in
              (let rec _lh_pic_LH_P3_1_1_5 = _lh_zip3_LH_C_0_1_1_2 in
                (let rec _lh_pic_LH_P3_0_1_5 = _lh_zip3_LH_C_0_1_1_1 in
                  (fun _lh_dummy_3_0 -> 
                    ((mappend__d8__d0__d3 (title__d0__d0__d3 _lh_pic_LH_P3_0_1_5)) ((table__d0__d0__d3 _lh_pic_LH_P3_1_1_5) _lh_pic_LH_P3_2_1_5)))))) in
              (fun f_1_7_3 -> 
                (`LH_C((f_1_7_3 h_1_9_2), ((map__d1__d0__d4 f_1_7_3) t_1_9_5))))))))) in
      (let rec _lh_zip3_LH_C_0_1_1_3 = 31 in
        (fun _lh_zip3_LH_C_0_1_1_4 _lh_zip3_LH_C_0_1_1_5 _lh_zip3_LH_C_1_1_2_1 _lh_zip3_LH_C_1_1_2_2 -> 
          (let rec t_1_9_6 = (((zip3__d0__d0__d4 _lh_zip3_LH_C_1_1_2_1) _lh_zip3_LH_C_1_1_2_2) _lh_zip3_LH_C_1_1_0_6) in
            (let rec h_1_9_3 = (let rec _lh_pic_LH_P3_2_1_6 = _lh_zip3_LH_C_0_1_1_3 in
              (let rec _lh_pic_LH_P3_1_1_6 = _lh_zip3_LH_C_0_1_1_5 in
                (let rec _lh_pic_LH_P3_0_1_6 = _lh_zip3_LH_C_0_1_1_4 in
                  (fun _lh_dummy_3_1 -> 
                    ((mappend__d8__d0__d4 (title__d0__d0__d4 _lh_pic_LH_P3_0_1_6)) ((table__d0__d0__d4 _lh_pic_LH_P3_1_1_6) _lh_pic_LH_P3_2_1_6)))))) in
              (fun f_1_7_4 -> 
                (`LH_C((f_1_7_4 h_1_9_3), ((map__d1__d0__d5 f_1_7_4) t_1_9_6))))))))) in
      (let rec _lh_zip3_LH_C_0_1_1_6 = 31 in
        (fun _lh_zip3_LH_C_0_1_1_7 _lh_zip3_LH_C_0_1_1_8 _lh_zip3_LH_C_1_1_2_3 _lh_zip3_LH_C_1_1_2_4 -> 
          (let rec t_1_9_7 = (((zip3__d0__d0__d5 _lh_zip3_LH_C_1_1_2_3) _lh_zip3_LH_C_1_1_2_4) _lh_zip3_LH_C_1_1_0_5) in
            (let rec h_1_9_4 = (let rec _lh_pic_LH_P3_2_1_7 = _lh_zip3_LH_C_0_1_1_6 in
              (let rec _lh_pic_LH_P3_1_1_7 = _lh_zip3_LH_C_0_1_1_8 in
                (let rec _lh_pic_LH_P3_0_1_7 = _lh_zip3_LH_C_0_1_1_7 in
                  (fun _lh_dummy_3_2 -> 
                    ((mappend__d8__d0__d5 (title__d0__d0__d5 _lh_pic_LH_P3_0_1_7)) ((table__d0__d0__d5 _lh_pic_LH_P3_1_1_7) _lh_pic_LH_P3_2_1_7)))))) in
              (fun f_1_7_5 -> 
                (`LH_C((f_1_7_5 h_1_9_4), ((map__d1__d0__d6 f_1_7_5) t_1_9_7))))))))) in
      (let rec _lh_zip3_LH_C_0_1_1_9 = 30 in
        (fun _lh_zip3_LH_C_0_1_2_0 _lh_zip3_LH_C_0_1_2_1 _lh_zip3_LH_C_1_1_2_5 _lh_zip3_LH_C_1_1_2_6 -> 
          (let rec t_1_9_8 = (((zip3__d0__d0__d6 _lh_zip3_LH_C_1_1_2_5) _lh_zip3_LH_C_1_1_2_6) _lh_zip3_LH_C_1_1_0_4) in
            (let rec h_1_9_5 = (let rec _lh_pic_LH_P3_2_1_8 = _lh_zip3_LH_C_0_1_1_9 in
              (let rec _lh_pic_LH_P3_1_1_8 = _lh_zip3_LH_C_0_1_2_1 in
                (let rec _lh_pic_LH_P3_0_1_8 = _lh_zip3_LH_C_0_1_2_0 in
                  (fun _lh_dummy_3_3 -> 
                    ((mappend__d8__d0__d6 (title__d0__d0__d6 _lh_pic_LH_P3_0_1_8)) ((table__d0__d0__d6 _lh_pic_LH_P3_1_1_8) _lh_pic_LH_P3_2_1_8)))))) in
              (fun f_1_7_6 -> 
                (`LH_C((f_1_7_6 h_1_9_5), ((map__d1__d0__d7 f_1_7_6) t_1_9_8))))))))) in
      (let rec _lh_zip3_LH_C_0_1_2_2 = 31 in
        (fun _lh_zip3_LH_C_0_1_2_3 _lh_zip3_LH_C_0_1_2_4 _lh_zip3_LH_C_1_1_2_7 _lh_zip3_LH_C_1_1_2_8 -> 
          (let rec t_1_9_9 = (((zip3__d0__d0__d7 _lh_zip3_LH_C_1_1_2_7) _lh_zip3_LH_C_1_1_2_8) _lh_zip3_LH_C_1_1_0_3) in
            (let rec h_1_9_6 = (let rec _lh_pic_LH_P3_2_1_9 = _lh_zip3_LH_C_0_1_2_2 in
              (let rec _lh_pic_LH_P3_1_1_9 = _lh_zip3_LH_C_0_1_2_4 in
                (let rec _lh_pic_LH_P3_0_1_9 = _lh_zip3_LH_C_0_1_2_3 in
                  (fun _lh_dummy_3_4 -> 
                    ((mappend__d8__d0__d7 (title__d0__d0__d7 _lh_pic_LH_P3_0_1_9)) ((table__d0__d0__d7 _lh_pic_LH_P3_1_1_9) _lh_pic_LH_P3_2_1_9)))))) in
              (fun f_1_7_7 -> 
                (`LH_C((f_1_7_7 h_1_9_6), ((map__d1__d0__d8 f_1_7_7) t_1_9_9))))))))) in
      (let rec _lh_zip3_LH_C_0_1_2_5 = 30 in
        (fun _lh_zip3_LH_C_0_1_2_6 _lh_zip3_LH_C_0_1_2_7 _lh_zip3_LH_C_1_1_2_9 _lh_zip3_LH_C_1_1_3_0 -> 
          (let rec t_2_0_0 = (((zip3__d0__d0__d8 _lh_zip3_LH_C_1_1_2_9) _lh_zip3_LH_C_1_1_3_0) _lh_zip3_LH_C_1_1_0_2) in
            (let rec h_1_9_7 = (let rec _lh_pic_LH_P3_2_2_0 = _lh_zip3_LH_C_0_1_2_5 in
              (let rec _lh_pic_LH_P3_1_2_0 = _lh_zip3_LH_C_0_1_2_7 in
                (let rec _lh_pic_LH_P3_0_2_0 = _lh_zip3_LH_C_0_1_2_6 in
                  (fun _lh_dummy_3_5 -> 
                    ((mappend__d8__d0__d8 (title__d0__d0__d8 _lh_pic_LH_P3_0_2_0)) ((table__d0__d0__d8 _lh_pic_LH_P3_1_2_0) _lh_pic_LH_P3_2_2_0)))))) in
              (fun f_1_7_8 -> 
                (`LH_C((f_1_7_8 h_1_9_7), ((map__d1__d0__d9 f_1_7_8) t_2_0_0))))))))) in
      (let rec _lh_zip3_LH_C_0_1_2_8 = 31 in
        (fun _lh_zip3_LH_C_0_1_2_9 _lh_zip3_LH_C_0_1_3_0 _lh_zip3_LH_C_1_1_3_1 _lh_zip3_LH_C_1_1_3_2 -> 
          (let rec t_2_0_1 = (((zip3__d0__d0__d9 _lh_zip3_LH_C_1_1_3_1) _lh_zip3_LH_C_1_1_3_2) _lh_zip3_LH_C_1_1_0_1) in
            (let rec h_1_9_8 = (let rec _lh_pic_LH_P3_2_2_1 = _lh_zip3_LH_C_0_1_2_8 in
              (let rec _lh_pic_LH_P3_1_2_1 = _lh_zip3_LH_C_0_1_3_0 in
                (let rec _lh_pic_LH_P3_0_2_1 = _lh_zip3_LH_C_0_1_2_9 in
                  (fun _lh_dummy_3_6 -> 
                    ((mappend__d8__d0__d9 (title__d0__d0__d9 _lh_pic_LH_P3_0_2_1)) ((table__d0__d0__d9 _lh_pic_LH_P3_1_2_1) _lh_pic_LH_P3_2_2_1)))))) in
              (fun f_1_7_9 -> 
                (`LH_C((f_1_7_9 h_1_9_8), ((map__d1__d0__d1_d0 f_1_7_9) t_2_0_1))))))))) in
      (let rec _lh_zip3_LH_C_0_1_3_1 = feb_2 in
        (fun _lh_zip3_LH_C_0_1_3_2 _lh_zip3_LH_C_0_1_3_3 _lh_zip3_LH_C_1_1_3_3 _lh_zip3_LH_C_1_1_3_4 -> 
          (let rec t_2_0_2 = (((zip3__d0__d0__d1_d0 _lh_zip3_LH_C_1_1_3_3) _lh_zip3_LH_C_1_1_3_4) _lh_zip3_LH_C_1_1_0_0) in
            (let rec h_1_9_9 = (let rec _lh_pic_LH_P3_2_2_2 = _lh_zip3_LH_C_0_1_3_1 in
              (let rec _lh_pic_LH_P3_1_2_2 = _lh_zip3_LH_C_0_1_3_3 in
                (let rec _lh_pic_LH_P3_0_2_2 = _lh_zip3_LH_C_0_1_3_2 in
                  (fun _lh_dummy_3_7 -> 
                    ((mappend__d8__d0__d1_d0 (title__d0__d0__d1_d0 _lh_pic_LH_P3_0_2_2)) ((table__d0__d0__d1_d0 _lh_pic_LH_P3_1_2_2) _lh_pic_LH_P3_2_2_2)))))) in
              (fun f_1_8_0 -> 
                (`LH_C((f_1_8_0 h_1_9_9), ((map__d1__d0__d1_d1 f_1_8_0) t_2_0_2))))))))) in
      (let rec _lh_zip3_LH_C_0_1_3_4 = 31 in
        (let rec t_2_0_3 = (((zip3__d0__d0__d1_d1 _lh_zip3_LH_C_1_1_3_5) _lh_zip3_LH_C_1_1_3_6) _lh_zip3_LH_C_1_9_9) in
          (let rec h_2_0_0 = (let rec _lh_pic_LH_P3_2_2_3 = _lh_zip3_LH_C_0_1_3_4 in
            (let rec _lh_pic_LH_P3_1_2_3 = _lh_zip3_LH_C_0_1_3_6 in
              (let rec _lh_pic_LH_P3_0_2_3 = _lh_zip3_LH_C_0_1_3_5 in
                (fun _lh_dummy_3_8 -> 
                  ((mappend__d8__d0__d1_d1 (title__d0__d0__d1_d1 _lh_pic_LH_P3_0_2_3)) ((table__d0__d0__d1_d1 _lh_pic_LH_P3_1_2_3) _lh_pic_LH_P3_2_2_3)))))) in
            (`LH_C((f_1_8_1 h_2_0_0), ((map__d1__d0__d1_d2 f_1_8_1) t_2_0_3))))))))
and months__d0__d0__d0 _lh_months_arg1_1 =
  (((zip3__d0__d0__d1_d2 monthNames__d0__d0__d0) (firstDays__d0__d0__d0 _lh_months_arg1_1)) (monthLengths__d1__d0__d0 _lh_months_arg1_1))
and pad__d0__d0__d0 _lh_pad_arg1_1 =
  ((mappend__d5__d0__d0 (((zipWith__d1__d0__d1 mappend__d6__d0__d0) (((zipWith__d2__d0__d1 mappend__d7__d0__d0) (side__d0__d0__d0 0)) _lh_pad_arg1_1)) (side__d1__d0__d0 0))) (end__d0__d0__d0 0))
and rjustify__d0__d0__d0 _lh_rjustify_arg1_1_0 _lh_rjustify_arg2_1_0 =
  ((mappend__d1_d1__d0__d0 (space__d2__d0__d0 (_lh_rjustify_arg1_1_0 - (length__d1__d0__d0 _lh_rjustify_arg2_1_0)))) _lh_rjustify_arg2_1_0)
and rjustify__d0__d0__d1 _lh_rjustify_arg1_4 _lh_rjustify_arg2_4 =
  ((mappend__d1_d1__d0__d2 (space__d2__d0__d1 (_lh_rjustify_arg1_4 - (length__d1__d0__d1 _lh_rjustify_arg2_4)))) _lh_rjustify_arg2_4)
and rjustify__d0__d0__d1_d0 _lh_rjustify_arg1_1_1 _lh_rjustify_arg2_1_1 =
  ((mappend__d1_d1__d0__d2_d0 (space__d2__d0__d1_d0 (_lh_rjustify_arg1_1_1 - (length__d1__d0__d1_d0 _lh_rjustify_arg2_1_1)))) _lh_rjustify_arg2_1_1)
and rjustify__d0__d0__d1_d1 _lh_rjustify_arg1_7 _lh_rjustify_arg2_7 =
  ((mappend__d1_d1__d0__d2_d2 (space__d2__d0__d1_d1 (_lh_rjustify_arg1_7 - (length__d1__d0__d1_d1 _lh_rjustify_arg2_7)))) _lh_rjustify_arg2_7)
and rjustify__d0__d0__d2 _lh_rjustify_arg1_9 _lh_rjustify_arg2_9 =
  ((mappend__d1_d1__d0__d4 (space__d2__d0__d2 (_lh_rjustify_arg1_9 - (length__d1__d0__d2 _lh_rjustify_arg2_9)))) _lh_rjustify_arg2_9)
and rjustify__d0__d0__d3 _lh_rjustify_arg1_1 _lh_rjustify_arg2_1 =
  ((mappend__d1_d1__d0__d6 (space__d2__d0__d3 (_lh_rjustify_arg1_1 - (length__d1__d0__d3 _lh_rjustify_arg2_1)))) _lh_rjustify_arg2_1)
and rjustify__d0__d0__d4 _lh_rjustify_arg1_5 _lh_rjustify_arg2_5 =
  ((mappend__d1_d1__d0__d8 (space__d2__d0__d4 (_lh_rjustify_arg1_5 - (length__d1__d0__d4 _lh_rjustify_arg2_5)))) _lh_rjustify_arg2_5)
and rjustify__d0__d0__d5 _lh_rjustify_arg1_8 _lh_rjustify_arg2_8 =
  ((mappend__d1_d1__d0__d1_d0 (space__d2__d0__d5 (_lh_rjustify_arg1_8 - (length__d1__d0__d5 _lh_rjustify_arg2_8)))) _lh_rjustify_arg2_8)
and rjustify__d0__d0__d6 _lh_rjustify_arg1_1_2 _lh_rjustify_arg2_1_2 =
  ((mappend__d1_d1__d0__d1_d2 (space__d2__d0__d6 (_lh_rjustify_arg1_1_2 - (length__d1__d0__d6 _lh_rjustify_arg2_1_2)))) _lh_rjustify_arg2_1_2)
and rjustify__d0__d0__d7 _lh_rjustify_arg1_2 _lh_rjustify_arg2_2 =
  ((mappend__d1_d1__d0__d1_d4 (space__d2__d0__d7 (_lh_rjustify_arg1_2 - (length__d1__d0__d7 _lh_rjustify_arg2_2)))) _lh_rjustify_arg2_2)
and rjustify__d0__d0__d8 _lh_rjustify_arg1_3 _lh_rjustify_arg2_3 =
  ((mappend__d1_d1__d0__d1_d6 (space__d2__d0__d8 (_lh_rjustify_arg1_3 - (length__d1__d0__d8 _lh_rjustify_arg2_3)))) _lh_rjustify_arg2_3)
and rjustify__d0__d0__d9 _lh_rjustify_arg1_6 _lh_rjustify_arg2_6 =
  ((mappend__d1_d1__d0__d1_d8 (space__d2__d0__d9 (_lh_rjustify_arg1_6 - (length__d1__d0__d9 _lh_rjustify_arg2_6)))) _lh_rjustify_arg2_6)
and scanl__d0__d0__d0 _lh_scanl_arg1_2_2 _lh_scanl_arg2_2_2 _lh_scanl_arg3_9 f_1_3_1 n_2_9 _lh_zip3_LH_C_0_9_0 _lh_zip3_LH_C_1_9_0 _lh_zip3_arg3_5_2 =
  (let rec t_1_4_3 = (let rec _lh_matchIdent_5_0 = _lh_scanl_arg3_9 in
    ((_lh_matchIdent_5_0 _lh_scanl_arg1_2_2) _lh_scanl_arg2_2_2)) in
    (let rec h_1_4_0 = _lh_scanl_arg2_2_2 in
      (let rec t_1_4_4 = ((map__d2__d0__d1 f_1_3_1) t_1_4_3) in
        (let rec h_1_4_1 = (f_1_3_1 h_1_4_0) in
          (let rec _lh_zip3_LH_C_1_8_9 = ((take__d1__d0__d0 (n_2_9 - 1)) t_1_4_4) in
            (let rec _lh_zip3_LH_C_0_8_9 = h_1_4_1 in
              (let rec _lh_matchIdent_5_1 = _lh_zip3_arg3_5_2 in
                ((((_lh_matchIdent_5_1 _lh_zip3_LH_C_0_9_0) _lh_zip3_LH_C_0_8_9) _lh_zip3_LH_C_1_9_0) _lh_zip3_LH_C_1_8_9))))))))
and scanl__d0__d0__d1 _lh_scanl_arg1_1_4 _lh_scanl_arg2_1_4 _lh_scanl_arg3_1 f_5_4 n_8 _lh_zip3_LH_C_0_5_6 _lh_zip3_LH_C_1_5_6 _lh_zip3_arg3_1_9 =
  (let rec t_6_0 = (let rec _lh_matchIdent_1_6 = _lh_scanl_arg3_1 in
    ((_lh_matchIdent_1_6 _lh_scanl_arg1_1_4) _lh_scanl_arg2_1_4)) in
    (let rec h_5_7 = _lh_scanl_arg2_1_4 in
      (let rec t_6_1 = ((map__d2__d0__d2 f_5_4) t_6_0) in
        (let rec h_5_8 = (f_5_4 h_5_7) in
          (let rec _lh_zip3_LH_C_1_5_5 = ((take__d1__d0__d1 (n_8 - 1)) t_6_1) in
            (let rec _lh_zip3_LH_C_0_5_5 = h_5_8 in
              (let rec _lh_matchIdent_1_7 = _lh_zip3_arg3_1_9 in
                ((((_lh_matchIdent_1_7 _lh_zip3_LH_C_0_5_6) _lh_zip3_LH_C_0_5_5) _lh_zip3_LH_C_1_5_6) _lh_zip3_LH_C_1_5_5))))))))
and scanl__d0__d0__d1_d0 _lh_scanl_arg1_1_5 _lh_scanl_arg2_1_5 _lh_scanl_arg3_2 f_5_5 n_9 _lh_zip3_LH_C_0_5_8 _lh_zip3_LH_C_1_5_8 _lh_zip3_arg3_2_0 =
  (let rec t_6_2 = (let rec _lh_matchIdent_1_8 = _lh_scanl_arg3_2 in
    ((_lh_matchIdent_1_8 _lh_scanl_arg1_1_5) _lh_scanl_arg2_1_5)) in
    (let rec h_5_9 = _lh_scanl_arg2_1_5 in
      (let rec t_6_3 = ((map__d2__d0__d1_d1 f_5_5) t_6_2) in
        (let rec h_6_0 = (f_5_5 h_5_9) in
          (let rec _lh_zip3_LH_C_1_5_7 = ((take__d1__d0__d1_d0 (n_9 - 1)) t_6_3) in
            (let rec _lh_zip3_LH_C_0_5_7 = h_6_0 in
              (let rec _lh_matchIdent_1_9 = _lh_zip3_arg3_2_0 in
                ((((_lh_matchIdent_1_9 _lh_zip3_LH_C_0_5_8) _lh_zip3_LH_C_0_5_7) _lh_zip3_LH_C_1_5_8) _lh_zip3_LH_C_1_5_7))))))))
and scanl__d0__d0__d1_d1 _lh_scanl_arg1_2_1 _lh_scanl_arg2_2_1 _lh_scanl_arg3_8 f_1_1_2 n_2_5 _lh_zip3_LH_C_0_8_7 _lh_zip3_LH_C_1_8_7 _lh_zip3_arg3_4_8 =
  (let rec t_1_2_1 = (let rec _lh_matchIdent_4_6 = _lh_scanl_arg3_8 in
    ((_lh_matchIdent_4_6 _lh_scanl_arg1_2_1) _lh_scanl_arg2_2_1)) in
    (let rec h_1_1_8 = _lh_scanl_arg2_2_1 in
      (let rec t_1_2_2 = ((map__d2__d0__d1_d2 f_1_1_2) t_1_2_1) in
        (let rec h_1_1_9 = (f_1_1_2 h_1_1_8) in
          (let rec _lh_zip3_LH_C_1_8_6 = ((take__d1__d0__d1_d1 (n_2_5 - 1)) t_1_2_2) in
            (let rec _lh_zip3_LH_C_0_8_6 = h_1_1_9 in
              (let rec _lh_matchIdent_4_7 = _lh_zip3_arg3_4_8 in
                ((((_lh_matchIdent_4_7 _lh_zip3_LH_C_0_8_7) _lh_zip3_LH_C_0_8_6) _lh_zip3_LH_C_1_8_7) _lh_zip3_LH_C_1_8_6))))))))
and scanl__d0__d0__d1_d2 _lh_scanl_arg1_2_5 _lh_scanl_arg2_2_5 _lh_scanl_arg3_1_2 f_1_8_2 n_3_9 _lh_zip3_LH_C_0_1_3_8 _lh_zip3_LH_C_1_1_3_8 _lh_zip3_arg3_6_1 =
  (let rec t_2_0_4 = (let rec _lh_matchIdent_5_8 = _lh_scanl_arg3_1_2 in
    ((_lh_matchIdent_5_8 _lh_scanl_arg1_2_5) _lh_scanl_arg2_2_5)) in
    (let rec h_2_0_1 = _lh_scanl_arg2_2_5 in
      (let rec t_2_0_5 = ((map__d2__d0__d1_d3 f_1_8_2) t_2_0_4) in
        (let rec h_2_0_2 = (f_1_8_2 h_2_0_1) in
          (let rec _lh_zip3_LH_C_1_1_3_7 = ((take__d1__d0__d1_d2 (n_3_9 - 1)) t_2_0_5) in
            (let rec _lh_zip3_LH_C_0_1_3_7 = h_2_0_2 in
              (let rec _lh_matchIdent_5_9 = _lh_zip3_arg3_6_1 in
                ((((_lh_matchIdent_5_9 _lh_zip3_LH_C_0_1_3_8) _lh_zip3_LH_C_0_1_3_7) _lh_zip3_LH_C_1_1_3_8) _lh_zip3_LH_C_1_1_3_7))))))))
and scanl__d0__d0__d2 _lh_scanl_arg1_1_6 _lh_scanl_arg2_1_6 _lh_scanl_arg3_3 f_7_7 n_1_3 _lh_zip3_LH_C_0_6_1 _lh_zip3_LH_C_1_6_1 _lh_zip3_arg3_2_3 =
  (let rec t_8_1 = (let rec _lh_matchIdent_2_1 = _lh_scanl_arg3_3 in
    ((_lh_matchIdent_2_1 _lh_scanl_arg1_1_6) _lh_scanl_arg2_1_6)) in
    (let rec h_7_8 = _lh_scanl_arg2_1_6 in
      (let rec t_8_2 = ((map__d2__d0__d3 f_7_7) t_8_1) in
        (let rec h_7_9 = (f_7_7 h_7_8) in
          (let rec _lh_zip3_LH_C_1_6_0 = ((take__d1__d0__d2 (n_1_3 - 1)) t_8_2) in
            (let rec _lh_zip3_LH_C_0_6_0 = h_7_9 in
              (let rec _lh_matchIdent_2_2 = _lh_zip3_arg3_2_3 in
                ((((_lh_matchIdent_2_2 _lh_zip3_LH_C_0_6_1) _lh_zip3_LH_C_0_6_0) _lh_zip3_LH_C_1_6_1) _lh_zip3_LH_C_1_6_0))))))))
and scanl__d0__d0__d3 _lh_scanl_arg1_1_9 _lh_scanl_arg2_1_9 _lh_scanl_arg3_6 f_9_2 n_2_2 _lh_zip3_LH_C_0_7_1 _lh_zip3_LH_C_1_7_1 _lh_zip3_arg3_3_2 =
  (let rec t_9_8 = (let rec _lh_matchIdent_2_9 = _lh_scanl_arg3_6 in
    ((_lh_matchIdent_2_9 _lh_scanl_arg1_1_9) _lh_scanl_arg2_1_9)) in
    (let rec h_9_5 = _lh_scanl_arg2_1_9 in
      (let rec t_9_9 = ((map__d2__d0__d4 f_9_2) t_9_8) in
        (let rec h_9_6 = (f_9_2 h_9_5) in
          (let rec _lh_zip3_LH_C_1_7_0 = ((take__d1__d0__d3 (n_2_2 - 1)) t_9_9) in
            (let rec _lh_zip3_LH_C_0_7_0 = h_9_6 in
              (let rec _lh_matchIdent_3_0 = _lh_zip3_arg3_3_2 in
                ((((_lh_matchIdent_3_0 _lh_zip3_LH_C_0_7_1) _lh_zip3_LH_C_0_7_0) _lh_zip3_LH_C_1_7_1) _lh_zip3_LH_C_1_7_0))))))))
and scanl__d0__d0__d4 _lh_scanl_arg1_1_8 _lh_scanl_arg2_1_8 _lh_scanl_arg3_5 f_8_8 n_1_9 _lh_zip3_LH_C_0_6_8 _lh_zip3_LH_C_1_6_8 _lh_zip3_arg3_3_0 =
  (let rec t_9_4 = (let rec _lh_matchIdent_2_7 = _lh_scanl_arg3_5 in
    ((_lh_matchIdent_2_7 _lh_scanl_arg1_1_8) _lh_scanl_arg2_1_8)) in
    (let rec h_9_1 = _lh_scanl_arg2_1_8 in
      (let rec t_9_5 = ((map__d2__d0__d5 f_8_8) t_9_4) in
        (let rec h_9_2 = (f_8_8 h_9_1) in
          (let rec _lh_zip3_LH_C_1_6_7 = ((take__d1__d0__d4 (n_1_9 - 1)) t_9_5) in
            (let rec _lh_zip3_LH_C_0_6_7 = h_9_2 in
              (let rec _lh_matchIdent_2_8 = _lh_zip3_arg3_3_0 in
                ((((_lh_matchIdent_2_8 _lh_zip3_LH_C_0_6_8) _lh_zip3_LH_C_0_6_7) _lh_zip3_LH_C_1_6_8) _lh_zip3_LH_C_1_6_7))))))))
and scanl__d0__d0__d5 _lh_scanl_arg1_3_9 _lh_scanl_arg2_3_9 _lh_scanl_arg3_1_3 f_2_3_8 n_4_5 _lh_zip3_LH_C_0_1_4_3 _lh_zip3_LH_C_1_1_4_3 _lh_zip3_arg3_6_8 =
  (let rec t_2_6_1 = (let rec _lh_matchIdent_6_3 = _lh_scanl_arg3_1_3 in
    ((_lh_matchIdent_6_3 _lh_scanl_arg1_3_9) _lh_scanl_arg2_3_9)) in
    (let rec h_2_5_7 = _lh_scanl_arg2_3_9 in
      (let rec t_2_6_2 = ((map__d2__d0__d6 f_2_3_8) t_2_6_1) in
        (let rec h_2_5_8 = (f_2_3_8 h_2_5_7) in
          (let rec _lh_zip3_LH_C_1_1_4_2 = ((take__d1__d0__d5 (n_4_5 - 1)) t_2_6_2) in
            (let rec _lh_zip3_LH_C_0_1_4_2 = h_2_5_8 in
              (let rec _lh_matchIdent_6_4 = _lh_zip3_arg3_6_8 in
                ((((_lh_matchIdent_6_4 _lh_zip3_LH_C_0_1_4_3) _lh_zip3_LH_C_0_1_4_2) _lh_zip3_LH_C_1_1_4_3) _lh_zip3_LH_C_1_1_4_2))))))))
and scanl__d0__d0__d6 _lh_scanl_arg1_2_0 _lh_scanl_arg2_2_0 _lh_scanl_arg3_7 f_1_0_4 n_2_4 _lh_zip3_LH_C_0_7_3 _lh_zip3_LH_C_1_7_3 _lh_zip3_arg3_3_4 =
  (let rec t_1_1_1 = (let rec _lh_matchIdent_3_2 = _lh_scanl_arg3_7 in
    ((_lh_matchIdent_3_2 _lh_scanl_arg1_2_0) _lh_scanl_arg2_2_0)) in
    (let rec h_1_0_8 = _lh_scanl_arg2_2_0 in
      (let rec t_1_1_2 = ((map__d2__d0__d7 f_1_0_4) t_1_1_1) in
        (let rec h_1_0_9 = (f_1_0_4 h_1_0_8) in
          (let rec _lh_zip3_LH_C_1_7_2 = ((take__d1__d0__d6 (n_2_4 - 1)) t_1_1_2) in
            (let rec _lh_zip3_LH_C_0_7_2 = h_1_0_9 in
              (let rec _lh_matchIdent_3_3 = _lh_zip3_arg3_3_4 in
                ((((_lh_matchIdent_3_3 _lh_zip3_LH_C_0_7_3) _lh_zip3_LH_C_0_7_2) _lh_zip3_LH_C_1_7_3) _lh_zip3_LH_C_1_7_2))))))))
and scanl__d0__d0__d7 _lh_scanl_arg1_2_3 _lh_scanl_arg2_2_3 _lh_scanl_arg3_1_0 f_1_6_4 n_3_5 _lh_zip3_LH_C_0_9_5 _lh_zip3_LH_C_1_9_5 _lh_zip3_arg3_5_8 =
  (let rec t_1_8_5 = (let rec _lh_matchIdent_5_4 = _lh_scanl_arg3_1_0 in
    ((_lh_matchIdent_5_4 _lh_scanl_arg1_2_3) _lh_scanl_arg2_2_3)) in
    (let rec h_1_8_2 = _lh_scanl_arg2_2_3 in
      (let rec t_1_8_6 = ((map__d2__d0__d8 f_1_6_4) t_1_8_5) in
        (let rec h_1_8_3 = (f_1_6_4 h_1_8_2) in
          (let rec _lh_zip3_LH_C_1_9_4 = ((take__d1__d0__d7 (n_3_5 - 1)) t_1_8_6) in
            (let rec _lh_zip3_LH_C_0_9_4 = h_1_8_3 in
              (let rec _lh_matchIdent_5_5 = _lh_zip3_arg3_5_8 in
                ((((_lh_matchIdent_5_5 _lh_zip3_LH_C_0_9_5) _lh_zip3_LH_C_0_9_4) _lh_zip3_LH_C_1_9_5) _lh_zip3_LH_C_1_9_4))))))))
and scanl__d0__d0__d8 _lh_scanl_arg1_2_4 _lh_scanl_arg2_2_4 _lh_scanl_arg3_1_1 f_1_6_5 n_3_6 _lh_zip3_LH_C_0_9_7 _lh_zip3_LH_C_1_9_7 _lh_zip3_arg3_5_9 =
  (let rec t_1_8_7 = (let rec _lh_matchIdent_5_6 = _lh_scanl_arg3_1_1 in
    ((_lh_matchIdent_5_6 _lh_scanl_arg1_2_4) _lh_scanl_arg2_2_4)) in
    (let rec h_1_8_4 = _lh_scanl_arg2_2_4 in
      (let rec t_1_8_8 = ((map__d2__d0__d9 f_1_6_5) t_1_8_7) in
        (let rec h_1_8_5 = (f_1_6_5 h_1_8_4) in
          (let rec _lh_zip3_LH_C_1_9_6 = ((take__d1__d0__d8 (n_3_6 - 1)) t_1_8_8) in
            (let rec _lh_zip3_LH_C_0_9_6 = h_1_8_5 in
              (let rec _lh_matchIdent_5_7 = _lh_zip3_arg3_5_9 in
                ((((_lh_matchIdent_5_7 _lh_zip3_LH_C_0_9_7) _lh_zip3_LH_C_0_9_6) _lh_zip3_LH_C_1_9_7) _lh_zip3_LH_C_1_9_6))))))))
and scanl__d0__d0__d9 _lh_scanl_arg1_1_7 _lh_scanl_arg2_1_7 _lh_scanl_arg3_4 f_8_2 n_1_5 _lh_zip3_LH_C_0_6_4 _lh_zip3_LH_C_1_6_4 _lh_zip3_arg3_2_7 =
  (let rec t_8_6 = (let rec _lh_matchIdent_2_5 = _lh_scanl_arg3_4 in
    ((_lh_matchIdent_2_5 _lh_scanl_arg1_1_7) _lh_scanl_arg2_1_7)) in
    (let rec h_8_3 = _lh_scanl_arg2_1_7 in
      (let rec t_8_7 = ((map__d2__d0__d1_d0 f_8_2) t_8_6) in
        (let rec h_8_4 = (f_8_2 h_8_3) in
          (let rec _lh_zip3_LH_C_1_6_3 = ((take__d1__d0__d9 (n_1_5 - 1)) t_8_7) in
            (let rec _lh_zip3_LH_C_0_6_3 = h_8_4 in
              (let rec _lh_matchIdent_2_6 = _lh_zip3_arg3_2_7 in
                ((((_lh_matchIdent_2_6 _lh_zip3_LH_C_0_6_4) _lh_zip3_LH_C_0_6_3) _lh_zip3_LH_C_1_6_4) _lh_zip3_LH_C_1_6_3))))))))
and side__d0__d0__d0 _lh_side_arg1_2 =
  (emptyPic__d2__d0__d0 (let rec _lh_emptyPic_LH_P2_1_4 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_4 = 8 in
      (fun _lh_dummy_2_2 -> 
        ((copy__d6__d0__d0 _lh_emptyPic_LH_P2_0_4) ((copy__d7__d0__d0 _lh_emptyPic_LH_P2_1_4) ' '))))))
and side__d1__d0__d0 _lh_side_arg1_3 =
  (emptyPic__d3__d0__d0 (let rec _lh_emptyPic_LH_P2_1_7 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_7 = 8 in
      (fun _lh_dummy_4_1 -> 
        ((copy__d8__d0__d0 _lh_emptyPic_LH_P2_0_7) ((copy__d9__d0__d0 _lh_emptyPic_LH_P2_1_7) ' '))))))
and space__d0__d0__d0 _lh_space_arg1_2_9 =
  ((copy__d0__d0__d0 _lh_space_arg1_2_9) ' ')
and space__d1__d0__d0 _lh_space_arg1_9 =
  ((copy__d1__d0__d0 _lh_space_arg1_9) ' ')
and space__d2__d0__d0 _lh_space_arg1_2_2 =
  ((copy__d1_d0__d0__d0 _lh_space_arg1_2_2) ' ')
and space__d2__d0__d1 _lh_space_arg1_2_4 =
  ((copy__d1_d0__d0__d1 _lh_space_arg1_2_4) ' ')
and space__d2__d0__d1_d0 _lh_space_arg1_8 =
  ((copy__d1_d0__d0__d1_d0 _lh_space_arg1_8) ' ')
and space__d2__d0__d1_d1 _lh_space_arg1_3_0 =
  ((copy__d1_d0__d0__d1_d1 _lh_space_arg1_3_0) ' ')
and space__d2__d0__d2 _lh_space_arg1_3_2 =
  ((copy__d1_d0__d0__d2 _lh_space_arg1_3_2) ' ')
and space__d2__d0__d3 _lh_space_arg1_4_0 =
  ((copy__d1_d0__d0__d3 _lh_space_arg1_4_0) ' ')
and space__d2__d0__d4 _lh_space_arg1_3_4 =
  ((copy__d1_d0__d0__d4 _lh_space_arg1_3_4) ' ')
and space__d2__d0__d5 _lh_space_arg1_1_0 =
  ((copy__d1_d0__d0__d5 _lh_space_arg1_1_0) ' ')
and space__d2__d0__d6 _lh_space_arg1_1_9 =
  ((copy__d1_d0__d0__d6 _lh_space_arg1_1_9) ' ')
and space__d2__d0__d7 _lh_space_arg1_2_7 =
  ((copy__d1_d0__d0__d7 _lh_space_arg1_2_7) ' ')
and space__d2__d0__d8 _lh_space_arg1_3_9 =
  ((copy__d1_d0__d0__d8 _lh_space_arg1_3_9) ' ')
and space__d2__d0__d9 _lh_space_arg1_3_5 =
  ((copy__d1_d0__d0__d9 _lh_space_arg1_3_5) ' ')
and space__d3__d0__d0 _lh_space_arg1_7 =
  ((copy__d1_d1__d0__d0 _lh_space_arg1_7) ' ')
and space__d3__d0__d1 _lh_space_arg1_3_1 =
  ((copy__d1_d1__d0__d1 _lh_space_arg1_3_1) ' ')
and space__d3__d0__d1_d0 _lh_space_arg1_1_8 =
  ((copy__d1_d1__d0__d1_d0 _lh_space_arg1_1_8) ' ')
and space__d3__d0__d1_d1 _lh_space_arg1_6 =
  ((copy__d1_d1__d0__d1_d1 _lh_space_arg1_6) ' ')
and space__d3__d0__d2 _lh_space_arg1_2_1 =
  ((copy__d1_d1__d0__d2 _lh_space_arg1_2_1) ' ')
and space__d3__d0__d3 _lh_space_arg1_1_4 =
  ((copy__d1_d1__d0__d3 _lh_space_arg1_1_4) ' ')
and space__d3__d0__d4 _lh_space_arg1_1_1 =
  ((copy__d1_d1__d0__d4 _lh_space_arg1_1_1) ' ')
and space__d3__d0__d5 _lh_space_arg1_4_1 =
  ((copy__d1_d1__d0__d5 _lh_space_arg1_4_1) ' ')
and space__d3__d0__d6 _lh_space_arg1_2_6 =
  ((copy__d1_d1__d0__d6 _lh_space_arg1_2_6) ' ')
and space__d3__d0__d7 _lh_space_arg1_2_0 =
  ((copy__d1_d1__d0__d7 _lh_space_arg1_2_0) ' ')
and space__d3__d0__d8 _lh_space_arg1_1_5 =
  ((copy__d1_d1__d0__d8 _lh_space_arg1_1_5) ' ')
and space__d3__d0__d9 _lh_space_arg1_2_3 =
  ((copy__d1_d1__d0__d9 _lh_space_arg1_2_3) ' ')
and space__d4__d0__d0 _lh_space_arg1_1_2 =
  ((copy__d1_d2__d0__d0 _lh_space_arg1_1_2) ' ')
and space__d4__d0__d1 _lh_space_arg1_1_7 =
  ((copy__d1_d2__d0__d1 _lh_space_arg1_1_7) ' ')
and space__d4__d0__d1_d0 _lh_space_arg1_5 =
  ((copy__d1_d2__d0__d1_d0 _lh_space_arg1_5) ' ')
and space__d4__d0__d1_d1 _lh_space_arg1_3_6 =
  ((copy__d1_d2__d0__d1_d1 _lh_space_arg1_3_6) ' ')
and space__d4__d0__d2 _lh_space_arg1_2_8 =
  ((copy__d1_d2__d0__d2 _lh_space_arg1_2_8) ' ')
and space__d4__d0__d3 _lh_space_arg1_1_6 =
  ((copy__d1_d2__d0__d3 _lh_space_arg1_1_6) ' ')
and space__d4__d0__d4 _lh_space_arg1_3_7 =
  ((copy__d1_d2__d0__d4 _lh_space_arg1_3_7) ' ')
and space__d4__d0__d5 _lh_space_arg1_2_5 =
  ((copy__d1_d2__d0__d5 _lh_space_arg1_2_5) ' ')
and space__d4__d0__d6 _lh_space_arg1_3_8 =
  ((copy__d1_d2__d0__d6 _lh_space_arg1_3_8) ' ')
and space__d4__d0__d7 _lh_space_arg1_4_2 =
  ((copy__d1_d2__d0__d7 _lh_space_arg1_4_2) ' ')
and space__d4__d0__d8 _lh_space_arg1_3_3 =
  ((copy__d1_d2__d0__d8 _lh_space_arg1_3_3) ' ')
and space__d4__d0__d9 _lh_space_arg1_1_3 =
  ((copy__d1_d2__d0__d9 _lh_space_arg1_1_3) ' ')
and spread__d0__d0__d0 _lh_spread_arg1_2 =
  ((foldr1__d0__d0__d0 (fun a_8 b_7 -> 
    (((zipWith__d0__d0__d0 mappend__d3__d0__d0) a_8) b_7))) _lh_spread_arg1_2)
and spread__d1__d0__d0 _lh_spread_arg1_5 =
  ((foldr1__d2__d0__d0 (fun a_1_2 b_1_1 -> 
    (((zipWith__d3__d0__d0 mappend__d9__d0__d0) a_1_2) b_1_1))) _lh_spread_arg1_5)
and spread__d1__d0__d1 _lh_spread_arg1_1_1 =
  ((foldr1__d2__d0__d1 (fun a_3_0 b_2_9 -> 
    (((zipWith__d3__d0__d1 mappend__d9__d0__d1) a_3_0) b_2_9))) _lh_spread_arg1_1_1)
and spread__d1__d0__d1_d0 _lh_spread_arg1_1_4 =
  ((foldr1__d2__d0__d1_d0 (fun a_4_7 b_4_5 -> 
    (((zipWith__d3__d0__d1_d0 mappend__d9__d0__d1_d0) a_4_7) b_4_5))) _lh_spread_arg1_1_4)
and spread__d1__d0__d1_d1 _lh_spread_arg1_3 =
  ((foldr1__d2__d0__d1_d1 (fun a_9 b_8 -> 
    (((zipWith__d3__d0__d1_d1 mappend__d9__d0__d1_d1) a_9) b_8))) _lh_spread_arg1_3)
and spread__d1__d0__d2 _lh_spread_arg1_6 =
  ((foldr1__d2__d0__d2 (fun a_2_0 b_1_9 -> 
    (((zipWith__d3__d0__d2 mappend__d9__d0__d2) a_2_0) b_1_9))) _lh_spread_arg1_6)
and spread__d1__d0__d3 _lh_spread_arg1_9 =
  ((foldr1__d2__d0__d3 (fun a_2_6 b_2_5 -> 
    (((zipWith__d3__d0__d3 mappend__d9__d0__d3) a_2_6) b_2_5))) _lh_spread_arg1_9)
and spread__d1__d0__d4 _lh_spread_arg1_1_2 =
  ((foldr1__d2__d0__d4 (fun a_3_3 b_3_2 -> 
    (((zipWith__d3__d0__d4 mappend__d9__d0__d4) a_3_3) b_3_2))) _lh_spread_arg1_1_2)
and spread__d1__d0__d5 _lh_spread_arg1_1_3 =
  ((foldr1__d2__d0__d5 (fun a_3_6 b_3_5 -> 
    (((zipWith__d3__d0__d5 mappend__d9__d0__d5) a_3_6) b_3_5))) _lh_spread_arg1_1_3)
and spread__d1__d0__d6 _lh_spread_arg1_4 =
  ((foldr1__d2__d0__d6 (fun a_1_1 b_1_0 -> 
    (((zipWith__d3__d0__d6 mappend__d9__d0__d6) a_1_1) b_1_0))) _lh_spread_arg1_4)
and spread__d1__d0__d7 _lh_spread_arg1_7 =
  ((foldr1__d2__d0__d7 (fun a_2_2 b_2_1 -> 
    (((zipWith__d3__d0__d7 mappend__d9__d0__d7) a_2_2) b_2_1))) _lh_spread_arg1_7)
and spread__d1__d0__d8 _lh_spread_arg1_8 =
  ((foldr1__d2__d0__d8 (fun a_2_4 b_2_3 -> 
    (((zipWith__d3__d0__d8 mappend__d9__d0__d8) a_2_4) b_2_3))) _lh_spread_arg1_8)
and spread__d1__d0__d9 _lh_spread_arg1_1_0 =
  ((foldr1__d2__d0__d9 (fun a_2_7 b_2_6 -> 
    (((zipWith__d3__d0__d9 mappend__d9__d0__d9) a_2_7) b_2_6))) _lh_spread_arg1_1_0)
and stack__d0__d0__d0 _lh_stack_arg1_4 =
  ((foldr1__d1__d0__d0 (fun a_1_8 b_1_7 -> 
    ((mappend__d4__d0__d0 a_1_8) b_1_7))) _lh_stack_arg1_4)
and stack__d1__d0__d0 _lh_stack_arg1_8 =
  ((foldr1__d3__d0__d0 (fun a_2_5 b_2_4 -> 
    ((mappend__d1_d0__d0__d0 a_2_5) b_2_4))) _lh_stack_arg1_8)
and stack__d1__d0__d1 _lh_stack_arg1_9 =
  ((foldr1__d3__d0__d1 (fun a_2_8 b_2_7 -> 
    ((mappend__d1_d0__d0__d1 a_2_8) b_2_7))) _lh_stack_arg1_9)
and stack__d1__d0__d1_d0 _lh_stack_arg1_1_4 =
  ((foldr1__d3__d0__d1_d0 (fun a_4_6 b_4_4 -> 
    ((mappend__d1_d0__d0__d1_d0 a_4_6) b_4_4))) _lh_stack_arg1_1_4)
and stack__d1__d0__d1_d1 _lh_stack_arg1_7 =
  ((foldr1__d3__d0__d1_d1 (fun a_2_3 b_2_2 -> 
    ((mappend__d1_d0__d0__d1_d1 a_2_3) b_2_2))) _lh_stack_arg1_7)
and stack__d1__d0__d2 _lh_stack_arg1_6 =
  ((foldr1__d3__d0__d2 (fun a_2_1 b_2_0 -> 
    ((mappend__d1_d0__d0__d2 a_2_1) b_2_0))) _lh_stack_arg1_6)
and stack__d1__d0__d3 _lh_stack_arg1_1_1 =
  ((foldr1__d3__d0__d3 (fun a_3_2 b_3_1 -> 
    ((mappend__d1_d0__d0__d3 a_3_2) b_3_1))) _lh_stack_arg1_1_1)
and stack__d1__d0__d4 _lh_stack_arg1_5 =
  ((foldr1__d3__d0__d4 (fun a_1_9 b_1_8 -> 
    ((mappend__d1_d0__d0__d4 a_1_9) b_1_8))) _lh_stack_arg1_5)
and stack__d1__d0__d5 _lh_stack_arg1_1_0 =
  ((foldr1__d3__d0__d5 (fun a_3_1 b_3_0 -> 
    ((mappend__d1_d0__d0__d5 a_3_1) b_3_0))) _lh_stack_arg1_1_0)
and stack__d1__d0__d6 _lh_stack_arg1_1_3 =
  ((foldr1__d3__d0__d6 (fun a_3_9 b_3_8 -> 
    ((mappend__d1_d0__d0__d6 a_3_9) b_3_8))) _lh_stack_arg1_1_3)
and stack__d1__d0__d7 _lh_stack_arg1_1_2 =
  ((foldr1__d3__d0__d7 (fun a_3_4 b_3_3 -> 
    ((mappend__d1_d0__d0__d7 a_3_4) b_3_3))) _lh_stack_arg1_1_2)
and stack__d1__d0__d8 _lh_stack_arg1_3 =
  ((foldr1__d3__d0__d8 (fun a_1_7 b_1_6 -> 
    ((mappend__d1_d0__d0__d8 a_1_7) b_1_6))) _lh_stack_arg1_3)
and stack__d1__d0__d9 _lh_stack_arg1_2 =
  ((foldr1__d3__d0__d9 (fun a_1_0 b_9 -> 
    ((mappend__d1_d0__d0__d9 a_1_0) b_9))) _lh_stack_arg1_2)
and table__d0__d0__d0 _lh_table_arg1_2 _lh_table_arg2_2 =
  ((mappend__d1_d2__d0__d1 daynames__d0__d0__d0) ((entries__d0__d0__d0 _lh_table_arg1_2) _lh_table_arg2_2))
and table__d0__d0__d1 _lh_table_arg1_9 _lh_table_arg2_9 =
  ((mappend__d1_d2__d0__d3 daynames__d0__d0__d1) ((entries__d0__d0__d1 _lh_table_arg1_9) _lh_table_arg2_9))
and table__d0__d0__d1_d0 _lh_table_arg1_8 _lh_table_arg2_8 =
  ((mappend__d1_d2__d0__d2_d1 daynames__d0__d0__d1_d0) ((entries__d0__d0__d1_d0 _lh_table_arg1_8) _lh_table_arg2_8))
and table__d0__d0__d1_d1 _lh_table_arg1_3 _lh_table_arg2_3 =
  ((mappend__d1_d2__d0__d2_d3 daynames__d0__d0__d1_d1) ((entries__d0__d0__d1_d1 _lh_table_arg1_3) _lh_table_arg2_3))
and table__d0__d0__d2 _lh_table_arg1_1 _lh_table_arg2_1 =
  ((mappend__d1_d2__d0__d5 daynames__d0__d0__d2) ((entries__d0__d0__d2 _lh_table_arg1_1) _lh_table_arg2_1))
and table__d0__d0__d3 _lh_table_arg1_1_1 _lh_table_arg2_1_1 =
  ((mappend__d1_d2__d0__d7 daynames__d0__d0__d3) ((entries__d0__d0__d3 _lh_table_arg1_1_1) _lh_table_arg2_1_1))
and table__d0__d0__d4 _lh_table_arg1_6 _lh_table_arg2_6 =
  ((mappend__d1_d2__d0__d9 daynames__d0__d0__d4) ((entries__d0__d0__d4 _lh_table_arg1_6) _lh_table_arg2_6))
and table__d0__d0__d5 _lh_table_arg1_5 _lh_table_arg2_5 =
  ((mappend__d1_d2__d0__d1_d1 daynames__d0__d0__d5) ((entries__d0__d0__d5 _lh_table_arg1_5) _lh_table_arg2_5))
and table__d0__d0__d6 _lh_table_arg1_4 _lh_table_arg2_4 =
  ((mappend__d1_d2__d0__d1_d3 daynames__d0__d0__d6) ((entries__d0__d0__d6 _lh_table_arg1_4) _lh_table_arg2_4))
and table__d0__d0__d7 _lh_table_arg1_7 _lh_table_arg2_7 =
  ((mappend__d1_d2__d0__d1_d5 daynames__d0__d0__d7) ((entries__d0__d0__d7 _lh_table_arg1_7) _lh_table_arg2_7))
and table__d0__d0__d8 _lh_table_arg1_1_2 _lh_table_arg2_1_2 =
  ((mappend__d1_d2__d0__d1_d7 daynames__d0__d0__d8) ((entries__d0__d0__d8 _lh_table_arg1_1_2) _lh_table_arg2_1_2))
and table__d0__d0__d9 _lh_table_arg1_1_0 _lh_table_arg2_1_0 =
  ((mappend__d1_d2__d0__d1_d9 daynames__d0__d0__d9) ((entries__d0__d0__d9 _lh_table_arg1_1_0) _lh_table_arg2_1_0))
and testCalendar_nofib__d0__d0__d0 _lh_testCalendar_nofib_arg1_1 =
  ((map__d6__d0__d0 (fun n_4_6 -> 
    (length__d3__d0__d2 (cal__d0__d0__d0 n_4_6)))) ((enumFromTo__d1__d0__d0 2008) (2008 + _lh_testCalendar_nofib_arg1_1)))
and title__d0__d0__d0 _lh_title_arg1_1 ys_6_5 =
  (let rec t_7_0 = (fun ys_6_4 -> 
    ys_6_4) in
    (let rec h_6_7 = ((cjustify__d1__d0__d0 21) _lh_title_arg1_1) in
      (`LH_C(h_6_7, ((mappend__d8__d0__d1_d2 t_7_0) ys_6_5)))))
and title__d0__d0__d1 _lh_title_arg1_7 ys_1_7_3 =
  (let rec t_1_5_5 = (fun ys_1_7_2 -> 
    ys_1_7_2) in
    (let rec h_1_5_2 = ((cjustify__d1__d0__d1 21) _lh_title_arg1_7) in
      (`LH_C(h_1_5_2, ((mappend__d8__d0__d1_d3 t_1_5_5) ys_1_7_3)))))
and title__d0__d0__d1_d0 _lh_title_arg1_6 ys_1_7_1 =
  (let rec t_1_5_4 = (fun ys_1_7_0 -> 
    ys_1_7_0) in
    (let rec h_1_5_1 = ((cjustify__d1__d0__d1_d0 21) _lh_title_arg1_6) in
      (`LH_C(h_1_5_1, ((mappend__d8__d0__d2_d2 t_1_5_4) ys_1_7_1)))))
and title__d0__d0__d1_d1 _lh_title_arg1_5 ys_1_0_5 =
  (let rec t_1_0_2 = (fun ys_1_0_4 -> 
    ys_1_0_4) in
    (let rec h_9_9 = ((cjustify__d1__d0__d1_d1 21) _lh_title_arg1_5) in
      (`LH_C(h_9_9, ((mappend__d8__d0__d2_d3 t_1_0_2) ys_1_0_5)))))
and title__d0__d0__d2 _lh_title_arg1_1_0 ys_2_5_0 =
  (let rec t_2_1_7 = (fun ys_2_4_9 -> 
    ys_2_4_9) in
    (let rec h_2_1_4 = ((cjustify__d1__d0__d2 21) _lh_title_arg1_1_0) in
      (`LH_C(h_2_1_4, ((mappend__d8__d0__d1_d4 t_2_1_7) ys_2_5_0)))))
and title__d0__d0__d3 _lh_title_arg1_2 ys_6_8 =
  (let rec t_7_1 = (fun ys_6_7 -> 
    ys_6_7) in
    (let rec h_6_8 = ((cjustify__d1__d0__d3 21) _lh_title_arg1_2) in
      (`LH_C(h_6_8, ((mappend__d8__d0__d1_d5 t_7_1) ys_6_8)))))
and title__d0__d0__d4 _lh_title_arg1_8 ys_1_8_9 =
  (let rec t_1_6_6 = (fun ys_1_8_8 -> 
    ys_1_8_8) in
    (let rec h_1_6_3 = ((cjustify__d1__d0__d4 21) _lh_title_arg1_8) in
      (`LH_C(h_1_6_3, ((mappend__d8__d0__d1_d6 t_1_6_6) ys_1_8_9)))))
and title__d0__d0__d5 _lh_title_arg1_4 ys_7_8 =
  (let rec t_7_9 = (fun ys_7_7 -> 
    ys_7_7) in
    (let rec h_7_6 = ((cjustify__d1__d0__d5 21) _lh_title_arg1_4) in
      (`LH_C(h_7_6, ((mappend__d8__d0__d1_d7 t_7_9) ys_7_8)))))
and title__d0__d0__d6 _lh_title_arg1_3 ys_7_0 =
  (let rec t_7_2 = (fun ys_6_9 -> 
    ys_6_9) in
    (let rec h_6_9 = ((cjustify__d1__d0__d6 21) _lh_title_arg1_3) in
      (`LH_C(h_6_9, ((mappend__d8__d0__d1_d8 t_7_2) ys_7_0)))))
and title__d0__d0__d7 _lh_title_arg1_1_2 ys_3_1_6 =
  (let rec t_2_6_4 = (fun ys_3_1_5 -> 
    ys_3_1_5) in
    (let rec h_2_6_0 = ((cjustify__d1__d0__d7 21) _lh_title_arg1_1_2) in
      (`LH_C(h_2_6_0, ((mappend__d8__d0__d1_d9 t_2_6_4) ys_3_1_6)))))
and title__d0__d0__d8 _lh_title_arg1_9 ys_2_4_3 =
  (let rec t_2_1_6 = (fun ys_2_4_2 -> 
    ys_2_4_2) in
    (let rec h_2_1_3 = ((cjustify__d1__d0__d8 21) _lh_title_arg1_9) in
      (`LH_C(h_2_1_3, ((mappend__d8__d0__d2_d0 t_2_1_6) ys_2_4_3)))))
and title__d0__d0__d9 _lh_title_arg1_1_1 ys_2_9_3 =
  (let rec t_2_4_8 = (fun ys_2_9_2 -> 
    ys_2_9_2) in
    (let rec h_2_4_4 = ((cjustify__d1__d0__d9 21) _lh_title_arg1_1_1) in
      (`LH_C(h_2_4_4, ((mappend__d8__d0__d2_d1 t_2_4_8) ys_2_9_3)))))
and unlines__d0__d0__d0 _lh_unlines_arg1_1 =
  (concat__d0__d0__d0 ((map__d5__d0__d0 (fun l_1 -> 
    ((mappend__d1_d7__d0__d0 l_1) (let rec t_5_8 = (fun ys_5_7 -> 
      ys_5_7) in
      (let rec h_5_6 = 'n' in
        (fun ys_5_8 -> 
          (let rec t_5_9 = ((mappend__d1_d6__d0__d1 t_5_8) ys_5_8) in
            (fun _lh_dummy_2_1 -> 
              (1 + (length__d3__d0__d0 t_5_9)))))))))) _lh_unlines_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Calendar_nofib" (fun () -> ignore ((testCalendar_nofib__d0 100)));
  Bench.Test.create ~name:"lumberhack_Calendar_nofib" (fun () -> ignore ((testCalendar_nofib__d0__d0 100)));
  Bench.Test.create ~name:"lumberhack_pop_out_Calendar_nofib" (fun () -> ignore ((testCalendar_nofib__d0__d0__d0 100)));
])
