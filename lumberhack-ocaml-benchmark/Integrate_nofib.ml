(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Integrate_nofib.ml -o "./Integrate_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Integrate_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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

(* original *)
let rec enumFromFloat_d0 _lh_enumFromFloat_arg1_2 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_2, (enumFromFloat_d0 (_lh_enumFromFloat_arg1_2 +. 1.0)))));;
let rec enumFromFloat_d1 _lh_enumFromFloat_arg1_1 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_1, (enumFromFloat_d1 (_lh_enumFromFloat_arg1_1 +. 1.0)))));;
let rec enumFromFloat_d2 _lh_enumFromFloat_arg1_5 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_5, (enumFromFloat_d2 (_lh_enumFromFloat_arg1_5 +. 1.0)))));;
let rec enumFromFloat_d3 _lh_enumFromFloat_arg1_3 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_3, (enumFromFloat_d3 (_lh_enumFromFloat_arg1_3 +. 1.0)))));;
let rec enumFromFloat_d4 _lh_enumFromFloat_arg1_6 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_6, (enumFromFloat_d4 (_lh_enumFromFloat_arg1_6 +. 1.0)))));;
let rec enumFromFloat_d5 _lh_enumFromFloat_arg1_4 =
  (lazy (`LH_C(_lh_enumFromFloat_arg1_4, (enumFromFloat_d5 (_lh_enumFromFloat_arg1_4 +. 1.0)))));;
let rec head_lz_d0 ls_2_2 =
  (match (Lazy.force ls_2_2) with
    | `LH_C(h_2_3, t_2_5) -> 
      h_2_3
    | `LH_N -> 
      (failwith "error"));;
let rec head_lz_d1 ls_2_3 =
  (match (Lazy.force ls_2_3) with
    | `LH_C(h_2_4, t_2_6) -> 
      h_2_4
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz_d0 f_1_4 ls_2_1 =
  (lazy (match (Lazy.force ls_2_1) with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_4 h_2_2), ((map_lz_d0 f_1_4) t_2_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d1 f_1_3 ls_2_0 =
  (lazy (match (Lazy.force ls_2_0) with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_3 h_2_1), ((map_lz_d1 f_1_3) t_2_3)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d2 f_1_8 ls_2_4 =
  (lazy (match (Lazy.force ls_2_4) with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_8 h_2_5), ((map_lz_d2 f_1_8) t_2_7)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d3 f_2_0 ls_2_7 =
  (lazy (match (Lazy.force ls_2_7) with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C((f_2_0 h_2_8), ((map_lz_d3 f_2_0) t_3_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d4 f_1_9 ls_2_6 =
  (lazy (match (Lazy.force ls_2_6) with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C((f_1_9 h_2_7), ((map_lz_d4 f_1_9) t_2_9)))
    | `LH_N -> 
      (`LH_N)));;
let rec sumFloat_d0 _lh_sumFloat_arg1_1 =
  (match _lh_sumFloat_arg1_1 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_1, _lh_sumFloat_LH_C_1_1) -> 
      (_lh_sumFloat_LH_C_0_1 +. (sumFloat_d0 _lh_sumFloat_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec sumFloat_d1 _lh_sumFloat_arg1_4 =
  (match _lh_sumFloat_arg1_4 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_4, _lh_sumFloat_LH_C_1_4) -> 
      (_lh_sumFloat_LH_C_0_4 +. (sumFloat_d1 _lh_sumFloat_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec sumFloat_d2 _lh_sumFloat_arg1_3 =
  (match _lh_sumFloat_arg1_3 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_3, _lh_sumFloat_LH_C_1_3) -> 
      (_lh_sumFloat_LH_C_0_3 +. (sumFloat_d2 _lh_sumFloat_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec sumFloat_d3 _lh_sumFloat_arg1_2 =
  (match _lh_sumFloat_arg1_2 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_2, _lh_sumFloat_LH_C_1_2) -> 
      (_lh_sumFloat_LH_C_0_2 +. (sumFloat_d3 _lh_sumFloat_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec sumFloat_d4 _lh_sumFloat_arg1_5 =
  (match _lh_sumFloat_arg1_5 with
    | `LH_N -> 
      0.0
    | `LH_C(_lh_sumFloat_LH_C_0_5, _lh_sumFloat_LH_C_1_5) -> 
      (_lh_sumFloat_LH_C_0_5 +. (sumFloat_d4 _lh_sumFloat_LH_C_1_5))
    | _ -> 
      (failwith "error"));;
let rec tail_lz_d0 ls_2_5 =
  (match (Lazy.force ls_2_5) with
    | `LH_C(h_2_6, t_2_8) -> 
      t_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_d1 ls_1_9 =
  (match (Lazy.force ls_1_9) with
    | `LH_C(h_2_0, t_2_2) -> 
      t_2_2
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz_d0 n_7 ls_2_8 =
  (if (n_7 > 0) then
    (match (Lazy.force ls_2_8) with
      | `LH_C(h_2_9, t_3_1) -> 
        (`LH_C(h_2_9, ((take_lz_d0 (n_7 - 1)) t_3_1)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zipWith_lz_lz_d0 f_1_2 xs_9 ys_9 =
  (lazy (match (Lazy.force xs_9) with
    | `LH_C(hx_8, tx_8) -> 
      (match (Lazy.force ys_9) with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith_lz_lz_d0 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_d1 f_2_1 xs_1_3 ys_1_3 =
  (lazy (match (Lazy.force xs_1_3) with
    | `LH_C(hx_1_2, tx_1_2) -> 
      (match (Lazy.force ys_1_3) with
        | `LH_C(hy_1_2, ty_1_2) -> 
          (`LH_C(((f_2_1 hx_1_2) hy_1_2), (((zipWith_lz_lz_d1 f_2_1) tx_1_2) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_d2 f_1_6 xs_1_1 ys_1_1 =
  (lazy (match (Lazy.force xs_1_1) with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match (Lazy.force ys_1_1) with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_1_6 hx_1_0) hy_1_0), (((zipWith_lz_lz_d2 f_1_6) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_d3 f_1_7 xs_1_2 ys_1_2 =
  (lazy (match (Lazy.force xs_1_2) with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match (Lazy.force ys_1_2) with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_1_7 hx_1_1) hy_1_1), (((zipWith_lz_lz_d3 f_1_7) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_d4 f_1_5 xs_1_0 ys_1_0 =
  (lazy (match (Lazy.force xs_1_0) with
    | `LH_C(hx_9, tx_9) -> 
      (match (Lazy.force ys_1_0) with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_5 hx_9) hy_9), (((zipWith_lz_lz_d4 f_1_5) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec etotal_d0 _lh_etotal_arg1_1 =
  (sumFloat_d4 ((take_lz_d0 _lh_etotal_arg1_1) ((map_lz_d2 (fun a_1_2 -> 
    (a_1_2 *. a_1_2))) (((zipWith_lz_lz_d4 (fun a_1_3 b_6 -> 
    (a_1_3 -. b_6))) (rtotals_d0 0)) (itotals_d0 0)))))
and integrate1D_d0 _lh_integrate1D_arg1_1 _lh_integrate1D_arg2_1 _lh_integrate1D_arg3_1 =
  (let rec d_1 = ((_lh_integrate1D_arg2_1 -. _lh_integrate1D_arg1_1) /. 8.0) in
    (d_1 *. (sumFloat_d0 (`LH_C(((_lh_integrate1D_arg3_1 _lh_integrate1D_arg1_1) *. 0.5), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. d_1)), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (2.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (3.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (4.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (3.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (2.0 *. d_1))), (`LH_C((_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. d_1)), (`LH_C(((_lh_integrate1D_arg3_1 _lh_integrate1D_arg2_1) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate1D_d1 _lh_integrate1D_arg1_4 _lh_integrate1D_arg2_4 _lh_integrate1D_arg3_4 =
  (let rec d_4 = ((_lh_integrate1D_arg2_4 -. _lh_integrate1D_arg1_4) /. 8.0) in
    (d_4 *. (sumFloat_d1 (`LH_C(((_lh_integrate1D_arg3_4 _lh_integrate1D_arg1_4) *. 0.5), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. d_4)), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (2.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (3.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (4.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. (3.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. (2.0 *. d_4))), (`LH_C((_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. d_4)), (`LH_C(((_lh_integrate1D_arg3_4 _lh_integrate1D_arg2_4) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate1D_d2 _lh_integrate1D_arg1_2 _lh_integrate1D_arg2_2 _lh_integrate1D_arg3_2 =
  (let rec d_2 = ((_lh_integrate1D_arg2_2 -. _lh_integrate1D_arg1_2) /. 8.0) in
    (d_2 *. (sumFloat_d2 (`LH_C(((_lh_integrate1D_arg3_2 _lh_integrate1D_arg1_2) *. 0.5), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. d_2)), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (2.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (3.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (4.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (3.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (2.0 *. d_2))), (`LH_C((_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. d_2)), (`LH_C(((_lh_integrate1D_arg3_2 _lh_integrate1D_arg2_2) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate1D_d3 _lh_integrate1D_arg1_3 _lh_integrate1D_arg2_3 _lh_integrate1D_arg3_3 =
  (let rec d_3 = ((_lh_integrate1D_arg2_3 -. _lh_integrate1D_arg1_3) /. 8.0) in
    (d_3 *. (sumFloat_d3 (`LH_C(((_lh_integrate1D_arg3_3 _lh_integrate1D_arg1_3) *. 0.5), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. d_3)), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (2.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (3.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (4.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (3.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (2.0 *. d_3))), (`LH_C((_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. d_3)), (`LH_C(((_lh_integrate1D_arg3_3 _lh_integrate1D_arg2_3) *. 0.5), (`LH_N))))))))))))))))))))))
and integrate2D_d0 _lh_integrate2D_arg1_2 _lh_integrate2D_arg2_2 _lh_integrate2D_arg3_2 _lh_integrate2D_arg4_2 _lh_integrate2D_arg5_2 =
  (((integrate1D_d0 _lh_integrate2D_arg3_2) _lh_integrate2D_arg4_2) (fun y_5 -> 
    (((integrate1D_d1 _lh_integrate2D_arg1_2) _lh_integrate2D_arg2_2) (fun x_7 -> 
      ((_lh_integrate2D_arg5_2 x_7) y_5)))))
and integrate2D_d1 _lh_integrate2D_arg1_1 _lh_integrate2D_arg2_1 _lh_integrate2D_arg3_1 _lh_integrate2D_arg4_1 _lh_integrate2D_arg5_1 =
  (((integrate1D_d2 _lh_integrate2D_arg3_1) _lh_integrate2D_arg4_1) (fun y_3 -> 
    (((integrate1D_d3 _lh_integrate2D_arg1_1) _lh_integrate2D_arg2_1) (fun x_5 -> 
      ((_lh_integrate2D_arg5_1 x_5) y_3)))))
and ints_d0 _lh_ints_arg1_3 =
  (enumFromFloat_d0 1.0)
and ints_d1 _lh_ints_arg1_6 =
  (enumFromFloat_d1 1.0)
and ints_d2 _lh_ints_arg1_4 =
  (enumFromFloat_d2 1.0)
and ints_d3 _lh_ints_arg1_5 =
  (enumFromFloat_d3 1.0)
and ints_d4 _lh_ints_arg1_1 =
  (enumFromFloat_d4 1.0)
and ints_d5 _lh_ints_arg1_2 =
  (enumFromFloat_d5 1.0)
and is_d0 _lh_is_arg1_2 =
  ((map_lz_d0 (fun a_1_5 -> 
    (((a_1_5 *. a_1_5) *. a_1_5) *. a_1_5))) (ints_d0 0))
and is_d1 _lh_is_arg1_1 =
  ((map_lz_d1 (fun a_1_0 -> 
    (((a_1_0 *. a_1_0) *. a_1_0) *. a_1_0))) (ints_d1 0))
and itotals_d0 _lh_itotals_arg1_1 =
  (lazy (`LH_C((head_lz_d0 (is_d0 0)), (((zipWith_lz_lz_d0 (fun a_1_4 b_7 -> 
    (a_1_4 +. b_7))) (tail_lz_d0 (is_d1 0))) (itotals_d0 0)))))
and rtotals_d0 _lh_rtotals_arg1_1 =
  (lazy (`LH_C((head_lz_d1 (zarks_d0 0)), (((zipWith_lz_lz_d3 (fun a_1_1 b_5 -> 
    (a_1_1 +. b_5))) (tail_lz_d1 (zarks_d1 0))) (rtotals_d0 0)))))
and testIntegrate_nofib_d0 _lh_testIntegrate_nofib_arg1_1 =
  (etotal_d0 _lh_testIntegrate_nofib_arg1_1)
and zarks_d0 _lh_zarks_arg1_2 =
  (((zipWith_lz_lz_d1 zark_d0) (ints_d2 0)) ((map_lz_d3 (fun n_6 -> 
    (2.0 *. n_6))) (ints_d3 0)))
and zarks_d1 _lh_zarks_arg1_1 =
  (((zipWith_lz_lz_d2 zark_d1) (ints_d4 0)) ((map_lz_d4 (fun n_5 -> 
    (2.0 *. n_5))) (ints_d5 0)))
and zark_d0 _lh_zark_arg1_2 _lh_zark_arg2_2 =
  (((((integrate2D_d0 0.0) _lh_zark_arg1_2) 0.0) _lh_zark_arg2_2) (fun x_6 y_4 -> 
    (x_6 *. y_4)))
and zark_d1 _lh_zark_arg1_1 _lh_zark_arg2_1 =
  (((((integrate2D_d1 0.0) _lh_zark_arg1_1) 0.0) _lh_zark_arg2_1) (fun x_4 y_2 -> 
    (x_4 *. y_2)));;

(* lumberhack *)
let rec enumFromFloat_d2_d0 _lh_enumFromFloat_arg1_0 =
  (lazy (let rec hx_0 = _lh_enumFromFloat_arg1_0 in
    (let rec tx_0 = (enumFromFloat_d2_d0 (_lh_enumFromFloat_arg1_0 +. 1.0)) in
      (fun ys_0 f_1 -> 
        ((((Lazy.force ys_0) hx_0) tx_0) f_1)))));;
let rec enumFromFloat_d4_d0 _lh_enumFromFloat_arg1_4 =
  (lazy (let rec hx_4 = _lh_enumFromFloat_arg1_4 in
    (let rec tx_4 = (enumFromFloat_d4_d0 (_lh_enumFromFloat_arg1_4 +. 1.0)) in
      (fun ys_5 f_1_5 -> 
        ((((Lazy.force ys_5) hx_4) tx_4) f_1_5)))));;
let rec head_lz_d0_d0 ls_4 =
  (Lazy.force ls_4);;
let rec head_lz_d1_d0 ls_2 =
  (Lazy.force ls_2);;
let rec map_lz_d0_d0 f_9 ls_3 =
  (lazy ((Lazy.force ls_3) f_9));;
let rec map_lz_d1_d0 f_0 ls_0 =
  (lazy ((Lazy.force ls_0) f_0));;
let rec map_lz_d2_d0 f_1_6 ls_8 =
  (lazy ((Lazy.force ls_8) f_1_6));;
let rec map_lz_d3_d0 f_2_0 ls_9 =
  (lazy ((Lazy.force ls_9) f_2_0));;
let rec map_lz_d4_d0 f_1_2 ls_5 =
  (lazy ((Lazy.force ls_5) f_1_2));;
let rec sumFloat_d0_d0 _lh_sumFloat_arg1_3 =
  _lh_sumFloat_arg1_3;;
let rec sumFloat_d1_d0 _lh_sumFloat_arg1_0 =
  _lh_sumFloat_arg1_0;;
let rec sumFloat_d2_d0 _lh_sumFloat_arg1_1 =
  _lh_sumFloat_arg1_1;;
let rec sumFloat_d3_d0 _lh_sumFloat_arg1_2 =
  _lh_sumFloat_arg1_2;;
let rec sumFloat_d4_d0 _lh_sumFloat_arg1_4 =
  _lh_sumFloat_arg1_4;;
let rec tail_lz_d0_d0 ls_6 =
  (match (Lazy.force ls_6) with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_d1_d0 ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz_d0_d0 n_5 ls_7 =
  (if (n_5 > 0) then
    ((Lazy.force ls_7) n_5)
  else
    0.0);;
let rec zipWith_lz_lz_d0_d0 f_1_9 xs_4 ys_6 =
  (lazy (match (Lazy.force xs_4) with
    | `LH_C(hx_6, tx_6) -> 
      (match (Lazy.force ys_6) with
        | `LH_C(hy_4, ty_4) -> 
          (`LH_C(((f_1_9 hx_6) hy_4), (((zipWith_lz_lz_d0_d0 f_1_9) tx_6) ty_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_d1_d0 f_1_3 xs_3 ys_4 =
  (lazy (((Lazy.force xs_3) ys_4) f_1_3));;
let rec zipWith_lz_lz_d2_d0 f_7 xs_1 ys_2 =
  (lazy (((Lazy.force xs_1) ys_2) f_7));;
let rec zipWith_lz_lz_d3_d0 f_8 xs_2 ys_3 =
  (lazy (match (Lazy.force xs_2) with
    | `LH_C(hx_2, tx_2) -> 
      (match (Lazy.force ys_3) with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_8 hx_2) hy_1), (((zipWith_lz_lz_d3_d0 f_8) tx_2) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFromFloat_d0_d0 _lh_enumFromFloat_arg1_3 =
  (lazy (let rec h_7 = _lh_enumFromFloat_arg1_3 in
    (let rec t_7 = (enumFromFloat_d0_d0 (_lh_enumFromFloat_arg1_3 +. 1.0)) in
      (fun f_1_4 -> 
        (let rec h_8 = (f_1_4 h_7) in
          (let rec t_8 = ((map_lz_d0_d0 f_1_4) t_7) in
            h_8))))))
and enumFromFloat_d1_d0 _lh_enumFromFloat_arg1_1 =
  (lazy (let rec h_1 = _lh_enumFromFloat_arg1_1 in
    (let rec t_1 = (enumFromFloat_d1_d0 (_lh_enumFromFloat_arg1_1 +. 1.0)) in
      (fun f_2 -> 
        (`LH_C((f_2 h_1), ((map_lz_d1_d0 f_2) t_1)))))))
and enumFromFloat_d3_d0 _lh_enumFromFloat_arg1_2 =
  (lazy (let rec h_4 = _lh_enumFromFloat_arg1_2 in
    (let rec t_4 = (enumFromFloat_d3_d0 (_lh_enumFromFloat_arg1_2 +. 1.0)) in
      (fun f_1_0 -> 
        (let rec hy_2 = (f_1_0 h_4) in
          (let rec ty_2 = ((map_lz_d3_d0 f_1_0) t_4) in
            (fun hx_3 tx_3 f_1_1 -> 
              (let rec h_5 = ((f_1_1 hx_3) hy_2) in
                (let rec t_5 = (((zipWith_lz_lz_d1_d0 f_1_1) tx_3) ty_2) in
                  h_5)))))))))
and enumFromFloat_d5_d0 _lh_enumFromFloat_arg1_5 =
  (lazy (let rec h_9 = _lh_enumFromFloat_arg1_5 in
    (let rec t_9 = (enumFromFloat_d5_d0 (_lh_enumFromFloat_arg1_5 +. 1.0)) in
      (fun f_1_7 -> 
        (let rec hy_3 = (f_1_7 h_9) in
          (let rec ty_3 = ((map_lz_d4_d0 f_1_7) t_9) in
            (fun hx_5 tx_5 f_1_8 -> 
              (`LH_C(((f_1_8 hx_5) hy_3), (((zipWith_lz_lz_d2_d0 f_1_8) tx_5) ty_3))))))))))
and etotal_d0_d0 _lh_etotal_arg1_0 =
  (sumFloat_d4_d0 ((take_lz_d0_d0 _lh_etotal_arg1_0) ((map_lz_d2_d0 (fun a_2 -> 
    (a_2 *. a_2))) (((zipWith_lz_lz_d4_d0 (fun a_3 b_1 -> 
    (a_3 -. b_1))) (rtotals_d0_d0 0)) (itotals_d0_d0 0)))))
and integrate1D_d0_d0 _lh_integrate1D_arg1_3 _lh_integrate1D_arg2_3 _lh_integrate1D_arg3_3 =
  (let rec d_3 = ((_lh_integrate1D_arg2_3 -. _lh_integrate1D_arg1_3) /. 8.0) in
    (d_3 *. (sumFloat_d0_d0 (let rec _lh_sumFloat_LH_C_0_2_8 = ((_lh_integrate1D_arg3_3 _lh_integrate1D_arg1_3) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_2_8 = (let rec _lh_sumFloat_LH_C_0_2_9 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. d_3)) in
        (let rec _lh_sumFloat_LH_C_1_2_9 = (let rec _lh_sumFloat_LH_C_0_3_0 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (2.0 *. d_3))) in
          (let rec _lh_sumFloat_LH_C_1_3_0 = (let rec _lh_sumFloat_LH_C_0_3_1 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (3.0 *. d_3))) in
            (let rec _lh_sumFloat_LH_C_1_3_1 = (let rec _lh_sumFloat_LH_C_0_3_2 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg1_3 +. (4.0 *. d_3))) in
              (let rec _lh_sumFloat_LH_C_1_3_2 = (let rec _lh_sumFloat_LH_C_0_3_3 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (3.0 *. d_3))) in
                (let rec _lh_sumFloat_LH_C_1_3_3 = (let rec _lh_sumFloat_LH_C_0_3_4 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. (2.0 *. d_3))) in
                  (let rec _lh_sumFloat_LH_C_1_3_4 = (let rec _lh_sumFloat_LH_C_0_3_5 = (_lh_integrate1D_arg3_3 (_lh_integrate1D_arg2_3 -. d_3)) in
                    (let rec _lh_sumFloat_LH_C_1_3_5 = (let rec _lh_sumFloat_LH_C_0_3_6 = ((_lh_integrate1D_arg3_3 _lh_integrate1D_arg2_3) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_3_6 = 0.0 in
                        (_lh_sumFloat_LH_C_0_3_6 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_6)))) in
                      (_lh_sumFloat_LH_C_0_3_5 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_5)))) in
                    (_lh_sumFloat_LH_C_0_3_4 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_4)))) in
                  (_lh_sumFloat_LH_C_0_3_3 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_3)))) in
                (_lh_sumFloat_LH_C_0_3_2 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_2)))) in
              (_lh_sumFloat_LH_C_0_3_1 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_1)))) in
            (_lh_sumFloat_LH_C_0_3_0 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_3_0)))) in
          (_lh_sumFloat_LH_C_0_2_9 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_2_9)))) in
        (_lh_sumFloat_LH_C_0_2_8 +. (sumFloat_d0_d0 _lh_sumFloat_LH_C_1_2_8)))))))
and integrate1D_d1_d0 _lh_integrate1D_arg1_1 _lh_integrate1D_arg2_1 _lh_integrate1D_arg3_1 =
  (let rec d_1 = ((_lh_integrate1D_arg2_1 -. _lh_integrate1D_arg1_1) /. 8.0) in
    (d_1 *. (sumFloat_d1_d0 (let rec _lh_sumFloat_LH_C_0_9 = ((_lh_integrate1D_arg3_1 _lh_integrate1D_arg1_1) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_9 = (let rec _lh_sumFloat_LH_C_0_1_0 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. d_1)) in
        (let rec _lh_sumFloat_LH_C_1_1_0 = (let rec _lh_sumFloat_LH_C_0_1_1 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (2.0 *. d_1))) in
          (let rec _lh_sumFloat_LH_C_1_1_1 = (let rec _lh_sumFloat_LH_C_0_1_2 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (3.0 *. d_1))) in
            (let rec _lh_sumFloat_LH_C_1_1_2 = (let rec _lh_sumFloat_LH_C_0_1_3 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg1_1 +. (4.0 *. d_1))) in
              (let rec _lh_sumFloat_LH_C_1_1_3 = (let rec _lh_sumFloat_LH_C_0_1_4 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (3.0 *. d_1))) in
                (let rec _lh_sumFloat_LH_C_1_1_4 = (let rec _lh_sumFloat_LH_C_0_1_5 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. (2.0 *. d_1))) in
                  (let rec _lh_sumFloat_LH_C_1_1_5 = (let rec _lh_sumFloat_LH_C_0_1_6 = (_lh_integrate1D_arg3_1 (_lh_integrate1D_arg2_1 -. d_1)) in
                    (let rec _lh_sumFloat_LH_C_1_1_6 = (let rec _lh_sumFloat_LH_C_0_1_7 = ((_lh_integrate1D_arg3_1 _lh_integrate1D_arg2_1) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_1_7 = 0.0 in
                        (_lh_sumFloat_LH_C_0_1_7 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_7)))) in
                      (_lh_sumFloat_LH_C_0_1_6 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_6)))) in
                    (_lh_sumFloat_LH_C_0_1_5 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_5)))) in
                  (_lh_sumFloat_LH_C_0_1_4 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_4)))) in
                (_lh_sumFloat_LH_C_0_1_3 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_3)))) in
              (_lh_sumFloat_LH_C_0_1_2 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_2)))) in
            (_lh_sumFloat_LH_C_0_1_1 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_1)))) in
          (_lh_sumFloat_LH_C_0_1_0 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_1_0)))) in
        (_lh_sumFloat_LH_C_0_9 +. (sumFloat_d1_d0 _lh_sumFloat_LH_C_1_9)))))))
