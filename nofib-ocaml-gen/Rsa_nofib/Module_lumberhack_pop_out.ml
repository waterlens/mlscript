

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec concat__d0 lss_0 =
  (lss_0 99);;
let rec copy__d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy__d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec drop__d0 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop__d0 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec even__d0 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec foldl__d0 f_1 i_0 ls_1 =
  ((ls_1 f_1) i_0);;
let rec length__d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length__d0 t_2))
    | `LH_N -> 
      0);;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_1_1 ls_4 =
  (ls_4 f_1_1);;
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec sqr__d0 _lh_sqr_arg1_0 =
  (_lh_sqr_arg1_0 * _lh_sqr_arg1_0);;
let rec code__d0 _lh_code_arg1_0 =
  (((foldl__d0 (fun x_0 y_0 -> 
    ((128 * x_0) + (int_of_char y_0)))) 0) _lh_code_arg1_0)
and collect__d0 _lh_collect_arg1_0 _lh_collect_arg2_0 _lh_popOutId_0_3 _lh_popOutId_1_3 _lh_popOutId_2_1 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (let rec t_5 = ((collect__d0 _lh_collect_arg1_0) ((drop__d0 _lh_collect_arg1_0) _lh_collect_arg2_0)) in
            (let rec h_5 = ((take__d0 _lh_collect_arg1_0) _lh_collect_arg2_0) in
              (let rec t_6 = ((map__d0 _lh_popOutId_0_3) t_5) in
                (let rec h_6 = (_lh_popOutId_0_3 h_5) in
                  (let rec t_7 = ((map__d1 _lh_popOutId_1_3) t_6) in
                    (let rec h_7 = (_lh_popOutId_1_3 h_6) in
                      ((mappend__d0 h_7) (concat__d0 t_7))))))))))
and encrypt__d0 _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines__d0 ((map__d0 (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_int (((power__d0 _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code__d0 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect__d0 (size__d0 _lh_encrypt_arg1_0)) _lh_funcomp_x_0))
and mappend__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (let rec t_4 = ((mappend__d1 t_3) ys_1) in
        (let rec h_4 = h_3 in
          (fun ys_2 -> 
            (`LH_C(h_4, ((mappend__d0 t_4) ys_2))))))
    | `LH_N -> 
      ys_1)
and power__d0 _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (match _lh_power_arg1_0 with
    | 0 -> 
      1
    | _ -> 
      (if (even__d0 _lh_power_arg1_0) then
        ((sqr__d0 (((power__d0 (_lh_power_arg1_0 / 2)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)
      else
        ((_lh_power_arg3_0 * (((power__d0 (_lh_power_arg1_0 - 1)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)))
and size__d0 _lh_size_arg1_0 =
  (((length__d0 (string_of_int _lh_size_arg1_0)) * 47) / 100)
and take__d0 n_0 ls_2 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_0, t_0) -> 
        (let rec t_1 = ((take__d0 (n_0 - 1)) t_0) in
          (let rec h_1 = h_0 in
            (((foldl__d0 _lh_popOutId_0_1) ((_lh_popOutId_0_1 _lh_popOutId_1_1) h_1)) t_1)))
      | `LH_N -> 
        _lh_popOutId_1_1)
  else
    _lh_popOutId_1_1)
and testRsa_nofib__d0 _lh_testRsa_nofib_arg1_0 =
  (((encrypt__d0 6367) 5189) ((copy__d0 _lh_testRsa_nofib_arg1_0) 'l'))
and unlines__d0 _lh_unlines_arg1_0 =
  (concat__d0 ((map__d1 (fun l_0 -> 
    ((mappend__d1 l_0) (let rec t_8 = (fun ys_3 -> 
      ys_3) in
      (let rec h_8 = 'n' in
        (fun ys_4 -> 
          (`LH_C(h_8, ((mappend__d0 t_8) ys_4))))))))) _lh_unlines_arg1_0));;
end;;

