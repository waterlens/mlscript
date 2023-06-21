(*
ocamlfind ocamlopt -rectypes -thread -O3 ./Bernoulli.ml -o "./Bernoulli.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Bernoulli.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

(* original *)
let rec atIndex_lz_d0 n_5 ls_2_0 =
  (if (n_5 < 0) then
    (failwith "error")
  else
    (match (Lazy.force ls_2_0) with
      | `LH_C(h_2_1, t_2_3) -> 
        (if (n_5 = 0) then
          h_2_1
        else
          ((atIndex_lz_d0 (n_5 - 1)) t_2_3))
      | `LH_N -> 
        (failwith "error")));;
let rec enumFromTo_d0 a_7 b_5 =
  (if (a_7 <= b_5) then
    (`LH_C(a_7, ((enumFromTo_d0 (a_7 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFrom_d0 a_9 =
  (lazy (`LH_C(a_9, (enumFrom_d0 (a_9 + 1)))));;
let rec enumFrom_d1 a_8 =
  (lazy (`LH_C(a_8, (enumFrom_d1 (a_8 + 1)))));;
let rec iterate_d0 f_1_5 x_3 =
  (lazy (`LH_C(x_3, ((iterate_d0 f_1_5) (f_1_5 x_3)))));;
let rec map_lz_d0 f_1_9 ls_2_1 =
  (lazy (match (Lazy.force ls_2_1) with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_9 h_2_2), ((map_lz_d0 f_1_9) t_2_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d1 f_1_6 ls_1_8 =
  (lazy (match (Lazy.force ls_1_8) with
    | `LH_C(h_1_9, t_2_1) -> 
      (`LH_C((f_1_6 h_1_9), ((map_lz_d1 f_1_6) t_2_1)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d2 f_1_7 ls_1_9 =
  (lazy (match (Lazy.force ls_1_9) with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_7 h_2_0), ((map_lz_d2 f_1_7) t_2_2)))
    | `LH_N -> 
      (`LH_N)));;
let rec mappend_d0 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend_d0 t_2_6) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec sum_d0 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      (h_2_6 + (sum_d0 t_2_8))
    | `LH_N -> 
      0);;
let rec sum_d1 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (h_2_3 + (sum_d1 t_2_5))
    | `LH_N -> 
      0);;
