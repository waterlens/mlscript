

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec comp_magnitude__d0 _lh_comp_magnitude_arg1_1 =
  (match _lh_comp_magnitude_arg1_1 with
    | `Complex(_lh_comp_magnitude_Complex_0_1, _lh_comp_magnitude_Complex_1_1) -> 
      ((_lh_comp_magnitude_Complex_0_1 *. _lh_comp_magnitude_Complex_0_1) +. (_lh_comp_magnitude_Complex_1_1 *. _lh_comp_magnitude_Complex_1_1))
    | _ -> 
      (failwith "error"));;
let rec comp_plus__d0 _lh_comp_plus_arg1_1 _lh_comp_plus_arg2_1 =
  (match _lh_comp_plus_arg1_1 with
    | `Complex(_lh_comp_plus_Complex_0_2, _lh_comp_plus_Complex_1_2) -> 
      (match _lh_comp_plus_arg2_1 with
        | `Complex(_lh_comp_plus_Complex_0_3, _lh_comp_plus_Complex_1_3) -> 
          (`Complex((_lh_comp_plus_Complex_0_2 +. _lh_comp_plus_Complex_0_3), (_lh_comp_plus_Complex_1_2 +. _lh_comp_plus_Complex_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec comp_times__d0 _lh_comp_times_arg1_1 _lh_comp_times_arg2_1 =
  (match _lh_comp_times_arg1_1 with
    | `Complex(_lh_comp_times_Complex_0_2, _lh_comp_times_Complex_1_2) -> 
      (match _lh_comp_times_arg2_1 with
        | `Complex(_lh_comp_times_Complex_0_3, _lh_comp_times_Complex_1_3) -> 
          (`Complex(((_lh_comp_times_Complex_0_2 *. _lh_comp_times_Complex_0_3) -. (_lh_comp_times_Complex_1_2 *. _lh_comp_times_Complex_1_3)), ((_lh_comp_times_Complex_0_2 *. _lh_comp_times_Complex_1_3) +. (_lh_comp_times_Complex_1_2 *. _lh_comp_times_Complex_0_3))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec createPixmap__d0 _lh_createPixmap_arg1_1 _lh_createPixmap_arg2_1 _lh_createPixmap_arg3_1 _lh_createPixmap_arg4_1 =
  (`Pixmap(_lh_createPixmap_arg1_1, _lh_createPixmap_arg2_1, _lh_createPixmap_arg3_1, _lh_createPixmap_arg4_1));;
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
let rec map_lz__d0 f_1_3 ls_2_3 =
  (lazy (match (Lazy.force ls_2_3) with
    | `LH_C(h_2_2, t_2_8) -> 
      (`LH_C((f_1_3 h_2_2), ((map_lz__d0 f_1_3) t_2_8)))
    | `LH_N -> 
      (`LH_N)));;
let rec map__d0 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_0, t_2_6) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d0 f_1_2) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_2_9) -> 
      (`LH_C((f_1_4 h_2_3), ((map__d1 f_1_4) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec myMax__d0 _lh_myMax_arg1_1 _lh_myMax_arg2_1 =
  (if (_lh_myMax_arg1_1 > _lh_myMax_arg2_1) then
    _lh_myMax_arg1_1
  else
    _lh_myMax_arg2_1);;
let rec take_lz__d0 n_4 ls_2_2 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_2_2) with
      | `LH_C(h_2_1, t_2_7) -> 
        (`LH_C(h_2_1, ((take_lz__d0 (n_4 - 1)) t_2_7)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec diverge__d0 _lh_diverge_arg1_1 _lh_diverge_arg2_1 =
  ((comp_magnitude__d0 _lh_diverge_arg1_1) > _lh_diverge_arg2_1)
and mandel__d0 _lh_mandel_arg1_1 =
  (let rec infiniteMandel_1 = (lazy (`LH_C(_lh_mandel_arg1_1, ((map_lz__d0 (fun z_1 -> 
    ((comp_plus__d0 ((comp_times__d0 z_1) z_1)) _lh_mandel_arg1_1))) infiniteMandel_1)))) in
    infiniteMandel_1)
