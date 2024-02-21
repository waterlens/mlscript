

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_______________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d2_d6 xs_2_4 ys_4_4 =
  (match xs_2_4 with
    | `LH_C(h_3_5, t_3_6) -> 
      (`LH_C(h_3_5, ((mappend_lh__d2_d6 t_3_6) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec bracket_lh__d3 _lh_bracket_arg1_0 _lh_bracket_arg2_0 _lh_bracket_arg3_0 =
  (if (_lh_bracket_arg2_0 <= _lh_bracket_arg1_0) then
    ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('(', (`LH_N)))) _lh_bracket_arg3_0)) (`LH_C(')', (`LH_N))))
  else
    _lh_bracket_arg3_0);;
let rec mappend_lh__d2_d3 xs_1_3 ys_1_9 =
  (match xs_1_3 with
    | `LH_C(h_1_8, t_1_9) -> 
      (`LH_C(h_1_8, ((mappend_lh__d2_d3 t_1_9) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend_lh__d2_d4 xs_2_2 ys_4_2 =
  (xs_2_2 ys_4_2);;
let rec mappend_lh__d2_d5 xs_2_1 ys_3_5 =
  (match xs_2_1 with
    | `LH_C(h_2_9, t_3_0) -> 
      (let rec t_3_1 = ((mappend_lh__d2_d5 t_3_0) ys_3_5) in
        (let rec h_3_0 = h_2_9 in
          (fun ys_3_6 -> 
            (`LH_C(h_3_0, ((mappend_lh__d2_d4 t_3_1) ys_3_6))))))
    | `LH_N -> 
      ys_3_5);;
let rec bracket_lh__d2 _lh_bracket_arg1_1 _lh_bracket_arg2_1 _lh_bracket_arg3_1 =
  (if (_lh_bracket_arg2_1 <= _lh_bracket_arg1_1) then
    ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('(', (`LH_N)))) _lh_bracket_arg3_1)) (`LH_C(')', (`LH_N))))
  else
    _lh_bracket_arg3_1);;
let rec bracket_lh__d1 _lh_bracket_arg1_2 _lh_bracket_arg2_2 _lh_bracket_arg3_2 =
  (if (_lh_bracket_arg2_2 <= _lh_bracket_arg1_2) then
    ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('(', (`LH_N)))) _lh_bracket_arg3_2)) (`LH_C(')', (`LH_N))))
  else
    _lh_bracket_arg3_2);;
let rec mappend_lh__d2_d2 xs_2_5 ys_4_5 =
  (xs_2_5 ys_4_5);;
let rec flatMap_lh__d1 _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend_lh__d2_d6 (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_lh__d1 _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec pp_lh__d1 _lh_pp_arg1_3 =
  ((ppn_lh__d1 0) _lh_pp_arg1_3)
and
ppenv_lh__d2 _lh_ppenv_arg1_1 =
  ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('[', (`LH_N)))) ((flatMap_lh__d1 (fun vt_1 -> 
    (let rec _lh_matchIdent_7 = vt_1 in
      (match _lh_matchIdent_7 with
        | `LH_P2(_lh_ppenv_LH_P2_0_1, _lh_ppenv_LH_P2_1_1) -> 
          ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 _lh_ppenv_LH_P2_0_1) (`LH_C('=', (`LH_N))))) (pp_lh__d1 _lh_ppenv_LH_P2_1_1))) (`LH_C(',', (`LH_C(' ', (`LH_N))))))
        | _ -> 
          (failwith "error"))))) _lh_ppenv_arg1_1))) (`LH_C(']', (`LH_N))))
and
ppn_lh__d1 _lh_ppn_arg1_1 _lh_ppn_arg2_1 =
  (match _lh_ppn_arg2_1 with
    | `Var(_lh_ppn_Var_0_1) -> 
      _lh_ppn_Var_0_1
    | `Con(_lh_ppn_Con_0_1) -> 
      (string_of_int _lh_ppn_Con_0_1)
    | `Incr -> 
      (`LH_C('I', (`LH_C('N', (`LH_C('C', (`LH_C('R', (`LH_N)))))))))
    | `Lam(_lh_ppn_Lam_0_1, _lh_ppn_Lam_1_1) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_1) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d2 (let rec t_3_2 = (fun ys_3_7 -> 
        ys_3_7) in
        (let rec h_3_1 = '@' in
          (fun ys_3_8 -> 
            (`LH_C(h_3_1, ((mappend_lh__d2_d2 t_3_2) ys_3_8))))))) _lh_ppn_Lam_0_1)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) ((ppn_lh__d1 (0 - 1)) _lh_ppn_Lam_1_1)))
    | `Add(_lh_ppn_Add_0_1, _lh_ppn_Add_1_1) -> 
      (((bracket_lh__d2 _lh_ppn_arg1_1) 1) ((mappend_lh__d2_d6 ((mappend_lh__d2_d3 ((ppn_lh__d1 1) _lh_ppn_Add_0_1)) (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_N))))))))) ((ppn_lh__d1 1) _lh_ppn_Add_1_1)))
    | `App(_lh_ppn_App_0_1, _lh_ppn_App_1_1) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_1) 2) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d1 2) _lh_ppn_App_0_1)) (`LH_C(' ', (`LH_N))))) ((ppn_lh__d1 2) _lh_ppn_App_1_1)))
    | `IfZero(_lh_ppn_IfZero_0_1, _lh_ppn_IfZero_1_1, _lh_ppn_IfZero_2_1) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_1) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('I', (`LH_C('F', (`LH_C(' ', (`LH_N)))))))) ((ppn_lh__d1 0) _lh_ppn_IfZero_0_1))) (`LH_C(' ', (`LH_C('T', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh__d1 0) _lh_ppn_IfZero_1_1))) (`LH_C(' ', (`LH_C('E', (`LH_C('L', (`LH_C('S', (`LH_C('E', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh__d1 0) _lh_ppn_IfZero_2_1)))
    | `Thunk(_lh_ppn_Thunk_0_1, _lh_ppn_Thunk_1_1) -> 
      (((bracket_lh__d1 _lh_ppn_arg1_1) 0) ((mappend_lh__d2_d4 ((mappend_lh__d2_d5 ((ppn_lh__d1 3) _lh_ppn_Thunk_0_1)) (let rec t_3_3 = (let rec t_3_4 = (fun ys_3_9 -> 
        ys_3_9) in
        (let rec h_3_2 = ':' in
          (fun ys_4_0 -> 
            (`LH_C(h_3_2, ((mappend_lh__d2_d4 t_3_4) ys_4_0)))))) in
        (let rec h_3_3 = ':' in
          (fun ys_4_1 -> 
            (`LH_C(h_3_3, ((mappend_lh__d2_d4 t_3_3) ys_4_1)))))))) (ppenv_lh__d2 _lh_ppn_Thunk_1_1)))
    | _ -> 
      (failwith "error"));;
let rec ppn_lh__d3 _lh_ppn_arg1_2 _lh_ppn_arg2_2 =
  (match _lh_ppn_arg2_2 with
    | `Var(_lh_ppn_Var_0_2) -> 
      _lh_ppn_Var_0_2
    | `Con(_lh_ppn_Con_0_2) -> 
      (string_of_int _lh_ppn_Con_0_2)
    | `Incr -> 
      (`LH_C('I', (`LH_C('N', (`LH_C('C', (`LH_C('R', (`LH_N)))))))))
    | `Lam(_lh_ppn_Lam_0_2, _lh_ppn_Lam_1_2) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_2) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('@', (`LH_N)))) _lh_ppn_Lam_0_2)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) ((ppn_lh__d3 (0 - 1)) _lh_ppn_Lam_1_2)))
    | `Add(_lh_ppn_Add_0_2, _lh_ppn_Add_1_2) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_2) 1) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d3 1) _lh_ppn_Add_0_2)) (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_N))))))))) ((ppn_lh__d3 1) _lh_ppn_Add_1_2)))
    | `App(_lh_ppn_App_0_2, _lh_ppn_App_1_2) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_2) 2) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d3 2) _lh_ppn_App_0_2)) (`LH_C(' ', (`LH_N))))) ((ppn_lh__d3 2) _lh_ppn_App_1_2)))
    | `IfZero(_lh_ppn_IfZero_0_2, _lh_ppn_IfZero_1_2, _lh_ppn_IfZero_2_2) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_2) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('I', (`LH_C('F', (`LH_C(' ', (`LH_N)))))))) ((ppn_lh__d3 0) _lh_ppn_IfZero_0_2))) (`LH_C(' ', (`LH_C('T', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh__d3 0) _lh_ppn_IfZero_1_2))) (`LH_C(' ', (`LH_C('E', (`LH_C('L', (`LH_C('S', (`LH_C('E', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh__d3 0) _lh_ppn_IfZero_2_2)))
    | `Thunk(_lh_ppn_Thunk_0_2, _lh_ppn_Thunk_1_2) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_2) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d3 3) _lh_ppn_Thunk_0_2)) (`LH_C(':', (`LH_C(':', (`LH_N))))))) (ppenv_lh__d2 _lh_ppn_Thunk_1_2)))
    | _ -> 
      (failwith "error"));;
let rec pp_lh__d3 _lh_pp_arg1_1 =
  ((ppn_lh__d3 0) _lh_pp_arg1_1);;
let rec myRunState_lh__d1 _lh_myRunState_arg1_0 =
  _lh_myRunState_arg1_0;;
let rec mappend_lh__d6 xs_1_6 ys_2_7 =
  (xs_1_6 ys_2_7);;
let rec mappend_lh__d5 xs_1_4 ys_2_0 =
  (match xs_1_4 with
    | `LH_C(h_1_9, t_2_0) -> 
      (let rec t_2_1 = ((mappend_lh__d5 t_2_0) ys_2_0) in
        (let rec h_2_0 = h_1_9 in
          (fun ys_2_1 -> 
            (`LH_C(h_2_0, ((mappend_lh__d6 t_2_1) ys_2_1))))))
    | `LH_N -> 
      ys_2_0);;
let rec mappend_lh__d2_d1 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d2_d1 t_4) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec pp_lh__d8 _lh_pp_arg1_2 =
  ((ppn_lh__d3 0) _lh_pp_arg1_2);;
let rec mappend_lh__d1_d8 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d1_d8 t_7) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_lh__d2_d0 xs_1_9 ys_3_0 =
  (xs_1_9 ys_3_0);;
let rec mappend_lh__d1_d9 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_9, t_9) -> 
      (let rec t_1_0 = ((mappend_lh__d1_d9 t_9) ys_9) in
        (let rec h_1_0 = h_9 in
          (fun ys_1_0 -> 
            (`LH_C(h_1_0, ((mappend_lh__d2_d0 t_1_0) ys_1_0))))))
    | `LH_N -> 
      ys_9);;
let rec mappend_lh__d1_d7 xs_2_3 ys_4_3 =
  (xs_2_3 ys_4_3);;
let rec ppenv_lh__d1 _lh_ppenv_arg1_0 =
  ((mappend_lh__d2_d1 ((mappend_lh__d1_d7 (let rec t_2_2 = (fun ys_2_2 -> 
    ys_2_2) in
    (let rec h_2_1 = '[' in
      (fun ys_2_3 -> 
        (`LH_C(h_2_1, ((mappend_lh__d1_d7 t_2_2) ys_2_3))))))) ((flatMap_lh__d1 (fun vt_0 -> 
    (let rec _lh_matchIdent_3 = vt_0 in
      (match _lh_matchIdent_3 with
        | `LH_P2(_lh_ppenv_LH_P2_0_0, _lh_ppenv_LH_P2_1_0) -> 
          ((mappend_lh__d1_d8 ((mappend_lh__d2_d0 ((mappend_lh__d1_d9 _lh_ppenv_LH_P2_0_0) (let rec t_2_3 = (fun ys_2_4 -> 
            ys_2_4) in
            (let rec h_2_2 = '=' in
              (fun ys_2_5 -> 
                (`LH_C(h_2_2, ((mappend_lh__d2_d0 t_2_3) ys_2_5)))))))) (pp_lh__d8 _lh_ppenv_LH_P2_1_0))) (`LH_C(',', (`LH_C(' ', (`LH_N))))))
        | _ -> 
          (failwith "error"))))) _lh_ppenv_arg1_0))) (`LH_C(']', (`LH_N))));;
let rec eqList_lh__d3 _lh_eqList_arg1_0 _lh_eqList_arg2_0 =
  (match _lh_eqList_arg1_0 with
    | `LH_N -> 
      (match _lh_eqList_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_eqList_LH_C_0_0, _lh_eqList_LH_C_1_0) -> 
      (match _lh_eqList_arg2_0 with
        | `LH_C(_lh_eqList_LH_C_0_1, _lh_eqList_LH_C_1_1) -> 
          (if (_lh_eqList_LH_C_0_0 = _lh_eqList_LH_C_0_1) then
            ((eqList_lh__d3 _lh_eqList_LH_C_1_0) _lh_eqList_LH_C_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lookup_lh__d1 _lh_lookup_arg1_0 _lh_lookup_arg2_0 =
  (match _lh_lookup_arg2_0 with
    | `LH_N -> 
      (fun _lh_myMaybe_arg1_0 _lh_myMaybe_arg2_0 -> 
        (_lh_myMaybe_arg1_0 99))
    | `LH_C(_lh_lookup_LH_C_0_0, _lh_lookup_LH_C_1_0) -> 
      (match _lh_lookup_LH_C_0_0 with
        | `LH_P2(_lh_lookup_LH_P2_0_0, _lh_lookup_LH_P2_1_0) -> 
          (if ((eqList_lh__d3 _lh_lookup_arg1_0) _lh_lookup_LH_P2_0_0) then
            (let rec _lh_myMaybe_Just_0_0 = _lh_lookup_LH_P2_1_0 in
              (fun _lh_myMaybe_arg1_1 _lh_myMaybe_arg2_1 -> 
                (_lh_myMaybe_arg2_1 _lh_myMaybe_Just_0_0)))
          else
            ((lookup_lh__d1 _lh_lookup_arg1_0) _lh_lookup_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec myReturn_lh__d1 _lh_myReturn_arg1_0 =
  (let rec _lh_myRunState_MyState_0_0 = (fun s_0 -> 
    (`LH_P2(s_0, _lh_myReturn_arg1_0))) in
    _lh_myRunState_MyState_0_0);;
let rec myBind_lh__d1 _lh_myBind_arg1_0 _lh_myBind_arg2_0 =
  (let rec _lh_myRunState_MyState_0_1 = (fun s_1 -> 
    (let rec _lh_matchIdent_6 = ((myRunState_lh__d1 _lh_myBind_arg1_0) s_1) in
      (match _lh_matchIdent_6 with
        | `LH_P2(_lh_myBind_LH_P2_0_0, _lh_myBind_LH_P2_1_0) -> 
          ((myRunState_lh__d1 (_lh_myBind_arg2_0 _lh_myBind_LH_P2_1_0)) _lh_myBind_LH_P2_0_0)
        | _ -> 
          (failwith "error")))) in
    _lh_myRunState_MyState_0_1);;
let rec myGet_lh__d1 =
  (let rec _lh_myRunState_MyState_0_2 = (fun s_2 -> 
    (`LH_P2(s_2, s_2))) in
    _lh_myRunState_MyState_0_2);;
let rec myMaybe_lh__d1 _lh_myMaybe_arg1_2 _lh_myMaybe_arg2_2 _lh_myMaybe_arg3_0 =
  ((_lh_myMaybe_arg3_0 _lh_myMaybe_arg1_2) _lh_myMaybe_arg2_2);;
let rec lookupVar_lh__d1 _lh_lookupVar_arg1_0 =
  (let rec lookup2_0 = (fun env_0 -> 
    (((myMaybe_lh__d1 (fun _dummy_0 -> 
      ((failwith "error") ((mappend_lh__d2_d6 (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))) _lh_lookupVar_arg1_0)))) (fun x_0 -> 
      x_0)) ((lookup_lh__d1 _lh_lookupVar_arg1_0) env_0))) in
    ((myBind_lh__d1 myGet_lh__d1) (fun env_1 -> 
      (myReturn_lh__d1 (lookup2_0 env_1)))));;
let rec incr_lh__d1 =
  (myReturn_lh__d1 (`Unit));;
let rec eqList_lh__d1 _lh_eqList_arg1_1 _lh_eqList_arg2_1 =
  (match _lh_eqList_arg1_1 with
    | `LH_N -> 
      (match _lh_eqList_arg2_1 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_eqList_LH_C_0_2, _lh_eqList_LH_C_1_2) -> 
      (match _lh_eqList_arg2_1 with
        | `LH_C(_lh_eqList_LH_C_0_3, _lh_eqList_LH_C_1_3) -> 
          (if (_lh_eqList_LH_C_0_2 = _lh_eqList_LH_C_0_3) then
            ((eqList_lh__d1 _lh_eqList_LH_C_1_2) _lh_eqList_LH_C_1_3)
          else
            false)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqList_lh__d2 _lh_eqList_arg1_2 _lh_eqList_arg2_2 =
  (match _lh_eqList_arg1_2 with
    | `LH_N -> 
      (match _lh_eqList_arg2_2 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_eqList_LH_C_0_4, _lh_eqList_LH_C_1_4) -> 
      (match _lh_eqList_arg2_2 with
        | `LH_C(_lh_eqList_LH_C_0_5, _lh_eqList_LH_C_1_5) -> 
          (if (_lh_eqList_LH_C_0_4 = _lh_eqList_LH_C_0_5) then
            ((eqList_lh__d2 _lh_eqList_LH_C_1_4) _lh_eqList_LH_C_1_5)
          else
            false)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec eqEnv_lh__d1 _lh_eqEnv_arg1_0 _lh_eqEnv_arg2_0 =
  (match _lh_eqEnv_arg1_0 with
    | `LH_N -> 
      (match _lh_eqEnv_arg2_0 with
        | `LH_N -> 
          true
        | _ -> 
          (failwith "error"))
    | `LH_C(_lh_eqEnv_LH_C_0_0, _lh_eqEnv_LH_C_1_0) -> 
      (match _lh_eqEnv_LH_C_0_0 with
        | `LH_P2(_lh_eqEnv_LH_P2_0_0, _lh_eqEnv_LH_P2_1_0) -> 
          (match _lh_eqEnv_arg2_0 with
            | `LH_C(_lh_eqEnv_LH_C_0_1, _lh_eqEnv_LH_C_1_1) -> 
              (match _lh_eqEnv_LH_C_0_1 with
                | `LH_P2(_lh_eqEnv_LH_P2_0_1, _lh_eqEnv_LH_P2_1_1) -> 
                  (if (((eqList_lh__d3 _lh_eqEnv_LH_P2_0_0) _lh_eqEnv_LH_P2_0_1) && ((eqTerm_lh__d1 _lh_eqEnv_LH_P2_1_0) _lh_eqEnv_LH_P2_1_1)) then
                    ((eqEnv_lh__d1 _lh_eqEnv_LH_C_1_0) _lh_eqEnv_LH_C_1_1)
                  else
                    false)
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and
eqTerm_lh__d1 _lh_eqTerm_arg1_0 _lh_eqTerm_arg2_0 =
  (match _lh_eqTerm_arg1_0 with
    | `Var(_lh_eqTerm_Var_0_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Var(_lh_eqTerm_Var_0_1) -> 
          ((eqList_lh__d2 _lh_eqTerm_Var_0_0) _lh_eqTerm_Var_0_1)
        | _ -> 
          (failwith "error"))
    | `Con(_lh_eqTerm_Con_0_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Con(_lh_eqTerm_Con_0_1) -> 
          (_lh_eqTerm_Con_0_0 = _lh_eqTerm_Con_0_1)
        | _ -> 
          (failwith "error"))
    | `Incr -> 
      (match _lh_eqTerm_arg2_0 with
        | `Incr -> 
          true
        | _ -> 
          (failwith "error"))
    | `Add(_lh_eqTerm_Add_0_0, _lh_eqTerm_Add_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Add(_lh_eqTerm_Add_0_1, _lh_eqTerm_Add_1_1) -> 
          (((eqTerm_lh__d1 _lh_eqTerm_Add_0_0) _lh_eqTerm_Add_0_1) && ((eqTerm_lh__d1 _lh_eqTerm_Add_1_0) _lh_eqTerm_Add_1_1))
        | _ -> 
          (failwith "error"))
    | `Lam(_lh_eqTerm_Lam_0_0, _lh_eqTerm_Lam_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Lam(_lh_eqTerm_Lam_0_1, _lh_eqTerm_Lam_1_1) -> 
          (((eqList_lh__d1 _lh_eqTerm_Lam_0_0) _lh_eqTerm_Lam_0_1) && ((eqTerm_lh__d1 _lh_eqTerm_Lam_1_0) _lh_eqTerm_Lam_1_1))
        | _ -> 
          (failwith "error"))
    | `App(_lh_eqTerm_App_0_0, _lh_eqTerm_App_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `App(_lh_eqTerm_App_0_1, _lh_eqTerm_App_1_1) -> 
          (((eqTerm_lh__d1 _lh_eqTerm_App_0_0) _lh_eqTerm_App_0_1) && ((eqTerm_lh__d1 _lh_eqTerm_App_1_0) _lh_eqTerm_App_1_1))
        | _ -> 
          (failwith "error"))
    | `IfZero(_lh_eqTerm_IfZero_0_0, _lh_eqTerm_IfZero_1_0, _lh_eqTerm_IfZero_2_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `IfZero(_lh_eqTerm_IfZero_0_1, _lh_eqTerm_IfZero_1_1, _lh_eqTerm_IfZero_2_1) -> 
          ((((eqTerm_lh__d1 _lh_eqTerm_IfZero_0_0) _lh_eqTerm_IfZero_0_1) && ((eqTerm_lh__d1 _lh_eqTerm_IfZero_1_0) _lh_eqTerm_IfZero_1_1)) && ((eqTerm_lh__d1 _lh_eqTerm_IfZero_2_0) _lh_eqTerm_IfZero_2_1))
        | _ -> 
          (failwith "error"))
    | `Thunk(_lh_eqTerm_Thunk_0_0, _lh_eqTerm_Thunk_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Thunk(_lh_eqTerm_Thunk_0_1, _lh_eqTerm_Thunk_1_1) -> 
          (((eqTerm_lh__d1 _lh_eqTerm_Thunk_0_0) _lh_eqTerm_Thunk_0_1) && ((eqEnv_lh__d1 _lh_eqTerm_Thunk_1_0) _lh_eqTerm_Thunk_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec myEvalState_lh__d1 _lh_myEvalState_arg1_0 _lh_myEvalState_arg2_0 =
  (let rec _lh_matchIdent_1 = ((myRunState_lh__d1 _lh_myEvalState_arg1_0) _lh_myEvalState_arg2_0) in
    (match _lh_matchIdent_1 with
      | `LH_P2(_lh_myEvalState_LH_P2_0_0, _lh_myEvalState_LH_P2_1_0) -> 
        _lh_myEvalState_LH_P2_1_0
      | _ -> 
        (failwith "error")));;
let rec withEnv_lh__d1 _lh_withEnv_arg1_0 _lh_withEnv_arg2_0 =
  (myReturn_lh__d1 ((myEvalState_lh__d1 _lh_withEnv_arg2_0) _lh_withEnv_arg1_0));;
let rec pushVar_lh__d1 _lh_pushVar_arg1_0 _lh_pushVar_arg2_0 _lh_pushVar_arg3_0 =
  ((myBind_lh__d1 myGet_lh__d1) (fun env_3 -> 
    ((withEnv_lh__d1 (`LH_C((`LH_P2(_lh_pushVar_arg1_0, _lh_pushVar_arg2_0)), env_3))) _lh_pushVar_arg3_0)));;
let rec showTerm_lh__d3 _lh_showTerm_arg1_2 =
  (match _lh_showTerm_arg1_2 with
    | `Con(_lh_showTerm_Con_0_2) -> 
      ((mappend_lh__d2_d6 (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_N)))))))))) (string_of_int _lh_showTerm_Con_0_2))
    | _ -> 
      ((failwith "error") (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))));;
let rec apply_lh__d1 _lh_apply_arg1_0 _lh_apply_arg2_0 =
  (match _lh_apply_arg1_0 with
    | `Thunk(_lh_apply_Thunk_0_0, _lh_apply_Thunk_1_0) -> 
      (match _lh_apply_Thunk_0_0 with
        | `Lam(_lh_apply_Lam_0_0, _lh_apply_Lam_1_0) -> 
          ((myBind_lh__d1 myGet_lh__d1) (fun orig_0 -> 
            ((withEnv_lh__d1 _lh_apply_Thunk_1_0) (((pushVar_lh__d1 _lh_apply_Lam_0_0) (`Thunk(_lh_apply_arg2_0, orig_0))) (traverseTerm_lh__d1 _lh_apply_Lam_1_0)))))
        | _ -> 
          ((failwith "error") ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh__d8 _lh_apply_arg1_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh__d8 _lh_apply_arg2_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
    | _ -> 
      ((failwith "error") ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh__d8 _lh_apply_arg1_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh__d8 _lh_apply_arg2_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
and
eval_lh__d1 _lh_eval_arg1_0 =
  (match _lh_eval_arg1_0 with
    | `Var(_lh_eval_Var_0_0) -> 
      ((myBind_lh__d1 myGet_lh__d1) (fun e_0 -> 
        ((myBind_lh__d1 (lookupVar_lh__d1 _lh_eval_Var_0_0)) (fun t_1_5 -> 
          (traverseTerm_lh__d1 t_1_5)))))
    | `Add(_lh_eval_Add_0_0, _lh_eval_Add_1_0) -> 
      ((myBind_lh__d1 (traverseCon_lh__d1 _lh_eval_Add_0_0)) (fun u'_2 -> 
        ((myBind_lh__d1 (traverseCon_lh__d1 _lh_eval_Add_1_0)) (fun v'_1 -> 
          (myReturn_lh__d1 (`Con((u'_2 + v'_1))))))))
    | `Thunk(_lh_eval_Thunk_0_0, _lh_eval_Thunk_1_0) -> 
      ((withEnv_lh__d1 _lh_eval_Thunk_1_0) (traverseTerm_lh__d1 _lh_eval_Thunk_0_0))
    | `Lam(_lh_eval_Lam_0_0, _lh_eval_Lam_1_0) -> 
      ((myBind_lh__d1 myGet_lh__d1) (fun env_2 -> 
        (myReturn_lh__d1 (`Thunk((`Lam(_lh_eval_Lam_0_0, _lh_eval_Lam_1_0)), env_2)))))
    | `App(_lh_eval_App_0_0, _lh_eval_App_1_0) -> 
      ((myBind_lh__d1 (traverseTerm_lh__d1 _lh_eval_App_0_0)) (fun u'_3 -> 
        ((apply_lh__d1 u'_3) _lh_eval_App_1_0)))
    | `IfZero(_lh_eval_IfZero_0_0, _lh_eval_IfZero_1_0, _lh_eval_IfZero_2_0) -> 
      ((myBind_lh__d1 (traverseTerm_lh__d1 _lh_eval_IfZero_0_0)) (fun val_1 -> 
        (if ((eqTerm_lh__d1 val_1) (`Con(0))) then
          (traverseTerm_lh__d1 _lh_eval_IfZero_1_0)
        else
          (traverseTerm_lh__d1 _lh_eval_IfZero_2_0))))
    | `Con(_lh_eval_Con_0_0) -> 
      (myReturn_lh__d1 (`Con(_lh_eval_Con_0_0)))
    | `Incr -> 
      ((myBind_lh__d1 incr_lh__d1) (fun _dummy_2 -> 
        (myReturn_lh__d1 (`Con(0)))))
    | _ -> 
      (failwith "error"))
and
traverseCon_lh__d1 _lh_traverseCon_arg1_0 =
  ((myBind_lh__d1 (traverseTerm_lh__d1 _lh_traverseCon_arg1_0)) (fun t'_0 -> 
    (let rec _lh_matchIdent_2 = t'_0 in
      (match _lh_matchIdent_2 with
        | `Con(_lh_traverseCon_Con_0_0) -> 
          (myReturn_lh__d1 _lh_traverseCon_Con_0_0)
        | _ -> 
          ((failwith "error") ((mappend_lh__d2_d6 (`LH_C('N', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))) (showTerm_lh__d3 t'_0)))))))
and
traverseTerm_lh__d1 _lh_traverseTerm_arg1_0 =
  (eval_lh__d1 _lh_traverseTerm_arg1_0);;
let rec ev_lh__d1 _lh_ev_arg1_0 =
  (let rec envt2_0 = ((myRunState_lh__d1 (traverseTerm_lh__d1 _lh_ev_arg1_0)) (`LH_N)) in
    (let rec _lh_matchIdent_5 = envt2_0 in
      (match _lh_matchIdent_5 with
        | `LH_P2(_lh_ev_LH_P2_0_0, _lh_ev_LH_P2_1_0) -> 
          ((mappend_lh__d6 ((mappend_lh__d5 (pp_lh__d3 _lh_ev_LH_P2_1_0)) (let rec t_2_8 = (let rec t_2_9 = (fun ys_3_2 -> 
            ys_3_2) in
            (let rec h_2_7 = ' ' in
              (fun ys_3_3 -> 
                (`LH_C(h_2_7, ((mappend_lh__d6 t_2_9) ys_3_3)))))) in
            (let rec h_2_8 = ' ' in
              (fun ys_3_4 -> 
                (`LH_C(h_2_8, ((mappend_lh__d6 t_2_8) ys_3_4)))))))) (ppenv_lh__d1 _lh_ev_LH_P2_0_0))
        | _ -> 
          (failwith "error"))));;
let rec nMinus1_lh__d2 =
  (`Add((`Var((`LH_C('n', (`LH_N))))), (`Con((0 - 1)))));;
let rec partialSum0_lh__d2 =
  (`Lam((`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_N))))))), (`Lam((`LH_C('n', (`LH_N))), (`IfZero((`Var((`LH_C('n', (`LH_N))))), (`Con(0)), (`Add((`Var((`LH_C('n', (`LH_N))))), (`App((`Var((`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_N))))))))), nMinus1_lh__d2))))))))));;
