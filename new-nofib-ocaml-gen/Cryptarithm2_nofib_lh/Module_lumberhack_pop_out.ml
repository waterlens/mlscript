

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec concat__d1 lss_4 =
  (lss_4 99);;
let rec concat__d1_d0 lss_1_4 =
  (lss_1_4 99);;
let rec concat__d1_d1 lss_3 =
  (lss_3 99);;
let rec concat__d1_d2 lss_1_5 =
  (lss_1_5 99);;
let rec concat__d1_d3 lss_1 =
  (lss_1 99);;
let rec concat__d1_d4 lss_0 =
  (lss_0 99);;
let rec concat__d1_d5 lss_1_3 =
  (lss_1_3 99);;
let rec concat__d1_d6 lss_1_6 =
  (lss_1_6 99);;
let rec concat__d1_d7 lss_7 =
  (lss_7 99);;
let rec concat__d1_d8 lss_1_0 =
  (lss_1_0 99);;
let rec concat__d2 lss_1_8 =
  (lss_1_8 99);;
let rec concat__d3 lss_1_2 =
  (lss_1_2 99);;
let rec concat__d4 lss_1_7 =
  (lss_1_7 99);;
let rec concat__d5 lss_1_1 =
  (lss_1_1 99);;
let rec concat__d6 lss_9 =
  (lss_9 99);;
let rec concat__d7 lss_2 =
  (lss_2 99);;
let rec concat__d8 lss_5 =
  (lss_5 99);;
