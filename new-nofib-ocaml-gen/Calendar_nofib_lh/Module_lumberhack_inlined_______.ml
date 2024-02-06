

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______ = struct
let rec map_lh__d1 f_1_2 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_5, t_1_6) -> 
      (`LH_C((f_1_2 h_1_5), ((map_lh__d1 f_1_2) t_1_6)))
    | `LH_N -> 
      (`LH_N));;
let rec take_lh__d1 n_1 ls_3 =
  (if (n_1 > 0) then
    (match ls_3 with
      | `LH_C(h_1_1, t_1_2) -> 
        (`LH_C(h_1_1, ((take_lh__d1 (n_1 - 1)) t_1_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
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
let rec groop_lh__d1 _lh_groop_arg1_0 _lh_groop_arg2_0 =
  (match _lh_groop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (`LH_C(((take_lh__d1 _lh_groop_arg1_0) _lh_groop_arg2_0), ((groop_lh__d1 _lh_groop_arg1_0) ((drop_lh__d1 _lh_groop_arg1_0) _lh_groop_arg2_0)))));;
let rec zipWith_lh__d3 f_3_2 xs_1_6 ys_3_9 =
  (match xs_1_6 with
    | `LH_C(hx_4, tx_4) -> 
      (match ys_3_9 with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C(((f_3_2 hx_4) hy_2), (((zipWith_lh__d3 f_3_2) tx_4) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh__d2 f_2 i_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_4, t_5) -> 
      ((f_2 h_4) (((foldr_lh__d2 f_2) i_1) t_5))
    | `LH_N -> 
      i_1);;
let rec foldr1_lh__d2 _lh_foldr1_arg1_1 _lh_foldr1_arg2_1 =
  (match _lh_foldr1_arg2_1 with
    | `LH_C(_lh_foldr1_LH_C_0_1, _lh_foldr1_LH_C_1_1) -> 
      (((foldr_lh__d2 _lh_foldr1_arg1_1) _lh_foldr1_LH_C_0_1) _lh_foldr1_LH_C_1_1)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d2 xs_1_7 ys_4_0 =
  (match xs_1_7 with
    | `LH_C(h_3_7, t_3_8) -> 
      (`LH_C(h_3_7, ((mappend_lh__d1_d2 t_3_8) ys_4_0)))
    | `LH_N -> 
      ys_4_0);;
let rec spread_lh__d1 _lh_spread_arg1_0 =
  ((foldr1_lh__d2 (fun a_3 b_2 -> 
    (((zipWith_lh__d3 mappend_lh__d1_d2) a_3) b_2))) _lh_spread_arg1_0);;
let rec map_lh__d4 f_3_1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_3_6, t_3_7) -> 
      (`LH_C((f_3_1 h_3_6), ((map_lh__d4 f_3_1) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh__d1 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_1, t_1) -> 
      ((f_0 h_1) (((foldr_lh__d1 f_0) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec foldr1_lh__d1 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (((foldr_lh__d1 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_0_0) _lh_foldr1_LH_C_1_0)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d1 xs_1_0 ys_1_8 =
  (match xs_1_0 with
    | `LH_C(h_1_0, t_1_1) -> 
      (`LH_C(h_1_0, ((mappend_lh__d1_d1 t_1_1) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec stack_lh__d1 _lh_stack_arg1_0 =
  ((foldr1_lh__d1 (fun a_4 b_3 -> 
    ((mappend_lh__d1_d1 a_4) b_3))) _lh_stack_arg1_0);;
let rec block_lh__d1 _lh_block_arg1_0 _lh_funcomp_x_3 =
  ((fun _lh_funcomp_x_4 -> 
    (stack_lh__d1 ((map_lh__d4 spread_lh__d1) _lh_funcomp_x_4))) ((groop_lh__d1 _lh_block_arg1_0) _lh_funcomp_x_3));;
let rec leap_lh__d2 _lh_leap_arg1_0 =
  (if ((_lh_leap_arg1_0 mod 100) = 0) then
    ((_lh_leap_arg1_0 mod 400) = 0)
  else
    ((_lh_leap_arg1_0 mod 4) = 0));;
let rec monthLengths_lh__d2 _lh_monthLengths_arg1_0 =
  (let rec feb_0 = (if (leap_lh__d2 _lh_monthLengths_arg1_0) then
    29
  else
    28) in
    (let rec _lh_scanl_LH_C_1_0 = (let rec _lh_scanl_LH_C_1_1 = (let rec _lh_scanl_LH_C_1_2 = (let rec _lh_scanl_LH_C_1_3 = (let rec _lh_scanl_LH_C_1_4 = (let rec _lh_scanl_LH_C_1_5 = (let rec _lh_scanl_LH_C_1_6 = (let rec _lh_scanl_LH_C_1_7 = (let rec _lh_scanl_LH_C_1_8 = (let rec _lh_scanl_LH_C_1_9 = (let rec _lh_scanl_LH_C_1_1_0 = (let rec _lh_scanl_LH_C_1_1_1 = (fun _lh_scanl_arg1_0 _lh_scanl_arg2_0 -> 
      (`LH_N)) in
      (let rec _lh_scanl_LH_C_0_0 = 31 in
        (fun _lh_scanl_arg1_1 _lh_scanl_arg2_1 -> 
          (`LH_C(((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_0), (let rec _lh_matchIdent_0 = _lh_scanl_LH_C_1_1_1 in
            ((_lh_matchIdent_0 _lh_scanl_arg1_1) ((_lh_scanl_arg1_1 _lh_scanl_arg2_1) _lh_scanl_LH_C_0_0)))))))) in
      (let rec _lh_scanl_LH_C_0_1 = 30 in
        (fun _lh_scanl_arg1_2 _lh_scanl_arg2_2 -> 
          (`LH_C(((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_1), (let rec _lh_matchIdent_1 = _lh_scanl_LH_C_1_1_0 in
            ((_lh_matchIdent_1 _lh_scanl_arg1_2) ((_lh_scanl_arg1_2 _lh_scanl_arg2_2) _lh_scanl_LH_C_0_1)))))))) in
      (let rec _lh_scanl_LH_C_0_2 = 31 in
        (fun _lh_scanl_arg1_3 _lh_scanl_arg2_3 -> 
          (`LH_C(((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_2), (let rec _lh_matchIdent_2 = _lh_scanl_LH_C_1_9 in
            ((_lh_matchIdent_2 _lh_scanl_arg1_3) ((_lh_scanl_arg1_3 _lh_scanl_arg2_3) _lh_scanl_LH_C_0_2)))))))) in
      (let rec _lh_scanl_LH_C_0_3 = 30 in
        (fun _lh_scanl_arg1_4 _lh_scanl_arg2_4 -> 
          (`LH_C(((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_3), (let rec _lh_matchIdent_3 = _lh_scanl_LH_C_1_8 in
            ((_lh_matchIdent_3 _lh_scanl_arg1_4) ((_lh_scanl_arg1_4 _lh_scanl_arg2_4) _lh_scanl_LH_C_0_3)))))))) in
      (let rec _lh_scanl_LH_C_0_4 = 31 in
        (fun _lh_scanl_arg1_5 _lh_scanl_arg2_5 -> 
          (`LH_C(((_lh_scanl_arg1_5 _lh_scanl_arg2_5) _lh_scanl_LH_C_0_4), (let rec _lh_matchIdent_4 = _lh_scanl_LH_C_1_7 in
            ((_lh_matchIdent_4 _lh_scanl_arg1_5) ((_lh_scanl_arg1_5 _lh_scanl_arg2_5) _lh_scanl_LH_C_0_4)))))))) in
      (let rec _lh_scanl_LH_C_0_5 = 31 in
        (fun _lh_scanl_arg1_6 _lh_scanl_arg2_6 -> 
          (`LH_C(((_lh_scanl_arg1_6 _lh_scanl_arg2_6) _lh_scanl_LH_C_0_5), (let rec _lh_matchIdent_5 = _lh_scanl_LH_C_1_6 in
            ((_lh_matchIdent_5 _lh_scanl_arg1_6) ((_lh_scanl_arg1_6 _lh_scanl_arg2_6) _lh_scanl_LH_C_0_5)))))))) in
      (let rec _lh_scanl_LH_C_0_6 = 30 in
        (fun _lh_scanl_arg1_7 _lh_scanl_arg2_7 -> 
          (`LH_C(((_lh_scanl_arg1_7 _lh_scanl_arg2_7) _lh_scanl_LH_C_0_6), (let rec _lh_matchIdent_6 = _lh_scanl_LH_C_1_5 in
            ((_lh_matchIdent_6 _lh_scanl_arg1_7) ((_lh_scanl_arg1_7 _lh_scanl_arg2_7) _lh_scanl_LH_C_0_6)))))))) in
      (let rec _lh_scanl_LH_C_0_7 = 31 in
        (fun _lh_scanl_arg1_8 _lh_scanl_arg2_8 -> 
          (`LH_C(((_lh_scanl_arg1_8 _lh_scanl_arg2_8) _lh_scanl_LH_C_0_7), (let rec _lh_matchIdent_7 = _lh_scanl_LH_C_1_4 in
            ((_lh_matchIdent_7 _lh_scanl_arg1_8) ((_lh_scanl_arg1_8 _lh_scanl_arg2_8) _lh_scanl_LH_C_0_7)))))))) in
      (let rec _lh_scanl_LH_C_0_8 = 30 in
        (fun _lh_scanl_arg1_9 _lh_scanl_arg2_9 -> 
          (`LH_C(((_lh_scanl_arg1_9 _lh_scanl_arg2_9) _lh_scanl_LH_C_0_8), (let rec _lh_matchIdent_8 = _lh_scanl_LH_C_1_3 in
            ((_lh_matchIdent_8 _lh_scanl_arg1_9) ((_lh_scanl_arg1_9 _lh_scanl_arg2_9) _lh_scanl_LH_C_0_8)))))))) in
      (let rec _lh_scanl_LH_C_0_9 = 31 in
        (fun _lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0 -> 
          (`LH_C(((_lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0) _lh_scanl_LH_C_0_9), (let rec _lh_matchIdent_9 = _lh_scanl_LH_C_1_2 in
            ((_lh_matchIdent_9 _lh_scanl_arg1_1_0) ((_lh_scanl_arg1_1_0 _lh_scanl_arg2_1_0) _lh_scanl_LH_C_0_9)))))))) in
      (let rec _lh_scanl_LH_C_0_1_0 = feb_0 in
        (fun _lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1 -> 
          (`LH_C(((_lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1) _lh_scanl_LH_C_0_1_0), (let rec _lh_matchIdent_1_0 = _lh_scanl_LH_C_1_1 in
            ((_lh_matchIdent_1_0 _lh_scanl_arg1_1_1) ((_lh_scanl_arg1_1_1 _lh_scanl_arg2_1_1) _lh_scanl_LH_C_0_1_0)))))))) in
      (let rec _lh_scanl_LH_C_0_1_1 = 31 in
        (fun _lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2 -> 
          (`LH_C(((_lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2) _lh_scanl_LH_C_0_1_1), (let rec _lh_matchIdent_1_1 = _lh_scanl_LH_C_1_0 in
            ((_lh_matchIdent_1_1 _lh_scanl_arg1_1_2) ((_lh_scanl_arg1_1_2 _lh_scanl_arg2_1_2) _lh_scanl_LH_C_0_1_1)))))))));;
