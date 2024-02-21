

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec zip_nl_lz_lh__d1 xs_2 ys_4 =
  (xs_2 ys_4);;
let rec atIndex_lz_lh__d1 n_0 ls_0 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_0) n_0));;
let rec sum_lh__d2 ls_1 =
  (ls_1 99);;
let rec map_lz_lh__d1 f_4 ls_4 =
  (lazy (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_4 h_4), ((map_lz_lh__d1 f_4) t_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lh__d1 f_2 xs_1 ys_3 =
  ((xs_1 f_2) ys_3);;
let rec mappend_lh__d1 xs_3 ys_5 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (let rec tx_2 = ((mappend_lh__d1 t_5) ys_5) in
        (let rec hx_2 = h_5 in
          (fun f_5 ys_6 -> 
            (match ys_6 with
              | `LH_C(hy_2, ty_2) -> 
                (`LH_C(((f_5 hx_2) hy_2), (((zipWith_lh__d1 f_5) tx_2) ty_2)))
              | `LH_N -> 
                (`LH_N)))))
    | `LH_N -> 
      ys_5);;
let rec pascal_lh__d1 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_lh__d1 (fun line_0 -> 
    (((zipWith_lh__d1 (fun a_3 b_3 -> 
      (a_3 + b_3))) ((mappend_lh__d1 line_0) (let rec tx_3 = (fun f_7 ys_8 -> 
      (`LH_N)) in
      (let rec hx_3 = 0 in
        (fun f_8 ys_9 -> 
          (match ys_9 with
            | `LH_C(hy_4, ty_4) -> 
              (`LH_C(((f_8 hx_3) hy_4), (((zipWith_lh__d1 f_8) tx_3) ty_4)))
            | `LH_N -> 
              (`LH_N))))))) (`LH_C(0, line_0))))) pascal_lh__d1))));;
let rec zipWith_lz_lz_lh__d1 f_9 xs_5 ys_1_0 =
  (lazy (((Lazy.force xs_5) f_9) ys_1_0));;
let rec sum_lh__d1 ls_6 =
  (ls_6 99);;
let rec zipWith_lz_nl_lh__d1 f_6 xs_4 ys_7 =
  (match ys_7 with
    | `LH_C(hy_3, ty_3) -> 
      ((((Lazy.force xs_4) f_6) hy_3) ty_3)
    | `LH_N -> 
      (fun _lh_dummy_3 -> 
        0));;
let rec iterate_lh__d1 f_1_0 x_1 =
  (lazy (let rec tx_4 = ((iterate_lh__d1 f_1_0) (f_1_0 x_1)) in
    (let rec hx_4 = x_1 in
      (fun f_1_1 ys_1_1 -> 
        (match (Lazy.force ys_1_1) with
          | `LH_C(hy_5, ty_5) -> 
            (let rec tx_5 = (((zipWith_lz_lz_lh__d1 f_1_1) tx_4) ty_5) in
              (let rec hx_5 = ((f_1_1 hx_4) hy_5) in
                (fun f_1_2 hy_6 ty_6 -> 
                  (let rec t_9 = (((zipWith_lz_nl_lh__d1 f_1_2) tx_5) ty_6) in
                    (let rec h_9 = ((f_1_2 hx_5) hy_6) in
                      (fun _lh_dummy_4 -> 
                        (h_9 + (sum_lh__d1 t_9))))))))
          | `LH_N -> 
            (fun f_1_3 hy_7 ty_7 _lh_dummy_5 -> 
              0))))));;
let rec map_lz_lh__d2 f_3 ls_3 =
  (lazy (match (Lazy.force ls_3) with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lz_lh__d2 f_3) t_2) in
        (let rec h_3 = (f_3 h_2) in
          (fun n_2 -> 
            (if (n_2 = 0) then
              h_3
            else
              ((atIndex_lz_lh__d1 (n_2 - 1)) t_3)))))
    | `LH_N -> 
      (fun n_3 -> 
        (failwith "error"))));;
