

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______ = struct
let rec sqr_lh__d1 _lh_sqr_arg1_0 =
  (_lh_sqr_arg1_0 * _lh_sqr_arg1_0);;
let rec even_lh__d1 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec power_lh__d1 _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (match _lh_power_arg1_0 with
    | 0 -> 
      1
    | _ -> 
      (if (even_lh__d1 _lh_power_arg1_0) then
        ((sqr_lh__d1 (((power_lh__d1 (_lh_power_arg1_0 / 2)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)
      else
        ((_lh_power_arg3_0 * (((power_lh__d1 (_lh_power_arg1_0 - 1)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)));;
let rec drop_lh__d1 _lh_drop_arg1_0 _lh_drop_arg2_0 =
  (match _lh_drop_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0) -> 
      (if (_lh_drop_arg1_0 > 0) then
        ((drop_lh__d1 (_lh_drop_arg1_0 - 1)) _lh_drop_LH_C_1_0)
      else
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec take_lh__d1 n_0 ls_3 =
  (if (n_0 > 0) then
    (match ls_3 with
      | `LH_C(h_6, t_6) -> 
        (let rec t_7 = ((take_lh__d1 (n_0 - 1)) t_6) in
          (let rec h_7 = h_6 in
            (fun f_8 i_1 -> 
              ((t_7 f_8) ((f_8 i_1) h_7)))))
      | `LH_N -> 
        (fun f_9 i_2 -> 
          i_2))
  else
    (fun f_1_0 i_3 -> 
      i_3));;
let rec collect_lh__d1 _lh_collect_arg1_0 _lh_collect_arg2_0 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (fun f_2 f_3 _lh_dummy_0 -> 
        (`LH_N))
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (fun f_4 f_5 _lh_dummy_1 -> 
            (`LH_N))
        | _ -> 
          (let rec t_0 = ((collect_lh__d1 _lh_collect_arg1_0) ((drop_lh__d1 _lh_collect_arg1_0) _lh_collect_arg2_0)) in
            (let rec h_0 = ((take_lh__d1 _lh_collect_arg1_0) _lh_collect_arg2_0) in
              (fun f_6 -> 
                (let rec t_1 = (t_0 f_6) in
                  (let rec h_1 = (f_6 h_0) in
                    (fun f_7 -> 
                      (let rec t_2 = (t_1 f_7) in
                        (let rec h_2 = (f_7 h_1) in
                          (fun _lh_dummy_2 -> 
                            (h_2 (t_2 99)))))))))))));;
let rec code_lh__d1 _lh_code_arg1_0 =
  ((_lh_code_arg1_0 (fun x_0 y_0 -> 
    ((128 * x_0) + (int_of_char y_0)))) 0);;
let rec length_lh__d1 ls_2 =
  (match ls_2 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_lh__d1 t_3))
    | `LH_N -> 
      0);;
let rec size_lh__d1 _lh_size_arg1_0 =
  (((length_lh__d1 (string_of_int _lh_size_arg1_0)) * 47) / 100);;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (let rec t_5 = ((mappend_lh__d1 t_4) ys_0) in
        (let rec h_5 = h_4 in
          (fun ys_1 -> 
            (`LH_C(h_5, (t_5 ys_1))))))
    | `LH_N -> 
      ys_0);;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  ((_lh_unlines_arg1_0 (fun l_0 -> 
    ((mappend_lh__d1 l_0) (let rec t_8 = (fun ys_3 -> 
      ys_3) in
      (let rec h_8 = 'n' in
        (fun ys_4 -> 
          (`LH_C(h_8, (t_8 ys_4))))))))) 99);;
let rec encrypt_lh__d1 _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines_lh__d1 (_lh_funcomp_x_1 (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_int (((power_lh__d1 _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code_lh__d1 _lh_funcomp_x_2)))))) ((collect_lh__d1 (size_lh__d1 _lh_encrypt_arg1_0)) _lh_funcomp_x_0));;
let rec copy_lh__d1 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_lh__d1 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec testRsa_nofib_lh__d1 _lh_testRsa_nofib_arg1_0 =
  (((encrypt_lh__d1 6367) 5189) ((copy_lh__d1 _lh_testRsa_nofib_arg1_0) 'l'));;
end;;

