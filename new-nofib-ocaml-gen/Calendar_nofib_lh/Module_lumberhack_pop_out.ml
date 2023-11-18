

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec copy__d1 _lh_copy_arg1_1_2 _lh_copy_arg2_1_2 =
  (if (_lh_copy_arg1_1_2 > 0) then
    (`LH_C(_lh_copy_arg2_1_2, ((copy__d1 (_lh_copy_arg1_1_2 - 1)) _lh_copy_arg2_1_2)))
  else
    (`LH_N));;
let rec copy__d1_d2 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (`LH_C(_lh_copy_arg2_5, ((copy__d1_d2 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5)))
  else
    (`LH_N));;
let rec copy__d3 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy__d3 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy__d4 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy__d4 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy__d5 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy__d5 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec copy__d9 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy__d9 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        _lh_drop_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec drop__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec emptyPic__d0 _lh_emptyPic_arg1_0 =
  (_lh_emptyPic_arg1_0 99);;
let rec emptyPic__d1 _lh_emptyPic_arg1_1 =
  (_lh_emptyPic_arg1_1 99);;
let rec emptyPic__d2 _lh_emptyPic_arg1_3 =
  (_lh_emptyPic_arg1_3 99);;
let rec emptyPic__d3 _lh_emptyPic_arg1_2 =
  (_lh_emptyPic_arg1_2 99);;
let rec enumFromTo__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo__d1 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec foldr__d0 f_1 i_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr__d0 f_1) i_1) t_1))
    | `LH_N -> 
      i_1);;
let rec foldr__d1 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((f_0 h_0) (((foldr__d1 f_0) i_0) t_0))
    | `LH_N -> 
      i_0);;
let rec foldr__d2 f_4_5 i_3 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_4_8, t_5_0) -> 
      ((f_4_5 h_4_8) (((foldr__d2 f_4_5) i_3) t_5_0))
    | `LH_N -> 
      i_3);;
let rec foldr__d3 f_1_4 i_2 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_1_8, t_1_9) -> 
      ((f_1_4 h_1_8) (((foldr__d3 f_1_4) i_2) t_1_9))
    | `LH_N -> 
      i_2);;
let rec jan1st__d0 _lh_jan1st_arg1_0 =
  (let rec last_0 = (_lh_jan1st_arg1_0 - 1) in
    (((((((_lh_jan1st_arg1_0 + last_0) / 4) - last_0) / 100) + last_0) / 400) mod 7));;
let rec leap__d0 _lh_leap_arg1_1 =
  (if ((_lh_leap_arg1_1 mod 100) = 0) then
    ((_lh_leap_arg1_1 mod 400) = 0)
  else
    ((_lh_leap_arg1_1 mod 4) = 0));;
let rec leap__d1 _lh_leap_arg1_0 =
  (if ((_lh_leap_arg1_0 mod 100) = 0) then
    ((_lh_leap_arg1_0 mod 400) = 0)
  else
    ((_lh_leap_arg1_0 mod 4) = 0));;
let rec length__d0 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_4_3, t_4_4) -> 
      (1 + (length__d0 t_4_4))
    | `LH_N -> 
      0);;
let rec length__d1 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_4_2, t_4_3) -> 
      (1 + (length__d1 t_4_3))
    | `LH_N -> 
      0);;
