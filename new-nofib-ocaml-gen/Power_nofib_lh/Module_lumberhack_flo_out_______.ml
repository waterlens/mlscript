

(* lumberhack_flo_out *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_flo_out_______ = struct
let rec integralLz_lh__d2 _lh_integralLz_arg1_2 =
  (let rec int1_8 = (fun fss_4 n_8 -> 
    (lazy (let rec _lh_matchIdent_2_3 = (Lazy.force (Lazy.force fss_4)) in
      (match _lh_matchIdent_2_3 with
        | `Pz -> 
          (fun int1_9 n_9 -> 
            (`Pz))
        | `Pc(_lh_int1_Pc_0_4, _lh_int1_Pc_1_4) -> 
          (let rec _lh_int1_Pc_1_5 = ((int1_8 (lazy _lh_int1_Pc_1_4)) (n_8 + 1)) in
            (let rec _lh_int1_Pc_0_5 = (_lh_int1_Pc_0_4 / n_8) in
              (fun int1_1_0 n_1_0 -> 
                (`Pc((_lh_int1_Pc_0_5 / n_1_0), ((int1_1_0 _lh_int1_Pc_1_5) (n_1_0 + 1)))))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (let rec _lh_int1_Pc_1_6 = ((int1_8 _lh_integralLz_arg1_2) 1) in
      (let rec _lh_int1_Pc_0_6 = 0 in
        (fun int1_1_1 n_1_1 -> 
          (`Pc((_lh_int1_Pc_0_6 / n_1_1), ((int1_1_1 _lh_int1_Pc_1_6) (n_1_1 + 1)))))))));;
let rec addPs_lh__d6 _lh_addPs_arg1_4 _lh_addPs_arg2_4 =
  (lazy (let rec _lh_matchIdent_4_9 = (Lazy.force _lh_addPs_arg1_4) in
    (match _lh_matchIdent_4_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_4)
      | `Pc(_lh_addPs_Pc_0_8, _lh_addPs_Pc_1_8) -> 
        (let rec _lh_matchIdent_5_0 = (Lazy.force _lh_addPs_arg2_4) in
          (match _lh_matchIdent_5_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_4)
            | `Pc(_lh_addPs_Pc_0_9, _lh_addPs_Pc_1_9) -> 
              (`Pc((_lh_addPs_Pc_0_8 + _lh_addPs_Pc_0_9), ((addPs_lh__d6 _lh_addPs_Pc_1_8) _lh_addPs_Pc_1_9)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d3 _lh_negatePs_arg1_0 =
  (lazy (let rec _lh_matchIdent_2_0 = (Lazy.force _lh_negatePs_arg1_0) in
    (match _lh_matchIdent_2_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_0, _lh_negatePs_Pc_1_0) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_0), (negatePs_lh__d3 _lh_negatePs_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d5 _lh_minusPs_arg1_0 _lh_minusPs_arg2_0 =
  ((addPs_lh__d6 _lh_minusPs_arg1_0) (negatePs_lh__d3 _lh_minusPs_arg2_0));;
let rec cosx_lh__d1 _lh_cosx_arg1_0 =
  ((minusPs_lh__d5 (lazy (`Pc(1, (lazy (`Pz)))))) (let rec int1_0 = (fun fss_0 n_0 -> 
    (lazy (let rec _lh_matchIdent_1 = (Lazy.force fss_0) in
      ((_lh_matchIdent_1 int1_0) n_0)))) in
    (lazy (`Pc(0, ((int1_0 (integralLz_lh__d2 (lazy (cosx_lh__d1 0)))) 1))))));;
let rec negatePs_lh__d1 _lh_negatePs_arg1_2 =
  (lazy (let rec _lh_matchIdent_6_0 = (Lazy.force _lh_negatePs_arg1_2) in
    (match _lh_matchIdent_6_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_2, _lh_negatePs_Pc_1_2) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_2), (negatePs_lh__d1 _lh_negatePs_Pc_1_2)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d2 _lh_addPs_arg1_2 _lh_addPs_arg2_2 =
  (lazy (let rec _lh_matchIdent_2_8 = (Lazy.force _lh_addPs_arg1_2) in
    (match _lh_matchIdent_2_8 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_2)
      | `Pc(_lh_addPs_Pc_0_4, _lh_addPs_Pc_1_4) -> 
        (let rec _lh_matchIdent_2_9 = (Lazy.force _lh_addPs_arg2_2) in
          (match _lh_matchIdent_2_9 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_2)
            | `Pc(_lh_addPs_Pc_0_5, _lh_addPs_Pc_1_5) -> 
              (`Pc((_lh_addPs_Pc_0_4 + _lh_addPs_Pc_0_5), ((addPs_lh__d2 _lh_addPs_Pc_1_4) _lh_addPs_Pc_1_5)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d1 _lh_minusPs_arg1_2 _lh_minusPs_arg2_2 =
  ((addPs_lh__d2 _lh_minusPs_arg1_2) (negatePs_lh__d1 _lh_minusPs_arg2_2));;
let rec integral_lh__d5 _lh_integral_arg1_4 =
  (let rec int1_1_6 = (fun fss_9 n_1_7 -> 
    (lazy (let rec _lh_matchIdent_4_6 = (Lazy.force fss_9) in
      (match _lh_matchIdent_4_6 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_9, _lh_int1_Pc_1_9) -> 
          (`Pc((_lh_int1_Pc_0_9 / n_1_7), ((int1_1_6 _lh_int1_Pc_1_9) (n_1_7 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1_6 _lh_integral_arg1_4) 1)))));;
let rec integralLz_lh__d3 _lh_integralLz_arg1_1 =
  (let rec int1_3 = (fun fss_3 n_3 -> 
    (lazy (let rec _lh_matchIdent_9 = (Lazy.force (Lazy.force fss_3)) in
      (match _lh_matchIdent_9 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_1, _lh_int1_Pc_1_1) -> 
          (`Pc((_lh_int1_Pc_0_1 / n_3), ((int1_3 (lazy _lh_int1_Pc_1_1)) (n_3 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_3 _lh_integralLz_arg1_1) 1)))));;
let rec minusPs_lh__d6 _lh_minusPs_arg1_1 _lh_minusPs_arg2_1 =
  ((addPs_lh__d6 _lh_minusPs_arg1_1) (negatePs_lh__d3 _lh_minusPs_arg2_1));;
let rec sinx_lh__d2 _lh_sinx_arg1_1 =
  (integral_lh__d5 ((minusPs_lh__d6 (lazy (`Pc(1, (lazy (`Pz)))))) (integralLz_lh__d3 (lazy (sinx_lh__d2 0)))));;
let rec minusPs_lh__d3 _lh_minusPs_arg1_3 _lh_minusPs_arg2_3 =
  ((addPs_lh__d6 _lh_minusPs_arg1_3) (negatePs_lh__d3 _lh_minusPs_arg2_3));;
let rec x_lh__d1 =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec dotMult_lh__d1 _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_6 = (Lazy.force _lh_dotMult_arg2_0) in
    (match _lh_matchIdent_1_6 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_0, _lh_dotMult_Pc_1_0) -> 
        (`Pc((_lh_dotMult_arg1_0 * _lh_dotMult_Pc_0_0), ((dotMult_lh__d1 _lh_dotMult_arg1_0) _lh_dotMult_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec multPs_lh__d1 _lh_multPs_arg1_0 _lh_multPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_5_2 = (Lazy.force _lh_multPs_arg1_0) in
    (match _lh_matchIdent_5_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_0, _lh_multPs_Pc_1_0) -> 
        (let rec _lh_matchIdent_5_3 = (Lazy.force _lh_multPs_arg2_0) in
          (match _lh_matchIdent_5_3 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1, _lh_multPs_Pc_1_1) -> 
              (`Pc((_lh_multPs_Pc_0_0 * _lh_multPs_Pc_0_1), ((addPs_lh__d6 ((addPs_lh__d6 ((dotMult_lh__d1 _lh_multPs_Pc_0_0) _lh_multPs_Pc_1_1)) ((dotMult_lh__d1 _lh_multPs_Pc_0_1) _lh_multPs_Pc_1_0))) ((multPs_lh__d1 ((multPs_lh__d1 x_lh__d1) _lh_multPs_Pc_1_0)) _lh_multPs_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPsLzLz_lh__d1 _lh_multPsLzLz_arg1_0 _lh_multPsLzLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_5_8 = (Lazy.force (Lazy.force _lh_multPsLzLz_arg1_0)) in
    (match _lh_matchIdent_5_8 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsLzLz_Pc_0_0, _lh_multPsLzLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_5_9 = (Lazy.force (Lazy.force _lh_multPsLzLz_arg2_0)) in
          (match _lh_matchIdent_5_9 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsLzLz_Pc_0_1, _lh_multPsLzLz_Pc_1_1) -> 
              (`Pc((_lh_multPsLzLz_Pc_0_0 * _lh_multPsLzLz_Pc_0_1), ((addPs_lh__d6 ((addPs_lh__d6 ((dotMult_lh__d1 _lh_multPsLzLz_Pc_0_0) _lh_multPsLzLz_Pc_1_1)) ((dotMult_lh__d1 _lh_multPsLzLz_Pc_0_1) _lh_multPsLzLz_Pc_1_0))) ((multPs_lh__d1 ((multPs_lh__d1 x_lh__d1) _lh_multPsLzLz_Pc_1_0)) _lh_multPsLzLz_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec ts_lh__d1 =
  (lazy (`Pc(1, ((multPsLzLz_lh__d1 (lazy ts_lh__d1)) (lazy ts_lh__d1)))));;
let rec extract_lh__d3 _lh_extract_arg1_0 _lh_extract_arg2_0 =
  (if (_lh_extract_arg1_0 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_3_1 = (Lazy.force _lh_extract_arg2_0) in
      (match _lh_matchIdent_3_1 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_0, _lh_extract_Pc_1_0) -> 
          (`LH_C(_lh_extract_Pc_0_0, ((extract_lh__d3 (_lh_extract_arg1_0 - 1)) _lh_extract_Pc_1_0)))
        | _ -> 
          (failwith "error"))));;
let rec extract_lh__d1 _lh_extract_arg1_1 _lh_extract_arg2_1 =
  (if (_lh_extract_arg1_1 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_3_6 = (Lazy.force _lh_extract_arg2_1) in
      (match _lh_matchIdent_3_6 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_1, _lh_extract_Pc_1_1) -> 
          (`LH_C(_lh_extract_Pc_0_1, ((extract_lh__d1 (_lh_extract_arg1_1 - 1)) _lh_extract_Pc_1_1)))
        | _ -> 
          (failwith "error"))));;
let rec integral_lh__d2 _lh_integral_arg1_0 =
  (let rec int1_1_2 = (fun fss_5 n_1_2 -> 
    (lazy (let rec _lh_matchIdent_2_4 = (Lazy.force fss_5) in
      (match _lh_matchIdent_2_4 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_7, _lh_int1_Pc_1_7) -> 
          (`Pc((_lh_int1_Pc_0_7 / n_1_2), ((int1_1_2 _lh_int1_Pc_1_7) (n_1_2 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1_2 _lh_integral_arg1_0) 1)))));;
let rec integralLz_lh__d1 _lh_integralLz_arg1_0 =
  (let rec int1_1 = (fun fss_1 n_1 -> 
    (lazy (let rec _lh_matchIdent_4 = (Lazy.force (Lazy.force fss_1)) in
      (match _lh_matchIdent_4 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_0, _lh_int1_Pc_1_0) -> 
          (`Pc((_lh_int1_Pc_0_0 / n_1), ((int1_1 (lazy _lh_int1_Pc_1_0)) (n_1 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1 _lh_integralLz_arg1_0) 1)))));;
let rec minusPs_lh__d4 _lh_minusPs_arg1_4 _lh_minusPs_arg2_4 =
  ((addPs_lh__d6 _lh_minusPs_arg1_4) (negatePs_lh__d3 _lh_minusPs_arg2_4));;
let rec sinx_lh__d1 _lh_sinx_arg1_0 =
  (integral_lh__d2 ((minusPs_lh__d4 (lazy (`Pc(1, (lazy (`Pz)))))) (integralLz_lh__d1 (lazy (sinx_lh__d1 0)))));;
let rec extract_lh__d2 _lh_extract_arg1_2 _lh_extract_arg2_2 =
  (if (_lh_extract_arg1_2 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_5_1 = (Lazy.force _lh_extract_arg2_2) in
      (match _lh_matchIdent_5_1 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_2, _lh_extract_Pc_1_2) -> 
          (`LH_C(_lh_extract_Pc_0_2, ((extract_lh__d2 (_lh_extract_arg1_2 - 1)) _lh_extract_Pc_1_2)))
        | _ -> 
          (failwith "error"))));;
let rec addPs_lh__d5 _lh_addPs_arg1_3 _lh_addPs_arg2_3 =
  (lazy (let rec _lh_matchIdent_4_7 = (Lazy.force _lh_addPs_arg1_3) in
    (match _lh_matchIdent_4_7 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_3)
      | `Pc(_lh_addPs_Pc_0_6, _lh_addPs_Pc_1_6) -> 
        (let rec _lh_matchIdent_4_8 = (Lazy.force _lh_addPs_arg2_3) in
          (match _lh_matchIdent_4_8 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_3)
            | `Pc(_lh_addPs_Pc_0_7, _lh_addPs_Pc_1_7) -> 
              (`Pc((_lh_addPs_Pc_0_6 + _lh_addPs_Pc_0_7), ((addPs_lh__d5 _lh_addPs_Pc_1_6) _lh_addPs_Pc_1_7)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh__d1 _lh_divPs_arg1_2 _lh_divPs_arg2_2 =
  (lazy (let rec _lh_matchIdent_5_4 = (Lazy.force _lh_divPs_arg1_2) in
    (match _lh_matchIdent_5_4 with
      | `Pz -> 
        (let rec _lh_matchIdent_5_5 = (Lazy.force _lh_divPs_arg2_2) in
          (match _lh_matchIdent_5_5 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_8, _lh_divPs_Pc_1_8) -> 
              (match _lh_divPs_Pc_0_8 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d1 (lazy (`Pz))) _lh_divPs_Pc_1_8))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_9, _lh_divPs_Pc_1_9) -> 
        (match _lh_divPs_Pc_0_9 with
          | 0 -> 
            (let rec _lh_matchIdent_5_6 = (Lazy.force _lh_divPs_arg2_2) in
              (match _lh_matchIdent_5_6 with
                | `Pc(_lh_divPs_Pc_0_1_0, _lh_divPs_Pc_1_1_0) -> 
                  (match _lh_divPs_Pc_0_1_0 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d1 _lh_divPs_Pc_1_9) _lh_divPs_Pc_1_1_0))
                    | _ -> 
                      (let rec q_4 = 0 in
                        (`Pc(q_4, ((divPs_lh__d1 ((addPs_lh__d6 _lh_divPs_Pc_1_9) (negatePs_lh__d3 ((dotMult_lh__d1 q_4) _lh_divPs_Pc_1_1_0)))) (lazy (`Pc(_lh_divPs_Pc_0_1_0, _lh_divPs_Pc_1_1_0))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_5_7 = (Lazy.force _lh_divPs_arg2_2) in
              (match _lh_matchIdent_5_7 with
                | `Pc(_lh_divPs_Pc_0_1_1, _lh_divPs_Pc_1_1_1) -> 
                  (let rec q_5 = (_lh_divPs_Pc_0_9 / _lh_divPs_Pc_0_1_1) in
                    (`Pc(q_5, ((divPs_lh__d1 ((addPs_lh__d5 _lh_divPs_Pc_1_9) (negatePs_lh__d3 ((dotMult_lh__d1 q_5) _lh_divPs_Pc_1_1_1)))) (lazy (`Pc(_lh_divPs_Pc_0_1_1, _lh_divPs_Pc_1_1_1)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec fromIntegerPs_lh__d5 _lh_fromIntegerPs_arg1_3 =
  (match _lh_fromIntegerPs_arg1_3 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_3, (lazy (`Pz))))));;
let rec fromIntegerPs_lh__d3 _lh_fromIntegerPs_arg1_0 =
  (match _lh_fromIntegerPs_arg1_0 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_0, (lazy (`Pz))))));;
let rec powerPs_lh__d2 _lh_powerPs_arg1_0 _lh_powerPs_arg2_0 =
  (if (_lh_powerPs_arg2_0 <= 0) then
    (fromIntegerPs_lh__d5 1)
  else
    ((multPs_lh__d1 _lh_powerPs_arg1_0) ((powerPs_lh__d2 _lh_powerPs_arg1_0) (_lh_powerPs_arg2_0 - 1))));;
let rec compose_lh__d1 _lh_compose_arg1_0 _lh_compose_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_0 = (Lazy.force _lh_compose_arg1_0) in
    (match _lh_matchIdent_1_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_compose_Pc_0_0, _lh_compose_Pc_1_0) -> 
        (let rec _lh_matchIdent_1_1 = (Lazy.force _lh_compose_arg2_0) in
          (match _lh_matchIdent_1_1 with
            | `Pz -> 
              (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz))))
            | `Pc(_lh_compose_Pc_0_1, _lh_compose_Pc_1_1) -> 
              (match _lh_compose_Pc_0_1 with
                | 0 -> 
                  (`Pc(_lh_compose_Pc_0_0, ((multPs_lh__d1 _lh_compose_Pc_1_1) ((compose_lh__d1 _lh_compose_Pc_1_0) (lazy (`Pc(0, _lh_compose_Pc_1_1)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh__d6 (lazy (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz)))))) ((multPs_lh__d1 _lh_compose_arg2_0) ((compose_lh__d1 _lh_compose_Pc_1_0) _lh_compose_arg2_0)))))
            | _ -> 
              (Lazy.force ((addPs_lh__d6 (lazy (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz)))))) ((multPs_lh__d1 _lh_compose_arg2_0) ((compose_lh__d1 _lh_compose_Pc_1_0) _lh_compose_arg2_0))))))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh__d2 _lh_divPs_arg1_0 _lh_divPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_2 = (Lazy.force _lh_divPs_arg1_0) in
    (match _lh_matchIdent_1_2 with
      | `Pz -> 
        (let rec _lh_matchIdent_1_3 = (Lazy.force _lh_divPs_arg2_0) in
          (match _lh_matchIdent_1_3 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_0, _lh_divPs_Pc_1_0) -> 
              (match _lh_divPs_Pc_0_0 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d2 (lazy (`Pz))) _lh_divPs_Pc_1_0))
                | _ -> 
                  (fun int1_4 n_4 -> 
                    (`Pz)))
            | _ -> 
              (fun int1_5 n_5 -> 
                (`Pz))))
      | `Pc(_lh_divPs_Pc_0_1, _lh_divPs_Pc_1_1) -> 
        (match _lh_divPs_Pc_0_1 with
          | 0 -> 
            (let rec _lh_matchIdent_1_4 = (Lazy.force _lh_divPs_arg2_0) in
              (match _lh_matchIdent_1_4 with
                | `Pc(_lh_divPs_Pc_0_2, _lh_divPs_Pc_1_2) -> 
                  (match _lh_divPs_Pc_0_2 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d2 _lh_divPs_Pc_1_1) _lh_divPs_Pc_1_2))
                    | _ -> 
                      (let rec q_0 = 0 in
                        (let rec _lh_int1_Pc_1_2 = ((divPs_lh__d2 ((addPs_lh__d6 _lh_divPs_Pc_1_1) (negatePs_lh__d3 ((dotMult_lh__d1 q_0) _lh_divPs_Pc_1_2)))) (lazy (`Pc(_lh_divPs_Pc_0_2, _lh_divPs_Pc_1_2)))) in
                          (let rec _lh_int1_Pc_0_2 = q_0 in
                            (fun int1_6 n_6 -> 
                              (`Pc((_lh_int1_Pc_0_2 / n_6), ((int1_6 _lh_int1_Pc_1_2) (n_6 + 1)))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_1_5 = (Lazy.force _lh_divPs_arg2_0) in
              (match _lh_matchIdent_1_5 with
                | `Pc(_lh_divPs_Pc_0_3, _lh_divPs_Pc_1_3) -> 
                  (let rec q_1 = (_lh_divPs_Pc_0_1 / _lh_divPs_Pc_0_3) in
                    (let rec _lh_int1_Pc_1_3 = ((divPs_lh__d2 ((addPs_lh__d6 _lh_divPs_Pc_1_1) (negatePs_lh__d3 ((dotMult_lh__d1 q_1) _lh_divPs_Pc_1_3)))) (lazy (`Pc(_lh_divPs_Pc_0_3, _lh_divPs_Pc_1_3)))) in
                      (let rec _lh_int1_Pc_0_3 = q_1 in
                        (fun int1_7 n_7 -> 
                          (`Pc((_lh_int1_Pc_0_3 / n_7), ((int1_7 _lh_int1_Pc_1_3) (n_7 + 1))))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
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
let rec divPs_lh__d3 _lh_divPs_arg1_1 _lh_divPs_arg2_1 =
  (lazy (let rec _lh_matchIdent_3_8 = (Lazy.force _lh_divPs_arg1_1) in
    (match _lh_matchIdent_3_8 with
      | `Pz -> 
        (let rec _lh_matchIdent_3_9 = (Lazy.force _lh_divPs_arg2_1) in
          (match _lh_matchIdent_3_9 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_4, _lh_divPs_Pc_1_4) -> 
              (match _lh_divPs_Pc_0_4 with
                | 0 -> 
                  (Lazy.force ((divPs_lh__d3 (lazy (`Pz))) _lh_divPs_Pc_1_4))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_5, _lh_divPs_Pc_1_5) -> 
        (match _lh_divPs_Pc_0_5 with
          | 0 -> 
            (let rec _lh_matchIdent_4_0 = (Lazy.force _lh_divPs_arg2_1) in
              (match _lh_matchIdent_4_0 with
                | `Pc(_lh_divPs_Pc_0_6, _lh_divPs_Pc_1_6) -> 
                  (match _lh_divPs_Pc_0_6 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh__d3 _lh_divPs_Pc_1_5) _lh_divPs_Pc_1_6))
                    | _ -> 
                      (let rec q_2 = 0 in
                        (`Pc(q_2, ((divPs_lh__d3 ((addPs_lh__d6 _lh_divPs_Pc_1_5) (negatePs_lh__d3 ((dotMult_lh__d1 q_2) _lh_divPs_Pc_1_6)))) (lazy (`Pc(_lh_divPs_Pc_0_6, _lh_divPs_Pc_1_6))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_4_1 = (Lazy.force _lh_divPs_arg2_1) in
              (match _lh_matchIdent_4_1 with
                | `Pc(_lh_divPs_Pc_0_7, _lh_divPs_Pc_1_7) -> 
                  (let rec q_3 = (_lh_divPs_Pc_0_5 / _lh_divPs_Pc_0_7) in
                    (`Pc(q_3, ((divPs_lh__d3 ((addPs_lh__d6 _lh_divPs_Pc_1_5) (negatePs_lh__d3 ((dotMult_lh__d1 q_3) _lh_divPs_Pc_1_7)))) (lazy (`Pc(_lh_divPs_Pc_0_7, _lh_divPs_Pc_1_7)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh__d2 _lh_negatePs_arg1_1 =
  (lazy (let rec _lh_matchIdent_3_7 = (Lazy.force _lh_negatePs_arg1_1) in
    (match _lh_matchIdent_3_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_1, _lh_negatePs_Pc_1_1) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_1), (negatePs_lh__d2 _lh_negatePs_Pc_1_1)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d4 _lh_addPs_arg1_0 _lh_addPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_2_1 = (Lazy.force _lh_addPs_arg1_0) in
    (match _lh_matchIdent_2_1 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_0)
      | `Pc(_lh_addPs_Pc_0_0, _lh_addPs_Pc_1_0) -> 
        (let rec _lh_matchIdent_2_2 = (Lazy.force _lh_addPs_arg2_0) in
          (match _lh_matchIdent_2_2 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_0)
            | `Pc(_lh_addPs_Pc_0_1, _lh_addPs_Pc_1_1) -> 
              (`Pc((_lh_addPs_Pc_0_0 + _lh_addPs_Pc_0_1), ((addPs_lh__d4 _lh_addPs_Pc_1_0) _lh_addPs_Pc_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec minusPs_lh__d2 _lh_minusPs_arg1_5 _lh_minusPs_arg2_5 =
  ((addPs_lh__d4 _lh_minusPs_arg1_5) (negatePs_lh__d2 _lh_minusPs_arg2_5));;
let rec dotMultSndLz_lh__d1 _lh_dotMultSndLz_arg1_0 _lh_dotMultSndLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_7 = (Lazy.force (Lazy.force _lh_dotMultSndLz_arg2_0)) in
    (match _lh_matchIdent_1_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMultSndLz_Pc_0_0, _lh_dotMultSndLz_Pc_1_0) -> 
        (`Pc((_lh_dotMultSndLz_arg1_0 * _lh_dotMultSndLz_Pc_0_0), ((dotMult_lh__d1 _lh_dotMultSndLz_arg1_0) _lh_dotMultSndLz_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh__d3 _lh_addPs_arg1_1 _lh_addPs_arg2_1 =
  (lazy (let rec _lh_matchIdent_2_5 = (Lazy.force _lh_addPs_arg1_1) in
    (match _lh_matchIdent_2_5 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_1)
      | `Pc(_lh_addPs_Pc_0_2, _lh_addPs_Pc_1_2) -> 
        (let rec _lh_matchIdent_2_6 = (Lazy.force _lh_addPs_arg2_1) in
          (match _lh_matchIdent_2_6 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_1)
            | `Pc(_lh_addPs_Pc_0_3, _lh_addPs_Pc_1_3) -> 
              (`Pc((_lh_addPs_Pc_0_2 + _lh_addPs_Pc_0_3), ((addPs_lh__d3 _lh_addPs_Pc_1_2) _lh_addPs_Pc_1_3)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec integral_lh__d3 _lh_integral_arg1_1 =
  (let rec int1_1_3 = (fun fss_6 n_1_3 -> 
    (lazy (let rec _lh_matchIdent_2_7 = (Lazy.force fss_6) in
      (match _lh_matchIdent_2_7 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_8, _lh_int1_Pc_1_8) -> 
          (`Pc((_lh_int1_Pc_0_8 / n_1_3), ((int1_1_3 _lh_int1_Pc_1_8) (n_1_3 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1_3 _lh_integral_arg1_1) 1)))));;
let rec fromIntegerPs_lh__d4 _lh_fromIntegerPs_arg1_4 =
  (match _lh_fromIntegerPs_arg1_4 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_4, (lazy (`Pz))))));;
let rec sqrtPs_lh__d1 _lh_sqrtPs_arg1_0 =
  (lazy (let rec _lh_matchIdent_4_2 = (Lazy.force _lh_sqrtPs_arg1_0) in
    (match _lh_matchIdent_4_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_sqrtPs_Pc_0_0, _lh_sqrtPs_Pc_1_0) -> 
        (match _lh_sqrtPs_Pc_0_0 with
          | 0 -> 
            (let rec _lh_matchIdent_4_3 = (Lazy.force _lh_sqrtPs_Pc_1_0) in
              (match _lh_matchIdent_4_3 with
                | `Pc(_lh_sqrtPs_Pc_0_1, _lh_sqrtPs_Pc_1_1) -> 
                  (match _lh_sqrtPs_Pc_0_1 with
                    | 0 -> 
                      (`Pc(0, (sqrtPs_lh__d1 _lh_sqrtPs_Pc_1_1)))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | 1 -> 
            (let rec qs_0 = (lazy ((addPs_lh__d3 (fromIntegerPs_lh__d4 1)) (integral_lh__d3 ((divPs_lh__d3 (lazy (let rec _lh_matchIdent_4_4 = (Lazy.force (lazy (let rec _lh_deriv_Pc_1_0 = _lh_sqrtPs_Pc_1_0 in
              (fun _lh_dummy_2 -> 
                (let rec deriv1_0 = (fun gss_0 n_1_6 -> 
                  (lazy (let rec _lh_matchIdent_4_5 = (Lazy.force gss_0) in
                    (match _lh_matchIdent_4_5 with
                      | `Pz -> 
                        (`Pz)
                      | `Pc(_lh_deriv_Pc_0_0, _lh_deriv_Pc_1_1) -> 
                        (`Pc((n_1_6 * _lh_deriv_Pc_0_0), ((deriv1_0 _lh_deriv_Pc_1_1) (n_1_6 + 1))))
                      | _ -> 
                        (failwith "error"))))) in
                  (Lazy.force ((deriv1_0 _lh_deriv_Pc_1_0) 1))))))) in
              (_lh_matchIdent_4_4 99)))) ((dotMultSndLz_lh__d1 2) qs_0))))) in
              (Lazy.force (Lazy.force qs_0)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
let rec powerPs_lh__d1 _lh_powerPs_arg1_1 _lh_powerPs_arg2_1 =
  (if (_lh_powerPs_arg2_1 <= 0) then
    (fromIntegerPs_lh__d5 1)
  else
    ((multPs_lh__d1 _lh_powerPs_arg1_1) ((powerPs_lh__d1 _lh_powerPs_arg1_1) (_lh_powerPs_arg2_1 - 1))));;
let rec addPs_lh__d1 _lh_addPs_arg1_5 _lh_addPs_arg2_5 =
  (lazy (let rec _lh_matchIdent_6_1 = (Lazy.force _lh_addPs_arg1_5) in
    (match _lh_matchIdent_6_1 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_5)
      | `Pc(_lh_addPs_Pc_0_1_0, _lh_addPs_Pc_1_1_0) -> 
        (let rec _lh_matchIdent_6_2 = (Lazy.force _lh_addPs_arg2_5) in
          (match _lh_matchIdent_6_2 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_5)
            | `Pc(_lh_addPs_Pc_0_1_1, _lh_addPs_Pc_1_1_1) -> 
              (`Pc((_lh_addPs_Pc_0_1_0 + _lh_addPs_Pc_0_1_1), ((addPs_lh__d1 _lh_addPs_Pc_1_1_0) _lh_addPs_Pc_1_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec list_lh__d1 =
  (lazy (`Pc(1, list_lh__d1)));;
let rec multPsFstLz_lh__d1 _lh_multPsFstLz_arg1_0 _lh_multPsFstLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_2 = (Lazy.force (Lazy.force _lh_multPsFstLz_arg1_0)) in
    (match _lh_matchIdent_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsFstLz_Pc_0_0, _lh_multPsFstLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_3 = (Lazy.force _lh_multPsFstLz_arg2_0) in
          (match _lh_matchIdent_3 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsFstLz_Pc_0_1, _lh_multPsFstLz_Pc_1_1) -> 
              (`Pc((_lh_multPsFstLz_Pc_0_0 * _lh_multPsFstLz_Pc_0_1), ((addPs_lh__d6 ((addPs_lh__d6 ((dotMult_lh__d1 _lh_multPsFstLz_Pc_0_0) _lh_multPsFstLz_Pc_1_1)) ((dotMult_lh__d1 _lh_multPsFstLz_Pc_0_1) _lh_multPsFstLz_Pc_1_0))) ((multPs_lh__d1 ((multPs_lh__d1 x_lh__d1) _lh_multPsFstLz_Pc_1_0)) _lh_multPsFstLz_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec composeSndLz_lh__d1 _lh_composeSndLz_arg1_0 _lh_composeSndLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_8 = (Lazy.force _lh_composeSndLz_arg1_0) in
    (match _lh_matchIdent_1_8 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_composeSndLz_Pc_0_0, _lh_composeSndLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_1_9 = (Lazy.force (Lazy.force _lh_composeSndLz_arg2_0)) in
          (match _lh_matchIdent_1_9 with
            | `Pz -> 
              (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz))))
            | `Pc(_lh_composeSndLz_Pc_0_1, _lh_composeSndLz_Pc_1_1) -> 
              (match _lh_composeSndLz_Pc_0_1 with
                | 0 -> 
                  (`Pc(_lh_composeSndLz_Pc_0_0, ((multPs_lh__d1 _lh_composeSndLz_Pc_1_1) ((compose_lh__d1 _lh_composeSndLz_Pc_1_0) (lazy (`Pc(0, _lh_composeSndLz_Pc_1_1)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh__d6 (lazy (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz)))))) ((multPsFstLz_lh__d1 _lh_composeSndLz_arg2_0) ((composeSndLz_lh__d1 _lh_composeSndLz_Pc_1_0) _lh_composeSndLz_arg2_0)))))
            | _ -> 
              (Lazy.force ((addPs_lh__d6 (lazy (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz)))))) ((multPsFstLz_lh__d1 _lh_composeSndLz_arg2_0) ((composeSndLz_lh__d1 _lh_composeSndLz_Pc_1_0) _lh_composeSndLz_arg2_0))))))
      | _ -> 
        (failwith "error"))));;
let rec tree_lh__d1 =
  (lazy (`Pc(0, ((composeSndLz_lh__d1 list_lh__d1) (lazy tree_lh__d1)))));;
let rec extract_lh__d4 _lh_extract_arg1_3 _lh_extract_arg2_3 =
  (if (_lh_extract_arg1_3 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_6_3 = (Lazy.force _lh_extract_arg2_3) in
      (match _lh_matchIdent_6_3 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_3, _lh_extract_Pc_1_3) -> 
          (`LH_C(_lh_extract_Pc_0_3, ((extract_lh__d4 (_lh_extract_arg1_3 - 1)) _lh_extract_Pc_1_3)))
        | _ -> 
          (failwith "error"))));;
let rec cosx_lh__d2 _lh_cosx_arg1_1 =
  ((minusPs_lh__d6 (lazy (`Pc(1, (lazy (`Pz)))))) (integral_lh__d5 (integralLz_lh__d3 (lazy (cosx_lh__d2 0)))));;
let rec testPower_nofib_lh__d1 _lh_testPower_nofib_arg1_0 =
  (`LH_C(((extract_lh__d1 _lh_testPower_nofib_arg1_0) ((minusPs_lh__d1 (sinx_lh__d2 0)) (sqrtPs_lh__d1 ((minusPs_lh__d3 (fromIntegerPs_lh__d1 1)) ((powerPs_lh__d1 (cosx_lh__d2 0)) 2))))), (`LH_C(((extract_lh__d3 _lh_testPower_nofib_arg1_0) ((minusPs_lh__d2 ((divPs_lh__d1 (sinx_lh__d1 0)) (cosx_lh__d1 0))) (lazy (let rec _lh_matchIdent_5 = (Lazy.force (let rec int1_2 = (fun fss_2 n_2 -> 
    (lazy (let rec _lh_matchIdent_6 = (Lazy.force fss_2) in
      ((_lh_matchIdent_6 int1_2) n_2)))) in
    (lazy (let rec _lh_revert_Pc_1_0 = ((int1_2 ((divPs_lh__d2 (fromIntegerPs_lh__d3 1)) ((addPs_lh__d1 (fromIntegerPs_lh__d2 1)) ((powerPs_lh__d2 x_lh__d1) 2)))) 1) in
      (let rec _lh_revert_Pc_0_0 = 0 in
        (fun _lh_dummy_0 -> 
          (match _lh_revert_Pc_0_0 with
            | 0 -> 
              (Lazy.force (let rec rs_0 = (lazy (`Pc(0, ((divPs_lh__d3 (fromIntegerPs_lh__d5 1)) ((compose_lh__d1 _lh_revert_Pc_1_0) rs_0))))) in
                rs_0))
            | _ -> 
              (let rec _lh_matchIdent_7 = (Lazy.force _lh_revert_Pc_1_0) in
                (match _lh_matchIdent_7 with
                  | `Pc(_lh_revert_Pc_0_1, _lh_revert_Pc_1_1) -> 
                    (let rec _lh_matchIdent_8 = (Lazy.force _lh_revert_Pc_1_1) in
                      (match _lh_matchIdent_8 with
                        | `Pz -> 
                          (`Pc(((0 - 1) / _lh_revert_Pc_0_1), (lazy (`Pc((1 / _lh_revert_Pc_0_1), (lazy (`Pz)))))))
                        | _ -> 
                          (failwith "error")))
                  | _ -> 
                    (failwith "error")))))))))) in
    (_lh_matchIdent_5 99))))), (`LH_C(((extract_lh__d4 _lh_testPower_nofib_arg1_0) ts_lh__d1), (`LH_C(((extract_lh__d2 _lh_testPower_nofib_arg1_0) tree_lh__d1), (`LH_N)))))))));;
end;;