let rec take_lh__d2 n_0 ls_2 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_9, t_1_0) -> 
        (let rec _lh_zip3_LH_C_1_1_2 = ((take_lh__d2 (n_0 - 1)) t_1_0) in
          (let rec _lh_zip3_LH_C_0_1_2 = h_9 in
            (fun _lh_zip3_LH_C_0_1_3 _lh_zip3_LH_C_1_1_3 _lh_zip3_arg3_1_3 -> 
              (let rec _lh_matchIdent_2_4 = _lh_zip3_arg3_1_3 in
                ((((_lh_matchIdent_2_4 _lh_zip3_LH_C_0_1_2) _lh_zip3_LH_C_0_1_3) _lh_zip3_LH_C_1_1_2) _lh_zip3_LH_C_1_1_3)))))
      | `LH_N -> 
        (fun _lh_zip3_LH_C_0_1_4 _lh_zip3_LH_C_1_1_4 _lh_zip3_arg3_1_4 f_4 -> 
          (`LH_N)))
  else
    (fun _lh_zip3_LH_C_0_1_5 _lh_zip3_LH_C_1_1_5 _lh_zip3_arg3_1_5 f_5 -> 
      (`LH_N)));;
let rec jan1st_lh__d1 _lh_jan1st_arg1_0 =
  (let rec last_0 = (_lh_jan1st_arg1_0 - 1) in
    (((((((_lh_jan1st_arg1_0 + last_0) / 4) - last_0) / 100) + last_0) / 400) mod 7));;
let rec map_lh__d5 f_1_3 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_9, t_2_0) -> 
      (`LH_C((f_1_3 h_1_9), ((map_lh__d5 f_1_3) t_2_0)))
    | `LH_N -> 
      (`LH_N));;
