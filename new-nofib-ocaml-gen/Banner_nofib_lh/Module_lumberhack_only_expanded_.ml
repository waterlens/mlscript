

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec replicate_lh__d1 _lh_replicate_arg1_0 _lh_replicate_arg2_0 =
  (if (_lh_replicate_arg1_0 = 0) then
    (`LH_N)
  else
    (`LH_C(_lh_replicate_arg2_0, ((replicate_lh__d1 (_lh_replicate_arg1_0 - 1)) _lh_replicate_arg2_0))));;
let rec mappend_lh__d1 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_1_5, t_1_5) -> 
      (`LH_C(h_1_5, ((mappend_lh__d1 t_1_5) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec concat_lh__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_1_6, t_1_6) -> 
      ((mappend_lh__d1 h_1_6) (concat_lh__d1 t_1_6))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d3 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d3 t_9) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec foldr1_lh__d1 _lh_foldr1_arg1_0 _lh_foldr1_arg2_0 =
  (match _lh_foldr1_arg2_0 with
    | `LH_C(_lh_foldr1_LH_C_0_0, _lh_foldr1_LH_C_1_0) -> 
      (match _lh_foldr1_LH_C_1_0 with
        | `LH_N -> 
          _lh_foldr1_LH_C_0_0
        | _ -> 
          ((_lh_foldr1_arg1_0 _lh_foldr1_LH_C_0_0) ((foldr1_lh__d1 _lh_foldr1_arg1_0) _lh_foldr1_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d4 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d4 t_8) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec join_lh__d1 _lh_join_arg1_0 =
  ((foldr1_lh__d1 (fun xs_5 ys_5 -> 
    ((mappend_lh__d3 ((mappend_lh__d4 xs_5) (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) ys_5))) _lh_join_arg1_0);;
let rec map_lh__d2 f_2 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C((f_2 h_1_3), ((map_lh__d2 f_2) t_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d1 f_3 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C((f_3 h_1_4), ((map_lh__d1 f_3) t_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh__d1 f_0 i_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      ((f_0 h_0) (((foldr_lh__d1 f_0) i_0) t_0))
    | `LH_N -> 
      i_0);;
let rec unzip_lh__d1 _lh_unzip_arg1_0 =
  (((foldr_lh__d1 (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_0 = ab_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1 = asbs_0 in
            (match _lh_matchIdent_1 with
              | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
let rec combine_lh__d1 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (`LH_C((`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)), (transpose_lh__d1 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0)))))
and
transpose_lh__d1 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose_lh__d1 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_2 = (unzip_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (`LH_C((`LH_P2(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_0 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_2 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine_lh__d1 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d2 t_1_0) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend_lh__d6 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d6 t_2) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d2 lss_0 =
  (match lss_0 with
    | `LH_C(h_1_2, t_1_2) -> 
      ((mappend_lh__d6 h_1_2) (concat_lh__d2 t_1_2))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d3 f_1 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C((f_1 h_1_1), ((map_lh__d3 f_1) t_1_1)))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d2 ((map_lh__d3 (fun l_0 -> 
    ((mappend_lh__d2 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec isLower_lh__d1 _lh_isLower_arg1_0 =
  (let rec n_4 = (int_of_char _lh_isLower_arg1_0) in
    ((n_4 >= 97) && (n_4 <= 122)));;
let rec isDigit_lh__d1 _lh_isDigit_arg1_0 =
  (let rec n_6 = (int_of_char _lh_isDigit_arg1_0) in
    ((n_6 >= 48) && (n_6 <= 57)));;
let rec alphas_lh__d2 =
  (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec mappend_lh__d5 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d5 t_6) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec slant_lh__d1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec isSpace_lh__d1 _lh_isSpace_arg1_0 =
  (let rec n_5 = (int_of_char _lh_isSpace_arg1_0) in
    (n_5 = 32));;
let rec digits_lh__d1 =
  (`LH_C((`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('1', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('1', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_C('1', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('2', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_C('2', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('3', (`LH_N))))))))))), (`LH_C((`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C('3', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_C('4', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('4', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('5', (`LH_N))))))))))), (`LH_C((`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C('5', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('6', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('6', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('6', (`LH_C('6', (`LH_C('6', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('7', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('8', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('8', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('8', (`LH_C('8', (`LH_C('8', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('9', (`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('9', (`LH_C('9', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_N)))))))))))))))))))));;
let rec head_lh__d1 ls_6 =
  (match ls_6 with
    | `LH_C(h_7, t_7) -> 
      h_7
    | `LH_N -> 
      (failwith "error"));;
let rec reverse_helper_lh__d1 ls_1 a_0 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((reverse_helper_lh__d1 t_1) (`LH_C(h_1, a_0)))
    | `LH_N -> 
      a_0);;
let rec reverse_lh__d1 ls_2 =
  ((reverse_helper_lh__d1 ls_2) (`LH_N));;
let rec atIndex_lh__d1 n_3 ls_5 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    (match ls_5 with
      | `LH_C(h_5, t_5) -> 
        (if (n_3 = 0) then
          h_5
        else
          ((atIndex_lh__d1 (n_3 - 1)) t_5))
      | `LH_N -> 
        (failwith "error")));;
let rec blank_lh__d1 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N)))))))))));;
let rec isUpper_lh__d1 _lh_isUpper_arg1_0 =
  (let rec n_0 = (int_of_char _lh_isUpper_arg1_0) in
    ((n_0 >= 65) && (n_0 <= 90)));;
