
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec input_lh =
  lh_large_str_0;;
let rec const2_lh =
  (Z.of_int 2);;
let rec sqr_lh _lh_sqr_arg1_0 =
  ((Z.mul _lh_sqr_arg1_0) _lh_sqr_arg1_0);;
let rec const0_lh =
  (Z.of_int 0);;
let rec even_lh _lh_even_arg1_0 =
  ((Z.equal ((Z.rem _lh_even_arg1_0) const2_lh)) const0_lh);;
let rec const1_lh =
  (Z.of_int 1);;
let rec power_lh _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (if ((Z.equal _lh_power_arg1_0) const0_lh) then
    const1_lh
  else
    (if (even_lh _lh_power_arg1_0) then
      ((Z.rem (sqr_lh (((power_lh ((Z.div _lh_power_arg1_0) const2_lh)) _lh_power_arg2_0) _lh_power_arg3_0))) _lh_power_arg2_0)
    else
      ((Z.rem ((Z.mul _lh_power_arg3_0) (((power_lh ((Z.sub _lh_power_arg1_0) const1_lh)) _lh_power_arg2_0) _lh_power_arg3_0))) _lh_power_arg2_0)));;
let rec length_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      (1 + (length_lh t_3))
    | `LH_N -> 
      0);;
let rec size_lh _lh_size_arg1_0 =
  (((length_lh (string_of_z _lh_size_arg1_0)) * 47) / 100);;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh t_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_5, t_5) -> 
      ((mappend_lh h_5) (concat_lh t_5))
    | `LH_N -> 
      (`LH_N));;
let rec unlines_lh _lh_unlines_arg1_0 =
  (concat_lh ((map_lh (fun l_0 -> 
    ((mappend_lh l_0) (`LH_C('n', (`LH_N)))))) _lh_unlines_arg1_0));;
let rec foldl_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (((foldl_lh f_1) ((f_1 i_0) h_1)) t_1)
    | `LH_N -> 
      i_0);;
let rec const128_lh =
  (Z.of_int 128);;
let rec code_lh _lh_code_arg1_0 =
  (((foldl_lh (fun x_0 y_0 -> 
    ((Z.add ((Z.mul const128_lh) x_0)) (Z.of_int (int_of_char y_0))))) const0_lh) _lh_code_arg1_0);;
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
let rec take_lh n_0 ls_2 =
  (if (n_0 > 0) then
    (match ls_2 with
      | `LH_C(h_2, t_2) -> 
        (`LH_C(h_2, ((take_lh (n_0 - 1)) t_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
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
        (string_of_z (((power_lh _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code_lh _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect_lh (size_lh _lh_encrypt_arg1_0)) _lh_funcomp_x_0));;
let rec const31_lh =
  (Z.of_int 31);;
let rec hash_lh _lh_hash_arg1_0 =
  (((foldl_lh (fun acc_0 c_0 -> 
    ((Z.add (Z.of_int (int_of_char c_0))) ((Z.mul acc_0) const31_lh)))) const0_lh) _lh_hash_arg1_0);;
let rec testRsa_nofib_lh _lh_testRsa_nofib_arg1_0 =
  (hash_lh (((encrypt_lh lh_large_int_0) lh_large_int_1) input_lh));;
let run () = 1 + (Obj.magic ((testRsa_nofib_lh 0)));
end;;

