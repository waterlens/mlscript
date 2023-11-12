

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec background__d0 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec background__d1 =
  (`LH_P3(0.078, 0.361, 0.753));;
let rec background__d2 =
  (`LH_P3(0.078, 0.361, 0.753));;
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
let rec foldr__d0 f_1 i_1 ls_3 =
  ((ls_3 f_1) i_1);;
let rec foldr__d1 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_0 h_1) (((foldr__d1 f_0) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec foldr__d2 f_2_8 i_1_2 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_3, t_4_5) -> 
      ((f_2_8 h_4_3) (((foldr__d2 f_2_8) i_1_2) t_4_5))
    | `LH_N -> 
      i_1_2);;
let rec foldr__d3 f_1_8 i_1_0 ls_1_8 =
  (match ls_1_8 with
    | `LH_C(h_2_8, t_2_8) -> 
      ((f_1_8 h_2_8) (((foldr__d3 f_1_8) i_1_0) t_2_8))
    | `LH_N -> 
      i_1_0);;
let rec foldr__d4 f_1_6 i_8 ls_1_1 =
  ((ls_1_1 f_1_6) i_8);;
let rec foldr__d5 f_1_7 i_9 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_2_5, t_2_5) -> 
      ((f_1_7 h_2_5) (((foldr__d5 f_1_7) i_9) t_2_5))
    | `LH_N -> 
      i_9);;
let rec fov__d0 =
  45.0;;
let rec fst__d0 _lh_fst_arg1_0 =
  _lh_fst_arg1_0;;
let rec head__d0 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_2_1, t_2_1) -> 
      h_2_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_1_5, t_1_5) -> 
      h_1_5
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      h_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d1 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_4, t_1_4) -> 
      h_1_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d2 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_2_4, t_2_4) -> 
      h_2_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d3 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_8, t_4_0) -> 
      h_3_8
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d4 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d5 ls_7 =
  (match ls_7 with
    | `LH_C(h_7, t_7) -> 
      h_7
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d6 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_3_3, t_3_5) -> 
      h_3_3
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1_d7 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_4_0, t_4_2) -> 
      h_4_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d2 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_2_6, t_2_6) -> 
      h_2_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_4_2, t_4_4) -> 
      h_4_2
    | `LH_N -> 
      (failwith "error"));;
let rec head__d4 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_3_1, t_3_3) -> 
      h_3_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d5 ls_6 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d6 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_3_6, t_3_8) -> 
      h_3_6
    | `LH_N -> 
      (failwith "error"));;
let rec head__d7 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_9, t_1_9) -> 
      h_1_9
    | `LH_N -> 
      (failwith "error"));;
let rec head__d8 ls_5 =
  (match ls_5 with
    | `LH_C(h_4, t_4) -> 
      h_4
    | `LH_N -> 
      (failwith "error"));;
let rec head__d9 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_7, t_3_9) -> 
      h_3_7
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
let rec lightcolour__d0 _lh_lightcolour_arg1_0 =
  (match _lh_lightcolour_arg1_0 with
    | `Directional(_lh_lightcolour_Directional_0_0, _lh_lightcolour_Directional_1_0) -> 
      _lh_lightcolour_Directional_1_0
    | `Point(_lh_lightcolour_Point_0_0, _lh_lightcolour_Point_1_0) -> 
      _lh_lightcolour_Point_1_0
    | _ -> 
      (failwith "error"));;
let rec lookat__d0 _lh_lookat_arg1_0 =
  (let rec _lh_vecsub_LH_P3_2_4 = 0.0 in
    (let rec _lh_vecsub_LH_P3_1_4 = 0.0 in
      (let rec _lh_vecsub_LH_P3_0_4 = 0.0 in
        (fun _lh_vecsub_arg2_3 -> 
          (((_lh_vecsub_arg2_3 _lh_vecsub_LH_P3_0_4) _lh_vecsub_LH_P3_1_4) _lh_vecsub_LH_P3_2_4)))));;
let rec lookfrom__d0 =
  (let rec _lh_vecsub_LH_P3_2_5 = 1.7 in
    (let rec _lh_vecsub_LH_P3_1_5 = 1.3 in
      (let rec _lh_vecsub_LH_P3_0_5 = 2.1 in
        (fun _lh_vecsub_LH_P3_0_6 _lh_vecsub_LH_P3_1_6 _lh_vecsub_LH_P3_2_6 -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_6 -. _lh_vecsub_LH_P3_0_5), (_lh_vecsub_LH_P3_1_6 -. _lh_vecsub_LH_P3_1_5), (_lh_vecsub_LH_P3_2_6 -. _lh_vecsub_LH_P3_2_5)))))));;
let rec lookfrom__d1 =
  (`LH_P3(2.1, 1.3, 1.7));;
let rec map__d0 f_2 ls_4 =
  (ls_4 f_2);;
let rec map__d1 f_2_7 ls_2_8 =
  (ls_2_8 f_2_7);;
let rec mappend__d0 xs_3 ys_7 =
  (xs_3 ys_7);;
let rec mappend__d1 xs_4 ys_1_6 =
  (xs_4 ys_1_6);;
let rec mappend__d2 xs_6 ys_2_0 =
  (xs_6 ys_2_0);;
let rec mappend__d3 xs_7 ys_2_3 =
  (xs_7 ys_2_3);;
let rec mappend__d4 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec mappend__d5 xs_1 ys_3 =
  (xs_1 ys_3);;
let rec mappend__d6 xs_8 ys_2_6 =
  (xs_8 ys_2_6);;
let rec mappend__d7 xs_2 ys_6 =
  (xs_2 ys_6);;
let rec mappend__d8 xs_9 ys_2_9 =
  (xs_9 ys_2_9);;
let rec mappend__d9 xs_5 ys_1_7 =
  (xs_5 ys_1_7);;
let rec null__d0 _lh_null_arg1_3 =
  (match _lh_null_arg1_3 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_3, _lh_null_LH_C_1_3) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d1 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d2 _lh_null_arg1_2 =
  (match _lh_null_arg1_2 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_2, _lh_null_LH_C_1_2) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec null__d3 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec pi__d0 =
  3.141592653589793;;
let rec pi__d1 =
  3.141592653589793;;
let rec s2__d0 _lh_s2_arg1_1_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1 _lh_s2_arg1_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d0 _lh_s2_arg1_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d1 _lh_s2_arg1_3_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d2 _lh_s2_arg1_2_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d3 _lh_s2_arg1_1_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d4 _lh_s2_arg1_2_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d5 _lh_s2_arg1_3_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d6 _lh_s2_arg1_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d7 _lh_s2_arg1_2_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d8 _lh_s2_arg1_2_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d1_d9 _lh_s2_arg1_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2 _lh_s2_arg1_2_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d0 _lh_s2_arg1_1_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d1 _lh_s2_arg1_3_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d2 _lh_s2_arg1_1_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d3 _lh_s2_arg1_1_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d4 _lh_s2_arg1_3_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d5 _lh_s2_arg1_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d6 _lh_s2_arg1_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d7 _lh_s2_arg1_3_4 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d8 _lh_s2_arg1_2_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d2_d9 _lh_s2_arg1_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3 _lh_s2_arg1_2_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d0 _lh_s2_arg1_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d1 _lh_s2_arg1_2_7 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d2 _lh_s2_arg1_3_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d3 _lh_s2_arg1_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d4 _lh_s2_arg1_2_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d5 _lh_s2_arg1_2_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d6 _lh_s2_arg1_3_2 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d7 _lh_s2_arg1_3_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d8 _lh_s2_arg1_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d3_d9 _lh_s2_arg1_3_6 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d4 _lh_s2_arg1_1_9 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d5 _lh_s2_arg1_1_1 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d6 _lh_s2_arg1_1_5 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d7 _lh_s2_arg1_1_3 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d8 _lh_s2_arg1_1_0 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec s2__d9 _lh_s2_arg1_3_8 =
  (`LH_C((`Ambient((`LH_P3(0.035, 0.0325, 0.025)))), (`LH_C((`Diffuse((`LH_P3(0.5, 0.45, 0.35)))), (`LH_C((`Specular((`LH_P3(0.8, 0.8, 0.8)))), (`LH_C((`Specpow(3.0)), (`LH_C((`Reflect(0.5)), (`LH_N)))))))))));;
let rec snd__d0 _lh_snd_arg1_0 =
  _lh_snd_arg1_0;;
let rec spheresurf__d0 _lh_spheresurf_arg1_0 =
  (match _lh_spheresurf_arg1_0 with
    | `Sphere(_lh_spheresurf_Sphere_0_0, _lh_spheresurf_Sphere_1_0, _lh_spheresurf_Sphere_2_0) -> 
      _lh_spheresurf_Sphere_2_0
    | _ -> 
      (failwith "error"));;
let rec tail__d0 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_2_7, t_2_7) -> 
      t_2_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_9, t_4_1) -> 
      t_4_1
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d2 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_6, t_1_6) -> 
      t_1_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d3 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_3_0, t_3_2) -> 
      t_3_2
    | `LH_N -> 
      (failwith "error"));;
let rec vecadd__d0 _lh_vecadd_arg1_0 _lh_vecadd_arg2_2 =
  (_lh_vecadd_arg1_0 _lh_vecadd_arg2_2);;
let rec vecadd__d1 _lh_vecadd_arg1_1_3 _lh_vecadd_arg2_3_4 =
  (match _lh_vecadd_arg1_1_3 with
    | `LH_P3(_lh_vecadd_LH_P3_0_7_8, _lh_vecadd_LH_P3_1_7_8, _lh_vecadd_LH_P3_2_7_8) -> 
      (((_lh_vecadd_arg2_3_4 _lh_vecadd_LH_P3_0_7_8) _lh_vecadd_LH_P3_1_7_8) _lh_vecadd_LH_P3_2_7_8)
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d0 _lh_vecadd_arg1_5 _lh_vecadd_arg2_1_0 =
  (match _lh_vecadd_arg1_5 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_2, _lh_vecadd_LH_P3_1_2_2, _lh_vecadd_LH_P3_2_2_2) -> 
      (((_lh_vecadd_arg2_1_0 _lh_vecadd_LH_P3_0_2_2) _lh_vecadd_LH_P3_1_2_2) _lh_vecadd_LH_P3_2_2_2)
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d1 _lh_vecadd_arg1_1_5 _lh_vecadd_arg2_3_7 =
  (_lh_vecadd_arg1_1_5 _lh_vecadd_arg2_3_7);;
let rec vecadd__d1_d2 _lh_vecadd_arg1_1_1 _lh_vecadd_arg2_3_1 =
  (match _lh_vecadd_arg1_1_1 with
    | `LH_P3(_lh_vecadd_LH_P3_0_7_5, _lh_vecadd_LH_P3_1_7_5, _lh_vecadd_LH_P3_2_7_5) -> 
      (match _lh_vecadd_arg2_3_1 with
        | `LH_P3(_lh_vecadd_LH_P3_0_7_6, _lh_vecadd_LH_P3_1_7_6, _lh_vecadd_LH_P3_2_7_6) -> 
          (`LH_P3((_lh_vecadd_LH_P3_0_7_5 +. _lh_vecadd_LH_P3_0_7_6), (_lh_vecadd_LH_P3_1_7_5 +. _lh_vecadd_LH_P3_1_7_6), (_lh_vecadd_LH_P3_2_7_5 +. _lh_vecadd_LH_P3_2_7_6)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecadd__d1_d3 _lh_vecadd_arg1_6 _lh_vecadd_arg2_1_1 =
  (_lh_vecadd_arg1_6 _lh_vecadd_arg2_1_1);;
let rec vecadd__d1_d4 _lh_vecadd_arg1_2 _lh_vecadd_arg2_7 =
  (_lh_vecadd_arg1_2 _lh_vecadd_arg2_7);;
let rec vecadd__d1_d5 _lh_vecadd_arg1_7 _lh_vecadd_arg2_1_2 =
  (_lh_vecadd_arg1_7 _lh_vecadd_arg2_1_2);;
let rec vecadd__d2 _lh_vecadd_arg1_4 _lh_vecadd_arg2_9 =
  (_lh_vecadd_arg1_4 _lh_vecadd_arg2_9);;
let rec vecadd__d3 _lh_vecadd_arg1_1_2 _lh_vecadd_arg2_3_2 =
  (_lh_vecadd_arg1_1_2 _lh_vecadd_arg2_3_2);;
let rec vecadd__d4 _lh_vecadd_arg1_1 _lh_vecadd_arg2_3 =
  (match _lh_vecadd_arg1_1 with
    | `LH_P3(_lh_vecadd_LH_P3_0_9, _lh_vecadd_LH_P3_1_9, _lh_vecadd_LH_P3_2_9) -> 
      (((_lh_vecadd_arg2_3 _lh_vecadd_LH_P3_0_9) _lh_vecadd_LH_P3_1_9) _lh_vecadd_LH_P3_2_9)
    | _ -> 
      (failwith "error"));;
let rec vecadd__d5 _lh_vecadd_arg1_8 _lh_vecadd_arg2_1_4 =
  (match _lh_vecadd_arg1_8 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_8, _lh_vecadd_LH_P3_1_2_8, _lh_vecadd_LH_P3_2_2_8) -> 
      (((_lh_vecadd_arg2_1_4 _lh_vecadd_LH_P3_0_2_8) _lh_vecadd_LH_P3_1_2_8) _lh_vecadd_LH_P3_2_2_8)
    | _ -> 
      (failwith "error"));;
let rec vecadd__d6 _lh_vecadd_arg1_1_0 _lh_vecadd_arg2_1_8 =
  (_lh_vecadd_arg1_1_0 _lh_vecadd_arg2_1_8);;
let rec vecadd__d7 _lh_vecadd_arg1_3 _lh_vecadd_arg2_8 =
  (match _lh_vecadd_arg1_3 with
    | `LH_P3(_lh_vecadd_LH_P3_0_2_1, _lh_vecadd_LH_P3_1_2_1, _lh_vecadd_LH_P3_2_2_1) -> 
      (((_lh_vecadd_arg2_8 _lh_vecadd_LH_P3_0_2_1) _lh_vecadd_LH_P3_1_2_1) _lh_vecadd_LH_P3_2_2_1)
    | _ -> 
      (failwith "error"));;
let rec vecadd__d8 _lh_vecadd_arg1_9 _lh_vecadd_arg2_1_5 =
  (_lh_vecadd_arg1_9 _lh_vecadd_arg2_1_5);;
let rec vecadd__d9 _lh_vecadd_arg1_1_4 _lh_vecadd_arg2_3_5 =
  (match _lh_vecadd_arg1_1_4 with
    | `LH_P3(_lh_vecadd_LH_P3_0_8_1, _lh_vecadd_LH_P3_1_8_1, _lh_vecadd_LH_P3_2_8_1) -> 
      (((_lh_vecadd_arg2_3_5 _lh_vecadd_LH_P3_0_8_1) _lh_vecadd_LH_P3_1_8_1) _lh_vecadd_LH_P3_2_8_1)
    | _ -> 
      (failwith "error"));;
