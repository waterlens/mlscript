

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec comp_magnitude__d0 _lh_comp_magnitude_arg1_0 =
  (match _lh_comp_magnitude_arg1_0 with
    | `Complex(_lh_comp_magnitude_Complex_0_0, _lh_comp_magnitude_Complex_1_0) -> 
      ((_lh_comp_magnitude_Complex_0_0 *. _lh_comp_magnitude_Complex_0_0) +. (_lh_comp_magnitude_Complex_1_0 *. _lh_comp_magnitude_Complex_1_0))
    | _ -> 
      (failwith "error"));;
let rec comp_plus__d0 _lh_comp_plus_arg1_0 _lh_comp_plus_arg2_0 =
  (_lh_comp_plus_arg1_0 _lh_comp_plus_arg2_0);;
let rec comp_times__d0 _lh_comp_times_arg1_0 _lh_comp_times_arg2_0 =
  (match _lh_comp_times_arg1_0 with
    | `Complex(_lh_comp_times_Complex_0_0, _lh_comp_times_Complex_1_0) -> 
      (match _lh_comp_times_arg2_0 with
        | `Complex(_lh_comp_times_Complex_0_1, _lh_comp_times_Complex_1_1) -> 
          (let rec _lh_comp_plus_Complex_1_0 = ((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_1_1) +. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_0_1)) in
            (let rec _lh_comp_plus_Complex_0_0 = ((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_0_1) -. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_1_1)) in
              (fun _lh_comp_plus_arg2_1 -> 
                (match _lh_comp_plus_arg2_1 with
                  | `Complex(_lh_comp_plus_Complex_0_1, _lh_comp_plus_Complex_1_1) -> 
                    (`Complex((_lh_comp_plus_Complex_0_0 +. _lh_comp_plus_Complex_0_1), (_lh_comp_plus_Complex_1_0 +. _lh_comp_plus_Complex_1_1)))
                  | _ -> 
                    (failwith "error")))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec createPixmap__d0 _lh_createPixmap_arg1_0 _lh_createPixmap_arg2_0 _lh_createPixmap_arg3_0 _lh_createPixmap_arg4_0 =
  (`Pixmap(_lh_createPixmap_arg1_0, _lh_createPixmap_arg2_0, _lh_createPixmap_arg3_0, _lh_createPixmap_arg4_0));;
let rec map_lz__d0 f_6 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_5) -> 
      (`LH_C((f_6 h_3), ((map_lz__d0 f_6) t_5)))
    | `LH_N -> 
      (`LH_N)));;
let rec map__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d1 f_5 ls_1 =
  (ls_1 f_5);;
let rec myMax__d0 _lh_myMax_arg1_0 _lh_myMax_arg2_0 =
  (if (_lh_myMax_arg1_0 > _lh_myMax_arg2_0) then
    _lh_myMax_arg1_0
  else
    _lh_myMax_arg2_0);;
let rec diverge__d0 _lh_diverge_arg1_0 _lh_diverge_arg2_0 =
  ((comp_magnitude__d0 _lh_diverge_arg1_0) > _lh_diverge_arg2_0)
and enumFromTo__d0 a_1 b_1 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_0 -> 
          (((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_5) _lh_popOutId_2_1) _lh_listcomp_fun_ls_t_3) _lh_popOutId_0_1)) in
          (_lh_listcomp_fun_5 ((enumFromTo__d1 1) _lh_popOutId_1_1)))))
  else
    (fun f_3 f_4 -> 
      (`LH_N)))
