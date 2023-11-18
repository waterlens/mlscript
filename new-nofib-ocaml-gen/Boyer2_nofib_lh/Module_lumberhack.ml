

(* lumberhack *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack = struct
let rec addlemmalst__d0 _lh_addlemmalst_arg1_0 _lh_addlemmalst_arg2_0 =
  (_lh_addlemmalst_arg1_0 _lh_addlemmalst_arg2_0);;
let rec addtoLUT__d0 _lh_addtoLUT_arg1_0 =
  (match _lh_addtoLUT_arg1_0 with
    | `LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_2_0) -> 
      (match _lh_addtoLUT_LH_P3_2_0 with
        | `Empty -> 
          (`Node((`LH_P3((`Empty), (`LH_P2(_lh_addtoLUT_LH_P3_0_0, (`LH_C(_lh_addtoLUT_LH_P3_1_0, (`LH_N))))), (`Empty)))))
        | `Node(_lh_addtoLUT_Node_0_0) -> 
          (match _lh_addtoLUT_Node_0_0 with
            | `LH_P3(_lh_addtoLUT_LH_P3_0_1, _lh_addtoLUT_LH_P3_1_1, _lh_addtoLUT_LH_P3_2_1) -> 
              (match _lh_addtoLUT_LH_P3_1_1 with
                | `LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0) -> 
                  (if (_lh_addtoLUT_LH_P3_0_0 = _lh_addtoLUT_LH_P2_0_0) then
                    (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_1, (`LH_P2(_lh_addtoLUT_LH_P2_0_0, (`LH_C(_lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P2_1_0)))), _lh_addtoLUT_LH_P3_2_1))))
                  else
                    (if (_lh_addtoLUT_LH_P3_0_0 < _lh_addtoLUT_LH_P2_0_0) then
                      (`Node((`LH_P3((addtoLUT__d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_0_1))), (`LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0)), _lh_addtoLUT_LH_P3_2_1))))
                    else
                      (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_1, (`LH_P2(_lh_addtoLUT_LH_P2_0_0, _lh_addtoLUT_LH_P2_1_0)), (addtoLUT__d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_0, _lh_addtoLUT_LH_P3_1_0, _lh_addtoLUT_LH_P3_2_1)))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d0 _lh_assoc_arg1_2 =
  (match _lh_assoc_arg1_2 with
    | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
      (match _lh_assoc_LH_P2_1_6 with
        | `Cons(_lh_assoc_Cons_0_4) -> 
          (match _lh_assoc_Cons_0_4 with
            | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
              (let rec _lh_matchIdent_4_0 = _lh_assoc_LH_P2_0_7 in
                (match _lh_matchIdent_4_0 with
                  | `Cons(_lh_assoc_Cons_0_5) -> 
                    (match _lh_assoc_Cons_0_5 with
                      | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
                        (match _lh_assoc_LH_P2_0_8 with
                          | `Atom(_lh_assoc_Atom_0_2) -> 
                            (if (_lh_assoc_LH_P2_0_6 = (`Atom(_lh_assoc_Atom_0_2))) then
                              _lh_assoc_LH_P2_0_7
                            else
                              (assoc__d0 (`LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_7))))
                          | _ -> 
                            (`Nil))
                      | _ -> 
                        (`Nil))
                  | _ -> 
                    (`Nil)))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (failwith "error"));;
let rec assoc__d1 _lh_assoc_arg1_1 =
  (match _lh_assoc_arg1_1 with
    | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
      (match _lh_assoc_LH_P2_1_3 with
        | `Cons(_lh_assoc_Cons_0_2) -> 
          (match _lh_assoc_Cons_0_2 with
            | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
              (let rec _lh_matchIdent_3_7 = _lh_assoc_LH_P2_0_4 in
                (match _lh_matchIdent_3_7 with
                  | `Cons(_lh_assoc_Cons_0_3) -> 
                    (match _lh_assoc_Cons_0_3 with
                      | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
                        (match _lh_assoc_LH_P2_0_5 with
                          | `Atom(_lh_assoc_Atom_0_1) -> 
                            (if (_lh_assoc_LH_P2_0_3 = (`Atom(_lh_assoc_Atom_0_1))) then
                              _lh_assoc_LH_P2_0_4
                            else
                              (assoc__d1 (`LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_4))))
                          | _ -> 
                            (`Nil))
                      | _ -> 
                        (`Nil))
                  | _ -> 
                    (`Nil)))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (failwith "error"));;