let rec tail_d0 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_8, t_2_0) -> 
      t_2_0
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_5, t_2_7) -> 
      t_2_7
    | `LH_N -> 
      (failwith "error"));;
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
let rec zipWith_lz_lz_d1 f_1_4 xs_1_1 ys_1_1 =
  (lazy (match (Lazy.force xs_1_1) with
    | `LH_C(hx_1_0, tx_1_0) -> 
      (match (Lazy.force ys_1_1) with
        | `LH_C(hy_1_0, ty_1_0) -> 
          (`LH_C(((f_1_4 hx_1_0) hy_1_0), (((zipWith_lz_lz_d1 f_1_4) tx_1_0) ty_1_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec zipWith_lz_nl_d0 f_1_8 xs_1_2 ys_1_2 =
  (match ys_1_2 with
    | `LH_C(hy_1_1, ty_1_1) -> 
      (match (Lazy.force xs_1_2) with
        | `LH_C(hx_1_1, tx_1_1) -> 
          (`LH_C(((f_1_8 hx_1_1) hy_1_1), (((zipWith_lz_nl_d0 f_1_8) tx_1_1) ty_1_1)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zipWith_d0 f_1_3 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(hx_9, tx_9) -> 
      (match ys_1_0 with
        | `LH_C(hy_9, ty_9) -> 
          (`LH_C(((f_1_3 hx_9) hy_9), (((zipWith_d0 f_1_3) tx_9) ty_9)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec zip_nl_lz_d0 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(hx_1_2, tx_1_2) -> 
      (match (Lazy.force ys_1_3) with
        | `LH_C(hy_1_2, ty_1_2) -> 
          (`LH_C((`LH_P2(hx_1_2, hy_1_2)), ((zip_nl_lz_d0 tx_1_2) ty_1_2)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N));;
let rec bernoulli_d0 _lh_bernoulli_arg1_1 =
  (match _lh_bernoulli_arg1_1 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_1 mod 2) = 1) then
        0
      else
        (let rec powers_2 = ((atIndex_lz_d0 (_lh_bernoulli_arg1_1 - 1)) (Lazy.force neg_powers_d0)) in
          (((0 - 1) / 2) + (sum_d0 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
            (match _lh_listcomp_fun_para_1 with
              | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                (match _lh_listcomp_fun_ls_h_1 with
                  | `LH_P2(_lh_bernoulli_LH_P2_0_1, _lh_bernoulli_LH_P2_1_1) -> 
                    (`LH_C((((sum_d1 (((zipWith_lz_nl_d0 (fun a_1_1 b_7 -> 
                      (a_1_1 * b_7))) powers_2) (tail_d0 (tail_d1 _lh_bernoulli_LH_P2_1_1)))) - _lh_bernoulli_LH_P2_0_1) / (_lh_bernoulli_LH_P2_0_1 + 1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
                  | _ -> 
                    (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
              | `LH_N -> 
                (`LH_N))) in
            (_lh_listcomp_fun_1 ((zip_nl_lz_d0 ((enumFromTo_d0 2) _lh_bernoulli_arg1_1)) pascal_d0))))))))
and neg_powers_d0 =
  (lazy ((map_lz_d0 ((zipWith_lz_lz_d1 (fun n_6 x_4 -> 
    (if n_6 then
      x_4
    else
      (0 - x_4)))) ((iterate_d0 not) true))) powers_d0))
and pascal_d0 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_d2 (fun line_1 -> 
    (((zipWith_d0 (fun a_1_2 b_8 -> 
      (a_1_2 + b_8))) ((mappend_d0 line_1) (`LH_C(0, (`LH_N))))) (`LH_C(0, line_1))))) pascal_d0))))
and powers_d0 =
  (lazy (`LH_C((enumFrom_d0 2), ((map_lz_d1 ((zipWith_lz_lz_d0 (fun a_1_0 b_6 -> 
    (a_1_0 * b_6))) (enumFrom_d1 2))) powers_d0))))
and testBernoulli_d0 _lh_testBernoulli_arg1_1 =
  (bernoulli_d0 _lh_testBernoulli_arg1_1);;

(* lumberhack *)
let rec atIndex_lz_d0_d0 n_3 ls_7 =
  (if (n_3 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_7) n_3));;
let rec enumFrom_d0_d0 a_3 =
  (lazy (`LH_C(a_3, (enumFrom_d0_d0 (a_3 + 1)))));;
let rec map_lz_d1_d0 f_4 ls_2 =
  (lazy (match (Lazy.force ls_2) with
    | `LH_C(h_4, t_4) -> 
      (`LH_C((f_4 h_4), ((map_lz_d1_d0 f_4) t_4)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d2_d0 f_7 ls_5 =
  (lazy (match (Lazy.force ls_5) with
    | `LH_C(h_5, t_5) -> 
      (`LH_C((f_7 h_5), ((map_lz_d2_d0 f_7) t_5)))
    | `LH_N -> 
      (`LH_N)));;
let rec sum_d0_d0 ls_3 =
  ls_3;;
let rec sum_d1_d0 ls_4 =
  ls_4;;
let rec tail_d0_d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_6, t_6) -> 
      t_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      t_0
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz_d0_d0 f_8 xs_4 ys_8 =
  (lazy (((Lazy.force xs_4) ys_8) f_8));;
let rec zipWith_lz_lz_d1_d0 f_5 xs_2 ys_6 =
  (lazy (((Lazy.force xs_2) ys_6) f_5));;
let rec zipWith_lz_nl_d0_d0 f_6 xs_3 ys_7 =
  (match ys_7 with
    | `LH_C(hy_2, ty_2) -> 
      ((((Lazy.force xs_3) hy_2) ty_2) f_6)
    | `LH_N -> 
      0);;
let rec zipWith_d0_d0 f_0 xs_0 ys_0 =
  ((xs_0 ys_0) f_0);;
let rec zip_nl_lz_d0_d0 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec bernoulli_d0_d0 _lh_bernoulli_arg1_0 =
  (match _lh_bernoulli_arg1_0 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_0 mod 2) = 1) then
        0
      else
        (let rec powers_4 = ((atIndex_lz_d0_d0 (_lh_bernoulli_arg1_0 - 1)) (Lazy.force neg_powers_d0_d0)) in
          (((0 - 1) / 2) + (sum_d0_d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
            ((_lh_listcomp_fun_para_0 powers_4) _lh_listcomp_fun_4)) in
            (_lh_listcomp_fun_4 ((zip_nl_lz_d0_d0 ((enumFromTo_d0_d0 2) _lh_bernoulli_arg1_0)) pascal_d0_d0))))))))
and enumFromTo_d0_d0 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec hx_1 = a_1 in
      (let rec tx_1 = ((enumFromTo_d0_d0 (a_1 + 1)) b_1) in
        (fun ys_4 -> 
          (match (Lazy.force ys_4) with
            | `LH_C(hy_1, ty_1) -> 
              (let rec _lh_listcomp_fun_ls_h_0 = (let rec _lh_bernoulli_LH_P2_0_0 = hx_1 in
                (let rec _lh_bernoulli_LH_P2_1_0 = hy_1 in
                  (fun powers_0 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0 -> 
                    (let rec h_1 = (((sum_d1_d0 (((zipWith_lz_nl_d0_d0 (fun a_2 b_2 -> 
                      (a_2 * b_2))) powers_0) (tail_d0_d0 (tail_d1_d0 _lh_bernoulli_LH_P2_1_0)))) - _lh_bernoulli_LH_P2_0_0) / (_lh_bernoulli_LH_P2_0_0 + 1)) in
                      (let rec t_1 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
                        (h_1 + (sum_d0_d0 t_1))))))) in
                (let rec _lh_listcomp_fun_ls_t_1 = ((zip_nl_lz_d0_d0 tx_1) ty_1) in
                  (fun powers_1 _lh_listcomp_fun_1 -> 
                    (((_lh_listcomp_fun_ls_h_0 powers_1) _lh_listcomp_fun_1) _lh_listcomp_fun_ls_t_1))))
            | `LH_N -> 
              (fun powers_2 _lh_listcomp_fun_2 -> 
                0)))))
  else
    (fun ys_5 powers_3 _lh_listcomp_fun_3 -> 
      0))
and enumFrom_d1_d0 a_4 =
  (lazy (let rec hx_3 = a_4 in
    (let rec tx_3 = (enumFrom_d1_d0 (a_4 + 1)) in
      (fun ys_1_1 f_1_0 -> 
        (match (Lazy.force ys_1_1) with
          | `LH_C(hy_4, ty_4) -> 
            (`LH_C(((f_1_0 hx_3) hy_4), (((zipWith_lz_lz_d0_d0 f_1_0) tx_3) ty_4)))
          | `LH_N -> 
            (`LH_N))))))
and iterate_d0_d0 f_1_1 x_1 =
  (lazy (let rec hx_4 = x_1 in
    (let rec tx_4 = ((iterate_d0_d0 f_1_1) (f_1_1 x_1)) in
      (fun ys_1_2 f_1_2 -> 
        (match (Lazy.force ys_1_2) with
          | `LH_C(hy_5, ty_5) -> 
            (let rec hx_5 = ((f_1_2 hx_4) hy_5) in
              (let rec tx_5 = (((zipWith_lz_lz_d1_d0 f_1_2) tx_4) ty_5) in
                (fun hy_6 ty_6 f_1_3 -> 
                  (let rec h_8 = ((f_1_3 hx_5) hy_6) in
                    (let rec t_8 = (((zipWith_lz_nl_d0_d0 f_1_3) tx_5) ty_6) in
                      (h_8 + (sum_d1_d0 t_8)))))))
          | `LH_N -> 
            (fun hy_7 ty_7 f_1_4 -> 
              0))))))
and map_lz_d0_d0 f_3 ls_1 =
  (lazy (match (Lazy.force ls_1) with
    | `LH_C(h_2, t_2) -> 
      (let rec h_3 = (f_3 h_2) in
        (let rec t_3 = ((map_lz_d0_d0 f_3) t_2) in
          (fun n_0 -> 
            (if (n_0 = 0) then
              h_3
            else
              ((atIndex_lz_d0_d0 (n_0 - 1)) t_3)))))
    | `LH_N -> 
      (fun n_1 -> 
        (failwith "error"))))
and mappend_d0_d0 xs_5 ys_9 =
  (match xs_5 with
    | `LH_C(h_7, t_7) -> 
      (let rec hx_2 = h_7 in
        (let rec tx_2 = ((mappend_d0_d0 t_7) ys_9) in
          (fun ys_1_0 f_9 -> 
            (match ys_1_0 with
              | `LH_C(hy_3, ty_3) -> 
                (`LH_C(((f_9 hx_2) hy_3), (((zipWith_d0_d0 f_9) tx_2) ty_3)))
              | `LH_N -> 
                (`LH_N)))))
    | `LH_N -> 
      ys_9)
and neg_powers_d0_d0 =
  (lazy ((map_lz_d0_d0 ((zipWith_lz_lz_d1_d0 (fun n_2 x_0 -> 
    (if n_2 then
      x_0
    else
      (0 - x_0)))) ((iterate_d0_d0 not) true))) powers_d0_d0))
and pascal_d0_d0 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_d2_d0 (fun line_0 -> 
    (((zipWith_d0_d0 (fun a_0 b_0 -> 
      (a_0 + b_0))) ((mappend_d0_d0 line_0) (let rec hx_0 = 0 in
      (let rec tx_0 = (fun ys_2 f_1 -> 
        (`LH_N)) in
        (fun ys_3 f_2 -> 
          (match ys_3 with
            | `LH_C(hy_0, ty_0) -> 
              (`LH_C(((f_2 hx_0) hy_0), (((zipWith_d0_d0 f_2) tx_0) ty_0)))
            | `LH_N -> 
              (`LH_N))))))) (`LH_C(0, line_0))))) pascal_d0_d0))))
and powers_d0_d0 =
  (lazy (`LH_C((enumFrom_d0_d0 2), ((map_lz_d1_d0 ((zipWith_lz_lz_d0_d0 (fun a_5 b_3 -> 
    (a_5 * b_3))) (enumFrom_d1_d0 2))) powers_d0_d0))))
