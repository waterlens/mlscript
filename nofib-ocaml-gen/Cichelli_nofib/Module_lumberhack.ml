

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec all__d0__d0 _lh_all_arg1_0 _lh_all_arg2_0 =
  (_lh_all_arg2_0 _lh_all_arg1_0);;
let rec all__d0__d1 _lh_all_arg1_1 _lh_all_arg2_1 =
  (_lh_all_arg2_1 _lh_all_arg1_1);;
let rec all__d0__d2 _lh_all_arg1_5 _lh_all_arg2_2 =
  (_lh_all_arg2_2 _lh_all_arg1_5);;
let rec assoc__d0__d0 _lh_assoc_arg1_0 _lh_assoc_arg2_0 =
  (match _lh_assoc_arg2_0 with
    | `LH_C(_lh_assoc_LH_C_0_0, _lh_assoc_LH_C_1_0) -> 
      (match _lh_assoc_LH_C_0_0 with
        | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
          (if (_lh_assoc_arg1_0 = _lh_assoc_LH_P2_0_0) then
            _lh_assoc_LH_P2_1_0
          else
            ((assoc__d0__d0 _lh_assoc_arg1_0) _lh_assoc_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d0__d1 _lh_assoc_arg1_2 _lh_assoc_arg2_2 =
  (match _lh_assoc_arg2_2 with
    | `LH_C(_lh_assoc_LH_C_0_2, _lh_assoc_LH_C_1_2) -> 
      (match _lh_assoc_LH_C_0_2 with
        | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
          (if (_lh_assoc_arg1_2 = _lh_assoc_LH_P2_0_2) then
            _lh_assoc_LH_P2_1_2
          else
            ((assoc__d0__d1 _lh_assoc_arg1_2) _lh_assoc_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1__d0 _lh_assoc_arg1_3 _lh_assoc_arg2_3 =
  (match _lh_assoc_arg2_3 with
    | `LH_C(_lh_assoc_LH_C_0_3, _lh_assoc_LH_C_1_3) -> 
      (match _lh_assoc_LH_C_0_3 with
        | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
          (if (_lh_assoc_arg1_3 = _lh_assoc_LH_P2_0_3) then
            _lh_assoc_LH_P2_1_3
          else
            ((assoc__d1__d0 _lh_assoc_arg1_3) _lh_assoc_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1__d1 _lh_assoc_arg1_1 _lh_assoc_arg2_1 =
  (match _lh_assoc_arg2_1 with
    | `LH_C(_lh_assoc_LH_C_0_1, _lh_assoc_LH_C_1_1) -> 
      (match _lh_assoc_LH_C_0_1 with
        | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
          (if (_lh_assoc_arg1_1 = _lh_assoc_LH_P2_0_1) then
            _lh_assoc_LH_P2_1_1
          else
            ((assoc__d1__d1 _lh_assoc_arg1_1) _lh_assoc_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1__d0 _lh_assocm_arg1_2 _lh_assocm_arg2_2 =
  (match _lh_assocm_arg2_2 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_2, _lh_assocm_LH_C_1_2) -> 
      (match _lh_assocm_LH_C_0_2 with
        | `LH_P2(_lh_assocm_LH_P2_0_2, _lh_assocm_LH_P2_1_2) -> 
          (if (_lh_assocm_arg1_2 = _lh_assocm_LH_P2_0_2) then
            (`Just(_lh_assocm_LH_P2_1_2))
          else
            ((assocm__d1__d0 _lh_assocm_arg1_2) _lh_assocm_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assocm__d1__d1 _lh_assocm_arg1_3 _lh_assocm_arg2_3 =
  (match _lh_assocm_arg2_3 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_assocm_LH_C_0_3, _lh_assocm_LH_C_1_3) -> 
      (match _lh_assocm_LH_C_0_3 with
        | `LH_P2(_lh_assocm_LH_P2_0_3, _lh_assocm_LH_P2_1_3) -> 
          (if (_lh_assocm_arg1_3 = _lh_assocm_LH_P2_0_3) then
            (`Just(_lh_assocm_LH_P2_1_3))
          else
            ((assocm__d1__d1 _lh_assocm_arg1_3) _lh_assocm_LH_C_1_3))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec concat__d0__d0 lss_2 =
  (lss_2 99);;
let rec concat__d0__d1 lss_1 =
  (lss_1 99);;
let rec concat__d0__d2 lss_9 =
  (lss_9 99);;
let rec concat__d0__d3 lss_5 =
  (lss_5 99);;
let rec concat__d0__d4 lss_7 =
  (lss_7 99);;
let rec concat__d0__d5 lss_4 =
  (lss_4 99);;
let rec concat__d0__d6 lss_0 =
  (lss_0 99);;
let rec concat__d0__d7 lss_3 =
  (lss_3 99);;
let rec concat__d0__d8 lss_8 =
  (lss_8 99);;
let rec concat__d0__d9 lss_6 =
  (lss_6 99);;
let rec ends__d2__d0 _lh_ends_arg1_1 =
  _lh_ends_arg1_1;;
let rec ends__d2__d1 _lh_ends_arg1_0 =
  _lh_ends_arg1_0;;
let rec enumFromTo__d4__d0 a_9 b_9 =
  (if (a_9 <= b_9) then
    (let rec _lh_listcomp_fun_ls_t_5 = ((enumFromTo__d4__d0 (a_9 + 1)) b_9) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_9 in
        (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_4 -> 
          (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_5))))))
  else
    (fun _lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_1_6 -> 
      (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_7)));;
let rec enumFromTo__d4__d1 a_0 b_0 =
  (if (a_0 <= b_0) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d4__d1 (a_0 + 1)) b_0) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_ls_h_1 _lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_1 _lh_listcomp_fun_1 -> 
          (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_h_0)), (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))))))
  else
    (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_3 -> 
      (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_2)));;
