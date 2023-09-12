(*
touch ./Clausify_nofib.mli && ocamlc ./Clausify_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Clausify_nofib.ml -o "./Clausify_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Clausify_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec conjunct_d0 _lh_conjunct_arg1_1 =
  (match _lh_conjunct_arg1_1 with
    | `Con(_lh_conjunct_Con_0_1, _lh_conjunct_Con_1_1) -> 
      true
    | _ -> 
      false);;
let rec conjunct_d1 _lh_conjunct_arg1_2 =
  (match _lh_conjunct_arg1_2 with
    | `Con(_lh_conjunct_Con_0_2, _lh_conjunct_Con_1_2) -> 
      true
    | _ -> 
      false);;
let rec contains_d0 _lh_contains_arg1_1 _lh_contains_arg2_1 =
  (match _lh_contains_arg2_1 with
    | `LH_C(_lh_contains_LH_C_0_1, _lh_contains_LH_C_1_1) -> 
      ((_lh_contains_arg1_1 = _lh_contains_LH_C_0_1) || ((contains_d0 _lh_contains_arg1_1) _lh_contains_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (failwith "error"));;
let rec copy_d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy_d1 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (`LH_C(_lh_copy_arg2_1, ((copy_d1 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1)))
  else
    (`LH_N));;
let rec copy_d2 _lh_copy_arg1_3 _lh_copy_arg2_3 =
  (if (_lh_copy_arg1_3 > 0) then
    (`LH_C(_lh_copy_arg2_3, ((copy_d2 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3)))
  else
    (`LH_N));;
let rec elim_d0 _lh_elim_arg1_1 =
  (match _lh_elim_arg1_1 with
    | `Sym(_lh_elim_Sym_0_1) -> 
      (`Sym(_lh_elim_Sym_0_1))
    | `Not(_lh_elim_Not_0_1) -> 
      (`Not((elim_d0 _lh_elim_Not_0_1)))
    | `Dis(_lh_elim_Dis_0_1, _lh_elim_Dis_1_1) -> 
      (`Dis((elim_d0 _lh_elim_Dis_0_1), (elim_d0 _lh_elim_Dis_1_1)))
    | `Con(_lh_elim_Con_0_1, _lh_elim_Con_1_1) -> 
      (`Con((elim_d0 _lh_elim_Con_0_1), (elim_d0 _lh_elim_Con_1_1)))
    | `Imp(_lh_elim_Imp_0_1, _lh_elim_Imp_1_1) -> 
      (`Dis((`Not((elim_d0 _lh_elim_Imp_0_1))), (elim_d0 _lh_elim_Imp_1_1)))
    | `Eqv(_lh_elim_Eqv_0_1, _lh_elim_Eqv_1_1) -> 
      (`Con((elim_d0 (`Imp(_lh_elim_Eqv_0_1, _lh_elim_Eqv_1_1))), (elim_d0 (`Imp(_lh_elim_Eqv_1_1, _lh_elim_Eqv_0_1)))))
    | _ -> 
      (failwith "error"));;
let rec foldr_d0 f_1_4 i_3 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_5, t_2_7) -> 
      ((f_1_4 h_2_5) (((foldr_d0 f_1_4) i_3) t_2_7))
    | `LH_N -> 
      i_3);;
let rec insert_d0 _lh_insert_arg1_3 _lh_insert_arg2_3 =
  (match _lh_insert_arg2_3 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_3, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3) -> 
      (if (_lh_insert_arg1_3 < _lh_insert_LH_C_0_3) then
        (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3))))
      else
        (if (_lh_insert_arg1_3 > _lh_insert_LH_C_0_3) then
          (`LH_C(_lh_insert_LH_C_0_3, ((insert_d0 _lh_insert_arg1_3) _lh_insert_LH_C_1_3)))
        else
          (`LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3))))
    | _ -> 
      (failwith "error"));;
let rec insert_d1 _lh_insert_arg1_2 _lh_insert_arg2_2 =
  (match _lh_insert_arg2_2 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_2, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
      (if (_lh_insert_arg1_2 < _lh_insert_LH_C_0_2) then
        (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
      else
        (if (_lh_insert_arg1_2 > _lh_insert_LH_C_0_2) then
          (`LH_C(_lh_insert_LH_C_0_2, ((insert_d1 _lh_insert_arg1_2) _lh_insert_LH_C_1_2)))
        else
          (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
    | _ -> 
      (failwith "error"));;
let rec insert_d2 _lh_insert_arg1_1 _lh_insert_arg2_1 =
  (match _lh_insert_arg2_1 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_1, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
      (if (_lh_insert_arg1_1 < _lh_insert_LH_C_0_1) then
        (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
      else
        (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
          (`LH_C(_lh_insert_LH_C_0_1, ((insert_d2 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
        else
          (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
    | _ -> 
      (failwith "error"));;
let rec interleave_d0 _lh_interleave_arg1_2 _lh_interleave_arg2_2 =
  (match _lh_interleave_arg1_2 with
    | `LH_C(_lh_interleave_LH_C_0_2, _lh_interleave_LH_C_1_2) -> 
      (`LH_C(_lh_interleave_LH_C_0_2, ((interleave_d0 _lh_interleave_arg2_2) _lh_interleave_LH_C_1_2)))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec interleave_d1 _lh_interleave_arg1_1 _lh_interleave_arg2_1 =
  (match _lh_interleave_arg1_1 with
    | `LH_C(_lh_interleave_LH_C_0_1, _lh_interleave_LH_C_1_1) -> 
      (`LH_C(_lh_interleave_LH_C_0_1, ((interleave_d1 _lh_interleave_arg2_1) _lh_interleave_LH_C_1_1)))
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (failwith "error"));;
let rec length_d0 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_2_8, t_3_0) -> 
      (1 + (length_d0 t_3_0))
    | `LH_N -> 
      0);;
let rec length_d1 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_1, t_3_3) -> 
      (1 + (length_d1 t_3_3))
    | `LH_N -> 
      0);;
let rec mappend_d0 xs_1_5 ys_1_3 =
  (match xs_1_5 with
    | `LH_C(h_3_0, t_3_2) -> 
      (`LH_C(h_3_0, ((mappend_d0 t_3_2) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_d1 xs_1_0 ys_9 =
  (match xs_1_0 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend_d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d2 xs_1_2 ys_1_1 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend_d2 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_d3 xs_1_1 ys_1_0 =
  (match xs_1_1 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend_d3 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend_d4 xs_1_4 ys_1_2 =
  (match xs_1_4 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C(h_2_6, ((mappend_d4 t_2_8) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec map_d0 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C((f_1_3 h_2_4), ((map_d0 f_1_3) t_2_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map_d1 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C((f_1_2 h_2_2), ((map_d1 f_1_2) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec negin_d0 _lh_negin_arg1_1 =
  (match _lh_negin_arg1_1 with
    | `Not(_lh_negin_Not_0_2) -> 
      (match _lh_negin_Not_0_2 with
        | `Not(_lh_negin_Not_0_3) -> 
          (negin_d0 _lh_negin_Not_0_3)
        | `Con(_lh_negin_Con_0_2, _lh_negin_Con_1_2) -> 
          (`Dis((negin_d0 (`Not(_lh_negin_Con_0_2))), (negin_d0 (`Not(_lh_negin_Con_1_2)))))
        | `Dis(_lh_negin_Dis_0_2, _lh_negin_Dis_1_2) -> 
          (`Con((negin_d0 (`Not(_lh_negin_Dis_0_2))), (negin_d0 (`Not(_lh_negin_Dis_1_2)))))
        | _ -> 
          _lh_negin_arg1_1)
    | `Dis(_lh_negin_Dis_0_3, _lh_negin_Dis_1_3) -> 
      (`Dis((negin_d0 _lh_negin_Dis_0_3), (negin_d0 _lh_negin_Dis_1_3)))
    | `Con(_lh_negin_Con_0_3, _lh_negin_Con_1_3) -> 
      (`Con((negin_d0 _lh_negin_Con_0_3), (negin_d0 _lh_negin_Con_1_3)))
    | _ -> 
      _lh_negin_arg1_1);;
let rec opri_d0 _lh_opri_arg1_2 =
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
let rec opri_d1 _lh_opri_arg1_3 =
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
let rec opri_d2 _lh_opri_arg1_4 =
  (match _lh_opri_arg1_4 with
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
let rec opri_d3 _lh_opri_arg1_1 =
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
let rec red_d0 _lh_red_arg1_1 =
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
let rec red_d1 _lh_red_arg1_3 =
  (match _lh_red_arg1_3 with
    | `LH_C(_lh_red_LH_C_0_1_8, _lh_red_LH_C_1_1_8) -> 
      (match _lh_red_LH_C_0_1_8 with
        | `Ast(_lh_red_Ast_0_1_5) -> 
          (match _lh_red_LH_C_1_1_8 with
            | `LH_C(_lh_red_LH_C_0_1_9, _lh_red_LH_C_1_1_9) -> 
              (match _lh_red_LH_C_0_1_9 with
                | `Lex(_lh_red_Lex_0_3) -> 
                  (match _lh_red_Lex_0_3 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_0, _lh_red_LH_C_1_2_0) -> 
                          (match _lh_red_LH_C_0_2_0 with
                            | `Ast(_lh_red_Ast_0_1_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_6, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_0))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_1, _lh_red_LH_C_1_2_1) -> 
                          (match _lh_red_LH_C_0_2_1 with
                            | `Ast(_lh_red_Ast_0_1_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_7, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_1))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_2, _lh_red_LH_C_1_2_2) -> 
                          (match _lh_red_LH_C_0_2_2 with
                            | `Ast(_lh_red_Ast_0_1_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_8, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_2))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_3, _lh_red_LH_C_1_2_3) -> 
                          (match _lh_red_LH_C_0_2_3 with
                            | `Ast(_lh_red_Ast_0_1_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_9, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_3))
                            | _ -> 
                              (failwith "error"))
                        | _ -> 
                          (failwith "error"))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_1_9))
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
let rec red_d2 _lh_red_arg1_2 =
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
let rec splitHelper_d0 _lh_splitHelper_arg1_1 _lh_splitHelper_arg2_1 =
  (match _lh_splitHelper_arg1_1 with
    | `Con(_lh_splitHelper_Con_0_1, _lh_splitHelper_Con_1_1) -> 
      ((splitHelper_d0 _lh_splitHelper_Con_0_1) ((splitHelper_d0 _lh_splitHelper_Con_1_1) _lh_splitHelper_arg2_1))
    | _ -> 
      (`LH_C(_lh_splitHelper_arg1_1, _lh_splitHelper_arg2_1)));;
let rec while_d0 _lh_while_arg1_2 _lh_while_arg2_2 _lh_while_arg3_2 =
  (if (_lh_while_arg1_2 _lh_while_arg3_2) then
    (((while_d0 _lh_while_arg1_2) _lh_while_arg2_2) (_lh_while_arg2_2 _lh_while_arg3_2))
  else
    _lh_while_arg3_2);;
let rec while_d1 _lh_while_arg1_1 _lh_while_arg2_1 _lh_while_arg3_1 =
  (if (_lh_while_arg1_1 _lh_while_arg3_1) then
    (((while_d1 _lh_while_arg1_1) _lh_while_arg2_1) (_lh_while_arg2_1 _lh_while_arg3_1))
  else
    _lh_while_arg3_1);;
let rec clauseHelper_d0 _lh_clauseHelper_arg1_1 _lh_clauseHelper_arg2_1 =
  (match _lh_clauseHelper_arg1_1 with
    | `Dis(_lh_clauseHelper_Dis_0_1, _lh_clauseHelper_Dis_1_1) -> 
      ((clauseHelper_d0 _lh_clauseHelper_Dis_0_1) ((clauseHelper_d0 _lh_clauseHelper_Dis_1_1) _lh_clauseHelper_arg2_1))
    | `Sym(_lh_clauseHelper_Sym_0_2) -> 
      (match _lh_clauseHelper_arg2_1 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_2, _lh_clauseHelper_LH_P2_1_2) -> 
          (`LH_P2(((insert_d0 _lh_clauseHelper_Sym_0_2) _lh_clauseHelper_LH_P2_0_2), _lh_clauseHelper_LH_P2_1_2))
        | _ -> 
          (failwith "error"))
    | `Not(_lh_clauseHelper_Not_0_1) -> 
      (match _lh_clauseHelper_Not_0_1 with
        | `Sym(_lh_clauseHelper_Sym_0_3) -> 
          (match _lh_clauseHelper_arg2_1 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_3, _lh_clauseHelper_LH_P2_1_3) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_3, ((insert_d1 _lh_clauseHelper_Sym_0_3) _lh_clauseHelper_LH_P2_1_3)))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and clauses_d0 _lh_clauses_arg1_1 =
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      ((fun _lh_funcomp_x_1_0 -> 
        ((fun _lh_funcomp_x_1_1 -> 
          ((fun _lh_funcomp_x_1_2 -> 
            ((fun _lh_funcomp_x_1_3 -> 
              ((fun _lh_funcomp_x_1_4 -> 
                (concat_d0 ((map_d0 disp_d0) _lh_funcomp_x_1_4))) (unicl_d0 _lh_funcomp_x_1_3))) (split_d0 _lh_funcomp_x_1_2))) (disin_d0 _lh_funcomp_x_1_1))) (negin_d0 _lh_funcomp_x_1_0))) (elim_d0 _lh_funcomp_x_9))) (parse_d0 _lh_funcomp_x_8))) _lh_clauses_arg1_1)
and clause_d0 _lh_clause_arg1_1 =
  ((clauseHelper_d0 _lh_clause_arg1_1) (`LH_P2((`LH_N), (`LH_N))))
and concat_d0 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_7, t_2_9) -> 
      ((mappend_d0 h_2_7) (concat_d0 t_2_9))
    | `LH_N -> 
      (`LH_N))
and concat_d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_2_9, t_3_1) -> 
      ((mappend_d4 h_2_9) (concat_d1 t_3_1))
    | `LH_N -> 
      (`LH_N))
and disin_d0 _lh_disin_arg1_1 =
  (match _lh_disin_arg1_1 with
    | `Dis(_lh_disin_Dis_0_1, _lh_disin_Dis_1_1) -> 
      (match _lh_disin_Dis_1_1 with
        | `Con(_lh_disin_Con_0_3, _lh_disin_Con_1_3) -> 
          (`Con((disin_d0 (`Dis(_lh_disin_Dis_0_1, _lh_disin_Con_0_3))), (disin_d0 (`Dis(_lh_disin_Dis_0_1, _lh_disin_Con_1_3)))))
        | _ -> 
          (match _lh_disin_Dis_0_1 with
            | `Con(_lh_disin_Con_0_4, _lh_disin_Con_1_4) -> 
              (`Con((disin_d0 (`Dis(_lh_disin_Con_0_4, _lh_disin_Dis_1_1))), (disin_d0 (`Dis(_lh_disin_Con_1_4, _lh_disin_Dis_1_1)))))
            | _ -> 
              (let rec dp_1 = (disin_d0 _lh_disin_Dis_0_1) in
                (let rec dq_1 = (disin_d0 _lh_disin_Dis_1_1) in
                  (if ((conjunct_d0 dp_1) || (conjunct_d1 dq_1)) then
                    (disin_d0 (`Dis(dp_1, dq_1)))
                  else
                    (`Dis(dp_1, dq_1)))))))
    | `Con(_lh_disin_Con_0_5, _lh_disin_Con_1_5) -> 
      (`Con((disin_d0 _lh_disin_Con_0_5), (disin_d0 _lh_disin_Con_1_5)))
    | _ -> 
      _lh_disin_arg1_1)
and disp_d0 _lh_disp_arg1_1 =
  (match _lh_disp_arg1_1 with
    | `LH_P2(_lh_disp_LH_P2_0_1, _lh_disp_LH_P2_1_1) -> 
      ((mappend_d1 ((mappend_d2 ((interleave_d0 _lh_disp_LH_P2_0_1) (spaces_d0 (length_d0 _lh_disp_LH_P2_0_1)))) (`LH_C('<', (`LH_C('=', (`LH_N))))))) ((mappend_d3 ((interleave_d1 (spaces_d1 (length_d1 _lh_disp_LH_P2_1_1))) _lh_disp_LH_P2_1_1)) (`LH_C('n', (`LH_N)))))
    | _ -> 
      (failwith "error"))
