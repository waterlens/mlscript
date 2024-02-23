

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec zip_nl_lz_lh__d1 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(hx_4, tx_4) -> 
      (match (Lazy.force ys_5) with
        | `LH_C(hy_4, ty_4) -> 
          (`LH_C((`LH_P2(hx_4, hy_4)), ((zip_nl_lz_lh__d1 tx_4) ty_4)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec atIndex_lz_lh__d1 n_0 ls_6 =
  (if (n_0 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_6) with
      | `LH_C(h_7, t_7) -> 
        (if (n_0 = 0) then
          h_7
        else
          ((atIndex_lz_lh__d1 (n_0 - 1)) t_7))
      | `LH_N -> 
        (failwith "error")));;
let rec sumAux_lh__d2 ls_2 a_1 =
  (match ls_2 with
    | `LH_N -> 
      a_1
    | `LH_C(h_2, t_2) -> 
      ((sumAux_lh__d2 t_2) (a_1 + h_2)));;
let rec sum_lh__d2 ls_7 =
  ((sumAux_lh__d2 ls_7) 0);;
let rec tail_lh__d1 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_9, t_9) -> 
      t_9
    | `LH_N -> 
      (failwith "error"));;
let rec iterate_lh__d1 f_2 x_0 =
  (lazy (`LH_C(x_0, ((iterate_lh__d1 f_2) (f_2 x_0)))));;
let rec map_lz_lh__d2 f_4 ls_4 =
  (lazy (match (Lazy.force ls_4) with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_4 h_4), ((map_lz_lh__d2 f_4) t_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_lz_lh__d2 f_1 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz_lh__d2 f_1) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_lh__d3 f_0 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_1, t_1) -> 
      (`LH_C((f_0 h_1), ((map_lz_lh__d3 f_0) t_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec enumFrom_lh__d1 a_0 =
  (lazy (`LH_C(a_0, (enumFrom_lh__d1 (a_0 + 1)))));;
let rec head_lz_lh__d1 ls_0 =
  (match (Lazy.force ls_0) with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec powers_lh__d1 =
  (lazy (`LH_C((enumFrom_lh__d1 2), ((map_lz_lh__d3 (fun p_0 -> 
    (((zipWith_lz_lz_lh__d2 (fun a_3 b_0 -> 
      (a_3 * b_0))) (head_lz_lh__d1 powers_lh__d1)) p_0))) powers_lh__d1))));;
let rec zipWith_lz_lz_lh__d1 f_3 xs_1 ys_1 =
  (lazy (match (Lazy.force xs_1) with
    | `LH_C(hx_1, tx_1) -> 
      (match (Lazy.force ys_1) with
        | `LH_C(hy_1, ty_1) -> 
          (`LH_C(((f_3 hx_1) hy_1), (((zipWith_lz_lz_lh__d1 f_3) tx_1) ty_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec neg_powers_lh__d1 =
  (lazy ((map_lz_lh__d2 ((zipWith_lz_lz_lh__d1 (fun n_1 x_1 -> 
    (if n_1 then
      x_1
    else
      (0 - x_1)))) ((iterate_lh__d1 not) true))) powers_lh__d1));;
let rec enumFromTo_lh__d1 a_4 b_1 =
  (if (a_4 <= b_1) then
    (`LH_C(a_4, ((enumFromTo_lh__d1 (a_4 + 1)) b_1)))
  else
    (`LH_N));;
let rec zipWith_lz_nl_lh__d1 f_7 xs_4 ys_4 =
  (match ys_4 with
    | `LH_C(hy_3, ty_3) -> 
      (match (Lazy.force xs_4) with
        | `LH_C(hx_3, tx_3) -> 
          (`LH_C(((f_7 hx_3) hy_3), (((zipWith_lz_nl_lh__d1 f_7) tx_3) ty_3)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d1 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1 t_5) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec map_lz_lh__d1 f_6 ls_5 =
  (lazy (match (Lazy.force ls_5) with
    | `LH_C(h_6, t_6) -> 
      (`LH_C((f_6 h_6), ((map_lz_lh__d1 f_6) t_6)))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lh__d1 f_5 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(hx_2, tx_2) -> 
      (match ys_3 with
        | `LH_C(hy_2, ty_2) -> 
          (`LH_C(((f_5 hx_2) hy_2), (((zipWith_lh__d1 f_5) tx_2) ty_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec pascal_lh__d1 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_lh__d1 (fun line_0 -> 
    (((zipWith_lh__d1 (fun a_5 b_2 -> 
      (a_5 + b_2))) ((mappend_lh__d1 line_0) (`LH_C(0, (`LH_N))))) (`LH_C(0, line_0))))) pascal_lh__d1))));;
let rec tail_lh__d2 ls_9 =
  (match ls_9 with
    | `LH_C(h_8, t_8) -> 
      t_8
    | `LH_N -> 
      (failwith "error"));;
let rec sumAux_lh__d1 ls_3 a_2 =
  (match ls_3 with
    | `LH_N -> 
      a_2
    | `LH_C(h_3, t_3) -> 
      ((sumAux_lh__d1 t_3) (a_2 + h_3)));;
let rec sum_lh__d1 ls_8 =
  ((sumAux_lh__d1 ls_8) 0);;
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
        (let rec powers_0 = ((atIndex_lz_lh__d1 (_lh_bernoulli_arg1_0 - 1)) (Lazy.force neg_powers_lh__d1)) in
          (((0 - 1) / 2) + (sum_lh__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
            (match _lh_listcomp_fun_para_0 with
              | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
                (match _lh_listcomp_fun_ls_h_0 with
                  | `LH_P2(_lh_bernoulli_LH_P2_0_0, _lh_bernoulli_LH_P2_1_0) -> 
                    (`LH_C((((sum_lh__d2 (((zipWith_lz_nl_lh__d1 (fun a_6 b_3 -> 
                      (a_6 * b_3))) powers_0) (tail_lh__d2 (tail_lh__d1 _lh_bernoulli_LH_P2_1_0)))) - _lh_bernoulli_LH_P2_0_0) / (_lh_bernoulli_LH_P2_0_0 + 1)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
                  | _ -> 
                    (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_0 ((zip_nl_lz_lh__d1 ((enumFromTo_lh__d1 2) _lh_bernoulli_arg1_0)) pascal_lh__d1))))))));;
let rec testBernoulli_nofib_lh__d1 _lh_testBernoulli_nofib_arg1_0 =
  (bernoulli_lh__d1 _lh_testBernoulli_nofib_arg1_0);;
let run () = 1 + (Obj.magic ((testBernoulli_nofib_lh__d1 1500)));
end;;

