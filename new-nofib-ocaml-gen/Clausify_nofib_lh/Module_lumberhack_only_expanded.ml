

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec map_lh f_0 ls_0 =
  (match ls_0 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_0 h_0), ((map_lh f_0) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec copy_lh _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_lh (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec splitHelper_lh _lh_splitHelper_arg1_0 _lh_splitHelper_arg2_0 =
  (match _lh_splitHelper_arg1_0 with
    | `Con(_lh_splitHelper_Con_0_0, _lh_splitHelper_Con_1_0) -> 
      ((splitHelper_lh _lh_splitHelper_Con_0_0) ((splitHelper_lh _lh_splitHelper_Con_1_0) _lh_splitHelper_arg2_0))
    | _ -> 
      (`LH_C(_lh_splitHelper_arg1_0, _lh_splitHelper_arg2_0)));;
let rec split_lh _lh_split_arg1_0 =
  ((splitHelper_lh _lh_split_arg1_0) (`LH_N));;
let rec mappend_lh xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh t_3) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec concat_lh lss_0 =
  (match lss_0 with
    | `LH_C(h_4, t_4) -> 
      ((mappend_lh h_4) (concat_lh t_4))
    | `LH_N -> 
      (`LH_N));;
let rec elim_lh _lh_elim_arg1_0 =
  (match _lh_elim_arg1_0 with
    | `Sym(_lh_elim_Sym_0_0) -> 
      (`Sym(_lh_elim_Sym_0_0))
    | `Not(_lh_elim_Not_0_0) -> 
      (`Not((elim_lh _lh_elim_Not_0_0)))
    | `Dis(_lh_elim_Dis_0_0, _lh_elim_Dis_1_0) -> 
      (`Dis((elim_lh _lh_elim_Dis_0_0), (elim_lh _lh_elim_Dis_1_0)))
    | `Con(_lh_elim_Con_0_0, _lh_elim_Con_1_0) -> 
      (`Con((elim_lh _lh_elim_Con_0_0), (elim_lh _lh_elim_Con_1_0)))
    | `Imp(_lh_elim_Imp_0_0, _lh_elim_Imp_1_0) -> 
      (`Dis((`Not((elim_lh _lh_elim_Imp_0_0))), (elim_lh _lh_elim_Imp_1_0)))
    | `Eqv(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0) -> 
      (`Con((elim_lh (`Imp(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0))), (elim_lh (`Imp(_lh_elim_Eqv_1_0, _lh_elim_Eqv_0_0)))))
    | _ -> 
      (failwith "error"));;
let rec opri_lh _lh_opri_arg1_0 =
  (match _lh_opri_arg1_0 with
    | '(' -> 
      0
    | '=' -> 
      1
    | '>' -> 
      2
    | '|' -> 
      3
    | '&' -> 
      4
    | '~' -> 
      5
    | _ -> 
      (failwith "error"));;
let rec spri_lh _lh_spri_arg1_0 =
  (match _lh_spri_arg1_0 with
    | `LH_C(_lh_spri_LH_C_0_0, _lh_spri_LH_C_1_0) -> 
      (match _lh_spri_LH_C_0_0 with
        | `Ast(_lh_spri_Ast_0_0) -> 
          (match _lh_spri_LH_C_1_0 with
            | `LH_C(_lh_spri_LH_C_0_1, _lh_spri_LH_C_1_1) -> 
              (match _lh_spri_LH_C_0_1 with
                | `Lex(_lh_spri_Lex_0_0) -> 
                  (opri_lh _lh_spri_Lex_0_0)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0);;
let rec red_lh _lh_red_arg1_0 =
  (match _lh_red_arg1_0 with
    | `LH_C(_lh_red_LH_C_0_0, _lh_red_LH_C_1_0) -> 
      (match _lh_red_LH_C_0_0 with
        | `Ast(_lh_red_Ast_0_0) -> 
          (match _lh_red_LH_C_1_0 with
            | `LH_C(_lh_red_LH_C_0_1, _lh_red_LH_C_1_1) -> 
              (match _lh_red_LH_C_0_1 with
                | `Lex(_lh_red_Lex_0_0) -> 
                  (match _lh_red_Lex_0_0 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_2, _lh_red_LH_C_1_2) -> 
                          (match _lh_red_LH_C_0_2 with
                            | `Ast(_lh_red_Ast_0_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_2))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_3, _lh_red_LH_C_1_3) -> 
                          (match _lh_red_LH_C_0_3 with
                            | `Ast(_lh_red_Ast_0_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_2, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_3))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_4, _lh_red_LH_C_1_4) -> 
                          (match _lh_red_LH_C_0_4 with
                            | `Ast(_lh_red_Ast_0_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_3, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_5, _lh_red_LH_C_1_5) -> 
                          (match _lh_red_LH_C_0_5 with
                            | `Ast(_lh_red_Ast_0_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_4, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_0)))), _lh_red_LH_C_1_1))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec while_lh _lh_while_arg1_0 _lh_while_arg2_0 _lh_while_arg3_0 =
  (if (_lh_while_arg1_0 _lh_while_arg3_0) then
    (((while_lh _lh_while_arg1_0) _lh_while_arg2_0) (_lh_while_arg2_0 _lh_while_arg3_0))
  else
    _lh_while_arg3_0);;
let rec redstar_lh _lh_redstar_arg1_0 =
  (((while_lh (fun _lh_funcomp_x_0 -> 
    (0 <> (spri_lh _lh_funcomp_x_0)))) red_lh) _lh_redstar_arg1_0);;
let rec parseHelper_lh _lh_parseHelper_arg1_0 _lh_parseHelper_arg2_0 =
  (match _lh_parseHelper_arg1_0 with
    | `LH_N -> 
      (redstar_lh _lh_parseHelper_arg2_0)
    | `LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0) -> 
      (match _lh_parseHelper_LH_C_0_0 with
        | ' ' -> 
          ((parseHelper_lh _lh_parseHelper_LH_C_1_0) _lh_parseHelper_arg2_0)
        | '(' -> 
          ((parseHelper_lh _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_0)))
        | ')' -> 
          (let rec _lh_matchIdent_1 = (redstar_lh _lh_parseHelper_arg2_0) in
            (match _lh_matchIdent_1 with
              | `LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_1) -> 
                (match _lh_parseHelper_LH_C_1_1 with
                  | `LH_C(_lh_parseHelper_LH_C_0_2, _lh_parseHelper_LH_C_1_2) -> 
                    (match _lh_parseHelper_LH_C_0_2 with
                      | `Lex(_lh_parseHelper_Lex_0_0) -> 
                        (match _lh_parseHelper_Lex_0_0 with
                          | '(' -> 
                            ((parseHelper_lh _lh_parseHelper_LH_C_1_0) (`LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_2)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_0) && (_lh_parseHelper_LH_C_0_0 <= 'z')) then
            ((parseHelper_lh _lh_parseHelper_LH_C_1_0) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_0)))), _lh_parseHelper_arg2_0)))
          else
            (if ((spri_lh _lh_parseHelper_arg2_0) > (opri_lh _lh_parseHelper_LH_C_0_0)) then
              ((parseHelper_lh (`LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0))) (red_lh _lh_parseHelper_arg2_0))
            else
              ((parseHelper_lh _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_0)), _lh_parseHelper_arg2_0))))))
    | _ -> 
      (failwith "error"));;
