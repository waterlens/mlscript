

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec copy__d0 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (match _lh_copy_arg1_4 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_4, ((copy__d0 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4))));;
let rec copy__d1 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (match _lh_copy_arg1_2 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_2, ((copy__d1 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2))));;
let rec copy__d2 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy__d2 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec copy__d3 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (match _lh_copy_arg1_3 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_3, ((copy__d3 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3))));;
let rec elt__d0 _lh_elt_arg1_1 _lh_elt_arg2_1 _lh_elt_arg3_1 =
  (match _lh_elt_arg1_1 with
    | `LH_P3(_lh_elt_LH_P3_0_3, _lh_elt_LH_P3_1_3, _lh_elt_LH_P3_2_3) -> 
      (match _lh_elt_arg2_1 with
        | `LH_P3(_lh_elt_LH_P3_0_4, _lh_elt_LH_P3_1_4, _lh_elt_LH_P3_2_4) -> 
          (match _lh_elt_arg3_1 with
            | `LH_P3(_lh_elt_LH_P3_0_5, _lh_elt_LH_P3_1_5, _lh_elt_LH_P3_2_5) -> 
              (let rec tot_1 = (((((((_lh_elt_LH_P3_0_3 + _lh_elt_LH_P3_1_3) + _lh_elt_LH_P3_2_3) + _lh_elt_LH_P3_0_4) + _lh_elt_LH_P3_2_4) + _lh_elt_LH_P3_0_5) + _lh_elt_LH_P3_1_5) + _lh_elt_LH_P3_2_5) in
                (if ((tot_1 < 2) || (tot_1 > 3)) then
                  0
                else
                  (if (tot_1 = 3) then
                    1
                  else
                    _lh_elt_LH_P3_1_4)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFrom__d0 a_5 =
  (lazy (`LH_C(a_5, (enumFrom__d0 (a_5 + 1)))));;
let rec foldr__d0 f_1_7 i_3 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_3, t_4_5) -> 
      ((f_1_7 h_4_3) (((foldr__d0 f_1_7) i_3) t_4_5))
    | `LH_N -> 
      i_3);;
let rec init__d0 _lh_init_arg1_2 =
  (match _lh_init_arg1_2 with
    | `LH_C(_lh_init_LH_C_0_2, _lh_init_LH_C_1_2) -> 
      (match _lh_init_LH_C_1_2 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_2, (init__d0 _lh_init_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec init__d1 _lh_init_arg1_3 =
  (match _lh_init_arg1_3 with
    | `LH_C(_lh_init_LH_C_0_3, _lh_init_LH_C_1_3) -> 
      (match _lh_init_LH_C_1_3 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_3, (init__d1 _lh_init_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec init__d2 _lh_init_arg1_4 =
  (match _lh_init_arg1_4 with
    | `LH_C(_lh_init_LH_C_0_4, _lh_init_LH_C_1_4) -> 
      (match _lh_init_LH_C_1_4 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_4, (init__d2 _lh_init_LH_C_1_4))))
    | _ -> 
      (failwith "error"));;
let rec init__d3 _lh_init_arg1_1 =
  (match _lh_init_arg1_1 with
    | `LH_C(_lh_init_LH_C_0_1, _lh_init_LH_C_1_1) -> 
      (match _lh_init_LH_C_1_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_1, (init__d3 _lh_init_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec iterate__d0 f_1_6 x_2 =
  (lazy (`LH_C(x_2, ((iterate__d0 f_1_6) (f_1_6 x_2)))));;
let rec limit__d0 _lh_limit_arg1_1 =
  (let rec _lh_matchIdent_1_7 = (Lazy.force _lh_limit_arg1_1) in
    (match _lh_matchIdent_1_7 with
      | `LH_C(_lh_limit_LH_C_0_2, _lh_limit_LH_C_1_2) -> 
        (let rec _lh_matchIdent_1_8 = (Lazy.force _lh_limit_LH_C_1_2) in
          (match _lh_matchIdent_1_8 with
            | `LH_C(_lh_limit_LH_C_0_3, _lh_limit_LH_C_1_3) -> 
              (if (_lh_limit_LH_C_0_2 = _lh_limit_LH_C_0_3) then
                (`LH_C(_lh_limit_LH_C_0_2, (`LH_N)))
              else
                (`LH_C(_lh_limit_LH_C_0_2, (limit__d0 (lazy (`LH_C(_lh_limit_LH_C_0_3, _lh_limit_LH_C_1_3)))))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec map_lz__d0 f_1_3 ls_2_0 =
  (lazy (match (Lazy.force ls_2_0) with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_3 h_2_5), ((map_lz__d0 f_1_3) t_2_7)))
    | `LH_N -> 
      (`LH_N)));;