let rec concat__d9 lss_6 =
  (lss_6 99);;
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
let rec delete__d1 _lh_delete_arg1_1 _lh_delete_arg2_1 =
  (match _lh_delete_arg1_1 with
    | `LH_C(_lh_delete_LH_C_0_1, _lh_delete_LH_C_1_1) -> 
      (if (_lh_delete_LH_C_0_1 = _lh_delete_arg2_1) then
        ((delete__d1 _lh_delete_LH_C_1_1) _lh_delete_arg2_1)
      else
        (`LH_C(_lh_delete_LH_C_0_1, ((delete__d1 _lh_delete_LH_C_1_1) _lh_delete_arg2_1))))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d0 _lh_digitEnv_arg1_3 =
  (match _lh_digitEnv_arg1_3 with
    | `Digits(_lh_digitEnv_Digits_0_3, _lh_digitEnv_Digits_1_3) -> 
      _lh_digitEnv_Digits_1_3
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d1 _lh_digitEnv_arg1_2 =
  (match _lh_digitEnv_arg1_2 with
    | `Digits(_lh_digitEnv_Digits_0_2, _lh_digitEnv_Digits_1_2) -> 
      _lh_digitEnv_Digits_1_2
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d2 _lh_digitEnv_arg1_5 =
  (match _lh_digitEnv_arg1_5 with
    | `Digits(_lh_digitEnv_Digits_0_5, _lh_digitEnv_Digits_1_5) -> 
      _lh_digitEnv_Digits_1_5
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d3 _lh_digitEnv_arg1_4 =
  (match _lh_digitEnv_arg1_4 with
    | `Digits(_lh_digitEnv_Digits_0_4, _lh_digitEnv_Digits_1_4) -> 
      _lh_digitEnv_Digits_1_4
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d4 _lh_digitEnv_arg1_0 =
  (match _lh_digitEnv_arg1_0 with
    | `Digits(_lh_digitEnv_Digits_0_0, _lh_digitEnv_Digits_1_0) -> 
      _lh_digitEnv_Digits_1_0
    | _ -> 
      (failwith "error"));;
let rec digitEnv__d5 _lh_digitEnv_arg1_1 =
  (match _lh_digitEnv_arg1_1 with
    | `Digits(_lh_digitEnv_Digits_0_1, _lh_digitEnv_Digits_1_1) -> 
      _lh_digitEnv_Digits_1_1
    | _ -> 
      (failwith "error"));;
let rec digits__d0 _lh_digits_arg1_0 =
  (match _lh_digits_arg1_0 with
    | `Digits(_lh_digits_Digits_0_0, _lh_digits_Digits_1_0) -> 
      _lh_digits_Digits_0_0
    | _ -> 
      (failwith "error"));;
let rec digits__d1 _lh_digits_arg1_1 =
  (match _lh_digits_arg1_1 with
    | `Digits(_lh_digits_Digits_0_1, _lh_digits_Digits_1_1) -> 
      _lh_digits_Digits_0_1
    | _ -> 
      (failwith "error"));;
let rec enumFromTo__d1 a_1 b_0 =
  (if (a_1 <= b_0) then
    (`LH_C(a_1, ((enumFromTo__d1 (a_1 + 1)) b_0)))
  else
    (`LH_N));;
let rec filter__d0 f_3_6 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_4_0, t_4_1) -> 
      (if (f_3_6 h_4_0) then
        (`LH_C(h_4_0, ((filter__d0 f_3_6) t_4_1)))
      else
        ((filter__d0 f_3_6) t_4_1))
    | `LH_N -> 
      (`LH_N));;
let rec foldl__d0 f_2_1 i_5 ls_1_3 =
  (match ls_1_3 with
    | `LH_C(h_1_5, t_1_5) -> 
      (((foldl__d0 f_2_1) ((f_2_1 i_5) h_1_5)) t_1_5)
    | `LH_N -> 
      i_5);;
let rec foldl__d1 f_3_7 i_7 ls_2_0 =
  ((ls_2_0 f_3_7) i_7);;
let rec foldl__d2 f_1_5 i_4 ls_9 =
  ((ls_9 f_1_5) i_4);;
let rec foldr__d0 f_9 i_3 ls_4 =
  (match ls_4 with
    | `LH_C(h_3, t_3) -> 
      ((f_9 h_3) (((foldr__d0 f_9) i_3) t_3))
    | `LH_N -> 
      i_3);;
let rec foldr__d1 f_8 i_2 ls_3 =
  ((ls_3 f_8) i_2);;
let rec fromJust__d0 _lh_fromJust_arg1_0 =
  (_lh_fromJust_arg1_0 99);;
let rec length__d0 ls_2_8 =
  (ls_2_8 99);;
let rec lookup__d0 _lh_lookup_arg1_1 _lh_lookup_arg2_1 =
  (match _lh_lookup_arg2_1 with
    | `LH_N -> 
      (fun _lh_dummy_2_6 -> 
        (failwith "error"))
    | `LH_C(_lh_lookup_LH_C_0_1, _lh_lookup_LH_C_1_1) -> 
      (match _lh_lookup_LH_C_0_1 with
        | `LH_P2(_lh_lookup_LH_P2_0_1, _lh_lookup_LH_P2_1_1) -> 
          (if (_lh_lookup_arg1_1 = _lh_lookup_LH_P2_0_1) then
            (let rec _lh_fromJust_Just_0_0 = _lh_lookup_LH_P2_1_1 in
              (fun _lh_dummy_2_7 -> 
                _lh_fromJust_Just_0_0))
          else
            ((lookup__d0 _lh_lookup_arg1_1) _lh_lookup_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec map__d0 f_1_0 ls_5 =
  (ls_5 f_1_0);;
let rec map__d1_d0 f_4_3 ls_2_3 =
  (ls_2_3 f_4_3);;
let rec map__d1_d1 f_5_1 ls_2_5 =
  (ls_2_5 f_5_1);;
let rec map__d1_d2 f_1 ls_1 =
  (ls_1 f_1);;
let rec map__d1_d3 f_6_3 ls_2_7 =
  (ls_2_7 f_6_3);;
let rec map__d1_d4 f_4_6 ls_2_4 =
  (ls_2_4 f_4_6);;
let rec map__d1_d5 f_1_7 ls_1_1 =
  (ls_1_1 f_1_7);;
let rec map__d1_d6 f_2 ls_2 =
  (ls_2 f_2);;
let rec map__d1_d7 f_1_6 ls_1_0 =
  (ls_1_0 f_1_6);;
let rec map__d1_d8 f_1_1 ls_6 =
  (ls_6 f_1_1);;
let rec map__d1_d9 f_6_4 ls_2_9 =
  (ls_2_9 f_6_4);;
let rec map__d2 f_2_5 ls_1_6 =
  (match ls_1_6 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C((f_2_5 h_3_0), ((map__d2 f_2_5) t_3_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_3 ls_8 =
  (ls_8 f_1_3);;
let rec map__d5 f_6_6 ls_3_0 =
  (ls_3_0 f_6_6);;
let rec map__d6 f_1_2 ls_7 =
  (ls_7 f_1_2);;
let rec map__d7 f_4_2 ls_2_2 =
  (ls_2_2 f_4_2);;
let rec map__d9 f_0 ls_0 =
  (ls_0 f_0);;
let rec mappend__d0 xs_8 ys_1_2 =
  (xs_8 ys_1_2);;
let rec mappend__d1_d0 xs_1_7 ys_5_0 =
  (xs_1_7 ys_5_0);;
let rec mappend__d1_d1 xs_1_3 ys_3_5 =
  (xs_1_3 ys_3_5);;
let rec mappend__d1_d2 xs_2_3 ys_6_1 =
  (xs_2_3 ys_6_1);;
let rec mappend__d1_d3 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d1_d4 xs_1_4 ys_3_6 =
  (xs_1_4 ys_3_6);;
let rec mappend__d1_d5 xs_1_5 ys_3_8 =
  (xs_1_5 ys_3_8);;
let rec mappend__d1_d6 xs_1_2 ys_1_8 =
  (xs_1_2 ys_1_8);;
let rec mappend__d1_d7 xs_9 ys_1_3 =
  (xs_9 ys_1_3);;
let rec mappend__d1_d8 xs_1_9 ys_5_5 =
  (xs_1_9 ys_5_5);;
let rec mappend__d1_d9 xs_6 ys_1_1 =
  (xs_6 ys_1_1);;
let rec mappend__d2 xs_2_2 ys_6_0 =
  (xs_2_2 ys_6_0);;
let rec mappend__d2_d0 xs_1_0 ys_1_4 =
  (xs_1_0 ys_1_4);;
let rec mappend__d2_d1 xs_1_1 ys_1_7 =
  (xs_1_1 ys_1_7);;
let rec mappend__d2_d2 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec mappend__d3 xs_2_4 ys_6_2 =
  (xs_2_4 ys_6_2);;
let rec mappend__d4 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec mappend__d5 xs_3 ys_3 =
  (xs_3 ys_3);;
let rec mappend__d6 xs_2_5 ys_7_2 =
  (xs_2_5 ys_7_2);;
let rec mappend__d7 xs_5 ys_5 =
  (xs_5 ys_5);;
let rec mappend__d8 xs_2_6 ys_8_0 =
  (xs_2_6 ys_8_0);;
let rec rest__d0 _lh_rest_arg1_0 =
  (match _lh_rest_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_rest_LH_C_0_0, _lh_rest_LH_C_1_0) -> 
      _lh_rest_LH_C_1_0
    | _ -> 
      (failwith "error"));;
let rec return__d1 _lh_return_arg1_0 =
  (`StateT((fun s_0 -> 
    (`LH_C((`LH_P2(_lh_return_arg1_0, s_0)), (`LH_N))))));;
let rec reverse_helper__d0 ls_1_8 a_2 =
  (match ls_1_8 with
    | `LH_C(h_3_5, t_3_5) -> 
      ((reverse_helper__d0 t_3_5) (`LH_C(h_3_5, a_2)))
    | `LH_N -> 
      a_2);;
let rec reverse_helper__d1 ls_2_6 a_5 =
  (match ls_2_6 with
    | `LH_C(h_6_6, t_6_7) -> 
      ((reverse_helper__d1 t_6_7) (`LH_C(h_6_6, a_5)))
    | `LH_N -> 
      a_5);;
let rec runStateT__d0 _lh_runStateT_arg1_9 =
  (match _lh_runStateT_arg1_9 with
    | `StateT(_lh_runStateT_StateT_0_3) -> 
      _lh_runStateT_StateT_0_3
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1 _lh_runStateT_arg1_1_3 =
  _lh_runStateT_arg1_1_3;;
let rec runStateT__d1_d0 _lh_runStateT_arg1_2_5 =
  _lh_runStateT_arg1_2_5;;
let rec runStateT__d1_d1 _lh_runStateT_arg1_2_8 =
  _lh_runStateT_arg1_2_8;;
let rec runStateT__d1_d2 _lh_runStateT_arg1_7 =
  (match _lh_runStateT_arg1_7 with
    | `StateT(_lh_runStateT_StateT_0_2) -> 
      _lh_runStateT_StateT_0_2
    | _ -> 
      (failwith "error"));;
let rec runStateT__d1_d3 _lh_runStateT_arg1_2_6 =
  _lh_runStateT_arg1_2_6;;
let rec runStateT__d1_d4 _lh_runStateT_arg1_1_7 =
  _lh_runStateT_arg1_1_7;;
let rec runStateT__d1_d5 _lh_runStateT_arg1_5 =
  _lh_runStateT_arg1_5;;
let rec runStateT__d1_d6 _lh_runStateT_arg1_1_5 =
  _lh_runStateT_arg1_1_5;;
let rec runStateT__d1_d7 _lh_runStateT_arg1_2_0 =
  _lh_runStateT_arg1_2_0;;
let rec runStateT__d1_d8 _lh_runStateT_arg1_1_8 =
  _lh_runStateT_arg1_1_8;;
let rec runStateT__d1_d9 _lh_runStateT_arg1_1_2 =
  _lh_runStateT_arg1_1_2;;
let rec runStateT__d2 _lh_runStateT_arg1_2_7 =
  _lh_runStateT_arg1_2_7;;
let rec runStateT__d2_d0 _lh_runStateT_arg1_1_0 =
  _lh_runStateT_arg1_1_0;;
let rec runStateT__d2_d1 _lh_runStateT_arg1_2_3 =
  _lh_runStateT_arg1_2_3;;
let rec runStateT__d2_d2 _lh_runStateT_arg1_2_1 =
  _lh_runStateT_arg1_2_1;;
let rec runStateT__d2_d3 _lh_runStateT_arg1_2_2 =
  _lh_runStateT_arg1_2_2;;
let rec runStateT__d2_d4 _lh_runStateT_arg1_2_4 =
  _lh_runStateT_arg1_2_4;;
let rec runStateT__d2_d5 _lh_runStateT_arg1_8 =
  _lh_runStateT_arg1_8;;
let rec runStateT__d2_d6 _lh_runStateT_arg1_6 =
  _lh_runStateT_arg1_6;;
let rec runStateT__d2_d7 _lh_runStateT_arg1_1_6 =
  _lh_runStateT_arg1_1_6;;
let rec runStateT__d2_d8 _lh_runStateT_arg1_1 =
  _lh_runStateT_arg1_1;;
let rec runStateT__d3 _lh_runStateT_arg1_0 =
  _lh_runStateT_arg1_0;;
let rec runStateT__d4 _lh_runStateT_arg1_1_1 =
  (match _lh_runStateT_arg1_1_1 with
    | `StateT(_lh_runStateT_StateT_0_6) -> 
      _lh_runStateT_StateT_0_6
    | _ -> 
      (failwith "error"));;
let rec runStateT__d5 _lh_runStateT_arg1_1_9 =
  _lh_runStateT_arg1_1_9;;
let rec runStateT__d6 _lh_runStateT_arg1_3 =
  _lh_runStateT_arg1_3;;
let rec runStateT__d7 _lh_runStateT_arg1_1_4 =
  (match _lh_runStateT_arg1_1_4 with
    | `StateT(_lh_runStateT_StateT_0_1_3) -> 
      _lh_runStateT_StateT_0_1_3
    | _ -> 
      (failwith "error"));;
let rec runStateT__d8 _lh_runStateT_arg1_4 =
  _lh_runStateT_arg1_4;;
let rec runStateT__d9 _lh_runStateT_arg1_2 =
  _lh_runStateT_arg1_2;;
let rec sum__d0 _lh_sum_arg1_1 =
  (_lh_sum_arg1_1 99);;
let rec sum__d1 _lh_sum_arg1_0 =
  (_lh_sum_arg1_0 99);;
let rec bind__d0 _lh_bind_arg1_2 _lh_bind_arg2_2 =
  (`StateT((fun s_3 -> 
    (concat__d2 ((map__d3 (fun as_2 -> 
      (let rec _lh_matchIdent_5 = as_2 in
        (_lh_matchIdent_5 _lh_bind_arg2_2)))) ((runStateT__d2 _lh_bind_arg1_2) s_3))))))
and bind__d1 _lh_bind_arg1_1 _lh_bind_arg2_1 =
  (let rec _lh_runStateT_StateT_0_0 = (fun s_2 -> 
    (concat__d3 ((map__d4 (fun as_1 -> 
      (let rec _lh_matchIdent_3 = as_1 in
        (match _lh_matchIdent_3 with
          | `LH_P2(_lh_bind_LH_P2_0_0, _lh_bind_LH_P2_1_0) -> 
            ((runStateT__d3 (_lh_bind_arg2_1 _lh_bind_LH_P2_0_0)) _lh_bind_LH_P2_1_0)
          | _ -> 
            (failwith "error"))))) ((runStateT__d4 _lh_bind_arg1_1) s_2)))) in
    _lh_runStateT_StateT_0_0)