let rec zipWith_lz_lz_lh__d2 f_0 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_0 hx_0) hy_0), (((zipWith_lz_lz_lh__d2 f_0) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d3 f_1 ls_2 =
  (lazy (match (Lazy.force ls_2) with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_1 h_0), ((map_lz_lh__d3 f_1) t_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFrom_lh__d1 a_4 =
  (lazy (`LH_C(a_4, (enumFrom_lh__d1 (a_4 + 1)))));;
let rec head_lz_lh__d1 ls_8 =
  (match (Lazy.force ls_8) with
    | `LH_C(h_8, t_8) -> 
      h_8
    | `LH_N -> 
      (failwith "error"));;
let rec powers_lh__d1 =
  (lazy (`LH_C((enumFrom_lh__d1 2), ((map_lz_lh__d3 (fun p_0 -> 
    (((zipWith_lz_lz_lh__d2 (fun a_0 b_0 -> 
      (a_0 * b_0))) (head_lz_lh__d1 powers_lh__d1)) p_0))) powers_lh__d1))));;
let rec neg_powers_lh__d1 =
  (lazy ((map_lz_lh__d2 ((zipWith_lz_lz_lh__d1 (fun n_1 x_0 -> 
    (if n_1 then
      x_0
    else
      (0 - x_0)))) ((iterate_lh__d1 not) true))) powers_lh__d1));;
let rec tail_lh__d1 ls_7 =
  (match ls_7 with
    | `LH_C(h_7, t_7) -> 
      t_7
    | `LH_N -> 
      (failwith "error"));;
let rec tail_lh__d2 ls_5 =
  (match ls_5 with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec enumFromTo_lh__d1 a_1 b_1 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 =
  (if (a_1 <= b_1) then
    (let rec tx_1 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec hx_1 = a_1 in
        (match (Lazy.force _lh_popOutId_0_1) with
          | `LH_C(hy_1, ty_1) -> 
            (let rec _lh_listcomp_fun_ls_t_0 = ((zip_nl_lz_lh__d1 tx_1) ty_1) in
              (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_bernoulli_LH_P2_1_0 = hy_1 in
                (let rec _lh_bernoulli_LH_P2_0_0 = hx_1 in
                  (fun _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_0 powers_0 -> 
                    (let rec t_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1) in
                      (let rec h_1 = (((sum_lh__d1 (((zipWith_lz_nl_lh__d1 (fun a_2 b_2 -> 
                        (a_2 * b_2))) powers_0) (tail_lh__d2 (tail_lh__d1 _lh_bernoulli_LH_P2_1_0)))) - _lh_bernoulli_LH_P2_0_0) / (_lh_bernoulli_LH_P2_0_0 + 1)) in
                        (fun _lh_dummy_0 -> 
                          (h_1 + (sum_lh__d2 t_1)))))))) in
                (((_lh_listcomp_fun_ls_h_0 _lh_listcomp_fun_ls_t_0) _lh_popOutId_1_1) _lh_popOutId_2_0)))
          | `LH_N -> 
            (fun _lh_dummy_1 -> 
              0))))
  else
    (fun _lh_dummy_2 -> 
      0));;
let rec bernoulli_lh__d1 _lh_bernoulli_arg1_0 =
  (match _lh_bernoulli_arg1_0 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_0 mod 2) = 1) then
        0
      else
        (let rec powers_4 = ((atIndex_lz_lh__d1 (_lh_bernoulli_arg1_0 - 1)) (Lazy.force neg_powers_lh__d1)) in
          (((0 - 1) / 2) + (sum_lh__d2 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
            ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_4) powers_4)) in
            (_lh_listcomp_fun_4 ((zip_nl_lz_lh__d1 ((enumFromTo_lh__d1 2) _lh_bernoulli_arg1_0)) pascal_lh__d1))))))));;
let rec testBernoulli_nofib_lh__d1 _lh_testBernoulli_nofib_arg1_0 =
  (bernoulli_lh__d1 _lh_testBernoulli_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testBernoulli_nofib_lh__d1 1500)));
end;;