let rec veccross__d0 _lh_veccross_arg1_0 _lh_veccross_arg2_0 =
  (match _lh_veccross_arg1_0 with
    | `LH_P3(_lh_veccross_LH_P3_0_0, _lh_veccross_LH_P3_1_0, _lh_veccross_LH_P3_2_0) -> 
      (((_lh_veccross_arg2_0 _lh_veccross_LH_P3_0_0) _lh_veccross_LH_P3_1_0) _lh_veccross_LH_P3_2_0)
    | _ -> 
      (failwith "error"));;
let rec vecdot__d0 _lh_vecdot_arg1_9 _lh_vecdot_arg2_9 =
  (match _lh_vecdot_arg1_9 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_8, _lh_vecdot_LH_P3_1_1_8, _lh_vecdot_LH_P3_2_1_8) -> 
      (match _lh_vecdot_arg2_9 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_9, _lh_vecdot_LH_P3_1_1_9, _lh_vecdot_LH_P3_2_1_9) -> 
          (((_lh_vecdot_LH_P3_0_1_8 *. _lh_vecdot_LH_P3_0_1_9) +. (_lh_vecdot_LH_P3_1_1_8 *. _lh_vecdot_LH_P3_1_1_9)) +. (_lh_vecdot_LH_P3_2_1_8 *. _lh_vecdot_LH_P3_2_1_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1 _lh_vecdot_arg1_1_0 _lh_vecdot_arg2_1_0 =
  (match _lh_vecdot_arg1_1_0 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_0, _lh_vecdot_LH_P3_1_2_0, _lh_vecdot_LH_P3_2_2_0) -> 
      (match _lh_vecdot_arg2_1_0 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_1, _lh_vecdot_LH_P3_1_2_1, _lh_vecdot_LH_P3_2_2_1) -> 
          (((_lh_vecdot_LH_P3_0_2_0 *. _lh_vecdot_LH_P3_0_2_1) +. (_lh_vecdot_LH_P3_1_2_0 *. _lh_vecdot_LH_P3_1_2_1)) +. (_lh_vecdot_LH_P3_2_2_0 *. _lh_vecdot_LH_P3_2_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1_d0 _lh_vecdot_arg1_1 _lh_vecdot_arg2_1 =
  (match _lh_vecdot_arg1_1 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2, _lh_vecdot_LH_P3_1_2, _lh_vecdot_LH_P3_2_2) -> 
      (match _lh_vecdot_arg2_1 with
        | `LH_P3(_lh_vecdot_LH_P3_0_3, _lh_vecdot_LH_P3_1_3, _lh_vecdot_LH_P3_2_3) -> 
          (((_lh_vecdot_LH_P3_0_2 *. _lh_vecdot_LH_P3_0_3) +. (_lh_vecdot_LH_P3_1_2 *. _lh_vecdot_LH_P3_1_3)) +. (_lh_vecdot_LH_P3_2_2 *. _lh_vecdot_LH_P3_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1_d1 _lh_vecdot_arg1_1_1 _lh_vecdot_arg2_1_1 =
  (match _lh_vecdot_arg1_1_1 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_2, _lh_vecdot_LH_P3_1_2_2, _lh_vecdot_LH_P3_2_2_2) -> 
      (match _lh_vecdot_arg2_1_1 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_3, _lh_vecdot_LH_P3_1_2_3, _lh_vecdot_LH_P3_2_2_3) -> 
          (((_lh_vecdot_LH_P3_0_2_2 *. _lh_vecdot_LH_P3_0_2_3) +. (_lh_vecdot_LH_P3_1_2_2 *. _lh_vecdot_LH_P3_1_2_3)) +. (_lh_vecdot_LH_P3_2_2_2 *. _lh_vecdot_LH_P3_2_2_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d1_d2 _lh_vecdot_arg1_0 _lh_vecdot_arg2_0 =
  (match _lh_vecdot_arg1_0 with
    | `LH_P3(_lh_vecdot_LH_P3_0_0, _lh_vecdot_LH_P3_1_0, _lh_vecdot_LH_P3_2_0) -> 
      (match _lh_vecdot_arg2_0 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1, _lh_vecdot_LH_P3_1_1, _lh_vecdot_LH_P3_2_1) -> 
          (((_lh_vecdot_LH_P3_0_0 *. _lh_vecdot_LH_P3_0_1) +. (_lh_vecdot_LH_P3_1_0 *. _lh_vecdot_LH_P3_1_1)) +. (_lh_vecdot_LH_P3_2_0 *. _lh_vecdot_LH_P3_2_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d2 _lh_vecdot_arg1_3 _lh_vecdot_arg2_3 =
  (match _lh_vecdot_arg1_3 with
    | `LH_P3(_lh_vecdot_LH_P3_0_6, _lh_vecdot_LH_P3_1_6, _lh_vecdot_LH_P3_2_6) -> 
      (match _lh_vecdot_arg2_3 with
        | `LH_P3(_lh_vecdot_LH_P3_0_7, _lh_vecdot_LH_P3_1_7, _lh_vecdot_LH_P3_2_7) -> 
          (((_lh_vecdot_LH_P3_0_6 *. _lh_vecdot_LH_P3_0_7) +. (_lh_vecdot_LH_P3_1_6 *. _lh_vecdot_LH_P3_1_7)) +. (_lh_vecdot_LH_P3_2_6 *. _lh_vecdot_LH_P3_2_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d3 _lh_vecdot_arg1_1_2 _lh_vecdot_arg2_1_2 =
  (match _lh_vecdot_arg1_1_2 with
    | `LH_P3(_lh_vecdot_LH_P3_0_2_4, _lh_vecdot_LH_P3_1_2_4, _lh_vecdot_LH_P3_2_2_4) -> 
      (match _lh_vecdot_arg2_1_2 with
        | `LH_P3(_lh_vecdot_LH_P3_0_2_5, _lh_vecdot_LH_P3_1_2_5, _lh_vecdot_LH_P3_2_2_5) -> 
          (((_lh_vecdot_LH_P3_0_2_4 *. _lh_vecdot_LH_P3_0_2_5) +. (_lh_vecdot_LH_P3_1_2_4 *. _lh_vecdot_LH_P3_1_2_5)) +. (_lh_vecdot_LH_P3_2_2_4 *. _lh_vecdot_LH_P3_2_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d4 _lh_vecdot_arg1_2 _lh_vecdot_arg2_2 =
  (match _lh_vecdot_arg1_2 with
    | `LH_P3(_lh_vecdot_LH_P3_0_4, _lh_vecdot_LH_P3_1_4, _lh_vecdot_LH_P3_2_4) -> 
      (match _lh_vecdot_arg2_2 with
        | `LH_P3(_lh_vecdot_LH_P3_0_5, _lh_vecdot_LH_P3_1_5, _lh_vecdot_LH_P3_2_5) -> 
          (((_lh_vecdot_LH_P3_0_4 *. _lh_vecdot_LH_P3_0_5) +. (_lh_vecdot_LH_P3_1_4 *. _lh_vecdot_LH_P3_1_5)) +. (_lh_vecdot_LH_P3_2_4 *. _lh_vecdot_LH_P3_2_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d5 _lh_vecdot_arg1_7 _lh_vecdot_arg2_7 =
  (match _lh_vecdot_arg1_7 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_4, _lh_vecdot_LH_P3_1_1_4, _lh_vecdot_LH_P3_2_1_4) -> 
      (match _lh_vecdot_arg2_7 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_5, _lh_vecdot_LH_P3_1_1_5, _lh_vecdot_LH_P3_2_1_5) -> 
          (((_lh_vecdot_LH_P3_0_1_4 *. _lh_vecdot_LH_P3_0_1_5) +. (_lh_vecdot_LH_P3_1_1_4 *. _lh_vecdot_LH_P3_1_1_5)) +. (_lh_vecdot_LH_P3_2_1_4 *. _lh_vecdot_LH_P3_2_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d6 _lh_vecdot_arg1_8 _lh_vecdot_arg2_8 =
  (match _lh_vecdot_arg1_8 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_6, _lh_vecdot_LH_P3_1_1_6, _lh_vecdot_LH_P3_2_1_6) -> 
      (match _lh_vecdot_arg2_8 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_7, _lh_vecdot_LH_P3_1_1_7, _lh_vecdot_LH_P3_2_1_7) -> 
          (((_lh_vecdot_LH_P3_0_1_6 *. _lh_vecdot_LH_P3_0_1_7) +. (_lh_vecdot_LH_P3_1_1_6 *. _lh_vecdot_LH_P3_1_1_7)) +. (_lh_vecdot_LH_P3_2_1_6 *. _lh_vecdot_LH_P3_2_1_7))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d7 _lh_vecdot_arg1_6 _lh_vecdot_arg2_6 =
  (match _lh_vecdot_arg1_6 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_2, _lh_vecdot_LH_P3_1_1_2, _lh_vecdot_LH_P3_2_1_2) -> 
      (match _lh_vecdot_arg2_6 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_3, _lh_vecdot_LH_P3_1_1_3, _lh_vecdot_LH_P3_2_1_3) -> 
          (((_lh_vecdot_LH_P3_0_1_2 *. _lh_vecdot_LH_P3_0_1_3) +. (_lh_vecdot_LH_P3_1_1_2 *. _lh_vecdot_LH_P3_1_1_3)) +. (_lh_vecdot_LH_P3_2_1_2 *. _lh_vecdot_LH_P3_2_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d8 _lh_vecdot_arg1_4 _lh_vecdot_arg2_4 =
  (match _lh_vecdot_arg1_4 with
    | `LH_P3(_lh_vecdot_LH_P3_0_8, _lh_vecdot_LH_P3_1_8, _lh_vecdot_LH_P3_2_8) -> 
      (match _lh_vecdot_arg2_4 with
        | `LH_P3(_lh_vecdot_LH_P3_0_9, _lh_vecdot_LH_P3_1_9, _lh_vecdot_LH_P3_2_9) -> 
          (((_lh_vecdot_LH_P3_0_8 *. _lh_vecdot_LH_P3_0_9) +. (_lh_vecdot_LH_P3_1_8 *. _lh_vecdot_LH_P3_1_9)) +. (_lh_vecdot_LH_P3_2_8 *. _lh_vecdot_LH_P3_2_9))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecdot__d9 _lh_vecdot_arg1_5 _lh_vecdot_arg2_5 =
  (match _lh_vecdot_arg1_5 with
    | `LH_P3(_lh_vecdot_LH_P3_0_1_0, _lh_vecdot_LH_P3_1_1_0, _lh_vecdot_LH_P3_2_1_0) -> 
      (match _lh_vecdot_arg2_5 with
        | `LH_P3(_lh_vecdot_LH_P3_0_1_1, _lh_vecdot_LH_P3_1_1_1, _lh_vecdot_LH_P3_2_1_1) -> 
          (((_lh_vecdot_LH_P3_0_1_0 *. _lh_vecdot_LH_P3_0_1_1) +. (_lh_vecdot_LH_P3_1_1_0 *. _lh_vecdot_LH_P3_1_1_1)) +. (_lh_vecdot_LH_P3_2_1_0 *. _lh_vecdot_LH_P3_2_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d0 _lh_vecmult_arg1_8 _lh_vecmult_arg2_1_3 =
  (_lh_vecmult_arg1_8 _lh_vecmult_arg2_1_3);;
let rec vecmult__d1 _lh_vecmult_arg1_4 _lh_vecmult_arg2_8 =
  (_lh_vecmult_arg1_4 _lh_vecmult_arg2_8);;
let rec vecmult__d2 _lh_vecmult_arg1_5 _lh_vecmult_arg2_9 =
  (_lh_vecmult_arg1_5 _lh_vecmult_arg2_9);;
let rec vecmult__d3 _lh_vecmult_arg1_2 _lh_vecmult_arg2_6 =
  (_lh_vecmult_arg1_2 _lh_vecmult_arg2_6);;
let rec vecmult__d4 _lh_vecmult_arg1_0 _lh_vecmult_arg2_0 =
  (match _lh_vecmult_arg1_0 with
    | `LH_P3(_lh_vecmult_LH_P3_0_0, _lh_vecmult_LH_P3_1_0, _lh_vecmult_LH_P3_2_0) -> 
      (match _lh_vecmult_arg2_0 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1, _lh_vecmult_LH_P3_1_1, _lh_vecmult_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_0 *. _lh_vecmult_LH_P3_0_1), (_lh_vecmult_LH_P3_1_0 *. _lh_vecmult_LH_P3_1_1), (_lh_vecmult_LH_P3_2_0 *. _lh_vecmult_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d5 _lh_vecmult_arg1_1 _lh_vecmult_arg2_5 =
  (match _lh_vecmult_arg1_1 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_0, _lh_vecmult_LH_P3_1_1_0, _lh_vecmult_LH_P3_2_1_0) -> 
      (match _lh_vecmult_arg2_5 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_1, _lh_vecmult_LH_P3_1_1_1, _lh_vecmult_LH_P3_2_1_1) -> 
          (let rec _lh_vecadd_LH_P3_2_2_3 = (_lh_vecmult_LH_P3_2_1_0 *. _lh_vecmult_LH_P3_2_1_1) in
            (let rec _lh_vecadd_LH_P3_1_2_3 = (_lh_vecmult_LH_P3_1_1_0 *. _lh_vecmult_LH_P3_1_1_1) in
              (let rec _lh_vecadd_LH_P3_0_2_3 = (_lh_vecmult_LH_P3_0_1_0 *. _lh_vecmult_LH_P3_0_1_1) in
                (fun _lh_vecadd_LH_P3_0_2_4 _lh_vecadd_LH_P3_1_2_4 _lh_vecadd_LH_P3_2_2_4 -> 
                  (`LH_P3((_lh_vecadd_LH_P3_0_2_4 +. _lh_vecadd_LH_P3_0_2_3), (_lh_vecadd_LH_P3_1_2_4 +. _lh_vecadd_LH_P3_1_2_3), (_lh_vecadd_LH_P3_2_2_4 +. _lh_vecadd_LH_P3_2_2_3)))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d6 _lh_vecmult_arg1_6 _lh_vecmult_arg2_1_0 =
  (match _lh_vecmult_arg1_6 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_2, _lh_vecmult_LH_P3_1_1_2, _lh_vecmult_LH_P3_2_1_2) -> 
      (match _lh_vecmult_arg2_1_0 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_3, _lh_vecmult_LH_P3_1_1_3, _lh_vecmult_LH_P3_2_1_3) -> 
          (`LH_P3((_lh_vecmult_LH_P3_0_1_2 *. _lh_vecmult_LH_P3_0_1_3), (_lh_vecmult_LH_P3_1_1_2 *. _lh_vecmult_LH_P3_1_1_3), (_lh_vecmult_LH_P3_2_1_2 *. _lh_vecmult_LH_P3_2_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d7 _lh_vecmult_arg1_7 _lh_vecmult_arg2_1_2 =
  (match _lh_vecmult_arg1_7 with
    | `LH_P3(_lh_vecmult_LH_P3_0_1_6, _lh_vecmult_LH_P3_1_1_6, _lh_vecmult_LH_P3_2_1_6) -> 
      (match _lh_vecmult_arg2_1_2 with
        | `LH_P3(_lh_vecmult_LH_P3_0_1_7, _lh_vecmult_LH_P3_1_1_7, _lh_vecmult_LH_P3_2_1_7) -> 
          (let rec _lh_vecadd_LH_P3_2_8_2 = (_lh_vecmult_LH_P3_2_1_6 *. _lh_vecmult_LH_P3_2_1_7) in
            (let rec _lh_vecadd_LH_P3_1_8_2 = (_lh_vecmult_LH_P3_1_1_6 *. _lh_vecmult_LH_P3_1_1_7) in
              (let rec _lh_vecadd_LH_P3_0_8_2 = (_lh_vecmult_LH_P3_0_1_6 *. _lh_vecmult_LH_P3_0_1_7) in
                (fun _lh_vecadd_arg2_3_6 -> 
                  (match _lh_vecadd_arg2_3_6 with
                    | `LH_P3(_lh_vecadd_LH_P3_0_8_3, _lh_vecadd_LH_P3_1_8_3, _lh_vecadd_LH_P3_2_8_3) -> 
                      (`LH_P3((_lh_vecadd_LH_P3_0_8_2 +. _lh_vecadd_LH_P3_0_8_3), (_lh_vecadd_LH_P3_1_8_2 +. _lh_vecadd_LH_P3_1_8_3), (_lh_vecadd_LH_P3_2_8_2 +. _lh_vecadd_LH_P3_2_8_3)))
                    | _ -> 
                      (failwith "error"))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecmult__d8 _lh_vecmult_arg1_3 _lh_vecmult_arg2_7 =
  (_lh_vecmult_arg1_3 _lh_vecmult_arg2_7);;
let rec vecnorm__d1 _lh_vecnorm_arg1_3 =
  (_lh_vecnorm_arg1_3 99);;
let rec vecnorm__d2 _lh_vecnorm_arg1_0 =
  (_lh_vecnorm_arg1_0 99);;
let rec vecnorm__d3 _lh_vecnorm_arg1_1 =
  (match _lh_vecnorm_arg1_1 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_1, _lh_vecnorm_LH_P3_1_1, _lh_vecnorm_LH_P3_2_1) -> 
      (let rec len_1 = (sqrt (((_lh_vecnorm_LH_P3_0_1 *. _lh_vecnorm_LH_P3_0_1) +. (_lh_vecnorm_LH_P3_1_1 *. _lh_vecnorm_LH_P3_1_1)) +. (_lh_vecnorm_LH_P3_2_1 *. _lh_vecnorm_LH_P3_2_1))) in
        (let rec _lh_fst_LH_P2_0_0 = (`LH_P3((_lh_vecnorm_LH_P3_0_1 /. len_1), (_lh_vecnorm_LH_P3_1_1 /. len_1), (_lh_vecnorm_LH_P3_2_1 /. len_1))) in
          _lh_fst_LH_P2_0_0))
    | _ -> 
      (failwith "error"));;
let rec vecnorm__d4 _lh_vecnorm_arg1_2 =
  (_lh_vecnorm_arg1_2 99);;
let rec vecnorm__d5 _lh_vecnorm_arg1_5 =
  (_lh_vecnorm_arg1_5 99);;
let rec vecscale__d0 _lh_vecscale_arg1_8 _lh_vecscale_arg2_9 =
  (match _lh_vecscale_arg1_8 with
    | `LH_P3(_lh_vecscale_LH_P3_0_9, _lh_vecscale_LH_P3_1_9, _lh_vecscale_LH_P3_2_9) -> 
      (`LH_P3((_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_0_9), (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_1_9), (_lh_vecscale_arg2_9 *. _lh_vecscale_LH_P3_2_9)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1 _lh_vecscale_arg1_1_8 _lh_vecscale_arg2_1_9 =
  (_lh_vecscale_arg1_1_8 _lh_vecscale_arg2_1_9);;
let rec vecscale__d1_d0 _lh_vecscale_arg1_9 _lh_vecscale_arg2_1_0 =
  (_lh_vecscale_arg1_9 _lh_vecscale_arg2_1_0);;
let rec vecscale__d1_d1 _lh_vecscale_arg1_7 _lh_vecscale_arg2_8 =
  (match _lh_vecscale_arg1_7 with
    | `LH_P3(_lh_vecscale_LH_P3_0_8, _lh_vecscale_LH_P3_1_8, _lh_vecscale_LH_P3_2_8) -> 
      (`LH_P3((_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_0_8), (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_1_8), (_lh_vecscale_arg2_8 *. _lh_vecscale_LH_P3_2_8)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d2 _lh_vecscale_arg1_1_1 _lh_vecscale_arg2_1_2 =
  (match _lh_vecscale_arg1_1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_1, _lh_vecscale_LH_P3_1_1_1, _lh_vecscale_LH_P3_2_1_1) -> 
      (let rec _lh_vecadd_LH_P3_2_2_5 = (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_2_1_1) in
        (let rec _lh_vecadd_LH_P3_1_2_5 = (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_1_1_1) in
          (let rec _lh_vecadd_LH_P3_0_2_5 = (_lh_vecscale_arg2_1_2 *. _lh_vecscale_LH_P3_0_1_1) in
            (fun _lh_vecadd_arg2_1_3 -> 
              (((_lh_vecadd_arg2_1_3 _lh_vecadd_LH_P3_0_2_5) _lh_vecadd_LH_P3_1_2_5) _lh_vecadd_LH_P3_2_2_5)))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d3 _lh_vecscale_arg1_1_3 _lh_vecscale_arg2_1_4 =
  (match _lh_vecscale_arg1_1_3 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_3, _lh_vecscale_LH_P3_1_1_3, _lh_vecscale_LH_P3_2_1_3) -> 
      (let rec _lh_vecadd_LH_P3_2_2_9 = (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_2_1_3) in
        (let rec _lh_vecadd_LH_P3_1_2_9 = (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_1_1_3) in
          (let rec _lh_vecadd_LH_P3_0_2_9 = (_lh_vecscale_arg2_1_4 *. _lh_vecscale_LH_P3_0_1_3) in
            (fun _lh_vecadd_LH_P3_0_3_0 _lh_vecadd_LH_P3_1_3_0 _lh_vecadd_LH_P3_2_3_0 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_3_0 +. _lh_vecadd_LH_P3_0_2_9), (_lh_vecadd_LH_P3_1_3_0 +. _lh_vecadd_LH_P3_1_2_9), (_lh_vecadd_LH_P3_2_3_0 +. _lh_vecadd_LH_P3_2_2_9)))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d4 _lh_vecscale_arg1_1_9 _lh_vecscale_arg2_2_1 =
  (match _lh_vecscale_arg1_1_9 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_9, _lh_vecscale_LH_P3_1_1_9, _lh_vecscale_LH_P3_2_1_9) -> 
      (let rec _lh_vecadd_LH_P3_2_7_9 = (_lh_vecscale_arg2_2_1 *. _lh_vecscale_LH_P3_2_1_9) in
        (let rec _lh_vecadd_LH_P3_1_7_9 = (_lh_vecscale_arg2_2_1 *. _lh_vecscale_LH_P3_1_1_9) in
          (let rec _lh_vecadd_LH_P3_0_7_9 = (_lh_vecscale_arg2_2_1 *. _lh_vecscale_LH_P3_0_1_9) in
            (fun _lh_vecadd_LH_P3_0_8_0 _lh_vecadd_LH_P3_1_8_0 _lh_vecadd_LH_P3_2_8_0 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_8_0 +. _lh_vecadd_LH_P3_0_7_9), (_lh_vecadd_LH_P3_1_8_0 +. _lh_vecadd_LH_P3_1_7_9), (_lh_vecadd_LH_P3_2_8_0 +. _lh_vecadd_LH_P3_2_7_9)))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d5 _lh_vecscale_arg1_2 _lh_vecscale_arg2_2 =
  (match _lh_vecscale_arg1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2, _lh_vecscale_LH_P3_1_2, _lh_vecscale_LH_P3_2_2) -> 
      (let rec _lh_vecadd_LH_P3_2_7 = (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_2_2) in
        (let rec _lh_vecadd_LH_P3_1_7 = (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_1_2) in
          (let rec _lh_vecadd_LH_P3_0_7 = (_lh_vecscale_arg2_2 *. _lh_vecscale_LH_P3_0_2) in
            (fun _lh_vecadd_LH_P3_0_8 _lh_vecadd_LH_P3_1_8 _lh_vecadd_LH_P3_2_8 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_8 +. _lh_vecadd_LH_P3_0_7), (_lh_vecadd_LH_P3_1_8 +. _lh_vecadd_LH_P3_1_7), (_lh_vecadd_LH_P3_2_8 +. _lh_vecadd_LH_P3_2_7)))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d6 _lh_vecscale_arg1_2_0 _lh_vecscale_arg2_2_2 =
  (match _lh_vecscale_arg1_2_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_2_0, _lh_vecscale_LH_P3_1_2_0, _lh_vecscale_LH_P3_2_2_0) -> 
      (let rec _lh_vecadd_LH_P3_2_8_4 = (_lh_vecscale_arg2_2_2 *. _lh_vecscale_LH_P3_2_2_0) in
        (let rec _lh_vecadd_LH_P3_1_8_4 = (_lh_vecscale_arg2_2_2 *. _lh_vecscale_LH_P3_1_2_0) in
          (let rec _lh_vecadd_LH_P3_0_8_4 = (_lh_vecscale_arg2_2_2 *. _lh_vecscale_LH_P3_0_2_0) in
            (fun _lh_vecadd_LH_P3_0_8_5 _lh_vecadd_LH_P3_1_8_5 _lh_vecadd_LH_P3_2_8_5 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_8_5 +. _lh_vecadd_LH_P3_0_8_4), (_lh_vecadd_LH_P3_1_8_5 +. _lh_vecadd_LH_P3_1_8_4), (_lh_vecadd_LH_P3_2_8_5 +. _lh_vecadd_LH_P3_2_8_4)))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d7 _lh_vecscale_arg1_1_0 _lh_vecscale_arg2_1_1 =
  (match _lh_vecscale_arg1_1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_0, _lh_vecscale_LH_P3_1_1_0, _lh_vecscale_LH_P3_2_1_0) -> 
      (`LH_P3((_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_0_1_0), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_1_1_0), (_lh_vecscale_arg2_1_1 *. _lh_vecscale_LH_P3_2_1_0)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d8 _lh_vecscale_arg1_1_6 _lh_vecscale_arg2_1_7 =
  (match _lh_vecscale_arg1_1_6 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_6, _lh_vecscale_LH_P3_1_1_6, _lh_vecscale_LH_P3_2_1_6) -> 
      (`LH_P3((_lh_vecscale_arg2_1_7 *. _lh_vecscale_LH_P3_0_1_6), (_lh_vecscale_arg2_1_7 *. _lh_vecscale_LH_P3_1_1_6), (_lh_vecscale_arg2_1_7 *. _lh_vecscale_LH_P3_2_1_6)))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d1_d9 _lh_vecscale_arg1_1 _lh_vecscale_arg2_1 =
  (match _lh_vecscale_arg1_1 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1, _lh_vecscale_LH_P3_1_1, _lh_vecscale_LH_P3_2_1) -> 
      (let rec _lh_vecadd_LH_P3_2_4 = (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_2_1) in
        (let rec _lh_vecadd_LH_P3_1_4 = (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_1_1) in
          (let rec _lh_vecadd_LH_P3_0_4 = (_lh_vecscale_arg2_1 *. _lh_vecscale_LH_P3_0_1) in
            (fun _lh_vecadd_LH_P3_0_5 _lh_vecadd_LH_P3_1_5 _lh_vecadd_LH_P3_2_5 -> 
              (let rec _lh_vecadd_LH_P3_2_6 = (_lh_vecadd_LH_P3_2_5 +. _lh_vecadd_LH_P3_2_4) in
                (let rec _lh_vecadd_LH_P3_1_6 = (_lh_vecadd_LH_P3_1_5 +. _lh_vecadd_LH_P3_1_4) in
                  (let rec _lh_vecadd_LH_P3_0_6 = (_lh_vecadd_LH_P3_0_5 +. _lh_vecadd_LH_P3_0_4) in
                    (fun _lh_vecadd_arg2_1 -> 
                      (((_lh_vecadd_arg2_1 _lh_vecadd_LH_P3_0_6) _lh_vecadd_LH_P3_1_6) _lh_vecadd_LH_P3_2_6)))))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d2 _lh_vecscale_arg1_1_5 _lh_vecscale_arg2_1_6 =
  (match _lh_vecscale_arg1_1_5 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_5, _lh_vecscale_LH_P3_1_1_5, _lh_vecscale_LH_P3_2_1_5) -> 
      (let rec _lh_vecadd_LH_P3_2_3_4 = (_lh_vecscale_arg2_1_6 *. _lh_vecscale_LH_P3_2_1_5) in
        (let rec _lh_vecadd_LH_P3_1_3_4 = (_lh_vecscale_arg2_1_6 *. _lh_vecscale_LH_P3_1_1_5) in
          (let rec _lh_vecadd_LH_P3_0_3_4 = (_lh_vecscale_arg2_1_6 *. _lh_vecscale_LH_P3_0_1_5) in
            (fun _lh_vecadd_arg2_1_7 -> 
              (((_lh_vecadd_arg2_1_7 _lh_vecadd_LH_P3_0_3_4) _lh_vecadd_LH_P3_1_3_4) _lh_vecadd_LH_P3_2_3_4)))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d3 _lh_vecscale_arg1_1_4 _lh_vecscale_arg2_1_5 =
  (match _lh_vecscale_arg1_1_4 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_4, _lh_vecscale_LH_P3_1_1_4, _lh_vecscale_LH_P3_2_1_4) -> 
      (let rec _lh_vecadd_LH_P3_2_3_1 = (_lh_vecscale_arg2_1_5 *. _lh_vecscale_LH_P3_2_1_4) in
        (let rec _lh_vecadd_LH_P3_1_3_1 = (_lh_vecscale_arg2_1_5 *. _lh_vecscale_LH_P3_1_1_4) in
          (let rec _lh_vecadd_LH_P3_0_3_1 = (_lh_vecscale_arg2_1_5 *. _lh_vecscale_LH_P3_0_1_4) in
            (fun _lh_vecadd_LH_P3_0_3_2 _lh_vecadd_LH_P3_1_3_2 _lh_vecadd_LH_P3_2_3_2 -> 
              (let rec _lh_vecsub_LH_P3_2_1_1 = (_lh_vecadd_LH_P3_2_3_2 +. _lh_vecadd_LH_P3_2_3_1) in
                (let rec _lh_vecsub_LH_P3_1_1_1 = (_lh_vecadd_LH_P3_1_3_2 +. _lh_vecadd_LH_P3_1_3_1) in
                  (let rec _lh_vecsub_LH_P3_0_1_1 = (_lh_vecadd_LH_P3_0_3_2 +. _lh_vecadd_LH_P3_0_3_1) in
                    (fun _lh_vecsub_LH_P3_0_1_2 _lh_vecsub_LH_P3_1_1_2 _lh_vecsub_LH_P3_2_1_2 -> 
                      (let rec _lh_vecadd_LH_P3_2_3_3 = (_lh_vecsub_LH_P3_2_1_2 -. _lh_vecsub_LH_P3_2_1_1) in
                        (let rec _lh_vecadd_LH_P3_1_3_3 = (_lh_vecsub_LH_P3_1_1_2 -. _lh_vecsub_LH_P3_1_1_1) in
                          (let rec _lh_vecadd_LH_P3_0_3_3 = (_lh_vecsub_LH_P3_0_1_2 -. _lh_vecsub_LH_P3_0_1_1) in
                            (fun _lh_vecadd_arg2_1_6 -> 
                              (((_lh_vecadd_arg2_1_6 _lh_vecadd_LH_P3_0_3_3) _lh_vecadd_LH_P3_1_3_3) _lh_vecadd_LH_P3_2_3_3)))))))))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d4 _lh_vecscale_arg1_1_2 _lh_vecscale_arg2_1_3 =
  (match _lh_vecscale_arg1_1_2 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_2, _lh_vecscale_LH_P3_1_1_2, _lh_vecscale_LH_P3_2_1_2) -> 
      (let rec _lh_vecadd_LH_P3_2_2_6 = (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_2_1_2) in
        (let rec _lh_vecadd_LH_P3_1_2_6 = (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_1_1_2) in
          (let rec _lh_vecadd_LH_P3_0_2_6 = (_lh_vecscale_arg2_1_3 *. _lh_vecscale_LH_P3_0_1_2) in
            (fun _lh_vecadd_LH_P3_0_2_7 _lh_vecadd_LH_P3_1_2_7 _lh_vecadd_LH_P3_2_2_7 -> 
              (let rec _lh_vecsub_LH_P3_2_7 = (_lh_vecadd_LH_P3_2_2_7 +. _lh_vecadd_LH_P3_2_2_6) in
                (let rec _lh_vecsub_LH_P3_1_7 = (_lh_vecadd_LH_P3_1_2_7 +. _lh_vecadd_LH_P3_1_2_6) in
                  (let rec _lh_vecsub_LH_P3_0_7 = (_lh_vecadd_LH_P3_0_2_7 +. _lh_vecadd_LH_P3_0_2_6) in
                    (fun _lh_vecsub_arg2_4 -> 
                      (match _lh_vecsub_arg2_4 with
                        | `LH_P3(_lh_vecsub_LH_P3_0_8, _lh_vecsub_LH_P3_1_8, _lh_vecsub_LH_P3_2_8) -> 
                          (`LH_P3((_lh_vecsub_LH_P3_0_7 -. _lh_vecsub_LH_P3_0_8), (_lh_vecsub_LH_P3_1_7 -. _lh_vecsub_LH_P3_1_8), (_lh_vecsub_LH_P3_2_7 -. _lh_vecsub_LH_P3_2_8)))
                        | _ -> 
                          (failwith "error"))))))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d5 _lh_vecscale_arg1_1_7 _lh_vecscale_arg2_1_8 =
  (match _lh_vecscale_arg1_1_7 with
    | `LH_P3(_lh_vecscale_LH_P3_0_1_7, _lh_vecscale_LH_P3_1_1_7, _lh_vecscale_LH_P3_2_1_7) -> 
      (let rec _lh_vecmult_LH_P3_2_1_4 = (_lh_vecscale_arg2_1_8 *. _lh_vecscale_LH_P3_2_1_7) in
        (let rec _lh_vecmult_LH_P3_1_1_4 = (_lh_vecscale_arg2_1_8 *. _lh_vecscale_LH_P3_1_1_7) in
          (let rec _lh_vecmult_LH_P3_0_1_4 = (_lh_vecscale_arg2_1_8 *. _lh_vecscale_LH_P3_0_1_7) in
            (fun _lh_vecmult_arg2_1_1 -> 
              (match _lh_vecmult_arg2_1_1 with
                | `LH_P3(_lh_vecmult_LH_P3_0_1_5, _lh_vecmult_LH_P3_1_1_5, _lh_vecmult_LH_P3_2_1_5) -> 
                  (let rec _lh_vecadd_LH_P3_2_7_7 = (_lh_vecmult_LH_P3_2_1_4 *. _lh_vecmult_LH_P3_2_1_5) in
                    (let rec _lh_vecadd_LH_P3_1_7_7 = (_lh_vecmult_LH_P3_1_1_4 *. _lh_vecmult_LH_P3_1_1_5) in
                      (let rec _lh_vecadd_LH_P3_0_7_7 = (_lh_vecmult_LH_P3_0_1_4 *. _lh_vecmult_LH_P3_0_1_5) in
                        (fun _lh_vecadd_arg2_3_3 -> 
                          (((_lh_vecadd_arg2_3_3 _lh_vecadd_LH_P3_0_7_7) _lh_vecadd_LH_P3_1_7_7) _lh_vecadd_LH_P3_2_7_7)))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d6 _lh_vecscale_arg1_3 _lh_vecscale_arg2_3 =
  (match _lh_vecscale_arg1_3 with
    | `LH_P3(_lh_vecscale_LH_P3_0_3, _lh_vecscale_LH_P3_1_3, _lh_vecscale_LH_P3_2_3) -> 
      (let rec _lh_vecmult_LH_P3_2_4 = (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_2_3) in
        (let rec _lh_vecmult_LH_P3_1_4 = (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_1_3) in
          (let rec _lh_vecmult_LH_P3_0_4 = (_lh_vecscale_arg2_3 *. _lh_vecscale_LH_P3_0_3) in
            (fun _lh_vecmult_arg2_2 -> 
              (match _lh_vecmult_arg2_2 with
                | `LH_P3(_lh_vecmult_LH_P3_0_5, _lh_vecmult_LH_P3_1_5, _lh_vecmult_LH_P3_2_5) -> 
                  (let rec _lh_vecadd_LH_P3_2_1_0 = (_lh_vecmult_LH_P3_2_4 *. _lh_vecmult_LH_P3_2_5) in
                    (let rec _lh_vecadd_LH_P3_1_1_0 = (_lh_vecmult_LH_P3_1_4 *. _lh_vecmult_LH_P3_1_5) in
                      (let rec _lh_vecadd_LH_P3_0_1_0 = (_lh_vecmult_LH_P3_0_4 *. _lh_vecmult_LH_P3_0_5) in
                        (fun _lh_vecadd_LH_P3_0_1_1 _lh_vecadd_LH_P3_1_1_1 _lh_vecadd_LH_P3_2_1_1 -> 
                          (let rec _lh_vecadd_LH_P3_2_1_2 = (_lh_vecadd_LH_P3_2_1_1 +. _lh_vecadd_LH_P3_2_1_0) in
                            (let rec _lh_vecadd_LH_P3_1_1_2 = (_lh_vecadd_LH_P3_1_1_1 +. _lh_vecadd_LH_P3_1_1_0) in
                              (let rec _lh_vecadd_LH_P3_0_1_2 = (_lh_vecadd_LH_P3_0_1_1 +. _lh_vecadd_LH_P3_0_1_0) in
                                (fun _lh_vecadd_arg2_4 -> 
                                  (match _lh_vecadd_arg2_4 with
                                    | `LH_P3(_lh_vecadd_LH_P3_0_1_3, _lh_vecadd_LH_P3_1_1_3, _lh_vecadd_LH_P3_2_1_3) -> 
                                      (`LH_P3((_lh_vecadd_LH_P3_0_1_2 +. _lh_vecadd_LH_P3_0_1_3), (_lh_vecadd_LH_P3_1_1_2 +. _lh_vecadd_LH_P3_1_1_3), (_lh_vecadd_LH_P3_2_1_2 +. _lh_vecadd_LH_P3_2_1_3)))
                                    | _ -> 
                                      (failwith "error"))))))))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d7 _lh_vecscale_arg1_5 _lh_vecscale_arg2_5 =
  (match _lh_vecscale_arg1_5 with
    | `LH_P3(_lh_vecscale_LH_P3_0_5, _lh_vecscale_LH_P3_1_5, _lh_vecscale_LH_P3_2_5) -> 
      (let rec _lh_vecmult_LH_P3_2_8 = (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_2_5) in
        (let rec _lh_vecmult_LH_P3_1_8 = (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_1_5) in
          (let rec _lh_vecmult_LH_P3_0_8 = (_lh_vecscale_arg2_5 *. _lh_vecscale_LH_P3_0_5) in
            (fun _lh_vecmult_arg2_4 -> 
              (match _lh_vecmult_arg2_4 with
                | `LH_P3(_lh_vecmult_LH_P3_0_9, _lh_vecmult_LH_P3_1_9, _lh_vecmult_LH_P3_2_9) -> 
                  (let rec _lh_vecadd_LH_P3_2_1_8 = (_lh_vecmult_LH_P3_2_8 *. _lh_vecmult_LH_P3_2_9) in
                    (let rec _lh_vecadd_LH_P3_1_1_8 = (_lh_vecmult_LH_P3_1_8 *. _lh_vecmult_LH_P3_1_9) in
                      (let rec _lh_vecadd_LH_P3_0_1_8 = (_lh_vecmult_LH_P3_0_8 *. _lh_vecmult_LH_P3_0_9) in
                        (fun _lh_vecadd_arg2_6 -> 
                          (((_lh_vecadd_arg2_6 _lh_vecadd_LH_P3_0_1_8) _lh_vecadd_LH_P3_1_1_8) _lh_vecadd_LH_P3_2_1_8)))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d8 _lh_vecscale_arg1_4 _lh_vecscale_arg2_4 =
  (match _lh_vecscale_arg1_4 with
    | `LH_P3(_lh_vecscale_LH_P3_0_4, _lh_vecscale_LH_P3_1_4, _lh_vecscale_LH_P3_2_4) -> 
      (let rec _lh_vecmult_LH_P3_2_6 = (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_2_4) in
        (let rec _lh_vecmult_LH_P3_1_6 = (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_1_4) in
          (let rec _lh_vecmult_LH_P3_0_6 = (_lh_vecscale_arg2_4 *. _lh_vecscale_LH_P3_0_4) in
            (fun _lh_vecmult_arg2_3 -> 
              (match _lh_vecmult_arg2_3 with
                | `LH_P3(_lh_vecmult_LH_P3_0_7, _lh_vecmult_LH_P3_1_7, _lh_vecmult_LH_P3_2_7) -> 
                  (let rec _lh_vecadd_LH_P3_2_1_4 = (_lh_vecmult_LH_P3_2_6 *. _lh_vecmult_LH_P3_2_7) in
                    (let rec _lh_vecadd_LH_P3_1_1_4 = (_lh_vecmult_LH_P3_1_6 *. _lh_vecmult_LH_P3_1_7) in
                      (let rec _lh_vecadd_LH_P3_0_1_4 = (_lh_vecmult_LH_P3_0_6 *. _lh_vecmult_LH_P3_0_7) in
                        (fun _lh_vecadd_LH_P3_0_1_5 _lh_vecadd_LH_P3_1_1_5 _lh_vecadd_LH_P3_2_1_5 -> 
                          (let rec _lh_vecadd_LH_P3_2_1_6 = (_lh_vecadd_LH_P3_2_1_5 +. _lh_vecadd_LH_P3_2_1_4) in
                            (let rec _lh_vecadd_LH_P3_1_1_6 = (_lh_vecadd_LH_P3_1_1_5 +. _lh_vecadd_LH_P3_1_1_4) in
                              (let rec _lh_vecadd_LH_P3_0_1_6 = (_lh_vecadd_LH_P3_0_1_5 +. _lh_vecadd_LH_P3_0_1_4) in
                                (fun _lh_vecadd_arg2_5 -> 
                                  (match _lh_vecadd_arg2_5 with
                                    | `LH_P3(_lh_vecadd_LH_P3_0_1_7, _lh_vecadd_LH_P3_1_1_7, _lh_vecadd_LH_P3_2_1_7) -> 
                                      (`LH_P3((_lh_vecadd_LH_P3_0_1_6 +. _lh_vecadd_LH_P3_0_1_7), (_lh_vecadd_LH_P3_1_1_6 +. _lh_vecadd_LH_P3_1_1_7), (_lh_vecadd_LH_P3_2_1_6 +. _lh_vecadd_LH_P3_2_1_7)))
                                    | _ -> 
                                      (failwith "error"))))))))))
                | _ -> 
                  (failwith "error"))))))
    | _ -> 
      (failwith "error"));;
let rec vecscale__d9 _lh_vecscale_arg1_0 _lh_vecscale_arg2_0 =
  (match _lh_vecscale_arg1_0 with
    | `LH_P3(_lh_vecscale_LH_P3_0_0, _lh_vecscale_LH_P3_1_0, _lh_vecscale_LH_P3_2_0) -> 
      (let rec _lh_vecadd_LH_P3_2_0 = (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_2_0) in
        (let rec _lh_vecadd_LH_P3_1_0 = (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_1_0) in
          (let rec _lh_vecadd_LH_P3_0_0 = (_lh_vecscale_arg2_0 *. _lh_vecscale_LH_P3_0_0) in
            (fun _lh_vecadd_LH_P3_0_1 _lh_vecadd_LH_P3_1_1 _lh_vecadd_LH_P3_2_1 -> 
              (`LH_P3((_lh_vecadd_LH_P3_0_1 +. _lh_vecadd_LH_P3_0_0), (_lh_vecadd_LH_P3_1_1 +. _lh_vecadd_LH_P3_1_0), (_lh_vecadd_LH_P3_2_1 +. _lh_vecadd_LH_P3_2_0)))))))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d0 _lh_vecsub_arg1_0 _lh_vecsub_arg2_0 =
  (_lh_vecsub_arg1_0 _lh_vecsub_arg2_0);;
let rec vecsub__d1 _lh_vecsub_arg1_5 _lh_vecsub_arg2_7 =
  (match _lh_vecsub_arg1_5 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_3, _lh_vecsub_LH_P3_1_1_3, _lh_vecsub_LH_P3_2_1_3) -> 
      (((_lh_vecsub_arg2_7 _lh_vecsub_LH_P3_0_1_3) _lh_vecsub_LH_P3_1_1_3) _lh_vecsub_LH_P3_2_1_3)
    | _ -> 
      (failwith "error"));;
let rec vecsub__d3 _lh_vecsub_arg1_4 _lh_vecsub_arg2_6 =
  (_lh_vecsub_arg1_4 _lh_vecsub_arg2_6);;
let rec vecsub__d4 _lh_vecsub_arg1_3 _lh_vecsub_arg2_5 =
  (match _lh_vecsub_arg1_3 with
    | `LH_P3(_lh_vecsub_LH_P3_0_9, _lh_vecsub_LH_P3_1_9, _lh_vecsub_LH_P3_2_9) -> 
      (match _lh_vecsub_arg2_5 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_0, _lh_vecsub_LH_P3_1_1_0, _lh_vecsub_LH_P3_2_1_0) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_9 -. _lh_vecsub_LH_P3_0_1_0), (_lh_vecsub_LH_P3_1_9 -. _lh_vecsub_LH_P3_1_1_0), (_lh_vecsub_LH_P3_2_9 -. _lh_vecsub_LH_P3_2_1_0)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d5 _lh_vecsub_arg1_7 _lh_vecsub_arg2_9 =
  (match _lh_vecsub_arg1_7 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_6, _lh_vecsub_LH_P3_1_1_6, _lh_vecsub_LH_P3_2_1_6) -> 
      (match _lh_vecsub_arg2_9 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_7, _lh_vecsub_LH_P3_1_1_7, _lh_vecsub_LH_P3_2_1_7) -> 
          (let rec _lh_vecscale_LH_P3_2_1_8 = (_lh_vecsub_LH_P3_2_1_6 -. _lh_vecsub_LH_P3_2_1_7) in
            (let rec _lh_vecscale_LH_P3_1_1_8 = (_lh_vecsub_LH_P3_1_1_6 -. _lh_vecsub_LH_P3_1_1_7) in
              (let rec _lh_vecscale_LH_P3_0_1_8 = (_lh_vecsub_LH_P3_0_1_6 -. _lh_vecsub_LH_P3_0_1_7) in
                (fun _lh_vecscale_arg2_2_0 -> 
                  (`LH_P3((_lh_vecscale_arg2_2_0 *. _lh_vecscale_LH_P3_0_1_8), (_lh_vecscale_arg2_2_0 *. _lh_vecscale_LH_P3_1_1_8), (_lh_vecscale_arg2_2_0 *. _lh_vecscale_LH_P3_2_1_8)))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d6 _lh_vecsub_arg1_1 _lh_vecsub_arg2_1 =
  (match _lh_vecsub_arg1_1 with
    | `LH_P3(_lh_vecsub_LH_P3_0_0, _lh_vecsub_LH_P3_1_0, _lh_vecsub_LH_P3_2_0) -> 
      (match _lh_vecsub_arg2_1 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1, _lh_vecsub_LH_P3_1_1, _lh_vecsub_LH_P3_2_1) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_0 -. _lh_vecsub_LH_P3_0_1), (_lh_vecsub_LH_P3_1_0 -. _lh_vecsub_LH_P3_1_1), (_lh_vecsub_LH_P3_2_0 -. _lh_vecsub_LH_P3_2_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec vecsub__d7 _lh_vecsub_arg1_6 _lh_vecsub_arg2_8 =
  (match _lh_vecsub_arg1_6 with
    | `LH_P3(_lh_vecsub_LH_P3_0_1_4, _lh_vecsub_LH_P3_1_1_4, _lh_vecsub_LH_P3_2_1_4) -> 
      (match _lh_vecsub_arg2_8 with
        | `LH_P3(_lh_vecsub_LH_P3_0_1_5, _lh_vecsub_LH_P3_1_1_5, _lh_vecsub_LH_P3_2_1_5) -> 
          (`LH_P3((_lh_vecsub_LH_P3_0_1_4 -. _lh_vecsub_LH_P3_0_1_5), (_lh_vecsub_LH_P3_1_1_4 -. _lh_vecsub_LH_P3_1_1_5), (_lh_vecsub_LH_P3_2_1_4 -. _lh_vecsub_LH_P3_2_1_5)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec ambientsurf__d0 _lh_ambientsurf_arg1_0 =
  (head__d0 ((mappend__d0 (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_8, _lh_listcomp_fun_ls_t_8) -> 
        (match _lh_listcomp_fun_ls_h_8 with
          | `Ambient(_lh_ambientsurf_Ambient_0_0) -> 
            (let rec t_2_9 = (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_8) in
              (let rec h_2_9 = _lh_ambientsurf_Ambient_0_0 in
                (fun ys_1_4 -> 
                  (`LH_C(h_2_9, ((mappend__d0 t_2_9) ys_1_4))))))
          | _ -> 
            (_lh_listcomp_fun_1_0 _lh_listcomp_fun_ls_t_8))
      | `LH_N -> 
        (fun ys_1_5 -> 
          ys_1_5))) in
    (_lh_listcomp_fun_1_0 _lh_ambientsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and bodysurf__d0 _lh_bodysurf_arg1_1 =
  (head__d1 ((mappend__d1 (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_1_1 -> 
    (match _lh_listcomp_fun_para_1_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_3, _lh_listcomp_fun_ls_t_1_3) -> 
        (match _lh_listcomp_fun_ls_h_1_3 with
          | `Body(_lh_bodysurf_Body_0_1) -> 
            (let rec t_4_3 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_3) in
              (let rec h_4_1 = _lh_bodysurf_Body_0_1 in
                (fun ys_2_7 -> 
                  (`LH_C(h_4_1, ((mappend__d1 t_4_3) ys_2_7))))))
          | _ -> 
            (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_1_3))
      | `LH_N -> 
        (fun ys_2_8 -> 
          ys_2_8))) in
    (_lh_listcomp_fun_1_7 _lh_bodysurf_arg1_1))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))))
and bodysurf__d1 _lh_bodysurf_arg1_0 =
  (head__d2 ((mappend__d2 (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_8 -> 
    (match _lh_listcomp_fun_para_8 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_0, _lh_listcomp_fun_ls_t_1_0) -> 
        (match _lh_listcomp_fun_ls_h_1_0 with
          | `Body(_lh_bodysurf_Body_0_0) -> 
            (let rec t_3_4 = (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_0) in
              (let rec h_3_2 = _lh_bodysurf_Body_0_0 in
                (fun ys_1_8 -> 
                  (`LH_C(h_3_2, ((mappend__d2 t_3_4) ys_1_8))))))
          | _ -> 
            (_lh_listcomp_fun_1_4 _lh_listcomp_fun_ls_t_1_0))
      | `LH_N -> 
        (fun ys_1_9 -> 
          ys_1_9))) in
    (_lh_listcomp_fun_1_4 _lh_bodysurf_arg1_0))) (`LH_C((`LH_P3(1.0, 1.0, 1.0)), (`LH_N)))))
and camparams__d0 _lh_camparams_arg1_0 _lh_camparams_arg2_0 _lh_camparams_arg3_0 _lh_camparams_arg4_2 _lh_camparams_arg5_2 =
  (let rec initfirstray_2 = ((vecsub__d0 _lh_camparams_arg2_0) _lh_camparams_arg1_0) in
    (let rec _lh_matchIdent_2_6 = (vecnorm__d0 initfirstray_2) in
      ((((_lh_matchIdent_2_6 _lh_camparams_arg3_0) _lh_camparams_arg4_2) _lh_camparams_arg5_2) initfirstray_2)))
and diffusesurf__d0 _lh_diffusesurf_arg1_0 =
  (head__d3 ((mappend__d3 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (match _lh_listcomp_fun_ls_h_1 with
          | `Diffuse(_lh_diffusesurf_Diffuse_0_0) -> 
            (let rec t_5 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
              (let rec h_5 = _lh_diffusesurf_Diffuse_0_0 in
                (fun ys_4 -> 
                  (`LH_C(h_5, ((mappend__d3 t_5) ys_4))))))
          | _ -> 
            (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
      | `LH_N -> 
        (fun ys_5 -> 
          ys_5))) in
    (_lh_listcomp_fun_1 _lh_diffusesurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and dtor__d0 _lh_dtor_arg1_0 =
  ((_lh_dtor_arg1_0 *. pi__d0) /. 180.0)
and dtor__d1 _lh_dtor_arg1_1 =
  ((_lh_dtor_arg1_1 *. pi__d1) /. 180.0)
and enumFromTo__d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_9 = a_1 in
        (fun _lh_listcomp_fun_1_1 _lh_ray_arg1_1 f_1_9 -> 
          (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_7 -> 
            (((((_lh_listcomp_fun_para_7 _lh_listcomp_fun_ls_h_9) _lh_listcomp_fun_1_2) f_1_9) _lh_listcomp_fun_ls_t_9) _lh_listcomp_fun_1_1)) in
            (_lh_listcomp_fun_1_2 ((enumFromTo__d1 0) (_lh_ray_arg1_1 - 1)))))))
  else
    (fun _lh_listcomp_fun_1_3 _lh_ray_arg1_2 f_2_0 f_2_1 f_2_2 i_1_1 -> 
      i_1_1))
and enumFromTo__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_2 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_2 = a_0 in
        (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_3 f_1_2 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_4 -> 
          (let rec t_1_7 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2) in
            (let rec h_1_7 = (let rec _lh_snd_LH_P2_1_0 = ((f_1_2 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_ls_h_2) in
              _lh_snd_LH_P2_1_0) in
              (fun f_1_3 -> 
                (let rec t_1_8 = ((map__d0 f_1_3) t_1_7) in
                  (let rec h_1_8 = (f_1_3 h_1_7) in
                    (fun f_1_4 i_7 -> 
                      ((f_1_4 h_1_8) (((foldr__d0 f_1_4) i_7) t_1_8)))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_4 _lh_listcomp_fun_5 f_1_5 _lh_listcomp_fun_ls_t_4 _lh_listcomp_fun_6 -> 
      (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_4)))
and hash__d0 _lh_hash_arg1_0 =
  (let rec u8_0 = (fun x_0 -> 
    ((fun _lh_funcomp_x_0 -> 
      (int_of_float ((fun x_1 -> 
        (255.0 *. x_1)) _lh_funcomp_x_0))) x_0)) in
    (((foldr__d0 (fun rgb_0 acc_0 -> 
      (let rec _lh_matchIdent_2 = rgb_0 in
        (match _lh_matchIdent_2 with
          | `LH_P3(_lh_hash_LH_P3_0_0, _lh_hash_LH_P3_1_0, _lh_hash_LH_P3_2_0) -> 
            ((((u8_0 _lh_hash_LH_P3_0_0) + ((u8_0 _lh_hash_LH_P3_1_0) * 7)) + ((u8_0 _lh_hash_LH_P3_2_0) * 23)) + (acc_0 * 61))
          | _ -> 
            (failwith "error"))))) 0) _lh_hash_arg1_0))
and is_zerovector__d0 _lh_is_zerovector_arg1_2 =
  (match _lh_is_zerovector_arg1_2 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_2, _lh_is_zerovector_LH_P3_1_2, _lh_is_zerovector_LH_P3_2_2) -> 
      (((_lh_is_zerovector_LH_P3_0_2 < epsilon__d1) && (_lh_is_zerovector_LH_P3_1_2 < epsilon__d2)) && (_lh_is_zerovector_LH_P3_2_2 < epsilon__d3))
    | _ -> 
      (failwith "error"))
and is_zerovector__d1 _lh_is_zerovector_arg1_0 =
  (match _lh_is_zerovector_arg1_0 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_0, _lh_is_zerovector_LH_P3_1_0, _lh_is_zerovector_LH_P3_2_0) -> 
      (((_lh_is_zerovector_LH_P3_0_0 < epsilon__d6) && (_lh_is_zerovector_LH_P3_1_0 < epsilon__d7)) && (_lh_is_zerovector_LH_P3_2_0 < epsilon__d8))
    | _ -> 
      (failwith "error"))
and is_zerovector__d2 _lh_is_zerovector_arg1_1 =
  (match _lh_is_zerovector_arg1_1 with
    | `LH_P3(_lh_is_zerovector_LH_P3_0_1, _lh_is_zerovector_LH_P3_1_1, _lh_is_zerovector_LH_P3_2_1) -> 
      (((_lh_is_zerovector_LH_P3_0_1 < epsilon__d1_d0) && (_lh_is_zerovector_LH_P3_1_1 < epsilon__d1_d1)) && (_lh_is_zerovector_LH_P3_2_1 < epsilon__d1_d2))
    | _ -> 
      (failwith "error"))
and lightdirection__d0 _lh_lightdirection_arg1_0 _lh_lightdirection_arg2_0 =
  (match _lh_lightdirection_arg1_0 with
    | `Directional(_lh_lightdirection_Directional_0_0, _lh_lightdirection_Directional_1_0) -> 
      (let rec _lh_lightray_LH_P2_0_0 = (fst__d0 (vecnorm__d3 _lh_lightdirection_Directional_0_0)) in
        (fun _lh_lightray_arg1_0 _lh_lightray_arg2_0 _lh_lightray_arg3_0 _lh_lightray_arg4_0 _lh_lightray_arg5_0 -> 
          (let rec cosangle_0 = ((vecdot__d2 _lh_lightray_LH_P2_0_0) _lh_lightray_arg3_0) in
            (let rec _lh_matchIdent_5 = (((shadowed__d0 _lh_lightray_arg2_0) _lh_lightray_LH_P2_0_0) (lightcolour__d0 _lh_lightray_arg1_0)) in
              ((((_lh_matchIdent_5 _lh_lightray_LH_P2_0_0) _lh_lightray_arg4_0) _lh_lightray_arg5_0) cosangle_0)))))
    | `Point(_lh_lightdirection_Point_0_0, _lh_lightdirection_Point_1_0) -> 
      (vecnorm__d4 ((vecsub__d2 _lh_lightdirection_Point_0_0) _lh_lightdirection_arg2_0))
    | _ -> 
      (failwith "error"))
and lightray__d0 _lh_lightray_arg1_1 _lh_lightray_arg2_1 _lh_lightray_arg3_1 _lh_lightray_arg4_1 _lh_lightray_arg5_1 =
  (let rec _lh_matchIdent_6 = ((lightdirection__d0 _lh_lightray_arg1_1) _lh_lightray_arg2_1) in
    (((((_lh_matchIdent_6 _lh_lightray_arg1_1) _lh_lightray_arg2_1) _lh_lightray_arg3_1) _lh_lightray_arg4_1) _lh_lightray_arg5_1))
and ray__d0 _lh_ray_arg1_3 =
  (let rec lights_1 = (testlights__d0 0) in
    (let rec _lh_matchIdent_2_4 = (((((camparams__d0 lookfrom__d0) (lookat__d0 0)) (vup__d0 0)) fov__d0) (float_of_int _lh_ray_arg1_3)) in
      ((_lh_matchIdent_2_4 _lh_ray_arg1_3) lights_1)))
and reflectray__d0 _lh_reflectray_arg1_0 _lh_reflectray_arg2_0 _lh_reflectray_arg3_0 _lh_reflectray_arg4_0 _lh_reflectray_arg5_0 _lh_reflectray_arg6_0 =
  (let rec newcontrib_1 = ((vecmult__d4 _lh_reflectray_arg4_0) _lh_reflectray_arg5_0) in
    (let rec nearpos_0 = ((vecadd__d4 _lh_reflectray_arg1_0) ((vecscale__d9 _lh_reflectray_arg2_0) epsilon__d5)) in
      (let rec _lh_matchIdent_8 = (((trace__d1 (testspheres__d2 0)) nearpos_0) _lh_reflectray_arg2_0) in
        ((((((_lh_matchIdent_8 _lh_reflectray_arg2_0) _lh_reflectray_arg3_0) _lh_reflectray_arg4_0) _lh_reflectray_arg6_0) nearpos_0) newcontrib_1))))
and reflectsurf__d0 _lh_reflectsurf_arg1_0 =
  (head__d1_d0 ((mappend__d6 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
        (match _lh_listcomp_fun_ls_h_5 with
          | `Reflect(_lh_reflectsurf_Reflect_0_0) -> 
            (let rec t_2_0 = (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_5) in
              (let rec h_2_0 = _lh_reflectsurf_Reflect_0_0 in
                (fun ys_8 -> 
                  (`LH_C(h_2_0, ((mappend__d6 t_2_0) ys_8))))))
          | _ -> 
            (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_5))
      | `LH_N -> 
        (fun ys_9 -> 
          ys_9))) in
    (_lh_listcomp_fun_7 _lh_reflectsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))))
and refractray__d0 _lh_refractray_arg1_0 _lh_refractray_arg2_0 _lh_refractray_arg3_0 =
  (let rec dotp_0 = (0.0 -. ((vecdot__d7 _lh_refractray_arg2_0) _lh_refractray_arg3_0)) in
    (let rec _lh_matchIdent_9 = (if (dotp_0 < 0.0) then
      (let rec _lh_refractray_LH_P3_2_0 = (1.0 /. _lh_refractray_arg1_0) in
        (let rec _lh_refractray_LH_P3_1_0 = (0.0 -. dotp_0) in
          (let rec _lh_refractray_LH_P3_0_0 = ((vecscale__d1_d1 _lh_refractray_arg3_0) (0.0 -. 1.0)) in
            (fun _lh_refractray_arg2_1 -> 
              (let rec disc_3 = (((1.0 -. _lh_refractray_LH_P3_2_0) *. _lh_refractray_LH_P3_2_0) *. (1.0 -. (_lh_refractray_LH_P3_1_0 *. _lh_refractray_LH_P3_1_0))) in
                (let rec t_3_0 = ((_lh_refractray_LH_P3_2_0 *. _lh_refractray_LH_P3_1_0) -. (sqrt disc_3)) in
                  (if (disc_3 < 0.0) then
                    (let rec _lh_transmitray_LH_P2_1_0 = (`LH_P3(0.0, 0.0, 0.0)) in
                      (fun _lh_transmitray_arg1_1 _lh_transmitray_arg2_1 _lh_transmitray_arg3_1 _lh_transmitray_arg6_1 newcontrib_2 -> 
                        (let rec nearpos_1 = ((vecadd__d7 _lh_transmitray_arg3_1) ((vecscale__d1_d4 _lh_transmitray_LH_P2_1_0) epsilon__d9)) in
                          (let rec _lh_matchIdent_1_0 = (((trace__d2 (testspheres__d3 0)) nearpos_1) _lh_transmitray_LH_P2_1_0) in
                            ((((((_lh_matchIdent_1_0 _lh_transmitray_LH_P2_1_0) _lh_transmitray_arg1_1) _lh_transmitray_arg2_1) _lh_transmitray_arg6_1) nearpos_1) newcontrib_2)))))
                  else
                    (let rec _lh_transmitray_LH_P2_1_1 = ((vecadd__d6 ((vecscale__d1_d2 _lh_refractray_LH_P3_0_0) t_3_0)) ((vecscale__d1_d3 _lh_refractray_arg2_1) _lh_refractray_LH_P3_2_0)) in
                      (fun _lh_transmitray_arg1_2 _lh_transmitray_arg2_2 _lh_transmitray_arg3_2 _lh_transmitray_arg6_2 newcontrib_3 -> 
                        (let rec nearpos_2 = ((vecadd__d7 _lh_transmitray_arg3_2) ((vecscale__d1_d4 _lh_transmitray_LH_P2_1_1) epsilon__d9)) in
                          (let rec _lh_matchIdent_1_1 = (((trace__d2 (testspheres__d3 0)) nearpos_2) _lh_transmitray_LH_P2_1_1) in
                            ((((((_lh_matchIdent_1_1 _lh_transmitray_LH_P2_1_1) _lh_transmitray_arg1_2) _lh_transmitray_arg2_2) _lh_transmitray_arg6_2) nearpos_2) newcontrib_3))))))))))))
    else
      (let rec _lh_refractray_LH_P3_2_1 = _lh_refractray_arg1_0 in
        (let rec _lh_refractray_LH_P3_1_1 = dotp_0 in
          (let rec _lh_refractray_LH_P3_0_1 = _lh_refractray_arg3_0 in
            (fun _lh_refractray_arg2_2 -> 
              (let rec disc_4 = (((1.0 -. _lh_refractray_LH_P3_2_1) *. _lh_refractray_LH_P3_2_1) *. (1.0 -. (_lh_refractray_LH_P3_1_1 *. _lh_refractray_LH_P3_1_1))) in
                (let rec t_3_1 = ((_lh_refractray_LH_P3_2_1 *. _lh_refractray_LH_P3_1_1) -. (sqrt disc_4)) in
                  (if (disc_4 < 0.0) then
                    (let rec _lh_transmitray_LH_P2_1_2 = (`LH_P3(0.0, 0.0, 0.0)) in
                      (fun _lh_transmitray_arg1_3 _lh_transmitray_arg2_3 _lh_transmitray_arg3_3 _lh_transmitray_arg6_3 newcontrib_4 -> 
                        (let rec nearpos_3 = ((vecadd__d7 _lh_transmitray_arg3_3) ((vecscale__d1_d4 _lh_transmitray_LH_P2_1_2) epsilon__d9)) in
                          (let rec _lh_matchIdent_1_2 = (((trace__d2 (testspheres__d3 0)) nearpos_3) _lh_transmitray_LH_P2_1_2) in
                            ((((((_lh_matchIdent_1_2 _lh_transmitray_LH_P2_1_2) _lh_transmitray_arg1_3) _lh_transmitray_arg2_3) _lh_transmitray_arg6_3) nearpos_3) newcontrib_4)))))
                  else
                    (let rec _lh_transmitray_LH_P2_1_3 = ((vecadd__d6 ((vecscale__d1_d2 _lh_refractray_LH_P3_0_1) t_3_1)) ((vecscale__d1_d3 _lh_refractray_arg2_2) _lh_refractray_LH_P3_2_1)) in
                      (fun _lh_transmitray_arg1_4 _lh_transmitray_arg2_4 _lh_transmitray_arg3_4 _lh_transmitray_arg6_4 newcontrib_5 -> 
                        (let rec nearpos_4 = ((vecadd__d7 _lh_transmitray_arg3_4) ((vecscale__d1_d4 _lh_transmitray_LH_P2_1_3) epsilon__d9)) in
                          (let rec _lh_matchIdent_1_3 = (((trace__d2 (testspheres__d3 0)) nearpos_4) _lh_transmitray_LH_P2_1_3) in
                            ((((((_lh_matchIdent_1_3 _lh_transmitray_LH_P2_1_3) _lh_transmitray_arg1_4) _lh_transmitray_arg2_4) _lh_transmitray_arg6_4) nearpos_4) newcontrib_5))))))))))))) in
      (_lh_matchIdent_9 _lh_refractray_arg2_0)))
and refractsurf__d0 _lh_refractsurf_arg1_0 =
  (head__d1_d1 ((mappend__d7 (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_9 -> 
    (match _lh_listcomp_fun_para_9 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_1, _lh_listcomp_fun_ls_t_1_1) -> 
        (match _lh_listcomp_fun_ls_h_1_1 with
          | `Refract(_lh_refractsurf_Refract_0_0) -> 
            (let rec t_3_6 = (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_1) in
              (let rec h_3_4 = _lh_refractsurf_Refract_0_0 in
                (fun ys_2_1 -> 
                  (`LH_C(h_3_4, ((mappend__d7 t_3_6) ys_2_1))))))
          | _ -> 
            (_lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_1_1))
      | `LH_N -> 
        (fun ys_2_2 -> 
          ys_2_2))) in
    (_lh_listcomp_fun_1_5 _lh_refractsurf_arg1_0))) (`LH_C(1.0, (`LH_N)))))
and run__d0 _lh_run_arg1_0 =
  (hash__d0 ((map__d0 snd__d0) (ray__d0 _lh_run_arg1_0)))
and shade__d0 _lh_shade_arg1_0 _lh_shade_arg2_0 _lh_shade_arg3_0 _lh_shade_arg4_0 _lh_shade_arg5_0 _lh_shade_arg6_0 =
  (let rec hitpos_0 = ((vecadd__d9 _lh_shade_arg3_0) ((vecscale__d1_d5 _lh_shade_arg4_0) _lh_shade_arg5_0)) in
    (let rec ambientlight_0 = (let rec _lh_vecmult_LH_P3_2_2 = 1.0 in
      (let rec _lh_vecmult_LH_P3_1_2 = 1.0 in
        (let rec _lh_vecmult_LH_P3_0_2 = 1.0 in
          (fun _lh_vecmult_arg2_1 -> 
            (match _lh_vecmult_arg2_1 with
              | `LH_P3(_lh_vecmult_LH_P3_0_3, _lh_vecmult_LH_P3_1_3, _lh_vecmult_LH_P3_2_3) -> 
                (let rec _lh_vecadd_LH_P3_2_2 = (_lh_vecmult_LH_P3_2_2 *. _lh_vecmult_LH_P3_2_3) in
                  (let rec _lh_vecadd_LH_P3_1_2 = (_lh_vecmult_LH_P3_1_2 *. _lh_vecmult_LH_P3_1_3) in
                    (let rec _lh_vecadd_LH_P3_0_2 = (_lh_vecmult_LH_P3_0_2 *. _lh_vecmult_LH_P3_0_3) in
                      (fun _lh_vecadd_arg2_0 -> 
                        (match _lh_vecadd_arg2_0 with
                          | `LH_P3(_lh_vecadd_LH_P3_0_3, _lh_vecadd_LH_P3_1_3, _lh_vecadd_LH_P3_2_3) -> 
                            (`LH_P3((_lh_vecadd_LH_P3_0_2 +. _lh_vecadd_LH_P3_0_3), (_lh_vecadd_LH_P3_1_2 +. _lh_vecadd_LH_P3_1_3), (_lh_vecadd_LH_P3_2_2 +. _lh_vecadd_LH_P3_2_3)))
                          | _ -> 
                            (failwith "error"))))))
              | _ -> 
                (failwith "error")))))) in
      (let rec surf_0 = (spheresurf__d0 _lh_shade_arg2_0) in
        (let rec amb_0 = ((vecmult__d8 ambientlight_0) (ambientsurf__d0 surf_0)) in
          (let rec norm_0 = ((spherenormal__d0 hitpos_0) _lh_shade_arg2_0) in
            (let rec refl_0 = ((vecadd__d1_d0 _lh_shade_arg4_0) ((vecscale__d1_d6 norm_0) ((0.0 -. 2.0) *. ((vecdot__d1_d0 _lh_shade_arg4_0) norm_0)))) in
              (let rec diff_0 = (vecsum__d0 ((map__d1 (fun l_0 -> 
                (((((lightray__d0 l_0) hitpos_0) norm_0) refl_0) surf_0))) _lh_shade_arg1_0)) in
                (let rec transmitted_0 = (transmitsurf__d0 surf_0) in
                  (let rec simple_0 = ((vecadd__d1_d1 amb_0) diff_0) in
                    (let rec trintensity_0 = ((vecscale__d1_d7 (bodysurf__d0 surf_0)) transmitted_0) in
                      (let rec _lh_matchIdent_0 = (if (transmitted_0 < epsilon__d0) then
                        (let rec _lh_shade_LH_P2_1_0 = simple_0 in
                          (let rec _lh_shade_LH_P2_0_0 = false in
                            (fun _lh_shade_arg1_1 _lh_shade_arg6_1 hitpos_1 refl_1 surf_1 trintensity_1 -> 
                              (let rec reflsurf_0 = ((vecscale__d1_d8 (specularsurf__d1 surf_1)) (reflectsurf__d0 surf_1)) in
                                (let rec reflectiv_0 = (if _lh_shade_LH_P2_0_0 then
                                  ((vecadd__d1_d2 trintensity_1) reflsurf_0)
                                else
                                  reflsurf_0) in
                                  (let rec rcol_0 = (if (is_zerovector__d0 reflectiv_0) then
                                    _lh_shade_LH_P2_1_0
                                  else
                                    ((((((reflectray__d0 hitpos_1) refl_1) _lh_shade_arg1_1) reflectiv_0) _lh_shade_arg6_1) _lh_shade_LH_P2_1_0)) in
                                    rcol_0))))))
                      else
                        ((((((((transmitray__d0 _lh_shade_arg1_0) simple_0) hitpos_0) _lh_shade_arg4_0) (refractsurf__d0 surf_0)) trintensity_0) _lh_shade_arg6_0) norm_0)) in
                        ((((((_lh_matchIdent_0 _lh_shade_arg1_0) _lh_shade_arg6_0) hitpos_0) refl_0) surf_0) trintensity_0))))))))))))
and shadowed__d0 _lh_shadowed_arg1_0 _lh_shadowed_arg2_0 _lh_shadowed_arg3_0 =
  (let rec _lh_matchIdent_3 = (((trace__d0 (testspheres__d1 0)) ((vecadd__d1 _lh_shadowed_arg1_0) ((vecscale__d4 _lh_shadowed_arg2_0) epsilon__d4))) _lh_shadowed_arg2_0) in
    (_lh_matchIdent_3 _lh_shadowed_arg3_0))
and specpowsurf__d0 _lh_specpowsurf_arg1_0 =
  (head__d6 ((mappend__d4 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_5 -> 
    (match _lh_listcomp_fun_para_5 with
      | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
        (match _lh_listcomp_fun_ls_h_7 with
          | `Specpow(_lh_specpowsurf_Specpow_0_0) -> 
            (let rec t_2_3 = (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7) in
              (let rec h_2_3 = _lh_specpowsurf_Specpow_0_0 in
                (fun ys_1_2 -> 
                  (`LH_C(h_2_3, ((mappend__d4 t_2_3) ys_1_2))))))
          | _ -> 
            (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_7))
      | `LH_N -> 
        (fun ys_1_3 -> 
          ys_1_3))) in
    (_lh_listcomp_fun_9 _lh_specpowsurf_arg1_0))) (`LH_C(8.0, (`LH_N)))))
and specularsurf__d0 _lh_specularsurf_arg1_0 =
  (head__d7 ((mappend__d5 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (match _lh_listcomp_fun_ls_h_0 with
          | `Specular(_lh_specularsurf_Specular_0_0) -> 
            (let rec t_3 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_3 = _lh_specularsurf_Specular_0_0 in
                (fun ys_0 -> 
                  (`LH_C(h_3, ((mappend__d5 t_3) ys_0))))))
          | _ -> 
            (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
      | `LH_N -> 
        (fun ys_1 -> 
          ys_1))) in
    (_lh_listcomp_fun_0 _lh_specularsurf_arg1_0))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and specularsurf__d1 _lh_specularsurf_arg1_1 =
  (head__d1_d2 ((mappend__d8 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (match _lh_listcomp_fun_ls_h_6 with
          | `Specular(_lh_specularsurf_Specular_0_1) -> 
            (let rec t_2_2 = (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6) in
              (let rec h_2_2 = _lh_specularsurf_Specular_0_1 in
                (fun ys_1_0 -> 
                  (`LH_C(h_2_2, ((mappend__d8 t_2_2) ys_1_0))))))
          | _ -> 
            (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_6))
      | `LH_N -> 
        (fun ys_1_1 -> 
          ys_1_1))) in
    (_lh_listcomp_fun_8 _lh_specularsurf_arg1_1))) (`LH_C((`LH_P3(0.0, 0.0, 0.0)), (`LH_N)))))
and sphereintersect__d0 _lh_sphereintersect_arg1_3 _lh_sphereintersect_arg2_3 _lh_sphereintersect_arg3_3 =
  (match _lh_sphereintersect_arg3_3 with
    | `Sphere(_lh_sphereintersect_Sphere_0_3, _lh_sphereintersect_Sphere_1_3, _lh_sphereintersect_Sphere_2_3) -> 
      (let rec m_3 = ((vecsub__d3 _lh_sphereintersect_arg1_3) _lh_sphereintersect_Sphere_0_3) in
        (let rec bm_3 = ((vecdot__d0 m_3) _lh_sphereintersect_arg2_3) in
          (let rec m2_3 = ((vecdot__d1 m_3) m_3) in
            (let rec disc_5 = (((bm_3 *. bm_3) -. m2_3) +. (_lh_sphereintersect_Sphere_1_3 *. _lh_sphereintersect_Sphere_1_3)) in
              (let rec slo_3 = ((0.0 -. bm_3) -. (sqrt disc_5)) in
                (let rec shi_3 = ((0.0 -. bm_3) +. (sqrt disc_5)) in
                  (if (disc_5 < 0.0) then
                    (let rec _lh_trace_LH_P2_1_1_2 = 0.0 in
                      (let rec _lh_trace_LH_P2_0_1_2 = false in
                        (fun _lh_trace_LH_C_0_1_2 _lh_trace_LH_C_1_1_2 sphmap_1_2 -> 
                          (if _lh_trace_LH_P2_0_1_2 then
                            (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_2, _lh_trace_LH_C_0_1_2)), (sphmap_1_2 _lh_trace_LH_C_1_1_2)))
                          else
                            (sphmap_1_2 _lh_trace_LH_C_1_1_2)))))
                  else
                    (if (slo_3 < 0.0) then
                      (if (shi_3 < 0.0) then
                        (let rec _lh_trace_LH_P2_1_1_3 = 0.0 in
                          (let rec _lh_trace_LH_P2_0_1_3 = false in
                            (fun _lh_trace_LH_C_0_1_3 _lh_trace_LH_C_1_1_3 sphmap_1_3 -> 
                              (if _lh_trace_LH_P2_0_1_3 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_3, _lh_trace_LH_C_0_1_3)), (sphmap_1_3 _lh_trace_LH_C_1_1_3)))
                              else
                                (sphmap_1_3 _lh_trace_LH_C_1_1_3)))))
                      else
                        (let rec _lh_trace_LH_P2_1_1_4 = shi_3 in
                          (let rec _lh_trace_LH_P2_0_1_4 = true in
                            (fun _lh_trace_LH_C_0_1_4 _lh_trace_LH_C_1_1_4 sphmap_1_4 -> 
                              (if _lh_trace_LH_P2_0_1_4 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_4, _lh_trace_LH_C_0_1_4)), (sphmap_1_4 _lh_trace_LH_C_1_1_4)))
                              else
                                (sphmap_1_4 _lh_trace_LH_C_1_1_4))))))
                    else
                      (let rec _lh_trace_LH_P2_1_1_5 = slo_3 in
                        (let rec _lh_trace_LH_P2_0_1_5 = true in
                          (fun _lh_trace_LH_C_0_1_5 _lh_trace_LH_C_1_1_5 sphmap_1_5 -> 
                            (if _lh_trace_LH_P2_0_1_5 then
                              (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_5, _lh_trace_LH_C_0_1_5)), (sphmap_1_5 _lh_trace_LH_C_1_1_5)))
                            else
                              (sphmap_1_5 _lh_trace_LH_C_1_1_5)))))))))))))
    | _ -> 
      (failwith "error"))
and sphereintersect__d1 _lh_sphereintersect_arg1_0 _lh_sphereintersect_arg2_0 _lh_sphereintersect_arg3_0 =
  (match _lh_sphereintersect_arg3_0 with
    | `Sphere(_lh_sphereintersect_Sphere_0_0, _lh_sphereintersect_Sphere_1_0, _lh_sphereintersect_Sphere_2_0) -> 
      (let rec m_0 = ((vecsub__d4 _lh_sphereintersect_arg1_0) _lh_sphereintersect_Sphere_0_0) in
        (let rec bm_0 = ((vecdot__d5 m_0) _lh_sphereintersect_arg2_0) in
          (let rec m2_0 = ((vecdot__d6 m_0) m_0) in
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
      (failwith "error"))
and sphereintersect__d2 _lh_sphereintersect_arg1_2 _lh_sphereintersect_arg2_2 _lh_sphereintersect_arg3_2 =
  (match _lh_sphereintersect_arg3_2 with
    | `Sphere(_lh_sphereintersect_Sphere_0_2, _lh_sphereintersect_Sphere_1_2, _lh_sphereintersect_Sphere_2_2) -> 
      (let rec m_2 = ((vecsub__d6 _lh_sphereintersect_arg1_2) _lh_sphereintersect_Sphere_0_2) in
        (let rec bm_2 = ((vecdot__d8 m_2) _lh_sphereintersect_arg2_2) in
          (let rec m2_2 = ((vecdot__d9 m_2) m_2) in
            (let rec disc_2 = (((bm_2 *. bm_2) -. m2_2) +. (_lh_sphereintersect_Sphere_1_2 *. _lh_sphereintersect_Sphere_1_2)) in
              (let rec slo_2 = ((0.0 -. bm_2) -. (sqrt disc_2)) in
                (let rec shi_2 = ((0.0 -. bm_2) +. (sqrt disc_2)) in
                  (if (disc_2 < 0.0) then
                    (let rec _lh_trace_LH_P2_1_8 = 0.0 in
                      (let rec _lh_trace_LH_P2_0_8 = false in
                        (fun _lh_trace_LH_C_0_8 _lh_trace_LH_C_1_8 sphmap_8 -> 
                          (if _lh_trace_LH_P2_0_8 then
                            (`LH_C((`LH_P2(_lh_trace_LH_P2_1_8, _lh_trace_LH_C_0_8)), (sphmap_8 _lh_trace_LH_C_1_8)))
                          else
                            (sphmap_8 _lh_trace_LH_C_1_8)))))
                  else
                    (if (slo_2 < 0.0) then
                      (if (shi_2 < 0.0) then
                        (let rec _lh_trace_LH_P2_1_9 = 0.0 in
                          (let rec _lh_trace_LH_P2_0_9 = false in
                            (fun _lh_trace_LH_C_0_9 _lh_trace_LH_C_1_9 sphmap_9 -> 
                              (if _lh_trace_LH_P2_0_9 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_9, _lh_trace_LH_C_0_9)), (sphmap_9 _lh_trace_LH_C_1_9)))
                              else
                                (sphmap_9 _lh_trace_LH_C_1_9)))))
                      else
                        (let rec _lh_trace_LH_P2_1_1_0 = shi_2 in
                          (let rec _lh_trace_LH_P2_0_1_0 = true in
                            (fun _lh_trace_LH_C_0_1_0 _lh_trace_LH_C_1_1_0 sphmap_1_0 -> 
                              (if _lh_trace_LH_P2_0_1_0 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_0, _lh_trace_LH_C_0_1_0)), (sphmap_1_0 _lh_trace_LH_C_1_1_0)))
                              else
                                (sphmap_1_0 _lh_trace_LH_C_1_1_0))))))
                    else
                      (let rec _lh_trace_LH_P2_1_1_1 = slo_2 in
                        (let rec _lh_trace_LH_P2_0_1_1 = true in
                          (fun _lh_trace_LH_C_0_1_1 _lh_trace_LH_C_1_1_1 sphmap_1_1 -> 
                            (if _lh_trace_LH_P2_0_1_1 then
                              (`LH_C((`LH_P2(_lh_trace_LH_P2_1_1_1, _lh_trace_LH_C_0_1_1)), (sphmap_1_1 _lh_trace_LH_C_1_1_1)))
                            else
                              (sphmap_1_1 _lh_trace_LH_C_1_1_1)))))))))))))
    | _ -> 
      (failwith "error"))
and sphereintersect__d3 _lh_sphereintersect_arg1_1 _lh_sphereintersect_arg2_1 _lh_sphereintersect_arg3_1 =
  (match _lh_sphereintersect_arg3_1 with
    | `Sphere(_lh_sphereintersect_Sphere_0_1, _lh_sphereintersect_Sphere_1_1, _lh_sphereintersect_Sphere_2_1) -> 
      (let rec m_1 = ((vecsub__d7 _lh_sphereintersect_arg1_1) _lh_sphereintersect_Sphere_0_1) in
        (let rec bm_1 = ((vecdot__d1_d1 m_1) _lh_sphereintersect_arg2_1) in
          (let rec m2_1 = ((vecdot__d1_d2 m_1) m_1) in
            (let rec disc_1 = (((bm_1 *. bm_1) -. m2_1) +. (_lh_sphereintersect_Sphere_1_1 *. _lh_sphereintersect_Sphere_1_1)) in
              (let rec slo_1 = ((0.0 -. bm_1) -. (sqrt disc_1)) in
                (let rec shi_1 = ((0.0 -. bm_1) +. (sqrt disc_1)) in
                  (if (disc_1 < 0.0) then
                    (let rec _lh_trace_LH_P2_1_4 = 0.0 in
                      (let rec _lh_trace_LH_P2_0_4 = false in
                        (fun _lh_trace_LH_C_0_4 _lh_trace_LH_C_1_4 sphmap_4 -> 
                          (if _lh_trace_LH_P2_0_4 then
                            (`LH_C((`LH_P2(_lh_trace_LH_P2_1_4, _lh_trace_LH_C_0_4)), (sphmap_4 _lh_trace_LH_C_1_4)))
                          else
                            (sphmap_4 _lh_trace_LH_C_1_4)))))
                  else
                    (if (slo_1 < 0.0) then
                      (if (shi_1 < 0.0) then
                        (let rec _lh_trace_LH_P2_1_5 = 0.0 in
                          (let rec _lh_trace_LH_P2_0_5 = false in
                            (fun _lh_trace_LH_C_0_5 _lh_trace_LH_C_1_5 sphmap_5 -> 
                              (if _lh_trace_LH_P2_0_5 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_5, _lh_trace_LH_C_0_5)), (sphmap_5 _lh_trace_LH_C_1_5)))
                              else
                                (sphmap_5 _lh_trace_LH_C_1_5)))))
                      else
                        (let rec _lh_trace_LH_P2_1_6 = shi_1 in
                          (let rec _lh_trace_LH_P2_0_6 = true in
                            (fun _lh_trace_LH_C_0_6 _lh_trace_LH_C_1_6 sphmap_6 -> 
                              (if _lh_trace_LH_P2_0_6 then
                                (`LH_C((`LH_P2(_lh_trace_LH_P2_1_6, _lh_trace_LH_C_0_6)), (sphmap_6 _lh_trace_LH_C_1_6)))
                              else
                                (sphmap_6 _lh_trace_LH_C_1_6))))))
                    else
                      (let rec _lh_trace_LH_P2_1_7 = slo_1 in
                        (let rec _lh_trace_LH_P2_0_7 = true in
                          (fun _lh_trace_LH_C_0_7 _lh_trace_LH_C_1_7 sphmap_7 -> 
                            (if _lh_trace_LH_P2_0_7 then
                              (`LH_C((`LH_P2(_lh_trace_LH_P2_1_7, _lh_trace_LH_C_0_7)), (sphmap_7 _lh_trace_LH_C_1_7)))
                            else
                              (sphmap_7 _lh_trace_LH_C_1_7)))))))))))))
    | _ -> 
      (failwith "error"))
and spherenormal__d0 _lh_spherenormal_arg1_0 _lh_spherenormal_arg2_0 =
  (match _lh_spherenormal_arg2_0 with
    | `Sphere(_lh_spherenormal_Sphere_0_0, _lh_spherenormal_Sphere_1_0, _lh_spherenormal_Sphere_2_0) -> 
      ((vecscale__d1_d0 ((vecsub__d5 _lh_spherenormal_arg1_0) _lh_spherenormal_Sphere_0_0)) (1.0 /. _lh_spherenormal_Sphere_1_0))
    | _ -> 
      (failwith "error"))
and testSphere_nofib__d0 _lh_testSphere_nofib_arg1_0 =
  (run__d0 _lh_testSphere_nofib_arg1_0)
and testlights__d0 _lh_testlights_arg1_0 =
  (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (fun f_4 f_5 i_3 -> 
    i_3) in
    (let rec h_8 = (`Point((`LH_P3((0.0 -. 3.0), 1.0, 5.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_6 -> 
        (let rec t_1_1 = ((map__d1 f_6) t_1_0) in
          (let rec h_9 = (f_6 h_8) in
            (fun f_7 i_4 -> 
              ((f_7 h_9) (((foldr__d4 f_7) i_4) t_1_1)))))))) in
    (let rec h_1_0 = (`Point((`LH_P3(1.0, (0.0 -. 4.0), 4.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_8 -> 
        (let rec t_1_2 = ((map__d1 f_8) t_9) in
          (let rec h_1_1 = (f_8 h_1_0) in
            (fun f_9 i_5 -> 
              ((f_9 h_1_1) (((foldr__d4 f_9) i_5) t_1_2)))))))) in
    (let rec h_1_2 = (`Point((`LH_P3(4.0, 3.0, 2.0)), (`LH_P3(0.288675, 0.288675, 0.288675)))) in
      (fun f_1_0 -> 
        (let rec t_1_3 = ((map__d1 f_1_0) t_8) in
          (let rec h_1_3 = (f_1_0 h_1_2) in
            (fun f_1_1 i_6 -> 
              ((f_1_1 h_1_3) (((foldr__d4 f_1_1) i_6) t_1_3))))))))
and testspheres__d0 _lh_testspheres_arg1_2 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d0 0))), (`LH_N)))))))))))))))))))))
and testspheres__d1 _lh_testspheres_arg1_0 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d1_d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d1_d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d1_d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d1_d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d1_d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d1_d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d1_d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d1_d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d1_d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d1_d0 0))), (`LH_N)))))))))))))))))))))
and testspheres__d2 _lh_testspheres_arg1_3 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d2_d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d2_d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d2_d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d2_d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d2_d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d2_d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d2_d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d2_d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d2_d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d2_d0 0))), (`LH_N)))))))))))))))))))))
and testspheres__d3 _lh_testspheres_arg1_1 =
  (`LH_C((`Sphere((`LH_P3(0.0, 0.0, 0.0)), 0.5, (s2__d3_d9 0))), (`LH_C((`Sphere((`LH_P3(0.272166, 0.272166, 0.544331)), 0.166667, (s2__d3_d8 0))), (`LH_C((`Sphere((`LH_P3(0.643951, 0.172546, 0.0)), 0.166667, (s2__d3_d7 0))), (`LH_C((`Sphere((`LH_P3(0.172546, 0.643951, 0.0)), 0.166667, (s2__d3_d6 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.371785), 0.0996195, 0.544331)), 0.166667, (s2__d3_d5 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.471405), 0.471405, 0.0)), 0.166667, (s2__d3_d4 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.643951), (0.0 -. 0.172546), 0.0)), 0.166667, (s2__d3_d3 0))), (`LH_C((`Sphere((`LH_P3(0.0996195, (0.0 -. 0.371785), 0.544331)), 0.166667, (s2__d3_d2 0))), (`LH_C((`Sphere((`LH_P3((0.0 -. 0.172546), (0.0 -. 0.643951), 0.0)), 0.166667, (s2__d3_d1 0))), (`LH_C((`Sphere((`LH_P3(0.471405, (0.0 -. 0.471405), 0.0)), 0.166667, (s2__d3_d0 0))), (`LH_N)))))))))))))))))))))