let rec firstDays_lh__d1 _lh_firstDays_arg1_0 =
  ((take_lh__d2 12) ((map_lh__d5 (fun a_1 -> 
    (a_1 mod 7))) (`LH_C((jan1st_lh__d1 _lh_firstDays_arg1_0), (let rec _lh_matchIdent_3_7 = (monthLengths_lh__d2 _lh_firstDays_arg1_0) in
    ((_lh_matchIdent_3_7 (fun a_2 b_1 -> 
      (a_2 + b_1))) (jan1st_lh__d1 _lh_firstDays_arg1_0)))))));;
let rec monthNames_lh__d1 =
  (let rec _lh_zip3_LH_C_1_0 = (let rec _lh_zip3_LH_C_1_1 = (let rec _lh_zip3_LH_C_1_2 = (let rec _lh_zip3_LH_C_1_3 = (let rec _lh_zip3_LH_C_1_4 = (let rec _lh_zip3_LH_C_1_5 = (let rec _lh_zip3_LH_C_1_6 = (let rec _lh_zip3_LH_C_1_7 = (let rec _lh_zip3_LH_C_1_8 = (let rec _lh_zip3_LH_C_1_9 = (let rec _lh_zip3_LH_C_1_1_0 = (let rec _lh_zip3_LH_C_1_1_1 = (fun _lh_zip3_arg2_0 _lh_zip3_arg3_0 f_1 -> 
    (`LH_N)) in
    (let rec _lh_zip3_LH_C_0_0 = (`LH_C('D', (`LH_C('e', (`LH_C('c', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1 _lh_zip3_arg3_1 -> 
        (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_1 in
          (((_lh_matchIdent_1_2 _lh_zip3_LH_C_0_0) _lh_zip3_LH_C_1_1_1) _lh_zip3_arg3_1))))) in
    (let rec _lh_zip3_LH_C_0_1 = (`LH_C('N', (`LH_C('o', (`LH_C('v', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_2 _lh_zip3_arg3_2 -> 
        (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_2 in
          (((_lh_matchIdent_1_3 _lh_zip3_LH_C_0_1) _lh_zip3_LH_C_1_1_0) _lh_zip3_arg3_2))))) in
    (let rec _lh_zip3_LH_C_0_2 = (`LH_C('O', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_3 _lh_zip3_arg3_3 -> 
        (let rec _lh_matchIdent_1_4 = _lh_zip3_arg2_3 in
          (((_lh_matchIdent_1_4 _lh_zip3_LH_C_0_2) _lh_zip3_LH_C_1_9) _lh_zip3_arg3_3))))) in
    (let rec _lh_zip3_LH_C_0_3 = (`LH_C('S', (`LH_C('e', (`LH_C('p', (`LH_C('t', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))))))))) in
      (fun _lh_zip3_arg2_4 _lh_zip3_arg3_4 -> 
        (let rec _lh_matchIdent_1_5 = _lh_zip3_arg2_4 in
          (((_lh_matchIdent_1_5 _lh_zip3_LH_C_0_3) _lh_zip3_LH_C_1_8) _lh_zip3_arg3_4))))) in
    (let rec _lh_zip3_LH_C_0_4 = (`LH_C('A', (`LH_C('u', (`LH_C('g', (`LH_C('u', (`LH_C('s', (`LH_C('t', (`LH_N))))))))))))) in
      (fun _lh_zip3_arg2_5 _lh_zip3_arg3_5 -> 
        (let rec _lh_matchIdent_1_6 = _lh_zip3_arg2_5 in
          (((_lh_matchIdent_1_6 _lh_zip3_LH_C_0_4) _lh_zip3_LH_C_1_7) _lh_zip3_arg3_5))))) in
    (let rec _lh_zip3_LH_C_0_5 = (`LH_C('J', (`LH_C('u', (`LH_C('l', (`LH_C('y', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_6 _lh_zip3_arg3_6 -> 
        (let rec _lh_matchIdent_1_7 = _lh_zip3_arg2_6 in
          (((_lh_matchIdent_1_7 _lh_zip3_LH_C_0_5) _lh_zip3_LH_C_1_6) _lh_zip3_arg3_6))))) in
    (let rec _lh_zip3_LH_C_0_6 = (`LH_C('J', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_N))))))))) in
      (fun _lh_zip3_arg2_7 _lh_zip3_arg3_7 -> 
        (let rec _lh_matchIdent_1_8 = _lh_zip3_arg2_7 in
          (((_lh_matchIdent_1_8 _lh_zip3_LH_C_0_6) _lh_zip3_LH_C_1_5) _lh_zip3_arg3_7))))) in
    (let rec _lh_zip3_LH_C_0_7 = (`LH_C('M', (`LH_C('a', (`LH_C('y', (`LH_N))))))) in
      (fun _lh_zip3_arg2_8 _lh_zip3_arg3_8 -> 
        (let rec _lh_matchIdent_1_9 = _lh_zip3_arg2_8 in
          (((_lh_matchIdent_1_9 _lh_zip3_LH_C_0_7) _lh_zip3_LH_C_1_4) _lh_zip3_arg3_8))))) in
    (let rec _lh_zip3_LH_C_0_8 = (`LH_C('A', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('l', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_9 _lh_zip3_arg3_9 -> 
        (let rec _lh_matchIdent_2_0 = _lh_zip3_arg2_9 in
          (((_lh_matchIdent_2_0 _lh_zip3_LH_C_0_8) _lh_zip3_LH_C_1_3) _lh_zip3_arg3_9))))) in
    (let rec _lh_zip3_LH_C_0_9 = (`LH_C('M', (`LH_C('a', (`LH_C('r', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun _lh_zip3_arg2_1_0 _lh_zip3_arg3_1_0 -> 
        (let rec _lh_matchIdent_2_1 = _lh_zip3_arg2_1_0 in
          (((_lh_matchIdent_2_1 _lh_zip3_LH_C_0_9) _lh_zip3_LH_C_1_2) _lh_zip3_arg3_1_0))))) in
    (let rec _lh_zip3_LH_C_0_1_0 = (`LH_C('F', (`LH_C('e', (`LH_C('b', (`LH_C('r', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))))) in
      (fun _lh_zip3_arg2_1_1 _lh_zip3_arg3_1_1 -> 
        (let rec _lh_matchIdent_2_2 = _lh_zip3_arg2_1_1 in
          (((_lh_matchIdent_2_2 _lh_zip3_LH_C_0_1_0) _lh_zip3_LH_C_1_1) _lh_zip3_arg3_1_1))))) in
    (let rec _lh_zip3_LH_C_0_1_1 = (`LH_C('J', (`LH_C('a', (`LH_C('n', (`LH_C('u', (`LH_C('a', (`LH_C('r', (`LH_C('y', (`LH_N))))))))))))))) in
      (fun _lh_zip3_arg2_1_2 _lh_zip3_arg3_1_2 -> 
        (let rec _lh_matchIdent_2_3 = _lh_zip3_arg2_1_2 in
          (((_lh_matchIdent_2_3 _lh_zip3_LH_C_0_1_1) _lh_zip3_LH_C_1_0) _lh_zip3_arg3_1_2)))));;
let rec copy_lh__d1_d1 _lh_copy_arg1_8 _lh_copy_arg2_8 =
  (if (_lh_copy_arg1_8 > 0) then
    (`LH_C(_lh_copy_arg2_8, ((copy_lh__d1_d1 (_lh_copy_arg1_8 - 1)) _lh_copy_arg2_8)))
  else
    (`LH_N));;
let rec space_lh__d4 _lh_space_arg1_0 =
  ((copy_lh__d1_d1 _lh_space_arg1_0) ' ');;
let rec mappend_lh__d1_d4 xs_8 ys_1_3 =
  (match xs_8 with
    | `LH_C(h_6, t_7) -> 
      (`LH_C(h_6, ((mappend_lh__d1_d4 t_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_lh__d1_d5 xs_1_4 ys_2_9 =
  (match xs_1_4 with
    | `LH_C(h_1_7, t_1_8) -> 
      (`LH_C(h_1_7, ((mappend_lh__d1_d5 t_1_8) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec length_lh__d3 ls_9 =
  (match ls_9 with
    | `LH_C(h_3_4, t_3_5) -> 
      (1 + (length_lh__d3 t_3_5))
    | `LH_N -> 
      0);;
let rec space_lh__d3 _lh_space_arg1_2 =
  ((copy_lh__d1_d1 _lh_space_arg1_2) ' ');;
let rec cjustify_lh__d2 _lh_cjustify_arg1_0 _lh_cjustify_arg2_0 =
  (let rec m_0 = (_lh_cjustify_arg1_0 - (length_lh__d3 _lh_cjustify_arg2_0)) in
    (let rec halfm_0 = (m_0 / 2) in
      ((mappend_lh__d1_d4 ((mappend_lh__d1_d5 (space_lh__d4 halfm_0)) _lh_cjustify_arg2_0)) (space_lh__d3 (m_0 - halfm_0)))));;
let rec title_lh__d1 _lh_title_arg1_0 =
  (let rec t_1_9 = (fun ys_3_0 -> 
    ys_3_0) in
    (let rec h_1_8 = ((cjustify_lh__d2 21) _lh_title_arg1_0) in
      (fun ys_3_1 -> 
        (`LH_C(h_1_8, (t_1_9 ys_3_1))))));;
let rec leap_lh__d1 _lh_leap_arg1_1 =
  (if ((_lh_leap_arg1_1 mod 100) = 0) then
    ((_lh_leap_arg1_1 mod 400) = 0)
  else
    ((_lh_leap_arg1_1 mod 4) = 0));;
let rec block_lh__d2 _lh_block_arg1_1 _lh_funcomp_x_5 =
  ((fun _lh_funcomp_x_6 -> 
    (stack_lh__d1 ((map_lh__d5 spread_lh__d1) _lh_funcomp_x_6))) ((groop_lh__d1 _lh_block_arg1_1) _lh_funcomp_x_5));;
let rec rjustify_lh__d1 _lh_rjustify_arg1_0 _lh_rjustify_arg2_0 =
  ((mappend_lh__d1_d5 (space_lh__d4 (_lh_rjustify_arg1_0 - (length_lh__d3 _lh_rjustify_arg2_0)))) _lh_rjustify_arg2_0);;
let rec date_lh__d1 _lh_date_arg1_0 _lh_date_arg2_0 =
  (if ((_lh_date_arg2_0 < 1) || (_lh_date_arg1_0 < _lh_date_arg2_0)) then
    (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_N)))
  else
    (`LH_C(((rjustify_lh__d1 3) (string_of_int _lh_date_arg2_0)), (`LH_N))));;
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d1 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec dates_lh__d1 _lh_dates_arg1_0 _lh_dates_arg2_0 =
  ((map_lh__d5 (fun d_0 -> 
    ((date_lh__d1 _lh_dates_arg2_0) d_0))) ((enumFromTo_lh__d1 (1 - _lh_dates_arg1_0)) (42 - _lh_dates_arg1_0)));;
let rec entries_lh__d1 _lh_entries_arg1_0 _lh_entries_arg2_0 =
  ((block_lh__d2 7) ((dates_lh__d1 _lh_entries_arg1_0) _lh_entries_arg2_0));;
let rec daynames_lh__d1 =
  (let rec t_6 = (fun ys_1_1 -> 
    ys_1_1) in
    (let rec h_5 = (`LH_C(' ', (`LH_C('S', (`LH_C('u', (`LH_C(' ', (`LH_C('M', (`LH_C('o', (`LH_C(' ', (`LH_C('T', (`LH_C('u', (`LH_C(' ', (`LH_C('W', (`LH_C('e', (`LH_C(' ', (`LH_C('T', (`LH_C('h', (`LH_C(' ', (`LH_C('F', (`LH_C('r', (`LH_C(' ', (`LH_C('S', (`LH_C('a', (`LH_N))))))))))))))))))))))))))))))))))))))))))) in
      (fun ys_1_2 -> 
        (`LH_C(h_5, (t_6 ys_1_2))))));;
let rec table_lh__d1 _lh_table_arg1_0 _lh_table_arg2_0 =
  (daynames_lh__d1 ((entries_lh__d1 _lh_table_arg1_0) _lh_table_arg2_0));;
let rec monthLengths_lh__d1 _lh_monthLengths_arg1_1 =
  (let rec feb_1 = (if (leap_lh__d1 _lh_monthLengths_arg1_1) then
    29
  else
    28) in
    (let rec _lh_zip3_LH_C_1_1_6 = (let rec _lh_zip3_LH_C_1_1_7 = (let rec _lh_zip3_LH_C_1_1_8 = (let rec _lh_zip3_LH_C_1_1_9 = (let rec _lh_zip3_LH_C_1_2_0 = (let rec _lh_zip3_LH_C_1_2_1 = (let rec _lh_zip3_LH_C_1_2_2 = (let rec _lh_zip3_LH_C_1_2_3 = (let rec _lh_zip3_LH_C_1_2_4 = (let rec _lh_zip3_LH_C_1_2_5 = (let rec _lh_zip3_LH_C_1_2_6 = (let rec _lh_zip3_LH_C_1_2_7 = (fun _lh_zip3_LH_C_0_1_6 _lh_zip3_LH_C_0_1_7 _lh_zip3_LH_C_1_2_8 _lh_zip3_LH_C_1_2_9 f_1_5 -> 
      (`LH_N)) in
      (let rec _lh_zip3_LH_C_0_1_8 = 31 in
        (fun _lh_zip3_LH_C_0_1_9 _lh_zip3_LH_C_0_2_0 _lh_zip3_LH_C_1_3_0 _lh_zip3_LH_C_1_3_1 -> 
          (let rec t_2_1 = (let rec _lh_matchIdent_2_5 = _lh_zip3_LH_C_1_3_1 in
            ((_lh_matchIdent_2_5 _lh_zip3_LH_C_1_3_0) _lh_zip3_LH_C_1_2_7)) in
            (let rec h_2_0 = (let rec _lh_pic_LH_P3_2_0 = _lh_zip3_LH_C_0_1_8 in
              (let rec _lh_pic_LH_P3_1_0 = _lh_zip3_LH_C_0_1_9 in
                (let rec _lh_pic_LH_P3_0_0 = _lh_zip3_LH_C_0_2_0 in
                  (fun _lh_dummy_8 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_0) ((table_lh__d1 _lh_pic_LH_P3_1_0) _lh_pic_LH_P3_2_0)))))) in
              (fun f_1_6 -> 
                (`LH_C((f_1_6 h_2_0), (t_2_1 f_1_6))))))))) in
      (let rec _lh_zip3_LH_C_0_2_1 = 30 in
        (fun _lh_zip3_LH_C_0_2_2 _lh_zip3_LH_C_0_2_3 _lh_zip3_LH_C_1_3_2 _lh_zip3_LH_C_1_3_3 -> 
          (let rec t_2_2 = (let rec _lh_matchIdent_2_6 = _lh_zip3_LH_C_1_3_3 in
            ((_lh_matchIdent_2_6 _lh_zip3_LH_C_1_3_2) _lh_zip3_LH_C_1_2_6)) in
            (let rec h_2_1 = (let rec _lh_pic_LH_P3_2_1 = _lh_zip3_LH_C_0_2_1 in
              (let rec _lh_pic_LH_P3_1_1 = _lh_zip3_LH_C_0_2_2 in
                (let rec _lh_pic_LH_P3_0_1 = _lh_zip3_LH_C_0_2_3 in
                  (fun _lh_dummy_9 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_1) ((table_lh__d1 _lh_pic_LH_P3_1_1) _lh_pic_LH_P3_2_1)))))) in
              (fun f_1_7 -> 
                (`LH_C((f_1_7 h_2_1), (t_2_2 f_1_7))))))))) in
      (let rec _lh_zip3_LH_C_0_2_4 = 31 in
        (fun _lh_zip3_LH_C_0_2_5 _lh_zip3_LH_C_0_2_6 _lh_zip3_LH_C_1_3_4 _lh_zip3_LH_C_1_3_5 -> 
          (let rec t_2_3 = (let rec _lh_matchIdent_2_7 = _lh_zip3_LH_C_1_3_5 in
            ((_lh_matchIdent_2_7 _lh_zip3_LH_C_1_3_4) _lh_zip3_LH_C_1_2_5)) in
            (let rec h_2_2 = (let rec _lh_pic_LH_P3_2_2 = _lh_zip3_LH_C_0_2_4 in
              (let rec _lh_pic_LH_P3_1_2 = _lh_zip3_LH_C_0_2_5 in
                (let rec _lh_pic_LH_P3_0_2 = _lh_zip3_LH_C_0_2_6 in
                  (fun _lh_dummy_1_0 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_2) ((table_lh__d1 _lh_pic_LH_P3_1_2) _lh_pic_LH_P3_2_2)))))) in
              (fun f_1_8 -> 
                (`LH_C((f_1_8 h_2_2), (t_2_3 f_1_8))))))))) in
      (let rec _lh_zip3_LH_C_0_2_7 = 30 in
        (fun _lh_zip3_LH_C_0_2_8 _lh_zip3_LH_C_0_2_9 _lh_zip3_LH_C_1_3_6 _lh_zip3_LH_C_1_3_7 -> 
          (let rec t_2_4 = (let rec _lh_matchIdent_2_8 = _lh_zip3_LH_C_1_3_7 in
            ((_lh_matchIdent_2_8 _lh_zip3_LH_C_1_3_6) _lh_zip3_LH_C_1_2_4)) in
            (let rec h_2_3 = (let rec _lh_pic_LH_P3_2_3 = _lh_zip3_LH_C_0_2_7 in
              (let rec _lh_pic_LH_P3_1_3 = _lh_zip3_LH_C_0_2_8 in
                (let rec _lh_pic_LH_P3_0_3 = _lh_zip3_LH_C_0_2_9 in
                  (fun _lh_dummy_1_1 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_3) ((table_lh__d1 _lh_pic_LH_P3_1_3) _lh_pic_LH_P3_2_3)))))) in
              (fun f_1_9 -> 
                (`LH_C((f_1_9 h_2_3), (t_2_4 f_1_9))))))))) in
      (let rec _lh_zip3_LH_C_0_3_0 = 31 in
        (fun _lh_zip3_LH_C_0_3_1 _lh_zip3_LH_C_0_3_2 _lh_zip3_LH_C_1_3_8 _lh_zip3_LH_C_1_3_9 -> 
          (let rec t_2_5 = (let rec _lh_matchIdent_2_9 = _lh_zip3_LH_C_1_3_9 in
            ((_lh_matchIdent_2_9 _lh_zip3_LH_C_1_3_8) _lh_zip3_LH_C_1_2_3)) in
            (let rec h_2_4 = (let rec _lh_pic_LH_P3_2_4 = _lh_zip3_LH_C_0_3_0 in
              (let rec _lh_pic_LH_P3_1_4 = _lh_zip3_LH_C_0_3_1 in
                (let rec _lh_pic_LH_P3_0_4 = _lh_zip3_LH_C_0_3_2 in
                  (fun _lh_dummy_1_2 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_4) ((table_lh__d1 _lh_pic_LH_P3_1_4) _lh_pic_LH_P3_2_4)))))) in
              (fun f_2_0 -> 
                (`LH_C((f_2_0 h_2_4), (t_2_5 f_2_0))))))))) in
      (let rec _lh_zip3_LH_C_0_3_3 = 31 in
        (fun _lh_zip3_LH_C_0_3_4 _lh_zip3_LH_C_0_3_5 _lh_zip3_LH_C_1_4_0 _lh_zip3_LH_C_1_4_1 -> 
          (let rec t_2_6 = (let rec _lh_matchIdent_3_0 = _lh_zip3_LH_C_1_4_1 in
            ((_lh_matchIdent_3_0 _lh_zip3_LH_C_1_4_0) _lh_zip3_LH_C_1_2_2)) in
            (let rec h_2_5 = (let rec _lh_pic_LH_P3_2_5 = _lh_zip3_LH_C_0_3_3 in
              (let rec _lh_pic_LH_P3_1_5 = _lh_zip3_LH_C_0_3_4 in
                (let rec _lh_pic_LH_P3_0_5 = _lh_zip3_LH_C_0_3_5 in
                  (fun _lh_dummy_1_3 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_5) ((table_lh__d1 _lh_pic_LH_P3_1_5) _lh_pic_LH_P3_2_5)))))) in
              (fun f_2_1 -> 
                (`LH_C((f_2_1 h_2_5), (t_2_6 f_2_1))))))))) in
      (let rec _lh_zip3_LH_C_0_3_6 = 30 in
        (fun _lh_zip3_LH_C_0_3_7 _lh_zip3_LH_C_0_3_8 _lh_zip3_LH_C_1_4_2 _lh_zip3_LH_C_1_4_3 -> 
          (let rec t_2_7 = (let rec _lh_matchIdent_3_1 = _lh_zip3_LH_C_1_4_3 in
            ((_lh_matchIdent_3_1 _lh_zip3_LH_C_1_4_2) _lh_zip3_LH_C_1_2_1)) in
            (let rec h_2_6 = (let rec _lh_pic_LH_P3_2_6 = _lh_zip3_LH_C_0_3_6 in
              (let rec _lh_pic_LH_P3_1_6 = _lh_zip3_LH_C_0_3_7 in
                (let rec _lh_pic_LH_P3_0_6 = _lh_zip3_LH_C_0_3_8 in
                  (fun _lh_dummy_1_4 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_6) ((table_lh__d1 _lh_pic_LH_P3_1_6) _lh_pic_LH_P3_2_6)))))) in
              (fun f_2_2 -> 
                (`LH_C((f_2_2 h_2_6), (t_2_7 f_2_2))))))))) in
      (let rec _lh_zip3_LH_C_0_3_9 = 31 in
        (fun _lh_zip3_LH_C_0_4_0 _lh_zip3_LH_C_0_4_1 _lh_zip3_LH_C_1_4_4 _lh_zip3_LH_C_1_4_5 -> 
          (let rec t_2_8 = (let rec _lh_matchIdent_3_2 = _lh_zip3_LH_C_1_4_5 in
            ((_lh_matchIdent_3_2 _lh_zip3_LH_C_1_4_4) _lh_zip3_LH_C_1_2_0)) in
            (let rec h_2_7 = (let rec _lh_pic_LH_P3_2_7 = _lh_zip3_LH_C_0_3_9 in
              (let rec _lh_pic_LH_P3_1_7 = _lh_zip3_LH_C_0_4_0 in
                (let rec _lh_pic_LH_P3_0_7 = _lh_zip3_LH_C_0_4_1 in
                  (fun _lh_dummy_1_5 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_7) ((table_lh__d1 _lh_pic_LH_P3_1_7) _lh_pic_LH_P3_2_7)))))) in
              (fun f_2_3 -> 
                (`LH_C((f_2_3 h_2_7), (t_2_8 f_2_3))))))))) in
      (let rec _lh_zip3_LH_C_0_4_2 = 30 in
        (fun _lh_zip3_LH_C_0_4_3 _lh_zip3_LH_C_0_4_4 _lh_zip3_LH_C_1_4_6 _lh_zip3_LH_C_1_4_7 -> 
          (let rec t_2_9 = (let rec _lh_matchIdent_3_3 = _lh_zip3_LH_C_1_4_7 in
            ((_lh_matchIdent_3_3 _lh_zip3_LH_C_1_4_6) _lh_zip3_LH_C_1_1_9)) in
            (let rec h_2_8 = (let rec _lh_pic_LH_P3_2_8 = _lh_zip3_LH_C_0_4_2 in
              (let rec _lh_pic_LH_P3_1_8 = _lh_zip3_LH_C_0_4_3 in
                (let rec _lh_pic_LH_P3_0_8 = _lh_zip3_LH_C_0_4_4 in
                  (fun _lh_dummy_1_6 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_8) ((table_lh__d1 _lh_pic_LH_P3_1_8) _lh_pic_LH_P3_2_8)))))) in
              (fun f_2_4 -> 
                (`LH_C((f_2_4 h_2_8), (t_2_9 f_2_4))))))))) in
      (let rec _lh_zip3_LH_C_0_4_5 = 31 in
        (fun _lh_zip3_LH_C_0_4_6 _lh_zip3_LH_C_0_4_7 _lh_zip3_LH_C_1_4_8 _lh_zip3_LH_C_1_4_9 -> 
          (let rec t_3_0 = (let rec _lh_matchIdent_3_4 = _lh_zip3_LH_C_1_4_9 in
            ((_lh_matchIdent_3_4 _lh_zip3_LH_C_1_4_8) _lh_zip3_LH_C_1_1_8)) in
            (let rec h_2_9 = (let rec _lh_pic_LH_P3_2_9 = _lh_zip3_LH_C_0_4_5 in
              (let rec _lh_pic_LH_P3_1_9 = _lh_zip3_LH_C_0_4_6 in
                (let rec _lh_pic_LH_P3_0_9 = _lh_zip3_LH_C_0_4_7 in
                  (fun _lh_dummy_1_7 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_9) ((table_lh__d1 _lh_pic_LH_P3_1_9) _lh_pic_LH_P3_2_9)))))) in
              (fun f_2_5 -> 
                (`LH_C((f_2_5 h_2_9), (t_3_0 f_2_5))))))))) in
      (let rec _lh_zip3_LH_C_0_4_8 = feb_1 in
        (fun _lh_zip3_LH_C_0_4_9 _lh_zip3_LH_C_0_5_0 _lh_zip3_LH_C_1_5_0 _lh_zip3_LH_C_1_5_1 -> 
          (let rec t_3_1 = (let rec _lh_matchIdent_3_5 = _lh_zip3_LH_C_1_5_1 in
            ((_lh_matchIdent_3_5 _lh_zip3_LH_C_1_5_0) _lh_zip3_LH_C_1_1_7)) in
            (let rec h_3_0 = (let rec _lh_pic_LH_P3_2_1_0 = _lh_zip3_LH_C_0_4_8 in
              (let rec _lh_pic_LH_P3_1_1_0 = _lh_zip3_LH_C_0_4_9 in
                (let rec _lh_pic_LH_P3_0_1_0 = _lh_zip3_LH_C_0_5_0 in
                  (fun _lh_dummy_1_8 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_1_0) ((table_lh__d1 _lh_pic_LH_P3_1_1_0) _lh_pic_LH_P3_2_1_0)))))) in
              (fun f_2_6 -> 
                (`LH_C((f_2_6 h_3_0), (t_3_1 f_2_6))))))))) in
      (let rec _lh_zip3_LH_C_0_5_1 = 31 in
        (fun _lh_zip3_LH_C_0_5_2 _lh_zip3_LH_C_0_5_3 _lh_zip3_LH_C_1_5_2 _lh_zip3_LH_C_1_5_3 -> 
          (let rec t_3_2 = (let rec _lh_matchIdent_3_6 = _lh_zip3_LH_C_1_5_3 in
            ((_lh_matchIdent_3_6 _lh_zip3_LH_C_1_5_2) _lh_zip3_LH_C_1_1_6)) in
            (let rec h_3_1 = (let rec _lh_pic_LH_P3_2_1_1 = _lh_zip3_LH_C_0_5_1 in
              (let rec _lh_pic_LH_P3_1_1_1 = _lh_zip3_LH_C_0_5_2 in
                (let rec _lh_pic_LH_P3_0_1_1 = _lh_zip3_LH_C_0_5_3 in
                  (fun _lh_dummy_1_9 -> 
                    ((title_lh__d1 _lh_pic_LH_P3_0_1_1) ((table_lh__d1 _lh_pic_LH_P3_1_1_1) _lh_pic_LH_P3_2_1_1)))))) in
              (fun f_2_7 -> 
                (`LH_C((f_2_7 h_3_1), (t_3_2 f_2_7))))))))));;