and integrate1D_d2_d0 _lh_integrate1D_arg1_0 _lh_integrate1D_arg2_0 _lh_integrate1D_arg3_0 =
  (let rec d_0 = ((_lh_integrate1D_arg2_0 -. _lh_integrate1D_arg1_0) /. 8.0) in
    (d_0 *. (sumFloat_d2_d0 (let rec _lh_sumFloat_LH_C_0_0 = ((_lh_integrate1D_arg3_0 _lh_integrate1D_arg1_0) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_0 = (let rec _lh_sumFloat_LH_C_0_1 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. d_0)) in
        (let rec _lh_sumFloat_LH_C_1_1 = (let rec _lh_sumFloat_LH_C_0_2 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (2.0 *. d_0))) in
          (let rec _lh_sumFloat_LH_C_1_2 = (let rec _lh_sumFloat_LH_C_0_3 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (3.0 *. d_0))) in
            (let rec _lh_sumFloat_LH_C_1_3 = (let rec _lh_sumFloat_LH_C_0_4 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg1_0 +. (4.0 *. d_0))) in
              (let rec _lh_sumFloat_LH_C_1_4 = (let rec _lh_sumFloat_LH_C_0_5 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (3.0 *. d_0))) in
                (let rec _lh_sumFloat_LH_C_1_5 = (let rec _lh_sumFloat_LH_C_0_6 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. (2.0 *. d_0))) in
                  (let rec _lh_sumFloat_LH_C_1_6 = (let rec _lh_sumFloat_LH_C_0_7 = (_lh_integrate1D_arg3_0 (_lh_integrate1D_arg2_0 -. d_0)) in
                    (let rec _lh_sumFloat_LH_C_1_7 = (let rec _lh_sumFloat_LH_C_0_8 = ((_lh_integrate1D_arg3_0 _lh_integrate1D_arg2_0) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_8 = 0.0 in
                        (_lh_sumFloat_LH_C_0_8 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_8)))) in
                      (_lh_sumFloat_LH_C_0_7 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_7)))) in
                    (_lh_sumFloat_LH_C_0_6 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_6)))) in
                  (_lh_sumFloat_LH_C_0_5 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_5)))) in
                (_lh_sumFloat_LH_C_0_4 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_4)))) in
              (_lh_sumFloat_LH_C_0_3 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_3)))) in
            (_lh_sumFloat_LH_C_0_2 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_2)))) in
          (_lh_sumFloat_LH_C_0_1 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_1)))) in
        (_lh_sumFloat_LH_C_0_0 +. (sumFloat_d2_d0 _lh_sumFloat_LH_C_1_0)))))))
