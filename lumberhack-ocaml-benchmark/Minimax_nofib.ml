(*
touch ./Minimax_nofib.mli && ocamlc ./Minimax_nofib.mli && ocamlfind ocamlopt -rectypes -thread -O3 -w -A ./Minimax_nofib.ml -o "./Minimax_nofib.out" -linkpkg -package "core_unix.command_unix" -linkpkg -package "core_bench" && ./Minimax_nofib.out && rm ./*.cmx ./*.out ./*.cmi ./*.o ./*.mli
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
let rec and__d0 _lh_and_arg1_1 =
  (match _lh_and_arg1_1 with
    | `LH_N -> 
      true
    | `LH_C(_lh_and_LH_C_0_1, _lh_and_LH_C_1_1) -> 
      (if _lh_and_LH_C_0_1 then
        (and__d0 _lh_and_LH_C_1_1)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec best__d0 _lh_best_arg1_1 _lh_best_arg2_1 _lh_best_arg3_1 =
  (match _lh_best_arg2_1 with
    | `LH_C(_lh_best_LH_C_0_4, _lh_best_LH_C_1_4) -> 
      (match _lh_best_arg3_1 with
        | `LH_C(_lh_best_LH_C_0_5, _lh_best_LH_C_1_5) -> 
          (let rec best'_1 = (fun b_8 s_1 ls1_1 ls2_1 -> 
            (let rec _lh_matchIdent_1_3 = ls1_1 in
              (match _lh_matchIdent_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_4 = ls2_1 in
                    (match _lh_matchIdent_1_4 with
                      | `LH_N -> 
                        (`LH_P2(b_8, s_1))
                      | _ -> 
                        (failwith "error")))
                | `LH_C(_lh_best_LH_C_0_6, _lh_best_LH_C_1_6) -> 
                  (let rec _lh_matchIdent_1_5 = ls2_1 in
                    (match _lh_matchIdent_1_5 with
                      | `LH_C(_lh_best_LH_C_0_7, _lh_best_LH_C_1_7) -> 
                        (if (s_1 = ((_lh_best_arg1_1 s_1) _lh_best_LH_C_0_7)) then
                          ((((best'_1 b_8) s_1) _lh_best_LH_C_1_6) _lh_best_LH_C_1_7)
                        else
                          ((((best'_1 _lh_best_LH_C_0_6) _lh_best_LH_C_0_7) _lh_best_LH_C_1_6) _lh_best_LH_C_1_7))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))) in
            ((((best'_1 _lh_best_LH_C_0_4) _lh_best_LH_C_0_5) _lh_best_LH_C_1_4) _lh_best_LH_C_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec empty'__d0 _lh_empty'_arg1_1 _lh_empty'_arg2_1 =
  (match _lh_empty'_arg1_1 with
    | 1 -> 
      (match _lh_empty'_arg2_1 with
        | `LH_C(_lh_empty'_LH_C_0_9, _lh_empty'_LH_C_1_9) -> 
          (match _lh_empty'_LH_C_0_9 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_9 with
                | `LH_C(_lh_empty'_LH_C_0_1_0, _lh_empty'_LH_C_1_1_0) -> 
                  (match _lh_empty'_LH_C_1_1_0 with
                    | `LH_C(_lh_empty'_LH_C_0_1_1, _lh_empty'_LH_C_1_1_1) -> 
                      (match _lh_empty'_LH_C_1_1_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1 with
        | `LH_C(_lh_empty'_LH_C_0_1_2, _lh_empty'_LH_C_1_1_2) -> 
          (match _lh_empty'_LH_C_1_1_2 with
            | `LH_C(_lh_empty'_LH_C_0_1_3, _lh_empty'_LH_C_1_1_3) -> 
              (match _lh_empty'_LH_C_0_1_3 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_3 with
                    | `LH_C(_lh_empty'_LH_C_0_1_4, _lh_empty'_LH_C_1_1_4) -> 
                      (match _lh_empty'_LH_C_1_1_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1 with
        | `LH_C(_lh_empty'_LH_C_0_1_5, _lh_empty'_LH_C_1_1_5) -> 
          (match _lh_empty'_LH_C_1_1_5 with
            | `LH_C(_lh_empty'_LH_C_0_1_6, _lh_empty'_LH_C_1_1_6) -> 
              (match _lh_empty'_LH_C_1_1_6 with
                | `LH_C(_lh_empty'_LH_C_0_1_7, _lh_empty'_LH_C_1_1_7) -> 
                  (match _lh_empty'_LH_C_0_1_7 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d1 _lh_empty'_arg1_4 _lh_empty'_arg2_4 =
  (match _lh_empty'_arg1_4 with
    | 1 -> 
      (match _lh_empty'_arg2_4 with
        | `LH_C(_lh_empty'_LH_C_0_3_6, _lh_empty'_LH_C_1_3_6) -> 
          (match _lh_empty'_LH_C_0_3_6 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_3_6 with
                | `LH_C(_lh_empty'_LH_C_0_3_7, _lh_empty'_LH_C_1_3_7) -> 
                  (match _lh_empty'_LH_C_1_3_7 with
                    | `LH_C(_lh_empty'_LH_C_0_3_8, _lh_empty'_LH_C_1_3_8) -> 
                      (match _lh_empty'_LH_C_1_3_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_4 with
        | `LH_C(_lh_empty'_LH_C_0_3_9, _lh_empty'_LH_C_1_3_9) -> 
          (match _lh_empty'_LH_C_1_3_9 with
            | `LH_C(_lh_empty'_LH_C_0_4_0, _lh_empty'_LH_C_1_4_0) -> 
              (match _lh_empty'_LH_C_0_4_0 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_4_0 with
                    | `LH_C(_lh_empty'_LH_C_0_4_1, _lh_empty'_LH_C_1_4_1) -> 
                      (match _lh_empty'_LH_C_1_4_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_4 with
        | `LH_C(_lh_empty'_LH_C_0_4_2, _lh_empty'_LH_C_1_4_2) -> 
          (match _lh_empty'_LH_C_1_4_2 with
            | `LH_C(_lh_empty'_LH_C_0_4_3, _lh_empty'_LH_C_1_4_3) -> 
              (match _lh_empty'_LH_C_1_4_3 with
                | `LH_C(_lh_empty'_LH_C_0_4_4, _lh_empty'_LH_C_1_4_4) -> 
                  (match _lh_empty'_LH_C_0_4_4 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_4_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d2 _lh_empty'_arg1_3 _lh_empty'_arg2_3 =
  (match _lh_empty'_arg1_3 with
    | 1 -> 
      (match _lh_empty'_arg2_3 with
        | `LH_C(_lh_empty'_LH_C_0_2_7, _lh_empty'_LH_C_1_2_7) -> 
          (match _lh_empty'_LH_C_0_2_7 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_2_7 with
                | `LH_C(_lh_empty'_LH_C_0_2_8, _lh_empty'_LH_C_1_2_8) -> 
                  (match _lh_empty'_LH_C_1_2_8 with
                    | `LH_C(_lh_empty'_LH_C_0_2_9, _lh_empty'_LH_C_1_2_9) -> 
                      (match _lh_empty'_LH_C_1_2_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_3 with
        | `LH_C(_lh_empty'_LH_C_0_3_0, _lh_empty'_LH_C_1_3_0) -> 
          (match _lh_empty'_LH_C_1_3_0 with
            | `LH_C(_lh_empty'_LH_C_0_3_1, _lh_empty'_LH_C_1_3_1) -> 
              (match _lh_empty'_LH_C_0_3_1 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_3_1 with
                    | `LH_C(_lh_empty'_LH_C_0_3_2, _lh_empty'_LH_C_1_3_2) -> 
                      (match _lh_empty'_LH_C_1_3_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_3 with
        | `LH_C(_lh_empty'_LH_C_0_3_3, _lh_empty'_LH_C_1_3_3) -> 
          (match _lh_empty'_LH_C_1_3_3 with
            | `LH_C(_lh_empty'_LH_C_0_3_4, _lh_empty'_LH_C_1_3_4) -> 
              (match _lh_empty'_LH_C_1_3_4 with
                | `LH_C(_lh_empty'_LH_C_0_3_5, _lh_empty'_LH_C_1_3_5) -> 
                  (match _lh_empty'_LH_C_0_3_5 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_3_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d3 _lh_empty'_arg1_6 _lh_empty'_arg2_6 =
  (match _lh_empty'_arg1_6 with
    | 1 -> 
      (match _lh_empty'_arg2_6 with
        | `LH_C(_lh_empty'_LH_C_0_5_4, _lh_empty'_LH_C_1_5_4) -> 
          (match _lh_empty'_LH_C_0_5_4 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_5_4 with
                | `LH_C(_lh_empty'_LH_C_0_5_5, _lh_empty'_LH_C_1_5_5) -> 
                  (match _lh_empty'_LH_C_1_5_5 with
                    | `LH_C(_lh_empty'_LH_C_0_5_6, _lh_empty'_LH_C_1_5_6) -> 
                      (match _lh_empty'_LH_C_1_5_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_6 with
        | `LH_C(_lh_empty'_LH_C_0_5_7, _lh_empty'_LH_C_1_5_7) -> 
          (match _lh_empty'_LH_C_1_5_7 with
            | `LH_C(_lh_empty'_LH_C_0_5_8, _lh_empty'_LH_C_1_5_8) -> 
              (match _lh_empty'_LH_C_0_5_8 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_5_8 with
                    | `LH_C(_lh_empty'_LH_C_0_5_9, _lh_empty'_LH_C_1_5_9) -> 
                      (match _lh_empty'_LH_C_1_5_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_6 with
        | `LH_C(_lh_empty'_LH_C_0_6_0, _lh_empty'_LH_C_1_6_0) -> 
          (match _lh_empty'_LH_C_1_6_0 with
            | `LH_C(_lh_empty'_LH_C_0_6_1, _lh_empty'_LH_C_1_6_1) -> 
              (match _lh_empty'_LH_C_1_6_1 with
                | `LH_C(_lh_empty'_LH_C_0_6_2, _lh_empty'_LH_C_1_6_2) -> 
                  (match _lh_empty'_LH_C_0_6_2 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_6_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d4 _lh_empty'_arg1_8 _lh_empty'_arg2_8 =
  (match _lh_empty'_arg1_8 with
    | 1 -> 
      (match _lh_empty'_arg2_8 with
        | `LH_C(_lh_empty'_LH_C_0_7_2, _lh_empty'_LH_C_1_7_2) -> 
          (match _lh_empty'_LH_C_0_7_2 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_7_2 with
                | `LH_C(_lh_empty'_LH_C_0_7_3, _lh_empty'_LH_C_1_7_3) -> 
                  (match _lh_empty'_LH_C_1_7_3 with
                    | `LH_C(_lh_empty'_LH_C_0_7_4, _lh_empty'_LH_C_1_7_4) -> 
                      (match _lh_empty'_LH_C_1_7_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_8 with
        | `LH_C(_lh_empty'_LH_C_0_7_5, _lh_empty'_LH_C_1_7_5) -> 
          (match _lh_empty'_LH_C_1_7_5 with
            | `LH_C(_lh_empty'_LH_C_0_7_6, _lh_empty'_LH_C_1_7_6) -> 
              (match _lh_empty'_LH_C_0_7_6 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_7_6 with
                    | `LH_C(_lh_empty'_LH_C_0_7_7, _lh_empty'_LH_C_1_7_7) -> 
                      (match _lh_empty'_LH_C_1_7_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_8 with
        | `LH_C(_lh_empty'_LH_C_0_7_8, _lh_empty'_LH_C_1_7_8) -> 
          (match _lh_empty'_LH_C_1_7_8 with
            | `LH_C(_lh_empty'_LH_C_0_7_9, _lh_empty'_LH_C_1_7_9) -> 
              (match _lh_empty'_LH_C_1_7_9 with
                | `LH_C(_lh_empty'_LH_C_0_8_0, _lh_empty'_LH_C_1_8_0) -> 
                  (match _lh_empty'_LH_C_0_8_0 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_8_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d5 _lh_empty'_arg1_2 _lh_empty'_arg2_2 =
  (match _lh_empty'_arg1_2 with
    | 1 -> 
      (match _lh_empty'_arg2_2 with
        | `LH_C(_lh_empty'_LH_C_0_1_8, _lh_empty'_LH_C_1_1_8) -> 
          (match _lh_empty'_LH_C_0_1_8 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_8 with
                | `LH_C(_lh_empty'_LH_C_0_1_9, _lh_empty'_LH_C_1_1_9) -> 
                  (match _lh_empty'_LH_C_1_1_9 with
                    | `LH_C(_lh_empty'_LH_C_0_2_0, _lh_empty'_LH_C_1_2_0) -> 
                      (match _lh_empty'_LH_C_1_2_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_2 with
        | `LH_C(_lh_empty'_LH_C_0_2_1, _lh_empty'_LH_C_1_2_1) -> 
          (match _lh_empty'_LH_C_1_2_1 with
            | `LH_C(_lh_empty'_LH_C_0_2_2, _lh_empty'_LH_C_1_2_2) -> 
              (match _lh_empty'_LH_C_0_2_2 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_2_2 with
                    | `LH_C(_lh_empty'_LH_C_0_2_3, _lh_empty'_LH_C_1_2_3) -> 
                      (match _lh_empty'_LH_C_1_2_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_2 with
        | `LH_C(_lh_empty'_LH_C_0_2_4, _lh_empty'_LH_C_1_2_4) -> 
          (match _lh_empty'_LH_C_1_2_4 with
            | `LH_C(_lh_empty'_LH_C_0_2_5, _lh_empty'_LH_C_1_2_5) -> 
              (match _lh_empty'_LH_C_1_2_5 with
                | `LH_C(_lh_empty'_LH_C_0_2_6, _lh_empty'_LH_C_1_2_6) -> 
                  (match _lh_empty'_LH_C_0_2_6 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_2_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d6 _lh_empty'_arg1_5 _lh_empty'_arg2_5 =
  (match _lh_empty'_arg1_5 with
    | 1 -> 
      (match _lh_empty'_arg2_5 with
        | `LH_C(_lh_empty'_LH_C_0_4_5, _lh_empty'_LH_C_1_4_5) -> 
          (match _lh_empty'_LH_C_0_4_5 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_4_5 with
                | `LH_C(_lh_empty'_LH_C_0_4_6, _lh_empty'_LH_C_1_4_6) -> 
                  (match _lh_empty'_LH_C_1_4_6 with
                    | `LH_C(_lh_empty'_LH_C_0_4_7, _lh_empty'_LH_C_1_4_7) -> 
                      (match _lh_empty'_LH_C_1_4_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_5 with
        | `LH_C(_lh_empty'_LH_C_0_4_8, _lh_empty'_LH_C_1_4_8) -> 
          (match _lh_empty'_LH_C_1_4_8 with
            | `LH_C(_lh_empty'_LH_C_0_4_9, _lh_empty'_LH_C_1_4_9) -> 
              (match _lh_empty'_LH_C_0_4_9 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_4_9 with
                    | `LH_C(_lh_empty'_LH_C_0_5_0, _lh_empty'_LH_C_1_5_0) -> 
                      (match _lh_empty'_LH_C_1_5_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_5 with
        | `LH_C(_lh_empty'_LH_C_0_5_1, _lh_empty'_LH_C_1_5_1) -> 
          (match _lh_empty'_LH_C_1_5_1 with
            | `LH_C(_lh_empty'_LH_C_0_5_2, _lh_empty'_LH_C_1_5_2) -> 
              (match _lh_empty'_LH_C_1_5_2 with
                | `LH_C(_lh_empty'_LH_C_0_5_3, _lh_empty'_LH_C_1_5_3) -> 
                  (match _lh_empty'_LH_C_0_5_3 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_5_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d7 _lh_empty'_arg1_7 _lh_empty'_arg2_7 =
  (match _lh_empty'_arg1_7 with
    | 1 -> 
      (match _lh_empty'_arg2_7 with
        | `LH_C(_lh_empty'_LH_C_0_6_3, _lh_empty'_LH_C_1_6_3) -> 
          (match _lh_empty'_LH_C_0_6_3 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_6_3 with
                | `LH_C(_lh_empty'_LH_C_0_6_4, _lh_empty'_LH_C_1_6_4) -> 
                  (match _lh_empty'_LH_C_1_6_4 with
                    | `LH_C(_lh_empty'_LH_C_0_6_5, _lh_empty'_LH_C_1_6_5) -> 
                      (match _lh_empty'_LH_C_1_6_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_7 with
        | `LH_C(_lh_empty'_LH_C_0_6_6, _lh_empty'_LH_C_1_6_6) -> 
          (match _lh_empty'_LH_C_1_6_6 with
            | `LH_C(_lh_empty'_LH_C_0_6_7, _lh_empty'_LH_C_1_6_7) -> 
              (match _lh_empty'_LH_C_0_6_7 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_6_7 with
                    | `LH_C(_lh_empty'_LH_C_0_6_8, _lh_empty'_LH_C_1_6_8) -> 
                      (match _lh_empty'_LH_C_1_6_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_7 with
        | `LH_C(_lh_empty'_LH_C_0_6_9, _lh_empty'_LH_C_1_6_9) -> 
          (match _lh_empty'_LH_C_1_6_9 with
            | `LH_C(_lh_empty'_LH_C_0_7_0, _lh_empty'_LH_C_1_7_0) -> 
              (match _lh_empty'_LH_C_1_7_0 with
                | `LH_C(_lh_empty'_LH_C_0_7_1, _lh_empty'_LH_C_1_7_1) -> 
                  (match _lh_empty'_LH_C_0_7_1 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_7_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d8 _lh_empty'_arg1_9 _lh_empty'_arg2_9 =
  (match _lh_empty'_arg1_9 with
    | 1 -> 
      (match _lh_empty'_arg2_9 with
        | `LH_C(_lh_empty'_LH_C_0_8_1, _lh_empty'_LH_C_1_8_1) -> 
          (match _lh_empty'_LH_C_0_8_1 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_8_1 with
                | `LH_C(_lh_empty'_LH_C_0_8_2, _lh_empty'_LH_C_1_8_2) -> 
                  (match _lh_empty'_LH_C_1_8_2 with
                    | `LH_C(_lh_empty'_LH_C_0_8_3, _lh_empty'_LH_C_1_8_3) -> 
                      (match _lh_empty'_LH_C_1_8_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_9 with
        | `LH_C(_lh_empty'_LH_C_0_8_4, _lh_empty'_LH_C_1_8_4) -> 
          (match _lh_empty'_LH_C_1_8_4 with
            | `LH_C(_lh_empty'_LH_C_0_8_5, _lh_empty'_LH_C_1_8_5) -> 
              (match _lh_empty'_LH_C_0_8_5 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_8_5 with
                    | `LH_C(_lh_empty'_LH_C_0_8_6, _lh_empty'_LH_C_1_8_6) -> 
                      (match _lh_empty'_LH_C_1_8_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_9 with
        | `LH_C(_lh_empty'_LH_C_0_8_7, _lh_empty'_LH_C_1_8_7) -> 
          (match _lh_empty'_LH_C_1_8_7 with
            | `LH_C(_lh_empty'_LH_C_0_8_8, _lh_empty'_LH_C_1_8_8) -> 
              (match _lh_empty'_LH_C_1_8_8 with
                | `LH_C(_lh_empty'_LH_C_0_8_9, _lh_empty'_LH_C_1_8_9) -> 
                  (match _lh_empty'_LH_C_0_8_9 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_8_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec enumFromTo__d0 a_1_0 b_9 =
  (if (a_1_0 <= b_9) then
    (`LH_C(a_1_0, ((enumFromTo__d0 (a_1_0 + 1)) b_9)))
  else
    (`LH_N));;
let rec enumFromTo__d1 a_5 b_3 =
  (if (a_5 <= b_3) then
    (`LH_C(a_5, ((enumFromTo__d1 (a_5 + 1)) b_3)))
  else
    (`LH_N));;
let rec enumFromTo__d2 a_9 b_7 =
  (if (a_9 <= b_7) then
    (`LH_C(a_9, ((enumFromTo__d2 (a_9 + 1)) b_7)))
  else
    (`LH_N));;
let rec enumFromTo__d3 a_6 b_4 =
  (if (a_6 <= b_4) then
    (`LH_C(a_6, ((enumFromTo__d3 (a_6 + 1)) b_4)))
  else
    (`LH_N));;
let rec enumFromTo__d4 a_7 b_5 =
  (if (a_7 <= b_5) then
    (`LH_C(a_7, ((enumFromTo__d4 (a_7 + 1)) b_5)))
  else
    (`LH_N));;
let rec enumFromTo__d5 a_8 b_6 =
  (if (a_8 <= b_6) then
    (`LH_C(a_8, ((enumFromTo__d5 (a_8 + 1)) b_6)))
  else
    (`LH_N));;
let rec eval__d0 _lh_eval_arg1_3 =
  (if (_lh_eval_arg1_3 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_3 = (0 - 3)) then
      (`OWin)
    else
      (`Score(_lh_eval_arg1_3))));;
let rec eval__d1 _lh_eval_arg1_1 =
  (if (_lh_eval_arg1_1 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_1 = (0 - 3)) then
      (`OWin)
    else
      (`Score(_lh_eval_arg1_1))));;
let rec eval__d2 _lh_eval_arg1_2 =
  (if (_lh_eval_arg1_2 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_2 = (0 - 3)) then
      (`OWin)
    else
      (`Score(_lh_eval_arg1_2))));;
let rec foldr__d0 f_1_9 i_3 ls_3_2 =
  (match ls_3_2 with
    | `LH_C(h_5_3, t_5_5) -> 
      ((f_1_9 h_5_3) (((foldr__d0 f_1_9) i_3) t_5_5))
    | `LH_N -> 
      i_3);;
let rec insert__d0 _lh_insert_arg1_8 _lh_insert_arg2_8 _lh_insert_arg3_8 =
  (match _lh_insert_arg2_8 with
    | `LH_C(_lh_insert_LH_C_0_2_4, _lh_insert_LH_C_1_2_4) -> 
      (match _lh_insert_LH_C_1_2_4 with
        | `LH_C(_lh_insert_LH_C_0_2_5, _lh_insert_LH_C_1_2_5) -> 
          (match _lh_insert_LH_C_1_2_5 with
            | `LH_C(_lh_insert_LH_C_0_2_6, _lh_insert_LH_C_1_2_6) -> 
              (match _lh_insert_LH_C_1_2_6 with
                | `LH_N -> 
                  (match _lh_insert_arg3_8 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_8, (`LH_C(_lh_insert_LH_C_0_2_5, (`LH_C(_lh_insert_LH_C_0_2_6, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_4, (`LH_C(_lh_insert_arg1_8, (`LH_C(_lh_insert_LH_C_0_2_6, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_4, (`LH_C(_lh_insert_LH_C_0_2_5, (`LH_C(_lh_insert_arg1_8, (`LH_N)))))))
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
let rec insert__d1 _lh_insert_arg1_3 _lh_insert_arg2_3 _lh_insert_arg3_3 =
  (match _lh_insert_arg2_3 with
    | `LH_C(_lh_insert_LH_C_0_9, _lh_insert_LH_C_1_9) -> 
      (match _lh_insert_LH_C_1_9 with
        | `LH_C(_lh_insert_LH_C_0_1_0, _lh_insert_LH_C_1_1_0) -> 
          (match _lh_insert_LH_C_1_1_0 with
            | `LH_C(_lh_insert_LH_C_0_1_1, _lh_insert_LH_C_1_1_1) -> 
              (match _lh_insert_LH_C_1_1_1 with
                | `LH_N -> 
                  (match _lh_insert_arg3_3 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_1_0, (`LH_C(_lh_insert_LH_C_0_1_1, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_9, (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_1_1, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_9, (`LH_C(_lh_insert_LH_C_0_1_0, (`LH_C(_lh_insert_arg1_3, (`LH_N)))))))
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
let rec insert__d2 _lh_insert_arg1_7 _lh_insert_arg2_7 _lh_insert_arg3_7 =
  (match _lh_insert_arg2_7 with
    | `LH_C(_lh_insert_LH_C_0_2_1, _lh_insert_LH_C_1_2_1) -> 
      (match _lh_insert_LH_C_1_2_1 with
        | `LH_C(_lh_insert_LH_C_0_2_2, _lh_insert_LH_C_1_2_2) -> 
          (match _lh_insert_LH_C_1_2_2 with
            | `LH_C(_lh_insert_LH_C_0_2_3, _lh_insert_LH_C_1_2_3) -> 
              (match _lh_insert_LH_C_1_2_3 with
                | `LH_N -> 
                  (match _lh_insert_arg3_7 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_7, (`LH_C(_lh_insert_LH_C_0_2_2, (`LH_C(_lh_insert_LH_C_0_2_3, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_1, (`LH_C(_lh_insert_arg1_7, (`LH_C(_lh_insert_LH_C_0_2_3, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_1, (`LH_C(_lh_insert_LH_C_0_2_2, (`LH_C(_lh_insert_arg1_7, (`LH_N)))))))
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
let rec insert__d3 _lh_insert_arg1_2 _lh_insert_arg2_2 _lh_insert_arg3_2 =
  (match _lh_insert_arg2_2 with
    | `LH_C(_lh_insert_LH_C_0_6, _lh_insert_LH_C_1_6) -> 
      (match _lh_insert_LH_C_1_6 with
        | `LH_C(_lh_insert_LH_C_0_7, _lh_insert_LH_C_1_7) -> 
          (match _lh_insert_LH_C_1_7 with
            | `LH_C(_lh_insert_LH_C_0_8, _lh_insert_LH_C_1_8) -> 
              (match _lh_insert_LH_C_1_8 with
                | `LH_N -> 
                  (match _lh_insert_arg3_2 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_7, (`LH_C(_lh_insert_LH_C_0_8, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_6, (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_8, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_6, (`LH_C(_lh_insert_LH_C_0_7, (`LH_C(_lh_insert_arg1_2, (`LH_N)))))))
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
let rec insert__d4 _lh_insert_arg1_6 _lh_insert_arg2_6 _lh_insert_arg3_6 =
  (match _lh_insert_arg2_6 with
    | `LH_C(_lh_insert_LH_C_0_1_8, _lh_insert_LH_C_1_1_8) -> 
      (match _lh_insert_LH_C_1_1_8 with
        | `LH_C(_lh_insert_LH_C_0_1_9, _lh_insert_LH_C_1_1_9) -> 
          (match _lh_insert_LH_C_1_1_9 with
            | `LH_C(_lh_insert_LH_C_0_2_0, _lh_insert_LH_C_1_2_0) -> 
              (match _lh_insert_LH_C_1_2_0 with
                | `LH_N -> 
                  (match _lh_insert_arg3_6 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_6, (`LH_C(_lh_insert_LH_C_0_1_9, (`LH_C(_lh_insert_LH_C_0_2_0, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_8, (`LH_C(_lh_insert_arg1_6, (`LH_C(_lh_insert_LH_C_0_2_0, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_8, (`LH_C(_lh_insert_LH_C_0_1_9, (`LH_C(_lh_insert_arg1_6, (`LH_N)))))))
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
let rec insert__d5 _lh_insert_arg1_5 _lh_insert_arg2_5 _lh_insert_arg3_5 =
  (match _lh_insert_arg2_5 with
    | `LH_C(_lh_insert_LH_C_0_1_5, _lh_insert_LH_C_1_1_5) -> 
      (match _lh_insert_LH_C_1_1_5 with
        | `LH_C(_lh_insert_LH_C_0_1_6, _lh_insert_LH_C_1_1_6) -> 
          (match _lh_insert_LH_C_1_1_6 with
            | `LH_C(_lh_insert_LH_C_0_1_7, _lh_insert_LH_C_1_1_7) -> 
              (match _lh_insert_LH_C_1_1_7 with
                | `LH_N -> 
                  (match _lh_insert_arg3_5 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_5, (`LH_C(_lh_insert_LH_C_0_1_6, (`LH_C(_lh_insert_LH_C_0_1_7, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_5, (`LH_C(_lh_insert_arg1_5, (`LH_C(_lh_insert_LH_C_0_1_7, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_5, (`LH_C(_lh_insert_LH_C_0_1_6, (`LH_C(_lh_insert_arg1_5, (`LH_N)))))))
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
let rec insert__d6 _lh_insert_arg1_1 _lh_insert_arg2_1 _lh_insert_arg3_1 =
  (match _lh_insert_arg2_1 with
    | `LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3) -> 
      (match _lh_insert_LH_C_1_3 with
        | `LH_C(_lh_insert_LH_C_0_4, _lh_insert_LH_C_1_4) -> 
          (match _lh_insert_LH_C_1_4 with
            | `LH_C(_lh_insert_LH_C_0_5, _lh_insert_LH_C_1_5) -> 
              (match _lh_insert_LH_C_1_5 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_4, (`LH_C(_lh_insert_LH_C_0_5, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_3, (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_5, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_3, (`LH_C(_lh_insert_LH_C_0_4, (`LH_C(_lh_insert_arg1_1, (`LH_N)))))))
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
let rec insert__d7 _lh_insert_arg1_4 _lh_insert_arg2_4 _lh_insert_arg3_4 =
  (match _lh_insert_arg2_4 with
    | `LH_C(_lh_insert_LH_C_0_1_2, _lh_insert_LH_C_1_1_2) -> 
      (match _lh_insert_LH_C_1_1_2 with
        | `LH_C(_lh_insert_LH_C_0_1_3, _lh_insert_LH_C_1_1_3) -> 
          (match _lh_insert_LH_C_1_1_3 with
            | `LH_C(_lh_insert_LH_C_0_1_4, _lh_insert_LH_C_1_1_4) -> 
              (match _lh_insert_LH_C_1_1_4 with
                | `LH_N -> 
                  (match _lh_insert_arg3_4 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_4, (`LH_C(_lh_insert_LH_C_0_1_3, (`LH_C(_lh_insert_LH_C_0_1_4, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_2, (`LH_C(_lh_insert_arg1_4, (`LH_C(_lh_insert_LH_C_0_1_4, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_2, (`LH_C(_lh_insert_LH_C_0_1_3, (`LH_C(_lh_insert_arg1_4, (`LH_N)))))))
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
let rec insert__d8 _lh_insert_arg1_9 _lh_insert_arg2_9 _lh_insert_arg3_9 =
  (match _lh_insert_arg2_9 with
    | `LH_C(_lh_insert_LH_C_0_2_7, _lh_insert_LH_C_1_2_7) -> 
      (match _lh_insert_LH_C_1_2_7 with
        | `LH_C(_lh_insert_LH_C_0_2_8, _lh_insert_LH_C_1_2_8) -> 
          (match _lh_insert_LH_C_1_2_8 with
            | `LH_C(_lh_insert_LH_C_0_2_9, _lh_insert_LH_C_1_2_9) -> 
              (match _lh_insert_LH_C_1_2_9 with
                | `LH_N -> 
                  (match _lh_insert_arg3_9 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_9, (`LH_C(_lh_insert_LH_C_0_2_8, (`LH_C(_lh_insert_LH_C_0_2_9, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_7, (`LH_C(_lh_insert_arg1_9, (`LH_C(_lh_insert_LH_C_0_2_9, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_7, (`LH_C(_lh_insert_LH_C_0_2_8, (`LH_C(_lh_insert_arg1_9, (`LH_N)))))))
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
let rec interpret__d0 _lh_interpret_arg1_1 _lh_interpret_arg2_1 =
  (match _lh_interpret_arg2_1 with
    | `LH_N -> 
      (`Score(_lh_interpret_arg1_1))
    | `LH_C(_lh_interpret_LH_C_0_1, _lh_interpret_LH_C_1_1) -> 
      (match _lh_interpret_LH_C_0_1 with
        | `Score(_lh_interpret_Score_0_1) -> 
          ((interpret__d0 (_lh_interpret_arg1_1 + _lh_interpret_Score_0_1)) _lh_interpret_LH_C_1_1)
        | `XWin -> 
          (`XWin)
        | `OWin -> 
          (`OWin)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec interpret__d1 _lh_interpret_arg1_2 _lh_interpret_arg2_2 =
  (match _lh_interpret_arg2_2 with
    | `LH_N -> 
      (`Score(_lh_interpret_arg1_2))
    | `LH_C(_lh_interpret_LH_C_0_2, _lh_interpret_LH_C_1_2) -> 
      (match _lh_interpret_LH_C_0_2 with
        | `Score(_lh_interpret_Score_0_2) -> 
          ((interpret__d1 (_lh_interpret_arg1_2 + _lh_interpret_Score_0_2)) _lh_interpret_LH_C_1_2)
        | `XWin -> 
          (`XWin)
        | `OWin -> 
          (`OWin)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec interpret__d2 _lh_interpret_arg1_3 _lh_interpret_arg2_3 =
  (match _lh_interpret_arg2_3 with
    | `LH_N -> 
      (`Score(_lh_interpret_arg1_3))
    | `LH_C(_lh_interpret_LH_C_0_3, _lh_interpret_LH_C_1_3) -> 
      (match _lh_interpret_LH_C_0_3 with
        | `Score(_lh_interpret_Score_0_3) -> 
          ((interpret__d2 (_lh_interpret_arg1_3 + _lh_interpret_Score_0_3)) _lh_interpret_LH_C_1_3)
        | `XWin -> 
          (`XWin)
        | `OWin -> 
          (`OWin)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec length__d0 ls_3_1 =
  (match ls_3_1 with
    | `LH_C(h_5_0, t_5_2) -> 
      (1 + (length__d0 t_5_2))
    | `LH_N -> 
      0);;
let rec map2__d0 _lh_map2_arg1_4 _lh_map2_arg2_4 _lh_map2_arg3_4 =
  (match _lh_map2_arg2_4 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_4 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_4 with
            | `LH_C(_lh_map2_LH_C_0_8, _lh_map2_LH_C_1_8) -> 
              (match _lh_map2_arg3_4 with
                | `LH_C(_lh_map2_LH_C_0_9, _lh_map2_LH_C_1_9) -> 
                  (`LH_C(((_lh_map2_arg1_4 _lh_map2_LH_C_0_8) _lh_map2_LH_C_0_9), (((map2__d0 _lh_map2_arg1_4) _lh_map2_LH_C_1_8) _lh_map2_LH_C_1_9)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map2__d1 _lh_map2_arg1_5 _lh_map2_arg2_5 _lh_map2_arg3_5 =
  (match _lh_map2_arg2_5 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_5 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_5 with
            | `LH_C(_lh_map2_LH_C_0_1_0, _lh_map2_LH_C_1_1_0) -> 
              (match _lh_map2_arg3_5 with
                | `LH_C(_lh_map2_LH_C_0_1_1, _lh_map2_LH_C_1_1_1) -> 
                  (`LH_C(((_lh_map2_arg1_5 _lh_map2_LH_C_0_1_0) _lh_map2_LH_C_0_1_1), (((map2__d1 _lh_map2_arg1_5) _lh_map2_LH_C_1_1_0) _lh_map2_LH_C_1_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map2__d2 _lh_map2_arg1_2 _lh_map2_arg2_2 _lh_map2_arg3_2 =
  (match _lh_map2_arg2_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_2 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_2 with
            | `LH_C(_lh_map2_LH_C_0_4, _lh_map2_LH_C_1_4) -> 
              (match _lh_map2_arg3_2 with
                | `LH_C(_lh_map2_LH_C_0_5, _lh_map2_LH_C_1_5) -> 
                  (`LH_C(((_lh_map2_arg1_2 _lh_map2_LH_C_0_4) _lh_map2_LH_C_0_5), (((map2__d2 _lh_map2_arg1_2) _lh_map2_LH_C_1_4) _lh_map2_LH_C_1_5)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map2__d3 _lh_map2_arg1_1 _lh_map2_arg2_1 _lh_map2_arg3_1 =
  (match _lh_map2_arg2_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_1 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_1 with
            | `LH_C(_lh_map2_LH_C_0_2, _lh_map2_LH_C_1_2) -> 
              (match _lh_map2_arg3_1 with
                | `LH_C(_lh_map2_LH_C_0_3, _lh_map2_LH_C_1_3) -> 
                  (`LH_C(((_lh_map2_arg1_1 _lh_map2_LH_C_0_2) _lh_map2_LH_C_0_3), (((map2__d3 _lh_map2_arg1_1) _lh_map2_LH_C_1_2) _lh_map2_LH_C_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map2__d4 _lh_map2_arg1_6 _lh_map2_arg2_6 _lh_map2_arg3_6 =
  (match _lh_map2_arg2_6 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_6 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_6 with
            | `LH_C(_lh_map2_LH_C_0_1_2, _lh_map2_LH_C_1_1_2) -> 
              (match _lh_map2_arg3_6 with
                | `LH_C(_lh_map2_LH_C_0_1_3, _lh_map2_LH_C_1_1_3) -> 
                  (`LH_C(((_lh_map2_arg1_6 _lh_map2_LH_C_0_1_2) _lh_map2_LH_C_0_1_3), (((map2__d4 _lh_map2_arg1_6) _lh_map2_LH_C_1_1_2) _lh_map2_LH_C_1_1_3)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map2__d5 _lh_map2_arg1_3 _lh_map2_arg2_3 _lh_map2_arg3_3 =
  (match _lh_map2_arg2_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_3 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_3 with
            | `LH_C(_lh_map2_LH_C_0_6, _lh_map2_LH_C_1_6) -> 
              (match _lh_map2_arg3_3 with
                | `LH_C(_lh_map2_LH_C_0_7, _lh_map2_LH_C_1_7) -> 
                  (`LH_C(((_lh_map2_arg1_3 _lh_map2_LH_C_0_6) _lh_map2_LH_C_0_7), (((map2__d5 _lh_map2_arg1_3) _lh_map2_LH_C_1_6) _lh_map2_LH_C_1_7)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map__d0 f_1_8 ls_3_0 =
  (match ls_3_0 with
    | `LH_C(h_4_9, t_5_1) -> 
      (`LH_C((f_1_8 h_4_9), ((map__d0 f_1_8) t_5_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1 f_1_7 ls_2_6 =
  (match ls_2_6 with
    | `LH_C(h_3_9, t_4_1) -> 
      (`LH_C((f_1_7 h_3_9), ((map__d1 f_1_7) t_4_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d0 f_1_6 ls_2_5 =
  (match ls_2_5 with
    | `LH_C(h_3_6, t_3_8) -> 
      (`LH_C((f_1_6 h_3_6), ((map__d1_d0 f_1_6) t_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d1 f_2_0 ls_3_3 =
  (match ls_3_3 with
    | `LH_C(h_5_4, t_5_6) -> 
      (`LH_C((f_2_0 h_5_4), ((map__d1_d1 f_2_0) t_5_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d2 f_2_7 ls_4_1 =
  (match ls_4_1 with
    | `LH_C(h_7_1, t_7_3) -> 
      (`LH_C((f_2_7 h_7_1), ((map__d1_d2 f_2_7) t_7_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d3 f_2_3 ls_3_7 =
  (match ls_3_7 with
    | `LH_C(h_6_5, t_6_7) -> 
      (`LH_C((f_2_3 h_6_5), ((map__d1_d3 f_2_3) t_6_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d4 f_1_3 ls_2_0 =
  (match ls_2_0 with
    | `LH_C(h_2_6, t_2_8) -> 
      (`LH_C((f_1_3 h_2_6), ((map__d1_d4 f_1_3) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d5 f_1_2 ls_1_9 =
  (match ls_1_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C((f_1_2 h_2_0), ((map__d1_d5 f_1_2) t_2_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d6 f_2_1 ls_3_4 =
  (match ls_3_4 with
    | `LH_C(h_5_8, t_6_0) -> 
      (`LH_C((f_2_1 h_5_8), ((map__d1_d6 f_2_1) t_6_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d2 f_2_5 ls_3_9 =
  (match ls_3_9 with
    | `LH_C(h_6_9, t_7_1) -> 
      (`LH_C((f_2_5 h_6_9), ((map__d2 f_2_5) t_7_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d3 f_1_5 ls_2_4 =
  (match ls_2_4 with
    | `LH_C(h_3_5, t_3_7) -> 
      (`LH_C((f_1_5 h_3_5), ((map__d3 f_1_5) t_3_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d4 f_2_4 ls_3_8 =
  (match ls_3_8 with
    | `LH_C(h_6_6, t_6_8) -> 
      (`LH_C((f_2_4 h_6_6), ((map__d4 f_2_4) t_6_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5 f_2_9 ls_4_3 =
  (match ls_4_3 with
    | `LH_C(h_7_4, t_7_6) -> 
      (`LH_C((f_2_9 h_7_4), ((map__d5 f_2_9) t_7_6)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6 f_2_8 ls_4_2 =
  (match ls_4_2 with
    | `LH_C(h_7_3, t_7_5) -> 
      (`LH_C((f_2_8 h_7_3), ((map__d6 f_2_8) t_7_5)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d7 f_2_6 ls_4_0 =
  (match ls_4_0 with
    | `LH_C(h_7_0, t_7_2) -> 
      (`LH_C((f_2_6 h_7_0), ((map__d7 f_2_6) t_7_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d8 f_2_2 ls_3_5 =
  (match ls_3_5 with
    | `LH_C(h_5_9, t_6_1) -> 
      (`LH_C((f_2_2 h_5_9), ((map__d8 f_2_2) t_6_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d9 f_1_4 ls_2_1 =
  (match ls_2_1 with
    | `LH_C(h_2_9, t_3_1) -> 
      (`LH_C((f_1_4 h_2_9), ((map__d9 f_1_4) t_3_1)))
    | `LH_N -> 
      (`LH_N));;
let rec mappend__d0 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_3_2, t_3_4) -> 
      (`LH_C(h_3_2, ((mappend__d0 t_3_4) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend__d1 xs_3_5 ys_3_5 =
  (match xs_3_5 with
    | `LH_C(h_7_6, t_7_8) -> 
      (`LH_C(h_7_6, ((mappend__d1 t_7_8) ys_3_5)))
    | `LH_N -> 
      ys_3_5);;
let rec mappend__d1_d0 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_4_1, t_4_3) -> 
      (`LH_C(h_4_1, ((mappend__d1_d0 t_4_3) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec mappend__d1_d1 xs_2_7 ys_2_7 =
  (match xs_2_7 with
    | `LH_C(h_5_5, t_5_7) -> 
      (`LH_C(h_5_5, ((mappend__d1_d1 t_5_7) ys_2_7)))
    | `LH_N -> 
      ys_2_7);;
let rec mappend__d1_d2 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_3_7, t_3_9) -> 
      (`LH_C(h_3_7, ((mappend__d1_d2 t_3_9) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec mappend__d1_d3 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_3_8, t_4_0) -> 
      (`LH_C(h_3_8, ((mappend__d1_d3 t_4_0) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec mappend__d1_d4 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d1_d4 t_2_4) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1_d5 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d1_d5 t_2_5) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d1_d6 xs_2_8 ys_2_8 =
  (match xs_2_8 with
    | `LH_C(h_5_6, t_5_8) -> 
      (`LH_C(h_5_6, ((mappend__d1_d6 t_5_8) ys_2_8)))
    | `LH_N -> 
      ys_2_8);;
let rec mappend__d1_d7 xs_2_3 ys_2_3 =
  (match xs_2_3 with
    | `LH_C(h_4_5, t_4_7) -> 
      (`LH_C(h_4_5, ((mappend__d1_d7 t_4_7) ys_2_3)))
    | `LH_N -> 
      ys_2_3);;
let rec mappend__d1_d8 xs_3_1 ys_3_1 =
  (match xs_3_1 with
    | `LH_C(h_6_2, t_6_4) -> 
      (`LH_C(h_6_2, ((mappend__d1_d8 t_6_4) ys_3_1)))
    | `LH_N -> 
      ys_3_1);;
let rec mappend__d1_d9 xs_2_6 ys_2_6 =
  (match xs_2_6 with
    | `LH_C(h_5_2, t_5_4) -> 
      (`LH_C(h_5_2, ((mappend__d1_d9 t_5_4) ys_2_6)))
    | `LH_N -> 
      ys_2_6);;
let rec mappend__d2 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_4_0, t_4_2) -> 
      (`LH_C(h_4_0, ((mappend__d2 t_4_2) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec mappend__d2_d0 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_8, t_3_0) -> 
      (`LH_C(h_2_8, ((mappend__d2_d0 t_3_0) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d2_d1 xs_2_4 ys_2_4 =
  (match xs_2_4 with
    | `LH_C(h_4_8, t_5_0) -> 
      (`LH_C(h_4_8, ((mappend__d2_d1 t_5_0) ys_2_4)))
    | `LH_N -> 
      ys_2_4);;
let rec mappend__d2_d2 xs_2_1 ys_2_1 =
  (match xs_2_1 with
    | `LH_C(h_4_2, t_4_4) -> 
      (`LH_C(h_4_2, ((mappend__d2_d2 t_4_4) ys_2_1)))
    | `LH_N -> 
      ys_2_1);;
let rec mappend__d2_d3 xs_3_4 ys_3_4 =
  (match xs_3_4 with
    | `LH_C(h_7_5, t_7_7) -> 
      (`LH_C(h_7_5, ((mappend__d2_d3 t_7_7) ys_3_4)))
    | `LH_N -> 
      ys_3_4);;
let rec mappend__d2_d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_5, t_2_7) -> 
      (`LH_C(h_2_5, ((mappend__d2_d4 t_2_7) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend__d2_d5 xs_3_3 ys_3_3 =
  (match xs_3_3 with
    | `LH_C(h_6_8, t_7_0) -> 
      (`LH_C(h_6_8, ((mappend__d2_d5 t_7_0) ys_3_3)))
    | `LH_N -> 
      ys_3_3);;
let rec mappend__d2_d6 xs_3_2 ys_3_2 =
  (match xs_3_2 with
    | `LH_C(h_6_3, t_6_5) -> 
      (`LH_C(h_6_3, ((mappend__d2_d6 t_6_5) ys_3_2)))
    | `LH_N -> 
      ys_3_2);;
let rec mappend__d3 xs_2_5 ys_2_5 =
  (match xs_2_5 with
    | `LH_C(h_5_1, t_5_3) -> 
      (`LH_C(h_5_1, ((mappend__d3 t_5_3) ys_2_5)))
    | `LH_N -> 
      ys_2_5);;
let rec mappend__d4 xs_2_9 ys_2_9 =
  (match xs_2_9 with
    | `LH_C(h_5_7, t_5_9) -> 
      (`LH_C(h_5_7, ((mappend__d4 t_5_9) ys_2_9)))
    | `LH_N -> 
      ys_2_9);;
let rec mappend__d5 xs_3_0 ys_3_0 =
  (match xs_3_0 with
    | `LH_C(h_6_1, t_6_3) -> 
      (`LH_C(h_6_1, ((mappend__d5 t_6_3) ys_3_0)))
    | `LH_N -> 
      ys_3_0);;
let rec mappend__d6 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_3_4, t_3_6) -> 
      (`LH_C(h_3_4, ((mappend__d6 t_3_6) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec mappend__d7 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d7 t_2_3) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d8 xs_2_2 ys_2_2 =
  (match xs_2_2 with
    | `LH_C(h_4_4, t_4_6) -> 
      (`LH_C(h_4_4, ((mappend__d8 t_4_6) ys_2_2)))
    | `LH_N -> 
      ys_2_2);;
let rec mappend__d9 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_3_1, t_3_3) -> 
      (`LH_C(h_3_1, ((mappend__d9 t_3_3) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec max'__d0 _lh_max'_arg1_1 _lh_max'_arg2_1 =
  (match _lh_max'_arg1_1 with
    | `XWin -> 
      (`XWin)
    | _ -> 
      (match _lh_max'_arg2_1 with
        | `XWin -> 
          (`XWin)
        | _ -> 
          (match _lh_max'_arg2_1 with
            | `OWin -> 
              _lh_max'_arg1_1
            | _ -> 
              (match _lh_max'_arg1_1 with
                | `OWin -> 
                  _lh_max'_arg2_1
                | _ -> 
                  (match _lh_max'_arg1_1 with
                    | `Score(_lh_max'_Score_0_2) -> 
                      (match _lh_max'_arg2_1 with
                        | `Score(_lh_max'_Score_0_3) -> 
                          (if (_lh_max'_Score_0_2 > _lh_max'_Score_0_3) then
                            (`Score(_lh_max'_Score_0_2))
                          else
                            (`Score(_lh_max'_Score_0_3)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec min'__d0 _lh_min'_arg1_1 _lh_min'_arg2_1 =
  (match _lh_min'_arg1_1 with
    | `OWin -> 
      (`OWin)
    | _ -> 
      (match _lh_min'_arg2_1 with
        | `OWin -> 
          (`OWin)
        | _ -> 
          (match _lh_min'_arg2_1 with
            | `XWin -> 
              _lh_min'_arg1_1
            | _ -> 
              (match _lh_min'_arg1_1 with
                | `XWin -> 
                  _lh_min'_arg2_1
                | _ -> 
                  (match _lh_min'_arg1_1 with
                    | `Score(_lh_min'_Score_0_2) -> 
                      (match _lh_min'_arg2_1 with
                        | `Score(_lh_min'_Score_0_3) -> 
                          (if (_lh_min'_Score_0_2 < _lh_min'_Score_0_3) then
                            (`Score(_lh_min'_Score_0_2))
                          else
                            (`Score(_lh_min'_Score_0_3)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec opposite__d0 _lh_opposite_arg1_1 =
  (match _lh_opposite_arg1_1 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec opposite__d1 _lh_opposite_arg1_2 =
  (match _lh_opposite_arg1_2 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d0 _lh_scorePiece_arg1_3 _lh_scorePiece_arg2_3 =
  (match _lh_scorePiece_arg1_3 with
    | `X -> 
      _lh_scorePiece_arg2_3
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_3)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d1 _lh_scorePiece_arg1_2 _lh_scorePiece_arg2_2 =
  (match _lh_scorePiece_arg1_2 with
    | `X -> 
      _lh_scorePiece_arg2_2
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_2)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d2 _lh_scorePiece_arg1_1 _lh_scorePiece_arg2_1 =
  (match _lh_scorePiece_arg1_1 with
    | `X -> 
      _lh_scorePiece_arg2_1
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_1)
    | _ -> 
      (failwith "error"));;
let rec showPiece__d0 _lh_showPiece_arg1_6 =
  (match _lh_showPiece_arg1_6 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d1 _lh_showPiece_arg1_2 =
  (match _lh_showPiece_arg1_2 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d2 _lh_showPiece_arg1_9 =
  (match _lh_showPiece_arg1_9 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d3 _lh_showPiece_arg1_8 =
  (match _lh_showPiece_arg1_8 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d4 _lh_showPiece_arg1_4 =
  (match _lh_showPiece_arg1_4 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d5 _lh_showPiece_arg1_1 =
  (match _lh_showPiece_arg1_1 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d6 _lh_showPiece_arg1_5 =
  (match _lh_showPiece_arg1_5 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d7 _lh_showPiece_arg1_3 =
  (match _lh_showPiece_arg1_3 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece__d8 _lh_showPiece_arg1_7 =
  (match _lh_showPiece_arg1_7 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec sum__d0 ls_2_8 =
  (match ls_2_8 with
    | `LH_C(h_4_6, t_4_8) -> 
      (h_4_6 + (sum__d0 t_4_8))
    | `LH_N -> 
      0);;
let rec sum__d1 ls_3_6 =
  (match ls_3_6 with
    | `LH_C(h_6_4, t_6_6) -> 
      (h_6_4 + (sum__d1 t_6_6))
    | `LH_N -> 
      0);;
let rec sum__d2 ls_2_3 =
  (match ls_2_3 with
    | `LH_C(h_3_3, t_3_5) -> 
      (h_3_3 + (sum__d2 t_3_5))
    | `LH_N -> 
      0);;
let rec sum__d3 ls_2_7 =
  (match ls_2_7 with
    | `LH_C(h_4_3, t_4_5) -> 
      (h_4_3 + (sum__d3 t_4_5))
    | `LH_N -> 
      0);;
let rec sum__d4 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_3_0, t_3_2) -> 
      (h_3_0 + (sum__d4 t_3_2))
    | `LH_N -> 
      0);;
let rec sum__d5 ls_2_9 =
  (match ls_2_9 with
    | `LH_C(h_4_7, t_4_9) -> 
      (h_4_7 + (sum__d5 t_4_9))
    | `LH_N -> 
      0);;
let rec testBoard__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec win1__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1__d1 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1__d2 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d1 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d2 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d1 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d2 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d1 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d2 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec alternate__d0 _lh_alternate_arg1_1 _lh_alternate_arg2_1 _lh_alternate_arg3_1 _lh_alternate_arg4_1 =
  (if (fullBoard__d0 _lh_alternate_arg4_1) then
    (`LH_N)
  else
    (if ((static__d1 _lh_alternate_arg4_1) = (`XWin)) then
      (`LH_N)
    else
      (if ((static__d2 _lh_alternate_arg4_1) = (`OWin)) then
        (`LH_N)
      else
        (let rec opposition_1 = (opposite__d1 _lh_alternate_arg1_1) in
          (let rec possibles_1 = ((newPositions__d2 _lh_alternate_arg1_1) _lh_alternate_arg4_1) in
            (let rec scores_1 = ((map__d1_d0 (((bestMove__d0 opposition_1) _lh_alternate_arg3_1) _lh_alternate_arg2_1)) possibles_1) in
              (let rec boardd_eval_1 = (((best__d0 _lh_alternate_arg2_1) possibles_1) scores_1) in
                (let rec _lh_matchIdent_1_0 = boardd_eval_1 in
                  (match _lh_matchIdent_1_0 with
                    | `LH_P2(_lh_alternate_LH_P2_0_1, _lh_alternate_LH_P2_1_1) -> 
                      (`LH_C((`LH_P2(_lh_alternate_LH_P2_0_1, _lh_alternate_LH_P2_1_1)), ((((alternate__d0 opposition_1) _lh_alternate_arg3_1) _lh_alternate_arg2_1) _lh_alternate_LH_P2_0_1)))
                    | _ -> 
                      (failwith "error"))))))))))
and bestMove__d0 _lh_bestMove_arg1_1 _lh_bestMove_arg2_1 _lh_bestMove_arg3_1 _lh_funcomp_x_3 =
  ((fun _lh_funcomp_x_4 -> 
    (((mise__d0 _lh_bestMove_arg2_1) _lh_bestMove_arg3_1) (cropTree__d0 _lh_funcomp_x_4))) ((fun _lh_funcomp_x_5 -> 
    ((mapTree__d0 static__d0) ((searchTree__d0 _lh_bestMove_arg1_1) _lh_funcomp_x_5))) _lh_funcomp_x_3))
and concat__d0 lss_5 =
  (match lss_5 with
    | `LH_C(h_7_2, t_7_4) -> 
      ((mappend__d0 h_7_2) (concat__d0 t_7_4))
    | `LH_N -> 
      (`LH_N))
and concat__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_2_7, t_2_9) -> 
      ((mappend__d1 h_2_7) (concat__d1 t_2_9))
    | `LH_N -> 
      (`LH_N))
and concat__d2 lss_1 =
  (match lss_1 with
    | `LH_C(h_2_4, t_2_6) -> 
      ((mappend__d2 h_2_4) (concat__d2 t_2_6))
    | `LH_N -> 
      (`LH_N))
and concat__d3 lss_4 =
  (match lss_4 with
    | `LH_C(h_6_7, t_6_9) -> 
      ((mappend__d3 h_6_7) (concat__d3 t_6_9))
    | `LH_N -> 
      (`LH_N))
and concat__d4 lss_3 =
  (match lss_3 with
    | `LH_C(h_6_0, t_6_2) -> 
      ((mappend__d4 h_6_0) (concat__d4 t_6_2))
    | `LH_N -> 
      (`LH_N))
and cropTree__d0 _lh_cropTree_arg1_1 =
  (match _lh_cropTree_arg1_1 with
    | `Branch(_lh_cropTree_Branch_0_1, _lh_cropTree_Branch_1_1) -> 
      (match _lh_cropTree_Branch_1_1 with
        | `LH_N -> 
          (`Branch(_lh_cropTree_Branch_0_1, (`LH_N)))
        | _ -> 
          (match _lh_cropTree_Branch_0_1 with
            | `Score(_lh_cropTree_Score_0_1) -> 
              (`Branch((`Score(_lh_cropTree_Score_0_1)), ((map__d0 cropTree__d0) _lh_cropTree_Branch_1_1)))
            | _ -> 
              (`Branch(_lh_cropTree_Branch_0_1, (`LH_N)))))
    | _ -> 
      (failwith "error"))
and empty__d0 _lh_empty_arg1_3 _lh_empty_arg2_3 =
  (match _lh_empty_arg1_3 with
    | `LH_P2(_lh_empty_LH_P2_0_3, _lh_empty_LH_P2_1_3) -> 
      (match _lh_empty_LH_P2_0_3 with
        | 1 -> 
          (match _lh_empty_arg2_3 with
            | `LH_C(_lh_empty_LH_C_0_2_7, _lh_empty_LH_C_1_2_7) -> 
              (match _lh_empty_LH_C_1_2_7 with
                | `LH_C(_lh_empty_LH_C_0_2_8, _lh_empty_LH_C_1_2_8) -> 
                  (match _lh_empty_LH_C_1_2_8 with
                    | `LH_C(_lh_empty_LH_C_0_2_9, _lh_empty_LH_C_1_2_9) -> 
                      (match _lh_empty_LH_C_1_2_9 with
                        | `LH_N -> 
                          ((empty'__d2 _lh_empty_LH_P2_1_3) _lh_empty_LH_C_0_2_7)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_3 with
            | `LH_C(_lh_empty_LH_C_0_3_0, _lh_empty_LH_C_1_3_0) -> 
              (match _lh_empty_LH_C_1_3_0 with
                | `LH_C(_lh_empty_LH_C_0_3_1, _lh_empty_LH_C_1_3_1) -> 
                  (match _lh_empty_LH_C_1_3_1 with
                    | `LH_C(_lh_empty_LH_C_0_3_2, _lh_empty_LH_C_1_3_2) -> 
                      (match _lh_empty_LH_C_1_3_2 with
                        | `LH_N -> 
                          ((empty'__d0 _lh_empty_LH_P2_1_3) _lh_empty_LH_C_0_3_1)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_3 with
            | `LH_C(_lh_empty_LH_C_0_3_3, _lh_empty_LH_C_1_3_3) -> 
              (match _lh_empty_LH_C_1_3_3 with
                | `LH_C(_lh_empty_LH_C_0_3_4, _lh_empty_LH_C_1_3_4) -> 
                  (match _lh_empty_LH_C_1_3_4 with
                    | `LH_C(_lh_empty_LH_C_0_3_5, _lh_empty_LH_C_1_3_5) -> 
                      (match _lh_empty_LH_C_1_3_5 with
                        | `LH_N -> 
                          ((empty'__d1 _lh_empty_LH_P2_1_3) _lh_empty_LH_C_0_3_5)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and empty__d1 _lh_empty_arg1_2 _lh_empty_arg2_2 =
  (match _lh_empty_arg1_2 with
    | `LH_P2(_lh_empty_LH_P2_0_2, _lh_empty_LH_P2_1_2) -> 
      (match _lh_empty_LH_P2_0_2 with
        | 1 -> 
          (match _lh_empty_arg2_2 with
            | `LH_C(_lh_empty_LH_C_0_1_8, _lh_empty_LH_C_1_1_8) -> 
              (match _lh_empty_LH_C_1_1_8 with
                | `LH_C(_lh_empty_LH_C_0_1_9, _lh_empty_LH_C_1_1_9) -> 
                  (match _lh_empty_LH_C_1_1_9 with
                    | `LH_C(_lh_empty_LH_C_0_2_0, _lh_empty_LH_C_1_2_0) -> 
                      (match _lh_empty_LH_C_1_2_0 with
                        | `LH_N -> 
                          ((empty'__d5 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_1_8)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_2 with
            | `LH_C(_lh_empty_LH_C_0_2_1, _lh_empty_LH_C_1_2_1) -> 
              (match _lh_empty_LH_C_1_2_1 with
                | `LH_C(_lh_empty_LH_C_0_2_2, _lh_empty_LH_C_1_2_2) -> 
                  (match _lh_empty_LH_C_1_2_2 with
                    | `LH_C(_lh_empty_LH_C_0_2_3, _lh_empty_LH_C_1_2_3) -> 
                      (match _lh_empty_LH_C_1_2_3 with
                        | `LH_N -> 
                          ((empty'__d3 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_2_2)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_2 with
            | `LH_C(_lh_empty_LH_C_0_2_4, _lh_empty_LH_C_1_2_4) -> 
              (match _lh_empty_LH_C_1_2_4 with
                | `LH_C(_lh_empty_LH_C_0_2_5, _lh_empty_LH_C_1_2_5) -> 
                  (match _lh_empty_LH_C_1_2_5 with
                    | `LH_C(_lh_empty_LH_C_0_2_6, _lh_empty_LH_C_1_2_6) -> 
                      (match _lh_empty_LH_C_1_2_6 with
                        | `LH_N -> 
                          ((empty'__d4 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_2_6)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and empty__d2 _lh_empty_arg1_1 _lh_empty_arg2_1 =
  (match _lh_empty_arg1_1 with
    | `LH_P2(_lh_empty_LH_P2_0_1, _lh_empty_LH_P2_1_1) -> 
      (match _lh_empty_LH_P2_0_1 with
        | 1 -> 
          (match _lh_empty_arg2_1 with
            | `LH_C(_lh_empty_LH_C_0_9, _lh_empty_LH_C_1_9) -> 
              (match _lh_empty_LH_C_1_9 with
                | `LH_C(_lh_empty_LH_C_0_1_0, _lh_empty_LH_C_1_1_0) -> 
                  (match _lh_empty_LH_C_1_1_0 with
                    | `LH_C(_lh_empty_LH_C_0_1_1, _lh_empty_LH_C_1_1_1) -> 
                      (match _lh_empty_LH_C_1_1_1 with
                        | `LH_N -> 
                          ((empty'__d8 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_9)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_1 with
            | `LH_C(_lh_empty_LH_C_0_1_2, _lh_empty_LH_C_1_1_2) -> 
              (match _lh_empty_LH_C_1_1_2 with
                | `LH_C(_lh_empty_LH_C_0_1_3, _lh_empty_LH_C_1_1_3) -> 
                  (match _lh_empty_LH_C_1_1_3 with
                    | `LH_C(_lh_empty_LH_C_0_1_4, _lh_empty_LH_C_1_1_4) -> 
                      (match _lh_empty_LH_C_1_1_4 with
                        | `LH_N -> 
                          ((empty'__d6 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_1_3)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_1 with
            | `LH_C(_lh_empty_LH_C_0_1_5, _lh_empty_LH_C_1_1_5) -> 
              (match _lh_empty_LH_C_1_1_5 with
                | `LH_C(_lh_empty_LH_C_0_1_6, _lh_empty_LH_C_1_1_6) -> 
                  (match _lh_empty_LH_C_1_1_6 with
                    | `LH_C(_lh_empty_LH_C_0_1_7, _lh_empty_LH_C_1_1_7) -> 
                      (match _lh_empty_LH_C_1_1_7 with
                        | `LH_N -> 
                          ((empty'__d7 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_1_7)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and fullBoard__d0 _lh_fullBoard_arg1_1 =
  (and__d0 ((map__d9 (fun x_3 -> 
    (not (x_3 = (`Empty))))) (concat__d2 _lh_fullBoard_arg1_1)))
and mapTree__d0 _lh_mapTree_arg1_1 _lh_mapTree_arg2_1 =
  (match _lh_mapTree_arg2_1 with
    | `Branch(_lh_mapTree_Branch_0_1, _lh_mapTree_Branch_1_1) -> 
      (`Branch((_lh_mapTree_arg1_1 _lh_mapTree_Branch_0_1), ((map__d1 (mapTree__d0 _lh_mapTree_arg1_1)) _lh_mapTree_Branch_1_1)))
    | _ -> 
      (failwith "error"))
and mise__d0 _lh_mise_arg1_1 _lh_mise_arg2_1 _lh_mise_arg3_1 =
  (match _lh_mise_arg3_1 with
    | `Branch(_lh_mise_Branch_0_1, _lh_mise_Branch_1_1) -> 
      (match _lh_mise_Branch_1_1 with
        | `LH_N -> 
          _lh_mise_Branch_0_1
        | _ -> 
          (((foldr__d0 _lh_mise_arg1_1) ((_lh_mise_arg2_1 (`OWin)) (`XWin))) ((map__d2 ((mise__d0 _lh_mise_arg2_1) _lh_mise_arg1_1)) _lh_mise_Branch_1_1)))
    | _ -> 
      (failwith "error"))
and newPositions__d0 _lh_newPositions_arg1_3 _lh_newPositions_arg2_3 =
  (concat__d0 ((map__d3 ((placePiece__d0 _lh_newPositions_arg1_3) _lh_newPositions_arg2_3)) (let rec _lh_listcomp_fun_6 = (fun _lh_listcomp_fun_para_6 -> 
    (match _lh_listcomp_fun_para_6 with
      | `LH_C(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_t_6) -> 
        (let rec _lh_listcomp_fun_7 = (fun _lh_listcomp_fun_para_7 -> 
          (match _lh_listcomp_fun_para_7 with
            | `LH_C(_lh_listcomp_fun_ls_h_7, _lh_listcomp_fun_ls_t_7) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_h_7)), (_lh_listcomp_fun_7 _lh_listcomp_fun_ls_t_7)))
            | `LH_N -> 
              (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_6))) in
          (_lh_listcomp_fun_7 ((enumFromTo__d1 1) 3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_6 ((enumFromTo__d0 1) 3)))))
and newPositions__d1 _lh_newPositions_arg1_1 _lh_newPositions_arg2_1 =
  (concat__d1 ((map__d4 ((placePiece__d1 _lh_newPositions_arg1_1) _lh_newPositions_arg2_1)) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (match _lh_listcomp_fun_para_2 with
      | `LH_C(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_t_2) -> 
        (let rec _lh_listcomp_fun_3 = (fun _lh_listcomp_fun_para_3 -> 
          (match _lh_listcomp_fun_para_3 with
            | `LH_C(_lh_listcomp_fun_ls_h_3, _lh_listcomp_fun_ls_t_3) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_h_3)), (_lh_listcomp_fun_3 _lh_listcomp_fun_ls_t_3)))
            | `LH_N -> 
              (_lh_listcomp_fun_2 _lh_listcomp_fun_ls_t_2))) in
          (_lh_listcomp_fun_3 ((enumFromTo__d3 1) 3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_2 ((enumFromTo__d2 1) 3)))))
and newPositions__d2 _lh_newPositions_arg1_2 _lh_newPositions_arg2_2 =
  (concat__d3 ((map__d1_d1 ((placePiece__d2 _lh_newPositions_arg1_2) _lh_newPositions_arg2_2)) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_4 -> 
    (match _lh_listcomp_fun_para_4 with
      | `LH_C(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_t_4) -> 
        (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_5 -> 
          (match _lh_listcomp_fun_para_5 with
            | `LH_C(_lh_listcomp_fun_ls_h_5, _lh_listcomp_fun_ls_t_5) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_4, _lh_listcomp_fun_ls_h_5)), (_lh_listcomp_fun_5 _lh_listcomp_fun_ls_t_5)))
            | `LH_N -> 
              (_lh_listcomp_fun_4 _lh_listcomp_fun_ls_t_4))) in
          (_lh_listcomp_fun_5 ((enumFromTo__d5 1) 3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_4 ((enumFromTo__d4 1) 3)))))
and placePiece__d0 _lh_placePiece_arg1_3 _lh_placePiece_arg2_3 _lh_placePiece_arg3_3 =
  (if (not ((empty__d0 _lh_placePiece_arg3_3) _lh_placePiece_arg2_3)) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_1_1 = _lh_placePiece_arg2_3 in
      (match _lh_matchIdent_1_1 with
        | `LH_C(_lh_placePiece_LH_C_0_9, _lh_placePiece_LH_C_1_9) -> 
          (match _lh_placePiece_LH_C_1_9 with
            | `LH_C(_lh_placePiece_LH_C_0_1_0, _lh_placePiece_LH_C_1_1_0) -> 
              (match _lh_placePiece_LH_C_1_1_0 with
                | `LH_C(_lh_placePiece_LH_C_0_1_1, _lh_placePiece_LH_C_1_1_1) -> 
                  (match _lh_placePiece_LH_C_1_1_1 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_1_2 = _lh_placePiece_arg3_3 in
                        (match _lh_matchIdent_1_2 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_3, _lh_placePiece_LH_P2_1_3) -> 
                            (match _lh_placePiece_LH_P2_0_3 with
                              | 1 -> 
                                (`LH_C((`LH_C((((insert__d0 _lh_placePiece_arg1_3) _lh_placePiece_LH_C_0_9) _lh_placePiece_LH_P2_1_3), (`LH_C(_lh_placePiece_LH_C_0_1_0, (`LH_C(_lh_placePiece_LH_C_0_1_1, (`LH_N))))))), (`LH_N)))
                              | 2 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_9, (`LH_C((((insert__d1 _lh_placePiece_arg1_3) _lh_placePiece_LH_C_0_1_0) _lh_placePiece_LH_P2_1_3), (`LH_C(_lh_placePiece_LH_C_0_1_1, (`LH_N))))))), (`LH_N)))
                              | 3 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_9, (`LH_C(_lh_placePiece_LH_C_0_1_0, (`LH_C((((insert__d2 _lh_placePiece_arg1_3) _lh_placePiece_LH_C_0_1_1) _lh_placePiece_LH_P2_1_3), (`LH_N))))))), (`LH_N)))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and placePiece__d1 _lh_placePiece_arg1_1 _lh_placePiece_arg2_1 _lh_placePiece_arg3_1 =
  (if (not ((empty__d1 _lh_placePiece_arg3_1) _lh_placePiece_arg2_1)) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_6 = _lh_placePiece_arg2_1 in
      (match _lh_matchIdent_6 with
        | `LH_C(_lh_placePiece_LH_C_0_3, _lh_placePiece_LH_C_1_3) -> 
          (match _lh_placePiece_LH_C_1_3 with
            | `LH_C(_lh_placePiece_LH_C_0_4, _lh_placePiece_LH_C_1_4) -> 
              (match _lh_placePiece_LH_C_1_4 with
                | `LH_C(_lh_placePiece_LH_C_0_5, _lh_placePiece_LH_C_1_5) -> 
                  (match _lh_placePiece_LH_C_1_5 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_7 = _lh_placePiece_arg3_1 in
                        (match _lh_matchIdent_7 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_1, _lh_placePiece_LH_P2_1_1) -> 
                            (match _lh_placePiece_LH_P2_0_1 with
                              | 1 -> 
                                (`LH_C((`LH_C((((insert__d3 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_3) _lh_placePiece_LH_P2_1_1), (`LH_C(_lh_placePiece_LH_C_0_4, (`LH_C(_lh_placePiece_LH_C_0_5, (`LH_N))))))), (`LH_N)))
                              | 2 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_3, (`LH_C((((insert__d4 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_4) _lh_placePiece_LH_P2_1_1), (`LH_C(_lh_placePiece_LH_C_0_5, (`LH_N))))))), (`LH_N)))
                              | 3 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_3, (`LH_C(_lh_placePiece_LH_C_0_4, (`LH_C((((insert__d5 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_5) _lh_placePiece_LH_P2_1_1), (`LH_N))))))), (`LH_N)))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and placePiece__d2 _lh_placePiece_arg1_2 _lh_placePiece_arg2_2 _lh_placePiece_arg3_2 =
  (if (not ((empty__d2 _lh_placePiece_arg3_2) _lh_placePiece_arg2_2)) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_8 = _lh_placePiece_arg2_2 in
      (match _lh_matchIdent_8 with
        | `LH_C(_lh_placePiece_LH_C_0_6, _lh_placePiece_LH_C_1_6) -> 
          (match _lh_placePiece_LH_C_1_6 with
            | `LH_C(_lh_placePiece_LH_C_0_7, _lh_placePiece_LH_C_1_7) -> 
              (match _lh_placePiece_LH_C_1_7 with
                | `LH_C(_lh_placePiece_LH_C_0_8, _lh_placePiece_LH_C_1_8) -> 
                  (match _lh_placePiece_LH_C_1_8 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_9 = _lh_placePiece_arg3_2 in
                        (match _lh_matchIdent_9 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_2, _lh_placePiece_LH_P2_1_2) -> 
                            (match _lh_placePiece_LH_P2_0_2 with
                              | 1 -> 
                                (`LH_C((`LH_C((((insert__d6 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_6) _lh_placePiece_LH_P2_1_2), (`LH_C(_lh_placePiece_LH_C_0_7, (`LH_C(_lh_placePiece_LH_C_0_8, (`LH_N))))))), (`LH_N)))
                              | 2 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_6, (`LH_C((((insert__d7 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_7) _lh_placePiece_LH_P2_1_2), (`LH_C(_lh_placePiece_LH_C_0_8, (`LH_N))))))), (`LH_N)))
                              | 3 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_6, (`LH_C(_lh_placePiece_LH_C_0_7, (`LH_C((((insert__d8 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_8) _lh_placePiece_LH_P2_1_2), (`LH_N))))))), (`LH_N)))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and prog__d0 _lh_prog_arg1_1 =
  (let rec board_1 = (fun _lh_board_arg1_1 -> 
    (match _lh_board_arg1_1 with
      | `LH_C(_lh_board_LH_C_0_1_3, _lh_board_LH_C_1_1_3) -> 
        (match _lh_board_LH_C_0_1_3 with
          | 'd' -> 
            (match _lh_board_LH_C_1_1_3 with
              | `LH_C(_lh_board_LH_C_0_1_4, _lh_board_LH_C_1_1_4) -> 
                (match _lh_board_LH_C_0_1_4 with
                  | 'o' -> 
                    (match _lh_board_LH_C_1_1_4 with
                      | `LH_C(_lh_board_LH_C_0_1_5, _lh_board_LH_C_1_1_5) -> 
                        (match _lh_board_LH_C_0_1_5 with
                          | 'e' -> 
                            (match _lh_board_LH_C_1_1_5 with
                              | `LH_C(_lh_board_LH_C_0_1_6, _lh_board_LH_C_1_1_6) -> 
                                (match _lh_board_LH_C_0_1_6 with
                                  | 's' -> 
                                    (match _lh_board_LH_C_1_1_6 with
                                      | `LH_C(_lh_board_LH_C_0_1_7, _lh_board_LH_C_1_1_7) -> 
                                        (match _lh_board_LH_C_0_1_7 with
                                          | 'n' -> 
                                            (match _lh_board_LH_C_1_1_7 with
                                              | `LH_C(_lh_board_LH_C_0_1_8, _lh_board_LH_C_1_1_8) -> 
                                                (match _lh_board_LH_C_0_1_8 with
                                                  | 't' -> 
                                                    (match _lh_board_LH_C_1_1_8 with
                                                      | `LH_C(_lh_board_LH_C_0_1_9, _lh_board_LH_C_1_1_9) -> 
                                                        (match _lh_board_LH_C_0_1_9 with
                                                          | ' ' -> 
                                                            (match _lh_board_LH_C_1_1_9 with
                                                              | `LH_C(_lh_board_LH_C_0_2_0, _lh_board_LH_C_1_2_0) -> 
                                                                (match _lh_board_LH_C_0_2_0 with
                                                                  | 'h' -> 
                                                                    (match _lh_board_LH_C_1_2_0 with
                                                                      | `LH_C(_lh_board_LH_C_0_2_1, _lh_board_LH_C_1_2_1) -> 
                                                                        (match _lh_board_LH_C_0_2_1 with
                                                                          | 'a' -> 
                                                                            (match _lh_board_LH_C_1_2_1 with
                                                                              | `LH_C(_lh_board_LH_C_0_2_2, _lh_board_LH_C_1_2_2) -> 
                                                                                (match _lh_board_LH_C_0_2_2 with
                                                                                  | 'p' -> 
                                                                                    (match _lh_board_LH_C_1_2_2 with
                                                                                      | `LH_C(_lh_board_LH_C_0_2_3, _lh_board_LH_C_1_2_3) -> 
                                                                                        (match _lh_board_LH_C_0_2_3 with
                                                                                          | 'p' -> 
                                                                                            (match _lh_board_LH_C_1_2_3 with
                                                                                              | `LH_C(_lh_board_LH_C_0_2_4, _lh_board_LH_C_1_2_4) -> 
                                                                                                (match _lh_board_LH_C_0_2_4 with
                                                                                                  | 'e' -> 
                                                                                                    (match _lh_board_LH_C_1_2_4 with
                                                                                                      | `LH_C(_lh_board_LH_C_0_2_5, _lh_board_LH_C_1_2_5) -> 
                                                                                                        (match _lh_board_LH_C_0_2_5 with
                                                                                                          | 'n' -> 
                                                                                                            (match _lh_board_LH_C_1_2_5 with
                                                                                                              | `LH_N -> 
                                                                                                                ((mappend__d5 testBoard__d1) testBoard__d2)
                                                                                                              | _ -> 
                                                                                                                testBoard__d0)
                                                                                                          | _ -> 
                                                                                                            testBoard__d0)
                                                                                                      | _ -> 
                                                                                                        testBoard__d0)
                                                                                                  | _ -> 
                                                                                                    testBoard__d0)
                                                                                              | _ -> 
                                                                                                testBoard__d0)
                                                                                          | _ -> 
                                                                                            testBoard__d0)
                                                                                      | _ -> 
                                                                                        testBoard__d0)
                                                                                  | _ -> 
                                                                                    testBoard__d0)
                                                                              | _ -> 
                                                                                testBoard__d0)
                                                                          | _ -> 
                                                                            testBoard__d0)
                                                                      | _ -> 
                                                                        testBoard__d0)
                                                                  | _ -> 
                                                                    testBoard__d0)
                                                              | _ -> 
                                                                testBoard__d0)
                                                          | _ -> 
                                                            testBoard__d0)
                                                      | _ -> 
                                                        testBoard__d0)
                                                  | _ -> 
                                                    testBoard__d0)
                                              | _ -> 
                                                testBoard__d0)
                                          | _ -> 
                                            testBoard__d0)
                                      | _ -> 
                                        testBoard__d0)
                                  | _ -> 
                                    testBoard__d0)
                              | _ -> 
                                testBoard__d0)
                          | _ -> 
                            testBoard__d0)
                      | _ -> 
                        testBoard__d0)
                  | _ -> 
                    testBoard__d0)
              | _ -> 
                testBoard__d0)
          | _ -> 
            testBoard__d0)
      | _ -> 
        testBoard__d0)) in
    (let rec game_1 = ((((alternate__d0 (`X)) max'__d0) min'__d0) (board_1 _lh_prog_arg1_1)) in
      ((mappend__d6 (`LH_C('O', (`LH_C('X', (`LH_C('O', (`LH_C('|', (`LH_N)))))))))) (concat__d4 ((map__d1_d6 showMove__d0) game_1)))))
and prune__d0 _lh_prune_arg1_1 _lh_prune_arg2_1 =
  (match _lh_prune_arg1_1 with
    | 0 -> 
      (match _lh_prune_arg2_1 with
        | `Branch(_lh_prune_Branch_0_3, _lh_prune_Branch_1_3) -> 
          (`Branch(_lh_prune_Branch_0_3, (`LH_N)))
        | _ -> 
          (match _lh_prune_arg2_1 with
            | `Branch(_lh_prune_Branch_0_4, _lh_prune_Branch_1_4) -> 
              (if (_lh_prune_arg1_1 < 0) then
                ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
              else
                (`Branch(_lh_prune_Branch_0_4, ((map__d5 (prune__d0 (_lh_prune_arg1_1 - 1))) _lh_prune_Branch_1_4))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (match _lh_prune_arg2_1 with
        | `Branch(_lh_prune_Branch_0_5, _lh_prune_Branch_1_5) -> 
          (if (_lh_prune_arg1_1 < 0) then
            ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
          else
            (`Branch(_lh_prune_Branch_0_5, ((map__d5 (prune__d0 (_lh_prune_arg1_1 - 1))) _lh_prune_Branch_1_5))))
        | _ -> 
          (failwith "error")))
and repTree__d0 _lh_repTree_arg1_1 _lh_repTree_arg2_1 _lh_repTree_arg3_1 =
  (`Branch(_lh_repTree_arg3_1, ((map__d6 ((repTree__d0 _lh_repTree_arg2_1) _lh_repTree_arg1_1)) (_lh_repTree_arg1_1 _lh_repTree_arg3_1))))
and score__d0 _lh_score_arg1_3 _lh_score_arg2_3 =
  (eval__d0 (sum__d0 ((map__d8 sum__d1) (((map2__d0 (map2__d1 scorePiece__d0)) _lh_score_arg1_3) _lh_score_arg2_3))))
and score__d1 _lh_score_arg1_1 _lh_score_arg2_1 =
  (eval__d1 (sum__d2 ((map__d1_d3 sum__d3) (((map2__d2 (map2__d3 scorePiece__d1)) _lh_score_arg1_1) _lh_score_arg2_1))))
and score__d2 _lh_score_arg1_2 _lh_score_arg2_2 =
  (eval__d2 (sum__d4 ((map__d1_d5 sum__d5) (((map2__d4 (map2__d5 scorePiece__d2)) _lh_score_arg1_2) _lh_score_arg2_2))))
and searchTree__d0 _lh_searchTree_arg1_1 _lh_searchTree_arg2_1 =
  ((prune__d0 5) (((repTree__d0 (newPositions__d0 _lh_searchTree_arg1_1)) (newPositions__d1 (opposite__d0 _lh_searchTree_arg1_1))) _lh_searchTree_arg2_1))
and showBoard__d0 _lh_showBoard_arg1_1 =
  (match _lh_showBoard_arg1_1 with
    | `LH_C(_lh_showBoard_LH_C_0_3, _lh_showBoard_LH_C_1_3) -> 
      (match _lh_showBoard_LH_C_1_3 with
        | `LH_C(_lh_showBoard_LH_C_0_4, _lh_showBoard_LH_C_1_4) -> 
          (match _lh_showBoard_LH_C_1_4 with
            | `LH_C(_lh_showBoard_LH_C_0_5, _lh_showBoard_LH_C_1_5) -> 
              (match _lh_showBoard_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend__d9 ((mappend__d1_d0 ((mappend__d1_d1 ((mappend__d1_d2 ((mappend__d1_d3 (showRow__d0 _lh_showBoard_LH_C_0_3)) (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N))))))))))))))))))) (showRow__d1 _lh_showBoard_LH_C_0_4))) (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N))))))))))))))))))) (showRow__d2 _lh_showBoard_LH_C_0_5))) (`LH_C('|', (`LH_C('|', (`LH_N))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showEvaluation__d0 _lh_showEvaluation_arg1_1 =
  (match _lh_showEvaluation_arg1_1 with
    | `XWin -> 
      (`LH_C('X', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `OWin -> 
      (`LH_C('O', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `Score(_lh_showEvaluation_Score_0_1) -> 
      ((mappend__d2_d6 (`LH_C('S', (`LH_C('c', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_N)))))))))))) (string_of_int _lh_showEvaluation_Score_0_1))
    | _ -> 
      (failwith "error"))
and showMove__d0 _lh_showMove_arg1_1 =
  (match _lh_showMove_arg1_1 with
    | `LH_P2(_lh_showMove_LH_P2_0_1, _lh_showMove_LH_P2_1_1) -> 
      ((mappend__d7 ((mappend__d8 (showEvaluation__d0 _lh_showMove_LH_P2_1_1)) (`LH_C('|', (`LH_N))))) (showBoard__d0 _lh_showMove_LH_P2_0_1))
    | _ -> 
      (failwith "error"))
and showRow__d0 _lh_showRow_arg1_3 =
  (match _lh_showRow_arg1_3 with
    | `LH_C(_lh_showRow_LH_C_0_9, _lh_showRow_LH_C_1_9) -> 
      (match _lh_showRow_LH_C_1_9 with
        | `LH_C(_lh_showRow_LH_C_0_1_0, _lh_showRow_LH_C_1_1_0) -> 
          (match _lh_showRow_LH_C_1_1_0 with
            | `LH_C(_lh_showRow_LH_C_0_1_1, _lh_showRow_LH_C_1_1_1) -> 
              (match _lh_showRow_LH_C_1_1_1 with
                | `LH_N -> 
                  ((mappend__d1_d4 ((mappend__d1_d5 ((mappend__d1_d6 ((mappend__d1_d7 (showPiece__d0 _lh_showRow_LH_C_0_9)) (`LH_C('|', (`LH_N))))) (showPiece__d1 _lh_showRow_LH_C_0_1_0))) (`LH_C('|', (`LH_N))))) (showPiece__d2 _lh_showRow_LH_C_0_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showRow__d1 _lh_showRow_arg1_1 =
  (match _lh_showRow_arg1_1 with
    | `LH_C(_lh_showRow_LH_C_0_3, _lh_showRow_LH_C_1_3) -> 
      (match _lh_showRow_LH_C_1_3 with
        | `LH_C(_lh_showRow_LH_C_0_4, _lh_showRow_LH_C_1_4) -> 
          (match _lh_showRow_LH_C_1_4 with
            | `LH_C(_lh_showRow_LH_C_0_5, _lh_showRow_LH_C_1_5) -> 
              (match _lh_showRow_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend__d1_d8 ((mappend__d1_d9 ((mappend__d2_d0 ((mappend__d2_d1 (showPiece__d3 _lh_showRow_LH_C_0_3)) (`LH_C('|', (`LH_N))))) (showPiece__d4 _lh_showRow_LH_C_0_4))) (`LH_C('|', (`LH_N))))) (showPiece__d5 _lh_showRow_LH_C_0_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showRow__d2 _lh_showRow_arg1_2 =
  (match _lh_showRow_arg1_2 with
    | `LH_C(_lh_showRow_LH_C_0_6, _lh_showRow_LH_C_1_6) -> 
      (match _lh_showRow_LH_C_1_6 with
        | `LH_C(_lh_showRow_LH_C_0_7, _lh_showRow_LH_C_1_7) -> 
          (match _lh_showRow_LH_C_1_7 with
            | `LH_C(_lh_showRow_LH_C_0_8, _lh_showRow_LH_C_1_8) -> 
              (match _lh_showRow_LH_C_1_8 with
                | `LH_N -> 
                  ((mappend__d2_d2 ((mappend__d2_d3 ((mappend__d2_d4 ((mappend__d2_d5 (showPiece__d6 _lh_showRow_LH_C_0_6)) (`LH_C('|', (`LH_N))))) (showPiece__d7 _lh_showRow_LH_C_0_7))) (`LH_C('|', (`LH_N))))) (showPiece__d8 _lh_showRow_LH_C_0_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and static__d0 _lh_static_arg1_3 =
  ((interpret__d0 0) ((map__d7 (score__d0 _lh_static_arg1_3)) wins__d0))
and static__d1 _lh_static_arg1_2 =
  ((interpret__d1 0) ((map__d1_d2 (score__d1 _lh_static_arg1_2)) wins__d1))
and static__d2 _lh_static_arg1_1 =
  ((interpret__d2 0) ((map__d1_d4 (score__d2 _lh_static_arg1_1)) wins__d2))
and testMinimax_nofib__d0 _lh_testMinimax_nofib_arg1_1 =
  (length__d0 (prog__d0 _lh_testMinimax_nofib_arg1_1))
and wins__d0 =
  (`LH_C(win1__d0, (`LH_C(win2__d0, (`LH_C(win3__d0, (`LH_C(win4__d0, (`LH_C(win5__d0, (`LH_C(win6__d0, (`LH_C(win7__d0, (`LH_C(win8__d0, (`LH_N)))))))))))))))))
and wins__d1 =
  (`LH_C(win1__d1, (`LH_C(win2__d1, (`LH_C(win3__d1, (`LH_C(win4__d1, (`LH_C(win5__d1, (`LH_C(win6__d1, (`LH_C(win7__d1, (`LH_C(win8__d1, (`LH_N)))))))))))))))))
and wins__d2 =
  (`LH_C(win1__d2, (`LH_C(win2__d2, (`LH_C(win3__d2, (`LH_C(win4__d2, (`LH_C(win5__d2, (`LH_C(win6__d2, (`LH_C(win7__d2, (`LH_C(win8__d2, (`LH_N)))))))))))))))));;

(* lumberhack *)
let rec and__d0__d0 _lh_and_arg1_0 =
  (_lh_and_arg1_0 99);;
let rec concat__d0__d0 lss_3 =
  (lss_3 99);;
let rec concat__d1__d0 lss_1 =
  (lss_1 99);;
let rec concat__d3__d0 lss_0 =
  (lss_0 99);;
let rec concat__d4__d0 lss_4 =
  (lss_4 99);;
let rec cropTree__d0__d0 _lh_cropTree_arg1_0 =
  (_lh_cropTree_arg1_0 99);;
let rec empty'__d0__d0 _lh_empty'_arg1_5 _lh_empty'_arg2_5 =
  (match _lh_empty'_arg1_5 with
    | 1 -> 
      (match _lh_empty'_arg2_5 with
        | `LH_C(_lh_empty'_LH_C_0_4_5, _lh_empty'_LH_C_1_4_5) -> 
          (match _lh_empty'_LH_C_0_4_5 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_4_5 with
                | `LH_C(_lh_empty'_LH_C_0_4_6, _lh_empty'_LH_C_1_4_6) -> 
                  (match _lh_empty'_LH_C_1_4_6 with
                    | `LH_C(_lh_empty'_LH_C_0_4_7, _lh_empty'_LH_C_1_4_7) -> 
                      (match _lh_empty'_LH_C_1_4_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_5 with
        | `LH_C(_lh_empty'_LH_C_0_4_8, _lh_empty'_LH_C_1_4_8) -> 
          (match _lh_empty'_LH_C_1_4_8 with
            | `LH_C(_lh_empty'_LH_C_0_4_9, _lh_empty'_LH_C_1_4_9) -> 
              (match _lh_empty'_LH_C_0_4_9 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_4_9 with
                    | `LH_C(_lh_empty'_LH_C_0_5_0, _lh_empty'_LH_C_1_5_0) -> 
                      (match _lh_empty'_LH_C_1_5_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_5 with
        | `LH_C(_lh_empty'_LH_C_0_5_1, _lh_empty'_LH_C_1_5_1) -> 
          (match _lh_empty'_LH_C_1_5_1 with
            | `LH_C(_lh_empty'_LH_C_0_5_2, _lh_empty'_LH_C_1_5_2) -> 
              (match _lh_empty'_LH_C_1_5_2 with
                | `LH_C(_lh_empty'_LH_C_0_5_3, _lh_empty'_LH_C_1_5_3) -> 
                  (match _lh_empty'_LH_C_0_5_3 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_5_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d1__d0 _lh_empty'_arg1_6 _lh_empty'_arg2_6 =
  (match _lh_empty'_arg1_6 with
    | 1 -> 
      (match _lh_empty'_arg2_6 with
        | `LH_C(_lh_empty'_LH_C_0_5_4, _lh_empty'_LH_C_1_5_4) -> 
          (match _lh_empty'_LH_C_0_5_4 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_5_4 with
                | `LH_C(_lh_empty'_LH_C_0_5_5, _lh_empty'_LH_C_1_5_5) -> 
                  (match _lh_empty'_LH_C_1_5_5 with
                    | `LH_C(_lh_empty'_LH_C_0_5_6, _lh_empty'_LH_C_1_5_6) -> 
                      (match _lh_empty'_LH_C_1_5_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_6 with
        | `LH_C(_lh_empty'_LH_C_0_5_7, _lh_empty'_LH_C_1_5_7) -> 
          (match _lh_empty'_LH_C_1_5_7 with
            | `LH_C(_lh_empty'_LH_C_0_5_8, _lh_empty'_LH_C_1_5_8) -> 
              (match _lh_empty'_LH_C_0_5_8 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_5_8 with
                    | `LH_C(_lh_empty'_LH_C_0_5_9, _lh_empty'_LH_C_1_5_9) -> 
                      (match _lh_empty'_LH_C_1_5_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_6 with
        | `LH_C(_lh_empty'_LH_C_0_6_0, _lh_empty'_LH_C_1_6_0) -> 
          (match _lh_empty'_LH_C_1_6_0 with
            | `LH_C(_lh_empty'_LH_C_0_6_1, _lh_empty'_LH_C_1_6_1) -> 
              (match _lh_empty'_LH_C_1_6_1 with
                | `LH_C(_lh_empty'_LH_C_0_6_2, _lh_empty'_LH_C_1_6_2) -> 
                  (match _lh_empty'_LH_C_0_6_2 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_6_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d2__d0 _lh_empty'_arg1_1 _lh_empty'_arg2_1 =
  (match _lh_empty'_arg1_1 with
    | 1 -> 
      (match _lh_empty'_arg2_1 with
        | `LH_C(_lh_empty'_LH_C_0_9, _lh_empty'_LH_C_1_9) -> 
          (match _lh_empty'_LH_C_0_9 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_9 with
                | `LH_C(_lh_empty'_LH_C_0_1_0, _lh_empty'_LH_C_1_1_0) -> 
                  (match _lh_empty'_LH_C_1_1_0 with
                    | `LH_C(_lh_empty'_LH_C_0_1_1, _lh_empty'_LH_C_1_1_1) -> 
                      (match _lh_empty'_LH_C_1_1_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1 with
        | `LH_C(_lh_empty'_LH_C_0_1_2, _lh_empty'_LH_C_1_1_2) -> 
          (match _lh_empty'_LH_C_1_1_2 with
            | `LH_C(_lh_empty'_LH_C_0_1_3, _lh_empty'_LH_C_1_1_3) -> 
              (match _lh_empty'_LH_C_0_1_3 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_3 with
                    | `LH_C(_lh_empty'_LH_C_0_1_4, _lh_empty'_LH_C_1_1_4) -> 
                      (match _lh_empty'_LH_C_1_1_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1 with
        | `LH_C(_lh_empty'_LH_C_0_1_5, _lh_empty'_LH_C_1_1_5) -> 
          (match _lh_empty'_LH_C_1_1_5 with
            | `LH_C(_lh_empty'_LH_C_0_1_6, _lh_empty'_LH_C_1_1_6) -> 
              (match _lh_empty'_LH_C_1_1_6 with
                | `LH_C(_lh_empty'_LH_C_0_1_7, _lh_empty'_LH_C_1_1_7) -> 
                  (match _lh_empty'_LH_C_0_1_7 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d3__d0 _lh_empty'_arg1_4 _lh_empty'_arg2_4 =
  (match _lh_empty'_arg1_4 with
    | 1 -> 
      (match _lh_empty'_arg2_4 with
        | `LH_C(_lh_empty'_LH_C_0_3_6, _lh_empty'_LH_C_1_3_6) -> 
          (match _lh_empty'_LH_C_0_3_6 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_3_6 with
                | `LH_C(_lh_empty'_LH_C_0_3_7, _lh_empty'_LH_C_1_3_7) -> 
                  (match _lh_empty'_LH_C_1_3_7 with
                    | `LH_C(_lh_empty'_LH_C_0_3_8, _lh_empty'_LH_C_1_3_8) -> 
                      (match _lh_empty'_LH_C_1_3_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_4 with
        | `LH_C(_lh_empty'_LH_C_0_3_9, _lh_empty'_LH_C_1_3_9) -> 
          (match _lh_empty'_LH_C_1_3_9 with
            | `LH_C(_lh_empty'_LH_C_0_4_0, _lh_empty'_LH_C_1_4_0) -> 
              (match _lh_empty'_LH_C_0_4_0 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_4_0 with
                    | `LH_C(_lh_empty'_LH_C_0_4_1, _lh_empty'_LH_C_1_4_1) -> 
                      (match _lh_empty'_LH_C_1_4_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_4 with
        | `LH_C(_lh_empty'_LH_C_0_4_2, _lh_empty'_LH_C_1_4_2) -> 
          (match _lh_empty'_LH_C_1_4_2 with
            | `LH_C(_lh_empty'_LH_C_0_4_3, _lh_empty'_LH_C_1_4_3) -> 
              (match _lh_empty'_LH_C_1_4_3 with
                | `LH_C(_lh_empty'_LH_C_0_4_4, _lh_empty'_LH_C_1_4_4) -> 
                  (match _lh_empty'_LH_C_0_4_4 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_4_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d4__d0 _lh_empty'_arg1_2 _lh_empty'_arg2_2 =
  (match _lh_empty'_arg1_2 with
    | 1 -> 
      (match _lh_empty'_arg2_2 with
        | `LH_C(_lh_empty'_LH_C_0_1_8, _lh_empty'_LH_C_1_1_8) -> 
          (match _lh_empty'_LH_C_0_1_8 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_8 with
                | `LH_C(_lh_empty'_LH_C_0_1_9, _lh_empty'_LH_C_1_1_9) -> 
                  (match _lh_empty'_LH_C_1_1_9 with
                    | `LH_C(_lh_empty'_LH_C_0_2_0, _lh_empty'_LH_C_1_2_0) -> 
                      (match _lh_empty'_LH_C_1_2_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_2 with
        | `LH_C(_lh_empty'_LH_C_0_2_1, _lh_empty'_LH_C_1_2_1) -> 
          (match _lh_empty'_LH_C_1_2_1 with
            | `LH_C(_lh_empty'_LH_C_0_2_2, _lh_empty'_LH_C_1_2_2) -> 
              (match _lh_empty'_LH_C_0_2_2 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_2_2 with
                    | `LH_C(_lh_empty'_LH_C_0_2_3, _lh_empty'_LH_C_1_2_3) -> 
                      (match _lh_empty'_LH_C_1_2_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_2 with
        | `LH_C(_lh_empty'_LH_C_0_2_4, _lh_empty'_LH_C_1_2_4) -> 
          (match _lh_empty'_LH_C_1_2_4 with
            | `LH_C(_lh_empty'_LH_C_0_2_5, _lh_empty'_LH_C_1_2_5) -> 
              (match _lh_empty'_LH_C_1_2_5 with
                | `LH_C(_lh_empty'_LH_C_0_2_6, _lh_empty'_LH_C_1_2_6) -> 
                  (match _lh_empty'_LH_C_0_2_6 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_2_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d5__d0 _lh_empty'_arg1_7 _lh_empty'_arg2_7 =
  (match _lh_empty'_arg1_7 with
    | 1 -> 
      (match _lh_empty'_arg2_7 with
        | `LH_C(_lh_empty'_LH_C_0_6_3, _lh_empty'_LH_C_1_6_3) -> 
          (match _lh_empty'_LH_C_0_6_3 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_6_3 with
                | `LH_C(_lh_empty'_LH_C_0_6_4, _lh_empty'_LH_C_1_6_4) -> 
                  (match _lh_empty'_LH_C_1_6_4 with
                    | `LH_C(_lh_empty'_LH_C_0_6_5, _lh_empty'_LH_C_1_6_5) -> 
                      (match _lh_empty'_LH_C_1_6_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_7 with
        | `LH_C(_lh_empty'_LH_C_0_6_6, _lh_empty'_LH_C_1_6_6) -> 
          (match _lh_empty'_LH_C_1_6_6 with
            | `LH_C(_lh_empty'_LH_C_0_6_7, _lh_empty'_LH_C_1_6_7) -> 
              (match _lh_empty'_LH_C_0_6_7 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_6_7 with
                    | `LH_C(_lh_empty'_LH_C_0_6_8, _lh_empty'_LH_C_1_6_8) -> 
                      (match _lh_empty'_LH_C_1_6_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_7 with
        | `LH_C(_lh_empty'_LH_C_0_6_9, _lh_empty'_LH_C_1_6_9) -> 
          (match _lh_empty'_LH_C_1_6_9 with
            | `LH_C(_lh_empty'_LH_C_0_7_0, _lh_empty'_LH_C_1_7_0) -> 
              (match _lh_empty'_LH_C_1_7_0 with
                | `LH_C(_lh_empty'_LH_C_0_7_1, _lh_empty'_LH_C_1_7_1) -> 
                  (match _lh_empty'_LH_C_0_7_1 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_7_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d6__d0 _lh_empty'_arg1_8 _lh_empty'_arg2_8 =
  (match _lh_empty'_arg1_8 with
    | 1 -> 
      (match _lh_empty'_arg2_8 with
        | `LH_C(_lh_empty'_LH_C_0_7_2, _lh_empty'_LH_C_1_7_2) -> 
          (match _lh_empty'_LH_C_0_7_2 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_7_2 with
                | `LH_C(_lh_empty'_LH_C_0_7_3, _lh_empty'_LH_C_1_7_3) -> 
                  (match _lh_empty'_LH_C_1_7_3 with
                    | `LH_C(_lh_empty'_LH_C_0_7_4, _lh_empty'_LH_C_1_7_4) -> 
                      (match _lh_empty'_LH_C_1_7_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_8 with
        | `LH_C(_lh_empty'_LH_C_0_7_5, _lh_empty'_LH_C_1_7_5) -> 
          (match _lh_empty'_LH_C_1_7_5 with
            | `LH_C(_lh_empty'_LH_C_0_7_6, _lh_empty'_LH_C_1_7_6) -> 
              (match _lh_empty'_LH_C_0_7_6 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_7_6 with
                    | `LH_C(_lh_empty'_LH_C_0_7_7, _lh_empty'_LH_C_1_7_7) -> 
                      (match _lh_empty'_LH_C_1_7_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_8 with
        | `LH_C(_lh_empty'_LH_C_0_7_8, _lh_empty'_LH_C_1_7_8) -> 
          (match _lh_empty'_LH_C_1_7_8 with
            | `LH_C(_lh_empty'_LH_C_0_7_9, _lh_empty'_LH_C_1_7_9) -> 
              (match _lh_empty'_LH_C_1_7_9 with
                | `LH_C(_lh_empty'_LH_C_0_8_0, _lh_empty'_LH_C_1_8_0) -> 
                  (match _lh_empty'_LH_C_0_8_0 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_8_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d7__d0 _lh_empty'_arg1_3 _lh_empty'_arg2_3 =
  (match _lh_empty'_arg1_3 with
    | 1 -> 
      (match _lh_empty'_arg2_3 with
        | `LH_C(_lh_empty'_LH_C_0_2_7, _lh_empty'_LH_C_1_2_7) -> 
          (match _lh_empty'_LH_C_0_2_7 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_2_7 with
                | `LH_C(_lh_empty'_LH_C_0_2_8, _lh_empty'_LH_C_1_2_8) -> 
                  (match _lh_empty'_LH_C_1_2_8 with
                    | `LH_C(_lh_empty'_LH_C_0_2_9, _lh_empty'_LH_C_1_2_9) -> 
                      (match _lh_empty'_LH_C_1_2_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_3 with
        | `LH_C(_lh_empty'_LH_C_0_3_0, _lh_empty'_LH_C_1_3_0) -> 
          (match _lh_empty'_LH_C_1_3_0 with
            | `LH_C(_lh_empty'_LH_C_0_3_1, _lh_empty'_LH_C_1_3_1) -> 
              (match _lh_empty'_LH_C_0_3_1 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_3_1 with
                    | `LH_C(_lh_empty'_LH_C_0_3_2, _lh_empty'_LH_C_1_3_2) -> 
                      (match _lh_empty'_LH_C_1_3_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_3 with
        | `LH_C(_lh_empty'_LH_C_0_3_3, _lh_empty'_LH_C_1_3_3) -> 
          (match _lh_empty'_LH_C_1_3_3 with
            | `LH_C(_lh_empty'_LH_C_0_3_4, _lh_empty'_LH_C_1_3_4) -> 
              (match _lh_empty'_LH_C_1_3_4 with
                | `LH_C(_lh_empty'_LH_C_0_3_5, _lh_empty'_LH_C_1_3_5) -> 
                  (match _lh_empty'_LH_C_0_3_5 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_3_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d8__d0 _lh_empty'_arg1_0 _lh_empty'_arg2_0 =
  (match _lh_empty'_arg1_0 with
    | 1 -> 
      (match _lh_empty'_arg2_0 with
        | `LH_C(_lh_empty'_LH_C_0_0, _lh_empty'_LH_C_1_0) -> 
          (match _lh_empty'_LH_C_0_0 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_0 with
                | `LH_C(_lh_empty'_LH_C_0_1, _lh_empty'_LH_C_1_1) -> 
                  (match _lh_empty'_LH_C_1_1 with
                    | `LH_C(_lh_empty'_LH_C_0_2, _lh_empty'_LH_C_1_2) -> 
                      (match _lh_empty'_LH_C_1_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_0 with
        | `LH_C(_lh_empty'_LH_C_0_3, _lh_empty'_LH_C_1_3) -> 
          (match _lh_empty'_LH_C_1_3 with
            | `LH_C(_lh_empty'_LH_C_0_4, _lh_empty'_LH_C_1_4) -> 
              (match _lh_empty'_LH_C_0_4 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_4 with
                    | `LH_C(_lh_empty'_LH_C_0_5, _lh_empty'_LH_C_1_5) -> 
                      (match _lh_empty'_LH_C_1_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_0 with
        | `LH_C(_lh_empty'_LH_C_0_6, _lh_empty'_LH_C_1_6) -> 
          (match _lh_empty'_LH_C_1_6 with
            | `LH_C(_lh_empty'_LH_C_0_7, _lh_empty'_LH_C_1_7) -> 
              (match _lh_empty'_LH_C_1_7 with
                | `LH_C(_lh_empty'_LH_C_0_8, _lh_empty'_LH_C_1_8) -> 
                  (match _lh_empty'_LH_C_0_8 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec foldr__d0__d0 f_5_0 i_2 ls_2_0 =
  ((ls_2_0 f_5_0) i_2);;
let rec insert__d0__d0 _lh_insert_arg1_6 _lh_insert_arg2_6 _lh_insert_arg3_6 =
  (match _lh_insert_arg2_6 with
    | `LH_C(_lh_insert_LH_C_0_1_8, _lh_insert_LH_C_1_1_8) -> 
      (match _lh_insert_LH_C_1_1_8 with
        | `LH_C(_lh_insert_LH_C_0_1_9, _lh_insert_LH_C_1_1_9) -> 
          (match _lh_insert_LH_C_1_1_9 with
            | `LH_C(_lh_insert_LH_C_0_2_0, _lh_insert_LH_C_1_2_0) -> 
              (match _lh_insert_LH_C_1_2_0 with
                | `LH_N -> 
                  (match _lh_insert_arg3_6 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_6, (`LH_C(_lh_insert_LH_C_0_1_9, (`LH_C(_lh_insert_LH_C_0_2_0, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_8, (`LH_C(_lh_insert_arg1_6, (`LH_C(_lh_insert_LH_C_0_2_0, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_8, (`LH_C(_lh_insert_LH_C_0_1_9, (`LH_C(_lh_insert_arg1_6, (`LH_N)))))))
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
let rec insert__d1__d0 _lh_insert_arg1_4 _lh_insert_arg2_4 _lh_insert_arg3_4 =
  (match _lh_insert_arg2_4 with
    | `LH_C(_lh_insert_LH_C_0_1_2, _lh_insert_LH_C_1_1_2) -> 
      (match _lh_insert_LH_C_1_1_2 with
        | `LH_C(_lh_insert_LH_C_0_1_3, _lh_insert_LH_C_1_1_3) -> 
          (match _lh_insert_LH_C_1_1_3 with
            | `LH_C(_lh_insert_LH_C_0_1_4, _lh_insert_LH_C_1_1_4) -> 
              (match _lh_insert_LH_C_1_1_4 with
                | `LH_N -> 
                  (match _lh_insert_arg3_4 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_4, (`LH_C(_lh_insert_LH_C_0_1_3, (`LH_C(_lh_insert_LH_C_0_1_4, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_2, (`LH_C(_lh_insert_arg1_4, (`LH_C(_lh_insert_LH_C_0_1_4, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_2, (`LH_C(_lh_insert_LH_C_0_1_3, (`LH_C(_lh_insert_arg1_4, (`LH_N)))))))
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
let rec insert__d2__d0 _lh_insert_arg1_5 _lh_insert_arg2_5 _lh_insert_arg3_5 =
  (match _lh_insert_arg2_5 with
    | `LH_C(_lh_insert_LH_C_0_1_5, _lh_insert_LH_C_1_1_5) -> 
      (match _lh_insert_LH_C_1_1_5 with
        | `LH_C(_lh_insert_LH_C_0_1_6, _lh_insert_LH_C_1_1_6) -> 
          (match _lh_insert_LH_C_1_1_6 with
            | `LH_C(_lh_insert_LH_C_0_1_7, _lh_insert_LH_C_1_1_7) -> 
              (match _lh_insert_LH_C_1_1_7 with
                | `LH_N -> 
                  (match _lh_insert_arg3_5 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_5, (`LH_C(_lh_insert_LH_C_0_1_6, (`LH_C(_lh_insert_LH_C_0_1_7, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_5, (`LH_C(_lh_insert_arg1_5, (`LH_C(_lh_insert_LH_C_0_1_7, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_1_5, (`LH_C(_lh_insert_LH_C_0_1_6, (`LH_C(_lh_insert_arg1_5, (`LH_N)))))))
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
let rec insert__d3__d0 _lh_insert_arg1_0 _lh_insert_arg2_0 _lh_insert_arg3_0 =
  (match _lh_insert_arg2_0 with
    | `LH_C(_lh_insert_LH_C_0_0, _lh_insert_LH_C_1_0) -> 
      (match _lh_insert_LH_C_1_0 with
        | `LH_C(_lh_insert_LH_C_0_1, _lh_insert_LH_C_1_1) -> 
          (match _lh_insert_LH_C_1_1 with
            | `LH_C(_lh_insert_LH_C_0_2, _lh_insert_LH_C_1_2) -> 
              (match _lh_insert_LH_C_1_2 with
                | `LH_N -> 
                  (match _lh_insert_arg3_0 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_1, (`LH_C(_lh_insert_LH_C_0_2, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_0, (`LH_C(_lh_insert_arg1_0, (`LH_C(_lh_insert_LH_C_0_2, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_0, (`LH_C(_lh_insert_LH_C_0_1, (`LH_C(_lh_insert_arg1_0, (`LH_N)))))))
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
let rec insert__d4__d0 _lh_insert_arg1_8 _lh_insert_arg2_8 _lh_insert_arg3_8 =
  (match _lh_insert_arg2_8 with
    | `LH_C(_lh_insert_LH_C_0_2_4, _lh_insert_LH_C_1_2_4) -> 
      (match _lh_insert_LH_C_1_2_4 with
        | `LH_C(_lh_insert_LH_C_0_2_5, _lh_insert_LH_C_1_2_5) -> 
          (match _lh_insert_LH_C_1_2_5 with
            | `LH_C(_lh_insert_LH_C_0_2_6, _lh_insert_LH_C_1_2_6) -> 
              (match _lh_insert_LH_C_1_2_6 with
                | `LH_N -> 
                  (match _lh_insert_arg3_8 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_8, (`LH_C(_lh_insert_LH_C_0_2_5, (`LH_C(_lh_insert_LH_C_0_2_6, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_4, (`LH_C(_lh_insert_arg1_8, (`LH_C(_lh_insert_LH_C_0_2_6, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_4, (`LH_C(_lh_insert_LH_C_0_2_5, (`LH_C(_lh_insert_arg1_8, (`LH_N)))))))
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
let rec insert__d5__d0 _lh_insert_arg1_2 _lh_insert_arg2_2 _lh_insert_arg3_2 =
  (match _lh_insert_arg2_2 with
    | `LH_C(_lh_insert_LH_C_0_6, _lh_insert_LH_C_1_6) -> 
      (match _lh_insert_LH_C_1_6 with
        | `LH_C(_lh_insert_LH_C_0_7, _lh_insert_LH_C_1_7) -> 
          (match _lh_insert_LH_C_1_7 with
            | `LH_C(_lh_insert_LH_C_0_8, _lh_insert_LH_C_1_8) -> 
              (match _lh_insert_LH_C_1_8 with
                | `LH_N -> 
                  (match _lh_insert_arg3_2 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_7, (`LH_C(_lh_insert_LH_C_0_8, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_6, (`LH_C(_lh_insert_arg1_2, (`LH_C(_lh_insert_LH_C_0_8, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_6, (`LH_C(_lh_insert_LH_C_0_7, (`LH_C(_lh_insert_arg1_2, (`LH_N)))))))
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
let rec insert__d6__d0 _lh_insert_arg1_3 _lh_insert_arg2_3 _lh_insert_arg3_3 =
  (match _lh_insert_arg2_3 with
    | `LH_C(_lh_insert_LH_C_0_9, _lh_insert_LH_C_1_9) -> 
      (match _lh_insert_LH_C_1_9 with
        | `LH_C(_lh_insert_LH_C_0_1_0, _lh_insert_LH_C_1_1_0) -> 
          (match _lh_insert_LH_C_1_1_0 with
            | `LH_C(_lh_insert_LH_C_0_1_1, _lh_insert_LH_C_1_1_1) -> 
              (match _lh_insert_LH_C_1_1_1 with
                | `LH_N -> 
                  (match _lh_insert_arg3_3 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_1_0, (`LH_C(_lh_insert_LH_C_0_1_1, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_9, (`LH_C(_lh_insert_arg1_3, (`LH_C(_lh_insert_LH_C_0_1_1, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_9, (`LH_C(_lh_insert_LH_C_0_1_0, (`LH_C(_lh_insert_arg1_3, (`LH_N)))))))
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
let rec insert__d7__d0 _lh_insert_arg1_7 _lh_insert_arg2_7 _lh_insert_arg3_7 =
  (match _lh_insert_arg2_7 with
    | `LH_C(_lh_insert_LH_C_0_2_1, _lh_insert_LH_C_1_2_1) -> 
      (match _lh_insert_LH_C_1_2_1 with
        | `LH_C(_lh_insert_LH_C_0_2_2, _lh_insert_LH_C_1_2_2) -> 
          (match _lh_insert_LH_C_1_2_2 with
            | `LH_C(_lh_insert_LH_C_0_2_3, _lh_insert_LH_C_1_2_3) -> 
              (match _lh_insert_LH_C_1_2_3 with
                | `LH_N -> 
                  (match _lh_insert_arg3_7 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_7, (`LH_C(_lh_insert_LH_C_0_2_2, (`LH_C(_lh_insert_LH_C_0_2_3, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_1, (`LH_C(_lh_insert_arg1_7, (`LH_C(_lh_insert_LH_C_0_2_3, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_1, (`LH_C(_lh_insert_LH_C_0_2_2, (`LH_C(_lh_insert_arg1_7, (`LH_N)))))))
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
let rec insert__d8__d0 _lh_insert_arg1_1 _lh_insert_arg2_1 _lh_insert_arg3_1 =
  (match _lh_insert_arg2_1 with
    | `LH_C(_lh_insert_LH_C_0_3, _lh_insert_LH_C_1_3) -> 
      (match _lh_insert_LH_C_1_3 with
        | `LH_C(_lh_insert_LH_C_0_4, _lh_insert_LH_C_1_4) -> 
          (match _lh_insert_LH_C_1_4 with
            | `LH_C(_lh_insert_LH_C_0_5, _lh_insert_LH_C_1_5) -> 
              (match _lh_insert_LH_C_1_5 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_4, (`LH_C(_lh_insert_LH_C_0_5, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_3, (`LH_C(_lh_insert_arg1_1, (`LH_C(_lh_insert_LH_C_0_5, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_3, (`LH_C(_lh_insert_LH_C_0_4, (`LH_C(_lh_insert_arg1_1, (`LH_N)))))))
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
let rec interpret__d0__d0 _lh_interpret_arg1_1_9 _lh_interpret_arg2_1 =
  (_lh_interpret_arg2_1 _lh_interpret_arg1_1_9);;
let rec interpret__d1__d0 _lh_interpret_arg1_2_0 _lh_interpret_arg2_2 =
  (_lh_interpret_arg2_2 _lh_interpret_arg1_2_0);;
let rec interpret__d2__d0 _lh_interpret_arg1_0 _lh_interpret_arg2_0 =
  (_lh_interpret_arg2_0 _lh_interpret_arg1_0);;
let rec length__d0__d0 ls_4 =
  (ls_4 99);;
let rec map__d0__d0 f_2_7 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_1_5_7, t_1_9_2) -> 
      (`LH_C((f_2_7 h_1_5_7), ((map__d0__d0 f_2_7) t_1_9_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1__d0 f_1 ls_2 =
  (match ls_2 with
    | `LH_C(h_0, t_0) -> 
      (`LH_C((f_1 h_0), ((map__d1__d0 f_1) t_0)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d0__d0 f_1_5 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_0_9, t_1_3_8) -> 
      (`LH_C((f_1_5 h_1_0_9), ((map__d1_d0__d0 f_1_5) t_1_3_8)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d1__d0 f_5_4 ls_2_3 =
  (ls_2_3 f_5_4);;
let rec map__d1_d2__d0 f_0 ls_1 =
  (ls_1 f_0);;
let rec map__d1_d3__d0 f_3_2 ls_1_6 =
  (ls_1_6 f_3_2);;
let rec map__d1_d4__d0 f_3 ls_7 =
  (ls_7 f_3);;
let rec map__d1_d5__d0 f_2 ls_5 =
  (ls_5 f_2);;
let rec map__d1_d6__d0 f_7 ls_8 =
  (ls_8 f_7);;
let rec map__d3__d0 f_1_4 ls_1_1 =
  (ls_1_1 f_1_4);;
let rec map__d4__d0 f_5_5 ls_2_5 =
  (ls_2_5 f_5_5);;
let rec map__d5__d0 f_5_2 ls_2_2 =
  (match ls_2_2 with
    | `LH_C(h_3_0_7, t_3_6_1) -> 
      (`LH_C((f_5_2 h_3_0_7), ((map__d5__d0 f_5_2) t_3_6_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5__d1 f_3_3 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_1_6_7, t_2_0_2) -> 
      (`LH_C((f_3_3 h_1_6_7), ((map__d5__d1 f_3_3) t_2_0_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6__d0 f_3_7 ls_1_8 =
  (ls_1_8 f_3_7);;
let rec map__d7__d0 f_5_1 ls_2_1 =
  (ls_2_1 f_5_1);;
let rec map__d8__d0 f_3_9 ls_1_9 =
  (ls_1_9 f_3_9);;
let rec map__d9__d0 f_9 ls_9 =
  (ls_9 f_9);;
let rec mappend__d0__d0 xs_1_0 ys_3_3 =
  (xs_1_0 ys_3_3);;
let rec mappend__d1__d0 xs_2_1 ys_3_2_7 =
  (xs_2_1 ys_3_2_7);;
let rec mappend__d1_d0__d0 xs_2 ys_2 =
  (xs_2 ys_2);;
let rec mappend__d1_d1__d0 xs_1_3 ys_1_2_6 =
  (xs_1_3 ys_1_2_6);;
let rec mappend__d1_d2__d0 xs_1_6 ys_2_0_7 =
  (xs_1_6 ys_2_0_7);;
let rec mappend__d1_d3__d0 xs_5 ys_2_0 =
  (xs_5 ys_2_0);;
let rec mappend__d1_d4__d0 xs_2_3 ys_3_3_9 =
  (xs_2_3 ys_3_3_9);;
let rec mappend__d1_d5__d0 xs_2_2 ys_3_3_8 =
  (xs_2_2 ys_3_3_8);;
let rec mappend__d1_d6__d0 xs_2_6 ys_3_4_2 =
  (xs_2_6 ys_3_4_2);;
let rec mappend__d1_d7__d0 xs_3 ys_3 =
  (xs_3 ys_3);;
let rec mappend__d1_d8__d0 xs_6 ys_2_1 =
  (xs_6 ys_2_1);;
let rec mappend__d1_d9__d0 xs_9 ys_2_9 =
  (xs_9 ys_2_9);;
let rec mappend__d2_d0__d0 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend__d2_d1__d0 xs_1_9 ys_3_1_8 =
  (xs_1_9 ys_3_1_8);;
let rec mappend__d2_d2__d0 xs_1 ys_1 =
  (xs_1 ys_1);;
let rec mappend__d2_d3__d0 xs_7 ys_2_7 =
  (xs_7 ys_2_7);;
let rec mappend__d2_d4__d0 xs_1_8 ys_2_6_0 =
  (xs_1_8 ys_2_6_0);;
let rec mappend__d2_d5__d0 xs_1_7 ys_2_5_9 =
  (xs_1_7 ys_2_5_9);;
let rec mappend__d2_d6__d0 xs_2_0 ys_3_1_9 =
  (xs_2_0 ys_3_1_9);;
let rec mappend__d3__d0 xs_4 ys_4 =
  (xs_4 ys_4);;
let rec mappend__d4__d0 xs_8 ys_2_8 =
  (xs_8 ys_2_8);;
let rec mappend__d5__d0 xs_1_2 ys_1_2_5 =
  (xs_1_2 ys_1_2_5);;
let rec mappend__d6__d0 xs_2_5 ys_3_4_1 =
  (xs_2_5 ys_3_4_1);;
let rec mappend__d7__d0 xs_1_1 ys_1_2_4 =
  (xs_1_1 ys_1_2_4);;
let rec mappend__d9__d0 xs_2_4 ys_3_4_0 =
  (xs_2_4 ys_3_4_0);;
let rec max'__d0__d0 _lh_max'_arg1_0 _lh_max'_arg2_0 =
  (match _lh_max'_arg1_0 with
    | `XWin -> 
      (`XWin)
    | _ -> 
      (match _lh_max'_arg2_0 with
        | `XWin -> 
          (`XWin)
        | _ -> 
          (match _lh_max'_arg2_0 with
            | `OWin -> 
              _lh_max'_arg1_0
            | _ -> 
              (match _lh_max'_arg1_0 with
                | `OWin -> 
                  _lh_max'_arg2_0
                | _ -> 
                  (match _lh_max'_arg1_0 with
                    | `Score(_lh_max'_Score_0_0) -> 
                      (match _lh_max'_arg2_0 with
                        | `Score(_lh_max'_Score_0_1) -> 
                          (if (_lh_max'_Score_0_0 > _lh_max'_Score_0_1) then
                            (`Score(_lh_max'_Score_0_0))
                          else
                            (`Score(_lh_max'_Score_0_1)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec min'__d0__d0 _lh_min'_arg1_0 _lh_min'_arg2_0 =
  (match _lh_min'_arg1_0 with
    | `OWin -> 
      (`OWin)
    | _ -> 
      (match _lh_min'_arg2_0 with
        | `OWin -> 
          (`OWin)
        | _ -> 
          (match _lh_min'_arg2_0 with
            | `XWin -> 
              _lh_min'_arg1_0
            | _ -> 
              (match _lh_min'_arg1_0 with
                | `XWin -> 
                  _lh_min'_arg2_0
                | _ -> 
                  (match _lh_min'_arg1_0 with
                    | `Score(_lh_min'_Score_0_0) -> 
                      (match _lh_min'_arg2_0 with
                        | `Score(_lh_min'_Score_0_1) -> 
                          (if (_lh_min'_Score_0_0 < _lh_min'_Score_0_1) then
                            (`Score(_lh_min'_Score_0_0))
                          else
                            (`Score(_lh_min'_Score_0_1)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec mise__d0__d0 _lh_mise_arg1_3 _lh_mise_arg2_3 _lh_mise_arg3_0 =
  ((_lh_mise_arg3_0 _lh_mise_arg1_3) _lh_mise_arg2_3);;
let rec opposite__d0__d0 _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec opposite__d1__d0 _lh_opposite_arg1_1 =
  (match _lh_opposite_arg1_1 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d0__d0 _lh_scorePiece_arg1_1 _lh_scorePiece_arg2_1 =
  (match _lh_scorePiece_arg1_1 with
    | `X -> 
      _lh_scorePiece_arg2_1
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_1)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d1__d0 _lh_scorePiece_arg1_2 _lh_scorePiece_arg2_2 =
  (match _lh_scorePiece_arg1_2 with
    | `X -> 
      _lh_scorePiece_arg2_2
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_2)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d2__d0 _lh_scorePiece_arg1_0 _lh_scorePiece_arg2_0 =
  (match _lh_scorePiece_arg1_0 with
    | `X -> 
      _lh_scorePiece_arg2_0
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec showMove__d0__d0 _lh_showMove_arg1_0 =
  (_lh_showMove_arg1_0 99);;
let rec sum__d0__d0 ls_1_0 =
  (ls_1_0 99);;
let rec sum__d1__d0 ls_6 =
  (ls_6 99);;
let rec sum__d2__d0 ls_2_4 =
  (ls_2_4 99);;
let rec sum__d3__d0 ls_0 =
  (ls_0 99);;
let rec sum__d4__d0 ls_3 =
  (ls_3 99);;
let rec sum__d5__d0 ls_1_3 =
  (ls_1_3 99);;
let rec testBoard__d0__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d9 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d9 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d2__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec win1__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1__d1__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1__d2__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d1__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d2__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d1__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d2__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d1__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d2__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d1__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d2__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d1__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d2__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d1__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d2__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d1__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d2__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec alternate__d0__d0 _lh_alternate_arg1_0 _lh_alternate_arg2_1 _lh_alternate_arg3_1 _lh_alternate_arg4_0 =
  (if (fullBoard__d0__d0 _lh_alternate_arg4_0) then
    (fun f_1_6 _lh_dummy_3_9 _lh_dummy_4_0 -> 
      0)
  else
    (if ((static__d1__d0 _lh_alternate_arg4_0) = (`XWin)) then
      (fun f_1_7 _lh_dummy_4_1 _lh_dummy_4_2 -> 
        0)
    else
      (if ((static__d2__d0 _lh_alternate_arg4_0) = (`OWin)) then
        (fun f_1_8 _lh_dummy_4_3 _lh_dummy_4_4 -> 
          0)
      else
        (let rec opposition_1 = (opposite__d1__d0 _lh_alternate_arg1_0) in
          (let rec possibles_0 = ((newPositions__d2__d0 _lh_alternate_arg1_0) _lh_alternate_arg4_0) in
            (let rec scores_0 = ((map__d1_d0__d0 (((bestMove__d0__d0 opposition_1) _lh_alternate_arg3_1) _lh_alternate_arg2_1)) possibles_0) in
              (let rec boardd_eval_0 = (((best__d0__d0 _lh_alternate_arg2_1) possibles_0) scores_0) in
                (let rec _lh_matchIdent_3 = boardd_eval_0 in
                  (((_lh_matchIdent_3 _lh_alternate_arg2_1) _lh_alternate_arg3_1) opposition_1)))))))))
and bestMove__d0__d0 _lh_bestMove_arg1_0 _lh_bestMove_arg2_0 _lh_bestMove_arg3_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (((mise__d0__d0 _lh_bestMove_arg2_0) _lh_bestMove_arg3_0) (cropTree__d0__d0 _lh_funcomp_x_1))) ((fun _lh_funcomp_x_2 -> 
    ((mapTree__d0__d0 static__d0__d0) ((searchTree__d0__d0 _lh_bestMove_arg1_0) _lh_funcomp_x_2))) _lh_funcomp_x_0))
and best__d0__d0 _lh_best_arg1_0 _lh_best_arg2_0 _lh_best_arg3_0 =
  (match _lh_best_arg2_0 with
    | `LH_C(_lh_best_LH_C_0_0, _lh_best_LH_C_1_0) -> 
      (match _lh_best_arg3_0 with
        | `LH_C(_lh_best_LH_C_0_1, _lh_best_LH_C_1_1) -> 
          (let rec best'_0 = (fun b_0 s_0 ls1_0 ls2_0 -> 
            (let rec _lh_matchIdent_0 = ls1_0 in
              (match _lh_matchIdent_0 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1 = ls2_0 in
                    (match _lh_matchIdent_1 with
                      | `LH_N -> 
                        (let rec _lh_alternate_LH_P2_1_0 = s_0 in
                          (let rec _lh_alternate_LH_P2_0_0 = b_0 in
                            (fun _lh_alternate_arg2_0 _lh_alternate_arg3_0 opposition_0 -> 
                              (let rec t_2_7 = ((((alternate__d0__d0 opposition_0) _lh_alternate_arg3_0) _lh_alternate_arg2_0) _lh_alternate_LH_P2_0_0) in
                                (let rec h_2_0 = (let rec _lh_showMove_LH_P2_1_0 = _lh_alternate_LH_P2_1_0 in
                                  (let rec _lh_showMove_LH_P2_0_0 = _lh_alternate_LH_P2_0_0 in
                                    (fun _lh_dummy_1_2 -> 
                                      ((mappend__d7__d0 ((mappend__d8__d0 (showEvaluation__d0__d0 _lh_showMove_LH_P2_1_0)) (let rec t_2_8 = (fun ys_3_0 -> 
                                        ys_3_0) in
                                        (let rec h_2_1 = '|' in
                                          (fun ys_3_1 -> 
                                            (let rec t_2_9 = ((mappend__d7__d0 t_2_8) ys_3_1) in
                                              (let rec h_2_2 = h_2_1 in
                                                (fun ys_3_2 -> 
                                                  (let rec t_3_0 = ((mappend__d4__d0 t_2_9) ys_3_2) in
                                                    (fun _lh_dummy_1_3 -> 
                                                      (1 + (length__d0__d0 t_3_0)))))))))))) (showBoard__d0__d0 _lh_showMove_LH_P2_0_0))))) in
                                  (fun f_1_0 -> 
                                    (let rec t_3_1 = ((map__d1_d6__d0 f_1_0) t_2_7) in
                                      (let rec h_2_3 = (f_1_0 h_2_0) in
                                        (fun _lh_dummy_1_4 -> 
                                          ((mappend__d4__d0 h_2_3) (concat__d4__d0 t_3_1)))))))))))
                      | _ -> 
                        (failwith "error")))
                | `LH_C(_lh_best_LH_C_0_2, _lh_best_LH_C_1_2) -> 
                  (let rec _lh_matchIdent_2 = ls2_0 in
                    (match _lh_matchIdent_2 with
                      | `LH_C(_lh_best_LH_C_0_3, _lh_best_LH_C_1_3) -> 
                        (if (s_0 = ((_lh_best_arg1_0 s_0) _lh_best_LH_C_0_3)) then
                          ((((best'_0 b_0) s_0) _lh_best_LH_C_1_2) _lh_best_LH_C_1_3)
                        else
                          ((((best'_0 _lh_best_LH_C_0_2) _lh_best_LH_C_0_3) _lh_best_LH_C_1_2) _lh_best_LH_C_1_3))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))) in
            ((((best'_0 _lh_best_LH_C_0_0) _lh_best_LH_C_0_1) _lh_best_LH_C_1_0) _lh_best_LH_C_1_1))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and concat__d2__d0 lss_2 =
  (match lss_2 with
    | `LH_C(h_1_9, t_2_6) -> 
      ((mappend__d2__d0 h_1_9) (concat__d2__d0 t_2_6))
    | `LH_N -> 
      (fun f_8 _lh_dummy_1_1 -> 
        true))
and empty__d0__d0 _lh_empty_arg1_2 _lh_empty_arg2_2 =
  (match _lh_empty_arg1_2 with
    | `LH_P2(_lh_empty_LH_P2_0_2, _lh_empty_LH_P2_1_2) -> 
      (match _lh_empty_LH_P2_0_2 with
        | 1 -> 
          (match _lh_empty_arg2_2 with
            | `LH_C(_lh_empty_LH_C_0_1_8, _lh_empty_LH_C_1_1_8) -> 
              (match _lh_empty_LH_C_1_1_8 with
                | `LH_C(_lh_empty_LH_C_0_1_9, _lh_empty_LH_C_1_1_9) -> 
                  (match _lh_empty_LH_C_1_1_9 with
                    | `LH_C(_lh_empty_LH_C_0_2_0, _lh_empty_LH_C_1_2_0) -> 
                      (match _lh_empty_LH_C_1_2_0 with
                        | `LH_N -> 
                          ((empty'__d2__d0 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_1_8)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_2 with
            | `LH_C(_lh_empty_LH_C_0_2_1, _lh_empty_LH_C_1_2_1) -> 
              (match _lh_empty_LH_C_1_2_1 with
                | `LH_C(_lh_empty_LH_C_0_2_2, _lh_empty_LH_C_1_2_2) -> 
                  (match _lh_empty_LH_C_1_2_2 with
                    | `LH_C(_lh_empty_LH_C_0_2_3, _lh_empty_LH_C_1_2_3) -> 
                      (match _lh_empty_LH_C_1_2_3 with
                        | `LH_N -> 
                          ((empty'__d0__d0 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_2_2)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_2 with
            | `LH_C(_lh_empty_LH_C_0_2_4, _lh_empty_LH_C_1_2_4) -> 
              (match _lh_empty_LH_C_1_2_4 with
                | `LH_C(_lh_empty_LH_C_0_2_5, _lh_empty_LH_C_1_2_5) -> 
                  (match _lh_empty_LH_C_1_2_5 with
                    | `LH_C(_lh_empty_LH_C_0_2_6, _lh_empty_LH_C_1_2_6) -> 
                      (match _lh_empty_LH_C_1_2_6 with
                        | `LH_N -> 
                          ((empty'__d1__d0 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_2_6)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and empty__d1__d0 _lh_empty_arg1_1 _lh_empty_arg2_1 =
  (match _lh_empty_arg1_1 with
    | `LH_P2(_lh_empty_LH_P2_0_1, _lh_empty_LH_P2_1_1) -> 
      (match _lh_empty_LH_P2_0_1 with
        | 1 -> 
          (match _lh_empty_arg2_1 with
            | `LH_C(_lh_empty_LH_C_0_9, _lh_empty_LH_C_1_9) -> 
              (match _lh_empty_LH_C_1_9 with
                | `LH_C(_lh_empty_LH_C_0_1_0, _lh_empty_LH_C_1_1_0) -> 
                  (match _lh_empty_LH_C_1_1_0 with
                    | `LH_C(_lh_empty_LH_C_0_1_1, _lh_empty_LH_C_1_1_1) -> 
                      (match _lh_empty_LH_C_1_1_1 with
                        | `LH_N -> 
                          ((empty'__d5__d0 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_9)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_1 with
            | `LH_C(_lh_empty_LH_C_0_1_2, _lh_empty_LH_C_1_1_2) -> 
              (match _lh_empty_LH_C_1_1_2 with
                | `LH_C(_lh_empty_LH_C_0_1_3, _lh_empty_LH_C_1_1_3) -> 
                  (match _lh_empty_LH_C_1_1_3 with
                    | `LH_C(_lh_empty_LH_C_0_1_4, _lh_empty_LH_C_1_1_4) -> 
                      (match _lh_empty_LH_C_1_1_4 with
                        | `LH_N -> 
                          ((empty'__d3__d0 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_1_3)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_1 with
            | `LH_C(_lh_empty_LH_C_0_1_5, _lh_empty_LH_C_1_1_5) -> 
              (match _lh_empty_LH_C_1_1_5 with
                | `LH_C(_lh_empty_LH_C_0_1_6, _lh_empty_LH_C_1_1_6) -> 
                  (match _lh_empty_LH_C_1_1_6 with
                    | `LH_C(_lh_empty_LH_C_0_1_7, _lh_empty_LH_C_1_1_7) -> 
                      (match _lh_empty_LH_C_1_1_7 with
                        | `LH_N -> 
                          ((empty'__d4__d0 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_1_7)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and empty__d2__d0 _lh_empty_arg1_0 _lh_empty_arg2_0 =
  (match _lh_empty_arg1_0 with
    | `LH_P2(_lh_empty_LH_P2_0_0, _lh_empty_LH_P2_1_0) -> 
      (match _lh_empty_LH_P2_0_0 with
        | 1 -> 
          (match _lh_empty_arg2_0 with
            | `LH_C(_lh_empty_LH_C_0_0, _lh_empty_LH_C_1_0) -> 
              (match _lh_empty_LH_C_1_0 with
                | `LH_C(_lh_empty_LH_C_0_1, _lh_empty_LH_C_1_1) -> 
                  (match _lh_empty_LH_C_1_1 with
                    | `LH_C(_lh_empty_LH_C_0_2, _lh_empty_LH_C_1_2) -> 
                      (match _lh_empty_LH_C_1_2 with
                        | `LH_N -> 
                          ((empty'__d8__d0 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_0)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_0 with
            | `LH_C(_lh_empty_LH_C_0_3, _lh_empty_LH_C_1_3) -> 
              (match _lh_empty_LH_C_1_3 with
                | `LH_C(_lh_empty_LH_C_0_4, _lh_empty_LH_C_1_4) -> 
                  (match _lh_empty_LH_C_1_4 with
                    | `LH_C(_lh_empty_LH_C_0_5, _lh_empty_LH_C_1_5) -> 
                      (match _lh_empty_LH_C_1_5 with
                        | `LH_N -> 
                          ((empty'__d6__d0 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_4)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_0 with
            | `LH_C(_lh_empty_LH_C_0_6, _lh_empty_LH_C_1_6) -> 
              (match _lh_empty_LH_C_1_6 with
                | `LH_C(_lh_empty_LH_C_0_7, _lh_empty_LH_C_1_7) -> 
                  (match _lh_empty_LH_C_1_7 with
                    | `LH_C(_lh_empty_LH_C_0_8, _lh_empty_LH_C_1_8) -> 
                      (match _lh_empty_LH_C_1_8 with
                        | `LH_N -> 
                          ((empty'__d7__d0 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_8)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and enumFromTo__d0__d0 a_2 b_3 =
  (if (a_2 <= b_3) then
    (let rec _lh_listcomp_fun_ls_t_4 = ((enumFromTo__d0__d0 (a_2 + 1)) b_3) in
      (let rec _lh_listcomp_fun_ls_h_4 = a_2 in
        (fun _lh_listcomp_fun_1_0 -> 
          (let rec _lh_listcomp_fun_1_1 = (fun _lh_listcomp_fun_para_4 -> 
            ((((_lh_listcomp_fun_para_4 _lh_listcomp_fun_ls_h_4) _lh_listcomp_fun_1_1) _lh_listcomp_fun_ls_t_4) _lh_listcomp_fun_1_0)) in
            (_lh_listcomp_fun_1_1 ((enumFromTo__d1__d0 1) 3))))))
  else
    (fun _lh_listcomp_fun_1_2 f_3_5 _lh_dummy_6_3 f_3_6 -> 
      (`LH_N)))
and enumFromTo__d1__d0 a_1 b_2 =
  (if (a_1 <= b_2) then
    (let rec _lh_listcomp_fun_ls_t_1 = ((enumFromTo__d1__d0 (a_1 + 1)) b_2) in
      (let rec _lh_listcomp_fun_ls_h_1 = a_1 in
        (fun _lh_listcomp_fun_ls_h_2 _lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_2 _lh_listcomp_fun_7 -> 
          (let rec t_1_9_4 = (_lh_listcomp_fun_6 _lh_listcomp_fun_ls_t_1) in
            (let rec h_1_5_9 = (`LH_P2(_lh_listcomp_fun_ls_h_2, _lh_listcomp_fun_ls_h_1)) in
              (fun f_2_8 -> 
                (let rec t_1_9_5 = ((map__d3__d0 f_2_8) t_1_9_4) in
                  (let rec h_1_6_0 = (f_2_8 h_1_5_9) in
                    (fun _lh_dummy_5_5 -> 
                      ((mappend__d0__d0 h_1_6_0) (concat__d0__d0 t_1_9_5)))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_3 _lh_listcomp_fun_8 _lh_listcomp_fun_ls_t_3 _lh_listcomp_fun_9 -> 
      (_lh_listcomp_fun_9 _lh_listcomp_fun_ls_t_3)))
and enumFromTo__d2__d0 a_0 b_1 =
  (if (a_0 <= b_1) then
    (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo__d2__d0 (a_0 + 1)) b_1) in
      (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
        (fun _lh_listcomp_fun_3 -> 
          (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_3 -> 
            ((((_lh_listcomp_fun_para_3 _lh_listcomp_fun_ls_h_0) _lh_listcomp_fun_4) _lh_listcomp_fun_ls_t_0) _lh_listcomp_fun_3)) in
            (_lh_listcomp_fun_4 ((enumFromTo__d3__d0 1) 3))))))
  else
    (fun _lh_listcomp_fun_5 f_2_2 _lh_dummy_5_0 f_2_3 -> 
      (`LH_N)))
and enumFromTo__d3__d0 a_3 b_4 =
  (if (a_3 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_5 = ((enumFromTo__d3__d0 (a_3 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_5 = a_3 in
        (fun _lh_listcomp_fun_ls_h_6 _lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_6 _lh_listcomp_fun_1_4 -> 
          (let rec t_2_7_8 = (_lh_listcomp_fun_1_3 _lh_listcomp_fun_ls_t_5) in
            (let rec h_2_3_5 = (`LH_P2(_lh_listcomp_fun_ls_h_6, _lh_listcomp_fun_ls_h_5)) in
              (fun f_3_8 -> 
                (let rec t_2_7_9 = ((map__d4__d0 f_3_8) t_2_7_8) in
                  (let rec h_2_3_6 = (f_3_8 h_2_3_5) in
                    (fun _lh_dummy_6_9 -> 
                      ((mappend__d1__d0 h_2_3_6) (concat__d1__d0 t_2_7_9)))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_7 _lh_listcomp_fun_1_5 _lh_listcomp_fun_ls_t_7 _lh_listcomp_fun_1_6 -> 
      (_lh_listcomp_fun_1_6 _lh_listcomp_fun_ls_t_7)))
and enumFromTo__d4__d0 a_5 b_6 =
  (if (a_5 <= b_6) then
    (let rec _lh_listcomp_fun_ls_t_1_1 = ((enumFromTo__d4__d0 (a_5 + 1)) b_6) in
      (let rec _lh_listcomp_fun_ls_h_1_1 = a_5 in
        (fun _lh_listcomp_fun_2_1 -> 
          (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_5 -> 
            ((((_lh_listcomp_fun_para_5 _lh_listcomp_fun_ls_h_1_1) _lh_listcomp_fun_2_2) _lh_listcomp_fun_ls_t_1_1) _lh_listcomp_fun_2_1)) in
            (_lh_listcomp_fun_2_2 ((enumFromTo__d5__d0 1) 3))))))
  else
    (fun _lh_listcomp_fun_2_3 f_5_3 _lh_dummy_8_5 -> 
      (`LH_N)))
and enumFromTo__d5__d0 a_4 b_5 =
  (if (a_4 <= b_5) then
    (let rec _lh_listcomp_fun_ls_t_8 = ((enumFromTo__d5__d0 (a_4 + 1)) b_5) in
      (let rec _lh_listcomp_fun_ls_h_8 = a_4 in
        (fun _lh_listcomp_fun_ls_h_9 _lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_9 _lh_listcomp_fun_1_8 -> 
          (let rec t_3_4_9 = (_lh_listcomp_fun_1_7 _lh_listcomp_fun_ls_t_8) in
            (let rec h_2_9_7 = (`LH_P2(_lh_listcomp_fun_ls_h_9, _lh_listcomp_fun_ls_h_8)) in
              (fun f_4_9 -> 
                (let rec t_3_5_0 = ((map__d1_d1__d0 f_4_9) t_3_4_9) in
                  (let rec h_2_9_8 = (f_4_9 h_2_9_7) in
                    (fun _lh_dummy_8_2 -> 
                      ((mappend__d3__d0 h_2_9_8) (concat__d3__d0 t_3_5_0)))))))))))
  else
    (fun _lh_listcomp_fun_ls_h_1_0 _lh_listcomp_fun_1_9 _lh_listcomp_fun_ls_t_1_0 _lh_listcomp_fun_2_0 -> 
      (_lh_listcomp_fun_2_0 _lh_listcomp_fun_ls_t_1_0)))
and eval__d0__d0 _lh_eval_arg1_0 =
  (if (_lh_eval_arg1_0 = 3) then
    (fun _lh_interpret_LH_C_1_8 _lh_interpret_arg1_1_0 -> 
      (`XWin))
  else
    (if (_lh_eval_arg1_0 = (0 - 3)) then
      (fun _lh_interpret_LH_C_1_9 _lh_interpret_arg1_1_1 -> 
        (`OWin))
    else
      (let rec _lh_interpret_Score_0_0 = _lh_eval_arg1_0 in
        (fun _lh_interpret_LH_C_1_1_0 _lh_interpret_arg1_1_2 -> 
          ((interpret__d0__d0 (_lh_interpret_arg1_1_2 + _lh_interpret_Score_0_0)) _lh_interpret_LH_C_1_1_0)))))
and eval__d1__d0 _lh_eval_arg1_2 =
  (if (_lh_eval_arg1_2 = 3) then
    (fun _lh_interpret_LH_C_1_1_4 _lh_interpret_arg1_1_6 -> 
      (`XWin))
  else
    (if (_lh_eval_arg1_2 = (0 - 3)) then
      (fun _lh_interpret_LH_C_1_1_5 _lh_interpret_arg1_1_7 -> 
        (`OWin))
    else
      (let rec _lh_interpret_Score_0_2 = _lh_eval_arg1_2 in
        (fun _lh_interpret_LH_C_1_1_6 _lh_interpret_arg1_1_8 -> 
          ((interpret__d1__d0 (_lh_interpret_arg1_1_8 + _lh_interpret_Score_0_2)) _lh_interpret_LH_C_1_1_6)))))
and eval__d2__d0 _lh_eval_arg1_1 =
  (if (_lh_eval_arg1_1 = 3) then
    (fun _lh_interpret_LH_C_1_1_1 _lh_interpret_arg1_1_3 -> 
      (`XWin))
  else
    (if (_lh_eval_arg1_1 = (0 - 3)) then
      (fun _lh_interpret_LH_C_1_1_2 _lh_interpret_arg1_1_4 -> 
        (`OWin))
    else
      (let rec _lh_interpret_Score_0_1 = _lh_eval_arg1_1 in
        (fun _lh_interpret_LH_C_1_1_3 _lh_interpret_arg1_1_5 -> 
          ((interpret__d2__d0 (_lh_interpret_arg1_1_5 + _lh_interpret_Score_0_1)) _lh_interpret_LH_C_1_1_3)))))
and fullBoard__d0__d0 _lh_fullBoard_arg1_0 =
  (and__d0__d0 ((map__d9__d0 (fun x_0 -> 
    (not (x_0 = (`Empty))))) (concat__d2__d0 _lh_fullBoard_arg1_0)))
and map2__d0__d0 _lh_map2_arg1_5 _lh_map2_arg2_5 _lh_map2_arg3_5 =
  (match _lh_map2_arg2_5 with
    | `LH_N -> 
      (fun f_5_6 _lh_dummy_8_9 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_5 with
        | `LH_N -> 
          (fun f_5_7 _lh_dummy_9_0 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_5 with
            | `LH_C(_lh_map2_LH_C_0_1_0, _lh_map2_LH_C_1_1_0) -> 
              (match _lh_map2_arg3_5 with
                | `LH_C(_lh_map2_LH_C_0_1_1, _lh_map2_LH_C_1_1_1) -> 
                  (let rec t_3_8_6 = (((map2__d0__d0 _lh_map2_arg1_5) _lh_map2_LH_C_1_1_0) _lh_map2_LH_C_1_1_1) in
                    (let rec h_3_2_9 = ((_lh_map2_arg1_5 _lh_map2_LH_C_0_1_0) _lh_map2_LH_C_0_1_1) in
                      (fun f_5_8 -> 
                        (let rec t_3_8_7 = ((map__d8__d0 f_5_8) t_3_8_6) in
                          (let rec h_3_3_0 = (f_5_8 h_3_2_9) in
                            (fun _lh_dummy_9_1 -> 
                              (h_3_3_0 + (sum__d0__d0 t_3_8_7))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d1__d0 _lh_map2_arg1_2 _lh_map2_arg2_2 _lh_map2_arg3_2 =
  (match _lh_map2_arg2_2 with
    | `LH_N -> 
      (fun _lh_dummy_5_2 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_2 with
        | `LH_N -> 
          (fun _lh_dummy_5_3 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_2 with
            | `LH_C(_lh_map2_LH_C_0_4, _lh_map2_LH_C_1_4) -> 
              (match _lh_map2_arg3_2 with
                | `LH_C(_lh_map2_LH_C_0_5, _lh_map2_LH_C_1_5) -> 
                  (let rec t_1_9_3 = (((map2__d1__d0 _lh_map2_arg1_2) _lh_map2_LH_C_1_4) _lh_map2_LH_C_1_5) in
                    (let rec h_1_5_8 = ((_lh_map2_arg1_2 _lh_map2_LH_C_0_4) _lh_map2_LH_C_0_5) in
                      (fun _lh_dummy_5_4 -> 
                        (h_1_5_8 + (sum__d1__d0 t_1_9_3)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d2__d0 _lh_map2_arg1_1 _lh_map2_arg2_1 _lh_map2_arg3_1 =
  (match _lh_map2_arg2_1 with
    | `LH_N -> 
      (fun f_1_1 _lh_dummy_1_5 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_1 with
        | `LH_N -> 
          (fun f_1_2 _lh_dummy_1_6 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_1 with
            | `LH_C(_lh_map2_LH_C_0_2, _lh_map2_LH_C_1_2) -> 
              (match _lh_map2_arg3_1 with
                | `LH_C(_lh_map2_LH_C_0_3, _lh_map2_LH_C_1_3) -> 
                  (let rec t_3_2 = (((map2__d2__d0 _lh_map2_arg1_1) _lh_map2_LH_C_1_2) _lh_map2_LH_C_1_3) in
                    (let rec h_2_4 = ((_lh_map2_arg1_1 _lh_map2_LH_C_0_2) _lh_map2_LH_C_0_3) in
                      (fun f_1_3 -> 
                        (let rec t_3_3 = ((map__d1_d3__d0 f_1_3) t_3_2) in
                          (let rec h_2_5 = (f_1_3 h_2_4) in
                            (fun _lh_dummy_1_7 -> 
                              (h_2_5 + (sum__d2__d0 t_3_3))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d3__d0 _lh_map2_arg1_3 _lh_map2_arg2_3 _lh_map2_arg3_3 =
  (match _lh_map2_arg2_3 with
    | `LH_N -> 
      (fun _lh_dummy_5_6 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_3 with
        | `LH_N -> 
          (fun _lh_dummy_5_7 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_3 with
            | `LH_C(_lh_map2_LH_C_0_6, _lh_map2_LH_C_1_6) -> 
              (match _lh_map2_arg3_3 with
                | `LH_C(_lh_map2_LH_C_0_7, _lh_map2_LH_C_1_7) -> 
                  (let rec t_2_0_3 = (((map2__d3__d0 _lh_map2_arg1_3) _lh_map2_LH_C_1_6) _lh_map2_LH_C_1_7) in
                    (let rec h_1_6_8 = ((_lh_map2_arg1_3 _lh_map2_LH_C_0_6) _lh_map2_LH_C_0_7) in
                      (fun _lh_dummy_5_8 -> 
                        (h_1_6_8 + (sum__d3__d0 t_2_0_3)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d4__d0 _lh_map2_arg1_0 _lh_map2_arg2_0 _lh_map2_arg3_0 =
  (match _lh_map2_arg2_0 with
    | `LH_N -> 
      (fun f_4 _lh_dummy_8 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_0 with
        | `LH_N -> 
          (fun f_5 _lh_dummy_9 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_0 with
            | `LH_C(_lh_map2_LH_C_0_0, _lh_map2_LH_C_1_0) -> 
              (match _lh_map2_arg3_0 with
                | `LH_C(_lh_map2_LH_C_0_1, _lh_map2_LH_C_1_1) -> 
                  (let rec t_2_4 = (((map2__d4__d0 _lh_map2_arg1_0) _lh_map2_LH_C_1_0) _lh_map2_LH_C_1_1) in
                    (let rec h_1_7 = ((_lh_map2_arg1_0 _lh_map2_LH_C_0_0) _lh_map2_LH_C_0_1) in
                      (fun f_6 -> 
                        (let rec t_2_5 = ((map__d1_d5__d0 f_6) t_2_4) in
                          (let rec h_1_8 = (f_6 h_1_7) in
                            (fun _lh_dummy_1_0 -> 
                              (h_1_8 + (sum__d4__d0 t_2_5))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d5__d0 _lh_map2_arg1_4 _lh_map2_arg2_4 _lh_map2_arg3_4 =
  (match _lh_map2_arg2_4 with
    | `LH_N -> 
      (fun _lh_dummy_7_9 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_4 with
        | `LH_N -> 
          (fun _lh_dummy_8_0 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_4 with
            | `LH_C(_lh_map2_LH_C_0_8, _lh_map2_LH_C_1_8) -> 
              (match _lh_map2_arg3_4 with
                | `LH_C(_lh_map2_LH_C_0_9, _lh_map2_LH_C_1_9) -> 
                  (let rec t_3_4_0 = (((map2__d5__d0 _lh_map2_arg1_4) _lh_map2_LH_C_1_8) _lh_map2_LH_C_1_9) in
                    (let rec h_2_8_8 = ((_lh_map2_arg1_4 _lh_map2_LH_C_0_8) _lh_map2_LH_C_0_9) in
                      (fun _lh_dummy_8_1 -> 
                        (h_2_8_8 + (sum__d5__d0 t_3_4_0)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and mapTree__d0__d0 _lh_mapTree_arg1_0 _lh_mapTree_arg2_0 =
  (match _lh_mapTree_arg2_0 with
    | `Branch(_lh_mapTree_Branch_0_0, _lh_mapTree_Branch_1_0) -> 
      (let rec _lh_cropTree_Branch_1_0 = ((map__d1__d0 (mapTree__d0__d0 _lh_mapTree_arg1_0)) _lh_mapTree_Branch_1_0) in
        (let rec _lh_cropTree_Branch_0_0 = (_lh_mapTree_arg1_0 _lh_mapTree_Branch_0_0) in
          (fun _lh_dummy_3 -> 
            (match _lh_cropTree_Branch_1_0 with
              | `LH_N -> 
                (let rec _lh_mise_Branch_1_0 = (`LH_N) in
                  (let rec _lh_mise_Branch_0_0 = _lh_cropTree_Branch_0_0 in
                    (fun _lh_mise_arg1_0 _lh_mise_arg2_0 -> 
                      (match _lh_mise_Branch_1_0 with
                        | `LH_N -> 
                          _lh_mise_Branch_0_0
                        | _ -> 
                          (((foldr__d0__d0 _lh_mise_arg1_0) ((_lh_mise_arg2_0 (`OWin)) (`XWin))) ((map__d2__d0 ((mise__d0__d0 _lh_mise_arg2_0) _lh_mise_arg1_0)) _lh_mise_Branch_1_0))))))
              | _ -> 
                (match _lh_cropTree_Branch_0_0 with
                  | `Score(_lh_cropTree_Score_0_0) -> 
                    (let rec _lh_mise_Branch_1_1 = ((map__d0__d0 cropTree__d0__d0) _lh_cropTree_Branch_1_0) in
                      (let rec _lh_mise_Branch_0_1 = (`Score(_lh_cropTree_Score_0_0)) in
                        (fun _lh_mise_arg1_1 _lh_mise_arg2_1 -> 
                          (match _lh_mise_Branch_1_1 with
                            | `LH_N -> 
                              _lh_mise_Branch_0_1
                            | _ -> 
                              (((foldr__d0__d0 _lh_mise_arg1_1) ((_lh_mise_arg2_1 (`OWin)) (`XWin))) ((map__d2__d0 ((mise__d0__d0 _lh_mise_arg2_1) _lh_mise_arg1_1)) _lh_mise_Branch_1_1))))))
                  | _ -> 
                    (let rec _lh_mise_Branch_1_2 = (`LH_N) in
                      (let rec _lh_mise_Branch_0_2 = _lh_cropTree_Branch_0_0 in
                        (fun _lh_mise_arg1_2 _lh_mise_arg2_2 -> 
                          (match _lh_mise_Branch_1_2 with
                            | `LH_N -> 
                              _lh_mise_Branch_0_2
                            | _ -> 
                              (((foldr__d0__d0 _lh_mise_arg1_2) ((_lh_mise_arg2_2 (`OWin)) (`XWin))) ((map__d2__d0 ((mise__d0__d0 _lh_mise_arg2_2) _lh_mise_arg1_2)) _lh_mise_Branch_1_2)))))))))))
    | _ -> 
      (failwith "error"))
and map__d2__d0 f_1_9 ls_1_4 =
  (match ls_1_4 with
    | `LH_C(h_1_1_0, t_1_3_9) -> 
      (let rec t_1_4_0 = ((map__d2__d0 f_1_9) t_1_3_9) in
        (let rec h_1_1_1 = (f_1_9 h_1_1_0) in
          (fun f_2_0 i_0 -> 
            ((f_2_0 h_1_1_1) (((foldr__d0__d0 f_2_0) i_0) t_1_4_0)))))
    | `LH_N -> 
      (fun f_2_1 i_1 -> 
        i_1))
and mappend__d2__d0 xs_1_5 ys_1_8_5 =
  (match xs_1_5 with
    | `LH_C(h_1_6_9, t_2_0_4) -> 
      (let rec t_2_0_5 = ((mappend__d2__d0 t_2_0_4) ys_1_8_5) in
        (let rec h_1_7_0 = h_1_6_9 in
          (fun f_3_4 -> 
            (let rec _lh_and_LH_C_1_0 = ((map__d9__d0 f_3_4) t_2_0_5) in
              (let rec _lh_and_LH_C_0_0 = (f_3_4 h_1_7_0) in
                (fun _lh_dummy_5_9 -> 
                  (if _lh_and_LH_C_0_0 then
                    (and__d0__d0 _lh_and_LH_C_1_0)
                  else
                    false)))))))
    | `LH_N -> 
      ys_1_8_5)
and mappend__d8__d0 xs_1_4 ys_1_7_5 =
  (match xs_1_4 with
    | `LH_C(h_1_5_4, t_1_8_8) -> 
      (let rec t_1_8_9 = ((mappend__d8__d0 t_1_8_8) ys_1_7_5) in
        (let rec h_1_5_5 = h_1_5_4 in
          (fun ys_1_7_6 -> 
            (let rec t_1_9_0 = ((mappend__d7__d0 t_1_8_9) ys_1_7_6) in
              (let rec h_1_5_6 = h_1_5_5 in
                (fun ys_1_7_7 -> 
                  (let rec t_1_9_1 = ((mappend__d4__d0 t_1_9_0) ys_1_7_7) in
                    (fun _lh_dummy_5_1 -> 
                      (1 + (length__d0__d0 t_1_9_1))))))))))
    | `LH_N -> 
      ys_1_7_5)
and newPositions__d0__d0 _lh_newPositions_arg1_2 _lh_newPositions_arg2_2 =
  (concat__d0__d0 ((map__d3__d0 ((placePiece__d0__d0 _lh_newPositions_arg1_2) _lh_newPositions_arg2_2)) (let rec _lh_listcomp_fun_2 = (fun _lh_listcomp_fun_para_2 -> 
    (_lh_listcomp_fun_para_2 _lh_listcomp_fun_2)) in
    (_lh_listcomp_fun_2 ((enumFromTo__d0__d0 1) 3)))))
and newPositions__d1__d0 _lh_newPositions_arg1_1 _lh_newPositions_arg2_1 =
  (concat__d1__d0 ((map__d4__d0 ((placePiece__d1__d0 _lh_newPositions_arg1_1) _lh_newPositions_arg2_1)) (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_1)) in
    (_lh_listcomp_fun_1 ((enumFromTo__d2__d0 1) 3)))))
and newPositions__d2__d0 _lh_newPositions_arg1_0 _lh_newPositions_arg2_0 =
  (concat__d3__d0 ((map__d1_d1__d0 ((placePiece__d2__d0 _lh_newPositions_arg1_0) _lh_newPositions_arg2_0)) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_0)) in
    (_lh_listcomp_fun_0 ((enumFromTo__d4__d0 1) 3)))))
and placePiece__d0__d0 _lh_placePiece_arg1_0 _lh_placePiece_arg2_0 _lh_placePiece_arg3_0 =
  (if (not ((empty__d0__d0 _lh_placePiece_arg3_0) _lh_placePiece_arg2_0)) then
    (fun ys_1_6_8 -> 
      ys_1_6_8)
  else
    (let rec _lh_matchIdent_4 = _lh_placePiece_arg2_0 in
      (match _lh_matchIdent_4 with
        | `LH_C(_lh_placePiece_LH_C_0_0, _lh_placePiece_LH_C_1_0) -> 
          (match _lh_placePiece_LH_C_1_0 with
            | `LH_C(_lh_placePiece_LH_C_0_1, _lh_placePiece_LH_C_1_1) -> 
              (match _lh_placePiece_LH_C_1_1 with
                | `LH_C(_lh_placePiece_LH_C_0_2, _lh_placePiece_LH_C_1_2) -> 
                  (match _lh_placePiece_LH_C_1_2 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_5 = _lh_placePiece_arg3_0 in
                        (match _lh_matchIdent_5 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_0, _lh_placePiece_LH_P2_1_0) -> 
                            (match _lh_placePiece_LH_P2_0_0 with
                              | 1 -> 
                                (let rec t_1_8_2 = (fun ys_1_6_9 -> 
                                  ys_1_6_9) in
                                  (let rec h_1_4_8 = (`LH_C((((insert__d0__d0 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_0) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))) in
                                    (fun ys_1_7_0 -> 
                                      (let rec t_1_8_3 = ((mappend__d0__d0 t_1_8_2) ys_1_7_0) in
                                        (let rec h_1_4_9 = h_1_4_8 in
                                          (fun f_2_4 -> 
                                            (`LH_C((f_2_4 h_1_4_9), ((map__d6__d0 f_2_4) t_1_8_3)))))))))
                              | 2 -> 
                                (let rec t_1_8_4 = (fun ys_1_7_1 -> 
                                  ys_1_7_1) in
                                  (let rec h_1_5_0 = (`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C((((insert__d1__d0 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_1) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))) in
                                    (fun ys_1_7_2 -> 
                                      (let rec t_1_8_5 = ((mappend__d0__d0 t_1_8_4) ys_1_7_2) in
                                        (let rec h_1_5_1 = h_1_5_0 in
                                          (fun f_2_5 -> 
                                            (`LH_C((f_2_5 h_1_5_1), ((map__d6__d0 f_2_5) t_1_8_5)))))))))
                              | 3 -> 
                                (let rec t_1_8_6 = (fun ys_1_7_3 -> 
                                  ys_1_7_3) in
                                  (let rec h_1_5_2 = (`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C((((insert__d2__d0 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_2) _lh_placePiece_LH_P2_1_0), (`LH_N))))))) in
                                    (fun ys_1_7_4 -> 
                                      (let rec t_1_8_7 = ((mappend__d0__d0 t_1_8_6) ys_1_7_4) in
                                        (let rec h_1_5_3 = h_1_5_2 in
                                          (fun f_2_6 -> 
                                            (`LH_C((f_2_6 h_1_5_3), ((map__d6__d0 f_2_6) t_1_8_7)))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and placePiece__d1__d0 _lh_placePiece_arg1_1 _lh_placePiece_arg2_1 _lh_placePiece_arg3_1 =
  (if (not ((empty__d1__d0 _lh_placePiece_arg3_1) _lh_placePiece_arg2_1)) then
    (fun ys_1_7_8 -> 
      ys_1_7_8)
  else
    (let rec _lh_matchIdent_6 = _lh_placePiece_arg2_1 in
      (match _lh_matchIdent_6 with
        | `LH_C(_lh_placePiece_LH_C_0_3, _lh_placePiece_LH_C_1_3) -> 
          (match _lh_placePiece_LH_C_1_3 with
            | `LH_C(_lh_placePiece_LH_C_0_4, _lh_placePiece_LH_C_1_4) -> 
              (match _lh_placePiece_LH_C_1_4 with
                | `LH_C(_lh_placePiece_LH_C_0_5, _lh_placePiece_LH_C_1_5) -> 
                  (match _lh_placePiece_LH_C_1_5 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_7 = _lh_placePiece_arg3_1 in
                        (match _lh_matchIdent_7 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_1, _lh_placePiece_LH_P2_1_1) -> 
                            (match _lh_placePiece_LH_P2_0_1 with
                              | 1 -> 
                                (let rec t_1_9_6 = (fun ys_1_7_9 -> 
                                  ys_1_7_9) in
                                  (let rec h_1_6_1 = (`LH_C((((insert__d3__d0 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_3) _lh_placePiece_LH_P2_1_1), (`LH_C(_lh_placePiece_LH_C_0_4, (`LH_C(_lh_placePiece_LH_C_0_5, (`LH_N))))))) in
                                    (fun ys_1_8_0 -> 
                                      (let rec t_1_9_7 = ((mappend__d1__d0 t_1_9_6) ys_1_8_0) in
                                        (let rec h_1_6_2 = h_1_6_1 in
                                          (fun f_2_9 -> 
                                            (`LH_C((f_2_9 h_1_6_2), ((map__d6__d0 f_2_9) t_1_9_7)))))))))
                              | 2 -> 
                                (let rec t_1_9_8 = (fun ys_1_8_1 -> 
                                  ys_1_8_1) in
                                  (let rec h_1_6_3 = (`LH_C(_lh_placePiece_LH_C_0_3, (`LH_C((((insert__d4__d0 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_4) _lh_placePiece_LH_P2_1_1), (`LH_C(_lh_placePiece_LH_C_0_5, (`LH_N))))))) in
                                    (fun ys_1_8_2 -> 
                                      (let rec t_1_9_9 = ((mappend__d1__d0 t_1_9_8) ys_1_8_2) in
                                        (let rec h_1_6_4 = h_1_6_3 in
                                          (fun f_3_0 -> 
                                            (`LH_C((f_3_0 h_1_6_4), ((map__d6__d0 f_3_0) t_1_9_9)))))))))
                              | 3 -> 
                                (let rec t_2_0_0 = (fun ys_1_8_3 -> 
                                  ys_1_8_3) in
                                  (let rec h_1_6_5 = (`LH_C(_lh_placePiece_LH_C_0_3, (`LH_C(_lh_placePiece_LH_C_0_4, (`LH_C((((insert__d5__d0 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_5) _lh_placePiece_LH_P2_1_1), (`LH_N))))))) in
                                    (fun ys_1_8_4 -> 
                                      (let rec t_2_0_1 = ((mappend__d1__d0 t_2_0_0) ys_1_8_4) in
                                        (let rec h_1_6_6 = h_1_6_5 in
                                          (fun f_3_1 -> 
                                            (`LH_C((f_3_1 h_1_6_6), ((map__d6__d0 f_3_1) t_2_0_1)))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and placePiece__d2__d0 _lh_placePiece_arg1_2 _lh_placePiece_arg2_2 _lh_placePiece_arg3_2 =
  (if (not ((empty__d2__d0 _lh_placePiece_arg3_2) _lh_placePiece_arg2_2)) then
    (fun ys_3_2_0 -> 
      ys_3_2_0)
  else
    (let rec _lh_matchIdent_8 = _lh_placePiece_arg2_2 in
      (match _lh_matchIdent_8 with
        | `LH_C(_lh_placePiece_LH_C_0_6, _lh_placePiece_LH_C_1_6) -> 
          (match _lh_placePiece_LH_C_1_6 with
            | `LH_C(_lh_placePiece_LH_C_0_7, _lh_placePiece_LH_C_1_7) -> 
              (match _lh_placePiece_LH_C_1_7 with
                | `LH_C(_lh_placePiece_LH_C_0_8, _lh_placePiece_LH_C_1_8) -> 
                  (match _lh_placePiece_LH_C_1_8 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_9 = _lh_placePiece_arg3_2 in
                        (match _lh_matchIdent_9 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_2, _lh_placePiece_LH_P2_1_2) -> 
                            (match _lh_placePiece_LH_P2_0_2 with
                              | 1 -> 
                                (let rec t_3_3_7 = (fun ys_3_2_1 -> 
                                  ys_3_2_1) in
                                  (let rec h_2_8_5 = (`LH_C((((insert__d6__d0 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_6) _lh_placePiece_LH_P2_1_2), (`LH_C(_lh_placePiece_LH_C_0_7, (`LH_C(_lh_placePiece_LH_C_0_8, (`LH_N))))))) in
                                    (fun ys_3_2_2 -> 
                                      (`LH_C(h_2_8_5, ((mappend__d3__d0 t_3_3_7) ys_3_2_2))))))
                              | 2 -> 
                                (let rec t_3_3_8 = (fun ys_3_2_3 -> 
                                  ys_3_2_3) in
                                  (let rec h_2_8_6 = (`LH_C(_lh_placePiece_LH_C_0_6, (`LH_C((((insert__d7__d0 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_7) _lh_placePiece_LH_P2_1_2), (`LH_C(_lh_placePiece_LH_C_0_8, (`LH_N))))))) in
                                    (fun ys_3_2_4 -> 
                                      (`LH_C(h_2_8_6, ((mappend__d3__d0 t_3_3_8) ys_3_2_4))))))
                              | 3 -> 
                                (let rec t_3_3_9 = (fun ys_3_2_5 -> 
                                  ys_3_2_5) in
                                  (let rec h_2_8_7 = (`LH_C(_lh_placePiece_LH_C_0_6, (`LH_C(_lh_placePiece_LH_C_0_7, (`LH_C((((insert__d8__d0 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_8) _lh_placePiece_LH_P2_1_2), (`LH_N))))))) in
                                    (fun ys_3_2_6 -> 
                                      (`LH_C(h_2_8_7, ((mappend__d3__d0 t_3_3_9) ys_3_2_6))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and prog__d0__d0 _lh_prog_arg1_0 =
  (let rec board_0 = (fun _lh_board_arg1_0 -> 
    (match _lh_board_arg1_0 with
      | `LH_C(_lh_board_LH_C_0_0, _lh_board_LH_C_1_0) -> 
        (match _lh_board_LH_C_0_0 with
          | 'd' -> 
            (match _lh_board_LH_C_1_0 with
              | `LH_C(_lh_board_LH_C_0_1, _lh_board_LH_C_1_1) -> 
                (match _lh_board_LH_C_0_1 with
                  | 'o' -> 
                    (match _lh_board_LH_C_1_1 with
                      | `LH_C(_lh_board_LH_C_0_2, _lh_board_LH_C_1_2) -> 
                        (match _lh_board_LH_C_0_2 with
                          | 'e' -> 
                            (match _lh_board_LH_C_1_2 with
                              | `LH_C(_lh_board_LH_C_0_3, _lh_board_LH_C_1_3) -> 
                                (match _lh_board_LH_C_0_3 with
                                  | 's' -> 
                                    (match _lh_board_LH_C_1_3 with
                                      | `LH_C(_lh_board_LH_C_0_4, _lh_board_LH_C_1_4) -> 
                                        (match _lh_board_LH_C_0_4 with
                                          | 'n' -> 
                                            (match _lh_board_LH_C_1_4 with
                                              | `LH_C(_lh_board_LH_C_0_5, _lh_board_LH_C_1_5) -> 
                                                (match _lh_board_LH_C_0_5 with
                                                  | 't' -> 
                                                    (match _lh_board_LH_C_1_5 with
                                                      | `LH_C(_lh_board_LH_C_0_6, _lh_board_LH_C_1_6) -> 
                                                        (match _lh_board_LH_C_0_6 with
                                                          | ' ' -> 
                                                            (match _lh_board_LH_C_1_6 with
                                                              | `LH_C(_lh_board_LH_C_0_7, _lh_board_LH_C_1_7) -> 
                                                                (match _lh_board_LH_C_0_7 with
                                                                  | 'h' -> 
                                                                    (match _lh_board_LH_C_1_7 with
                                                                      | `LH_C(_lh_board_LH_C_0_8, _lh_board_LH_C_1_8) -> 
                                                                        (match _lh_board_LH_C_0_8 with
                                                                          | 'a' -> 
                                                                            (match _lh_board_LH_C_1_8 with
                                                                              | `LH_C(_lh_board_LH_C_0_9, _lh_board_LH_C_1_9) -> 
                                                                                (match _lh_board_LH_C_0_9 with
                                                                                  | 'p' -> 
                                                                                    (match _lh_board_LH_C_1_9 with
                                                                                      | `LH_C(_lh_board_LH_C_0_1_0, _lh_board_LH_C_1_1_0) -> 
                                                                                        (match _lh_board_LH_C_0_1_0 with
                                                                                          | 'p' -> 
                                                                                            (match _lh_board_LH_C_1_1_0 with
                                                                                              | `LH_C(_lh_board_LH_C_0_1_1, _lh_board_LH_C_1_1_1) -> 
                                                                                                (match _lh_board_LH_C_0_1_1 with
                                                                                                  | 'e' -> 
                                                                                                    (match _lh_board_LH_C_1_1_1 with
                                                                                                      | `LH_C(_lh_board_LH_C_0_1_2, _lh_board_LH_C_1_1_2) -> 
                                                                                                        (match _lh_board_LH_C_0_1_2 with
                                                                                                          | 'n' -> 
                                                                                                            (match _lh_board_LH_C_1_1_2 with
                                                                                                              | `LH_N -> 
                                                                                                                ((mappend__d5__d0 testBoard__d1__d0) testBoard__d2__d0)
                                                                                                              | _ -> 
                                                                                                                testBoard__d0__d0)
                                                                                                          | _ -> 
                                                                                                            testBoard__d0__d1)
                                                                                                      | _ -> 
                                                                                                        testBoard__d0__d2)
                                                                                                  | _ -> 
                                                                                                    testBoard__d0__d3)
                                                                                              | _ -> 
                                                                                                testBoard__d0__d4)
                                                                                          | _ -> 
                                                                                            testBoard__d0__d5)
                                                                                      | _ -> 
                                                                                        testBoard__d0__d6)
                                                                                  | _ -> 
                                                                                    testBoard__d0__d7)
                                                                              | _ -> 
                                                                                testBoard__d0__d8)
                                                                          | _ -> 
                                                                            testBoard__d0__d9)
                                                                      | _ -> 
                                                                        testBoard__d0__d1_d0)
                                                                  | _ -> 
                                                                    testBoard__d0__d1_d1)
                                                              | _ -> 
                                                                testBoard__d0__d1_d2)
                                                          | _ -> 
                                                            testBoard__d0__d1_d3)
                                                      | _ -> 
                                                        testBoard__d0__d1_d4)
                                                  | _ -> 
                                                    testBoard__d0__d1_d5)
                                              | _ -> 
                                                testBoard__d0__d1_d6)
                                          | _ -> 
                                            testBoard__d0__d1_d7)
                                      | _ -> 
                                        testBoard__d0__d1_d8)
                                  | _ -> 
                                    testBoard__d0__d1_d9)
                              | _ -> 
                                testBoard__d0__d2_d0)
                          | _ -> 
                            testBoard__d0__d2_d1)
                      | _ -> 
                        testBoard__d0__d2_d2)
                  | _ -> 
                    testBoard__d0__d2_d3)
              | _ -> 
                testBoard__d0__d2_d4)
          | _ -> 
            testBoard__d0__d2_d5)
      | _ -> 
        testBoard__d0__d2_d6)) in
    (let rec game_0 = ((((alternate__d0__d0 (`X)) max'__d0__d0) min'__d0__d0) (board_0 _lh_prog_arg1_0)) in
      ((mappend__d6__d0 (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (fun ys_2_2 -> 
        ys_2_2) in
        (let rec h_1_3 = '|' in
          (fun ys_2_3 -> 
            (let rec t_2_0 = ((mappend__d6__d0 t_1_9) ys_2_3) in
              (fun _lh_dummy_4 -> 
                (1 + (length__d0__d0 t_2_0))))))) in
        (let rec h_1_4 = 'O' in
          (fun ys_2_4 -> 
            (let rec t_2_1 = ((mappend__d6__d0 t_1_8) ys_2_4) in
              (fun _lh_dummy_5 -> 
                (1 + (length__d0__d0 t_2_1))))))) in
        (let rec h_1_5 = 'X' in
          (fun ys_2_5 -> 
            (let rec t_2_2 = ((mappend__d6__d0 t_1_7) ys_2_5) in
              (fun _lh_dummy_6 -> 
                (1 + (length__d0__d0 t_2_2))))))) in
        (let rec h_1_6 = 'O' in
          (fun ys_2_6 -> 
            (let rec t_2_3 = ((mappend__d6__d0 t_1_6) ys_2_6) in
              (fun _lh_dummy_7 -> 
                (1 + (length__d0__d0 t_2_3)))))))) (concat__d4__d0 ((map__d1_d6__d0 showMove__d0__d0) game_0)))))
and prune__d0__d0 _lh_prune_arg1_0 _lh_prune_arg2_0 =
  (match _lh_prune_arg1_0 with
    | 0 -> 
      (match _lh_prune_arg2_0 with
        | `Branch(_lh_prune_Branch_0_0, _lh_prune_Branch_1_0) -> 
          (`Branch(_lh_prune_Branch_0_0, (`LH_N)))
        | _ -> 
          (match _lh_prune_arg2_0 with
            | `Branch(_lh_prune_Branch_0_1, _lh_prune_Branch_1_1) -> 
              (if (_lh_prune_arg1_0 < 0) then
                ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
              else
                (`Branch(_lh_prune_Branch_0_1, ((map__d5__d0 (prune__d0__d0 (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_1))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (match _lh_prune_arg2_0 with
        | `Branch(_lh_prune_Branch_0_2, _lh_prune_Branch_1_2) -> 
          (if (_lh_prune_arg1_0 < 0) then
            ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
          else
            (`Branch(_lh_prune_Branch_0_2, ((map__d5__d1 (prune__d0__d0 (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_2))))
        | _ -> 
          (failwith "error")))
and repTree__d0__d0 _lh_repTree_arg1_0 _lh_repTree_arg2_0 _lh_repTree_arg3_0 =
  (`Branch(_lh_repTree_arg3_0, ((map__d6__d0 ((repTree__d0__d0 _lh_repTree_arg2_0) _lh_repTree_arg1_0)) (_lh_repTree_arg1_0 _lh_repTree_arg3_0))))
and score__d0__d0 _lh_score_arg1_2 _lh_score_arg2_2 =
  (eval__d0__d0 (sum__d0__d0 ((map__d8__d0 sum__d1__d0) (((map2__d0__d0 (map2__d1__d0 scorePiece__d0__d0)) _lh_score_arg1_2) _lh_score_arg2_2))))
and score__d1__d0 _lh_score_arg1_1 _lh_score_arg2_1 =
  (eval__d1__d0 (sum__d2__d0 ((map__d1_d3__d0 sum__d3__d0) (((map2__d2__d0 (map2__d3__d0 scorePiece__d1__d0)) _lh_score_arg1_1) _lh_score_arg2_1))))
and score__d2__d0 _lh_score_arg1_0 _lh_score_arg2_0 =
  (eval__d2__d0 (sum__d4__d0 ((map__d1_d5__d0 sum__d5__d0) (((map2__d4__d0 (map2__d5__d0 scorePiece__d2__d0)) _lh_score_arg1_0) _lh_score_arg2_0))))
and searchTree__d0__d0 _lh_searchTree_arg1_0 _lh_searchTree_arg2_0 =
  ((prune__d0__d0 5) (((repTree__d0__d0 (newPositions__d0__d0 _lh_searchTree_arg1_0)) (newPositions__d1__d0 (opposite__d0__d0 _lh_searchTree_arg1_0))) _lh_searchTree_arg2_0))
and showBoard__d0__d0 _lh_showBoard_arg1_0 =
  (match _lh_showBoard_arg1_0 with
    | `LH_C(_lh_showBoard_LH_C_0_0, _lh_showBoard_LH_C_1_0) -> 
      (match _lh_showBoard_LH_C_1_0 with
        | `LH_C(_lh_showBoard_LH_C_0_1, _lh_showBoard_LH_C_1_1) -> 
          (match _lh_showBoard_LH_C_1_1 with
            | `LH_C(_lh_showBoard_LH_C_0_2, _lh_showBoard_LH_C_1_2) -> 
              (match _lh_showBoard_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend__d9__d0 ((mappend__d1_d0__d0 ((mappend__d1_d1__d0 ((mappend__d1_d2__d0 ((mappend__d1_d3__d0 (showRow__d0__d0 _lh_showBoard_LH_C_0_0)) (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (fun ys_4_0 -> 
                    ys_4_0) in
                    (let rec h_3_1 = '|' in
                      (fun ys_4_1 -> 
                        (let rec t_4_7 = ((mappend__d1_d2__d0 t_4_6) ys_4_1) in
                          (let rec h_3_2 = h_3_1 in
                            (fun ys_4_2 -> 
                              (let rec t_4_8 = ((mappend__d1_d1__d0 t_4_7) ys_4_2) in
                                (let rec h_3_3 = h_3_2 in
                                  (fun ys_4_3 -> 
                                    (let rec t_4_9 = ((mappend__d1_d0__d0 t_4_8) ys_4_3) in
                                      (let rec h_3_4 = h_3_3 in
                                        (fun ys_4_4 -> 
                                          (let rec t_5_0 = ((mappend__d9__d0 t_4_9) ys_4_4) in
                                            (let rec h_3_5 = h_3_4 in
                                              (fun ys_4_5 -> 
                                                (let rec t_5_1 = ((mappend__d4__d0 t_5_0) ys_4_5) in
                                                  (fun _lh_dummy_1_8 -> 
                                                    (1 + (length__d0__d0 t_5_1))))))))))))))))))) in
                    (let rec h_3_6 = '-' in
                      (fun ys_4_6 -> 
                        (let rec t_5_2 = ((mappend__d1_d2__d0 t_4_5) ys_4_6) in
                          (let rec h_3_7 = h_3_6 in
                            (fun ys_4_7 -> 
                              (let rec t_5_3 = ((mappend__d1_d1__d0 t_5_2) ys_4_7) in
                                (let rec h_3_8 = h_3_7 in
                                  (fun ys_4_8 -> 
                                    (let rec t_5_4 = ((mappend__d1_d0__d0 t_5_3) ys_4_8) in
                                      (let rec h_3_9 = h_3_8 in
                                        (fun ys_4_9 -> 
                                          (let rec t_5_5 = ((mappend__d9__d0 t_5_4) ys_4_9) in
                                            (let rec h_4_0 = h_3_9 in
                                              (fun ys_5_0 -> 
                                                (let rec t_5_6 = ((mappend__d4__d0 t_5_5) ys_5_0) in
                                                  (fun _lh_dummy_1_9 -> 
                                                    (1 + (length__d0__d0 t_5_6))))))))))))))))))) in
                    (let rec h_4_1 = '-' in
                      (fun ys_5_1 -> 
                        (let rec t_5_7 = ((mappend__d1_d2__d0 t_4_4) ys_5_1) in
                          (let rec h_4_2 = h_4_1 in
                            (fun ys_5_2 -> 
                              (let rec t_5_8 = ((mappend__d1_d1__d0 t_5_7) ys_5_2) in
                                (let rec h_4_3 = h_4_2 in
                                  (fun ys_5_3 -> 
                                    (let rec t_5_9 = ((mappend__d1_d0__d0 t_5_8) ys_5_3) in
                                      (let rec h_4_4 = h_4_3 in
                                        (fun ys_5_4 -> 
                                          (let rec t_6_0 = ((mappend__d9__d0 t_5_9) ys_5_4) in
                                            (let rec h_4_5 = h_4_4 in
                                              (fun ys_5_5 -> 
                                                (let rec t_6_1 = ((mappend__d4__d0 t_6_0) ys_5_5) in
                                                  (fun _lh_dummy_2_0 -> 
                                                    (1 + (length__d0__d0 t_6_1))))))))))))))))))) in
                    (let rec h_4_6 = '-' in
                      (fun ys_5_6 -> 
                        (let rec t_6_2 = ((mappend__d1_d2__d0 t_4_3) ys_5_6) in
                          (let rec h_4_7 = h_4_6 in
                            (fun ys_5_7 -> 
                              (let rec t_6_3 = ((mappend__d1_d1__d0 t_6_2) ys_5_7) in
                                (let rec h_4_8 = h_4_7 in
                                  (fun ys_5_8 -> 
                                    (let rec t_6_4 = ((mappend__d1_d0__d0 t_6_3) ys_5_8) in
                                      (let rec h_4_9 = h_4_8 in
                                        (fun ys_5_9 -> 
                                          (let rec t_6_5 = ((mappend__d9__d0 t_6_4) ys_5_9) in
                                            (let rec h_5_0 = h_4_9 in
                                              (fun ys_6_0 -> 
                                                (let rec t_6_6 = ((mappend__d4__d0 t_6_5) ys_6_0) in
                                                  (fun _lh_dummy_2_1 -> 
                                                    (1 + (length__d0__d0 t_6_6))))))))))))))))))) in
                    (let rec h_5_1 = '-' in
                      (fun ys_6_1 -> 
                        (let rec t_6_7 = ((mappend__d1_d2__d0 t_4_2) ys_6_1) in
                          (let rec h_5_2 = h_5_1 in
                            (fun ys_6_2 -> 
                              (let rec t_6_8 = ((mappend__d1_d1__d0 t_6_7) ys_6_2) in
                                (let rec h_5_3 = h_5_2 in
                                  (fun ys_6_3 -> 
                                    (let rec t_6_9 = ((mappend__d1_d0__d0 t_6_8) ys_6_3) in
                                      (let rec h_5_4 = h_5_3 in
                                        (fun ys_6_4 -> 
                                          (let rec t_7_0 = ((mappend__d9__d0 t_6_9) ys_6_4) in
                                            (let rec h_5_5 = h_5_4 in
                                              (fun ys_6_5 -> 
                                                (let rec t_7_1 = ((mappend__d4__d0 t_7_0) ys_6_5) in
                                                  (fun _lh_dummy_2_2 -> 
                                                    (1 + (length__d0__d0 t_7_1))))))))))))))))))) in
                    (let rec h_5_6 = '-' in
                      (fun ys_6_6 -> 
                        (let rec t_7_2 = ((mappend__d1_d2__d0 t_4_1) ys_6_6) in
                          (let rec h_5_7 = h_5_6 in
                            (fun ys_6_7 -> 
                              (let rec t_7_3 = ((mappend__d1_d1__d0 t_7_2) ys_6_7) in
                                (let rec h_5_8 = h_5_7 in
                                  (fun ys_6_8 -> 
                                    (let rec t_7_4 = ((mappend__d1_d0__d0 t_7_3) ys_6_8) in
                                      (let rec h_5_9 = h_5_8 in
                                        (fun ys_6_9 -> 
                                          (let rec t_7_5 = ((mappend__d9__d0 t_7_4) ys_6_9) in
                                            (let rec h_6_0 = h_5_9 in
                                              (fun ys_7_0 -> 
                                                (let rec t_7_6 = ((mappend__d4__d0 t_7_5) ys_7_0) in
                                                  (fun _lh_dummy_2_3 -> 
                                                    (1 + (length__d0__d0 t_7_6))))))))))))))))))) in
                    (let rec h_6_1 = '-' in
                      (fun ys_7_1 -> 
                        (let rec t_7_7 = ((mappend__d1_d2__d0 t_4_0) ys_7_1) in
                          (let rec h_6_2 = h_6_1 in
                            (fun ys_7_2 -> 
                              (let rec t_7_8 = ((mappend__d1_d1__d0 t_7_7) ys_7_2) in
                                (let rec h_6_3 = h_6_2 in
                                  (fun ys_7_3 -> 
                                    (let rec t_7_9 = ((mappend__d1_d0__d0 t_7_8) ys_7_3) in
                                      (let rec h_6_4 = h_6_3 in
                                        (fun ys_7_4 -> 
                                          (let rec t_8_0 = ((mappend__d9__d0 t_7_9) ys_7_4) in
                                            (let rec h_6_5 = h_6_4 in
                                              (fun ys_7_5 -> 
                                                (let rec t_8_1 = ((mappend__d4__d0 t_8_0) ys_7_5) in
                                                  (fun _lh_dummy_2_4 -> 
                                                    (1 + (length__d0__d0 t_8_1))))))))))))))))))) in
                    (let rec h_6_6 = '|' in
                      (fun ys_7_6 -> 
                        (let rec t_8_2 = ((mappend__d1_d2__d0 t_3_9) ys_7_6) in
                          (let rec h_6_7 = h_6_6 in
                            (fun ys_7_7 -> 
                              (let rec t_8_3 = ((mappend__d1_d1__d0 t_8_2) ys_7_7) in
                                (let rec h_6_8 = h_6_7 in
                                  (fun ys_7_8 -> 
                                    (let rec t_8_4 = ((mappend__d1_d0__d0 t_8_3) ys_7_8) in
                                      (let rec h_6_9 = h_6_8 in
                                        (fun ys_7_9 -> 
                                          (let rec t_8_5 = ((mappend__d9__d0 t_8_4) ys_7_9) in
                                            (let rec h_7_0 = h_6_9 in
                                              (fun ys_8_0 -> 
                                                (let rec t_8_6 = ((mappend__d4__d0 t_8_5) ys_8_0) in
                                                  (fun _lh_dummy_2_5 -> 
                                                    (1 + (length__d0__d0 t_8_6))))))))))))))))))))) (showRow__d1__d0 _lh_showBoard_LH_C_0_1))) (let rec t_8_7 = (let rec t_8_8 = (let rec t_8_9 = (let rec t_9_0 = (let rec t_9_1 = (let rec t_9_2 = (let rec t_9_3 = (let rec t_9_4 = (fun ys_8_1 -> 
                    ys_8_1) in
                    (let rec h_7_1 = '|' in
                      (fun ys_8_2 -> 
                        (let rec t_9_5 = ((mappend__d1_d0__d0 t_9_4) ys_8_2) in
                          (let rec h_7_2 = h_7_1 in
                            (fun ys_8_3 -> 
                              (let rec t_9_6 = ((mappend__d9__d0 t_9_5) ys_8_3) in
                                (let rec h_7_3 = h_7_2 in
                                  (fun ys_8_4 -> 
                                    (let rec t_9_7 = ((mappend__d4__d0 t_9_6) ys_8_4) in
                                      (fun _lh_dummy_2_6 -> 
                                        (1 + (length__d0__d0 t_9_7))))))))))))) in
                    (let rec h_7_4 = '-' in
                      (fun ys_8_5 -> 
                        (let rec t_9_8 = ((mappend__d1_d0__d0 t_9_3) ys_8_5) in
                          (let rec h_7_5 = h_7_4 in
                            (fun ys_8_6 -> 
                              (let rec t_9_9 = ((mappend__d9__d0 t_9_8) ys_8_6) in
                                (let rec h_7_6 = h_7_5 in
                                  (fun ys_8_7 -> 
                                    (let rec t_1_0_0 = ((mappend__d4__d0 t_9_9) ys_8_7) in
                                      (fun _lh_dummy_2_7 -> 
                                        (1 + (length__d0__d0 t_1_0_0))))))))))))) in
                    (let rec h_7_7 = '-' in
                      (fun ys_8_8 -> 
                        (let rec t_1_0_1 = ((mappend__d1_d0__d0 t_9_2) ys_8_8) in
                          (let rec h_7_8 = h_7_7 in
                            (fun ys_8_9 -> 
                              (let rec t_1_0_2 = ((mappend__d9__d0 t_1_0_1) ys_8_9) in
                                (let rec h_7_9 = h_7_8 in
                                  (fun ys_9_0 -> 
                                    (let rec t_1_0_3 = ((mappend__d4__d0 t_1_0_2) ys_9_0) in
                                      (fun _lh_dummy_2_8 -> 
                                        (1 + (length__d0__d0 t_1_0_3))))))))))))) in
                    (let rec h_8_0 = '-' in
                      (fun ys_9_1 -> 
                        (let rec t_1_0_4 = ((mappend__d1_d0__d0 t_9_1) ys_9_1) in
                          (let rec h_8_1 = h_8_0 in
                            (fun ys_9_2 -> 
                              (let rec t_1_0_5 = ((mappend__d9__d0 t_1_0_4) ys_9_2) in
                                (let rec h_8_2 = h_8_1 in
                                  (fun ys_9_3 -> 
                                    (let rec t_1_0_6 = ((mappend__d4__d0 t_1_0_5) ys_9_3) in
                                      (fun _lh_dummy_2_9 -> 
                                        (1 + (length__d0__d0 t_1_0_6))))))))))))) in
                    (let rec h_8_3 = '-' in
                      (fun ys_9_4 -> 
                        (let rec t_1_0_7 = ((mappend__d1_d0__d0 t_9_0) ys_9_4) in
                          (let rec h_8_4 = h_8_3 in
                            (fun ys_9_5 -> 
                              (let rec t_1_0_8 = ((mappend__d9__d0 t_1_0_7) ys_9_5) in
                                (let rec h_8_5 = h_8_4 in
                                  (fun ys_9_6 -> 
                                    (let rec t_1_0_9 = ((mappend__d4__d0 t_1_0_8) ys_9_6) in
                                      (fun _lh_dummy_3_0 -> 
                                        (1 + (length__d0__d0 t_1_0_9))))))))))))) in
                    (let rec h_8_6 = '-' in
                      (fun ys_9_7 -> 
                        (let rec t_1_1_0 = ((mappend__d1_d0__d0 t_8_9) ys_9_7) in
                          (let rec h_8_7 = h_8_6 in
                            (fun ys_9_8 -> 
                              (let rec t_1_1_1 = ((mappend__d9__d0 t_1_1_0) ys_9_8) in
                                (let rec h_8_8 = h_8_7 in
                                  (fun ys_9_9 -> 
                                    (let rec t_1_1_2 = ((mappend__d4__d0 t_1_1_1) ys_9_9) in
                                      (fun _lh_dummy_3_1 -> 
                                        (1 + (length__d0__d0 t_1_1_2))))))))))))) in
                    (let rec h_8_9 = '-' in
                      (fun ys_1_0_0 -> 
                        (let rec t_1_1_3 = ((mappend__d1_d0__d0 t_8_8) ys_1_0_0) in
                          (let rec h_9_0 = h_8_9 in
                            (fun ys_1_0_1 -> 
                              (let rec t_1_1_4 = ((mappend__d9__d0 t_1_1_3) ys_1_0_1) in
                                (let rec h_9_1 = h_9_0 in
                                  (fun ys_1_0_2 -> 
                                    (let rec t_1_1_5 = ((mappend__d4__d0 t_1_1_4) ys_1_0_2) in
                                      (fun _lh_dummy_3_2 -> 
                                        (1 + (length__d0__d0 t_1_1_5))))))))))))) in
                    (let rec h_9_2 = '|' in
                      (fun ys_1_0_3 -> 
                        (let rec t_1_1_6 = ((mappend__d1_d0__d0 t_8_7) ys_1_0_3) in
                          (let rec h_9_3 = h_9_2 in
                            (fun ys_1_0_4 -> 
                              (let rec t_1_1_7 = ((mappend__d9__d0 t_1_1_6) ys_1_0_4) in
                                (let rec h_9_4 = h_9_3 in
                                  (fun ys_1_0_5 -> 
                                    (let rec t_1_1_8 = ((mappend__d4__d0 t_1_1_7) ys_1_0_5) in
                                      (fun _lh_dummy_3_3 -> 
                                        (1 + (length__d0__d0 t_1_1_8))))))))))))))) (showRow__d2__d0 _lh_showBoard_LH_C_0_2))) (let rec t_1_1_9 = (let rec t_1_2_0 = (fun ys_1_0_6 -> 
                    ys_1_0_6) in
                    (let rec h_9_5 = '|' in
                      (fun ys_1_0_7 -> 
                        (let rec t_1_2_1 = ((mappend__d4__d0 t_1_2_0) ys_1_0_7) in
                          (fun _lh_dummy_3_4 -> 
                            (1 + (length__d0__d0 t_1_2_1))))))) in
                    (let rec h_9_6 = '|' in
                      (fun ys_1_0_8 -> 
                        (let rec t_1_2_2 = ((mappend__d4__d0 t_1_1_9) ys_1_0_8) in
                          (fun _lh_dummy_3_5 -> 
                            (1 + (length__d0__d0 t_1_2_2))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showEvaluation__d0__d0 _lh_showEvaluation_arg1_0 =
  (match _lh_showEvaluation_arg1_0 with
    | `XWin -> 
      (`LH_C('X', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `OWin -> 
      (`LH_C('O', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `Score(_lh_showEvaluation_Score_0_0) -> 
      ((mappend__d2_d6__d0 (let rec t_3_4 = (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (fun ys_3_4 -> 
        ys_3_4) in
        (let rec h_2_6 = 'e' in
          (fun ys_3_5 -> 
            (`LH_C(h_2_6, ((mappend__d2_d6__d0 t_3_8) ys_3_5)))))) in
        (let rec h_2_7 = 'r' in
          (fun ys_3_6 -> 
            (`LH_C(h_2_7, ((mappend__d2_d6__d0 t_3_7) ys_3_6)))))) in
        (let rec h_2_8 = 'o' in
          (fun ys_3_7 -> 
            (`LH_C(h_2_8, ((mappend__d2_d6__d0 t_3_6) ys_3_7)))))) in
        (let rec h_2_9 = 'c' in
          (fun ys_3_8 -> 
            (`LH_C(h_2_9, ((mappend__d2_d6__d0 t_3_5) ys_3_8)))))) in
        (let rec h_3_0 = 'S' in
          (fun ys_3_9 -> 
            (`LH_C(h_3_0, ((mappend__d2_d6__d0 t_3_4) ys_3_9))))))) (string_of_int _lh_showEvaluation_Score_0_0))
    | _ -> 
      (failwith "error"))
and showPiece__d0__d0 _lh_showPiece_arg1_4 =
  (match _lh_showPiece_arg1_4 with
    | `X -> 
      (let rec t_2_4_5 = (fun ys_2_2_6 -> 
        ys_2_2_6) in
        (let rec h_2_0_5 = 'X' in
          (fun ys_2_2_7 -> 
            (let rec t_2_4_6 = ((mappend__d1_d7__d0 t_2_4_5) ys_2_2_7) in
              (let rec h_2_0_6 = h_2_0_5 in
                (fun ys_2_2_8 -> 
                  (let rec t_2_4_7 = ((mappend__d1_d6__d0 t_2_4_6) ys_2_2_8) in
                    (let rec h_2_0_7 = h_2_0_6 in
                      (fun ys_2_2_9 -> 
                        (let rec t_2_4_8 = ((mappend__d1_d5__d0 t_2_4_7) ys_2_2_9) in
                          (let rec h_2_0_8 = h_2_0_7 in
                            (fun ys_2_3_0 -> 
                              (let rec t_2_4_9 = ((mappend__d1_d4__d0 t_2_4_8) ys_2_3_0) in
                                (let rec h_2_0_9 = h_2_0_8 in
                                  (fun ys_2_3_1 -> 
                                    (let rec t_2_5_0 = ((mappend__d1_d3__d0 t_2_4_9) ys_2_3_1) in
                                      (let rec h_2_1_0 = h_2_0_9 in
                                        (fun ys_2_3_2 -> 
                                          (let rec t_2_5_1 = ((mappend__d1_d2__d0 t_2_5_0) ys_2_3_2) in
                                            (let rec h_2_1_1 = h_2_1_0 in
                                              (fun ys_2_3_3 -> 
                                                (let rec t_2_5_2 = ((mappend__d1_d1__d0 t_2_5_1) ys_2_3_3) in
                                                  (let rec h_2_1_2 = h_2_1_1 in
                                                    (fun ys_2_3_4 -> 
                                                      (let rec t_2_5_3 = ((mappend__d1_d0__d0 t_2_5_2) ys_2_3_4) in
                                                        (let rec h_2_1_3 = h_2_1_2 in
                                                          (fun ys_2_3_5 -> 
                                                            (let rec t_2_5_4 = ((mappend__d9__d0 t_2_5_3) ys_2_3_5) in
                                                              (let rec h_2_1_4 = h_2_1_3 in
                                                                (fun ys_2_3_6 -> 
                                                                  (let rec t_2_5_5 = ((mappend__d4__d0 t_2_5_4) ys_2_3_6) in
                                                                    (fun _lh_dummy_6_6 -> 
                                                                      (1 + (length__d0__d0 t_2_5_5))))))))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_2_5_6 = (fun ys_2_3_7 -> 
        ys_2_3_7) in
        (let rec h_2_1_5 = 'O' in
          (fun ys_2_3_8 -> 
            (let rec t_2_5_7 = ((mappend__d1_d7__d0 t_2_5_6) ys_2_3_8) in
              (let rec h_2_1_6 = h_2_1_5 in
                (fun ys_2_3_9 -> 
                  (let rec t_2_5_8 = ((mappend__d1_d6__d0 t_2_5_7) ys_2_3_9) in
                    (let rec h_2_1_7 = h_2_1_6 in
                      (fun ys_2_4_0 -> 
                        (let rec t_2_5_9 = ((mappend__d1_d5__d0 t_2_5_8) ys_2_4_0) in
                          (let rec h_2_1_8 = h_2_1_7 in
                            (fun ys_2_4_1 -> 
                              (let rec t_2_6_0 = ((mappend__d1_d4__d0 t_2_5_9) ys_2_4_1) in
                                (let rec h_2_1_9 = h_2_1_8 in
                                  (fun ys_2_4_2 -> 
                                    (let rec t_2_6_1 = ((mappend__d1_d3__d0 t_2_6_0) ys_2_4_2) in
                                      (let rec h_2_2_0 = h_2_1_9 in
                                        (fun ys_2_4_3 -> 
                                          (let rec t_2_6_2 = ((mappend__d1_d2__d0 t_2_6_1) ys_2_4_3) in
                                            (let rec h_2_2_1 = h_2_2_0 in
                                              (fun ys_2_4_4 -> 
                                                (let rec t_2_6_3 = ((mappend__d1_d1__d0 t_2_6_2) ys_2_4_4) in
                                                  (let rec h_2_2_2 = h_2_2_1 in
                                                    (fun ys_2_4_5 -> 
                                                      (let rec t_2_6_4 = ((mappend__d1_d0__d0 t_2_6_3) ys_2_4_5) in
                                                        (let rec h_2_2_3 = h_2_2_2 in
                                                          (fun ys_2_4_6 -> 
                                                            (let rec t_2_6_5 = ((mappend__d9__d0 t_2_6_4) ys_2_4_6) in
                                                              (let rec h_2_2_4 = h_2_2_3 in
                                                                (fun ys_2_4_7 -> 
                                                                  (let rec t_2_6_6 = ((mappend__d4__d0 t_2_6_5) ys_2_4_7) in
                                                                    (fun _lh_dummy_6_7 -> 
                                                                      (1 + (length__d0__d0 t_2_6_6))))))))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_2_6_7 = (fun ys_2_4_8 -> 
        ys_2_4_8) in
        (let rec h_2_2_5 = ' ' in
          (fun ys_2_4_9 -> 
            (let rec t_2_6_8 = ((mappend__d1_d7__d0 t_2_6_7) ys_2_4_9) in
              (let rec h_2_2_6 = h_2_2_5 in
                (fun ys_2_5_0 -> 
                  (let rec t_2_6_9 = ((mappend__d1_d6__d0 t_2_6_8) ys_2_5_0) in
                    (let rec h_2_2_7 = h_2_2_6 in
                      (fun ys_2_5_1 -> 
                        (let rec t_2_7_0 = ((mappend__d1_d5__d0 t_2_6_9) ys_2_5_1) in
                          (let rec h_2_2_8 = h_2_2_7 in
                            (fun ys_2_5_2 -> 
                              (let rec t_2_7_1 = ((mappend__d1_d4__d0 t_2_7_0) ys_2_5_2) in
                                (let rec h_2_2_9 = h_2_2_8 in
                                  (fun ys_2_5_3 -> 
                                    (let rec t_2_7_2 = ((mappend__d1_d3__d0 t_2_7_1) ys_2_5_3) in
                                      (let rec h_2_3_0 = h_2_2_9 in
                                        (fun ys_2_5_4 -> 
                                          (let rec t_2_7_3 = ((mappend__d1_d2__d0 t_2_7_2) ys_2_5_4) in
                                            (let rec h_2_3_1 = h_2_3_0 in
                                              (fun ys_2_5_5 -> 
                                                (let rec t_2_7_4 = ((mappend__d1_d1__d0 t_2_7_3) ys_2_5_5) in
                                                  (let rec h_2_3_2 = h_2_3_1 in
                                                    (fun ys_2_5_6 -> 
                                                      (let rec t_2_7_5 = ((mappend__d1_d0__d0 t_2_7_4) ys_2_5_6) in
                                                        (let rec h_2_3_3 = h_2_3_2 in
                                                          (fun ys_2_5_7 -> 
                                                            (let rec t_2_7_6 = ((mappend__d9__d0 t_2_7_5) ys_2_5_7) in
                                                              (let rec h_2_3_4 = h_2_3_3 in
                                                                (fun ys_2_5_8 -> 
                                                                  (let rec t_2_7_7 = ((mappend__d4__d0 t_2_7_6) ys_2_5_8) in
                                                                    (fun _lh_dummy_6_8 -> 
                                                                      (1 + (length__d0__d0 t_2_7_7))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d1__d0 _lh_showPiece_arg1_2 =
  (match _lh_showPiece_arg1_2 with
    | `X -> 
      (let rec t_1_4_1 = (fun ys_1_2_7 -> 
        ys_1_2_7) in
        (let rec h_1_1_2 = 'X' in
          (fun ys_1_2_8 -> 
            (let rec t_1_4_2 = ((mappend__d1_d5__d0 t_1_4_1) ys_1_2_8) in
              (let rec h_1_1_3 = h_1_1_2 in
                (fun ys_1_2_9 -> 
                  (let rec t_1_4_3 = ((mappend__d1_d4__d0 t_1_4_2) ys_1_2_9) in
                    (let rec h_1_1_4 = h_1_1_3 in
                      (fun ys_1_3_0 -> 
                        (let rec t_1_4_4 = ((mappend__d1_d3__d0 t_1_4_3) ys_1_3_0) in
                          (let rec h_1_1_5 = h_1_1_4 in
                            (fun ys_1_3_1 -> 
                              (let rec t_1_4_5 = ((mappend__d1_d2__d0 t_1_4_4) ys_1_3_1) in
                                (let rec h_1_1_6 = h_1_1_5 in
                                  (fun ys_1_3_2 -> 
                                    (let rec t_1_4_6 = ((mappend__d1_d1__d0 t_1_4_5) ys_1_3_2) in
                                      (let rec h_1_1_7 = h_1_1_6 in
                                        (fun ys_1_3_3 -> 
                                          (let rec t_1_4_7 = ((mappend__d1_d0__d0 t_1_4_6) ys_1_3_3) in
                                            (let rec h_1_1_8 = h_1_1_7 in
                                              (fun ys_1_3_4 -> 
                                                (let rec t_1_4_8 = ((mappend__d9__d0 t_1_4_7) ys_1_3_4) in
                                                  (let rec h_1_1_9 = h_1_1_8 in
                                                    (fun ys_1_3_5 -> 
                                                      (let rec t_1_4_9 = ((mappend__d4__d0 t_1_4_8) ys_1_3_5) in
                                                        (fun _lh_dummy_4_5 -> 
                                                          (1 + (length__d0__d0 t_1_4_9))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_1_5_0 = (fun ys_1_3_6 -> 
        ys_1_3_6) in
        (let rec h_1_2_0 = 'O' in
          (fun ys_1_3_7 -> 
            (let rec t_1_5_1 = ((mappend__d1_d5__d0 t_1_5_0) ys_1_3_7) in
              (let rec h_1_2_1 = h_1_2_0 in
                (fun ys_1_3_8 -> 
                  (let rec t_1_5_2 = ((mappend__d1_d4__d0 t_1_5_1) ys_1_3_8) in
                    (let rec h_1_2_2 = h_1_2_1 in
                      (fun ys_1_3_9 -> 
                        (let rec t_1_5_3 = ((mappend__d1_d3__d0 t_1_5_2) ys_1_3_9) in
                          (let rec h_1_2_3 = h_1_2_2 in
                            (fun ys_1_4_0 -> 
                              (let rec t_1_5_4 = ((mappend__d1_d2__d0 t_1_5_3) ys_1_4_0) in
                                (let rec h_1_2_4 = h_1_2_3 in
                                  (fun ys_1_4_1 -> 
                                    (let rec t_1_5_5 = ((mappend__d1_d1__d0 t_1_5_4) ys_1_4_1) in
                                      (let rec h_1_2_5 = h_1_2_4 in
                                        (fun ys_1_4_2 -> 
                                          (let rec t_1_5_6 = ((mappend__d1_d0__d0 t_1_5_5) ys_1_4_2) in
                                            (let rec h_1_2_6 = h_1_2_5 in
                                              (fun ys_1_4_3 -> 
                                                (let rec t_1_5_7 = ((mappend__d9__d0 t_1_5_6) ys_1_4_3) in
                                                  (let rec h_1_2_7 = h_1_2_6 in
                                                    (fun ys_1_4_4 -> 
                                                      (let rec t_1_5_8 = ((mappend__d4__d0 t_1_5_7) ys_1_4_4) in
                                                        (fun _lh_dummy_4_6 -> 
                                                          (1 + (length__d0__d0 t_1_5_8))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_1_5_9 = (fun ys_1_4_5 -> 
        ys_1_4_5) in
        (let rec h_1_2_8 = ' ' in
          (fun ys_1_4_6 -> 
            (let rec t_1_6_0 = ((mappend__d1_d5__d0 t_1_5_9) ys_1_4_6) in
              (let rec h_1_2_9 = h_1_2_8 in
                (fun ys_1_4_7 -> 
                  (let rec t_1_6_1 = ((mappend__d1_d4__d0 t_1_6_0) ys_1_4_7) in
                    (let rec h_1_3_0 = h_1_2_9 in
                      (fun ys_1_4_8 -> 
                        (let rec t_1_6_2 = ((mappend__d1_d3__d0 t_1_6_1) ys_1_4_8) in
                          (let rec h_1_3_1 = h_1_3_0 in
                            (fun ys_1_4_9 -> 
                              (let rec t_1_6_3 = ((mappend__d1_d2__d0 t_1_6_2) ys_1_4_9) in
                                (let rec h_1_3_2 = h_1_3_1 in
                                  (fun ys_1_5_0 -> 
                                    (let rec t_1_6_4 = ((mappend__d1_d1__d0 t_1_6_3) ys_1_5_0) in
                                      (let rec h_1_3_3 = h_1_3_2 in
                                        (fun ys_1_5_1 -> 
                                          (let rec t_1_6_5 = ((mappend__d1_d0__d0 t_1_6_4) ys_1_5_1) in
                                            (let rec h_1_3_4 = h_1_3_3 in
                                              (fun ys_1_5_2 -> 
                                                (let rec t_1_6_6 = ((mappend__d9__d0 t_1_6_5) ys_1_5_2) in
                                                  (let rec h_1_3_5 = h_1_3_4 in
                                                    (fun ys_1_5_3 -> 
                                                      (let rec t_1_6_7 = ((mappend__d4__d0 t_1_6_6) ys_1_5_3) in
                                                        (fun _lh_dummy_4_7 -> 
                                                          (1 + (length__d0__d0 t_1_6_7))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d2__d0 _lh_showPiece_arg1_3 =
  (match _lh_showPiece_arg1_3 with
    | `X -> 
      (let rec t_2_0_6 = (fun ys_1_8_6 -> 
        ys_1_8_6) in
        (let rec h_1_7_1 = 'X' in
          (fun ys_1_8_7 -> 
            (let rec t_2_0_7 = ((mappend__d1_d3__d0 t_2_0_6) ys_1_8_7) in
              (let rec h_1_7_2 = h_1_7_1 in
                (fun ys_1_8_8 -> 
                  (let rec t_2_0_8 = ((mappend__d1_d2__d0 t_2_0_7) ys_1_8_8) in
                    (let rec h_1_7_3 = h_1_7_2 in
                      (fun ys_1_8_9 -> 
                        (let rec t_2_0_9 = ((mappend__d1_d1__d0 t_2_0_8) ys_1_8_9) in
                          (let rec h_1_7_4 = h_1_7_3 in
                            (fun ys_1_9_0 -> 
                              (let rec t_2_1_0 = ((mappend__d1_d0__d0 t_2_0_9) ys_1_9_0) in
                                (let rec h_1_7_5 = h_1_7_4 in
                                  (fun ys_1_9_1 -> 
                                    (let rec t_2_1_1 = ((mappend__d9__d0 t_2_1_0) ys_1_9_1) in
                                      (let rec h_1_7_6 = h_1_7_5 in
                                        (fun ys_1_9_2 -> 
                                          (let rec t_2_1_2 = ((mappend__d4__d0 t_2_1_1) ys_1_9_2) in
                                            (fun _lh_dummy_6_0 -> 
                                              (1 + (length__d0__d0 t_2_1_2))))))))))))))))))))))
    | `O -> 
      (let rec t_2_1_3 = (fun ys_1_9_3 -> 
        ys_1_9_3) in
        (let rec h_1_7_7 = 'O' in
          (fun ys_1_9_4 -> 
            (let rec t_2_1_4 = ((mappend__d1_d3__d0 t_2_1_3) ys_1_9_4) in
              (let rec h_1_7_8 = h_1_7_7 in
                (fun ys_1_9_5 -> 
                  (let rec t_2_1_5 = ((mappend__d1_d2__d0 t_2_1_4) ys_1_9_5) in
                    (let rec h_1_7_9 = h_1_7_8 in
                      (fun ys_1_9_6 -> 
                        (let rec t_2_1_6 = ((mappend__d1_d1__d0 t_2_1_5) ys_1_9_6) in
                          (let rec h_1_8_0 = h_1_7_9 in
                            (fun ys_1_9_7 -> 
                              (let rec t_2_1_7 = ((mappend__d1_d0__d0 t_2_1_6) ys_1_9_7) in
                                (let rec h_1_8_1 = h_1_8_0 in
                                  (fun ys_1_9_8 -> 
                                    (let rec t_2_1_8 = ((mappend__d9__d0 t_2_1_7) ys_1_9_8) in
                                      (let rec h_1_8_2 = h_1_8_1 in
                                        (fun ys_1_9_9 -> 
                                          (let rec t_2_1_9 = ((mappend__d4__d0 t_2_1_8) ys_1_9_9) in
                                            (fun _lh_dummy_6_1 -> 
                                              (1 + (length__d0__d0 t_2_1_9))))))))))))))))))))))
    | `Empty -> 
      (let rec t_2_2_0 = (fun ys_2_0_0 -> 
        ys_2_0_0) in
        (let rec h_1_8_3 = ' ' in
          (fun ys_2_0_1 -> 
            (let rec t_2_2_1 = ((mappend__d1_d3__d0 t_2_2_0) ys_2_0_1) in
              (let rec h_1_8_4 = h_1_8_3 in
                (fun ys_2_0_2 -> 
                  (let rec t_2_2_2 = ((mappend__d1_d2__d0 t_2_2_1) ys_2_0_2) in
                    (let rec h_1_8_5 = h_1_8_4 in
                      (fun ys_2_0_3 -> 
                        (let rec t_2_2_3 = ((mappend__d1_d1__d0 t_2_2_2) ys_2_0_3) in
                          (let rec h_1_8_6 = h_1_8_5 in
                            (fun ys_2_0_4 -> 
                              (let rec t_2_2_4 = ((mappend__d1_d0__d0 t_2_2_3) ys_2_0_4) in
                                (let rec h_1_8_7 = h_1_8_6 in
                                  (fun ys_2_0_5 -> 
                                    (let rec t_2_2_5 = ((mappend__d9__d0 t_2_2_4) ys_2_0_5) in
                                      (let rec h_1_8_8 = h_1_8_7 in
                                        (fun ys_2_0_6 -> 
                                          (let rec t_2_2_6 = ((mappend__d4__d0 t_2_2_5) ys_2_0_6) in
                                            (fun _lh_dummy_6_2 -> 
                                              (1 + (length__d0__d0 t_2_2_6))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d3__d0 _lh_showPiece_arg1_6 =
  (match _lh_showPiece_arg1_6 with
    | `X -> 
      (let rec t_2_8_9 = (fun ys_2_7_0 -> 
        ys_2_7_0) in
        (let rec h_2_4_3 = 'X' in
          (fun ys_2_7_1 -> 
            (let rec t_2_9_0 = ((mappend__d2_d1__d0 t_2_8_9) ys_2_7_1) in
              (let rec h_2_4_4 = h_2_4_3 in
                (fun ys_2_7_2 -> 
                  (let rec t_2_9_1 = ((mappend__d2_d0__d0 t_2_9_0) ys_2_7_2) in
                    (let rec h_2_4_5 = h_2_4_4 in
                      (fun ys_2_7_3 -> 
                        (let rec t_2_9_2 = ((mappend__d1_d9__d0 t_2_9_1) ys_2_7_3) in
                          (let rec h_2_4_6 = h_2_4_5 in
                            (fun ys_2_7_4 -> 
                              (let rec t_2_9_3 = ((mappend__d1_d8__d0 t_2_9_2) ys_2_7_4) in
                                (let rec h_2_4_7 = h_2_4_6 in
                                  (fun ys_2_7_5 -> 
                                    (let rec t_2_9_4 = ((mappend__d1_d1__d0 t_2_9_3) ys_2_7_5) in
                                      (let rec h_2_4_8 = h_2_4_7 in
                                        (fun ys_2_7_6 -> 
                                          (let rec t_2_9_5 = ((mappend__d1_d0__d0 t_2_9_4) ys_2_7_6) in
                                            (let rec h_2_4_9 = h_2_4_8 in
                                              (fun ys_2_7_7 -> 
                                                (let rec t_2_9_6 = ((mappend__d9__d0 t_2_9_5) ys_2_7_7) in
                                                  (let rec h_2_5_0 = h_2_4_9 in
                                                    (fun ys_2_7_8 -> 
                                                      (let rec t_2_9_7 = ((mappend__d4__d0 t_2_9_6) ys_2_7_8) in
                                                        (fun _lh_dummy_7_3 -> 
                                                          (1 + (length__d0__d0 t_2_9_7))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_2_9_8 = (fun ys_2_7_9 -> 
        ys_2_7_9) in
        (let rec h_2_5_1 = 'O' in
          (fun ys_2_8_0 -> 
            (let rec t_2_9_9 = ((mappend__d2_d1__d0 t_2_9_8) ys_2_8_0) in
              (let rec h_2_5_2 = h_2_5_1 in
                (fun ys_2_8_1 -> 
                  (let rec t_3_0_0 = ((mappend__d2_d0__d0 t_2_9_9) ys_2_8_1) in
                    (let rec h_2_5_3 = h_2_5_2 in
                      (fun ys_2_8_2 -> 
                        (let rec t_3_0_1 = ((mappend__d1_d9__d0 t_3_0_0) ys_2_8_2) in
                          (let rec h_2_5_4 = h_2_5_3 in
                            (fun ys_2_8_3 -> 
                              (let rec t_3_0_2 = ((mappend__d1_d8__d0 t_3_0_1) ys_2_8_3) in
                                (let rec h_2_5_5 = h_2_5_4 in
                                  (fun ys_2_8_4 -> 
                                    (let rec t_3_0_3 = ((mappend__d1_d1__d0 t_3_0_2) ys_2_8_4) in
                                      (let rec h_2_5_6 = h_2_5_5 in
                                        (fun ys_2_8_5 -> 
                                          (let rec t_3_0_4 = ((mappend__d1_d0__d0 t_3_0_3) ys_2_8_5) in
                                            (let rec h_2_5_7 = h_2_5_6 in
                                              (fun ys_2_8_6 -> 
                                                (let rec t_3_0_5 = ((mappend__d9__d0 t_3_0_4) ys_2_8_6) in
                                                  (let rec h_2_5_8 = h_2_5_7 in
                                                    (fun ys_2_8_7 -> 
                                                      (let rec t_3_0_6 = ((mappend__d4__d0 t_3_0_5) ys_2_8_7) in
                                                        (fun _lh_dummy_7_4 -> 
                                                          (1 + (length__d0__d0 t_3_0_6))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_3_0_7 = (fun ys_2_8_8 -> 
        ys_2_8_8) in
        (let rec h_2_5_9 = ' ' in
          (fun ys_2_8_9 -> 
            (let rec t_3_0_8 = ((mappend__d2_d1__d0 t_3_0_7) ys_2_8_9) in
              (let rec h_2_6_0 = h_2_5_9 in
                (fun ys_2_9_0 -> 
                  (let rec t_3_0_9 = ((mappend__d2_d0__d0 t_3_0_8) ys_2_9_0) in
                    (let rec h_2_6_1 = h_2_6_0 in
                      (fun ys_2_9_1 -> 
                        (let rec t_3_1_0 = ((mappend__d1_d9__d0 t_3_0_9) ys_2_9_1) in
                          (let rec h_2_6_2 = h_2_6_1 in
                            (fun ys_2_9_2 -> 
                              (let rec t_3_1_1 = ((mappend__d1_d8__d0 t_3_1_0) ys_2_9_2) in
                                (let rec h_2_6_3 = h_2_6_2 in
                                  (fun ys_2_9_3 -> 
                                    (let rec t_3_1_2 = ((mappend__d1_d1__d0 t_3_1_1) ys_2_9_3) in
                                      (let rec h_2_6_4 = h_2_6_3 in
                                        (fun ys_2_9_4 -> 
                                          (let rec t_3_1_3 = ((mappend__d1_d0__d0 t_3_1_2) ys_2_9_4) in
                                            (let rec h_2_6_5 = h_2_6_4 in
                                              (fun ys_2_9_5 -> 
                                                (let rec t_3_1_4 = ((mappend__d9__d0 t_3_1_3) ys_2_9_5) in
                                                  (let rec h_2_6_6 = h_2_6_5 in
                                                    (fun ys_2_9_6 -> 
                                                      (let rec t_3_1_5 = ((mappend__d4__d0 t_3_1_4) ys_2_9_6) in
                                                        (fun _lh_dummy_7_5 -> 
                                                          (1 + (length__d0__d0 t_3_1_5))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d4__d0 _lh_showPiece_arg1_8 =
  (match _lh_showPiece_arg1_8 with
    | `X -> 
      (let rec t_3_6_2 = (fun ys_3_4_3 -> 
        ys_3_4_3) in
        (let rec h_3_0_8 = 'X' in
          (fun ys_3_4_4 -> 
            (let rec t_3_6_3 = ((mappend__d1_d9__d0 t_3_6_2) ys_3_4_4) in
              (let rec h_3_0_9 = h_3_0_8 in
                (fun ys_3_4_5 -> 
                  (let rec t_3_6_4 = ((mappend__d1_d8__d0 t_3_6_3) ys_3_4_5) in
                    (let rec h_3_1_0 = h_3_0_9 in
                      (fun ys_3_4_6 -> 
                        (let rec t_3_6_5 = ((mappend__d1_d1__d0 t_3_6_4) ys_3_4_6) in
                          (let rec h_3_1_1 = h_3_1_0 in
                            (fun ys_3_4_7 -> 
                              (let rec t_3_6_6 = ((mappend__d1_d0__d0 t_3_6_5) ys_3_4_7) in
                                (let rec h_3_1_2 = h_3_1_1 in
                                  (fun ys_3_4_8 -> 
                                    (let rec t_3_6_7 = ((mappend__d9__d0 t_3_6_6) ys_3_4_8) in
                                      (let rec h_3_1_3 = h_3_1_2 in
                                        (fun ys_3_4_9 -> 
                                          (let rec t_3_6_8 = ((mappend__d4__d0 t_3_6_7) ys_3_4_9) in
                                            (fun _lh_dummy_8_6 -> 
                                              (1 + (length__d0__d0 t_3_6_8))))))))))))))))))))))
    | `O -> 
      (let rec t_3_6_9 = (fun ys_3_5_0 -> 
        ys_3_5_0) in
        (let rec h_3_1_4 = 'O' in
          (fun ys_3_5_1 -> 
            (let rec t_3_7_0 = ((mappend__d1_d9__d0 t_3_6_9) ys_3_5_1) in
              (let rec h_3_1_5 = h_3_1_4 in
                (fun ys_3_5_2 -> 
                  (let rec t_3_7_1 = ((mappend__d1_d8__d0 t_3_7_0) ys_3_5_2) in
                    (let rec h_3_1_6 = h_3_1_5 in
                      (fun ys_3_5_3 -> 
                        (let rec t_3_7_2 = ((mappend__d1_d1__d0 t_3_7_1) ys_3_5_3) in
                          (let rec h_3_1_7 = h_3_1_6 in
                            (fun ys_3_5_4 -> 
                              (let rec t_3_7_3 = ((mappend__d1_d0__d0 t_3_7_2) ys_3_5_4) in
                                (let rec h_3_1_8 = h_3_1_7 in
                                  (fun ys_3_5_5 -> 
                                    (let rec t_3_7_4 = ((mappend__d9__d0 t_3_7_3) ys_3_5_5) in
                                      (let rec h_3_1_9 = h_3_1_8 in
                                        (fun ys_3_5_6 -> 
                                          (let rec t_3_7_5 = ((mappend__d4__d0 t_3_7_4) ys_3_5_6) in
                                            (fun _lh_dummy_8_7 -> 
                                              (1 + (length__d0__d0 t_3_7_5))))))))))))))))))))))
    | `Empty -> 
      (let rec t_3_7_6 = (fun ys_3_5_7 -> 
        ys_3_5_7) in
        (let rec h_3_2_0 = ' ' in
          (fun ys_3_5_8 -> 
            (let rec t_3_7_7 = ((mappend__d1_d9__d0 t_3_7_6) ys_3_5_8) in
              (let rec h_3_2_1 = h_3_2_0 in
                (fun ys_3_5_9 -> 
                  (let rec t_3_7_8 = ((mappend__d1_d8__d0 t_3_7_7) ys_3_5_9) in
                    (let rec h_3_2_2 = h_3_2_1 in
                      (fun ys_3_6_0 -> 
                        (let rec t_3_7_9 = ((mappend__d1_d1__d0 t_3_7_8) ys_3_6_0) in
                          (let rec h_3_2_3 = h_3_2_2 in
                            (fun ys_3_6_1 -> 
                              (let rec t_3_8_0 = ((mappend__d1_d0__d0 t_3_7_9) ys_3_6_1) in
                                (let rec h_3_2_4 = h_3_2_3 in
                                  (fun ys_3_6_2 -> 
                                    (let rec t_3_8_1 = ((mappend__d9__d0 t_3_8_0) ys_3_6_2) in
                                      (let rec h_3_2_5 = h_3_2_4 in
                                        (fun ys_3_6_3 -> 
                                          (let rec t_3_8_2 = ((mappend__d4__d0 t_3_8_1) ys_3_6_3) in
                                            (fun _lh_dummy_8_8 -> 
                                              (1 + (length__d0__d0 t_3_8_2))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d5__d0 _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `X -> 
      (let rec t_1 = (fun ys_5 -> 
        ys_5) in
        (let rec h_1 = 'X' in
          (fun ys_6 -> 
            (let rec t_2 = ((mappend__d1_d1__d0 t_1) ys_6) in
              (let rec h_2 = h_1 in
                (fun ys_7 -> 
                  (let rec t_3 = ((mappend__d1_d0__d0 t_2) ys_7) in
                    (let rec h_3 = h_2 in
                      (fun ys_8 -> 
                        (let rec t_4 = ((mappend__d9__d0 t_3) ys_8) in
                          (let rec h_4 = h_3 in
                            (fun ys_9 -> 
                              (let rec t_5 = ((mappend__d4__d0 t_4) ys_9) in
                                (fun _lh_dummy_0 -> 
                                  (1 + (length__d0__d0 t_5))))))))))))))))
    | `O -> 
      (let rec t_6 = (fun ys_1_0 -> 
        ys_1_0) in
        (let rec h_5 = 'O' in
          (fun ys_1_1 -> 
            (let rec t_7 = ((mappend__d1_d1__d0 t_6) ys_1_1) in
              (let rec h_6 = h_5 in
                (fun ys_1_2 -> 
                  (let rec t_8 = ((mappend__d1_d0__d0 t_7) ys_1_2) in
                    (let rec h_7 = h_6 in
                      (fun ys_1_3 -> 
                        (let rec t_9 = ((mappend__d9__d0 t_8) ys_1_3) in
                          (let rec h_8 = h_7 in
                            (fun ys_1_4 -> 
                              (let rec t_1_0 = ((mappend__d4__d0 t_9) ys_1_4) in
                                (fun _lh_dummy_1 -> 
                                  (1 + (length__d0__d0 t_1_0))))))))))))))))
    | `Empty -> 
      (let rec t_1_1 = (fun ys_1_5 -> 
        ys_1_5) in
        (let rec h_9 = ' ' in
          (fun ys_1_6 -> 
            (let rec t_1_2 = ((mappend__d1_d1__d0 t_1_1) ys_1_6) in
              (let rec h_1_0 = h_9 in
                (fun ys_1_7 -> 
                  (let rec t_1_3 = ((mappend__d1_d0__d0 t_1_2) ys_1_7) in
                    (let rec h_1_1 = h_1_0 in
                      (fun ys_1_8 -> 
                        (let rec t_1_4 = ((mappend__d9__d0 t_1_3) ys_1_8) in
                          (let rec h_1_2 = h_1_1 in
                            (fun ys_1_9 -> 
                              (let rec t_1_5 = ((mappend__d4__d0 t_1_4) ys_1_9) in
                                (fun _lh_dummy_2 -> 
                                  (1 + (length__d0__d0 t_1_5))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d6__d0 _lh_showPiece_arg1_7 =
  (match _lh_showPiece_arg1_7 with
    | `X -> 
      (let rec t_3_1_6 = (fun ys_2_9_7 -> 
        ys_2_9_7) in
        (let rec h_2_6_7 = 'X' in
          (fun ys_2_9_8 -> 
            (let rec t_3_1_7 = ((mappend__d2_d5__d0 t_3_1_6) ys_2_9_8) in
              (let rec h_2_6_8 = h_2_6_7 in
                (fun ys_2_9_9 -> 
                  (let rec t_3_1_8 = ((mappend__d2_d4__d0 t_3_1_7) ys_2_9_9) in
                    (let rec h_2_6_9 = h_2_6_8 in
                      (fun ys_3_0_0 -> 
                        (let rec t_3_1_9 = ((mappend__d2_d3__d0 t_3_1_8) ys_3_0_0) in
                          (let rec h_2_7_0 = h_2_6_9 in
                            (fun ys_3_0_1 -> 
                              (let rec t_3_2_0 = ((mappend__d2_d2__d0 t_3_1_9) ys_3_0_1) in
                                (let rec h_2_7_1 = h_2_7_0 in
                                  (fun ys_3_0_2 -> 
                                    (let rec t_3_2_1 = ((mappend__d9__d0 t_3_2_0) ys_3_0_2) in
                                      (let rec h_2_7_2 = h_2_7_1 in
                                        (fun ys_3_0_3 -> 
                                          (let rec t_3_2_2 = ((mappend__d4__d0 t_3_2_1) ys_3_0_3) in
                                            (fun _lh_dummy_7_6 -> 
                                              (1 + (length__d0__d0 t_3_2_2))))))))))))))))))))))
    | `O -> 
      (let rec t_3_2_3 = (fun ys_3_0_4 -> 
        ys_3_0_4) in
        (let rec h_2_7_3 = 'O' in
          (fun ys_3_0_5 -> 
            (let rec t_3_2_4 = ((mappend__d2_d5__d0 t_3_2_3) ys_3_0_5) in
              (let rec h_2_7_4 = h_2_7_3 in
                (fun ys_3_0_6 -> 
                  (let rec t_3_2_5 = ((mappend__d2_d4__d0 t_3_2_4) ys_3_0_6) in
                    (let rec h_2_7_5 = h_2_7_4 in
                      (fun ys_3_0_7 -> 
                        (let rec t_3_2_6 = ((mappend__d2_d3__d0 t_3_2_5) ys_3_0_7) in
                          (let rec h_2_7_6 = h_2_7_5 in
                            (fun ys_3_0_8 -> 
                              (let rec t_3_2_7 = ((mappend__d2_d2__d0 t_3_2_6) ys_3_0_8) in
                                (let rec h_2_7_7 = h_2_7_6 in
                                  (fun ys_3_0_9 -> 
                                    (let rec t_3_2_8 = ((mappend__d9__d0 t_3_2_7) ys_3_0_9) in
                                      (let rec h_2_7_8 = h_2_7_7 in
                                        (fun ys_3_1_0 -> 
                                          (let rec t_3_2_9 = ((mappend__d4__d0 t_3_2_8) ys_3_1_0) in
                                            (fun _lh_dummy_7_7 -> 
                                              (1 + (length__d0__d0 t_3_2_9))))))))))))))))))))))
    | `Empty -> 
      (let rec t_3_3_0 = (fun ys_3_1_1 -> 
        ys_3_1_1) in
        (let rec h_2_7_9 = ' ' in
          (fun ys_3_1_2 -> 
            (let rec t_3_3_1 = ((mappend__d2_d5__d0 t_3_3_0) ys_3_1_2) in
              (let rec h_2_8_0 = h_2_7_9 in
                (fun ys_3_1_3 -> 
                  (let rec t_3_3_2 = ((mappend__d2_d4__d0 t_3_3_1) ys_3_1_3) in
                    (let rec h_2_8_1 = h_2_8_0 in
                      (fun ys_3_1_4 -> 
                        (let rec t_3_3_3 = ((mappend__d2_d3__d0 t_3_3_2) ys_3_1_4) in
                          (let rec h_2_8_2 = h_2_8_1 in
                            (fun ys_3_1_5 -> 
                              (let rec t_3_3_4 = ((mappend__d2_d2__d0 t_3_3_3) ys_3_1_5) in
                                (let rec h_2_8_3 = h_2_8_2 in
                                  (fun ys_3_1_6 -> 
                                    (let rec t_3_3_5 = ((mappend__d9__d0 t_3_3_4) ys_3_1_6) in
                                      (let rec h_2_8_4 = h_2_8_3 in
                                        (fun ys_3_1_7 -> 
                                          (let rec t_3_3_6 = ((mappend__d4__d0 t_3_3_5) ys_3_1_7) in
                                            (fun _lh_dummy_7_8 -> 
                                              (1 + (length__d0__d0 t_3_3_6))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d7__d0 _lh_showPiece_arg1_1 =
  (match _lh_showPiece_arg1_1 with
    | `X -> 
      (let rec t_1_2_3 = (fun ys_1_0_9 -> 
        ys_1_0_9) in
        (let rec h_9_7 = 'X' in
          (fun ys_1_1_0 -> 
            (let rec t_1_2_4 = ((mappend__d2_d3__d0 t_1_2_3) ys_1_1_0) in
              (let rec h_9_8 = h_9_7 in
                (fun ys_1_1_1 -> 
                  (let rec t_1_2_5 = ((mappend__d2_d2__d0 t_1_2_4) ys_1_1_1) in
                    (let rec h_9_9 = h_9_8 in
                      (fun ys_1_1_2 -> 
                        (let rec t_1_2_6 = ((mappend__d9__d0 t_1_2_5) ys_1_1_2) in
                          (let rec h_1_0_0 = h_9_9 in
                            (fun ys_1_1_3 -> 
                              (let rec t_1_2_7 = ((mappend__d4__d0 t_1_2_6) ys_1_1_3) in
                                (fun _lh_dummy_3_6 -> 
                                  (1 + (length__d0__d0 t_1_2_7))))))))))))))))
    | `O -> 
      (let rec t_1_2_8 = (fun ys_1_1_4 -> 
        ys_1_1_4) in
        (let rec h_1_0_1 = 'O' in
          (fun ys_1_1_5 -> 
            (let rec t_1_2_9 = ((mappend__d2_d3__d0 t_1_2_8) ys_1_1_5) in
              (let rec h_1_0_2 = h_1_0_1 in
                (fun ys_1_1_6 -> 
                  (let rec t_1_3_0 = ((mappend__d2_d2__d0 t_1_2_9) ys_1_1_6) in
                    (let rec h_1_0_3 = h_1_0_2 in
                      (fun ys_1_1_7 -> 
                        (let rec t_1_3_1 = ((mappend__d9__d0 t_1_3_0) ys_1_1_7) in
                          (let rec h_1_0_4 = h_1_0_3 in
                            (fun ys_1_1_8 -> 
                              (let rec t_1_3_2 = ((mappend__d4__d0 t_1_3_1) ys_1_1_8) in
                                (fun _lh_dummy_3_7 -> 
                                  (1 + (length__d0__d0 t_1_3_2))))))))))))))))
    | `Empty -> 
      (let rec t_1_3_3 = (fun ys_1_1_9 -> 
        ys_1_1_9) in
        (let rec h_1_0_5 = ' ' in
          (fun ys_1_2_0 -> 
            (let rec t_1_3_4 = ((mappend__d2_d3__d0 t_1_3_3) ys_1_2_0) in
              (let rec h_1_0_6 = h_1_0_5 in
                (fun ys_1_2_1 -> 
                  (let rec t_1_3_5 = ((mappend__d2_d2__d0 t_1_3_4) ys_1_2_1) in
                    (let rec h_1_0_7 = h_1_0_6 in
                      (fun ys_1_2_2 -> 
                        (let rec t_1_3_6 = ((mappend__d9__d0 t_1_3_5) ys_1_2_2) in
                          (let rec h_1_0_8 = h_1_0_7 in
                            (fun ys_1_2_3 -> 
                              (let rec t_1_3_7 = ((mappend__d4__d0 t_1_3_6) ys_1_2_3) in
                                (fun _lh_dummy_3_8 -> 
                                  (1 + (length__d0__d0 t_1_3_7))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d8__d0 _lh_showPiece_arg1_5 =
  (match _lh_showPiece_arg1_5 with
    | `X -> 
      (let rec t_2_8_0 = (fun ys_2_6_1 -> 
        ys_2_6_1) in
        (let rec h_2_3_7 = 'X' in
          (fun ys_2_6_2 -> 
            (let rec t_2_8_1 = ((mappend__d9__d0 t_2_8_0) ys_2_6_2) in
              (let rec h_2_3_8 = h_2_3_7 in
                (fun ys_2_6_3 -> 
                  (let rec t_2_8_2 = ((mappend__d4__d0 t_2_8_1) ys_2_6_3) in
                    (fun _lh_dummy_7_0 -> 
                      (1 + (length__d0__d0 t_2_8_2))))))))))
    | `O -> 
      (let rec t_2_8_3 = (fun ys_2_6_4 -> 
        ys_2_6_4) in
        (let rec h_2_3_9 = 'O' in
          (fun ys_2_6_5 -> 
            (let rec t_2_8_4 = ((mappend__d9__d0 t_2_8_3) ys_2_6_5) in
              (let rec h_2_4_0 = h_2_3_9 in
                (fun ys_2_6_6 -> 
                  (let rec t_2_8_5 = ((mappend__d4__d0 t_2_8_4) ys_2_6_6) in
                    (fun _lh_dummy_7_1 -> 
                      (1 + (length__d0__d0 t_2_8_5))))))))))
    | `Empty -> 
      (let rec t_2_8_6 = (fun ys_2_6_7 -> 
        ys_2_6_7) in
        (let rec h_2_4_1 = ' ' in
          (fun ys_2_6_8 -> 
            (let rec t_2_8_7 = ((mappend__d9__d0 t_2_8_6) ys_2_6_8) in
              (let rec h_2_4_2 = h_2_4_1 in
                (fun ys_2_6_9 -> 
                  (let rec t_2_8_8 = ((mappend__d4__d0 t_2_8_7) ys_2_6_9) in
                    (fun _lh_dummy_7_2 -> 
                      (1 + (length__d0__d0 t_2_8_8))))))))))
    | _ -> 
      (failwith "error"))
and showRow__d0__d0 _lh_showRow_arg1_1 =
  (match _lh_showRow_arg1_1 with
    | `LH_C(_lh_showRow_LH_C_0_3, _lh_showRow_LH_C_1_3) -> 
      (match _lh_showRow_LH_C_1_3 with
        | `LH_C(_lh_showRow_LH_C_0_4, _lh_showRow_LH_C_1_4) -> 
          (match _lh_showRow_LH_C_1_4 with
            | `LH_C(_lh_showRow_LH_C_0_5, _lh_showRow_LH_C_1_5) -> 
              (match _lh_showRow_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend__d1_d4__d0 ((mappend__d1_d5__d0 ((mappend__d1_d6__d0 ((mappend__d1_d7__d0 (showPiece__d0__d0 _lh_showRow_LH_C_0_3)) (let rec t_2_2_7 = (fun ys_2_0_8 -> 
                    ys_2_0_8) in
                    (let rec h_1_8_9 = '|' in
                      (fun ys_2_0_9 -> 
                        (let rec t_2_2_8 = ((mappend__d1_d6__d0 t_2_2_7) ys_2_0_9) in
                          (let rec h_1_9_0 = h_1_8_9 in
                            (fun ys_2_1_0 -> 
                              (let rec t_2_2_9 = ((mappend__d1_d5__d0 t_2_2_8) ys_2_1_0) in
                                (let rec h_1_9_1 = h_1_9_0 in
                                  (fun ys_2_1_1 -> 
                                    (let rec t_2_3_0 = ((mappend__d1_d4__d0 t_2_2_9) ys_2_1_1) in
                                      (let rec h_1_9_2 = h_1_9_1 in
                                        (fun ys_2_1_2 -> 
                                          (let rec t_2_3_1 = ((mappend__d1_d3__d0 t_2_3_0) ys_2_1_2) in
                                            (let rec h_1_9_3 = h_1_9_2 in
                                              (fun ys_2_1_3 -> 
                                                (let rec t_2_3_2 = ((mappend__d1_d2__d0 t_2_3_1) ys_2_1_3) in
                                                  (let rec h_1_9_4 = h_1_9_3 in
                                                    (fun ys_2_1_4 -> 
                                                      (let rec t_2_3_3 = ((mappend__d1_d1__d0 t_2_3_2) ys_2_1_4) in
                                                        (let rec h_1_9_5 = h_1_9_4 in
                                                          (fun ys_2_1_5 -> 
                                                            (let rec t_2_3_4 = ((mappend__d1_d0__d0 t_2_3_3) ys_2_1_5) in
                                                              (let rec h_1_9_6 = h_1_9_5 in
                                                                (fun ys_2_1_6 -> 
                                                                  (let rec t_2_3_5 = ((mappend__d9__d0 t_2_3_4) ys_2_1_6) in
                                                                    (let rec h_1_9_7 = h_1_9_6 in
                                                                      (fun ys_2_1_7 -> 
                                                                        (let rec t_2_3_6 = ((mappend__d4__d0 t_2_3_5) ys_2_1_7) in
                                                                          (fun _lh_dummy_6_4 -> 
                                                                            (1 + (length__d0__d0 t_2_3_6))))))))))))))))))))))))))))))))) (showPiece__d1__d0 _lh_showRow_LH_C_0_4))) (let rec t_2_3_7 = (fun ys_2_1_8 -> 
                    ys_2_1_8) in
                    (let rec h_1_9_8 = '|' in
                      (fun ys_2_1_9 -> 
                        (let rec t_2_3_8 = ((mappend__d1_d4__d0 t_2_3_7) ys_2_1_9) in
                          (let rec h_1_9_9 = h_1_9_8 in
                            (fun ys_2_2_0 -> 
                              (let rec t_2_3_9 = ((mappend__d1_d3__d0 t_2_3_8) ys_2_2_0) in
                                (let rec h_2_0_0 = h_1_9_9 in
                                  (fun ys_2_2_1 -> 
                                    (let rec t_2_4_0 = ((mappend__d1_d2__d0 t_2_3_9) ys_2_2_1) in
                                      (let rec h_2_0_1 = h_2_0_0 in
                                        (fun ys_2_2_2 -> 
                                          (let rec t_2_4_1 = ((mappend__d1_d1__d0 t_2_4_0) ys_2_2_2) in
                                            (let rec h_2_0_2 = h_2_0_1 in
                                              (fun ys_2_2_3 -> 
                                                (let rec t_2_4_2 = ((mappend__d1_d0__d0 t_2_4_1) ys_2_2_3) in
                                                  (let rec h_2_0_3 = h_2_0_2 in
                                                    (fun ys_2_2_4 -> 
                                                      (let rec t_2_4_3 = ((mappend__d9__d0 t_2_4_2) ys_2_2_4) in
                                                        (let rec h_2_0_4 = h_2_0_3 in
                                                          (fun ys_2_2_5 -> 
                                                            (let rec t_2_4_4 = ((mappend__d4__d0 t_2_4_3) ys_2_2_5) in
                                                              (fun _lh_dummy_6_5 -> 
                                                                (1 + (length__d0__d0 t_2_4_4))))))))))))))))))))))))))) (showPiece__d2__d0 _lh_showRow_LH_C_0_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showRow__d1__d0 _lh_showRow_arg1_0 =
  (match _lh_showRow_arg1_0 with
    | `LH_C(_lh_showRow_LH_C_0_0, _lh_showRow_LH_C_1_0) -> 
      (match _lh_showRow_LH_C_1_0 with
        | `LH_C(_lh_showRow_LH_C_0_1, _lh_showRow_LH_C_1_1) -> 
          (match _lh_showRow_LH_C_1_1 with
            | `LH_C(_lh_showRow_LH_C_0_2, _lh_showRow_LH_C_1_2) -> 
              (match _lh_showRow_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend__d1_d8__d0 ((mappend__d1_d9__d0 ((mappend__d2_d0__d0 ((mappend__d2_d1__d0 (showPiece__d3__d0 _lh_showRow_LH_C_0_0)) (let rec t_1_6_8 = (fun ys_1_5_4 -> 
                    ys_1_5_4) in
                    (let rec h_1_3_6 = '|' in
                      (fun ys_1_5_5 -> 
                        (let rec t_1_6_9 = ((mappend__d2_d0__d0 t_1_6_8) ys_1_5_5) in
                          (let rec h_1_3_7 = h_1_3_6 in
                            (fun ys_1_5_6 -> 
                              (let rec t_1_7_0 = ((mappend__d1_d9__d0 t_1_6_9) ys_1_5_6) in
                                (let rec h_1_3_8 = h_1_3_7 in
                                  (fun ys_1_5_7 -> 
                                    (let rec t_1_7_1 = ((mappend__d1_d8__d0 t_1_7_0) ys_1_5_7) in
                                      (let rec h_1_3_9 = h_1_3_8 in
                                        (fun ys_1_5_8 -> 
                                          (let rec t_1_7_2 = ((mappend__d1_d1__d0 t_1_7_1) ys_1_5_8) in
                                            (let rec h_1_4_0 = h_1_3_9 in
                                              (fun ys_1_5_9 -> 
                                                (let rec t_1_7_3 = ((mappend__d1_d0__d0 t_1_7_2) ys_1_5_9) in
                                                  (let rec h_1_4_1 = h_1_4_0 in
                                                    (fun ys_1_6_0 -> 
                                                      (let rec t_1_7_4 = ((mappend__d9__d0 t_1_7_3) ys_1_6_0) in
                                                        (let rec h_1_4_2 = h_1_4_1 in
                                                          (fun ys_1_6_1 -> 
                                                            (let rec t_1_7_5 = ((mappend__d4__d0 t_1_7_4) ys_1_6_1) in
                                                              (fun _lh_dummy_4_8 -> 
                                                                (1 + (length__d0__d0 t_1_7_5))))))))))))))))))))))))))) (showPiece__d4__d0 _lh_showRow_LH_C_0_1))) (let rec t_1_7_6 = (fun ys_1_6_2 -> 
                    ys_1_6_2) in
                    (let rec h_1_4_3 = '|' in
                      (fun ys_1_6_3 -> 
                        (let rec t_1_7_7 = ((mappend__d1_d8__d0 t_1_7_6) ys_1_6_3) in
                          (let rec h_1_4_4 = h_1_4_3 in
                            (fun ys_1_6_4 -> 
                              (let rec t_1_7_8 = ((mappend__d1_d1__d0 t_1_7_7) ys_1_6_4) in
                                (let rec h_1_4_5 = h_1_4_4 in
                                  (fun ys_1_6_5 -> 
                                    (let rec t_1_7_9 = ((mappend__d1_d0__d0 t_1_7_8) ys_1_6_5) in
                                      (let rec h_1_4_6 = h_1_4_5 in
                                        (fun ys_1_6_6 -> 
                                          (let rec t_1_8_0 = ((mappend__d9__d0 t_1_7_9) ys_1_6_6) in
                                            (let rec h_1_4_7 = h_1_4_6 in
                                              (fun ys_1_6_7 -> 
                                                (let rec t_1_8_1 = ((mappend__d4__d0 t_1_8_0) ys_1_6_7) in
                                                  (fun _lh_dummy_4_9 -> 
                                                    (1 + (length__d0__d0 t_1_8_1))))))))))))))))))))) (showPiece__d5__d0 _lh_showRow_LH_C_0_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showRow__d2__d0 _lh_showRow_arg1_2 =
  (match _lh_showRow_arg1_2 with
    | `LH_C(_lh_showRow_LH_C_0_6, _lh_showRow_LH_C_1_6) -> 
      (match _lh_showRow_LH_C_1_6 with
        | `LH_C(_lh_showRow_LH_C_0_7, _lh_showRow_LH_C_1_7) -> 
          (match _lh_showRow_LH_C_1_7 with
            | `LH_C(_lh_showRow_LH_C_0_8, _lh_showRow_LH_C_1_8) -> 
              (match _lh_showRow_LH_C_1_8 with
                | `LH_N -> 
                  ((mappend__d2_d2__d0 ((mappend__d2_d3__d0 ((mappend__d2_d4__d0 ((mappend__d2_d5__d0 (showPiece__d6__d0 _lh_showRow_LH_C_0_6)) (let rec t_3_5_1 = (fun ys_3_2_8 -> 
                    ys_3_2_8) in
                    (let rec h_2_9_9 = '|' in
                      (fun ys_3_2_9 -> 
                        (let rec t_3_5_2 = ((mappend__d2_d4__d0 t_3_5_1) ys_3_2_9) in
                          (let rec h_3_0_0 = h_2_9_9 in
                            (fun ys_3_3_0 -> 
                              (let rec t_3_5_3 = ((mappend__d2_d3__d0 t_3_5_2) ys_3_3_0) in
                                (let rec h_3_0_1 = h_3_0_0 in
                                  (fun ys_3_3_1 -> 
                                    (let rec t_3_5_4 = ((mappend__d2_d2__d0 t_3_5_3) ys_3_3_1) in
                                      (let rec h_3_0_2 = h_3_0_1 in
                                        (fun ys_3_3_2 -> 
                                          (let rec t_3_5_5 = ((mappend__d9__d0 t_3_5_4) ys_3_3_2) in
                                            (let rec h_3_0_3 = h_3_0_2 in
                                              (fun ys_3_3_3 -> 
                                                (let rec t_3_5_6 = ((mappend__d4__d0 t_3_5_5) ys_3_3_3) in
                                                  (fun _lh_dummy_8_3 -> 
                                                    (1 + (length__d0__d0 t_3_5_6))))))))))))))))))))) (showPiece__d7__d0 _lh_showRow_LH_C_0_7))) (let rec t_3_5_7 = (fun ys_3_3_4 -> 
                    ys_3_3_4) in
                    (let rec h_3_0_4 = '|' in
                      (fun ys_3_3_5 -> 
                        (let rec t_3_5_8 = ((mappend__d2_d2__d0 t_3_5_7) ys_3_3_5) in
                          (let rec h_3_0_5 = h_3_0_4 in
                            (fun ys_3_3_6 -> 
                              (let rec t_3_5_9 = ((mappend__d9__d0 t_3_5_8) ys_3_3_6) in
                                (let rec h_3_0_6 = h_3_0_5 in
                                  (fun ys_3_3_7 -> 
                                    (let rec t_3_6_0 = ((mappend__d4__d0 t_3_5_9) ys_3_3_7) in
                                      (fun _lh_dummy_8_4 -> 
                                        (1 + (length__d0__d0 t_3_6_0))))))))))))))) (showPiece__d8__d0 _lh_showRow_LH_C_0_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and static__d0__d0 _lh_static_arg1_1 =
  ((interpret__d0__d0 0) ((map__d7__d0 (score__d0__d0 _lh_static_arg1_1)) wins__d0__d0))
and static__d1__d0 _lh_static_arg1_0 =
  ((interpret__d1__d0 0) ((map__d1_d2__d0 (score__d1__d0 _lh_static_arg1_0)) wins__d1__d0))
and static__d2__d0 _lh_static_arg1_2 =
  ((interpret__d2__d0 0) ((map__d1_d4__d0 (score__d2__d0 _lh_static_arg1_2)) wins__d2__d0))
and testBoard__d1__d0 =
  (let rec t_3_8_3 = (let rec t_3_8_4 = (let rec t_3_8_5 = (fun ys_3_6_4 -> 
    ys_3_6_4) in
    (let rec h_3_2_6 = (`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_3_6_5 -> 
        (`LH_C(h_3_2_6, ((mappend__d5__d0 t_3_8_5) ys_3_6_5)))))) in
    (let rec h_3_2_7 = (`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_3_6_6 -> 
        (`LH_C(h_3_2_7, ((mappend__d5__d0 t_3_8_4) ys_3_6_6)))))) in
    (let rec h_3_2_8 = (`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_3_6_7 -> 
        (`LH_C(h_3_2_8, ((mappend__d5__d0 t_3_8_3) ys_3_6_7))))))
and testMinimax_nofib__d0__d0 _lh_testMinimax_nofib_arg1_0 =
  (length__d0__d0 (prog__d0__d0 _lh_testMinimax_nofib_arg1_0))
and wins__d0__d0 =
  (let rec t_3_9_6 = (let rec t_3_9_7 = (let rec t_3_9_8 = (let rec t_3_9_9 = (let rec t_4_0_0 = (let rec t_4_0_1 = (let rec t_4_0_2 = (let rec t_4_0_3 = (fun f_6_8 _lh_interpret_arg1_3_0 -> 
    (`Score(_lh_interpret_arg1_3_0))) in
    (let rec h_3_3_9 = win8__d0__d0 in
      (fun f_6_9 -> 
        (let rec _lh_interpret_LH_C_1_2_5 = ((map__d7__d0 f_6_9) t_4_0_3) in
          (let rec _lh_interpret_LH_C_0_1_6 = (f_6_9 h_3_3_9) in
            (fun _lh_interpret_arg1_3_1 -> 
              ((_lh_interpret_LH_C_0_1_6 _lh_interpret_LH_C_1_2_5) _lh_interpret_arg1_3_1))))))) in
    (let rec h_3_4_0 = win7__d0__d0 in
      (fun f_7_0 -> 
        (let rec _lh_interpret_LH_C_1_2_6 = ((map__d7__d0 f_7_0) t_4_0_2) in
          (let rec _lh_interpret_LH_C_0_1_7 = (f_7_0 h_3_4_0) in
            (fun _lh_interpret_arg1_3_2 -> 
              ((_lh_interpret_LH_C_0_1_7 _lh_interpret_LH_C_1_2_6) _lh_interpret_arg1_3_2))))))) in
    (let rec h_3_4_1 = win6__d0__d0 in
      (fun f_7_1 -> 
        (let rec _lh_interpret_LH_C_1_2_7 = ((map__d7__d0 f_7_1) t_4_0_1) in
          (let rec _lh_interpret_LH_C_0_1_8 = (f_7_1 h_3_4_1) in
            (fun _lh_interpret_arg1_3_3 -> 
              ((_lh_interpret_LH_C_0_1_8 _lh_interpret_LH_C_1_2_7) _lh_interpret_arg1_3_3))))))) in
    (let rec h_3_4_2 = win5__d0__d0 in
      (fun f_7_2 -> 
        (let rec _lh_interpret_LH_C_1_2_8 = ((map__d7__d0 f_7_2) t_4_0_0) in
          (let rec _lh_interpret_LH_C_0_1_9 = (f_7_2 h_3_4_2) in
            (fun _lh_interpret_arg1_3_4 -> 
              ((_lh_interpret_LH_C_0_1_9 _lh_interpret_LH_C_1_2_8) _lh_interpret_arg1_3_4))))))) in
    (let rec h_3_4_3 = win4__d0__d0 in
      (fun f_7_3 -> 
        (let rec _lh_interpret_LH_C_1_2_9 = ((map__d7__d0 f_7_3) t_3_9_9) in
          (let rec _lh_interpret_LH_C_0_2_0 = (f_7_3 h_3_4_3) in
            (fun _lh_interpret_arg1_3_5 -> 
              ((_lh_interpret_LH_C_0_2_0 _lh_interpret_LH_C_1_2_9) _lh_interpret_arg1_3_5))))))) in
    (let rec h_3_4_4 = win3__d0__d0 in
      (fun f_7_4 -> 
        (let rec _lh_interpret_LH_C_1_3_0 = ((map__d7__d0 f_7_4) t_3_9_8) in
          (let rec _lh_interpret_LH_C_0_2_1 = (f_7_4 h_3_4_4) in
            (fun _lh_interpret_arg1_3_6 -> 
              ((_lh_interpret_LH_C_0_2_1 _lh_interpret_LH_C_1_3_0) _lh_interpret_arg1_3_6))))))) in
    (let rec h_3_4_5 = win2__d0__d0 in
      (fun f_7_5 -> 
        (let rec _lh_interpret_LH_C_1_3_1 = ((map__d7__d0 f_7_5) t_3_9_7) in
          (let rec _lh_interpret_LH_C_0_2_2 = (f_7_5 h_3_4_5) in
            (fun _lh_interpret_arg1_3_7 -> 
              ((_lh_interpret_LH_C_0_2_2 _lh_interpret_LH_C_1_3_1) _lh_interpret_arg1_3_7))))))) in
    (let rec h_3_4_6 = win1__d0__d0 in
      (fun f_7_6 -> 
        (let rec _lh_interpret_LH_C_1_3_2 = ((map__d7__d0 f_7_6) t_3_9_6) in
          (let rec _lh_interpret_LH_C_0_2_3 = (f_7_6 h_3_4_6) in
            (fun _lh_interpret_arg1_3_8 -> 
              ((_lh_interpret_LH_C_0_2_3 _lh_interpret_LH_C_1_3_2) _lh_interpret_arg1_3_8)))))))
and wins__d1__d0 =
  (let rec t_3_8_8 = (let rec t_3_8_9 = (let rec t_3_9_0 = (let rec t_3_9_1 = (let rec t_3_9_2 = (let rec t_3_9_3 = (let rec t_3_9_4 = (let rec t_3_9_5 = (fun f_5_9 _lh_interpret_arg1_2_1 -> 
    (`Score(_lh_interpret_arg1_2_1))) in
    (let rec h_3_3_1 = win8__d1__d0 in
      (fun f_6_0 -> 
        (let rec _lh_interpret_LH_C_1_1_7 = ((map__d1_d2__d0 f_6_0) t_3_9_5) in
          (let rec _lh_interpret_LH_C_0_8 = (f_6_0 h_3_3_1) in
            (fun _lh_interpret_arg1_2_2 -> 
              ((_lh_interpret_LH_C_0_8 _lh_interpret_LH_C_1_1_7) _lh_interpret_arg1_2_2))))))) in
    (let rec h_3_3_2 = win7__d1__d0 in
      (fun f_6_1 -> 
        (let rec _lh_interpret_LH_C_1_1_8 = ((map__d1_d2__d0 f_6_1) t_3_9_4) in
          (let rec _lh_interpret_LH_C_0_9 = (f_6_1 h_3_3_2) in
            (fun _lh_interpret_arg1_2_3 -> 
              ((_lh_interpret_LH_C_0_9 _lh_interpret_LH_C_1_1_8) _lh_interpret_arg1_2_3))))))) in
    (let rec h_3_3_3 = win6__d1__d0 in
      (fun f_6_2 -> 
        (let rec _lh_interpret_LH_C_1_1_9 = ((map__d1_d2__d0 f_6_2) t_3_9_3) in
          (let rec _lh_interpret_LH_C_0_1_0 = (f_6_2 h_3_3_3) in
            (fun _lh_interpret_arg1_2_4 -> 
              ((_lh_interpret_LH_C_0_1_0 _lh_interpret_LH_C_1_1_9) _lh_interpret_arg1_2_4))))))) in
    (let rec h_3_3_4 = win5__d1__d0 in
      (fun f_6_3 -> 
        (let rec _lh_interpret_LH_C_1_2_0 = ((map__d1_d2__d0 f_6_3) t_3_9_2) in
          (let rec _lh_interpret_LH_C_0_1_1 = (f_6_3 h_3_3_4) in
            (fun _lh_interpret_arg1_2_5 -> 
              ((_lh_interpret_LH_C_0_1_1 _lh_interpret_LH_C_1_2_0) _lh_interpret_arg1_2_5))))))) in
    (let rec h_3_3_5 = win4__d1__d0 in
      (fun f_6_4 -> 
        (let rec _lh_interpret_LH_C_1_2_1 = ((map__d1_d2__d0 f_6_4) t_3_9_1) in
          (let rec _lh_interpret_LH_C_0_1_2 = (f_6_4 h_3_3_5) in
            (fun _lh_interpret_arg1_2_6 -> 
              ((_lh_interpret_LH_C_0_1_2 _lh_interpret_LH_C_1_2_1) _lh_interpret_arg1_2_6))))))) in
    (let rec h_3_3_6 = win3__d1__d0 in
      (fun f_6_5 -> 
        (let rec _lh_interpret_LH_C_1_2_2 = ((map__d1_d2__d0 f_6_5) t_3_9_0) in
          (let rec _lh_interpret_LH_C_0_1_3 = (f_6_5 h_3_3_6) in
            (fun _lh_interpret_arg1_2_7 -> 
              ((_lh_interpret_LH_C_0_1_3 _lh_interpret_LH_C_1_2_2) _lh_interpret_arg1_2_7))))))) in
    (let rec h_3_3_7 = win2__d1__d0 in
      (fun f_6_6 -> 
        (let rec _lh_interpret_LH_C_1_2_3 = ((map__d1_d2__d0 f_6_6) t_3_8_9) in
          (let rec _lh_interpret_LH_C_0_1_4 = (f_6_6 h_3_3_7) in
            (fun _lh_interpret_arg1_2_8 -> 
              ((_lh_interpret_LH_C_0_1_4 _lh_interpret_LH_C_1_2_3) _lh_interpret_arg1_2_8))))))) in
    (let rec h_3_3_8 = win1__d1__d0 in
      (fun f_6_7 -> 
        (let rec _lh_interpret_LH_C_1_2_4 = ((map__d1_d2__d0 f_6_7) t_3_8_8) in
          (let rec _lh_interpret_LH_C_0_1_5 = (f_6_7 h_3_3_8) in
            (fun _lh_interpret_arg1_2_9 -> 
              ((_lh_interpret_LH_C_0_1_5 _lh_interpret_LH_C_1_2_4) _lh_interpret_arg1_2_9)))))))
and wins__d2__d0 =
  (let rec t_3_4_1 = (let rec t_3_4_2 = (let rec t_3_4_3 = (let rec t_3_4_4 = (let rec t_3_4_5 = (let rec t_3_4_6 = (let rec t_3_4_7 = (let rec t_3_4_8 = (fun f_4_0 _lh_interpret_arg1_1 -> 
    (`Score(_lh_interpret_arg1_1))) in
    (let rec h_2_8_9 = win8__d2__d0 in
      (fun f_4_1 -> 
        (let rec _lh_interpret_LH_C_1_0 = ((map__d1_d4__d0 f_4_1) t_3_4_8) in
          (let rec _lh_interpret_LH_C_0_0 = (f_4_1 h_2_8_9) in
            (fun _lh_interpret_arg1_2 -> 
              ((_lh_interpret_LH_C_0_0 _lh_interpret_LH_C_1_0) _lh_interpret_arg1_2))))))) in
    (let rec h_2_9_0 = win7__d2__d0 in
      (fun f_4_2 -> 
        (let rec _lh_interpret_LH_C_1_1 = ((map__d1_d4__d0 f_4_2) t_3_4_7) in
          (let rec _lh_interpret_LH_C_0_1 = (f_4_2 h_2_9_0) in
            (fun _lh_interpret_arg1_3 -> 
              ((_lh_interpret_LH_C_0_1 _lh_interpret_LH_C_1_1) _lh_interpret_arg1_3))))))) in
    (let rec h_2_9_1 = win6__d2__d0 in
      (fun f_4_3 -> 
        (let rec _lh_interpret_LH_C_1_2 = ((map__d1_d4__d0 f_4_3) t_3_4_6) in
          (let rec _lh_interpret_LH_C_0_2 = (f_4_3 h_2_9_1) in
            (fun _lh_interpret_arg1_4 -> 
              ((_lh_interpret_LH_C_0_2 _lh_interpret_LH_C_1_2) _lh_interpret_arg1_4))))))) in
    (let rec h_2_9_2 = win5__d2__d0 in
      (fun f_4_4 -> 
        (let rec _lh_interpret_LH_C_1_3 = ((map__d1_d4__d0 f_4_4) t_3_4_5) in
          (let rec _lh_interpret_LH_C_0_3 = (f_4_4 h_2_9_2) in
            (fun _lh_interpret_arg1_5 -> 
              ((_lh_interpret_LH_C_0_3 _lh_interpret_LH_C_1_3) _lh_interpret_arg1_5))))))) in
    (let rec h_2_9_3 = win4__d2__d0 in
      (fun f_4_5 -> 
        (let rec _lh_interpret_LH_C_1_4 = ((map__d1_d4__d0 f_4_5) t_3_4_4) in
          (let rec _lh_interpret_LH_C_0_4 = (f_4_5 h_2_9_3) in
            (fun _lh_interpret_arg1_6 -> 
              ((_lh_interpret_LH_C_0_4 _lh_interpret_LH_C_1_4) _lh_interpret_arg1_6))))))) in
    (let rec h_2_9_4 = win3__d2__d0 in
      (fun f_4_6 -> 
        (let rec _lh_interpret_LH_C_1_5 = ((map__d1_d4__d0 f_4_6) t_3_4_3) in
          (let rec _lh_interpret_LH_C_0_5 = (f_4_6 h_2_9_4) in
            (fun _lh_interpret_arg1_7 -> 
              ((_lh_interpret_LH_C_0_5 _lh_interpret_LH_C_1_5) _lh_interpret_arg1_7))))))) in
    (let rec h_2_9_5 = win2__d2__d0 in
      (fun f_4_7 -> 
        (let rec _lh_interpret_LH_C_1_6 = ((map__d1_d4__d0 f_4_7) t_3_4_2) in
          (let rec _lh_interpret_LH_C_0_6 = (f_4_7 h_2_9_5) in
            (fun _lh_interpret_arg1_8 -> 
              ((_lh_interpret_LH_C_0_6 _lh_interpret_LH_C_1_6) _lh_interpret_arg1_8))))))) in
    (let rec h_2_9_6 = win1__d2__d0 in
      (fun f_4_8 -> 
        (let rec _lh_interpret_LH_C_1_7 = ((map__d1_d4__d0 f_4_8) t_3_4_1) in
          (let rec _lh_interpret_LH_C_0_7 = (f_4_8 h_2_9_6) in
            (fun _lh_interpret_arg1_9 -> 
              ((_lh_interpret_LH_C_0_7 _lh_interpret_LH_C_1_7) _lh_interpret_arg1_9)))))));;

(* lumberhack_pop_out *)
let rec and__d0__d0__d0 _lh_and_arg1_2 =
  (_lh_and_arg1_2 99);;
let rec and__d0__d0__d1 _lh_and_arg1_1 =
  (_lh_and_arg1_1 99);;
let rec concat__d0__d0__d0 lss_9 =
  (lss_9 99);;
let rec concat__d0__d0__d1 lss_1_1 =
  (lss_1_1 99);;
let rec concat__d1__d0__d0 lss_8 =
  (lss_8 99);;
let rec concat__d1__d0__d1 lss_5 =
  (lss_5 99);;
let rec concat__d3__d0__d0 lss_6 =
  (lss_6 99);;
let rec concat__d3__d0__d1 lss_1_3 =
  (lss_1_3 99);;
let rec concat__d4__d0__d0 lss_1_0 =
  (lss_1_0 99);;
let rec concat__d4__d0__d1 lss_7 =
  (lss_7 99);;
let rec cropTree__d0__d0__d0 _lh_cropTree_arg1_2 =
  (_lh_cropTree_arg1_2 99);;
let rec cropTree__d0__d0__d1 _lh_cropTree_arg1_1 =
  (_lh_cropTree_arg1_1 99);;
let rec empty'__d0__d0__d0 _lh_empty'_arg1_9 _lh_empty'_arg2_9 =
  (match _lh_empty'_arg1_9 with
    | 1 -> 
      (match _lh_empty'_arg2_9 with
        | `LH_C(_lh_empty'_LH_C_0_8_1, _lh_empty'_LH_C_1_8_1) -> 
          (match _lh_empty'_LH_C_0_8_1 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_8_1 with
                | `LH_C(_lh_empty'_LH_C_0_8_2, _lh_empty'_LH_C_1_8_2) -> 
                  (match _lh_empty'_LH_C_1_8_2 with
                    | `LH_C(_lh_empty'_LH_C_0_8_3, _lh_empty'_LH_C_1_8_3) -> 
                      (match _lh_empty'_LH_C_1_8_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_9 with
        | `LH_C(_lh_empty'_LH_C_0_8_4, _lh_empty'_LH_C_1_8_4) -> 
          (match _lh_empty'_LH_C_1_8_4 with
            | `LH_C(_lh_empty'_LH_C_0_8_5, _lh_empty'_LH_C_1_8_5) -> 
              (match _lh_empty'_LH_C_0_8_5 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_8_5 with
                    | `LH_C(_lh_empty'_LH_C_0_8_6, _lh_empty'_LH_C_1_8_6) -> 
                      (match _lh_empty'_LH_C_1_8_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_9 with
        | `LH_C(_lh_empty'_LH_C_0_8_7, _lh_empty'_LH_C_1_8_7) -> 
          (match _lh_empty'_LH_C_1_8_7 with
            | `LH_C(_lh_empty'_LH_C_0_8_8, _lh_empty'_LH_C_1_8_8) -> 
              (match _lh_empty'_LH_C_1_8_8 with
                | `LH_C(_lh_empty'_LH_C_0_8_9, _lh_empty'_LH_C_1_8_9) -> 
                  (match _lh_empty'_LH_C_0_8_9 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_8_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d1__d0__d0 _lh_empty'_arg1_1_0 _lh_empty'_arg2_1_0 =
  (match _lh_empty'_arg1_1_0 with
    | 1 -> 
      (match _lh_empty'_arg2_1_0 with
        | `LH_C(_lh_empty'_LH_C_0_9_0, _lh_empty'_LH_C_1_9_0) -> 
          (match _lh_empty'_LH_C_0_9_0 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_9_0 with
                | `LH_C(_lh_empty'_LH_C_0_9_1, _lh_empty'_LH_C_1_9_1) -> 
                  (match _lh_empty'_LH_C_1_9_1 with
                    | `LH_C(_lh_empty'_LH_C_0_9_2, _lh_empty'_LH_C_1_9_2) -> 
                      (match _lh_empty'_LH_C_1_9_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_0 with
        | `LH_C(_lh_empty'_LH_C_0_9_3, _lh_empty'_LH_C_1_9_3) -> 
          (match _lh_empty'_LH_C_1_9_3 with
            | `LH_C(_lh_empty'_LH_C_0_9_4, _lh_empty'_LH_C_1_9_4) -> 
              (match _lh_empty'_LH_C_0_9_4 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_9_4 with
                    | `LH_C(_lh_empty'_LH_C_0_9_5, _lh_empty'_LH_C_1_9_5) -> 
                      (match _lh_empty'_LH_C_1_9_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_0 with
        | `LH_C(_lh_empty'_LH_C_0_9_6, _lh_empty'_LH_C_1_9_6) -> 
          (match _lh_empty'_LH_C_1_9_6 with
            | `LH_C(_lh_empty'_LH_C_0_9_7, _lh_empty'_LH_C_1_9_7) -> 
              (match _lh_empty'_LH_C_1_9_7 with
                | `LH_C(_lh_empty'_LH_C_0_9_8, _lh_empty'_LH_C_1_9_8) -> 
                  (match _lh_empty'_LH_C_0_9_8 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_9_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d2__d0__d0 _lh_empty'_arg1_1_7 _lh_empty'_arg2_1_7 =
  (match _lh_empty'_arg1_1_7 with
    | 1 -> 
      (match _lh_empty'_arg2_1_7 with
        | `LH_C(_lh_empty'_LH_C_0_1_5_3, _lh_empty'_LH_C_1_1_5_3) -> 
          (match _lh_empty'_LH_C_0_1_5_3 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_5_3 with
                | `LH_C(_lh_empty'_LH_C_0_1_5_4, _lh_empty'_LH_C_1_1_5_4) -> 
                  (match _lh_empty'_LH_C_1_1_5_4 with
                    | `LH_C(_lh_empty'_LH_C_0_1_5_5, _lh_empty'_LH_C_1_1_5_5) -> 
                      (match _lh_empty'_LH_C_1_1_5_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_7 with
        | `LH_C(_lh_empty'_LH_C_0_1_5_6, _lh_empty'_LH_C_1_1_5_6) -> 
          (match _lh_empty'_LH_C_1_1_5_6 with
            | `LH_C(_lh_empty'_LH_C_0_1_5_7, _lh_empty'_LH_C_1_1_5_7) -> 
              (match _lh_empty'_LH_C_0_1_5_7 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_5_7 with
                    | `LH_C(_lh_empty'_LH_C_0_1_5_8, _lh_empty'_LH_C_1_1_5_8) -> 
                      (match _lh_empty'_LH_C_1_1_5_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_7 with
        | `LH_C(_lh_empty'_LH_C_0_1_5_9, _lh_empty'_LH_C_1_1_5_9) -> 
          (match _lh_empty'_LH_C_1_1_5_9 with
            | `LH_C(_lh_empty'_LH_C_0_1_6_0, _lh_empty'_LH_C_1_1_6_0) -> 
              (match _lh_empty'_LH_C_1_1_6_0 with
                | `LH_C(_lh_empty'_LH_C_0_1_6_1, _lh_empty'_LH_C_1_1_6_1) -> 
                  (match _lh_empty'_LH_C_0_1_6_1 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_6_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d3__d0__d0 _lh_empty'_arg1_1_3 _lh_empty'_arg2_1_3 =
  (match _lh_empty'_arg1_1_3 with
    | 1 -> 
      (match _lh_empty'_arg2_1_3 with
        | `LH_C(_lh_empty'_LH_C_0_1_1_7, _lh_empty'_LH_C_1_1_1_7) -> 
          (match _lh_empty'_LH_C_0_1_1_7 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_1_7 with
                | `LH_C(_lh_empty'_LH_C_0_1_1_8, _lh_empty'_LH_C_1_1_1_8) -> 
                  (match _lh_empty'_LH_C_1_1_1_8 with
                    | `LH_C(_lh_empty'_LH_C_0_1_1_9, _lh_empty'_LH_C_1_1_1_9) -> 
                      (match _lh_empty'_LH_C_1_1_1_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_3 with
        | `LH_C(_lh_empty'_LH_C_0_1_2_0, _lh_empty'_LH_C_1_1_2_0) -> 
          (match _lh_empty'_LH_C_1_1_2_0 with
            | `LH_C(_lh_empty'_LH_C_0_1_2_1, _lh_empty'_LH_C_1_1_2_1) -> 
              (match _lh_empty'_LH_C_0_1_2_1 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_2_1 with
                    | `LH_C(_lh_empty'_LH_C_0_1_2_2, _lh_empty'_LH_C_1_1_2_2) -> 
                      (match _lh_empty'_LH_C_1_1_2_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_3 with
        | `LH_C(_lh_empty'_LH_C_0_1_2_3, _lh_empty'_LH_C_1_1_2_3) -> 
          (match _lh_empty'_LH_C_1_1_2_3 with
            | `LH_C(_lh_empty'_LH_C_0_1_2_4, _lh_empty'_LH_C_1_1_2_4) -> 
              (match _lh_empty'_LH_C_1_1_2_4 with
                | `LH_C(_lh_empty'_LH_C_0_1_2_5, _lh_empty'_LH_C_1_1_2_5) -> 
                  (match _lh_empty'_LH_C_0_1_2_5 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_2_5 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d4__d0__d0 _lh_empty'_arg1_1_4 _lh_empty'_arg2_1_4 =
  (match _lh_empty'_arg1_1_4 with
    | 1 -> 
      (match _lh_empty'_arg2_1_4 with
        | `LH_C(_lh_empty'_LH_C_0_1_2_6, _lh_empty'_LH_C_1_1_2_6) -> 
          (match _lh_empty'_LH_C_0_1_2_6 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_2_6 with
                | `LH_C(_lh_empty'_LH_C_0_1_2_7, _lh_empty'_LH_C_1_1_2_7) -> 
                  (match _lh_empty'_LH_C_1_1_2_7 with
                    | `LH_C(_lh_empty'_LH_C_0_1_2_8, _lh_empty'_LH_C_1_1_2_8) -> 
                      (match _lh_empty'_LH_C_1_1_2_8 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_4 with
        | `LH_C(_lh_empty'_LH_C_0_1_2_9, _lh_empty'_LH_C_1_1_2_9) -> 
          (match _lh_empty'_LH_C_1_1_2_9 with
            | `LH_C(_lh_empty'_LH_C_0_1_3_0, _lh_empty'_LH_C_1_1_3_0) -> 
              (match _lh_empty'_LH_C_0_1_3_0 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_3_0 with
                    | `LH_C(_lh_empty'_LH_C_0_1_3_1, _lh_empty'_LH_C_1_1_3_1) -> 
                      (match _lh_empty'_LH_C_1_1_3_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_4 with
        | `LH_C(_lh_empty'_LH_C_0_1_3_2, _lh_empty'_LH_C_1_1_3_2) -> 
          (match _lh_empty'_LH_C_1_1_3_2 with
            | `LH_C(_lh_empty'_LH_C_0_1_3_3, _lh_empty'_LH_C_1_1_3_3) -> 
              (match _lh_empty'_LH_C_1_1_3_3 with
                | `LH_C(_lh_empty'_LH_C_0_1_3_4, _lh_empty'_LH_C_1_1_3_4) -> 
                  (match _lh_empty'_LH_C_0_1_3_4 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_3_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d5__d0__d0 _lh_empty'_arg1_1_6 _lh_empty'_arg2_1_6 =
  (match _lh_empty'_arg1_1_6 with
    | 1 -> 
      (match _lh_empty'_arg2_1_6 with
        | `LH_C(_lh_empty'_LH_C_0_1_4_4, _lh_empty'_LH_C_1_1_4_4) -> 
          (match _lh_empty'_LH_C_0_1_4_4 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_4_4 with
                | `LH_C(_lh_empty'_LH_C_0_1_4_5, _lh_empty'_LH_C_1_1_4_5) -> 
                  (match _lh_empty'_LH_C_1_1_4_5 with
                    | `LH_C(_lh_empty'_LH_C_0_1_4_6, _lh_empty'_LH_C_1_1_4_6) -> 
                      (match _lh_empty'_LH_C_1_1_4_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_6 with
        | `LH_C(_lh_empty'_LH_C_0_1_4_7, _lh_empty'_LH_C_1_1_4_7) -> 
          (match _lh_empty'_LH_C_1_1_4_7 with
            | `LH_C(_lh_empty'_LH_C_0_1_4_8, _lh_empty'_LH_C_1_1_4_8) -> 
              (match _lh_empty'_LH_C_0_1_4_8 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_4_8 with
                    | `LH_C(_lh_empty'_LH_C_0_1_4_9, _lh_empty'_LH_C_1_1_4_9) -> 
                      (match _lh_empty'_LH_C_1_1_4_9 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_6 with
        | `LH_C(_lh_empty'_LH_C_0_1_5_0, _lh_empty'_LH_C_1_1_5_0) -> 
          (match _lh_empty'_LH_C_1_1_5_0 with
            | `LH_C(_lh_empty'_LH_C_0_1_5_1, _lh_empty'_LH_C_1_1_5_1) -> 
              (match _lh_empty'_LH_C_1_1_5_1 with
                | `LH_C(_lh_empty'_LH_C_0_1_5_2, _lh_empty'_LH_C_1_1_5_2) -> 
                  (match _lh_empty'_LH_C_0_1_5_2 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_5_2 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d6__d0__d0 _lh_empty'_arg1_1_5 _lh_empty'_arg2_1_5 =
  (match _lh_empty'_arg1_1_5 with
    | 1 -> 
      (match _lh_empty'_arg2_1_5 with
        | `LH_C(_lh_empty'_LH_C_0_1_3_5, _lh_empty'_LH_C_1_1_3_5) -> 
          (match _lh_empty'_LH_C_0_1_3_5 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_3_5 with
                | `LH_C(_lh_empty'_LH_C_0_1_3_6, _lh_empty'_LH_C_1_1_3_6) -> 
                  (match _lh_empty'_LH_C_1_1_3_6 with
                    | `LH_C(_lh_empty'_LH_C_0_1_3_7, _lh_empty'_LH_C_1_1_3_7) -> 
                      (match _lh_empty'_LH_C_1_1_3_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_5 with
        | `LH_C(_lh_empty'_LH_C_0_1_3_8, _lh_empty'_LH_C_1_1_3_8) -> 
          (match _lh_empty'_LH_C_1_1_3_8 with
            | `LH_C(_lh_empty'_LH_C_0_1_3_9, _lh_empty'_LH_C_1_1_3_9) -> 
              (match _lh_empty'_LH_C_0_1_3_9 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_3_9 with
                    | `LH_C(_lh_empty'_LH_C_0_1_4_0, _lh_empty'_LH_C_1_1_4_0) -> 
                      (match _lh_empty'_LH_C_1_1_4_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_5 with
        | `LH_C(_lh_empty'_LH_C_0_1_4_1, _lh_empty'_LH_C_1_1_4_1) -> 
          (match _lh_empty'_LH_C_1_1_4_1 with
            | `LH_C(_lh_empty'_LH_C_0_1_4_2, _lh_empty'_LH_C_1_1_4_2) -> 
              (match _lh_empty'_LH_C_1_1_4_2 with
                | `LH_C(_lh_empty'_LH_C_0_1_4_3, _lh_empty'_LH_C_1_1_4_3) -> 
                  (match _lh_empty'_LH_C_0_1_4_3 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_4_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d7__d0__d0 _lh_empty'_arg1_1_1 _lh_empty'_arg2_1_1 =
  (match _lh_empty'_arg1_1_1 with
    | 1 -> 
      (match _lh_empty'_arg2_1_1 with
        | `LH_C(_lh_empty'_LH_C_0_9_9, _lh_empty'_LH_C_1_9_9) -> 
          (match _lh_empty'_LH_C_0_9_9 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_9_9 with
                | `LH_C(_lh_empty'_LH_C_0_1_0_0, _lh_empty'_LH_C_1_1_0_0) -> 
                  (match _lh_empty'_LH_C_1_1_0_0 with
                    | `LH_C(_lh_empty'_LH_C_0_1_0_1, _lh_empty'_LH_C_1_1_0_1) -> 
                      (match _lh_empty'_LH_C_1_1_0_1 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_1 with
        | `LH_C(_lh_empty'_LH_C_0_1_0_2, _lh_empty'_LH_C_1_1_0_2) -> 
          (match _lh_empty'_LH_C_1_1_0_2 with
            | `LH_C(_lh_empty'_LH_C_0_1_0_3, _lh_empty'_LH_C_1_1_0_3) -> 
              (match _lh_empty'_LH_C_0_1_0_3 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_0_3 with
                    | `LH_C(_lh_empty'_LH_C_0_1_0_4, _lh_empty'_LH_C_1_1_0_4) -> 
                      (match _lh_empty'_LH_C_1_1_0_4 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_1 with
        | `LH_C(_lh_empty'_LH_C_0_1_0_5, _lh_empty'_LH_C_1_1_0_5) -> 
          (match _lh_empty'_LH_C_1_1_0_5 with
            | `LH_C(_lh_empty'_LH_C_0_1_0_6, _lh_empty'_LH_C_1_1_0_6) -> 
              (match _lh_empty'_LH_C_1_1_0_6 with
                | `LH_C(_lh_empty'_LH_C_0_1_0_7, _lh_empty'_LH_C_1_1_0_7) -> 
                  (match _lh_empty'_LH_C_0_1_0_7 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_0_7 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec empty'__d8__d0__d0 _lh_empty'_arg1_1_2 _lh_empty'_arg2_1_2 =
  (match _lh_empty'_arg1_1_2 with
    | 1 -> 
      (match _lh_empty'_arg2_1_2 with
        | `LH_C(_lh_empty'_LH_C_0_1_0_8, _lh_empty'_LH_C_1_1_0_8) -> 
          (match _lh_empty'_LH_C_0_1_0_8 with
            | `Empty -> 
              (match _lh_empty'_LH_C_1_1_0_8 with
                | `LH_C(_lh_empty'_LH_C_0_1_0_9, _lh_empty'_LH_C_1_1_0_9) -> 
                  (match _lh_empty'_LH_C_1_1_0_9 with
                    | `LH_C(_lh_empty'_LH_C_0_1_1_0, _lh_empty'_LH_C_1_1_1_0) -> 
                      (match _lh_empty'_LH_C_1_1_1_0 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 2 -> 
      (match _lh_empty'_arg2_1_2 with
        | `LH_C(_lh_empty'_LH_C_0_1_1_1, _lh_empty'_LH_C_1_1_1_1) -> 
          (match _lh_empty'_LH_C_1_1_1_1 with
            | `LH_C(_lh_empty'_LH_C_0_1_1_2, _lh_empty'_LH_C_1_1_1_2) -> 
              (match _lh_empty'_LH_C_0_1_1_2 with
                | `Empty -> 
                  (match _lh_empty'_LH_C_1_1_1_2 with
                    | `LH_C(_lh_empty'_LH_C_0_1_1_3, _lh_empty'_LH_C_1_1_1_3) -> 
                      (match _lh_empty'_LH_C_1_1_1_3 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | 3 -> 
      (match _lh_empty'_arg2_1_2 with
        | `LH_C(_lh_empty'_LH_C_0_1_1_4, _lh_empty'_LH_C_1_1_1_4) -> 
          (match _lh_empty'_LH_C_1_1_1_4 with
            | `LH_C(_lh_empty'_LH_C_0_1_1_5, _lh_empty'_LH_C_1_1_1_5) -> 
              (match _lh_empty'_LH_C_1_1_1_5 with
                | `LH_C(_lh_empty'_LH_C_0_1_1_6, _lh_empty'_LH_C_1_1_1_6) -> 
                  (match _lh_empty'_LH_C_0_1_1_6 with
                    | `Empty -> 
                      (match _lh_empty'_LH_C_1_1_1_6 with
                        | `LH_N -> 
                          true
                        | _ -> 
                          false)
                    | _ -> 
                      false)
                | _ -> 
                  false)
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      false);;
let rec foldr__d0__d0__d0 f_1_0_7 i_4 ls_6_0 =
  ((ls_6_0 f_1_0_7) i_4);;
let rec foldr__d0__d0__d1 f_1_1_1 i_5 ls_6_3 =
  ((ls_6_3 f_1_1_1) i_5);;
let rec foldr__d0__d0__d2 f_1_3_6 i_1_0 ls_1_0_4 =
  ((ls_1_0_4 f_1_3_6) i_1_0);;
let rec foldr__d0__d0__d3 f_1_1_6 i_6 ls_6_9 =
  ((ls_6_9 f_1_1_6) i_6);;
let rec foldr__d0__d0__d4 f_8_2 i_3 ls_3_7 =
  ((ls_3_7 f_8_2) i_3);;
let rec foldr__d0__d0__d5 f_1_2_4 i_7 ls_7_9 =
  ((ls_7_9 f_1_2_4) i_7);;
let rec insert__d0__d0__d0 _lh_insert_arg1_1_4 _lh_insert_arg2_1_4 _lh_insert_arg3_1_4 =
  (match _lh_insert_arg2_1_4 with
    | `LH_C(_lh_insert_LH_C_0_4_2, _lh_insert_LH_C_1_4_2) -> 
      (match _lh_insert_LH_C_1_4_2 with
        | `LH_C(_lh_insert_LH_C_0_4_3, _lh_insert_LH_C_1_4_3) -> 
          (match _lh_insert_LH_C_1_4_3 with
            | `LH_C(_lh_insert_LH_C_0_4_4, _lh_insert_LH_C_1_4_4) -> 
              (match _lh_insert_LH_C_1_4_4 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_4 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_4, (`LH_C(_lh_insert_LH_C_0_4_3, (`LH_C(_lh_insert_LH_C_0_4_4, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_4_2, (`LH_C(_lh_insert_arg1_1_4, (`LH_C(_lh_insert_LH_C_0_4_4, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_4_2, (`LH_C(_lh_insert_LH_C_0_4_3, (`LH_C(_lh_insert_arg1_1_4, (`LH_N)))))))
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
let rec insert__d1__d0__d0 _lh_insert_arg1_1_1 _lh_insert_arg2_1_1 _lh_insert_arg3_1_1 =
  (match _lh_insert_arg2_1_1 with
    | `LH_C(_lh_insert_LH_C_0_3_3, _lh_insert_LH_C_1_3_3) -> 
      (match _lh_insert_LH_C_1_3_3 with
        | `LH_C(_lh_insert_LH_C_0_3_4, _lh_insert_LH_C_1_3_4) -> 
          (match _lh_insert_LH_C_1_3_4 with
            | `LH_C(_lh_insert_LH_C_0_3_5, _lh_insert_LH_C_1_3_5) -> 
              (match _lh_insert_LH_C_1_3_5 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_1 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_1, (`LH_C(_lh_insert_LH_C_0_3_4, (`LH_C(_lh_insert_LH_C_0_3_5, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_3, (`LH_C(_lh_insert_arg1_1_1, (`LH_C(_lh_insert_LH_C_0_3_5, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_3, (`LH_C(_lh_insert_LH_C_0_3_4, (`LH_C(_lh_insert_arg1_1_1, (`LH_N)))))))
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
let rec insert__d2__d0__d0 _lh_insert_arg1_1_6 _lh_insert_arg2_1_6 _lh_insert_arg3_1_6 =
  (match _lh_insert_arg2_1_6 with
    | `LH_C(_lh_insert_LH_C_0_4_8, _lh_insert_LH_C_1_4_8) -> 
      (match _lh_insert_LH_C_1_4_8 with
        | `LH_C(_lh_insert_LH_C_0_4_9, _lh_insert_LH_C_1_4_9) -> 
          (match _lh_insert_LH_C_1_4_9 with
            | `LH_C(_lh_insert_LH_C_0_5_0, _lh_insert_LH_C_1_5_0) -> 
              (match _lh_insert_LH_C_1_5_0 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_6 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_6, (`LH_C(_lh_insert_LH_C_0_4_9, (`LH_C(_lh_insert_LH_C_0_5_0, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_4_8, (`LH_C(_lh_insert_arg1_1_6, (`LH_C(_lh_insert_LH_C_0_5_0, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_4_8, (`LH_C(_lh_insert_LH_C_0_4_9, (`LH_C(_lh_insert_arg1_1_6, (`LH_N)))))))
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
let rec insert__d3__d0__d0 _lh_insert_arg1_1_2 _lh_insert_arg2_1_2 _lh_insert_arg3_1_2 =
  (match _lh_insert_arg2_1_2 with
    | `LH_C(_lh_insert_LH_C_0_3_6, _lh_insert_LH_C_1_3_6) -> 
      (match _lh_insert_LH_C_1_3_6 with
        | `LH_C(_lh_insert_LH_C_0_3_7, _lh_insert_LH_C_1_3_7) -> 
          (match _lh_insert_LH_C_1_3_7 with
            | `LH_C(_lh_insert_LH_C_0_3_8, _lh_insert_LH_C_1_3_8) -> 
              (match _lh_insert_LH_C_1_3_8 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_2 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_2, (`LH_C(_lh_insert_LH_C_0_3_7, (`LH_C(_lh_insert_LH_C_0_3_8, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_6, (`LH_C(_lh_insert_arg1_1_2, (`LH_C(_lh_insert_LH_C_0_3_8, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_6, (`LH_C(_lh_insert_LH_C_0_3_7, (`LH_C(_lh_insert_arg1_1_2, (`LH_N)))))))
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
let rec insert__d4__d0__d0 _lh_insert_arg1_1_3 _lh_insert_arg2_1_3 _lh_insert_arg3_1_3 =
  (match _lh_insert_arg2_1_3 with
    | `LH_C(_lh_insert_LH_C_0_3_9, _lh_insert_LH_C_1_3_9) -> 
      (match _lh_insert_LH_C_1_3_9 with
        | `LH_C(_lh_insert_LH_C_0_4_0, _lh_insert_LH_C_1_4_0) -> 
          (match _lh_insert_LH_C_1_4_0 with
            | `LH_C(_lh_insert_LH_C_0_4_1, _lh_insert_LH_C_1_4_1) -> 
              (match _lh_insert_LH_C_1_4_1 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_3 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_3, (`LH_C(_lh_insert_LH_C_0_4_0, (`LH_C(_lh_insert_LH_C_0_4_1, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_9, (`LH_C(_lh_insert_arg1_1_3, (`LH_C(_lh_insert_LH_C_0_4_1, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_9, (`LH_C(_lh_insert_LH_C_0_4_0, (`LH_C(_lh_insert_arg1_1_3, (`LH_N)))))))
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
let rec insert__d5__d0__d0 _lh_insert_arg1_1_0 _lh_insert_arg2_1_0 _lh_insert_arg3_1_0 =
  (match _lh_insert_arg2_1_0 with
    | `LH_C(_lh_insert_LH_C_0_3_0, _lh_insert_LH_C_1_3_0) -> 
      (match _lh_insert_LH_C_1_3_0 with
        | `LH_C(_lh_insert_LH_C_0_3_1, _lh_insert_LH_C_1_3_1) -> 
          (match _lh_insert_LH_C_1_3_1 with
            | `LH_C(_lh_insert_LH_C_0_3_2, _lh_insert_LH_C_1_3_2) -> 
              (match _lh_insert_LH_C_1_3_2 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_0 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_0, (`LH_C(_lh_insert_LH_C_0_3_1, (`LH_C(_lh_insert_LH_C_0_3_2, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_0, (`LH_C(_lh_insert_arg1_1_0, (`LH_C(_lh_insert_LH_C_0_3_2, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_3_0, (`LH_C(_lh_insert_LH_C_0_3_1, (`LH_C(_lh_insert_arg1_1_0, (`LH_N)))))))
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
let rec insert__d6__d0__d0 _lh_insert_arg1_1_7 _lh_insert_arg2_1_7 _lh_insert_arg3_1_7 =
  (match _lh_insert_arg2_1_7 with
    | `LH_C(_lh_insert_LH_C_0_5_1, _lh_insert_LH_C_1_5_1) -> 
      (match _lh_insert_LH_C_1_5_1 with
        | `LH_C(_lh_insert_LH_C_0_5_2, _lh_insert_LH_C_1_5_2) -> 
          (match _lh_insert_LH_C_1_5_2 with
            | `LH_C(_lh_insert_LH_C_0_5_3, _lh_insert_LH_C_1_5_3) -> 
              (match _lh_insert_LH_C_1_5_3 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_7 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_7, (`LH_C(_lh_insert_LH_C_0_5_2, (`LH_C(_lh_insert_LH_C_0_5_3, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_5_1, (`LH_C(_lh_insert_arg1_1_7, (`LH_C(_lh_insert_LH_C_0_5_3, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_5_1, (`LH_C(_lh_insert_LH_C_0_5_2, (`LH_C(_lh_insert_arg1_1_7, (`LH_N)))))))
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
let rec insert__d7__d0__d0 _lh_insert_arg1_1_5 _lh_insert_arg2_1_5 _lh_insert_arg3_1_5 =
  (match _lh_insert_arg2_1_5 with
    | `LH_C(_lh_insert_LH_C_0_4_5, _lh_insert_LH_C_1_4_5) -> 
      (match _lh_insert_LH_C_1_4_5 with
        | `LH_C(_lh_insert_LH_C_0_4_6, _lh_insert_LH_C_1_4_6) -> 
          (match _lh_insert_LH_C_1_4_6 with
            | `LH_C(_lh_insert_LH_C_0_4_7, _lh_insert_LH_C_1_4_7) -> 
              (match _lh_insert_LH_C_1_4_7 with
                | `LH_N -> 
                  (match _lh_insert_arg3_1_5 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_1_5, (`LH_C(_lh_insert_LH_C_0_4_6, (`LH_C(_lh_insert_LH_C_0_4_7, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_4_5, (`LH_C(_lh_insert_arg1_1_5, (`LH_C(_lh_insert_LH_C_0_4_7, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_4_5, (`LH_C(_lh_insert_LH_C_0_4_6, (`LH_C(_lh_insert_arg1_1_5, (`LH_N)))))))
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
let rec insert__d8__d0__d0 _lh_insert_arg1_9 _lh_insert_arg2_9 _lh_insert_arg3_9 =
  (match _lh_insert_arg2_9 with
    | `LH_C(_lh_insert_LH_C_0_2_7, _lh_insert_LH_C_1_2_7) -> 
      (match _lh_insert_LH_C_1_2_7 with
        | `LH_C(_lh_insert_LH_C_0_2_8, _lh_insert_LH_C_1_2_8) -> 
          (match _lh_insert_LH_C_1_2_8 with
            | `LH_C(_lh_insert_LH_C_0_2_9, _lh_insert_LH_C_1_2_9) -> 
              (match _lh_insert_LH_C_1_2_9 with
                | `LH_N -> 
                  (match _lh_insert_arg3_9 with
                    | 1 -> 
                      (`LH_C(_lh_insert_arg1_9, (`LH_C(_lh_insert_LH_C_0_2_8, (`LH_C(_lh_insert_LH_C_0_2_9, (`LH_N)))))))
                    | 2 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_7, (`LH_C(_lh_insert_arg1_9, (`LH_C(_lh_insert_LH_C_0_2_9, (`LH_N)))))))
                    | 3 -> 
                      (`LH_C(_lh_insert_LH_C_0_2_7, (`LH_C(_lh_insert_LH_C_0_2_8, (`LH_C(_lh_insert_arg1_9, (`LH_N)))))))
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
let rec interpret__d0__d0__d0 _lh_interpret_arg1_4_0 _lh_interpret_arg2_4 =
  (_lh_interpret_arg2_4 _lh_interpret_arg1_4_0);;
let rec interpret__d0__d0__d1 _lh_interpret_arg1_3_9 _lh_interpret_arg2_3 =
  (_lh_interpret_arg2_3 _lh_interpret_arg1_3_9);;
let rec interpret__d1__d0__d0 _lh_interpret_arg1_4_5 _lh_interpret_arg2_6 =
  (_lh_interpret_arg2_6 _lh_interpret_arg1_4_5);;
let rec interpret__d1__d0__d1 _lh_interpret_arg1_4_1 _lh_interpret_arg2_5 =
  (_lh_interpret_arg2_5 _lh_interpret_arg1_4_1);;
let rec interpret__d2__d0__d0 _lh_interpret_arg1_5_9 _lh_interpret_arg2_8 =
  (_lh_interpret_arg2_8 _lh_interpret_arg1_5_9);;
let rec interpret__d2__d0__d1 _lh_interpret_arg1_4_6 _lh_interpret_arg2_7 =
  (_lh_interpret_arg2_7 _lh_interpret_arg1_4_6);;
let rec length__d0__d0__d0 ls_1_2_0 =
  (ls_1_2_0 99);;
let rec length__d0__d0__d1 ls_9_0 =
  (ls_9_0 99);;
let rec length__d0__d0__d1_d0 ls_1_2_6 =
  (ls_1_2_6 99);;
let rec length__d0__d0__d1_d1 ls_1_0_0 =
  (ls_1_0_0 99);;
let rec length__d0__d0__d1_d2 ls_9_8 =
  (ls_9_8 99);;
let rec length__d0__d0__d1_d3 ls_1_1_8 =
  (ls_1_1_8 99);;
let rec length__d0__d0__d1_d4 ls_9_2 =
  (ls_9_2 99);;
let rec length__d0__d0__d1_d5 ls_1_1_2 =
  (ls_1_1_2 99);;
let rec length__d0__d0__d1_d6 ls_1_5_2 =
  (ls_1_5_2 99);;
let rec length__d0__d0__d1_d7 ls_3_5 =
  (ls_3_5 99);;
let rec length__d0__d0__d1_d8 ls_1_4_5 =
  (ls_1_4_5 99);;
let rec length__d0__d0__d1_d9 ls_1_3_4 =
  (ls_1_3_4 99);;
let rec length__d0__d0__d2 ls_8_4 =
  (ls_8_4 99);;
let rec length__d0__d0__d2_d0 ls_1_2_7 =
  (ls_1_2_7 99);;
let rec length__d0__d0__d2_d1 ls_8_1 =
  (ls_8_1 99);;
let rec length__d0__d0__d2_d2 ls_4_6 =
  (ls_4_6 99);;
let rec length__d0__d0__d2_d3 ls_1_1_5 =
  (ls_1_1_5 99);;
let rec length__d0__d0__d2_d4 ls_1_5_4 =
  (ls_1_5_4 99);;
let rec length__d0__d0__d2_d5 ls_8_5 =
  (ls_8_5 99);;
let rec length__d0__d0__d2_d6 ls_1_5_8 =
  (ls_1_5_8 99);;
let rec length__d0__d0__d2_d7 ls_3_3 =
  (ls_3_3 99);;
let rec length__d0__d0__d2_d8 ls_8_6 =
  (ls_8_6 99);;
let rec length__d0__d0__d2_d9 ls_9_3 =
  (ls_9_3 99);;
let rec length__d0__d0__d3 ls_1_4_6 =
  (ls_1_4_6 99);;
let rec length__d0__d0__d3_d0 ls_1_3_8 =
  (ls_1_3_8 99);;
let rec length__d0__d0__d3_d1 ls_1_3_9 =
  (ls_1_3_9 99);;
let rec length__d0__d0__d3_d2 ls_1_0_5 =
  (ls_1_0_5 99);;
let rec length__d0__d0__d3_d3 ls_2_6 =
  (ls_2_6 99);;
let rec length__d0__d0__d3_d4 ls_3_2 =
  (ls_3_2 99);;
let rec length__d0__d0__d3_d5 ls_1_3_1 =
  (ls_1_3_1 99);;
let rec length__d0__d0__d3_d6 ls_3_0 =
  (ls_3_0 99);;
let rec length__d0__d0__d3_d7 ls_1_5_6 =
  (ls_1_5_6 99);;
let rec length__d0__d0__d3_d8 ls_9_7 =
  (ls_9_7 99);;
let rec length__d0__d0__d3_d9 ls_6_7 =
  (ls_6_7 99);;
let rec length__d0__d0__d4 ls_1_2_2 =
  (ls_1_2_2 99);;
let rec length__d0__d0__d4_d0 ls_1_2_5 =
  (ls_1_2_5 99);;
let rec length__d0__d0__d4_d1 ls_5_5 =
  (ls_5_5 99);;
let rec length__d0__d0__d4_d2 ls_1_1_0 =
  (ls_1_1_0 99);;
let rec length__d0__d0__d4_d3 ls_1_1_7 =
  (ls_1_1_7 99);;
let rec length__d0__d0__d4_d4 ls_7_6 =
  (ls_7_6 99);;
let rec length__d0__d0__d4_d5 ls_1_2_1 =
  (ls_1_2_1 99);;
let rec length__d0__d0__d4_d6 ls_7_0 =
  (ls_7_0 99);;
let rec length__d0__d0__d4_d7 ls_6_6 =
  (ls_6_6 99);;
let rec length__d0__d0__d4_d8 ls_5_6 =
  (ls_5_6 99);;
let rec length__d0__d0__d4_d9 ls_1_0_8 =
  (ls_1_0_8 99);;
let rec length__d0__d0__d5 ls_6_4 =
  (ls_6_4 99);;
let rec length__d0__d0__d5_d0 ls_1_3_6 =
  (ls_1_3_6 99);;
let rec length__d0__d0__d5_d1 ls_1_4_9 =
  (ls_1_4_9 99);;
let rec length__d0__d0__d5_d2 ls_4_7 =
  (ls_4_7 99);;
let rec length__d0__d0__d5_d3 ls_1_1_1 =
  (ls_1_1_1 99);;
let rec length__d0__d0__d5_d4 ls_1_0_1 =
  (ls_1_0_1 99);;
let rec length__d0__d0__d5_d5 ls_1_4_2 =
  (ls_1_4_2 99);;
let rec length__d0__d0__d5_d6 ls_2_9 =
  (ls_2_9 99);;
let rec length__d0__d0__d5_d7 ls_1_0_2 =
  (ls_1_0_2 99);;
let rec length__d0__d0__d6 ls_7_4 =
  (ls_7_4 99);;
let rec length__d0__d0__d7 ls_4_3 =
  (ls_4_3 99);;
let rec length__d0__d0__d8 ls_7_2 =
  (ls_7_2 99);;
let rec length__d0__d0__d9 ls_7_3 =
  (ls_7_3 99);;
let rec map__d0__d0__d0 f_1_8_8 ls_1_5_3 =
  (match ls_1_5_3 with
    | `LH_C(h_6_8_7, t_8_0_1) -> 
      (`LH_C((f_1_8_8 h_6_8_7), ((map__d0__d0__d0 f_1_8_8) t_8_0_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1__d0__d0 f_1_1_0 ls_6_2 =
  (match ls_6_2 with
    | `LH_C(h_4_4_1, t_5_1_3) -> 
      (`LH_C((f_1_1_0 h_4_4_1), ((map__d1__d0__d0 f_1_1_0) t_5_1_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d0__d0__d0 f_1_7_4 ls_1_4_4 =
  (match ls_1_4_4 with
    | `LH_C(h_6_7_7, t_7_9_1) -> 
      (`LH_C((f_1_7_4 h_6_7_7), ((map__d1_d0__d0__d0 f_1_7_4) t_7_9_1)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d1_d1__d0__d0 f_1_4_2 ls_1_1_3 =
  (ls_1_1_3 f_1_4_2);;
let rec map__d1_d1__d0__d1 f_1_6_4 ls_1_2_9 =
  (ls_1_2_9 f_1_6_4);;
let rec map__d1_d2__d0__d0 f_1_6_3 ls_1_2_8 =
  (ls_1_2_8 f_1_6_3);;
let rec map__d1_d2__d0__d1 f_1_2_1 ls_7_5 =
  (ls_7_5 f_1_2_1);;
let rec map__d1_d2__d0__d2 f_1_5_0 ls_1_2_4 =
  (ls_1_2_4 f_1_5_0);;
let rec map__d1_d2__d0__d3 f_1_2_5 ls_8_0 =
  (ls_8_0 f_1_2_5);;
let rec map__d1_d2__d0__d4 f_1_8_9 ls_1_5_5 =
  (ls_1_5_5 f_1_8_9);;
let rec map__d1_d2__d0__d5 f_1_3_0 ls_9_4 =
  (ls_9_4 f_1_3_0);;
let rec map__d1_d2__d0__d6 f_9_5 ls_5_2 =
  (ls_5_2 f_9_5);;
let rec map__d1_d2__d0__d7 f_1_8_7 ls_1_5_1 =
  (ls_1_5_1 f_1_8_7);;
let rec map__d1_d2__d0__d8 f_1_1_2 ls_6_5 =
  (ls_6_5 f_1_1_2);;
let rec map__d1_d3__d0__d0 f_8_5 ls_4_0 =
  (ls_4_0 f_8_5);;
let rec map__d1_d3__d0__d1 f_8_9 ls_4_9 =
  (ls_4_9 f_8_9);;
let rec map__d1_d4__d0__d0 f_7_8 ls_2_8 =
  (ls_2_8 f_7_8);;
let rec map__d1_d4__d0__d1 f_7_9 ls_3_1 =
  (ls_3_1 f_7_9);;
let rec map__d1_d4__d0__d2 f_1_9_3 ls_1_5_7 =
  (ls_1_5_7 f_1_9_3);;
let rec map__d1_d4__d0__d3 f_8_1 ls_3_4 =
  (ls_3_4 f_8_1);;
let rec map__d1_d4__d0__d4 f_1_3_1 ls_9_5 =
  (ls_9_5 f_1_3_1);;
let rec map__d1_d4__d0__d5 f_1_1_5 ls_6_8 =
  (ls_6_8 f_1_1_5);;
let rec map__d1_d4__d0__d6 f_1_2_9 ls_8_9 =
  (ls_8_9 f_1_2_9);;
let rec map__d1_d4__d0__d7 f_1_3_2 ls_9_9 =
  (ls_9_9 f_1_3_2);;
let rec map__d1_d4__d0__d8 f_1_8_6 ls_1_5_0 =
  (ls_1_5_0 f_1_8_6);;
let rec map__d1_d5__d0__d0 f_8_8 ls_4_5 =
  (ls_4_5 f_8_8);;
let rec map__d1_d5__d0__d1 f_1_0_8 ls_6_1 =
  (ls_6_1 f_1_0_8);;
let rec map__d1_d6__d0__d0 f_9_7 ls_5_4 =
  (ls_5_4 f_9_7);;
let rec map__d1_d6__d0__d1 f_1_2_8 ls_8_8 =
  (ls_8_8 f_1_2_8);;
let rec map__d3__d0__d0 f_1_2_2 ls_7_7 =
  (ls_7_7 f_1_2_2);;
let rec map__d3__d0__d1 f_1_6_8 ls_1_3_5 =
  (ls_1_3_5 f_1_6_8);;
let rec map__d4__d0__d0 f_7_7 ls_2_7 =
  (ls_2_7 f_7_7);;
let rec map__d4__d0__d1 f_9_6 ls_5_3 =
  (ls_5_3 f_9_6);;
let rec map__d5__d0__d0 f_1_0_1 ls_5_7 =
  (match ls_5_7 with
    | `LH_C(h_4_3_0, t_5_0_2) -> 
      (`LH_C((f_1_0_1 h_4_3_0), ((map__d5__d0__d0 f_1_0_1) t_5_0_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d5__d1__d0 f_1_0_6 ls_5_9 =
  (match ls_5_9 with
    | `LH_C(h_4_3_7, t_5_0_9) -> 
      (`LH_C((f_1_0_6 h_4_3_7), ((map__d5__d1__d0 f_1_0_6) t_5_0_9)))
    | `LH_N -> 
      (`LH_N));;
let rec map__d6__d0__d0 f_1_6_7 ls_1_3_3 =
  (ls_1_3_3 f_1_6_7);;
let rec map__d6__d0__d1 f_1_0_2 ls_5_8 =
  (ls_5_8 f_1_0_2);;
let rec map__d6__d0__d2 f_1_4_7 ls_1_1_6 =
  (ls_1_1_6 f_1_4_7);;
let rec map__d6__d0__d3 f_1_7_6 ls_1_4_8 =
  (ls_1_4_8 f_1_7_6);;
let rec map__d6__d0__d4 f_1_4_8 ls_1_1_9 =
  (ls_1_1_9 f_1_4_8);;
let rec map__d6__d0__d5 f_1_7_5 ls_1_4_7 =
  (ls_1_4_7 f_1_7_5);;
let rec map__d6__d0__d6 f_8_6 ls_4_1 =
  (ls_4_1 f_8_6);;
let rec map__d7__d0__d0 f_1_7_3 ls_1_4_1 =
  (ls_1_4_1 f_1_7_3);;
let rec map__d7__d0__d1 f_8_4 ls_3_9 =
  (ls_3_9 f_8_4);;
let rec map__d7__d0__d2 f_1_4_1 ls_1_0_9 =
  (ls_1_0_9 f_1_4_1);;
let rec map__d7__d0__d3 f_1_4_9 ls_1_2_3 =
  (ls_1_2_3 f_1_4_9);;
let rec map__d7__d0__d4 f_8_7 ls_4_2 =
  (ls_4_2 f_8_7);;
let rec map__d7__d0__d5 f_9_1 ls_5_1 =
  (ls_5_1 f_9_1);;
let rec map__d7__d0__d6 f_1_2_6 ls_8_3 =
  (ls_8_3 f_1_2_6);;
let rec map__d7__d0__d7 f_1_2_3 ls_7_8 =
  (ls_7_8 f_1_2_3);;
let rec map__d7__d0__d8 f_1_6_5 ls_1_3_0 =
  (ls_1_3_0 f_1_6_5);;
let rec map__d8__d0__d0 f_1_3_7 ls_1_0_6 =
  (ls_1_0_6 f_1_3_7);;
let rec map__d8__d0__d1 f_8_3 ls_3_8 =
  (ls_3_8 f_8_3);;
let rec map__d9__d0__d0 f_1_6_6 ls_1_3_2 =
  (ls_1_3_2 f_1_6_6);;
let rec map__d9__d0__d1 f_1_4_3 ls_1_1_4 =
  (ls_1_1_4 f_1_4_3);;
let rec mappend__d0__d0__d0 xs_9_2 ys_5_0_3 =
  (xs_9_2 ys_5_0_3);;
let rec mappend__d0__d0__d1 xs_4_1 ys_3_8_2 =
  (xs_4_1 ys_3_8_2);;
let rec mappend__d0__d0__d2 xs_2_4_6 ys_8_6_6 =
  (xs_2_4_6 ys_8_6_6);;
let rec mappend__d0__d0__d3 xs_2_0_6 ys_7_4_6 =
  (xs_2_0_6 ys_7_4_6);;
let rec mappend__d1__d0__d0 xs_1_7_7 ys_6_9_6 =
  (xs_1_7_7 ys_6_9_6);;
let rec mappend__d1__d0__d1 xs_2_2_8 ys_7_8_9 =
  (xs_2_2_8 ys_7_8_9);;
let rec mappend__d1__d0__d2 xs_1_9_6 ys_7_1_5 =
  (xs_1_9_6 ys_7_1_5);;
let rec mappend__d1__d0__d3 xs_1_0_2 ys_5_1_3 =
  (xs_1_0_2 ys_5_1_3);;
let rec mappend__d1_d0__d0__d0 xs_3_3_6 ys_1_0_1_8 =
  (xs_3_3_6 ys_1_0_1_8);;
let rec mappend__d1_d0__d0__d1 xs_1_2_9 ys_5_6_8 =
  (xs_1_2_9 ys_5_6_8);;
let rec mappend__d1_d0__d0__d1_d0 xs_9_8 ys_5_0_9 =
  (xs_9_8 ys_5_0_9);;
let rec mappend__d1_d0__d0__d1_d1 xs_2_0_2 ys_7_2_1 =
  (xs_2_0_2 ys_7_2_1);;
let rec mappend__d1_d0__d0__d1_d2 xs_4_8 ys_3_9_6 =
  (xs_4_8 ys_3_9_6);;
let rec mappend__d1_d0__d0__d1_d3 xs_6_6 ys_4_4_6 =
  (xs_6_6 ys_4_4_6);;
let rec mappend__d1_d0__d0__d1_d4 xs_1_1_0 ys_5_4_9 =
  (xs_1_1_0 ys_5_4_9);;
let rec mappend__d1_d0__d0__d1_d5 xs_7_1 ys_4_6_1 =
  (xs_7_1 ys_4_6_1);;
let rec mappend__d1_d0__d0__d1_d6 xs_1_5_2 ys_6_0_0 =
  (xs_1_5_2 ys_6_0_0);;
let rec mappend__d1_d0__d0__d1_d7 xs_1_3_8 ys_5_8_6 =
  (xs_1_3_8 ys_5_8_6);;
let rec mappend__d1_d0__d0__d1_d8 xs_2_7_8 ys_9_3_3 =
  (xs_2_7_8 ys_9_3_3);;
let rec mappend__d1_d0__d0__d1_d9 xs_1_1_7 ys_5_5_6 =
  (xs_1_1_7 ys_5_5_6);;
let rec mappend__d1_d0__d0__d2 xs_2_5_1 ys_8_7_1 =
  (xs_2_5_1 ys_8_7_1);;
let rec mappend__d1_d0__d0__d2_d0 xs_2_5_4 ys_8_7_4 =
  (xs_2_5_4 ys_8_7_4);;
let rec mappend__d1_d0__d0__d2_d1 xs_1_4_0 ys_5_8_8 =
  (xs_1_4_0 ys_5_8_8);;
let rec mappend__d1_d0__d0__d2_d2 xs_2_8_2 ys_9_3_7 =
  (xs_2_8_2 ys_9_3_7);;
let rec mappend__d1_d0__d0__d2_d3 xs_7_8 ys_4_8_9 =
  (xs_7_8 ys_4_8_9);;
let rec mappend__d1_d0__d0__d2_d4 xs_1_6_8 ys_6_8_7 =
  (xs_1_6_8 ys_6_8_7);;
let rec mappend__d1_d0__d0__d2_d5 xs_8_5 ys_4_9_6 =
  (xs_8_5 ys_4_9_6);;
let rec mappend__d1_d0__d0__d2_d6 xs_1_9_2 ys_7_1_1 =
  (xs_1_9_2 ys_7_1_1);;
let rec mappend__d1_d0__d0__d2_d7 xs_1_0_3 ys_5_3_5 =
  (xs_1_0_3 ys_5_3_5);;
let rec mappend__d1_d0__d0__d2_d8 xs_1_1_8 ys_5_5_7 =
  (xs_1_1_8 ys_5_5_7);;
let rec mappend__d1_d0__d0__d2_d9 xs_2_1_3 ys_7_5_9 =
  (xs_2_1_3 ys_7_5_9);;
let rec mappend__d1_d0__d0__d3 xs_2_7_0 ys_9_2_5 =
  (xs_2_7_0 ys_9_2_5);;
let rec mappend__d1_d0__d0__d3_d0 xs_1_6_0 ys_6_1_0 =
  (xs_1_6_0 ys_6_1_0);;
let rec mappend__d1_d0__d0__d3_d1 xs_9_3 ys_5_0_4 =
  (xs_9_3 ys_5_0_4);;
let rec mappend__d1_d0__d0__d3_d2 xs_2_5_8 ys_8_8_1 =
  (xs_2_5_8 ys_8_8_1);;
let rec mappend__d1_d0__d0__d3_d3 xs_1_3_2 ys_5_7_1 =
  (xs_1_3_2 ys_5_7_1);;
let rec mappend__d1_d0__d0__d3_d4 xs_1_5_6 ys_6_0_4 =
  (xs_1_5_6 ys_6_0_4);;
let rec mappend__d1_d0__d0__d3_d5 xs_3_3_1 ys_1_0_1_3 =
  (xs_3_3_1 ys_1_0_1_3);;
let rec mappend__d1_d0__d0__d3_d6 xs_4_4 ys_3_8_5 =
  (xs_4_4 ys_3_8_5);;
let rec mappend__d1_d0__d0__d3_d7 xs_2_6_4 ys_9_0_5 =
  (xs_2_6_4 ys_9_0_5);;
let rec mappend__d1_d0__d0__d3_d8 xs_2_4_4 ys_8_6_4 =
  (xs_2_4_4 ys_8_6_4);;
let rec mappend__d1_d0__d0__d4 xs_1_8_7 ys_7_0_6 =
  (xs_1_8_7 ys_7_0_6);;
let rec mappend__d1_d0__d0__d5 xs_3_1_2 ys_9_9_4 =
  (xs_3_1_2 ys_9_9_4);;
let rec mappend__d1_d0__d0__d6 xs_3_0_9 ys_9_9_1 =
  (xs_3_0_9 ys_9_9_1);;
let rec mappend__d1_d0__d0__d7 xs_3_2_4 ys_1_0_0_6 =
  (xs_3_2_4 ys_1_0_0_6);;
let rec mappend__d1_d0__d0__d8 xs_3_1_1 ys_9_9_3 =
  (xs_3_1_1 ys_9_9_3);;
let rec mappend__d1_d0__d0__d9 xs_2_8_6 ys_9_4_1 =
  (xs_2_8_6 ys_9_4_1);;
let rec mappend__d1_d1__d0__d0 xs_5_8 ys_4_3_8 =
  (xs_5_8 ys_4_3_8);;
let rec mappend__d1_d1__d0__d1 xs_1_5_5 ys_6_0_3 =
  (xs_1_5_5 ys_6_0_3);;
let rec mappend__d1_d1__d0__d1_d0 xs_1_5_0 ys_5_9_8 =
  (xs_1_5_0 ys_5_9_8);;
let rec mappend__d1_d1__d0__d1_d1 xs_3_3_3 ys_1_0_1_5 =
  (xs_3_3_3 ys_1_0_1_5);;
let rec mappend__d1_d1__d0__d1_d2 xs_2_3_7 ys_8_0_9 =
  (xs_2_3_7 ys_8_0_9);;
let rec mappend__d1_d1__d0__d1_d3 xs_3_3_2 ys_1_0_1_4 =
  (xs_3_3_2 ys_1_0_1_4);;
let rec mappend__d1_d1__d0__d1_d4 xs_3_5 ys_3_7_6 =
  (xs_3_5 ys_3_7_6);;
let rec mappend__d1_d1__d0__d1_d5 xs_3_6 ys_3_7_7 =
  (xs_3_6 ys_3_7_7);;
let rec mappend__d1_d1__d0__d1_d6 xs_1_0_6 ys_5_3_8 =
  (xs_1_0_6 ys_5_3_8);;
let rec mappend__d1_d1__d0__d1_d7 xs_2_9_3 ys_9_4_8 =
  (xs_2_9_3 ys_9_4_8);;
let rec mappend__d1_d1__d0__d1_d8 xs_1_2_3 ys_5_6_2 =
  (xs_1_2_3 ys_5_6_2);;
let rec mappend__d1_d1__d0__d1_d9 xs_8_8 ys_4_9_9 =
  (xs_8_8 ys_4_9_9);;
let rec mappend__d1_d1__d0__d2 xs_1_6_2 ys_6_1_2 =
  (xs_1_6_2 ys_6_1_2);;
let rec mappend__d1_d1__d0__d2_d0 xs_2_2_5 ys_7_8_6 =
  (xs_2_2_5 ys_7_8_6);;
let rec mappend__d1_d1__d0__d2_d1 xs_1_9_4 ys_7_1_3 =
  (xs_1_9_4 ys_7_1_3);;
let rec mappend__d1_d1__d0__d2_d2 xs_2_8_0 ys_9_3_5 =
  (xs_2_8_0 ys_9_3_5);;
let rec mappend__d1_d1__d0__d2_d3 xs_5_6 ys_4_0_9 =
  (xs_5_6 ys_4_0_9);;
let rec mappend__d1_d1__d0__d2_d4 xs_1_8_4 ys_7_0_3 =
  (xs_1_8_4 ys_7_0_3);;
let rec mappend__d1_d1__d0__d2_d5 xs_2_8_9 ys_9_4_4 =
  (xs_2_8_9 ys_9_4_4);;
let rec mappend__d1_d1__d0__d2_d6 xs_2_1_4 ys_7_6_0 =
  (xs_2_1_4 ys_7_6_0);;
let rec mappend__d1_d1__d0__d2_d7 xs_2_3_4 ys_8_0_6 =
  (xs_2_3_4 ys_8_0_6);;
let rec mappend__d1_d1__d0__d2_d8 xs_8_4 ys_4_9_5 =
  (xs_8_4 ys_4_9_5);;
let rec mappend__d1_d1__d0__d2_d9 xs_2_5_3 ys_8_7_3 =
  (xs_2_5_3 ys_8_7_3);;
let rec mappend__d1_d1__d0__d3 xs_8_2 ys_4_9_3 =
  (xs_8_2 ys_4_9_3);;
let rec mappend__d1_d1__d0__d3_d0 xs_7_0 ys_4_6_0 =
  (xs_7_0 ys_4_6_0);;
let rec mappend__d1_d1__d0__d4 xs_8_3 ys_4_9_4 =
  (xs_8_3 ys_4_9_4);;
let rec mappend__d1_d1__d0__d5 xs_2_6_1 ys_9_0_2 =
  (xs_2_6_1 ys_9_0_2);;
let rec mappend__d1_d1__d0__d6 xs_3_3_7 ys_1_0_1_9 =
  (xs_3_3_7 ys_1_0_1_9);;
let rec mappend__d1_d1__d0__d7 xs_1_2_6 ys_5_6_5 =
  (xs_1_2_6 ys_5_6_5);;
let rec mappend__d1_d1__d0__d8 xs_1_2_8 ys_5_6_7 =
  (xs_1_2_8 ys_5_6_7);;
let rec mappend__d1_d1__d0__d9 xs_1_4_1 ys_5_8_9 =
  (xs_1_4_1 ys_5_8_9);;
let rec mappend__d1_d2__d0__d0 xs_1_3_1 ys_5_7_0 =
  (xs_1_3_1 ys_5_7_0);;
let rec mappend__d1_d2__d0__d1 xs_2_0_8 ys_7_4_8 =
  (xs_2_0_8 ys_7_4_8);;
let rec mappend__d1_d2__d0__d1_d0 xs_3_9 ys_3_8_0 =
  (xs_3_9 ys_3_8_0);;
let rec mappend__d1_d2__d0__d1_d1 xs_3_1_9 ys_1_0_0_1 =
  (xs_3_1_9 ys_1_0_0_1);;
let rec mappend__d1_d2__d0__d1_d2 xs_3_1 ys_3_7_2 =
  (xs_3_1 ys_3_7_2);;
let rec mappend__d1_d2__d0__d1_d3 xs_2_8_3 ys_9_3_8 =
  (xs_2_8_3 ys_9_3_8);;
let rec mappend__d1_d2__d0__d1_d4 xs_1_3_9 ys_5_8_7 =
  (xs_1_3_9 ys_5_8_7);;
let rec mappend__d1_d2__d0__d1_d5 xs_6_9 ys_4_5_9 =
  (xs_6_9 ys_4_5_9);;
let rec mappend__d1_d2__d0__d1_d6 xs_1_6_6 ys_6_8_5 =
  (xs_1_6_6 ys_6_8_5);;
let rec mappend__d1_d2__d0__d1_d7 xs_2_4_8 ys_8_6_8 =
  (xs_2_4_8 ys_8_6_8);;
let rec mappend__d1_d2__d0__d1_d8 xs_1_4_5 ys_5_9_3 =
  (xs_1_4_5 ys_5_9_3);;
let rec mappend__d1_d2__d0__d1_d9 xs_1_1_9 ys_5_5_8 =
  (xs_1_1_9 ys_5_5_8);;
let rec mappend__d1_d2__d0__d2 xs_2_0_9 ys_7_4_9 =
  (xs_2_0_9 ys_7_4_9);;
let rec mappend__d1_d2__d0__d3 xs_1_5_4 ys_6_0_2 =
  (xs_1_5_4 ys_6_0_2);;
let rec mappend__d1_d2__d0__d4 xs_1_0_7 ys_5_3_9 =
  (xs_1_0_7 ys_5_3_9);;
let rec mappend__d1_d2__d0__d5 xs_1_4_2 ys_5_9_0 =
  (xs_1_4_2 ys_5_9_0);;
let rec mappend__d1_d2__d0__d6 xs_3_3_4 ys_1_0_1_6 =
  (xs_3_3_4 ys_1_0_1_6);;
let rec mappend__d1_d2__d0__d7 xs_5_7 ys_4_3_7 =
  (xs_5_7 ys_4_3_7);;
let rec mappend__d1_d2__d0__d8 xs_1_3_0 ys_5_6_9 =
  (xs_1_3_0 ys_5_6_9);;
let rec mappend__d1_d2__d0__d9 xs_7_6 ys_4_8_7 =
  (xs_7_6 ys_4_8_7);;
let rec mappend__d1_d3__d0__d0 xs_1_2_0 ys_5_5_9 =
  (xs_1_2_0 ys_5_5_9);;
let rec mappend__d1_d3__d0__d1 xs_1_0_0 ys_5_1_1 =
  (xs_1_0_0 ys_5_1_1);;
let rec mappend__d1_d3__d0__d1_d0 xs_2_9_7 ys_9_7_9 =
  (xs_2_9_7 ys_9_7_9);;
let rec mappend__d1_d3__d0__d1_d1 xs_6_3 ys_4_4_3 =
  (xs_6_3 ys_4_4_3);;
let rec mappend__d1_d3__d0__d2 xs_3_2_6 ys_1_0_0_8 =
  (xs_3_2_6 ys_1_0_0_8);;
let rec mappend__d1_d3__d0__d3 xs_1_8_2 ys_7_0_1 =
  (xs_1_8_2 ys_7_0_1);;
let rec mappend__d1_d3__d0__d4 xs_2_1_2 ys_7_5_2 =
  (xs_2_1_2 ys_7_5_2);;
let rec mappend__d1_d3__d0__d5 xs_3_4_0 ys_1_0_2_2 =
  (xs_3_4_0 ys_1_0_2_2);;
let rec mappend__d1_d3__d0__d6 xs_6_0 ys_4_4_0 =
  (xs_6_0 ys_4_4_0);;
let rec mappend__d1_d3__d0__d7 xs_2_5_6 ys_8_7_9 =
  (xs_2_5_6 ys_8_7_9);;
let rec mappend__d1_d3__d0__d8 xs_2_8_1 ys_9_3_6 =
  (xs_2_8_1 ys_9_3_6);;
let rec mappend__d1_d3__d0__d9 xs_3_3_5 ys_1_0_1_7 =
  (xs_3_3_5 ys_1_0_1_7);;
let rec mappend__d1_d4__d0__d0 xs_2_5_5 ys_8_7_5 =
  (xs_2_5_5 ys_8_7_5);;
let rec mappend__d1_d4__d0__d1 xs_2_1_0 ys_7_5_0 =
  (xs_2_1_0 ys_7_5_0);;
let rec mappend__d1_d4__d0__d2 xs_2_7_3 ys_9_2_8 =
  (xs_2_7_3 ys_9_2_8);;
let rec mappend__d1_d4__d0__d3 xs_1_6_7 ys_6_8_6 =
  (xs_1_6_7 ys_6_8_6);;
let rec mappend__d1_d4__d0__d4 xs_1_2_4 ys_5_6_3 =
  (xs_1_2_4 ys_5_6_3);;
let rec mappend__d1_d4__d0__d5 xs_1_0_9 ys_5_4_1 =
  (xs_1_0_9 ys_5_4_1);;
let rec mappend__d1_d4__d0__d6 xs_1_6_5 ys_6_8_4 =
  (xs_1_6_5 ys_6_8_4);;
let rec mappend__d1_d4__d0__d7 xs_1_8_5 ys_7_0_4 =
  (xs_1_8_5 ys_7_0_4);;
let rec mappend__d1_d4__d0__d8 xs_2_0_0 ys_7_1_9 =
  (xs_2_0_0 ys_7_1_9);;
let rec mappend__d1_d5__d0__d0 xs_2_6_9 ys_9_2_4 =
  (xs_2_6_9 ys_9_2_4);;
let rec mappend__d1_d5__d0__d1 xs_2_7_6 ys_9_3_1 =
  (xs_2_7_6 ys_9_3_1);;
let rec mappend__d1_d5__d0__d2 xs_2_7_5 ys_9_3_0 =
  (xs_2_7_5 ys_9_3_0);;
let rec mappend__d1_d5__d0__d3 xs_2_8_8 ys_9_4_3 =
  (xs_2_8_8 ys_9_4_3);;
let rec mappend__d1_d5__d0__d4 xs_1_8_9 ys_7_0_8 =
  (xs_1_8_9 ys_7_0_8);;
let rec mappend__d1_d5__d0__d5 xs_2_1_7 ys_7_6_3 =
  (xs_2_1_7 ys_7_6_3);;
let rec mappend__d1_d5__d0__d6 xs_2_9_4 ys_9_4_9 =
  (xs_2_9_4 ys_9_4_9);;
let rec mappend__d1_d5__d0__d7 xs_6_5 ys_4_4_5 =
  (xs_6_5 ys_4_4_5);;
let rec mappend__d1_d6__d0__d0 xs_2_7_9 ys_9_3_4 =
  (xs_2_7_9 ys_9_3_4);;
let rec mappend__d1_d6__d0__d1 xs_2_4_2 ys_8_6_2 =
  (xs_2_4_2 ys_8_6_2);;
let rec mappend__d1_d6__d0__d2 xs_1_8_8 ys_7_0_7 =
  (xs_1_8_8 ys_7_0_7);;
let rec mappend__d1_d6__d0__d3 xs_2_9_2 ys_9_4_7 =
  (xs_2_9_2 ys_9_4_7);;
let rec mappend__d1_d6__d0__d4 xs_3_4_1 ys_1_0_2_3 =
  (xs_3_4_1 ys_1_0_2_3);;
let rec mappend__d1_d7__d0__d0 xs_2_2_9 ys_7_9_0 =
  (xs_2_2_9 ys_7_9_0);;
let rec mappend__d1_d7__d0__d1 xs_2_6_6 ys_9_2_1 =
  (xs_2_6_6 ys_9_2_1);;
let rec mappend__d1_d7__d0__d2 xs_1_1_2 ys_5_5_1 =
  (xs_1_1_2 ys_5_5_1);;
let rec mappend__d1_d7__d0__d3 xs_7_3 ys_4_6_3 =
  (xs_7_3 ys_4_6_3);;
let rec mappend__d1_d8__d0__d0 xs_2_0_7 ys_7_4_7 =
  (xs_2_0_7 ys_7_4_7);;
let rec mappend__d1_d8__d0__d1 xs_2_0_4 ys_7_4_4 =
  (xs_2_0_4 ys_7_4_4);;
let rec mappend__d1_d8__d0__d2 xs_3_8 ys_3_7_9 =
  (xs_3_8 ys_3_7_9);;
let rec mappend__d1_d8__d0__d3 xs_1_8_3 ys_7_0_2 =
  (xs_1_8_3 ys_7_0_2);;
let rec mappend__d1_d8__d0__d4 xs_2_3_0 ys_7_9_1 =
  (xs_2_3_0 ys_7_9_1);;
let rec mappend__d1_d8__d0__d5 xs_2_5_7 ys_8_8_0 =
  (xs_2_5_7 ys_8_8_0);;
let rec mappend__d1_d8__d0__d6 xs_3_2_3 ys_1_0_0_5 =
  (xs_3_2_3 ys_1_0_0_5);;
let rec mappend__d1_d8__d0__d7 xs_1_9_3 ys_7_1_2 =
  (xs_1_9_3 ys_7_1_2);;
let rec mappend__d1_d8__d0__d8 xs_1_9_0 ys_7_0_9 =
  (xs_1_9_0 ys_7_0_9);;
let rec mappend__d1_d9__d0__d0 xs_7_9 ys_4_9_0 =
  (xs_7_9 ys_4_9_0);;
let rec mappend__d1_d9__d0__d1 xs_1_1_4 ys_5_5_3 =
  (xs_1_1_4 ys_5_5_3);;
let rec mappend__d1_d9__d0__d2 xs_2_1_6 ys_7_6_2 =
  (xs_2_1_6 ys_7_6_2);;
let rec mappend__d1_d9__d0__d3 xs_5_5 ys_4_0_8 =
  (xs_5_5 ys_4_0_8);;
let rec mappend__d1_d9__d0__d4 xs_1_6_3 ys_6_1_3 =
  (xs_1_6_3 ys_6_1_3);;
let rec mappend__d1_d9__d0__d5 xs_3_7 ys_3_7_8 =
  (xs_3_7 ys_3_7_8);;
let rec mappend__d1_d9__d0__d6 xs_3_0 ys_3_7_1 =
  (xs_3_0 ys_3_7_1);;
let rec mappend__d1_d9__d0__d7 xs_3_1_4 ys_9_9_6 =
  (xs_3_1_4 ys_9_9_6);;
let rec mappend__d2_d0__d0__d0 xs_2_1_9 ys_7_6_5 =
  (xs_2_1_9 ys_7_6_5);;
let rec mappend__d2_d0__d0__d1 xs_5_0 ys_4_0_3 =
  (xs_5_0 ys_4_0_3);;
let rec mappend__d2_d0__d0__d2 xs_1_7_6 ys_6_9_5 =
  (xs_1_7_6 ys_6_9_5);;
let rec mappend__d2_d0__d0__d3 xs_1_4_8 ys_5_9_6 =
  (xs_1_4_8 ys_5_9_6);;
let rec mappend__d2_d0__d0__d4 xs_1_7_9 ys_6_9_8 =
  (xs_1_7_9 ys_6_9_8);;
let rec mappend__d2_d1__d0__d0 xs_6_8 ys_4_5_8 =
  (xs_6_8 ys_4_5_8);;
let rec mappend__d2_d1__d0__d1 xs_5_3 ys_4_0_6 =
  (xs_5_3 ys_4_0_6);;
let rec mappend__d2_d1__d0__d2 xs_3_2_7 ys_1_0_0_9 =
  (xs_3_2_7 ys_1_0_0_9);;
let rec mappend__d2_d1__d0__d3 xs_7_5 ys_4_6_5 =
  (xs_7_5 ys_4_6_5);;
let rec mappend__d2_d2__d0__d0 xs_4_3 ys_3_8_4 =
  (xs_4_3 ys_3_8_4);;
let rec mappend__d2_d2__d0__d1 xs_2_8_7 ys_9_4_2 =
  (xs_2_8_7 ys_9_4_2);;
let rec mappend__d2_d2__d0__d2 xs_1_0_4 ys_5_3_6 =
  (xs_1_0_4 ys_5_3_6);;
let rec mappend__d2_d2__d0__d3 xs_7_7 ys_4_8_8 =
  (xs_7_7 ys_4_8_8);;
let rec mappend__d2_d2__d0__d4 xs_2_2_1 ys_7_6_7 =
  (xs_2_2_1 ys_7_6_7);;
let rec mappend__d2_d2__d0__d5 xs_9_0 ys_5_0_1 =
  (xs_9_0 ys_5_0_1);;
let rec mappend__d2_d2__d0__d6 xs_2_6_8 ys_9_2_3 =
  (xs_2_6_8 ys_9_2_3);;
let rec mappend__d2_d2__d0__d7 xs_1_2_2 ys_5_6_1 =
  (xs_1_2_2 ys_5_6_1);;
let rec mappend__d2_d2__d0__d8 xs_1_5_8 ys_6_0_8 =
  (xs_1_5_8 ys_6_0_8);;
let rec mappend__d2_d3__d0__d0 xs_2_3_2 ys_7_9_7 =
  (xs_2_3_2 ys_7_9_7);;
let rec mappend__d2_d3__d0__d1 xs_4_5 ys_3_8_6 =
  (xs_4_5 ys_3_8_6);;
let rec mappend__d2_d3__d0__d2 xs_2_1_1 ys_7_5_1 =
  (xs_2_1_1 ys_7_5_1);;
let rec mappend__d2_d3__d0__d3 xs_3_4_2 ys_1_0_2_4 =
  (xs_3_4_2 ys_1_0_2_4);;
let rec mappend__d2_d3__d0__d4 xs_3_2_0 ys_1_0_0_2 =
  (xs_3_2_0 ys_1_0_0_2);;
let rec mappend__d2_d3__d0__d5 xs_4_0 ys_3_8_1 =
  (xs_4_0 ys_3_8_1);;
let rec mappend__d2_d3__d0__d6 xs_2_1_5 ys_7_6_1 =
  (xs_2_1_5 ys_7_6_1);;
let rec mappend__d2_d3__d0__d7 xs_3_2_2 ys_1_0_0_4 =
  (xs_3_2_2 ys_1_0_0_4);;
let rec mappend__d2_d4__d0__d0 xs_2_7_7 ys_9_3_2 =
  (xs_2_7_7 ys_9_3_2);;
let rec mappend__d2_d4__d0__d1 xs_3_2_8 ys_1_0_1_0 =
  (xs_3_2_8 ys_1_0_1_0);;
let rec mappend__d2_d4__d0__d2 xs_3_2_1 ys_1_0_0_3 =
  (xs_3_2_1 ys_1_0_0_3);;
let rec mappend__d2_d4__d0__d3 xs_9_7 ys_5_0_8 =
  (xs_9_7 ys_5_0_8);;
let rec mappend__d2_d4__d0__d4 xs_2_4_3 ys_8_6_3 =
  (xs_2_4_3 ys_8_6_3);;
let rec mappend__d2_d5__d0__d0 xs_2_7_4 ys_9_2_9 =
  (xs_2_7_4 ys_9_2_9);;
let rec mappend__d2_d5__d0__d1 xs_1_9_9 ys_7_1_8 =
  (xs_1_9_9 ys_7_1_8);;
let rec mappend__d2_d5__d0__d2 xs_3_0_0 ys_9_8_2 =
  (xs_3_0_0 ys_9_8_2);;
let rec mappend__d2_d5__d0__d3 xs_2_3_9 ys_8_5_9 =
  (xs_2_3_9 ys_8_5_9);;
let rec mappend__d2_d6__d0__d0 xs_2_4_0 ys_8_6_0 =
  (xs_2_4_0 ys_8_6_0);;
let rec mappend__d2_d6__d0__d1 xs_1_0_8 ys_5_4_0 =
  (xs_1_0_8 ys_5_4_0);;
let rec mappend__d2_d6__d0__d2 xs_3_3_0 ys_1_0_1_2 =
  (xs_3_3_0 ys_1_0_1_2);;
let rec mappend__d2_d6__d0__d3 xs_3_0_4 ys_9_8_6 =
  (xs_3_0_4 ys_9_8_6);;
let rec mappend__d2_d6__d0__d4 xs_1_9_5 ys_7_1_4 =
  (xs_1_9_5 ys_7_1_4);;
let rec mappend__d2_d6__d0__d5 xs_2_6_5 ys_9_0_6 =
  (xs_2_6_5 ys_9_0_6);;
let rec mappend__d3__d0__d0 xs_1_1_3 ys_5_5_2 =
  (xs_1_1_3 ys_5_5_2);;
let rec mappend__d3__d0__d1 xs_4_2 ys_3_8_3 =
  (xs_4_2 ys_3_8_3);;
let rec mappend__d3__d0__d2 xs_2_3_6 ys_8_0_8 =
  (xs_2_3_6 ys_8_0_8);;
let rec mappend__d3__d0__d3 xs_3_1_3 ys_9_9_5 =
  (xs_3_1_3 ys_9_9_5);;
let rec mappend__d4__d0__d0 xs_1_7_0 ys_6_8_9 =
  (xs_1_7_0 ys_6_8_9);;
let rec mappend__d4__d0__d1 xs_2_3_5 ys_8_0_7 =
  (xs_2_3_5 ys_8_0_7);;
let rec mappend__d4__d0__d1_d0 xs_2_5_2 ys_8_7_2 =
  (xs_2_5_2 ys_8_7_2);;
let rec mappend__d4__d0__d1_d1 xs_2_9_1 ys_9_4_6 =
  (xs_2_9_1 ys_9_4_6);;
let rec mappend__d4__d0__d1_d2 xs_2_6_0 ys_8_8_3 =
  (xs_2_6_0 ys_8_8_3);;
let rec mappend__d4__d0__d1_d3 xs_3_1_6 ys_9_9_8 =
  (xs_3_1_6 ys_9_9_8);;
let rec mappend__d4__d0__d1_d4 xs_5_4 ys_4_0_7 =
  (xs_5_4 ys_4_0_7);;
let rec mappend__d4__d0__d1_d5 xs_2_1_8 ys_7_6_4 =
  (xs_2_1_8 ys_7_6_4);;
let rec mappend__d4__d0__d1_d6 xs_3_0_6 ys_9_8_8 =
  (xs_3_0_6 ys_9_8_8);;
let rec mappend__d4__d0__d1_d7 xs_5_9 ys_4_3_9 =
  (xs_5_9 ys_4_3_9);;
let rec mappend__d4__d0__d1_d8 xs_1_7_1 ys_6_9_0 =
  (xs_1_7_1 ys_6_9_0);;
let rec mappend__d4__d0__d1_d9 xs_2_9_8 ys_9_8_0 =
  (xs_2_9_8 ys_9_8_0);;
let rec mappend__d4__d0__d2 xs_2_2_2 ys_7_6_8 =
  (xs_2_2_2 ys_7_6_8);;
let rec mappend__d4__d0__d2_d0 xs_1_1_1 ys_5_5_0 =
  (xs_1_1_1 ys_5_5_0);;
let rec mappend__d4__d0__d2_d1 xs_1_1_6 ys_5_5_5 =
  (xs_1_1_6 ys_5_5_5);;
let rec mappend__d4__d0__d2_d2 xs_2_7 ys_3_6_8 =
  (xs_2_7 ys_3_6_8);;
let rec mappend__d4__d0__d2_d3 xs_1_4_4 ys_5_9_2 =
  (xs_1_4_4 ys_5_9_2);;
let rec mappend__d4__d0__d2_d4 xs_9_1 ys_5_0_2 =
  (xs_9_1 ys_5_0_2);;
let rec mappend__d4__d0__d2_d5 xs_3_2_5 ys_1_0_0_7 =
  (xs_3_2_5 ys_1_0_0_7);;
let rec mappend__d4__d0__d2_d6 xs_7_4 ys_4_6_4 =
  (xs_7_4 ys_4_6_4);;
let rec mappend__d4__d0__d2_d7 xs_2_8_4 ys_9_3_9 =
  (xs_2_8_4 ys_9_3_9);;
let rec mappend__d4__d0__d2_d8 xs_1_9_8 ys_7_1_7 =
  (xs_1_9_8 ys_7_1_7);;
let rec mappend__d4__d0__d2_d9 xs_2_0_5 ys_7_4_5 =
  (xs_2_0_5 ys_7_4_5);;
let rec mappend__d4__d0__d3 xs_3_1_0 ys_9_9_2 =
  (xs_3_1_0 ys_9_9_2);;
let rec mappend__d4__d0__d3_d0 xs_2_2_6 ys_7_8_7 =
  (xs_2_2_6 ys_7_8_7);;
let rec mappend__d4__d0__d3_d1 xs_2_8_5 ys_9_4_0 =
  (xs_2_8_5 ys_9_4_0);;
let rec mappend__d4__d0__d3_d2 xs_1_9_7 ys_7_1_6 =
  (xs_1_9_7 ys_7_1_6);;
let rec mappend__d4__d0__d3_d3 xs_1_2_5 ys_5_6_4 =
  (xs_1_2_5 ys_5_6_4);;
let rec mappend__d4__d0__d3_d4 xs_6_2 ys_4_4_2 =
  (xs_6_2 ys_4_4_2);;
let rec mappend__d4__d0__d3_d5 xs_2_4_1 ys_8_6_1 =
  (xs_2_4_1 ys_8_6_1);;
let rec mappend__d4__d0__d3_d6 xs_1_7_2 ys_6_9_1 =
  (xs_1_7_2 ys_6_9_1);;
let rec mappend__d4__d0__d3_d7 xs_2_5_0 ys_8_7_0 =
  (xs_2_5_0 ys_8_7_0);;
let rec mappend__d4__d0__d3_d8 xs_1_3_7 ys_5_7_6 =
  (xs_1_3_7 ys_5_7_6);;
let rec mappend__d4__d0__d3_d9 xs_1_5_1 ys_5_9_9 =
  (xs_1_5_1 ys_5_9_9);;
let rec mappend__d4__d0__d4 xs_1_1_5 ys_5_5_4 =
  (xs_1_1_5 ys_5_5_4);;
let rec mappend__d4__d0__d4_d0 xs_6_4 ys_4_4_4 =
  (xs_6_4 ys_4_4_4);;
let rec mappend__d4__d0__d4_d1 xs_2_0_3 ys_7_4_3 =
  (xs_2_0_3 ys_7_4_3);;
let rec mappend__d4__d0__d4_d2 xs_2_2_3 ys_7_6_9 =
  (xs_2_2_3 ys_7_6_9);;
let rec mappend__d4__d0__d4_d3 xs_3_1_7 ys_9_9_9 =
  (xs_3_1_7 ys_9_9_9);;
let rec mappend__d4__d0__d4_d4 xs_4_7 ys_3_9_5 =
  (xs_4_7 ys_3_9_5);;
let rec mappend__d4__d0__d4_d5 xs_6_7 ys_4_4_7 =
  (xs_6_7 ys_4_4_7);;
let rec mappend__d4__d0__d4_d6 xs_1_5_9 ys_6_0_9 =
  (xs_1_5_9 ys_6_0_9);;
let rec mappend__d4__d0__d4_d7 xs_2_3_1 ys_7_9_2 =
  (xs_2_3_1 ys_7_9_2);;
let rec mappend__d4__d0__d4_d8 xs_1_2_1 ys_5_6_0 =
  (xs_1_2_1 ys_5_6_0);;
let rec mappend__d4__d0__d4_d9 xs_1_4_3 ys_5_9_1 =
  (xs_1_4_3 ys_5_9_1);;
let rec mappend__d4__d0__d5 xs_3_2_9 ys_1_0_1_1 =
  (xs_3_2_9 ys_1_0_1_1);;
let rec mappend__d4__d0__d5_d0 xs_4_6 ys_3_9_4 =
  (xs_4_6 ys_3_9_4);;
let rec mappend__d4__d0__d5_d1 xs_1_4_7 ys_5_9_5 =
  (xs_1_4_7 ys_5_9_5);;
let rec mappend__d4__d0__d5_d2 xs_7_2 ys_4_6_2 =
  (xs_7_2 ys_4_6_2);;
let rec mappend__d4__d0__d5_d3 xs_3_0_2 ys_9_8_4 =
  (xs_3_0_2 ys_9_8_4);;
let rec mappend__d4__d0__d6 xs_2_4_5 ys_8_6_5 =
  (xs_2_4_5 ys_8_6_5);;
let rec mappend__d4__d0__d7 xs_1_0_5 ys_5_3_7 =
  (xs_1_0_5 ys_5_3_7);;
let rec mappend__d4__d0__d8 xs_9_6 ys_5_0_7 =
  (xs_9_6 ys_5_0_7);;
let rec mappend__d4__d0__d9 xs_9_9 ys_5_1_0 =
  (xs_9_9 ys_5_1_0);;
let rec mappend__d5__d0__d0 xs_1_3_5 ys_5_7_4 =
  (xs_1_3_5 ys_5_7_4);;
let rec mappend__d5__d0__d1 xs_2_2_7 ys_7_8_8 =
  (xs_2_2_7 ys_7_8_8);;
let rec mappend__d5__d0__d2 xs_8_6 ys_4_9_7 =
  (xs_8_6 ys_4_9_7);;
let rec mappend__d5__d0__d3 xs_3_4 ys_3_7_5 =
  (xs_3_4 ys_3_7_5);;
let rec mappend__d6__d0__d0 xs_2_5_9 ys_8_8_2 =
  (xs_2_5_9 ys_8_8_2);;
let rec mappend__d6__d0__d1 xs_1_8_6 ys_7_0_5 =
  (xs_1_8_6 ys_7_0_5);;
let rec mappend__d6__d0__d2 xs_1_3_6 ys_5_7_5 =
  (xs_1_3_6 ys_5_7_5);;
let rec mappend__d6__d0__d3 xs_3_0_7 ys_9_8_9 =
  (xs_3_0_7 ys_9_8_9);;
let rec mappend__d6__d0__d4 xs_6_1 ys_4_4_1 =
  (xs_6_1 ys_4_4_1);;
let rec mappend__d7__d0__d0 xs_1_6_4 ys_6_8_3 =
  (xs_1_6_4 ys_6_8_3);;
let rec mappend__d7__d0__d1 xs_2_2_0 ys_7_6_6 =
  (xs_2_2_0 ys_7_6_6);;
let rec mappend__d7__d0__d2 xs_2_6_3 ys_9_0_4 =
  (xs_2_6_3 ys_9_0_4);;
let rec mappend__d9__d0__d0 xs_2_9_0 ys_9_4_5 =
  (xs_2_9_0 ys_9_4_5);;
let rec mappend__d9__d0__d1 xs_2_3_3 ys_8_0_5 =
  (xs_2_3_3 ys_8_0_5);;
let rec mappend__d9__d0__d1_d0 xs_5_1 ys_4_0_4 =
  (xs_5_1 ys_4_0_4);;
let rec mappend__d9__d0__d1_d1 xs_1_4_9 ys_5_9_7 =
  (xs_1_4_9 ys_5_9_7);;
let rec mappend__d9__d0__d1_d2 xs_3_3_9 ys_1_0_2_1 =
  (xs_3_3_9 ys_1_0_2_1);;
let rec mappend__d9__d0__d1_d3 xs_3_1_5 ys_9_9_7 =
  (xs_3_1_5 ys_9_9_7);;
let rec mappend__d9__d0__d1_d4 xs_8_9 ys_5_0_0 =
  (xs_8_9 ys_5_0_0);;
let rec mappend__d9__d0__d1_d5 xs_1_2_7 ys_5_6_6 =
  (xs_1_2_7 ys_5_6_6);;
let rec mappend__d9__d0__d1_d6 xs_3_2 ys_3_7_3 =
  (xs_3_2 ys_3_7_3);;
let rec mappend__d9__d0__d1_d7 xs_1_8_0 ys_6_9_9 =
  (xs_1_8_0 ys_6_9_9);;
let rec mappend__d9__d0__d1_d8 xs_3_0_1 ys_9_8_3 =
  (xs_3_0_1 ys_9_8_3);;
let rec mappend__d9__d0__d1_d9 xs_2_2_4 ys_7_7_0 =
  (xs_2_2_4 ys_7_7_0);;
let rec mappend__d9__d0__d2 xs_3_0_8 ys_9_9_0 =
  (xs_3_0_8 ys_9_9_0);;
let rec mappend__d9__d0__d2_d0 xs_2_9_9 ys_9_8_1 =
  (xs_2_9_9 ys_9_8_1);;
let rec mappend__d9__d0__d2_d1 xs_1_8_1 ys_7_0_0 =
  (xs_1_8_1 ys_7_0_0);;
let rec mappend__d9__d0__d2_d2 xs_8_0 ys_4_9_1 =
  (xs_8_0 ys_4_9_1);;
let rec mappend__d9__d0__d2_d3 xs_2_3_8 ys_8_5_8 =
  (xs_2_3_8 ys_8_5_8);;
let rec mappend__d9__d0__d2_d4 xs_3_0_3 ys_9_8_5 =
  (xs_3_0_3 ys_9_8_5);;
let rec mappend__d9__d0__d2_d5 xs_1_9_1 ys_7_1_0 =
  (xs_1_9_1 ys_7_1_0);;
let rec mappend__d9__d0__d2_d6 xs_1_0_1 ys_5_1_2 =
  (xs_1_0_1 ys_5_1_2);;
let rec mappend__d9__d0__d2_d7 xs_1_6_1 ys_6_1_1 =
  (xs_1_6_1 ys_6_1_1);;
let rec mappend__d9__d0__d2_d8 xs_2_4_7 ys_8_6_7 =
  (xs_2_4_7 ys_8_6_7);;
let rec mappend__d9__d0__d2_d9 xs_8_7 ys_4_9_8 =
  (xs_8_7 ys_4_9_8);;
let rec mappend__d9__d0__d3 xs_5_2 ys_4_0_5 =
  (xs_5_2 ys_4_0_5);;
let rec mappend__d9__d0__d3_d0 xs_1_7_4 ys_6_9_3 =
  (xs_1_7_4 ys_6_9_3);;
let rec mappend__d9__d0__d3_d1 xs_4_9 ys_4_0_2 =
  (xs_4_9 ys_4_0_2);;
let rec mappend__d9__d0__d3_d2 xs_1_7_8 ys_6_9_7 =
  (xs_1_7_8 ys_6_9_7);;
let rec mappend__d9__d0__d3_d3 xs_9_4 ys_5_0_5 =
  (xs_9_4 ys_5_0_5);;
let rec mappend__d9__d0__d3_d4 xs_1_3_3 ys_5_7_2 =
  (xs_1_3_3 ys_5_7_2);;
let rec mappend__d9__d0__d3_d5 xs_2_9 ys_3_7_0 =
  (xs_2_9 ys_3_7_0);;
let rec mappend__d9__d0__d3_d6 xs_3_1_8 ys_1_0_0_0 =
  (xs_3_1_8 ys_1_0_0_0);;
let rec mappend__d9__d0__d3_d7 xs_3_3 ys_3_7_4 =
  (xs_3_3 ys_3_7_4);;
let rec mappend__d9__d0__d3_d8 xs_2_6_7 ys_9_2_2 =
  (xs_2_6_7 ys_9_2_2);;
let rec mappend__d9__d0__d3_d9 xs_8_1 ys_4_9_2 =
  (xs_8_1 ys_4_9_2);;
let rec mappend__d9__d0__d4 xs_2_9_6 ys_9_5_1 =
  (xs_2_9_6 ys_9_5_1);;
let rec mappend__d9__d0__d4_d0 xs_2_7_2 ys_9_2_7 =
  (xs_2_7_2 ys_9_2_7);;
let rec mappend__d9__d0__d4_d1 xs_3_3_8 ys_1_0_2_0 =
  (xs_3_3_8 ys_1_0_2_0);;
let rec mappend__d9__d0__d4_d2 xs_2_7_1 ys_9_2_6 =
  (xs_2_7_1 ys_9_2_6);;
let rec mappend__d9__d0__d4_d3 xs_1_5_3 ys_6_0_1 =
  (xs_1_5_3 ys_6_0_1);;
let rec mappend__d9__d0__d4_d4 xs_2_9_5 ys_9_5_0 =
  (xs_2_9_5 ys_9_5_0);;
let rec mappend__d9__d0__d4_d5 xs_1_7_3 ys_6_9_2 =
  (xs_1_7_3 ys_6_9_2);;
let rec mappend__d9__d0__d4_d6 xs_3_0_5 ys_9_8_7 =
  (xs_3_0_5 ys_9_8_7);;
let rec mappend__d9__d0__d4_d7 xs_1_6_9 ys_6_8_8 =
  (xs_1_6_9 ys_6_8_8);;
let rec mappend__d9__d0__d4_d8 xs_2_4_9 ys_8_6_9 =
  (xs_2_4_9 ys_8_6_9);;
let rec mappend__d9__d0__d4_d9 xs_2_0_1 ys_7_2_0 =
  (xs_2_0_1 ys_7_2_0);;
let rec mappend__d9__d0__d5 xs_1_7_5 ys_6_9_4 =
  (xs_1_7_5 ys_6_9_4);;
let rec mappend__d9__d0__d6 xs_2_6_2 ys_9_0_3 =
  (xs_2_6_2 ys_9_0_3);;
let rec mappend__d9__d0__d7 xs_1_4_6 ys_5_9_4 =
  (xs_1_4_6 ys_5_9_4);;
let rec mappend__d9__d0__d8 xs_1_3_4 ys_5_7_3 =
  (xs_1_3_4 ys_5_7_3);;
let rec mappend__d9__d0__d9 xs_2_8 ys_3_6_9 =
  (xs_2_8 ys_3_6_9);;
let rec max'__d0__d0__d0 _lh_max'_arg1_1 _lh_max'_arg2_1 =
  (match _lh_max'_arg1_1 with
    | `XWin -> 
      (`XWin)
    | _ -> 
      (match _lh_max'_arg2_1 with
        | `XWin -> 
          (`XWin)
        | _ -> 
          (match _lh_max'_arg2_1 with
            | `OWin -> 
              _lh_max'_arg1_1
            | _ -> 
              (match _lh_max'_arg1_1 with
                | `OWin -> 
                  _lh_max'_arg2_1
                | _ -> 
                  (match _lh_max'_arg1_1 with
                    | `Score(_lh_max'_Score_0_2) -> 
                      (match _lh_max'_arg2_1 with
                        | `Score(_lh_max'_Score_0_3) -> 
                          (if (_lh_max'_Score_0_2 > _lh_max'_Score_0_3) then
                            (`Score(_lh_max'_Score_0_2))
                          else
                            (`Score(_lh_max'_Score_0_3)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec min'__d0__d0__d0 _lh_min'_arg1_1 _lh_min'_arg2_1 =
  (match _lh_min'_arg1_1 with
    | `OWin -> 
      (`OWin)
    | _ -> 
      (match _lh_min'_arg2_1 with
        | `OWin -> 
          (`OWin)
        | _ -> 
          (match _lh_min'_arg2_1 with
            | `XWin -> 
              _lh_min'_arg1_1
            | _ -> 
              (match _lh_min'_arg1_1 with
                | `XWin -> 
                  _lh_min'_arg2_1
                | _ -> 
                  (match _lh_min'_arg1_1 with
                    | `Score(_lh_min'_Score_0_2) -> 
                      (match _lh_min'_arg2_1 with
                        | `Score(_lh_min'_Score_0_3) -> 
                          (if (_lh_min'_Score_0_2 < _lh_min'_Score_0_3) then
                            (`Score(_lh_min'_Score_0_2))
                          else
                            (`Score(_lh_min'_Score_0_3)))
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))))));;
let rec mise__d0__d0__d0 _lh_mise_arg1_1_0 _lh_mise_arg2_1_0 _lh_mise_arg3_4 =
  ((_lh_mise_arg3_4 _lh_mise_arg1_1_0) _lh_mise_arg2_1_0);;
let rec mise__d0__d0__d1 _lh_mise_arg1_9 _lh_mise_arg2_9 _lh_mise_arg3_3 =
  ((_lh_mise_arg3_3 _lh_mise_arg1_9) _lh_mise_arg2_9);;
let rec mise__d0__d0__d2 _lh_mise_arg1_8 _lh_mise_arg2_8 _lh_mise_arg3_2 =
  ((_lh_mise_arg3_2 _lh_mise_arg1_8) _lh_mise_arg2_8);;
let rec mise__d0__d0__d3 _lh_mise_arg1_7 _lh_mise_arg2_7 _lh_mise_arg3_1 =
  ((_lh_mise_arg3_1 _lh_mise_arg1_7) _lh_mise_arg2_7);;
let rec opposite__d0__d0__d0 _lh_opposite_arg1_2 =
  (match _lh_opposite_arg1_2 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec opposite__d1__d0__d0 _lh_opposite_arg1_3 =
  (match _lh_opposite_arg1_3 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d0__d0__d0 _lh_scorePiece_arg1_3 _lh_scorePiece_arg2_3 =
  (match _lh_scorePiece_arg1_3 with
    | `X -> 
      _lh_scorePiece_arg2_3
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_3)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d1__d0__d0 _lh_scorePiece_arg1_5 _lh_scorePiece_arg2_5 =
  (match _lh_scorePiece_arg1_5 with
    | `X -> 
      _lh_scorePiece_arg2_5
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_5)
    | _ -> 
      (failwith "error"));;
let rec scorePiece__d2__d0__d0 _lh_scorePiece_arg1_4 _lh_scorePiece_arg2_4 =
  (match _lh_scorePiece_arg1_4 with
    | `X -> 
      _lh_scorePiece_arg2_4
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_4)
    | _ -> 
      (failwith "error"));;
let rec showMove__d0__d0__d0 _lh_showMove_arg1_1 =
  (_lh_showMove_arg1_1 99);;
let rec sum__d0__d0__d0 ls_7_1 =
  (ls_7_1 99);;
let rec sum__d0__d0__d1 ls_8_2 =
  (ls_8_2 99);;
let rec sum__d1__d0__d0 ls_4_4 =
  (ls_4_4 99);;
let rec sum__d1__d0__d1 ls_9_6 =
  (ls_9_6 99);;
let rec sum__d2__d0__d0 ls_4_8 =
  (ls_4_8 99);;
let rec sum__d2__d0__d1 ls_5_0 =
  (ls_5_0 99);;
let rec sum__d3__d0__d0 ls_1_5_9 =
  (ls_1_5_9 99);;
let rec sum__d3__d0__d1 ls_3_6 =
  (ls_3_6 99);;
let rec sum__d4__d0__d0 ls_8_7 =
  (ls_8_7 99);;
let rec sum__d4__d0__d1 ls_1_4_0 =
  (ls_1_4_0 99);;
let rec sum__d5__d0__d0 ls_1_4_3 =
  (ls_1_4_3 99);;
let rec sum__d5__d0__d1 ls_9_1 =
  (ls_9_1 99);;
let rec testBoard__d0__d0__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d0__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d1__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d2__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d3__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d4__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d5__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d6__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d7__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d8__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d1_d9__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d0__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d1__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d2__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d3__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d4__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d5__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d2_d6__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d3__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d4__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d5__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d6__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d7__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d8__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d0__d9__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard__d2__d0__d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec win1__d0__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1__d1__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1__d2__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d0__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d1__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2__d2__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d0__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d1__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3__d2__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d0__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d1__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4__d2__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d0__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d1__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5__d2__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d0__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d1__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win6__d2__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d0__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d1__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7__d2__d0__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d0__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d1__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8__d2__d0__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec alternate__d0__d0__d0 _lh_alternate_arg1_1 _lh_alternate_arg2_2 _lh_alternate_arg3_2 _lh_alternate_arg4_1 =
  (if (fullBoard__d0__d0__d0 _lh_alternate_arg4_1) then
    (fun f_1_1_8 _lh_dummy_1_2_5 _lh_dummy_1_2_6 -> 
      0)
  else
    (if ((static__d1__d0__d0 _lh_alternate_arg4_1) = (`XWin)) then
      (fun f_1_1_9 _lh_dummy_1_2_7 _lh_dummy_1_2_8 -> 
        0)
    else
      (if ((static__d2__d0__d0 _lh_alternate_arg4_1) = (`OWin)) then
        (fun f_1_2_0 _lh_dummy_1_2_9 _lh_dummy_1_3_0 -> 
          0)
      else
        (let rec opposition_2 = (opposite__d1__d0__d0 _lh_alternate_arg1_1) in
          (let rec possibles_1 = ((newPositions__d2__d0__d0 _lh_alternate_arg1_1) _lh_alternate_arg4_1) in
            (let rec scores_1 = ((map__d1_d0__d0__d0 (((bestMove__d0__d0__d0 opposition_2) _lh_alternate_arg3_2) _lh_alternate_arg2_2)) possibles_1) in
              (let rec boardd_eval_1 = (((best__d0__d0__d0 _lh_alternate_arg2_2) possibles_1) scores_1) in
                (let rec _lh_matchIdent_1_4 = boardd_eval_1 in
                  (((_lh_matchIdent_1_4 _lh_alternate_arg2_2) _lh_alternate_arg3_2) opposition_2)))))))))
and bestMove__d0__d0__d0 _lh_bestMove_arg1_1 _lh_bestMove_arg2_1 _lh_bestMove_arg3_1 _lh_funcomp_x_3 =
  ((fun _lh_funcomp_x_4 -> 
    (((mise__d0__d0__d3 _lh_bestMove_arg2_1) _lh_bestMove_arg3_1) (cropTree__d0__d0__d0 _lh_funcomp_x_4))) ((fun _lh_funcomp_x_5 -> 
    ((mapTree__d0__d0__d0 static__d0__d0__d0) ((searchTree__d0__d0__d0 _lh_bestMove_arg1_1) _lh_funcomp_x_5))) _lh_funcomp_x_3))
and best__d0__d0__d0 _lh_best_arg1_1 _lh_best_arg2_1 _lh_best_arg3_1 =
  (match _lh_best_arg2_1 with
    | `LH_C(_lh_best_LH_C_0_4, _lh_best_LH_C_1_4) -> 
      (match _lh_best_arg3_1 with
        | `LH_C(_lh_best_LH_C_0_5, _lh_best_LH_C_1_5) -> 
          (let rec best'_1 = (fun b_1_2 s_1 ls1_1 ls2_1 -> 
            (let rec _lh_matchIdent_1_7 = ls1_1 in
              (match _lh_matchIdent_1_7 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_8 = ls2_1 in
                    (match _lh_matchIdent_1_8 with
                      | `LH_N -> 
                        (let rec _lh_alternate_LH_P2_1_1 = s_1 in
                          (let rec _lh_alternate_LH_P2_0_1 = b_1_2 in
                            (fun _lh_alternate_arg2_3 _lh_alternate_arg3_3 opposition_3 -> 
                              (let rec t_7_1_6 = ((((alternate__d0__d0__d0 opposition_3) _lh_alternate_arg3_3) _lh_alternate_arg2_3) _lh_alternate_LH_P2_0_1) in
                                (let rec h_6_1_0 = (let rec _lh_showMove_LH_P2_1_1 = _lh_alternate_LH_P2_1_1 in
                                  (let rec _lh_showMove_LH_P2_0_1 = _lh_alternate_LH_P2_0_1 in
                                    (fun _lh_dummy_1_6_6 -> 
                                      ((mappend__d7__d0__d0 ((mappend__d8__d0__d0 (showEvaluation__d0__d0__d0 _lh_showMove_LH_P2_1_1)) (let rec t_7_1_7 = (fun ys_8_7_6 -> 
                                        ys_8_7_6) in
                                        (let rec h_6_1_1 = '|' in
                                          (fun ys_8_7_7 -> 
                                            (let rec t_7_1_8 = ((mappend__d7__d0__d1 t_7_1_7) ys_8_7_7) in
                                              (let rec h_6_1_2 = h_6_1_1 in
                                                (fun ys_8_7_8 -> 
                                                  (let rec t_7_1_9 = ((mappend__d4__d0__d0 t_7_1_8) ys_8_7_8) in
                                                    (fun _lh_dummy_1_6_7 -> 
                                                      (1 + (length__d0__d0__d1 t_7_1_9)))))))))))) (showBoard__d0__d0__d0 _lh_showMove_LH_P2_0_1))))) in
                                  (fun f_1_5_1 -> 
                                    (let rec t_7_2_0 = ((map__d1_d6__d0__d0 f_1_5_1) t_7_1_6) in
                                      (let rec h_6_1_3 = (f_1_5_1 h_6_1_0) in
                                        (fun _lh_dummy_1_6_8 -> 
                                          ((mappend__d4__d0__d1 h_6_1_3) (concat__d4__d0__d0 t_7_2_0)))))))))))
                      | _ -> 
                        (failwith "error")))
                | `LH_C(_lh_best_LH_C_0_6, _lh_best_LH_C_1_6) -> 
                  (let rec _lh_matchIdent_1_9 = ls2_1 in
                    (match _lh_matchIdent_1_9 with
                      | `LH_C(_lh_best_LH_C_0_7, _lh_best_LH_C_1_7) -> 
                        (if (s_1 = ((_lh_best_arg1_1 s_1) _lh_best_LH_C_0_7)) then
                          ((((best'_1 b_1_2) s_1) _lh_best_LH_C_1_6) _lh_best_LH_C_1_7)
                        else
                          ((((best'_1 _lh_best_LH_C_0_6) _lh_best_LH_C_0_7) _lh_best_LH_C_1_6) _lh_best_LH_C_1_7))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error")))) in
            ((((best'_1 _lh_best_LH_C_0_4) _lh_best_LH_C_0_5) _lh_best_LH_C_1_4) _lh_best_LH_C_1_5))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and concat__d2__d0__d0 lss_1_2 =
  (match lss_1_2 with
    | `LH_C(h_6_5_2, t_7_6_3) -> 
      ((mappend__d2__d0__d0 h_6_5_2) (concat__d2__d0__d0 t_7_6_3))
    | `LH_N -> 
      (fun f_1_7_2 _lh_dummy_1_7_4 -> 
        true))
and empty__d0__d0__d0 _lh_empty_arg1_3 _lh_empty_arg2_3 =
  (match _lh_empty_arg1_3 with
    | `LH_P2(_lh_empty_LH_P2_0_3, _lh_empty_LH_P2_1_3) -> 
      (match _lh_empty_LH_P2_0_3 with
        | 1 -> 
          (match _lh_empty_arg2_3 with
            | `LH_C(_lh_empty_LH_C_0_2_7, _lh_empty_LH_C_1_2_7) -> 
              (match _lh_empty_LH_C_1_2_7 with
                | `LH_C(_lh_empty_LH_C_0_2_8, _lh_empty_LH_C_1_2_8) -> 
                  (match _lh_empty_LH_C_1_2_8 with
                    | `LH_C(_lh_empty_LH_C_0_2_9, _lh_empty_LH_C_1_2_9) -> 
                      (match _lh_empty_LH_C_1_2_9 with
                        | `LH_N -> 
                          ((empty'__d2__d0__d0 _lh_empty_LH_P2_1_3) _lh_empty_LH_C_0_2_7)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_3 with
            | `LH_C(_lh_empty_LH_C_0_3_0, _lh_empty_LH_C_1_3_0) -> 
              (match _lh_empty_LH_C_1_3_0 with
                | `LH_C(_lh_empty_LH_C_0_3_1, _lh_empty_LH_C_1_3_1) -> 
                  (match _lh_empty_LH_C_1_3_1 with
                    | `LH_C(_lh_empty_LH_C_0_3_2, _lh_empty_LH_C_1_3_2) -> 
                      (match _lh_empty_LH_C_1_3_2 with
                        | `LH_N -> 
                          ((empty'__d0__d0__d0 _lh_empty_LH_P2_1_3) _lh_empty_LH_C_0_3_1)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_3 with
            | `LH_C(_lh_empty_LH_C_0_3_3, _lh_empty_LH_C_1_3_3) -> 
              (match _lh_empty_LH_C_1_3_3 with
                | `LH_C(_lh_empty_LH_C_0_3_4, _lh_empty_LH_C_1_3_4) -> 
                  (match _lh_empty_LH_C_1_3_4 with
                    | `LH_C(_lh_empty_LH_C_0_3_5, _lh_empty_LH_C_1_3_5) -> 
                      (match _lh_empty_LH_C_1_3_5 with
                        | `LH_N -> 
                          ((empty'__d1__d0__d0 _lh_empty_LH_P2_1_3) _lh_empty_LH_C_0_3_5)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and empty__d1__d0__d0 _lh_empty_arg1_4 _lh_empty_arg2_4 =
  (match _lh_empty_arg1_4 with
    | `LH_P2(_lh_empty_LH_P2_0_4, _lh_empty_LH_P2_1_4) -> 
      (match _lh_empty_LH_P2_0_4 with
        | 1 -> 
          (match _lh_empty_arg2_4 with
            | `LH_C(_lh_empty_LH_C_0_3_6, _lh_empty_LH_C_1_3_6) -> 
              (match _lh_empty_LH_C_1_3_6 with
                | `LH_C(_lh_empty_LH_C_0_3_7, _lh_empty_LH_C_1_3_7) -> 
                  (match _lh_empty_LH_C_1_3_7 with
                    | `LH_C(_lh_empty_LH_C_0_3_8, _lh_empty_LH_C_1_3_8) -> 
                      (match _lh_empty_LH_C_1_3_8 with
                        | `LH_N -> 
                          ((empty'__d5__d0__d0 _lh_empty_LH_P2_1_4) _lh_empty_LH_C_0_3_6)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_4 with
            | `LH_C(_lh_empty_LH_C_0_3_9, _lh_empty_LH_C_1_3_9) -> 
              (match _lh_empty_LH_C_1_3_9 with
                | `LH_C(_lh_empty_LH_C_0_4_0, _lh_empty_LH_C_1_4_0) -> 
                  (match _lh_empty_LH_C_1_4_0 with
                    | `LH_C(_lh_empty_LH_C_0_4_1, _lh_empty_LH_C_1_4_1) -> 
                      (match _lh_empty_LH_C_1_4_1 with
                        | `LH_N -> 
                          ((empty'__d3__d0__d0 _lh_empty_LH_P2_1_4) _lh_empty_LH_C_0_4_0)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_4 with
            | `LH_C(_lh_empty_LH_C_0_4_2, _lh_empty_LH_C_1_4_2) -> 
              (match _lh_empty_LH_C_1_4_2 with
                | `LH_C(_lh_empty_LH_C_0_4_3, _lh_empty_LH_C_1_4_3) -> 
                  (match _lh_empty_LH_C_1_4_3 with
                    | `LH_C(_lh_empty_LH_C_0_4_4, _lh_empty_LH_C_1_4_4) -> 
                      (match _lh_empty_LH_C_1_4_4 with
                        | `LH_N -> 
                          ((empty'__d4__d0__d0 _lh_empty_LH_P2_1_4) _lh_empty_LH_C_0_4_4)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and empty__d2__d0__d0 _lh_empty_arg1_5 _lh_empty_arg2_5 =
  (match _lh_empty_arg1_5 with
    | `LH_P2(_lh_empty_LH_P2_0_5, _lh_empty_LH_P2_1_5) -> 
      (match _lh_empty_LH_P2_0_5 with
        | 1 -> 
          (match _lh_empty_arg2_5 with
            | `LH_C(_lh_empty_LH_C_0_4_5, _lh_empty_LH_C_1_4_5) -> 
              (match _lh_empty_LH_C_1_4_5 with
                | `LH_C(_lh_empty_LH_C_0_4_6, _lh_empty_LH_C_1_4_6) -> 
                  (match _lh_empty_LH_C_1_4_6 with
                    | `LH_C(_lh_empty_LH_C_0_4_7, _lh_empty_LH_C_1_4_7) -> 
                      (match _lh_empty_LH_C_1_4_7 with
                        | `LH_N -> 
                          ((empty'__d8__d0__d0 _lh_empty_LH_P2_1_5) _lh_empty_LH_C_0_4_5)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 2 -> 
          (match _lh_empty_arg2_5 with
            | `LH_C(_lh_empty_LH_C_0_4_8, _lh_empty_LH_C_1_4_8) -> 
              (match _lh_empty_LH_C_1_4_8 with
                | `LH_C(_lh_empty_LH_C_0_4_9, _lh_empty_LH_C_1_4_9) -> 
                  (match _lh_empty_LH_C_1_4_9 with
                    | `LH_C(_lh_empty_LH_C_0_5_0, _lh_empty_LH_C_1_5_0) -> 
                      (match _lh_empty_LH_C_1_5_0 with
                        | `LH_N -> 
                          ((empty'__d6__d0__d0 _lh_empty_LH_P2_1_5) _lh_empty_LH_C_0_4_9)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | 3 -> 
          (match _lh_empty_arg2_5 with
            | `LH_C(_lh_empty_LH_C_0_5_1, _lh_empty_LH_C_1_5_1) -> 
              (match _lh_empty_LH_C_1_5_1 with
                | `LH_C(_lh_empty_LH_C_0_5_2, _lh_empty_LH_C_1_5_2) -> 
                  (match _lh_empty_LH_C_1_5_2 with
                    | `LH_C(_lh_empty_LH_C_0_5_3, _lh_empty_LH_C_1_5_3) -> 
                      (match _lh_empty_LH_C_1_5_3 with
                        | `LH_N -> 
                          ((empty'__d7__d0__d0 _lh_empty_LH_P2_1_5) _lh_empty_LH_C_0_5_3)
                        | _ -> 
                          (failwith "error"))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and enumFromTo__d0__d0__d0 a_8 b_9 _lh_popOutId_0_1_3 =
  (if (a_8 <= b_9) then
    (let rec _lh_listcomp_fun_ls_t_1_8 = ((enumFromTo__d0__d0__d0 (a_8 + 1)) b_9) in
      (let rec _lh_listcomp_fun_ls_h_1_8 = a_8 in
        (let rec _lh_listcomp_fun_3_5 = (fun _lh_listcomp_fun_para_8 -> 
          ((((_lh_listcomp_fun_para_8 _lh_listcomp_fun_ls_h_1_8) _lh_listcomp_fun_3_5) _lh_listcomp_fun_ls_t_1_8) _lh_popOutId_0_1_3)) in
          (_lh_listcomp_fun_3_5 ((enumFromTo__d1__d0__d0 1) 3)))))
  else
    (fun f_1_1_3 _lh_dummy_1_2_0 f_1_1_4 -> 
      (`LH_N)))
and enumFromTo__d1__d0__d0 a_1_0 b_1_1 _lh_popOutId_0_9 _lh_popOutId_1_9 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (a_1_0 <= b_1_1) then
    (fun f_1_2_7 _lh_dummy_1_5_0 -> 
      (let rec _lh_listcomp_fun_ls_t_2_0 = ((enumFromTo__d1__d0__d0 (a_1_0 + 1)) b_1_1) in
        (let rec _lh_listcomp_fun_ls_h_2_0 = a_1_0 in
          (let rec t_6_1_1 = (_lh_popOutId_1_9 _lh_listcomp_fun_ls_t_2_0) in
            (let rec h_5_1_7 = (`LH_P2(_lh_popOutId_0_9, _lh_listcomp_fun_ls_h_2_0)) in
              (let rec t_6_1_2 = ((map__d3__d0__d0 f_1_2_7) t_6_1_1) in
                (let rec h_5_1_8 = (f_1_2_7 h_5_1_7) in
                  ((mappend__d0__d0__d0 h_5_1_8) (concat__d0__d0__d1 t_6_1_2)))))))))
  else
    (_lh_popOutId_3_1 _lh_popOutId_2_1))
and enumFromTo__d2__d0__d0 a_1_1 b_1_3 _lh_popOutId_0_1_6 =
  (if (a_1_1 <= b_1_3) then
    (let rec _lh_listcomp_fun_ls_t_2_3 = ((enumFromTo__d2__d0__d0 (a_1_1 + 1)) b_1_3) in
      (let rec _lh_listcomp_fun_ls_h_2_3 = a_1_1 in
        (let rec _lh_listcomp_fun_4_6 = (fun _lh_listcomp_fun_para_1_1 -> 
          ((((_lh_listcomp_fun_para_1_1 _lh_listcomp_fun_ls_h_2_3) _lh_listcomp_fun_4_6) _lh_listcomp_fun_ls_t_2_3) _lh_popOutId_0_1_6)) in
          (_lh_listcomp_fun_4_6 ((enumFromTo__d3__d0__d0 1) 3)))))
  else
    (fun f_1_6_1 _lh_dummy_1_6_9 f_1_6_2 -> 
      (`LH_N)))
and enumFromTo__d3__d0__d0 a_6 b_7 _lh_popOutId_0_1_2 _lh_popOutId_1_1_2 _lh_popOutId_2_2 _lh_popOutId_3_2 =
  (if (a_6 <= b_7) then
    (fun f_8_0 _lh_dummy_9_6 -> 
      (let rec _lh_listcomp_fun_ls_t_1_2 = ((enumFromTo__d3__d0__d0 (a_6 + 1)) b_7) in
        (let rec _lh_listcomp_fun_ls_h_1_2 = a_6 in
          (let rec t_4_1_5 = (_lh_popOutId_1_1_2 _lh_listcomp_fun_ls_t_1_2) in
            (let rec h_3_5_4 = (`LH_P2(_lh_popOutId_0_1_2, _lh_listcomp_fun_ls_h_1_2)) in
              (let rec t_4_1_6 = ((map__d4__d0__d0 f_8_0) t_4_1_5) in
                (let rec h_3_5_5 = (f_8_0 h_3_5_4) in
                  ((mappend__d1__d0__d0 h_3_5_5) (concat__d1__d0__d1 t_4_1_6)))))))))
  else
    (_lh_popOutId_3_2 _lh_popOutId_2_2))
and enumFromTo__d4__d0__d0 a_9 b_1_0 _lh_popOutId_0_1_4 =
  (if (a_9 <= b_1_0) then
    (let rec _lh_listcomp_fun_ls_t_1_9 = ((enumFromTo__d4__d0__d0 (a_9 + 1)) b_1_0) in
      (let rec _lh_listcomp_fun_ls_h_1_9 = a_9 in
        (let rec _lh_listcomp_fun_3_8 = (fun _lh_listcomp_fun_para_9 -> 
          ((((_lh_listcomp_fun_para_9 _lh_listcomp_fun_ls_h_1_9) _lh_listcomp_fun_3_8) _lh_listcomp_fun_ls_t_1_9) _lh_popOutId_0_1_4)) in
          (_lh_listcomp_fun_3_8 ((enumFromTo__d5__d0__d0 1) 3)))))
  else
    (fun f_1_1_7 _lh_dummy_1_2_4 -> 
      (`LH_N)))
and enumFromTo__d5__d0__d0 a_7 b_8 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_7 <= b_8) then
    (fun f_1_0_9 _lh_dummy_1_1_6 -> 
      (let rec _lh_listcomp_fun_ls_t_1_5 = ((enumFromTo__d5__d0__d0 (a_7 + 1)) b_8) in
        (let rec _lh_listcomp_fun_ls_h_1_5 = a_7 in
          (let rec t_5_1_0 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_1_5) in
            (let rec h_4_3_8 = (`LH_P2(_lh_popOutId_0_0, _lh_listcomp_fun_ls_h_1_5)) in
              (let rec t_5_1_1 = ((map__d1_d1__d0__d0 f_1_0_9) t_5_1_0) in
                (let rec h_4_3_9 = (f_1_0_9 h_4_3_8) in
                  ((mappend__d3__d0__d0 h_4_3_9) (concat__d3__d0__d1 t_5_1_1)))))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0))
and eval__d0__d0__d0 _lh_eval_arg1_3 _lh_popOutId_0_1_1 _lh_popOutId_1_1_1 =
  (if (_lh_eval_arg1_3 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_3 = (0 - 3)) then
      (`OWin)
    else
      (let rec _lh_interpret_Score_0_3 = _lh_eval_arg1_3 in
        ((interpret__d0__d0__d1 (_lh_popOutId_1_1_1 + _lh_interpret_Score_0_3)) _lh_popOutId_0_1_1))))
and eval__d1__d0__d0 _lh_eval_arg1_4 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (if (_lh_eval_arg1_4 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_4 = (0 - 3)) then
      (`OWin)
    else
      (let rec _lh_interpret_Score_0_4 = _lh_eval_arg1_4 in
        ((interpret__d1__d0__d1 (_lh_popOutId_1_4 + _lh_interpret_Score_0_4)) _lh_popOutId_0_4))))
and eval__d2__d0__d0 _lh_eval_arg1_5 _lh_popOutId_0_6 _lh_popOutId_1_6 =
  (if (_lh_eval_arg1_5 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_5 = (0 - 3)) then
      (`OWin)
    else
      (let rec _lh_interpret_Score_0_5 = _lh_eval_arg1_5 in
        ((interpret__d2__d0__d1 (_lh_popOutId_1_6 + _lh_interpret_Score_0_5)) _lh_popOutId_0_6))))
and fullBoard__d0__d0__d0 _lh_fullBoard_arg1_1 =
  (and__d0__d0__d0 ((map__d9__d0__d1 (fun x_1 -> 
    (not (x_1 = (`Empty))))) (concat__d2__d0__d0 _lh_fullBoard_arg1_1)))
and map2__d0__d0__d0 _lh_map2_arg1_7 _lh_map2_arg2_7 _lh_map2_arg3_7 =
  (match _lh_map2_arg2_7 with
    | `LH_N -> 
      (fun f_9_8 _lh_dummy_1_1_3 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_7 with
        | `LH_N -> 
          (fun f_9_9 _lh_dummy_1_1_4 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_7 with
            | `LH_C(_lh_map2_LH_C_0_1_4, _lh_map2_LH_C_1_1_4) -> 
              (match _lh_map2_arg3_7 with
                | `LH_C(_lh_map2_LH_C_0_1_5, _lh_map2_LH_C_1_1_5) -> 
                  (let rec t_5_0_0 = (((map2__d0__d0__d0 _lh_map2_arg1_7) _lh_map2_LH_C_1_1_4) _lh_map2_LH_C_1_1_5) in
                    (let rec h_4_2_8 = ((_lh_map2_arg1_7 _lh_map2_LH_C_0_1_4) _lh_map2_LH_C_0_1_5) in
                      (fun f_1_0_0 -> 
                        (let rec t_5_0_1 = ((map__d8__d0__d0 f_1_0_0) t_5_0_0) in
                          (let rec h_4_2_9 = (f_1_0_0 h_4_2_8) in
                            (fun _lh_dummy_1_1_5 -> 
                              (h_4_2_9 + (sum__d0__d0__d0 t_5_0_1))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d1__d0__d0 _lh_map2_arg1_8 _lh_map2_arg2_8 _lh_map2_arg3_8 =
  (match _lh_map2_arg2_8 with
    | `LH_N -> 
      (fun _lh_dummy_1_1_7 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_8 with
        | `LH_N -> 
          (fun _lh_dummy_1_1_8 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_8 with
            | `LH_C(_lh_map2_LH_C_0_1_6, _lh_map2_LH_C_1_1_6) -> 
              (match _lh_map2_arg3_8 with
                | `LH_C(_lh_map2_LH_C_0_1_7, _lh_map2_LH_C_1_1_7) -> 
                  (let rec t_5_1_2 = (((map2__d1__d0__d0 _lh_map2_arg1_8) _lh_map2_LH_C_1_1_6) _lh_map2_LH_C_1_1_7) in
                    (let rec h_4_4_0 = ((_lh_map2_arg1_8 _lh_map2_LH_C_0_1_6) _lh_map2_LH_C_0_1_7) in
                      (fun _lh_dummy_1_1_9 -> 
                        (h_4_4_0 + (sum__d1__d0__d0 t_5_1_2)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d2__d0__d0 _lh_map2_arg1_1_1 _lh_map2_arg2_1_1 _lh_map2_arg3_1_1 =
  (match _lh_map2_arg2_1_1 with
    | `LH_N -> 
      (fun f_1_9_0 _lh_dummy_1_8_1 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_1_1 with
        | `LH_N -> 
          (fun f_1_9_1 _lh_dummy_1_8_2 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_1_1 with
            | `LH_C(_lh_map2_LH_C_0_2_2, _lh_map2_LH_C_1_2_2) -> 
              (match _lh_map2_arg3_1_1 with
                | `LH_C(_lh_map2_LH_C_0_2_3, _lh_map2_LH_C_1_2_3) -> 
                  (let rec t_8_0_2 = (((map2__d2__d0__d0 _lh_map2_arg1_1_1) _lh_map2_LH_C_1_2_2) _lh_map2_LH_C_1_2_3) in
                    (let rec h_6_8_8 = ((_lh_map2_arg1_1_1 _lh_map2_LH_C_0_2_2) _lh_map2_LH_C_0_2_3) in
                      (fun f_1_9_2 -> 
                        (let rec t_8_0_3 = ((map__d1_d3__d0__d0 f_1_9_2) t_8_0_2) in
                          (let rec h_6_8_9 = (f_1_9_2 h_6_8_8) in
                            (fun _lh_dummy_1_8_3 -> 
                              (h_6_8_9 + (sum__d2__d0__d0 t_8_0_3))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d3__d0__d0 _lh_map2_arg1_9 _lh_map2_arg2_9 _lh_map2_arg3_9 =
  (match _lh_map2_arg2_9 with
    | `LH_N -> 
      (fun _lh_dummy_1_6_3 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_9 with
        | `LH_N -> 
          (fun _lh_dummy_1_6_4 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_9 with
            | `LH_C(_lh_map2_LH_C_0_1_8, _lh_map2_LH_C_1_1_8) -> 
              (match _lh_map2_arg3_9 with
                | `LH_C(_lh_map2_LH_C_0_1_9, _lh_map2_LH_C_1_1_9) -> 
                  (let rec t_7_1_5 = (((map2__d3__d0__d0 _lh_map2_arg1_9) _lh_map2_LH_C_1_1_8) _lh_map2_LH_C_1_1_9) in
                    (let rec h_6_0_9 = ((_lh_map2_arg1_9 _lh_map2_LH_C_0_1_8) _lh_map2_LH_C_0_1_9) in
                      (fun _lh_dummy_1_6_5 -> 
                        (h_6_0_9 + (sum__d3__d0__d0 t_7_1_5)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d4__d0__d0 _lh_map2_arg1_6 _lh_map2_arg2_6 _lh_map2_arg3_6 =
  (match _lh_map2_arg2_6 with
    | `LH_N -> 
      (fun f_9_2 _lh_dummy_1_0_7 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_6 with
        | `LH_N -> 
          (fun f_9_3 _lh_dummy_1_0_8 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_6 with
            | `LH_C(_lh_map2_LH_C_0_1_2, _lh_map2_LH_C_1_1_2) -> 
              (match _lh_map2_arg3_6 with
                | `LH_C(_lh_map2_LH_C_0_1_3, _lh_map2_LH_C_1_1_3) -> 
                  (let rec t_4_7_7 = (((map2__d4__d0__d0 _lh_map2_arg1_6) _lh_map2_LH_C_1_1_2) _lh_map2_LH_C_1_1_3) in
                    (let rec h_4_0_8 = ((_lh_map2_arg1_6 _lh_map2_LH_C_0_1_2) _lh_map2_LH_C_0_1_3) in
                      (fun f_9_4 -> 
                        (let rec t_4_7_8 = ((map__d1_d5__d0__d0 f_9_4) t_4_7_7) in
                          (let rec h_4_0_9 = (f_9_4 h_4_0_8) in
                            (fun _lh_dummy_1_0_9 -> 
                              (h_4_0_9 + (sum__d4__d0__d0 t_4_7_8))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and map2__d5__d0__d0 _lh_map2_arg1_1_0 _lh_map2_arg2_1_0 _lh_map2_arg3_1_0 =
  (match _lh_map2_arg2_1_0 with
    | `LH_N -> 
      (fun _lh_dummy_1_7_8 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_1_0 with
        | `LH_N -> 
          (fun _lh_dummy_1_7_9 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_1_0 with
            | `LH_C(_lh_map2_LH_C_0_2_0, _lh_map2_LH_C_1_2_0) -> 
              (match _lh_map2_arg3_1_0 with
                | `LH_C(_lh_map2_LH_C_0_2_1, _lh_map2_LH_C_1_2_1) -> 
                  (let rec t_8_0_0 = (((map2__d5__d0__d0 _lh_map2_arg1_1_0) _lh_map2_LH_C_1_2_0) _lh_map2_LH_C_1_2_1) in
                    (let rec h_6_8_6 = ((_lh_map2_arg1_1_0 _lh_map2_LH_C_0_2_0) _lh_map2_LH_C_0_2_1) in
                      (fun _lh_dummy_1_8_0 -> 
                        (h_6_8_6 + (sum__d5__d0__d0 t_8_0_0)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))))
and mapTree__d0__d0__d0 _lh_mapTree_arg1_1 _lh_mapTree_arg2_1 =
  (match _lh_mapTree_arg2_1 with
    | `Branch(_lh_mapTree_Branch_0_1, _lh_mapTree_Branch_1_1) -> 
      (let rec _lh_cropTree_Branch_1_1 = ((map__d1__d0__d0 (mapTree__d0__d0__d0 _lh_mapTree_arg1_1)) _lh_mapTree_Branch_1_1) in
        (let rec _lh_cropTree_Branch_0_1 = (_lh_mapTree_arg1_1 _lh_mapTree_Branch_0_1) in
          (fun _lh_dummy_1_0_0 -> 
            (match _lh_cropTree_Branch_1_1 with
              | `LH_N -> 
                (let rec _lh_mise_Branch_1_3 = (`LH_N) in
                  (let rec _lh_mise_Branch_0_3 = _lh_cropTree_Branch_0_1 in
                    (fun _lh_mise_arg1_4 _lh_mise_arg2_4 -> 
                      (match _lh_mise_Branch_1_3 with
                        | `LH_N -> 
                          _lh_mise_Branch_0_3
                        | _ -> 
                          (((foldr__d0__d0__d0 _lh_mise_arg1_4) ((_lh_mise_arg2_4 (`OWin)) (`XWin))) ((map__d2__d0__d0 ((mise__d0__d0__d0 _lh_mise_arg2_4) _lh_mise_arg1_4)) _lh_mise_Branch_1_3))))))
              | _ -> 
                (match _lh_cropTree_Branch_0_1 with
                  | `Score(_lh_cropTree_Score_0_1) -> 
                    (let rec _lh_mise_Branch_1_4 = ((map__d0__d0__d0 cropTree__d0__d0__d1) _lh_cropTree_Branch_1_1) in
                      (let rec _lh_mise_Branch_0_4 = (`Score(_lh_cropTree_Score_0_1)) in
                        (fun _lh_mise_arg1_5 _lh_mise_arg2_5 -> 
                          (match _lh_mise_Branch_1_4 with
                            | `LH_N -> 
                              _lh_mise_Branch_0_4
                            | _ -> 
                              (((foldr__d0__d0__d1 _lh_mise_arg1_5) ((_lh_mise_arg2_5 (`OWin)) (`XWin))) ((map__d2__d0__d1 ((mise__d0__d0__d1 _lh_mise_arg2_5) _lh_mise_arg1_5)) _lh_mise_Branch_1_4))))))
                  | _ -> 
                    (let rec _lh_mise_Branch_1_5 = (`LH_N) in
                      (let rec _lh_mise_Branch_0_5 = _lh_cropTree_Branch_0_1 in
                        (fun _lh_mise_arg1_6 _lh_mise_arg2_6 -> 
                          (match _lh_mise_Branch_1_5 with
                            | `LH_N -> 
                              _lh_mise_Branch_0_5
                            | _ -> 
                              (((foldr__d0__d0__d2 _lh_mise_arg1_6) ((_lh_mise_arg2_6 (`OWin)) (`XWin))) ((map__d2__d0__d2 ((mise__d0__d0__d2 _lh_mise_arg2_6) _lh_mise_arg1_6)) _lh_mise_Branch_1_5)))))))))))
    | _ -> 
      (failwith "error"))
and map__d2__d0__d0 f_1_3_8 ls_1_0_7 _lh_popOutId_0_1_5 _lh_popOutId_1_1_3 =
  (match ls_1_0_7 with
    | `LH_C(h_5_4_4, t_6_4_1) -> 
      (let rec t_6_4_2 = ((map__d2__d0__d0 f_1_3_8) t_6_4_1) in
        (let rec h_5_4_5 = (f_1_3_8 h_5_4_4) in
          ((_lh_popOutId_0_1_5 h_5_4_5) (((foldr__d0__d0__d3 _lh_popOutId_0_1_5) _lh_popOutId_1_1_3) t_6_4_2))))
    | `LH_N -> 
      _lh_popOutId_1_1_3)
and map__d2__d0__d1 f_1_3_3 ls_1_0_3 _lh_popOutId_0_7 _lh_popOutId_1_7 =
  (match ls_1_0_3 with
    | `LH_C(h_5_3_7, t_6_3_4) -> 
      (let rec t_6_3_5 = ((map__d2__d0__d1 f_1_3_3) t_6_3_4) in
        (let rec h_5_3_8 = (f_1_3_3 h_5_3_7) in
          ((_lh_popOutId_0_7 h_5_3_8) (((foldr__d0__d0__d4 _lh_popOutId_0_7) _lh_popOutId_1_7) t_6_3_5))))
    | `LH_N -> 
      _lh_popOutId_1_7)
and map__d2__d0__d2 f_1_6_9 ls_1_3_7 _lh_popOutId_0_8 _lh_popOutId_1_8 =
  (match ls_1_3_7 with
    | `LH_C(h_6_5_0, t_7_6_1) -> 
      (let rec t_7_6_2 = ((map__d2__d0__d2 f_1_6_9) t_7_6_1) in
        (let rec h_6_5_1 = (f_1_6_9 h_6_5_0) in
          ((_lh_popOutId_0_8 h_6_5_1) (((foldr__d0__d0__d5 _lh_popOutId_0_8) _lh_popOutId_1_8) t_7_6_2))))
    | `LH_N -> 
      _lh_popOutId_1_8)
and mappend__d2__d0__d0 xs_9_5 ys_5_0_6 =
  (match xs_9_5 with
    | `LH_C(h_4_0_6, t_4_7_5) -> 
      (let rec t_4_7_6 = ((mappend__d2__d0__d0 t_4_7_5) ys_5_0_6) in
        (let rec h_4_0_7 = h_4_0_6 in
          (fun f_9_0 -> 
            (let rec _lh_and_LH_C_1_1 = ((map__d9__d0__d0 f_9_0) t_4_7_6) in
              (let rec _lh_and_LH_C_0_1 = (f_9_0 h_4_0_7) in
                (fun _lh_dummy_1_0_6 -> 
                  (if _lh_and_LH_C_0_1 then
                    (and__d0__d0__d1 _lh_and_LH_C_1_1)
                  else
                    false)))))))
    | `LH_N -> 
      ys_5_0_6)
and mappend__d8__d0__d0 xs_1_5_7 ys_6_0_5 =
  (match xs_1_5_7 with
    | `LH_C(h_4_4_8, t_5_2_3) -> 
      (let rec t_5_2_4 = ((mappend__d8__d0__d0 t_5_2_3) ys_6_0_5) in
        (let rec h_4_4_9 = h_4_4_8 in
          (fun ys_6_0_6 -> 
            (let rec t_5_2_5 = ((mappend__d7__d0__d2 t_5_2_4) ys_6_0_6) in
              (let rec h_4_5_0 = h_4_4_9 in
                (fun ys_6_0_7 -> 
                  (let rec t_5_2_6 = ((mappend__d4__d0__d2 t_5_2_5) ys_6_0_7) in
                    (fun _lh_dummy_1_3_1 -> 
                      (1 + (length__d0__d0__d2 t_5_2_6))))))))))
    | `LH_N -> 
      ys_6_0_5)
and newPositions__d0__d0__d0 _lh_newPositions_arg1_4 _lh_newPositions_arg2_4 =
  (concat__d0__d0__d0 ((map__d3__d0__d1 ((placePiece__d0__d0__d0 _lh_newPositions_arg1_4) _lh_newPositions_arg2_4)) (let rec _lh_listcomp_fun_3_3 = (fun _lh_listcomp_fun_para_7 -> 
    (_lh_listcomp_fun_para_7 _lh_listcomp_fun_3_3)) in
    (_lh_listcomp_fun_3_3 ((enumFromTo__d0__d0__d0 1) 3)))))
and newPositions__d1__d0__d0 _lh_newPositions_arg1_5 _lh_newPositions_arg2_5 =
  (concat__d1__d0__d0 ((map__d4__d0__d1 ((placePiece__d1__d0__d0 _lh_newPositions_arg1_5) _lh_newPositions_arg2_5)) (let rec _lh_listcomp_fun_4_4 = (fun _lh_listcomp_fun_para_1_0 -> 
    (_lh_listcomp_fun_para_1_0 _lh_listcomp_fun_4_4)) in
    (_lh_listcomp_fun_4_4 ((enumFromTo__d2__d0__d0 1) 3)))))
and newPositions__d2__d0__d0 _lh_newPositions_arg1_3 _lh_newPositions_arg2_3 =
  (concat__d3__d0__d0 ((map__d1_d1__d0__d1 ((placePiece__d2__d0__d0 _lh_newPositions_arg1_3) _lh_newPositions_arg2_3)) (let rec _lh_listcomp_fun_2_8 = (fun _lh_listcomp_fun_para_6 -> 
    (_lh_listcomp_fun_para_6 _lh_listcomp_fun_2_8)) in
    (_lh_listcomp_fun_2_8 ((enumFromTo__d4__d0__d0 1) 3)))))
and placePiece__d0__d0__d0 _lh_placePiece_arg1_5 _lh_placePiece_arg2_5 _lh_placePiece_arg3_5 =
  (if (not ((empty__d0__d0__d0 _lh_placePiece_arg3_5) _lh_placePiece_arg2_5)) then
    (fun ys_7_9_8 -> 
      ys_7_9_8)
  else
    (let rec _lh_matchIdent_1_5 = _lh_placePiece_arg2_5 in
      (match _lh_matchIdent_1_5 with
        | `LH_C(_lh_placePiece_LH_C_0_1_5, _lh_placePiece_LH_C_1_1_5) -> 
          (match _lh_placePiece_LH_C_1_1_5 with
            | `LH_C(_lh_placePiece_LH_C_0_1_6, _lh_placePiece_LH_C_1_1_6) -> 
              (match _lh_placePiece_LH_C_1_1_6 with
                | `LH_C(_lh_placePiece_LH_C_0_1_7, _lh_placePiece_LH_C_1_1_7) -> 
                  (match _lh_placePiece_LH_C_1_1_7 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_1_6 = _lh_placePiece_arg3_5 in
                        (match _lh_matchIdent_1_6 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_5, _lh_placePiece_LH_P2_1_5) -> 
                            (match _lh_placePiece_LH_P2_0_5 with
                              | 1 -> 
                                (let rec t_6_6_1 = (fun ys_7_9_9 -> 
                                  ys_7_9_9) in
                                  (let rec h_5_6_1 = (`LH_C((((insert__d0__d0__d0 _lh_placePiece_arg1_5) _lh_placePiece_LH_C_0_1_5) _lh_placePiece_LH_P2_1_5), (`LH_C(_lh_placePiece_LH_C_0_1_6, (`LH_C(_lh_placePiece_LH_C_0_1_7, (`LH_N))))))) in
                                    (fun ys_8_0_0 -> 
                                      (let rec t_6_6_2 = ((mappend__d0__d0__d1 t_6_6_1) ys_8_0_0) in
                                        (let rec h_5_6_2 = h_5_6_1 in
                                          (fun f_1_4_4 -> 
                                            (`LH_C((f_1_4_4 h_5_6_2), ((map__d6__d0__d0 f_1_4_4) t_6_6_2)))))))))
                              | 2 -> 
                                (let rec t_6_6_3 = (fun ys_8_0_1 -> 
                                  ys_8_0_1) in
                                  (let rec h_5_6_3 = (`LH_C(_lh_placePiece_LH_C_0_1_5, (`LH_C((((insert__d1__d0__d0 _lh_placePiece_arg1_5) _lh_placePiece_LH_C_0_1_6) _lh_placePiece_LH_P2_1_5), (`LH_C(_lh_placePiece_LH_C_0_1_7, (`LH_N))))))) in
                                    (fun ys_8_0_2 -> 
                                      (let rec t_6_6_4 = ((mappend__d0__d0__d2 t_6_6_3) ys_8_0_2) in
                                        (let rec h_5_6_4 = h_5_6_3 in
                                          (fun f_1_4_5 -> 
                                            (`LH_C((f_1_4_5 h_5_6_4), ((map__d6__d0__d1 f_1_4_5) t_6_6_4)))))))))
                              | 3 -> 
                                (let rec t_6_6_5 = (fun ys_8_0_3 -> 
                                  ys_8_0_3) in
                                  (let rec h_5_6_5 = (`LH_C(_lh_placePiece_LH_C_0_1_5, (`LH_C(_lh_placePiece_LH_C_0_1_6, (`LH_C((((insert__d2__d0__d0 _lh_placePiece_arg1_5) _lh_placePiece_LH_C_0_1_7) _lh_placePiece_LH_P2_1_5), (`LH_N))))))) in
                                    (fun ys_8_0_4 -> 
                                      (let rec t_6_6_6 = ((mappend__d0__d0__d3 t_6_6_5) ys_8_0_4) in
                                        (let rec h_5_6_6 = h_5_6_5 in
                                          (fun f_1_4_6 -> 
                                            (`LH_C((f_1_4_6 h_5_6_6), ((map__d6__d0__d2 f_1_4_6) t_6_6_6)))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and placePiece__d1__d0__d0 _lh_placePiece_arg1_4 _lh_placePiece_arg2_4 _lh_placePiece_arg3_4 =
  (if (not ((empty__d1__d0__d0 _lh_placePiece_arg3_4) _lh_placePiece_arg2_4)) then
    (fun ys_5_4_2 -> 
      ys_5_4_2)
  else
    (let rec _lh_matchIdent_1_2 = _lh_placePiece_arg2_4 in
      (match _lh_matchIdent_1_2 with
        | `LH_C(_lh_placePiece_LH_C_0_1_2, _lh_placePiece_LH_C_1_1_2) -> 
          (match _lh_placePiece_LH_C_1_1_2 with
            | `LH_C(_lh_placePiece_LH_C_0_1_3, _lh_placePiece_LH_C_1_1_3) -> 
              (match _lh_placePiece_LH_C_1_1_3 with
                | `LH_C(_lh_placePiece_LH_C_0_1_4, _lh_placePiece_LH_C_1_1_4) -> 
                  (match _lh_placePiece_LH_C_1_1_4 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_1_3 = _lh_placePiece_arg3_4 in
                        (match _lh_matchIdent_1_3 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_4, _lh_placePiece_LH_P2_1_4) -> 
                            (match _lh_placePiece_LH_P2_0_4 with
                              | 1 -> 
                                (let rec t_5_0_3 = (fun ys_5_4_3 -> 
                                  ys_5_4_3) in
                                  (let rec h_4_3_1 = (`LH_C((((insert__d3__d0__d0 _lh_placePiece_arg1_4) _lh_placePiece_LH_C_0_1_2) _lh_placePiece_LH_P2_1_4), (`LH_C(_lh_placePiece_LH_C_0_1_3, (`LH_C(_lh_placePiece_LH_C_0_1_4, (`LH_N))))))) in
                                    (fun ys_5_4_4 -> 
                                      (let rec t_5_0_4 = ((mappend__d1__d0__d1 t_5_0_3) ys_5_4_4) in
                                        (let rec h_4_3_2 = h_4_3_1 in
                                          (fun f_1_0_3 -> 
                                            (`LH_C((f_1_0_3 h_4_3_2), ((map__d6__d0__d3 f_1_0_3) t_5_0_4)))))))))
                              | 2 -> 
                                (let rec t_5_0_5 = (fun ys_5_4_5 -> 
                                  ys_5_4_5) in
                                  (let rec h_4_3_3 = (`LH_C(_lh_placePiece_LH_C_0_1_2, (`LH_C((((insert__d4__d0__d0 _lh_placePiece_arg1_4) _lh_placePiece_LH_C_0_1_3) _lh_placePiece_LH_P2_1_4), (`LH_C(_lh_placePiece_LH_C_0_1_4, (`LH_N))))))) in
                                    (fun ys_5_4_6 -> 
                                      (let rec t_5_0_6 = ((mappend__d1__d0__d2 t_5_0_5) ys_5_4_6) in
                                        (let rec h_4_3_4 = h_4_3_3 in
                                          (fun f_1_0_4 -> 
                                            (`LH_C((f_1_0_4 h_4_3_4), ((map__d6__d0__d4 f_1_0_4) t_5_0_6)))))))))
                              | 3 -> 
                                (let rec t_5_0_7 = (fun ys_5_4_7 -> 
                                  ys_5_4_7) in
                                  (let rec h_4_3_5 = (`LH_C(_lh_placePiece_LH_C_0_1_2, (`LH_C(_lh_placePiece_LH_C_0_1_3, (`LH_C((((insert__d5__d0__d0 _lh_placePiece_arg1_4) _lh_placePiece_LH_C_0_1_4) _lh_placePiece_LH_P2_1_4), (`LH_N))))))) in
                                    (fun ys_5_4_8 -> 
                                      (let rec t_5_0_8 = ((mappend__d1__d0__d3 t_5_0_7) ys_5_4_8) in
                                        (let rec h_4_3_6 = h_4_3_5 in
                                          (fun f_1_0_5 -> 
                                            (`LH_C((f_1_0_5 h_4_3_6), ((map__d6__d0__d5 f_1_0_5) t_5_0_8)))))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and placePiece__d2__d0__d0 _lh_placePiece_arg1_3 _lh_placePiece_arg2_3 _lh_placePiece_arg3_3 =
  (if (not ((empty__d2__d0__d0 _lh_placePiece_arg3_3) _lh_placePiece_arg2_3)) then
    (fun ys_3_8_7 -> 
      ys_3_8_7)
  else
    (let rec _lh_matchIdent_1_0 = _lh_placePiece_arg2_3 in
      (match _lh_matchIdent_1_0 with
        | `LH_C(_lh_placePiece_LH_C_0_9, _lh_placePiece_LH_C_1_9) -> 
          (match _lh_placePiece_LH_C_1_9 with
            | `LH_C(_lh_placePiece_LH_C_0_1_0, _lh_placePiece_LH_C_1_1_0) -> 
              (match _lh_placePiece_LH_C_1_1_0 with
                | `LH_C(_lh_placePiece_LH_C_0_1_1, _lh_placePiece_LH_C_1_1_1) -> 
                  (match _lh_placePiece_LH_C_1_1_1 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_1_1 = _lh_placePiece_arg3_3 in
                        (match _lh_matchIdent_1_1 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_3, _lh_placePiece_LH_P2_1_3) -> 
                            (match _lh_placePiece_LH_P2_0_3 with
                              | 1 -> 
                                (let rec t_4_0_4 = (fun ys_3_8_8 -> 
                                  ys_3_8_8) in
                                  (let rec h_3_4_7 = (`LH_C((((insert__d6__d0__d0 _lh_placePiece_arg1_3) _lh_placePiece_LH_C_0_9) _lh_placePiece_LH_P2_1_3), (`LH_C(_lh_placePiece_LH_C_0_1_0, (`LH_C(_lh_placePiece_LH_C_0_1_1, (`LH_N))))))) in
                                    (fun ys_3_8_9 -> 
                                      (`LH_C(h_3_4_7, ((mappend__d3__d0__d1 t_4_0_4) ys_3_8_9))))))
                              | 2 -> 
                                (let rec t_4_0_5 = (fun ys_3_9_0 -> 
                                  ys_3_9_0) in
                                  (let rec h_3_4_8 = (`LH_C(_lh_placePiece_LH_C_0_9, (`LH_C((((insert__d7__d0__d0 _lh_placePiece_arg1_3) _lh_placePiece_LH_C_0_1_0) _lh_placePiece_LH_P2_1_3), (`LH_C(_lh_placePiece_LH_C_0_1_1, (`LH_N))))))) in
                                    (fun ys_3_9_1 -> 
                                      (`LH_C(h_3_4_8, ((mappend__d3__d0__d2 t_4_0_5) ys_3_9_1))))))
                              | 3 -> 
                                (let rec t_4_0_6 = (fun ys_3_9_2 -> 
                                  ys_3_9_2) in
                                  (let rec h_3_4_9 = (`LH_C(_lh_placePiece_LH_C_0_9, (`LH_C(_lh_placePiece_LH_C_0_1_0, (`LH_C((((insert__d8__d0__d0 _lh_placePiece_arg1_3) _lh_placePiece_LH_C_0_1_1) _lh_placePiece_LH_P2_1_3), (`LH_N))))))) in
                                    (fun ys_3_9_3 -> 
                                      (`LH_C(h_3_4_9, ((mappend__d3__d0__d3 t_4_0_6) ys_3_9_3))))))
                              | _ -> 
                                (failwith "error"))
                          | _ -> 
                            (failwith "error")))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))))
and prog__d0__d0__d0 _lh_prog_arg1_1 =
  (let rec board_1 = (fun _lh_board_arg1_1 -> 
    (match _lh_board_arg1_1 with
      | `LH_C(_lh_board_LH_C_0_1_3, _lh_board_LH_C_1_1_3) -> 
        (match _lh_board_LH_C_0_1_3 with
          | 'd' -> 
            (match _lh_board_LH_C_1_1_3 with
              | `LH_C(_lh_board_LH_C_0_1_4, _lh_board_LH_C_1_1_4) -> 
                (match _lh_board_LH_C_0_1_4 with
                  | 'o' -> 
                    (match _lh_board_LH_C_1_1_4 with
                      | `LH_C(_lh_board_LH_C_0_1_5, _lh_board_LH_C_1_1_5) -> 
                        (match _lh_board_LH_C_0_1_5 with
                          | 'e' -> 
                            (match _lh_board_LH_C_1_1_5 with
                              | `LH_C(_lh_board_LH_C_0_1_6, _lh_board_LH_C_1_1_6) -> 
                                (match _lh_board_LH_C_0_1_6 with
                                  | 's' -> 
                                    (match _lh_board_LH_C_1_1_6 with
                                      | `LH_C(_lh_board_LH_C_0_1_7, _lh_board_LH_C_1_1_7) -> 
                                        (match _lh_board_LH_C_0_1_7 with
                                          | 'n' -> 
                                            (match _lh_board_LH_C_1_1_7 with
                                              | `LH_C(_lh_board_LH_C_0_1_8, _lh_board_LH_C_1_1_8) -> 
                                                (match _lh_board_LH_C_0_1_8 with
                                                  | 't' -> 
                                                    (match _lh_board_LH_C_1_1_8 with
                                                      | `LH_C(_lh_board_LH_C_0_1_9, _lh_board_LH_C_1_1_9) -> 
                                                        (match _lh_board_LH_C_0_1_9 with
                                                          | ' ' -> 
                                                            (match _lh_board_LH_C_1_1_9 with
                                                              | `LH_C(_lh_board_LH_C_0_2_0, _lh_board_LH_C_1_2_0) -> 
                                                                (match _lh_board_LH_C_0_2_0 with
                                                                  | 'h' -> 
                                                                    (match _lh_board_LH_C_1_2_0 with
                                                                      | `LH_C(_lh_board_LH_C_0_2_1, _lh_board_LH_C_1_2_1) -> 
                                                                        (match _lh_board_LH_C_0_2_1 with
                                                                          | 'a' -> 
                                                                            (match _lh_board_LH_C_1_2_1 with
                                                                              | `LH_C(_lh_board_LH_C_0_2_2, _lh_board_LH_C_1_2_2) -> 
                                                                                (match _lh_board_LH_C_0_2_2 with
                                                                                  | 'p' -> 
                                                                                    (match _lh_board_LH_C_1_2_2 with
                                                                                      | `LH_C(_lh_board_LH_C_0_2_3, _lh_board_LH_C_1_2_3) -> 
                                                                                        (match _lh_board_LH_C_0_2_3 with
                                                                                          | 'p' -> 
                                                                                            (match _lh_board_LH_C_1_2_3 with
                                                                                              | `LH_C(_lh_board_LH_C_0_2_4, _lh_board_LH_C_1_2_4) -> 
                                                                                                (match _lh_board_LH_C_0_2_4 with
                                                                                                  | 'e' -> 
                                                                                                    (match _lh_board_LH_C_1_2_4 with
                                                                                                      | `LH_C(_lh_board_LH_C_0_2_5, _lh_board_LH_C_1_2_5) -> 
                                                                                                        (match _lh_board_LH_C_0_2_5 with
                                                                                                          | 'n' -> 
                                                                                                            (match _lh_board_LH_C_1_2_5 with
                                                                                                              | `LH_N -> 
                                                                                                                ((mappend__d5__d0__d0 testBoard__d1__d0__d0) testBoard__d2__d0__d0)
                                                                                                              | _ -> 
                                                                                                                testBoard__d0__d0__d0)
                                                                                                          | _ -> 
                                                                                                            testBoard__d0__d1__d0)
                                                                                                      | _ -> 
                                                                                                        testBoard__d0__d2__d0)
                                                                                                  | _ -> 
                                                                                                    testBoard__d0__d3__d0)
                                                                                              | _ -> 
                                                                                                testBoard__d0__d4__d0)
                                                                                          | _ -> 
                                                                                            testBoard__d0__d5__d0)
                                                                                      | _ -> 
                                                                                        testBoard__d0__d6__d0)
                                                                                  | _ -> 
                                                                                    testBoard__d0__d7__d0)
                                                                              | _ -> 
                                                                                testBoard__d0__d8__d0)
                                                                          | _ -> 
                                                                            testBoard__d0__d9__d0)
                                                                      | _ -> 
                                                                        testBoard__d0__d1_d0__d0)
                                                                  | _ -> 
                                                                    testBoard__d0__d1_d1__d0)
                                                              | _ -> 
                                                                testBoard__d0__d1_d2__d0)
                                                          | _ -> 
                                                            testBoard__d0__d1_d3__d0)
                                                      | _ -> 
                                                        testBoard__d0__d1_d4__d0)
                                                  | _ -> 
                                                    testBoard__d0__d1_d5__d0)
                                              | _ -> 
                                                testBoard__d0__d1_d6__d0)
                                          | _ -> 
                                            testBoard__d0__d1_d7__d0)
                                      | _ -> 
                                        testBoard__d0__d1_d8__d0)
                                  | _ -> 
                                    testBoard__d0__d1_d9__d0)
                              | _ -> 
                                testBoard__d0__d2_d0__d0)
                          | _ -> 
                            testBoard__d0__d2_d1__d0)
                      | _ -> 
                        testBoard__d0__d2_d2__d0)
                  | _ -> 
                    testBoard__d0__d2_d3__d0)
              | _ -> 
                testBoard__d0__d2_d4__d0)
          | _ -> 
            testBoard__d0__d2_d5__d0)
      | _ -> 
        testBoard__d0__d2_d6__d0)) in
    (let rec game_1 = ((((alternate__d0__d0__d0 (`X)) max'__d0__d0__d0) min'__d0__d0__d0) (board_1 _lh_prog_arg1_1)) in
      ((mappend__d6__d0__d0 (let rec t_4_0_7 = (let rec t_4_0_8 = (let rec t_4_0_9 = (let rec t_4_1_0 = (fun ys_3_9_7 -> 
        ys_3_9_7) in
        (let rec h_3_5_0 = '|' in
          (fun ys_3_9_8 -> 
            (let rec t_4_1_1 = ((mappend__d6__d0__d1 t_4_1_0) ys_3_9_8) in
              (fun _lh_dummy_9_2 -> 
                (1 + (length__d0__d0__d5_d4 t_4_1_1))))))) in
        (let rec h_3_5_1 = 'O' in
          (fun ys_3_9_9 -> 
            (let rec t_4_1_2 = ((mappend__d6__d0__d2 t_4_0_9) ys_3_9_9) in
              (fun _lh_dummy_9_3 -> 
                (1 + (length__d0__d0__d5_d5 t_4_1_2))))))) in
        (let rec h_3_5_2 = 'X' in
          (fun ys_4_0_0 -> 
            (let rec t_4_1_3 = ((mappend__d6__d0__d3 t_4_0_8) ys_4_0_0) in
              (fun _lh_dummy_9_4 -> 
                (1 + (length__d0__d0__d5_d6 t_4_1_3))))))) in
        (let rec h_3_5_3 = 'O' in
          (fun ys_4_0_1 -> 
            (let rec t_4_1_4 = ((mappend__d6__d0__d4 t_4_0_7) ys_4_0_1) in
              (fun _lh_dummy_9_5 -> 
                (1 + (length__d0__d0__d5_d7 t_4_1_4)))))))) (concat__d4__d0__d1 ((map__d1_d6__d0__d1 showMove__d0__d0__d0) game_1)))))
and prune__d0__d0__d0 _lh_prune_arg1_1 _lh_prune_arg2_1 =
  (match _lh_prune_arg1_1 with
    | 0 -> 
      (match _lh_prune_arg2_1 with
        | `Branch(_lh_prune_Branch_0_3, _lh_prune_Branch_1_3) -> 
          (`Branch(_lh_prune_Branch_0_3, (`LH_N)))
        | _ -> 
          (match _lh_prune_arg2_1 with
            | `Branch(_lh_prune_Branch_0_4, _lh_prune_Branch_1_4) -> 
              (if (_lh_prune_arg1_1 < 0) then
                ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
              else
                (`Branch(_lh_prune_Branch_0_4, ((map__d5__d0__d0 (prune__d0__d0__d0 (_lh_prune_arg1_1 - 1))) _lh_prune_Branch_1_4))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (match _lh_prune_arg2_1 with
        | `Branch(_lh_prune_Branch_0_5, _lh_prune_Branch_1_5) -> 
          (if (_lh_prune_arg1_1 < 0) then
            ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
          else
            (`Branch(_lh_prune_Branch_0_5, ((map__d5__d1__d0 (prune__d0__d0__d0 (_lh_prune_arg1_1 - 1))) _lh_prune_Branch_1_5))))
        | _ -> 
          (failwith "error")))
and repTree__d0__d0__d0 _lh_repTree_arg1_1 _lh_repTree_arg2_1 _lh_repTree_arg3_1 =
  (`Branch(_lh_repTree_arg3_1, ((map__d6__d0__d6 ((repTree__d0__d0__d0 _lh_repTree_arg2_1) _lh_repTree_arg1_1)) (_lh_repTree_arg1_1 _lh_repTree_arg3_1))))
and score__d0__d0__d0 _lh_score_arg1_3 _lh_score_arg2_3 =
  (eval__d0__d0__d0 (sum__d0__d0__d1 ((map__d8__d0__d1 sum__d1__d0__d1) (((map2__d0__d0__d0 (map2__d1__d0__d0 scorePiece__d0__d0__d0)) _lh_score_arg1_3) _lh_score_arg2_3))))
and score__d1__d0__d0 _lh_score_arg1_5 _lh_score_arg2_5 =
  (eval__d1__d0__d0 (sum__d2__d0__d1 ((map__d1_d3__d0__d1 sum__d3__d0__d1) (((map2__d2__d0__d0 (map2__d3__d0__d0 scorePiece__d1__d0__d0)) _lh_score_arg1_5) _lh_score_arg2_5))))
and score__d2__d0__d0 _lh_score_arg1_4 _lh_score_arg2_4 =
  (eval__d2__d0__d0 (sum__d4__d0__d1 ((map__d1_d5__d0__d1 sum__d5__d0__d1) (((map2__d4__d0__d0 (map2__d5__d0__d0 scorePiece__d2__d0__d0)) _lh_score_arg1_4) _lh_score_arg2_4))))
and searchTree__d0__d0__d0 _lh_searchTree_arg1_1 _lh_searchTree_arg2_1 =
  ((prune__d0__d0__d0 5) (((repTree__d0__d0__d0 (newPositions__d0__d0__d0 _lh_searchTree_arg1_1)) (newPositions__d1__d0__d0 (opposite__d0__d0__d0 _lh_searchTree_arg1_1))) _lh_searchTree_arg2_1))
and showBoard__d0__d0__d0 _lh_showBoard_arg1_1 =
  (match _lh_showBoard_arg1_1 with
    | `LH_C(_lh_showBoard_LH_C_0_3, _lh_showBoard_LH_C_1_3) -> 
      (match _lh_showBoard_LH_C_1_3 with
        | `LH_C(_lh_showBoard_LH_C_0_4, _lh_showBoard_LH_C_1_4) -> 
          (match _lh_showBoard_LH_C_1_4 with
            | `LH_C(_lh_showBoard_LH_C_0_5, _lh_showBoard_LH_C_1_5) -> 
              (match _lh_showBoard_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend__d9__d0__d0 ((mappend__d1_d0__d0__d0 ((mappend__d1_d1__d0__d0 ((mappend__d1_d2__d0__d0 ((mappend__d1_d3__d0__d0 (showRow__d0__d0__d0 _lh_showBoard_LH_C_0_3)) (let rec t_5_2_7 = (let rec t_5_2_8 = (let rec t_5_2_9 = (let rec t_5_3_0 = (let rec t_5_3_1 = (let rec t_5_3_2 = (let rec t_5_3_3 = (let rec t_5_3_4 = (fun ys_6_1_4 -> 
                    ys_6_1_4) in
                    (let rec h_4_5_1 = '|' in
                      (fun ys_6_1_5 -> 
                        (let rec t_5_3_5 = ((mappend__d1_d2__d0__d1 t_5_3_4) ys_6_1_5) in
                          (let rec h_4_5_2 = h_4_5_1 in
                            (fun ys_6_1_6 -> 
                              (let rec t_5_3_6 = ((mappend__d1_d1__d0__d1 t_5_3_5) ys_6_1_6) in
                                (let rec h_4_5_3 = h_4_5_2 in
                                  (fun ys_6_1_7 -> 
                                    (let rec t_5_3_7 = ((mappend__d1_d0__d0__d1 t_5_3_6) ys_6_1_7) in
                                      (let rec h_4_5_4 = h_4_5_3 in
                                        (fun ys_6_1_8 -> 
                                          (let rec t_5_3_8 = ((mappend__d9__d0__d1 t_5_3_7) ys_6_1_8) in
                                            (let rec h_4_5_5 = h_4_5_4 in
                                              (fun ys_6_1_9 -> 
                                                (let rec t_5_3_9 = ((mappend__d4__d0__d3 t_5_3_8) ys_6_1_9) in
                                                  (fun _lh_dummy_1_3_2 -> 
                                                    (1 + (length__d0__d0__d3 t_5_3_9))))))))))))))))))) in
                    (let rec h_4_5_6 = '-' in
                      (fun ys_6_2_0 -> 
                        (let rec t_5_4_0 = ((mappend__d1_d2__d0__d2 t_5_3_3) ys_6_2_0) in
                          (let rec h_4_5_7 = h_4_5_6 in
                            (fun ys_6_2_1 -> 
                              (let rec t_5_4_1 = ((mappend__d1_d1__d0__d2 t_5_4_0) ys_6_2_1) in
                                (let rec h_4_5_8 = h_4_5_7 in
                                  (fun ys_6_2_2 -> 
                                    (let rec t_5_4_2 = ((mappend__d1_d0__d0__d2 t_5_4_1) ys_6_2_2) in
                                      (let rec h_4_5_9 = h_4_5_8 in
                                        (fun ys_6_2_3 -> 
                                          (let rec t_5_4_3 = ((mappend__d9__d0__d2 t_5_4_2) ys_6_2_3) in
                                            (let rec h_4_6_0 = h_4_5_9 in
                                              (fun ys_6_2_4 -> 
                                                (let rec t_5_4_4 = ((mappend__d4__d0__d4 t_5_4_3) ys_6_2_4) in
                                                  (fun _lh_dummy_1_3_3 -> 
                                                    (1 + (length__d0__d0__d4 t_5_4_4))))))))))))))))))) in
                    (let rec h_4_6_1 = '-' in
                      (fun ys_6_2_5 -> 
                        (let rec t_5_4_5 = ((mappend__d1_d2__d0__d3 t_5_3_2) ys_6_2_5) in
                          (let rec h_4_6_2 = h_4_6_1 in
                            (fun ys_6_2_6 -> 
                              (let rec t_5_4_6 = ((mappend__d1_d1__d0__d3 t_5_4_5) ys_6_2_6) in
                                (let rec h_4_6_3 = h_4_6_2 in
                                  (fun ys_6_2_7 -> 
                                    (let rec t_5_4_7 = ((mappend__d1_d0__d0__d3 t_5_4_6) ys_6_2_7) in
                                      (let rec h_4_6_4 = h_4_6_3 in
                                        (fun ys_6_2_8 -> 
                                          (let rec t_5_4_8 = ((mappend__d9__d0__d3 t_5_4_7) ys_6_2_8) in
                                            (let rec h_4_6_5 = h_4_6_4 in
                                              (fun ys_6_2_9 -> 
                                                (let rec t_5_4_9 = ((mappend__d4__d0__d5 t_5_4_8) ys_6_2_9) in
                                                  (fun _lh_dummy_1_3_4 -> 
                                                    (1 + (length__d0__d0__d5 t_5_4_9))))))))))))))))))) in
                    (let rec h_4_6_6 = '-' in
                      (fun ys_6_3_0 -> 
                        (let rec t_5_5_0 = ((mappend__d1_d2__d0__d4 t_5_3_1) ys_6_3_0) in
                          (let rec h_4_6_7 = h_4_6_6 in
                            (fun ys_6_3_1 -> 
                              (let rec t_5_5_1 = ((mappend__d1_d1__d0__d4 t_5_5_0) ys_6_3_1) in
                                (let rec h_4_6_8 = h_4_6_7 in
                                  (fun ys_6_3_2 -> 
                                    (let rec t_5_5_2 = ((mappend__d1_d0__d0__d4 t_5_5_1) ys_6_3_2) in
                                      (let rec h_4_6_9 = h_4_6_8 in
                                        (fun ys_6_3_3 -> 
                                          (let rec t_5_5_3 = ((mappend__d9__d0__d4 t_5_5_2) ys_6_3_3) in
                                            (let rec h_4_7_0 = h_4_6_9 in
                                              (fun ys_6_3_4 -> 
                                                (let rec t_5_5_4 = ((mappend__d4__d0__d6 t_5_5_3) ys_6_3_4) in
                                                  (fun _lh_dummy_1_3_5 -> 
                                                    (1 + (length__d0__d0__d6 t_5_5_4))))))))))))))))))) in
                    (let rec h_4_7_1 = '-' in
                      (fun ys_6_3_5 -> 
                        (let rec t_5_5_5 = ((mappend__d1_d2__d0__d5 t_5_3_0) ys_6_3_5) in
                          (let rec h_4_7_2 = h_4_7_1 in
                            (fun ys_6_3_6 -> 
                              (let rec t_5_5_6 = ((mappend__d1_d1__d0__d5 t_5_5_5) ys_6_3_6) in
                                (let rec h_4_7_3 = h_4_7_2 in
                                  (fun ys_6_3_7 -> 
                                    (let rec t_5_5_7 = ((mappend__d1_d0__d0__d5 t_5_5_6) ys_6_3_7) in
                                      (let rec h_4_7_4 = h_4_7_3 in
                                        (fun ys_6_3_8 -> 
                                          (let rec t_5_5_8 = ((mappend__d9__d0__d5 t_5_5_7) ys_6_3_8) in
                                            (let rec h_4_7_5 = h_4_7_4 in
                                              (fun ys_6_3_9 -> 
                                                (let rec t_5_5_9 = ((mappend__d4__d0__d7 t_5_5_8) ys_6_3_9) in
                                                  (fun _lh_dummy_1_3_6 -> 
                                                    (1 + (length__d0__d0__d7 t_5_5_9))))))))))))))))))) in
                    (let rec h_4_7_6 = '-' in
                      (fun ys_6_4_0 -> 
                        (let rec t_5_6_0 = ((mappend__d1_d2__d0__d6 t_5_2_9) ys_6_4_0) in
                          (let rec h_4_7_7 = h_4_7_6 in
                            (fun ys_6_4_1 -> 
                              (let rec t_5_6_1 = ((mappend__d1_d1__d0__d6 t_5_6_0) ys_6_4_1) in
                                (let rec h_4_7_8 = h_4_7_7 in
                                  (fun ys_6_4_2 -> 
                                    (let rec t_5_6_2 = ((mappend__d1_d0__d0__d6 t_5_6_1) ys_6_4_2) in
                                      (let rec h_4_7_9 = h_4_7_8 in
                                        (fun ys_6_4_3 -> 
                                          (let rec t_5_6_3 = ((mappend__d9__d0__d6 t_5_6_2) ys_6_4_3) in
                                            (let rec h_4_8_0 = h_4_7_9 in
                                              (fun ys_6_4_4 -> 
                                                (let rec t_5_6_4 = ((mappend__d4__d0__d8 t_5_6_3) ys_6_4_4) in
                                                  (fun _lh_dummy_1_3_7 -> 
                                                    (1 + (length__d0__d0__d8 t_5_6_4))))))))))))))))))) in
                    (let rec h_4_8_1 = '-' in
                      (fun ys_6_4_5 -> 
                        (let rec t_5_6_5 = ((mappend__d1_d2__d0__d7 t_5_2_8) ys_6_4_5) in
                          (let rec h_4_8_2 = h_4_8_1 in
                            (fun ys_6_4_6 -> 
                              (let rec t_5_6_6 = ((mappend__d1_d1__d0__d7 t_5_6_5) ys_6_4_6) in
                                (let rec h_4_8_3 = h_4_8_2 in
                                  (fun ys_6_4_7 -> 
                                    (let rec t_5_6_7 = ((mappend__d1_d0__d0__d7 t_5_6_6) ys_6_4_7) in
                                      (let rec h_4_8_4 = h_4_8_3 in
                                        (fun ys_6_4_8 -> 
                                          (let rec t_5_6_8 = ((mappend__d9__d0__d7 t_5_6_7) ys_6_4_8) in
                                            (let rec h_4_8_5 = h_4_8_4 in
                                              (fun ys_6_4_9 -> 
                                                (let rec t_5_6_9 = ((mappend__d4__d0__d9 t_5_6_8) ys_6_4_9) in
                                                  (fun _lh_dummy_1_3_8 -> 
                                                    (1 + (length__d0__d0__d9 t_5_6_9))))))))))))))))))) in
                    (let rec h_4_8_6 = '|' in
                      (fun ys_6_5_0 -> 
                        (let rec t_5_7_0 = ((mappend__d1_d2__d0__d8 t_5_2_7) ys_6_5_0) in
                          (let rec h_4_8_7 = h_4_8_6 in
                            (fun ys_6_5_1 -> 
                              (let rec t_5_7_1 = ((mappend__d1_d1__d0__d8 t_5_7_0) ys_6_5_1) in
                                (let rec h_4_8_8 = h_4_8_7 in
                                  (fun ys_6_5_2 -> 
                                    (let rec t_5_7_2 = ((mappend__d1_d0__d0__d8 t_5_7_1) ys_6_5_2) in
                                      (let rec h_4_8_9 = h_4_8_8 in
                                        (fun ys_6_5_3 -> 
                                          (let rec t_5_7_3 = ((mappend__d9__d0__d8 t_5_7_2) ys_6_5_3) in
                                            (let rec h_4_9_0 = h_4_8_9 in
                                              (fun ys_6_5_4 -> 
                                                (let rec t_5_7_4 = ((mappend__d4__d0__d1_d0 t_5_7_3) ys_6_5_4) in
                                                  (fun _lh_dummy_1_3_9 -> 
                                                    (1 + (length__d0__d0__d1_d0 t_5_7_4))))))))))))))))))))) (showRow__d1__d0__d0 _lh_showBoard_LH_C_0_4))) (let rec t_5_7_5 = (let rec t_5_7_6 = (let rec t_5_7_7 = (let rec t_5_7_8 = (let rec t_5_7_9 = (let rec t_5_8_0 = (let rec t_5_8_1 = (let rec t_5_8_2 = (fun ys_6_5_5 -> 
                    ys_6_5_5) in
                    (let rec h_4_9_1 = '|' in
                      (fun ys_6_5_6 -> 
                        (let rec t_5_8_3 = ((mappend__d1_d0__d0__d9 t_5_8_2) ys_6_5_6) in
                          (let rec h_4_9_2 = h_4_9_1 in
                            (fun ys_6_5_7 -> 
                              (let rec t_5_8_4 = ((mappend__d9__d0__d9 t_5_8_3) ys_6_5_7) in
                                (let rec h_4_9_3 = h_4_9_2 in
                                  (fun ys_6_5_8 -> 
                                    (let rec t_5_8_5 = ((mappend__d4__d0__d1_d1 t_5_8_4) ys_6_5_8) in
                                      (fun _lh_dummy_1_4_0 -> 
                                        (1 + (length__d0__d0__d1_d1 t_5_8_5))))))))))))) in
                    (let rec h_4_9_4 = '-' in
                      (fun ys_6_5_9 -> 
                        (let rec t_5_8_6 = ((mappend__d1_d0__d0__d1_d0 t_5_8_1) ys_6_5_9) in
                          (let rec h_4_9_5 = h_4_9_4 in
                            (fun ys_6_6_0 -> 
                              (let rec t_5_8_7 = ((mappend__d9__d0__d1_d0 t_5_8_6) ys_6_6_0) in
                                (let rec h_4_9_6 = h_4_9_5 in
                                  (fun ys_6_6_1 -> 
                                    (let rec t_5_8_8 = ((mappend__d4__d0__d1_d2 t_5_8_7) ys_6_6_1) in
                                      (fun _lh_dummy_1_4_1 -> 
                                        (1 + (length__d0__d0__d1_d2 t_5_8_8))))))))))))) in
                    (let rec h_4_9_7 = '-' in
                      (fun ys_6_6_2 -> 
                        (let rec t_5_8_9 = ((mappend__d1_d0__d0__d1_d1 t_5_8_0) ys_6_6_2) in
                          (let rec h_4_9_8 = h_4_9_7 in
                            (fun ys_6_6_3 -> 
                              (let rec t_5_9_0 = ((mappend__d9__d0__d1_d1 t_5_8_9) ys_6_6_3) in
                                (let rec h_4_9_9 = h_4_9_8 in
                                  (fun ys_6_6_4 -> 
                                    (let rec t_5_9_1 = ((mappend__d4__d0__d1_d3 t_5_9_0) ys_6_6_4) in
                                      (fun _lh_dummy_1_4_2 -> 
                                        (1 + (length__d0__d0__d1_d3 t_5_9_1))))))))))))) in
                    (let rec h_5_0_0 = '-' in
                      (fun ys_6_6_5 -> 
                        (let rec t_5_9_2 = ((mappend__d1_d0__d0__d1_d2 t_5_7_9) ys_6_6_5) in
                          (let rec h_5_0_1 = h_5_0_0 in
                            (fun ys_6_6_6 -> 
                              (let rec t_5_9_3 = ((mappend__d9__d0__d1_d2 t_5_9_2) ys_6_6_6) in
                                (let rec h_5_0_2 = h_5_0_1 in
                                  (fun ys_6_6_7 -> 
                                    (let rec t_5_9_4 = ((mappend__d4__d0__d1_d4 t_5_9_3) ys_6_6_7) in
                                      (fun _lh_dummy_1_4_3 -> 
                                        (1 + (length__d0__d0__d1_d4 t_5_9_4))))))))))))) in
                    (let rec h_5_0_3 = '-' in
                      (fun ys_6_6_8 -> 
                        (let rec t_5_9_5 = ((mappend__d1_d0__d0__d1_d3 t_5_7_8) ys_6_6_8) in
                          (let rec h_5_0_4 = h_5_0_3 in
                            (fun ys_6_6_9 -> 
                              (let rec t_5_9_6 = ((mappend__d9__d0__d1_d3 t_5_9_5) ys_6_6_9) in
                                (let rec h_5_0_5 = h_5_0_4 in
                                  (fun ys_6_7_0 -> 
                                    (let rec t_5_9_7 = ((mappend__d4__d0__d1_d5 t_5_9_6) ys_6_7_0) in
                                      (fun _lh_dummy_1_4_4 -> 
                                        (1 + (length__d0__d0__d1_d5 t_5_9_7))))))))))))) in
                    (let rec h_5_0_6 = '-' in
                      (fun ys_6_7_1 -> 
                        (let rec t_5_9_8 = ((mappend__d1_d0__d0__d1_d4 t_5_7_7) ys_6_7_1) in
                          (let rec h_5_0_7 = h_5_0_6 in
                            (fun ys_6_7_2 -> 
                              (let rec t_5_9_9 = ((mappend__d9__d0__d1_d4 t_5_9_8) ys_6_7_2) in
                                (let rec h_5_0_8 = h_5_0_7 in
                                  (fun ys_6_7_3 -> 
                                    (let rec t_6_0_0 = ((mappend__d4__d0__d1_d6 t_5_9_9) ys_6_7_3) in
                                      (fun _lh_dummy_1_4_5 -> 
                                        (1 + (length__d0__d0__d1_d6 t_6_0_0))))))))))))) in
                    (let rec h_5_0_9 = '-' in
                      (fun ys_6_7_4 -> 
                        (let rec t_6_0_1 = ((mappend__d1_d0__d0__d1_d5 t_5_7_6) ys_6_7_4) in
                          (let rec h_5_1_0 = h_5_0_9 in
                            (fun ys_6_7_5 -> 
                              (let rec t_6_0_2 = ((mappend__d9__d0__d1_d5 t_6_0_1) ys_6_7_5) in
                                (let rec h_5_1_1 = h_5_1_0 in
                                  (fun ys_6_7_6 -> 
                                    (let rec t_6_0_3 = ((mappend__d4__d0__d1_d7 t_6_0_2) ys_6_7_6) in
                                      (fun _lh_dummy_1_4_6 -> 
                                        (1 + (length__d0__d0__d1_d7 t_6_0_3))))))))))))) in
                    (let rec h_5_1_2 = '|' in
                      (fun ys_6_7_7 -> 
                        (let rec t_6_0_4 = ((mappend__d1_d0__d0__d1_d6 t_5_7_5) ys_6_7_7) in
                          (let rec h_5_1_3 = h_5_1_2 in
                            (fun ys_6_7_8 -> 
                              (let rec t_6_0_5 = ((mappend__d9__d0__d1_d6 t_6_0_4) ys_6_7_8) in
                                (let rec h_5_1_4 = h_5_1_3 in
                                  (fun ys_6_7_9 -> 
                                    (let rec t_6_0_6 = ((mappend__d4__d0__d1_d8 t_6_0_5) ys_6_7_9) in
                                      (fun _lh_dummy_1_4_7 -> 
                                        (1 + (length__d0__d0__d1_d8 t_6_0_6))))))))))))))) (showRow__d2__d0__d0 _lh_showBoard_LH_C_0_5))) (let rec t_6_0_7 = (let rec t_6_0_8 = (fun ys_6_8_0 -> 
                    ys_6_8_0) in
                    (let rec h_5_1_5 = '|' in
                      (fun ys_6_8_1 -> 
                        (let rec t_6_0_9 = ((mappend__d4__d0__d1_d9 t_6_0_8) ys_6_8_1) in
                          (fun _lh_dummy_1_4_8 -> 
                            (1 + (length__d0__d0__d1_d9 t_6_0_9))))))) in
                    (let rec h_5_1_6 = '|' in
                      (fun ys_6_8_2 -> 
                        (let rec t_6_1_0 = ((mappend__d4__d0__d2_d0 t_6_0_7) ys_6_8_2) in
                          (fun _lh_dummy_1_4_9 -> 
                            (1 + (length__d0__d0__d2_d0 t_6_1_0))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showEvaluation__d0__d0__d0 _lh_showEvaluation_arg1_1 =
  (match _lh_showEvaluation_arg1_1 with
    | `XWin -> 
      (`LH_C('X', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `OWin -> 
      (`LH_C('O', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `Score(_lh_showEvaluation_Score_0_1) -> 
      ((mappend__d2_d6__d0__d0 (let rec t_6_3_6 = (let rec t_6_3_7 = (let rec t_6_3_8 = (let rec t_6_3_9 = (let rec t_6_4_0 = (fun ys_7_5_3 -> 
        ys_7_5_3) in
        (let rec h_5_3_9 = 'e' in
          (fun ys_7_5_4 -> 
            (`LH_C(h_5_3_9, ((mappend__d2_d6__d0__d1 t_6_4_0) ys_7_5_4)))))) in
        (let rec h_5_4_0 = 'r' in
          (fun ys_7_5_5 -> 
            (`LH_C(h_5_4_0, ((mappend__d2_d6__d0__d2 t_6_3_9) ys_7_5_5)))))) in
        (let rec h_5_4_1 = 'o' in
          (fun ys_7_5_6 -> 
            (`LH_C(h_5_4_1, ((mappend__d2_d6__d0__d3 t_6_3_8) ys_7_5_6)))))) in
        (let rec h_5_4_2 = 'c' in
          (fun ys_7_5_7 -> 
            (`LH_C(h_5_4_2, ((mappend__d2_d6__d0__d4 t_6_3_7) ys_7_5_7)))))) in
        (let rec h_5_4_3 = 'S' in
          (fun ys_7_5_8 -> 
            (`LH_C(h_5_4_3, ((mappend__d2_d6__d0__d5 t_6_3_6) ys_7_5_8))))))) (string_of_int _lh_showEvaluation_Score_0_1))
    | _ -> 
      (failwith "error"))
and showPiece__d0__d0__d0 _lh_showPiece_arg1_1_6 =
  (match _lh_showPiece_arg1_1_6 with
    | `X -> 
      (let rec t_6_8_2 = (fun ys_8_2_5 -> 
        ys_8_2_5) in
        (let rec h_5_7_9 = 'X' in
          (fun ys_8_2_6 -> 
            (let rec t_6_8_3 = ((mappend__d1_d7__d0__d1 t_6_8_2) ys_8_2_6) in
              (let rec h_5_8_0 = h_5_7_9 in
                (fun ys_8_2_7 -> 
                  (let rec t_6_8_4 = ((mappend__d1_d6__d0__d2 t_6_8_3) ys_8_2_7) in
                    (let rec h_5_8_1 = h_5_8_0 in
                      (fun ys_8_2_8 -> 
                        (let rec t_6_8_5 = ((mappend__d1_d5__d0__d2 t_6_8_4) ys_8_2_8) in
                          (let rec h_5_8_2 = h_5_8_1 in
                            (fun ys_8_2_9 -> 
                              (let rec t_6_8_6 = ((mappend__d1_d4__d0__d3 t_6_8_5) ys_8_2_9) in
                                (let rec h_5_8_3 = h_5_8_2 in
                                  (fun ys_8_3_0 -> 
                                    (let rec t_6_8_7 = ((mappend__d1_d3__d0__d3 t_6_8_6) ys_8_3_0) in
                                      (let rec h_5_8_4 = h_5_8_3 in
                                        (fun ys_8_3_1 -> 
                                          (let rec t_6_8_8 = ((mappend__d1_d2__d0__d1_d1 t_6_8_7) ys_8_3_1) in
                                            (let rec h_5_8_5 = h_5_8_4 in
                                              (fun ys_8_3_2 -> 
                                                (let rec t_6_8_9 = ((mappend__d1_d1__d0__d1_d1 t_6_8_8) ys_8_3_2) in
                                                  (let rec h_5_8_6 = h_5_8_5 in
                                                    (fun ys_8_3_3 -> 
                                                      (let rec t_6_9_0 = ((mappend__d1_d0__d0__d1_d9 t_6_8_9) ys_8_3_3) in
                                                        (let rec h_5_8_7 = h_5_8_6 in
                                                          (fun ys_8_3_4 -> 
                                                            (let rec t_6_9_1 = ((mappend__d9__d0__d1_d9 t_6_9_0) ys_8_3_4) in
                                                              (let rec h_5_8_8 = h_5_8_7 in
                                                                (fun ys_8_3_5 -> 
                                                                  (let rec t_6_9_2 = ((mappend__d4__d0__d2_d3 t_6_9_1) ys_8_3_5) in
                                                                    (fun _lh_dummy_1_6_0 -> 
                                                                      (1 + (length__d0__d0__d2_d3 t_6_9_2))))))))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_6_9_3 = (fun ys_8_3_6 -> 
        ys_8_3_6) in
        (let rec h_5_8_9 = 'O' in
          (fun ys_8_3_7 -> 
            (let rec t_6_9_4 = ((mappend__d1_d7__d0__d2 t_6_9_3) ys_8_3_7) in
              (let rec h_5_9_0 = h_5_8_9 in
                (fun ys_8_3_8 -> 
                  (let rec t_6_9_5 = ((mappend__d1_d6__d0__d3 t_6_9_4) ys_8_3_8) in
                    (let rec h_5_9_1 = h_5_9_0 in
                      (fun ys_8_3_9 -> 
                        (let rec t_6_9_6 = ((mappend__d1_d5__d0__d3 t_6_9_5) ys_8_3_9) in
                          (let rec h_5_9_2 = h_5_9_1 in
                            (fun ys_8_4_0 -> 
                              (let rec t_6_9_7 = ((mappend__d1_d4__d0__d4 t_6_9_6) ys_8_4_0) in
                                (let rec h_5_9_3 = h_5_9_2 in
                                  (fun ys_8_4_1 -> 
                                    (let rec t_6_9_8 = ((mappend__d1_d3__d0__d4 t_6_9_7) ys_8_4_1) in
                                      (let rec h_5_9_4 = h_5_9_3 in
                                        (fun ys_8_4_2 -> 
                                          (let rec t_6_9_9 = ((mappend__d1_d2__d0__d1_d2 t_6_9_8) ys_8_4_2) in
                                            (let rec h_5_9_5 = h_5_9_4 in
                                              (fun ys_8_4_3 -> 
                                                (let rec t_7_0_0 = ((mappend__d1_d1__d0__d1_d2 t_6_9_9) ys_8_4_3) in
                                                  (let rec h_5_9_6 = h_5_9_5 in
                                                    (fun ys_8_4_4 -> 
                                                      (let rec t_7_0_1 = ((mappend__d1_d0__d0__d2_d0 t_7_0_0) ys_8_4_4) in
                                                        (let rec h_5_9_7 = h_5_9_6 in
                                                          (fun ys_8_4_5 -> 
                                                            (let rec t_7_0_2 = ((mappend__d9__d0__d2_d0 t_7_0_1) ys_8_4_5) in
                                                              (let rec h_5_9_8 = h_5_9_7 in
                                                                (fun ys_8_4_6 -> 
                                                                  (let rec t_7_0_3 = ((mappend__d4__d0__d2_d4 t_7_0_2) ys_8_4_6) in
                                                                    (fun _lh_dummy_1_6_1 -> 
                                                                      (1 + (length__d0__d0__d2_d4 t_7_0_3))))))))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_7_0_4 = (fun ys_8_4_7 -> 
        ys_8_4_7) in
        (let rec h_5_9_9 = ' ' in
          (fun ys_8_4_8 -> 
            (let rec t_7_0_5 = ((mappend__d1_d7__d0__d3 t_7_0_4) ys_8_4_8) in
              (let rec h_6_0_0 = h_5_9_9 in
                (fun ys_8_4_9 -> 
                  (let rec t_7_0_6 = ((mappend__d1_d6__d0__d4 t_7_0_5) ys_8_4_9) in
                    (let rec h_6_0_1 = h_6_0_0 in
                      (fun ys_8_5_0 -> 
                        (let rec t_7_0_7 = ((mappend__d1_d5__d0__d4 t_7_0_6) ys_8_5_0) in
                          (let rec h_6_0_2 = h_6_0_1 in
                            (fun ys_8_5_1 -> 
                              (let rec t_7_0_8 = ((mappend__d1_d4__d0__d5 t_7_0_7) ys_8_5_1) in
                                (let rec h_6_0_3 = h_6_0_2 in
                                  (fun ys_8_5_2 -> 
                                    (let rec t_7_0_9 = ((mappend__d1_d3__d0__d5 t_7_0_8) ys_8_5_2) in
                                      (let rec h_6_0_4 = h_6_0_3 in
                                        (fun ys_8_5_3 -> 
                                          (let rec t_7_1_0 = ((mappend__d1_d2__d0__d1_d3 t_7_0_9) ys_8_5_3) in
                                            (let rec h_6_0_5 = h_6_0_4 in
                                              (fun ys_8_5_4 -> 
                                                (let rec t_7_1_1 = ((mappend__d1_d1__d0__d1_d3 t_7_1_0) ys_8_5_4) in
                                                  (let rec h_6_0_6 = h_6_0_5 in
                                                    (fun ys_8_5_5 -> 
                                                      (let rec t_7_1_2 = ((mappend__d1_d0__d0__d2_d1 t_7_1_1) ys_8_5_5) in
                                                        (let rec h_6_0_7 = h_6_0_6 in
                                                          (fun ys_8_5_6 -> 
                                                            (let rec t_7_1_3 = ((mappend__d9__d0__d2_d1 t_7_1_2) ys_8_5_6) in
                                                              (let rec h_6_0_8 = h_6_0_7 in
                                                                (fun ys_8_5_7 -> 
                                                                  (let rec t_7_1_4 = ((mappend__d4__d0__d2_d5 t_7_1_3) ys_8_5_7) in
                                                                    (fun _lh_dummy_1_6_2 -> 
                                                                      (1 + (length__d0__d0__d2_d5 t_7_1_4))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d1__d0__d0 _lh_showPiece_arg1_9 =
  (match _lh_showPiece_arg1_9 with
    | `X -> 
      (let rec t_4_1_7 = (fun ys_4_1_0 -> 
        ys_4_1_0) in
        (let rec h_3_5_6 = 'X' in
          (fun ys_4_1_1 -> 
            (let rec t_4_1_8 = ((mappend__d1_d5__d0__d5 t_4_1_7) ys_4_1_1) in
              (let rec h_3_5_7 = h_3_5_6 in
                (fun ys_4_1_2 -> 
                  (let rec t_4_1_9 = ((mappend__d1_d4__d0__d6 t_4_1_8) ys_4_1_2) in
                    (let rec h_3_5_8 = h_3_5_7 in
                      (fun ys_4_1_3 -> 
                        (let rec t_4_2_0 = ((mappend__d1_d3__d0__d6 t_4_1_9) ys_4_1_3) in
                          (let rec h_3_5_9 = h_3_5_8 in
                            (fun ys_4_1_4 -> 
                              (let rec t_4_2_1 = ((mappend__d1_d2__d0__d1_d4 t_4_2_0) ys_4_1_4) in
                                (let rec h_3_6_0 = h_3_5_9 in
                                  (fun ys_4_1_5 -> 
                                    (let rec t_4_2_2 = ((mappend__d1_d1__d0__d1_d4 t_4_2_1) ys_4_1_5) in
                                      (let rec h_3_6_1 = h_3_6_0 in
                                        (fun ys_4_1_6 -> 
                                          (let rec t_4_2_3 = ((mappend__d1_d0__d0__d2_d2 t_4_2_2) ys_4_1_6) in
                                            (let rec h_3_6_2 = h_3_6_1 in
                                              (fun ys_4_1_7 -> 
                                                (let rec t_4_2_4 = ((mappend__d9__d0__d2_d2 t_4_2_3) ys_4_1_7) in
                                                  (let rec h_3_6_3 = h_3_6_2 in
                                                    (fun ys_4_1_8 -> 
                                                      (let rec t_4_2_5 = ((mappend__d4__d0__d2_d6 t_4_2_4) ys_4_1_8) in
                                                        (fun _lh_dummy_9_7 -> 
                                                          (1 + (length__d0__d0__d2_d6 t_4_2_5))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_4_2_6 = (fun ys_4_1_9 -> 
        ys_4_1_9) in
        (let rec h_3_6_4 = 'O' in
          (fun ys_4_2_0 -> 
            (let rec t_4_2_7 = ((mappend__d1_d5__d0__d6 t_4_2_6) ys_4_2_0) in
              (let rec h_3_6_5 = h_3_6_4 in
                (fun ys_4_2_1 -> 
                  (let rec t_4_2_8 = ((mappend__d1_d4__d0__d7 t_4_2_7) ys_4_2_1) in
                    (let rec h_3_6_6 = h_3_6_5 in
                      (fun ys_4_2_2 -> 
                        (let rec t_4_2_9 = ((mappend__d1_d3__d0__d7 t_4_2_8) ys_4_2_2) in
                          (let rec h_3_6_7 = h_3_6_6 in
                            (fun ys_4_2_3 -> 
                              (let rec t_4_3_0 = ((mappend__d1_d2__d0__d1_d5 t_4_2_9) ys_4_2_3) in
                                (let rec h_3_6_8 = h_3_6_7 in
                                  (fun ys_4_2_4 -> 
                                    (let rec t_4_3_1 = ((mappend__d1_d1__d0__d1_d5 t_4_3_0) ys_4_2_4) in
                                      (let rec h_3_6_9 = h_3_6_8 in
                                        (fun ys_4_2_5 -> 
                                          (let rec t_4_3_2 = ((mappend__d1_d0__d0__d2_d3 t_4_3_1) ys_4_2_5) in
                                            (let rec h_3_7_0 = h_3_6_9 in
                                              (fun ys_4_2_6 -> 
                                                (let rec t_4_3_3 = ((mappend__d9__d0__d2_d3 t_4_3_2) ys_4_2_6) in
                                                  (let rec h_3_7_1 = h_3_7_0 in
                                                    (fun ys_4_2_7 -> 
                                                      (let rec t_4_3_4 = ((mappend__d4__d0__d2_d7 t_4_3_3) ys_4_2_7) in
                                                        (fun _lh_dummy_9_8 -> 
                                                          (1 + (length__d0__d0__d2_d7 t_4_3_4))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_4_3_5 = (fun ys_4_2_8 -> 
        ys_4_2_8) in
        (let rec h_3_7_2 = ' ' in
          (fun ys_4_2_9 -> 
            (let rec t_4_3_6 = ((mappend__d1_d5__d0__d7 t_4_3_5) ys_4_2_9) in
              (let rec h_3_7_3 = h_3_7_2 in
                (fun ys_4_3_0 -> 
                  (let rec t_4_3_7 = ((mappend__d1_d4__d0__d8 t_4_3_6) ys_4_3_0) in
                    (let rec h_3_7_4 = h_3_7_3 in
                      (fun ys_4_3_1 -> 
                        (let rec t_4_3_8 = ((mappend__d1_d3__d0__d8 t_4_3_7) ys_4_3_1) in
                          (let rec h_3_7_5 = h_3_7_4 in
                            (fun ys_4_3_2 -> 
                              (let rec t_4_3_9 = ((mappend__d1_d2__d0__d1_d6 t_4_3_8) ys_4_3_2) in
                                (let rec h_3_7_6 = h_3_7_5 in
                                  (fun ys_4_3_3 -> 
                                    (let rec t_4_4_0 = ((mappend__d1_d1__d0__d1_d6 t_4_3_9) ys_4_3_3) in
                                      (let rec h_3_7_7 = h_3_7_6 in
                                        (fun ys_4_3_4 -> 
                                          (let rec t_4_4_1 = ((mappend__d1_d0__d0__d2_d4 t_4_4_0) ys_4_3_4) in
                                            (let rec h_3_7_8 = h_3_7_7 in
                                              (fun ys_4_3_5 -> 
                                                (let rec t_4_4_2 = ((mappend__d9__d0__d2_d4 t_4_4_1) ys_4_3_5) in
                                                  (let rec h_3_7_9 = h_3_7_8 in
                                                    (fun ys_4_3_6 -> 
                                                      (let rec t_4_4_3 = ((mappend__d4__d0__d2_d8 t_4_4_2) ys_4_3_6) in
                                                        (fun _lh_dummy_9_9 -> 
                                                          (1 + (length__d0__d0__d2_d8 t_4_4_3))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d2__d0__d0 _lh_showPiece_arg1_1_1 =
  (match _lh_showPiece_arg1_1_1 with
    | `X -> 
      (let rec t_4_7_9 = (fun ys_5_1_4 -> 
        ys_5_1_4) in
        (let rec h_4_1_0 = 'X' in
          (fun ys_5_1_5 -> 
            (let rec t_4_8_0 = ((mappend__d1_d3__d0__d9 t_4_7_9) ys_5_1_5) in
              (let rec h_4_1_1 = h_4_1_0 in
                (fun ys_5_1_6 -> 
                  (let rec t_4_8_1 = ((mappend__d1_d2__d0__d1_d7 t_4_8_0) ys_5_1_6) in
                    (let rec h_4_1_2 = h_4_1_1 in
                      (fun ys_5_1_7 -> 
                        (let rec t_4_8_2 = ((mappend__d1_d1__d0__d1_d7 t_4_8_1) ys_5_1_7) in
                          (let rec h_4_1_3 = h_4_1_2 in
                            (fun ys_5_1_8 -> 
                              (let rec t_4_8_3 = ((mappend__d1_d0__d0__d2_d5 t_4_8_2) ys_5_1_8) in
                                (let rec h_4_1_4 = h_4_1_3 in
                                  (fun ys_5_1_9 -> 
                                    (let rec t_4_8_4 = ((mappend__d9__d0__d2_d5 t_4_8_3) ys_5_1_9) in
                                      (let rec h_4_1_5 = h_4_1_4 in
                                        (fun ys_5_2_0 -> 
                                          (let rec t_4_8_5 = ((mappend__d4__d0__d2_d9 t_4_8_4) ys_5_2_0) in
                                            (fun _lh_dummy_1_1_0 -> 
                                              (1 + (length__d0__d0__d2_d9 t_4_8_5))))))))))))))))))))))
    | `O -> 
      (let rec t_4_8_6 = (fun ys_5_2_1 -> 
        ys_5_2_1) in
        (let rec h_4_1_6 = 'O' in
          (fun ys_5_2_2 -> 
            (let rec t_4_8_7 = ((mappend__d1_d3__d0__d1_d0 t_4_8_6) ys_5_2_2) in
              (let rec h_4_1_7 = h_4_1_6 in
                (fun ys_5_2_3 -> 
                  (let rec t_4_8_8 = ((mappend__d1_d2__d0__d1_d8 t_4_8_7) ys_5_2_3) in
                    (let rec h_4_1_8 = h_4_1_7 in
                      (fun ys_5_2_4 -> 
                        (let rec t_4_8_9 = ((mappend__d1_d1__d0__d1_d8 t_4_8_8) ys_5_2_4) in
                          (let rec h_4_1_9 = h_4_1_8 in
                            (fun ys_5_2_5 -> 
                              (let rec t_4_9_0 = ((mappend__d1_d0__d0__d2_d6 t_4_8_9) ys_5_2_5) in
                                (let rec h_4_2_0 = h_4_1_9 in
                                  (fun ys_5_2_6 -> 
                                    (let rec t_4_9_1 = ((mappend__d9__d0__d2_d6 t_4_9_0) ys_5_2_6) in
                                      (let rec h_4_2_1 = h_4_2_0 in
                                        (fun ys_5_2_7 -> 
                                          (let rec t_4_9_2 = ((mappend__d4__d0__d3_d0 t_4_9_1) ys_5_2_7) in
                                            (fun _lh_dummy_1_1_1 -> 
                                              (1 + (length__d0__d0__d3_d0 t_4_9_2))))))))))))))))))))))
    | `Empty -> 
      (let rec t_4_9_3 = (fun ys_5_2_8 -> 
        ys_5_2_8) in
        (let rec h_4_2_2 = ' ' in
          (fun ys_5_2_9 -> 
            (let rec t_4_9_4 = ((mappend__d1_d3__d0__d1_d1 t_4_9_3) ys_5_2_9) in
              (let rec h_4_2_3 = h_4_2_2 in
                (fun ys_5_3_0 -> 
                  (let rec t_4_9_5 = ((mappend__d1_d2__d0__d1_d9 t_4_9_4) ys_5_3_0) in
                    (let rec h_4_2_4 = h_4_2_3 in
                      (fun ys_5_3_1 -> 
                        (let rec t_4_9_6 = ((mappend__d1_d1__d0__d1_d9 t_4_9_5) ys_5_3_1) in
                          (let rec h_4_2_5 = h_4_2_4 in
                            (fun ys_5_3_2 -> 
                              (let rec t_4_9_7 = ((mappend__d1_d0__d0__d2_d7 t_4_9_6) ys_5_3_2) in
                                (let rec h_4_2_6 = h_4_2_5 in
                                  (fun ys_5_3_3 -> 
                                    (let rec t_4_9_8 = ((mappend__d9__d0__d2_d7 t_4_9_7) ys_5_3_3) in
                                      (let rec h_4_2_7 = h_4_2_6 in
                                        (fun ys_5_3_4 -> 
                                          (let rec t_4_9_9 = ((mappend__d4__d0__d3_d1 t_4_9_8) ys_5_3_4) in
                                            (fun _lh_dummy_1_1_2 -> 
                                              (1 + (length__d0__d0__d3_d1 t_4_9_9))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d3__d0__d0 _lh_showPiece_arg1_1_7 =
  (match _lh_showPiece_arg1_1_7 with
    | `X -> 
      (let rec t_7_6_4 = (fun ys_9_5_2 -> 
        ys_9_5_2) in
        (let rec h_6_5_3 = 'X' in
          (fun ys_9_5_3 -> 
            (let rec t_7_6_5 = ((mappend__d2_d1__d0__d1 t_7_6_4) ys_9_5_3) in
              (let rec h_6_5_4 = h_6_5_3 in
                (fun ys_9_5_4 -> 
                  (let rec t_7_6_6 = ((mappend__d2_d0__d0__d2 t_7_6_5) ys_9_5_4) in
                    (let rec h_6_5_5 = h_6_5_4 in
                      (fun ys_9_5_5 -> 
                        (let rec t_7_6_7 = ((mappend__d1_d9__d0__d2 t_7_6_6) ys_9_5_5) in
                          (let rec h_6_5_6 = h_6_5_5 in
                            (fun ys_9_5_6 -> 
                              (let rec t_7_6_8 = ((mappend__d1_d8__d0__d3 t_7_6_7) ys_9_5_6) in
                                (let rec h_6_5_7 = h_6_5_6 in
                                  (fun ys_9_5_7 -> 
                                    (let rec t_7_6_9 = ((mappend__d1_d1__d0__d2_d2 t_7_6_8) ys_9_5_7) in
                                      (let rec h_6_5_8 = h_6_5_7 in
                                        (fun ys_9_5_8 -> 
                                          (let rec t_7_7_0 = ((mappend__d1_d0__d0__d3_d0 t_7_6_9) ys_9_5_8) in
                                            (let rec h_6_5_9 = h_6_5_8 in
                                              (fun ys_9_5_9 -> 
                                                (let rec t_7_7_1 = ((mappend__d9__d0__d3_d0 t_7_7_0) ys_9_5_9) in
                                                  (let rec h_6_6_0 = h_6_5_9 in
                                                    (fun ys_9_6_0 -> 
                                                      (let rec t_7_7_2 = ((mappend__d4__d0__d3_d4 t_7_7_1) ys_9_6_0) in
                                                        (fun _lh_dummy_1_7_5 -> 
                                                          (1 + (length__d0__d0__d3_d4 t_7_7_2))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_7_7_3 = (fun ys_9_6_1 -> 
        ys_9_6_1) in
        (let rec h_6_6_1 = 'O' in
          (fun ys_9_6_2 -> 
            (let rec t_7_7_4 = ((mappend__d2_d1__d0__d2 t_7_7_3) ys_9_6_2) in
              (let rec h_6_6_2 = h_6_6_1 in
                (fun ys_9_6_3 -> 
                  (let rec t_7_7_5 = ((mappend__d2_d0__d0__d3 t_7_7_4) ys_9_6_3) in
                    (let rec h_6_6_3 = h_6_6_2 in
                      (fun ys_9_6_4 -> 
                        (let rec t_7_7_6 = ((mappend__d1_d9__d0__d3 t_7_7_5) ys_9_6_4) in
                          (let rec h_6_6_4 = h_6_6_3 in
                            (fun ys_9_6_5 -> 
                              (let rec t_7_7_7 = ((mappend__d1_d8__d0__d4 t_7_7_6) ys_9_6_5) in
                                (let rec h_6_6_5 = h_6_6_4 in
                                  (fun ys_9_6_6 -> 
                                    (let rec t_7_7_8 = ((mappend__d1_d1__d0__d2_d3 t_7_7_7) ys_9_6_6) in
                                      (let rec h_6_6_6 = h_6_6_5 in
                                        (fun ys_9_6_7 -> 
                                          (let rec t_7_7_9 = ((mappend__d1_d0__d0__d3_d1 t_7_7_8) ys_9_6_7) in
                                            (let rec h_6_6_7 = h_6_6_6 in
                                              (fun ys_9_6_8 -> 
                                                (let rec t_7_8_0 = ((mappend__d9__d0__d3_d1 t_7_7_9) ys_9_6_8) in
                                                  (let rec h_6_6_8 = h_6_6_7 in
                                                    (fun ys_9_6_9 -> 
                                                      (let rec t_7_8_1 = ((mappend__d4__d0__d3_d5 t_7_8_0) ys_9_6_9) in
                                                        (fun _lh_dummy_1_7_6 -> 
                                                          (1 + (length__d0__d0__d3_d5 t_7_8_1))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_7_8_2 = (fun ys_9_7_0 -> 
        ys_9_7_0) in
        (let rec h_6_6_9 = ' ' in
          (fun ys_9_7_1 -> 
            (let rec t_7_8_3 = ((mappend__d2_d1__d0__d3 t_7_8_2) ys_9_7_1) in
              (let rec h_6_7_0 = h_6_6_9 in
                (fun ys_9_7_2 -> 
                  (let rec t_7_8_4 = ((mappend__d2_d0__d0__d4 t_7_8_3) ys_9_7_2) in
                    (let rec h_6_7_1 = h_6_7_0 in
                      (fun ys_9_7_3 -> 
                        (let rec t_7_8_5 = ((mappend__d1_d9__d0__d4 t_7_8_4) ys_9_7_3) in
                          (let rec h_6_7_2 = h_6_7_1 in
                            (fun ys_9_7_4 -> 
                              (let rec t_7_8_6 = ((mappend__d1_d8__d0__d5 t_7_8_5) ys_9_7_4) in
                                (let rec h_6_7_3 = h_6_7_2 in
                                  (fun ys_9_7_5 -> 
                                    (let rec t_7_8_7 = ((mappend__d1_d1__d0__d2_d4 t_7_8_6) ys_9_7_5) in
                                      (let rec h_6_7_4 = h_6_7_3 in
                                        (fun ys_9_7_6 -> 
                                          (let rec t_7_8_8 = ((mappend__d1_d0__d0__d3_d2 t_7_8_7) ys_9_7_6) in
                                            (let rec h_6_7_5 = h_6_7_4 in
                                              (fun ys_9_7_7 -> 
                                                (let rec t_7_8_9 = ((mappend__d9__d0__d3_d2 t_7_8_8) ys_9_7_7) in
                                                  (let rec h_6_7_6 = h_6_7_5 in
                                                    (fun ys_9_7_8 -> 
                                                      (let rec t_7_9_0 = ((mappend__d4__d0__d3_d6 t_7_8_9) ys_9_7_8) in
                                                        (fun _lh_dummy_1_7_7 -> 
                                                          (1 + (length__d0__d0__d3_d6 t_7_9_0))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d4__d0__d0 _lh_showPiece_arg1_1_0 =
  (match _lh_showPiece_arg1_1_0 with
    | `X -> 
      (let rec t_4_5_4 = (fun ys_4_6_6 -> 
        ys_4_6_6) in
        (let rec h_3_8_8 = 'X' in
          (fun ys_4_6_7 -> 
            (let rec t_4_5_5 = ((mappend__d1_d9__d0__d5 t_4_5_4) ys_4_6_7) in
              (let rec h_3_8_9 = h_3_8_8 in
                (fun ys_4_6_8 -> 
                  (let rec t_4_5_6 = ((mappend__d1_d8__d0__d6 t_4_5_5) ys_4_6_8) in
                    (let rec h_3_9_0 = h_3_8_9 in
                      (fun ys_4_6_9 -> 
                        (let rec t_4_5_7 = ((mappend__d1_d1__d0__d2_d5 t_4_5_6) ys_4_6_9) in
                          (let rec h_3_9_1 = h_3_9_0 in
                            (fun ys_4_7_0 -> 
                              (let rec t_4_5_8 = ((mappend__d1_d0__d0__d3_d3 t_4_5_7) ys_4_7_0) in
                                (let rec h_3_9_2 = h_3_9_1 in
                                  (fun ys_4_7_1 -> 
                                    (let rec t_4_5_9 = ((mappend__d9__d0__d3_d3 t_4_5_8) ys_4_7_1) in
                                      (let rec h_3_9_3 = h_3_9_2 in
                                        (fun ys_4_7_2 -> 
                                          (let rec t_4_6_0 = ((mappend__d4__d0__d3_d7 t_4_5_9) ys_4_7_2) in
                                            (fun _lh_dummy_1_0_3 -> 
                                              (1 + (length__d0__d0__d3_d7 t_4_6_0))))))))))))))))))))))
    | `O -> 
      (let rec t_4_6_1 = (fun ys_4_7_3 -> 
        ys_4_7_3) in
        (let rec h_3_9_4 = 'O' in
          (fun ys_4_7_4 -> 
            (let rec t_4_6_2 = ((mappend__d1_d9__d0__d6 t_4_6_1) ys_4_7_4) in
              (let rec h_3_9_5 = h_3_9_4 in
                (fun ys_4_7_5 -> 
                  (let rec t_4_6_3 = ((mappend__d1_d8__d0__d7 t_4_6_2) ys_4_7_5) in
                    (let rec h_3_9_6 = h_3_9_5 in
                      (fun ys_4_7_6 -> 
                        (let rec t_4_6_4 = ((mappend__d1_d1__d0__d2_d6 t_4_6_3) ys_4_7_6) in
                          (let rec h_3_9_7 = h_3_9_6 in
                            (fun ys_4_7_7 -> 
                              (let rec t_4_6_5 = ((mappend__d1_d0__d0__d3_d4 t_4_6_4) ys_4_7_7) in
                                (let rec h_3_9_8 = h_3_9_7 in
                                  (fun ys_4_7_8 -> 
                                    (let rec t_4_6_6 = ((mappend__d9__d0__d3_d4 t_4_6_5) ys_4_7_8) in
                                      (let rec h_3_9_9 = h_3_9_8 in
                                        (fun ys_4_7_9 -> 
                                          (let rec t_4_6_7 = ((mappend__d4__d0__d3_d8 t_4_6_6) ys_4_7_9) in
                                            (fun _lh_dummy_1_0_4 -> 
                                              (1 + (length__d0__d0__d3_d8 t_4_6_7))))))))))))))))))))))
    | `Empty -> 
      (let rec t_4_6_8 = (fun ys_4_8_0 -> 
        ys_4_8_0) in
        (let rec h_4_0_0 = ' ' in
          (fun ys_4_8_1 -> 
            (let rec t_4_6_9 = ((mappend__d1_d9__d0__d7 t_4_6_8) ys_4_8_1) in
              (let rec h_4_0_1 = h_4_0_0 in
                (fun ys_4_8_2 -> 
                  (let rec t_4_7_0 = ((mappend__d1_d8__d0__d8 t_4_6_9) ys_4_8_2) in
                    (let rec h_4_0_2 = h_4_0_1 in
                      (fun ys_4_8_3 -> 
                        (let rec t_4_7_1 = ((mappend__d1_d1__d0__d2_d7 t_4_7_0) ys_4_8_3) in
                          (let rec h_4_0_3 = h_4_0_2 in
                            (fun ys_4_8_4 -> 
                              (let rec t_4_7_2 = ((mappend__d1_d0__d0__d3_d5 t_4_7_1) ys_4_8_4) in
                                (let rec h_4_0_4 = h_4_0_3 in
                                  (fun ys_4_8_5 -> 
                                    (let rec t_4_7_3 = ((mappend__d9__d0__d3_d5 t_4_7_2) ys_4_8_5) in
                                      (let rec h_4_0_5 = h_4_0_4 in
                                        (fun ys_4_8_6 -> 
                                          (let rec t_4_7_4 = ((mappend__d4__d0__d3_d9 t_4_7_3) ys_4_8_6) in
                                            (fun _lh_dummy_1_0_5 -> 
                                              (1 + (length__d0__d0__d3_d9 t_4_7_4))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d5__d0__d0 _lh_showPiece_arg1_1_4 =
  (match _lh_showPiece_arg1_1_4 with
    | `X -> 
      (let rec t_6_4_3 = (fun ys_7_7_1 -> 
        ys_7_7_1) in
        (let rec h_5_4_6 = 'X' in
          (fun ys_7_7_2 -> 
            (let rec t_6_4_4 = ((mappend__d1_d1__d0__d2_d8 t_6_4_3) ys_7_7_2) in
              (let rec h_5_4_7 = h_5_4_6 in
                (fun ys_7_7_3 -> 
                  (let rec t_6_4_5 = ((mappend__d1_d0__d0__d3_d6 t_6_4_4) ys_7_7_3) in
                    (let rec h_5_4_8 = h_5_4_7 in
                      (fun ys_7_7_4 -> 
                        (let rec t_6_4_6 = ((mappend__d9__d0__d3_d6 t_6_4_5) ys_7_7_4) in
                          (let rec h_5_4_9 = h_5_4_8 in
                            (fun ys_7_7_5 -> 
                              (let rec t_6_4_7 = ((mappend__d4__d0__d4_d0 t_6_4_6) ys_7_7_5) in
                                (fun _lh_dummy_1_5_4 -> 
                                  (1 + (length__d0__d0__d4_d0 t_6_4_7))))))))))))))))
    | `O -> 
      (let rec t_6_4_8 = (fun ys_7_7_6 -> 
        ys_7_7_6) in
        (let rec h_5_5_0 = 'O' in
          (fun ys_7_7_7 -> 
            (let rec t_6_4_9 = ((mappend__d1_d1__d0__d2_d9 t_6_4_8) ys_7_7_7) in
              (let rec h_5_5_1 = h_5_5_0 in
                (fun ys_7_7_8 -> 
                  (let rec t_6_5_0 = ((mappend__d1_d0__d0__d3_d7 t_6_4_9) ys_7_7_8) in
                    (let rec h_5_5_2 = h_5_5_1 in
                      (fun ys_7_7_9 -> 
                        (let rec t_6_5_1 = ((mappend__d9__d0__d3_d7 t_6_5_0) ys_7_7_9) in
                          (let rec h_5_5_3 = h_5_5_2 in
                            (fun ys_7_8_0 -> 
                              (let rec t_6_5_2 = ((mappend__d4__d0__d4_d1 t_6_5_1) ys_7_8_0) in
                                (fun _lh_dummy_1_5_5 -> 
                                  (1 + (length__d0__d0__d4_d1 t_6_5_2))))))))))))))))
    | `Empty -> 
      (let rec t_6_5_3 = (fun ys_7_8_1 -> 
        ys_7_8_1) in
        (let rec h_5_5_4 = ' ' in
          (fun ys_7_8_2 -> 
            (let rec t_6_5_4 = ((mappend__d1_d1__d0__d3_d0 t_6_5_3) ys_7_8_2) in
              (let rec h_5_5_5 = h_5_5_4 in
                (fun ys_7_8_3 -> 
                  (let rec t_6_5_5 = ((mappend__d1_d0__d0__d3_d8 t_6_5_4) ys_7_8_3) in
                    (let rec h_5_5_6 = h_5_5_5 in
                      (fun ys_7_8_4 -> 
                        (let rec t_6_5_6 = ((mappend__d9__d0__d3_d8 t_6_5_5) ys_7_8_4) in
                          (let rec h_5_5_7 = h_5_5_6 in
                            (fun ys_7_8_5 -> 
                              (let rec t_6_5_7 = ((mappend__d4__d0__d4_d2 t_6_5_6) ys_7_8_5) in
                                (fun _lh_dummy_1_5_6 -> 
                                  (1 + (length__d0__d0__d4_d2 t_6_5_7))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d6__d0__d0 _lh_showPiece_arg1_1_3 =
  (match _lh_showPiece_arg1_1_3 with
    | `X -> 
      (let rec t_6_1_3 = (fun ys_7_2_2 -> 
        ys_7_2_2) in
        (let rec h_5_1_9 = 'X' in
          (fun ys_7_2_3 -> 
            (let rec t_6_1_4 = ((mappend__d2_d5__d0__d1 t_6_1_3) ys_7_2_3) in
              (let rec h_5_2_0 = h_5_1_9 in
                (fun ys_7_2_4 -> 
                  (let rec t_6_1_5 = ((mappend__d2_d4__d0__d2 t_6_1_4) ys_7_2_4) in
                    (let rec h_5_2_1 = h_5_2_0 in
                      (fun ys_7_2_5 -> 
                        (let rec t_6_1_6 = ((mappend__d2_d3__d0__d2 t_6_1_5) ys_7_2_5) in
                          (let rec h_5_2_2 = h_5_2_1 in
                            (fun ys_7_2_6 -> 
                              (let rec t_6_1_7 = ((mappend__d2_d2__d0__d3 t_6_1_6) ys_7_2_6) in
                                (let rec h_5_2_3 = h_5_2_2 in
                                  (fun ys_7_2_7 -> 
                                    (let rec t_6_1_8 = ((mappend__d9__d0__d4_d1 t_6_1_7) ys_7_2_7) in
                                      (let rec h_5_2_4 = h_5_2_3 in
                                        (fun ys_7_2_8 -> 
                                          (let rec t_6_1_9 = ((mappend__d4__d0__d4_d5 t_6_1_8) ys_7_2_8) in
                                            (fun _lh_dummy_1_5_1 -> 
                                              (1 + (length__d0__d0__d4_d5 t_6_1_9))))))))))))))))))))))
    | `O -> 
      (let rec t_6_2_0 = (fun ys_7_2_9 -> 
        ys_7_2_9) in
        (let rec h_5_2_5 = 'O' in
          (fun ys_7_3_0 -> 
            (let rec t_6_2_1 = ((mappend__d2_d5__d0__d2 t_6_2_0) ys_7_3_0) in
              (let rec h_5_2_6 = h_5_2_5 in
                (fun ys_7_3_1 -> 
                  (let rec t_6_2_2 = ((mappend__d2_d4__d0__d3 t_6_2_1) ys_7_3_1) in
                    (let rec h_5_2_7 = h_5_2_6 in
                      (fun ys_7_3_2 -> 
                        (let rec t_6_2_3 = ((mappend__d2_d3__d0__d3 t_6_2_2) ys_7_3_2) in
                          (let rec h_5_2_8 = h_5_2_7 in
                            (fun ys_7_3_3 -> 
                              (let rec t_6_2_4 = ((mappend__d2_d2__d0__d4 t_6_2_3) ys_7_3_3) in
                                (let rec h_5_2_9 = h_5_2_8 in
                                  (fun ys_7_3_4 -> 
                                    (let rec t_6_2_5 = ((mappend__d9__d0__d4_d2 t_6_2_4) ys_7_3_4) in
                                      (let rec h_5_3_0 = h_5_2_9 in
                                        (fun ys_7_3_5 -> 
                                          (let rec t_6_2_6 = ((mappend__d4__d0__d4_d6 t_6_2_5) ys_7_3_5) in
                                            (fun _lh_dummy_1_5_2 -> 
                                              (1 + (length__d0__d0__d4_d6 t_6_2_6))))))))))))))))))))))
    | `Empty -> 
      (let rec t_6_2_7 = (fun ys_7_3_6 -> 
        ys_7_3_6) in
        (let rec h_5_3_1 = ' ' in
          (fun ys_7_3_7 -> 
            (let rec t_6_2_8 = ((mappend__d2_d5__d0__d3 t_6_2_7) ys_7_3_7) in
              (let rec h_5_3_2 = h_5_3_1 in
                (fun ys_7_3_8 -> 
                  (let rec t_6_2_9 = ((mappend__d2_d4__d0__d4 t_6_2_8) ys_7_3_8) in
                    (let rec h_5_3_3 = h_5_3_2 in
                      (fun ys_7_3_9 -> 
                        (let rec t_6_3_0 = ((mappend__d2_d3__d0__d4 t_6_2_9) ys_7_3_9) in
                          (let rec h_5_3_4 = h_5_3_3 in
                            (fun ys_7_4_0 -> 
                              (let rec t_6_3_1 = ((mappend__d2_d2__d0__d5 t_6_3_0) ys_7_4_0) in
                                (let rec h_5_3_5 = h_5_3_4 in
                                  (fun ys_7_4_1 -> 
                                    (let rec t_6_3_2 = ((mappend__d9__d0__d4_d3 t_6_3_1) ys_7_4_1) in
                                      (let rec h_5_3_6 = h_5_3_5 in
                                        (fun ys_7_4_2 -> 
                                          (let rec t_6_3_3 = ((mappend__d4__d0__d4_d7 t_6_3_2) ys_7_4_2) in
                                            (fun _lh_dummy_1_5_3 -> 
                                              (1 + (length__d0__d0__d4_d7 t_6_3_3))))))))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d7__d0__d0 _lh_showPiece_arg1_1_5 =
  (match _lh_showPiece_arg1_1_5 with
    | `X -> 
      (let rec t_6_6_7 = (fun ys_8_1_0 -> 
        ys_8_1_0) in
        (let rec h_5_6_7 = 'X' in
          (fun ys_8_1_1 -> 
            (let rec t_6_6_8 = ((mappend__d2_d3__d0__d5 t_6_6_7) ys_8_1_1) in
              (let rec h_5_6_8 = h_5_6_7 in
                (fun ys_8_1_2 -> 
                  (let rec t_6_6_9 = ((mappend__d2_d2__d0__d6 t_6_6_8) ys_8_1_2) in
                    (let rec h_5_6_9 = h_5_6_8 in
                      (fun ys_8_1_3 -> 
                        (let rec t_6_7_0 = ((mappend__d9__d0__d4_d4 t_6_6_9) ys_8_1_3) in
                          (let rec h_5_7_0 = h_5_6_9 in
                            (fun ys_8_1_4 -> 
                              (let rec t_6_7_1 = ((mappend__d4__d0__d4_d8 t_6_7_0) ys_8_1_4) in
                                (fun _lh_dummy_1_5_7 -> 
                                  (1 + (length__d0__d0__d4_d8 t_6_7_1))))))))))))))))
    | `O -> 
      (let rec t_6_7_2 = (fun ys_8_1_5 -> 
        ys_8_1_5) in
        (let rec h_5_7_1 = 'O' in
          (fun ys_8_1_6 -> 
            (let rec t_6_7_3 = ((mappend__d2_d3__d0__d6 t_6_7_2) ys_8_1_6) in
              (let rec h_5_7_2 = h_5_7_1 in
                (fun ys_8_1_7 -> 
                  (let rec t_6_7_4 = ((mappend__d2_d2__d0__d7 t_6_7_3) ys_8_1_7) in
                    (let rec h_5_7_3 = h_5_7_2 in
                      (fun ys_8_1_8 -> 
                        (let rec t_6_7_5 = ((mappend__d9__d0__d4_d5 t_6_7_4) ys_8_1_8) in
                          (let rec h_5_7_4 = h_5_7_3 in
                            (fun ys_8_1_9 -> 
                              (let rec t_6_7_6 = ((mappend__d4__d0__d4_d9 t_6_7_5) ys_8_1_9) in
                                (fun _lh_dummy_1_5_8 -> 
                                  (1 + (length__d0__d0__d4_d9 t_6_7_6))))))))))))))))
    | `Empty -> 
      (let rec t_6_7_7 = (fun ys_8_2_0 -> 
        ys_8_2_0) in
        (let rec h_5_7_5 = ' ' in
          (fun ys_8_2_1 -> 
            (let rec t_6_7_8 = ((mappend__d2_d3__d0__d7 t_6_7_7) ys_8_2_1) in
              (let rec h_5_7_6 = h_5_7_5 in
                (fun ys_8_2_2 -> 
                  (let rec t_6_7_9 = ((mappend__d2_d2__d0__d8 t_6_7_8) ys_8_2_2) in
                    (let rec h_5_7_7 = h_5_7_6 in
                      (fun ys_8_2_3 -> 
                        (let rec t_6_8_0 = ((mappend__d9__d0__d4_d6 t_6_7_9) ys_8_2_3) in
                          (let rec h_5_7_8 = h_5_7_7 in
                            (fun ys_8_2_4 -> 
                              (let rec t_6_8_1 = ((mappend__d4__d0__d5_d0 t_6_8_0) ys_8_2_4) in
                                (fun _lh_dummy_1_5_9 -> 
                                  (1 + (length__d0__d0__d5_d0 t_6_8_1))))))))))))))))
    | _ -> 
      (failwith "error"))
and showPiece__d8__d0__d0 _lh_showPiece_arg1_1_2 =
  (match _lh_showPiece_arg1_1_2 with
    | `X -> 
      (let rec t_5_1_4 = (fun ys_5_7_7 -> 
        ys_5_7_7) in
        (let rec h_4_4_2 = 'X' in
          (fun ys_5_7_8 -> 
            (let rec t_5_1_5 = ((mappend__d9__d0__d4_d7 t_5_1_4) ys_5_7_8) in
              (let rec h_4_4_3 = h_4_4_2 in
                (fun ys_5_7_9 -> 
                  (let rec t_5_1_6 = ((mappend__d4__d0__d5_d1 t_5_1_5) ys_5_7_9) in
                    (fun _lh_dummy_1_2_1 -> 
                      (1 + (length__d0__d0__d5_d1 t_5_1_6))))))))))
    | `O -> 
      (let rec t_5_1_7 = (fun ys_5_8_0 -> 
        ys_5_8_0) in
        (let rec h_4_4_4 = 'O' in
          (fun ys_5_8_1 -> 
            (let rec t_5_1_8 = ((mappend__d9__d0__d4_d8 t_5_1_7) ys_5_8_1) in
              (let rec h_4_4_5 = h_4_4_4 in
                (fun ys_5_8_2 -> 
                  (let rec t_5_1_9 = ((mappend__d4__d0__d5_d2 t_5_1_8) ys_5_8_2) in
                    (fun _lh_dummy_1_2_2 -> 
                      (1 + (length__d0__d0__d5_d2 t_5_1_9))))))))))
    | `Empty -> 
      (let rec t_5_2_0 = (fun ys_5_8_3 -> 
        ys_5_8_3) in
        (let rec h_4_4_6 = ' ' in
          (fun ys_5_8_4 -> 
            (let rec t_5_2_1 = ((mappend__d9__d0__d4_d9 t_5_2_0) ys_5_8_4) in
              (let rec h_4_4_7 = h_4_4_6 in
                (fun ys_5_8_5 -> 
                  (let rec t_5_2_2 = ((mappend__d4__d0__d5_d3 t_5_2_1) ys_5_8_5) in
                    (fun _lh_dummy_1_2_3 -> 
                      (1 + (length__d0__d0__d5_d3 t_5_2_2))))))))))
    | _ -> 
      (failwith "error"))
and showRow__d0__d0__d0 _lh_showRow_arg1_4 =
  (match _lh_showRow_arg1_4 with
    | `LH_C(_lh_showRow_LH_C_0_1_2, _lh_showRow_LH_C_1_1_2) -> 
      (match _lh_showRow_LH_C_1_1_2 with
        | `LH_C(_lh_showRow_LH_C_0_1_3, _lh_showRow_LH_C_1_1_3) -> 
          (match _lh_showRow_LH_C_1_1_3 with
            | `LH_C(_lh_showRow_LH_C_0_1_4, _lh_showRow_LH_C_1_1_4) -> 
              (match _lh_showRow_LH_C_1_1_4 with
                | `LH_N -> 
                  ((mappend__d1_d4__d0__d0 ((mappend__d1_d5__d0__d0 ((mappend__d1_d6__d0__d0 ((mappend__d1_d7__d0__d0 (showPiece__d0__d0__d0 _lh_showRow_LH_C_0_1_2)) (let rec t_7_2_9 = (fun ys_8_8_4 -> 
                    ys_8_8_4) in
                    (let rec h_6_2_2 = '|' in
                      (fun ys_8_8_5 -> 
                        (let rec t_7_3_0 = ((mappend__d1_d6__d0__d1 t_7_2_9) ys_8_8_5) in
                          (let rec h_6_2_3 = h_6_2_2 in
                            (fun ys_8_8_6 -> 
                              (let rec t_7_3_1 = ((mappend__d1_d5__d0__d1 t_7_3_0) ys_8_8_6) in
                                (let rec h_6_2_4 = h_6_2_3 in
                                  (fun ys_8_8_7 -> 
                                    (let rec t_7_3_2 = ((mappend__d1_d4__d0__d1 t_7_3_1) ys_8_8_7) in
                                      (let rec h_6_2_5 = h_6_2_4 in
                                        (fun ys_8_8_8 -> 
                                          (let rec t_7_3_3 = ((mappend__d1_d3__d0__d1 t_7_3_2) ys_8_8_8) in
                                            (let rec h_6_2_6 = h_6_2_5 in
                                              (fun ys_8_8_9 -> 
                                                (let rec t_7_3_4 = ((mappend__d1_d2__d0__d9 t_7_3_3) ys_8_8_9) in
                                                  (let rec h_6_2_7 = h_6_2_6 in
                                                    (fun ys_8_9_0 -> 
                                                      (let rec t_7_3_5 = ((mappend__d1_d1__d0__d9 t_7_3_4) ys_8_9_0) in
                                                        (let rec h_6_2_8 = h_6_2_7 in
                                                          (fun ys_8_9_1 -> 
                                                            (let rec t_7_3_6 = ((mappend__d1_d0__d0__d1_d7 t_7_3_5) ys_8_9_1) in
                                                              (let rec h_6_2_9 = h_6_2_8 in
                                                                (fun ys_8_9_2 -> 
                                                                  (let rec t_7_3_7 = ((mappend__d9__d0__d1_d7 t_7_3_6) ys_8_9_2) in
                                                                    (let rec h_6_3_0 = h_6_2_9 in
                                                                      (fun ys_8_9_3 -> 
                                                                        (let rec t_7_3_8 = ((mappend__d4__d0__d2_d1 t_7_3_7) ys_8_9_3) in
                                                                          (fun _lh_dummy_1_7_0 -> 
                                                                            (1 + (length__d0__d0__d2_d1 t_7_3_8))))))))))))))))))))))))))))))))) (showPiece__d1__d0__d0 _lh_showRow_LH_C_0_1_3))) (let rec t_7_3_9 = (fun ys_8_9_4 -> 
                    ys_8_9_4) in
                    (let rec h_6_3_1 = '|' in
                      (fun ys_8_9_5 -> 
                        (let rec t_7_4_0 = ((mappend__d1_d4__d0__d2 t_7_3_9) ys_8_9_5) in
                          (let rec h_6_3_2 = h_6_3_1 in
                            (fun ys_8_9_6 -> 
                              (let rec t_7_4_1 = ((mappend__d1_d3__d0__d2 t_7_4_0) ys_8_9_6) in
                                (let rec h_6_3_3 = h_6_3_2 in
                                  (fun ys_8_9_7 -> 
                                    (let rec t_7_4_2 = ((mappend__d1_d2__d0__d1_d0 t_7_4_1) ys_8_9_7) in
                                      (let rec h_6_3_4 = h_6_3_3 in
                                        (fun ys_8_9_8 -> 
                                          (let rec t_7_4_3 = ((mappend__d1_d1__d0__d1_d0 t_7_4_2) ys_8_9_8) in
                                            (let rec h_6_3_5 = h_6_3_4 in
                                              (fun ys_8_9_9 -> 
                                                (let rec t_7_4_4 = ((mappend__d1_d0__d0__d1_d8 t_7_4_3) ys_8_9_9) in
                                                  (let rec h_6_3_6 = h_6_3_5 in
                                                    (fun ys_9_0_0 -> 
                                                      (let rec t_7_4_5 = ((mappend__d9__d0__d1_d8 t_7_4_4) ys_9_0_0) in
                                                        (let rec h_6_3_7 = h_6_3_6 in
                                                          (fun ys_9_0_1 -> 
                                                            (let rec t_7_4_6 = ((mappend__d4__d0__d2_d2 t_7_4_5) ys_9_0_1) in
                                                              (fun _lh_dummy_1_7_1 -> 
                                                                (1 + (length__d0__d0__d2_d2 t_7_4_6))))))))))))))))))))))))))) (showPiece__d2__d0__d0 _lh_showRow_LH_C_0_1_4))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showRow__d1__d0__d0 _lh_showRow_arg1_5 =
  (match _lh_showRow_arg1_5 with
    | `LH_C(_lh_showRow_LH_C_0_1_5, _lh_showRow_LH_C_1_1_5) -> 
      (match _lh_showRow_LH_C_1_1_5 with
        | `LH_C(_lh_showRow_LH_C_0_1_6, _lh_showRow_LH_C_1_1_6) -> 
          (match _lh_showRow_LH_C_1_1_6 with
            | `LH_C(_lh_showRow_LH_C_0_1_7, _lh_showRow_LH_C_1_1_7) -> 
              (match _lh_showRow_LH_C_1_1_7 with
                | `LH_N -> 
                  ((mappend__d1_d8__d0__d0 ((mappend__d1_d9__d0__d0 ((mappend__d2_d0__d0__d0 ((mappend__d2_d1__d0__d0 (showPiece__d3__d0__d0 _lh_showRow_LH_C_0_1_5)) (let rec t_7_4_7 = (fun ys_9_0_7 -> 
                    ys_9_0_7) in
                    (let rec h_6_3_8 = '|' in
                      (fun ys_9_0_8 -> 
                        (let rec t_7_4_8 = ((mappend__d2_d0__d0__d1 t_7_4_7) ys_9_0_8) in
                          (let rec h_6_3_9 = h_6_3_8 in
                            (fun ys_9_0_9 -> 
                              (let rec t_7_4_9 = ((mappend__d1_d9__d0__d1 t_7_4_8) ys_9_0_9) in
                                (let rec h_6_4_0 = h_6_3_9 in
                                  (fun ys_9_1_0 -> 
                                    (let rec t_7_5_0 = ((mappend__d1_d8__d0__d1 t_7_4_9) ys_9_1_0) in
                                      (let rec h_6_4_1 = h_6_4_0 in
                                        (fun ys_9_1_1 -> 
                                          (let rec t_7_5_1 = ((mappend__d1_d1__d0__d2_d0 t_7_5_0) ys_9_1_1) in
                                            (let rec h_6_4_2 = h_6_4_1 in
                                              (fun ys_9_1_2 -> 
                                                (let rec t_7_5_2 = ((mappend__d1_d0__d0__d2_d8 t_7_5_1) ys_9_1_2) in
                                                  (let rec h_6_4_3 = h_6_4_2 in
                                                    (fun ys_9_1_3 -> 
                                                      (let rec t_7_5_3 = ((mappend__d9__d0__d2_d8 t_7_5_2) ys_9_1_3) in
                                                        (let rec h_6_4_4 = h_6_4_3 in
                                                          (fun ys_9_1_4 -> 
                                                            (let rec t_7_5_4 = ((mappend__d4__d0__d3_d2 t_7_5_3) ys_9_1_4) in
                                                              (fun _lh_dummy_1_7_2 -> 
                                                                (1 + (length__d0__d0__d3_d2 t_7_5_4))))))))))))))))))))))))))) (showPiece__d4__d0__d0 _lh_showRow_LH_C_0_1_6))) (let rec t_7_5_5 = (fun ys_9_1_5 -> 
                    ys_9_1_5) in
                    (let rec h_6_4_5 = '|' in
                      (fun ys_9_1_6 -> 
                        (let rec t_7_5_6 = ((mappend__d1_d8__d0__d2 t_7_5_5) ys_9_1_6) in
                          (let rec h_6_4_6 = h_6_4_5 in
                            (fun ys_9_1_7 -> 
                              (let rec t_7_5_7 = ((mappend__d1_d1__d0__d2_d1 t_7_5_6) ys_9_1_7) in
                                (let rec h_6_4_7 = h_6_4_6 in
                                  (fun ys_9_1_8 -> 
                                    (let rec t_7_5_8 = ((mappend__d1_d0__d0__d2_d9 t_7_5_7) ys_9_1_8) in
                                      (let rec h_6_4_8 = h_6_4_7 in
                                        (fun ys_9_1_9 -> 
                                          (let rec t_7_5_9 = ((mappend__d9__d0__d2_d9 t_7_5_8) ys_9_1_9) in
                                            (let rec h_6_4_9 = h_6_4_8 in
                                              (fun ys_9_2_0 -> 
                                                (let rec t_7_6_0 = ((mappend__d4__d0__d3_d3 t_7_5_9) ys_9_2_0) in
                                                  (fun _lh_dummy_1_7_3 -> 
                                                    (1 + (length__d0__d0__d3_d3 t_7_6_0))))))))))))))))))))) (showPiece__d5__d0__d0 _lh_showRow_LH_C_0_1_7))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and showRow__d2__d0__d0 _lh_showRow_arg1_3 =
  (match _lh_showRow_arg1_3 with
    | `LH_C(_lh_showRow_LH_C_0_9, _lh_showRow_LH_C_1_9) -> 
      (match _lh_showRow_LH_C_1_9 with
        | `LH_C(_lh_showRow_LH_C_0_1_0, _lh_showRow_LH_C_1_1_0) -> 
          (match _lh_showRow_LH_C_1_1_0 with
            | `LH_C(_lh_showRow_LH_C_0_1_1, _lh_showRow_LH_C_1_1_1) -> 
              (match _lh_showRow_LH_C_1_1_1 with
                | `LH_N -> 
                  ((mappend__d2_d2__d0__d0 ((mappend__d2_d3__d0__d0 ((mappend__d2_d4__d0__d0 ((mappend__d2_d5__d0__d0 (showPiece__d6__d0__d0 _lh_showRow_LH_C_0_9)) (let rec t_4_4_4 = (fun ys_4_4_8 -> 
                    ys_4_4_8) in
                    (let rec h_3_8_0 = '|' in
                      (fun ys_4_4_9 -> 
                        (let rec t_4_4_5 = ((mappend__d2_d4__d0__d1 t_4_4_4) ys_4_4_9) in
                          (let rec h_3_8_1 = h_3_8_0 in
                            (fun ys_4_5_0 -> 
                              (let rec t_4_4_6 = ((mappend__d2_d3__d0__d1 t_4_4_5) ys_4_5_0) in
                                (let rec h_3_8_2 = h_3_8_1 in
                                  (fun ys_4_5_1 -> 
                                    (let rec t_4_4_7 = ((mappend__d2_d2__d0__d1 t_4_4_6) ys_4_5_1) in
                                      (let rec h_3_8_3 = h_3_8_2 in
                                        (fun ys_4_5_2 -> 
                                          (let rec t_4_4_8 = ((mappend__d9__d0__d3_d9 t_4_4_7) ys_4_5_2) in
                                            (let rec h_3_8_4 = h_3_8_3 in
                                              (fun ys_4_5_3 -> 
                                                (let rec t_4_4_9 = ((mappend__d4__d0__d4_d3 t_4_4_8) ys_4_5_3) in
                                                  (fun _lh_dummy_1_0_1 -> 
                                                    (1 + (length__d0__d0__d4_d3 t_4_4_9))))))))))))))))))))) (showPiece__d7__d0__d0 _lh_showRow_LH_C_0_1_0))) (let rec t_4_5_0 = (fun ys_4_5_4 -> 
                    ys_4_5_4) in
                    (let rec h_3_8_5 = '|' in
                      (fun ys_4_5_5 -> 
                        (let rec t_4_5_1 = ((mappend__d2_d2__d0__d2 t_4_5_0) ys_4_5_5) in
                          (let rec h_3_8_6 = h_3_8_5 in
                            (fun ys_4_5_6 -> 
                              (let rec t_4_5_2 = ((mappend__d9__d0__d4_d0 t_4_5_1) ys_4_5_6) in
                                (let rec h_3_8_7 = h_3_8_6 in
                                  (fun ys_4_5_7 -> 
                                    (let rec t_4_5_3 = ((mappend__d4__d0__d4_d4 t_4_5_2) ys_4_5_7) in
                                      (fun _lh_dummy_1_0_2 -> 
                                        (1 + (length__d0__d0__d4_d4 t_4_5_3))))))))))))))) (showPiece__d8__d0__d0 _lh_showRow_LH_C_0_1_1))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and static__d0__d0__d0 _lh_static_arg1_5 =
  ((interpret__d0__d0__d0 0) ((map__d7__d0__d0 (score__d0__d0__d0 _lh_static_arg1_5)) wins__d0__d0__d0))
and static__d1__d0__d0 _lh_static_arg1_3 =
  ((interpret__d1__d0__d0 0) ((map__d1_d2__d0__d0 (score__d1__d0__d0 _lh_static_arg1_3)) wins__d1__d0__d0))
and static__d2__d0__d0 _lh_static_arg1_4 =
  ((interpret__d2__d0__d0 0) ((map__d1_d4__d0__d0 (score__d2__d0__d0 _lh_static_arg1_4)) wins__d2__d0__d0))
and testBoard__d1__d0__d0 ys_7_9_6 =
  (let rec t_6_5_8 = (let rec t_6_5_9 = (let rec t_6_6_0 = (fun ys_7_9_3 -> 
    ys_7_9_3) in
    (let rec h_5_5_8 = (`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_7_9_4 -> 
        (`LH_C(h_5_5_8, ((mappend__d5__d0__d1 t_6_6_0) ys_7_9_4)))))) in
    (let rec h_5_5_9 = (`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_7_9_5 -> 
        (`LH_C(h_5_5_9, ((mappend__d5__d0__d2 t_6_5_9) ys_7_9_5)))))) in
    (let rec h_5_6_0 = (`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))) in
      (`LH_C(h_5_6_0, ((mappend__d5__d0__d3 t_6_5_8) ys_7_9_6)))))
and testMinimax_nofib__d0__d0__d0 _lh_testMinimax_nofib_arg1_1 =
  (length__d0__d0__d0 (prog__d0__d0__d0 _lh_testMinimax_nofib_arg1_1))
and wins__d0__d0__d0 f_2_0_2 _lh_interpret_arg1_8_0 =
  (let rec t_8_0_4 = (let rec t_8_0_5 = (let rec t_8_0_6 = (let rec t_8_0_7 = (let rec t_8_0_8 = (let rec t_8_0_9 = (let rec t_8_1_0 = (let rec t_8_1_1 = (fun f_1_9_4 _lh_interpret_arg1_7_2 -> 
    (`Score(_lh_interpret_arg1_7_2))) in
    (let rec h_6_9_0 = win8__d0__d0__d0 in
      (fun f_1_9_5 -> 
        (let rec _lh_interpret_LH_C_1_5_8 = ((map__d7__d0__d1 f_1_9_5) t_8_1_1) in
          (let rec _lh_interpret_LH_C_0_4_0 = (f_1_9_5 h_6_9_0) in
            (fun _lh_interpret_arg1_7_3 -> 
              ((_lh_interpret_LH_C_0_4_0 _lh_interpret_LH_C_1_5_8) _lh_interpret_arg1_7_3))))))) in
    (let rec h_6_9_1 = win7__d0__d0__d0 in
      (fun f_1_9_6 -> 
        (let rec _lh_interpret_LH_C_1_5_9 = ((map__d7__d0__d2 f_1_9_6) t_8_1_0) in
          (let rec _lh_interpret_LH_C_0_4_1 = (f_1_9_6 h_6_9_1) in
            (fun _lh_interpret_arg1_7_4 -> 
              ((_lh_interpret_LH_C_0_4_1 _lh_interpret_LH_C_1_5_9) _lh_interpret_arg1_7_4))))))) in
    (let rec h_6_9_2 = win6__d0__d0__d0 in
      (fun f_1_9_7 -> 
        (let rec _lh_interpret_LH_C_1_6_0 = ((map__d7__d0__d3 f_1_9_7) t_8_0_9) in
          (let rec _lh_interpret_LH_C_0_4_2 = (f_1_9_7 h_6_9_2) in
            (fun _lh_interpret_arg1_7_5 -> 
              ((_lh_interpret_LH_C_0_4_2 _lh_interpret_LH_C_1_6_0) _lh_interpret_arg1_7_5))))))) in
    (let rec h_6_9_3 = win5__d0__d0__d0 in
      (fun f_1_9_8 -> 
        (let rec _lh_interpret_LH_C_1_6_1 = ((map__d7__d0__d4 f_1_9_8) t_8_0_8) in
          (let rec _lh_interpret_LH_C_0_4_3 = (f_1_9_8 h_6_9_3) in
            (fun _lh_interpret_arg1_7_6 -> 
              ((_lh_interpret_LH_C_0_4_3 _lh_interpret_LH_C_1_6_1) _lh_interpret_arg1_7_6))))))) in
    (let rec h_6_9_4 = win4__d0__d0__d0 in
      (fun f_1_9_9 -> 
        (let rec _lh_interpret_LH_C_1_6_2 = ((map__d7__d0__d5 f_1_9_9) t_8_0_7) in
          (let rec _lh_interpret_LH_C_0_4_4 = (f_1_9_9 h_6_9_4) in
            (fun _lh_interpret_arg1_7_7 -> 
              ((_lh_interpret_LH_C_0_4_4 _lh_interpret_LH_C_1_6_2) _lh_interpret_arg1_7_7))))))) in
    (let rec h_6_9_5 = win3__d0__d0__d0 in
      (fun f_2_0_0 -> 
        (let rec _lh_interpret_LH_C_1_6_3 = ((map__d7__d0__d6 f_2_0_0) t_8_0_6) in
          (let rec _lh_interpret_LH_C_0_4_5 = (f_2_0_0 h_6_9_5) in
            (fun _lh_interpret_arg1_7_8 -> 
              ((_lh_interpret_LH_C_0_4_5 _lh_interpret_LH_C_1_6_3) _lh_interpret_arg1_7_8))))))) in
    (let rec h_6_9_6 = win2__d0__d0__d0 in
      (fun f_2_0_1 -> 
        (let rec _lh_interpret_LH_C_1_6_4 = ((map__d7__d0__d7 f_2_0_1) t_8_0_5) in
          (let rec _lh_interpret_LH_C_0_4_6 = (f_2_0_1 h_6_9_6) in
            (fun _lh_interpret_arg1_7_9 -> 
              ((_lh_interpret_LH_C_0_4_6 _lh_interpret_LH_C_1_6_4) _lh_interpret_arg1_7_9))))))) in
    (let rec h_6_9_7 = win1__d0__d0__d0 in
      (let rec _lh_interpret_LH_C_1_6_5 = ((map__d7__d0__d8 f_2_0_2) t_8_0_4) in
        (let rec _lh_interpret_LH_C_0_4_7 = (f_2_0_2 h_6_9_7) in
          ((_lh_interpret_LH_C_0_4_7 _lh_interpret_LH_C_1_6_5) _lh_interpret_arg1_8_0)))))
and wins__d1__d0__d0 f_1_6_0 _lh_interpret_arg1_5_8 =
  (let rec t_7_2_1 = (let rec t_7_2_2 = (let rec t_7_2_3 = (let rec t_7_2_4 = (let rec t_7_2_5 = (let rec t_7_2_6 = (let rec t_7_2_7 = (let rec t_7_2_8 = (fun f_1_5_2 _lh_interpret_arg1_5_0 -> 
    (`Score(_lh_interpret_arg1_5_0))) in
    (let rec h_6_1_4 = win8__d1__d0__d0 in
      (fun f_1_5_3 -> 
        (let rec _lh_interpret_LH_C_1_3_9 = ((map__d1_d2__d0__d1 f_1_5_3) t_7_2_8) in
          (let rec _lh_interpret_LH_C_0_2_4 = (f_1_5_3 h_6_1_4) in
            (fun _lh_interpret_arg1_5_1 -> 
              ((_lh_interpret_LH_C_0_2_4 _lh_interpret_LH_C_1_3_9) _lh_interpret_arg1_5_1))))))) in
    (let rec h_6_1_5 = win7__d1__d0__d0 in
      (fun f_1_5_4 -> 
        (let rec _lh_interpret_LH_C_1_4_0 = ((map__d1_d2__d0__d2 f_1_5_4) t_7_2_7) in
          (let rec _lh_interpret_LH_C_0_2_5 = (f_1_5_4 h_6_1_5) in
            (fun _lh_interpret_arg1_5_2 -> 
              ((_lh_interpret_LH_C_0_2_5 _lh_interpret_LH_C_1_4_0) _lh_interpret_arg1_5_2))))))) in
    (let rec h_6_1_6 = win6__d1__d0__d0 in
      (fun f_1_5_5 -> 
        (let rec _lh_interpret_LH_C_1_4_1 = ((map__d1_d2__d0__d3 f_1_5_5) t_7_2_6) in
          (let rec _lh_interpret_LH_C_0_2_6 = (f_1_5_5 h_6_1_6) in
            (fun _lh_interpret_arg1_5_3 -> 
              ((_lh_interpret_LH_C_0_2_6 _lh_interpret_LH_C_1_4_1) _lh_interpret_arg1_5_3))))))) in
    (let rec h_6_1_7 = win5__d1__d0__d0 in
      (fun f_1_5_6 -> 
        (let rec _lh_interpret_LH_C_1_4_2 = ((map__d1_d2__d0__d4 f_1_5_6) t_7_2_5) in
          (let rec _lh_interpret_LH_C_0_2_7 = (f_1_5_6 h_6_1_7) in
            (fun _lh_interpret_arg1_5_4 -> 
              ((_lh_interpret_LH_C_0_2_7 _lh_interpret_LH_C_1_4_2) _lh_interpret_arg1_5_4))))))) in
    (let rec h_6_1_8 = win4__d1__d0__d0 in
      (fun f_1_5_7 -> 
        (let rec _lh_interpret_LH_C_1_4_3 = ((map__d1_d2__d0__d5 f_1_5_7) t_7_2_4) in
          (let rec _lh_interpret_LH_C_0_2_8 = (f_1_5_7 h_6_1_8) in
            (fun _lh_interpret_arg1_5_5 -> 
              ((_lh_interpret_LH_C_0_2_8 _lh_interpret_LH_C_1_4_3) _lh_interpret_arg1_5_5))))))) in
    (let rec h_6_1_9 = win3__d1__d0__d0 in
      (fun f_1_5_8 -> 
        (let rec _lh_interpret_LH_C_1_4_4 = ((map__d1_d2__d0__d6 f_1_5_8) t_7_2_3) in
          (let rec _lh_interpret_LH_C_0_2_9 = (f_1_5_8 h_6_1_9) in
            (fun _lh_interpret_arg1_5_6 -> 
              ((_lh_interpret_LH_C_0_2_9 _lh_interpret_LH_C_1_4_4) _lh_interpret_arg1_5_6))))))) in
    (let rec h_6_2_0 = win2__d1__d0__d0 in
      (fun f_1_5_9 -> 
        (let rec _lh_interpret_LH_C_1_4_5 = ((map__d1_d2__d0__d7 f_1_5_9) t_7_2_2) in
          (let rec _lh_interpret_LH_C_0_3_0 = (f_1_5_9 h_6_2_0) in
            (fun _lh_interpret_arg1_5_7 -> 
              ((_lh_interpret_LH_C_0_3_0 _lh_interpret_LH_C_1_4_5) _lh_interpret_arg1_5_7))))))) in
    (let rec h_6_2_1 = win1__d1__d0__d0 in
      (let rec _lh_interpret_LH_C_1_4_6 = ((map__d1_d2__d0__d8 f_1_6_0) t_7_2_1) in
        (let rec _lh_interpret_LH_C_0_3_1 = (f_1_6_0 h_6_2_1) in
          ((_lh_interpret_LH_C_0_3_1 _lh_interpret_LH_C_1_4_6) _lh_interpret_arg1_5_8)))))
and wins__d2__d0__d0 f_1_8_5 _lh_interpret_arg1_7_1 =
  (let rec t_7_9_2 = (let rec t_7_9_3 = (let rec t_7_9_4 = (let rec t_7_9_5 = (let rec t_7_9_6 = (let rec t_7_9_7 = (let rec t_7_9_8 = (let rec t_7_9_9 = (fun f_1_7_7 _lh_interpret_arg1_6_3 -> 
    (`Score(_lh_interpret_arg1_6_3))) in
    (let rec h_6_7_8 = win8__d2__d0__d0 in
      (fun f_1_7_8 -> 
        (let rec _lh_interpret_LH_C_1_5_0 = ((map__d1_d4__d0__d1 f_1_7_8) t_7_9_9) in
          (let rec _lh_interpret_LH_C_0_3_2 = (f_1_7_8 h_6_7_8) in
            (fun _lh_interpret_arg1_6_4 -> 
              ((_lh_interpret_LH_C_0_3_2 _lh_interpret_LH_C_1_5_0) _lh_interpret_arg1_6_4))))))) in
    (let rec h_6_7_9 = win7__d2__d0__d0 in
      (fun f_1_7_9 -> 
        (let rec _lh_interpret_LH_C_1_5_1 = ((map__d1_d4__d0__d2 f_1_7_9) t_7_9_8) in
          (let rec _lh_interpret_LH_C_0_3_3 = (f_1_7_9 h_6_7_9) in
            (fun _lh_interpret_arg1_6_5 -> 
              ((_lh_interpret_LH_C_0_3_3 _lh_interpret_LH_C_1_5_1) _lh_interpret_arg1_6_5))))))) in
    (let rec h_6_8_0 = win6__d2__d0__d0 in
      (fun f_1_8_0 -> 
        (let rec _lh_interpret_LH_C_1_5_2 = ((map__d1_d4__d0__d3 f_1_8_0) t_7_9_7) in
          (let rec _lh_interpret_LH_C_0_3_4 = (f_1_8_0 h_6_8_0) in
            (fun _lh_interpret_arg1_6_6 -> 
              ((_lh_interpret_LH_C_0_3_4 _lh_interpret_LH_C_1_5_2) _lh_interpret_arg1_6_6))))))) in
    (let rec h_6_8_1 = win5__d2__d0__d0 in
      (fun f_1_8_1 -> 
        (let rec _lh_interpret_LH_C_1_5_3 = ((map__d1_d4__d0__d4 f_1_8_1) t_7_9_6) in
          (let rec _lh_interpret_LH_C_0_3_5 = (f_1_8_1 h_6_8_1) in
            (fun _lh_interpret_arg1_6_7 -> 
              ((_lh_interpret_LH_C_0_3_5 _lh_interpret_LH_C_1_5_3) _lh_interpret_arg1_6_7))))))) in
    (let rec h_6_8_2 = win4__d2__d0__d0 in
      (fun f_1_8_2 -> 
        (let rec _lh_interpret_LH_C_1_5_4 = ((map__d1_d4__d0__d5 f_1_8_2) t_7_9_5) in
          (let rec _lh_interpret_LH_C_0_3_6 = (f_1_8_2 h_6_8_2) in
            (fun _lh_interpret_arg1_6_8 -> 
              ((_lh_interpret_LH_C_0_3_6 _lh_interpret_LH_C_1_5_4) _lh_interpret_arg1_6_8))))))) in
    (let rec h_6_8_3 = win3__d2__d0__d0 in
      (fun f_1_8_3 -> 
        (let rec _lh_interpret_LH_C_1_5_5 = ((map__d1_d4__d0__d6 f_1_8_3) t_7_9_4) in
          (let rec _lh_interpret_LH_C_0_3_7 = (f_1_8_3 h_6_8_3) in
            (fun _lh_interpret_arg1_6_9 -> 
              ((_lh_interpret_LH_C_0_3_7 _lh_interpret_LH_C_1_5_5) _lh_interpret_arg1_6_9))))))) in
    (let rec h_6_8_4 = win2__d2__d0__d0 in
      (fun f_1_8_4 -> 
        (let rec _lh_interpret_LH_C_1_5_6 = ((map__d1_d4__d0__d7 f_1_8_4) t_7_9_3) in
          (let rec _lh_interpret_LH_C_0_3_8 = (f_1_8_4 h_6_8_4) in
            (fun _lh_interpret_arg1_7_0 -> 
              ((_lh_interpret_LH_C_0_3_8 _lh_interpret_LH_C_1_5_6) _lh_interpret_arg1_7_0))))))) in
    (let rec h_6_8_5 = win1__d2__d0__d0 in
      (let rec _lh_interpret_LH_C_1_5_7 = ((map__d1_d4__d0__d8 f_1_8_5) t_7_9_2) in
        (let rec _lh_interpret_LH_C_0_3_9 = (f_1_8_5 h_6_8_5) in
          ((_lh_interpret_LH_C_0_3_9 _lh_interpret_LH_C_1_5_7) _lh_interpret_arg1_7_1)))));;

Command_unix.run (Bench.make_command [
  Bench.Test.create ~name:"original_Minimax_nofib" (fun () -> ignore ((testMinimax_nofib__d0 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))))))));
  Bench.Test.create ~name:"lumberhack_Minimax_nofib" (fun () -> ignore ((testMinimax_nofib__d0__d0 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))))))));
  Bench.Test.create ~name:"lumberhack_pop_out_Minimax_nofib" (fun () -> ignore ((testMinimax_nofib__d0__d0__d0 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))))))));
])
