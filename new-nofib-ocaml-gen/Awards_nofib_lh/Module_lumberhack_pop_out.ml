

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec compareTuple2__d0 _lh_compareTuple2_arg1_0 _lh_compareTuple2_arg2_0 =
  (match _lh_compareTuple2_arg1_0 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_0, _lh_compareTuple2_LH_P2_1_0) -> 
      (match _lh_compareTuple2_arg2_0 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1, _lh_compareTuple2_LH_P2_1_1) -> 
          (_lh_compareTuple2_LH_P2_0_0 <= _lh_compareTuple2_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec delete__d0 _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec filter__d0 f_3 ls_2 =
  (ls_2 f_3);;
let rec foldl__d0 f_1_1 i_0 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_0, t_1_0) -> 
      (((foldl__d0 f_1_1) ((f_1_1 i_0) h_1_0)) t_1_0)
    | `LH_N -> 
      i_0);;
let rec map__d1 f_2_3 ls_8 =
  (ls_8 f_2_3);;
let rec map__d3 f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map__d3 f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_0 ls_5 =
  (ls_5 f_1_0);;
let rec map__d5 f_2_2 ls_7 =
  (ls_7 f_2_2);;
let rec mappend__d0 xs_1 ys_3 =
  (match xs_1 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend__d0 t_9) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend__d1 xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C(h_1_4, ((mappend__d1 t_1_4) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend__d2 xs_0 ys_2 =
  (xs_0 ys_2);;
let rec sum__d0 ls_3 =
  (match ls_3 with
    | `LH_C(h_4, t_4) -> 
      (h_4 + (sum__d0 t_4))
    | `LH_N -> 
      0);;
let rec awards__d0 _lh_awards_arg1_0 =
  (let rec sumscores_0 = ((map__d0 (fun p_0 -> 
    (`LH_P2((sum__d0 p_0), p_0)))) ((perms__d0 3) _lh_awards_arg1_0)) in
    (let rec atleast_0 = (fun threshold_0 -> 
      ((filter__d0 (fun sum_p_0 -> 
        (let rec _lh_matchIdent_0 = sum_p_0 in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_awards_LH_P2_0_0, _lh_awards_LH_P2_1_0) -> 
              (_lh_awards_LH_P2_0_0 >= threshold_0)
            | _ -> 
              (failwith "error"))))) sumscores_0)) in
      (let rec award_0 = (fun name_threshold_0 -> 
        (let rec _lh_matchIdent_1 = name_threshold_0 in
          (_lh_matchIdent_1 atleast_0))) in
        ((mappend__d0 ((mappend__d1 (award_0 (let rec _lh_awards_LH_P2_1_1 = 70 in
          (let rec _lh_awards_LH_P2_0_1 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_1 -> 
              ((map__d1 (fun ps_0 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1, ps_0)))) (sort__d0 (atleast_1 _lh_awards_LH_P2_1_1)))))))) (award_0 (let rec _lh_awards_LH_P2_1_2 = 60 in
          (let rec _lh_awards_LH_P2_0_2 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_2 -> 
              ((map__d1 (fun ps_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_2, ps_1)))) (sort__d0 (atleast_2 _lh_awards_LH_P2_1_2))))))))) (award_0 (let rec _lh_awards_LH_P2_1_3 = 50 in
          (let rec _lh_awards_LH_P2_0_3 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_3 -> 
              ((map__d1 (fun ps_2 -> 
                (`LH_P2(_lh_awards_LH_P2_0_3, ps_2)))) (sort__d0 (atleast_3 _lh_awards_LH_P2_1_3)))))))))))
and competitors__d0 _lh_competitors_arg1_0 f_2_1 =
  (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (fun f_1_7 -> 
    (`LH_N)) in
    (let rec h_1_6 = (let rec _lh_findallawards_LH_P2_1_0 = (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_0, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_0 = (`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_0 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_0, (findawards__d0 _lh_findallawards_LH_P2_1_0)))))) in
      (fun f_1_8 -> 
        (`LH_C((f_1_8 h_1_6), ((map__d4 f_1_8) t_1_9)))))) in
    (let rec h_1_7 = (let rec _lh_findallawards_LH_P2_1_1 = (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_0, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_1 = (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))) in
        (fun _lh_dummy_1 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_1, (findawards__d0 _lh_findallawards_LH_P2_1_1)))))) in
      (fun f_1_9 -> 
        (`LH_C((f_1_9 h_1_7), ((map__d4 f_1_9) t_1_8)))))) in
    (let rec h_1_8 = (let rec _lh_findallawards_LH_P2_1_2 = (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_0, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_2 = (`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))) in
        (fun _lh_dummy_2 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_2, (findawards__d0 _lh_findallawards_LH_P2_1_2)))))) in
      (fun f_2_0 -> 
        (`LH_C((f_2_0 h_1_8), ((map__d4 f_2_0) t_1_7)))))) in
    (let rec h_1_9 = (let rec _lh_findallawards_LH_P2_1_3 = (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_0, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_3 = (`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_3 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_3, (findawards__d0 _lh_findallawards_LH_P2_1_3)))))) in
      (`LH_C((f_2_1 h_1_9), ((map__d4 f_2_1) t_1_6)))))
and enumFromTo__d0 a_1 b_1 _lh_popOutId_0_2 =
  (if (a_1 <= b_1) then
    (let rec t_1_5 = ((enumFromTo__d0 (a_1 + 1)) b_1) in
      (let rec h_1_5 = a_1 in
        (`LH_C((_lh_popOutId_0_2 h_1_5), ((map__d5 _lh_popOutId_0_2) t_1_5)))))
  else
    (`LH_N))
and findallawards__d0 _lh_findallawards_arg1_0 =
  ((map__d4 (fun name_scores_0 -> 
    (let rec _lh_matchIdent_4 = name_scores_0 in
      (_lh_matchIdent_4 99)))) _lh_findallawards_arg1_0)
and findawards__d0 _lh_findawards_arg1_0 =
  (let rec _lh_matchIdent_2 = (awards__d0 _lh_findawards_arg1_0) in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_0, _lh_findawards_LH_C_1_0) -> 
        (let rec _lh_matchIdent_3 = _lh_findawards_LH_C_0_0 in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_findawards_LH_P2_0_0, _lh_findawards_LH_P2_1_0) -> 
              (match _lh_findawards_LH_P2_1_0 with
                | `LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_0, (`LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1)))), (findawards__d0 ((listDiff__d0 _lh_findawards_arg1_0) _lh_findawards_LH_P2_1_1))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and listDiff__d0 =
  (foldl__d0 delete__d0)
and map__d0 f_7 ls_4 _lh_popOutId_0_1 =
  (match ls_4 with
    | `LH_C(h_7, t_7) -> 
      (let rec t_8 = ((map__d0 f_7) t_7) in
        (let rec h_8 = (f_7 h_7) in
          (if (_lh_popOutId_0_1 h_8) then
            (`LH_C(h_8, ((filter__d0 _lh_popOutId_0_1) t_8)))
          else
            ((filter__d0 _lh_popOutId_0_1) t_8))))
    | `LH_N -> 
      (`LH_N))
and map__d2 f_2 ls_1 _lh_popOutId_0_0 =
  (match ls_1 with
    | `LH_C(h_2, t_2) -> 
      (let rec t_3 = ((map__d2 f_2) t_2) in
        (let rec h_3 = (f_2 h_2) in
          (`LH_C(h_3, ((mappend__d2 t_3) _lh_popOutId_0_0)))))
    | `LH_N -> 
      _lh_popOutId_0_0)
and perms__d0 _lh_perms_arg1_0 _lh_perms_arg2_0 =
  (match _lh_perms_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_0 with
        | 1 -> 
          ((map__d3 (fun x_0 -> 
            (`LH_C(x_0, (`LH_N))))) _lh_perms_arg2_0)
        | _ -> 
          (match _lh_perms_arg2_0 with
            | `LH_C(_lh_perms_LH_C_0_0, _lh_perms_LH_C_1_0) -> 
              ((mappend__d2 ((map__d2 (fun x_1 -> 
                (`LH_C(_lh_perms_LH_C_0_0, x_1)))) ((perms__d0 (_lh_perms_arg1_0 - 1)) _lh_perms_LH_C_1_0))) ((perms__d0 _lh_perms_arg1_0) _lh_perms_LH_C_1_0))
            | _ -> 
              (failwith "error"))))