let rec map__d0 f_1_9 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C((f_1_9 h_4_8), ((map__d0 f_1_9) t_5_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_2 h_2_1), ((map__d1 f_1_2) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_8 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C((f_1_8 h_4_4), ((map__d2 f_1_8) t_4_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_5 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C((f_1_5 h_2_7), ((map__d3 f_1_5) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C((f_1_4 h_2_6), ((map__d4 f_1_4) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d0 t_3_9) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1_d0 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_6, t_4_8) -> 
      (`LH_C(h_4_6, ((mappend__d1_d0 t_4_8) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d1_d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1_d1 t_2_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d2 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d1_d2 t_4_7) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d1_d3 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d1_d3 t_4_3) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d4 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d1_d4 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d2 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend__d2 t_4_2) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d3 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d3 t_3_3) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d4 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C(h_3_9, ((mappend__d4 t_4_1) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d5 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C(h_2_9, ((mappend__d5 t_3_1) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d6 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d6 t_2_6) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d7 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_3, t_3_5) -> 
      (`LH_C(h_3_3, ((mappend__d7 t_3_5) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d8 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d8 t_4_0) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d9 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d9 t_4_4) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec star__d0 _lh_star_arg1_1 =
  (match _lh_star_arg1_1 with
    | 0 -> 
      (`LH_C(' ', (`LH_C(' ', (`LH_N)))))
    | 1 -> 
      (`LH_C(' ', (`LH_C('o', (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec start__d0 =
  (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))));;
let rec tail__d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_0, t_3_2) -> 
      t_3_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_6, t_3_8) -> 
      t_3_8
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_5, t_3_7) -> 
      t_3_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_8, t_3_0) -> 
      t_3_0
    | `LH_N -> 
      (failwith "error"));;
let rec take__d0 n_4 ls_2_5 =
  (if (n_4 > 0) then
    (match ls_2_5 with
      | `LH_C(h_3_2, t_3_4) -> 
        (`LH_C(h_3_2, ((take__d0 (n_4 - 1)) t_3_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec take__d1 n_5 ls_3_0 =
  (if (n_5 > 0) then
    (match ls_3_0 with
      | `LH_C(h_4_7, t_4_9) -> 
        (`LH_C(h_4_7, ((take__d1 (n_5 - 1)) t_4_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zip3__d0 _lh_zip3_arg1_4 _lh_zip3_arg2_4 _lh_zip3_arg3_4 =
  (let rec _lh_matchIdent_2_2 = _lh_zip3_arg1_4 in
    (match _lh_matchIdent_2_2 with
      | `LH_C(_lh_zip3_LH_C_0_1_2, _lh_zip3_LH_C_1_1_2) -> 
        (let rec _lh_matchIdent_2_3 = _lh_zip3_arg2_4 in
          (match _lh_matchIdent_2_3 with
            | `LH_C(_lh_zip3_LH_C_0_1_3, _lh_zip3_LH_C_1_1_3) -> 
              (let rec _lh_matchIdent_2_4 = _lh_zip3_arg3_4 in
                (match _lh_matchIdent_2_4 with
                  | `LH_C(_lh_zip3_LH_C_0_1_4, _lh_zip3_LH_C_1_1_4) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_1_2, _lh_zip3_LH_C_0_1_3, _lh_zip3_LH_C_0_1_4)), (((zip3__d0 _lh_zip3_LH_C_1_1_2) _lh_zip3_LH_C_1_1_3) _lh_zip3_LH_C_1_1_4)))
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
let rec zip3__d1 _lh_zip3_arg1_3 _lh_zip3_arg2_3 _lh_zip3_arg3_3 =
  (let rec _lh_matchIdent_1_4 = _lh_zip3_arg1_3 in
    (match _lh_matchIdent_1_4 with
      | `LH_C(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_1_9) -> 
        (let rec _lh_matchIdent_1_5 = _lh_zip3_arg2_3 in
          (match _lh_matchIdent_1_5 with
            | `LH_C(_lh_zip3_LH_C_0_1_0, _lh_zip3_LH_C_1_1_0) -> 
              (let rec _lh_matchIdent_1_6 = _lh_zip3_arg3_3 in
                (match _lh_matchIdent_1_6 with
                  | `LH_C(_lh_zip3_LH_C_0_1_1, _lh_zip3_LH_C_1_1_1) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_0_1_0, _lh_zip3_LH_C_0_1_1)), (((zip3__d1 _lh_zip3_LH_C_1_9) _lh_zip3_LH_C_1_1_0) _lh_zip3_LH_C_1_1_1)))
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
let rec zip3__d2 _lh_zip3_arg1_2 _lh_zip3_arg2_2 _lh_zip3_arg3_2 =
  (let rec _lh_matchIdent_1_1 = _lh_zip3_arg1_2 in
    (match _lh_matchIdent_1_1 with
      | `LH_C(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_1_6) -> 
        (let rec _lh_matchIdent_1_2 = _lh_zip3_arg2_2 in
          (match _lh_matchIdent_1_2 with
            | `LH_C(_lh_zip3_LH_C_0_7, _lh_zip3_LH_C_1_7) -> 
              (let rec _lh_matchIdent_1_3 = _lh_zip3_arg3_2 in
                (match _lh_matchIdent_1_3 with
                  | `LH_C(_lh_zip3_LH_C_0_8, _lh_zip3_LH_C_1_8) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_0_7, _lh_zip3_LH_C_0_8)), (((zip3__d2 _lh_zip3_LH_C_1_6) _lh_zip3_LH_C_1_7) _lh_zip3_LH_C_1_8)))
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
let rec zip3__d3 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_8 = _lh_zip3_arg1_1 in
    (match _lh_matchIdent_8 with
      | `LH_C(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_9 = _lh_zip3_arg2_1 in
          (match _lh_matchIdent_9 with
            | `LH_C(_lh_zip3_LH_C_0_4, _lh_zip3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_1_0 = _lh_zip3_arg3_1 in
                (match _lh_matchIdent_1_0 with
                  | `LH_C(_lh_zip3_LH_C_0_5, _lh_zip3_LH_C_1_5) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_0_4, _lh_zip3_LH_C_0_5)), (((zip3__d3 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_5)))
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
let rec zipWith3__d0 _lh_zipWith3_arg1_1 _lh_zipWith3_arg2_1 _lh_zipWith3_arg3_1 _lh_zipWith3_arg4_1 =
  (let rec _lh_matchIdent_1_9 = _lh_zipWith3_arg2_1 in
    (match _lh_matchIdent_1_9 with
      | `LH_C(_lh_zipWith3_LH_C_0_3, _lh_zipWith3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_2_0 = _lh_zipWith3_arg3_1 in
          (match _lh_matchIdent_2_0 with
            | `LH_C(_lh_zipWith3_LH_C_0_4, _lh_zipWith3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_2_1 = _lh_zipWith3_arg4_1 in
                (match _lh_matchIdent_2_1 with
                  | `LH_C(_lh_zipWith3_LH_C_0_5, _lh_zipWith3_LH_C_1_5) -> 
                    (`LH_C((((_lh_zipWith3_arg1_1 _lh_zipWith3_LH_C_0_3) _lh_zipWith3_LH_C_0_4) _lh_zipWith3_LH_C_0_5), ((((zipWith3__d0 _lh_zipWith3_arg1_1) _lh_zipWith3_LH_C_1_3) _lh_zipWith3_LH_C_1_4) _lh_zipWith3_LH_C_1_5)))
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
let rec zip_lz_nl__d0 xs_2_2 ys_2_2 =
  (match ys_2_2 with
    | `LH_C(hy_8, ty_8) -> 
      (match (Lazy.force xs_2_2) with
        | `LH_C(hx_8, tx_8) -> 
          (`LH_C((`LH_P2(hx_8, hy_8)), ((zip_lz_nl__d0 tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_3_4, t_3_6) -> 
      ((mappend__d0 h_3_4) (concat__d0 t_3_6))
    | `LH_N -> 
      (`LH_N))
and disp__d0 _lh_disp_arg1_1 =
  (match _lh_disp_arg1_1 with
    | `LH_P2(_lh_disp_LH_P2_0_1, _lh_disp_LH_P2_1_1) -> 
      ((mappend__d3 ((mappend__d4 _lh_disp_LH_P2_0_1) (`LH_C('n', (`LH_C('n', (`LH_N))))))) ((fun _lh_funcomp_x_6 -> 
        (((foldr__d0 (glue__d0 (`LH_C('n', (`LH_N))))) (`LH_N)) ((map__d0 (fun _lh_funcomp_x_7 -> 
          (concat__d0 ((map__d1 star__d0) _lh_funcomp_x_7)))) _lh_funcomp_x_6))) _lh_disp_LH_P2_1_1))
    | _ -> 
      (failwith "error"))
and gen__d0 _lh_gen_arg1_1 _lh_gen_arg2_1 =
  ((map__d2 row__d0) ((shift__d3 ((copy__d3 _lh_gen_arg1_1) 0)) _lh_gen_arg2_1))
and generations__d0 _lh_generations_arg1_1 =
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      ((fun _lh_funcomp_x_1_0 -> 
        ((map__d3 disp__d0) ((zip_lz_nl__d0 ((map_lz__d0 string_of_int) (enumFrom__d0 0))) _lh_funcomp_x_1_0))) (limit__d0 _lh_funcomp_x_9))) ((iterate__d0 (gen__d0 _lh_generations_arg1_1)) _lh_funcomp_x_8))) ((take__d0 _lh_generations_arg1_1) ((map__d4 (fun _lh_funcomp_x_1_1 -> 
    ((fun l_2 -> 
      ((take__d1 _lh_generations_arg1_1) l_2)) ((fun l_3 -> 
      ((mappend__d1_d3 l_3) ((copy__d0 _lh_generations_arg1_1) 0))) _lh_funcomp_x_1_1)))) ((mappend__d1_d4 start__d0) ((copy__d1 _lh_generations_arg1_1) ((copy__d2 _lh_generations_arg1_1) 0))))))
and glue__d0 _lh_glue_arg1_1 _lh_glue_arg2_1 _lh_glue_arg3_1 =
  ((mappend__d1 ((mappend__d2 _lh_glue_arg2_1) _lh_glue_arg1_1)) _lh_glue_arg3_1)
and row__d0 _lh_row_arg1_1 =
  (match _lh_row_arg1_1 with
    | `LH_P3(_lh_row_LH_P3_0_1, _lh_row_LH_P3_1_1, _lh_row_LH_P3_2_1) -> 
      ((((zipWith3__d0 elt__d0) ((shift__d0 0) _lh_row_LH_P3_0_1)) ((shift__d1 0) _lh_row_LH_P3_1_1)) ((shift__d2 0) _lh_row_LH_P3_2_1))
    | _ -> 
      (failwith "error"))
and shift__d0 _lh_shift_arg1_4 _lh_shift_arg2_4 =
  (((zip3__d0 ((shiftr__d0 _lh_shift_arg1_4) _lh_shift_arg2_4)) _lh_shift_arg2_4) ((shiftl__d0 _lh_shift_arg1_4) _lh_shift_arg2_4))
and shift__d1 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3__d1 ((shiftr__d1 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl__d1 _lh_shift_arg1_3) _lh_shift_arg2_3))
and shift__d2 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3__d2 ((shiftr__d2 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl__d2 _lh_shift_arg1_1) _lh_shift_arg2_1))
and shift__d3 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3__d3 ((shiftr__d3 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl__d3 _lh_shift_arg1_2) _lh_shift_arg2_2))
and shiftl__d0 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend__d5 (tail__d0 _lh_shiftl_arg2_2)) (`LH_C(_lh_shiftl_arg1_2, (`LH_N))))
and shiftl__d1 _lh_shiftl_arg1_4 _lh_shiftl_arg2_4 =
  ((mappend__d7 (tail__d1 _lh_shiftl_arg2_4)) (`LH_C(_lh_shiftl_arg1_4, (`LH_N))))
and shiftl__d2 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend__d9 (tail__d2 _lh_shiftl_arg2_3)) (`LH_C(_lh_shiftl_arg1_3, (`LH_N))))
and shiftl__d3 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend__d1_d1 (tail__d3 _lh_shiftl_arg2_1)) (`LH_C(_lh_shiftl_arg1_1, (`LH_N))))
and shiftr__d0 _lh_shiftr_arg1_4 _lh_shiftr_arg2_4 =
  ((mappend__d6 (`LH_C(_lh_shiftr_arg1_4, (`LH_N)))) (init__d0 _lh_shiftr_arg2_4))
and shiftr__d1 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend__d8 (`LH_C(_lh_shiftr_arg1_3, (`LH_N)))) (init__d1 _lh_shiftr_arg2_3))
and shiftr__d2 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend__d1_d0 (`LH_C(_lh_shiftr_arg1_2, (`LH_N)))) (init__d2 _lh_shiftr_arg2_2))
and shiftr__d3 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend__d1_d2 (`LH_C(_lh_shiftr_arg1_1, (`LH_N)))) (init__d3 _lh_shiftr_arg2_1))
and testLife_nofib__d0 _lh_testLife_nofib_arg1_1 =
  (generations__d0 _lh_testLife_nofib_arg1_1);;
end;;