let rec length__d2 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_1, t_1_2) -> 
      (1 + (length__d2 t_1_2))
    | `LH_N -> 
      0);;
let rec length__d3 ls_2 =
  (ls_2 99);;
let rec map__d0 f_4 ls_3 =
  (ls_3 f_4);;
let rec map__d1 f_4_4 ls_1_6 =
  (ls_1_6 f_4_4);;
let rec map__d2 f_1_2 ls_1_0 =
  (ls_1_0 f_1_2);;
let rec map__d3 f_6 ls_5 =
  (ls_5 f_6);;
let rec map__d4 f_8 ls_7 =
  (ls_7 f_8);;
let rec map__d6 f_5 ls_4 =
  (match ls_4 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_5 h_5), ((map__d6 f_5) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend__d0 t_6) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend__d1 xs_1_1 ys_1_7 =
  (xs_1_1 ys_1_7);;
let rec mappend__d1_d0 xs_1_2 ys_2_0 =
  (match xs_1_2 with
    | `LH_C(h_2_1, t_2_2) -> 
      (`LH_C(h_2_1, ((mappend__d1_d0 t_2_2) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d1 xs_8 ys_1_4 =
  (xs_8 ys_1_4);;
let rec mappend__d1_d2 xs_1_8 ys_3_8 =
  (xs_1_8 ys_3_8);;
let rec mappend__d1_d3 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend__d1_d3 t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend__d1_d4 xs_9 ys_1_5 =
  (xs_9 ys_1_5);;
let rec mappend__d1_d5 xs_1_0 ys_1_6 =
  (xs_1_0 ys_1_6);;
let rec mappend__d1_d6 xs_7 ys_1_0 =
  (xs_7 ys_1_0);;
let rec mappend__d2 xs_1_6 ys_3_4 =
  (xs_1_6 ys_3_4);;
let rec mappend__d3 xs_1_9 ys_3_9 =
  (match xs_1_9 with
    | `LH_C(h_4_1, t_4_2) -> 
      (`LH_C(h_4_1, ((mappend__d3 t_4_2) ys_3_9)))
    | `LH_N -> 
      ys_3_9);;
let rec mappend__d4 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend__d4 t_4) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend__d5 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec mappend__d6 xs_2_0 ys_4_9 =
  (match xs_2_0 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d6 t_4_7) ys_4_9)))
    | `LH_N -> 
      ys_4_9);;
let rec mappend__d7 xs_3 ys_3 =
  (xs_3 ys_3);;
let rec mappend__d8 xs_2_1 ys_5_0 =
  (xs_2_1 ys_5_0);;
let rec mappend__d9 xs_1_4 ys_2_4 =
  (match xs_1_4 with
    | `LH_C(h_2_3, t_2_4) -> 
      (`LH_C(h_2_3, ((mappend__d9 t_2_4) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec monthNames__d0 _lh_zip3_arg2_1_3 _lh_zip3_arg3_1_4 =
  (let rec _lh_zip3_LH_C_1_2 = (let rec _lh_zip3_LH_C_1_3 = (let rec _lh_zip3_LH_C_1_4 = (let rec _lh_zip3_LH_C_1_5 = (let rec _lh_zip3_LH_C_1_6 = (let rec _lh_zip3_LH_C_1_7 = (let rec _lh_zip3_LH_C_1_8 = (let rec _lh_zip3_LH_C_1_9 = (let rec _lh_zip3_LH_C_1_1_0 = (let rec _lh_zip3_LH_C_1_1_1 = (let rec _lh_zip3_LH_C_1_1_2 = (let rec _lh_zip3_LH_C_1_1_3 = (fun _lh_zip3_arg2_1 _lh_zip3_arg3_2 f_1_3 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_2 = (`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2 _lh_zip3_arg3_3 -> 
        (let rec _lh_matchIdent_3 = _lh_zip3_arg2_2 in
          (((_lh_matchIdent_3 _lh_zip3_LH_C_0_2) _lh_zip3_LH_C_1_1_3) _lh_zip3_arg3_3))))) in
    (let rec _lh_zip3_LH_C_0_3 = (`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_3 _lh_zip3_arg3_4 -> 
        (let rec _lh_matchIdent_4 = _lh_zip3_arg2_3 in
          (((_lh_matchIdent_4 _lh_zip3_LH_C_0_3) _lh_zip3_LH_C_1_1_2) _lh_zip3_arg3_4))))) in
    (let rec _lh_zip3_LH_C_0_4 = (`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_4 _lh_zip3_arg3_5 -> 
        (let rec _lh_matchIdent_5 = _lh_zip3_arg2_4 in
          (((_lh_matchIdent_5 _lh_zip3_LH_C_0_4) _lh_zip3_LH_C_1_1_1) _lh_zip3_arg3_5))))) in
    (let rec _lh_zip3_LH_C_0_5 = (`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))) in
      (fun _lh_zip3_arg2_5 _lh_zip3_arg3_6 -> 
        (let rec _lh_matchIdent_6 = _lh_zip3_arg2_5 in
          (((_lh_matchIdent_6 _lh_zip3_LH_C_0_5) _lh_zip3_LH_C_1_1_0) _lh_zip3_arg3_6))))) in
    (let rec _lh_zip3_LH_C_0_6 = (`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))) in
      (fun _lh_zip3_arg2_6 _lh_zip3_arg3_7 -> 
        (let rec _lh_matchIdent_7 = _lh_zip3_arg2_6 in
          (((_lh_matchIdent_7 _lh_zip3_LH_C_0_6) _lh_zip3_LH_C_1_9) _lh_zip3_arg3_7))))) in
    (let rec _lh_zip3_LH_C_0_7 = (`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_7 _lh_zip3_arg3_8 -> 
        (let rec _lh_matchIdent_8 = _lh_zip3_arg2_7 in
          (((_lh_matchIdent_8 _lh_zip3_LH_C_0_7) _lh_zip3_LH_C_1_8) _lh_zip3_arg3_8))))) in
    (let rec _lh_zip3_LH_C_0_8 = (`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_8 _lh_zip3_arg3_9 -> 
        (let rec _lh_matchIdent_9 = _lh_zip3_arg2_8 in
          (((_lh_matchIdent_9 _lh_zip3_LH_C_0_8) _lh_zip3_LH_C_1_7) _lh_zip3_arg3_9))))) in
    (let rec _lh_zip3_LH_C_0_9 = (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))) in
      (fun _lh_zip3_arg2_9 _lh_zip3_arg3_1_0 -> 
        (let rec _lh_matchIdent_1_0 = _lh_zip3_arg2_9 in
          (((_lh_matchIdent_1_0 _lh_zip3_LH_C_0_9) _lh_zip3_LH_C_1_6) _lh_zip3_arg3_1_0))))) in
    (let rec _lh_zip3_LH_C_0_1_0 = (`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_1 -> 
        (let rec _lh_matchIdent_1_1 = _lh_zip3_arg2_1_0 in
          (((_lh_matchIdent_1_1 _lh_zip3_LH_C_0_1_0) _lh_zip3_LH_C_1_5) _lh_zip3_arg3_1_1))))) in
    (let rec _lh_zip3_LH_C_0_1_1 = (`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_2 -> 
        (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_1_1 in
          (((_lh_matchIdent_1_2 _lh_zip3_LH_C_0_1_1) _lh_zip3_LH_C_1_4) _lh_zip3_arg3_1_2))))) in
    (let rec _lh_zip3_LH_C_0_1_2 = (`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_3 -> 
        (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_1_2 in
          (((_lh_matchIdent_1_3 _lh_zip3_LH_C_0_1_2) _lh_zip3_LH_C_1_3) _lh_zip3_arg3_1_3))))) in
    (let rec _lh_zip3_LH_C_0_1_3 = (`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))) in
      (let rec _lh_matchIdent_1_4 = _lh_zip3_arg2_1_3 in
        (((_lh_matchIdent_1_4 _lh_zip3_LH_C_0_1_3) _lh_zip3_LH_C_1_2) _lh_zip3_arg3_1_4))));;
let rec pic__d0 _lh_pic_arg1_0 =
  (_lh_pic_arg1_0 99);;