let rec months_lh__d1 _lh_months_arg1_0 =
  (let rec _lh_matchIdent_3_8 = monthNames_lh__d1 in
    ((_lh_matchIdent_3_8 (firstDays_lh__d1 _lh_months_arg1_0)) (monthLengths_lh__d1 _lh_months_arg1_0)));;
let rec mappend_lh__d7 xs_4 ys_7 =
  (xs_4 ys_7);;
let rec copy_lh__d7 _lh_copy_arg1_9 _lh_copy_arg2_9 =
  (if (_lh_copy_arg1_9 > 0) then
    (`LH_C(_lh_copy_arg2_9, ((copy_lh__d7 (_lh_copy_arg1_9 - 1)) _lh_copy_arg2_9)))
  else
    (`LH_N));;
let rec copy_lh__d8 _lh_copy_arg1_1_0 _lh_copy_arg2_1_0 =
  (if (_lh_copy_arg1_1_0 > 0) then
    (`LH_C(_lh_copy_arg2_1_0, ((copy_lh__d8 (_lh_copy_arg1_1_0 - 1)) _lh_copy_arg2_1_0)))
  else
    (`LH_N));;
let rec end_lh__d1 _lh_end_arg1_0 =
  ((let rec _lh_emptyPic_LH_P2_1_2 = 25 in
    (let rec _lh_emptyPic_LH_P2_0_2 = 1 in
      (fun _lh_dummy_3 -> 
        ((copy_lh__d8 _lh_emptyPic_LH_P2_0_2) ((copy_lh__d7 _lh_emptyPic_LH_P2_1_2) ' '))))) 99);;
