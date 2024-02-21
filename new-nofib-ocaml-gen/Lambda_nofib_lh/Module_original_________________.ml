
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_1, t_1) -> 
      (`LH_C(h_1, ((mappend_lh t_1) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec showTerm_lh _lh_showTerm_arg1_0 =
  (match _lh_showTerm_arg1_0 with
    | `Con(_lh_showTerm_Con_0_0) -> 
      ((mappend_lh (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(' ', (`LH_N)))))))))) (string_of_int _lh_showTerm_Con_0_0))
    | _ -> 
      ((failwith "error") (`LH_C('u', (`LH_C('n', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('e', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('d', (`LH_N)))))))))))))))))))))))))))));;
let rec lfxx_lh =
  (`Lam((`LH_C('x', (`LH_N))), (`App((`Var((`LH_C('F', (`LH_N))))), (`App((`Var((`LH_C('x', (`LH_N))))), (`Var((`LH_C('x', (`LH_N)))))))))));;
let rec fix_lh =
  (`Lam((`LH_C('F', (`LH_N))), (`App(lfxx_lh, lfxx_lh))));;
let rec nMinus1_lh =
  (`Add((`Var((`LH_C('n', (`LH_N))))), (`Con((0 - 1)))));;
let rec partialSum0_lh =
  (`Lam((`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_N))))))), (`Lam((`LH_C('n', (`LH_N))), (`IfZero((`Var((`LH_C('n', (`LH_N))))), (`Con(0)), (`Add((`Var((`LH_C('n', (`LH_N))))), (`App((`Var((`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_N))))))))), nMinus1_lh))))))))));;
let rec sum0_lh =
  (`App(fix_lh, partialSum0_lh));;
let rec bracket_lh _lh_bracket_arg1_0 _lh_bracket_arg2_0 _lh_bracket_arg3_0 =
  (if (_lh_bracket_arg2_0 <= _lh_bracket_arg1_0) then
    ((mappend_lh ((mappend_lh (`LH_C('(', (`LH_N)))) _lh_bracket_arg3_0)) (`LH_C(')', (`LH_N))))
  else
    _lh_bracket_arg3_0);;
let rec flatMap_lh _lh_flatMap_arg1_0 _lh_flatMap_arg2_0 =
  (match _lh_flatMap_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_flatMap_LH_C_0_0, _lh_flatMap_LH_C_1_0) -> 
      ((mappend_lh (_lh_flatMap_arg1_0 _lh_flatMap_LH_C_0_0)) ((flatMap_lh _lh_flatMap_arg1_0) _lh_flatMap_LH_C_1_0))
    | _ -> 
      (failwith "error"));;
let rec pp_lh _lh_pp_arg1_0 =
  ((ppn_lh 0) _lh_pp_arg1_0)
and
ppenv_lh _lh_ppenv_arg1_0 =
  ((mappend_lh ((mappend_lh (`LH_C('[', (`LH_N)))) ((flatMap_lh (fun vt_0 -> 
    (let rec _lh_matchIdent_2 = vt_0 in
      (match _lh_matchIdent_2 with
        | `LH_P2(_lh_ppenv_LH_P2_0_0, _lh_ppenv_LH_P2_1_0) -> 
          ((mappend_lh ((mappend_lh ((mappend_lh _lh_ppenv_LH_P2_0_0) (`LH_C('=', (`LH_N))))) (pp_lh _lh_ppenv_LH_P2_1_0))) (`LH_C(',', (`LH_C(' ', (`LH_N))))))
        | _ -> 
          (failwith "error"))))) _lh_ppenv_arg1_0))) (`LH_C(']', (`LH_N))))
and
ppn_lh _lh_ppn_arg1_0 _lh_ppn_arg2_0 =
  (match _lh_ppn_arg2_0 with
    | `Var(_lh_ppn_Var_0_0) -> 
      _lh_ppn_Var_0_0
    | `Con(_lh_ppn_Con_0_0) -> 
      (string_of_int _lh_ppn_Con_0_0)
    | `Incr -> 
      (`LH_C('I', (`LH_C('N', (`LH_C('C', (`LH_C('R', (`LH_N)))))))))
    | `Lam(_lh_ppn_Lam_0_0, _lh_ppn_Lam_1_0) -> 
      (((bracket_lh _lh_ppn_arg1_0) 0) ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('@', (`LH_N)))) _lh_ppn_Lam_0_0)) (`LH_C('.', (`LH_C(' ', (`LH_N))))))) ((ppn_lh (0 - 1)) _lh_ppn_Lam_1_0)))
    | `Add(_lh_ppn_Add_0_0, _lh_ppn_Add_1_0) -> 
      (((bracket_lh _lh_ppn_arg1_0) 1) ((mappend_lh ((mappend_lh ((ppn_lh 1) _lh_ppn_Add_0_0)) (`LH_C(' ', (`LH_C('+', (`LH_C(' ', (`LH_N))))))))) ((ppn_lh 1) _lh_ppn_Add_1_0)))
    | `App(_lh_ppn_App_0_0, _lh_ppn_App_1_0) -> 
      (((bracket_lh _lh_ppn_arg1_0) 2) ((mappend_lh ((mappend_lh ((ppn_lh 2) _lh_ppn_App_0_0)) (`LH_C(' ', (`LH_N))))) ((ppn_lh 2) _lh_ppn_App_1_0)))
    | `IfZero(_lh_ppn_IfZero_0_0, _lh_ppn_IfZero_1_0, _lh_ppn_IfZero_2_0) -> 
      (((bracket_lh _lh_ppn_arg1_0) 0) ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('I', (`LH_C('F', (`LH_C(' ', (`LH_N)))))))) ((ppn_lh 0) _lh_ppn_IfZero_0_0))) (`LH_C(' ', (`LH_C('T', (`LH_C('H', (`LH_C('E', (`LH_C('N', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh 0) _lh_ppn_IfZero_1_0))) (`LH_C(' ', (`LH_C('E', (`LH_C('L', (`LH_C('S', (`LH_C('E', (`LH_C(' ', (`LH_N))))))))))))))) ((ppn_lh 0) _lh_ppn_IfZero_2_0)))
    | `Thunk(_lh_ppn_Thunk_0_0, _lh_ppn_Thunk_1_0) -> 
      (((bracket_lh _lh_ppn_arg1_0) 0) ((mappend_lh ((mappend_lh ((ppn_lh 3) _lh_ppn_Thunk_0_0)) (`LH_C(':', (`LH_C(':', (`LH_N))))))) (ppenv_lh _lh_ppn_Thunk_1_0)))
    | _ -> 
      (failwith "error"));;
