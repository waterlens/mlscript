(*
touch ./Awards_nofib.mli && ocamlc ./Awards_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Awards_nofib.ml -o "./Awards_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Awards_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec enumFromTo__d0 a_6 b_3 =
  (if (a_6 <= b_3) then
    (`LH_C(a_6, ((enumFromTo__d0 (a_6 + 1)) b_3)))
  else
    (`LH_N));;
let rec filter__d0 f_1_9 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_3_1, t_3_3) -> 
      (if (f_1_9 h_3_1) then
        (`LH_C(h_3_1, ((filter__d0 f_1_9) t_3_3)))
      else
        ((filter__d0 f_1_9) t_3_3))
    | `LH_N -> 
      (`LH_N));;
let rec foldl__d0 f_1_2 i_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (((foldl__d0 f_1_2) ((f_1_2 i_3) h_2_2)) t_2_4)
    | `LH_N -> 
      i_3);;
let rec map__d0 f_1_7 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_7 h_2_9), ((map__d0 f_1_7) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C((f_1_3 h_2_3), ((map__d1 f_1_3) t_2_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_1_5 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C((f_1_5 h_2_6), ((map__d2 f_1_5) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_4 h_2_4), ((map__d3 f_1_4) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_1_6 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C((f_1_6 h_2_8), ((map__d4 f_1_6) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_1_8 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C((f_1_8 h_3_0), ((map__d5 f_1_8) t_3_2)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d0 t_2_7) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_7, t_2_9) -> 
      (`LH_C(h_2_7, ((mappend__d1 t_2_9) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d2 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec sum__d0 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (h_2_1 + (sum__d0 t_2_3))
    | `LH_N -> 
      0);;
let rec awards__d0 _lh_awards_arg1_1 =
  (let rec sumscores_1 = ((map__d0 (fun p_1 -> 
    (`LH_P2((sum__d0 p_1), p_1)))) ((perms__d0 3) _lh_awards_arg1_1)) in
    (let rec atleast_1 = (fun threshold_1 -> 
      ((filter__d0 (fun sum_p_1 -> 
        (let rec _lh_matchIdent_5 = sum_p_1 in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_awards_LH_P2_0_2, _lh_awards_LH_P2_1_2) -> 
              (_lh_awards_LH_P2_0_2 >= threshold_1)
            | _ -> 
              (failwith "error"))))) sumscores_1)) in
      (let rec award_1 = (fun name_threshold_1 -> 
        (let rec _lh_matchIdent_6 = name_threshold_1 in
          (match _lh_matchIdent_6 with
            | `LH_P2(_lh_awards_LH_P2_0_3, _lh_awards_LH_P2_1_3) -> 
              ((map__d1 (fun ps_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_3, ps_1)))) (sort__d0 (atleast_1 _lh_awards_LH_P2_1_3)))
            | _ -> 
              (failwith "error")))) in
        ((mappend__d0 ((mappend__d1 (award_1 (`LH_P2((`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))), 70)))) (award_1 (`LH_P2((`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))), 60))))) (award_1 (`LH_P2((`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))), 50)))))))
and findallawards__d0 _lh_findallawards_arg1_1 =
  ((map__d4 (fun name_scores_1 -> 
    (let rec _lh_matchIdent_9 = name_scores_1 in
      (match _lh_matchIdent_9 with
        | `LH_P2(_lh_findallawards_LH_P2_0_1, _lh_findallawards_LH_P2_1_1) -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_1, (findawards__d0 _lh_findallawards_LH_P2_1_1)))
        | _ -> 
          (failwith "error"))))) _lh_findallawards_arg1_1)
and findawards__d0 _lh_findawards_arg1_1 =
  (let rec _lh_matchIdent_7 = (awards__d0 _lh_findawards_arg1_1) in
    (match _lh_matchIdent_7 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_1, _lh_findawards_LH_C_1_1) -> 
        (let rec _lh_matchIdent_8 = _lh_findawards_LH_C_0_1 in
          (match _lh_matchIdent_8 with
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
and rqsort__d0 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_arg3_1))
        | _ -> 
          ((((((rqpart__d0 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"))
and rqsort__d1 _lh_rqsort_arg1_2 _lh_rqsort_arg2_2 _lh_rqsort_arg3_2 =
  (match _lh_rqsort_arg2_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_2
    | `LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_LH_C_1_2) -> 
      (match _lh_rqsort_LH_C_1_2 with
        | `LH_N -> 
          (`LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_arg3_2))
        | _ -> 
          ((((((rqpart__d1 _lh_rqsort_arg1_2) _lh_rqsort_LH_C_0_2) _lh_rqsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2))
    | _ -> 
      (failwith "error"))
and sort__d0 _lh_sort_arg1_1 =
  (((qsort__d0 (fun a_7 b_4 -> 
    ((compareTuple2__d0 a_7) b_4))) _lh_sort_arg1_1) (`LH_N))
and testAwards_nofib__d0 _lh_testAwards_nofib_arg1_1 =
  ((map__d5 (fun x_5 -> 
    (findallawards__d0 (competitors__d0 (x_5 mod 100))))) ((enumFromTo__d0 1) _lh_testAwards_nofib_arg1_1));;

(* lumberhack *)
let rec compareTuple2__d0__d0 _lh_compareTuple2_arg1_0 _lh_compareTuple2_arg2_0 =
  (match _lh_compareTuple2_arg1_0 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_0, _lh_compareTuple2_LH_P2_1_0) -> 
      (match _lh_compareTuple2_arg2_0 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1, _lh_compareTuple2_LH_P2_1_1) -> 
          (_lh_compareTuple2_LH_P2_0_0 <= _lh_compareTuple2_LH_P2_0_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec delete__d0__d0 _lh_delete_arg1_0 _lh_delete_arg2_0 =
  (match _lh_delete_arg1_0 with
    | `LH_C(_lh_delete_LH_C_0_0, _lh_delete_LH_C_1_0) -> 
      (if (_lh_delete_LH_C_0_0 = _lh_delete_arg2_0) then
        ((delete__d0__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0)
      else
        (`LH_C(_lh_delete_LH_C_0_0, ((delete__d0__d0 _lh_delete_LH_C_1_0) _lh_delete_arg2_0))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec filter__d0__d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec foldl__d0__d0 f_3 i_0 ls_2 =
  (match ls_2 with
    | `LH_C(h_1, t_1) -> 
      (((foldl__d0__d0 f_3) ((f_3 i_0) h_1)) t_1)
    | `LH_N -> 
      i_0);;
let rec map__d1__d0 f_1 ls_1 =
  (ls_1 f_1);;
let rec map__d3__d0 f_4 ls_3 =
  (match ls_3 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C((f_4 h_2), ((map__d3__d0 f_4) t_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4__d0 f_1_1 ls_5 =
  (ls_5 f_1_1);;
let rec map__d5__d0 f_1_0 ls_4 =
  (ls_4 f_1_0);;
let rec mappend__d0__d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend__d0__d0 t_7) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec mappend__d1__d0 xs_2 ys_4 =
  (match xs_2 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend__d1__d0 t_1_8) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec mappend__d2__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec sum__d0__d0 ls_6 =
  (match ls_6 with
    | `LH_C(h_8, t_8) -> 
      (h_8 + (sum__d0__d0 t_8))
    | `LH_N -> 
      0);;
let rec awards__d0__d0 _lh_awards_arg1_0 =
  (let rec sumscores_0 = ((map__d0__d0 (fun p_0 -> 
    (`LH_P2((sum__d0__d0 p_0), p_0)))) ((perms__d0__d0 3) _lh_awards_arg1_0)) in
    (let rec atleast_0 = (fun threshold_0 -> 
      ((filter__d0__d0 (fun sum_p_0 -> 
        (let rec _lh_matchIdent_0 = sum_p_0 in
          (match _lh_matchIdent_0 with
            | `LH_P2(_lh_awards_LH_P2_0_0, _lh_awards_LH_P2_1_0) -> 
              (_lh_awards_LH_P2_0_0 >= threshold_0)
            | _ -> 
              (failwith "error"))))) sumscores_0)) in
      (let rec award_0 = (fun name_threshold_0 -> 
        (let rec _lh_matchIdent_1 = name_threshold_0 in
          (_lh_matchIdent_1 atleast_0))) in
        ((mappend__d0__d0 ((mappend__d1__d0 (award_0 (let rec _lh_awards_LH_P2_1_1 = 70 in
          (let rec _lh_awards_LH_P2_0_1 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_1 -> 
              ((map__d1__d0 (fun ps_0 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1, ps_0)))) (sort__d0__d0 (atleast_1 _lh_awards_LH_P2_1_1)))))))) (award_0 (let rec _lh_awards_LH_P2_1_2 = 60 in
          (let rec _lh_awards_LH_P2_0_2 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_2 -> 
              ((map__d1__d0 (fun ps_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_2, ps_1)))) (sort__d0__d0 (atleast_2 _lh_awards_LH_P2_1_2))))))))) (award_0 (let rec _lh_awards_LH_P2_1_3 = 50 in
          (let rec _lh_awards_LH_P2_0_3 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_3 -> 
              ((map__d1__d0 (fun ps_2 -> 
                (`LH_P2(_lh_awards_LH_P2_0_3, ps_2)))) (sort__d0__d0 (atleast_3 _lh_awards_LH_P2_1_3)))))))))))
and competitors__d0__d0 _lh_competitors_arg1_0 =
  (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (fun f_1_2 -> 
    (`LH_N)) in
    (let rec h_9 = (let rec _lh_findallawards_LH_P2_1_0 = (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_0, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_0 = (`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_0 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_0, (findawards__d0__d0 _lh_findallawards_LH_P2_1_0)))))) in
      (fun f_1_3 -> 
        (`LH_C((f_1_3 h_9), ((map__d4__d0 f_1_3) t_1_2)))))) in
    (let rec h_1_0 = (let rec _lh_findallawards_LH_P2_1_1 = (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_0, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_1 = (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))) in
        (fun _lh_dummy_1 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_1, (findawards__d0__d0 _lh_findallawards_LH_P2_1_1)))))) in
      (fun f_1_4 -> 
        (`LH_C((f_1_4 h_1_0), ((map__d4__d0 f_1_4) t_1_1)))))) in
    (let rec h_1_1 = (let rec _lh_findallawards_LH_P2_1_2 = (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_0, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_2 = (`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))) in
        (fun _lh_dummy_2 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_2, (findawards__d0__d0 _lh_findallawards_LH_P2_1_2)))))) in
      (fun f_1_5 -> 
        (`LH_C((f_1_5 h_1_1), ((map__d4__d0 f_1_5) t_1_0)))))) in
    (let rec h_1_2 = (let rec _lh_findallawards_LH_P2_1_3 = (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_0, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_3 = (`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_3 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_3, (findawards__d0__d0 _lh_findallawards_LH_P2_1_3)))))) in
      (fun f_1_6 -> 
        (`LH_C((f_1_6 h_1_2), ((map__d4__d0 f_1_6) t_9))))))
and enumFromTo__d0__d0 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec t_5 = ((enumFromTo__d0__d0 (a_0 + 1)) b_0) in
      (let rec h_5 = a_0 in
        (fun f_7 -> 
          (`LH_C((f_7 h_5), ((map__d5__d0 f_7) t_5))))))
  else
    (fun f_8 -> 
      (`LH_N)))
and findallawards__d0__d0 _lh_findallawards_arg1_0 =
  ((map__d4__d0 (fun name_scores_0 -> 
    (let rec _lh_matchIdent_4 = name_scores_0 in
      (_lh_matchIdent_4 99)))) _lh_findallawards_arg1_0)
