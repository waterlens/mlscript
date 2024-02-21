

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec map_lz_lh__d1 f_8 ls_8 =
  (lazy (match (Lazy.force ls_8) with
    | `LH_C(h_8, t_8) -> 
      (`LH_C((f_8 h_8), ((map_lz_lh__d1 f_8) t_8)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d3 f_4 ls_2 =
  (lazy (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_4 h_2), ((map_lz_lh__d3 f_4) t_2)))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFromFloat_lh__d2 _lh_enumFromFloat_arg1_1 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_1, (enumFromFloat_lh__d2 (_lh_enumFromFloat_arg1_1 +. 1.0)))));;
let rec ints_lh__d2 =
  (enumFromFloat_lh__d2 1.0);;
let rec is_lh__d2 =
  ((map_lz_lh__d3 (fun a_0 -> 
    (((a_0 *. a_0) *. a_0) *. a_0))) ints_lh__d2);;
let rec head_lz_lh__d1 ls_6 =
  (match (Lazy.force ls_6) with
    | `LH_C(h_6, t_6) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_lh__d1 ls_7 =
  (match (Lazy.force ls_7) with
    | `LH_C(h_7, t_7) -> 
      t_7
    | `LH_N -> 
      (failwith "error"));;
let rec enumFromFloat_lh__d1 _lh_enumFromFloat_arg1_2 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_2, (enumFromFloat_lh__d1 (_lh_enumFromFloat_arg1_2 +. 1.0)))));;
let rec ints_lh__d1 =
  (enumFromFloat_lh__d1 1.0);;
let rec map_lz_lh__d2 f_5 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_3, t_3) -> 
      (`LH_C((f_5 h_3), ((map_lz_lh__d2 f_5) t_3)))
    | `LH_N -> 
      (`LH_N)));;
let rec is_lh__d1 =
  ((map_lz_lh__d2 (fun a_1 -> 
    (((a_1 *. a_1) *. a_1) *. a_1))) ints_lh__d1);;