let rec eqList_lh _lh_eqList_arg1_0 _lh_eqList_arg2_0 =
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
            ((eqList_lh _lh_eqList_LH_C_1_0) _lh_eqList_LH_C_1_1)
          else
            false)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lookup_lh _lh_lookup_arg1_0 _lh_lookup_arg2_0 =
  (match _lh_lookup_arg2_0 with
    | `LH_N -> 
      (`Nothing)
    | `LH_C(_lh_lookup_LH_C_0_0, _lh_lookup_LH_C_1_0) -> 
      (match _lh_lookup_LH_C_0_0 with
        | `LH_P2(_lh_lookup_LH_P2_0_0, _lh_lookup_LH_P2_1_0) -> 
          (if ((eqList_lh _lh_lookup_arg1_0) _lh_lookup_LH_P2_0_0) then
            (`Just(_lh_lookup_LH_P2_1_0))
          else
            ((lookup_lh _lh_lookup_arg1_0) _lh_lookup_LH_C_1_0))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec myMaybe_lh _lh_myMaybe_arg1_0 _lh_myMaybe_arg2_0 _lh_myMaybe_arg3_0 =
  (match _lh_myMaybe_arg3_0 with
    | `Nothing -> 
      (_lh_myMaybe_arg1_0 99)
    | `Just(_lh_myMaybe_Just_0_0) -> 
      (_lh_myMaybe_arg2_0 _lh_myMaybe_Just_0_0)
    | _ -> 
      (failwith "error"));;
let rec eqEnv_lh _lh_eqEnv_arg1_0 _lh_eqEnv_arg2_0 =
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
                  (if (((eqList_lh _lh_eqEnv_LH_P2_0_0) _lh_eqEnv_LH_P2_0_1) && ((eqTerm_lh _lh_eqEnv_LH_P2_1_0) _lh_eqEnv_LH_P2_1_1)) then
                    ((eqEnv_lh _lh_eqEnv_LH_C_1_0) _lh_eqEnv_LH_C_1_1)
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
eqTerm_lh _lh_eqTerm_arg1_0 _lh_eqTerm_arg2_0 =
  (match _lh_eqTerm_arg1_0 with
    | `Var(_lh_eqTerm_Var_0_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Var(_lh_eqTerm_Var_0_1) -> 
          ((eqList_lh _lh_eqTerm_Var_0_0) _lh_eqTerm_Var_0_1)
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
          (((eqTerm_lh _lh_eqTerm_Add_0_0) _lh_eqTerm_Add_0_1) && ((eqTerm_lh _lh_eqTerm_Add_1_0) _lh_eqTerm_Add_1_1))
        | _ -> 
          (failwith "error"))
    | `Lam(_lh_eqTerm_Lam_0_0, _lh_eqTerm_Lam_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Lam(_lh_eqTerm_Lam_0_1, _lh_eqTerm_Lam_1_1) -> 
          (((eqList_lh _lh_eqTerm_Lam_0_0) _lh_eqTerm_Lam_0_1) && ((eqTerm_lh _lh_eqTerm_Lam_1_0) _lh_eqTerm_Lam_1_1))
        | _ -> 
          (failwith "error"))
    | `App(_lh_eqTerm_App_0_0, _lh_eqTerm_App_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `App(_lh_eqTerm_App_0_1, _lh_eqTerm_App_1_1) -> 
          (((eqTerm_lh _lh_eqTerm_App_0_0) _lh_eqTerm_App_0_1) && ((eqTerm_lh _lh_eqTerm_App_1_0) _lh_eqTerm_App_1_1))
        | _ -> 
          (failwith "error"))
    | `IfZero(_lh_eqTerm_IfZero_0_0, _lh_eqTerm_IfZero_1_0, _lh_eqTerm_IfZero_2_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `IfZero(_lh_eqTerm_IfZero_0_1, _lh_eqTerm_IfZero_1_1, _lh_eqTerm_IfZero_2_1) -> 
          ((((eqTerm_lh _lh_eqTerm_IfZero_0_0) _lh_eqTerm_IfZero_0_1) && ((eqTerm_lh _lh_eqTerm_IfZero_1_0) _lh_eqTerm_IfZero_1_1)) && ((eqTerm_lh _lh_eqTerm_IfZero_2_0) _lh_eqTerm_IfZero_2_1))
        | _ -> 
          (failwith "error"))
    | `Thunk(_lh_eqTerm_Thunk_0_0, _lh_eqTerm_Thunk_1_0) -> 
      (match _lh_eqTerm_arg2_0 with
        | `Thunk(_lh_eqTerm_Thunk_0_1, _lh_eqTerm_Thunk_1_1) -> 
          (((eqTerm_lh _lh_eqTerm_Thunk_0_0) _lh_eqTerm_Thunk_0_1) && ((eqEnv_lh _lh_eqTerm_Thunk_1_0) _lh_eqTerm_Thunk_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec simpleApply_lh _lh_simpleApply_arg1_0 _lh_simpleApply_arg2_0 _lh_simpleApply_arg3_0 =
  (match _lh_simpleApply_arg2_0 with
    | `Thunk(_lh_simpleApply_Thunk_0_0, _lh_simpleApply_Thunk_1_0) -> 
      (match _lh_simpleApply_Thunk_0_0 with
        | `Lam(_lh_simpleApply_Lam_0_0, _lh_simpleApply_Lam_1_0) -> 
          ((simpleEval_lh (`LH_C((`LH_P2(_lh_simpleApply_Lam_0_0, (`Thunk(_lh_simpleApply_arg3_0, _lh_simpleApply_arg1_0)))), _lh_simpleApply_Thunk_1_0))) _lh_simpleApply_Lam_1_0)
        | _ -> 
          ((failwith "error") ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh _lh_simpleApply_arg2_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh _lh_simpleApply_arg3_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
    | _ -> 
      ((failwith "error") ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh _lh_simpleApply_arg2_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh _lh_simpleApply_arg3_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
and
simpleEvalCon_lh _lh_simpleEvalCon_arg1_0 _lh_simpleEvalCon_arg2_0 =
  (let rec e'_0 = ((simpleEval_lh _lh_simpleEvalCon_arg1_0) _lh_simpleEvalCon_arg2_0) in
    (let rec _lh_matchIdent_0 = e'_0 in
      (match _lh_matchIdent_0 with
        | `Con(_lh_simpleEvalCon_Con_0_0) -> 
          _lh_simpleEvalCon_Con_0_0
        | _ -> 
          ((failwith "error") ((mappend_lh (`LH_C('N', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))) (showTerm_lh e'_0))))))
and
simpleEval_lh _lh_simpleEval_arg1_0 _lh_simpleEval_arg2_0 =
  (match _lh_simpleEval_arg2_0 with
    | `Var(_lh_simpleEval_Var_0_0) -> 
      ((simpleEval_lh _lh_simpleEval_arg1_0) (((myMaybe_lh (fun _dummy_2 -> 
        ((failwith "error") ((mappend_lh (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))) _lh_simpleEval_Var_0_0)))) (fun x_1 -> 
        x_1)) ((lookup_lh _lh_simpleEval_Var_0_0) _lh_simpleEval_arg1_0)))
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
                ((failwith "error") ((mappend_lh (`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('d', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (pp_lh _lh_addCons_arg2_0))))
          | _ -> 
            (match _lh_addCons_arg2_0 with
              | `Con(_lh_addCons_Con_0_2) -> 
                ((failwith "error") ((mappend_lh (`LH_C('t', (`LH_C('y', (`LH_C('p', (`LH_C('e', (`LH_C(' ', (`LH_C('e', (`LH_C('r', (`LH_C('r', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('i', (`LH_C('n', (`LH_C(' ', (`LH_C('f', (`LH_C('i', (`LH_C('r', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C('r', (`LH_C('g', (`LH_C(' ', (`LH_C('o', (`LH_C('f', (`LH_C(' ', (`LH_C('A', (`LH_C('d', (`LH_C('d', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (pp_lh _lh_addCons_arg1_0)))
              | _ -> 
                (failwith "error")))) in
        (let rec u'_2 = ((simpleEvalCon_lh _lh_simpleEval_arg1_0) _lh_simpleEval_Add_0_0) in
          (let rec v'_1 = ((simpleEvalCon_lh _lh_simpleEval_arg1_0) _lh_simpleEval_Add_1_0) in
            (`Con((u'_2 + v'_1))))))
    | `Lam(_lh_simpleEval_Lam_0_0, _lh_simpleEval_Lam_1_0) -> 
      (`Thunk((`Lam(_lh_simpleEval_Lam_0_0, _lh_simpleEval_Lam_1_0)), _lh_simpleEval_arg1_0))
    | `App(_lh_simpleEval_App_0_0, _lh_simpleEval_App_1_0) -> 
      (let rec u'_3 = ((simpleEval_lh _lh_simpleEval_arg1_0) _lh_simpleEval_App_0_0) in
        (((simpleApply_lh _lh_simpleEval_arg1_0) u'_3) _lh_simpleEval_App_1_0))
    | `IfZero(_lh_simpleEval_IfZero_0_0, _lh_simpleEval_IfZero_1_0, _lh_simpleEval_IfZero_2_0) -> 
      (let rec val_1 = ((simpleEval_lh _lh_simpleEval_arg1_0) _lh_simpleEval_IfZero_0_0) in
        (if ((eqTerm_lh val_1) (`Con(0))) then
          ((simpleEval_lh _lh_simpleEval_arg1_0) _lh_simpleEval_IfZero_1_0)
        else
          ((simpleEval_lh _lh_simpleEval_arg1_0) _lh_simpleEval_IfZero_2_0)))
    | `Thunk(_lh_simpleEval_Thunk_0_0, _lh_simpleEval_Thunk_1_0) -> 
      ((simpleEval_lh _lh_simpleEval_Thunk_1_0) _lh_simpleEval_Thunk_0_0)
    | _ -> 
      (failwith "error"));;
let rec head_lh ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      h_0
    | `LH_N -> 
      (failwith "error"));;
let rec null_lh _lh_null_arg1_0 =
  (match _lh_null_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_null_LH_C_0_0, _lh_null_LH_C_1_0) -> 
      false
    | _ -> 
      (failwith "error"));;
let rec mainSimple_lh _lh_mainSimple_arg1_0 =
  (if (null_lh _lh_mainSimple_arg1_0) then
    ((failwith "error") (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_C('-', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('-', (`LH_C('u', (`LH_C('p', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    (showTerm_lh ((simpleEval_lh (`LH_N)) (`App(sum0_lh, (`Con((head_lh _lh_mainSimple_arg1_0))))))));;
let rec myRunState_lh _lh_myRunState_arg1_0 =
  (match _lh_myRunState_arg1_0 with
    | `MyState(_lh_myRunState_MyState_0_0) -> 
      _lh_myRunState_MyState_0_0
    | _ -> 
      (failwith "error"));;
let rec myReturn_lh _lh_myReturn_arg1_0 =
  (`MyState((fun s_2 -> 
    (`LH_P2(s_2, _lh_myReturn_arg1_0)))));;
let rec incr_lh =
  (myReturn_lh (`Unit));;
let rec myGet_lh =
  (`MyState((fun s_0 -> 
    (`LH_P2(s_0, s_0)))));;
let rec myBind_lh _lh_myBind_arg1_0 _lh_myBind_arg2_0 =
  (`MyState((fun s_1 -> 
    (let rec _lh_matchIdent_4 = ((myRunState_lh _lh_myBind_arg1_0) s_1) in
      (match _lh_matchIdent_4 with
        | `LH_P2(_lh_myBind_LH_P2_0_0, _lh_myBind_LH_P2_1_0) -> 
          ((myRunState_lh (_lh_myBind_arg2_0 _lh_myBind_LH_P2_1_0)) _lh_myBind_LH_P2_0_0)
        | _ -> 
          (failwith "error"))))));;
let rec lookupVar_lh _lh_lookupVar_arg1_0 =
  (let rec lookup2_0 = (fun env_1 -> 
    (((myMaybe_lh (fun _dummy_1 -> 
      ((failwith "error") ((mappend_lh (`LH_C('u', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('f', (`LH_C('i', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))) _lh_lookupVar_arg1_0)))) (fun x_0 -> 
      x_0)) ((lookup_lh _lh_lookupVar_arg1_0) env_1))) in
    ((myBind_lh myGet_lh) (fun env_2 -> 
      (myReturn_lh (lookup2_0 env_2)))));;
let rec myEvalState_lh _lh_myEvalState_arg1_0 _lh_myEvalState_arg2_0 =
  (let rec _lh_matchIdent_1 = ((myRunState_lh _lh_myEvalState_arg1_0) _lh_myEvalState_arg2_0) in
    (match _lh_matchIdent_1 with
      | `LH_P2(_lh_myEvalState_LH_P2_0_0, _lh_myEvalState_LH_P2_1_0) -> 
        _lh_myEvalState_LH_P2_1_0
      | _ -> 
        (failwith "error")));;
let rec withEnv_lh _lh_withEnv_arg1_0 _lh_withEnv_arg2_0 =
  (myReturn_lh ((myEvalState_lh _lh_withEnv_arg2_0) _lh_withEnv_arg1_0));;
let rec pushVar_lh _lh_pushVar_arg1_0 _lh_pushVar_arg2_0 _lh_pushVar_arg3_0 =
  ((myBind_lh myGet_lh) (fun env_3 -> 
    ((withEnv_lh (`LH_C((`LH_P2(_lh_pushVar_arg1_0, _lh_pushVar_arg2_0)), env_3))) _lh_pushVar_arg3_0)));;
let rec apply_lh _lh_apply_arg1_0 _lh_apply_arg2_0 =
  (match _lh_apply_arg1_0 with
    | `Thunk(_lh_apply_Thunk_0_0, _lh_apply_Thunk_1_0) -> 
      (match _lh_apply_Thunk_0_0 with
        | `Lam(_lh_apply_Lam_0_0, _lh_apply_Lam_1_0) -> 
          ((myBind_lh myGet_lh) (fun orig_0 -> 
            ((withEnv_lh _lh_apply_Thunk_1_0) (((pushVar_lh _lh_apply_Lam_0_0) (`Thunk(_lh_apply_arg2_0, orig_0))) (traverseTerm_lh _lh_apply_Lam_1_0)))))
        | _ -> 
          ((failwith "error") ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh _lh_apply_arg1_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh _lh_apply_arg2_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
    | _ -> 
      ((failwith "error") ((mappend_lh ((mappend_lh ((mappend_lh ((mappend_lh (`LH_C('b', (`LH_C('a', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('c', (`LH_C('a', (`LH_C('t', (`LH_C('i', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))) (pp_lh _lh_apply_arg1_0))) (`LH_C(' ', (`LH_C(' ', (`LH_C('[', (`LH_C(' ', (`LH_N))))))))))) (pp_lh _lh_apply_arg2_0))) (`LH_C(' ', (`LH_C(']', (`LH_C('.', (`LH_N))))))))))
and
eval_lh _lh_eval_arg1_0 =
  (match _lh_eval_arg1_0 with
    | `Var(_lh_eval_Var_0_0) -> 
      ((myBind_lh myGet_lh) (fun e_0 -> 
        ((myBind_lh (lookupVar_lh _lh_eval_Var_0_0)) (fun t_2 -> 
          (traverseTerm_lh t_2)))))
    | `Add(_lh_eval_Add_0_0, _lh_eval_Add_1_0) -> 
      ((myBind_lh (traverseCon_lh _lh_eval_Add_0_0)) (fun u'_0 -> 
        ((myBind_lh (traverseCon_lh _lh_eval_Add_1_0)) (fun v'_0 -> 
          (myReturn_lh (`Con((u'_0 + v'_0))))))))
    | `Thunk(_lh_eval_Thunk_0_0, _lh_eval_Thunk_1_0) -> 
      ((withEnv_lh _lh_eval_Thunk_1_0) (traverseTerm_lh _lh_eval_Thunk_0_0))
    | `Lam(_lh_eval_Lam_0_0, _lh_eval_Lam_1_0) -> 
      ((myBind_lh myGet_lh) (fun env_0 -> 
        (myReturn_lh (`Thunk((`Lam(_lh_eval_Lam_0_0, _lh_eval_Lam_1_0)), env_0)))))
    | `App(_lh_eval_App_0_0, _lh_eval_App_1_0) -> 
      ((myBind_lh (traverseTerm_lh _lh_eval_App_0_0)) (fun u'_1 -> 
        ((apply_lh u'_1) _lh_eval_App_1_0)))
    | `IfZero(_lh_eval_IfZero_0_0, _lh_eval_IfZero_1_0, _lh_eval_IfZero_2_0) -> 
      ((myBind_lh (traverseTerm_lh _lh_eval_IfZero_0_0)) (fun val_0 -> 
        (if ((eqTerm_lh val_0) (`Con(0))) then
          (traverseTerm_lh _lh_eval_IfZero_1_0)
        else
          (traverseTerm_lh _lh_eval_IfZero_2_0))))
    | `Con(_lh_eval_Con_0_0) -> 
      (myReturn_lh (`Con(_lh_eval_Con_0_0)))
    | `Incr -> 
      ((myBind_lh incr_lh) (fun _dummy_0 -> 
        (myReturn_lh (`Con(0)))))
    | _ -> 
      (failwith "error"))
and
traverseCon_lh _lh_traverseCon_arg1_0 =
  ((myBind_lh (traverseTerm_lh _lh_traverseCon_arg1_0)) (fun t'_0 -> 
    (let rec _lh_matchIdent_5 = t'_0 in
      (match _lh_matchIdent_5 with
        | `Con(_lh_traverseCon_Con_0_0) -> 
          (myReturn_lh _lh_traverseCon_Con_0_0)
        | _ -> 
          ((failwith "error") ((mappend_lh (`LH_C('N', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('C', (`LH_C('o', (`LH_C('n', (`LH_C(':', (`LH_C(' ', (`LH_N)))))))))))))))))))))))) (showTerm_lh t'_0)))))))
and
traverseTerm_lh _lh_traverseTerm_arg1_0 =
  (eval_lh _lh_traverseTerm_arg1_0);;
let rec ev_lh _lh_ev_arg1_0 =
  (let rec envt2_0 = ((myRunState_lh (traverseTerm_lh _lh_ev_arg1_0)) (`LH_N)) in
    (let rec _lh_matchIdent_3 = envt2_0 in
      (match _lh_matchIdent_3 with
        | `LH_P2(_lh_ev_LH_P2_0_0, _lh_ev_LH_P2_1_0) -> 
          ((mappend_lh ((mappend_lh (pp_lh _lh_ev_LH_P2_1_0)) (`LH_C(' ', (`LH_C(' ', (`LH_N))))))) (ppenv_lh _lh_ev_LH_P2_0_0))
        | _ -> 
          (failwith "error"))));;
let rec mainMonad_lh _lh_mainMonad_arg1_0 =
  (if (null_lh _lh_mainMonad_arg1_0) then
    ((failwith "error") (`LH_C('A', (`LH_C('r', (`LH_C('g', (`LH_C('s', (`LH_C(':', (`LH_C(' ', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_C('-', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('-', (`LH_C('u', (`LH_C('p', (`LH_C('-', (`LH_C('t', (`LH_C('o', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))
  else
    (ev_lh (`App(sum0_lh, (`Con((head_lh _lh_mainMonad_arg1_0)))))));;
let rec testLambda_nofib_lh _lh_testLambda_nofib_arg1_0 =
  (`LH_P2((mainSimple_lh (`LH_C(_lh_testLambda_nofib_arg1_0, (`LH_N)))), (mainMonad_lh (`LH_C(_lh_testLambda_nofib_arg1_0, (`LH_N))))));;
let run () = 1 + (Obj.magic ((testLambda_nofib_lh 80)));
end;;