and bind__d1_d0 _lh_bind_arg1_5 _lh_bind_arg2_7 =
  (let rec _lh_runStateT_StateT_0_8 = (fun s_8 -> 
    (concat__d1_d3 ((map__d1_d4 (fun as_5 -> 
      (let rec _lh_matchIdent_8 = as_5 in
        (_lh_matchIdent_8 _lh_bind_arg2_7)))) ((runStateT__d2_d2 _lh_bind_arg1_5) s_8)))) in
    _lh_runStateT_StateT_0_8)
and bind__d1_d1 _lh_bind_arg1_1_2 _lh_bind_arg2_2_5 =
  (let rec _lh_runStateT_StateT_0_2_8 = (fun s_2_7 -> 
    (concat__d1_d4 ((map__d1_d5 (fun as_1_2 -> 
      (let rec _lh_matchIdent_2_1 = as_1_2 in
        (_lh_matchIdent_2_1 _lh_bind_arg2_2_5)))) ((runStateT__d2_d4 _lh_bind_arg1_1_2) s_2_7)))) in
    _lh_runStateT_StateT_0_2_8)
and bind__d1_d2 _lh_bind_arg1_9 _lh_bind_arg2_1_7 =
  (let rec _lh_runStateT_StateT_0_2_0 = (fun s_1_9 -> 
    (concat__d1_d5 ((map__d1_d6 (fun as_9 -> 
      (let rec _lh_matchIdent_1_3 = as_9 in
        (_lh_matchIdent_1_3 _lh_bind_arg2_1_7)))) ((runStateT__d2_d6 _lh_bind_arg1_9) s_1_9)))) in
    _lh_runStateT_StateT_0_2_0)
and bind__d1_d3 _lh_bind_arg1_3 _lh_bind_arg2_5 =
  (let rec _lh_runStateT_StateT_0_5 = (fun s_6 -> 
    (concat__d1_d6 ((map__d1_d7 (fun as_3 -> 
      (let rec _lh_matchIdent_6 = as_3 in
        (_lh_matchIdent_6 _lh_bind_arg2_5)))) ((runStateT__d2_d8 _lh_bind_arg1_3) s_6)))) in
    _lh_runStateT_StateT_0_5)
and bind__d2 _lh_bind_arg1_4 _lh_bind_arg2_6 =
  (let rec _lh_runStateT_StateT_0_7 = (fun s_7 -> 
    (concat__d4 ((map__d5 (fun as_4 -> 
      (let rec _lh_matchIdent_7 = as_4 in
        (_lh_matchIdent_7 _lh_bind_arg2_6)))) ((runStateT__d6 _lh_bind_arg1_4) s_7)))) in
    _lh_runStateT_StateT_0_7)
and bind__d3 _lh_bind_arg1_6 _lh_bind_arg2_1_2 =
  (let rec _lh_runStateT_StateT_0_1_5 = (fun s_1_4 -> 
    (concat__d5 ((map__d6 (fun as_6 -> 
      (let rec _lh_matchIdent_9 = as_6 in
        (_lh_matchIdent_9 _lh_bind_arg2_1_2)))) ((runStateT__d8 _lh_bind_arg1_6) s_1_4)))) in
    _lh_runStateT_StateT_0_1_5)
and bind__d4 _lh_bind_arg1_0 _lh_bind_arg2_0 =
  (`StateT((fun s_1 -> 
    (concat__d6 ((map__d7 (fun as_0 -> 
      (let rec _lh_matchIdent_2 = as_0 in
        (_lh_matchIdent_2 _lh_bind_arg2_0)))) ((runStateT__d1_d0 _lh_bind_arg1_0) s_1))))))
and bind__d5 _lh_bind_arg1_1_0 _lh_bind_arg2_1_9 =
  (let rec _lh_runStateT_StateT_0_2_2 = (fun s_2_1 -> 
    (concat__d7 ((map__d8 (fun as_1_0 -> 
      (let rec _lh_matchIdent_1_6 = as_1_0 in
        (match _lh_matchIdent_1_6 with
          | `LH_P2(_lh_bind_LH_P2_0_1_0, _lh_bind_LH_P2_1_1_0) -> 
            ((runStateT__d1_d1 (_lh_bind_arg2_1_9 _lh_bind_LH_P2_0_1_0)) _lh_bind_LH_P2_1_1_0)
          | _ -> 
            (failwith "error"))))) ((runStateT__d1_d2 _lh_bind_arg1_1_0) s_2_1)))) in
    _lh_runStateT_StateT_0_2_2)
and bind__d6 _lh_bind_arg1_7 _lh_bind_arg2_1_4 =
  (let rec _lh_runStateT_StateT_0_1_7 = (fun s_1_6 -> 
    (concat__d8 ((map__d9 (fun as_7 -> 
      (let rec _lh_matchIdent_1_1 = as_7 in
        (_lh_matchIdent_1_1 _lh_bind_arg2_1_4)))) ((runStateT__d1_d4 _lh_bind_arg1_7) s_1_6)))) in
    _lh_runStateT_StateT_0_1_7)
and bind__d7 _lh_bind_arg1_1_3 _lh_bind_arg2_2_8 =
  (let rec _lh_runStateT_StateT_0_3_1 = (fun s_3_1 -> 
    (concat__d9 ((map__d1_d0 (fun as_1_3 -> 
      (let rec _lh_matchIdent_2_3 = as_1_3 in
        (_lh_matchIdent_2_3 _lh_bind_arg2_2_8)))) ((runStateT__d1_d6 _lh_bind_arg1_1_3) s_3_1)))) in
    _lh_runStateT_StateT_0_3_1)
and bind__d8 _lh_bind_arg1_8 _lh_bind_arg2_1_5 =
  (let rec _lh_runStateT_StateT_0_1_8 = (fun s_1_7 -> 
    (concat__d1_d0 ((map__d1_d1 (fun as_8 -> 
      (let rec _lh_matchIdent_1_2 = as_8 in
        (_lh_matchIdent_1_2 _lh_bind_arg2_1_5)))) ((runStateT__d1_d8 _lh_bind_arg1_8) s_1_7)))) in
    _lh_runStateT_StateT_0_1_8)
and bind__d9 _lh_bind_arg1_1_1 _lh_bind_arg2_2_3 =
  (let rec _lh_runStateT_StateT_0_2_6 = (fun s_2_5 -> 
    (concat__d1_d1 ((map__d1_d2 (fun as_1_1 -> 
      (let rec _lh_matchIdent_2_0 = as_1_1 in
        (_lh_matchIdent_2_0 _lh_bind_arg2_2_3)))) ((runStateT__d2_d0 _lh_bind_arg1_1_1) s_2_5)))) in
    _lh_runStateT_StateT_0_2_6)
and combine__d0 _lh_combine_arg1_0 _lh_combine_arg2_0 _lh_combine_arg3_0 _lh_combine_arg4_0 =
  (`LH_C((`LH_C(_lh_combine_arg1_0, _lh_combine_arg2_0)), (transpose__d0 (`LH_C(_lh_combine_arg3_0, _lh_combine_arg4_0)))))
and concat__d0 lss_8 =
  (match lss_8 with
    | `LH_C(h_5_2, t_5_3) -> 
      ((mappend__d1 h_5_2) (concat__d0 t_5_3))
    | `LH_N -> 
      (fun ys_4_9 -> 
        ys_4_9))
and enumFromTo__d0 a_3 b_1 _lh_popOutId_0_2 =
  (if (a_3 <= b_1) then
    (let rec t_4_4 = ((enumFromTo__d0 (a_3 + 1)) b_1) in
      (let rec h_4_3 = a_3 in
        (`LH_C((_lh_popOutId_0_2 h_4_3), ((map__d0 _lh_popOutId_0_2) t_4_4)))))
  else
    (`LH_N))
and execStateT__d0 _lh_execStateT_arg1_0 _lh_execStateT_arg2_0 =
  (concat__d1 ((map__d1 (fun x_2 -> 
    (let rec _lh_matchIdent_1_9 = x_2 in
      _lh_matchIdent_1_9))) ((runStateT__d0 _lh_execStateT_arg1_0) _lh_execStateT_arg2_0)))
and get__d0 =
  (let rec _lh_runStateT_StateT_0_1_6 = (fun s_1_5 -> 
    (let rec t_3_8 = (fun f_3_3 _lh_dummy_2_1 f_3_4 _lh_dummy_2_2 -> 
      (`LH_N)) in
      (let rec h_3_8 = (let rec _lh_bind_LH_P2_1_7 = s_1_5 in
        (let rec _lh_bind_LH_P2_0_7 = s_1_5 in
          (fun _lh_bind_arg2_1_3 -> 
            ((runStateT__d1_d3 (_lh_bind_arg2_1_3 _lh_bind_LH_P2_0_7)) _lh_bind_LH_P2_1_7)))) in
        (fun f_3_5 -> 
          (let rec t_3_9 = ((map__d9 f_3_5) t_3_8) in
            (let rec h_3_9 = (f_3_5 h_3_8) in
              (fun _lh_dummy_2_3 -> 
                ((mappend__d1_d2 h_3_9) (concat__d8 t_3_9))))))))) in
    _lh_runStateT_StateT_0_1_6)
