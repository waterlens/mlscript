
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec snd_lh _lh_snd_arg1_0 =
  (match _lh_snd_arg1_0 with
    | `LH_P2(_lh_snd_LH_P2_0_0, _lh_snd_LH_P2_1_0) -> 
      _lh_snd_LH_P2_1_0
    | _ -> 
      (failwith "error"));;
let rec inList_lh _lh_inList_arg1_0 _lh_inList_arg2_0 =
  (match _lh_inList_arg2_0 with
    | `LH_C(_lh_inList_LH_C_0_0, _lh_inList_LH_C_1_0) -> 
      (if (_lh_inList_arg1_0 = _lh_inList_LH_C_0_0) then
        true
      else
        ((inList_lh _lh_inList_arg1_0) _lh_inList_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec dfs_lh _lh_dfs_arg1_0 _lh_dfs_arg2_0 _lh_dfs_arg3_0 =
  (match _lh_dfs_arg2_0 with
    | `LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0) -> 
      (match _lh_dfs_arg3_0 with
        | `LH_N -> 
          (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0))
        | `LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_C_1_0) -> 
          (if ((inList_lh _lh_dfs_LH_C_0_0) _lh_dfs_LH_P2_0_0) then
            (((dfs_lh _lh_dfs_arg1_0) (`LH_P2(_lh_dfs_LH_P2_0_0, _lh_dfs_LH_P2_1_0))) _lh_dfs_LH_C_1_0)
          else
            (let rec _lh_matchIdent_1 = (((dfs_lh _lh_dfs_arg1_0) (`LH_P2((`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_0_0)), (`LH_N)))) (_lh_dfs_arg1_0 _lh_dfs_LH_C_0_0)) in
              (match _lh_matchIdent_1 with
                | `LH_P2(_lh_dfs_LH_P2_0_1, _lh_dfs_LH_P2_1_1) -> 
                  (((dfs_lh _lh_dfs_arg1_0) (`LH_P2(_lh_dfs_LH_P2_0_1, ((mappend_lh (`LH_C(_lh_dfs_LH_C_0_0, _lh_dfs_LH_P2_1_1))) _lh_dfs_LH_P2_1_0)))) _lh_dfs_LH_C_1_0)
                | _ -> 
                  (failwith "error"))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec stronglyConnComp_lh _lh_stronglyConnComp_arg1_0 _lh_stronglyConnComp_arg2_0 =
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
            (if ((inList_lh _lh_span_tree_LH_C_0_0) _lh_span_tree_LH_P2_0_0) then
              (((span_tree_0 _lh_span_tree_arg1_0) (`LH_P2(_lh_span_tree_LH_P2_0_0, _lh_span_tree_LH_P2_1_0))) _lh_span_tree_LH_C_1_0)
            else
              (let rec _lh_matchIdent_0 = (((dfs_lh _lh_span_tree_arg1_0) (`LH_P2((`LH_C(_lh_span_tree_LH_C_0_0, _lh_span_tree_LH_P2_0_0)), (`LH_N)))) (_lh_span_tree_arg1_0 _lh_span_tree_LH_C_0_0)) in
                (match _lh_matchIdent_0 with
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
  in (snd_lh (((span_tree_0 (new_range_0 ((map_lh swap_0) _lh_stronglyConnComp_arg1_0))) (`LH_P2((`LH_N), (`LH_N)))) (snd_lh (((dfs_lh (new_range_0 _lh_stronglyConnComp_arg1_0)) (`LH_P2((`LH_N), (`LH_N)))) _lh_stronglyConnComp_arg2_0))));;
let rec testScc_nofib_lh _lh_testScc_nofib_arg1_0 =
  (let rec a_0 = 1 in
    (let rec b_0 = 2 in
      (let rec c_0 = 3 in
        (let rec d_0 = 4 in
          (let rec f_1 = 5 in
            (let rec g_0 = 6 in
              (let rec h_2 = 7 in
                (let rec vertices_0 = (`LH_C(a_0, (`LH_C(b_0, (`LH_C(c_0, (`LH_C(d_0, (`LH_C(f_1, (`LH_C(g_0, (`LH_C(h_2, (`LH_N))))))))))))))) in
                  (let rec edges_0 = (`LH_C((`LH_P2(b_0, a_0)), (`LH_C((`LH_P2(c_0, b_0)), (`LH_C((`LH_P2(c_0, d_0)), (`LH_C((`LH_P2(c_0, h_2)), (`LH_C((`LH_P2(d_0, c_0)), (`LH_C((`LH_P2(f_1, a_0)), (`LH_C((`LH_P2(f_1, g_0)), (`LH_C((`LH_P2(f_1, h_2)), (`LH_C((`LH_P2(g_0, f_1)), (`LH_C((`LH_P2(h_2, g_0)), (`LH_N))))))))))))))))))))) in
                    ((stronglyConnComp_lh edges_0) vertices_0))))))))));;
end;;

