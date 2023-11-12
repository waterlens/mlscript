
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec copy__d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (match _lh_copy_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_1, ((copy__d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1))));;
let rec drop__d0 _lh_drop_arg1_1 _lh_drop_arg2_1 =
  (match _lh_drop_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1) -> 
      (if (_lh_drop_arg1_1 > 0) then
        ((drop__d0 (_lh_drop_arg1_1 - 1)) _lh_drop_LH_C_1_1)
      else
        (`LH_C(_lh_drop_LH_C_0_1, _lh_drop_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec even__d0 _lh_even_arg1_1 =
  ((_lh_even_arg1_1 mod 2) = 0);;
let rec foldl__d0 f_1_3 i_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (((foldl__d0 f_1_3) ((f_1_3 i_3) h_2_3)) t_2_5)
    | `LH_N -> 
      i_3);;
let rec length__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_7, t_2_9) -> 
      (1 + (length__d0 t_2_9))
    | `LH_N -> 
      0);;
let rec map__d0 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_2 h_2_2), ((map__d0 f_1_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_4 h_2_5), ((map__d1 f_1_4) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d0 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d1 t_2_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec sqr__d0 _lh_sqr_arg1_1 =
  (_lh_sqr_arg1_1 * _lh_sqr_arg1_1);;
let rec take__d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match ls_1_9 with
      | `LH_C(h_2_0, t_2_2) -> 
        (`LH_C(h_2_0, ((take__d0 (n_4 - 1)) t_2_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec code__d0 _lh_code_arg1_1 =
  (((foldl__d0 (fun x_3 y_1 -> 
    ((128 * x_3) + (int_of_char y_1)))) 0) _lh_code_arg1_1)
and collect__d0 _lh_collect_arg1_1 _lh_collect_arg2_1 =
  (match _lh_collect_arg1_1 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(((take__d0 _lh_collect_arg1_1) _lh_collect_arg2_1), ((collect__d0 _lh_collect_arg1_1) ((drop__d0 _lh_collect_arg1_1) _lh_collect_arg2_1))))))
and concat__d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((mappend__d0 h_2_4) (concat__d0 t_2_6))
    | `LH_N -> 
      (`LH_N))
and encrypt__d0 _lh_encrypt_arg1_1 _lh_encrypt_arg2_1 _lh_funcomp_x_4 =
  ((fun _lh_funcomp_x_5 -> 
    (unlines__d0 ((map__d0 (fun _lh_funcomp_x_6 -> 
      ((fun _lh_funcomp_x_7 -> 
        (string_of_int (((power__d0 _lh_encrypt_arg2_1) _lh_encrypt_arg1_1) _lh_funcomp_x_7))) (code__d0 _lh_funcomp_x_6)))) _lh_funcomp_x_5))) ((collect__d0 (size__d0 _lh_encrypt_arg1_1)) _lh_funcomp_x_4))
and power__d0 _lh_power_arg1_1 _lh_power_arg2_1 _lh_power_arg3_1 =
  (match _lh_power_arg1_1 with
    | 0 -> 
      1
    | _ -> 
      (if (even__d0 _lh_power_arg1_1) then
        ((sqr__d0 (((power__d0 (_lh_power_arg1_1 / 2)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)
      else
        ((_lh_power_arg3_1 * (((power__d0 (_lh_power_arg1_1 - 1)) _lh_power_arg2_1) _lh_power_arg3_1)) mod _lh_power_arg2_1)))
and size__d0 _lh_size_arg1_1 =
  (((length__d0 (string_of_int _lh_size_arg1_1)) * 47) / 100)
and testRsa_nofib__d0 _lh_testRsa_nofib_arg1_1 =
  (((encrypt__d0 6367) 5189) ((copy__d0 _lh_testRsa_nofib_arg1_1) 'l'))
and unlines__d0 _lh_unlines_arg1_1 =
  (concat__d0 ((map__d1 (fun l_1 -> 
    ((mappend__d1 l_1) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_1));;
end;;

