

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end) = struct
let rec map_lh__d1 f_8 ls_5 =
  (ls_5 f_8);;
let rec snd_lh__d1 _lh_snd_arg1_0 =
  _lh_snd_arg1_0;;
let rec foldr_lh__d1 f_5 i_2 ls_1 =
  ((ls_1 f_5) i_2);;
let rec hash_lh__d1 _lh_hash_arg1_0 =
  (let rec u8_0 = (fun x_0 -> 
    ((fun _lh_funcomp_x_0 -> 
      (int_of_float ((fun x_1 -> 
        (255.0 *. x_1)) _lh_funcomp_x_0))) x_0)) in
    (((foldr_lh__d1 (fun rgb_0 acc_0 -> 
      (let rec _lh_matchIdent_2_1 = rgb_0 in
        (match _lh_matchIdent_2_1 with
          | `LH_P3(_lh_hash_LH_P3_0_0, _lh_hash_LH_P3_1_0, _lh_hash_LH_P3_2_0) -> 
            ((((u8_0 _lh_hash_LH_P3_0_0) + ((u8_0 _lh_hash_LH_P3_1_0) * 7)) + ((u8_0 _lh_hash_LH_P3_2_0) * 23)) + (acc_0 * 61))
          | _ -> 
            (failwith "error"))))) 0) _lh_hash_arg1_0));;
let rec vecscale_lh__d2 _lh_vecscale_arg1_0 _lh_vecscale_arg2_0 =
  (match _lh_vecscale_arg1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_0, _lh_vecscale_LH_P3_1_0, _lh_vecscale_LH_P3_2_0) -> 
      (`LH_P3((_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_0_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_1_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_2_0)))
    | _ -> 
      (failwith "error"));;
let rec s2_lh__d2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d1_d0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec testspheres_lh__d1 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, s2_lh__d1)), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, s2_lh__d3)), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, s2_lh__d6)), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, s2_lh__d5)), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, s2_lh__d7)), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, s2_lh__d1_d0)), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, s2_lh__d9)), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, s2_lh__d4)), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, s2_lh__d8)), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, s2_lh__d2)), (`LH_N)))))))))))))))))))));;
let rec vecscale_lh__d3 _lh_vecscale_arg1_3 _lh_vecscale_arg2_4 =
  (_lh_vecscale_arg1_3 _lh_vecscale_arg2_4);;
let rec vecscale_lh__d4 _lh_vecscale_arg1_5 _lh_vecscale_arg2_6 =
  (match _lh_vecscale_arg1_5 with
    | `LH_P3(_lh_vecscale_LH_P3_0_5, _lh_vecscale_LH_P3_1_5, _lh_vecscale_LH_P3_2_5) -> 
      (let rec _lh_vecadd_LH_P3_2_1_5 = (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_2_5) in
        (let rec _lh_vecadd_LH_P3_1_1_5 = (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_1_5) in
          (let rec _lh_vecadd_LH_P3_0_1_5 = (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_0_5) in
            (fun _lh_vecadd_arg2_5 -> 
              (((_lh_vecadd_arg2_5 _lh_vecadd_LH_P3_0_1_5) _lh_vecadd_LH_P3_1_1_5) _lh_vecadd_LH_P3_2_1_5)))))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh__d1 a_1 b_1 _lh_popOutId_0_2 _lh_popOutId_1_2 _lh_popOutId_2_2 _lh_popOutId_3_1 _lh_popOutId_4_0 =
  (if (a_1 <= b_1) then
    (fun f_1_0 f_1_1 i_4 -> 
      (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
        (let rec _lh_listcomp_fun_ls_h_8 = a_1 in
          (let rec t_1_2 = (_lh_popOutId_1_2 _lh_listcomp_fun_ls_t_8) in
            (let rec h_1_0 = (let rec _lh_snd_LH_P2_1_0 = ((_lh_popOutId_2_2 _lh_popOutId_0_2) _lh_listcomp_fun_ls_h_8) in
              (let rec _lh_snd_LH_P2_0_0 = (`LH_P2(_lh_popOutId_0_2, _lh_listcomp_fun_ls_h_8)) in
                _lh_snd_LH_P2_1_0)) in
              (let rec t_1_3 = ((map_lh__d1 f_1_0) t_1_2) in
                (let rec h_1_1 = (f_1_0 h_1_0) in
                  ((f_1_1 h_1_1) (((foldr_lh__d1 f_1_1) i_4) t_1_3)))))))))
  else
    (_lh_popOutId_4_0 _lh_popOutId_3_1));;
let rec enumFromTo_lh__d2 a_0 b_0 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_1 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_5 = ((enumFromTo_lh__d2 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_0 in
        (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_6 -> 
          (((((_lh_listcomp_fun_para_6 _lh_listcomp_fun_ls_h_5) _lh_listcomp_fun_7) _lh_popOutId_2_1) _lh_listcomp_fun_ls_t_5) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_7 ((enumFromTo_lh__d1 0) (_lh_popOutId_1_1 - 1))))))
  else
    (fun f_3 f_4 i_1 -> 
      i_1));;
let rec pi_lh__d2 =
  3.141592653589793;;
let rec dtor_lh__d2 _lh_dtor_arg1_0 =
  ((_lh_dtor_arg1_0 *. pi_lh__d2) /. 180.0);;
let rec vecadd_lh__d1 _lh_vecadd_arg1_6 _lh_vecadd_arg2_1_1 =
  (_lh_vecadd_arg1_6 _lh_vecadd_arg2_1_1);;
let rec vecsub_lh__d1 _lh_vecsub_arg1_2 _lh_vecsub_arg2_2 =
  (match _lh_vecsub_arg1_2 with
    | `LH_P3(_lh_vecsub_LH_P3_0_2, _lh_vecsub_LH_P3_1_2, _lh_vecsub_LH_P3_2_2) -> 
      (((_lh_vecsub_arg2_2 _lh_vecsub_LH_P3_0_2) _lh_vecsub_LH_P3_1_2) _lh_vecsub_LH_P3_2_2)
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d5 _lh_vecscale_arg1_2 _lh_vecscale_arg2_3 =
  (match _lh_vecscale_arg1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_3, _lh_vecscale_LH_P3_1_3, _lh_vecscale_LH_P3_2_3) -> 
      (let rec _lh_vecadd_LH_P3_2_1_0 = (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_2_3) in
        (let rec _lh_vecadd_LH_P3_1_1_0 = (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_1_3) in
          (let rec _lh_vecadd_LH_P3_0_1_0 = (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_0_3) in
            (fun _lh_vecadd_LH_P3_0_1_1 _lh_vecadd_LH_P3_1_1_1 _lh_vecadd_LH_P3_2_1_1 -> 
              (let rec _lh_vecadd_LH_P3_2_1_2 = (_lh_vecadd_LH_P3_2_1_1 +. _lh_vecadd_LH_P3_2_1_0) in
                (let rec _lh_vecadd_LH_P3_1_1_2 = (_lh_vecadd_LH_P3_1_1_1 +. _lh_vecadd_LH_P3_1_1_0) in
                  (let rec _lh_vecadd_LH_P3_0_1_2 = (_lh_vecadd_LH_P3_0_1_1 +. _lh_vecadd_LH_P3_0_1_0) in
                    (fun _lh_vecadd_arg2_2 -> 
                      (((_lh_vecadd_arg2_2 _lh_vecadd_LH_P3_0_1_2) _lh_vecadd_LH_P3_1_1_2) _lh_vecadd_LH_P3_2_1_2)))))))))
    | _ -> 
      (failwith "error"));;
let rec vecadd_lh__d3 _lh_vecadd_arg1_4 _lh_vecadd_arg2_8 =
  (_lh_vecadd_arg1_4 _lh_vecadd_arg2_8);;
let rec vecnorm_lh__d4 _lh_vecnorm_arg1_1 =
  (match _lh_vecnorm_arg1_1 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_3, _lh_vecnorm_LH_P3_1_3, _lh_vecnorm_LH_P3_2_3) -> 
      (let rec len_3 = (sqrt (((_lh_vecnorm_LH_P3_0_3 *. _lh_vecnorm_LH_P3_0_3) +. (_lh_vecnorm_LH_P3_1_3 *. _lh_vecnorm_LH_P3_1_3)) +. (_lh_vecnorm_LH_P3_2_3 *. _lh_vecnorm_LH_P3_2_3))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_3 /. len_3), (_lh_vecnorm_LH_P3_1_3 /. len_3), (_lh_vecnorm_LH_P3_2_3 /. len_3))), len_3)))
    | _ -> 
      (failwith "error"));;
let rec head_lh__d2 ls_0 =
  (match ls_0 with
    | `LH_C(h_4, t_6) -> 
      h_4
    | `LH_N -> 
      (failwith "error"));;
let rec infinity_lh__d1 =
  100000000.0;;
let rec foldr_lh__d2 f_6 i_3 ls_2 =
  (match ls_2 with
    | `LH_C(h_8, t_1_0) -> 
      ((f_6 h_8) (((foldr_lh__d2 f_6) i_3) t_1_0))
    | `LH_N -> 
      i_3);;
let rec mappend_lh__d1 xs_0 ys_8 =
  (xs_0 ys_8);;
let rec head_lh__d3 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_4, t_1_6) -> 
      h_1_4
    | `LH_N -> 
      (failwith "error"));;
let rec specularsurf_lh__d1 _lh_specularsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `Specular(_lh_specularsurf_Specular_0_0) -> 
            (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_0 = _lh_specularsurf_Specular_0_0 in
                (fun ys_0 -> 
                  (`LH_C(h_0, ((mappend_lh__d1 t_0) ys_0))))))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (fun ys_1 -> 
          ys_1))) in
    (_lh_listcomp_fun_0 _lh_specularsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec vecscale_lh__d7 _lh_vecscale_arg1_1 _lh_vecscale_arg2_2 =
  (match _lh_vecscale_arg1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2, _lh_vecscale_LH_P3_1_2, _lh_vecscale_LH_P3_2_2) -> 
      (`LH_P3((_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_0_2), (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_1_2), (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_2_2)))
    | _ -> 
      (failwith "error"));;
let rec reflectsurf_lh__d1 _lh_reflectsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (match _lh_listcomp_fun_ls_h_3 with
          | `Reflect(_lh_reflectsurf_Reflect_0_0) -> 
            (let rec t_5 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3) in
              (let rec h_3 = _lh_reflectsurf_Reflect_0_0 in
                (fun ys_6 -> 
                  (`LH_C(h_3, ((mappend_lh__d1 t_5) ys_6))))))
          | _ -> 
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (fun ys_7 -> 
          ys_7))) in
    (_lh_listcomp_fun_4 _lh_reflectsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec vecdot_lh__d6 _lh_vecdot_arg1_0 _lh_vecdot_arg2_0 =
  (match _lh_vecdot_arg1_0 with
    | `LH_P3(_lh_vecdot_LH_P3_0_0, _lh_vecdot_LH_P3_1_0, _lh_vecdot_LH_P3_2_0) -> 
      (match _lh_vecdot_arg2_0 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1, _lh_vecdot_LH_P3_1_1, _lh_vecdot_LH_P3_2_1) -> 
          (((_lh_vecdot_LH_P3_0_0 *. _lh_vecdot_LH_P3_0_1) +. (_lh_vecdot_LH_P3_1_0 *. _lh_vecdot_LH_P3_1_1)) +. (_lh_vecdot_LH_P3_2_0 *. _lh_vecdot_LH_P3_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d5 _lh_vecmult_arg1_0 _lh_vecmult_arg2_0 =
  (_lh_vecmult_arg1_0 _lh_vecmult_arg2_0);;
let rec bodysurf_lh__d2 _lh_bodysurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (match _lh_listcomp_fun_ls_h_1 with
          | `Body(_lh_bodysurf_Body_0_0) -> 
            (let rec t_1 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1) in
              (let rec h_1 = _lh_bodysurf_Body_0_0 in
                (fun ys_2 -> 
                  (`LH_C(h_1, ((mappend_lh__d1 t_1) ys_2))))))
          | _ -> 
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (fun ys_3 -> 
          ys_3))) in
    (_lh_listcomp_fun_2 _lh_bodysurf_arg1_0))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))));;
let rec specpowsurf_lh__d1 _lh_specpowsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (match _lh_listcomp_fun_ls_h_2 with
          | `Specpow(_lh_specpowsurf_Specpow_0_0) -> 
            (let rec t_4 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2) in
              (let rec h_2 = _lh_specpowsurf_Specpow_0_0 in
                (fun ys_4 -> 
                  (`LH_C(h_2, ((mappend_lh__d1 t_4) ys_4))))))
          | _ -> 
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2))
      | `LH_N -> 
        (fun ys_5 -> 
          ys_5))) in
    (_lh_listcomp_fun_3 _lh_specpowsurf_arg1_0))) (`LH_C(8.0, (`LH_N)))));;