let rec findhash'__d0__d0 _lh_findhash'_arg1_2 _lh_findhash'_arg2_2 _lh_findhash'_arg3_1 =
  ((_lh_findhash'_arg3_1 _lh_findhash'_arg2_2) _lh_findhash'_arg1_2);;
let rec findhash'__d0__d1 _lh_findhash'_arg1_3 _lh_findhash'_arg2_3 _lh_findhash'_arg3_2 =
  ((_lh_findhash'_arg3_2 _lh_findhash'_arg2_3) _lh_findhash'_arg1_3);;
let rec findhash'__d0__d2 _lh_findhash'_arg1_1 _lh_findhash'_arg2_1 _lh_findhash'_arg3_0 =
  ((_lh_findhash'_arg3_0 _lh_findhash'_arg2_1) _lh_findhash'_arg1_1);;
let rec first__d0__d0 _lh_first_arg1_3_0 _lh_first_arg2_1_4 =
  (_lh_first_arg2_1_4 _lh_first_arg1_3_0);;
let rec first__d0__d1 _lh_first_arg1_1_1 _lh_first_arg2_7 =
  (_lh_first_arg2_7 _lh_first_arg1_1_1);;
let rec first__d0__d2 _lh_first_arg1_2_0 _lh_first_arg2_8 =
  (_lh_first_arg2_8 _lh_first_arg1_2_0);;
let rec first__d0__d3 _lh_first_arg1_4 _lh_first_arg2_4 =
  (_lh_first_arg2_4 _lh_first_arg1_4);;
let rec first__d1__d0 _lh_first_arg1_3 _lh_first_arg2_3 =
  (_lh_first_arg2_3 _lh_first_arg1_3);;
let rec first__d1__d1 _lh_first_arg1_2_6 _lh_first_arg2_1_2 =
  (_lh_first_arg2_1_2 _lh_first_arg1_2_6);;
let rec first__d1__d2 _lh_first_arg1_1 _lh_first_arg2_1 =
  (_lh_first_arg2_1 _lh_first_arg1_1);;
let rec first__d1__d3 _lh_first_arg1_2_4 _lh_first_arg2_1_0 =
  (_lh_first_arg2_1_0 _lh_first_arg1_2_4);;
let rec first__d2__d0 _lh_first_arg1_0 _lh_first_arg2_0 =
  (_lh_first_arg2_0 _lh_first_arg1_0);;
let rec first__d2__d1 _lh_first_arg1_2_3 _lh_first_arg2_9 =
  (_lh_first_arg2_9 _lh_first_arg1_2_3);;
let rec first__d2__d2 _lh_first_arg1_2_7 _lh_first_arg2_1_3 =
  (_lh_first_arg2_1_3 _lh_first_arg1_2_7);;
let rec first__d2__d3 _lh_first_arg1_2_5 _lh_first_arg2_1_1 =
  (_lh_first_arg2_1_1 _lh_first_arg1_2_5);;
let rec first__d3__d0 _lh_first_arg1_2 _lh_first_arg2_2 =
  (_lh_first_arg2_2 _lh_first_arg1_2);;
let rec first__d3__d1 _lh_first_arg1_6 _lh_first_arg2_6 =
  (_lh_first_arg2_6 _lh_first_arg1_6);;
let rec first__d3__d2 _lh_first_arg1_5 _lh_first_arg2_5 =
  (_lh_first_arg2_5 _lh_first_arg1_5);;
let rec first__d3__d3 _lh_first_arg1_3_1 _lh_first_arg2_1_5 =
  (_lh_first_arg2_1_5 _lh_first_arg1_3_1);;
let rec foldr__d0__d0 f_9_2 i_1_0 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_6_7, t_7_5) -> 
      ((f_9_2 h_6_7) (((foldr__d0__d0 f_9_2) i_1_0) t_7_5))
    | `LH_N -> 
      i_1_0);;
let rec foldr__d1__d0 f_6_5 i_4 ls_4_3 =
  ((ls_4_3 f_6_5) i_4);;
let rec foldr__d1__d1 f_7_3 i_8 ls_5_0 =
  ((ls_5_0 f_7_3) i_8);;
let rec foldr__d1__d2 f_3_5 i_1 ls_2_9 =
  ((ls_2_9 f_3_5) i_1);;
let rec foldr__d1__d3 f_6_0 i_3 ls_4_0 =
  ((ls_4_0 f_6_0) i_3);;
let rec foldr__d1__d4 f_6_7 i_5 ls_4_6 =
  ((ls_4_6 f_6_7) i_5);;
let rec foldr__d1__d5 f_2_7 i_0 ls_2_4 =
  ((ls_2_4 f_2_7) i_0);;
let rec freqsorted__d0__d0 _lh_freqsorted_arg1_0 =
  _lh_freqsorted_arg1_0;;
let rec hash__d0__d0 _lh_hash_arg1_1 _lh_hash_arg2_0 =
  (_lh_hash_arg2_0 _lh_hash_arg1_1);;
let rec hash__d0__d1 _lh_hash_arg1_2 _lh_hash_arg2_1 =
  (_lh_hash_arg2_1 _lh_hash_arg1_2);;
let rec head__d0__d0 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_1, t_1_5) -> 
      h_1_1
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1__d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec head__d1__d1 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_1_2, t_2_0) -> 
      h_1_2
    | `LH_N -> 
      (failwith "error"));;
let rec histins__d0__d0 _lh_histins_arg1_1 _lh_histins_arg2_1 =
  (match _lh_histins_arg2_1 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_1, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_1, _lh_histins_LH_C_1_1) -> 
      (match _lh_histins_LH_C_0_1 with
        | `LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1) -> 
          (if (_lh_histins_arg1_1 = _lh_histins_LH_P2_0_1) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, (_lh_histins_LH_P2_1_1 + 1))), _lh_histins_LH_C_1_1))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_1, _lh_histins_LH_P2_1_1)), ((histins__d0__d0 _lh_histins_arg1_1) _lh_histins_LH_C_1_1))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec histins__d0__d1 _lh_histins_arg1_0 _lh_histins_arg2_0 =
  (match _lh_histins_arg2_0 with
    | `LH_N -> 
      (`LH_C((`LH_P2(_lh_histins_arg1_0, 1)), (`LH_N)))
    | `LH_C(_lh_histins_LH_C_0_0, _lh_histins_LH_C_1_0) -> 
      (match _lh_histins_LH_C_0_0 with
        | `LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0) -> 
          (if (_lh_histins_arg1_0 = _lh_histins_LH_P2_0_0) then
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, (_lh_histins_LH_P2_1_0 + 1))), _lh_histins_LH_C_1_0))
          else
            (`LH_C((`LH_P2(_lh_histins_LH_P2_0_0, _lh_histins_LH_P2_1_0)), ((histins__d0__d1 _lh_histins_arg1_0) _lh_histins_LH_C_1_0))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec last__d0__d0 _lh_last_arg1_0 =
  (match _lh_last_arg1_0 with
    | `LH_C(_lh_last_LH_C_0_0, _lh_last_LH_C_1_0) -> 
      (let rec go_0 = (fun _lh_go_arg1_0 _lh_go_arg2_0 -> 
        (match _lh_go_arg2_0 with
          | `LH_N -> 
            _lh_go_arg1_0
          | `LH_C(_lh_go_LH_C_0_0, _lh_go_LH_C_1_0) -> 
            ((go_0 _lh_go_LH_C_0_0) _lh_go_LH_C_1_0)
          | _ -> 
            (failwith "error"))) in
        ((go_0 _lh_last_LH_C_0_0) _lh_last_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec last__d1__d0 _lh_last_arg1_2 =
  (match _lh_last_arg1_2 with
    | `LH_C(_lh_last_LH_C_0_2, _lh_last_LH_C_1_2) -> 
      (let rec go_2 = (fun _lh_go_arg1_2 _lh_go_arg2_2 -> 
        (match _lh_go_arg2_2 with
          | `LH_N -> 
            _lh_go_arg1_2
          | `LH_C(_lh_go_LH_C_0_2, _lh_go_LH_C_1_2) -> 
            ((go_2 _lh_go_LH_C_0_2) _lh_go_LH_C_1_2)
          | _ -> 
            (failwith "error"))) in
        ((go_2 _lh_last_LH_C_0_2) _lh_last_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec last__d1__d1 _lh_last_arg1_1 =
  (match _lh_last_arg1_1 with
    | `LH_C(_lh_last_LH_C_0_1, _lh_last_LH_C_1_1) -> 
      (let rec go_1 = (fun _lh_go_arg1_1 _lh_go_arg2_1 -> 
        (match _lh_go_arg2_1 with
          | `LH_N -> 
            _lh_go_arg1_1
          | `LH_C(_lh_go_LH_C_0_1, _lh_go_LH_C_1_1) -> 
            ((go_1 _lh_go_LH_C_0_1) _lh_go_LH_C_1_1)
          | _ -> 
            (failwith "error"))) in
        ((go_1 _lh_last_LH_C_0_1) _lh_last_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec length__d0__d0 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length__d0__d0 t_2))
    | `LH_N -> 
      0);;
let rec length__d2__d0 ls_2_7 =
  (ls_2_7 99);;
let rec length__d2__d1 ls_2_2 =
  (ls_2_2 99);;
let rec length__d2__d2 ls_1_8 =
  (ls_1_8 99);;
let rec length__d2__d3 ls_4_4 =
  (ls_4_4 99);;
let rec length__d2__d4 ls_3_2 =
  (ls_3_2 99);;
let rec length__d2__d5 ls_5_9 =
  (ls_5_9 99);;
let rec length__d2__d6 ls_5_5 =
  (ls_5_5 99);;
let rec length__d2__d7 ls_6_9 =
  (ls_6_9 99);;
let rec length__d2__d8 ls_6_0 =
  (ls_6_0 99);;
let rec length__d2__d9 ls_6_7 =
  (ls_6_7 99);;
let rec length__d3__d0 ls_7_0 =
  (match ls_7_0 with
    | `LH_C(h_7_5, t_8_3) -> 
      (1 + (length__d3__d0 t_8_3))
    | `LH_N -> 
      0);;
let rec length__d3__d1 ls_6_8 =
  (match ls_6_8 with
    | `LH_C(h_7_4, t_8_2) -> 
      (1 + (length__d3__d1 t_8_2))
    | `LH_N -> 
      0);;
let rec map__d0__d0 f_5_7 ls_3_7 =
  (ls_3_7 f_5_7);;
let rec map__d0__d1 f_3_2 ls_2_8 =
  (ls_2_8 f_3_2);;
let rec map__d0__d2 f_6_3 ls_4_1 =
  (ls_4_1 f_6_3);;
let rec map__d0__d3 f_5 ls_6 =
  (ls_6 f_5);;
let rec map__d0__d4 f_1_5 ls_1_3 =
  (ls_1_3 f_1_5);;
let rec map__d0__d5 f_9 ls_1_1 =
  (ls_1_1 f_9);;
let rec map__d0__d6 f_1_6 ls_1_5 =
  (ls_1_5 f_1_6);;
let rec map__d0__d7 f_2_6 ls_2_3 =
  (ls_2_3 f_2_6);;
let rec map__d0__d8 f_1_0_1 ls_6_6 =
  (ls_6_6 f_1_0_1);;
let rec map__d1__d0 f_7 ls_8 =
  (ls_8 f_7);;
let rec map__d1__d1 f_7_0 ls_4_7 =
  (ls_4_7 f_7_0);;
let rec map__d1__d2 f_9_3 ls_5_8 =
  (ls_5_8 f_9_3);;
let rec map__d1__d3 f_7_2 ls_4_9 =
  (ls_4_9 f_7_2);;
let rec map__d2__d0 f_4_9 ls_3_0 =
  (ls_3_0 f_4_9);;
let rec map__d2__d1 f_6 ls_7 =
  (ls_7 f_6);;
let rec map__d2__d2 f_1_8 ls_1_7 =
  (ls_1_7 f_1_8);;
let rec map__d2__d3 f_5_1 ls_3_3 =
  (ls_3_3 f_5_1);;
let rec map__d3__d0 f_3_0 ls_2_5 =
  (ls_2_5 f_3_0);;
let rec map__d3__d1 f_7_1 ls_4_8 =
  (ls_4_8 f_7_1);;
let rec map__d3__d2 f_5_2 ls_3_4 =
  (ls_3_4 f_5_2);;
let rec map__d3__d3 f_3 ls_4 =
  (ls_4 f_3);;
let rec map__d5__d0 f_9_4 ls_6_1 =
  (ls_6_1 f_9_4);;
let rec map__d5__d1 f_6_6 ls_4_5 =
  (ls_4_5 f_6_6);;
let rec map__d5__d2 f_1_4 ls_1_2 =
  (ls_1_2 f_1_4);;
let rec map__d5__d3 f_7_6 ls_5_1 =
  (ls_5_1 f_7_6);;
let rec map__d5__d4 f_5_9 ls_3_9 =
  (ls_3_9 f_5_9);;
let rec map__d5__d5 f_9_8 ls_6_3 =
  (ls_6_3 f_9_8);;
let rec map__d5__d6 f_1_9 ls_2_0 =
  (ls_2_0 f_1_9);;
let rec map__d5__d7 f_4 ls_5 =
  (ls_5 f_4);;
let rec map__d5__d8 f_1_7 ls_1_6 =
  (ls_1_6 f_1_7);;
let rec map__d5__d9 f_5_3 ls_3_5 =
  (ls_3_5 f_5_3);;
let rec map__d6__d0 f_7_7 ls_5_2 =
  (ls_5_2 f_7_7);;
let rec map__d6__d1 f_7_9 ls_5_4 =
  (ls_5_4 f_7_9);;
let rec map__d6__d2 f_7_8 ls_5_3 =
  (ls_5_3 f_7_8);;
let rec map__d6__d3 f_0 ls_0 =
  (ls_0 f_0);;
let rec map__d6__d4 f_1_0_0 ls_6_5 =
  (ls_6_5 f_1_0_0);;
let rec map__d6__d5 f_2_0 ls_2_1 =
  (ls_2_1 f_2_0);;
let rec map__d6__d6 f_2 ls_3 =
  (ls_3 f_2);;
let rec map__d6__d7 f_8 ls_9 =
  (ls_9 f_8);;
let rec map__d6__d8 f_9_1 ls_5_6 =
  (ls_5_6 f_9_1);;
let rec map__d6__d9 f_5_0 ls_3_1 =
  (ls_3_1 f_5_0);;
let rec mappend__d0__d0 xs_7 ys_1_3 =
  (xs_7 ys_1_3);;
let rec mappend__d0__d1 xs_1_8 ys_4_7 =
  (xs_1_8 ys_4_7);;
let rec mappend__d0__d2 xs_1_9 ys_4_9 =
  (xs_1_9 ys_4_9);;
let rec mappend__d1__d0 xs_1_7 ys_4_6 =
  (match xs_1_7 with
    | `LH_C(h_5_4, t_6_2) -> 
      (`LH_C(h_5_4, ((mappend__d1__d0 t_6_2) ys_4_6)))
    | `LH_N -> 
      ys_4_6);;
let rec mappend__d2__d0 xs_1_2 ys_4_1 =
  (xs_1_2 ys_4_1);;
let rec mappend__d2__d1 xs_1_0 ys_3_6 =
  (xs_1_0 ys_3_6);;
let rec mappend__d2__d1_d0 xs_1_6 ys_4_5 =
  (xs_1_6 ys_4_5);;
let rec mappend__d2__d1_d1 xs_8 ys_2_4 =
  (xs_8 ys_2_4);;
let rec mappend__d2__d2 xs_6 ys_1_2 =
  (xs_6 ys_1_2);;
let rec mappend__d2__d3 xs_1_3 ys_4_2 =
  (xs_1_3 ys_4_2);;
let rec mappend__d2__d4 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d2__d5 xs_1_5 ys_4_4 =
  (xs_1_5 ys_4_4);;
let rec mappend__d2__d6 xs_2_2 ys_5_6 =
  (xs_2_2 ys_5_6);;
let rec mappend__d2__d7 xs_2_1 ys_5_4 =
  (xs_2_1 ys_5_4);;
let rec mappend__d2__d8 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d2__d9 xs_1_1 ys_3_7 =
  (xs_1_1 ys_3_7);;
let rec mappend__d3__d0 xs_3 ys_4 =
  (xs_3 ys_4);;
let rec mappend__d3__d1 xs_1_4 ys_4_3 =
  (xs_1_4 ys_4_3);;
let rec mappend__d4__d0 xs_5 ys_1_1 =
  (xs_5 ys_1_1);;
let rec mappend__d4__d1 xs_2_0 ys_5_0 =
  (xs_2_0 ys_5_0);;
let rec mappend__d4__d2 xs_9 ys_3_5 =
  (xs_9 ys_3_5);;
let rec mappend__d4__d3 xs_4 ys_5 =
  (xs_4 ys_5);;
let rec mappend__d4__d4 xs_2 ys_3 =
  (xs_2 ys_3);;
let rec max__d0__d0 _lh_max_arg1_1 _lh_max_arg2_1 =
  (if (_lh_max_arg1_1 > _lh_max_arg2_1) then
    _lh_max_arg1_1
  else
    _lh_max_arg2_1);;
let rec max__d0__d1 _lh_max_arg1_0 _lh_max_arg2_0 =
  (if (_lh_max_arg1_0 > _lh_max_arg2_0) then
    _lh_max_arg1_0
  else
    _lh_max_arg2_0);;
let rec member__d0__d0 _lh_member_arg1_0 _lh_member_arg2_0 =
  (match _lh_member_arg2_0 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_0, _lh_member_LH_C_1_0) -> 
      ((_lh_member_arg1_0 = _lh_member_LH_C_0_0) || ((member__d0__d0 _lh_member_arg1_0) _lh_member_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec member__d1__d0 _lh_member_arg1_4 _lh_member_arg2_4 =
  (match _lh_member_arg2_4 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_4, _lh_member_LH_C_1_4) -> 
      ((_lh_member_arg1_4 = _lh_member_LH_C_0_4) || ((member__d1__d0 _lh_member_arg1_4) _lh_member_LH_C_1_4))
    | _ -> 
      (failwith "error"));;
let rec member__d1__d1 _lh_member_arg1_1 _lh_member_arg2_1 =
  (match _lh_member_arg2_1 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_1, _lh_member_LH_C_1_1) -> 
      ((_lh_member_arg1_1 = _lh_member_LH_C_0_1) || ((member__d1__d1 _lh_member_arg1_1) _lh_member_LH_C_1_1))
    | _ -> 
      (failwith "error"));;
let rec member__d2__d0 _lh_member_arg1_3 _lh_member_arg2_3 =
  (match _lh_member_arg2_3 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_3, _lh_member_LH_C_1_3) -> 
      ((_lh_member_arg1_3 = _lh_member_LH_C_0_3) || ((member__d2__d0 _lh_member_arg1_3) _lh_member_LH_C_1_3))
    | _ -> 
      (failwith "error"));;
let rec member__d2__d1 _lh_member_arg1_2 _lh_member_arg2_2 =
  (match _lh_member_arg2_2 with
    | `LH_N -> 
      false
    | `LH_C(_lh_member_LH_C_0_2, _lh_member_LH_C_1_2) -> 
      ((_lh_member_arg1_2 = _lh_member_LH_C_0_2) || ((member__d2__d1 _lh_member_arg1_2) _lh_member_LH_C_1_2))
    | _ -> 
      (failwith "error"));;
let rec min__d0__d0 _lh_min_arg1_1 _lh_min_arg2_1 =
  (if (_lh_min_arg1_1 < _lh_min_arg2_1) then
    _lh_min_arg1_1
  else
    _lh_min_arg2_1);;
let rec min__d0__d1 _lh_min_arg1_0 _lh_min_arg2_0 =
  (if (_lh_min_arg1_0 < _lh_min_arg2_0) then
    _lh_min_arg1_0
  else
    _lh_min_arg2_0);;
let rec take__d0__d0 n_6 ls_2_6 =
  (if (n_6 > 0) then
    (ls_2_6 n_6)
  else
    (fun f_3_1 -> 
      (`LH_N)));;
let rec take__d0__d1 n_9 ls_3_6 =
  (if (n_9 > 0) then
    (ls_3_6 n_9)
  else
    (fun f_5_6 -> 
      (`LH_N)));;
let rec take__d0__d2 n_1_0 ls_3_8 =
  (if (n_1_0 > 0) then
    (ls_3_8 n_1_0)
  else
    (fun f_5_8 -> 
      (`LH_N)));;
let rec take__d0__d3 n_0 ls_2 =
  (if (n_0 > 0) then
    (ls_2 n_0)
  else
    (fun f_1 -> 
      (`LH_N)));;
let rec take__d0__d4 n_1_1 ls_6_2 =
  (if (n_1_1 > 0) then
    (ls_6_2 n_1_1)
  else
    (fun f_9_7 -> 
      (`LH_N)));;
let rec assocm__d0__d0 _lh_assocm_arg1_1 _lh_assocm_arg2_1 =
  (match _lh_assocm_arg2_1 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_4 _lh_findhash'_K_2_4 _lh_findhash'_LH_P2_1_4 maxval_4 try_4 -> 
        (match _lh_findhash'_LH_P2_1_4 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_4 = _lh_findhash'_K_2_4) then
              ((firstSuccess__d2__d0 (fun m_2 -> 
                (try_4 (let rec t_4_9 = (fun ys_2_5 -> 
                  ys_2_5) in
                  (let rec h_4_1 = (`LH_P2(_lh_findhash'_K_1_4, m_2)) in
                    (fun ys_2_6 -> 
                      (`LH_C(h_4_1, ((mappend__d3__d0 t_4_9) ys_2_6))))))))) ((enumFromTo__d2__d0 0) maxval_4))
            else
              ((firstSuccess__d3__d0 (fun mn_1 -> 
                (let rec _lh_matchIdent_6 = mn_1 in
                  (match _lh_matchIdent_6 with
                    | `LH_P2(_lh_findhash'_LH_P2_0_2, _lh_findhash'_LH_P2_1_5) -> 
                      (try_4 (let rec t_5_0 = (let rec t_5_1 = (fun ys_2_7 -> 
                        ys_2_7) in
                        (let rec h_4_2 = (`LH_P2(_lh_findhash'_K_2_4, _lh_findhash'_LH_P2_1_5)) in
                          (fun ys_2_8 -> 
                            (`LH_C(h_4_2, ((mappend__d3__d0 t_5_1) ys_2_8)))))) in
                        (let rec h_4_3 = (`LH_P2(_lh_findhash'_K_1_4, _lh_findhash'_LH_P2_0_2)) in
                          (fun ys_2_9 -> 
                            (`LH_C(h_4_3, ((mappend__d3__d0 t_5_0) ys_2_9)))))))
                    | _ -> 
                      (failwith "error"))))) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
                ((_lh_listcomp_fun_para_1 _lh_listcomp_fun_5) maxval_4)) in
                (_lh_listcomp_fun_5 ((enumFromTo__d3__d0 0) maxval_4)))))
          | `Just(_lh_findhash'_Just_0_3) -> 
            ((firstSuccess__d0__d0 (fun m_3 -> 
              (try_4 (let rec t_5_2 = (fun ys_3_0 -> 
                ys_3_0) in
                (let rec h_4_4 = (`LH_P2(_lh_findhash'_K_1_4, m_3)) in
                  (fun ys_3_1 -> 
                    (`LH_C(h_4_4, ((mappend__d3__d0 t_5_2) ys_3_1))))))))) ((enumFromTo__d0__d0 0) maxval_4))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_1, _lh_assocm_LH_C_1_1) -> 
      (match _lh_assocm_LH_C_0_1 with
        | `LH_P2(_lh_assocm_LH_P2_0_1, _lh_assocm_LH_P2_1_1) -> 
          (if (_lh_assocm_arg1_1 = _lh_assocm_LH_P2_0_1) then
            (fun _lh_findhash'_K_1_5 _lh_findhash'_K_2_5 _lh_findhash'_LH_P2_1_6 maxval_5 try_5 -> 
              (match _lh_findhash'_LH_P2_1_6 with
                | `Nothing -> 
                  ((firstSuccess__d1__d0 (fun n_8 -> 
                    (try_5 (let rec t_5_3 = (fun ys_3_2 -> 
                      ys_3_2) in
                      (let rec h_4_5 = (`LH_P2(_lh_findhash'_K_2_5, n_8)) in
                        (fun ys_3_3 -> 
                          (`LH_C(h_4_5, ((mappend__d3__d0 t_5_3) ys_3_3))))))))) ((enumFromTo__d1__d0 0) maxval_5))
                | `Just(_lh_findhash'_Just_0_4) -> 
                  (try_5 (fun ys_3_4 -> 
                    ys_3_4))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0__d0 _lh_assocm_arg1_1) _lh_assocm_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and assocm__d0__d1 _lh_assocm_arg1_0 _lh_assocm_arg2_0 =
  (match _lh_assocm_arg2_0 with
    | `LH_N -> 
      (fun _lh_findhash'_K_1_2 _lh_findhash'_K_2_2 _lh_findhash'_LH_P2_1_1 maxval_2 try_2 -> 
        (match _lh_findhash'_LH_P2_1_1 with
          | `Nothing -> 
            (if (_lh_findhash'_K_1_2 = _lh_findhash'_K_2_2) then
              ((firstSuccess__d2__d1 (fun m_0 -> 
                (try_2 (let rec t_3_1 = (fun ys_1_4 -> 
                  ys_1_4) in
                  (let rec h_2_3 = (`LH_P2(_lh_findhash'_K_1_2, m_0)) in
                    (fun ys_1_5 -> 
                      (`LH_C(h_2_3, ((mappend__d3__d1 t_3_1) ys_1_5))))))))) ((enumFromTo__d2__d1 0) maxval_2))
            else
              ((firstSuccess__d3__d1 (fun mn_0 -> 
                (let rec _lh_matchIdent_4 = mn_0 in
                  (match _lh_matchIdent_4 with
                    | `LH_P2(_lh_findhash'_LH_P2_0_1, _lh_findhash'_LH_P2_1_2) -> 
                      (try_2 (let rec t_3_2 = (let rec t_3_3 = (fun ys_1_6 -> 
                        ys_1_6) in
                        (let rec h_2_4 = (`LH_P2(_lh_findhash'_K_2_2, _lh_findhash'_LH_P2_1_2)) in
                          (fun ys_1_7 -> 
                            (`LH_C(h_2_4, ((mappend__d3__d1 t_3_3) ys_1_7)))))) in
                        (let rec h_2_5 = (`LH_P2(_lh_findhash'_K_1_2, _lh_findhash'_LH_P2_0_1)) in
                          (fun ys_1_8 -> 
                            (`LH_C(h_2_5, ((mappend__d3__d1 t_3_2) ys_1_8)))))))
                    | _ -> 
                      (failwith "error"))))) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
                ((_lh_listcomp_fun_para_0 _lh_listcomp_fun_4) maxval_2)) in
                (_lh_listcomp_fun_4 ((enumFromTo__d3__d1 0) maxval_2)))))
          | `Just(_lh_findhash'_Just_0_0) -> 
            ((firstSuccess__d0__d1 (fun m_1 -> 
              (try_2 (let rec t_3_4 = (fun ys_1_9 -> 
                ys_1_9) in
                (let rec h_2_6 = (`LH_P2(_lh_findhash'_K_1_2, m_1)) in
                  (fun ys_2_0 -> 
                    (`LH_C(h_2_6, ((mappend__d3__d1 t_3_4) ys_2_0))))))))) ((enumFromTo__d0__d1 0) maxval_2))
          | _ -> 
            (failwith "error")))
    | `LH_C(_lh_assocm_LH_C_0_0, _lh_assocm_LH_C_1_0) -> 
      (match _lh_assocm_LH_C_0_0 with
        | `LH_P2(_lh_assocm_LH_P2_0_0, _lh_assocm_LH_P2_1_0) -> 
          (if (_lh_assocm_arg1_0 = _lh_assocm_LH_P2_0_0) then
            (fun _lh_findhash'_K_1_3 _lh_findhash'_K_2_3 _lh_findhash'_LH_P2_1_3 maxval_3 try_3 -> 
              (match _lh_findhash'_LH_P2_1_3 with
                | `Nothing -> 
                  ((firstSuccess__d1__d1 (fun n_7 -> 
                    (try_3 (let rec t_3_5 = (fun ys_2_1 -> 
                      ys_2_1) in
                      (let rec h_2_7 = (`LH_P2(_lh_findhash'_K_2_3, n_7)) in
                        (fun ys_2_2 -> 
                          (`LH_C(h_2_7, ((mappend__d3__d1 t_3_5) ys_2_2))))))))) ((enumFromTo__d1__d1 0) maxval_3))
                | `Just(_lh_findhash'_Just_0_1) -> 
                  (try_3 (fun ys_2_3 -> 
                    ys_2_3))
                | _ -> 
                  (failwith "error")))
          else
            ((assocm__d0__d1 _lh_assocm_arg1_0) _lh_assocm_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and attribkeys__d0__d0 _lh_attribkeys_arg1_2 =
  ((map__d0__d0 (fun k_2 -> 
    (`K(k_2, (head__d0__d0 k_2), (last__d0__d0 k_2), (length__d0__d0 k_2))))) _lh_attribkeys_arg1_2)
and attribkeys__d1__d0 _lh_attribkeys_arg1_1 =
  ((map__d5__d0 (fun k_1 -> 
    (let rec _lh_ends_K_2_2 = (last__d1__d0 k_1) in
      (let rec _lh_ends_K_1_2 = (head__d1__d0 k_1) in
        (let rec t_7_6 = (let rec t_7_7 = (fun ys_5_1 -> 
          ys_5_1) in
          (let rec h_6_8 = _lh_ends_K_2_2 in
            (fun ys_5_2 -> 
              (let rec t_7_8 = ((mappend__d2__d0 t_7_7) ys_5_2) in
                (let rec h_6_9 = h_6_8 in
                  (fun f_9_5 i_1_1 -> 
                    ((f_9_5 h_6_9) (((foldr__d1__d0 f_9_5) i_1_1) t_7_8)))))))) in
          (let rec h_7_0 = _lh_ends_K_1_2 in
            (fun ys_5_3 -> 
              (let rec t_7_9 = ((mappend__d2__d1 t_7_6) ys_5_3) in
                (let rec h_7_1 = h_7_0 in
                  (fun f_9_6 i_1_2 -> 
                    ((f_9_6 h_7_1) (((foldr__d1__d1 f_9_6) i_1_2) t_7_9)))))))))))) _lh_attribkeys_arg1_1)
and attribkeys__d1__d1 _lh_attribkeys_arg1_0 =
  ((map__d5__d5 (fun k_0 -> 
    (let rec _lh_ends_K_2_0 = (last__d1__d1 k_0) in
      (let rec _lh_ends_K_1_0 = (head__d1__d1 k_0) in
        (let rec t_5_7 = (let rec t_5_8 = (fun ys_3_8 -> 
          ys_3_8) in
          (let rec h_4_9 = _lh_ends_K_2_0 in
            (fun ys_3_9 -> 
              (let rec t_5_9 = ((mappend__d2__d6 t_5_8) ys_3_9) in
                (let rec h_5_0 = h_4_9 in
                  (fun f_6_8 i_6 -> 
                    ((f_6_8 h_5_0) (((foldr__d1__d3 f_6_8) i_6) t_5_9)))))))) in
          (let rec h_5_1 = _lh_ends_K_1_0 in
            (fun ys_4_0 -> 
              (let rec t_6_0 = ((mappend__d2__d7 t_5_7) ys_4_0) in
                (let rec h_5_2 = h_5_1 in
                  (fun f_6_9 i_7 -> 
                    ((f_6_9 h_5_2) (((foldr__d1__d4 f_6_9) i_7) t_6_0)))))))))))) _lh_attribkeys_arg1_0)
and blocked'__d0__d0 _lh_blocked'_arg1_0 _lh_blocked'_arg2_0 =
  (match _lh_blocked'_arg2_0 with
    | `LH_N -> 
      (fun _lh_findhash'_arg2_4 _lh_findhash'_arg1_4 -> 
        (`YesIts(1, _lh_findhash'_arg2_4)))
    | `LH_C(_lh_blocked'_LH_C_0_0, _lh_blocked'_LH_C_1_0) -> 
      (let rec ds'_0 = ((union__d0__d0 _lh_blocked'_arg1_0) (ends__d0__d0 _lh_blocked'_LH_C_0_0)) in
        (let rec _lh_matchIdent_1_1 = ((partition'__d0__d0 (fun x_1 -> 
          ((subset__d0__d0 (ends__d1__d0 x_1)) ds'_0))) _lh_blocked'_LH_C_1_0) in
          (match _lh_matchIdent_1_1 with
            | `LH_P2(_lh_blocked'_LH_P2_0_0, _lh_blocked'_LH_P2_1_0) -> 
              ((mappend__d0__d0 (let rec t_8_0 = _lh_blocked'_LH_P2_0_0 in
                (let rec h_7_2 = _lh_blocked'_LH_C_0_0 in
                  (fun ys_5_5 -> 
                    (let rec _lh_findhash'_LH_C_1_5 = ((mappend__d0__d1 t_8_0) ys_5_5) in
                      (let rec _lh_findhash'_LH_C_0_1 = h_7_2 in
                        (fun _lh_findhash'_arg2_5 _lh_findhash'_arg1_5 -> 
                          (match _lh_findhash'_LH_C_0_1 with
                            | `K(_lh_findhash'_K_0_1, _lh_findhash'_K_1_6, _lh_findhash'_K_2_6, _lh_findhash'_K_3_1) -> 
                              (let rec try_6 = (fun newAssocs_1 -> 
                                (let rec newCharAssocs_5 = ((mappend__d3__d0 newAssocs_1) _lh_findhash'_arg2_5) in
                                  (let rec _lh_matchIdent_1_2 = ((hinsert__d0__d0 ((hash__d0__d0 newCharAssocs_5) (let rec _lh_hash_K_3_1 = _lh_findhash'_K_3_1 in
                                    (let rec _lh_hash_K_2_1 = _lh_findhash'_K_2_6 in
                                      (let rec _lh_hash_K_1_1 = _lh_findhash'_K_1_6 in
                                        (fun _lh_hash_arg1_3 -> 
                                          ((_lh_hash_K_3_1 + ((assoc__d0__d0 _lh_hash_K_1_1) _lh_hash_arg1_3)) + ((assoc__d1__d0 _lh_hash_K_2_1) _lh_hash_arg1_3)))))))) _lh_findhash'_arg1_5) in
                                    ((_lh_matchIdent_1_2 _lh_findhash'_LH_C_1_5) newCharAssocs_5)))) in
                                (let rec maxval_1_0 = (length__d3__d0 (freqtab__d0__d0 0)) in
                                  (let rec _lh_matchIdent_1_3 = (let rec _lh_findhash'_LH_P2_1_7 = ((assocm__d1__d0 _lh_findhash'_K_2_6) _lh_findhash'_arg2_5) in
                                    (let rec _lh_findhash'_LH_P2_0_3 = ((assocm__d0__d0 _lh_findhash'_K_1_6) _lh_findhash'_arg2_5) in
                                      (fun _lh_findhash'_K_1_7 _lh_findhash'_K_2_7 maxval_1_1 try_7 -> 
                                        (((((_lh_findhash'_LH_P2_0_3 _lh_findhash'_K_1_7) _lh_findhash'_K_2_7) _lh_findhash'_LH_P2_1_7) maxval_1_1) try_7)))) in
                                    ((((_lh_matchIdent_1_3 _lh_findhash'_K_1_6) _lh_findhash'_K_2_6) maxval_1_0) try_6))))
                            | _ -> 
                              (failwith "error"))))))))) ((blocked'__d0__d0 ds'_0) _lh_blocked'_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"))
and blocked__d0__d0 _lh_blocked_arg1_0 =
  ((blocked'__d0__d0 (`LH_N)) _lh_blocked_arg1_0)
and cichelli__d0__d0 _lh_cichelli_arg1_0 =
  (let rec attribkeys'_0 = (attribkeys__d0__d0 ((mappend__d4__d4 (keys__d2__d0 0)) ((take__d0__d4 (_lh_cichelli_arg1_0 mod 2)) (keys__d3__d0 0)))) in
    (let rec hashkeys_0 = ((fun _lh_funcomp_x_0 -> 
      (blocked__d0__d0 (freqsorted__d0__d0 _lh_funcomp_x_0))) attribkeys'_0) in
      (findhash__d0__d0 hashkeys_0)))
and ends__d0__d0 _lh_ends_arg1_3 =
  (match _lh_ends_arg1_3 with
    | `K(_lh_ends_K_0_1, _lh_ends_K_1_3, _lh_ends_K_2_3, _lh_ends_K_3_1) -> 
      (let rec _lh_listcomp_fun_ls_t_8 = (let rec _lh_listcomp_fun_ls_t_9 = (fun _lh_listcomp_fun_1_7 _lh_union_arg1_1 -> 
        (`LH_N)) in
        (let rec _lh_listcomp_fun_ls_h_8 = _lh_ends_K_2_3 in
          (fun _lh_listcomp_fun_1_8 _lh_union_arg1_2 -> 
            (if (not ((member__d1__d0 _lh_listcomp_fun_ls_h_8) _lh_union_arg1_2)) then
              (`LH_C(_lh_listcomp_fun_ls_h_8, (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9)))
            else
              (_lh_listcomp_fun_1_8 _lh_listcomp_fun_ls_t_9))))) in
        (let rec _lh_listcomp_fun_ls_h_9 = _lh_ends_K_1_3 in
          (fun _lh_listcomp_fun_1_9 _lh_union_arg1_3 -> 
            (if (not ((member__d1__d1 _lh_listcomp_fun_ls_h_9) _lh_union_arg1_3)) then
              (`LH_C(_lh_listcomp_fun_ls_h_9, (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_8)))
            else
              (_lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_8)))))
    | _ -> 
      (failwith "error"))
and ends__d1__d0 _lh_ends_arg1_2 =
  (match _lh_ends_arg1_2 with
    | `K(_lh_ends_K_0_0, _lh_ends_K_1_1, _lh_ends_K_2_1, _lh_ends_K_3_0) -> 
      (let rec _lh_all_LH_C_1_0 = (let rec _lh_all_LH_C_1_1 = (fun _lh_all_arg1_2 -> 
        true) in
        (let rec _lh_all_LH_C_0_0 = _lh_ends_K_2_1 in
          (fun _lh_all_arg1_3 -> 
            (if (_lh_all_arg1_3 _lh_all_LH_C_0_0) then
              ((all__d0__d0 _lh_all_arg1_3) _lh_all_LH_C_1_1)
            else
              false)))) in
        (let rec _lh_all_LH_C_0_1 = _lh_ends_K_1_1 in
          (fun _lh_all_arg1_4 -> 
            (if (_lh_all_arg1_4 _lh_all_LH_C_0_1) then
              ((all__d0__d1 _lh_all_arg1_4) _lh_all_LH_C_1_0)
            else
              false))))
    | _ -> 
      (failwith "error"))
and enumFromTo__d0__d0 a_6 b_6 =
  (if (a_6 <= b_6) then
    (let rec t_6_1 = ((enumFromTo__d0__d0 (a_6 + 1)) b_6) in
      (let rec h_5_3 = a_6 in
        (fun f_7_4 -> 
          (let rec _lh_first_LH_C_1_6 = ((map__d1__d0 f_7_4) t_6_1) in
            (let rec _lh_first_LH_C_0_6 = (f_7_4 h_5_3) in
              (fun _lh_first_arg1_2_1 -> 
                (let rec _lh_matchIdent_1_0 = _lh_first_LH_C_0_6 in
                  (match _lh_matchIdent_1_0 with
                    | `YesIts(_lh_first_YesIts_0_6, _lh_first_YesIts_1_6) -> 
                      (`YesIts((_lh_first_arg1_2_1 + _lh_first_YesIts_0_6), _lh_first_YesIts_1_6))
                    | `NotEver(_lh_first_NotEver_0_6) -> 
                      ((first__d0__d0 (_lh_first_arg1_2_1 + _lh_first_NotEver_0_6)) _lh_first_LH_C_1_6)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_7_5 _lh_first_arg1_2_2 -> 
      (`NotEver(_lh_first_arg1_2_2))))
and enumFromTo__d0__d1 a_1 b_1 =
  (if (a_1 <= b_1) then
    (let rec t_2_9 = ((enumFromTo__d0__d1 (a_1 + 1)) b_1) in
      (let rec h_2_1 = a_1 in
        (fun f_2_8 -> 
          (let rec _lh_first_LH_C_1_0 = ((map__d1__d2 f_2_8) t_2_9) in
            (let rec _lh_first_LH_C_0_0 = (f_2_8 h_2_1) in
              (fun _lh_first_arg1_7 -> 
                (let rec _lh_matchIdent_2 = _lh_first_LH_C_0_0 in
                  (match _lh_matchIdent_2 with
                    | `YesIts(_lh_first_YesIts_0_0, _lh_first_YesIts_1_0) -> 
                      (`YesIts((_lh_first_arg1_7 + _lh_first_YesIts_0_0), _lh_first_YesIts_1_0))
                    | `NotEver(_lh_first_NotEver_0_0) -> 
                      ((first__d0__d2 (_lh_first_arg1_7 + _lh_first_NotEver_0_0)) _lh_first_LH_C_1_0)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_2_9 _lh_first_arg1_8 -> 
      (`NotEver(_lh_first_arg1_8))))
and enumFromTo__d1__d0 a_5 b_5 =
  (if (a_5 <= b_5) then
    (let rec t_5_5 = ((enumFromTo__d1__d0 (a_5 + 1)) b_5) in
      (let rec h_4_7 = a_5 in
        (fun f_6_1 -> 
          (let rec _lh_first_LH_C_1_4 = ((map__d2__d0 f_6_1) t_5_5) in
            (let rec _lh_first_LH_C_0_4 = (f_6_1 h_4_7) in
              (fun _lh_first_arg1_1_6 -> 
                (let rec _lh_matchIdent_8 = _lh_first_LH_C_0_4 in
                  (match _lh_matchIdent_8 with
                    | `YesIts(_lh_first_YesIts_0_4, _lh_first_YesIts_1_4) -> 
                      (`YesIts((_lh_first_arg1_1_6 + _lh_first_YesIts_0_4), _lh_first_YesIts_1_4))
                    | `NotEver(_lh_first_NotEver_0_4) -> 
                      ((first__d1__d0 (_lh_first_arg1_1_6 + _lh_first_NotEver_0_4)) _lh_first_LH_C_1_4)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_6_2 _lh_first_arg1_1_7 -> 
      (`NotEver(_lh_first_arg1_1_7))))
and enumFromTo__d1__d1 a_3 b_3 =
  (if (a_3 <= b_3) then
    (let rec t_4_8 = ((enumFromTo__d1__d1 (a_3 + 1)) b_3) in
      (let rec h_4_0 = a_3 in
        (fun f_4_7 -> 
          (let rec _lh_first_LH_C_1_2 = ((map__d2__d2 f_4_7) t_4_8) in
            (let rec _lh_first_LH_C_0_2 = (f_4_7 h_4_0) in
              (fun _lh_first_arg1_1_2 -> 
                (let rec _lh_matchIdent_5 = _lh_first_LH_C_0_2 in
                  (match _lh_matchIdent_5 with
                    | `YesIts(_lh_first_YesIts_0_2, _lh_first_YesIts_1_2) -> 
                      (`YesIts((_lh_first_arg1_1_2 + _lh_first_YesIts_0_2), _lh_first_YesIts_1_2))
                    | `NotEver(_lh_first_NotEver_0_2) -> 
                      ((first__d1__d2 (_lh_first_arg1_1_2 + _lh_first_NotEver_0_2)) _lh_first_LH_C_1_2)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_4_8 _lh_first_arg1_1_3 -> 
      (`NotEver(_lh_first_arg1_1_3))))
and enumFromTo__d2__d0 a_4 b_4 =
  (if (a_4 <= b_4) then
    (let rec t_5_4 = ((enumFromTo__d2__d0 (a_4 + 1)) b_4) in
      (let rec h_4_6 = a_4 in
        (fun f_5_4 -> 
          (let rec _lh_first_LH_C_1_3 = ((map__d3__d0 f_5_4) t_5_4) in
            (let rec _lh_first_LH_C_0_3 = (f_5_4 h_4_6) in
              (fun _lh_first_arg1_1_4 -> 
                (let rec _lh_matchIdent_7 = _lh_first_LH_C_0_3 in
                  (match _lh_matchIdent_7 with
                    | `YesIts(_lh_first_YesIts_0_3, _lh_first_YesIts_1_3) -> 
                      (`YesIts((_lh_first_arg1_1_4 + _lh_first_YesIts_0_3), _lh_first_YesIts_1_3))
                    | `NotEver(_lh_first_NotEver_0_3) -> 
                      ((first__d2__d0 (_lh_first_arg1_1_4 + _lh_first_NotEver_0_3)) _lh_first_LH_C_1_3)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_5_5 _lh_first_arg1_1_5 -> 
      (`NotEver(_lh_first_arg1_1_5))))
and enumFromTo__d2__d1 a_2 b_2 =
  (if (a_2 <= b_2) then
    (let rec t_3_0 = ((enumFromTo__d2__d1 (a_2 + 1)) b_2) in
      (let rec h_2_2 = a_2 in
        (fun f_3_3 -> 
          (let rec _lh_first_LH_C_1_1 = ((map__d3__d2 f_3_3) t_3_0) in
            (let rec _lh_first_LH_C_0_1 = (f_3_3 h_2_2) in
              (fun _lh_first_arg1_9 -> 
                (let rec _lh_matchIdent_3 = _lh_first_LH_C_0_1 in
                  (match _lh_matchIdent_3 with
                    | `YesIts(_lh_first_YesIts_0_1, _lh_first_YesIts_1_1) -> 
                      (`YesIts((_lh_first_arg1_9 + _lh_first_YesIts_0_1), _lh_first_YesIts_1_1))
                    | `NotEver(_lh_first_NotEver_0_1) -> 
                      ((first__d2__d2 (_lh_first_arg1_9 + _lh_first_NotEver_0_1)) _lh_first_LH_C_1_1)
                    | _ -> 
                      (failwith "error")))))))))
  else
    (fun f_3_4 _lh_first_arg1_1_0 -> 
      (`NotEver(_lh_first_arg1_1_0))))
and enumFromTo__d3__d0 a_7 b_7 =
  (if (a_7 <= b_7) then
    (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo__d3__d0 (a_7 + 1)) b_7) in
      (let rec _lh_listcomp_fun_ls_h_3 = a_7 in
        (fun _lh_listcomp_fun_6 maxval_6 -> 
          (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_2 -> 
            ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_3) _lh_listcomp_fun_7) _lh_listcomp_fun_ls_t_3) _lh_listcomp_fun_6)) in
            (_lh_listcomp_fun_7 ((enumFromTo__d4__d0 0) maxval_6))))))
  else
    (fun _lh_listcomp_fun_8 maxval_7 -> 
      (`LH_N)))
and enumFromTo__d3__d1 a_8 b_8 =
  (if (a_8 <= b_8) then
    (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo__d3__d1 (a_8 + 1)) b_8) in
      (let rec _lh_listcomp_fun_ls_h_4 = a_8 in
        (fun _lh_listcomp_fun_9 maxval_8 -> 
          (let rec _lh_listcomp_fun_1_0 = (fun _lh_listcomp_fun_para_3 -> 
            ((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_4) _lh_listcomp_fun_1_0) _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_9)) in
            (_lh_listcomp_fun_1_0 ((enumFromTo__d4__d1 0) maxval_8))))))
  else
    (fun _lh_listcomp_fun_1_1 maxval_9 -> 
      (`LH_N)))
and findhash__d0__d0 _lh_findhash_arg1_0 =
  (((findhash'__d0__d2 (`H((`Nothing), (`Nothing), (`LH_N)))) (`LH_N)) _lh_findhash_arg1_0)
and firstSuccess__d0__d0 _lh_firstSuccess_arg1_1 _lh_firstSuccess_arg2_1 =
  ((first__d0__d1 0) ((map__d1__d1 _lh_firstSuccess_arg1_1) _lh_firstSuccess_arg2_1))
and firstSuccess__d0__d1 _lh_firstSuccess_arg1_7 _lh_firstSuccess_arg2_7 =
  ((first__d0__d3 0) ((map__d1__d3 _lh_firstSuccess_arg1_7) _lh_firstSuccess_arg2_7))
and firstSuccess__d1__d0 _lh_firstSuccess_arg1_3 _lh_firstSuccess_arg2_3 =
  ((first__d1__d1 0) ((map__d2__d1 _lh_firstSuccess_arg1_3) _lh_firstSuccess_arg2_3))
and firstSuccess__d1__d1 _lh_firstSuccess_arg1_5 _lh_firstSuccess_arg2_5 =
  ((first__d1__d3 0) ((map__d2__d3 _lh_firstSuccess_arg1_5) _lh_firstSuccess_arg2_5))
and firstSuccess__d2__d0 _lh_firstSuccess_arg1_6 _lh_firstSuccess_arg2_6 =
  ((first__d2__d1 0) ((map__d3__d1 _lh_firstSuccess_arg1_6) _lh_firstSuccess_arg2_6))
and firstSuccess__d2__d1 _lh_firstSuccess_arg1_4 _lh_firstSuccess_arg2_4 =
  ((first__d2__d3 0) ((map__d3__d3 _lh_firstSuccess_arg1_4) _lh_firstSuccess_arg2_4))
and firstSuccess__d3__d0 _lh_firstSuccess_arg1_0 _lh_firstSuccess_arg2_0 =
  ((first__d3__d0 0) ((map__d4__d0 _lh_firstSuccess_arg1_0) _lh_firstSuccess_arg2_0))
and firstSuccess__d3__d1 _lh_firstSuccess_arg1_2 _lh_firstSuccess_arg2_2 =
  ((first__d3__d2 0) ((map__d4__d1 _lh_firstSuccess_arg1_2) _lh_firstSuccess_arg2_2))
and freqtab__d0__d0 _lh_freqtab_arg1_1 =
  (histo__d0__d0 (concat__d0__d0 ((map__d6__d4 ends__d2__d0) (attribkeys__d1__d0 (keys__d0__d0 0)))))
and freqtab__d0__d1 _lh_freqtab_arg1_0 =
  (histo__d0__d1 (concat__d0__d5 ((map__d6__d9 ends__d2__d1) (attribkeys__d1__d1 (keys__d0__d1 0)))))
and hinsert__d0__d0 _lh_hinsert_arg1_0 _lh_hinsert_arg2_0 =
  (match _lh_hinsert_arg2_0 with
    | `H(_lh_hinsert_H_0_0, _lh_hinsert_H_1_0, _lh_hinsert_H_2_0) -> 
      (let rec lo'_0 = ((minm__d0__d0 _lh_hinsert_H_0_0) _lh_hinsert_arg1_0) in
        (let rec hi'_0 = ((maxm__d0__d0 _lh_hinsert_H_1_0) _lh_hinsert_arg1_0) in
          (if (((member__d2__d0 _lh_hinsert_arg1_0) _lh_hinsert_H_2_0) || (((1 + hi'_0) - lo'_0) > (length__d2__d4 (keys__d1__d0 0)))) then
            (fun _lh_findhash'_LH_C_1_1 newCharAssocs_1 -> 
              (`NotEver(1)))
          else
            (let rec _lh_findhash'_Just_0_2 = (`H((`Just(lo'_0)), (`Just(hi'_0)), (`LH_C(_lh_hinsert_arg1_0, _lh_hinsert_H_2_0)))) in
              (fun _lh_findhash'_LH_C_1_2 newCharAssocs_2 -> 
                (((findhash'__d0__d0 _lh_findhash'_Just_0_2) newCharAssocs_2) _lh_findhash'_LH_C_1_2))))))
    | _ -> 
      (failwith "error"))
and hinsert__d0__d1 _lh_hinsert_arg1_1 _lh_hinsert_arg2_1 =
  (match _lh_hinsert_arg2_1 with
    | `H(_lh_hinsert_H_0_1, _lh_hinsert_H_1_1, _lh_hinsert_H_2_1) -> 
      (let rec lo'_1 = ((minm__d0__d1 _lh_hinsert_H_0_1) _lh_hinsert_arg1_1) in
        (let rec hi'_1 = ((maxm__d0__d1 _lh_hinsert_H_1_1) _lh_hinsert_arg1_1) in
          (if (((member__d2__d1 _lh_hinsert_arg1_1) _lh_hinsert_H_2_1) || (((1 + hi'_1) - lo'_1) > (length__d2__d9 (keys__d1__d1 0)))) then
            (fun _lh_findhash'_LH_C_1_3 newCharAssocs_3 -> 
              (`NotEver(1)))
          else
            (let rec _lh_findhash'_Just_0_5 = (`H((`Just(lo'_1)), (`Just(hi'_1)), (`LH_C(_lh_hinsert_arg1_1, _lh_hinsert_H_2_1)))) in
              (fun _lh_findhash'_LH_C_1_4 newCharAssocs_4 -> 
                (((findhash'__d0__d1 _lh_findhash'_Just_0_5) newCharAssocs_4) _lh_findhash'_LH_C_1_4))))))
    | _ -> 
      (failwith "error"))
and histo__d0__d0 _lh_histo_arg1_1 =
  (((foldr__d1__d2 histins__d0__d0) (`LH_N)) _lh_histo_arg1_1)
and histo__d0__d1 _lh_histo_arg1_0 =
  (((foldr__d1__d5 histins__d0__d1) (`LH_N)) _lh_histo_arg1_0)
and keys__d0__d0 _lh_keys_arg1_5 =
  (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (fun f_8_0 f_8_1 _lh_dummy_1_5 f_8_2 i_9 -> 
    i_9) in
    (let rec h_5_5 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_8_3 -> 
        (let rec t_6_7 = ((map__d5__d1 f_8_3) t_6_6) in
          (let rec h_5_6 = (f_8_3 h_5_5) in
            (fun f_8_4 -> 
              (let rec t_6_8 = ((map__d6__d0 f_8_4) t_6_7) in
                (let rec h_5_7 = (f_8_4 h_5_6) in
                  (fun _lh_dummy_1_6 -> 
                    ((mappend__d2__d2 h_5_7) (concat__d0__d1 t_6_8))))))))))) in
    (let rec h_5_8 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_8_5 -> 
        (let rec t_6_9 = ((map__d5__d2 f_8_5) t_6_5) in
          (let rec h_5_9 = (f_8_5 h_5_8) in
            (fun f_8_6 -> 
              (let rec t_7_0 = ((map__d6__d1 f_8_6) t_6_9) in
                (let rec h_6_0 = (f_8_6 h_5_9) in
                  (fun _lh_dummy_1_7 -> 
                    ((mappend__d2__d3 h_6_0) (concat__d0__d2 t_7_0))))))))))) in
    (let rec h_6_1 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_8_7 -> 
        (let rec t_7_1 = ((map__d5__d3 f_8_7) t_6_4) in
          (let rec h_6_2 = (f_8_7 h_6_1) in
            (fun f_8_8 -> 
              (let rec t_7_2 = ((map__d6__d2 f_8_8) t_7_1) in
                (let rec h_6_3 = (f_8_8 h_6_2) in
                  (fun _lh_dummy_1_8 -> 
                    ((mappend__d2__d4 h_6_3) (concat__d0__d3 t_7_2))))))))))) in
    (let rec h_6_4 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun f_8_9 -> 
        (let rec t_7_3 = ((map__d5__d4 f_8_9) t_6_3) in
          (let rec h_6_5 = (f_8_9 h_6_4) in
            (fun f_9_0 -> 
              (let rec t_7_4 = ((map__d6__d3 f_9_0) t_7_3) in
                (let rec h_6_6 = (f_9_0 h_6_5) in
                  (fun _lh_dummy_1_9 -> 
                    ((mappend__d2__d5 h_6_6) (concat__d0__d4 t_7_4)))))))))))
and keys__d0__d1 _lh_keys_arg1_4 =
  (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (fun f_3_6 f_3_7 _lh_dummy_1_0 f_3_8 i_2 -> 
    i_2) in
    (let rec h_2_8 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun f_3_9 -> 
        (let rec t_4_0 = ((map__d5__d6 f_3_9) t_3_9) in
          (let rec h_2_9 = (f_3_9 h_2_8) in
            (fun f_4_0 -> 
              (let rec t_4_1 = ((map__d6__d5 f_4_0) t_4_0) in
                (let rec h_3_0 = (f_4_0 h_2_9) in
                  (fun _lh_dummy_1_1 -> 
                    ((mappend__d2__d8 h_3_0) (concat__d0__d6 t_4_1))))))))))) in
    (let rec h_3_1 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun f_4_1 -> 
        (let rec t_4_2 = ((map__d5__d7 f_4_1) t_3_8) in
          (let rec h_3_2 = (f_4_1 h_3_1) in
            (fun f_4_2 -> 
              (let rec t_4_3 = ((map__d6__d6 f_4_2) t_4_2) in
                (let rec h_3_3 = (f_4_2 h_3_2) in
                  (fun _lh_dummy_1_2 -> 
                    ((mappend__d2__d9 h_3_3) (concat__d0__d7 t_4_3))))))))))) in
    (let rec h_3_4 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun f_4_3 -> 
        (let rec t_4_4 = ((map__d5__d8 f_4_3) t_3_7) in
          (let rec h_3_5 = (f_4_3 h_3_4) in
            (fun f_4_4 -> 
              (let rec t_4_5 = ((map__d6__d7 f_4_4) t_4_4) in
                (let rec h_3_6 = (f_4_4 h_3_5) in
                  (fun _lh_dummy_1_3 -> 
                    ((mappend__d2__d1_d0 h_3_6) (concat__d0__d8 t_4_5))))))))))) in
    (let rec h_3_7 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun f_4_5 -> 
        (let rec t_4_6 = ((map__d5__d9 f_4_5) t_3_6) in
          (let rec h_3_8 = (f_4_5 h_3_7) in
            (fun f_4_6 -> 
              (let rec t_4_7 = ((map__d6__d8 f_4_6) t_4_6) in
                (let rec h_3_9 = (f_4_6 h_3_8) in
                  (fun _lh_dummy_1_4 -> 
                    ((mappend__d2__d1_d1 h_3_9) (concat__d0__d9 t_4_7)))))))))))
and keys__d1__d0 _lh_keys_arg1_0 =
  (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (fun _lh_dummy_0 -> 
    0) in
    (fun _lh_dummy_1 -> 
      (1 + (length__d2__d0 t_6)))) in
    (fun _lh_dummy_2 -> 
      (1 + (length__d2__d1 t_5)))) in
    (fun _lh_dummy_3 -> 
      (1 + (length__d2__d2 t_4)))) in
    (fun _lh_dummy_4 -> 
      (1 + (length__d2__d3 t_3))))
and keys__d1__d1 _lh_keys_arg1_2 =
  (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (fun _lh_dummy_5 -> 
    0) in
    (fun _lh_dummy_6 -> 
      (1 + (length__d2__d5 t_1_9)))) in
    (fun _lh_dummy_7 -> 
      (1 + (length__d2__d6 t_1_8)))) in
    (fun _lh_dummy_8 -> 
      (1 + (length__d2__d7 t_1_7)))) in
    (fun _lh_dummy_9 -> 
      (1 + (length__d2__d8 t_1_6))))
and keys__d2__d0 _lh_keys_arg1_1 =
  (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (fun ys_6 -> 
    ys_6) in
    (let rec h_3 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun ys_7 -> 
        (let rec t_1_1 = ((mappend__d4__d0 t_1_0) ys_7) in
          (let rec h_4 = h_3 in
            (fun f_1_0 -> 
              (`LH_C((f_1_0 h_4), ((map__d0__d1 f_1_0) t_1_1))))))))) in
    (let rec h_5 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun ys_8 -> 
        (let rec t_1_2 = ((mappend__d4__d1 t_9) ys_8) in
          (let rec h_6 = h_5 in
            (fun f_1_1 -> 
              (`LH_C((f_1_1 h_6), ((map__d0__d2 f_1_1) t_1_2))))))))) in
    (let rec h_7 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun ys_9 -> 
        (let rec t_1_3 = ((mappend__d4__d2 t_8) ys_9) in
          (let rec h_8 = h_7 in
            (fun f_1_2 -> 
              (`LH_C((f_1_2 h_8), ((map__d0__d3 f_1_2) t_1_3))))))))) in
    (let rec h_9 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun ys_1_0 -> 
        (let rec t_1_4 = ((mappend__d4__d3 t_7) ys_1_0) in
          (let rec h_1_0 = h_9 in
            (fun f_1_3 -> 
              (`LH_C((f_1_3 h_1_0), ((map__d0__d4 f_1_3) t_1_4)))))))))
and keys__d3__d0 _lh_keys_arg1_3 =
  (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (fun n_1 f_2_1 -> 
    (`LH_N)) in
    (let rec h_1_3 = (`LH_C('a', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('c', (`LH_C('o', (`LH_C('t', (`LH_N))))))))))))))) in
      (fun n_2 -> 
        (let rec t_2_5 = ((take__d0__d2 (n_2 - 1)) t_2_4) in
          (let rec h_1_4 = h_1_3 in
            (fun f_2_2 -> 
              (`LH_C((f_2_2 h_1_4), ((map__d0__d7 f_2_2) t_2_5))))))))) in
    (let rec h_1_5 = (`LH_C('p', (`LH_C('e', (`LH_C('a', (`LH_C('c', (`LH_C('h', (`LH_N))))))))))) in
      (fun n_3 -> 
        (let rec t_2_6 = ((take__d0__d3 (n_3 - 1)) t_2_3) in
          (let rec h_1_6 = h_1_5 in
            (fun f_2_3 -> 
              (`LH_C((f_2_3 h_1_6), ((map__d0__d8 f_2_3) t_2_6))))))))) in
    (let rec h_1_7 = (`LH_C('b', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_C('n', (`LH_C('a', (`LH_N))))))))))))) in
      (fun n_4 -> 
        (let rec t_2_7 = ((take__d0__d0 (n_4 - 1)) t_2_2) in
          (let rec h_1_8 = h_1_7 in
            (fun f_2_4 -> 
              (`LH_C((f_2_4 h_1_8), ((map__d0__d5 f_2_4) t_2_7))))))))) in
    (let rec h_1_9 = (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_N))))))))))) in
      (fun n_5 -> 
        (let rec t_2_8 = ((take__d0__d1 (n_5 - 1)) t_2_1) in
          (let rec h_2_0 = h_1_9 in
            (fun f_2_5 -> 
              (`LH_C((f_2_5 h_2_0), ((map__d0__d6 f_2_5) t_2_8)))))))))
