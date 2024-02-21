
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec zipWith_lz_lz_lh f_1 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz_lh f_1) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh f_0 ls_0 =
  (lazy (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lz_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec sumFloat_lh _lh_sumFloat_arg1_0 =
  (match _lh_sumFloat_arg1_0 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_0, _lh_sumFloat_LH_C_1_0) -> 
      (_lh_sumFloat_LH_C_0_0 +. (sumFloat_lh _lh_sumFloat_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec head_lz_lh ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec enumFromFloat_lh _lh_enumFromFloat_arg1_0 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_0, (enumFromFloat_lh (_lh_enumFromFloat_arg1_0 +. 1.0)))));;
let rec ints_lh =
  (enumFromFloat_lh 1.0);;
let rec is_lh =
  ((map_lz_lh (fun a_3 -> 
    (((a_3 *. a_3) *. a_3) *. a_3))) ints_lh);;
let rec tail_lz_lh ls_2 =
  (match (Lazy.force ls_2) with
    | `LH_C(h_2, t_2) -> 
      t_2
    | `LH_N -> 
      (failwith "error"));;
let rec itotals_lh =
  (lazy (`LH_C((head_lz_lh is_lh), (((zipWith_lz_lz_lh (fun a_4 b_2 -> 
    (a_4 +. b_2))) (tail_lz_lh is_lh)) itotals_lh))));;
let rec integrate1D_lh _lh_integrate1D_arg1_0 _lh_integrate1D_arg2_0 _lh_integrate1D_arg3_0 =
  (let rec d_0 = ((_lh_integrate1D_arg2_0 -. _lh_integrate1D_arg1_0) /. 8.0) in
    (d_0 *. (sumFloat_lh (`LH_C(((_lh_integrate1D_arg3_0 _lh_integrate1D_arg1_0) *. 0.5), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. d_0)), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (2.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (3.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (4.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (3.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (2.0 *. d_0))), (`LH_C((_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. d_0)), (`LH_C(((_lh_integrate1D_arg3_0 _lh_integrate1D_arg2_0) *. 0.5), (`LH_N))))))))))))))))))))));;
let rec integrate2D_lh _lh_integrate2D_arg1_0 _lh_integrate2D_arg2_0 _lh_integrate2D_arg3_0 _lh_integrate2D_arg4_0 _lh_integrate2D_arg5_0 =
  (((integrate1D_lh _lh_integrate2D_arg3_0) _lh_integrate2D_arg4_0) (fun y_0 -> 
    (((integrate1D_lh _lh_integrate2D_arg1_0) _lh_integrate2D_arg2_0) (fun x_0 -> 
      ((_lh_integrate2D_arg5_0 x_0) y_0)))));;
let rec zark_lh _lh_zark_arg1_0 _lh_zark_arg2_0 =
  (((((integrate2D_lh 0.0) _lh_zark_arg1_0) 0.0) _lh_zark_arg2_0) (fun x_1 y_1 -> 
    (x_1 *. y_1)));;
let rec zarks_lh =
  (((zipWith_lz_lz_lh zark_lh) ints_lh) ((map_lz_lh (fun n_1 -> 
    (2.0 *. n_1))) ints_lh));;
let rec rtotals_lh =
  (lazy (`LH_C((head_lz_lh zarks_lh), (((zipWith_lz_lz_lh (fun a_0 b_0 -> 
    (a_0 +. b_0))) (tail_lz_lh zarks_lh)) rtotals_lh))));;
let rec take_lz_lh n_0 ls_3 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_3) with
      | `LH_C(h_3, t_3) -> 
        (`LH_C(h_3, ((take_lz_lh (n_0 - 1)) t_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec etotal_lh _lh_etotal_arg1_0 =
  (sumFloat_lh ((take_lz_lh _lh_etotal_arg1_0) ((map_lz_lh (fun a_1 -> 
    (a_1 *. a_1))) (((zipWith_lz_lz_lh (fun a_2 b_1 -> 
    (a_2 -. b_1))) rtotals_lh) itotals_lh))));;
let rec testIntegrate_nofib_lh _lh_testIntegrate_nofib_arg1_0 =
  (etotal_lh _lh_testIntegrate_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testIntegrate_nofib_lh 100)));
end;;

