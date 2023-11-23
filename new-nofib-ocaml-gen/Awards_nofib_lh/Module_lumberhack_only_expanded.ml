

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec compareTuple2__d0 _lh_compareTuple2_arg1_1 _lh_compareTuple2_arg2_1 =
  (match _lh_compareTuple2_arg1_1 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_2, _lh_compareTuple2_LH_P2_1_2) -> 
      (match _lh_compareTuple2_arg2_1 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_3, _lh_compareTuple2_LH_P2_1_3) -> 
          (_lh_compareTuple2_LH_P2_0_2 <= _lh_compareTuple2_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec competitors__d0 _lh_competitors_arg1_1 =
  (`LH_C((`LH_P2((`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))), (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_1, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))))), (`LH_C((`LH_P2((`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))), (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_1, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))))), (`LH_C((`LH_P2((`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))), (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_1, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))))), (`LH_C((`LH_P2((`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))), (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_1, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))))), (`LH_N)))))))));;
let rec delete__d0 _lh_delete_arg1_1 _lh_delete_arg2_1 =
  (match _lh_delete_arg1_1 with
    | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
      (if (_lh_delete_LH_C_0_1 = _lh_delete_arg2_1) then
        ((delete__d0 _lh_delete_LH_C_1_1) _lh_delete_arg2_1)
      else
        (`LH_C(_lh_delete_LH_C_0_1, ((delete__d0 _lh_delete_LH_C_1_1) _lh_delete_arg2_1))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d0 a_7 b_4 =
  (if (a_7 <= b_4) then
    (`LH_C(a_7, ((enumFromTo__d0 (a_7 + 1)) b_4)))
  else
    (`LH_N));;
let rec filter__d0 f_1_7 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_7, t_2_9) -> 
      (if (f_1_7 h_2_7) then
        (`LH_C(h_2_7, ((filter__d0 f_1_7) t_2_9)))
      else
        ((filter__d0 f_1_7) t_2_9))
    | `LH_N -> 
      (`LH_N));;
let rec foldl__d0 f_1_6 i_3 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (((foldl__d0 f_1_6) ((f_1_6 i_3) h_2_6)) t_2_8)
    | `LH_N -> 
      i_3);;
let rec map__d0 f_1_8 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_8 h_2_9), ((map__d0 f_1_8) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C((f_1_9 h_3_1), ((map__d1 f_1_9) t_3_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_5 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C((f_1_5 h_2_5), ((map__d2 f_1_5) t_2_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C((f_1_3 h_2_1), ((map__d3 f_1_3) t_2_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d4 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_1_4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_4 h_2_2), ((map__d5 f_1_4) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend__d0 t_3_2) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d1 t_2_5) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d2 t_2_6) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec sum__d0 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_8, t_3_0) -> 
      (h_2_8 + (sum__d0 t_3_0))
    | `LH_N -> 
      0);;
let rec awards__d0 _lh_awards_arg1_1 =
  (let rec sumscores_1 = ((map__d0 (fun p_1 -> 
    (`LH_P2((sum__d0 p_1), p_1)))) ((perms__d0 3) _lh_awards_arg1_1)) in
    (let rec atleast_1 = (fun threshold_1 -> 
      ((filter__d0 (fun sum_p_1 -> 
        (let rec _lh_matchIdent_6 = sum_p_1 in
          (match _lh_matchIdent_6 with
            | `LH_P2(_lh_awards_LH_P2_0_2, _lh_awards_LH_P2_1_2) -> 
              (_lh_awards_LH_P2_0_2 >= threshold_1)
            | _ -> 
              (failwith "error"))))) sumscores_1)) in
      (let rec award_1 = (fun name_threshold_1 -> 
        (let rec _lh_matchIdent_7 = name_threshold_1 in
          (match _lh_matchIdent_7 with
            | `LH_P2(_lh_awards_LH_P2_0_3, _lh_awards_LH_P2_1_3) -> 
              ((map__d1 (fun ps_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_3, ps_1)))) (sort__d0 (atleast_1 _lh_awards_LH_P2_1_3)))
            | _ -> 
              (failwith "error")))) in
        ((mappend__d0 ((mappend__d1 (award_1 (`LH_P2((`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))), 70)))) (award_1 (`LH_P2((`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))), 60))))) (award_1 (`LH_P2((`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))), 50)))))))
and findallawards__d0 _lh_findallawards_arg1_1 =
  ((map__d4 (fun name_scores_1 -> 
    (let rec _lh_matchIdent_5 = name_scores_1 in
      (match _lh_matchIdent_5 with
        | `LH_P2(_lh_findallawards_LH_P2_0_1, _lh_findallawards_LH_P2_1_1) -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_1, (findawards__d0 _lh_findallawards_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))))) _lh_findallawards_arg1_1)
and findawards__d0 _lh_findawards_arg1_1 =
  (let rec _lh_matchIdent_8 = (awards__d0 _lh_findawards_arg1_1) in
    (match _lh_matchIdent_8 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_1, _lh_findawards_LH_C_1_1) -> 
        (let rec _lh_matchIdent_9 = _lh_findawards_LH_C_0_1 in
          (match _lh_matchIdent_9 with
            | `LH_P2(_lh_findawards_LH_P2_0_2, _lh_findawards_LH_P2_1_2) -> 
              (match _lh_findawards_LH_P2_1_2 with
                | `LH_P2(_lh_findawards_LH_P2_0_3, _lh_findawards_LH_P2_1_3) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_2, (`LH_P2(_lh_findawards_LH_P2_0_3, _lh_findawards_LH_P2_1_3)))), (findawards__d0 ((listDiff__d0 _lh_findawards_arg1_1) _lh_findawards_LH_P2_1_3))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and listDiff__d0 =
  (foldl__d0 delete__d0)
and perms__d0 _lh_perms_arg1_1 _lh_perms_arg2_1 =
  (match _lh_perms_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_1 with
        | 1 -> 
          ((map__d3 (fun x_6 -> 
            (`LH_C(x_6, (`LH_N))))) _lh_perms_arg2_1)
        | _ -> 
          (match _lh_perms_arg2_1 with
            | `LH_C(_lh_perms_LH_C_0_1, _lh_perms_LH_C_1_1) -> 
              ((mappend__d2 ((map__d2 (fun x_7 -> 
                (`LH_C(_lh_perms_LH_C_0_1, x_7)))) ((perms__d0 (_lh_perms_arg1_1 - 1)) _lh_perms_LH_C_1_1))) ((perms__d0 _lh_perms_arg1_1) _lh_perms_LH_C_1_1))
            | _ -> 
              (failwith "error"))))
