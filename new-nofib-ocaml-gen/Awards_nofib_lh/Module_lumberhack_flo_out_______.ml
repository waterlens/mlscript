

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______(LH_Dum: sig end) = struct
let rec enumFromTo_lh__d1 a_1 b_1 _lh_popOutId_0_0 =
  (if (a_1 <= b_1) then
    (let rec t_1 = ((enumFromTo_lh__d1 (a_1 + 1)) b_1) in
      (let rec h_1 = a_1 in
        (`LH_C((_lh_popOutId_0_0 h_1), (t_1 _lh_popOutId_0_0)))))
  else
    (`LH_N));;
let rec foldl_lh__d1 f_5 i_0 ls_3 =
  (match ls_3 with
    | `LH_C(h_5, t_5) -> 
      (((foldl_lh__d1 f_5) ((f_5 i_0) h_5)) t_5)
    | `LH_N -> 
      i_0);;
let rec delete_lh__d1 _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete_lh__d1 _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete_lh__d1 _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec listDiff_lh__d1 =
  (foldl_lh__d1 delete_lh__d1);;
let rec mappend_lh__d1 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d1 t_6) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec compareTuple2_lh__d1 _lh_compareTuple2_arg1_0 _lh_compareTuple2_arg2_0 =
  (match _lh_compareTuple2_arg1_0 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_0, _lh_compareTuple2_LH_P2_1_0) -> 
      (match _lh_compareTuple2_arg2_0 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1, _lh_compareTuple2_LH_P2_1_1) -> 
          (_lh_compareTuple2_LH_P2_0_0 <= _lh_compareTuple2_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec qpart_lh__d1 _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort_lh__d2 _lh_qpart_arg1_0) _lh_qpart_arg4_0) (let rec t_1_8 = (((rqsort_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0) in
        (let rec h_1_8 = _lh_qpart_arg2_0 in
          (fun f_1_7 -> 
            (`LH_C((f_1_7 h_1_8), (t_1_8 f_1_7)))))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart_lh__d1 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
qsort_lh__d1 _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_4 = _lh_qsort_arg3_0 in
            (let rec h_4 = _lh_qsort_LH_C_0_0 in
              (fun f_4 -> 
                (`LH_C((f_4 h_4), (t_4 f_4))))))
        | _ -> 
          ((((((qpart_lh__d1 _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d1 _lh_rqpart_arg1_1 _lh_rqpart_arg2_1 _lh_rqpart_arg3_1 _lh_rqpart_arg4_1 _lh_rqpart_arg5_1 _lh_rqpart_arg6_1 =
  (match _lh_rqpart_arg3_1 with
    | `LH_N -> 
      (((qsort_lh__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg4_1) (let rec t_1_9 = (((qsort_lh__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1) in
        (let rec h_1_9 = _lh_rqpart_arg2_1 in
          (fun f_1_9 -> 
            (`LH_C((f_1_9 h_1_9), (t_1_9 f_1_9)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_LH_C_1_1) -> 
      (if ((_lh_rqpart_arg1_1 _lh_rqpart_LH_C_0_1) _lh_rqpart_arg2_1) then
        ((((((rqpart_lh__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg4_1))) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1)
      else
        ((((((rqpart_lh__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg5_1))) _lh_rqpart_arg6_1))
    | _ -> 
      (failwith "error"))
and
rqpart_lh__d2 _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort_lh__d1 _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (let rec t_7 = (((qsort_lh__d1 _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0) in
        (let rec h_7 = _lh_rqpart_arg2_0 in
          (fun f_6 -> 
            (`LH_C((f_6 h_7), (t_7 f_6)))))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart_lh__d2 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart_lh__d2 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d1 _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_1_1 = _lh_rqsort_arg3_0 in
            (let rec h_1_1 = _lh_rqsort_LH_C_0_0 in
              (fun f_9 -> 
                (`LH_C((f_9 h_1_1), (t_1_1 f_9))))))
        | _ -> 
          ((((((rqpart_lh__d1 _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"))
and
rqsort_lh__d2 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (let rec t_1_2 = _lh_rqsort_arg3_1 in
            (let rec h_1_2 = _lh_rqsort_LH_C_0_1 in
              (fun f_1_0 -> 
                (`LH_C((f_1_0 h_1_2), (t_1_2 f_1_0))))))
        | _ -> 
          ((((((rqpart_lh__d2 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"));;
let rec sort_lh__d1 _lh_sort_arg1_0 =
  (((qsort_lh__d1 (fun a_0 b_0 -> 
    ((compareTuple2_lh__d1 a_0) b_0))) _lh_sort_arg1_0) (fun f_0 -> 
    (`LH_N)));;
let rec map_lh__d6 f_7 ls_5 _lh_popOutId_0_2 =
  (match ls_5 with
    | `LH_C(h_9, t_9) -> 
      (let rec t_1_0 = ((map_lh__d6 f_7) t_9) in
        (let rec h_1_0 = (f_7 h_9) in
          (`LH_C(h_1_0, (t_1_0 _lh_popOutId_0_2)))))
    | `LH_N -> 
      _lh_popOutId_0_2);;
let rec map_lh__d5 f_1_6 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C((f_1_6 h_1_7), ((map_lh__d5 f_1_6) t_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec perms_lh__d1 _lh_perms_arg1_0 _lh_perms_arg2_0 =
  (match _lh_perms_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_0 with
        | 1 -> 
          ((map_lh__d5 (fun x_0 -> 
            (`LH_C(x_0, (`LH_N))))) _lh_perms_arg2_0)
        | _ -> 
          (match _lh_perms_arg2_0 with
            | `LH_C(_lh_perms_LH_C_0_0, _lh_perms_LH_C_1_0) -> 
              (((map_lh__d6 (fun x_1 -> 
                (`LH_C(_lh_perms_LH_C_0_0, x_1)))) ((perms_lh__d1 (_lh_perms_arg1_0 - 1)) _lh_perms_LH_C_1_0)) ((perms_lh__d1 _lh_perms_arg1_0) _lh_perms_LH_C_1_0))
            | _ -> 
              (failwith "error"))));;
let rec mappend_lh__d2 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d2 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec sum_lh__d1 ls_4 =
  (match ls_4 with
    | `LH_C(h_8, t_8) -> 
      (h_8 + (sum_lh__d1 t_8))
    | `LH_N -> 
      0);;
let rec map_lh__d3 f_2 ls_1 _lh_popOutId_0_1 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map_lh__d3 f_2) t_2) in
        (let rec h_3 = (f_2 h_2) in
          (if (_lh_popOutId_0_1 h_3) then
            (`LH_C(h_3, (t_3 _lh_popOutId_0_1)))
          else
            (t_3 _lh_popOutId_0_1))))
    | `LH_N -> 
      (`LH_N));;
let rec findawards_lh__d1 _lh_findawards_arg1_0 =
  (let rec _lh_matchIdent_1 = (let rec sumscores_0 = ((map_lh__d3 (fun p_0 -> 
    (`LH_P2((sum_lh__d1 p_0), p_0)))) ((perms_lh__d1 3) _lh_findawards_arg1_0)) in
    (let rec atleast_0 = (fun threshold_0 -> 
      (sumscores_0 (fun sum_p_0 -> 
        (let rec _lh_matchIdent_2 = sum_p_0 in
          (match _lh_matchIdent_2 with
            | `LH_P2(_lh_awards_LH_P2_0_0, _lh_awards_LH_P2_1_0) -> 
              (_lh_awards_LH_P2_0_0 >= threshold_0)
            | _ -> 
              (failwith "error")))))) in
      (let rec award_0 = (fun name_threshold_0 -> 
        (let rec _lh_matchIdent_3 = name_threshold_0 in
          (_lh_matchIdent_3 atleast_0))) in
        ((mappend_lh__d2 ((mappend_lh__d1 (award_0 (let rec _lh_awards_LH_P2_1_1 = 70 in
          (let rec _lh_awards_LH_P2_0_1 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_1 -> 
              ((sort_lh__d1 (atleast_1 _lh_awards_LH_P2_1_1)) (fun ps_0 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1, ps_0))))))))) (award_0 (let rec _lh_awards_LH_P2_1_2 = 60 in
          (let rec _lh_awards_LH_P2_0_2 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_2 -> 
              ((sort_lh__d1 (atleast_2 _lh_awards_LH_P2_1_2)) (fun ps_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_2, ps_1)))))))))) (award_0 (let rec _lh_awards_LH_P2_1_3 = 50 in
          (let rec _lh_awards_LH_P2_0_3 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_3 -> 
              ((sort_lh__d1 (atleast_3 _lh_awards_LH_P2_1_3)) (fun ps_2 -> 
                (`LH_P2(_lh_awards_LH_P2_0_3, ps_2)))))))))))) in
    (match _lh_matchIdent_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_0, _lh_findawards_LH_C_1_0) -> 
        (let rec _lh_matchIdent_4 = _lh_findawards_LH_C_0_0 in
          (match _lh_matchIdent_4 with
            | `LH_P2(_lh_findawards_LH_P2_0_0, _lh_findawards_LH_P2_1_0) -> 
              (match _lh_findawards_LH_P2_1_0 with
                | `LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_0, (`LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1)))), (findawards_lh__d1 ((listDiff_lh__d1 _lh_findawards_arg1_0) _lh_findawards_LH_P2_1_1))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")));;
let rec competitors_lh__d1 _lh_competitors_arg1_0 f_1_1 =
  (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (fun f_1_2 -> 
    (`LH_N)) in
    (let rec h_1_3 = (let rec _lh_findallawards_LH_P2_1_0 = (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_0, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_0 = (`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_0 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_0, (findawards_lh__d1 _lh_findallawards_LH_P2_1_0)))))) in
      (fun f_1_3 -> 
        (`LH_C((f_1_3 h_1_3), (t_1_6 f_1_3)))))) in
    (let rec h_1_4 = (let rec _lh_findallawards_LH_P2_1_1 = (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_0, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_1 = (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))) in
        (fun _lh_dummy_1 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_1, (findawards_lh__d1 _lh_findallawards_LH_P2_1_1)))))) in
      (fun f_1_4 -> 
        (`LH_C((f_1_4 h_1_4), (t_1_5 f_1_4)))))) in
    (let rec h_1_5 = (let rec _lh_findallawards_LH_P2_1_2 = (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_0, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_2 = (`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))) in
        (fun _lh_dummy_2 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_2, (findawards_lh__d1 _lh_findallawards_LH_P2_1_2)))))) in
      (fun f_1_5 -> 
        (`LH_C((f_1_5 h_1_5), (t_1_4 f_1_5)))))) in
    (let rec h_1_6 = (let rec _lh_findallawards_LH_P2_1_3 = (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_0, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_3 = (`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_3 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_3, (findawards_lh__d1 _lh_findallawards_LH_P2_1_3)))))) in
      (`LH_C((f_1_1 h_1_6), (t_1_3 f_1_1)))));;
let rec testAwards_nofib_lh__d1 _lh_testAwards_nofib_arg1_0 =
  (((enumFromTo_lh__d1 1) _lh_testAwards_nofib_arg1_0) (fun x_2 -> 
    ((competitors_lh__d1 (x_2 mod 100)) (fun name_scores_1 -> 
      (let rec _lh_matchIdent_5 = name_scores_1 in
        (_lh_matchIdent_5 99))))));;
end;;

