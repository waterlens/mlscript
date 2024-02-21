
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec start_lh =
  (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_N), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_C(0, (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec enumFrom_lh a_0 =
  (lazy (`LH_C(a_0, (enumFrom_lh (a_0 + 1)))));;
let rec zip_lz_nl_lh xs_0 ys_0 =
  (match ys_0 with
    | `LH_C(hy_0, ty_0) -> 
      (match (Lazy.force xs_0) with
        | `LH_C(hx_0, tx_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_lz_nl_lh tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec iterate_lh f_3 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh f_3) (f_3 x_0)))));;
let rec limit_lh _lh_limit_arg1_0 =
  (let rec _lh_matchIdent_6 = (Lazy.force _lh_limit_arg1_0) in
    (match _lh_matchIdent_6 with
      | `LH_C(_lh_limit_LH_C_0_0, _lh_limit_LH_C_1_0) -> 
        (let rec _lh_matchIdent_7 = (Lazy.force _lh_limit_LH_C_1_0) in
          (match _lh_matchIdent_7 with
            | `LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1) -> 
              (if (_lh_limit_LH_C_0_0 = _lh_limit_LH_C_0_1) then
                (`LH_C(_lh_limit_LH_C_0_0, (`LH_N)))
              else
                (`LH_C(_lh_limit_LH_C_0_0, (limit_lh (lazy (`LH_C(_lh_limit_LH_C_0_1, _lh_limit_LH_C_1_1)))))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec mappend_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh t_5) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_6, t_6) -> 
      ((mappend_lh h_6) (concat_lh t_6))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh f_2 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      ((f_2 h_2) (((foldr_lh f_2) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec glue_lh _lh_glue_arg1_0 _lh_glue_arg2_0 _lh_glue_arg3_0 =
  ((mappend_lh ((mappend_lh _lh_glue_arg2_0) _lh_glue_arg1_0)) _lh_glue_arg3_0);;
let rec star_lh _lh_star_arg1_0 =
  (match _lh_star_arg1_0 with
    | 0 -> 
      (`LH_C(' ', (`LH_C(' ', (`LH_N)))))
    | 1 -> 
      (`LH_C(' ', (`LH_C('o', (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec disp_lh _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend_lh ((mappend_lh _lh_disp_LH_P2_0_0) (`LH_C('n', (`LH_C('n', (`LH_N))))))) ((fun _lh_funcomp_x_4 -> 
        (((foldr_lh (glue_lh (`LH_C('n', (`LH_N))))) (`LH_N)) ((map_lh (fun _lh_funcomp_x_5 -> 
          (concat_lh ((map_lh star_lh) _lh_funcomp_x_5)))) _lh_funcomp_x_4))) _lh_disp_LH_P2_1_0))
    | _ -> 
      (failwith "error"));;
let rec map_lz_lh f_1 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lz_lh f_1) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec tail_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec shiftl_lh _lh_shiftl_arg1_0 _lh_shiftl_arg2_0 =
  ((mappend_lh (tail_lh _lh_shiftl_arg2_0)) (`LH_C(_lh_shiftl_arg1_0, (`LH_N))));;
let rec init_lh _lh_init_arg1_0 =
  (match _lh_init_arg1_0 with
    | `LH_C(_lh_init_LH_C_0_0, _lh_init_LH_C_1_0) -> 
      (match _lh_init_LH_C_1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(_lh_init_LH_C_0_0, (init_lh _lh_init_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec shiftr_lh _lh_shiftr_arg1_0 _lh_shiftr_arg2_0 =
  ((mappend_lh (`LH_C(_lh_shiftr_arg1_0, (`LH_N)))) (init_lh _lh_shiftr_arg2_0));;
let rec zip3_lh _lh_zip3_arg1_0 _lh_zip3_arg2_0 _lh_zip3_arg3_0 =
  (let rec _lh_matchIdent_0 = _lh_zip3_arg1_0 in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_zip3_LH_C_0_0, _lh_zip3_LH_C_1_0) -> 
        (let rec _lh_matchIdent_1 = _lh_zip3_arg2_0 in
          (match _lh_matchIdent_1 with
            | `LH_C(_lh_zip3_LH_C_0_1, _lh_zip3_LH_C_1_1) -> 
              (let rec _lh_matchIdent_2 = _lh_zip3_arg3_0 in
                (match _lh_matchIdent_2 with
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
let rec shift_lh _lh_shift_arg1_0 _lh_shift_arg2_0 =
  (((zip3_lh ((shiftr_lh _lh_shift_arg1_0) _lh_shift_arg2_0)) _lh_shift_arg2_0) ((shiftl_lh _lh_shift_arg1_0) _lh_shift_arg2_0));;
let rec zipWith3_lh _lh_zipWith3_arg1_0 _lh_zipWith3_arg2_0 _lh_zipWith3_arg3_0 _lh_zipWith3_arg4_0 =
  (let rec _lh_matchIdent_3 = _lh_zipWith3_arg2_0 in
    (match _lh_matchIdent_3 with
      | `LH_C(_lh_zipWith3_LH_C_0_0, _lh_zipWith3_LH_C_1_0) -> 
        (let rec _lh_matchIdent_4 = _lh_zipWith3_arg3_0 in
          (match _lh_matchIdent_4 with
            | `LH_C(_lh_zipWith3_LH_C_0_1, _lh_zipWith3_LH_C_1_1) -> 
              (let rec _lh_matchIdent_5 = _lh_zipWith3_arg4_0 in
                (match _lh_matchIdent_5 with
                  | `LH_C(_lh_zipWith3_LH_C_0_2, _lh_zipWith3_LH_C_1_2) -> 
                    (`LH_C((((_lh_zipWith3_arg1_0 _lh_zipWith3_LH_C_0_0) _lh_zipWith3_LH_C_0_1) _lh_zipWith3_LH_C_0_2), ((((zipWith3_lh _lh_zipWith3_arg1_0) _lh_zipWith3_LH_C_1_0) _lh_zipWith3_LH_C_1_1) _lh_zipWith3_LH_C_1_2)))
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
let rec elt_lh _lh_elt_arg1_0 _lh_elt_arg2_0 _lh_elt_arg3_0 =
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
let rec row_lh _lh_row_arg1_0 =
  (match _lh_row_arg1_0 with
    | `LH_P3(_lh_row_LH_P3_0_0, _lh_row_LH_P3_1_0, _lh_row_LH_P3_2_0) -> 
      ((((zipWith3_lh elt_lh) ((shift_lh 0) _lh_row_LH_P3_0_0)) ((shift_lh 0) _lh_row_LH_P3_1_0)) ((shift_lh 0) _lh_row_LH_P3_2_0))
    | _ -> 
      (failwith "error"));;
let rec gen_lh _lh_gen_arg1_0 _lh_gen_arg2_0 =
  ((map_lh row_lh) ((shift_lh ((copy_lh _lh_gen_arg1_0) 0)) _lh_gen_arg2_0));;
let rec take_lh n_0 ls_4 =
  (if (n_0 > 0) then
    (match ls_4 with
      | `LH_C(h_4, t_4) -> 
        (`LH_C(h_4, ((take_lh (n_0 - 1)) t_4)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec generations_lh _lh_generations_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((map_lh disp_lh) ((zip_lz_nl_lh ((map_lz_lh string_of_int) (enumFrom_lh 0))) _lh_funcomp_x_2))) (limit_lh _lh_funcomp_x_1))) ((iterate_lh (gen_lh _lh_generations_arg1_0)) _lh_funcomp_x_0))) ((take_lh _lh_generations_arg1_0) ((map_lh (fun _lh_funcomp_x_3 -> 
    ((fun l_0 -> 
      ((take_lh _lh_generations_arg1_0) l_0)) ((fun l_1 -> 
      ((mappend_lh l_1) ((copy_lh _lh_generations_arg1_0) 0))) _lh_funcomp_x_3)))) ((mappend_lh start_lh) ((copy_lh _lh_generations_arg1_0) ((copy_lh _lh_generations_arg1_0) 0))))));;
let rec testLife_nofib_lh _lh_testLife_nofib_arg1_0 =
  (generations_lh _lh_testLife_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testLife_nofib_lh 15)));
end;;

