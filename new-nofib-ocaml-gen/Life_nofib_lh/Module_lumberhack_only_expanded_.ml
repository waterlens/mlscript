

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec map_lz_lh__d1 f_7 ls_9 =
  (lazy (match (Lazy.force ls_9) with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C((f_7 h_1_9), ((map_lz_lh__d1 f_7) t_1_9)))
    | `LH_N -> 
      (`LH_N)));;
let rec start_lh__d1 =
  (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))));;
let rec mappend_lh__d1 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C(h_1_6, ((mappend_lh__d1 t_1_6) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend_lh__d2 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend_lh__d2 t_1_4) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec take_lh__d2 n_0 ls_8 =
  (if (n_0 > 0) then
    (match ls_8 with
      | `LH_C(h_1_8, t_1_8) -> 
        (`LH_C(h_1_8, ((take_lh__d2 (n_0 - 1)) t_1_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh__d3 f_3 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C((f_3 h_1_3), ((map_lh__d3 f_3) t_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith3_lh__d1 _lh_zipWith3_arg1_0 _lh_zipWith3_arg2_0 _lh_zipWith3_arg3_0 _lh_zipWith3_arg4_0 =
  (let rec _lh_matchIdent_9 = _lh_zipWith3_arg2_0 in
    (match _lh_matchIdent_9 with
      | `LH_C(_lh_zipWith3_LH_C_0_0, _lh_zipWith3_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1_0 = _lh_zipWith3_arg3_0 in
          (match _lh_matchIdent_1_0 with
            | `LH_C(_lh_zipWith3_LH_C_0_1, _lh_zipWith3_LH_C_1_1) -> 
              (let rec _lh_matchIdent_1_1 = _lh_zipWith3_arg4_0 in
                (match _lh_matchIdent_1_1 with
                  | `LH_C(_lh_zipWith3_LH_C_0_2, _lh_zipWith3_LH_C_1_2) -> 
                    (`LH_C((((_lh_zipWith3_arg1_0 _lh_zipWith3_LH_C_0_0) _lh_zipWith3_LH_C_0_1) _lh_zipWith3_LH_C_0_2), ((((zipWith3_lh__d1 _lh_zipWith3_arg1_0) _lh_zipWith3_LH_C_1_0) _lh_zipWith3_LH_C_1_1) _lh_zipWith3_LH_C_1_2)))
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
let rec tail_lh__d2 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec mappend_lh__d9 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d9 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec shiftl_lh__d4 _lh_shiftl_arg1_0 _lh_shiftl_arg2_0 =
  ((mappend_lh__d9 (tail_lh__d2 _lh_shiftl_arg2_0)) (`LH_C(_lh_shiftl_arg1_0, (`LH_N))));;
let rec zip3_lh__d4 _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_0 = _lh_zip3_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1 = _lh_zip3_arg2_0 in
          (match _lh_matchIdent_1 with
            | `LH_C(_lh_zip3_LH_C_0_1, _lh_zip3_LH_C_1_1) -> 
              (let rec _lh_matchIdent_2 = _lh_zip3_arg3_0 in
                (match _lh_matchIdent_2 with
                  | `LH_C(_lh_zip3_LH_C_0_2, _lh_zip3_LH_C_1_2) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_0_1, _lh_zip3_LH_C_0_2)), (((zip3_lh__d4 _lh_zip3_LH_C_1_0) _lh_zip3_LH_C_1_1) _lh_zip3_LH_C_1_2)))
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
let rec init_lh__d1 _lh_init_arg1_0 =
  (match _lh_init_arg1_0 with
    | `LH_C(_lh_init_LH_C_0_0, _lh_init_LH_C_1_0) -> 
      (match _lh_init_LH_C_1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_0, (init_lh__d1 _lh_init_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec shiftr_lh__d4 _lh_shiftr_arg1_0 _lh_shiftr_arg2_0 =
  ((mappend_lh__d9 (`LH_C(_lh_shiftr_arg1_0, (`LH_N)))) (init_lh__d1 _lh_shiftr_arg2_0));;
let rec shift_lh__d4 _lh_shift_arg1_0 _lh_shift_arg2_0 =
  (((zip3_lh__d4 ((shiftr_lh__d4 _lh_shift_arg1_0) _lh_shift_arg2_0)) _lh_shift_arg2_0) ((shiftl_lh__d4 _lh_shift_arg1_0) _lh_shift_arg2_0));;
let rec zip3_lh__d3 _lh_zip3_arg1_1 _lh_zip3_arg2_1 _lh_zip3_arg3_1 =
  (let rec _lh_matchIdent_3 = _lh_zip3_arg1_1 in
    (match _lh_matchIdent_3 with
      | `LH_C(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_1_3) -> 
        (let rec _lh_matchIdent_4 = _lh_zip3_arg2_1 in
          (match _lh_matchIdent_4 with
            | `LH_C(_lh_zip3_LH_C_0_4, _lh_zip3_LH_C_1_4) -> 
              (let rec _lh_matchIdent_5 = _lh_zip3_arg3_1 in
                (match _lh_matchIdent_5 with
                  | `LH_C(_lh_zip3_LH_C_0_5, _lh_zip3_LH_C_1_5) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_3, _lh_zip3_LH_C_0_4, _lh_zip3_LH_C_0_5)), (((zip3_lh__d3 _lh_zip3_LH_C_1_3) _lh_zip3_LH_C_1_4) _lh_zip3_LH_C_1_5)))
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
let rec shiftr_lh__d3 _lh_shiftr_arg1_1 _lh_shiftr_arg2_1 =
  ((mappend_lh__d9 (`LH_C(_lh_shiftr_arg1_1, (`LH_N)))) (init_lh__d1 _lh_shiftr_arg2_1));;
let rec shiftl_lh__d3 _lh_shiftl_arg1_1 _lh_shiftl_arg2_1 =
  ((mappend_lh__d9 (tail_lh__d2 _lh_shiftl_arg2_1)) (`LH_C(_lh_shiftl_arg1_1, (`LH_N))));;
let rec shift_lh__d3 _lh_shift_arg1_1 _lh_shift_arg2_1 =
  (((zip3_lh__d3 ((shiftr_lh__d3 _lh_shift_arg1_1) _lh_shift_arg2_1)) _lh_shift_arg2_1) ((shiftl_lh__d3 _lh_shift_arg1_1) _lh_shift_arg2_1));;
let rec zip3_lh__d2 _lh_zip3_arg1_2 _lh_zip3_arg2_2 _lh_zip3_arg3_2 =
  (let rec _lh_matchIdent_6 = _lh_zip3_arg1_2 in
    (match _lh_matchIdent_6 with
      | `LH_C(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_1_6) -> 
        (let rec _lh_matchIdent_7 = _lh_zip3_arg2_2 in
          (match _lh_matchIdent_7 with
            | `LH_C(_lh_zip3_LH_C_0_7, _lh_zip3_LH_C_1_7) -> 
              (let rec _lh_matchIdent_8 = _lh_zip3_arg3_2 in
                (match _lh_matchIdent_8 with
                  | `LH_C(_lh_zip3_LH_C_0_8, _lh_zip3_LH_C_1_8) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_6, _lh_zip3_LH_C_0_7, _lh_zip3_LH_C_0_8)), (((zip3_lh__d2 _lh_zip3_LH_C_1_6) _lh_zip3_LH_C_1_7) _lh_zip3_LH_C_1_8)))
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
let rec shiftr_lh__d2 _lh_shiftr_arg1_2 _lh_shiftr_arg2_2 =
  ((mappend_lh__d9 (`LH_C(_lh_shiftr_arg1_2, (`LH_N)))) (init_lh__d1 _lh_shiftr_arg2_2));;
let rec shiftl_lh__d2 _lh_shiftl_arg1_2 _lh_shiftl_arg2_2 =
  ((mappend_lh__d9 (tail_lh__d2 _lh_shiftl_arg2_2)) (`LH_C(_lh_shiftl_arg1_2, (`LH_N))));;
let rec shift_lh__d2 _lh_shift_arg1_2 _lh_shift_arg2_2 =
  (((zip3_lh__d2 ((shiftr_lh__d2 _lh_shift_arg1_2) _lh_shift_arg2_2)) _lh_shift_arg2_2) ((shiftl_lh__d2 _lh_shift_arg1_2) _lh_shift_arg2_2));;
let rec elt_lh__d1 _lh_elt_arg1_0 _lh_elt_arg2_0 _lh_elt_arg3_0 =
  (match _lh_elt_arg1_0 with
    | `LH_P3(_lh_elt_LH_P3_0_0, _lh_elt_LH_P3_1_0, _lh_elt_LH_P3_2_0) -> 
      (match _lh_elt_arg2_0 with
        | `LH_P3(_lh_elt_LH_P3_0_1, _lh_elt_LH_P3_1_1, _lh_elt_LH_P3_2_1) -> 
          (match _lh_elt_arg3_0 with
            | `LH_P3(_lh_elt_LH_P3_0_2, _lh_elt_LH_P3_1_2, _lh_elt_LH_P3_2_2) -> 
              (let rec tot_0 = (((((((_lh_elt_LH_P3_0_0 + _lh_elt_LH_P3_1_0) + _lh_elt_LH_P3_2_0) + _lh_elt_LH_P3_0_1) + _lh_elt_LH_P3_2_1) + _lh_elt_LH_P3_0_2) + _lh_elt_LH_P3_1_2) + _lh_elt_LH_P3_2_2) in
                (if ((tot_0 < 2) || (tot_0 > 3)) then
                  0
                else
                  (if (tot_0 = 3) then
                    1
                  else
                    _lh_elt_LH_P3_1_1)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec row_lh__d1 _lh_row_arg1_0 =
  (match _lh_row_arg1_0 with
    | `LH_P3(_lh_row_LH_P3_0_0, _lh_row_LH_P3_1_0, _lh_row_LH_P3_2_0) -> 
      ((((zipWith3_lh__d1 elt_lh__d1) ((shift_lh__d4 0) _lh_row_LH_P3_0_0)) ((shift_lh__d3 0) _lh_row_LH_P3_1_0)) ((shift_lh__d2 0) _lh_row_LH_P3_2_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d8 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec tail_lh__d1 ls_1 =
  (match ls_1 with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec shiftl_lh__d1 _lh_shiftl_arg1_3 _lh_shiftl_arg2_3 =
  ((mappend_lh__d8 (tail_lh__d1 _lh_shiftl_arg2_3)) (`LH_C(_lh_shiftl_arg1_3, (`LH_N))));;
let rec zip3_lh__d1 _lh_zip3_arg1_3 _lh_zip3_arg2_3 _lh_zip3_arg3_3 =
  (let rec _lh_matchIdent_1_2 = _lh_zip3_arg1_3 in
    (match _lh_matchIdent_1_2 with
      | `LH_C(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_1_9) -> 
        (let rec _lh_matchIdent_1_3 = _lh_zip3_arg2_3 in
          (match _lh_matchIdent_1_3 with
            | `LH_C(_lh_zip3_LH_C_0_1_0, _lh_zip3_LH_C_1_1_0) -> 
              (let rec _lh_matchIdent_1_4 = _lh_zip3_arg3_3 in
                (match _lh_matchIdent_1_4 with
                  | `LH_C(_lh_zip3_LH_C_0_1_1, _lh_zip3_LH_C_1_1_1) -> 
                    (`LH_C((`LH_P3(_lh_zip3_LH_C_0_9, _lh_zip3_LH_C_0_1_0, _lh_zip3_LH_C_0_1_1)), (((zip3_lh__d1 _lh_zip3_LH_C_1_9) _lh_zip3_LH_C_1_1_0) _lh_zip3_LH_C_1_1_1)))
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
let rec shiftr_lh__d1 _lh_shiftr_arg1_3 _lh_shiftr_arg2_3 =
  ((mappend_lh__d9 (`LH_C(_lh_shiftr_arg1_3, (`LH_N)))) (init_lh__d1 _lh_shiftr_arg2_3));;
let rec shift_lh__d1 _lh_shift_arg1_3 _lh_shift_arg2_3 =
  (((zip3_lh__d1 ((shiftr_lh__d1 _lh_shift_arg1_3) _lh_shift_arg2_3)) _lh_shift_arg2_3) ((shiftl_lh__d1 _lh_shift_arg1_3) _lh_shift_arg2_3));;
let rec copy_lh__d4 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_lh__d4 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec gen_lh__d1 _lh_gen_arg1_0 _lh_gen_arg2_0 =
  ((map_lh__d3 row_lh__d1) ((shift_lh__d1 ((copy_lh__d4 _lh_gen_arg1_0) 0)) _lh_gen_arg2_0));;
let rec map_lh__d1 f_6 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C((f_6 h_1_7), ((map_lh__d1 f_6) t_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFrom_lh__d1 a_0 =
  (lazy (`LH_C(a_0, (enumFrom_lh__d1 (a_0 + 1)))));;
let rec copy_lh__d3 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy_lh__d3 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec zip_lz_nl_lh__d1 xs_9 ys_9 =
  (match ys_9 with
    | `LH_C(hy_0, ty_0) -> 
      (match (Lazy.force xs_9) with
        | `LH_C(hx_0, tx_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lz_nl_lh__d1 tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d3 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C(h_1_2, ((mappend_lh__d3 t_1_2) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec mappend_lh__d4 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d4 t_1_0) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec map_lh__d5 f_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C((f_1 h_9), ((map_lh__d5 f_1) t_9)))
    | `LH_N -> 
      (`LH_N));;
let rec star_lh__d1 _lh_star_arg1_0 =
  (match _lh_star_arg1_0 with
    | 0 -> 
      (`LH_C(' ', (`LH_C(' ', (`LH_N)))))
    | 1 -> 
      (`LH_C(' ', (`LH_C('o', (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d4 f_2 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C((f_2 h_1_1), ((map_lh__d4 f_2) t_1_1)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d7 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d7 t_4) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_8, t_8) -> 
      ((mappend_lh__d7 h_8) (concat_lh__d1 t_8))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d5 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d5 t_6) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d6 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d6 t_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec glue_lh__d1 _lh_glue_arg1_0 _lh_glue_arg2_0 _lh_glue_arg3_0 =
  ((mappend_lh__d6 ((mappend_lh__d5 _lh_glue_arg2_0) _lh_glue_arg1_0)) _lh_glue_arg3_0);;
let rec foldr_lh__d1 f_0 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_7, t_7) -> 
      ((f_0 h_7) (((foldr_lh__d1 f_0) i_0) t_7))
    | `LH_N -> 
      i_0);;
let rec disp_lh__d1 _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend_lh__d4 ((mappend_lh__d3 _lh_disp_LH_P2_0_0) (`LH_C('n', (`LH_C('n', (`LH_N))))))) ((fun _lh_funcomp_x_0 -> 
        (((foldr_lh__d1 (glue_lh__d1 (`LH_C('n', (`LH_N))))) (`LH_N)) ((map_lh__d5 (fun _lh_funcomp_x_1 -> 
          (concat_lh__d1 ((map_lh__d4 star_lh__d1) _lh_funcomp_x_1)))) _lh_funcomp_x_0))) _lh_disp_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec limit_lh__d1 _lh_limit_arg1_0 =
  (let rec _lh_matchIdent_1_5 = (Lazy.force _lh_limit_arg1_0) in
    (match _lh_matchIdent_1_5 with
      | `LH_C(_lh_limit_LH_C_0_0, _lh_limit_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1_6 = (Lazy.force _lh_limit_LH_C_1_0) in
          (match _lh_matchIdent_1_6 with
            | `LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1) -> 
              (if (_lh_limit_LH_C_0_0 = _lh_limit_LH_C_0_1) then
                (`LH_C(_lh_limit_LH_C_0_0, (`LH_N)))
              else
                (`LH_C(_lh_limit_LH_C_0_0, (limit_lh__d1 (lazy (`LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1)))))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec copy_lh__d1 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (match _lh_copy_arg1_3 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_3, ((copy_lh__d1 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3))));;
let rec take_lh__d1 n_1 ls_1_0 =
  (if (n_1 > 0) then
    (match ls_1_0 with
      | `LH_C(h_2_0, t_2_0) -> 
        (`LH_C(h_2_0, ((take_lh__d1 (n_1 - 1)) t_2_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec map_lh__d2 f_5 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C((f_5 h_1_5), ((map_lh__d2 f_5) t_1_5)))
    | `LH_N -> 
      (`LH_N));;
let rec iterate_lh__d1 f_4 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh__d1 f_4) (f_4 x_0)))));;
let rec copy_lh__d2 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (match _lh_copy_arg1_2 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_2, ((copy_lh__d2 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2))));;
let rec generations_lh__d1 _lh_generations_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((fun _lh_funcomp_x_4 -> 
        ((map_lh__d2 disp_lh__d1) ((zip_lz_nl_lh__d1 ((map_lz_lh__d1 string_of_int) (enumFrom_lh__d1 0))) _lh_funcomp_x_4))) (limit_lh__d1 _lh_funcomp_x_3))) ((iterate_lh__d1 (gen_lh__d1 _lh_generations_arg1_0)) _lh_funcomp_x_2))) ((take_lh__d2 _lh_generations_arg1_0) ((map_lh__d1 (fun _lh_funcomp_x_5 -> 
    ((fun l_0 -> 
      ((take_lh__d1 _lh_generations_arg1_0) l_0)) ((fun l_1 -> 
      ((mappend_lh__d2 l_1) ((copy_lh__d1 _lh_generations_arg1_0) 0))) _lh_funcomp_x_5)))) ((mappend_lh__d1 start_lh__d1) ((copy_lh__d3 _lh_generations_arg1_0) ((copy_lh__d2 _lh_generations_arg1_0) 0))))));;
let rec testLife_nofib_lh__d1 _lh_testLife_nofib_arg1_0 =
  (generations_lh__d1 _lh_testLife_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testLife_nofib_lh__d1 15)));
end;;