let rec mappend_lh__d9 xs_1_3 ys_2_8 =
  (match xs_1_3 with
    | `LH_C(h_1_6, t_1_7) -> 
      (`LH_C(h_1_6, ((mappend_lh__d9 t_1_7) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec copy_lh__d9 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec t_0 = ((copy_lh__d9 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_0 = _lh_copy_arg2_0 in
        (fun ys_1 -> 
          (`LH_C(h_0, (t_0 ys_1))))))
  else
    (fun ys_2 -> 
      ys_2));;
let rec copy_lh__d1_d0 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (let rec tx_0 = ((copy_lh__d1_d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
      (let rec hx_0 = _lh_copy_arg2_3 in
        (fun f_7 ys_2_1 -> 
          (match ys_2_1 with
            | `LH_C(hy_0, ty_0) -> 
              (let rec tx_1 = ((tx_0 f_7) ty_0) in
                (let rec hx_1 = ((f_7 hx_0) hy_0) in
                  (fun f_8 ys_2_2 -> 
                    (((ys_2_2 f_8) hx_1) tx_1))))
            | `LH_N -> 
              (fun f_9 ys_2_3 ys_2_4 -> 
                ys_2_4)))))
  else
    (fun f_1_0 ys_2_5 f_1_1 ys_2_6 ys_2_7 -> 
      ys_2_7));;
let rec side_lh__d2 _lh_side_arg1_1 =
  ((let rec _lh_emptyPic_LH_P2_1_3 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_3 = 8 in
      (fun _lh_dummy_7 -> 
        ((copy_lh__d1_d0 _lh_emptyPic_LH_P2_0_3) ((copy_lh__d9 _lh_emptyPic_LH_P2_1_3) ' '))))) 99);;
let rec copy_lh__d6 _lh_copy_arg1_6 _lh_copy_arg2_6 =
  (if (_lh_copy_arg1_6 > 0) then
    (let rec ty_1 = ((copy_lh__d6 (_lh_copy_arg1_6 - 1)) _lh_copy_arg2_6) in
      (let rec hy_1 = _lh_copy_arg2_6 in
        (fun f_2_9 hx_2 tx_2 -> 
          (let rec t_3_4 = ((tx_2 f_2_9) ty_1) in
            (let rec h_3_3 = ((f_2_9 hx_2) hy_1) in
              (fun ys_3_5 -> 
                (`LH_C(h_3_3, (t_3_4 ys_3_5)))))))))
  else
    (fun f_3_0 hx_3 tx_3 ys_3_6 -> 
      ys_3_6));;