let rec parse_lh _lh_parse_arg1_0 =
  (let rec _lh_matchIdent_0 = ((parseHelper_lh _lh_parse_arg1_0) (`LH_N)) in
    (match _lh_matchIdent_0 with
      | `LH_C(_lh_parse_LH_C_0_0, _lh_parse_LH_C_1_0) -> 
        (match _lh_parse_LH_C_0_0 with
          | `Ast(_lh_parse_Ast_0_0) -> 
            (match _lh_parse_LH_C_1_0 with
              | `LH_N -> 
                _lh_parse_Ast_0_0
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")));;
let rec negin_lh _lh_negin_arg1_0 =
  (match _lh_negin_arg1_0 with
    | `Not(_lh_negin_Not_0_0) -> 
      (match _lh_negin_Not_0_0 with
        | `Not(_lh_negin_Not_0_1) -> 
          (negin_lh _lh_negin_Not_0_1)
        | `Con(_lh_negin_Con_0_0, _lh_negin_Con_1_0) -> 
          (`Dis((negin_lh (`Not(_lh_negin_Con_0_0))), (negin_lh (`Not(_lh_negin_Con_1_0)))))
        | `Dis(_lh_negin_Dis_0_0, _lh_negin_Dis_1_0) -> 
          (`Con((negin_lh (`Not(_lh_negin_Dis_0_0))), (negin_lh (`Not(_lh_negin_Dis_1_0)))))
        | _ -> 
          _lh_negin_arg1_0)
    | `Dis(_lh_negin_Dis_0_1, _lh_negin_Dis_1_1) -> 
      (`Dis((negin_lh _lh_negin_Dis_0_1), (negin_lh _lh_negin_Dis_1_1)))
    | `Con(_lh_negin_Con_0_1, _lh_negin_Con_1_1) -> 
      (`Con((negin_lh _lh_negin_Con_0_1), (negin_lh _lh_negin_Con_1_1)))
    | _ -> 
      _lh_negin_arg1_0);;
