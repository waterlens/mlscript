

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec map_lh__d1 f_6 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_1_5, t_1_6) -> 
      (`LH_C((f_6 h_1_5), ((map_lh__d1 f_6) t_1_6)))
    | `LH_N -> 
      (`LH_N));;
let rec foldr_lh__d1 f_5 i_2 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_4, t_1_5) -> 
      ((f_5 h_1_4) (((foldr_lh__d1 f_5) i_2) t_1_5))
    | `LH_N -> 
      i_2);;
let rec hash_lh__d1 _lh_hash_arg1_0 =
  (let rec u8_0 = (fun x_0 -> 
    ((fun _lh_funcomp_x_0 -> 
      (int_of_float ((fun x_1 -> 
        (255.0 *. x_1)) _lh_funcomp_x_0))) x_0)) in
    (((foldr_lh__d1 (fun rgb_0 acc_0 -> 
      (let rec _lh_matchIdent_2_3 = rgb_0 in
        (match _lh_matchIdent_2_3 with
          | `LH_P3(_lh_hash_LH_P3_0_0, _lh_hash_LH_P3_1_0, _lh_hash_LH_P3_2_0) -> 
            ((((u8_0 _lh_hash_LH_P3_0_0) + ((u8_0 _lh_hash_LH_P3_1_0) * 7)) + ((u8_0 _lh_hash_LH_P3_2_0) * 23)) + (acc_0 * 61))
          | _ -> 
            (failwith "error"))))) 0) _lh_hash_arg1_0));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo_lh__d1 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec vecscale_lh__d2 _lh_vecscale_arg1_1_0 _lh_vecscale_arg2_1_0 =
  (match _lh_vecscale_arg1_1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_0, _lh_vecscale_LH_P3_1_1_0, _lh_vecscale_LH_P3_2_1_0) -> 
      (`LH_P3((_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_0_1_0), (_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_1_1_0), (_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_8, t_9) -> 
      (`LH_C(h_8, ((mappend_lh__d1 t_9) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec head_lh__d3 ls_4 =
  (match ls_4 with
    | `LH_C(h_7, t_8) -> 
      h_7
    | `LH_N -> 
      (failwith "error"));;
let rec specularsurf_lh__d1 _lh_specularsurf_arg1_0 =
  (head_lh__d3 ((mappend_lh__d1 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
    (match _lh_listcomp_fun_para_7 with
      | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
        (match _lh_listcomp_fun_ls_h_7 with
          | `Specular(_lh_specularsurf_Specular_0_0) -> 
            (`LH_C(_lh_specularsurf_Specular_0_0, (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
          | _ -> 
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_7 _lh_specularsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec vecscale_lh__d7 _lh_vecscale_arg1_5 _lh_vecscale_arg2_5 =
  (match _lh_vecscale_arg1_5 with
    | `LH_P3(_lh_vecscale_LH_P3_0_5, _lh_vecscale_LH_P3_1_5, _lh_vecscale_LH_P3_2_5) -> 
      (`LH_P3((_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_0_5), (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_1_5), (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_2_5)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d4 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d4 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec head_lh__d6 ls_0 =
  (match ls_0 with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec reflectsurf_lh__d1 _lh_reflectsurf_arg1_0 =
  (head_lh__d6 ((mappend_lh__d4 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (match _lh_listcomp_fun_ls_h_2 with
          | `Reflect(_lh_reflectsurf_Reflect_0_0) -> 
            (`LH_C(_lh_reflectsurf_Reflect_0_0, (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | _ -> 
            (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 _lh_reflectsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec vecscale_lh__d1_d2 _lh_vecscale_arg1_0 _lh_vecscale_arg2_0 =
  (match _lh_vecscale_arg1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_0, _lh_vecscale_LH_P3_1_0, _lh_vecscale_LH_P3_2_0) -> 
      (`LH_P3((_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_0_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_1_0), (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_2_0)))
    | _ -> 
      (failwith "error"));;
let rec epsilon_lh__d5 =
  0.000001;;
let rec infinity_lh__d1 =
  100000000.0;;
let rec foldr_lh__d3 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      ((f_0 h_2) (((foldr_lh__d3 f_0) i_0) t_2))
    | `LH_N -> 
      i_0);;
let rec tail_lh__d1 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_0, t_1_1) -> 
      t_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec vecdot_lh__d2 _lh_vecdot_arg1_1 _lh_vecdot_arg2_1 =
  (match _lh_vecdot_arg1_1 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2, _lh_vecdot_LH_P3_1_2, _lh_vecdot_LH_P3_2_2) -> 
      (match _lh_vecdot_arg2_1 with
        | `LH_P3(_lh_vecdot_LH_P3_0_3, _lh_vecdot_LH_P3_1_3, _lh_vecdot_LH_P3_2_3) -> 
          (((_lh_vecdot_LH_P3_0_2 *. _lh_vecdot_LH_P3_0_3) +. (_lh_vecdot_LH_P3_1_2 *. _lh_vecdot_LH_P3_1_3)) +. (_lh_vecdot_LH_P3_2_2 *. _lh_vecdot_LH_P3_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub_lh__d3 _lh_vecsub_arg1_1 _lh_vecsub_arg2_1 =
  (match _lh_vecsub_arg1_1 with
    | `LH_P3(_lh_vecsub_LH_P3_0_2, _lh_vecsub_LH_P3_1_2, _lh_vecsub_LH_P3_2_2) -> 
      (match _lh_vecsub_arg2_1 with
        | `LH_P3(_lh_vecsub_LH_P3_0_3, _lh_vecsub_LH_P3_1_3, _lh_vecsub_LH_P3_2_3) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_2 -. _lh_vecsub_LH_P3_0_3), (_lh_vecsub_LH_P3_1_2 -. _lh_vecsub_LH_P3_1_3), (_lh_vecsub_LH_P3_2_2 -. _lh_vecsub_LH_P3_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot_lh__d3 _lh_vecdot_arg1_0 _lh_vecdot_arg2_0 =
  (match _lh_vecdot_arg1_0 with
    | `LH_P3(_lh_vecdot_LH_P3_0_0, _lh_vecdot_LH_P3_1_0, _lh_vecdot_LH_P3_2_0) -> 
      (match _lh_vecdot_arg2_0 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1, _lh_vecdot_LH_P3_1_1, _lh_vecdot_LH_P3_2_1) -> 
          (((_lh_vecdot_LH_P3_0_0 *. _lh_vecdot_LH_P3_0_1) +. (_lh_vecdot_LH_P3_1_0 *. _lh_vecdot_LH_P3_1_1)) +. (_lh_vecdot_LH_P3_2_0 *. _lh_vecdot_LH_P3_2_1))
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
            (let rec disc_1 = (((bm_0 *. bm_0) -. m2_0) +. (_lh_sphereintersect_Sphere_1_0 *. _lh_sphereintersect_Sphere_1_0)) in
              (let rec slo_0 = ((0.0 -. bm_0) -. (sqrt disc_1)) in
                (let rec shi_0 = ((0.0 -. bm_0) +. (sqrt disc_1)) in
                  (if (disc_1 < 0.0) then
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
let rec trace_lh__d2 _lh_trace_arg1_0 _lh_trace_arg2_0 _lh_trace_arg3_0 =
  (let rec f_1 = (fun d1s1_0 d2s2_0 -> 
    (let rec _lh_matchIdent_1 = d1s1_0 in
      (match _lh_matchIdent_1 with
        | `LH_P2(_lh_trace_LH_P2_0_0, _lh_trace_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_2 = d2s2_0 in
            (match _lh_matchIdent_2 with
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
      (let rec _lh_matchIdent_3 = xss_0 in
        (match _lh_matchIdent_3 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_0, _lh_trace_LH_C_1_0) -> 
            (let rec _lh_matchIdent_4 = (((sphereintersect_lh__d1 _lh_trace_arg2_0) _lh_trace_arg3_0) _lh_trace_LH_C_0_0) in
              (match _lh_matchIdent_4 with
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
          (`LH_P3(false, infinity_lh__d1, (head_lh__d6 _lh_trace_arg1_0)))
        else
          (let rec _lh_matchIdent_5 = (((foldr_lh__d3 f_1) (head_lh__d6 dists_0)) (tail_lh__d1 dists_0)) in
            (match _lh_matchIdent_5 with
              | `LH_P2(_lh_trace_LH_P2_0_3, _lh_trace_LH_P2_1_3) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_3, _lh_trace_LH_P2_1_3))
              | _ -> 
                (failwith "error")))))));;
let rec vecadd_lh__d1_d1 _lh_vecadd_arg1_0 _lh_vecadd_arg2_0 =
  (match _lh_vecadd_arg1_0 with
    | `LH_P3(_lh_vecadd_LH_P3_0_0, _lh_vecadd_LH_P3_1_0, _lh_vecadd_LH_P3_2_0) -> 
      (match _lh_vecadd_arg2_0 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1, _lh_vecadd_LH_P3_1_1, _lh_vecadd_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_0 +. _lh_vecadd_LH_P3_0_1), (_lh_vecadd_LH_P3_1_0 +. _lh_vecadd_LH_P3_1_1), (_lh_vecadd_LH_P3_2_0 +. _lh_vecadd_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec s2_lh__d1_d0 _lh_s2_arg1_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec testspheres_lh__d2 _lh_testspheres_arg1_0 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_N)))))))))))))))))))));;
let rec shadowed_lh__d1 _lh_shadowed_arg1_0 _lh_shadowed_arg2_0 _lh_shadowed_arg3_0 =
  (let rec _lh_matchIdent_0 = (((trace_lh__d2 (testspheres_lh__d2 0)) ((vecadd_lh__d1_d1 _lh_shadowed_arg1_0) ((vecscale_lh__d1_d2 _lh_shadowed_arg2_0) epsilon_lh__d5))) _lh_shadowed_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_P3(_lh_shadowed_LH_P3_0_0, _lh_shadowed_LH_P3_1_0, _lh_shadowed_LH_P3_2_0) -> 
        (if (not _lh_shadowed_LH_P3_0_0) then
          (`LH_P2(false, _lh_shadowed_arg3_0))
        else
          (`LH_P2(true, _lh_shadowed_arg3_0)))
      | _ -> 
        (failwith "error")));;
let rec specpowsurf_lh__d1 _lh_specpowsurf_arg1_0 =
  (head_lh__d6 ((mappend_lh__d4 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (match _lh_listcomp_fun_ls_h_1 with
          | `Specpow(_lh_specpowsurf_Specpow_0_0) -> 
            (`LH_C(_lh_specpowsurf_Specpow_0_0, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
          | _ -> 
            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 _lh_specpowsurf_arg1_0))) (`LH_C(8.0, (`LH_N)))));;
let rec bodysurf_lh__d1 _lh_bodysurf_arg1_0 =
  (head_lh__d6 ((mappend_lh__d4 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (match _lh_listcomp_fun_ls_h_3 with
          | `Body(_lh_bodysurf_Body_0_0) -> 
            (`LH_C(_lh_bodysurf_Body_0_0, (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
          | _ -> 
            (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 _lh_bodysurf_arg1_0))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))));;
let rec fst_lh__d1 _lh_fst_arg1_0 =
  (match _lh_fst_arg1_0 with
    | `LH_P2(_lh_fst_LH_P2_0_0, _lh_fst_LH_P2_1_0) -> 
      _lh_fst_LH_P2_0_0
    | _ -> 
      (failwith "error"));;
let rec vecnorm_lh__d4 _lh_vecnorm_arg1_0 =
  (match _lh_vecnorm_arg1_0 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_0, _lh_vecnorm_LH_P3_1_0, _lh_vecnorm_LH_P3_2_0) -> 
      (let rec len_0 = (sqrt (((_lh_vecnorm_LH_P3_0_0 *. _lh_vecnorm_LH_P3_0_0) +. (_lh_vecnorm_LH_P3_1_0 *. _lh_vecnorm_LH_P3_1_0)) +. (_lh_vecnorm_LH_P3_2_0 *. _lh_vecnorm_LH_P3_2_0))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_0 /. len_0), (_lh_vecnorm_LH_P3_1_0 /. len_0), (_lh_vecnorm_LH_P3_2_0 /. len_0))), len_0)))
    | _ -> 
      (failwith "error"));;
let rec vecsub_lh__d4 _lh_vecsub_arg1_0 _lh_vecsub_arg2_0 =
  (match _lh_vecsub_arg1_0 with
    | `LH_P3(_lh_vecsub_LH_P3_0_0, _lh_vecsub_LH_P3_1_0, _lh_vecsub_LH_P3_2_0) -> 
      (match _lh_vecsub_arg2_0 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1, _lh_vecsub_LH_P3_1_1, _lh_vecsub_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_0 -. _lh_vecsub_LH_P3_0_1), (_lh_vecsub_LH_P3_1_0 -. _lh_vecsub_LH_P3_1_1), (_lh_vecsub_LH_P3_2_0 -. _lh_vecsub_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lightdirection_lh__d1 _lh_lightdirection_arg1_0 _lh_lightdirection_arg2_0 =
  (match _lh_lightdirection_arg1_0 with
    | `Directional(_lh_lightdirection_Directional_0_0, _lh_lightdirection_Directional_1_0) -> 
      (`LH_P2((fst_lh__d1 (vecnorm_lh__d4 _lh_lightdirection_Directional_0_0)), infinity_lh__d1))
    | `Point(_lh_lightdirection_Point_0_0, _lh_lightdirection_Point_1_0) -> 
      (vecnorm_lh__d4 ((vecsub_lh__d4 _lh_lightdirection_Point_0_0) _lh_lightdirection_arg2_0))
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
let rec vecmult_lh__d3 _lh_vecmult_arg1_0 _lh_vecmult_arg2_0 =
  (match _lh_vecmult_arg1_0 with
    | `LH_P3(_lh_vecmult_LH_P3_0_0, _lh_vecmult_LH_P3_1_0, _lh_vecmult_LH_P3_2_0) -> 
      (match _lh_vecmult_arg2_0 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1, _lh_vecmult_LH_P3_1_1, _lh_vecmult_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_0 *. _lh_vecmult_LH_P3_0_1), (_lh_vecmult_LH_P3_1_0 *. _lh_vecmult_LH_P3_1_1), (_lh_vecmult_LH_P3_2_0 *. _lh_vecmult_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec diffusesurf_lh__d1 _lh_diffusesurf_arg1_0 =
  (head_lh__d6 ((mappend_lh__d4 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `Diffuse(_lh_diffusesurf_Diffuse_0_0) -> 
            (`LH_C(_lh_diffusesurf_Diffuse_0_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 _lh_diffusesurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec lightray_lh__d1 _lh_lightray_arg1_0 _lh_lightray_arg2_0 _lh_lightray_arg3_0 _lh_lightray_arg4_0 _lh_lightray_arg5_0 =
  (let rec _lh_matchIdent_7 = ((lightdirection_lh__d1 _lh_lightray_arg1_0) _lh_lightray_arg2_0) in
    (match _lh_matchIdent_7 with
      | `LH_P2(_lh_lightray_LH_P2_0_0, _lh_lightray_LH_P2_1_0) -> 
        (let rec cosangle_0 = ((vecdot_lh__d3 _lh_lightray_LH_P2_0_0) _lh_lightray_arg3_0) in
          (let rec _lh_matchIdent_8 = (((shadowed_lh__d1 _lh_lightray_arg2_0) _lh_lightray_LH_P2_0_0) (lightcolour_lh__d1 _lh_lightray_arg1_0)) in
            (match _lh_matchIdent_8 with
              | `LH_P2(_lh_lightray_LH_P2_0_1, _lh_lightray_LH_P2_1_1) -> 
                (if _lh_lightray_LH_P2_0_1 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_0 = (diffusesurf_lh__d1 _lh_lightray_arg5_0) in
                    (let rec spow_0 = (specpowsurf_lh__d1 _lh_lightray_arg5_0) in
                      (if (cosangle_0 <= 0.0) then
                        (let rec bodycol_0 = (bodysurf_lh__d1 _lh_lightray_arg5_0) in
                          (let rec cosalpha_0 = (0.0 -. ((vecdot_lh__d3 _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_0)) in
                            (let rec diffcont_0 = ((vecmult_lh__d3 ((vecscale_lh__d1_d2 diff_0) (0.0 -. cosangle_0))) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_0 = (if (cosalpha_0 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh__d3 ((vecscale_lh__d1_d2 bodycol_0) (cosalpha_0 ** spow_0))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh__d1_d1 diffcont_0) speccont_0)))))
                      else
                        (let rec spec_0 = (specularsurf_lh__d1 _lh_lightray_arg5_0) in
                          (let rec cosalpha_1 = ((vecdot_lh__d3 _lh_lightray_arg4_0) _lh_lightray_LH_P2_0_0) in
                            (let rec diffcont_1 = ((vecmult_lh__d3 ((vecscale_lh__d1_d2 diff_0) cosangle_0)) _lh_lightray_LH_P2_1_1) in
                              (let rec speccont_1 = (if (cosalpha_1 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult_lh__d3 ((vecscale_lh__d1_d2 spec_0) (cosalpha_1 ** spow_0))) _lh_lightray_LH_P2_1_1)) in
                                ((vecadd_lh__d1_d1 diffcont_1) speccont_1)))))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")));;
let rec vecadd_lh__d6 _lh_vecadd_arg1_5 _lh_vecadd_arg2_5 =
  (match _lh_vecadd_arg1_5 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_0, _lh_vecadd_LH_P3_1_1_0, _lh_vecadd_LH_P3_2_1_0) -> 
      (match _lh_vecadd_arg2_5 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_1, _lh_vecadd_LH_P3_1_1_1, _lh_vecadd_LH_P3_2_1_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_0 +. _lh_vecadd_LH_P3_0_1_1), (_lh_vecadd_LH_P3_1_1_0 +. _lh_vecadd_LH_P3_1_1_1), (_lh_vecadd_LH_P3_2_1_0 +. _lh_vecadd_LH_P3_2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec epsilon_lh__d4 =
  0.000001;;
let rec epsilon_lh__d3 =
  0.000001;;
let rec is_zerovector_lh__d1 _lh_is_zerovector_arg1_1 =
  (match _lh_is_zerovector_arg1_1 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_1, _lh_is_zerovector_LH_P3_1_1, _lh_is_zerovector_LH_P3_2_1) -> 
      (((_lh_is_zerovector_LH_P3_0_1 < epsilon_lh__d4) && (_lh_is_zerovector_LH_P3_1_1 < epsilon_lh__d3)) && (_lh_is_zerovector_LH_P3_2_1 < epsilon_lh__d5))
    | _ -> 
      (failwith "error"));;
let rec vecdot_lh__d1 _lh_vecdot_arg1_2 _lh_vecdot_arg2_2 =
  (match _lh_vecdot_arg1_2 with
    | `LH_P3(_lh_vecdot_LH_P3_0_4, _lh_vecdot_LH_P3_1_4, _lh_vecdot_LH_P3_2_4) -> 
      (match _lh_vecdot_arg2_2 with
        | `LH_P3(_lh_vecdot_LH_P3_0_5, _lh_vecdot_LH_P3_1_5, _lh_vecdot_LH_P3_2_5) -> 
          (((_lh_vecdot_LH_P3_0_4 *. _lh_vecdot_LH_P3_0_5) +. (_lh_vecdot_LH_P3_1_4 *. _lh_vecdot_LH_P3_1_5)) +. (_lh_vecdot_LH_P3_2_4 *. _lh_vecdot_LH_P3_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec refractray_lh__d1 _lh_refractray_arg1_0 _lh_refractray_arg2_0 _lh_refractray_arg3_0 =
  (let rec dotp_0 = (0.0 -. ((vecdot_lh__d3 _lh_refractray_arg2_0) _lh_refractray_arg3_0)) in
    (let rec _lh_matchIdent_6 = (if (dotp_0 < 0.0) then
      (`LH_P3(((vecscale_lh__d1_d2 _lh_refractray_arg3_0) (0.0 -. 1.0)), (0.0 -. dotp_0), (1.0 /. _lh_refractray_arg1_0)))
    else
      (`LH_P3(_lh_refractray_arg3_0, dotp_0, _lh_refractray_arg1_0))) in
      (match _lh_matchIdent_6 with
        | `LH_P3(_lh_refractray_LH_P3_0_0, _lh_refractray_LH_P3_1_0, _lh_refractray_LH_P3_2_0) -> 
          (let rec disc_0 = (((1.0 -. _lh_refractray_LH_P3_2_0) *. _lh_refractray_LH_P3_2_0) *. (1.0 -. (_lh_refractray_LH_P3_1_0 *. _lh_refractray_LH_P3_1_0))) in
            (let rec t_5 = ((_lh_refractray_LH_P3_2_0 *. _lh_refractray_LH_P3_1_0) -. (sqrt disc_0)) in
              (if (disc_0 < 0.0) then
                (`LH_P2(true, (`LH_P3(0.0, 0.0, 0.0))))
              else
                (`LH_P2(false, ((vecadd_lh__d1_d1 ((vecscale_lh__d1_d2 _lh_refractray_LH_P3_0_0) t_5)) ((vecscale_lh__d1_d2 _lh_refractray_arg2_0) _lh_refractray_LH_P3_2_0)))))))
        | _ -> 
          (failwith "error"))));;
let rec vecadd_lh__d9 _lh_vecadd_arg1_2 _lh_vecadd_arg2_2 =
  (match _lh_vecadd_arg1_2 with
    | `LH_P3(_lh_vecadd_LH_P3_0_4, _lh_vecadd_LH_P3_1_4, _lh_vecadd_LH_P3_2_4) -> 
      (match _lh_vecadd_arg2_2 with
        | `LH_P3(_lh_vecadd_LH_P3_0_5, _lh_vecadd_LH_P3_1_5, _lh_vecadd_LH_P3_2_5) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_4 +. _lh_vecadd_LH_P3_0_5), (_lh_vecadd_LH_P3_1_4 +. _lh_vecadd_LH_P3_1_5), (_lh_vecadd_LH_P3_2_4 +. _lh_vecadd_LH_P3_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec background_lh__d2 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec epsilon_lh__d2 =
  0.000001;;
let rec vecadd_lh__d8 _lh_vecadd_arg1_3 _lh_vecadd_arg2_3 =
  (match _lh_vecadd_arg1_3 with
    | `LH_P3(_lh_vecadd_LH_P3_0_6, _lh_vecadd_LH_P3_1_6, _lh_vecadd_LH_P3_2_6) -> 
      (match _lh_vecadd_arg2_3 with
        | `LH_P3(_lh_vecadd_LH_P3_0_7, _lh_vecadd_LH_P3_1_7, _lh_vecadd_LH_P3_2_7) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_6 +. _lh_vecadd_LH_P3_0_7), (_lh_vecadd_LH_P3_1_6 +. _lh_vecadd_LH_P3_1_7), (_lh_vecadd_LH_P3_2_6 +. _lh_vecadd_LH_P3_2_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d2 _lh_vecmult_arg1_1 _lh_vecmult_arg2_1 =
  (match _lh_vecmult_arg1_1 with
    | `LH_P3(_lh_vecmult_LH_P3_0_2, _lh_vecmult_LH_P3_1_2, _lh_vecmult_LH_P3_2_2) -> 
      (match _lh_vecmult_arg2_1 with
        | `LH_P3(_lh_vecmult_LH_P3_0_3, _lh_vecmult_LH_P3_1_3, _lh_vecmult_LH_P3_2_3) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_2 *. _lh_vecmult_LH_P3_0_3), (_lh_vecmult_LH_P3_1_2 *. _lh_vecmult_LH_P3_1_3), (_lh_vecmult_LH_P3_2_2 *. _lh_vecmult_LH_P3_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec is_zerovector_lh__d2 _lh_is_zerovector_arg1_0 =
  (match _lh_is_zerovector_arg1_0 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_0, _lh_is_zerovector_LH_P3_1_0, _lh_is_zerovector_LH_P3_2_0) -> 
      (((_lh_is_zerovector_LH_P3_0_0 < epsilon_lh__d5) && (_lh_is_zerovector_LH_P3_1_0 < epsilon_lh__d5)) && (_lh_is_zerovector_LH_P3_2_0 < epsilon_lh__d5))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d1_d1 _lh_vecscale_arg1_1 _lh_vecscale_arg2_1 =
  (match _lh_vecscale_arg1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1, _lh_vecscale_LH_P3_1_1, _lh_vecscale_LH_P3_2_1) -> 
      (`LH_P3((_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_0_1), (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_1_1), (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_2_1)))
    | _ -> 
      (failwith "error"));;
let rec head_lh__d5 ls_2 =
  (match ls_2 with
    | `LH_C(h_4, t_4) -> 
      h_4
    | `LH_N -> 
      (failwith "error"));;
let rec mappend_lh__d3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d3 t_3) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec ambientsurf_lh__d1 _lh_ambientsurf_arg1_0 =
  (head_lh__d5 ((mappend_lh__d3 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (match _lh_listcomp_fun_ls_h_5 with
          | `Ambient(_lh_ambientsurf_Ambient_0_0) -> 
            (`LH_C(_lh_ambientsurf_Ambient_0_0, (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
          | _ -> 
            (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_5 _lh_ambientsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))));;
let rec vecadd_lh__d4 _lh_vecadd_arg1_7 _lh_vecadd_arg2_7 =
  (match _lh_vecadd_arg1_7 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_4, _lh_vecadd_LH_P3_1_1_4, _lh_vecadd_LH_P3_2_1_4) -> 
      (match _lh_vecadd_arg2_7 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_5, _lh_vecadd_LH_P3_1_1_5, _lh_vecadd_LH_P3_2_1_5) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_4 +. _lh_vecadd_LH_P3_0_1_5), (_lh_vecadd_LH_P3_1_1_4 +. _lh_vecadd_LH_P3_1_1_5), (_lh_vecadd_LH_P3_2_1_4 +. _lh_vecadd_LH_P3_2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec spherenormal_lh__d1 _lh_spherenormal_arg1_0 _lh_spherenormal_arg2_0 =
  (match _lh_spherenormal_arg2_0 with
    | `Sphere(_lh_spherenormal_Sphere_0_0, _lh_spherenormal_Sphere_1_0, _lh_spherenormal_Sphere_2_0) -> 
      ((vecscale_lh__d1_d2 ((vecsub_lh__d4 _lh_spherenormal_arg1_0) _lh_spherenormal_Sphere_0_0)) (1.0 /. _lh_spherenormal_Sphere_1_0))
    | _ -> 
      (failwith "error"));;
let rec spheresurf_lh__d1 _lh_spheresurf_arg1_0 =
  (match _lh_spheresurf_arg1_0 with
    | `Sphere(_lh_spheresurf_Sphere_0_0, _lh_spheresurf_Sphere_1_0, _lh_spheresurf_Sphere_2_0) -> 
      _lh_spheresurf_Sphere_2_0
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d8 _lh_vecscale_arg1_4 _lh_vecscale_arg2_4 =
  (match _lh_vecscale_arg1_4 with
    | `LH_P3(_lh_vecscale_LH_P3_0_4, _lh_vecscale_LH_P3_1_4, _lh_vecscale_LH_P3_2_4) -> 
      (`LH_P3((_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_0_4), (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_1_4), (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_2_4)))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d9 _lh_vecscale_arg1_3 _lh_vecscale_arg2_3 =
  (match _lh_vecscale_arg1_3 with
    | `LH_P3(_lh_vecscale_LH_P3_0_3, _lh_vecscale_LH_P3_1_3, _lh_vecscale_LH_P3_2_3) -> 
      (`LH_P3((_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_0_3), (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_1_3), (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_2_3)))
    | _ -> 
      (failwith "error"));;
let rec map_lh__d2 f_2 ls_5 =
  (match ls_5 with
    | `LH_C(h_9, t_1_0) -> 
      (`LH_C((f_2 h_9), ((map_lh__d2 f_2) t_1_0)))
    | `LH_N -> 
      (`LH_N));;
let rec vecadd_lh__d7 _lh_vecadd_arg1_4 _lh_vecadd_arg2_4 =
  (match _lh_vecadd_arg1_4 with
    | `LH_P3(_lh_vecadd_LH_P3_0_8, _lh_vecadd_LH_P3_1_8, _lh_vecadd_LH_P3_2_8) -> 
      (match _lh_vecadd_arg2_4 with
        | `LH_P3(_lh_vecadd_LH_P3_0_9, _lh_vecadd_LH_P3_1_9, _lh_vecadd_LH_P3_2_9) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_8 +. _lh_vecadd_LH_P3_0_9), (_lh_vecadd_LH_P3_1_8 +. _lh_vecadd_LH_P3_1_9), (_lh_vecadd_LH_P3_2_8 +. _lh_vecadd_LH_P3_2_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_5, t_6) -> 
      (`LH_C(h_5, ((mappend_lh__d2 t_6) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec head_lh__d4 ls_3 =
  (match ls_3 with
    | `LH_C(h_6, t_7) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec refractsurf_lh__d1 _lh_refractsurf_arg1_0 =
  (head_lh__d4 ((mappend_lh__d2 (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `Refract(_lh_refractsurf_Refract_0_0) -> 
            (`LH_C(_lh_refractsurf_Refract_0_0, (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6)))
          | _ -> 
            (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 _lh_refractsurf_arg1_0))) (`LH_C(1.0, (`LH_N)))));;
let rec vecadd_lh__d5 _lh_vecadd_arg1_6 _lh_vecadd_arg2_6 =
  (match _lh_vecadd_arg1_6 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_2, _lh_vecadd_LH_P3_1_1_2, _lh_vecadd_LH_P3_2_1_2) -> 
      (match _lh_vecadd_arg2_6 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_3, _lh_vecadd_LH_P3_1_1_3, _lh_vecadd_LH_P3_2_1_3) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_2 +. _lh_vecadd_LH_P3_0_1_3), (_lh_vecadd_LH_P3_1_1_2 +. _lh_vecadd_LH_P3_1_1_3), (_lh_vecadd_LH_P3_2_1_2 +. _lh_vecadd_LH_P3_2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d1_d0 _lh_vecscale_arg1_2 _lh_vecscale_arg2_2 =
  (match _lh_vecscale_arg1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2, _lh_vecscale_LH_P3_1_2, _lh_vecscale_LH_P3_2_2) -> 
      (`LH_P3((_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_0_2), (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_1_2), (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_2_2)))
    | _ -> 
      (failwith "error"));;
let rec vecmult_lh__d1 _lh_vecmult_arg1_2 _lh_vecmult_arg2_2 =
  (match _lh_vecmult_arg1_2 with
    | `LH_P3(_lh_vecmult_LH_P3_0_4, _lh_vecmult_LH_P3_1_4, _lh_vecmult_LH_P3_2_4) -> 
      (match _lh_vecmult_arg2_2 with
        | `LH_P3(_lh_vecmult_LH_P3_0_5, _lh_vecmult_LH_P3_1_5, _lh_vecmult_LH_P3_2_5) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_4 *. _lh_vecmult_LH_P3_0_5), (_lh_vecmult_LH_P3_1_4 *. _lh_vecmult_LH_P3_1_5), (_lh_vecmult_LH_P3_2_4 *. _lh_vecmult_LH_P3_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec epsilon_lh__d1 =
  0.000001;;
let rec vecadd_lh__d1_d0 _lh_vecadd_arg1_1 _lh_vecadd_arg2_1 =
  (match _lh_vecadd_arg1_1 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2, _lh_vecadd_LH_P3_1_2, _lh_vecadd_LH_P3_2_2) -> 
      (match _lh_vecadd_arg2_1 with
        | `LH_P3(_lh_vecadd_LH_P3_0_3, _lh_vecadd_LH_P3_1_3, _lh_vecadd_LH_P3_2_3) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2 +. _lh_vecadd_LH_P3_0_3), (_lh_vecadd_LH_P3_1_2 +. _lh_vecadd_LH_P3_1_3), (_lh_vecadd_LH_P3_2_2 +. _lh_vecadd_LH_P3_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsum_lh__d1 _lh_vecsum_arg1_0 =
  (((foldr_lh__d3 vecadd_lh__d1_d0) (`LH_P3(0.0, 0.0, 0.0))) _lh_vecsum_arg1_0);;
let rec transmitsurf_lh__d1 _lh_transmitsurf_arg1_0 =
  (head_lh__d6 ((mappend_lh__d4 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (match _lh_listcomp_fun_ls_h_4 with
          | `Transmit(_lh_transmitsurf_Transmit_0_0) -> 
            (`LH_C(_lh_transmitsurf_Transmit_0_0, (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4)))
          | _ -> 
            (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4 _lh_transmitsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))));;
let rec reflectray_lh__d1 _lh_reflectray_arg1_0 _lh_reflectray_arg2_0 _lh_reflectray_arg3_0 _lh_reflectray_arg4_0 _lh_reflectray_arg5_0 _lh_reflectray_arg6_0 =
  (let rec newcontrib_0 = ((vecmult_lh__d3 _lh_reflectray_arg4_0) _lh_reflectray_arg5_0) in
    (let rec nearpos_0 = ((vecadd_lh__d1_d1 _lh_reflectray_arg1_0) ((vecscale_lh__d1_d2 _lh_reflectray_arg2_0) epsilon_lh__d5)) in
      (let rec _lh_matchIdent_9 = (((trace_lh__d2 (testspheres_lh__d2 0)) nearpos_0) _lh_reflectray_arg2_0) in
        (match _lh_matchIdent_9 with
          | `LH_P3(_lh_reflectray_LH_P3_0_0, _lh_reflectray_LH_P3_1_0, _lh_reflectray_LH_P3_2_0) -> 
            (let rec newcol_0 = (if _lh_reflectray_LH_P3_0_0 then
              ((((((shade_lh__d1 _lh_reflectray_arg3_0) _lh_reflectray_LH_P3_2_0) nearpos_0) _lh_reflectray_arg2_0) _lh_reflectray_LH_P3_1_0) newcontrib_0)
            else
              background_lh__d2) in
              (if (is_zerovector_lh__d2 newcontrib_0) then
                _lh_reflectray_arg6_0
              else
                ((vecadd_lh__d1_d1 _lh_reflectray_arg6_0) ((vecmult_lh__d3 newcol_0) _lh_reflectray_arg4_0))))
          | _ -> 
            (failwith "error")))))
and
shade_lh__d1 _lh_shade_arg1_0 _lh_shade_arg2_0 _lh_shade_arg3_0 _lh_shade_arg4_0 _lh_shade_arg5_0 _lh_shade_arg6_0 =
  (let rec hitpos_0 = ((vecadd_lh__d5 _lh_shade_arg3_0) ((vecscale_lh__d9 _lh_shade_arg4_0) _lh_shade_arg5_0)) in
    (let rec ambientlight_0 = (`LH_P3(1.0, 1.0, 1.0)) in
      (let rec surf_0 = (spheresurf_lh__d1 _lh_shade_arg2_0) in
        (let rec amb_0 = ((vecmult_lh__d1 ambientlight_0) (ambientsurf_lh__d1 surf_0)) in
          (let rec norm_0 = ((spherenormal_lh__d1 hitpos_0) _lh_shade_arg2_0) in
            (let rec refl_0 = ((vecadd_lh__d6 _lh_shade_arg4_0) ((vecscale_lh__d1_d0 norm_0) ((0.0 -. 2.0) *. ((vecdot_lh__d1 _lh_shade_arg4_0) norm_0)))) in
              (let rec diff_1 = (vecsum_lh__d1 ((map_lh__d2 (fun l_0 -> 
                (((((lightray_lh__d1 l_0) hitpos_0) norm_0) refl_0) surf_0))) _lh_shade_arg1_0)) in
                (let rec transmitted_0 = (transmitsurf_lh__d1 surf_0) in
                  (let rec simple_0 = ((vecadd_lh__d4 amb_0) diff_1) in
                    (let rec trintensity_0 = ((vecscale_lh__d7 (bodysurf_lh__d1 surf_0)) transmitted_0) in
                      (let rec _lh_matchIdent_1_2 = (if (transmitted_0 < epsilon_lh__d1) then
                        (`LH_P2(false, simple_0))
                      else
                        ((((((((transmitray_lh__d1 _lh_shade_arg1_0) simple_0) hitpos_0) _lh_shade_arg4_0) (refractsurf_lh__d1 surf_0)) trintensity_0) _lh_shade_arg6_0) norm_0)) in
                        (match _lh_matchIdent_1_2 with
                          | `LH_P2(_lh_shade_LH_P2_0_0, _lh_shade_LH_P2_1_0) -> 
                            (let rec reflsurf_0 = ((vecscale_lh__d8 (specularsurf_lh__d1 surf_0)) (reflectsurf_lh__d1 surf_0)) in
                              (let rec reflectiv_0 = (if _lh_shade_LH_P2_0_0 then
                                ((vecadd_lh__d7 trintensity_0) reflsurf_0)
                              else
                                reflsurf_0) in
                                (let rec rcol_0 = (if (is_zerovector_lh__d1 reflectiv_0) then
                                  _lh_shade_LH_P2_1_0
                                else
                                  ((((((reflectray_lh__d1 hitpos_0) refl_0) _lh_shade_arg1_0) reflectiv_0) _lh_shade_arg6_0) _lh_shade_LH_P2_1_0)) in
                                  rcol_0)))
                          | _ -> 
                            (failwith "error")))))))))))))
and
transmitray_lh__d1 _lh_transmitray_arg1_0 _lh_transmitray_arg2_0 _lh_transmitray_arg3_0 _lh_transmitray_arg4_0 _lh_transmitray_arg5_0 _lh_transmitray_arg6_0 _lh_transmitray_arg7_0 _lh_transmitray_arg8_0 =
  (let rec newcontrib_1 = ((vecmult_lh__d2 _lh_transmitray_arg6_0) _lh_transmitray_arg7_0) in
    (let rec _lh_matchIdent_1_0 = (((refractray_lh__d1 _lh_transmitray_arg5_0) _lh_transmitray_arg4_0) _lh_transmitray_arg8_0) in
      (match _lh_matchIdent_1_0 with
        | `LH_P2(_lh_transmitray_LH_P2_0_0, _lh_transmitray_LH_P2_1_0) -> 
          (let rec nearpos_1 = ((vecadd_lh__d9 _lh_transmitray_arg3_0) ((vecscale_lh__d1_d1 _lh_transmitray_LH_P2_1_0) epsilon_lh__d2)) in
            (let rec _lh_matchIdent_1_1 = (((trace_lh__d2 (testspheres_lh__d2 0)) nearpos_1) _lh_transmitray_LH_P2_1_0) in
              (match _lh_matchIdent_1_1 with
                | `LH_P3(_lh_transmitray_LH_P3_0_0, _lh_transmitray_LH_P3_1_0, _lh_transmitray_LH_P3_2_0) -> 
                  (let rec newcol_1 = (if _lh_transmitray_LH_P3_0_0 then
                    ((((((shade_lh__d1 _lh_transmitray_arg1_0) _lh_transmitray_LH_P3_2_0) nearpos_1) _lh_transmitray_LH_P2_1_0) _lh_transmitray_LH_P3_1_0) newcontrib_1)
                  else
                    background_lh__d2) in
                    (if (is_zerovector_lh__d2 newcontrib_1) then
                      (`LH_P2(false, _lh_transmitray_arg2_0))
                    else
                      (`LH_P2(false, ((vecadd_lh__d8 ((vecmult_lh__d3 newcol_1) _lh_transmitray_arg6_0)) _lh_transmitray_arg2_0)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))));;
let rec vecadd_lh__d1 _lh_vecadd_arg1_1_0 _lh_vecadd_arg2_1_0 =
  (match _lh_vecadd_arg1_1_0 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_0, _lh_vecadd_LH_P3_1_2_0, _lh_vecadd_LH_P3_2_2_0) -> 
      (match _lh_vecadd_arg2_1_0 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_1, _lh_vecadd_LH_P3_1_2_1, _lh_vecadd_LH_P3_2_2_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2_0 +. _lh_vecadd_LH_P3_0_2_1), (_lh_vecadd_LH_P3_1_2_0 +. _lh_vecadd_LH_P3_1_2_1), (_lh_vecadd_LH_P3_2_2_0 +. _lh_vecadd_LH_P3_2_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec head_lh__d2 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_1, t_1_2) -> 
      h_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec foldr_lh__d2 f_3 i_1 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_2, t_1_3) -> 
      ((f_3 h_1_2) (((foldr_lh__d2 f_3) i_1) t_1_3))
    | `LH_N -> 
      i_1);;
let rec head_lh__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_3, t_1_4) -> 
      h_1_3
    | `LH_N -> 
      (failwith "error"));;
let rec trace_lh__d1 _lh_trace_arg1_1 _lh_trace_arg2_1 _lh_trace_arg3_1 =
  (let rec f_4 = (fun d1s1_1 d2s2_1 -> 
    (let rec _lh_matchIdent_1_3 = d1s1_1 in
      (match _lh_matchIdent_1_3 with
        | `LH_P2(_lh_trace_LH_P2_0_4, _lh_trace_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_1_4 = d2s2_1 in
            (match _lh_matchIdent_1_4 with
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
      (let rec _lh_matchIdent_1_5 = xss_1 in
        (match _lh_matchIdent_1_5 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1, _lh_trace_LH_C_1_1) -> 
            (let rec _lh_matchIdent_1_6 = (((sphereintersect_lh__d1 _lh_trace_arg2_1) _lh_trace_arg3_1) _lh_trace_LH_C_0_1) in
              (match _lh_matchIdent_1_6 with
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
          (`LH_P3(false, infinity_lh__d1, (head_lh__d2 _lh_trace_arg1_1)))
        else
          (let rec _lh_matchIdent_1_7 = (((foldr_lh__d2 f_4) (head_lh__d1 dists_1)) (tail_lh__d1 dists_1)) in
            (match _lh_matchIdent_1_7 with
              | `LH_P2(_lh_trace_LH_P2_0_7, _lh_trace_LH_P2_1_7) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_7, _lh_trace_LH_P2_1_7))
              | _ -> 
                (failwith "error")))))));;
let rec lookfrom_lh__d2 =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec vecadd_lh__d2 _lh_vecadd_arg1_9 _lh_vecadd_arg2_9 =
  (match _lh_vecadd_arg1_9 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_8, _lh_vecadd_LH_P3_1_1_8, _lh_vecadd_LH_P3_2_1_8) -> 
      (match _lh_vecadd_arg2_9 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_9, _lh_vecadd_LH_P3_1_1_9, _lh_vecadd_LH_P3_2_1_9) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_8 +. _lh_vecadd_LH_P3_0_1_9), (_lh_vecadd_LH_P3_1_1_8 +. _lh_vecadd_LH_P3_1_1_9), (_lh_vecadd_LH_P3_2_1_8 +. _lh_vecadd_LH_P3_2_1_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec background_lh__d1 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec vecscale_lh__d1 _lh_vecscale_arg1_1_1 _lh_vecscale_arg2_1_1 =
  (match _lh_vecscale_arg1_1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_1, _lh_vecscale_LH_P3_1_1_1, _lh_vecscale_LH_P3_2_1_1) -> 
      (`LH_P3((_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_0_1_1), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_1_1_1), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec vecnorm_lh__d1 _lh_vecnorm_arg1_3 =
  (match _lh_vecnorm_arg1_3 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_3, _lh_vecnorm_LH_P3_1_3, _lh_vecnorm_LH_P3_2_3) -> 
      (let rec len_3 = (sqrt (((_lh_vecnorm_LH_P3_0_3 *. _lh_vecnorm_LH_P3_0_3) +. (_lh_vecnorm_LH_P3_1_3 *. _lh_vecnorm_LH_P3_1_3)) +. (_lh_vecnorm_LH_P3_2_3 *. _lh_vecnorm_LH_P3_2_3))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_3 /. len_3), (_lh_vecnorm_LH_P3_1_3 /. len_3), (_lh_vecnorm_LH_P3_2_3 /. len_3))), len_3)))
    | _ -> 
      (failwith "error"));;
let rec tracepixel_lh__d1 _lh_tracepixel_arg1_0 _lh_tracepixel_arg2_0 _lh_tracepixel_arg3_0 _lh_tracepixel_arg4_0 _lh_tracepixel_arg5_0 _lh_tracepixel_arg6_0 _lh_tracepixel_arg7_0 =
  (let rec pos_0 = lookfrom_lh__d2 in
    (let rec _lh_matchIdent_2_1 = (vecnorm_lh__d1 ((vecadd_lh__d1 ((vecadd_lh__d2 _lh_tracepixel_arg5_0) ((vecscale_lh__d1 _lh_tracepixel_arg6_0) _lh_tracepixel_arg3_0))) ((vecscale_lh__d2 _lh_tracepixel_arg7_0) _lh_tracepixel_arg4_0))) in
      (match _lh_matchIdent_2_1 with
        | `LH_P2(_lh_tracepixel_LH_P2_0_0, _lh_tracepixel_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_2_2 = (((trace_lh__d1 _lh_tracepixel_arg1_0) pos_0) _lh_tracepixel_LH_P2_0_0) in
            (match _lh_matchIdent_2_2 with
              | `LH_P3(_lh_tracepixel_LH_P3_0_0, _lh_tracepixel_LH_P3_1_0, _lh_tracepixel_LH_P3_2_0) -> 
                (if _lh_tracepixel_LH_P3_0_0 then
                  ((((((shade_lh__d1 _lh_tracepixel_arg2_0) _lh_tracepixel_LH_P3_2_0) pos_0) _lh_tracepixel_LH_P2_0_0) _lh_tracepixel_LH_P3_1_0) (`LH_P3(1.0, 1.0, 1.0)))
                else
                  background_lh__d1)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))));;
let rec fov_lh__d1 =
  45.0;;
let rec lookat_lh__d1 _lh_lookat_arg1_0 =
  (`LH_P3(0.0, 0.0, 0.0));;
let rec lookfrom_lh__d1 =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec testlights_lh__d1 _lh_testlights_arg1_0 =
  (`LH_C((`Point((`LH_P3(4.0, 3.0, 2.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_C((`Point((`LH_P3(1.0, (0.0 -. 4.0), 4.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_C((`Point((`LH_P3((0.0 -. 3.0), 1.0, 5.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_N)))))));;
let rec vup_lh__d1 _lh_vup_arg1_0 =
  (`LH_P3(0.0, 0.0, 1.0));;
let rec s2_lh__d2 _lh_s2_arg1_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d8 _lh_s2_arg1_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d7 _lh_s2_arg1_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d5 _lh_s2_arg1_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d6 _lh_s2_arg1_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d4 _lh_s2_arg1_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d9 _lh_s2_arg1_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d3 _lh_s2_arg1_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2_lh__d1 _lh_s2_arg1_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec testspheres_lh__d1 _lh_testspheres_arg1_1 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2_lh__d3 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2_lh__d1 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2_lh__d5 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2_lh__d1_d0 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2_lh__d7 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2_lh__d9 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2_lh__d4 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2_lh__d8 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2_lh__d2 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2_lh__d6 0))), (`LH_N)))))))))))))))))))));;
let rec veccross_lh__d2 _lh_veccross_arg1_0 _lh_veccross_arg2_0 =
  (match _lh_veccross_arg1_0 with
    | `LH_P3(_lh_veccross_LH_P3_0_0, _lh_veccross_LH_P3_1_0, _lh_veccross_LH_P3_2_0) -> 
      (match _lh_veccross_arg2_0 with
        | `LH_P3(_lh_veccross_LH_P3_0_1, _lh_veccross_LH_P3_1_1, _lh_veccross_LH_P3_2_1) -> 
          (`LH_P3(((_lh_veccross_LH_P3_1_0 *. _lh_veccross_LH_P3_2_1) -. (_lh_veccross_LH_P3_1_1 *. _lh_veccross_LH_P3_2_0)), ((_lh_veccross_LH_P3_2_0 *. _lh_veccross_LH_P3_0_1) -. (_lh_veccross_LH_P3_2_1 *. _lh_veccross_LH_P3_0_0)), ((_lh_veccross_LH_P3_0_0 *. _lh_veccross_LH_P3_1_1) -. (_lh_veccross_LH_P3_0_1 *. _lh_veccross_LH_P3_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d5 _lh_vecscale_arg1_7 _lh_vecscale_arg2_7 =
  (match _lh_vecscale_arg1_7 with
    | `LH_P3(_lh_vecscale_LH_P3_0_7, _lh_vecscale_LH_P3_1_7, _lh_vecscale_LH_P3_2_7) -> 
      (`LH_P3((_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_0_7), (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_1_7), (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_2_7)))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d3 _lh_vecscale_arg1_9 _lh_vecscale_arg2_9 =
  (match _lh_vecscale_arg1_9 with
    | `LH_P3(_lh_vecscale_LH_P3_0_9, _lh_vecscale_LH_P3_1_9, _lh_vecscale_LH_P3_2_9) -> 
      (`LH_P3((_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_0_9), (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_1_9), (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_2_9)))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d4 _lh_vecscale_arg1_8 _lh_vecscale_arg2_8 =
  (match _lh_vecscale_arg1_8 with
    | `LH_P3(_lh_vecscale_LH_P3_0_8, _lh_vecscale_LH_P3_1_8, _lh_vecscale_LH_P3_2_8) -> 
      (`LH_P3((_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_0_8), (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_1_8), (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_2_8)))
    | _ -> 
      (failwith "error"));;
let rec vecadd_lh__d3 _lh_vecadd_arg1_8 _lh_vecadd_arg2_8 =
  (match _lh_vecadd_arg1_8 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_6, _lh_vecadd_LH_P3_1_1_6, _lh_vecadd_LH_P3_2_1_6) -> 
      (match _lh_vecadd_arg2_8 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_7, _lh_vecadd_LH_P3_1_1_7, _lh_vecadd_LH_P3_2_1_7) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_6 +. _lh_vecadd_LH_P3_0_1_7), (_lh_vecadd_LH_P3_1_1_6 +. _lh_vecadd_LH_P3_1_1_7), (_lh_vecadd_LH_P3_2_1_6 +. _lh_vecadd_LH_P3_2_1_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub_lh__d2 _lh_vecsub_arg1_2 _lh_vecsub_arg2_2 =
  (match _lh_vecsub_arg1_2 with
    | `LH_P3(_lh_vecsub_LH_P3_0_4, _lh_vecsub_LH_P3_1_4, _lh_vecsub_LH_P3_2_4) -> 
      (match _lh_vecsub_arg2_2 with
        | `LH_P3(_lh_vecsub_LH_P3_0_5, _lh_vecsub_LH_P3_1_5, _lh_vecsub_LH_P3_2_5) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_4 -. _lh_vecsub_LH_P3_0_5), (_lh_vecsub_LH_P3_1_4 -. _lh_vecsub_LH_P3_1_5), (_lh_vecsub_LH_P3_2_4 -. _lh_vecsub_LH_P3_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec pi_lh__d2 =
  3.141592653589793;;
let rec dtor_lh__d2 _lh_dtor_arg1_0 =
  ((_lh_dtor_arg1_0 *. pi_lh__d2) /. 180.0);;
let rec vecnorm_lh__d2 _lh_vecnorm_arg1_2 =
  (match _lh_vecnorm_arg1_2 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_2, _lh_vecnorm_LH_P3_1_2, _lh_vecnorm_LH_P3_2_2) -> 
      (let rec len_2 = (sqrt (((_lh_vecnorm_LH_P3_0_2 *. _lh_vecnorm_LH_P3_0_2) +. (_lh_vecnorm_LH_P3_1_2 *. _lh_vecnorm_LH_P3_1_2)) +. (_lh_vecnorm_LH_P3_2_2 *. _lh_vecnorm_LH_P3_2_2))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_2 /. len_2), (_lh_vecnorm_LH_P3_1_2 /. len_2), (_lh_vecnorm_LH_P3_2_2 /. len_2))), len_2)))
    | _ -> 
      (failwith "error"));;
let rec veccross_lh__d1 _lh_veccross_arg1_1 _lh_veccross_arg2_1 =
  (match _lh_veccross_arg1_1 with
    | `LH_P3(_lh_veccross_LH_P3_0_2, _lh_veccross_LH_P3_1_2, _lh_veccross_LH_P3_2_2) -> 
      (match _lh_veccross_arg2_1 with
        | `LH_P3(_lh_veccross_LH_P3_0_3, _lh_veccross_LH_P3_1_3, _lh_veccross_LH_P3_2_3) -> 
          (`LH_P3(((_lh_veccross_LH_P3_1_2 *. _lh_veccross_LH_P3_2_3) -. (_lh_veccross_LH_P3_1_3 *. _lh_veccross_LH_P3_2_2)), ((_lh_veccross_LH_P3_2_2 *. _lh_veccross_LH_P3_0_3) -. (_lh_veccross_LH_P3_2_3 *. _lh_veccross_LH_P3_0_2)), ((_lh_veccross_LH_P3_0_2 *. _lh_veccross_LH_P3_1_3) -. (_lh_veccross_LH_P3_0_3 *. _lh_veccross_LH_P3_1_2))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec pi_lh__d1 =
  3.141592653589793;;
let rec dtor_lh__d1 _lh_dtor_arg1_1 =
  ((_lh_dtor_arg1_1 *. pi_lh__d1) /. 180.0);;
let rec vecnorm_lh__d3 _lh_vecnorm_arg1_1 =
  (match _lh_vecnorm_arg1_1 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_1, _lh_vecnorm_LH_P3_1_1, _lh_vecnorm_LH_P3_2_1) -> 
      (let rec len_1 = (sqrt (((_lh_vecnorm_LH_P3_0_1 *. _lh_vecnorm_LH_P3_0_1) +. (_lh_vecnorm_LH_P3_1_1 *. _lh_vecnorm_LH_P3_1_1)) +. (_lh_vecnorm_LH_P3_2_1 *. _lh_vecnorm_LH_P3_2_1))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_1 /. len_1), (_lh_vecnorm_LH_P3_1_1 /. len_1), (_lh_vecnorm_LH_P3_2_1 /. len_1))), len_1)))
    | _ -> 
      (failwith "error"));;
let rec vecscale_lh__d6 _lh_vecscale_arg1_6 _lh_vecscale_arg2_6 =
  (match _lh_vecscale_arg1_6 with
    | `LH_P3(_lh_vecscale_LH_P3_0_6, _lh_vecscale_LH_P3_1_6, _lh_vecscale_LH_P3_2_6) -> 
      (`LH_P3((_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_0_6), (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_1_6), (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_2_6)))
    | _ -> 
      (failwith "error"));;
let rec vecsub_lh__d1 _lh_vecsub_arg1_3 _lh_vecsub_arg2_3 =
  (match _lh_vecsub_arg1_3 with
    | `LH_P3(_lh_vecsub_LH_P3_0_6, _lh_vecsub_LH_P3_1_6, _lh_vecsub_LH_P3_2_6) -> 
      (match _lh_vecsub_arg2_3 with
        | `LH_P3(_lh_vecsub_LH_P3_0_7, _lh_vecsub_LH_P3_1_7, _lh_vecsub_LH_P3_2_7) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_6 -. _lh_vecsub_LH_P3_0_7), (_lh_vecsub_LH_P3_1_6 -. _lh_vecsub_LH_P3_1_7), (_lh_vecsub_LH_P3_2_6 -. _lh_vecsub_LH_P3_2_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec camparams_lh__d1 _lh_camparams_arg1_0 _lh_camparams_arg2_0 _lh_camparams_arg3_0 _lh_camparams_arg4_0 _lh_camparams_arg5_0 =
  (let rec initfirstray_0 = ((vecsub_lh__d2 _lh_camparams_arg2_0) _lh_camparams_arg1_0) in
    (let rec _lh_matchIdent_1_8 = (vecnorm_lh__d3 initfirstray_0) in
      (match _lh_matchIdent_1_8 with
        | `LH_P2(_lh_camparams_LH_P2_0_0, _lh_camparams_LH_P2_1_0) -> 
          (let rec _lh_matchIdent_1_9 = (vecnorm_lh__d2 ((veccross_lh__d1 _lh_camparams_LH_P2_0_0) _lh_camparams_arg3_0)) in
            (match _lh_matchIdent_1_9 with
              | `LH_P2(_lh_camparams_LH_P2_0_1, _lh_camparams_LH_P2_1_1) -> 
                (let rec _lh_matchIdent_2_0 = (vecnorm_lh__d4 ((veccross_lh__d2 _lh_camparams_LH_P2_0_1) _lh_camparams_LH_P2_0_0)) in
                  (match _lh_matchIdent_2_0 with
                    | `LH_P2(_lh_camparams_LH_P2_0_2, _lh_camparams_LH_P2_1_2) -> 
                      (let rec xfov_0 = _lh_camparams_arg4_0 in
                        (let rec yfov_0 = _lh_camparams_arg4_0 in
                          (let rec xwinsize_0 = _lh_camparams_arg5_0 in
                            (let rec ywinsize_0 = _lh_camparams_arg5_0 in
                              (let rec magx_0 = (((2.0 *. _lh_camparams_LH_P2_1_0) *. (tan (dtor_lh__d1 (xfov_0 /. 2.0)))) /. xwinsize_0) in
                                (let rec magy_0 = (((2.0 *. _lh_camparams_LH_P2_1_0) *. (tan (dtor_lh__d2 (yfov_0 /. 2.0)))) /. ywinsize_0) in
                                  (let rec scrnx_0 = ((vecscale_lh__d4 _lh_camparams_LH_P2_0_1) magx_0) in
                                    (let rec scrny_0 = ((vecscale_lh__d6 _lh_camparams_LH_P2_0_2) magy_0) in
                                      (let rec firstray_0 = ((vecsub_lh__d1 initfirstray_0) ((vecadd_lh__d3 ((vecscale_lh__d5 scrnx_0) (0.5 *. xwinsize_0))) ((vecscale_lh__d3 scrny_0) (0.5 *. ywinsize_0)))) in
                                        (`LH_P3(firstray_0, scrnx_0, scrny_0)))))))))))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))));;
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d2 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec ray_lh__d1 _lh_ray_arg1_0 =
  (let rec lights_0 = (testlights_lh__d1 0) in
    (let rec _lh_matchIdent_2_4 = (((((camparams_lh__d1 lookfrom_lh__d1) (lookat_lh__d1 0)) (vup_lh__d1 0)) fov_lh__d1) (float_of_int _lh_ray_arg1_0)) in
      (match _lh_matchIdent_2_4 with
        | `LH_P3(_lh_ray_LH_P3_0_0, _lh_ray_LH_P3_1_0, _lh_ray_LH_P3_2_0) -> 
          (let rec f_7 = (fun i_3 j_0 -> 
            (((((((tracepixel_lh__d1 (testspheres_lh__d1 0)) lights_0) (float_of_int i_3)) (float_of_int j_0)) _lh_ray_LH_P3_0_0) _lh_ray_LH_P3_1_0) _lh_ray_LH_P3_2_0)) in
            (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_8 -> 
              (match _lh_listcomp_fun_para_8 with
                | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
                  (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_9 -> 
                    (match _lh_listcomp_fun_para_9 with
                      | `LH_C(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_t_9) -> 
                        (`LH_C((`LH_P2((`LH_P2(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_h_9)), ((f_7 _lh_listcomp_fun_ls_h_8) _lh_listcomp_fun_ls_h_9))), (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_9)))
                      | `LH_N -> 
                        (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_8))) in
                    (_lh_listcomp_fun_9 ((enumFromTo_lh__d2 0) (_lh_ray_arg1_0 - 1))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_8 ((enumFromTo_lh__d1 0) (_lh_ray_arg1_0 - 1)))))
        | _ -> 
          (failwith "error"))));;
let rec snd_lh__d1 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec run_lh__d1 _lh_run_arg1_0 =
  (hash_lh__d1 ((map_lh__d1 snd_lh__d1) (ray_lh__d1 _lh_run_arg1_0)));;
let rec testSphere_nofib_lh__d1 _lh_testSphere_nofib_arg1_0 =
  (run_lh__d1 _lh_testSphere_nofib_arg1_0);;
end;;

