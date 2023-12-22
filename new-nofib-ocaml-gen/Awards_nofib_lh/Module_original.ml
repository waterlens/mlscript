
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original = struct
let rec competitors_lh _lh_competitors_arg1_0 =
  (`LH_C((`LH_P2((`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))), (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_0, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))))), (`LH_C((`LH_P2((`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))), (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_0, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))))), (`LH_C((`LH_P2((`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))), (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_0, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))))), (`LH_C((`LH_P2((`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))), (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_0, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))))), (`LH_N)))))))));;
let rec enumFromTo_lh a_0 b_0 =
  (if (a_0 <= b_0) then
    (`LH_C(a_0, ((enumFromTo_lh (a_0 + 1)) b_0)))
  else
    (`LH_N));;
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec foldl_lh f_2 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (((foldl_lh f_2) ((f_2 i_0) h_2)) t_2)
    | `LH_N -> 
      i_0);;
let rec delete_lh _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete_lh _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete_lh _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec compareTuple2_lh _lh_compareTuple2_arg1_0 _lh_compareTuple2_arg2_0 =
  (match _lh_compareTuple2_arg1_0 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_0, _lh_compareTuple2_LH_P2_1_0) -> 
      (match _lh_compareTuple2_arg2_0 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1, _lh_compareTuple2_LH_P2_1_1) -> 
          (_lh_compareTuple2_LH_P2_0_0 <= _lh_compareTuple2_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec qpart_lh _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort_lh _lh_qpart_arg1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_arg2_0, (((rqsort_lh _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart_lh _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart_lh _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
qsort_lh _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_arg3_0))
        | _ -> 
          ((((((qpart_lh _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and
rqpart_lh _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort_lh _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_arg2_0, (((qsort_lh _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart_lh _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart_lh _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
rqsort_lh _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_arg3_0))
        | _ -> 
          ((((((rqpart_lh _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec sum_lh ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (h_4 + (sum_lh t_4))
    | `LH_N -> 
      0);;
let rec filter_lh f_1 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (if (f_1 h_1) then
        (`LH_C(h_1, ((filter_lh f_1) t_1)))
      else
        ((filter_lh f_1) t_1))
    | `LH_N -> 
      (`LH_N));;
let rec listDiff_lh =
  (foldl_lh delete_lh);;
let rec sort_lh _lh_sort_arg1_0 =
  (((qsort_lh (fun a_1 b_1 -> 
    ((compareTuple2_lh a_1) b_1))) _lh_sort_arg1_0) (`LH_N));;
let rec perms_lh _lh_perms_arg1_0 _lh_perms_arg2_0 =
  (match _lh_perms_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_0 with
        | 1 -> 
          ((map_lh (fun x_1 -> 
            (`LH_C(x_1, (`LH_N))))) _lh_perms_arg2_0)
        | _ -> 
          (match _lh_perms_arg2_0 with
            | `LH_C(_lh_perms_LH_C_0_0, _lh_perms_LH_C_1_0) -> 
              ((mappend_lh ((map_lh (fun x_2 -> 
                (`LH_C(_lh_perms_LH_C_0_0, x_2)))) ((perms_lh (_lh_perms_arg1_0 - 1)) _lh_perms_LH_C_1_0))) ((perms_lh _lh_perms_arg1_0) _lh_perms_LH_C_1_0))
            | _ -> 
              (failwith "error"))));;
let rec awards_lh _lh_awards_arg1_0 =
  (let rec sumscores_0 = ((map_lh (fun p_0 -> 
    (`LH_P2((sum_lh p_0), p_0)))) ((perms_lh 3) _lh_awards_arg1_0)) in
    (let rec atleast_0 = (fun threshold_0 -> 
      ((filter_lh (fun sum_p_0 -> 
        (let rec _lh_matchIdent_1 = sum_p_0 in
          (match _lh_matchIdent_1 with
            | `LH_P2(_lh_awards_LH_P2_0_0, _lh_awards_LH_P2_1_0) -> 
              (_lh_awards_LH_P2_0_0 >= threshold_0)
            | _ -> 
              (failwith "error"))))) sumscores_0)) in
      (let rec award_0 = (fun name_threshold_0 -> 
        (let rec _lh_matchIdent_2 = name_threshold_0 in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_awards_LH_P2_0_1, _lh_awards_LH_P2_1_1) -> 
              ((map_lh (fun ps_0 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1, ps_0)))) (sort_lh (atleast_0 _lh_awards_LH_P2_1_1)))
            | _ -> 
              (failwith "error")))) in
        ((mappend_lh ((mappend_lh (award_0 (`LH_P2((`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))), 70)))) (award_0 (`LH_P2((`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))), 60))))) (award_0 (`LH_P2((`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))), 50)))))));;
let rec findawards_lh _lh_findawards_arg1_0 =
  (let rec _lh_matchIdent_3 = (awards_lh _lh_findawards_arg1_0) in
    (match _lh_matchIdent_3 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_0, _lh_findawards_LH_C_1_0) -> 
        (let rec _lh_matchIdent_4 = _lh_findawards_LH_C_0_0 in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_findawards_LH_P2_0_0, _lh_findawards_LH_P2_1_0) -> 
              (match _lh_findawards_LH_P2_1_0 with
                | `LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_0, (`LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1)))), (findawards_lh ((listDiff_lh _lh_findawards_arg1_0) _lh_findawards_LH_P2_1_1))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec findallawards_lh _lh_findallawards_arg1_0 =
  ((map_lh (fun name_scores_0 -> 
    (let rec _lh_matchIdent_0 = name_scores_0 in
      (match _lh_matchIdent_0 with
        | `LH_P2(_lh_findallawards_LH_P2_0_0, _lh_findallawards_LH_P2_1_0) -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_0, (findawards_lh _lh_findallawards_LH_P2_1_0)))
        | _ -> 
          (failwith "error"))))) _lh_findallawards_arg1_0);;
let rec testAwards_nofib_lh _lh_testAwards_nofib_arg1_0 =
  ((map_lh (fun x_0 -> 
    (findallawards_lh (competitors_lh (x_0 mod 100))))) ((enumFromTo_lh 1) _lh_testAwards_nofib_arg1_0));;
end;;

