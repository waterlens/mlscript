

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec zip_nl_lz_lh__d1 xs_4 ys_7 =
  (xs_4 ys_7);;
let rec sum_lh__d3 ls_1 =
  (ls_1 99);;
let rec atIndex_lz_lh__d0 n_0 ls_2 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_2) n_0));;
let rec tail_lh__d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec sum_lh__d1 ls_9 =
  (ls_9 99);;
let rec tail_lh__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_9, t_9) -> 
      t_9
    | `LH_N -> 
      (failwith "error"));;
let rec sum_lh__d2 ls_3 =
  (ls_3 99);;
let rec zip_nl_lz_lh__d0 xs_3 ys_6 =
  (xs_3 ys_6);;
let rec sum_lh__d0 ls_8 =
  (ls_8 99);;
let rec zipWith_lh__d0 f_1_0 xs_6 ys_1_0 =
  ((xs_6 f_1_0) ys_1_0);;
let rec zipWith_lh__d2 f_1_2 xs_7 ys_1_3 =
  ((xs_7 f_1_2) ys_1_3);;
let rec zipWith_lh__d1 f_6 xs_2 ys_5 =
  ((xs_2 f_6) ys_5);;
let rec map_lz_lh__d2 f_7 ls_4 =
  (lazy (match (Lazy.force ls_4) with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_7 h_2), ((map_lz_lh__d2 f_7) t_2)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d1 f_8 ls_6 =
  (lazy (match (Lazy.force ls_6) with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_8 h_4), ((map_lz_lh__d1 f_8) t_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFrom_lh__d0 a_4 =
  (lazy (`LH_C(a_4, (enumFrom_lh__d0 (a_4 + 1)))));;
let rec zipWith_lz_lz_lh__d0 f_5 xs_1 ys_4 =
  (lazy (match (Lazy.force xs_1) with
    | `LH_C(hx_3, tx_3) -> 
      (match (Lazy.force ys_4) with
        | `LH_C(hy_3, ty_3) -> 
          (`LH_C(((f_5 hx_3) hy_3), (((zipWith_lz_lz_lh__d0 f_5) tx_3) ty_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec head_lz_lh__d0 ls_5 =
  (match (Lazy.force ls_5) with
    | `LH_C(h_3, t_3) -> 
      h_3
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz_lh__d1 f_1_3 xs_8 ys_1_4 =
  (lazy (((Lazy.force xs_8) f_1_3) ys_1_4));;
let rec zipWith_lz_nl_lh__d0 f_4 xs_0 ys_3 _lh_popOutId_0_1 =
  (match ys_3 with
    | `LH_C(hy_2, ty_2) -> 
      (match (Lazy.force xs_0) with
        | `LH_C(hx_2, tx_2) -> 
          (let rec t_1 = (((zipWith_lz_nl_lh__d0 f_4) tx_2) ty_2) in
            (let rec h_1 = ((f_4 hx_2) hy_2) in
              (h_1 + (sum_lh__d2 t_1))))
        | `LH_N -> 
          0)
    | `LH_N -> 
      0);;
let rec mappend_lh__d0 xs_5 ys_8 =
  (match xs_5 with
    | `LH_C(h_5, t_5) -> 
      (let rec tx_4 = ((mappend_lh__d0 t_5) ys_8) in
        (let rec hx_4 = h_5 in
          (fun f_9 ys_9 -> 
            (match ys_9 with
              | `LH_C(hy_4, ty_4) -> 
                (`LH_C(((f_9 hx_4) hy_4), (((zipWith_lh__d0 f_9) tx_4) ty_4)))
              | `LH_N -> 
                (`LH_N)))))
    | `LH_N -> 
      ys_8);;
let rec powers_lh__d0 =
  (lazy (`LH_C((enumFrom_lh__d0 2), ((map_lz_lh__d1 (fun p_0 -> 
    (((zipWith_lz_lz_lh__d0 (fun a_1 b_1 -> 
      (a_1 * b_1))) (head_lz_lh__d0 powers_lh__d0)) p_0))) powers_lh__d0))));;
let rec iterate_lh__d0 f_0 x_0 =
  (lazy (let rec tx_0 = ((iterate_lh__d0 f_0) (f_0 x_0)) in
    (let rec hx_0 = x_0 in
      (fun f_1 ys_0 -> 
        (match (Lazy.force ys_0) with
          | `LH_C(hy_0, ty_0) -> 
            (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz_lh__d1 f_1) tx_0) ty_0)))
          | `LH_N -> 
            (`LH_N))))));;