and get__d1 =
  (let rec _lh_runStateT_StateT_0_2_1 = (fun s_2_0 -> 
    (let rec t_6_0 = (fun f_4_9 _lh_dummy_3_4 ys_5_4 -> 
      ys_5_4) in
      (let rec h_5_9 = (let rec _lh_bind_LH_P2_1_9 = s_2_0 in
        (let rec _lh_bind_LH_P2_0_9 = s_2_0 in
          (fun _lh_bind_arg2_1_8 -> 
            ((runStateT__d1_d7 (_lh_bind_arg2_1_8 _lh_bind_LH_P2_0_9)) _lh_bind_LH_P2_1_9)))) in
        (fun f_5_0 -> 
          (let rec t_6_1 = ((map__d1_d1 f_5_0) t_6_0) in
            (let rec h_6_0 = (f_5_0 h_5_9) in
              (fun _lh_dummy_3_5 -> 
                ((mappend__d1_d4 h_6_0) (concat__d1_d0 t_6_1))))))))) in
    _lh_runStateT_StateT_0_2_1)
and get__d2 =
  (let rec _lh_runStateT_StateT_0_1_4 = (fun s_1_3 -> 
    (let rec t_3_6 = (fun f_3_0 _lh_dummy_1_8 f_3_1 _lh_dummy_1_9 ys_3_7 -> 
      ys_3_7) in
      (let rec h_3_6 = (let rec _lh_bind_LH_P2_1_6 = s_1_3 in
        (let rec _lh_bind_LH_P2_0_6 = s_1_3 in
          (fun _lh_bind_arg2_1_1 -> 
            ((runStateT__d2_d1 (_lh_bind_arg2_1_1 _lh_bind_LH_P2_0_6)) _lh_bind_LH_P2_1_6)))) in
        (fun f_3_2 -> 
          (let rec t_3_7 = ((map__d1_d4 f_3_2) t_3_6) in
            (let rec h_3_7 = (f_3_2 h_3_6) in
              (fun _lh_dummy_2_0 -> 
                ((mappend__d1_d7 h_3_7) (concat__d1_d3 t_3_7))))))))) in
    _lh_runStateT_StateT_0_1_4)
and get__d3 =
  (let rec _lh_runStateT_StateT_0_2_5 = (fun s_2_4 -> 
    (let rec t_7_3 = (fun f_6_0 _lh_dummy_4_2 ys_6_5 -> 
      ys_6_5) in
      (let rec h_7_2 = (let rec _lh_bind_LH_P2_1_1_3 = s_2_4 in
        (let rec _lh_bind_LH_P2_0_1_3 = s_2_4 in
          (fun _lh_bind_arg2_2_2 -> 
            ((runStateT__d2_d5 (_lh_bind_arg2_2_2 _lh_bind_LH_P2_0_1_3)) _lh_bind_LH_P2_1_1_3)))) in
        (fun f_6_1 -> 
          (let rec t_7_4 = ((map__d1_d6 f_6_1) t_7_3) in
            (let rec h_7_3 = (f_6_1 h_7_2) in
              (fun _lh_dummy_4_3 -> 
                ((mappend__d1_d9 h_7_3) (concat__d1_d5 t_7_4))))))))) in
    _lh_runStateT_StateT_0_2_5)
