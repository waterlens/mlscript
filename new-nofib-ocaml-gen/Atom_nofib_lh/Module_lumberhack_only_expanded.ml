

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec dotMult__d0 _lh_dotMult_arg1_1 _lh_dotMult_arg2_1 =
  (match _lh_dotMult_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_dotMult_arg1_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_dotMult_arg1_1 with
            | `LH_C(_lh_dotMult_LH_C_0_2, _lh_dotMult_LH_C_1_2) -> 
              (match _lh_dotMult_arg2_1 with
                | `LH_C(_lh_dotMult_LH_C_0_3, _lh_dotMult_LH_C_1_3) -> 
                  (`LH_C((_lh_dotMult_LH_C_0_2 *. _lh_dotMult_LH_C_0_3), ((dotMult__d0 _lh_dotMult_LH_C_1_2) _lh_dotMult_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus__d0 _lh_dotPlus_arg1_2 _lh_dotPlus_arg2_2 =
  (match _lh_dotPlus_arg2_2 with
    | `LH_N -> 
      _lh_dotPlus_arg1_2
    | _ -> 
      (match _lh_dotPlus_arg1_2 with
        | `LH_N -> 
          _lh_dotPlus_arg2_2
        | _ -> 
          (match _lh_dotPlus_arg1_2 with
            | `LH_C(_lh_dotPlus_LH_C_0_4, _lh_dotPlus_LH_C_1_4) -> 
              (match _lh_dotPlus_arg2_2 with
                | `LH_C(_lh_dotPlus_LH_C_0_5, _lh_dotPlus_LH_C_1_5) -> 
                  (`LH_C((_lh_dotPlus_LH_C_0_4 +. _lh_dotPlus_LH_C_0_5), ((dotPlus__d0 _lh_dotPlus_LH_C_1_4) _lh_dotPlus_LH_C_1_5)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus__d1 _lh_dotPlus_arg1_1 _lh_dotPlus_arg2_1 =
  (match _lh_dotPlus_arg2_1 with
    | `LH_N -> 
      _lh_dotPlus_arg1_1
    | _ -> 
      (match _lh_dotPlus_arg1_1 with
        | `LH_N -> 
          _lh_dotPlus_arg2_1
        | _ -> 
          (match _lh_dotPlus_arg1_1 with
            | `LH_C(_lh_dotPlus_LH_C_0_2, _lh_dotPlus_LH_C_1_2) -> 
              (match _lh_dotPlus_arg2_1 with
                | `LH_C(_lh_dotPlus_LH_C_0_3, _lh_dotPlus_LH_C_1_3) -> 
                  (`LH_C((_lh_dotPlus_LH_C_0_2 +. _lh_dotPlus_LH_C_0_3), ((dotPlus__d1 _lh_dotPlus_LH_C_1_2) _lh_dotPlus_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mappend__d0 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d0 t_2_6) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d1 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1 t_2_4) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d2 t_2_3) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d3 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d3 t_2_2) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec scalarMut__d0 _lh_scalarMut_arg1_3 _lh_scalarMut_arg2_3 =
  (match _lh_scalarMut_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_3, _lh_scalarMut_LH_C_1_3) -> 
      (`LH_C((_lh_scalarMut_arg1_3 *. _lh_scalarMut_LH_C_0_3), ((scalarMut__d0 _lh_scalarMut_arg1_3) _lh_scalarMut_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut__d1 _lh_scalarMut_arg1_1 _lh_scalarMut_arg2_1 =
  (match _lh_scalarMut_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_1, _lh_scalarMut_LH_C_1_1) -> 
      (`LH_C((_lh_scalarMut_arg1_1 *. _lh_scalarMut_LH_C_0_1), ((scalarMut__d1 _lh_scalarMut_arg1_1) _lh_scalarMut_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut__d2 _lh_scalarMut_arg1_2 _lh_scalarMut_arg2_2 =
  (match _lh_scalarMut_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_2, _lh_scalarMut_LH_C_1_2) -> 
      (`LH_C((_lh_scalarMut_arg1_2 *. _lh_scalarMut_LH_C_0_2), ((scalarMut__d2 _lh_scalarMut_arg1_2) _lh_scalarMut_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec take_lz__d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_6, t_2_8) -> 
        (`LH_C(h_2_6, ((take_lz__d0 (n_4 - 1)) t_2_8)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
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
let rec concat__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      ((mappend__d0 h_2_5) (concat__d0 t_2_7))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      ((mappend__d2 h_2_3) (concat__d1 t_2_5))
    | `LH_N -> 
      (`LH_N))
and propagate__d0 _lh_propagate_arg1_1 _lh_propagate_arg2_1 _lh_propagate_arg3_1 =
  (match _lh_propagate_arg3_1 with
    | `State(_lh_propagate_State_0_1, _lh_propagate_State_1_1) -> 
      (`State(((dotPlus__d0 _lh_propagate_State_0_1) ((scalarMut__d0 _lh_propagate_arg1_1) _lh_propagate_State_1_1)), ((dotPlus__d1 _lh_propagate_State_1_1) ((scalarMut__d1 _lh_propagate_arg1_1) _lh_propagate_arg2_1))))
    | _ -> 
      (failwith "error"))
and runExperiment__d0 _lh_runExperiment_arg1_1 _lh_runExperiment_arg2_1 _lh_runExperiment_arg3_1 _lh_runExperiment_arg4_1 =
  (lazy (let rec stream_1 = ((((runExperiment__d0 _lh_runExperiment_arg1_1) _lh_runExperiment_arg2_1) _lh_runExperiment_arg3_1) _lh_runExperiment_arg4_1) in
    (`LH_C(_lh_runExperiment_arg4_1, (((zipWith_lz_lz__d0 (propagate__d0 _lh_runExperiment_arg2_1)) ((_lh_runExperiment_arg1_1 _lh_runExperiment_arg3_1) stream_1)) stream_1)))))
and show__d0 _lh_show_arg1_1 =
  (match _lh_show_arg1_1 with
    | `State(_lh_show_State_0_1, _lh_show_State_1_1) -> 
      (concat__d1 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
        (match _lh_listcomp_fun_para_3 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (`LH_C(((mappend__d3 (string_of_float _lh_listcomp_fun_ls_h_3)) (`LH_C('t', (`LH_N)))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_3 _lh_show_State_0_1)))
    | _ -> 
      (failwith "error"))
and testAtom_nofib__d0 _lh_testAtom_nofib_arg1_1 =
  (concat__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (`LH_C(((mappend__d1 (show__d0 _lh_listcomp_fun_ls_h_2)) (`LH_C('n', (`LH_N)))), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 ((take_lz__d0 _lh_testAtom_nofib_arg1_1) ((((runExperiment__d0 testforce__d0) 0.02) (`LH_C(1.0, (`LH_N)))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
and testforce__d0 _lh_testforce_arg1_1 _lh_testforce_arg2_1 =
  (lazy (let rec _lh_matchIdent_1 = (Lazy.force _lh_testforce_arg2_1) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_testforce_LH_C_0_1, _lh_testforce_LH_C_1_1) -> 
        (match _lh_testforce_LH_C_0_1 with
          | `State(_lh_testforce_State_0_1, _lh_testforce_State_1_1) -> 
            (`LH_C(((dotMult__d0 ((scalarMut__d2 (0.0 -. 1.0)) _lh_testforce_arg1_1)) _lh_testforce_State_0_1), ((testforce__d0 _lh_testforce_arg1_1) _lh_testforce_LH_C_1_1)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
end;;