and trace__d0 _lh_trace_arg1_0 _lh_trace_arg2_0 _lh_trace_arg3_0 =
  (let rec f_2_3 = (fun d1s1_0 d2s2_0 -> 
    (let rec _lh_matchIdent_1_4 = d1s1_0 in
      (match _lh_matchIdent_1_4 with
        | `LH_P2(_lh_trace_LH_P2_0_1_6, _lh_trace_LH_P2_1_1_6) -> 
          (let rec _lh_matchIdent_1_5 = d2s2_0 in
            (match _lh_matchIdent_1_5 with
              | `LH_P2(_lh_trace_LH_P2_0_1_7, _lh_trace_LH_P2_1_1_7) -> 
                (if (_lh_trace_LH_P2_0_1_6 < _lh_trace_LH_P2_0_1_7) then
                  (`LH_P2(_lh_trace_LH_P2_0_1_6, _lh_trace_LH_P2_1_1_6))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_1_7, _lh_trace_LH_P2_1_1_7)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_1_6 = (fun xss_0 -> 
      (let rec _lh_matchIdent_1_6 = xss_0 in
        (match _lh_matchIdent_1_6 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1_6, _lh_trace_LH_C_1_1_6) -> 
            (let rec _lh_matchIdent_1_7 = (((sphereintersect__d0 _lh_trace_arg2_0) _lh_trace_arg3_0) _lh_trace_LH_C_0_1_6) in
              (((_lh_matchIdent_1_7 _lh_trace_LH_C_0_1_6) _lh_trace_LH_C_1_1_6) sphmap_1_6))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_0 = (sphmap_1_6 _lh_trace_arg1_0) in
        (if (null__d0 dists_0) then
          (let rec _lh_shadowed_LH_P3_0_0 = false in
            (fun _lh_shadowed_arg3_1 -> 
              (if (not _lh_shadowed_LH_P3_0_0) then
                (let rec _lh_lightray_LH_P2_1_0 = _lh_shadowed_arg3_1 in
                  (let rec _lh_lightray_LH_P2_0_2 = false in
                    (fun _lh_lightray_LH_P2_0_3 _lh_lightray_arg4_3 _lh_lightray_arg5_3 cosangle_2 -> 
                      (if _lh_lightray_LH_P2_0_2 then
                        (let rec _lh_vecadd_LH_P3_2_3_5 = 0.0 in
                          (let rec _lh_vecadd_LH_P3_1_3_5 = 0.0 in
                            (let rec _lh_vecadd_LH_P3_0_3_5 = 0.0 in
                              (fun _lh_vecadd_arg2_1_9 -> 
                                (match _lh_vecadd_arg2_1_9 with
                                  | `LH_P3(_lh_vecadd_LH_P3_0_3_6, _lh_vecadd_LH_P3_1_3_6, _lh_vecadd_LH_P3_2_3_6) -> 
                                    (`LH_P3((_lh_vecadd_LH_P3_0_3_5 +. _lh_vecadd_LH_P3_0_3_6), (_lh_vecadd_LH_P3_1_3_5 +. _lh_vecadd_LH_P3_1_3_6), (_lh_vecadd_LH_P3_2_3_5 +. _lh_vecadd_LH_P3_2_3_6)))
                                  | _ -> 
                                    (failwith "error"))))))
                      else
                        (let rec diff_1 = (diffusesurf__d0 _lh_lightray_arg5_3) in
                          (let rec spow_0 = (specpowsurf__d0 _lh_lightray_arg5_3) in
                            (if (cosangle_2 <= 0.0) then
                              (let rec bodycol_0 = (bodysurf__d1 _lh_lightray_arg5_3) in
                                (let rec cosalpha_0 = (0.0 -. ((vecdot__d3 _lh_lightray_arg4_3) _lh_lightray_LH_P2_0_3)) in
                                  (let rec diffcont_0 = ((vecmult__d0 ((vecscale__d5 diff_1) (0.0 -. cosangle_2))) _lh_lightray_LH_P2_1_0) in
                                    (let rec speccont_0 = (if (cosalpha_0 <= 0.0) then
                                      (let rec _lh_vecadd_LH_P3_2_3_7 = 0.0 in
                                        (let rec _lh_vecadd_LH_P3_1_3_7 = 0.0 in
                                          (let rec _lh_vecadd_LH_P3_0_3_7 = 0.0 in
                                            (fun _lh_vecadd_LH_P3_0_3_8 _lh_vecadd_LH_P3_1_3_8 _lh_vecadd_LH_P3_2_3_8 -> 
                                              (let rec _lh_vecadd_LH_P3_2_3_9 = (_lh_vecadd_LH_P3_2_3_8 +. _lh_vecadd_LH_P3_2_3_7) in
                                                (let rec _lh_vecadd_LH_P3_1_3_9 = (_lh_vecadd_LH_P3_1_3_8 +. _lh_vecadd_LH_P3_1_3_7) in
                                                  (let rec _lh_vecadd_LH_P3_0_3_9 = (_lh_vecadd_LH_P3_0_3_8 +. _lh_vecadd_LH_P3_0_3_7) in
                                                    (fun _lh_vecadd_arg2_2_0 -> 
                                                      (match _lh_vecadd_arg2_2_0 with
                                                        | `LH_P3(_lh_vecadd_LH_P3_0_4_0, _lh_vecadd_LH_P3_1_4_0, _lh_vecadd_LH_P3_2_4_0) -> 
                                                          (`LH_P3((_lh_vecadd_LH_P3_0_3_9 +. _lh_vecadd_LH_P3_0_4_0), (_lh_vecadd_LH_P3_1_3_9 +. _lh_vecadd_LH_P3_1_4_0), (_lh_vecadd_LH_P3_2_3_9 +. _lh_vecadd_LH_P3_2_4_0)))
                                                        | _ -> 
                                                          (failwith "error"))))))))))
                                    else
                                      ((vecmult__d1 ((vecscale__d6 bodycol_0) (cosalpha_0 ** spow_0))) _lh_lightray_LH_P2_1_0)) in
                                      ((vecadd__d2 diffcont_0) speccont_0)))))
                            else
                              (let rec spec_0 = (specularsurf__d0 _lh_lightray_arg5_3) in
                                (let rec cosalpha_1 = ((vecdot__d4 _lh_lightray_arg4_3) _lh_lightray_LH_P2_0_3) in
                                  (let rec diffcont_1 = ((vecmult__d2 ((vecscale__d7 diff_1) cosangle_2)) _lh_lightray_LH_P2_1_0) in
                                    (let rec speccont_1 = (if (cosalpha_1 <= 0.0) then
                                      (let rec _lh_vecadd_LH_P3_2_4_1 = 0.0 in
                                        (let rec _lh_vecadd_LH_P3_1_4_1 = 0.0 in
                                          (let rec _lh_vecadd_LH_P3_0_4_1 = 0.0 in
                                            (fun _lh_vecadd_LH_P3_0_4_2 _lh_vecadd_LH_P3_1_4_2 _lh_vecadd_LH_P3_2_4_2 -> 
                                              (let rec _lh_vecadd_LH_P3_2_4_3 = (_lh_vecadd_LH_P3_2_4_2 +. _lh_vecadd_LH_P3_2_4_1) in
                                                (let rec _lh_vecadd_LH_P3_1_4_3 = (_lh_vecadd_LH_P3_1_4_2 +. _lh_vecadd_LH_P3_1_4_1) in
                                                  (let rec _lh_vecadd_LH_P3_0_4_3 = (_lh_vecadd_LH_P3_0_4_2 +. _lh_vecadd_LH_P3_0_4_1) in
                                                    (fun _lh_vecadd_arg2_2_1 -> 
                                                      (match _lh_vecadd_arg2_2_1 with
                                                        | `LH_P3(_lh_vecadd_LH_P3_0_4_4, _lh_vecadd_LH_P3_1_4_4, _lh_vecadd_LH_P3_2_4_4) -> 
                                                          (`LH_P3((_lh_vecadd_LH_P3_0_4_3 +. _lh_vecadd_LH_P3_0_4_4), (_lh_vecadd_LH_P3_1_4_3 +. _lh_vecadd_LH_P3_1_4_4), (_lh_vecadd_LH_P3_2_4_3 +. _lh_vecadd_LH_P3_2_4_4)))
                                                        | _ -> 
                                                          (failwith "error"))))))))))
                                    else
                                      ((vecmult__d3 ((vecscale__d8 spec_0) (cosalpha_1 ** spow_0))) _lh_lightray_LH_P2_1_0)) in
                                      ((vecadd__d3 diffcont_1) speccont_1))))))))))))
              else
                (let rec _lh_lightray_LH_P2_1_1 = _lh_shadowed_arg3_1 in
                  (let rec _lh_lightray_LH_P2_0_4 = true in
                    (fun _lh_lightray_LH_P2_0_5 _lh_lightray_arg4_4 _lh_lightray_arg5_4 cosangle_3 -> 
                      (if _lh_lightray_LH_P2_0_4 then
                        (let rec _lh_vecadd_LH_P3_2_4_5 = 0.0 in
                          (let rec _lh_vecadd_LH_P3_1_4_5 = 0.0 in
                            (let rec _lh_vecadd_LH_P3_0_4_5 = 0.0 in
                              (fun _lh_vecadd_arg2_2_2 -> 
                                (match _lh_vecadd_arg2_2_2 with
                                  | `LH_P3(_lh_vecadd_LH_P3_0_4_6, _lh_vecadd_LH_P3_1_4_6, _lh_vecadd_LH_P3_2_4_6) -> 
                                    (`LH_P3((_lh_vecadd_LH_P3_0_4_5 +. _lh_vecadd_LH_P3_0_4_6), (_lh_vecadd_LH_P3_1_4_5 +. _lh_vecadd_LH_P3_1_4_6), (_lh_vecadd_LH_P3_2_4_5 +. _lh_vecadd_LH_P3_2_4_6)))
                                  | _ -> 
                                    (failwith "error"))))))
                      else
                        (let rec diff_2 = (diffusesurf__d0 _lh_lightray_arg5_4) in
                          (let rec spow_1 = (specpowsurf__d0 _lh_lightray_arg5_4) in
                            (if (cosangle_3 <= 0.0) then
                              (let rec bodycol_1 = (bodysurf__d1 _lh_lightray_arg5_4) in
                                (let rec cosalpha_2 = (0.0 -. ((vecdot__d3 _lh_lightray_arg4_4) _lh_lightray_LH_P2_0_5)) in
                                  (let rec diffcont_2 = ((vecmult__d0 ((vecscale__d5 diff_2) (0.0 -. cosangle_3))) _lh_lightray_LH_P2_1_1) in
                                    (let rec speccont_2 = (if (cosalpha_2 <= 0.0) then
                                      (let rec _lh_vecadd_LH_P3_2_4_7 = 0.0 in
                                        (let rec _lh_vecadd_LH_P3_1_4_7 = 0.0 in
                                          (let rec _lh_vecadd_LH_P3_0_4_7 = 0.0 in
                                            (fun _lh_vecadd_LH_P3_0_4_8 _lh_vecadd_LH_P3_1_4_8 _lh_vecadd_LH_P3_2_4_8 -> 
                                              (let rec _lh_vecadd_LH_P3_2_4_9 = (_lh_vecadd_LH_P3_2_4_8 +. _lh_vecadd_LH_P3_2_4_7) in
                                                (let rec _lh_vecadd_LH_P3_1_4_9 = (_lh_vecadd_LH_P3_1_4_8 +. _lh_vecadd_LH_P3_1_4_7) in
                                                  (let rec _lh_vecadd_LH_P3_0_4_9 = (_lh_vecadd_LH_P3_0_4_8 +. _lh_vecadd_LH_P3_0_4_7) in
                                                    (fun _lh_vecadd_arg2_2_3 -> 
                                                      (match _lh_vecadd_arg2_2_3 with
                                                        | `LH_P3(_lh_vecadd_LH_P3_0_5_0, _lh_vecadd_LH_P3_1_5_0, _lh_vecadd_LH_P3_2_5_0) -> 
                                                          (`LH_P3((_lh_vecadd_LH_P3_0_4_9 +. _lh_vecadd_LH_P3_0_5_0), (_lh_vecadd_LH_P3_1_4_9 +. _lh_vecadd_LH_P3_1_5_0), (_lh_vecadd_LH_P3_2_4_9 +. _lh_vecadd_LH_P3_2_5_0)))
                                                        | _ -> 
                                                          (failwith "error"))))))))))
                                    else
                                      ((vecmult__d1 ((vecscale__d6 bodycol_1) (cosalpha_2 ** spow_1))) _lh_lightray_LH_P2_1_1)) in
                                      ((vecadd__d2 diffcont_2) speccont_2)))))
                            else
                              (let rec spec_1 = (specularsurf__d0 _lh_lightray_arg5_4) in
                                (let rec cosalpha_3 = ((vecdot__d4 _lh_lightray_arg4_4) _lh_lightray_LH_P2_0_5) in
                                  (let rec diffcont_3 = ((vecmult__d2 ((vecscale__d7 diff_2) cosangle_3)) _lh_lightray_LH_P2_1_1) in
                                    (let rec speccont_3 = (if (cosalpha_3 <= 0.0) then
                                      (let rec _lh_vecadd_LH_P3_2_5_1 = 0.0 in
                                        (let rec _lh_vecadd_LH_P3_1_5_1 = 0.0 in
                                          (let rec _lh_vecadd_LH_P3_0_5_1 = 0.0 in
                                            (fun _lh_vecadd_LH_P3_0_5_2 _lh_vecadd_LH_P3_1_5_2 _lh_vecadd_LH_P3_2_5_2 -> 
                                              (let rec _lh_vecadd_LH_P3_2_5_3 = (_lh_vecadd_LH_P3_2_5_2 +. _lh_vecadd_LH_P3_2_5_1) in
                                                (let rec _lh_vecadd_LH_P3_1_5_3 = (_lh_vecadd_LH_P3_1_5_2 +. _lh_vecadd_LH_P3_1_5_1) in
                                                  (let rec _lh_vecadd_LH_P3_0_5_3 = (_lh_vecadd_LH_P3_0_5_2 +. _lh_vecadd_LH_P3_0_5_1) in
                                                    (fun _lh_vecadd_arg2_2_4 -> 
                                                      (match _lh_vecadd_arg2_2_4 with
                                                        | `LH_P3(_lh_vecadd_LH_P3_0_5_4, _lh_vecadd_LH_P3_1_5_4, _lh_vecadd_LH_P3_2_5_4) -> 
                                                          (`LH_P3((_lh_vecadd_LH_P3_0_5_3 +. _lh_vecadd_LH_P3_0_5_4), (_lh_vecadd_LH_P3_1_5_3 +. _lh_vecadd_LH_P3_1_5_4), (_lh_vecadd_LH_P3_2_5_3 +. _lh_vecadd_LH_P3_2_5_4)))
                                                        | _ -> 
                                                          (failwith "error"))))))))))
                                    else
                                      ((vecmult__d3 ((vecscale__d8 spec_1) (cosalpha_3 ** spow_1))) _lh_lightray_LH_P2_1_1)) in
                                      ((vecadd__d3 diffcont_3) speccont_3)))))))))))))))
        else
          (let rec _lh_matchIdent_1_8 = (((foldr__d1 f_2_3) (head__d5 dists_0)) (tail__d0 dists_0)) in
            (match _lh_matchIdent_1_8 with
              | `LH_P2(_lh_trace_LH_P2_0_1_8, _lh_trace_LH_P2_1_1_8) -> 
                (let rec _lh_shadowed_LH_P3_0_1 = true in
                  (fun _lh_shadowed_arg3_2 -> 
                    (if (not _lh_shadowed_LH_P3_0_1) then
                      (let rec _lh_lightray_LH_P2_1_2 = _lh_shadowed_arg3_2 in
                        (let rec _lh_lightray_LH_P2_0_6 = false in
                          (fun _lh_lightray_LH_P2_0_7 _lh_lightray_arg4_5 _lh_lightray_arg5_5 cosangle_4 -> 
                            (if _lh_lightray_LH_P2_0_6 then
                              (let rec _lh_vecadd_LH_P3_2_5_5 = 0.0 in
                                (let rec _lh_vecadd_LH_P3_1_5_5 = 0.0 in
                                  (let rec _lh_vecadd_LH_P3_0_5_5 = 0.0 in
                                    (fun _lh_vecadd_arg2_2_5 -> 
                                      (match _lh_vecadd_arg2_2_5 with
                                        | `LH_P3(_lh_vecadd_LH_P3_0_5_6, _lh_vecadd_LH_P3_1_5_6, _lh_vecadd_LH_P3_2_5_6) -> 
                                          (`LH_P3((_lh_vecadd_LH_P3_0_5_5 +. _lh_vecadd_LH_P3_0_5_6), (_lh_vecadd_LH_P3_1_5_5 +. _lh_vecadd_LH_P3_1_5_6), (_lh_vecadd_LH_P3_2_5_5 +. _lh_vecadd_LH_P3_2_5_6)))
                                        | _ -> 
                                          (failwith "error"))))))
                            else
                              (let rec diff_3 = (diffusesurf__d0 _lh_lightray_arg5_5) in
                                (let rec spow_2 = (specpowsurf__d0 _lh_lightray_arg5_5) in
                                  (if (cosangle_4 <= 0.0) then
                                    (let rec bodycol_2 = (bodysurf__d1 _lh_lightray_arg5_5) in
                                      (let rec cosalpha_4 = (0.0 -. ((vecdot__d3 _lh_lightray_arg4_5) _lh_lightray_LH_P2_0_7)) in
                                        (let rec diffcont_4 = ((vecmult__d0 ((vecscale__d5 diff_3) (0.0 -. cosangle_4))) _lh_lightray_LH_P2_1_2) in
                                          (let rec speccont_4 = (if (cosalpha_4 <= 0.0) then
                                            (let rec _lh_vecadd_LH_P3_2_5_7 = 0.0 in
                                              (let rec _lh_vecadd_LH_P3_1_5_7 = 0.0 in
                                                (let rec _lh_vecadd_LH_P3_0_5_7 = 0.0 in
                                                  (fun _lh_vecadd_LH_P3_0_5_8 _lh_vecadd_LH_P3_1_5_8 _lh_vecadd_LH_P3_2_5_8 -> 
                                                    (let rec _lh_vecadd_LH_P3_2_5_9 = (_lh_vecadd_LH_P3_2_5_8 +. _lh_vecadd_LH_P3_2_5_7) in
                                                      (let rec _lh_vecadd_LH_P3_1_5_9 = (_lh_vecadd_LH_P3_1_5_8 +. _lh_vecadd_LH_P3_1_5_7) in
                                                        (let rec _lh_vecadd_LH_P3_0_5_9 = (_lh_vecadd_LH_P3_0_5_8 +. _lh_vecadd_LH_P3_0_5_7) in
                                                          (fun _lh_vecadd_arg2_2_6 -> 
                                                            (match _lh_vecadd_arg2_2_6 with
                                                              | `LH_P3(_lh_vecadd_LH_P3_0_6_0, _lh_vecadd_LH_P3_1_6_0, _lh_vecadd_LH_P3_2_6_0) -> 
                                                                (`LH_P3((_lh_vecadd_LH_P3_0_5_9 +. _lh_vecadd_LH_P3_0_6_0), (_lh_vecadd_LH_P3_1_5_9 +. _lh_vecadd_LH_P3_1_6_0), (_lh_vecadd_LH_P3_2_5_9 +. _lh_vecadd_LH_P3_2_6_0)))
                                                              | _ -> 
                                                                (failwith "error"))))))))))
                                          else
                                            ((vecmult__d1 ((vecscale__d6 bodycol_2) (cosalpha_4 ** spow_2))) _lh_lightray_LH_P2_1_2)) in
                                            ((vecadd__d2 diffcont_4) speccont_4)))))
                                  else
                                    (let rec spec_2 = (specularsurf__d0 _lh_lightray_arg5_5) in
                                      (let rec cosalpha_5 = ((vecdot__d4 _lh_lightray_arg4_5) _lh_lightray_LH_P2_0_7) in
                                        (let rec diffcont_5 = ((vecmult__d2 ((vecscale__d7 diff_3) cosangle_4)) _lh_lightray_LH_P2_1_2) in
                                          (let rec speccont_5 = (if (cosalpha_5 <= 0.0) then
                                            (let rec _lh_vecadd_LH_P3_2_6_1 = 0.0 in
                                              (let rec _lh_vecadd_LH_P3_1_6_1 = 0.0 in
                                                (let rec _lh_vecadd_LH_P3_0_6_1 = 0.0 in
                                                  (fun _lh_vecadd_LH_P3_0_6_2 _lh_vecadd_LH_P3_1_6_2 _lh_vecadd_LH_P3_2_6_2 -> 
                                                    (let rec _lh_vecadd_LH_P3_2_6_3 = (_lh_vecadd_LH_P3_2_6_2 +. _lh_vecadd_LH_P3_2_6_1) in
                                                      (let rec _lh_vecadd_LH_P3_1_6_3 = (_lh_vecadd_LH_P3_1_6_2 +. _lh_vecadd_LH_P3_1_6_1) in
                                                        (let rec _lh_vecadd_LH_P3_0_6_3 = (_lh_vecadd_LH_P3_0_6_2 +. _lh_vecadd_LH_P3_0_6_1) in
                                                          (fun _lh_vecadd_arg2_2_7 -> 
                                                            (match _lh_vecadd_arg2_2_7 with
                                                              | `LH_P3(_lh_vecadd_LH_P3_0_6_4, _lh_vecadd_LH_P3_1_6_4, _lh_vecadd_LH_P3_2_6_4) -> 
                                                                (`LH_P3((_lh_vecadd_LH_P3_0_6_3 +. _lh_vecadd_LH_P3_0_6_4), (_lh_vecadd_LH_P3_1_6_3 +. _lh_vecadd_LH_P3_1_6_4), (_lh_vecadd_LH_P3_2_6_3 +. _lh_vecadd_LH_P3_2_6_4)))
                                                              | _ -> 
                                                                (failwith "error"))))))))))
                                          else
                                            ((vecmult__d3 ((vecscale__d8 spec_2) (cosalpha_5 ** spow_2))) _lh_lightray_LH_P2_1_2)) in
                                            ((vecadd__d3 diffcont_5) speccont_5))))))))))))
                    else
                      (let rec _lh_lightray_LH_P2_1_3 = _lh_shadowed_arg3_2 in
                        (let rec _lh_lightray_LH_P2_0_8 = true in
                          (fun _lh_lightray_LH_P2_0_9 _lh_lightray_arg4_6 _lh_lightray_arg5_6 cosangle_5 -> 
                            (if _lh_lightray_LH_P2_0_8 then
                              (let rec _lh_vecadd_LH_P3_2_6_5 = 0.0 in
                                (let rec _lh_vecadd_LH_P3_1_6_5 = 0.0 in
                                  (let rec _lh_vecadd_LH_P3_0_6_5 = 0.0 in
                                    (fun _lh_vecadd_arg2_2_8 -> 
                                      (match _lh_vecadd_arg2_2_8 with
                                        | `LH_P3(_lh_vecadd_LH_P3_0_6_6, _lh_vecadd_LH_P3_1_6_6, _lh_vecadd_LH_P3_2_6_6) -> 
                                          (`LH_P3((_lh_vecadd_LH_P3_0_6_5 +. _lh_vecadd_LH_P3_0_6_6), (_lh_vecadd_LH_P3_1_6_5 +. _lh_vecadd_LH_P3_1_6_6), (_lh_vecadd_LH_P3_2_6_5 +. _lh_vecadd_LH_P3_2_6_6)))
                                        | _ -> 
                                          (failwith "error"))))))
                            else
                              (let rec diff_4 = (diffusesurf__d0 _lh_lightray_arg5_6) in
                                (let rec spow_3 = (specpowsurf__d0 _lh_lightray_arg5_6) in
                                  (if (cosangle_5 <= 0.0) then
                                    (let rec bodycol_3 = (bodysurf__d1 _lh_lightray_arg5_6) in
                                      (let rec cosalpha_6 = (0.0 -. ((vecdot__d3 _lh_lightray_arg4_6) _lh_lightray_LH_P2_0_9)) in
                                        (let rec diffcont_6 = ((vecmult__d0 ((vecscale__d5 diff_4) (0.0 -. cosangle_5))) _lh_lightray_LH_P2_1_3) in
                                          (let rec speccont_6 = (if (cosalpha_6 <= 0.0) then
                                            (let rec _lh_vecadd_LH_P3_2_6_7 = 0.0 in
                                              (let rec _lh_vecadd_LH_P3_1_6_7 = 0.0 in
                                                (let rec _lh_vecadd_LH_P3_0_6_7 = 0.0 in
                                                  (fun _lh_vecadd_LH_P3_0_6_8 _lh_vecadd_LH_P3_1_6_8 _lh_vecadd_LH_P3_2_6_8 -> 
                                                    (let rec _lh_vecadd_LH_P3_2_6_9 = (_lh_vecadd_LH_P3_2_6_8 +. _lh_vecadd_LH_P3_2_6_7) in
                                                      (let rec _lh_vecadd_LH_P3_1_6_9 = (_lh_vecadd_LH_P3_1_6_8 +. _lh_vecadd_LH_P3_1_6_7) in
                                                        (let rec _lh_vecadd_LH_P3_0_6_9 = (_lh_vecadd_LH_P3_0_6_8 +. _lh_vecadd_LH_P3_0_6_7) in
                                                          (fun _lh_vecadd_arg2_2_9 -> 
                                                            (match _lh_vecadd_arg2_2_9 with
                                                              | `LH_P3(_lh_vecadd_LH_P3_0_7_0, _lh_vecadd_LH_P3_1_7_0, _lh_vecadd_LH_P3_2_7_0) -> 
                                                                (`LH_P3((_lh_vecadd_LH_P3_0_6_9 +. _lh_vecadd_LH_P3_0_7_0), (_lh_vecadd_LH_P3_1_6_9 +. _lh_vecadd_LH_P3_1_7_0), (_lh_vecadd_LH_P3_2_6_9 +. _lh_vecadd_LH_P3_2_7_0)))
                                                              | _ -> 
                                                                (failwith "error"))))))))))
                                          else
                                            ((vecmult__d1 ((vecscale__d6 bodycol_3) (cosalpha_6 ** spow_3))) _lh_lightray_LH_P2_1_3)) in
                                            ((vecadd__d2 diffcont_6) speccont_6)))))
                                  else
                                    (let rec spec_3 = (specularsurf__d0 _lh_lightray_arg5_6) in
                                      (let rec cosalpha_7 = ((vecdot__d4 _lh_lightray_arg4_6) _lh_lightray_LH_P2_0_9) in
                                        (let rec diffcont_7 = ((vecmult__d2 ((vecscale__d7 diff_4) cosangle_5)) _lh_lightray_LH_P2_1_3) in
                                          (let rec speccont_7 = (if (cosalpha_7 <= 0.0) then
                                            (let rec _lh_vecadd_LH_P3_2_7_1 = 0.0 in
                                              (let rec _lh_vecadd_LH_P3_1_7_1 = 0.0 in
                                                (let rec _lh_vecadd_LH_P3_0_7_1 = 0.0 in
                                                  (fun _lh_vecadd_LH_P3_0_7_2 _lh_vecadd_LH_P3_1_7_2 _lh_vecadd_LH_P3_2_7_2 -> 
                                                    (let rec _lh_vecadd_LH_P3_2_7_3 = (_lh_vecadd_LH_P3_2_7_2 +. _lh_vecadd_LH_P3_2_7_1) in
                                                      (let rec _lh_vecadd_LH_P3_1_7_3 = (_lh_vecadd_LH_P3_1_7_2 +. _lh_vecadd_LH_P3_1_7_1) in
                                                        (let rec _lh_vecadd_LH_P3_0_7_3 = (_lh_vecadd_LH_P3_0_7_2 +. _lh_vecadd_LH_P3_0_7_1) in
                                                          (fun _lh_vecadd_arg2_3_0 -> 
                                                            (match _lh_vecadd_arg2_3_0 with
                                                              | `LH_P3(_lh_vecadd_LH_P3_0_7_4, _lh_vecadd_LH_P3_1_7_4, _lh_vecadd_LH_P3_2_7_4) -> 
                                                                (`LH_P3((_lh_vecadd_LH_P3_0_7_3 +. _lh_vecadd_LH_P3_0_7_4), (_lh_vecadd_LH_P3_1_7_3 +. _lh_vecadd_LH_P3_1_7_4), (_lh_vecadd_LH_P3_2_7_3 +. _lh_vecadd_LH_P3_2_7_4)))
                                                              | _ -> 
                                                                (failwith "error"))))))))))
                                          else
                                            ((vecmult__d3 ((vecscale__d8 spec_3) (cosalpha_7 ** spow_3))) _lh_lightray_LH_P2_1_3)) in
                                            ((vecadd__d3 diffcont_7) speccont_7)))))))))))))))
              | _ -> 
                (failwith "error")))))))
