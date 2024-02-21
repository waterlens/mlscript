

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec even_lh__d1 _lh_even_arg1_0 =
  ((_lh_even_arg1_0 mod 2) = 0);;
let rec sqr_lh__d1 _lh_sqr_arg1_0 =
  (_lh_sqr_arg1_0 * _lh_sqr_arg1_0);;
let rec power_lh__d1 _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (match _lh_power_arg1_0 with
    | 0 -> 
      1
    | _ -> 
      (if (even_lh__d1 _lh_power_arg1_0) then
        ((sqr_lh__d1 (((power_lh__d1 (_lh_power_arg1_0 / 2)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)
      else
        ((_lh_power_arg3_0 * (((power_lh__d1 (_lh_power_arg1_0 - 1)) _lh_power_arg2_0) _lh_power_arg3_0)) mod _lh_power_arg2_0)));;
let rec map_lh__d1 f_2 ls_4 =
  (match ls_4 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C((f_2 h_7), ((map_lh__d1 f_2) t_7)))
    | `LH_N -> 
      (`LH_N));;
let rec take_lh__d1 n_0 ls_2 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_5, t_5) -> 
        (`LH_C(h_5, ((take_lh__d1 (n_0 - 1)) t_5)))
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
        (`LH_C(_lh_drop_LH_C_0_0, _lh_drop_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec collect_lh__d1 _lh_collect_arg1_0 _lh_collect_arg2_0 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (`LH_C(((take_lh__d1 _lh_collect_arg1_0) _lh_collect_arg2_0), ((collect_lh__d1 _lh_collect_arg1_0) ((drop_lh__d1 _lh_collect_arg1_0) _lh_collect_arg2_0))))));;
let rec foldl_lh__d1 f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_4, t_4) -> 
      (((foldl_lh__d1 f_1) ((f_1 i_0) h_4)) t_4)
    | `LH_N -> 
      i_0);;
let rec code_lh__d1 _lh_code_arg1_0 =
  (((foldl_lh__d1 (fun x_0 y_0 -> 
    ((128 * x_0) + (int_of_char y_0)))) 0) _lh_code_arg1_0);;
let rec length_lh__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_6, t_6) -> 
      (1 + (length_lh__d1 t_6))
    | `LH_N -> 
      0);;
let rec size_lh__d1 _lh_size_arg1_0 =
  (((length_lh__d1 (string_of_int _lh_size_arg1_0)) * 47) / 100);;
let rec mappend_lh__d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d2 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_2, t_2) -> 
      ((mappend_lh__d2 h_2) (concat_lh__d1 t_2))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d2 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C((f_0 h_3), ((map_lh__d2 f_0) t_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d1 t_1) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d1 ((map_lh__d2 (fun l_0 -> 
    ((mappend_lh__d1 l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec encrypt_lh__d1 _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines_lh__d1 ((map_lh__d1 (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_int (((power_lh__d1 _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code_lh__d1 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect_lh__d1 (size_lh__d1 _lh_encrypt_arg1_0)) _lh_funcomp_x_0));;
let rec copy_lh__d1 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (match _lh_copy_arg1_0 with
    | 0 -> 
      (`LH_N)
    | _ -> 
      (`LH_C(_lh_copy_arg2_0, ((copy_lh__d1 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0))));;
let rec testRsa_nofib_lh__d1 _lh_testRsa_nofib_arg1_0 =
  (((encrypt_lh__d1 6367) 5189) ((copy_lh__d1 _lh_testRsa_nofib_arg1_0) 'l'));;
let run () = 1 + (Obj.magic ((testRsa_nofib_lh__d1 50520)));
end;;