let rec assoc__d2 _lh_assoc_arg1_0 =
  (match _lh_assoc_arg1_0 with
    | `LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_0) -> 
      (match _lh_assoc_LH_P2_1_0 with
        | `Cons(_lh_assoc_Cons_0_0) -> 
          (match _lh_assoc_Cons_0_0 with
            | `LH_P2(_lh_assoc_LH_P2_0_1, _lh_assoc_LH_P2_1_1) -> 
              (let rec _lh_matchIdent_3_2 = _lh_assoc_LH_P2_0_1 in
                (match _lh_matchIdent_3_2 with
                  | `Cons(_lh_assoc_Cons_0_1) -> 
                    (match _lh_assoc_Cons_0_1 with
                      | `LH_P2(_lh_assoc_LH_P2_0_2, _lh_assoc_LH_P2_1_2) -> 
                        (match _lh_assoc_LH_P2_0_2 with
                          | `Atom(_lh_assoc_Atom_0_0) -> 
                            (if (_lh_assoc_LH_P2_0_0 = (`Atom(_lh_assoc_Atom_0_0))) then
                              _lh_assoc_LH_P2_0_1
                            else
                              (assoc__d2 (`LH_P2(_lh_assoc_LH_P2_0_0, _lh_assoc_LH_P2_1_1))))
                          | _ -> 
                            (`Nil))
                      | _ -> 
                        (`Nil))
                  | _ -> 
                    (`Nil)))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (failwith "error"));;
let rec atom__d0 _lh_atom_arg1_1 =
  (match _lh_atom_arg1_1 with
    | `Atom(_lh_atom_Atom_0_1) -> 
      true
    | _ -> 
      false);;
let rec atom__d1 _lh_atom_arg1_0 =
  (match _lh_atom_arg1_0 with
    | `Atom(_lh_atom_Atom_0_0) -> 
      true
    | _ -> 
      false);;
let rec atom__d2 _lh_atom_arg1_2 =
  (match _lh_atom_arg1_2 with
    | `Atom(_lh_atom_Atom_0_2) -> 
      true
    | _ -> 
      false);;
let rec car__d0 _lh_car_arg1_1_0 =
  (match _lh_car_arg1_1_0 with
    | `Cons(_lh_car_Cons_0_1_0) -> 
      (match _lh_car_Cons_0_1_0 with
        | `LH_P2(_lh_car_LH_P2_0_1_0, _lh_car_LH_P2_1_1_0) -> 
          _lh_car_LH_P2_0_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1 _lh_car_arg1_8 =
  (match _lh_car_arg1_8 with
    | `Cons(_lh_car_Cons_0_8) -> 
      (match _lh_car_Cons_0_8 with
        | `LH_P2(_lh_car_LH_P2_0_8, _lh_car_LH_P2_1_8) -> 
          _lh_car_LH_P2_0_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d0 _lh_car_arg1_1 =
  (match _lh_car_arg1_1 with
    | `Cons(_lh_car_Cons_0_1) -> 
      (match _lh_car_Cons_0_1 with
        | `LH_P2(_lh_car_LH_P2_0_1, _lh_car_LH_P2_1_1) -> 
          _lh_car_LH_P2_0_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d1 _lh_car_arg1_0 =
  (match _lh_car_arg1_0 with
    | `Cons(_lh_car_Cons_0_0) -> 
      (match _lh_car_Cons_0_0 with
        | `LH_P2(_lh_car_LH_P2_0_0, _lh_car_LH_P2_1_0) -> 
          _lh_car_LH_P2_0_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d2 _lh_car_arg1_1_3 =
  (match _lh_car_arg1_1_3 with
    | `Cons(_lh_car_Cons_0_1_3) -> 
      (match _lh_car_Cons_0_1_3 with
        | `LH_P2(_lh_car_LH_P2_0_1_3, _lh_car_LH_P2_1_1_3) -> 
          _lh_car_LH_P2_0_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d3 _lh_car_arg1_7 =
  (match _lh_car_arg1_7 with
    | `Cons(_lh_car_Cons_0_7) -> 
      (match _lh_car_Cons_0_7 with
        | `LH_P2(_lh_car_LH_P2_0_7, _lh_car_LH_P2_1_7) -> 
          _lh_car_LH_P2_0_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d4 _lh_car_arg1_1_5 =
  (match _lh_car_arg1_1_5 with
    | `Cons(_lh_car_Cons_0_1_5) -> 
      (match _lh_car_Cons_0_1_5 with
        | `LH_P2(_lh_car_LH_P2_0_1_5, _lh_car_LH_P2_1_1_5) -> 
          _lh_car_LH_P2_0_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d5 _lh_car_arg1_2 =
  (match _lh_car_arg1_2 with
    | `Cons(_lh_car_Cons_0_2) -> 
      (match _lh_car_Cons_0_2 with
        | `LH_P2(_lh_car_LH_P2_0_2, _lh_car_LH_P2_1_2) -> 
          _lh_car_LH_P2_0_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d2 _lh_car_arg1_3 =
  (match _lh_car_arg1_3 with
    | `Cons(_lh_car_Cons_0_3) -> 
      (match _lh_car_Cons_0_3 with
        | `LH_P2(_lh_car_LH_P2_0_3, _lh_car_LH_P2_1_3) -> 
          _lh_car_LH_P2_0_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d3 _lh_car_arg1_1_2 =
  (match _lh_car_arg1_1_2 with
    | `Cons(_lh_car_Cons_0_1_2) -> 
      (match _lh_car_Cons_0_1_2 with
        | `LH_P2(_lh_car_LH_P2_0_1_2, _lh_car_LH_P2_1_1_2) -> 
          _lh_car_LH_P2_0_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d4 _lh_car_arg1_5 =
  (match _lh_car_arg1_5 with
    | `Cons(_lh_car_Cons_0_5) -> 
      (match _lh_car_Cons_0_5 with
        | `LH_P2(_lh_car_LH_P2_0_5, _lh_car_LH_P2_1_5) -> 
          _lh_car_LH_P2_0_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d5 _lh_car_arg1_6 =
  (match _lh_car_arg1_6 with
    | `Cons(_lh_car_Cons_0_6) -> 
      (match _lh_car_Cons_0_6 with
        | `LH_P2(_lh_car_LH_P2_0_6, _lh_car_LH_P2_1_6) -> 
          _lh_car_LH_P2_0_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d6 _lh_car_arg1_9 =
  (match _lh_car_arg1_9 with
    | `Cons(_lh_car_Cons_0_9) -> 
      (match _lh_car_Cons_0_9 with
        | `LH_P2(_lh_car_LH_P2_0_9, _lh_car_LH_P2_1_9) -> 
          _lh_car_LH_P2_0_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d7 _lh_car_arg1_1_1 =
  (match _lh_car_arg1_1_1 with
    | `Cons(_lh_car_Cons_0_1_1) -> 
      (match _lh_car_Cons_0_1_1 with
        | `LH_P2(_lh_car_LH_P2_0_1_1, _lh_car_LH_P2_1_1_1) -> 
          _lh_car_LH_P2_0_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d8 _lh_car_arg1_1_4 =
  (match _lh_car_arg1_1_4 with
    | `Cons(_lh_car_Cons_0_1_4) -> 
      (match _lh_car_Cons_0_1_4 with
        | `LH_P2(_lh_car_LH_P2_0_1_4, _lh_car_LH_P2_1_1_4) -> 
          _lh_car_LH_P2_0_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d9 _lh_car_arg1_4 =
  (match _lh_car_arg1_4 with
    | `Cons(_lh_car_Cons_0_4) -> 
      (match _lh_car_Cons_0_4 with
        | `LH_P2(_lh_car_LH_P2_0_4, _lh_car_LH_P2_1_4) -> 
          _lh_car_LH_P2_0_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d0 _lh_cdr_arg1_0 =
  (match _lh_cdr_arg1_0 with
    | `Cons(_lh_cdr_Cons_0_0) -> 
      (match _lh_cdr_Cons_0_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_0, _lh_cdr_LH_P2_1_0) -> 
          _lh_cdr_LH_P2_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1 _lh_cdr_arg1_2 =
  (match _lh_cdr_arg1_2 with
    | `Cons(_lh_cdr_Cons_0_2) -> 
      (match _lh_cdr_Cons_0_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_2, _lh_cdr_LH_P2_1_2) -> 
          _lh_cdr_LH_P2_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1_d0 _lh_cdr_arg1_1 =
  (match _lh_cdr_arg1_1 with
    | `Cons(_lh_cdr_Cons_0_1) -> 
      (match _lh_cdr_Cons_0_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1, _lh_cdr_LH_P2_1_1) -> 
          _lh_cdr_LH_P2_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1_d1 _lh_cdr_arg1_5 =
  (match _lh_cdr_arg1_5 with
    | `Cons(_lh_cdr_Cons_0_5) -> 
      (match _lh_cdr_Cons_0_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_5, _lh_cdr_LH_P2_1_5) -> 
          _lh_cdr_LH_P2_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1_d2 _lh_cdr_arg1_1_0 =
  (match _lh_cdr_arg1_1_0 with
    | `Cons(_lh_cdr_Cons_0_1_0) -> 
      (match _lh_cdr_Cons_0_1_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_0, _lh_cdr_LH_P2_1_1_0) -> 
          _lh_cdr_LH_P2_1_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d2 _lh_cdr_arg1_1_2 =
  (match _lh_cdr_arg1_1_2 with
    | `Cons(_lh_cdr_Cons_0_1_2) -> 
      (match _lh_cdr_Cons_0_1_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_2, _lh_cdr_LH_P2_1_1_2) -> 
          _lh_cdr_LH_P2_1_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d3 _lh_cdr_arg1_9 =
  (match _lh_cdr_arg1_9 with
    | `Cons(_lh_cdr_Cons_0_9) -> 
      (match _lh_cdr_Cons_0_9 with
        | `LH_P2(_lh_cdr_LH_P2_0_9, _lh_cdr_LH_P2_1_9) -> 
          _lh_cdr_LH_P2_1_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d4 _lh_cdr_arg1_4 =
  (match _lh_cdr_arg1_4 with
    | `Cons(_lh_cdr_Cons_0_4) -> 
      (match _lh_cdr_Cons_0_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_4, _lh_cdr_LH_P2_1_4) -> 
          _lh_cdr_LH_P2_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d5 _lh_cdr_arg1_3 =
  (match _lh_cdr_arg1_3 with
    | `Cons(_lh_cdr_Cons_0_3) -> 
      (match _lh_cdr_Cons_0_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_3, _lh_cdr_LH_P2_1_3) -> 
          _lh_cdr_LH_P2_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d6 _lh_cdr_arg1_6 =
  (match _lh_cdr_arg1_6 with
    | `Cons(_lh_cdr_Cons_0_6) -> 
      (match _lh_cdr_Cons_0_6 with
        | `LH_P2(_lh_cdr_LH_P2_0_6, _lh_cdr_LH_P2_1_6) -> 
          _lh_cdr_LH_P2_1_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d7 _lh_cdr_arg1_8 =
  (match _lh_cdr_arg1_8 with
    | `Cons(_lh_cdr_Cons_0_8) -> 
      (match _lh_cdr_Cons_0_8 with
        | `LH_P2(_lh_cdr_LH_P2_0_8, _lh_cdr_LH_P2_1_8) -> 
          _lh_cdr_LH_P2_1_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d8 _lh_cdr_arg1_7 =
  (match _lh_cdr_arg1_7 with
    | `Cons(_lh_cdr_Cons_0_7) -> 
      (match _lh_cdr_Cons_0_7 with
        | `LH_P2(_lh_cdr_LH_P2_0_7, _lh_cdr_LH_P2_1_7) -> 
          _lh_cdr_LH_P2_1_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d9 _lh_cdr_arg1_1_1 =
  (match _lh_cdr_arg1_1_1 with
    | `Cons(_lh_cdr_Cons_0_1_1) -> 
      (match _lh_cdr_Cons_0_1_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_1, _lh_cdr_LH_P2_1_1_1) -> 
          _lh_cdr_LH_P2_1_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec getLUT__d0 _lh_getLUT_arg1_0 =
  (match _lh_getLUT_arg1_0 with
    | `LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P2_1_0) -> 
      (match _lh_getLUT_LH_P2_1_0 with
        | `Empty -> 
          (`LH_N)
        | `Node(_lh_getLUT_Node_0_0) -> 
          (match _lh_getLUT_Node_0_0 with
            | `LH_P3(_lh_getLUT_LH_P3_0_0, _lh_getLUT_LH_P3_1_0, _lh_getLUT_LH_P3_2_0) -> 
              (match _lh_getLUT_LH_P3_1_0 with
                | `LH_P2(_lh_getLUT_LH_P2_0_1, _lh_getLUT_LH_P2_1_1) -> 
                  (if (_lh_getLUT_LH_P2_0_0 = _lh_getLUT_LH_P2_0_1) then
                    _lh_getLUT_LH_P2_1_1
                  else
                    (if (_lh_getLUT_LH_P2_0_0 < _lh_getLUT_LH_P2_0_1) then
                      (getLUT__d0 (`LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P3_0_0)))
                    else
                      (getLUT__d0 (`LH_P2(_lh_getLUT_LH_P2_0_0, _lh_getLUT_LH_P3_2_0)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lispmember__d0 _lh_lispmember_arg1_2 =
  (match _lh_lispmember_arg1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_4) -> 
      (match _lh_lispmember_LH_P2_1_4 with
        | `Cons(_lh_lispmember_Cons_0_2) -> 
          (match _lh_lispmember_Cons_0_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5, _lh_lispmember_LH_P2_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_4 = _lh_lispmember_LH_P2_0_5) then
                true
              else
                (lispmember__d0 (`LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d1 _lh_lispmember_arg1_0 =
  (match _lh_lispmember_arg1_0 with
    | `LH_P2(_lh_lispmember_LH_P2_0_0, _lh_lispmember_LH_P2_1_0) -> 
      (match _lh_lispmember_LH_P2_1_0 with
        | `Cons(_lh_lispmember_Cons_0_0) -> 
          (match _lh_lispmember_Cons_0_0 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1, _lh_lispmember_LH_P2_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_0 = _lh_lispmember_LH_P2_0_1) then
                true
              else
                (lispmember__d1 (`LH_P2(_lh_lispmember_LH_P2_0_0, _lh_lispmember_LH_P2_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d2 _lh_lispmember_arg1_4 =
  (match _lh_lispmember_arg1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_8) -> 
      (match _lh_lispmember_LH_P2_1_8 with
        | `Cons(_lh_lispmember_Cons_0_4) -> 
          (match _lh_lispmember_Cons_0_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9, _lh_lispmember_LH_P2_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_8 = _lh_lispmember_LH_P2_0_9) then
                true
              else
                (lispmember__d2 (`LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d3 _lh_lispmember_arg1_3 =
  (match _lh_lispmember_arg1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_6) -> 
      (match _lh_lispmember_LH_P2_1_6 with
        | `Cons(_lh_lispmember_Cons_0_3) -> 
          (match _lh_lispmember_Cons_0_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7, _lh_lispmember_LH_P2_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_6 = _lh_lispmember_LH_P2_0_7) then
                true
              else
                (lispmember__d3 (`LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d4 _lh_lispmember_arg1_1 =
  (match _lh_lispmember_arg1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_2) -> 
      (match _lh_lispmember_LH_P2_1_2 with
        | `Cons(_lh_lispmember_Cons_0_1) -> 
          (match _lh_lispmember_Cons_0_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3, _lh_lispmember_LH_P2_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_2 = _lh_lispmember_LH_P2_0_3) then
                true
              else
                (lispmember__d4 (`LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec makelemmas__d0 _lh_makelemmas_arg1_0 =
  (_lh_makelemmas_arg1_0 99);;
let rec mappend__d0 xs_1 ys_8_8 =
  (xs_1 ys_8_8);;
let rec mappend__d1 xs_2 ys_8_9 =
  (match xs_2 with
    | `LH_C(h_8_4, t_8_4) -> 
      (`LH_C(h_8_4, ((mappend__d1 t_8_4) ys_8_9)))
    | `LH_N -> 
      ys_8_9);;
let rec mappend__d2 xs_3 ys_9_0 =
  (xs_3 ys_9_0);;
let rec mappend__d4 xs_0 ys_8_7 =
  (xs_0 ys_8_7);;
let rec report__d0 _lh_report_arg1_0 =
  (match _lh_report_arg1_0 with
    | true -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
    | false -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken__d0 _lh_restOfToken_arg1_1 =
  (match _lh_restOfToken_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1) -> 
      (if (((_lh_restOfToken_LH_C_0_1 = '(') || (_lh_restOfToken_LH_C_0_1 = ')')) || (_lh_restOfToken_LH_C_0_1 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_1_9 = (restOfToken__d0 _lh_restOfToken_LH_C_1_1) in
          (match _lh_matchIdent_1_9 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_1, _lh_restOfToken_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_P2_0_1)), _lh_restOfToken_LH_P2_1_1))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken__d1 _lh_restOfToken_arg1_0 =
  (match _lh_restOfToken_arg1_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_C_1_0) -> 
      (if (((_lh_restOfToken_LH_C_0_0 = '(') || (_lh_restOfToken_LH_C_0_0 = ')')) || (_lh_restOfToken_LH_C_0_0 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_C_1_0))))
      else
        (let rec _lh_matchIdent_8 = (restOfToken__d1 _lh_restOfToken_LH_C_1_0) in
          (match _lh_matchIdent_8 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_0, _lh_restOfToken_LH_P2_1_0) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_0, _lh_restOfToken_LH_P2_0_0)), _lh_restOfToken_LH_P2_1_0))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken__d2 _lh_restOfToken_arg1_2 =
  (match _lh_restOfToken_arg1_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_C_1_2) -> 
      (if (((_lh_restOfToken_LH_C_0_2 = '(') || (_lh_restOfToken_LH_C_0_2 = ')')) || (_lh_restOfToken_LH_C_0_2 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_C_1_2))))
      else
        (let rec _lh_matchIdent_3_3 = (restOfToken__d2 _lh_restOfToken_LH_C_1_2) in
          (match _lh_matchIdent_3_3 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_2, _lh_restOfToken_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_P2_0_2)), _lh_restOfToken_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist__d0 _lh_sublist_arg1_1 =
  (match _lh_sublist_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_2, _lh_sublist_LH_C_1_2) -> 
      (match _lh_sublist_LH_C_0_2 with
        | `LH_C(_lh_sublist_LH_C_0_3, _lh_sublist_LH_C_1_3) -> 
          (match _lh_sublist_LH_C_0_3 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_9 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_9 with
                      | `LH_P2(_lh_sublist_LH_P2_0_6, _lh_sublist_LH_P2_1_6) -> 
                        (let rec _lh_matchIdent_1_0 = (sublist__d0 _lh_sublist_LH_P2_0_6) in
                          (match _lh_matchIdent_1_0 with
                            | `LH_P2(_lh_sublist_LH_P2_0_7, _lh_sublist_LH_P2_1_7) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_7, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_6, _lh_sublist_LH_P2_1_7))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_1_1 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_1_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_8, _lh_sublist_LH_P2_1_8) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_8, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_8))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_3 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_2, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_1_2 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_1_2 with
                      | `LH_P2(_lh_sublist_LH_P2_0_9, _lh_sublist_LH_P2_1_9) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_9, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_9))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_1_3 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                (match _lh_matchIdent_1_3 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_0, _lh_sublist_LH_P2_1_1_0) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_0))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_1_4 = (sublist__d0 _lh_sublist_LH_C_1_2) in
            (match _lh_matchIdent_1_4 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_1, _lh_sublist_LH_P2_1_1_1) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_1, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_1))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist__d1 _lh_sublist_arg1_2 =
  (match _lh_sublist_arg1_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_4, _lh_sublist_LH_C_1_4) -> 
      (match _lh_sublist_LH_C_0_4 with
        | `LH_C(_lh_sublist_LH_C_0_5, _lh_sublist_LH_C_1_5) -> 
          (match _lh_sublist_LH_C_0_5 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_5 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_2_2 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_2_2 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_2, _lh_sublist_LH_P2_1_1_2) -> 
                        (let rec _lh_matchIdent_2_3 = (sublist__d1 _lh_sublist_LH_P2_0_1_2) in
                          (match _lh_matchIdent_2_3 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_3, _lh_sublist_LH_P2_1_1_3) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_3, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_2, _lh_sublist_LH_P2_1_1_3))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_2_4 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_2_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_4, _lh_sublist_LH_P2_1_1_4) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_4))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_5 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_4, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_2_5 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_2_5 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_5, _lh_sublist_LH_P2_1_1_5) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_5))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_2_6 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                (match _lh_matchIdent_2_6 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_6, _lh_sublist_LH_P2_1_1_6) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_6, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_6))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_2_7 = (sublist__d1 _lh_sublist_LH_C_1_4) in
            (match _lh_matchIdent_2_7 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_7, _lh_sublist_LH_P2_1_1_7) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_7, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_7))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist__d2 _lh_sublist_arg1_0 =
  (match _lh_sublist_arg1_0 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_0, _lh_sublist_LH_C_1_0) -> 
      (match _lh_sublist_LH_C_0_0 with
        | `LH_C(_lh_sublist_LH_C_0_1, _lh_sublist_LH_C_1_1) -> 
          (match _lh_sublist_LH_C_0_1 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1 = (sublist__d2 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_0, _lh_sublist_LH_P2_1_0) -> 
                        (let rec _lh_matchIdent_2 = (sublist__d2 _lh_sublist_LH_P2_0_0) in
                          (match _lh_matchIdent_2 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1, _lh_sublist_LH_P2_1_1) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_0, _lh_sublist_LH_P2_1_1))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_3 = (sublist__d2 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2, _lh_sublist_LH_P2_1_2) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_2))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_1 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_0, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_4 = (sublist__d2 _lh_sublist_LH_C_1_0) in
                    (match _lh_matchIdent_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_3, _lh_sublist_LH_P2_1_3) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_3))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_5 = (sublist__d2 _lh_sublist_LH_C_1_0) in
                (match _lh_matchIdent_5 with
                  | `LH_P2(_lh_sublist_LH_P2_0_4, _lh_sublist_LH_P2_1_4) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_4))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_6 = (sublist__d2 _lh_sublist_LH_C_1_0) in
            (match _lh_matchIdent_6 with
              | `LH_P2(_lh_sublist_LH_P2_0_5, _lh_sublist_LH_P2_1_5) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_0)), _lh_sublist_LH_P2_1_5))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec tv__d0 _lh_tv_arg1_2 =
  (match _lh_tv_arg1_2 with
    | `Atom(_lh_tv_Atom_0_2) -> 
      _lh_tv_Atom_0_2
    | _ -> 
      (failwith "error"));;
let rec tv__d1 _lh_tv_arg1_1 =
  (match _lh_tv_arg1_1 with
    | `Atom(_lh_tv_Atom_0_1) -> 
      _lh_tv_Atom_0_1
    | _ -> 
      (failwith "error"));;
let rec tv__d2 _lh_tv_arg1_0 =
  (match _lh_tv_arg1_0 with
    | `Atom(_lh_tv_Atom_0_0) -> 
      _lh_tv_Atom_0_0
    | _ -> 
      (failwith "error"));;
let rec addlemma__d0 _lh_addlemma_arg1_0 _lh_addlemma_arg2_0 =
  (match _lh_addlemma_arg1_0 with
    | `Nil -> 
      _lh_addlemma_arg2_0
    | `Atom(_lh_addlemma_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_addlemma_Cons_0_0) -> 
      (match _lh_addlemma_Cons_0_0 with
        | `LH_P2(_lh_addlemma_LH_P2_0_0, _lh_addlemma_LH_P2_1_0) -> 
          (let rec z_0 = (car__d0 _lh_addlemma_LH_P2_1_0) in
            (if (((tv__d0 _lh_addlemma_LH_P2_0_0) = (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_N)))))))))))) && (not (atom__d0 z_0))) then
              (addtoLUT__d0 (`LH_P3((tv__d1 (car__d1 z_0)), (`Cons((`LH_P2(_lh_addlemma_LH_P2_0_0, _lh_addlemma_LH_P2_1_0)))), _lh_addlemma_arg2_0)))
            else
              (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst__d0 _lh_applysubst_arg1_1 _lh_applysubst_arg2_1 =
  (match _lh_applysubst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_1) -> 
      (let rec _lh_matchIdent_2_9 = (assoc__d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_1)), _lh_applysubst_arg1_1))) in
        (match _lh_matchIdent_2_9 with
          | `Cons(_lh_applysubst_Cons_0_2) -> 
            (match _lh_applysubst_Cons_0_2 with
              | `LH_P2(_lh_applysubst_LH_P2_0_2, _lh_applysubst_LH_P2_1_2) -> 
                _lh_applysubst_LH_P2_1_2
              | _ -> 
                (`Atom(_lh_applysubst_Atom_0_1)))
          | _ -> 
            (`Atom(_lh_applysubst_Atom_0_1))))
    | `Cons(_lh_applysubst_Cons_0_3) -> 
      (match _lh_applysubst_Cons_0_3 with
        | `LH_P2(_lh_applysubst_LH_P2_0_3, _lh_applysubst_LH_P2_1_3) -> 
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_3, ((applysubstlst__d0 _lh_applysubst_arg1_1) _lh_applysubst_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst__d1 _lh_applysubst_arg1_0 _lh_applysubst_arg2_0 =
  (match _lh_applysubst_arg2_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_0) -> 
      (let rec _lh_matchIdent_1_8 = (assoc__d2 (`LH_P2((`Atom(_lh_applysubst_Atom_0_0)), _lh_applysubst_arg1_0))) in
        (match _lh_matchIdent_1_8 with
          | `Cons(_lh_applysubst_Cons_0_0) -> 
            (match _lh_applysubst_Cons_0_0 with
              | `LH_P2(_lh_applysubst_LH_P2_0_0, _lh_applysubst_LH_P2_1_0) -> 
                _lh_applysubst_LH_P2_1_0
              | _ -> 
                (`Atom(_lh_applysubst_Atom_0_0)))
          | _ -> 
            (`Atom(_lh_applysubst_Atom_0_0))))
    | `Cons(_lh_applysubst_Cons_0_1) -> 
      (match _lh_applysubst_Cons_0_1 with
        | `LH_P2(_lh_applysubst_LH_P2_0_1, _lh_applysubst_LH_P2_1_1) -> 
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_1, ((applysubstlst__d1 _lh_applysubst_arg1_0) _lh_applysubst_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst__d0 _lh_applysubstlst_arg1_0 _lh_applysubstlst_arg2_0 =
  (match _lh_applysubstlst_arg2_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_0) -> 
      (match _lh_applysubstlst_Cons_0_0 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_0, _lh_applysubstlst_LH_P2_1_0) -> 
          (`Cons((`LH_P2(((applysubst__d0 _lh_applysubstlst_arg1_0) _lh_applysubstlst_LH_P2_0_0), ((applysubstlst__d0 _lh_applysubstlst_arg1_0) _lh_applysubstlst_LH_P2_1_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst__d1 _lh_applysubstlst_arg1_1 _lh_applysubstlst_arg2_1 =
  (match _lh_applysubstlst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_1) -> 
      (match _lh_applysubstlst_Cons_0_1 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_1, _lh_applysubstlst_LH_P2_1_1) -> 
          (`Cons((`LH_P2(((applysubst__d1 _lh_applysubstlst_arg1_1) _lh_applysubstlst_LH_P2_0_1), ((applysubstlst__d1 _lh_applysubstlst_arg1_1) _lh_applysubstlst_LH_P2_1_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and caddr__d0 _lh_caddr_arg1_2 =
  ((fun _lh_funcomp_x_7 -> 
    ((fun _lh_funcomp_x_8 -> 
      (car__d2 (cdr__d0 _lh_funcomp_x_8))) (cdr__d1 _lh_funcomp_x_7))) _lh_caddr_arg1_2)
and caddr__d1 _lh_caddr_arg1_0 =
  ((fun _lh_funcomp_x_2 -> 
    ((fun _lh_funcomp_x_3 -> 
      (car__d8 (cdr__d7 _lh_funcomp_x_3))) (cdr__d8 _lh_funcomp_x_2))) _lh_caddr_arg1_0)
and caddr__d2 _lh_caddr_arg1_1 =
  ((fun _lh_funcomp_x_4 -> 
    ((fun _lh_funcomp_x_5 -> 
      (car__d9 (cdr__d9 _lh_funcomp_x_5))) (cdr__d1_d0 _lh_funcomp_x_4))) _lh_caddr_arg1_1)
and cadr__d0 _lh_cadr_arg1_0 =
  ((fun _lh_funcomp_x_0 -> 
    (car__d3 (cdr__d2 _lh_funcomp_x_0))) _lh_cadr_arg1_0)
and cadr__d1 _lh_cadr_arg1_1 =
  ((fun _lh_funcomp_x_1 -> 
    (car__d1_d0 (cdr__d1_d1 _lh_funcomp_x_1))) _lh_cadr_arg1_1)
and cadr__d2 _lh_cadr_arg1_2 =
  ((fun _lh_funcomp_x_6 -> 
    (car__d1_d1 (cdr__d1_d2 _lh_funcomp_x_6))) _lh_cadr_arg1_2)
and falsep__d0 _lh_falsep_arg1_0 =
  (match _lh_falsep_arg1_0 with
    | `LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0) -> 
      (match _lh_falsep_LH_P2_0_0 with
        | `Nil -> 
          false
        | `Cons(_lh_falsep_Cons_0_0) -> 
          (match _lh_falsep_Cons_0_0 with
            | `LH_P2(_lh_falsep_LH_P2_0_1, _lh_falsep_LH_P2_1_1) -> 
              (match _lh_falsep_LH_P2_0_1 with
                | `Atom(_lh_falsep_Atom_0_0) -> 
                  (match _lh_falsep_Atom_0_0 with
                    | `LH_C(_lh_falsep_LH_C_0_0, _lh_falsep_LH_C_1_0) -> 
                      (match _lh_falsep_LH_C_0_0 with
                        | 'f' -> 
                          (match _lh_falsep_LH_C_1_0 with
                            | `LH_N -> 
                              (match _lh_falsep_LH_P2_1_1 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                            | _ -> 
                              (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                        | _ -> 
                          (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                    | _ -> 
                      (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
                | _ -> 
                  (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
            | _ -> 
              (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
        | _ -> 
          (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_0, _lh_falsep_LH_P2_1_0))))
    | _ -> 
      (failwith "error"))
and falsep__d1 _lh_falsep_arg1_1 =
  (match _lh_falsep_arg1_1 with
    | `LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2) -> 
      (match _lh_falsep_LH_P2_0_2 with
        | `Nil -> 
          false
        | `Cons(_lh_falsep_Cons_0_1) -> 
          (match _lh_falsep_Cons_0_1 with
            | `LH_P2(_lh_falsep_LH_P2_0_3, _lh_falsep_LH_P2_1_3) -> 
              (match _lh_falsep_LH_P2_0_3 with
                | `Atom(_lh_falsep_Atom_0_1) -> 
                  (match _lh_falsep_Atom_0_1 with
                    | `LH_C(_lh_falsep_LH_C_0_1, _lh_falsep_LH_C_1_1) -> 
                      (match _lh_falsep_LH_C_0_1 with
                        | 'f' -> 
                          (match _lh_falsep_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_falsep_LH_P2_1_3 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                | _ -> 
                  (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
            | _ -> 
              (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
        | _ -> 
          (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"))
and getToken__d0 _lh_getToken_arg1_1 =
  (match _lh_getToken_arg1_1 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_1_3 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_0_3 = (`LH_N) in
          (fun _lh_dummy_3 -> 
            (`LH_C(_lh_strToToken_LH_P2_0_3, (strToToken__d0 _lh_strToToken_LH_P2_1_3))))))
    | `LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_C_1_1) -> 
      (if (_lh_getToken_LH_C_0_1 = ' ') then
        (getToken__d0 _lh_getToken_LH_C_1_1)
      else
        (if ((_lh_getToken_LH_C_0_1 = '(') || (_lh_getToken_LH_C_0_1 = ')')) then
          (let rec _lh_strToToken_LH_P2_1_4 = _lh_getToken_LH_C_1_1 in
            (let rec _lh_strToToken_LH_P2_0_4 = (`LH_C(_lh_getToken_LH_C_0_1, (`LH_N))) in
              (fun _lh_dummy_4 -> 
                (`LH_C(_lh_strToToken_LH_P2_0_4, (strToToken__d0 _lh_strToToken_LH_P2_1_4))))))
        else
          (let rec _lh_matchIdent_1_5 = (restOfToken__d0 _lh_getToken_LH_C_1_1) in
            (match _lh_matchIdent_1_5 with
              | `LH_P2(_lh_getToken_LH_P2_0_1, _lh_getToken_LH_P2_1_1) -> 
                (let rec _lh_strToToken_LH_P2_1_5 = _lh_getToken_LH_P2_1_1 in
                  (let rec _lh_strToToken_LH_P2_0_5 = (`LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_P2_0_1)) in
                    (fun _lh_dummy_5 -> 
                      (`LH_C(_lh_strToToken_LH_P2_0_5, (strToToken__d0 _lh_strToToken_LH_P2_1_5))))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken__d1 _lh_getToken_arg1_0 =
  (match _lh_getToken_arg1_0 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_1_0 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_0_0 = (`LH_N) in
          (fun _lh_dummy_0 -> 
            (`LH_C(_lh_strToToken_LH_P2_0_0, (strToToken__d1 _lh_strToToken_LH_P2_1_0))))))
    | `LH_C(_lh_getToken_LH_C_0_0, _lh_getToken_LH_C_1_0) -> 
      (if (_lh_getToken_LH_C_0_0 = ' ') then
        (getToken__d1 _lh_getToken_LH_C_1_0)
      else
        (if ((_lh_getToken_LH_C_0_0 = '(') || (_lh_getToken_LH_C_0_0 = ')')) then
          (let rec _lh_strToToken_LH_P2_1_1 = _lh_getToken_LH_C_1_0 in
            (let rec _lh_strToToken_LH_P2_0_1 = (`LH_C(_lh_getToken_LH_C_0_0, (`LH_N))) in
              (fun _lh_dummy_1 -> 
                (`LH_C(_lh_strToToken_LH_P2_0_1, (strToToken__d1 _lh_strToToken_LH_P2_1_1))))))
        else
          (let rec _lh_matchIdent_0 = (restOfToken__d1 _lh_getToken_LH_C_1_0) in
            (match _lh_matchIdent_0 with
              | `LH_P2(_lh_getToken_LH_P2_0_0, _lh_getToken_LH_P2_1_0) -> 
                (let rec _lh_strToToken_LH_P2_1_2 = _lh_getToken_LH_P2_1_0 in
                  (let rec _lh_strToToken_LH_P2_0_2 = (`LH_C(_lh_getToken_LH_C_0_0, _lh_getToken_LH_P2_0_0)) in
                    (fun _lh_dummy_2 -> 
                      (`LH_C(_lh_strToToken_LH_P2_0_2, (strToToken__d1 _lh_strToToken_LH_P2_1_2))))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken__d2 _lh_getToken_arg1_2 =
  (match _lh_getToken_arg1_2 with
    | `LH_N -> 
      (let rec _lh_strToToken_LH_P2_1_6 = (`LH_N) in
        (let rec _lh_strToToken_LH_P2_0_6 = (`LH_N) in
          (fun _lh_dummy_6 -> 
            (`LH_C(_lh_strToToken_LH_P2_0_6, (strToToken__d2 _lh_strToToken_LH_P2_1_6))))))
    | `LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_C_1_2) -> 
      (if (_lh_getToken_LH_C_0_2 = ' ') then
        (getToken__d2 _lh_getToken_LH_C_1_2)
      else
        (if ((_lh_getToken_LH_C_0_2 = '(') || (_lh_getToken_LH_C_0_2 = ')')) then
          (let rec _lh_strToToken_LH_P2_1_7 = _lh_getToken_LH_C_1_2 in
            (let rec _lh_strToToken_LH_P2_0_7 = (`LH_C(_lh_getToken_LH_C_0_2, (`LH_N))) in
              (fun _lh_dummy_7 -> 
                (`LH_C(_lh_strToToken_LH_P2_0_7, (strToToken__d2 _lh_strToToken_LH_P2_1_7))))))
        else
          (let rec _lh_matchIdent_2_8 = (restOfToken__d2 _lh_getToken_LH_C_1_2) in
            (match _lh_matchIdent_2_8 with
              | `LH_P2(_lh_getToken_LH_P2_0_2, _lh_getToken_LH_P2_1_2) -> 
                (let rec _lh_strToToken_LH_P2_1_8 = _lh_getToken_LH_P2_1_2 in
                  (let rec _lh_strToToken_LH_P2_0_8 = (`LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_P2_0_2)) in
                    (fun _lh_dummy_8 -> 
                      (`LH_C(_lh_strToToken_LH_P2_0_8, (strToToken__d2 _lh_strToToken_LH_P2_1_8))))))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and lemmas__d0 _lh_lemmas_arg1_0 =
  ((addlemmalst__d0 (makelemmas__d0 (rules__d0 0))) (`Empty))
and mappend__d3 xs_4 ys_9_1 =
  (match xs_4 with
    | `LH_C(h_8_5, t_8_5) -> 
      (let rec t_8_6 = ((mappend__d3 t_8_5) ys_9_1) in
        (let rec h_8_6 = h_8_5 in
          (fun ys_9_2 -> 
            (`LH_C(h_8_6, ((mappend__d2 t_8_6) ys_9_2))))))
    | `LH_N -> 
      ys_9_1)
and mkLisplist__d0 _lh_mkLisplist_arg1_0 =
  (match _lh_mkLisplist_arg1_0 with
    | `LH_C(_lh_mkLisplist_LH_C_0_0, _lh_mkLisplist_LH_C_1_0) -> 
      (match _lh_mkLisplist_LH_C_0_0 with
        | `LH_C(_lh_mkLisplist_LH_C_0_1, _lh_mkLisplist_LH_C_1_1) -> 
          (match _lh_mkLisplist_LH_C_0_1 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_1 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_6 = (sublist__d0 _lh_mkLisplist_LH_C_1_0) in
                    (match _lh_matchIdent_1_6 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_0, _lh_mkLisplist_LH_P2_1_0) -> 
                        (let rec _lh_matchIdent_1_7 = _lh_mkLisplist_LH_P2_0_0 in
                          (match _lh_matchIdent_1_7 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_0
                            | _ -> 
                              (`Nil)))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (`Nil))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil))
and mkLisplist__d1 _lh_mkLisplist_arg1_2 =
  (match _lh_mkLisplist_arg1_2 with
    | `LH_C(_lh_mkLisplist_LH_C_0_4, _lh_mkLisplist_LH_C_1_4) -> 
      (match _lh_mkLisplist_LH_C_0_4 with
        | `LH_C(_lh_mkLisplist_LH_C_0_5, _lh_mkLisplist_LH_C_1_5) -> 
          (match _lh_mkLisplist_LH_C_0_5 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_5 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3_4 = (sublist__d1 _lh_mkLisplist_LH_C_1_4) in
                    (match _lh_matchIdent_3_4 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_2, _lh_mkLisplist_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_3_5 = _lh_mkLisplist_LH_P2_0_2 in
                          (match _lh_matchIdent_3_5 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_2
                            | _ -> 
                              (`Nil)))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (`Nil))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil))
and mkLisplist__d2 _lh_mkLisplist_arg1_1 =
  (match _lh_mkLisplist_arg1_1 with
    | `LH_C(_lh_mkLisplist_LH_C_0_2, _lh_mkLisplist_LH_C_1_2) -> 
      (match _lh_mkLisplist_LH_C_0_2 with
        | `LH_C(_lh_mkLisplist_LH_C_0_3, _lh_mkLisplist_LH_C_1_3) -> 
          (match _lh_mkLisplist_LH_C_0_3 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_3_0 = (sublist__d2 _lh_mkLisplist_LH_C_1_2) in
                    (match _lh_matchIdent_3_0 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_1, _lh_mkLisplist_LH_P2_1_1) -> 
                        (let rec _lh_matchIdent_3_1 = _lh_mkLisplist_LH_P2_0_1 in
                          (match _lh_matchIdent_3_1 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_1
                            | _ -> 
                              (`Nil)))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (`Nil))
            | _ -> 
              (`Nil))
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil))
and onewayunify1__d0 _lh_onewayunify1_arg1_0 _lh_onewayunify1_arg2_0 _lh_onewayunify1_arg3_0 =
  (if (atom__d1 _lh_onewayunify1_arg2_0) then
    (let rec _lh_matchIdent_2_0 = (assoc__d1 (`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg3_0))) in
      (match _lh_matchIdent_2_0 with
        | `Cons(_lh_onewayunify1_Cons_0_0) -> 
          (match _lh_onewayunify1_Cons_0_0 with
            | `LH_P2(_lh_onewayunify1_LH_P2_0_0, _lh_onewayunify1_LH_P2_1_0) -> 
              (`LH_P2((_lh_onewayunify1_arg1_0 = _lh_onewayunify1_LH_P2_1_0), _lh_onewayunify1_arg3_0))
            | _ -> 
              (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg1_0)))), _lh_onewayunify1_arg3_0)))))))
        | _ -> 
          (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_0, _lh_onewayunify1_arg1_0)))), _lh_onewayunify1_arg3_0))))))))
  else
    (if (atom__d2 _lh_onewayunify1_arg1_0) then
      (`LH_P2(false, _lh_onewayunify1_arg3_0))
    else
      (if ((car__d4 _lh_onewayunify1_arg1_0) = (car__d5 _lh_onewayunify1_arg2_0)) then
        (((onewayunify1lst__d0 (cdr__d3 _lh_onewayunify1_arg1_0)) (cdr__d4 _lh_onewayunify1_arg2_0)) _lh_onewayunify1_arg3_0)
      else
        (`LH_P2(false, _lh_onewayunify1_arg3_0)))))
and onewayunify1lst__d0 _lh_onewayunify1lst_arg1_0 _lh_onewayunify1lst_arg2_0 _lh_onewayunify1lst_arg3_0 =
  (match _lh_onewayunify1lst_arg1_0 with
    | `Nil -> 
      (`LH_P2(true, _lh_onewayunify1lst_arg3_0))
    | _ -> 
      (let rec _lh_matchIdent_3_6 = (((onewayunify1__d0 (car__d6 _lh_onewayunify1lst_arg1_0)) (car__d7 _lh_onewayunify1lst_arg2_0)) _lh_onewayunify1lst_arg3_0) in
        (match _lh_matchIdent_3_6 with
          | `LH_P2(_lh_onewayunify1lst_LH_P2_0_0, _lh_onewayunify1lst_LH_P2_1_0) -> 
            (if _lh_onewayunify1lst_LH_P2_0_0 then
              (((onewayunify1lst__d0 (cdr__d5 _lh_onewayunify1lst_arg1_0)) (cdr__d6 _lh_onewayunify1lst_arg2_0)) _lh_onewayunify1lst_LH_P2_1_0)
            else
              (`LH_P2(false, _lh_onewayunify1lst_LH_P2_1_0)))
          | _ -> 
            (failwith "error"))))
and onewayunify__d0 _lh_onewayunify_arg1_0 _lh_onewayunify_arg2_0 =
  (((onewayunify1__d0 _lh_onewayunify_arg1_0) _lh_onewayunify_arg2_0) (`Nil))
and rewrite__d0 _lh_rewrite_arg1_0 _lh_rewrite_arg2_0 =
  (match _lh_rewrite_arg1_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewrite_Atom_0_0) -> 
      (`Atom(_lh_rewrite_Atom_0_0))
    | `Cons(_lh_rewrite_Cons_0_0) -> 
      (match _lh_rewrite_Cons_0_0 with
        | `LH_P2(_lh_rewrite_LH_P2_0_0, _lh_rewrite_LH_P2_1_0) -> 
          (((rewritewithlemmas__d0 (`Cons((`LH_P2(_lh_rewrite_LH_P2_0_0, ((rewriteargs__d0 _lh_rewrite_LH_P2_1_0) _lh_rewrite_arg2_0)))))) (getLUT__d0 (`LH_P2((tv__d2 _lh_rewrite_LH_P2_0_0), _lh_rewrite_arg2_0)))) _lh_rewrite_arg2_0)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewriteargs__d0 _lh_rewriteargs_arg1_0 _lh_rewriteargs_arg2_0 =
  (match _lh_rewriteargs_arg1_0 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewriteargs_Atom_0_0) -> 
      (failwith "error")
    | `Cons(_lh_rewriteargs_Cons_0_0) -> 
      (match _lh_rewriteargs_Cons_0_0 with
        | `LH_P2(_lh_rewriteargs_LH_P2_0_0, _lh_rewriteargs_LH_P2_1_0) -> 
          (`Cons((`LH_P2(((rewrite__d0 _lh_rewriteargs_LH_P2_0_0) _lh_rewriteargs_arg2_0), ((rewriteargs__d0 _lh_rewriteargs_LH_P2_1_0) _lh_rewriteargs_arg2_0)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewritewithlemmas__d0 _lh_rewritewithlemmas_arg1_0 _lh_rewritewithlemmas_arg2_0 _lh_rewritewithlemmas_arg3_0 =
  (match _lh_rewritewithlemmas_arg2_0 with
    | `LH_N -> 
      _lh_rewritewithlemmas_arg1_0
    | `LH_C(_lh_rewritewithlemmas_LH_C_0_0, _lh_rewritewithlemmas_LH_C_1_0) -> 
      (let rec _lh_matchIdent_4_1 = ((onewayunify__d0 _lh_rewritewithlemmas_arg1_0) (cadr__d0 _lh_rewritewithlemmas_LH_C_0_0)) in
        (match _lh_matchIdent_4_1 with
          | `LH_P2(_lh_rewritewithlemmas_LH_P2_0_0, _lh_rewritewithlemmas_LH_P2_1_0) -> 
            (if _lh_rewritewithlemmas_LH_P2_0_0 then
              ((rewrite__d0 ((applysubst__d0 _lh_rewritewithlemmas_LH_P2_1_0) (caddr__d0 _lh_rewritewithlemmas_LH_C_0_0))) _lh_rewritewithlemmas_arg3_0)
            else
              (((rewritewithlemmas__d0 _lh_rewritewithlemmas_arg1_0) _lh_rewritewithlemmas_LH_C_1_0) _lh_rewritewithlemmas_arg3_0))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and rules__d0 _lh_rules_arg1_0 =
  (let rec _lh_makelemmas_LH_C_1_0 = (let rec _lh_makelemmas_LH_C_1_1 = (let rec _lh_makelemmas_LH_C_1_2 = (let rec _lh_makelemmas_LH_C_1_3 = (let rec _lh_makelemmas_LH_C_1_4 = (let rec _lh_makelemmas_LH_C_1_5 = (let rec _lh_makelemmas_LH_C_1_6 = (let rec _lh_makelemmas_LH_C_1_7 = (let rec _lh_makelemmas_LH_C_1_8 = (let rec _lh_makelemmas_LH_C_1_9 = (let rec _lh_makelemmas_LH_C_1_1_0 = (let rec _lh_makelemmas_LH_C_1_1_1 = (let rec _lh_makelemmas_LH_C_1_1_2 = (let rec _lh_makelemmas_LH_C_1_1_3 = (let rec _lh_makelemmas_LH_C_1_1_4 = (let rec _lh_makelemmas_LH_C_1_1_5 = (let rec _lh_makelemmas_LH_C_1_1_6 = (let rec _lh_makelemmas_LH_C_1_1_7 = (let rec _lh_makelemmas_LH_C_1_1_8 = (let rec _lh_makelemmas_LH_C_1_1_9 = (let rec _lh_makelemmas_LH_C_1_2_0 = (let rec _lh_makelemmas_LH_C_1_2_1 = (let rec _lh_makelemmas_LH_C_1_2_2 = (let rec _lh_makelemmas_LH_C_1_2_3 = (let rec _lh_makelemmas_LH_C_1_2_4 = (let rec _lh_makelemmas_LH_C_1_2_5 = (let rec _lh_makelemmas_LH_C_1_2_6 = (let rec _lh_makelemmas_LH_C_1_2_7 = (let rec _lh_makelemmas_LH_C_1_2_8 = (let rec _lh_makelemmas_LH_C_1_2_9 = (let rec _lh_makelemmas_LH_C_1_3_0 = (let rec _lh_makelemmas_LH_C_1_3_1 = (let rec _lh_makelemmas_LH_C_1_3_2 = (let rec _lh_makelemmas_LH_C_1_3_3 = (let rec _lh_makelemmas_LH_C_1_3_4 = (let rec _lh_makelemmas_LH_C_1_3_5 = (let rec _lh_makelemmas_LH_C_1_3_6 = (let rec _lh_makelemmas_LH_C_1_3_7 = (let rec _lh_makelemmas_LH_C_1_3_8 = (let rec _lh_makelemmas_LH_C_1_3_9 = (let rec _lh_makelemmas_LH_C_1_4_0 = (let rec _lh_makelemmas_LH_C_1_4_1 = (let rec _lh_makelemmas_LH_C_1_4_2 = (let rec _lh_makelemmas_LH_C_1_4_3 = (let rec _lh_makelemmas_LH_C_1_4_4 = (let rec _lh_makelemmas_LH_C_1_4_5 = (let rec _lh_makelemmas_LH_C_1_4_6 = (let rec _lh_makelemmas_LH_C_1_4_7 = (let rec _lh_makelemmas_LH_C_1_4_8 = (let rec _lh_makelemmas_LH_C_1_4_9 = (let rec _lh_makelemmas_LH_C_1_5_0 = (let rec _lh_makelemmas_LH_C_1_5_1 = (let rec _lh_makelemmas_LH_C_1_5_2 = (let rec _lh_makelemmas_LH_C_1_5_3 = (let rec _lh_makelemmas_LH_C_1_5_4 = (let rec _lh_makelemmas_LH_C_1_5_5 = (let rec _lh_makelemmas_LH_C_1_5_6 = (let rec _lh_makelemmas_LH_C_1_5_7 = (let rec _lh_makelemmas_LH_C_1_5_8 = (let rec _lh_makelemmas_LH_C_1_5_9 = (let rec _lh_makelemmas_LH_C_1_6_0 = (let rec _lh_makelemmas_LH_C_1_6_1 = (let rec _lh_makelemmas_LH_C_1_6_2 = (let rec _lh_makelemmas_LH_C_1_6_3 = (let rec _lh_makelemmas_LH_C_1_6_4 = (let rec _lh_makelemmas_LH_C_1_6_5 = (let rec _lh_makelemmas_LH_C_1_6_6 = (let rec _lh_makelemmas_LH_C_1_6_7 = (let rec _lh_makelemmas_LH_C_1_6_8 = (let rec _lh_makelemmas_LH_C_1_6_9 = (let rec _lh_makelemmas_LH_C_1_7_0 = (let rec _lh_makelemmas_LH_C_1_7_1 = (let rec _lh_makelemmas_LH_C_1_7_2 = (let rec _lh_makelemmas_LH_C_1_7_3 = (let rec _lh_makelemmas_LH_C_1_7_4 = (let rec _lh_makelemmas_LH_C_1_7_5 = (let rec _lh_makelemmas_LH_C_1_7_6 = (let rec _lh_makelemmas_LH_C_1_7_7 = (let rec _lh_makelemmas_LH_C_1_7_8 = (let rec _lh_makelemmas_LH_C_1_7_9 = (let rec _lh_makelemmas_LH_C_1_8_0 = (let rec _lh_makelemmas_LH_C_1_8_1 = (let rec _lh_makelemmas_LH_C_1_8_2 = (let rec _lh_makelemmas_LH_C_1_8_3 = (let rec _lh_makelemmas_LH_C_1_8_4 = (let rec _lh_makelemmas_LH_C_1_8_5 = (let rec _lh_makelemmas_LH_C_1_8_6 = (let rec _lh_makelemmas_LH_C_1_8_7 = (let rec _lh_makelemmas_LH_C_1_8_8 = (let rec _lh_makelemmas_LH_C_1_8_9 = (let rec _lh_makelemmas_LH_C_1_9_0 = (let rec _lh_makelemmas_LH_C_1_9_1 = (let rec _lh_makelemmas_LH_C_1_9_2 = (let rec _lh_makelemmas_LH_C_1_9_3 = (let rec _lh_makelemmas_LH_C_1_9_4 = (let rec _lh_makelemmas_LH_C_1_9_5 = (let rec _lh_makelemmas_LH_C_1_9_6 = (let rec _lh_makelemmas_LH_C_1_9_7 = (let rec _lh_makelemmas_LH_C_1_9_8 = (let rec _lh_makelemmas_LH_C_1_9_9 = (let rec _lh_makelemmas_LH_C_1_1_0_0 = (let rec _lh_makelemmas_LH_C_1_1_0_1 = (let rec _lh_makelemmas_LH_C_1_1_0_2 = (let rec _lh_makelemmas_LH_C_1_1_0_3 = (let rec _lh_makelemmas_LH_C_1_1_0_4 = (let rec _lh_makelemmas_LH_C_1_1_0_5 = (fun _lh_dummy_9 _lh_addlemmalst_arg2_1 -> 
    _lh_addlemmalst_arg2_1) in
    (let rec _lh_makelemmas_LH_C_0_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0_5) in
          (let rec _lh_addlemmalst_LH_C_0_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_0)) in
            (fun _lh_addlemmalst_arg2_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_0) _lh_addlemmalst_arg2_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0_4) in
          (let rec _lh_addlemmalst_LH_C_0_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1)) in
            (fun _lh_addlemmalst_arg2_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1) _lh_addlemmalst_arg2_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0_3) in
          (let rec _lh_addlemmalst_LH_C_0_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2)) in
            (fun _lh_addlemmalst_arg2_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2) _lh_addlemmalst_arg2_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0_2) in
          (let rec _lh_addlemmalst_LH_C_0_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3)) in
            (fun _lh_addlemmalst_arg2_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3) _lh_addlemmalst_arg2_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0_1) in
          (let rec _lh_addlemmalst_LH_C_0_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4)) in
            (fun _lh_addlemmalst_arg2_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4) _lh_addlemmalst_arg2_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0_0) in
          (let rec _lh_addlemmalst_LH_C_0_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5)) in
            (fun _lh_addlemmalst_arg2_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5) _lh_addlemmalst_arg2_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_9) in
          (let rec _lh_addlemmalst_LH_C_0_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6)) in
            (fun _lh_addlemmalst_arg2_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6) _lh_addlemmalst_arg2_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_8) in
          (let rec _lh_addlemmalst_LH_C_0_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7)) in
            (fun _lh_addlemmalst_arg2_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7) _lh_addlemmalst_arg2_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_7) in
          (let rec _lh_addlemmalst_LH_C_0_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8)) in
            (fun _lh_addlemmalst_arg2_1_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8) _lh_addlemmalst_arg2_1_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_6) in
          (let rec _lh_addlemmalst_LH_C_0_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9)) in
            (fun _lh_addlemmalst_arg2_1_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9) _lh_addlemmalst_arg2_1_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_5) in
          (let rec _lh_addlemmalst_LH_C_0_1_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0)) in
            (fun _lh_addlemmalst_arg2_1_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0) _lh_addlemmalst_arg2_1_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_4) in
          (let rec _lh_addlemmalst_LH_C_0_1_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_1)) in
            (fun _lh_addlemmalst_arg2_1_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_1) _lh_addlemmalst_arg2_1_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('m', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_3) in
          (let rec _lh_addlemmalst_LH_C_0_1_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_2)) in
            (fun _lh_addlemmalst_arg2_1_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_2) _lh_addlemmalst_arg2_1_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_2) in
          (let rec _lh_addlemmalst_LH_C_0_1_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_3)) in
            (fun _lh_addlemmalst_arg2_1_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_3) _lh_addlemmalst_arg2_1_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_1) in
          (let rec _lh_addlemmalst_LH_C_0_1_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_4)) in
            (fun _lh_addlemmalst_arg2_1_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_4) _lh_addlemmalst_arg2_1_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('1', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('2', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('3', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('4', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('5', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('6', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9_0) in
          (let rec _lh_addlemmalst_LH_C_0_1_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_5)) in
            (fun _lh_addlemmalst_arg2_1_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_5) _lh_addlemmalst_arg2_1_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_9) in
          (let rec _lh_addlemmalst_LH_C_0_1_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_6)) in
            (fun _lh_addlemmalst_arg2_1_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_6) _lh_addlemmalst_arg2_1_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_8) in
          (let rec _lh_addlemmalst_LH_C_0_1_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_7)) in
            (fun _lh_addlemmalst_arg2_1_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_7) _lh_addlemmalst_arg2_1_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_7) in
          (let rec _lh_addlemmalst_LH_C_0_1_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_8)) in
            (fun _lh_addlemmalst_arg2_2_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_8) _lh_addlemmalst_arg2_2_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_2_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_6) in
          (let rec _lh_addlemmalst_LH_C_0_1_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_9)) in
            (fun _lh_addlemmalst_arg2_2_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_9) _lh_addlemmalst_arg2_2_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_5) in
          (let rec _lh_addlemmalst_LH_C_0_2_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_0)) in
            (fun _lh_addlemmalst_arg2_2_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_0) _lh_addlemmalst_arg2_2_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_4) in
          (let rec _lh_addlemmalst_LH_C_0_2_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_1)) in
            (fun _lh_addlemmalst_arg2_2_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_1) _lh_addlemmalst_arg2_2_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_3) in
          (let rec _lh_addlemmalst_LH_C_0_2_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_2)) in
            (fun _lh_addlemmalst_arg2_2_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_2) _lh_addlemmalst_arg2_2_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_2) in
          (let rec _lh_addlemmalst_LH_C_0_2_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_3)) in
            (fun _lh_addlemmalst_arg2_2_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_3) _lh_addlemmalst_arg2_2_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_1) in
          (let rec _lh_addlemmalst_LH_C_0_2_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_4)) in
            (fun _lh_addlemmalst_arg2_2_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_4) _lh_addlemmalst_arg2_2_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8_0) in
          (let rec _lh_addlemmalst_LH_C_0_2_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_5)) in
            (fun _lh_addlemmalst_arg2_2_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_5) _lh_addlemmalst_arg2_2_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_9) in
          (let rec _lh_addlemmalst_LH_C_0_2_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_6)) in
            (fun _lh_addlemmalst_arg2_2_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_6) _lh_addlemmalst_arg2_2_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_8) in
          (let rec _lh_addlemmalst_LH_C_0_2_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_7)) in
            (fun _lh_addlemmalst_arg2_2_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_7) _lh_addlemmalst_arg2_2_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_7) in
          (let rec _lh_addlemmalst_LH_C_0_2_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_8)) in
            (fun _lh_addlemmalst_arg2_3_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_8) _lh_addlemmalst_arg2_3_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_2_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_3_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_2_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_6) in
          (let rec _lh_addlemmalst_LH_C_0_2_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_2_9)) in
            (fun _lh_addlemmalst_arg2_3_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_2_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_2_9) _lh_addlemmalst_arg2_3_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_5) in
          (let rec _lh_addlemmalst_LH_C_0_3_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_0)) in
            (fun _lh_addlemmalst_arg2_3_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_0) _lh_addlemmalst_arg2_3_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_4) in
          (let rec _lh_addlemmalst_LH_C_0_3_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_1)) in
            (fun _lh_addlemmalst_arg2_3_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_1) _lh_addlemmalst_arg2_3_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_3) in
          (let rec _lh_addlemmalst_LH_C_0_3_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_2)) in
            (fun _lh_addlemmalst_arg2_3_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_2) _lh_addlemmalst_arg2_3_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_2) in
          (let rec _lh_addlemmalst_LH_C_0_3_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_3)) in
            (fun _lh_addlemmalst_arg2_3_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_3) _lh_addlemmalst_arg2_3_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_1) in
          (let rec _lh_addlemmalst_LH_C_0_3_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_4)) in
            (fun _lh_addlemmalst_arg2_3_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_4) _lh_addlemmalst_arg2_3_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7_0) in
          (let rec _lh_addlemmalst_LH_C_0_3_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_5)) in
            (fun _lh_addlemmalst_arg2_3_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_5) _lh_addlemmalst_arg2_3_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_9) in
          (let rec _lh_addlemmalst_LH_C_0_3_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_6)) in
            (fun _lh_addlemmalst_arg2_3_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_6) _lh_addlemmalst_arg2_3_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_8) in
          (let rec _lh_addlemmalst_LH_C_0_3_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_7)) in
            (fun _lh_addlemmalst_arg2_3_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_7) _lh_addlemmalst_arg2_3_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_7) in
          (let rec _lh_addlemmalst_LH_C_0_3_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_8)) in
            (fun _lh_addlemmalst_arg2_4_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_8) _lh_addlemmalst_arg2_4_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_3_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_4_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_3_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_6) in
          (let rec _lh_addlemmalst_LH_C_0_3_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_3_9)) in
            (fun _lh_addlemmalst_arg2_4_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_3_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_3_9) _lh_addlemmalst_arg2_4_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('w', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_5) in
          (let rec _lh_addlemmalst_LH_C_0_4_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_0)) in
            (fun _lh_addlemmalst_arg2_4_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_0) _lh_addlemmalst_arg2_4_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_4) in
          (let rec _lh_addlemmalst_LH_C_0_4_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_1)) in
            (fun _lh_addlemmalst_arg2_4_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_1) _lh_addlemmalst_arg2_4_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_3) in
          (let rec _lh_addlemmalst_LH_C_0_4_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_2)) in
            (fun _lh_addlemmalst_arg2_4_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_2) _lh_addlemmalst_arg2_4_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_2) in
          (let rec _lh_addlemmalst_LH_C_0_4_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_3)) in
            (fun _lh_addlemmalst_arg2_4_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_3) _lh_addlemmalst_arg2_4_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_1) in
          (let rec _lh_addlemmalst_LH_C_0_4_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_4)) in
            (fun _lh_addlemmalst_arg2_4_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_4) _lh_addlemmalst_arg2_4_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6_0) in
          (let rec _lh_addlemmalst_LH_C_0_4_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_5)) in
            (fun _lh_addlemmalst_arg2_4_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_5) _lh_addlemmalst_arg2_4_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_9) in
          (let rec _lh_addlemmalst_LH_C_0_4_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_6)) in
            (fun _lh_addlemmalst_arg2_4_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_6) _lh_addlemmalst_arg2_4_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_8) in
          (let rec _lh_addlemmalst_LH_C_0_4_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_7)) in
            (fun _lh_addlemmalst_arg2_4_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_7) _lh_addlemmalst_arg2_4_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_7) in
          (let rec _lh_addlemmalst_LH_C_0_4_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_8)) in
            (fun _lh_addlemmalst_arg2_5_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_8) _lh_addlemmalst_arg2_5_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_4_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_5_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_4_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_6) in
          (let rec _lh_addlemmalst_LH_C_0_4_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_4_9)) in
            (fun _lh_addlemmalst_arg2_5_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_4_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_4_9) _lh_addlemmalst_arg2_5_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_5) in
          (let rec _lh_addlemmalst_LH_C_0_5_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_0)) in
            (fun _lh_addlemmalst_arg2_5_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_0) _lh_addlemmalst_arg2_5_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_4) in
          (let rec _lh_addlemmalst_LH_C_0_5_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_1)) in
            (fun _lh_addlemmalst_arg2_5_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_1) _lh_addlemmalst_arg2_5_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_3) in
          (let rec _lh_addlemmalst_LH_C_0_5_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_2)) in
            (fun _lh_addlemmalst_arg2_5_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_2) _lh_addlemmalst_arg2_5_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_2) in
          (let rec _lh_addlemmalst_LH_C_0_5_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_3)) in
            (fun _lh_addlemmalst_arg2_5_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_3) _lh_addlemmalst_arg2_5_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('1', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_1) in
          (let rec _lh_addlemmalst_LH_C_0_5_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_4)) in
            (fun _lh_addlemmalst_arg2_5_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_4) _lh_addlemmalst_arg2_5_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5_0) in
          (let rec _lh_addlemmalst_LH_C_0_5_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_5)) in
            (fun _lh_addlemmalst_arg2_5_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_5) _lh_addlemmalst_arg2_5_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_9) in
          (let rec _lh_addlemmalst_LH_C_0_5_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_6)) in
            (fun _lh_addlemmalst_arg2_5_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_6) _lh_addlemmalst_arg2_5_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_8) in
          (let rec _lh_addlemmalst_LH_C_0_5_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_7)) in
            (fun _lh_addlemmalst_arg2_5_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_7) _lh_addlemmalst_arg2_5_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_7) in
          (let rec _lh_addlemmalst_LH_C_0_5_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_8)) in
            (fun _lh_addlemmalst_arg2_6_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_8) _lh_addlemmalst_arg2_6_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_5_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_6_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_5_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_6) in
          (let rec _lh_addlemmalst_LH_C_0_5_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_5_9)) in
            (fun _lh_addlemmalst_arg2_6_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_5_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_5_9) _lh_addlemmalst_arg2_6_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_5) in
          (let rec _lh_addlemmalst_LH_C_0_6_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_0)) in
            (fun _lh_addlemmalst_arg2_6_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_0) _lh_addlemmalst_arg2_6_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_4) in
          (let rec _lh_addlemmalst_LH_C_0_6_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_1)) in
            (fun _lh_addlemmalst_arg2_6_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_1) _lh_addlemmalst_arg2_6_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_3) in
          (let rec _lh_addlemmalst_LH_C_0_6_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_2)) in
            (fun _lh_addlemmalst_arg2_6_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_2) _lh_addlemmalst_arg2_6_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_2) in
          (let rec _lh_addlemmalst_LH_C_0_6_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_3)) in
            (fun _lh_addlemmalst_arg2_6_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_3) _lh_addlemmalst_arg2_6_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_1) in
          (let rec _lh_addlemmalst_LH_C_0_6_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_4)) in
            (fun _lh_addlemmalst_arg2_6_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_4) _lh_addlemmalst_arg2_6_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4_0) in
          (let rec _lh_addlemmalst_LH_C_0_6_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_5)) in
            (fun _lh_addlemmalst_arg2_6_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_5) _lh_addlemmalst_arg2_6_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_9) in
          (let rec _lh_addlemmalst_LH_C_0_6_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_6)) in
            (fun _lh_addlemmalst_arg2_6_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_6) _lh_addlemmalst_arg2_6_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('c', (`LH_C('-', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_8) in
          (let rec _lh_addlemmalst_LH_C_0_6_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_7)) in
            (fun _lh_addlemmalst_arg2_6_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_7) _lh_addlemmalst_arg2_6_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_7) in
          (let rec _lh_addlemmalst_LH_C_0_6_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_8)) in
            (fun _lh_addlemmalst_arg2_7_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_8) _lh_addlemmalst_arg2_7_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_6_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_7_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_6_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_6) in
          (let rec _lh_addlemmalst_LH_C_0_6_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_6_9)) in
            (fun _lh_addlemmalst_arg2_7_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_6_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_6_9) _lh_addlemmalst_arg2_7_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_5) in
          (let rec _lh_addlemmalst_LH_C_0_7_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_0)) in
            (fun _lh_addlemmalst_arg2_7_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_0) _lh_addlemmalst_arg2_7_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_4) in
          (let rec _lh_addlemmalst_LH_C_0_7_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_1)) in
            (fun _lh_addlemmalst_arg2_7_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_1) _lh_addlemmalst_arg2_7_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_3) in
          (let rec _lh_addlemmalst_LH_C_0_7_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_2)) in
            (fun _lh_addlemmalst_arg2_7_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_2) _lh_addlemmalst_arg2_7_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_2) in
          (let rec _lh_addlemmalst_LH_C_0_7_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_3)) in
            (fun _lh_addlemmalst_arg2_7_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_3) _lh_addlemmalst_arg2_7_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_1) in
          (let rec _lh_addlemmalst_LH_C_0_7_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_4)) in
            (fun _lh_addlemmalst_arg2_7_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_4) _lh_addlemmalst_arg2_7_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3_0) in
          (let rec _lh_addlemmalst_LH_C_0_7_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_5)) in
            (fun _lh_addlemmalst_arg2_7_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_5) _lh_addlemmalst_arg2_7_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_9) in
          (let rec _lh_addlemmalst_LH_C_0_7_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_6)) in
            (fun _lh_addlemmalst_arg2_7_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_6) _lh_addlemmalst_arg2_7_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_8) in
          (let rec _lh_addlemmalst_LH_C_0_7_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_7)) in
            (fun _lh_addlemmalst_arg2_7_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_7) _lh_addlemmalst_arg2_7_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_7) in
          (let rec _lh_addlemmalst_LH_C_0_7_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_8)) in
            (fun _lh_addlemmalst_arg2_8_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_8) _lh_addlemmalst_arg2_8_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_7_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_8_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_7_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_6) in
          (let rec _lh_addlemmalst_LH_C_0_7_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_7_9)) in
            (fun _lh_addlemmalst_arg2_8_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_7_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_7_9) _lh_addlemmalst_arg2_8_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_5) in
          (let rec _lh_addlemmalst_LH_C_0_8_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_0)) in
            (fun _lh_addlemmalst_arg2_8_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_0) _lh_addlemmalst_arg2_8_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_4) in
          (let rec _lh_addlemmalst_LH_C_0_8_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_1)) in
            (fun _lh_addlemmalst_arg2_8_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_1) _lh_addlemmalst_arg2_8_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_3) in
          (let rec _lh_addlemmalst_LH_C_0_8_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_2)) in
            (fun _lh_addlemmalst_arg2_8_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_2) _lh_addlemmalst_arg2_8_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_2) in
          (let rec _lh_addlemmalst_LH_C_0_8_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_3)) in
            (fun _lh_addlemmalst_arg2_8_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_3) _lh_addlemmalst_arg2_8_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_1) in
          (let rec _lh_addlemmalst_LH_C_0_8_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_4)) in
            (fun _lh_addlemmalst_arg2_8_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_4) _lh_addlemmalst_arg2_8_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2_0) in
          (let rec _lh_addlemmalst_LH_C_0_8_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_5)) in
            (fun _lh_addlemmalst_arg2_8_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_5) _lh_addlemmalst_arg2_8_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_9) in
          (let rec _lh_addlemmalst_LH_C_0_8_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_6)) in
            (fun _lh_addlemmalst_arg2_8_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_6) _lh_addlemmalst_arg2_8_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_8) in
          (let rec _lh_addlemmalst_LH_C_0_8_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_7)) in
            (fun _lh_addlemmalst_arg2_8_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_7) _lh_addlemmalst_arg2_8_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_7) in
          (let rec _lh_addlemmalst_LH_C_0_8_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_8)) in
            (fun _lh_addlemmalst_arg2_9_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_8) _lh_addlemmalst_arg2_9_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_8_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_9_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_8_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_6) in
          (let rec _lh_addlemmalst_LH_C_0_8_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_8_9)) in
            (fun _lh_addlemmalst_arg2_9_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_8_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_8_9) _lh_addlemmalst_arg2_9_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_5) in
          (let rec _lh_addlemmalst_LH_C_0_9_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_0)) in
            (fun _lh_addlemmalst_arg2_9_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_0) _lh_addlemmalst_arg2_9_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('-', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_4) in
          (let rec _lh_addlemmalst_LH_C_0_9_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_1)) in
            (fun _lh_addlemmalst_arg2_9_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_1) _lh_addlemmalst_arg2_9_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_3) in
          (let rec _lh_addlemmalst_LH_C_0_9_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_2)) in
            (fun _lh_addlemmalst_arg2_9_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_2) _lh_addlemmalst_arg2_9_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_2) in
          (let rec _lh_addlemmalst_LH_C_0_9_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_3)) in
            (fun _lh_addlemmalst_arg2_9_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_3) _lh_addlemmalst_arg2_9_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_1) in
          (let rec _lh_addlemmalst_LH_C_0_9_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_4)) in
            (fun _lh_addlemmalst_arg2_9_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_4) _lh_addlemmalst_arg2_9_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1_0) in
          (let rec _lh_addlemmalst_LH_C_0_9_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_5)) in
            (fun _lh_addlemmalst_arg2_9_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_5) _lh_addlemmalst_arg2_9_7)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_6 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_6 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_6 = (makelemmas__d0 _lh_makelemmas_LH_C_1_9) in
          (let rec _lh_addlemmalst_LH_C_0_9_6 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_6)) in
            (fun _lh_addlemmalst_arg2_9_8 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_6) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_6) _lh_addlemmalst_arg2_9_8)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_7 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_7 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_7 = (makelemmas__d0 _lh_makelemmas_LH_C_1_8) in
          (let rec _lh_addlemmalst_LH_C_0_9_7 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_7)) in
            (fun _lh_addlemmalst_arg2_9_9 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_7) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_7) _lh_addlemmalst_arg2_9_9)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_8 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_8 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_8 = (makelemmas__d0 _lh_makelemmas_LH_C_1_7) in
          (let rec _lh_addlemmalst_LH_C_0_9_8 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_8)) in
            (fun _lh_addlemmalst_arg2_1_0_0 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_8) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_8) _lh_addlemmalst_arg2_1_0_0)))))))) in
    (let rec _lh_makelemmas_LH_C_0_9_9 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_0_9 -> 
        (let rec _lh_addlemmalst_LH_C_1_9_9 = (makelemmas__d0 _lh_makelemmas_LH_C_1_6) in
          (let rec _lh_addlemmalst_LH_C_0_9_9 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_9_9)) in
            (fun _lh_addlemmalst_arg2_1_0_1 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_9_9) ((addlemma__d0 _lh_addlemmalst_LH_C_0_9_9) _lh_addlemmalst_arg2_1_0_1)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0_0 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1_0 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0_0 = (makelemmas__d0 _lh_makelemmas_LH_C_1_5) in
          (let rec _lh_addlemmalst_LH_C_0_1_0_0 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0_0)) in
            (fun _lh_addlemmalst_arg2_1_0_2 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0_0) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0_0) _lh_addlemmalst_arg2_1_0_2)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0_1 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1_1 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0_1 = (makelemmas__d0 _lh_makelemmas_LH_C_1_4) in
          (let rec _lh_addlemmalst_LH_C_0_1_0_1 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0_1)) in
            (fun _lh_addlemmalst_arg2_1_0_3 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0_1) _lh_addlemmalst_arg2_1_0_3)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0_2 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1_2 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0_2 = (makelemmas__d0 _lh_makelemmas_LH_C_1_3) in
          (let rec _lh_addlemmalst_LH_C_0_1_0_2 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0_2)) in
            (fun _lh_addlemmalst_arg2_1_0_4 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0_2) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0_2) _lh_addlemmalst_arg2_1_0_4)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0_3 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1_3 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0_3 = (makelemmas__d0 _lh_makelemmas_LH_C_1_2) in
          (let rec _lh_addlemmalst_LH_C_0_1_0_3 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0_3)) in
            (fun _lh_addlemmalst_arg2_1_0_5 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0_3) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0_3) _lh_addlemmalst_arg2_1_0_5)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0_4 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1_4 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0_4 = (makelemmas__d0 _lh_makelemmas_LH_C_1_1) in
          (let rec _lh_addlemmalst_LH_C_0_1_0_4 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0_4)) in
            (fun _lh_addlemmalst_arg2_1_0_6 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0_4) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0_4) _lh_addlemmalst_arg2_1_0_6)))))))) in
    (let rec _lh_makelemmas_LH_C_0_1_0_5 = (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('g', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('p', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (fun _lh_dummy_1_1_5 -> 
        (let rec _lh_addlemmalst_LH_C_1_1_0_5 = (makelemmas__d0 _lh_makelemmas_LH_C_1_0) in
          (let rec _lh_addlemmalst_LH_C_0_1_0_5 = (mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1_0_5)) in
            (fun _lh_addlemmalst_arg2_1_0_7 -> 
              ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1_0_5) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1_0_5) _lh_addlemmalst_arg2_1_0_7))))))))