and findawards__d0__d0 _lh_findawards_arg1_0 =
  (let rec _lh_matchIdent_2 = (awards__d0__d0 _lh_findawards_arg1_0) in
    (match _lh_matchIdent_2 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_0, _lh_findawards_LH_C_1_0) -> 
        (let rec _lh_matchIdent_3 = _lh_findawards_LH_C_0_0 in
          (match _lh_matchIdent_3 with
            | `LH_P2(_lh_findawards_LH_P2_0_0, _lh_findawards_LH_P2_1_0) -> 
              (match _lh_findawards_LH_P2_1_0 with
                | `LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_0, (`LH_P2(_lh_findawards_LH_P2_0_1, _lh_findawards_LH_P2_1_1)))), (findawards__d0__d0 ((listDiff__d0__d0 _lh_findawards_arg1_0) _lh_findawards_LH_P2_1_1))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and listDiff__d0__d0 =
  (foldl__d0__d0 delete__d0__d0)
and map__d0__d0 f_1_9 ls_8 =
  (match ls_8 with
    | `LH_C(h_1_5, t_1_5) -> 
      (let rec t_1_6 = ((map__d0__d0 f_1_9) t_1_5) in
        (let rec h_1_6 = (f_1_9 h_1_5) in
          (fun f_2_0 -> 
            (if (f_2_0 h_1_6) then
              (`LH_C(h_1_6, ((filter__d0__d0 f_2_0) t_1_6)))
            else
              ((filter__d0__d0 f_2_0) t_1_6)))))
    | `LH_N -> 
      (fun f_2_1 -> 
        (`LH_N)))
and map__d2__d0 f_1_8 ls_7 =
  (match ls_7 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec t_1_4 = ((map__d2__d0 f_1_8) t_1_3) in
        (let rec h_1_4 = (f_1_8 h_1_3) in
          (fun ys_2 -> 
            (`LH_C(h_1_4, ((mappend__d2__d0 t_1_4) ys_2))))))
    | `LH_N -> 
      (fun ys_3 -> 
        ys_3))
and perms__d0__d0 _lh_perms_arg1_0 _lh_perms_arg2_0 =
  (match _lh_perms_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_0 with
        | 1 -> 
          ((map__d3__d0 (fun x_0 -> 
            (`LH_C(x_0, (`LH_N))))) _lh_perms_arg2_0)
        | _ -> 
          (match _lh_perms_arg2_0 with
            | `LH_C(_lh_perms_LH_C_0_0, _lh_perms_LH_C_1_0) -> 
              ((mappend__d2__d0 ((map__d2__d0 (fun x_1 -> 
                (`LH_C(_lh_perms_LH_C_0_0, x_1)))) ((perms__d0__d0 (_lh_perms_arg1_0 - 1)) _lh_perms_LH_C_1_0))) ((perms__d0__d0 _lh_perms_arg1_0) _lh_perms_LH_C_1_0))
            | _ -> 
              (failwith "error"))))
and qpart__d0__d0 _lh_qpart_arg1_0 _lh_qpart_arg2_0 _lh_qpart_arg3_0 _lh_qpart_arg4_0 _lh_qpart_arg5_0 _lh_qpart_arg6_0 =
  (match _lh_qpart_arg3_0 with
    | `LH_N -> 
      (((rqsort__d0__d0 _lh_qpart_arg1_0) _lh_qpart_arg4_0) (let rec t_0 = (((rqsort__d1__d0 _lh_qpart_arg1_0) _lh_qpart_arg5_0) _lh_qpart_arg6_0) in
        (let rec h_0 = _lh_qpart_arg2_0 in
          (fun f_2 -> 
            (`LH_C((f_2 h_0), ((map__d1__d0 f_2) t_0)))))))
    | `LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_LH_C_1_0) -> 
      (if ((_lh_qpart_arg1_0 _lh_qpart_arg2_0) _lh_qpart_LH_C_0_0) then
        ((((((qpart__d0__d0 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) _lh_qpart_arg4_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg5_0))) _lh_qpart_arg6_0)
      else
        ((((((qpart__d0__d0 _lh_qpart_arg1_0) _lh_qpart_arg2_0) _lh_qpart_LH_C_1_0) (`LH_C(_lh_qpart_LH_C_0_0, _lh_qpart_arg4_0))) _lh_qpart_arg5_0) _lh_qpart_arg6_0))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0 _lh_qsort_arg1_0 _lh_qsort_arg2_0 _lh_qsort_arg3_0 =
  (match _lh_qsort_arg2_0 with
    | `LH_N -> 
      _lh_qsort_arg3_0
    | `LH_C(_lh_qsort_LH_C_0_0, _lh_qsort_LH_C_1_0) -> 
      (match _lh_qsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_4 = _lh_qsort_arg3_0 in
            (let rec h_4 = _lh_qsort_LH_C_0_0 in
              (fun f_6 -> 
                (`LH_C((f_6 h_4), ((map__d1__d0 f_6) t_4))))))
        | _ -> 
          ((((((qpart__d0__d0 _lh_qsort_arg1_0) _lh_qsort_LH_C_0_0) _lh_qsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_0))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0 _lh_rqpart_arg1_1 _lh_rqpart_arg2_1 _lh_rqpart_arg3_1 _lh_rqpart_arg4_1 _lh_rqpart_arg5_1 _lh_rqpart_arg6_1 =
  (match _lh_rqpart_arg3_1 with
    | `LH_N -> 
      (((qsort__d0__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg4_1) (let rec t_1_9 = (((qsort__d0__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1) in
        (let rec h_1_9 = _lh_rqpart_arg2_1 in
          (fun f_2_3 -> 
            (`LH_C((f_2_3 h_1_9), ((map__d1__d0 f_2_3) t_1_9)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_LH_C_1_1) -> 
      (if ((_lh_rqpart_arg1_1 _lh_rqpart_LH_C_0_1) _lh_rqpart_arg2_1) then
        ((((((rqpart__d0__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg4_1))) _lh_rqpart_arg5_1) _lh_rqpart_arg6_1)
      else
        ((((((rqpart__d0__d0 _lh_rqpart_arg1_1) _lh_rqpart_arg2_1) _lh_rqpart_LH_C_1_1) _lh_rqpart_arg4_1) (`LH_C(_lh_rqpart_LH_C_0_1, _lh_rqpart_arg5_1))) _lh_rqpart_arg6_1))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0 _lh_rqpart_arg1_0 _lh_rqpart_arg2_0 _lh_rqpart_arg3_0 _lh_rqpart_arg4_0 _lh_rqpart_arg5_0 _lh_rqpart_arg6_0 =
  (match _lh_rqpart_arg3_0 with
    | `LH_N -> 
      (((qsort__d0__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg4_0) (let rec t_1_7 = (((qsort__d0__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0) in
        (let rec h_1_7 = _lh_rqpart_arg2_0 in
          (fun f_2_2 -> 
            (`LH_C((f_2_2 h_1_7), ((map__d1__d0 f_2_2) t_1_7)))))))
    | `LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_LH_C_1_0) -> 
      (if ((_lh_rqpart_arg1_0 _lh_rqpart_LH_C_0_0) _lh_rqpart_arg2_0) then
        ((((((rqpart__d1__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg4_0))) _lh_rqpart_arg5_0) _lh_rqpart_arg6_0)
      else
        ((((((rqpart__d1__d0 _lh_rqpart_arg1_0) _lh_rqpart_arg2_0) _lh_rqpart_LH_C_1_0) _lh_rqpart_arg4_0) (`LH_C(_lh_rqpart_LH_C_0_0, _lh_rqpart_arg5_0))) _lh_rqpart_arg6_0))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0 _lh_rqsort_arg1_0 _lh_rqsort_arg2_0 _lh_rqsort_arg3_0 =
  (match _lh_rqsort_arg2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_0
    | `LH_C(_lh_rqsort_LH_C_0_0, _lh_rqsort_LH_C_1_0) -> 
      (match _lh_rqsort_LH_C_1_0 with
        | `LH_N -> 
          (let rec t_3 = _lh_rqsort_arg3_0 in
            (let rec h_3 = _lh_rqsort_LH_C_0_0 in
              (fun f_5 -> 
                (`LH_C((f_5 h_3), ((map__d1__d0 f_5) t_3))))))
        | _ -> 
          ((((((rqpart__d0__d0 _lh_rqsort_arg1_0) _lh_rqsort_LH_C_0_0) _lh_rqsort_LH_C_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_0))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0 _lh_rqsort_arg1_1 _lh_rqsort_arg2_1 _lh_rqsort_arg3_1 =
  (match _lh_rqsort_arg2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1
    | `LH_C(_lh_rqsort_LH_C_0_1, _lh_rqsort_LH_C_1_1) -> 
      (match _lh_rqsort_LH_C_1_1 with
        | `LH_N -> 
          (let rec t_6 = _lh_rqsort_arg3_1 in
            (let rec h_6 = _lh_rqsort_LH_C_0_1 in
              (fun f_9 -> 
                (`LH_C((f_9 h_6), ((map__d1__d0 f_9) t_6))))))
        | _ -> 
          ((((((rqpart__d1__d0 _lh_rqsort_arg1_1) _lh_rqsort_LH_C_0_1) _lh_rqsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1))
    | _ -> 
      (failwith "error"))
and sort__d0__d0 _lh_sort_arg1_0 =
  (((qsort__d0__d0 (fun a_1 b_1 -> 
    ((compareTuple2__d0__d0 a_1) b_1))) _lh_sort_arg1_0) (fun f_1_7 -> 
    (`LH_N)))
and testAwards_nofib__d0__d0 _lh_testAwards_nofib_arg1_0 =
  ((map__d5__d0 (fun x_2 -> 
    (findallawards__d0__d0 (competitors__d0__d0 (x_2 mod 100))))) ((enumFromTo__d0__d0 1) _lh_testAwards_nofib_arg1_0));;

(* lumberhack_pop_out *)
let rec compareTuple2__d0__d0__d0 _lh_compareTuple2_arg1_1_0 _lh_compareTuple2_arg2_1_0 =
  (match _lh_compareTuple2_arg1_1_0 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_2_0, _lh_compareTuple2_LH_P2_1_2_0) -> 
      (match _lh_compareTuple2_arg2_1_0 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_2_1, _lh_compareTuple2_LH_P2_1_2_1) -> 
          (_lh_compareTuple2_LH_P2_0_2_0 <= _lh_compareTuple2_LH_P2_0_2_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d1 _lh_compareTuple2_arg1_2 _lh_compareTuple2_arg2_2 =
  (match _lh_compareTuple2_arg1_2 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_4, _lh_compareTuple2_LH_P2_1_4) -> 
      (match _lh_compareTuple2_arg2_2 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_5, _lh_compareTuple2_LH_P2_1_5) -> 
          (_lh_compareTuple2_LH_P2_0_4 <= _lh_compareTuple2_LH_P2_0_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d1_d0 _lh_compareTuple2_arg1_9 _lh_compareTuple2_arg2_9 =
  (match _lh_compareTuple2_arg1_9 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_1_8, _lh_compareTuple2_LH_P2_1_1_8) -> 
      (match _lh_compareTuple2_arg2_9 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1_9, _lh_compareTuple2_LH_P2_1_1_9) -> 
          (_lh_compareTuple2_LH_P2_0_1_8 <= _lh_compareTuple2_LH_P2_0_1_9)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d1_d1 _lh_compareTuple2_arg1_6 _lh_compareTuple2_arg2_6 =
  (match _lh_compareTuple2_arg1_6 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_1_2, _lh_compareTuple2_LH_P2_1_1_2) -> 
      (match _lh_compareTuple2_arg2_6 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1_3, _lh_compareTuple2_LH_P2_1_1_3) -> 
          (_lh_compareTuple2_LH_P2_0_1_2 <= _lh_compareTuple2_LH_P2_0_1_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d2 _lh_compareTuple2_arg1_8 _lh_compareTuple2_arg2_8 =
  (match _lh_compareTuple2_arg1_8 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_1_6, _lh_compareTuple2_LH_P2_1_1_6) -> 
      (match _lh_compareTuple2_arg2_8 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1_7, _lh_compareTuple2_LH_P2_1_1_7) -> 
          (_lh_compareTuple2_LH_P2_0_1_6 <= _lh_compareTuple2_LH_P2_0_1_7)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d3 _lh_compareTuple2_arg1_5 _lh_compareTuple2_arg2_5 =
  (match _lh_compareTuple2_arg1_5 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_1_0, _lh_compareTuple2_LH_P2_1_1_0) -> 
      (match _lh_compareTuple2_arg2_5 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1_1, _lh_compareTuple2_LH_P2_1_1_1) -> 
          (_lh_compareTuple2_LH_P2_0_1_0 <= _lh_compareTuple2_LH_P2_0_1_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d4 _lh_compareTuple2_arg1_3 _lh_compareTuple2_arg2_3 =
  (match _lh_compareTuple2_arg1_3 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_6, _lh_compareTuple2_LH_P2_1_6) -> 
      (match _lh_compareTuple2_arg2_3 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_7, _lh_compareTuple2_LH_P2_1_7) -> 
          (_lh_compareTuple2_LH_P2_0_6 <= _lh_compareTuple2_LH_P2_0_7)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d5 _lh_compareTuple2_arg1_1 _lh_compareTuple2_arg2_1 =
  (match _lh_compareTuple2_arg1_1 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_2, _lh_compareTuple2_LH_P2_1_2) -> 
      (match _lh_compareTuple2_arg2_1 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_3, _lh_compareTuple2_LH_P2_1_3) -> 
          (_lh_compareTuple2_LH_P2_0_2 <= _lh_compareTuple2_LH_P2_0_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d6 _lh_compareTuple2_arg1_1_1 _lh_compareTuple2_arg2_1_1 =
  (match _lh_compareTuple2_arg1_1_1 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_2_2, _lh_compareTuple2_LH_P2_1_2_2) -> 
      (match _lh_compareTuple2_arg2_1_1 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_2_3, _lh_compareTuple2_LH_P2_1_2_3) -> 
          (_lh_compareTuple2_LH_P2_0_2_2 <= _lh_compareTuple2_LH_P2_0_2_3)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d7 _lh_compareTuple2_arg1_4 _lh_compareTuple2_arg2_4 =
  (match _lh_compareTuple2_arg1_4 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_8, _lh_compareTuple2_LH_P2_1_8) -> 
      (match _lh_compareTuple2_arg2_4 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_9, _lh_compareTuple2_LH_P2_1_9) -> 
          (_lh_compareTuple2_LH_P2_0_8 <= _lh_compareTuple2_LH_P2_0_9)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d8 _lh_compareTuple2_arg1_1_2 _lh_compareTuple2_arg2_1_2 =
  (match _lh_compareTuple2_arg1_1_2 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_2_4, _lh_compareTuple2_LH_P2_1_2_4) -> 
      (match _lh_compareTuple2_arg2_1_2 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_2_5, _lh_compareTuple2_LH_P2_1_2_5) -> 
          (_lh_compareTuple2_LH_P2_0_2_4 <= _lh_compareTuple2_LH_P2_0_2_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec compareTuple2__d0__d0__d9 _lh_compareTuple2_arg1_7 _lh_compareTuple2_arg2_7 =
  (match _lh_compareTuple2_arg1_7 with
    | `LH_P2(_lh_compareTuple2_LH_P2_0_1_4, _lh_compareTuple2_LH_P2_1_1_4) -> 
      (match _lh_compareTuple2_arg2_7 with
        | `LH_P2(_lh_compareTuple2_LH_P2_0_1_5, _lh_compareTuple2_LH_P2_1_1_5) -> 
          (_lh_compareTuple2_LH_P2_0_1_4 <= _lh_compareTuple2_LH_P2_0_1_5)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec delete__d0__d0__d0 _lh_delete_arg1_1 _lh_delete_arg2_1 =
  (match _lh_delete_arg1_1 with
    | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
      (if (_lh_delete_LH_C_0_1 = _lh_delete_arg2_1) then
        ((delete__d0__d0__d0 _lh_delete_LH_C_1_1) _lh_delete_arg2_1)
      else
        (`LH_C(_lh_delete_LH_C_0_1, ((delete__d0__d0__d0 _lh_delete_LH_C_1_1) _lh_delete_arg2_1))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec delete__d0__d0__d1 _lh_delete_arg1_2 _lh_delete_arg2_2 =
  (match _lh_delete_arg1_2 with
    | `LH_C(_lh_delete_LH_C_0_2, _lh_delete_LH_C_1_2) -> 
      (if (_lh_delete_LH_C_0_2 = _lh_delete_arg2_2) then
        ((delete__d0__d0__d1 _lh_delete_LH_C_1_2) _lh_delete_arg2_2)
      else
        (`LH_C(_lh_delete_LH_C_0_2, ((delete__d0__d0__d1 _lh_delete_LH_C_1_2) _lh_delete_arg2_2))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec delete__d0__d0__d2 _lh_delete_arg1_4 _lh_delete_arg2_4 =
  (match _lh_delete_arg1_4 with
    | `LH_C(_lh_delete_LH_C_0_4, _lh_delete_LH_C_1_4) -> 
      (if (_lh_delete_LH_C_0_4 = _lh_delete_arg2_4) then
        ((delete__d0__d0__d2 _lh_delete_LH_C_1_4) _lh_delete_arg2_4)
      else
        (`LH_C(_lh_delete_LH_C_0_4, ((delete__d0__d0__d2 _lh_delete_LH_C_1_4) _lh_delete_arg2_4))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec delete__d0__d0__d3 _lh_delete_arg1_3 _lh_delete_arg2_3 =
  (match _lh_delete_arg1_3 with
    | `LH_C(_lh_delete_LH_C_0_3, _lh_delete_LH_C_1_3) -> 
      (if (_lh_delete_LH_C_0_3 = _lh_delete_arg2_3) then
        ((delete__d0__d0__d3 _lh_delete_LH_C_1_3) _lh_delete_arg2_3)
      else
        (`LH_C(_lh_delete_LH_C_0_3, ((delete__d0__d0__d3 _lh_delete_LH_C_1_3) _lh_delete_arg2_3))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec filter__d0__d0__d0 f_1_4_8 ls_8_0 =
  (ls_8_0 f_1_4_8);;
let rec filter__d0__d0__d1 f_1_9_8 ls_1_0_8 =
  (ls_1_0_8 f_1_9_8);;
let rec filter__d0__d0__d1_d0 f_2_0_9 ls_1_1_6 =
  (ls_1_1_6 f_2_0_9);;
let rec filter__d0__d0__d1_d1 f_1_0_1 ls_5_3 =
  (ls_5_3 f_1_0_1);;
let rec filter__d0__d0__d2 f_9_6 ls_5_2 =
  (ls_5_2 f_9_6);;
let rec filter__d0__d0__d3 f_1_6_0 ls_8_6 =
  (ls_8_6 f_1_6_0);;
let rec filter__d0__d0__d4 f_1_2_3 ls_6_5 =
  (ls_6_5 f_1_2_3);;
let rec filter__d0__d0__d5 f_2_2_3 ls_1_2_1 =
  (ls_1_2_1 f_2_2_3);;
let rec filter__d0__d0__d6 f_3_4 ls_1_7 =
  (ls_1_7 f_3_4);;
let rec filter__d0__d0__d7 f_1_7_9 ls_9_6 =
  (ls_9_6 f_1_7_9);;
let rec filter__d0__d0__d8 f_1_5_2 ls_8_1 =
  (ls_8_1 f_1_5_2);;
let rec filter__d0__d0__d9 f_5_9 ls_3_0 =
  (ls_3_0 f_5_9);;
let rec foldl__d0__d0__d0 f_8_8 i_3 ls_4_8 =
  (match ls_4_8 with
    | `LH_C(h_5_1, t_5_1) -> 
      (((foldl__d0__d0__d0 f_8_8) ((f_8_8 i_3) h_5_1)) t_5_1)
    | `LH_N -> 
      i_3);;
let rec foldl__d0__d0__d1 f_7_8 i_2 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_4_5, t_4_5) -> 
      (((foldl__d0__d0__d1 f_7_8) ((f_7_8 i_2) h_4_5)) t_4_5)
    | `LH_N -> 
      i_2);;
let rec foldl__d0__d0__d2 f_3_0 i_1 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_2_3, t_2_3) -> 
      (((foldl__d0__d0__d2 f_3_0) ((f_3_0 i_1) h_2_3)) t_2_3)
    | `LH_N -> 
      i_1);;
let rec foldl__d0__d0__d3 f_1_6_6 i_4 ls_9_0 =
  (match ls_9_0 with
    | `LH_C(h_9_0, t_9_0) -> 
      (((foldl__d0__d0__d3 f_1_6_6) ((f_1_6_6 i_4) h_9_0)) t_9_0)
    | `LH_N -> 
      i_4);;
let rec map__d1__d0__d0 f_3_1 ls_1_4 =
  (ls_1_4 f_3_1);;
let rec map__d1__d0__d1 f_1_1_3 ls_6_1 =
  (ls_6_1 f_1_1_3);;
let rec map__d1__d0__d1_d0 f_1_0_7 ls_5_8 =
  (ls_5_8 f_1_0_7);;
let rec map__d1__d0__d1_d1 f_1_9_2 ls_1_0_5 =
  (ls_1_0_5 f_1_9_2);;
let rec map__d1__d0__d1_d2 f_1_5_6 ls_8_4 =
  (ls_8_4 f_1_5_6);;
let rec map__d1__d0__d1_d3 f_1_4_6 ls_7_8 =
  (ls_7_8 f_1_4_6);;
let rec map__d1__d0__d1_d4 f_5_3 ls_2_6 =
  (ls_2_6 f_5_3);;
let rec map__d1__d0__d1_d5 f_2_3_9 ls_1_3_1 =
  (ls_1_3_1 f_2_3_9);;
let rec map__d1__d0__d1_d6 f_3_3 ls_1_6 =
  (ls_1_6 f_3_3);;
let rec map__d1__d0__d1_d7 f_1_6_3 ls_8_9 =
  (ls_8_9 f_1_6_3);;
let rec map__d1__d0__d1_d8 f_7_1 ls_3_6 =
  (ls_3_6 f_7_1);;
let rec map__d1__d0__d1_d9 f_2_3_0 ls_1_2_6 =
  (ls_1_2_6 f_2_3_0);;
let rec map__d1__d0__d2 f_6_9 ls_3_5 =
  (ls_3_5 f_6_9);;
let rec map__d1__d0__d2_d0 f_2_3_2 ls_1_2_8 =
  (ls_1_2_8 f_2_3_2);;
let rec map__d1__d0__d2_d1 f_1_5_4 ls_8_2 =
  (ls_8_2 f_1_5_4);;
let rec map__d1__d0__d2_d2 f_8_5 ls_4_6 =
  (ls_4_6 f_8_5);;
let rec map__d1__d0__d2_d3 f_7_2 ls_3_7 =
  (ls_3_7 f_7_2);;
let rec map__d1__d0__d2_d4 f_2_0_5 ls_1_1_3 =
  (ls_1_1_3 f_2_0_5);;
let rec map__d1__d0__d2_d5 f_2_2_6 ls_1_2_4 =
  (ls_1_2_4 f_2_2_6);;
let rec map__d1__d0__d2_d6 f_1_8_6 ls_1_0_0 =
  (ls_1_0_0 f_1_8_6);;
let rec map__d1__d0__d2_d7 f_2_0_1 ls_1_1_0 =
  (ls_1_1_0 f_2_0_1);;
let rec map__d1__d0__d2_d8 f_7_6 ls_4_0 =
  (ls_4_0 f_7_6);;
let rec map__d1__d0__d2_d9 f_7_3 ls_3_8 =
  (ls_3_8 f_7_3);;
let rec map__d1__d0__d3 f_2_2_5 ls_1_2_3 =
  (ls_1_2_3 f_2_2_5);;
let rec map__d1__d0__d3_d0 f_5_0 ls_2_4 =
  (ls_2_4 f_5_0);;
let rec map__d1__d0__d3_d1 f_1_4_3 ls_7_6 =
  (ls_7_6 f_1_4_3);;
let rec map__d1__d0__d3_d2 f_1_4_1 ls_7_4 =
  (ls_7_4 f_1_4_1);;
let rec map__d1__d0__d3_d3 f_5_2 ls_2_5 =
  (ls_2_5 f_5_2);;
let rec map__d1__d0__d3_d4 f_1_6_9 ls_9_2 =
  (ls_9_2 f_1_6_9);;
let rec map__d1__d0__d3_d5 f_1_1_1 ls_6_0 =
  (ls_6_0 f_1_1_1);;
let rec map__d1__d0__d3_d6 f_1_9_0 ls_1_0_3 =
  (ls_1_0_3 f_1_9_0);;
let rec map__d1__d0__d3_d7 f_1_6_2 ls_8_8 =
  (ls_8_8 f_1_6_2);;
let rec map__d1__d0__d3_d8 f_8_3 ls_4_4 =
  (ls_4_4 f_8_3);;
let rec map__d1__d0__d3_d9 f_1_4_2 ls_7_5 =
  (ls_7_5 f_1_4_2);;
let rec map__d1__d0__d4 f_7_4 ls_3_9 =
  (ls_3_9 f_7_4);;
let rec map__d1__d0__d4_d0 f_5_5 ls_2_7 =
  (ls_2_7 f_5_5);;
let rec map__d1__d0__d4_d1 f_1_0_5 ls_5_5 =
  (ls_5_5 f_1_0_5);;
let rec map__d1__d0__d4_d2 f_1_9_3 ls_1_0_6 =
  (ls_1_0_6 f_1_9_3);;
let rec map__d1__d0__d4_d3 f_2_3_5 ls_1_3_0 =
  (ls_1_3_0 f_2_3_5);;
let rec map__d1__d0__d4_d4 f_2_3_1 ls_1_2_7 =
  (ls_1_2_7 f_2_3_1);;
let rec map__d1__d0__d4_d5 f_1_2_4 ls_6_6 =
  (ls_6_6 f_1_2_4);;
let rec map__d1__d0__d4_d6 f_2_5 ls_1_0 =
  (ls_1_0 f_2_5);;
let rec map__d1__d0__d4_d7 f_8_2 ls_4_3 =
  (ls_4_3 f_8_2);;
let rec map__d1__d0__d4_d8 f_3_2 ls_1_5 =
  (ls_1_5 f_3_2);;
let rec map__d1__d0__d4_d9 f_2_2_1 ls_1_2_0 =
  (ls_1_2_0 f_2_2_1);;
let rec map__d1__d0__d5 f_2_0_4 ls_1_1_2 =
  (ls_1_1_2 f_2_0_4);;
let rec map__d1__d0__d5_d0 f_1_7_4 ls_9_4 =
  (ls_9_4 f_1_7_4);;
let rec map__d1__d0__d5_d1 f_6_7 ls_3_3 =
  (ls_3_3 f_6_7);;
let rec map__d1__d0__d5_d2 f_1_0_6 ls_5_6 =
  (ls_5_6 f_1_0_6);;
let rec map__d1__d0__d5_d3 f_2_1_3 ls_1_1_9 =
  (ls_1_1_9 f_2_1_3);;
let rec map__d1__d0__d5_d4 f_5_7 ls_2_8 =
  (ls_2_8 f_5_7);;
let rec map__d1__d0__d5_d5 f_9_4 ls_5_0 =
  (ls_5_0 f_9_4);;
let rec map__d1__d0__d5_d6 f_2_2_9 ls_1_2_5 =
  (ls_1_2_5 f_2_2_9);;
let rec map__d1__d0__d5_d7 f_4_4 ls_2_0 =
  (ls_2_0 f_4_4);;
let rec map__d1__d0__d5_d8 f_6_8 ls_3_4 =
  (ls_3_4 f_6_8);;
let rec map__d1__d0__d5_d9 f_4_5 ls_2_1 =
  (ls_2_1 f_4_5);;
let rec map__d1__d0__d6 f_1_5_5 ls_8_3 =
  (ls_8_3 f_1_5_5);;
let rec map__d1__d0__d6_d0 f_1_9_1 ls_1_0_4 =
  (ls_1_0_4 f_1_9_1);;
let rec map__d1__d0__d6_d1 f_1_4_5 ls_7_7 =
  (ls_7_7 f_1_4_5);;
let rec map__d1__d0__d6_d2 f_1_5_9 ls_8_5 =
  (ls_8_5 f_1_5_9);;
let rec map__d1__d0__d6_d3 f_9_5 ls_5_1 =
  (ls_5_1 f_9_5);;
let rec map__d1__d0__d6_d4 f_2_1_1 ls_1_1_8 =
  (ls_1_1_8 f_2_1_1);;
let rec map__d1__d0__d6_d5 f_1_8_4 ls_9_8 =
  (ls_9_8 f_1_8_4);;
let rec map__d1__d0__d6_d6 f_1_3_0 ls_6_8 =
  (ls_6_8 f_1_3_0);;
let rec map__d1__d0__d6_d7 f_1_1_9 ls_6_3 =
  (ls_6_3 f_1_1_9);;
let rec map__d1__d0__d6_d8 f_4_9 ls_2_3 =
  (ls_2_3 f_4_9);;
let rec map__d1__d0__d6_d9 f_8_4 ls_4_5 =
  (ls_4_5 f_8_4);;
let rec map__d1__d0__d7 f_1_3_6 ls_7_2 =
  (ls_7_2 f_1_3_6);;
let rec map__d1__d0__d7_d0 f_1_1_6 ls_6_2 =
  (ls_6_2 f_1_1_6);;
let rec map__d1__d0__d7_d1 f_1_4_0 ls_7_3 =
  (ls_7_3 f_1_4_0);;
let rec map__d1__d0__d7_d2 f_1_3_1 ls_6_9 =
  (ls_6_9 f_1_3_1);;
let rec map__d1__d0__d7_d3 f_1_0_9 ls_5_9 =
  (ls_5_9 f_1_0_9);;
let rec map__d1__d0__d7_d4 f_2_2_4 ls_1_2_2 =
  (ls_1_2_2 f_2_2_4);;
let rec map__d1__d0__d7_d5 f_1_8_3 ls_9_7 =
  (ls_9_7 f_1_8_3);;
let rec map__d1__d0__d7_d6 f_1_9_7 ls_1_0_7 =
  (ls_1_0_7 f_1_9_7);;
let rec map__d1__d0__d7_d7 f_2_6 ls_1_1 =
  (ls_1_1 f_2_6);;
let rec map__d1__d0__d7_d8 f_1_0_2 ls_5_4 =
  (ls_5_4 f_1_0_2);;
let rec map__d1__d0__d7_d9 f_1_9_9 ls_1_0_9 =
  (ls_1_0_9 f_1_9_9);;
let rec map__d1__d0__d8 f_2_4 ls_9 =
  (ls_9 f_2_4);;
let rec map__d1__d0__d8_d0 f_4_3 ls_1_9 =
  (ls_1_9 f_4_3);;
let rec map__d1__d0__d8_d1 f_2_0_6 ls_1_1_4 =
  (ls_1_1_4 f_2_0_6);;
let rec map__d1__d0__d8_d2 f_1_7_7 ls_9_5 =
  (ls_9_5 f_1_7_7);;
let rec map__d1__d0__d8_d3 f_4_8 ls_2_2 =
  (ls_2_2 f_4_8);;
let rec map__d1__d0__d9 f_2_0_8 ls_1_1_5 =
  (ls_1_1_5 f_2_0_8);;
let rec map__d3__d0__d0 f_1_8_5 ls_9_9 =
  (match ls_9_9 with
    | `LH_C(h_1_0_1, t_1_0_1) -> 
      (`LH_C((f_1_8_5 h_1_0_1), ((map__d3__d0__d0 f_1_8_5) t_1_0_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3__d0__d1 f_6_2 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_3_7, t_3_7) -> 
      (`LH_C((f_6_2 h_3_7), ((map__d3__d0__d1 f_6_2) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3__d0__d2 f_1_6_7 ls_9_1 =
  (match ls_9_1 with
    | `LH_C(h_9_1, t_9_1) -> 
      (`LH_C((f_1_6_7 h_9_1), ((map__d3__d0__d2 f_1_6_7) t_9_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3__d0__d3 f_1_3_3 ls_7_1 =
  (match ls_7_1 with
    | `LH_C(h_7_5, t_7_5) -> 
      (`LH_C((f_1_3_3 h_7_5), ((map__d3__d0__d3 f_1_3_3) t_7_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4__d0__d0 f_5_8 ls_2_9 =
  (ls_2_9 f_5_8);;
let rec map__d4__d0__d1 f_1_8_8 ls_1_0_1 =
  (ls_1_0_1 f_1_8_8);;
let rec map__d4__d0__d2 f_1_6_1 ls_8_7 =
  (ls_8_7 f_1_6_1);;
let rec map__d4__d0__d3 f_7_7 ls_4_1 =
  (ls_4_1 f_7_7);;
let rec map__d4__d0__d4 f_1_3_2 ls_7_0 =
  (ls_7_0 f_1_3_2);;
let rec map__d5__d0__d0 f_1_4_7 ls_7_9 =
  (ls_7_9 f_1_4_7);;
let rec map__d5__d0__d1 f_1_2_2 ls_6_4 =
  (ls_6_4 f_1_2_2);;
let rec mappend__d0__d0__d0 xs_5 ys_9 =
  (match xs_5 with
    | `LH_C(h_4_0, t_4_0) -> 
      (`LH_C(h_4_0, ((mappend__d0__d0__d0 t_4_0) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d0__d0__d1 xs_1_0 ys_1_6 =
  (match xs_1_0 with
    | `LH_C(h_7_9, t_7_9) -> 
      (`LH_C(h_7_9, ((mappend__d0__d0__d1 t_7_9) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d0__d0__d2 xs_4 ys_8 =
  (match xs_4 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend__d0__d0__d2 t_2_6) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend__d0__d0__d3 xs_7 ys_1_1 =
  (match xs_7 with
    | `LH_C(h_5_4, t_5_4) -> 
      (`LH_C(h_5_4, ((mappend__d0__d0__d3 t_5_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1__d0__d0 xs_1_4 ys_2_0 =
  (match xs_1_4 with
    | `LH_C(h_1_0_3, t_1_0_3) -> 
      (`LH_C(h_1_0_3, ((mappend__d1__d0__d0 t_1_0_3) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1__d0__d1 xs_1_3 ys_1_9 =
  (match xs_1_3 with
    | `LH_C(h_8_8, t_8_8) -> 
      (`LH_C(h_8_8, ((mappend__d1__d0__d1 t_8_8) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d1__d0__d2 xs_6 ys_1_0 =
  (match xs_6 with
    | `LH_C(h_4_2, t_4_2) -> 
      (`LH_C(h_4_2, ((mappend__d1__d0__d2 t_4_2) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1__d0__d3 xs_9 ys_1_5 =
  (match xs_9 with
    | `LH_C(h_7_4, t_7_4) -> 
      (`LH_C(h_7_4, ((mappend__d1__d0__d3 t_7_4) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d2__d0__d0 xs_1_2 ys_1_8 =
  (xs_1_2 ys_1_8);;
let rec mappend__d2__d0__d1 xs_1_8 ys_2_6 =
  (xs_1_8 ys_2_6);;
let rec mappend__d2__d0__d2 xs_3 ys_5 =
  (xs_3 ys_5);;
let rec mappend__d2__d0__d3 xs_1_5 ys_2_3 =
  (xs_1_5 ys_2_3);;
let rec mappend__d2__d0__d4 xs_1_6 ys_2_4 =
  (xs_1_6 ys_2_4);;
let rec mappend__d2__d0__d5 xs_8 ys_1_4 =
  (xs_8 ys_1_4);;
let rec mappend__d2__d0__d6 xs_1_7 ys_2_5 =
  (xs_1_7 ys_2_5);;
let rec mappend__d2__d0__d7 xs_1_1 ys_1_7 =
  (xs_1_1 ys_1_7);;
let rec sum__d0__d0__d0 ls_1_0_2 =
  (match ls_1_0_2 with
    | `LH_C(h_1_0_5, t_1_0_5) -> 
      (h_1_0_5 + (sum__d0__d0__d0 t_1_0_5))
    | `LH_N -> 
      0);;
let rec sum__d0__d0__d1 ls_1_1_7 =
  (match ls_1_1_7 with
    | `LH_C(h_1_1_5, t_1_1_5) -> 
      (h_1_1_5 + (sum__d0__d0__d1 t_1_1_5))
    | `LH_N -> 
      0);;
let rec sum__d0__d0__d2 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_6_2, t_6_2) -> 
      (h_6_2 + (sum__d0__d0__d2 t_6_2))
    | `LH_N -> 
      0);;
let rec sum__d0__d0__d3 ls_4_7 =
  (match ls_4_7 with
    | `LH_C(h_4_9, t_4_9) -> 
      (h_4_9 + (sum__d0__d0__d3 t_4_9))
    | `LH_N -> 
      0);;
let rec awards__d0__d0__d0 _lh_awards_arg1_3 =
  (let rec sumscores_3 = ((map__d0__d0__d0 (fun p_3 -> 
    (`LH_P2((sum__d0__d0__d0 p_3), p_3)))) ((perms__d0__d0__d0 3) _lh_awards_arg1_3)) in
    (let rec atleast_1_2 = (fun threshold_3 -> 
      ((filter__d0__d0__d0 (fun sum_p_3 -> 
        (let rec _lh_matchIdent_1_6 = sum_p_3 in
          (match _lh_matchIdent_1_6 with
            | `LH_P2(_lh_awards_LH_P2_0_1_2, _lh_awards_LH_P2_1_1_2) -> 
              (_lh_awards_LH_P2_0_1_2 >= threshold_3)
            | _ -> 
              (failwith "error"))))) sumscores_3)) in
      (let rec award_3 = (fun name_threshold_3 -> 
        (let rec _lh_matchIdent_1_7 = name_threshold_3 in
          (_lh_matchIdent_1_7 atleast_1_2))) in
        ((mappend__d0__d0__d0 ((mappend__d1__d0__d0 (award_3 (let rec _lh_awards_LH_P2_1_1_3 = 70 in
          (let rec _lh_awards_LH_P2_0_1_3 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_1_3 -> 
              ((map__d1__d0__d1 (fun ps_9 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_3, ps_9)))) (sort__d0__d0__d2 (atleast_1_3 _lh_awards_LH_P2_1_1_3)))))))) (award_3 (let rec _lh_awards_LH_P2_1_1_4 = 60 in
          (let rec _lh_awards_LH_P2_0_1_4 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_1_4 -> 
              ((map__d1__d0__d2 (fun ps_1_0 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_4, ps_1_0)))) (sort__d0__d0__d0 (atleast_1_4 _lh_awards_LH_P2_1_1_4))))))))) (award_3 (let rec _lh_awards_LH_P2_1_1_5 = 50 in
          (let rec _lh_awards_LH_P2_0_1_5 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_1_5 -> 
              ((map__d1__d0__d0 (fun ps_1_1 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_5, ps_1_1)))) (sort__d0__d0__d1 (atleast_1_5 _lh_awards_LH_P2_1_1_5)))))))))))
and awards__d0__d0__d1 _lh_awards_arg1_1 =
  (let rec sumscores_1 = ((map__d0__d0__d1 (fun p_1 -> 
    (`LH_P2((sum__d0__d0__d1 p_1), p_1)))) ((perms__d0__d0__d1 3) _lh_awards_arg1_1)) in
    (let rec atleast_4 = (fun threshold_1 -> 
      ((filter__d0__d0__d3 (fun sum_p_1 -> 
        (let rec _lh_matchIdent_5 = sum_p_1 in
          (match _lh_matchIdent_5 with
            | `LH_P2(_lh_awards_LH_P2_0_4, _lh_awards_LH_P2_1_4) -> 
              (_lh_awards_LH_P2_0_4 >= threshold_1)
            | _ -> 
              (failwith "error"))))) sumscores_1)) in
      (let rec award_1 = (fun name_threshold_1 -> 
        (let rec _lh_matchIdent_6 = name_threshold_1 in
          (_lh_matchIdent_6 atleast_4))) in
        ((mappend__d0__d0__d1 ((mappend__d1__d0__d1 (award_1 (let rec _lh_awards_LH_P2_1_5 = 70 in
          (let rec _lh_awards_LH_P2_0_5 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_5 -> 
              ((map__d1__d0__d2_d2 (fun ps_3 -> 
                (`LH_P2(_lh_awards_LH_P2_0_5, ps_3)))) (sort__d0__d0__d5 (atleast_5 _lh_awards_LH_P2_1_5)))))))) (award_1 (let rec _lh_awards_LH_P2_1_6 = 60 in
          (let rec _lh_awards_LH_P2_0_6 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_6 -> 
              ((map__d1__d0__d2_d3 (fun ps_4 -> 
                (`LH_P2(_lh_awards_LH_P2_0_6, ps_4)))) (sort__d0__d0__d3 (atleast_6 _lh_awards_LH_P2_1_6))))))))) (award_1 (let rec _lh_awards_LH_P2_1_7 = 50 in
          (let rec _lh_awards_LH_P2_0_7 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_7 -> 
              ((map__d1__d0__d2_d1 (fun ps_5 -> 
                (`LH_P2(_lh_awards_LH_P2_0_7, ps_5)))) (sort__d0__d0__d4 (atleast_7 _lh_awards_LH_P2_1_7)))))))))))
and awards__d0__d0__d2 _lh_awards_arg1_2 =
  (let rec sumscores_2 = ((map__d0__d0__d2 (fun p_2 -> 
    (`LH_P2((sum__d0__d0__d2 p_2), p_2)))) ((perms__d0__d0__d2 3) _lh_awards_arg1_2)) in
    (let rec atleast_8 = (fun threshold_2 -> 
      ((filter__d0__d0__d6 (fun sum_p_2 -> 
        (let rec _lh_matchIdent_1_4 = sum_p_2 in
          (match _lh_matchIdent_1_4 with
            | `LH_P2(_lh_awards_LH_P2_0_8, _lh_awards_LH_P2_1_8) -> 
              (_lh_awards_LH_P2_0_8 >= threshold_2)
            | _ -> 
              (failwith "error"))))) sumscores_2)) in
      (let rec award_2 = (fun name_threshold_2 -> 
        (let rec _lh_matchIdent_1_5 = name_threshold_2 in
          (_lh_matchIdent_1_5 atleast_8))) in
        ((mappend__d0__d0__d2 ((mappend__d1__d0__d2 (award_2 (let rec _lh_awards_LH_P2_1_9 = 70 in
          (let rec _lh_awards_LH_P2_0_9 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_9 -> 
              ((map__d1__d0__d4_d3 (fun ps_6 -> 
                (`LH_P2(_lh_awards_LH_P2_0_9, ps_6)))) (sort__d0__d0__d8 (atleast_9 _lh_awards_LH_P2_1_9)))))))) (award_2 (let rec _lh_awards_LH_P2_1_1_0 = 60 in
          (let rec _lh_awards_LH_P2_0_1_0 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_1_0 -> 
              ((map__d1__d0__d4_d4 (fun ps_7 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_0, ps_7)))) (sort__d0__d0__d6 (atleast_1_0 _lh_awards_LH_P2_1_1_0))))))))) (award_2 (let rec _lh_awards_LH_P2_1_1_1 = 50 in
          (let rec _lh_awards_LH_P2_0_1_1 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_1_1 -> 
              ((map__d1__d0__d4_d2 (fun ps_8 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_1, ps_8)))) (sort__d0__d0__d7 (atleast_1_1 _lh_awards_LH_P2_1_1_1)))))))))))
and awards__d0__d0__d3 _lh_awards_arg1_4 =
  (let rec sumscores_4 = ((map__d0__d0__d3 (fun p_4 -> 
    (`LH_P2((sum__d0__d0__d3 p_4), p_4)))) ((perms__d0__d0__d3 3) _lh_awards_arg1_4)) in
    (let rec atleast_1_6 = (fun threshold_4 -> 
      ((filter__d0__d0__d9 (fun sum_p_4 -> 
        (let rec _lh_matchIdent_2_0 = sum_p_4 in
          (match _lh_matchIdent_2_0 with
            | `LH_P2(_lh_awards_LH_P2_0_1_6, _lh_awards_LH_P2_1_1_6) -> 
              (_lh_awards_LH_P2_0_1_6 >= threshold_4)
            | _ -> 
              (failwith "error"))))) sumscores_4)) in
      (let rec award_4 = (fun name_threshold_4 -> 
        (let rec _lh_matchIdent_2_1 = name_threshold_4 in
          (_lh_matchIdent_2_1 atleast_1_6))) in
        ((mappend__d0__d0__d3 ((mappend__d1__d0__d3 (award_4 (let rec _lh_awards_LH_P2_1_1_7 = 70 in
          (let rec _lh_awards_LH_P2_0_1_7 = (`LH_C('G', (`LH_C('o', (`LH_C('l', (`LH_C('d', (`LH_N))))))))) in
            (fun atleast_1_7 -> 
              ((map__d1__d0__d6_d4 (fun ps_1_2 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_7, ps_1_2)))) (sort__d0__d0__d1_d1 (atleast_1_7 _lh_awards_LH_P2_1_1_7)))))))) (award_4 (let rec _lh_awards_LH_P2_1_1_8 = 60 in
          (let rec _lh_awards_LH_P2_0_1_8 = (`LH_C('S', (`LH_C('i', (`LH_C('l', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_N))))))))))))) in
            (fun atleast_1_8 -> 
              ((map__d1__d0__d6_d5 (fun ps_1_3 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_8, ps_1_3)))) (sort__d0__d0__d9 (atleast_1_8 _lh_awards_LH_P2_1_1_8))))))))) (award_4 (let rec _lh_awards_LH_P2_1_1_9 = 50 in
          (let rec _lh_awards_LH_P2_0_1_9 = (`LH_C('B', (`LH_C('r', (`LH_C('o', (`LH_C('n', (`LH_C('z', (`LH_C('e', (`LH_N))))))))))))) in
            (fun atleast_1_9 -> 
              ((map__d1__d0__d6_d3 (fun ps_1_4 -> 
                (`LH_P2(_lh_awards_LH_P2_0_1_9, ps_1_4)))) (sort__d0__d0__d1_d0 (atleast_1_9 _lh_awards_LH_P2_1_1_9)))))))))))
and competitors__d0__d0__d0 _lh_competitors_arg1_1 f_2_1_8 =
  (let rec t_1_1_7 = (let rec t_1_1_8 = (let rec t_1_1_9 = (let rec t_1_2_0 = (fun f_2_1_4 -> 
    (`LH_N)) in
    (let rec h_1_1_7 = (let rec _lh_findallawards_LH_P2_1_4 = (`LH_C(9, (`LH_C(23, (`LH_C(17, (`LH_C(54, (`LH_C(_lh_competitors_arg1_1, (`LH_C(41, (`LH_C(9, (`LH_C(18, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_4 = (`LH_C('K', (`LH_C('e', (`LH_C('v', (`LH_C('i', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_4 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_4, (findawards__d0__d0__d0 _lh_findallawards_LH_P2_1_4)))))) in
      (fun f_2_1_5 -> 
        (`LH_C((f_2_1_5 h_1_1_7), ((map__d4__d0__d0 f_2_1_5) t_1_2_0)))))) in
    (let rec h_1_1_8 = (let rec _lh_findallawards_LH_P2_1_5 = (`LH_C(1, (`LH_C(18, (`LH_C(_lh_competitors_arg1_1, (`LH_C(20, (`LH_C(21, (`LH_C(19, (`LH_C(34, (`LH_C(8, (`LH_C(16, (`LH_C(21, (`LH_N))))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_5 = (`LH_C('P', (`LH_C('h', (`LH_C('i', (`LH_C('l', (`LH_N))))))))) in
        (fun _lh_dummy_5 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_5, (findawards__d0__d0__d1 _lh_findallawards_LH_P2_1_5)))))) in
      (fun f_2_1_6 -> 
        (`LH_C((f_2_1_6 h_1_1_8), ((map__d4__d0__d1 f_2_1_6) t_1_1_9)))))) in
    (let rec h_1_1_9 = (let rec _lh_findallawards_LH_P2_1_6 = (`LH_C(23, (`LH_C(19, (`LH_C(45, (`LH_C(_lh_competitors_arg1_1, (`LH_C(17, (`LH_C(10, (`LH_C(5, (`LH_C(8, (`LH_C(14, (`LH_N))))))))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_6 = (`LH_C('H', (`LH_C('a', (`LH_C('n', (`LH_C('s', (`LH_N))))))))) in
        (fun _lh_dummy_6 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_6, (findawards__d0__d0__d2 _lh_findallawards_LH_P2_1_6)))))) in
      (fun f_2_1_7 -> 
        (`LH_C((f_2_1_7 h_1_1_9), ((map__d4__d0__d2 f_2_1_7) t_1_1_8)))))) in
    (let rec h_1_2_0 = (let rec _lh_findallawards_LH_P2_1_7 = (`LH_C(35, (`LH_C(27, (`LH_C(40, (`LH_C(_lh_competitors_arg1_1, (`LH_C(34, (`LH_C(21, (`LH_N))))))))))))) in
      (let rec _lh_findallawards_LH_P2_0_7 = (`LH_C('S', (`LH_C('i', (`LH_C('m', (`LH_C('o', (`LH_C('n', (`LH_N))))))))))) in
        (fun _lh_dummy_7 -> 
          (`LH_P2(_lh_findallawards_LH_P2_0_7, (findawards__d0__d0__d3 _lh_findallawards_LH_P2_1_7)))))) in
      (`LH_C((f_2_1_8 h_1_2_0), ((map__d4__d0__d3 f_2_1_8) t_1_1_7)))))
and enumFromTo__d0__d0__d0 a_5 b_5 _lh_popOutId_0_6 =
  (if (a_5 <= b_5) then
    (let rec t_4_7 = ((enumFromTo__d0__d0__d0 (a_5 + 1)) b_5) in
      (let rec h_4_7 = a_5 in
        (`LH_C((_lh_popOutId_0_6 h_4_7), ((map__d5__d0__d0 _lh_popOutId_0_6) t_4_7)))))
  else
    (`LH_N))
and findallawards__d0__d0__d0 _lh_findallawards_arg1_1 =
  ((map__d4__d0__d4 (fun name_scores_1 -> 
    (let rec _lh_matchIdent_1_3 = name_scores_1 in
      (_lh_matchIdent_1_3 99)))) _lh_findallawards_arg1_1)
and findawards__d0__d0__d0 _lh_findawards_arg1_2 =
  (let rec _lh_matchIdent_9 = (awards__d0__d0__d0 _lh_findawards_arg1_2) in
    (match _lh_matchIdent_9 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_2, _lh_findawards_LH_C_1_2) -> 
        (let rec _lh_matchIdent_1_0 = _lh_findawards_LH_C_0_2 in
          (match _lh_matchIdent_1_0 with
            | `LH_P2(_lh_findawards_LH_P2_0_4, _lh_findawards_LH_P2_1_4) -> 
              (match _lh_findawards_LH_P2_1_4 with
                | `LH_P2(_lh_findawards_LH_P2_0_5, _lh_findawards_LH_P2_1_5) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_4, (`LH_P2(_lh_findawards_LH_P2_0_5, _lh_findawards_LH_P2_1_5)))), (findawards__d0__d0__d0 ((listDiff__d0__d0__d0 _lh_findawards_arg1_2) _lh_findawards_LH_P2_1_5))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and findawards__d0__d0__d1 _lh_findawards_arg1_3 =
  (let rec _lh_matchIdent_1_1 = (awards__d0__d0__d1 _lh_findawards_arg1_3) in
    (match _lh_matchIdent_1_1 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_3, _lh_findawards_LH_C_1_3) -> 
        (let rec _lh_matchIdent_1_2 = _lh_findawards_LH_C_0_3 in
          (match _lh_matchIdent_1_2 with
            | `LH_P2(_lh_findawards_LH_P2_0_6, _lh_findawards_LH_P2_1_6) -> 
              (match _lh_findawards_LH_P2_1_6 with
                | `LH_P2(_lh_findawards_LH_P2_0_7, _lh_findawards_LH_P2_1_7) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_6, (`LH_P2(_lh_findawards_LH_P2_0_7, _lh_findawards_LH_P2_1_7)))), (findawards__d0__d0__d1 ((listDiff__d0__d0__d1 _lh_findawards_arg1_3) _lh_findawards_LH_P2_1_7))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and findawards__d0__d0__d2 _lh_findawards_arg1_4 =
  (let rec _lh_matchIdent_1_8 = (awards__d0__d0__d2 _lh_findawards_arg1_4) in
    (match _lh_matchIdent_1_8 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_4, _lh_findawards_LH_C_1_4) -> 
        (let rec _lh_matchIdent_1_9 = _lh_findawards_LH_C_0_4 in
          (match _lh_matchIdent_1_9 with
            | `LH_P2(_lh_findawards_LH_P2_0_8, _lh_findawards_LH_P2_1_8) -> 
              (match _lh_findawards_LH_P2_1_8 with
                | `LH_P2(_lh_findawards_LH_P2_0_9, _lh_findawards_LH_P2_1_9) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_8, (`LH_P2(_lh_findawards_LH_P2_0_9, _lh_findawards_LH_P2_1_9)))), (findawards__d0__d0__d2 ((listDiff__d0__d0__d2 _lh_findawards_arg1_4) _lh_findawards_LH_P2_1_9))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and findawards__d0__d0__d3 _lh_findawards_arg1_1 =
  (let rec _lh_matchIdent_7 = (awards__d0__d0__d3 _lh_findawards_arg1_1) in
    (match _lh_matchIdent_7 with
      | `LH_N -> 
        (`LH_N)
      | `LH_C(_lh_findawards_LH_C_0_1, _lh_findawards_LH_C_1_1) -> 
        (let rec _lh_matchIdent_8 = _lh_findawards_LH_C_0_1 in
          (match _lh_matchIdent_8 with
            | `LH_P2(_lh_findawards_LH_P2_0_2, _lh_findawards_LH_P2_1_2) -> 
              (match _lh_findawards_LH_P2_1_2 with
                | `LH_P2(_lh_findawards_LH_P2_0_3, _lh_findawards_LH_P2_1_3) -> 
                  (`LH_C((`LH_P2(_lh_findawards_LH_P2_0_2, (`LH_P2(_lh_findawards_LH_P2_0_3, _lh_findawards_LH_P2_1_3)))), (findawards__d0__d0__d3 ((listDiff__d0__d0__d3 _lh_findawards_arg1_1) _lh_findawards_LH_P2_1_3))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error")))
and listDiff__d0__d0__d0 =
  (foldl__d0__d0__d0 delete__d0__d0__d0)
and listDiff__d0__d0__d1 =
  (foldl__d0__d0__d1 delete__d0__d0__d1)
and listDiff__d0__d0__d2 =
  (foldl__d0__d0__d2 delete__d0__d0__d2)
and listDiff__d0__d0__d3 =
  (foldl__d0__d0__d3 delete__d0__d0__d3)
and map__d0__d0__d0 f_3_8 ls_1_8 _lh_popOutId_0_3 =
  (match ls_1_8 with
    | `LH_C(h_2_8, t_2_8) -> 
      (let rec t_2_9 = ((map__d0__d0__d0 f_3_8) t_2_8) in
        (let rec h_2_9 = (f_3_8 h_2_8) in
          (if (_lh_popOutId_0_3 h_2_9) then
            (`LH_C(h_2_9, ((filter__d0__d0__d1 _lh_popOutId_0_3) t_2_9)))
          else
            ((filter__d0__d0__d2 _lh_popOutId_0_3) t_2_9))))
    | `LH_N -> 
      (`LH_N))
and map__d0__d0__d1 f_1_2_7 ls_6_7 _lh_popOutId_0_2 =
  (match ls_6_7 with
    | `LH_C(h_7_2, t_7_2) -> 
      (let rec t_7_3 = ((map__d0__d0__d1 f_1_2_7) t_7_2) in
        (let rec h_7_3 = (f_1_2_7 h_7_2) in
          (if (_lh_popOutId_0_2 h_7_3) then
            (`LH_C(h_7_3, ((filter__d0__d0__d4 _lh_popOutId_0_2) t_7_3)))
          else
            ((filter__d0__d0__d5 _lh_popOutId_0_2) t_7_3))))
    | `LH_N -> 
      (`LH_N))
and map__d0__d0__d2 f_6_3 ls_3_2 _lh_popOutId_0_7 =
  (match ls_3_2 with
    | `LH_C(h_3_8, t_3_8) -> 
      (let rec t_3_9 = ((map__d0__d0__d2 f_6_3) t_3_8) in
        (let rec h_3_9 = (f_6_3 h_3_8) in
          (if (_lh_popOutId_0_7 h_3_9) then
            (`LH_C(h_3_9, ((filter__d0__d0__d7 _lh_popOutId_0_7) t_3_9)))
          else
            ((filter__d0__d0__d8 _lh_popOutId_0_7) t_3_9))))
    | `LH_N -> 
      (`LH_N))
and map__d0__d0__d3 f_1_7_0 ls_9_3 _lh_popOutId_0_5 =
  (match ls_9_3 with
    | `LH_C(h_9_3, t_9_3) -> 
      (let rec t_9_4 = ((map__d0__d0__d3 f_1_7_0) t_9_3) in
        (let rec h_9_4 = (f_1_7_0 h_9_3) in
          (if (_lh_popOutId_0_5 h_9_4) then
            (`LH_C(h_9_4, ((filter__d0__d0__d1_d0 _lh_popOutId_0_5) t_9_4)))
          else
            ((filter__d0__d0__d1_d1 _lh_popOutId_0_5) t_9_4))))
    | `LH_N -> 
      (`LH_N))
and map__d2__d0__d0 f_2_3_4 ls_1_2_9 _lh_popOutId_0_8 =
  (match ls_1_2_9 with
    | `LH_C(h_1_2_6, t_1_2_6) -> 
      (let rec t_1_2_7 = ((map__d2__d0__d0 f_2_3_4) t_1_2_6) in
        (let rec h_1_2_7 = (f_2_3_4 h_1_2_6) in
          (`LH_C(h_1_2_7, ((mappend__d2__d0__d0 t_1_2_7) _lh_popOutId_0_8)))))
    | `LH_N -> 
      _lh_popOutId_0_8)
and map__d2__d0__d1 f_2_8 ls_1_2 _lh_popOutId_0_0 =
  (match ls_1_2 with
    | `LH_C(h_2_1, t_2_1) -> 
      (let rec t_2_2 = ((map__d2__d0__d1 f_2_8) t_2_1) in
        (let rec h_2_2 = (f_2_8 h_2_1) in
          (`LH_C(h_2_2, ((mappend__d2__d0__d2 t_2_2) _lh_popOutId_0_0)))))
    | `LH_N -> 
      _lh_popOutId_0_0)
and map__d2__d0__d2 f_9_2 ls_4_9 _lh_popOutId_0_4 =
  (match ls_4_9 with
    | `LH_C(h_5_5, t_5_5) -> 
      (let rec t_5_6 = ((map__d2__d0__d2 f_9_2) t_5_5) in
        (let rec h_5_6 = (f_9_2 h_5_5) in
          (`LH_C(h_5_6, ((mappend__d2__d0__d4 t_5_6) _lh_popOutId_0_4)))))
    | `LH_N -> 
      _lh_popOutId_0_4)
and map__d2__d0__d3 f_2_0_3 ls_1_1_1 _lh_popOutId_0_1 =
  (match ls_1_1_1 with
    | `LH_C(h_1_1_1, t_1_1_1) -> 
      (let rec t_1_1_2 = ((map__d2__d0__d3 f_2_0_3) t_1_1_1) in
        (let rec h_1_1_2 = (f_2_0_3 h_1_1_1) in
          (`LH_C(h_1_1_2, ((mappend__d2__d0__d6 t_1_1_2) _lh_popOutId_0_1)))))
    | `LH_N -> 
      _lh_popOutId_0_1)
and perms__d0__d0__d0 _lh_perms_arg1_2 _lh_perms_arg2_2 =
  (match _lh_perms_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_2 with
        | 1 -> 
          ((map__d3__d0__d0 (fun x_6 -> 
            (`LH_C(x_6, (`LH_N))))) _lh_perms_arg2_2)
        | _ -> 
          (match _lh_perms_arg2_2 with
            | `LH_C(_lh_perms_LH_C_0_2, _lh_perms_LH_C_1_2) -> 
              ((mappend__d2__d0__d1 ((map__d2__d0__d0 (fun x_7 -> 
                (`LH_C(_lh_perms_LH_C_0_2, x_7)))) ((perms__d0__d0__d0 (_lh_perms_arg1_2 - 1)) _lh_perms_LH_C_1_2))) ((perms__d0__d0__d0 _lh_perms_arg1_2) _lh_perms_LH_C_1_2))
            | _ -> 
              (failwith "error"))))
and perms__d0__d0__d1 _lh_perms_arg1_4 _lh_perms_arg2_4 =
  (match _lh_perms_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_4 with
        | 1 -> 
          ((map__d3__d0__d1 (fun x_1_0 -> 
            (`LH_C(x_1_0, (`LH_N))))) _lh_perms_arg2_4)
        | _ -> 
          (match _lh_perms_arg2_4 with
            | `LH_C(_lh_perms_LH_C_0_4, _lh_perms_LH_C_1_4) -> 
              ((mappend__d2__d0__d3 ((map__d2__d0__d1 (fun x_1_1 -> 
                (`LH_C(_lh_perms_LH_C_0_4, x_1_1)))) ((perms__d0__d0__d1 (_lh_perms_arg1_4 - 1)) _lh_perms_LH_C_1_4))) ((perms__d0__d0__d1 _lh_perms_arg1_4) _lh_perms_LH_C_1_4))
            | _ -> 
              (failwith "error"))))
and perms__d0__d0__d2 _lh_perms_arg1_3 _lh_perms_arg2_3 =
  (match _lh_perms_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_3 with
        | 1 -> 
          ((map__d3__d0__d2 (fun x_8 -> 
            (`LH_C(x_8, (`LH_N))))) _lh_perms_arg2_3)
        | _ -> 
          (match _lh_perms_arg2_3 with
            | `LH_C(_lh_perms_LH_C_0_3, _lh_perms_LH_C_1_3) -> 
              ((mappend__d2__d0__d5 ((map__d2__d0__d2 (fun x_9 -> 
                (`LH_C(_lh_perms_LH_C_0_3, x_9)))) ((perms__d0__d0__d2 (_lh_perms_arg1_3 - 1)) _lh_perms_LH_C_1_3))) ((perms__d0__d0__d2 _lh_perms_arg1_3) _lh_perms_LH_C_1_3))
            | _ -> 
              (failwith "error"))))
and perms__d0__d0__d3 _lh_perms_arg1_1 _lh_perms_arg2_1 =
  (match _lh_perms_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_perms_arg1_1 with
        | 1 -> 
          ((map__d3__d0__d3 (fun x_3 -> 
            (`LH_C(x_3, (`LH_N))))) _lh_perms_arg2_1)
        | _ -> 
          (match _lh_perms_arg2_1 with
            | `LH_C(_lh_perms_LH_C_0_1, _lh_perms_LH_C_1_1) -> 
              ((mappend__d2__d0__d7 ((map__d2__d0__d3 (fun x_4 -> 
                (`LH_C(_lh_perms_LH_C_0_1, x_4)))) ((perms__d0__d0__d3 (_lh_perms_arg1_1 - 1)) _lh_perms_LH_C_1_1))) ((perms__d0__d0__d3 _lh_perms_arg1_1) _lh_perms_LH_C_1_1))
            | _ -> 
              (failwith "error"))))
and qpart__d0__d0__d0 _lh_qpart_arg1_1_0 _lh_qpart_arg2_1_0 _lh_qpart_arg3_1_0 _lh_qpart_arg4_1_0 _lh_qpart_arg5_1_0 _lh_qpart_arg6_1_0 =
  (match _lh_qpart_arg3_1_0 with
    | `LH_N -> 
      (((rqsort__d0__d0__d0 _lh_qpart_arg1_1_0) _lh_qpart_arg4_1_0) (let rec t_1_0_2 = (((rqsort__d1__d0__d0 _lh_qpart_arg1_1_0) _lh_qpart_arg5_1_0) _lh_qpart_arg6_1_0) in
        (let rec h_1_0_2 = _lh_qpart_arg2_1_0 in
          (fun f_1_8_7 -> 
            (`LH_C((f_1_8_7 h_1_0_2), ((map__d1__d0__d4 f_1_8_7) t_1_0_2)))))))
    | `LH_C(_lh_qpart_LH_C_0_1_0, _lh_qpart_LH_C_1_1_0) -> 
      (if ((_lh_qpart_arg1_1_0 _lh_qpart_arg2_1_0) _lh_qpart_LH_C_0_1_0) then
        ((((((qpart__d0__d0__d0 _lh_qpart_arg1_1_0) _lh_qpart_arg2_1_0) _lh_qpart_LH_C_1_1_0) _lh_qpart_arg4_1_0) (`LH_C(_lh_qpart_LH_C_0_1_0, _lh_qpart_arg5_1_0))) _lh_qpart_arg6_1_0)
      else
        ((((((qpart__d0__d0__d0 _lh_qpart_arg1_1_0) _lh_qpart_arg2_1_0) _lh_qpart_LH_C_1_1_0) (`LH_C(_lh_qpart_LH_C_0_1_0, _lh_qpart_arg4_1_0))) _lh_qpart_arg5_1_0) _lh_qpart_arg6_1_0))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d1 _lh_qpart_arg1_2 _lh_qpart_arg2_2 _lh_qpart_arg3_2 _lh_qpart_arg4_2 _lh_qpart_arg5_2 _lh_qpart_arg6_2 =
  (match _lh_qpart_arg3_2 with
    | `LH_N -> 
      (((rqsort__d0__d0__d1 _lh_qpart_arg1_2) _lh_qpart_arg4_2) (let rec t_3_0 = (((rqsort__d1__d0__d1 _lh_qpart_arg1_2) _lh_qpart_arg5_2) _lh_qpart_arg6_2) in
        (let rec h_3_0 = _lh_qpart_arg2_2 in
          (fun f_4_1 -> 
            (`LH_C((f_4_1 h_3_0), ((map__d1__d0__d1_d0 f_4_1) t_3_0)))))))
    | `LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_LH_C_1_2) -> 
      (if ((_lh_qpart_arg1_2 _lh_qpart_arg2_2) _lh_qpart_LH_C_0_2) then
        ((((((qpart__d0__d0__d1 _lh_qpart_arg1_2) _lh_qpart_arg2_2) _lh_qpart_LH_C_1_2) _lh_qpart_arg4_2) (`LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_arg5_2))) _lh_qpart_arg6_2)
      else
        ((((((qpart__d0__d0__d1 _lh_qpart_arg1_2) _lh_qpart_arg2_2) _lh_qpart_LH_C_1_2) (`LH_C(_lh_qpart_LH_C_0_2, _lh_qpart_arg4_2))) _lh_qpart_arg5_2) _lh_qpart_arg6_2))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d1_d0 _lh_qpart_arg1_1_2 _lh_qpart_arg2_1_2 _lh_qpart_arg3_1_2 _lh_qpart_arg4_1_2 _lh_qpart_arg5_1_2 _lh_qpart_arg6_1_2 =
  (match _lh_qpart_arg3_1_2 with
    | `LH_N -> 
      (((rqsort__d0__d0__d1_d0 _lh_qpart_arg1_1_2) _lh_qpart_arg4_1_2) (let rec t_1_3_2 = (((rqsort__d1__d0__d1_d0 _lh_qpart_arg1_1_2) _lh_qpart_arg5_1_2) _lh_qpart_arg6_1_2) in
        (let rec h_1_3_2 = _lh_qpart_arg2_1_2 in
          (fun f_2_4_1 -> 
            (`LH_C((f_2_4_1 h_1_3_2), ((map__d1__d0__d7_d3 f_2_4_1) t_1_3_2)))))))
    | `LH_C(_lh_qpart_LH_C_0_1_2, _lh_qpart_LH_C_1_1_2) -> 
      (if ((_lh_qpart_arg1_1_2 _lh_qpart_arg2_1_2) _lh_qpart_LH_C_0_1_2) then
        ((((((qpart__d0__d0__d1_d0 _lh_qpart_arg1_1_2) _lh_qpart_arg2_1_2) _lh_qpart_LH_C_1_1_2) _lh_qpart_arg4_1_2) (`LH_C(_lh_qpart_LH_C_0_1_2, _lh_qpart_arg5_1_2))) _lh_qpart_arg6_1_2)
      else
        ((((((qpart__d0__d0__d1_d0 _lh_qpart_arg1_1_2) _lh_qpart_arg2_1_2) _lh_qpart_LH_C_1_1_2) (`LH_C(_lh_qpart_LH_C_0_1_2, _lh_qpart_arg4_1_2))) _lh_qpart_arg5_1_2) _lh_qpart_arg6_1_2))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d1_d1 _lh_qpart_arg1_1 _lh_qpart_arg2_1 _lh_qpart_arg3_1 _lh_qpart_arg4_1 _lh_qpart_arg5_1 _lh_qpart_arg6_1 =
  (match _lh_qpart_arg3_1 with
    | `LH_N -> 
      (((rqsort__d0__d0__d1_d1 _lh_qpart_arg1_1) _lh_qpart_arg4_1) (let rec t_2_5 = (((rqsort__d1__d0__d1_d1 _lh_qpart_arg1_1) _lh_qpart_arg5_1) _lh_qpart_arg6_1) in
        (let rec h_2_5 = _lh_qpart_arg2_1 in
          (fun f_3_6 -> 
            (`LH_C((f_3_6 h_2_5), ((map__d1__d0__d7_d9 f_3_6) t_2_5)))))))
    | `LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_LH_C_1_1) -> 
      (if ((_lh_qpart_arg1_1 _lh_qpart_arg2_1) _lh_qpart_LH_C_0_1) then
        ((((((qpart__d0__d0__d1_d1 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) _lh_qpart_arg4_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg5_1))) _lh_qpart_arg6_1)
      else
        ((((((qpart__d0__d0__d1_d1 _lh_qpart_arg1_1) _lh_qpart_arg2_1) _lh_qpart_LH_C_1_1) (`LH_C(_lh_qpart_LH_C_0_1, _lh_qpart_arg4_1))) _lh_qpart_arg5_1) _lh_qpart_arg6_1))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d2 _lh_qpart_arg1_6 _lh_qpart_arg2_6 _lh_qpart_arg3_6 _lh_qpart_arg4_6 _lh_qpart_arg5_6 _lh_qpart_arg6_6 =
  (match _lh_qpart_arg3_6 with
    | `LH_N -> 
      (((rqsort__d0__d0__d2 _lh_qpart_arg1_6) _lh_qpart_arg4_6) (let rec t_4_8 = (((rqsort__d1__d0__d2 _lh_qpart_arg1_6) _lh_qpart_arg5_6) _lh_qpart_arg6_6) in
        (let rec h_4_8 = _lh_qpart_arg2_6 in
          (fun f_8_6 -> 
            (`LH_C((f_8_6 h_4_8), ((map__d1__d0__d1_d6 f_8_6) t_4_8)))))))
    | `LH_C(_lh_qpart_LH_C_0_6, _lh_qpart_LH_C_1_6) -> 
      (if ((_lh_qpart_arg1_6 _lh_qpart_arg2_6) _lh_qpart_LH_C_0_6) then
        ((((((qpart__d0__d0__d2 _lh_qpart_arg1_6) _lh_qpart_arg2_6) _lh_qpart_LH_C_1_6) _lh_qpart_arg4_6) (`LH_C(_lh_qpart_LH_C_0_6, _lh_qpart_arg5_6))) _lh_qpart_arg6_6)
      else
        ((((((qpart__d0__d0__d2 _lh_qpart_arg1_6) _lh_qpart_arg2_6) _lh_qpart_LH_C_1_6) (`LH_C(_lh_qpart_LH_C_0_6, _lh_qpart_arg4_6))) _lh_qpart_arg5_6) _lh_qpart_arg6_6))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d3 _lh_qpart_arg1_4 _lh_qpart_arg2_4 _lh_qpart_arg3_4 _lh_qpart_arg4_4 _lh_qpart_arg5_4 _lh_qpart_arg6_4 =
  (match _lh_qpart_arg3_4 with
    | `LH_N -> 
      (((rqsort__d0__d0__d3 _lh_qpart_arg1_4) _lh_qpart_arg4_4) (let rec t_4_1 = (((rqsort__d1__d0__d3 _lh_qpart_arg1_4) _lh_qpart_arg5_4) _lh_qpart_arg6_4) in
        (let rec h_4_1 = _lh_qpart_arg2_4 in
          (fun f_6_6 -> 
            (`LH_C((f_6_6 h_4_1), ((map__d1__d0__d2_d5 f_6_6) t_4_1)))))))
    | `LH_C(_lh_qpart_LH_C_0_4, _lh_qpart_LH_C_1_4) -> 
      (if ((_lh_qpart_arg1_4 _lh_qpart_arg2_4) _lh_qpart_LH_C_0_4) then
        ((((((qpart__d0__d0__d3 _lh_qpart_arg1_4) _lh_qpart_arg2_4) _lh_qpart_LH_C_1_4) _lh_qpart_arg4_4) (`LH_C(_lh_qpart_LH_C_0_4, _lh_qpart_arg5_4))) _lh_qpart_arg6_4)
      else
        ((((((qpart__d0__d0__d3 _lh_qpart_arg1_4) _lh_qpart_arg2_4) _lh_qpart_LH_C_1_4) (`LH_C(_lh_qpart_LH_C_0_4, _lh_qpart_arg4_4))) _lh_qpart_arg5_4) _lh_qpart_arg6_4))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d4 _lh_qpart_arg1_1_1 _lh_qpart_arg2_1_1 _lh_qpart_arg3_1_1 _lh_qpart_arg4_1_1 _lh_qpart_arg5_1_1 _lh_qpart_arg6_1_1 =
  (match _lh_qpart_arg3_1_1 with
    | `LH_N -> 
      (((rqsort__d0__d0__d4 _lh_qpart_arg1_1_1) _lh_qpart_arg4_1_1) (let rec t_1_3_1 = (((rqsort__d1__d0__d4 _lh_qpart_arg1_1_1) _lh_qpart_arg5_1_1) _lh_qpart_arg6_1_1) in
        (let rec h_1_3_1 = _lh_qpart_arg2_1_1 in
          (fun f_2_4_0 -> 
            (`LH_C((f_2_4_0 h_1_3_1), ((map__d1__d0__d3_d1 f_2_4_0) t_1_3_1)))))))
    | `LH_C(_lh_qpart_LH_C_0_1_1, _lh_qpart_LH_C_1_1_1) -> 
      (if ((_lh_qpart_arg1_1_1 _lh_qpart_arg2_1_1) _lh_qpart_LH_C_0_1_1) then
        ((((((qpart__d0__d0__d4 _lh_qpart_arg1_1_1) _lh_qpart_arg2_1_1) _lh_qpart_LH_C_1_1_1) _lh_qpart_arg4_1_1) (`LH_C(_lh_qpart_LH_C_0_1_1, _lh_qpart_arg5_1_1))) _lh_qpart_arg6_1_1)
      else
        ((((((qpart__d0__d0__d4 _lh_qpart_arg1_1_1) _lh_qpart_arg2_1_1) _lh_qpart_LH_C_1_1_1) (`LH_C(_lh_qpart_LH_C_0_1_1, _lh_qpart_arg4_1_1))) _lh_qpart_arg5_1_1) _lh_qpart_arg6_1_1))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d5 _lh_qpart_arg1_7 _lh_qpart_arg2_7 _lh_qpart_arg3_7 _lh_qpart_arg4_7 _lh_qpart_arg5_7 _lh_qpart_arg6_7 =
  (match _lh_qpart_arg3_7 with
    | `LH_N -> 
      (((rqsort__d0__d0__d5 _lh_qpart_arg1_7) _lh_qpart_arg4_7) (let rec t_7_0 = (((rqsort__d1__d0__d5 _lh_qpart_arg1_7) _lh_qpart_arg5_7) _lh_qpart_arg6_7) in
        (let rec h_7_0 = _lh_qpart_arg2_7 in
          (fun f_1_2_1 -> 
            (`LH_C((f_1_2_1 h_7_0), ((map__d1__d0__d3_d7 f_1_2_1) t_7_0)))))))
    | `LH_C(_lh_qpart_LH_C_0_7, _lh_qpart_LH_C_1_7) -> 
      (if ((_lh_qpart_arg1_7 _lh_qpart_arg2_7) _lh_qpart_LH_C_0_7) then
        ((((((qpart__d0__d0__d5 _lh_qpart_arg1_7) _lh_qpart_arg2_7) _lh_qpart_LH_C_1_7) _lh_qpart_arg4_7) (`LH_C(_lh_qpart_LH_C_0_7, _lh_qpart_arg5_7))) _lh_qpart_arg6_7)
      else
        ((((((qpart__d0__d0__d5 _lh_qpart_arg1_7) _lh_qpart_arg2_7) _lh_qpart_LH_C_1_7) (`LH_C(_lh_qpart_LH_C_0_7, _lh_qpart_arg4_7))) _lh_qpart_arg5_7) _lh_qpart_arg6_7))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d6 _lh_qpart_arg1_9 _lh_qpart_arg2_9 _lh_qpart_arg3_9 _lh_qpart_arg4_9 _lh_qpart_arg5_9 _lh_qpart_arg6_9 =
  (match _lh_qpart_arg3_9 with
    | `LH_N -> 
      (((rqsort__d0__d0__d6 _lh_qpart_arg1_9) _lh_qpart_arg4_9) (let rec t_9_8 = (((rqsort__d1__d0__d6 _lh_qpart_arg1_9) _lh_qpart_arg5_9) _lh_qpart_arg6_9) in
        (let rec h_9_8 = _lh_qpart_arg2_9 in
          (fun f_1_7_8 -> 
            (`LH_C((f_1_7_8 h_9_8), ((map__d1__d0__d4_d6 f_1_7_8) t_9_8)))))))
    | `LH_C(_lh_qpart_LH_C_0_9, _lh_qpart_LH_C_1_9) -> 
      (if ((_lh_qpart_arg1_9 _lh_qpart_arg2_9) _lh_qpart_LH_C_0_9) then
        ((((((qpart__d0__d0__d6 _lh_qpart_arg1_9) _lh_qpart_arg2_9) _lh_qpart_LH_C_1_9) _lh_qpart_arg4_9) (`LH_C(_lh_qpart_LH_C_0_9, _lh_qpart_arg5_9))) _lh_qpart_arg6_9)
      else
        ((((((qpart__d0__d0__d6 _lh_qpart_arg1_9) _lh_qpart_arg2_9) _lh_qpart_LH_C_1_9) (`LH_C(_lh_qpart_LH_C_0_9, _lh_qpart_arg4_9))) _lh_qpart_arg5_9) _lh_qpart_arg6_9))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d7 _lh_qpart_arg1_8 _lh_qpart_arg2_8 _lh_qpart_arg3_8 _lh_qpart_arg4_8 _lh_qpart_arg5_8 _lh_qpart_arg6_8 =
  (match _lh_qpart_arg3_8 with
    | `LH_N -> 
      (((rqsort__d0__d0__d7 _lh_qpart_arg1_8) _lh_qpart_arg4_8) (let rec t_9_6 = (((rqsort__d1__d0__d7 _lh_qpart_arg1_8) _lh_qpart_arg5_8) _lh_qpart_arg6_8) in
        (let rec h_9_6 = _lh_qpart_arg2_8 in
          (fun f_1_7_5 -> 
            (`LH_C((f_1_7_5 h_9_6), ((map__d1__d0__d5_d2 f_1_7_5) t_9_6)))))))
    | `LH_C(_lh_qpart_LH_C_0_8, _lh_qpart_LH_C_1_8) -> 
      (if ((_lh_qpart_arg1_8 _lh_qpart_arg2_8) _lh_qpart_LH_C_0_8) then
        ((((((qpart__d0__d0__d7 _lh_qpart_arg1_8) _lh_qpart_arg2_8) _lh_qpart_LH_C_1_8) _lh_qpart_arg4_8) (`LH_C(_lh_qpart_LH_C_0_8, _lh_qpart_arg5_8))) _lh_qpart_arg6_8)
      else
        ((((((qpart__d0__d0__d7 _lh_qpart_arg1_8) _lh_qpart_arg2_8) _lh_qpart_LH_C_1_8) (`LH_C(_lh_qpart_LH_C_0_8, _lh_qpart_arg4_8))) _lh_qpart_arg5_8) _lh_qpart_arg6_8))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d8 _lh_qpart_arg1_3 _lh_qpart_arg2_3 _lh_qpart_arg3_3 _lh_qpart_arg4_3 _lh_qpart_arg5_3 _lh_qpart_arg6_3 =
  (match _lh_qpart_arg3_3 with
    | `LH_N -> 
      (((rqsort__d0__d0__d8 _lh_qpart_arg1_3) _lh_qpart_arg4_3) (let rec t_3_5 = (((rqsort__d1__d0__d8 _lh_qpart_arg1_3) _lh_qpart_arg5_3) _lh_qpart_arg6_3) in
        (let rec h_3_5 = _lh_qpart_arg2_3 in
          (fun f_6_0 -> 
            (`LH_C((f_6_0 h_3_5), ((map__d1__d0__d5_d8 f_6_0) t_3_5)))))))
    | `LH_C(_lh_qpart_LH_C_0_3, _lh_qpart_LH_C_1_3) -> 
      (if ((_lh_qpart_arg1_3 _lh_qpart_arg2_3) _lh_qpart_LH_C_0_3) then
        ((((((qpart__d0__d0__d8 _lh_qpart_arg1_3) _lh_qpart_arg2_3) _lh_qpart_LH_C_1_3) _lh_qpart_arg4_3) (`LH_C(_lh_qpart_LH_C_0_3, _lh_qpart_arg5_3))) _lh_qpart_arg6_3)
      else
        ((((((qpart__d0__d0__d8 _lh_qpart_arg1_3) _lh_qpart_arg2_3) _lh_qpart_LH_C_1_3) (`LH_C(_lh_qpart_LH_C_0_3, _lh_qpart_arg4_3))) _lh_qpart_arg5_3) _lh_qpart_arg6_3))
    | _ -> 
      (failwith "error"))
and qpart__d0__d0__d9 _lh_qpart_arg1_5 _lh_qpart_arg2_5 _lh_qpart_arg3_5 _lh_qpart_arg4_5 _lh_qpart_arg5_5 _lh_qpart_arg6_5 =
  (match _lh_qpart_arg3_5 with
    | `LH_N -> 
      (((rqsort__d0__d0__d9 _lh_qpart_arg1_5) _lh_qpart_arg4_5) (let rec t_4_6 = (((rqsort__d1__d0__d9 _lh_qpart_arg1_5) _lh_qpart_arg5_5) _lh_qpart_arg6_5) in
        (let rec h_4_6 = _lh_qpart_arg2_5 in
          (fun f_7_9 -> 
            (`LH_C((f_7_9 h_4_6), ((map__d1__d0__d6_d7 f_7_9) t_4_6)))))))
    | `LH_C(_lh_qpart_LH_C_0_5, _lh_qpart_LH_C_1_5) -> 
      (if ((_lh_qpart_arg1_5 _lh_qpart_arg2_5) _lh_qpart_LH_C_0_5) then
        ((((((qpart__d0__d0__d9 _lh_qpart_arg1_5) _lh_qpart_arg2_5) _lh_qpart_LH_C_1_5) _lh_qpart_arg4_5) (`LH_C(_lh_qpart_LH_C_0_5, _lh_qpart_arg5_5))) _lh_qpart_arg6_5)
      else
        ((((((qpart__d0__d0__d9 _lh_qpart_arg1_5) _lh_qpart_arg2_5) _lh_qpart_LH_C_1_5) (`LH_C(_lh_qpart_LH_C_0_5, _lh_qpart_arg4_5))) _lh_qpart_arg5_5) _lh_qpart_arg6_5))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d0 _lh_qsort_arg1_6 _lh_qsort_arg2_6 _lh_qsort_arg3_6 =
  (match _lh_qsort_arg2_6 with
    | `LH_N -> 
      _lh_qsort_arg3_6
    | `LH_C(_lh_qsort_LH_C_0_6, _lh_qsort_LH_C_1_6) -> 
      (match _lh_qsort_LH_C_1_6 with
        | `LH_N -> 
          (let rec t_7_7 = _lh_qsort_arg3_6 in
            (let rec h_7_7 = _lh_qsort_LH_C_0_6 in
              (fun f_1_3_5 -> 
                (`LH_C((f_1_3_5 h_7_7), ((map__d1__d0__d3 f_1_3_5) t_7_7))))))
        | _ -> 
          ((((((qpart__d0__d0__d0 _lh_qsort_arg1_6) _lh_qsort_LH_C_0_6) _lh_qsort_LH_C_1_6) (`LH_N)) (`LH_N)) _lh_qsort_arg3_6))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d1 _lh_qsort_arg1_4 _lh_qsort_arg2_4 _lh_qsort_arg3_4 =
  (match _lh_qsort_arg2_4 with
    | `LH_N -> 
      _lh_qsort_arg3_4
    | `LH_C(_lh_qsort_LH_C_0_4, _lh_qsort_LH_C_1_4) -> 
      (match _lh_qsort_LH_C_1_4 with
        | `LH_N -> 
          (let rec t_6_9 = _lh_qsort_arg3_4 in
            (let rec h_6_9 = _lh_qsort_LH_C_0_4 in
              (fun f_1_2_0 -> 
                (`LH_C((f_1_2_0 h_6_9), ((map__d1__d0__d9 f_1_2_0) t_6_9))))))
        | _ -> 
          ((((((qpart__d0__d0__d1 _lh_qsort_arg1_4) _lh_qsort_LH_C_0_4) _lh_qsort_LH_C_1_4) (`LH_N)) (`LH_N)) _lh_qsort_arg3_4))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d1_d0 _lh_qsort_arg1_1_0 _lh_qsort_arg2_1_0 _lh_qsort_arg3_1_0 =
  (match _lh_qsort_arg2_1_0 with
    | `LH_N -> 
      _lh_qsort_arg3_1_0
    | `LH_C(_lh_qsort_LH_C_0_1_0, _lh_qsort_LH_C_1_1_0) -> 
      (match _lh_qsort_LH_C_1_1_0 with
        | `LH_N -> 
          (let rec t_1_0_6 = _lh_qsort_arg3_1_0 in
            (let rec h_1_0_6 = _lh_qsort_LH_C_0_1_0 in
              (fun f_1_9_4 -> 
                (`LH_C((f_1_9_4 h_1_0_6), ((map__d1__d0__d7_d2 f_1_9_4) t_1_0_6))))))
        | _ -> 
          ((((((qpart__d0__d0__d1_d0 _lh_qsort_arg1_1_0) _lh_qsort_LH_C_0_1_0) _lh_qsort_LH_C_1_1_0) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1_0))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d1_d1 _lh_qsort_arg1_8 _lh_qsort_arg2_8 _lh_qsort_arg3_8 =
  (match _lh_qsort_arg2_8 with
    | `LH_N -> 
      _lh_qsort_arg3_8
    | `LH_C(_lh_qsort_LH_C_0_8, _lh_qsort_LH_C_1_8) -> 
      (match _lh_qsort_LH_C_1_8 with
        | `LH_N -> 
          (let rec t_1_0_0 = _lh_qsort_arg3_8 in
            (let rec h_1_0_0 = _lh_qsort_LH_C_0_8 in
              (fun f_1_8_2 -> 
                (`LH_C((f_1_8_2 h_1_0_0), ((map__d1__d0__d7_d8 f_1_8_2) t_1_0_0))))))
        | _ -> 
          ((((((qpart__d0__d0__d1_d1 _lh_qsort_arg1_8) _lh_qsort_LH_C_0_8) _lh_qsort_LH_C_1_8) (`LH_N)) (`LH_N)) _lh_qsort_arg3_8))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d2 _lh_qsort_arg1_1_1 _lh_qsort_arg2_1_1 _lh_qsort_arg3_1_1 =
  (match _lh_qsort_arg2_1_1 with
    | `LH_N -> 
      _lh_qsort_arg3_1_1
    | `LH_C(_lh_qsort_LH_C_0_1_1, _lh_qsort_LH_C_1_1_1) -> 
      (match _lh_qsort_LH_C_1_1_1 with
        | `LH_N -> 
          (let rec t_1_0_7 = _lh_qsort_arg3_1_1 in
            (let rec h_1_0_7 = _lh_qsort_LH_C_0_1_1 in
              (fun f_1_9_5 -> 
                (`LH_C((f_1_9_5 h_1_0_7), ((map__d1__d0__d1_d5 f_1_9_5) t_1_0_7))))))
        | _ -> 
          ((((((qpart__d0__d0__d2 _lh_qsort_arg1_1_1) _lh_qsort_LH_C_0_1_1) _lh_qsort_LH_C_1_1_1) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1_1))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d3 _lh_qsort_arg1_9 _lh_qsort_arg2_9 _lh_qsort_arg3_9 =
  (match _lh_qsort_arg2_9 with
    | `LH_N -> 
      _lh_qsort_arg3_9
    | `LH_C(_lh_qsort_LH_C_0_9, _lh_qsort_LH_C_1_9) -> 
      (match _lh_qsort_LH_C_1_9 with
        | `LH_N -> 
          (let rec t_1_0_4 = _lh_qsort_arg3_9 in
            (let rec h_1_0_4 = _lh_qsort_LH_C_0_9 in
              (fun f_1_8_9 -> 
                (`LH_C((f_1_8_9 h_1_0_4), ((map__d1__d0__d2_d4 f_1_8_9) t_1_0_4))))))
        | _ -> 
          ((((((qpart__d0__d0__d3 _lh_qsort_arg1_9) _lh_qsort_LH_C_0_9) _lh_qsort_LH_C_1_9) (`LH_N)) (`LH_N)) _lh_qsort_arg3_9))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d4 _lh_qsort_arg1_1 _lh_qsort_arg2_1 _lh_qsort_arg3_1 =
  (match _lh_qsort_arg2_1 with
    | `LH_N -> 
      _lh_qsort_arg3_1
    | `LH_C(_lh_qsort_LH_C_0_1, _lh_qsort_LH_C_1_1) -> 
      (match _lh_qsort_LH_C_1_1 with
        | `LH_N -> 
          (let rec t_6_0 = _lh_qsort_arg3_1 in
            (let rec h_6_0 = _lh_qsort_LH_C_0_1 in
              (fun f_1_0_3 -> 
                (`LH_C((f_1_0_3 h_6_0), ((map__d1__d0__d3_d0 f_1_0_3) t_6_0))))))
        | _ -> 
          ((((((qpart__d0__d0__d4 _lh_qsort_arg1_1) _lh_qsort_LH_C_0_1) _lh_qsort_LH_C_1_1) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d5 _lh_qsort_arg1_5 _lh_qsort_arg2_5 _lh_qsort_arg3_5 =
  (match _lh_qsort_arg2_5 with
    | `LH_N -> 
      _lh_qsort_arg3_5
    | `LH_C(_lh_qsort_LH_C_0_5, _lh_qsort_LH_C_1_5) -> 
      (match _lh_qsort_LH_C_1_5 with
        | `LH_N -> 
          (let rec t_7_6 = _lh_qsort_arg3_5 in
            (let rec h_7_6 = _lh_qsort_LH_C_0_5 in
              (fun f_1_3_4 -> 
                (`LH_C((f_1_3_4 h_7_6), ((map__d1__d0__d3_d6 f_1_3_4) t_7_6))))))
        | _ -> 
          ((((((qpart__d0__d0__d5 _lh_qsort_arg1_5) _lh_qsort_LH_C_0_5) _lh_qsort_LH_C_1_5) (`LH_N)) (`LH_N)) _lh_qsort_arg3_5))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d6 _lh_qsort_arg1_7 _lh_qsort_arg2_7 _lh_qsort_arg3_7 =
  (match _lh_qsort_arg2_7 with
    | `LH_N -> 
      _lh_qsort_arg3_7
    | `LH_C(_lh_qsort_LH_C_0_7, _lh_qsort_LH_C_1_7) -> 
      (match _lh_qsort_LH_C_1_7 with
        | `LH_N -> 
          (let rec t_7_8 = _lh_qsort_arg3_7 in
            (let rec h_7_8 = _lh_qsort_LH_C_0_7 in
              (fun f_1_3_7 -> 
                (`LH_C((f_1_3_7 h_7_8), ((map__d1__d0__d4_d5 f_1_3_7) t_7_8))))))
        | _ -> 
          ((((((qpart__d0__d0__d6 _lh_qsort_arg1_7) _lh_qsort_LH_C_0_7) _lh_qsort_LH_C_1_7) (`LH_N)) (`LH_N)) _lh_qsort_arg3_7))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d7 _lh_qsort_arg1_1_2 _lh_qsort_arg2_1_2 _lh_qsort_arg3_1_2 =
  (match _lh_qsort_arg2_1_2 with
    | `LH_N -> 
      _lh_qsort_arg3_1_2
    | `LH_C(_lh_qsort_LH_C_0_1_2, _lh_qsort_LH_C_1_1_2) -> 
      (match _lh_qsort_LH_C_1_1_2 with
        | `LH_N -> 
          (let rec t_1_2_9 = _lh_qsort_arg3_1_2 in
            (let rec h_1_2_9 = _lh_qsort_LH_C_0_1_2 in
              (fun f_2_3_7 -> 
                (`LH_C((f_2_3_7 h_1_2_9), ((map__d1__d0__d5_d1 f_2_3_7) t_1_2_9))))))
        | _ -> 
          ((((((qpart__d0__d0__d7 _lh_qsort_arg1_1_2) _lh_qsort_LH_C_0_1_2) _lh_qsort_LH_C_1_1_2) (`LH_N)) (`LH_N)) _lh_qsort_arg3_1_2))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d8 _lh_qsort_arg1_2 _lh_qsort_arg2_2 _lh_qsort_arg3_2 =
  (match _lh_qsort_arg2_2 with
    | `LH_N -> 
      _lh_qsort_arg3_2
    | `LH_C(_lh_qsort_LH_C_0_2, _lh_qsort_LH_C_1_2) -> 
      (match _lh_qsort_LH_C_1_2 with
        | `LH_N -> 
          (let rec t_6_1 = _lh_qsort_arg3_2 in
            (let rec h_6_1 = _lh_qsort_LH_C_0_2 in
              (fun f_1_0_4 -> 
                (`LH_C((f_1_0_4 h_6_1), ((map__d1__d0__d5_d7 f_1_0_4) t_6_1))))))
        | _ -> 
          ((((((qpart__d0__d0__d8 _lh_qsort_arg1_2) _lh_qsort_LH_C_0_2) _lh_qsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_qsort_arg3_2))
    | _ -> 
      (failwith "error"))
and qsort__d0__d0__d9 _lh_qsort_arg1_3 _lh_qsort_arg2_3 _lh_qsort_arg3_3 =
  (match _lh_qsort_arg2_3 with
    | `LH_N -> 
      _lh_qsort_arg3_3
    | `LH_C(_lh_qsort_LH_C_0_3, _lh_qsort_LH_C_1_3) -> 
      (match _lh_qsort_LH_C_1_3 with
        | `LH_N -> 
          (let rec t_6_4 = _lh_qsort_arg3_3 in
            (let rec h_6_4 = _lh_qsort_LH_C_0_3 in
              (fun f_1_1_2 -> 
                (`LH_C((f_1_1_2 h_6_4), ((map__d1__d0__d6_d6 f_1_1_2) t_6_4))))))
        | _ -> 
          ((((((qpart__d0__d0__d9 _lh_qsort_arg1_3) _lh_qsort_LH_C_0_3) _lh_qsort_LH_C_1_3) (`LH_N)) (`LH_N)) _lh_qsort_arg3_3))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d0 _lh_rqpart_arg1_5 _lh_rqpart_arg2_5 _lh_rqpart_arg3_5 _lh_rqpart_arg4_5 _lh_rqpart_arg5_5 _lh_rqpart_arg6_5 =
  (match _lh_rqpart_arg3_5 with
    | `LH_N -> 
      (((qsort__d0__d0__d0 _lh_rqpart_arg1_5) _lh_rqpart_arg4_5) (let rec t_5_0 = (((qsort__d0__d0__d0 _lh_rqpart_arg1_5) _lh_rqpart_arg5_5) _lh_rqpart_arg6_5) in
        (let rec h_5_0 = _lh_rqpart_arg2_5 in
          (fun f_8_7 -> 
            (`LH_C((f_8_7 h_5_0), ((map__d1__d0__d6 f_8_7) t_5_0)))))))
    | `LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_LH_C_1_5) -> 
      (if ((_lh_rqpart_arg1_5 _lh_rqpart_LH_C_0_5) _lh_rqpart_arg2_5) then
        ((((((rqpart__d0__d0__d0 _lh_rqpart_arg1_5) _lh_rqpart_arg2_5) _lh_rqpart_LH_C_1_5) (`LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_arg4_5))) _lh_rqpart_arg5_5) _lh_rqpart_arg6_5)
      else
        ((((((rqpart__d0__d0__d0 _lh_rqpart_arg1_5) _lh_rqpart_arg2_5) _lh_rqpart_LH_C_1_5) _lh_rqpart_arg4_5) (`LH_C(_lh_rqpart_LH_C_0_5, _lh_rqpart_arg5_5))) _lh_rqpart_arg6_5))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d1 _lh_rqpart_arg1_2_1 _lh_rqpart_arg2_2_1 _lh_rqpart_arg3_2_1 _lh_rqpart_arg4_2_1 _lh_rqpart_arg5_2_1 _lh_rqpart_arg6_2_1 =
  (match _lh_rqpart_arg3_2_1 with
    | `LH_N -> 
      (((qsort__d0__d0__d1 _lh_rqpart_arg1_2_1) _lh_rqpart_arg4_2_1) (let rec t_1_1_6 = (((qsort__d0__d0__d1 _lh_rqpart_arg1_2_1) _lh_rqpart_arg5_2_1) _lh_rqpart_arg6_2_1) in
        (let rec h_1_1_6 = _lh_rqpart_arg2_2_1 in
          (fun f_2_1_2 -> 
            (`LH_C((f_2_1_2 h_1_1_6), ((map__d1__d0__d1_d2 f_2_1_2) t_1_1_6)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2_1, _lh_rqpart_LH_C_1_2_1) -> 
      (if ((_lh_rqpart_arg1_2_1 _lh_rqpart_LH_C_0_2_1) _lh_rqpart_arg2_2_1) then
        ((((((rqpart__d0__d0__d1 _lh_rqpart_arg1_2_1) _lh_rqpart_arg2_2_1) _lh_rqpart_LH_C_1_2_1) (`LH_C(_lh_rqpart_LH_C_0_2_1, _lh_rqpart_arg4_2_1))) _lh_rqpart_arg5_2_1) _lh_rqpart_arg6_2_1)
      else
        ((((((rqpart__d0__d0__d1 _lh_rqpart_arg1_2_1) _lh_rqpart_arg2_2_1) _lh_rqpart_LH_C_1_2_1) _lh_rqpart_arg4_2_1) (`LH_C(_lh_rqpart_LH_C_0_2_1, _lh_rqpart_arg5_2_1))) _lh_rqpart_arg6_2_1))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d1_d0 _lh_rqpart_arg1_1_4 _lh_rqpart_arg2_1_4 _lh_rqpart_arg3_1_4 _lh_rqpart_arg4_1_4 _lh_rqpart_arg5_1_4 _lh_rqpart_arg6_1_4 =
  (match _lh_rqpart_arg3_1_4 with
    | `LH_N -> 
      (((qsort__d0__d0__d1_d0 _lh_rqpart_arg1_1_4) _lh_rqpart_arg4_1_4) (let rec t_8_3 = (((qsort__d0__d0__d1_d0 _lh_rqpart_arg1_1_4) _lh_rqpart_arg5_1_4) _lh_rqpart_arg6_1_4) in
        (let rec h_8_3 = _lh_rqpart_arg2_1_4 in
          (fun f_1_4_9 -> 
            (`LH_C((f_1_4_9 h_8_3), ((map__d1__d0__d7_d5 f_1_4_9) t_8_3)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_4, _lh_rqpart_LH_C_1_1_4) -> 
      (if ((_lh_rqpart_arg1_1_4 _lh_rqpart_LH_C_0_1_4) _lh_rqpart_arg2_1_4) then
        ((((((rqpart__d0__d0__d1_d0 _lh_rqpart_arg1_1_4) _lh_rqpart_arg2_1_4) _lh_rqpart_LH_C_1_1_4) (`LH_C(_lh_rqpart_LH_C_0_1_4, _lh_rqpart_arg4_1_4))) _lh_rqpart_arg5_1_4) _lh_rqpart_arg6_1_4)
      else
        ((((((rqpart__d0__d0__d1_d0 _lh_rqpart_arg1_1_4) _lh_rqpart_arg2_1_4) _lh_rqpart_LH_C_1_1_4) _lh_rqpart_arg4_1_4) (`LH_C(_lh_rqpart_LH_C_0_1_4, _lh_rqpart_arg5_1_4))) _lh_rqpart_arg6_1_4))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d1_d1 _lh_rqpart_arg1_1_0 _lh_rqpart_arg2_1_0 _lh_rqpart_arg3_1_0 _lh_rqpart_arg4_1_0 _lh_rqpart_arg5_1_0 _lh_rqpart_arg6_1_0 =
  (match _lh_rqpart_arg3_1_0 with
    | `LH_N -> 
      (((qsort__d0__d0__d1_d1 _lh_rqpart_arg1_1_0) _lh_rqpart_arg4_1_0) (let rec t_6_6 = (((qsort__d0__d0__d1_d1 _lh_rqpart_arg1_1_0) _lh_rqpart_arg5_1_0) _lh_rqpart_arg6_1_0) in
        (let rec h_6_6 = _lh_rqpart_arg2_1_0 in
          (fun f_1_1_5 -> 
            (`LH_C((f_1_1_5 h_6_6), ((map__d1__d0__d8_d1 f_1_1_5) t_6_6)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_0, _lh_rqpart_LH_C_1_1_0) -> 
      (if ((_lh_rqpart_arg1_1_0 _lh_rqpart_LH_C_0_1_0) _lh_rqpart_arg2_1_0) then
        ((((((rqpart__d0__d0__d1_d1 _lh_rqpart_arg1_1_0) _lh_rqpart_arg2_1_0) _lh_rqpart_LH_C_1_1_0) (`LH_C(_lh_rqpart_LH_C_0_1_0, _lh_rqpart_arg4_1_0))) _lh_rqpart_arg5_1_0) _lh_rqpart_arg6_1_0)
      else
        ((((((rqpart__d0__d0__d1_d1 _lh_rqpart_arg1_1_0) _lh_rqpart_arg2_1_0) _lh_rqpart_LH_C_1_1_0) _lh_rqpart_arg4_1_0) (`LH_C(_lh_rqpart_LH_C_0_1_0, _lh_rqpart_arg5_1_0))) _lh_rqpart_arg6_1_0))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d2 _lh_rqpart_arg1_3 _lh_rqpart_arg2_3 _lh_rqpart_arg3_3 _lh_rqpart_arg4_3 _lh_rqpart_arg5_3 _lh_rqpart_arg6_3 =
  (match _lh_rqpart_arg3_3 with
    | `LH_N -> 
      (((qsort__d0__d0__d2 _lh_rqpart_arg1_3) _lh_rqpart_arg4_3) (let rec t_2_7 = (((qsort__d0__d0__d2 _lh_rqpart_arg1_3) _lh_rqpart_arg5_3) _lh_rqpart_arg6_3) in
        (let rec h_2_7 = _lh_rqpart_arg2_3 in
          (fun f_3_7 -> 
            (`LH_C((f_3_7 h_2_7), ((map__d1__d0__d1_d8 f_3_7) t_2_7)))))))
    | `LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_LH_C_1_3) -> 
      (if ((_lh_rqpart_arg1_3 _lh_rqpart_LH_C_0_3) _lh_rqpart_arg2_3) then
        ((((((rqpart__d0__d0__d2 _lh_rqpart_arg1_3) _lh_rqpart_arg2_3) _lh_rqpart_LH_C_1_3) (`LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_arg4_3))) _lh_rqpart_arg5_3) _lh_rqpart_arg6_3)
      else
        ((((((rqpart__d0__d0__d2 _lh_rqpart_arg1_3) _lh_rqpart_arg2_3) _lh_rqpart_LH_C_1_3) _lh_rqpart_arg4_3) (`LH_C(_lh_rqpart_LH_C_0_3, _lh_rqpart_arg5_3))) _lh_rqpart_arg6_3))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d3 _lh_rqpart_arg1_2_2 _lh_rqpart_arg2_2_2 _lh_rqpart_arg3_2_2 _lh_rqpart_arg4_2_2 _lh_rqpart_arg5_2_2 _lh_rqpart_arg6_2_2 =
  (match _lh_rqpart_arg3_2_2 with
    | `LH_N -> 
      (((qsort__d0__d0__d3 _lh_rqpart_arg1_2_2) _lh_rqpart_arg4_2_2) (let rec t_1_2_1 = (((qsort__d0__d0__d3 _lh_rqpart_arg1_2_2) _lh_rqpart_arg5_2_2) _lh_rqpart_arg6_2_2) in
        (let rec h_1_2_1 = _lh_rqpart_arg2_2_2 in
          (fun f_2_1_9 -> 
            (`LH_C((f_2_1_9 h_1_2_1), ((map__d1__d0__d2_d7 f_2_1_9) t_1_2_1)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2_2, _lh_rqpart_LH_C_1_2_2) -> 
      (if ((_lh_rqpart_arg1_2_2 _lh_rqpart_LH_C_0_2_2) _lh_rqpart_arg2_2_2) then
        ((((((rqpart__d0__d0__d3 _lh_rqpart_arg1_2_2) _lh_rqpart_arg2_2_2) _lh_rqpart_LH_C_1_2_2) (`LH_C(_lh_rqpart_LH_C_0_2_2, _lh_rqpart_arg4_2_2))) _lh_rqpart_arg5_2_2) _lh_rqpart_arg6_2_2)
      else
        ((((((rqpart__d0__d0__d3 _lh_rqpart_arg1_2_2) _lh_rqpart_arg2_2_2) _lh_rqpart_LH_C_1_2_2) _lh_rqpart_arg4_2_2) (`LH_C(_lh_rqpart_LH_C_0_2_2, _lh_rqpart_arg5_2_2))) _lh_rqpart_arg6_2_2))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d4 _lh_rqpart_arg1_1_8 _lh_rqpart_arg2_1_8 _lh_rqpart_arg3_1_8 _lh_rqpart_arg4_1_8 _lh_rqpart_arg5_1_8 _lh_rqpart_arg6_1_8 =
  (match _lh_rqpart_arg3_1_8 with
    | `LH_N -> 
      (((qsort__d0__d0__d4 _lh_rqpart_arg1_1_8) _lh_rqpart_arg4_1_8) (let rec t_1_0_9 = (((qsort__d0__d0__d4 _lh_rqpart_arg1_1_8) _lh_rqpart_arg5_1_8) _lh_rqpart_arg6_1_8) in
        (let rec h_1_0_9 = _lh_rqpart_arg2_1_8 in
          (fun f_2_0_0 -> 
            (`LH_C((f_2_0_0 h_1_0_9), ((map__d1__d0__d3_d3 f_2_0_0) t_1_0_9)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_8, _lh_rqpart_LH_C_1_1_8) -> 
      (if ((_lh_rqpart_arg1_1_8 _lh_rqpart_LH_C_0_1_8) _lh_rqpart_arg2_1_8) then
        ((((((rqpart__d0__d0__d4 _lh_rqpart_arg1_1_8) _lh_rqpart_arg2_1_8) _lh_rqpart_LH_C_1_1_8) (`LH_C(_lh_rqpart_LH_C_0_1_8, _lh_rqpart_arg4_1_8))) _lh_rqpart_arg5_1_8) _lh_rqpart_arg6_1_8)
      else
        ((((((rqpart__d0__d0__d4 _lh_rqpart_arg1_1_8) _lh_rqpart_arg2_1_8) _lh_rqpart_LH_C_1_1_8) _lh_rqpart_arg4_1_8) (`LH_C(_lh_rqpart_LH_C_0_1_8, _lh_rqpart_arg5_1_8))) _lh_rqpart_arg6_1_8))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d5 _lh_rqpart_arg1_6 _lh_rqpart_arg2_6 _lh_rqpart_arg3_6 _lh_rqpart_arg4_6 _lh_rqpart_arg5_6 _lh_rqpart_arg6_6 =
  (match _lh_rqpart_arg3_6 with
    | `LH_N -> 
      (((qsort__d0__d0__d5 _lh_rqpart_arg1_6) _lh_rqpart_arg4_6) (let rec t_5_2 = (((qsort__d0__d0__d5 _lh_rqpart_arg1_6) _lh_rqpart_arg5_6) _lh_rqpart_arg6_6) in
        (let rec h_5_2 = _lh_rqpart_arg2_6 in
          (fun f_8_9 -> 
            (`LH_C((f_8_9 h_5_2), ((map__d1__d0__d3_d9 f_8_9) t_5_2)))))))
    | `LH_C(_lh_rqpart_LH_C_0_6, _lh_rqpart_LH_C_1_6) -> 
      (if ((_lh_rqpart_arg1_6 _lh_rqpart_LH_C_0_6) _lh_rqpart_arg2_6) then
        ((((((rqpart__d0__d0__d5 _lh_rqpart_arg1_6) _lh_rqpart_arg2_6) _lh_rqpart_LH_C_1_6) (`LH_C(_lh_rqpart_LH_C_0_6, _lh_rqpart_arg4_6))) _lh_rqpart_arg5_6) _lh_rqpart_arg6_6)
      else
        ((((((rqpart__d0__d0__d5 _lh_rqpart_arg1_6) _lh_rqpart_arg2_6) _lh_rqpart_LH_C_1_6) _lh_rqpart_arg4_6) (`LH_C(_lh_rqpart_LH_C_0_6, _lh_rqpart_arg5_6))) _lh_rqpart_arg6_6))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d6 _lh_rqpart_arg1_1_5 _lh_rqpart_arg2_1_5 _lh_rqpart_arg3_1_5 _lh_rqpart_arg4_1_5 _lh_rqpart_arg5_1_5 _lh_rqpart_arg6_1_5 =
  (match _lh_rqpart_arg3_1_5 with
    | `LH_N -> 
      (((qsort__d0__d0__d6 _lh_rqpart_arg1_1_5) _lh_rqpart_arg4_1_5) (let rec t_9_5 = (((qsort__d0__d0__d6 _lh_rqpart_arg1_1_5) _lh_rqpart_arg5_1_5) _lh_rqpart_arg6_1_5) in
        (let rec h_9_5 = _lh_rqpart_arg2_1_5 in
          (fun f_1_7_3 -> 
            (`LH_C((f_1_7_3 h_9_5), ((map__d1__d0__d4_d8 f_1_7_3) t_9_5)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_5, _lh_rqpart_LH_C_1_1_5) -> 
      (if ((_lh_rqpart_arg1_1_5 _lh_rqpart_LH_C_0_1_5) _lh_rqpart_arg2_1_5) then
        ((((((rqpart__d0__d0__d6 _lh_rqpart_arg1_1_5) _lh_rqpart_arg2_1_5) _lh_rqpart_LH_C_1_1_5) (`LH_C(_lh_rqpart_LH_C_0_1_5, _lh_rqpart_arg4_1_5))) _lh_rqpart_arg5_1_5) _lh_rqpart_arg6_1_5)
      else
        ((((((rqpart__d0__d0__d6 _lh_rqpart_arg1_1_5) _lh_rqpart_arg2_1_5) _lh_rqpart_LH_C_1_1_5) _lh_rqpart_arg4_1_5) (`LH_C(_lh_rqpart_LH_C_0_1_5, _lh_rqpart_arg5_1_5))) _lh_rqpart_arg6_1_5))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d7 _lh_rqpart_arg1_8 _lh_rqpart_arg2_8 _lh_rqpart_arg3_8 _lh_rqpart_arg4_8 _lh_rqpart_arg5_8 _lh_rqpart_arg6_8 =
  (match _lh_rqpart_arg3_8 with
    | `LH_N -> 
      (((qsort__d0__d0__d7 _lh_rqpart_arg1_8) _lh_rqpart_arg4_8) (let rec t_5_8 = (((qsort__d0__d0__d7 _lh_rqpart_arg1_8) _lh_rqpart_arg5_8) _lh_rqpart_arg6_8) in
        (let rec h_5_8 = _lh_rqpart_arg2_8 in
          (fun f_9_8 -> 
            (`LH_C((f_9_8 h_5_8), ((map__d1__d0__d5_d4 f_9_8) t_5_8)))))))
    | `LH_C(_lh_rqpart_LH_C_0_8, _lh_rqpart_LH_C_1_8) -> 
      (if ((_lh_rqpart_arg1_8 _lh_rqpart_LH_C_0_8) _lh_rqpart_arg2_8) then
        ((((((rqpart__d0__d0__d7 _lh_rqpart_arg1_8) _lh_rqpart_arg2_8) _lh_rqpart_LH_C_1_8) (`LH_C(_lh_rqpart_LH_C_0_8, _lh_rqpart_arg4_8))) _lh_rqpart_arg5_8) _lh_rqpart_arg6_8)
      else
        ((((((rqpart__d0__d0__d7 _lh_rqpart_arg1_8) _lh_rqpart_arg2_8) _lh_rqpart_LH_C_1_8) _lh_rqpart_arg4_8) (`LH_C(_lh_rqpart_LH_C_0_8, _lh_rqpart_arg5_8))) _lh_rqpart_arg6_8))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d8 _lh_rqpart_arg1_1_9 _lh_rqpart_arg2_1_9 _lh_rqpart_arg3_1_9 _lh_rqpart_arg4_1_9 _lh_rqpart_arg5_1_9 _lh_rqpart_arg6_1_9 =
  (match _lh_rqpart_arg3_1_9 with
    | `LH_N -> 
      (((qsort__d0__d0__d8 _lh_rqpart_arg1_1_9) _lh_rqpart_arg4_1_9) (let rec t_1_1_0 = (((qsort__d0__d0__d8 _lh_rqpart_arg1_1_9) _lh_rqpart_arg5_1_9) _lh_rqpart_arg6_1_9) in
        (let rec h_1_1_0 = _lh_rqpart_arg2_1_9 in
          (fun f_2_0_2 -> 
            (`LH_C((f_2_0_2 h_1_1_0), ((map__d1__d0__d6_d0 f_2_0_2) t_1_1_0)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_9, _lh_rqpart_LH_C_1_1_9) -> 
      (if ((_lh_rqpart_arg1_1_9 _lh_rqpart_LH_C_0_1_9) _lh_rqpart_arg2_1_9) then
        ((((((rqpart__d0__d0__d8 _lh_rqpart_arg1_1_9) _lh_rqpart_arg2_1_9) _lh_rqpart_LH_C_1_1_9) (`LH_C(_lh_rqpart_LH_C_0_1_9, _lh_rqpart_arg4_1_9))) _lh_rqpart_arg5_1_9) _lh_rqpart_arg6_1_9)
      else
        ((((((rqpart__d0__d0__d8 _lh_rqpart_arg1_1_9) _lh_rqpart_arg2_1_9) _lh_rqpart_LH_C_1_1_9) _lh_rqpart_arg4_1_9) (`LH_C(_lh_rqpart_LH_C_0_1_9, _lh_rqpart_arg5_1_9))) _lh_rqpart_arg6_1_9))
    | _ -> 
      (failwith "error"))
and rqpart__d0__d0__d9 _lh_rqpart_arg1_2 _lh_rqpart_arg2_2 _lh_rqpart_arg3_2 _lh_rqpart_arg4_2 _lh_rqpart_arg5_2 _lh_rqpart_arg6_2 =
  (match _lh_rqpart_arg3_2 with
    | `LH_N -> 
      (((qsort__d0__d0__d9 _lh_rqpart_arg1_2) _lh_rqpart_arg4_2) (let rec t_2_0 = (((qsort__d0__d0__d9 _lh_rqpart_arg1_2) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2) in
        (let rec h_2_0 = _lh_rqpart_arg2_2 in
          (fun f_2_7 -> 
            (`LH_C((f_2_7 h_2_0), ((map__d1__d0__d6_d9 f_2_7) t_2_0)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_LH_C_1_2) -> 
      (if ((_lh_rqpart_arg1_2 _lh_rqpart_LH_C_0_2) _lh_rqpart_arg2_2) then
        ((((((rqpart__d0__d0__d9 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg4_2))) _lh_rqpart_arg5_2) _lh_rqpart_arg6_2)
      else
        ((((((rqpart__d0__d0__d9 _lh_rqpart_arg1_2) _lh_rqpart_arg2_2) _lh_rqpart_LH_C_1_2) _lh_rqpart_arg4_2) (`LH_C(_lh_rqpart_LH_C_0_2, _lh_rqpart_arg5_2))) _lh_rqpart_arg6_2))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d0 _lh_rqpart_arg1_2_3 _lh_rqpart_arg2_2_3 _lh_rqpart_arg3_2_3 _lh_rqpart_arg4_2_3 _lh_rqpart_arg5_2_3 _lh_rqpart_arg6_2_3 =
  (match _lh_rqpart_arg3_2_3 with
    | `LH_N -> 
      (((qsort__d0__d0__d0 _lh_rqpart_arg1_2_3) _lh_rqpart_arg4_2_3) (let rec t_1_2_2 = (((qsort__d0__d0__d0 _lh_rqpart_arg1_2_3) _lh_rqpart_arg5_2_3) _lh_rqpart_arg6_2_3) in
        (let rec h_1_2_2 = _lh_rqpart_arg2_2_3 in
          (fun f_2_2_2 -> 
            (`LH_C((f_2_2_2 h_1_2_2), ((map__d1__d0__d8 f_2_2_2) t_1_2_2)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2_3, _lh_rqpart_LH_C_1_2_3) -> 
      (if ((_lh_rqpart_arg1_2_3 _lh_rqpart_LH_C_0_2_3) _lh_rqpart_arg2_2_3) then
        ((((((rqpart__d1__d0__d0 _lh_rqpart_arg1_2_3) _lh_rqpart_arg2_2_3) _lh_rqpart_LH_C_1_2_3) (`LH_C(_lh_rqpart_LH_C_0_2_3, _lh_rqpart_arg4_2_3))) _lh_rqpart_arg5_2_3) _lh_rqpart_arg6_2_3)
      else
        ((((((rqpart__d1__d0__d0 _lh_rqpart_arg1_2_3) _lh_rqpart_arg2_2_3) _lh_rqpart_LH_C_1_2_3) _lh_rqpart_arg4_2_3) (`LH_C(_lh_rqpart_LH_C_0_2_3, _lh_rqpart_arg5_2_3))) _lh_rqpart_arg6_2_3))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d1 _lh_rqpart_arg1_1_1 _lh_rqpart_arg2_1_1 _lh_rqpart_arg3_1_1 _lh_rqpart_arg4_1_1 _lh_rqpart_arg5_1_1 _lh_rqpart_arg6_1_1 =
  (match _lh_rqpart_arg3_1_1 with
    | `LH_N -> 
      (((qsort__d0__d0__d1 _lh_rqpart_arg1_1_1) _lh_rqpart_arg4_1_1) (let rec t_6_7 = (((qsort__d0__d0__d1 _lh_rqpart_arg1_1_1) _lh_rqpart_arg5_1_1) _lh_rqpart_arg6_1_1) in
        (let rec h_6_7 = _lh_rqpart_arg2_1_1 in
          (fun f_1_1_7 -> 
            (`LH_C((f_1_1_7 h_6_7), ((map__d1__d0__d1_d4 f_1_1_7) t_6_7)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_1, _lh_rqpart_LH_C_1_1_1) -> 
      (if ((_lh_rqpart_arg1_1_1 _lh_rqpart_LH_C_0_1_1) _lh_rqpart_arg2_1_1) then
        ((((((rqpart__d1__d0__d1 _lh_rqpart_arg1_1_1) _lh_rqpart_arg2_1_1) _lh_rqpart_LH_C_1_1_1) (`LH_C(_lh_rqpart_LH_C_0_1_1, _lh_rqpart_arg4_1_1))) _lh_rqpart_arg5_1_1) _lh_rqpart_arg6_1_1)
      else
        ((((((rqpart__d1__d0__d1 _lh_rqpart_arg1_1_1) _lh_rqpart_arg2_1_1) _lh_rqpart_LH_C_1_1_1) _lh_rqpart_arg4_1_1) (`LH_C(_lh_rqpart_LH_C_0_1_1, _lh_rqpart_arg5_1_1))) _lh_rqpart_arg6_1_1))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d1_d0 _lh_rqpart_arg1_2_4 _lh_rqpart_arg2_2_4 _lh_rqpart_arg3_2_4 _lh_rqpart_arg4_2_4 _lh_rqpart_arg5_2_4 _lh_rqpart_arg6_2_4 =
  (match _lh_rqpart_arg3_2_4 with
    | `LH_N -> 
      (((qsort__d0__d0__d1_d0 _lh_rqpart_arg1_2_4) _lh_rqpart_arg4_2_4) (let rec t_1_2_5 = (((qsort__d0__d0__d1_d0 _lh_rqpart_arg1_2_4) _lh_rqpart_arg5_2_4) _lh_rqpart_arg6_2_4) in
        (let rec h_1_2_5 = _lh_rqpart_arg2_2_4 in
          (fun f_2_3_3 -> 
            (`LH_C((f_2_3_3 h_1_2_5), ((map__d1__d0__d7_d7 f_2_3_3) t_1_2_5)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2_4, _lh_rqpart_LH_C_1_2_4) -> 
      (if ((_lh_rqpart_arg1_2_4 _lh_rqpart_LH_C_0_2_4) _lh_rqpart_arg2_2_4) then
        ((((((rqpart__d1__d0__d1_d0 _lh_rqpart_arg1_2_4) _lh_rqpart_arg2_2_4) _lh_rqpart_LH_C_1_2_4) (`LH_C(_lh_rqpart_LH_C_0_2_4, _lh_rqpart_arg4_2_4))) _lh_rqpart_arg5_2_4) _lh_rqpart_arg6_2_4)
      else
        ((((((rqpart__d1__d0__d1_d0 _lh_rqpart_arg1_2_4) _lh_rqpart_arg2_2_4) _lh_rqpart_LH_C_1_2_4) _lh_rqpart_arg4_2_4) (`LH_C(_lh_rqpart_LH_C_0_2_4, _lh_rqpart_arg5_2_4))) _lh_rqpart_arg6_2_4))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d1_d1 _lh_rqpart_arg1_1_6 _lh_rqpart_arg2_1_6 _lh_rqpart_arg3_1_6 _lh_rqpart_arg4_1_6 _lh_rqpart_arg5_1_6 _lh_rqpart_arg6_1_6 =
  (match _lh_rqpart_arg3_1_6 with
    | `LH_N -> 
      (((qsort__d0__d0__d1_d1 _lh_rqpart_arg1_1_6) _lh_rqpart_arg4_1_6) (let rec t_9_7 = (((qsort__d0__d0__d1_d1 _lh_rqpart_arg1_1_6) _lh_rqpart_arg5_1_6) _lh_rqpart_arg6_1_6) in
        (let rec h_9_7 = _lh_rqpart_arg2_1_6 in
          (fun f_1_7_6 -> 
            (`LH_C((f_1_7_6 h_9_7), ((map__d1__d0__d8_d3 f_1_7_6) t_9_7)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_6, _lh_rqpart_LH_C_1_1_6) -> 
      (if ((_lh_rqpart_arg1_1_6 _lh_rqpart_LH_C_0_1_6) _lh_rqpart_arg2_1_6) then
        ((((((rqpart__d1__d0__d1_d1 _lh_rqpart_arg1_1_6) _lh_rqpart_arg2_1_6) _lh_rqpart_LH_C_1_1_6) (`LH_C(_lh_rqpart_LH_C_0_1_6, _lh_rqpart_arg4_1_6))) _lh_rqpart_arg5_1_6) _lh_rqpart_arg6_1_6)
      else
        ((((((rqpart__d1__d0__d1_d1 _lh_rqpart_arg1_1_6) _lh_rqpart_arg2_1_6) _lh_rqpart_LH_C_1_1_6) _lh_rqpart_arg4_1_6) (`LH_C(_lh_rqpart_LH_C_0_1_6, _lh_rqpart_arg5_1_6))) _lh_rqpart_arg6_1_6))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d2 _lh_rqpart_arg1_7 _lh_rqpart_arg2_7 _lh_rqpart_arg3_7 _lh_rqpart_arg4_7 _lh_rqpart_arg5_7 _lh_rqpart_arg6_7 =
  (match _lh_rqpart_arg3_7 with
    | `LH_N -> 
      (((qsort__d0__d0__d2 _lh_rqpart_arg1_7) _lh_rqpart_arg4_7) (let rec t_5_7 = (((qsort__d0__d0__d2 _lh_rqpart_arg1_7) _lh_rqpart_arg5_7) _lh_rqpart_arg6_7) in
        (let rec h_5_7 = _lh_rqpart_arg2_7 in
          (fun f_9_3 -> 
            (`LH_C((f_9_3 h_5_7), ((map__d1__d0__d2_d0 f_9_3) t_5_7)))))))
    | `LH_C(_lh_rqpart_LH_C_0_7, _lh_rqpart_LH_C_1_7) -> 
      (if ((_lh_rqpart_arg1_7 _lh_rqpart_LH_C_0_7) _lh_rqpart_arg2_7) then
        ((((((rqpart__d1__d0__d2 _lh_rqpart_arg1_7) _lh_rqpart_arg2_7) _lh_rqpart_LH_C_1_7) (`LH_C(_lh_rqpart_LH_C_0_7, _lh_rqpart_arg4_7))) _lh_rqpart_arg5_7) _lh_rqpart_arg6_7)
      else
        ((((((rqpart__d1__d0__d2 _lh_rqpart_arg1_7) _lh_rqpart_arg2_7) _lh_rqpart_LH_C_1_7) _lh_rqpart_arg4_7) (`LH_C(_lh_rqpart_LH_C_0_7, _lh_rqpart_arg5_7))) _lh_rqpart_arg6_7))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d3 _lh_rqpart_arg1_2_0 _lh_rqpart_arg2_2_0 _lh_rqpart_arg3_2_0 _lh_rqpart_arg4_2_0 _lh_rqpart_arg5_2_0 _lh_rqpart_arg6_2_0 =
  (match _lh_rqpart_arg3_2_0 with
    | `LH_N -> 
      (((qsort__d0__d0__d3 _lh_rqpart_arg1_2_0) _lh_rqpart_arg4_2_0) (let rec t_1_1_3 = (((qsort__d0__d0__d3 _lh_rqpart_arg1_2_0) _lh_rqpart_arg5_2_0) _lh_rqpart_arg6_2_0) in
        (let rec h_1_1_3 = _lh_rqpart_arg2_2_0 in
          (fun f_2_0_7 -> 
            (`LH_C((f_2_0_7 h_1_1_3), ((map__d1__d0__d2_d9 f_2_0_7) t_1_1_3)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2_0, _lh_rqpart_LH_C_1_2_0) -> 
      (if ((_lh_rqpart_arg1_2_0 _lh_rqpart_LH_C_0_2_0) _lh_rqpart_arg2_2_0) then
        ((((((rqpart__d1__d0__d3 _lh_rqpart_arg1_2_0) _lh_rqpart_arg2_2_0) _lh_rqpart_LH_C_1_2_0) (`LH_C(_lh_rqpart_LH_C_0_2_0, _lh_rqpart_arg4_2_0))) _lh_rqpart_arg5_2_0) _lh_rqpart_arg6_2_0)
      else
        ((((((rqpart__d1__d0__d3 _lh_rqpart_arg1_2_0) _lh_rqpart_arg2_2_0) _lh_rqpart_LH_C_1_2_0) _lh_rqpart_arg4_2_0) (`LH_C(_lh_rqpart_LH_C_0_2_0, _lh_rqpart_arg5_2_0))) _lh_rqpart_arg6_2_0))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d4 _lh_rqpart_arg1_4 _lh_rqpart_arg2_4 _lh_rqpart_arg3_4 _lh_rqpart_arg4_4 _lh_rqpart_arg5_4 _lh_rqpart_arg6_4 =
  (match _lh_rqpart_arg3_4 with
    | `LH_N -> 
      (((qsort__d0__d0__d4 _lh_rqpart_arg1_4) _lh_rqpart_arg4_4) (let rec t_3_3 = (((qsort__d0__d0__d4 _lh_rqpart_arg1_4) _lh_rqpart_arg5_4) _lh_rqpart_arg6_4) in
        (let rec h_3_3 = _lh_rqpart_arg2_4 in
          (fun f_5_4 -> 
            (`LH_C((f_5_4 h_3_3), ((map__d1__d0__d3_d5 f_5_4) t_3_3)))))))
    | `LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_LH_C_1_4) -> 
      (if ((_lh_rqpart_arg1_4 _lh_rqpart_LH_C_0_4) _lh_rqpart_arg2_4) then
        ((((((rqpart__d1__d0__d4 _lh_rqpart_arg1_4) _lh_rqpart_arg2_4) _lh_rqpart_LH_C_1_4) (`LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_arg4_4))) _lh_rqpart_arg5_4) _lh_rqpart_arg6_4)
      else
        ((((((rqpart__d1__d0__d4 _lh_rqpart_arg1_4) _lh_rqpart_arg2_4) _lh_rqpart_LH_C_1_4) _lh_rqpart_arg4_4) (`LH_C(_lh_rqpart_LH_C_0_4, _lh_rqpart_arg5_4))) _lh_rqpart_arg6_4))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d5 _lh_rqpart_arg1_1_7 _lh_rqpart_arg2_1_7 _lh_rqpart_arg3_1_7 _lh_rqpart_arg4_1_7 _lh_rqpart_arg5_1_7 _lh_rqpart_arg6_1_7 =
  (match _lh_rqpart_arg3_1_7 with
    | `LH_N -> 
      (((qsort__d0__d0__d5 _lh_rqpart_arg1_1_7) _lh_rqpart_arg4_1_7) (let rec t_1_0_8 = (((qsort__d0__d0__d5 _lh_rqpart_arg1_1_7) _lh_rqpart_arg5_1_7) _lh_rqpart_arg6_1_7) in
        (let rec h_1_0_8 = _lh_rqpart_arg2_1_7 in
          (fun f_1_9_6 -> 
            (`LH_C((f_1_9_6 h_1_0_8), ((map__d1__d0__d4_d1 f_1_9_6) t_1_0_8)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_7, _lh_rqpart_LH_C_1_1_7) -> 
      (if ((_lh_rqpart_arg1_1_7 _lh_rqpart_LH_C_0_1_7) _lh_rqpart_arg2_1_7) then
        ((((((rqpart__d1__d0__d5 _lh_rqpart_arg1_1_7) _lh_rqpart_arg2_1_7) _lh_rqpart_LH_C_1_1_7) (`LH_C(_lh_rqpart_LH_C_0_1_7, _lh_rqpart_arg4_1_7))) _lh_rqpart_arg5_1_7) _lh_rqpart_arg6_1_7)
      else
        ((((((rqpart__d1__d0__d5 _lh_rqpart_arg1_1_7) _lh_rqpart_arg2_1_7) _lh_rqpart_LH_C_1_1_7) _lh_rqpart_arg4_1_7) (`LH_C(_lh_rqpart_LH_C_0_1_7, _lh_rqpart_arg5_1_7))) _lh_rqpart_arg6_1_7))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d6 _lh_rqpart_arg1_2_5 _lh_rqpart_arg2_2_5 _lh_rqpart_arg3_2_5 _lh_rqpart_arg4_2_5 _lh_rqpart_arg5_2_5 _lh_rqpart_arg6_2_5 =
  (match _lh_rqpart_arg3_2_5 with
    | `LH_N -> 
      (((qsort__d0__d0__d6 _lh_rqpart_arg1_2_5) _lh_rqpart_arg4_2_5) (let rec t_1_3_0 = (((qsort__d0__d0__d6 _lh_rqpart_arg1_2_5) _lh_rqpart_arg5_2_5) _lh_rqpart_arg6_2_5) in
        (let rec h_1_3_0 = _lh_rqpart_arg2_2_5 in
          (fun f_2_3_8 -> 
            (`LH_C((f_2_3_8 h_1_3_0), ((map__d1__d0__d5_d0 f_2_3_8) t_1_3_0)))))))
    | `LH_C(_lh_rqpart_LH_C_0_2_5, _lh_rqpart_LH_C_1_2_5) -> 
      (if ((_lh_rqpart_arg1_2_5 _lh_rqpart_LH_C_0_2_5) _lh_rqpart_arg2_2_5) then
        ((((((rqpart__d1__d0__d6 _lh_rqpart_arg1_2_5) _lh_rqpart_arg2_2_5) _lh_rqpart_LH_C_1_2_5) (`LH_C(_lh_rqpart_LH_C_0_2_5, _lh_rqpart_arg4_2_5))) _lh_rqpart_arg5_2_5) _lh_rqpart_arg6_2_5)
      else
        ((((((rqpart__d1__d0__d6 _lh_rqpart_arg1_2_5) _lh_rqpart_arg2_2_5) _lh_rqpart_LH_C_1_2_5) _lh_rqpart_arg4_2_5) (`LH_C(_lh_rqpart_LH_C_0_2_5, _lh_rqpart_arg5_2_5))) _lh_rqpart_arg6_2_5))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d7 _lh_rqpart_arg1_9 _lh_rqpart_arg2_9 _lh_rqpart_arg3_9 _lh_rqpart_arg4_9 _lh_rqpart_arg5_9 _lh_rqpart_arg6_9 =
  (match _lh_rqpart_arg3_9 with
    | `LH_N -> 
      (((qsort__d0__d0__d7 _lh_rqpart_arg1_9) _lh_rqpart_arg4_9) (let rec t_5_9 = (((qsort__d0__d0__d7 _lh_rqpart_arg1_9) _lh_rqpart_arg5_9) _lh_rqpart_arg6_9) in
        (let rec h_5_9 = _lh_rqpart_arg2_9 in
          (fun f_9_9 -> 
            (`LH_C((f_9_9 h_5_9), ((map__d1__d0__d5_d6 f_9_9) t_5_9)))))))
    | `LH_C(_lh_rqpart_LH_C_0_9, _lh_rqpart_LH_C_1_9) -> 
      (if ((_lh_rqpart_arg1_9 _lh_rqpart_LH_C_0_9) _lh_rqpart_arg2_9) then
        ((((((rqpart__d1__d0__d7 _lh_rqpart_arg1_9) _lh_rqpart_arg2_9) _lh_rqpart_LH_C_1_9) (`LH_C(_lh_rqpart_LH_C_0_9, _lh_rqpart_arg4_9))) _lh_rqpart_arg5_9) _lh_rqpart_arg6_9)
      else
        ((((((rqpart__d1__d0__d7 _lh_rqpart_arg1_9) _lh_rqpart_arg2_9) _lh_rqpart_LH_C_1_9) _lh_rqpart_arg4_9) (`LH_C(_lh_rqpart_LH_C_0_9, _lh_rqpart_arg5_9))) _lh_rqpart_arg6_9))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d8 _lh_rqpart_arg1_1_3 _lh_rqpart_arg2_1_3 _lh_rqpart_arg3_1_3 _lh_rqpart_arg4_1_3 _lh_rqpart_arg5_1_3 _lh_rqpart_arg6_1_3 =
  (match _lh_rqpart_arg3_1_3 with
    | `LH_N -> 
      (((qsort__d0__d0__d8 _lh_rqpart_arg1_1_3) _lh_rqpart_arg4_1_3) (let rec t_8_2 = (((qsort__d0__d0__d8 _lh_rqpart_arg1_1_3) _lh_rqpart_arg5_1_3) _lh_rqpart_arg6_1_3) in
        (let rec h_8_2 = _lh_rqpart_arg2_1_3 in
          (fun f_1_4_4 -> 
            (`LH_C((f_1_4_4 h_8_2), ((map__d1__d0__d6_d2 f_1_4_4) t_8_2)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_3, _lh_rqpart_LH_C_1_1_3) -> 
      (if ((_lh_rqpart_arg1_1_3 _lh_rqpart_LH_C_0_1_3) _lh_rqpart_arg2_1_3) then
        ((((((rqpart__d1__d0__d8 _lh_rqpart_arg1_1_3) _lh_rqpart_arg2_1_3) _lh_rqpart_LH_C_1_1_3) (`LH_C(_lh_rqpart_LH_C_0_1_3, _lh_rqpart_arg4_1_3))) _lh_rqpart_arg5_1_3) _lh_rqpart_arg6_1_3)
      else
        ((((((rqpart__d1__d0__d8 _lh_rqpart_arg1_1_3) _lh_rqpart_arg2_1_3) _lh_rqpart_LH_C_1_1_3) _lh_rqpart_arg4_1_3) (`LH_C(_lh_rqpart_LH_C_0_1_3, _lh_rqpart_arg5_1_3))) _lh_rqpart_arg6_1_3))
    | _ -> 
      (failwith "error"))
and rqpart__d1__d0__d9 _lh_rqpart_arg1_1_2 _lh_rqpart_arg2_1_2 _lh_rqpart_arg3_1_2 _lh_rqpart_arg4_1_2 _lh_rqpart_arg5_1_2 _lh_rqpart_arg6_1_2 =
  (match _lh_rqpart_arg3_1_2 with
    | `LH_N -> 
      (((qsort__d0__d0__d9 _lh_rqpart_arg1_1_2) _lh_rqpart_arg4_1_2) (let rec t_8_1 = (((qsort__d0__d0__d9 _lh_rqpart_arg1_1_2) _lh_rqpart_arg5_1_2) _lh_rqpart_arg6_1_2) in
        (let rec h_8_1 = _lh_rqpart_arg2_1_2 in
          (fun f_1_3_9 -> 
            (`LH_C((f_1_3_9 h_8_1), ((map__d1__d0__d7_d1 f_1_3_9) t_8_1)))))))
    | `LH_C(_lh_rqpart_LH_C_0_1_2, _lh_rqpart_LH_C_1_1_2) -> 
      (if ((_lh_rqpart_arg1_1_2 _lh_rqpart_LH_C_0_1_2) _lh_rqpart_arg2_1_2) then
        ((((((rqpart__d1__d0__d9 _lh_rqpart_arg1_1_2) _lh_rqpart_arg2_1_2) _lh_rqpart_LH_C_1_1_2) (`LH_C(_lh_rqpart_LH_C_0_1_2, _lh_rqpart_arg4_1_2))) _lh_rqpart_arg5_1_2) _lh_rqpart_arg6_1_2)
      else
        ((((((rqpart__d1__d0__d9 _lh_rqpart_arg1_1_2) _lh_rqpart_arg2_1_2) _lh_rqpart_LH_C_1_1_2) _lh_rqpart_arg4_1_2) (`LH_C(_lh_rqpart_LH_C_0_1_2, _lh_rqpart_arg5_1_2))) _lh_rqpart_arg6_1_2))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d0 _lh_rqsort_arg1_2_5 _lh_rqsort_arg2_2_5 _lh_rqsort_arg3_2_5 =
  (match _lh_rqsort_arg2_2_5 with
    | `LH_N -> 
      _lh_rqsort_arg3_2_5
    | `LH_C(_lh_rqsort_LH_C_0_2_5, _lh_rqsort_LH_C_1_2_5) -> 
      (match _lh_rqsort_LH_C_1_2_5 with
        | `LH_N -> 
          (let rec t_1_2_8 = _lh_rqsort_arg3_2_5 in
            (let rec h_1_2_8 = _lh_rqsort_LH_C_0_2_5 in
              (fun f_2_3_6 -> 
                (`LH_C((f_2_3_6 h_1_2_8), ((map__d1__d0__d5 f_2_3_6) t_1_2_8))))))
        | _ -> 
          ((((((rqpart__d0__d0__d0 _lh_rqsort_arg1_2_5) _lh_rqsort_LH_C_0_2_5) _lh_rqsort_LH_C_1_2_5) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2_5))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d1 _lh_rqsort_arg1_2_1 _lh_rqsort_arg2_2_1 _lh_rqsort_arg3_2_1 =
  (match _lh_rqsort_arg2_2_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_2_1
    | `LH_C(_lh_rqsort_LH_C_0_2_1, _lh_rqsort_LH_C_1_2_1) -> 
      (match _lh_rqsort_LH_C_1_2_1 with
        | `LH_N -> 
          (let rec t_9_9 = _lh_rqsort_arg3_2_1 in
            (let rec h_9_9 = _lh_rqsort_LH_C_0_2_1 in
              (fun f_1_8_1 -> 
                (`LH_C((f_1_8_1 h_9_9), ((map__d1__d0__d1_d1 f_1_8_1) t_9_9))))))
        | _ -> 
          ((((((rqpart__d0__d0__d1 _lh_rqsort_arg1_2_1) _lh_rqsort_LH_C_0_2_1) _lh_rqsort_LH_C_1_2_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2_1))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d1_d0 _lh_rqsort_arg1_9 _lh_rqsort_arg2_9 _lh_rqsort_arg3_9 =
  (match _lh_rqsort_arg2_9 with
    | `LH_N -> 
      _lh_rqsort_arg3_9
    | `LH_C(_lh_rqsort_LH_C_0_9, _lh_rqsort_LH_C_1_9) -> 
      (match _lh_rqsort_LH_C_1_9 with
        | `LH_N -> 
          (let rec t_5_3 = _lh_rqsort_arg3_9 in
            (let rec h_5_3 = _lh_rqsort_LH_C_0_9 in
              (fun f_9_0 -> 
                (`LH_C((f_9_0 h_5_3), ((map__d1__d0__d7_d4 f_9_0) t_5_3))))))
        | _ -> 
          ((((((rqpart__d0__d0__d1_d0 _lh_rqsort_arg1_9) _lh_rqsort_LH_C_0_9) _lh_rqsort_LH_C_1_9) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_9))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d1_d1 _lh_rqsort_arg1_4 _lh_rqsort_arg2_4 _lh_rqsort_arg3_4 =
  (match _lh_rqsort_arg2_4 with
    | `LH_N -> 
      _lh_rqsort_arg3_4
    | `LH_C(_lh_rqsort_LH_C_0_4, _lh_rqsort_LH_C_1_4) -> 
      (match _lh_rqsort_LH_C_1_4 with
        | `LH_N -> 
          (let rec t_3_2 = _lh_rqsort_arg3_4 in
            (let rec h_3_2 = _lh_rqsort_LH_C_0_4 in
              (fun f_5_1 -> 
                (`LH_C((f_5_1 h_3_2), ((map__d1__d0__d8_d0 f_5_1) t_3_2))))))
        | _ -> 
          ((((((rqpart__d0__d0__d1_d1 _lh_rqsort_arg1_4) _lh_rqsort_LH_C_0_4) _lh_rqsort_LH_C_1_4) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_4))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d2 _lh_rqsort_arg1_3 _lh_rqsort_arg2_3 _lh_rqsort_arg3_3 =
  (match _lh_rqsort_arg2_3 with
    | `LH_N -> 
      _lh_rqsort_arg3_3
    | `LH_C(_lh_rqsort_LH_C_0_3, _lh_rqsort_LH_C_1_3) -> 
      (match _lh_rqsort_LH_C_1_3 with
        | `LH_N -> 
          (let rec t_3_1 = _lh_rqsort_arg3_3 in
            (let rec h_3_1 = _lh_rqsort_LH_C_0_3 in
              (fun f_4_7 -> 
                (`LH_C((f_4_7 h_3_1), ((map__d1__d0__d1_d7 f_4_7) t_3_1))))))
        | _ -> 
          ((((((rqpart__d0__d0__d2 _lh_rqsort_arg1_3) _lh_rqsort_LH_C_0_3) _lh_rqsort_LH_C_1_3) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_3))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d3 _lh_rqsort_arg1_2_0 _lh_rqsort_arg2_2_0 _lh_rqsort_arg3_2_0 =
  (match _lh_rqsort_arg2_2_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_2_0
    | `LH_C(_lh_rqsort_LH_C_0_2_0, _lh_rqsort_LH_C_1_2_0) -> 
      (match _lh_rqsort_LH_C_1_2_0 with
        | `LH_N -> 
          (let rec t_9_2 = _lh_rqsort_arg3_2_0 in
            (let rec h_9_2 = _lh_rqsort_LH_C_0_2_0 in
              (fun f_1_6_8 -> 
                (`LH_C((f_1_6_8 h_9_2), ((map__d1__d0__d2_d6 f_1_6_8) t_9_2))))))
        | _ -> 
          ((((((rqpart__d0__d0__d3 _lh_rqsort_arg1_2_0) _lh_rqsort_LH_C_0_2_0) _lh_rqsort_LH_C_1_2_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2_0))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d4 _lh_rqsort_arg1_1_1 _lh_rqsort_arg2_1_1 _lh_rqsort_arg3_1_1 =
  (match _lh_rqsort_arg2_1_1 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_1
    | `LH_C(_lh_rqsort_LH_C_0_1_1, _lh_rqsort_LH_C_1_1_1) -> 
      (match _lh_rqsort_LH_C_1_1_1 with
        | `LH_N -> 
          (let rec t_6_5 = _lh_rqsort_arg3_1_1 in
            (let rec h_6_5 = _lh_rqsort_LH_C_0_1_1 in
              (fun f_1_1_4 -> 
                (`LH_C((f_1_1_4 h_6_5), ((map__d1__d0__d3_d2 f_1_1_4) t_6_5))))))
        | _ -> 
          ((((((rqpart__d0__d0__d4 _lh_rqsort_arg1_1_1) _lh_rqsort_LH_C_0_1_1) _lh_rqsort_LH_C_1_1_1) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_1))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d5 _lh_rqsort_arg1_1_2 _lh_rqsort_arg2_1_2 _lh_rqsort_arg3_1_2 =
  (match _lh_rqsort_arg2_1_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_2
    | `LH_C(_lh_rqsort_LH_C_0_1_2, _lh_rqsort_LH_C_1_1_2) -> 
      (match _lh_rqsort_LH_C_1_1_2 with
        | `LH_N -> 
          (let rec t_6_8 = _lh_rqsort_arg3_1_2 in
            (let rec h_6_8 = _lh_rqsort_LH_C_0_1_2 in
              (fun f_1_1_8 -> 
                (`LH_C((f_1_1_8 h_6_8), ((map__d1__d0__d3_d8 f_1_1_8) t_6_8))))))
        | _ -> 
          ((((((rqpart__d0__d0__d5 _lh_rqsort_arg1_1_2) _lh_rqsort_LH_C_0_1_2) _lh_rqsort_LH_C_1_1_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_2))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d6 _lh_rqsort_arg1_2_3 _lh_rqsort_arg2_2_3 _lh_rqsort_arg3_2_3 =
  (match _lh_rqsort_arg2_2_3 with
    | `LH_N -> 
      _lh_rqsort_arg3_2_3
    | `LH_C(_lh_rqsort_LH_C_0_2_3, _lh_rqsort_LH_C_1_2_3) -> 
      (match _lh_rqsort_LH_C_1_2_3 with
        | `LH_N -> 
          (let rec t_1_2_3 = _lh_rqsort_arg3_2_3 in
            (let rec h_1_2_3 = _lh_rqsort_LH_C_0_2_3 in
              (fun f_2_2_7 -> 
                (`LH_C((f_2_2_7 h_1_2_3), ((map__d1__d0__d4_d7 f_2_2_7) t_1_2_3))))))
        | _ -> 
          ((((((rqpart__d0__d0__d6 _lh_rqsort_arg1_2_3) _lh_rqsort_LH_C_0_2_3) _lh_rqsort_LH_C_1_2_3) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2_3))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d7 _lh_rqsort_arg1_5 _lh_rqsort_arg2_5 _lh_rqsort_arg3_5 =
  (match _lh_rqsort_arg2_5 with
    | `LH_N -> 
      _lh_rqsort_arg3_5
    | `LH_C(_lh_rqsort_LH_C_0_5, _lh_rqsort_LH_C_1_5) -> 
      (match _lh_rqsort_LH_C_1_5 with
        | `LH_N -> 
          (let rec t_3_4 = _lh_rqsort_arg3_5 in
            (let rec h_3_4 = _lh_rqsort_LH_C_0_5 in
              (fun f_5_6 -> 
                (`LH_C((f_5_6 h_3_4), ((map__d1__d0__d5_d3 f_5_6) t_3_4))))))
        | _ -> 
          ((((((rqpart__d0__d0__d7 _lh_rqsort_arg1_5) _lh_rqsort_LH_C_0_5) _lh_rqsort_LH_C_1_5) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_5))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d8 _lh_rqsort_arg1_6 _lh_rqsort_arg2_6 _lh_rqsort_arg3_6 =
  (match _lh_rqsort_arg2_6 with
    | `LH_N -> 
      _lh_rqsort_arg3_6
    | `LH_C(_lh_rqsort_LH_C_0_6, _lh_rqsort_LH_C_1_6) -> 
      (match _lh_rqsort_LH_C_1_6 with
        | `LH_N -> 
          (let rec t_3_6 = _lh_rqsort_arg3_6 in
            (let rec h_3_6 = _lh_rqsort_LH_C_0_6 in
              (fun f_6_1 -> 
                (`LH_C((f_6_1 h_3_6), ((map__d1__d0__d5_d9 f_6_1) t_3_6))))))
        | _ -> 
          ((((((rqpart__d0__d0__d8 _lh_rqsort_arg1_6) _lh_rqsort_LH_C_0_6) _lh_rqsort_LH_C_1_6) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_6))
    | _ -> 
      (failwith "error"))
and rqsort__d0__d0__d9 _lh_rqsort_arg1_1_0 _lh_rqsort_arg2_1_0 _lh_rqsort_arg3_1_0 =
  (match _lh_rqsort_arg2_1_0 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_0
    | `LH_C(_lh_rqsort_LH_C_0_1_0, _lh_rqsort_LH_C_1_1_0) -> 
      (match _lh_rqsort_LH_C_1_1_0 with
        | `LH_N -> 
          (let rec t_6_3 = _lh_rqsort_arg3_1_0 in
            (let rec h_6_3 = _lh_rqsort_LH_C_0_1_0 in
              (fun f_1_0_8 -> 
                (`LH_C((f_1_0_8 h_6_3), ((map__d1__d0__d6_d8 f_1_0_8) t_6_3))))))
        | _ -> 
          ((((((rqpart__d0__d0__d9 _lh_rqsort_arg1_1_0) _lh_rqsort_LH_C_0_1_0) _lh_rqsort_LH_C_1_1_0) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_0))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d0 _lh_rqsort_arg1_1_4 _lh_rqsort_arg2_1_4 _lh_rqsort_arg3_1_4 =
  (match _lh_rqsort_arg2_1_4 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_4
    | `LH_C(_lh_rqsort_LH_C_0_1_4, _lh_rqsort_LH_C_1_1_4) -> 
      (match _lh_rqsort_LH_C_1_1_4 with
        | `LH_N -> 
          (let rec t_8_0 = _lh_rqsort_arg3_1_4 in
            (let rec h_8_0 = _lh_rqsort_LH_C_0_1_4 in
              (fun f_1_3_8 -> 
                (`LH_C((f_1_3_8 h_8_0), ((map__d1__d0__d7 f_1_3_8) t_8_0))))))
        | _ -> 
          ((((((rqpart__d1__d0__d0 _lh_rqsort_arg1_1_4) _lh_rqsort_LH_C_0_1_4) _lh_rqsort_LH_C_1_1_4) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_4))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d1 _lh_rqsort_arg1_1_3 _lh_rqsort_arg2_1_3 _lh_rqsort_arg3_1_3 =
  (match _lh_rqsort_arg2_1_3 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_3
    | `LH_C(_lh_rqsort_LH_C_0_1_3, _lh_rqsort_LH_C_1_1_3) -> 
      (match _lh_rqsort_LH_C_1_1_3 with
        | `LH_N -> 
          (let rec t_7_1 = _lh_rqsort_arg3_1_3 in
            (let rec h_7_1 = _lh_rqsort_LH_C_0_1_3 in
              (fun f_1_2_5 -> 
                (`LH_C((f_1_2_5 h_7_1), ((map__d1__d0__d1_d3 f_1_2_5) t_7_1))))))
        | _ -> 
          ((((((rqpart__d1__d0__d1 _lh_rqsort_arg1_1_3) _lh_rqsort_LH_C_0_1_3) _lh_rqsort_LH_C_1_1_3) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_3))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d1_d0 _lh_rqsort_arg1_1_7 _lh_rqsort_arg2_1_7 _lh_rqsort_arg3_1_7 =
  (match _lh_rqsort_arg2_1_7 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_7
    | `LH_C(_lh_rqsort_LH_C_0_1_7, _lh_rqsort_LH_C_1_1_7) -> 
      (match _lh_rqsort_LH_C_1_1_7 with
        | `LH_N -> 
          (let rec t_8_6 = _lh_rqsort_arg3_1_7 in
            (let rec h_8_6 = _lh_rqsort_LH_C_0_1_7 in
              (fun f_1_5_3 -> 
                (`LH_C((f_1_5_3 h_8_6), ((map__d1__d0__d7_d6 f_1_5_3) t_8_6))))))
        | _ -> 
          ((((((rqpart__d1__d0__d1_d0 _lh_rqsort_arg1_1_7) _lh_rqsort_LH_C_0_1_7) _lh_rqsort_LH_C_1_1_7) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_7))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d1_d1 _lh_rqsort_arg1_7 _lh_rqsort_arg2_7 _lh_rqsort_arg3_7 =
  (match _lh_rqsort_arg2_7 with
    | `LH_N -> 
      _lh_rqsort_arg3_7
    | `LH_C(_lh_rqsort_LH_C_0_7, _lh_rqsort_LH_C_1_7) -> 
      (match _lh_rqsort_LH_C_1_7 with
        | `LH_N -> 
          (let rec t_4_3 = _lh_rqsort_arg3_7 in
            (let rec h_4_3 = _lh_rqsort_LH_C_0_7 in
              (fun f_7_0 -> 
                (`LH_C((f_7_0 h_4_3), ((map__d1__d0__d8_d2 f_7_0) t_4_3))))))
        | _ -> 
          ((((((rqpart__d1__d0__d1_d1 _lh_rqsort_arg1_7) _lh_rqsort_LH_C_0_7) _lh_rqsort_LH_C_1_7) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_7))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d2 _lh_rqsort_arg1_2 _lh_rqsort_arg2_2 _lh_rqsort_arg3_2 =
  (match _lh_rqsort_arg2_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_2
    | `LH_C(_lh_rqsort_LH_C_0_2, _lh_rqsort_LH_C_1_2) -> 
      (match _lh_rqsort_LH_C_1_2 with
        | `LH_N -> 
          (let rec t_2_4 = _lh_rqsort_arg3_2 in
            (let rec h_2_4 = _lh_rqsort_LH_C_0_2 in
              (fun f_3_5 -> 
                (`LH_C((f_3_5 h_2_4), ((map__d1__d0__d1_d9 f_3_5) t_2_4))))))
        | _ -> 
          ((((((rqpart__d1__d0__d2 _lh_rqsort_arg1_2) _lh_rqsort_LH_C_0_2) _lh_rqsort_LH_C_1_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d3 _lh_rqsort_arg1_1_9 _lh_rqsort_arg2_1_9 _lh_rqsort_arg3_1_9 =
  (match _lh_rqsort_arg2_1_9 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_9
    | `LH_C(_lh_rqsort_LH_C_0_1_9, _lh_rqsort_LH_C_1_1_9) -> 
      (match _lh_rqsort_LH_C_1_1_9 with
        | `LH_N -> 
          (let rec t_8_9 = _lh_rqsort_arg3_1_9 in
            (let rec h_8_9 = _lh_rqsort_LH_C_0_1_9 in
              (fun f_1_6_4 -> 
                (`LH_C((f_1_6_4 h_8_9), ((map__d1__d0__d2_d8 f_1_6_4) t_8_9))))))
        | _ -> 
          ((((((rqpart__d1__d0__d3 _lh_rqsort_arg1_1_9) _lh_rqsort_LH_C_0_1_9) _lh_rqsort_LH_C_1_1_9) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_9))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d4 _lh_rqsort_arg1_2_4 _lh_rqsort_arg2_2_4 _lh_rqsort_arg3_2_4 =
  (match _lh_rqsort_arg2_2_4 with
    | `LH_N -> 
      _lh_rqsort_arg3_2_4
    | `LH_C(_lh_rqsort_LH_C_0_2_4, _lh_rqsort_LH_C_1_2_4) -> 
      (match _lh_rqsort_LH_C_1_2_4 with
        | `LH_N -> 
          (let rec t_1_2_4 = _lh_rqsort_arg3_2_4 in
            (let rec h_1_2_4 = _lh_rqsort_LH_C_0_2_4 in
              (fun f_2_2_8 -> 
                (`LH_C((f_2_2_8 h_1_2_4), ((map__d1__d0__d3_d4 f_2_2_8) t_1_2_4))))))
        | _ -> 
          ((((((rqpart__d1__d0__d4 _lh_rqsort_arg1_2_4) _lh_rqsort_LH_C_0_2_4) _lh_rqsort_LH_C_1_2_4) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2_4))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d5 _lh_rqsort_arg1_8 _lh_rqsort_arg2_8 _lh_rqsort_arg3_8 =
  (match _lh_rqsort_arg2_8 with
    | `LH_N -> 
      _lh_rqsort_arg3_8
    | `LH_C(_lh_rqsort_LH_C_0_8, _lh_rqsort_LH_C_1_8) -> 
      (match _lh_rqsort_LH_C_1_8 with
        | `LH_N -> 
          (let rec t_4_4 = _lh_rqsort_arg3_8 in
            (let rec h_4_4 = _lh_rqsort_LH_C_0_8 in
              (fun f_7_5 -> 
                (`LH_C((f_7_5 h_4_4), ((map__d1__d0__d4_d0 f_7_5) t_4_4))))))
        | _ -> 
          ((((((rqpart__d1__d0__d5 _lh_rqsort_arg1_8) _lh_rqsort_LH_C_0_8) _lh_rqsort_LH_C_1_8) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_8))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d6 _lh_rqsort_arg1_2_2 _lh_rqsort_arg2_2_2 _lh_rqsort_arg3_2_2 =
  (match _lh_rqsort_arg2_2_2 with
    | `LH_N -> 
      _lh_rqsort_arg3_2_2
    | `LH_C(_lh_rqsort_LH_C_0_2_2, _lh_rqsort_LH_C_1_2_2) -> 
      (match _lh_rqsort_LH_C_1_2_2 with
        | `LH_N -> 
          (let rec t_1_1_4 = _lh_rqsort_arg3_2_2 in
            (let rec h_1_1_4 = _lh_rqsort_LH_C_0_2_2 in
              (fun f_2_1_0 -> 
                (`LH_C((f_2_1_0 h_1_1_4), ((map__d1__d0__d4_d9 f_2_1_0) t_1_1_4))))))
        | _ -> 
          ((((((rqpart__d1__d0__d6 _lh_rqsort_arg1_2_2) _lh_rqsort_LH_C_0_2_2) _lh_rqsort_LH_C_1_2_2) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_2_2))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d7 _lh_rqsort_arg1_1_8 _lh_rqsort_arg2_1_8 _lh_rqsort_arg3_1_8 =
  (match _lh_rqsort_arg2_1_8 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_8
    | `LH_C(_lh_rqsort_LH_C_0_1_8, _lh_rqsort_LH_C_1_1_8) -> 
      (match _lh_rqsort_LH_C_1_1_8 with
        | `LH_N -> 
          (let rec t_8_7 = _lh_rqsort_arg3_1_8 in
            (let rec h_8_7 = _lh_rqsort_LH_C_0_1_8 in
              (fun f_1_5_7 -> 
                (`LH_C((f_1_5_7 h_8_7), ((map__d1__d0__d5_d5 f_1_5_7) t_8_7))))))
        | _ -> 
          ((((((rqpart__d1__d0__d7 _lh_rqsort_arg1_1_8) _lh_rqsort_LH_C_0_1_8) _lh_rqsort_LH_C_1_1_8) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_8))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d8 _lh_rqsort_arg1_1_6 _lh_rqsort_arg2_1_6 _lh_rqsort_arg3_1_6 =
  (match _lh_rqsort_arg2_1_6 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_6
    | `LH_C(_lh_rqsort_LH_C_0_1_6, _lh_rqsort_LH_C_1_1_6) -> 
      (match _lh_rqsort_LH_C_1_1_6 with
        | `LH_N -> 
          (let rec t_8_5 = _lh_rqsort_arg3_1_6 in
            (let rec h_8_5 = _lh_rqsort_LH_C_0_1_6 in
              (fun f_1_5_1 -> 
                (`LH_C((f_1_5_1 h_8_5), ((map__d1__d0__d6_d1 f_1_5_1) t_8_5))))))
        | _ -> 
          ((((((rqpart__d1__d0__d8 _lh_rqsort_arg1_1_6) _lh_rqsort_LH_C_0_1_6) _lh_rqsort_LH_C_1_1_6) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_6))
    | _ -> 
      (failwith "error"))
and rqsort__d1__d0__d9 _lh_rqsort_arg1_1_5 _lh_rqsort_arg2_1_5 _lh_rqsort_arg3_1_5 =
  (match _lh_rqsort_arg2_1_5 with
    | `LH_N -> 
      _lh_rqsort_arg3_1_5
    | `LH_C(_lh_rqsort_LH_C_0_1_5, _lh_rqsort_LH_C_1_1_5) -> 
      (match _lh_rqsort_LH_C_1_1_5 with
        | `LH_N -> 
          (let rec t_8_4 = _lh_rqsort_arg3_1_5 in
            (let rec h_8_4 = _lh_rqsort_LH_C_0_1_5 in
              (fun f_1_5_0 -> 
                (`LH_C((f_1_5_0 h_8_4), ((map__d1__d0__d7_d0 f_1_5_0) t_8_4))))))
        | _ -> 
          ((((((rqpart__d1__d0__d9 _lh_rqsort_arg1_1_5) _lh_rqsort_LH_C_0_1_5) _lh_rqsort_LH_C_1_1_5) (`LH_N)) (`LH_N)) _lh_rqsort_arg3_1_5))
    | _ -> 
      (failwith "error"))
and sort__d0__d0__d0 _lh_sort_arg1_4 =
  (((qsort__d0__d0__d0 (fun a_6 b_6 -> 
    ((compareTuple2__d0__d0__d0 a_6) b_6))) _lh_sort_arg1_4) (fun f_9_1 -> 
    (`LH_N)))
and sort__d0__d0__d1 _lh_sort_arg1_6 =
  (((qsort__d0__d0__d1 (fun a_8 b_8 -> 
    ((compareTuple2__d0__d0__d1 a_8) b_8))) _lh_sort_arg1_6) (fun f_1_0_0 -> 
    (`LH_N)))
and sort__d0__d0__d1_d0 _lh_sort_arg1_8 =
  (((qsort__d0__d0__d1_d0 (fun a_1_0 b_1_0 -> 
    ((compareTuple2__d0__d0__d1_d0 a_1_0) b_1_0))) _lh_sort_arg1_8) (fun f_1_2_6 -> 
    (`LH_N)))
and sort__d0__d0__d1_d1 _lh_sort_arg1_5 =
  (((qsort__d0__d0__d1_d1 (fun a_7 b_7 -> 
    ((compareTuple2__d0__d0__d1_d1 a_7) b_7))) _lh_sort_arg1_5) (fun f_9_7 -> 
    (`LH_N)))
and sort__d0__d0__d2 _lh_sort_arg1_3 =
  (((qsort__d0__d0__d2 (fun a_4 b_4 -> 
    ((compareTuple2__d0__d0__d2 a_4) b_4))) _lh_sort_arg1_3) (fun f_4_6 -> 
    (`LH_N)))
and sort__d0__d0__d3 _lh_sort_arg1_7 =
  (((qsort__d0__d0__d3 (fun a_9 b_9 -> 
    ((compareTuple2__d0__d0__d3 a_9) b_9))) _lh_sort_arg1_7) (fun f_1_1_0 -> 
    (`LH_N)))
and sort__d0__d0__d4 _lh_sort_arg1_9 =
  (((qsort__d0__d0__d4 (fun a_1_1 b_1_1 -> 
    ((compareTuple2__d0__d0__d4 a_1_1) b_1_1))) _lh_sort_arg1_9) (fun f_1_5_8 -> 
    (`LH_N)))
and sort__d0__d0__d5 _lh_sort_arg1_1_2 =
  (((qsort__d0__d0__d5 (fun a_1_4 b_1_4 -> 
    ((compareTuple2__d0__d0__d5 a_1_4) b_1_4))) _lh_sort_arg1_1_2) (fun f_2_2_0 -> 
    (`LH_N)))
and sort__d0__d0__d6 _lh_sort_arg1_1_0 =
  (((qsort__d0__d0__d6 (fun a_1_2 b_1_2 -> 
    ((compareTuple2__d0__d0__d6 a_1_2) b_1_2))) _lh_sort_arg1_1_0) (fun f_1_6_5 -> 
    (`LH_N)))
and sort__d0__d0__d7 _lh_sort_arg1_1_1 =
  (((qsort__d0__d0__d7 (fun a_1_3 b_1_3 -> 
    ((compareTuple2__d0__d0__d7 a_1_3) b_1_3))) _lh_sort_arg1_1_1) (fun f_1_8_0 -> 
    (`LH_N)))
and sort__d0__d0__d8 _lh_sort_arg1_1 =
  (((qsort__d0__d0__d8 (fun a_2 b_2 -> 
    ((compareTuple2__d0__d0__d8 a_2) b_2))) _lh_sort_arg1_1) (fun f_2_9 -> 
    (`LH_N)))
and sort__d0__d0__d9 _lh_sort_arg1_2 =
  (((qsort__d0__d0__d9 (fun a_3 b_3 -> 
    ((compareTuple2__d0__d0__d9 a_3) b_3))) _lh_sort_arg1_2) (fun f_4_2 -> 
    (`LH_N)))
and testAwards_nofib__d0__d0__d0 _lh_testAwards_nofib_arg1_1 =
  ((map__d5__d0__d1 (fun x_5 -> 
    (findallawards__d0__d0__d0 (competitors__d0__d0__d0 (x_5 mod 100))))) ((enumFromTo__d0__d0__d0 1) _lh_testAwards_nofib_arg1_1));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Awards_nofib" (fun () -> ignore ((testAwards_nofib__d0 500)));
  Bench.Test.create ~name:"lumberhack_Awards_nofib" (fun () -> ignore ((testAwards_nofib__d0__d0 500)));
  Bench.Test.create ~name:"lumberhack_pop_out_Awards_nofib" (fun () -> ignore ((testAwards_nofib__d0__d0__d0 500)));
])