

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec map_lz_lh__d1 f_0 ls_0 =
  (lazy ((Lazy.force ls_0) f_0));;
let rec map_lz_lh__d3 f_1_3 ls_3 =
  (lazy ((Lazy.force ls_3) f_1_3));;
let rec enumFromFloat_lh__d2 _lh_enumFromFloat_arg1_0 =
  (lazy (let rec t_4 = (enumFromFloat_lh__d2 (_lh_enumFromFloat_arg1_0 +. 1.0)) in
    (let rec h_4 = _lh_enumFromFloat_arg1_0 in
      (fun f_1_0 -> 
        (`LH_C((f_1_0 h_4), ((map_lz_lh__d3 f_1_0) t_4)))))));;
let rec ints_lh__d2 =
  (enumFromFloat_lh__d2 1.0);;
let rec is_lh__d2 =
  ((map_lz_lh__d3 (fun a_2 -> 
    (((a_2 *. a_2) *. a_2) *. a_2))) ints_lh__d2);;
let rec head_lz_lh__d1 ls_2 =
  (match (Lazy.force ls_2) with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_lh__d1 ls_5 =
  (match (Lazy.force ls_5) with
    | `LH_C(h_7, t_7) -> 
      t_7
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz_lh__d2 f_1_5 ls_8 =
  (lazy ((Lazy.force ls_8) f_1_5));;
let rec enumFromFloat_lh__d1 _lh_enumFromFloat_arg1_1 =
  (lazy (let rec t_5 = (enumFromFloat_lh__d1 (_lh_enumFromFloat_arg1_1 +. 1.0)) in
    (let rec h_5 = _lh_enumFromFloat_arg1_1 in
      (fun f_1_4 -> 
        (`LH_C((f_1_4 h_5), ((map_lz_lh__d2 f_1_4) t_5)))))));;
let rec ints_lh__d1 =
  (enumFromFloat_lh__d1 1.0);;
let rec is_lh__d1 =
  ((map_lz_lh__d2 (fun a_0 -> 
    (((a_0 *. a_0) *. a_0) *. a_0))) ints_lh__d1);;
let rec zipWith_lz_lz_lh__d2 f_1_1 xs_3 ys_3 =
  (lazy (match (Lazy.force xs_3) with
    | `LH_C(hx_5, tx_5) -> 
      (match (Lazy.force ys_3) with
        | `LH_C(hy_3, ty_3) -> 
          (`LH_C(((f_1_1 hx_5) hy_3), (((zipWith_lz_lz_lh__d2 f_1_1) tx_5) ty_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec itotals_lh__d1 =
  (lazy (`LH_C((head_lz_lh__d1 is_lh__d1), (((zipWith_lz_lz_lh__d2 (fun a_1 b_0 -> 
    (a_1 +. b_0))) (tail_lz_lh__d1 is_lh__d2)) itotals_lh__d1))));;
let rec sumFloat_lh__d1 _lh_sumFloat_arg1_0 =
  (_lh_sumFloat_arg1_0 99);;
let rec take_lz_lh__d1 n_5 ls_6 =
  (if (n_5 > 0) then
    ((Lazy.force ls_6) n_5)
  else
    (fun _lh_dummy_1_3 -> 
      0.0));;
let rec zipWith_lz_lz_lh__d1 f_5 xs_1 ys_1 =
  (lazy (match (Lazy.force xs_1) with
    | `LH_C(hx_3, tx_3) -> 
      (match (Lazy.force ys_1) with
        | `LH_C(hy_2, ty_2) -> 
          (let rec t_1 = (((zipWith_lz_lz_lh__d1 f_5) tx_3) ty_2) in
            (let rec h_1 = ((f_5 hx_3) hy_2) in
              (fun f_6 -> 
                (let rec t_2 = ((map_lz_lh__d1 f_6) t_1) in
                  (let rec h_2 = (f_6 h_1) in
                    (fun n_0 -> 
                      (let rec _lh_sumFloat_LH_C_1_0 = ((take_lz_lh__d1 (n_0 - 1)) t_2) in
                        (let rec _lh_sumFloat_LH_C_0_0 = h_2 in
                          (fun _lh_dummy_0 -> 
                            (_lh_sumFloat_LH_C_0_0 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_0)))))))))))
        | `LH_N -> 
          (fun f_7 n_1 _lh_dummy_1 -> 
            0.0))
    | `LH_N -> 
      (fun f_8 n_2 _lh_dummy_2 -> 
        0.0)));;
let rec zipWith_lz_lz_lh__d3 f_1 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz_lh__d3 f_1) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_lh__d4 f_9 xs_2 ys_2 =
  (lazy (match (Lazy.force xs_2) with
    | `LH_C(hx_4, tx_4) -> 
      ((((Lazy.force ys_2) f_9) hx_4) tx_4)
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d4 f_2 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_0, t_0) -> 
      (let rec ty_1 = ((map_lz_lh__d4 f_2) t_0) in
        (let rec hy_1 = (f_2 h_0) in
          (fun f_3 hx_1 tx_1 -> 
            (`LH_C(((f_3 hx_1) hy_1), (((zipWith_lz_lz_lh__d4 f_3) tx_1) ty_1))))))
    | `LH_N -> 
      (fun f_4 hx_2 tx_2 -> 
        (`LH_N))));;
let rec integrate1D_lh__d1 _lh_integrate1D_arg1_0 _lh_integrate1D_arg2_0 _lh_integrate1D_arg3_0 =
  (let rec d_0 = ((_lh_integrate1D_arg2_0 -. _lh_integrate1D_arg1_0) /. 8.0) in
    (d_0 *. (sumFloat_lh__d1 (let rec _lh_sumFloat_LH_C_1_1 = (let rec _lh_sumFloat_LH_C_1_2 = (let rec _lh_sumFloat_LH_C_1_3 = (let rec _lh_sumFloat_LH_C_1_4 = (let rec _lh_sumFloat_LH_C_1_5 = (let rec _lh_sumFloat_LH_C_1_6 = (let rec _lh_sumFloat_LH_C_1_7 = (let rec _lh_sumFloat_LH_C_1_8 = (let rec _lh_sumFloat_LH_C_1_9 = (fun _lh_dummy_3 -> 
      0.0) in
      (let rec _lh_sumFloat_LH_C_0_1 = ((_lh_integrate1D_arg3_0 _lh_integrate1D_arg2_0) *. 0.5) in
        (fun _lh_dummy_4 -> 
          (_lh_sumFloat_LH_C_0_1 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_9))))) in
      (let rec _lh_sumFloat_LH_C_0_2 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. d_0)) in
        (fun _lh_dummy_5 -> 
          (_lh_sumFloat_LH_C_0_2 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_8))))) in
      (let rec _lh_sumFloat_LH_C_0_3 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (2.0 *. d_0))) in
        (fun _lh_dummy_6 -> 
          (_lh_sumFloat_LH_C_0_3 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_7))))) in
      (let rec _lh_sumFloat_LH_C_0_4 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (3.0 *. d_0))) in
        (fun _lh_dummy_7 -> 
          (_lh_sumFloat_LH_C_0_4 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_6))))) in
      (let rec _lh_sumFloat_LH_C_0_5 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (4.0 *. d_0))) in
        (fun _lh_dummy_8 -> 
          (_lh_sumFloat_LH_C_0_5 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_5))))) in
      (let rec _lh_sumFloat_LH_C_0_6 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (3.0 *. d_0))) in
        (fun _lh_dummy_9 -> 
          (_lh_sumFloat_LH_C_0_6 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_4))))) in
      (let rec _lh_sumFloat_LH_C_0_7 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (2.0 *. d_0))) in
        (fun _lh_dummy_1_0 -> 
          (_lh_sumFloat_LH_C_0_7 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_3))))) in
      (let rec _lh_sumFloat_LH_C_0_8 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. d_0)) in
        (fun _lh_dummy_1_1 -> 
          (_lh_sumFloat_LH_C_0_8 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_2))))) in
      (let rec _lh_sumFloat_LH_C_0_9 = ((_lh_integrate1D_arg3_0 _lh_integrate1D_arg1_0) *. 0.5) in
        (fun _lh_dummy_1_2 -> 
          (_lh_sumFloat_LH_C_0_9 +. (sumFloat_lh__d1 _lh_sumFloat_LH_C_1_1))))))));;
let rec integrate2D_lh__d1 _lh_integrate2D_arg1_0 _lh_integrate2D_arg2_0 _lh_integrate2D_arg3_0 _lh_integrate2D_arg4_0 _lh_integrate2D_arg5_0 =
  (((integrate1D_lh__d1 _lh_integrate2D_arg3_0) _lh_integrate2D_arg4_0) (fun y_1 -> 
    (((integrate1D_lh__d1 _lh_integrate2D_arg1_0) _lh_integrate2D_arg2_0) (fun x_1 -> 
      ((_lh_integrate2D_arg5_0 x_1) y_1)))));;
let rec zark_lh__d1 _lh_zark_arg1_1 _lh_zark_arg2_1 =
  (((((integrate2D_lh__d1 0.0) _lh_zark_arg1_1) 0.0) _lh_zark_arg2_1) (fun x_2 y_2 -> 
    (x_2 *. y_2)));;
let rec enumFromFloat_lh__d3 _lh_enumFromFloat_arg1_2 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_2, (enumFromFloat_lh__d3 (_lh_enumFromFloat_arg1_2 +. 1.0)))));;
let rec ints_lh__d3 =
  (enumFromFloat_lh__d3 1.0);;
let rec ints_lh__d4 =
  (enumFromFloat_lh__d3 1.0);;
let rec zarks_lh__d1 =
  (((zipWith_lz_lz_lh__d4 zark_lh__d1) ints_lh__d4) ((map_lz_lh__d4 (fun n_4 -> 
    (2.0 *. n_4))) ints_lh__d3));;
let rec ints_lh__d5 =
  (enumFromFloat_lh__d3 1.0);;
let rec ints_lh__d6 =
  (enumFromFloat_lh__d3 1.0);;
let rec zipWith_lz_lz_lh__d5 f_1_2 xs_4 ys_4 =
  (lazy (match (Lazy.force xs_4) with
    | `LH_C(hx_6, tx_6) -> 
      ((((Lazy.force ys_4) f_1_2) hx_6) tx_6)
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d5 f_1_6 ls_9 =
  (lazy (match (Lazy.force ls_9) with
    | `LH_C(h_9, t_9) -> 
      (let rec ty_4 = ((map_lz_lh__d5 f_1_6) t_9) in
        (let rec hy_4 = (f_1_6 h_9) in
          (fun f_1_7 hx_7 tx_7 -> 
            (`LH_C(((f_1_7 hx_7) hy_4), (((zipWith_lz_lz_lh__d5 f_1_7) tx_7) ty_4))))))
    | `LH_N -> 
      (fun f_1_8 hx_8 tx_8 -> 
        (`LH_N))));;
let rec zark_lh__d2 _lh_zark_arg1_0 _lh_zark_arg2_0 =
  (((((integrate2D_lh__d1 0.0) _lh_zark_arg1_0) 0.0) _lh_zark_arg2_0) (fun x_0 y_0 -> 
    (x_0 *. y_0)));;
let rec zarks_lh__d2 =
  (((zipWith_lz_lz_lh__d5 zark_lh__d2) ints_lh__d6) ((map_lz_lh__d5 (fun n_3 -> 
    (2.0 *. n_3))) ints_lh__d5));;
let rec tail_lz_lh__d2 ls_4 =
  (match (Lazy.force ls_4) with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec head_lz_lh__d2 ls_7 =
  (match (Lazy.force ls_7) with
    | `LH_C(h_8, t_8) -> 
      h_8
    | `LH_N -> 
      (failwith "error"));;
let rec rtotals_lh__d1 =
  (lazy (`LH_C((head_lz_lh__d2 zarks_lh__d2), (((zipWith_lz_lz_lh__d3 (fun a_5 b_2 -> 
    (a_5 +. b_2))) (tail_lz_lh__d2 zarks_lh__d1)) rtotals_lh__d1))));;
let rec etotal_lh__d1 _lh_etotal_arg1_0 =
  (sumFloat_lh__d1 ((take_lz_lh__d1 _lh_etotal_arg1_0) ((map_lz_lh__d1 (fun a_3 -> 
    (a_3 *. a_3))) (((zipWith_lz_lz_lh__d1 (fun a_4 b_1 -> 
    (a_4 -. b_1))) rtotals_lh__d1) itotals_lh__d1))));;
let rec testIntegrate_nofib_lh__d1 _lh_testIntegrate_nofib_arg1_0 =
  (etotal_lh__d1 _lh_testIntegrate_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testIntegrate_nofib_lh__d1 100)));
end;;

