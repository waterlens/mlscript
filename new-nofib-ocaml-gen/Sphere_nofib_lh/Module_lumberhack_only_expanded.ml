

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec background__d0 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec background__d1 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec background__d2 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec enumFromTo__d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo__d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec epsilon__d0 =
  0.000001;;
let rec epsilon__d1 =
  0.000001;;
let rec epsilon__d1_d0 =
  0.000001;;
let rec epsilon__d1_d1 =
  0.000001;;
let rec epsilon__d1_d2 =
  0.000001;;
let rec epsilon__d2 =
  0.000001;;
let rec epsilon__d3 =
  0.000001;;
let rec epsilon__d4 =
  0.000001;;
let rec epsilon__d5 =
  0.000001;;
let rec epsilon__d6 =
  0.000001;;
let rec epsilon__d7 =
  0.000001;;
let rec epsilon__d8 =
  0.000001;;
let rec epsilon__d9 =
  0.000001;;
let rec foldr__d0 f_2_5 i_9 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_4_7, t_5_1) -> 
      ((f_2_5 h_4_7) (((foldr__d0 f_2_5) i_9) t_5_1))
    | `LH_N -> 
      i_9);;
let rec foldr__d1 f_2_3 i_7 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_4_1, t_4_5) -> 
      ((f_2_3 h_4_1) (((foldr__d1 f_2_3) i_7) t_4_5))
    | `LH_N -> 
      i_7);;
let rec foldr__d2 f_1_7 i_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_7) -> 
      ((f_1_7 h_2_4) (((foldr__d2 f_1_7) i_4) t_2_7))
    | `LH_N -> 
      i_4);;
let rec foldr__d3 f_2_1 i_6 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_7, t_4_1) -> 
      ((f_2_1 h_3_7) (((foldr__d3 f_2_1) i_6) t_4_1))
    | `LH_N -> 
      i_6);;
let rec foldr__d4 f_2_0 i_5 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_3_6, t_4_0) -> 
      ((f_2_0 h_3_6) (((foldr__d4 f_2_0) i_5) t_4_0))
    | `LH_N -> 
      i_5);;
let rec foldr__d5 f_2_6 i_1_0 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_5_9, t_6_3) -> 
      ((f_2_6 h_5_9) (((foldr__d5 f_2_6) i_1_0) t_6_3))
    | `LH_N -> 
      i_1_0);;
let rec fov__d0 =
  45.0;;
let rec fst__d0 _lh_fst_arg1_1 =
  (match _lh_fst_arg1_1 with
    | `LH_P2(_lh_fst_LH_P2_0_1, _lh_fst_LH_P2_1_1) -> 
      _lh_fst_LH_P2_0_1
    | _ -> 
      (failwith "error"));;
let rec head__d0 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_9) -> 
      h_2_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_5_1, t_5_5) -> 
      h_5_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_5_8, t_6_2) -> 
      h_5_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_5_4, t_5_8) -> 
      h_5_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_0, t_3_4) -> 
      h_3_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_4_4 =
  (match ls_4_4 with
    | `LH_C(h_5_5, t_5_9) -> 
      h_5_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_1, t_2_4) -> 
      h_2_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_2, t_3_6) -> 
      h_3_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_4_2, t_4_6) -> 
      h_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d7 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_4_0, t_4_4) -> 
      h_4_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_4_6 =
  (match ls_4_6 with
    | `LH_C(h_5_7, t_6_1) -> 
      h_5_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_3_5, t_3_9) -> 
      h_3_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_4_5 =
  (match ls_4_5 with
    | `LH_C(h_5_6, t_6_0) -> 
      h_5_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_1, t_3_5) -> 
      h_3_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_4_4, t_4_8) -> 
      h_4_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_3_9, t_4_3) -> 
      h_3_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_5_2, t_5_6) -> 
      h_5_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_3_4, t_3_8) -> 
      h_3_4
    | `LH_N -> 
      (failwith "error"));;
let rec infinity__d0 =
  100000000.0;;
let rec infinity__d1 =
  100000000.0;;
let rec infinity__d2 =
  100000000.0;;
let rec infinity__d3 =
  100000000.0;;
let rec infinity__d4 =
  100000000.0;;
let rec lightcolour__d0 _lh_lightcolour_arg1_1 =
  (match _lh_lightcolour_arg1_1 with
    | `Directional(_lh_lightcolour_Directional_0_1, _lh_lightcolour_Directional_1_1) -> 
      _lh_lightcolour_Directional_1_1
    | `Point(_lh_lightcolour_Point_0_1, _lh_lightcolour_Point_1_1) -> 
      _lh_lightcolour_Point_1_1
    | _ -> 
      (failwith "error"));;
let rec lookat__d0 _lh_lookat_arg1_1 =
  (`LH_P3(0.0, 0.0, 0.0));;