and trace__d1 _lh_trace_arg1_2 _lh_trace_arg2_2 _lh_trace_arg3_2 =
  (let rec f_2_5 = (fun d1s1_2 d2s2_2 -> 
    (let rec _lh_matchIdent_2_8 = d1s1_2 in
      (match _lh_matchIdent_2_8 with
        | `LH_P2(_lh_trace_LH_P2_0_2_2, _lh_trace_LH_P2_1_2_2) -> 
          (let rec _lh_matchIdent_2_9 = d2s2_2 in
            (match _lh_matchIdent_2_9 with
              | `LH_P2(_lh_trace_LH_P2_0_2_3, _lh_trace_LH_P2_1_2_3) -> 
                (if (_lh_trace_LH_P2_0_2_2 < _lh_trace_LH_P2_0_2_3) then
                  (`LH_P2(_lh_trace_LH_P2_0_2_2, _lh_trace_LH_P2_1_2_2))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_2_3, _lh_trace_LH_P2_1_2_3)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_1_8 = (fun xss_2 -> 
      (let rec _lh_matchIdent_3_0 = xss_2 in
        (match _lh_matchIdent_3_0 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1_8, _lh_trace_LH_C_1_1_8) -> 
            (let rec _lh_matchIdent_3_1 = (((sphereintersect__d1 _lh_trace_arg2_2) _lh_trace_arg3_2) _lh_trace_LH_C_0_1_8) in
              (((_lh_matchIdent_3_1 _lh_trace_LH_C_0_1_8) _lh_trace_LH_C_1_1_8) sphmap_1_8))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_2 = (sphmap_1_8 _lh_trace_arg1_2) in
        (if (null__d1 dists_2) then
          (let rec _lh_reflectray_LH_P3_2_0 = (head__d8 _lh_trace_arg1_2) in
            (let rec _lh_reflectray_LH_P3_1_0 = infinity__d2 in
              (let rec _lh_reflectray_LH_P3_0_0 = false in
                (fun _lh_reflectray_arg2_1 _lh_reflectray_arg3_1 _lh_reflectray_arg4_1 _lh_reflectray_arg6_1 nearpos_7 newcontrib_8 -> 
                  (let rec newcol_2 = (if _lh_reflectray_LH_P3_0_0 then
                    ((((((shade__d0 _lh_reflectray_arg3_1) _lh_reflectray_LH_P3_2_0) nearpos_7) _lh_reflectray_arg2_1) _lh_reflectray_LH_P3_1_0) newcontrib_8)
                  else
                    background__d1) in
                    (if (is_zerovector__d1 newcontrib_8) then
                      _lh_reflectray_arg6_1
                    else
                      ((vecadd__d5 _lh_reflectray_arg6_1) ((vecmult__d5 newcol_2) _lh_reflectray_arg4_1))))))))
        else
          (let rec _lh_matchIdent_3_2 = (((foldr__d2 f_2_5) (head__d9 dists_2)) (tail__d1 dists_2)) in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_trace_LH_P2_0_2_4, _lh_trace_LH_P2_1_2_4) -> 
                (let rec _lh_reflectray_LH_P3_2_1 = _lh_trace_LH_P2_1_2_4 in
                  (let rec _lh_reflectray_LH_P3_1_1 = _lh_trace_LH_P2_0_2_4 in
                    (let rec _lh_reflectray_LH_P3_0_1 = true in
                      (fun _lh_reflectray_arg2_2 _lh_reflectray_arg3_2 _lh_reflectray_arg4_2 _lh_reflectray_arg6_2 nearpos_8 newcontrib_9 -> 
                        (let rec newcol_3 = (if _lh_reflectray_LH_P3_0_1 then
                          ((((((shade__d0 _lh_reflectray_arg3_2) _lh_reflectray_LH_P3_2_1) nearpos_8) _lh_reflectray_arg2_2) _lh_reflectray_LH_P3_1_1) newcontrib_9)
                        else
                          background__d1) in
                          (if (is_zerovector__d1 newcontrib_9) then
                            _lh_reflectray_arg6_2
                          else
                            ((vecadd__d5 _lh_reflectray_arg6_2) ((vecmult__d5 newcol_3) _lh_reflectray_arg4_2))))))))
              | _ -> 
                (failwith "error")))))))
and trace__d2 _lh_trace_arg1_1 _lh_trace_arg2_1 _lh_trace_arg3_1 =
  (let rec f_2_4 = (fun d1s1_1 d2s2_1 -> 
    (let rec _lh_matchIdent_1_9 = d1s1_1 in
      (match _lh_matchIdent_1_9 with
        | `LH_P2(_lh_trace_LH_P2_0_1_9, _lh_trace_LH_P2_1_1_9) -> 
          (let rec _lh_matchIdent_2_0 = d2s2_1 in
            (match _lh_matchIdent_2_0 with
              | `LH_P2(_lh_trace_LH_P2_0_2_0, _lh_trace_LH_P2_1_2_0) -> 
                (if (_lh_trace_LH_P2_0_1_9 < _lh_trace_LH_P2_0_2_0) then
                  (`LH_P2(_lh_trace_LH_P2_0_1_9, _lh_trace_LH_P2_1_1_9))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_2_0, _lh_trace_LH_P2_1_2_0)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_1_7 = (fun xss_1 -> 
      (let rec _lh_matchIdent_2_1 = xss_1 in
        (match _lh_matchIdent_2_1 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1_7, _lh_trace_LH_C_1_1_7) -> 
            (let rec _lh_matchIdent_2_2 = (((sphereintersect__d2 _lh_trace_arg2_1) _lh_trace_arg3_1) _lh_trace_LH_C_0_1_7) in
              (((_lh_matchIdent_2_2 _lh_trace_LH_C_0_1_7) _lh_trace_LH_C_1_1_7) sphmap_1_7))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_1 = (sphmap_1_7 _lh_trace_arg1_1) in
        (if (null__d2 dists_1) then
          (let rec _lh_transmitray_LH_P3_2_0 = (head__d1_d3 _lh_trace_arg1_1) in
            (let rec _lh_transmitray_LH_P3_1_0 = infinity__d3 in
              (let rec _lh_transmitray_LH_P3_0_0 = false in
                (fun _lh_transmitray_LH_P2_1_4 _lh_transmitray_arg1_5 _lh_transmitray_arg2_5 _lh_transmitray_arg6_5 nearpos_5 newcontrib_6 -> 
                  (let rec newcol_0 = (if _lh_transmitray_LH_P3_0_0 then
                    ((((((shade__d0 _lh_transmitray_arg1_5) _lh_transmitray_LH_P3_2_0) nearpos_5) _lh_transmitray_LH_P2_1_4) _lh_transmitray_LH_P3_1_0) newcontrib_6)
                  else
                    background__d2) in
                    (if (is_zerovector__d2 newcontrib_6) then
                      (let rec _lh_shade_LH_P2_1_1 = _lh_transmitray_arg2_5 in
                        (let rec _lh_shade_LH_P2_0_1 = false in
                          (fun _lh_shade_arg1_2 _lh_shade_arg6_2 hitpos_2 refl_2 surf_2 trintensity_2 -> 
                            (let rec reflsurf_1 = ((vecscale__d1_d8 (specularsurf__d1 surf_2)) (reflectsurf__d0 surf_2)) in
                              (let rec reflectiv_1 = (if _lh_shade_LH_P2_0_1 then
                                ((vecadd__d1_d2 trintensity_2) reflsurf_1)
                              else
                                reflsurf_1) in
                                (let rec rcol_1 = (if (is_zerovector__d0 reflectiv_1) then
                                  _lh_shade_LH_P2_1_1
                                else
                                  ((((((reflectray__d0 hitpos_2) refl_2) _lh_shade_arg1_2) reflectiv_1) _lh_shade_arg6_2) _lh_shade_LH_P2_1_1)) in
                                  rcol_1))))))
                    else
                      (let rec _lh_shade_LH_P2_1_2 = ((vecadd__d8 ((vecmult__d7 newcol_0) _lh_transmitray_arg6_5)) _lh_transmitray_arg2_5) in
                        (let rec _lh_shade_LH_P2_0_2 = false in
                          (fun _lh_shade_arg1_3 _lh_shade_arg6_3 hitpos_3 refl_3 surf_3 trintensity_3 -> 
                            (let rec reflsurf_2 = ((vecscale__d1_d8 (specularsurf__d1 surf_3)) (reflectsurf__d0 surf_3)) in
                              (let rec reflectiv_2 = (if _lh_shade_LH_P2_0_2 then
                                ((vecadd__d1_d2 trintensity_3) reflsurf_2)
                              else
                                reflsurf_2) in
                                (let rec rcol_2 = (if (is_zerovector__d0 reflectiv_2) then
                                  _lh_shade_LH_P2_1_2
                                else
                                  ((((((reflectray__d0 hitpos_3) refl_3) _lh_shade_arg1_3) reflectiv_2) _lh_shade_arg6_3) _lh_shade_LH_P2_1_2)) in
                                  rcol_2))))))))))))
        else
          (let rec _lh_matchIdent_2_3 = (((foldr__d3 f_2_4) (head__d1_d4 dists_1)) (tail__d2 dists_1)) in
            (match _lh_matchIdent_2_3 with
              | `LH_P2(_lh_trace_LH_P2_0_2_1, _lh_trace_LH_P2_1_2_1) -> 
                (let rec _lh_transmitray_LH_P3_2_1 = _lh_trace_LH_P2_1_2_1 in
                  (let rec _lh_transmitray_LH_P3_1_1 = _lh_trace_LH_P2_0_2_1 in
                    (let rec _lh_transmitray_LH_P3_0_1 = true in
                      (fun _lh_transmitray_LH_P2_1_5 _lh_transmitray_arg1_6 _lh_transmitray_arg2_6 _lh_transmitray_arg6_6 nearpos_6 newcontrib_7 -> 
                        (let rec newcol_1 = (if _lh_transmitray_LH_P3_0_1 then
                          ((((((shade__d0 _lh_transmitray_arg1_6) _lh_transmitray_LH_P3_2_1) nearpos_6) _lh_transmitray_LH_P2_1_5) _lh_transmitray_LH_P3_1_1) newcontrib_7)
                        else
                          background__d2) in
                          (if (is_zerovector__d2 newcontrib_7) then
                            (let rec _lh_shade_LH_P2_1_3 = _lh_transmitray_arg2_6 in
                              (let rec _lh_shade_LH_P2_0_3 = false in
                                (fun _lh_shade_arg1_4 _lh_shade_arg6_4 hitpos_4 refl_4 surf_4 trintensity_4 -> 
                                  (let rec reflsurf_3 = ((vecscale__d1_d8 (specularsurf__d1 surf_4)) (reflectsurf__d0 surf_4)) in
                                    (let rec reflectiv_3 = (if _lh_shade_LH_P2_0_3 then
                                      ((vecadd__d1_d2 trintensity_4) reflsurf_3)
                                    else
                                      reflsurf_3) in
                                      (let rec rcol_3 = (if (is_zerovector__d0 reflectiv_3) then
                                        _lh_shade_LH_P2_1_3
                                      else
                                        ((((((reflectray__d0 hitpos_4) refl_4) _lh_shade_arg1_4) reflectiv_3) _lh_shade_arg6_4) _lh_shade_LH_P2_1_3)) in
                                        rcol_3))))))
                          else
                            (let rec _lh_shade_LH_P2_1_4 = ((vecadd__d8 ((vecmult__d7 newcol_1) _lh_transmitray_arg6_6)) _lh_transmitray_arg2_6) in
                              (let rec _lh_shade_LH_P2_0_4 = false in
                                (fun _lh_shade_arg1_5 _lh_shade_arg6_5 hitpos_5 refl_5 surf_5 trintensity_5 -> 
                                  (let rec reflsurf_4 = ((vecscale__d1_d8 (specularsurf__d1 surf_5)) (reflectsurf__d0 surf_5)) in
                                    (let rec reflectiv_4 = (if _lh_shade_LH_P2_0_4 then
                                      ((vecadd__d1_d2 trintensity_5) reflsurf_4)
                                    else
                                      reflsurf_4) in
                                      (let rec rcol_4 = (if (is_zerovector__d0 reflectiv_4) then
                                        _lh_shade_LH_P2_1_4
                                      else
                                        ((((((reflectray__d0 hitpos_5) refl_5) _lh_shade_arg1_5) reflectiv_4) _lh_shade_arg6_5) _lh_shade_LH_P2_1_4)) in
                                        rcol_4))))))))))))
              | _ -> 
                (failwith "error")))))))
and trace__d3 _lh_trace_arg1_3 _lh_trace_arg2_3 _lh_trace_arg3_3 =
  (let rec f_2_6 = (fun d1s1_3 d2s2_3 -> 
    (let rec _lh_matchIdent_3_3 = d1s1_3 in
      (match _lh_matchIdent_3_3 with
        | `LH_P2(_lh_trace_LH_P2_0_2_5, _lh_trace_LH_P2_1_2_5) -> 
          (let rec _lh_matchIdent_3_4 = d2s2_3 in
            (match _lh_matchIdent_3_4 with
              | `LH_P2(_lh_trace_LH_P2_0_2_6, _lh_trace_LH_P2_1_2_6) -> 
                (if (_lh_trace_LH_P2_0_2_5 < _lh_trace_LH_P2_0_2_6) then
                  (`LH_P2(_lh_trace_LH_P2_0_2_5, _lh_trace_LH_P2_1_2_5))
                else
                  (`LH_P2(_lh_trace_LH_P2_0_2_6, _lh_trace_LH_P2_1_2_6)))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error")))) in
    (let rec sphmap_1_9 = (fun xss_3 -> 
      (let rec _lh_matchIdent_3_5 = xss_3 in
        (match _lh_matchIdent_3_5 with
          | `LH_N -> 
            (`LH_N)
          | `LH_C(_lh_trace_LH_C_0_1_9, _lh_trace_LH_C_1_1_9) -> 
            (let rec _lh_matchIdent_3_6 = (((sphereintersect__d3 _lh_trace_arg2_3) _lh_trace_arg3_3) _lh_trace_LH_C_0_1_9) in
              (((_lh_matchIdent_3_6 _lh_trace_LH_C_0_1_9) _lh_trace_LH_C_1_1_9) sphmap_1_9))
          | _ -> 
            (failwith "error")))) in
      (let rec dists_3 = (sphmap_1_9 _lh_trace_arg1_3) in
        (if (null__d3 dists_3) then
          (let rec _lh_tracepixel_LH_P3_2_0 = (head__d1_d6 _lh_trace_arg1_3) in
            (let rec _lh_tracepixel_LH_P3_1_0 = infinity__d4 in
              (let rec _lh_tracepixel_LH_P3_0_0 = false in
                (fun _lh_tracepixel_LH_P2_0_1 _lh_tracepixel_arg2_2 pos_2 -> 
                  (if _lh_tracepixel_LH_P3_0_0 then
                    ((((((shade__d0 _lh_tracepixel_arg2_2) _lh_tracepixel_LH_P3_2_0) pos_2) _lh_tracepixel_LH_P2_0_1) _lh_tracepixel_LH_P3_1_0) (`LH_P3(1.0, 1.0, 1.0)))
                  else
                    background__d0)))))
        else
          (let rec _lh_matchIdent_3_7 = (((foldr__d5 f_2_6) (head__d1_d7 dists_3)) (tail__d3 dists_3)) in
            (match _lh_matchIdent_3_7 with
              | `LH_P2(_lh_trace_LH_P2_0_2_7, _lh_trace_LH_P2_1_2_7) -> 
                (let rec _lh_tracepixel_LH_P3_2_1 = _lh_trace_LH_P2_1_2_7 in
                  (let rec _lh_tracepixel_LH_P3_1_1 = _lh_trace_LH_P2_0_2_7 in
                    (let rec _lh_tracepixel_LH_P3_0_1 = true in
                      (fun _lh_tracepixel_LH_P2_0_2 _lh_tracepixel_arg2_3 pos_3 -> 
                        (if _lh_tracepixel_LH_P3_0_1 then
                          ((((((shade__d0 _lh_tracepixel_arg2_3) _lh_tracepixel_LH_P3_2_1) pos_3) _lh_tracepixel_LH_P2_0_2) _lh_tracepixel_LH_P3_1_1) (`LH_P3(1.0, 1.0, 1.0)))
                        else
                          background__d0)))))
              | _ -> 
                (failwith "error")))))))
and tracepixel__d0 _lh_tracepixel_arg1_1 _lh_tracepixel_arg2_1 _lh_tracepixel_arg3_0 _lh_tracepixel_arg4_0 _lh_tracepixel_arg5_0 _lh_tracepixel_arg6_0 _lh_tracepixel_arg7_0 =
  (let rec pos_1 = lookfrom__d1 in
    (let rec _lh_matchIdent_2_7 = (vecnorm__d5 ((vecadd__d1_d4 ((vecadd__d1_d5 _lh_tracepixel_arg5_0) ((vecscale__d1_d9 _lh_tracepixel_arg6_0) _lh_tracepixel_arg3_0))) ((vecscale__d2_d0 _lh_tracepixel_arg7_0) _lh_tracepixel_arg4_0))) in
      (((_lh_matchIdent_2_7 _lh_tracepixel_arg1_1) _lh_tracepixel_arg2_1) pos_1)))
and transmitray__d0 _lh_transmitray_arg1_0 _lh_transmitray_arg2_0 _lh_transmitray_arg3_0 _lh_transmitray_arg4_0 _lh_transmitray_arg5_0 _lh_transmitray_arg6_0 _lh_transmitray_arg7_0 _lh_transmitray_arg8_0 =
  (let rec newcontrib_0 = ((vecmult__d6 _lh_transmitray_arg6_0) _lh_transmitray_arg7_0) in
    (let rec _lh_matchIdent_1 = (((refractray__d0 _lh_transmitray_arg5_0) _lh_transmitray_arg4_0) _lh_transmitray_arg8_0) in
      (((((_lh_matchIdent_1 _lh_transmitray_arg1_0) _lh_transmitray_arg2_0) _lh_transmitray_arg3_0) _lh_transmitray_arg6_0) newcontrib_0)))
and transmitsurf__d0 _lh_transmitsurf_arg1_0 =
  (head__d1_d5 ((mappend__d9 (let rec _lh_listcomp_fun_1_6 = (fun _lh_listcomp_fun_para_1_0 -> 
    (match _lh_listcomp_fun_para_1_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_1_2, _lh_listcomp_fun_ls_t_1_2) -> 
        (match _lh_listcomp_fun_ls_h_1_2 with
          | `Transmit(_lh_transmitsurf_Transmit_0_0) -> 
            (let rec t_3_7 = (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2) in
              (let rec h_3_5 = _lh_transmitsurf_Transmit_0_0 in
                (fun ys_2_4 -> 
                  (`LH_C(h_3_5, ((mappend__d9 t_3_7) ys_2_4))))))
          | _ -> 
            (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_1_2))
      | `LH_N -> 
        (fun ys_2_5 -> 
          ys_2_5))) in
    (_lh_listcomp_fun_1_6 _lh_transmitsurf_arg1_0))) (`LH_C(0.0, (`LH_N)))))
and veccross__d1 _lh_veccross_arg1_1 _lh_veccross_arg2_1 =
  (match _lh_veccross_arg1_1 with
    | `LH_P3(_lh_veccross_LH_P3_0_1, _lh_veccross_LH_P3_1_1, _lh_veccross_LH_P3_2_1) -> 
      (match _lh_veccross_arg2_1 with
        | `LH_P3(_lh_veccross_LH_P3_0_2, _lh_veccross_LH_P3_1_2, _lh_veccross_LH_P3_2_2) -> 
          (let rec _lh_vecnorm_LH_P3_2_2 = ((_lh_veccross_LH_P3_0_1 *. _lh_veccross_LH_P3_1_2) -. (_lh_veccross_LH_P3_0_2 *. _lh_veccross_LH_P3_1_1)) in
            (let rec _lh_vecnorm_LH_P3_1_2 = ((_lh_veccross_LH_P3_2_1 *. _lh_veccross_LH_P3_0_2) -. (_lh_veccross_LH_P3_2_2 *. _lh_veccross_LH_P3_0_1)) in
              (let rec _lh_vecnorm_LH_P3_0_2 = ((_lh_veccross_LH_P3_1_1 *. _lh_veccross_LH_P3_2_2) -. (_lh_veccross_LH_P3_1_2 *. _lh_veccross_LH_P3_2_1)) in
                (fun _lh_dummy_1 -> 
                  (let rec len_2 = (sqrt (((_lh_vecnorm_LH_P3_0_2 *. _lh_vecnorm_LH_P3_0_2) +. (_lh_vecnorm_LH_P3_1_2 *. _lh_vecnorm_LH_P3_1_2)) +. (_lh_vecnorm_LH_P3_2_2 *. _lh_vecnorm_LH_P3_2_2))) in
                    (let rec _lh_camparams_LH_P2_0_0 = (let rec _lh_vecscale_LH_P3_2_7 = (_lh_vecnorm_LH_P3_2_2 /. len_2) in
                      (let rec _lh_vecscale_LH_P3_1_7 = (_lh_vecnorm_LH_P3_1_2 /. len_2) in
                        (let rec _lh_vecscale_LH_P3_0_7 = (_lh_vecnorm_LH_P3_0_2 /. len_2) in
                          (fun _lh_vecscale_arg2_7 -> 
                            (`LH_P3((_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_0_7), (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_1_7), (_lh_vecscale_arg2_7 *. _lh_vecscale_LH_P3_2_7))))))) in
                      (fun _lh_camparams_LH_P2_0_1 _lh_camparams_LH_P2_1_0 _lh_camparams_arg4_0 _lh_camparams_arg5_0 initfirstray_0 -> 
                        (let rec xfov_0 = _lh_camparams_arg4_0 in
                          (let rec yfov_0 = _lh_camparams_arg4_0 in
                            (let rec xwinsize_0 = _lh_camparams_arg5_0 in
                              (let rec ywinsize_0 = _lh_camparams_arg5_0 in
                                (let rec magx_0 = (((2.0 *. _lh_camparams_LH_P2_1_0) *. (tan (dtor__d0 (xfov_0 /. 2.0)))) /. xwinsize_0) in
                                  (let rec magy_0 = (((2.0 *. _lh_camparams_LH_P2_1_0) *. (tan (dtor__d1 (yfov_0 /. 2.0)))) /. ywinsize_0) in
                                    (let rec scrnx_0 = ((vecscale__d0 _lh_camparams_LH_P2_0_1) magx_0) in
                                      (let rec scrny_0 = ((vecscale__d1 _lh_camparams_LH_P2_0_0) magy_0) in
                                        (let rec firstray_0 = ((vecsub__d1 initfirstray_0) ((vecadd__d0 ((vecscale__d2 scrnx_0) (0.5 *. xwinsize_0))) ((vecscale__d3 scrny_0) (0.5 *. ywinsize_0)))) in
                                          (let rec _lh_ray_LH_P3_2_0 = scrny_0 in
                                            (let rec _lh_ray_LH_P3_1_0 = scrnx_0 in
                                              (let rec _lh_ray_LH_P3_0_0 = firstray_0 in
                                                (fun _lh_ray_arg1_0 lights_0 -> 
                                                  (let rec f_3 = (fun i_2 j_0 -> 
                                                    (((((((tracepixel__d0 (testspheres__d0 0)) lights_0) (float_of_int i_2)) (float_of_int j_0)) _lh_ray_LH_P3_0_0) _lh_ray_LH_P3_1_0) _lh_ray_LH_P3_2_0)) in
                                                    (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                                                      (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_2) _lh_ray_arg1_0) f_3)) in
                                                      (_lh_listcomp_fun_2 ((enumFromTo__d0 0) (_lh_ray_arg1_0 - 1)))))))))))))))))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and vecnorm__d0 _lh_vecnorm_arg1_4 =
  (match _lh_vecnorm_arg1_4 with
    | `LH_P3(_lh_vecnorm_LH_P3_0_5, _lh_vecnorm_LH_P3_1_5, _lh_vecnorm_LH_P3_2_5) -> 
      (let rec len_5 = (sqrt (((_lh_vecnorm_LH_P3_0_5 *. _lh_vecnorm_LH_P3_0_5) +. (_lh_vecnorm_LH_P3_1_5 *. _lh_vecnorm_LH_P3_1_5)) +. (_lh_vecnorm_LH_P3_2_5 *. _lh_vecnorm_LH_P3_2_5))) in
        (let rec _lh_camparams_LH_P2_1_2 = len_5 in
          (let rec _lh_camparams_LH_P2_0_4 = (`LH_P3((_lh_vecnorm_LH_P3_0_5 /. len_5), (_lh_vecnorm_LH_P3_1_5 /. len_5), (_lh_vecnorm_LH_P3_2_5 /. len_5))) in
            (fun _lh_camparams_arg3_1 _lh_camparams_arg4_3 _lh_camparams_arg5_3 initfirstray_3 -> 
              (let rec _lh_matchIdent_3_8 = (vecnorm__d1 ((veccross__d0 _lh_camparams_LH_P2_0_4) _lh_camparams_arg3_1)) in
                (((((_lh_matchIdent_3_8 _lh_camparams_LH_P2_0_4) _lh_camparams_LH_P2_1_2) _lh_camparams_arg4_3) _lh_camparams_arg5_3) initfirstray_3))))))
    | _ -> 
      (failwith "error"))
and vecscale__d2_d0 _lh_vecscale_arg1_6 _lh_vecscale_arg2_6 =
  (match _lh_vecscale_arg1_6 with
    | `LH_P3(_lh_vecscale_LH_P3_0_6, _lh_vecscale_LH_P3_1_6, _lh_vecscale_LH_P3_2_6) -> 
      (let rec _lh_vecadd_LH_P3_2_1_9 = (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_2_6) in
        (let rec _lh_vecadd_LH_P3_1_1_9 = (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_1_6) in
          (let rec _lh_vecadd_LH_P3_0_1_9 = (_lh_vecscale_arg2_6 *. _lh_vecscale_LH_P3_0_6) in
            (fun _lh_vecadd_LH_P3_0_2_0 _lh_vecadd_LH_P3_1_2_0 _lh_vecadd_LH_P3_2_2_0 -> 
              (let rec _lh_vecnorm_LH_P3_2_0 = (_lh_vecadd_LH_P3_2_2_0 +. _lh_vecadd_LH_P3_2_1_9) in
                (let rec _lh_vecnorm_LH_P3_1_0 = (_lh_vecadd_LH_P3_1_2_0 +. _lh_vecadd_LH_P3_1_1_9) in
                  (let rec _lh_vecnorm_LH_P3_0_0 = (_lh_vecadd_LH_P3_0_2_0 +. _lh_vecadd_LH_P3_0_1_9) in
                    (fun _lh_dummy_0 -> 
                      (let rec len_0 = (sqrt (((_lh_vecnorm_LH_P3_0_0 *. _lh_vecnorm_LH_P3_0_0) +. (_lh_vecnorm_LH_P3_1_0 *. _lh_vecnorm_LH_P3_1_0)) +. (_lh_vecnorm_LH_P3_2_0 *. _lh_vecnorm_LH_P3_2_0))) in
                        (let rec _lh_tracepixel_LH_P2_0_0 = (`LH_P3((_lh_vecnorm_LH_P3_0_0 /. len_0), (_lh_vecnorm_LH_P3_1_0 /. len_0), (_lh_vecnorm_LH_P3_2_0 /. len_0))) in
                          (fun _lh_tracepixel_arg1_0 _lh_tracepixel_arg2_0 pos_0 -> 
                            (let rec _lh_matchIdent_4 = (((trace__d3 _lh_tracepixel_arg1_0) pos_0) _lh_tracepixel_LH_P2_0_0) in
                              (((_lh_matchIdent_4 _lh_tracepixel_LH_P2_0_0) _lh_tracepixel_arg2_0) pos_0)))))))))))))
    | _ -> 
      (failwith "error"))
and vecsub__d2 _lh_vecsub_arg1_2 _lh_vecsub_arg2_2 =
  (match _lh_vecsub_arg1_2 with
    | `LH_P3(_lh_vecsub_LH_P3_0_2, _lh_vecsub_LH_P3_1_2, _lh_vecsub_LH_P3_2_2) -> 
      (match _lh_vecsub_arg2_2 with
        | `LH_P3(_lh_vecsub_LH_P3_0_3, _lh_vecsub_LH_P3_1_3, _lh_vecsub_LH_P3_2_3) -> 
          (let rec _lh_vecnorm_LH_P3_2_3 = (_lh_vecsub_LH_P3_2_2 -. _lh_vecsub_LH_P3_2_3) in
            (let rec _lh_vecnorm_LH_P3_1_3 = (_lh_vecsub_LH_P3_1_2 -. _lh_vecsub_LH_P3_1_3) in
              (let rec _lh_vecnorm_LH_P3_0_3 = (_lh_vecsub_LH_P3_0_2 -. _lh_vecsub_LH_P3_0_3) in
                (fun _lh_dummy_2 -> 
                  (let rec len_3 = (sqrt (((_lh_vecnorm_LH_P3_0_3 *. _lh_vecnorm_LH_P3_0_3) +. (_lh_vecnorm_LH_P3_1_3 *. _lh_vecnorm_LH_P3_1_3)) +. (_lh_vecnorm_LH_P3_2_3 *. _lh_vecnorm_LH_P3_2_3))) in
                    (let rec _lh_lightray_LH_P2_0_1 = (`LH_P3((_lh_vecnorm_LH_P3_0_3 /. len_3), (_lh_vecnorm_LH_P3_1_3 /. len_3), (_lh_vecnorm_LH_P3_2_3 /. len_3))) in
                      (fun _lh_lightray_arg1_2 _lh_lightray_arg2_2 _lh_lightray_arg3_2 _lh_lightray_arg4_2 _lh_lightray_arg5_2 -> 
                        (let rec cosangle_1 = ((vecdot__d2 _lh_lightray_LH_P2_0_1) _lh_lightray_arg3_2) in
                          (let rec _lh_matchIdent_7 = (((shadowed__d0 _lh_lightray_arg2_2) _lh_lightray_LH_P2_0_1) (lightcolour__d0 _lh_lightray_arg1_2)) in
                            ((((_lh_matchIdent_7 _lh_lightray_LH_P2_0_1) _lh_lightray_arg4_2) _lh_lightray_arg5_2) cosangle_1))))))))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and vecsum__d0 _lh_vecsum_arg1_0 =
  (((foldr__d4 vecadd__d1_d3) (`LH_P3(0.0, 0.0, 0.0))) _lh_vecsum_arg1_0)
and vup__d0 _lh_vup_arg1_0 =
  (let rec _lh_veccross_LH_P3_2_3 = 1.0 in
    (let rec _lh_veccross_LH_P3_1_3 = 0.0 in
      (let rec _lh_veccross_LH_P3_0_3 = 0.0 in
        (fun _lh_veccross_LH_P3_0_4 _lh_veccross_LH_P3_1_4 _lh_veccross_LH_P3_2_4 -> 
          (let rec _lh_vecnorm_LH_P3_2_4 = ((_lh_veccross_LH_P3_0_4 *. _lh_veccross_LH_P3_1_3) -. (_lh_veccross_LH_P3_0_3 *. _lh_veccross_LH_P3_1_4)) in
            (let rec _lh_vecnorm_LH_P3_1_4 = ((_lh_veccross_LH_P3_2_4 *. _lh_veccross_LH_P3_0_3) -. (_lh_veccross_LH_P3_2_3 *. _lh_veccross_LH_P3_0_4)) in
              (let rec _lh_vecnorm_LH_P3_0_4 = ((_lh_veccross_LH_P3_1_4 *. _lh_veccross_LH_P3_2_3) -. (_lh_veccross_LH_P3_1_3 *. _lh_veccross_LH_P3_2_4)) in
                (fun _lh_dummy_3 -> 
                  (let rec len_4 = (sqrt (((_lh_vecnorm_LH_P3_0_4 *. _lh_vecnorm_LH_P3_0_4) +. (_lh_vecnorm_LH_P3_1_4 *. _lh_vecnorm_LH_P3_1_4)) +. (_lh_vecnorm_LH_P3_2_4 *. _lh_vecnorm_LH_P3_2_4))) in
                    (let rec _lh_camparams_LH_P2_0_2 = (`LH_P3((_lh_vecnorm_LH_P3_0_4 /. len_4), (_lh_vecnorm_LH_P3_1_4 /. len_4), (_lh_vecnorm_LH_P3_2_4 /. len_4))) in
                      (fun _lh_camparams_LH_P2_0_3 _lh_camparams_LH_P2_1_1 _lh_camparams_arg4_1 _lh_camparams_arg5_1 initfirstray_1 -> 
                        (let rec _lh_matchIdent_2_5 = (vecnorm__d2 ((veccross__d1 _lh_camparams_LH_P2_0_2) _lh_camparams_LH_P2_0_3)) in
                          (((((_lh_matchIdent_2_5 _lh_camparams_LH_P2_0_2) _lh_camparams_LH_P2_1_1) _lh_camparams_arg4_1) _lh_camparams_arg5_1) initfirstray_1)))))))))))));;
end;;