let rec vecscale_lh__d1_d4 _lh_vecscale_arg1_9 _lh_vecscale_arg2_1_0 =
  (match _lh_vecscale_arg1_9 with
    | `LH_P3(_lh_vecscale_LH_P3_0_9, _lh_vecscale_LH_P3_1_9, _lh_vecscale_LH_P3_2_9) -> 
      (`LH_P3((_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_0_9), (_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_1_9), (_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_2_9)))
    | _ -> 
      (failwith "error"));;
let rec specularsurf_lh__d2 _lh_specularsurf_arg1_1 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_0 -> 
    (match _lh_listcomp_fun_para_1_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_1_2 with
          | `Specular(_lh_specularsurf_Specular_0_1) -> 
            (let rec t_1_5 = (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2) in
              (let rec h_1_3 = _lh_specularsurf_Specular_0_1 in
                (fun ys_1_7 -> 
                  (`LH_C(h_1_3, ((mappend_lh__d1 t_1_5) ys_1_7))))))
          | _ -> 
            (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (fun ys_1_8 -> 
          ys_1_8))) in
    (_lh_listcomp_fun_1_6 _lh_specularsurf_arg1_1))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec epsilon_lh__d1 =
  0.000001;;
let rec vecadd_lh__d8 _lh_vecadd_arg1_9 _lh_vecadd_arg2_1_4 =
  (_lh_vecadd_arg1_9 _lh_vecadd_arg2_1_4);;
