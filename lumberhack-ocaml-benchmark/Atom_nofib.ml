(*
ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Atom_nofib.ml -o "./Atom_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Atom_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o
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
let rec dotMult_d0 _lh_dotMult_arg1_1 _lh_dotMult_arg2_1 =
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
                  (`LH_C((_lh_dotMult_LH_C_0_2 *. _lh_dotMult_LH_C_0_3), ((dotMult_d0 _lh_dotMult_LH_C_1_2) _lh_dotMult_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus_d0 _lh_dotPlus_arg1_1 _lh_dotPlus_arg2_1 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_2 +. _lh_dotPlus_LH_C_0_3), ((dotPlus_d0 _lh_dotPlus_LH_C_1_2) _lh_dotPlus_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus_d1 _lh_dotPlus_arg1_2 _lh_dotPlus_arg2_2 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_4 +. _lh_dotPlus_LH_C_0_5), ((dotPlus_d1 _lh_dotPlus_LH_C_1_4) _lh_dotPlus_LH_C_1_5)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mappend_d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend_d0 t_2_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d1 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend_d1 t_2_8) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend_d2 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d3 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend_d3 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec scalarMut_d0 _lh_scalarMut_arg1_2 _lh_scalarMut_arg2_2 =
  (match _lh_scalarMut_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_2, _lh_scalarMut_LH_C_1_2) -> 
      (`LH_C((_lh_scalarMut_arg1_2 *. _lh_scalarMut_LH_C_0_2), ((scalarMut_d0 _lh_scalarMut_arg1_2) _lh_scalarMut_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut_d1 _lh_scalarMut_arg1_1 _lh_scalarMut_arg2_1 =
  (match _lh_scalarMut_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_1, _lh_scalarMut_LH_C_1_1) -> 
      (`LH_C((_lh_scalarMut_arg1_1 *. _lh_scalarMut_LH_C_0_1), ((scalarMut_d1 _lh_scalarMut_arg1_1) _lh_scalarMut_LH_C_1_1)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut_d2 _lh_scalarMut_arg1_3 _lh_scalarMut_arg2_3 =
  (match _lh_scalarMut_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_3, _lh_scalarMut_LH_C_1_3) -> 
      (`LH_C((_lh_scalarMut_arg1_3 *. _lh_scalarMut_LH_C_0_3), ((scalarMut_d2 _lh_scalarMut_arg1_3) _lh_scalarMut_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec take_lz_d0 n_4 ls_1_9 =
  (if (n_4 > 0) then
    (match (Lazy.force ls_1_9) with
      | `LH_C(h_2_1, t_2_3) -> 
        (`LH_C(h_2_1, ((take_lz_d0 (n_4 - 1)) t_2_3)))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N));;
let rec zipWith_lz_lz_d0 f_1_2 xs_1_2 ys_1_2 =
  (lazy (match (Lazy.force xs_1_2) with
    | `LH_C(hx_8, tx_8) -> 
      (match (Lazy.force ys_1_2) with
        | `LH_C(hy_8, ty_8) -> 
          (`LH_C(((f_1_2 hx_8) hy_8), (((zipWith_lz_lz_d0 f_1_2) tx_8) ty_8)))
        | `LH_N -> 
          (`LH_N))
    | `LH_N -> 
      (`LH_N)));;
let rec concat_d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      ((mappend_d0 h_2_5) (concat_d0 t_2_7))
    | `LH_N -> 
      (`LH_N))
and concat_d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((mappend_d2 h_2_4) (concat_d1 t_2_6))
    | `LH_N -> 
      (`LH_N))
and propagate_d0 _lh_propagate_arg1_1 _lh_propagate_arg2_1 _lh_propagate_arg3_1 =
  (match _lh_propagate_arg3_1 with
    | `State(_lh_propagate_State_0_1, _lh_propagate_State_1_1) -> 
      (`State(((dotPlus_d0 _lh_propagate_State_0_1) ((scalarMut_d0 _lh_propagate_arg1_1) _lh_propagate_State_1_1)), ((dotPlus_d1 _lh_propagate_State_1_1) ((scalarMut_d1 _lh_propagate_arg1_1) _lh_propagate_arg2_1))))
    | _ -> 
      (failwith "error"))
and runExperiment_d0 _lh_runExperiment_arg1_1 _lh_runExperiment_arg2_1 _lh_runExperiment_arg3_1 _lh_runExperiment_arg4_1 =
  (lazy (let rec stream_1 = ((((runExperiment_d0 _lh_runExperiment_arg1_1) _lh_runExperiment_arg2_1) _lh_runExperiment_arg3_1) _lh_runExperiment_arg4_1) in
    (`LH_C(_lh_runExperiment_arg4_1, (((zipWith_lz_lz_d0 (propagate_d0 _lh_runExperiment_arg2_1)) ((_lh_runExperiment_arg1_1 _lh_runExperiment_arg3_1) stream_1)) stream_1)))))
and show_d0 _lh_show_arg1_1 =
  (match _lh_show_arg1_1 with
    | `State(_lh_show_State_0_1, _lh_show_State_1_1) -> 
      (concat_d1 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
            (`LH_C(((mappend_d3 (string_of_float _lh_listcomp_fun_ls_h_2)) (`LH_C('t', (`LH_N)))), (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2)))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_2 _lh_show_State_0_1)))
    | _ -> 
      (failwith "error"))
and testAtom_nofib_d0 _lh_testAtom_nofib_arg1_1 =
  (concat_d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
    (match _lh_listcomp_fun_para_3 with
      | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
        (`LH_C(((mappend_d1 (show_d0 _lh_listcomp_fun_ls_h_3)) (`LH_C('n', (`LH_N)))), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_3 ((take_lz_d0 _lh_testAtom_nofib_arg1_1) ((((runExperiment_d0 testforce_d0) 0.02) (`LH_C(1.0, (`LH_N)))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
and testforce_d0 _lh_testforce_arg1_1 _lh_testforce_arg2_1 =
  (lazy (let rec _lh_matchIdent_1 = (Lazy.force _lh_testforce_arg2_1) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_testforce_LH_C_0_1, _lh_testforce_LH_C_1_1) -> 
        (match _lh_testforce_LH_C_0_1 with
          | `State(_lh_testforce_State_0_1, _lh_testforce_State_1_1) -> 
            (`LH_C(((dotMult_d0 ((scalarMut_d2 (0.0 -. 1.0)) _lh_testforce_arg1_1)) _lh_testforce_State_0_1), ((testforce_d0 _lh_testforce_arg1_1) _lh_testforce_LH_C_1_1)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;

(* lumberhack *)
let rec concat_d1_d0 lss_2 =
  lss_2;;
let rec dotPlus_d0_d0 _lh_dotPlus_arg1_0 _lh_dotPlus_arg2_0 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_0 +. _lh_dotPlus_LH_C_0_1), ((dotPlus_d0_d0 _lh_dotPlus_LH_C_1_0) _lh_dotPlus_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus_d1_d0 _lh_dotPlus_arg1_1 _lh_dotPlus_arg2_1 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_2 +. _lh_dotPlus_LH_C_0_3), ((dotPlus_d1_d0 _lh_dotPlus_LH_C_1_2) _lh_dotPlus_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mappend_d0_d0 xs_3 ys_5 =
  (match xs_3 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_d0_d0 t_6) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_d0_d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_d0_d1 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_d1_d0 xs_5 ys_1_2 =
  (xs_5 ys_1_2);;
let rec mappend_d2_d0 xs_4 ys_1_0 =
  (xs_4 ys_1_0);;
let rec scalarMut_d0_d0 _lh_scalarMut_arg1_7 _lh_scalarMut_arg2_2 =
  (match _lh_scalarMut_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_2, _lh_scalarMut_LH_C_1_2) -> 
      (`LH_C((_lh_scalarMut_arg1_7 *. _lh_scalarMut_LH_C_0_2), ((scalarMut_d0_d0 _lh_scalarMut_arg1_7) _lh_scalarMut_LH_C_1_2)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut_d1_d0 _lh_scalarMut_arg1_1 _lh_scalarMut_arg2_1 =
  (_lh_scalarMut_arg2_1 _lh_scalarMut_arg1_1);;
let rec scalarMut_d2_d0 _lh_scalarMut_arg1_0 _lh_scalarMut_arg2_0 =
  (_lh_scalarMut_arg2_0 _lh_scalarMut_arg1_0);;
let rec zipWith_lz_lz_d0_d0 f_0 xs_2 ys_4 =
  (lazy (((Lazy.force xs_2) f_0) ys_4));;
let rec concat_d0_d0 lss_0 =
  (match lss_0 with
    | `LH_C(h_0, t_0) -> 
      ((mappend_d0_d1 h_0) (concat_d0_d1 t_0))
    | `LH_N -> 
      (`LH_N))
and concat_d0_d1 lss_1 =
  (match lss_1 with
    | `LH_C(h_7, t_7) -> 
      ((mappend_d0_d0 h_7) (concat_d0_d1 t_7))
    | `LH_N -> 
      (`LH_N))
and dotMult_d0_d0 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (match _lh_dotMult_arg2_0 with
    | `LH_N -> 
      (fun _lh_scalarMut_arg1_4 -> 
        (`LH_N))
    | _ -> 
      (match _lh_dotMult_arg1_0 with
        | `LH_N -> 
          (fun _lh_scalarMut_arg1_5 -> 
            (`LH_N))
        | _ -> 
          (match _lh_dotMult_arg1_0 with
            | `LH_C(_lh_dotMult_LH_C_0_0, _lh_dotMult_LH_C_1_0) -> 
              (match _lh_dotMult_arg2_0 with
                | `LH_C(_lh_dotMult_LH_C_0_1, _lh_dotMult_LH_C_1_1) -> 
                  (let rec _lh_scalarMut_LH_C_0_1 = (lazy (_lh_dotMult_LH_C_0_0 *. _lh_dotMult_LH_C_0_1)) in
                    (let rec _lh_scalarMut_LH_C_1_1 = (lazy ((dotMult_d0_d0 _lh_dotMult_LH_C_1_0) _lh_dotMult_LH_C_1_1)) in
                      (fun _lh_scalarMut_arg1_6 -> 
                        (`LH_C((_lh_scalarMut_arg1_6 *. (Lazy.force _lh_scalarMut_LH_C_0_1)), ((scalarMut_d1_d0 _lh_scalarMut_arg1_6) (Lazy.force _lh_scalarMut_LH_C_1_1)))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and mappend_d3_d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_2, t_2) -> 
      (let rec h_3 = (lazy h_2) in
        (let rec t_3 = (lazy ((mappend_d3_d0 t_2) ys_1)) in
          (fun ys_2 -> 
            (let rec h_4 = (lazy (Lazy.force h_3)) in
              (let rec t_4 = (lazy ((mappend_d2_d0 (Lazy.force t_3)) ys_2)) in
                (fun ys_3 -> 
                  (`LH_C((Lazy.force h_4), ((mappend_d1_d0 (Lazy.force t_4)) ys_3)))))))))
    | `LH_N -> 
      ys_1)
and propagate_d0_d0 _lh_propagate_arg1_0 _lh_propagate_arg2_0 _lh_propagate_arg3_0 =
  (match _lh_propagate_arg3_0 with
    | `State(_lh_propagate_State_0_0, _lh_propagate_State_1_0) -> 
      (`State(((dotPlus_d0_d0 _lh_propagate_State_0_0) ((scalarMut_d0_d0 _lh_propagate_arg1_0) _lh_propagate_State_1_0)), ((dotPlus_d1_d0 _lh_propagate_State_1_0) ((scalarMut_d1_d0 _lh_propagate_arg1_0) _lh_propagate_arg2_0))))
    | _ -> 
      (failwith "error"))
and runExperiment_d0_d0 _lh_runExperiment_arg1_0 _lh_runExperiment_arg2_0 _lh_runExperiment_arg3_0 _lh_runExperiment_arg4_0 =
  (lazy (let rec stream_0 = ((((runExperiment_d0_d0 _lh_runExperiment_arg1_0) _lh_runExperiment_arg2_0) _lh_runExperiment_arg3_0) _lh_runExperiment_arg4_0) in
    (`LH_C(_lh_runExperiment_arg4_0, (((zipWith_lz_lz_d0_d0 (propagate_d0_d0 _lh_runExperiment_arg2_0)) ((_lh_runExperiment_arg1_0 _lh_runExperiment_arg3_0) stream_0)) stream_0)))))
and show_d0_d0 _lh_show_arg1_0 =
  (match _lh_show_arg1_0 with
    | `State(_lh_show_State_0_0, _lh_show_State_1_0) -> 
      (concat_d1_d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (let rec h_8 = (lazy ((mappend_d3_d0 (string_of_float _lh_listcomp_fun_ls_h_1)) (let rec h_9 = (lazy 't') in
              (let rec t_8 = (lazy (fun ys_6 -> 
                ys_6)) in
                (fun ys_7 -> 
                  (let rec h_1_0 = (lazy (Lazy.force h_9)) in
                    (let rec t_9 = (lazy ((mappend_d2_d0 (Lazy.force t_8)) ys_7)) in
                      (fun ys_8 -> 
                        (`LH_C((Lazy.force h_1_0), ((mappend_d1_d0 (Lazy.force t_9)) ys_8))))))))))) in
              (let rec t_1_0 = (lazy (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_1)) in
                ((mappend_d2_d0 (Lazy.force h_8)) (concat_d1_d0 (Lazy.force t_1_0)))))
          | `LH_N -> 
            (fun ys_9 -> 
              ys_9))) in
        (_lh_listcomp_fun_3 _lh_show_State_0_0)))
    | _ -> 
      (failwith "error"))
and take_lz_d0_d0 n_0 ls_0 =
  (if (n_0 > 0) then
    (match (Lazy.force ls_0) with
      | `LH_C(h_5, t_5) -> 
        (let rec _lh_listcomp_fun_ls_h_0 = (lazy h_5) in
          (let rec _lh_listcomp_fun_ls_t_0 = (lazy ((take_lz_d0_d0 (n_0 - 1)) t_5)) in
            (fun _lh_listcomp_fun_0 -> 
              (`LH_C(((mappend_d1_d0 (show_d0_d0 (Lazy.force _lh_listcomp_fun_ls_h_0))) (`LH_C('n', (`LH_N)))), (_lh_listcomp_fun_0 (Lazy.force _lh_listcomp_fun_ls_t_0)))))))
      | `LH_N -> 
        (fun _lh_listcomp_fun_1 -> 
          (`LH_N)))
  else
    (fun _lh_listcomp_fun_2 -> 
      (`LH_N)))
and testAtom_nofib_d0_d0 _lh_testAtom_nofib_arg1_0 =
  (concat_d0_d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((take_lz_d0_d0 _lh_testAtom_nofib_arg1_0) ((((runExperiment_d0_d0 testforce_d0_d0) 0.02) (let rec _lh_scalarMut_LH_C_0_0 = (lazy 1.0) in
      (let rec _lh_scalarMut_LH_C_1_0 = (lazy (fun _lh_scalarMut_arg1_2 -> 
        (`LH_N))) in
        (fun _lh_scalarMut_arg1_3 -> 
          (`LH_C((_lh_scalarMut_arg1_3 *. (Lazy.force _lh_scalarMut_LH_C_0_0)), ((scalarMut_d2_d0 _lh_scalarMut_arg1_3) (Lazy.force _lh_scalarMut_LH_C_1_0)))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
and testforce_d0_d0 _lh_testforce_arg1_0 _lh_testforce_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_testforce_arg2_0) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_testforce_LH_C_0_0, _lh_testforce_LH_C_1_0) -> 
        (match _lh_testforce_LH_C_0_0 with
          | `State(_lh_testforce_State_0_0, _lh_testforce_State_1_0) -> 
            (let rec hx_0 = (lazy ((dotMult_d0_d0 ((scalarMut_d2_d0 (0.0 -. 1.0)) _lh_testforce_arg1_0)) _lh_testforce_State_0_0)) in
              (let rec tx_0 = (lazy ((testforce_d0_d0 _lh_testforce_arg1_0) _lh_testforce_LH_C_1_0)) in
                (fun f_1 ys_1_1 -> 
                  (match (Lazy.force ys_1_1) with
                    | `LH_C(hy_0, ty_0) -> 
                      (`LH_C(((f_1 (Lazy.force hx_0)) hy_0), (((zipWith_lz_lz_d0_d0 f_1) (Lazy.force tx_0)) ty_0)))
                    | `LH_N -> 
                      (`LH_N)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;

(* lumberhack_pop_out *)
let rec concat_d1_d0_d0 lss_6 =
  lss_6;;
let rec concat_d1_d0_d1 lss_4 =
  lss_4;;
let rec dotPlus_d0_d0_d0 _lh_dotPlus_arg1_3 _lh_dotPlus_arg2_3 =
  (match _lh_dotPlus_arg2_3 with
    | `LH_N -> 
      _lh_dotPlus_arg1_3
    | _ -> 
      (match _lh_dotPlus_arg1_3 with
        | `LH_N -> 
          _lh_dotPlus_arg2_3
        | _ -> 
          (match _lh_dotPlus_arg1_3 with
            | `LH_C(_lh_dotPlus_LH_C_0_6, _lh_dotPlus_LH_C_1_6) -> 
              (match _lh_dotPlus_arg2_3 with
                | `LH_C(_lh_dotPlus_LH_C_0_7, _lh_dotPlus_LH_C_1_7) -> 
                  (`LH_C((_lh_dotPlus_LH_C_0_6 +. _lh_dotPlus_LH_C_0_7), ((dotPlus_d0_d0_d0 _lh_dotPlus_LH_C_1_6) _lh_dotPlus_LH_C_1_7)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec dotPlus_d1_d0_d0 _lh_dotPlus_arg1_2 _lh_dotPlus_arg2_2 =
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
                  (`LH_C((_lh_dotPlus_LH_C_0_4 +. _lh_dotPlus_LH_C_0_5), ((dotPlus_d1_d0_d0 _lh_dotPlus_LH_C_1_4) _lh_dotPlus_LH_C_1_5)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec mappend_d0_d0_d0 xs_1_6 ys_3_0 =
  (match xs_1_6 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_d0_d0_d0 t_2_1) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend_d0_d1_d0 xs_1_5 ys_2_8 =
  (match xs_1_5 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C(h_1_9, ((mappend_d0_d1_d0 t_1_9) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend_d1_d0_d0 xs_1_0 ys_1_7 =
  (xs_1_0 ys_1_7);;
let rec mappend_d1_d0_d1 xs_1_4 ys_2_3 =
  (xs_1_4 ys_2_3);;
let rec mappend_d1_d0_d2 xs_6 ys_1_3 =
  (xs_6 ys_1_3);;
let rec mappend_d2_d0_d0 xs_7 ys_1_4 =
  (xs_7 ys_1_4);;
let rec mappend_d2_d0_d1 xs_9 ys_1_6 =
  (xs_9 ys_1_6);;
let rec mappend_d2_d0_d2 xs_1_3 ys_2_2 =
  (xs_1_3 ys_2_2);;
let rec scalarMut_d0_d0_d0 _lh_scalarMut_arg1_8 _lh_scalarMut_arg2_3 =
  (match _lh_scalarMut_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_scalarMut_LH_C_0_3, _lh_scalarMut_LH_C_1_3) -> 
      (`LH_C((_lh_scalarMut_arg1_8 *. _lh_scalarMut_LH_C_0_3), ((scalarMut_d0_d0_d0 _lh_scalarMut_arg1_8) _lh_scalarMut_LH_C_1_3)))
    | _ -> 
      (failwith "error"));;
let rec scalarMut_d1_d0_d0 _lh_scalarMut_arg1_1_5 _lh_scalarMut_arg2_7 =
  (_lh_scalarMut_arg2_7 _lh_scalarMut_arg1_1_5);;
let rec scalarMut_d1_d0_d1 _lh_scalarMut_arg1_1_0 _lh_scalarMut_arg2_5 =
  (_lh_scalarMut_arg2_5 _lh_scalarMut_arg1_1_0);;
let rec scalarMut_d2_d0_d0 _lh_scalarMut_arg1_1_1 _lh_scalarMut_arg2_6 =
  (_lh_scalarMut_arg2_6 _lh_scalarMut_arg1_1_1);;
let rec scalarMut_d2_d0_d1 _lh_scalarMut_arg1_9 _lh_scalarMut_arg2_4 =
  (_lh_scalarMut_arg2_4 _lh_scalarMut_arg1_9);;
let rec zipWith_lz_lz_d0_d0_d0 f_3 xs_1_2 ys_2_1 =
  (lazy (((Lazy.force xs_1_2) f_3) ys_2_1));;
let rec zipWith_lz_lz_d0_d0_d1 f_2 xs_8 ys_1_5 =
  (lazy (((Lazy.force xs_8) f_2) ys_1_5));;
let rec concat_d0_d0_d0 lss_5 =
  (match lss_5 with
    | `LH_C(h_2_0, t_2_0) -> 
      ((mappend_d0_d1_d0 h_2_0) (concat_d0_d1_d0 t_2_0))
    | `LH_N -> 
      (`LH_N))
and concat_d0_d1_d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_1_2, t_1_2) -> 
      ((mappend_d0_d0_d0 h_1_2) (concat_d0_d1_d0 t_1_2))
    | `LH_N -> 
      (`LH_N))
and dotMult_d0_d0_d0 _lh_dotMult_arg1_1 _lh_dotMult_arg2_1 =
  (match _lh_dotMult_arg2_1 with
    | `LH_N -> 
      (fun _lh_scalarMut_arg1_1_2 -> 
        (`LH_N))
    | _ -> 
      (match _lh_dotMult_arg1_1 with
        | `LH_N -> 
          (fun _lh_scalarMut_arg1_1_3 -> 
            (`LH_N))
        | _ -> 
          (match _lh_dotMult_arg1_1 with
            | `LH_C(_lh_dotMult_LH_C_0_2, _lh_dotMult_LH_C_1_2) -> 
              (match _lh_dotMult_arg2_1 with
                | `LH_C(_lh_dotMult_LH_C_0_3, _lh_dotMult_LH_C_1_3) -> 
                  (let rec _lh_scalarMut_LH_C_0_4 = (lazy (_lh_dotMult_LH_C_0_2 *. _lh_dotMult_LH_C_0_3)) in
                    (let rec _lh_scalarMut_LH_C_1_4 = (lazy ((dotMult_d0_d0_d0 _lh_dotMult_LH_C_1_2) _lh_dotMult_LH_C_1_3)) in
                      (fun _lh_scalarMut_arg1_1_4 -> 
                        (`LH_C((_lh_scalarMut_arg1_1_4 *. (Lazy.force _lh_scalarMut_LH_C_0_4)), ((scalarMut_d1_d0_d1 _lh_scalarMut_arg1_1_4) (Lazy.force _lh_scalarMut_LH_C_1_4)))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and mappend_d3_d0_d0 xs_1_1 ys_1_8 =
  (match xs_1_1 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec h_1_4 = (lazy h_1_3) in
        (let rec t_1_4 = (lazy ((mappend_d3_d0_d0 t_1_3) ys_1_8)) in
          (fun ys_1_9 -> 
            (let rec h_1_5 = (lazy (Lazy.force h_1_4)) in
              (let rec t_1_5 = (lazy ((mappend_d2_d0_d2 (Lazy.force t_1_4)) ys_1_9)) in
                (fun ys_2_0 -> 
                  (`LH_C((Lazy.force h_1_5), ((mappend_d1_d0_d2 (Lazy.force t_1_5)) ys_2_0)))))))))
    | `LH_N -> 
      ys_1_8)
and propagate_d0_d0_d0 _lh_propagate_arg1_1 _lh_propagate_arg2_1 _lh_propagate_arg3_1 =
  (match _lh_propagate_arg3_1 with
    | `State(_lh_propagate_State_0_1, _lh_propagate_State_1_1) -> 
      (`State(((dotPlus_d0_d0_d0 _lh_propagate_State_0_1) ((scalarMut_d0_d0_d0 _lh_propagate_arg1_1) _lh_propagate_State_1_1)), ((dotPlus_d1_d0_d0 _lh_propagate_State_1_1) ((scalarMut_d1_d0_d0 _lh_propagate_arg1_1) _lh_propagate_arg2_1))))
    | _ -> 
      (failwith "error"))
and runExperiment_d0_d0_d0 _lh_runExperiment_arg1_1 _lh_runExperiment_arg2_1 _lh_runExperiment_arg3_1 _lh_runExperiment_arg4_1 =
  (lazy (let rec stream_1 = ((((runExperiment_d0_d0_d0 _lh_runExperiment_arg1_1) _lh_runExperiment_arg2_1) _lh_runExperiment_arg3_1) _lh_runExperiment_arg4_1) in
    (`LH_C(_lh_runExperiment_arg4_1, (((zipWith_lz_lz_d0_d0_d0 (propagate_d0_d0_d0 _lh_runExperiment_arg2_1)) ((_lh_runExperiment_arg1_1 _lh_runExperiment_arg3_1) stream_1)) stream_1)))))
and show_d0_d0_d0 _lh_show_arg1_1 =
  (match _lh_show_arg1_1 with
    | `State(_lh_show_State_0_1, _lh_show_State_1_1) -> 
      (concat_d1_d0_d0 (let rec _lh_listcomp_fun_8 = (fun _lh_listcomp_fun_para_2 -> 
        (match _lh_listcomp_fun_para_2 with
          | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
            (let rec h_1_6 = (lazy ((mappend_d3_d0_d0 (string_of_float _lh_listcomp_fun_ls_h_3)) (let rec h_1_7 = (lazy 't') in
              (let rec t_1_6 = (lazy (fun ys_2_4 -> 
                ys_2_4)) in
                (fun ys_2_5 -> 
                  (let rec h_1_8 = (lazy (Lazy.force h_1_7)) in
                    (let rec t_1_7 = (lazy ((mappend_d2_d0_d0 (Lazy.force t_1_6)) ys_2_5)) in
                      (fun ys_2_6 -> 
                        (`LH_C((Lazy.force h_1_8), ((mappend_d1_d0_d1 (Lazy.force t_1_7)) ys_2_6))))))))))) in
              (let rec t_1_8 = (lazy (_lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_3)) in
                ((mappend_d2_d0_d1 (Lazy.force h_1_6)) (concat_d1_d0_d1 (Lazy.force t_1_8)))))
          | `LH_N -> 
            (fun ys_2_7 -> 
              ys_2_7))) in
        (_lh_listcomp_fun_8 _lh_show_State_0_1)))
    | _ -> 
      (failwith "error"))
and take_lz_d0_d0_d0 n_1 ls_1 _lh_popOutId_0_1 =
  (if (n_1 > 0) then
    (match (Lazy.force ls_1) with
      | `LH_C(h_1_1, t_1_1) -> 
        (let rec _lh_listcomp_fun_ls_h_2 = (lazy h_1_1) in
          (let rec _lh_listcomp_fun_ls_t_2 = (lazy ((take_lz_d0_d0_d0 (n_1 - 1)) t_1_1)) in
            (`LH_C(((mappend_d1_d0_d0 (show_d0_d0_d0 (Lazy.force _lh_listcomp_fun_ls_h_2))) (`LH_C('n', (`LH_N)))), (_lh_popOutId_0_1 (Lazy.force _lh_listcomp_fun_ls_t_2))))))
      | `LH_N -> 
        (`LH_N))
  else
    (`LH_N))
and testAtom_nofib_d0_d0_d0 _lh_testAtom_nofib_arg1_1 =
  (concat_d0_d0_d0 (let rec _lh_listcomp_fun_9 = (fun _lh_listcomp_fun_para_3 -> 
    (_lh_listcomp_fun_para_3 _lh_listcomp_fun_9)) in
    (_lh_listcomp_fun_9 ((take_lz_d0_d0_d0 _lh_testAtom_nofib_arg1_1) ((((runExperiment_d0_d0_d0 testforce_d0_d0_d0) 0.02) (let rec _lh_scalarMut_LH_C_0_5 = (lazy 1.0) in
      (let rec _lh_scalarMut_LH_C_1_5 = (lazy (fun _lh_scalarMut_arg1_1_6 -> 
        (`LH_N))) in
        (fun _lh_scalarMut_arg1_1_7 -> 
          (`LH_C((_lh_scalarMut_arg1_1_7 *. (Lazy.force _lh_scalarMut_LH_C_0_5)), ((scalarMut_d2_d0_d0 _lh_scalarMut_arg1_1_7) (Lazy.force _lh_scalarMut_LH_C_1_5)))))))) (`State((`LH_C(1.0, (`LH_N))), (`LH_C(0.0, (`LH_N))))))))))
and testforce_d0_d0_d0 _lh_testforce_arg1_1 _lh_testforce_arg2_1 =
  (lazy (let rec _lh_matchIdent_1 = (Lazy.force _lh_testforce_arg2_1) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_testforce_LH_C_0_1, _lh_testforce_LH_C_1_1) -> 
        (match _lh_testforce_LH_C_0_1 with
          | `State(_lh_testforce_State_0_1, _lh_testforce_State_1_1) -> 
            (let rec hx_1 = (lazy ((dotMult_d0_d0_d0 ((scalarMut_d2_d0_d1 (0.0 -. 1.0)) _lh_testforce_arg1_1)) _lh_testforce_State_0_1)) in
              (let rec tx_1 = (lazy ((testforce_d0_d0_d0 _lh_testforce_arg1_1) _lh_testforce_LH_C_1_1)) in
                (fun f_4 ys_2_9 -> 
                  (match (Lazy.force ys_2_9) with
                    | `LH_C(hy_1, ty_1) -> 
                      (`LH_C(((f_4 (Lazy.force hx_1)) hy_1), (((zipWith_lz_lz_d0_d0_d1 f_4) (Lazy.force tx_1)) ty_1)))
                    | `LH_N -> 
                      (`LH_N)))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Atom_nofib" (fun () -> ignore ((testAtom_nofib_d0 500)));
  Bench.Test.create ~name:"lumberhack_Atom_nofib" (fun () -> ignore ((testAtom_nofib_d0_d0 500)));
  Bench.Test.create ~name:"lumberhack_pop_out_Atom_nofib" (fun () -> ignore ((testAtom_nofib_d0_d0_d0 500)));
])
