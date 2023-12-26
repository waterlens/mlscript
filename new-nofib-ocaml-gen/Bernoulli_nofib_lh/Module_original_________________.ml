
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________ = struct
let rec zipWith_lz_nl_lh f_2 xs_2 ys_2 =
  (match ys_2 with
    | `LH_C(hy_2, ty_2) -> 
      (match (Lazy.force xs_2) with
        | `LH_C(hx_2, tx_2) -> 
          (`LH_C(((f_2 hx_2) hy_2), (((zipWith_lz_nl_lh f_2) tx_2) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lz_lh f_0 ls_0 =
  (lazy (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lz_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N)));;
let rec mappend_lh xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh t_3) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec zipWith_lh f_1 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(hx_1, tx_1) -> 
      (match ys_1 with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_1 hx_1) hy_1), (((zipWith_lh f_1) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec pascal_lh =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_lh (fun line_0 -> 
    (((zipWith_lh (fun a_2 b_1 -> 
      (a_2 + b_1))) ((mappend_lh line_0) (`LH_C(0, (`LH_N))))) (`LH_C(0, line_0))))) pascal_lh))));;
let rec zipWith_lz_lz_lh f_3 xs_3 ys_3 =
  (lazy (match (Lazy.force xs_3) with
    | `LH_C(hx_3, tx_3) -> 
      (match (Lazy.force ys_3) with
        | `LH_C(hy_3, ty_3) -> 
          (`LH_C(((f_3 hx_3) hy_3), (((zipWith_lz_lz_lh f_3) tx_3) ty_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec iterate_lh f_4 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh f_4) (f_4 x_0)))));;
let rec head_lz_lh ls_1 =
  (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      h_1
    | `LH_N -> 
      (failwith "error"));;
let rec enumFrom_lh a_1 =
  (lazy (`LH_C(a_1, (enumFrom_lh (a_1 + 1)))));;
let rec powers_lh =
  (lazy (`LH_C((enumFrom_lh 2), ((map_lz_lh (fun p_0 -> 
    (((zipWith_lz_lz_lh (fun a_4 b_3 -> 
      (a_4 * b_3))) (head_lz_lh powers_lh)) p_0))) powers_lh))));;
let rec neg_powers_lh =
  (lazy ((map_lz_lh ((zipWith_lz_lz_lh (fun n_1 x_1 -> 
    (if n_1 then
      x_1
    else
      (0 - x_1)))) ((iterate_lh not) true))) powers_lh));;
let rec tail_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      t_2
    | `LH_N -> 
      (failwith "error"));;
let rec zip_nl_lz_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C((`LH_P2(hx_0, hy_0)), ((zip_nl_lz_lh tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec atIndex_lz_lh n_0 ls_4 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_4) with
      | `LH_C(h_5, t_5) -> 
        (if (n_0 = 0) then
          h_5
        else
          ((atIndex_lz_lh (n_0 - 1)) t_5))
      | `LH_N -> 
        (failwith "error")));;
let rec sum_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (h_4 + (sum_lh t_4))
    | `LH_N -> 
      0);;
let rec bernoulli_lh _lh_bernoulli_arg1_0 =
  (match _lh_bernoulli_arg1_0 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_0 mod 2) = 1) then
        0
      else
        (let rec powers_0 = ((atIndex_lz_lh (_lh_bernoulli_arg1_0 - 1)) (Lazy.force neg_powers_lh)) in
          (((0 - 1) / 2) + (sum_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_P2(_lh_bernoulli_LH_P2_0_0, _lh_bernoulli_LH_P2_1_0) -> 
                    (`LH_C((((sum_lh (((zipWith_lz_nl_lh (fun a_3 b_2 -> 
                      (a_3 * b_2))) powers_0) (tail_lh (tail_lh _lh_bernoulli_LH_P2_1_0)))) - _lh_bernoulli_LH_P2_0_0) / (_lh_bernoulli_LH_P2_0_0 + 1)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_0 ((zip_nl_lz_lh ((enumFromTo_lh 2) _lh_bernoulli_arg1_0)) pascal_lh))))))));;
let rec testBernoulli_nofib_lh _lh_testBernoulli_nofib_arg1_0 =
  (bernoulli_lh _lh_testBernoulli_nofib_arg1_0);;
end;;