and testBernoulli_d0_d0 _lh_testBernoulli_arg1_0 =
  (bernoulli_d0_d0 _lh_testBernoulli_arg1_0);;

(* lumberhack_pop_out *)
let rec atIndex_lz_d0_d0_d0 n_8 ls_1_3 =
  (if (n_8 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_1_3) n_8));;
let rec atIndex_lz_d0_d0_d1 n_7 ls_1_2 =
  (if (n_7 < 0) then
    (failwith "error")
  else
    ((Lazy.force ls_1_2) n_7));;
let rec enumFrom_d0_d0_d0 a_6 =
  (lazy (`LH_C(a_6, (enumFrom_d0_d0_d0 (a_6 + 1)))));;
let rec map_lz_d1_d0_d0 f_1_5 ls_8 =
  (lazy (match (Lazy.force ls_8) with
    | `LH_C(h_9, t_9) -> 
      (`LH_C((f_1_5 h_9), ((map_lz_d1_d0_d0 f_1_5) t_9)))
    | `LH_N -> 
      (`LH_N)));;
let rec map_lz_d2_d0_d0 f_1_9 ls_1_0 =
  (lazy (match (Lazy.force ls_1_0) with
    | `LH_C(h_1_3, t_1_3) -> 
      (`LH_C((f_1_9 h_1_3), ((map_lz_d2_d0_d0 f_1_9) t_1_3)))
    | `LH_N -> 
      (`LH_N)));;
let rec sum_d0_d0_d0 ls_1_8 =
  ls_1_8;;
let rec sum_d0_d0_d1 ls_1_5 =
  ls_1_5;;
let rec sum_d1_d0_d0 ls_1_1 =
  ls_1_1;;
let rec sum_d1_d0_d1 ls_1_4 =
  ls_1_4;;
let rec tail_d0_d0_d0 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_1_6, t_1_6) -> 
      t_1_6
    | `LH_N -> 
      (failwith "error"));;
let rec tail_d1_d0_d0 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      t_1_7
    | `LH_N -> 
      (failwith "error"));;
let rec zipWith_lz_lz_d0_d0_d0 f_2_6 xs_1_4 ys_2_5 =
  (lazy (((Lazy.force xs_1_4) ys_2_5) f_2_6));;
let rec zipWith_lz_lz_d0_d0_d1 f_2_0 xs_9 ys_1_8 =
  (lazy (((Lazy.force xs_9) ys_1_8) f_2_0));;
let rec zipWith_lz_lz_d1_d0_d0 f_2_5 xs_1_2 ys_2_3 =
  (lazy (((Lazy.force xs_1_2) ys_2_3) f_2_5));;
let rec zipWith_lz_lz_d1_d0_d1 f_1_7 xs_7 ys_1_4 =
  (lazy (((Lazy.force xs_7) ys_1_4) f_1_7));;
let rec zipWith_lz_nl_d0_d0_d0 f_1_8 xs_8 ys_1_7 =
  (match ys_1_7 with
    | `LH_C(hy_9, ty_9) -> 
      ((((Lazy.force xs_8) hy_9) ty_9) f_1_8)
    | `LH_N -> 
      0);;
let rec zipWith_lz_nl_d0_d0_d1 f_2_4 xs_1_1 ys_2_2 =
  (match ys_2_2 with
    | `LH_C(hy_1_1, ty_1_1) -> 
      ((((Lazy.force xs_1_1) hy_1_1) ty_1_1) f_2_4)
    | `LH_N -> 
      0);;
let rec zipWith_d0_d0_d0 f_2_7 xs_1_5 ys_2_6 =
  ((xs_1_5 ys_2_6) f_2_7);;
let rec zipWith_d0_d0_d1 f_2_1 xs_1_0 ys_1_9 =
  ((xs_1_0 ys_1_9) f_2_1);;
let rec zipWith_d0_d0_d2 f_3_4 xs_1_7 ys_3_1 =
  ((xs_1_7 ys_3_1) f_3_4);;
let rec zip_nl_lz_d0_d0_d0 xs_6 ys_1_3 =
  (xs_6 ys_1_3);;
let rec zip_nl_lz_d0_d0_d1 xs_1_3 ys_2_4 =
  (xs_1_3 ys_2_4);;
let rec bernoulli_d0_d0_d0 _lh_bernoulli_arg1_1 =
  (match _lh_bernoulli_arg1_1 with
    | 0 -> 
      1
    | 1 -> 
      (0 - (1 / 2))
    | _ -> 
      (if ((_lh_bernoulli_arg1_1 mod 2) = 1) then
        0
      else
        (let rec powers_5 = ((atIndex_lz_d0_d0_d0 (_lh_bernoulli_arg1_1 - 1)) (Lazy.force neg_powers_d0_d0_d0)) in
          (((0 - 1) / 2) + (sum_d0_d0_d1 (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
            ((_lh_listcomp_fun_para_1 powers_5) _lh_listcomp_fun_5)) in
            (_lh_listcomp_fun_5 ((zip_nl_lz_d0_d0_d1 ((enumFromTo_d0_d0_d0 2) _lh_bernoulli_arg1_1)) pascal_d0_d0_d0))))))))
and enumFromTo_d0_d0_d0 a_7 b_4 _lh_popOutId_0_1 _lh_popOutId_1_1 _lh_popOutId_2_0 =
  (if (a_7 <= b_4) then
    (let rec hx_6 = a_7 in
      (let rec tx_6 = ((enumFromTo_d0_d0_d0 (a_7 + 1)) b_4) in
        (match (Lazy.force _lh_popOutId_0_1) with
          | `LH_C(hy_8, ty_8) -> 
            (let rec _lh_listcomp_fun_ls_h_1 = (let rec _lh_bernoulli_LH_P2_0_1 = hx_6 in
              (let rec _lh_bernoulli_LH_P2_1_1 = hy_8 in
                (fun powers_6 _lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2 -> 
                  (let rec h_1_2 = (((sum_d1_d0_d0 (((zipWith_lz_nl_d0_d0_d0 (fun a_8 b_5 -> 
                    (a_8 * b_5))) powers_6) (tail_d0_d0_d0 (tail_d1_d0_d0 _lh_bernoulli_LH_P2_1_1)))) - _lh_bernoulli_LH_P2_0_1) / (_lh_bernoulli_LH_P2_0_1 + 1)) in
                    (let rec t_1_2 = (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2) in
                      (h_1_2 + (sum_d0_d0_d0 t_1_2))))))) in
              (let rec _lh_listcomp_fun_ls_t_3 = ((zip_nl_lz_d0_d0_d0 tx_6) ty_8) in
                (((_lh_listcomp_fun_ls_h_1 _lh_popOutId_1_1) _lh_popOutId_2_0) _lh_listcomp_fun_ls_t_3)))
          | `LH_N -> 
            0)))
  else
    0)
and enumFrom_d1_d0_d0 a_1_1 =
  (lazy (let rec hx_1_1 = a_1_1 in
    (let rec tx_1_1 = (enumFrom_d1_d0_d0 (a_1_1 + 1)) in
      (fun ys_3_0 f_3_3 -> 
        (match (Lazy.force ys_3_0) with
          | `LH_C(hy_1_6, ty_1_6) -> 
            (`LH_C(((f_3_3 hx_1_1) hy_1_6), (((zipWith_lz_lz_d0_d0_d0 f_3_3) tx_1_1) ty_1_6)))
          | `LH_N -> 
            (`LH_N))))))
and iterate_d0_d0_d0 f_2_8 x_3 =
  (lazy (let rec hx_8 = x_3 in
    (let rec tx_8 = ((iterate_d0_d0_d0 f_2_8) (f_2_8 x_3)) in
      (fun ys_2_7 f_2_9 -> 
        (match (Lazy.force ys_2_7) with
          | `LH_C(hy_1_2, ty_1_2) -> 
            (let rec hx_9 = ((f_2_9 hx_8) hy_1_2) in
              (let rec tx_9 = (((zipWith_lz_lz_d1_d0_d0 f_2_9) tx_8) ty_1_2) in
                (fun hy_1_3 ty_1_3 f_3_0 -> 
                  (let rec h_1_4 = ((f_3_0 hx_9) hy_1_3) in
                    (let rec t_1_4 = (((zipWith_lz_nl_d0_d0_d1 f_3_0) tx_9) ty_1_3) in
                      (h_1_4 + (sum_d1_d0_d1 t_1_4)))))))
          | `LH_N -> 
            (fun hy_1_4 ty_1_4 f_3_1 -> 
              0))))))
and map_lz_d0_d0_d0 f_1_6 ls_9 =
  (lazy (match (Lazy.force ls_9) with
    | `LH_C(h_1_0, t_1_0) -> 
      (let rec h_1_1 = (f_1_6 h_1_0) in
        (let rec t_1_1 = ((map_lz_d0_d0_d0 f_1_6) t_1_0) in
          (fun n_4 -> 
            (if (n_4 = 0) then
              h_1_1
            else
              ((atIndex_lz_d0_d0_d1 (n_4 - 1)) t_1_1)))))
    | `LH_N -> 
      (fun n_5 -> 
        (failwith "error"))))
and mappend_d0_d0_d0 xs_1_6 ys_2_8 =
  (match xs_1_6 with
    | `LH_C(h_1_5, t_1_5) -> 
      (let rec hx_1_0 = h_1_5 in
        (let rec tx_1_0 = ((mappend_d0_d0_d0 t_1_5) ys_2_8) in
          (fun ys_2_9 f_3_2 -> 
            (match ys_2_9 with
              | `LH_C(hy_1_5, ty_1_5) -> 
                (`LH_C(((f_3_2 hx_1_0) hy_1_5), (((zipWith_d0_d0_d0 f_3_2) tx_1_0) ty_1_5)))
              | `LH_N -> 
                (`LH_N)))))
    | `LH_N -> 
      ys_2_8)
and neg_powers_d0_d0_d0 =
  (lazy ((map_lz_d0_d0_d0 ((zipWith_lz_lz_d1_d0_d1 (fun n_6 x_2 -> 
    (if n_6 then
      x_2
    else
      (0 - x_2)))) ((iterate_d0_d0_d0 not) true))) powers_d0_d0_d0))
and pascal_d0_d0_d0 =
  (lazy (`LH_C((`LH_C(1, (`LH_C(2, (`LH_C(1, (`LH_N))))))), ((map_lz_d2_d0_d0 (fun line_1 -> 
    (((zipWith_d0_d0_d1 (fun a_1_0 b_7 -> 
      (a_1_0 + b_7))) ((mappend_d0_d0_d0 line_1) (let rec hx_7 = 0 in
      (let rec tx_7 = (fun ys_2_0 f_2_2 -> 
        (`LH_N)) in
        (fun ys_2_1 f_2_3 -> 
          (match ys_2_1 with
            | `LH_C(hy_1_0, ty_1_0) -> 
              (`LH_C(((f_2_3 hx_7) hy_1_0), (((zipWith_d0_d0_d2 f_2_3) tx_7) ty_1_0)))
            | `LH_N -> 
              (`LH_N))))))) (`LH_C(0, line_1))))) pascal_d0_d0_d0))))
and powers_d0_d0_d0 =
  (lazy (`LH_C((enumFrom_d0_d0_d0 2), ((map_lz_d1_d0_d0 ((zipWith_lz_lz_d0_d0_d1 (fun a_9 b_6 -> 
    (a_9 * b_6))) (enumFrom_d1_d0_d0 2))) powers_d0_d0_d0))))
and testBernoulli_d0_d0_d0 _lh_testBernoulli_arg1_1 =
  (bernoulli_d0_d0_d0 _lh_testBernoulli_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Bernoulli" (fun () -> ignore ((testBernoulli_d0 1500)));
  Bench.Test.create ~name:"lumberhack_Bernoulli" (fun () -> ignore ((testBernoulli_d0_d0 1500)));
  Bench.Test.create ~name:"lumberhack_pop_out_Bernoulli" (fun () -> ignore ((testBernoulli_d0_d0_d0 1500)));
])