and mandelset__d0 _lh_mandelset_arg1_1 _lh_mandelset_arg2_1 _lh_mandelset_arg3_1 _lh_mandelset_arg4_1 _lh_mandelset_arg5_1 _lh_mandelset_arg6_1 _lh_mandelset_arg7_1 =
  (let rec prettyRGB_1 = (fun s_2 -> 
    (let rec t_2_4 = (_lh_mandelset_arg7_1 - s_2) in
      (`LH_P3(s_2, t_2_4, t_2_4)))) in
    (let rec windowToViewport_1 = (fun s_3 t_2_5 -> 
      (`Complex((_lh_mandelset_arg1_1 +. (((float_of_int s_3) *. (_lh_mandelset_arg3_1 -. _lh_mandelset_arg1_1)) /. (float_of_int _lh_mandelset_arg5_1))), (_lh_mandelset_arg2_1 +. (((float_of_int t_2_5) *. (_lh_mandelset_arg4_1 -. _lh_mandelset_arg2_1)) /. (float_of_int _lh_mandelset_arg6_1)))))) in
      (let rec result_1 = (((parallelMandel__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (`LH_C(((windowToViewport_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_ls_h_2), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                | `LH_N -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((enumFromTo__d1 1) _lh_mandelset_arg5_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 ((enumFromTo__d0 1) _lh_mandelset_arg6_1)))) _lh_mandelset_arg7_1) (((myMax__d0 (_lh_mandelset_arg3_1 -. _lh_mandelset_arg1_1)) (_lh_mandelset_arg4_1 -. _lh_mandelset_arg2_1)) /. 2.0)) in
        ((((createPixmap__d0 _lh_mandelset_arg5_1) _lh_mandelset_arg6_1) _lh_mandelset_arg7_1) ((map__d0 prettyRGB_1) result_1)))))
and parallelMandel__d0 _lh_parallelMandel_arg1_1 _lh_parallelMandel_arg2_1 _lh_parallelMandel_arg3_1 =
  ((map__d1 ((whenDiverge__d0 _lh_parallelMandel_arg2_1) _lh_parallelMandel_arg3_1)) _lh_parallelMandel_arg1_1)
and testMandel_nofib__d0 _lh_testMandel_nofib_arg1_1 =
  (let rec minx_1 = (0.0 -. 2.0) in
    (let rec miny_1 = (0.0 -. 2.0) in
      (let rec maxx_1 = 2.0 in
        (let rec maxy_1 = 2.0 in
          (let rec screenX_1 = 80 in
            (let rec screenY_1 = 80 in
              (let rec limit_1 = 75 in
                (((((((mandelset__d0 minx_1) miny_1) maxx_1) maxy_1) screenX_1) screenY_1) limit_1))))))))
and whenDiverge__d0 _lh_whenDiverge_arg1_1 _lh_whenDiverge_arg2_1 _lh_whenDiverge_arg3_1 =
  (let rec walkIt_1 = (fun ls_2_1 -> 
    (let rec _lh_matchIdent_1 = ls_2_1 in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          0
        | `LH_C(_lh_whenDiverge_LH_C_0_1, _lh_whenDiverge_LH_C_1_1) -> 
          (if ((diverge__d0 _lh_whenDiverge_LH_C_0_1) _lh_whenDiverge_arg2_1) then
            0
          else
            (1 + (walkIt_1 _lh_whenDiverge_LH_C_1_1)))
        | _ -> 
          (failwith "error")))) in
    (walkIt_1 ((take_lz__d0 _lh_whenDiverge_arg1_1) (mandel__d0 _lh_whenDiverge_arg3_1))));;
end;;

