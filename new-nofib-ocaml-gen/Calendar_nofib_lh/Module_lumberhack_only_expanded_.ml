

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec map_lh__d1 f_9 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C((f_9 h_2_4), ((map_lh__d1 f_9) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_7 b_6 =
  (if (a_7 <= b_6) then
    (`LH_C(a_7, ((enumFromTo_lh__d1 (a_7 + 1)) b_6)))
  else
    (`LH_N));;
let rec length_lh__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_2_3, t_2_3) -> 
      (1 + (length_lh__d1 t_2_3))
    | `LH_N -> 
      0);;
let rec monthNames_lh__d1 =
  (`LH_C((`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))), (`LH_C((`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))), (`LH_C((`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_N)))))))))))))))))))))))));;
let rec mappend_lh__d1 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_lh__d1 t_2_1) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec copy_lh__d4 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_lh__d4 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy_lh__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy_lh__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec emptyPic_lh__d2 _lh_emptyPic_arg1_1 =
  (match _lh_emptyPic_arg1_1 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_1, _lh_emptyPic_LH_P2_1_1) -> 
      ((copy_lh__d3 _lh_emptyPic_LH_P2_0_1) ((copy_lh__d4 _lh_emptyPic_LH_P2_1_1) ' '))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d6 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d6 t_1_6) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec zipWith_lh__d1 f_7 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_1_3 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_7 hx_1) hy_1), (((zipWith_lh__d1 f_7) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec leap_lh__d1 _lh_leap_arg1_0 =
  (if ((_lh_leap_arg1_0 mod 100) = 0) then
    ((_lh_leap_arg1_0 mod 400) = 0)
  else
    ((_lh_leap_arg1_0 mod 4) = 0));;
let rec monthLengths_lh__d2 _lh_monthLengths_arg1_0 =
  (let rec feb_0 = (if (leap_lh__d1 _lh_monthLengths_arg1_0) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_0, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))));;
let rec map_lh__d7 f_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_1 h_5), ((map_lh__d7 f_1) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec jan1st_lh__d1 _lh_jan1st_arg1_0 =
  (let rec last_0 = (_lh_jan1st_arg1_0 - 1) in
    (((((((_lh_jan1st_arg1_0 + last_0) / 4) - last_0) / 100) + last_0) / 400) mod 7));;
let rec take_lh__d1 n_0 ls_2 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lh__d1 (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec scanl_lh__d1 _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_0, (let rec _lh_matchIdent_0 = _lh_scanl_arg3_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_0, _lh_scanl_LH_C_1_0) -> 
        (((scanl_lh__d1 _lh_scanl_arg1_0) ((_lh_scanl_arg1_0 _lh_scanl_arg2_0) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_0)
      | _ -> 
        (failwith "error")))));;
let rec firstDays_lh__d1 _lh_firstDays_arg1_0 =
  ((take_lh__d1 12) ((map_lh__d7 (fun a_5 -> 
    (a_5 mod 7))) (((scanl_lh__d1 (fun a_6 b_5 -> 
    (a_6 + b_5))) (jan1st_lh__d1 _lh_firstDays_arg1_0)) (monthLengths_lh__d2 _lh_firstDays_arg1_0))));;
let rec zip3_lh__d1 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_1 = _lh_zip3_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_1_0) -> 
        (let rec _lh_matchIdent_2 = _lh_zip3_arg2_0 in
          (match _lh_matchIdent_2 with
            | `LH_C(_lh_zip3_LH_C_0_1, _lh_zip3_LH_C_1_1) -> 
              (let rec _lh_matchIdent_3 = _lh_zip3_arg3_0 in
                (match _lh_matchIdent_3 with
                  | `LH_C(_lh_zip3_LH_C_0_2, _lh_zip3_LH_C_1_2) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_0_1, _lh_zip3_LH_C_0_2)), (((zip3_lh__d1 _lh_zip3_LH_C_1_0) _lh_zip3_LH_C_1_1) _lh_zip3_LH_C_1_2)))
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
let rec mappend_lh__d1_d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d1_d2 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_7, t_7) -> 
      ((mappend_lh__d1_d2 h_7) (concat_lh__d1 t_7))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1_d0 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d1_d0 t_8) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec map_lh__d5 f_3 ls_5 =
  (match ls_5 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C((f_3 h_9), ((map_lh__d5 f_3) t_9)))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d1 ((map_lh__d5 (fun l_0 -> 
    ((mappend_lh__d1_d0 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec foldr_lh__d1 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((f_0 h_0) (((foldr_lh__d1 f_0) i_0) t_0))
    | `LH_N -> 
      i_0);;
let rec foldr1_lh__d1 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (((foldr_lh__d1 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_0_0) _lh_foldr1_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec stack_lh__d2 _lh_stack_arg1_0 =
  ((foldr1_lh__d1 (fun a_0 b_0 -> 
    ((mappend_lh__d1_d2 a_0) b_0))) _lh_stack_arg1_0);;
let rec map_lh__d6 f_2 ls_4 =
  (match ls_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C((f_2 h_6), ((map_lh__d6 f_2) t_6)))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_lh__d2 f_6 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_1_1 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_6 hx_0) hy_0), (((zipWith_lh__d2 f_6) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec spread_lh__d2 _lh_spread_arg1_0 =
  ((foldr1_lh__d1 (fun a_1 b_1 -> 
    (((zipWith_lh__d2 mappend_lh__d1_d2) a_1) b_1))) _lh_spread_arg1_0);;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec groop_lh__d2 _lh_groop_arg1_0 _lh_groop_arg2_0 =
  (match _lh_groop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take_lh__d1 _lh_groop_arg1_0) _lh_groop_arg2_0), ((groop_lh__d2 _lh_groop_arg1_0) ((drop_lh__d1 _lh_groop_arg1_0) _lh_groop_arg2_0)))));;
let rec block_lh__d2 _lh_block_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (stack_lh__d2 ((map_lh__d6 spread_lh__d2) _lh_funcomp_x_1))) ((groop_lh__d2 _lh_block_arg1_0) _lh_funcomp_x_0));;
let rec mappend_lh__d3 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C(h_1_9, ((mappend_lh__d3 t_1_9) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec copy_lh__d6 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh__d6 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec space_lh__d4 _lh_space_arg1_0 =
  ((copy_lh__d6 _lh_space_arg1_0) ' ');;
let rec mappend_lh__d1_d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d1_d1 t_3) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec length_lh__d3 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh__d3 t_2))
    | `LH_N -> 
      0);;
let rec space_lh__d3 _lh_space_arg1_1 =
  ((copy_lh__d6 _lh_space_arg1_1) ' ');;
let rec cjustify_lh__d2 _lh_cjustify_arg1_0 _lh_cjustify_arg2_0 =
  (let rec m_0 = (_lh_cjustify_arg1_0 - (length_lh__d3 _lh_cjustify_arg2_0)) in
    (let rec halfm_0 = (m_0 / 2) in
      ((mappend_lh__d1_d2 ((mappend_lh__d1_d1 (space_lh__d4 halfm_0)) _lh_cjustify_arg2_0)) (space_lh__d3 (m_0 - halfm_0)))));;
let rec copy_lh__d2 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy_lh__d2 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy_lh__d1 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (`LH_C(_lh_copy_arg2_5, ((copy_lh__d1 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5)))
  else
    (`LH_N));;
let rec emptyPic_lh__d1 _lh_emptyPic_arg1_2 =
  (match _lh_emptyPic_arg1_2 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_2, _lh_emptyPic_LH_P2_1_2) -> 
      ((copy_lh__d1 _lh_emptyPic_LH_P2_0_2) ((copy_lh__d2 _lh_emptyPic_LH_P2_1_2) ' '))
    | _ -> 
      (failwith "error"));;
let rec copy_lh__d5 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_lh__d5 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec emptyPic_lh__d3 _lh_emptyPic_arg1_0 =
  (match _lh_emptyPic_arg1_0 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_0, _lh_emptyPic_LH_P2_1_0) -> 
      ((copy_lh__d5 _lh_emptyPic_LH_P2_0_0) ((copy_lh__d6 _lh_emptyPic_LH_P2_1_0) ' '))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d3 f_5 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C((f_5 h_1_4), ((map_lh__d3 f_5) t_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec groop_lh__d1 _lh_groop_arg1_1 _lh_groop_arg2_1 =
  (match _lh_groop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take_lh__d1 _lh_groop_arg1_1) _lh_groop_arg2_1), ((groop_lh__d1 _lh_groop_arg1_1) ((drop_lh__d1 _lh_groop_arg1_1) _lh_groop_arg2_1)))));;
let rec stack_lh__d1 _lh_stack_arg1_1 =
  ((foldr1_lh__d1 (fun a_3 b_3 -> 
    ((mappend_lh__d1_d2 a_3) b_3))) _lh_stack_arg1_1);;
let rec spread_lh__d1 _lh_spread_arg1_1 =
  ((foldr1_lh__d1 (fun a_4 b_4 -> 
    (((zipWith_lh__d2 mappend_lh__d1_d2) a_4) b_4))) _lh_spread_arg1_1);;
let rec block_lh__d1 _lh_block_arg1_1 _lh_funcomp_x_2 =
  ((fun _lh_funcomp_x_3 -> 
    (stack_lh__d1 ((map_lh__d3 spread_lh__d1) _lh_funcomp_x_3))) ((groop_lh__d1 _lh_block_arg1_1) _lh_funcomp_x_2));;
let rec map_lh__d4 f_4 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C((f_4 h_1_3), ((map_lh__d4 f_4) t_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d2 a_2 b_2 =
  (if (a_2 <= b_2) then
    (`LH_C(a_2, ((enumFromTo_lh__d2 (a_2 + 1)) b_2)))
  else
    (`LH_N));;
let rec rjustify_lh__d1 _lh_rjustify_arg1_0 _lh_rjustify_arg2_0 =
  ((mappend_lh__d1_d2 (space_lh__d4 (_lh_rjustify_arg1_0 - (length_lh__d3 _lh_rjustify_arg2_0)))) _lh_rjustify_arg2_0);;
let rec date_lh__d1 _lh_date_arg1_0 _lh_date_arg2_0 =
  (if ((_lh_date_arg2_0 < 1) || (_lh_date_arg1_0 < _lh_date_arg2_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_lh__d1 3) (string_of_int _lh_date_arg2_0)), (`LH_N))));;