let rec spaces_lh _lh_spaces_arg1_0 =
  ((copy_lh _lh_spaces_arg1_0) ' ');;
let rec length_lh ls_2 =
  (match ls_2 with
    | `LH_C(h_2, t_2) -> 
      (1 + (length_lh t_2))
    | `LH_N -> 
      0);;
let rec interleave_lh _lh_interleave_arg1_0 _lh_interleave_arg2_0 =
  (match _lh_interleave_arg1_0 with
    | `LH_C(_lh_interleave_LH_C_0_0, _lh_interleave_LH_C_1_0) -> 
      (`LH_C(_lh_interleave_LH_C_0_0, ((interleave_lh _lh_interleave_arg2_0) _lh_interleave_LH_C_1_0)))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec disp_lh _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend_lh ((mappend_lh ((interleave_lh _lh_disp_LH_P2_0_0) (spaces_lh (length_lh _lh_disp_LH_P2_0_0)))) (`LH_C('<', (`LH_C('=', (`LH_N))))))) ((mappend_lh ((interleave_lh (spaces_lh (length_lh _lh_disp_LH_P2_1_0))) _lh_disp_LH_P2_1_0)) (`LH_C('n', (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec insert_lh _lh_insert_arg1_0 _lh_insert_arg2_0 =
  (match _lh_insert_arg2_0 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_0, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (if (_lh_insert_arg1_0 < _lh_insert_LH_C_0_0) then
        (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
      else
        (if (_lh_insert_arg1_0 > _lh_insert_LH_C_0_0) then
          (`LH_C(_lh_insert_LH_C_0_0, ((insert_lh _lh_insert_arg1_0) _lh_insert_LH_C_1_0)))
        else
          (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec clauseHelper_lh _lh_clauseHelper_arg1_0 _lh_clauseHelper_arg2_0 =
  (match _lh_clauseHelper_arg1_0 with
    | `Dis(_lh_clauseHelper_Dis_0_0, _lh_clauseHelper_Dis_1_0) -> 
      ((clauseHelper_lh _lh_clauseHelper_Dis_0_0) ((clauseHelper_lh _lh_clauseHelper_Dis_1_0) _lh_clauseHelper_arg2_0))
    | `Sym(_lh_clauseHelper_Sym_0_0) -> 
      (match _lh_clauseHelper_arg2_0 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_0, _lh_clauseHelper_LH_P2_1_0) -> 
          (`LH_P2(((insert_lh _lh_clauseHelper_Sym_0_0) _lh_clauseHelper_LH_P2_0_0), _lh_clauseHelper_LH_P2_1_0))
        | _ -> 
          (failwith "error"))
    | `Not(_lh_clauseHelper_Not_0_0) -> 
      (match _lh_clauseHelper_Not_0_0 with
        | `Sym(_lh_clauseHelper_Sym_0_1) -> 
          (match _lh_clauseHelper_arg2_0 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_1, _lh_clauseHelper_LH_P2_1_1) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_1, ((insert_lh _lh_clauseHelper_Sym_0_1) _lh_clauseHelper_LH_P2_1_1)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec clause_lh _lh_clause_arg1_0 =
  ((clauseHelper_lh _lh_clause_arg1_0) (`LH_P2((`LH_N), (`LH_N))));;
let rec contains_lh _lh_contains_arg1_0 _lh_contains_arg2_0 =
  (match _lh_contains_arg2_0 with
    | `LH_C(_lh_contains_LH_C_0_0, _lh_contains_LH_C_1_0) -> 
      ((_lh_contains_arg1_0 = _lh_contains_LH_C_0_0) || ((contains_lh _lh_contains_arg1_0) _lh_contains_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec tautclause_lh _lh_tautclause_arg1_0 =
  (match _lh_tautclause_arg1_0 with
    | `LH_P2(_lh_tautclause_LH_P2_0_0, _lh_tautclause_LH_P2_1_0) -> 
      ((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((contains_lh _lh_listcomp_fun_ls_h_0) _lh_tautclause_LH_P2_1_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_tautclause_LH_P2_0_0)) <> (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec uniclHelper_lh _lh_uniclHelper_arg1_0 _lh_uniclHelper_arg2_0 =
  (let rec cp_0 = (clause_lh _lh_uniclHelper_arg1_0) in
    (if (tautclause_lh cp_0) then
      _lh_uniclHelper_arg2_0
    else
      ((insert_lh cp_0) _lh_uniclHelper_arg2_0)));;
let rec foldr_lh f_1 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_1 h_1) (((foldr_lh f_1) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec unicl_lh _lh_unicl_arg1_0 =
  (((foldr_lh uniclHelper_lh) (`LH_N)) _lh_unicl_arg1_0);;
let rec conjunct_lh _lh_conjunct_arg1_0 =
  (match _lh_conjunct_arg1_0 with
    | `Con(_lh_conjunct_Con_0_0, _lh_conjunct_Con_1_0) -> 
      true
    | _ -> 
      false);;
let rec disin_lh _lh_disin_arg1_0 =
  (match _lh_disin_arg1_0 with
    | `Dis(_lh_disin_Dis_0_0, _lh_disin_Dis_1_0) -> 
      (match _lh_disin_Dis_1_0 with
        | `Con(_lh_disin_Con_0_0, _lh_disin_Con_1_0) -> 
          (`Con((disin_lh (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_0_0))), (disin_lh (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_1_0)))))
        | _ -> 
          (match _lh_disin_Dis_0_0 with
            | `Con(_lh_disin_Con_0_1, _lh_disin_Con_1_1) -> 
              (`Con((disin_lh (`Dis(_lh_disin_Con_0_1, _lh_disin_Dis_1_0))), (disin_lh (`Dis(_lh_disin_Con_1_1, _lh_disin_Dis_1_0)))))
            | _ -> 
              (let rec dp_0 = (disin_lh _lh_disin_Dis_0_0) in
                (let rec dq_0 = (disin_lh _lh_disin_Dis_1_0) in
                  (if ((conjunct_lh dp_0) || (conjunct_lh dq_0)) then
                    (disin_lh (`Dis(dp_0, dq_0)))
                  else
                    (`Dis(dp_0, dq_0)))))))
    | `Con(_lh_disin_Con_0_2, _lh_disin_Con_1_2) -> 
      (`Con((disin_lh _lh_disin_Con_0_2), (disin_lh _lh_disin_Con_1_2)))
    | _ -> 
      _lh_disin_arg1_0);;
let rec clauses_lh _lh_clauses_arg1_0 =
  ((fun _lh_funcomp_x_1 -> 
    ((fun _lh_funcomp_x_2 -> 
      ((fun _lh_funcomp_x_3 -> 
        ((fun _lh_funcomp_x_4 -> 
          ((fun _lh_funcomp_x_5 -> 
            ((fun _lh_funcomp_x_6 -> 
              ((fun _lh_funcomp_x_7 -> 
                (concat_lh ((map_lh disp_lh) _lh_funcomp_x_7))) (unicl_lh _lh_funcomp_x_6))) (split_lh _lh_funcomp_x_5))) (disin_lh _lh_funcomp_x_4))) (negin_lh _lh_funcomp_x_3))) (elim_lh _lh_funcomp_x_2))) (parse_lh _lh_funcomp_x_1))) _lh_clauses_arg1_0);;
let rec testClausify_nofib_lh _lh_testClausify_nofib_arg1_0 =
  (let rec xs_1 = ((copy_lh _lh_testClausify_nofib_arg1_0) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat_lh ((map_lh clauses_lh) xs_1)));;
end;;

