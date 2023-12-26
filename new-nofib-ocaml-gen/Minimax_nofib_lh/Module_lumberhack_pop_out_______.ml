

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out_______ = struct
let rec showMove_lh__d0 _lh_showMove_arg1_0 =
  (_lh_showMove_arg1_0 99);;
let rec testBoard_lh__d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec mappend_lh__d6 xs_1_4 ys_1_4_6 =
  (xs_1_4 ys_1_4_6);;
let rec testBoard_lh__d2_d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec map_lh__d1_d7 f_5_5 ls_2_2 =
  (ls_2_2 f_5_5);;
let rec testBoard_lh__d5 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec min'_lh__d0 _lh_min'_arg1_0 _lh_min'_arg2_0 =
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
let rec testBoard_lh__d1_d8 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec max'_lh__d0 _lh_max'_arg1_0 _lh_max'_arg2_0 =
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
let rec testBoard_lh__d1_d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec mappend_lh__d5 xs_1_2 ys_1_2_3 =
  (xs_1_2 ys_1_2_3);;
let rec testBoard_lh__d2_d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d0 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d1 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec map_lh__d1_d1 f_9 ls_5 =
  (match ls_5 with
    | `LH_C(h_4_3, t_5_2) -> 
      (`LH_C((f_9 h_4_3), ((map_lh__d1_d1 f_9) t_5_2)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d1_d0 f_7_4 ls_2_3 =
  (ls_2_3 f_7_4);;
let rec and_lh__d0 _lh_and_arg1_0 =
  (_lh_and_arg1_0 99);;
let rec mappend_lh__d2 xs_1_0 ys_1_2_1 =
  (match xs_1_0 with
    | `LH_C(h_1_1_0, t_1_2_9) -> 
      (let rec t_1_3_0 = ((mappend_lh__d2 t_1_2_9) ys_1_2_1) in
        (let rec h_1_1_1 = h_1_1_0 in
          (fun f_2_5 -> 
            (let rec _lh_and_LH_C_1_0 = ((map_lh__d1_d0 f_2_5) t_1_3_0) in
              (let rec _lh_and_LH_C_0_0 = (f_2_5 h_1_1_1) in
                (fun _lh_dummy_3_0 -> 
                  (if _lh_and_LH_C_0_0 then
                    (and_lh__d0 _lh_and_LH_C_1_0)
                  else
                    false)))))))
    | `LH_N -> 
      ys_1_2_1);;
let rec concat_lh__d2 lss_1 =
  (match lss_1 with
    | `LH_C(h_7_8, t_9_1) -> 
      ((mappend_lh__d2 h_7_8) (concat_lh__d2 t_9_1))
    | `LH_N -> 
      (fun f_1_1 _lh_dummy_2_0 -> 
        true));;
let rec fullBoard_lh__d0 _lh_fullBoard_arg1_0 =
  (and_lh__d0 ((map_lh__d1_d0 (fun x_0 -> 
    (not (x_0 = (`Empty))))) (concat_lh__d2 _lh_fullBoard_arg1_0)));;
let rec mappend_lh__d7 xs_9 ys_1_1_3 =
  (xs_9 ys_1_1_3);;
let rec mappend_lh__d4 xs_1_6 ys_1_4_8 =
  (xs_1_6 ys_1_4_8);;
let rec mappend_lh__d2_d1 xs_1 ys_1_3 =
  (xs_1 ys_1_3);;
let rec mappend_lh__d1_d8 xs_4 ys_5_1 =
  (xs_4 ys_5_1);;
let rec mappend_lh__d1_d9 xs_6 ys_8_8 =
  (xs_6 ys_8_8);;
let rec mappend_lh__d1_d0 xs_8 ys_1_0_2 =
  (xs_8 ys_1_0_2);;
let rec mappend_lh__d1_d1 xs_1_5 ys_1_4_7 =
  (xs_1_5 ys_1_4_7);;
let rec mappend_lh__d9 xs_2_0 ys_1_8_5 =
  (xs_2_0 ys_1_8_5);;
let rec length_lh__d0 ls_2_0 =
  (ls_2_0 99);;
let rec mappend_lh__d2_d0 xs_1_7 ys_1_8_2 =
  (xs_1_7 ys_1_8_2);;
let rec showPiece_lh__d3 _lh_showPiece_arg1_1 =
  (match _lh_showPiece_arg1_1 with
    | `X -> 
      (let rec t_5_3 = (fun ys_5_2 -> 
        ys_5_2) in
        (let rec h_4_4 = 'X' in
          (fun ys_5_3 -> 
            (let rec t_5_4 = ((mappend_lh__d2_d1 t_5_3) ys_5_3) in
              (let rec h_4_5 = h_4_4 in
                (fun ys_5_4 -> 
                  (let rec t_5_5 = ((mappend_lh__d2_d0 t_5_4) ys_5_4) in
                    (let rec h_4_6 = h_4_5 in
                      (fun ys_5_5 -> 
                        (let rec t_5_6 = ((mappend_lh__d1_d9 t_5_5) ys_5_5) in
                          (let rec h_4_7 = h_4_6 in
                            (fun ys_5_6 -> 
                              (let rec t_5_7 = ((mappend_lh__d1_d8 t_5_6) ys_5_6) in
                                (let rec h_4_8 = h_4_7 in
                                  (fun ys_5_7 -> 
                                    (let rec t_5_8 = ((mappend_lh__d1_d1 t_5_7) ys_5_7) in
                                      (let rec h_4_9 = h_4_8 in
                                        (fun ys_5_8 -> 
                                          (let rec t_5_9 = ((mappend_lh__d1_d0 t_5_8) ys_5_8) in
                                            (let rec h_5_0 = h_4_9 in
                                              (fun ys_5_9 -> 
                                                (let rec t_6_0 = ((mappend_lh__d9 t_5_9) ys_5_9) in
                                                  (let rec h_5_1 = h_5_0 in
                                                    (fun ys_6_0 -> 
                                                      (let rec t_6_1 = ((mappend_lh__d4 t_6_0) ys_6_0) in
                                                        (fun _lh_dummy_1_5 -> 
                                                          (1 + (length_lh__d0 t_6_1))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_6_2 = (fun ys_6_1 -> 
        ys_6_1) in
        (let rec h_5_2 = 'O' in
          (fun ys_6_2 -> 
            (let rec t_6_3 = ((mappend_lh__d2_d1 t_6_2) ys_6_2) in
              (let rec h_5_3 = h_5_2 in
                (fun ys_6_3 -> 
                  (let rec t_6_4 = ((mappend_lh__d2_d0 t_6_3) ys_6_3) in
                    (let rec h_5_4 = h_5_3 in
                      (fun ys_6_4 -> 
                        (let rec t_6_5 = ((mappend_lh__d1_d9 t_6_4) ys_6_4) in
                          (let rec h_5_5 = h_5_4 in
                            (fun ys_6_5 -> 
                              (let rec t_6_6 = ((mappend_lh__d1_d8 t_6_5) ys_6_5) in
                                (let rec h_5_6 = h_5_5 in
                                  (fun ys_6_6 -> 
                                    (let rec t_6_7 = ((mappend_lh__d1_d1 t_6_6) ys_6_6) in
                                      (let rec h_5_7 = h_5_6 in
                                        (fun ys_6_7 -> 
                                          (let rec t_6_8 = ((mappend_lh__d1_d0 t_6_7) ys_6_7) in
                                            (let rec h_5_8 = h_5_7 in
                                              (fun ys_6_8 -> 
                                                (let rec t_6_9 = ((mappend_lh__d9 t_6_8) ys_6_8) in
                                                  (let rec h_5_9 = h_5_8 in
                                                    (fun ys_6_9 -> 
                                                      (let rec t_7_0 = ((mappend_lh__d4 t_6_9) ys_6_9) in
                                                        (fun _lh_dummy_1_6 -> 
                                                          (1 + (length_lh__d0 t_7_0))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_7_1 = (fun ys_7_0 -> 
        ys_7_0) in
        (let rec h_6_0 = ' ' in
          (fun ys_7_1 -> 
            (let rec t_7_2 = ((mappend_lh__d2_d1 t_7_1) ys_7_1) in
              (let rec h_6_1 = h_6_0 in
                (fun ys_7_2 -> 
                  (let rec t_7_3 = ((mappend_lh__d2_d0 t_7_2) ys_7_2) in
                    (let rec h_6_2 = h_6_1 in
                      (fun ys_7_3 -> 
                        (let rec t_7_4 = ((mappend_lh__d1_d9 t_7_3) ys_7_3) in
                          (let rec h_6_3 = h_6_2 in
                            (fun ys_7_4 -> 
                              (let rec t_7_5 = ((mappend_lh__d1_d8 t_7_4) ys_7_4) in
                                (let rec h_6_4 = h_6_3 in
                                  (fun ys_7_5 -> 
                                    (let rec t_7_6 = ((mappend_lh__d1_d1 t_7_5) ys_7_5) in
                                      (let rec h_6_5 = h_6_4 in
                                        (fun ys_7_6 -> 
                                          (let rec t_7_7 = ((mappend_lh__d1_d0 t_7_6) ys_7_6) in
                                            (let rec h_6_6 = h_6_5 in
                                              (fun ys_7_7 -> 
                                                (let rec t_7_8 = ((mappend_lh__d9 t_7_7) ys_7_7) in
                                                  (let rec h_6_7 = h_6_6 in
                                                    (fun ys_7_8 -> 
                                                      (let rec t_7_9 = ((mappend_lh__d4 t_7_8) ys_7_8) in
                                                        (fun _lh_dummy_1_7 -> 
                                                          (1 + (length_lh__d0 t_7_9))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d4 _lh_showPiece_arg1_3 =
  (match _lh_showPiece_arg1_3 with
    | `X -> 
      (let rec t_1_3_4 = (fun ys_1_2_5 -> 
        ys_1_2_5) in
        (let rec h_1_1_5 = 'X' in
          (fun ys_1_2_6 -> 
            (let rec t_1_3_5 = ((mappend_lh__d1_d9 t_1_3_4) ys_1_2_6) in
              (let rec h_1_1_6 = h_1_1_5 in
                (fun ys_1_2_7 -> 
                  (let rec t_1_3_6 = ((mappend_lh__d1_d8 t_1_3_5) ys_1_2_7) in
                    (let rec h_1_1_7 = h_1_1_6 in
                      (fun ys_1_2_8 -> 
                        (let rec t_1_3_7 = ((mappend_lh__d1_d1 t_1_3_6) ys_1_2_8) in
                          (let rec h_1_1_8 = h_1_1_7 in
                            (fun ys_1_2_9 -> 
                              (let rec t_1_3_8 = ((mappend_lh__d1_d0 t_1_3_7) ys_1_2_9) in
                                (let rec h_1_1_9 = h_1_1_8 in
                                  (fun ys_1_3_0 -> 
                                    (let rec t_1_3_9 = ((mappend_lh__d9 t_1_3_8) ys_1_3_0) in
                                      (let rec h_1_2_0 = h_1_1_9 in
                                        (fun ys_1_3_1 -> 
                                          (let rec t_1_4_0 = ((mappend_lh__d4 t_1_3_9) ys_1_3_1) in
                                            (fun _lh_dummy_3_2 -> 
                                              (1 + (length_lh__d0 t_1_4_0))))))))))))))))))))))
    | `O -> 
      (let rec t_1_4_1 = (fun ys_1_3_2 -> 
        ys_1_3_2) in
        (let rec h_1_2_1 = 'O' in
          (fun ys_1_3_3 -> 
            (let rec t_1_4_2 = ((mappend_lh__d1_d9 t_1_4_1) ys_1_3_3) in
              (let rec h_1_2_2 = h_1_2_1 in
                (fun ys_1_3_4 -> 
                  (let rec t_1_4_3 = ((mappend_lh__d1_d8 t_1_4_2) ys_1_3_4) in
                    (let rec h_1_2_3 = h_1_2_2 in
                      (fun ys_1_3_5 -> 
                        (let rec t_1_4_4 = ((mappend_lh__d1_d1 t_1_4_3) ys_1_3_5) in
                          (let rec h_1_2_4 = h_1_2_3 in
                            (fun ys_1_3_6 -> 
                              (let rec t_1_4_5 = ((mappend_lh__d1_d0 t_1_4_4) ys_1_3_6) in
                                (let rec h_1_2_5 = h_1_2_4 in
                                  (fun ys_1_3_7 -> 
                                    (let rec t_1_4_6 = ((mappend_lh__d9 t_1_4_5) ys_1_3_7) in
                                      (let rec h_1_2_6 = h_1_2_5 in
                                        (fun ys_1_3_8 -> 
                                          (let rec t_1_4_7 = ((mappend_lh__d4 t_1_4_6) ys_1_3_8) in
                                            (fun _lh_dummy_3_3 -> 
                                              (1 + (length_lh__d0 t_1_4_7))))))))))))))))))))))
    | `Empty -> 
      (let rec t_1_4_8 = (fun ys_1_3_9 -> 
        ys_1_3_9) in
        (let rec h_1_2_7 = ' ' in
          (fun ys_1_4_0 -> 
            (let rec t_1_4_9 = ((mappend_lh__d1_d9 t_1_4_8) ys_1_4_0) in
              (let rec h_1_2_8 = h_1_2_7 in
                (fun ys_1_4_1 -> 
                  (let rec t_1_5_0 = ((mappend_lh__d1_d8 t_1_4_9) ys_1_4_1) in
                    (let rec h_1_2_9 = h_1_2_8 in
                      (fun ys_1_4_2 -> 
                        (let rec t_1_5_1 = ((mappend_lh__d1_d1 t_1_5_0) ys_1_4_2) in
                          (let rec h_1_3_0 = h_1_2_9 in
                            (fun ys_1_4_3 -> 
                              (let rec t_1_5_2 = ((mappend_lh__d1_d0 t_1_5_1) ys_1_4_3) in
                                (let rec h_1_3_1 = h_1_3_0 in
                                  (fun ys_1_4_4 -> 
                                    (let rec t_1_5_3 = ((mappend_lh__d9 t_1_5_2) ys_1_4_4) in
                                      (let rec h_1_3_2 = h_1_3_1 in
                                        (fun ys_1_4_5 -> 
                                          (let rec t_1_5_4 = ((mappend_lh__d4 t_1_5_3) ys_1_4_5) in
                                            (fun _lh_dummy_3_4 -> 
                                              (1 + (length_lh__d0 t_1_5_4))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec showPiece_lh__d5 _lh_showPiece_arg1_5 =
  (match _lh_showPiece_arg1_5 with
    | `X -> 
      (let rec t_1_9_4 = (fun ys_1_8_7 -> 
        ys_1_8_7) in
        (let rec h_1_6_7 = 'X' in
          (fun ys_1_8_8 -> 
            (let rec t_1_9_5 = ((mappend_lh__d1_d1 t_1_9_4) ys_1_8_8) in
              (let rec h_1_6_8 = h_1_6_7 in
                (fun ys_1_8_9 -> 
                  (let rec t_1_9_6 = ((mappend_lh__d1_d0 t_1_9_5) ys_1_8_9) in
                    (let rec h_1_6_9 = h_1_6_8 in
                      (fun ys_1_9_0 -> 
                        (let rec t_1_9_7 = ((mappend_lh__d9 t_1_9_6) ys_1_9_0) in
                          (let rec h_1_7_0 = h_1_6_9 in
                            (fun ys_1_9_1 -> 
                              (let rec t_1_9_8 = ((mappend_lh__d4 t_1_9_7) ys_1_9_1) in
                                (fun _lh_dummy_5_0 -> 
                                  (1 + (length_lh__d0 t_1_9_8))))))))))))))))
    | `O -> 
      (let rec t_1_9_9 = (fun ys_1_9_2 -> 
        ys_1_9_2) in
        (let rec h_1_7_1 = 'O' in
          (fun ys_1_9_3 -> 
            (let rec t_2_0_0 = ((mappend_lh__d1_d1 t_1_9_9) ys_1_9_3) in
              (let rec h_1_7_2 = h_1_7_1 in
                (fun ys_1_9_4 -> 
                  (let rec t_2_0_1 = ((mappend_lh__d1_d0 t_2_0_0) ys_1_9_4) in
                    (let rec h_1_7_3 = h_1_7_2 in
                      (fun ys_1_9_5 -> 
                        (let rec t_2_0_2 = ((mappend_lh__d9 t_2_0_1) ys_1_9_5) in
                          (let rec h_1_7_4 = h_1_7_3 in
                            (fun ys_1_9_6 -> 
                              (let rec t_2_0_3 = ((mappend_lh__d4 t_2_0_2) ys_1_9_6) in
                                (fun _lh_dummy_5_1 -> 
                                  (1 + (length_lh__d0 t_2_0_3))))))))))))))))
    | `Empty -> 
      (let rec t_2_0_4 = (fun ys_1_9_7 -> 
        ys_1_9_7) in
        (let rec h_1_7_5 = ' ' in
          (fun ys_1_9_8 -> 
            (let rec t_2_0_5 = ((mappend_lh__d1_d1 t_2_0_4) ys_1_9_8) in
              (let rec h_1_7_6 = h_1_7_5 in
                (fun ys_1_9_9 -> 
                  (let rec t_2_0_6 = ((mappend_lh__d1_d0 t_2_0_5) ys_1_9_9) in
                    (let rec h_1_7_7 = h_1_7_6 in
                      (fun ys_2_0_0 -> 
                        (let rec t_2_0_7 = ((mappend_lh__d9 t_2_0_6) ys_2_0_0) in
                          (let rec h_1_7_8 = h_1_7_7 in
                            (fun ys_2_0_1 -> 
                              (let rec t_2_0_8 = ((mappend_lh__d4 t_2_0_7) ys_2_0_1) in
                                (fun _lh_dummy_5_2 -> 
                                  (1 + (length_lh__d0 t_2_0_8))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec showRow_lh__d1 _lh_showRow_arg1_0 =
  (match _lh_showRow_arg1_0 with
    | `LH_C(_lh_showRow_LH_C_0_0, _lh_showRow_LH_C_1_0) -> 
      (match _lh_showRow_LH_C_1_0 with
        | `LH_C(_lh_showRow_LH_C_0_1, _lh_showRow_LH_C_1_1) -> 
          (match _lh_showRow_LH_C_1_1 with
            | `LH_C(_lh_showRow_LH_C_0_2, _lh_showRow_LH_C_1_2) -> 
              (match _lh_showRow_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend_lh__d1_d8 ((mappend_lh__d1_d9 ((mappend_lh__d2_d0 ((mappend_lh__d2_d1 (showPiece_lh__d3 _lh_showRow_LH_C_0_0)) (let rec t_3_8 = (fun ys_3_7 -> 
                    ys_3_7) in
                    (let rec h_3_1 = '|' in
                      (fun ys_3_8 -> 
                        (let rec t_3_9 = ((mappend_lh__d2_d0 t_3_8) ys_3_8) in
                          (let rec h_3_2 = h_3_1 in
                            (fun ys_3_9 -> 
                              (let rec t_4_0 = ((mappend_lh__d1_d9 t_3_9) ys_3_9) in
                                (let rec h_3_3 = h_3_2 in
                                  (fun ys_4_0 -> 
                                    (let rec t_4_1 = ((mappend_lh__d1_d8 t_4_0) ys_4_0) in
                                      (let rec h_3_4 = h_3_3 in
                                        (fun ys_4_1 -> 
                                          (let rec t_4_2 = ((mappend_lh__d1_d1 t_4_1) ys_4_1) in
                                            (let rec h_3_5 = h_3_4 in
                                              (fun ys_4_2 -> 
                                                (let rec t_4_3 = ((mappend_lh__d1_d0 t_4_2) ys_4_2) in
                                                  (let rec h_3_6 = h_3_5 in
                                                    (fun ys_4_3 -> 
                                                      (let rec t_4_4 = ((mappend_lh__d9 t_4_3) ys_4_3) in
                                                        (let rec h_3_7 = h_3_6 in
                                                          (fun ys_4_4 -> 
                                                            (let rec t_4_5 = ((mappend_lh__d4 t_4_4) ys_4_4) in
                                                              (fun _lh_dummy_1_3 -> 
                                                                (1 + (length_lh__d0 t_4_5))))))))))))))))))))))))))) (showPiece_lh__d4 _lh_showRow_LH_C_0_1))) (let rec t_4_6 = (fun ys_4_5 -> 
                    ys_4_5) in
                    (let rec h_3_8 = '|' in
                      (fun ys_4_6 -> 
                        (let rec t_4_7 = ((mappend_lh__d1_d8 t_4_6) ys_4_6) in
                          (let rec h_3_9 = h_3_8 in
                            (fun ys_4_7 -> 
                              (let rec t_4_8 = ((mappend_lh__d1_d1 t_4_7) ys_4_7) in
                                (let rec h_4_0 = h_3_9 in
                                  (fun ys_4_8 -> 
                                    (let rec t_4_9 = ((mappend_lh__d1_d0 t_4_8) ys_4_8) in
                                      (let rec h_4_1 = h_4_0 in
                                        (fun ys_4_9 -> 
                                          (let rec t_5_0 = ((mappend_lh__d9 t_4_9) ys_4_9) in
                                            (let rec h_4_2 = h_4_1 in
                                              (fun ys_5_0 -> 
                                                (let rec t_5_1 = ((mappend_lh__d4 t_5_0) ys_5_0) in
                                                  (fun _lh_dummy_1_4 -> 
                                                    (1 + (length_lh__d0 t_5_1))))))))))))))))))))) (showPiece_lh__d5 _lh_showRow_LH_C_0_2))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d2 xs_2_5 ys_3_6_6 =
  (xs_2_5 ys_3_6_6);;
let rec showPiece_lh__d8 _lh_showPiece_arg1_2 =
  (match _lh_showPiece_arg1_2 with
    | `X -> 
      (let rec t_9_2 = (fun ys_8_9 -> 
        ys_8_9) in
        (let rec h_7_9 = 'X' in
          (fun ys_9_0 -> 
            (let rec t_9_3 = ((mappend_lh__d9 t_9_2) ys_9_0) in
              (let rec h_8_0 = h_7_9 in
                (fun ys_9_1 -> 
                  (let rec t_9_4 = ((mappend_lh__d4 t_9_3) ys_9_1) in
                    (fun _lh_dummy_2_1 -> 
                      (1 + (length_lh__d0 t_9_4))))))))))
    | `O -> 
      (let rec t_9_5 = (fun ys_9_2 -> 
        ys_9_2) in
        (let rec h_8_1 = 'O' in
          (fun ys_9_3 -> 
            (let rec t_9_6 = ((mappend_lh__d9 t_9_5) ys_9_3) in
              (let rec h_8_2 = h_8_1 in
                (fun ys_9_4 -> 
                  (let rec t_9_7 = ((mappend_lh__d4 t_9_6) ys_9_4) in
                    (fun _lh_dummy_2_2 -> 
                      (1 + (length_lh__d0 t_9_7))))))))))
    | `Empty -> 
      (let rec t_9_8 = (fun ys_9_5 -> 
        ys_9_5) in
        (let rec h_8_3 = ' ' in
          (fun ys_9_6 -> 
            (let rec t_9_9 = ((mappend_lh__d9 t_9_8) ys_9_6) in
              (let rec h_8_4 = h_8_3 in
                (fun ys_9_7 -> 
                  (let rec t_1_0_0 = ((mappend_lh__d4 t_9_9) ys_9_7) in
                    (fun _lh_dummy_2_3 -> 
                      (1 + (length_lh__d0 t_1_0_0))))))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d3 xs_1_1 ys_1_2_2 =
  (xs_1_1 ys_1_2_2);;
let rec mappend_lh__d2_d4 xs_2_2 ys_3_6_3 =
  (xs_2_2 ys_3_6_3);;
let rec mappend_lh__d2_d2 xs_2_6 ys_3_6_7 =
  (xs_2_6 ys_3_6_7);;
let rec showPiece_lh__d7 _lh_showPiece_arg1_4 =
  (match _lh_showPiece_arg1_4 with
    | `X -> 
      (let rec t_1_5_8 = (fun ys_1_4_9 -> 
        ys_1_4_9) in
        (let rec h_1_3_6 = 'X' in
          (fun ys_1_5_0 -> 
            (let rec t_1_5_9 = ((mappend_lh__d2_d3 t_1_5_8) ys_1_5_0) in
              (let rec h_1_3_7 = h_1_3_6 in
                (fun ys_1_5_1 -> 
                  (let rec t_1_6_0 = ((mappend_lh__d2_d2 t_1_5_9) ys_1_5_1) in
                    (let rec h_1_3_8 = h_1_3_7 in
                      (fun ys_1_5_2 -> 
                        (let rec t_1_6_1 = ((mappend_lh__d9 t_1_6_0) ys_1_5_2) in
                          (let rec h_1_3_9 = h_1_3_8 in
                            (fun ys_1_5_3 -> 
                              (let rec t_1_6_2 = ((mappend_lh__d4 t_1_6_1) ys_1_5_3) in
                                (fun _lh_dummy_3_8 -> 
                                  (1 + (length_lh__d0 t_1_6_2))))))))))))))))
    | `O -> 
      (let rec t_1_6_3 = (fun ys_1_5_4 -> 
        ys_1_5_4) in
        (let rec h_1_4_0 = 'O' in
          (fun ys_1_5_5 -> 
            (let rec t_1_6_4 = ((mappend_lh__d2_d3 t_1_6_3) ys_1_5_5) in
              (let rec h_1_4_1 = h_1_4_0 in
                (fun ys_1_5_6 -> 
                  (let rec t_1_6_5 = ((mappend_lh__d2_d2 t_1_6_4) ys_1_5_6) in
                    (let rec h_1_4_2 = h_1_4_1 in
                      (fun ys_1_5_7 -> 
                        (let rec t_1_6_6 = ((mappend_lh__d9 t_1_6_5) ys_1_5_7) in
                          (let rec h_1_4_3 = h_1_4_2 in
                            (fun ys_1_5_8 -> 
                              (let rec t_1_6_7 = ((mappend_lh__d4 t_1_6_6) ys_1_5_8) in
                                (fun _lh_dummy_3_9 -> 
                                  (1 + (length_lh__d0 t_1_6_7))))))))))))))))
    | `Empty -> 
      (let rec t_1_6_8 = (fun ys_1_5_9 -> 
        ys_1_5_9) in
        (let rec h_1_4_4 = ' ' in
          (fun ys_1_6_0 -> 
            (let rec t_1_6_9 = ((mappend_lh__d2_d3 t_1_6_8) ys_1_6_0) in
              (let rec h_1_4_5 = h_1_4_4 in
                (fun ys_1_6_1 -> 
                  (let rec t_1_7_0 = ((mappend_lh__d2_d2 t_1_6_9) ys_1_6_1) in
                    (let rec h_1_4_6 = h_1_4_5 in
                      (fun ys_1_6_2 -> 
                        (let rec t_1_7_1 = ((mappend_lh__d9 t_1_7_0) ys_1_6_2) in
                          (let rec h_1_4_7 = h_1_4_6 in
                            (fun ys_1_6_3 -> 
                              (let rec t_1_7_2 = ((mappend_lh__d4 t_1_7_1) ys_1_6_3) in
                                (fun _lh_dummy_4_0 -> 
                                  (1 + (length_lh__d0 t_1_7_2))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d5 xs_1_8 ys_1_8_3 =
  (xs_1_8 ys_1_8_3);;
let rec showPiece_lh__d6 _lh_showPiece_arg1_8 =
  (match _lh_showPiece_arg1_8 with
    | `X -> 
      (let rec t_3_6_6 = (fun ys_3_4_2 -> 
        ys_3_4_2) in
        (let rec h_3_1_2 = 'X' in
          (fun ys_3_4_3 -> 
            (let rec t_3_6_7 = ((mappend_lh__d2_d5 t_3_6_6) ys_3_4_3) in
              (let rec h_3_1_3 = h_3_1_2 in
                (fun ys_3_4_4 -> 
                  (let rec t_3_6_8 = ((mappend_lh__d2_d4 t_3_6_7) ys_3_4_4) in
                    (let rec h_3_1_4 = h_3_1_3 in
                      (fun ys_3_4_5 -> 
                        (let rec t_3_6_9 = ((mappend_lh__d2_d3 t_3_6_8) ys_3_4_5) in
                          (let rec h_3_1_5 = h_3_1_4 in
                            (fun ys_3_4_6 -> 
                              (let rec t_3_7_0 = ((mappend_lh__d2_d2 t_3_6_9) ys_3_4_6) in
                                (let rec h_3_1_6 = h_3_1_5 in
                                  (fun ys_3_4_7 -> 
                                    (let rec t_3_7_1 = ((mappend_lh__d9 t_3_7_0) ys_3_4_7) in
                                      (let rec h_3_1_7 = h_3_1_6 in
                                        (fun ys_3_4_8 -> 
                                          (let rec t_3_7_2 = ((mappend_lh__d4 t_3_7_1) ys_3_4_8) in
                                            (fun _lh_dummy_8_5 -> 
                                              (1 + (length_lh__d0 t_3_7_2))))))))))))))))))))))
    | `O -> 
      (let rec t_3_7_3 = (fun ys_3_4_9 -> 
        ys_3_4_9) in
        (let rec h_3_1_8 = 'O' in
          (fun ys_3_5_0 -> 
            (let rec t_3_7_4 = ((mappend_lh__d2_d5 t_3_7_3) ys_3_5_0) in
              (let rec h_3_1_9 = h_3_1_8 in
                (fun ys_3_5_1 -> 
                  (let rec t_3_7_5 = ((mappend_lh__d2_d4 t_3_7_4) ys_3_5_1) in
                    (let rec h_3_2_0 = h_3_1_9 in
                      (fun ys_3_5_2 -> 
                        (let rec t_3_7_6 = ((mappend_lh__d2_d3 t_3_7_5) ys_3_5_2) in
                          (let rec h_3_2_1 = h_3_2_0 in
                            (fun ys_3_5_3 -> 
                              (let rec t_3_7_7 = ((mappend_lh__d2_d2 t_3_7_6) ys_3_5_3) in
                                (let rec h_3_2_2 = h_3_2_1 in
                                  (fun ys_3_5_4 -> 
                                    (let rec t_3_7_8 = ((mappend_lh__d9 t_3_7_7) ys_3_5_4) in
                                      (let rec h_3_2_3 = h_3_2_2 in
                                        (fun ys_3_5_5 -> 
                                          (let rec t_3_7_9 = ((mappend_lh__d4 t_3_7_8) ys_3_5_5) in
                                            (fun _lh_dummy_8_6 -> 
                                              (1 + (length_lh__d0 t_3_7_9))))))))))))))))))))))
    | `Empty -> 
      (let rec t_3_8_0 = (fun ys_3_5_6 -> 
        ys_3_5_6) in
        (let rec h_3_2_4 = ' ' in
          (fun ys_3_5_7 -> 
            (let rec t_3_8_1 = ((mappend_lh__d2_d5 t_3_8_0) ys_3_5_7) in
              (let rec h_3_2_5 = h_3_2_4 in
                (fun ys_3_5_8 -> 
                  (let rec t_3_8_2 = ((mappend_lh__d2_d4 t_3_8_1) ys_3_5_8) in
                    (let rec h_3_2_6 = h_3_2_5 in
                      (fun ys_3_5_9 -> 
                        (let rec t_3_8_3 = ((mappend_lh__d2_d3 t_3_8_2) ys_3_5_9) in
                          (let rec h_3_2_7 = h_3_2_6 in
                            (fun ys_3_6_0 -> 
                              (let rec t_3_8_4 = ((mappend_lh__d2_d2 t_3_8_3) ys_3_6_0) in
                                (let rec h_3_2_8 = h_3_2_7 in
                                  (fun ys_3_6_1 -> 
                                    (let rec t_3_8_5 = ((mappend_lh__d9 t_3_8_4) ys_3_6_1) in
                                      (let rec h_3_2_9 = h_3_2_8 in
                                        (fun ys_3_6_2 -> 
                                          (let rec t_3_8_6 = ((mappend_lh__d4 t_3_8_5) ys_3_6_2) in
                                            (fun _lh_dummy_8_7 -> 
                                              (1 + (length_lh__d0 t_3_8_6))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec showRow_lh__d2 _lh_showRow_arg1_1 =
  (match _lh_showRow_arg1_1 with
    | `LH_C(_lh_showRow_LH_C_0_3, _lh_showRow_LH_C_1_3) -> 
      (match _lh_showRow_LH_C_1_3 with
        | `LH_C(_lh_showRow_LH_C_0_4, _lh_showRow_LH_C_1_4) -> 
          (match _lh_showRow_LH_C_1_4 with
            | `LH_C(_lh_showRow_LH_C_0_5, _lh_showRow_LH_C_1_5) -> 
              (match _lh_showRow_LH_C_1_5 with
                | `LH_N -> 
                  ((mappend_lh__d2_d2 ((mappend_lh__d2_d3 ((mappend_lh__d2_d4 ((mappend_lh__d2_d5 (showPiece_lh__d6 _lh_showRow_LH_C_0_3)) (let rec t_1_1_6 = (fun ys_1_0_3 -> 
                    ys_1_0_3) in
                    (let rec h_9_9 = '|' in
                      (fun ys_1_0_4 -> 
                        (let rec t_1_1_7 = ((mappend_lh__d2_d4 t_1_1_6) ys_1_0_4) in
                          (let rec h_1_0_0 = h_9_9 in
                            (fun ys_1_0_5 -> 
                              (let rec t_1_1_8 = ((mappend_lh__d2_d3 t_1_1_7) ys_1_0_5) in
                                (let rec h_1_0_1 = h_1_0_0 in
                                  (fun ys_1_0_6 -> 
                                    (let rec t_1_1_9 = ((mappend_lh__d2_d2 t_1_1_8) ys_1_0_6) in
                                      (let rec h_1_0_2 = h_1_0_1 in
                                        (fun ys_1_0_7 -> 
                                          (let rec t_1_2_0 = ((mappend_lh__d9 t_1_1_9) ys_1_0_7) in
                                            (let rec h_1_0_3 = h_1_0_2 in
                                              (fun ys_1_0_8 -> 
                                                (let rec t_1_2_1 = ((mappend_lh__d4 t_1_2_0) ys_1_0_8) in
                                                  (fun _lh_dummy_2_8 -> 
                                                    (1 + (length_lh__d0 t_1_2_1))))))))))))))))))))) (showPiece_lh__d7 _lh_showRow_LH_C_0_4))) (let rec t_1_2_2 = (fun ys_1_0_9 -> 
                    ys_1_0_9) in
                    (let rec h_1_0_4 = '|' in
                      (fun ys_1_1_0 -> 
                        (let rec t_1_2_3 = ((mappend_lh__d2_d2 t_1_2_2) ys_1_1_0) in
                          (let rec h_1_0_5 = h_1_0_4 in
                            (fun ys_1_1_1 -> 
                              (let rec t_1_2_4 = ((mappend_lh__d9 t_1_2_3) ys_1_1_1) in
                                (let rec h_1_0_6 = h_1_0_5 in
                                  (fun ys_1_1_2 -> 
                                    (let rec t_1_2_5 = ((mappend_lh__d4 t_1_2_4) ys_1_1_2) in
                                      (fun _lh_dummy_2_9 -> 
                                        (1 + (length_lh__d0 t_1_2_5))))))))))))))) (showPiece_lh__d8 _lh_showRow_LH_C_0_5))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d6 xs_0 ys_0 =
  (xs_0 ys_0);;
let rec mappend_lh__d1_d3 xs_1_9 ys_1_8_4 =
  (xs_1_9 ys_1_8_4);;
let rec showPiece_lh__d2 _lh_showPiece_arg1_0 =
  (match _lh_showPiece_arg1_0 with
    | `X -> 
      (let rec t_1_5 = (fun ys_1_5 -> 
        ys_1_5) in
        (let rec h_1_1 = 'X' in
          (fun ys_1_6 -> 
            (let rec t_1_6 = ((mappend_lh__d1_d3 t_1_5) ys_1_6) in
              (let rec h_1_2 = h_1_1 in
                (fun ys_1_7 -> 
                  (let rec t_1_7 = ((mappend_lh__d1_d2 t_1_6) ys_1_7) in
                    (let rec h_1_3 = h_1_2 in
                      (fun ys_1_8 -> 
                        (let rec t_1_8 = ((mappend_lh__d1_d1 t_1_7) ys_1_8) in
                          (let rec h_1_4 = h_1_3 in
                            (fun ys_1_9 -> 
                              (let rec t_1_9 = ((mappend_lh__d1_d0 t_1_8) ys_1_9) in
                                (let rec h_1_5 = h_1_4 in
                                  (fun ys_2_0 -> 
                                    (let rec t_2_0 = ((mappend_lh__d9 t_1_9) ys_2_0) in
                                      (let rec h_1_6 = h_1_5 in
                                        (fun ys_2_1 -> 
                                          (let rec t_2_1 = ((mappend_lh__d4 t_2_0) ys_2_1) in
                                            (fun _lh_dummy_7 -> 
                                              (1 + (length_lh__d0 t_2_1))))))))))))))))))))))
    | `O -> 
      (let rec t_2_2 = (fun ys_2_2 -> 
        ys_2_2) in
        (let rec h_1_7 = 'O' in
          (fun ys_2_3 -> 
            (let rec t_2_3 = ((mappend_lh__d1_d3 t_2_2) ys_2_3) in
              (let rec h_1_8 = h_1_7 in
                (fun ys_2_4 -> 
                  (let rec t_2_4 = ((mappend_lh__d1_d2 t_2_3) ys_2_4) in
                    (let rec h_1_9 = h_1_8 in
                      (fun ys_2_5 -> 
                        (let rec t_2_5 = ((mappend_lh__d1_d1 t_2_4) ys_2_5) in
                          (let rec h_2_0 = h_1_9 in
                            (fun ys_2_6 -> 
                              (let rec t_2_6 = ((mappend_lh__d1_d0 t_2_5) ys_2_6) in
                                (let rec h_2_1 = h_2_0 in
                                  (fun ys_2_7 -> 
                                    (let rec t_2_7 = ((mappend_lh__d9 t_2_6) ys_2_7) in
                                      (let rec h_2_2 = h_2_1 in
                                        (fun ys_2_8 -> 
                                          (let rec t_2_8 = ((mappend_lh__d4 t_2_7) ys_2_8) in
                                            (fun _lh_dummy_8 -> 
                                              (1 + (length_lh__d0 t_2_8))))))))))))))))))))))
    | `Empty -> 
      (let rec t_2_9 = (fun ys_2_9 -> 
        ys_2_9) in
        (let rec h_2_3 = ' ' in
          (fun ys_3_0 -> 
            (let rec t_3_0 = ((mappend_lh__d1_d3 t_2_9) ys_3_0) in
              (let rec h_2_4 = h_2_3 in
                (fun ys_3_1 -> 
                  (let rec t_3_1 = ((mappend_lh__d1_d2 t_3_0) ys_3_1) in
                    (let rec h_2_5 = h_2_4 in
                      (fun ys_3_2 -> 
                        (let rec t_3_2 = ((mappend_lh__d1_d1 t_3_1) ys_3_2) in
                          (let rec h_2_6 = h_2_5 in
                            (fun ys_3_3 -> 
                              (let rec t_3_3 = ((mappend_lh__d1_d0 t_3_2) ys_3_3) in
                                (let rec h_2_7 = h_2_6 in
                                  (fun ys_3_4 -> 
                                    (let rec t_3_4 = ((mappend_lh__d9 t_3_3) ys_3_4) in
                                      (let rec h_2_8 = h_2_7 in
                                        (fun ys_3_5 -> 
                                          (let rec t_3_5 = ((mappend_lh__d4 t_3_4) ys_3_5) in
                                            (fun _lh_dummy_9 -> 
                                              (1 + (length_lh__d0 t_3_5))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d4 xs_1_3 ys_1_2_4 =
  (xs_1_3 ys_1_2_4);;
let rec mappend_lh__d1_d5 xs_2_1 ys_1_8_6 =
  (xs_2_1 ys_1_8_6);;
let rec showPiece_lh__d1 _lh_showPiece_arg1_6 =
  (match _lh_showPiece_arg1_6 with
    | `X -> 
      (let rec t_2_9_5 = (fun ys_2_7_1 -> 
        ys_2_7_1) in
        (let rec h_2_4_7 = 'X' in
          (fun ys_2_7_2 -> 
            (let rec t_2_9_6 = ((mappend_lh__d1_d5 t_2_9_5) ys_2_7_2) in
              (let rec h_2_4_8 = h_2_4_7 in
                (fun ys_2_7_3 -> 
                  (let rec t_2_9_7 = ((mappend_lh__d1_d4 t_2_9_6) ys_2_7_3) in
                    (let rec h_2_4_9 = h_2_4_8 in
                      (fun ys_2_7_4 -> 
                        (let rec t_2_9_8 = ((mappend_lh__d1_d3 t_2_9_7) ys_2_7_4) in
                          (let rec h_2_5_0 = h_2_4_9 in
                            (fun ys_2_7_5 -> 
                              (let rec t_2_9_9 = ((mappend_lh__d1_d2 t_2_9_8) ys_2_7_5) in
                                (let rec h_2_5_1 = h_2_5_0 in
                                  (fun ys_2_7_6 -> 
                                    (let rec t_3_0_0 = ((mappend_lh__d1_d1 t_2_9_9) ys_2_7_6) in
                                      (let rec h_2_5_2 = h_2_5_1 in
                                        (fun ys_2_7_7 -> 
                                          (let rec t_3_0_1 = ((mappend_lh__d1_d0 t_3_0_0) ys_2_7_7) in
                                            (let rec h_2_5_3 = h_2_5_2 in
                                              (fun ys_2_7_8 -> 
                                                (let rec t_3_0_2 = ((mappend_lh__d9 t_3_0_1) ys_2_7_8) in
                                                  (let rec h_2_5_4 = h_2_5_3 in
                                                    (fun ys_2_7_9 -> 
                                                      (let rec t_3_0_3 = ((mappend_lh__d4 t_3_0_2) ys_2_7_9) in
                                                        (fun _lh_dummy_7_5 -> 
                                                          (1 + (length_lh__d0 t_3_0_3))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_3_0_4 = (fun ys_2_8_0 -> 
        ys_2_8_0) in
        (let rec h_2_5_5 = 'O' in
          (fun ys_2_8_1 -> 
            (let rec t_3_0_5 = ((mappend_lh__d1_d5 t_3_0_4) ys_2_8_1) in
              (let rec h_2_5_6 = h_2_5_5 in
                (fun ys_2_8_2 -> 
                  (let rec t_3_0_6 = ((mappend_lh__d1_d4 t_3_0_5) ys_2_8_2) in
                    (let rec h_2_5_7 = h_2_5_6 in
                      (fun ys_2_8_3 -> 
                        (let rec t_3_0_7 = ((mappend_lh__d1_d3 t_3_0_6) ys_2_8_3) in
                          (let rec h_2_5_8 = h_2_5_7 in
                            (fun ys_2_8_4 -> 
                              (let rec t_3_0_8 = ((mappend_lh__d1_d2 t_3_0_7) ys_2_8_4) in
                                (let rec h_2_5_9 = h_2_5_8 in
                                  (fun ys_2_8_5 -> 
                                    (let rec t_3_0_9 = ((mappend_lh__d1_d1 t_3_0_8) ys_2_8_5) in
                                      (let rec h_2_6_0 = h_2_5_9 in
                                        (fun ys_2_8_6 -> 
                                          (let rec t_3_1_0 = ((mappend_lh__d1_d0 t_3_0_9) ys_2_8_6) in
                                            (let rec h_2_6_1 = h_2_6_0 in
                                              (fun ys_2_8_7 -> 
                                                (let rec t_3_1_1 = ((mappend_lh__d9 t_3_1_0) ys_2_8_7) in
                                                  (let rec h_2_6_2 = h_2_6_1 in
                                                    (fun ys_2_8_8 -> 
                                                      (let rec t_3_1_2 = ((mappend_lh__d4 t_3_1_1) ys_2_8_8) in
                                                        (fun _lh_dummy_7_6 -> 
                                                          (1 + (length_lh__d0 t_3_1_2))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_3_1_3 = (fun ys_2_8_9 -> 
        ys_2_8_9) in
        (let rec h_2_6_3 = ' ' in
          (fun ys_2_9_0 -> 
            (let rec t_3_1_4 = ((mappend_lh__d1_d5 t_3_1_3) ys_2_9_0) in
              (let rec h_2_6_4 = h_2_6_3 in
                (fun ys_2_9_1 -> 
                  (let rec t_3_1_5 = ((mappend_lh__d1_d4 t_3_1_4) ys_2_9_1) in
                    (let rec h_2_6_5 = h_2_6_4 in
                      (fun ys_2_9_2 -> 
                        (let rec t_3_1_6 = ((mappend_lh__d1_d3 t_3_1_5) ys_2_9_2) in
                          (let rec h_2_6_6 = h_2_6_5 in
                            (fun ys_2_9_3 -> 
                              (let rec t_3_1_7 = ((mappend_lh__d1_d2 t_3_1_6) ys_2_9_3) in
                                (let rec h_2_6_7 = h_2_6_6 in
                                  (fun ys_2_9_4 -> 
                                    (let rec t_3_1_8 = ((mappend_lh__d1_d1 t_3_1_7) ys_2_9_4) in
                                      (let rec h_2_6_8 = h_2_6_7 in
                                        (fun ys_2_9_5 -> 
                                          (let rec t_3_1_9 = ((mappend_lh__d1_d0 t_3_1_8) ys_2_9_5) in
                                            (let rec h_2_6_9 = h_2_6_8 in
                                              (fun ys_2_9_6 -> 
                                                (let rec t_3_2_0 = ((mappend_lh__d9 t_3_1_9) ys_2_9_6) in
                                                  (let rec h_2_7_0 = h_2_6_9 in
                                                    (fun ys_2_9_7 -> 
                                                      (let rec t_3_2_1 = ((mappend_lh__d4 t_3_2_0) ys_2_9_7) in
                                                        (fun _lh_dummy_7_7 -> 
                                                          (1 + (length_lh__d0 t_3_2_1))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d1_d7 xs_2_3 ys_3_6_4 =
  (xs_2_3 ys_3_6_4);;
let rec showPiece_lh__d0 _lh_showPiece_arg1_7 =
  (match _lh_showPiece_arg1_7 with
    | `X -> 
      (let rec t_3_2_8 = (fun ys_3_0_5 -> 
        ys_3_0_5) in
        (let rec h_2_7_7 = 'X' in
          (fun ys_3_0_6 -> 
            (let rec t_3_2_9 = ((mappend_lh__d1_d7 t_3_2_8) ys_3_0_6) in
              (let rec h_2_7_8 = h_2_7_7 in
                (fun ys_3_0_7 -> 
                  (let rec t_3_3_0 = ((mappend_lh__d1_d6 t_3_2_9) ys_3_0_7) in
                    (let rec h_2_7_9 = h_2_7_8 in
                      (fun ys_3_0_8 -> 
                        (let rec t_3_3_1 = ((mappend_lh__d1_d5 t_3_3_0) ys_3_0_8) in
                          (let rec h_2_8_0 = h_2_7_9 in
                            (fun ys_3_0_9 -> 
                              (let rec t_3_3_2 = ((mappend_lh__d1_d4 t_3_3_1) ys_3_0_9) in
                                (let rec h_2_8_1 = h_2_8_0 in
                                  (fun ys_3_1_0 -> 
                                    (let rec t_3_3_3 = ((mappend_lh__d1_d3 t_3_3_2) ys_3_1_0) in
                                      (let rec h_2_8_2 = h_2_8_1 in
                                        (fun ys_3_1_1 -> 
                                          (let rec t_3_3_4 = ((mappend_lh__d1_d2 t_3_3_3) ys_3_1_1) in
                                            (let rec h_2_8_3 = h_2_8_2 in
                                              (fun ys_3_1_2 -> 
                                                (let rec t_3_3_5 = ((mappend_lh__d1_d1 t_3_3_4) ys_3_1_2) in
                                                  (let rec h_2_8_4 = h_2_8_3 in
                                                    (fun ys_3_1_3 -> 
                                                      (let rec t_3_3_6 = ((mappend_lh__d1_d0 t_3_3_5) ys_3_1_3) in
                                                        (let rec h_2_8_5 = h_2_8_4 in
                                                          (fun ys_3_1_4 -> 
                                                            (let rec t_3_3_7 = ((mappend_lh__d9 t_3_3_6) ys_3_1_4) in
                                                              (let rec h_2_8_6 = h_2_8_5 in
                                                                (fun ys_3_1_5 -> 
                                                                  (let rec t_3_3_8 = ((mappend_lh__d4 t_3_3_7) ys_3_1_5) in
                                                                    (fun _lh_dummy_7_9 -> 
                                                                      (1 + (length_lh__d0 t_3_3_8))))))))))))))))))))))))))))))))))
    | `O -> 
      (let rec t_3_3_9 = (fun ys_3_1_6 -> 
        ys_3_1_6) in
        (let rec h_2_8_7 = 'O' in
          (fun ys_3_1_7 -> 
            (let rec t_3_4_0 = ((mappend_lh__d1_d7 t_3_3_9) ys_3_1_7) in
              (let rec h_2_8_8 = h_2_8_7 in
                (fun ys_3_1_8 -> 
                  (let rec t_3_4_1 = ((mappend_lh__d1_d6 t_3_4_0) ys_3_1_8) in
                    (let rec h_2_8_9 = h_2_8_8 in
                      (fun ys_3_1_9 -> 
                        (let rec t_3_4_2 = ((mappend_lh__d1_d5 t_3_4_1) ys_3_1_9) in
                          (let rec h_2_9_0 = h_2_8_9 in
                            (fun ys_3_2_0 -> 
                              (let rec t_3_4_3 = ((mappend_lh__d1_d4 t_3_4_2) ys_3_2_0) in
                                (let rec h_2_9_1 = h_2_9_0 in
                                  (fun ys_3_2_1 -> 
                                    (let rec t_3_4_4 = ((mappend_lh__d1_d3 t_3_4_3) ys_3_2_1) in
                                      (let rec h_2_9_2 = h_2_9_1 in
                                        (fun ys_3_2_2 -> 
                                          (let rec t_3_4_5 = ((mappend_lh__d1_d2 t_3_4_4) ys_3_2_2) in
                                            (let rec h_2_9_3 = h_2_9_2 in
                                              (fun ys_3_2_3 -> 
                                                (let rec t_3_4_6 = ((mappend_lh__d1_d1 t_3_4_5) ys_3_2_3) in
                                                  (let rec h_2_9_4 = h_2_9_3 in
                                                    (fun ys_3_2_4 -> 
                                                      (let rec t_3_4_7 = ((mappend_lh__d1_d0 t_3_4_6) ys_3_2_4) in
                                                        (let rec h_2_9_5 = h_2_9_4 in
                                                          (fun ys_3_2_5 -> 
                                                            (let rec t_3_4_8 = ((mappend_lh__d9 t_3_4_7) ys_3_2_5) in
                                                              (let rec h_2_9_6 = h_2_9_5 in
                                                                (fun ys_3_2_6 -> 
                                                                  (let rec t_3_4_9 = ((mappend_lh__d4 t_3_4_8) ys_3_2_6) in
                                                                    (fun _lh_dummy_8_0 -> 
                                                                      (1 + (length_lh__d0 t_3_4_9))))))))))))))))))))))))))))))))))
    | `Empty -> 
      (let rec t_3_5_0 = (fun ys_3_2_7 -> 
        ys_3_2_7) in
        (let rec h_2_9_7 = ' ' in
          (fun ys_3_2_8 -> 
            (let rec t_3_5_1 = ((mappend_lh__d1_d7 t_3_5_0) ys_3_2_8) in
              (let rec h_2_9_8 = h_2_9_7 in
                (fun ys_3_2_9 -> 
                  (let rec t_3_5_2 = ((mappend_lh__d1_d6 t_3_5_1) ys_3_2_9) in
                    (let rec h_2_9_9 = h_2_9_8 in
                      (fun ys_3_3_0 -> 
                        (let rec t_3_5_3 = ((mappend_lh__d1_d5 t_3_5_2) ys_3_3_0) in
                          (let rec h_3_0_0 = h_2_9_9 in
                            (fun ys_3_3_1 -> 
                              (let rec t_3_5_4 = ((mappend_lh__d1_d4 t_3_5_3) ys_3_3_1) in
                                (let rec h_3_0_1 = h_3_0_0 in
                                  (fun ys_3_3_2 -> 
                                    (let rec t_3_5_5 = ((mappend_lh__d1_d3 t_3_5_4) ys_3_3_2) in
                                      (let rec h_3_0_2 = h_3_0_1 in
                                        (fun ys_3_3_3 -> 
                                          (let rec t_3_5_6 = ((mappend_lh__d1_d2 t_3_5_5) ys_3_3_3) in
                                            (let rec h_3_0_3 = h_3_0_2 in
                                              (fun ys_3_3_4 -> 
                                                (let rec t_3_5_7 = ((mappend_lh__d1_d1 t_3_5_6) ys_3_3_4) in
                                                  (let rec h_3_0_4 = h_3_0_3 in
                                                    (fun ys_3_3_5 -> 
                                                      (let rec t_3_5_8 = ((mappend_lh__d1_d0 t_3_5_7) ys_3_3_5) in
                                                        (let rec h_3_0_5 = h_3_0_4 in
                                                          (fun ys_3_3_6 -> 
                                                            (let rec t_3_5_9 = ((mappend_lh__d9 t_3_5_8) ys_3_3_6) in
                                                              (let rec h_3_0_6 = h_3_0_5 in
                                                                (fun ys_3_3_7 -> 
                                                                  (let rec t_3_6_0 = ((mappend_lh__d4 t_3_5_9) ys_3_3_7) in
                                                                    (fun _lh_dummy_8_1 -> 
                                                                      (1 + (length_lh__d0 t_3_6_0))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec showRow_lh__d0 _lh_showRow_arg1_2 =
  (match _lh_showRow_arg1_2 with
    | `LH_C(_lh_showRow_LH_C_0_6, _lh_showRow_LH_C_1_6) -> 
      (match _lh_showRow_LH_C_1_6 with
        | `LH_C(_lh_showRow_LH_C_0_7, _lh_showRow_LH_C_1_7) -> 
          (match _lh_showRow_LH_C_1_7 with
            | `LH_C(_lh_showRow_LH_C_0_8, _lh_showRow_LH_C_1_8) -> 
              (match _lh_showRow_LH_C_1_8 with
                | `LH_N -> 
                  ((mappend_lh__d1_d4 ((mappend_lh__d1_d5 ((mappend_lh__d1_d6 ((mappend_lh__d1_d7 (showPiece_lh__d0 _lh_showRow_LH_C_0_6)) (let rec t_1_7_5 = (fun ys_1_6_4 -> 
                    ys_1_6_4) in
                    (let rec h_1_5_0 = '|' in
                      (fun ys_1_6_5 -> 
                        (let rec t_1_7_6 = ((mappend_lh__d1_d6 t_1_7_5) ys_1_6_5) in
                          (let rec h_1_5_1 = h_1_5_0 in
                            (fun ys_1_6_6 -> 
                              (let rec t_1_7_7 = ((mappend_lh__d1_d5 t_1_7_6) ys_1_6_6) in
                                (let rec h_1_5_2 = h_1_5_1 in
                                  (fun ys_1_6_7 -> 
                                    (let rec t_1_7_8 = ((mappend_lh__d1_d4 t_1_7_7) ys_1_6_7) in
                                      (let rec h_1_5_3 = h_1_5_2 in
                                        (fun ys_1_6_8 -> 
                                          (let rec t_1_7_9 = ((mappend_lh__d1_d3 t_1_7_8) ys_1_6_8) in
                                            (let rec h_1_5_4 = h_1_5_3 in
                                              (fun ys_1_6_9 -> 
                                                (let rec t_1_8_0 = ((mappend_lh__d1_d2 t_1_7_9) ys_1_6_9) in
                                                  (let rec h_1_5_5 = h_1_5_4 in
                                                    (fun ys_1_7_0 -> 
                                                      (let rec t_1_8_1 = ((mappend_lh__d1_d1 t_1_8_0) ys_1_7_0) in
                                                        (let rec h_1_5_6 = h_1_5_5 in
                                                          (fun ys_1_7_1 -> 
                                                            (let rec t_1_8_2 = ((mappend_lh__d1_d0 t_1_8_1) ys_1_7_1) in
                                                              (let rec h_1_5_7 = h_1_5_6 in
                                                                (fun ys_1_7_2 -> 
                                                                  (let rec t_1_8_3 = ((mappend_lh__d9 t_1_8_2) ys_1_7_2) in
                                                                    (let rec h_1_5_8 = h_1_5_7 in
                                                                      (fun ys_1_7_3 -> 
                                                                        (let rec t_1_8_4 = ((mappend_lh__d4 t_1_8_3) ys_1_7_3) in
                                                                          (fun _lh_dummy_4_1 -> 
                                                                            (1 + (length_lh__d0 t_1_8_4))))))))))))))))))))))))))))))))) (showPiece_lh__d1 _lh_showRow_LH_C_0_7))) (let rec t_1_8_5 = (fun ys_1_7_4 -> 
                    ys_1_7_4) in
                    (let rec h_1_5_9 = '|' in
                      (fun ys_1_7_5 -> 
                        (let rec t_1_8_6 = ((mappend_lh__d1_d4 t_1_8_5) ys_1_7_5) in
                          (let rec h_1_6_0 = h_1_5_9 in
                            (fun ys_1_7_6 -> 
                              (let rec t_1_8_7 = ((mappend_lh__d1_d3 t_1_8_6) ys_1_7_6) in
                                (let rec h_1_6_1 = h_1_6_0 in
                                  (fun ys_1_7_7 -> 
                                    (let rec t_1_8_8 = ((mappend_lh__d1_d2 t_1_8_7) ys_1_7_7) in
                                      (let rec h_1_6_2 = h_1_6_1 in
                                        (fun ys_1_7_8 -> 
                                          (let rec t_1_8_9 = ((mappend_lh__d1_d1 t_1_8_8) ys_1_7_8) in
                                            (let rec h_1_6_3 = h_1_6_2 in
                                              (fun ys_1_7_9 -> 
                                                (let rec t_1_9_0 = ((mappend_lh__d1_d0 t_1_8_9) ys_1_7_9) in
                                                  (let rec h_1_6_4 = h_1_6_3 in
                                                    (fun ys_1_8_0 -> 
                                                      (let rec t_1_9_1 = ((mappend_lh__d9 t_1_9_0) ys_1_8_0) in
                                                        (let rec h_1_6_5 = h_1_6_4 in
                                                          (fun ys_1_8_1 -> 
                                                            (let rec t_1_9_2 = ((mappend_lh__d4 t_1_9_1) ys_1_8_1) in
                                                              (fun _lh_dummy_4_2 -> 
                                                                (1 + (length_lh__d0 t_1_9_2))))))))))))))))))))))))))) (showPiece_lh__d2 _lh_showRow_LH_C_0_8))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec showBoard_lh__d0 _lh_showBoard_arg1_0 =
  (match _lh_showBoard_arg1_0 with
    | `LH_C(_lh_showBoard_LH_C_0_0, _lh_showBoard_LH_C_1_0) -> 
      (match _lh_showBoard_LH_C_1_0 with
        | `LH_C(_lh_showBoard_LH_C_0_1, _lh_showBoard_LH_C_1_1) -> 
          (match _lh_showBoard_LH_C_1_1 with
            | `LH_C(_lh_showBoard_LH_C_0_2, _lh_showBoard_LH_C_1_2) -> 
              (match _lh_showBoard_LH_C_1_2 with
                | `LH_N -> 
                  ((mappend_lh__d9 ((mappend_lh__d1_d0 ((mappend_lh__d1_d1 ((mappend_lh__d1_d2 ((mappend_lh__d1_d3 (showRow_lh__d0 _lh_showBoard_LH_C_0_0)) (let rec t_2_1_0 = (let rec t_2_1_1 = (let rec t_2_1_2 = (let rec t_2_1_3 = (let rec t_2_1_4 = (let rec t_2_1_5 = (let rec t_2_1_6 = (let rec t_2_1_7 = (fun ys_2_0_2 -> 
                    ys_2_0_2) in
                    (let rec h_1_8_0 = '|' in
                      (fun ys_2_0_3 -> 
                        (let rec t_2_1_8 = ((mappend_lh__d1_d2 t_2_1_7) ys_2_0_3) in
                          (let rec h_1_8_1 = h_1_8_0 in
                            (fun ys_2_0_4 -> 
                              (let rec t_2_1_9 = ((mappend_lh__d1_d1 t_2_1_8) ys_2_0_4) in
                                (let rec h_1_8_2 = h_1_8_1 in
                                  (fun ys_2_0_5 -> 
                                    (let rec t_2_2_0 = ((mappend_lh__d1_d0 t_2_1_9) ys_2_0_5) in
                                      (let rec h_1_8_3 = h_1_8_2 in
                                        (fun ys_2_0_6 -> 
                                          (let rec t_2_2_1 = ((mappend_lh__d9 t_2_2_0) ys_2_0_6) in
                                            (let rec h_1_8_4 = h_1_8_3 in
                                              (fun ys_2_0_7 -> 
                                                (let rec t_2_2_2 = ((mappend_lh__d4 t_2_2_1) ys_2_0_7) in
                                                  (fun _lh_dummy_5_6 -> 
                                                    (1 + (length_lh__d0 t_2_2_2))))))))))))))))))) in
                    (let rec h_1_8_5 = '-' in
                      (fun ys_2_0_8 -> 
                        (let rec t_2_2_3 = ((mappend_lh__d1_d2 t_2_1_6) ys_2_0_8) in
                          (let rec h_1_8_6 = h_1_8_5 in
                            (fun ys_2_0_9 -> 
                              (let rec t_2_2_4 = ((mappend_lh__d1_d1 t_2_2_3) ys_2_0_9) in
                                (let rec h_1_8_7 = h_1_8_6 in
                                  (fun ys_2_1_0 -> 
                                    (let rec t_2_2_5 = ((mappend_lh__d1_d0 t_2_2_4) ys_2_1_0) in
                                      (let rec h_1_8_8 = h_1_8_7 in
                                        (fun ys_2_1_1 -> 
                                          (let rec t_2_2_6 = ((mappend_lh__d9 t_2_2_5) ys_2_1_1) in
                                            (let rec h_1_8_9 = h_1_8_8 in
                                              (fun ys_2_1_2 -> 
                                                (let rec t_2_2_7 = ((mappend_lh__d4 t_2_2_6) ys_2_1_2) in
                                                  (fun _lh_dummy_5_7 -> 
                                                    (1 + (length_lh__d0 t_2_2_7))))))))))))))))))) in
                    (let rec h_1_9_0 = '-' in
                      (fun ys_2_1_3 -> 
                        (let rec t_2_2_8 = ((mappend_lh__d1_d2 t_2_1_5) ys_2_1_3) in
                          (let rec h_1_9_1 = h_1_9_0 in
                            (fun ys_2_1_4 -> 
                              (let rec t_2_2_9 = ((mappend_lh__d1_d1 t_2_2_8) ys_2_1_4) in
                                (let rec h_1_9_2 = h_1_9_1 in
                                  (fun ys_2_1_5 -> 
                                    (let rec t_2_3_0 = ((mappend_lh__d1_d0 t_2_2_9) ys_2_1_5) in
                                      (let rec h_1_9_3 = h_1_9_2 in
                                        (fun ys_2_1_6 -> 
                                          (let rec t_2_3_1 = ((mappend_lh__d9 t_2_3_0) ys_2_1_6) in
                                            (let rec h_1_9_4 = h_1_9_3 in
                                              (fun ys_2_1_7 -> 
                                                (let rec t_2_3_2 = ((mappend_lh__d4 t_2_3_1) ys_2_1_7) in
                                                  (fun _lh_dummy_5_8 -> 
                                                    (1 + (length_lh__d0 t_2_3_2))))))))))))))))))) in
                    (let rec h_1_9_5 = '-' in
                      (fun ys_2_1_8 -> 
                        (let rec t_2_3_3 = ((mappend_lh__d1_d2 t_2_1_4) ys_2_1_8) in
                          (let rec h_1_9_6 = h_1_9_5 in
                            (fun ys_2_1_9 -> 
                              (let rec t_2_3_4 = ((mappend_lh__d1_d1 t_2_3_3) ys_2_1_9) in
                                (let rec h_1_9_7 = h_1_9_6 in
                                  (fun ys_2_2_0 -> 
                                    (let rec t_2_3_5 = ((mappend_lh__d1_d0 t_2_3_4) ys_2_2_0) in
                                      (let rec h_1_9_8 = h_1_9_7 in
                                        (fun ys_2_2_1 -> 
                                          (let rec t_2_3_6 = ((mappend_lh__d9 t_2_3_5) ys_2_2_1) in
                                            (let rec h_1_9_9 = h_1_9_8 in
                                              (fun ys_2_2_2 -> 
                                                (let rec t_2_3_7 = ((mappend_lh__d4 t_2_3_6) ys_2_2_2) in
                                                  (fun _lh_dummy_5_9 -> 
                                                    (1 + (length_lh__d0 t_2_3_7))))))))))))))))))) in
                    (let rec h_2_0_0 = '-' in
                      (fun ys_2_2_3 -> 
                        (let rec t_2_3_8 = ((mappend_lh__d1_d2 t_2_1_3) ys_2_2_3) in
                          (let rec h_2_0_1 = h_2_0_0 in
                            (fun ys_2_2_4 -> 
                              (let rec t_2_3_9 = ((mappend_lh__d1_d1 t_2_3_8) ys_2_2_4) in
                                (let rec h_2_0_2 = h_2_0_1 in
                                  (fun ys_2_2_5 -> 
                                    (let rec t_2_4_0 = ((mappend_lh__d1_d0 t_2_3_9) ys_2_2_5) in
                                      (let rec h_2_0_3 = h_2_0_2 in
                                        (fun ys_2_2_6 -> 
                                          (let rec t_2_4_1 = ((mappend_lh__d9 t_2_4_0) ys_2_2_6) in
                                            (let rec h_2_0_4 = h_2_0_3 in
                                              (fun ys_2_2_7 -> 
                                                (let rec t_2_4_2 = ((mappend_lh__d4 t_2_4_1) ys_2_2_7) in
                                                  (fun _lh_dummy_6_0 -> 
                                                    (1 + (length_lh__d0 t_2_4_2))))))))))))))))))) in
                    (let rec h_2_0_5 = '-' in
                      (fun ys_2_2_8 -> 
                        (let rec t_2_4_3 = ((mappend_lh__d1_d2 t_2_1_2) ys_2_2_8) in
                          (let rec h_2_0_6 = h_2_0_5 in
                            (fun ys_2_2_9 -> 
                              (let rec t_2_4_4 = ((mappend_lh__d1_d1 t_2_4_3) ys_2_2_9) in
                                (let rec h_2_0_7 = h_2_0_6 in
                                  (fun ys_2_3_0 -> 
                                    (let rec t_2_4_5 = ((mappend_lh__d1_d0 t_2_4_4) ys_2_3_0) in
                                      (let rec h_2_0_8 = h_2_0_7 in
                                        (fun ys_2_3_1 -> 
                                          (let rec t_2_4_6 = ((mappend_lh__d9 t_2_4_5) ys_2_3_1) in
                                            (let rec h_2_0_9 = h_2_0_8 in
                                              (fun ys_2_3_2 -> 
                                                (let rec t_2_4_7 = ((mappend_lh__d4 t_2_4_6) ys_2_3_2) in
                                                  (fun _lh_dummy_6_1 -> 
                                                    (1 + (length_lh__d0 t_2_4_7))))))))))))))))))) in
                    (let rec h_2_1_0 = '-' in
                      (fun ys_2_3_3 -> 
                        (let rec t_2_4_8 = ((mappend_lh__d1_d2 t_2_1_1) ys_2_3_3) in
                          (let rec h_2_1_1 = h_2_1_0 in
                            (fun ys_2_3_4 -> 
                              (let rec t_2_4_9 = ((mappend_lh__d1_d1 t_2_4_8) ys_2_3_4) in
                                (let rec h_2_1_2 = h_2_1_1 in
                                  (fun ys_2_3_5 -> 
                                    (let rec t_2_5_0 = ((mappend_lh__d1_d0 t_2_4_9) ys_2_3_5) in
                                      (let rec h_2_1_3 = h_2_1_2 in
                                        (fun ys_2_3_6 -> 
                                          (let rec t_2_5_1 = ((mappend_lh__d9 t_2_5_0) ys_2_3_6) in
                                            (let rec h_2_1_4 = h_2_1_3 in
                                              (fun ys_2_3_7 -> 
                                                (let rec t_2_5_2 = ((mappend_lh__d4 t_2_5_1) ys_2_3_7) in
                                                  (fun _lh_dummy_6_2 -> 
                                                    (1 + (length_lh__d0 t_2_5_2))))))))))))))))))) in
                    (let rec h_2_1_5 = '|' in
                      (fun ys_2_3_8 -> 
                        (let rec t_2_5_3 = ((mappend_lh__d1_d2 t_2_1_0) ys_2_3_8) in
                          (let rec h_2_1_6 = h_2_1_5 in
                            (fun ys_2_3_9 -> 
                              (let rec t_2_5_4 = ((mappend_lh__d1_d1 t_2_5_3) ys_2_3_9) in
                                (let rec h_2_1_7 = h_2_1_6 in
                                  (fun ys_2_4_0 -> 
                                    (let rec t_2_5_5 = ((mappend_lh__d1_d0 t_2_5_4) ys_2_4_0) in
                                      (let rec h_2_1_8 = h_2_1_7 in
                                        (fun ys_2_4_1 -> 
                                          (let rec t_2_5_6 = ((mappend_lh__d9 t_2_5_5) ys_2_4_1) in
                                            (let rec h_2_1_9 = h_2_1_8 in
                                              (fun ys_2_4_2 -> 
                                                (let rec t_2_5_7 = ((mappend_lh__d4 t_2_5_6) ys_2_4_2) in
                                                  (fun _lh_dummy_6_3 -> 
                                                    (1 + (length_lh__d0 t_2_5_7))))))))))))))))))))) (showRow_lh__d1 _lh_showBoard_LH_C_0_1))) (let rec t_2_5_8 = (let rec t_2_5_9 = (let rec t_2_6_0 = (let rec t_2_6_1 = (let rec t_2_6_2 = (let rec t_2_6_3 = (let rec t_2_6_4 = (let rec t_2_6_5 = (fun ys_2_4_3 -> 
                    ys_2_4_3) in
                    (let rec h_2_2_0 = '|' in
                      (fun ys_2_4_4 -> 
                        (let rec t_2_6_6 = ((mappend_lh__d1_d0 t_2_6_5) ys_2_4_4) in
                          (let rec h_2_2_1 = h_2_2_0 in
                            (fun ys_2_4_5 -> 
                              (let rec t_2_6_7 = ((mappend_lh__d9 t_2_6_6) ys_2_4_5) in
                                (let rec h_2_2_2 = h_2_2_1 in
                                  (fun ys_2_4_6 -> 
                                    (let rec t_2_6_8 = ((mappend_lh__d4 t_2_6_7) ys_2_4_6) in
                                      (fun _lh_dummy_6_4 -> 
                                        (1 + (length_lh__d0 t_2_6_8))))))))))))) in
                    (let rec h_2_2_3 = '-' in
                      (fun ys_2_4_7 -> 
                        (let rec t_2_6_9 = ((mappend_lh__d1_d0 t_2_6_4) ys_2_4_7) in
                          (let rec h_2_2_4 = h_2_2_3 in
                            (fun ys_2_4_8 -> 
                              (let rec t_2_7_0 = ((mappend_lh__d9 t_2_6_9) ys_2_4_8) in
                                (let rec h_2_2_5 = h_2_2_4 in
                                  (fun ys_2_4_9 -> 
                                    (let rec t_2_7_1 = ((mappend_lh__d4 t_2_7_0) ys_2_4_9) in
                                      (fun _lh_dummy_6_5 -> 
                                        (1 + (length_lh__d0 t_2_7_1))))))))))))) in
                    (let rec h_2_2_6 = '-' in
                      (fun ys_2_5_0 -> 
                        (let rec t_2_7_2 = ((mappend_lh__d1_d0 t_2_6_3) ys_2_5_0) in
                          (let rec h_2_2_7 = h_2_2_6 in
                            (fun ys_2_5_1 -> 
                              (let rec t_2_7_3 = ((mappend_lh__d9 t_2_7_2) ys_2_5_1) in
                                (let rec h_2_2_8 = h_2_2_7 in
                                  (fun ys_2_5_2 -> 
                                    (let rec t_2_7_4 = ((mappend_lh__d4 t_2_7_3) ys_2_5_2) in
                                      (fun _lh_dummy_6_6 -> 
                                        (1 + (length_lh__d0 t_2_7_4))))))))))))) in
                    (let rec h_2_2_9 = '-' in
                      (fun ys_2_5_3 -> 
                        (let rec t_2_7_5 = ((mappend_lh__d1_d0 t_2_6_2) ys_2_5_3) in
                          (let rec h_2_3_0 = h_2_2_9 in
                            (fun ys_2_5_4 -> 
                              (let rec t_2_7_6 = ((mappend_lh__d9 t_2_7_5) ys_2_5_4) in
                                (let rec h_2_3_1 = h_2_3_0 in
                                  (fun ys_2_5_5 -> 
                                    (let rec t_2_7_7 = ((mappend_lh__d4 t_2_7_6) ys_2_5_5) in
                                      (fun _lh_dummy_6_7 -> 
                                        (1 + (length_lh__d0 t_2_7_7))))))))))))) in
                    (let rec h_2_3_2 = '-' in
                      (fun ys_2_5_6 -> 
                        (let rec t_2_7_8 = ((mappend_lh__d1_d0 t_2_6_1) ys_2_5_6) in
                          (let rec h_2_3_3 = h_2_3_2 in
                            (fun ys_2_5_7 -> 
                              (let rec t_2_7_9 = ((mappend_lh__d9 t_2_7_8) ys_2_5_7) in
                                (let rec h_2_3_4 = h_2_3_3 in
                                  (fun ys_2_5_8 -> 
                                    (let rec t_2_8_0 = ((mappend_lh__d4 t_2_7_9) ys_2_5_8) in
                                      (fun _lh_dummy_6_8 -> 
                                        (1 + (length_lh__d0 t_2_8_0))))))))))))) in
                    (let rec h_2_3_5 = '-' in
                      (fun ys_2_5_9 -> 
                        (let rec t_2_8_1 = ((mappend_lh__d1_d0 t_2_6_0) ys_2_5_9) in
                          (let rec h_2_3_6 = h_2_3_5 in
                            (fun ys_2_6_0 -> 
                              (let rec t_2_8_2 = ((mappend_lh__d9 t_2_8_1) ys_2_6_0) in
                                (let rec h_2_3_7 = h_2_3_6 in
                                  (fun ys_2_6_1 -> 
                                    (let rec t_2_8_3 = ((mappend_lh__d4 t_2_8_2) ys_2_6_1) in
                                      (fun _lh_dummy_6_9 -> 
                                        (1 + (length_lh__d0 t_2_8_3))))))))))))) in
                    (let rec h_2_3_8 = '-' in
                      (fun ys_2_6_2 -> 
                        (let rec t_2_8_4 = ((mappend_lh__d1_d0 t_2_5_9) ys_2_6_2) in
                          (let rec h_2_3_9 = h_2_3_8 in
                            (fun ys_2_6_3 -> 
                              (let rec t_2_8_5 = ((mappend_lh__d9 t_2_8_4) ys_2_6_3) in
                                (let rec h_2_4_0 = h_2_3_9 in
                                  (fun ys_2_6_4 -> 
                                    (let rec t_2_8_6 = ((mappend_lh__d4 t_2_8_5) ys_2_6_4) in
                                      (fun _lh_dummy_7_0 -> 
                                        (1 + (length_lh__d0 t_2_8_6))))))))))))) in
                    (let rec h_2_4_1 = '|' in
                      (fun ys_2_6_5 -> 
                        (let rec t_2_8_7 = ((mappend_lh__d1_d0 t_2_5_8) ys_2_6_5) in
                          (let rec h_2_4_2 = h_2_4_1 in
                            (fun ys_2_6_6 -> 
                              (let rec t_2_8_8 = ((mappend_lh__d9 t_2_8_7) ys_2_6_6) in
                                (let rec h_2_4_3 = h_2_4_2 in
                                  (fun ys_2_6_7 -> 
                                    (let rec t_2_8_9 = ((mappend_lh__d4 t_2_8_8) ys_2_6_7) in
                                      (fun _lh_dummy_7_1 -> 
                                        (1 + (length_lh__d0 t_2_8_9))))))))))))))) (showRow_lh__d2 _lh_showBoard_LH_C_0_2))) (let rec t_2_9_0 = (let rec t_2_9_1 = (fun ys_2_6_8 -> 
                    ys_2_6_8) in
                    (let rec h_2_4_4 = '|' in
                      (fun ys_2_6_9 -> 
                        (let rec t_2_9_2 = ((mappend_lh__d4 t_2_9_1) ys_2_6_9) in
                          (fun _lh_dummy_7_2 -> 
                            (1 + (length_lh__d0 t_2_9_2))))))) in
                    (let rec h_2_4_5 = '|' in
                      (fun ys_2_7_0 -> 
                        (let rec t_2_9_3 = ((mappend_lh__d4 t_2_9_0) ys_2_7_0) in
                          (fun _lh_dummy_7_3 -> 
                            (1 + (length_lh__d0 t_2_9_3))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d2_d6 xs_2_4 ys_3_6_5 =
  (xs_2_4 ys_3_6_5);;
let rec showEvaluation_lh__d0 _lh_showEvaluation_arg1_0 =
  (match _lh_showEvaluation_arg1_0 with
    | `XWin -> 
      (`LH_C('X', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `OWin -> 
      (`LH_C('O', (`LH_C('W', (`LH_C('i', (`LH_C('n', (`LH_N)))))))))
    | `Score(_lh_showEvaluation_Score_0_0) -> 
      ((mappend_lh__d2_d6 (let rec t_8_0 = (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (let rec t_8_4 = (fun ys_7_9 -> 
        ys_7_9) in
        (let rec h_6_8 = 'e' in
          (fun ys_8_0 -> 
            (`LH_C(h_6_8, ((mappend_lh__d2_d6 t_8_4) ys_8_0)))))) in
        (let rec h_6_9 = 'r' in
          (fun ys_8_1 -> 
            (`LH_C(h_6_9, ((mappend_lh__d2_d6 t_8_3) ys_8_1)))))) in
        (let rec h_7_0 = 'o' in
          (fun ys_8_2 -> 
            (`LH_C(h_7_0, ((mappend_lh__d2_d6 t_8_2) ys_8_2)))))) in
        (let rec h_7_1 = 'c' in
          (fun ys_8_3 -> 
            (`LH_C(h_7_1, ((mappend_lh__d2_d6 t_8_1) ys_8_3)))))) in
        (let rec h_7_2 = 'S' in
          (fun ys_8_4 -> 
            (`LH_C(h_7_2, ((mappend_lh__d2_d6 t_8_0) ys_8_4))))))) (string_of_int _lh_showEvaluation_Score_0_0))
    | _ -> 
      (failwith "error"));;
let rec mappend_lh__d8 xs_5 ys_8_5 =
  (match xs_5 with
    | `LH_C(h_7_5, t_8_7) -> 
      (let rec t_8_8 = ((mappend_lh__d8 t_8_7) ys_8_5) in
        (let rec h_7_6 = h_7_5 in
          (fun ys_8_6 -> 
            (let rec t_8_9 = ((mappend_lh__d7 t_8_8) ys_8_6) in
              (let rec h_7_7 = h_7_6 in
                (fun ys_8_7 -> 
                  (let rec t_9_0 = ((mappend_lh__d4 t_8_9) ys_8_7) in
                    (fun _lh_dummy_1_9 -> 
                      (1 + (length_lh__d0 t_9_0))))))))))
    | `LH_N -> 
      ys_8_5);;
let rec concat_lh__d4 lss_3 =
  (lss_3 99);;
let rec win4_lh__d1 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec map_lh__d1_d3 f_1_3 ls_7 =
  (ls_7 f_1_3);;
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
let rec wins_lh__d1 f_6_4 _lh_interpret_arg1_2_7 =
  (let rec t_3_8_7 = (let rec t_3_8_8 = (let rec t_3_8_9 = (let rec t_3_9_0 = (let rec t_3_9_1 = (let rec t_3_9_2 = (let rec t_3_9_3 = (let rec t_3_9_4 = (fun f_5_6 _lh_interpret_arg1_1_9 -> 
    (`Score(_lh_interpret_arg1_1_9))) in
    (let rec h_3_3_0 = win8_lh__d1 in
      (fun f_5_7 -> 
        (let rec _lh_interpret_LH_C_1_1_7 = ((map_lh__d1_d3 f_5_7) t_3_9_4) in
          (let rec _lh_interpret_LH_C_0_8 = (f_5_7 h_3_3_0) in
            (fun _lh_interpret_arg1_2_0 -> 
              ((_lh_interpret_LH_C_0_8 _lh_interpret_LH_C_1_1_7) _lh_interpret_arg1_2_0))))))) in
    (let rec h_3_3_1 = win7_lh__d1 in
      (fun f_5_8 -> 
        (let rec _lh_interpret_LH_C_1_1_8 = ((map_lh__d1_d3 f_5_8) t_3_9_3) in
          (let rec _lh_interpret_LH_C_0_9 = (f_5_8 h_3_3_1) in
            (fun _lh_interpret_arg1_2_1 -> 
              ((_lh_interpret_LH_C_0_9 _lh_interpret_LH_C_1_1_8) _lh_interpret_arg1_2_1))))))) in
    (let rec h_3_3_2 = win6_lh__d1 in
      (fun f_5_9 -> 
        (let rec _lh_interpret_LH_C_1_1_9 = ((map_lh__d1_d3 f_5_9) t_3_9_2) in
          (let rec _lh_interpret_LH_C_0_1_0 = (f_5_9 h_3_3_2) in
            (fun _lh_interpret_arg1_2_2 -> 
              ((_lh_interpret_LH_C_0_1_0 _lh_interpret_LH_C_1_1_9) _lh_interpret_arg1_2_2))))))) in
    (let rec h_3_3_3 = win5_lh__d1 in
      (fun f_6_0 -> 
        (let rec _lh_interpret_LH_C_1_2_0 = ((map_lh__d1_d3 f_6_0) t_3_9_1) in
          (let rec _lh_interpret_LH_C_0_1_1 = (f_6_0 h_3_3_3) in
            (fun _lh_interpret_arg1_2_3 -> 
              ((_lh_interpret_LH_C_0_1_1 _lh_interpret_LH_C_1_2_0) _lh_interpret_arg1_2_3))))))) in
    (let rec h_3_3_4 = win4_lh__d1 in
      (fun f_6_1 -> 
        (let rec _lh_interpret_LH_C_1_2_1 = ((map_lh__d1_d3 f_6_1) t_3_9_0) in
          (let rec _lh_interpret_LH_C_0_1_2 = (f_6_1 h_3_3_4) in
            (fun _lh_interpret_arg1_2_4 -> 
              ((_lh_interpret_LH_C_0_1_2 _lh_interpret_LH_C_1_2_1) _lh_interpret_arg1_2_4))))))) in
    (let rec h_3_3_5 = win3_lh__d1 in
      (fun f_6_2 -> 
        (let rec _lh_interpret_LH_C_1_2_2 = ((map_lh__d1_d3 f_6_2) t_3_8_9) in
          (let rec _lh_interpret_LH_C_0_1_3 = (f_6_2 h_3_3_5) in
            (fun _lh_interpret_arg1_2_5 -> 
              ((_lh_interpret_LH_C_0_1_3 _lh_interpret_LH_C_1_2_2) _lh_interpret_arg1_2_5))))))) in
    (let rec h_3_3_6 = win2_lh__d1 in
      (fun f_6_3 -> 
        (let rec _lh_interpret_LH_C_1_2_3 = ((map_lh__d1_d3 f_6_3) t_3_8_8) in
          (let rec _lh_interpret_LH_C_0_1_4 = (f_6_3 h_3_3_6) in
            (fun _lh_interpret_arg1_2_6 -> 
              ((_lh_interpret_LH_C_0_1_4 _lh_interpret_LH_C_1_2_3) _lh_interpret_arg1_2_6))))))) in
    (let rec h_3_3_7 = win1_lh__d1 in
      (let rec _lh_interpret_LH_C_1_2_4 = ((map_lh__d1_d3 f_6_4) t_3_8_7) in
        (let rec _lh_interpret_LH_C_0_1_5 = (f_6_4 h_3_3_7) in
          ((_lh_interpret_LH_C_0_1_5 _lh_interpret_LH_C_1_2_4) _lh_interpret_arg1_2_7)))));;
let rec interpret_lh__d1 _lh_interpret_arg1_3_8 _lh_interpret_arg2_2 =
  (_lh_interpret_arg2_2 _lh_interpret_arg1_3_8);;
let rec sum_lh__d3 ls_4 =
  (ls_4 99);;
let rec map2_lh__d3 _lh_map2_arg1_0 _lh_map2_arg2_0 _lh_map2_arg3_0 =
  (match _lh_map2_arg2_0 with
    | `LH_N -> 
      (fun _lh_dummy_0 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_0 with
        | `LH_N -> 
          (fun _lh_dummy_1 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_0 with
            | `LH_C(_lh_map2_LH_C_0_0, _lh_map2_LH_C_1_0) -> 
              (match _lh_map2_arg3_0 with
                | `LH_C(_lh_map2_LH_C_0_1, _lh_map2_LH_C_1_1) -> 
                  (let rec t_0 = (((map2_lh__d3 _lh_map2_arg1_0) _lh_map2_LH_C_1_0) _lh_map2_LH_C_1_1) in
                    (let rec h_0 = ((_lh_map2_arg1_0 _lh_map2_LH_C_0_0) _lh_map2_LH_C_0_1) in
                      (fun _lh_dummy_2 -> 
                        (h_0 + (sum_lh__d3 t_0)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
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
let rec map_lh__d1_d4 f_4_7 ls_1_8 =
  (ls_1_8 f_4_7);;
let rec sum_lh__d2 ls_6 =
  (ls_6 99);;
let rec map2_lh__d2 _lh_map2_arg1_1 _lh_map2_arg2_1 _lh_map2_arg3_1 =
  (match _lh_map2_arg2_1 with
    | `LH_N -> 
      (fun f_6 _lh_dummy_1_0 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_1 with
        | `LH_N -> 
          (fun f_7 _lh_dummy_1_1 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_1 with
            | `LH_C(_lh_map2_LH_C_0_2, _lh_map2_LH_C_1_2) -> 
              (match _lh_map2_arg3_1 with
                | `LH_C(_lh_map2_LH_C_0_3, _lh_map2_LH_C_1_3) -> 
                  (let rec t_3_6 = (((map2_lh__d2 _lh_map2_arg1_1) _lh_map2_LH_C_1_2) _lh_map2_LH_C_1_3) in
                    (let rec h_2_9 = ((_lh_map2_arg1_1 _lh_map2_LH_C_0_2) _lh_map2_LH_C_0_3) in
                      (fun f_8 -> 
                        (let rec t_3_7 = ((map_lh__d1_d4 f_8) t_3_6) in
                          (let rec h_3_0 = (f_8 h_2_9) in
                            (fun _lh_dummy_1_2 -> 
                              (h_3_0 + (sum_lh__d2 t_3_7))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec eval_lh__d1 _lh_eval_arg1_0 _lh_popOutId_0_2 _lh_popOutId_1_2 =
  (if (_lh_eval_arg1_0 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_0 = (0 - 3)) then
      (`OWin)
    else
      (let rec _lh_interpret_Score_0_0 = _lh_eval_arg1_0 in
        ((interpret_lh__d1 (_lh_popOutId_1_2 + _lh_interpret_Score_0_0)) _lh_popOutId_0_2))));;
let rec score_lh__d1 _lh_score_arg1_1 _lh_score_arg2_1 =
  (eval_lh__d1 (sum_lh__d2 ((map_lh__d1_d4 sum_lh__d3) (((map2_lh__d2 (map2_lh__d3 scorePiece_lh__d1)) _lh_score_arg1_1) _lh_score_arg2_1))));;
let rec static_lh__d1 _lh_static_arg1_0 =
  ((interpret_lh__d1 0) ((map_lh__d1_d3 (score_lh__d1 _lh_static_arg1_0)) wins_lh__d1));;
let rec mise_lh__d0 _lh_mise_arg1_0 _lh_mise_arg2_0 _lh_mise_arg3_0 =
  ((_lh_mise_arg3_0 _lh_mise_arg1_0) _lh_mise_arg2_0);;
let rec concat_lh__d1 lss_4 =
  (lss_4 99);;
let rec map_lh__d4 f_5_4 ls_2_1 =
  (ls_2_1 f_5_4);;
let rec mappend_lh__d1 xs_3 ys_3_6 =
  (xs_3 ys_3_6);;
let rec enumFromTo_lh__d2 a_1 b_2 _lh_popOutId_0_5 _lh_popOutId_1_5 _lh_popOutId_2_1 _lh_popOutId_3_1 =
  (if (a_1 <= b_2) then
    (fun f_2_4 _lh_dummy_2_7 -> 
      (let rec _lh_listcomp_fun_ls_t_3 = ((enumFromTo_lh__d2 (a_1 + 1)) b_2) in
        (let rec _lh_listcomp_fun_ls_h_3 = a_1 in
          (let rec t_1_1_4 = (_lh_popOutId_1_5 _lh_listcomp_fun_ls_t_3) in
            (let rec h_9_7 = (`LH_P2(_lh_popOutId_0_5, _lh_listcomp_fun_ls_h_3)) in
              (let rec t_1_1_5 = ((map_lh__d4 f_2_4) t_1_1_4) in
                (let rec h_9_8 = (f_2_4 h_9_7) in
                  ((mappend_lh__d1 h_9_8) (concat_lh__d1 t_1_1_5)))))))))
  else
    (_lh_popOutId_3_1 _lh_popOutId_2_1));;
let rec enumFromTo_lh__d3 a_5 b_6 _lh_popOutId_0_1_2 =
  (if (a_5 <= b_6) then
    (let rec _lh_listcomp_fun_ls_t_1_1 = ((enumFromTo_lh__d3 (a_5 + 1)) b_6) in
      (let rec _lh_listcomp_fun_ls_h_1_1 = a_5 in
        (let rec _lh_listcomp_fun_2_2 = (fun _lh_listcomp_fun_para_5 -> 
          ((((_lh_listcomp_fun_para_5 _lh_listcomp_fun_ls_h_1_1) _lh_listcomp_fun_2_2) _lh_listcomp_fun_ls_t_1_1) _lh_popOutId_0_1_2)) in
          (_lh_listcomp_fun_2_2 ((enumFromTo_lh__d2 1) 3)))))
  else
    (fun f_4_8 _lh_dummy_7_8 f_4_9 -> 
      (`LH_N)));;
let rec empty'_lh__d3 _lh_empty'_arg1_1 _lh_empty'_arg2_1 =
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
let rec empty'_lh__d4 _lh_empty'_arg1_6 _lh_empty'_arg2_6 =
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
let rec empty'_lh__d5 _lh_empty'_arg1_8 _lh_empty'_arg2_8 =
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
                          ((empty'_lh__d4 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_0)
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
                          ((empty'_lh__d5 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_4)
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
                          ((empty'_lh__d3 _lh_empty_LH_P2_1_0) _lh_empty_LH_C_0_8)
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
let rec map_lh__d7 f_5 ls_3 =
  (ls_3 f_5);;
let rec insert_lh__d4 _lh_insert_arg1_1 _lh_insert_arg2_1 _lh_insert_arg3_1 =
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
let rec insert_lh__d3 _lh_insert_arg1_4 _lh_insert_arg2_4 _lh_insert_arg3_4 =
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
let rec insert_lh__d5 _lh_insert_arg1_7 _lh_insert_arg2_7 _lh_insert_arg3_7 =
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
let rec placePiece_lh__d1 _lh_placePiece_arg1_0 _lh_placePiece_arg2_0 _lh_placePiece_arg3_0 =
  (if (not ((empty_lh__d1 _lh_placePiece_arg3_0) _lh_placePiece_arg2_0)) then
    (fun ys_6 -> 
      ys_6)
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
                                (let rec t_9 = (fun ys_7 -> 
                                  ys_7) in
                                  (let rec h_5 = (`LH_C((((insert_lh__d3 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_0) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))) in
                                    (fun ys_8 -> 
                                      (let rec t_1_0 = ((mappend_lh__d1 t_9) ys_8) in
                                        (let rec h_6 = h_5 in
                                          (fun f_0 -> 
                                            (`LH_C((f_0 h_6), ((map_lh__d7 f_0) t_1_0)))))))))
                              | 2 -> 
                                (let rec t_1_1 = (fun ys_9 -> 
                                  ys_9) in
                                  (let rec h_7 = (`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C((((insert_lh__d4 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_1) _lh_placePiece_LH_P2_1_0), (`LH_C(_lh_placePiece_LH_C_0_2, (`LH_N))))))) in
                                    (fun ys_1_0 -> 
                                      (let rec t_1_2 = ((mappend_lh__d1 t_1_1) ys_1_0) in
                                        (let rec h_8 = h_7 in
                                          (fun f_1 -> 
                                            (`LH_C((f_1 h_8), ((map_lh__d7 f_1) t_1_2)))))))))
                              | 3 -> 
                                (let rec t_1_3 = (fun ys_1_1 -> 
                                  ys_1_1) in
                                  (let rec h_9 = (`LH_C(_lh_placePiece_LH_C_0_0, (`LH_C(_lh_placePiece_LH_C_0_1, (`LH_C((((insert_lh__d5 _lh_placePiece_arg1_0) _lh_placePiece_LH_C_0_2) _lh_placePiece_LH_P2_1_0), (`LH_N))))))) in
                                    (fun ys_1_2 -> 
                                      (let rec t_1_4 = ((mappend_lh__d1 t_1_3) ys_1_2) in
                                        (let rec h_1_0 = h_9 in
                                          (fun f_2 -> 
                                            (`LH_C((f_2 h_1_0), ((map_lh__d7 f_2) t_1_4)))))))))
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
let rec newPositions_lh__d1 _lh_newPositions_arg1_0 _lh_newPositions_arg2_0 =
  (concat_lh__d1 ((map_lh__d4 ((placePiece_lh__d1 _lh_newPositions_arg1_0) _lh_newPositions_arg2_0)) (let rec _lh_listcomp_fun_4 = (fun _lh_listcomp_fun_para_0 -> 
    (_lh_listcomp_fun_para_0 _lh_listcomp_fun_4)) in
    (_lh_listcomp_fun_4 ((enumFromTo_lh__d3 1) 3)))));;
let rec mappend_lh__d0 xs_7 ys_1_0_1 =
  (xs_7 ys_1_0_1);;
let rec concat_lh__d0 lss_2 =
  (lss_2 99);;
let rec map_lh__d3 f_5_0 ls_1_9 =
  (ls_1_9 f_5_0);;
let rec enumFromTo_lh__d0 a_2 b_3 _lh_popOutId_0_6 _lh_popOutId_1_6 _lh_popOutId_2_2 _lh_popOutId_3_2 =
  (if (a_2 <= b_3) then
    (fun f_2_6 _lh_dummy_3_1 -> 
      (let rec _lh_listcomp_fun_ls_t_6 = ((enumFromTo_lh__d0 (a_2 + 1)) b_3) in
        (let rec _lh_listcomp_fun_ls_h_6 = a_2 in
          (let rec t_1_3_1 = (_lh_popOutId_1_6 _lh_listcomp_fun_ls_t_6) in
            (let rec h_1_1_2 = (`LH_P2(_lh_popOutId_0_6, _lh_listcomp_fun_ls_h_6)) in
              (let rec t_1_3_2 = ((map_lh__d3 f_2_6) t_1_3_1) in
                (let rec h_1_1_3 = (f_2_6 h_1_1_2) in
                  ((mappend_lh__d0 h_1_1_3) (concat_lh__d0 t_1_3_2)))))))))
  else
    (_lh_popOutId_3_2 _lh_popOutId_2_2));;
let rec enumFromTo_lh__d1 a_3 b_4 _lh_popOutId_0_8 =
  (if (a_3 <= b_4) then
    (let rec _lh_listcomp_fun_ls_t_9 = ((enumFromTo_lh__d1 (a_3 + 1)) b_4) in
      (let rec _lh_listcomp_fun_ls_h_9 = a_3 in
        (let rec _lh_listcomp_fun_1_5 = (fun _lh_listcomp_fun_para_2 -> 
          ((((_lh_listcomp_fun_para_2 _lh_listcomp_fun_ls_h_9) _lh_listcomp_fun_1_5) _lh_listcomp_fun_ls_t_9) _lh_popOutId_0_8)) in
          (_lh_listcomp_fun_1_5 ((enumFromTo_lh__d0 1) 3)))))
  else
    (fun f_4_0 _lh_dummy_4_9 f_4_1 -> 
      (`LH_N)));;
let rec insert_lh__d0 _lh_insert_arg1_0 _lh_insert_arg2_0 _lh_insert_arg3_0 =
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
let rec empty'_lh__d0 _lh_empty'_arg1_7 _lh_empty'_arg2_7 =
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
let rec empty'_lh__d2 _lh_empty'_arg1_3 _lh_empty'_arg2_3 =
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
let rec empty'_lh__d1 _lh_empty'_arg1_4 _lh_empty'_arg2_4 =
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
let rec empty_lh__d0 _lh_empty_arg1_2 _lh_empty_arg2_2 =
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
                          ((empty'_lh__d1 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_1_8)
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
                          ((empty'_lh__d2 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_2_2)
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
                          ((empty'_lh__d0 _lh_empty_LH_P2_1_2) _lh_empty_LH_C_0_2_6)
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
let rec insert_lh__d1 _lh_insert_arg1_8 _lh_insert_arg2_8 _lh_insert_arg3_8 =
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
let rec insert_lh__d2 _lh_insert_arg1_2 _lh_insert_arg2_2 _lh_insert_arg3_2 =
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
let rec placePiece_lh__d0 _lh_placePiece_arg1_2 _lh_placePiece_arg2_2 _lh_placePiece_arg3_2 =
  (if (not ((empty_lh__d0 _lh_placePiece_arg3_2) _lh_placePiece_arg2_2)) then
    (fun ys_2_9_8 -> 
      ys_2_9_8)
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
                                (let rec t_3_2_2 = (fun ys_2_9_9 -> 
                                  ys_2_9_9) in
                                  (let rec h_2_7_1 = (`LH_C((((insert_lh__d0 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_6) _lh_placePiece_LH_P2_1_2), (`LH_C(_lh_placePiece_LH_C_0_7, (`LH_C(_lh_placePiece_LH_C_0_8, (`LH_N))))))) in
                                    (fun ys_3_0_0 -> 
                                      (let rec t_3_2_3 = ((mappend_lh__d0 t_3_2_2) ys_3_0_0) in
                                        (let rec h_2_7_2 = h_2_7_1 in
                                          (fun f_4_4 -> 
                                            (`LH_C((f_4_4 h_2_7_2), ((map_lh__d7 f_4_4) t_3_2_3)))))))))
                              | 2 -> 
                                (let rec t_3_2_4 = (fun ys_3_0_1 -> 
                                  ys_3_0_1) in
                                  (let rec h_2_7_3 = (`LH_C(_lh_placePiece_LH_C_0_6, (`LH_C((((insert_lh__d1 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_7) _lh_placePiece_LH_P2_1_2), (`LH_C(_lh_placePiece_LH_C_0_8, (`LH_N))))))) in
                                    (fun ys_3_0_2 -> 
                                      (let rec t_3_2_5 = ((mappend_lh__d0 t_3_2_4) ys_3_0_2) in
                                        (let rec h_2_7_4 = h_2_7_3 in
                                          (fun f_4_5 -> 
                                            (`LH_C((f_4_5 h_2_7_4), ((map_lh__d7 f_4_5) t_3_2_5)))))))))
                              | 3 -> 
                                (let rec t_3_2_6 = (fun ys_3_0_3 -> 
                                  ys_3_0_3) in
                                  (let rec h_2_7_5 = (`LH_C(_lh_placePiece_LH_C_0_6, (`LH_C(_lh_placePiece_LH_C_0_7, (`LH_C((((insert_lh__d2 _lh_placePiece_arg1_2) _lh_placePiece_LH_C_0_8) _lh_placePiece_LH_P2_1_2), (`LH_N))))))) in
                                    (fun ys_3_0_4 -> 
                                      (let rec t_3_2_7 = ((mappend_lh__d0 t_3_2_6) ys_3_0_4) in
                                        (let rec h_2_7_6 = h_2_7_5 in
                                          (fun f_4_6 -> 
                                            (`LH_C((f_4_6 h_2_7_6), ((map_lh__d7 f_4_6) t_3_2_7)))))))))
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
let rec newPositions_lh__d0 _lh_newPositions_arg1_1 _lh_newPositions_arg2_1 =
  (concat_lh__d0 ((map_lh__d3 ((placePiece_lh__d0 _lh_newPositions_arg1_1) _lh_newPositions_arg2_1)) (let rec _lh_listcomp_fun_5 = (fun _lh_listcomp_fun_para_1 -> 
    (_lh_listcomp_fun_para_1 _lh_listcomp_fun_5)) in
    (_lh_listcomp_fun_5 ((enumFromTo_lh__d1 1) 3)))));;
let rec repTree_lh__d0 _lh_repTree_arg1_0 _lh_repTree_arg2_0 _lh_repTree_arg3_0 =
  (`Branch(_lh_repTree_arg3_0, ((map_lh__d7 ((repTree_lh__d0 _lh_repTree_arg2_0) _lh_repTree_arg1_0)) (_lh_repTree_arg1_0 _lh_repTree_arg3_0))));;
let rec map_lh__d6 f_3_1 ls_1_2 =
  (match ls_1_2 with
    | `LH_C(h_1_3_5, t_1_5_7) -> 
      (`LH_C((f_3_1 h_1_3_5), ((map_lh__d6 f_3_1) t_1_5_7)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d5 f_4_3 ls_1_7 =
  (match ls_1_7 with
    | `LH_C(h_2_4_6, t_2_9_4) -> 
      (`LH_C((f_4_3 h_2_4_6), ((map_lh__d5 f_4_3) t_2_9_4)))
    | `LH_N -> 
      (`LH_N));;
let rec prune_lh__d0 _lh_prune_arg1_0 _lh_prune_arg2_0 =
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
                (`Branch(_lh_prune_Branch_0_1, ((map_lh__d5 (prune_lh__d0 (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_1))))
            | _ -> 
              (failwith "error")))
    | _ -> 
      (match _lh_prune_arg2_0 with
        | `Branch(_lh_prune_Branch_0_2, _lh_prune_Branch_1_2) -> 
          (if (_lh_prune_arg1_0 < 0) then
            ((failwith "error") (`LH_C('T', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C('.', (`LH_C('p', (`LH_C('r', (`LH_C('u', (`LH_C('n', (`LH_C('e', (`LH_C(':', (`LH_C(' ', (`LH_C('<', (`LH_C(' ', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))
          else
            (`Branch(_lh_prune_Branch_0_2, ((map_lh__d6 (prune_lh__d0 (_lh_prune_arg1_0 - 1))) _lh_prune_Branch_1_2))))
        | _ -> 
          (failwith "error")));;
let rec opposite_lh__d0 _lh_opposite_arg1_1 =
  (match _lh_opposite_arg1_1 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec searchTree_lh__d0 _lh_searchTree_arg1_0 _lh_searchTree_arg2_0 =
  ((prune_lh__d0 5) (((repTree_lh__d0 (newPositions_lh__d0 _lh_searchTree_arg1_0)) (newPositions_lh__d1 (opposite_lh__d0 _lh_searchTree_arg1_0))) _lh_searchTree_arg2_0));;
let rec map_lh__d9 f_3 ls_1 =
  (ls_1 f_3);;
let rec sum_lh__d0 ls_9 =
  (ls_9 99);;
let rec map2_lh__d0 _lh_map2_arg1_2 _lh_map2_arg2_2 _lh_map2_arg3_2 =
  (match _lh_map2_arg2_2 with
    | `LH_N -> 
      (fun f_2_8 _lh_dummy_3_5 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_2 with
        | `LH_N -> 
          (fun f_2_9 _lh_dummy_3_6 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_2 with
            | `LH_C(_lh_map2_LH_C_0_4, _lh_map2_LH_C_1_4) -> 
              (match _lh_map2_arg3_2 with
                | `LH_C(_lh_map2_LH_C_0_5, _lh_map2_LH_C_1_5) -> 
                  (let rec t_1_5_5 = (((map2_lh__d0 _lh_map2_arg1_2) _lh_map2_LH_C_1_4) _lh_map2_LH_C_1_5) in
                    (let rec h_1_3_3 = ((_lh_map2_arg1_2 _lh_map2_LH_C_0_4) _lh_map2_LH_C_0_5) in
                      (fun f_3_0 -> 
                        (let rec t_1_5_6 = ((map_lh__d9 f_3_0) t_1_5_5) in
                          (let rec h_1_3_4 = (f_3_0 h_1_3_3) in
                            (fun _lh_dummy_3_7 -> 
                              (h_1_3_4 + (sum_lh__d0 t_1_5_6))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec sum_lh__d1 ls_1_1 =
  (ls_1_1 99);;
let rec map2_lh__d1 _lh_map2_arg1_5 _lh_map2_arg2_5 _lh_map2_arg3_5 =
  (match _lh_map2_arg2_5 with
    | `LH_N -> 
      (fun _lh_dummy_8_8 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_5 with
        | `LH_N -> 
          (fun _lh_dummy_8_9 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_5 with
            | `LH_C(_lh_map2_LH_C_0_1_0, _lh_map2_LH_C_1_1_0) -> 
              (match _lh_map2_arg3_5 with
                | `LH_C(_lh_map2_LH_C_0_1_1, _lh_map2_LH_C_1_1_1) -> 
                  (let rec t_4_0_3 = (((map2_lh__d1 _lh_map2_arg1_5) _lh_map2_LH_C_1_1_0) _lh_map2_LH_C_1_1_1) in
                    (let rec h_3_4_6 = ((_lh_map2_arg1_5 _lh_map2_LH_C_0_1_0) _lh_map2_LH_C_0_1_1) in
                      (fun _lh_dummy_9_0 -> 
                        (h_3_4_6 + (sum_lh__d1 t_4_0_3)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec interpret_lh__d0 _lh_interpret_arg1_3_7 _lh_interpret_arg2_1 =
  (_lh_interpret_arg2_1 _lh_interpret_arg1_3_7);;
let rec eval_lh__d0 _lh_eval_arg1_2 _lh_popOutId_0_1_1 _lh_popOutId_1_9 =
  (if (_lh_eval_arg1_2 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_2 = (0 - 3)) then
      (`OWin)
    else
      (let rec _lh_interpret_Score_0_2 = _lh_eval_arg1_2 in
        ((interpret_lh__d0 (_lh_popOutId_1_9 + _lh_interpret_Score_0_2)) _lh_popOutId_0_1_1))));;
let rec scorePiece_lh__d0 _lh_scorePiece_arg1_2 _lh_scorePiece_arg2_2 =
  (match _lh_scorePiece_arg1_2 with
    | `X -> 
      _lh_scorePiece_arg2_2
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_2)
    | _ -> 
      (failwith "error"));;
let rec score_lh__d0 _lh_score_arg1_0 _lh_score_arg2_0 =
  (eval_lh__d0 (sum_lh__d0 ((map_lh__d9 sum_lh__d1) (((map2_lh__d0 (map2_lh__d1 scorePiece_lh__d0)) _lh_score_arg1_0) _lh_score_arg2_0))));;
let rec map_lh__d8 f_7_6 ls_2_5 =
  (ls_2_5 f_7_6);;
let rec win7_lh__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win5_lh__d0 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win3_lh__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win8_lh__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win4_lh__d0 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2_lh__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win6_lh__d0 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win1_lh__d0 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec wins_lh__d0 f_7_3 _lh_interpret_arg1_3_6 =
  (let rec t_3_9_5 = (let rec t_3_9_6 = (let rec t_3_9_7 = (let rec t_3_9_8 = (let rec t_3_9_9 = (let rec t_4_0_0 = (let rec t_4_0_1 = (let rec t_4_0_2 = (fun f_6_5 _lh_interpret_arg1_2_8 -> 
    (`Score(_lh_interpret_arg1_2_8))) in
    (let rec h_3_3_8 = win8_lh__d0 in
      (fun f_6_6 -> 
        (let rec _lh_interpret_LH_C_1_2_5 = ((map_lh__d8 f_6_6) t_4_0_2) in
          (let rec _lh_interpret_LH_C_0_1_6 = (f_6_6 h_3_3_8) in
            (fun _lh_interpret_arg1_2_9 -> 
              ((_lh_interpret_LH_C_0_1_6 _lh_interpret_LH_C_1_2_5) _lh_interpret_arg1_2_9))))))) in
    (let rec h_3_3_9 = win7_lh__d0 in
      (fun f_6_7 -> 
        (let rec _lh_interpret_LH_C_1_2_6 = ((map_lh__d8 f_6_7) t_4_0_1) in
          (let rec _lh_interpret_LH_C_0_1_7 = (f_6_7 h_3_3_9) in
            (fun _lh_interpret_arg1_3_0 -> 
              ((_lh_interpret_LH_C_0_1_7 _lh_interpret_LH_C_1_2_6) _lh_interpret_arg1_3_0))))))) in
    (let rec h_3_4_0 = win6_lh__d0 in
      (fun f_6_8 -> 
        (let rec _lh_interpret_LH_C_1_2_7 = ((map_lh__d8 f_6_8) t_4_0_0) in
          (let rec _lh_interpret_LH_C_0_1_8 = (f_6_8 h_3_4_0) in
            (fun _lh_interpret_arg1_3_1 -> 
              ((_lh_interpret_LH_C_0_1_8 _lh_interpret_LH_C_1_2_7) _lh_interpret_arg1_3_1))))))) in
    (let rec h_3_4_1 = win5_lh__d0 in
      (fun f_6_9 -> 
        (let rec _lh_interpret_LH_C_1_2_8 = ((map_lh__d8 f_6_9) t_3_9_9) in
          (let rec _lh_interpret_LH_C_0_1_9 = (f_6_9 h_3_4_1) in
            (fun _lh_interpret_arg1_3_2 -> 
              ((_lh_interpret_LH_C_0_1_9 _lh_interpret_LH_C_1_2_8) _lh_interpret_arg1_3_2))))))) in
    (let rec h_3_4_2 = win4_lh__d0 in
      (fun f_7_0 -> 
        (let rec _lh_interpret_LH_C_1_2_9 = ((map_lh__d8 f_7_0) t_3_9_8) in
          (let rec _lh_interpret_LH_C_0_2_0 = (f_7_0 h_3_4_2) in
            (fun _lh_interpret_arg1_3_3 -> 
              ((_lh_interpret_LH_C_0_2_0 _lh_interpret_LH_C_1_2_9) _lh_interpret_arg1_3_3))))))) in
    (let rec h_3_4_3 = win3_lh__d0 in
      (fun f_7_1 -> 
        (let rec _lh_interpret_LH_C_1_3_0 = ((map_lh__d8 f_7_1) t_3_9_7) in
          (let rec _lh_interpret_LH_C_0_2_1 = (f_7_1 h_3_4_3) in
            (fun _lh_interpret_arg1_3_4 -> 
              ((_lh_interpret_LH_C_0_2_1 _lh_interpret_LH_C_1_3_0) _lh_interpret_arg1_3_4))))))) in
    (let rec h_3_4_4 = win2_lh__d0 in
      (fun f_7_2 -> 
        (let rec _lh_interpret_LH_C_1_3_1 = ((map_lh__d8 f_7_2) t_3_9_6) in
          (let rec _lh_interpret_LH_C_0_2_2 = (f_7_2 h_3_4_4) in
            (fun _lh_interpret_arg1_3_5 -> 
              ((_lh_interpret_LH_C_0_2_2 _lh_interpret_LH_C_1_3_1) _lh_interpret_arg1_3_5))))))) in
    (let rec h_3_4_5 = win1_lh__d0 in
      (let rec _lh_interpret_LH_C_1_3_2 = ((map_lh__d8 f_7_3) t_3_9_5) in
        (let rec _lh_interpret_LH_C_0_2_3 = (f_7_3 h_3_4_5) in
          ((_lh_interpret_LH_C_0_2_3 _lh_interpret_LH_C_1_3_2) _lh_interpret_arg1_3_6)))));;
let rec static_lh__d0 _lh_static_arg1_1 =
  ((interpret_lh__d0 0) ((map_lh__d8 (score_lh__d0 _lh_static_arg1_1)) wins_lh__d0));;
let rec cropTree_lh__d0 _lh_cropTree_arg1_0 =
  (_lh_cropTree_arg1_0 99);;
let rec foldr_lh__d0 f_2_3 i_0 ls_8 =
  ((ls_8 f_2_3) i_0);;
let rec map_lh__d0 f_2_7 ls_1_0 =
  (match ls_1_0 with
    | `LH_C(h_1_1_4, t_1_3_3) -> 
      (`LH_C((f_2_7 h_1_1_4), ((map_lh__d0 f_2_7) t_1_3_3)))
    | `LH_N -> 
      (`LH_N));;
let rec map_lh__d2 f_3_3 ls_1_4 _lh_popOutId_0_7 _lh_popOutId_1_7 =
  (match ls_1_4 with
    | `LH_C(h_1_4_8, t_1_7_3) -> 
      (let rec t_1_7_4 = ((map_lh__d2 f_3_3) t_1_7_3) in
        (let rec h_1_4_9 = (f_3_3 h_1_4_8) in
          ((_lh_popOutId_0_7 h_1_4_9) (((foldr_lh__d0 _lh_popOutId_0_7) _lh_popOutId_1_7) t_1_7_4))))
    | `LH_N -> 
      _lh_popOutId_1_7);;
let rec map_lh__d1 f_3_6 ls_1_5 =
  (match ls_1_5 with
    | `LH_C(h_1_6_6, t_1_9_3) -> 
      (`LH_C((f_3_6 h_1_6_6), ((map_lh__d1 f_3_6) t_1_9_3)))
    | `LH_N -> 
      (`LH_N));;
let rec mapTree_lh__d0 _lh_mapTree_arg1_0 _lh_mapTree_arg2_0 =
  (match _lh_mapTree_arg2_0 with
    | `Branch(_lh_mapTree_Branch_0_0, _lh_mapTree_Branch_1_0) -> 
      (let rec _lh_cropTree_Branch_1_0 = ((map_lh__d1 (mapTree_lh__d0 _lh_mapTree_arg1_0)) _lh_mapTree_Branch_1_0) in
        (let rec _lh_cropTree_Branch_0_0 = (_lh_mapTree_arg1_0 _lh_mapTree_Branch_0_0) in
          (fun _lh_dummy_9_1 -> 
            (match _lh_cropTree_Branch_1_0 with
              | `LH_N -> 
                (let rec _lh_mise_Branch_1_0 = (`LH_N) in
                  (let rec _lh_mise_Branch_0_0 = _lh_cropTree_Branch_0_0 in
                    (fun _lh_mise_arg1_1 _lh_mise_arg2_1 -> 
                      (match _lh_mise_Branch_1_0 with
                        | `LH_N -> 
                          _lh_mise_Branch_0_0
                        | _ -> 
                          (((foldr_lh__d0 _lh_mise_arg1_1) ((_lh_mise_arg2_1 (`OWin)) (`XWin))) ((map_lh__d2 ((mise_lh__d0 _lh_mise_arg2_1) _lh_mise_arg1_1)) _lh_mise_Branch_1_0))))))
              | _ -> 
                (match _lh_cropTree_Branch_0_0 with
                  | `Score(_lh_cropTree_Score_0_0) -> 
                    (let rec _lh_mise_Branch_1_1 = ((map_lh__d0 cropTree_lh__d0) _lh_cropTree_Branch_1_0) in
                      (let rec _lh_mise_Branch_0_1 = (`Score(_lh_cropTree_Score_0_0)) in
                        (fun _lh_mise_arg1_2 _lh_mise_arg2_2 -> 
                          (match _lh_mise_Branch_1_1 with
                            | `LH_N -> 
                              _lh_mise_Branch_0_1
                            | _ -> 
                              (((foldr_lh__d0 _lh_mise_arg1_2) ((_lh_mise_arg2_2 (`OWin)) (`XWin))) ((map_lh__d2 ((mise_lh__d0 _lh_mise_arg2_2) _lh_mise_arg1_2)) _lh_mise_Branch_1_1))))))
                  | _ -> 
                    (let rec _lh_mise_Branch_1_2 = (`LH_N) in
                      (let rec _lh_mise_Branch_0_2 = _lh_cropTree_Branch_0_0 in
                        (fun _lh_mise_arg1_3 _lh_mise_arg2_3 -> 
                          (match _lh_mise_Branch_1_2 with
                            | `LH_N -> 
                              _lh_mise_Branch_0_2
                            | _ -> 
                              (((foldr_lh__d0 _lh_mise_arg1_3) ((_lh_mise_arg2_3 (`OWin)) (`XWin))) ((map_lh__d2 ((mise_lh__d0 _lh_mise_arg2_3) _lh_mise_arg1_3)) _lh_mise_Branch_1_2)))))))))))
    | _ -> 
      (failwith "error"));;
let rec bestMove_lh__d0 _lh_bestMove_arg1_0 _lh_bestMove_arg2_0 _lh_bestMove_arg3_0 _lh_funcomp_x_0 =
  ((fun _lh_funcomp_x_1 -> 
    (((mise_lh__d0 _lh_bestMove_arg2_0) _lh_bestMove_arg3_0) (cropTree_lh__d0 _lh_funcomp_x_1))) ((fun _lh_funcomp_x_2 -> 
    ((mapTree_lh__d0 static_lh__d0) ((searchTree_lh__d0 _lh_bestMove_arg1_0) _lh_funcomp_x_2))) _lh_funcomp_x_0));;
let rec sum_lh__d4 ls_0 =
  (ls_0 99);;
let rec interpret_lh__d2 _lh_interpret_arg1_0 _lh_interpret_arg2_0 =
  (_lh_interpret_arg2_0 _lh_interpret_arg1_0);;
let rec eval_lh__d2 _lh_eval_arg1_1 _lh_popOutId_0_4 _lh_popOutId_1_4 =
  (if (_lh_eval_arg1_1 = 3) then
    (`XWin)
  else
    (if (_lh_eval_arg1_1 = (0 - 3)) then
      (`OWin)
    else
      (let rec _lh_interpret_Score_0_1 = _lh_eval_arg1_1 in
        ((interpret_lh__d2 (_lh_popOutId_1_4 + _lh_interpret_Score_0_1)) _lh_popOutId_0_4))));;
let rec sum_lh__d5 ls_1_6 =
  (ls_1_6 99);;
let rec map2_lh__d5 _lh_map2_arg1_3 _lh_map2_arg2_3 _lh_map2_arg3_3 =
  (match _lh_map2_arg2_3 with
    | `LH_N -> 
      (fun _lh_dummy_5_3 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_3 with
        | `LH_N -> 
          (fun _lh_dummy_5_4 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_3 with
            | `LH_C(_lh_map2_LH_C_0_6, _lh_map2_LH_C_1_6) -> 
              (match _lh_map2_arg3_3 with
                | `LH_C(_lh_map2_LH_C_0_7, _lh_map2_LH_C_1_7) -> 
                  (let rec t_2_0_9 = (((map2_lh__d5 _lh_map2_arg1_3) _lh_map2_LH_C_1_6) _lh_map2_LH_C_1_7) in
                    (let rec h_1_7_9 = ((_lh_map2_arg1_3 _lh_map2_LH_C_0_6) _lh_map2_LH_C_0_7) in
                      (fun _lh_dummy_5_5 -> 
                        (h_1_7_9 + (sum_lh__d5 t_2_0_9)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec map_lh__d1_d6 f_7_5 ls_2_4 =
  (ls_2_4 f_7_5);;
let rec map2_lh__d4 _lh_map2_arg1_4 _lh_map2_arg2_4 _lh_map2_arg3_4 =
  (match _lh_map2_arg2_4 with
    | `LH_N -> 
      (fun f_5_1 _lh_dummy_8_2 -> 
        0)
    | _ -> 
      (match _lh_map2_arg3_4 with
        | `LH_N -> 
          (fun f_5_2 _lh_dummy_8_3 -> 
            0)
        | _ -> 
          (match _lh_map2_arg2_4 with
            | `LH_C(_lh_map2_LH_C_0_8, _lh_map2_LH_C_1_8) -> 
              (match _lh_map2_arg3_4 with
                | `LH_C(_lh_map2_LH_C_0_9, _lh_map2_LH_C_1_9) -> 
                  (let rec t_3_6_1 = (((map2_lh__d4 _lh_map2_arg1_4) _lh_map2_LH_C_1_8) _lh_map2_LH_C_1_9) in
                    (let rec h_3_0_7 = ((_lh_map2_arg1_4 _lh_map2_LH_C_0_8) _lh_map2_LH_C_0_9) in
                      (fun f_5_3 -> 
                        (let rec t_3_6_2 = ((map_lh__d1_d6 f_5_3) t_3_6_1) in
                          (let rec h_3_0_8 = (f_5_3 h_3_0_7) in
                            (fun _lh_dummy_8_4 -> 
                              (h_3_0_8 + (sum_lh__d4 t_3_6_2))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))));;
let rec scorePiece_lh__d2 _lh_scorePiece_arg1_1 _lh_scorePiece_arg2_1 =
  (match _lh_scorePiece_arg1_1 with
    | `X -> 
      _lh_scorePiece_arg2_1
    | `Empty -> 
      0
    | `O -> 
      (0 - _lh_scorePiece_arg2_1)
    | _ -> 
      (failwith "error"));;
let rec score_lh__d2 _lh_score_arg1_2 _lh_score_arg2_2 =
  (eval_lh__d2 (sum_lh__d4 ((map_lh__d1_d6 sum_lh__d5) (((map2_lh__d4 (map2_lh__d5 scorePiece_lh__d2)) _lh_score_arg1_2) _lh_score_arg2_2))));;
let rec map_lh__d1_d5 f_4 ls_2 =
  (ls_2 f_4);;
let rec win1_lh__d2 =
  (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win2_lh__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win7_lh__d2 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win8_lh__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win6_lh__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec win4_lh__d2 =
  (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win5_lh__d2 =
  (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(1, (`LH_C(0, (`LH_N))))))), (`LH_N)))))));;
let rec win3_lh__d2 =
  (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(0, (`LH_C(0, (`LH_C(0, (`LH_N))))))), (`LH_C((`LH_C(1, (`LH_C(1, (`LH_C(1, (`LH_N))))))), (`LH_N)))))));;
let rec wins_lh__d2 f_2_2 _lh_interpret_arg1_1_2 =
  (let rec t_1_0_6 = (let rec t_1_0_7 = (let rec t_1_0_8 = (let rec t_1_0_9 = (let rec t_1_1_0 = (let rec t_1_1_1 = (let rec t_1_1_2 = (let rec t_1_1_3 = (fun f_1_4 _lh_interpret_arg1_4 -> 
    (`Score(_lh_interpret_arg1_4))) in
    (let rec h_8_9 = win8_lh__d2 in
      (fun f_1_5 -> 
        (let rec _lh_interpret_LH_C_1_3 = ((map_lh__d1_d5 f_1_5) t_1_1_3) in
          (let rec _lh_interpret_LH_C_0_0 = (f_1_5 h_8_9) in
            (fun _lh_interpret_arg1_5 -> 
              ((_lh_interpret_LH_C_0_0 _lh_interpret_LH_C_1_3) _lh_interpret_arg1_5))))))) in
    (let rec h_9_0 = win7_lh__d2 in
      (fun f_1_6 -> 
        (let rec _lh_interpret_LH_C_1_4 = ((map_lh__d1_d5 f_1_6) t_1_1_2) in
          (let rec _lh_interpret_LH_C_0_1 = (f_1_6 h_9_0) in
            (fun _lh_interpret_arg1_6 -> 
              ((_lh_interpret_LH_C_0_1 _lh_interpret_LH_C_1_4) _lh_interpret_arg1_6))))))) in
    (let rec h_9_1 = win6_lh__d2 in
      (fun f_1_7 -> 
        (let rec _lh_interpret_LH_C_1_5 = ((map_lh__d1_d5 f_1_7) t_1_1_1) in
          (let rec _lh_interpret_LH_C_0_2 = (f_1_7 h_9_1) in
            (fun _lh_interpret_arg1_7 -> 
              ((_lh_interpret_LH_C_0_2 _lh_interpret_LH_C_1_5) _lh_interpret_arg1_7))))))) in
    (let rec h_9_2 = win5_lh__d2 in
      (fun f_1_8 -> 
        (let rec _lh_interpret_LH_C_1_6 = ((map_lh__d1_d5 f_1_8) t_1_1_0) in
          (let rec _lh_interpret_LH_C_0_3 = (f_1_8 h_9_2) in
            (fun _lh_interpret_arg1_8 -> 
              ((_lh_interpret_LH_C_0_3 _lh_interpret_LH_C_1_6) _lh_interpret_arg1_8))))))) in
    (let rec h_9_3 = win4_lh__d2 in
      (fun f_1_9 -> 
        (let rec _lh_interpret_LH_C_1_7 = ((map_lh__d1_d5 f_1_9) t_1_0_9) in
          (let rec _lh_interpret_LH_C_0_4 = (f_1_9 h_9_3) in
            (fun _lh_interpret_arg1_9 -> 
              ((_lh_interpret_LH_C_0_4 _lh_interpret_LH_C_1_7) _lh_interpret_arg1_9))))))) in
    (let rec h_9_4 = win3_lh__d2 in
      (fun f_2_0 -> 
        (let rec _lh_interpret_LH_C_1_8 = ((map_lh__d1_d5 f_2_0) t_1_0_8) in
          (let rec _lh_interpret_LH_C_0_5 = (f_2_0 h_9_4) in
            (fun _lh_interpret_arg1_1_0 -> 
              ((_lh_interpret_LH_C_0_5 _lh_interpret_LH_C_1_8) _lh_interpret_arg1_1_0))))))) in
    (let rec h_9_5 = win2_lh__d2 in
      (fun f_2_1 -> 
        (let rec _lh_interpret_LH_C_1_9 = ((map_lh__d1_d5 f_2_1) t_1_0_7) in
          (let rec _lh_interpret_LH_C_0_6 = (f_2_1 h_9_5) in
            (fun _lh_interpret_arg1_1_1 -> 
              ((_lh_interpret_LH_C_0_6 _lh_interpret_LH_C_1_9) _lh_interpret_arg1_1_1))))))) in
    (let rec h_9_6 = win1_lh__d2 in
      (let rec _lh_interpret_LH_C_1_1_0 = ((map_lh__d1_d5 f_2_2) t_1_0_6) in
        (let rec _lh_interpret_LH_C_0_7 = (f_2_2 h_9_6) in
          ((_lh_interpret_LH_C_0_7 _lh_interpret_LH_C_1_1_0) _lh_interpret_arg1_1_2)))));;
let rec static_lh__d2 _lh_static_arg1_2 =
  ((interpret_lh__d2 0) ((map_lh__d1_d5 (score_lh__d2 _lh_static_arg1_2)) wins_lh__d2));;
let rec opposite_lh__d1 _lh_opposite_arg1_0 =
  (match _lh_opposite_arg1_0 with
    | `X -> 
      (`O)
    | `O -> 
      (`X)
    | _ -> 
      (failwith "error"));;
let rec map_lh__d1_d2 f_3_2 ls_1_3 =
  (ls_1_3 f_3_2);;
let rec mappend_lh__d3 xs_2 ys_1_4 =
  (xs_2 ys_1_4);;
let rec concat_lh__d3 lss_0 =
  (lss_0 99);;
let rec enumFromTo_lh__d4 a_0 b_0 _lh_popOutId_0_0 _lh_popOutId_1_0 _lh_popOutId_2_0 _lh_popOutId_3_0 =
  (if (a_0 <= b_0) then
    (fun f_1_0 _lh_dummy_1_8 -> 
      (let rec _lh_listcomp_fun_ls_t_0 = ((enumFromTo_lh__d4 (a_0 + 1)) b_0) in
        (let rec _lh_listcomp_fun_ls_h_0 = a_0 in
          (let rec t_8_5 = (_lh_popOutId_1_0 _lh_listcomp_fun_ls_t_0) in
            (let rec h_7_3 = (`LH_P2(_lh_popOutId_0_0, _lh_listcomp_fun_ls_h_0)) in
              (let rec t_8_6 = ((map_lh__d1_d2 f_1_0) t_8_5) in
                (let rec h_7_4 = (f_1_0 h_7_3) in
                  ((mappend_lh__d3 h_7_4) (concat_lh__d3 t_8_6)))))))))
  else
    (_lh_popOutId_3_0 _lh_popOutId_2_0));;
let rec enumFromTo_lh__d5 a_4 b_5 _lh_popOutId_0_9 =
  (if (a_4 <= b_5) then
    (let rec _lh_listcomp_fun_ls_t_1_0 = ((enumFromTo_lh__d5 (a_4 + 1)) b_5) in
      (let rec _lh_listcomp_fun_ls_h_1_0 = a_4 in
        (let rec _lh_listcomp_fun_1_9 = (fun _lh_listcomp_fun_para_4 -> 
          ((((_lh_listcomp_fun_para_4 _lh_listcomp_fun_ls_h_1_0) _lh_listcomp_fun_1_9) _lh_listcomp_fun_ls_t_1_0) _lh_popOutId_0_9)) in
          (_lh_listcomp_fun_1_9 ((enumFromTo_lh__d4 1) 3)))))
  else
    (fun f_4_2 _lh_dummy_7_4 -> 
      (`LH_N)));;
let rec empty'_lh__d7 _lh_empty'_arg1_0 _lh_empty'_arg2_0 =
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
let rec empty'_lh__d8 _lh_empty'_arg1_5 _lh_empty'_arg2_5 =
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
let rec empty'_lh__d6 _lh_empty'_arg1_2 _lh_empty'_arg2_2 =
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
let rec empty_lh__d2 _lh_empty_arg1_1 _lh_empty_arg2_1 =
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
                          ((empty'_lh__d7 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_9)
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
                          ((empty'_lh__d8 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_1_3)
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
                          ((empty'_lh__d6 _lh_empty_LH_P2_1_1) _lh_empty_LH_C_0_1_7)
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
let rec insert_lh__d6 _lh_insert_arg1_3 _lh_insert_arg2_3 _lh_insert_arg3_3 =
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
let rec insert_lh__d7 _lh_insert_arg1_5 _lh_insert_arg2_5 _lh_insert_arg3_5 =
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
let rec insert_lh__d8 _lh_insert_arg1_6 _lh_insert_arg2_6 _lh_insert_arg3_6 =
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
let rec placePiece_lh__d2 _lh_placePiece_arg1_1 _lh_placePiece_arg2_1 _lh_placePiece_arg3_1 =
  (if (not ((empty_lh__d2 _lh_placePiece_arg3_1) _lh_placePiece_arg2_1)) then
    (fun ys_1_1_4 -> 
      ys_1_1_4)
  else
    (let rec _lh_matchIdent_5 = _lh_placePiece_arg2_1 in
      (match _lh_matchIdent_5 with
        | `LH_C(_lh_placePiece_LH_C_0_3, _lh_placePiece_LH_C_1_3) -> 
          (match _lh_placePiece_LH_C_1_3 with
            | `LH_C(_lh_placePiece_LH_C_0_4, _lh_placePiece_LH_C_1_4) -> 
              (match _lh_placePiece_LH_C_1_4 with
                | `LH_C(_lh_placePiece_LH_C_0_5, _lh_placePiece_LH_C_1_5) -> 
                  (match _lh_placePiece_LH_C_1_5 with
                    | `LH_N -> 
                      (let rec _lh_matchIdent_6 = _lh_placePiece_arg3_1 in
                        (match _lh_matchIdent_6 with
                          | `LH_P2(_lh_placePiece_LH_P2_0_1, _lh_placePiece_LH_P2_1_1) -> 
                            (match _lh_placePiece_LH_P2_0_1 with
                              | 1 -> 
                                (let rec t_1_2_6 = (fun ys_1_1_5 -> 
                                  ys_1_1_5) in
                                  (let rec h_1_0_7 = (`LH_C((((insert_lh__d6 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_3) _lh_placePiece_LH_P2_1_1), (`LH_C(_lh_placePiece_LH_C_0_4, (`LH_C(_lh_placePiece_LH_C_0_5, (`LH_N))))))) in
                                    (fun ys_1_1_6 -> 
                                      (`LH_C(h_1_0_7, ((mappend_lh__d3 t_1_2_6) ys_1_1_6))))))
                              | 2 -> 
                                (let rec t_1_2_7 = (fun ys_1_1_7 -> 
                                  ys_1_1_7) in
                                  (let rec h_1_0_8 = (`LH_C(_lh_placePiece_LH_C_0_3, (`LH_C((((insert_lh__d7 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_4) _lh_placePiece_LH_P2_1_1), (`LH_C(_lh_placePiece_LH_C_0_5, (`LH_N))))))) in
                                    (fun ys_1_1_8 -> 
                                      (`LH_C(h_1_0_8, ((mappend_lh__d3 t_1_2_7) ys_1_1_8))))))
                              | 3 -> 
                                (let rec t_1_2_8 = (fun ys_1_1_9 -> 
                                  ys_1_1_9) in
                                  (let rec h_1_0_9 = (`LH_C(_lh_placePiece_LH_C_0_3, (`LH_C(_lh_placePiece_LH_C_0_4, (`LH_C((((insert_lh__d8 _lh_placePiece_arg1_1) _lh_placePiece_LH_C_0_5) _lh_placePiece_LH_P2_1_1), (`LH_N))))))) in
                                    (fun ys_1_2_0 -> 
                                      (`LH_C(h_1_0_9, ((mappend_lh__d3 t_1_2_8) ys_1_2_0))))))
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
let rec newPositions_lh__d2 _lh_newPositions_arg1_2 _lh_newPositions_arg2_2 =
  (concat_lh__d3 ((map_lh__d1_d2 ((placePiece_lh__d2 _lh_newPositions_arg1_2) _lh_newPositions_arg2_2)) (let rec _lh_listcomp_fun_1_7 = (fun _lh_listcomp_fun_para_3 -> 
    (_lh_listcomp_fun_para_3 _lh_listcomp_fun_1_7)) in
    (_lh_listcomp_fun_1_7 ((enumFromTo_lh__d5 1) 3)))));;
let rec alternate_lh__d0 _lh_alternate_arg1_0 _lh_alternate_arg2_1 _lh_alternate_arg3_1 _lh_alternate_arg4_0 =
  (if (fullBoard_lh__d0 _lh_alternate_arg4_0) then
    (fun f_3_7 _lh_dummy_4_3 _lh_dummy_4_4 -> 
      0)
  else
    (if ((static_lh__d1 _lh_alternate_arg4_0) = (`XWin)) then
      (fun f_3_8 _lh_dummy_4_5 _lh_dummy_4_6 -> 
        0)
    else
      (if ((static_lh__d2 _lh_alternate_arg4_0) = (`OWin)) then
        (fun f_3_9 _lh_dummy_4_7 _lh_dummy_4_8 -> 
          0)
      else
        (let rec opposition_1 = (opposite_lh__d1 _lh_alternate_arg1_0) in
          (let rec possibles_0 = ((newPositions_lh__d2 _lh_alternate_arg1_0) _lh_alternate_arg4_0) in
            (let rec scores_0 = ((map_lh__d1_d1 (((bestMove_lh__d0 opposition_1) _lh_alternate_arg3_1) _lh_alternate_arg2_1)) possibles_0) in
              (let rec boardd_eval_0 = (((best_lh__d0 _lh_alternate_arg2_1) possibles_0) scores_0) in
                (let rec _lh_matchIdent_7 = boardd_eval_0 in
                  (((_lh_matchIdent_7 _lh_alternate_arg2_1) _lh_alternate_arg3_1) opposition_1)))))))))
and
best_lh__d0 _lh_best_arg1_0 _lh_best_arg2_0 _lh_best_arg3_0 =
  (match _lh_best_arg2_0 with
    | `LH_C(_lh_best_LH_C_0_0, _lh_best_LH_C_1_0) -> 
      (match _lh_best_arg3_0 with
        | `LH_C(_lh_best_LH_C_0_1, _lh_best_LH_C_1_1) -> 
          (let rec best'_0 = (fun b_1 s_0 ls1_0 ls2_0 -> 
            (let rec _lh_matchIdent_2 = ls1_0 in
              (match _lh_matchIdent_2 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3 = ls2_0 in
                    (match _lh_matchIdent_3 with
                      | `LH_N -> 
                        (let rec _lh_alternate_LH_P2_1_0 = s_0 in
                          (let rec _lh_alternate_LH_P2_0_0 = b_1 in
                            (fun _lh_alternate_arg2_0 _lh_alternate_arg3_0 opposition_0 -> 
                              (let rec t_1_0_1 = ((((alternate_lh__d0 opposition_0) _lh_alternate_arg3_0) _lh_alternate_arg2_0) _lh_alternate_LH_P2_0_0) in
                                (let rec h_8_5 = (let rec _lh_showMove_LH_P2_1_0 = _lh_alternate_LH_P2_1_0 in
                                  (let rec _lh_showMove_LH_P2_0_0 = _lh_alternate_LH_P2_0_0 in
                                    (fun _lh_dummy_2_4 -> 
                                      ((mappend_lh__d7 ((mappend_lh__d8 (showEvaluation_lh__d0 _lh_showMove_LH_P2_1_0)) (let rec t_1_0_2 = (fun ys_9_8 -> 
                                        ys_9_8) in
                                        (let rec h_8_6 = '|' in
                                          (fun ys_9_9 -> 
                                            (let rec t_1_0_3 = ((mappend_lh__d7 t_1_0_2) ys_9_9) in
                                              (let rec h_8_7 = h_8_6 in
                                                (fun ys_1_0_0 -> 
                                                  (let rec t_1_0_4 = ((mappend_lh__d4 t_1_0_3) ys_1_0_0) in
                                                    (fun _lh_dummy_2_5 -> 
                                                      (1 + (length_lh__d0 t_1_0_4)))))))))))) (showBoard_lh__d0 _lh_showMove_LH_P2_0_0))))) in
                                  (fun f_1_2 -> 
                                    (let rec t_1_0_5 = ((map_lh__d1_d7 f_1_2) t_1_0_1) in
                                      (let rec h_8_8 = (f_1_2 h_8_5) in
                                        (fun _lh_dummy_2_6 -> 
                                          ((mappend_lh__d4 h_8_8) (concat_lh__d4 t_1_0_5)))))))))))
                      | _ -> 
                        (failwith "error")))
                | `LH_C(_lh_best_LH_C_0_2, _lh_best_LH_C_1_2) -> 
                  (let rec _lh_matchIdent_4 = ls2_0 in
                    (match _lh_matchIdent_4 with
                      | `LH_C(_lh_best_LH_C_0_3, _lh_best_LH_C_1_3) -> 
                        (if (s_0 = ((_lh_best_arg1_0 s_0) _lh_best_LH_C_0_3)) then
                          ((((best'_0 b_1) s_0) _lh_best_LH_C_1_2) _lh_best_LH_C_1_3)
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
let rec testBoard_lh__d7 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d1_d4 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2_d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d0 ys_3_4_1 =
  (let rec t_3_6_3 = (let rec t_3_6_4 = (let rec t_3_6_5 = (fun ys_3_3_8 -> 
    ys_3_3_8) in
    (let rec h_3_0_9 = (`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_3_3_9 -> 
        (`LH_C(h_3_0_9, ((mappend_lh__d5 t_3_6_5) ys_3_3_9)))))) in
    (let rec h_3_1_0 = (`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))) in
      (fun ys_3_4_0 -> 
        (`LH_C(h_3_1_0, ((mappend_lh__d5 t_3_6_4) ys_3_4_0)))))) in
    (let rec h_3_1_1 = (`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))) in
      (`LH_C(h_3_1_1, ((mappend_lh__d5 t_3_6_3) ys_3_4_1)))));;
let rec testBoard_lh__d1_d6 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d2 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d3 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec testBoard_lh__d9 =
  (`LH_C((`LH_C((`Empty), (`LH_C((`O), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`X), (`LH_C((`Empty), (`LH_N))))))), (`LH_C((`LH_C((`Empty), (`LH_C((`Empty), (`LH_C((`Empty), (`LH_N))))))), (`LH_N)))))));;
let rec prog_lh__d0 _lh_prog_arg1_0 =
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
                                                                                                                ((mappend_lh__d5 testBoard_lh__d0) testBoard_lh__d1)
                                                                                                              | _ -> 
                                                                                                                testBoard_lh__d2)
                                                                                                          | _ -> 
                                                                                                            testBoard_lh__d3)
                                                                                                      | _ -> 
                                                                                                        testBoard_lh__d4)
                                                                                                  | _ -> 
                                                                                                    testBoard_lh__d5)
                                                                                              | _ -> 
                                                                                                testBoard_lh__d6)
                                                                                          | _ -> 
                                                                                            testBoard_lh__d7)
                                                                                      | _ -> 
                                                                                        testBoard_lh__d8)
                                                                                  | _ -> 
                                                                                    testBoard_lh__d9)
                                                                              | _ -> 
                                                                                testBoard_lh__d1_d0)
                                                                          | _ -> 
                                                                            testBoard_lh__d1_d1)
                                                                      | _ -> 
                                                                        testBoard_lh__d1_d2)
                                                                  | _ -> 
                                                                    testBoard_lh__d1_d3)
                                                              | _ -> 
                                                                testBoard_lh__d1_d4)
                                                          | _ -> 
                                                            testBoard_lh__d1_d5)
                                                      | _ -> 
                                                        testBoard_lh__d1_d6)
                                                  | _ -> 
                                                    testBoard_lh__d1_d7)
                                              | _ -> 
                                                testBoard_lh__d1_d8)
                                          | _ -> 
                                            testBoard_lh__d1_d9)
                                      | _ -> 
                                        testBoard_lh__d2_d0)
                                  | _ -> 
                                    testBoard_lh__d2_d1)
                              | _ -> 
                                testBoard_lh__d2_d2)
                          | _ -> 
                            testBoard_lh__d2_d3)
                      | _ -> 
                        testBoard_lh__d2_d4)
                  | _ -> 
                    testBoard_lh__d2_d5)
              | _ -> 
                testBoard_lh__d2_d6)
          | _ -> 
            testBoard_lh__d2_d7)
      | _ -> 
        testBoard_lh__d2_d8)) in
    (let rec game_0 = ((((alternate_lh__d0 (`X)) max'_lh__d0) min'_lh__d0) (board_0 _lh_prog_arg1_0)) in
      ((mappend_lh__d6 (let rec t_1 = (let rec t_2 = (let rec t_3 = (let rec t_4 = (fun ys_1 -> 
        ys_1) in
        (let rec h_1 = '|' in
          (fun ys_2 -> 
            (let rec t_5 = ((mappend_lh__d6 t_4) ys_2) in
              (fun _lh_dummy_3 -> 
                (1 + (length_lh__d0 t_5))))))) in
        (let rec h_2 = 'O' in
          (fun ys_3 -> 
            (let rec t_6 = ((mappend_lh__d6 t_3) ys_3) in
              (fun _lh_dummy_4 -> 
                (1 + (length_lh__d0 t_6))))))) in
        (let rec h_3 = 'X' in
          (fun ys_4 -> 
            (let rec t_7 = ((mappend_lh__d6 t_2) ys_4) in
              (fun _lh_dummy_5 -> 
                (1 + (length_lh__d0 t_7))))))) in
        (let rec h_4 = 'O' in
          (fun ys_5 -> 
            (let rec t_8 = ((mappend_lh__d6 t_1) ys_5) in
              (fun _lh_dummy_6 -> 
                (1 + (length_lh__d0 t_8)))))))) (concat_lh__d4 ((map_lh__d1_d7 showMove_lh__d0) game_0)))));;
let rec testMinimax_nofib_lh__d0 _lh_testMinimax_nofib_arg1_0 =
  (length_lh__d0 (prog_lh__d0 _lh_testMinimax_nofib_arg1_0));;
end;;

