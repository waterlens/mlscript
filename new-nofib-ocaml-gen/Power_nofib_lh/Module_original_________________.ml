
(* original *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_original_________________(LH_Dum: sig end) = struct
let rec dotMult_lh _lh_dotMult_arg1_0 _lh_dotMult_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_0 = (Lazy.force _lh_dotMult_arg2_0) in
    (match _lh_matchIdent_1_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMult_Pc_0_0, _lh_dotMult_Pc_1_0) -> 
        (`Pc((_lh_dotMult_arg1_0 * _lh_dotMult_Pc_0_0), ((dotMult_lh _lh_dotMult_arg1_0) _lh_dotMult_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec negatePs_lh _lh_negatePs_arg1_0 =
  (lazy (let rec _lh_matchIdent_4 = (Lazy.force _lh_negatePs_arg1_0) in
    (match _lh_matchIdent_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_negatePs_Pc_0_0, _lh_negatePs_Pc_1_0) -> 
        (`Pc((0 - _lh_negatePs_Pc_0_0), (negatePs_lh _lh_negatePs_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec addPs_lh _lh_addPs_arg1_0 _lh_addPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_9 = (Lazy.force _lh_addPs_arg1_0) in
    (match _lh_matchIdent_1_9 with
      | `Pz -> 
        (Lazy.force _lh_addPs_arg2_0)
      | `Pc(_lh_addPs_Pc_0_0, _lh_addPs_Pc_1_0) -> 
        (let rec _lh_matchIdent_2_0 = (Lazy.force _lh_addPs_arg2_0) in
          (match _lh_matchIdent_2_0 with
            | `Pz -> 
              (Lazy.force _lh_addPs_arg1_0)
            | `Pc(_lh_addPs_Pc_0_1, _lh_addPs_Pc_1_1) -> 
              (`Pc((_lh_addPs_Pc_0_0 + _lh_addPs_Pc_0_1), ((addPs_lh _lh_addPs_Pc_1_0) _lh_addPs_Pc_1_1)))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec divPs_lh _lh_divPs_arg1_0 _lh_divPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_1 = (Lazy.force _lh_divPs_arg1_0) in
    (match _lh_matchIdent_1_1 with
      | `Pz -> 
        (let rec _lh_matchIdent_1_2 = (Lazy.force _lh_divPs_arg2_0) in
          (match _lh_matchIdent_1_2 with
            | `Pz -> 
              ((failwith "error") (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('s', (`LH_C('e', (`LH_C('r', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('0', (`LH_C('/', (`LH_C('0', (`LH_N))))))))))))))))))))))))))))))))))
            | `Pc(_lh_divPs_Pc_0_0, _lh_divPs_Pc_1_0) -> 
              (match _lh_divPs_Pc_0_0 with
                | 0 -> 
                  (Lazy.force ((divPs_lh (lazy (`Pz))) _lh_divPs_Pc_1_0))
                | _ -> 
                  (`Pz))
            | _ -> 
              (`Pz)))
      | `Pc(_lh_divPs_Pc_0_1, _lh_divPs_Pc_1_1) -> 
        (match _lh_divPs_Pc_0_1 with
          | 0 -> 
            (let rec _lh_matchIdent_1_3 = (Lazy.force _lh_divPs_arg2_0) in
              (match _lh_matchIdent_1_3 with
                | `Pc(_lh_divPs_Pc_0_2, _lh_divPs_Pc_1_2) -> 
                  (match _lh_divPs_Pc_0_2 with
                    | 0 -> 
                      (Lazy.force ((divPs_lh _lh_divPs_Pc_1_1) _lh_divPs_Pc_1_2))
                    | _ -> 
                      (let rec q_0 = 0 in
                        (`Pc(q_0, ((divPs_lh ((addPs_lh _lh_divPs_Pc_1_1) (negatePs_lh ((dotMult_lh q_0) _lh_divPs_Pc_1_2)))) (lazy (`Pc(_lh_divPs_Pc_0_2, _lh_divPs_Pc_1_2))))))))
                | _ -> 
                  (failwith "error")))
          | _ -> 
            (let rec _lh_matchIdent_1_4 = (Lazy.force _lh_divPs_arg2_0) in
              (match _lh_matchIdent_1_4 with
                | `Pc(_lh_divPs_Pc_0_3, _lh_divPs_Pc_1_3) -> 
                  (let rec q_1 = (_lh_divPs_Pc_0_1 / _lh_divPs_Pc_0_3) in
                    (`Pc(q_1, ((divPs_lh ((addPs_lh _lh_divPs_Pc_1_1) (negatePs_lh ((dotMult_lh q_1) _lh_divPs_Pc_1_3)))) (lazy (`Pc(_lh_divPs_Pc_0_3, _lh_divPs_Pc_1_3)))))))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec dotMultSndLz_lh _lh_dotMultSndLz_arg1_0 _lh_dotMultSndLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_2_4 = (Lazy.force (Lazy.force _lh_dotMultSndLz_arg2_0)) in
    (match _lh_matchIdent_2_4 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_dotMultSndLz_Pc_0_0, _lh_dotMultSndLz_Pc_1_0) -> 
        (`Pc((_lh_dotMultSndLz_arg1_0 * _lh_dotMultSndLz_Pc_0_0), ((dotMult_lh _lh_dotMultSndLz_arg1_0) _lh_dotMultSndLz_Pc_1_0)))
      | _ -> 
        (failwith "error"))));;
let rec deriv_lh _lh_deriv_arg1_0 =
  (lazy (let rec _lh_matchIdent_0 = (Lazy.force _lh_deriv_arg1_0) in
    (match _lh_matchIdent_0 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_deriv_Pc_0_0, _lh_deriv_Pc_1_0) -> 
        (let rec deriv1_0 = (fun gss_0 n_0 -> 
          (lazy (let rec _lh_matchIdent_1 = (Lazy.force gss_0) in
            (match _lh_matchIdent_1 with
              | `Pz -> 
                (`Pz)
              | `Pc(_lh_deriv_Pc_0_1, _lh_deriv_Pc_1_1) -> 
                (`Pc((n_0 * _lh_deriv_Pc_0_1), ((deriv1_0 _lh_deriv_Pc_1_1) (n_0 + 1))))
              | _ -> 
                (failwith "error"))))) in
          (Lazy.force ((deriv1_0 _lh_deriv_Pc_1_0) 1)))
      | _ -> 
        (failwith "error"))));;