let rec tail_lh__d1 ls_4 =
  (match ls_4 with
    | `LH_C(h_9, t_1_1) -> 
      t_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec vecdot_lh__d2 _lh_vecdot_arg1_3 _lh_vecdot_arg2_3 =
  (match _lh_vecdot_arg1_3 with
    | `LH_P3(_lh_vecdot_LH_P3_0_6, _lh_vecdot_LH_P3_1_6, _lh_vecdot_LH_P3_2_6) -> 
      (match _lh_vecdot_arg2_3 with
        | `LH_P3(_lh_vecdot_LH_P3_0_7, _lh_vecdot_LH_P3_1_7, _lh_vecdot_LH_P3_2_7) -> 
          (((_lh_vecdot_LH_P3_0_6 *. _lh_vecdot_LH_P3_0_7) +. (_lh_vecdot_LH_P3_1_6 *. _lh_vecdot_LH_P3_1_7)) +. (_lh_vecdot_LH_P3_2_6 *. _lh_vecdot_LH_P3_2_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot_lh__d3 _lh_vecdot_arg1_2 _lh_vecdot_arg2_2 =
  (match _lh_vecdot_arg1_2 with
    | `LH_P3(_lh_vecdot_LH_P3_0_4, _lh_vecdot_LH_P3_1_4, _lh_vecdot_LH_P3_2_4) -> 
      (match _lh_vecdot_arg2_2 with
        | `LH_P3(_lh_vecdot_LH_P3_0_5, _lh_vecdot_LH_P3_1_5, _lh_vecdot_LH_P3_2_5) -> 
          (((_lh_vecdot_LH_P3_0_4 *. _lh_vecdot_LH_P3_0_5) +. (_lh_vecdot_LH_P3_1_4 *. _lh_vecdot_LH_P3_1_5)) +. (_lh_vecdot_LH_P3_2_4 *. _lh_vecdot_LH_P3_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub_lh__d3 _lh_vecsub_arg1_1 _lh_vecsub_arg2_1 =
  (match _lh_vecsub_arg1_1 with
    | `LH_P3(_lh_vecsub_LH_P3_0_0, _lh_vecsub_LH_P3_1_0, _lh_vecsub_LH_P3_2_0) -> 
      (match _lh_vecsub_arg2_1 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1, _lh_vecsub_LH_P3_1_1, _lh_vecsub_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_0 -. _lh_vecsub_LH_P3_0_1), (_lh_vecsub_LH_P3_1_0 -. _lh_vecsub_LH_P3_1_1), (_lh_vecsub_LH_P3_2_0 -. _lh_vecsub_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec sphereintersect_lh__d1 _lh_sphereintersect_arg1_0 _lh_sphereintersect_arg2_0 _lh_sphereintersect_arg3_0 =
  (match _lh_sphereintersect_arg3_0 with
    | `Sphere(_lh_sphereintersect_Sphere_0_0, _lh_sphereintersect_Sphere_1_0, _lh_sphereintersect_Sphere_2_0) -> 
      (let rec m_0 = ((vecsub_lh__d3 _lh_sphereintersect_arg1_0) _lh_sphereintersect_Sphere_0_0) in
        (let rec bm_0 = ((vecdot_lh__d2 m_0) _lh_sphereintersect_arg2_0) in
          (let rec m2_0 = ((vecdot_lh__d3 m_0) m_0) in
            (let rec disc_2 = (((bm_0 *. bm_0) -. m2_0) +. (_lh_sphereintersect_Sphere_1_0 *. _lh_sphereintersect_Sphere_1_0)) in
              (let rec slo_0 = ((0.0 -. bm_0) -. (sqrt disc_2)) in
                (let rec shi_0 = ((0.0 -. bm_0) +. (sqrt disc_2)) in
                  (if (disc_2 < 0.0) then
                    (`LH_P2(false, 0.0))
                  else
                    (if (slo_0 < 0.0) then
                      (if (shi_0 < 0.0) then
                        (`LH_P2(false, 0.0))
                      else
                        (`LH_P2(true, shi_0)))
                    else
                      (`LH_P2(true, slo_0))))))))))
    | _ -> 
      (failwith "error"));;
let rec null_lh__d1 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec trace_lh__d2 _lh_trace_arg1_1 _lh_trace_arg2_1 _lh_trace_arg3_1 =
  (let rec f_1_4 = (fun d1s1_1 d2s2_1 -> 
    (let rec _lh_matchIdent_2_3 = d1s1_1 in
      (match _lh_matchIdent_2_3 with
        | `LH_P2(_lh_trace_LH_P2_0_4, _lh_trace_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_2_4 = d2s2_1 in
            (match _lh_matchIdent_2_4 with
              | `LH_P2(_lh_trace_LH_P2_0_5, _lh_trace_LH_P2_1_5) -> 
                (if (_lh_trace_LH_P2_0_4 < _lh_trace_LH_P2_0_5) then
                  (`LH_P2(_lh_trace_LH_P2_0_4, _lh_trace_LH_P2_1_4))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_5, _lh_trace_LH_P2_1_5)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_1 = (fun xss_1 -> 
      (let rec _lh_matchIdent_2_5 = xss_1 in
        (match _lh_matchIdent_2_5 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1, _lh_trace_LH_C_1_1) -> 
            (let rec _lh_matchIdent_2_6 = (((sphereintersect_lh__d1 _lh_trace_arg2_1) _lh_trace_arg3_1) _lh_trace_LH_C_0_1) in
              (match _lh_matchIdent_2_6 with
                | `LH_P2(_lh_trace_LH_P2_0_6, _lh_trace_LH_P2_1_6) -> 
                  (if _lh_trace_LH_P2_0_6 then
                    (`LH_C((`LH_P2(_lh_trace_LH_P2_1_6, _lh_trace_LH_C_0_1)), (sphmap_1 _lh_trace_LH_C_1_1)))
                  else
                    (sphmap_1 _lh_trace_LH_C_1_1))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_1 = (sphmap_1 _lh_trace_arg1_1) in
        (if (null_lh__d1 dists_1) then
          (`LH_P3(false, infinity_lh__d1, (head_lh__d3 _lh_trace_arg1_1)))
        else
          (let rec _lh_matchIdent_2_7 = (((foldr_lh__d2 f_1_4) (head_lh__d3 dists_1)) (tail_lh__d1 dists_1)) in
            (match _lh_matchIdent_2_7 with
              | `LH_P2(_lh_trace_LH_P2_0_7, _lh_trace_LH_P2_1_7) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_7, _lh_trace_LH_P2_1_7))
              | _ -> 
                (failwith "error")))))));;
let rec vecadd_lh__d1_d1 _lh_vecadd_arg1_1_0 _lh_vecadd_arg2_1_6 =
  (match _lh_vecadd_arg1_1_0 with
    | `LH_P3(_lh_vecadd_LH_P3_0_3_1, _lh_vecadd_LH_P3_1_3_1, _lh_vecadd_LH_P3_2_3_1) -> 
      (match _lh_vecadd_arg2_1_6 with
        | `LH_P3(_lh_vecadd_LH_P3_0_3_2, _lh_vecadd_LH_P3_1_3_2, _lh_vecadd_LH_P3_2_3_2) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_3_1 +. _lh_vecadd_LH_P3_0_3_2), (_lh_vecadd_LH_P3_1_3_1 +. _lh_vecadd_LH_P3_1_3_2), (_lh_vecadd_LH_P3_2_3_1 +. _lh_vecadd_LH_P3_2_3_2)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d1_d1 _lh_vecscale_arg1_1_3 _lh_vecscale_arg2_1_4 =
  (match _lh_vecscale_arg1_1_3 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_3, _lh_vecscale_LH_P3_1_1_3, _lh_vecscale_LH_P3_2_1_3) -> 
      (let rec _lh_vecmult_LH_P3_2_1_0 = (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_2_1_3) in
        (let rec _lh_vecmult_LH_P3_1_1_0 = (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_1_1_3) in
          (let rec _lh_vecmult_LH_P3_0_1_0 = (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_0_1_3) in
            (fun _lh_vecmult_arg2_9 -> 
              (match _lh_vecmult_arg2_9 with
                | `LH_P3(_lh_vecmult_LH_P3_0_1_1, _lh_vecmult_LH_P3_1_1_1, _lh_vecmult_LH_P3_2_1_1) -> 
                  (let rec _lh_vecadd_LH_P3_2_3_5 = (_lh_vecmult_LH_P3_2_1_0 *. _lh_vecmult_LH_P3_2_1_1) in
                    (let rec _lh_vecadd_LH_P3_1_3_5 = (_lh_vecmult_LH_P3_1_1_0 *. _lh_vecmult_LH_P3_1_1_1) in
                      (let rec _lh_vecadd_LH_P3_0_3_5 = (_lh_vecmult_LH_P3_0_1_0 *. _lh_vecmult_LH_P3_0_1_1) in
                        (fun _lh_vecadd_LH_P3_0_3_6 _lh_vecadd_LH_P3_1_3_6 _lh_vecadd_LH_P3_2_3_6 -> 
                          (`LH_P3((_lh_vecadd_LH_P3_0_3_6 +. _lh_vecadd_LH_P3_0_3_5), (_lh_vecadd_LH_P3_1_3_6 +. _lh_vecadd_LH_P3_1_3_5), (_lh_vecadd_LH_P3_2_3_6 +. _lh_vecadd_LH_P3_2_3_5)))))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecadd_lh__d9 _lh_vecadd_arg1_1 _lh_vecadd_arg2_1 =
  (_lh_vecadd_arg1_1 _lh_vecadd_arg2_1);;
let rec vecscale_lh__d1_d3 _lh_vecscale_arg1_4 _lh_vecscale_arg2_5 =
  (match _lh_vecscale_arg1_4 with
    | `LH_P3(_lh_vecscale_LH_P3_0_4, _lh_vecscale_LH_P3_1_4, _lh_vecscale_LH_P3_2_4) -> 
      (let rec _lh_vecmult_LH_P3_2_2 = (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_2_4) in
        (let rec _lh_vecmult_LH_P3_1_2 = (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_1_4) in
          (let rec _lh_vecmult_LH_P3_0_2 = (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_0_4) in
            (fun _lh_vecmult_arg2_2 -> 
              (match _lh_vecmult_arg2_2 with
                | `LH_P3(_lh_vecmult_LH_P3_0_3, _lh_vecmult_LH_P3_1_3, _lh_vecmult_LH_P3_2_3) -> 
                  (let rec _lh_vecadd_LH_P3_2_1_4 = (_lh_vecmult_LH_P3_2_2 *. _lh_vecmult_LH_P3_2_3) in
                    (let rec _lh_vecadd_LH_P3_1_1_4 = (_lh_vecmult_LH_P3_1_2 *. _lh_vecmult_LH_P3_1_3) in
                      (let rec _lh_vecadd_LH_P3_0_1_4 = (_lh_vecmult_LH_P3_0_2 *. _lh_vecmult_LH_P3_0_3) in
                        (fun _lh_vecadd_arg2_4 -> 
                          (((_lh_vecadd_arg2_4 _lh_vecadd_LH_P3_0_1_4) _lh_vecadd_LH_P3_1_1_4) _lh_vecadd_LH_P3_2_1_4)))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d4 _lh_vecmult_arg1_1 _lh_vecmult_arg2_1 =
  (match _lh_vecmult_arg1_1 with
    | `LH_P3(_lh_vecmult_LH_P3_0_0, _lh_vecmult_LH_P3_1_0, _lh_vecmult_LH_P3_2_0) -> 
      (match _lh_vecmult_arg2_1 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1, _lh_vecmult_LH_P3_1_1, _lh_vecmult_LH_P3_2_1) -> 
          (let rec _lh_vecadd_LH_P3_2_1_3 = (_lh_vecmult_LH_P3_2_0 *. _lh_vecmult_LH_P3_2_1) in
            (let rec _lh_vecadd_LH_P3_1_1_3 = (_lh_vecmult_LH_P3_1_0 *. _lh_vecmult_LH_P3_1_1) in
              (let rec _lh_vecadd_LH_P3_0_1_3 = (_lh_vecmult_LH_P3_0_0 *. _lh_vecmult_LH_P3_0_1) in
                (fun _lh_vecadd_arg2_3 -> 
                  (((_lh_vecadd_arg2_3 _lh_vecadd_LH_P3_0_1_3) _lh_vecadd_LH_P3_1_1_3) _lh_vecadd_LH_P3_2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d3 _lh_vecmult_arg1_2 _lh_vecmult_arg2_3 =
  (_lh_vecmult_arg1_2 _lh_vecmult_arg2_3);;
let rec diffusesurf_lh__d1 _lh_diffusesurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (match _lh_listcomp_fun_ls_h_4 with
          | `Diffuse(_lh_diffusesurf_Diffuse_0_0) -> 
            (let rec t_7 = (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4) in
              (let rec h_5 = _lh_diffusesurf_Diffuse_0_0 in
                (fun ys_9 -> 
                  (`LH_C(h_5, ((mappend_lh__d1 t_7) ys_9))))))
          | _ -> 
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_4))
      | `LH_N -> 
        (fun ys_1_0 -> 
          ys_1_0))) in
    (_lh_listcomp_fun_5 _lh_diffusesurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec vecscale_lh__d1_d2 _lh_vecscale_arg1_6 _lh_vecscale_arg2_7 =
  (match _lh_vecscale_arg1_6 with
    | `LH_P3(_lh_vecscale_LH_P3_0_6, _lh_vecscale_LH_P3_1_6, _lh_vecscale_LH_P3_2_6) -> 
      (let rec _lh_vecmult_LH_P3_2_4 = (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_2_6) in
        (let rec _lh_vecmult_LH_P3_1_4 = (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_1_6) in
          (let rec _lh_vecmult_LH_P3_0_4 = (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_0_6) in
            (fun _lh_vecmult_arg2_4 -> 
              (match _lh_vecmult_arg2_4 with
                | `LH_P3(_lh_vecmult_LH_P3_0_5, _lh_vecmult_LH_P3_1_5, _lh_vecmult_LH_P3_2_5) -> 
                  (let rec _lh_vecadd_LH_P3_2_1_6 = (_lh_vecmult_LH_P3_2_4 *. _lh_vecmult_LH_P3_2_5) in
                    (let rec _lh_vecadd_LH_P3_1_1_6 = (_lh_vecmult_LH_P3_1_4 *. _lh_vecmult_LH_P3_1_5) in
                      (let rec _lh_vecadd_LH_P3_0_1_6 = (_lh_vecmult_LH_P3_0_4 *. _lh_vecmult_LH_P3_0_5) in
                        (fun _lh_vecadd_LH_P3_0_1_7 _lh_vecadd_LH_P3_1_1_7 _lh_vecadd_LH_P3_2_1_7 -> 
                          (`LH_P3((_lh_vecadd_LH_P3_0_1_7 +. _lh_vecadd_LH_P3_0_1_6), (_lh_vecadd_LH_P3_1_1_7 +. _lh_vecadd_LH_P3_1_1_6), (_lh_vecadd_LH_P3_2_1_7 +. _lh_vecadd_LH_P3_2_1_6)))))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d2 _lh_vecmult_arg1_3 _lh_vecmult_arg2_6 =
  (_lh_vecmult_arg1_3 _lh_vecmult_arg2_6);;
let rec vecdot_lh__d4 _lh_vecdot_arg1_5 _lh_vecdot_arg2_5 =
  (match _lh_vecdot_arg1_5 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_0, _lh_vecdot_LH_P3_1_1_0, _lh_vecdot_LH_P3_2_1_0) -> 
      (match _lh_vecdot_arg2_5 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_1, _lh_vecdot_LH_P3_1_1_1, _lh_vecdot_LH_P3_2_1_1) -> 
          (((_lh_vecdot_LH_P3_0_1_0 *. _lh_vecdot_LH_P3_0_1_1) +. (_lh_vecdot_LH_P3_1_1_0 *. _lh_vecdot_LH_P3_1_1_1)) +. (_lh_vecdot_LH_P3_2_1_0 *. _lh_vecdot_LH_P3_2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec shadowed_lh__d1 _lh_shadowed_arg1_0 _lh_shadowed_arg2_0 _lh_shadowed_arg3_0 =
  (let rec _lh_matchIdent_0 = (((trace_lh__d2 testspheres_lh__d1) ((vecadd_lh__d1_d1 _lh_shadowed_arg1_0) ((vecscale_lh__d1_d4 _lh_shadowed_arg2_0) epsilon_lh__d1))) _lh_shadowed_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_P3(_lh_shadowed_LH_P3_0_0, _lh_shadowed_LH_P3_1_0, _lh_shadowed_LH_P3_2_0) -> 
        (if (not _lh_shadowed_LH_P3_0_0) then
          (let rec _lh_lightray_LH_P2_1_0 = _lh_shadowed_arg3_0 in
            (let rec _lh_lightray_LH_P2_0_0 = false in
              (fun _lh_lightray_LH_P2_0_1 _lh_lightray_arg4_0 _lh_lightray_arg5_0 cosangle_0 -> 
                (if _lh_lightray_LH_P2_0_0 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_0 = (diffusesurf_lh__d1 _lh_lightray_arg5_0) in
                    (let rec spow_0 = (specpowsurf_lh__d1 _lh_lightray_arg5_0) in
                      (if (cosangle_0 <= 0.0) then
                        (let rec bodycol_0 = (bodysurf_lh__d2 _lh_lightray_arg5_0) in
                          (let rec cosalpha_0 = (0.0 -. ((vecdot_lh__d6 _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_1)) in
                            (let rec diffcont_0 = ((vecmult_lh__d4 ((vecscale_lh__d1_d4 diff_0) (0.0 -. cosangle_0))) _lh_lightray_LH_P2_1_0) in
                              (let rec speccont_0 = (if (cosalpha_0 <= 0.0) then
                                (let rec _lh_vecadd_LH_P3_2_2 = 0.0 in
                                  (let rec _lh_vecadd_LH_P3_1_2 = 0.0 in
                                    (let rec _lh_vecadd_LH_P3_0_2 = 0.0 in
                                      (fun _lh_vecadd_LH_P3_0_3 _lh_vecadd_LH_P3_1_3 _lh_vecadd_LH_P3_2_3 -> 
                                        (`LH_P3((_lh_vecadd_LH_P3_0_3 +. _lh_vecadd_LH_P3_0_2), (_lh_vecadd_LH_P3_1_3 +. _lh_vecadd_LH_P3_1_2), (_lh_vecadd_LH_P3_2_3 +. _lh_vecadd_LH_P3_2_2)))))))
                              else
                                ((vecmult_lh__d3 ((vecscale_lh__d1_d2 bodycol_0) (cosalpha_0 ** spow_0))) _lh_lightray_LH_P2_1_0)) in
                                ((vecadd_lh__d8 diffcont_0) speccont_0)))))
                      else
                        (let rec spec_0 = (specularsurf_lh__d2 _lh_lightray_arg5_0) in
                          (let rec cosalpha_1 = ((vecdot_lh__d4 _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_1) in
                            (let rec diffcont_1 = ((vecmult_lh__d5 ((vecscale_lh__d1_d3 diff_0) cosangle_0)) _lh_lightray_LH_P2_1_0) in
                              (let rec speccont_1 = (if (cosalpha_1 <= 0.0) then
                                (let rec _lh_vecadd_LH_P3_2_4 = 0.0 in
                                  (let rec _lh_vecadd_LH_P3_1_4 = 0.0 in
                                    (let rec _lh_vecadd_LH_P3_0_4 = 0.0 in
                                      (fun _lh_vecadd_LH_P3_0_5 _lh_vecadd_LH_P3_1_5 _lh_vecadd_LH_P3_2_5 -> 
                                        (`LH_P3((_lh_vecadd_LH_P3_0_5 +. _lh_vecadd_LH_P3_0_4), (_lh_vecadd_LH_P3_1_5 +. _lh_vecadd_LH_P3_1_4), (_lh_vecadd_LH_P3_2_5 +. _lh_vecadd_LH_P3_2_4)))))))
                              else
                                ((vecmult_lh__d2 ((vecscale_lh__d1_d1 spec_0) (cosalpha_1 ** spow_0))) _lh_lightray_LH_P2_1_0)) in
                                ((vecadd_lh__d9 diffcont_1) speccont_1))))))))))))
        else
          (let rec _lh_lightray_LH_P2_1_1 = _lh_shadowed_arg3_0 in
            (let rec _lh_lightray_LH_P2_0_2 = true in
              (fun _lh_lightray_LH_P2_0_3 _lh_lightray_arg4_1 _lh_lightray_arg5_1 cosangle_1 -> 
                (if _lh_lightray_LH_P2_0_2 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_1 = (diffusesurf_lh__d1 _lh_lightray_arg5_1) in
                    (let rec spow_1 = (specpowsurf_lh__d1 _lh_lightray_arg5_1) in
                      (if (cosangle_1 <= 0.0) then
                        (let rec bodycol_1 = (bodysurf_lh__d2 _lh_lightray_arg5_1) in
                          (let rec cosalpha_2 = (0.0 -. ((vecdot_lh__d6 _lh_lightray_arg4_1) _lh_lightray_LH_P2_0_3)) in
                            (let rec diffcont_2 = ((vecmult_lh__d4 ((vecscale_lh__d1_d4 diff_1) (0.0 -. cosangle_1))) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_2 = (if (cosalpha_2 <= 0.0) then
                                (let rec _lh_vecadd_LH_P3_2_6 = 0.0 in
                                  (let rec _lh_vecadd_LH_P3_1_6 = 0.0 in
                                    (let rec _lh_vecadd_LH_P3_0_6 = 0.0 in
                                      (fun _lh_vecadd_LH_P3_0_7 _lh_vecadd_LH_P3_1_7 _lh_vecadd_LH_P3_2_7 -> 
                                        (`LH_P3((_lh_vecadd_LH_P3_0_7 +. _lh_vecadd_LH_P3_0_6), (_lh_vecadd_LH_P3_1_7 +. _lh_vecadd_LH_P3_1_6), (_lh_vecadd_LH_P3_2_7 +. _lh_vecadd_LH_P3_2_6)))))))
                              else
                                ((vecmult_lh__d3 ((vecscale_lh__d1_d2 bodycol_1) (cosalpha_2 ** spow_1))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh__d8 diffcont_2) speccont_2)))))
                      else
                        (let rec spec_1 = (specularsurf_lh__d2 _lh_lightray_arg5_1) in
                          (let rec cosalpha_3 = ((vecdot_lh__d4 _lh_lightray_arg4_1) _lh_lightray_LH_P2_0_3) in
                            (let rec diffcont_3 = ((vecmult_lh__d5 ((vecscale_lh__d1_d3 diff_1) cosangle_1)) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_3 = (if (cosalpha_3 <= 0.0) then
                                (let rec _lh_vecadd_LH_P3_2_8 = 0.0 in
                                  (let rec _lh_vecadd_LH_P3_1_8 = 0.0 in
                                    (let rec _lh_vecadd_LH_P3_0_8 = 0.0 in
                                      (fun _lh_vecadd_LH_P3_0_9 _lh_vecadd_LH_P3_1_9 _lh_vecadd_LH_P3_2_9 -> 
                                        (`LH_P3((_lh_vecadd_LH_P3_0_9 +. _lh_vecadd_LH_P3_0_8), (_lh_vecadd_LH_P3_1_9 +. _lh_vecadd_LH_P3_1_8), (_lh_vecadd_LH_P3_2_9 +. _lh_vecadd_LH_P3_2_8)))))))
                              else
                                ((vecmult_lh__d2 ((vecscale_lh__d1_d1 spec_1) (cosalpha_3 ** spow_1))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh__d9 diffcont_3) speccont_3)))))))))))))
      | _ -> 
        (failwith "error")));;
let rec fst_lh__d1 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec lightdirection_lh__d1 _lh_lightdirection_arg1_0 _lh_lightdirection_arg2_0 =
  (match _lh_lightdirection_arg1_0 with
    | `Directional(_lh_lightdirection_Directional_0_0, _lh_lightdirection_Directional_1_0) -> 
      (`LH_P2((fst_lh__d1 (vecnorm_lh__d4 _lh_lightdirection_Directional_0_0)), infinity_lh__d1))
    | `Point(_lh_lightdirection_Point_0_0, _lh_lightdirection_Point_1_0) -> 
      (vecnorm_lh__d4 ((vecsub_lh__d3 _lh_lightdirection_Point_0_0) _lh_lightdirection_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec lightcolour_lh__d1 _lh_lightcolour_arg1_0 =
  (match _lh_lightcolour_arg1_0 with
    | `Directional(_lh_lightcolour_Directional_0_0, _lh_lightcolour_Directional_1_0) -> 
      _lh_lightcolour_Directional_1_0
    | `Point(_lh_lightcolour_Point_0_0, _lh_lightcolour_Point_1_0) -> 
      _lh_lightcolour_Point_1_0
    | _ -> 
      (failwith "error"));;
let rec vecdot_lh__d5 _lh_vecdot_arg1_1 _lh_vecdot_arg2_1 =
  (match _lh_vecdot_arg1_1 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2, _lh_vecdot_LH_P3_1_2, _lh_vecdot_LH_P3_2_2) -> 
      (match _lh_vecdot_arg2_1 with
        | `LH_P3(_lh_vecdot_LH_P3_0_3, _lh_vecdot_LH_P3_1_3, _lh_vecdot_LH_P3_2_3) -> 
          (((_lh_vecdot_LH_P3_0_2 *. _lh_vecdot_LH_P3_0_3) +. (_lh_vecdot_LH_P3_1_2 *. _lh_vecdot_LH_P3_1_3)) +. (_lh_vecdot_LH_P3_2_2 *. _lh_vecdot_LH_P3_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lightray_lh__d1 _lh_lightray_arg1_0 _lh_lightray_arg2_0 _lh_lightray_arg3_0 _lh_lightray_arg4_2 _lh_lightray_arg5_2 =
  (let rec _lh_matchIdent_7 = ((lightdirection_lh__d1 _lh_lightray_arg1_0) _lh_lightray_arg2_0) in
    (match _lh_matchIdent_7 with
      | `LH_P2(_lh_lightray_LH_P2_0_4, _lh_lightray_LH_P2_1_2) -> 
        (let rec cosangle_2 = ((vecdot_lh__d5 _lh_lightray_LH_P2_0_4) _lh_lightray_arg3_0) in
          (let rec _lh_matchIdent_8 = (((shadowed_lh__d1 _lh_lightray_arg2_0) _lh_lightray_LH_P2_0_4) (lightcolour_lh__d1 _lh_lightray_arg1_0)) in
            ((((_lh_matchIdent_8 _lh_lightray_LH_P2_0_4) _lh_lightray_arg4_2) _lh_lightray_arg5_2) cosangle_2)))
      | _ -> 
        (failwith "error")));;
let rec vecadd_lh__d6 _lh_vecadd_arg1_2 _lh_vecadd_arg2_6 =
  (match _lh_vecadd_arg1_2 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_8, _lh_vecadd_LH_P3_1_1_8, _lh_vecadd_LH_P3_2_1_8) -> 
      (((_lh_vecadd_arg2_6 _lh_vecadd_LH_P3_0_1_8) _lh_vecadd_LH_P3_1_1_8) _lh_vecadd_LH_P3_2_1_8)
    | _ -> 
      (failwith "error"));;
let rec is_zerovector_lh__d1 _lh_is_zerovector_arg1_0 =
  (match _lh_is_zerovector_arg1_0 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_0, _lh_is_zerovector_LH_P3_1_0, _lh_is_zerovector_LH_P3_2_0) -> 
      (((_lh_is_zerovector_LH_P3_0_0 < epsilon_lh__d1) && (_lh_is_zerovector_LH_P3_1_0 < epsilon_lh__d1)) && (_lh_is_zerovector_LH_P3_2_0 < epsilon_lh__d1))
    | _ -> 
      (failwith "error"));;
let rec vecdot_lh__d1 _lh_vecdot_arg1_4 _lh_vecdot_arg2_4 =
  (match _lh_vecdot_arg1_4 with
    | `LH_P3(_lh_vecdot_LH_P3_0_8, _lh_vecdot_LH_P3_1_8, _lh_vecdot_LH_P3_2_8) -> 
      (match _lh_vecdot_arg2_4 with
        | `LH_P3(_lh_vecdot_LH_P3_0_9, _lh_vecdot_LH_P3_1_9, _lh_vecdot_LH_P3_2_9) -> 
          (((_lh_vecdot_LH_P3_0_8 *. _lh_vecdot_LH_P3_0_9) +. (_lh_vecdot_LH_P3_1_8 *. _lh_vecdot_LH_P3_1_9)) +. (_lh_vecdot_LH_P3_2_8 *. _lh_vecdot_LH_P3_2_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d6 _lh_vecmult_arg1_5 _lh_vecmult_arg2_8 =
  (match _lh_vecmult_arg1_5 with
    | `LH_P3(_lh_vecmult_LH_P3_0_8, _lh_vecmult_LH_P3_1_8, _lh_vecmult_LH_P3_2_8) -> 
      (match _lh_vecmult_arg2_8 with
        | `LH_P3(_lh_vecmult_LH_P3_0_9, _lh_vecmult_LH_P3_1_9, _lh_vecmult_LH_P3_2_9) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_8 *. _lh_vecmult_LH_P3_0_9), (_lh_vecmult_LH_P3_1_8 *. _lh_vecmult_LH_P3_1_9), (_lh_vecmult_LH_P3_2_8 *. _lh_vecmult_LH_P3_2_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec background_lh__d2 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec vecadd_lh__d4 _lh_vecadd_arg1_3 _lh_vecadd_arg2_7 =
  (match _lh_vecadd_arg1_3 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_9, _lh_vecadd_LH_P3_1_1_9, _lh_vecadd_LH_P3_2_1_9) -> 
      (match _lh_vecadd_arg2_7 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_0, _lh_vecadd_LH_P3_1_2_0, _lh_vecadd_LH_P3_2_2_0) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_9 +. _lh_vecadd_LH_P3_0_2_0), (_lh_vecadd_LH_P3_1_1_9 +. _lh_vecadd_LH_P3_1_2_0), (_lh_vecadd_LH_P3_2_1_9 +. _lh_vecadd_LH_P3_2_2_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd_lh__d1_d0 _lh_vecadd_arg1_0 _lh_vecadd_arg2_0 =
  (match _lh_vecadd_arg1_0 with
    | `LH_P3(_lh_vecadd_LH_P3_0_0, _lh_vecadd_LH_P3_1_0, _lh_vecadd_LH_P3_2_0) -> 
      (match _lh_vecadd_arg2_0 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1, _lh_vecadd_LH_P3_1_1, _lh_vecadd_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_0 +. _lh_vecadd_LH_P3_0_1), (_lh_vecadd_LH_P3_1_0 +. _lh_vecadd_LH_P3_1_1), (_lh_vecadd_LH_P3_2_0 +. _lh_vecadd_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ambientsurf_lh__d1 _lh_ambientsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `Ambient(_lh_ambientsurf_Ambient_0_0) -> 
            (let rec t_8 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_6) in
              (let rec h_6 = _lh_ambientsurf_Ambient_0_0 in
                (fun ys_1_1 -> 
                  (`LH_C(h_6, ((mappend_lh__d1 t_8) ys_1_1))))))
          | _ -> 
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (fun ys_1_2 -> 
          ys_1_2))) in
    (_lh_listcomp_fun_9 _lh_ambientsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec bodysurf_lh__d1 _lh_bodysurf_arg1_1 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
        (match _lh_listcomp_fun_ls_h_7 with
          | `Body(_lh_bodysurf_Body_0_1) -> 
            (let rec t_9 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_7) in
              (let rec h_7 = _lh_bodysurf_Body_0_1 in
                (fun ys_1_3 -> 
                  (`LH_C(h_7, ((mappend_lh__d1 t_9) ys_1_3))))))
          | _ -> 
            (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_7))
      | `LH_N -> 
        (fun ys_1_4 -> 
          ys_1_4))) in
    (_lh_listcomp_fun_1_0 _lh_bodysurf_arg1_1))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))));;
let rec spherenormal_lh__d1 _lh_spherenormal_arg1_0 _lh_spherenormal_arg2_0 =
  (match _lh_spherenormal_arg2_0 with
    | `Sphere(_lh_spherenormal_Sphere_0_0, _lh_spherenormal_Sphere_1_0, _lh_spherenormal_Sphere_2_0) -> 
      ((vecscale_lh__d1_d4 ((vecsub_lh__d3 _lh_spherenormal_arg1_0) _lh_spherenormal_Sphere_0_0)) (1.0 /. _lh_spherenormal_Sphere_1_0))
    | _ -> 
      (failwith "error"));;
let rec spheresurf_lh__d1 _lh_spheresurf_arg1_0 =
  (match _lh_spheresurf_arg1_0 with
    | `Sphere(_lh_spheresurf_Sphere_0_0, _lh_spheresurf_Sphere_1_0, _lh_spheresurf_Sphere_2_0) -> 
      _lh_spheresurf_Sphere_2_0
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d8 _lh_vecscale_arg1_7 _lh_vecscale_arg2_8 =
  (match _lh_vecscale_arg1_7 with
    | `LH_P3(_lh_vecscale_LH_P3_0_7, _lh_vecscale_LH_P3_1_7, _lh_vecscale_LH_P3_2_7) -> 
      (let rec _lh_vecadd_LH_P3_2_2_1 = (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_2_7) in
        (let rec _lh_vecadd_LH_P3_1_2_1 = (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_1_7) in
          (let rec _lh_vecadd_LH_P3_0_2_1 = (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_0_7) in
            (fun _lh_vecadd_LH_P3_0_2_2 _lh_vecadd_LH_P3_1_2_2 _lh_vecadd_LH_P3_2_2_2 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_2_2 +. _lh_vecadd_LH_P3_0_2_1), (_lh_vecadd_LH_P3_1_2_2 +. _lh_vecadd_LH_P3_1_2_1), (_lh_vecadd_LH_P3_2_2_2 +. _lh_vecadd_LH_P3_2_2_1)))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d9 _lh_vecscale_arg1_8 _lh_vecscale_arg2_9 =
  (match _lh_vecscale_arg1_8 with
    | `LH_P3(_lh_vecscale_LH_P3_0_8, _lh_vecscale_LH_P3_1_8, _lh_vecscale_LH_P3_2_8) -> 
      (let rec _lh_vecadd_LH_P3_2_2_5 = (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_2_8) in
        (let rec _lh_vecadd_LH_P3_1_2_5 = (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_1_8) in
          (let rec _lh_vecadd_LH_P3_0_2_5 = (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_0_8) in
            (fun _lh_vecadd_LH_P3_0_2_6 _lh_vecadd_LH_P3_1_2_6 _lh_vecadd_LH_P3_2_2_6 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_2_6 +. _lh_vecadd_LH_P3_0_2_5), (_lh_vecadd_LH_P3_1_2_6 +. _lh_vecadd_LH_P3_1_2_5), (_lh_vecadd_LH_P3_2_2_6 +. _lh_vecadd_LH_P3_2_2_5)))))))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d2 f_7 ls_3 =
  (ls_3 f_7);;
let rec vecadd_lh__d7 _lh_vecadd_arg1_5 _lh_vecadd_arg2_1_0 =
  (match _lh_vecadd_arg1_5 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_7, _lh_vecadd_LH_P3_1_2_7, _lh_vecadd_LH_P3_2_2_7) -> 
      (((_lh_vecadd_arg2_1_0 _lh_vecadd_LH_P3_0_2_7) _lh_vecadd_LH_P3_1_2_7) _lh_vecadd_LH_P3_2_2_7)
    | _ -> 
      (failwith "error"));;
let rec refractsurf_lh__d1 _lh_refractsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_9 -> 
    (match _lh_listcomp_fun_para_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (match _lh_listcomp_fun_ls_h_1_1 with
          | `Refract(_lh_refractsurf_Refract_0_0) -> 
            (let rec t_1_4 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_1) in
              (let rec h_1_2 = _lh_refractsurf_Refract_0_0 in
                (fun ys_1_5 -> 
                  (`LH_C(h_1_2, ((mappend_lh__d1 t_1_4) ys_1_5))))))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_1))
      | `LH_N -> 
        (fun ys_1_6 -> 
          ys_1_6))) in
    (_lh_listcomp_fun_1_5 _lh_refractsurf_arg1_0))) (`LH_C(1.0, (`LH_N)))));;
let rec vecadd_lh__d5 _lh_vecadd_arg1_7 _lh_vecadd_arg2_1_2 =
  (_lh_vecadd_arg1_7 _lh_vecadd_arg2_1_2);;
let rec vecscale_lh__d1_d0 _lh_vecscale_arg1_1_0 _lh_vecscale_arg2_1_1 =
  (match _lh_vecscale_arg1_1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_0, _lh_vecscale_LH_P3_1_1_0, _lh_vecscale_LH_P3_2_1_0) -> 
      (`LH_P3((_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_0_1_0), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_1_1_0), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d1 _lh_vecmult_arg1_4 _lh_vecmult_arg2_7 =
  (_lh_vecmult_arg1_4 _lh_vecmult_arg2_7);;
let rec vecsum_lh__d1 _lh_vecsum_arg1_0 =
  (((foldr_lh__d2 vecadd_lh__d1_d1) (`LH_P3(0.0, 0.0, 0.0))) _lh_vecsum_arg1_0);;
let rec transmitsurf_lh__d1 _lh_transmitsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
        (match _lh_listcomp_fun_ls_h_1_3 with
          | `Transmit(_lh_transmitsurf_Transmit_0_0) -> 
            (let rec t_1_7 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_3) in
              (let rec h_1_5 = _lh_transmitsurf_Transmit_0_0 in
                (fun ys_1_9 -> 
                  (`LH_C(h_1_5, ((mappend_lh__d1 t_1_7) ys_1_9))))))
          | _ -> 
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_3))
      | `LH_N -> 
        (fun ys_2_0 -> 
          ys_2_0))) in
    (_lh_listcomp_fun_1_7 _lh_transmitsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec reflectray_lh__d1 _lh_reflectray_arg1_0 _lh_reflectray_arg2_0 _lh_reflectray_arg3_0 _lh_reflectray_arg4_0 _lh_reflectray_arg5_0 _lh_reflectray_arg6_0 =
  (let rec newcontrib_4 = ((vecmult_lh__d6 _lh_reflectray_arg4_0) _lh_reflectray_arg5_0) in
    (let rec nearpos_4 = ((vecadd_lh__d1_d1 _lh_reflectray_arg1_0) ((vecscale_lh__d1_d4 _lh_reflectray_arg2_0) epsilon_lh__d1)) in
      (let rec _lh_matchIdent_1_0 = (((trace_lh__d2 testspheres_lh__d1) nearpos_4) _lh_reflectray_arg2_0) in
        (match _lh_matchIdent_1_0 with
          | `LH_P3(_lh_reflectray_LH_P3_0_0, _lh_reflectray_LH_P3_1_0, _lh_reflectray_LH_P3_2_0) -> 
            (let rec newcol_4 = (if _lh_reflectray_LH_P3_0_0 then
              ((((((shade_lh__d1 _lh_reflectray_arg3_0) _lh_reflectray_LH_P3_2_0) nearpos_4) _lh_reflectray_arg2_0) _lh_reflectray_LH_P3_1_0) newcontrib_4)
            else
              background_lh__d2) in
              (if (is_zerovector_lh__d1 newcontrib_4) then
                _lh_reflectray_arg6_0
              else
                ((vecadd_lh__d1_d0 _lh_reflectray_arg6_0) ((vecmult_lh__d6 newcol_4) _lh_reflectray_arg4_0))))
          | _ -> 
            (failwith "error")))))
and
refractray_lh__d1 _lh_refractray_arg1_0 _lh_refractray_arg2_0 _lh_refractray_arg3_0 =
  (let rec dotp_0 = (0.0 -. ((vecdot_lh__d6 _lh_refractray_arg2_0) _lh_refractray_arg3_0)) in
    (let rec _lh_matchIdent_1 = (if (dotp_0 < 0.0) then
      (let rec _lh_refractray_LH_P3_2_0 = (1.0 /. _lh_refractray_arg1_0) in
        (let rec _lh_refractray_LH_P3_1_0 = (0.0 -. dotp_0) in
          (let rec _lh_refractray_LH_P3_0_0 = ((vecscale_lh__d1_d4 _lh_refractray_arg3_0) (0.0 -. 1.0)) in
            (fun _lh_refractray_arg2_1 -> 
              (let rec disc_0 = (((1.0 -. _lh_refractray_LH_P3_2_0) *. _lh_refractray_LH_P3_2_0) *. (1.0 -. (_lh_refractray_LH_P3_1_0 *. _lh_refractray_LH_P3_1_0))) in
                (let rec t_2 = ((_lh_refractray_LH_P3_2_0 *. _lh_refractray_LH_P3_1_0) -. (sqrt disc_0)) in
                  (if (disc_0 < 0.0) then
                    (let rec _lh_transmitray_LH_P2_1_0 = (`LH_P3(0.0, 0.0, 0.0)) in
                      (let rec _lh_transmitray_LH_P2_0_0 = true in
                        (fun _lh_transmitray_arg1_0 _lh_transmitray_arg2_0 _lh_transmitray_arg3_0 _lh_transmitray_arg6_0 newcontrib_0 -> 
                          (let rec nearpos_0 = ((vecadd_lh__d1_d1 _lh_transmitray_arg3_0) ((vecscale_lh__d1_d4 _lh_transmitray_LH_P2_1_0) epsilon_lh__d1)) in
                            (let rec _lh_matchIdent_2 = (((trace_lh__d2 testspheres_lh__d1) nearpos_0) _lh_transmitray_LH_P2_1_0) in
                              (match _lh_matchIdent_2 with
                                | `LH_P3(_lh_transmitray_LH_P3_0_0, _lh_transmitray_LH_P3_1_0, _lh_transmitray_LH_P3_2_0) -> 
                                  (let rec newcol_0 = (if _lh_transmitray_LH_P3_0_0 then
                                    ((((((shade_lh__d1 _lh_transmitray_arg1_0) _lh_transmitray_LH_P3_2_0) nearpos_0) _lh_transmitray_LH_P2_1_0) _lh_transmitray_LH_P3_1_0) newcontrib_0)
                                  else
                                    background_lh__d2) in
                                    (if (is_zerovector_lh__d1 newcontrib_0) then
                                      (let rec _lh_shade_LH_P2_1_0 = _lh_transmitray_arg2_0 in
                                        (let rec _lh_shade_LH_P2_0_0 = false in
                                          (fun _lh_shade_arg1_0 _lh_shade_arg6_0 hitpos_0 refl_0 surf_0 trintensity_0 -> 
                                            (let rec reflsurf_0 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_0)) (reflectsurf_lh__d1 surf_0)) in
                                              (let rec reflectiv_0 = (if _lh_shade_LH_P2_0_0 then
                                                ((vecadd_lh__d4 trintensity_0) reflsurf_0)
                                              else
                                                reflsurf_0) in
                                                (let rec rcol_0 = (if (is_zerovector_lh__d1 reflectiv_0) then
                                                  _lh_shade_LH_P2_1_0
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_0) refl_0) _lh_shade_arg1_0) reflectiv_0) _lh_shade_arg6_0) _lh_shade_LH_P2_1_0)) in
                                                  rcol_0))))))
                                    else
                                      (let rec _lh_shade_LH_P2_1_1 = ((vecadd_lh__d1_d1 ((vecmult_lh__d6 newcol_0) _lh_transmitray_arg6_0)) _lh_transmitray_arg2_0) in
                                        (let rec _lh_shade_LH_P2_0_1 = false in
                                          (fun _lh_shade_arg1_1 _lh_shade_arg6_1 hitpos_1 refl_1 surf_1 trintensity_1 -> 
                                            (let rec reflsurf_1 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_1)) (reflectsurf_lh__d1 surf_1)) in
                                              (let rec reflectiv_1 = (if _lh_shade_LH_P2_0_1 then
                                                ((vecadd_lh__d4 trintensity_1) reflsurf_1)
                                              else
                                                reflsurf_1) in
                                                (let rec rcol_1 = (if (is_zerovector_lh__d1 reflectiv_1) then
                                                  _lh_shade_LH_P2_1_1
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_1) refl_1) _lh_shade_arg1_1) reflectiv_1) _lh_shade_arg6_1) _lh_shade_LH_P2_1_1)) in
                                                  rcol_1))))))))
                                | _ -> 
                                  (failwith "error")))))))
                  else
                    (let rec _lh_transmitray_LH_P2_1_1 = ((vecadd_lh__d1_d1 ((vecscale_lh__d1_d4 _lh_refractray_LH_P3_0_0) t_2)) ((vecscale_lh__d1_d4 _lh_refractray_arg2_1) _lh_refractray_LH_P3_2_0)) in
                      (let rec _lh_transmitray_LH_P2_0_1 = false in
                        (fun _lh_transmitray_arg1_1 _lh_transmitray_arg2_1 _lh_transmitray_arg3_1 _lh_transmitray_arg6_1 newcontrib_1 -> 
                          (let rec nearpos_1 = ((vecadd_lh__d1_d1 _lh_transmitray_arg3_1) ((vecscale_lh__d1_d4 _lh_transmitray_LH_P2_1_1) epsilon_lh__d1)) in
                            (let rec _lh_matchIdent_3 = (((trace_lh__d2 testspheres_lh__d1) nearpos_1) _lh_transmitray_LH_P2_1_1) in
                              (match _lh_matchIdent_3 with
                                | `LH_P3(_lh_transmitray_LH_P3_0_1, _lh_transmitray_LH_P3_1_1, _lh_transmitray_LH_P3_2_1) -> 
                                  (let rec newcol_1 = (if _lh_transmitray_LH_P3_0_1 then
                                    ((((((shade_lh__d1 _lh_transmitray_arg1_1) _lh_transmitray_LH_P3_2_1) nearpos_1) _lh_transmitray_LH_P2_1_1) _lh_transmitray_LH_P3_1_1) newcontrib_1)
                                  else
                                    background_lh__d2) in
                                    (if (is_zerovector_lh__d1 newcontrib_1) then
                                      (let rec _lh_shade_LH_P2_1_2 = _lh_transmitray_arg2_1 in
                                        (let rec _lh_shade_LH_P2_0_2 = false in
                                          (fun _lh_shade_arg1_2 _lh_shade_arg6_2 hitpos_2 refl_2 surf_2 trintensity_2 -> 
                                            (let rec reflsurf_2 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_2)) (reflectsurf_lh__d1 surf_2)) in
                                              (let rec reflectiv_2 = (if _lh_shade_LH_P2_0_2 then
                                                ((vecadd_lh__d4 trintensity_2) reflsurf_2)
                                              else
                                                reflsurf_2) in
                                                (let rec rcol_2 = (if (is_zerovector_lh__d1 reflectiv_2) then
                                                  _lh_shade_LH_P2_1_2
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_2) refl_2) _lh_shade_arg1_2) reflectiv_2) _lh_shade_arg6_2) _lh_shade_LH_P2_1_2)) in
                                                  rcol_2))))))
                                    else
                                      (let rec _lh_shade_LH_P2_1_3 = ((vecadd_lh__d1_d1 ((vecmult_lh__d6 newcol_1) _lh_transmitray_arg6_1)) _lh_transmitray_arg2_1) in
                                        (let rec _lh_shade_LH_P2_0_3 = false in
                                          (fun _lh_shade_arg1_3 _lh_shade_arg6_3 hitpos_3 refl_3 surf_3 trintensity_3 -> 
                                            (let rec reflsurf_3 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_3)) (reflectsurf_lh__d1 surf_3)) in
                                              (let rec reflectiv_3 = (if _lh_shade_LH_P2_0_3 then
                                                ((vecadd_lh__d4 trintensity_3) reflsurf_3)
                                              else
                                                reflsurf_3) in
                                                (let rec rcol_3 = (if (is_zerovector_lh__d1 reflectiv_3) then
                                                  _lh_shade_LH_P2_1_3
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_3) refl_3) _lh_shade_arg1_3) reflectiv_3) _lh_shade_arg6_3) _lh_shade_LH_P2_1_3)) in
                                                  rcol_3))))))))
                                | _ -> 
                                  (failwith "error"))))))))))))))
    else
      (let rec _lh_refractray_LH_P3_2_1 = _lh_refractray_arg1_0 in
        (let rec _lh_refractray_LH_P3_1_1 = dotp_0 in
          (let rec _lh_refractray_LH_P3_0_1 = _lh_refractray_arg3_0 in
            (fun _lh_refractray_arg2_2 -> 
              (let rec disc_1 = (((1.0 -. _lh_refractray_LH_P3_2_1) *. _lh_refractray_LH_P3_2_1) *. (1.0 -. (_lh_refractray_LH_P3_1_1 *. _lh_refractray_LH_P3_1_1))) in
                (let rec t_3 = ((_lh_refractray_LH_P3_2_1 *. _lh_refractray_LH_P3_1_1) -. (sqrt disc_1)) in
                  (if (disc_1 < 0.0) then
                    (let rec _lh_transmitray_LH_P2_1_2 = (`LH_P3(0.0, 0.0, 0.0)) in
                      (let rec _lh_transmitray_LH_P2_0_2 = true in
                        (fun _lh_transmitray_arg1_2 _lh_transmitray_arg2_2 _lh_transmitray_arg3_2 _lh_transmitray_arg6_2 newcontrib_2 -> 
                          (let rec nearpos_2 = ((vecadd_lh__d1_d1 _lh_transmitray_arg3_2) ((vecscale_lh__d1_d4 _lh_transmitray_LH_P2_1_2) epsilon_lh__d1)) in
                            (let rec _lh_matchIdent_4 = (((trace_lh__d2 testspheres_lh__d1) nearpos_2) _lh_transmitray_LH_P2_1_2) in
                              (match _lh_matchIdent_4 with
                                | `LH_P3(_lh_transmitray_LH_P3_0_2, _lh_transmitray_LH_P3_1_2, _lh_transmitray_LH_P3_2_2) -> 
                                  (let rec newcol_2 = (if _lh_transmitray_LH_P3_0_2 then
                                    ((((((shade_lh__d1 _lh_transmitray_arg1_2) _lh_transmitray_LH_P3_2_2) nearpos_2) _lh_transmitray_LH_P2_1_2) _lh_transmitray_LH_P3_1_2) newcontrib_2)
                                  else
                                    background_lh__d2) in
                                    (if (is_zerovector_lh__d1 newcontrib_2) then
                                      (let rec _lh_shade_LH_P2_1_4 = _lh_transmitray_arg2_2 in
                                        (let rec _lh_shade_LH_P2_0_4 = false in
                                          (fun _lh_shade_arg1_4 _lh_shade_arg6_4 hitpos_4 refl_4 surf_4 trintensity_4 -> 
                                            (let rec reflsurf_4 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_4)) (reflectsurf_lh__d1 surf_4)) in
                                              (let rec reflectiv_4 = (if _lh_shade_LH_P2_0_4 then
                                                ((vecadd_lh__d4 trintensity_4) reflsurf_4)
                                              else
                                                reflsurf_4) in
                                                (let rec rcol_4 = (if (is_zerovector_lh__d1 reflectiv_4) then
                                                  _lh_shade_LH_P2_1_4
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_4) refl_4) _lh_shade_arg1_4) reflectiv_4) _lh_shade_arg6_4) _lh_shade_LH_P2_1_4)) in
                                                  rcol_4))))))
                                    else
                                      (let rec _lh_shade_LH_P2_1_5 = ((vecadd_lh__d1_d1 ((vecmult_lh__d6 newcol_2) _lh_transmitray_arg6_2)) _lh_transmitray_arg2_2) in
                                        (let rec _lh_shade_LH_P2_0_5 = false in
                                          (fun _lh_shade_arg1_5 _lh_shade_arg6_5 hitpos_5 refl_5 surf_5 trintensity_5 -> 
                                            (let rec reflsurf_5 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_5)) (reflectsurf_lh__d1 surf_5)) in
                                              (let rec reflectiv_5 = (if _lh_shade_LH_P2_0_5 then
                                                ((vecadd_lh__d4 trintensity_5) reflsurf_5)
                                              else
                                                reflsurf_5) in
                                                (let rec rcol_5 = (if (is_zerovector_lh__d1 reflectiv_5) then
                                                  _lh_shade_LH_P2_1_5
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_5) refl_5) _lh_shade_arg1_5) reflectiv_5) _lh_shade_arg6_5) _lh_shade_LH_P2_1_5)) in
                                                  rcol_5))))))))
                                | _ -> 
                                  (failwith "error")))))))
                  else
                    (let rec _lh_transmitray_LH_P2_1_3 = ((vecadd_lh__d1_d1 ((vecscale_lh__d1_d4 _lh_refractray_LH_P3_0_1) t_3)) ((vecscale_lh__d1_d4 _lh_refractray_arg2_2) _lh_refractray_LH_P3_2_1)) in
                      (let rec _lh_transmitray_LH_P2_0_3 = false in
                        (fun _lh_transmitray_arg1_3 _lh_transmitray_arg2_3 _lh_transmitray_arg3_3 _lh_transmitray_arg6_3 newcontrib_3 -> 
                          (let rec nearpos_3 = ((vecadd_lh__d1_d1 _lh_transmitray_arg3_3) ((vecscale_lh__d1_d4 _lh_transmitray_LH_P2_1_3) epsilon_lh__d1)) in
                            (let rec _lh_matchIdent_5 = (((trace_lh__d2 testspheres_lh__d1) nearpos_3) _lh_transmitray_LH_P2_1_3) in
                              (match _lh_matchIdent_5 with
                                | `LH_P3(_lh_transmitray_LH_P3_0_3, _lh_transmitray_LH_P3_1_3, _lh_transmitray_LH_P3_2_3) -> 
                                  (let rec newcol_3 = (if _lh_transmitray_LH_P3_0_3 then
                                    ((((((shade_lh__d1 _lh_transmitray_arg1_3) _lh_transmitray_LH_P3_2_3) nearpos_3) _lh_transmitray_LH_P2_1_3) _lh_transmitray_LH_P3_1_3) newcontrib_3)
                                  else
                                    background_lh__d2) in
                                    (if (is_zerovector_lh__d1 newcontrib_3) then
                                      (let rec _lh_shade_LH_P2_1_6 = _lh_transmitray_arg2_3 in
                                        (let rec _lh_shade_LH_P2_0_6 = false in
                                          (fun _lh_shade_arg1_6 _lh_shade_arg6_6 hitpos_6 refl_6 surf_6 trintensity_6 -> 
                                            (let rec reflsurf_6 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_6)) (reflectsurf_lh__d1 surf_6)) in
                                              (let rec reflectiv_6 = (if _lh_shade_LH_P2_0_6 then
                                                ((vecadd_lh__d4 trintensity_6) reflsurf_6)
                                              else
                                                reflsurf_6) in
                                                (let rec rcol_6 = (if (is_zerovector_lh__d1 reflectiv_6) then
                                                  _lh_shade_LH_P2_1_6
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_6) refl_6) _lh_shade_arg1_6) reflectiv_6) _lh_shade_arg6_6) _lh_shade_LH_P2_1_6)) in
                                                  rcol_6))))))
                                    else
                                      (let rec _lh_shade_LH_P2_1_7 = ((vecadd_lh__d1_d1 ((vecmult_lh__d6 newcol_3) _lh_transmitray_arg6_3)) _lh_transmitray_arg2_3) in
                                        (let rec _lh_shade_LH_P2_0_7 = false in
                                          (fun _lh_shade_arg1_7 _lh_shade_arg6_7 hitpos_7 refl_7 surf_7 trintensity_7 -> 
                                            (let rec reflsurf_7 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_7)) (reflectsurf_lh__d1 surf_7)) in
                                              (let rec reflectiv_7 = (if _lh_shade_LH_P2_0_7 then
                                                ((vecadd_lh__d4 trintensity_7) reflsurf_7)
                                              else
                                                reflsurf_7) in
                                                (let rec rcol_7 = (if (is_zerovector_lh__d1 reflectiv_7) then
                                                  _lh_shade_LH_P2_1_7
                                                else
                                                  ((((((reflectray_lh__d1 hitpos_7) refl_7) _lh_shade_arg1_7) reflectiv_7) _lh_shade_arg6_7) _lh_shade_LH_P2_1_7)) in
                                                  rcol_7))))))))
                                | _ -> 
                                  (failwith "error"))))))))))))))) in
      (_lh_matchIdent_1 _lh_refractray_arg2_0)))
