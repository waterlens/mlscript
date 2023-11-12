(*
touch ./Scc_nofib.mli && ocamlc ./Scc_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Scc_nofib.ml -o "./Scc_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Scc_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec inList__d0 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d0 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d1 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d2 _lh_inList_arg1_3 _lh_inList_arg2_3 =
  (match _lh_inList_arg2_3 with
    | `LH_C(_lh_inList_LH_C_0_3, _lh_inList_LH_C_1_3) -> 
      (if (_lh_inList_arg1_3 = _lh_inList_LH_C_0_3) then
        true
      else
        ((inList__d2 _lh_inList_arg1_3) _lh_inList_LH_C_1_3))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_1_4 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C((f_1_4 h_2_4), ((map__d0 f_1_4) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_2, t_2_3) -> 
      (`LH_C(h_2_2, ((mappend__d0 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_2) -> 
      (`LH_C(h_2_1, ((mappend__d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec snd__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_2 =
  (match _lh_snd_arg1_2 with
    | `LH_P2(_lh_snd_LH_P2_0_2, _lh_snd_LH_P2_1_2) -> 
      _lh_snd_LH_P2_1_2
    | _ -> 
      (failwith "error"));;
let rec dfs__d0 _lh_dfs_arg1_2 _lh_dfs_arg2_2 _lh_dfs_arg3_2 =
  (match _lh_dfs_arg2_2 with
    | `LH_P2(_lh_dfs_LH_P2_0_4, _lh_dfs_LH_P2_1_4) -> 
      (match _lh_dfs_arg3_2 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_4, _lh_dfs_LH_P2_1_4))
        | `LH_C(_lh_dfs_LH_C_0_2, _lh_dfs_LH_C_1_2) -> 
          (if ((inList__d0 _lh_dfs_LH_C_0_2) _lh_dfs_LH_P2_0_4) then
            (((dfs__d0 _lh_dfs_arg1_2) (`LH_P2(_lh_dfs_LH_P2_0_4, _lh_dfs_LH_P2_1_4))) _lh_dfs_LH_C_1_2)
          else
            (let rec _lh_matchIdent_4 = (((dfs__d0 _lh_dfs_arg1_2) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_2, _lh_dfs_LH_P2_0_4)), (`LH_N)))) (_lh_dfs_arg1_2 _lh_dfs_LH_C_0_2)) in
              (match _lh_matchIdent_4 with
                | `LH_P2(_lh_dfs_LH_P2_0_5, _lh_dfs_LH_P2_1_5) -> 
                  (((dfs__d0 _lh_dfs_arg1_2) (`LH_P2(_lh_dfs_LH_P2_0_5, ((mappend__d0 (`LH_C(_lh_dfs_LH_C_0_2, _lh_dfs_LH_P2_1_5))) _lh_dfs_LH_P2_1_4)))) _lh_dfs_LH_C_1_2)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and dfs__d1 _lh_dfs_arg1_1 _lh_dfs_arg2_1 _lh_dfs_arg3_1 =
  (match _lh_dfs_arg2_1 with
    | `LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2) -> 
      (match _lh_dfs_arg3_1 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2))
        | `LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_C_1_1) -> 
          (if ((inList__d1 _lh_dfs_LH_C_0_1) _lh_dfs_LH_P2_0_2) then
            (((dfs__d1 _lh_dfs_arg1_1) (`LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2))) _lh_dfs_LH_C_1_1)
          else
            (let rec _lh_matchIdent_2 = (((dfs__d1 _lh_dfs_arg1_1) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_0_2)), (`LH_N)))) (_lh_dfs_arg1_1 _lh_dfs_LH_C_0_1)) in
              (match _lh_matchIdent_2 with
                | `LH_P2(_lh_dfs_LH_P2_0_3, _lh_dfs_LH_P2_1_3) -> 
                  (((dfs__d1 _lh_dfs_arg1_1) (`LH_P2(_lh_dfs_LH_P2_0_3, ((mappend__d1 (`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_1_3))) _lh_dfs_LH_P2_1_2)))) _lh_dfs_LH_C_1_1)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stronglyConnComp__d0 _lh_stronglyConnComp_arg1_1 _lh_stronglyConnComp_arg2_1 =
  let rec swap_1 = (fun _lh_swap_arg1_1 -> 
    (match _lh_swap_arg1_1 with
      | `LH_P2(_lh_swap_LH_P2_0_1, _lh_swap_LH_P2_1_1) -> 
        (`LH_P2(_lh_swap_LH_P2_1_1, _lh_swap_LH_P2_0_1))
      | _ -> 
        (failwith "error")))
  and span_tree_1 = (fun _lh_span_tree_arg1_1 _lh_span_tree_arg2_1 _lh_span_tree_arg3_1 -> 
    (match _lh_span_tree_arg2_1 with
      | `LH_P2(_lh_span_tree_LH_P2_0_2, _lh_span_tree_LH_P2_1_2) -> 
        (match _lh_span_tree_arg3_1 with
          | `LH_N -> 
            (`LH_P2(_lh_span_tree_LH_P2_0_2, _lh_span_tree_LH_P2_1_2))
          | `LH_C(_lh_span_tree_LH_C_0_1, _lh_span_tree_LH_C_1_1) -> 
            (if ((inList__d2 _lh_span_tree_LH_C_0_1) _lh_span_tree_LH_P2_0_2) then
              (((span_tree_1 _lh_span_tree_arg1_1) (`LH_P2(_lh_span_tree_LH_P2_0_2, _lh_span_tree_LH_P2_1_2))) _lh_span_tree_LH_C_1_1)
            else
              (let rec _lh_matchIdent_3 = (((dfs__d0 _lh_span_tree_arg1_1) (`LH_P2((`LH_C(_lh_span_tree_LH_C_0_1, _lh_span_tree_LH_P2_0_2)), (`LH_N)))) (_lh_span_tree_arg1_1 _lh_span_tree_LH_C_0_1)) in
                (match _lh_matchIdent_3 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_3, _lh_span_tree_LH_P2_1_3) -> 
                    (((span_tree_1 _lh_span_tree_arg1_1) (`LH_P2(_lh_span_tree_LH_P2_0_3, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_1, _lh_span_tree_LH_P2_1_3)), _lh_span_tree_LH_P2_1_2))))) _lh_span_tree_LH_C_1_1)
                  | _ -> 
                    (failwith "error"))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and new_range_1 = (fun _lh_new_range_arg1_1 _lh_new_range_arg2_1 -> 
    (match _lh_new_range_arg1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_new_range_LH_C_0_1, _lh_new_range_LH_C_1_1) -> 
        (match _lh_new_range_LH_C_0_1 with
          | `LH_P2(_lh_new_range_LH_P2_0_1, _lh_new_range_LH_P2_1_1) -> 
            (if (_lh_new_range_LH_P2_0_1 = _lh_new_range_arg2_1) then
              (`LH_C(_lh_new_range_LH_P2_1_1, ((new_range_1 _lh_new_range_LH_C_1_1) _lh_new_range_arg2_1)))
            else
              ((new_range_1 _lh_new_range_LH_C_1_1) _lh_new_range_arg2_1))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  in (snd__d0 (((span_tree_1 (new_range_1 ((map__d0 swap_1) _lh_stronglyConnComp_arg1_1))) (`LH_P2((`LH_N), (`LH_N)))) (snd__d1 (((dfs__d1 (new_range_1 _lh_stronglyConnComp_arg1_1)) (`LH_P2((`LH_N), (`LH_N)))) _lh_stronglyConnComp_arg2_1))))
and testScc_nofib__d0 _lh_testScc_nofib_arg1_1 =
  (let rec a_6 = 1 in
    (let rec b_3 = 2 in
      (let rec c_1 = 3 in
        (let rec d_1 = 4 in
          (let rec f_1_3 = 5 in
            (let rec g_1 = 6 in
              (let rec h_2_3 = 7 in
                (let rec vertices_1 = (`LH_C(a_6, (`LH_C(b_3, (`LH_C(c_1, (`LH_C(d_1, (`LH_C(f_1_3, (`LH_C(g_1, (`LH_C(h_2_3, (`LH_N))))))))))))))) in
                  (let rec edges_1 = (`LH_C((`LH_P2(b_3, a_6)), (`LH_C((`LH_P2(c_1, b_3)), (`LH_C((`LH_P2(c_1, d_1)), (`LH_C((`LH_P2(c_1, h_2_3)), (`LH_C((`LH_P2(d_1, c_1)), (`LH_C((`LH_P2(f_1_3, a_6)), (`LH_C((`LH_P2(f_1_3, g_1)), (`LH_C((`LH_P2(f_1_3, h_2_3)), (`LH_C((`LH_P2(g_1, f_1_3)), (`LH_C((`LH_P2(h_2_3, g_1)), (`LH_N))))))))))))))))))))) in
                    ((stronglyConnComp__d0 edges_1) vertices_1))))))))));;
end;;


(* lumberhack *)
module Module_lumberhack = struct
let rec inList__d0 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d0 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d1 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d2 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList__d2 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map__d0 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_2) -> 
      (`LH_C(h_3, ((mappend__d0 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_1) -> 
      (`LH_C(h_2, ((mappend__d1 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec snd__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec dfs__d0 _lh_dfs_arg1_1 _lh_dfs_arg2_1 _lh_dfs_arg3_1 =
  (match _lh_dfs_arg2_1 with
    | `LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2) -> 
      (match _lh_dfs_arg3_1 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2))
        | `LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_C_1_1) -> 
          (if ((inList__d0 _lh_dfs_LH_C_0_1) _lh_dfs_LH_P2_0_2) then
            (((dfs__d0 _lh_dfs_arg1_1) (`LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2))) _lh_dfs_LH_C_1_1)
          else
            (let rec _lh_matchIdent_2 = (((dfs__d0 _lh_dfs_arg1_1) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_0_2)), (`LH_N)))) (_lh_dfs_arg1_1 _lh_dfs_LH_C_0_1)) in
              (match _lh_matchIdent_2 with
                | `LH_P2(_lh_dfs_LH_P2_0_3, _lh_dfs_LH_P2_1_3) -> 
                  (((dfs__d0 _lh_dfs_arg1_1) (`LH_P2(_lh_dfs_LH_P2_0_3, ((mappend__d0 (`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_1_3))) _lh_dfs_LH_P2_1_2)))) _lh_dfs_LH_C_1_1)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and dfs__d1 _lh_dfs_arg1_0 _lh_dfs_arg2_0 _lh_dfs_arg3_0 =
  (match _lh_dfs_arg2_0 with
    | `LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0) -> 
      (match _lh_dfs_arg3_0 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0))
        | `LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_C_1_0) -> 
          (if ((inList__d1 _lh_dfs_LH_C_0_0) _lh_dfs_LH_P2_0_0) then
            (((dfs__d1 _lh_dfs_arg1_0) (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0))) _lh_dfs_LH_C_1_0)
          else
            (let rec _lh_matchIdent_0 = (((dfs__d1 _lh_dfs_arg1_0) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_0_0)), (`LH_N)))) (_lh_dfs_arg1_0 _lh_dfs_LH_C_0_0)) in
              (match _lh_matchIdent_0 with
                | `LH_P2(_lh_dfs_LH_P2_0_1, _lh_dfs_LH_P2_1_1) -> 
                  (((dfs__d1 _lh_dfs_arg1_0) (`LH_P2(_lh_dfs_LH_P2_0_1, ((mappend__d1 (`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_1_1))) _lh_dfs_LH_P2_1_0)))) _lh_dfs_LH_C_1_0)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stronglyConnComp__d0 _lh_stronglyConnComp_arg1_0 _lh_stronglyConnComp_arg2_0 =
  let rec new_range_0 = (fun _lh_new_range_arg1_0 _lh_new_range_arg2_0 -> 
    (match _lh_new_range_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_new_range_LH_C_0_0, _lh_new_range_LH_C_1_0) -> 
        (match _lh_new_range_LH_C_0_0 with
          | `LH_P2(_lh_new_range_LH_P2_0_0, _lh_new_range_LH_P2_1_0) -> 
            (if (_lh_new_range_LH_P2_0_0 = _lh_new_range_arg2_0) then
              (`LH_C(_lh_new_range_LH_P2_1_0, ((new_range_0 _lh_new_range_LH_C_1_0) _lh_new_range_arg2_0)))
            else
              ((new_range_0 _lh_new_range_LH_C_1_0) _lh_new_range_arg2_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and span_tree_0 = (fun _lh_span_tree_arg1_0 _lh_span_tree_arg2_0 _lh_span_tree_arg3_0 -> 
    (match _lh_span_tree_arg2_0 with
      | `LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0) -> 
        (match _lh_span_tree_arg3_0 with
          | `LH_N -> 
            (`LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0))
          | `LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_C_1_0) -> 
            (if ((inList__d2 _lh_span_tree_LH_C_0_0) _lh_span_tree_LH_P2_0_0) then
              (((span_tree_0 _lh_span_tree_arg1_0) (`LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0))) _lh_span_tree_LH_C_1_0)
            else
              (let rec _lh_matchIdent_1 = (((dfs__d0 _lh_span_tree_arg1_0) (`LH_P2((`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_0_0)), (`LH_N)))) (_lh_span_tree_arg1_0 _lh_span_tree_LH_C_0_0)) in
                (match _lh_matchIdent_1 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_1, _lh_span_tree_LH_P2_1_1) -> 
                    (((span_tree_0 _lh_span_tree_arg1_0) (`LH_P2(_lh_span_tree_LH_P2_0_1, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_1_1)), _lh_span_tree_LH_P2_1_0))))) _lh_span_tree_LH_C_1_0)
                  | _ -> 
                    (failwith "error"))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and swap_0 = (fun _lh_swap_arg1_0 -> 
    (match _lh_swap_arg1_0 with
      | `LH_P2(_lh_swap_LH_P2_0_0, _lh_swap_LH_P2_1_0) -> 
        (`LH_P2(_lh_swap_LH_P2_1_0, _lh_swap_LH_P2_0_0))
      | _ -> 
        (failwith "error")))
  in (snd__d0 (((span_tree_0 (new_range_0 ((map__d0 swap_0) _lh_stronglyConnComp_arg1_0))) (`LH_P2((`LH_N), (`LH_N)))) (snd__d1 (((dfs__d1 (new_range_0 _lh_stronglyConnComp_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_stronglyConnComp_arg2_0))))
and testScc_nofib__d0 _lh_testScc_nofib_arg1_0 =
  (let rec a_0 = 1 in
    (let rec b_0 = 2 in
      (let rec c_0 = 3 in
        (let rec d_0 = 4 in
          (let rec f_1 = 5 in
            (let rec g_0 = 6 in
              (let rec h_1 = 7 in
                (let rec vertices_0 = (`LH_C(a_0, (`LH_C(b_0, (`LH_C(c_0, (`LH_C(d_0, (`LH_C(f_1, (`LH_C(g_0, (`LH_C(h_1, (`LH_N))))))))))))))) in
                  (let rec edges_0 = (`LH_C((`LH_P2(b_0, a_0)), (`LH_C((`LH_P2(c_0, b_0)), (`LH_C((`LH_P2(c_0, d_0)), (`LH_C((`LH_P2(c_0, h_1)), (`LH_C((`LH_P2(d_0, c_0)), (`LH_C((`LH_P2(f_1, a_0)), (`LH_C((`LH_P2(f_1, g_0)), (`LH_C((`LH_P2(f_1, h_1)), (`LH_C((`LH_P2(g_0, f_1)), (`LH_C((`LH_P2(h_1, g_0)), (`LH_N))))))))))))))))))))) in
                    ((stronglyConnComp__d0 edges_0) vertices_0))))))))));;
end;;


(* lumberhack_pop_out *)
module Module_lumberhack_pop_out = struct
let rec inList__d0 _lh_inList_arg1_1 _lh_inList_arg2_1 =
  (match _lh_inList_arg2_1 with
    | `LH_C(_lh_inList_LH_C_0_1, _lh_inList_LH_C_1_1) -> 
      (if (_lh_inList_arg1_1 = _lh_inList_LH_C_0_1) then
        true
      else
        ((inList__d0 _lh_inList_arg1_1) _lh_inList_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d1 _lh_inList_arg1_2 _lh_inList_arg2_2 =
  (match _lh_inList_arg2_2 with
    | `LH_C(_lh_inList_LH_C_0_2, _lh_inList_LH_C_1_2) -> 
      (if (_lh_inList_arg1_2 = _lh_inList_LH_C_0_2) then
        true
      else
        ((inList__d1 _lh_inList_arg1_2) _lh_inList_LH_C_1_2))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec inList__d2 _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList__d2 _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map__d0 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_2) -> 
      (`LH_C(h_3, ((mappend__d0 t_2) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend__d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_1) -> 
      (`LH_C(h_2, ((mappend__d1 t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec snd__d0 _lh_snd_arg1_1 =
  (match _lh_snd_arg1_1 with
    | `LH_P2(_lh_snd_LH_P2_0_1, _lh_snd_LH_P2_1_1) -> 
      _lh_snd_LH_P2_1_1
    | _ -> 
      (failwith "error"));;
let rec snd__d1 _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec dfs__d0 _lh_dfs_arg1_1 _lh_dfs_arg2_1 _lh_dfs_arg3_1 =
  (match _lh_dfs_arg2_1 with
    | `LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2) -> 
      (match _lh_dfs_arg3_1 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2))
        | `LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_C_1_1) -> 
          (if ((inList__d0 _lh_dfs_LH_C_0_1) _lh_dfs_LH_P2_0_2) then
            (((dfs__d0 _lh_dfs_arg1_1) (`LH_P2(_lh_dfs_LH_P2_0_2, _lh_dfs_LH_P2_1_2))) _lh_dfs_LH_C_1_1)
          else
            (let rec _lh_matchIdent_2 = (((dfs__d0 _lh_dfs_arg1_1) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_0_2)), (`LH_N)))) (_lh_dfs_arg1_1 _lh_dfs_LH_C_0_1)) in
              (match _lh_matchIdent_2 with
                | `LH_P2(_lh_dfs_LH_P2_0_3, _lh_dfs_LH_P2_1_3) -> 
                  (((dfs__d0 _lh_dfs_arg1_1) (`LH_P2(_lh_dfs_LH_P2_0_3, ((mappend__d0 (`LH_C(_lh_dfs_LH_C_0_1, _lh_dfs_LH_P2_1_3))) _lh_dfs_LH_P2_1_2)))) _lh_dfs_LH_C_1_1)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and dfs__d1 _lh_dfs_arg1_0 _lh_dfs_arg2_0 _lh_dfs_arg3_0 =
  (match _lh_dfs_arg2_0 with
    | `LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0) -> 
      (match _lh_dfs_arg3_0 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0))
        | `LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_C_1_0) -> 
          (if ((inList__d1 _lh_dfs_LH_C_0_0) _lh_dfs_LH_P2_0_0) then
            (((dfs__d1 _lh_dfs_arg1_0) (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0))) _lh_dfs_LH_C_1_0)
          else
            (let rec _lh_matchIdent_0 = (((dfs__d1 _lh_dfs_arg1_0) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_0_0)), (`LH_N)))) (_lh_dfs_arg1_0 _lh_dfs_LH_C_0_0)) in
              (match _lh_matchIdent_0 with
                | `LH_P2(_lh_dfs_LH_P2_0_1, _lh_dfs_LH_P2_1_1) -> 
                  (((dfs__d1 _lh_dfs_arg1_0) (`LH_P2(_lh_dfs_LH_P2_0_1, ((mappend__d1 (`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_1_1))) _lh_dfs_LH_P2_1_0)))) _lh_dfs_LH_C_1_0)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and stronglyConnComp__d0 _lh_stronglyConnComp_arg1_0 _lh_stronglyConnComp_arg2_0 =
  let rec new_range_0 = (fun _lh_new_range_arg1_0 _lh_new_range_arg2_0 -> 
    (match _lh_new_range_arg1_0 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_new_range_LH_C_0_0, _lh_new_range_LH_C_1_0) -> 
        (match _lh_new_range_LH_C_0_0 with
          | `LH_P2(_lh_new_range_LH_P2_0_0, _lh_new_range_LH_P2_1_0) -> 
            (if (_lh_new_range_LH_P2_0_0 = _lh_new_range_arg2_0) then
              (`LH_C(_lh_new_range_LH_P2_1_0, ((new_range_0 _lh_new_range_LH_C_1_0) _lh_new_range_arg2_0)))
            else
              ((new_range_0 _lh_new_range_LH_C_1_0) _lh_new_range_arg2_0))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and span_tree_0 = (fun _lh_span_tree_arg1_0 _lh_span_tree_arg2_0 _lh_span_tree_arg3_0 -> 
    (match _lh_span_tree_arg2_0 with
      | `LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0) -> 
        (match _lh_span_tree_arg3_0 with
          | `LH_N -> 
            (`LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0))
          | `LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_C_1_0) -> 
            (if ((inList__d2 _lh_span_tree_LH_C_0_0) _lh_span_tree_LH_P2_0_0) then
              (((span_tree_0 _lh_span_tree_arg1_0) (`LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0))) _lh_span_tree_LH_C_1_0)
            else
              (let rec _lh_matchIdent_1 = (((dfs__d0 _lh_span_tree_arg1_0) (`LH_P2((`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_0_0)), (`LH_N)))) (_lh_span_tree_arg1_0 _lh_span_tree_LH_C_0_0)) in
                (match _lh_matchIdent_1 with
                  | `LH_P2(_lh_span_tree_LH_P2_0_1, _lh_span_tree_LH_P2_1_1) -> 
                    (((span_tree_0 _lh_span_tree_arg1_0) (`LH_P2(_lh_span_tree_LH_P2_0_1, (`LH_C((`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_1_1)), _lh_span_tree_LH_P2_1_0))))) _lh_span_tree_LH_C_1_0)
                  | _ -> 
                    (failwith "error"))))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
  and swap_0 = (fun _lh_swap_arg1_0 -> 
    (match _lh_swap_arg1_0 with
      | `LH_P2(_lh_swap_LH_P2_0_0, _lh_swap_LH_P2_1_0) -> 
        (`LH_P2(_lh_swap_LH_P2_1_0, _lh_swap_LH_P2_0_0))
      | _ -> 
        (failwith "error")))
  in (snd__d0 (((span_tree_0 (new_range_0 ((map__d0 swap_0) _lh_stronglyConnComp_arg1_0))) (`LH_P2((`LH_N), (`LH_N)))) (snd__d1 (((dfs__d1 (new_range_0 _lh_stronglyConnComp_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_stronglyConnComp_arg2_0))))
and testScc_nofib__d0 _lh_testScc_nofib_arg1_0 =
  (let rec a_0 = 1 in
    (let rec b_0 = 2 in
      (let rec c_0 = 3 in
        (let rec d_0 = 4 in
          (let rec f_1 = 5 in
            (let rec g_0 = 6 in
              (let rec h_1 = 7 in
                (let rec vertices_0 = (`LH_C(a_0, (`LH_C(b_0, (`LH_C(c_0, (`LH_C(d_0, (`LH_C(f_1, (`LH_C(g_0, (`LH_C(h_1, (`LH_N))))))))))))))) in
                  (let rec edges_0 = (`LH_C((`LH_P2(b_0, a_0)), (`LH_C((`LH_P2(c_0, b_0)), (`LH_C((`LH_P2(c_0, d_0)), (`LH_C((`LH_P2(c_0, h_1)), (`LH_C((`LH_P2(d_0, c_0)), (`LH_C((`LH_P2(f_1, a_0)), (`LH_C((`LH_P2(f_1, g_0)), (`LH_C((`LH_P2(f_1, h_1)), (`LH_C((`LH_P2(g_0, f_1)), (`LH_C((`LH_P2(h_1, g_0)), (`LH_N))))))))))))))))))))) in
                    ((stronglyConnComp__d0 edges_0) vertices_0))))))))));;
end;;


Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Scc_nofib" (fun () -> ignore (let open Module_original in ((testScc_nofib__d0 0))));
  Bench.Test.create ~name:"lumberhack_Scc_nofib" (fun () -> ignore (let open Module_lumberhack in ((testScc_nofib__d0 0))));
  Bench.Test.create ~name:"lumberhack_pop_out_Scc_nofib" (fun () -> ignore (let open Module_lumberhack_pop_out in ((testScc_nofib__d0 0))));
])
