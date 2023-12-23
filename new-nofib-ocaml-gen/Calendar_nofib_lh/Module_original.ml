
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec length_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_lh t_3))
    | `LH_N -> 
      0);;
let rec mappend_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh t_4) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec space_lh _lh_space_arg1_0 =
  ((copy_lh _lh_space_arg1_0) ' ');;
let rec cjustify_lh _lh_cjustify_arg1_0 _lh_cjustify_arg2_0 =
  (let rec m_0 = (_lh_cjustify_arg1_0 - (length_lh _lh_cjustify_arg2_0)) in
    (let rec halfm_0 = (m_0 / 2) in
      ((mappend_lh ((mappend_lh (space_lh halfm_0)) _lh_cjustify_arg2_0)) (space_lh (m_0 - halfm_0)))));;
let rec emptyPic_lh _lh_emptyPic_arg1_0 =
  (match _lh_emptyPic_arg1_0 with
    | `LH_P2(_lh_emptyPic_LH_P2_0_0, _lh_emptyPic_LH_P2_1_0) -> 
      ((copy_lh _lh_emptyPic_LH_P2_0_0) ((copy_lh _lh_emptyPic_LH_P2_1_0) ' '))
    | _ -> 
      (failwith "error"));;
let rec banner_lh _lh_banner_arg1_0 =
  ((mappend_lh (`LH_C(((cjustify_lh 75) (string_of_int _lh_banner_arg1_0)), (`LH_N)))) (emptyPic_lh (`LH_P2(1, 75))));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_5, t_5) -> 
      ((mappend_lh h_5) (concat_lh t_5))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_0 -> 
    ((mappend_lh l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec zipWith_lh f_2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match ys_0 with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_2 hx_0) hy_0), (((zipWith_lh f_2) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec end_lh _lh_end_arg1_0 =
  (emptyPic_lh (`LH_P2(1, 25)));;
