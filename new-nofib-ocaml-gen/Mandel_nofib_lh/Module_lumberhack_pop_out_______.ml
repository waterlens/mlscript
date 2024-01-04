

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec myMax_lh__d1 _lh_myMax_arg1_0 _lh_myMax_arg2_0 =
  (if (_lh_myMax_arg1_0 > _lh_myMax_arg2_0) then
    _lh_myMax_arg1_0
  else
    _lh_myMax_arg2_0);;
let rec map_lh__d1 f_1 ls_1 =
  (ls_1 f_1);;
let rec map_lh__d2 f_0 ls_0 =
  (ls_0 f_0);;
let rec enumFromTo_lh__d2 a_1 b_1 _lh_popOutId_0_3 _lh_popOutId_1_3 _lh_popOutId_2_1 _lh_popOutId_3_0 _lh_popOutId_4_0 =
  (if (a_1 <= b_1) then
    (fun f_5 f_6 -> 
      (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_lh__d2 (a_1 + 1)) b_1) in
        (let rec _lh_listcomp_fun_ls_h_1 = a_1 in
          (let rec t_2 = (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_1) in
            (let rec h_2 = ((_lh_popOutId_2_1 _lh_listcomp_fun_ls_h_1) _lh_popOutId_0_3) in
              (let rec t_3 = ((map_lh__d2 f_5) t_2) in
                (let rec h_3 = (f_5 h_2) in
                  (`LH_C((f_6 h_3), ((map_lh__d1 f_6) t_3))))))))))
  else
    (_lh_popOutId_4_0 _lh_popOutId_3_0));;
let rec enumFromTo_lh__d1 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
          (((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) _lh_popOutId_2_0) _lh_listcomp_fun_ls_t_0) _lh_popOutId_0_0)) in
          (_lh_listcomp_fun_1 ((enumFromTo_lh__d2 1) _lh_popOutId_1_0)))))
  else
    (fun f_2 f_3 -> 
      (`LH_N)));;
let rec createPixmap_lh__d1 _lh_createPixmap_arg1_0 _lh_createPixmap_arg2_0 _lh_createPixmap_arg3_0 _lh_createPixmap_arg4_0 =
  (`Pixmap(_lh_createPixmap_arg1_0, _lh_createPixmap_arg2_0, _lh_createPixmap_arg3_0, _lh_createPixmap_arg4_0));;
let rec comp_magnitude_lh__d1 _lh_comp_magnitude_arg1_0 =
  (match _lh_comp_magnitude_arg1_0 with
    | `Complex(_lh_comp_magnitude_Complex_0_0, _lh_comp_magnitude_Complex_1_0) -> 
      ((_lh_comp_magnitude_Complex_0_0 *. _lh_comp_magnitude_Complex_0_0) +. (_lh_comp_magnitude_Complex_1_0 *. _lh_comp_magnitude_Complex_1_0))
    | _ -> 
      (failwith "error"));;
let rec diverge_lh__d1 _lh_diverge_arg1_0 _lh_diverge_arg2_0 =
  ((comp_magnitude_lh__d1 _lh_diverge_arg1_0) > _lh_diverge_arg2_0);;
let rec take_lz_lh__d1 n_0 ls_2 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_2) with
      | `LH_C(h_0, t_0) -> 
        (let rec _lh_whenDiverge_LH_C_1_0 = ((take_lz_lh__d1 (n_0 - 1)) t_0) in
          (let rec _lh_whenDiverge_LH_C_0_0 = h_0 in
            (if ((diverge_lh__d1 _lh_whenDiverge_LH_C_0_0) _lh_popOutId_0_2) then
              0
            else
              (1 + (_lh_popOutId_1_2 _lh_whenDiverge_LH_C_1_0)))))
      | `LH_N -> 
        0)
  else
    0);;
let rec comp_times_lh__d1 _lh_comp_times_arg1_0 _lh_comp_times_arg2_0 =
  (match _lh_comp_times_arg1_0 with
    | `Complex(_lh_comp_times_Complex_0_0, _lh_comp_times_Complex_1_0) -> 
      (match _lh_comp_times_arg2_0 with
        | `Complex(_lh_comp_times_Complex_0_1, _lh_comp_times_Complex_1_1) -> 
          (let rec _lh_comp_plus_Complex_1_0 = ((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_1_1) +. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_0_1)) in
            (let rec _lh_comp_plus_Complex_0_0 = ((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_0_1) -. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_1_1)) in
              (fun _lh_comp_plus_arg2_0 -> 
                (match _lh_comp_plus_arg2_0 with
                  | `Complex(_lh_comp_plus_Complex_0_1, _lh_comp_plus_Complex_1_1) -> 
                    (`Complex((_lh_comp_plus_Complex_0_0 +. _lh_comp_plus_Complex_0_1), (_lh_comp_plus_Complex_1_0 +. _lh_comp_plus_Complex_1_1)))
                  | _ -> 
                    (failwith "error")))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec comp_plus_lh__d1 _lh_comp_plus_arg1_0 _lh_comp_plus_arg2_1 =
  (_lh_comp_plus_arg1_0 _lh_comp_plus_arg2_1);;
let rec map_lz_lh__d1 f_4 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_4 h_1), ((map_lz_lh__d1 f_4) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec mandel_lh__d1 _lh_mandel_arg1_0 =
  (let rec infiniteMandel_0 = (lazy (`LH_C(_lh_mandel_arg1_0, ((map_lz_lh__d1 (fun z_0 -> 
    ((comp_plus_lh__d1 ((comp_times_lh__d1 z_0) z_0)) _lh_mandel_arg1_0))) infiniteMandel_0)))) in
    infiniteMandel_0);;
let rec whenDiverge_lh__d1 _lh_whenDiverge_arg1_0 _lh_whenDiverge_arg2_3 _lh_whenDiverge_arg3_0 =
  (let rec walkIt_3 = (fun ls_4 -> 
    (let rec _lh_matchIdent_0 = ls_4 in
      ((_lh_matchIdent_0 _lh_whenDiverge_arg2_3) walkIt_3))) in
    (walkIt_3 ((take_lz_lh__d1 _lh_whenDiverge_arg1_0) (mandel_lh__d1 _lh_whenDiverge_arg3_0))));;
let rec parallelMandel_lh__d1 _lh_parallelMandel_arg1_0 _lh_parallelMandel_arg2_0 _lh_parallelMandel_arg3_0 =
  ((map_lh__d2 ((whenDiverge_lh__d1 _lh_parallelMandel_arg2_0) _lh_parallelMandel_arg3_0)) _lh_parallelMandel_arg1_0);;
let rec mandelset_lh__d1 _lh_mandelset_arg1_0 _lh_mandelset_arg2_0 _lh_mandelset_arg3_0 _lh_mandelset_arg4_0 _lh_mandelset_arg5_2 _lh_mandelset_arg6_0 _lh_mandelset_arg7_0 =
  (let rec prettyRGB_0 = (fun s_0 -> 
    (let rec t_4 = (_lh_mandelset_arg7_0 - s_0) in
      (`LH_P3(s_0, t_4, t_4)))) in
    (let rec windowToViewport_4 = (fun s_1 t_5 -> 
      (`Complex((_lh_mandelset_arg1_0 +. (((float_of_int s_1) *. (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) /. (float_of_int _lh_mandelset_arg5_2))), (_lh_mandelset_arg2_0 +. (((float_of_int t_5) *. (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. (float_of_int _lh_mandelset_arg6_0)))))) in
      (let rec result_0 = (((parallelMandel_lh__d1 (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_1 -> 
        (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_7) _lh_mandelset_arg5_2) windowToViewport_4)) in
        (_lh_listcomp_fun_7 ((enumFromTo_lh__d1 1) _lh_mandelset_arg6_0)))) _lh_mandelset_arg7_0) (((myMax_lh__d1 (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. 2.0)) in
        ((((createPixmap_lh__d1 _lh_mandelset_arg5_2) _lh_mandelset_arg6_0) _lh_mandelset_arg7_0) ((map_lh__d1 prettyRGB_0) result_0)))));;
let rec testMandel_nofib_lh__d1 _lh_testMandel_nofib_arg1_0 =
  (let rec minx_0 = (0.0 -. 2.0) in
    (let rec miny_0 = (0.0 -. 2.0) in
      (let rec maxx_0 = 2.0 in
        (let rec maxy_0 = 2.0 in
          (let rec screenX_0 = 80 in
            (let rec screenY_0 = 80 in
              (let rec limit_0 = 75 in
                (((((((mandelset_lh__d1 minx_0) miny_0) maxx_0) maxy_0) screenX_0) screenY_0) limit_0))))))));;
end;;