let rec dates_lh__d1 _lh_dates_arg1_0 _lh_dates_arg2_0 =
  ((map_lh__d4 (fun d_0 -> 
    ((date_lh__d1 _lh_dates_arg2_0) d_0))) ((enumFromTo_lh__d2 (1 - _lh_dates_arg1_0)) (42 - _lh_dates_arg1_0)));;
let rec mappend_lh__d7 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d7 t_1_5) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_lh__d2 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_0, t_2_0) -> 
      (`LH_C(h_2_0, ((mappend_lh__d2 t_2_0) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_lh__d5 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C(h_1_7, ((mappend_lh__d5 t_1_7) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_lh__d4 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_lh__d4 t_1_8) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec map_lh__d2 f_8 ls_9 =
  (match ls_9 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C((f_8 h_2_2), ((map_lh__d2 f_8) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec monthLengths_lh__d1 _lh_monthLengths_arg1_1 =
  (let rec feb_1 = (if (leap_lh__d1 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_1, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))));;
let rec mappend_lh__d8 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_lh__d8 t_1_2) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d9 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d9 t_1_0) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec space_lh__d2 _lh_space_arg1_2 =
  ((copy_lh__d6 _lh_space_arg1_2) ' ');;
let rec space_lh__d1 _lh_space_arg1_3 =
  ((copy_lh__d6 _lh_space_arg1_3) ' ');;
let rec length_lh__d2 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_1, t_1_1) -> 
      (1 + (length_lh__d2 t_1_1))
    | `LH_N -> 
      0);;