and statement__d0 _lh_statement_arg1_0 =
  (mkLisplist__d1 (strToToken__d1 (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and strToToken__d0 _lh_strToToken_arg1_2 =
  (match _lh_strToToken_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_3_9 = (getToken__d0 _lh_strToToken_arg1_2) in
        (_lh_matchIdent_3_9 99)))
and strToToken__d1 _lh_strToToken_arg1_0 =
  (match _lh_strToToken_arg1_0 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_7 = (getToken__d1 _lh_strToToken_arg1_0) in
        (_lh_matchIdent_7 99)))
and strToToken__d2 _lh_strToToken_arg1_1 =
  (match _lh_strToToken_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_2_1 = (getToken__d2 _lh_strToToken_arg1_1) in
        (_lh_matchIdent_2_1 99)))
and subterm__d0 _lh_subterm_arg1_0 =
  (let rec c_0 = ((mappend__d0 (let rec t_0 = (fun ys_0 -> 
    ys_0) in
    (let rec h_0 = 'c' in
      (fun ys_1 -> 
        (`LH_C(h_0, ((mappend__d0 t_0) ys_1))))))) (string_of_int _lh_subterm_arg1_0)) in
    (let rec str_0 = ((mappend__d1 ((mappend__d2 ((mappend__d3 ((mappend__d4 (let rec t_1 = (let rec t_2 = (let rec t_3 = (let rec t_4 = (let rec t_5 = (let rec t_6 = (let rec t_7 = (let rec t_8 = (let rec t_9 = (let rec t_1_0 = (let rec t_1_1 = (let rec t_1_2 = (let rec t_1_3 = (let rec t_1_4 = (let rec t_1_5 = (let rec t_1_6 = (let rec t_1_7 = (let rec t_1_8 = (let rec t_1_9 = (let rec t_2_0 = (let rec t_2_1 = (let rec t_2_2 = (let rec t_2_3 = (let rec t_2_4 = (let rec t_2_5 = (let rec t_2_6 = (let rec t_2_7 = (let rec t_2_8 = (let rec t_2_9 = (let rec t_3_0 = (let rec t_3_1 = (let rec t_3_2 = (let rec t_3_3 = (let rec t_3_4 = (fun ys_2 -> 
      ys_2) in
      (let rec h_1 = ' ' in
        (fun ys_3 -> 
          (`LH_C(h_1, ((mappend__d4 t_3_4) ys_3)))))) in
      (let rec h_2 = 's' in
        (fun ys_4 -> 
          (`LH_C(h_2, ((mappend__d4 t_3_3) ys_4)))))) in
      (let rec h_3 = 'u' in
        (fun ys_5 -> 
          (`LH_C(h_3, ((mappend__d4 t_3_2) ys_5)))))) in
      (let rec h_4 = 'l' in
        (fun ys_6 -> 
          (`LH_C(h_4, ((mappend__d4 t_3_1) ys_6)))))) in
      (let rec h_5 = 'p' in
        (fun ys_7 -> 
          (`LH_C(h_5, ((mappend__d4 t_3_0) ys_7)))))) in
      (let rec h_6 = ' ' in
        (fun ys_8 -> 
          (`LH_C(h_6, ((mappend__d4 t_2_9) ys_8)))))) in
      (let rec h_7 = '(' in
        (fun ys_9 -> 
          (`LH_C(h_7, ((mappend__d4 t_2_8) ys_9)))))) in
      (let rec h_8 = ')' in
        (fun ys_1_0 -> 
          (`LH_C(h_8, ((mappend__d4 t_2_7) ys_1_0)))))) in
      (let rec h_9 = ' ' in
        (fun ys_1_1 -> 
          (`LH_C(h_9, ((mappend__d4 t_2_6) ys_1_1)))))) in
      (let rec h_1_0 = 'b' in
        (fun ys_1_2 -> 
          (`LH_C(h_1_0, ((mappend__d4 t_2_5) ys_1_2)))))) in
      (let rec h_1_1 = ' ' in
        (fun ys_1_3 -> 
          (`LH_C(h_1_1, ((mappend__d4 t_2_4) ys_1_3)))))) in
      (let rec h_1_2 = 'a' in
        (fun ys_1_4 -> 
          (`LH_C(h_1_2, ((mappend__d4 t_2_3) ys_1_4)))))) in
      (let rec h_1_3 = ' ' in
        (fun ys_1_5 -> 
          (`LH_C(h_1_3, ((mappend__d4 t_2_2) ys_1_5)))))) in
      (let rec h_1_4 = 's' in
        (fun ys_1_6 -> 
          (`LH_C(h_1_4, ((mappend__d4 t_2_1) ys_1_6)))))) in
      (let rec h_1_5 = 'u' in
        (fun ys_1_7 -> 
          (`LH_C(h_1_5, ((mappend__d4 t_2_0) ys_1_7)))))) in
      (let rec h_1_6 = 'l' in
        (fun ys_1_8 -> 
          (`LH_C(h_1_6, ((mappend__d4 t_1_9) ys_1_8)))))) in
      (let rec h_1_7 = 'p' in
        (fun ys_1_9 -> 
          (`LH_C(h_1_7, ((mappend__d4 t_1_8) ys_1_9)))))) in
      (let rec h_1_8 = ' ' in
        (fun ys_2_0 -> 
          (`LH_C(h_1_8, ((mappend__d4 t_1_7) ys_2_0)))))) in
      (let rec h_1_9 = '(' in
        (fun ys_2_1 -> 
          (`LH_C(h_1_9, ((mappend__d4 t_1_6) ys_2_1)))))) in
      (let rec h_2_0 = ' ' in
        (fun ys_2_2 -> 
          (`LH_C(h_2_0, ((mappend__d4 t_1_5) ys_2_2)))))) in
      (let rec h_2_1 = 's' in
        (fun ys_2_3 -> 
          (`LH_C(h_2_1, ((mappend__d4 t_1_4) ys_2_3)))))) in
      (let rec h_2_2 = 'u' in
        (fun ys_2_4 -> 
          (`LH_C(h_2_2, ((mappend__d4 t_1_3) ys_2_4)))))) in
      (let rec h_2_3 = 'l' in
        (fun ys_2_5 -> 
          (`LH_C(h_2_3, ((mappend__d4 t_1_2) ys_2_5)))))) in
      (let rec h_2_4 = 'p' in
        (fun ys_2_6 -> 
          (`LH_C(h_2_4, ((mappend__d4 t_1_1) ys_2_6)))))) in
      (let rec h_2_5 = ' ' in
        (fun ys_2_7 -> 
          (`LH_C(h_2_5, ((mappend__d4 t_1_0) ys_2_7)))))) in
      (let rec h_2_6 = '(' in
        (fun ys_2_8 -> 
          (`LH_C(h_2_6, ((mappend__d4 t_9) ys_2_8)))))) in
      (let rec h_2_7 = ' ' in
        (fun ys_2_9 -> 
          (`LH_C(h_2_7, ((mappend__d4 t_8) ys_2_9)))))) in
      (let rec h_2_8 = 'f' in
        (fun ys_3_0 -> 
          (`LH_C(h_2_8, ((mappend__d4 t_7) ys_3_0)))))) in
      (let rec h_2_9 = ' ' in
        (fun ys_3_1 -> 
          (`LH_C(h_2_9, ((mappend__d4 t_6) ys_3_1)))))) in
      (let rec h_3_0 = 'x' in
        (fun ys_3_2 -> 
          (`LH_C(h_3_0, ((mappend__d4 t_5) ys_3_2)))))) in
      (let rec h_3_1 = ' ' in
        (fun ys_3_3 -> 
          (`LH_C(h_3_1, ((mappend__d4 t_4) ys_3_3)))))) in
      (let rec h_3_2 = '(' in
        (fun ys_3_4 -> 
          (`LH_C(h_3_2, ((mappend__d4 t_3) ys_3_4)))))) in
      (let rec h_3_3 = ' ' in
        (fun ys_3_5 -> 
          (`LH_C(h_3_3, ((mappend__d4 t_2) ys_3_5)))))) in
      (let rec h_3_4 = '(' in
        (fun ys_3_6 -> 
          (`LH_C(h_3_4, ((mappend__d4 t_1) ys_3_6))))))) c_0)) (let rec t_3_5 = (let rec t_3_6 = (let rec t_3_7 = (let rec t_3_8 = (let rec t_3_9 = (let rec t_4_0 = (let rec t_4_1 = (let rec t_4_2 = (let rec t_4_3 = (let rec t_4_4 = (let rec t_4_5 = (let rec t_4_6 = (let rec t_4_7 = (let rec t_4_8 = (let rec t_4_9 = (let rec t_5_0 = (let rec t_5_1 = (let rec t_5_2 = (let rec t_5_3 = (let rec t_5_4 = (let rec t_5_5 = (let rec t_5_6 = (let rec t_5_7 = (let rec t_5_8 = (let rec t_5_9 = (let rec t_6_0 = (let rec t_6_1 = (let rec t_6_2 = (let rec t_6_3 = (let rec t_6_4 = (let rec t_6_5 = (let rec t_6_6 = (let rec t_6_7 = (let rec t_6_8 = (let rec t_6_9 = (let rec t_7_0 = (let rec t_7_1 = (let rec t_7_2 = (let rec t_7_3 = (let rec t_7_4 = (let rec t_7_5 = (let rec t_7_6 = (let rec t_7_7 = (let rec t_7_8 = (let rec t_7_9 = (let rec t_8_0 = (let rec t_8_1 = (let rec t_8_2 = (let rec t_8_3 = (fun ys_3_7 -> 
      ys_3_7) in
      (let rec h_3_5 = ' ' in
        (fun ys_3_8 -> 
          (`LH_C(h_3_5, ((mappend__d2 t_8_3) ys_3_8)))))) in
      (let rec h_3_6 = 's' in
        (fun ys_3_9 -> 
          (`LH_C(h_3_6, ((mappend__d2 t_8_2) ys_3_9)))))) in
      (let rec h_3_7 = 'u' in
        (fun ys_4_0 -> 
          (`LH_C(h_3_7, ((mappend__d2 t_8_1) ys_4_0)))))) in
      (let rec h_3_8 = 'l' in
        (fun ys_4_1 -> 
          (`LH_C(h_3_8, ((mappend__d2 t_8_0) ys_4_1)))))) in
      (let rec h_3_9 = 'p' in
        (fun ys_4_2 -> 
          (`LH_C(h_3_9, ((mappend__d2 t_7_9) ys_4_2)))))) in
      (let rec h_4_0 = ' ' in
        (fun ys_4_3 -> 
          (`LH_C(h_4_0, ((mappend__d2 t_7_8) ys_4_3)))))) in
      (let rec h_4_1 = '(' in
        (fun ys_4_4 -> 
          (`LH_C(h_4_1, ((mappend__d2 t_7_7) ys_4_4)))))) in
      (let rec h_4_2 = ')' in
        (fun ys_4_5 -> 
          (`LH_C(h_4_2, ((mappend__d2 t_7_6) ys_4_5)))))) in
      (let rec h_4_3 = ' ' in
        (fun ys_4_6 -> 
          (`LH_C(h_4_3, ((mappend__d2 t_7_5) ys_4_6)))))) in
      (let rec h_4_4 = 'b' in
        (fun ys_4_7 -> 
          (`LH_C(h_4_4, ((mappend__d2 t_7_4) ys_4_7)))))) in
      (let rec h_4_5 = ' ' in
        (fun ys_4_8 -> 
          (`LH_C(h_4_5, ((mappend__d2 t_7_3) ys_4_8)))))) in
      (let rec h_4_6 = 'a' in
        (fun ys_4_9 -> 
          (`LH_C(h_4_6, ((mappend__d2 t_7_2) ys_4_9)))))) in
      (let rec h_4_7 = ' ' in
        (fun ys_5_0 -> 
          (`LH_C(h_4_7, ((mappend__d2 t_7_1) ys_5_0)))))) in
      (let rec h_4_8 = 's' in
        (fun ys_5_1 -> 
          (`LH_C(h_4_8, ((mappend__d2 t_7_0) ys_5_1)))))) in
      (let rec h_4_9 = 'e' in
        (fun ys_5_2 -> 
          (`LH_C(h_4_9, ((mappend__d2 t_6_9) ys_5_2)))))) in
      (let rec h_5_0 = 'm' in
        (fun ys_5_3 -> 
          (`LH_C(h_5_0, ((mappend__d2 t_6_8) ys_5_3)))))) in
      (let rec h_5_1 = 'i' in
        (fun ys_5_4 -> 
          (`LH_C(h_5_1, ((mappend__d2 t_6_7) ys_5_4)))))) in
      (let rec h_5_2 = 't' in
        (fun ys_5_5 -> 
          (`LH_C(h_5_2, ((mappend__d2 t_6_6) ys_5_5)))))) in
      (let rec h_5_3 = ' ' in
        (fun ys_5_6 -> 
          (`LH_C(h_5_3, ((mappend__d2 t_6_5) ys_5_6)))))) in
      (let rec h_5_4 = '(' in
        (fun ys_5_7 -> 
          (`LH_C(h_5_4, ((mappend__d2 t_6_4) ys_5_7)))))) in
      (let rec h_5_5 = ' ' in
        (fun ys_5_8 -> 
          (`LH_C(h_5_5, ((mappend__d2 t_6_3) ys_5_8)))))) in
      (let rec h_5_6 = 's' in
        (fun ys_5_9 -> 
          (`LH_C(h_5_6, ((mappend__d2 t_6_2) ys_5_9)))))) in
      (let rec h_5_7 = 'e' in
        (fun ys_6_0 -> 
          (`LH_C(h_5_7, ((mappend__d2 t_6_1) ys_6_0)))))) in
      (let rec h_5_8 = 'm' in
        (fun ys_6_1 -> 
          (`LH_C(h_5_8, ((mappend__d2 t_6_0) ys_6_1)))))) in
      (let rec h_5_9 = 'i' in
        (fun ys_6_2 -> 
          (`LH_C(h_5_9, ((mappend__d2 t_5_9) ys_6_2)))))) in
      (let rec h_6_0 = 't' in
        (fun ys_6_3 -> 
          (`LH_C(h_6_0, ((mappend__d2 t_5_8) ys_6_3)))))) in
      (let rec h_6_1 = ' ' in
        (fun ys_6_4 -> 
          (`LH_C(h_6_1, ((mappend__d2 t_5_7) ys_6_4)))))) in
      (let rec h_6_2 = '(' in
        (fun ys_6_5 -> 
          (`LH_C(h_6_2, ((mappend__d2 t_5_6) ys_6_5)))))) in
      (let rec h_6_3 = ' ' in
        (fun ys_6_6 -> 
          (`LH_C(h_6_3, ((mappend__d2 t_5_5) ys_6_6)))))) in
      (let rec h_6_4 = 'f' in
        (fun ys_6_7 -> 
          (`LH_C(h_6_4, ((mappend__d2 t_5_4) ys_6_7)))))) in
      (let rec h_6_5 = ' ' in
        (fun ys_6_8 -> 
          (`LH_C(h_6_5, ((mappend__d2 t_5_3) ys_6_8)))))) in
      (let rec h_6_6 = 'y' in
        (fun ys_6_9 -> 
          (`LH_C(h_6_6, ((mappend__d2 t_5_2) ys_6_9)))))) in
      (let rec h_6_7 = ' ' in
        (fun ys_7_0 -> 
          (`LH_C(h_6_7, ((mappend__d2 t_5_1) ys_7_0)))))) in
      (let rec h_6_8 = '(' in
        (fun ys_7_1 -> 
          (`LH_C(h_6_8, ((mappend__d2 t_5_0) ys_7_1)))))) in
      (let rec h_6_9 = ')' in
        (fun ys_7_2 -> 
          (`LH_C(h_6_9, ((mappend__d2 t_4_9) ys_7_2)))))) in
      (let rec h_7_0 = ' ' in
        (fun ys_7_3 -> 
          (`LH_C(h_7_0, ((mappend__d2 t_4_8) ys_7_3)))))) in
      (let rec h_7_1 = ')' in
        (fun ys_7_4 -> 
          (`LH_C(h_7_1, ((mappend__d2 t_4_7) ys_7_4)))))) in
      (let rec h_7_2 = ' ' in
        (fun ys_7_5 -> 
          (`LH_C(h_7_2, ((mappend__d2 t_4_6) ys_7_5)))))) in
      (let rec h_7_3 = ')' in
        (fun ys_7_6 -> 
          (`LH_C(h_7_3, ((mappend__d2 t_4_5) ys_7_6)))))) in
      (let rec h_7_4 = ' ' in
        (fun ys_7_7 -> 
          (`LH_C(h_7_4, ((mappend__d2 t_4_4) ys_7_7)))))) in
      (let rec h_7_5 = ')' in
        (fun ys_7_8 -> 
          (`LH_C(h_7_5, ((mappend__d2 t_4_3) ys_7_8)))))) in
      (let rec h_7_6 = ' ' in
        (fun ys_7_9 -> 
          (`LH_C(h_7_6, ((mappend__d2 t_4_2) ys_7_9)))))) in
      (let rec h_7_7 = 'o' in
        (fun ys_8_0 -> 
          (`LH_C(h_7_7, ((mappend__d2 t_4_1) ys_8_0)))))) in
      (let rec h_7_8 = 'r' in
        (fun ys_8_1 -> 
          (`LH_C(h_7_8, ((mappend__d2 t_4_0) ys_8_1)))))) in
      (let rec h_7_9 = 'e' in
        (fun ys_8_2 -> 
          (`LH_C(h_7_9, ((mappend__d2 t_3_9) ys_8_2)))))) in
      (let rec h_8_0 = 'z' in
        (fun ys_8_3 -> 
          (`LH_C(h_8_0, ((mappend__d2 t_3_8) ys_8_3)))))) in
      (let rec h_8_1 = ' ' in
        (fun ys_8_4 -> 
          (`LH_C(h_8_1, ((mappend__d2 t_3_7) ys_8_4)))))) in
      (let rec h_8_2 = '(' in
        (fun ys_8_5 -> 
          (`LH_C(h_8_2, ((mappend__d2 t_3_6) ys_8_5)))))) in
      (let rec h_8_3 = ' ' in
        (fun ys_8_6 -> 
          (`LH_C(h_8_3, ((mappend__d2 t_3_5) ys_8_6)))))))) c_0)) (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('[', (`LH_C(']', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (mkLisplist__d2 (strToToken__d2 str_0))))
and tautologyp__d0 _lh_tautologyp_arg1_0 =
  (match _lh_tautologyp_arg1_0 with
    | `LH_P3(_lh_tautologyp_LH_P3_0_0, _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0) -> 
      (match _lh_tautologyp_LH_P3_0_0 with
        | `Nil -> 
          false
        | `Atom(_lh_tautologyp_Atom_0_0) -> 
          (truep__d0 (`LH_P2((`Atom(_lh_tautologyp_Atom_0_0)), _lh_tautologyp_LH_P3_1_0)))
        | `Cons(_lh_tautologyp_Cons_0_0) -> 
          (match _lh_tautologyp_Cons_0_0 with
            | `LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0) -> 
              (if (truep__d1 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0)))), _lh_tautologyp_LH_P3_1_0))) then
                true
              else
                (if (falsep__d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_0, _lh_tautologyp_LH_P2_1_0)))), _lh_tautologyp_LH_P3_2_0))) then
                  false
                else
                  (let rec _lh_matchIdent_3_8 = _lh_tautologyp_LH_P2_0_0 in
                    (match _lh_matchIdent_3_8 with
                      | `Atom(_lh_tautologyp_Atom_0_1) -> 
                        (match _lh_tautologyp_Atom_0_1 with
                          | `LH_C(_lh_tautologyp_LH_C_0_0, _lh_tautologyp_LH_C_1_0) -> 
                            (match _lh_tautologyp_LH_C_0_0 with
                              | 'i' -> 
                                (match _lh_tautologyp_LH_C_1_0 with
                                  | `LH_C(_lh_tautologyp_LH_C_0_1, _lh_tautologyp_LH_C_1_1) -> 
                                    (match _lh_tautologyp_LH_C_0_1 with
                                      | 'f' -> 
                                        (match _lh_tautologyp_LH_C_1_1 with
                                          | `LH_N -> 
                                            (if (truep__d2 (`LH_P2((car__d1_d2 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0))) then
                                              (tautologyp__d0 (`LH_P3((cadr__d1 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0)))
                                            else
                                              (if (falsep__d1 (`LH_P2((car__d1_d3 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_2_0))) then
                                                (tautologyp__d0 (`LH_P3((caddr__d1 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, _lh_tautologyp_LH_P3_2_0)))
                                              else
                                                ((tautologyp__d0 (`LH_P3((cadr__d2 _lh_tautologyp_LH_P2_1_0), (`Cons((`LH_P2((car__d1_d4 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0)))), _lh_tautologyp_LH_P3_2_0))) && (tautologyp__d0 (`LH_P3((caddr__d2 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_1_0, (`Cons((`LH_P2((car__d1_d5 _lh_tautologyp_LH_P2_1_0), _lh_tautologyp_LH_P3_2_0))))))))))
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
                        false))))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and tautp__d0 _lh_tautp_arg1_0 =
  (tautologyp__d0 (`LH_P3(((rewrite__d0 _lh_tautp_arg1_0) (lemmas__d0 0)), (`Nil), (`Nil))))
and testBoyer2_nofib__d0 _lh_testBoyer2_nofib_arg1_0 =
  (report__d0 (testresult__d0 _lh_testBoyer2_nofib_arg1_0))
and testresult__d0 _lh_testresult_arg1_0 =
  (tautp__d0 (teststatement__d0 _lh_testresult_arg1_0))
and teststatement__d0 _lh_teststatement_arg1_0 =
  ((applysubst__d1 (subterm__d0 _lh_teststatement_arg1_0)) (statement__d0 0))
and truep__d0 _lh_truep_arg1_2 =
  (match _lh_truep_arg1_2 with
    | `LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4) -> 
      (match _lh_truep_LH_P2_0_4 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_2) -> 
          (match _lh_truep_Cons_0_2 with
            | `LH_P2(_lh_truep_LH_P2_0_5, _lh_truep_LH_P2_1_5) -> 
              (match _lh_truep_LH_P2_0_5 with
                | `Atom(_lh_truep_Atom_0_2) -> 
                  (match _lh_truep_Atom_0_2 with
                    | `LH_C(_lh_truep_LH_C_0_2, _lh_truep_LH_C_1_2) -> 
                      (match _lh_truep_LH_C_0_2 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_2 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_5 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
                | _ -> 
                  (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
            | _ -> 
              (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
        | _ -> 
          (lispmember__d2 (`LH_P2(_lh_truep_LH_P2_0_4, _lh_truep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"))
and truep__d1 _lh_truep_arg1_1 =
  (match _lh_truep_arg1_1 with
    | `LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2) -> 
      (match _lh_truep_LH_P2_0_2 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_1) -> 
          (match _lh_truep_Cons_0_1 with
            | `LH_P2(_lh_truep_LH_P2_0_3, _lh_truep_LH_P2_1_3) -> 
              (match _lh_truep_LH_P2_0_3 with
                | `Atom(_lh_truep_Atom_0_1) -> 
                  (match _lh_truep_Atom_0_1 with
                    | `LH_C(_lh_truep_LH_C_0_1, _lh_truep_LH_C_1_1) -> 
                      (match _lh_truep_LH_C_0_1 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_1 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_3 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                | _ -> 
                  (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
            | _ -> 
              (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
        | _ -> 
          (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"))
and truep__d2 _lh_truep_arg1_0 =
  (match _lh_truep_arg1_0 with
    | `LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0) -> 
      (match _lh_truep_LH_P2_0_0 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_0) -> 
          (match _lh_truep_Cons_0_0 with
            | `LH_P2(_lh_truep_LH_P2_0_1, _lh_truep_LH_P2_1_1) -> 
              (match _lh_truep_LH_P2_0_1 with
                | `Atom(_lh_truep_Atom_0_0) -> 
                  (match _lh_truep_Atom_0_0 with
                    | `LH_C(_lh_truep_LH_C_0_0, _lh_truep_LH_C_1_0) -> 
                      (match _lh_truep_LH_C_0_0 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_0 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_1 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                            | _ -> 
                              (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                        | _ -> 
                          (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                    | _ -> 
                      (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
                | _ -> 
                  (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
            | _ -> 
              (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
        | _ -> 
          (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_0, _lh_truep_LH_P2_1_0))))
    | _ -> 
      (failwith "error"));;
end;;

