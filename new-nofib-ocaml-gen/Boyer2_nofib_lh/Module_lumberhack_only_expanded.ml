

(* lumberhack_only_expanded *)
open Lumherhack_Common.Lumherhack_Common;;
open Lumberhack_LargeStr.Lumberhack_LargeStr;;
module Module_lumberhack_only_expanded = struct
let rec addtoLUT__d0 _lh_addtoLUT_arg1_1 =
  (match _lh_addtoLUT_arg1_1 with
    | `LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_2_2) -> 
      (match _lh_addtoLUT_LH_P3_2_2 with
        | `Empty -> 
          (`Node((`LH_P3((`Empty), (`LH_P2(_lh_addtoLUT_LH_P3_0_2, (`LH_C(_lh_addtoLUT_LH_P3_1_2, (`LH_N))))), (`Empty)))))
        | `Node(_lh_addtoLUT_Node_0_1) -> 
          (match _lh_addtoLUT_Node_0_1 with
            | `LH_P3(_lh_addtoLUT_LH_P3_0_3, _lh_addtoLUT_LH_P3_1_3, _lh_addtoLUT_LH_P3_2_3) -> 
              (match _lh_addtoLUT_LH_P3_1_3 with
                | `LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1) -> 
                  (if (_lh_addtoLUT_LH_P3_0_2 = _lh_addtoLUT_LH_P2_0_1) then
                    (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_3, (`LH_P2(_lh_addtoLUT_LH_P2_0_1, (`LH_C(_lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P2_1_1)))), _lh_addtoLUT_LH_P3_2_3))))
                  else
                    (if (_lh_addtoLUT_LH_P3_0_2 < _lh_addtoLUT_LH_P2_0_1) then
                      (`Node((`LH_P3((addtoLUT__d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_0_3))), (`LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1)), _lh_addtoLUT_LH_P3_2_3))))
                    else
                      (`Node((`LH_P3(_lh_addtoLUT_LH_P3_0_3, (`LH_P2(_lh_addtoLUT_LH_P2_0_1, _lh_addtoLUT_LH_P2_1_1)), (addtoLUT__d0 (`LH_P3(_lh_addtoLUT_LH_P3_0_2, _lh_addtoLUT_LH_P3_1_2, _lh_addtoLUT_LH_P3_2_3)))))))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec assoc__d0 _lh_assoc_arg1_1 =
  (match _lh_assoc_arg1_1 with
    | `LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_3) -> 
      (match _lh_assoc_LH_P2_1_3 with
        | `Cons(_lh_assoc_Cons_0_2) -> 
          (match _lh_assoc_Cons_0_2 with
            | `LH_P2(_lh_assoc_LH_P2_0_4, _lh_assoc_LH_P2_1_4) -> 
              (let rec _lh_matchIdent_2_3 = _lh_assoc_LH_P2_0_4 in
                (match _lh_matchIdent_2_3 with
                  | `Cons(_lh_assoc_Cons_0_3) -> 
                    (match _lh_assoc_Cons_0_3 with
                      | `LH_P2(_lh_assoc_LH_P2_0_5, _lh_assoc_LH_P2_1_5) -> 
                        (match _lh_assoc_LH_P2_0_5 with
                          | `Atom(_lh_assoc_Atom_0_1) -> 
                            (if (_lh_assoc_LH_P2_0_3 = (`Atom(_lh_assoc_Atom_0_1))) then
                              _lh_assoc_LH_P2_0_4
                            else
                              (assoc__d0 (`LH_P2(_lh_assoc_LH_P2_0_3, _lh_assoc_LH_P2_1_4))))
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
let rec assoc__d1 _lh_assoc_arg1_2 =
  (match _lh_assoc_arg1_2 with
    | `LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_6) -> 
      (match _lh_assoc_LH_P2_1_6 with
        | `Cons(_lh_assoc_Cons_0_4) -> 
          (match _lh_assoc_Cons_0_4 with
            | `LH_P2(_lh_assoc_LH_P2_0_7, _lh_assoc_LH_P2_1_7) -> 
              (let rec _lh_matchIdent_3_0 = _lh_assoc_LH_P2_0_7 in
                (match _lh_matchIdent_3_0 with
                  | `Cons(_lh_assoc_Cons_0_5) -> 
                    (match _lh_assoc_Cons_0_5 with
                      | `LH_P2(_lh_assoc_LH_P2_0_8, _lh_assoc_LH_P2_1_8) -> 
                        (match _lh_assoc_LH_P2_0_8 with
                          | `Atom(_lh_assoc_Atom_0_2) -> 
                            (if (_lh_assoc_LH_P2_0_6 = (`Atom(_lh_assoc_Atom_0_2))) then
                              _lh_assoc_LH_P2_0_7
                            else
                              (assoc__d1 (`LH_P2(_lh_assoc_LH_P2_0_6, _lh_assoc_LH_P2_1_7))))
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
let rec assoc__d2 _lh_assoc_arg1_3 =
  (match _lh_assoc_arg1_3 with
    | `LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_9) -> 
      (match _lh_assoc_LH_P2_1_9 with
        | `Cons(_lh_assoc_Cons_0_6) -> 
          (match _lh_assoc_Cons_0_6 with
            | `LH_P2(_lh_assoc_LH_P2_0_1_0, _lh_assoc_LH_P2_1_1_0) -> 
              (let rec _lh_matchIdent_3_1 = _lh_assoc_LH_P2_0_1_0 in
                (match _lh_matchIdent_3_1 with
                  | `Cons(_lh_assoc_Cons_0_7) -> 
                    (match _lh_assoc_Cons_0_7 with
                      | `LH_P2(_lh_assoc_LH_P2_0_1_1, _lh_assoc_LH_P2_1_1_1) -> 
                        (match _lh_assoc_LH_P2_0_1_1 with
                          | `Atom(_lh_assoc_Atom_0_3) -> 
                            (if (_lh_assoc_LH_P2_0_9 = (`Atom(_lh_assoc_Atom_0_3))) then
                              _lh_assoc_LH_P2_0_1_0
                            else
                              (assoc__d2 (`LH_P2(_lh_assoc_LH_P2_0_9, _lh_assoc_LH_P2_1_1_0))))
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
let rec atom__d0 _lh_atom_arg1_3 =
  (match _lh_atom_arg1_3 with
    | `Atom(_lh_atom_Atom_0_3) -> 
      true
    | _ -> 
      false);;
let rec atom__d1 _lh_atom_arg1_2 =
  (match _lh_atom_arg1_2 with
    | `Atom(_lh_atom_Atom_0_2) -> 
      true
    | _ -> 
      false);;
let rec atom__d2 _lh_atom_arg1_1 =
  (match _lh_atom_arg1_1 with
    | `Atom(_lh_atom_Atom_0_1) -> 
      true
    | _ -> 
      false);;
let rec car__d0 _lh_car_arg1_1_6 =
  (match _lh_car_arg1_1_6 with
    | `Cons(_lh_car_Cons_0_1_6) -> 
      (match _lh_car_Cons_0_1_6 with
        | `LH_P2(_lh_car_LH_P2_0_1_6, _lh_car_LH_P2_1_1_6) -> 
          _lh_car_LH_P2_0_1_6
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
let rec car__d1_d0 _lh_car_arg1_3 =
  (match _lh_car_arg1_3 with
    | `Cons(_lh_car_Cons_0_3) -> 
      (match _lh_car_Cons_0_3 with
        | `LH_P2(_lh_car_LH_P2_0_3, _lh_car_LH_P2_1_3) -> 
          _lh_car_LH_P2_0_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d1 _lh_car_arg1_1_4 =
  (match _lh_car_arg1_1_4 with
    | `Cons(_lh_car_Cons_0_1_4) -> 
      (match _lh_car_Cons_0_1_4 with
        | `LH_P2(_lh_car_LH_P2_0_1_4, _lh_car_LH_P2_1_1_4) -> 
          _lh_car_LH_P2_0_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d2 _lh_car_arg1_7 =
  (match _lh_car_arg1_7 with
    | `Cons(_lh_car_Cons_0_7) -> 
      (match _lh_car_Cons_0_7 with
        | `LH_P2(_lh_car_LH_P2_0_7, _lh_car_LH_P2_1_7) -> 
          _lh_car_LH_P2_0_7
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d3 _lh_car_arg1_4 =
  (match _lh_car_arg1_4 with
    | `Cons(_lh_car_Cons_0_4) -> 
      (match _lh_car_Cons_0_4 with
        | `LH_P2(_lh_car_LH_P2_0_4, _lh_car_LH_P2_1_4) -> 
          _lh_car_LH_P2_0_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d4 _lh_car_arg1_1_3 =
  (match _lh_car_arg1_1_3 with
    | `Cons(_lh_car_Cons_0_1_3) -> 
      (match _lh_car_Cons_0_1_3 with
        | `LH_P2(_lh_car_LH_P2_0_1_3, _lh_car_LH_P2_1_1_3) -> 
          _lh_car_LH_P2_0_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d1_d5 _lh_car_arg1_5 =
  (match _lh_car_arg1_5 with
    | `Cons(_lh_car_Cons_0_5) -> 
      (match _lh_car_Cons_0_5 with
        | `LH_P2(_lh_car_LH_P2_0_5, _lh_car_LH_P2_1_5) -> 
          _lh_car_LH_P2_0_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d2 _lh_car_arg1_1 =
  (match _lh_car_arg1_1 with
    | `Cons(_lh_car_Cons_0_1) -> 
      (match _lh_car_Cons_0_1 with
        | `LH_P2(_lh_car_LH_P2_0_1, _lh_car_LH_P2_1_1) -> 
          _lh_car_LH_P2_0_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d3 _lh_car_arg1_6 =
  (match _lh_car_arg1_6 with
    | `Cons(_lh_car_Cons_0_6) -> 
      (match _lh_car_Cons_0_6 with
        | `LH_P2(_lh_car_LH_P2_0_6, _lh_car_LH_P2_1_6) -> 
          _lh_car_LH_P2_0_6
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d4 _lh_car_arg1_1_2 =
  (match _lh_car_arg1_1_2 with
    | `Cons(_lh_car_Cons_0_1_2) -> 
      (match _lh_car_Cons_0_1_2 with
        | `LH_P2(_lh_car_LH_P2_0_1_2, _lh_car_LH_P2_1_1_2) -> 
          _lh_car_LH_P2_0_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d5 _lh_car_arg1_1_5 =
  (match _lh_car_arg1_1_5 with
    | `Cons(_lh_car_Cons_0_1_5) -> 
      (match _lh_car_Cons_0_1_5 with
        | `LH_P2(_lh_car_LH_P2_0_1_5, _lh_car_LH_P2_1_1_5) -> 
          _lh_car_LH_P2_0_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d6 _lh_car_arg1_2 =
  (match _lh_car_arg1_2 with
    | `Cons(_lh_car_Cons_0_2) -> 
      (match _lh_car_Cons_0_2 with
        | `LH_P2(_lh_car_LH_P2_0_2, _lh_car_LH_P2_1_2) -> 
          _lh_car_LH_P2_0_2
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
let rec car__d8 _lh_car_arg1_1_0 =
  (match _lh_car_arg1_1_0 with
    | `Cons(_lh_car_Cons_0_1_0) -> 
      (match _lh_car_Cons_0_1_0 with
        | `LH_P2(_lh_car_LH_P2_0_1_0, _lh_car_LH_P2_1_1_0) -> 
          _lh_car_LH_P2_0_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec car__d9 _lh_car_arg1_9 =
  (match _lh_car_arg1_9 with
    | `Cons(_lh_car_Cons_0_9) -> 
      (match _lh_car_Cons_0_9 with
        | `LH_P2(_lh_car_LH_P2_0_9, _lh_car_LH_P2_1_9) -> 
          _lh_car_LH_P2_0_9
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d0 _lh_cdr_arg1_1 =
  (match _lh_cdr_arg1_1 with
    | `Cons(_lh_cdr_Cons_0_1) -> 
      (match _lh_cdr_Cons_0_1 with
        | `LH_P2(_lh_cdr_LH_P2_0_1, _lh_cdr_LH_P2_1_1) -> 
          _lh_cdr_LH_P2_1_1
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1 _lh_cdr_arg1_8 =
  (match _lh_cdr_arg1_8 with
    | `Cons(_lh_cdr_Cons_0_8) -> 
      (match _lh_cdr_Cons_0_8 with
        | `LH_P2(_lh_cdr_LH_P2_0_8, _lh_cdr_LH_P2_1_8) -> 
          _lh_cdr_LH_P2_1_8
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1_d0 _lh_cdr_arg1_2 =
  (match _lh_cdr_arg1_2 with
    | `Cons(_lh_cdr_Cons_0_2) -> 
      (match _lh_cdr_Cons_0_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_2, _lh_cdr_LH_P2_1_2) -> 
          _lh_cdr_LH_P2_1_2
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1_d1 _lh_cdr_arg1_4 =
  (match _lh_cdr_arg1_4 with
    | `Cons(_lh_cdr_Cons_0_4) -> 
      (match _lh_cdr_Cons_0_4 with
        | `LH_P2(_lh_cdr_LH_P2_0_4, _lh_cdr_LH_P2_1_4) -> 
          _lh_cdr_LH_P2_1_4
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d1_d2 _lh_cdr_arg1_1_3 =
  (match _lh_cdr_arg1_1_3 with
    | `Cons(_lh_cdr_Cons_0_1_3) -> 
      (match _lh_cdr_Cons_0_1_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_3, _lh_cdr_LH_P2_1_1_3) -> 
          _lh_cdr_LH_P2_1_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d2 _lh_cdr_arg1_6 =
  (match _lh_cdr_arg1_6 with
    | `Cons(_lh_cdr_Cons_0_6) -> 
      (match _lh_cdr_Cons_0_6 with
        | `LH_P2(_lh_cdr_LH_P2_0_6, _lh_cdr_LH_P2_1_6) -> 
          _lh_cdr_LH_P2_1_6
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
let rec cdr__d4 _lh_cdr_arg1_3 =
  (match _lh_cdr_arg1_3 with
    | `Cons(_lh_cdr_Cons_0_3) -> 
      (match _lh_cdr_Cons_0_3 with
        | `LH_P2(_lh_cdr_LH_P2_0_3, _lh_cdr_LH_P2_1_3) -> 
          _lh_cdr_LH_P2_1_3
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d5 _lh_cdr_arg1_1_0 =
  (match _lh_cdr_arg1_1_0 with
    | `Cons(_lh_cdr_Cons_0_1_0) -> 
      (match _lh_cdr_Cons_0_1_0 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_0, _lh_cdr_LH_P2_1_1_0) -> 
          _lh_cdr_LH_P2_1_1_0
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d6 _lh_cdr_arg1_5 =
  (match _lh_cdr_arg1_5 with
    | `Cons(_lh_cdr_Cons_0_5) -> 
      (match _lh_cdr_Cons_0_5 with
        | `LH_P2(_lh_cdr_LH_P2_0_5, _lh_cdr_LH_P2_1_5) -> 
          _lh_cdr_LH_P2_1_5
        | _ -> 
          (`Nil))
    | _ -> 
      (`Nil));;
let rec cdr__d7 _lh_cdr_arg1_1_2 =
  (match _lh_cdr_arg1_1_2 with
    | `Cons(_lh_cdr_Cons_0_1_2) -> 
      (match _lh_cdr_Cons_0_1_2 with
        | `LH_P2(_lh_cdr_LH_P2_0_1_2, _lh_cdr_LH_P2_1_1_2) -> 
          _lh_cdr_LH_P2_1_1_2
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
let rec getLUT__d0 _lh_getLUT_arg1_1 =
  (match _lh_getLUT_arg1_1 with
    | `LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P2_1_2) -> 
      (match _lh_getLUT_LH_P2_1_2 with
        | `Empty -> 
          (`LH_N)
        | `Node(_lh_getLUT_Node_0_1) -> 
          (match _lh_getLUT_Node_0_1 with
            | `LH_P3(_lh_getLUT_LH_P3_0_1, _lh_getLUT_LH_P3_1_1, _lh_getLUT_LH_P3_2_1) -> 
              (match _lh_getLUT_LH_P3_1_1 with
                | `LH_P2(_lh_getLUT_LH_P2_0_3, _lh_getLUT_LH_P2_1_3) -> 
                  (if (_lh_getLUT_LH_P2_0_2 = _lh_getLUT_LH_P2_0_3) then
                    _lh_getLUT_LH_P2_1_3
                  else
                    (if (_lh_getLUT_LH_P2_0_2 < _lh_getLUT_LH_P2_0_3) then
                      (getLUT__d0 (`LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P3_0_1)))
                    else
                      (getLUT__d0 (`LH_P2(_lh_getLUT_LH_P2_0_2, _lh_getLUT_LH_P3_2_1)))))
                | _ -> 
                  (failwith "error"))
            | _ -> 
              (failwith "error"))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"));;
let rec lispmember__d0 _lh_lispmember_arg1_3 =
  (match _lh_lispmember_arg1_3 with
    | `LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_6) -> 
      (match _lh_lispmember_LH_P2_1_6 with
        | `Cons(_lh_lispmember_Cons_0_3) -> 
          (match _lh_lispmember_Cons_0_3 with
            | `LH_P2(_lh_lispmember_LH_P2_0_7, _lh_lispmember_LH_P2_1_7) -> 
              (if (_lh_lispmember_LH_P2_0_6 = _lh_lispmember_LH_P2_0_7) then
                true
              else
                (lispmember__d0 (`LH_P2(_lh_lispmember_LH_P2_0_6, _lh_lispmember_LH_P2_1_7))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d1 _lh_lispmember_arg1_1 =
  (match _lh_lispmember_arg1_1 with
    | `LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_2) -> 
      (match _lh_lispmember_LH_P2_1_2 with
        | `Cons(_lh_lispmember_Cons_0_1) -> 
          (match _lh_lispmember_Cons_0_1 with
            | `LH_P2(_lh_lispmember_LH_P2_0_3, _lh_lispmember_LH_P2_1_3) -> 
              (if (_lh_lispmember_LH_P2_0_2 = _lh_lispmember_LH_P2_0_3) then
                true
              else
                (lispmember__d1 (`LH_P2(_lh_lispmember_LH_P2_0_2, _lh_lispmember_LH_P2_1_3))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d2 _lh_lispmember_arg1_2 =
  (match _lh_lispmember_arg1_2 with
    | `LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_4) -> 
      (match _lh_lispmember_LH_P2_1_4 with
        | `Cons(_lh_lispmember_Cons_0_2) -> 
          (match _lh_lispmember_Cons_0_2 with
            | `LH_P2(_lh_lispmember_LH_P2_0_5, _lh_lispmember_LH_P2_1_5) -> 
              (if (_lh_lispmember_LH_P2_0_4 = _lh_lispmember_LH_P2_0_5) then
                true
              else
                (lispmember__d2 (`LH_P2(_lh_lispmember_LH_P2_0_4, _lh_lispmember_LH_P2_1_5))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d3 _lh_lispmember_arg1_4 =
  (match _lh_lispmember_arg1_4 with
    | `LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_8) -> 
      (match _lh_lispmember_LH_P2_1_8 with
        | `Cons(_lh_lispmember_Cons_0_4) -> 
          (match _lh_lispmember_Cons_0_4 with
            | `LH_P2(_lh_lispmember_LH_P2_0_9, _lh_lispmember_LH_P2_1_9) -> 
              (if (_lh_lispmember_LH_P2_0_8 = _lh_lispmember_LH_P2_0_9) then
                true
              else
                (lispmember__d3 (`LH_P2(_lh_lispmember_LH_P2_0_8, _lh_lispmember_LH_P2_1_9))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec lispmember__d4 _lh_lispmember_arg1_5 =
  (match _lh_lispmember_arg1_5 with
    | `LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_0) -> 
      (match _lh_lispmember_LH_P2_1_1_0 with
        | `Cons(_lh_lispmember_Cons_0_5) -> 
          (match _lh_lispmember_Cons_0_5 with
            | `LH_P2(_lh_lispmember_LH_P2_0_1_1, _lh_lispmember_LH_P2_1_1_1) -> 
              (if (_lh_lispmember_LH_P2_0_1_0 = _lh_lispmember_LH_P2_0_1_1) then
                true
              else
                (lispmember__d4 (`LH_P2(_lh_lispmember_LH_P2_0_1_0, _lh_lispmember_LH_P2_1_1_1))))
            | _ -> 
              false)
        | _ -> 
          false)
    | _ -> 
      (failwith "error"));;
let rec mappend__d0 xs_1_0 ys_1_0 =
  (match xs_1_0 with
    | `LH_C(h_2_1, t_2_3) -> 
      (`LH_C(h_2_1, ((mappend__d0 t_2_3) ys_1_0)))
    | `LH_N -> 
      ys_1_0);;
let rec mappend__d1 xs_9 ys_9 =
  (match xs_9 with
    | `LH_C(h_2_0, t_2_2) -> 
      (`LH_C(h_2_0, ((mappend__d1 t_2_2) ys_9)))
    | `LH_N -> 
      ys_9);;
let rec mappend__d2 xs_1_1 ys_1_1 =
  (match xs_1_1 with
    | `LH_C(h_2_2, t_2_4) -> 
      (`LH_C(h_2_2, ((mappend__d2 t_2_4) ys_1_1)))
    | `LH_N -> 
      ys_1_1);;
let rec mappend__d3 xs_1_3 ys_1_3 =
  (match xs_1_3 with
    | `LH_C(h_2_4, t_2_6) -> 
      (`LH_C(h_2_4, ((mappend__d3 t_2_6) ys_1_3)))
    | `LH_N -> 
      ys_1_3);;
let rec mappend__d4 xs_1_2 ys_1_2 =
  (match xs_1_2 with
    | `LH_C(h_2_3, t_2_5) -> 
      (`LH_C(h_2_3, ((mappend__d4 t_2_5) ys_1_2)))
    | `LH_N -> 
      ys_1_2);;
let rec report__d0 _lh_report_arg1_1 =
  (match _lh_report_arg1_1 with
    | true -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))
    | false -> 
      (`LH_C('T', (`LH_C('h', (`LH_C('e', (`LH_C(' ', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('m', (`LH_C(' ', (`LH_C('i', (`LH_C('s', (`LH_C(' ', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken__d0 _lh_restOfToken_arg1_3 =
  (match _lh_restOfToken_arg1_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_C_1_3) -> 
      (if (((_lh_restOfToken_LH_C_0_3 = '(') || (_lh_restOfToken_LH_C_0_3 = ')')) || (_lh_restOfToken_LH_C_0_3 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_C_1_3))))
      else
        (let rec _lh_matchIdent_4_7 = (restOfToken__d0 _lh_restOfToken_LH_C_1_3) in
          (match _lh_matchIdent_4_7 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_3, _lh_restOfToken_LH_P2_1_3) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_3, _lh_restOfToken_LH_P2_0_3)), _lh_restOfToken_LH_P2_1_3))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec restOfToken__d1 _lh_restOfToken_arg1_1 =
  (match _lh_restOfToken_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1) -> 
      (if (((_lh_restOfToken_LH_C_0_1 = '(') || (_lh_restOfToken_LH_C_0_1 = ')')) || (_lh_restOfToken_LH_C_0_1 = ' ')) then
        (`LH_P2((`LH_N), (`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_C_1_1))))
      else
        (let rec _lh_matchIdent_3_3 = (restOfToken__d1 _lh_restOfToken_LH_C_1_1) in
          (match _lh_matchIdent_3_3 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_1, _lh_restOfToken_LH_P2_1_1) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_1, _lh_restOfToken_LH_P2_0_1)), _lh_restOfToken_LH_P2_1_1))
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
        (let rec _lh_matchIdent_4_5 = (restOfToken__d2 _lh_restOfToken_LH_C_1_2) in
          (match _lh_matchIdent_4_5 with
            | `LH_P2(_lh_restOfToken_LH_P2_0_2, _lh_restOfToken_LH_P2_1_2) -> 
              (`LH_P2((`LH_C(_lh_restOfToken_LH_C_0_2, _lh_restOfToken_LH_P2_0_2)), _lh_restOfToken_LH_P2_1_2))
            | _ -> 
              (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec rules__d0 _lh_rules_arg1_1 =
  (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('m', (`LH_C('p', (`LH_C('i', (`LH_C('l', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('d', (`LH_C('e', (`LH_C('g', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('p', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('f', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('o', (`LH_C('o', (`LH_C('l', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('n', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('d', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('p', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('p', (`LH_C('r', (`LH_C('e', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('v', (`LH_C('i', (`LH_C('d', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('u', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('-', (`LH_C('c', (`LH_C('h', (`LH_C('e', (`LH_C('c', (`LH_C('k', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('a', (`LH_C('u', (`LH_C('t', (`LH_C('o', (`LH_C('l', (`LH_C('o', (`LH_C('g', (`LH_C('y', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('a', (`LH_C('l', (`LH_C('s', (`LH_C('i', (`LH_C('f', (`LH_C('y', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('p', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('q', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('q', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('e', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('p', (`LH_C('d', (`LH_C('s', (`LH_C(' ', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C('e', (`LH_C('n', (`LH_C('v', (`LH_C('r', (`LH_C('n', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('c', (`LH_C('-', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('i', (`LH_C('n', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('c', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('x', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('k', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('o', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('u', (`LH_C('n', (`LH_C('t', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('1', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('e', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('b', (`LH_C('i', (`LH_C('g', (`LH_C('-', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('o', (`LH_C('w', (`LH_C('e', (`LH_C('r', (`LH_C('-', (`LH_C('r', (`LH_C('e', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('b', (`LH_C('a', (`LH_C('s', (`LH_C('e', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('j', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('w', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('c', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('c', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('c', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('r', (`LH_C('m', (`LH_C('a', (`LH_C('l', (`LH_C('i', (`LH_C('z', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('u', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('a', (`LH_C('m', (`LH_C('e', (`LH_C('f', (`LH_C('r', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('s', (`LH_C('t', (`LH_C('-', (`LH_C('f', (`LH_C('a', (`LH_C('c', (`LH_C('t', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('r', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('-', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('r', (`LH_C('e', (`LH_C('a', (`LH_C('t', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('o', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('1', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('1', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('1', (`LH_C('-', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('s', (`LH_C('o', (`LH_C('r', (`LH_C('t', (`LH_C('2', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('1', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('2', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('3', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('4', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('5', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C('6', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('6', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('x', (`LH_C('7', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('m', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('2', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('o', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('d', (`LH_C('e', (`LH_C('l', (`LH_C('e', (`LH_C('t', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('m', (`LH_C('e', (`LH_C('a', (`LH_C('n', (`LH_C('i', (`LH_C('n', (`LH_C('g', (`LH_C(' ', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C('-', (`LH_C('t', (`LH_C('r', (`LH_C('e', (`LH_C('e', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('d', (`LH_C('d', (`LH_C('1', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('u', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('a', (`LH_C('s', (`LH_C('t', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('t', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('z', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('e', (`LH_C('d', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('a', (`LH_C(')', (`LH_C('(', (`LH_C('a', (`LH_C('s', (`LH_C('s', (`LH_C('i', (`LH_C('g', (`LH_C('n', (`LH_C('m', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('b', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('a', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('o', (`LH_C('p', (`LH_C('h', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('l', (`LH_C('i', (`LH_C('s', (`LH_C('t', (`LH_C('p', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('d', (`LH_C('r', (`LH_C(' ', (`LH_C('(', (`LH_C('f', (`LH_C('l', (`LH_C('a', (`LH_C('t', (`LH_C('t', (`LH_C('e', (`LH_C('n', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('c', (`LH_C('o', (`LH_C('n', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('n', (`LH_C('i', (`LH_C('l', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('q', (`LH_C('u', (`LH_C('o', (`LH_C('t', (`LH_C('i', (`LH_C('e', (`LH_C('n', (`LH_C('t', (`LH_C(' ', (`LH_C('(', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C('p', (`LH_C(' ', (`LH_C('y', (`LH_C(')', (`LH_C('(', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(')', (`LH_C('(', (`LH_C('f', (`LH_C('i', (`LH_C('x', (`LH_C(' ', (`LH_C('x', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_C((`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('(', (`LH_C('s', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('i', (`LH_C(' ', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('i', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C('e', (`LH_C('q', (`LH_C('p', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('i', (`LH_C(')', (`LH_C('v', (`LH_C('a', (`LH_C('l', (`LH_C('(', (`LH_C('g', (`LH_C('e', (`LH_C('t', (`LH_C(' ', (`LH_C('j', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))), (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));;
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
                  (let rec _lh_matchIdent_2_4 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_2_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_6, _lh_sublist_LH_P2_1_6) -> 
                        (let rec _lh_matchIdent_2_5 = (sublist__d0 _lh_sublist_LH_P2_0_6) in
                          (match _lh_matchIdent_2_5 with
                            | `LH_P2(_lh_sublist_LH_P2_0_7, _lh_sublist_LH_P2_1_7) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_7, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_6, _lh_sublist_LH_P2_1_7))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_2_6 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_2_6 with
                      | `LH_P2(_lh_sublist_LH_P2_0_8, _lh_sublist_LH_P2_1_8) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_8, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_8))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_3 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_2, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_2_7 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                    (match _lh_matchIdent_2_7 with
                      | `LH_P2(_lh_sublist_LH_P2_0_9, _lh_sublist_LH_P2_1_9) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_9, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_9))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_2_8 = (sublist__d0 _lh_sublist_LH_C_1_2) in
                (match _lh_matchIdent_2_8 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_0, _lh_sublist_LH_P2_1_1_0) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_2)), _lh_sublist_LH_P2_1_1_0))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_2_9 = (sublist__d0 _lh_sublist_LH_C_1_2) in
            (match _lh_matchIdent_2_9 with
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
                  (let rec _lh_matchIdent_3_7 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_3_7 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_2, _lh_sublist_LH_P2_1_1_2) -> 
                        (let rec _lh_matchIdent_3_8 = (sublist__d1 _lh_sublist_LH_P2_0_1_2) in
                          (match _lh_matchIdent_3_8 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_3, _lh_sublist_LH_P2_1_1_3) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_3, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_2, _lh_sublist_LH_P2_1_1_3))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_3_9 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_3_9 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_4, _lh_sublist_LH_P2_1_1_4) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_4, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_4))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_5 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_4, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_4_0 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                    (match _lh_matchIdent_4_0 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_5, _lh_sublist_LH_P2_1_1_5) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_1_5, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_5))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_4_1 = (sublist__d1 _lh_sublist_LH_C_1_4) in
                (match _lh_matchIdent_4_1 with
                  | `LH_P2(_lh_sublist_LH_P2_0_1_6, _lh_sublist_LH_P2_1_1_6) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_1_6, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_6))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_4_2 = (sublist__d1 _lh_sublist_LH_C_1_4) in
            (match _lh_matchIdent_4_2 with
              | `LH_P2(_lh_sublist_LH_P2_0_1_7, _lh_sublist_LH_P2_1_1_7) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_1_7, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_4)), _lh_sublist_LH_P2_1_1_7))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec sublist__d2 _lh_sublist_arg1_3 =
  (match _lh_sublist_arg1_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`Nil)))
    | `LH_C(_lh_sublist_LH_C_0_6, _lh_sublist_LH_C_1_6) -> 
      (match _lh_sublist_LH_C_0_6 with
        | `LH_C(_lh_sublist_LH_C_0_7, _lh_sublist_LH_C_1_7) -> 
          (match _lh_sublist_LH_C_0_7 with
            | '(' -> 
              (match _lh_sublist_LH_C_1_7 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_5_1 = (sublist__d2 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_1 with
                      | `LH_P2(_lh_sublist_LH_P2_0_1_8, _lh_sublist_LH_P2_1_1_8) -> 
                        (let rec _lh_matchIdent_5_2 = (sublist__d2 _lh_sublist_LH_P2_0_1_8) in
                          (match _lh_matchIdent_5_2 with
                            | `LH_P2(_lh_sublist_LH_P2_0_1_9, _lh_sublist_LH_P2_1_1_9) -> 
                              (`LH_P2(_lh_sublist_LH_P2_0_1_9, (`Cons((`LH_P2(_lh_sublist_LH_P2_1_1_8, _lh_sublist_LH_P2_1_1_9))))))
                            | _ -> 
                              (failwith "error")))
                      | _ -> 
                        (failwith "error")))
                | _ -> 
                  (let rec _lh_matchIdent_5_3 = (sublist__d2 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_3 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_0, _lh_sublist_LH_P2_1_2_0) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_0, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_0))))))
                      | _ -> 
                        (failwith "error"))))
            | ')' -> 
              (match _lh_sublist_LH_C_1_7 with
                | `LH_N -> 
                  (`LH_P2(_lh_sublist_LH_C_1_6, (`Nil)))
                | _ -> 
                  (let rec _lh_matchIdent_5_4 = (sublist__d2 _lh_sublist_LH_C_1_6) in
                    (match _lh_matchIdent_5_4 with
                      | `LH_P2(_lh_sublist_LH_P2_0_2_1, _lh_sublist_LH_P2_1_2_1) -> 
                        (`LH_P2(_lh_sublist_LH_P2_0_2_1, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_1))))))
                      | _ -> 
                        (failwith "error"))))
            | _ -> 
              (let rec _lh_matchIdent_5_5 = (sublist__d2 _lh_sublist_LH_C_1_6) in
                (match _lh_matchIdent_5_5 with
                  | `LH_P2(_lh_sublist_LH_P2_0_2_2, _lh_sublist_LH_P2_1_2_2) -> 
                    (`LH_P2(_lh_sublist_LH_P2_0_2_2, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_2))))))
                  | _ -> 
                    (failwith "error"))))
        | _ -> 
          (let rec _lh_matchIdent_5_6 = (sublist__d2 _lh_sublist_LH_C_1_6) in
            (match _lh_matchIdent_5_6 with
              | `LH_P2(_lh_sublist_LH_P2_0_2_3, _lh_sublist_LH_P2_1_2_3) -> 
                (`LH_P2(_lh_sublist_LH_P2_0_2_3, (`Cons((`LH_P2((`Atom(_lh_sublist_LH_C_0_6)), _lh_sublist_LH_P2_1_2_3))))))
              | _ -> 
                (failwith "error"))))
    | _ -> 
      (failwith "error"));;
let rec tv__d0 _lh_tv_arg1_3 =
  (match _lh_tv_arg1_3 with
    | `Atom(_lh_tv_Atom_0_3) -> 
      _lh_tv_Atom_0_3
    | _ -> 
      (failwith "error"));;
let rec tv__d1 _lh_tv_arg1_1 =
  (match _lh_tv_arg1_1 with
    | `Atom(_lh_tv_Atom_0_1) -> 
      _lh_tv_Atom_0_1
    | _ -> 
      (failwith "error"));;
let rec tv__d2 _lh_tv_arg1_2 =
  (match _lh_tv_arg1_2 with
    | `Atom(_lh_tv_Atom_0_2) -> 
      _lh_tv_Atom_0_2
    | _ -> 
      (failwith "error"));;
let rec addlemma__d0 _lh_addlemma_arg1_1 _lh_addlemma_arg2_1 =
  (match _lh_addlemma_arg1_1 with
    | `Nil -> 
      _lh_addlemma_arg2_1
    | `Atom(_lh_addlemma_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_addlemma_Cons_0_1) -> 
      (match _lh_addlemma_Cons_0_1 with
        | `LH_P2(_lh_addlemma_LH_P2_0_1, _lh_addlemma_LH_P2_1_1) -> 
          (let rec z_1 = (car__d0 _lh_addlemma_LH_P2_1_1) in
            (if (((tv__d0 _lh_addlemma_LH_P2_0_1) = (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_N)))))))))))) && (not (atom__d0 z_1))) then
              (addtoLUT__d0 (`LH_P3((tv__d1 (car__d1 z_1)), (`Cons((`LH_P2(_lh_addlemma_LH_P2_0_1, _lh_addlemma_LH_P2_1_1)))), _lh_addlemma_arg2_1)))
            else
              (failwith "error")))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and addlemmalst__d0 _lh_addlemmalst_arg1_1 _lh_addlemmalst_arg2_1 =
  (match _lh_addlemmalst_arg1_1 with
    | `LH_N -> 
      _lh_addlemmalst_arg2_1
    | `LH_C(_lh_addlemmalst_LH_C_0_1, _lh_addlemmalst_LH_C_1_1) -> 
      ((addlemmalst__d0 _lh_addlemmalst_LH_C_1_1) ((addlemma__d0 _lh_addlemmalst_LH_C_0_1) _lh_addlemmalst_arg2_1))
    | _ -> 
      (failwith "error"))
and applysubst__d0 _lh_applysubst_arg1_2 _lh_applysubst_arg2_2 =
  (match _lh_applysubst_arg2_2 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_2) -> 
      (let rec _lh_matchIdent_4_4 = (assoc__d0 (`LH_P2((`Atom(_lh_applysubst_Atom_0_2)), _lh_applysubst_arg1_2))) in
        (match _lh_matchIdent_4_4 with
          | `Cons(_lh_applysubst_Cons_0_4) -> 
            (match _lh_applysubst_Cons_0_4 with
              | `LH_P2(_lh_applysubst_LH_P2_0_4, _lh_applysubst_LH_P2_1_4) -> 
                _lh_applysubst_LH_P2_1_4
              | _ -> 
                (`Atom(_lh_applysubst_Atom_0_2)))
          | _ -> 
            (`Atom(_lh_applysubst_Atom_0_2))))
    | `Cons(_lh_applysubst_Cons_0_5) -> 
      (match _lh_applysubst_Cons_0_5 with
        | `LH_P2(_lh_applysubst_LH_P2_0_5, _lh_applysubst_LH_P2_1_5) -> 
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_5, ((applysubstlst__d0 _lh_applysubst_arg1_2) _lh_applysubst_LH_P2_1_5)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubst__d1 _lh_applysubst_arg1_1 _lh_applysubst_arg2_1 =
  (match _lh_applysubst_arg2_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubst_Atom_0_1) -> 
      (let rec _lh_matchIdent_3_4 = (assoc__d2 (`LH_P2((`Atom(_lh_applysubst_Atom_0_1)), _lh_applysubst_arg1_1))) in
        (match _lh_matchIdent_3_4 with
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
          (`Cons((`LH_P2(_lh_applysubst_LH_P2_0_3, ((applysubstlst__d1 _lh_applysubst_arg1_1) _lh_applysubst_LH_P2_1_3)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and applysubstlst__d0 _lh_applysubstlst_arg1_2 _lh_applysubstlst_arg2_2 =
  (match _lh_applysubstlst_arg2_2 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_applysubstlst_Atom_0_2) -> 
      (failwith "error")
    | `Cons(_lh_applysubstlst_Cons_0_2) -> 
      (match _lh_applysubstlst_Cons_0_2 with
        | `LH_P2(_lh_applysubstlst_LH_P2_0_2, _lh_applysubstlst_LH_P2_1_2) -> 
          (`Cons((`LH_P2(((applysubst__d0 _lh_applysubstlst_arg1_2) _lh_applysubstlst_LH_P2_0_2), ((applysubstlst__d0 _lh_applysubstlst_arg1_2) _lh_applysubstlst_LH_P2_1_2)))))
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
  ((fun _lh_funcomp_x_8 -> 
    ((fun _lh_funcomp_x_9 -> 
      (car__d2 (cdr__d0 _lh_funcomp_x_9))) (cdr__d1 _lh_funcomp_x_8))) _lh_caddr_arg1_2)
and caddr__d1 _lh_caddr_arg1_3 =
  ((fun _lh_funcomp_x_1_1 -> 
    ((fun _lh_funcomp_x_1_2 -> 
      (car__d8 (cdr__d7 _lh_funcomp_x_1_2))) (cdr__d8 _lh_funcomp_x_1_1))) _lh_caddr_arg1_3)
and caddr__d2 _lh_caddr_arg1_1 =
  ((fun _lh_funcomp_x_6 -> 
    ((fun _lh_funcomp_x_7 -> 
      (car__d9 (cdr__d9 _lh_funcomp_x_7))) (cdr__d1_d0 _lh_funcomp_x_6))) _lh_caddr_arg1_1)
and cadr__d0 _lh_cadr_arg1_3 =
  ((fun _lh_funcomp_x_1_4 -> 
    (car__d3 (cdr__d2 _lh_funcomp_x_1_4))) _lh_cadr_arg1_3)
and cadr__d1 _lh_cadr_arg1_1 =
  ((fun _lh_funcomp_x_1_0 -> 
    (car__d1_d0 (cdr__d1_d1 _lh_funcomp_x_1_0))) _lh_cadr_arg1_1)
and cadr__d2 _lh_cadr_arg1_2 =
  ((fun _lh_funcomp_x_1_3 -> 
    (car__d1_d1 (cdr__d1_d2 _lh_funcomp_x_1_3))) _lh_cadr_arg1_2)
and falsep__d0 _lh_falsep_arg1_1 =
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
                                  (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
                | _ -> 
                  (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
            | _ -> 
              (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
        | _ -> 
          (lispmember__d0 (`LH_P2(_lh_falsep_LH_P2_0_2, _lh_falsep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"))
and falsep__d1 _lh_falsep_arg1_2 =
  (match _lh_falsep_arg1_2 with
    | `LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4) -> 
      (match _lh_falsep_LH_P2_0_4 with
        | `Nil -> 
          false
        | `Cons(_lh_falsep_Cons_0_2) -> 
          (match _lh_falsep_Cons_0_2 with
            | `LH_P2(_lh_falsep_LH_P2_0_5, _lh_falsep_LH_P2_1_5) -> 
              (match _lh_falsep_LH_P2_0_5 with
                | `Atom(_lh_falsep_Atom_0_2) -> 
                  (match _lh_falsep_Atom_0_2 with
                    | `LH_C(_lh_falsep_LH_C_0_2, _lh_falsep_LH_C_1_2) -> 
                      (match _lh_falsep_LH_C_0_2 with
                        | 'f' -> 
                          (match _lh_falsep_LH_C_1_2 with
                            | `LH_N -> 
                              (match _lh_falsep_LH_P2_1_5 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                            | _ -> 
                              (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                        | _ -> 
                          (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                    | _ -> 
                      (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
                | _ -> 
                  (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
            | _ -> 
              (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
        | _ -> 
          (lispmember__d1 (`LH_P2(_lh_falsep_LH_P2_0_4, _lh_falsep_LH_P2_1_4))))
    | _ -> 
      (failwith "error"))
and getToken__d0 _lh_getToken_arg1_3 =
  (match _lh_getToken_arg1_3 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_3, _lh_getToken_LH_C_1_3) -> 
      (if (_lh_getToken_LH_C_0_3 = ' ') then
        (getToken__d0 _lh_getToken_LH_C_1_3)
      else
        (if ((_lh_getToken_LH_C_0_3 = '(') || (_lh_getToken_LH_C_0_3 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_3, (`LH_N))), _lh_getToken_LH_C_1_3))
        else
          (let rec _lh_matchIdent_4_6 = (restOfToken__d0 _lh_getToken_LH_C_1_3) in
            (match _lh_matchIdent_4_6 with
              | `LH_P2(_lh_getToken_LH_P2_0_3, _lh_getToken_LH_P2_1_3) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_3, _lh_getToken_LH_P2_0_3)), _lh_getToken_LH_P2_1_3))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken__d1 _lh_getToken_arg1_1 =
  (match _lh_getToken_arg1_1 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_C_1_1) -> 
      (if (_lh_getToken_LH_C_0_1 = ' ') then
        (getToken__d1 _lh_getToken_LH_C_1_1)
      else
        (if ((_lh_getToken_LH_C_0_1 = '(') || (_lh_getToken_LH_C_0_1 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_1, (`LH_N))), _lh_getToken_LH_C_1_1))
        else
          (let rec _lh_matchIdent_3_2 = (restOfToken__d1 _lh_getToken_LH_C_1_1) in
            (match _lh_matchIdent_3_2 with
              | `LH_P2(_lh_getToken_LH_P2_0_1, _lh_getToken_LH_P2_1_1) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_1, _lh_getToken_LH_P2_0_1)), _lh_getToken_LH_P2_1_1))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and getToken__d2 _lh_getToken_arg1_2 =
  (match _lh_getToken_arg1_2 with
    | `LH_N -> 
      (`LH_P2((`LH_N), (`LH_N)))
    | `LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_C_1_2) -> 
      (if (_lh_getToken_LH_C_0_2 = ' ') then
        (getToken__d2 _lh_getToken_LH_C_1_2)
      else
        (if ((_lh_getToken_LH_C_0_2 = '(') || (_lh_getToken_LH_C_0_2 = ')')) then
          (`LH_P2((`LH_C(_lh_getToken_LH_C_0_2, (`LH_N))), _lh_getToken_LH_C_1_2))
        else
          (let rec _lh_matchIdent_3_6 = (restOfToken__d2 _lh_getToken_LH_C_1_2) in
            (match _lh_matchIdent_3_6 with
              | `LH_P2(_lh_getToken_LH_P2_0_2, _lh_getToken_LH_P2_1_2) -> 
                (`LH_P2((`LH_C(_lh_getToken_LH_C_0_2, _lh_getToken_LH_P2_0_2)), _lh_getToken_LH_P2_1_2))
              | _ -> 
                (failwith "error")))))
    | _ -> 
      (failwith "error"))
and lemmas__d0 _lh_lemmas_arg1_1 =
  ((addlemmalst__d0 (makelemmas__d0 (rules__d0 0))) (`Empty))
and makelemmas__d0 _lh_makelemmas_arg1_1 =
  (match _lh_makelemmas_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | `LH_C(_lh_makelemmas_LH_C_0_1, _lh_makelemmas_LH_C_1_1) -> 
      (`LH_C((mkLisplist__d0 (strToToken__d0 _lh_makelemmas_LH_C_0_1)), (makelemmas__d0 _lh_makelemmas_LH_C_1_1)))
    | _ -> 
      (failwith "error"))
and mkLisplist__d0 _lh_mkLisplist_arg1_1 =
  (match _lh_mkLisplist_arg1_1 with
    | `LH_C(_lh_mkLisplist_LH_C_0_2, _lh_mkLisplist_LH_C_1_2) -> 
      (match _lh_mkLisplist_LH_C_0_2 with
        | `LH_C(_lh_mkLisplist_LH_C_0_3, _lh_mkLisplist_LH_C_1_3) -> 
          (match _lh_mkLisplist_LH_C_0_3 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_3 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_1_7 = (sublist__d0 _lh_mkLisplist_LH_C_1_2) in
                    (match _lh_matchIdent_1_7 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_1, _lh_mkLisplist_LH_P2_1_1) -> 
                        (let rec _lh_matchIdent_1_8 = _lh_mkLisplist_LH_P2_0_1 in
                          (match _lh_matchIdent_1_8 with
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
and mkLisplist__d1 _lh_mkLisplist_arg1_3 =
  (match _lh_mkLisplist_arg1_3 with
    | `LH_C(_lh_mkLisplist_LH_C_0_6, _lh_mkLisplist_LH_C_1_6) -> 
      (match _lh_mkLisplist_LH_C_0_6 with
        | `LH_C(_lh_mkLisplist_LH_C_0_7, _lh_mkLisplist_LH_C_1_7) -> 
          (match _lh_mkLisplist_LH_C_0_7 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_7 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_5_7 = (sublist__d1 _lh_mkLisplist_LH_C_1_6) in
                    (match _lh_matchIdent_5_7 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_3, _lh_mkLisplist_LH_P2_1_3) -> 
                        (let rec _lh_matchIdent_5_8 = _lh_mkLisplist_LH_P2_0_3 in
                          (match _lh_matchIdent_5_8 with
                            | `LH_N -> 
                              _lh_mkLisplist_LH_P2_1_3
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
and mkLisplist__d2 _lh_mkLisplist_arg1_2 =
  (match _lh_mkLisplist_arg1_2 with
    | `LH_C(_lh_mkLisplist_LH_C_0_4, _lh_mkLisplist_LH_C_1_4) -> 
      (match _lh_mkLisplist_LH_C_0_4 with
        | `LH_C(_lh_mkLisplist_LH_C_0_5, _lh_mkLisplist_LH_C_1_5) -> 
          (match _lh_mkLisplist_LH_C_0_5 with
            | '(' -> 
              (match _lh_mkLisplist_LH_C_1_5 with
                | `LH_N -> 
                  (let rec _lh_matchIdent_4_9 = (sublist__d2 _lh_mkLisplist_LH_C_1_4) in
                    (match _lh_matchIdent_4_9 with
                      | `LH_P2(_lh_mkLisplist_LH_P2_0_2, _lh_mkLisplist_LH_P2_1_2) -> 
                        (let rec _lh_matchIdent_5_0 = _lh_mkLisplist_LH_P2_0_2 in
                          (match _lh_matchIdent_5_0 with
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
and onewayunify1__d0 _lh_onewayunify1_arg1_1 _lh_onewayunify1_arg2_1 _lh_onewayunify1_arg3_1 =
  (if (atom__d1 _lh_onewayunify1_arg2_1) then
    (let rec _lh_matchIdent_2_1 = (assoc__d1 (`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg3_1))) in
      (match _lh_matchIdent_2_1 with
        | `Cons(_lh_onewayunify1_Cons_0_1) -> 
          (match _lh_onewayunify1_Cons_0_1 with
            | `LH_P2(_lh_onewayunify1_LH_P2_0_1, _lh_onewayunify1_LH_P2_1_1) -> 
              (`LH_P2((_lh_onewayunify1_arg1_1 = _lh_onewayunify1_LH_P2_1_1), _lh_onewayunify1_arg3_1))
            | _ -> 
              (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg1_1)))), _lh_onewayunify1_arg3_1)))))))
        | _ -> 
          (`LH_P2(true, (`Cons((`LH_P2((`Cons((`LH_P2(_lh_onewayunify1_arg2_1, _lh_onewayunify1_arg1_1)))), _lh_onewayunify1_arg3_1))))))))
  else
    (if (atom__d2 _lh_onewayunify1_arg1_1) then
      (`LH_P2(false, _lh_onewayunify1_arg3_1))
    else
      (if ((car__d4 _lh_onewayunify1_arg1_1) = (car__d5 _lh_onewayunify1_arg2_1)) then
        (((onewayunify1lst__d0 (cdr__d3 _lh_onewayunify1_arg1_1)) (cdr__d4 _lh_onewayunify1_arg2_1)) _lh_onewayunify1_arg3_1)
      else
        (`LH_P2(false, _lh_onewayunify1_arg3_1)))))
and onewayunify1lst__d0 _lh_onewayunify1lst_arg1_1 _lh_onewayunify1lst_arg2_1 _lh_onewayunify1lst_arg3_1 =
  (match _lh_onewayunify1lst_arg1_1 with
    | `Nil -> 
      (`LH_P2(true, _lh_onewayunify1lst_arg3_1))
    | _ -> 
      (let rec _lh_matchIdent_4_3 = (((onewayunify1__d0 (car__d6 _lh_onewayunify1lst_arg1_1)) (car__d7 _lh_onewayunify1lst_arg2_1)) _lh_onewayunify1lst_arg3_1) in
        (match _lh_matchIdent_4_3 with
          | `LH_P2(_lh_onewayunify1lst_LH_P2_0_1, _lh_onewayunify1lst_LH_P2_1_1) -> 
            (if _lh_onewayunify1lst_LH_P2_0_1 then
              (((onewayunify1lst__d0 (cdr__d5 _lh_onewayunify1lst_arg1_1)) (cdr__d6 _lh_onewayunify1lst_arg2_1)) _lh_onewayunify1lst_LH_P2_1_1)
            else
              (`LH_P2(false, _lh_onewayunify1lst_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))
and onewayunify__d0 _lh_onewayunify_arg1_1 _lh_onewayunify_arg2_1 =
  (((onewayunify1__d0 _lh_onewayunify_arg1_1) _lh_onewayunify_arg2_1) (`Nil))
and rewrite__d0 _lh_rewrite_arg1_1 _lh_rewrite_arg2_1 =
  (match _lh_rewrite_arg1_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewrite_Atom_0_1) -> 
      (`Atom(_lh_rewrite_Atom_0_1))
    | `Cons(_lh_rewrite_Cons_0_1) -> 
      (match _lh_rewrite_Cons_0_1 with
        | `LH_P2(_lh_rewrite_LH_P2_0_1, _lh_rewrite_LH_P2_1_1) -> 
          (((rewritewithlemmas__d0 (`Cons((`LH_P2(_lh_rewrite_LH_P2_0_1, ((rewriteargs__d0 _lh_rewrite_LH_P2_1_1) _lh_rewrite_arg2_1)))))) (getLUT__d0 (`LH_P2((tv__d2 _lh_rewrite_LH_P2_0_1), _lh_rewrite_arg2_1)))) _lh_rewrite_arg2_1)
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewriteargs__d0 _lh_rewriteargs_arg1_1 _lh_rewriteargs_arg2_1 =
  (match _lh_rewriteargs_arg1_1 with
    | `Nil -> 
      (`Nil)
    | `Atom(_lh_rewriteargs_Atom_0_1) -> 
      (failwith "error")
    | `Cons(_lh_rewriteargs_Cons_0_1) -> 
      (match _lh_rewriteargs_Cons_0_1 with
        | `LH_P2(_lh_rewriteargs_LH_P2_0_1, _lh_rewriteargs_LH_P2_1_1) -> 
          (`Cons((`LH_P2(((rewrite__d0 _lh_rewriteargs_LH_P2_0_1) _lh_rewriteargs_arg2_1), ((rewriteargs__d0 _lh_rewriteargs_LH_P2_1_1) _lh_rewriteargs_arg2_1)))))
        | _ -> 
          (failwith "error"))
    | _ -> 
      (failwith "error"))
and rewritewithlemmas__d0 _lh_rewritewithlemmas_arg1_1 _lh_rewritewithlemmas_arg2_1 _lh_rewritewithlemmas_arg3_1 =
  (match _lh_rewritewithlemmas_arg2_1 with
    | `LH_N -> 
      _lh_rewritewithlemmas_arg1_1
    | `LH_C(_lh_rewritewithlemmas_LH_C_0_1, _lh_rewritewithlemmas_LH_C_1_1) -> 
      (let rec _lh_matchIdent_2_0 = ((onewayunify__d0 _lh_rewritewithlemmas_arg1_1) (cadr__d0 _lh_rewritewithlemmas_LH_C_0_1)) in
        (match _lh_matchIdent_2_0 with
          | `LH_P2(_lh_rewritewithlemmas_LH_P2_0_1, _lh_rewritewithlemmas_LH_P2_1_1) -> 
            (if _lh_rewritewithlemmas_LH_P2_0_1 then
              ((rewrite__d0 ((applysubst__d0 _lh_rewritewithlemmas_LH_P2_1_1) (caddr__d0 _lh_rewritewithlemmas_LH_C_0_1))) _lh_rewritewithlemmas_arg3_1)
            else
              (((rewritewithlemmas__d0 _lh_rewritewithlemmas_arg1_1) _lh_rewritewithlemmas_LH_C_1_1) _lh_rewritewithlemmas_arg3_1))
          | _ -> 
            (failwith "error")))
    | _ -> 
      (failwith "error"))
and statement__d0 _lh_statement_arg1_1 =
  (mkLisplist__d1 (strToToken__d1 (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('u', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('i', (`LH_C('m', (`LH_C('p', (`LH_C('l', (`LH_C('i', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('w', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
and strToToken__d0 _lh_strToToken_arg1_3 =
  (match _lh_strToToken_arg1_3 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_4_8 = (getToken__d0 _lh_strToToken_arg1_3) in
        (match _lh_matchIdent_4_8 with
          | `LH_P2(_lh_strToToken_LH_P2_0_3, _lh_strToToken_LH_P2_1_3) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_3, (strToToken__d0 _lh_strToToken_LH_P2_1_3)))
          | _ -> 
            (failwith "error"))))
and strToToken__d1 _lh_strToToken_arg1_2 =
  (match _lh_strToToken_arg1_2 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_3_5 = (getToken__d1 _lh_strToToken_arg1_2) in
        (match _lh_matchIdent_3_5 with
          | `LH_P2(_lh_strToToken_LH_P2_0_2, _lh_strToToken_LH_P2_1_2) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_2, (strToToken__d1 _lh_strToToken_LH_P2_1_2)))
          | _ -> 
            (failwith "error"))))
and strToToken__d2 _lh_strToToken_arg1_1 =
  (match _lh_strToToken_arg1_1 with
    | `LH_N -> 
      (`LH_N)
    | _ -> 
      (let rec _lh_matchIdent_1_9 = (getToken__d2 _lh_strToToken_arg1_1) in
        (match _lh_matchIdent_1_9 with
          | `LH_P2(_lh_strToToken_LH_P2_0_1, _lh_strToToken_LH_P2_1_1) -> 
            (`LH_C(_lh_strToToken_LH_P2_0_1, (strToToken__d2 _lh_strToToken_LH_P2_1_1)))
          | _ -> 
            (failwith "error"))))
and subterm__d0 _lh_subterm_arg1_1 =
  (let rec c_1 = ((mappend__d0 (`LH_C('c', (`LH_N)))) (string_of_int _lh_subterm_arg1_1)) in
    (let rec str_1 = ((mappend__d1 ((mappend__d2 ((mappend__d3 ((mappend__d4 (`LH_C('(', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_1)) (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C('e', (`LH_C('r', (`LH_C('o', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('t', (`LH_C('i', (`LH_C('m', (`LH_C('e', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_N))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) c_1)) (`LH_C(' ', (`LH_C('d', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('z', (`LH_C(' ', (`LH_C('f', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('v', (`LH_C('e', (`LH_C('r', (`LH_C('s', (`LH_C('e', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('a', (`LH_C('p', (`LH_C('p', (`LH_C('e', (`LH_C('n', (`LH_C('d', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('[', (`LH_C(']', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('u', (`LH_C(' ', (`LH_C('e', (`LH_C('q', (`LH_C('u', (`LH_C('a', (`LH_C('l', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('p', (`LH_C('l', (`LH_C('u', (`LH_C('s', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('d', (`LH_C('i', (`LH_C('f', (`LH_C('f', (`LH_C('e', (`LH_C('r', (`LH_C('e', (`LH_C('n', (`LH_C('c', (`LH_C('e', (`LH_C(' ', (`LH_C('x', (`LH_C(' ', (`LH_C('y', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C('w', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('s', (`LH_C('s', (`LH_C('p', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('r', (`LH_C('e', (`LH_C('m', (`LH_C('a', (`LH_C('i', (`LH_C('n', (`LH_C('d', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C('(', (`LH_C(' ', (`LH_C('m', (`LH_C('e', (`LH_C('m', (`LH_C('b', (`LH_C('e', (`LH_C('r', (`LH_C(' ', (`LH_C('a', (`LH_C(' ', (`LH_C('(', (`LH_C(' ', (`LH_C('l', (`LH_C('e', (`LH_C('n', (`LH_C('g', (`LH_C('t', (`LH_C('h', (`LH_C(' ', (`LH_C('b', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_C(' ', (`LH_C(')', (`LH_N)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) in
      (mkLisplist__d2 (strToToken__d2 str_1))))
and tautologyp__d0 _lh_tautologyp_arg1_1 =
  (match _lh_tautologyp_arg1_1 with
    | `LH_P3(_lh_tautologyp_LH_P3_0_1, _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1) -> 
      (match _lh_tautologyp_LH_P3_0_1 with
        | `Nil -> 
          false
        | `Atom(_lh_tautologyp_Atom_0_2) -> 
          (truep__d0 (`LH_P2((`Atom(_lh_tautologyp_Atom_0_2)), _lh_tautologyp_LH_P3_1_1)))
        | `Cons(_lh_tautologyp_Cons_0_1) -> 
          (match _lh_tautologyp_Cons_0_1 with
            | `LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1) -> 
              (if (truep__d1 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1)))), _lh_tautologyp_LH_P3_1_1))) then
                true
              else
                (if (falsep__d0 (`LH_P2((`Cons((`LH_P2(_lh_tautologyp_LH_P2_0_1, _lh_tautologyp_LH_P2_1_1)))), _lh_tautologyp_LH_P3_2_1))) then
                  false
                else
                  (let rec _lh_matchIdent_2_2 = _lh_tautologyp_LH_P2_0_1 in
                    (match _lh_matchIdent_2_2 with
                      | `Atom(_lh_tautologyp_Atom_0_3) -> 
                        (match _lh_tautologyp_Atom_0_3 with
                          | `LH_C(_lh_tautologyp_LH_C_0_2, _lh_tautologyp_LH_C_1_2) -> 
                            (match _lh_tautologyp_LH_C_0_2 with
                              | 'i' -> 
                                (match _lh_tautologyp_LH_C_1_2 with
                                  | `LH_C(_lh_tautologyp_LH_C_0_3, _lh_tautologyp_LH_C_1_3) -> 
                                    (match _lh_tautologyp_LH_C_0_3 with
                                      | 'f' -> 
                                        (match _lh_tautologyp_LH_C_1_3 with
                                          | `LH_N -> 
                                            (if (truep__d2 (`LH_P2((car__d1_d2 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1))) then
                                              (tautologyp__d0 (`LH_P3((cadr__d1 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1)))
                                            else
                                              (if (falsep__d1 (`LH_P2((car__d1_d3 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_2_1))) then
                                                (tautologyp__d0 (`LH_P3((caddr__d1 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, _lh_tautologyp_LH_P3_2_1)))
                                              else
                                                ((tautologyp__d0 (`LH_P3((cadr__d2 _lh_tautologyp_LH_P2_1_1), (`Cons((`LH_P2((car__d1_d4 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1)))), _lh_tautologyp_LH_P3_2_1))) && (tautologyp__d0 (`LH_P3((caddr__d2 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_1_1, (`Cons((`LH_P2((car__d1_d5 _lh_tautologyp_LH_P2_1_1), _lh_tautologyp_LH_P3_2_1))))))))))
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
and tautp__d0 _lh_tautp_arg1_1 =
  (tautologyp__d0 (`LH_P3(((rewrite__d0 _lh_tautp_arg1_1) (lemmas__d0 0)), (`Nil), (`Nil))))
and testBoyer2_nofib__d0 _lh_testBoyer2_nofib_arg1_1 =
  (report__d0 (testresult__d0 _lh_testBoyer2_nofib_arg1_1))
and testresult__d0 _lh_testresult_arg1_1 =
  (tautp__d0 (teststatement__d0 _lh_testresult_arg1_1))
and teststatement__d0 _lh_teststatement_arg1_1 =
  ((applysubst__d1 (subterm__d0 _lh_teststatement_arg1_1)) (statement__d0 0))
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
and truep__d1 _lh_truep_arg1_3 =
  (match _lh_truep_arg1_3 with
    | `LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6) -> 
      (match _lh_truep_LH_P2_0_6 with
        | `Nil -> 
          false
        | `Cons(_lh_truep_Cons_0_3) -> 
          (match _lh_truep_Cons_0_3 with
            | `LH_P2(_lh_truep_LH_P2_0_7, _lh_truep_LH_P2_1_7) -> 
              (match _lh_truep_LH_P2_0_7 with
                | `Atom(_lh_truep_Atom_0_3) -> 
                  (match _lh_truep_Atom_0_3 with
                    | `LH_C(_lh_truep_LH_C_0_3, _lh_truep_LH_C_1_3) -> 
                      (match _lh_truep_LH_C_0_3 with
                        | 't' -> 
                          (match _lh_truep_LH_C_1_3 with
                            | `LH_N -> 
                              (match _lh_truep_LH_P2_1_7 with
                                | `Nil -> 
                                  true
                                | _ -> 
                                  (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                            | _ -> 
                              (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                        | _ -> 
                          (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                    | _ -> 
                      (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
                | _ -> 
                  (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
            | _ -> 
              (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
        | _ -> 
          (lispmember__d3 (`LH_P2(_lh_truep_LH_P2_0_6, _lh_truep_LH_P2_1_6))))
    | _ -> 
      (failwith "error"))
and truep__d2 _lh_truep_arg1_1 =
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
                                  (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                            | _ -> 
                              (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                        | _ -> 
                          (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                    | _ -> 
                      (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
                | _ -> 
                  (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
            | _ -> 
              (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
        | _ -> 
          (lispmember__d4 (`LH_P2(_lh_truep_LH_P2_0_2, _lh_truep_LH_P2_1_2))))
    | _ -> 
      (failwith "error"));;
end;;