let rec side_lh _lh_side_arg1_0 =
  (emptyPic_lh (`LH_P2(8, 2)));;
let rec pad_lh _lh_pad_arg1_0 =
  ((mappend_lh (((zipWith_lh mappend_lh) (((zipWith_lh mappend_lh) (side_lh 0)) _lh_pad_arg1_0)) (side_lh 0))) (end_lh 0));;
let rec zip3_lh _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_1 = _lh_zip3_arg1_0 in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_1_0) -> 
        (let rec _lh_matchIdent_2 = _lh_zip3_arg2_0 in
          (match _lh_matchIdent_2 with
            | `LH_C(_lh_zip3_LH_C_0_1, _lh_zip3_LH_C_1_1) -> 
              (let rec _lh_matchIdent_3 = _lh_zip3_arg3_0 in
                (match _lh_matchIdent_3 with
                  | `LH_C(_lh_zip3_LH_C_0_2, _lh_zip3_LH_C_1_2) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_0_1, _lh_zip3_LH_C_0_2)), (((zip3_lh _lh_zip3_LH_C_1_0) _lh_zip3_LH_C_1_1) _lh_zip3_LH_C_1_2)))
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
let rec leap_lh _lh_leap_arg1_0 =
  (if ((_lh_leap_arg1_0 mod 100) = 0) then
    ((_lh_leap_arg1_0 mod 400) = 0)
  else
    ((_lh_leap_arg1_0 mod 4) = 0));;
let rec monthLengths_lh _lh_monthLengths_arg1_0 =
  (let rec feb_0 = (if (leap_lh _lh_monthLengths_arg1_0) then
    29
  else
    28) in
    (`LH_C(31, (`LH_C(feb_0, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_C(30, (`LH_C(31, (`LH_N))))))))))))))))))))))))));;
let rec monthNames_lh =
  (`LH_C((`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))), (`LH_C((`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))), (`LH_C((`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))), (`LH_C((`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))), (`LH_C((`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))), (`LH_C((`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))), (`LH_C((`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_C((`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))), (`LH_N)))))))))))))))))))))))));;
let rec jan1st_lh _lh_jan1st_arg1_0 =
  (let rec last_0 = (_lh_jan1st_arg1_0 - 1) in
    (((((((_lh_jan1st_arg1_0 + last_0) / 4) - last_0) / 100) + last_0) / 400) mod 7));;
let rec scanl_lh _lh_scanl_arg1_0 _lh_scanl_arg2_0 _lh_scanl_arg3_0 =
  (`LH_C(_lh_scanl_arg2_0, (let rec _lh_matchIdent_0 = _lh_scanl_arg3_0 in
    (match _lh_matchIdent_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_scanl_LH_C_0_0, _lh_scanl_LH_C_1_0) -> 
        (((scanl_lh _lh_scanl_arg1_0) ((_lh_scanl_arg1_0 _lh_scanl_arg2_0) _lh_scanl_LH_C_0_0)) _lh_scanl_LH_C_1_0)
      | _ -> 
        (failwith "error")))));;
let rec take_lh n_0 ls_2 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_2, t_2) -> 
        (`LH_C(h_2, ((take_lh (n_0 - 1)) t_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec firstDays_lh _lh_firstDays_arg1_0 =
  ((take_lh 12) ((map_lh (fun a_3 -> 
    (a_3 mod 7))) (((scanl_lh (fun a_4 b_3 -> 
    (a_4 + b_3))) (jan1st_lh _lh_firstDays_arg1_0)) (monthLengths_lh _lh_firstDays_arg1_0))));;
let rec months_lh _lh_months_arg1_0 =
  (((zip3_lh monthNames_lh) (firstDays_lh _lh_months_arg1_0)) (monthLengths_lh _lh_months_arg1_0));;
let rec title_lh _lh_title_arg1_0 =
  (`LH_C(((cjustify_lh 21) _lh_title_arg1_0), (`LH_N)));;
let rec rjustify_lh _lh_rjustify_arg1_0 _lh_rjustify_arg2_0 =
  ((mappend_lh (space_lh (_lh_rjustify_arg1_0 - (length_lh _lh_rjustify_arg2_0)))) _lh_rjustify_arg2_0);;
let rec date_lh _lh_date_arg1_0 _lh_date_arg2_0 =
  (if ((_lh_date_arg2_0 < 1) || (_lh_date_arg1_0 < _lh_date_arg2_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_lh 3) (string_of_int _lh_date_arg2_0)), (`LH_N))));;
let rec dates_lh _lh_dates_arg1_0 _lh_dates_arg2_0 =
  ((map_lh (fun d_0 -> 
    ((date_lh _lh_dates_arg2_0) d_0))) ((enumFromTo_lh (1 - _lh_dates_arg1_0)) (42 - _lh_dates_arg1_0)));;
let rec foldr_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr_lh f_1) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec foldr1_lh _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (((foldr_lh _lh_foldr1_arg1_0) _lh_foldr1_LH_C_0_0) _lh_foldr1_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec stack_lh _lh_stack_arg1_0 =
  ((foldr1_lh (fun a_1 b_1 -> 
    ((mappend_lh a_1) b_1))) _lh_stack_arg1_0);;
let rec spread_lh _lh_spread_arg1_0 =
  ((foldr1_lh (fun a_2 b_2 -> 
    (((zipWith_lh mappend_lh) a_2) b_2))) _lh_spread_arg1_0);;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        _lh_drop_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec groop_lh _lh_groop_arg1_0 _lh_groop_arg2_0 =
  (match _lh_groop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take_lh _lh_groop_arg1_0) _lh_groop_arg2_0), ((groop_lh _lh_groop_arg1_0) ((drop_lh _lh_groop_arg1_0) _lh_groop_arg2_0)))));;
let rec block_lh _lh_block_arg1_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (stack_lh ((map_lh spread_lh) _lh_funcomp_x_1))) ((groop_lh _lh_block_arg1_0) _lh_funcomp_x_0));;
let rec entries_lh _lh_entries_arg1_0 _lh_entries_arg2_0 =
  ((block_lh 7) ((dates_lh _lh_entries_arg1_0) _lh_entries_arg2_0));;
let rec daynames_lh =
  (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))), (`LH_N)));;
let rec table_lh _lh_table_arg1_0 _lh_table_arg2_0 =
  ((mappend_lh daynames_lh) ((entries_lh _lh_table_arg1_0) _lh_table_arg2_0));;
let rec pic_lh _lh_pic_arg1_0 =
  (match _lh_pic_arg1_0 with
    | `LH_P3(_lh_pic_LH_P3_0_0, _lh_pic_LH_P3_1_0, _lh_pic_LH_P3_2_0) -> 
      ((mappend_lh (title_lh _lh_pic_LH_P3_0_0)) ((table_lh _lh_pic_LH_P3_1_0) _lh_pic_LH_P3_2_0))
    | _ -> 
      (failwith "error"));;
let rec body_lh _lh_funcomp_x_2 =
  ((fun _lh_funcomp_x_3 -> 
    ((block_lh 3) ((map_lh (fun _lh_funcomp_x_4 -> 
      (pad_lh (pic_lh _lh_funcomp_x_4)))) _lh_funcomp_x_3))) (months_lh _lh_funcomp_x_2));;
let rec cal_lh _lh_cal_arg1_0 =
  (unlines_lh ((mappend_lh (banner_lh _lh_cal_arg1_0)) (body_lh _lh_cal_arg1_0)));;
let rec testCalendar_nofib_lh _lh_testCalendar_nofib_arg1_0 =
  ((map_lh (fun n_1 -> 
    (length_lh (cal_lh n_1)))) ((enumFromTo_lh 2008) (2008 + _lh_testCalendar_nofib_arg1_0)));;
end;;

