

(* lumberhack_pop_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_pop_out = struct
let rec x_lh__d1_d8 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec negatePs_lh__d1 _lh_negatePs_arg1_1_3 =
  (lazy (let rec _lh_matchIdent_2_4_7 = (Lazy.force _lh_negatePs_arg1_1_3) in
    (_lh_matchIdent_2_4_7 99)));;
let rec integral_lh__d1 _lh_integral_arg1_3 =
  (let rec int1_1_2 = (fun fss_6 n_1_2 -> 
    (lazy (let rec _lh_matchIdent_1_3_7 = (Lazy.force fss_6) in
      ((_lh_matchIdent_1_3_7 int1_1_2) n_1_2)))) in
    (lazy (let rec _lh_negatePs_Pc_1_1_0 = ((int1_1_2 _lh_integral_arg1_3) 1) in
      (let rec _lh_negatePs_Pc_0_1_0 = 0 in
        (fun _lh_dummy_1_8 -> 
          (`Pc((0 - _lh_negatePs_Pc_0_1_0), (negatePs_lh__d1 _lh_negatePs_Pc_1_1_0))))))));;
let rec addPs_lh__d2 _lh_addPs_arg1_3_0 _lh_addPs_arg2_3_0 =
  (lazy (let rec _lh_matchIdent_1_1_9 = (Lazy.force _lh_addPs_arg1_3_0) in
    (match _lh_matchIdent_1_1_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_0)
      | `Pc(_lh_addPs_Pc_0_6_0, _lh_addPs_Pc_1_6_0) -> 
        (let rec _lh_matchIdent_1_2_0 = (Lazy.force _lh_addPs_arg2_3_0) in
          (match _lh_matchIdent_1_2_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_0)
            | `Pc(_lh_addPs_Pc_0_6_1, _lh_addPs_Pc_1_6_1) -> 
              (`Pc((_lh_addPs_Pc_0_6_0 + _lh_addPs_Pc_0_6_1), ((addPs_lh__d2 _lh_addPs_Pc_1_6_0) _lh_addPs_Pc_1_6_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d1 _lh_minusPs_arg1_1 _lh_minusPs_arg2_1 =
  ((addPs_lh__d2 _lh_minusPs_arg1_1) (negatePs_lh__d1 _lh_minusPs_arg2_1));;
let rec integralLz_lh__d1 _lh_integralLz_arg1_0 =
  (let rec int1_0 = (fun fss_0 n_0 -> 
    (lazy (let rec _lh_matchIdent_6_6 = (Lazy.force (Lazy.force fss_0)) in
      (match _lh_matchIdent_6_6 with
        | `Pz -> 
          (fun int1_1 n_1 _lh_dummy_4 -> 
            (`Pz))
        | `Pc(_lh_int1_Pc_0_0, _lh_int1_Pc_1_0) -> 
          (let rec _lh_int1_Pc_1_1 = ((int1_0 (lazy _lh_int1_Pc_1_0)) (n_0 + 1)) in
            (let rec _lh_int1_Pc_0_1 = (_lh_int1_Pc_0_0 / n_0) in
              (fun int1_2 n_2 -> 
                (let rec _lh_negatePs_Pc_1_2 = ((int1_2 _lh_int1_Pc_1_1) (n_2 + 1)) in
                  (let rec _lh_negatePs_Pc_0_2 = (_lh_int1_Pc_0_1 / n_2) in
                    (fun _lh_dummy_5 -> 
                      (`Pc((0 - _lh_negatePs_Pc_0_2), (negatePs_lh__d1 _lh_negatePs_Pc_1_2)))))))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (let rec _lh_int1_Pc_1_2 = ((int1_0 _lh_integralLz_arg1_0) 1) in
      (let rec _lh_int1_Pc_0_2 = 0 in
        (fun int1_3 n_3 -> 
          (let rec _lh_negatePs_Pc_1_3 = ((int1_3 _lh_int1_Pc_1_2) (n_3 + 1)) in
            (let rec _lh_negatePs_Pc_0_3 = (_lh_int1_Pc_0_2 / n_3) in
              (fun _lh_dummy_6 -> 
                (`Pc((0 - _lh_negatePs_Pc_0_3), (negatePs_lh__d1 _lh_negatePs_Pc_1_3)))))))))));;
let rec cosx_lh__d1 _lh_cosx_arg1_0 =
  ((minusPs_lh__d1 (lazy (`Pc(1, (lazy (`Pz)))))) (integral_lh__d1 (integralLz_lh__d1 (lazy (cosx_lh__d1 0)))));;
let rec negatePs_lh__d0 _lh_negatePs_arg1_4 =
  (lazy (let rec _lh_matchIdent_1_4_0 = (Lazy.force _lh_negatePs_arg1_4) in
    (_lh_matchIdent_1_4_0 99)));;
let rec integral_lh__d0 _lh_integral_arg1_5 =
  (let rec int1_1_4 = (fun fss_8 n_1_4 -> 
    (lazy (let rec _lh_matchIdent_1_9_9 = (Lazy.force fss_8) in
      ((_lh_matchIdent_1_9_9 int1_1_4) n_1_4)))) in
    (lazy (let rec _lh_negatePs_Pc_1_1_4 = ((int1_1_4 _lh_integral_arg1_5) 1) in
      (let rec _lh_negatePs_Pc_0_1_4 = 0 in
        (fun _lh_dummy_2_1 -> 
          (`Pc((0 - _lh_negatePs_Pc_0_1_4), (negatePs_lh__d0 _lh_negatePs_Pc_1_1_4))))))));;
let rec addPs_lh__d1 _lh_addPs_arg1_5_3 _lh_addPs_arg2_5_3 =
  (lazy (let rec _lh_matchIdent_2_3_7 = (Lazy.force _lh_addPs_arg1_5_3) in
    (match _lh_matchIdent_2_3_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_3)
      | `Pc(_lh_addPs_Pc_0_1_0_6, _lh_addPs_Pc_1_1_0_6) -> 
        (let rec _lh_matchIdent_2_3_8 = (Lazy.force _lh_addPs_arg2_5_3) in
          (match _lh_matchIdent_2_3_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_3)
            | `Pc(_lh_addPs_Pc_0_1_0_7, _lh_addPs_Pc_1_1_0_7) -> 
              (`Pc((_lh_addPs_Pc_0_1_0_6 + _lh_addPs_Pc_0_1_0_7), ((addPs_lh__d1 _lh_addPs_Pc_1_1_0_6) _lh_addPs_Pc_1_1_0_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d0 _lh_minusPs_arg1_4 _lh_minusPs_arg2_4 =
  ((addPs_lh__d1 _lh_minusPs_arg1_4) (negatePs_lh__d0 _lh_minusPs_arg2_4));;
let rec integralLz_lh__d0 _lh_integralLz_arg1_2 =
  (let rec int1_5 = (fun fss_2 n_5 -> 
    (lazy (let rec _lh_matchIdent_8_8 = (Lazy.force (Lazy.force fss_2)) in
      (match _lh_matchIdent_8_8 with
        | `Pz -> 
          (fun int1_6 n_6 _lh_dummy_1_0 -> 
            (`Pz))
        | `Pc(_lh_int1_Pc_0_4, _lh_int1_Pc_1_4) -> 
          (let rec _lh_int1_Pc_1_5 = ((int1_5 (lazy _lh_int1_Pc_1_4)) (n_5 + 1)) in
            (let rec _lh_int1_Pc_0_5 = (_lh_int1_Pc_0_4 / n_5) in
              (fun int1_7 n_7 -> 
                (let rec _lh_negatePs_Pc_1_6 = ((int1_7 _lh_int1_Pc_1_5) (n_7 + 1)) in
                  (let rec _lh_negatePs_Pc_0_6 = (_lh_int1_Pc_0_5 / n_7) in
                    (fun _lh_dummy_1_1 -> 
                      (`Pc((0 - _lh_negatePs_Pc_0_6), (negatePs_lh__d0 _lh_negatePs_Pc_1_6)))))))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (let rec _lh_int1_Pc_1_6 = ((int1_5 _lh_integralLz_arg1_2) 1) in
      (let rec _lh_int1_Pc_0_6 = 0 in
        (fun int1_8 n_8 -> 
          (let rec _lh_negatePs_Pc_1_7 = ((int1_8 _lh_int1_Pc_1_6) (n_8 + 1)) in
            (let rec _lh_negatePs_Pc_0_7 = (_lh_int1_Pc_0_6 / n_8) in
              (fun _lh_dummy_1_2 -> 
                (`Pc((0 - _lh_negatePs_Pc_0_7), (negatePs_lh__d0 _lh_negatePs_Pc_1_7)))))))))));;
let rec cosx_lh__d0 _lh_cosx_arg1_1 =
  ((minusPs_lh__d0 (lazy (`Pc(1, (lazy (`Pz)))))) (integral_lh__d0 (integralLz_lh__d0 (lazy (cosx_lh__d0 0)))));;
let rec revert_lh__d0 _lh_revert_arg1_0 =
  (lazy (let rec _lh_matchIdent_3_6 = (Lazy.force _lh_revert_arg1_0) in
    (_lh_matchIdent_3_6 99)));;
let rec addPs_lh__d0 _lh_addPs_arg1_1_6 _lh_addPs_arg2_1_6 =
  (lazy (let rec _lh_matchIdent_6_2 = (Lazy.force _lh_addPs_arg1_1_6) in
    (match _lh_matchIdent_6_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_6)
      | `Pc(_lh_addPs_Pc_0_3_2, _lh_addPs_Pc_1_3_2) -> 
        (let rec _lh_matchIdent_6_3 = (Lazy.force _lh_addPs_arg2_1_6) in
          (match _lh_matchIdent_6_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_6)
            | `Pc(_lh_addPs_Pc_0_3_3, _lh_addPs_Pc_1_3_3) -> 
              (`Pc((_lh_addPs_Pc_0_3_2 + _lh_addPs_Pc_0_3_3), ((addPs_lh__d0 _lh_addPs_Pc_1_3_2) _lh_addPs_Pc_1_3_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d4 _lh_addPs_arg1_1_3 _lh_addPs_arg2_1_3 =
  (lazy (let rec _lh_matchIdent_5_0 = (Lazy.force _lh_addPs_arg1_1_3) in
    (match _lh_matchIdent_5_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_3)
      | `Pc(_lh_addPs_Pc_0_2_6, _lh_addPs_Pc_1_2_6) -> 
        (let rec _lh_matchIdent_5_1 = (Lazy.force _lh_addPs_arg2_1_3) in
          (match _lh_matchIdent_5_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_3)
            | `Pc(_lh_addPs_Pc_0_2_7, _lh_addPs_Pc_1_2_7) -> 
              (`Pc((_lh_addPs_Pc_0_2_6 + _lh_addPs_Pc_0_2_7), ((addPs_lh__d1_d4 _lh_addPs_Pc_1_2_6) _lh_addPs_Pc_1_2_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d5 _lh_addPs_arg1_1_7 _lh_addPs_arg2_1_7 =
  (lazy (let rec _lh_matchIdent_6_4 = (Lazy.force _lh_addPs_arg1_1_7) in
    (match _lh_matchIdent_6_4 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_7)
      | `Pc(_lh_addPs_Pc_0_3_4, _lh_addPs_Pc_1_3_4) -> 
        (let rec _lh_matchIdent_6_5 = (Lazy.force _lh_addPs_arg2_1_7) in
          (match _lh_matchIdent_6_5 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_7)
            | `Pc(_lh_addPs_Pc_0_3_5, _lh_addPs_Pc_1_3_5) -> 
              (`Pc((_lh_addPs_Pc_0_3_4 + _lh_addPs_Pc_0_3_5), ((addPs_lh__d1_d5 _lh_addPs_Pc_1_3_4) _lh_addPs_Pc_1_3_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d1_d1 _lh_dotMult_arg1_1 _lh_dotMult_arg2_1 =
  (lazy (let rec _lh_matchIdent_1_1 = (Lazy.force _lh_dotMult_arg2_1) in
    (match _lh_matchIdent_1_1 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1, _lh_dotMult_Pc_1_1) -> 
        (`Pc((_lh_dotMult_arg1_1 * _lh_dotMult_Pc_0_1), ((dotMult_lh__d1_d1 _lh_dotMult_arg1_1) _lh_dotMult_Pc_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d8 _lh_addPs_arg1_1_4 _lh_addPs_arg2_1_4 =
  (lazy (let rec _lh_matchIdent_5_2 = (Lazy.force _lh_addPs_arg1_1_4) in
    (match _lh_matchIdent_5_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_4)
      | `Pc(_lh_addPs_Pc_0_2_8, _lh_addPs_Pc_1_2_8) -> 
        (let rec _lh_matchIdent_5_3 = (Lazy.force _lh_addPs_arg2_1_4) in
          (match _lh_matchIdent_5_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_4)
            | `Pc(_lh_addPs_Pc_0_2_9, _lh_addPs_Pc_1_2_9) -> 
              (`Pc((_lh_addPs_Pc_0_2_8 + _lh_addPs_Pc_0_2_9), ((addPs_lh__d1_d8 _lh_addPs_Pc_1_2_8) _lh_addPs_Pc_1_2_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d1_d0 _lh_dotMult_arg1_1_6 _lh_dotMult_arg2_1_6 =
  (lazy (let rec _lh_matchIdent_9_7 = (Lazy.force _lh_dotMult_arg2_1_6) in
    (match _lh_matchIdent_9_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_6, _lh_dotMult_Pc_1_1_6) -> 
        (`Pc((_lh_dotMult_arg1_1_6 * _lh_dotMult_Pc_0_1_6), ((dotMult_lh__d1_d0 _lh_dotMult_arg1_1_6) _lh_dotMult_Pc_1_1_6)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d9 _lh_addPs_arg1_3_7 _lh_addPs_arg2_3_7 =
  (lazy (let rec _lh_matchIdent_1_6_7 = (Lazy.force _lh_addPs_arg1_3_7) in
    (match _lh_matchIdent_1_6_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_7)
      | `Pc(_lh_addPs_Pc_0_7_4, _lh_addPs_Pc_1_7_4) -> 
        (let rec _lh_matchIdent_1_6_8 = (Lazy.force _lh_addPs_arg2_3_7) in
          (match _lh_matchIdent_1_6_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_7)
            | `Pc(_lh_addPs_Pc_0_7_5, _lh_addPs_Pc_1_7_5) -> 
              (`Pc((_lh_addPs_Pc_0_7_4 + _lh_addPs_Pc_0_7_5), ((addPs_lh__d1_d9 _lh_addPs_Pc_1_7_4) _lh_addPs_Pc_1_7_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d3 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPs_lh__d3 _lh_multPs_arg1_2 _lh_multPs_arg2_2 =
  (lazy (let rec _lh_matchIdent_7_7 = (Lazy.force _lh_multPs_arg1_2) in
    (match _lh_matchIdent_7_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_4, _lh_multPs_Pc_1_4) -> 
        (let rec _lh_matchIdent_7_8 = (Lazy.force _lh_multPs_arg2_2) in
          (match _lh_matchIdent_7_8 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_5, _lh_multPs_Pc_1_5) -> 
              (`Pc((_lh_multPs_Pc_0_4 * _lh_multPs_Pc_0_5), ((addPs_lh__d1_d8 ((addPs_lh__d1_d9 ((dotMult_lh__d1_d0 _lh_multPs_Pc_0_4) _lh_multPs_Pc_1_5)) ((dotMult_lh__d1_d1 _lh_multPs_Pc_0_5) _lh_multPs_Pc_1_4))) ((multPs_lh__d3 ((multPs_lh__d3 x_lh__d3) _lh_multPs_Pc_1_4)) _lh_multPs_Pc_1_5))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d1_d2 _lh_dotMult_arg1_7 _lh_dotMult_arg2_7 =
  (lazy (let rec _lh_matchIdent_5_5 = (Lazy.force _lh_dotMult_arg2_7) in
    (match _lh_matchIdent_5_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_7, _lh_dotMult_Pc_1_7) -> 
        (`Pc((_lh_dotMult_arg1_7 * _lh_dotMult_Pc_0_7), ((dotMult_lh__d1_d2 _lh_dotMult_arg1_7) _lh_dotMult_Pc_1_7)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d1_d3 _lh_dotMult_arg1_1_1 _lh_dotMult_arg2_1_1 =
  (lazy (let rec _lh_matchIdent_6_1 = (Lazy.force _lh_dotMult_arg2_1_1) in
    (match _lh_matchIdent_6_1 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_1, _lh_dotMult_Pc_1_1_1) -> 
        (`Pc((_lh_dotMult_arg1_1_1 * _lh_dotMult_Pc_0_1_1), ((dotMult_lh__d1_d3 _lh_dotMult_arg1_1_1) _lh_dotMult_Pc_1_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d1 _lh_addPs_arg1_5_4 _lh_addPs_arg2_5_4 =
  (lazy (let rec _lh_matchIdent_2_3_9 = (Lazy.force _lh_addPs_arg1_5_4) in
    (match _lh_matchIdent_2_3_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_4)
      | `Pc(_lh_addPs_Pc_0_1_0_8, _lh_addPs_Pc_1_1_0_8) -> 
        (let rec _lh_matchIdent_2_4_0 = (Lazy.force _lh_addPs_arg2_5_4) in
          (match _lh_matchIdent_2_4_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_4)
            | `Pc(_lh_addPs_Pc_0_1_0_9, _lh_addPs_Pc_1_1_0_9) -> 
              (`Pc((_lh_addPs_Pc_0_1_0_8 + _lh_addPs_Pc_0_1_0_9), ((addPs_lh__d2_d1 _lh_addPs_Pc_1_1_0_8) _lh_addPs_Pc_1_1_0_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d4 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec addPs_lh__d2_d0 _lh_addPs_arg1_2_6 _lh_addPs_arg2_2_6 =
  (lazy (let rec _lh_matchIdent_1_0_7 = (Lazy.force _lh_addPs_arg1_2_6) in
    (match _lh_matchIdent_1_0_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_6)
      | `Pc(_lh_addPs_Pc_0_5_2, _lh_addPs_Pc_1_5_2) -> 
        (let rec _lh_matchIdent_1_0_8 = (Lazy.force _lh_addPs_arg2_2_6) in
          (match _lh_matchIdent_1_0_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_6)
            | `Pc(_lh_addPs_Pc_0_5_3, _lh_addPs_Pc_1_5_3) -> 
              (`Pc((_lh_addPs_Pc_0_5_2 + _lh_addPs_Pc_0_5_3), ((addPs_lh__d2_d0 _lh_addPs_Pc_1_5_2) _lh_addPs_Pc_1_5_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d4 _lh_multPs_arg1_8 _lh_multPs_arg2_8 =
  (lazy (let rec _lh_matchIdent_1_6_5 = (Lazy.force _lh_multPs_arg1_8) in
    (match _lh_matchIdent_1_6_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_1_6, _lh_multPs_Pc_1_1_6) -> 
        (let rec _lh_matchIdent_1_6_6 = (Lazy.force _lh_multPs_arg2_8) in
          (match _lh_matchIdent_1_6_6 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1_7, _lh_multPs_Pc_1_1_7) -> 
              (`Pc((_lh_multPs_Pc_0_1_6 * _lh_multPs_Pc_0_1_7), ((addPs_lh__d2_d0 ((addPs_lh__d2_d1 ((dotMult_lh__d1_d2 _lh_multPs_Pc_0_1_6) _lh_multPs_Pc_1_1_7)) ((dotMult_lh__d1_d3 _lh_multPs_Pc_0_1_7) _lh_multPs_Pc_1_1_6))) ((multPs_lh__d4 ((multPs_lh__d4 x_lh__d4) _lh_multPs_Pc_1_1_6)) _lh_multPs_Pc_1_1_7))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d2 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d9 _lh_dotMult_arg1_2_2 _lh_dotMult_arg2_2_2 =
  (lazy (let rec _lh_matchIdent_1_2_3 = (Lazy.force _lh_dotMult_arg2_2_2) in
    (match _lh_matchIdent_1_2_3 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_2, _lh_dotMult_Pc_1_2_2) -> 
        (`Pc((_lh_dotMult_arg1_2_2 * _lh_dotMult_Pc_0_2_2), ((dotMult_lh__d9 _lh_dotMult_arg1_2_2) _lh_dotMult_Pc_1_2_2)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d7 _lh_addPs_arg1_3_8 _lh_addPs_arg2_3_8 =
  (lazy (let rec _lh_matchIdent_1_7_1 = (Lazy.force _lh_addPs_arg1_3_8) in
    (match _lh_matchIdent_1_7_1 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_8)
      | `Pc(_lh_addPs_Pc_0_7_6, _lh_addPs_Pc_1_7_6) -> 
        (let rec _lh_matchIdent_1_7_2 = (Lazy.force _lh_addPs_arg2_3_8) in
          (match _lh_matchIdent_1_7_2 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_8)
            | `Pc(_lh_addPs_Pc_0_7_7, _lh_addPs_Pc_1_7_7) -> 
              (`Pc((_lh_addPs_Pc_0_7_6 + _lh_addPs_Pc_0_7_7), ((addPs_lh__d1_d7 _lh_addPs_Pc_1_7_6) _lh_addPs_Pc_1_7_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d8 _lh_dotMult_arg1_4_2 _lh_dotMult_arg2_4_2 =
  (lazy (let rec _lh_matchIdent_2_1_2 = (Lazy.force _lh_dotMult_arg2_4_2) in
    (match _lh_matchIdent_2_1_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_4_2, _lh_dotMult_Pc_1_4_2) -> 
        (`Pc((_lh_dotMult_arg1_4_2 * _lh_dotMult_Pc_0_4_2), ((dotMult_lh__d8 _lh_dotMult_arg1_4_2) _lh_dotMult_Pc_1_4_2)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d6 _lh_addPs_arg1_4_8 _lh_addPs_arg2_4_8 =
  (lazy (let rec _lh_matchIdent_2_1_3 = (Lazy.force _lh_addPs_arg1_4_8) in
    (match _lh_matchIdent_2_1_3 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_8)
      | `Pc(_lh_addPs_Pc_0_9_6, _lh_addPs_Pc_1_9_6) -> 
        (let rec _lh_matchIdent_2_1_4 = (Lazy.force _lh_addPs_arg2_4_8) in
          (match _lh_matchIdent_2_1_4 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_8)
            | `Pc(_lh_addPs_Pc_0_9_7, _lh_addPs_Pc_1_9_7) -> 
              (`Pc((_lh_addPs_Pc_0_9_6 + _lh_addPs_Pc_0_9_7), ((addPs_lh__d1_d6 _lh_addPs_Pc_1_9_6) _lh_addPs_Pc_1_9_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d2 _lh_multPs_arg1_1_2 _lh_multPs_arg2_1_2 =
  (lazy (let rec _lh_matchIdent_2_5_1 = (Lazy.force _lh_multPs_arg1_1_2) in
    (match _lh_matchIdent_2_5_1 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_2_4, _lh_multPs_Pc_1_2_4) -> 
        (let rec _lh_matchIdent_2_5_2 = (Lazy.force _lh_multPs_arg2_1_2) in
          (match _lh_matchIdent_2_5_2 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_2_5, _lh_multPs_Pc_1_2_5) -> 
              (`Pc((_lh_multPs_Pc_0_2_4 * _lh_multPs_Pc_0_2_5), ((addPs_lh__d1_d6 ((addPs_lh__d1_d7 ((dotMult_lh__d8 _lh_multPs_Pc_0_2_4) _lh_multPs_Pc_1_2_5)) ((dotMult_lh__d9 _lh_multPs_Pc_0_2_5) _lh_multPs_Pc_1_2_4))) ((multPs_lh__d2 ((multPs_lh__d2 x_lh__d2) _lh_multPs_Pc_1_2_4)) _lh_multPs_Pc_1_2_5))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec compose_lh__d0 _lh_compose_arg1_1 _lh_compose_arg2_1 =
  (lazy (let rec _lh_matchIdent_1_7_7 = (Lazy.force _lh_compose_arg1_1) in
    (match _lh_matchIdent_1_7_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_compose_Pc_0_2, _lh_compose_Pc_1_2) -> 
        (let rec _lh_matchIdent_1_7_8 = (Lazy.force _lh_compose_arg2_1) in
          (match _lh_matchIdent_1_7_8 with
            | `Pz -> 
              (`Pc(_lh_compose_Pc_0_2, (lazy (`Pz))))
            | `Pc(_lh_compose_Pc_0_3, _lh_compose_Pc_1_3) -> 
              (match _lh_compose_Pc_0_3 with
                | 0 -> 
                  (`Pc(_lh_compose_Pc_0_2, ((multPs_lh__d2 _lh_compose_Pc_1_3) ((compose_lh__d0 _lh_compose_Pc_1_2) (lazy (`Pc(0, _lh_compose_Pc_1_3)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh__d1_d4 (lazy (`Pc(_lh_compose_Pc_0_2, (lazy (`Pz)))))) ((multPs_lh__d3 _lh_compose_arg2_1) ((compose_lh__d0 _lh_compose_Pc_1_2) _lh_compose_arg2_1)))))
            | _ -> 
              (Lazy.force ((addPs_lh__d1_d5 (lazy (`Pc(_lh_compose_Pc_0_2, (lazy (`Pz)))))) ((multPs_lh__d4 _lh_compose_arg2_1) ((compose_lh__d0 _lh_compose_Pc_1_2) _lh_compose_arg2_1))))))
      | _ -> 
        (failwith "error"))));;
let rec fromIntegerPs_lh__d5 _lh_fromIntegerPs_arg1_5 =
  (match _lh_fromIntegerPs_arg1_5 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_5, (lazy (`Pz))))));;
let rec negatePs_lh__d9 _lh_negatePs_arg1_2 =
  (lazy (let rec _lh_matchIdent_1_1_1 = (Lazy.force _lh_negatePs_arg1_2) in
    (_lh_matchIdent_1_1_1 99)));;
let rec dotMult_lh__d1_d4 _lh_dotMult_arg1_3 _lh_dotMult_arg2_3 =
  (lazy (let rec _lh_matchIdent_2_5 = (Lazy.force _lh_dotMult_arg2_3) in
    (match _lh_matchIdent_2_5 with
      | `Pz -> 
        (fun _lh_dummy_0 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_3, _lh_dotMult_Pc_1_3) -> 
        (let rec _lh_negatePs_Pc_1_0 = ((dotMult_lh__d1_d4 _lh_dotMult_arg1_3) _lh_dotMult_Pc_1_3) in
          (let rec _lh_negatePs_Pc_0_0 = (_lh_dotMult_arg1_3 * _lh_dotMult_Pc_0_3) in
            (fun _lh_dummy_1 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_0), (negatePs_lh__d9 _lh_negatePs_Pc_1_0))))))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d1_d0 _lh_negatePs_arg1_1_1 =
  (lazy (let rec _lh_matchIdent_1_9_8 = (Lazy.force _lh_negatePs_arg1_1_1) in
    (_lh_matchIdent_1_9_8 99)));;
let rec dotMult_lh__d1_d5 _lh_dotMult_arg1_2_3 _lh_dotMult_arg2_2_3 =
  (lazy (let rec _lh_matchIdent_1_2_4 = (Lazy.force _lh_dotMult_arg2_2_3) in
    (match _lh_matchIdent_1_2_4 with
      | `Pz -> 
        (fun _lh_dummy_1_6 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_2_3, _lh_dotMult_Pc_1_2_3) -> 
        (let rec _lh_negatePs_Pc_1_9 = ((dotMult_lh__d1_d5 _lh_dotMult_arg1_2_3) _lh_dotMult_Pc_1_2_3) in
          (let rec _lh_negatePs_Pc_0_9 = (_lh_dotMult_arg1_2_3 * _lh_dotMult_Pc_0_2_3) in
            (fun _lh_dummy_1_7 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_9), (negatePs_lh__d1_d0 _lh_negatePs_Pc_1_9))))))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d3 _lh_addPs_arg1_3_4 _lh_addPs_arg2_3_4 =
  (lazy (let rec _lh_matchIdent_1_4_4 = (Lazy.force _lh_addPs_arg1_3_4) in
    (match _lh_matchIdent_1_4_4 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_4)
      | `Pc(_lh_addPs_Pc_0_6_8, _lh_addPs_Pc_1_6_8) -> 
        (let rec _lh_matchIdent_1_4_5 = (Lazy.force _lh_addPs_arg2_3_4) in
          (match _lh_matchIdent_1_4_5 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_4)
            | `Pc(_lh_addPs_Pc_0_6_9, _lh_addPs_Pc_1_6_9) -> 
              (`Pc((_lh_addPs_Pc_0_6_8 + _lh_addPs_Pc_0_6_9), ((addPs_lh__d2_d3 _lh_addPs_Pc_1_6_8) _lh_addPs_Pc_1_6_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d2 _lh_addPs_arg1_5_0 _lh_addPs_arg2_5_0 =
  (lazy (let rec _lh_matchIdent_2_2_0 = (Lazy.force _lh_addPs_arg1_5_0) in
    (match _lh_matchIdent_2_2_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_0)
      | `Pc(_lh_addPs_Pc_0_1_0_0, _lh_addPs_Pc_1_1_0_0) -> 
        (let rec _lh_matchIdent_2_2_1 = (Lazy.force _lh_addPs_arg2_5_0) in
          (match _lh_matchIdent_2_2_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_0)
            | `Pc(_lh_addPs_Pc_0_1_0_1, _lh_addPs_Pc_1_1_0_1) -> 
              (`Pc((_lh_addPs_Pc_0_1_0_0 + _lh_addPs_Pc_0_1_0_1), ((addPs_lh__d2_d2 _lh_addPs_Pc_1_1_0_0) _lh_addPs_Pc_1_1_0_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh__d2 _lh_divPs_arg1_0 _lh_divPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_4_1 = (Lazy.force _lh_divPs_arg1_0) in
    (match _lh_matchIdent_4_1 with
      | `Pz -> 
        (let rec _lh_matchIdent_4_2 = (Lazy.force _lh_divPs_arg2_0) in
          (match _lh_matchIdent_4_2 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_0, _lh_divPs_Pc_1_0) -> 
              (match _lh_divPs_Pc_0_0 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d2 (lazy (`Pz))) _lh_divPs_Pc_1_0))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_1, _lh_divPs_Pc_1_1) -> 
        (match _lh_divPs_Pc_0_1 with
          | 0 -> 
            (let rec _lh_matchIdent_4_3 = (Lazy.force _lh_divPs_arg2_0) in
              (match _lh_matchIdent_4_3 with
                | `Pc(_lh_divPs_Pc_0_2, _lh_divPs_Pc_1_2) -> 
                  (match _lh_divPs_Pc_0_2 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d2 _lh_divPs_Pc_1_1) _lh_divPs_Pc_1_2))
                    | _ -> 
                      (let rec q_0 = 0 in
                        (`Pc(q_0, ((divPs_lh__d2 ((addPs_lh__d2_d2 _lh_divPs_Pc_1_1) (negatePs_lh__d9 ((dotMult_lh__d1_d4 q_0) _lh_divPs_Pc_1_2)))) (lazy (`Pc(_lh_divPs_Pc_0_2, _lh_divPs_Pc_1_2))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_4_4 = (Lazy.force _lh_divPs_arg2_0) in
              (match _lh_matchIdent_4_4 with
                | `Pc(_lh_divPs_Pc_0_3, _lh_divPs_Pc_1_3) -> 
                  (let rec q_1 = (_lh_divPs_Pc_0_1 / _lh_divPs_Pc_0_3) in
                    (`Pc(q_1, ((divPs_lh__d2 ((addPs_lh__d2_d3 _lh_divPs_Pc_1_1) (negatePs_lh__d1_d0 ((dotMult_lh__d1_d5 q_1) _lh_divPs_Pc_1_3)))) (lazy (`Pc(_lh_divPs_Pc_0_3, _lh_divPs_Pc_1_3)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec integral_lh__d2 _lh_integral_arg1_0 =
  (let rec int1_9 = (fun fss_3 n_9 -> 
    (lazy (let rec _lh_matchIdent_9_4 = (Lazy.force fss_3) in
      (match _lh_matchIdent_9_4 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_7, _lh_int1_Pc_1_7) -> 
          (`Pc((_lh_int1_Pc_0_7 / n_9), ((int1_9 _lh_int1_Pc_1_7) (n_9 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (let rec _lh_revert_Pc_1_0 = ((int1_9 _lh_integral_arg1_0) 1) in
      (let rec _lh_revert_Pc_0_0 = 0 in
        (fun _lh_dummy_1_3 -> 
          (match _lh_revert_Pc_0_0 with
            | 0 -> 
              (Lazy.force (let rec rs_0 = (lazy (`Pc(0, ((divPs_lh__d2 (fromIntegerPs_lh__d5 1)) ((compose_lh__d0 _lh_revert_Pc_1_0) rs_0))))) in
                rs_0))
            | _ -> 
              (let rec _lh_matchIdent_9_5 = (Lazy.force _lh_revert_Pc_1_0) in
                (match _lh_matchIdent_9_5 with
                  | `Pc(_lh_revert_Pc_0_1, _lh_revert_Pc_1_1) -> 
                    (let rec _lh_matchIdent_9_6 = (Lazy.force _lh_revert_Pc_1_1) in
                      (match _lh_matchIdent_9_6 with
                        | `Pz -> 
                          (`Pc(((0 - 1) / _lh_revert_Pc_0_1), (lazy (`Pc((1 / _lh_revert_Pc_0_1), (lazy (`Pz)))))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error")))))))));;
let rec addPs_lh__d8 _lh_addPs_arg1_2_0 _lh_addPs_arg2_2_0 =
  (lazy (let rec _lh_matchIdent_7_2 = (Lazy.force _lh_addPs_arg1_2_0) in
    (match _lh_matchIdent_7_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_0)
      | `Pc(_lh_addPs_Pc_0_4_0, _lh_addPs_Pc_1_4_0) -> 
        (let rec _lh_matchIdent_7_3 = (Lazy.force _lh_addPs_arg2_2_0) in
          (match _lh_matchIdent_7_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_0)
            | `Pc(_lh_addPs_Pc_0_4_1, _lh_addPs_Pc_1_4_1) -> 
              (`Pc((_lh_addPs_Pc_0_4_0 + _lh_addPs_Pc_0_4_1), ((addPs_lh__d8 _lh_addPs_Pc_1_4_0) _lh_addPs_Pc_1_4_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d7 _lh_negatePs_arg1_1_4 =
  (lazy (let rec _lh_matchIdent_2_5_0 = (Lazy.force _lh_negatePs_arg1_1_4) in
    (match _lh_matchIdent_2_5_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_1_8, _lh_negatePs_Pc_1_1_8) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_1_8), (negatePs_lh__d7 _lh_negatePs_Pc_1_1_8)))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d3 _lh_minusPs_arg1_2 _lh_minusPs_arg2_2 =
  ((addPs_lh__d8 _lh_minusPs_arg1_2) (negatePs_lh__d7 _lh_minusPs_arg2_2));;
let rec extract_lh__d3 _lh_extract_arg1_0 _lh_extract_arg2_0 =
  (if (_lh_extract_arg1_0 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_1_2_2 = (Lazy.force _lh_extract_arg2_0) in
      (match _lh_matchIdent_1_2_2 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_0, _lh_extract_Pc_1_0) -> 
          (`LH_C(_lh_extract_Pc_0_0, ((extract_lh__d3 (_lh_extract_arg1_0 - 1)) _lh_extract_Pc_1_0)))
        | _ -> 
          (failwith "error"))));;
let rec fromIntegerPs_lh__d0 _lh_fromIntegerPs_arg1_3 =
  (match _lh_fromIntegerPs_arg1_3 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_3, (lazy (`Pz))))));;
let rec extract_lh__d2 _lh_extract_arg1_3 _lh_extract_arg2_3 =
  (if (_lh_extract_arg1_3 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_2_1_0 = (Lazy.force _lh_extract_arg2_3) in
      (match _lh_matchIdent_2_1_0 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_3, _lh_extract_Pc_1_3) -> 
          (`LH_C(_lh_extract_Pc_0_3, ((extract_lh__d2 (_lh_extract_arg1_3 - 1)) _lh_extract_Pc_1_3)))
        | _ -> 
          (failwith "error"))));;
let rec negatePs_lh__d4 _lh_negatePs_arg1_1_2 =
  (lazy (let rec _lh_matchIdent_2_2_2 = (Lazy.force _lh_negatePs_arg1_1_2) in
    (_lh_matchIdent_2_2_2 99)));;
let rec dotMult_lh__d2 _lh_dotMult_arg1_1_7 _lh_dotMult_arg2_1_7 =
  (lazy (let rec _lh_matchIdent_9_8 = (Lazy.force _lh_dotMult_arg2_1_7) in
    (match _lh_matchIdent_9_8 with
      | `Pz -> 
        (fun _lh_dummy_1_4 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_1_7, _lh_dotMult_Pc_1_1_7) -> 
        (let rec _lh_negatePs_Pc_1_8 = ((dotMult_lh__d2 _lh_dotMult_arg1_1_7) _lh_dotMult_Pc_1_1_7) in
          (let rec _lh_negatePs_Pc_0_8 = (_lh_dotMult_arg1_1_7 * _lh_dotMult_Pc_0_1_7) in
            (fun _lh_dummy_1_5 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_8), (negatePs_lh__d4 _lh_negatePs_Pc_1_8))))))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d5 _lh_negatePs_arg1_1_0 =
  (lazy (let rec _lh_matchIdent_1_8_1 = (Lazy.force _lh_negatePs_arg1_1_0) in
    (_lh_matchIdent_1_8_1 99)));;
let rec addPs_lh__d5 _lh_addPs_arg1_4_6 _lh_addPs_arg2_4_6 =
  (lazy (let rec _lh_matchIdent_2_0_6 = (Lazy.force _lh_addPs_arg1_4_6) in
    (match _lh_matchIdent_2_0_6 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_6)
      | `Pc(_lh_addPs_Pc_0_9_2, _lh_addPs_Pc_1_9_2) -> 
        (let rec _lh_matchIdent_2_0_7 = (Lazy.force _lh_addPs_arg2_4_6) in
          (match _lh_matchIdent_2_0_7 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_6)
            | `Pc(_lh_addPs_Pc_0_9_3, _lh_addPs_Pc_1_9_3) -> 
              (`Pc((_lh_addPs_Pc_0_9_2 + _lh_addPs_Pc_0_9_3), ((addPs_lh__d5 _lh_addPs_Pc_1_9_2) _lh_addPs_Pc_1_9_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d6 _lh_addPs_arg1_4_7 _lh_addPs_arg2_4_7 =
  (lazy (let rec _lh_matchIdent_2_0_8 = (Lazy.force _lh_addPs_arg1_4_7) in
    (match _lh_matchIdent_2_0_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_7)
      | `Pc(_lh_addPs_Pc_0_9_4, _lh_addPs_Pc_1_9_4) -> 
        (let rec _lh_matchIdent_2_0_9 = (Lazy.force _lh_addPs_arg2_4_7) in
          (match _lh_matchIdent_2_0_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_7)
            | `Pc(_lh_addPs_Pc_0_9_5, _lh_addPs_Pc_1_9_5) -> 
              (`Pc((_lh_addPs_Pc_0_9_4 + _lh_addPs_Pc_0_9_5), ((addPs_lh__d6 _lh_addPs_Pc_1_9_4) _lh_addPs_Pc_1_9_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3 _lh_dotMult_arg1_4_3 _lh_dotMult_arg2_4_3 =
  (lazy (let rec _lh_matchIdent_2_1_5 = (Lazy.force _lh_dotMult_arg2_4_3) in
    (match _lh_matchIdent_2_1_5 with
      | `Pz -> 
        (fun _lh_dummy_2_4 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_4_3, _lh_dotMult_Pc_1_4_3) -> 
        (let rec _lh_negatePs_Pc_1_1_6 = ((dotMult_lh__d3 _lh_dotMult_arg1_4_3) _lh_dotMult_Pc_1_4_3) in
          (let rec _lh_negatePs_Pc_0_1_6 = (_lh_dotMult_arg1_4_3 * _lh_dotMult_Pc_0_4_3) in
            (fun _lh_dummy_2_5 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_1_6), (negatePs_lh__d5 _lh_negatePs_Pc_1_1_6))))))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh__d1 _lh_divPs_arg1_3 _lh_divPs_arg2_3 =
  (lazy (let rec _lh_matchIdent_2_2_3 = (Lazy.force _lh_divPs_arg1_3) in
    (match _lh_matchIdent_2_2_3 with
      | `Pz -> 
        (let rec _lh_matchIdent_2_2_4 = (Lazy.force _lh_divPs_arg2_3) in
          (match _lh_matchIdent_2_2_4 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_1_2, _lh_divPs_Pc_1_1_2) -> 
              (match _lh_divPs_Pc_0_1_2 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d1 (lazy (`Pz))) _lh_divPs_Pc_1_1_2))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_1_3, _lh_divPs_Pc_1_1_3) -> 
        (match _lh_divPs_Pc_0_1_3 with
          | 0 -> 
            (let rec _lh_matchIdent_2_2_5 = (Lazy.force _lh_divPs_arg2_3) in
              (match _lh_matchIdent_2_2_5 with
                | `Pc(_lh_divPs_Pc_0_1_4, _lh_divPs_Pc_1_1_4) -> 
                  (match _lh_divPs_Pc_0_1_4 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d1 _lh_divPs_Pc_1_1_3) _lh_divPs_Pc_1_1_4))
                    | _ -> 
                      (let rec q_6 = 0 in
                        (`Pc(q_6, ((divPs_lh__d1 ((addPs_lh__d5 _lh_divPs_Pc_1_1_3) (negatePs_lh__d4 ((dotMult_lh__d2 q_6) _lh_divPs_Pc_1_1_4)))) (lazy (`Pc(_lh_divPs_Pc_0_1_4, _lh_divPs_Pc_1_1_4))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_2_2_6 = (Lazy.force _lh_divPs_arg2_3) in
              (match _lh_matchIdent_2_2_6 with
                | `Pc(_lh_divPs_Pc_0_1_5, _lh_divPs_Pc_1_1_5) -> 
                  (let rec q_7 = (_lh_divPs_Pc_0_1_3 / _lh_divPs_Pc_0_1_5) in
                    (`Pc(q_7, ((divPs_lh__d1 ((addPs_lh__d6 _lh_divPs_Pc_1_1_3) (negatePs_lh__d5 ((dotMult_lh__d3 q_7) _lh_divPs_Pc_1_1_5)))) (lazy (`Pc(_lh_divPs_Pc_0_1_5, _lh_divPs_Pc_1_1_5)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d6 _lh_addPs_arg1_2_1 _lh_addPs_arg2_2_1 =
  (lazy (let rec _lh_matchIdent_7_4 = (Lazy.force _lh_addPs_arg1_2_1) in
    (match _lh_matchIdent_7_4 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_1)
      | `Pc(_lh_addPs_Pc_0_4_2, _lh_addPs_Pc_1_4_2) -> 
        (let rec _lh_matchIdent_7_5 = (Lazy.force _lh_addPs_arg2_2_1) in
          (match _lh_matchIdent_7_5 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_1)
            | `Pc(_lh_addPs_Pc_0_4_3, _lh_addPs_Pc_1_4_3) -> 
              (`Pc((_lh_addPs_Pc_0_4_2 + _lh_addPs_Pc_0_4_3), ((addPs_lh__d2_d6 _lh_addPs_Pc_1_4_2) _lh_addPs_Pc_1_4_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec fromIntegerPs_lh__d6 _lh_fromIntegerPs_arg1_4 =
  (match _lh_fromIntegerPs_arg1_4 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_4, (lazy (`Pz))))));;
let rec dotMult_lh__d1_d8 _lh_dotMult_arg1_1_8 _lh_dotMult_arg2_1_8 =
  (lazy (let rec _lh_matchIdent_9_9 = (Lazy.force _lh_dotMult_arg2_1_8) in
    (match _lh_matchIdent_9_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_8, _lh_dotMult_Pc_1_1_8) -> 
        (`Pc((_lh_dotMult_arg1_1_8 * _lh_dotMult_Pc_0_1_8), ((dotMult_lh__d1_d8 _lh_dotMult_arg1_1_8) _lh_dotMult_Pc_1_1_8)))
      | _ -> 
        (failwith "error"))));;
let rec dotMultSndLz_lh__d0 _lh_dotMultSndLz_arg1_0 _lh_dotMultSndLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_2_0_3 = (Lazy.force (Lazy.force _lh_dotMultSndLz_arg2_0)) in
    (match _lh_matchIdent_2_0_3 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMultSndLz_Pc_0_0, _lh_dotMultSndLz_Pc_1_0) -> 
        (`Pc((_lh_dotMultSndLz_arg1_0 * _lh_dotMultSndLz_Pc_0_0), ((dotMult_lh__d1_d8 _lh_dotMultSndLz_arg1_0) _lh_dotMultSndLz_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d1_d4 _lh_negatePs_arg1_0 =
  (lazy (let rec _lh_matchIdent_3_3 = (Lazy.force _lh_negatePs_arg1_0) in
    (_lh_matchIdent_3_3 99)));;
let rec dotMult_lh__d1_d7 _lh_dotMult_arg1_3_3 _lh_dotMult_arg2_3_3 =
  (lazy (let rec _lh_matchIdent_1_6_3 = (Lazy.force _lh_dotMult_arg2_3_3) in
    (match _lh_matchIdent_1_6_3 with
      | `Pz -> 
        (fun _lh_dummy_1_9 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_3_3, _lh_dotMult_Pc_1_3_3) -> 
        (let rec _lh_negatePs_Pc_1_1_2 = ((dotMult_lh__d1_d7 _lh_dotMult_arg1_3_3) _lh_dotMult_Pc_1_3_3) in
          (let rec _lh_negatePs_Pc_0_1_2 = (_lh_dotMult_arg1_3_3 * _lh_dotMult_Pc_0_3_3) in
            (fun _lh_dummy_2_0 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_1_2), (negatePs_lh__d1_d4 _lh_negatePs_Pc_1_1_2))))))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d1_d3 _lh_negatePs_arg1_8 =
  (lazy (let rec _lh_matchIdent_1_6_1 = (Lazy.force _lh_negatePs_arg1_8) in
    (_lh_matchIdent_1_6_1 99)));;
let rec dotMult_lh__d1_d6 _lh_dotMult_arg1_4_0 _lh_dotMult_arg2_4_0 =
  (lazy (let rec _lh_matchIdent_2_0_2 = (Lazy.force _lh_dotMult_arg2_4_0) in
    (match _lh_matchIdent_2_0_2 with
      | `Pz -> 
        (fun _lh_dummy_2_2 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_4_0, _lh_dotMult_Pc_1_4_0) -> 
        (let rec _lh_negatePs_Pc_1_1_5 = ((dotMult_lh__d1_d6 _lh_dotMult_arg1_4_0) _lh_dotMult_Pc_1_4_0) in
          (let rec _lh_negatePs_Pc_0_1_5 = (_lh_dotMult_arg1_4_0 * _lh_dotMult_Pc_0_4_0) in
            (fun _lh_dummy_2_3 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_1_5), (negatePs_lh__d1_d3 _lh_negatePs_Pc_1_1_5))))))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d7 _lh_addPs_arg1_5_7 _lh_addPs_arg2_5_7 =
  (lazy (let rec _lh_matchIdent_2_4_5 = (Lazy.force _lh_addPs_arg1_5_7) in
    (match _lh_matchIdent_2_4_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_7)
      | `Pc(_lh_addPs_Pc_0_1_1_4, _lh_addPs_Pc_1_1_1_4) -> 
        (let rec _lh_matchIdent_2_4_6 = (Lazy.force _lh_addPs_arg2_5_7) in
          (match _lh_matchIdent_2_4_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_7)
            | `Pc(_lh_addPs_Pc_0_1_1_5, _lh_addPs_Pc_1_1_1_5) -> 
              (`Pc((_lh_addPs_Pc_0_1_1_4 + _lh_addPs_Pc_0_1_1_5), ((addPs_lh__d2_d7 _lh_addPs_Pc_1_1_1_4) _lh_addPs_Pc_1_1_1_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d8 _lh_addPs_arg1_3_6 _lh_addPs_arg2_3_6 =
  (lazy (let rec _lh_matchIdent_1_5_9 = (Lazy.force _lh_addPs_arg1_3_6) in
    (match _lh_matchIdent_1_5_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_6)
      | `Pc(_lh_addPs_Pc_0_7_2, _lh_addPs_Pc_1_7_2) -> 
        (let rec _lh_matchIdent_1_6_0 = (Lazy.force _lh_addPs_arg2_3_6) in
          (match _lh_matchIdent_1_6_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_6)
            | `Pc(_lh_addPs_Pc_0_7_3, _lh_addPs_Pc_1_7_3) -> 
              (`Pc((_lh_addPs_Pc_0_7_2 + _lh_addPs_Pc_0_7_3), ((addPs_lh__d2_d8 _lh_addPs_Pc_1_7_2) _lh_addPs_Pc_1_7_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh__d3 _lh_divPs_arg1_2 _lh_divPs_arg2_2 =
  (lazy (let rec _lh_matchIdent_1_9_2 = (Lazy.force _lh_divPs_arg1_2) in
    (match _lh_matchIdent_1_9_2 with
      | `Pz -> 
        (let rec _lh_matchIdent_1_9_3 = (Lazy.force _lh_divPs_arg2_2) in
          (match _lh_matchIdent_1_9_3 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_8, _lh_divPs_Pc_1_8) -> 
              (match _lh_divPs_Pc_0_8 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d3 (lazy (`Pz))) _lh_divPs_Pc_1_8))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_9, _lh_divPs_Pc_1_9) -> 
        (match _lh_divPs_Pc_0_9 with
          | 0 -> 
            (let rec _lh_matchIdent_1_9_4 = (Lazy.force _lh_divPs_arg2_2) in
              (match _lh_matchIdent_1_9_4 with
                | `Pc(_lh_divPs_Pc_0_1_0, _lh_divPs_Pc_1_1_0) -> 
                  (match _lh_divPs_Pc_0_1_0 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d3 _lh_divPs_Pc_1_9) _lh_divPs_Pc_1_1_0))
                    | _ -> 
                      (let rec q_4 = 0 in
                        (`Pc(q_4, ((divPs_lh__d3 ((addPs_lh__d2_d7 _lh_divPs_Pc_1_9) (negatePs_lh__d1_d3 ((dotMult_lh__d1_d6 q_4) _lh_divPs_Pc_1_1_0)))) (lazy (`Pc(_lh_divPs_Pc_0_1_0, _lh_divPs_Pc_1_1_0))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_1_9_5 = (Lazy.force _lh_divPs_arg2_2) in
              (match _lh_matchIdent_1_9_5 with
                | `Pc(_lh_divPs_Pc_0_1_1, _lh_divPs_Pc_1_1_1) -> 
                  (let rec q_5 = (_lh_divPs_Pc_0_9 / _lh_divPs_Pc_0_1_1) in
                    (`Pc(q_5, ((divPs_lh__d3 ((addPs_lh__d2_d8 _lh_divPs_Pc_1_9) (negatePs_lh__d1_d4 ((dotMult_lh__d1_d7 q_5) _lh_divPs_Pc_1_1_1)))) (lazy (`Pc(_lh_divPs_Pc_0_1_1, _lh_divPs_Pc_1_1_1)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec deriv_lh__d0 _lh_deriv_arg1_0 =
  (lazy (let rec _lh_matchIdent_1_8_2 = (Lazy.force _lh_deriv_arg1_0) in
    (_lh_matchIdent_1_8_2 99)));;
let rec integral_lh__d5 _lh_integral_arg1_4 =
  (let rec int1_1_3 = (fun fss_7 n_1_3 -> 
    (lazy (let rec _lh_matchIdent_1_8_6 = (Lazy.force fss_7) in
      (match _lh_matchIdent_1_8_6 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_1_0, _lh_int1_Pc_1_1_0) -> 
          (`Pc((_lh_int1_Pc_0_1_0 / n_1_3), ((int1_1_3 _lh_int1_Pc_1_1_0) (n_1_3 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1_3 _lh_integral_arg1_4) 1)))));;
let rec sqrtPs_lh__d0 _lh_sqrtPs_arg1_0 =
  (lazy (let rec _lh_matchIdent_2_3_2 = (Lazy.force _lh_sqrtPs_arg1_0) in
    (match _lh_matchIdent_2_3_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_sqrtPs_Pc_0_0, _lh_sqrtPs_Pc_1_0) -> 
        (match _lh_sqrtPs_Pc_0_0 with
          | 0 -> 
            (let rec _lh_matchIdent_2_3_3 = (Lazy.force _lh_sqrtPs_Pc_1_0) in
              (match _lh_matchIdent_2_3_3 with
                | `Pc(_lh_sqrtPs_Pc_0_1, _lh_sqrtPs_Pc_1_1) -> 
                  (match _lh_sqrtPs_Pc_0_1 with
                    | 0 -> 
                      (`Pc(0, (sqrtPs_lh__d0 _lh_sqrtPs_Pc_1_1)))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | 1 -> 
            (let rec qs_0 = (lazy ((addPs_lh__d2_d6 (fromIntegerPs_lh__d6 1)) (integral_lh__d5 ((divPs_lh__d3 (deriv_lh__d0 (lazy (let rec _lh_deriv_Pc_1_0 = _lh_sqrtPs_Pc_1_0 in
              (fun _lh_dummy_2_8 -> 
                (let rec deriv1_0 = (fun gss_0 n_1_5 -> 
                  (lazy (let rec _lh_matchIdent_2_3_4 = (Lazy.force gss_0) in
                    (match _lh_matchIdent_2_3_4 with
                      | `Pz -> 
                        (`Pz)
                      | `Pc(_lh_deriv_Pc_0_0, _lh_deriv_Pc_1_1) -> 
                        (`Pc((n_1_5 * _lh_deriv_Pc_0_0), ((deriv1_0 _lh_deriv_Pc_1_1) (n_1_5 + 1))))
                      | _ -> 
                        (failwith "error"))))) in
                  (Lazy.force ((deriv1_0 _lh_deriv_Pc_1_0) 1)))))))) ((dotMultSndLz_lh__d0 2) qs_0))))) in
              (Lazy.force (Lazy.force qs_0)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d1 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d3_d3 _lh_dotMult_arg1_2_9 _lh_dotMult_arg2_2_9 =
  (lazy (let rec _lh_matchIdent_1_3_8 = (Lazy.force _lh_dotMult_arg2_2_9) in
    (match _lh_matchIdent_1_3_8 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_9, _lh_dotMult_Pc_1_2_9) -> 
        (`Pc((_lh_dotMult_arg1_2_9 * _lh_dotMult_Pc_0_2_9), ((dotMult_lh__d3_d3 _lh_dotMult_arg1_2_9) _lh_dotMult_Pc_1_2_9)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d4 _lh_dotMult_arg1_3_0 _lh_dotMult_arg2_3_0 =
  (lazy (let rec _lh_matchIdent_1_5_6 = (Lazy.force _lh_dotMult_arg2_3_0) in
    (match _lh_matchIdent_1_5_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_0, _lh_dotMult_Pc_1_3_0) -> 
        (`Pc((_lh_dotMult_arg1_3_0 * _lh_dotMult_Pc_0_3_0), ((dotMult_lh__d3_d4 _lh_dotMult_arg1_3_0) _lh_dotMult_Pc_1_3_0)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d7 _lh_addPs_arg1_4_2 _lh_addPs_arg2_4_2 =
  (lazy (let rec _lh_matchIdent_1_9_0 = (Lazy.force _lh_addPs_arg1_4_2) in
    (match _lh_matchIdent_1_9_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_2)
      | `Pc(_lh_addPs_Pc_0_8_4, _lh_addPs_Pc_1_8_4) -> 
        (let rec _lh_matchIdent_1_9_1 = (Lazy.force _lh_addPs_arg2_4_2) in
          (match _lh_matchIdent_1_9_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_2)
            | `Pc(_lh_addPs_Pc_0_8_5, _lh_addPs_Pc_1_8_5) -> 
              (`Pc((_lh_addPs_Pc_0_8_4 + _lh_addPs_Pc_0_8_5), ((addPs_lh__d4_d7 _lh_addPs_Pc_1_8_4) _lh_addPs_Pc_1_8_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d8 _lh_addPs_arg1_4_9 _lh_addPs_arg2_4_9 =
  (lazy (let rec _lh_matchIdent_2_1_6 = (Lazy.force _lh_addPs_arg1_4_9) in
    (match _lh_matchIdent_2_1_6 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_9)
      | `Pc(_lh_addPs_Pc_0_9_8, _lh_addPs_Pc_1_9_8) -> 
        (let rec _lh_matchIdent_2_1_7 = (Lazy.force _lh_addPs_arg2_4_9) in
          (match _lh_matchIdent_2_1_7 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_9)
            | `Pc(_lh_addPs_Pc_0_9_9, _lh_addPs_Pc_1_9_9) -> 
              (`Pc((_lh_addPs_Pc_0_9_8 + _lh_addPs_Pc_0_9_9), ((addPs_lh__d4_d8 _lh_addPs_Pc_1_9_8) _lh_addPs_Pc_1_9_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d1_d0 _lh_multPs_arg1_4 _lh_multPs_arg2_4 =
  (lazy (let rec _lh_matchIdent_9_0 = (Lazy.force _lh_multPs_arg1_4) in
    (match _lh_matchIdent_9_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_8, _lh_multPs_Pc_1_8) -> 
        (let rec _lh_matchIdent_9_1 = (Lazy.force _lh_multPs_arg2_4) in
          (match _lh_matchIdent_9_1 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_9, _lh_multPs_Pc_1_9) -> 
              (`Pc((_lh_multPs_Pc_0_8 * _lh_multPs_Pc_0_9), ((addPs_lh__d4_d7 ((addPs_lh__d4_d8 ((dotMult_lh__d3_d3 _lh_multPs_Pc_0_8) _lh_multPs_Pc_1_9)) ((dotMult_lh__d3_d4 _lh_multPs_Pc_0_9) _lh_multPs_Pc_1_8))) ((multPs_lh__d1_d0 ((multPs_lh__d1_d0 x_lh__d1_d1) _lh_multPs_Pc_1_8)) _lh_multPs_Pc_1_9))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d5 _lh_addPs_arg1_2_5 _lh_addPs_arg2_2_5 =
  (lazy (let rec _lh_matchIdent_1_0_5 = (Lazy.force _lh_addPs_arg1_2_5) in
    (match _lh_matchIdent_1_0_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_5)
      | `Pc(_lh_addPs_Pc_0_5_0, _lh_addPs_Pc_1_5_0) -> 
        (let rec _lh_matchIdent_1_0_6 = (Lazy.force _lh_addPs_arg2_2_5) in
          (match _lh_matchIdent_1_0_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_5)
            | `Pc(_lh_addPs_Pc_0_5_1, _lh_addPs_Pc_1_5_1) -> 
              (`Pc((_lh_addPs_Pc_0_5_0 + _lh_addPs_Pc_0_5_1), ((addPs_lh__d4_d5 _lh_addPs_Pc_1_5_0) _lh_addPs_Pc_1_5_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d6 _lh_dotMult_arg1_8 _lh_dotMult_arg2_8 =
  (lazy (let rec _lh_matchIdent_5_6 = (Lazy.force _lh_dotMult_arg2_8) in
    (match _lh_matchIdent_5_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_8, _lh_dotMult_Pc_1_8) -> 
        (`Pc((_lh_dotMult_arg1_8 * _lh_dotMult_Pc_0_8), ((dotMult_lh__d3_d6 _lh_dotMult_arg1_8) _lh_dotMult_Pc_1_8)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d0 _lh_addPs_arg1_3_9 _lh_addPs_arg2_3_9 =
  (lazy (let rec _lh_matchIdent_1_7_9 = (Lazy.force _lh_addPs_arg1_3_9) in
    (match _lh_matchIdent_1_7_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_9)
      | `Pc(_lh_addPs_Pc_0_7_8, _lh_addPs_Pc_1_7_8) -> 
        (let rec _lh_matchIdent_1_8_0 = (Lazy.force _lh_addPs_arg2_3_9) in
          (match _lh_matchIdent_1_8_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_9)
            | `Pc(_lh_addPs_Pc_0_7_9, _lh_addPs_Pc_1_7_9) -> 
              (`Pc((_lh_addPs_Pc_0_7_8 + _lh_addPs_Pc_0_7_9), ((addPs_lh__d5_d0 _lh_addPs_Pc_1_7_8) _lh_addPs_Pc_1_7_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d5 _lh_dotMult_arg1_2_5 _lh_dotMult_arg2_2_5 =
  (lazy (let rec _lh_matchIdent_1_2_6 = (Lazy.force _lh_dotMult_arg2_2_5) in
    (match _lh_matchIdent_1_2_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_5, _lh_dotMult_Pc_1_2_5) -> 
        (`Pc((_lh_dotMult_arg1_2_5 * _lh_dotMult_Pc_0_2_5), ((dotMult_lh__d3_d5 _lh_dotMult_arg1_2_5) _lh_dotMult_Pc_1_2_5)))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d2 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec addPs_lh__d4_d9 _lh_addPs_arg1_3_5 _lh_addPs_arg2_3_5 =
  (lazy (let rec _lh_matchIdent_1_4_7 = (Lazy.force _lh_addPs_arg1_3_5) in
    (match _lh_matchIdent_1_4_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_5)
      | `Pc(_lh_addPs_Pc_0_7_0, _lh_addPs_Pc_1_7_0) -> 
        (let rec _lh_matchIdent_1_4_8 = (Lazy.force _lh_addPs_arg2_3_5) in
          (match _lh_matchIdent_1_4_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_5)
            | `Pc(_lh_addPs_Pc_0_7_1, _lh_addPs_Pc_1_7_1) -> 
              (`Pc((_lh_addPs_Pc_0_7_0 + _lh_addPs_Pc_0_7_1), ((addPs_lh__d4_d9 _lh_addPs_Pc_1_7_0) _lh_addPs_Pc_1_7_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d1_d1 _lh_multPs_arg1_6 _lh_multPs_arg2_6 =
  (lazy (let rec _lh_matchIdent_1_4_2 = (Lazy.force _lh_multPs_arg1_6) in
    (match _lh_matchIdent_1_4_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_1_2, _lh_multPs_Pc_1_1_2) -> 
        (let rec _lh_matchIdent_1_4_3 = (Lazy.force _lh_multPs_arg2_6) in
          (match _lh_matchIdent_1_4_3 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1_3, _lh_multPs_Pc_1_1_3) -> 
              (`Pc((_lh_multPs_Pc_0_1_2 * _lh_multPs_Pc_0_1_3), ((addPs_lh__d4_d9 ((addPs_lh__d5_d0 ((dotMult_lh__d3_d5 _lh_multPs_Pc_0_1_2) _lh_multPs_Pc_1_1_3)) ((dotMult_lh__d3_d6 _lh_multPs_Pc_0_1_3) _lh_multPs_Pc_1_1_2))) ((multPs_lh__d1_d1 ((multPs_lh__d1_d1 x_lh__d1_d2) _lh_multPs_Pc_1_1_2)) _lh_multPs_Pc_1_1_3))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d2 _lh_dotMult_arg1_3_7 _lh_dotMult_arg2_3_7 =
  (lazy (let rec _lh_matchIdent_1_7_6 = (Lazy.force _lh_dotMult_arg2_3_7) in
    (match _lh_matchIdent_1_7_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_7, _lh_dotMult_Pc_1_3_7) -> 
        (`Pc((_lh_dotMult_arg1_3_7 * _lh_dotMult_Pc_0_3_7), ((dotMult_lh__d3_d2 _lh_dotMult_arg1_3_7) _lh_dotMult_Pc_1_3_7)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d1 _lh_dotMult_arg1_3_8 _lh_dotMult_arg2_3_8 =
  (lazy (let rec _lh_matchIdent_1_8_5 = (Lazy.force _lh_dotMult_arg2_3_8) in
    (match _lh_matchIdent_1_8_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_8, _lh_dotMult_Pc_1_3_8) -> 
        (`Pc((_lh_dotMult_arg1_3_8 * _lh_dotMult_Pc_0_3_8), ((dotMult_lh__d3_d1 _lh_dotMult_arg1_3_8) _lh_dotMult_Pc_1_3_8)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d6 _lh_addPs_arg1_5_6 _lh_addPs_arg2_5_6 =
  (lazy (let rec _lh_matchIdent_2_4_3 = (Lazy.force _lh_addPs_arg1_5_6) in
    (match _lh_matchIdent_2_4_3 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_6)
      | `Pc(_lh_addPs_Pc_0_1_1_2, _lh_addPs_Pc_1_1_1_2) -> 
        (let rec _lh_matchIdent_2_4_4 = (Lazy.force _lh_addPs_arg2_5_6) in
          (match _lh_matchIdent_2_4_4 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_6)
            | `Pc(_lh_addPs_Pc_0_1_1_3, _lh_addPs_Pc_1_1_1_3) -> 
              (`Pc((_lh_addPs_Pc_0_1_1_2 + _lh_addPs_Pc_0_1_1_3), ((addPs_lh__d4_d6 _lh_addPs_Pc_1_1_1_2) _lh_addPs_Pc_1_1_1_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d3 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPsFstLz_lh__d1 _lh_multPsFstLz_arg1_0 _lh_multPsFstLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_2_3 = (Lazy.force (Lazy.force _lh_multPsFstLz_arg1_0)) in
    (match _lh_matchIdent_2_3 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsFstLz_Pc_0_0, _lh_multPsFstLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_2_4 = (Lazy.force _lh_multPsFstLz_arg2_0) in
          (match _lh_matchIdent_2_4 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsFstLz_Pc_0_1, _lh_multPsFstLz_Pc_1_1) -> 
              (`Pc((_lh_multPsFstLz_Pc_0_0 * _lh_multPsFstLz_Pc_0_1), ((addPs_lh__d4_d5 ((addPs_lh__d4_d6 ((dotMult_lh__d3_d1 _lh_multPsFstLz_Pc_0_0) _lh_multPsFstLz_Pc_1_1)) ((dotMult_lh__d3_d2 _lh_multPsFstLz_Pc_0_1) _lh_multPsFstLz_Pc_1_0))) ((multPs_lh__d1_d0 ((multPs_lh__d1_d1 x_lh__d1_d3) _lh_multPsFstLz_Pc_1_0)) _lh_multPsFstLz_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2_d9 _lh_addPs_arg1_1_2 _lh_addPs_arg2_1_2 =
  (lazy (let rec _lh_matchIdent_4_8 = (Lazy.force _lh_addPs_arg1_1_2) in
    (match _lh_matchIdent_4_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_2)
      | `Pc(_lh_addPs_Pc_0_2_4, _lh_addPs_Pc_1_2_4) -> 
        (let rec _lh_matchIdent_4_9 = (Lazy.force _lh_addPs_arg2_1_2) in
          (match _lh_matchIdent_4_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_2)
            | `Pc(_lh_addPs_Pc_0_2_5, _lh_addPs_Pc_1_2_5) -> 
              (`Pc((_lh_addPs_Pc_0_2_4 + _lh_addPs_Pc_0_2_5), ((addPs_lh__d2_d9 _lh_addPs_Pc_1_2_4) _lh_addPs_Pc_1_2_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d2_d6 _lh_dotMult_arg1_4 _lh_dotMult_arg2_4 =
  (lazy (let rec _lh_matchIdent_3_2 = (Lazy.force _lh_dotMult_arg2_4) in
    (match _lh_matchIdent_3_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_4, _lh_dotMult_Pc_1_4) -> 
        (`Pc((_lh_dotMult_arg1_4 * _lh_dotMult_Pc_0_4), ((dotMult_lh__d2_d6 _lh_dotMult_arg1_4) _lh_dotMult_Pc_1_4)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d2 _lh_addPs_arg1_1 _lh_addPs_arg2_1 =
  (lazy (let rec _lh_matchIdent_2 = (Lazy.force _lh_addPs_arg1_1) in
    (match _lh_matchIdent_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1)
      | `Pc(_lh_addPs_Pc_0_2, _lh_addPs_Pc_1_2) -> 
        (let rec _lh_matchIdent_3 = (Lazy.force _lh_addPs_arg2_1) in
          (match _lh_matchIdent_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1)
            | `Pc(_lh_addPs_Pc_0_3, _lh_addPs_Pc_1_3) -> 
              (`Pc((_lh_addPs_Pc_0_2 + _lh_addPs_Pc_0_3), ((addPs_lh__d4_d2 _lh_addPs_Pc_1_2) _lh_addPs_Pc_1_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d8 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d2_d8 _lh_dotMult_arg1_2_8 _lh_dotMult_arg2_2_8 =
  (lazy (let rec _lh_matchIdent_1_3_4 = (Lazy.force _lh_dotMult_arg2_2_8) in
    (match _lh_matchIdent_1_3_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_8, _lh_dotMult_Pc_1_2_8) -> 
        (`Pc((_lh_dotMult_arg1_2_8 * _lh_dotMult_Pc_0_2_8), ((dotMult_lh__d2_d8 _lh_dotMult_arg1_2_8) _lh_dotMult_Pc_1_2_8)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d2_d7 _lh_dotMult_arg1_3_1 _lh_dotMult_arg2_3_1 =
  (lazy (let rec _lh_matchIdent_1_5_7 = (Lazy.force _lh_dotMult_arg2_3_1) in
    (match _lh_matchIdent_1_5_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_1, _lh_dotMult_Pc_1_3_1) -> 
        (`Pc((_lh_dotMult_arg1_3_1 * _lh_dotMult_Pc_0_3_1), ((dotMult_lh__d2_d7 _lh_dotMult_arg1_3_1) _lh_dotMult_Pc_1_3_1)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d1 _lh_addPs_arg1_4_1 _lh_addPs_arg2_4_1 =
  (lazy (let rec _lh_matchIdent_1_8_7 = (Lazy.force _lh_addPs_arg1_4_1) in
    (match _lh_matchIdent_1_8_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_1)
      | `Pc(_lh_addPs_Pc_0_8_2, _lh_addPs_Pc_1_8_2) -> 
        (let rec _lh_matchIdent_1_8_8 = (Lazy.force _lh_addPs_arg2_4_1) in
          (match _lh_matchIdent_1_8_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_1)
            | `Pc(_lh_addPs_Pc_0_8_3, _lh_addPs_Pc_1_8_3) -> 
              (`Pc((_lh_addPs_Pc_0_8_2 + _lh_addPs_Pc_0_8_3), ((addPs_lh__d4_d1 _lh_addPs_Pc_1_8_2) _lh_addPs_Pc_1_8_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d8 _lh_multPs_arg1_3 _lh_multPs_arg2_3 =
  (lazy (let rec _lh_matchIdent_8_6 = (Lazy.force _lh_multPs_arg1_3) in
    (match _lh_matchIdent_8_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_6, _lh_multPs_Pc_1_6) -> 
        (let rec _lh_matchIdent_8_7 = (Lazy.force _lh_multPs_arg2_3) in
          (match _lh_matchIdent_8_7 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_7, _lh_multPs_Pc_1_7) -> 
              (`Pc((_lh_multPs_Pc_0_6 * _lh_multPs_Pc_0_7), ((addPs_lh__d4_d1 ((addPs_lh__d4_d2 ((dotMult_lh__d2_d7 _lh_multPs_Pc_0_6) _lh_multPs_Pc_1_7)) ((dotMult_lh__d2_d8 _lh_multPs_Pc_0_7) _lh_multPs_Pc_1_6))) ((multPs_lh__d8 ((multPs_lh__d8 x_lh__d8) _lh_multPs_Pc_1_6)) _lh_multPs_Pc_1_7))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d2_d9 _lh_dotMult_arg1_9 _lh_dotMult_arg2_9 =
  (lazy (let rec _lh_matchIdent_5_7 = (Lazy.force _lh_dotMult_arg2_9) in
    (match _lh_matchIdent_5_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_9, _lh_dotMult_Pc_1_9) -> 
        (`Pc((_lh_dotMult_arg1_9 * _lh_dotMult_Pc_0_9), ((dotMult_lh__d2_d9 _lh_dotMult_arg1_9) _lh_dotMult_Pc_1_9)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d0 _lh_dotMult_arg1_3_6 _lh_dotMult_arg2_3_6 =
  (lazy (let rec _lh_matchIdent_1_7_5 = (Lazy.force _lh_dotMult_arg2_3_6) in
    (match _lh_matchIdent_1_7_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_6, _lh_dotMult_Pc_1_3_6) -> 
        (`Pc((_lh_dotMult_arg1_3_6 * _lh_dotMult_Pc_0_3_6), ((dotMult_lh__d3_d0 _lh_dotMult_arg1_3_6) _lh_dotMult_Pc_1_3_6)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d3 _lh_addPs_arg1_4_5 _lh_addPs_arg2_4_5 =
  (lazy (let rec _lh_matchIdent_2_0_4 = (Lazy.force _lh_addPs_arg1_4_5) in
    (match _lh_matchIdent_2_0_4 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_5)
      | `Pc(_lh_addPs_Pc_0_9_0, _lh_addPs_Pc_1_9_0) -> 
        (let rec _lh_matchIdent_2_0_5 = (Lazy.force _lh_addPs_arg2_4_5) in
          (match _lh_matchIdent_2_0_5 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_5)
            | `Pc(_lh_addPs_Pc_0_9_1, _lh_addPs_Pc_1_9_1) -> 
              (`Pc((_lh_addPs_Pc_0_9_0 + _lh_addPs_Pc_0_9_1), ((addPs_lh__d4_d3 _lh_addPs_Pc_1_9_0) _lh_addPs_Pc_1_9_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d4 _lh_addPs_arg1_5 _lh_addPs_arg2_5 =
  (lazy (let rec _lh_matchIdent_1_3 = (Lazy.force _lh_addPs_arg1_5) in
    (match _lh_matchIdent_1_3 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5)
      | `Pc(_lh_addPs_Pc_0_1_0, _lh_addPs_Pc_1_1_0) -> 
        (let rec _lh_matchIdent_1_4 = (Lazy.force _lh_addPs_arg2_5) in
          (match _lh_matchIdent_1_4 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5)
            | `Pc(_lh_addPs_Pc_0_1_1, _lh_addPs_Pc_1_1_1) -> 
              (`Pc((_lh_addPs_Pc_0_1_0 + _lh_addPs_Pc_0_1_1), ((addPs_lh__d4_d4 _lh_addPs_Pc_1_1_0) _lh_addPs_Pc_1_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d9 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPs_lh__d9 _lh_multPs_arg1_5 _lh_multPs_arg2_5 =
  (lazy (let rec _lh_matchIdent_9_2 = (Lazy.force _lh_multPs_arg1_5) in
    (match _lh_matchIdent_9_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_1_0, _lh_multPs_Pc_1_1_0) -> 
        (let rec _lh_matchIdent_9_3 = (Lazy.force _lh_multPs_arg2_5) in
          (match _lh_matchIdent_9_3 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1_1, _lh_multPs_Pc_1_1_1) -> 
              (`Pc((_lh_multPs_Pc_0_1_0 * _lh_multPs_Pc_0_1_1), ((addPs_lh__d4_d3 ((addPs_lh__d4_d4 ((dotMult_lh__d2_d9 _lh_multPs_Pc_0_1_0) _lh_multPs_Pc_1_1_1)) ((dotMult_lh__d3_d0 _lh_multPs_Pc_0_1_1) _lh_multPs_Pc_1_1_0))) ((multPs_lh__d9 ((multPs_lh__d9 x_lh__d9) _lh_multPs_Pc_1_1_0)) _lh_multPs_Pc_1_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4_d0 _lh_addPs_arg1_2_8 _lh_addPs_arg2_2_8 =
  (lazy (let rec _lh_matchIdent_1_1_2 = (Lazy.force _lh_addPs_arg1_2_8) in
    (match _lh_matchIdent_1_1_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_8)
      | `Pc(_lh_addPs_Pc_0_5_6, _lh_addPs_Pc_1_5_6) -> 
        (let rec _lh_matchIdent_1_1_3 = (Lazy.force _lh_addPs_arg2_2_8) in
          (match _lh_matchIdent_1_1_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_8)
            | `Pc(_lh_addPs_Pc_0_5_7, _lh_addPs_Pc_1_5_7) -> 
              (`Pc((_lh_addPs_Pc_0_5_6 + _lh_addPs_Pc_0_5_7), ((addPs_lh__d4_d0 _lh_addPs_Pc_1_5_6) _lh_addPs_Pc_1_5_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d9 _lh_addPs_arg1_2_9 _lh_addPs_arg2_2_9 =
  (lazy (let rec _lh_matchIdent_1_1_5 = (Lazy.force _lh_addPs_arg1_2_9) in
    (match _lh_matchIdent_1_1_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_9)
      | `Pc(_lh_addPs_Pc_0_5_8, _lh_addPs_Pc_1_5_8) -> 
        (let rec _lh_matchIdent_1_1_6 = (Lazy.force _lh_addPs_arg2_2_9) in
          (match _lh_matchIdent_1_1_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_9)
            | `Pc(_lh_addPs_Pc_0_5_9, _lh_addPs_Pc_1_5_9) -> 
              (`Pc((_lh_addPs_Pc_0_5_8 + _lh_addPs_Pc_0_5_9), ((addPs_lh__d3_d9 _lh_addPs_Pc_1_5_8) _lh_addPs_Pc_1_5_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d0 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d2_d5 _lh_dotMult_arg1_4_1 _lh_dotMult_arg2_4_1 =
  (lazy (let rec _lh_matchIdent_2_1_1 = (Lazy.force _lh_dotMult_arg2_4_1) in
    (match _lh_matchIdent_2_1_1 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_4_1, _lh_dotMult_Pc_1_4_1) -> 
        (`Pc((_lh_dotMult_arg1_4_1 * _lh_dotMult_Pc_0_4_1), ((dotMult_lh__d2_d5 _lh_dotMult_arg1_4_1) _lh_dotMult_Pc_1_4_1)))
      | _ -> 
        (failwith "error"))));;
let rec multPsFstLz_lh__d0 _lh_multPsFstLz_arg1_1 _lh_multPsFstLz_arg2_1 =
  (lazy (let rec _lh_matchIdent_8_0 = (Lazy.force (Lazy.force _lh_multPsFstLz_arg1_1)) in
    (match _lh_matchIdent_8_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsFstLz_Pc_0_2, _lh_multPsFstLz_Pc_1_2) -> 
        (let rec _lh_matchIdent_8_1 = (Lazy.force _lh_multPsFstLz_arg2_1) in
          (match _lh_matchIdent_8_1 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsFstLz_Pc_0_3, _lh_multPsFstLz_Pc_1_3) -> 
              (`Pc((_lh_multPsFstLz_Pc_0_2 * _lh_multPsFstLz_Pc_0_3), ((addPs_lh__d3_d9 ((addPs_lh__d4_d0 ((dotMult_lh__d2_d5 _lh_multPsFstLz_Pc_0_2) _lh_multPsFstLz_Pc_1_3)) ((dotMult_lh__d2_d6 _lh_multPsFstLz_Pc_0_3) _lh_multPsFstLz_Pc_1_2))) ((multPs_lh__d8 ((multPs_lh__d9 x_lh__d1_d0) _lh_multPsFstLz_Pc_1_2)) _lh_multPsFstLz_Pc_1_3))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d0 _lh_addPs_arg1_5_8 _lh_addPs_arg2_5_8 =
  (lazy (let rec _lh_matchIdent_2_4_8 = (Lazy.force _lh_addPs_arg1_5_8) in
    (match _lh_matchIdent_2_4_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_8)
      | `Pc(_lh_addPs_Pc_0_1_1_6, _lh_addPs_Pc_1_1_1_6) -> 
        (let rec _lh_matchIdent_2_4_9 = (Lazy.force _lh_addPs_arg2_5_8) in
          (match _lh_matchIdent_2_4_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_8)
            | `Pc(_lh_addPs_Pc_0_1_1_7, _lh_addPs_Pc_1_1_1_7) -> 
              (`Pc((_lh_addPs_Pc_0_1_1_6 + _lh_addPs_Pc_0_1_1_7), ((addPs_lh__d3_d0 _lh_addPs_Pc_1_1_1_6) _lh_addPs_Pc_1_1_1_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d2 _lh_addPs_arg1_1_9 _lh_addPs_arg2_1_9 =
  (lazy (let rec _lh_matchIdent_7_0 = (Lazy.force _lh_addPs_arg1_1_9) in
    (match _lh_matchIdent_7_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_9)
      | `Pc(_lh_addPs_Pc_0_3_8, _lh_addPs_Pc_1_3_8) -> 
        (let rec _lh_matchIdent_7_1 = (Lazy.force _lh_addPs_arg2_1_9) in
          (match _lh_matchIdent_7_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_9)
            | `Pc(_lh_addPs_Pc_0_3_9, _lh_addPs_Pc_1_3_9) -> 
              (`Pc((_lh_addPs_Pc_0_3_8 + _lh_addPs_Pc_0_3_9), ((addPs_lh__d3_d2 _lh_addPs_Pc_1_3_8) _lh_addPs_Pc_1_3_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d7 _lh_addPs_arg1_0 _lh_addPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_addPs_arg1_0) in
    (match _lh_matchIdent_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_0)
      | `Pc(_lh_addPs_Pc_0_0, _lh_addPs_Pc_1_0) -> 
        (let rec _lh_matchIdent_1 = (Lazy.force _lh_addPs_arg2_0) in
          (match _lh_matchIdent_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_0)
            | `Pc(_lh_addPs_Pc_0_1, _lh_addPs_Pc_1_1) -> 
              (`Pc((_lh_addPs_Pc_0_0 + _lh_addPs_Pc_0_1), ((addPs_lh__d3_d7 _lh_addPs_Pc_1_0) _lh_addPs_Pc_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d2_d3 _lh_dotMult_arg1_1_3 _lh_dotMult_arg2_1_3 =
  (lazy (let rec _lh_matchIdent_7_6 = (Lazy.force _lh_dotMult_arg2_1_3) in
    (match _lh_matchIdent_7_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_3, _lh_dotMult_Pc_1_1_3) -> 
        (`Pc((_lh_dotMult_arg1_1_3 * _lh_dotMult_Pc_0_1_3), ((dotMult_lh__d2_d3 _lh_dotMult_arg1_1_3) _lh_dotMult_Pc_1_1_3)))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d7 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d2_d4 _lh_dotMult_arg1_3_5 _lh_dotMult_arg2_3_5 =
  (lazy (let rec _lh_matchIdent_1_7_3 = (Lazy.force _lh_dotMult_arg2_3_5) in
    (match _lh_matchIdent_1_7_3 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_5, _lh_dotMult_Pc_1_3_5) -> 
        (`Pc((_lh_dotMult_arg1_3_5 * _lh_dotMult_Pc_0_3_5), ((dotMult_lh__d2_d4 _lh_dotMult_arg1_3_5) _lh_dotMult_Pc_1_3_5)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d8 _lh_addPs_arg1_5_5 _lh_addPs_arg2_5_5 =
  (lazy (let rec _lh_matchIdent_2_4_1 = (Lazy.force _lh_addPs_arg1_5_5) in
    (match _lh_matchIdent_2_4_1 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_5)
      | `Pc(_lh_addPs_Pc_0_1_1_0, _lh_addPs_Pc_1_1_1_0) -> 
        (let rec _lh_matchIdent_2_4_2 = (Lazy.force _lh_addPs_arg2_5_5) in
          (match _lh_matchIdent_2_4_2 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_5)
            | `Pc(_lh_addPs_Pc_0_1_1_1, _lh_addPs_Pc_1_1_1_1) -> 
              (`Pc((_lh_addPs_Pc_0_1_1_0 + _lh_addPs_Pc_0_1_1_1), ((addPs_lh__d3_d8 _lh_addPs_Pc_1_1_1_0) _lh_addPs_Pc_1_1_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d7 _lh_multPs_arg1_9 _lh_multPs_arg2_9 =
  (lazy (let rec _lh_matchIdent_1_6_9 = (Lazy.force _lh_multPs_arg1_9) in
    (match _lh_matchIdent_1_6_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_1_8, _lh_multPs_Pc_1_1_8) -> 
        (let rec _lh_matchIdent_1_7_0 = (Lazy.force _lh_multPs_arg2_9) in
          (match _lh_matchIdent_1_7_0 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1_9, _lh_multPs_Pc_1_1_9) -> 
              (`Pc((_lh_multPs_Pc_0_1_8 * _lh_multPs_Pc_0_1_9), ((addPs_lh__d3_d7 ((addPs_lh__d3_d8 ((dotMult_lh__d2_d3 _lh_multPs_Pc_0_1_8) _lh_multPs_Pc_1_1_9)) ((dotMult_lh__d2_d4 _lh_multPs_Pc_0_1_9) _lh_multPs_Pc_1_1_8))) ((multPs_lh__d7 ((multPs_lh__d7 x_lh__d7) _lh_multPs_Pc_1_1_8)) _lh_multPs_Pc_1_1_9))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d4 _lh_addPs_arg1_3 _lh_addPs_arg2_3 =
  (lazy (let rec _lh_matchIdent_7 = (Lazy.force _lh_addPs_arg1_3) in
    (match _lh_matchIdent_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3)
      | `Pc(_lh_addPs_Pc_0_6, _lh_addPs_Pc_1_6) -> 
        (let rec _lh_matchIdent_8 = (Lazy.force _lh_addPs_arg2_3) in
          (match _lh_matchIdent_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3)
            | `Pc(_lh_addPs_Pc_0_7, _lh_addPs_Pc_1_7) -> 
              (`Pc((_lh_addPs_Pc_0_6 + _lh_addPs_Pc_0_7), ((addPs_lh__d3_d4 _lh_addPs_Pc_1_6) _lh_addPs_Pc_1_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d2_d0 _lh_dotMult_arg1_1_4 _lh_dotMult_arg2_1_4 =
  (lazy (let rec _lh_matchIdent_8_4 = (Lazy.force _lh_dotMult_arg2_1_4) in
    (match _lh_matchIdent_8_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_4, _lh_dotMult_Pc_1_1_4) -> 
        (`Pc((_lh_dotMult_arg1_1_4 * _lh_dotMult_Pc_0_1_4), ((dotMult_lh__d2_d0 _lh_dotMult_arg1_1_4) _lh_dotMult_Pc_1_1_4)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d1_d9 _lh_dotMult_arg1_2_1 _lh_dotMult_arg2_2_1 =
  (lazy (let rec _lh_matchIdent_1_1_8 = (Lazy.force _lh_dotMult_arg2_2_1) in
    (match _lh_matchIdent_1_1_8 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_1, _lh_dotMult_Pc_1_2_1) -> 
        (`Pc((_lh_dotMult_arg1_2_1 * _lh_dotMult_Pc_0_2_1), ((dotMult_lh__d1_d9 _lh_dotMult_arg1_2_1) _lh_dotMult_Pc_1_2_1)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d3 _lh_addPs_arg1_3_1 _lh_addPs_arg2_3_1 =
  (lazy (let rec _lh_matchIdent_1_2_7 = (Lazy.force _lh_addPs_arg1_3_1) in
    (match _lh_matchIdent_1_2_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_1)
      | `Pc(_lh_addPs_Pc_0_6_2, _lh_addPs_Pc_1_6_2) -> 
        (let rec _lh_matchIdent_1_2_8 = (Lazy.force _lh_addPs_arg2_3_1) in
          (match _lh_matchIdent_1_2_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_1)
            | `Pc(_lh_addPs_Pc_0_6_3, _lh_addPs_Pc_1_6_3) -> 
              (`Pc((_lh_addPs_Pc_0_6_2 + _lh_addPs_Pc_0_6_3), ((addPs_lh__d3_d3 _lh_addPs_Pc_1_6_2) _lh_addPs_Pc_1_6_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d5 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPs_lh__d5 _lh_multPs_arg1_1_4 _lh_multPs_arg2_1_4 =
  (lazy (let rec _lh_matchIdent_2_5_6 = (Lazy.force _lh_multPs_arg1_1_4) in
    (match _lh_matchIdent_2_5_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_2_8, _lh_multPs_Pc_1_2_8) -> 
        (let rec _lh_matchIdent_2_5_7 = (Lazy.force _lh_multPs_arg2_1_4) in
          (match _lh_matchIdent_2_5_7 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_2_9, _lh_multPs_Pc_1_2_9) -> 
              (`Pc((_lh_multPs_Pc_0_2_8 * _lh_multPs_Pc_0_2_9), ((addPs_lh__d3_d3 ((addPs_lh__d3_d4 ((dotMult_lh__d1_d9 _lh_multPs_Pc_0_2_8) _lh_multPs_Pc_1_2_9)) ((dotMult_lh__d2_d0 _lh_multPs_Pc_0_2_9) _lh_multPs_Pc_1_2_8))) ((multPs_lh__d5 ((multPs_lh__d5 x_lh__d5) _lh_multPs_Pc_1_2_8)) _lh_multPs_Pc_1_2_9))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d1 _lh_addPs_arg1_9 _lh_addPs_arg2_9 =
  (lazy (let rec _lh_matchIdent_2_8 = (Lazy.force _lh_addPs_arg1_9) in
    (match _lh_matchIdent_2_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_9)
      | `Pc(_lh_addPs_Pc_0_1_8, _lh_addPs_Pc_1_1_8) -> 
        (let rec _lh_matchIdent_2_9 = (Lazy.force _lh_addPs_arg2_9) in
          (match _lh_matchIdent_2_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_9)
            | `Pc(_lh_addPs_Pc_0_1_9, _lh_addPs_Pc_1_1_9) -> 
              (`Pc((_lh_addPs_Pc_0_1_8 + _lh_addPs_Pc_0_1_9), ((addPs_lh__d3_d1 _lh_addPs_Pc_1_1_8) _lh_addPs_Pc_1_1_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d6 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d2_d1 _lh_dotMult_arg1_1_2 _lh_dotMult_arg2_1_2 =
  (lazy (let rec _lh_matchIdent_6_7 = (Lazy.force _lh_dotMult_arg2_1_2) in
    (match _lh_matchIdent_6_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_2, _lh_dotMult_Pc_1_1_2) -> 
        (`Pc((_lh_dotMult_arg1_1_2 * _lh_dotMult_Pc_0_1_2), ((dotMult_lh__d2_d1 _lh_dotMult_arg1_1_2) _lh_dotMult_Pc_1_1_2)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d6 _lh_addPs_arg1_2_7 _lh_addPs_arg2_2_7 =
  (lazy (let rec _lh_matchIdent_1_0_9 = (Lazy.force _lh_addPs_arg1_2_7) in
    (match _lh_matchIdent_1_0_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_7)
      | `Pc(_lh_addPs_Pc_0_5_4, _lh_addPs_Pc_1_5_4) -> 
        (let rec _lh_matchIdent_1_1_0 = (Lazy.force _lh_addPs_arg2_2_7) in
          (match _lh_matchIdent_1_1_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_7)
            | `Pc(_lh_addPs_Pc_0_5_5, _lh_addPs_Pc_1_5_5) -> 
              (`Pc((_lh_addPs_Pc_0_5_4 + _lh_addPs_Pc_0_5_5), ((addPs_lh__d3_d6 _lh_addPs_Pc_1_5_4) _lh_addPs_Pc_1_5_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d2_d2 _lh_dotMult_arg1_3_2 _lh_dotMult_arg2_3_2 =
  (lazy (let rec _lh_matchIdent_1_6_2 = (Lazy.force _lh_dotMult_arg2_3_2) in
    (match _lh_matchIdent_1_6_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_2, _lh_dotMult_Pc_1_3_2) -> 
        (`Pc((_lh_dotMult_arg1_3_2 * _lh_dotMult_Pc_0_3_2), ((dotMult_lh__d2_d2 _lh_dotMult_arg1_3_2) _lh_dotMult_Pc_1_3_2)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3_d5 _lh_addPs_arg1_4_0 _lh_addPs_arg2_4_0 =
  (lazy (let rec _lh_matchIdent_1_8_3 = (Lazy.force _lh_addPs_arg1_4_0) in
    (match _lh_matchIdent_1_8_3 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_0)
      | `Pc(_lh_addPs_Pc_0_8_0, _lh_addPs_Pc_1_8_0) -> 
        (let rec _lh_matchIdent_1_8_4 = (Lazy.force _lh_addPs_arg2_4_0) in
          (match _lh_matchIdent_1_8_4 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_0)
            | `Pc(_lh_addPs_Pc_0_8_1, _lh_addPs_Pc_1_8_1) -> 
              (`Pc((_lh_addPs_Pc_0_8_0 + _lh_addPs_Pc_0_8_1), ((addPs_lh__d3_d5 _lh_addPs_Pc_1_8_0) _lh_addPs_Pc_1_8_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d6 _lh_multPs_arg1_0 _lh_multPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_3_0 = (Lazy.force _lh_multPs_arg1_0) in
    (match _lh_matchIdent_3_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_0, _lh_multPs_Pc_1_0) -> 
        (let rec _lh_matchIdent_3_1 = (Lazy.force _lh_multPs_arg2_0) in
          (match _lh_matchIdent_3_1 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1, _lh_multPs_Pc_1_1) -> 
              (`Pc((_lh_multPs_Pc_0_0 * _lh_multPs_Pc_0_1), ((addPs_lh__d3_d5 ((addPs_lh__d3_d6 ((dotMult_lh__d2_d1 _lh_multPs_Pc_0_0) _lh_multPs_Pc_1_1)) ((dotMult_lh__d2_d2 _lh_multPs_Pc_0_1) _lh_multPs_Pc_1_0))) ((multPs_lh__d6 ((multPs_lh__d6 x_lh__d6) _lh_multPs_Pc_1_0)) _lh_multPs_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec compose_lh__d1 _lh_compose_arg1_0 _lh_compose_arg2_0 =
  (lazy (let rec _lh_matchIdent_3_7 = (Lazy.force _lh_compose_arg1_0) in
    (match _lh_matchIdent_3_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_compose_Pc_0_0, _lh_compose_Pc_1_0) -> 
        (let rec _lh_matchIdent_3_8 = (Lazy.force _lh_compose_arg2_0) in
          (match _lh_matchIdent_3_8 with
            | `Pz -> 
              (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz))))
            | `Pc(_lh_compose_Pc_0_1, _lh_compose_Pc_1_1) -> 
              (match _lh_compose_Pc_0_1 with
                | 0 -> 
                  (`Pc(_lh_compose_Pc_0_0, ((multPs_lh__d5 _lh_compose_Pc_1_1) ((compose_lh__d1 _lh_compose_Pc_1_0) (lazy (`Pc(0, _lh_compose_Pc_1_1)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh__d3_d1 (lazy (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz)))))) ((multPs_lh__d6 _lh_compose_arg2_0) ((compose_lh__d1 _lh_compose_Pc_1_0) _lh_compose_arg2_0)))))
            | _ -> 
              (Lazy.force ((addPs_lh__d3_d2 (lazy (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz)))))) ((multPs_lh__d7 _lh_compose_arg2_0) ((compose_lh__d1 _lh_compose_Pc_1_0) _lh_compose_arg2_0))))))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d4 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d3_d8 _lh_dotMult_arg1_6 _lh_dotMult_arg2_6 =
  (lazy (let rec _lh_matchIdent_5_4 = (Lazy.force _lh_dotMult_arg2_6) in
    (match _lh_matchIdent_5_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_6, _lh_dotMult_Pc_1_6) -> 
        (`Pc((_lh_dotMult_arg1_6 * _lh_dotMult_Pc_0_6), ((dotMult_lh__d3_d8 _lh_dotMult_arg1_6) _lh_dotMult_Pc_1_6)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d1 _lh_addPs_arg1_2_4 _lh_addPs_arg2_2_4 =
  (lazy (let rec _lh_matchIdent_1_0_3 = (Lazy.force _lh_addPs_arg1_2_4) in
    (match _lh_matchIdent_1_0_3 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_4)
      | `Pc(_lh_addPs_Pc_0_4_8, _lh_addPs_Pc_1_4_8) -> 
        (let rec _lh_matchIdent_1_0_4 = (Lazy.force _lh_addPs_arg2_2_4) in
          (match _lh_matchIdent_1_0_4 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_4)
            | `Pc(_lh_addPs_Pc_0_4_9, _lh_addPs_Pc_1_4_9) -> 
              (`Pc((_lh_addPs_Pc_0_4_8 + _lh_addPs_Pc_0_4_9), ((addPs_lh__d5_d1 _lh_addPs_Pc_1_4_8) _lh_addPs_Pc_1_4_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d7 _lh_dotMult_arg1_2_7 _lh_dotMult_arg2_2_7 =
  (lazy (let rec _lh_matchIdent_1_3_1 = (Lazy.force _lh_dotMult_arg2_2_7) in
    (match _lh_matchIdent_1_3_1 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_7, _lh_dotMult_Pc_1_2_7) -> 
        (`Pc((_lh_dotMult_arg1_2_7 * _lh_dotMult_Pc_0_2_7), ((dotMult_lh__d3_d7 _lh_dotMult_arg1_2_7) _lh_dotMult_Pc_1_2_7)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d2 _lh_addPs_arg1_4_4 _lh_addPs_arg2_4_4 =
  (lazy (let rec _lh_matchIdent_2_0_0 = (Lazy.force _lh_addPs_arg1_4_4) in
    (match _lh_matchIdent_2_0_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_4)
      | `Pc(_lh_addPs_Pc_0_8_8, _lh_addPs_Pc_1_8_8) -> 
        (let rec _lh_matchIdent_2_0_1 = (Lazy.force _lh_addPs_arg2_4_4) in
          (match _lh_matchIdent_2_0_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_4)
            | `Pc(_lh_addPs_Pc_0_8_9, _lh_addPs_Pc_1_8_9) -> 
              (`Pc((_lh_addPs_Pc_0_8_8 + _lh_addPs_Pc_0_8_9), ((addPs_lh__d5_d2 _lh_addPs_Pc_1_8_8) _lh_addPs_Pc_1_8_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d1_d2 _lh_multPs_arg1_1 _lh_multPs_arg2_1 =
  (lazy (let rec _lh_matchIdent_3_9 = (Lazy.force _lh_multPs_arg1_1) in
    (match _lh_matchIdent_3_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_2, _lh_multPs_Pc_1_2) -> 
        (let rec _lh_matchIdent_4_0 = (Lazy.force _lh_multPs_arg2_1) in
          (match _lh_matchIdent_4_0 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_3, _lh_multPs_Pc_1_3) -> 
              (`Pc((_lh_multPs_Pc_0_2 * _lh_multPs_Pc_0_3), ((addPs_lh__d5_d1 ((addPs_lh__d5_d2 ((dotMult_lh__d3_d7 _lh_multPs_Pc_0_2) _lh_multPs_Pc_1_3)) ((dotMult_lh__d3_d8 _lh_multPs_Pc_0_3) _lh_multPs_Pc_1_2))) ((multPs_lh__d1_d2 ((multPs_lh__d1_d2 x_lh__d1_d4) _lh_multPs_Pc_1_2)) _lh_multPs_Pc_1_3))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec composeSndLz_lh__d0 _lh_composeSndLz_arg1_0 _lh_composeSndLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_9 = (Lazy.force _lh_composeSndLz_arg1_0) in
    (match _lh_matchIdent_1_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_composeSndLz_Pc_0_0, _lh_composeSndLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_2_0 = (Lazy.force (Lazy.force _lh_composeSndLz_arg2_0)) in
          (match _lh_matchIdent_2_0 with
            | `Pz -> 
              (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz))))
            | `Pc(_lh_composeSndLz_Pc_0_1, _lh_composeSndLz_Pc_1_1) -> 
              (match _lh_composeSndLz_Pc_0_1 with
                | 0 -> 
                  (`Pc(_lh_composeSndLz_Pc_0_0, ((multPs_lh__d1_d2 _lh_composeSndLz_Pc_1_1) ((compose_lh__d1 _lh_composeSndLz_Pc_1_0) (lazy (`Pc(0, _lh_composeSndLz_Pc_1_1)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh__d2_d9 (lazy (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz)))))) ((multPsFstLz_lh__d0 _lh_composeSndLz_arg2_0) ((composeSndLz_lh__d0 _lh_composeSndLz_Pc_1_0) _lh_composeSndLz_arg2_0)))))
            | _ -> 
              (Lazy.force ((addPs_lh__d3_d0 (lazy (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz)))))) ((multPsFstLz_lh__d1 _lh_composeSndLz_arg2_0) ((composeSndLz_lh__d0 _lh_composeSndLz_Pc_1_0) _lh_composeSndLz_arg2_0))))))
      | _ -> 
        (failwith "error"))));;
let rec list_lh__d0 =
  (lazy (`Pc(1, list_lh__d0)));;
let rec tree_lh__d0 =
  (lazy (`Pc(0, ((composeSndLz_lh__d0 list_lh__d0) (lazy tree_lh__d0)))));;
let rec fromIntegerPs_lh__d1 _lh_fromIntegerPs_arg1_1 =
  (match _lh_fromIntegerPs_arg1_1 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_1, (lazy (`Pz))))));;
let rec fromIntegerPs_lh__d2 _lh_fromIntegerPs_arg1_2 =
  (match _lh_fromIntegerPs_arg1_2 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_2, (lazy (`Pz))))));;
let rec addPs_lh__d5_d4 _lh_addPs_arg1_1_1 _lh_addPs_arg2_1_1 =
  (lazy (let rec _lh_matchIdent_4_5 = (Lazy.force _lh_addPs_arg1_1_1) in
    (match _lh_matchIdent_4_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_1)
      | `Pc(_lh_addPs_Pc_0_2_2, _lh_addPs_Pc_1_2_2) -> 
        (let rec _lh_matchIdent_4_6 = (Lazy.force _lh_addPs_arg2_1_1) in
          (match _lh_matchIdent_4_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_1)
            | `Pc(_lh_addPs_Pc_0_2_3, _lh_addPs_Pc_1_2_3) -> 
              (`Pc((_lh_addPs_Pc_0_2_2 + _lh_addPs_Pc_0_2_3), ((addPs_lh__d5_d4 _lh_addPs_Pc_1_2_2) _lh_addPs_Pc_1_2_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d3_d9 _lh_dotMult_arg1_1_5 _lh_dotMult_arg2_1_5 =
  (lazy (let rec _lh_matchIdent_8_9 = (Lazy.force _lh_dotMult_arg2_1_5) in
    (match _lh_matchIdent_8_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_5, _lh_dotMult_Pc_1_1_5) -> 
        (`Pc((_lh_dotMult_arg1_1_5 * _lh_dotMult_Pc_0_1_5), ((dotMult_lh__d3_d9 _lh_dotMult_arg1_1_5) _lh_dotMult_Pc_1_1_5)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d3 _lh_addPs_arg1_4_3 _lh_addPs_arg2_4_3 =
  (lazy (let rec _lh_matchIdent_1_9_6 = (Lazy.force _lh_addPs_arg1_4_3) in
    (match _lh_matchIdent_1_9_6 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4_3)
      | `Pc(_lh_addPs_Pc_0_8_6, _lh_addPs_Pc_1_8_6) -> 
        (let rec _lh_matchIdent_1_9_7 = (Lazy.force _lh_addPs_arg2_4_3) in
          (match _lh_matchIdent_1_9_7 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4_3)
            | `Pc(_lh_addPs_Pc_0_8_7, _lh_addPs_Pc_1_8_7) -> 
              (`Pc((_lh_addPs_Pc_0_8_6 + _lh_addPs_Pc_0_8_7), ((addPs_lh__d5_d3 _lh_addPs_Pc_1_8_6) _lh_addPs_Pc_1_8_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d8 _lh_addPs_arg1_4 _lh_addPs_arg2_4 =
  (lazy (let rec _lh_matchIdent_9 = (Lazy.force _lh_addPs_arg1_4) in
    (match _lh_matchIdent_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4)
      | `Pc(_lh_addPs_Pc_0_8, _lh_addPs_Pc_1_8) -> 
        (let rec _lh_matchIdent_1_0 = (Lazy.force _lh_addPs_arg2_4) in
          (match _lh_matchIdent_1_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4)
            | `Pc(_lh_addPs_Pc_0_9, _lh_addPs_Pc_1_9) -> 
              (`Pc((_lh_addPs_Pc_0_8 + _lh_addPs_Pc_0_9), ((addPs_lh__d5_d8 _lh_addPs_Pc_1_8) _lh_addPs_Pc_1_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d7 _lh_addPs_arg1_7 _lh_addPs_arg2_7 =
  (lazy (let rec _lh_matchIdent_2_1 = (Lazy.force _lh_addPs_arg1_7) in
    (match _lh_matchIdent_2_1 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_7)
      | `Pc(_lh_addPs_Pc_0_1_4, _lh_addPs_Pc_1_1_4) -> 
        (let rec _lh_matchIdent_2_2 = (Lazy.force _lh_addPs_arg2_7) in
          (match _lh_matchIdent_2_2 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_7)
            | `Pc(_lh_addPs_Pc_0_1_5, _lh_addPs_Pc_1_1_5) -> 
              (`Pc((_lh_addPs_Pc_0_1_4 + _lh_addPs_Pc_0_1_5), ((addPs_lh__d5_d7 _lh_addPs_Pc_1_1_4) _lh_addPs_Pc_1_1_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d4_d4 _lh_dotMult_arg1_2_6 _lh_dotMult_arg2_2_6 =
  (lazy (let rec _lh_matchIdent_1_3_0 = (Lazy.force _lh_dotMult_arg2_2_6) in
    (match _lh_matchIdent_1_3_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_6, _lh_dotMult_Pc_1_2_6) -> 
        (`Pc((_lh_dotMult_arg1_2_6 * _lh_dotMult_Pc_0_2_6), ((dotMult_lh__d4_d4 _lh_dotMult_arg1_2_6) _lh_dotMult_Pc_1_2_6)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d4_d3 _lh_dotMult_arg1_3_4 _lh_dotMult_arg2_3_4 =
  (lazy (let rec _lh_matchIdent_1_6_4 = (Lazy.force _lh_dotMult_arg2_3_4) in
    (match _lh_matchIdent_1_6_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_4, _lh_dotMult_Pc_1_3_4) -> 
        (`Pc((_lh_dotMult_arg1_3_4 * _lh_dotMult_Pc_0_3_4), ((dotMult_lh__d4_d3 _lh_dotMult_arg1_3_4) _lh_dotMult_Pc_1_3_4)))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d6 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPs_lh__d1_d4 _lh_multPs_arg1_1_1 _lh_multPs_arg2_1_1 =
  (lazy (let rec _lh_matchIdent_2_3_0 = (Lazy.force _lh_multPs_arg1_1_1) in
    (match _lh_matchIdent_2_3_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_2_2, _lh_multPs_Pc_1_2_2) -> 
        (let rec _lh_matchIdent_2_3_1 = (Lazy.force _lh_multPs_arg2_1_1) in
          (match _lh_matchIdent_2_3_1 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_2_3, _lh_multPs_Pc_1_2_3) -> 
              (`Pc((_lh_multPs_Pc_0_2_2 * _lh_multPs_Pc_0_2_3), ((addPs_lh__d5_d7 ((addPs_lh__d5_d8 ((dotMult_lh__d4_d3 _lh_multPs_Pc_0_2_2) _lh_multPs_Pc_1_2_3)) ((dotMult_lh__d4_d4 _lh_multPs_Pc_0_2_3) _lh_multPs_Pc_1_2_2))) ((multPs_lh__d1_d4 ((multPs_lh__d1_d4 x_lh__d1_d6) _lh_multPs_Pc_1_2_2)) _lh_multPs_Pc_1_2_3))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d4_d2 _lh_dotMult_arg1_2 _lh_dotMult_arg2_2 =
  (lazy (let rec _lh_matchIdent_1_2 = (Lazy.force _lh_dotMult_arg2_2) in
    (match _lh_matchIdent_1_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2, _lh_dotMult_Pc_1_2) -> 
        (`Pc((_lh_dotMult_arg1_2 * _lh_dotMult_Pc_0_2), ((dotMult_lh__d4_d2 _lh_dotMult_arg1_2) _lh_dotMult_Pc_1_2)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d4_d1 _lh_dotMult_arg1_3_9 _lh_dotMult_arg2_3_9 =
  (lazy (let rec _lh_matchIdent_1_8_9 = (Lazy.force _lh_dotMult_arg2_3_9) in
    (match _lh_matchIdent_1_8_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_3_9, _lh_dotMult_Pc_1_3_9) -> 
        (`Pc((_lh_dotMult_arg1_3_9 * _lh_dotMult_Pc_0_3_9), ((dotMult_lh__d4_d1 _lh_dotMult_arg1_3_9) _lh_dotMult_Pc_1_3_9)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d6 _lh_addPs_arg1_5_1 _lh_addPs_arg2_5_1 =
  (lazy (let rec _lh_matchIdent_2_2_7 = (Lazy.force _lh_addPs_arg1_5_1) in
    (match _lh_matchIdent_2_2_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_1)
      | `Pc(_lh_addPs_Pc_0_1_0_2, _lh_addPs_Pc_1_1_0_2) -> 
        (let rec _lh_matchIdent_2_2_8 = (Lazy.force _lh_addPs_arg2_5_1) in
          (match _lh_matchIdent_2_2_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_1)
            | `Pc(_lh_addPs_Pc_0_1_0_3, _lh_addPs_Pc_1_1_0_3) -> 
              (`Pc((_lh_addPs_Pc_0_1_0_2 + _lh_addPs_Pc_0_1_0_3), ((addPs_lh__d5_d6 _lh_addPs_Pc_1_1_0_2) _lh_addPs_Pc_1_1_0_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d5_d5 _lh_addPs_arg1_1_0 _lh_addPs_arg2_1_0 =
  (lazy (let rec _lh_matchIdent_3_4 = (Lazy.force _lh_addPs_arg1_1_0) in
    (match _lh_matchIdent_3_4 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_0)
      | `Pc(_lh_addPs_Pc_0_2_0, _lh_addPs_Pc_1_2_0) -> 
        (let rec _lh_matchIdent_3_5 = (Lazy.force _lh_addPs_arg2_1_0) in
          (match _lh_matchIdent_3_5 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_0)
            | `Pc(_lh_addPs_Pc_0_2_1, _lh_addPs_Pc_1_2_1) -> 
              (`Pc((_lh_addPs_Pc_0_2_0 + _lh_addPs_Pc_0_2_1), ((addPs_lh__d5_d5 _lh_addPs_Pc_1_2_0) _lh_addPs_Pc_1_2_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d5 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPs_lh__d1_d3 _lh_multPs_arg1_1_3 _lh_multPs_arg2_1_3 =
  (lazy (let rec _lh_matchIdent_2_5_3 = (Lazy.force _lh_multPs_arg1_1_3) in
    (match _lh_matchIdent_2_5_3 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_2_6, _lh_multPs_Pc_1_2_6) -> 
        (let rec _lh_matchIdent_2_5_4 = (Lazy.force _lh_multPs_arg2_1_3) in
          (match _lh_matchIdent_2_5_4 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_2_7, _lh_multPs_Pc_1_2_7) -> 
              (`Pc((_lh_multPs_Pc_0_2_6 * _lh_multPs_Pc_0_2_7), ((addPs_lh__d5_d5 ((addPs_lh__d5_d6 ((dotMult_lh__d4_d1 _lh_multPs_Pc_0_2_6) _lh_multPs_Pc_1_2_7)) ((dotMult_lh__d4_d2 _lh_multPs_Pc_0_2_7) _lh_multPs_Pc_1_2_6))) ((multPs_lh__d1_d3 ((multPs_lh__d1_d3 x_lh__d1_d5) _lh_multPs_Pc_1_2_6)) _lh_multPs_Pc_1_2_7))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d4_d0 _lh_dotMult_arg1_2_4 _lh_dotMult_arg2_2_4 =
  (lazy (let rec _lh_matchIdent_1_2_5 = (Lazy.force _lh_dotMult_arg2_2_4) in
    (match _lh_matchIdent_1_2_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_4, _lh_dotMult_Pc_1_2_4) -> 
        (`Pc((_lh_dotMult_arg1_2_4 * _lh_dotMult_Pc_0_2_4), ((dotMult_lh__d4_d0 _lh_dotMult_arg1_2_4) _lh_dotMult_Pc_1_2_4)))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d1_d7 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPsLzLz_lh__d0 _lh_multPsLzLz_arg1_0 _lh_multPsLzLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_5 = (Lazy.force (Lazy.force _lh_multPsLzLz_arg1_0)) in
    (match _lh_matchIdent_1_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsLzLz_Pc_0_0, _lh_multPsLzLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_1_6 = (Lazy.force (Lazy.force _lh_multPsLzLz_arg2_0)) in
          (match _lh_matchIdent_1_6 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsLzLz_Pc_0_1, _lh_multPsLzLz_Pc_1_1) -> 
              (`Pc((_lh_multPsLzLz_Pc_0_0 * _lh_multPsLzLz_Pc_0_1), ((addPs_lh__d5_d3 ((addPs_lh__d5_d4 ((dotMult_lh__d3_d9 _lh_multPsLzLz_Pc_0_0) _lh_multPsLzLz_Pc_1_1)) ((dotMult_lh__d4_d0 _lh_multPsLzLz_Pc_0_1) _lh_multPsLzLz_Pc_1_0))) ((multPs_lh__d1_d3 ((multPs_lh__d1_d4 x_lh__d1_d7) _lh_multPsLzLz_Pc_1_0)) _lh_multPsLzLz_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec ts_lh__d0 =
  (lazy (`Pc(1, ((multPsLzLz_lh__d0 (lazy ts_lh__d0)) (lazy ts_lh__d0)))));;
let rec negatePs_lh__d8 _lh_negatePs_arg1_6 =
  (lazy (let rec _lh_matchIdent_1_4_6 = (Lazy.force _lh_negatePs_arg1_6) in
    (match _lh_matchIdent_1_4_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_1_1, _lh_negatePs_Pc_1_1_1) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_1_1), (negatePs_lh__d8 _lh_negatePs_Pc_1_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d9 _lh_addPs_arg1_6 _lh_addPs_arg2_6 =
  (lazy (let rec _lh_matchIdent_1_7 = (Lazy.force _lh_addPs_arg1_6) in
    (match _lh_matchIdent_1_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_6)
      | `Pc(_lh_addPs_Pc_0_1_2, _lh_addPs_Pc_1_1_2) -> 
        (let rec _lh_matchIdent_1_8 = (Lazy.force _lh_addPs_arg2_6) in
          (match _lh_matchIdent_1_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_6)
            | `Pc(_lh_addPs_Pc_0_1_3, _lh_addPs_Pc_1_1_3) -> 
              (`Pc((_lh_addPs_Pc_0_1_2 + _lh_addPs_Pc_0_1_3), ((addPs_lh__d9 _lh_addPs_Pc_1_1_2) _lh_addPs_Pc_1_1_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d4 _lh_minusPs_arg1_3 _lh_minusPs_arg2_3 =
  ((addPs_lh__d9 _lh_minusPs_arg1_3) (negatePs_lh__d8 _lh_minusPs_arg2_3));;
let rec addPs_lh__d1_d1 _lh_addPs_arg1_1_8 _lh_addPs_arg2_1_8 =
  (lazy (let rec _lh_matchIdent_6_8 = (Lazy.force _lh_addPs_arg1_1_8) in
    (match _lh_matchIdent_6_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_8)
      | `Pc(_lh_addPs_Pc_0_3_6, _lh_addPs_Pc_1_3_6) -> 
        (let rec _lh_matchIdent_6_9 = (Lazy.force _lh_addPs_arg2_1_8) in
          (match _lh_matchIdent_6_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_8)
            | `Pc(_lh_addPs_Pc_0_3_7, _lh_addPs_Pc_1_3_7) -> 
              (`Pc((_lh_addPs_Pc_0_3_6 + _lh_addPs_Pc_0_3_7), ((addPs_lh__d1_d1 _lh_addPs_Pc_1_3_6) _lh_addPs_Pc_1_3_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec x_lh__d0 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d5 _lh_dotMult_arg1_1_9 _lh_dotMult_arg2_1_9 =
  (lazy (let rec _lh_matchIdent_1_0_2 = (Lazy.force _lh_dotMult_arg2_1_9) in
    (match _lh_matchIdent_1_0_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_9, _lh_dotMult_Pc_1_1_9) -> 
        (`Pc((_lh_dotMult_arg1_1_9 * _lh_dotMult_Pc_0_1_9), ((dotMult_lh__d5 _lh_dotMult_arg1_1_9) _lh_dotMult_Pc_1_1_9)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d4 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_dotMult_arg2_0) in
    (match _lh_matchIdent_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_0, _lh_dotMult_Pc_1_0) -> 
        (`Pc((_lh_dotMult_arg1_0 * _lh_dotMult_Pc_0_0), ((dotMult_lh__d4 _lh_dotMult_arg1_0) _lh_dotMult_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d0 _lh_addPs_arg1_2 _lh_addPs_arg2_2 =
  (lazy (let rec _lh_matchIdent_5 = (Lazy.force _lh_addPs_arg1_2) in
    (match _lh_matchIdent_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2)
      | `Pc(_lh_addPs_Pc_0_4, _lh_addPs_Pc_1_4) -> 
        (let rec _lh_matchIdent_6 = (Lazy.force _lh_addPs_arg2_2) in
          (match _lh_matchIdent_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2)
            | `Pc(_lh_addPs_Pc_0_5, _lh_addPs_Pc_1_5) -> 
              (`Pc((_lh_addPs_Pc_0_4 + _lh_addPs_Pc_0_5), ((addPs_lh__d1_d0 _lh_addPs_Pc_1_4) _lh_addPs_Pc_1_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d0 _lh_multPs_arg1_7 _lh_multPs_arg2_7 =
  (lazy (let rec _lh_matchIdent_1_4_9 = (Lazy.force _lh_multPs_arg1_7) in
    (match _lh_matchIdent_1_4_9 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_1_4, _lh_multPs_Pc_1_1_4) -> 
        (let rec _lh_matchIdent_1_5_0 = (Lazy.force _lh_multPs_arg2_7) in
          (match _lh_matchIdent_1_5_0 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1_5, _lh_multPs_Pc_1_1_5) -> 
              (`Pc((_lh_multPs_Pc_0_1_4 * _lh_multPs_Pc_0_1_5), ((addPs_lh__d1_d0 ((addPs_lh__d1_d1 ((dotMult_lh__d4 _lh_multPs_Pc_0_1_4) _lh_multPs_Pc_1_1_5)) ((dotMult_lh__d5 _lh_multPs_Pc_0_1_5) _lh_multPs_Pc_1_1_4))) ((multPs_lh__d0 ((multPs_lh__d0 x_lh__d0) _lh_multPs_Pc_1_1_4)) _lh_multPs_Pc_1_1_5))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec fromIntegerPs_lh__d3 _lh_fromIntegerPs_arg1_0 =
  (match _lh_fromIntegerPs_arg1_0 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_0, (lazy (`Pz))))));;
let rec powerPs_lh__d0 _lh_powerPs_arg1_0 _lh_powerPs_arg2_0 =
  (if (_lh_powerPs_arg2_0 <= 0) then
    (fromIntegerPs_lh__d3 1)
  else
    ((multPs_lh__d0 _lh_powerPs_arg1_0) ((powerPs_lh__d0 _lh_powerPs_arg1_0) (_lh_powerPs_arg2_0 - 1))));;
let rec integral_lh__d3 _lh_integral_arg1_1 =
  (let rec int1_1_0 = (fun fss_4 n_1_0 -> 
    (lazy (let rec _lh_matchIdent_1_1_4 = (Lazy.force fss_4) in
      (match _lh_matchIdent_1_1_4 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_8, _lh_int1_Pc_1_8) -> 
          (`Pc((_lh_int1_Pc_0_8 / n_1_0), ((int1_1_0 _lh_int1_Pc_1_8) (n_1_0 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1_0 _lh_integral_arg1_1) 1)))));;
let rec negatePs_lh__d1_d1 _lh_negatePs_arg1_5 =
  (lazy (let rec _lh_matchIdent_1_4_1 = (Lazy.force _lh_negatePs_arg1_5) in
    (_lh_matchIdent_1_4_1 99)));;
let rec addPs_lh__d2_d4 _lh_addPs_arg1_8 _lh_addPs_arg2_8 =
  (lazy (let rec _lh_matchIdent_2_6 = (Lazy.force _lh_addPs_arg1_8) in
    (match _lh_matchIdent_2_6 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_8)
      | `Pc(_lh_addPs_Pc_0_1_6, _lh_addPs_Pc_1_1_6) -> 
        (let rec _lh_matchIdent_2_7 = (Lazy.force _lh_addPs_arg2_8) in
          (match _lh_matchIdent_2_7 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_8)
            | `Pc(_lh_addPs_Pc_0_1_7, _lh_addPs_Pc_1_1_7) -> 
              (`Pc((_lh_addPs_Pc_0_1_6 + _lh_addPs_Pc_0_1_7), ((addPs_lh__d2_d4 _lh_addPs_Pc_1_1_6) _lh_addPs_Pc_1_1_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d5 _lh_minusPs_arg1_0 _lh_minusPs_arg2_0 =
  ((addPs_lh__d2_d4 _lh_minusPs_arg1_0) (negatePs_lh__d1_d1 _lh_minusPs_arg2_0));;
let rec integralLz_lh__d2 _lh_integralLz_arg1_1 =
  (let rec int1_4 = (fun fss_1 n_4 -> 
    (lazy (let rec _lh_matchIdent_8_5 = (Lazy.force (Lazy.force fss_1)) in
      (match _lh_matchIdent_8_5 with
        | `Pz -> 
          (fun _lh_dummy_7 -> 
            (`Pz))
        | `Pc(_lh_int1_Pc_0_3, _lh_int1_Pc_1_3) -> 
          (let rec _lh_negatePs_Pc_1_4 = ((int1_4 (lazy _lh_int1_Pc_1_3)) (n_4 + 1)) in
            (let rec _lh_negatePs_Pc_0_4 = (_lh_int1_Pc_0_3 / n_4) in
              (fun _lh_dummy_8 -> 
                (`Pc((0 - _lh_negatePs_Pc_0_4), (negatePs_lh__d1_d1 _lh_negatePs_Pc_1_4))))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (let rec _lh_negatePs_Pc_1_5 = ((int1_4 _lh_integralLz_arg1_1) 1) in
      (let rec _lh_negatePs_Pc_0_5 = 0 in
        (fun _lh_dummy_9 -> 
          (`Pc((0 - _lh_negatePs_Pc_0_5), (negatePs_lh__d1_d1 _lh_negatePs_Pc_1_5))))))));;
let rec sinx_lh__d0 _lh_sinx_arg1_0 =
  (integral_lh__d3 ((minusPs_lh__d5 (lazy (`Pc(1, (lazy (`Pz)))))) (integralLz_lh__d2 (lazy (sinx_lh__d0 0)))));;
let rec extract_lh__d1 _lh_extract_arg1_1 _lh_extract_arg2_1 =
  (if (_lh_extract_arg1_1 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_1_3_9 = (Lazy.force _lh_extract_arg2_1) in
      (match _lh_matchIdent_1_3_9 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_1, _lh_extract_Pc_1_1) -> 
          (`LH_C(_lh_extract_Pc_0_1, ((extract_lh__d1 (_lh_extract_arg1_1 - 1)) _lh_extract_Pc_1_1)))
        | _ -> 
          (failwith "error"))));;
let rec negatePs_lh__d3 _lh_negatePs_arg1_1 =
  (lazy (let rec _lh_matchIdent_7_9 = (Lazy.force _lh_negatePs_arg1_1) in
    (_lh_matchIdent_7_9 99)));;
let rec dotMult_lh__d1 _lh_dotMult_arg1_5 _lh_dotMult_arg2_5 =
  (lazy (let rec _lh_matchIdent_4_7 = (Lazy.force _lh_dotMult_arg2_5) in
    (match _lh_matchIdent_4_7 with
      | `Pz -> 
        (fun _lh_dummy_2 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_5, _lh_dotMult_Pc_1_5) -> 
        (let rec _lh_negatePs_Pc_1_1 = ((dotMult_lh__d1 _lh_dotMult_arg1_5) _lh_dotMult_Pc_1_5) in
          (let rec _lh_negatePs_Pc_0_1 = (_lh_dotMult_arg1_5 * _lh_dotMult_Pc_0_5) in
            (fun _lh_dummy_3 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_1), (negatePs_lh__d3 _lh_negatePs_Pc_1_1))))))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3 _lh_addPs_arg1_2_3 _lh_addPs_arg2_2_3 =
  (lazy (let rec _lh_matchIdent_1_0_0 = (Lazy.force _lh_addPs_arg1_2_3) in
    (match _lh_matchIdent_1_0_0 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_3)
      | `Pc(_lh_addPs_Pc_0_4_6, _lh_addPs_Pc_1_4_6) -> 
        (let rec _lh_matchIdent_1_0_1 = (Lazy.force _lh_addPs_arg2_2_3) in
          (match _lh_matchIdent_1_0_1 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_3)
            | `Pc(_lh_addPs_Pc_0_4_7, _lh_addPs_Pc_1_4_7) -> 
              (`Pc((_lh_addPs_Pc_0_4_6 + _lh_addPs_Pc_0_4_7), ((addPs_lh__d3 _lh_addPs_Pc_1_4_6) _lh_addPs_Pc_1_4_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d2 _lh_negatePs_arg1_7 =
  (lazy (let rec _lh_matchIdent_1_5_5 = (Lazy.force _lh_negatePs_arg1_7) in
    (_lh_matchIdent_1_5_5 99)));;
let rec dotMult_lh__d0 _lh_dotMult_arg1_4_4 _lh_dotMult_arg2_4_4 =
  (lazy (let rec _lh_matchIdent_2_2_9 = (Lazy.force _lh_dotMult_arg2_4_4) in
    (match _lh_matchIdent_2_2_9 with
      | `Pz -> 
        (fun _lh_dummy_2_6 -> 
          (`Pz))
      | `Pc(_lh_dotMult_Pc_0_4_4, _lh_dotMult_Pc_1_4_4) -> 
        (let rec _lh_negatePs_Pc_1_1_7 = ((dotMult_lh__d0 _lh_dotMult_arg1_4_4) _lh_dotMult_Pc_1_4_4) in
          (let rec _lh_negatePs_Pc_0_1_7 = (_lh_dotMult_arg1_4_4 * _lh_dotMult_Pc_0_4_4) in
            (fun _lh_dummy_2_7 -> 
              (`Pc((0 - _lh_negatePs_Pc_0_1_7), (negatePs_lh__d2 _lh_negatePs_Pc_1_1_7))))))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4 _lh_addPs_arg1_2_2 _lh_addPs_arg2_2_2 =
  (lazy (let rec _lh_matchIdent_8_2 = (Lazy.force _lh_addPs_arg1_2_2) in
    (match _lh_matchIdent_8_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2_2)
      | `Pc(_lh_addPs_Pc_0_4_4, _lh_addPs_Pc_1_4_4) -> 
        (let rec _lh_matchIdent_8_3 = (Lazy.force _lh_addPs_arg2_2_2) in
          (match _lh_matchIdent_8_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2_2)
            | `Pc(_lh_addPs_Pc_0_4_5, _lh_addPs_Pc_1_4_5) -> 
              (`Pc((_lh_addPs_Pc_0_4_4 + _lh_addPs_Pc_0_4_5), ((addPs_lh__d4 _lh_addPs_Pc_1_4_4) _lh_addPs_Pc_1_4_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh__d0 _lh_divPs_arg1_1 _lh_divPs_arg2_1 =
  (lazy (let rec _lh_matchIdent_1_5_1 = (Lazy.force _lh_divPs_arg1_1) in
    (match _lh_matchIdent_1_5_1 with
      | `Pz -> 
        (let rec _lh_matchIdent_1_5_2 = (Lazy.force _lh_divPs_arg2_1) in
          (match _lh_matchIdent_1_5_2 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_4, _lh_divPs_Pc_1_4) -> 
              (match _lh_divPs_Pc_0_4 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d0 (lazy (`Pz))) _lh_divPs_Pc_1_4))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_5, _lh_divPs_Pc_1_5) -> 
        (match _lh_divPs_Pc_0_5 with
          | 0 -> 
            (let rec _lh_matchIdent_1_5_3 = (Lazy.force _lh_divPs_arg2_1) in
              (match _lh_matchIdent_1_5_3 with
                | `Pc(_lh_divPs_Pc_0_6, _lh_divPs_Pc_1_6) -> 
                  (match _lh_divPs_Pc_0_6 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d0 _lh_divPs_Pc_1_5) _lh_divPs_Pc_1_6))
                    | _ -> 
                      (let rec q_2 = 0 in
                        (`Pc(q_2, ((divPs_lh__d0 ((addPs_lh__d3 _lh_divPs_Pc_1_5) (negatePs_lh__d2 ((dotMult_lh__d0 q_2) _lh_divPs_Pc_1_6)))) (lazy (`Pc(_lh_divPs_Pc_0_6, _lh_divPs_Pc_1_6))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_1_5_4 = (Lazy.force _lh_divPs_arg2_1) in
              (match _lh_matchIdent_1_5_4 with
                | `Pc(_lh_divPs_Pc_0_7, _lh_divPs_Pc_1_7) -> 
                  (let rec q_3 = (_lh_divPs_Pc_0_5 / _lh_divPs_Pc_0_7) in
                    (`Pc(q_3, ((divPs_lh__d0 ((addPs_lh__d4 _lh_divPs_Pc_1_5) (negatePs_lh__d3 ((dotMult_lh__d1 q_3) _lh_divPs_Pc_1_7)))) (lazy (`Pc(_lh_divPs_Pc_0_7, _lh_divPs_Pc_1_7)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec extract_lh__d0 _lh_extract_arg1_2 _lh_extract_arg2_2 =
  (if (_lh_extract_arg1_2 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_1_5_8 = (Lazy.force _lh_extract_arg2_2) in
      (match _lh_matchIdent_1_5_8 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_2, _lh_extract_Pc_1_2) -> 
          (`LH_C(_lh_extract_Pc_0_2, ((extract_lh__d0 (_lh_extract_arg1_2 - 1)) _lh_extract_Pc_1_2)))
        | _ -> 
          (failwith "error"))));;
let rec negatePs_lh__d1_d2 _lh_negatePs_arg1_3 =
  (lazy (let rec _lh_matchIdent_1_2_9 = (Lazy.force _lh_negatePs_arg1_3) in
    (_lh_matchIdent_1_2_9 99)));;
let rec integralLz_lh__d3 _lh_integralLz_arg1_3 =
  (let rec int1_1_5 = (fun fss_9 n_1_6 -> 
    (lazy (let rec _lh_matchIdent_2_5_5 = (Lazy.force (Lazy.force fss_9)) in
      (match _lh_matchIdent_2_5_5 with
        | `Pz -> 
          (fun _lh_dummy_2_9 -> 
            (`Pz))
        | `Pc(_lh_int1_Pc_0_1_1, _lh_int1_Pc_1_1_1) -> 
          (let rec _lh_negatePs_Pc_1_1_9 = ((int1_1_5 (lazy _lh_int1_Pc_1_1_1)) (n_1_6 + 1)) in
            (let rec _lh_negatePs_Pc_0_1_9 = (_lh_int1_Pc_0_1_1 / n_1_6) in
              (fun _lh_dummy_3_0 -> 
                (`Pc((0 - _lh_negatePs_Pc_0_1_9), (negatePs_lh__d1_d2 _lh_negatePs_Pc_1_1_9))))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (let rec _lh_negatePs_Pc_1_2_0 = ((int1_1_5 _lh_integralLz_arg1_3) 1) in
      (let rec _lh_negatePs_Pc_0_2_0 = 0 in
        (fun _lh_dummy_3_1 -> 
          (`Pc((0 - _lh_negatePs_Pc_0_2_0), (negatePs_lh__d1_d2 _lh_negatePs_Pc_1_2_0))))))));;
let rec integral_lh__d4 _lh_integral_arg1_2 =
  (let rec int1_1_1 = (fun fss_5 n_1_1 -> 
    (lazy (let rec _lh_matchIdent_1_2_1 = (Lazy.force fss_5) in
      (match _lh_matchIdent_1_2_1 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_9, _lh_int1_Pc_1_9) -> 
          (`Pc((_lh_int1_Pc_0_9 / n_1_1), ((int1_1_1 _lh_int1_Pc_1_9) (n_1_1 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1_1 _lh_integral_arg1_2) 1)))));;
let rec addPs_lh__d2_d5 _lh_addPs_arg1_1_5 _lh_addPs_arg2_1_5 =
  (lazy (let rec _lh_matchIdent_5_8 = (Lazy.force _lh_addPs_arg1_1_5) in
    (match _lh_matchIdent_5_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1_5)
      | `Pc(_lh_addPs_Pc_0_3_0, _lh_addPs_Pc_1_3_0) -> 
        (let rec _lh_matchIdent_5_9 = (Lazy.force _lh_addPs_arg2_1_5) in
          (match _lh_matchIdent_5_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1_5)
            | `Pc(_lh_addPs_Pc_0_3_1, _lh_addPs_Pc_1_3_1) -> 
              (`Pc((_lh_addPs_Pc_0_3_0 + _lh_addPs_Pc_0_3_1), ((addPs_lh__d2_d5 _lh_addPs_Pc_1_3_0) _lh_addPs_Pc_1_3_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d6 _lh_minusPs_arg1_6 _lh_minusPs_arg2_6 =
  ((addPs_lh__d2_d5 _lh_minusPs_arg1_6) (negatePs_lh__d1_d2 _lh_minusPs_arg2_6));;
let rec sinx_lh__d1 _lh_sinx_arg1_1 =
  (integral_lh__d4 ((minusPs_lh__d6 (lazy (`Pc(1, (lazy (`Pz)))))) (integralLz_lh__d3 (lazy (sinx_lh__d1 0)))));;
let rec negatePs_lh__d6 _lh_negatePs_arg1_9 =
  (lazy (let rec _lh_matchIdent_1_7_4 = (Lazy.force _lh_negatePs_arg1_9) in
    (match _lh_matchIdent_1_7_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_1_3, _lh_negatePs_Pc_1_1_3) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_1_3), (negatePs_lh__d6 _lh_negatePs_Pc_1_1_3)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d7 _lh_addPs_arg1_3_3 _lh_addPs_arg2_3_3 =
  (lazy (let rec _lh_matchIdent_1_3_5 = (Lazy.force _lh_addPs_arg1_3_3) in
    (match _lh_matchIdent_1_3_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_3)
      | `Pc(_lh_addPs_Pc_0_6_6, _lh_addPs_Pc_1_6_6) -> 
        (let rec _lh_matchIdent_1_3_6 = (Lazy.force _lh_addPs_arg2_3_3) in
          (match _lh_matchIdent_1_3_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_3)
            | `Pc(_lh_addPs_Pc_0_6_7, _lh_addPs_Pc_1_6_7) -> 
              (`Pc((_lh_addPs_Pc_0_6_6 + _lh_addPs_Pc_0_6_7), ((addPs_lh__d7 _lh_addPs_Pc_1_6_6) _lh_addPs_Pc_1_6_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d2 _lh_minusPs_arg1_5 _lh_minusPs_arg2_5 =
  ((addPs_lh__d7 _lh_minusPs_arg1_5) (negatePs_lh__d6 _lh_minusPs_arg2_5));;
let rec fromIntegerPs_lh__d4 _lh_fromIntegerPs_arg1_6 =
  (match _lh_fromIntegerPs_arg1_6 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_6, (lazy (`Pz))))));;
let rec x_lh__d1 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d6 _lh_dotMult_arg1_1_0 _lh_dotMult_arg2_1_0 =
  (lazy (let rec _lh_matchIdent_6_0 = (Lazy.force _lh_dotMult_arg2_1_0) in
    (match _lh_matchIdent_6_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_1_0, _lh_dotMult_Pc_1_1_0) -> 
        (`Pc((_lh_dotMult_arg1_1_0 * _lh_dotMult_Pc_0_1_0), ((dotMult_lh__d6 _lh_dotMult_arg1_1_0) _lh_dotMult_Pc_1_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec dotMult_lh__d7 _lh_dotMult_arg1_2_0 _lh_dotMult_arg2_2_0 =
  (lazy (let rec _lh_matchIdent_1_1_7 = (Lazy.force _lh_dotMult_arg2_2_0) in
    (match _lh_matchIdent_1_1_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_2_0, _lh_dotMult_Pc_1_2_0) -> 
        (`Pc((_lh_dotMult_arg1_2_0 * _lh_dotMult_Pc_0_2_0), ((dotMult_lh__d7 _lh_dotMult_arg1_2_0) _lh_dotMult_Pc_1_2_0)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d3 _lh_addPs_arg1_3_2 _lh_addPs_arg2_3_2 =
  (lazy (let rec _lh_matchIdent_1_3_2 = (Lazy.force _lh_addPs_arg1_3_2) in
    (match _lh_matchIdent_1_3_2 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3_2)
      | `Pc(_lh_addPs_Pc_0_6_4, _lh_addPs_Pc_1_6_4) -> 
        (let rec _lh_matchIdent_1_3_3 = (Lazy.force _lh_addPs_arg2_3_2) in
          (match _lh_matchIdent_1_3_3 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3_2)
            | `Pc(_lh_addPs_Pc_0_6_5, _lh_addPs_Pc_1_6_5) -> 
              (`Pc((_lh_addPs_Pc_0_6_4 + _lh_addPs_Pc_0_6_5), ((addPs_lh__d1_d3 _lh_addPs_Pc_1_6_4) _lh_addPs_Pc_1_6_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d1_d2 _lh_addPs_arg1_5_2 _lh_addPs_arg2_5_2 =
  (lazy (let rec _lh_matchIdent_2_3_5 = (Lazy.force _lh_addPs_arg1_5_2) in
    (match _lh_matchIdent_2_3_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5_2)
      | `Pc(_lh_addPs_Pc_0_1_0_4, _lh_addPs_Pc_1_1_0_4) -> 
        (let rec _lh_matchIdent_2_3_6 = (Lazy.force _lh_addPs_arg2_5_2) in
          (match _lh_matchIdent_2_3_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5_2)
            | `Pc(_lh_addPs_Pc_0_1_0_5, _lh_addPs_Pc_1_1_0_5) -> 
              (`Pc((_lh_addPs_Pc_0_1_0_4 + _lh_addPs_Pc_0_1_0_5), ((addPs_lh__d1_d2 _lh_addPs_Pc_1_1_0_4) _lh_addPs_Pc_1_1_0_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d1 _lh_multPs_arg1_1_0 _lh_multPs_arg2_1_0 =
  (lazy (let rec _lh_matchIdent_2_1_8 = (Lazy.force _lh_multPs_arg1_1_0) in
    (match _lh_matchIdent_2_1_8 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_2_0, _lh_multPs_Pc_1_2_0) -> 
        (let rec _lh_matchIdent_2_1_9 = (Lazy.force _lh_multPs_arg2_1_0) in
          (match _lh_matchIdent_2_1_9 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_2_1, _lh_multPs_Pc_1_2_1) -> 
              (`Pc((_lh_multPs_Pc_0_2_0 * _lh_multPs_Pc_0_2_1), ((addPs_lh__d1_d2 ((addPs_lh__d1_d3 ((dotMult_lh__d6 _lh_multPs_Pc_0_2_0) _lh_multPs_Pc_1_2_1)) ((dotMult_lh__d7 _lh_multPs_Pc_0_2_1) _lh_multPs_Pc_1_2_0))) ((multPs_lh__d1 ((multPs_lh__d1 x_lh__d1) _lh_multPs_Pc_1_2_0)) _lh_multPs_Pc_1_2_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec powerPs_lh__d1 _lh_powerPs_arg1_1 _lh_powerPs_arg2_1 =
  (if (_lh_powerPs_arg2_1 <= 0) then
    (fromIntegerPs_lh__d4 1)
  else
    ((multPs_lh__d1 _lh_powerPs_arg1_1) ((powerPs_lh__d1 _lh_powerPs_arg1_1) (_lh_powerPs_arg2_1 - 1))));;
let rec testPower_nofib_lh__d0 _lh_testPower_nofib_arg1_0 =
  (`LH_C(((extract_lh__d0 _lh_testPower_nofib_arg1_0) ((minusPs_lh__d2 (sinx_lh__d0 0)) (sqrtPs_lh__d0 ((minusPs_lh__d3 (fromIntegerPs_lh__d0 1)) ((powerPs_lh__d0 (cosx_lh__d0 0)) 2))))), (`LH_C(((extract_lh__d1 _lh_testPower_nofib_arg1_0) ((minusPs_lh__d4 ((divPs_lh__d0 (sinx_lh__d1 0)) (cosx_lh__d1 0))) (revert_lh__d0 (integral_lh__d2 ((divPs_lh__d1 (fromIntegerPs_lh__d1 1)) ((addPs_lh__d0 (fromIntegerPs_lh__d2 1)) ((powerPs_lh__d1 x_lh__d1_d8) 2))))))), (`LH_C(((extract_lh__d2 _lh_testPower_nofib_arg1_0) ts_lh__d0), (`LH_C(((extract_lh__d3 _lh_testPower_nofib_arg1_0) tree_lh__d0), (`LH_N)))))))));;
end;;

