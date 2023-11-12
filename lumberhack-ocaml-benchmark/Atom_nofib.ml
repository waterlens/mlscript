(*
touch ./Atom_nofib.mli && ocamlc ./Atom_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Atom_nofib.ml -o "./Atom_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Atom_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
*)
(* #use "topfind";;
#require "core_unix.command_unix";;
#require "core_bench";; *)
open Core_bench;;

let explode_string s = List.init (String.length s) (String.get s);;
let rec listToTaggedList s = match s with
  | h::t -> `LH_C(h, listToTaggedList(t))
  | [] -> `LH_N;;
let string_of_int i = listToTaggedList (explode_string (string_of_int i));;
let string_of_float f = listToTaggedList (explode_string (string_of_float f))

(* original *)
module Module_original = struct
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
let rec dotPlus__d0 _lh_dotPlus_arg1_1 _lh_dotPlus_arg2_1 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_2 +. _lh_dotPlus_LH_C_0_3), ((dotPlus__d0 _lh_dotPlus_LH_C_1_2) _lh_dotPlus_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus__d1 _lh_dotPlus_arg1_2 _lh_dotPlus_arg2_2 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_4 +. _lh_dotPlus_LH_C_0_5), ((dotPlus__d1 _lh_dotPlus_LH_C_1_4) _lh_dotPlus_LH_C_1_5)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d0 t_2_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend__d1 t_2_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d2 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d3 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec scalarMut__d0 _lh_scalarMut_arg1_2 _lh_scalarMut_arg2_2 =
  (match _lh_scalarMut_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_2, _lh_scalarMut_LH_C_1_2) -> 
      (`LH_C((_lh_scalarMut_arg1_2 *. _lh_scalarMut_LH_C_0_2), ((scalarMut__d0 _lh_scalarMut_arg1_2) _lh_scalarMut_LH_C_1_2)))
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
let rec scalarMut__d2 _lh_scalarMut_arg1_3 _lh_scalarMut_arg2_3 =
  (match _lh_scalarMut_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_3, _lh_scalarMut_LH_C_1_3) -> 
      (`LH_C((_lh_scalarMut_arg1_3 *. _lh_scalarMut_LH_C_0_3), ((scalarMut__d2 _lh_scalarMut_arg1_3) _lh_scalarMut_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec take_lz__d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_1, t_2_3) -> 
        (`LH_C(h_2_1, ((take_lz__d0 (n_4 - 1)) t_2_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zipWith_lz_lz__d0 f_1_2 xs_1_2 ys_1_2 =
  (lazy (match (Lazy.force xs_1_2) with
    | `LH_C(hx_8, tx_8) -> 
      (match (Lazy.force ys_1_2) with
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
    | `LH_C(h_2_4, t_2_6) -> 
      ((mappend__d2 h_2_4) (concat__d1 t_2_6))
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
      (concat__d1 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (`LH_C(((mappend__d3 (string_of_float _lh_listcomp_fun_ls_h_2)) (`LH_C('t', (`LH_N)))), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 _lh_show_State_0_1)))
    | _ -> 
      (failwith "error"))