let rec integral_lh _lh_integral_arg1_0 =
  (let rec int1_1 = (fun fss_1 n_2 -> 
    (lazy (let rec _lh_matchIdent_2_3 = (Lazy.force fss_1) in
      (match _lh_matchIdent_2_3 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_1, _lh_int1_Pc_1_1) -> 
          (`Pc((_lh_int1_Pc_0_1 / n_2), ((int1_1 _lh_int1_Pc_1_1) (n_2 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_1 _lh_integral_arg1_0) 1)))));;
let rec fromIntegerPs_lh _lh_fromIntegerPs_arg1_0 =
  (match _lh_fromIntegerPs_arg1_0 with
    | 0 -> 
      (lazy (`Pz))
    | _ -> 
      (lazy (`Pc(_lh_fromIntegerPs_arg1_0, (lazy (`Pz))))));;
let rec sqrtPs_lh _lh_sqrtPs_arg1_0 =
  (lazy (let rec _lh_matchIdent_2_1 = (Lazy.force _lh_sqrtPs_arg1_0) in
    (match _lh_matchIdent_2_1 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_sqrtPs_Pc_0_0, _lh_sqrtPs_Pc_1_0) -> 
        (match _lh_sqrtPs_Pc_0_0 with
          | 0 -> 
            (let rec _lh_matchIdent_2_2 = (Lazy.force _lh_sqrtPs_Pc_1_0) in
              (match _lh_matchIdent_2_2 with
                | `Pc(_lh_sqrtPs_Pc_0_1, _lh_sqrtPs_Pc_1_1) -> 
                  (match _lh_sqrtPs_Pc_0_1 with
                    | 0 -> 
                      (`Pc(0, (sqrtPs_lh _lh_sqrtPs_Pc_1_1)))
                    | _ -> 
                      (failwith "error"))
                | _ -> 
                  (failwith "error")))
          | 1 -> 
            (let rec qs_0 = (lazy ((addPs_lh (fromIntegerPs_lh 1)) (integral_lh ((divPs_lh (deriv_lh (lazy (`Pc(1, _lh_sqrtPs_Pc_1_0))))) ((dotMultSndLz_lh 2) qs_0))))) in
              (Lazy.force (Lazy.force qs_0)))
          | _ -> 
            (failwith "error"))
      | _ -> 
        (failwith "error"))));;
let rec x_lh =
  (lazy (`Pc(0, (lazy (`Pc(1, (lazy (`Pz))))))));;
let rec multPs_lh _lh_multPs_arg1_0 _lh_multPs_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_5 = (Lazy.force _lh_multPs_arg1_0) in
    (match _lh_matchIdent_1_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPs_Pc_0_0, _lh_multPs_Pc_1_0) -> 
        (let rec _lh_matchIdent_1_6 = (Lazy.force _lh_multPs_arg2_0) in
          (match _lh_matchIdent_1_6 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPs_Pc_0_1, _lh_multPs_Pc_1_1) -> 
              (`Pc((_lh_multPs_Pc_0_0 * _lh_multPs_Pc_0_1), ((addPs_lh ((addPs_lh ((dotMult_lh _lh_multPs_Pc_0_0) _lh_multPs_Pc_1_1)) ((dotMult_lh _lh_multPs_Pc_0_1) _lh_multPs_Pc_1_0))) ((multPs_lh ((multPs_lh x_lh) _lh_multPs_Pc_1_0)) _lh_multPs_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec multPsLzLz_lh _lh_multPsLzLz_arg1_0 _lh_multPsLzLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_5 = (Lazy.force (Lazy.force _lh_multPsLzLz_arg1_0)) in
    (match _lh_matchIdent_5 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsLzLz_Pc_0_0, _lh_multPsLzLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_6 = (Lazy.force (Lazy.force _lh_multPsLzLz_arg2_0)) in
          (match _lh_matchIdent_6 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsLzLz_Pc_0_1, _lh_multPsLzLz_Pc_1_1) -> 
              (`Pc((_lh_multPsLzLz_Pc_0_0 * _lh_multPsLzLz_Pc_0_1), ((addPs_lh ((addPs_lh ((dotMult_lh _lh_multPsLzLz_Pc_0_0) _lh_multPsLzLz_Pc_1_1)) ((dotMult_lh _lh_multPsLzLz_Pc_0_1) _lh_multPsLzLz_Pc_1_0))) ((multPs_lh ((multPs_lh x_lh) _lh_multPsLzLz_Pc_1_0)) _lh_multPsLzLz_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec ts_lh =
  (lazy (`Pc(1, ((multPsLzLz_lh (lazy ts_lh)) (lazy ts_lh)))));;
let rec extract_lh _lh_extract_arg1_0 _lh_extract_arg2_0 =
  (if (_lh_extract_arg1_0 = 0) then
    (`LH_N)
  else
    (let rec _lh_matchIdent_2_8 = (Lazy.force _lh_extract_arg2_0) in
      (match _lh_matchIdent_2_8 with
        | `Pz -> 
          (`LH_N)
        | `Pc(_lh_extract_Pc_0_0, _lh_extract_Pc_1_0) -> 
          (`LH_C(_lh_extract_Pc_0_0, ((extract_lh (_lh_extract_arg1_0 - 1)) _lh_extract_Pc_1_0)))
        | _ -> 
          (failwith "error"))));;
let rec integralLz_lh _lh_integralLz_arg1_0 =
  (let rec int1_0 = (fun fss_0 n_1 -> 
    (lazy (let rec _lh_matchIdent_7 = (Lazy.force (Lazy.force fss_0)) in
      (match _lh_matchIdent_7 with
        | `Pz -> 
          (`Pz)
        | `Pc(_lh_int1_Pc_0_0, _lh_int1_Pc_1_0) -> 
          (`Pc((_lh_int1_Pc_0_0 / n_1), ((int1_0 (lazy _lh_int1_Pc_1_0)) (n_1 + 1))))
        | _ -> 
          (failwith "error"))))) in
    (lazy (`Pc(0, ((int1_0 _lh_integralLz_arg1_0) 1)))));;
let rec minusPs_lh _lh_minusPs_arg1_0 _lh_minusPs_arg2_0 =
  ((addPs_lh _lh_minusPs_arg1_0) (negatePs_lh _lh_minusPs_arg2_0));;
let rec sinx_lh _lh_sinx_arg1_0 =
  (integral_lh ((minusPs_lh (lazy (`Pc(1, (lazy (`Pz)))))) (integralLz_lh (lazy (sinx_lh 0)))));;
let rec cosx_lh _lh_cosx_arg1_0 =
  ((minusPs_lh (lazy (`Pc(1, (lazy (`Pz)))))) (integral_lh (integralLz_lh (lazy (cosx_lh 0)))));;
let rec powerPs_lh _lh_powerPs_arg1_0 _lh_powerPs_arg2_0 =
  (if (_lh_powerPs_arg2_0 <= 0) then
    (fromIntegerPs_lh 1)
  else
    ((multPs_lh _lh_powerPs_arg1_0) ((powerPs_lh _lh_powerPs_arg1_0) (_lh_powerPs_arg2_0 - 1))));;
let rec list_lh =
  (lazy (`Pc(1, list_lh)));;
let rec multPsFstLz_lh _lh_multPsFstLz_arg1_0 _lh_multPsFstLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_8 = (Lazy.force (Lazy.force _lh_multPsFstLz_arg1_0)) in
    (match _lh_matchIdent_8 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_multPsFstLz_Pc_0_0, _lh_multPsFstLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_9 = (Lazy.force _lh_multPsFstLz_arg2_0) in
          (match _lh_matchIdent_9 with
            | `Pz -> 
              (`Pz)
            | `Pc(_lh_multPsFstLz_Pc_0_1, _lh_multPsFstLz_Pc_1_1) -> 
              (`Pc((_lh_multPsFstLz_Pc_0_0 * _lh_multPsFstLz_Pc_0_1), ((addPs_lh ((addPs_lh ((dotMult_lh _lh_multPsFstLz_Pc_0_0) _lh_multPsFstLz_Pc_1_1)) ((dotMult_lh _lh_multPsFstLz_Pc_0_1) _lh_multPsFstLz_Pc_1_0))) ((multPs_lh ((multPs_lh x_lh) _lh_multPsFstLz_Pc_1_0)) _lh_multPsFstLz_Pc_1_1))))
            | _ -> 
              (failwith "error")))
      | _ -> 
        (failwith "error"))));;
let rec compose_lh _lh_compose_arg1_0 _lh_compose_arg2_0 =
  (lazy (let rec _lh_matchIdent_2 = (Lazy.force _lh_compose_arg1_0) in
    (match _lh_matchIdent_2 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_compose_Pc_0_0, _lh_compose_Pc_1_0) -> 
        (let rec _lh_matchIdent_3 = (Lazy.force _lh_compose_arg2_0) in
          (match _lh_matchIdent_3 with
            | `Pz -> 
              (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz))))
            | `Pc(_lh_compose_Pc_0_1, _lh_compose_Pc_1_1) -> 
              (match _lh_compose_Pc_0_1 with
                | 0 -> 
                  (`Pc(_lh_compose_Pc_0_0, ((multPs_lh _lh_compose_Pc_1_1) ((compose_lh _lh_compose_Pc_1_0) (lazy (`Pc(0, _lh_compose_Pc_1_1)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh (lazy (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz)))))) ((multPs_lh _lh_compose_arg2_0) ((compose_lh _lh_compose_Pc_1_0) _lh_compose_arg2_0)))))
            | _ -> 
              (Lazy.force ((addPs_lh (lazy (`Pc(_lh_compose_Pc_0_0, (lazy (`Pz)))))) ((multPs_lh _lh_compose_arg2_0) ((compose_lh _lh_compose_Pc_1_0) _lh_compose_arg2_0))))))
      | _ -> 
        (failwith "error"))));;