let rec lfxx_lh__d4 =
  (`Lam((`LH_C('x', (`LH_N))), (`App((`Var((`LH_C('F', (`LH_N))))), (`App((`Var((`LH_C('x', (`LH_N))))), (`Var((`LH_C('x', (`LH_N)))))))))));;
let rec lfxx_lh__d3 =
  (`Lam((`LH_C('x', (`LH_N))), (`App((`Var((`LH_C('F', (`LH_N))))), (`App((`Var((`LH_C('x', (`LH_N))))), (`Var((`LH_C('x', (`LH_N)))))))))));;
let rec fix_lh__d2 =
  (`Lam((`LH_C('F', (`LH_N))), (`App(lfxx_lh__d3, lfxx_lh__d4))));;
let rec sum0_lh__d2 =
  (`App(fix_lh__d2, partialSum0_lh__d2));;
let rec head_lh__d2 ls_0 =
  (match ls_0 with
    | `LH_C(h_6, t_6) -> 
      h_6
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh__d2 _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mainMonad_lh__d1 _lh_mainMonad_arg1_0 =
  (if (null_lh__d2 _lh_mainMonad_arg1_0) then
    ((failwith "error") (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_C('-', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('-', (`LH_C('u', (`LH_C('p', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    (ev_lh__d1 (`App(sum0_lh__d2, (`Con((head_lh__d2 _lh_mainMonad_arg1_0)))))));;
let rec mappend_lh__d1_d6 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d1_d6 t_3) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_lh__d3 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d3 t_5) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_lh__d8 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d8 t_8) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend_lh__d1_d0 xs_1_0 ys_1_6 =
  (match xs_1_0 with
    | `LH_C(h_1_5, t_1_6) -> 
      (`LH_C(h_1_5, ((mappend_lh__d1_d0 t_1_6) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend_lh__d1_d4 xs_1_5 ys_2_6 =
  (match xs_1_5 with
    | `LH_C(h_2_3, t_2_4) -> 
      (`LH_C(h_2_3, ((mappend_lh__d1_d4 t_2_4) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend_lh__d1_d1 xs_1_7 ys_2_8 =
  (match xs_1_7 with
    | `LH_C(h_2_4, t_2_5) -> 
      (`LH_C(h_2_4, ((mappend_lh__d1_d1 t_2_5) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend_lh__d1_d3 xs_2_0 ys_3_1 =
  (match xs_2_0 with
    | `LH_C(h_2_6, t_2_7) -> 
      (`LH_C(h_2_6, ((mappend_lh__d1_d3 t_2_7) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend_lh__d9 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C(h_0, ((mappend_lh__d9 t_0) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec mappend_lh__d1_d5 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh__d1_d5 t_1) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec pp_lh__d4 _lh_pp_arg1_4 =
  ((ppn_lh__d3 0) _lh_pp_arg1_4);;
let rec mappend_lh__d1_d2 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d1_d2 t_2) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec pp_lh__d5 _lh_pp_arg1_0 =
  ((ppn_lh__d3 0) _lh_pp_arg1_0);;
let rec pp_lh__d7 _lh_pp_arg1_6 =
  ((ppn_lh__d3 0) _lh_pp_arg1_6);;
let rec pp_lh__d6 _lh_pp_arg1_5 =
  ((ppn_lh__d3 0) _lh_pp_arg1_5);;
let rec mappend_lh__d2 xs_1_2 ys_1_8 =
  (match xs_1_2 with
    | `LH_C(h_1_7, t_1_8) -> 
      (`LH_C(h_1_7, ((mappend_lh__d2 t_1_8) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend_lh__d4 xs_1_8 ys_2_9 =
  (match xs_1_8 with
    | `LH_C(h_2_5, t_2_6) -> 
      (`LH_C(h_2_5, ((mappend_lh__d4 t_2_6) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec ppn_lh__d2 _lh_ppn_arg1_0 _lh_ppn_arg2_0 =
  (match _lh_ppn_arg2_0 with
    | `Var(_lh_ppn_Var_0_0) -> 
      _lh_ppn_Var_0_0
    | `Con(_lh_ppn_Con_0_0) -> 
      (string_of_int _lh_ppn_Con_0_0)
    | `Incr -> 
      (`LH_C('I', (`LH_C('N', (`LH_C('C', (`LH_C('R', (`LH_N)))))))))
    | `Lam(_lh_ppn_Lam_0_0, _lh_ppn_Lam_1_0) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_0) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('@', (`LH_N)))) _lh_ppn_Lam_0_0)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) ((ppn_lh__d2 (0 - 1)) _lh_ppn_Lam_1_0)))
    | `Add(_lh_ppn_Add_0_0, _lh_ppn_Add_1_0) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_0) 1) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d2 1) _lh_ppn_Add_0_0)) (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_N))))))))) ((ppn_lh__d2 1) _lh_ppn_Add_1_0)))
    | `App(_lh_ppn_App_0_0, _lh_ppn_App_1_0) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_0) 2) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d2 2) _lh_ppn_App_0_0)) (`LH_C(' ', (`LH_N))))) ((ppn_lh__d2 2) _lh_ppn_App_1_0)))
    | `IfZero(_lh_ppn_IfZero_0_0, _lh_ppn_IfZero_1_0, _lh_ppn_IfZero_2_0) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_0) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 (`LH_C('I', (`LH_C('F', (`LH_C(' ', (`LH_N)))))))) ((ppn_lh__d2 0) _lh_ppn_IfZero_0_0))) (`LH_C(' ', (`LH_C('T', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh__d2 0) _lh_ppn_IfZero_1_0))) (`LH_C(' ', (`LH_C('E', (`LH_C('L', (`LH_C('S', (`LH_C('E', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh__d2 0) _lh_ppn_IfZero_2_0)))
    | `Thunk(_lh_ppn_Thunk_0_0, _lh_ppn_Thunk_1_0) -> 
      (((bracket_lh__d3 _lh_ppn_arg1_0) 0) ((mappend_lh__d2_d6 ((mappend_lh__d2_d6 ((ppn_lh__d2 3) _lh_ppn_Thunk_0_0)) (`LH_C(':', (`LH_C(':', (`LH_N))))))) (ppenv_lh__d2 _lh_ppn_Thunk_1_0)))
    | _ -> 
      (failwith "error"));;
