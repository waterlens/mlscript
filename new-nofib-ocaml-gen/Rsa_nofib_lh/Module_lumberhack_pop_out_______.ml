

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec const2_lh__d1 =
  (Z.of_int 2);;
let rec const0_lh__d2 =
  (Z.of_int 0);;
let rec const2_lh__d2 =
  (Z.of_int 2);;
let rec const0_lh__d4 =
  (Z.of_int 0);;
let rec even_lh__d1 _lh_even_arg1_0 =
  ((Z.equal ((Z.rem _lh_even_arg1_0) const2_lh__d2)) const0_lh__d4);;
let rec const1_lh__d2 =
  (Z.of_int 1);;
let rec sqr_lh__d1 _lh_sqr_arg1_0 =
  ((Z.mul _lh_sqr_arg1_0) _lh_sqr_arg1_0);;
let rec const1_lh__d1 =
  (Z.of_int 1);;
let rec power_lh__d1 _lh_power_arg1_0 _lh_power_arg2_0 _lh_power_arg3_0 =
  (if ((Z.equal _lh_power_arg1_0) const0_lh__d2) then
    const1_lh__d1
  else
    (if (even_lh__d1 _lh_power_arg1_0) then
      ((Z.rem (sqr_lh__d1 (((power_lh__d1 ((Z.div _lh_power_arg1_0) const2_lh__d1)) _lh_power_arg2_0) _lh_power_arg3_0))) _lh_power_arg2_0)
    else
      ((Z.rem ((Z.mul _lh_power_arg3_0) (((power_lh__d1 ((Z.sub _lh_power_arg1_0) const1_lh__d2)) _lh_power_arg2_0) _lh_power_arg3_0))) _lh_power_arg2_0)));;
let rec map_lh__d1 f_2 ls_2 =
  (ls_2 f_2);;
let rec mappend_lh__d2 xs_1 ys_2 =
  (xs_1 ys_2);;
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
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec foldl_lh__d2 f_0 i_0 ls_0 =
  ((ls_0 f_0) i_0);;
let rec take_lh__d1 n_0 ls_3 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (n_0 > 0) then
    (match ls_3 with
      | `LH_C(h_6, t_6) -> 
        (let rec t_7 = ((take_lh__d1 (n_0 - 1)) t_6) in
          (let rec h_7 = h_6 in
            (((foldl_lh__d2 _lh_popOutId_0_3) ((_lh_popOutId_0_3 _lh_popOutId_1_3) h_7)) t_7)))
      | `LH_N -> 
        _lh_popOutId_1_3)
  else
    _lh_popOutId_1_3);;
let rec map_lh__d2 f_1_5 ls_4 =
  (ls_4 f_1_5);;
let rec collect_lh__d1 _lh_collect_arg1_0 _lh_collect_arg2_0 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_1 =
  (match _lh_collect_arg1_0 with
    | 0 -> 
      (fun f_5 i_2 -> 
        i_2)
    | _ -> 
      (match _lh_collect_arg2_0 with
        | `LH_N -> 
          (fun f_8 i_3 -> 
            i_3)
        | _ -> 
          (let rec t_0 = ((collect_lh__d1 _lh_collect_arg1_0) ((drop_lh__d1 _lh_collect_arg1_0) _lh_collect_arg2_0)) in
            (let rec h_0 = ((take_lh__d1 _lh_collect_arg1_0) _lh_collect_arg2_0) in
              (let rec t_1 = ((map_lh__d1 _lh_popOutId_0_1) t_0) in
                (let rec h_1 = (_lh_popOutId_0_1 h_0) in
                  (let rec t_2 = ((map_lh__d2 _lh_popOutId_1_1) t_1) in
                    (let rec h_2 = (_lh_popOutId_1_1 h_1) in
                      ((mappend_lh__d2 h_2) (concat_lh__d1 t_2))))))))));;
let rec const128_lh__d1 =
  (Z.of_int 128);;
let rec const0_lh__d3 =
  (Z.of_int 0);;
let rec code_lh__d1 _lh_code_arg1_0 =
  (((foldl_lh__d2 (fun x_0 y_0 -> 
    ((Z.add ((Z.mul const128_lh__d1) x_0)) (Z.of_int (int_of_char y_0))))) const0_lh__d3) _lh_code_arg1_0);;
let rec length_lh__d1 ls_5 =
  (match ls_5 with
    | `LH_C(h_8, t_8) -> 
      (1 + (length_lh__d1 t_8))
    | `LH_N -> 
      0);;
let rec size_lh__d1 _lh_size_arg1_0 =
  (((length_lh__d1 (string_of_z _lh_size_arg1_0)) * 47) / 100);;
let rec foldl_lh__d1 f_1 i_1 ls_1 =
  ((ls_1 f_1) i_1);;
let rec mappend_lh__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (let rec t_4 = ((mappend_lh__d1 t_3) ys_0) in
        (let rec h_4 = h_3 in
          (fun ys_1 -> 
            (let rec t_5 = ((mappend_lh__d2 t_4) ys_1) in
              (let rec h_5 = h_4 in
                (fun f_1_1 i_4 -> 
                  (((foldl_lh__d1 f_1_1) ((f_1_1 i_4) h_5)) t_5)))))))
    | `LH_N -> 
      ys_0);;
let rec unlines_lh__d1 _lh_unlines_arg1_0 =
  (concat_lh__d1 ((map_lh__d2 (fun l_0 -> 
    ((mappend_lh__d1 l_0) (let rec t_9 = (fun ys_3 -> 
      ys_3) in
      (let rec h_9 = 'n' in
        (fun ys_4 -> 
          (let rec t_1_0 = ((mappend_lh__d2 t_9) ys_4) in
            (let rec h_1_0 = h_9 in
              (fun f_1_6 i_8 -> 
                (((foldl_lh__d1 f_1_6) ((f_1_6 i_8) h_1_0)) t_1_0)))))))))) _lh_unlines_arg1_0));;
let rec encrypt_lh__d1 _lh_encrypt_arg1_0 _lh_encrypt_arg2_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (unlines_lh__d1 ((map_lh__d1 (fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        (string_of_z (((power_lh__d1 _lh_encrypt_arg2_0) _lh_encrypt_arg1_0) _lh_funcomp_x_3))) (code_lh__d1 _lh_funcomp_x_2)))) _lh_funcomp_x_1))) ((collect_lh__d1 (size_lh__d1 _lh_encrypt_arg1_0)) _lh_funcomp_x_0));;
let rec const0_lh__d1 =
  (Z.of_int 0);;
let rec const31_lh__d1 =
  (Z.of_int 31);;
let rec hash_lh__d1 _lh_hash_arg1_0 =
  (((foldl_lh__d1 (fun acc_0 c_0 -> 
    ((Z.add (Z.of_int (int_of_char c_0))) ((Z.mul acc_0) const31_lh__d1)))) const0_lh__d1) _lh_hash_arg1_0);;
let rec input_lh__d1 =
  lh_large_str_0;;
let rec testRsa_nofib_lh__d1 _lh_testRsa_nofib_arg1_0 =
  (hash_lh__d1 (((encrypt_lh__d1 lh_large_int_0) lh_large_int_1) input_lh__d1));;
let run () = 1 + (Obj.magic ((testRsa_nofib_lh__d1 0)));
end;;