and qpart__d0 _lh_qpart_arg1_1 _lh_qpart_arg2_1 _lh_qpart_arg3_1 _lh_qpart_arg4_1 _lh_qpart_arg5_1 _lh_qpart_arg6_1 =
  (match _lh_qpart_arg3_1 with
    | `LH_N -> 
      (((rqsort__d0 _lh_qpart_arg1_1) _lh_qpart_arg4_1) (`LH_C(_lh_qpart_arg2_1, (((rqsort__d1 _lh_qpart_arg1_1) _lh_qpart_arg5_1) _lh_qpart_arg6_1))))
    | `LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_LH_C_1_1) -> 
      (if ((_lh_qpart_arg1_1 _lh_qpart_arg2_1) _lh_qpart_LH_C_0_1) then
        ((((((qpart__d0 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) _lh_qpart_arg4_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg5_1))) _lh_qpart_arg6_1)
      else
        ((((((qpart__d0 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg4_1))) _lh_qpart_arg5_1) _lh_qpart_arg6_1))
    | _ -> 
      (failwith "error"))
and qsort__d0 _lh_qsort_arg1_1 _lh_qsort_arg2_1 _lh_qsort_arg3_1 =
  (match _lh_qsort_arg2_1 with
    | `LH_N -> 
      _lh_qsort_arg3_1
    | `LH_C(_lh_qsort_LH_C_0_1, _lh_qsort_LH_C_1_1) -> 
      (match _lh_qsort_LH_C_1_1 with
        | `LH_N -> 
          (`LH_C(_lh_qsort_LH_C_0_1, _lh_qsort_arg3_1))
        | _ -> 
          ((((((qpart__d0 _lh_qsort_arg1_1) _lh_qsort_LH_C_0_1) _lh_qsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1))
    | _ -> 
      (failwith "error"))
and rqpart__d0 _lh_rqpart_arg1_1 _lh_rqpart_arg2_1 _lh_rqpart_arg3_1 _lh_rqpart_arg4_1 _lh_rqpart_arg5_1 _lh_rqpart_arg6_1 =
  (match _lh_rqpart_arg3_1 with
    | `LH_N -> 
      (((qsort__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_arg2_1, (((qsort__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1))))
    | `LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_LH_C_1_1) -> 
      (if ((_lh_rqpart_arg1_1 _lh_rqpart_LH_C_0_1) _lh_rqpart_arg2_1) then
        ((((((rqpart__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg4_1))) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1)
      else
        ((((((rqpart__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg5_1))) _lh_rqpart_arg6_1))
    | _ -> 
      (failwith "error"))
and rqpart__d1 _lh_rqpart_arg1_2 _lh_rqpart_arg2_2 _lh_rqpart_arg3_2 _lh_rqpart_arg4_2 _lh_rqpart_arg5_2 _lh_rqpart_arg6_2 =
  (match _lh_rqpart_arg3_2 with
    | `LH_N -> 
      (((qsort__d0 _lh_rqpart_arg1_2) _lh_rqpart_arg4_2) (`LH_C(_lh_rqpart_arg2_2, (((qsort__d0 _lh_rqpart_arg1_2) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2))))
    | `LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_LH_C_1_2) -> 
      (if ((_lh_rqpart_arg1_2 _lh_rqpart_LH_C_0_2) _lh_rqpart_arg2_2) then
        ((((((rqpart__d1 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg4_2))) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2)
      else
        ((((((rqpart__d1 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) _lh_rqpart_arg4_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg5_2))) _lh_rqpart_arg6_2))
    | _ -> 
      (failwith "error"))
and rqsort__d0 _lh_rqsort_arg1_2 _lh_rqsort_arg2_2 _lh_rqsort_arg3_2 =
  (match _lh_rqsort_arg2_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_2
    | `LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_LH_C_1_2) -> 
      (match _lh_rqsort_LH_C_1_2 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_arg3_2))
        | _ -> 
          ((((((rqpart__d0 _lh_rqsort_arg1_2) _lh_rqsort_LH_C_0_2) _lh_rqsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2))
    | _ -> 
      (failwith "error"))
and rqsort__d1 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_arg3_1))
        | _ -> 
          ((((((rqpart__d1 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"))
and sort__d0 _lh_sort_arg1_1 =
  (((qsort__d0 (fun a_6 b_3 -> 
    ((compareTuple2__d0 a_6) b_3))) _lh_sort_arg1_1) (`LH_N))
and testAwards_nofib__d0 _lh_testAwards_nofib_arg1_1 =
  ((map__d5 (fun x_5 -> 
    (findallawards__d0 (competitors__d0 (x_5 mod 100))))) ((enumFromTo__d0 1) _lh_testAwards_nofib_arg1_1));;
end;;

