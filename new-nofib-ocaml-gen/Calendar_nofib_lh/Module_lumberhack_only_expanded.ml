

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec copy__d0 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (`LH_C(_lh_copy_arg2_1_0, ((copy__d0 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0)))
  else
    (`LH_N));;
let rec copy__d1 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy__d1 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy__d1_d0 _lh_copy_arg1_1_3 _lh_copy_arg2_1_3 =
  (if (_lh_copy_arg1_1_3 > 0) then
    (`LH_C(_lh_copy_arg2_1_3, ((copy__d1_d0 (_lh_copy_arg1_1_3 - 1)) _lh_copy_arg2_1_3)))
  else
    (`LH_N));;
let rec copy__d1_d1 _lh_copy_arg1_1_2 _lh_copy_arg2_1_2 =
  (if (_lh_copy_arg1_1_2 > 0) then
    (`LH_C(_lh_copy_arg2_1_2, ((copy__d1_d1 (_lh_copy_arg1_1_2 - 1)) _lh_copy_arg2_1_2)))
  else
    (`LH_N));;
let rec copy__d1_d2 _lh_copy_arg1_8 _lh_copy_arg2_8 =
  (if (_lh_copy_arg1_8 > 0) then
    (`LH_C(_lh_copy_arg2_8, ((copy__d1_d2 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8)))
  else
    (`LH_N));;
let rec copy__d2 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (if (_lh_copy_arg1_7 > 0) then
    (`LH_C(_lh_copy_arg2_7, ((copy__d2 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7)))
  else
    (`LH_N));;
let rec copy__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec copy__d4 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (`LH_C(_lh_copy_arg2_5, ((copy__d4 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5)))
  else
    (`LH_N));;
let rec copy__d5 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d5 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy__d6 _lh_copy_arg1_1_1 _lh_copy_arg2_1_1 =
  (if (_lh_copy_arg1_1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1_1, ((copy__d6 (_lh_copy_arg1_1_1 - 1)) _lh_copy_arg2_1_1)))
  else
    (`LH_N));;
let rec copy__d7 _lh_copy_arg1_9 _lh_copy_arg2_9 =
  (if (_lh_copy_arg1_9 > 0) then
    (`LH_C(_lh_copy_arg2_9, ((copy__d7 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9)))
  else
    (`LH_N));;
let rec copy__d8 _lh_copy_arg1_6 _lh_copy_arg2_6 =
  (if (_lh_copy_arg1_6 > 0) then
    (`LH_C(_lh_copy_arg2_6, ((copy__d8 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6)))
  else
    (`LH_N));;
let rec copy__d9 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy__d9 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
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
let rec enumFromTo__d0 a_1_4 b_9 =
  (if (a_1_4 <= b_9) then
    (`LH_C(a_1_4, ((enumFromTo__d0 (a_1_4 + 1)) b_9)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_1_1 b_6 =
  (if (a_1_1 <= b_6) then
    (`LH_C(a_1_1, ((enumFromTo__d1 (a_1_1 + 1)) b_6)))
  else
    (`LH_N));;
let rec foldr__d0 f_1_6 i_4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_2, t_3_3) -> 
      ((f_1_6 h_3_2) (((foldr__d0 f_1_6) i_4) t_3_3))
    | `LH_N -> 
      i_4);;
let rec foldr__d1 f_1_4 i_3 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_3_0, t_3_1) -> 
      ((f_1_4 h_3_0) (((foldr__d1 f_1_4) i_3) t_3_1))
    | `LH_N -> 
      i_3);;
let rec foldr__d2 f_2_0 i_5 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_4, t_4_5) -> 
      ((f_2_0 h_4_4) (((foldr__d2 f_2_0) i_5) t_4_5))
    | `LH_N -> 
      i_5);;
let rec foldr__d3 f_2_2 i_6 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_4_6, t_4_7) -> 
      ((f_2_2 h_4_6) (((foldr__d3 f_2_2) i_6) t_4_7))
    | `LH_N -> 
      i_6);;
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
let rec length__d0 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_5_5, t_5_6) -> 
      (1 + (length__d0 t_5_6))
    | `LH_N -> 
      0);;
let rec length__d1 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_5, t_2_6) -> 
      (1 + (length__d1 t_2_6))
    | `LH_N -> 
      0);;