let rec composeSndLz_lh _lh_composeSndLz_arg1_0 _lh_composeSndLz_arg2_0 =
  (lazy (let rec _lh_matchIdent_1_7 = (Lazy.force _lh_composeSndLz_arg1_0) in
    (match _lh_matchIdent_1_7 with
      | `Pz -> 
        (`Pz)
      | `Pc(_lh_composeSndLz_Pc_0_0, _lh_composeSndLz_Pc_1_0) -> 
        (let rec _lh_matchIdent_1_8 = (Lazy.force (Lazy.force _lh_composeSndLz_arg2_0)) in
          (match _lh_matchIdent_1_8 with
            | `Pz -> 
              (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz))))
            | `Pc(_lh_composeSndLz_Pc_0_1, _lh_composeSndLz_Pc_1_1) -> 
              (match _lh_composeSndLz_Pc_0_1 with
                | 0 -> 
                  (`Pc(_lh_composeSndLz_Pc_0_0, ((multPs_lh _lh_composeSndLz_Pc_1_1) ((compose_lh _lh_composeSndLz_Pc_1_0) (lazy (`Pc(0, _lh_composeSndLz_Pc_1_1)))))))
                | _ -> 
                  (Lazy.force ((addPs_lh (lazy (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz)))))) ((multPsFstLz_lh _lh_composeSndLz_arg2_0) ((composeSndLz_lh _lh_composeSndLz_Pc_1_0) _lh_composeSndLz_arg2_0)))))
            | _ -> 
              (Lazy.force ((addPs_lh (lazy (`Pc(_lh_composeSndLz_Pc_0_0, (lazy (`Pz)))))) ((multPsFstLz_lh _lh_composeSndLz_arg2_0) ((composeSndLz_lh _lh_composeSndLz_Pc_1_0) _lh_composeSndLz_arg2_0))))))
      | _ -> 
        (failwith "error"))));;
let rec tree_lh =
  (lazy (`Pc(0, ((composeSndLz_lh list_lh) (lazy tree_lh)))));;
let rec revert_lh _lh_revert_arg1_0 =
  (lazy (let rec _lh_matchIdent_2_5 = (Lazy.force _lh_revert_arg1_0) in
    (match _lh_matchIdent_2_5 with
      | `Pc(_lh_revert_Pc_0_0, _lh_revert_Pc_1_0) -> 
        (match _lh_revert_Pc_0_0 with
          | 0 -> 
            (Lazy.force (let rec rs_0 = (lazy (`Pc(0, ((divPs_lh (fromIntegerPs_lh 1)) ((compose_lh _lh_revert_Pc_1_0) rs_0))))) in
              rs_0))
          | _ -> 
            (let rec _lh_matchIdent_2_6 = (Lazy.force _lh_revert_Pc_1_0) in
              (match _lh_matchIdent_2_6 with
                | `Pc(_lh_revert_Pc_0_1, _lh_revert_Pc_1_1) -> 
                  (let rec _lh_matchIdent_2_7 = (Lazy.force _lh_revert_Pc_1_1) in
                    (match _lh_matchIdent_2_7 with
                      | `Pz -> 
                        (`Pc(((0 - 1) / _lh_revert_Pc_0_1), (lazy (`Pc((1 / _lh_revert_Pc_0_1), (lazy (`Pz)))))))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (failwith "error"))))
      | _ -> 
        (failwith "error"))));;
let rec testPower_nofib_lh _lh_testPower_nofib_arg1_0 =
  (`LH_C(((extract_lh _lh_testPower_nofib_arg1_0) ((minusPs_lh (sinx_lh 0)) (sqrtPs_lh ((minusPs_lh (fromIntegerPs_lh 1)) ((powerPs_lh (cosx_lh 0)) 2))))), (`LH_C(((extract_lh _lh_testPower_nofib_arg1_0) ((minusPs_lh ((divPs_lh (sinx_lh 0)) (cosx_lh 0))) (revert_lh (integral_lh ((divPs_lh (fromIntegerPs_lh 1)) ((addPs_lh (fromIntegerPs_lh 1)) ((powerPs_lh x_lh) 2))))))), (`LH_C(((extract_lh _lh_testPower_nofib_arg1_0) ts_lh), (`LH_C(((extract_lh _lh_testPower_nofib_arg1_0) tree_lh), (`LH_N)))))))));;
end;;