and parseHelper_d0 _lh_parseHelper_arg1_1 _lh_parseHelper_arg2_1 =
  (match _lh_parseHelper_arg1_1 with
    | `LH_N -> 
      (redstar_d0 _lh_parseHelper_arg2_1)
    | `LH_C(_lh_parseHelper_LH_C_0_3, _lh_parseHelper_LH_C_1_3) -> 
      (match _lh_parseHelper_LH_C_0_3 with
        | ' ' -> 
          ((parseHelper_d0 _lh_parseHelper_LH_C_1_3) _lh_parseHelper_arg2_1)
        | '(' -> 
          ((parseHelper_d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_1)))
        | ')' -> 
          (let rec _lh_matchIdent_3 = (redstar_d1 _lh_parseHelper_arg2_1) in
            (match _lh_matchIdent_3 with
              | `LH_C(_lh_parseHelper_LH_C_0_4, _lh_parseHelper_LH_C_1_4) -> 
                (match _lh_parseHelper_LH_C_1_4 with
                  | `LH_C(_lh_parseHelper_LH_C_0_5, _lh_parseHelper_LH_C_1_5) -> 
                    (match _lh_parseHelper_LH_C_0_5 with
                      | `Lex(_lh_parseHelper_Lex_0_1) -> 
                        (match _lh_parseHelper_Lex_0_1 with
                          | '(' -> 
                            ((parseHelper_d0 _lh_parseHelper_LH_C_1_3) (`LH_C(_lh_parseHelper_LH_C_0_4, _lh_parseHelper_LH_C_1_5)))
                          | _ -> 
                            (failwith "error"))
                      | _ -> 
                        (failwith "error"))
                  | _ -> 
                    (failwith "error"))
              | _ -> 
                (failwith "error")))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_3) && (_lh_parseHelper_LH_C_0_3 <= 'z')) then
            ((parseHelper_d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_3)))), _lh_parseHelper_arg2_1)))
          else
            (if ((spri_d2 _lh_parseHelper_arg2_1) > (opri_d0 _lh_parseHelper_LH_C_0_3)) then
              ((parseHelper_d0 (`LH_C(_lh_parseHelper_LH_C_0_3, _lh_parseHelper_LH_C_1_3))) (red_d0 _lh_parseHelper_arg2_1))
            else
              ((parseHelper_d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_3)), _lh_parseHelper_arg2_1))))))
    | _ -> 
      (failwith "error"))
and parse_d0 _lh_parse_arg1_1 =
  (let rec _lh_matchIdent_2 = ((parseHelper_d0 _lh_parse_arg1_1) (`LH_N)) in
    (match _lh_matchIdent_2 with
      | `LH_C(_lh_parse_LH_C_0_1, _lh_parse_LH_C_1_1) -> 
        (match _lh_parse_LH_C_0_1 with
          | `Ast(_lh_parse_Ast_0_1) -> 
            (match _lh_parse_LH_C_1_1 with
              | `LH_N -> 
                _lh_parse_Ast_0_1
              | _ -> 
                (failwith "error"))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error")))
and redstar_d0 _lh_redstar_arg1_1 =
  (((while_d0 (fun _lh_funcomp_x_1_5 -> 
    (0 != (spri_d0 _lh_funcomp_x_1_5)))) red_d1) _lh_redstar_arg1_1)
and redstar_d1 _lh_redstar_arg1_2 =
  (((while_d1 (fun _lh_funcomp_x_1_6 -> 
    (0 != (spri_d1 _lh_funcomp_x_1_6)))) red_d2) _lh_redstar_arg1_2)
and spaces_d0 _lh_spaces_arg1_2 =
  ((copy_d0 _lh_spaces_arg1_2) ' ')
and spaces_d1 _lh_spaces_arg1_1 =
  ((copy_d1 _lh_spaces_arg1_1) ' ')
and split_d0 _lh_split_arg1_1 =
  ((splitHelper_d0 _lh_split_arg1_1) (`LH_N))
and spri_d0 _lh_spri_arg1_2 =
  (match _lh_spri_arg1_2 with
    | `LH_C(_lh_spri_LH_C_0_4, _lh_spri_LH_C_1_4) -> 
      (match _lh_spri_LH_C_0_4 with
        | `Ast(_lh_spri_Ast_0_2) -> 
          (match _lh_spri_LH_C_1_4 with
            | `LH_C(_lh_spri_LH_C_0_5, _lh_spri_LH_C_1_5) -> 
              (match _lh_spri_LH_C_0_5 with
                | `Lex(_lh_spri_Lex_0_2) -> 
                  (opri_d1 _lh_spri_Lex_0_2)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri_d1 _lh_spri_arg1_1 =
  (match _lh_spri_arg1_1 with
    | `LH_C(_lh_spri_LH_C_0_2, _lh_spri_LH_C_1_2) -> 
      (match _lh_spri_LH_C_0_2 with
        | `Ast(_lh_spri_Ast_0_1) -> 
          (match _lh_spri_LH_C_1_2 with
            | `LH_C(_lh_spri_LH_C_0_3, _lh_spri_LH_C_1_3) -> 
              (match _lh_spri_LH_C_0_3 with
                | `Lex(_lh_spri_Lex_0_1) -> 
                  (opri_d2 _lh_spri_Lex_0_1)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri_d2 _lh_spri_arg1_3 =
  (match _lh_spri_arg1_3 with
    | `LH_C(_lh_spri_LH_C_0_6, _lh_spri_LH_C_1_6) -> 
      (match _lh_spri_LH_C_0_6 with
        | `Ast(_lh_spri_Ast_0_3) -> 
          (match _lh_spri_LH_C_1_6 with
            | `LH_C(_lh_spri_LH_C_0_7, _lh_spri_LH_C_1_7) -> 
              (match _lh_spri_LH_C_0_7 with
                | `Lex(_lh_spri_Lex_0_3) -> 
                  (opri_d3 _lh_spri_Lex_0_3)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and tautclause_d0 _lh_tautclause_arg1_1 =
  (match _lh_tautclause_arg1_1 with
    | `LH_P2(_lh_tautclause_LH_P2_0_1, _lh_tautclause_LH_P2_1_1) -> 
      ((let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((contains_d0 _lh_listcomp_fun_ls_h_1) _lh_tautclause_LH_P2_1_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_tautclause_LH_P2_0_1)) != (`LH_N))
    | _ -> 
      (failwith "error"))
and testClausify_nofib_d0 _lh_testClausify_nofib_arg1_1 =
  (let rec xs_1_3 = ((copy_d2 _lh_testClausify_nofib_arg1_1) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat_d1 ((map_d1 clauses_d0) xs_1_3)))
and uniclHelper_d0 _lh_uniclHelper_arg1_1 _lh_uniclHelper_arg2_1 =
  (let rec cp_1 = (clause_d0 _lh_uniclHelper_arg1_1) in
    (if (tautclause_d0 cp_1) then
      _lh_uniclHelper_arg2_1
    else
      ((insert_d2 cp_1) _lh_uniclHelper_arg2_1)))
and unicl_d0 _lh_unicl_arg1_1 =
  (((foldr_d0 uniclHelper_d0) (`LH_N)) _lh_unicl_arg1_1);;

(* lumberhack *)
let rec concat_d0_d0 lss_1 =
  (lss_1 99);;
let rec conjunct_d0_d0 _lh_conjunct_arg1_1 =
  (match _lh_conjunct_arg1_1 with
    | `Con(_lh_conjunct_Con_0_1, _lh_conjunct_Con_1_1) -> 
      true
    | _ -> 
      false);;
let rec conjunct_d1_d0 _lh_conjunct_arg1_0 =
  (match _lh_conjunct_arg1_0 with
    | `Con(_lh_conjunct_Con_0_0, _lh_conjunct_Con_1_0) -> 
      true
    | _ -> 
      false);;
let rec contains_d0_d0 _lh_contains_arg1_0 _lh_contains_arg2_0 =
  (match _lh_contains_arg2_0 with
    | `LH_C(_lh_contains_LH_C_0_0, _lh_contains_LH_C_1_0) -> 
      ((_lh_contains_arg1_0 = _lh_contains_LH_C_0_0) || ((contains_d0_d0 _lh_contains_arg1_0) _lh_contains_LH_C_1_0))
    | `LH_N -> 
      false
    | _ -> 
      (Obj.magic 99));;
let rec copy_d0_d0 _lh_copy_arg1_2 _lh_copy_arg2_2 =
  (if (_lh_copy_arg1_2 > 0) then
    (`LH_C(_lh_copy_arg2_2, ((copy_d0_d0 (_lh_copy_arg1_2 - 1)) _lh_copy_arg2_2)))
  else
    (`LH_N));;
let rec copy_d1_d0 _lh_copy_arg1_0 _lh_copy_arg2_0 =
  (if (_lh_copy_arg1_0 > 0) then
    (`LH_C(_lh_copy_arg2_0, ((copy_d1_d0 (_lh_copy_arg1_0 - 1)) _lh_copy_arg2_0)))
  else
    (`LH_N));;
let rec elim_d0_d0 _lh_elim_arg1_0 =
  (match _lh_elim_arg1_0 with
    | `Sym(_lh_elim_Sym_0_0) -> 
      (`Sym(_lh_elim_Sym_0_0))
    | `Not(_lh_elim_Not_0_0) -> 
      (`Not((elim_d0_d0 _lh_elim_Not_0_0)))
    | `Dis(_lh_elim_Dis_0_0, _lh_elim_Dis_1_0) -> 
      (`Dis((elim_d0_d0 _lh_elim_Dis_0_0), (elim_d0_d0 _lh_elim_Dis_1_0)))
    | `Con(_lh_elim_Con_0_0, _lh_elim_Con_1_0) -> 
      (`Con((elim_d0_d0 _lh_elim_Con_0_0), (elim_d0_d0 _lh_elim_Con_1_0)))
    | `Imp(_lh_elim_Imp_0_0, _lh_elim_Imp_1_0) -> 
      (`Dis((`Not((elim_d0_d0 _lh_elim_Imp_0_0))), (elim_d0_d0 _lh_elim_Imp_1_0)))
    | `Eqv(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0) -> 
      (`Con((elim_d0_d0 (`Imp(_lh_elim_Eqv_0_0, _lh_elim_Eqv_1_0))), (elim_d0_d0 (`Imp(_lh_elim_Eqv_1_0, _lh_elim_Eqv_0_0)))))
    | _ -> 
      (Obj.magic 99));;
let rec foldr_d0_d0 f_5 i_1 ls_3 =
  ((ls_3 f_5) i_1);;
let rec insert_d0_d0 _lh_insert_arg1_1 _lh_insert_arg2_1 =
  (match _lh_insert_arg2_1 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_1, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
      (if (_lh_insert_arg1_1 < _lh_insert_LH_C_0_1) then
        (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
      else
        (if (_lh_insert_arg1_1 > _lh_insert_LH_C_0_1) then
          (`LH_C(_lh_insert_LH_C_0_1, ((insert_d0_d0 _lh_insert_arg1_1) _lh_insert_LH_C_1_1)))
        else
          (`LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1))))
    | _ -> 
      (Obj.magic 99));;
let rec insert_d1_d0 _lh_insert_arg1_2 _lh_insert_arg2_2 =
  (match _lh_insert_arg2_2 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_2, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
      (if (_lh_insert_arg1_2 < _lh_insert_LH_C_0_2) then
        (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
      else
        (if (_lh_insert_arg1_2 > _lh_insert_LH_C_0_2) then
          (`LH_C(_lh_insert_LH_C_0_2, ((insert_d1_d0 _lh_insert_arg1_2) _lh_insert_LH_C_1_2)))
        else
          (`LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2))))
    | _ -> 
      (Obj.magic 99));;
let rec insert_d2_d0 _lh_insert_arg1_0 _lh_insert_arg2_0 =
  (match _lh_insert_arg2_0 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_0, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (if (_lh_insert_arg1_0 < _lh_insert_LH_C_0_0) then
        (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
      else
        (if (_lh_insert_arg1_0 > _lh_insert_LH_C_0_0) then
          (`LH_C(_lh_insert_LH_C_0_0, ((insert_d2_d0 _lh_insert_arg1_0) _lh_insert_LH_C_1_0)))
        else
          (`LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0))))
    | _ -> 
      (Obj.magic 99));;
let rec length_d0_d0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      (1 + (length_d0_d0 t_1))
    | `LH_N -> 
      0);;
let rec length_d1_d0 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_7, t_1_7) -> 
      (1 + (length_d1_d0 t_1_7))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0 xs_6 ys_1_9 =
  (xs_6 ys_1_9);;
let rec mappend_d1_d0 xs_2 ys_8 =
  (xs_2 ys_8);;
let rec mappend_d2_d0 xs_1 ys_7 =
  (xs_1 ys_7);;
let rec mappend_d3_d0 xs_4 ys_1_0 =
  (xs_4 ys_1_0);;
let rec mappend_d4_d0 xs_3 ys_9 =
  (match xs_3 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C(h_1_1, ((mappend_d4_d0 t_1_1) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend_d4_d1 xs_5 ys_1_8 =
  (match xs_5 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_d4_d1 t_1_8) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec map_d1_d0 f_0 ls_0 =
  (ls_0 f_0);;
let rec negin_d0_d0 _lh_negin_arg1_0 =
  (match _lh_negin_arg1_0 with
    | `Not(_lh_negin_Not_0_0) -> 
      (match _lh_negin_Not_0_0 with
        | `Not(_lh_negin_Not_0_1) -> 
          (negin_d0_d0 _lh_negin_Not_0_1)
        | `Con(_lh_negin_Con_0_0, _lh_negin_Con_1_0) -> 
          (`Dis((negin_d0_d0 (`Not(_lh_negin_Con_0_0))), (negin_d0_d0 (`Not(_lh_negin_Con_1_0)))))
        | `Dis(_lh_negin_Dis_0_0, _lh_negin_Dis_1_0) -> 
          (`Con((negin_d0_d0 (`Not(_lh_negin_Dis_0_0))), (negin_d0_d0 (`Not(_lh_negin_Dis_1_0)))))
        | _ -> 
          _lh_negin_arg1_0)
    | `Dis(_lh_negin_Dis_0_1, _lh_negin_Dis_1_1) -> 
      (`Dis((negin_d0_d0 _lh_negin_Dis_0_1), (negin_d0_d0 _lh_negin_Dis_1_1)))
    | `Con(_lh_negin_Con_0_1, _lh_negin_Con_1_1) -> 
      (`Con((negin_d0_d0 _lh_negin_Con_0_1), (negin_d0_d0 _lh_negin_Con_1_1)))
    | _ -> 
      _lh_negin_arg1_0);;
let rec opri_d0_d0 _lh_opri_arg1_2 =
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
      (Obj.magic 99));;
let rec opri_d1_d0 _lh_opri_arg1_3 =
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
      (Obj.magic 99));;
let rec opri_d2_d0 _lh_opri_arg1_0 =
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
      (Obj.magic 99));;
let rec opri_d3_d0 _lh_opri_arg1_1 =
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
      (Obj.magic 99));;
let rec red_d0_d0 _lh_red_arg1_2 =
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
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_5, _lh_red_LH_C_1_1_5) -> 
                          (match _lh_red_LH_C_0_1_5 with
                            | `Ast(_lh_red_Ast_0_1_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_2, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_5))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_6, _lh_red_LH_C_1_1_6) -> 
                          (match _lh_red_LH_C_0_1_6 with
                            | `Ast(_lh_red_Ast_0_1_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_3, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_6))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_3 with
                        | `LH_C(_lh_red_LH_C_0_1_7, _lh_red_LH_C_1_1_7) -> 
                          (match _lh_red_LH_C_0_1_7 with
                            | `Ast(_lh_red_Ast_0_1_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_4, _lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_7))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_0)))), _lh_red_LH_C_1_1_3))
                    | _ -> 
                      (Obj.magic 99))
                | _ -> 
                  (Obj.magic 99))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec red_d1_d0 _lh_red_arg1_1 =
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
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '>' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_9, _lh_red_LH_C_1_9) -> 
                          (match _lh_red_LH_C_0_9 with
                            | `Ast(_lh_red_Ast_0_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_7, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_9))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '|' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_0, _lh_red_LH_C_1_1_0) -> 
                          (match _lh_red_LH_C_0_1_0 with
                            | `Ast(_lh_red_Ast_0_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_8, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_0))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '&' -> 
                      (match _lh_red_LH_C_1_7 with
                        | `LH_C(_lh_red_LH_C_0_1_1, _lh_red_LH_C_1_1_1) -> 
                          (match _lh_red_LH_C_0_1_1 with
                            | `Ast(_lh_red_Ast_0_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_9, _lh_red_Ast_0_5)))), _lh_red_LH_C_1_1_1))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_5)))), _lh_red_LH_C_1_7))
                    | _ -> 
                      (Obj.magic 99))
                | _ -> 
                  (Obj.magic 99))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec red_d2_d0 _lh_red_arg1_0 =
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
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_3, _lh_red_LH_C_1_3) -> 
                          (match _lh_red_LH_C_0_3 with
                            | `Ast(_lh_red_Ast_0_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_2, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_3))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_4, _lh_red_LH_C_1_4) -> 
                          (match _lh_red_LH_C_0_4 with
                            | `Ast(_lh_red_Ast_0_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_3, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_4))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1 with
                        | `LH_C(_lh_red_LH_C_0_5, _lh_red_LH_C_1_5) -> 
                          (match _lh_red_LH_C_0_5 with
                            | `Ast(_lh_red_Ast_0_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_4, _lh_red_Ast_0_0)))), _lh_red_LH_C_1_5))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_0)))), _lh_red_LH_C_1_1))
                    | _ -> 
                      (Obj.magic 99))
                | _ -> 
                  (Obj.magic 99))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec while_d0_d0 _lh_while_arg1_0 _lh_while_arg2_0 _lh_while_arg3_0 =
  (if (_lh_while_arg1_0 _lh_while_arg3_0) then
    (((while_d0_d0 _lh_while_arg1_0) _lh_while_arg2_0) (_lh_while_arg2_0 _lh_while_arg3_0))
  else
    _lh_while_arg3_0);;
let rec while_d1_d0 _lh_while_arg1_1 _lh_while_arg2_1 _lh_while_arg3_1 =
  (if (_lh_while_arg1_1 _lh_while_arg3_1) then
    (((while_d1_d0 _lh_while_arg1_1) _lh_while_arg2_1) (_lh_while_arg2_1 _lh_while_arg3_1))
  else
    _lh_while_arg3_1);;
let rec clauseHelper_d0_d0 _lh_clauseHelper_arg1_0 _lh_clauseHelper_arg2_0 =
  (match _lh_clauseHelper_arg1_0 with
    | `Dis(_lh_clauseHelper_Dis_0_0, _lh_clauseHelper_Dis_1_0) -> 
      ((clauseHelper_d0_d0 _lh_clauseHelper_Dis_0_0) ((clauseHelper_d0_d0 _lh_clauseHelper_Dis_1_0) _lh_clauseHelper_arg2_0))
    | `Sym(_lh_clauseHelper_Sym_0_0) -> 
      (match _lh_clauseHelper_arg2_0 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_0, _lh_clauseHelper_LH_P2_1_0) -> 
          (`LH_P2(((insert_d0_d0 _lh_clauseHelper_Sym_0_0) _lh_clauseHelper_LH_P2_0_0), _lh_clauseHelper_LH_P2_1_0))
        | _ -> 
          (Obj.magic 99))
    | `Not(_lh_clauseHelper_Not_0_0) -> 
      (match _lh_clauseHelper_Not_0_0 with
        | `Sym(_lh_clauseHelper_Sym_0_1) -> 
          (match _lh_clauseHelper_arg2_0 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_1, _lh_clauseHelper_LH_P2_1_1) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_1, ((insert_d1_d0 _lh_clauseHelper_Sym_0_1) _lh_clauseHelper_LH_P2_1_1)))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and clauses_d0_d0 _lh_clauses_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    ((fun _lh_funcomp_x_1 -> 
      ((fun _lh_funcomp_x_2 -> 
        ((fun _lh_funcomp_x_3 -> 
          ((fun _lh_funcomp_x_4 -> 
            ((fun _lh_funcomp_x_5 -> 
              ((fun _lh_funcomp_x_6 -> 
                (concat_d0_d0 ((map_d0_d0 disp_d0_d0) _lh_funcomp_x_6))) (unicl_d0_d0 _lh_funcomp_x_5))) (split_d0_d0 _lh_funcomp_x_4))) (disin_d0_d0 _lh_funcomp_x_3))) (negin_d0_d0 _lh_funcomp_x_2))) (elim_d0_d0 _lh_funcomp_x_1))) (parse_d0_d0 _lh_funcomp_x_0))) _lh_clauses_arg1_0)
and clause_d0_d0 _lh_clause_arg1_0 =
  ((clauseHelper_d0_d0 _lh_clause_arg1_0) (`LH_P2((`LH_N), (`LH_N))))
and concat_d1_d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_7, t_7) -> 
      ((mappend_d4_d1 h_7) (concat_d1_d1 t_7))
    | `LH_N -> 
      (`LH_N))
and concat_d1_d1 lss_0 =
  (match lss_0 with
    | `LH_C(h_0, t_0) -> 
      ((mappend_d4_d0 h_0) (concat_d1_d1 t_0))
    | `LH_N -> 
      (`LH_N))
and copy_d2_d0 _lh_copy_arg1_1 _lh_copy_arg2_1 =
  (if (_lh_copy_arg1_1 > 0) then
    (let rec h_8 = _lh_copy_arg2_1 in
      (let rec t_8 = ((copy_d2_d0 (_lh_copy_arg1_1 - 1)) _lh_copy_arg2_1) in
        (fun f_2 -> 
          (`LH_C((f_2 h_8), ((map_d1_d0 f_2) t_8))))))
  else
    (fun f_3 -> 
      (`LH_N)))
and disin_d0_d0 _lh_disin_arg1_0 =
  (match _lh_disin_arg1_0 with
    | `Dis(_lh_disin_Dis_0_0, _lh_disin_Dis_1_0) -> 
      (match _lh_disin_Dis_1_0 with
        | `Con(_lh_disin_Con_0_0, _lh_disin_Con_1_0) -> 
          (`Con((disin_d0_d0 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_0_0))), (disin_d0_d0 (`Dis(_lh_disin_Dis_0_0, _lh_disin_Con_1_0)))))
        | _ -> 
          (match _lh_disin_Dis_0_0 with
            | `Con(_lh_disin_Con_0_1, _lh_disin_Con_1_1) -> 
              (`Con((disin_d0_d0 (`Dis(_lh_disin_Con_0_1, _lh_disin_Dis_1_0))), (disin_d0_d0 (`Dis(_lh_disin_Con_1_1, _lh_disin_Dis_1_0)))))
            | _ -> 
              (let rec dp_0 = (disin_d0_d0 _lh_disin_Dis_0_0) in
                (let rec dq_0 = (disin_d0_d0 _lh_disin_Dis_1_0) in
                  (if ((conjunct_d0_d0 dp_0) || (conjunct_d1_d0 dq_0)) then
                    (disin_d0_d0 (`Dis(dp_0, dq_0)))
                  else
                    (`Dis(dp_0, dq_0)))))))
    | `Con(_lh_disin_Con_0_2, _lh_disin_Con_1_2) -> 
      (`Con((disin_d0_d0 _lh_disin_Con_0_2), (disin_d0_d0 _lh_disin_Con_1_2)))
    | _ -> 
      _lh_disin_arg1_0)
and disp_d0_d0 _lh_disp_arg1_0 =
  (match _lh_disp_arg1_0 with
    | `LH_P2(_lh_disp_LH_P2_0_0, _lh_disp_LH_P2_1_0) -> 
      ((mappend_d1_d0 ((mappend_d2_d0 ((interleave_d0_d0 _lh_disp_LH_P2_0_0) (spaces_d0_d0 (length_d0_d0 _lh_disp_LH_P2_0_0)))) (let rec h_1_2 = '<' in
        (let rec t_1_2 = (let rec h_1_3 = '=' in
          (let rec t_1_3 = (fun ys_1_1 -> 
            ys_1_1) in
            (fun ys_1_2 -> 
              (let rec h_1_4 = h_1_3 in
                (let rec t_1_4 = ((mappend_d1_d0 t_1_3) ys_1_2) in
                  (fun ys_1_3 -> 
                    (`LH_C(h_1_4, ((mappend_d0_d0 t_1_4) ys_1_3))))))))) in
          (fun ys_1_4 -> 
            (let rec h_1_5 = h_1_2 in
              (let rec t_1_5 = ((mappend_d1_d0 t_1_2) ys_1_4) in
                (fun ys_1_5 -> 
                  (`LH_C(h_1_5, ((mappend_d0_d0 t_1_5) ys_1_5))))))))))) ((mappend_d3_d0 ((interleave_d1_d0 (spaces_d1_d0 (length_d1_d0 _lh_disp_LH_P2_1_0))) _lh_disp_LH_P2_1_0)) (let rec h_1_6 = 'n' in
        (let rec t_1_6 = (fun ys_1_6 -> 
          ys_1_6) in
          (fun ys_1_7 -> 
            (`LH_C(h_1_6, ((mappend_d0_d0 t_1_6) ys_1_7))))))))
    | _ -> 
      (Obj.magic 99))