let rec take__d0 n_2 ls_9 =
  (if (n_2 > 0) then
    (match ls_9 with
      | `LH_C(h_1_7, t_1_8) -> 
        (`LH_C(h_1_7, ((take__d0 (n_2 - 1)) t_1_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_5 ls_1_2 =
  (if (n_5 > 0) then
    (ls_1_2 n_5)
  else
    (fun _lh_zip3_LH_C_0_5_3 _lh_zip3_LH_C_1_5_3 _lh_zip3_arg3_1_6 f_3_7 -> 
      (`LH_N)));;
let rec take__d2 n_0 ls_6 =
  (if (n_0 > 0) then
    (match ls_6 with
      | `LH_C(h_7, t_7) -> 
        (`LH_C(h_7, ((take__d2 (n_0 - 1)) t_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3__d0 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_2 = _lh_zip3_arg1_0 in
    ((_lh_matchIdent_2 _lh_zip3_arg2_0) _lh_zip3_arg3_1));;
let rec zipWith__d0 f_2_0 xs_1_5 ys_2_7 =
  (match xs_1_5 with
    | `LH_C(hx_3, tx_3) -> 
      (match ys_2_7 with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C(((f_2_0 hx_3) hy_2), (((zipWith__d0 f_2_0) tx_3) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d1 f_3_6 xs_1_7 ys_3_5 =
  ((xs_1_7 f_3_6) ys_3_5);;
let rec zipWith__d2 f_7 xs_5 ys_5 =
  ((xs_5 f_7) ys_5);;
let rec zipWith__d3 f_1_9 xs_1_3 ys_2_3 =
  (match xs_1_3 with
    | `LH_C(hx_2, tx_2) -> 
      (match ys_2_3 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_1_9 hx_2) hy_1), (((zipWith__d3 f_1_9) tx_2) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec banner__d0 _lh_banner_arg1_0 =
  ((mappend__d2 (let rec t_1_3 = (fun ys_1_1 -> 
    ys_1_1) in
    (let rec h_1_2 = ((cjustify__d0 75) (string_of_int _lh_banner_arg1_0)) in
      (fun ys_1_2 -> 
        (let rec t_1_4 = ((mappend__d2 t_1_3) ys_1_2) in
          (let rec h_1_3 = h_1_2 in
            (fun ys_1_3 -> 
              (`LH_C(h_1_3, ((mappend__d1_d5 t_1_4) ys_1_3)))))))))) (emptyPic__d0 (let rec _lh_emptyPic_LH_P2_1_1 = 75 in
    (let rec _lh_emptyPic_LH_P2_0_1 = 1 in
      (fun _lh_dummy_2 -> 
        ((copy__d2 _lh_emptyPic_LH_P2_0_1) ((copy__d3 _lh_emptyPic_LH_P2_1_1) ' ')))))))
and block__d0 _lh_block_arg1_1 _lh_funcomp_x_5 =
  ((fun _lh_funcomp_x_6 -> 
    (stack__d0 ((map__d0 spread__d0) _lh_funcomp_x_6))) ((groop__d0 _lh_block_arg1_1) _lh_funcomp_x_5))
and block__d1 _lh_block_arg1_0 _lh_funcomp_x_3 =
  ((fun _lh_funcomp_x_4 -> 
    (stack__d1 ((map__d3 spread__d1) _lh_funcomp_x_4))) ((groop__d1 _lh_block_arg1_0) _lh_funcomp_x_3))
and body__d0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((block__d0 3) ((map__d1 (fun _lh_funcomp_x_2 -> 
      (pad__d0 (pic__d0 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) (months__d0 _lh_funcomp_x_0))
and cal__d0 _lh_cal_arg1_0 =
  (unlines__d0 ((mappend__d1_d5 (banner__d0 _lh_cal_arg1_0)) (body__d0 _lh_cal_arg1_0)))
and cjustify__d0 _lh_cjustify_arg1_0 _lh_cjustify_arg2_0 =
  (let rec m_0 = (_lh_cjustify_arg1_0 - (length__d0 _lh_cjustify_arg2_0)) in
    (let rec halfm_0 = (m_0 / 2) in
      ((mappend__d0 ((mappend__d1 (space__d0 halfm_0)) _lh_cjustify_arg2_0)) (space__d1 (m_0 - halfm_0)))))
and cjustify__d1 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length__d2 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend__d1_d3 ((mappend__d1_d4 (space__d3 halfm_1)) _lh_cjustify_arg2_1)) (space__d4 (m_1 - halfm_1)))))
and copy__d0 _lh_copy_arg1_8 _lh_copy_arg2_8 _lh_popOutId_0_6 =
  (if (_lh_copy_arg1_8 > 0) then
    (let rec t_2_5 = ((copy__d0 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8) in
      (let rec h_2_4 = _lh_copy_arg2_8 in
        (`LH_C(h_2_4, ((mappend__d1 t_2_5) _lh_popOutId_0_6)))))
  else
    _lh_popOutId_0_6)
and copy__d1_d0 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 _lh_popOutId_0_8 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (let rec t_4_1 = ((copy__d1_d0 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0) in
      (let rec h_4_0 = _lh_copy_arg2_1_0 in
        (`LH_C(h_4_0, ((mappend__d1_d1 t_4_1) _lh_popOutId_0_8)))))
  else
    _lh_popOutId_0_8)
and copy__d1_d1 _lh_copy_arg1_2 _lh_copy_arg2_2 _lh_popOutId_0_1 =
  (if (_lh_copy_arg1_2 > 0) then
    (let rec t_1_1 = ((copy__d1_d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2) in
      (let rec h_1_0 = _lh_copy_arg2_2 in
        (`LH_C(h_1_0, ((mappend__d1_d4 t_1_1) _lh_popOutId_0_1)))))
  else
    _lh_popOutId_0_1)
and copy__d2 _lh_copy_arg1_7 _lh_copy_arg2_7 _lh_popOutId_0_5 =
  (if (_lh_copy_arg1_7 > 0) then
    (let rec t_2_3 = ((copy__d2 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7) in
      (let rec h_2_2 = _lh_copy_arg2_7 in
        (`LH_C(h_2_2, ((mappend__d1_d5 t_2_3) _lh_popOutId_0_5)))))
  else
    _lh_popOutId_0_5)
and copy__d6 _lh_copy_arg1_1_1 _lh_copy_arg2_1_1 _lh_popOutId_0_1_0 _lh_popOutId_1_2 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (_lh_copy_arg1_1_1 > 0) then
    (let rec tx_4 = ((copy__d6 (_lh_copy_arg1_1_1 - 1)) _lh_copy_arg2_1_1) in
      (let rec hx_4 = _lh_copy_arg2_1_1 in
        (match _lh_popOutId_1_2 with
          | `LH_C(hy_3, ty_3) -> 
            (let rec tx_5 = (((zipWith__d2 _lh_popOutId_0_1_0) tx_4) ty_3) in
              (let rec hx_5 = ((_lh_popOutId_0_1_0 hx_4) hy_3) in
                (((_lh_popOutId_3_1 _lh_popOutId_2_1) hx_5) tx_5)))
          | `LH_N -> 
            (fun ys_4_3 -> 
              ys_4_3))))
  else
    (fun ys_4_6 -> 
      ys_4_6))
and copy__d7 _lh_copy_arg1_9 _lh_copy_arg2_9 _lh_popOutId_0_7 =
  (if (_lh_copy_arg1_9 > 0) then
    (let rec t_2_7 = ((copy__d7 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9) in
      (let rec h_2_6 = _lh_copy_arg2_9 in
        (`LH_C(h_2_6, ((mappend__d7 t_2_7) _lh_popOutId_0_7)))))
  else
    _lh_popOutId_0_7)
and copy__d8 _lh_copy_arg1_6 _lh_copy_arg2_6 _lh_popOutId_0_4 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (_lh_copy_arg1_6 > 0) then
    (let rec ty_0 = ((copy__d8 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6) in
      (let rec hy_0 = _lh_copy_arg2_6 in
        (let rec t_2_1 = (((zipWith__d1 _lh_popOutId_0_4) _lh_popOutId_2_0) ty_0) in
          (let rec h_2_0 = ((_lh_popOutId_0_4 _lh_popOutId_1_0) hy_0) in
            (`LH_C(h_2_0, ((mappend__d5 t_2_1) _lh_popOutId_3_0)))))))
  else
    _lh_popOutId_3_0)
and date__d0 _lh_date_arg1_0 _lh_date_arg2_0 =
  (if ((_lh_date_arg2_0 < 1) || (_lh_date_arg1_0 < _lh_date_arg2_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify__d0 3) (string_of_int _lh_date_arg2_0)), (`LH_N))))
and dates__d0 _lh_dates_arg1_0 _lh_dates_arg2_0 =
  ((map__d4 (fun d_0 -> 
    ((date__d0 _lh_dates_arg2_0) d_0))) ((enumFromTo__d0 (1 - _lh_dates_arg1_0)) (42 - _lh_dates_arg1_0)))
and daynames__d0 ys_2_9 =
  (let rec t_2_6 = (fun ys_2_8 -> 
    ys_2_8) in
    (let rec h_2_5 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (`LH_C(h_2_5, ((mappend__d1_d2 t_2_6) ys_2_9)))))
and end__d0 _lh_end_arg1_0 =
  (emptyPic__d1 (let rec _lh_emptyPic_LH_P2_1_0 = 25 in
    (let rec _lh_emptyPic_LH_P2_0_0 = 1 in
      (fun _lh_dummy_1 -> 
        ((copy__d4 _lh_emptyPic_LH_P2_0_0) ((copy__d5 _lh_emptyPic_LH_P2_1_0) ' '))))))
and entries__d0 _lh_entries_arg1_0 _lh_entries_arg2_0 =
  ((block__d1 7) ((dates__d0 _lh_entries_arg1_0) _lh_entries_arg2_0))
and enumFromTo__d0 a_5 b_4 _lh_popOutId_0_3 =
  (if (a_5 <= b_4) then
    (let rec t_2_0 = ((enumFromTo__d0 (a_5 + 1)) b_4) in
      (let rec h_1_9 = a_5 in
        (`LH_C((_lh_popOutId_0_3 h_1_9), ((map__d4 _lh_popOutId_0_3) t_2_0)))))
  else
    (`LH_N))
and firstDays__d0 _lh_firstDays_arg1_0 =
  ((take__d1 12) ((map__d2 (fun a_3 -> 
    (a_3 mod 7))) (((scanl__d0 (fun a_4 b_3 -> 
    (a_4 + b_3))) (jan1st__d0 _lh_firstDays_arg1_0)) (monthLengths__d0 _lh_firstDays_arg1_0))))
and foldr1__d0 _lh_foldr1_arg1_2 _lh_foldr1_arg2_2 =
  (match _lh_foldr1_arg2_2 with
    | `LH_C(_lh_foldr1_LH_C_0_2, _lh_foldr1_LH_C_1_2) -> 
      (((foldr__d0 _lh_foldr1_arg1_2) _lh_foldr1_LH_C_0_2) _lh_foldr1_LH_C_1_2)
    | _ -> 
      (failwith "error"))
and foldr1__d1 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (((foldr__d1 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_0_0) _lh_foldr1_LH_C_1_0)
    | _ -> 
      (failwith "error"))
and foldr1__d2 _lh_foldr1_arg1_3 _lh_foldr1_arg2_3 =
  (match _lh_foldr1_arg2_3 with
    | `LH_C(_lh_foldr1_LH_C_0_3, _lh_foldr1_LH_C_1_3) -> 
      (((foldr__d2 _lh_foldr1_arg1_3) _lh_foldr1_LH_C_0_3) _lh_foldr1_LH_C_1_3)
    | _ -> 
      (failwith "error"))
and foldr1__d3 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr__d3 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"))
and groop__d0 _lh_groop_arg1_1 _lh_groop_arg2_1 _lh_popOutId_0_2 =
  (match _lh_groop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_1_5 = ((groop__d0 _lh_groop_arg1_1) ((drop__d0 _lh_groop_arg1_1) _lh_groop_arg2_1)) in
        (let rec h_1_4 = ((take__d0 _lh_groop_arg1_1) _lh_groop_arg2_1) in
          (`LH_C((_lh_popOutId_0_2 h_1_4), ((map__d0 _lh_popOutId_0_2) t_1_5))))))
and groop__d1 _lh_groop_arg1_0 _lh_groop_arg2_0 _lh_popOutId_0_0 =
  (match _lh_groop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec t_2 = ((groop__d1 _lh_groop_arg1_0) ((drop__d1 _lh_groop_arg1_0) _lh_groop_arg2_0)) in
        (let rec h_2 = ((take__d2 _lh_groop_arg1_0) _lh_groop_arg2_0) in
          (`LH_C((_lh_popOutId_0_0 h_2), ((map__d3 _lh_popOutId_0_0) t_2))))))
and map__d5 f_4_3 ls_1_5 _lh_popOutId_0_1_1 =
  (match ls_1_5 with
    | `LH_C(h_4_6, t_4_8) -> 
      (let rec t_4_9 = ((map__d5 f_4_3) t_4_8) in
        (let rec h_4_7 = (f_4_3 h_4_6) in
          ((mappend__d1_d6 h_4_7) (concat__d0 t_4_9))))
    | `LH_N -> 
      (fun _lh_dummy_2_0 -> 
        0))
and mappend__d1_d7 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_8, t_8) -> 
      (let rec t_9 = ((mappend__d1_d7 t_8) ys_6) in
        (let rec h_9 = h_8 in
          (fun ys_7 -> 
            (let rec t_1_0 = ((mappend__d1_d6 t_9) ys_7) in
              (fun _lh_dummy_0 -> 
                (1 + (length__d3 t_1_0)))))))
    | `LH_N -> 
      ys_6)
and monthLengths__d0 _lh_monthLengths_arg1_0 _lh_scanl_arg1_1_3 _lh_scanl_arg2_1_3 =
  (let rec feb_0 = (if (leap__d0 _lh_monthLengths_arg1_0) then
    29
  else
    28) in
    (let rec _lh_scanl_LH_C_1_0 = (let rec _lh_scanl_LH_C_1_1 = (let rec _lh_scanl_LH_C_1_2 = (let rec _lh_scanl_LH_C_1_3 = (let rec _lh_scanl_LH_C_1_4 = (let rec _lh_scanl_LH_C_1_5 = (let rec _lh_scanl_LH_C_1_6 = (let rec _lh_scanl_LH_C_1_7 = (let rec _lh_scanl_LH_C_1_8 = (let rec _lh_scanl_LH_C_1_9 = (let rec _lh_scanl_LH_C_1_1_0 = (let rec _lh_scanl_LH_C_1_1_1 = (fun _lh_scanl_arg1_1 _lh_scanl_arg2_1 f_2_1 n_4 _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_1_1_4 _lh_zip3_arg3_1_5 f_2_2 -> 
      (`LH_N)) in
      (let rec _lh_scanl_LH_C_0_0 = 31 in
        (fun _lh_scanl_arg1_2 _lh_scanl_arg2_2 -> 
          (((scanl__d0 _lh_scanl_arg1_2) ((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_1_1)))) in
      (let rec _lh_scanl_LH_C_0_1 = 30 in
        (fun _lh_scanl_arg1_3 _lh_scanl_arg2_3 -> 
          (((scanl__d0 _lh_scanl_arg1_3) ((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_1)) _lh_scanl_LH_C_1_1_0)))) in
      (let rec _lh_scanl_LH_C_0_2 = 31 in
        (fun _lh_scanl_arg1_4 _lh_scanl_arg2_4 -> 
          (((scanl__d0 _lh_scanl_arg1_4) ((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_2)) _lh_scanl_LH_C_1_9)))) in
      (let rec _lh_scanl_LH_C_0_3 = 30 in
        (fun _lh_scanl_arg1_5 _lh_scanl_arg2_5 -> 
          (((scanl__d0 _lh_scanl_arg1_5) ((_lh_scanl_arg1_5 _lh_scanl_arg2_5) _lh_scanl_LH_C_0_3)) _lh_scanl_LH_C_1_8)))) in
      (let rec _lh_scanl_LH_C_0_4 = 31 in
        (fun _lh_scanl_arg1_6 _lh_scanl_arg2_6 -> 
          (((scanl__d0 _lh_scanl_arg1_6) ((_lh_scanl_arg1_6 _lh_scanl_arg2_6) _lh_scanl_LH_C_0_4)) _lh_scanl_LH_C_1_7)))) in
      (let rec _lh_scanl_LH_C_0_5 = 31 in
        (fun _lh_scanl_arg1_7 _lh_scanl_arg2_7 -> 
          (((scanl__d0 _lh_scanl_arg1_7) ((_lh_scanl_arg1_7 _lh_scanl_arg2_7) _lh_scanl_LH_C_0_5)) _lh_scanl_LH_C_1_6)))) in
      (let rec _lh_scanl_LH_C_0_6 = 30 in
        (fun _lh_scanl_arg1_8 _lh_scanl_arg2_8 -> 
          (((scanl__d0 _lh_scanl_arg1_8) ((_lh_scanl_arg1_8 _lh_scanl_arg2_8) _lh_scanl_LH_C_0_6)) _lh_scanl_LH_C_1_5)))) in
      (let rec _lh_scanl_LH_C_0_7 = 31 in
        (fun _lh_scanl_arg1_9 _lh_scanl_arg2_9 -> 
          (((scanl__d0 _lh_scanl_arg1_9) ((_lh_scanl_arg1_9 _lh_scanl_arg2_9) _lh_scanl_LH_C_0_7)) _lh_scanl_LH_C_1_4)))) in
      (let rec _lh_scanl_LH_C_0_8 = 30 in
        (fun _lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0 -> 
          (((scanl__d0 _lh_scanl_arg1_1_0) ((_lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0) _lh_scanl_LH_C_0_8)) _lh_scanl_LH_C_1_3)))) in
      (let rec _lh_scanl_LH_C_0_9 = 31 in
        (fun _lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1 -> 
          (((scanl__d0 _lh_scanl_arg1_1_1) ((_lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1) _lh_scanl_LH_C_0_9)) _lh_scanl_LH_C_1_2)))) in
      (let rec _lh_scanl_LH_C_0_1_0 = feb_0 in
        (fun _lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2 -> 
          (((scanl__d0 _lh_scanl_arg1_1_2) ((_lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2) _lh_scanl_LH_C_0_1_0)) _lh_scanl_LH_C_1_1)))) in
      (let rec _lh_scanl_LH_C_0_1_1 = 31 in
        (((scanl__d0 _lh_scanl_arg1_1_3) ((_lh_scanl_arg1_1_3 _lh_scanl_arg2_1_3) _lh_scanl_LH_C_0_1_1)) _lh_scanl_LH_C_1_0))))
