

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec scalarMut_lh__d1 _lh_scalarMut_arg1_0 _lh_scalarMut_arg2_0 =
  (_lh_scalarMut_arg2_0 _lh_scalarMut_arg1_0);;
let rec scalarMut_lh__d2 _lh_scalarMut_arg1_4 _lh_scalarMut_arg2_1 =
  (_lh_scalarMut_arg2_1 _lh_scalarMut_arg1_4);;
let rec dotMult_lh__d1 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (match _lh_dotMult_arg2_0 with
    | `LH_N -> 
      (fun _lh_scalarMut_arg1_1 -> 
        (`LH_N))
    | _ -> 
      (match _lh_dotMult_arg1_0 with
        | `LH_N -> 
          (fun _lh_scalarMut_arg1_2 -> 
            (`LH_N))
        | _ -> 
          (match _lh_dotMult_arg1_0 with
            | `LH_C(_lh_dotMult_LH_C_0_0, _lh_dotMult_LH_C_1_0) -> 
              (match _lh_dotMult_arg2_0 with
                | `LH_C(_lh_dotMult_LH_C_0_1, _lh_dotMult_LH_C_1_1) -> 
                  (let rec _lh_scalarMut_LH_C_1_0 = ((dotMult_lh__d1 _lh_dotMult_LH_C_1_0) _lh_dotMult_LH_C_1_1) in
                    (let rec _lh_scalarMut_LH_C_0_0 = (_lh_dotMult_LH_C_0_0 *. _lh_dotMult_LH_C_0_1) in
                      (fun _lh_scalarMut_arg1_3 -> 
                        (`LH_C((_lh_scalarMut_arg1_3 *. _lh_scalarMut_LH_C_0_0), ((scalarMut_lh__d2 _lh_scalarMut_arg1_3) _lh_scalarMut_LH_C_1_0))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec zipWith_lz_lz_lh__d1 f_1 xs_4 ys_1_5 =
  (lazy (((Lazy.force xs_4) f_1) ys_1_5));;
let rec testforce_lh__d1 _lh_testforce_arg1_0 _lh_testforce_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_testforce_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_testforce_LH_C_0_0, _lh_testforce_LH_C_1_0) -> 
        (match _lh_testforce_LH_C_0_0 with
          | `State(_lh_testforce_State_0_0, _lh_testforce_State_1_0) -> 
            (let rec tx_0 = ((testforce_lh__d1 _lh_testforce_arg1_0) _lh_testforce_LH_C_1_0) in
              (let rec hx_0 = ((dotMult_lh__d1 ((scalarMut_lh__d1 (0.0 -. 1.0)) _lh_testforce_arg1_0)) _lh_testforce_State_0_0) in
                (fun f_0 ys_1 -> 
                  (match (Lazy.force ys_1) with
                    | `LH_C(hy_0, ty_0) -> 
                      (`LH_C(((f_0 hx_0) hy_0), (((zipWith_lz_lz_lh__d1 f_0) tx_0) ty_0)))
                    | `LH_N -> 
                      (`LH_N)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
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
let rec scalarMut_lh__d3 _lh_scalarMut_arg1_7 _lh_scalarMut_arg2_2 =
  (match _lh_scalarMut_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_2, _lh_scalarMut_LH_C_1_2) -> 
      (`LH_C((_lh_scalarMut_arg1_7 *. _lh_scalarMut_LH_C_0_2), ((scalarMut_lh__d3 _lh_scalarMut_arg1_7) _lh_scalarMut_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
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
let rec propagate_lh__d1 _lh_propagate_arg1_0 _lh_propagate_arg2_0 _lh_propagate_arg3_0 =
  (match _lh_propagate_arg3_0 with
    | `State(_lh_propagate_State_0_0, _lh_propagate_State_1_0) -> 
      (`State(((dotPlus_lh__d1 _lh_propagate_State_0_0) ((scalarMut_lh__d3 _lh_propagate_arg1_0) _lh_propagate_State_1_0)), ((dotPlus_lh__d2 _lh_propagate_State_1_0) ((scalarMut_lh__d2 _lh_propagate_arg1_0) _lh_propagate_arg2_0))))
    | _ -> 
      (failwith "error"));;
let rec runExperiment_lh__d1 _lh_runExperiment_arg1_0 _lh_runExperiment_arg2_0 _lh_runExperiment_arg3_0 _lh_runExperiment_arg4_0 =
  (lazy (let rec stream_0 = ((((runExperiment_lh__d1 _lh_runExperiment_arg1_0) _lh_runExperiment_arg2_0) _lh_runExperiment_arg3_0) _lh_runExperiment_arg4_0) in
    (`LH_C(_lh_runExperiment_arg4_0, (((zipWith_lz_lz_lh__d1 (propagate_lh__d1 _lh_runExperiment_arg2_0)) ((_lh_runExperiment_arg1_0 _lh_runExperiment_arg3_0) stream_0)) stream_0)))));;
let rec mappend_lh__d3 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend_lh__d1 xs_1 ys_2 =
  (xs_1 ys_2);;
let rec concat_lh__d2 lss_0 =
  (lss_0 99);;
let rec mappend_lh__d4 xs_3 ys_1_4 =
  (xs_3 ys_1_4);;
let rec mappend_lh__d2 xs_2 ys_3 =
  (match xs_2 with
    | `LH_C(h_0, t_0) -> 
      (let rec t_1 = ((mappend_lh__d2 t_0) ys_3) in
        (let rec h_1 = h_0 in
          (fun ys_4 -> 
            (let rec t_2 = ((mappend_lh__d4 t_1) ys_4) in
              (let rec h_2 = h_1 in
                (fun ys_5 -> 
                  (let rec t_3 = ((mappend_lh__d1 t_2) ys_5) in
                    (let rec h_3 = h_2 in
                      (fun ys_6 -> 
                        (`LH_C(h_3, ((mappend_lh__d3 t_3) ys_6))))))))))))
    | `LH_N -> 
      ys_3);;
let rec show_lh__d1 _lh_show_arg1_0 =
  (match _lh_show_arg1_0 with
    | `State(_lh_show_State_0_0, _lh_show_State_1_0) -> 
      (concat_lh__d2 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec t_4 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_4 = ((mappend_lh__d2 (string_of_float _lh_listcomp_fun_ls_h_0)) (let rec t_5 = (fun ys_7 -> 
                ys_7) in
                (let rec h_5 = 't' in
                  (fun ys_8 -> 
                    (let rec t_6 = ((mappend_lh__d4 t_5) ys_8) in
                      (let rec h_6 = h_5 in
                        (fun ys_9 -> 
                          (let rec t_7 = ((mappend_lh__d1 t_6) ys_9) in
                            (let rec h_7 = h_6 in
                              (fun ys_1_0 -> 
                                (`LH_C(h_7, ((mappend_lh__d3 t_7) ys_1_0))))))))))))) in
                (fun _lh_dummy_0 -> 
                  ((mappend_lh__d4 h_4) (concat_lh__d2 t_4)))))
          | `LH_N -> 
            (fun _lh_dummy_1 ys_1_1 -> 
              ys_1_1))) in
        (_lh_listcomp_fun_0 _lh_show_State_0_0)))
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d1 lss_1 =
  (lss_1 99);;
let rec take_lz_lh__d1 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_8, t_8) -> 
        (let rec _lh_listcomp_fun_ls_t_1 = ((take_lz_lh__d1 (n_0 - 1)) t_8) in
          (let rec _lh_listcomp_fun_ls_h_1 = h_8 in
            (fun _lh_listcomp_fun_1 -> 
              (let rec t_9 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                (let rec h_9 = ((mappend_lh__d1 (show_lh__d1 _lh_listcomp_fun_ls_h_1)) (let rec t_1_0 = (fun ys_1_2 -> 
                  ys_1_2) in
                  (let rec h_1_0 = 'n' in
                    (fun ys_1_3 -> 
                      (`LH_C(h_1_0, ((mappend_lh__d3 t_1_0) ys_1_3))))))) in
                  (fun _lh_dummy_2 -> 
                    ((mappend_lh__d3 h_9) (concat_lh__d1 t_9))))))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_2 _lh_dummy_3 -> 
          (`LH_N)))
  else
    (fun _lh_listcomp_fun_3 _lh_dummy_4 -> 
      (`LH_N)));;
let rec testAtom_nofib_lh__d1 _lh_testAtom_nofib_arg1_0 =
  (concat_lh__d1 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((take_lz_lh__d1 _lh_testAtom_nofib_arg1_0) ((((runExperiment_lh__d1 testforce_lh__d1) 0.02) (let rec _lh_scalarMut_LH_C_1_1 = (fun _lh_scalarMut_arg1_5 -> 
      (`LH_N)) in
      (let rec _lh_scalarMut_LH_C_0_1 = 1.0 in
        (fun _lh_scalarMut_arg1_6 -> 
          (`LH_C((_lh_scalarMut_arg1_6 *. _lh_scalarMut_LH_C_0_1), ((scalarMut_lh__d1 _lh_scalarMut_arg1_6) _lh_scalarMut_LH_C_1_1))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))));;
let run () = 1 + (Obj.magic ((testAtom_nofib_lh__d1 1000)));
end;;