and integrate1D_d3_d0 _lh_integrate1D_arg1_2 _lh_integrate1D_arg2_2 _lh_integrate1D_arg3_2 =
  (let rec d_2 = ((_lh_integrate1D_arg2_2 -. _lh_integrate1D_arg1_2) /. 8.0) in
    (d_2 *. (sumFloat_d3_d0 (let rec _lh_sumFloat_LH_C_0_1_9 = ((_lh_integrate1D_arg3_2 _lh_integrate1D_arg1_2) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_1_9 = (let rec _lh_sumFloat_LH_C_0_2_0 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. d_2)) in
        (let rec _lh_sumFloat_LH_C_1_2_0 = (let rec _lh_sumFloat_LH_C_0_2_1 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (2.0 *. d_2))) in
          (let rec _lh_sumFloat_LH_C_1_2_1 = (let rec _lh_sumFloat_LH_C_0_2_2 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (3.0 *. d_2))) in
            (let rec _lh_sumFloat_LH_C_1_2_2 = (let rec _lh_sumFloat_LH_C_0_2_3 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg1_2 +. (4.0 *. d_2))) in
              (let rec _lh_sumFloat_LH_C_1_2_3 = (let rec _lh_sumFloat_LH_C_0_2_4 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (3.0 *. d_2))) in
                (let rec _lh_sumFloat_LH_C_1_2_4 = (let rec _lh_sumFloat_LH_C_0_2_5 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. (2.0 *. d_2))) in
                  (let rec _lh_sumFloat_LH_C_1_2_5 = (let rec _lh_sumFloat_LH_C_0_2_6 = (_lh_integrate1D_arg3_2 (_lh_integrate1D_arg2_2 -. d_2)) in
                    (let rec _lh_sumFloat_LH_C_1_2_6 = (let rec _lh_sumFloat_LH_C_0_2_7 = ((_lh_integrate1D_arg3_2 _lh_integrate1D_arg2_2) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_2_7 = 0.0 in
                        (_lh_sumFloat_LH_C_0_2_7 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_7)))) in
                      (_lh_sumFloat_LH_C_0_2_6 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_6)))) in
                    (_lh_sumFloat_LH_C_0_2_5 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_5)))) in
                  (_lh_sumFloat_LH_C_0_2_4 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_4)))) in
                (_lh_sumFloat_LH_C_0_2_3 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_3)))) in
              (_lh_sumFloat_LH_C_0_2_2 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_2)))) in
            (_lh_sumFloat_LH_C_0_2_1 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_1)))) in
          (_lh_sumFloat_LH_C_0_2_0 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_2_0)))) in
        (_lh_sumFloat_LH_C_0_1_9 +. (sumFloat_d3_d0 _lh_sumFloat_LH_C_1_1_9)))))))
