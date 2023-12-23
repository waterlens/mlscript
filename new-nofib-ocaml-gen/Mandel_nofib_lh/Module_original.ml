
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec take_lz_lh n_0 ls_2 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_2) with
      | `LH_C(h_2, t_2) -> 
        (`LH_C(h_2, ((take_lz_lh (n_0 - 1)) t_2)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec comp_plus_lh _lh_comp_plus_arg1_0 _lh_comp_plus_arg2_0 =
  (match _lh_comp_plus_arg1_0 with
    | `Complex(_lh_comp_plus_Complex_0_0, _lh_comp_plus_Complex_1_0) -> 
      (match _lh_comp_plus_arg2_0 with
        | `Complex(_lh_comp_plus_Complex_0_1, _lh_comp_plus_Complex_1_1) -> 
          (`Complex((_lh_comp_plus_Complex_0_0 +. _lh_comp_plus_Complex_0_1), (_lh_comp_plus_Complex_1_0 +. _lh_comp_plus_Complex_1_1)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lz_lh f_1 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lz_lh f_1) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec comp_times_lh _lh_comp_times_arg1_0 _lh_comp_times_arg2_0 =
  (match _lh_comp_times_arg1_0 with
    | `Complex(_lh_comp_times_Complex_0_0, _lh_comp_times_Complex_1_0) -> 
      (match _lh_comp_times_arg2_0 with
        | `Complex(_lh_comp_times_Complex_0_1, _lh_comp_times_Complex_1_1) -> 
          (`Complex(((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_0_1) -. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_1_1)), ((_lh_comp_times_Complex_0_0 *. _lh_comp_times_Complex_1_1) +. (_lh_comp_times_Complex_1_0 *. _lh_comp_times_Complex_0_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mandel_lh _lh_mandel_arg1_0 =
  (let rec infiniteMandel_0 = (lazy (`LH_C(_lh_mandel_arg1_0, ((map_lz_lh (fun z_0 -> 
    ((comp_plus_lh ((comp_times_lh z_0) z_0)) _lh_mandel_arg1_0))) infiniteMandel_0)))) in
    infiniteMandel_0);;
let rec comp_magnitude_lh _lh_comp_magnitude_arg1_0 =
  (match _lh_comp_magnitude_arg1_0 with
    | `Complex(_lh_comp_magnitude_Complex_0_0, _lh_comp_magnitude_Complex_1_0) -> 
      ((_lh_comp_magnitude_Complex_0_0 *. _lh_comp_magnitude_Complex_0_0) +. (_lh_comp_magnitude_Complex_1_0 *. _lh_comp_magnitude_Complex_1_0))
    | _ -> 
      (failwith "error"));;
let rec diverge_lh _lh_diverge_arg1_0 _lh_diverge_arg2_0 =
  ((comp_magnitude_lh _lh_diverge_arg1_0) > _lh_diverge_arg2_0);;
let rec whenDiverge_lh _lh_whenDiverge_arg1_0 _lh_whenDiverge_arg2_0 _lh_whenDiverge_arg3_0 =
  (let rec walkIt_0 = (fun ls_3 -> 
    (let rec _lh_matchIdent_0 = ls_3 in
      (match _lh_matchIdent_0 with
        | `LH_N -> 
          0
        | `LH_C(_lh_whenDiverge_LH_C_0_0, _lh_whenDiverge_LH_C_1_0) -> 
          (if ((diverge_lh _lh_whenDiverge_LH_C_0_0) _lh_whenDiverge_arg2_0) then
            0
          else
            (1 + (walkIt_0 _lh_whenDiverge_LH_C_1_0)))
        | _ -> 
          (failwith "error")))) in
    (walkIt_0 ((take_lz_lh _lh_whenDiverge_arg1_0) (mandel_lh _lh_whenDiverge_arg3_0))));;
let rec parallelMandel_lh _lh_parallelMandel_arg1_0 _lh_parallelMandel_arg2_0 _lh_parallelMandel_arg3_0 =
  ((map_lh ((whenDiverge_lh _lh_parallelMandel_arg2_0) _lh_parallelMandel_arg3_0)) _lh_parallelMandel_arg1_0);;
let rec createPixmap_lh _lh_createPixmap_arg1_0 _lh_createPixmap_arg2_0 _lh_createPixmap_arg3_0 _lh_createPixmap_arg4_0 =
  (`Pixmap(_lh_createPixmap_arg1_0, _lh_createPixmap_arg2_0, _lh_createPixmap_arg3_0, _lh_createPixmap_arg4_0));;
let rec myMax_lh _lh_myMax_arg1_0 _lh_myMax_arg2_0 =
  (if (_lh_myMax_arg1_0 > _lh_myMax_arg2_0) then
    _lh_myMax_arg1_0
  else
    _lh_myMax_arg2_0);;
let rec mandelset_lh _lh_mandelset_arg1_0 _lh_mandelset_arg2_0 _lh_mandelset_arg3_0 _lh_mandelset_arg4_0 _lh_mandelset_arg5_0 _lh_mandelset_arg6_0 _lh_mandelset_arg7_0 =
  (let rec prettyRGB_0 = (fun s_0 -> 
    (let rec t_3 = (_lh_mandelset_arg7_0 - s_0) in
      (`LH_P3(s_0, t_3, t_3)))) in
    (let rec windowToViewport_0 = (fun s_1 t_4 -> 
      (`Complex((_lh_mandelset_arg1_0 +. (((float_of_int s_1) *. (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) /. (float_of_int _lh_mandelset_arg5_0))), (_lh_mandelset_arg2_0 +. (((float_of_int t_4) *. (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. (float_of_int _lh_mandelset_arg6_0)))))) in
      (let rec result_0 = (((parallelMandel_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (`LH_C(((windowToViewport_0 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_ls_h_0), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                | `LH_N -> 
                  (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
              (_lh_listcomp_fun_1 ((enumFromTo_lh 1) _lh_mandelset_arg5_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 ((enumFromTo_lh 1) _lh_mandelset_arg6_0)))) _lh_mandelset_arg7_0) (((myMax_lh (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. 2.0)) in
        ((((createPixmap_lh _lh_mandelset_arg5_0) _lh_mandelset_arg6_0) _lh_mandelset_arg7_0) ((map_lh prettyRGB_0) result_0)))));;
let rec testMandel_nofib_lh _lh_testMandel_nofib_arg1_0 =
  (let rec minx_0 = (0.0 -. 2.0) in
    (let rec miny_0 = (0.0 -. 2.0) in
      (let rec maxx_0 = 2.0 in
        (let rec maxy_0 = 2.0 in
          (let rec screenX_0 = 80 in
            (let rec screenY_0 = 80 in
              (let rec limit_0 = 75 in
                (((((((mandelset_lh minx_0) miny_0) maxx_0) maxy_0) screenX_0) screenY_0) limit_0))))))));;
end;;

