

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec enumFromFloat__d0 _lh_enumFromFloat_arg1_1 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_1, (enumFromFloat__d0 (_lh_enumFromFloat_arg1_1 +. 1.0)))));;
let rec enumFromFloat__d1 _lh_enumFromFloat_arg1_4 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_4, (enumFromFloat__d1 (_lh_enumFromFloat_arg1_4 +. 1.0)))));;
let rec enumFromFloat__d2 _lh_enumFromFloat_arg1_5 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_5, (enumFromFloat__d2 (_lh_enumFromFloat_arg1_5 +. 1.0)))));;
let rec enumFromFloat__d3 _lh_enumFromFloat_arg1_2 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_2, (enumFromFloat__d3 (_lh_enumFromFloat_arg1_2 +. 1.0)))));;
let rec enumFromFloat__d4 _lh_enumFromFloat_arg1_6 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_6, (enumFromFloat__d4 (_lh_enumFromFloat_arg1_6 +. 1.0)))));;
let rec enumFromFloat__d5 _lh_enumFromFloat_arg1_3 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_3, (enumFromFloat__d5 (_lh_enumFromFloat_arg1_3 +. 1.0)))));;
let rec head_lz__d0 ls_2_2 =
  (match (Lazy.force ls_2_2) with
    | `LH_C(h_2_3, t_2_5) -> 
      h_2_3
    | `LH_N -> 
      (failwith "error"));;