and integrate2D_d0_d0 _lh_integrate2D_arg1_0 _lh_integrate2D_arg2_0 _lh_integrate2D_arg3_0 _lh_integrate2D_arg4_0 _lh_integrate2D_arg5_0 =
  (((integrate1D_d0_d0 _lh_integrate2D_arg3_0) _lh_integrate2D_arg4_0) (fun y_2 -> 
    (((integrate1D_d1_d0 _lh_integrate2D_arg1_0) _lh_integrate2D_arg2_0) (fun x_2 -> 
      ((_lh_integrate2D_arg5_0 x_2) y_2)))))
and integrate2D_d1_d0 _lh_integrate2D_arg1_1 _lh_integrate2D_arg2_1 _lh_integrate2D_arg3_1 _lh_integrate2D_arg4_1 _lh_integrate2D_arg5_1 =
  (((integrate1D_d2_d0 _lh_integrate2D_arg3_1) _lh_integrate2D_arg4_1) (fun y_3 -> 
    (((integrate1D_d3_d0 _lh_integrate2D_arg1_1) _lh_integrate2D_arg2_1) (fun x_3 -> 
      ((_lh_integrate2D_arg5_1 x_3) y_3)))))
and ints_d0_d0 _lh_ints_arg1_3 =
  (enumFromFloat_d0_d0 1.0)
and ints_d1_d0 _lh_ints_arg1_5 =
  (enumFromFloat_d1_d0 1.0)
and ints_d2_d0 _lh_ints_arg1_1 =
  (enumFromFloat_d2_d0 1.0)
and ints_d3_d0 _lh_ints_arg1_0 =
  (enumFromFloat_d3_d0 1.0)
and ints_d4_d0 _lh_ints_arg1_2 =
  (enumFromFloat_d4_d0 1.0)
and ints_d5_d0 _lh_ints_arg1_4 =
  (enumFromFloat_d5_d0 1.0)
and is_d0_d0 _lh_is_arg1_0 =
  ((map_lz_d0_d0 (fun a_0 -> 
    (((a_0 *. a_0) *. a_0) *. a_0))) (ints_d0_d0 0))
and is_d1_d0 _lh_is_arg1_1 =
  ((map_lz_d1_d0 (fun a_4 -> 
    (((a_4 *. a_4) *. a_4) *. a_4))) (ints_d1_d0 0))
and itotals_d0_d0 _lh_itotals_arg1_0 =
  (lazy (`LH_C((head_lz_d0_d0 (is_d0_d0 0)), (((zipWith_lz_lz_d0_d0 (fun a_1 b_0 -> 
    (a_1 +. b_0))) (tail_lz_d0_d0 (is_d1_d0 0))) (itotals_d0_d0 0)))))
and rtotals_d0_d0 _lh_rtotals_arg1_0 =
  (lazy (`LH_C((head_lz_d1_d0 (zarks_d0_d0 0)), (((zipWith_lz_lz_d3_d0 (fun a_5 b_2 -> 
    (a_5 +. b_2))) (tail_lz_d1_d0 (zarks_d1_d0 0))) (rtotals_d0_d0 0)))))
and testIntegrate_nofib_d0_d0 _lh_testIntegrate_nofib_arg1_0 =
  (etotal_d0_d0 _lh_testIntegrate_nofib_arg1_0)
and zarks_d0_d0 _lh_zarks_arg1_0 =
  (((zipWith_lz_lz_d1_d0 zark_d0_d0) (ints_d2_d0 0)) ((map_lz_d3_d0 (fun n_3 -> 
    (2.0 *. n_3))) (ints_d3_d0 0)))
and zarks_d1_d0 _lh_zarks_arg1_1 =
  (((zipWith_lz_lz_d2_d0 zark_d1_d0) (ints_d4_d0 0)) ((map_lz_d4_d0 (fun n_4 -> 
    (2.0 *. n_4))) (ints_d5_d0 0)))
and zark_d0_d0 _lh_zark_arg1_1 _lh_zark_arg2_1 =
  (((((integrate2D_d0_d0 0.0) _lh_zark_arg1_1) 0.0) _lh_zark_arg2_1) (fun x_1 y_1 -> 
    (x_1 *. y_1)))
and zark_d1_d0 _lh_zark_arg1_0 _lh_zark_arg2_0 =
  (((((integrate2D_d1_d0 0.0) _lh_zark_arg1_0) 0.0) _lh_zark_arg2_0) (fun x_0 y_0 -> 
    (x_0 *. y_0)))