and enumFromTo__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 _lh_popOutId_4_0 =
  (if (a_0 <= b_0) then
    (fun f_1 f_2 -> 
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d1 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
          (let rec t_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_0 = ((_lh_popOutId_2_0 _lh_listcomp_fun_ls_h_0) _lh_popOutId_0_0) in
              (let rec t_1 = ((map__d1 f_1) t_0) in
                (let rec h_1 = (f_1 h_0) in
                  (`LH_C((f_2 h_1), ((map__d0 f_2) t_1))))))))))
  else
    (_lh_popOutId_4_0 _lh_popOutId_3_0))
and mandel__d0 _lh_mandel_arg1_0 =
  (let rec infiniteMandel_0 = (lazy (`LH_C(_lh_mandel_arg1_0, ((map_lz__d0 (fun z_0 -> 
    ((comp_plus__d0 ((comp_times__d0 z_0) z_0)) _lh_mandel_arg1_0))) infiniteMandel_0)))) in
    infiniteMandel_0)
and mandelset__d0 _lh_mandelset_arg1_0 _lh_mandelset_arg2_0 _lh_mandelset_arg3_0 _lh_mandelset_arg4_0 _lh_mandelset_arg5_2 _lh_mandelset_arg6_0 _lh_mandelset_arg7_0 =
  (let rec prettyRGB_0 = (fun s_0 -> 
    (let rec t_3 = (_lh_mandelset_arg7_0 - s_0) in
      (`LH_P3(s_0, t_3, t_3)))) in
    (let rec windowToViewport_4 = (fun s_1 t_4 -> 
      (`Complex((_lh_mandelset_arg1_0 +. (((float_of_int s_1) *. (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) /. (float_of_int _lh_mandelset_arg5_2))), (_lh_mandelset_arg2_0 +. (((float_of_int t_4) *. (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. (float_of_int _lh_mandelset_arg6_0)))))) in
      (let rec result_0 = (((parallelMandel__d0 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_1 -> 
        (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_7) _lh_mandelset_arg5_2) windowToViewport_4)) in
        (_lh_listcomp_fun_7 ((enumFromTo__d0 1) _lh_mandelset_arg6_0)))) _lh_mandelset_arg7_0) (((myMax__d0 (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. 2.0)) in
        ((((createPixmap__d0 _lh_mandelset_arg5_2) _lh_mandelset_arg6_0) _lh_mandelset_arg7_0) ((map__d0 prettyRGB_0) result_0)))))
and parallelMandel__d0 _lh_parallelMandel_arg1_0 _lh_parallelMandel_arg2_0 _lh_parallelMandel_arg3_0 =
  ((map__d1 ((whenDiverge__d0 _lh_parallelMandel_arg2_0) _lh_parallelMandel_arg3_0)) _lh_parallelMandel_arg1_0)
and take_lz__d0 n_0 ls_2 _lh_popOutId_0_3 _lh_popOutId_1_3 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_2) with
      | `LH_C(h_2, t_2) -> 
        (let rec _lh_whenDiverge_LH_C_1_0 = ((take_lz__d0 (n_0 - 1)) t_2) in
          (let rec _lh_whenDiverge_LH_C_0_0 = h_2 in
            (if ((diverge__d0 _lh_whenDiverge_LH_C_0_0) _lh_popOutId_0_3) then
              0
            else
              (1 + (_lh_popOutId_1_3 _lh_whenDiverge_LH_C_1_0)))))
      | `LH_N -> 
        0)
  else
    0)
and testMandel_nofib__d0 _lh_testMandel_nofib_arg1_0 =
  (let rec minx_0 = (0.0 -. 2.0) in
    (let rec miny_0 = (0.0 -. 2.0) in
      (let rec maxx_0 = 2.0 in
        (let rec maxy_0 = 2.0 in
          (let rec screenX_0 = 80 in
            (let rec screenY_0 = 80 in
              (let rec limit_0 = 75 in
                (((((((mandelset__d0 minx_0) miny_0) maxx_0) maxy_0) screenX_0) screenY_0) limit_0))))))))
and whenDiverge__d0 _lh_whenDiverge_arg1_0 _lh_whenDiverge_arg2_3 _lh_whenDiverge_arg3_0 =
  (let rec walkIt_3 = (fun ls_4 -> 
    (let rec _lh_matchIdent_0 = ls_4 in
      ((_lh_matchIdent_0 _lh_whenDiverge_arg2_3) walkIt_3))) in
    (walkIt_3 ((take_lz__d0 _lh_whenDiverge_arg1_0) (mandel__d0 _lh_whenDiverge_arg3_0))));;
end;;