and guard__d0 _lh_guard_arg1_0 =
  (match _lh_guard_arg1_0 with
    | true -> 
      (let rec _lh_runStateT_StateT_0_1_1 = (fun s_1_1 -> 
        (let rec t_3_1 = (fun f_2_6 _lh_dummy_1_3 ys_3_2 -> 
          ys_3_2) in
          (let rec h_3_1 = (let rec _lh_bind_LH_P2_1_5 = s_1_1 in
            (let rec _lh_bind_LH_P2_0_5 = (`Unit) in
              (fun _lh_bind_arg2_1_0 -> 
                ((runStateT__d7 (_lh_bind_arg2_1_0 _lh_bind_LH_P2_0_5)) _lh_bind_LH_P2_1_5)))) in
            (fun f_2_7 -> 
              (let rec t_3_2 = ((map__d6 f_2_7) t_3_1) in
                (let rec h_3_2 = (f_2_7 h_3_1) in
                  (fun _lh_dummy_1_4 -> 
                    ((mappend__d9 h_3_2) (concat__d5 t_3_2))))))))) in
        _lh_runStateT_StateT_0_1_1)
    | false -> 
      (let rec _lh_runStateT_StateT_0_1_2 = (fun s_1_2 f_2_8 _lh_dummy_1_5 ys_3_3 -> 
        ys_3_3) in
        _lh_runStateT_StateT_0_1_2)
    | _ -> 
      (failwith "error"))
and lift__d0 _lh_lift_arg1_1 =
  (let rec _lh_runStateT_StateT_0_2_7 = (fun s_2_6 -> 
    (concat__d1_d2 ((map__d1_d3 (fun x_3 -> 
      (let rec t_7_5 = (fun ys_6_6 -> 
        ys_6_6) in
        (let rec h_7_4 = (let rec _lh_bind_LH_P2_1_1_4 = s_2_6 in
          (let rec _lh_bind_LH_P2_0_1_4 = x_3 in
            (fun _lh_bind_arg2_2_4 -> 
              ((runStateT__d1_d9 (_lh_bind_arg2_2_4 _lh_bind_LH_P2_0_1_4)) _lh_bind_LH_P2_1_1_4)))) in
          (fun ys_6_7 -> 
            (let rec t_7_6 = ((mappend__d1_d6 t_7_5) ys_6_7) in
              (let rec h_7_5 = h_7_4 in
                (fun f_6_2 -> 
                  (let rec t_7_7 = ((map__d1_d2 f_6_2) t_7_6) in
                    (let rec h_7_6 = (f_6_2 h_7_5) in
                      (fun _lh_dummy_4_4 -> 
                        ((mappend__d1_d5 h_7_6) (concat__d1_d1 t_7_7))))))))))))) _lh_lift_arg1_1))) in
    _lh_runStateT_StateT_0_2_7)
and lift__d1 _lh_lift_arg1_0 =
  (let rec _lh_runStateT_StateT_0_4 = (fun s_5 -> 
    (concat__d1_d7 ((map__d1_d8 (fun x_1 -> 
      (let rec t_1_0 = (fun ys_1_5 -> 
        ys_1_5) in
        (let rec h_1_0 = (let rec _lh_bind_LH_P2_1_2 = s_5 in
          (let rec _lh_bind_LH_P2_0_2 = x_1 in
            (fun _lh_bind_arg2_4 -> 
              ((runStateT__d2_d7 (_lh_bind_arg2_4 _lh_bind_LH_P2_0_2)) _lh_bind_LH_P2_1_2)))) in
          (fun ys_1_6 -> 
            (let rec t_1_1 = ((mappend__d2_d1 t_1_0) ys_1_6) in
              (let rec h_1_1 = h_1_0 in
                (fun f_1_8 -> 
                  (let rec t_1_2 = ((map__d1_d7 f_1_8) t_1_1) in
                    (let rec h_1_2 = (f_1_8 h_1_1) in
                      (fun _lh_dummy_6 -> 
                        ((mappend__d2_d0 h_1_2) (concat__d1_d6 t_1_2))))))))))))) _lh_lift_arg1_0))) in
    _lh_runStateT_StateT_0_4)
and listDiff__d0 =
  (foldl__d1 delete__d0)
and listDiff__d1 =
  (foldl__d2 delete__d1)
and lookup__d1 _lh_lookup_arg1_0 _lh_lookup_arg2_0 =
  (match _lh_lookup_arg2_0 with
    | `LH_N -> 
      (fun _lh_select_arg1_1 -> 
        (permute__d0 _lh_select_arg1_1))
    | `LH_C(_lh_lookup_LH_C_0_0, _lh_lookup_LH_C_1_0) -> 
      (match _lh_lookup_LH_C_0_0 with
        | `LH_P2(_lh_lookup_LH_P2_0_0, _lh_lookup_LH_P2_1_0) -> 
          (if (_lh_lookup_arg1_0 = _lh_lookup_LH_P2_0_0) then
            (let rec _lh_select_Just_0_0 = _lh_lookup_LH_P2_1_0 in
              (fun _lh_select_arg1_2 -> 
                (return__d6 _lh_select_Just_0_0)))
          else
            ((lookup__d1 _lh_lookup_arg1_0) _lh_lookup_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and lookup__d2 _lh_lookup_arg1_2 _lh_lookup_arg2_2 =
  (match _lh_lookup_arg2_2 with
    | `LH_N -> 
      (fun _lh_select_arg1_3 -> 
        (permute__d1 _lh_select_arg1_3))
    | `LH_C(_lh_lookup_LH_C_0_2, _lh_lookup_LH_C_1_2) -> 
      (match _lh_lookup_LH_C_0_2 with
        | `LH_P2(_lh_lookup_LH_P2_0_2, _lh_lookup_LH_P2_1_2) -> 
          (if (_lh_lookup_arg1_2 = _lh_lookup_LH_P2_0_2) then
            (let rec _lh_select_Just_0_1 = _lh_lookup_LH_P2_1_2 in
              (fun _lh_select_arg1_4 -> 
                (return__d8 _lh_select_Just_0_1)))
          else
            ((lookup__d2 _lh_lookup_arg1_2) _lh_lookup_LH_C_1_2))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and mapM__d0 _lh_mapM_arg1_0 _lh_mapM_arg2_0 =
  (((foldr__d0 (fun a_0 r_0 -> 
    ((bind__d4 (_lh_mapM_arg1_0 a_0)) (fun x_0 -> 
      ((bind__d5 r_0) (fun xs_7 -> 
        (return__d0 (let rec _lh_sum_LH_C_1_0 = xs_7 in
          (let rec _lh_sum_LH_C_0_0 = x_0 in
            (fun _lh_dummy_4 -> 
              (_lh_sum_LH_C_0_0 + (sum__d0 _lh_sum_LH_C_1_0)))))))))))) (return__d1 (fun _lh_dummy_5 -> 
    0))) _lh_mapM_arg2_0)
and map__d1 f_6_8 ls_3_1 _lh_popOutId_0_3 =
  (match ls_3_1 with
    | `LH_C(h_8_5, t_8_6) -> 
      (let rec t_8_7 = ((map__d1 f_6_8) t_8_6) in
        (let rec h_8_6 = (f_6_8 h_8_5) in
          ((mappend__d2 h_8_6) (concat__d1 t_8_7))))
    | `LH_N -> 
      (`LH_N))
and map__d4 f_1_9 ls_1_2 _lh_popOutId_0_0 =
  (match ls_1_2 with
    | `LH_C(h_1_3, t_1_3) -> 
      (let rec t_1_4 = ((map__d4 f_1_9) t_1_3) in
        (let rec h_1_4 = (f_1_9 h_1_3) in
          ((mappend__d7 h_1_4) (concat__d3 t_1_4))))
    | `LH_N -> 
      (fun f_2_0 _lh_dummy_9 -> 
        (`LH_N)))
and map__d8 f_2_9 ls_1_7 _lh_popOutId_0_1 =
  (match ls_1_7 with
    | `LH_C(h_3_3, t_3_3) -> 
      (let rec t_3_4 = ((map__d8 f_2_9) t_3_3) in
        (let rec h_3_4 = (f_2_9 h_3_3) in
          ((mappend__d1_d1 h_3_4) (concat__d7 t_3_4))))
    | `LH_N -> 
      (fun ys_3_4 -> 
        ys_3_4))
and mappend__d1 xs_1_6 ys_3_9 =
  (match xs_1_6 with
    | `LH_C(h_4_1, t_4_2) -> 
      (let rec t_4_3 = ((mappend__d1 t_4_2) ys_3_9) in
        (let rec h_4_2 = h_4_1 in
          (fun ys_4_0 -> 
            (`LH_C(h_4_2, ((mappend__d3 t_4_3) ys_4_0))))))
    | `LH_N -> 
      ys_3_9)
and mappend__d2_d3 xs_2_0 ys_5_6 =
  (match xs_2_0 with
    | `LH_C(h_6_1, t_6_2) -> 
      (let rec t_6_3 = ((mappend__d2_d3 t_6_2) ys_5_6) in
        (let rec h_6_2 = h_6_1 in
          (fun ys_5_7 -> 
            (`LH_C(h_6_2, ((mappend__d2_d2 t_6_3) ys_5_7))))))
    | `LH_N -> 
      ys_5_6)
and mappend__d9 xs_1_8 ys_5_1 =
  (match xs_1_8 with
    | `LH_C(h_5_5, t_5_6) -> 
      (let rec t_5_7 = ((mappend__d9 t_5_6) ys_5_1) in
        (let rec h_5_6 = h_5_5 in
          (fun ys_5_2 -> 
            (let rec t_5_8 = ((mappend__d8 t_5_7) ys_5_2) in
              (let rec h_5_7 = h_5_6 in
                (fun ys_5_3 -> 
                  (`LH_C(h_5_7, ((mappend__d6 t_5_8) ys_5_3)))))))))
    | `LH_N -> 
      ys_5_1)
and nub__d0 _lh_nub_arg1_0 =
  (match _lh_nub_arg1_0 with
    | `LH_N -> 
      (fun _lh_dummy_2_4 -> 
        0)
    | `LH_C(_lh_nub_LH_C_0_0, _lh_nub_LH_C_1_0) -> 
      (let rec t_4_0 = (nub__d0 ((filter__d0 (fun y_0 -> 
        (not (_lh_nub_LH_C_0_0 = y_0)))) _lh_nub_LH_C_1_0)) in
        (fun _lh_dummy_2_5 -> 
          (1 + (length__d0 t_4_0))))
    | _ -> 
      (failwith "error"))
and permute__d0 _lh_permute_arg1_2 =
  ((bind__d8 get__d1) (fun st_3 -> 
    ((bind__d9 (let rec xs_2_1 = (digits__d0 st_3) in
      (lift__d0 (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
        (match _lh_listcomp_fun_para_4 with
          | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
            (let rec t_6_4 = (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4) in
              (let rec h_6_3 = (let rec _lh_permute_LH_P2_1_1 = ((listDiff__d0 xs_2_1) (let rec t_6_5 = (fun f_5_2 i_1_0 -> 
                i_1_0) in
                (let rec h_6_4 = _lh_listcomp_fun_ls_h_4 in
                  (fun f_5_3 i_1_1 -> 
                    (((foldl__d1 f_5_3) ((f_5_3 i_1_1) h_6_4)) t_6_5))))) in
                (let rec _lh_permute_LH_P2_0_1 = _lh_listcomp_fun_ls_h_4 in
                  (fun _lh_permute_arg1_3 st_4 -> 
                    ((bind__d7 (put__d0 (`Digits(_lh_permute_LH_P2_1_1, (`LH_C((`LH_P2(_lh_permute_arg1_3, _lh_permute_LH_P2_0_1)), (digitEnv__d3 st_4))))))) (fun _p_4 -> 
                      (return__d5 _lh_permute_LH_P2_0_1)))))) in
                (fun f_5_4 -> 
                  (let rec t_6_6 = ((map__d1_d3 f_5_4) t_6_4) in
                    (let rec h_6_5 = (f_5_4 h_6_3) in
                      (fun _lh_dummy_3_6 -> 
                        ((mappend__d1_d6 h_6_5) (concat__d1_d2 t_6_6))))))))
          | `LH_N -> 
            (fun f_5_5 _lh_dummy_3_7 f_5_6 _lh_dummy_3_8 ys_5_8 -> 
              ys_5_8))) in
        (_lh_listcomp_fun_4 xs_2_1))))) (fun iis_1 -> 
      (let rec _lh_matchIdent_1_8 = iis_1 in
        ((_lh_matchIdent_1_8 _lh_permute_arg1_2) st_3))))))
and permute__d1 _lh_permute_arg1_0 =
  ((bind__d1_d2 get__d3) (fun st_0 -> 
    ((bind__d1_d3 (let rec xs_0 = (digits__d1 st_0) in
      (lift__d1 (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (let rec t_0 = (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0) in
              (let rec h_0 = (let rec _lh_permute_LH_P2_1_0 = ((listDiff__d1 xs_0) (let rec t_1 = (fun f_3 i_0 -> 
                i_0) in
                (let rec h_1 = _lh_listcomp_fun_ls_h_0 in
                  (fun f_4 i_1 -> 
                    (((foldl__d2 f_4) ((f_4 i_1) h_1)) t_1))))) in
                (let rec _lh_permute_LH_P2_0_0 = _lh_listcomp_fun_ls_h_0 in
                  (fun _lh_permute_arg1_1 st_1 -> 
                    ((bind__d1_d1 (put__d1 (`Digits(_lh_permute_LH_P2_1_0, (`LH_C((`LH_P2(_lh_permute_arg1_1, _lh_permute_LH_P2_0_0)), (digitEnv__d5 st_1))))))) (fun _p_0 -> 
                      (return__d7 _lh_permute_LH_P2_0_0)))))) in
                (fun f_5 -> 
                  (let rec t_2 = ((map__d1_d8 f_5) t_0) in
                    (let rec h_2 = (f_5 h_0) in
                      (fun _lh_dummy_0 -> 
                        ((mappend__d2_d1 h_2) (concat__d1_d7 t_2))))))))
          | `LH_N -> 
            (fun f_6 _lh_dummy_1 f_7 _lh_dummy_2 ys_0 -> 
              ys_0))) in
        (_lh_listcomp_fun_0 xs_0))))) (fun iis_0 -> 
      (let rec _lh_matchIdent_1 = iis_0 in
        ((_lh_matchIdent_1 _lh_permute_arg1_0) st_0))))))
and put__d0 _lh_put_arg1_0 =
  (let rec _lh_runStateT_StateT_0_9 = (fun s_9 -> 
    (let rec t_2_2 = (fun f_2_2 _lh_dummy_1_0 ys_2_6 -> 
      ys_2_6) in
      (let rec h_2_2 = (let rec _lh_bind_LH_P2_1_3 = _lh_put_arg1_0 in
        (let rec _lh_bind_LH_P2_0_3 = (`Unit) in
          (fun _lh_bind_arg2_8 -> 
            ((runStateT__d1_d5 (_lh_bind_arg2_8 _lh_bind_LH_P2_0_3)) _lh_bind_LH_P2_1_3)))) in
        (fun f_2_3 -> 
          (let rec t_2_3 = ((map__d1_d0 f_2_3) t_2_2) in
            (let rec h_2_3 = (f_2_3 h_2_2) in
              (fun _lh_dummy_1_1 -> 
                ((mappend__d1_d3 h_2_3) (concat__d9 t_2_3))))))))) in
    _lh_runStateT_StateT_0_9)
and put__d1 _lh_put_arg1_1 =
  (let rec _lh_runStateT_StateT_0_2_3 = (fun s_2_2 -> 
    (let rec t_6_8 = (fun f_5_7 _lh_dummy_3_9 ys_5_9 -> 
      ys_5_9) in
      (let rec h_6_7 = (let rec _lh_bind_LH_P2_1_1_1 = _lh_put_arg1_1 in
        (let rec _lh_bind_LH_P2_0_1_1 = (`Unit) in
          (fun _lh_bind_arg2_2_0 -> 
            ((runStateT__d2_d3 (_lh_bind_arg2_2_0 _lh_bind_LH_P2_0_1_1)) _lh_bind_LH_P2_1_1_1)))) in
        (fun f_5_8 -> 
          (let rec t_6_9 = ((map__d1_d5 f_5_8) t_6_8) in
            (let rec h_6_8 = (f_5_8 h_6_7) in
              (fun _lh_dummy_4_0 -> 
                ((mappend__d1_d8 h_6_8) (concat__d1_d4 t_6_9))))))))) in
    _lh_runStateT_StateT_0_2_3)
and puzzle__d0 _lh_puzzle_arg1_0 _lh_puzzle_arg2_0 =
  (let rec solution_0 = (((solve__d0 (transpose__d0 ((map__d2 reverse__d0) _lh_puzzle_arg1_0))) (reverse__d1 _lh_puzzle_arg2_0)) 0) in
    (let rec answer_0 = (let rec _lh_matchIdent_1_0 = ((execStateT__d0 solution_0) (`Digits(((enumFromTo__d1 0) 9), (`LH_N)))) in
      (match _lh_matchIdent_1_0 with
        | `LH_C(_lh_puzzle_LH_C_0_0, _lh_puzzle_LH_C_1_0) -> 
          _lh_puzzle_LH_C_0_0
        | `LH_N -> 
          (failwith "error")
        | _ -> 
          (failwith "error"))) in
      (let rec env_0 = (digitEnv__d0 answer_0) in
        (let rec look_0 = (fun c_0 -> 
          (fromJust__d0 ((lookup__d0 c_0) env_0))) in
          (let rec expand_0 = (fun ls_2_1 -> 
            (((foldl__d0 (fun a_4 b_2 -> 
              ((a_4 * 10) + (look_0 b_2)))) 0) ls_2_1)) in
            (let rec topVal_0 = (sum__d1 (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
              (match _lh_listcomp_fun_para_1 with
                | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
                  (let rec _lh_sum_LH_C_1_1 = (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1) in
                    (let rec _lh_sum_LH_C_0_1 = (expand_0 _lh_listcomp_fun_ls_h_1) in
                      (fun _lh_dummy_2_8 -> 
                        (_lh_sum_LH_C_0_1 + (sum__d1 _lh_sum_LH_C_1_1)))))
                | `LH_N -> 
                  (fun _lh_dummy_2_9 -> 
                    0))) in
              (_lh_listcomp_fun_1 _lh_puzzle_arg1_0))) in
              (let rec botVal_0 = (expand_0 _lh_puzzle_arg2_0) in
                (if ((length__d0 (nub__d0 ((mappend__d3 (concat__d0 _lh_puzzle_arg1_0)) _lh_puzzle_arg2_0))) > 10) then
                  (failwith "error")
                else
                  (if (topVal_0 <> botVal_0) then
                    (failwith "error")
                  else
                    (unlines__d0 (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
                      (match _lh_listcomp_fun_para_2 with
                        | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
                          (match _lh_listcomp_fun_ls_h_2 with
                            | `LH_P2(_lh_puzzle_LH_P2_0_0, _lh_puzzle_LH_P2_1_0) -> 
                              (let rec t_4_5 = (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2) in
                                (let rec h_4_4 = ((mappend__d4 ((mappend__d5 (let rec t_4_6 = (fun ys_4_1 -> 
                                  ys_4_1) in
                                  (let rec h_4_5 = _lh_puzzle_LH_P2_0_0 in
                                    (fun ys_4_2 -> 
                                      (let rec t_4_7 = ((mappend__d5 t_4_6) ys_4_2) in
                                        (let rec h_4_6 = h_4_5 in
                                          (fun ys_4_3 -> 
                                            (`LH_C(h_4_6, ((mappend__d4 t_4_7) ys_4_3)))))))))) (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (fun ys_4_4 -> 
                                  ys_4_4) in
                                  (let rec h_4_7 = ' ' in
                                    (fun ys_4_5 -> 
                                      (`LH_C(h_4_7, ((mappend__d4 t_5_1) ys_4_5)))))) in
                                  (let rec h_4_8 = '>' in
                                    (fun ys_4_6 -> 
                                      (`LH_C(h_4_8, ((mappend__d4 t_5_0) ys_4_6)))))) in
                                  (let rec h_4_9 = '=' in
                                    (fun ys_4_7 -> 
                                      (`LH_C(h_4_9, ((mappend__d4 t_4_9) ys_4_7)))))) in
                                  (let rec h_5_0 = ' ' in
                                    (fun ys_4_8 -> 
                                      (`LH_C(h_5_0, ((mappend__d4 t_4_8) ys_4_8)))))))) (string_of_int _lh_puzzle_LH_P2_1_0)) in
                                  (fun f_4_0 -> 
                                    (let rec t_5_2 = ((map__d1_d9 f_4_0) t_4_5) in
                                      (let rec h_5_1 = (f_4_0 h_4_4) in
                                        (fun _lh_dummy_3_0 -> 
                                          ((mappend__d2_d2 h_5_1) (concat__d1_d8 t_5_2))))))))
                            | _ -> 
                              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))
                        | `LH_N -> 
                          (fun f_4_1 _lh_dummy_3_1 -> 
                            (`LH_N)))) in
                      (_lh_listcomp_fun_2 (digitEnv__d1 answer_0)))))))))))))
and return__d0 _lh_return_arg1_8 =
  (let rec _lh_runStateT_StateT_0_3_2 = (fun s_3_2 -> 
    (let rec t_8_8 = (fun ys_7_7 -> 
      ys_7_7) in
      (let rec h_8_7 = (`LH_P2(_lh_return_arg1_8, s_3_2)) in
        (fun ys_7_8 -> 
          (let rec t_8_9 = ((mappend__d1_d1 t_8_8) ys_7_8) in
            (let rec h_8_8 = h_8_7 in
              (fun ys_7_9 -> 
                (`LH_C(h_8_8, ((mappend__d1_d0 t_8_9) ys_7_9)))))))))) in
    _lh_runStateT_StateT_0_3_2)
and return__d2 _lh_return_arg1_5 =
  (`StateT((fun s_2_8 -> 
    (`LH_C((let rec _lh_execStateT_LH_P2_1_0 = s_2_8 in
      (let rec t_7_8 = (fun ys_6_8 -> 
        ys_6_8) in
        (let rec h_7_7 = _lh_execStateT_LH_P2_1_0 in
          (fun ys_6_9 -> 
            (`LH_C(h_7_7, ((mappend__d2 t_7_8) ys_6_9))))))), (`LH_N))))))
and return__d3 _lh_return_arg1_3 =
  (let rec _lh_runStateT_StateT_0_1_9 = (fun s_1_8 -> 
    (let rec t_5_4 = (fun f_4_4 _lh_dummy_3_2 -> 
      (`LH_N)) in
      (let rec h_5_3 = (let rec _lh_bind_LH_P2_1_8 = s_1_8 in
        (let rec _lh_bind_LH_P2_0_8 = _lh_return_arg1_3 in
          (fun _lh_bind_arg2_1_6 -> 
            ((runStateT__d1 (_lh_bind_arg2_1_6 _lh_bind_LH_P2_0_8)) _lh_bind_LH_P2_1_8)))) in
        (fun f_4_5 -> 
          (let rec t_5_5 = ((map__d3 f_4_5) t_5_4) in
            (let rec h_5_4 = (f_4_5 h_5_3) in
              (fun _lh_dummy_3_3 -> 
                ((mappend__d6 h_5_4) (concat__d2 t_5_5))))))))) in
    _lh_runStateT_StateT_0_1_9)
and return__d4 _lh_return_arg1_4 =
  (let rec _lh_runStateT_StateT_0_2_4 = (fun s_2_3 -> 
    (let rec t_7_0 = (fun ys_6_3 -> 
      ys_6_3) in
      (let rec h_6_9 = (let rec _lh_bind_LH_P2_1_1_2 = s_2_3 in
        (let rec _lh_bind_LH_P2_0_1_2 = _lh_return_arg1_4 in
          (fun _lh_bind_arg2_2_1 -> 
            ((runStateT__d1 (_lh_bind_arg2_2_1 _lh_bind_LH_P2_0_1_2)) _lh_bind_LH_P2_1_1_2)))) in
        (fun ys_6_4 -> 
          (let rec t_7_1 = ((mappend__d7 t_7_0) ys_6_4) in
            (let rec h_7_0 = h_6_9 in
              (fun f_5_9 -> 
                (let rec t_7_2 = ((map__d3 f_5_9) t_7_1) in
                  (let rec h_7_1 = (f_5_9 h_7_0) in
                    (fun _lh_dummy_4_1 -> 
                      ((mappend__d6 h_7_1) (concat__d2 t_7_2)))))))))))) in
    _lh_runStateT_StateT_0_2_4)
and return__d5 _lh_return_arg1_1 =
  (let rec _lh_runStateT_StateT_0_1 = (fun s_4 -> 
    (let rec t_4 = (fun ys_6 -> 
      ys_6) in
      (let rec h_4 = (let rec _lh_bind_LH_P2_1_1 = s_4 in
        (let rec _lh_bind_LH_P2_0_1 = _lh_return_arg1_1 in
          (fun _lh_bind_arg2_3 -> 
            ((runStateT__d9 (_lh_bind_arg2_3 _lh_bind_LH_P2_0_1)) _lh_bind_LH_P2_1_1)))) in
        (fun ys_7 -> 
          (let rec t_5 = ((mappend__d1_d3 t_4) ys_7) in
            (let rec h_5 = h_4 in
              (fun ys_8 -> 
                (let rec t_6 = ((mappend__d1_d5 t_5) ys_8) in
                  (let rec h_6 = h_5 in
                    (fun ys_9 -> 
                      (let rec t_7 = ((mappend__d1_d4 t_6) ys_9) in
                        (let rec h_7 = h_6 in
                          (fun ys_1_0 -> 
                            (let rec t_8 = ((mappend__d1_d2 t_7) ys_1_0) in
                              (let rec h_8 = h_7 in
                                (fun f_1_4 -> 
                                  (let rec t_9 = ((map__d7 f_1_4) t_8) in
                                    (let rec h_9 = (f_1_4 h_8) in
                                      (fun _lh_dummy_3 -> 
                                        ((mappend__d1_d0 h_9) (concat__d6 t_9))))))))))))))))))))) in
    _lh_runStateT_StateT_0_1)
and return__d6 _lh_return_arg1_6 =
  (let rec _lh_runStateT_StateT_0_2_9 = (fun s_2_9 -> 
    (let rec t_8_0 = (fun ys_7_3 -> 
      ys_7_3) in
      (let rec h_7_9 = (let rec _lh_bind_LH_P2_1_1_5 = s_2_9 in
        (let rec _lh_bind_LH_P2_0_1_5 = _lh_return_arg1_6 in
          (fun _lh_bind_arg2_2_6 -> 
            ((runStateT__d9 (_lh_bind_arg2_2_6 _lh_bind_LH_P2_0_1_5)) _lh_bind_LH_P2_1_1_5)))) in
        (fun ys_7_4 -> 
          (let rec t_8_1 = ((mappend__d1_d2 t_8_0) ys_7_4) in
            (let rec h_8_0 = h_7_9 in
              (fun f_6_5 -> 
                (let rec t_8_2 = ((map__d7 f_6_5) t_8_1) in
                  (let rec h_8_1 = (f_6_5 h_8_0) in
                    (fun _lh_dummy_4_5 -> 
                      ((mappend__d1_d0 h_8_1) (concat__d6 t_8_2)))))))))))) in
    _lh_runStateT_StateT_0_2_9)
and return__d7 _lh_return_arg1_2 =
  (let rec _lh_runStateT_StateT_0_1_0 = (fun s_1_0 -> 
    (let rec t_2_4 = (fun ys_2_7 -> 
      ys_2_7) in
      (let rec h_2_4 = (let rec _lh_bind_LH_P2_1_4 = s_1_0 in
        (let rec _lh_bind_LH_P2_0_4 = _lh_return_arg1_2 in
          (fun _lh_bind_arg2_9 -> 
            ((runStateT__d5 (_lh_bind_arg2_9 _lh_bind_LH_P2_0_4)) _lh_bind_LH_P2_1_4)))) in
        (fun ys_2_8 -> 
          (let rec t_2_5 = ((mappend__d1_d8 t_2_4) ys_2_8) in
            (let rec h_2_5 = h_2_4 in
              (fun ys_2_9 -> 
                (let rec t_2_6 = ((mappend__d2_d0 t_2_5) ys_2_9) in
                  (let rec h_2_6 = h_2_5 in
                    (fun ys_3_0 -> 
                      (let rec t_2_7 = ((mappend__d1_d9 t_2_6) ys_3_0) in
                        (let rec h_2_7 = h_2_6 in
                          (fun ys_3_1 -> 
                            (let rec t_2_8 = ((mappend__d1_d7 t_2_7) ys_3_1) in
                              (let rec h_2_8 = h_2_7 in
                                (fun f_2_4 -> 
                                  (let rec t_2_9 = ((map__d5 f_2_4) t_2_8) in
                                    (let rec h_2_9 = (f_2_4 h_2_8) in
                                      (fun _lh_dummy_1_2 -> 
                                        ((mappend__d8 h_2_9) (concat__d4 t_2_9))))))))))))))))))))) in
    _lh_runStateT_StateT_0_1_0)
and return__d8 _lh_return_arg1_7 =
  (let rec _lh_runStateT_StateT_0_3_0 = (fun s_3_0 -> 
    (let rec t_8_3 = (fun ys_7_5 -> 
      ys_7_5) in
      (let rec h_8_2 = (let rec _lh_bind_LH_P2_1_1_6 = s_3_0 in
        (let rec _lh_bind_LH_P2_0_1_6 = _lh_return_arg1_7 in
          (fun _lh_bind_arg2_2_7 -> 
            ((runStateT__d5 (_lh_bind_arg2_2_7 _lh_bind_LH_P2_0_1_6)) _lh_bind_LH_P2_1_1_6)))) in
        (fun ys_7_6 -> 
          (let rec t_8_4 = ((mappend__d1_d7 t_8_3) ys_7_6) in
            (let rec h_8_3 = h_8_2 in
              (fun f_6_7 -> 
                (let rec t_8_5 = ((map__d5 f_6_7) t_8_4) in
                  (let rec h_8_4 = (f_6_7 h_8_3) in
                    (fun _lh_dummy_4_6 -> 
                      ((mappend__d8 h_8_4) (concat__d4 t_8_5)))))))))))) in
    _lh_runStateT_StateT_0_3_0)
and reverse__d0 ls_1_4 =
  ((reverse_helper__d0 ls_1_4) (`LH_N))
and reverse__d1 ls_1_5 =
  ((reverse_helper__d1 ls_1_5) (`LH_N))
and select__d0 _lh_select_arg1_5 =
  ((bind__d6 get__d0) (fun st_5 -> 
    (let rec _lh_matchIdent_2_2 = ((lookup__d1 _lh_select_arg1_5) (digitEnv__d2 st_5)) in
      (_lh_matchIdent_2_2 _lh_select_arg1_5))))
and select__d1 _lh_select_arg1_0 =
  ((bind__d1_d0 get__d2) (fun st_2 -> 
    (let rec _lh_matchIdent_4 = ((lookup__d2 _lh_select_arg1_0) (digitEnv__d4 st_2)) in
      (_lh_matchIdent_4 _lh_select_arg1_0))))
and solve__d0 _lh_solve_arg1_0 _lh_solve_arg2_0 _lh_solve_arg3_0 =
  (match _lh_solve_arg2_0 with
    | `LH_C(_lh_solve_LH_C_0_0, _lh_solve_LH_C_1_0) -> 
      ((bind__d0 (let rec _lh_matchIdent_1_7 = _lh_solve_arg1_0 in
        (match _lh_matchIdent_1_7 with
          | `LH_N -> 
            (return__d3 _lh_solve_arg3_0)
          | `LH_C(_lh_solve_LH_C_0_1, _lh_solve_LH_C_1_1) -> 
            ((bind__d1 ((mapM__d0 select__d0) _lh_solve_LH_C_0_1)) (fun topNS_0 -> 
              (return__d4 ((sum__d0 topNS_0) + _lh_solve_arg3_0))))
          | _ -> 
            (failwith "error")))) (fun topN_0 -> 
        ((bind__d2 (select__d1 _lh_solve_LH_C_0_0)) (fun botN_0 -> 
          ((bind__d3 (guard__d0 ((topN_0 mod 10) = botN_0))) (fun _s_0 -> 
            (((solve__d0 (rest__d0 _lh_solve_arg1_0)) _lh_solve_LH_C_1_0) (topN_0 / 10))))))))
    | _ -> 
      (match _lh_solve_arg1_0 with
        | `LH_N -> 
          (match _lh_solve_arg2_0 with
            | `LH_N -> 
              (match _lh_solve_arg3_0 with
                | 0 -> 
                  (return__d2 (`Unit))
                | _ -> 
                  (`StateT((fun _p_1 -> 
                    (`LH_N)))))
            | _ -> 
              (`StateT((fun _p_2 -> 
                (`LH_N)))))
        | _ -> 
          (`StateT((fun _p_3 -> 
            (`LH_N))))))
and testCryptarithm2_nofib__d0 _lh_testCryptarithm2_nofib_arg1_0 =
  ((map__d0 (fun i_6 -> 
    (let rec args_0 = (`LH_C((`LH_C('T', (`LH_C('H', (`LH_C('I', (`LH_C('R', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C((`LH_C('T', (`LH_C('W', (`LH_C('E', (`LH_C('L', (`LH_C('V', (`LH_C('E', (`LH_N))))))))))))), (`LH_C(((mappend__d0 (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (fun ys_1_9 -> 
      ys_1_9) in
      (let rec h_1_6 = 'E' in
        (fun ys_2_0 -> 
          (`LH_C(h_1_6, ((mappend__d0 t_2_1) ys_2_0)))))) in
      (let rec h_1_7 = 'V' in
        (fun ys_2_1 -> 
          (`LH_C(h_1_7, ((mappend__d0 t_2_0) ys_2_1)))))) in
      (let rec h_1_8 = 'L' in
        (fun ys_2_2 -> 
          (`LH_C(h_1_8, ((mappend__d0 t_1_9) ys_2_2)))))) in
      (let rec h_1_9 = 'E' in
        (fun ys_2_3 -> 
          (`LH_C(h_1_9, ((mappend__d0 t_1_8) ys_2_3)))))) in
      (let rec h_2_0 = 'W' in
        (fun ys_2_4 -> 
          (`LH_C(h_2_0, ((mappend__d0 t_1_7) ys_2_4)))))) in
      (let rec h_2_1 = 'T' in
        (fun ys_2_5 -> 
          (`LH_C(h_2_1, ((mappend__d0 t_1_6) ys_2_5))))))) (if (i_6 > 999999) then
      (`LH_C('1', (`LH_N)))
    else
      (`LH_N))), (`LH_N))))))))))))) in
      ((puzzle__d0 args_0) (`LH_C('N', (`LH_C('I', (`LH_C('N', (`LH_C('E', (`LH_C('T', (`LH_C('Y', (`LH_N))))))))))))))))) ((enumFromTo__d0 1) _lh_testCryptarithm2_nofib_arg1_0))
and transpose__d0 _lh_transpose_arg1_0 =
  (match _lh_transpose_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_transpose_LH_C_0_0, _lh_transpose_LH_C_1_0) -> 
      (match _lh_transpose_LH_C_0_0 with
        | `LH_N -> 
          (transpose__d0 _lh_transpose_LH_C_1_0)
        | `LH_C(_lh_transpose_LH_C_0_1, _lh_transpose_LH_C_1_1) -> 
          (let rec _lh_matchIdent_1_4 = (unzip__d0 (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
            (match _lh_listcomp_fun_para_3 with
              | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
                (match _lh_listcomp_fun_ls_h_3 with
                  | `LH_C(_lh_transpose_LH_C_0_2, _lh_transpose_LH_C_1_2) -> 
                    (let rec t_5_9 = (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3) in
                      (let rec h_5_8 = (let rec _lh_unzip_LH_P2_1_0 = _lh_transpose_LH_C_1_2 in
                        (let rec _lh_unzip_LH_P2_0_0 = _lh_transpose_LH_C_0_2 in
                          (fun asbs_1 -> 
                            (let rec _lh_matchIdent_1_5 = asbs_1 in
                              (match _lh_matchIdent_1_5 with
                                | `LH_P2(_lh_unzip_LH_P2_0_1, _lh_unzip_LH_P2_1_1) -> 
                                  (`LH_P2((`LH_C(_lh_unzip_LH_P2_0_0, _lh_unzip_LH_P2_0_1)), (`LH_C(_lh_unzip_LH_P2_1_0, _lh_unzip_LH_P2_1_1))))
                                | _ -> 
                                  (failwith "error")))))) in
                        (fun f_4_7 i_8 -> 
                          ((f_4_7 h_5_8) (((foldr__d1 f_4_7) i_8) t_5_9)))))
                  | _ -> 
                    (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3))
              | `LH_N -> 
                (fun f_4_8 i_9 -> 
                  i_9))) in
            (_lh_listcomp_fun_3 _lh_transpose_LH_C_1_0))) in
            (match _lh_matchIdent_1_4 with
              | `LH_P2(_lh_transpose_LH_P2_0_0, _lh_transpose_LH_P2_1_0) -> 
                ((((combine__d0 _lh_transpose_LH_C_0_1) _lh_transpose_LH_P2_0_0) _lh_transpose_LH_C_1_1) _lh_transpose_LH_P2_1_0)
              | _ -> 
                (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and unlines__d0 _lh_unlines_arg1_0 =
  (concat__d1_d8 ((map__d1_d9 (fun l_0 -> 
    ((mappend__d2_d3 l_0) (let rec t_7_9 = (fun ys_7_0 -> 
      ys_7_0) in
      (let rec h_7_8 = 'n' in
        (fun ys_7_1 -> 
          (`LH_C(h_7_8, ((mappend__d2_d2 t_7_9) ys_7_1))))))))) _lh_unlines_arg1_0))
and unzip__d0 _lh_unzip_arg1_0 =
  (((foldr__d1 (fun ab_0 asbs_0 -> 
    (let rec _lh_matchIdent_0 = ab_0 in
      (_lh_matchIdent_0 asbs_0)))) (`LH_P2((`LH_N), (`LH_N)))) _lh_unzip_arg1_0);;
end;;