let rec length__d2 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_9, t_4_0) -> 
      (1 + (length__d2 t_4_0))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_4_0, t_4_1) -> 
      (1 + (length__d3 t_4_1))
    | `LH_N -> 
      0);;
let rec map__d0 f_2_5 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_2, t_5_3) -> 
      (`LH_C((f_2_5 h_5_2), ((map__d0 f_2_5) t_5_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_9 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_3, t_4_4) -> 
      (`LH_C((f_1_9 h_4_3), ((map__d1 f_1_9) t_4_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_2_1 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_5, t_4_6) -> 
      (`LH_C((f_2_1 h_4_5), ((map__d2 f_2_1) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_5 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_1, t_3_2) -> 
      (`LH_C((f_1_5 h_3_1), ((map__d3 f_1_5) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_7 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_6, t_3_7) -> 
      (`LH_C((f_1_7 h_3_6), ((map__d4 f_1_7) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_2_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_4_7, t_4_8) -> 
      (`LH_C((f_2_3 h_4_7), ((map__d5 f_2_3) t_4_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_9, t_3_0) -> 
      (`LH_C((f_1_3 h_2_9), ((map__d6 f_1_3) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_8, t_3_9) -> 
      (`LH_C(h_3_8, ((mappend__d0 t_3_9) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_8, t_2_9) -> 
      (`LH_C(h_2_8, ((mappend__d1 t_2_9) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1_d0 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_3, t_3_4) -> 
      (`LH_C(h_3_3, ((mappend__d1_d0 t_3_4) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1_d1 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_4, t_3_5) -> 
      (`LH_C(h_3_4, ((mappend__d1_d1 t_3_5) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d1_d2 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_5_0, t_5_1) -> 
      (`LH_C(h_5_0, ((mappend__d1_d2 t_5_1) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d1_d3 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_3, t_2_4) -> 
      (`LH_C(h_2_3, ((mappend__d1_d3 t_2_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d4 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_3_7, t_3_8) -> 
      (`LH_C(h_3_7, ((mappend__d1_d4 t_3_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d1_d5 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_6, t_2_7) -> 
      (`LH_C(h_2_6, ((mappend__d1_d5 t_2_7) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d1_d6 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_4_9, t_5_0) -> 
      (`LH_C(h_4_9, ((mappend__d1_d6 t_5_0) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d1_d7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_7, t_2_8) -> 
      (`LH_C(h_2_7, ((mappend__d1_d7 t_2_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d2 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_4_8, t_4_9) -> 
      (`LH_C(h_4_8, ((mappend__d2 t_4_9) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d3 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_5_1, t_5_2) -> 
      (`LH_C(h_5_1, ((mappend__d3 t_5_2) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d4 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_2) -> 
      (`LH_C(h_2_1, ((mappend__d4 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d5 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_5_6, t_5_7) -> 
      (`LH_C(h_5_6, ((mappend__d5 t_5_7) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d6 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_2, t_4_3) -> 
      (`LH_C(h_4_2, ((mappend__d6 t_4_3) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d7 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_4_1, t_4_2) -> 
      (`LH_C(h_4_1, ((mappend__d7 t_4_2) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d8 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_5, t_3_6) -> 
      (`LH_C(h_3_5, ((mappend__d8 t_3_6) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d9 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_4, t_2_5) -> 
      (`LH_C(h_2_4, ((mappend__d9 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
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
let rec take__d0 n_8 ls_3_6 =
  (if (n_8 > 0) then
    (match ls_3_6 with
      | `LH_C(h_5_7, t_5_8) -> 
        (`LH_C(h_5_7, ((take__d0 (n_8 - 1)) t_5_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_7 ls_3_4 =
  (if (n_7 > 0) then
    (match ls_3_4 with
      | `LH_C(h_5_4, t_5_5) -> 
        (`LH_C(h_5_4, ((take__d1 (n_7 - 1)) t_5_5)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d2 n_5 ls_1_9 =
  (if (n_5 > 0) then
    (match ls_1_9 with
      | `LH_C(h_2_2, t_2_3) -> 
        (`LH_C(h_2_2, ((take__d2 (n_5 - 1)) t_2_3)))
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
let rec zipWith__d0 f_2_4 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match ys_2_4 with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_2_4 hx_1_0) hy_1_0), (((zipWith__d0 f_2_4) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d1 f_2_6 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match ys_2_9 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_2_6 hx_1_1) hy_1_1), (((zipWith__d1 f_2_6) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d2 f_1_8 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_2_1 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_8 hx_9) hy_9), (((zipWith__d2 f_1_8) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d3 f_1_2 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(hx_8, tx_8) -> 
      (match ys_1_5 with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith__d3 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner__d0 _lh_banner_arg1_1 =
  ((mappend__d2 (`LH_C(((cjustify__d0 75) (string_of_int _lh_banner_arg1_1)), (`LH_N)))) (emptyPic__d0 (`LH_P2(1, 75))))
and block__d0 _lh_block_arg1_2 _lh_funcomp_x_1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (stack__d0 ((map__d0 spread__d0) _lh_funcomp_x_1_3))) ((groop__d0 _lh_block_arg1_2) _lh_funcomp_x_1_2))
and block__d1 _lh_block_arg1_1 _lh_funcomp_x_1_0 =
  ((fun _lh_funcomp_x_1_1 -> 
    (stack__d1 ((map__d3 spread__d1) _lh_funcomp_x_1_1))) ((groop__d1 _lh_block_arg1_1) _lh_funcomp_x_1_0))
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
    | `LH_C(h_5_3, t_5_4) -> 
      ((mappend__d1_d6 h_5_3) (concat__d0 t_5_4))
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
and emptyPic__d0 _lh_emptyPic_arg1_2 =
  (match _lh_emptyPic_arg1_2 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_2, _lh_emptyPic_LH_P2_1_2) -> 
      ((copy__d2 _lh_emptyPic_LH_P2_0_2) ((copy__d3 _lh_emptyPic_LH_P2_1_2) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic__d1 _lh_emptyPic_arg1_3 =
  (match _lh_emptyPic_arg1_3 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_3, _lh_emptyPic_LH_P2_1_3) -> 
      ((copy__d4 _lh_emptyPic_LH_P2_0_3) ((copy__d5 _lh_emptyPic_LH_P2_1_3) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic__d2 _lh_emptyPic_arg1_1 =
  (match _lh_emptyPic_arg1_1 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_1, _lh_emptyPic_LH_P2_1_1) -> 
      ((copy__d6 _lh_emptyPic_LH_P2_0_1) ((copy__d7 _lh_emptyPic_LH_P2_1_1) ' '))
    | _ -> 
      (failwith "error"))
and emptyPic__d3 _lh_emptyPic_arg1_4 =
  (match _lh_emptyPic_arg1_4 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_4, _lh_emptyPic_LH_P2_1_4) -> 
      ((copy__d8 _lh_emptyPic_LH_P2_0_4) ((copy__d9 _lh_emptyPic_LH_P2_1_4) ' '))
    | _ -> 
      (failwith "error"))
and end__d0 _lh_end_arg1_1 =
  (emptyPic__d1 (`LH_P2(1, 25)))
and entries__d0 _lh_entries_arg1_1 _lh_entries_arg2_1 =
  ((block__d1 7) ((dates__d0 _lh_entries_arg1_1) _lh_entries_arg2_1))
and firstDays__d0 _lh_firstDays_arg1_1 =
  ((take__d1 12) ((map__d2 (fun a_9 -> 
    (a_9 mod 7))) (((scanl__d0 (fun a_1_0 b_5 -> 
    (a_1_0 + b_5))) (jan1st__d0 _lh_firstDays_arg1_1)) (monthLengths__d0 _lh_firstDays_arg1_1))))
and foldr1__d0 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr__d0 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and foldr1__d1 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (((foldr__d1 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_0_3) _lh_foldr1_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and foldr1__d2 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (((foldr__d2 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_0_2) _lh_foldr1_LH_C_1_2)
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
and space__d0 _lh_space_arg1_5 =
  ((copy__d0 _lh_space_arg1_5) ' ')
and space__d1 _lh_space_arg1_4 =
  ((copy__d1 _lh_space_arg1_4) ' ')
and space__d2 _lh_space_arg1_3 =
  ((copy__d1_d0 _lh_space_arg1_3) ' ')
and space__d3 _lh_space_arg1_2 =
  ((copy__d1_d1 _lh_space_arg1_2) ' ')
and space__d4 _lh_space_arg1_1 =
  ((copy__d1_d2 _lh_space_arg1_1) ' ')
and spread__d0 _lh_spread_arg1_2 =
  ((foldr1__d0 (fun a_1_6 b_1_1 -> 
    (((zipWith__d0 mappend__d3) a_1_6) b_1_1))) _lh_spread_arg1_2)
and spread__d1 _lh_spread_arg1_1 =
  ((foldr1__d2 (fun a_1_3 b_8 -> 
    (((zipWith__d3 mappend__d9) a_1_3) b_8))) _lh_spread_arg1_1)
and stack__d0 _lh_stack_arg1_1 =
  ((foldr1__d1 (fun a_1_2 b_7 -> 
    ((mappend__d4 a_1_2) b_7))) _lh_stack_arg1_1)
and stack__d1 _lh_stack_arg1_2 =
  ((foldr1__d3 (fun a_1_5 b_1_0 -> 
    ((mappend__d1_d0 a_1_5) b_1_0))) _lh_stack_arg1_2)
and table__d0 _lh_table_arg1_1 _lh_table_arg2_1 =
  ((mappend__d1_d2 daynames__d0) ((entries__d0 _lh_table_arg1_1) _lh_table_arg2_1))
and testCalendar_nofib__d0 _lh_testCalendar_nofib_arg1_1 =
  ((map__d6 (fun n_6 -> 
    (length__d3 (cal__d0 n_6)))) ((enumFromTo__d1 2008) (2008 + _lh_testCalendar_nofib_arg1_1)))
and title__d0 _lh_title_arg1_1 =
  (`LH_C(((cjustify__d1 21) _lh_title_arg1_1), (`LH_N)))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d0 ((map__d5 (fun l_1 -> 
    ((mappend__d1_d7 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;
end;;