let rec map_lz_lh__d0 f_1_1 ls_7 =
  (lazy (match (Lazy.force ls_7) with
    | `LH_C(h_6, t_6) -> 
      (let rec t_7 = ((map_lz_lh__d0 f_1_1) t_6) in
        (let rec h_7 = (f_1_1 h_6) in
          (fun n_1 -> 
            (if (n_1 = 0) then
              h_7
            else
              ((atIndex_lz_lh__d0 (n_1 - 1)) t_7)))))
    | `LH_N -> 
      (fun n_2 -> 
        (failwith "error"))));;
let rec enumFromTo_lh__d0 a_2 b_2 _lh_popOutId_0_3 _lh_popOutId_1_1 _lh_popOutId_2_0 =
  (if (a_2 <= b_2) then
    (let rec tx_5 = ((enumFromTo_lh__d0 (a_2 + 1)) b_2) in
      (let rec hx_5 = a_2 in
        (match (Lazy.force _lh_popOutId_0_3) with
          | `LH_C(hy_5, ty_5) -> 
            (let rec _lh_listcomp_fun_ls_t_0 = ((zip_nl_lz_lh__d0 tx_5) ty_5) in
              (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_bernoulli_LH_P2_1_0 = hy_5 in
                (let rec _lh_bernoulli_LH_P2_0_0 = hx_5 in
                  (fun _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 powers_1 -> 
                    (let rec t_8 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                      (let rec h_8 = (((sum_lh__d0 (((zipWith_lz_nl_lh__d0 (fun a_3 b_3 -> 
                        (a_3 * b_3))) powers_1) (tail_lh__d0 (tail_lh__d1 _lh_bernoulli_LH_P2_1_0)))) - _lh_bernoulli_LH_P2_0_0) / (_lh_bernoulli_LH_P2_0_0 + 1)) in
                        (fun _lh_dummy_3 -> 
                          (h_8 + (sum_lh__d1 t_8)))))))) in
                (((_lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_ls_t_0) _lh_popOutId_1_1) _lh_popOutId_2_0)))
          | `LH_N -> 
            (fun _lh_dummy_4 -> 
              0))))
  else
    (fun _lh_dummy_5 -> 
      0));;
let rec pascal_lh__d0 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_lh__d2 (fun line_0 -> 
    (((zipWith_lh__d1 (fun a_0 b_0 -> 
      (a_0 + b_0))) ((mappend_lh__d0 line_0) (let rec tx_1 = (fun f_2 ys_1 -> 
      (`LH_N)) in
      (let rec hx_1 = 0 in
        (fun f_3 ys_2 -> 
          (match ys_2 with
            | `LH_C(hy_1, ty_1) -> 
              (`LH_C(((f_3 hx_1) hy_1), (((zipWith_lh__d2 f_3) tx_1) ty_1)))
            | `LH_N -> 
              (`LH_N))))))) (`LH_C(0, line_0))))) pascal_lh__d0))));;
let rec neg_powers_lh__d0 =
  (lazy ((map_lz_lh__d0 ((zipWith_lz_lz_lh__d1 (fun n_3 x_1 -> 
    (if n_3 then
      x_1
    else
      (0 - x_1)))) ((iterate_lh__d0 not) true))) powers_lh__d0));;
let rec bernoulli_lh__d0 _lh_bernoulli_arg1_0 =
  (match _lh_bernoulli_arg1_0 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_0 mod 2) = 1) then
        0
      else
        (let rec powers_0 = ((atIndex_lz_lh__d0 (_lh_bernoulli_arg1_0 - 1)) (Lazy.force neg_powers_lh__d0)) in
          (((0 - 1) / 2) + (sum_lh__d3 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) powers_0)) in
            (_lh_listcomp_fun_0 ((zip_nl_lz_lh__d1 ((enumFromTo_lh__d0 2) _lh_bernoulli_arg1_0)) pascal_lh__d0))))))));;
let rec testBernoulli_nofib_lh__d0 _lh_testBernoulli_nofib_arg1_0 =
  (bernoulli_lh__d0 _lh_testBernoulli_nofib_arg1_0);;
end;;