and zipWith_lz_lz_d4_d0 f_3 xs_0 ys_1 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_1, tx_1) -> 
      (match (Lazy.force ys_1) with
        | `LH_C(hy_0, ty_0) -> 
          (let rec h_2 = ((f_3 hx_1) hy_0) in
            (let rec t_2 = (((zipWith_lz_lz_d4_d0 f_3) tx_1) ty_0) in
              (fun f_4 -> 
                (let rec h_3 = (f_4 h_2) in
                  (let rec t_3 = ((map_lz_d2_d0 f_4) t_2) in
                    (fun n_0 -> 
                      (let rec _lh_sumFloat_LH_C_0_1_8 = h_3 in
                        (let rec _lh_sumFloat_LH_C_1_1_8 = ((take_lz_d0_d0 (n_0 - 1)) t_3) in
                          (_lh_sumFloat_LH_C_0_1_8 +. (sumFloat_d4_d0 _lh_sumFloat_LH_C_1_1_8))))))))))
        | `LH_N -> 
          (fun f_5 n_1 -> 
            0.0))
    | `LH_N -> 
      (fun f_6 n_2 -> 
        0.0)));;

(* lumberhack_pop_out *)
let rec enumFromFloat_d2_d0_d0 _lh_enumFromFloat_arg1_9 =
  (lazy (let rec hx_1_0 = _lh_enumFromFloat_arg1_9 in
    (let rec tx_1_0 = (enumFromFloat_d2_d0_d0 (_lh_enumFromFloat_arg1_9 +. 1.0)) in
      (fun ys_9 f_3_4 -> 
        ((((Lazy.force ys_9) hx_1_0) tx_1_0) f_3_4)))));;
let rec enumFromFloat_d4_d0_d0 _lh_enumFromFloat_arg1_1_0 =
  (lazy (let rec hx_1_2 = _lh_enumFromFloat_arg1_1_0 in
    (let rec tx_1_2 = (enumFromFloat_d4_d0_d0 (_lh_enumFromFloat_arg1_1_0 +. 1.0)) in
      (fun ys_1_3 f_4_2 -> 
        ((((Lazy.force ys_1_3) hx_1_2) tx_1_2) f_4_2)))));;
let rec head_lz_d0_d0_d0 ls_1_5 =
  (Lazy.force ls_1_5);;
let rec head_lz_d1_d0_d0 ls_2_3 =
  (Lazy.force ls_2_3);;
let rec map_lz_d0_d0_d0 f_2_1 ls_1_0 =
  (lazy ((Lazy.force ls_1_0) f_2_1));;
let rec map_lz_d0_d0_d1 f_4_1 ls_2_1 =
  (lazy ((Lazy.force ls_2_1) f_4_1));;
let rec map_lz_d1_d0_d0 f_2_2 ls_1_1 =
  (lazy ((Lazy.force ls_1_1) f_2_2));;
let rec map_lz_d1_d0_d1 f_2_5 ls_1_2 =
  (lazy ((Lazy.force ls_1_2) f_2_5));;
let rec map_lz_d2_d0_d0 f_4_0 ls_2_0 =
  (lazy ((Lazy.force ls_2_0) f_4_0));;
let rec map_lz_d2_d0_d1 f_3_6 ls_1_7 =
  (lazy ((Lazy.force ls_1_7) f_3_6));;
let rec map_lz_d3_d0_d0 f_3_0 ls_1_4 =
  (lazy ((Lazy.force ls_1_4) f_3_0));;
let rec map_lz_d3_d0_d1 f_3_7 ls_1_8 =
  (lazy ((Lazy.force ls_1_8) f_3_7));;
let rec map_lz_d4_d0_d0 f_2_9 ls_1_3 =
  (lazy ((Lazy.force ls_1_3) f_2_9));;
let rec map_lz_d4_d0_d1 f_3_2 ls_1_6 =
  (lazy ((Lazy.force ls_1_6) f_3_2));;
let rec sumFloat_d0_d0_d0 _lh_sumFloat_arg1_2_3 =
  _lh_sumFloat_arg1_2_3;;
let rec sumFloat_d0_d0_d1 _lh_sumFloat_arg1_4_5 =
  _lh_sumFloat_arg1_4_5;;
let rec sumFloat_d0_d0_d2 _lh_sumFloat_arg1_3_3 =
  _lh_sumFloat_arg1_3_3;;
let rec sumFloat_d0_d0_d3 _lh_sumFloat_arg1_1_4 =
  _lh_sumFloat_arg1_1_4;;
let rec sumFloat_d0_d0_d4 _lh_sumFloat_arg1_3_7 =
  _lh_sumFloat_arg1_3_7;;
let rec sumFloat_d0_d0_d5 _lh_sumFloat_arg1_1_6 =
  _lh_sumFloat_arg1_1_6;;
let rec sumFloat_d0_d0_d6 _lh_sumFloat_arg1_3_1 =
  _lh_sumFloat_arg1_3_1;;
let rec sumFloat_d0_d0_d7 _lh_sumFloat_arg1_4_2 =
  _lh_sumFloat_arg1_4_2;;
let rec sumFloat_d0_d0_d8 _lh_sumFloat_arg1_1_7 =
  _lh_sumFloat_arg1_1_7;;
let rec sumFloat_d0_d0_d9 _lh_sumFloat_arg1_1_3 =
  _lh_sumFloat_arg1_1_3;;
let rec sumFloat_d1_d0_d0 _lh_sumFloat_arg1_4_0 =
  _lh_sumFloat_arg1_4_0;;
let rec sumFloat_d1_d0_d1 _lh_sumFloat_arg1_3_6 =
  _lh_sumFloat_arg1_3_6;;
let rec sumFloat_d1_d0_d2 _lh_sumFloat_arg1_2_6 =
  _lh_sumFloat_arg1_2_6;;
let rec sumFloat_d1_d0_d3 _lh_sumFloat_arg1_6 =
  _lh_sumFloat_arg1_6;;
let rec sumFloat_d1_d0_d4 _lh_sumFloat_arg1_1_9 =
  _lh_sumFloat_arg1_1_9;;
let rec sumFloat_d1_d0_d5 _lh_sumFloat_arg1_4_3 =
  _lh_sumFloat_arg1_4_3;;
let rec sumFloat_d1_d0_d6 _lh_sumFloat_arg1_2_8 =
  _lh_sumFloat_arg1_2_8;;
let rec sumFloat_d1_d0_d7 _lh_sumFloat_arg1_8 =
  _lh_sumFloat_arg1_8;;
let rec sumFloat_d1_d0_d8 _lh_sumFloat_arg1_3_5 =
  _lh_sumFloat_arg1_3_5;;
let rec sumFloat_d1_d0_d9 _lh_sumFloat_arg1_1_5 =
  _lh_sumFloat_arg1_1_5;;
let rec sumFloat_d2_d0_d0 _lh_sumFloat_arg1_1_1 =
  _lh_sumFloat_arg1_1_1;;
let rec sumFloat_d2_d0_d1 _lh_sumFloat_arg1_1_0 =
  _lh_sumFloat_arg1_1_0;;
let rec sumFloat_d2_d0_d2 _lh_sumFloat_arg1_9 =
  _lh_sumFloat_arg1_9;;
let rec sumFloat_d2_d0_d3 _lh_sumFloat_arg1_4_6 =
  _lh_sumFloat_arg1_4_6;;
let rec sumFloat_d2_d0_d4 _lh_sumFloat_arg1_5 =
  _lh_sumFloat_arg1_5;;
let rec sumFloat_d2_d0_d5 _lh_sumFloat_arg1_1_2 =
  _lh_sumFloat_arg1_1_2;;
let rec sumFloat_d2_d0_d6 _lh_sumFloat_arg1_7 =
  _lh_sumFloat_arg1_7;;
let rec sumFloat_d2_d0_d7 _lh_sumFloat_arg1_2_4 =
  _lh_sumFloat_arg1_2_4;;
let rec sumFloat_d2_d0_d8 _lh_sumFloat_arg1_2_1 =
  _lh_sumFloat_arg1_2_1;;
let rec sumFloat_d2_d0_d9 _lh_sumFloat_arg1_1_8 =
  _lh_sumFloat_arg1_1_8;;
let rec sumFloat_d3_d0_d0 _lh_sumFloat_arg1_2_5 =
  _lh_sumFloat_arg1_2_5;;
let rec sumFloat_d3_d0_d1 _lh_sumFloat_arg1_3_9 =
  _lh_sumFloat_arg1_3_9;;
let rec sumFloat_d3_d0_d2 _lh_sumFloat_arg1_2_2 =
  _lh_sumFloat_arg1_2_2;;
let rec sumFloat_d3_d0_d3 _lh_sumFloat_arg1_4_1 =
  _lh_sumFloat_arg1_4_1;;
let rec sumFloat_d3_d0_d4 _lh_sumFloat_arg1_4_4 =
  _lh_sumFloat_arg1_4_4;;
let rec sumFloat_d3_d0_d5 _lh_sumFloat_arg1_2_7 =
  _lh_sumFloat_arg1_2_7;;
let rec sumFloat_d3_d0_d6 _lh_sumFloat_arg1_3_4 =
  _lh_sumFloat_arg1_3_4;;
let rec sumFloat_d3_d0_d7 _lh_sumFloat_arg1_2_9 =
  _lh_sumFloat_arg1_2_9;;
let rec sumFloat_d3_d0_d8 _lh_sumFloat_arg1_3_2 =
  _lh_sumFloat_arg1_3_2;;
let rec sumFloat_d3_d0_d9 _lh_sumFloat_arg1_2_0 =
  _lh_sumFloat_arg1_2_0;;
let rec sumFloat_d4_d0_d0 _lh_sumFloat_arg1_3_8 =
  _lh_sumFloat_arg1_3_8;;
let rec sumFloat_d4_d0_d1 _lh_sumFloat_arg1_3_0 =
  _lh_sumFloat_arg1_3_0;;
let rec tail_lz_d0_d0_d0 ls_2_5 =
  (match (Lazy.force ls_2_5) with
    | `LH_C(h_1_9, t_1_9) -> 
      t_1_9
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lz_d1_d0_d0 ls_2_4 =
  (match (Lazy.force ls_2_4) with
    | `LH_C(h_1_8, t_1_8) -> 
      t_1_8
    | `LH_N -> 
      (failwith "error"));;