let rec lookfrom__d0 =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec lookfrom__d1 =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec map__d0 f_1_5 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_3, t_2_6) -> 
      (`LH_C((f_1_5 h_2_3), ((map__d0 f_1_5) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_9 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_9, t_3_3) -> 
      (`LH_C((f_1_9 h_2_9), ((map__d1 f_1_9) t_3_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_8, t_4_2) -> 
      (`LH_C(h_3_8, ((mappend__d0 t_4_2) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec mappend__d1 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_7, t_3_1) -> 
      (`LH_C(h_2_7, ((mappend__d1 t_3_1) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_3) -> 
      (`LH_C(h_2_0, ((mappend__d2 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d3 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_4_6, t_5_0) -> 
      (`LH_C(h_4_6, ((mappend__d3 t_5_0) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d4 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_4_5, t_4_9) -> 
      (`LH_C(h_4_5, ((mappend__d4 t_4_9) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d5 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_3_3, t_3_7) -> 
      (`LH_C(h_3_3, ((mappend__d5 t_3_7) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d6 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_8, t_3_2) -> 
      (`LH_C(h_2_8, ((mappend__d6 t_3_2) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d7 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_4_3, t_4_7) -> 
      (`LH_C(h_4_3, ((mappend__d7 t_4_7) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d8 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_5, t_2_8) -> 
      (`LH_C(h_2_5, ((mappend__d8 t_2_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d9 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_4_9, t_5_3) -> 
      (`LH_C(h_4_9, ((mappend__d9 t_5_3) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec null__d0 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d2 _lh_null_arg1_4 =
  (match _lh_null_arg1_4 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_4, _lh_null_LH_C_1_4) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d3 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec pi__d0 =
  3.141592653589793;;
let rec pi__d1 =
  3.141592653589793;;
let rec s2__d0 _lh_s2_arg1_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1 _lh_s2_arg1_1_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d0 _lh_s2_arg1_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d1 _lh_s2_arg1_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d2 _lh_s2_arg1_2_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d3 _lh_s2_arg1_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d4 _lh_s2_arg1_3_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d5 _lh_s2_arg1_2_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d6 _lh_s2_arg1_1_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d7 _lh_s2_arg1_1_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d8 _lh_s2_arg1_3_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d9 _lh_s2_arg1_1_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2 _lh_s2_arg1_1_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d0 _lh_s2_arg1_1_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d1 _lh_s2_arg1_3_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d2 _lh_s2_arg1_2_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d3 _lh_s2_arg1_3_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d4 _lh_s2_arg1_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d5 _lh_s2_arg1_2_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d6 _lh_s2_arg1_3_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d7 _lh_s2_arg1_3_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d8 _lh_s2_arg1_2_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d9 _lh_s2_arg1_1_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3 _lh_s2_arg1_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d0 _lh_s2_arg1_1_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d1 _lh_s2_arg1_2_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d2 _lh_s2_arg1_2_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d3 _lh_s2_arg1_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d4 _lh_s2_arg1_1_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d5 _lh_s2_arg1_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d6 _lh_s2_arg1_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d7 _lh_s2_arg1_4_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d8 _lh_s2_arg1_3_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d9 _lh_s2_arg1_2_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d4 _lh_s2_arg1_3_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d5 _lh_s2_arg1_3_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d6 _lh_s2_arg1_3_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d7 _lh_s2_arg1_2_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d8 _lh_s2_arg1_2_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d9 _lh_s2_arg1_1_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec snd__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec spheresurf__d0 _lh_spheresurf_arg1_1 =
  (match _lh_spheresurf_arg1_1 with
    | `Sphere(_lh_spheresurf_Sphere_0_1, _lh_spheresurf_Sphere_1_1, _lh_spheresurf_Sphere_2_1) -> 
      _lh_spheresurf_Sphere_2_1
    | _ -> 
      (failwith "error"));;
let rec tail__d0 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_5_3, t_5_7) -> 
      t_5_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_5_0, t_5_4) -> 
      t_5_4
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_5) -> 
      t_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_4_8, t_5_2) -> 
      t_5_2
    | `LH_N -> 
      (failwith "error"));;
let rec testlights__d0 _lh_testlights_arg1_1 =
  (`LH_C((`Point((`LH_P3(4.0, 3.0, 2.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_C((`Point((`LH_P3(1.0, (0.0 -. 4.0), 4.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_C((`Point((`LH_P3((0.0 -. 3.0), 1.0, 5.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))), (`LH_N)))))));;
let rec vecadd__d0 _lh_vecadd_arg1_1_6 _lh_vecadd_arg2_1_6 =
  (match _lh_vecadd_arg1_1_6 with
    | `LH_P3(_lh_vecadd_LH_P3_0_3_2, _lh_vecadd_LH_P3_1_3_2, _lh_vecadd_LH_P3_2_3_2) -> 
      (match _lh_vecadd_arg2_1_6 with
        | `LH_P3(_lh_vecadd_LH_P3_0_3_3, _lh_vecadd_LH_P3_1_3_3, _lh_vecadd_LH_P3_2_3_3) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_3_2 +. _lh_vecadd_LH_P3_0_3_3), (_lh_vecadd_LH_P3_1_3_2 +. _lh_vecadd_LH_P3_1_3_3), (_lh_vecadd_LH_P3_2_3_2 +. _lh_vecadd_LH_P3_2_3_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1 _lh_vecadd_arg1_6 _lh_vecadd_arg2_6 =
  (match _lh_vecadd_arg1_6 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_2, _lh_vecadd_LH_P3_1_1_2, _lh_vecadd_LH_P3_2_1_2) -> 
      (match _lh_vecadd_arg2_6 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_3, _lh_vecadd_LH_P3_1_1_3, _lh_vecadd_LH_P3_2_1_3) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_2 +. _lh_vecadd_LH_P3_0_1_3), (_lh_vecadd_LH_P3_1_1_2 +. _lh_vecadd_LH_P3_1_1_3), (_lh_vecadd_LH_P3_2_1_2 +. _lh_vecadd_LH_P3_2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d0 _lh_vecadd_arg1_1_2 _lh_vecadd_arg2_1_2 =
  (match _lh_vecadd_arg1_1_2 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_4, _lh_vecadd_LH_P3_1_2_4, _lh_vecadd_LH_P3_2_2_4) -> 
      (match _lh_vecadd_arg2_1_2 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_5, _lh_vecadd_LH_P3_1_2_5, _lh_vecadd_LH_P3_2_2_5) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2_4 +. _lh_vecadd_LH_P3_0_2_5), (_lh_vecadd_LH_P3_1_2_4 +. _lh_vecadd_LH_P3_1_2_5), (_lh_vecadd_LH_P3_2_2_4 +. _lh_vecadd_LH_P3_2_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d1 _lh_vecadd_arg1_1_5 _lh_vecadd_arg2_1_5 =
  (match _lh_vecadd_arg1_1_5 with
    | `LH_P3(_lh_vecadd_LH_P3_0_3_0, _lh_vecadd_LH_P3_1_3_0, _lh_vecadd_LH_P3_2_3_0) -> 
      (match _lh_vecadd_arg2_1_5 with
        | `LH_P3(_lh_vecadd_LH_P3_0_3_1, _lh_vecadd_LH_P3_1_3_1, _lh_vecadd_LH_P3_2_3_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_3_0 +. _lh_vecadd_LH_P3_0_3_1), (_lh_vecadd_LH_P3_1_3_0 +. _lh_vecadd_LH_P3_1_3_1), (_lh_vecadd_LH_P3_2_3_0 +. _lh_vecadd_LH_P3_2_3_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d2 _lh_vecadd_arg1_1 _lh_vecadd_arg2_1 =
  (match _lh_vecadd_arg1_1 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2, _lh_vecadd_LH_P3_1_2, _lh_vecadd_LH_P3_2_2) -> 
      (match _lh_vecadd_arg2_1 with
        | `LH_P3(_lh_vecadd_LH_P3_0_3, _lh_vecadd_LH_P3_1_3, _lh_vecadd_LH_P3_2_3) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2 +. _lh_vecadd_LH_P3_0_3), (_lh_vecadd_LH_P3_1_2 +. _lh_vecadd_LH_P3_1_3), (_lh_vecadd_LH_P3_2_2 +. _lh_vecadd_LH_P3_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d3 _lh_vecadd_arg1_7 _lh_vecadd_arg2_7 =
  (match _lh_vecadd_arg1_7 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_4, _lh_vecadd_LH_P3_1_1_4, _lh_vecadd_LH_P3_2_1_4) -> 
      (match _lh_vecadd_arg2_7 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_5, _lh_vecadd_LH_P3_1_1_5, _lh_vecadd_LH_P3_2_1_5) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_4 +. _lh_vecadd_LH_P3_0_1_5), (_lh_vecadd_LH_P3_1_1_4 +. _lh_vecadd_LH_P3_1_1_5), (_lh_vecadd_LH_P3_2_1_4 +. _lh_vecadd_LH_P3_2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d4 _lh_vecadd_arg1_8 _lh_vecadd_arg2_8 =
  (match _lh_vecadd_arg1_8 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_6, _lh_vecadd_LH_P3_1_1_6, _lh_vecadd_LH_P3_2_1_6) -> 
      (match _lh_vecadd_arg2_8 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_7, _lh_vecadd_LH_P3_1_1_7, _lh_vecadd_LH_P3_2_1_7) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_6 +. _lh_vecadd_LH_P3_0_1_7), (_lh_vecadd_LH_P3_1_1_6 +. _lh_vecadd_LH_P3_1_1_7), (_lh_vecadd_LH_P3_2_1_6 +. _lh_vecadd_LH_P3_2_1_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d5 _lh_vecadd_arg1_5 _lh_vecadd_arg2_5 =
  (match _lh_vecadd_arg1_5 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_0, _lh_vecadd_LH_P3_1_1_0, _lh_vecadd_LH_P3_2_1_0) -> 
      (match _lh_vecadd_arg2_5 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_1, _lh_vecadd_LH_P3_1_1_1, _lh_vecadd_LH_P3_2_1_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_0 +. _lh_vecadd_LH_P3_0_1_1), (_lh_vecadd_LH_P3_1_1_0 +. _lh_vecadd_LH_P3_1_1_1), (_lh_vecadd_LH_P3_2_1_0 +. _lh_vecadd_LH_P3_2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d2 _lh_vecadd_arg1_1_3 _lh_vecadd_arg2_1_3 =
  (match _lh_vecadd_arg1_1_3 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_6, _lh_vecadd_LH_P3_1_2_6, _lh_vecadd_LH_P3_2_2_6) -> 
      (match _lh_vecadd_arg2_1_3 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_7, _lh_vecadd_LH_P3_1_2_7, _lh_vecadd_LH_P3_2_2_7) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2_6 +. _lh_vecadd_LH_P3_0_2_7), (_lh_vecadd_LH_P3_1_2_6 +. _lh_vecadd_LH_P3_1_2_7), (_lh_vecadd_LH_P3_2_2_6 +. _lh_vecadd_LH_P3_2_2_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d3 _lh_vecadd_arg1_3 _lh_vecadd_arg2_3 =
  (match _lh_vecadd_arg1_3 with
    | `LH_P3(_lh_vecadd_LH_P3_0_6, _lh_vecadd_LH_P3_1_6, _lh_vecadd_LH_P3_2_6) -> 
      (match _lh_vecadd_arg2_3 with
        | `LH_P3(_lh_vecadd_LH_P3_0_7, _lh_vecadd_LH_P3_1_7, _lh_vecadd_LH_P3_2_7) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_6 +. _lh_vecadd_LH_P3_0_7), (_lh_vecadd_LH_P3_1_6 +. _lh_vecadd_LH_P3_1_7), (_lh_vecadd_LH_P3_2_6 +. _lh_vecadd_LH_P3_2_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d4 _lh_vecadd_arg1_1_1 _lh_vecadd_arg2_1_1 =
  (match _lh_vecadd_arg1_1_1 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_2, _lh_vecadd_LH_P3_1_2_2, _lh_vecadd_LH_P3_2_2_2) -> 
      (match _lh_vecadd_arg2_1_1 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_3, _lh_vecadd_LH_P3_1_2_3, _lh_vecadd_LH_P3_2_2_3) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2_2 +. _lh_vecadd_LH_P3_0_2_3), (_lh_vecadd_LH_P3_1_2_2 +. _lh_vecadd_LH_P3_1_2_3), (_lh_vecadd_LH_P3_2_2_2 +. _lh_vecadd_LH_P3_2_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d5 _lh_vecadd_arg1_1_4 _lh_vecadd_arg2_1_4 =
  (match _lh_vecadd_arg1_1_4 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_8, _lh_vecadd_LH_P3_1_2_8, _lh_vecadd_LH_P3_2_2_8) -> 
      (match _lh_vecadd_arg2_1_4 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_9, _lh_vecadd_LH_P3_1_2_9, _lh_vecadd_LH_P3_2_2_9) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2_8 +. _lh_vecadd_LH_P3_0_2_9), (_lh_vecadd_LH_P3_1_2_8 +. _lh_vecadd_LH_P3_1_2_9), (_lh_vecadd_LH_P3_2_2_8 +. _lh_vecadd_LH_P3_2_2_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d6 _lh_vecadd_arg1_2 _lh_vecadd_arg2_2 =
  (match _lh_vecadd_arg1_2 with
    | `LH_P3(_lh_vecadd_LH_P3_0_4, _lh_vecadd_LH_P3_1_4, _lh_vecadd_LH_P3_2_4) -> 
      (match _lh_vecadd_arg2_2 with
        | `LH_P3(_lh_vecadd_LH_P3_0_5, _lh_vecadd_LH_P3_1_5, _lh_vecadd_LH_P3_2_5) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_4 +. _lh_vecadd_LH_P3_0_5), (_lh_vecadd_LH_P3_1_4 +. _lh_vecadd_LH_P3_1_5), (_lh_vecadd_LH_P3_2_4 +. _lh_vecadd_LH_P3_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d7 _lh_vecadd_arg1_4 _lh_vecadd_arg2_4 =
  (match _lh_vecadd_arg1_4 with
    | `LH_P3(_lh_vecadd_LH_P3_0_8, _lh_vecadd_LH_P3_1_8, _lh_vecadd_LH_P3_2_8) -> 
      (match _lh_vecadd_arg2_4 with
        | `LH_P3(_lh_vecadd_LH_P3_0_9, _lh_vecadd_LH_P3_1_9, _lh_vecadd_LH_P3_2_9) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_8 +. _lh_vecadd_LH_P3_0_9), (_lh_vecadd_LH_P3_1_8 +. _lh_vecadd_LH_P3_1_9), (_lh_vecadd_LH_P3_2_8 +. _lh_vecadd_LH_P3_2_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d8 _lh_vecadd_arg1_9 _lh_vecadd_arg2_9 =
  (match _lh_vecadd_arg1_9 with
    | `LH_P3(_lh_vecadd_LH_P3_0_1_8, _lh_vecadd_LH_P3_1_1_8, _lh_vecadd_LH_P3_2_1_8) -> 
      (match _lh_vecadd_arg2_9 with
        | `LH_P3(_lh_vecadd_LH_P3_0_1_9, _lh_vecadd_LH_P3_1_1_9, _lh_vecadd_LH_P3_2_1_9) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_1_8 +. _lh_vecadd_LH_P3_0_1_9), (_lh_vecadd_LH_P3_1_1_8 +. _lh_vecadd_LH_P3_1_1_9), (_lh_vecadd_LH_P3_2_1_8 +. _lh_vecadd_LH_P3_2_1_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d9 _lh_vecadd_arg1_1_0 _lh_vecadd_arg2_1_0 =
  (match _lh_vecadd_arg1_1_0 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_0, _lh_vecadd_LH_P3_1_2_0, _lh_vecadd_LH_P3_2_2_0) -> 
      (match _lh_vecadd_arg2_1_0 with
        | `LH_P3(_lh_vecadd_LH_P3_0_2_1, _lh_vecadd_LH_P3_1_2_1, _lh_vecadd_LH_P3_2_2_1) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_2_0 +. _lh_vecadd_LH_P3_0_2_1), (_lh_vecadd_LH_P3_1_2_0 +. _lh_vecadd_LH_P3_1_2_1), (_lh_vecadd_LH_P3_2_2_0 +. _lh_vecadd_LH_P3_2_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec veccross__d0 _lh_veccross_arg1_1 _lh_veccross_arg2_1 =
  (match _lh_veccross_arg1_1 with
    | `LH_P3(_lh_veccross_LH_P3_0_2, _lh_veccross_LH_P3_1_2, _lh_veccross_LH_P3_2_2) -> 
      (match _lh_veccross_arg2_1 with
        | `LH_P3(_lh_veccross_LH_P3_0_3, _lh_veccross_LH_P3_1_3, _lh_veccross_LH_P3_2_3) -> 
          (`LH_P3(((_lh_veccross_LH_P3_1_2 *. _lh_veccross_LH_P3_2_3) -. (_lh_veccross_LH_P3_1_3 *. _lh_veccross_LH_P3_2_2)), ((_lh_veccross_LH_P3_2_2 *. _lh_veccross_LH_P3_0_3) -. (_lh_veccross_LH_P3_2_3 *. _lh_veccross_LH_P3_0_2)), ((_lh_veccross_LH_P3_0_2 *. _lh_veccross_LH_P3_1_3) -. (_lh_veccross_LH_P3_0_3 *. _lh_veccross_LH_P3_1_2))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec veccross__d1 _lh_veccross_arg1_2 _lh_veccross_arg2_2 =
  (match _lh_veccross_arg1_2 with
    | `LH_P3(_lh_veccross_LH_P3_0_4, _lh_veccross_LH_P3_1_4, _lh_veccross_LH_P3_2_4) -> 
      (match _lh_veccross_arg2_2 with
        | `LH_P3(_lh_veccross_LH_P3_0_5, _lh_veccross_LH_P3_1_5, _lh_veccross_LH_P3_2_5) -> 
          (`LH_P3(((_lh_veccross_LH_P3_1_4 *. _lh_veccross_LH_P3_2_5) -. (_lh_veccross_LH_P3_1_5 *. _lh_veccross_LH_P3_2_4)), ((_lh_veccross_LH_P3_2_4 *. _lh_veccross_LH_P3_0_5) -. (_lh_veccross_LH_P3_2_5 *. _lh_veccross_LH_P3_0_4)), ((_lh_veccross_LH_P3_0_4 *. _lh_veccross_LH_P3_1_5) -. (_lh_veccross_LH_P3_0_5 *. _lh_veccross_LH_P3_1_4))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d0 _lh_vecdot_arg1_1_1 _lh_vecdot_arg2_1_1 =
  (match _lh_vecdot_arg1_1_1 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_2, _lh_vecdot_LH_P3_1_2_2, _lh_vecdot_LH_P3_2_2_2) -> 
      (match _lh_vecdot_arg2_1_1 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_3, _lh_vecdot_LH_P3_1_2_3, _lh_vecdot_LH_P3_2_2_3) -> 
          (((_lh_vecdot_LH_P3_0_2_2 *. _lh_vecdot_LH_P3_0_2_3) +. (_lh_vecdot_LH_P3_1_2_2 *. _lh_vecdot_LH_P3_1_2_3)) +. (_lh_vecdot_LH_P3_2_2_2 *. _lh_vecdot_LH_P3_2_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1 _lh_vecdot_arg1_3 _lh_vecdot_arg2_3 =
  (match _lh_vecdot_arg1_3 with
    | `LH_P3(_lh_vecdot_LH_P3_0_6, _lh_vecdot_LH_P3_1_6, _lh_vecdot_LH_P3_2_6) -> 
      (match _lh_vecdot_arg2_3 with
        | `LH_P3(_lh_vecdot_LH_P3_0_7, _lh_vecdot_LH_P3_1_7, _lh_vecdot_LH_P3_2_7) -> 
          (((_lh_vecdot_LH_P3_0_6 *. _lh_vecdot_LH_P3_0_7) +. (_lh_vecdot_LH_P3_1_6 *. _lh_vecdot_LH_P3_1_7)) +. (_lh_vecdot_LH_P3_2_6 *. _lh_vecdot_LH_P3_2_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1_d0 _lh_vecdot_arg1_6 _lh_vecdot_arg2_6 =
  (match _lh_vecdot_arg1_6 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_2, _lh_vecdot_LH_P3_1_1_2, _lh_vecdot_LH_P3_2_1_2) -> 
      (match _lh_vecdot_arg2_6 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_3, _lh_vecdot_LH_P3_1_1_3, _lh_vecdot_LH_P3_2_1_3) -> 
          (((_lh_vecdot_LH_P3_0_1_2 *. _lh_vecdot_LH_P3_0_1_3) +. (_lh_vecdot_LH_P3_1_1_2 *. _lh_vecdot_LH_P3_1_1_3)) +. (_lh_vecdot_LH_P3_2_1_2 *. _lh_vecdot_LH_P3_2_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1_d1 _lh_vecdot_arg1_1_0 _lh_vecdot_arg2_1_0 =
  (match _lh_vecdot_arg1_1_0 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_0, _lh_vecdot_LH_P3_1_2_0, _lh_vecdot_LH_P3_2_2_0) -> 
      (match _lh_vecdot_arg2_1_0 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_1, _lh_vecdot_LH_P3_1_2_1, _lh_vecdot_LH_P3_2_2_1) -> 
          (((_lh_vecdot_LH_P3_0_2_0 *. _lh_vecdot_LH_P3_0_2_1) +. (_lh_vecdot_LH_P3_1_2_0 *. _lh_vecdot_LH_P3_1_2_1)) +. (_lh_vecdot_LH_P3_2_2_0 *. _lh_vecdot_LH_P3_2_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1_d2 _lh_vecdot_arg1_9 _lh_vecdot_arg2_9 =
  (match _lh_vecdot_arg1_9 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_8, _lh_vecdot_LH_P3_1_1_8, _lh_vecdot_LH_P3_2_1_8) -> 
      (match _lh_vecdot_arg2_9 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_9, _lh_vecdot_LH_P3_1_1_9, _lh_vecdot_LH_P3_2_1_9) -> 
          (((_lh_vecdot_LH_P3_0_1_8 *. _lh_vecdot_LH_P3_0_1_9) +. (_lh_vecdot_LH_P3_1_1_8 *. _lh_vecdot_LH_P3_1_1_9)) +. (_lh_vecdot_LH_P3_2_1_8 *. _lh_vecdot_LH_P3_2_1_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d2 _lh_vecdot_arg1_5 _lh_vecdot_arg2_5 =
  (match _lh_vecdot_arg1_5 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_0, _lh_vecdot_LH_P3_1_1_0, _lh_vecdot_LH_P3_2_1_0) -> 
      (match _lh_vecdot_arg2_5 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_1, _lh_vecdot_LH_P3_1_1_1, _lh_vecdot_LH_P3_2_1_1) -> 
          (((_lh_vecdot_LH_P3_0_1_0 *. _lh_vecdot_LH_P3_0_1_1) +. (_lh_vecdot_LH_P3_1_1_0 *. _lh_vecdot_LH_P3_1_1_1)) +. (_lh_vecdot_LH_P3_2_1_0 *. _lh_vecdot_LH_P3_2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d3 _lh_vecdot_arg1_8 _lh_vecdot_arg2_8 =
  (match _lh_vecdot_arg1_8 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_6, _lh_vecdot_LH_P3_1_1_6, _lh_vecdot_LH_P3_2_1_6) -> 
      (match _lh_vecdot_arg2_8 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_7, _lh_vecdot_LH_P3_1_1_7, _lh_vecdot_LH_P3_2_1_7) -> 
          (((_lh_vecdot_LH_P3_0_1_6 *. _lh_vecdot_LH_P3_0_1_7) +. (_lh_vecdot_LH_P3_1_1_6 *. _lh_vecdot_LH_P3_1_1_7)) +. (_lh_vecdot_LH_P3_2_1_6 *. _lh_vecdot_LH_P3_2_1_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d4 _lh_vecdot_arg1_7 _lh_vecdot_arg2_7 =
  (match _lh_vecdot_arg1_7 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_4, _lh_vecdot_LH_P3_1_1_4, _lh_vecdot_LH_P3_2_1_4) -> 
      (match _lh_vecdot_arg2_7 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_5, _lh_vecdot_LH_P3_1_1_5, _lh_vecdot_LH_P3_2_1_5) -> 
          (((_lh_vecdot_LH_P3_0_1_4 *. _lh_vecdot_LH_P3_0_1_5) +. (_lh_vecdot_LH_P3_1_1_4 *. _lh_vecdot_LH_P3_1_1_5)) +. (_lh_vecdot_LH_P3_2_1_4 *. _lh_vecdot_LH_P3_2_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d5 _lh_vecdot_arg1_1_3 _lh_vecdot_arg2_1_3 =
  (match _lh_vecdot_arg1_1_3 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_6, _lh_vecdot_LH_P3_1_2_6, _lh_vecdot_LH_P3_2_2_6) -> 
      (match _lh_vecdot_arg2_1_3 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_7, _lh_vecdot_LH_P3_1_2_7, _lh_vecdot_LH_P3_2_2_7) -> 
          (((_lh_vecdot_LH_P3_0_2_6 *. _lh_vecdot_LH_P3_0_2_7) +. (_lh_vecdot_LH_P3_1_2_6 *. _lh_vecdot_LH_P3_1_2_7)) +. (_lh_vecdot_LH_P3_2_2_6 *. _lh_vecdot_LH_P3_2_2_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d6 _lh_vecdot_arg1_4 _lh_vecdot_arg2_4 =
  (match _lh_vecdot_arg1_4 with
    | `LH_P3(_lh_vecdot_LH_P3_0_8, _lh_vecdot_LH_P3_1_8, _lh_vecdot_LH_P3_2_8) -> 
      (match _lh_vecdot_arg2_4 with
        | `LH_P3(_lh_vecdot_LH_P3_0_9, _lh_vecdot_LH_P3_1_9, _lh_vecdot_LH_P3_2_9) -> 
          (((_lh_vecdot_LH_P3_0_8 *. _lh_vecdot_LH_P3_0_9) +. (_lh_vecdot_LH_P3_1_8 *. _lh_vecdot_LH_P3_1_9)) +. (_lh_vecdot_LH_P3_2_8 *. _lh_vecdot_LH_P3_2_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d7 _lh_vecdot_arg1_1_2 _lh_vecdot_arg2_1_2 =
  (match _lh_vecdot_arg1_1_2 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_4, _lh_vecdot_LH_P3_1_2_4, _lh_vecdot_LH_P3_2_2_4) -> 
      (match _lh_vecdot_arg2_1_2 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_5, _lh_vecdot_LH_P3_1_2_5, _lh_vecdot_LH_P3_2_2_5) -> 
          (((_lh_vecdot_LH_P3_0_2_4 *. _lh_vecdot_LH_P3_0_2_5) +. (_lh_vecdot_LH_P3_1_2_4 *. _lh_vecdot_LH_P3_1_2_5)) +. (_lh_vecdot_LH_P3_2_2_4 *. _lh_vecdot_LH_P3_2_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d8 _lh_vecdot_arg1_1 _lh_vecdot_arg2_1 =
  (match _lh_vecdot_arg1_1 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2, _lh_vecdot_LH_P3_1_2, _lh_vecdot_LH_P3_2_2) -> 
      (match _lh_vecdot_arg2_1 with
        | `LH_P3(_lh_vecdot_LH_P3_0_3, _lh_vecdot_LH_P3_1_3, _lh_vecdot_LH_P3_2_3) -> 
          (((_lh_vecdot_LH_P3_0_2 *. _lh_vecdot_LH_P3_0_3) +. (_lh_vecdot_LH_P3_1_2 *. _lh_vecdot_LH_P3_1_3)) +. (_lh_vecdot_LH_P3_2_2 *. _lh_vecdot_LH_P3_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d9 _lh_vecdot_arg1_2 _lh_vecdot_arg2_2 =
  (match _lh_vecdot_arg1_2 with
    | `LH_P3(_lh_vecdot_LH_P3_0_4, _lh_vecdot_LH_P3_1_4, _lh_vecdot_LH_P3_2_4) -> 
      (match _lh_vecdot_arg2_2 with
        | `LH_P3(_lh_vecdot_LH_P3_0_5, _lh_vecdot_LH_P3_1_5, _lh_vecdot_LH_P3_2_5) -> 
          (((_lh_vecdot_LH_P3_0_4 *. _lh_vecdot_LH_P3_0_5) +. (_lh_vecdot_LH_P3_1_4 *. _lh_vecdot_LH_P3_1_5)) +. (_lh_vecdot_LH_P3_2_4 *. _lh_vecdot_LH_P3_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d0 _lh_vecmult_arg1_2 _lh_vecmult_arg2_2 =
  (match _lh_vecmult_arg1_2 with
    | `LH_P3(_lh_vecmult_LH_P3_0_4, _lh_vecmult_LH_P3_1_4, _lh_vecmult_LH_P3_2_4) -> 
      (match _lh_vecmult_arg2_2 with
        | `LH_P3(_lh_vecmult_LH_P3_0_5, _lh_vecmult_LH_P3_1_5, _lh_vecmult_LH_P3_2_5) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_4 *. _lh_vecmult_LH_P3_0_5), (_lh_vecmult_LH_P3_1_4 *. _lh_vecmult_LH_P3_1_5), (_lh_vecmult_LH_P3_2_4 *. _lh_vecmult_LH_P3_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d1 _lh_vecmult_arg1_3 _lh_vecmult_arg2_3 =
  (match _lh_vecmult_arg1_3 with
    | `LH_P3(_lh_vecmult_LH_P3_0_6, _lh_vecmult_LH_P3_1_6, _lh_vecmult_LH_P3_2_6) -> 
      (match _lh_vecmult_arg2_3 with
        | `LH_P3(_lh_vecmult_LH_P3_0_7, _lh_vecmult_LH_P3_1_7, _lh_vecmult_LH_P3_2_7) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_6 *. _lh_vecmult_LH_P3_0_7), (_lh_vecmult_LH_P3_1_6 *. _lh_vecmult_LH_P3_1_7), (_lh_vecmult_LH_P3_2_6 *. _lh_vecmult_LH_P3_2_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d2 _lh_vecmult_arg1_9 _lh_vecmult_arg2_9 =
  (match _lh_vecmult_arg1_9 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_8, _lh_vecmult_LH_P3_1_1_8, _lh_vecmult_LH_P3_2_1_8) -> 
      (match _lh_vecmult_arg2_9 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_9, _lh_vecmult_LH_P3_1_1_9, _lh_vecmult_LH_P3_2_1_9) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_1_8 *. _lh_vecmult_LH_P3_0_1_9), (_lh_vecmult_LH_P3_1_1_8 *. _lh_vecmult_LH_P3_1_1_9), (_lh_vecmult_LH_P3_2_1_8 *. _lh_vecmult_LH_P3_2_1_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d3 _lh_vecmult_arg1_4 _lh_vecmult_arg2_4 =
  (match _lh_vecmult_arg1_4 with
    | `LH_P3(_lh_vecmult_LH_P3_0_8, _lh_vecmult_LH_P3_1_8, _lh_vecmult_LH_P3_2_8) -> 
      (match _lh_vecmult_arg2_4 with
        | `LH_P3(_lh_vecmult_LH_P3_0_9, _lh_vecmult_LH_P3_1_9, _lh_vecmult_LH_P3_2_9) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_8 *. _lh_vecmult_LH_P3_0_9), (_lh_vecmult_LH_P3_1_8 *. _lh_vecmult_LH_P3_1_9), (_lh_vecmult_LH_P3_2_8 *. _lh_vecmult_LH_P3_2_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d4 _lh_vecmult_arg1_6 _lh_vecmult_arg2_6 =
  (match _lh_vecmult_arg1_6 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_2, _lh_vecmult_LH_P3_1_1_2, _lh_vecmult_LH_P3_2_1_2) -> 
      (match _lh_vecmult_arg2_6 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_3, _lh_vecmult_LH_P3_1_1_3, _lh_vecmult_LH_P3_2_1_3) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_1_2 *. _lh_vecmult_LH_P3_0_1_3), (_lh_vecmult_LH_P3_1_1_2 *. _lh_vecmult_LH_P3_1_1_3), (_lh_vecmult_LH_P3_2_1_2 *. _lh_vecmult_LH_P3_2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d5 _lh_vecmult_arg1_8 _lh_vecmult_arg2_8 =
  (match _lh_vecmult_arg1_8 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_6, _lh_vecmult_LH_P3_1_1_6, _lh_vecmult_LH_P3_2_1_6) -> 
      (match _lh_vecmult_arg2_8 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_7, _lh_vecmult_LH_P3_1_1_7, _lh_vecmult_LH_P3_2_1_7) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_1_6 *. _lh_vecmult_LH_P3_0_1_7), (_lh_vecmult_LH_P3_1_1_6 *. _lh_vecmult_LH_P3_1_1_7), (_lh_vecmult_LH_P3_2_1_6 *. _lh_vecmult_LH_P3_2_1_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d6 _lh_vecmult_arg1_5 _lh_vecmult_arg2_5 =
  (match _lh_vecmult_arg1_5 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_0, _lh_vecmult_LH_P3_1_1_0, _lh_vecmult_LH_P3_2_1_0) -> 
      (match _lh_vecmult_arg2_5 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_1, _lh_vecmult_LH_P3_1_1_1, _lh_vecmult_LH_P3_2_1_1) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_1_0 *. _lh_vecmult_LH_P3_0_1_1), (_lh_vecmult_LH_P3_1_1_0 *. _lh_vecmult_LH_P3_1_1_1), (_lh_vecmult_LH_P3_2_1_0 *. _lh_vecmult_LH_P3_2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d7 _lh_vecmult_arg1_7 _lh_vecmult_arg2_7 =
  (match _lh_vecmult_arg1_7 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_4, _lh_vecmult_LH_P3_1_1_4, _lh_vecmult_LH_P3_2_1_4) -> 
      (match _lh_vecmult_arg2_7 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_5, _lh_vecmult_LH_P3_1_1_5, _lh_vecmult_LH_P3_2_1_5) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_1_4 *. _lh_vecmult_LH_P3_0_1_5), (_lh_vecmult_LH_P3_1_1_4 *. _lh_vecmult_LH_P3_1_1_5), (_lh_vecmult_LH_P3_2_1_4 *. _lh_vecmult_LH_P3_2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d8 _lh_vecmult_arg1_1 _lh_vecmult_arg2_1 =
  (match _lh_vecmult_arg1_1 with
    | `LH_P3(_lh_vecmult_LH_P3_0_2, _lh_vecmult_LH_P3_1_2, _lh_vecmult_LH_P3_2_2) -> 
      (match _lh_vecmult_arg2_1 with
        | `LH_P3(_lh_vecmult_LH_P3_0_3, _lh_vecmult_LH_P3_1_3, _lh_vecmult_LH_P3_2_3) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_2 *. _lh_vecmult_LH_P3_0_3), (_lh_vecmult_LH_P3_1_2 *. _lh_vecmult_LH_P3_1_3), (_lh_vecmult_LH_P3_2_2 *. _lh_vecmult_LH_P3_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d0 _lh_vecnorm_arg1_1 =
  (match _lh_vecnorm_arg1_1 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_1, _lh_vecnorm_LH_P3_1_1, _lh_vecnorm_LH_P3_2_1) -> 
      (let rec len_1 = (sqrt (((_lh_vecnorm_LH_P3_0_1 *. _lh_vecnorm_LH_P3_0_1) +. (_lh_vecnorm_LH_P3_1_1 *. _lh_vecnorm_LH_P3_1_1)) +. (_lh_vecnorm_LH_P3_2_1 *. _lh_vecnorm_LH_P3_2_1))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_1 /. len_1), (_lh_vecnorm_LH_P3_1_1 /. len_1), (_lh_vecnorm_LH_P3_2_1 /. len_1))), len_1)))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d1 _lh_vecnorm_arg1_6 =
  (match _lh_vecnorm_arg1_6 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_6, _lh_vecnorm_LH_P3_1_6, _lh_vecnorm_LH_P3_2_6) -> 
      (let rec len_6 = (sqrt (((_lh_vecnorm_LH_P3_0_6 *. _lh_vecnorm_LH_P3_0_6) +. (_lh_vecnorm_LH_P3_1_6 *. _lh_vecnorm_LH_P3_1_6)) +. (_lh_vecnorm_LH_P3_2_6 *. _lh_vecnorm_LH_P3_2_6))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_6 /. len_6), (_lh_vecnorm_LH_P3_1_6 /. len_6), (_lh_vecnorm_LH_P3_2_6 /. len_6))), len_6)))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d2 _lh_vecnorm_arg1_4 =
  (match _lh_vecnorm_arg1_4 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_4, _lh_vecnorm_LH_P3_1_4, _lh_vecnorm_LH_P3_2_4) -> 
      (let rec len_4 = (sqrt (((_lh_vecnorm_LH_P3_0_4 *. _lh_vecnorm_LH_P3_0_4) +. (_lh_vecnorm_LH_P3_1_4 *. _lh_vecnorm_LH_P3_1_4)) +. (_lh_vecnorm_LH_P3_2_4 *. _lh_vecnorm_LH_P3_2_4))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_4 /. len_4), (_lh_vecnorm_LH_P3_1_4 /. len_4), (_lh_vecnorm_LH_P3_2_4 /. len_4))), len_4)))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d3 _lh_vecnorm_arg1_5 =
  (match _lh_vecnorm_arg1_5 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_5, _lh_vecnorm_LH_P3_1_5, _lh_vecnorm_LH_P3_2_5) -> 
      (let rec len_5 = (sqrt (((_lh_vecnorm_LH_P3_0_5 *. _lh_vecnorm_LH_P3_0_5) +. (_lh_vecnorm_LH_P3_1_5 *. _lh_vecnorm_LH_P3_1_5)) +. (_lh_vecnorm_LH_P3_2_5 *. _lh_vecnorm_LH_P3_2_5))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_5 /. len_5), (_lh_vecnorm_LH_P3_1_5 /. len_5), (_lh_vecnorm_LH_P3_2_5 /. len_5))), len_5)))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d4 _lh_vecnorm_arg1_2 =
  (match _lh_vecnorm_arg1_2 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_2, _lh_vecnorm_LH_P3_1_2, _lh_vecnorm_LH_P3_2_2) -> 
      (let rec len_2 = (sqrt (((_lh_vecnorm_LH_P3_0_2 *. _lh_vecnorm_LH_P3_0_2) +. (_lh_vecnorm_LH_P3_1_2 *. _lh_vecnorm_LH_P3_1_2)) +. (_lh_vecnorm_LH_P3_2_2 *. _lh_vecnorm_LH_P3_2_2))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_2 /. len_2), (_lh_vecnorm_LH_P3_1_2 /. len_2), (_lh_vecnorm_LH_P3_2_2 /. len_2))), len_2)))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d5 _lh_vecnorm_arg1_3 =
  (match _lh_vecnorm_arg1_3 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_3, _lh_vecnorm_LH_P3_1_3, _lh_vecnorm_LH_P3_2_3) -> 
      (let rec len_3 = (sqrt (((_lh_vecnorm_LH_P3_0_3 *. _lh_vecnorm_LH_P3_0_3) +. (_lh_vecnorm_LH_P3_1_3 *. _lh_vecnorm_LH_P3_1_3)) +. (_lh_vecnorm_LH_P3_2_3 *. _lh_vecnorm_LH_P3_2_3))) in
        (`LH_P2((`LH_P3((_lh_vecnorm_LH_P3_0_3 /. len_3), (_lh_vecnorm_LH_P3_1_3 /. len_3), (_lh_vecnorm_LH_P3_2_3 /. len_3))), len_3)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d0 _lh_vecscale_arg1_1_4 _lh_vecscale_arg2_1_4 =
  (match _lh_vecscale_arg1_1_4 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_4, _lh_vecscale_LH_P3_1_1_4, _lh_vecscale_LH_P3_2_1_4) -> 
      (`LH_P3((_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_0_1_4), (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_1_1_4), (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_2_1_4)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1 _lh_vecscale_arg1_7 _lh_vecscale_arg2_7 =
  (match _lh_vecscale_arg1_7 with
    | `LH_P3(_lh_vecscale_LH_P3_0_7, _lh_vecscale_LH_P3_1_7, _lh_vecscale_LH_P3_2_7) -> 
      (`LH_P3((_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_0_7), (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_1_7), (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_2_7)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d0 _lh_vecscale_arg1_1_3 _lh_vecscale_arg2_1_3 =
  (match _lh_vecscale_arg1_1_3 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_3, _lh_vecscale_LH_P3_1_1_3, _lh_vecscale_LH_P3_2_1_3) -> 
      (`LH_P3((_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_0_1_3), (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_1_1_3), (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_2_1_3)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d1 _lh_vecscale_arg1_1_1 _lh_vecscale_arg2_1_1 =
  (match _lh_vecscale_arg1_1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_1, _lh_vecscale_LH_P3_1_1_1, _lh_vecscale_LH_P3_2_1_1) -> 
      (`LH_P3((_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_0_1_1), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_1_1_1), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_2_1_1)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d2 _lh_vecscale_arg1_1_8 _lh_vecscale_arg2_1_8 =
  (match _lh_vecscale_arg1_1_8 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_8, _lh_vecscale_LH_P3_1_1_8, _lh_vecscale_LH_P3_2_1_8) -> 
      (`LH_P3((_lh_vecscale_arg2_1_8 *. _lh_vecscale_LH_P3_0_1_8), (_lh_vecscale_arg2_1_8 *. _lh_vecscale_LH_P3_1_1_8), (_lh_vecscale_arg2_1_8 *. _lh_vecscale_LH_P3_2_1_8)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d3 _lh_vecscale_arg1_8 _lh_vecscale_arg2_8 =
  (match _lh_vecscale_arg1_8 with
    | `LH_P3(_lh_vecscale_LH_P3_0_8, _lh_vecscale_LH_P3_1_8, _lh_vecscale_LH_P3_2_8) -> 
      (`LH_P3((_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_0_8), (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_1_8), (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_2_8)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d4 _lh_vecscale_arg1_4 _lh_vecscale_arg2_4 =
  (match _lh_vecscale_arg1_4 with
    | `LH_P3(_lh_vecscale_LH_P3_0_4, _lh_vecscale_LH_P3_1_4, _lh_vecscale_LH_P3_2_4) -> 
      (`LH_P3((_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_0_4), (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_1_4), (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_2_4)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d5 _lh_vecscale_arg1_2_0 _lh_vecscale_arg2_2_0 =
  (match _lh_vecscale_arg1_2_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2_0, _lh_vecscale_LH_P3_1_2_0, _lh_vecscale_LH_P3_2_2_0) -> 
      (`LH_P3((_lh_vecscale_arg2_2_0 *. _lh_vecscale_LH_P3_0_2_0), (_lh_vecscale_arg2_2_0 *. _lh_vecscale_LH_P3_1_2_0), (_lh_vecscale_arg2_2_0 *. _lh_vecscale_LH_P3_2_2_0)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d6 _lh_vecscale_arg1_9 _lh_vecscale_arg2_9 =
  (match _lh_vecscale_arg1_9 with
    | `LH_P3(_lh_vecscale_LH_P3_0_9, _lh_vecscale_LH_P3_1_9, _lh_vecscale_LH_P3_2_9) -> 
      (`LH_P3((_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_0_9), (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_1_9), (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_2_9)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d7 _lh_vecscale_arg1_3 _lh_vecscale_arg2_3 =
  (match _lh_vecscale_arg1_3 with
    | `LH_P3(_lh_vecscale_LH_P3_0_3, _lh_vecscale_LH_P3_1_3, _lh_vecscale_LH_P3_2_3) -> 
      (`LH_P3((_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_0_3), (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_1_3), (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_2_3)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d8 _lh_vecscale_arg1_1 _lh_vecscale_arg2_1 =
  (match _lh_vecscale_arg1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1, _lh_vecscale_LH_P3_1_1, _lh_vecscale_LH_P3_2_1) -> 
      (`LH_P3((_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_0_1), (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_1_1), (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_2_1)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d9 _lh_vecscale_arg1_1_0 _lh_vecscale_arg2_1_0 =
  (match _lh_vecscale_arg1_1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_0, _lh_vecscale_LH_P3_1_1_0, _lh_vecscale_LH_P3_2_1_0) -> 
      (`LH_P3((_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_0_1_0), (_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_1_1_0), (_lh_vecscale_arg2_1_0 *. _lh_vecscale_LH_P3_2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d2 _lh_vecscale_arg1_6 _lh_vecscale_arg2_6 =
  (match _lh_vecscale_arg1_6 with
    | `LH_P3(_lh_vecscale_LH_P3_0_6, _lh_vecscale_LH_P3_1_6, _lh_vecscale_LH_P3_2_6) -> 
      (`LH_P3((_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_0_6), (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_1_6), (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_2_6)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d2_d0 _lh_vecscale_arg1_2 _lh_vecscale_arg2_2 =
  (match _lh_vecscale_arg1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2, _lh_vecscale_LH_P3_1_2, _lh_vecscale_LH_P3_2_2) -> 
      (`LH_P3((_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_0_2), (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_1_2), (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_2_2)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d3 _lh_vecscale_arg1_1_5 _lh_vecscale_arg2_1_5 =
  (match _lh_vecscale_arg1_1_5 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_5, _lh_vecscale_LH_P3_1_1_5, _lh_vecscale_LH_P3_2_1_5) -> 
      (`LH_P3((_lh_vecscale_arg2_1_5 *. _lh_vecscale_LH_P3_0_1_5), (_lh_vecscale_arg2_1_5 *. _lh_vecscale_LH_P3_1_1_5), (_lh_vecscale_arg2_1_5 *. _lh_vecscale_LH_P3_2_1_5)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d4 _lh_vecscale_arg1_1_6 _lh_vecscale_arg2_1_6 =
  (match _lh_vecscale_arg1_1_6 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_6, _lh_vecscale_LH_P3_1_1_6, _lh_vecscale_LH_P3_2_1_6) -> 
      (`LH_P3((_lh_vecscale_arg2_1_6 *. _lh_vecscale_LH_P3_0_1_6), (_lh_vecscale_arg2_1_6 *. _lh_vecscale_LH_P3_1_1_6), (_lh_vecscale_arg2_1_6 *. _lh_vecscale_LH_P3_2_1_6)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d5 _lh_vecscale_arg1_5 _lh_vecscale_arg2_5 =
  (match _lh_vecscale_arg1_5 with
    | `LH_P3(_lh_vecscale_LH_P3_0_5, _lh_vecscale_LH_P3_1_5, _lh_vecscale_LH_P3_2_5) -> 
      (`LH_P3((_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_0_5), (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_1_5), (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_2_5)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d6 _lh_vecscale_arg1_1_9 _lh_vecscale_arg2_1_9 =
  (match _lh_vecscale_arg1_1_9 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_9, _lh_vecscale_LH_P3_1_1_9, _lh_vecscale_LH_P3_2_1_9) -> 
      (`LH_P3((_lh_vecscale_arg2_1_9 *. _lh_vecscale_LH_P3_0_1_9), (_lh_vecscale_arg2_1_9 *. _lh_vecscale_LH_P3_1_1_9), (_lh_vecscale_arg2_1_9 *. _lh_vecscale_LH_P3_2_1_9)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d7 _lh_vecscale_arg1_2_1 _lh_vecscale_arg2_2_1 =
  (match _lh_vecscale_arg1_2_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2_1, _lh_vecscale_LH_P3_1_2_1, _lh_vecscale_LH_P3_2_2_1) -> 
      (`LH_P3((_lh_vecscale_arg2_2_1 *. _lh_vecscale_LH_P3_0_2_1), (_lh_vecscale_arg2_2_1 *. _lh_vecscale_LH_P3_1_2_1), (_lh_vecscale_arg2_2_1 *. _lh_vecscale_LH_P3_2_2_1)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d8 _lh_vecscale_arg1_1_2 _lh_vecscale_arg2_1_2 =
  (match _lh_vecscale_arg1_1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_2, _lh_vecscale_LH_P3_1_1_2, _lh_vecscale_LH_P3_2_1_2) -> 
      (`LH_P3((_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_0_1_2), (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_1_1_2), (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_2_1_2)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d9 _lh_vecscale_arg1_1_7 _lh_vecscale_arg2_1_7 =
  (match _lh_vecscale_arg1_1_7 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_7, _lh_vecscale_LH_P3_1_1_7, _lh_vecscale_LH_P3_2_1_7) -> 
      (`LH_P3((_lh_vecscale_arg2_1_7 *. _lh_vecscale_LH_P3_0_1_7), (_lh_vecscale_arg2_1_7 *. _lh_vecscale_LH_P3_1_1_7), (_lh_vecscale_arg2_1_7 *. _lh_vecscale_LH_P3_2_1_7)))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d0 _lh_vecsub_arg1_3 _lh_vecsub_arg2_3 =
  (match _lh_vecsub_arg1_3 with
    | `LH_P3(_lh_vecsub_LH_P3_0_6, _lh_vecsub_LH_P3_1_6, _lh_vecsub_LH_P3_2_6) -> 
      (match _lh_vecsub_arg2_3 with
        | `LH_P3(_lh_vecsub_LH_P3_0_7, _lh_vecsub_LH_P3_1_7, _lh_vecsub_LH_P3_2_7) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_6 -. _lh_vecsub_LH_P3_0_7), (_lh_vecsub_LH_P3_1_6 -. _lh_vecsub_LH_P3_1_7), (_lh_vecsub_LH_P3_2_6 -. _lh_vecsub_LH_P3_2_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d1 _lh_vecsub_arg1_7 _lh_vecsub_arg2_7 =
  (match _lh_vecsub_arg1_7 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_4, _lh_vecsub_LH_P3_1_1_4, _lh_vecsub_LH_P3_2_1_4) -> 
      (match _lh_vecsub_arg2_7 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_5, _lh_vecsub_LH_P3_1_1_5, _lh_vecsub_LH_P3_2_1_5) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_1_4 -. _lh_vecsub_LH_P3_0_1_5), (_lh_vecsub_LH_P3_1_1_4 -. _lh_vecsub_LH_P3_1_1_5), (_lh_vecsub_LH_P3_2_1_4 -. _lh_vecsub_LH_P3_2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d2 _lh_vecsub_arg1_4 _lh_vecsub_arg2_4 =
  (match _lh_vecsub_arg1_4 with
    | `LH_P3(_lh_vecsub_LH_P3_0_8, _lh_vecsub_LH_P3_1_8, _lh_vecsub_LH_P3_2_8) -> 
      (match _lh_vecsub_arg2_4 with
        | `LH_P3(_lh_vecsub_LH_P3_0_9, _lh_vecsub_LH_P3_1_9, _lh_vecsub_LH_P3_2_9) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_8 -. _lh_vecsub_LH_P3_0_9), (_lh_vecsub_LH_P3_1_8 -. _lh_vecsub_LH_P3_1_9), (_lh_vecsub_LH_P3_2_8 -. _lh_vecsub_LH_P3_2_9)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d3 _lh_vecsub_arg1_6 _lh_vecsub_arg2_6 =
  (match _lh_vecsub_arg1_6 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_2, _lh_vecsub_LH_P3_1_1_2, _lh_vecsub_LH_P3_2_1_2) -> 
      (match _lh_vecsub_arg2_6 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_3, _lh_vecsub_LH_P3_1_1_3, _lh_vecsub_LH_P3_2_1_3) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_1_2 -. _lh_vecsub_LH_P3_0_1_3), (_lh_vecsub_LH_P3_1_1_2 -. _lh_vecsub_LH_P3_1_1_3), (_lh_vecsub_LH_P3_2_1_2 -. _lh_vecsub_LH_P3_2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d4 _lh_vecsub_arg1_1 _lh_vecsub_arg2_1 =
  (match _lh_vecsub_arg1_1 with
    | `LH_P3(_lh_vecsub_LH_P3_0_2, _lh_vecsub_LH_P3_1_2, _lh_vecsub_LH_P3_2_2) -> 
      (match _lh_vecsub_arg2_1 with
        | `LH_P3(_lh_vecsub_LH_P3_0_3, _lh_vecsub_LH_P3_1_3, _lh_vecsub_LH_P3_2_3) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_2 -. _lh_vecsub_LH_P3_0_3), (_lh_vecsub_LH_P3_1_2 -. _lh_vecsub_LH_P3_1_3), (_lh_vecsub_LH_P3_2_2 -. _lh_vecsub_LH_P3_2_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d5 _lh_vecsub_arg1_8 _lh_vecsub_arg2_8 =
  (match _lh_vecsub_arg1_8 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_6, _lh_vecsub_LH_P3_1_1_6, _lh_vecsub_LH_P3_2_1_6) -> 
      (match _lh_vecsub_arg2_8 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_7, _lh_vecsub_LH_P3_1_1_7, _lh_vecsub_LH_P3_2_1_7) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_1_6 -. _lh_vecsub_LH_P3_0_1_7), (_lh_vecsub_LH_P3_1_1_6 -. _lh_vecsub_LH_P3_1_1_7), (_lh_vecsub_LH_P3_2_1_6 -. _lh_vecsub_LH_P3_2_1_7)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d6 _lh_vecsub_arg1_5 _lh_vecsub_arg2_5 =
  (match _lh_vecsub_arg1_5 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_0, _lh_vecsub_LH_P3_1_1_0, _lh_vecsub_LH_P3_2_1_0) -> 
      (match _lh_vecsub_arg2_5 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_1, _lh_vecsub_LH_P3_1_1_1, _lh_vecsub_LH_P3_2_1_1) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_1_0 -. _lh_vecsub_LH_P3_0_1_1), (_lh_vecsub_LH_P3_1_1_0 -. _lh_vecsub_LH_P3_1_1_1), (_lh_vecsub_LH_P3_2_1_0 -. _lh_vecsub_LH_P3_2_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d7 _lh_vecsub_arg1_2 _lh_vecsub_arg2_2 =
  (match _lh_vecsub_arg1_2 with
    | `LH_P3(_lh_vecsub_LH_P3_0_4, _lh_vecsub_LH_P3_1_4, _lh_vecsub_LH_P3_2_4) -> 
      (match _lh_vecsub_arg2_2 with
        | `LH_P3(_lh_vecsub_LH_P3_0_5, _lh_vecsub_LH_P3_1_5, _lh_vecsub_LH_P3_2_5) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_4 -. _lh_vecsub_LH_P3_0_5), (_lh_vecsub_LH_P3_1_4 -. _lh_vecsub_LH_P3_1_5), (_lh_vecsub_LH_P3_2_4 -. _lh_vecsub_LH_P3_2_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vup__d0 _lh_vup_arg1_1 =
  (`LH_P3(0.0, 0.0, 1.0));;
let rec ambientsurf__d0 _lh_ambientsurf_arg1_1 =
  (head__d0 ((mappend__d0 (let rec _lh_listcomp_fun_2_1 = (fun _lh_listcomp_fun_para_2_1 -> 
    (match _lh_listcomp_fun_para_2_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_1, _lh_listcomp_fun_ls_t_2_1) -> 
        (match _lh_listcomp_fun_ls_h_2_1 with
          | `Ambient(_lh_ambientsurf_Ambient_0_1) -> 
            (`LH_C(_lh_ambientsurf_Ambient_0_1, (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1)))
          | _ -> 
            (_lh_listcomp_fun_2_1 _lh_listcomp_fun_ls_t_2_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_1 _lh_ambientsurf_arg1_1))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and bodysurf__d0 _lh_bodysurf_arg1_2 =
  (head__d1 ((mappend__d1 (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_1_4 -> 
    (match _lh_listcomp_fun_para_1_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_4, _lh_listcomp_fun_ls_t_1_4) -> 
        (match _lh_listcomp_fun_ls_h_1_4 with
          | `Body(_lh_bodysurf_Body_0_2) -> 
            (`LH_C(_lh_bodysurf_Body_0_2, (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4)))
          | _ -> 
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_4))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_4 _lh_bodysurf_arg1_2))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))))
and bodysurf__d1 _lh_bodysurf_arg1_1 =
  (head__d2 ((mappend__d2 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_1_0 -> 
    (match _lh_listcomp_fun_para_1_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
        (match _lh_listcomp_fun_ls_h_1_0 with
          | `Body(_lh_bodysurf_Body_0_1) -> 
            (`LH_C(_lh_bodysurf_Body_0_1, (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0)))
          | _ -> 
            (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_1_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_0 _lh_bodysurf_arg1_1))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))))
and camparams__d0 _lh_camparams_arg1_1 _lh_camparams_arg2_1 _lh_camparams_arg3_1 _lh_camparams_arg4_1 _lh_camparams_arg5_1 =
  (let rec initfirstray_1 = ((vecsub__d0 _lh_camparams_arg2_1) _lh_camparams_arg1_1) in
    (let rec _lh_matchIdent_5_2 = (vecnorm__d0 initfirstray_1) in
      (match _lh_matchIdent_5_2 with
        | `LH_P2(_lh_camparams_LH_P2_0_3, _lh_camparams_LH_P2_1_3) -> 
          (let rec _lh_matchIdent_5_3 = (vecnorm__d1 ((veccross__d0 _lh_camparams_LH_P2_0_3) _lh_camparams_arg3_1)) in
            (match _lh_matchIdent_5_3 with
              | `LH_P2(_lh_camparams_LH_P2_0_4, _lh_camparams_LH_P2_1_4) -> 
                (let rec _lh_matchIdent_5_4 = (vecnorm__d2 ((veccross__d1 _lh_camparams_LH_P2_0_4) _lh_camparams_LH_P2_0_3)) in
                  (match _lh_matchIdent_5_4 with
                    | `LH_P2(_lh_camparams_LH_P2_0_5, _lh_camparams_LH_P2_1_5) -> 
                      (let rec xfov_1 = _lh_camparams_arg4_1 in
                        (let rec yfov_1 = _lh_camparams_arg4_1 in
                          (let rec xwinsize_1 = _lh_camparams_arg5_1 in
                            (let rec ywinsize_1 = _lh_camparams_arg5_1 in
                              (let rec magx_1 = (((2.0 *. _lh_camparams_LH_P2_1_3) *. (tan (dtor__d0 (xfov_1 /. 2.0)))) /. xwinsize_1) in
                                (let rec magy_1 = (((2.0 *. _lh_camparams_LH_P2_1_3) *. (tan (dtor__d1 (yfov_1 /. 2.0)))) /. ywinsize_1) in
                                  (let rec scrnx_1 = ((vecscale__d0 _lh_camparams_LH_P2_0_4) magx_1) in
                                    (let rec scrny_1 = ((vecscale__d1 _lh_camparams_LH_P2_0_5) magy_1) in
                                      (let rec firstray_1 = ((vecsub__d1 initfirstray_1) ((vecadd__d0 ((vecscale__d2 scrnx_1) (0.5 *. xwinsize_1))) ((vecscale__d3 scrny_1) (0.5 *. ywinsize_1)))) in
                                        (`LH_P3(firstray_1, scrnx_1, scrny_1)))))))))))
                    | _ -> 
                      (failwith "error")))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))
and diffusesurf__d0 _lh_diffusesurf_arg1_1 =
  (head__d3 ((mappend__d3 (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_1_2 -> 
    (match _lh_listcomp_fun_para_1_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_1_2 with
          | `Diffuse(_lh_diffusesurf_Diffuse_0_1) -> 
            (`LH_C(_lh_diffusesurf_Diffuse_0_1, (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2)))
          | _ -> 
            (_lh_listcomp_fun_1_2 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_2 _lh_diffusesurf_arg1_1))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and dtor__d0 _lh_dtor_arg1_1 =
  ((_lh_dtor_arg1_1 *. pi__d0) /. 180.0)
and dtor__d1 _lh_dtor_arg1_2 =
  ((_lh_dtor_arg1_2 *. pi__d1) /. 180.0)
and hash__d0 _lh_hash_arg1_1 =
  (let rec u8_1 = (fun x_4 -> 
    ((fun _lh_funcomp_x_1 -> 
      (int_of_float ((fun x_5 -> 
        (255.0 *. x_5)) _lh_funcomp_x_1))) x_4)) in
    (((foldr__d0 (fun rgb_1 acc_1 -> 
      (let rec _lh_matchIdent_3_7 = rgb_1 in
        (match _lh_matchIdent_3_7 with
          | `LH_P3(_lh_hash_LH_P3_0_1, _lh_hash_LH_P3_1_1, _lh_hash_LH_P3_2_1) -> 
            ((((u8_1 _lh_hash_LH_P3_0_1) + ((u8_1 _lh_hash_LH_P3_1_1) * 7)) + ((u8_1 _lh_hash_LH_P3_2_1) * 23)) + (acc_1 * 61))
          | _ -> 
            (failwith "error"))))) 0) _lh_hash_arg1_1))
and is_zerovector__d0 _lh_is_zerovector_arg1_3 =
  (match _lh_is_zerovector_arg1_3 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_3, _lh_is_zerovector_LH_P3_1_3, _lh_is_zerovector_LH_P3_2_3) -> 
      (((_lh_is_zerovector_LH_P3_0_3 < epsilon__d1) && (_lh_is_zerovector_LH_P3_1_3 < epsilon__d2)) && (_lh_is_zerovector_LH_P3_2_3 < epsilon__d3))
    | _ -> 
      (failwith "error"))
and is_zerovector__d1 _lh_is_zerovector_arg1_1 =
  (match _lh_is_zerovector_arg1_1 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_1, _lh_is_zerovector_LH_P3_1_1, _lh_is_zerovector_LH_P3_2_1) -> 
      (((_lh_is_zerovector_LH_P3_0_1 < epsilon__d6) && (_lh_is_zerovector_LH_P3_1_1 < epsilon__d7)) && (_lh_is_zerovector_LH_P3_2_1 < epsilon__d8))
    | _ -> 
      (failwith "error"))
and is_zerovector__d2 _lh_is_zerovector_arg1_2 =
  (match _lh_is_zerovector_arg1_2 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_2, _lh_is_zerovector_LH_P3_1_2, _lh_is_zerovector_LH_P3_2_2) -> 
      (((_lh_is_zerovector_LH_P3_0_2 < epsilon__d1_d0) && (_lh_is_zerovector_LH_P3_1_2 < epsilon__d1_d1)) && (_lh_is_zerovector_LH_P3_2_2 < epsilon__d1_d2))
    | _ -> 
      (failwith "error"))
and lightdirection__d0 _lh_lightdirection_arg1_1 _lh_lightdirection_arg2_1 =
  (match _lh_lightdirection_arg1_1 with
    | `Directional(_lh_lightdirection_Directional_0_1, _lh_lightdirection_Directional_1_1) -> 
      (`LH_P2((fst__d0 (vecnorm__d3 _lh_lightdirection_Directional_0_1)), infinity__d0))
    | `Point(_lh_lightdirection_Point_0_1, _lh_lightdirection_Point_1_1) -> 
      (vecnorm__d4 ((vecsub__d2 _lh_lightdirection_Point_0_1) _lh_lightdirection_arg2_1))
    | _ -> 
      (failwith "error"))
and lightray__d0 _lh_lightray_arg1_1 _lh_lightray_arg2_1 _lh_lightray_arg3_1 _lh_lightray_arg4_1 _lh_lightray_arg5_1 =
  (let rec _lh_matchIdent_3_9 = ((lightdirection__d0 _lh_lightray_arg1_1) _lh_lightray_arg2_1) in
    (match _lh_matchIdent_3_9 with
      | `LH_P2(_lh_lightray_LH_P2_0_2, _lh_lightray_LH_P2_1_2) -> 
        (let rec cosangle_1 = ((vecdot__d2 _lh_lightray_LH_P2_0_2) _lh_lightray_arg3_1) in
          (let rec _lh_matchIdent_4_0 = (((shadowed__d0 _lh_lightray_arg2_1) _lh_lightray_LH_P2_0_2) (lightcolour__d0 _lh_lightray_arg1_1)) in
            (match _lh_matchIdent_4_0 with
              | `LH_P2(_lh_lightray_LH_P2_0_3, _lh_lightray_LH_P2_1_3) -> 
                (if _lh_lightray_LH_P2_0_3 then
                  (`LH_P3(0.0, 0.0, 0.0))
                else
                  (let rec diff_3 = (diffusesurf__d0 _lh_lightray_arg5_1) in
                    (let rec spow_1 = (specpowsurf__d0 _lh_lightray_arg5_1) in
                      (if (cosangle_1 <= 0.0) then
                        (let rec bodycol_1 = (bodysurf__d1 _lh_lightray_arg5_1) in
                          (let rec cosalpha_2 = (0.0 -. ((vecdot__d3 _lh_lightray_arg4_1) _lh_lightray_LH_P2_0_2)) in
                            (let rec diffcont_2 = ((vecmult__d0 ((vecscale__d5 diff_3) (0.0 -. cosangle_1))) _lh_lightray_LH_P2_1_3) in
                              (let rec speccont_2 = (if (cosalpha_2 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult__d1 ((vecscale__d6 bodycol_1) (cosalpha_2 ** spow_1))) _lh_lightray_LH_P2_1_3)) in
                                ((vecadd__d2 diffcont_2) speccont_2)))))
                      else
                        (let rec spec_1 = (specularsurf__d0 _lh_lightray_arg5_1) in
                          (let rec cosalpha_3 = ((vecdot__d4 _lh_lightray_arg4_1) _lh_lightray_LH_P2_0_2) in
                            (let rec diffcont_3 = ((vecmult__d2 ((vecscale__d7 diff_3) cosangle_1)) _lh_lightray_LH_P2_1_3) in
                              (let rec speccont_3 = (if (cosalpha_3 <= 0.0) then
                                (`LH_P3(0.0, 0.0, 0.0))
                              else
                                ((vecmult__d3 ((vecscale__d8 spec_1) (cosalpha_3 ** spow_1))) _lh_lightray_LH_P2_1_3)) in
                                ((vecadd__d3 diffcont_3) speccont_3)))))))))
              | _ -> 
                (failwith "error"))))
      | _ -> 
        (failwith "error")))
and ray__d0 _lh_ray_arg1_1 =
  (let rec lights_1 = (testlights__d0 0) in
    (let rec _lh_matchIdent_4_8 = (((((camparams__d0 lookfrom__d0) (lookat__d0 0)) (vup__d0 0)) fov__d0) (float_of_int _lh_ray_arg1_1)) in
      (match _lh_matchIdent_4_8 with
        | `LH_P3(_lh_ray_LH_P3_0_1, _lh_ray_LH_P3_1_1, _lh_ray_LH_P3_2_1) -> 
          (let rec f_2_4 = (fun i_8 j_1 -> 
            (((((((tracepixel__d0 (testspheres__d0 0)) lights_1) (float_of_int i_8)) (float_of_int j_1)) _lh_ray_LH_P3_0_1) _lh_ray_LH_P3_1_1) _lh_ray_LH_P3_2_1)) in
            (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_7 -> 
              (match _lh_listcomp_fun_para_1_7 with
                | `LH_C(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_t_1_7) -> 
                  (let rec _lh_listcomp_fun_1_8 = (fun _lh_listcomp_fun_para_1_8 -> 
                    (match _lh_listcomp_fun_para_1_8 with
                      | `LH_C(_lh_listcomp_fun_ls_h_1_8, _lh_listcomp_fun_ls_t_1_8) -> 
                        (`LH_C((`LH_P2((`LH_P2(_lh_listcomp_fun_ls_h_1_7, _lh_listcomp_fun_ls_h_1_8)), ((f_2_4 _lh_listcomp_fun_ls_h_1_7) _lh_listcomp_fun_ls_h_1_8))), (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_1_8)))
                      | `LH_N -> 
                        (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_7))) in
                    (_lh_listcomp_fun_1_8 ((enumFromTo__d1 0) (_lh_ray_arg1_1 - 1))))
                | `LH_N -> 
                  (`LH_N))) in
              (_lh_listcomp_fun_1_7 ((enumFromTo__d0 0) (_lh_ray_arg1_1 - 1)))))
        | _ -> 
          (failwith "error"))))
and reflectray__d0 _lh_reflectray_arg1_1 _lh_reflectray_arg2_1 _lh_reflectray_arg3_1 _lh_reflectray_arg4_1 _lh_reflectray_arg5_1 _lh_reflectray_arg6_1 =
  (let rec newcontrib_3 = ((vecmult__d4 _lh_reflectray_arg4_1) _lh_reflectray_arg5_1) in
    (let rec nearpos_3 = ((vecadd__d4 _lh_reflectray_arg1_1) ((vecscale__d9 _lh_reflectray_arg2_1) epsilon__d5)) in
      (let rec _lh_matchIdent_4_9 = (((trace__d1 (testspheres__d2 0)) nearpos_3) _lh_reflectray_arg2_1) in
        (match _lh_matchIdent_4_9 with
          | `LH_P3(_lh_reflectray_LH_P3_0_1, _lh_reflectray_LH_P3_1_1, _lh_reflectray_LH_P3_2_1) -> 
            (let rec newcol_3 = (if _lh_reflectray_LH_P3_0_1 then
              ((((((shade__d0 _lh_reflectray_arg3_1) _lh_reflectray_LH_P3_2_1) nearpos_3) _lh_reflectray_arg2_1) _lh_reflectray_LH_P3_1_1) newcontrib_3)
            else
              background__d1) in
              (if (is_zerovector__d1 newcontrib_3) then
                _lh_reflectray_arg6_1
              else
                ((vecadd__d5 _lh_reflectray_arg6_1) ((vecmult__d5 newcol_3) _lh_reflectray_arg4_1))))
          | _ -> 
            (failwith "error")))))
and reflectsurf__d0 _lh_reflectsurf_arg1_1 =
  (head__d1_d0 ((mappend__d6 (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (match _lh_listcomp_fun_ls_h_1_1 with
          | `Reflect(_lh_reflectsurf_Reflect_0_1) -> 
            (`LH_C(_lh_reflectsurf_Reflect_0_1, (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1)))
          | _ -> 
            (_lh_listcomp_fun_1_1 _lh_listcomp_fun_ls_t_1_1))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_1 _lh_reflectsurf_arg1_1))) (`LH_C(0.0, (`LH_N)))))
and refractray__d0 _lh_refractray_arg1_1 _lh_refractray_arg2_1 _lh_refractray_arg3_1 =
  (let rec dotp_1 = (0.0 -. ((vecdot__d7 _lh_refractray_arg2_1) _lh_refractray_arg3_1)) in
    (let rec _lh_matchIdent_3_8 = (if (dotp_1 < 0.0) then
      (`LH_P3(((vecscale__d1_d1 _lh_refractray_arg3_1) (0.0 -. 1.0)), (0.0 -. dotp_1), (1.0 /. _lh_refractray_arg1_1)))
    else
      (`LH_P3(_lh_refractray_arg3_1, dotp_1, _lh_refractray_arg1_1))) in
      (match _lh_matchIdent_3_8 with
        | `LH_P3(_lh_refractray_LH_P3_0_1, _lh_refractray_LH_P3_1_1, _lh_refractray_LH_P3_2_1) -> 
          (let rec disc_2 = (((1.0 -. _lh_refractray_LH_P3_2_1) *. _lh_refractray_LH_P3_2_1) *. (1.0 -. (_lh_refractray_LH_P3_1_1 *. _lh_refractray_LH_P3_1_1))) in
            (let rec t_3_0 = ((_lh_refractray_LH_P3_2_1 *. _lh_refractray_LH_P3_1_1) -. (sqrt disc_2)) in
              (if (disc_2 < 0.0) then
                (`LH_P2(true, (`LH_P3(0.0, 0.0, 0.0))))
              else
                (`LH_P2(false, ((vecadd__d6 ((vecscale__d1_d2 _lh_refractray_LH_P3_0_1) t_3_0)) ((vecscale__d1_d3 _lh_refractray_arg2_1) _lh_refractray_LH_P3_2_1)))))))
        | _ -> 
          (failwith "error"))))
and refractsurf__d0 _lh_refractsurf_arg1_1 =
  (head__d1_d1 ((mappend__d7 (let rec _lh_listcomp_fun_2_0 = (fun _lh_listcomp_fun_para_2_0 -> 
    (match _lh_listcomp_fun_para_2_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_2_0, _lh_listcomp_fun_ls_t_2_0) -> 
        (match _lh_listcomp_fun_ls_h_2_0 with
          | `Refract(_lh_refractsurf_Refract_0_1) -> 
            (`LH_C(_lh_refractsurf_Refract_0_1, (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0)))
          | _ -> 
            (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_2_0))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2_0 _lh_refractsurf_arg1_1))) (`LH_C(1.0, (`LH_N)))))
and run__d0 _lh_run_arg1_1 =
  (hash__d0 ((map__d0 snd__d0) (ray__d0 _lh_run_arg1_1)))
and shade__d0 _lh_shade_arg1_1 _lh_shade_arg2_1 _lh_shade_arg3_1 _lh_shade_arg4_1 _lh_shade_arg5_1 _lh_shade_arg6_1 =
  (let rec hitpos_1 = ((vecadd__d9 _lh_shade_arg3_1) ((vecscale__d1_d5 _lh_shade_arg4_1) _lh_shade_arg5_1)) in
    (let rec ambientlight_1 = (`LH_P3(1.0, 1.0, 1.0)) in
      (let rec surf_1 = (spheresurf__d0 _lh_shade_arg2_1) in
        (let rec amb_1 = ((vecmult__d8 ambientlight_1) (ambientsurf__d0 surf_1)) in
          (let rec norm_1 = ((spherenormal__d0 hitpos_1) _lh_shade_arg2_1) in
            (let rec refl_1 = ((vecadd__d1_d0 _lh_shade_arg4_1) ((vecscale__d1_d6 norm_1) ((0.0 -. 2.0) *. ((vecdot__d1_d0 _lh_shade_arg4_1) norm_1)))) in
              (let rec diff_2 = (vecsum__d0 ((map__d1 (fun l_1 -> 
                (((((lightray__d0 l_1) hitpos_1) norm_1) refl_1) surf_1))) _lh_shade_arg1_1)) in
                (let rec transmitted_1 = (transmitsurf__d0 surf_1) in
                  (let rec simple_1 = ((vecadd__d1_d1 amb_1) diff_2) in
                    (let rec trintensity_1 = ((vecscale__d1_d7 (bodysurf__d0 surf_1)) transmitted_1) in
                      (let rec _lh_matchIdent_2_5 = (if (transmitted_1 < epsilon__d0) then
                        (`LH_P2(false, simple_1))
                      else
                        ((((((((transmitray__d0 _lh_shade_arg1_1) simple_1) hitpos_1) _lh_shade_arg4_1) (refractsurf__d0 surf_1)) trintensity_1) _lh_shade_arg6_1) norm_1)) in
                        (match _lh_matchIdent_2_5 with
                          | `LH_P2(_lh_shade_LH_P2_0_1, _lh_shade_LH_P2_1_1) -> 
                            (let rec reflsurf_1 = ((vecscale__d1_d8 (specularsurf__d1 surf_1)) (reflectsurf__d0 surf_1)) in
                              (let rec reflectiv_1 = (if _lh_shade_LH_P2_0_1 then
                                ((vecadd__d1_d2 trintensity_1) reflsurf_1)
                              else
                                reflsurf_1) in
                                (let rec rcol_1 = (if (is_zerovector__d0 reflectiv_1) then
                                  _lh_shade_LH_P2_1_1
                                else
                                  ((((((reflectray__d0 hitpos_1) refl_1) _lh_shade_arg1_1) reflectiv_1) _lh_shade_arg6_1) _lh_shade_LH_P2_1_1)) in
                                  rcol_1)))
                          | _ -> 
                            (failwith "error")))))))))))))
and shadowed__d0 _lh_shadowed_arg1_1 _lh_shadowed_arg2_1 _lh_shadowed_arg3_1 =
  (let rec _lh_matchIdent_3_1 = (((trace__d0 (testspheres__d1 0)) ((vecadd__d1 _lh_shadowed_arg1_1) ((vecscale__d4 _lh_shadowed_arg2_1) epsilon__d4))) _lh_shadowed_arg2_1) in
    (match _lh_matchIdent_3_1 with
      | `LH_P3(_lh_shadowed_LH_P3_0_1, _lh_shadowed_LH_P3_1_1, _lh_shadowed_LH_P3_2_1) -> 
        (if (not _lh_shadowed_LH_P3_0_1) then
          (`LH_P2(false, _lh_shadowed_arg3_1))
        else
          (`LH_P2(true, _lh_shadowed_arg3_1)))
      | _ -> 
        (failwith "error")))
and specpowsurf__d0 _lh_specpowsurf_arg1_1 =
  (head__d6 ((mappend__d4 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_1_5 -> 
    (match _lh_listcomp_fun_para_1_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_5, _lh_listcomp_fun_ls_t_1_5) -> 
        (match _lh_listcomp_fun_ls_h_1_5 with
          | `Specpow(_lh_specpowsurf_Specpow_0_1) -> 
            (`LH_C(_lh_specpowsurf_Specpow_0_1, (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5)))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_5))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_5 _lh_specpowsurf_arg1_1))) (`LH_C(8.0, (`LH_N)))))
and specularsurf__d0 _lh_specularsurf_arg1_1 =
  (head__d7 ((mappend__d5 (let rec _lh_listcomp_fun_1_3 = (fun _lh_listcomp_fun_para_1_3 -> 
    (match _lh_listcomp_fun_para_1_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
        (match _lh_listcomp_fun_ls_h_1_3 with
          | `Specular(_lh_specularsurf_Specular_0_1) -> 
            (`LH_C(_lh_specularsurf_Specular_0_1, (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3)))
          | _ -> 
            (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_1_3))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_3 _lh_specularsurf_arg1_1))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and specularsurf__d1 _lh_specularsurf_arg1_2 =
  (head__d1_d2 ((mappend__d8 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_6 -> 
    (match _lh_listcomp_fun_para_1_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_6, _lh_listcomp_fun_ls_t_1_6) -> 
        (match _lh_listcomp_fun_ls_h_1_6 with
          | `Specular(_lh_specularsurf_Specular_0_2) -> 
            (`LH_C(_lh_specularsurf_Specular_0_2, (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6)))
          | _ -> 
            (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_6))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_6 _lh_specularsurf_arg1_2))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and sphereintersect__d0 _lh_sphereintersect_arg1_2 _lh_sphereintersect_arg2_2 _lh_sphereintersect_arg3_2 =
  (match _lh_sphereintersect_arg3_2 with
    | `Sphere(_lh_sphereintersect_Sphere_0_2, _lh_sphereintersect_Sphere_1_2, _lh_sphereintersect_Sphere_2_2) -> 
      (let rec m_2 = ((vecsub__d3 _lh_sphereintersect_arg1_2) _lh_sphereintersect_Sphere_0_2) in
        (let rec bm_2 = ((vecdot__d0 m_2) _lh_sphereintersect_arg2_2) in
          (let rec m2_2 = ((vecdot__d1 m_2) m_2) in
            (let rec disc_4 = (((bm_2 *. bm_2) -. m2_2) +. (_lh_sphereintersect_Sphere_1_2 *. _lh_sphereintersect_Sphere_1_2)) in
              (let rec slo_2 = ((0.0 -. bm_2) -. (sqrt disc_4)) in
                (let rec shi_2 = ((0.0 -. bm_2) +. (sqrt disc_4)) in
                  (if (disc_4 < 0.0) then
                    (`LH_P2(false, 0.0))
                  else
                    (if (slo_2 < 0.0) then
                      (if (shi_2 < 0.0) then
                        (`LH_P2(false, 0.0))
                      else
                        (`LH_P2(true, shi_2)))
                    else
                      (`LH_P2(true, slo_2))))))))))
    | _ -> 
      (failwith "error"))
and sphereintersect__d1 _lh_sphereintersect_arg1_4 _lh_sphereintersect_arg2_4 _lh_sphereintersect_arg3_4 =
  (match _lh_sphereintersect_arg3_4 with
    | `Sphere(_lh_sphereintersect_Sphere_0_4, _lh_sphereintersect_Sphere_1_4, _lh_sphereintersect_Sphere_2_4) -> 
      (let rec m_4 = ((vecsub__d4 _lh_sphereintersect_arg1_4) _lh_sphereintersect_Sphere_0_4) in
        (let rec bm_4 = ((vecdot__d5 m_4) _lh_sphereintersect_arg2_4) in
          (let rec m2_4 = ((vecdot__d6 m_4) m_4) in
            (let rec disc_6 = (((bm_4 *. bm_4) -. m2_4) +. (_lh_sphereintersect_Sphere_1_4 *. _lh_sphereintersect_Sphere_1_4)) in
              (let rec slo_4 = ((0.0 -. bm_4) -. (sqrt disc_6)) in
                (let rec shi_4 = ((0.0 -. bm_4) +. (sqrt disc_6)) in
                  (if (disc_6 < 0.0) then
                    (`LH_P2(false, 0.0))
                  else
                    (if (slo_4 < 0.0) then
                      (if (shi_4 < 0.0) then
                        (`LH_P2(false, 0.0))
                      else
                        (`LH_P2(true, shi_4)))
                    else
                      (`LH_P2(true, slo_4))))))))))
    | _ -> 
      (failwith "error"))
and sphereintersect__d2 _lh_sphereintersect_arg1_1 _lh_sphereintersect_arg2_1 _lh_sphereintersect_arg3_1 =
  (match _lh_sphereintersect_arg3_1 with
    | `Sphere(_lh_sphereintersect_Sphere_0_1, _lh_sphereintersect_Sphere_1_1, _lh_sphereintersect_Sphere_2_1) -> 
      (let rec m_1 = ((vecsub__d6 _lh_sphereintersect_arg1_1) _lh_sphereintersect_Sphere_0_1) in
        (let rec bm_1 = ((vecdot__d8 m_1) _lh_sphereintersect_arg2_1) in
          (let rec m2_1 = ((vecdot__d9 m_1) m_1) in
            (let rec disc_3 = (((bm_1 *. bm_1) -. m2_1) +. (_lh_sphereintersect_Sphere_1_1 *. _lh_sphereintersect_Sphere_1_1)) in
              (let rec slo_1 = ((0.0 -. bm_1) -. (sqrt disc_3)) in
                (let rec shi_1 = ((0.0 -. bm_1) +. (sqrt disc_3)) in
                  (if (disc_3 < 0.0) then
                    (`LH_P2(false, 0.0))
                  else
                    (if (slo_1 < 0.0) then
                      (if (shi_1 < 0.0) then
                        (`LH_P2(false, 0.0))
                      else
                        (`LH_P2(true, shi_1)))
                    else
                      (`LH_P2(true, slo_1))))))))))
    | _ -> 
      (failwith "error"))
and sphereintersect__d3 _lh_sphereintersect_arg1_3 _lh_sphereintersect_arg2_3 _lh_sphereintersect_arg3_3 =
  (match _lh_sphereintersect_arg3_3 with
    | `Sphere(_lh_sphereintersect_Sphere_0_3, _lh_sphereintersect_Sphere_1_3, _lh_sphereintersect_Sphere_2_3) -> 
      (let rec m_3 = ((vecsub__d7 _lh_sphereintersect_arg1_3) _lh_sphereintersect_Sphere_0_3) in
        (let rec bm_3 = ((vecdot__d1_d1 m_3) _lh_sphereintersect_arg2_3) in
          (let rec m2_3 = ((vecdot__d1_d2 m_3) m_3) in
            (let rec disc_5 = (((bm_3 *. bm_3) -. m2_3) +. (_lh_sphereintersect_Sphere_1_3 *. _lh_sphereintersect_Sphere_1_3)) in
              (let rec slo_3 = ((0.0 -. bm_3) -. (sqrt disc_5)) in
                (let rec shi_3 = ((0.0 -. bm_3) +. (sqrt disc_5)) in
                  (if (disc_5 < 0.0) then
                    (`LH_P2(false, 0.0))
                  else
                    (if (slo_3 < 0.0) then
                      (if (shi_3 < 0.0) then
                        (`LH_P2(false, 0.0))
                      else
                        (`LH_P2(true, shi_3)))
                    else
                      (`LH_P2(true, slo_3))))))))))
    | _ -> 
      (failwith "error"))
and spherenormal__d0 _lh_spherenormal_arg1_1 _lh_spherenormal_arg2_1 =
  (match _lh_spherenormal_arg2_1 with
    | `Sphere(_lh_spherenormal_Sphere_0_1, _lh_spherenormal_Sphere_1_1, _lh_spherenormal_Sphere_2_1) -> 
      ((vecscale__d1_d0 ((vecsub__d5 _lh_spherenormal_arg1_1) _lh_spherenormal_Sphere_0_1)) (1.0 /. _lh_spherenormal_Sphere_1_1))
    | _ -> 
      (failwith "error"))
and testSphere_nofib__d0 _lh_testSphere_nofib_arg1_1 =
  (run__d0 _lh_testSphere_nofib_arg1_1)
and testspheres__d0 _lh_testspheres_arg1_3 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d0 0))), (`LH_N)))))))))))))))))))))
and testspheres__d1 _lh_testspheres_arg1_2 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d1_d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d1_d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d1_d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d1_d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d1_d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d1_d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d1_d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d1_d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d1_d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d1_d0 0))), (`LH_N)))))))))))))))))))))
and testspheres__d2 _lh_testspheres_arg1_1 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d2_d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d2_d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d2_d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d2_d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d2_d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d2_d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d2_d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d2_d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d2_d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d2_d0 0))), (`LH_N)))))))))))))))))))))
and testspheres__d3 _lh_testspheres_arg1_4 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d3_d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d3_d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d3_d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d3_d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d3_d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d3_d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d3_d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d3_d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d3_d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d3_d0 0))), (`LH_N)))))))))))))))))))))
and trace__d0 _lh_trace_arg1_3 _lh_trace_arg2_3 _lh_trace_arg3_3 =
  (let rec f_1_8 = (fun d1s1_3 d2s2_3 -> 
    (let rec _lh_matchIdent_3_2 = d1s1_3 in
      (match _lh_matchIdent_3_2 with
        | `LH_P2(_lh_trace_LH_P2_0_1_2, _lh_trace_LH_P2_1_1_2) -> 
          (let rec _lh_matchIdent_3_3 = d2s2_3 in
            (match _lh_matchIdent_3_3 with
              | `LH_P2(_lh_trace_LH_P2_0_1_3, _lh_trace_LH_P2_1_1_3) -> 
                (if (_lh_trace_LH_P2_0_1_2 < _lh_trace_LH_P2_0_1_3) then
                  (`LH_P2(_lh_trace_LH_P2_0_1_2, _lh_trace_LH_P2_1_1_2))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_1_3, _lh_trace_LH_P2_1_1_3)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_3 = (fun xss_3 -> 
      (let rec _lh_matchIdent_3_4 = xss_3 in
        (match _lh_matchIdent_3_4 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_3, _lh_trace_LH_C_1_3) -> 
            (let rec _lh_matchIdent_3_5 = (((sphereintersect__d0 _lh_trace_arg2_3) _lh_trace_arg3_3) _lh_trace_LH_C_0_3) in
              (match _lh_matchIdent_3_5 with
                | `LH_P2(_lh_trace_LH_P2_0_1_4, _lh_trace_LH_P2_1_1_4) -> 
                  (if _lh_trace_LH_P2_0_1_4 then
                    (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_4, _lh_trace_LH_C_0_3)), (sphmap_3 _lh_trace_LH_C_1_3)))
                  else
                    (sphmap_3 _lh_trace_LH_C_1_3))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_3 = (sphmap_3 _lh_trace_arg1_3) in
        (if (null__d0 dists_3) then
          (`LH_P3(false, infinity__d1, (head__d4 _lh_trace_arg1_3)))
        else
          (let rec _lh_matchIdent_3_6 = (((foldr__d1 f_1_8) (head__d5 dists_3)) (tail__d0 dists_3)) in
            (match _lh_matchIdent_3_6 with
              | `LH_P2(_lh_trace_LH_P2_0_1_5, _lh_trace_LH_P2_1_1_5) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_1_5, _lh_trace_LH_P2_1_1_5))
              | _ -> 
                (failwith "error")))))))
and trace__d1 _lh_trace_arg1_1 _lh_trace_arg2_1 _lh_trace_arg3_1 =
  (let rec f_1_4 = (fun d1s1_1 d2s2_1 -> 
    (let rec _lh_matchIdent_2_0 = d1s1_1 in
      (match _lh_matchIdent_2_0 with
        | `LH_P2(_lh_trace_LH_P2_0_4, _lh_trace_LH_P2_1_4) -> 
          (let rec _lh_matchIdent_2_1 = d2s2_1 in
            (match _lh_matchIdent_2_1 with
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
      (let rec _lh_matchIdent_2_2 = xss_1 in
        (match _lh_matchIdent_2_2 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1, _lh_trace_LH_C_1_1) -> 
            (let rec _lh_matchIdent_2_3 = (((sphereintersect__d1 _lh_trace_arg2_1) _lh_trace_arg3_1) _lh_trace_LH_C_0_1) in
              (match _lh_matchIdent_2_3 with
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
        (if (null__d1 dists_1) then
          (`LH_P3(false, infinity__d2, (head__d8 _lh_trace_arg1_1)))
        else
          (let rec _lh_matchIdent_2_4 = (((foldr__d2 f_1_4) (head__d9 dists_1)) (tail__d1 dists_1)) in
            (match _lh_matchIdent_2_4 with
              | `LH_P2(_lh_trace_LH_P2_0_7, _lh_trace_LH_P2_1_7) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_7, _lh_trace_LH_P2_1_7))
              | _ -> 
                (failwith "error")))))))
and trace__d2 _lh_trace_arg1_2 _lh_trace_arg2_2 _lh_trace_arg3_2 =
  (let rec f_1_6 = (fun d1s1_2 d2s2_2 -> 
    (let rec _lh_matchIdent_2_6 = d1s1_2 in
      (match _lh_matchIdent_2_6 with
        | `LH_P2(_lh_trace_LH_P2_0_8, _lh_trace_LH_P2_1_8) -> 
          (let rec _lh_matchIdent_2_7 = d2s2_2 in
            (match _lh_matchIdent_2_7 with
              | `LH_P2(_lh_trace_LH_P2_0_9, _lh_trace_LH_P2_1_9) -> 
                (if (_lh_trace_LH_P2_0_8 < _lh_trace_LH_P2_0_9) then
                  (`LH_P2(_lh_trace_LH_P2_0_8, _lh_trace_LH_P2_1_8))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_9, _lh_trace_LH_P2_1_9)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_2 = (fun xss_2 -> 
      (let rec _lh_matchIdent_2_8 = xss_2 in
        (match _lh_matchIdent_2_8 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_2, _lh_trace_LH_C_1_2) -> 
            (let rec _lh_matchIdent_2_9 = (((sphereintersect__d2 _lh_trace_arg2_2) _lh_trace_arg3_2) _lh_trace_LH_C_0_2) in
              (match _lh_matchIdent_2_9 with
                | `LH_P2(_lh_trace_LH_P2_0_1_0, _lh_trace_LH_P2_1_1_0) -> 
                  (if _lh_trace_LH_P2_0_1_0 then
                    (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_0, _lh_trace_LH_C_0_2)), (sphmap_2 _lh_trace_LH_C_1_2)))
                  else
                    (sphmap_2 _lh_trace_LH_C_1_2))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_2 = (sphmap_2 _lh_trace_arg1_2) in
        (if (null__d2 dists_2) then
          (`LH_P3(false, infinity__d3, (head__d1_d3 _lh_trace_arg1_2)))
        else
          (let rec _lh_matchIdent_3_0 = (((foldr__d3 f_1_6) (head__d1_d4 dists_2)) (tail__d2 dists_2)) in
            (match _lh_matchIdent_3_0 with
              | `LH_P2(_lh_trace_LH_P2_0_1_1, _lh_trace_LH_P2_1_1_1) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_1_1, _lh_trace_LH_P2_1_1_1))
              | _ -> 
                (failwith "error")))))))
and trace__d3 _lh_trace_arg1_4 _lh_trace_arg2_4 _lh_trace_arg3_4 =
  (let rec f_2_2 = (fun d1s1_4 d2s2_4 -> 
    (let rec _lh_matchIdent_4_1 = d1s1_4 in
      (match _lh_matchIdent_4_1 with
        | `LH_P2(_lh_trace_LH_P2_0_1_6, _lh_trace_LH_P2_1_1_6) -> 
          (let rec _lh_matchIdent_4_2 = d2s2_4 in
            (match _lh_matchIdent_4_2 with
              | `LH_P2(_lh_trace_LH_P2_0_1_7, _lh_trace_LH_P2_1_1_7) -> 
                (if (_lh_trace_LH_P2_0_1_6 < _lh_trace_LH_P2_0_1_7) then
                  (`LH_P2(_lh_trace_LH_P2_0_1_6, _lh_trace_LH_P2_1_1_6))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_1_7, _lh_trace_LH_P2_1_1_7)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_4 = (fun xss_4 -> 
      (let rec _lh_matchIdent_4_3 = xss_4 in
        (match _lh_matchIdent_4_3 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_4, _lh_trace_LH_C_1_4) -> 
            (let rec _lh_matchIdent_4_4 = (((sphereintersect__d3 _lh_trace_arg2_4) _lh_trace_arg3_4) _lh_trace_LH_C_0_4) in
              (match _lh_matchIdent_4_4 with
                | `LH_P2(_lh_trace_LH_P2_0_1_8, _lh_trace_LH_P2_1_1_8) -> 
                  (if _lh_trace_LH_P2_0_1_8 then
                    (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_8, _lh_trace_LH_C_0_4)), (sphmap_4 _lh_trace_LH_C_1_4)))
                  else
                    (sphmap_4 _lh_trace_LH_C_1_4))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_4 = (sphmap_4 _lh_trace_arg1_4) in
        (if (null__d3 dists_4) then
          (`LH_P3(false, infinity__d4, (head__d1_d6 _lh_trace_arg1_4)))
        else
          (let rec _lh_matchIdent_4_5 = (((foldr__d5 f_2_2) (head__d1_d7 dists_4)) (tail__d3 dists_4)) in
            (match _lh_matchIdent_4_5 with
              | `LH_P2(_lh_trace_LH_P2_0_1_9, _lh_trace_LH_P2_1_1_9) -> 
                (`LH_P3(true, _lh_trace_LH_P2_0_1_9, _lh_trace_LH_P2_1_1_9))
              | _ -> 
                (failwith "error")))))))
and tracepixel__d0 _lh_tracepixel_arg1_1 _lh_tracepixel_arg2_1 _lh_tracepixel_arg3_1 _lh_tracepixel_arg4_1 _lh_tracepixel_arg5_1 _lh_tracepixel_arg6_1 _lh_tracepixel_arg7_1 =
  (let rec pos_1 = lookfrom__d1 in
    (let rec _lh_matchIdent_5_0 = (vecnorm__d5 ((vecadd__d1_d4 ((vecadd__d1_d5 _lh_tracepixel_arg5_1) ((vecscale__d1_d9 _lh_tracepixel_arg6_1) _lh_tracepixel_arg3_1))) ((vecscale__d2_d0 _lh_tracepixel_arg7_1) _lh_tracepixel_arg4_1))) in
      (match _lh_matchIdent_5_0 with
        | `LH_P2(_lh_tracepixel_LH_P2_0_1, _lh_tracepixel_LH_P2_1_1) -> 
          (let rec _lh_matchIdent_5_1 = (((trace__d3 _lh_tracepixel_arg1_1) pos_1) _lh_tracepixel_LH_P2_0_1) in
            (match _lh_matchIdent_5_1 with
              | `LH_P3(_lh_tracepixel_LH_P3_0_1, _lh_tracepixel_LH_P3_1_1, _lh_tracepixel_LH_P3_2_1) -> 
                (if _lh_tracepixel_LH_P3_0_1 then
                  ((((((shade__d0 _lh_tracepixel_arg2_1) _lh_tracepixel_LH_P3_2_1) pos_1) _lh_tracepixel_LH_P2_0_1) _lh_tracepixel_LH_P3_1_1) (`LH_P3(1.0, 1.0, 1.0)))
                else
                  background__d0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))))
and transmitray__d0 _lh_transmitray_arg1_1 _lh_transmitray_arg2_1 _lh_transmitray_arg3_1 _lh_transmitray_arg4_1 _lh_transmitray_arg5_1 _lh_transmitray_arg6_1 _lh_transmitray_arg7_1 _lh_transmitray_arg8_1 =
  (let rec newcontrib_2 = ((vecmult__d6 _lh_transmitray_arg6_1) _lh_transmitray_arg7_1) in
    (let rec _lh_matchIdent_4_6 = (((refractray__d0 _lh_transmitray_arg5_1) _lh_transmitray_arg4_1) _lh_transmitray_arg8_1) in
      (match _lh_matchIdent_4_6 with
        | `LH_P2(_lh_transmitray_LH_P2_0_1, _lh_transmitray_LH_P2_1_1) -> 
          (let rec nearpos_2 = ((vecadd__d7 _lh_transmitray_arg3_1) ((vecscale__d1_d4 _lh_transmitray_LH_P2_1_1) epsilon__d9)) in
            (let rec _lh_matchIdent_4_7 = (((trace__d2 (testspheres__d3 0)) nearpos_2) _lh_transmitray_LH_P2_1_1) in
              (match _lh_matchIdent_4_7 with
                | `LH_P3(_lh_transmitray_LH_P3_0_1, _lh_transmitray_LH_P3_1_1, _lh_transmitray_LH_P3_2_1) -> 
                  (let rec newcol_2 = (if _lh_transmitray_LH_P3_0_1 then
                    ((((((shade__d0 _lh_transmitray_arg1_1) _lh_transmitray_LH_P3_2_1) nearpos_2) _lh_transmitray_LH_P2_1_1) _lh_transmitray_LH_P3_1_1) newcontrib_2)
                  else
                    background__d2) in
                    (if (is_zerovector__d2 newcontrib_2) then
                      (`LH_P2(false, _lh_transmitray_arg2_1))
                    else
                      (`LH_P2(false, ((vecadd__d8 ((vecmult__d7 newcol_2) _lh_transmitray_arg6_1)) _lh_transmitray_arg2_1)))))
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))))
and transmitsurf__d0 _lh_transmitsurf_arg1_1 =
  (head__d1_d5 ((mappend__d9 (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_1_9 -> 
    (match _lh_listcomp_fun_para_1_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_9, _lh_listcomp_fun_ls_t_1_9) -> 
        (match _lh_listcomp_fun_ls_h_1_9 with
          | `Transmit(_lh_transmitsurf_Transmit_0_1) -> 
            (`LH_C(_lh_transmitsurf_Transmit_0_1, (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9)))
          | _ -> 
            (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_9))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1_9 _lh_transmitsurf_arg1_1))) (`LH_C(0.0, (`LH_N)))))
and vecsum__d0 _lh_vecsum_arg1_1 =
  (((foldr__d4 vecadd__d1_d3) (`LH_P3(0.0, 0.0, 0.0))) _lh_vecsum_arg1_1);;
end;;