and map__d4__d0 f_9_9 ls_6_4 =
  (match ls_6_4 with
    | `LH_C(h_7_3, t_8_1) -> 
      (let rec _lh_first_LH_C_1_7 = ((map__d4__d0 f_9_9) t_8_1) in
        (let rec _lh_first_LH_C_0_7 = (f_9_9 h_7_3) in
          (fun _lh_first_arg1_2_8 -> 
            (let rec _lh_matchIdent_1_4 = _lh_first_LH_C_0_7 in
              (match _lh_matchIdent_1_4 with
                | `YesIts(_lh_first_YesIts_0_7, _lh_first_YesIts_1_7) -> 
                  (`YesIts((_lh_first_arg1_2_8 + _lh_first_YesIts_0_7), _lh_first_YesIts_1_7))
                | `NotEver(_lh_first_NotEver_0_7) -> 
                  ((first__d3__d1 (_lh_first_arg1_2_8 + _lh_first_NotEver_0_7)) _lh_first_LH_C_1_7)
                | _ -> 
                  (failwith "error"))))))
    | `LH_N -> 
      (fun _lh_first_arg1_2_9 -> 
        (`NotEver(_lh_first_arg1_2_9))))
and map__d4__d1 f_6_4 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_4_8, t_5_6) -> 
      (let rec _lh_first_LH_C_1_5 = ((map__d4__d1 f_6_4) t_5_6) in
        (let rec _lh_first_LH_C_0_5 = (f_6_4 h_4_8) in
          (fun _lh_first_arg1_1_8 -> 
            (let rec _lh_matchIdent_9 = _lh_first_LH_C_0_5 in
              (match _lh_matchIdent_9 with
                | `YesIts(_lh_first_YesIts_0_5, _lh_first_YesIts_1_5) -> 
                  (`YesIts((_lh_first_arg1_1_8 + _lh_first_YesIts_0_5), _lh_first_YesIts_1_5))
                | `NotEver(_lh_first_NotEver_0_5) -> 
                  ((first__d3__d3 (_lh_first_arg1_1_8 + _lh_first_NotEver_0_5)) _lh_first_LH_C_1_5)
                | _ -> 
                  (failwith "error"))))))
    | `LH_N -> 
      (fun _lh_first_arg1_1_9 -> 
        (`NotEver(_lh_first_arg1_1_9))))
and maxm__d0__d0 _lh_maxm_arg1_1 _lh_maxm_arg2_1 =
  (match _lh_maxm_arg1_1 with
    | `Nothing -> 
      _lh_maxm_arg2_1
    | `Just(_lh_maxm_Just_0_1) -> 
      ((max__d0__d0 _lh_maxm_Just_0_1) _lh_maxm_arg2_1)
    | _ -> 
      (failwith "error"))
and maxm__d0__d1 _lh_maxm_arg1_0 _lh_maxm_arg2_0 =
  (match _lh_maxm_arg1_0 with
    | `Nothing -> 
      _lh_maxm_arg2_0
    | `Just(_lh_maxm_Just_0_0) -> 
      ((max__d0__d1 _lh_maxm_Just_0_0) _lh_maxm_arg2_0)
    | _ -> 
      (failwith "error"))
and minm__d0__d0 _lh_minm_arg1_0 _lh_minm_arg2_0 =
  (match _lh_minm_arg1_0 with
    | `Nothing -> 
      _lh_minm_arg2_0
    | `Just(_lh_minm_Just_0_0) -> 
      ((min__d0__d0 _lh_minm_Just_0_0) _lh_minm_arg2_0)
    | _ -> 
      (failwith "error"))
and minm__d0__d1 _lh_minm_arg1_1 _lh_minm_arg2_1 =
  (match _lh_minm_arg1_1 with
    | `Nothing -> 
      _lh_minm_arg2_1
    | `Just(_lh_minm_Just_0_1) -> 
      ((min__d0__d1 _lh_minm_Just_0_1) _lh_minm_arg2_1)
    | _ -> 
      (failwith "error"))
and partition'__d0__d0 _lh_partition'_arg1_0 =
  ((foldr__d0__d0 (select__d0__d0 _lh_partition'_arg1_0)) (`LH_P2((fun ys_4_8 -> 
    ys_4_8), (`LH_N))))
and prog__d0__d0 _lh_prog_arg1_0 =
  (cichelli__d0__d0 _lh_prog_arg1_0)
and select__d0__d0 _lh_select_arg1_0 _lh_select_arg2_0 _lh_select_arg3_0 =
  (match _lh_select_arg3_0 with
    | `LH_P2(_lh_select_LH_P2_0_0, _lh_select_LH_P2_1_0) -> 
      (if (_lh_select_arg1_0 _lh_select_arg2_0) then
        (`LH_P2((let rec t_1 = _lh_select_LH_P2_0_0 in
          (let rec h_1 = _lh_select_arg2_0 in
            (fun ys_2 -> 
              (let rec _lh_findhash'_LH_C_1_0 = ((mappend__d0__d2 t_1) ys_2) in
                (let rec _lh_findhash'_LH_C_0_0 = h_1 in
                  (fun _lh_findhash'_arg2_0 _lh_findhash'_arg1_0 -> 
                    (match _lh_findhash'_LH_C_0_0 with
                      | `K(_lh_findhash'_K_0_0, _lh_findhash'_K_1_0, _lh_findhash'_K_2_0, _lh_findhash'_K_3_0) -> 
                        (let rec try_0 = (fun newAssocs_0 -> 
                          (let rec newCharAssocs_0 = ((mappend__d3__d1 newAssocs_0) _lh_findhash'_arg2_0) in
                            (let rec _lh_matchIdent_0 = ((hinsert__d0__d1 ((hash__d0__d1 newCharAssocs_0) (let rec _lh_hash_K_3_0 = _lh_findhash'_K_3_0 in
                              (let rec _lh_hash_K_2_0 = _lh_findhash'_K_2_0 in
                                (let rec _lh_hash_K_1_0 = _lh_findhash'_K_1_0 in
                                  (fun _lh_hash_arg1_0 -> 
                                    ((_lh_hash_K_3_0 + ((assoc__d0__d1 _lh_hash_K_1_0) _lh_hash_arg1_0)) + ((assoc__d1__d1 _lh_hash_K_2_0) _lh_hash_arg1_0)))))))) _lh_findhash'_arg1_0) in
                              ((_lh_matchIdent_0 _lh_findhash'_LH_C_1_0) newCharAssocs_0)))) in
                          (let rec maxval_0 = (length__d3__d1 (freqtab__d0__d1 0)) in
                            (let rec _lh_matchIdent_1 = (let rec _lh_findhash'_LH_P2_1_0 = ((assocm__d1__d1 _lh_findhash'_K_2_0) _lh_findhash'_arg2_0) in
                              (let rec _lh_findhash'_LH_P2_0_0 = ((assocm__d0__d1 _lh_findhash'_K_1_0) _lh_findhash'_arg2_0) in
                                (fun _lh_findhash'_K_1_1 _lh_findhash'_K_2_1 maxval_1 try_1 -> 
                                  (((((_lh_findhash'_LH_P2_0_0 _lh_findhash'_K_1_1) _lh_findhash'_K_2_1) _lh_findhash'_LH_P2_1_0) maxval_1) try_1)))) in
                              ((((_lh_matchIdent_1 _lh_findhash'_K_1_0) _lh_findhash'_K_2_0) maxval_0) try_0))))
                      | _ -> 
                        (failwith "error")))))))), _lh_select_LH_P2_1_0))
      else
        (`LH_P2(_lh_select_LH_P2_0_0, (`LH_C(_lh_select_arg2_0, _lh_select_LH_P2_1_0)))))
    | _ -> 
      (failwith "error"))
and subset__d0__d0 _lh_subset_arg1_0 _lh_subset_arg2_0 =
  ((all__d0__d2 (fun x_0 -> 
    ((member__d0__d0 x_0) _lh_subset_arg2_0))) _lh_subset_arg1_0)
and testCichelli_nofib__d0__d0 _lh_testCichelli_nofib_arg1_0 =
  (prog__d0__d0 _lh_testCichelli_nofib_arg1_0)
and union__d0__d0 _lh_union_arg1_0 _lh_union_arg2_0 =
  ((mappend__d1__d0 _lh_union_arg1_0) (let rec _lh_listcomp_fun_1_2 = (fun _lh_listcomp_fun_para_4 -> 
    ((_lh_listcomp_fun_para_4 _lh_listcomp_fun_1_2) _lh_union_arg1_0)) in
    (_lh_listcomp_fun_1_2 _lh_union_arg2_0)));;
end;;

