

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded_(LH_Dum: sig end): sig val run: unit -> int end = struct
let rec mappend_lh__d1 xs_2_0 ys_2_0 =
  (match xs_2_0 with
    | `LH_C(h_3_0, t_3_0) -> 
      (`LH_C(h_3_0, ((mappend_lh__d1 t_3_0) ys_2_0)))
    | `LH_N -> 
      ys_2_0);;
let rec testBoard_lh__d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec mappend_lh__d4 xs_1_7 ys_1_7 =
  (match xs_1_7 with
    | `LH_C(h_2_6, t_2_6) -> 
      (`LH_C(h_2_6, ((mappend_lh__d4 t_2_6) ys_1_7)))
    | `LH_N -> 
      ys_1_7);;
let rec showPiece_lh__d2 _lh_showPiece_arg1_7 =
  (match _lh_showPiece_arg1_7 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d3 _lh_showPiece_arg1_6 =
  (match _lh_showPiece_arg1_6 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d4 xs_7 ys_7 =
  (match xs_7 with
    | `LH_C(h_9, t_9) -> 
      (`LH_C(h_9, ((mappend_lh__d1_d4 t_9) ys_7)))
    | `LH_N -> 
      ys_7);;
let rec mappend_lh__d1_d3 xs_8 ys_8 =
  (match xs_8 with
    | `LH_C(h_1_0, t_1_0) -> 
      (`LH_C(h_1_0, ((mappend_lh__d1_d3 t_1_0) ys_8)))
    | `LH_N -> 
      ys_8);;
let rec mappend_lh__d1_d5 xs_6 ys_6 =
  (match xs_6 with
    | `LH_C(h_8, t_8) -> 
      (`LH_C(h_8, ((mappend_lh__d1_d5 t_8) ys_6)))
    | `LH_N -> 
      ys_6);;
let rec showPiece_lh__d1 _lh_showPiece_arg1_8 =
  (match _lh_showPiece_arg1_8 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d2 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_1_1, t_1_1) -> 
      (`LH_C(h_1_1, ((mappend_lh__d1_d2 t_1_1) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec showRow_lh__d1 _lh_showRow_arg1_2 =
  (match _lh_showRow_arg1_2 with
    | `LH_C(_lh_showRow_LH_C_0_6, _lh_showRow_LH_C_1_6) -> 
      (match _lh_showRow_LH_C_1_6 with
        | `LH_C(_lh_showRow_LH_C_0_7, _lh_showRow_LH_C_1_7) -> 
          (match _lh_showRow_LH_C_1_7 with
            | `LH_C(_lh_showRow_LH_C_0_8, _lh_showRow_LH_C_1_8) -> 
              (match _lh_showRow_LH_C_1_8 with
                | `LH_N -> 
                  ((mappend_lh__d1_d2 ((mappend_lh__d1_d3 ((mappend_lh__d1_d5 ((mappend_lh__d1_d4 (showPiece_lh__d1 _lh_showRow_LH_C_0_6)) (`LH_C('|', (`LH_N))))) (showPiece_lh__d2 _lh_showRow_LH_C_0_7))) (`LH_C('|', (`LH_N))))) (showPiece_lh__d3 _lh_showRow_LH_C_0_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_1, t_2_1) -> 
      (`LH_C(h_2_1, ((mappend_lh__d8 t_2_1) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend_lh__d6 xs_1_5 ys_1_5 =
  (match xs_1_5 with
    | `LH_C(h_2_3, t_2_3) -> 
      (`LH_C(h_2_3, ((mappend_lh__d6 t_2_3) ys_1_5)))
    | `LH_N -> 
      ys_1_5);;
let rec mappend_lh__d9 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_0, t_2_0) -> 
      (`LH_C(h_2_0, ((mappend_lh__d9 t_2_0) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec mappend_lh__d2_d1 xs_0 ys_0 =
  (match xs_0 with
    | `LH_C(h_2, t_2) -> 
      (`LH_C(h_2, ((mappend_lh__d2_d1 t_2) ys_0)))
    | `LH_N -> 
      ys_0);;
let rec showPiece_lh__d9 _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d8 _lh_showPiece_arg1_1 =
  (match _lh_showPiece_arg1_1 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d7 _lh_showPiece_arg1_2 =
  (match _lh_showPiece_arg1_2 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d0 xs_1 ys_1 =
  (match xs_1 with
    | `LH_C(h_3, t_3) -> 
      (`LH_C(h_3, ((mappend_lh__d2_d0 t_3) ys_1)))
    | `LH_N -> 
      ys_1);;
let rec showRow_lh__d3 _lh_showRow_arg1_0 =
  (match _lh_showRow_arg1_0 with
    | `LH_C(_lh_showRow_LH_C_0_0, _lh_showRow_LH_C_1_0) -> 
      (match _lh_showRow_LH_C_1_0 with
        | `LH_C(_lh_showRow_LH_C_0_1, _lh_showRow_LH_C_1_1) -> 
          (match _lh_showRow_LH_C_1_1 with
            | `LH_C(_lh_showRow_LH_C_0_2, _lh_showRow_LH_C_1_2) -> 
              (match _lh_showRow_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend_lh__d2_d1 ((mappend_lh__d2_d0 ((mappend_lh__d2_d1 ((mappend_lh__d2_d1 (showPiece_lh__d7 _lh_showRow_LH_C_0_0)) (`LH_C('|', (`LH_N))))) (showPiece_lh__d9 _lh_showRow_LH_C_0_1))) (`LH_C('|', (`LH_N))))) (showPiece_lh__d8 _lh_showRow_LH_C_0_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d0 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_1_9, t_1_9) -> 
      (`LH_C(h_1_9, ((mappend_lh__d1_d0 t_1_9) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend_lh__d1_d6 xs_5 ys_5 =
  (match xs_5 with
    | `LH_C(h_7, t_7) -> 
      (`LH_C(h_7, ((mappend_lh__d1_d6 t_7) ys_5)))
    | `LH_N -> 
      ys_5);;
let rec mappend_lh__d1_d8 xs_3 ys_3 =
  (match xs_3 with
    | `LH_C(h_5, t_5) -> 
      (`LH_C(h_5, ((mappend_lh__d1_d8 t_5) ys_3)))
    | `LH_N -> 
      ys_3);;
let rec mappend_lh__d1_d9 xs_2 ys_2 =
  (match xs_2 with
    | `LH_C(h_4, t_4) -> 
      (`LH_C(h_4, ((mappend_lh__d1_d9 t_4) ys_2)))
    | `LH_N -> 
      ys_2);;
let rec showPiece_lh__d4 _lh_showPiece_arg1_5 =
  (match _lh_showPiece_arg1_5 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d5 _lh_showPiece_arg1_4 =
  (match _lh_showPiece_arg1_4 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d6 _lh_showPiece_arg1_3 =
  (match _lh_showPiece_arg1_3 with
    | `X -> 
      (`LH_C('X', (`LH_N)))
    | `O -> 
      (`LH_C('O', (`LH_N)))
    | `Empty -> 
      (`LH_C(' ', (`LH_N)))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d7 xs_4 ys_4 =
  (match xs_4 with
    | `LH_C(h_6, t_6) -> 
      (`LH_C(h_6, ((mappend_lh__d1_d7 t_6) ys_4)))
    | `LH_N -> 
      ys_4);;
let rec showRow_lh__d2 _lh_showRow_arg1_1 =
  (match _lh_showRow_arg1_1 with
    | `LH_C(_lh_showRow_LH_C_0_3, _lh_showRow_LH_C_1_3) -> 
      (match _lh_showRow_LH_C_1_3 with
        | `LH_C(_lh_showRow_LH_C_0_4, _lh_showRow_LH_C_1_4) -> 
          (match _lh_showRow_LH_C_1_4 with
            | `LH_C(_lh_showRow_LH_C_0_5, _lh_showRow_LH_C_1_5) -> 
              (match _lh_showRow_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend_lh__d1_d8 ((mappend_lh__d1_d7 ((mappend_lh__d1_d6 ((mappend_lh__d1_d9 (showPiece_lh__d5 _lh_showRow_LH_C_0_3)) (`LH_C('|', (`LH_N))))) (showPiece_lh__d4 _lh_showRow_LH_C_0_4))) (`LH_C('|', (`LH_N))))) (showPiece_lh__d6 _lh_showRow_LH_C_0_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d7 xs_1_4 ys_1_4 =
  (match xs_1_4 with
    | `LH_C(h_2_2, t_2_2) -> 
      (`LH_C(h_2_2, ((mappend_lh__d7 t_2_2) ys_1_4)))
    | `LH_N -> 
      ys_1_4);;
let rec showBoard_lh__d1 _lh_showBoard_arg1_0 =
  (match _lh_showBoard_arg1_0 with
    | `LH_C(_lh_showBoard_LH_C_0_0, _lh_showBoard_LH_C_1_0) -> 
      (match _lh_showBoard_LH_C_1_0 with
        | `LH_C(_lh_showBoard_LH_C_0_1, _lh_showBoard_LH_C_1_1) -> 
          (match _lh_showBoard_LH_C_1_1 with
            | `LH_C(_lh_showBoard_LH_C_0_2, _lh_showBoard_LH_C_1_2) -> 
              (match _lh_showBoard_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend_lh__d6 ((mappend_lh__d7 ((mappend_lh__d8 ((mappend_lh__d9 ((mappend_lh__d1_d0 (showRow_lh__d3 _lh_showBoard_LH_C_0_0)) (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N))))))))))))))))))) (showRow_lh__d2 _lh_showBoard_LH_C_0_1))) (`LH_C('|', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('-', (`LH_C('|', (`LH_N))))))))))))))))))) (showRow_lh__d1 _lh_showBoard_LH_C_0_2))) (`LH_C('|', (`LH_C('|', (`LH_N))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d1 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_1_8, t_1_8) -> 
      (`LH_C(h_1_8, ((mappend_lh__d1_d1 t_1_8) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec showEvaluation_lh__d1 _lh_showEvaluation_arg1_0 =
  (match _lh_showEvaluation_arg1_0 with
    | `XWin -> 
      (`LH_C('X', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `OWin -> 
      (`LH_C('O', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `Score(_lh_showEvaluation_Score_0_0) -> 
      ((mappend_lh__d1_d1 (`LH_C('S', (`LH_C('c', (`LH_C('o', (`LH_C('r', (`LH_C('e', (`LH_N)))))))))))) (string_of_int _lh_showEvaluation_Score_0_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d3 xs_1_8 ys_1_8 =
  (match xs_1_8 with
    | `LH_C(h_2_7, t_2_7) -> 
      (`LH_C(h_2_7, ((mappend_lh__d3 t_2_7) ys_1_8)))
    | `LH_N -> 
      ys_1_8);;
let rec showMove_lh__d1 _lh_showMove_arg1_0 =
  (match _lh_showMove_arg1_0 with
    | `LH_P2(_lh_showMove_LH_P2_0_0, _lh_showMove_LH_P2_1_0) -> 
      ((mappend_lh__d3 ((mappend_lh__d4 (showEvaluation_lh__d1 _lh_showMove_LH_P2_1_0)) (`LH_C('|', (`LH_N))))) (showBoard_lh__d1 _lh_showMove_LH_P2_0_0))
    | _ -> 
      (failwith "error"));;
let rec testBoard_lh__d1_d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec map_lh__d6 f_1 ls_3 =
  (match ls_3 with
    | `LH_C(h_1_2, t_1_2) -> 
      (`LH_C((f_1 h_1_2), ((map_lh__d6 f_1) t_1_2)))
    | `LH_N -> 
      (`LH_N));;
let rec cropTree_lh__d1 _lh_cropTree_arg1_0 =
  (match _lh_cropTree_arg1_0 with
    | `Branch(_lh_cropTree_Branch_0_0, _lh_cropTree_Branch_1_0) -> 
      (match _lh_cropTree_Branch_1_0 with
        | `LH_N -> 
          (`Branch(_lh_cropTree_Branch_0_0, (`LH_N)))
        | _ -> 
          (match _lh_cropTree_Branch_0_0 with
            | `Score(_lh_cropTree_Score_0_0) -> 
              (`Branch((`Score(_lh_cropTree_Score_0_0)), ((map_lh__d6 cropTree_lh__d1) _lh_cropTree_Branch_1_0)))
            | _ -> 
              (`Branch(_lh_cropTree_Branch_0_0, (`LH_N)))))
    | _ -> 
      (failwith "error"));;
let rec prune_lh__d1 _lh_prune_arg1_0 _lh_prune_arg2_0 =
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
                (`Branch(_lh_prune_Branch_0_1, ((map_lh__d6 (prune_lh__d1 (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_1))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (match _lh_prune_arg2_0 with
        | `Branch(_lh_prune_Branch_0_2, _lh_prune_Branch_1_2) -> 
          (if (_lh_prune_arg1_0 < 0) then
            ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
          else
            (`Branch(_lh_prune_Branch_0_2, ((map_lh__d6 (prune_lh__d1 (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_2))))
        | _ -> 
          (failwith "error")));;
let rec insert_lh__d1 _lh_insert_arg1_0 _lh_insert_arg2_0 _lh_insert_arg3_0 =
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
let rec empty'_lh__d1 _lh_empty'_arg1_0 _lh_empty'_arg2_0 =
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
let rec empty_lh__d1 _lh_empty_arg1_0 _lh_empty_arg2_0 =
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
                          ((empty'_lh__d1 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_0)
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
                          ((empty'_lh__d1 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_4)
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
                          ((empty'_lh__d1 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_8)
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
      (failwith "error"));;
let rec placePiece_lh__d1 _lh_placePiece_arg1_0 _lh_placePiece_arg2_0 _lh_placePiece_arg3_0 =
  (if (not ((empty_lh__d1 _lh_placePiece_arg3_0) _lh_placePiece_arg2_0)) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_0 = _lh_placePiece_arg2_0 in
      (match _lh_matchIdent_0 with
        | `LH_C(_lh_placePiece_LH_C_0_0, _lh_placePiece_LH_C_1_0) -> 
          (match _lh_placePiece_LH_C_1_0 with
            | `LH_C(_lh_placePiece_LH_C_0_1, _lh_placePiece_LH_C_1_1) -> 
              (match _lh_placePiece_LH_C_1_1 with
                | `LH_C(_lh_placePiece_LH_C_0_2, _lh_placePiece_LH_C_1_2) -> 
                  (match _lh_placePiece_LH_C_1_2 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_1 = _lh_placePiece_arg3_0 in
                        (match _lh_matchIdent_1 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_0, _lh_placePiece_LH_P2_1_0) -> 
                            (match _lh_placePiece_LH_P2_0_0 with
                              | 1 -> 
                                (`LH_C((`LH_C((((insert_lh__d1 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_0) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))), (`LH_N)))
                              | 2 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C((((insert_lh__d1 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_1) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))), (`LH_N)))
                              | 3 -> 
                                (`LH_C((`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C((((insert_lh__d1 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_2) _lh_placePiece_LH_P2_1_0), (`LH_N))))))), (`LH_N)))
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
          (failwith "error"))));;
let rec concat_lh__d3 lss_0 =
  (match lss_0 with
    | `LH_C(h_1_3, t_1_3) -> 
      ((mappend_lh__d2_d1 h_1_3) (concat_lh__d3 t_1_3))
    | `LH_N -> 
      (`LH_N));;
let rec enumFromTo_lh__d2 a_1 b_0 =
  (if (a_1 <= b_0) then
    (`LH_C(a_1, ((enumFromTo_lh__d2 (a_1 + 1)) b_0)))
  else
    (`LH_N));;
let rec enumFromTo_lh__d1 a_2 b_1 =
  (if (a_2 <= b_1) then
    (`LH_C(a_2, ((enumFromTo_lh__d1 (a_2 + 1)) b_1)))
  else
    (`LH_N));;
let rec map_lh__d5 f_2 ls_4 =
  (match ls_4 with
    | `LH_C(h_1_4, t_1_4) -> 
      (`LH_C((f_2 h_1_4), ((map_lh__d5 f_2) t_1_4)))
    | `LH_N -> 
      (`LH_N));;
let rec newPositions_lh__d1 _lh_newPositions_arg1_0 _lh_newPositions_arg2_0 =
  (concat_lh__d3 ((map_lh__d5 ((placePiece_lh__d1 _lh_newPositions_arg1_0) _lh_newPositions_arg2_0)) (let rec _lh_listcomp_fun_0 = (fun _lh_listcomp_fun_para_0 -> 
    (match _lh_listcomp_fun_para_0 with
      | `LH_C(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_t_0) -> 
        (let rec _lh_listcomp_fun_1 = (fun _lh_listcomp_fun_para_1 -> 
          (match _lh_listcomp_fun_para_1 with
            | `LH_C(_lh_listcomp_fun_ls_h_1, _lh_listcomp_fun_ls_t_1) -> 
              (`LH_C((`LH_P2(_lh_listcomp_fun_ls_h_0, _lh_listcomp_fun_ls_h_1)), (_lh_listcomp_fun_1 _lh_listcomp_fun_ls_t_1)))
            | `LH_N -> 
              (_lh_listcomp_fun_0 _lh_listcomp_fun_ls_t_0))) in
          (_lh_listcomp_fun_1 ((enumFromTo_lh__d1 1) 3)))
      | `LH_N -> 
        (`LH_N))) in
    (_lh_listcomp_fun_0 ((enumFromTo_lh__d2 1) 3)))));;
let rec opposite_lh__d1 _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec repTree_lh__d1 _lh_repTree_arg1_0 _lh_repTree_arg2_0 _lh_repTree_arg3_0 =
  (`Branch(_lh_repTree_arg3_0, ((map_lh__d6 ((repTree_lh__d1 _lh_repTree_arg2_0) _lh_repTree_arg1_0)) (_lh_repTree_arg1_0 _lh_repTree_arg3_0))));;
let rec searchTree_lh__d1 _lh_searchTree_arg1_0 _lh_searchTree_arg2_0 =
  ((prune_lh__d1 5) (((repTree_lh__d1 (newPositions_lh__d1 _lh_searchTree_arg1_0)) (newPositions_lh__d1 (opposite_lh__d1 _lh_searchTree_arg1_0))) _lh_searchTree_arg2_0));;
let rec foldr_lh__d1 f_0 i_0 ls_1 =
  (match ls_1 with
    | `LH_C(h_1, t_1) -> 
      ((f_0 h_1) (((foldr_lh__d1 f_0) i_0) t_1))
    | `LH_N -> 
      i_0);;
let rec mise_lh__d1 _lh_mise_arg1_0 _lh_mise_arg2_0 _lh_mise_arg3_0 =
  (match _lh_mise_arg3_0 with
    | `Branch(_lh_mise_Branch_0_0, _lh_mise_Branch_1_0) -> 
      (match _lh_mise_Branch_1_0 with
        | `LH_N -> 
          _lh_mise_Branch_0_0
        | _ -> 
          (((foldr_lh__d1 _lh_mise_arg1_0) ((_lh_mise_arg2_0 (`OWin)) (`XWin))) ((map_lh__d6 ((mise_lh__d1 _lh_mise_arg2_0) _lh_mise_arg1_0)) _lh_mise_Branch_1_0)))
    | _ -> 
      (failwith "error"));;
let rec win4_lh__d1 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win6_lh__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win7_lh__d1 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win3_lh__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win2_lh__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win8_lh__d1 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win1_lh__d1 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5_lh__d1 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec wins_lh__d2 =
  (`LH_C(win1_lh__d1, (`LH_C(win2_lh__d1, (`LH_C(win3_lh__d1, (`LH_C(win4_lh__d1, (`LH_C(win5_lh__d1, (`LH_C(win6_lh__d1, (`LH_C(win7_lh__d1, (`LH_C(win8_lh__d1, (`LH_N)))))))))))))))));;
let rec eval_lh__d1 _lh_eval_arg1_0 =
  (if (_lh_eval_arg1_0 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_0 = (0 - 3)) then
      (`OWin)
    else
      (`Score(_lh_eval_arg1_0))));;
let rec scorePiece_lh__d1 _lh_scorePiece_arg1_0 _lh_scorePiece_arg2_0 =
  (match _lh_scorePiece_arg1_0 with
    | `X -> 
      _lh_scorePiece_arg2_0
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_0)
    | _ -> 
      (failwith "error"));;
let rec map2_lh__d1 _lh_map2_arg1_0 _lh_map2_arg2_0 _lh_map2_arg3_0 =
  (match _lh_map2_arg2_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (match _lh_map2_arg3_0 with
        | `LH_N -> 
          (`LH_N)
        | _ -> 
          (match _lh_map2_arg2_0 with
            | `LH_C(_lh_map2_LH_C_0_0, _lh_map2_LH_C_1_0) -> 
              (match _lh_map2_arg3_0 with
                | `LH_C(_lh_map2_LH_C_0_1, _lh_map2_LH_C_1_1) -> 
                  (`LH_C(((_lh_map2_arg1_0 _lh_map2_LH_C_0_0) _lh_map2_LH_C_0_1), (((map2_lh__d1 _lh_map2_arg1_0) _lh_map2_LH_C_1_0) _lh_map2_LH_C_1_1)))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec sumAux_lh__d1 ls_0 a_0 =
  (match ls_0 with
    | `LH_N -> 
      a_0
    | `LH_C(h_0, t_0) -> 
      ((sumAux_lh__d1 t_0) (a_0 + h_0)));;
let rec sum_lh__d1 ls_2 =
  ((sumAux_lh__d1 ls_2) 0);;
let rec score_lh__d2 _lh_score_arg1_0 _lh_score_arg2_0 =
  (eval_lh__d1 (sum_lh__d1 ((map_lh__d6 sum_lh__d1) (((map2_lh__d1 (map2_lh__d1 scorePiece_lh__d1)) _lh_score_arg1_0) _lh_score_arg2_0))));;
let rec interpret_lh__d2 _lh_interpret_arg1_0 _lh_interpret_arg2_0 =
  (match _lh_interpret_arg2_0 with
    | `LH_N -> 
      (`Score(_lh_interpret_arg1_0))
    | `LH_C(_lh_interpret_LH_C_0_0, _lh_interpret_LH_C_1_0) -> 
      (match _lh_interpret_LH_C_0_0 with
        | `Score(_lh_interpret_Score_0_0) -> 
          ((interpret_lh__d2 (_lh_interpret_arg1_0 + _lh_interpret_Score_0_0)) _lh_interpret_LH_C_1_0)
        | `XWin -> 
          (`XWin)
        | `OWin -> 
          (`OWin)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec static_lh__d3 _lh_static_arg1_0 =
  ((interpret_lh__d2 0) ((map_lh__d6 (score_lh__d2 _lh_static_arg1_0)) wins_lh__d2));;
let rec mapTree_lh__d1 _lh_mapTree_arg1_0 _lh_mapTree_arg2_0 =
  (match _lh_mapTree_arg2_0 with
    | `Branch(_lh_mapTree_Branch_0_0, _lh_mapTree_Branch_1_0) -> 
      (`Branch((_lh_mapTree_arg1_0 _lh_mapTree_Branch_0_0), ((map_lh__d6 (mapTree_lh__d1 _lh_mapTree_arg1_0)) _lh_mapTree_Branch_1_0)))
    | _ -> 
      (failwith "error"));;
let rec bestMove_lh__d1 _lh_bestMove_arg1_0 _lh_bestMove_arg2_0 _lh_bestMove_arg3_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (((mise_lh__d1 _lh_bestMove_arg2_0) _lh_bestMove_arg3_0) (cropTree_lh__d1 _lh_funcomp_x_1))) ((fun _lh_funcomp_x_2 -> 
    ((mapTree_lh__d1 static_lh__d3) ((searchTree_lh__d1 _lh_bestMove_arg1_0) _lh_funcomp_x_2))) _lh_funcomp_x_0));;
let rec interpret_lh__d1 _lh_interpret_arg1_1 _lh_interpret_arg2_1 =
  (match _lh_interpret_arg2_1 with
    | `LH_N -> 
      (`Score(_lh_interpret_arg1_1))
    | `LH_C(_lh_interpret_LH_C_0_1, _lh_interpret_LH_C_1_1) -> 
      (match _lh_interpret_LH_C_0_1 with
        | `Score(_lh_interpret_Score_0_1) -> 
          ((interpret_lh__d1 (_lh_interpret_arg1_1 + _lh_interpret_Score_0_1)) _lh_interpret_LH_C_1_1)
        | `XWin -> 
          (`XWin)
        | `OWin -> 
          (`OWin)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec score_lh__d1 _lh_score_arg1_1 _lh_score_arg2_1 =
  (eval_lh__d1 (sum_lh__d1 ((map_lh__d6 sum_lh__d1) (((map2_lh__d1 (map2_lh__d1 scorePiece_lh__d1)) _lh_score_arg1_1) _lh_score_arg2_1))));;
let rec wins_lh__d1 =
  (`LH_C(win1_lh__d1, (`LH_C(win2_lh__d1, (`LH_C(win3_lh__d1, (`LH_C(win4_lh__d1, (`LH_C(win5_lh__d1, (`LH_C(win6_lh__d1, (`LH_C(win7_lh__d1, (`LH_C(win8_lh__d1, (`LH_N)))))))))))))))));;
let rec map_lh__d3 f_4 ls_6 =
  (match ls_6 with
    | `LH_C(h_1_7, t_1_7) -> 
      (`LH_C((f_4 h_1_7), ((map_lh__d3 f_4) t_1_7)))
    | `LH_N -> 
      (`LH_N));;
let rec static_lh__d1 _lh_static_arg1_2 =
  ((interpret_lh__d1 0) ((map_lh__d3 (score_lh__d1 _lh_static_arg1_2)) wins_lh__d1));;
let rec map_lh__d2 f_5 ls_7 =
  (match ls_7 with
    | `LH_C(h_2_4, t_2_4) -> 
      (`LH_C((f_5 h_2_4), ((map_lh__d2 f_5) t_2_4)))
    | `LH_N -> 
      (`LH_N));;
let rec and_lh__d1 _lh_and_arg1_0 =
  (match _lh_and_arg1_0 with
    | `LH_N -> 
      true
    | `LH_C(_lh_and_LH_C_0_0, _lh_and_LH_C_1_0) -> 
      (if _lh_and_LH_C_0_0 then
        (and_lh__d1 _lh_and_LH_C_1_0)
      else
        false)
    | _ -> 
      (failwith "error"));;
let rec concat_lh__d2 lss_1 =
  (match lss_1 with
    | `LH_C(h_1_5, t_1_5) -> 
      ((mappend_lh__d2_d1 h_1_5) (concat_lh__d2 t_1_5))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d4 f_3 ls_5 =
  (match ls_5 with
    | `LH_C(h_1_6, t_1_6) -> 
      (`LH_C((f_3 h_1_6), ((map_lh__d4 f_3) t_1_6)))
    | `LH_N -> 
      (`LH_N));;
let rec fullBoard_lh__d1 _lh_fullBoard_arg1_0 =
  (and_lh__d1 ((map_lh__d4 (fun x_0 -> 
    (not (x_0 = (`Empty))))) (concat_lh__d2 _lh_fullBoard_arg1_0)));;
let rec best_lh__d1 _lh_best_arg1_0 _lh_best_arg2_0 _lh_best_arg3_0 =
  (match _lh_best_arg2_0 with
    | `LH_C(_lh_best_LH_C_0_0, _lh_best_LH_C_1_0) -> 
      (match _lh_best_arg3_0 with
        | `LH_C(_lh_best_LH_C_0_1, _lh_best_LH_C_1_1) -> 
          (let rec best'_0 = (fun b_2 s_0 ls1_0 ls2_0 -> 
            (let rec _lh_matchIdent_2 = ls1_0 in
              (match _lh_matchIdent_2 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3 = ls2_0 in
                    (match _lh_matchIdent_3 with
                      | `LH_N -> 
                        (`LH_P2(b_2, s_0))
                      | _ -> 
                        (failwith "error")))
                | `LH_C(_lh_best_LH_C_0_2, _lh_best_LH_C_1_2) -> 
                  (let rec _lh_matchIdent_4 = ls2_0 in
                    (match _lh_matchIdent_4 with
                      | `LH_C(_lh_best_LH_C_0_3, _lh_best_LH_C_1_3) -> 
                        (if (s_0 = ((_lh_best_arg1_0 s_0) _lh_best_LH_C_0_3)) then
                          ((((best'_0 b_2) s_0) _lh_best_LH_C_1_2) _lh_best_LH_C_1_3)
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
      (failwith "error"));;
let rec static_lh__d2 _lh_static_arg1_1 =
  ((interpret_lh__d2 0) ((map_lh__d6 (score_lh__d2 _lh_static_arg1_1)) wins_lh__d2));;
let rec alternate_lh__d1 _lh_alternate_arg1_0 _lh_alternate_arg2_0 _lh_alternate_arg3_0 _lh_alternate_arg4_0 =
  (if (fullBoard_lh__d1 _lh_alternate_arg4_0) then
    (`LH_N)
  else
    (if ((static_lh__d1 _lh_alternate_arg4_0) = (`XWin)) then
      (`LH_N)
    else
      (if ((static_lh__d2 _lh_alternate_arg4_0) = (`OWin)) then
        (`LH_N)
      else
        (let rec opposition_0 = (opposite_lh__d1 _lh_alternate_arg1_0) in
          (let rec possibles_0 = ((newPositions_lh__d1 _lh_alternate_arg1_0) _lh_alternate_arg4_0) in
            (let rec scores_0 = ((map_lh__d2 (((bestMove_lh__d1 opposition_0) _lh_alternate_arg3_0) _lh_alternate_arg2_0)) possibles_0) in
              (let rec boardd_eval_0 = (((best_lh__d1 _lh_alternate_arg2_0) possibles_0) scores_0) in
                (let rec _lh_matchIdent_5 = boardd_eval_0 in
                  (match _lh_matchIdent_5 with
                    | `LH_P2(_lh_alternate_LH_P2_0_0, _lh_alternate_LH_P2_1_0) -> 
                      (`LH_C((`LH_P2(_lh_alternate_LH_P2_0_0, _lh_alternate_LH_P2_1_0)), ((((alternate_lh__d1 opposition_0) _lh_alternate_arg3_0) _lh_alternate_arg2_0) _lh_alternate_LH_P2_0_0)))
                    | _ -> 
                      (failwith "error"))))))))));;
let rec testBoard_lh__d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d9 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d9 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec mappend_lh__d2 xs_1_9 ys_1_9 =
  (match xs_1_9 with
    | `LH_C(h_2_9, t_2_9) -> 
      (`LH_C(h_2_9, ((mappend_lh__d2 t_2_9) ys_1_9)))
    | `LH_N -> 
      ys_1_9);;
let rec testBoard_lh__d1_d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec max'_lh__d1 _lh_max'_arg1_0 _lh_max'_arg2_0 =
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
let rec map_lh__d1 f_6 ls_8 =
  (match ls_8 with
    | `LH_C(h_2_8, t_2_8) -> 
      (`LH_C((f_6 h_2_8), ((map_lh__d1 f_6) t_2_8)))
    | `LH_N -> 
      (`LH_N));;
let rec testBoard_lh__d2_d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec min'_lh__d1 _lh_min'_arg1_0 _lh_min'_arg2_0 =
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
let rec testBoard_lh__d1_d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec mappend_lh__d5 xs_1_6 ys_1_6 =
  (match xs_1_6 with
    | `LH_C(h_2_5, t_2_5) -> 
      (`LH_C(h_2_5, ((mappend_lh__d5 t_2_5) ys_1_6)))
    | `LH_N -> 
      ys_1_6);;
let rec concat_lh__d1 lss_2 =
  (match lss_2 with
    | `LH_C(h_3_1, t_3_1) -> 
      ((mappend_lh__d5 h_3_1) (concat_lh__d1 t_3_1))
    | `LH_N -> 
      (`LH_N));;
let rec testBoard_lh__d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d9 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec prog_lh__d1 _lh_prog_arg1_0 =
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
                                                                                                                ((mappend_lh__d2 testBoard_lh__d2_d7) testBoard_lh__d1_d2)
                                                                                                              | _ -> 
                                                                                                                testBoard_lh__d1_d6)
                                                                                                          | _ -> 
                                                                                                            testBoard_lh__d2_d3)
                                                                                                      | _ -> 
                                                                                                        testBoard_lh__d3)
                                                                                                  | _ -> 
                                                                                                    testBoard_lh__d2_d2)
                                                                                              | _ -> 
                                                                                                testBoard_lh__d1_d4)
                                                                                          | _ -> 
                                                                                            testBoard_lh__d6)
                                                                                      | _ -> 
                                                                                        testBoard_lh__d2_d1)
                                                                                  | _ -> 
                                                                                    testBoard_lh__d1_d1)
                                                                              | _ -> 
                                                                                testBoard_lh__d2_d4)
                                                                          | _ -> 
                                                                            testBoard_lh__d1)
                                                                      | _ -> 
                                                                        testBoard_lh__d9)
                                                                  | _ -> 
                                                                    testBoard_lh__d2_d5)
                                                              | _ -> 
                                                                testBoard_lh__d1_d5)
                                                          | _ -> 
                                                            testBoard_lh__d8)
                                                      | _ -> 
                                                        testBoard_lh__d1_d0)
                                                  | _ -> 
                                                    testBoard_lh__d2_d0)
                                              | _ -> 
                                                testBoard_lh__d1_d8)
                                          | _ -> 
                                            testBoard_lh__d2_d9)
                                      | _ -> 
                                        testBoard_lh__d2_d6)
                                  | _ -> 
                                    testBoard_lh__d2_d8)
                              | _ -> 
                                testBoard_lh__d7)
                          | _ -> 
                            testBoard_lh__d5)
                      | _ -> 
                        testBoard_lh__d2)
                  | _ -> 
                    testBoard_lh__d1_d9)
              | _ -> 
                testBoard_lh__d1_d7)
          | _ -> 
            testBoard_lh__d4)
      | _ -> 
        testBoard_lh__d1_d3)) in
    (let rec game_0 = ((((alternate_lh__d1 (`X)) max'_lh__d1) min'_lh__d1) (board_0 _lh_prog_arg1_0)) in
      ((mappend_lh__d1 (`LH_C('O', (`LH_C('X', (`LH_C('O', (`LH_C('|', (`LH_N)))))))))) (concat_lh__d1 ((map_lh__d1 showMove_lh__d1) game_0)))));;
let rec length_lh__d1 ls_9 =
  (match ls_9 with
    | `LH_C(h_3_2, t_3_2) -> 
      (1 + (length_lh__d1 t_3_2))
    | `LH_N -> 
      0);;
let rec testMinimax_nofib_lh__d1 _lh_testMinimax_nofib_arg1_0 =
  (length_lh__d1 (prog_lh__d1 _lh_testMinimax_nofib_arg1_0));;
let run () = 1 + (Obj.magic ((testMinimax_nofib_lh__d1 (`LH_C('1', (`LH_C('8', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_C('0', (`LH_N))))))))))))))));
end;;