let rec pp_lh__d2 _lh_pp_arg1_7 =
  ((ppn_lh__d2 0) _lh_pp_arg1_7);;
let rec showTerm_lh__d2 _lh_showTerm_arg1_1 =
  (match _lh_showTerm_arg1_1 with
    | `Con(_lh_showTerm_Con_0_1) -> 
      ((mappend_lh__d2_d6 (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_N)))))))))) (string_of_int _lh_showTerm_Con_0_1))
    | _ -> 
      ((failwith "error") (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))));;
let rec mappend_lh__d7 xs_1_1 ys_1_7 =
  (match xs_1_1 with
    | `LH_C(h_1_6, t_1_7) -> 
      (`LH_C(h_1_6, ((mappend_lh__d7 t_1_7) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec simpleApply_lh__d1 _lh_simpleApply_arg1_0 _lh_simpleApply_arg2_0 _lh_simpleApply_arg3_0 =
  (match _lh_simpleApply_arg2_0 with
    | `Thunk(_lh_simpleApply_Thunk_0_0, _lh_simpleApply_Thunk_1_0) -> 
      (match _lh_simpleApply_Thunk_0_0 with
        | `Lam(_lh_simpleApply_Lam_0_0, _lh_simpleApply_Lam_1_0) -> 
          ((simpleEval_lh__d1 (`LH_C((`LH_P2(_lh_simpleApply_Lam_0_0, (`Thunk(_lh_simpleApply_arg3_0, _lh_simpleApply_arg1_0)))), _lh_simpleApply_Thunk_1_0))) _lh_simpleApply_Lam_1_0)
        | _ -> 
          ((failwith "error") ((mappend_lh__d1_d4 ((mappend_lh__d1_d0 ((mappend_lh__d1_d2 ((mappend_lh__d1_d5 (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh__d6 _lh_simpleApply_arg2_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh__d7 _lh_simpleApply_arg3_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
    | _ -> 
      ((failwith "error") ((mappend_lh__d8 ((mappend_lh__d9 ((mappend_lh__d1_d3 ((mappend_lh__d1_d1 (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh__d4 _lh_simpleApply_arg2_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh__d5 _lh_simpleApply_arg3_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
and
simpleEvalCon_lh__d1 _lh_simpleEvalCon_arg1_1 _lh_simpleEvalCon_arg2_1 =
  (let rec e'_1 = ((simpleEval_lh__d1 _lh_simpleEvalCon_arg1_1) _lh_simpleEvalCon_arg2_1) in
    (let rec _lh_matchIdent_4 = e'_1 in
      (match _lh_matchIdent_4 with
        | `Con(_lh_simpleEvalCon_Con_0_1) -> 
          _lh_simpleEvalCon_Con_0_1
        | _ -> 
          ((failwith "error") ((mappend_lh__d7 (`LH_C('N', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))) (showTerm_lh__d2 e'_1))))))
and
simpleEvalCon_lh__d2 _lh_simpleEvalCon_arg1_0 _lh_simpleEvalCon_arg2_0 =
  (let rec e'_0 = ((simpleEval_lh__d1 _lh_simpleEvalCon_arg1_0) _lh_simpleEvalCon_arg2_0) in
    (let rec _lh_matchIdent_0 = e'_0 in
      (match _lh_matchIdent_0 with
        | `Con(_lh_simpleEvalCon_Con_0_0) -> 
          _lh_simpleEvalCon_Con_0_0
        | _ -> 
          ((failwith "error") ((mappend_lh__d1_d6 (`LH_C('N', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))) (showTerm_lh__d3 e'_0))))))
and
simpleEval_lh__d1 _lh_simpleEval_arg1_0 _lh_simpleEval_arg2_0 =
  (match _lh_simpleEval_arg2_0 with
    | `Var(_lh_simpleEval_Var_0_0) -> 
      ((simpleEval_lh__d1 _lh_simpleEval_arg1_0) (((myMaybe_lh__d1 (fun _dummy_1 -> 
        ((failwith "error") ((mappend_lh__d3 (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))) _lh_simpleEval_Var_0_0)))) (fun x_1 -> 
        x_1)) ((lookup_lh__d1 _lh_simpleEval_Var_0_0) _lh_simpleEval_arg1_0)))
    | `Con(_lh_simpleEval_Con_0_0) -> 
      (`Con(_lh_simpleEval_Con_0_0))
    | `Incr -> 
      (`Con(0))
    | `Add(_lh_simpleEval_Add_0_0, _lh_simpleEval_Add_1_0) -> 
      (let rec addCons_0 = (fun _lh_addCons_arg1_0 _lh_addCons_arg2_0 -> 
        (match _lh_addCons_arg1_0 with
          | `Con(_lh_addCons_Con_0_0) -> 
            (match _lh_addCons_arg2_0 with
              | `Con(_lh_addCons_Con_0_1) -> 
                (`Con((_lh_addCons_Con_0_0 + _lh_addCons_Con_0_1)))
              | _ -> 
                ((failwith "error") ((mappend_lh__d2 (`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('d', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (pp_lh__d2 _lh_addCons_arg2_0))))
          | _ -> 
            (match _lh_addCons_arg2_0 with
              | `Con(_lh_addCons_Con_0_2) -> 
                ((failwith "error") ((mappend_lh__d4 (`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('d', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (pp_lh__d1 _lh_addCons_arg1_0)))
              | _ -> 
                (failwith "error")))) in
        (let rec u'_0 = ((simpleEvalCon_lh__d2 _lh_simpleEval_arg1_0) _lh_simpleEval_Add_0_0) in
          (let rec v'_0 = ((simpleEvalCon_lh__d1 _lh_simpleEval_arg1_0) _lh_simpleEval_Add_1_0) in
            (`Con((u'_0 + v'_0))))))
    | `Lam(_lh_simpleEval_Lam_0_0, _lh_simpleEval_Lam_1_0) -> 
      (`Thunk((`Lam(_lh_simpleEval_Lam_0_0, _lh_simpleEval_Lam_1_0)), _lh_simpleEval_arg1_0))
    | `App(_lh_simpleEval_App_0_0, _lh_simpleEval_App_1_0) -> 
      (let rec u'_1 = ((simpleEval_lh__d1 _lh_simpleEval_arg1_0) _lh_simpleEval_App_0_0) in
        (((simpleApply_lh__d1 _lh_simpleEval_arg1_0) u'_1) _lh_simpleEval_App_1_0))
    | `IfZero(_lh_simpleEval_IfZero_0_0, _lh_simpleEval_IfZero_1_0, _lh_simpleEval_IfZero_2_0) -> 
      (let rec val_0 = ((simpleEval_lh__d1 _lh_simpleEval_arg1_0) _lh_simpleEval_IfZero_0_0) in
        (if ((eqTerm_lh__d1 val_0) (`Con(0))) then
          ((simpleEval_lh__d1 _lh_simpleEval_arg1_0) _lh_simpleEval_IfZero_1_0)
        else
          ((simpleEval_lh__d1 _lh_simpleEval_arg1_0) _lh_simpleEval_IfZero_2_0)))
    | `Thunk(_lh_simpleEval_Thunk_0_0, _lh_simpleEval_Thunk_1_0) -> 
      ((simpleEval_lh__d1 _lh_simpleEval_Thunk_1_0) _lh_simpleEval_Thunk_0_0)
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1 xs_6 ys_6 =
  (xs_6 ys_6);;
let rec showTerm_lh__d1 _lh_showTerm_arg1_0 =
  (match _lh_showTerm_arg1_0 with
    | `Con(_lh_showTerm_Con_0_0) -> 
      ((mappend_lh__d1 (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (fun ys_1_1 -> 
        ys_1_1) in
        (let rec h_1_1 = ' ' in
          (fun ys_1_2 -> 
            (`LH_C(h_1_1, ((mappend_lh__d1 t_1_4) ys_1_2)))))) in
        (let rec h_1_2 = 'n' in
          (fun ys_1_3 -> 
            (`LH_C(h_1_2, ((mappend_lh__d1 t_1_3) ys_1_3)))))) in
        (let rec h_1_3 = 'o' in
          (fun ys_1_4 -> 
            (`LH_C(h_1_3, ((mappend_lh__d1 t_1_2) ys_1_4)))))) in
        (let rec h_1_4 = 'C' in
          (fun ys_1_5 -> 
            (`LH_C(h_1_4, ((mappend_lh__d1 t_1_1) ys_1_5))))))) (string_of_int _lh_showTerm_Con_0_0))
    | _ -> 
      ((failwith "error") (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))));;
let rec lfxx_lh__d1 =
  (`Lam((`LH_C('x', (`LH_N))), (`App((`Var((`LH_C('F', (`LH_N))))), (`App((`Var((`LH_C('x', (`LH_N))))), (`Var((`LH_C('x', (`LH_N)))))))))));;
let rec lfxx_lh__d2 =
  (`Lam((`LH_C('x', (`LH_N))), (`App((`Var((`LH_C('F', (`LH_N))))), (`App((`Var((`LH_C('x', (`LH_N))))), (`Var((`LH_C('x', (`LH_N)))))))))));;
let rec fix_lh__d1 =
  (`Lam((`LH_C('F', (`LH_N))), (`App(lfxx_lh__d1, lfxx_lh__d2))));;
let rec nMinus1_lh__d1 =
  (`Add((`Var((`LH_C('n', (`LH_N))))), (`Con((0 - 1)))));;
let rec partialSum0_lh__d1 =
  (`Lam((`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_N))))))), (`Lam((`LH_C('n', (`LH_N))), (`IfZero((`Var((`LH_C('n', (`LH_N))))), (`Con(0)), (`Add((`Var((`LH_C('n', (`LH_N))))), (`App((`Var((`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_N))))))))), nMinus1_lh__d1))))))))));;
let rec sum0_lh__d1 =
  (`App(fix_lh__d1, partialSum0_lh__d1));;
let rec null_lh__d1 _lh_null_arg1_1 =
  (match _lh_null_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_1, _lh_null_LH_C_1_1) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec head_lh__d1 ls_1 =
  (match ls_1 with
    | `LH_C(h_3_4, t_3_5) -> 
      h_3_4
    | `LH_N -> 
      (failwith "error"));;
let rec mainSimple_lh__d1 _lh_mainSimple_arg1_0 =
  (if (null_lh__d1 _lh_mainSimple_arg1_0) then
    ((failwith "error") (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_C('-', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('-', (`LH_C('u', (`LH_C('p', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    (showTerm_lh__d1 ((simpleEval_lh__d1 (`LH_N)) (`App(sum0_lh__d1, (`Con((head_lh__d1 _lh_mainSimple_arg1_0))))))));;
let rec testLambda_nofib_lh__d1 _lh_testLambda_nofib_arg1_0 =
  (`LH_P2((mainSimple_lh__d1 (`LH_C(_lh_testLambda_nofib_arg1_0, (`LH_N)))), (mainMonad_lh__d1 (`LH_C(_lh_testLambda_nofib_arg1_0, (`LH_N))))));;
let run () = 1 + (Obj.magic ((testLambda_nofib_lh__d1 80)));
end;;

