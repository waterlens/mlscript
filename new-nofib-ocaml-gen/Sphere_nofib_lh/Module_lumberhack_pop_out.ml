

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec foldr_lh f_5 i_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_1, t_1_3) -> 
      ((f_5 h_1_1) (((foldr_lh f_5) i_1) t_1_3))
    | `LH_N -> 
      i_1);;
let rec hash_lh _lh_hash_arg1_0 =
  (let rec u8_0 = (fun x_0 -> 
    ((fun _lh_funcomp_x_0 -> 
      (int_of_float ((fun x_1 -> 
        (255.0 *. x_1)) _lh_funcomp_x_0))) x_0)) in
    (((foldr_lh (fun rgb_0 acc_0 -> 
      (let rec _lh_matchIdent_2_2 = rgb_0 in
        (match _lh_matchIdent_2_2 with
          | `LH_P3(_lh_hash_LH_P3_0_0, _lh_hash_LH_P3_1_0, _lh_hash_LH_P3_2_0) -> 
            ((((u8_0 _lh_hash_LH_P3_0_0) + ((u8_0 _lh_hash_LH_P3_1_0) * 7)) + ((u8_0 _lh_hash_LH_P3_2_0) * 23)) + (acc_0 * 61))
          | _ -> 
            (failwith "error"))))) 0) _lh_hash_arg1_0));;
let rec vecscale_lh _lh_vecscale_arg1_0 _lh_vecscale_arg2_0 =
  (match _lh_vecscale_arg1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_0, _lh_vecscale_LH_P3_1_0, _lh_vecscale_LH_P3_2_0) -> 
      (`LH_P3((_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_0_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_1_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_2_0)))
    | _ -> 
      (failwith "error"));;
let rec tail_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec infinity_lh =
  100000000.0;;
let rec vecsub_lh _lh_vecsub_arg1_0 _lh_vecsub_arg2_0 =
  (match _lh_vecsub_arg1_0 with
    | `LH_P3(_lh_vecsub_LH_P3_0_0, _lh_vecsub_LH_P3_1_0, _lh_vecsub_LH_P3_2_0) -> 
      (match _lh_vecsub_arg2_0 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1, _lh_vecsub_LH_P3_1_1, _lh_vecsub_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_0 -. _lh_vecsub_LH_P3_0_1), (_lh_vecsub_LH_P3_1_0 -. _lh_vecsub_LH_P3_1_1), (_lh_vecsub_LH_P3_2_0 -. _lh_vecsub_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot_lh _lh_vecdot_arg1_0 _lh_vecdot_arg2_0 =
  (match _lh_vecdot_arg1_0 with
    | `LH_P3(_lh_vecdot_LH_P3_0_0, _lh_vecdot_LH_P3_1_0, _lh_vecdot_LH_P3_2_0) -> 
      (match _lh_vecdot_arg2_0 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1, _lh_vecdot_LH_P3_1_1, _lh_vecdot_LH_P3_2_1) -> 
          (((_lh_vecdot_LH_P3_0_0 *. _lh_vecdot_LH_P3_0_1) +. (_lh_vecdot_LH_P3_1_0 *. _lh_vecdot_LH_P3_1_1)) +. (_lh_vecdot_LH_P3_2_0 *. _lh_vecdot_LH_P3_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec sphereintersect_lh _lh_sphereintersect_arg1_0 _lh_sphereintersect_arg2_0 _lh_sphereintersect_arg3_0 =
  (match _lh_sphereintersect_arg3_0 with
    | `Sphere(_lh_sphereintersect_Sphere_0_0, _lh_sphereintersect_Sphere_1_0, _lh_sphereintersect_Sphere_2_0) -> 
      (let rec m_0 = ((vecsub_lh _lh_sphereintersect_arg1_0) _lh_sphereintersect_Sphere_0_0) in
        (let rec bm_0 = ((vecdot_lh m_0) _lh_sphereintersect_arg2_0) in
          (let rec m2_0 = ((vecdot_lh m_0) m_0) in
            (let rec disc_0 = (((bm_0 *. bm_0) -. m2_0) +. (_lh_sphereintersect_Sphere_1_0 *. _lh_sphereintersect_Sphere_1_0)) in
              (let rec slo_0 = ((0.0 -. bm_0) -. (sqrt disc_0)) in
                (let rec shi_0 = ((0.0 -. bm_0) +. (sqrt disc_0)) in
                  (if (disc_0 < 0.0) then
                    (let rec _lh_trace_LH_P2_1_0 = 0.0 in
                      (let rec _lh_trace_LH_P2_0_0 = false in
                        (fun _lh_trace_LH_C_0_0 _lh_trace_LH_C_1_0 sphmap_0 -> 
                          (if _lh_trace_LH_P2_0_0 then
                            (`LH_C((`LH_P2(_lh_trace_LH_P2_1_0, _lh_trace_LH_C_0_0)), (sphmap_0 _lh_trace_LH_C_1_0)))
                          else
                            (sphmap_0 _lh_trace_LH_C_1_0)))))
                  else
                    (if (slo_0 < 0.0) then
                      (if (shi_0 < 0.0) then
                        (let rec _lh_trace_LH_P2_1_1 = 0.0 in
                          (let rec _lh_trace_LH_P2_0_1 = false in
                            (fun _lh_trace_LH_C_0_1 _lh_trace_LH_C_1_1 sphmap_1 -> 
                              (if _lh_trace_LH_P2_0_1 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1, _lh_trace_LH_C_0_1)), (sphmap_1 _lh_trace_LH_C_1_1)))
                              else
                                (sphmap_1 _lh_trace_LH_C_1_1)))))
                      else
                        (let rec _lh_trace_LH_P2_1_2 = shi_0 in
                          (let rec _lh_trace_LH_P2_0_2 = true in
                            (fun _lh_trace_LH_C_0_2 _lh_trace_LH_C_1_2 sphmap_2 -> 
                              (if _lh_trace_LH_P2_0_2 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_2, _lh_trace_LH_C_0_2)), (sphmap_2 _lh_trace_LH_C_1_2)))
                              else
                                (sphmap_2 _lh_trace_LH_C_1_2))))))
                    else
                      (let rec _lh_trace_LH_P2_1_3 = slo_0 in
                        (let rec _lh_trace_LH_P2_0_3 = true in
                          (fun _lh_trace_LH_C_0_3 _lh_trace_LH_C_1_3 sphmap_3 -> 
                            (if _lh_trace_LH_P2_0_3 then
                              (`LH_C((`LH_P2(_lh_trace_LH_P2_1_3, _lh_trace_LH_C_0_3)), (sphmap_3 _lh_trace_LH_C_1_3)))
                            else
                              (sphmap_3 _lh_trace_LH_C_1_3)))))))))))))
    | _ -> 
      (failwith "error"));;