and monthLengths__d1 _lh_monthLengths_arg1_1 _lh_zip3_LH_C_0_5_1 _lh_zip3_LH_C_0_5_2 _lh_zip3_LH_C_1_5_1 _lh_zip3_LH_C_1_5_2 f_3_5 =
  (let rec feb_1 = (if (leap__d1 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (let rec _lh_zip3_LH_C_1_1_5 = (let rec _lh_zip3_LH_C_1_1_6 = (let rec _lh_zip3_LH_C_1_1_7 = (let rec _lh_zip3_LH_C_1_1_8 = (let rec _lh_zip3_LH_C_1_1_9 = (let rec _lh_zip3_LH_C_1_2_0 = (let rec _lh_zip3_LH_C_1_2_1 = (let rec _lh_zip3_LH_C_1_2_2 = (let rec _lh_zip3_LH_C_1_2_3 = (let rec _lh_zip3_LH_C_1_2_4 = (let rec _lh_zip3_LH_C_1_2_5 = (let rec _lh_zip3_LH_C_1_2_6 = (fun _lh_zip3_LH_C_0_1_5 _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_1_2_7 _lh_zip3_LH_C_1_2_8 f_2_3 -> 
      (`LH_N)) in
      (let rec _lh_zip3_LH_C_0_1_7 = 31 in
        (fun _lh_zip3_LH_C_0_1_8 _lh_zip3_LH_C_0_1_9 _lh_zip3_LH_C_1_2_9 _lh_zip3_LH_C_1_3_0 -> 
          (let rec t_2_9 = (((zip3__d0 _lh_zip3_LH_C_1_2_9) _lh_zip3_LH_C_1_3_0) _lh_zip3_LH_C_1_2_6) in
            (let rec h_2_8 = (let rec _lh_pic_LH_P3_2_0 = _lh_zip3_LH_C_0_1_7 in
              (let rec _lh_pic_LH_P3_1_0 = _lh_zip3_LH_C_0_1_9 in
                (let rec _lh_pic_LH_P3_0_0 = _lh_zip3_LH_C_0_1_8 in
                  (fun _lh_dummy_5 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_0)) ((table__d0 _lh_pic_LH_P3_1_0) _lh_pic_LH_P3_2_0)))))) in
              (fun f_2_4 -> 
                (`LH_C((f_2_4 h_2_8), ((map__d1 f_2_4) t_2_9))))))))) in
      (let rec _lh_zip3_LH_C_0_2_0 = 30 in
        (fun _lh_zip3_LH_C_0_2_1 _lh_zip3_LH_C_0_2_2 _lh_zip3_LH_C_1_3_1 _lh_zip3_LH_C_1_3_2 -> 
          (let rec t_3_0 = (((zip3__d0 _lh_zip3_LH_C_1_3_1) _lh_zip3_LH_C_1_3_2) _lh_zip3_LH_C_1_2_5) in
            (let rec h_2_9 = (let rec _lh_pic_LH_P3_2_1 = _lh_zip3_LH_C_0_2_0 in
              (let rec _lh_pic_LH_P3_1_1 = _lh_zip3_LH_C_0_2_2 in
                (let rec _lh_pic_LH_P3_0_1 = _lh_zip3_LH_C_0_2_1 in
                  (fun _lh_dummy_6 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_1)) ((table__d0 _lh_pic_LH_P3_1_1) _lh_pic_LH_P3_2_1)))))) in
              (fun f_2_5 -> 
                (`LH_C((f_2_5 h_2_9), ((map__d1 f_2_5) t_3_0))))))))) in
      (let rec _lh_zip3_LH_C_0_2_3 = 31 in
        (fun _lh_zip3_LH_C_0_2_4 _lh_zip3_LH_C_0_2_5 _lh_zip3_LH_C_1_3_3 _lh_zip3_LH_C_1_3_4 -> 
          (let rec t_3_1 = (((zip3__d0 _lh_zip3_LH_C_1_3_3) _lh_zip3_LH_C_1_3_4) _lh_zip3_LH_C_1_2_4) in
            (let rec h_3_0 = (let rec _lh_pic_LH_P3_2_2 = _lh_zip3_LH_C_0_2_3 in
              (let rec _lh_pic_LH_P3_1_2 = _lh_zip3_LH_C_0_2_5 in
                (let rec _lh_pic_LH_P3_0_2 = _lh_zip3_LH_C_0_2_4 in
                  (fun _lh_dummy_7 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_2)) ((table__d0 _lh_pic_LH_P3_1_2) _lh_pic_LH_P3_2_2)))))) in
              (fun f_2_6 -> 
                (`LH_C((f_2_6 h_3_0), ((map__d1 f_2_6) t_3_1))))))))) in
      (let rec _lh_zip3_LH_C_0_2_6 = 30 in
        (fun _lh_zip3_LH_C_0_2_7 _lh_zip3_LH_C_0_2_8 _lh_zip3_LH_C_1_3_5 _lh_zip3_LH_C_1_3_6 -> 
          (let rec t_3_2 = (((zip3__d0 _lh_zip3_LH_C_1_3_5) _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_2_3) in
            (let rec h_3_1 = (let rec _lh_pic_LH_P3_2_3 = _lh_zip3_LH_C_0_2_6 in
              (let rec _lh_pic_LH_P3_1_3 = _lh_zip3_LH_C_0_2_8 in
                (let rec _lh_pic_LH_P3_0_3 = _lh_zip3_LH_C_0_2_7 in
                  (fun _lh_dummy_8 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_3)) ((table__d0 _lh_pic_LH_P3_1_3) _lh_pic_LH_P3_2_3)))))) in
              (fun f_2_7 -> 
                (`LH_C((f_2_7 h_3_1), ((map__d1 f_2_7) t_3_2))))))))) in
      (let rec _lh_zip3_LH_C_0_2_9 = 31 in
        (fun _lh_zip3_LH_C_0_3_0 _lh_zip3_LH_C_0_3_1 _lh_zip3_LH_C_1_3_7 _lh_zip3_LH_C_1_3_8 -> 
          (let rec t_3_3 = (((zip3__d0 _lh_zip3_LH_C_1_3_7) _lh_zip3_LH_C_1_3_8) _lh_zip3_LH_C_1_2_2) in
            (let rec h_3_2 = (let rec _lh_pic_LH_P3_2_4 = _lh_zip3_LH_C_0_2_9 in
              (let rec _lh_pic_LH_P3_1_4 = _lh_zip3_LH_C_0_3_1 in
                (let rec _lh_pic_LH_P3_0_4 = _lh_zip3_LH_C_0_3_0 in
                  (fun _lh_dummy_9 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_4)) ((table__d0 _lh_pic_LH_P3_1_4) _lh_pic_LH_P3_2_4)))))) in
              (fun f_2_8 -> 
                (`LH_C((f_2_8 h_3_2), ((map__d1 f_2_8) t_3_3))))))))) in
      (let rec _lh_zip3_LH_C_0_3_2 = 31 in
        (fun _lh_zip3_LH_C_0_3_3 _lh_zip3_LH_C_0_3_4 _lh_zip3_LH_C_1_3_9 _lh_zip3_LH_C_1_4_0 -> 
          (let rec t_3_4 = (((zip3__d0 _lh_zip3_LH_C_1_3_9) _lh_zip3_LH_C_1_4_0) _lh_zip3_LH_C_1_2_1) in
            (let rec h_3_3 = (let rec _lh_pic_LH_P3_2_5 = _lh_zip3_LH_C_0_3_2 in
              (let rec _lh_pic_LH_P3_1_5 = _lh_zip3_LH_C_0_3_4 in
                (let rec _lh_pic_LH_P3_0_5 = _lh_zip3_LH_C_0_3_3 in
                  (fun _lh_dummy_1_0 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_5)) ((table__d0 _lh_pic_LH_P3_1_5) _lh_pic_LH_P3_2_5)))))) in
              (fun f_2_9 -> 
                (`LH_C((f_2_9 h_3_3), ((map__d1 f_2_9) t_3_4))))))))) in
      (let rec _lh_zip3_LH_C_0_3_5 = 30 in
        (fun _lh_zip3_LH_C_0_3_6 _lh_zip3_LH_C_0_3_7 _lh_zip3_LH_C_1_4_1 _lh_zip3_LH_C_1_4_2 -> 
          (let rec t_3_5 = (((zip3__d0 _lh_zip3_LH_C_1_4_1) _lh_zip3_LH_C_1_4_2) _lh_zip3_LH_C_1_2_0) in
            (let rec h_3_4 = (let rec _lh_pic_LH_P3_2_6 = _lh_zip3_LH_C_0_3_5 in
              (let rec _lh_pic_LH_P3_1_6 = _lh_zip3_LH_C_0_3_7 in
                (let rec _lh_pic_LH_P3_0_6 = _lh_zip3_LH_C_0_3_6 in
                  (fun _lh_dummy_1_1 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_6)) ((table__d0 _lh_pic_LH_P3_1_6) _lh_pic_LH_P3_2_6)))))) in
              (fun f_3_0 -> 
                (`LH_C((f_3_0 h_3_4), ((map__d1 f_3_0) t_3_5))))))))) in
      (let rec _lh_zip3_LH_C_0_3_8 = 31 in
        (fun _lh_zip3_LH_C_0_3_9 _lh_zip3_LH_C_0_4_0 _lh_zip3_LH_C_1_4_3 _lh_zip3_LH_C_1_4_4 -> 
          (let rec t_3_6 = (((zip3__d0 _lh_zip3_LH_C_1_4_3) _lh_zip3_LH_C_1_4_4) _lh_zip3_LH_C_1_1_9) in
            (let rec h_3_5 = (let rec _lh_pic_LH_P3_2_7 = _lh_zip3_LH_C_0_3_8 in
              (let rec _lh_pic_LH_P3_1_7 = _lh_zip3_LH_C_0_4_0 in
                (let rec _lh_pic_LH_P3_0_7 = _lh_zip3_LH_C_0_3_9 in
                  (fun _lh_dummy_1_2 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_7)) ((table__d0 _lh_pic_LH_P3_1_7) _lh_pic_LH_P3_2_7)))))) in
              (fun f_3_1 -> 
                (`LH_C((f_3_1 h_3_5), ((map__d1 f_3_1) t_3_6))))))))) in
      (let rec _lh_zip3_LH_C_0_4_1 = 30 in
        (fun _lh_zip3_LH_C_0_4_2 _lh_zip3_LH_C_0_4_3 _lh_zip3_LH_C_1_4_5 _lh_zip3_LH_C_1_4_6 -> 
          (let rec t_3_7 = (((zip3__d0 _lh_zip3_LH_C_1_4_5) _lh_zip3_LH_C_1_4_6) _lh_zip3_LH_C_1_1_8) in
            (let rec h_3_6 = (let rec _lh_pic_LH_P3_2_8 = _lh_zip3_LH_C_0_4_1 in
              (let rec _lh_pic_LH_P3_1_8 = _lh_zip3_LH_C_0_4_3 in
                (let rec _lh_pic_LH_P3_0_8 = _lh_zip3_LH_C_0_4_2 in
                  (fun _lh_dummy_1_3 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_8)) ((table__d0 _lh_pic_LH_P3_1_8) _lh_pic_LH_P3_2_8)))))) in
              (fun f_3_2 -> 
                (`LH_C((f_3_2 h_3_6), ((map__d1 f_3_2) t_3_7))))))))) in
      (let rec _lh_zip3_LH_C_0_4_4 = 31 in
        (fun _lh_zip3_LH_C_0_4_5 _lh_zip3_LH_C_0_4_6 _lh_zip3_LH_C_1_4_7 _lh_zip3_LH_C_1_4_8 -> 
          (let rec t_3_8 = (((zip3__d0 _lh_zip3_LH_C_1_4_7) _lh_zip3_LH_C_1_4_8) _lh_zip3_LH_C_1_1_7) in
            (let rec h_3_7 = (let rec _lh_pic_LH_P3_2_9 = _lh_zip3_LH_C_0_4_4 in
              (let rec _lh_pic_LH_P3_1_9 = _lh_zip3_LH_C_0_4_6 in
                (let rec _lh_pic_LH_P3_0_9 = _lh_zip3_LH_C_0_4_5 in
                  (fun _lh_dummy_1_4 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_9)) ((table__d0 _lh_pic_LH_P3_1_9) _lh_pic_LH_P3_2_9)))))) in
              (fun f_3_3 -> 
                (`LH_C((f_3_3 h_3_7), ((map__d1 f_3_3) t_3_8))))))))) in
      (let rec _lh_zip3_LH_C_0_4_7 = feb_1 in
        (fun _lh_zip3_LH_C_0_4_8 _lh_zip3_LH_C_0_4_9 _lh_zip3_LH_C_1_4_9 _lh_zip3_LH_C_1_5_0 -> 
          (let rec t_3_9 = (((zip3__d0 _lh_zip3_LH_C_1_4_9) _lh_zip3_LH_C_1_5_0) _lh_zip3_LH_C_1_1_6) in
            (let rec h_3_8 = (let rec _lh_pic_LH_P3_2_1_0 = _lh_zip3_LH_C_0_4_7 in
              (let rec _lh_pic_LH_P3_1_1_0 = _lh_zip3_LH_C_0_4_9 in
                (let rec _lh_pic_LH_P3_0_1_0 = _lh_zip3_LH_C_0_4_8 in
                  (fun _lh_dummy_1_5 -> 
                    ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_1_0)) ((table__d0 _lh_pic_LH_P3_1_1_0) _lh_pic_LH_P3_2_1_0)))))) in
              (fun f_3_4 -> 
                (`LH_C((f_3_4 h_3_8), ((map__d1 f_3_4) t_3_9))))))))) in
      (let rec _lh_zip3_LH_C_0_5_0 = 31 in
        (let rec t_4_0 = (((zip3__d0 _lh_zip3_LH_C_1_5_1) _lh_zip3_LH_C_1_5_2) _lh_zip3_LH_C_1_1_5) in
          (let rec h_3_9 = (let rec _lh_pic_LH_P3_2_1_1 = _lh_zip3_LH_C_0_5_0 in
            (let rec _lh_pic_LH_P3_1_1_1 = _lh_zip3_LH_C_0_5_2 in
              (let rec _lh_pic_LH_P3_0_1_1 = _lh_zip3_LH_C_0_5_1 in
                (fun _lh_dummy_1_6 -> 
                  ((mappend__d8 (title__d0 _lh_pic_LH_P3_0_1_1)) ((table__d0 _lh_pic_LH_P3_1_1_1) _lh_pic_LH_P3_2_1_1)))))) in
            (`LH_C((f_3_5 h_3_9), ((map__d1 f_3_5) t_4_0))))))))
and months__d0 _lh_months_arg1_0 =
  (((zip3__d0 monthNames__d0) (firstDays__d0 _lh_months_arg1_0)) (monthLengths__d1 _lh_months_arg1_0))
and pad__d0 _lh_pad_arg1_0 =
  ((mappend__d5 (((zipWith__d1 mappend__d6) (((zipWith__d2 mappend__d7) (side__d0 0)) _lh_pad_arg1_0)) (side__d1 0))) (end__d0 0))
and rjustify__d0 _lh_rjustify_arg1_0 _lh_rjustify_arg2_0 =
  ((mappend__d1_d1 (space__d2 (_lh_rjustify_arg1_0 - (length__d1 _lh_rjustify_arg2_0)))) _lh_rjustify_arg2_0)
and scanl__d0 _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 f_1_1 n_1 _lh_zip3_LH_C_0_1 _lh_zip3_LH_C_1_1 _lh_zip3_arg3_0 =
  (let rec t_1_6 = (let rec _lh_matchIdent_0 = _lh_scanl_arg3_0 in
    ((_lh_matchIdent_0 _lh_scanl_arg1_0) _lh_scanl_arg2_0)) in
    (let rec h_1_5 = _lh_scanl_arg2_0 in
      (let rec t_1_7 = ((map__d2 f_1_1) t_1_6) in
        (let rec h_1_6 = (f_1_1 h_1_5) in
          (let rec _lh_zip3_LH_C_1_0 = ((take__d1 (n_1 - 1)) t_1_7) in
            (let rec _lh_zip3_LH_C_0_0 = h_1_6 in
              (let rec _lh_matchIdent_1 = _lh_zip3_arg3_0 in
                ((((_lh_matchIdent_1 _lh_zip3_LH_C_0_1) _lh_zip3_LH_C_0_0) _lh_zip3_LH_C_1_1) _lh_zip3_LH_C_1_0))))))))
and side__d0 _lh_side_arg1_0 =
  (emptyPic__d2 (let rec _lh_emptyPic_LH_P2_1_2 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_2 = 8 in
      (fun _lh_dummy_3 -> 
        ((copy__d6 _lh_emptyPic_LH_P2_0_2) ((copy__d7 _lh_emptyPic_LH_P2_1_2) ' '))))))
and side__d1 _lh_side_arg1_1 =
  (emptyPic__d3 (let rec _lh_emptyPic_LH_P2_1_3 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_3 = 8 in
      (fun _lh_dummy_4 -> 
        ((copy__d8 _lh_emptyPic_LH_P2_0_3) ((copy__d9 _lh_emptyPic_LH_P2_1_3) ' '))))))
and space__d0 _lh_space_arg1_3 =
  ((copy__d0 _lh_space_arg1_3) ' ')
and space__d1 _lh_space_arg1_2 =
  ((copy__d1 _lh_space_arg1_2) ' ')
and space__d2 _lh_space_arg1_4 =
  ((copy__d1_d0 _lh_space_arg1_4) ' ')
and space__d3 _lh_space_arg1_1 =
  ((copy__d1_d1 _lh_space_arg1_1) ' ')
and space__d4 _lh_space_arg1_0 =
  ((copy__d1_d2 _lh_space_arg1_0) ' ')
and spread__d0 _lh_spread_arg1_0 =
  ((foldr1__d0 (fun a_2 b_2 -> 
    (((zipWith__d0 mappend__d3) a_2) b_2))) _lh_spread_arg1_0)
and spread__d1 _lh_spread_arg1_1 =
  ((foldr1__d2 (fun a_6 b_5 -> 
    (((zipWith__d3 mappend__d9) a_6) b_5))) _lh_spread_arg1_1)
and stack__d0 _lh_stack_arg1_1 =
  ((foldr1__d1 (fun a_7 b_6 -> 
    ((mappend__d4 a_7) b_6))) _lh_stack_arg1_1)
and stack__d1 _lh_stack_arg1_0 =
  ((foldr1__d3 (fun a_0 b_0 -> 
    ((mappend__d1_d0 a_0) b_0))) _lh_stack_arg1_0)
and table__d0 _lh_table_arg1_0 _lh_table_arg2_0 =
  ((mappend__d1_d2 daynames__d0) ((entries__d0 _lh_table_arg1_0) _lh_table_arg2_0))
and testCalendar_nofib__d0 _lh_testCalendar_nofib_arg1_0 =
  ((map__d6 (fun n_3 -> 
    (length__d3 (cal__d0 n_3)))) ((enumFromTo__d1 2008) (2008 + _lh_testCalendar_nofib_arg1_0)))
and title__d0 _lh_title_arg1_0 ys_3_3 =
  (let rec t_2_8 = (fun ys_3_2 -> 
    ys_3_2) in
    (let rec h_2_7 = ((cjustify__d1 21) _lh_title_arg1_0) in
      (`LH_C(h_2_7, ((mappend__d8 t_2_8) ys_3_3)))))
and unlines__d0 _lh_unlines_arg1_0 =
  (concat__d0 ((map__d5 (fun l_0 -> 
    ((mappend__d1_d7 l_0) (let rec t_4_5 = (fun ys_4_7 -> 
      ys_4_7) in
      (let rec h_4_4 = 'n' in
        (fun ys_4_8 -> 
          (let rec t_4_6 = ((mappend__d1_d6 t_4_5) ys_4_8) in
            (fun _lh_dummy_1_7 -> 
              (1 + (length__d3 t_4_6)))))))))) _lh_unlines_arg1_0));;
end;;