and
shade_lh__d1 _lh_shade_arg1_8 _lh_shade_arg2_0 _lh_shade_arg3_0 _lh_shade_arg4_0 _lh_shade_arg5_0 _lh_shade_arg6_8 =
  (let rec hitpos_8 = ((vecadd_lh__d7 _lh_shade_arg3_0) ((vecscale_lh__d8 _lh_shade_arg4_0) _lh_shade_arg5_0)) in
    (let rec ambientlight_0 = (let rec _lh_vecmult_LH_P3_2_6 = 1.0 in
      (let rec _lh_vecmult_LH_P3_1_6 = 1.0 in
        (let rec _lh_vecmult_LH_P3_0_6 = 1.0 in
          (fun _lh_vecmult_arg2_5 -> 
            (match _lh_vecmult_arg2_5 with
              | `LH_P3(_lh_vecmult_LH_P3_0_7, _lh_vecmult_LH_P3_1_7, _lh_vecmult_LH_P3_2_7) -> 
                (let rec _lh_vecadd_LH_P3_2_2_3 = (_lh_vecmult_LH_P3_2_6 *. _lh_vecmult_LH_P3_2_7) in
                  (let rec _lh_vecadd_LH_P3_1_2_3 = (_lh_vecmult_LH_P3_1_6 *. _lh_vecmult_LH_P3_1_7) in
                    (let rec _lh_vecadd_LH_P3_0_2_3 = (_lh_vecmult_LH_P3_0_6 *. _lh_vecmult_LH_P3_0_7) in
                      (fun _lh_vecadd_arg2_9 -> 
                        (match _lh_vecadd_arg2_9 with
                          | `LH_P3(_lh_vecadd_LH_P3_0_2_4, _lh_vecadd_LH_P3_1_2_4, _lh_vecadd_LH_P3_2_2_4) -> 
                            (`LH_P3((_lh_vecadd_LH_P3_0_2_3 +. _lh_vecadd_LH_P3_0_2_4), (_lh_vecadd_LH_P3_1_2_3 +. _lh_vecadd_LH_P3_1_2_4), (_lh_vecadd_LH_P3_2_2_3 +. _lh_vecadd_LH_P3_2_2_4)))
                          | _ -> 
                            (failwith "error"))))))
              | _ -> 
                (failwith "error")))))) in
      (let rec surf_8 = (spheresurf_lh__d1 _lh_shade_arg2_0) in
        (let rec amb_0 = ((vecmult_lh__d1 ambientlight_0) (ambientsurf_lh__d1 surf_8)) in
          (let rec norm_0 = ((spherenormal_lh__d1 hitpos_8) _lh_shade_arg2_0) in
            (let rec refl_8 = ((vecadd_lh__d6 _lh_shade_arg4_0) ((vecscale_lh__d9 norm_0) ((0.0 -. 2.0) *. ((vecdot_lh__d1 _lh_shade_arg4_0) norm_0)))) in
              (let rec diff_2 = (vecsum_lh__d1 ((map_lh__d2 (fun l_0 -> 
                (((((lightray_lh__d1 l_0) hitpos_8) norm_0) refl_8) surf_8))) _lh_shade_arg1_8)) in
                (let rec transmitted_0 = (transmitsurf_lh__d1 surf_8) in
                  (let rec simple_0 = ((vecadd_lh__d5 amb_0) diff_2) in
                    (let rec trintensity_8 = ((vecscale_lh__d1_d0 (bodysurf_lh__d1 surf_8)) transmitted_0) in
                      (let rec _lh_matchIdent_1_1 = (if (transmitted_0 < epsilon_lh__d1) then
                        (let rec _lh_shade_LH_P2_1_8 = simple_0 in
                          (let rec _lh_shade_LH_P2_0_8 = false in
                            (fun _lh_shade_arg1_9 _lh_shade_arg6_9 hitpos_9 refl_9 surf_9 trintensity_9 -> 
                              (let rec reflsurf_8 = ((vecscale_lh__d7 (specularsurf_lh__d1 surf_9)) (reflectsurf_lh__d1 surf_9)) in
                                (let rec reflectiv_8 = (if _lh_shade_LH_P2_0_8 then
                                  ((vecadd_lh__d4 trintensity_9) reflsurf_8)
                                else
                                  reflsurf_8) in
                                  (let rec rcol_8 = (if (is_zerovector_lh__d1 reflectiv_8) then
                                    _lh_shade_LH_P2_1_8
                                  else
                                    ((((((reflectray_lh__d1 hitpos_9) refl_9) _lh_shade_arg1_9) reflectiv_8) _lh_shade_arg6_9) _lh_shade_LH_P2_1_8)) in
                                    rcol_8))))))
                      else
                        ((((((((transmitray_lh__d1 _lh_shade_arg1_8) simple_0) hitpos_8) _lh_shade_arg4_0) (refractsurf_lh__d1 surf_8)) trintensity_8) _lh_shade_arg6_8) norm_0)) in
                        ((((((_lh_matchIdent_1_1 _lh_shade_arg1_8) _lh_shade_arg6_8) hitpos_8) refl_8) surf_8) trintensity_8))))))))))))
and
transmitray_lh__d1 _lh_transmitray_arg1_4 _lh_transmitray_arg2_4 _lh_transmitray_arg3_4 _lh_transmitray_arg4_0 _lh_transmitray_arg5_0 _lh_transmitray_arg6_4 _lh_transmitray_arg7_0 _lh_transmitray_arg8_0 =
  (let rec newcontrib_5 = ((vecmult_lh__d6 _lh_transmitray_arg6_4) _lh_transmitray_arg7_0) in
    (let rec _lh_matchIdent_2_2 = (((refractray_lh__d1 _lh_transmitray_arg5_0) _lh_transmitray_arg4_0) _lh_transmitray_arg8_0) in
      (((((_lh_matchIdent_2_2 _lh_transmitray_arg1_4) _lh_transmitray_arg2_4) _lh_transmitray_arg3_4) _lh_transmitray_arg6_4) newcontrib_5)));;
let rec background_lh__d1 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec head_lh__d1 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_6, t_1_8) -> 
      h_1_6
    | `LH_N -> 
      (failwith "error"));;
let rec trace_lh__d1 _lh_trace_arg1_0 _lh_trace_arg2_0 _lh_trace_arg3_0 =
  (let rec f_1_3 = (fun d1s1_0 d2s2_0 -> 
    (let rec _lh_matchIdent_1_6 = d1s1_0 in
      (match _lh_matchIdent_1_6 with
        | `LH_P2(_lh_trace_LH_P2_0_0, _lh_trace_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1_7 = d2s2_0 in
            (match _lh_matchIdent_1_7 with
              | `LH_P2(_lh_trace_LH_P2_0_1, _lh_trace_LH_P2_1_1) -> 
                (if (_lh_trace_LH_P2_0_0 < _lh_trace_LH_P2_0_1) then
                  (`LH_P2(_lh_trace_LH_P2_0_0, _lh_trace_LH_P2_1_0))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_1, _lh_trace_LH_P2_1_1)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_0 = (fun xss_0 -> 
      (let rec _lh_matchIdent_1_8 = xss_0 in
        (match _lh_matchIdent_1_8 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_0, _lh_trace_LH_C_1_0) -> 
            (let rec _lh_matchIdent_1_9 = (((sphereintersect_lh__d1 _lh_trace_arg2_0) _lh_trace_arg3_0) _lh_trace_LH_C_0_0) in
              (match _lh_matchIdent_1_9 with
                | `LH_P2(_lh_trace_LH_P2_0_2, _lh_trace_LH_P2_1_2) -> 
                  (if _lh_trace_LH_P2_0_2 then
                    (`LH_C((`LH_P2(_lh_trace_LH_P2_1_2, _lh_trace_LH_C_0_0)), (sphmap_0 _lh_trace_LH_C_1_0)))
                  else
                    (sphmap_0 _lh_trace_LH_C_1_0))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_0 = (sphmap_0 _lh_trace_arg1_0) in
        (if (null_lh__d1 dists_0) then
          (let rec _lh_tracepixel_LH_P3_2_0 = (head_lh__d2 _lh_trace_arg1_0) in
            (let rec _lh_tracepixel_LH_P3_1_0 = infinity_lh__d1 in
              (let rec _lh_tracepixel_LH_P3_0_0 = false in
                (fun _lh_tracepixel_LH_P2_0_1 _lh_tracepixel_arg2_1 pos_1 -> 
                  (if _lh_tracepixel_LH_P3_0_0 then
                    ((((((shade_lh__d1 _lh_tracepixel_arg2_1) _lh_tracepixel_LH_P3_2_0) pos_1) _lh_tracepixel_LH_P2_0_1) _lh_tracepixel_LH_P3_1_0) (`LH_P3(1.0, 1.0, 1.0)))
                  else
                    background_lh__d1)))))
        else
          (let rec _lh_matchIdent_2_0 = (((foldr_lh__d2 f_1_3) (head_lh__d1 dists_0)) (tail_lh__d1 dists_0)) in
            (match _lh_matchIdent_2_0 with
              | `LH_P2(_lh_trace_LH_P2_0_3, _lh_trace_LH_P2_1_3) -> 
                (let rec _lh_tracepixel_LH_P3_2_1 = _lh_trace_LH_P2_1_3 in
                  (let rec _lh_tracepixel_LH_P3_1_1 = _lh_trace_LH_P2_0_3 in
                    (let rec _lh_tracepixel_LH_P3_0_1 = true in
                      (fun _lh_tracepixel_LH_P2_0_2 _lh_tracepixel_arg2_2 pos_2 -> 
                        (if _lh_tracepixel_LH_P3_0_1 then
                          ((((((shade_lh__d1 _lh_tracepixel_arg2_2) _lh_tracepixel_LH_P3_2_1) pos_2) _lh_tracepixel_LH_P2_0_2) _lh_tracepixel_LH_P3_1_1) (`LH_P3(1.0, 1.0, 1.0)))
                        else
                          background_lh__d1)))))
              | _ -> 
                (failwith "error")))))));;
let rec lookfrom_lh__d2 =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec vecadd_lh__d2 _lh_vecadd_arg1_8 _lh_vecadd_arg2_1_3 =
  (_lh_vecadd_arg1_8 _lh_vecadd_arg2_1_3);;
let rec vecscale_lh__d6 _lh_vecscale_arg1_1_2 _lh_vecscale_arg2_1_3 =
  (match _lh_vecscale_arg1_1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_2, _lh_vecscale_LH_P3_1_1_2, _lh_vecscale_LH_P3_2_1_2) -> 
      (let rec _lh_vecadd_LH_P3_2_3_3 = (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_2_1_2) in
        (let rec _lh_vecadd_LH_P3_1_3_3 = (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_1_1_2) in
          (let rec _lh_vecadd_LH_P3_0_3_3 = (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_0_1_2) in
            (fun _lh_vecadd_LH_P3_0_3_4 _lh_vecadd_LH_P3_1_3_4 _lh_vecadd_LH_P3_2_3_4 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_3_4 +. _lh_vecadd_LH_P3_0_3_3), (_lh_vecadd_LH_P3_1_3_4 +. _lh_vecadd_LH_P3_1_3_3), (_lh_vecadd_LH_P3_2_3_4 +. _lh_vecadd_LH_P3_2_3_3)))))))
    | _ -> 
      (failwith "error"));;
let rec tracepixel_lh__d1 _lh_tracepixel_arg1_0 _lh_tracepixel_arg2_0 _lh_tracepixel_arg3_0 _lh_tracepixel_arg4_0 _lh_tracepixel_arg5_0 _lh_tracepixel_arg6_0 _lh_tracepixel_arg7_0 =
  (let rec pos_0 = lookfrom_lh__d2 in
    (let rec _lh_matchIdent_1_4 = (vecnorm_lh__d4 ((vecadd_lh__d2 ((vecadd_lh__d3 _lh_tracepixel_arg5_0) ((vecscale_lh__d5 _lh_tracepixel_arg6_0) _lh_tracepixel_arg3_0))) ((vecscale_lh__d6 _lh_tracepixel_arg7_0) _lh_tracepixel_arg4_0))) in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_tracepixel_LH_P2_0_0, _lh_tracepixel_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1_5 = (((trace_lh__d1 _lh_tracepixel_arg1_0) pos_0) _lh_tracepixel_LH_P2_0_0) in
            (((_lh_matchIdent_1_5 _lh_tracepixel_LH_P2_0_0) _lh_tracepixel_arg2_0) pos_0))
        | _ -> 
          (failwith "error"))));;
let rec pi_lh__d1 =
  3.141592653589793;;
let rec dtor_lh__d1 _lh_dtor_arg1_1 =
  ((_lh_dtor_arg1_1 *. pi_lh__d1) /. 180.0);;
let rec vecscale_lh__d1 _lh_vecscale_arg1_1_1 _lh_vecscale_arg2_1_2 =
  (match _lh_vecscale_arg1_1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_1, _lh_vecscale_LH_P3_1_1_1, _lh_vecscale_LH_P3_2_1_1) -> 
      (let rec _lh_vecadd_LH_P3_2_2_8 = (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_2_1_1) in
        (let rec _lh_vecadd_LH_P3_1_2_8 = (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_1_1_1) in
          (let rec _lh_vecadd_LH_P3_0_2_8 = (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_0_1_1) in
            (fun _lh_vecadd_LH_P3_0_2_9 _lh_vecadd_LH_P3_1_2_9 _lh_vecadd_LH_P3_2_2_9 -> 
              (let rec _lh_vecsub_LH_P3_2_6 = (_lh_vecadd_LH_P3_2_2_9 +. _lh_vecadd_LH_P3_2_2_8) in
                (let rec _lh_vecsub_LH_P3_1_6 = (_lh_vecadd_LH_P3_1_2_9 +. _lh_vecadd_LH_P3_1_2_8) in
                  (let rec _lh_vecsub_LH_P3_0_6 = (_lh_vecadd_LH_P3_0_2_9 +. _lh_vecadd_LH_P3_0_2_8) in
                    (fun _lh_vecsub_LH_P3_0_7 _lh_vecsub_LH_P3_1_7 _lh_vecsub_LH_P3_2_7 -> 
                      (let rec _lh_vecadd_LH_P3_2_3_0 = (_lh_vecsub_LH_P3_2_7 -. _lh_vecsub_LH_P3_2_6) in
                        (let rec _lh_vecadd_LH_P3_1_3_0 = (_lh_vecsub_LH_P3_1_7 -. _lh_vecsub_LH_P3_1_6) in
                          (let rec _lh_vecadd_LH_P3_0_3_0 = (_lh_vecsub_LH_P3_0_7 -. _lh_vecsub_LH_P3_0_6) in
                            (fun _lh_vecadd_arg2_1_5 -> 
                              (((_lh_vecadd_arg2_1_5 _lh_vecadd_LH_P3_0_3_0) _lh_vecadd_LH_P3_1_3_0) _lh_vecadd_LH_P3_2_3_0)))))))))))))
    | _ -> 
      (failwith "error"));;
let rec veccross_lh__d2 _lh_veccross_arg1_0 _lh_veccross_arg2_0 =
  (match _lh_veccross_arg1_0 with
    | `LH_P3(_lh_veccross_LH_P3_0_0, _lh_veccross_LH_P3_1_0, _lh_veccross_LH_P3_2_0) -> 
      (match _lh_veccross_arg2_0 with
        | `LH_P3(_lh_veccross_LH_P3_0_1, _lh_veccross_LH_P3_1_1, _lh_veccross_LH_P3_2_1) -> 
          (let rec _lh_vecnorm_LH_P3_2_0 = ((_lh_veccross_LH_P3_0_0 *. _lh_veccross_LH_P3_1_1) -. (_lh_veccross_LH_P3_0_1 *. _lh_veccross_LH_P3_1_0)) in
            (let rec _lh_vecnorm_LH_P3_1_0 = ((_lh_veccross_LH_P3_2_0 *. _lh_veccross_LH_P3_0_1) -. (_lh_veccross_LH_P3_2_1 *. _lh_veccross_LH_P3_0_0)) in
              (let rec _lh_vecnorm_LH_P3_0_0 = ((_lh_veccross_LH_P3_1_0 *. _lh_veccross_LH_P3_2_1) -. (_lh_veccross_LH_P3_1_1 *. _lh_veccross_LH_P3_2_0)) in
                (fun _lh_dummy_0 -> 
                  (let rec len_0 = (sqrt (((_lh_vecnorm_LH_P3_0_0 *. _lh_vecnorm_LH_P3_0_0) +. (_lh_vecnorm_LH_P3_1_0 *. _lh_vecnorm_LH_P3_1_0)) +. (_lh_vecnorm_LH_P3_2_0 *. _lh_vecnorm_LH_P3_2_0))) in
                    (let rec _lh_camparams_LH_P2_1_0 = len_0 in
                      (let rec _lh_camparams_LH_P2_0_0 = (let rec _lh_vecscale_LH_P3_2_1 = (_lh_vecnorm_LH_P3_2_0 /. len_0) in
                        (let rec _lh_vecscale_LH_P3_1_1 = (_lh_vecnorm_LH_P3_1_0 /. len_0) in
                          (let rec _lh_vecscale_LH_P3_0_1 = (_lh_vecnorm_LH_P3_0_0 /. len_0) in
                            (fun _lh_vecscale_arg2_1 -> 
                              (`LH_P3((_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_0_1), (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_1_1), (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_2_1))))))) in
                        (fun _lh_camparams_LH_P2_0_1 _lh_camparams_LH_P2_1_1 _lh_camparams_arg4_0 _lh_camparams_arg5_0 initfirstray_0 -> 
                          (let rec xfov_0 = _lh_camparams_arg4_0 in
                            (let rec yfov_0 = _lh_camparams_arg4_0 in
                              (let rec xwinsize_0 = _lh_camparams_arg5_0 in
                                (let rec ywinsize_0 = _lh_camparams_arg5_0 in
                                  (let rec magx_0 = (((2.0 *. _lh_camparams_LH_P2_1_1) *. (tan (dtor_lh__d1 (xfov_0 /. 2.0)))) /. xwinsize_0) in
                                    (let rec magy_0 = (((2.0 *. _lh_camparams_LH_P2_1_1) *. (tan (dtor_lh__d2 (yfov_0 /. 2.0)))) /. ywinsize_0) in
                                      (let rec scrnx_0 = ((vecscale_lh__d2 _lh_camparams_LH_P2_0_1) magx_0) in
                                        (let rec scrny_0 = ((vecscale_lh__d3 _lh_camparams_LH_P2_0_0) magy_0) in
                                          (let rec firstray_0 = ((vecsub_lh__d1 initfirstray_0) ((vecadd_lh__d1 ((vecscale_lh__d4 scrnx_0) (0.5 *. xwinsize_0))) ((vecscale_lh__d1 scrny_0) (0.5 *. ywinsize_0)))) in
                                            (let rec _lh_ray_LH_P3_2_0 = scrny_0 in
                                              (let rec _lh_ray_LH_P3_1_0 = scrnx_0 in
                                                (let rec _lh_ray_LH_P3_0_0 = firstray_0 in
                                                  (fun _lh_ray_arg1_0 lights_0 -> 
                                                    (let rec f_0 = (fun i_0 j_0 -> 
                                                      (((((((tracepixel_lh__d1 testspheres_lh__d1) lights_0) (float_of_int i_0)) (float_of_int j_0)) _lh_ray_LH_P3_0_0) _lh_ray_LH_P3_1_0) _lh_ray_LH_P3_2_0)) in
                                                      (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
                                                        (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_1) _lh_ray_arg1_0) f_0)) in
                                                        (_lh_listcomp_fun_1 ((enumFromTo_lh__d2 0) (_lh_ray_arg1_0 - 1))))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecnorm_lh__d1 _lh_vecnorm_arg1_3 =
  (_lh_vecnorm_arg1_3 99);;
let rec vup_lh__d1 _lh_veccross_LH_P3_0_3 _lh_veccross_LH_P3_1_3 _lh_veccross_LH_P3_2_3 _lh_dummy_1 _lh_camparams_LH_P2_0_3 _lh_camparams_LH_P2_1_3 _lh_camparams_arg4_1 _lh_camparams_arg5_1 initfirstray_1 =
  (let rec _lh_veccross_LH_P3_2_2 = 1.0 in
    (let rec _lh_veccross_LH_P3_1_2 = 0.0 in
      (let rec _lh_veccross_LH_P3_0_2 = 0.0 in
        (let rec _lh_vecnorm_LH_P3_2_1 = ((_lh_veccross_LH_P3_0_3 *. _lh_veccross_LH_P3_1_2) -. (_lh_veccross_LH_P3_0_2 *. _lh_veccross_LH_P3_1_3)) in
          (let rec _lh_vecnorm_LH_P3_1_1 = ((_lh_veccross_LH_P3_2_3 *. _lh_veccross_LH_P3_0_2) -. (_lh_veccross_LH_P3_2_2 *. _lh_veccross_LH_P3_0_3)) in
            (let rec _lh_vecnorm_LH_P3_0_1 = ((_lh_veccross_LH_P3_1_3 *. _lh_veccross_LH_P3_2_2) -. (_lh_veccross_LH_P3_1_2 *. _lh_veccross_LH_P3_2_3)) in
              (let rec len_1 = (sqrt (((_lh_vecnorm_LH_P3_0_1 *. _lh_vecnorm_LH_P3_0_1) +. (_lh_vecnorm_LH_P3_1_1 *. _lh_vecnorm_LH_P3_1_1)) +. (_lh_vecnorm_LH_P3_2_1 *. _lh_vecnorm_LH_P3_2_1))) in
                (let rec _lh_camparams_LH_P2_1_2 = len_1 in
                  (let rec _lh_camparams_LH_P2_0_2 = (`LH_P3((_lh_vecnorm_LH_P3_0_1 /. len_1), (_lh_vecnorm_LH_P3_1_1 /. len_1), (_lh_vecnorm_LH_P3_2_1 /. len_1))) in
                    (let rec _lh_matchIdent_6 = (vecnorm_lh__d1 ((veccross_lh__d2 _lh_camparams_LH_P2_0_2) _lh_camparams_LH_P2_0_3)) in
                      (((((_lh_matchIdent_6 _lh_camparams_LH_P2_0_2) _lh_camparams_LH_P2_1_3) _lh_camparams_arg4_1) _lh_camparams_arg5_1) initfirstray_1)))))))))));;
let rec vecsub_lh__d2 _lh_vecsub_arg1_0 _lh_vecsub_arg2_0 =
  (_lh_vecsub_arg1_0 _lh_vecsub_arg2_0);;
let rec veccross_lh__d1 _lh_veccross_arg1_1 _lh_veccross_arg2_1 =
  (match _lh_veccross_arg1_1 with
    | `LH_P3(_lh_veccross_LH_P3_0_4, _lh_veccross_LH_P3_1_4, _lh_veccross_LH_P3_2_4) -> 
      (((_lh_veccross_arg2_1 _lh_veccross_LH_P3_0_4) _lh_veccross_LH_P3_1_4) _lh_veccross_LH_P3_2_4)
    | _ -> 
      (failwith "error"));;
let rec vecnorm_lh__d3 _lh_vecnorm_arg1_2 =
  (_lh_vecnorm_arg1_2 99);;
let rec vecnorm_lh__d2 _lh_vecnorm_arg1_0 =
  (match _lh_vecnorm_arg1_0 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_2, _lh_vecnorm_LH_P3_1_2, _lh_vecnorm_LH_P3_2_2) -> 
      (let rec len_2 = (sqrt (((_lh_vecnorm_LH_P3_0_2 *. _lh_vecnorm_LH_P3_0_2) +. (_lh_vecnorm_LH_P3_1_2 *. _lh_vecnorm_LH_P3_1_2)) +. (_lh_vecnorm_LH_P3_2_2 *. _lh_vecnorm_LH_P3_2_2))) in
        (let rec _lh_camparams_LH_P2_1_4 = len_2 in
          (let rec _lh_camparams_LH_P2_0_4 = (`LH_P3((_lh_vecnorm_LH_P3_0_2 /. len_2), (_lh_vecnorm_LH_P3_1_2 /. len_2), (_lh_vecnorm_LH_P3_2_2 /. len_2))) in
            (fun _lh_camparams_arg3_1 _lh_camparams_arg4_3 _lh_camparams_arg5_3 initfirstray_3 -> 
              (let rec _lh_matchIdent_1_2 = (vecnorm_lh__d3 ((veccross_lh__d1 _lh_camparams_LH_P2_0_4) _lh_camparams_arg3_1)) in
                (((((_lh_matchIdent_1_2 _lh_camparams_LH_P2_0_4) _lh_camparams_LH_P2_1_4) _lh_camparams_arg4_3) _lh_camparams_arg5_3) initfirstray_3))))))
    | _ -> 
      (failwith "error"));;
let rec camparams_lh__d1 _lh_camparams_arg1_0 _lh_camparams_arg2_0 _lh_camparams_arg3_0 _lh_camparams_arg4_2 _lh_camparams_arg5_2 =
  (let rec initfirstray_2 = ((vecsub_lh__d2 _lh_camparams_arg2_0) _lh_camparams_arg1_0) in
    (let rec _lh_matchIdent_9 = (vecnorm_lh__d2 initfirstray_2) in
      ((((_lh_matchIdent_9 _lh_camparams_arg3_0) _lh_camparams_arg4_2) _lh_camparams_arg5_2) initfirstray_2)));;
let rec fov_lh__d1 =
  45.0;;
let rec lookat_lh__d1 _lh_vecsub_arg2_3 =
  (let rec _lh_vecsub_LH_P3_2_3 = 0.0 in
    (let rec _lh_vecsub_LH_P3_1_3 = 0.0 in
      (let rec _lh_vecsub_LH_P3_0_3 = 0.0 in
        (((_lh_vecsub_arg2_3 _lh_vecsub_LH_P3_0_3) _lh_vecsub_LH_P3_1_3) _lh_vecsub_LH_P3_2_3))));;
let rec lookfrom_lh__d1 _lh_vecsub_LH_P3_0_5 _lh_vecsub_LH_P3_1_5 _lh_vecsub_LH_P3_2_5 =
  (let rec _lh_vecsub_LH_P3_2_4 = 1.7 in
    (let rec _lh_vecsub_LH_P3_1_4 = 1.3 in
      (let rec _lh_vecsub_LH_P3_0_4 = 2.1 in
        (`LH_P3((_lh_vecsub_LH_P3_0_5 -. _lh_vecsub_LH_P3_0_4), (_lh_vecsub_LH_P3_1_5 -. _lh_vecsub_LH_P3_1_4), (_lh_vecsub_LH_P3_2_5 -. _lh_vecsub_LH_P3_2_4))))));;
let rec testlights_lh__d1 _lh_testlights_arg1_0 f_1_8 =
  (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (fun f_1_5 -> 
    (`LH_N)) in
    (let rec h_1_7 = (`Point((`LH_P3((0.0 -. 3.0), 1.0, 5.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_1_6 -> 
        (`LH_C((f_1_6 h_1_7), ((map_lh__d2 f_1_6) t_2_1)))))) in
    (let rec h_1_8 = (`Point((`LH_P3(1.0, (0.0 -. 4.0), 4.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_1_7 -> 
        (`LH_C((f_1_7 h_1_8), ((map_lh__d2 f_1_7) t_2_0)))))) in
    (let rec h_1_9 = (`Point((`LH_P3(4.0, 3.0, 2.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (`LH_C((f_1_8 h_1_9), ((map_lh__d2 f_1_8) t_1_9)))));;
let rec ray_lh__d1 _lh_ray_arg1_3 =
  (let rec lights_1 = (testlights_lh__d1 0) in
    (let rec _lh_matchIdent_1_3 = (((((camparams_lh__d1 lookfrom_lh__d1) lookat_lh__d1) vup_lh__d1) fov_lh__d1) (float_of_int _lh_ray_arg1_3)) in
      ((_lh_matchIdent_1_3 _lh_ray_arg1_3) lights_1)));;
let rec run_lh__d1 _lh_run_arg1_0 =
  (hash_lh__d1 ((map_lh__d1 snd_lh__d1) (ray_lh__d1 _lh_run_arg1_0)));;
let rec testSphere_nofib_lh__d1 _lh_testSphere_nofib_arg1_0 =
  (run_lh__d1 _lh_testSphere_nofib_arg1_0);;
end;;