let rec take_lz_d0_d0_d0 n_9 ls_2_2 =
  (if (n_9 > 0) then
    ((Lazy.force ls_2_2) n_9)
  else
    0.0);;
let rec take_lz_d0_d0_d1 n_6 ls_1_9 =
  (if (n_6 > 0) then
    ((Lazy.force ls_1_9) n_6)
  else
    0.0);;
let rec zipWith_lz_lz_d0_d0_d0 f_3_1 xs_6 ys_8 =
  (lazy (match (Lazy.force xs_6) with
    | `LH_C(hx_9, tx_9) -> 
      (match (Lazy.force ys_8) with
        | `LH_C(hy_7, ty_7) -> 
          (`LH_C(((f_3_1 hx_9) hy_7), (((zipWith_lz_lz_d0_d0_d0 f_3_1) tx_9) ty_7)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_d1_d0_d0 f_3_9 xs_9 ys_1_2 =
  (lazy (((Lazy.force xs_9) ys_1_2) f_3_9));;
let rec zipWith_lz_lz_d1_d0_d1 f_3_8 xs_8 ys_1_1 =
  (lazy (((Lazy.force xs_8) ys_1_1) f_3_8));;
let rec zipWith_lz_lz_d2_d0_d0 f_2_8 xs_5 ys_7 =
  (lazy (((Lazy.force xs_5) ys_7) f_2_8));;
let rec zipWith_lz_lz_d2_d0_d1 f_4_3 xs_1_0 ys_1_4 =
  (lazy (((Lazy.force xs_1_0) ys_1_4) f_4_3));;
let rec zipWith_lz_lz_d3_d0_d0 f_3_5 xs_7 ys_1_0 =
  (lazy (match (Lazy.force xs_7) with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match (Lazy.force ys_1_0) with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_3_5 hx_1_1) hy_8), (((zipWith_lz_lz_d3_d0_d0 f_3_5) tx_1_1) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFromFloat_d0_d0_d0 _lh_enumFromFloat_arg1_1_1 =
  (lazy (let rec h_1_6 = _lh_enumFromFloat_arg1_1_1 in
    (let rec t_1_6 = (enumFromFloat_d0_d0_d0 (_lh_enumFromFloat_arg1_1_1 +. 1.0)) in
      (fun f_4_8 -> 
        (let rec h_1_7 = (f_4_8 h_1_6) in
          (let rec t_1_7 = ((map_lz_d0_d0_d0 f_4_8) t_1_6) in
            h_1_7))))))
and enumFromFloat_d1_d0_d0 _lh_enumFromFloat_arg1_8 =
  (lazy (let rec h_1_3 = _lh_enumFromFloat_arg1_8 in
    (let rec t_1_3 = (enumFromFloat_d1_d0_d0 (_lh_enumFromFloat_arg1_8 +. 1.0)) in
      (fun f_3_3 -> 
        (`LH_C((f_3_3 h_1_3), ((map_lz_d1_d0_d0 f_3_3) t_1_3)))))))
and enumFromFloat_d3_d0_d0 _lh_enumFromFloat_arg1_6 =
  (lazy (let rec h_1_0 = _lh_enumFromFloat_arg1_6 in
    (let rec t_1_0 = (enumFromFloat_d3_d0_d0 (_lh_enumFromFloat_arg1_6 +. 1.0)) in
      (fun f_2_3 -> 
        (let rec hy_5 = (f_2_3 h_1_0) in
          (let rec ty_5 = ((map_lz_d3_d0_d0 f_2_3) t_1_0) in
            (fun hx_7 tx_7 f_2_4 -> 
              (let rec h_1_1 = ((f_2_4 hx_7) hy_5) in
                (let rec t_1_1 = (((zipWith_lz_lz_d1_d0_d0 f_2_4) tx_7) ty_5) in
                  h_1_1)))))))))