let rec head_lh ls_1 =
  (match ls_1 with
    | `LH_C(h_9, t_1_1) -> 
      h_9
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec trace_lh _lh_trace_arg1_0 _lh_trace_arg2_0 _lh_trace_arg3_0 =
  (let rec f_0 = (fun d1s1_0 d2s2_0 -> 
    (let rec _lh_matchIdent_9 = d1s1_0 in
      (match _lh_matchIdent_9 with
        | `LH_P2(_lh_trace_LH_P2_0_4, _lh_trace_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_1_0 = d2s2_0 in
            (match _lh_matchIdent_1_0 with
              | `LH_P2(_lh_trace_LH_P2_0_5, _lh_trace_LH_P2_1_5) -> 
                (if (_lh_trace_LH_P2_0_4 < _lh_trace_LH_P2_0_5) then
                  (`LH_P2(_lh_trace_LH_P2_0_4, _lh_trace_LH_P2_1_4))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_5, _lh_trace_LH_P2_1_5)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_4 = (fun xss_0 -> 
      (let rec _lh_matchIdent_1_1 = xss_0 in
        (match _lh_matchIdent_1_1 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_4, _lh_trace_LH_C_1_4) -> 
            (let rec _lh_matchIdent_1_2 = (((sphereintersect_lh _lh_trace_arg2_0) _lh_trace_arg3_0) _lh_trace_LH_C_0_4) in
              (((_lh_matchIdent_1_2 _lh_trace_LH_C_0_4) _lh_trace_LH_C_1_4) sphmap_4))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_0 = (sphmap_4 _lh_trace_arg1_0) in
        (if (null_lh dists_0) then
          (`LH_P3(false, infinity_lh, (head_lh _lh_trace_arg1_0)))
        else
          (let rec _lh_matchIdent_1_3 = (((foldr_lh f_0) (head_lh dists_0)) (tail_lh dists_0)) in
            (match _lh_matchIdent_1_3 with
              | `LH_P2(_lh_trace_LH_P2_0_6, _lh_trace_LH_P2_1_6) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_6, _lh_trace_LH_P2_1_6))
              | _ -> 
                (failwith "error")))))));;
let rec vecnorm_lh _lh_vecnorm_arg1_0 =
  (match _lh_vecnorm_arg1_0 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_0, _lh_vecnorm_LH_P3_1_0, _lh_vecnorm_LH_P3_2_0) -> 
      (let rec len_0 = (sqrt (((_lh_vecnorm_LH_P3_0_0 *. _lh_vecnorm_LH_P3_0_0) +. (_lh_vecnorm_LH_P3_1_0 *. _lh_vecnorm_LH_P3_1_0)) +. (_lh_vecnorm_LH_P3_2_0 *. _lh_vecnorm_LH_P3_2_0))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_0 /. len_0), (_lh_vecnorm_LH_P3_1_0 /. len_0), (_lh_vecnorm_LH_P3_2_0 /. len_0))), len_0)))
    | _ -> 
      (failwith "error"));;
let rec vecadd_lh _lh_vecadd_arg1_0 _lh_vecadd_arg2_0 =
  (match _lh_vecadd_arg1_0 with
    | `LH_P3(_lh_vecadd_LH_P3_0_0, _lh_vecadd_LH_P3_1_0, _lh_vecadd_LH_P3_2_0) -> 
      (match _lh_vecadd_arg2_0 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1, _lh_vecadd_LH_P3_1_1, _lh_vecadd_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_0 +. _lh_vecadd_LH_P3_0_1), (_lh_vecadd_LH_P3_1_0 +. _lh_vecadd_LH_P3_1_1), (_lh_vecadd_LH_P3_2_0 +. _lh_vecadd_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec background_lh =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec lookfrom_lh =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec mappend_lh xs_0 ys_1_6 =
  (xs_0 ys_1_6);;
let rec reflectsurf_lh _lh_reflectsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (match _lh_listcomp_fun_ls_h_2 with
          | `Reflect(_lh_reflectsurf_Reflect_0_0) -> 
            (let rec t_3 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2) in
              (let rec h_3 = _lh_reflectsurf_Reflect_0_0 in
                (fun ys_4 -> 
                  (`LH_C(h_3, ((mappend_lh t_3) ys_4))))))
          | _ -> 
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
      | `LH_N -> 
        (fun ys_5 -> 
          ys_5))) in
    (_lh_listcomp_fun_2 _lh_reflectsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec refractsurf_lh _lh_refractsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (match _lh_listcomp_fun_ls_h_3 with
          | `Refract(_lh_refractsurf_Refract_0_0) -> 
            (let rec t_4 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3) in
              (let rec h_4 = _lh_refractsurf_Refract_0_0 in
                (fun ys_6 -> 
                  (`LH_C(h_4, ((mappend_lh t_4) ys_6))))))
          | _ -> 
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (fun ys_7 -> 
          ys_7))) in
    (_lh_listcomp_fun_3 _lh_refractsurf_arg1_0))) (`LH_C(1.0, (`LH_N)))));;
let rec specpowsurf_lh _lh_specpowsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (match _lh_listcomp_fun_ls_h_4 with
          | `Specpow(_lh_specpowsurf_Specpow_0_0) -> 
            (let rec t_5 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4) in
              (let rec h_5 = _lh_specpowsurf_Specpow_0_0 in
                (fun ys_8 -> 
                  (`LH_C(h_5, ((mappend_lh t_5) ys_8))))))
          | _ -> 
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
      | `LH_N -> 
        (fun ys_9 -> 
          ys_9))) in
    (_lh_listcomp_fun_4 _lh_specpowsurf_arg1_0))) (`LH_C(8.0, (`LH_N)))));;
let rec vecmult_lh _lh_vecmult_arg1_0 _lh_vecmult_arg2_0 =
  (match _lh_vecmult_arg1_0 with
    | `LH_P3(_lh_vecmult_LH_P3_0_0, _lh_vecmult_LH_P3_1_0, _lh_vecmult_LH_P3_2_0) -> 
      (match _lh_vecmult_arg2_0 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1, _lh_vecmult_LH_P3_1_1, _lh_vecmult_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_0 *. _lh_vecmult_LH_P3_0_1), (_lh_vecmult_LH_P3_1_0 *. _lh_vecmult_LH_P3_1_1), (_lh_vecmult_LH_P3_2_0 *. _lh_vecmult_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec specularsurf_lh _lh_specularsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
        (match _lh_listcomp_fun_ls_h_7 with
          | `Specular(_lh_specularsurf_Specular_0_0) -> 
            (let rec t_9 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7) in
              (let rec h_7 = _lh_specularsurf_Specular_0_0 in
                (fun ys_1_0 -> 
                  (`LH_C(h_7, ((mappend_lh t_9) ys_1_0))))))
          | _ -> 
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
      | `LH_N -> 
        (fun ys_1_1 -> 
          ys_1_1))) in
    (_lh_listcomp_fun_7 _lh_specularsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec diffusesurf_lh _lh_diffusesurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
        (match _lh_listcomp_fun_ls_h_8 with
          | `Diffuse(_lh_diffusesurf_Diffuse_0_0) -> 
            (let rec t_1_0 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8) in
              (let rec h_8 = _lh_diffusesurf_Diffuse_0_0 in
                (fun ys_1_2 -> 
                  (`LH_C(h_8, ((mappend_lh t_1_0) ys_1_2))))))
          | _ -> 
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
      | `LH_N -> 
        (fun ys_1_3 -> 
          ys_1_3))) in
    (_lh_listcomp_fun_8 _lh_diffusesurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec epsilon_lh =
  0.000001;;
let rec s2_lh _lh_s2_arg1_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec testspheres_lh _lh_testspheres_arg1_0 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2_lh 0))), (`LH_N)))))))))))))))))))));;
let rec bodysurf_lh _lh_bodysurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
    (match _lh_listcomp_fun_para_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `Body(_lh_bodysurf_Body_0_0) -> 
            (let rec t_1_2 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9) in
              (let rec h_1_0 = _lh_bodysurf_Body_0_0 in
                (fun ys_1_4 -> 
                  (`LH_C(h_1_0, ((mappend_lh t_1_2) ys_1_4))))))
          | _ -> 
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
      | `LH_N -> 
        (fun ys_1_5 -> 
          ys_1_5))) in
    (_lh_listcomp_fun_9 _lh_bodysurf_arg1_0))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))));;
