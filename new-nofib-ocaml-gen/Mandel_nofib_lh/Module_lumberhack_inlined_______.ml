

(* lumberhack_inlined *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_inlined_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec enumFromTo_lh__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 windowToViewport_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_0 = ((windowToViewport_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_ls_h_1) in
              (fun f_2 -> 
                (let rec t_1 = (t_0 f_2) in
                  (let rec h_1 = (f_2 h_0) in
                    (fun f_3 -> 
                      (`LH_C((f_3 h_1), (t_1 f_3))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 windowToViewport_1 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)));;
let rec enumFromTo_lh__d2 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d2 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
        (fun _lh_listcomp_fun_4 _lh_mandelset_arg5_0 windowToViewport_2 -> 
          (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_0 -> 
            (((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_5) windowToViewport_2) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_4)) in
            (_lh_listcomp_fun_5 ((enumFromTo_lh__d1 1) _lh_mandelset_arg5_0))))))
  else
    (fun _lh_listcomp_fun_6 _lh_mandelset_arg5_1 windowToViewport_3 f_5 f_6 -> 
      (`LH_N)));;
let rec createPixmap_lh__d1 _lh_createPixmap_arg1_0 _lh_createPixmap_arg2_0 _lh_createPixmap_arg3_0 _lh_createPixmap_arg4_0 =
  (`Pixmap(_lh_createPixmap_arg1_0, _lh_createPixmap_arg2_0, _lh_createPixmap_arg3_0, _lh_createPixmap_arg4_0));;
let rec myMax_lh__d1 _lh_myMax_arg1_0 _lh_myMax_arg2_0 =
  (if (_lh_myMax_arg1_0 > _lh_myMax_arg2_0) then
    _lh_myMax_arg1_0
  else
    _lh_myMax_arg2_0);;
let rec map_lz_lh__d1 f_4 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_4 h_2), ((map_lz_lh__d1 f_4) t_2)))
    | `LH_N -> 
      (`LH_N)));;
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
let rec mandel_lh__d1 _lh_mandel_arg1_0 =
  (let rec infiniteMandel_0 = (lazy (`LH_C(_lh_mandel_arg1_0, ((map_lz_lh__d1 (fun z_0 -> 
    (((comp_times_lh__d1 z_0) z_0) _lh_mandel_arg1_0))) infiniteMandel_0)))) in
    infiniteMandel_0);;
let rec comp_magnitude_lh__d1 _lh_comp_magnitude_arg1_0 =
  (match _lh_comp_magnitude_arg1_0 with
    | `Complex(_lh_comp_magnitude_Complex_0_0, _lh_comp_magnitude_Complex_1_0) -> 
      ((_lh_comp_magnitude_Complex_0_0 *. _lh_comp_magnitude_Complex_0_0) +. (_lh_comp_magnitude_Complex_1_0 *. _lh_comp_magnitude_Complex_1_0))
    | _ -> 
      (failwith "error"));;
let rec diverge_lh__d1 _lh_diverge_arg1_0 _lh_diverge_arg2_0 =
  ((comp_magnitude_lh__d1 _lh_diverge_arg1_0) > _lh_diverge_arg2_0);;
let rec take_lz_lz_lh__d1 _lh_take_lz_lz_arg1_0 _lh_take_lz_lz_arg2_0 =
  (if (_lh_take_lz_lz_arg1_0 > 0) then
    (let rec _lh_matchIdent_1 = (Lazy.force _lh_take_lz_lz_arg2_0) in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          (lazy (fun _lh_whenDiverge_arg2_0 walkIt_1 -> 
            0))
        | `LH_C(_lh_take_lz_lz_LH_C_0_0, _lh_take_lz_lz_LH_C_1_0) -> 
          (lazy (let rec _lh_whenDiverge_LH_C_1_0 = ((take_lz_lz_lh__d1 (_lh_take_lz_lz_arg1_0 - 1)) _lh_take_lz_lz_LH_C_1_0) in
            (let rec _lh_whenDiverge_LH_C_0_0 = _lh_take_lz_lz_LH_C_0_0 in
              (fun _lh_whenDiverge_arg2_1 walkIt_2 -> 
                (if ((diverge_lh__d1 _lh_whenDiverge_LH_C_0_0) _lh_whenDiverge_arg2_1) then
                  0
                else
                  (1 + (walkIt_2 _lh_whenDiverge_LH_C_1_0)))))))
        | _ -> 
          (failwith "error")))
  else
    (lazy (fun _lh_whenDiverge_arg2_2 walkIt_3 -> 
      0)));;
let rec parallelMandel_lh__d1 _lh_parallelMandel_arg1_0 _lh_parallelMandel_arg2_0 _lh_parallelMandel_arg3_0 =
  (_lh_parallelMandel_arg1_0 (fun _lh_whenDiverge_arg3_0 -> 
    (let rec walkIt_0 = (fun ls_2 -> 
      (let rec _lh_matchIdent_0 = (Lazy.force ls_2) in
        ((_lh_matchIdent_0 _lh_parallelMandel_arg3_0) walkIt_0))) in
      (walkIt_0 ((take_lz_lz_lh__d1 _lh_parallelMandel_arg2_0) (mandel_lh__d1 _lh_whenDiverge_arg3_0))))));;
let rec testMandel_nofib_lh__d1 _lh_testMandel_nofib_arg1_0 =
  (let rec minx_0 = (0.0 -. 2.0) in
    (let rec miny_0 = (0.0 -. 2.0) in
      (let rec maxx_0 = 2.0 in
        (let rec maxy_0 = 2.0 in
          (let rec screenX_0 = 80 in
            (let rec screenY_0 = 80 in
              (let rec limit_0 = 75 in
                (let rec prettyRGB_1 = (fun s_2 -> 
                  (let rec t_5 = (limit_0 - s_2) in
                    (`LH_P3(s_2, t_5, t_5)))) in
                  (let rec windowToViewport_5 = (fun s_3 t_6 -> 
                    (`Complex((minx_0 +. (((float_of_int s_3) *. (maxx_0 -. minx_0)) /. (float_of_int screenX_0))), (miny_0 +. (((float_of_int t_6) *. (maxy_0 -. miny_0)) /. (float_of_int screenY_0)))))) in
                    (let rec result_1 = (((parallelMandel_lh__d1 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
                      (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_8) screenX_0) windowToViewport_5)) in
                      (_lh_listcomp_fun_8 ((enumFromTo_lh__d2 1) screenY_0)))) limit_0) (((myMax_lh__d1 (maxx_0 -. minx_0)) (maxy_0 -. miny_0)) /. 2.0)) in
                      ((((createPixmap_lh__d1 screenX_0) screenY_0) limit_0) (result_1 prettyRGB_1))))))))))));;
let run () = 1 + (Obj.magic ((testMandel_nofib_lh__d1 0)));
end;;