and testAtom_nofib__d0 _lh_testAtom_nofib_arg1_1 =
  (concat__d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (`LH_C(((mappend__d1 (show__d0 _lh_listcomp_fun_ls_h_3)) (`LH_C('n', (`LH_N)))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 ((take_lz__d0 _lh_testAtom_nofib_arg1_1) ((((runExperiment__d0 testforce__d0) 0.02) (`LH_C(1.0, (`LH_N)))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
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


(* lumberhack *)
module Module_lumberhack = struct
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec dotPlus__d0 _lh_dotPlus_arg1_0 _lh_dotPlus_arg2_0 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_0 +. _lh_dotPlus_LH_C_0_1), ((dotPlus__d0 _lh_dotPlus_LH_C_1_0) _lh_dotPlus_LH_C_1_1)))
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
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d1 xs_3 ys_1_3 =
  (xs_3 ys_1_3);;
let rec mappend__d2 xs_4 ys_1_4 =
  (xs_4 ys_1_4);;
let rec scalarMut__d0 _lh_scalarMut_arg1_0 _lh_scalarMut_arg2_0 =
  (match _lh_scalarMut_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_0, _lh_scalarMut_LH_C_1_0) -> 
      (`LH_C((_lh_scalarMut_arg1_0 *. _lh_scalarMut_LH_C_0_0), ((scalarMut__d0 _lh_scalarMut_arg1_0) _lh_scalarMut_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut__d1 _lh_scalarMut_arg1_1 _lh_scalarMut_arg2_1 =
  (_lh_scalarMut_arg2_1 _lh_scalarMut_arg1_1);;
let rec scalarMut__d2 _lh_scalarMut_arg1_7 _lh_scalarMut_arg2_2 =
  (_lh_scalarMut_arg2_2 _lh_scalarMut_arg1_7);;
let rec zipWith_lz_lz__d0 f_0 xs_1 ys_6 =
  (lazy (((Lazy.force xs_1) f_0) ys_6));;
let rec dotMult__d0 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (match _lh_dotMult_arg2_0 with
    | `LH_N -> 
      (fun _lh_scalarMut_arg1_2 -> 
        (`LH_N))
    | _ -> 
      (match _lh_dotMult_arg1_0 with
        | `LH_N -> 
          (fun _lh_scalarMut_arg1_3 -> 
            (`LH_N))
        | _ -> 
          (match _lh_dotMult_arg1_0 with
            | `LH_C(_lh_dotMult_LH_C_0_0, _lh_dotMult_LH_C_1_0) -> 
              (match _lh_dotMult_arg2_0 with
                | `LH_C(_lh_dotMult_LH_C_0_1, _lh_dotMult_LH_C_1_1) -> 
                  (let rec _lh_scalarMut_LH_C_1_1 = ((dotMult__d0 _lh_dotMult_LH_C_1_0) _lh_dotMult_LH_C_1_1) in
                    (let rec _lh_scalarMut_LH_C_0_1 = (_lh_dotMult_LH_C_0_0 *. _lh_dotMult_LH_C_0_1) in
                      (fun _lh_scalarMut_arg1_4 -> 
                        (`LH_C((_lh_scalarMut_arg1_4 *. _lh_scalarMut_LH_C_0_1), ((scalarMut__d1 _lh_scalarMut_arg1_4) _lh_scalarMut_LH_C_1_1))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and mappend__d3 xs_2 ys_7 =
  (match xs_2 with
    | `LH_C(h_4, t_4) -> 
      (let rec t_5 = ((mappend__d3 t_4) ys_7) in
        (let rec h_5 = h_4 in
          (fun ys_8 -> 
            (let rec t_6 = ((mappend__d2 t_5) ys_8) in
              (let rec h_6 = h_5 in
                (fun ys_9 -> 
                  (let rec t_7 = ((mappend__d1 t_6) ys_9) in
                    (let rec h_7 = h_6 in
                      (fun ys_1_0 -> 
                        (`LH_C(h_7, ((mappend__d0 t_7) ys_1_0))))))))))))
    | `LH_N -> 
      ys_7)
and propagate__d0 _lh_propagate_arg1_0 _lh_propagate_arg2_0 _lh_propagate_arg3_0 =
  (match _lh_propagate_arg3_0 with
    | `State(_lh_propagate_State_0_0, _lh_propagate_State_1_0) -> 
      (`State(((dotPlus__d0 _lh_propagate_State_0_0) ((scalarMut__d0 _lh_propagate_arg1_0) _lh_propagate_State_1_0)), ((dotPlus__d1 _lh_propagate_State_1_0) ((scalarMut__d1 _lh_propagate_arg1_0) _lh_propagate_arg2_0))))
    | _ -> 
      (failwith "error"))
and runExperiment__d0 _lh_runExperiment_arg1_0 _lh_runExperiment_arg2_0 _lh_runExperiment_arg3_0 _lh_runExperiment_arg4_0 =
  (lazy (let rec stream_0 = ((((runExperiment__d0 _lh_runExperiment_arg1_0) _lh_runExperiment_arg2_0) _lh_runExperiment_arg3_0) _lh_runExperiment_arg4_0) in
    (`LH_C(_lh_runExperiment_arg4_0, (((zipWith_lz_lz__d0 (propagate__d0 _lh_runExperiment_arg2_0)) ((_lh_runExperiment_arg1_0 _lh_runExperiment_arg3_0) stream_0)) stream_0)))))
and show__d0 _lh_show_arg1_0 =
  (match _lh_show_arg1_0 with
    | `State(_lh_show_State_0_0, _lh_show_State_1_0) -> 
      (concat__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_0 = ((mappend__d3 (string_of_float _lh_listcomp_fun_ls_h_0)) (let rec t_1 = (fun ys_1 -> 
                ys_1) in
                (let rec h_1 = 't' in
                  (fun ys_2 -> 
                    (let rec t_2 = ((mappend__d2 t_1) ys_2) in
                      (let rec h_2 = h_1 in
                        (fun ys_3 -> 
                          (let rec t_3 = ((mappend__d1 t_2) ys_3) in
                            (let rec h_3 = h_2 in
                              (fun ys_4 -> 
                                (`LH_C(h_3, ((mappend__d0 t_3) ys_4))))))))))))) in
                (fun _lh_dummy_0 -> 
                  ((mappend__d2 h_0) (concat__d1 t_0)))))
          | `LH_N -> 
            (fun _lh_dummy_1 ys_5 -> 
              ys_5))) in
        (_lh_listcomp_fun_0 _lh_show_State_0_0)))
    | _ -> 
      (failwith "error"))
and take_lz__d0 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_8, t_8) -> 
        (let rec _lh_listcomp_fun_ls_t_1 = ((take_lz__d0 (n_0 - 1)) t_8) in
          (let rec _lh_listcomp_fun_ls_h_1 = h_8 in
            (fun _lh_listcomp_fun_1 -> 
              (let rec t_9 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                (let rec h_9 = ((mappend__d1 (show__d0 _lh_listcomp_fun_ls_h_1)) (let rec t_1_0 = (fun ys_1_1 -> 
                  ys_1_1) in
                  (let rec h_1_0 = 'n' in
                    (fun ys_1_2 -> 
                      (`LH_C(h_1_0, ((mappend__d0 t_1_0) ys_1_2))))))) in
                  (fun _lh_dummy_2 -> 
                    ((mappend__d0 h_9) (concat__d0 t_9))))))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_2 _lh_dummy_3 -> 
          (`LH_N)))
  else
    (fun _lh_listcomp_fun_3 _lh_dummy_4 -> 
      (`LH_N)))
and testAtom_nofib__d0 _lh_testAtom_nofib_arg1_0 =
  (concat__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((take_lz__d0 _lh_testAtom_nofib_arg1_0) ((((runExperiment__d0 testforce__d0) 0.02) (let rec _lh_scalarMut_LH_C_1_2 = (fun _lh_scalarMut_arg1_5 -> 
      (`LH_N)) in
      (let rec _lh_scalarMut_LH_C_0_2 = 1.0 in
        (fun _lh_scalarMut_arg1_6 -> 
          (`LH_C((_lh_scalarMut_arg1_6 *. _lh_scalarMut_LH_C_0_2), ((scalarMut__d2 _lh_scalarMut_arg1_6) _lh_scalarMut_LH_C_1_2))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
and testforce__d0 _lh_testforce_arg1_0 _lh_testforce_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_testforce_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_testforce_LH_C_0_0, _lh_testforce_LH_C_1_0) -> 
        (match _lh_testforce_LH_C_0_0 with
          | `State(_lh_testforce_State_0_0, _lh_testforce_State_1_0) -> 
            (let rec tx_0 = ((testforce__d0 _lh_testforce_arg1_0) _lh_testforce_LH_C_1_0) in
              (let rec hx_0 = ((dotMult__d0 ((scalarMut__d2 (0.0 -. 1.0)) _lh_testforce_arg1_0)) _lh_testforce_State_0_0) in
                (fun f_1 ys_1_5 -> 
                  (match (Lazy.force ys_1_5) with
                    | `LH_C(hy_0, ty_0) -> 
                      (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz__d0 f_1) tx_0) ty_0)))
                    | `LH_N -> 
                      (`LH_N)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec concat__d0 lss_1 =
  (lss_1 99);;
let rec concat__d1 lss_0 =
  (lss_0 99);;
let rec dotPlus__d0 _lh_dotPlus_arg1_0 _lh_dotPlus_arg2_0 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_0 +. _lh_dotPlus_LH_C_0_1), ((dotPlus__d0 _lh_dotPlus_LH_C_1_0) _lh_dotPlus_LH_C_1_1)))
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
let rec mappend__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d1 xs_3 ys_1_3 =
  (xs_3 ys_1_3);;
let rec mappend__d2 xs_4 ys_1_4 =
  (xs_4 ys_1_4);;
let rec scalarMut__d0 _lh_scalarMut_arg1_0 _lh_scalarMut_arg2_0 =
  (match _lh_scalarMut_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_0, _lh_scalarMut_LH_C_1_0) -> 
      (`LH_C((_lh_scalarMut_arg1_0 *. _lh_scalarMut_LH_C_0_0), ((scalarMut__d0 _lh_scalarMut_arg1_0) _lh_scalarMut_LH_C_1_0)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut__d1 _lh_scalarMut_arg1_1 _lh_scalarMut_arg2_1 =
  (_lh_scalarMut_arg2_1 _lh_scalarMut_arg1_1);;
let rec scalarMut__d2 _lh_scalarMut_arg1_7 _lh_scalarMut_arg2_2 =
  (_lh_scalarMut_arg2_2 _lh_scalarMut_arg1_7);;
let rec zipWith_lz_lz__d0 f_0 xs_1 ys_6 =
  (lazy (((Lazy.force xs_1) f_0) ys_6));;
let rec dotMult__d0 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (match _lh_dotMult_arg2_0 with
    | `LH_N -> 
      (fun _lh_scalarMut_arg1_2 -> 
        (`LH_N))
    | _ -> 
      (match _lh_dotMult_arg1_0 with
        | `LH_N -> 
          (fun _lh_scalarMut_arg1_3 -> 
            (`LH_N))
        | _ -> 
          (match _lh_dotMult_arg1_0 with
            | `LH_C(_lh_dotMult_LH_C_0_0, _lh_dotMult_LH_C_1_0) -> 
              (match _lh_dotMult_arg2_0 with
                | `LH_C(_lh_dotMult_LH_C_0_1, _lh_dotMult_LH_C_1_1) -> 
                  (let rec _lh_scalarMut_LH_C_1_1 = ((dotMult__d0 _lh_dotMult_LH_C_1_0) _lh_dotMult_LH_C_1_1) in
                    (let rec _lh_scalarMut_LH_C_0_1 = (_lh_dotMult_LH_C_0_0 *. _lh_dotMult_LH_C_0_1) in
                      (fun _lh_scalarMut_arg1_4 -> 
                        (`LH_C((_lh_scalarMut_arg1_4 *. _lh_scalarMut_LH_C_0_1), ((scalarMut__d1 _lh_scalarMut_arg1_4) _lh_scalarMut_LH_C_1_1))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and mappend__d3 xs_2 ys_7 =
  (match xs_2 with
    | `LH_C(h_4, t_4) -> 
      (let rec t_5 = ((mappend__d3 t_4) ys_7) in
        (let rec h_5 = h_4 in
          (fun ys_8 -> 
            (let rec t_6 = ((mappend__d2 t_5) ys_8) in
              (let rec h_6 = h_5 in
                (fun ys_9 -> 
                  (let rec t_7 = ((mappend__d1 t_6) ys_9) in
                    (let rec h_7 = h_6 in
                      (fun ys_1_0 -> 
                        (`LH_C(h_7, ((mappend__d0 t_7) ys_1_0))))))))))))
    | `LH_N -> 
      ys_7)
and propagate__d0 _lh_propagate_arg1_0 _lh_propagate_arg2_0 _lh_propagate_arg3_0 =
  (match _lh_propagate_arg3_0 with
    | `State(_lh_propagate_State_0_0, _lh_propagate_State_1_0) -> 
      (`State(((dotPlus__d0 _lh_propagate_State_0_0) ((scalarMut__d0 _lh_propagate_arg1_0) _lh_propagate_State_1_0)), ((dotPlus__d1 _lh_propagate_State_1_0) ((scalarMut__d1 _lh_propagate_arg1_0) _lh_propagate_arg2_0))))
    | _ -> 
      (failwith "error"))
and runExperiment__d0 _lh_runExperiment_arg1_0 _lh_runExperiment_arg2_0 _lh_runExperiment_arg3_0 _lh_runExperiment_arg4_0 =
  (lazy (let rec stream_0 = ((((runExperiment__d0 _lh_runExperiment_arg1_0) _lh_runExperiment_arg2_0) _lh_runExperiment_arg3_0) _lh_runExperiment_arg4_0) in
    (`LH_C(_lh_runExperiment_arg4_0, (((zipWith_lz_lz__d0 (propagate__d0 _lh_runExperiment_arg2_0)) ((_lh_runExperiment_arg1_0 _lh_runExperiment_arg3_0) stream_0)) stream_0)))))
and show__d0 _lh_show_arg1_0 =
  (match _lh_show_arg1_0 with
    | `State(_lh_show_State_0_0, _lh_show_State_1_0) -> 
      (concat__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_0 = ((mappend__d3 (string_of_float _lh_listcomp_fun_ls_h_0)) (let rec t_1 = (fun ys_1 -> 
                ys_1) in
                (let rec h_1 = 't' in
                  (fun ys_2 -> 
                    (let rec t_2 = ((mappend__d2 t_1) ys_2) in
                      (let rec h_2 = h_1 in
                        (fun ys_3 -> 
                          (let rec t_3 = ((mappend__d1 t_2) ys_3) in
                            (let rec h_3 = h_2 in
                              (fun ys_4 -> 
                                (`LH_C(h_3, ((mappend__d0 t_3) ys_4))))))))))))) in
                (fun _lh_dummy_0 -> 
                  ((mappend__d2 h_0) (concat__d1 t_0)))))
          | `LH_N -> 
            (fun _lh_dummy_1 ys_5 -> 
              ys_5))) in
        (_lh_listcomp_fun_0 _lh_show_State_0_0)))
    | _ -> 
      (failwith "error"))
and take_lz__d0 n_0 ls_0 _lh_popOutId_0_1 _lh_popOutId_1_1 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_8, t_8) -> 
        (let rec _lh_listcomp_fun_ls_t_1 = ((take_lz__d0 (n_0 - 1)) t_8) in
          (let rec _lh_listcomp_fun_ls_h_1 = h_8 in
            (let rec t_9 = (_lh_popOutId_0_1 _lh_listcomp_fun_ls_t_1) in
              (let rec h_9 = ((mappend__d1 (show__d0 _lh_listcomp_fun_ls_h_1)) (let rec t_1_0 = (fun ys_1_1 -> 
                ys_1_1) in
                (let rec h_1_0 = 'n' in
                  (fun ys_1_2 -> 
                    (`LH_C(h_1_0, ((mappend__d0 t_1_0) ys_1_2))))))) in
                ((mappend__d0 h_9) (concat__d0 t_9))))))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N))
and testAtom_nofib__d0 _lh_testAtom_nofib_arg1_0 =
  (concat__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((take_lz__d0 _lh_testAtom_nofib_arg1_0) ((((runExperiment__d0 testforce__d0) 0.02) (let rec _lh_scalarMut_LH_C_1_2 = (fun _lh_scalarMut_arg1_5 -> 
      (`LH_N)) in
      (let rec _lh_scalarMut_LH_C_0_2 = 1.0 in
        (fun _lh_scalarMut_arg1_6 -> 
          (`LH_C((_lh_scalarMut_arg1_6 *. _lh_scalarMut_LH_C_0_2), ((scalarMut__d2 _lh_scalarMut_arg1_6) _lh_scalarMut_LH_C_1_2))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
and testforce__d0 _lh_testforce_arg1_0 _lh_testforce_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_testforce_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_testforce_LH_C_0_0, _lh_testforce_LH_C_1_0) -> 
        (match _lh_testforce_LH_C_0_0 with
          | `State(_lh_testforce_State_0_0, _lh_testforce_State_1_0) -> 
            (let rec tx_0 = ((testforce__d0 _lh_testforce_arg1_0) _lh_testforce_LH_C_1_0) in
              (let rec hx_0 = ((dotMult__d0 ((scalarMut__d2 (0.0 -. 1.0)) _lh_testforce_arg1_0)) _lh_testforce_State_0_0) in
                (fun f_1 ys_1_5 -> 
                  (match (Lazy.force ys_1_5) with
                    | `LH_C(hy_0, ty_0) -> 
                      (`LH_C(((f_1 hx_0) hy_0), (((zipWith_lz_lz__d0 f_1) tx_0) ty_0)))
                    | `LH_N -> 
                      (`LH_N)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Atom_nofib" (fun () -> ignore (let open Module_original in ((testAtom_nofib__d0 500))));
  Bench.Test.create ~name:"lumberhack_Atom_nofib" (fun () -> ignore (let open Module_lumberhack in ((testAtom_nofib__d0 500))));
  Bench.Test.create ~name:"lumberhack_pop_out_Atom_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testAtom_nofib__d0 500))));
])
