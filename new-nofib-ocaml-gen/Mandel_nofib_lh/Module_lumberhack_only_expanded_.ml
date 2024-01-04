

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_ = struct
let rec enumFromTo_lh__d2 a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh__d2 (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec myMax_lh__d1 _lh_myMax_arg1_0 _lh_myMax_arg2_0 =
  (if (_lh_myMax_arg1_0 > _lh_myMax_arg2_0) then
    _lh_myMax_arg1_0
  else
    _lh_myMax_arg2_0);;
let rec map_lh__d1 f_2 ls_4 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C((f_2 h_3), ((map_lh__d1 f_2) t_3)))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (`LH_C(a_1, ((enumFromTo_lh__d1 (a_1 + 1)) b_1)))
  else
    (`LH_N));;
let rec createPixmap_lh__d1 _lh_createPixmap_arg1_0 _lh_createPixmap_arg2_0 _lh_createPixmap_arg3_0 _lh_createPixmap_arg4_0 =
  (`Pixmap(_lh_createPixmap_arg1_0, _lh_createPixmap_arg2_0, _lh_createPixmap_arg3_0, _lh_createPixmap_arg4_0));;
let rec comp_plus_lh__d1 _lh_comp_plus_arg1_0 _lh_comp_plus_arg2_0 =
  (match _lh_comp_plus_arg1_0 with
    | `Complex(_lh_comp_plus_Complex_0_0, _lh_comp_plus_Complex_1_0) -> 
      (match _lh_comp_plus_arg2_0 with
        | `Complex(_lh_comp_plus_Complex_0_1, _lh_comp_plus_Complex_1_1) -> 
          (`Complex((_lh_comp_plus_Complex_0_0 +. _lh_comp_plus_Complex_0_1), (_lh_comp_plus_Complex_1_0 +. _lh_comp_plus_Complex_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec comp_times_lh__d1 _lh_comp_times_arg1_0 _lh_comp_times_arg2_0 =
  (match _lh_comp_times_arg1_0 with
    | `Complex(_lh_comp_times_Complex_0_0, _lh_comp_times_Complex_1_0) -> 
      (match _lh_comp_times_arg2_0 with
        | `Complex(_lh_comp_times_Complex_0_1, _lh_comp_times_Complex_1_1) -> 
          (`Complex(((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_0_1) -. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_1_1)), ((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_1_1) +. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_0_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lz_lh__d1 f_0 ls_0 =
  (lazy (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lz_lh__d1 f_0) t_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec mandel_lh__d1 _lh_mandel_arg1_0 =
  (let rec infiniteMandel_0 = (lazy (`LH_C(_lh_mandel_arg1_0, ((map_lz_lh__d1 (fun z_0 -> 
    ((comp_plus_lh__d1 ((comp_times_lh__d1 z_0) z_0)) _lh_mandel_arg1_0))) infiniteMandel_0)))) in
    infiniteMandel_0);;
let rec take_lz_lh__d1 n_0 ls_1 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1, t_1) -> 
        (`LH_C(h_1, ((take_lz_lh__d1 (n_0 - 1)) t_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec comp_magnitude_lh__d1 _lh_comp_magnitude_arg1_0 =
  (match _lh_comp_magnitude_arg1_0 with
    | `Complex(_lh_comp_magnitude_Complex_0_0, _lh_comp_magnitude_Complex_1_0) -> 
      ((_lh_comp_magnitude_Complex_0_0 *. _lh_comp_magnitude_Complex_0_0) +. (_lh_comp_magnitude_Complex_1_0 *. _lh_comp_magnitude_Complex_1_0))
    | _ -> 
      (failwith "error"));;
let rec diverge_lh__d1 _lh_diverge_arg1_0 _lh_diverge_arg2_0 =
  ((comp_magnitude_lh__d1 _lh_diverge_arg1_0) > _lh_diverge_arg2_0);;
let rec whenDiverge_lh__d1 _lh_whenDiverge_arg1_0 _lh_whenDiverge_arg2_0 _lh_whenDiverge_arg3_0 =
  (let rec walkIt_0 = (fun ls_2 -> 
    (let rec _lh_matchIdent_0 = ls_2 in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          0
        | `LH_C(_lh_whenDiverge_LH_C_0_0, _lh_whenDiverge_LH_C_1_0) -> 
          (if ((diverge_lh__d1 _lh_whenDiverge_LH_C_0_0) _lh_whenDiverge_arg2_0) then
            0
          else
            (1 + (walkIt_0 _lh_whenDiverge_LH_C_1_0)))
        | _ -> 
          (failwith "error")))) in
    (walkIt_0 ((take_lz_lh__d1 _lh_whenDiverge_arg1_0) (mandel_lh__d1 _lh_whenDiverge_arg3_0))));;
let rec map_lh__d2 f_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_1 h_2), ((map_lh__d2 f_1) t_2)))
    | `LH_N -> 
      (`LH_N));;
let rec parallelMandel_lh__d1 _lh_parallelMandel_arg1_0 _lh_parallelMandel_arg2_0 _lh_parallelMandel_arg3_0 =
  ((map_lh__d2 ((whenDiverge_lh__d1 _lh_parallelMandel_arg2_0) _lh_parallelMandel_arg3_0)) _lh_parallelMandel_arg1_0);;
let rec mandelset_lh__d1 _lh_mandelset_arg1_0 _lh_mandelset_arg2_0 _lh_mandelset_arg3_0 _lh_mandelset_arg4_0 _lh_mandelset_arg5_0 _lh_mandelset_arg6_0 _lh_mandelset_arg7_0 =
  (let rec prettyRGB_0 = (fun s_0 -> 
    (let rec t_4 = (_lh_mandelset_arg7_0 - s_0) in
      (`LH_P3(s_0, t_4, t_4)))) in
    (let rec windowToViewport_0 = (fun s_1 t_5 -> 
      (`Complex((_lh_mandelset_arg1_0 +. (((float_of_int s_1) *. (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) /. (float_of_int _lh_mandelset_arg5_0))), (_lh_mandelset_arg2_0 +. (((float_of_int t_5) *. (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. (float_of_int _lh_mandelset_arg6_0)))))) in
      (let rec result_0 = (((parallelMandel_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (`LH_C(((windowToViewport_0 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                | `LH_N -> 
                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
              (_lh_listcomp_fun_1 ((enumFromTo_lh__d2 1) _lh_mandelset_arg5_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((enumFromTo_lh__d1 1) _lh_mandelset_arg6_0)))) _lh_mandelset_arg7_0) (((myMax_lh__d1 (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. 2.0)) in
        ((((createPixmap_lh__d1 _lh_mandelset_arg5_0) _lh_mandelset_arg6_0) _lh_mandelset_arg7_0) ((map_lh__d1 prettyRGB_0) result_0)))));;
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

