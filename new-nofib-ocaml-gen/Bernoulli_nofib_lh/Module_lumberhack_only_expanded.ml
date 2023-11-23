

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec atIndex_lz__d0 n_6 ls_2_1 =
  (if (n_6 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_1) with
      | `LH_C(h_2_3, t_2_5) -> 
        (if (n_6 = 0) then
          h_2_3
        else
          ((atIndex_lz__d0 (n_6 - 1)) t_2_5))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo__d0 a_9 b_6 =
  (if (a_9 <= b_6) then
    (`LH_C(a_9, ((enumFromTo__d0 (a_9 + 1)) b_6)))
  else
    (`LH_N));;
let rec enumFrom__d0 a_1_0 =
  (lazy (`LH_C(a_1_0, (enumFrom__d0 (a_1_0 + 1)))));;
let rec head_lz__d0 ls_2_3 =
  (match (Lazy.force ls_2_3) with
    | `LH_C(h_2_5, t_2_7) -> 
      h_2_5
    | `LH_N -> 
      (failwith "error"));;
let rec iterate__d0 f_1_3 x_4 =
  (lazy (`LH_C(x_4, ((iterate__d0 f_1_3) (f_1_3 x_4)))));;
let rec map_lz__d0 f_1_7 ls_2_5 =
  (lazy (match (Lazy.force ls_2_5) with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C((f_1_7 h_2_7), ((map_lz__d0 f_1_7) t_2_9)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d1 f_1_9 ls_2_7 =
  (lazy (match (Lazy.force ls_2_7) with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_9 h_2_9), ((map_lz__d1 f_1_9) t_3_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d2 f_1_5 ls_2_2 =
  (lazy (match (Lazy.force ls_2_2) with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_5 h_2_4), ((map_lz__d2 f_1_5) t_2_6)))
    | `LH_N -> 
      (`LH_N)));;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d0 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec sum__d0 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (h_2_2 + (sum__d0 t_2_4))
    | `LH_N -> 
      0);;
let rec sum__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (h_2_0 + (sum__d1 t_2_2))
    | `LH_N -> 
      0);;
let rec tail__d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      t_2_8
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_8, t_3_0) -> 
      t_3_0
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz__d0 f_1_2 xs_9 ys_9 =
  (lazy (match (Lazy.force xs_9) with
    | `LH_C(hx_8, tx_8) -> 
      (match (Lazy.force ys_9) with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith_lz_lz__d0 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz__d1 f_1_6 xs_1_2 ys_1_2 =
  (lazy (match (Lazy.force xs_1_2) with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match (Lazy.force ys_1_2) with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_1_6 hx_1_0) hy_1_0), (((zipWith_lz_lz__d1 f_1_6) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_nl__d0 f_1_4 xs_1_1 ys_1_1 =
  (match ys_1_1 with
    | `LH_C(hy_9, ty_9) -> 
      (match (Lazy.force xs_1_1) with
        | `LH_C(hx_9, tx_9) -> 
          (`LH_C(((f_1_4 hx_9) hy_9), (((zipWith_lz_nl__d0 f_1_4) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith__d0 f_1_8 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(hx_1_1, tx_1_1) -> 
      (match ys_1_3 with
        | `LH_C(hy_1_1, ty_1_1) -> 
          (`LH_C(((f_1_8 hx_1_1) hy_1_1), (((zipWith__d0 f_1_8) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_nl_lz__d0 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(hx_1_2, tx_1_2) -> 
      (match (Lazy.force ys_1_4) with
        | `LH_C(hy_1_2, ty_1_2) -> 
          (`LH_C((`LH_P2(hx_1_2, hy_1_2)), ((zip_nl_lz__d0 tx_1_2) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec bernoulli__d0 _lh_bernoulli_arg1_1 =
  (match _lh_bernoulli_arg1_1 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_1 mod 2) = 1) then
        0
      else
        (let rec powers_2 = ((atIndex_lz__d0 (_lh_bernoulli_arg1_1 - 1)) (Lazy.force neg_powers__d0)) in
          (((0 - 1) / 2) + (sum__d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
            (match _lh_listcomp_fun_para_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                (match _lh_listcomp_fun_ls_h_1 with
                  | `LH_P2(_lh_bernoulli_LH_P2_0_1, _lh_bernoulli_LH_P2_1_1) -> 
                    (`LH_C((((sum__d1 (((zipWith_lz_nl__d0 (fun a_8 b_5 -> 
                      (a_8 * b_5))) powers_2) (tail__d0 (tail__d1 _lh_bernoulli_LH_P2_1_1)))) - _lh_bernoulli_LH_P2_0_1) / (_lh_bernoulli_LH_P2_0_1 + 1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                  | _ -> 
                    (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1 ((zip_nl_lz__d0 ((enumFromTo__d0 2) _lh_bernoulli_arg1_1)) pascal__d0))))))))
and neg_powers__d0 =
  (lazy ((map_lz__d0 ((zipWith_lz_lz__d1 (fun n_5 x_3 -> 
    (if n_5 then
      x_3
    else
      (0 - x_3)))) ((iterate__d0 not) true))) powers__d0))
and pascal__d0 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz__d2 (fun line_1 -> 
    (((zipWith__d0 (fun a_1_1 b_7 -> 
      (a_1_1 + b_7))) ((mappend__d0 line_1) (`LH_C(0, (`LH_N))))) (`LH_C(0, line_1))))) pascal__d0))))
and powers__d0 =
  (lazy (`LH_C((enumFrom__d0 2), ((map_lz__d1 (fun p_1 -> 
    (((zipWith_lz_lz__d0 (fun a_1_2 b_8 -> 
      (a_1_2 * b_8))) (head_lz__d0 powers__d0)) p_1))) powers__d0))))
and testBernoulli_nofib__d0 _lh_testBernoulli_nofib_arg1_1 =
  (bernoulli__d0 _lh_testBernoulli_nofib_arg1_1);;
end;;