let rec shadowed_lh _lh_shadowed_arg1_0 _lh_shadowed_arg2_0 _lh_shadowed_arg3_0 =
  (let rec _lh_matchIdent_1_4 = (((trace_lh (testspheres_lh 0)) ((vecadd_lh _lh_shadowed_arg1_0) ((vecscale_lh _lh_shadowed_arg2_0) epsilon_lh))) _lh_shadowed_arg2_0) in
    (match _lh_matchIdent_1_4 with
      | `LH_P3(_lh_shadowed_LH_P3_0_0, _lh_shadowed_LH_P3_1_0, _lh_shadowed_LH_P3_2_0) -> 
        (if (not _lh_shadowed_LH_P3_0_0) then
          (let rec _lh_lightray_LH_P2_1_0 = _lh_shadowed_arg3_0 in
            (let rec _lh_lightray_LH_P2_0_0 = false in
              (fun _lh_lightray_LH_P2_0_1 _lh_lightray_arg4_0 _lh_lightray_arg5_0 cosangle_0 -> 
                (if _lh_lightray_LH_P2_0_0 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_1 = (diffusesurf_lh _lh_lightray_arg5_0) in
                    (let rec spow_0 = (specpowsurf_lh _lh_lightray_arg5_0) in
                      (if (cosangle_0 <= 0.0) then
                        (let rec bodycol_0 = (bodysurf_lh _lh_lightray_arg5_0) in
                          (let rec cosalpha_0 = (0.0 -. ((vecdot_lh _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_1)) in
                            (let rec diffcont_0 = ((vecmult_lh ((vecscale_lh diff_1) (0.0 -. cosangle_0))) _lh_lightray_LH_P2_1_0) in
                              (let rec speccont_0 = (if (cosalpha_0 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh ((vecscale_lh bodycol_0) (cosalpha_0 ** spow_0))) _lh_lightray_LH_P2_1_0)) in
                                ((vecadd_lh diffcont_0) speccont_0)))))
                      else
                        (let rec spec_0 = (specularsurf_lh _lh_lightray_arg5_0) in
                          (let rec cosalpha_1 = ((vecdot_lh _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_1) in
                            (let rec diffcont_1 = ((vecmult_lh ((vecscale_lh diff_1) cosangle_0)) _lh_lightray_LH_P2_1_0) in
                              (let rec speccont_1 = (if (cosalpha_1 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh ((vecscale_lh spec_0) (cosalpha_1 ** spow_0))) _lh_lightray_LH_P2_1_0)) in
                                ((vecadd_lh diffcont_1) speccont_1))))))))))))
        else
          (let rec _lh_lightray_LH_P2_1_1 = _lh_shadowed_arg3_0 in
            (let rec _lh_lightray_LH_P2_0_2 = true in
              (fun _lh_lightray_LH_P2_0_3 _lh_lightray_arg4_1 _lh_lightray_arg5_1 cosangle_1 -> 
                (if _lh_lightray_LH_P2_0_2 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_2 = (diffusesurf_lh _lh_lightray_arg5_1) in
                    (let rec spow_1 = (specpowsurf_lh _lh_lightray_arg5_1) in
                      (if (cosangle_1 <= 0.0) then
                        (let rec bodycol_1 = (bodysurf_lh _lh_lightray_arg5_1) in
                          (let rec cosalpha_2 = (0.0 -. ((vecdot_lh _lh_lightray_arg4_1) _lh_lightray_LH_P2_0_3)) in
                            (let rec diffcont_2 = ((vecmult_lh ((vecscale_lh diff_2) (0.0 -. cosangle_1))) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_2 = (if (cosalpha_2 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh ((vecscale_lh bodycol_1) (cosalpha_2 ** spow_1))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh diffcont_2) speccont_2)))))
                      else
                        (let rec spec_1 = (specularsurf_lh _lh_lightray_arg5_1) in
                          (let rec cosalpha_3 = ((vecdot_lh _lh_lightray_arg4_1) _lh_lightray_LH_P2_0_3) in
                            (let rec diffcont_3 = ((vecmult_lh ((vecscale_lh diff_2) cosangle_1)) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_3 = (if (cosalpha_3 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh ((vecscale_lh spec_1) (cosalpha_3 ** spow_1))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh diffcont_3) speccont_3)))))))))))))
      | _ -> 
        (failwith "error")));;
let rec lightcolour_lh _lh_lightcolour_arg1_0 =
  (match _lh_lightcolour_arg1_0 with
    | `Directional(_lh_lightcolour_Directional_0_0, _lh_lightcolour_Directional_1_0) -> 
      _lh_lightcolour_Directional_1_0
    | `Point(_lh_lightcolour_Point_0_0, _lh_lightcolour_Point_1_0) -> 
      _lh_lightcolour_Point_1_0
    | _ -> 
      (failwith "error"));;
let rec fst_lh _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec lightdirection_lh _lh_lightdirection_arg1_0 _lh_lightdirection_arg2_0 =
  (match _lh_lightdirection_arg1_0 with
    | `Directional(_lh_lightdirection_Directional_0_0, _lh_lightdirection_Directional_1_0) -> 
      (`LH_P2((fst_lh (vecnorm_lh _lh_lightdirection_Directional_0_0)), infinity_lh))
    | `Point(_lh_lightdirection_Point_0_0, _lh_lightdirection_Point_1_0) -> 
      (vecnorm_lh ((vecsub_lh _lh_lightdirection_Point_0_0) _lh_lightdirection_arg2_0))
    | _ -> 
      (failwith "error"));;
let rec lightray_lh _lh_lightray_arg1_0 _lh_lightray_arg2_0 _lh_lightray_arg3_0 _lh_lightray_arg4_2 _lh_lightray_arg5_2 =
  (let rec _lh_matchIdent_1_9 = ((lightdirection_lh _lh_lightray_arg1_0) _lh_lightray_arg2_0) in
    (match _lh_matchIdent_1_9 with
      | `LH_P2(_lh_lightray_LH_P2_0_4, _lh_lightray_LH_P2_1_2) -> 
        (let rec cosangle_2 = ((vecdot_lh _lh_lightray_LH_P2_0_4) _lh_lightray_arg3_0) in
          (let rec _lh_matchIdent_2_0 = (((shadowed_lh _lh_lightray_arg2_0) _lh_lightray_LH_P2_0_4) (lightcolour_lh _lh_lightray_arg1_0)) in
            ((((_lh_matchIdent_2_0 _lh_lightray_LH_P2_0_4) _lh_lightray_arg4_2) _lh_lightray_arg5_2) cosangle_2)))
      | _ -> 
        (failwith "error")));;
let rec ambientsurf_lh _lh_ambientsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `Ambient(_lh_ambientsurf_Ambient_0_0) -> 
            (let rec t_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_1 = _lh_ambientsurf_Ambient_0_0 in
                (fun ys_0 -> 
                  (`LH_C(h_1, ((mappend_lh t_1) ys_0))))))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (fun ys_1 -> 
          ys_1))) in
    (_lh_listcomp_fun_0 _lh_ambientsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec transmitsurf_lh _lh_transmitsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (match _lh_listcomp_fun_ls_h_1 with
          | `Transmit(_lh_transmitsurf_Transmit_0_0) -> 
            (let rec t_2 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
              (let rec h_2 = _lh_transmitsurf_Transmit_0_0 in
                (fun ys_2 -> 
                  (`LH_C(h_2, ((mappend_lh t_2) ys_2))))))
          | _ -> 
            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (fun ys_3 -> 
          ys_3))) in
    (_lh_listcomp_fun_1 _lh_transmitsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec map_lh f_4 ls_2 =
  (ls_2 f_4);;
let rec spheresurf_lh _lh_spheresurf_arg1_0 =
  (match _lh_spheresurf_arg1_0 with
    | `Sphere(_lh_spheresurf_Sphere_0_0, _lh_spheresurf_Sphere_1_0, _lh_spheresurf_Sphere_2_0) -> 
      _lh_spheresurf_Sphere_2_0
    | _ -> 
      (failwith "error"));;
let rec spherenormal_lh _lh_spherenormal_arg1_0 _lh_spherenormal_arg2_0 =
  (match _lh_spherenormal_arg2_0 with
    | `Sphere(_lh_spherenormal_Sphere_0_0, _lh_spherenormal_Sphere_1_0, _lh_spherenormal_Sphere_2_0) -> 
      ((vecscale_lh ((vecsub_lh _lh_spherenormal_arg1_0) _lh_spherenormal_Sphere_0_0)) (1.0 /. _lh_spherenormal_Sphere_1_0))
    | _ -> 
      (failwith "error"));;
let rec is_zerovector_lh _lh_is_zerovector_arg1_0 =
  (match _lh_is_zerovector_arg1_0 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_0, _lh_is_zerovector_LH_P3_1_0, _lh_is_zerovector_LH_P3_2_0) -> 
      (((_lh_is_zerovector_LH_P3_0_0 < epsilon_lh) && (_lh_is_zerovector_LH_P3_1_0 < epsilon_lh)) && (_lh_is_zerovector_LH_P3_2_0 < epsilon_lh))
    | _ -> 
      (failwith "error"));;
let rec vecsum_lh _lh_vecsum_arg1_0 =
  (((foldr_lh vecadd_lh) (`LH_P3(0.0, 0.0, 0.0))) _lh_vecsum_arg1_0);;
let rec reflectray_lh _lh_reflectray_arg1_0 _lh_reflectray_arg2_0 _lh_reflectray_arg3_0 _lh_reflectray_arg4_0 _lh_reflectray_arg5_0 _lh_reflectray_arg6_0 =
  (let rec newcontrib_4 = ((vecmult_lh _lh_reflectray_arg4_0) _lh_reflectray_arg5_0) in
    (let rec nearpos_4 = ((vecadd_lh _lh_reflectray_arg1_0) ((vecscale_lh _lh_reflectray_arg2_0) epsilon_lh)) in
      (let rec _lh_matchIdent_1_8 = (((trace_lh (testspheres_lh 0)) nearpos_4) _lh_reflectray_arg2_0) in
        (match _lh_matchIdent_1_8 with
          | `LH_P3(_lh_reflectray_LH_P3_0_0, _lh_reflectray_LH_P3_1_0, _lh_reflectray_LH_P3_2_0) -> 
            (let rec newcol_4 = (if _lh_reflectray_LH_P3_0_0 then
              ((((((shade_lh _lh_reflectray_arg3_0) _lh_reflectray_LH_P3_2_0) nearpos_4) _lh_reflectray_arg2_0) _lh_reflectray_LH_P3_1_0) newcontrib_4)
            else
              background_lh) in
              (if (is_zerovector_lh newcontrib_4) then
                _lh_reflectray_arg6_0
              else
                ((vecadd_lh _lh_reflectray_arg6_0) ((vecmult_lh newcol_4) _lh_reflectray_arg4_0))))
          | _ -> 
            (failwith "error")))))
and
refractray_lh _lh_refractray_arg1_0 _lh_refractray_arg2_0 _lh_refractray_arg3_0 =
  (let rec dotp_0 = (0.0 -. ((vecdot_lh _lh_refractray_arg2_0) _lh_refractray_arg3_0)) in
    (let rec _lh_matchIdent_4 = (if (dotp_0 < 0.0) then
      (let rec _lh_refractray_LH_P3_2_0 = (1.0 /. _lh_refractray_arg1_0) in
        (let rec _lh_refractray_LH_P3_1_0 = (0.0 -. dotp_0) in
          (let rec _lh_refractray_LH_P3_0_0 = ((vecscale_lh _lh_refractray_arg3_0) (0.0 -. 1.0)) in
            (fun _lh_refractray_arg2_1 -> 
              (let rec disc_1 = (((1.0 -. _lh_refractray_LH_P3_2_0) *. _lh_refractray_LH_P3_2_0) *. (1.0 -. (_lh_refractray_LH_P3_1_0 *. _lh_refractray_LH_P3_1_0))) in
                (let rec t_6 = ((_lh_refractray_LH_P3_2_0 *. _lh_refractray_LH_P3_1_0) -. (sqrt disc_1)) in
                  (if (disc_1 < 0.0) then
                    (let rec _lh_transmitray_LH_P2_1_0 = (`LH_P3(0.0, 0.0, 0.0)) in
                      (fun _lh_transmitray_arg1_0 _lh_transmitray_arg2_0 _lh_transmitray_arg3_0 _lh_transmitray_arg6_0 newcontrib_0 -> 
                        (let rec nearpos_0 = ((vecadd_lh _lh_transmitray_arg3_0) ((vecscale_lh _lh_transmitray_LH_P2_1_0) epsilon_lh)) in
                          (let rec _lh_matchIdent_5 = (((trace_lh (testspheres_lh 0)) nearpos_0) _lh_transmitray_LH_P2_1_0) in
                            (match _lh_matchIdent_5 with
                              | `LH_P3(_lh_transmitray_LH_P3_0_0, _lh_transmitray_LH_P3_1_0, _lh_transmitray_LH_P3_2_0) -> 
                                (let rec newcol_0 = (if _lh_transmitray_LH_P3_0_0 then
                                  ((((((shade_lh _lh_transmitray_arg1_0) _lh_transmitray_LH_P3_2_0) nearpos_0) _lh_transmitray_LH_P2_1_0) _lh_transmitray_LH_P3_1_0) newcontrib_0)
                                else
                                  background_lh) in
                                  (if (is_zerovector_lh newcontrib_0) then
                                    (let rec _lh_shade_LH_P2_1_1 = _lh_transmitray_arg2_0 in
                                      (let rec _lh_shade_LH_P2_0_1 = false in
                                        (fun _lh_shade_arg1_2 _lh_shade_arg6_2 hitpos_2 refl_2 surf_2 trintensity_2 -> 
                                          (let rec reflsurf_1 = ((vecscale_lh (specularsurf_lh surf_2)) (reflectsurf_lh surf_2)) in
                                            (let rec reflectiv_1 = (if _lh_shade_LH_P2_0_1 then
                                              ((vecadd_lh trintensity_2) reflsurf_1)
                                            else
                                              reflsurf_1) in
                                              (let rec rcol_1 = (if (is_zerovector_lh reflectiv_1) then
                                                _lh_shade_LH_P2_1_1
                                              else
                                                ((((((reflectray_lh hitpos_2) refl_2) _lh_shade_arg1_2) reflectiv_1) _lh_shade_arg6_2) _lh_shade_LH_P2_1_1)) in
                                                rcol_1))))))
                                  else
                                    (let rec _lh_shade_LH_P2_1_2 = ((vecadd_lh ((vecmult_lh newcol_0) _lh_transmitray_arg6_0)) _lh_transmitray_arg2_0) in
                                      (let rec _lh_shade_LH_P2_0_2 = false in
                                        (fun _lh_shade_arg1_3 _lh_shade_arg6_3 hitpos_3 refl_3 surf_3 trintensity_3 -> 
                                          (let rec reflsurf_2 = ((vecscale_lh (specularsurf_lh surf_3)) (reflectsurf_lh surf_3)) in
                                            (let rec reflectiv_2 = (if _lh_shade_LH_P2_0_2 then
                                              ((vecadd_lh trintensity_3) reflsurf_2)
                                            else
                                              reflsurf_2) in
                                              (let rec rcol_2 = (if (is_zerovector_lh reflectiv_2) then
                                                _lh_shade_LH_P2_1_2
                                              else
                                                ((((((reflectray_lh hitpos_3) refl_3) _lh_shade_arg1_3) reflectiv_2) _lh_shade_arg6_3) _lh_shade_LH_P2_1_2)) in
                                                rcol_2))))))))
                              | _ -> 
                                (failwith "error"))))))
                  else
                    (let rec _lh_transmitray_LH_P2_1_1 = ((vecadd_lh ((vecscale_lh _lh_refractray_LH_P3_0_0) t_6)) ((vecscale_lh _lh_refractray_arg2_1) _lh_refractray_LH_P3_2_0)) in
                      (fun _lh_transmitray_arg1_1 _lh_transmitray_arg2_1 _lh_transmitray_arg3_1 _lh_transmitray_arg6_1 newcontrib_1 -> 
                        (let rec nearpos_1 = ((vecadd_lh _lh_transmitray_arg3_1) ((vecscale_lh _lh_transmitray_LH_P2_1_1) epsilon_lh)) in
                          (let rec _lh_matchIdent_6 = (((trace_lh (testspheres_lh 0)) nearpos_1) _lh_transmitray_LH_P2_1_1) in
                            (match _lh_matchIdent_6 with
                              | `LH_P3(_lh_transmitray_LH_P3_0_1, _lh_transmitray_LH_P3_1_1, _lh_transmitray_LH_P3_2_1) -> 
                                (let rec newcol_1 = (if _lh_transmitray_LH_P3_0_1 then
                                  ((((((shade_lh _lh_transmitray_arg1_1) _lh_transmitray_LH_P3_2_1) nearpos_1) _lh_transmitray_LH_P2_1_1) _lh_transmitray_LH_P3_1_1) newcontrib_1)
                                else
                                  background_lh) in
                                  (if (is_zerovector_lh newcontrib_1) then
                                    (let rec _lh_shade_LH_P2_1_3 = _lh_transmitray_arg2_1 in
                                      (let rec _lh_shade_LH_P2_0_3 = false in
                                        (fun _lh_shade_arg1_4 _lh_shade_arg6_4 hitpos_4 refl_4 surf_4 trintensity_4 -> 
                                          (let rec reflsurf_3 = ((vecscale_lh (specularsurf_lh surf_4)) (reflectsurf_lh surf_4)) in
                                            (let rec reflectiv_3 = (if _lh_shade_LH_P2_0_3 then
                                              ((vecadd_lh trintensity_4) reflsurf_3)
                                            else
                                              reflsurf_3) in
                                              (let rec rcol_3 = (if (is_zerovector_lh reflectiv_3) then
                                                _lh_shade_LH_P2_1_3
                                              else
                                                ((((((reflectray_lh hitpos_4) refl_4) _lh_shade_arg1_4) reflectiv_3) _lh_shade_arg6_4) _lh_shade_LH_P2_1_3)) in
                                                rcol_3))))))
                                  else
                                    (let rec _lh_shade_LH_P2_1_4 = ((vecadd_lh ((vecmult_lh newcol_1) _lh_transmitray_arg6_1)) _lh_transmitray_arg2_1) in
                                      (let rec _lh_shade_LH_P2_0_4 = false in
                                        (fun _lh_shade_arg1_5 _lh_shade_arg6_5 hitpos_5 refl_5 surf_5 trintensity_5 -> 
                                          (let rec reflsurf_4 = ((vecscale_lh (specularsurf_lh surf_5)) (reflectsurf_lh surf_5)) in
                                            (let rec reflectiv_4 = (if _lh_shade_LH_P2_0_4 then
                                              ((vecadd_lh trintensity_5) reflsurf_4)
                                            else
                                              reflsurf_4) in
                                              (let rec rcol_4 = (if (is_zerovector_lh reflectiv_4) then
                                                _lh_shade_LH_P2_1_4
                                              else
                                                ((((((reflectray_lh hitpos_5) refl_5) _lh_shade_arg1_5) reflectiv_4) _lh_shade_arg6_5) _lh_shade_LH_P2_1_4)) in
                                                rcol_4))))))))
                              | _ -> 
                                (failwith "error")))))))))))))
    else
      (let rec _lh_refractray_LH_P3_2_1 = _lh_refractray_arg1_0 in
        (let rec _lh_refractray_LH_P3_1_1 = dotp_0 in
          (let rec _lh_refractray_LH_P3_0_1 = _lh_refractray_arg3_0 in
            (fun _lh_refractray_arg2_2 -> 
              (let rec disc_2 = (((1.0 -. _lh_refractray_LH_P3_2_1) *. _lh_refractray_LH_P3_2_1) *. (1.0 -. (_lh_refractray_LH_P3_1_1 *. _lh_refractray_LH_P3_1_1))) in
                (let rec t_7 = ((_lh_refractray_LH_P3_2_1 *. _lh_refractray_LH_P3_1_1) -. (sqrt disc_2)) in
                  (if (disc_2 < 0.0) then
                    (let rec _lh_transmitray_LH_P2_1_2 = (`LH_P3(0.0, 0.0, 0.0)) in
                      (fun _lh_transmitray_arg1_2 _lh_transmitray_arg2_2 _lh_transmitray_arg3_2 _lh_transmitray_arg6_2 newcontrib_2 -> 
                        (let rec nearpos_2 = ((vecadd_lh _lh_transmitray_arg3_2) ((vecscale_lh _lh_transmitray_LH_P2_1_2) epsilon_lh)) in
                          (let rec _lh_matchIdent_7 = (((trace_lh (testspheres_lh 0)) nearpos_2) _lh_transmitray_LH_P2_1_2) in
                            (match _lh_matchIdent_7 with
                              | `LH_P3(_lh_transmitray_LH_P3_0_2, _lh_transmitray_LH_P3_1_2, _lh_transmitray_LH_P3_2_2) -> 
                                (let rec newcol_2 = (if _lh_transmitray_LH_P3_0_2 then
                                  ((((((shade_lh _lh_transmitray_arg1_2) _lh_transmitray_LH_P3_2_2) nearpos_2) _lh_transmitray_LH_P2_1_2) _lh_transmitray_LH_P3_1_2) newcontrib_2)
                                else
                                  background_lh) in
                                  (if (is_zerovector_lh newcontrib_2) then
                                    (let rec _lh_shade_LH_P2_1_5 = _lh_transmitray_arg2_2 in
                                      (let rec _lh_shade_LH_P2_0_5 = false in
                                        (fun _lh_shade_arg1_6 _lh_shade_arg6_6 hitpos_6 refl_6 surf_6 trintensity_6 -> 
                                          (let rec reflsurf_5 = ((vecscale_lh (specularsurf_lh surf_6)) (reflectsurf_lh surf_6)) in
                                            (let rec reflectiv_5 = (if _lh_shade_LH_P2_0_5 then
                                              ((vecadd_lh trintensity_6) reflsurf_5)
                                            else
                                              reflsurf_5) in
                                              (let rec rcol_5 = (if (is_zerovector_lh reflectiv_5) then
                                                _lh_shade_LH_P2_1_5
                                              else
                                                ((((((reflectray_lh hitpos_6) refl_6) _lh_shade_arg1_6) reflectiv_5) _lh_shade_arg6_6) _lh_shade_LH_P2_1_5)) in
                                                rcol_5))))))
                                  else
                                    (let rec _lh_shade_LH_P2_1_6 = ((vecadd_lh ((vecmult_lh newcol_2) _lh_transmitray_arg6_2)) _lh_transmitray_arg2_2) in
                                      (let rec _lh_shade_LH_P2_0_6 = false in
                                        (fun _lh_shade_arg1_7 _lh_shade_arg6_7 hitpos_7 refl_7 surf_7 trintensity_7 -> 
                                          (let rec reflsurf_6 = ((vecscale_lh (specularsurf_lh surf_7)) (reflectsurf_lh surf_7)) in
                                            (let rec reflectiv_6 = (if _lh_shade_LH_P2_0_6 then
                                              ((vecadd_lh trintensity_7) reflsurf_6)
                                            else
                                              reflsurf_6) in
                                              (let rec rcol_6 = (if (is_zerovector_lh reflectiv_6) then
                                                _lh_shade_LH_P2_1_6
                                              else
                                                ((((((reflectray_lh hitpos_7) refl_7) _lh_shade_arg1_7) reflectiv_6) _lh_shade_arg6_7) _lh_shade_LH_P2_1_6)) in
                                                rcol_6))))))))
                              | _ -> 
                                (failwith "error"))))))
                  else
                    (let rec _lh_transmitray_LH_P2_1_3 = ((vecadd_lh ((vecscale_lh _lh_refractray_LH_P3_0_1) t_7)) ((vecscale_lh _lh_refractray_arg2_2) _lh_refractray_LH_P3_2_1)) in
                      (fun _lh_transmitray_arg1_3 _lh_transmitray_arg2_3 _lh_transmitray_arg3_3 _lh_transmitray_arg6_3 newcontrib_3 -> 
                        (let rec nearpos_3 = ((vecadd_lh _lh_transmitray_arg3_3) ((vecscale_lh _lh_transmitray_LH_P2_1_3) epsilon_lh)) in
                          (let rec _lh_matchIdent_8 = (((trace_lh (testspheres_lh 0)) nearpos_3) _lh_transmitray_LH_P2_1_3) in
                            (match _lh_matchIdent_8 with
                              | `LH_P3(_lh_transmitray_LH_P3_0_3, _lh_transmitray_LH_P3_1_3, _lh_transmitray_LH_P3_2_3) -> 
                                (let rec newcol_3 = (if _lh_transmitray_LH_P3_0_3 then
                                  ((((((shade_lh _lh_transmitray_arg1_3) _lh_transmitray_LH_P3_2_3) nearpos_3) _lh_transmitray_LH_P2_1_3) _lh_transmitray_LH_P3_1_3) newcontrib_3)
                                else
                                  background_lh) in
                                  (if (is_zerovector_lh newcontrib_3) then
                                    (let rec _lh_shade_LH_P2_1_7 = _lh_transmitray_arg2_3 in
                                      (let rec _lh_shade_LH_P2_0_7 = false in
                                        (fun _lh_shade_arg1_8 _lh_shade_arg6_8 hitpos_8 refl_8 surf_8 trintensity_8 -> 
                                          (let rec reflsurf_7 = ((vecscale_lh (specularsurf_lh surf_8)) (reflectsurf_lh surf_8)) in
                                            (let rec reflectiv_7 = (if _lh_shade_LH_P2_0_7 then
                                              ((vecadd_lh trintensity_8) reflsurf_7)
                                            else
                                              reflsurf_7) in
                                              (let rec rcol_7 = (if (is_zerovector_lh reflectiv_7) then
                                                _lh_shade_LH_P2_1_7
                                              else
                                                ((((((reflectray_lh hitpos_8) refl_8) _lh_shade_arg1_8) reflectiv_7) _lh_shade_arg6_8) _lh_shade_LH_P2_1_7)) in
                                                rcol_7))))))
                                  else
                                    (let rec _lh_shade_LH_P2_1_8 = ((vecadd_lh ((vecmult_lh newcol_3) _lh_transmitray_arg6_3)) _lh_transmitray_arg2_3) in
                                      (let rec _lh_shade_LH_P2_0_8 = false in
                                        (fun _lh_shade_arg1_9 _lh_shade_arg6_9 hitpos_9 refl_9 surf_9 trintensity_9 -> 
                                          (let rec reflsurf_8 = ((vecscale_lh (specularsurf_lh surf_9)) (reflectsurf_lh surf_9)) in
                                            (let rec reflectiv_8 = (if _lh_shade_LH_P2_0_8 then
                                              ((vecadd_lh trintensity_9) reflsurf_8)
                                            else
                                              reflsurf_8) in
                                              (let rec rcol_8 = (if (is_zerovector_lh reflectiv_8) then
                                                _lh_shade_LH_P2_1_8
                                              else
                                                ((((((reflectray_lh hitpos_9) refl_9) _lh_shade_arg1_9) reflectiv_8) _lh_shade_arg6_9) _lh_shade_LH_P2_1_8)) in
                                                rcol_8))))))))
                              | _ -> 
                                (failwith "error")))))))))))))) in
      (_lh_matchIdent_4 _lh_refractray_arg2_0)))
and
shade_lh _lh_shade_arg1_0 _lh_shade_arg2_0 _lh_shade_arg3_0 _lh_shade_arg4_0 _lh_shade_arg5_0 _lh_shade_arg6_0 =
  (let rec hitpos_0 = ((vecadd_lh _lh_shade_arg3_0) ((vecscale_lh _lh_shade_arg4_0) _lh_shade_arg5_0)) in
    (let rec ambientlight_0 = (`LH_P3(1.0, 1.0, 1.0)) in
      (let rec surf_0 = (spheresurf_lh _lh_shade_arg2_0) in
        (let rec amb_0 = ((vecmult_lh ambientlight_0) (ambientsurf_lh surf_0)) in
          (let rec norm_0 = ((spherenormal_lh hitpos_0) _lh_shade_arg2_0) in
            (let rec refl_0 = ((vecadd_lh _lh_shade_arg4_0) ((vecscale_lh norm_0) ((0.0 -. 2.0) *. ((vecdot_lh _lh_shade_arg4_0) norm_0)))) in
              (let rec diff_0 = (vecsum_lh ((map_lh (fun l_0 -> 
                (((((lightray_lh l_0) hitpos_0) norm_0) refl_0) surf_0))) _lh_shade_arg1_0)) in
                (let rec transmitted_0 = (transmitsurf_lh surf_0) in
                  (let rec simple_0 = ((vecadd_lh amb_0) diff_0) in
                    (let rec trintensity_0 = ((vecscale_lh (bodysurf_lh surf_0)) transmitted_0) in
                      (let rec _lh_matchIdent_0 = (if (transmitted_0 < epsilon_lh) then
                        (let rec _lh_shade_LH_P2_1_0 = simple_0 in
                          (let rec _lh_shade_LH_P2_0_0 = false in
                            (fun _lh_shade_arg1_1 _lh_shade_arg6_1 hitpos_1 refl_1 surf_1 trintensity_1 -> 
                              (let rec reflsurf_0 = ((vecscale_lh (specularsurf_lh surf_1)) (reflectsurf_lh surf_1)) in
                                (let rec reflectiv_0 = (if _lh_shade_LH_P2_0_0 then
                                  ((vecadd_lh trintensity_1) reflsurf_0)
                                else
                                  reflsurf_0) in
                                  (let rec rcol_0 = (if (is_zerovector_lh reflectiv_0) then
                                    _lh_shade_LH_P2_1_0
                                  else
                                    ((((((reflectray_lh hitpos_1) refl_1) _lh_shade_arg1_1) reflectiv_0) _lh_shade_arg6_1) _lh_shade_LH_P2_1_0)) in
                                    rcol_0))))))
                      else
                        ((((((((transmitray_lh _lh_shade_arg1_0) simple_0) hitpos_0) _lh_shade_arg4_0) (refractsurf_lh surf_0)) trintensity_0) _lh_shade_arg6_0) norm_0)) in
                        ((((((_lh_matchIdent_0 _lh_shade_arg1_0) _lh_shade_arg6_0) hitpos_0) refl_0) surf_0) trintensity_0))))))))))))
and
transmitray_lh _lh_transmitray_arg1_4 _lh_transmitray_arg2_4 _lh_transmitray_arg3_4 _lh_transmitray_arg4_0 _lh_transmitray_arg5_0 _lh_transmitray_arg6_4 _lh_transmitray_arg7_0 _lh_transmitray_arg8_0 =
  (let rec newcontrib_5 = ((vecmult_lh _lh_transmitray_arg6_4) _lh_transmitray_arg7_0) in
    (let rec _lh_matchIdent_2_1 = (((refractray_lh _lh_transmitray_arg5_0) _lh_transmitray_arg4_0) _lh_transmitray_arg8_0) in
      (((((_lh_matchIdent_2_1 _lh_transmitray_arg1_4) _lh_transmitray_arg2_4) _lh_transmitray_arg3_4) _lh_transmitray_arg6_4) newcontrib_5)));;
let rec tracepixel_lh _lh_tracepixel_arg1_0 _lh_tracepixel_arg2_0 _lh_tracepixel_arg3_0 _lh_tracepixel_arg4_0 _lh_tracepixel_arg5_0 _lh_tracepixel_arg6_0 _lh_tracepixel_arg7_0 =
  (let rec pos_0 = lookfrom_lh in
    (let rec _lh_matchIdent_2 = (vecnorm_lh ((vecadd_lh ((vecadd_lh _lh_tracepixel_arg5_0) ((vecscale_lh _lh_tracepixel_arg6_0) _lh_tracepixel_arg3_0))) ((vecscale_lh _lh_tracepixel_arg7_0) _lh_tracepixel_arg4_0))) in
      (match _lh_matchIdent_2 with
        | `LH_P2(_lh_tracepixel_LH_P2_0_0, _lh_tracepixel_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_3 = (((trace_lh _lh_tracepixel_arg1_0) pos_0) _lh_tracepixel_LH_P2_0_0) in
            (match _lh_matchIdent_3 with
              | `LH_P3(_lh_tracepixel_LH_P3_0_0, _lh_tracepixel_LH_P3_1_0, _lh_tracepixel_LH_P3_2_0) -> 
                (if _lh_tracepixel_LH_P3_0_0 then
                  ((((((shade_lh _lh_tracepixel_arg2_0) _lh_tracepixel_LH_P3_2_0) pos_0) _lh_tracepixel_LH_P2_0_0) _lh_tracepixel_LH_P3_1_0) (`LH_P3(1.0, 1.0, 1.0)))
                else
                  background_lh)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))));;
let rec pi_lh =
  3.141592653589793;;
let rec dtor_lh _lh_dtor_arg1_0 =
  ((_lh_dtor_arg1_0 *. pi_lh) /. 180.0);;
let rec veccross_lh _lh_veccross_arg1_0 _lh_veccross_arg2_0 =
  (match _lh_veccross_arg1_0 with
    | `LH_P3(_lh_veccross_LH_P3_0_0, _lh_veccross_LH_P3_1_0, _lh_veccross_LH_P3_2_0) -> 
      (match _lh_veccross_arg2_0 with
        | `LH_P3(_lh_veccross_LH_P3_0_1, _lh_veccross_LH_P3_1_1, _lh_veccross_LH_P3_2_1) -> 
          (`LH_P3(((_lh_veccross_LH_P3_1_0 *. _lh_veccross_LH_P3_2_1) -. (_lh_veccross_LH_P3_1_1 *. _lh_veccross_LH_P3_2_0)), ((_lh_veccross_LH_P3_2_0 *. _lh_veccross_LH_P3_0_1) -. (_lh_veccross_LH_P3_2_1 *. _lh_veccross_LH_P3_0_0)), ((_lh_veccross_LH_P3_0_0 *. _lh_veccross_LH_P3_1_1) -. (_lh_veccross_LH_P3_0_1 *. _lh_veccross_LH_P3_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec camparams_lh _lh_camparams_arg1_0 _lh_camparams_arg2_0 _lh_camparams_arg3_0 _lh_camparams_arg4_0 _lh_camparams_arg5_0 =
  (let rec initfirstray_0 = ((vecsub_lh _lh_camparams_arg2_0) _lh_camparams_arg1_0) in
    (let rec _lh_matchIdent_1_5 = (vecnorm_lh initfirstray_0) in
      (match _lh_matchIdent_1_5 with
        | `LH_P2(_lh_camparams_LH_P2_0_0, _lh_camparams_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1_6 = (vecnorm_lh ((veccross_lh _lh_camparams_LH_P2_0_0) _lh_camparams_arg3_0)) in
            (match _lh_matchIdent_1_6 with
              | `LH_P2(_lh_camparams_LH_P2_0_1, _lh_camparams_LH_P2_1_1) -> 
                (let rec _lh_matchIdent_1_7 = (vecnorm_lh ((veccross_lh _lh_camparams_LH_P2_0_1) _lh_camparams_LH_P2_0_0)) in
                  (match _lh_matchIdent_1_7 with
                    | `LH_P2(_lh_camparams_LH_P2_0_2, _lh_camparams_LH_P2_1_2) -> 
                      (let rec xfov_0 = _lh_camparams_arg4_0 in
                        (let rec yfov_0 = _lh_camparams_arg4_0 in
                          (let rec xwinsize_0 = _lh_camparams_arg5_0 in
                            (let rec ywinsize_0 = _lh_camparams_arg5_0 in
                              (let rec magx_0 = (((2.0 *. _lh_camparams_LH_P2_1_0) *. (tan (dtor_lh (xfov_0 /. 2.0)))) /. xwinsize_0) in
                                (let rec magy_0 = (((2.0 *. _lh_camparams_LH_P2_1_0) *. (tan (dtor_lh (yfov_0 /. 2.0)))) /. ywinsize_0) in
                                  (let rec scrnx_0 = ((vecscale_lh _lh_camparams_LH_P2_0_1) magx_0) in
                                    (let rec scrny_0 = ((vecscale_lh _lh_camparams_LH_P2_0_2) magy_0) in
                                      (let rec firstray_0 = ((vecsub_lh initfirstray_0) ((vecadd_lh ((vecscale_lh scrnx_0) (0.5 *. xwinsize_0))) ((vecscale_lh scrny_0) (0.5 *. ywinsize_0)))) in
                                        (let rec _lh_ray_LH_P3_2_0 = scrny_0 in
                                          (let rec _lh_ray_LH_P3_1_0 = scrnx_0 in
                                            (let rec _lh_ray_LH_P3_0_0 = firstray_0 in
                                              (fun _lh_ray_arg1_1 lights_1 -> 
                                                (let rec f_1 = (fun i_0 j_0 -> 
                                                  (((((((tracepixel_lh (testspheres_lh 0)) lights_1) (float_of_int i_0)) (float_of_int j_0)) _lh_ray_LH_P3_0_0) _lh_ray_LH_P3_1_0) _lh_ray_LH_P3_2_0)) in
                                                  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                                                    (match _lh_listcomp_fun_para_5 with
                                                      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                                                        (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
                                                          (match _lh_listcomp_fun_para_6 with
                                                            | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
                                                              (let rec t_8 = (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6) in
                                                                (let rec h_6 = (`LH_P2((`LH_P2(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_h_6)), ((f_1 _lh_listcomp_fun_ls_h_5) _lh_listcomp_fun_ls_h_6))) in
                                                                  (fun f_2 -> 
                                                                    (`LH_C((f_2 h_6), ((map_lh f_2) t_8))))))
                                                            | `LH_N -> 
                                                              (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))) in
                                                          (_lh_listcomp_fun_6 ((enumFromTo_lh 0) (_lh_ray_arg1_1 - 1))))
                                                      | `LH_N -> 
                                                        (fun f_3 -> 
                                                          (`LH_N)))) in
                                                    (_lh_listcomp_fun_5 ((enumFromTo_lh 0) (_lh_ray_arg1_1 - 1))))))))))))))))))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))));;
let rec fov_lh =
  45.0;;
let rec lookat_lh _lh_lookat_arg1_0 =
  (`LH_P3(0.0, 0.0, 0.0));;
let rec vup_lh _lh_vup_arg1_0 =
  (`LH_P3(0.0, 0.0, 1.0));;
let rec testlights_lh _lh_testlights_arg1_0 f_9 =
  (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (fun f_6 -> 
    (`LH_N)) in
    (let rec h_1_2 = (`Point((`LH_P3((0.0 -. 3.0), 1.0, 5.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_7 -> 
        (`LH_C((f_7 h_1_2), ((map_lh f_7) t_1_6)))))) in
    (let rec h_1_3 = (`Point((`LH_P3(1.0, (0.0 -. 4.0), 4.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_8 -> 
        (`LH_C((f_8 h_1_3), ((map_lh f_8) t_1_5)))))) in
    (let rec h_1_4 = (`Point((`LH_P3(4.0, 3.0, 2.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (`LH_C((f_9 h_1_4), ((map_lh f_9) t_1_4)))));;
let rec ray_lh _lh_ray_arg1_0 =
  (let rec lights_0 = (testlights_lh 0) in
    (let rec _lh_matchIdent_1 = (((((camparams_lh lookfrom_lh) (lookat_lh 0)) (vup_lh 0)) fov_lh) (float_of_int _lh_ray_arg1_0)) in
      ((_lh_matchIdent_1 _lh_ray_arg1_0) lights_0)));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec run_lh _lh_run_arg1_0 =
  (hash_lh ((map_lh snd_lh) (ray_lh _lh_run_arg1_0)));;
let rec testSphere_nofib_lh _lh_testSphere_nofib_arg1_0 =
  (run_lh _lh_testSphere_nofib_arg1_0);;
end;;

