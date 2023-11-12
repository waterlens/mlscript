

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec atIndex_lz__d0 n_0 ls_3 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_3) n_0));;
let rec enumFrom__d0 a_0 =
  (lazy (`LH_C(a_0, (enumFrom__d0 (a_0 + 1)))));;
let rec head_lz__d0 ls_4 =
  (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_4) -> 
      h_4
    | `LH_N -> 
      (failwith "error"));;
let rec map_lz__d1 f_1 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_1 h_1), ((map_lz__d1 f_1) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz__d2 f_8 ls_5 =
  (lazy (match (Lazy.force ls_5) with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_8 h_5), ((map_lz__d2 f_8) t_5)))
    | `LH_N -> 
      (`LH_N)));;
let rec sum__d0 ls_6 =
  (ls_6 99);;
let rec sum__d1 ls_0 =
  (ls_0 99);;
let rec tail__d0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      t_2
    | `LH_N -> 
      (failwith "error"));;
let rec tail__d1 ls_8 =
  (match ls_8 with
    | `LH_C(h_9, t_9) -> 
      t_9
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz__d0 f_2 xs_2 ys_3 =
  (lazy (match (Lazy.force xs_2) with
    | `LH_C(hx_1, tx_1) -> 
      (match (Lazy.force ys_3) with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_2 hx_1) hy_1), (((zipWith_lz_lz__d0 f_2) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz__d1 f_1_3 xs_5 ys_1_1 =
  (lazy (((Lazy.force xs_5) f_1_3) ys_1_1));;
let rec zipWith_lz_nl__d0 f_9 xs_4 ys_8 =
  (match ys_8 with
    | `LH_C(hy_6, ty_6) -> 
      ((((Lazy.force xs_4) f_9) hy_6) ty_6)
    | `LH_N -> 
      (fun _lh_dummy_5 -> 
        0));;
let rec zipWith__d0 f_3 xs_3 ys_4 =
  ((xs_3 f_3) ys_4);;
let rec zip_nl_lz__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec bernoulli__d0 _lh_bernoulli_arg1_0 =
  (match _lh_bernoulli_arg1_0 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_0 mod 2) = 1) then
        0
      else
        (let rec powers_0 = ((atIndex_lz__d0 (_lh_bernoulli_arg1_0 - 1)) (Lazy.force neg_powers__d0)) in
          (((0 - 1) / 2) + (sum__d0 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_0) powers_0)) in
            (_lh_listcomp_fun_0 ((zip_nl_lz__d0 ((enumFromTo__d0 2) _lh_bernoulli_arg1_0)) pascal__d0))))))))
and enumFromTo__d0 a_2 b_1 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 =
  (if (a_2 <= b_1) then
    (let rec tx_4 = ((enumFromTo__d0 (a_2 + 1)) b_1) in
      (let rec hx_4 = a_2 in
        (match (Lazy.force _lh_popOutId_0_1) with
          | `LH_C(hy_5, ty_5) -> 
            (let rec _lh_listcomp_fun_ls_t_0 = ((zip_nl_lz__d0 tx_4) ty_5) in
              (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_bernoulli_LH_P2_1_0 = hy_5 in
                (let rec _lh_bernoulli_LH_P2_0_0 = hx_4 in
                  (fun _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 powers_1 -> 
                    (let rec t_6 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                      (let rec h_6 = (((sum__d1 (((zipWith_lz_nl__d0 (fun a_3 b_2 -> 
                        (a_3 * b_2))) powers_1) (tail__d0 (tail__d1 _lh_bernoulli_LH_P2_1_0)))) - _lh_bernoulli_LH_P2_0_0) / (_lh_bernoulli_LH_P2_0_0 + 1)) in
                        (fun _lh_dummy_2 -> 
                          (h_6 + (sum__d0 t_6)))))))) in
                (((_lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_ls_t_0) _lh_popOutId_1_1) _lh_popOutId_2_0)))
          | `LH_N -> 
            (fun _lh_dummy_3 -> 
              0))))
  else
    (fun _lh_dummy_4 -> 
      0))
and iterate__d0 f_4 x_0 =
  (lazy (let rec tx_2 = ((iterate__d0 f_4) (f_4 x_0)) in
    (let rec hx_2 = x_0 in
      (fun f_5 ys_5 -> 
        (match (Lazy.force ys_5) with
          | `LH_C(hy_2, ty_2) -> 
            (let rec tx_3 = (((zipWith_lz_lz__d1 f_5) tx_2) ty_2) in
              (let rec hx_3 = ((f_5 hx_2) hy_2) in
                (fun f_6 hy_3 ty_3 -> 
                  (let rec t_3 = (((zipWith_lz_nl__d0 f_6) tx_3) ty_3) in
                    (let rec h_3 = ((f_6 hx_3) hy_3) in
                      (fun _lh_dummy_0 -> 
                        (h_3 + (sum__d1 t_3))))))))
          | `LH_N -> 
            (fun f_7 hy_4 ty_4 _lh_dummy_1 -> 
              0))))))
and map_lz__d0 f_1_2 ls_7 =
  (lazy (match (Lazy.force ls_7) with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((map_lz__d0 f_1_2) t_7) in
        (let rec h_8 = (f_1_2 h_7) in
          (fun n_2 -> 
            (if (n_2 = 0) then
              h_8
            else
              ((atIndex_lz__d0 (n_2 - 1)) t_8)))))
    | `LH_N -> 
      (fun n_3 -> 
        (failwith "error"))))
and mappend__d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_0, t_0) -> 
      (let rec tx_0 = ((mappend__d0 t_0) ys_1) in
        (let rec hx_0 = h_0 in
          (fun f_0 ys_2 -> 
            (match ys_2 with
              | `LH_C(hy_0, ty_0) -> 
                (`LH_C(((f_0 hx_0) hy_0), (((zipWith__d0 f_0) tx_0) ty_0)))
              | `LH_N -> 
                (`LH_N)))))
    | `LH_N -> 
      ys_1)
and neg_powers__d0 =
  (lazy ((map_lz__d0 ((zipWith_lz_lz__d1 (fun n_1 x_1 -> 
    (if n_1 then
      x_1
    else
      (0 - x_1)))) ((iterate__d0 not) true))) powers__d0))
and pascal__d0 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz__d2 (fun line_0 -> 
    (((zipWith__d0 (fun a_4 b_3 -> 
      (a_4 + b_3))) ((mappend__d0 line_0) (let rec tx_5 = (fun f_1_0 ys_9 -> 
      (`LH_N)) in
      (let rec hx_5 = 0 in
        (fun f_1_1 ys_1_0 -> 
          (match ys_1_0 with
            | `LH_C(hy_7, ty_7) -> 
              (`LH_C(((f_1_1 hx_5) hy_7), (((zipWith__d0 f_1_1) tx_5) ty_7)))
            | `LH_N -> 
              (`LH_N))))))) (`LH_C(0, line_0))))) pascal__d0))))
and powers__d0 =
  (lazy (`LH_C((enumFrom__d0 2), ((map_lz__d1 (fun p_0 -> 
    (((zipWith_lz_lz__d0 (fun a_1 b_0 -> 
      (a_1 * b_0))) (head_lz__d0 powers__d0)) p_0))) powers__d0))))
and testBernoulli_nofib__d0 _lh_testBernoulli_nofib_arg1_0 =
  (bernoulli__d0 _lh_testBernoulli_nofib_arg1_0);;
end;;

