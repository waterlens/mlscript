

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec concat_lh__d1 lss_0 =
  (lss_0 99);;
let rec map_lh__d1 f_5 ls_2 =
  (ls_2 f_5);;
let rec conjunct_lh__d2 _lh_conjunct_arg1_0 =
  (match _lh_conjunct_arg1_0 with
    | `Con(_lh_conjunct_Con_0_0, _lh_conjunct_Con_1_0) -> 
      true
    | _ -> 
      false);;
let rec conjunct_lh__d1 _lh_conjunct_arg1_1 =
  (match _lh_conjunct_arg1_1 with
    | `Con(_lh_conjunct_Con_0_1, _lh_conjunct_Con_1_1) -> 
      true
    | _ -> 
      false);;
let rec disin_lh__d1 _lh_disin_arg1_0 =
  (match _lh_disin_arg1_0 with
    | `Dis(_lh_disin_Dis_0_0, _lh_disin_Dis_1_0) -> 
      (match _lh_disin_Dis_1_0 with
        | `Con(_lh_disin_Con_0_0, _lh_disin_Con_1_0) -> 
          (`Con((disin_lh__d1 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_0_0))), (disin_lh__d1 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_1_0)))))
        | _ -> 
          (match _lh_disin_Dis_0_0 with
            | `Con(_lh_disin_Con_0_1, _lh_disin_Con_1_1) -> 
              (`Con((disin_lh__d1 (`Dis(_lh_disin_Con_0_1, _lh_disin_Dis_1_0))), (disin_lh__d1 (`Dis(_lh_disin_Con_1_1, _lh_disin_Dis_1_0)))))
            | _ -> 
              (let rec dp_0 = (disin_lh__d1 _lh_disin_Dis_0_0) in
                (let rec dq_0 = (disin_lh__d1 _lh_disin_Dis_1_0) in
                  (if ((conjunct_lh__d1 dp_0) || (conjunct_lh__d2 dq_0)) then
                    (disin_lh__d1 (`Dis(dp_0, dq_0)))
                  else
                    (`Dis(dp_0, dq_0)))))))
    | `Con(_lh_disin_Con_0_2, _lh_disin_Con_1_2) -> 
      (`Con((disin_lh__d1 _lh_disin_Con_0_2), (disin_lh__d1 _lh_disin_Con_1_2)))
    | _ -> 
      _lh_disin_arg1_0);;
let rec concat_lh__d2 lss_1 =
  (lss_1 99);;
let rec mappend_lh__d2 xs_2 ys_1_1 =
  (xs_2 ys_1_1);;
let rec map_lh__d2 f_4 ls_1 _lh_popOutId_0_1 =
  (match ls_1 with
    | `LH_C(h_1_0, t_1_0) -> 
      (let rec t_1_1 = ((map_lh__d2 f_4) t_1_0) in
        (let rec h_1_1 = (f_4 h_1_0) in
          ((mappend_lh__d2 h_1_1) (concat_lh__d2 t_1_1))))
    | `LH_N -> 
      (fun ys_1_4 -> 
        ys_1_4));;
let rec elim_lh__d1 _lh_elim_arg1_0 =
  (match _lh_elim_arg1_0 with
    | `Sym(_lh_elim_Sym_0_0) -> 
      (`Sym(_lh_elim_Sym_0_0))
    | `Not(_lh_elim_Not_0_0) -> 
      (`Not((elim_lh__d1 _lh_elim_Not_0_0)))
    | `Dis(_lh_elim_Dis_0_0, _lh_elim_Dis_1_0) -> 
      (`Dis((elim_lh__d1 _lh_elim_Dis_0_0), (elim_lh__d1 _lh_elim_Dis_1_0)))
    | `Con(_lh_elim_Con_0_0, _lh_elim_Con_1_0) -> 
      (`Con((elim_lh__d1 _lh_elim_Con_0_0), (elim_lh__d1 _lh_elim_Con_1_0)))
    | `Imp(_lh_elim_Imp_0_0, _lh_elim_Imp_1_0) -> 
      (`Dis((`Not((elim_lh__d1 _lh_elim_Imp_0_0))), (elim_lh__d1 _lh_elim_Imp_1_0)))
    | `Eqv(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0) -> 
      (`Con((elim_lh__d1 (`Imp(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0))), (elim_lh__d1 (`Imp(_lh_elim_Eqv_1_0, _lh_elim_Eqv_0_0)))))
    | _ -> 
      (failwith "error"));;
let rec foldr_lh__d1 f_2 i_0 ls_0 =
  ((ls_0 f_2) i_0);;
let rec splitHelper_lh__d1 _lh_splitHelper_arg1_0 _lh_splitHelper_arg2_0 =
  (match _lh_splitHelper_arg1_0 with
    | `Con(_lh_splitHelper_Con_0_0, _lh_splitHelper_Con_1_0) -> 
      ((splitHelper_lh__d1 _lh_splitHelper_Con_0_0) ((splitHelper_lh__d1 _lh_splitHelper_Con_1_0) _lh_splitHelper_arg2_0))
    | _ -> 
      (let rec t_5 = _lh_splitHelper_arg2_0 in
        (let rec h_5 = _lh_splitHelper_arg1_0 in
          (fun f_3 i_1 -> 
            ((f_3 h_5) (((foldr_lh__d1 f_3) i_1) t_5))))));;
let rec split_lh__d1 _lh_split_arg1_0 =
  ((splitHelper_lh__d1 _lh_split_arg1_0) (fun f_6 i_2 -> 
    i_2));;
let rec mappend_lh__d3 xs_1 ys_5 =
  (xs_1 ys_5);;
let rec mappend_lh__d1 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend_lh__d5 xs_3 ys_1_2 =
  (xs_3 ys_1_2);;
let rec mappend_lh__d4 xs_4 ys_1_3 =
  (xs_4 ys_1_3);;
let rec interleave_lh__d1 _lh_interleave_arg1_0 _lh_interleave_arg2_0 =
  (match _lh_interleave_arg1_0 with
    | `LH_C(_lh_interleave_LH_C_0_0, _lh_interleave_LH_C_1_0) -> 
      (let rec t_2 = ((interleave_lh__d1 _lh_interleave_arg2_0) _lh_interleave_LH_C_1_0) in
        (let rec h_2 = _lh_interleave_LH_C_0_0 in
          (fun ys_1 -> 
            (let rec t_3 = ((mappend_lh__d4 t_2) ys_1) in
              (let rec h_3 = h_2 in
                (fun ys_2 -> 
                  (let rec t_4 = ((mappend_lh__d2 t_3) ys_2) in
                    (let rec h_4 = h_3 in
                      (fun ys_3 -> 
                        (`LH_C(h_4, ((mappend_lh__d1 t_4) ys_3))))))))))))
    | `LH_N -> 
      (fun ys_4 -> 
        ys_4)
    | _ -> 
      (failwith "error"));;
let rec copy_lh__d3 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_lh__d3 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec spaces_lh__d2 _lh_spaces_arg1_0 =
  ((copy_lh__d3 _lh_spaces_arg1_0) ' ');;
let rec length_lh__d1 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_2, t_1_2) -> 
      (1 + (length_lh__d1 t_1_2))
    | `LH_N -> 
      0);;
let rec interleave_lh__d2 _lh_interleave_arg1_1 _lh_interleave_arg2_1 =
  (match _lh_interleave_arg1_1 with
    | `LH_C(_lh_interleave_LH_C_0_1, _lh_interleave_LH_C_1_1) -> 
      (let rec t_6 = ((interleave_lh__d2 _lh_interleave_arg2_1) _lh_interleave_LH_C_1_1) in
        (let rec h_6 = _lh_interleave_LH_C_0_1 in
          (fun ys_6 -> 
            (let rec t_7 = ((mappend_lh__d3 t_6) ys_6) in
              (let rec h_7 = h_6 in
                (fun ys_7 -> 
                  (let rec t_8 = ((mappend_lh__d5 t_7) ys_7) in
                    (let rec h_8 = h_7 in
                      (fun ys_8 -> 
                        (let rec t_9 = ((mappend_lh__d2 t_8) ys_8) in
                          (let rec h_9 = h_8 in
                            (fun ys_9 -> 
                              (`LH_C(h_9, ((mappend_lh__d1 t_9) ys_9)))))))))))))))
    | `LH_N -> 
      (fun ys_1_0 -> 
        ys_1_0)
    | _ -> 
      (failwith "error"));;
let rec copy_lh__d2 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_lh__d2 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec spaces_lh__d1 _lh_spaces_arg1_1 =
  ((copy_lh__d2 _lh_spaces_arg1_1) ' ');;
let rec length_lh__d2 ls_4 =
  (match ls_4 with
    | `LH_C(h_2_1, t_2_1) -> 
      (1 + (length_lh__d2 t_2_1))
    | `LH_N -> 
      0);;
let rec disp_lh__d1 _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend_lh__d5 ((mappend_lh__d3 ((interleave_lh__d2 _lh_disp_LH_P2_0_0) (spaces_lh__d1 (length_lh__d1 _lh_disp_LH_P2_0_0)))) (let rec t_1_3 = (let rec t_1_4 = (fun ys_1_5 -> 
        ys_1_5) in
        (let rec h_1_3 = '=' in
          (fun ys_1_6 -> 
            (let rec t_1_5 = ((mappend_lh__d5 t_1_4) ys_1_6) in
              (let rec h_1_4 = h_1_3 in
                (fun ys_1_7 -> 
                  (let rec t_1_6 = ((mappend_lh__d2 t_1_5) ys_1_7) in
                    (let rec h_1_5 = h_1_4 in
                      (fun ys_1_8 -> 
                        (`LH_C(h_1_5, ((mappend_lh__d1 t_1_6) ys_1_8)))))))))))) in
        (let rec h_1_6 = '<' in
          (fun ys_1_9 -> 
            (let rec t_1_7 = ((mappend_lh__d5 t_1_3) ys_1_9) in
              (let rec h_1_7 = h_1_6 in
                (fun ys_2_0 -> 
                  (let rec t_1_8 = ((mappend_lh__d2 t_1_7) ys_2_0) in
                    (let rec h_1_8 = h_1_7 in
                      (fun ys_2_1 -> 
                        (`LH_C(h_1_8, ((mappend_lh__d1 t_1_8) ys_2_1)))))))))))))) ((mappend_lh__d4 ((interleave_lh__d1 (spaces_lh__d2 (length_lh__d2 _lh_disp_LH_P2_1_0))) _lh_disp_LH_P2_1_0)) (let rec t_1_9 = (fun ys_2_2 -> 
        ys_2_2) in
        (let rec h_1_9 = 'n' in
          (fun ys_2_3 -> 
            (let rec t_2_0 = ((mappend_lh__d2 t_1_9) ys_2_3) in
              (let rec h_2_0 = h_1_9 in
                (fun ys_2_4 -> 
                  (`LH_C(h_2_0, ((mappend_lh__d1 t_2_0) ys_2_4)))))))))))
    | _ -> 
      (failwith "error"));;
let rec contains_lh__d1 _lh_contains_arg1_0 _lh_contains_arg2_0 =
  (match _lh_contains_arg2_0 with
    | `LH_C(_lh_contains_LH_C_0_0, _lh_contains_LH_C_1_0) -> 
      ((_lh_contains_arg1_0 = _lh_contains_LH_C_0_0) || ((contains_lh__d1 _lh_contains_arg1_0) _lh_contains_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec tautclause_lh__d1 _lh_tautclause_arg1_0 =
  (match _lh_tautclause_arg1_0 with
    | `LH_P2(_lh_tautclause_LH_P2_0_0, _lh_tautclause_LH_P2_1_0) -> 
      ((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((contains_lh__d1 _lh_listcomp_fun_ls_h_0) _lh_tautclause_LH_P2_1_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_tautclause_LH_P2_0_0)) <> (`LH_N))
    | _ -> 
      (failwith "error"));;
let rec insert_lh__d1 _lh_insert_arg1_2 _lh_insert_arg2_2 =
  (match _lh_insert_arg2_2 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_2, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
      (if (_lh_insert_arg1_2 < _lh_insert_LH_C_0_2) then
        (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
      else
        (if (_lh_insert_arg1_2 > _lh_insert_LH_C_0_2) then
          (`LH_C(_lh_insert_LH_C_0_2, ((insert_lh__d1 _lh_insert_arg1_2) _lh_insert_LH_C_1_2)))
        else
          (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec insert_lh__d3 _lh_insert_arg1_0 _lh_insert_arg2_0 =
  (match _lh_insert_arg2_0 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_0, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (if (_lh_insert_arg1_0 < _lh_insert_LH_C_0_0) then
        (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
      else
        (if (_lh_insert_arg1_0 > _lh_insert_LH_C_0_0) then
          (`LH_C(_lh_insert_LH_C_0_0, ((insert_lh__d3 _lh_insert_arg1_0) _lh_insert_LH_C_1_0)))
        else
          (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
    | _ -> 
      (failwith "error"));;
let rec insert_lh__d2 _lh_insert_arg1_1 _lh_insert_arg2_1 =
  (match _lh_insert_arg2_1 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_1, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
      (if (_lh_insert_arg1_1 < _lh_insert_LH_C_0_1) then
        (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
      else
        (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
          (`LH_C(_lh_insert_LH_C_0_1, ((insert_lh__d2 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
        else
          (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec clauseHelper_lh__d1 _lh_clauseHelper_arg1_0 _lh_clauseHelper_arg2_0 =
  (match _lh_clauseHelper_arg1_0 with
    | `Dis(_lh_clauseHelper_Dis_0_0, _lh_clauseHelper_Dis_1_0) -> 
      ((clauseHelper_lh__d1 _lh_clauseHelper_Dis_0_0) ((clauseHelper_lh__d1 _lh_clauseHelper_Dis_1_0) _lh_clauseHelper_arg2_0))
    | `Sym(_lh_clauseHelper_Sym_0_0) -> 
      (match _lh_clauseHelper_arg2_0 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_0, _lh_clauseHelper_LH_P2_1_0) -> 
          (`LH_P2(((insert_lh__d3 _lh_clauseHelper_Sym_0_0) _lh_clauseHelper_LH_P2_0_0), _lh_clauseHelper_LH_P2_1_0))
        | _ -> 
          (failwith "error"))
    | `Not(_lh_clauseHelper_Not_0_0) -> 
      (match _lh_clauseHelper_Not_0_0 with
        | `Sym(_lh_clauseHelper_Sym_0_1) -> 
          (match _lh_clauseHelper_arg2_0 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_1, _lh_clauseHelper_LH_P2_1_1) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_1, ((insert_lh__d2 _lh_clauseHelper_Sym_0_1) _lh_clauseHelper_LH_P2_1_1)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec clause_lh__d1 _lh_clause_arg1_0 =
  ((clauseHelper_lh__d1 _lh_clause_arg1_0) (`LH_P2((`LH_N), (`LH_N))));;
let rec uniclHelper_lh__d1 _lh_uniclHelper_arg1_0 _lh_uniclHelper_arg2_0 =
  (let rec cp_0 = (clause_lh__d1 _lh_uniclHelper_arg1_0) in
    (if (tautclause_lh__d1 cp_0) then
      _lh_uniclHelper_arg2_0
    else
      ((insert_lh__d1 cp_0) _lh_uniclHelper_arg2_0)));;
let rec unicl_lh__d1 _lh_unicl_arg1_0 =
  (((foldr_lh__d1 uniclHelper_lh__d1) (`LH_N)) _lh_unicl_arg1_0);;
let rec negin_lh__d1 _lh_negin_arg1_0 =
  (match _lh_negin_arg1_0 with
    | `Not(_lh_negin_Not_0_0) -> 
      (match _lh_negin_Not_0_0 with
        | `Not(_lh_negin_Not_0_1) -> 
          (negin_lh__d1 _lh_negin_Not_0_1)
        | `Con(_lh_negin_Con_0_0, _lh_negin_Con_1_0) -> 
          (`Dis((negin_lh__d1 (`Not(_lh_negin_Con_0_0))), (negin_lh__d1 (`Not(_lh_negin_Con_1_0)))))
        | `Dis(_lh_negin_Dis_0_0, _lh_negin_Dis_1_0) -> 
          (`Con((negin_lh__d1 (`Not(_lh_negin_Dis_0_0))), (negin_lh__d1 (`Not(_lh_negin_Dis_1_0)))))
        | _ -> 
          _lh_negin_arg1_0)
    | `Dis(_lh_negin_Dis_0_1, _lh_negin_Dis_1_1) -> 
      (`Dis((negin_lh__d1 _lh_negin_Dis_0_1), (negin_lh__d1 _lh_negin_Dis_1_1)))
    | `Con(_lh_negin_Con_0_1, _lh_negin_Con_1_1) -> 
      (`Con((negin_lh__d1 _lh_negin_Con_0_1), (negin_lh__d1 _lh_negin_Con_1_1)))
    | _ -> 
      _lh_negin_arg1_0);;
let rec opri_lh__d3 _lh_opri_arg1_2 =
  (match _lh_opri_arg1_2 with
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
let rec spri_lh__d2 _lh_spri_arg1_1 =
  (match _lh_spri_arg1_1 with
    | `LH_C(_lh_spri_LH_C_0_2, _lh_spri_LH_C_1_2) -> 
      (match _lh_spri_LH_C_0_2 with
        | `Ast(_lh_spri_Ast_0_1) -> 
          (match _lh_spri_LH_C_1_2 with
            | `LH_C(_lh_spri_LH_C_0_3, _lh_spri_LH_C_1_3) -> 
              (match _lh_spri_LH_C_0_3 with
                | `Lex(_lh_spri_Lex_0_1) -> 
                  (opri_lh__d3 _lh_spri_Lex_0_1)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0);;
let rec while_lh__d1 _lh_while_arg1_0 _lh_while_arg2_0 _lh_while_arg3_0 =
  (if (_lh_while_arg1_0 _lh_while_arg3_0) then
    (((while_lh__d1 _lh_while_arg1_0) _lh_while_arg2_0) (_lh_while_arg2_0 _lh_while_arg3_0))
  else
    _lh_while_arg3_0);;
let rec red_lh__d2 _lh_red_arg1_1 =
  (match _lh_red_arg1_1 with
    | `LH_C(_lh_red_LH_C_0_6, _lh_red_LH_C_1_6) -> 
      (match _lh_red_LH_C_0_6 with
        | `Ast(_lh_red_Ast_0_5) -> 
          (match _lh_red_LH_C_1_6 with
            | `LH_C(_lh_red_LH_C_0_7, _lh_red_LH_C_1_7) -> 
              (match _lh_red_LH_C_0_7 with
                | `Lex(_lh_red_Lex_0_1) -> 
                  (match _lh_red_Lex_0_1 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_8, _lh_red_LH_C_1_8) -> 
                          (match _lh_red_LH_C_0_8 with
                            | `Ast(_lh_red_Ast_0_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_6, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_8))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_9, _lh_red_LH_C_1_9) -> 
                          (match _lh_red_LH_C_0_9 with
                            | `Ast(_lh_red_Ast_0_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_7, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_9))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_0, _lh_red_LH_C_1_1_0) -> 
                          (match _lh_red_LH_C_0_1_0 with
                            | `Ast(_lh_red_Ast_0_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_8, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_0))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_1, _lh_red_LH_C_1_1_1) -> 
                          (match _lh_red_LH_C_0_1_1 with
                            | `Ast(_lh_red_Ast_0_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_9, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_1))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_5)))), _lh_red_LH_C_1_7))
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
let rec redstar_lh__d1 _lh_redstar_arg1_0 =
  (((while_lh__d1 (fun _lh_funcomp_x_0 -> 
    (0 <> (spri_lh__d2 _lh_funcomp_x_0)))) red_lh__d2) _lh_redstar_arg1_0);;
let rec opri_lh__d1 _lh_opri_arg1_1 =
  (match _lh_opri_arg1_1 with
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
let rec opri_lh__d2 _lh_opri_arg1_3 =
  (match _lh_opri_arg1_3 with
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
let rec spri_lh__d1 _lh_spri_arg1_2 =
  (match _lh_spri_arg1_2 with
    | `LH_C(_lh_spri_LH_C_0_4, _lh_spri_LH_C_1_4) -> 
      (match _lh_spri_LH_C_0_4 with
        | `Ast(_lh_spri_Ast_0_2) -> 
          (match _lh_spri_LH_C_1_4 with
            | `LH_C(_lh_spri_LH_C_0_5, _lh_spri_LH_C_1_5) -> 
              (match _lh_spri_LH_C_0_5 with
                | `Lex(_lh_spri_Lex_0_2) -> 
                  (opri_lh__d2 _lh_spri_Lex_0_2)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0);;
let rec opri_lh__d4 _lh_opri_arg1_0 =
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
let rec spri_lh__d3 _lh_spri_arg1_0 =
  (match _lh_spri_arg1_0 with
    | `LH_C(_lh_spri_LH_C_0_0, _lh_spri_LH_C_1_0) -> 
      (match _lh_spri_LH_C_0_0 with
        | `Ast(_lh_spri_Ast_0_0) -> 
          (match _lh_spri_LH_C_1_0 with
            | `LH_C(_lh_spri_LH_C_0_1, _lh_spri_LH_C_1_1) -> 
              (match _lh_spri_LH_C_0_1 with
                | `Lex(_lh_spri_Lex_0_0) -> 
                  (opri_lh__d4 _lh_spri_Lex_0_0)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0);;
let rec while_lh__d2 _lh_while_arg1_1 _lh_while_arg2_1 _lh_while_arg3_1 =
  (if (_lh_while_arg1_1 _lh_while_arg3_1) then
    (((while_lh__d2 _lh_while_arg1_1) _lh_while_arg2_1) (_lh_while_arg2_1 _lh_while_arg3_1))
  else
    _lh_while_arg3_1);;
let rec red_lh__d3 _lh_red_arg1_0 =
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
let rec redstar_lh__d2 _lh_redstar_arg1_1 =
  (((while_lh__d2 (fun _lh_funcomp_x_1 -> 
    (0 <> (spri_lh__d3 _lh_funcomp_x_1)))) red_lh__d3) _lh_redstar_arg1_1);;
let rec red_lh__d1 _lh_red_arg1_2 =
  (match _lh_red_arg1_2 with
    | `LH_C(_lh_red_LH_C_0_1_2, _lh_red_LH_C_1_1_2) -> 
      (match _lh_red_LH_C_0_1_2 with
        | `Ast(_lh_red_Ast_0_1_0) -> 
          (match _lh_red_LH_C_1_1_2 with
            | `LH_C(_lh_red_LH_C_0_1_3, _lh_red_LH_C_1_1_3) -> 
              (match _lh_red_LH_C_0_1_3 with
                | `Lex(_lh_red_Lex_0_2) -> 
                  (match _lh_red_Lex_0_2 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_4, _lh_red_LH_C_1_1_4) -> 
                          (match _lh_red_LH_C_0_1_4 with
                            | `Ast(_lh_red_Ast_0_1_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_1, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_4))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_5, _lh_red_LH_C_1_1_5) -> 
                          (match _lh_red_LH_C_0_1_5 with
                            | `Ast(_lh_red_Ast_0_1_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_2, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_5))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_6, _lh_red_LH_C_1_1_6) -> 
                          (match _lh_red_LH_C_0_1_6 with
                            | `Ast(_lh_red_Ast_0_1_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_3, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_6))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_7, _lh_red_LH_C_1_1_7) -> 
                          (match _lh_red_LH_C_0_1_7 with
                            | `Ast(_lh_red_Ast_0_1_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_4, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_7))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_3))
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
let rec parseHelper_lh__d1 _lh_parseHelper_arg1_0 _lh_parseHelper_arg2_0 =
  (match _lh_parseHelper_arg1_0 with
    | `LH_N -> 
      (redstar_lh__d1 _lh_parseHelper_arg2_0)
    | `LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0) -> 
      (match _lh_parseHelper_LH_C_0_0 with
        | ' ' -> 
          ((parseHelper_lh__d1 _lh_parseHelper_LH_C_1_0) _lh_parseHelper_arg2_0)
        | '(' -> 
          ((parseHelper_lh__d1 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_0)))
        | ')' -> 
          (let rec _lh_matchIdent_0 = (redstar_lh__d2 _lh_parseHelper_arg2_0) in
            (match _lh_matchIdent_0 with
              | `LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_1) -> 
                (match _lh_parseHelper_LH_C_1_1 with
                  | `LH_C(_lh_parseHelper_LH_C_0_2, _lh_parseHelper_LH_C_1_2) -> 
                    (match _lh_parseHelper_LH_C_0_2 with
                      | `Lex(_lh_parseHelper_Lex_0_0) -> 
                        (match _lh_parseHelper_Lex_0_0 with
                          | '(' -> 
                            ((parseHelper_lh__d1 _lh_parseHelper_LH_C_1_0) (`LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_2)))
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
            ((parseHelper_lh__d1 _lh_parseHelper_LH_C_1_0) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_0)))), _lh_parseHelper_arg2_0)))
          else
            (if ((spri_lh__d1 _lh_parseHelper_arg2_0) > (opri_lh__d1 _lh_parseHelper_LH_C_0_0)) then
              ((parseHelper_lh__d1 (`LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0))) (red_lh__d1 _lh_parseHelper_arg2_0))
            else
              ((parseHelper_lh__d1 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_0)), _lh_parseHelper_arg2_0))))))
    | _ -> 
      (failwith "error"));;
let rec parse_lh__d1 _lh_parse_arg1_0 =
  (let rec _lh_matchIdent_1 = ((parseHelper_lh__d1 _lh_parse_arg1_0) (`LH_N)) in
    (match _lh_matchIdent_1 with
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
let rec clauses_lh__d1 _lh_clauses_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      ((fun _lh_funcomp_x_4 -> 
        ((fun _lh_funcomp_x_5 -> 
          ((fun _lh_funcomp_x_6 -> 
            ((fun _lh_funcomp_x_7 -> 
              ((fun _lh_funcomp_x_8 -> 
                (concat_lh__d2 ((map_lh__d2 disp_lh__d1) _lh_funcomp_x_8))) (unicl_lh__d1 _lh_funcomp_x_7))) (split_lh__d1 _lh_funcomp_x_6))) (disin_lh__d1 _lh_funcomp_x_5))) (negin_lh__d1 _lh_funcomp_x_4))) (elim_lh__d1 _lh_funcomp_x_3))) (parse_lh__d1 _lh_funcomp_x_2))) _lh_clauses_arg1_0);;
let rec copy_lh__d1 _lh_copy_arg1_0 _lh_copy_arg2_0 _lh_popOutId_0_0 _lh_popOutId_1_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (let rec t_0 = ((copy_lh__d1 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0) in
      (let rec h_0 = _lh_copy_arg2_0 in
        (let rec t_1 = ((map_lh__d1 _lh_popOutId_0_0) t_0) in
          (let rec h_1 = (_lh_popOutId_0_0 h_0) in
            ((mappend_lh__d1 h_1) (concat_lh__d1 t_1))))))
  else
    (`LH_N));;
let rec testClausify_nofib_lh__d1 _lh_testClausify_nofib_arg1_0 =
  (let rec xs_5 = ((copy_lh__d1 _lh_testClausify_nofib_arg1_0) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat_lh__d1 ((map_lh__d1 clauses_lh__d1) xs_5)));;
end;;