let rec zipWith_lz_lz_lh__d2 f_7 xs_3 ys_3 =
  (lazy (match (Lazy.force xs_3) with
    | `LH_C(hx_3, tx_3) -> 
      (match (Lazy.force ys_3) with
        | `LH_C(hy_3, ty_3) -> 
          (`LH_C(((f_7 hx_3) hy_3), (((zipWith_lz_lz_lh__d2 f_7) tx_3) ty_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec itotals_lh__d1 =
  (lazy (`LH_C((head_lz_lh__d1 is_lh__d1), (((zipWith_lz_lz_lh__d2 (fun a_3 b_1 -> 
    (a_3 +. b_1))) (tail_lz_lh__d1 is_lh__d2)) itotals_lh__d1))));;
let rec sumFloat_lh__d1 _lh_sumFloat_arg1_0 =
  (match _lh_sumFloat_arg1_0 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_0, _lh_sumFloat_LH_C_1_0) -> 
      (_lh_sumFloat_LH_C_0_0 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec zipWith_lz_lz_lh__d1 f_9 xs_4 ys_4 =
  (lazy (match (Lazy.force xs_4) with
    | `LH_C(hx_4, tx_4) -> 
      (match (Lazy.force ys_4) with
        | `LH_C(hy_4, ty_4) -> 
          (`LH_C(((f_9 hx_4) hy_4), (((zipWith_lz_lz_lh__d1 f_9) tx_4) ty_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec take_lz_lh__d1 n_2 ls_9 =
  (if (n_2 > 0) then
    (match (Lazy.force ls_9) with
      | `LH_C(h_9, t_9) -> 
        (`LH_C(h_9, ((take_lz_lh__d1 (n_2 - 1)) t_9)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zipWith_lz_lz_lh__d3 f_6 xs_2 ys_2 =
  (lazy (match (Lazy.force xs_2) with
    | `LH_C(hx_2, tx_2) -> 
      (match (Lazy.force ys_2) with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C(((f_6 hx_2) hy_2), (((zipWith_lz_lz_lh__d3 f_6) tx_2) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d4 f_3 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_3 h_1), ((map_lz_lh__d4 f_3) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec integrate1D_lh__d1 _lh_integrate1D_arg1_0 _lh_integrate1D_arg2_0 _lh_integrate1D_arg3_0 =
  (let rec d_0 = ((_lh_integrate1D_arg2_0 -. _lh_integrate1D_arg1_0) /. 8.0) in
    (d_0 *. (sumFloat_lh__d1 (`LH_C(((_lh_integrate1D_arg3_0 _lh_integrate1D_arg1_0) *. 0.5), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. d_0)), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (2.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (3.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (4.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (3.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (2.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. d_0)), (`LH_C(((_lh_integrate1D_arg3_0 _lh_integrate1D_arg2_0) *. 0.5), (`LH_N))))))))))))))))))))));;
let rec integrate2D_lh__d1 _lh_integrate2D_arg1_0 _lh_integrate2D_arg2_0 _lh_integrate2D_arg3_0 _lh_integrate2D_arg4_0 _lh_integrate2D_arg5_0 =
  (((integrate1D_lh__d1 _lh_integrate2D_arg3_0) _lh_integrate2D_arg4_0) (fun y_0 -> 
    (((integrate1D_lh__d1 _lh_integrate2D_arg1_0) _lh_integrate2D_arg2_0) (fun x_0 -> 
      ((_lh_integrate2D_arg5_0 x_0) y_0)))));;
let rec zark_lh__d1 _lh_zark_arg1_1 _lh_zark_arg2_1 =
  (((((integrate2D_lh__d1 0.0) _lh_zark_arg1_1) 0.0) _lh_zark_arg2_1) (fun x_2 y_2 -> 
    (x_2 *. y_2)));;
let rec enumFromFloat_lh__d3 _lh_enumFromFloat_arg1_0 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_0, (enumFromFloat_lh__d3 (_lh_enumFromFloat_arg1_0 +. 1.0)))));;
let rec ints_lh__d3 =
  (enumFromFloat_lh__d3 1.0);;
let rec zipWith_lz_lz_lh__d4 f_2 xs_1 ys_1 =
  (lazy (match (Lazy.force xs_1) with
    | `LH_C(hx_1, tx_1) -> 
      (match (Lazy.force ys_1) with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_2 hx_1) hy_1), (((zipWith_lz_lz_lh__d4 f_2) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec ints_lh__d4 =
  (enumFromFloat_lh__d3 1.0);;
let rec zarks_lh__d1 =
  (((zipWith_lz_lz_lh__d4 zark_lh__d1) ints_lh__d4) ((map_lz_lh__d4 (fun n_1 -> 
    (2.0 *. n_1))) ints_lh__d3));;
let rec ints_lh__d5 =
  (enumFromFloat_lh__d3 1.0);;
let rec ints_lh__d6 =
  (enumFromFloat_lh__d3 1.0);;
let rec map_lz_lh__d5 f_1 ls_0 =
  (lazy (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_1 h_0), ((map_lz_lh__d5 f_1) t_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec zark_lh__d2 _lh_zark_arg1_0 _lh_zark_arg2_0 =
  (((((integrate2D_lh__d1 0.0) _lh_zark_arg1_0) 0.0) _lh_zark_arg2_0) (fun x_1 y_1 -> 
    (x_1 *. y_1)));;
let rec zipWith_lz_lz_lh__d5 f_0 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_0 hx_0) hy_0), (((zipWith_lz_lz_lh__d5 f_0) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zarks_lh__d2 =
  (((zipWith_lz_lz_lh__d5 zark_lh__d2) ints_lh__d6) ((map_lz_lh__d5 (fun n_0 -> 
    (2.0 *. n_0))) ints_lh__d5));;
let rec tail_lz_lh__d2 ls_5 =
  (match (Lazy.force ls_5) with
    | `LH_C(h_5, t_5) -> 
      t_5
    | `LH_N -> 
      (failwith "error"));;
let rec head_lz_lh__d2 ls_4 =
  (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_4) -> 
      h_4
    | `LH_N -> 
      (failwith "error"));;
let rec rtotals_lh__d1 =
  (lazy (`LH_C((head_lz_lh__d2 zarks_lh__d2), (((zipWith_lz_lz_lh__d3 (fun a_2 b_0 -> 
    (a_2 +. b_0))) (tail_lz_lh__d2 zarks_lh__d1)) rtotals_lh__d1))));;
let rec etotal_lh__d1 _lh_etotal_arg1_0 =
  (sumFloat_lh__d1 ((take_lz_lh__d1 _lh_etotal_arg1_0) ((map_lz_lh__d1 (fun a_4 -> 
    (a_4 *. a_4))) (((zipWith_lz_lz_lh__d1 (fun a_5 b_2 -> 
    (a_5 -. b_2))) rtotals_lh__d1) itotals_lh__d1))));;
let rec testIntegrate_nofib_lh__d1 _lh_testIntegrate_nofib_arg1_0 =
  (etotal_lh__d1 _lh_testIntegrate_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testIntegrate_nofib_lh__d1 100)));
end;;