let rec head_lz__d1 ls_2_8 =
  (match (Lazy.force ls_2_8) with
    | `LH_C(h_2_9, t_3_1) -> 
      h_2_9
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d0 f_1_9 ls_2_6 =
  (lazy (match (Lazy.force ls_2_6) with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C((f_1_9 h_2_7), ((map_lz__d0 f_1_9) t_2_9)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d1 f_2_1 ls_2_7 =
  (lazy (match (Lazy.force ls_2_7) with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C((f_2_1 h_2_8), ((map_lz__d1 f_2_1) t_3_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d2 f_1_5 ls_2_1 =
  (lazy (match (Lazy.force ls_2_1) with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_5 h_2_2), ((map_lz__d2 f_1_5) t_2_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d3 f_1_8 ls_2_4 =
  (lazy (match (Lazy.force ls_2_4) with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_8 h_2_5), ((map_lz__d3 f_1_8) t_2_7)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d4 f_1_7 ls_2_3 =
  (lazy (match (Lazy.force ls_2_3) with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_7 h_2_4), ((map_lz__d4 f_1_7) t_2_6)))
    | `LH_N -> 
      (`LH_N)));;
let rec sumFloat__d0 _lh_sumFloat_arg1_1 =
  (match _lh_sumFloat_arg1_1 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_1, _lh_sumFloat_LH_C_1_1) -> 
      (_lh_sumFloat_LH_C_0_1 +. (sumFloat__d0 _lh_sumFloat_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec sumFloat__d1 _lh_sumFloat_arg1_5 =
  (match _lh_sumFloat_arg1_5 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_5, _lh_sumFloat_LH_C_1_5) -> 
      (_lh_sumFloat_LH_C_0_5 +. (sumFloat__d1 _lh_sumFloat_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec sumFloat__d2 _lh_sumFloat_arg1_4 =
  (match _lh_sumFloat_arg1_4 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_4, _lh_sumFloat_LH_C_1_4) -> 
      (_lh_sumFloat_LH_C_0_4 +. (sumFloat__d2 _lh_sumFloat_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec sumFloat__d3 _lh_sumFloat_arg1_3 =
  (match _lh_sumFloat_arg1_3 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_3, _lh_sumFloat_LH_C_1_3) -> 
      (_lh_sumFloat_LH_C_0_3 +. (sumFloat__d3 _lh_sumFloat_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec sumFloat__d4 _lh_sumFloat_arg1_2 =
  (match _lh_sumFloat_arg1_2 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_2, _lh_sumFloat_LH_C_1_2) -> 
      (_lh_sumFloat_LH_C_0_2 +. (sumFloat__d4 _lh_sumFloat_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec tail_lz__d0 ls_1_9 =
  (match (Lazy.force ls_1_9) with
    | `LH_C(h_2_0, t_2_2) -> 
      t_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz__d1 ls_2_5 =
  (match (Lazy.force ls_2_5) with
    | `LH_C(h_2_6, t_2_8) -> 
      t_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz__d0 n_5 ls_2_0 =
  (if (n_5 > 0) then
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_1, t_2_3) -> 
        (`LH_C(h_2_1, ((take_lz__d0 (n_5 - 1)) t_2_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zipWith_lz_lz__d0 f_1_3 xs_1_0 ys_1_0 =
  (lazy (match (Lazy.force xs_1_0) with
    | `LH_C(hx_9, tx_9) -> 
      (match (Lazy.force ys_1_0) with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_3 hx_9) hy_9), (((zipWith_lz_lz__d0 f_1_3) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz__d1 f_1_2 xs_9 ys_9 =
  (lazy (match (Lazy.force xs_9) with
    | `LH_C(hx_8, tx_8) -> 
      (match (Lazy.force ys_9) with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith_lz_lz__d1 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz__d2 f_1_4 xs_1_1 ys_1_1 =
  (lazy (match (Lazy.force xs_1_1) with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match (Lazy.force ys_1_1) with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_1_4 hx_1_0) hy_1_0), (((zipWith_lz_lz__d2 f_1_4) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz__d3 f_1_6 xs_1_2 ys_1_2 =
  (lazy (match (Lazy.force xs_1_2) with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match (Lazy.force ys_1_2) with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_1_6 hx_1_1) hy_1_1), (((zipWith_lz_lz__d3 f_1_6) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz__d4 f_2_0 xs_1_3 ys_1_3 =
  (lazy (match (Lazy.force xs_1_3) with
    | `LH_C(hx_1_2, tx_1_2) -> 
      (match (Lazy.force ys_1_3) with
        | `LH_C(hy_1_2, ty_1_2) -> 
          (`LH_C(((f_2_0 hx_1_2) hy_1_2), (((zipWith_lz_lz__d4 f_2_0) tx_1_2) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec etotal__d0 _lh_etotal_arg1_1 =
  (sumFloat__d4 ((take_lz__d0 _lh_etotal_arg1_1) ((map_lz__d2 (fun a_1_0 -> 
    (a_1_0 *. a_1_0))) (((zipWith_lz_lz__d4 (fun a_1_1 b_5 -> 
    (a_1_1 -. b_5))) (rtotals__d0 0)) (itotals__d0 0)))))
and integrate1D__d0 _lh_integrate1D_arg1_4 _lh_integrate1D_arg2_4 _lh_integrate1D_arg3_4 =
  (let rec d_4 = ((_lh_integrate1D_arg2_4 -. _lh_integrate1D_arg1_4) /. 8.0) in
    (d_4 *. (sumFloat__d0 (`LH_C(((_lh_integrate1D_arg3_4 _lh_integrate1D_arg1_4) *. 0.5), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. d_4)), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (2.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (3.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (4.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. (3.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. (2.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. d_4)), (`LH_C(((_lh_integrate1D_arg3_4 _lh_integrate1D_arg2_4) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate1D__d1 _lh_integrate1D_arg1_3 _lh_integrate1D_arg2_3 _lh_integrate1D_arg3_3 =
  (let rec d_3 = ((_lh_integrate1D_arg2_3 -. _lh_integrate1D_arg1_3) /. 8.0) in
    (d_3 *. (sumFloat__d1 (`LH_C(((_lh_integrate1D_arg3_3 _lh_integrate1D_arg1_3) *. 0.5), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. d_3)), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (2.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (3.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (4.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (3.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (2.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. d_3)), (`LH_C(((_lh_integrate1D_arg3_3 _lh_integrate1D_arg2_3) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate1D__d2 _lh_integrate1D_arg1_1 _lh_integrate1D_arg2_1 _lh_integrate1D_arg3_1 =
  (let rec d_1 = ((_lh_integrate1D_arg2_1 -. _lh_integrate1D_arg1_1) /. 8.0) in
    (d_1 *. (sumFloat__d2 (`LH_C(((_lh_integrate1D_arg3_1 _lh_integrate1D_arg1_1) *. 0.5), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. d_1)), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (2.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (3.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (4.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (3.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (2.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. d_1)), (`LH_C(((_lh_integrate1D_arg3_1 _lh_integrate1D_arg2_1) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate1D__d3 _lh_integrate1D_arg1_2 _lh_integrate1D_arg2_2 _lh_integrate1D_arg3_2 =
  (let rec d_2 = ((_lh_integrate1D_arg2_2 -. _lh_integrate1D_arg1_2) /. 8.0) in
    (d_2 *. (sumFloat__d3 (`LH_C(((_lh_integrate1D_arg3_2 _lh_integrate1D_arg1_2) *. 0.5), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. d_2)), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (2.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (3.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (4.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (3.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (2.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. d_2)), (`LH_C(((_lh_integrate1D_arg3_2 _lh_integrate1D_arg2_2) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate2D__d0 _lh_integrate2D_arg1_2 _lh_integrate2D_arg2_2 _lh_integrate2D_arg3_2 _lh_integrate2D_arg4_2 _lh_integrate2D_arg5_2 =
  (((integrate1D__d0 _lh_integrate2D_arg3_2) _lh_integrate2D_arg4_2) (fun y_4 -> 
    (((integrate1D__d1 _lh_integrate2D_arg1_2) _lh_integrate2D_arg2_2) (fun x_6 -> 
      ((_lh_integrate2D_arg5_2 x_6) y_4)))))
and integrate2D__d1 _lh_integrate2D_arg1_1 _lh_integrate2D_arg2_1 _lh_integrate2D_arg3_1 _lh_integrate2D_arg4_1 _lh_integrate2D_arg5_1 =
  (((integrate1D__d2 _lh_integrate2D_arg3_1) _lh_integrate2D_arg4_1) (fun y_2 -> 
    (((integrate1D__d3 _lh_integrate2D_arg1_1) _lh_integrate2D_arg2_1) (fun x_4 -> 
      ((_lh_integrate2D_arg5_1 x_4) y_2)))))
and ints__d0 _lh_ints_arg1_3 =
  (enumFromFloat__d0 1.0)
and ints__d1 _lh_ints_arg1_4 =
  (enumFromFloat__d1 1.0)
and ints__d2 _lh_ints_arg1_2 =
  (enumFromFloat__d2 1.0)
and ints__d3 _lh_ints_arg1_1 =
  (enumFromFloat__d3 1.0)
and ints__d4 _lh_ints_arg1_5 =
  (enumFromFloat__d4 1.0)
and ints__d5 _lh_ints_arg1_6 =
  (enumFromFloat__d5 1.0)
and is__d0 _lh_is_arg1_2 =
  ((map_lz__d0 (fun a_1_5 -> 
    (((a_1_5 *. a_1_5) *. a_1_5) *. a_1_5))) (ints__d0 0))
and is__d1 _lh_is_arg1_1 =
  ((map_lz__d1 (fun a_1_2 -> 
    (((a_1_2 *. a_1_2) *. a_1_2) *. a_1_2))) (ints__d1 0))
and itotals__d0 _lh_itotals_arg1_1 =
  (lazy (`LH_C((head_lz__d0 (is__d0 0)), (((zipWith_lz_lz__d0 (fun a_1_4 b_7 -> 
    (a_1_4 +. b_7))) (tail_lz__d0 (is__d1 0))) (itotals__d0 0)))))
and rtotals__d0 _lh_rtotals_arg1_1 =
  (lazy (`LH_C((head_lz__d1 (zarks__d0 0)), (((zipWith_lz_lz__d3 (fun a_1_3 b_6 -> 
    (a_1_3 +. b_6))) (tail_lz__d1 (zarks__d1 0))) (rtotals__d0 0)))))
and testIntegrate_nofib__d0 _lh_testIntegrate_nofib_arg1_1 =
  (etotal__d0 _lh_testIntegrate_nofib_arg1_1)
and zark__d0 _lh_zark_arg1_2 _lh_zark_arg2_2 =
  (((((integrate2D__d0 0.0) _lh_zark_arg1_2) 0.0) _lh_zark_arg2_2) (fun x_7 y_5 -> 
    (x_7 *. y_5)))
and zark__d1 _lh_zark_arg1_1 _lh_zark_arg2_1 =
  (((((integrate2D__d1 0.0) _lh_zark_arg1_1) 0.0) _lh_zark_arg2_1) (fun x_5 y_3 -> 
    (x_5 *. y_3)))
and zarks__d0 _lh_zarks_arg1_1 =
  (((zipWith_lz_lz__d1 zark__d0) (ints__d2 0)) ((map_lz__d3 (fun n_6 -> 
    (2.0 *. n_6))) (ints__d3 0)))
and zarks__d1 _lh_zarks_arg1_2 =
  (((zipWith_lz_lz__d2 zark__d1) (ints__d4 0)) ((map_lz__d4 (fun n_7 -> 
    (2.0 *. n_7))) (ints__d5 0)));;
end;;