and qpart__d0 _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort__d0 _lh_qpart_arg1_0) _lh_qpart_arg4_0) (let rec t_5 = (((rqsort__d1 _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0) in
        (let rec h_5 = _lh_qpart_arg2_0 in
          (fun f_4 -> 
            (`LH_C((f_4 h_5), ((map__d1 f_4) t_5)))))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart__d0 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart__d0 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and qsort__d0 _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_6 = _lh_qsort_arg3_0 in
            (let rec h_6 = _lh_qsort_LH_C_0_0 in
              (fun f_6 -> 
                (`LH_C((f_6 h_6), ((map__d1 f_6) t_6))))))
        | _ -> 
          ((((((qpart__d0 _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and rqpart__d0 _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (let rec t_1_2 = (((qsort__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0) in
        (let rec h_1_2 = _lh_rqpart_arg2_0 in
          (fun f_1_3 -> 
            (`LH_C((f_1_3 h_1_2), ((map__d1 f_1_3) t_1_2)))))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and rqpart__d1 _lh_rqpart_arg1_1 _lh_rqpart_arg2_1 _lh_rqpart_arg3_1 _lh_rqpart_arg4_1 _lh_rqpart_arg5_1 _lh_rqpart_arg6_1 =
  (match _lh_rqpart_arg3_1 with
    | `LH_N -> 
      (((qsort__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg4_1) (let rec t_1_3 = (((qsort__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1) in
        (let rec h_1_3 = _lh_rqpart_arg2_1 in
          (fun f_1_4 -> 
            (`LH_C((f_1_4 h_1_3), ((map__d1 f_1_4) t_1_3)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_LH_C_1_1) -> 
      (if ((_lh_rqpart_arg1_1 _lh_rqpart_LH_C_0_1) _lh_rqpart_arg2_1) then
        ((((((rqpart__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg4_1))) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1)
      else
        ((((((rqpart__d1 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg5_1))) _lh_rqpart_arg6_1))
    | _ -> 
      (failwith "error"))
and rqsort__d0 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (let rec t_1_1 = _lh_rqsort_arg3_1 in
            (let rec h_1_1 = _lh_rqsort_LH_C_0_1 in
              (fun f_1_2 -> 
                (`LH_C((f_1_2 h_1_1), ((map__d1 f_1_2) t_1_1))))))
        | _ -> 
          ((((((rqpart__d0 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"))
and rqsort__d1 _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_1 = _lh_rqsort_arg3_0 in
            (let rec h_1 = _lh_rqsort_LH_C_0_0 in
              (fun f_1 -> 
                (`LH_C((f_1 h_1), ((map__d1 f_1) t_1))))))
        | _ -> 
          ((((((rqpart__d1 _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"))
and sort__d0 _lh_sort_arg1_0 =
  (((qsort__d0 (fun a_0 b_0 -> 
    ((compareTuple2__d0 a_0) b_0))) _lh_sort_arg1_0) (fun f_5 -> 
    (`LH_N)))
and testAwards_nofib__d0 _lh_testAwards_nofib_arg1_0 =
  ((map__d5 (fun x_2 -> 
    (findallawards__d0 (competitors__d0 (x_2 mod 100))))) ((enumFromTo__d0 1) _lh_testAwards_nofib_arg1_0));;
end;;