let rec cjustify_lh__d1 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length_lh__d2 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend_lh__d8 ((mappend_lh__d9 (space_lh__d2 halfm_1)) _lh_cjustify_arg2_1)) (space_lh__d1 (m_1 - halfm_1)))));;
let rec cal_lh__d1 _lh_cal_arg1_0 =
  let rec pic_0 = (fun _lh_pic_arg1_0 -> 
    (match _lh_pic_arg1_0 with
      | `LH_P3(_lh_pic_LH_P3_0_0, _lh_pic_LH_P3_1_0, _lh_pic_LH_P3_2_0) -> 
        ((mappend_lh__d3 (title_0 _lh_pic_LH_P3_0_0)) ((table_0 _lh_pic_LH_P3_1_0) _lh_pic_LH_P3_2_0))
      | _ -> 
        (failwith "error")))
  and table_0 = (fun _lh_table_arg1_0 _lh_table_arg2_0 -> 
    ((mappend_lh__d4 daynames_0) ((entries_0 _lh_table_arg1_0) _lh_table_arg2_0)))
  and daynames_0 = (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))
  and pad_0 = (fun _lh_pad_arg1_0 -> 
    ((mappend_lh__d1 (((zipWith_lh__d2 mappend_lh__d6) (((zipWith_lh__d1 mappend_lh__d7) side_0) _lh_pad_arg1_0)) side_0)) end_0))
  and months_0 = (fun _lh_months_arg1_0 -> 
    (((zip3_lh__d1 monthNames_lh__d1) (firstDays_lh__d1 _lh_months_arg1_0)) (monthLengths_lh__d1 _lh_months_arg1_0)))
  and entries_0 = (fun _lh_entries_arg1_0 _lh_entries_arg2_0 -> 
    ((block_lh__d1 7) ((dates_lh__d1 _lh_entries_arg1_0) _lh_entries_arg2_0)))
  and side_0 = (emptyPic_lh__d2 (`LH_P2(8, 2)))
  and body_0 = (fun _lh_funcomp_x_4 -> 
    ((fun _lh_funcomp_x_5 -> 
      ((block_lh__d2 3) ((map_lh__d2 (fun _lh_funcomp_x_6 -> 
        (pad_0 (pic_0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) (months_0 _lh_funcomp_x_4)))
  and banner_0 = (fun _lh_banner_arg1_0 -> 
    ((mappend_lh__d5 (`LH_C(((cjustify_lh__d1 75) (string_of_int _lh_banner_arg1_0)), (`LH_N)))) (emptyPic_lh__d3 (`LH_P2(1, 75)))))
  and end_0 = (emptyPic_lh__d1 (`LH_P2(1, 25)))
  and title_0 = (fun _lh_title_arg1_0 -> 
    (`LH_C(((cjustify_lh__d2 21) _lh_title_arg1_0), (`LH_N))))
  in (unlines_lh__d1 ((mappend_lh__d2 (banner_0 _lh_cal_arg1_0)) (body_0 _lh_cal_arg1_0)));;
let rec testCalendar_nofib_lh__d1 _lh_testCalendar_nofib_arg1_0 =
  ((map_lh__d1 (fun n_1 -> 
    (length_lh__d1 (cal_lh__d1 n_1)))) ((enumFromTo_lh__d1 1993) (1993 + _lh_testCalendar_nofib_arg1_0)));;
end;;

