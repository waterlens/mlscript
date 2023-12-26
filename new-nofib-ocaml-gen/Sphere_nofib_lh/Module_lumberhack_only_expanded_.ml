

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec vecscale_lh _lh_vecscale_arg1_0 _lh_vecscale_arg2_0 =
  (match _lh_vecscale_arg1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_0, _lh_vecscale_LH_P3_1_0, _lh_vecscale_LH_P3_2_0) -> 
      (`LH_P3((_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_0_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_1_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_2_0)))
    | _ -> 
      (failwith "error"));;
let rec tail_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_3, t_3) -> 
      t_3
    | `LH_N -> 
      (failwith "error"));;
let rec infinity_lh =
  100000000.0;;
let rec foldr_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr_lh f_1) i_0) t_1))
    | `LH_N -> 
      i_0);;
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
let rec head_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      h_2
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
  (let rec f_2 = (fun d1s1_0 d2s2_0 -> 
    (let rec _lh_matchIdent_3 = d1s1_0 in
      (match _lh_matchIdent_3 with
        | `LH_P2(_lh_trace_LH_P2_0_0, _lh_trace_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_4 = d2s2_0 in
            (match _lh_matchIdent_4 with
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
      (let rec _lh_matchIdent_5 = xss_0 in
        (match _lh_matchIdent_5 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_0, _lh_trace_LH_C_1_0) -> 
            (let rec _lh_matchIdent_6 = (((sphereintersect_lh _lh_trace_arg2_0) _lh_trace_arg3_0) _lh_trace_LH_C_0_0) in
              (match _lh_matchIdent_6 with
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
        (if (null_lh dists_0) then
          (`LH_P3(false, infinity_lh, (head_lh _lh_trace_arg1_0)))
        else
          (let rec _lh_matchIdent_7 = (((foldr_lh f_2) (head_lh dists_0)) (tail_lh dists_0)) in
            (match _lh_matchIdent_7 with
              | `LH_P2(_lh_trace_LH_P2_0_3, _lh_trace_LH_P2_1_3) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_3, _lh_trace_LH_P2_1_3))
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
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh t_4) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec reflectsurf_lh _lh_reflectsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (match _lh_listcomp_fun_ls_h_3 with
          | `Reflect(_lh_reflectsurf_Reflect_0_0) -> 
            (`LH_C(_lh_reflectsurf_Reflect_0_0, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
          | _ -> 
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 _lh_reflectsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec refractsurf_lh _lh_refractsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (match _lh_listcomp_fun_ls_h_1 with
          | `Refract(_lh_refractsurf_Refract_0_0) -> 
            (`LH_C(_lh_refractsurf_Refract_0_0, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
          | _ -> 
            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 _lh_refractsurf_arg1_0))) (`LH_C(1.0, (`LH_N)))));;
let rec specpowsurf_lh _lh_specpowsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (match _lh_listcomp_fun_ls_h_2 with
          | `Specpow(_lh_specpowsurf_Specpow_0_0) -> 
            (`LH_C(_lh_specpowsurf_Specpow_0_0, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | _ -> 
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 _lh_specpowsurf_arg1_0))) (`LH_C(8.0, (`LH_N)))));;
let rec epsilon_lh =
  0.000001;;
