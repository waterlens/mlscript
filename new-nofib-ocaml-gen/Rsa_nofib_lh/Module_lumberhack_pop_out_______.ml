

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec even_lh _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec sqr_lh _lh_sqr_arg1_0 =
  (_lh_sqr_arg1_0 * _lh_sqr_arg1_0);;
let rec power_lh _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (match _lh_power_arg1_0 with
    | 0 -> 
      1
    | _ -> 
      (if (even_lh _lh_power_arg1_0) then
        ((sqr_lh (((power_lh (_lh_power_arg1_0 / 2)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)
      else
        ((_lh_power_arg3_0 * (((power_lh (_lh_power_arg1_0 - 1)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)));;
let rec length_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (1 + (length_lh t_0))
    | `LH_N -> 
      0);;
let rec size_lh _lh_size_arg1_0 =
  (((length_lh (string_of_int _lh_size_arg1_0)) * 47) / 100);;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh t_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_lh h_3) (concat_lh t_3))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh f_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_1 h_5), ((map_lh f_1) t_5)))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_0 -> 
    ((mappend_lh l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec foldl_lh f_0 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (((foldl_lh f_0) ((f_0 i_0) h_2)) t_2)
    | `LH_N -> 
      i_0);;
let rec code_lh _lh_code_arg1_0 =
  (((foldl_lh (fun x_0 y_0 -> 
    ((128 * x_0) + (int_of_char y_0)))) 0) _lh_code_arg1_0);;
let rec take_lh n_0 ls_1 =
  (if (n_0 > 0) then
    (match ls_1 with
      | `LH_C(h_1, t_1) -> 
        (`LH_C(h_1, ((take_lh (n_0 - 1)) t_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec drop_lh _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec collect_lh _lh_collect_arg1_0 _lh_collect_arg2_0 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(((take_lh _lh_collect_arg1_0) _lh_collect_arg2_0), ((collect_lh _lh_collect_arg1_0) ((drop_lh _lh_collect_arg1_0) _lh_collect_arg2_0))))));;
let rec encrypt_lh _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines_lh ((map_lh (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_int (((power_lh _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code_lh _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect_lh (size_lh _lh_encrypt_arg1_0)) _lh_funcomp_x_0));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec testRsa_nofib_lh _lh_testRsa_nofib_arg1_0 =
  (((encrypt_lh 6367) 5189) ((copy_lh _lh_testRsa_nofib_arg1_0) 'l'));;
end;;