and interleave_d0_d0 _lh_interleave_arg1_0 _lh_interleave_arg2_0 =
  (match _lh_interleave_arg1_0 with
    | `LH_C(_lh_interleave_LH_C_0_0, _lh_interleave_LH_C_1_0) -> 
      (let rec h_2 = _lh_interleave_LH_C_0_0 in
        (let rec t_2 = ((interleave_d0_d0 _lh_interleave_arg2_0) _lh_interleave_LH_C_1_0) in
          (fun ys_0 -> 
            (let rec h_3 = h_2 in
              (let rec t_3 = ((mappend_d2_d0 t_2) ys_0) in
                (fun ys_1 -> 
                  (let rec h_4 = h_3 in
                    (let rec t_4 = ((mappend_d1_d0 t_3) ys_1) in
                      (fun ys_2 -> 
                        (`LH_C(h_4, ((mappend_d0_d0 t_4) ys_2))))))))))))
    | `LH_N -> 
      (fun ys_3 -> 
        ys_3)
    | _ -> 
      (Obj.magic 99))
and interleave_d1_d0 _lh_interleave_arg1_1 _lh_interleave_arg2_1 =
  (match _lh_interleave_arg1_1 with
    | `LH_C(_lh_interleave_LH_C_0_1, _lh_interleave_LH_C_1_1) -> 
      (let rec h_5 = _lh_interleave_LH_C_0_1 in
        (let rec t_5 = ((interleave_d1_d0 _lh_interleave_arg2_1) _lh_interleave_LH_C_1_1) in
          (fun ys_4 -> 
            (let rec h_6 = h_5 in
              (let rec t_6 = ((mappend_d3_d0 t_5) ys_4) in
                (fun ys_5 -> 
                  (`LH_C(h_6, ((mappend_d0_d0 t_6) ys_5)))))))))
    | `LH_N -> 
      (fun ys_6 -> 
        ys_6)
    | _ -> 
      (Obj.magic 99))
and map_d0_d0 f_4 ls_2 =
  (match ls_2 with
    | `LH_C(h_9, t_9) -> 
      (let rec h_1_0 = (f_4 h_9) in
        (let rec t_1_0 = ((map_d0_d0 f_4) t_9) in
          (fun _lh_dummy_0 -> 
            ((mappend_d0_d0 h_1_0) (concat_d0_d0 t_1_0)))))
    | `LH_N -> 
      (fun _lh_dummy_1 -> 
        (`LH_N)))
and parseHelper_d0_d0 _lh_parseHelper_arg1_0 _lh_parseHelper_arg2_0 =
  (match _lh_parseHelper_arg1_0 with
    | `LH_N -> 
      (redstar_d0_d0 _lh_parseHelper_arg2_0)
    | `LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0) -> 
      (match _lh_parseHelper_LH_C_0_0 with
        | ' ' -> 
          ((parseHelper_d0_d0 _lh_parseHelper_LH_C_1_0) _lh_parseHelper_arg2_0)
        | '(' -> 
          ((parseHelper_d0_d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_0)))
        | ')' -> 
          (let rec _lh_matchIdent_0 = (redstar_d1_d0 _lh_parseHelper_arg2_0) in
            (match _lh_matchIdent_0 with
              | `LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_1) -> 
                (match _lh_parseHelper_LH_C_1_1 with
                  | `LH_C(_lh_parseHelper_LH_C_0_2, _lh_parseHelper_LH_C_1_2) -> 
                    (match _lh_parseHelper_LH_C_0_2 with
                      | `Lex(_lh_parseHelper_Lex_0_0) -> 
                        (match _lh_parseHelper_Lex_0_0 with
                          | '(' -> 
                            ((parseHelper_d0_d0 _lh_parseHelper_LH_C_1_0) (`LH_C(_lh_parseHelper_LH_C_0_1, _lh_parseHelper_LH_C_1_2)))
                          | _ -> 
                            (Obj.magic 99))
                      | _ -> 
                        (Obj.magic 99))
                  | _ -> 
                    (Obj.magic 99))
              | _ -> 
                (Obj.magic 99)))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_0) && (_lh_parseHelper_LH_C_0_0 <= 'z')) then
            ((parseHelper_d0_d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_0)))), _lh_parseHelper_arg2_0)))
          else
            (if ((spri_d2_d0 _lh_parseHelper_arg2_0) > (opri_d0_d0 _lh_parseHelper_LH_C_0_0)) then
              ((parseHelper_d0_d0 (`LH_C(_lh_parseHelper_LH_C_0_0, _lh_parseHelper_LH_C_1_0))) (red_d0_d0 _lh_parseHelper_arg2_0))
            else
              ((parseHelper_d0_d0 _lh_parseHelper_LH_C_1_0) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_0)), _lh_parseHelper_arg2_0))))))
    | _ -> 
      (Obj.magic 99))
and parse_d0_d0 _lh_parse_arg1_0 =
  (let rec _lh_matchIdent_1 = ((parseHelper_d0_d0 _lh_parse_arg1_0) (`LH_N)) in
    (match _lh_matchIdent_1 with
      | `LH_C(_lh_parse_LH_C_0_0, _lh_parse_LH_C_1_0) -> 
        (match _lh_parse_LH_C_0_0 with
          | `Ast(_lh_parse_Ast_0_0) -> 
            (match _lh_parse_LH_C_1_0 with
              | `LH_N -> 
                _lh_parse_Ast_0_0
              | _ -> 
                (Obj.magic 99))
          | _ -> 
            (Obj.magic 99))
      | _ -> 
        (Obj.magic 99)))
and redstar_d0_d0 _lh_redstar_arg1_1 =
  (((while_d0_d0 (fun _lh_funcomp_x_8 -> 
    (0 != (spri_d0_d0 _lh_funcomp_x_8)))) red_d1_d0) _lh_redstar_arg1_1)
and redstar_d1_d0 _lh_redstar_arg1_0 =
  (((while_d1_d0 (fun _lh_funcomp_x_7 -> 
    (0 != (spri_d1_d0 _lh_funcomp_x_7)))) red_d2_d0) _lh_redstar_arg1_0)
and spaces_d0_d0 _lh_spaces_arg1_0 =
  ((copy_d0_d0 _lh_spaces_arg1_0) ' ')
and spaces_d1_d0 _lh_spaces_arg1_1 =
  ((copy_d1_d0 _lh_spaces_arg1_1) ' ')
and splitHelper_d0_d0 _lh_splitHelper_arg1_0 _lh_splitHelper_arg2_0 =
  (match _lh_splitHelper_arg1_0 with
    | `Con(_lh_splitHelper_Con_0_0, _lh_splitHelper_Con_1_0) -> 
      ((splitHelper_d0_d0 _lh_splitHelper_Con_0_0) ((splitHelper_d0_d0 _lh_splitHelper_Con_1_0) _lh_splitHelper_arg2_0))
    | _ -> 
      (let rec h_1_9 = _lh_splitHelper_arg1_0 in
        (let rec t_1_9 = _lh_splitHelper_arg2_0 in
          (fun f_6 i_2 -> 
            ((f_6 h_1_9) (((foldr_d0_d0 f_6) i_2) t_1_9))))))
and split_d0_d0 _lh_split_arg1_0 =
  ((splitHelper_d0_d0 _lh_split_arg1_0) (fun f_1 i_0 -> 
    i_0))
and spri_d0_d0 _lh_spri_arg1_0 =
  (match _lh_spri_arg1_0 with
    | `LH_C(_lh_spri_LH_C_0_0, _lh_spri_LH_C_1_0) -> 
      (match _lh_spri_LH_C_0_0 with
        | `Ast(_lh_spri_Ast_0_0) -> 
          (match _lh_spri_LH_C_1_0 with
            | `LH_C(_lh_spri_LH_C_0_1, _lh_spri_LH_C_1_1) -> 
              (match _lh_spri_LH_C_0_1 with
                | `Lex(_lh_spri_Lex_0_0) -> 
                  (opri_d1_d0 _lh_spri_Lex_0_0)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri_d1_d0 _lh_spri_arg1_2 =
  (match _lh_spri_arg1_2 with
    | `LH_C(_lh_spri_LH_C_0_4, _lh_spri_LH_C_1_4) -> 
      (match _lh_spri_LH_C_0_4 with
        | `Ast(_lh_spri_Ast_0_2) -> 
          (match _lh_spri_LH_C_1_4 with
            | `LH_C(_lh_spri_LH_C_0_5, _lh_spri_LH_C_1_5) -> 
              (match _lh_spri_LH_C_0_5 with
                | `Lex(_lh_spri_Lex_0_2) -> 
                  (opri_d2_d0 _lh_spri_Lex_0_2)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri_d2_d0 _lh_spri_arg1_1 =
  (match _lh_spri_arg1_1 with
    | `LH_C(_lh_spri_LH_C_0_2, _lh_spri_LH_C_1_2) -> 
      (match _lh_spri_LH_C_0_2 with
        | `Ast(_lh_spri_Ast_0_1) -> 
          (match _lh_spri_LH_C_1_2 with
            | `LH_C(_lh_spri_LH_C_0_3, _lh_spri_LH_C_1_3) -> 
              (match _lh_spri_LH_C_0_3 with
                | `Lex(_lh_spri_Lex_0_1) -> 
                  (opri_d3_d0 _lh_spri_Lex_0_1)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and tautclause_d0_d0 _lh_tautclause_arg1_0 =
  (match _lh_tautclause_arg1_0 with
    | `LH_P2(_lh_tautclause_LH_P2_0_0, _lh_tautclause_LH_P2_1_0) -> 
      ((let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
        (match _lh_listcomp_fun_para_0 with
          | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
            (if ((contains_d0_d0 _lh_listcomp_fun_ls_h_0) _lh_tautclause_LH_P2_1_0) then
              (`LH_C(_lh_listcomp_fun_ls_h_0, (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0)))
            else
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_0 _lh_tautclause_LH_P2_0_0)) != (`LH_N))
    | _ -> 
      (Obj.magic 99))
and testClausify_nofib_d0_d0 _lh_testClausify_nofib_arg1_0 =
  (let rec xs_0 = ((copy_d2_d0 _lh_testClausify_nofib_arg1_0) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat_d1_d0 ((map_d1_d0 clauses_d0_d0) xs_0)))
and uniclHelper_d0_d0 _lh_uniclHelper_arg1_0 _lh_uniclHelper_arg2_0 =
  (let rec cp_0 = (clause_d0_d0 _lh_uniclHelper_arg1_0) in
    (if (tautclause_d0_d0 cp_0) then
      _lh_uniclHelper_arg2_0
    else
      ((insert_d2_d0 cp_0) _lh_uniclHelper_arg2_0)))
and unicl_d0_d0 _lh_unicl_arg1_0 =
  (((foldr_d0_d0 uniclHelper_d0_d0) (`LH_N)) _lh_unicl_arg1_0);;

(* lumberhack_pop_out *)
let rec concat_d0_d0_d0 lss_5 =
  (lss_5 99);;
let rec concat_d0_d0_d1 lss_4 =
  (lss_4 99);;
let rec conjunct_d0_d0_d0 _lh_conjunct_arg1_3 =
  (match _lh_conjunct_arg1_3 with
    | `Con(_lh_conjunct_Con_0_3, _lh_conjunct_Con_1_3) -> 
      true
    | _ -> 
      false);;
let rec conjunct_d1_d0_d0 _lh_conjunct_arg1_2 =
  (match _lh_conjunct_arg1_2 with
    | `Con(_lh_conjunct_Con_0_2, _lh_conjunct_Con_1_2) -> 
      true
    | _ -> 
      false);;
let rec contains_d0_d0_d0 _lh_contains_arg1_1 _lh_contains_arg2_1 =
  (match _lh_contains_arg2_1 with
    | `LH_C(_lh_contains_LH_C_0_1, _lh_contains_LH_C_1_1) -> 
      ((_lh_contains_arg1_1 = _lh_contains_LH_C_0_1) || ((contains_d0_d0_d0 _lh_contains_arg1_1) _lh_contains_LH_C_1_1))
    | `LH_N -> 
      false
    | _ -> 
      (Obj.magic 99));;
let rec copy_d0_d0_d0 _lh_copy_arg1_4 _lh_copy_arg2_4 =
  (if (_lh_copy_arg1_4 > 0) then
    (`LH_C(_lh_copy_arg2_4, ((copy_d0_d0_d0 (_lh_copy_arg1_4 - 1)) _lh_copy_arg2_4)))
  else
    (`LH_N));;
let rec copy_d1_d0_d0 _lh_copy_arg1_5 _lh_copy_arg2_5 =
  (if (_lh_copy_arg1_5 > 0) then
    (`LH_C(_lh_copy_arg2_5, ((copy_d1_d0_d0 (_lh_copy_arg1_5 - 1)) _lh_copy_arg2_5)))
  else
    (`LH_N));;
let rec elim_d0_d0_d0 _lh_elim_arg1_1 =
  (match _lh_elim_arg1_1 with
    | `Sym(_lh_elim_Sym_0_1) -> 
      (`Sym(_lh_elim_Sym_0_1))
    | `Not(_lh_elim_Not_0_1) -> 
      (`Not((elim_d0_d0_d0 _lh_elim_Not_0_1)))
    | `Dis(_lh_elim_Dis_0_1, _lh_elim_Dis_1_1) -> 
      (`Dis((elim_d0_d0_d0 _lh_elim_Dis_0_1), (elim_d0_d0_d0 _lh_elim_Dis_1_1)))
    | `Con(_lh_elim_Con_0_1, _lh_elim_Con_1_1) -> 
      (`Con((elim_d0_d0_d0 _lh_elim_Con_0_1), (elim_d0_d0_d0 _lh_elim_Con_1_1)))
    | `Imp(_lh_elim_Imp_0_1, _lh_elim_Imp_1_1) -> 
      (`Dis((`Not((elim_d0_d0_d0 _lh_elim_Imp_0_1))), (elim_d0_d0_d0 _lh_elim_Imp_1_1)))
    | `Eqv(_lh_elim_Eqv_0_1, _lh_elim_Eqv_1_1) -> 
      (`Con((elim_d0_d0_d0 (`Imp(_lh_elim_Eqv_0_1, _lh_elim_Eqv_1_1))), (elim_d0_d0_d0 (`Imp(_lh_elim_Eqv_1_1, _lh_elim_Eqv_0_1)))))
    | _ -> 
      (Obj.magic 99));;
let rec foldr_d0_d0_d0 f_1_4 i_5 ls_1_0 =
  ((ls_1_0 f_1_4) i_5);;
let rec foldr_d0_d0_d1 f_1_1 i_3 ls_7 =
  ((ls_7 f_1_1) i_3);;
let rec insert_d0_d0_d0 _lh_insert_arg1_5 _lh_insert_arg2_5 =
  (match _lh_insert_arg2_5 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_5, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_5, _lh_insert_LH_C_1_5) -> 
      (if (_lh_insert_arg1_5 < _lh_insert_LH_C_0_5) then
        (`LH_C(_lh_insert_arg1_5, (`LH_C(_lh_insert_LH_C_0_5, _lh_insert_LH_C_1_5))))
      else
        (if (_lh_insert_arg1_5 > _lh_insert_LH_C_0_5) then
          (`LH_C(_lh_insert_LH_C_0_5, ((insert_d0_d0_d0 _lh_insert_arg1_5) _lh_insert_LH_C_1_5)))
        else
          (`LH_C(_lh_insert_LH_C_0_5, _lh_insert_LH_C_1_5))))
    | _ -> 
      (Obj.magic 99));;
let rec insert_d1_d0_d0 _lh_insert_arg1_3 _lh_insert_arg2_3 =
  (match _lh_insert_arg2_3 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_3, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3) -> 
      (if (_lh_insert_arg1_3 < _lh_insert_LH_C_0_3) then
        (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3))))
      else
        (if (_lh_insert_arg1_3 > _lh_insert_LH_C_0_3) then
          (`LH_C(_lh_insert_LH_C_0_3, ((insert_d1_d0_d0 _lh_insert_arg1_3) _lh_insert_LH_C_1_3)))
        else
          (`LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3))))
    | _ -> 
      (Obj.magic 99));;
let rec insert_d2_d0_d0 _lh_insert_arg1_4 _lh_insert_arg2_4 =
  (match _lh_insert_arg2_4 with
    | `LH_N -> 
      (`LH_C(_lh_insert_arg1_4, (`LH_N)))
    | `LH_C(_lh_insert_LH_C_0_4, _lh_insert_LH_C_1_4) -> 
      (if (_lh_insert_arg1_4 < _lh_insert_LH_C_0_4) then
        (`LH_C(_lh_insert_arg1_4, (`LH_C(_lh_insert_LH_C_0_4, _lh_insert_LH_C_1_4))))
      else
        (if (_lh_insert_arg1_4 > _lh_insert_LH_C_0_4) then
          (`LH_C(_lh_insert_LH_C_0_4, ((insert_d2_d0_d0 _lh_insert_arg1_4) _lh_insert_LH_C_1_4)))
        else
          (`LH_C(_lh_insert_LH_C_0_4, _lh_insert_LH_C_1_4))))
    | _ -> 
      (Obj.magic 99));;
let rec length_d0_d0_d0 ls_9 =
  (match ls_9 with
    | `LH_C(h_3_7, t_3_7) -> 
      (1 + (length_d0_d0_d0 t_3_7))
    | `LH_N -> 
      0);;
let rec length_d1_d0_d0 ls_1_1 =
  (match ls_1_1 with
    | `LH_C(h_3_8, t_3_8) -> 
      (1 + (length_d1_d0_d0 t_3_8))
    | `LH_N -> 
      0);;
let rec mappend_d0_d0_d0 xs_1_5 ys_3_9 =
  (xs_1_5 ys_3_9);;
let rec mappend_d0_d0_d1 xs_1_9 ys_4_5 =
  (xs_1_9 ys_4_5);;
let rec mappend_d0_d0_d2 xs_1_0 ys_2_7 =
  (xs_1_0 ys_2_7);;
let rec mappend_d0_d0_d3 xs_1_6 ys_4_0 =
  (xs_1_6 ys_4_0);;
let rec mappend_d0_d0_d4 xs_2_1 ys_4_7 =
  (xs_2_1 ys_4_7);;
let rec mappend_d0_d0_d5 xs_1_4 ys_3_1 =
  (xs_1_4 ys_3_1);;
let rec mappend_d1_d0_d0 xs_2_3 ys_4_9 =
  (xs_2_3 ys_4_9);;
let rec mappend_d1_d0_d1 xs_7 ys_2_0 =
  (xs_7 ys_2_0);;
let rec mappend_d1_d0_d2 xs_2_0 ys_4_6 =
  (xs_2_0 ys_4_6);;
let rec mappend_d1_d0_d3 xs_1_1 ys_2_8 =
  (xs_1_1 ys_2_8);;
let rec mappend_d2_d0_d0 xs_2_2 ys_4_8 =
  (xs_2_2 ys_4_8);;
let rec mappend_d2_d0_d1 xs_8 ys_2_1 =
  (xs_8 ys_2_1);;
let rec mappend_d3_d0_d0 xs_1_2 ys_2_9 =
  (xs_1_2 ys_2_9);;
let rec mappend_d3_d0_d1 xs_1_3 ys_3_0 =
  (xs_1_3 ys_3_0);;
let rec mappend_d4_d0_d0 xs_1_7 ys_4_4 =
  (match xs_1_7 with
    | `LH_C(h_3_6, t_3_6) -> 
      (`LH_C(h_3_6, ((mappend_d4_d0_d0 t_3_6) ys_4_4)))
    | `LH_N -> 
      ys_4_4);;
let rec mappend_d4_d1_d0 xs_9 ys_2_2 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_d4_d1_d0 t_2_1) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec map_d1_d0_d0 f_1_3 ls_8 =
  (ls_8 f_1_3);;
let rec map_d1_d0_d1 f_7 ls_5 =
  (ls_5 f_7);;
let rec negin_d0_d0_d0 _lh_negin_arg1_1 =
  (match _lh_negin_arg1_1 with
    | `Not(_lh_negin_Not_0_2) -> 
      (match _lh_negin_Not_0_2 with
        | `Not(_lh_negin_Not_0_3) -> 
          (negin_d0_d0_d0 _lh_negin_Not_0_3)
        | `Con(_lh_negin_Con_0_2, _lh_negin_Con_1_2) -> 
          (`Dis((negin_d0_d0_d0 (`Not(_lh_negin_Con_0_2))), (negin_d0_d0_d0 (`Not(_lh_negin_Con_1_2)))))
        | `Dis(_lh_negin_Dis_0_2, _lh_negin_Dis_1_2) -> 
          (`Con((negin_d0_d0_d0 (`Not(_lh_negin_Dis_0_2))), (negin_d0_d0_d0 (`Not(_lh_negin_Dis_1_2)))))
        | _ -> 
          _lh_negin_arg1_1)
    | `Dis(_lh_negin_Dis_0_3, _lh_negin_Dis_1_3) -> 
      (`Dis((negin_d0_d0_d0 _lh_negin_Dis_0_3), (negin_d0_d0_d0 _lh_negin_Dis_1_3)))
    | `Con(_lh_negin_Con_0_3, _lh_negin_Con_1_3) -> 
      (`Con((negin_d0_d0_d0 _lh_negin_Con_0_3), (negin_d0_d0_d0 _lh_negin_Con_1_3)))
    | _ -> 
      _lh_negin_arg1_1);;
let rec opri_d0_d0_d0 _lh_opri_arg1_7 =
  (match _lh_opri_arg1_7 with
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
      (Obj.magic 99));;
let rec opri_d1_d0_d0 _lh_opri_arg1_6 =
  (match _lh_opri_arg1_6 with
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
      (Obj.magic 99));;
let rec opri_d2_d0_d0 _lh_opri_arg1_5 =
  (match _lh_opri_arg1_5 with
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
      (Obj.magic 99));;
let rec opri_d3_d0_d0 _lh_opri_arg1_4 =
  (match _lh_opri_arg1_4 with
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
      (Obj.magic 99));;
let rec red_d0_d0_d0 _lh_red_arg1_5 =
  (match _lh_red_arg1_5 with
    | `LH_C(_lh_red_LH_C_0_3_0, _lh_red_LH_C_1_3_0) -> 
      (match _lh_red_LH_C_0_3_0 with
        | `Ast(_lh_red_Ast_0_2_5) -> 
          (match _lh_red_LH_C_1_3_0 with
            | `LH_C(_lh_red_LH_C_0_3_1, _lh_red_LH_C_1_3_1) -> 
              (match _lh_red_LH_C_0_3_1 with
                | `Lex(_lh_red_Lex_0_5) -> 
                  (match _lh_red_Lex_0_5 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_3_1 with
                        | `LH_C(_lh_red_LH_C_0_3_2, _lh_red_LH_C_1_3_2) -> 
                          (match _lh_red_LH_C_0_3_2 with
                            | `Ast(_lh_red_Ast_0_2_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_2_6, _lh_red_Ast_0_2_5)))), _lh_red_LH_C_1_3_2))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '>' -> 
                      (match _lh_red_LH_C_1_3_1 with
                        | `LH_C(_lh_red_LH_C_0_3_3, _lh_red_LH_C_1_3_3) -> 
                          (match _lh_red_LH_C_0_3_3 with
                            | `Ast(_lh_red_Ast_0_2_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_2_7, _lh_red_Ast_0_2_5)))), _lh_red_LH_C_1_3_3))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '|' -> 
                      (match _lh_red_LH_C_1_3_1 with
                        | `LH_C(_lh_red_LH_C_0_3_4, _lh_red_LH_C_1_3_4) -> 
                          (match _lh_red_LH_C_0_3_4 with
                            | `Ast(_lh_red_Ast_0_2_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_2_8, _lh_red_Ast_0_2_5)))), _lh_red_LH_C_1_3_4))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '&' -> 
                      (match _lh_red_LH_C_1_3_1 with
                        | `LH_C(_lh_red_LH_C_0_3_5, _lh_red_LH_C_1_3_5) -> 
                          (match _lh_red_LH_C_0_3_5 with
                            | `Ast(_lh_red_Ast_0_2_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_2_9, _lh_red_Ast_0_2_5)))), _lh_red_LH_C_1_3_5))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_2_5)))), _lh_red_LH_C_1_3_1))
                    | _ -> 
                      (Obj.magic 99))
                | _ -> 
                  (Obj.magic 99))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec red_d1_d0_d0 _lh_red_arg1_3 =
  (match _lh_red_arg1_3 with
    | `LH_C(_lh_red_LH_C_0_1_8, _lh_red_LH_C_1_1_8) -> 
      (match _lh_red_LH_C_0_1_8 with
        | `Ast(_lh_red_Ast_0_1_5) -> 
          (match _lh_red_LH_C_1_1_8 with
            | `LH_C(_lh_red_LH_C_0_1_9, _lh_red_LH_C_1_1_9) -> 
              (match _lh_red_LH_C_0_1_9 with
                | `Lex(_lh_red_Lex_0_3) -> 
                  (match _lh_red_Lex_0_3 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_0, _lh_red_LH_C_1_2_0) -> 
                          (match _lh_red_LH_C_0_2_0 with
                            | `Ast(_lh_red_Ast_0_1_6) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_1_6, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_0))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '>' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_1, _lh_red_LH_C_1_2_1) -> 
                          (match _lh_red_LH_C_0_2_1 with
                            | `Ast(_lh_red_Ast_0_1_7) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_1_7, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_1))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '|' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_2, _lh_red_LH_C_1_2_2) -> 
                          (match _lh_red_LH_C_0_2_2 with
                            | `Ast(_lh_red_Ast_0_1_8) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_1_8, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_2))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '&' -> 
                      (match _lh_red_LH_C_1_1_9 with
                        | `LH_C(_lh_red_LH_C_0_2_3, _lh_red_LH_C_1_2_3) -> 
                          (match _lh_red_LH_C_0_2_3 with
                            | `Ast(_lh_red_Ast_0_1_9) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_1_9, _lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_2_3))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_1_5)))), _lh_red_LH_C_1_1_9))
                    | _ -> 
                      (Obj.magic 99))
                | _ -> 
                  (Obj.magic 99))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec red_d2_d0_d0 _lh_red_arg1_4 =
  (match _lh_red_arg1_4 with
    | `LH_C(_lh_red_LH_C_0_2_4, _lh_red_LH_C_1_2_4) -> 
      (match _lh_red_LH_C_0_2_4 with
        | `Ast(_lh_red_Ast_0_2_0) -> 
          (match _lh_red_LH_C_1_2_4 with
            | `LH_C(_lh_red_LH_C_0_2_5, _lh_red_LH_C_1_2_5) -> 
              (match _lh_red_LH_C_0_2_5 with
                | `Lex(_lh_red_Lex_0_4) -> 
                  (match _lh_red_Lex_0_4 with
                    | '=' -> 
                      (match _lh_red_LH_C_1_2_5 with
                        | `LH_C(_lh_red_LH_C_0_2_6, _lh_red_LH_C_1_2_6) -> 
                          (match _lh_red_LH_C_0_2_6 with
                            | `Ast(_lh_red_Ast_0_2_1) -> 
                              (`LH_C((`Ast((`Eqv(_lh_red_Ast_0_2_1, _lh_red_Ast_0_2_0)))), _lh_red_LH_C_1_2_6))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '>' -> 
                      (match _lh_red_LH_C_1_2_5 with
                        | `LH_C(_lh_red_LH_C_0_2_7, _lh_red_LH_C_1_2_7) -> 
                          (match _lh_red_LH_C_0_2_7 with
                            | `Ast(_lh_red_Ast_0_2_2) -> 
                              (`LH_C((`Ast((`Imp(_lh_red_Ast_0_2_2, _lh_red_Ast_0_2_0)))), _lh_red_LH_C_1_2_7))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '|' -> 
                      (match _lh_red_LH_C_1_2_5 with
                        | `LH_C(_lh_red_LH_C_0_2_8, _lh_red_LH_C_1_2_8) -> 
                          (match _lh_red_LH_C_0_2_8 with
                            | `Ast(_lh_red_Ast_0_2_3) -> 
                              (`LH_C((`Ast((`Dis(_lh_red_Ast_0_2_3, _lh_red_Ast_0_2_0)))), _lh_red_LH_C_1_2_8))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '&' -> 
                      (match _lh_red_LH_C_1_2_5 with
                        | `LH_C(_lh_red_LH_C_0_2_9, _lh_red_LH_C_1_2_9) -> 
                          (match _lh_red_LH_C_0_2_9 with
                            | `Ast(_lh_red_Ast_0_2_4) -> 
                              (`LH_C((`Ast((`Con(_lh_red_Ast_0_2_4, _lh_red_Ast_0_2_0)))), _lh_red_LH_C_1_2_9))
                            | _ -> 
                              (Obj.magic 99))
                        | _ -> 
                          (Obj.magic 99))
                    | '~' -> 
                      (`LH_C((`Ast((`Not(_lh_red_Ast_0_2_0)))), _lh_red_LH_C_1_2_5))
                    | _ -> 
                      (Obj.magic 99))
                | _ -> 
                  (Obj.magic 99))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99));;
let rec while_d0_d0_d0 _lh_while_arg1_3 _lh_while_arg2_3 _lh_while_arg3_3 =
  (if (_lh_while_arg1_3 _lh_while_arg3_3) then
    (((while_d0_d0_d0 _lh_while_arg1_3) _lh_while_arg2_3) (_lh_while_arg2_3 _lh_while_arg3_3))
  else
    _lh_while_arg3_3);;
let rec while_d1_d0_d0 _lh_while_arg1_2 _lh_while_arg2_2 _lh_while_arg3_2 =
  (if (_lh_while_arg1_2 _lh_while_arg3_2) then
    (((while_d1_d0_d0 _lh_while_arg1_2) _lh_while_arg2_2) (_lh_while_arg2_2 _lh_while_arg3_2))
  else
    _lh_while_arg3_2);;
let rec clauseHelper_d0_d0_d0 _lh_clauseHelper_arg1_1 _lh_clauseHelper_arg2_1 =
  (match _lh_clauseHelper_arg1_1 with
    | `Dis(_lh_clauseHelper_Dis_0_1, _lh_clauseHelper_Dis_1_1) -> 
      ((clauseHelper_d0_d0_d0 _lh_clauseHelper_Dis_0_1) ((clauseHelper_d0_d0_d0 _lh_clauseHelper_Dis_1_1) _lh_clauseHelper_arg2_1))
    | `Sym(_lh_clauseHelper_Sym_0_2) -> 
      (match _lh_clauseHelper_arg2_1 with
        | `LH_P2(_lh_clauseHelper_LH_P2_0_2, _lh_clauseHelper_LH_P2_1_2) -> 
          (`LH_P2(((insert_d0_d0_d0 _lh_clauseHelper_Sym_0_2) _lh_clauseHelper_LH_P2_0_2), _lh_clauseHelper_LH_P2_1_2))
        | _ -> 
          (Obj.magic 99))
    | `Not(_lh_clauseHelper_Not_0_1) -> 
      (match _lh_clauseHelper_Not_0_1 with
        | `Sym(_lh_clauseHelper_Sym_0_3) -> 
          (match _lh_clauseHelper_arg2_1 with
            | `LH_P2(_lh_clauseHelper_LH_P2_0_3, _lh_clauseHelper_LH_P2_1_3) -> 
              (`LH_P2(_lh_clauseHelper_LH_P2_0_3, ((insert_d1_d0_d0 _lh_clauseHelper_Sym_0_3) _lh_clauseHelper_LH_P2_1_3)))
            | _ -> 
              (Obj.magic 99))
        | _ -> 
          (Obj.magic 99))
    | _ -> 
      (Obj.magic 99))
and clauses_d0_d0_d0 _lh_clauses_arg1_1 =
  ((fun _lh_funcomp_x_1_0 -> 
    ((fun _lh_funcomp_x_1_1 -> 
      ((fun _lh_funcomp_x_1_2 -> 
        ((fun _lh_funcomp_x_1_3 -> 
          ((fun _lh_funcomp_x_1_4 -> 
            ((fun _lh_funcomp_x_1_5 -> 
              ((fun _lh_funcomp_x_1_6 -> 
                (concat_d0_d0_d0 ((map_d0_d0_d0 disp_d0_d0_d0) _lh_funcomp_x_1_6))) (unicl_d0_d0_d0 _lh_funcomp_x_1_5))) (split_d0_d0_d0 _lh_funcomp_x_1_4))) (disin_d0_d0_d0 _lh_funcomp_x_1_3))) (negin_d0_d0_d0 _lh_funcomp_x_1_2))) (elim_d0_d0_d0 _lh_funcomp_x_1_1))) (parse_d0_d0_d0 _lh_funcomp_x_1_0))) _lh_clauses_arg1_1)
and clause_d0_d0_d0 _lh_clause_arg1_1 =
  ((clauseHelper_d0_d0_d0 _lh_clause_arg1_1) (`LH_P2((`LH_N), (`LH_N))))
and concat_d1_d0_d0 lss_3 =
  (match lss_3 with
    | `LH_C(h_2_7, t_2_7) -> 
      ((mappend_d4_d1_d0 h_2_7) (concat_d1_d1_d0 t_2_7))
    | `LH_N -> 
      (`LH_N))
and concat_d1_d1_d0 lss_6 =
  (match lss_6 with
    | `LH_C(h_3_9, t_3_9) -> 
      ((mappend_d4_d0_d0 h_3_9) (concat_d1_d1_d0 t_3_9))
    | `LH_N -> 
      (`LH_N))
and copy_d2_d0_d0 _lh_copy_arg1_3 _lh_copy_arg2_3 _lh_popOutId_0_0 =
  (if (_lh_copy_arg1_3 > 0) then
    (let rec h_2_0 = _lh_copy_arg2_3 in
      (let rec t_2_0 = ((copy_d2_d0_d0 (_lh_copy_arg1_3 - 1)) _lh_copy_arg2_3) in
        (`LH_C((_lh_popOutId_0_0 h_2_0), ((map_d1_d0_d0 _lh_popOutId_0_0) t_2_0)))))
  else
    (`LH_N))
and disin_d0_d0_d0 _lh_disin_arg1_1 =
  (match _lh_disin_arg1_1 with
    | `Dis(_lh_disin_Dis_0_1, _lh_disin_Dis_1_1) -> 
      (match _lh_disin_Dis_1_1 with
        | `Con(_lh_disin_Con_0_3, _lh_disin_Con_1_3) -> 
          (`Con((disin_d0_d0_d0 (`Dis(_lh_disin_Dis_0_1, _lh_disin_Con_0_3))), (disin_d0_d0_d0 (`Dis(_lh_disin_Dis_0_1, _lh_disin_Con_1_3)))))
        | _ -> 
          (match _lh_disin_Dis_0_1 with
            | `Con(_lh_disin_Con_0_4, _lh_disin_Con_1_4) -> 
              (`Con((disin_d0_d0_d0 (`Dis(_lh_disin_Con_0_4, _lh_disin_Dis_1_1))), (disin_d0_d0_d0 (`Dis(_lh_disin_Con_1_4, _lh_disin_Dis_1_1)))))
            | _ -> 
              (let rec dp_1 = (disin_d0_d0_d0 _lh_disin_Dis_0_1) in
                (let rec dq_1 = (disin_d0_d0_d0 _lh_disin_Dis_1_1) in
                  (if ((conjunct_d0_d0_d0 dp_1) || (conjunct_d1_d0_d0 dq_1)) then
                    (disin_d0_d0_d0 (`Dis(dp_1, dq_1)))
                  else
                    (`Dis(dp_1, dq_1)))))))
    | `Con(_lh_disin_Con_0_5, _lh_disin_Con_1_5) -> 
      (`Con((disin_d0_d0_d0 _lh_disin_Con_0_5), (disin_d0_d0_d0 _lh_disin_Con_1_5)))
    | _ -> 
      _lh_disin_arg1_1)
and disp_d0_d0_d0 _lh_disp_arg1_1 =
  (match _lh_disp_arg1_1 with
    | `LH_P2(_lh_disp_LH_P2_0_1, _lh_disp_LH_P2_1_1) -> 
      ((mappend_d1_d0_d1 ((mappend_d2_d0_d1 ((interleave_d0_d0_d0 _lh_disp_LH_P2_0_1) (spaces_d0_d0_d0 (length_d0_d0_d0 _lh_disp_LH_P2_0_1)))) (let rec h_2_9 = '<' in
        (let rec t_2_9 = (let rec h_3_0 = '=' in
          (let rec t_3_0 = (fun ys_3_2 -> 
            ys_3_2) in
            (fun ys_3_3 -> 
              (let rec h_3_1 = h_3_0 in
                (let rec t_3_1 = ((mappend_d1_d0_d2 t_3_0) ys_3_3) in
                  (fun ys_3_4 -> 
                    (`LH_C(h_3_1, ((mappend_d0_d0_d2 t_3_1) ys_3_4))))))))) in
          (fun ys_3_5 -> 
            (let rec h_3_2 = h_2_9 in
              (let rec t_3_2 = ((mappend_d1_d0_d3 t_2_9) ys_3_5) in
                (fun ys_3_6 -> 
                  (`LH_C(h_3_2, ((mappend_d0_d0_d3 t_3_2) ys_3_6))))))))))) ((mappend_d3_d0_d1 ((interleave_d1_d0_d0 (spaces_d1_d0_d0 (length_d1_d0_d0 _lh_disp_LH_P2_1_1))) _lh_disp_LH_P2_1_1)) (let rec h_3_3 = 'n' in
        (let rec t_3_3 = (fun ys_3_7 -> 
          ys_3_7) in
          (fun ys_3_8 -> 
            (`LH_C(h_3_3, ((mappend_d0_d0_d4 t_3_3) ys_3_8))))))))
    | _ -> 
      (Obj.magic 99))
and interleave_d0_d0_d0 _lh_interleave_arg1_2 _lh_interleave_arg2_2 =
  (match _lh_interleave_arg1_2 with
    | `LH_C(_lh_interleave_LH_C_0_2, _lh_interleave_LH_C_1_2) -> 
      (let rec h_2_4 = _lh_interleave_LH_C_0_2 in
        (let rec t_2_4 = ((interleave_d0_d0_d0 _lh_interleave_arg2_2) _lh_interleave_LH_C_1_2) in
          (fun ys_2_3 -> 
            (let rec h_2_5 = h_2_4 in
              (let rec t_2_5 = ((mappend_d2_d0_d0 t_2_4) ys_2_3) in
                (fun ys_2_4 -> 
                  (let rec h_2_6 = h_2_5 in
                    (let rec t_2_6 = ((mappend_d1_d0_d0 t_2_5) ys_2_4) in
                      (fun ys_2_5 -> 
                        (`LH_C(h_2_6, ((mappend_d0_d0_d0 t_2_6) ys_2_5))))))))))))
    | `LH_N -> 
      (fun ys_2_6 -> 
        ys_2_6)
    | _ -> 
      (Obj.magic 99))
and interleave_d1_d0_d0 _lh_interleave_arg1_3 _lh_interleave_arg2_3 =
  (match _lh_interleave_arg1_3 with
    | `LH_C(_lh_interleave_LH_C_0_3, _lh_interleave_LH_C_1_3) -> 
      (let rec h_3_4 = _lh_interleave_LH_C_0_3 in
        (let rec t_3_4 = ((interleave_d1_d0_d0 _lh_interleave_arg2_3) _lh_interleave_LH_C_1_3) in
          (fun ys_4_1 -> 
            (let rec h_3_5 = h_3_4 in
              (let rec t_3_5 = ((mappend_d3_d0_d0 t_3_4) ys_4_1) in
                (fun ys_4_2 -> 
                  (`LH_C(h_3_5, ((mappend_d0_d0_d1 t_3_5) ys_4_2)))))))))
    | `LH_N -> 
      (fun ys_4_3 -> 
        ys_4_3)
    | _ -> 
      (Obj.magic 99))
and map_d0_d0_d0 f_1_0 ls_6 _lh_popOutId_0_1 =
  (match ls_6 with
    | `LH_C(h_2_2, t_2_2) -> 
      (let rec h_2_3 = (f_1_0 h_2_2) in
        (let rec t_2_3 = ((map_d0_d0_d0 f_1_0) t_2_2) in
          ((mappend_d0_d0_d5 h_2_3) (concat_d0_d0_d1 t_2_3))))
    | `LH_N -> 
      (`LH_N))
and parseHelper_d0_d0_d0 _lh_parseHelper_arg1_1 _lh_parseHelper_arg2_1 =
  (match _lh_parseHelper_arg1_1 with
    | `LH_N -> 
      (redstar_d0_d0_d0 _lh_parseHelper_arg2_1)
    | `LH_C(_lh_parseHelper_LH_C_0_3, _lh_parseHelper_LH_C_1_3) -> 
      (match _lh_parseHelper_LH_C_0_3 with
        | ' ' -> 
          ((parseHelper_d0_d0_d0 _lh_parseHelper_LH_C_1_3) _lh_parseHelper_arg2_1)
        | '(' -> 
          ((parseHelper_d0_d0_d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Lex('(')), _lh_parseHelper_arg2_1)))
        | ')' -> 
          (let rec _lh_matchIdent_2 = (redstar_d1_d0_d0 _lh_parseHelper_arg2_1) in
            (match _lh_matchIdent_2 with
              | `LH_C(_lh_parseHelper_LH_C_0_4, _lh_parseHelper_LH_C_1_4) -> 
                (match _lh_parseHelper_LH_C_1_4 with
                  | `LH_C(_lh_parseHelper_LH_C_0_5, _lh_parseHelper_LH_C_1_5) -> 
                    (match _lh_parseHelper_LH_C_0_5 with
                      | `Lex(_lh_parseHelper_Lex_0_1) -> 
                        (match _lh_parseHelper_Lex_0_1 with
                          | '(' -> 
                            ((parseHelper_d0_d0_d0 _lh_parseHelper_LH_C_1_3) (`LH_C(_lh_parseHelper_LH_C_0_4, _lh_parseHelper_LH_C_1_5)))
                          | _ -> 
                            (Obj.magic 99))
                      | _ -> 
                        (Obj.magic 99))
                  | _ -> 
                    (Obj.magic 99))
              | _ -> 
                (Obj.magic 99)))
        | _ -> 
          (if (('a' <= _lh_parseHelper_LH_C_0_3) && (_lh_parseHelper_LH_C_0_3 <= 'z')) then
            ((parseHelper_d0_d0_d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Ast((`Sym(_lh_parseHelper_LH_C_0_3)))), _lh_parseHelper_arg2_1)))
          else
            (if ((spri_d2_d0_d0 _lh_parseHelper_arg2_1) > (opri_d0_d0_d0 _lh_parseHelper_LH_C_0_3)) then
              ((parseHelper_d0_d0_d0 (`LH_C(_lh_parseHelper_LH_C_0_3, _lh_parseHelper_LH_C_1_3))) (red_d0_d0_d0 _lh_parseHelper_arg2_1))
            else
              ((parseHelper_d0_d0_d0 _lh_parseHelper_LH_C_1_3) (`LH_C((`Lex(_lh_parseHelper_LH_C_0_3)), _lh_parseHelper_arg2_1))))))
    | _ -> 
      (Obj.magic 99))
and parse_d0_d0_d0 _lh_parse_arg1_1 =
  (let rec _lh_matchIdent_3 = ((parseHelper_d0_d0_d0 _lh_parse_arg1_1) (`LH_N)) in
    (match _lh_matchIdent_3 with
      | `LH_C(_lh_parse_LH_C_0_1, _lh_parse_LH_C_1_1) -> 
        (match _lh_parse_LH_C_0_1 with
          | `Ast(_lh_parse_Ast_0_1) -> 
            (match _lh_parse_LH_C_1_1 with
              | `LH_N -> 
                _lh_parse_Ast_0_1
              | _ -> 
                (Obj.magic 99))
          | _ -> 
            (Obj.magic 99))
      | _ -> 
        (Obj.magic 99)))
and redstar_d0_d0_d0 _lh_redstar_arg1_2 =
  (((while_d0_d0_d0 (fun _lh_funcomp_x_9 -> 
    (0 != (spri_d0_d0_d0 _lh_funcomp_x_9)))) red_d1_d0_d0) _lh_redstar_arg1_2)
and redstar_d1_d0_d0 _lh_redstar_arg1_3 =
  (((while_d1_d0_d0 (fun _lh_funcomp_x_1_7 -> 
    (0 != (spri_d1_d0_d0 _lh_funcomp_x_1_7)))) red_d2_d0_d0) _lh_redstar_arg1_3)
and spaces_d0_d0_d0 _lh_spaces_arg1_3 =
  ((copy_d0_d0_d0 _lh_spaces_arg1_3) ' ')
and spaces_d1_d0_d0 _lh_spaces_arg1_2 =
  ((copy_d1_d0_d0 _lh_spaces_arg1_2) ' ')
and splitHelper_d0_d0_d0 _lh_splitHelper_arg1_1 _lh_splitHelper_arg2_1 =
  (match _lh_splitHelper_arg1_1 with
    | `Con(_lh_splitHelper_Con_0_1, _lh_splitHelper_Con_1_1) -> 
      ((splitHelper_d0_d0_d0 _lh_splitHelper_Con_0_1) ((splitHelper_d0_d0_d0 _lh_splitHelper_Con_1_1) _lh_splitHelper_arg2_1))
    | _ -> 
      (let rec h_2_8 = _lh_splitHelper_arg1_1 in
        (let rec t_2_8 = _lh_splitHelper_arg2_1 in
          (fun f_1_2 i_4 -> 
            ((f_1_2 h_2_8) (((foldr_d0_d0_d0 f_1_2) i_4) t_2_8))))))
and split_d0_d0_d0 _lh_split_arg1_1 =
  ((splitHelper_d0_d0_d0 _lh_split_arg1_1) (fun f_1_5 i_6 -> 
    i_6))
and spri_d0_d0_d0 _lh_spri_arg1_4 =
  (match _lh_spri_arg1_4 with
    | `LH_C(_lh_spri_LH_C_0_8, _lh_spri_LH_C_1_8) -> 
      (match _lh_spri_LH_C_0_8 with
        | `Ast(_lh_spri_Ast_0_4) -> 
          (match _lh_spri_LH_C_1_8 with
            | `LH_C(_lh_spri_LH_C_0_9, _lh_spri_LH_C_1_9) -> 
              (match _lh_spri_LH_C_0_9 with
                | `Lex(_lh_spri_Lex_0_4) -> 
                  (opri_d1_d0_d0 _lh_spri_Lex_0_4)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri_d1_d0_d0 _lh_spri_arg1_3 =
  (match _lh_spri_arg1_3 with
    | `LH_C(_lh_spri_LH_C_0_6, _lh_spri_LH_C_1_6) -> 
      (match _lh_spri_LH_C_0_6 with
        | `Ast(_lh_spri_Ast_0_3) -> 
          (match _lh_spri_LH_C_1_6 with
            | `LH_C(_lh_spri_LH_C_0_7, _lh_spri_LH_C_1_7) -> 
              (match _lh_spri_LH_C_0_7 with
                | `Lex(_lh_spri_Lex_0_3) -> 
                  (opri_d2_d0_d0 _lh_spri_Lex_0_3)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and spri_d2_d0_d0 _lh_spri_arg1_5 =
  (match _lh_spri_arg1_5 with
    | `LH_C(_lh_spri_LH_C_0_1_0, _lh_spri_LH_C_1_1_0) -> 
      (match _lh_spri_LH_C_0_1_0 with
        | `Ast(_lh_spri_Ast_0_5) -> 
          (match _lh_spri_LH_C_1_1_0 with
            | `LH_C(_lh_spri_LH_C_0_1_1, _lh_spri_LH_C_1_1_1) -> 
              (match _lh_spri_LH_C_0_1_1 with
                | `Lex(_lh_spri_Lex_0_5) -> 
                  (opri_d3_d0_d0 _lh_spri_Lex_0_5)
                | _ -> 
                  0)
            | _ -> 
              0)
        | _ -> 
          0)
    | _ -> 
      0)
and tautclause_d0_d0_d0 _lh_tautclause_arg1_1 =
  (match _lh_tautclause_arg1_1 with
    | `LH_P2(_lh_tautclause_LH_P2_0_1, _lh_tautclause_LH_P2_1_1) -> 
      ((let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
        (match _lh_listcomp_fun_para_1 with
          | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
            (if ((contains_d0_d0_d0 _lh_listcomp_fun_ls_h_1) _lh_tautclause_LH_P2_1_1) then
              (`LH_C(_lh_listcomp_fun_ls_h_1, (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            else
              (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1))
          | `LH_N -> 
            (`LH_N))) in
        (_lh_listcomp_fun_1 _lh_tautclause_LH_P2_0_1)) != (`LH_N))
    | _ -> 
      (Obj.magic 99))
and testClausify_nofib_d0_d0_d0 _lh_testClausify_nofib_arg1_1 =
  (let rec xs_1_8 = ((copy_d2_d0_d0 _lh_testClausify_nofib_arg1_1) (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('=', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
    (concat_d1_d0_d0 ((map_d1_d0_d1 clauses_d0_d0_d0) xs_1_8)))
and uniclHelper_d0_d0_d0 _lh_uniclHelper_arg1_1 _lh_uniclHelper_arg2_1 =
  (let rec cp_1 = (clause_d0_d0_d0 _lh_uniclHelper_arg1_1) in
    (if (tautclause_d0_d0_d0 cp_1) then
      _lh_uniclHelper_arg2_1
    else
      ((insert_d2_d0_d0 cp_1) _lh_uniclHelper_arg2_1)))
and unicl_d0_d0_d0 _lh_unicl_arg1_1 =
  (((foldr_d0_d0_d1 uniclHelper_d0_d0_d0) (`LH_N)) _lh_unicl_arg1_1);;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Clausify_nofib" (fun () -> ignore ((testClausify_nofib_d0 10)));
  Bench.Test.create ~name:"lumberhack_Clausify_nofib" (fun () -> ignore ((testClausify_nofib_d0_d0 10)));
  Bench.Test.create ~name:"lumberhack_pop_out_Clausify_nofib" (fun () -> ignore ((testClausify_nofib_d0_d0_d0 10)));
])
