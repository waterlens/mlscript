(*
touch ./Mandel_nofib.mli && ocamlc ./Mandel_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Mandel_nofib.ml -o "./Mandel_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Mandel_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
let rec comp_magnitude_d0 _lh_comp_magnitude_arg1_1 =
  (match _lh_comp_magnitude_arg1_1 with
    | `Complex(_lh_comp_magnitude_Complex_0_1, _lh_comp_magnitude_Complex_1_1) -> 
      ((_lh_comp_magnitude_Complex_0_1 *. _lh_comp_magnitude_Complex_0_1) +. (_lh_comp_magnitude_Complex_1_1 *. _lh_comp_magnitude_Complex_1_1))
    | _ -> 
      (failwith "error"));;
let rec comp_plus_d0 _lh_comp_plus_arg1_1 _lh_comp_plus_arg2_1 =
  (match _lh_comp_plus_arg1_1 with
    | `Complex(_lh_comp_plus_Complex_0_2, _lh_comp_plus_Complex_1_2) -> 
      (match _lh_comp_plus_arg2_1 with
        | `Complex(_lh_comp_plus_Complex_0_3, _lh_comp_plus_Complex_1_3) -> 
          (`Complex((_lh_comp_plus_Complex_0_2 +. _lh_comp_plus_Complex_0_3), (_lh_comp_plus_Complex_1_2 +. _lh_comp_plus_Complex_1_3)))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec comp_times_d0 _lh_comp_times_arg1_1 _lh_comp_times_arg2_1 =
  (match _lh_comp_times_arg1_1 with
    | `Complex(_lh_comp_times_Complex_0_2, _lh_comp_times_Complex_1_2) -> 
      (match _lh_comp_times_arg2_1 with
        | `Complex(_lh_comp_times_Complex_0_3, _lh_comp_times_Complex_1_3) -> 
          (`Complex(((_lh_comp_times_Complex_0_2 *. _lh_comp_times_Complex_0_3) -. (_lh_comp_times_Complex_1_2 *. _lh_comp_times_Complex_1_3)), ((_lh_comp_times_Complex_0_2 *. _lh_comp_times_Complex_1_3) +. (_lh_comp_times_Complex_1_2 *. _lh_comp_times_Complex_0_3))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec createPixmap_d0 _lh_createPixmap_arg1_1 _lh_createPixmap_arg2_1 _lh_createPixmap_arg3_1 _lh_createPixmap_arg4_1 =
  (`Pixmap(_lh_createPixmap_arg1_1, _lh_createPixmap_arg2_1, _lh_createPixmap_arg3_1, _lh_createPixmap_arg4_1));;
let rec enumFromTo_d0 a_5 b_2 =
  (if (a_5 <= b_2) then
    (`LH_C(a_5, ((enumFromTo_d0 (a_5 + 1)) b_2)))
  else
    (`LH_N));;
let rec enumFromTo_d1 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo_d1 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec map_lz_d0 f_1_3 ls_2_2 =
  (lazy (match (Lazy.force ls_2_2) with
    | `LH_C(h_2_1, t_2_7) -> 
      (`LH_C((f_1_3 h_2_1), ((map_lz_d0 f_1_3) t_2_7)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_d0 f_1_2 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_0, t_2_4) -> 
      (`LH_C((f_1_2 h_2_0), ((map_d0 f_1_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_1_4 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_3, t_2_9) -> 
      (`LH_C((f_1_4 h_2_3), ((map_d1 f_1_4) t_2_9)))
    | `LH_N -> 
      (`LH_N));;
let rec myMax_d0 _lh_myMax_arg1_1 _lh_myMax_arg2_1 =
  (if (_lh_myMax_arg1_1 > _lh_myMax_arg2_1) then
    _lh_myMax_arg1_1
  else
    _lh_myMax_arg2_1);;
let rec take_lz_d0 n_4 ls_2_3 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_2_3) with
      | `LH_C(h_2_2, t_2_8) -> 
        (`LH_C(h_2_2, ((take_lz_d0 (n_4 - 1)) t_2_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec diverge_d0 _lh_diverge_arg1_1 _lh_diverge_arg2_1 =
  ((comp_magnitude_d0 _lh_diverge_arg1_1) > _lh_diverge_arg2_1)
and mandelset_d0 _lh_mandelset_arg1_1 _lh_mandelset_arg2_1 _lh_mandelset_arg3_1 _lh_mandelset_arg4_1 _lh_mandelset_arg5_1 _lh_mandelset_arg6_1 _lh_mandelset_arg7_1 =
  (let rec prettyRGB_1 = (fun s_2 -> 
    (let rec t_2_5 = (_lh_mandelset_arg7_1 - s_2) in
      (`LH_P3(s_2, t_2_5, t_2_5)))) in
    (let rec windowToViewport_1 = (fun s_3 t_2_6 -> 
      (`Complex((_lh_mandelset_arg1_1 +. (((float_of_int s_3) *. (_lh_mandelset_arg3_1 -. _lh_mandelset_arg1_1)) /. (float_of_int _lh_mandelset_arg5_1))), (_lh_mandelset_arg2_1 +. (((float_of_int t_2_6) *. (_lh_mandelset_arg4_1 -. _lh_mandelset_arg2_1)) /. (float_of_int _lh_mandelset_arg6_1)))))) in
      (let rec result_1 = (((parallelMandel_d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
              (match _lh_listcomp_fun_para_3 with
                | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                  (`LH_C(((windowToViewport_1 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_ls_h_2), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
                | `LH_N -> 
                  (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
              (_lh_listcomp_fun_3 ((enumFromTo_d1 1) _lh_mandelset_arg5_1)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 ((enumFromTo_d0 1) _lh_mandelset_arg6_1)))) _lh_mandelset_arg7_1) (((myMax_d0 (_lh_mandelset_arg3_1 -. _lh_mandelset_arg1_1)) (_lh_mandelset_arg4_1 -. _lh_mandelset_arg2_1)) /. 2.0)) in
        ((((createPixmap_d0 _lh_mandelset_arg5_1) _lh_mandelset_arg6_1) _lh_mandelset_arg7_1) ((map_d0 prettyRGB_1) result_1)))))
and mandel_d0 _lh_mandel_arg1_1 =
  (let rec infiniteMandel_1 = (lazy (`LH_C(_lh_mandel_arg1_1, ((map_lz_d0 (fun z_1 -> 
    ((comp_plus_d0 ((comp_times_d0 z_1) z_1)) _lh_mandel_arg1_1))) infiniteMandel_1)))) in
    infiniteMandel_1)
and parallelMandel_d0 _lh_parallelMandel_arg1_1 _lh_parallelMandel_arg2_1 _lh_parallelMandel_arg3_1 =
  ((map_d1 ((whenDiverge_d0 _lh_parallelMandel_arg2_1) _lh_parallelMandel_arg3_1)) _lh_parallelMandel_arg1_1)
and testMandel_nofib_d0 _lh_testMandel_nofib_arg1_1 =
  (let rec minx_1 = (0.0 -. 2.0) in
    (let rec miny_1 = (0.0 -. 2.0) in
      (let rec maxx_1 = 2.0 in
        (let rec maxy_1 = 2.0 in
          (let rec screenX_1 = 80 in
            (let rec screenY_1 = 80 in
              (let rec limit_1 = 75 in
                (((((((mandelset_d0 minx_1) miny_1) maxx_1) maxy_1) screenX_1) screenY_1) limit_1))))))))
and whenDiverge_d0 _lh_whenDiverge_arg1_1 _lh_whenDiverge_arg2_1 _lh_whenDiverge_arg3_1 =
  (let rec walkIt_1 = (fun ls_2_1 -> 
    (let rec _lh_matchIdent_1 = ls_2_1 in
      (match _lh_matchIdent_1 with
        | `LH_N -> 
          0
        | `LH_C(_lh_whenDiverge_LH_C_0_1, _lh_whenDiverge_LH_C_1_1) -> 
          (if ((diverge_d0 _lh_whenDiverge_LH_C_0_1) _lh_whenDiverge_arg2_1) then
            0
          else
            (1 + (walkIt_1 _lh_whenDiverge_LH_C_1_1)))
        | _ -> 
          (failwith "error")))) in
    (walkIt_1 ((take_lz_d0 _lh_whenDiverge_arg1_1) (mandel_d0 _lh_whenDiverge_arg3_1))));;

(* lumberhack *)
let rec comp_magnitude_d0_d0 _lh_comp_magnitude_arg1_0 =
  (match _lh_comp_magnitude_arg1_0 with
    | `Complex(_lh_comp_magnitude_Complex_0_0, _lh_comp_magnitude_Complex_1_0) -> 
      ((_lh_comp_magnitude_Complex_0_0 *. _lh_comp_magnitude_Complex_0_0) +. (_lh_comp_magnitude_Complex_1_0 *. _lh_comp_magnitude_Complex_1_0))
    | _ -> 
      (failwith "error"));;
let rec comp_plus_d0_d0 _lh_comp_plus_arg1_0 _lh_comp_plus_arg2_1 =
  (_lh_comp_plus_arg1_0 _lh_comp_plus_arg2_1);;
let rec comp_times_d0_d0 _lh_comp_times_arg1_0 _lh_comp_times_arg2_0 =
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
let rec createPixmap_d0_d0 _lh_createPixmap_arg1_0 _lh_createPixmap_arg2_0 _lh_createPixmap_arg3_0 _lh_createPixmap_arg4_0 =
  (`Pixmap(_lh_createPixmap_arg1_0, _lh_createPixmap_arg2_0, _lh_createPixmap_arg3_0, _lh_createPixmap_arg4_0));;
let rec map_lz_d0_d0 f_5 ls_2 =
  (lazy (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_4) -> 
      (`LH_C((f_5 h_2), ((map_lz_d0_d0 f_5) t_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_d0_d0 f_2 ls_1 =
  (ls_1 f_2);;
let rec map_d1_d0 f_6 ls_4 =
  (ls_4 f_6);;
let rec myMax_d0_d0 _lh_myMax_arg1_0 _lh_myMax_arg2_0 =
  (if (_lh_myMax_arg1_0 > _lh_myMax_arg2_0) then
    _lh_myMax_arg1_0
  else
    _lh_myMax_arg2_0);;
let rec diverge_d0_d0 _lh_diverge_arg1_0 _lh_diverge_arg2_0 =
  ((comp_magnitude_d0_d0 _lh_diverge_arg1_0) > _lh_diverge_arg2_0)
and enumFromTo_d0_d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_d0_d0 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_0 _lh_mandelset_arg5_0 windowToViewport_0 -> 
          (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_0 -> 
            (((((_lh_listcomp_fun_para_0 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_1) windowToViewport_0) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_0)) in
            (_lh_listcomp_fun_1 ((enumFromTo_d1_d0 1) _lh_mandelset_arg5_0))))))
  else
    (fun _lh_listcomp_fun_2 _lh_mandelset_arg5_1 windowToViewport_1 f_0 f_1 -> 
      (`LH_N)))
and enumFromTo_d1_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo_d1_d0 (a_1 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_1 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_4 windowToViewport_3 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_5 -> 
          (let rec t_2 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_1) in
            (let rec h_0 = ((windowToViewport_3 _lh_listcomp_fun_ls_h_1) _lh_listcomp_fun_ls_h_2) in
              (fun f_3 -> 
                (let rec t_3 = ((map_d1_d0 f_3) t_2) in
                  (let rec h_1 = (f_3 h_0) in
                    (fun f_4 -> 
                      (`LH_C((f_4 h_1), ((map_d0_d0 f_4) t_3))))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_6 windowToViewport_4 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_7 -> 
      (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_3)))
and mandelset_d0_d0 _lh_mandelset_arg1_0 _lh_mandelset_arg2_0 _lh_mandelset_arg3_0 _lh_mandelset_arg4_0 _lh_mandelset_arg5_2 _lh_mandelset_arg6_0 _lh_mandelset_arg7_0 =
  (let rec prettyRGB_0 = (fun s_0 -> 
    (let rec t_0 = (_lh_mandelset_arg7_0 - s_0) in
      (`LH_P3(s_0, t_0, t_0)))) in
    (let rec windowToViewport_2 = (fun s_1 t_1 -> 
      (`Complex((_lh_mandelset_arg1_0 +. (((float_of_int s_1) *. (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) /. (float_of_int _lh_mandelset_arg5_2))), (_lh_mandelset_arg2_0 +. (((float_of_int t_1) *. (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. (float_of_int _lh_mandelset_arg6_0)))))) in
      (let rec result_0 = (((parallelMandel_d0_d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_1 -> 
        (((_lh_listcomp_fun_para_1 _lh_listcomp_fun_3) _lh_mandelset_arg5_2) windowToViewport_2)) in
        (_lh_listcomp_fun_3 ((enumFromTo_d0_d0 1) _lh_mandelset_arg6_0)))) _lh_mandelset_arg7_0) (((myMax_d0_d0 (_lh_mandelset_arg3_0 -. _lh_mandelset_arg1_0)) (_lh_mandelset_arg4_0 -. _lh_mandelset_arg2_0)) /. 2.0)) in
        ((((createPixmap_d0_d0 _lh_mandelset_arg5_2) _lh_mandelset_arg6_0) _lh_mandelset_arg7_0) ((map_d0_d0 prettyRGB_0) result_0)))))
and mandel_d0_d0 _lh_mandel_arg1_0 =
  (let rec infiniteMandel_0 = (lazy (`LH_C(_lh_mandel_arg1_0, ((map_lz_d0_d0 (fun z_0 -> 
    ((comp_plus_d0_d0 ((comp_times_d0_d0 z_0) z_0)) _lh_mandel_arg1_0))) infiniteMandel_0)))) in
    infiniteMandel_0)
and parallelMandel_d0_d0 _lh_parallelMandel_arg1_0 _lh_parallelMandel_arg2_0 _lh_parallelMandel_arg3_0 =
  ((map_d1_d0 ((whenDiverge_d0_d0 _lh_parallelMandel_arg2_0) _lh_parallelMandel_arg3_0)) _lh_parallelMandel_arg1_0)
and take_lz_d0_d0 n_0 ls_3 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_3) with
      | `LH_C(h_3, t_5) -> 
        (let rec _lh_whenDiverge_LH_C_1_0 = ((take_lz_d0_d0 (n_0 - 1)) t_5) in
          (let rec _lh_whenDiverge_LH_C_0_0 = h_3 in
            (fun _lh_whenDiverge_arg2_1 walkIt_1 -> 
              (if ((diverge_d0_d0 _lh_whenDiverge_LH_C_0_0) _lh_whenDiverge_arg2_1) then
                0
              else
                (1 + (walkIt_1 _lh_whenDiverge_LH_C_1_0))))))
      | `LH_N -> 
        (fun _lh_whenDiverge_arg2_2 walkIt_2 -> 
          0))
  else
    (fun _lh_whenDiverge_arg2_3 walkIt_3 -> 
      0))
and testMandel_nofib_d0_d0 _lh_testMandel_nofib_arg1_0 =
  (let rec minx_0 = (0.0 -. 2.0) in
    (let rec miny_0 = (0.0 -. 2.0) in
      (let rec maxx_0 = 2.0 in
        (let rec maxy_0 = 2.0 in
          (let rec screenX_0 = 80 in
            (let rec screenY_0 = 80 in
              (let rec limit_0 = 75 in
                (((((((mandelset_d0_d0 minx_0) miny_0) maxx_0) maxy_0) screenX_0) screenY_0) limit_0))))))))
and whenDiverge_d0_d0 _lh_whenDiverge_arg1_0 _lh_whenDiverge_arg2_0 _lh_whenDiverge_arg3_0 =
  (let rec walkIt_0 = (fun ls_0 -> 
    (let rec _lh_matchIdent_0 = ls_0 in
      ((_lh_matchIdent_0 _lh_whenDiverge_arg2_0) walkIt_0))) in
    (walkIt_0 ((take_lz_d0_d0 _lh_whenDiverge_arg1_0) (mandel_d0_d0 _lh_whenDiverge_arg3_0))));;

(* lumberhack_pop_out *)
let rec comp_magnitude_d0_d0_d0 _lh_comp_magnitude_arg1_1 =
  (match _lh_comp_magnitude_arg1_1 with
    | `Complex(_lh_comp_magnitude_Complex_0_1, _lh_comp_magnitude_Complex_1_1) -> 
      ((_lh_comp_magnitude_Complex_0_1 *. _lh_comp_magnitude_Complex_0_1) +. (_lh_comp_magnitude_Complex_1_1 *. _lh_comp_magnitude_Complex_1_1))
    | _ -> 
      (failwith "error"));;
let rec comp_plus_d0_d0_d0 _lh_comp_plus_arg1_1 _lh_comp_plus_arg2_2 =
  (_lh_comp_plus_arg1_1 _lh_comp_plus_arg2_2);;
let rec comp_times_d0_d0_d0 _lh_comp_times_arg1_1 _lh_comp_times_arg2_1 =
  (match _lh_comp_times_arg1_1 with
    | `Complex(_lh_comp_times_Complex_0_2, _lh_comp_times_Complex_1_2) -> 
      (match _lh_comp_times_arg2_1 with
        | `Complex(_lh_comp_times_Complex_0_3, _lh_comp_times_Complex_1_3) -> 
          (let rec _lh_comp_plus_Complex_1_2 = ((_lh_comp_times_Complex_0_2 *. _lh_comp_times_Complex_1_3) +. (_lh_comp_times_Complex_1_2 *. _lh_comp_times_Complex_0_3)) in
            (let rec _lh_comp_plus_Complex_0_2 = ((_lh_comp_times_Complex_0_2 *. _lh_comp_times_Complex_0_3) -. (_lh_comp_times_Complex_1_2 *. _lh_comp_times_Complex_1_3)) in
              (fun _lh_comp_plus_arg2_3 -> 
                (match _lh_comp_plus_arg2_3 with
                  | `Complex(_lh_comp_plus_Complex_0_3, _lh_comp_plus_Complex_1_3) -> 
                    (`Complex((_lh_comp_plus_Complex_0_2 +. _lh_comp_plus_Complex_0_3), (_lh_comp_plus_Complex_1_2 +. _lh_comp_plus_Complex_1_3)))
                  | _ -> 
                    (failwith "error")))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec createPixmap_d0_d0_d0 _lh_createPixmap_arg1_1 _lh_createPixmap_arg2_1 _lh_createPixmap_arg3_1 _lh_createPixmap_arg4_1 =
  (`Pixmap(_lh_createPixmap_arg1_1, _lh_createPixmap_arg2_1, _lh_createPixmap_arg3_1, _lh_createPixmap_arg4_1));;
let rec map_lz_d0_d0_d0 f_7 ls_5 =
  (lazy (match (Lazy.force ls_5) with
    | `LH_C(h_4, t_6) -> 
      (`LH_C((f_7 h_4), ((map_lz_d0_d0_d0 f_7) t_6)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_d0_d0_d0 f_9 ls_9 =
  (ls_9 f_9);;
let rec map_d0_d0_d1 f_1_0 ls_1_0 =
  (ls_1_0 f_1_0);;
let rec map_d1_d0_d0 f_1_1 ls_1_1 =
  (ls_1_1 f_1_1);;
let rec map_d1_d0_d1 f_8 ls_7 =
  (ls_7 f_8);;
let rec myMax_d0_d0_d0 _lh_myMax_arg1_1 _lh_myMax_arg2_1 =
  (if (_lh_myMax_arg1_1 > _lh_myMax_arg2_1) then
    _lh_myMax_arg1_1
  else
    _lh_myMax_arg2_1);;
let rec diverge_d0_d0_d0 _lh_diverge_arg1_1 _lh_diverge_arg2_1 =
  ((comp_magnitude_d0_d0_d0 _lh_diverge_arg1_1) > _lh_diverge_arg2_1)
and enumFromTo_d0_d0_d0 a_3 b_3 _lh_popOutId_0_2 _lh_popOutId_1_2 _lh_popOutId_2_0 =
  (if (a_3 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_7 = ((enumFromTo_d0_d0_d0 (a_3 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_7 = a_3 in
        (let rec _lh_listcomp_fun_1_4 = (fun _lh_listcomp_fun_para_3 -> 
          (((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_7) _lh_listcomp_fun_1_4) _lh_popOutId_2_0) _lh_listcomp_fun_ls_t_7) _lh_popOutId_0_2)) in
          (_lh_listcomp_fun_1_4 ((enumFromTo_d1_d0_d0 1) _lh_popOutId_1_2)))))
  else
    (fun f_1_4 f_1_5 -> 
      (`LH_N)))
and enumFromTo_d1_d0_d0 a_2 b_2 _lh_popOutId_0_3 _lh_popOutId_1_3 _lh_popOutId_2_1 _lh_popOutId_3_0 _lh_popOutId_4_0 =
  (if (a_2 <= b_2) then
    (fun f_1_2 f_1_3 -> 
      (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo_d1_d0_d0 (a_2 + 1)) b_2) in
        (let rec _lh_listcomp_fun_ls_h_4 = a_2 in
          (let rec t_1_0 = (_lh_popOutId_1_3 _lh_listcomp_fun_ls_t_4) in
            (let rec h_6 = ((_lh_popOutId_2_1 _lh_listcomp_fun_ls_h_4) _lh_popOutId_0_3) in
              (let rec t_1_1 = ((map_d1_d0_d0 f_1_2) t_1_0) in
                (let rec h_7 = (f_1_2 h_6) in
                  (`LH_C((f_1_3 h_7), ((map_d0_d0_d0 f_1_3) t_1_1))))))))))
  else
    (_lh_popOutId_4_0 _lh_popOutId_3_0))
and mandelset_d0_d0_d0 _lh_mandelset_arg1_1 _lh_mandelset_arg2_1 _lh_mandelset_arg3_1 _lh_mandelset_arg4_1 _lh_mandelset_arg5_3 _lh_mandelset_arg6_1 _lh_mandelset_arg7_1 =
  (let rec prettyRGB_1 = (fun s_2 -> 
    (let rec t_7 = (_lh_mandelset_arg7_1 - s_2) in
      (`LH_P3(s_2, t_7, t_7)))) in
    (let rec windowToViewport_5 = (fun s_3 t_8 -> 
      (`Complex((_lh_mandelset_arg1_1 +. (((float_of_int s_3) *. (_lh_mandelset_arg3_1 -. _lh_mandelset_arg1_1)) /. (float_of_int _lh_mandelset_arg5_3))), (_lh_mandelset_arg2_1 +. (((float_of_int t_8) *. (_lh_mandelset_arg4_1 -. _lh_mandelset_arg2_1)) /. (float_of_int _lh_mandelset_arg6_1)))))) in
      (let rec result_1 = (((parallelMandel_d0_d0_d0 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
        (((_lh_listcomp_fun_para_2 _lh_listcomp_fun_8) _lh_mandelset_arg5_3) windowToViewport_5)) in
        (_lh_listcomp_fun_8 ((enumFromTo_d0_d0_d0 1) _lh_mandelset_arg6_1)))) _lh_mandelset_arg7_1) (((myMax_d0_d0_d0 (_lh_mandelset_arg3_1 -. _lh_mandelset_arg1_1)) (_lh_mandelset_arg4_1 -. _lh_mandelset_arg2_1)) /. 2.0)) in
        ((((createPixmap_d0_d0_d0 _lh_mandelset_arg5_3) _lh_mandelset_arg6_1) _lh_mandelset_arg7_1) ((map_d0_d0_d1 prettyRGB_1) result_1)))))
and mandel_d0_d0_d0 _lh_mandel_arg1_1 =
  (let rec infiniteMandel_1 = (lazy (`LH_C(_lh_mandel_arg1_1, ((map_lz_d0_d0_d0 (fun z_1 -> 
    ((comp_plus_d0_d0_d0 ((comp_times_d0_d0_d0 z_1) z_1)) _lh_mandel_arg1_1))) infiniteMandel_1)))) in
    infiniteMandel_1)
and parallelMandel_d0_d0_d0 _lh_parallelMandel_arg1_1 _lh_parallelMandel_arg2_1 _lh_parallelMandel_arg3_1 =
  ((map_d1_d0_d1 ((whenDiverge_d0_d0_d0 _lh_parallelMandel_arg2_1) _lh_parallelMandel_arg3_1)) _lh_parallelMandel_arg1_1)
and take_lz_d0_d0_d0 n_1 ls_8 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_8) with
      | `LH_C(h_5, t_9) -> 
        (let rec _lh_whenDiverge_LH_C_1_1 = ((take_lz_d0_d0_d0 (n_1 - 1)) t_9) in
          (let rec _lh_whenDiverge_LH_C_0_1 = h_5 in
            (if ((diverge_d0_d0_d0 _lh_whenDiverge_LH_C_0_1) _lh_popOutId_0_1) then
              0
            else
              (1 + (_lh_popOutId_1_1 _lh_whenDiverge_LH_C_1_1)))))
      | `LH_N -> 
        0)
  else
    0)
and testMandel_nofib_d0_d0_d0 _lh_testMandel_nofib_arg1_1 =
  (let rec minx_1 = (0.0 -. 2.0) in
    (let rec miny_1 = (0.0 -. 2.0) in
      (let rec maxx_1 = 2.0 in
        (let rec maxy_1 = 2.0 in
          (let rec screenX_1 = 80 in
            (let rec screenY_1 = 80 in
              (let rec limit_1 = 75 in
                (((((((mandelset_d0_d0_d0 minx_1) miny_1) maxx_1) maxy_1) screenX_1) screenY_1) limit_1))))))))
and whenDiverge_d0_d0_d0 _lh_whenDiverge_arg1_1 _lh_whenDiverge_arg2_4 _lh_whenDiverge_arg3_1 =
  (let rec walkIt_4 = (fun ls_6 -> 
    (let rec _lh_matchIdent_1 = ls_6 in
      ((_lh_matchIdent_1 _lh_whenDiverge_arg2_4) walkIt_4))) in
    (walkIt_4 ((take_lz_d0_d0_d0 _lh_whenDiverge_arg1_1) (mandel_d0_d0_d0 _lh_whenDiverge_arg3_1))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Mandel_nofib" (fun () -> ignore ((testMandel_nofib_d0 0)));
  Bench.Test.create ~name:"lumberhack_Mandel_nofib" (fun () -> ignore ((testMandel_nofib_d0_d0 0)));
  Bench.Test.create ~name:"lumberhack_pop_out_Mandel_nofib" (fun () -> ignore ((testMandel_nofib_d0_d0_d0 0)));
])