let rec copy_lh__d5 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy_lh__d5 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec side_lh__d1 _lh_side_arg1_0 =
  ((let rec _lh_emptyPic_LH_P2_1_0 = 2 in
    (let rec _lh_emptyPic_LH_P2_0_0 = 8 in
      (fun _lh_dummy_0 -> 
        ((copy_lh__d6 _lh_emptyPic_LH_P2_0_0) ((copy_lh__d5 _lh_emptyPic_LH_P2_1_0) ' '))))) 99);;
let rec pad_lh__d1 _lh_pad_arg1_0 =
  ((((((side_lh__d2 0) mappend_lh__d7) _lh_pad_arg1_0) mappend_lh__d9) (side_lh__d1 0)) (end_lh__d1 0));;
let rec body_lh__d1 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((block_lh__d1 3) (_lh_funcomp_x_1 (fun _lh_funcomp_x_2 -> 
      (pad_lh__d1 (_lh_funcomp_x_2 99)))))) (months_lh__d1 _lh_funcomp_x_0));;
let rec copy_lh__d1 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_lh__d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy_lh__d2 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (let rec t_3_3 = ((copy_lh__d2 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5) in
      (let rec h_3_2 = _lh_copy_arg2_5 in
        (fun ys_3_3 -> 
          (`LH_C(h_3_2, (t_3_3 ys_3_3))))))
  else
    (fun ys_3_4 -> 
      ys_3_4));;
let rec copy_lh__d4 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_lh__d4 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec space_lh__d2 _lh_space_arg1_1 =
  ((copy_lh__d4 _lh_space_arg1_1) ' ');;
let rec mappend_lh__d4 xs_1_1 ys_1_9 =
  (match xs_1_1 with
    | `LH_C(h_1_2, t_1_3) -> 
      (`LH_C(h_1_2, ((mappend_lh__d4 t_1_3) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec copy_lh__d3 _lh_copy_arg1_7 _lh_copy_arg2_7 =
  (if (_lh_copy_arg1_7 > 0) then
    (let rec t_3_6 = ((copy_lh__d3 (_lh_copy_arg1_7 - 1)) _lh_copy_arg2_7) in
      (let rec h_3_5 = _lh_copy_arg2_7 in
        (fun ys_3_7 -> 
          (`LH_C(h_3_5, (t_3_6 ys_3_7))))))
  else
    (fun ys_3_8 -> 
      ys_3_8));;
let rec space_lh__d1 _lh_space_arg1_3 =
  ((copy_lh__d3 _lh_space_arg1_3) ' ');;
let rec length_lh__d2 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_9, t_4_1) -> 
      (1 + (length_lh__d2 t_4_1))
    | `LH_N -> 
      0);;
let rec cjustify_lh__d1 _lh_cjustify_arg1_1 _lh_cjustify_arg2_1 =
  (let rec m_1 = (_lh_cjustify_arg1_1 - (length_lh__d2 _lh_cjustify_arg2_1)) in
    (let rec halfm_1 = (m_1 / 2) in
      ((mappend_lh__d4 ((space_lh__d1 halfm_1) _lh_cjustify_arg2_1)) (space_lh__d2 (m_1 - halfm_1)))));;
let rec banner_lh__d1 _lh_banner_arg1_0 =
  ((let rec t_8 = (fun ys_1_4 -> 
    ys_1_4) in
    (let rec h_7 = ((cjustify_lh__d1 75) (string_of_int _lh_banner_arg1_0)) in
      (fun ys_1_5 -> 
        (let rec t_9 = (t_8 ys_1_5) in
          (let rec h_8 = h_7 in
            (fun ys_1_6 -> 
              (`LH_C(h_8, (t_9 ys_1_6))))))))) ((let rec _lh_emptyPic_LH_P2_1_1 = 75 in
    (let rec _lh_emptyPic_LH_P2_0_1 = 1 in
      (fun _lh_dummy_2 -> 
        ((copy_lh__d2 _lh_emptyPic_LH_P2_0_1) ((copy_lh__d1 _lh_emptyPic_LH_P2_1_1) ' '))))) 99));;