let rec alphas_lh__d1 =
  (`LH_C((`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_C('A', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_C((`LH_C('A', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('A', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('B', (`LH_N))))))))))), (`LH_C((`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C('B', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('C', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_C('C', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('D', (`LH_N))))))))))), (`LH_C((`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C('D', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_C('E', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C('F', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('F', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C('G', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('G', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('G', (`LH_C('G', (`LH_C('G', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_C((`LH_C('H', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('H', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('I', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_C('I', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_C('J', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_C('J', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('J', (`LH_C('J', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C('K', (`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('K', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('K', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_C('L', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_C((`LH_C('M', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('M', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_C('N', (`LH_N))))))))))), (`LH_C((`LH_C('N', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('N', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C('O', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('O', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('O', (`LH_C('O', (`LH_C('O', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('P', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C('P', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('P', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_C((`LH_C('Q', (`LH_C(' ', (`LH_C(' ', (`LH_C('Q', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Q', (`LH_C('Q', (`LH_C(' ', (`LH_C('Q', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('R', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('R', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('S', (`LH_N))))))))))), (`LH_C((`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C('S', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_C('T', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('T', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C('U', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('U', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('U', (`LH_C('U', (`LH_C('U', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('V', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_C('W', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_C('X', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('X', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('X', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Y', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_C((`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C('Z', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_C('Z', (`LH_N))))))))))), (`LH_N))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))));;
let rec punct_lh__d1 =
  (`LH_C((`LH_P2('.', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C('.', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('?', (`LH_C((`LH_C(' ', (`LH_C('?', (`LH_C('?', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('?', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('!', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('!', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('.', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('-', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2('+', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_C('+', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2(':', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(':', (`LH_C(':', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_C((`LH_P2(';', (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_N))))))))))), (`LH_C((`LH_C(' ', (`LH_C(';', (`LH_C(';', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))))), (`LH_N))))))))))))), (`LH_N)))))))))))))));;
let rec atIndex_lh__d3 n_1 ls_3 =
  (if (n_1 < 0) then
    (failwith "error")
  else
    (match ls_3 with
      | `LH_C(h_3, t_3) -> 
        (if (n_1 = 0) then
          h_3
        else
          ((atIndex_lh__d3 (n_1 - 1)) t_3))
      | `LH_N -> 
        (failwith "error")));;
let rec slant_lh__d2 =
  (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_C(' ', (`LH_N))))))), (`LH_C((`LH_C(' ', (`LH_C(' ', (`LH_N))))), (`LH_C((`LH_C(' ', (`LH_N))), (`LH_C((`LH_N), (`LH_N)))))))))));;
let rec atIndex_lh__d2 n_2 ls_4 =
  (if (n_2 < 0) then
    (failwith "error")
  else
    (match ls_4 with
      | `LH_C(h_4, t_4) -> 
        (if (n_2 = 0) then
          h_4
        else
          ((atIndex_lh__d2 (n_2 - 1)) t_4))
      | `LH_N -> 
        (failwith "error")));;
let rec picChar_lh__d1 _lh_picChar_arg1_0 =
  (if (isUpper_lh__d1 _lh_picChar_arg1_0) then
    ((atIndex_lh__d2 ((int_of_char _lh_picChar_arg1_0) - (int_of_char 'A'))) alphas_lh__d2)
  else
    (if (isLower_lh__d1 _lh_picChar_arg1_0) then
      ((atIndex_lh__d1 ((int_of_char _lh_picChar_arg1_0) - (int_of_char 'a'))) alphas_lh__d1)
    else
      (if (isSpace_lh__d1 _lh_picChar_arg1_0) then
        blank_lh__d1
      else
        (if (isDigit_lh__d1 _lh_picChar_arg1_0) then
          ((atIndex_lh__d3 ((int_of_char _lh_picChar_arg1_0) - (int_of_char '0'))) digits_lh__d1)
        else
          (if (_lh_picChar_arg1_0 = '/') then
            slant_lh__d1
          else
            (if (_lh_picChar_arg1_0 = '=') then
              (reverse_lh__d1 slant_lh__d2)
            else
              (head_lh__d1 ((mappend_lh__d5 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                (match _lh_listcomp_fun_para_1 with
                  | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                    (match _lh_listcomp_fun_ls_h_1 with
                      | `LH_P2(_lh_picChar_LH_P2_0_0, _lh_picChar_LH_P2_1_0) -> 
                        (if (_lh_picChar_LH_P2_0_0 = _lh_picChar_arg1_0) then
                          (`LH_C(_lh_picChar_LH_P2_1_0, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                        else
                          (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                      | _ -> 
                        (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
                  | `LH_N -> 
                    (`LH_N))) in
                (_lh_listcomp_fun_1 punct_lh__d1))) (`LH_C((`LH_C((`LH_N), (`LH_N))), (`LH_N)))))))))));;
let rec say_lh__d1 _lh_say_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun x_0 -> 
            (`LH_C('n', x_0))) (unlines_lh__d1 _lh_funcomp_x_3))) ((map_lh__d2 join_lh__d1) _lh_funcomp_x_2))) (transpose_lh__d1 _lh_funcomp_x_1))) ((map_lh__d1 picChar_lh__d1) _lh_funcomp_x_0))) _lh_say_arg1_0);;
let rec testBanner_nofib_lh__d1 _lh_testBanner_nofib_arg1_0 =
  (say_lh__d1 (concat_lh__d1 ((replicate_lh__d1 _lh_testBanner_nofib_arg1_0) (`LH_C('I', (`LH_C('s', (`LH_C(' ', (`LH_C('t', (`LH_C('h', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('n', (`LH_C('e', (`LH_C('r', (`LH_C('?', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
end;;

