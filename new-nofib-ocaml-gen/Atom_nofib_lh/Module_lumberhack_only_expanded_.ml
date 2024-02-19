

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end) = struct
let rec dotMult_lh__d1 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (match _lh_dotMult_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_dotMult_arg1_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_dotMult_arg1_0 with
            | `LH_C(_lh_dotMult_LH_C_0_0, _lh_dotMult_LH_C_1_0) -> 
              (match _lh_dotMult_arg2_0 with
                | `LH_C(_lh_dotMult_LH_C_0_1, _lh_dotMult_LH_C_1_1) -> 
                  (`LH_C((_lh_dotMult_LH_C_0_0 *. _lh_dotMult_LH_C_0_1), ((dotMult_lh__d1 _lh_dotMult_LH_C_1_0) _lh_dotMult_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec scalarMut_lh__d1 _lh_scalarMut_arg1_2 _lh_scalarMut_arg2_2 =
  (match _lh_scalarMut_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_2, _lh_scalarMut_LH_C_1_2) -> 
      (`LH_C((_lh_scalarMut_arg1_2 *. _lh_scalarMut_LH_C_0_2), ((scalarMut_lh__d1 _lh_scalarMut_arg1_2) _lh_scalarMut_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec testforce_lh__d1 _lh_testforce_arg1_0 _lh_testforce_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_testforce_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_testforce_LH_C_0_0, _lh_testforce_LH_C_1_0) -> 
        (match _lh_testforce_LH_C_0_0 with
          | `State(_lh_testforce_State_0_0, _lh_testforce_State_1_0) -> 
            (`LH_C(((dotMult_lh__d1 ((scalarMut_lh__d1 (0.0 -. 1.0)) _lh_testforce_arg1_0)) _lh_testforce_State_0_0), ((testforce_lh__d1 _lh_testforce_arg1_0) _lh_testforce_LH_C_1_0)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
let rec mappend_lh__d1 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1 t_5) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec zipWith_lz_lz_lh__d1 f_0 xs_2 ys_2 =
  (lazy (match (Lazy.force xs_2) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_2) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_0 hx_0) hy_0), (((zipWith_lz_lz_lh__d1 f_0) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec dotPlus_lh__d2 _lh_dotPlus_arg1_0 _lh_dotPlus_arg2_0 =
  (match _lh_dotPlus_arg2_0 with
    | `LH_N -> 
      _lh_dotPlus_arg1_0
    | _ -> 
      (match _lh_dotPlus_arg1_0 with
        | `LH_N -> 
          _lh_dotPlus_arg2_0
        | _ -> 
          (match _lh_dotPlus_arg1_0 with
            | `LH_C(_lh_dotPlus_LH_C_0_0, _lh_dotPlus_LH_C_1_0) -> 
              (match _lh_dotPlus_arg2_0 with
                | `LH_C(_lh_dotPlus_LH_C_0_1, _lh_dotPlus_LH_C_1_1) -> 
                  (`LH_C((_lh_dotPlus_LH_C_0_0 +. _lh_dotPlus_LH_C_0_1), ((dotPlus_lh__d2 _lh_dotPlus_LH_C_1_0) _lh_dotPlus_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec scalarMut_lh__d2 _lh_scalarMut_arg1_1 _lh_scalarMut_arg2_1 =
  (match _lh_scalarMut_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_1, _lh_scalarMut_LH_C_1_1) -> 
      (`LH_C((_lh_scalarMut_arg1_1 *. _lh_scalarMut_LH_C_0_1), ((scalarMut_lh__d2 _lh_scalarMut_arg1_1) _lh_scalarMut_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut_lh__d3 _lh_scalarMut_arg1_0 _lh_scalarMut_arg2_0 =
  (match _lh_scalarMut_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_0, _lh_scalarMut_LH_C_1_0) -> 
      (`LH_C((_lh_scalarMut_arg1_0 *. _lh_scalarMut_LH_C_0_0), ((scalarMut_lh__d3 _lh_scalarMut_arg1_0) _lh_scalarMut_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec dotPlus_lh__d1 _lh_dotPlus_arg1_1 _lh_dotPlus_arg2_1 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_2 +. _lh_dotPlus_LH_C_0_3), ((dotPlus_lh__d1 _lh_dotPlus_LH_C_1_2) _lh_dotPlus_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec propagate_lh__d1 _lh_propagate_arg1_0 _lh_propagate_arg2_0 _lh_propagate_arg3_0 =
  (match _lh_propagate_arg3_0 with
    | `State(_lh_propagate_State_0_0, _lh_propagate_State_1_0) -> 
      (`State(((dotPlus_lh__d1 _lh_propagate_State_0_0) ((scalarMut_lh__d3 _lh_propagate_arg1_0) _lh_propagate_State_1_0)), ((dotPlus_lh__d2 _lh_propagate_State_1_0) ((scalarMut_lh__d2 _lh_propagate_arg1_0) _lh_propagate_arg2_0))))
    | _ -> 
      (failwith "error"));;
let rec runExperiment_lh__d1 _lh_runExperiment_arg1_0 _lh_runExperiment_arg2_0 _lh_runExperiment_arg3_0 _lh_runExperiment_arg4_0 =
  (lazy (let rec stream_0 = ((((runExperiment_lh__d1 _lh_runExperiment_arg1_0) _lh_runExperiment_arg2_0) _lh_runExperiment_arg3_0) _lh_runExperiment_arg4_0) in
    (`LH_C(_lh_runExperiment_arg4_0, (((zipWith_lz_lz_lh__d1 (propagate_lh__d1 _lh_runExperiment_arg2_0)) ((_lh_runExperiment_arg1_0 _lh_runExperiment_arg3_0) stream_0)) stream_0)))));;
let rec mappend_lh__d4 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d4 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh__d2 lss_0 =
  (match lss_0 with
    | `LH_C(h_3, t_3) -> 
      ((mappend_lh__d4 h_3) (concat_lh__d2 t_3))
    | `LH_N -> 
      (`LH_N));;
let rec mappend_lh__d2 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d2 t_2) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec show_lh__d1 _lh_show_arg1_0 =
  (match _lh_show_arg1_0 with
    | `State(_lh_show_State_0_0, _lh_show_State_1_0) -> 
      (concat_lh__d2 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (`LH_C(((mappend_lh__d2 (string_of_float _lh_listcomp_fun_ls_h_0)) (`LH_C('t', (`LH_N)))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_show_State_0_0)))
    | _ -> 
      (failwith "error"));;
let rec take_lz_lh__d1 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_6, t_6) -> 
        (`LH_C(h_6, ((take_lz_lh__d1 (n_0 - 1)) t_6)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec mappend_lh__d3 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d3 t_1) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec concat_lh__d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_4, t_4) -> 
      ((mappend_lh__d3 h_4) (concat_lh__d1 t_4))
    | `LH_N -> 
      (`LH_N));;
let rec testAtom_nofib_lh__d1 _lh_testAtom_nofib_arg1_0 =
  (concat_lh__d1 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C(((mappend_lh__d1 (show_lh__d1 _lh_listcomp_fun_ls_h_1)) (`LH_C('n', (`LH_N)))), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 ((take_lz_lh__d1 _lh_testAtom_nofib_arg1_0) ((((runExperiment_lh__d1 testforce_lh__d1) 0.02) (`LH_C(1.0, (`LH_N)))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))));;
end;;