let rec mappend_lh__d3 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((mappend_lh__d3 t_2) ys_3) in
        (let rec h_3 = h_2 in
          (fun ys_4 -> 
            (let rec t_4 = (t_3 ys_4) in
              (fun _lh_dummy_1 -> 
                (1 + (t_4 99)))))))
    | `LH_N -> 
      ys_3);;
let rec map_lh__d2 f_6 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_3, t_1_4) -> 
      (let rec t_1_5 = ((map_lh__d2 f_6) t_1_4) in
        (let rec h_1_4 = (f_6 h_1_3) in
          (fun _lh_dummy_4 -> 
            (h_1_4 (t_1_5 99)))))
    | `LH_N -> 
      (fun _lh_dummy_5 _lh_dummy_6 -> 
        0));;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (((map_lh__d2 (fun l_0 -> 
    ((mappend_lh__d3 l_0) (let rec t_3_9 = (fun ys_4_1 -> 
      ys_4_1) in
      (let rec h_3_8 = 'n' in
        (fun ys_4_2 -> 
          (let rec t_4_0 = (t_3_9 ys_4_2) in
            (fun _lh_dummy_2_0 -> 
              (1 + (t_4_0 99)))))))))) _lh_unlines_arg1_0) 99);;
let rec cal_lh__d1 _lh_cal_arg1_0 =
  (unlines_lh__d1 ((banner_lh__d1 _lh_cal_arg1_0) (body_lh__d1 _lh_cal_arg1_0)));;
let rec testCalendar_nofib_lh__d1 _lh_testCalendar_nofib_arg1_0 =
  ((map_lh__d1 (fun n_2 -> 
    ((cal_lh__d1 n_2) 99))) ((enumFromTo_lh__d1 2008) (2008 + _lh_testCalendar_nofib_arg1_0)));;
end;;