and enumFromFloat_d5_d0_d0 _lh_enumFromFloat_arg1_7 =
  (lazy (let rec h_1_2 = _lh_enumFromFloat_arg1_7 in
    (let rec t_1_2 = (enumFromFloat_d5_d0_d0 (_lh_enumFromFloat_arg1_7 +. 1.0)) in
      (fun f_2_6 -> 
        (let rec hy_6 = (f_2_6 h_1_2) in
          (let rec ty_6 = ((map_lz_d4_d0_d0 f_2_6) t_1_2) in
            (fun hx_8 tx_8 f_2_7 -> 
              (`LH_C(((f_2_7 hx_8) hy_6), (((zipWith_lz_lz_d2_d0_d0 f_2_7) tx_8) ty_6))))))))))
and etotal_d0_d0_d0 _lh_etotal_arg1_1 =
  (sumFloat_d4_d0_d0 ((take_lz_d0_d0_d0 _lh_etotal_arg1_1) ((map_lz_d2_d0_d0 (fun a_8 -> 
    (a_8 *. a_8))) (((zipWith_lz_lz_d4_d0_d0 (fun a_9 b_4 -> 
    (a_9 -. b_4))) (rtotals_d0_d0_d0 0)) (itotals_d0_d0_d0 0)))))
and integrate1D_d0_d0_d0 _lh_integrate1D_arg1_7 _lh_integrate1D_arg2_7 _lh_integrate1D_arg3_7 =
  (let rec d_7 = ((_lh_integrate1D_arg2_7 -. _lh_integrate1D_arg1_7) /. 8.0) in
    (d_7 *. (sumFloat_d0_d0_d0 (let rec _lh_sumFloat_LH_C_0_6_4 = ((_lh_integrate1D_arg3_7 _lh_integrate1D_arg1_7) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_6_4 = (let rec _lh_sumFloat_LH_C_0_6_5 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg1_7 +. d_7)) in
        (let rec _lh_sumFloat_LH_C_1_6_5 = (let rec _lh_sumFloat_LH_C_0_6_6 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg1_7 +. (2.0 *. d_7))) in
          (let rec _lh_sumFloat_LH_C_1_6_6 = (let rec _lh_sumFloat_LH_C_0_6_7 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg1_7 +. (3.0 *. d_7))) in
            (let rec _lh_sumFloat_LH_C_1_6_7 = (let rec _lh_sumFloat_LH_C_0_6_8 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg1_7 +. (4.0 *. d_7))) in
              (let rec _lh_sumFloat_LH_C_1_6_8 = (let rec _lh_sumFloat_LH_C_0_6_9 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg2_7 -. (3.0 *. d_7))) in
                (let rec _lh_sumFloat_LH_C_1_6_9 = (let rec _lh_sumFloat_LH_C_0_7_0 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg2_7 -. (2.0 *. d_7))) in
                  (let rec _lh_sumFloat_LH_C_1_7_0 = (let rec _lh_sumFloat_LH_C_0_7_1 = (_lh_integrate1D_arg3_7 (_lh_integrate1D_arg2_7 -. d_7)) in
                    (let rec _lh_sumFloat_LH_C_1_7_1 = (let rec _lh_sumFloat_LH_C_0_7_2 = ((_lh_integrate1D_arg3_7 _lh_integrate1D_arg2_7) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_7_2 = 0.0 in
                        (_lh_sumFloat_LH_C_0_7_2 +. (sumFloat_d0_d0_d1 _lh_sumFloat_LH_C_1_7_2)))) in
                      (_lh_sumFloat_LH_C_0_7_1 +. (sumFloat_d0_d0_d2 _lh_sumFloat_LH_C_1_7_1)))) in
                    (_lh_sumFloat_LH_C_0_7_0 +. (sumFloat_d0_d0_d3 _lh_sumFloat_LH_C_1_7_0)))) in
                  (_lh_sumFloat_LH_C_0_6_9 +. (sumFloat_d0_d0_d4 _lh_sumFloat_LH_C_1_6_9)))) in
                (_lh_sumFloat_LH_C_0_6_8 +. (sumFloat_d0_d0_d5 _lh_sumFloat_LH_C_1_6_8)))) in
              (_lh_sumFloat_LH_C_0_6_7 +. (sumFloat_d0_d0_d6 _lh_sumFloat_LH_C_1_6_7)))) in
            (_lh_sumFloat_LH_C_0_6_6 +. (sumFloat_d0_d0_d7 _lh_sumFloat_LH_C_1_6_6)))) in
          (_lh_sumFloat_LH_C_0_6_5 +. (sumFloat_d0_d0_d8 _lh_sumFloat_LH_C_1_6_5)))) in
        (_lh_sumFloat_LH_C_0_6_4 +. (sumFloat_d0_d0_d9 _lh_sumFloat_LH_C_1_6_4)))))))
and integrate1D_d1_d0_d0 _lh_integrate1D_arg1_4 _lh_integrate1D_arg2_4 _lh_integrate1D_arg3_4 =
  (let rec d_4 = ((_lh_integrate1D_arg2_4 -. _lh_integrate1D_arg1_4) /. 8.0) in
    (d_4 *. (sumFloat_d1_d0_d0 (let rec _lh_sumFloat_LH_C_0_3_7 = ((_lh_integrate1D_arg3_4 _lh_integrate1D_arg1_4) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_3_7 = (let rec _lh_sumFloat_LH_C_0_3_8 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. d_4)) in
        (let rec _lh_sumFloat_LH_C_1_3_8 = (let rec _lh_sumFloat_LH_C_0_3_9 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (2.0 *. d_4))) in
          (let rec _lh_sumFloat_LH_C_1_3_9 = (let rec _lh_sumFloat_LH_C_0_4_0 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (3.0 *. d_4))) in
            (let rec _lh_sumFloat_LH_C_1_4_0 = (let rec _lh_sumFloat_LH_C_0_4_1 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg1_4 +. (4.0 *. d_4))) in
              (let rec _lh_sumFloat_LH_C_1_4_1 = (let rec _lh_sumFloat_LH_C_0_4_2 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. (3.0 *. d_4))) in
                (let rec _lh_sumFloat_LH_C_1_4_2 = (let rec _lh_sumFloat_LH_C_0_4_3 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. (2.0 *. d_4))) in
                  (let rec _lh_sumFloat_LH_C_1_4_3 = (let rec _lh_sumFloat_LH_C_0_4_4 = (_lh_integrate1D_arg3_4 (_lh_integrate1D_arg2_4 -. d_4)) in
                    (let rec _lh_sumFloat_LH_C_1_4_4 = (let rec _lh_sumFloat_LH_C_0_4_5 = ((_lh_integrate1D_arg3_4 _lh_integrate1D_arg2_4) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_4_5 = 0.0 in
                        (_lh_sumFloat_LH_C_0_4_5 +. (sumFloat_d1_d0_d1 _lh_sumFloat_LH_C_1_4_5)))) in
                      (_lh_sumFloat_LH_C_0_4_4 +. (sumFloat_d1_d0_d2 _lh_sumFloat_LH_C_1_4_4)))) in
                    (_lh_sumFloat_LH_C_0_4_3 +. (sumFloat_d1_d0_d3 _lh_sumFloat_LH_C_1_4_3)))) in
                  (_lh_sumFloat_LH_C_0_4_2 +. (sumFloat_d1_d0_d4 _lh_sumFloat_LH_C_1_4_2)))) in
                (_lh_sumFloat_LH_C_0_4_1 +. (sumFloat_d1_d0_d5 _lh_sumFloat_LH_C_1_4_1)))) in
              (_lh_sumFloat_LH_C_0_4_0 +. (sumFloat_d1_d0_d6 _lh_sumFloat_LH_C_1_4_0)))) in
            (_lh_sumFloat_LH_C_0_3_9 +. (sumFloat_d1_d0_d7 _lh_sumFloat_LH_C_1_3_9)))) in
          (_lh_sumFloat_LH_C_0_3_8 +. (sumFloat_d1_d0_d8 _lh_sumFloat_LH_C_1_3_8)))) in
        (_lh_sumFloat_LH_C_0_3_7 +. (sumFloat_d1_d0_d9 _lh_sumFloat_LH_C_1_3_7)))))))
and integrate1D_d2_d0_d0 _lh_integrate1D_arg1_5 _lh_integrate1D_arg2_5 _lh_integrate1D_arg3_5 =
  (let rec d_5 = ((_lh_integrate1D_arg2_5 -. _lh_integrate1D_arg1_5) /. 8.0) in
    (d_5 *. (sumFloat_d2_d0_d9 (let rec _lh_sumFloat_LH_C_0_4_6 = ((_lh_integrate1D_arg3_5 _lh_integrate1D_arg1_5) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_4_6 = (let rec _lh_sumFloat_LH_C_0_4_7 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg1_5 +. d_5)) in
        (let rec _lh_sumFloat_LH_C_1_4_7 = (let rec _lh_sumFloat_LH_C_0_4_8 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg1_5 +. (2.0 *. d_5))) in
          (let rec _lh_sumFloat_LH_C_1_4_8 = (let rec _lh_sumFloat_LH_C_0_4_9 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg1_5 +. (3.0 *. d_5))) in
            (let rec _lh_sumFloat_LH_C_1_4_9 = (let rec _lh_sumFloat_LH_C_0_5_0 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg1_5 +. (4.0 *. d_5))) in
              (let rec _lh_sumFloat_LH_C_1_5_0 = (let rec _lh_sumFloat_LH_C_0_5_1 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg2_5 -. (3.0 *. d_5))) in
                (let rec _lh_sumFloat_LH_C_1_5_1 = (let rec _lh_sumFloat_LH_C_0_5_2 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg2_5 -. (2.0 *. d_5))) in
                  (let rec _lh_sumFloat_LH_C_1_5_2 = (let rec _lh_sumFloat_LH_C_0_5_3 = (_lh_integrate1D_arg3_5 (_lh_integrate1D_arg2_5 -. d_5)) in
                    (let rec _lh_sumFloat_LH_C_1_5_3 = (let rec _lh_sumFloat_LH_C_0_5_4 = ((_lh_integrate1D_arg3_5 _lh_integrate1D_arg2_5) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_5_4 = 0.0 in
                        (_lh_sumFloat_LH_C_0_5_4 +. (sumFloat_d2_d0_d0 _lh_sumFloat_LH_C_1_5_4)))) in
                      (_lh_sumFloat_LH_C_0_5_3 +. (sumFloat_d2_d0_d1 _lh_sumFloat_LH_C_1_5_3)))) in
                    (_lh_sumFloat_LH_C_0_5_2 +. (sumFloat_d2_d0_d2 _lh_sumFloat_LH_C_1_5_2)))) in
                  (_lh_sumFloat_LH_C_0_5_1 +. (sumFloat_d2_d0_d3 _lh_sumFloat_LH_C_1_5_1)))) in
                (_lh_sumFloat_LH_C_0_5_0 +. (sumFloat_d2_d0_d4 _lh_sumFloat_LH_C_1_5_0)))) in
              (_lh_sumFloat_LH_C_0_4_9 +. (sumFloat_d2_d0_d5 _lh_sumFloat_LH_C_1_4_9)))) in
            (_lh_sumFloat_LH_C_0_4_8 +. (sumFloat_d2_d0_d6 _lh_sumFloat_LH_C_1_4_8)))) in
          (_lh_sumFloat_LH_C_0_4_7 +. (sumFloat_d2_d0_d7 _lh_sumFloat_LH_C_1_4_7)))) in
        (_lh_sumFloat_LH_C_0_4_6 +. (sumFloat_d2_d0_d8 _lh_sumFloat_LH_C_1_4_6)))))))
and integrate1D_d3_d0_d0 _lh_integrate1D_arg1_6 _lh_integrate1D_arg2_6 _lh_integrate1D_arg3_6 =
  (let rec d_6 = ((_lh_integrate1D_arg2_6 -. _lh_integrate1D_arg1_6) /. 8.0) in
    (d_6 *. (sumFloat_d3_d0_d0 (let rec _lh_sumFloat_LH_C_0_5_5 = ((_lh_integrate1D_arg3_6 _lh_integrate1D_arg1_6) *. 0.5) in
      (let rec _lh_sumFloat_LH_C_1_5_5 = (let rec _lh_sumFloat_LH_C_0_5_6 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg1_6 +. d_6)) in
        (let rec _lh_sumFloat_LH_C_1_5_6 = (let rec _lh_sumFloat_LH_C_0_5_7 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg1_6 +. (2.0 *. d_6))) in
          (let rec _lh_sumFloat_LH_C_1_5_7 = (let rec _lh_sumFloat_LH_C_0_5_8 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg1_6 +. (3.0 *. d_6))) in
            (let rec _lh_sumFloat_LH_C_1_5_8 = (let rec _lh_sumFloat_LH_C_0_5_9 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg1_6 +. (4.0 *. d_6))) in
              (let rec _lh_sumFloat_LH_C_1_5_9 = (let rec _lh_sumFloat_LH_C_0_6_0 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg2_6 -. (3.0 *. d_6))) in
                (let rec _lh_sumFloat_LH_C_1_6_0 = (let rec _lh_sumFloat_LH_C_0_6_1 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg2_6 -. (2.0 *. d_6))) in
                  (let rec _lh_sumFloat_LH_C_1_6_1 = (let rec _lh_sumFloat_LH_C_0_6_2 = (_lh_integrate1D_arg3_6 (_lh_integrate1D_arg2_6 -. d_6)) in
                    (let rec _lh_sumFloat_LH_C_1_6_2 = (let rec _lh_sumFloat_LH_C_0_6_3 = ((_lh_integrate1D_arg3_6 _lh_integrate1D_arg2_6) *. 0.5) in
                      (let rec _lh_sumFloat_LH_C_1_6_3 = 0.0 in
                        (_lh_sumFloat_LH_C_0_6_3 +. (sumFloat_d3_d0_d1 _lh_sumFloat_LH_C_1_6_3)))) in
                      (_lh_sumFloat_LH_C_0_6_2 +. (sumFloat_d3_d0_d2 _lh_sumFloat_LH_C_1_6_2)))) in
                    (_lh_sumFloat_LH_C_0_6_1 +. (sumFloat_d3_d0_d3 _lh_sumFloat_LH_C_1_6_1)))) in
                  (_lh_sumFloat_LH_C_0_6_0 +. (sumFloat_d3_d0_d4 _lh_sumFloat_LH_C_1_6_0)))) in
                (_lh_sumFloat_LH_C_0_5_9 +. (sumFloat_d3_d0_d5 _lh_sumFloat_LH_C_1_5_9)))) in
              (_lh_sumFloat_LH_C_0_5_8 +. (sumFloat_d3_d0_d6 _lh_sumFloat_LH_C_1_5_8)))) in
            (_lh_sumFloat_LH_C_0_5_7 +. (sumFloat_d3_d0_d7 _lh_sumFloat_LH_C_1_5_7)))) in
          (_lh_sumFloat_LH_C_0_5_6 +. (sumFloat_d3_d0_d8 _lh_sumFloat_LH_C_1_5_6)))) in
        (_lh_sumFloat_LH_C_0_5_5 +. (sumFloat_d3_d0_d9 _lh_sumFloat_LH_C_1_5_5)))))))
and integrate2D_d0_d0_d0 _lh_integrate2D_arg1_2 _lh_integrate2D_arg2_2 _lh_integrate2D_arg3_2 _lh_integrate2D_arg4_2 _lh_integrate2D_arg5_2 =
  (((integrate1D_d0_d0_d0 _lh_integrate2D_arg3_2) _lh_integrate2D_arg4_2) (fun y_6 -> 
    (((integrate1D_d1_d0_d0 _lh_integrate2D_arg1_2) _lh_integrate2D_arg2_2) (fun x_6 -> 
      ((_lh_integrate2D_arg5_2 x_6) y_6)))))
and integrate2D_d1_d0_d0 _lh_integrate2D_arg1_3 _lh_integrate2D_arg2_3 _lh_integrate2D_arg3_3 _lh_integrate2D_arg4_3 _lh_integrate2D_arg5_3 =
  (((integrate1D_d2_d0_d0 _lh_integrate2D_arg3_3) _lh_integrate2D_arg4_3) (fun y_7 -> 
    (((integrate1D_d3_d0_d0 _lh_integrate2D_arg1_3) _lh_integrate2D_arg2_3) (fun x_7 -> 
      ((_lh_integrate2D_arg5_3 x_7) y_7)))))
and ints_d0_d0_d0 _lh_ints_arg1_1_0 =
  (enumFromFloat_d0_d0_d0 1.0)
and ints_d1_d0_d0 _lh_ints_arg1_1_1 =
  (enumFromFloat_d1_d0_d0 1.0)
and ints_d2_d0_d0 _lh_ints_arg1_8 =
  (enumFromFloat_d2_d0_d0 1.0)
and ints_d3_d0_d0 _lh_ints_arg1_6 =
  (enumFromFloat_d3_d0_d0 1.0)
and ints_d4_d0_d0 _lh_ints_arg1_9 =
  (enumFromFloat_d4_d0_d0 1.0)
and ints_d5_d0_d0 _lh_ints_arg1_7 =
  (enumFromFloat_d5_d0_d0 1.0)
and is_d0_d0_d0 _lh_is_arg1_3 =
  ((map_lz_d0_d0_d1 (fun a_1_0 -> 
    (((a_1_0 *. a_1_0) *. a_1_0) *. a_1_0))) (ints_d0_d0_d0 0))
and is_d1_d0_d0 _lh_is_arg1_2 =
  ((map_lz_d1_d0_d1 (fun a_6 -> 
    (((a_6 *. a_6) *. a_6) *. a_6))) (ints_d1_d0_d0 0))
and itotals_d0_d0_d0 _lh_itotals_arg1_1 =
  (lazy (`LH_C((head_lz_d0_d0_d0 (is_d0_d0_d0 0)), (((zipWith_lz_lz_d0_d0_d0 (fun a_7 b_3 -> 
    (a_7 +. b_3))) (tail_lz_d0_d0_d0 (is_d1_d0_d0 0))) (itotals_d0_d0_d0 0)))))
and rtotals_d0_d0_d0 _lh_rtotals_arg1_1 =
  (lazy (`LH_C((head_lz_d1_d0_d0 (zarks_d0_d0_d0 0)), (((zipWith_lz_lz_d3_d0_d0 (fun a_1_1 b_5 -> 
    (a_1_1 +. b_5))) (tail_lz_d1_d0_d0 (zarks_d1_d0_d0 0))) (rtotals_d0_d0_d0 0)))))
and testIntegrate_nofib_d0_d0_d0 _lh_testIntegrate_nofib_arg1_1 =
  (etotal_d0_d0_d0 _lh_testIntegrate_nofib_arg1_1)
and zarks_d0_d0_d0 _lh_zarks_arg1_3 =
  (((zipWith_lz_lz_d1_d0_d1 zark_d0_d0_d0) (ints_d2_d0_d0 0)) ((map_lz_d3_d0_d1 (fun n_8 -> 
    (2.0 *. n_8))) (ints_d3_d0_d0 0)))
and zarks_d1_d0_d0 _lh_zarks_arg1_2 =
  (((zipWith_lz_lz_d2_d0_d1 zark_d1_d0_d0) (ints_d4_d0_d0 0)) ((map_lz_d4_d0_d1 (fun n_7 -> 
    (2.0 *. n_7))) (ints_d5_d0_d0 0)))
and zark_d0_d0_d0 _lh_zark_arg1_3 _lh_zark_arg2_3 =
  (((((integrate2D_d0_d0_d0 0.0) _lh_zark_arg1_3) 0.0) _lh_zark_arg2_3) (fun x_5 y_5 -> 
    (x_5 *. y_5)))
and zark_d1_d0_d0 _lh_zark_arg1_2 _lh_zark_arg2_2 =
  (((((integrate2D_d1_d0_d0 0.0) _lh_zark_arg1_2) 0.0) _lh_zark_arg2_2) (fun x_4 y_4 -> 
    (x_4 *. y_4)))
and zipWith_lz_lz_d4_d0_d0 f_4_4 xs_1_1 ys_1_5 =
  (lazy (match (Lazy.force xs_1_1) with
    | `LH_C(hx_1_3, tx_1_3) -> 
      (match (Lazy.force ys_1_5) with
        | `LH_C(hy_9, ty_9) -> 
          (let rec h_1_4 = ((f_4_4 hx_1_3) hy_9) in
            (let rec t_1_4 = (((zipWith_lz_lz_d4_d0_d0 f_4_4) tx_1_3) ty_9) in
              (fun f_4_5 -> 
                (let rec h_1_5 = (f_4_5 h_1_4) in
                  (let rec t_1_5 = ((map_lz_d2_d0_d1 f_4_5) t_1_4) in
                    (fun n_1_0 -> 
                      (let rec _lh_sumFloat_LH_C_0_7_3 = h_1_5 in
                        (let rec _lh_sumFloat_LH_C_1_7_3 = ((take_lz_d0_d0_d1 (n_1_0 - 1)) t_1_5) in
                          (_lh_sumFloat_LH_C_0_7_3 +. (sumFloat_d4_d0_d1 _lh_sumFloat_LH_C_1_7_3))))))))))
        | `LH_N -> 
          (fun f_4_6 n_1_1 -> 
            0.0))
    | `LH_N -> 
      (fun f_4_7 n_1_2 -> 
        0.0)));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Integrate_nofib" (fun () -> ignore ((testIntegrate_nofib_d0 100)));
  Bench.Test.create ~name:"lumberhack_Integrate_nofib" (fun () -> ignore ((testIntegrate_nofib_d0_d0 100)));
  Bench.Test.create ~name:"lumberhack_pop_out_Integrate_nofib" (fun () -> ignore ((testIntegrate_nofib_d0_d0_d0 100)));
])
