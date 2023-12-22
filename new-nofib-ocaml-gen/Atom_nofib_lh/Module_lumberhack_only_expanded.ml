

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec take_lz_lh n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_0, t_0) -> 
        (`LH_C(h_0, ((take_lz_lh (n_0 - 1)) t_0)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec scalarMut_lh _lh_scalarMut_arg1_0 _lh_scalarMut_arg2_0 =
  (match _lh_scalarMut_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_0, _lh_scalarMut_LH_C_1_0) -> 
      (`LH_C((_lh_scalarMut_arg1_0 *. _lh_scalarMut_LH_C_0_0), ((scalarMut_lh _lh_scalarMut_arg1_0) _lh_scalarMut_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec dotPlus_lh _lh_dotPlus_arg1_0 _lh_dotPlus_arg2_0 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_0 +. _lh_dotPlus_LH_C_0_1), ((dotPlus_lh _lh_dotPlus_LH_C_1_0) _lh_dotPlus_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec zipWith_lz_lz_lh f_0 xs_0 ys_0 =
  (lazy (match (Lazy.force xs_0) with
    | `LH_C(hx_0, tx_0) -> 
      (match (Lazy.force ys_0) with
        | `LH_C(hy_0, ty_0) -> 
          (`LH_C(((f_0 hx_0) hy_0), (((zipWith_lz_lz_lh f_0) tx_0) ty_0)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec mappend_lh xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh t_1) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec dotMult_lh _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
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
                  (`LH_C((_lh_dotMult_LH_C_0_0 *. _lh_dotMult_LH_C_0_1), ((dotMult_lh _lh_dotMult_LH_C_1_0) _lh_dotMult_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec propagate_lh _lh_propagate_arg1_0 _lh_propagate_arg2_0 _lh_propagate_arg3_0 =
  (match _lh_propagate_arg3_0 with
    | `State(_lh_propagate_State_0_0, _lh_propagate_State_1_0) -> 
      (`State(((dotPlus_lh _lh_propagate_State_0_0) ((scalarMut_lh _lh_propagate_arg1_0) _lh_propagate_State_1_0)), ((dotPlus_lh _lh_propagate_State_1_0) ((scalarMut_lh _lh_propagate_arg1_0) _lh_propagate_arg2_0))))
    | _ -> 
      (failwith "error"));;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_2, t_2) -> 
      ((mappend_lh h_2) (concat_lh t_2))
    | `LH_N -> 
      (`LH_N));;
let rec testforce_lh _lh_testforce_arg1_0 _lh_testforce_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_testforce_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_testforce_LH_C_0_0, _lh_testforce_LH_C_1_0) -> 
        (match _lh_testforce_LH_C_0_0 with
          | `State(_lh_testforce_State_0_0, _lh_testforce_State_1_0) -> 
            (`LH_C(((dotMult_lh ((scalarMut_lh (0.0 -. 1.0)) _lh_testforce_arg1_0)) _lh_testforce_State_0_0), ((testforce_lh _lh_testforce_arg1_0) _lh_testforce_LH_C_1_0)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
let rec runExperiment_lh _lh_runExperiment_arg1_0 _lh_runExperiment_arg2_0 _lh_runExperiment_arg3_0 _lh_runExperiment_arg4_0 =
  (lazy (let rec stream_0 = ((((runExperiment_lh _lh_runExperiment_arg1_0) _lh_runExperiment_arg2_0) _lh_runExperiment_arg3_0) _lh_runExperiment_arg4_0) in
    (`LH_C(_lh_runExperiment_arg4_0, (((zipWith_lz_lz_lh (propagate_lh _lh_runExperiment_arg2_0)) ((_lh_runExperiment_arg1_0 _lh_runExperiment_arg3_0) stream_0)) stream_0)))));;
let rec show_lh _lh_show_arg1_0 =
  (match _lh_show_arg1_0 with
    | `State(_lh_show_State_0_0, _lh_show_State_1_0) -> 
      (concat_lh (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (`LH_C(((mappend_lh (string_of_float _lh_listcomp_fun_ls_h_0)) (`LH_C('t', (`LH_N)))), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_show_State_0_0)))
    | _ -> 
      (failwith "error"));;
let rec testAtom_nofib_lh _lh_testAtom_nofib_arg1_0 =
  (concat_lh (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (match _lh_listcomp_fun_para_1 with
      | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
        (`LH_C(((mappend_lh (show_lh _lh_listcomp_fun_ls_h_1)) (`LH_C('n', (`LH_N)))), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_1 ((take_lz_lh _lh_testAtom_nofib_arg1_0) ((((runExperiment_lh testforce_lh) 0.02) (`LH_C(1.0, (`LH_N)))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))));;
end;;