let rec s2_lh _lh_s2_arg1_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec testspheres_lh _lh_testspheres_arg1_0 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2_lh 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2_lh 0))), (`LH_N)))))))))))))))))))));;
let rec shadowed_lh _lh_shadowed_arg1_0 _lh_shadowed_arg2_0 _lh_shadowed_arg3_0 =
  (let rec _lh_matchIdent_1_4 = (((trace_lh (testspheres_lh 0)) ((vecadd_lh _lh_shadowed_arg1_0) ((vecscale_lh _lh_shadowed_arg2_0) epsilon_lh))) _lh_shadowed_arg2_0) in
    (match _lh_matchIdent_1_4 with
      | `LH_P3(_lh_shadowed_LH_P3_0_0, _lh_shadowed_LH_P3_1_0, _lh_shadowed_LH_P3_2_0) -> 
        (if (not _lh_shadowed_LH_P3_0_0) then
          (`LH_P2(false, _lh_shadowed_arg3_0))
        else
          (`LH_P2(true, _lh_shadowed_arg3_0)))
      | _ -> 
        (failwith "error")));;
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
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `Specular(_lh_specularsurf_Specular_0_0) -> 
            (`LH_C(_lh_specularsurf_Specular_0_0, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
          | _ -> 
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 _lh_specularsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec diffusesurf_lh _lh_diffusesurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
    (match _lh_listcomp_fun_para_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
        (match _lh_listcomp_fun_ls_h_9 with
          | `Diffuse(_lh_diffusesurf_Diffuse_0_0) -> 
            (`LH_C(_lh_diffusesurf_Diffuse_0_0, (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
          | _ -> 
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_9 _lh_diffusesurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
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
let rec lightcolour_lh _lh_lightcolour_arg1_0 =
  (match _lh_lightcolour_arg1_0 with
    | `Directional(_lh_lightcolour_Directional_0_0, _lh_lightcolour_Directional_1_0) -> 
      _lh_lightcolour_Directional_1_0
    | `Point(_lh_lightcolour_Point_0_0, _lh_lightcolour_Point_1_0) -> 
      _lh_lightcolour_Point_1_0
    | _ -> 
      (failwith "error"));;
let rec bodysurf_lh _lh_bodysurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
        (match _lh_listcomp_fun_ls_h_8 with
          | `Body(_lh_bodysurf_Body_0_0) -> 
            (`LH_C(_lh_bodysurf_Body_0_0, (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8)))
          | _ -> 
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_8 _lh_bodysurf_arg1_0))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))));;
let rec lightray_lh _lh_lightray_arg1_0 _lh_lightray_arg2_0 _lh_lightray_arg3_0 _lh_lightray_arg4_0 _lh_lightray_arg5_0 =
  (let rec _lh_matchIdent_1_5 = ((lightdirection_lh _lh_lightray_arg1_0) _lh_lightray_arg2_0) in
    (match _lh_matchIdent_1_5 with
      | `LH_P2(_lh_lightray_LH_P2_0_0, _lh_lightray_LH_P2_1_0) -> 
        (let rec cosangle_0 = ((vecdot_lh _lh_lightray_LH_P2_0_0) _lh_lightray_arg3_0) in
          (let rec _lh_matchIdent_1_6 = (((shadowed_lh _lh_lightray_arg2_0) _lh_lightray_LH_P2_0_0) (lightcolour_lh _lh_lightray_arg1_0)) in
            (match _lh_matchIdent_1_6 with
              | `LH_P2(_lh_lightray_LH_P2_0_1, _lh_lightray_LH_P2_1_1) -> 
                (if _lh_lightray_LH_P2_0_1 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_1 = (diffusesurf_lh _lh_lightray_arg5_0) in
                    (let rec spow_0 = (specpowsurf_lh _lh_lightray_arg5_0) in
                      (if (cosangle_0 <= 0.0) then
                        (let rec bodycol_0 = (bodysurf_lh _lh_lightray_arg5_0) in
                          (let rec cosalpha_0 = (0.0 -. ((vecdot_lh _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_0)) in
                            (let rec diffcont_0 = ((vecmult_lh ((vecscale_lh diff_1) (0.0 -. cosangle_0))) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_0 = (if (cosalpha_0 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh ((vecscale_lh bodycol_0) (cosalpha_0 ** spow_0))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh diffcont_0) speccont_0)))))
                      else
                        (let rec spec_0 = (specularsurf_lh _lh_lightray_arg5_0) in
                          (let rec cosalpha_1 = ((vecdot_lh _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_0) in
                            (let rec diffcont_1 = ((vecmult_lh ((vecscale_lh diff_1) cosangle_0)) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_1 = (if (cosalpha_1 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh ((vecscale_lh spec_0) (cosalpha_1 ** spow_0))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh diffcont_1) speccont_1)))))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec ambientsurf_lh _lh_ambientsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `Ambient(_lh_ambientsurf_Ambient_0_0) -> 
            (`LH_C(_lh_ambientsurf_Ambient_0_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_ambientsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec transmitsurf_lh _lh_transmitsurf_arg1_0 =
  (head_lh ((mappend_lh (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
        (match _lh_listcomp_fun_ls_h_7 with
          | `Transmit(_lh_transmitsurf_Transmit_0_0) -> 
            (`LH_C(_lh_transmitsurf_Transmit_0_0, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
          | _ -> 
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_7 _lh_transmitsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
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
let rec refractray_lh _lh_refractray_arg1_0 _lh_refractray_arg2_0 _lh_refractray_arg3_0 =
  (let rec dotp_0 = (0.0 -. ((vecdot_lh _lh_refractray_arg2_0) _lh_refractray_arg3_0)) in
    (let rec _lh_matchIdent_1_7 = (if (dotp_0 < 0.0) then
      (`LH_P3(((vecscale_lh _lh_refractray_arg3_0) (0.0 -. 1.0)), (0.0 -. dotp_0), (1.0 /. _lh_refractray_arg1_0)))
    else
      (`LH_P3(_lh_refractray_arg3_0, dotp_0, _lh_refractray_arg1_0))) in
      (match _lh_matchIdent_1_7 with
        | `LH_P3(_lh_refractray_LH_P3_0_0, _lh_refractray_LH_P3_1_0, _lh_refractray_LH_P3_2_0) -> 
          (let rec disc_1 = (((1.0 -. _lh_refractray_LH_P3_2_0) *. _lh_refractray_LH_P3_2_0) *. (1.0 -. (_lh_refractray_LH_P3_1_0 *. _lh_refractray_LH_P3_1_0))) in
            (let rec t_5 = ((_lh_refractray_LH_P3_2_0 *. _lh_refractray_LH_P3_1_0) -. (sqrt disc_1)) in
              (if (disc_1 < 0.0) then
                (`LH_P2(true, (`LH_P3(0.0, 0.0, 0.0))))
              else
                (`LH_P2(false, ((vecadd_lh ((vecscale_lh _lh_refractray_LH_P3_0_0) t_5)) ((vecscale_lh _lh_refractray_arg2_0) _lh_refractray_LH_P3_2_0)))))))
        | _ -> 
          (failwith "error"))));;
let rec reflectray_lh _lh_reflectray_arg1_0 _lh_reflectray_arg2_0 _lh_reflectray_arg3_0 _lh_reflectray_arg4_0 _lh_reflectray_arg5_0 _lh_reflectray_arg6_0 =
  (let rec newcontrib_0 = ((vecmult_lh _lh_reflectray_arg4_0) _lh_reflectray_arg5_0) in
    (let rec nearpos_0 = ((vecadd_lh _lh_reflectray_arg1_0) ((vecscale_lh _lh_reflectray_arg2_0) epsilon_lh)) in
      (let rec _lh_matchIdent_0 = (((trace_lh (testspheres_lh 0)) nearpos_0) _lh_reflectray_arg2_0) in
        (match _lh_matchIdent_0 with
          | `LH_P3(_lh_reflectray_LH_P3_0_0, _lh_reflectray_LH_P3_1_0, _lh_reflectray_LH_P3_2_0) -> 
            (let rec newcol_0 = (if _lh_reflectray_LH_P3_0_0 then
              ((((((shade_lh _lh_reflectray_arg3_0) _lh_reflectray_LH_P3_2_0) nearpos_0) _lh_reflectray_arg2_0) _lh_reflectray_LH_P3_1_0) newcontrib_0)
            else
              background_lh) in
              (if (is_zerovector_lh newcontrib_0) then
                _lh_reflectray_arg6_0
              else
                ((vecadd_lh _lh_reflectray_arg6_0) ((vecmult_lh newcol_0) _lh_reflectray_arg4_0))))
          | _ -> 
            (failwith "error")))))
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
                      (let rec _lh_matchIdent_1 = (if (transmitted_0 < epsilon_lh) then
                        (`LH_P2(false, simple_0))
                      else
                        ((((((((transmitray_lh _lh_shade_arg1_0) simple_0) hitpos_0) _lh_shade_arg4_0) (refractsurf_lh surf_0)) trintensity_0) _lh_shade_arg6_0) norm_0)) in
                        (match _lh_matchIdent_1 with
                          | `LH_P2(_lh_shade_LH_P2_0_0, _lh_shade_LH_P2_1_0) -> 
                            (let rec reflsurf_0 = ((vecscale_lh (specularsurf_lh surf_0)) (reflectsurf_lh surf_0)) in
                              (let rec reflectiv_0 = (if _lh_shade_LH_P2_0_0 then
                                ((vecadd_lh trintensity_0) reflsurf_0)
                              else
                                reflsurf_0) in
                                (let rec rcol_0 = (if (is_zerovector_lh reflectiv_0) then
                                  _lh_shade_LH_P2_1_0
                                else
                                  ((((((reflectray_lh hitpos_0) refl_0) _lh_shade_arg1_0) reflectiv_0) _lh_shade_arg6_0) _lh_shade_LH_P2_1_0)) in
                                  rcol_0)))
                          | _ -> 
                            (failwith "error")))))))))))))
and
transmitray_lh _lh_transmitray_arg1_0 _lh_transmitray_arg2_0 _lh_transmitray_arg3_0 _lh_transmitray_arg4_0 _lh_transmitray_arg5_0 _lh_transmitray_arg6_0 _lh_transmitray_arg7_0 _lh_transmitray_arg8_0 =
  (let rec newcontrib_1 = ((vecmult_lh _lh_transmitray_arg6_0) _lh_transmitray_arg7_0) in
    (let rec _lh_matchIdent_8 = (((refractray_lh _lh_transmitray_arg5_0) _lh_transmitray_arg4_0) _lh_transmitray_arg8_0) in
      (match _lh_matchIdent_8 with
        | `LH_P2(_lh_transmitray_LH_P2_0_0, _lh_transmitray_LH_P2_1_0) -> 
          (let rec nearpos_1 = ((vecadd_lh _lh_transmitray_arg3_0) ((vecscale_lh _lh_transmitray_LH_P2_1_0) epsilon_lh)) in
            (let rec _lh_matchIdent_9 = (((trace_lh (testspheres_lh 0)) nearpos_1) _lh_transmitray_LH_P2_1_0) in
              (match _lh_matchIdent_9 with
                | `LH_P3(_lh_transmitray_LH_P3_0_0, _lh_transmitray_LH_P3_1_0, _lh_transmitray_LH_P3_2_0) -> 
                  (let rec newcol_1 = (if _lh_transmitray_LH_P3_0_0 then
                    ((((((shade_lh _lh_transmitray_arg1_0) _lh_transmitray_LH_P3_2_0) nearpos_1) _lh_transmitray_LH_P2_1_0) _lh_transmitray_LH_P3_1_0) newcontrib_1)
                  else
                    background_lh) in
                    (if (is_zerovector_lh newcontrib_1) then
                      (`LH_P2(false, _lh_transmitray_arg2_0))
                    else
                      (`LH_P2(false, ((vecadd_lh ((vecmult_lh newcol_1) _lh_transmitray_arg6_0)) _lh_transmitray_arg2_0)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))));;
let rec tracepixel_lh _lh_tracepixel_arg1_0 _lh_tracepixel_arg2_0 _lh_tracepixel_arg3_0 _lh_tracepixel_arg4_0 _lh_tracepixel_arg5_0 _lh_tracepixel_arg6_0 _lh_tracepixel_arg7_0 =
  (let rec pos_0 = lookfrom_lh in
    (let rec _lh_matchIdent_1_8 = (vecnorm_lh ((vecadd_lh ((vecadd_lh _lh_tracepixel_arg5_0) ((vecscale_lh _lh_tracepixel_arg6_0) _lh_tracepixel_arg3_0))) ((vecscale_lh _lh_tracepixel_arg7_0) _lh_tracepixel_arg4_0))) in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_tracepixel_LH_P2_0_0, _lh_tracepixel_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1_9 = (((trace_lh _lh_tracepixel_arg1_0) pos_0) _lh_tracepixel_LH_P2_0_0) in
            (match _lh_matchIdent_1_9 with
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
let rec camparams_lh _lh_camparams_arg1_0 _lh_camparams_arg2_0 _lh_camparams_arg3_0 _lh_camparams_arg4_0 _lh_camparams_arg5_0 =
  (let rec initfirstray_0 = ((vecsub_lh _lh_camparams_arg2_0) _lh_camparams_arg1_0) in
    (let rec _lh_matchIdent_1_0 = (vecnorm_lh initfirstray_0) in
      (match _lh_matchIdent_1_0 with
        | `LH_P2(_lh_camparams_LH_P2_0_0, _lh_camparams_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1_1 = (vecnorm_lh ((veccross_lh _lh_camparams_LH_P2_0_0) _lh_camparams_arg3_0)) in
            (match _lh_matchIdent_1_1 with
              | `LH_P2(_lh_camparams_LH_P2_0_1, _lh_camparams_LH_P2_1_1) -> 
                (let rec _lh_matchIdent_1_2 = (vecnorm_lh ((veccross_lh _lh_camparams_LH_P2_0_1) _lh_camparams_LH_P2_0_0)) in
                  (match _lh_matchIdent_1_2 with
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
                                        (`LH_P3(firstray_0, scrnx_0, scrny_0)))))))))))
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
let rec testlights_lh _lh_testlights_arg1_0 =
  (`LH_C((`Point((`LH_P3(4.0, 3.0, 2.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_C((`Point((`LH_P3(1.0, (0.0 -. 4.0), 4.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_C((`Point((`LH_P3((0.0 -. 3.0), 1.0, 5.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_N)))))));;
let rec ray_lh _lh_ray_arg1_0 =
  (let rec lights_0 = (testlights_lh 0) in
    (let rec _lh_matchIdent_1_3 = (((((camparams_lh lookfrom_lh) (lookat_lh 0)) (vup_lh 0)) fov_lh) (float_of_int _lh_ray_arg1_0)) in
      (match _lh_matchIdent_1_3 with
        | `LH_P3(_lh_ray_LH_P3_0_0, _lh_ray_LH_P3_1_0, _lh_ray_LH_P3_2_0) -> 
          (let rec f_3 = (fun i_1 j_0 -> 
            (((((((tracepixel_lh (testspheres_lh 0)) lights_0) (float_of_int i_1)) (float_of_int j_0)) _lh_ray_LH_P3_0_0) _lh_ray_LH_P3_1_0) _lh_ray_LH_P3_2_0)) in
            (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
              (match _lh_listcomp_fun_para_4 with
                | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
                  (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
                    (match _lh_listcomp_fun_para_5 with
                      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
                        (`LH_C((`LH_P2((`LH_P2(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_h_5)), ((f_3 _lh_listcomp_fun_ls_h_4) _lh_listcomp_fun_ls_h_5))), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
                      | `LH_N -> 
                        (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
                    (_lh_listcomp_fun_5 ((enumFromTo_lh 0) (_lh_ray_arg1_0 - 1))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_4 ((enumFromTo_lh 0) (_lh_ray_arg1_0 - 1)))))
        | _ -> 
          (failwith "error"))));;
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec hash_lh _lh_hash_arg1_0 =
  (let rec u8_0 = (fun x_0 -> 
    ((fun _lh_funcomp_x_0 -> 
      (int_of_float ((fun x_1 -> 
        (255.0 *. x_1)) _lh_funcomp_x_0))) x_0)) in
    (((foldr_lh (fun rgb_0 acc_0 -> 
      (let rec _lh_matchIdent_2 = rgb_0 in
        (match _lh_matchIdent_2 with
          | `LH_P3(_lh_hash_LH_P3_0_0, _lh_hash_LH_P3_1_0, _lh_hash_LH_P3_2_0) -> 
            ((((u8_0 _lh_hash_LH_P3_0_0) + ((u8_0 _lh_hash_LH_P3_1_0) * 7)) + ((u8_0 _lh_hash_LH_P3_2_0) * 23)) + (acc_0 * 61))
          | _ -> 
            (failwith "error"))))) 0) _lh_hash_arg1_0));;
let rec run_lh _lh_run_arg1_0 =
  (hash_lh ((map_lh snd_lh) (ray_lh _lh_run_arg1_0)));;
let rec testSphere_nofib_lh _lh_testSphere_nofib_arg1_0 =
  (run_lh _lh_testSphere_nofib_arg1_0);;
end;;

